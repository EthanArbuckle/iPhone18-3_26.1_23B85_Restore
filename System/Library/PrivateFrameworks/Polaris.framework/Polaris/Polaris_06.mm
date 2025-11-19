void sub_25EAE79A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, const void **a2)
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

const void **std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__emplace_unique_key_args<std::string,std::string,PSSG::ResourceOptions>(void *a1, const void **a2)
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

void sub_25EAE7ED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,PSSG::ResourceOptions>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,PSSG::ResourceOptions>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 std::vector<std::pair<unsigned int,unsigned int>>::__move_assign(uint64_t a1, __n128 *a2)
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

uint64_t std::unordered_map<std::string,PSSG::ResourceOptions>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,PSSG::ResourceOptions> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,PSSG::ResourceOptions> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__construct_node_hash<std::pair<std::string const,PSSG::ResourceOptions> const&>();
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

void sub_25EAE81FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,PSSG::ResourceOptions>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,PSSG::ResourceOptions>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t a1, char *__dst, char *__src, char *a4, int64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      operator new();
    }

    v31 = (__dst - v11);
    memcpy(v13, __src, __len);
    v32 = &v13[__len];
    v33 = v10 - v5;
    memcpy(v32, v5, v10 - v5);
    *(a1 + 8) = v5;
    v34 = &v13[v11 - v5];
    memcpy(v34, v11, v31);
    *a1 = v34;
    *(a1 + 8) = &v32[v33];
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    return v13;
  }

  v16 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v27 = &__dst[__len];
    v28 = &v10[-__len];
    v29 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v30 = *v28++;
        *v29++ = v30;
      }

      while (v28 != v10);
    }

    *(a1 + 8) = v29;
    if (v10 != v27)
    {
      memmove(&__dst[__len], __dst, v10 - v27);
    }

    v24 = v5;
    v25 = __src;
    v26 = __len;
    goto LABEL_27;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = &v10[v18];
  *(a1 + 8) = &v10[v18];
  if (v16 >= 1)
  {
    v20 = &v5[__len];
    v21 = &v10[v18];
    if (&v19[-__len] < v10)
    {
      v22 = v5 - &__src[__len];
      v23 = v5 - __src;
      do
      {
        a4[v23++] = a4[v22++];
      }

      while (&a4[v22] < v10);
      v21 = &a4[v23];
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[__len], v5, v19 - v20);
    }

    v24 = v5;
    v25 = __src;
    v26 = v10 - v5;
LABEL_27:
    memmove(v24, v25, v26);
  }

  return v5;
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v6 = __len;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - v11;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      operator new();
    }

    v30 = (__dst - v11);
    v31 = (__dst - v11 + __len);
    v32 = (__dst - v11);
    do
    {
      v33 = *v7++;
      *v32++ = v33;
      --v6;
    }

    while (v6);
    v34 = *(a1 + 8) - __dst;
    memcpy(v31, __dst, v34);
    v35 = &v31[v34];
    *(a1 + 8) = v5;
    v36 = *a1;
    v37 = &v30[*a1 - v5];
    memcpy(v37, *a1, &v5[-*a1]);
    *a1 = v37;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {
      operator delete(v36);
    }

    return v30;
  }

  v15 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v26 = &__dst[__len];
    v27 = &v10[-__len];
    v28 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v29 = *v27++;
        *v28++ = v29;
      }

      while (v27 != v10);
    }

    *(a1 + 8) = v28;
    if (v10 != v26)
    {
      memmove(&__dst[__len], __dst, v10 - v26);
    }

    v23 = v5;
    v24 = v7;
    v25 = v6;
    goto LABEL_27;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
  }

  v18 = &v10[v17];
  *(a1 + 8) = &v10[v17];
  if (v15 >= 1)
  {
    v19 = &v5[v6];
    v20 = &v10[v17];
    if (&v18[-v6] < v10)
    {
      v21 = a4 - &v7[v6];
      v22 = a4 - v7;
      do
      {
        v5[v22++] = v5[v21++];
      }

      while (&v5[v21] < v10);
      v20 = &v5[v22];
    }

    *(a1 + 8) = v20;
    if (v18 != v19)
    {
      memmove(&v5[v6], v5, v18 - v19);
    }

    v23 = v5;
    v24 = v7;
    v25 = v10 - v5;
LABEL_27:
    memmove(v23, v24, v25);
  }

  return v5;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::string,unsigned char &>(void *a1, const void **a2)
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

uint64_t std::unordered_map<std::string,unsigned char>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned char> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned char> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__construct_node_hash<std::pair<std::string const,unsigned char> const&>();
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

void sub_25EAE8C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAE8CE4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<PSSG::ResourceStridesEntry>::__emplace_back_slow_path<char (&)[256],unsigned int &,char (&)[256]>(uint64_t *a1, char *a2, _DWORD *a3, char *a4)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x492492492492492)
  {
    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v8 = 0x492492492492492;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PSSG::ResourceStridesEntry>>(a1, v8);
  }

  v15 = 0;
  v16 = 56 * v4;
  std::allocator<PSSG::ResourceStridesEntry>::construct[abi:ne200100]<PSSG::ResourceStridesEntry,char (&)[256],unsigned int &,char (&)[256]>(a1, (56 * v4), a2, a3, a4);
  v17 = (56 * v4 + 56);
  v9 = a1[1];
  v10 = 56 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PSSG::ResourceStridesEntry>,PSSG::ResourceStridesEntry*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<PSSG::ResourceStridesEntry>::~__split_buffer(&v15);
  return v14;
}

void sub_25EAE8E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<PSSG::ResourceStridesEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<PSSG::ResourceStridesEntry>::construct[abi:ne200100]<PSSG::ResourceStridesEntry,char (&)[256],unsigned int &,char (&)[256]>(int a1, std::string *a2, char *__s, _DWORD *a4, char *a5)
{
  std::string::basic_string[abi:ne200100]<0>(v10, __s);
  LODWORD(a4) = *a4;
  std::string::basic_string[abi:ne200100]<0>(__p, a5);
  PSSG::ResourceStridesEntry::ResourceStridesEntry(a2, v10, a4, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_25EAE8EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAEA8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25EAEB28C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25EAEB6F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

PSSG::Server **ps_sysgraph_delete_server(PSSG::Server **this)
{
  if (this)
  {
    v1 = this;
    v2 = this[10];
    if (v2)
    {
      PSSG::Server::~Server(v2);
      MEMORY[0x25F8C7C50]();
    }

    PSSG::ServerComms::~ServerComms(v1);

    JUMPOUT(0x25F8C7C50);
  }

  return this;
}

void ps_sysgraph_send_user_is_active_notification(PSSG::ServerComms *this)
{
  if (this)
  {
    PSSG::ServerComms::sendUserIsActiveNotification(this);
  }
}

void ps_sysgraph_send_user_is_inactive_notification(PSSG::ServerComms *this)
{
  if (this)
  {
    PSSG::ServerComms::sendUserIsInactiveNotification(this);
  }
}

void populateGraphSetInfo(void *a1, uint64_t a2, const char *a3, int a4)
{
  v7 = a1;
  if (!v7)
  {
    populateGraphSetInfo_cold_1();
  }

  xdict = v7;
  xpc_dictionary_set_uint64(v7, "message_type", a2);
  xpc_dictionary_set_string(xdict, "exec_session_name", a3);
  xpc_dictionary_set_uint64(xdict, "client_pid", a4);
  if (a2 - 1 < 2)
  {
    empty = xpc_array_create_empty();
    xpc_dictionary_set_value(xdict, "graphs_array", empty);
LABEL_6:

    goto LABEL_8;
  }

  if (a2 == 8)
  {
    empty = xpc_array_create_empty();
    v9 = xpc_array_create_empty();
    xpc_dictionary_set_value(xdict, "graphs_added_array", empty);
    xpc_dictionary_set_value(xdict, "graphs_removed_array", v9);

    goto LABEL_6;
  }

  NSLog(&cfstr_ReceivedAMessa.isa, a2);
LABEL_8:
}

void populateGraphInfo(void *a1, uint64_t a2, const char *a3, uint64_t a4, BOOL a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, BOOL a16, const char *a17)
{
  xdict = a1;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  v25 = a15;
  if (!xdict)
  {
    populateGraphInfo_cold_1();
  }

  xpc_dictionary_set_uint64(xdict, "gst_setup_type", a2);
  xpc_dictionary_set_string(xdict, "graph_name", a3);
  xpc_dictionary_set_uint64(xdict, "num_sources", a4);
  xpc_dictionary_set_BOOL(xdict, "synced_buffers", a5);
  xpc_dictionary_set_uint64(xdict, "graph_exec_type", a6);
  if (a6 == 1)
  {
    xpc_dictionary_set_uint64(xdict, "graph_threadpool_id", a7);
    xpc_dictionary_set_string(xdict, "graph_threadpool_name", a8);
  }

  xpc_dictionary_set_uint64(xdict, "graph_subgraph_idx", a9);
  xpc_dictionary_set_uint64(xdict, "stride", a10);
  xpc_dictionary_set_uint64(xdict, "desired_offset", a11);
  xpc_dictionary_set_value(xdict, "source_names_array", v22);
  xpc_dictionary_set_value(xdict, "storage_modes_array", v23);
  xpc_dictionary_set_value(xdict, "down_sample_factor_array", v24);
  xpc_dictionary_set_value(xdict, "stride_factor_array", v25);
  xpc_dictionary_set_BOOL(xdict, "force_cadenced_GST", a16);
  xpc_dictionary_set_string(xdict, "domain_id", a17);
}

void appendGraphInfotoGraphSetInfo(void *a1, void *a2)
{
  value = a1;
  v3 = a2;
  if (!value || !v3)
  {
    appendGraphInfotoGraphSetInfo_cold_2();
  }

  v4 = xpc_dictionary_get_value(v3, "graphs_array");
  if (!v4)
  {
    appendGraphInfotoGraphSetInfo_cold_1();
  }

  v5 = v4;
  xpc_array_append_value(v4, value);
}

void populateSourceInfo(void *a1, uint64_t a2, int a3, int a4, unsigned int a5)
{
  v9 = a1;
  if (!v9)
  {
    populateSourceInfo_cold_1();
  }

  xdict = v9;
  xpc_dictionary_set_uint64(v9, "message_type", a2);
  xpc_dictionary_set_uint64(xdict, "source_idx", a3);
  xpc_dictionary_set_uint64(xdict, "gst_idx_in_source_array", a4);
  xpc_dictionary_set_uint64(xdict, "source_storage_mode", a5);
}

void populateRemoveWaiterInfo(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (!v5)
  {
    populateRemoveWaiterInfo_cold_1();
  }

  xdict = v5;
  xpc_dictionary_set_uint64(v5, "message_type", a2);
  xpc_dictionary_set_uint64(xdict, "gst_idx", a3);
}

void populateRemoveThreadPoolInfo(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    populateRemoveThreadPoolInfo_cold_1();
  }

  xdict = v3;
  xpc_dictionary_set_uint64(v3, "message_type", 5uLL);
  xpc_dictionary_set_uint64(xdict, "graph_threadpool_id", a2);
}

void populateProducibleStridesHaveChangedTo(void *a1, void *a2)
{
  v3 = a2;
  xdict = a1;
  xpc_dictionary_set_uint64(xdict, "message_type", 6uLL);
  v4 = [v3 bytes];
  v5 = [v3 length];

  xpc_dictionary_set_data(xdict, "producible_strides", v4, v5);
}

void populateProducedStridesWillChange(void *a1, void *a2, uint64_t a3, BOOL a4, void *a5)
{
  v9 = a5;
  v10 = a2;
  xdict = a1;
  xpc_dictionary_set_uint64(xdict, "message_type", 7uLL);
  v11 = [v10 bytes];
  v12 = [v10 length];

  xpc_dictionary_set_data(xdict, "produced_strides", v11, v12);
  xpc_dictionary_set_uint64(xdict, "produced_strides_frameid", a3);
  xpc_dictionary_set_BOOL(xdict, "produced_strides_is_physical_frameid", a4);
  v13 = [v9 unsignedIntValue];

  xpc_dictionary_set_uint64(xdict, "produced_strides_MSG_sync_id", v13);
}

uint64_t isResourceShared(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [a2 resourceStreamForKey:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 options] == 2;
  }

  else
  {
    v9 = [v6 isTimer:v5] ^ 1;
  }

  return v9;
}

id populateAddedGraphsInfo(void *a1, void *a2, void *a3, void *a4)
{
  v115 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v77 = a2;
  v8 = a3;
  v9 = a4;
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = [v7 name];
  xpc_dictionary_set_string(v10, "graph_name", [v11 UTF8String]);

  v12 = [v7 graphFrequency];
  xpc_dictionary_set_uint64(v10, "graph_frequency_type", [v12 type]);

  v13 = [v7 systemPulseStride];
  xdict = v10;
  xpc_dictionary_set_uint64(v10, "stride", [v13 unsignedLongLongValue]);

  xarray = xpc_array_create_empty();
  value = xpc_array_create_empty();
  empty = xpc_array_create_empty();
  v86 = xpc_array_create_empty();
  v85 = xpc_array_create_empty();
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v79 = v7;
  obj = [v7 tasks];
  v82 = [obj countByEnumeratingWithState:&v106 objects:v114 count:16];
  if (v82)
  {
    v81 = *v107;
    do
    {
      v14 = 0;
      do
      {
        if (*v107 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v106 + 1) + 8 * v14);
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v83 = v15;
        v84 = v14;
        v16 = [v15 inputs];
        v17 = [v16 countByEnumeratingWithState:&v102 objects:v113 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v103;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v103 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v102 + 1) + 8 * i);
              v22 = [v21 resourceKey];
              v23 = xpc_string_create([v22 UTF8String]);
              xpc_array_append_value(xarray, v23);

              v24 = xpc_uint64_create([v21 type]);
              xpc_array_append_value(value, v24);

              v25 = [v21 resourceKey];
              if (isResourceShared(v25, v8, v9))
              {
                v26 = 2;
              }

              else
              {
                v26 = 1;
              }

              v27 = xpc_uint64_create(v26);
              xpc_array_append_value(empty, v27);
            }

            v18 = [v16 countByEnumeratingWithState:&v102 objects:v113 count:16];
          }

          while (v18);
        }

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v28 = [v83 outputs];
        v29 = [v28 countByEnumeratingWithState:&v98 objects:v112 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v99;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v99 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v98 + 1) + 8 * j);
              v34 = [v33 resourceKey];
              v35 = xpc_string_create([v34 UTF8String]);
              xpc_array_append_value(v86, v35);

              v36 = [v33 resourceKey];
              if (isResourceShared(v36, v8, v9))
              {
                v37 = 2;
              }

              else
              {
                v37 = 1;
              }

              v38 = xpc_uint64_create(v37);
              xpc_array_append_value(v85, v38);
            }

            v30 = [v28 countByEnumeratingWithState:&v98 objects:v112 count:16];
          }

          while (v30);
        }

        v14 = v84 + 1;
      }

      while (v84 + 1 != v82);
      v82 = [obj countByEnumeratingWithState:&v106 objects:v114 count:16];
    }

    while (v82);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v39 = [v79 readers];
  v40 = [v39 countByEnumeratingWithState:&v94 objects:v111 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v95;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v95 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v94 + 1) + 8 * k);
        v45 = [v44 input];
        v46 = [v45 resourceKey];
        v47 = xpc_string_create([v46 UTF8String]);
        xpc_array_append_value(xarray, v47);

        v48 = [v44 input];
        v49 = xpc_uint64_create([v48 type]);
        xpc_array_append_value(value, v49);

        v50 = [v44 input];
        v51 = [v50 resourceKey];
        if (isResourceShared(v51, v8, v9))
        {
          v52 = 2;
        }

        else
        {
          v52 = 1;
        }

        v53 = xpc_uint64_create(v52);
        xpc_array_append_value(empty, v53);
      }

      v41 = [v39 countByEnumeratingWithState:&v94 objects:v111 count:16];
    }

    while (v41);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v54 = [v79 writers];
  v55 = [v54 countByEnumeratingWithState:&v90 objects:v110 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v91;
    do
    {
      for (m = 0; m != v56; ++m)
      {
        if (*v91 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v90 + 1) + 8 * m);
        v60 = [v59 output];
        v61 = [v60 resourceKey];
        v62 = xpc_string_create([v61 UTF8String]);
        xpc_array_append_value(v86, v62);

        v63 = [v59 output];
        v64 = [v63 resourceKey];
        if (isResourceShared(v64, v8, v9))
        {
          v65 = 2;
        }

        else
        {
          v65 = 1;
        }

        v66 = xpc_uint64_create(v65);
        xpc_array_append_value(v85, v66);
      }

      v56 = [v54 countByEnumeratingWithState:&v90 objects:v110 count:16];
    }

    while (v56);
  }

  v67 = xdict;
  xpc_dictionary_set_value(xdict, "input_names_array", xarray);
  xpc_dictionary_set_value(xdict, "input_types_array", value);
  xpc_dictionary_set_value(xdict, "input_storage_modes_array", empty);
  xpc_dictionary_set_value(xdict, "output_names_array", v86);
  xpc_dictionary_set_value(xdict, "output_storage_modes_array", v85);
  v68 = xpc_dictionary_get_value(v77, "graphs_added_array");
  v69 = v68;
  if (v68)
  {
    xpc_array_append_value(v68, xdict);
    v70 = 0;
    v71 = v79;
  }

  else
  {
    v72 = MEMORY[0x277CCACA8];
    v71 = v79;
    v73 = [v79 name];
    v74 = [v72 stringWithFormat:@"Failed to find graphsAddedArray XPC array for graph %@", v73];

    v67 = xdict;
    v70 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-3 description:v74 recoverySuggestion:0];
  }

  v75 = *MEMORY[0x277D85DE8];

  return v70;
}

id populateRemovedGraphsInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = [v3 name];
  xpc_dictionary_set_string(v5, "graph_name", [v6 UTF8String]);

  v7 = xpc_dictionary_get_value(v4, "graphs_removed_array");

  if (v7)
  {
    xpc_array_append_value(v7, v5);
    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [v3 name];
    v11 = [v9 stringWithFormat:@"Failed to find  graphsRemovedArray XPC array for graph %@", v10];

    v8 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-3 description:v11 recoverySuggestion:0];
  }

  return v8;
}

id createSupportedStridesInfo()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v0, "message_type", 9uLL);
  empty = xpc_array_create_empty();
  xpc_dictionary_set_value(v0, "resource_info_array", empty);

  return v0;
}

void populateSupportedStridesInfo(void *a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  xdict = a1;
  v7 = a2;
  v8 = a3;
  v23 = a4;
  v9 = xpc_dictionary_create(0, 0, 0);
  empty = xpc_array_create_empty();
  v11 = xpc_array_create_empty();
  xpc_dictionary_set_string(v9, "resource_key", [v7 UTF8String]);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = xpc_uint64_create([v17 unsignedIntValue]);
        xpc_array_append_value(empty, v18);

        v19 = [v12 objectForKeyedSubscript:v17];
        v20 = xpc_uint64_create([v19 offset]);
        xpc_array_append_value(v11, v20);
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  xpc_dictionary_set_value(v9, "supported_strides_array", empty);
  xpc_dictionary_set_value(v9, "supported_offsets_array", v11);
  xpc_dictionary_set_uint64(v9, "default_stride", [v23 unsignedIntValue]);
  v21 = xpc_dictionary_get_value(xdict, "resource_info_array");
  xpc_array_append_value(v21, v9);

  v22 = *MEMORY[0x277D85DE8];
}

void populateTelemetryReaderInfo(void *a1, void *a2, const char *a3, int a4, const char *a5, const char *a6)
{
  v11 = a2;
  v12 = a1;
  populateGraphSetInfo(v12, 1uLL, a3, a4);
  xarray = xpc_array_create_empty();
  empty = xpc_array_create_empty();
  v14 = xpc_array_create_empty();
  v15 = xpc_array_create_empty();
  v16 = xpc_string_create(a5);
  xpc_array_append_value(xarray, v16);

  v17 = xpc_uint64_create(1uLL);
  xpc_array_append_value(empty, v17);

  v18 = xpc_uint64_create(1uLL);
  xpc_array_append_value(v14, v18);

  v19 = xpc_uint64_create(1uLL);
  xpc_array_append_value(v15, v19);

  populateGraphInfo(v11, 1uLL, a6, 1uLL, 0, 2uLL, 0, 0, 0, 0, 0, xarray, v15, empty, v14, 0, "mixed");
  appendGraphInfotoGraphSetInfo(v11, v12);
}

const char *PSSH::PSProcessMonitorEventToStr(int a1)
{
  if (a1 <= 9)
  {
    return PSSH::PSProcessMonitorEventToStr(PSSH::ProcessMonitorEvent)::_eventToStr[a1];
  }

  else
  {
    return "Invalid";
  }
}

uint64_t PSSH::PSProcessMonitorArgToStr(uint64_t result, uint64_t a2, size_t __size, char *__str)
{
  __src = a2;
  if (result > 7)
  {
LABEL_9:
    *__str = 0;
    return result;
  }

  if (((1 << result) & 0xA6) == 0)
  {
    if (((1 << result) & 0x58) != 0)
    {
      return snprintf(__str, __size, "%llu", a2);
    }

    goto LABEL_9;
  }

  if (__size >= 7)
  {
    v5 = 7;
  }

  else
  {
    v5 = __size;
  }

  result = memcpy(__str, &__src, v5);
  __str[v5] = 0;
  return result;
}

PSSH::SysProcessMonitor *PSSH::SysProcessMonitor::SysProcessMonitor(PSSH::SysProcessMonitor *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 40) = xmmword_25EB77120;
  *(this + 7) = 0;
  *(this + 8) = 0;
  PSSH::SysProcessMonitor::_instance = this;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  *(this + 5) = info.numer;
  *(this + 6) = (v2 * 1000.0 * 1000.0);
  *(this + 7) = dispatch_group_create();
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(this + 8) = dispatch_queue_create("PSSH-ProcessMonitor", v3);
  ps_system_action_register_kill_process_report_block(&__block_literal_global_23);
  return this;
}

void ___ZN4PSSH17SysProcessMonitorC2Ev_block_invoke(uint64_t a1, int a2, int a3)
{
  if (PSSH::SysProcessMonitor::_instance)
  {
    v3 = *(PSSH::SysProcessMonitor::_instance + 56);
    v4 = *(PSSH::SysProcessMonitor::_instance + 64);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = ___ZN4PSSH17SysProcessMonitor29handleSystemActionKillProcessEi20ps_ca_death_reason_e_block_invoke;
    v5[3] = &__block_descriptor_tmp_8_1;
    v5[4] = PSSH::SysProcessMonitor::_instance;
    v6 = a2;
    v7 = a3;
    dispatch_group_async(v3, v4, v5);
  }
}

void PSSH::SysProcessMonitor::~SysProcessMonitor(dispatch_group_t *this)
{
  PSSH::SysProcessMonitor::_instance = 0;
  dispatch_group_wait(this[7], 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(this[7]);
  dispatch_release(this[8]);

  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this);
}

void PSSH::SysProcessMonitor::handleProcessRegisterDispatched(PSSH::SysProcessMonitor *this, int pid)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v20 = 0;
  memset(v21, 0, sizeof(v21));
  __p[0] = 0;
  __p[1] = 0;
  v17 = 0;
  if (proc_pidinfo(pid, 13, 0, buffer, 64) == 64 && buffer[0] == pid)
  {
    MEMORY[0x25F8C7A80](__p, v26);
    v4 = __PSSysHealthLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = __p;
      if (v17 < 0)
      {
        v5 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "handleProcessRegisterDispatched";
      v23 = 1024;
      LODWORD(v24[0]) = pid;
      WORD2(v24[0]) = 2080;
      *(v24 + 6) = v5;
      _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "%s() pid %d --> (%s)", buf, 0x1Cu);
    }

    if (PSSH::processHasDeathParams(__p) || PSSH::isKillDaemon(__p))
    {
      *buf = __p;
      *(std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, __p) + 22) = pid;
      *buf = __p;
      v6 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, __p);
      *(v6 + 100) = 1;
      v7 = PSSH::PSProcessMonitorEventLog(v6);
      v8 = __p;
      if (v17 < 0)
      {
        v8 = __p[0];
      }

      v9 = *v8;
      v10 = mach_absolute_time();
      v11 = *v7;
      v12 = &v7[12 * *v7];
      *(v12 + 6) = 1;
      *(v12 + 1) = v10;
      *(v12 + 2) = v9;
      *v7 = v11 + 1 - 100 * ((42949673 * (v11 + 1)) >> 32);
    }

    else
    {
      v14 = __PSSysHealthLogSharedInstance();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = __p;
        if (v17 < 0)
        {
          v15 = __p[0];
        }

        *buf = 136315394;
        *&buf[4] = "handleProcessRegisterDispatched";
        v23 = 2080;
        v24[0] = v15;
        _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_DEFAULT, "%s() process [%s] is not monitored or a killDaemon. Ignoring.", buf, 0x16u);
      }
    }
  }

  else
  {
    __PSSysHealthLogSharedInstance();
    PSSH::SysProcessMonitor::handleProcessRegisterDispatched();
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  *buf = v21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v18);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void PSSH::ProcessDeathParams::~ProcessDeathParams(void **this)
{
  v2 = this + 7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void PSSH::SysProcessMonitor::handleProcessRegister(PSSH::SysProcessMonitor *this, int a2)
{
  v2 = *(this + 7);
  v3 = *(this + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN4PSSH17SysProcessMonitor21handleProcessRegisterEi_block_invoke;
  v4[3] = &__block_descriptor_tmp_3_1;
  v4[4] = this;
  v5 = a2;
  dispatch_group_async(v2, v3, v4);
}

void PSSH::SysProcessMonitor::handleKillDaemons(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a3 + 56);
  for (i = *(a3 + 64); v3 != i; v3 += 24)
  {
    if (std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>>>::find<std::string>(a1, v3))
    {
      *__str = v3;
      if (*(std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v3) + 100))
      {
        v7 = v3;
        if (*(v3 + 23) < 0)
        {
          v7 = *v3;
        }

        v8 = a2;
        if (*(a2 + 23) < 0)
        {
          v8 = *a2;
        }

        snprintf(__str, 0xC8uLL, "PolarisD ProcessMonitor::Terminating [%s] Reason Critical Daemon crashed - [%s]", v7, v8);
        v9 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v3);
        v10 = v3;
        if (*(v3 + 23) < 0)
        {
          v10 = *v3;
        }

        ps_system_action_kill_process(*(v9 + 22), __str, 2, 0, v10);
        continue;
      }

      v15 = __PSSysHealthLogSharedInstance();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v3;
        if (*(v3 + 23) < 0)
        {
          v16 = *v3;
        }

        *__str = 136315394;
        *&__str[4] = "handleKillDaemons";
        v19 = 2080;
        v20 = v16;
        v13 = v15;
        v14 = "%s() Daemon [%s] already dead. Ignoring";
LABEL_19:
        _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_DEFAULT, v14, __str, 0x16u);
      }
    }

    else
    {
      v11 = __PSSysHealthLogSharedInstance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v3;
        if (*(v3 + 23) < 0)
        {
          v12 = *v3;
        }

        *__str = 136315394;
        *&__str[4] = "handleKillDaemons";
        v19 = 2080;
        v20 = v12;
        v13 = v11;
        v14 = "%s() Daemon [%s] not registered. Ignoring";
        goto LABEL_19;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

const void **PSSH::SysProcessMonitor::handleProcessDeathCount(void *a1, int a2, uint64_t a3, unint64_t *a4, const void *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  *buf = a3;
  v10 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3)[5];
  if (v10)
  {
    v11 = (a1[5] * (a5 - v10)) / a1[6];
  }

  else
  {
    v11 = 0;
  }

  v12 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "handleProcessDeathCount";
    v24 = 2048;
    v25 = v11;
    _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_INFO, "%s() deltaMSec: %llu", buf, 0x16u);
  }

  *buf = a3;
  std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3)[8] = v11;
  *buf = a3;
  v13 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3);
  v13[9] = v13[9] + 1;
  if (v11 && v11 < *a4)
  {
    *buf = a3;
    v14 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3);
    v14[7] = v14[7] + 1;
  }

  else
  {
    *buf = a3;
    std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3)[7] = 1;
    *buf = a3;
    std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3)[6] = a5;
  }

  *buf = a3;
  std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3)[5] = a5;
  v15 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = a3;
    if (*(a3 + 23) < 0)
    {
      v16 = *a3;
    }

    *buf = a3;
    v17 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3)[7];
    *buf = 136315650;
    *&buf[4] = "handleProcessDeathCount";
    v24 = 2080;
    v25 = v16;
    v26 = 2048;
    v27 = v17;
    _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_DEBUG, "%s() process [%s] death count %llu", buf, 0x20u);
  }

  *buf = a3;
  result = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3);
  if (result[7] > a4[1])
  {
    v19 = a3;
    if (*(a3 + 23) < 0)
    {
      v19 = *a3;
    }

    *buf = a3;
    v20 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3)[7];
    *buf = a3;
    v21 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3);
    snprintf(buf, 0xC8uLL, "PolarisD Triggered Panic - Reason Critical Process crashloop [%s] (PID: %u) Crash count: %llu; First crash: %llu[ms]; Last crash: %llu[ms]; Interval between crashes %llu[ms];", v19, a2, v20, a1[5] * v21[6] / a1[6], a1[5] * a5 / a1[6], v11);
    ps_system_action_trigger_panic(buf);
    result = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a3);
    result[7] = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void PSSH::SysProcessMonitor::handleProcessDiedDispatched(PSSH::SysProcessMonitor *this, int a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = 0;
  v26 = 0;
  memset(v29, 0, sizeof(v29));
  v4 = mach_continuous_time();
  std::string::basic_string[abi:ne200100]<0>(&v22, "");
  v5 = this + 16;
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    if (*(v5 + 22) == a2)
    {
      std::string::operator=(&v22, (v5 + 16));
      break;
    }
  }

  if (!std::string::compare(&v22, ""))
  {
    __PSSysHealthLogSharedInstance();
    PSSH::SysProcessMonitor::handleProcessDiedDispatched();
  }

  else
  {
    v6 = __PSSysHealthLogSharedInstance();
    v7 = os_signpost_enabled(v6);
    if (v7)
    {
      v8 = &v22;
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v8 = v22.__r_.__value_.__r.__words[0];
      }

      *v30 = 136315650;
      *&v30[4] = "handleProcessDiedDispatched";
      v31 = 2080;
      v32 = v8;
      v33 = 1024;
      v34 = a2;
      v7 = _os_signpost_emit_unreliably_with_name_impl();
    }

    v9 = PSSH::PSProcessMonitorEventLog(v7);
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v22;
    }

    else
    {
      v10 = v22.__r_.__value_.__r.__words[0];
    }

    v11 = v10->__r_.__value_.__r.__words[0];
    v12 = mach_absolute_time();
    v13 = *v9;
    v14 = &v9[12 * *v9];
    *(v14 + 6) = 2;
    *(v14 + 1) = v12;
    *(v14 + 2) = v11;
    *v9 = v13 + 1 - 100 * ((42949673 * (v13 + 1)) >> 32);
    *v30 = &v22;
    if (*(std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, &v22.__r_.__value_.__l.__data_) + 100))
    {
      *v30 = &v22;
      *(std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, &v22.__r_.__value_.__l.__data_) + 100) = 0;
      *v30 = &v22;
      *(std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, &v22.__r_.__value_.__l.__data_) + 23) = 0;
      if (PSSH::getProcessDeathParams(&v22, v23))
      {
        v17 = __PSSysHealthLogSharedInstance();
        PSSH::SysProcessMonitor::handleProcessDiedDispatched(v17, &v22.__r_.__value_.__r.__words[2] + 7, &v22);
      }

      else
      {
        ps_system_action_pause(v27);
        if (v28 == 1)
        {
          ps_system_action_lock_apple_pay();
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v21, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
        }

        else
        {
          v21 = v22;
        }

        *v30 = &v22;
        *(std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, &v22.__r_.__value_.__l.__data_) + 101) = 0;
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v20, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
        }

        else
        {
          v20 = v22;
        }

        PSSH::SysProcessMonitor::handleProcessDeathCount(this, a2, &v20, v23, v4);
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v19, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
        }

        else
        {
          v19 = v22;
        }

        *v30 = &v22;
        v15 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this, &v22.__r_.__value_.__l.__data_);
        PSSH::SysProcessMonitor::submitCADeathReport(v15, &v19, (v15 + 5));
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v22;
        }

        PSSH::SysProcessMonitor::handleKillDaemons(this, &__p, v23);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      __PSSysHealthLogSharedInstance();
      PSSH::SysProcessMonitor::handleProcessDiedDispatched();
    }
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  *v30 = v29;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v30);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v24);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_25EAEE02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  PSSH::ProcessDeathParams::~ProcessDeathParams(&a43);
  _Unwind_Resume(a1);
}

uint64_t PSSH::SysProcessMonitor::submitCADeathReport(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v6 = *(a3 + 16);
  v3 = *(a3 + 52);
  v7 = *(a3 + 56);
  v8[1] = 0;
  v8[0] = 0;
  v9 = 0;
  LODWORD(v10) = v3;
  BYTE4(v10) = *(a3 + 61);
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  strlcpy(v8, a2, 0x14uLL);
  result = pbs_ringbufferlogger_shared_write();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void PSSH::SysProcessMonitor::handleProcessDied(PSSH::SysProcessMonitor *this, int a2)
{
  v2 = *(this + 7);
  v3 = *(this + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN4PSSH17SysProcessMonitor17handleProcessDiedEi_block_invoke;
  v4[3] = &__block_descriptor_tmp_7_0;
  v4[4] = this;
  v5 = a2;
  dispatch_group_async(v2, v3, v4);
}

void PSSH::SysProcessMonitor::handleSystemActionKillProcessDispatched(void *a1, int a2, int a3)
{
  v35 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v27, "");
  v23 = 0;
  v24 = 0;
  v25 = 0;
  memset(v26, 0, sizeof(v26));
  v6 = a1 + 2;
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    if (*(v6 + 22) == a2)
    {
      std::string::operator=(&v27, (v6 + 2));
      break;
    }
  }

  if (!std::string::compare(&v27, ""))
  {
    __PSSysHealthLogSharedInstance();
    PSSH::SysProcessMonitor::handleSystemActionKillProcessDispatched();
  }

  else
  {
    v7 = __PSSysHealthLogSharedInstance();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      v9 = &v27;
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v9 = v27.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = "handleSystemActionKillProcessDispatched";
      v29 = 2080;
      v30 = v9;
      v31 = 1024;
      v32 = a2;
      v33 = 1024;
      v34 = a3;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "%s() process [%s] pid: %u was killed by system action. deathReason: %u", buf, 0x22u);
    }

    v10 = PSSH::PSProcessMonitorEventLog(v8);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v27;
    }

    else
    {
      v11 = v27.__r_.__value_.__r.__words[0];
    }

    v12 = v11->__r_.__value_.__r.__words[0];
    v13 = mach_absolute_time();
    v14 = *v10;
    v15 = &v10[12 * *v10];
    *(v15 + 6) = 2;
    *(v15 + 1) = v13;
    *(v15 + 2) = v12;
    *v10 = v14 + 1 - 100 * ((42949673 * (v14 + 1)) >> 32);
    *buf = &v27;
    if (*(std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v27.__r_.__value_.__l.__data_) + 100))
    {
      *buf = &v27;
      *(std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v27.__r_.__value_.__l.__data_) + 100) = 0;
      *buf = &v27;
      std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v27.__r_.__value_.__l.__data_)[7] = 1;
      *buf = &v27;
      std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v27.__r_.__value_.__l.__data_)[5] = 0;
      *buf = &v27;
      *(std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v27.__r_.__value_.__l.__data_) + 23) = a3;
      if (!PSSH::getProcessDeathParams(&v27, &v22))
      {
        v16 = __PSSysHealthLogSharedInstance();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = &v27;
          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v17 = v27.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          *&buf[4] = "handleSystemActionKillProcessDispatched";
          v29 = 2080;
          v30 = v17;
          _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_DEFAULT, "%s() Handle killed daemon [%s] PST Transition", buf, 0x16u);
        }

        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v21, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
        }

        else
        {
          v21 = v27;
        }

        *buf = &v27;
        *(std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v27.__r_.__value_.__l.__data_) + 101) = 0;
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v27;
      }

      *buf = &v27;
      v18 = std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v27.__r_.__value_.__l.__data_);
      PSSH::SysProcessMonitor::submitCADeathReport(v18, &__p, (v18 + 5));
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      __PSSysHealthLogSharedInstance();
      PSSH::SysProcessMonitor::handleSystemActionKillProcessDispatched();
    }
  }

  *buf = v26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_25EAEE618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  PSSH::ProcessDeathParams::~ProcessDeathParams(&a23);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void PSSH::SysProcessMonitor::getProcessMonitorStatisticsDispatched(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v5 = "getProcessMonitorStatisticsDispatched";
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v3 = *(a1 + 24);
  operator new[]();
}

void sub_25EAEE834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSH::SysProcessMonitor::getProcessMonitorStatistics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN4PSSH17SysProcessMonitor27getProcessMonitorStatisticsENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvS7_P28pssh_process_monitor_stats_siE_block_invoke;
  block[3] = &unk_2870BB890;
  block[5] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  block[4] = a3;
  dispatch_group_async(v4, v5, block);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ___ZN4PSSH17SysProcessMonitor27getProcessMonitorStatisticsENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvS7_P28pssh_process_monitor_stats_siE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  v3 = *(a1 + 32);
  PSSH::SysProcessMonitor::getProcessMonitorStatisticsDispatched(v2);
}

void sub_25EAEE998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v2 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v2;
  }
}

void __destroy_helper_block_e8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void PSSH::SysProcessMonitor::getSystemActionStatisticsDispatched()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "getSystemActionStatisticsDispatched";
    _os_log_impl(&dword_25EA3A000, v0, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v1 = 0;
  *buf = 0;
  ps_system_action_get_stats(buf, &v1);
}

void sub_25EAEEB24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSH::SysProcessMonitor::getSystemActionStatistics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN4PSSH17SysProcessMonitor25getSystemActionStatisticsENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvS7_P26pssh_system_action_stats_siE_block_invoke;
  block[3] = &unk_2870BB8C8;
  block[5] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  block[4] = a3;
  dispatch_group_async(v4, v5, block);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ___ZN4PSSH17SysProcessMonitor25getSystemActionStatisticsENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvS7_P26pssh_system_action_stats_siE_block_invoke(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  v2 = *(a1 + 32);
  PSSH::SysProcessMonitor::getSystemActionStatisticsDispatched();
}

void sub_25EAEEC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSH::SysProcessMonitor::getProcessMonitorEventLogDispatched()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v2 = "getProcessMonitorEventLogDispatched";
    _os_log_impl(&dword_25EA3A000, v0, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  operator new();
}

void sub_25EAEEE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSH::SysProcessMonitor::getProcessMonitorEventLog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN4PSSH17SysProcessMonitor25getProcessMonitorEventLogENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvS7_P32pssh_process_monitor_event_log_sE_block_invoke;
  block[3] = &unk_2870BB900;
  block[5] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  block[4] = a3;
  dispatch_group_async(v4, v5, block);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ___ZN4PSSH17SysProcessMonitor25getProcessMonitorEventLogENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvS7_P32pssh_process_monitor_event_log_sE_block_invoke(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  v2 = *(a1 + 32);
  PSSH::SysProcessMonitor::getProcessMonitorEventLogDispatched();
}

void sub_25EAEEFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::SysProcessMonitor::ProcessInfo>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_25EAEF228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAEF300(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t ps_system_action_pause(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "ps_system_action_pause";
    v8 = 2048;
    v9 = a1;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_DEBUG, "%s() pauseDurationMs: %llu", &v6, 0x16u);
  }

  v3 = mach_continuous_time();
  result = mach_timebase_info(&v6);
  atomic_store(1000000 * a1 * v7 / v6 + v3, &pauseActionMachTime);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void ps_system_action_stop()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    v2 = 136315138;
    v3 = "ps_system_action_stop";
    _os_log_impl(&dword_25EA3A000, v0, OS_LOG_TYPE_DEBUG, "%s()", &v2, 0xCu);
  }

  atomic_store(1u, gStopSystemAction);
  v1 = *MEMORY[0x277D85DE8];
}

void ps_system_action_handle_graph_hang(char *a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v58 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v12 = mach_absolute_time();
  v13 = ps_util_mach_time_to_ns(v12);
  v14 = mach_continuous_time();
  v40 = 0;
  if (a6)
  {
    v15 = (v13 - a6) / 0xF4240;
    snprintf(__str, 0xC8uLL, "PolarisD SystemAction::Reason Critical Graph:[%s] session:[%s] pid:[%u] qos:[%llu] lastExecNs:[%llu] currentNs:[%llu] hungTimeMs:[%llu]", a2, a1, a3, a4, a6, v13, v15);
    v16 = __PSSysHealthLogSharedInstance();
    if (os_signpost_enabled(v16))
    {
      v17 = ps_util_ns_to_mach_time(a6);
      *buf = 134351106;
      *&buf[4] = ps_util_mat_to_mct(v17);
      v43 = 2050;
      v44 = v14;
      v45 = 2080;
      v46 = a2;
      v47 = 2080;
      *v48 = a1;
      *&v48[8] = 1024;
      *&v48[10] = a3;
      v49 = 2048;
      v50 = a4;
      v51 = 2048;
      v52 = a6;
      v53 = 2048;
      v54 = v13;
      v55 = 2048;
      v56 = (v13 - a6) / 0xF4240;
      _os_signpost_emit_with_name_impl(&dword_25EA3A000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GraphHang", "%{public, signpost.description:begin_time}llu %{public, signpost.description:end_time}llu PolarisD SystemAction::Reason Critical Graph:[%s] session:[%s] pid:[%u] qos:[%llu] lastExecNs:[%llu] currentNs:[%llu] hungTimeMs:[%llu]", buf, 0x58u);
    }
  }

  else
  {
    snprintf(__str, 0xC8uLL, "PolarisD SystemAction::Reason Critical Graph:[%s] session:[%s] pid:[%u] qos:[%llu] lastExecNs:[%llu] currentNs:[%llu], creationTimeNs:[%llu]; graph did not run", a2, a1, a3, a4, 0, v13, a5);
    v18 = __PSSysHealthLogSharedInstance();
    if (os_signpost_enabled(v18))
    {
      v19 = ps_util_ns_to_mach_time(0);
      *buf = 134351106;
      *&buf[4] = ps_util_mat_to_mct(v19);
      v43 = 2050;
      v44 = v14;
      v45 = 2080;
      v46 = a2;
      v47 = 2080;
      *v48 = a1;
      *&v48[8] = 1024;
      *&v48[10] = a3;
      v49 = 2048;
      v50 = a4;
      v51 = 2048;
      v52 = 0;
      v53 = 2048;
      v54 = v13;
      v55 = 2048;
      v56 = a5;
      _os_signpost_emit_with_name_impl(&dword_25EA3A000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GraphHang", "%{public, signpost.description:begin_time}llu %{public, signpost.description:end_time}llu PolarisD SystemAction::Reason Critical Graph:[%s] session:[%s] pid:[%u] qos:[%llu] lastExecNs:[%llu] currentNs:[%llu], creationTimeNs:[%llu]; graph did not run", buf, 0x58u);
    }

    v15 = (v13 - a5) / 0xF4240;
  }

  v20 = mach_continuous_time();
  v21 = atomic_load(&pauseActionMachTime);
  if (v20 <= v21)
  {
    ps_system_action_handle_graph_hang_cold_1();
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(buf, a1);
    std::string::basic_string[abi:ne200100]<0>(__p, a2);
    GraphRecoveryAction = PSSH::getGraphRecoveryAction(buf, __p, &v41, &v40);
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(*buf);
    }

    if (!GraphRecoveryAction)
    {
      v23 = __PSSysHealthLogSharedInstance();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
      if (v24)
      {
        *buf = 136316162;
        *&buf[4] = "ps_system_action_handle_graph_hang";
        v43 = 2080;
        v44 = a1;
        v45 = 2080;
        v46 = a2;
        v47 = 1024;
        *v48 = v41;
        *&v48[4] = 2048;
        *&v48[6] = v40;
        _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_DEBUG, "%s => getGraphRecoveryAction(sessionName=%s, graphName=%s, action=%d, waitTimeBeforeKillMs=%llu)", buf, 0x30u);
      }

      if (v41 == 2)
      {
        v25 = __PSSysHealthLogSharedInstance();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          *&buf[4] = "ps_system_action_handle_graph_hang";
          _os_log_impl(&dword_25EA3A000, v25, OS_LOG_TYPE_INFO, "%s() ignoring", buf, 0xCu);
        }

        GraphHangStats = getGraphHangStats();
        std::string::basic_string[abi:ne200100]<0>(buf, a2);
        __p[0] = buf;
        v27 = std::__hash_table<std::__hash_value_type<std::string,GraphHangInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,GraphHangInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,GraphHangInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,GraphHangInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(GraphHangStats, buf);
        v27[7] = v27[7] + 1;
      }

      else
      {
        v28 = PSSH::PSProcessMonitorEventLog(v24);
        v29 = *a2;
        v30 = mach_absolute_time();
        v31 = *v28;
        v32 = &v28[12 * *v28];
        *(v32 + 6) = 5;
        *(v32 + 1) = v30;
        *(v32 + 2) = v29;
        *v28 = v31 + 1 - 100 * ((42949673 * (v31 + 1)) >> 32);
        if (v40 && v15 <= v40)
        {
          ps_system_action_handle_graph_hang_cold_3(a2, &v40);
          goto LABEL_27;
        }

        if (v41)
        {
          if (v41 != 1)
          {
            ps_system_action_handle_graph_hang_cold_2();
          }

          ps_system_action_trigger_panic(__str);
          v33 = getGraphHangStats();
          std::string::basic_string[abi:ne200100]<0>(buf, a2);
          __p[0] = buf;
          v34 = std::__hash_table<std::__hash_value_type<std::string,GraphHangInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,GraphHangInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,GraphHangInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,GraphHangInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v33, buf);
          v34[6] = v34[6] + 1;
        }

        else
        {
          ps_system_action_kill_process(a3, __str, 1, 1, "");
          v35 = getGraphHangStats();
          std::string::basic_string[abi:ne200100]<0>(buf, a2);
          __p[0] = buf;
          v36 = std::__hash_table<std::__hash_value_type<std::string,GraphHangInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,GraphHangInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,GraphHangInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,GraphHangInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v35, buf);
          v36[5] = v36[5] + 1;
        }
      }

      if (SHIBYTE(v45) < 0)
      {
        operator delete(*buf);
      }
    }
  }

LABEL_27:
  v37 = *MEMORY[0x277D85DE8];
}

void sub_25EAEFA30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getGraphHangStats(void)
{
  {
    operator new();
  }

  return getGraphHangStats(void)::_graphHangStats;
}

void ps_system_action_trigger_panic(const char *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = atomic_load(gStopSystemAction);
  v3 = __PSSysHealthLogSharedInstance();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "ps_system_action_trigger_panic";
      v5 = "%s() Disabled Panic ";
      v6 = v4;
      v7 = OS_LOG_TYPE_DEFAULT;
      v8 = 12;
LABEL_10:
      _os_log_impl(&dword_25EA3A000, v6, v7, v5, buf, v8);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v9 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v9)
  {
    *buf = 136315394;
    v24 = "ps_system_action_trigger_panic";
    v25 = 2080;
    v26 = a1;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_INFO, "%s() panicMessage: [%s]", buf, 0x16u);
  }

  v10 = PSSH::PSProcessMonitorEventLog(v9);
  v11 = mach_absolute_time();
  v12 = *v10;
  v13 = &v10[12 * *v10];
  *(v13 + 6) = 8;
  *(v13 + 1) = v11;
  *(v13 + 2) = 888;
  *v10 = v12 + 1 - 100 * ((42949673 * (v12 + 1)) >> 32);
  v22 = 0;
  if (PSSH::checkIsPanicEnabled(&v22, v14) || v22 != 1)
  {
    v15 = __PSSysHealthLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "Panic not enabled in config file. Skipping";
      v6 = v15;
      v7 = OS_LOG_TYPE_INFO;
      v8 = 2;
      goto LABEL_10;
    }

LABEL_11:
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  v17 = ps_system_action_trigger_panic(buf, a1);
  ps_system_action_kill_process(v17, v18, v19, v20, v21);
}

void ps_system_action_kill_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = atomic_load(gStopSystemAction);
  v10 = __PSSysHealthLogSharedInstance();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v29 = 136315138;
      v30 = "ps_system_action_kill_process";
      v12 = "%s() Disabled Kill Process ";
      v13 = v10;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 12;
LABEL_17:
      _os_log_impl(&dword_25EA3A000, v13, v14, v12, &v29, v15);
    }
  }

  else
  {
    if (v11)
    {
      v29 = 136315394;
      v30 = "ps_system_action_kill_process";
      v31 = 2080;
      v32 = a2;
      _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEFAULT, "%s() killReason: [%s]", &v29, 0x16u);
    }

    v16 = PSSH::PSProcessMonitorEventLog(v11);
    v17 = *a5;
    v18 = mach_absolute_time();
    v19 = *v16;
    v20 = &v16[12 * *v16];
    *(v20 + 6) = 7;
    *(v20 + 1) = v18;
    *(v20 + 2) = v17;
    *v16 = v19 + 1 - 100 * ((42949673 * (v19 + 1)) >> 32);
    if (gKillProcessReportBlock)
    {
      (*(gKillProcessReportBlock + 16))(gKillProcessReportBlock, a1, a3);
    }

    v21 = __PSSysHealthLogSharedInstance();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v29 = 136315138;
      v30 = "ps_system_action_kill_process";
      _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_DEBUG, "%s() requesting logd to flush accumulated buffers", &v29, 0xCu);
    }

    v22 = OSLogFlushBuffers();
    if (v22)
    {
      v23 = v22;
      v24 = __PSSysHealthLogSharedInstance();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v29 = 136315394;
        v30 = "ps_system_action_kill_process";
        v31 = 1024;
        LODWORD(v32) = v23;
        _os_log_impl(&dword_25EA3A000, v24, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v29, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v25 = terminate_with_reason();
    if (v25)
    {
      v26 = v25;
      v27 = __PSSysHealthLogSharedInstance();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v29 = 136315394;
        v30 = "ps_system_action_kill_process";
        v31 = 1024;
        LODWORD(v32) = v26;
        v12 = "%s() terminate_with_reason() failed with %d";
        v13 = v27;
        v14 = OS_LOG_TYPE_ERROR;
        v15 = 18;
        goto LABEL_17;
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t ps_system_action_lock_apple_pay(void)
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = __PSSysHealthLogSharedInstance();
  result = os_signpost_enabled(v0);
  if (result)
  {
    result = _os_signpost_emit_unreliably_with_name_impl();
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void ps_system_action_get_stats(uint64_t a1, unint64_t *a2)
{
  v3 = *(getGraphHangStats() + 24);
  *a2 = v3;
  is_mul_ok(v3, 0x98uLL);
  operator new[]();
}

const void **std::__hash_table<std::__hash_value_type<std::string,GraphHangInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,GraphHangInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,GraphHangInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,GraphHangInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

void PSSH::SysHealthData::SysHealthData(PSSH::SysHealthData *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  operator new[]();
}

void sub_25EAF0498(_Unwind_Exception *a1)
{
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v2);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void PSSH::SysHealthData::~SysHealthData(PSSH::SysHealthData *this)
{
  std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceStreams *>>>::clear(this);
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 12);
  v2 = *(this + 6);
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 72 * v4 - 72;
      v6 = -72 * v4;
      do
      {
        if (*(v5 + 71) < 0)
        {
          operator delete(*(v5 + 48));
        }

        std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(v5);
        v5 -= 72;
        v6 += 72;
      }

      while (v6);
    }

    MEMORY[0x25F8C7C30](v3, 0x10B2C803A500989);
  }

  v7 = *(this + 8);
  if (v7)
  {
    MEMORY[0x25F8C7C30](v7, 0x1000C80A31A6D41);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 96);

  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this);
}

__n128 PSSH::SysHealthData::getCurrSystemHealth(__n128 *a1, __n128 *a2)
{
  result = a1[5];
  *a2 = result;
  return result;
}

uint64_t PSSH::SysHealthData::getSessionFromStore(PSSH::SysHealthData *this)
{
  v3 = *(this + 14);
  if (v3 > 0x3F)
  {
    v8 = v1;
    v9 = v2;
    v6 = __PSSysHealthLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "No more entries in session store", v7, 2u);
    }

    return 0;
  }

  else
  {
    v4 = *(this + 6);
    *(this + 14) = v3 + 1;
    return v4 + 72 * v3;
  }
}

void PSSH::SysHealthData::updateSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  buf[3] = *MEMORY[0x277D85DE8];
  buf[0] = a2;
  v6 = std::__hash_table<std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2)[5];
  if (!v6)
  {
    SessionFromStore = PSSH::SysHealthData::getSessionFromStore(a1);
    if (!SessionFromStore)
    {
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__erase_unique<std::string>(a1, a2);
      v14 = __PSSysHealthLogSharedInstance();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        if (*(a2 + 23) >= 0)
        {
          v15 = a2;
        }

        else
        {
          v15 = *a2;
        }

        LODWORD(buf[0]) = 136315138;
        *(buf + 4) = v15;
        _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_ERROR, "No memory for session: %s\n", buf, 0xCu);
      }

      goto LABEL_16;
    }

    v6 = SessionFromStore;
    std::string::operator=(SessionFromStore + 2, a2);
    buf[0] = a2;
    std::__hash_table<std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2)[5] = v6;
  }

  v8 = v6[1].__r_.__value_.__r.__words[2];
  (*(a3 + 16))(a3, v6);
  v9 = v6[1].__r_.__value_.__r.__words[2];
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (!v10)
  {
    v12 = *(a1 + 40) - 1;
LABEL_15:
    *(a1 + 40) = v12;
    goto LABEL_16;
  }

  if (v9)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = *(a1 + 40) + 1;
    goto LABEL_15;
  }

LABEL_16:
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t *PSSH::SysHealthData::updateSessionGraphForKey(uint64_t a1, void *a2, const void **a3, uint64_t a4)
{
  *buf = a3;
  v8 = std::__hash_table<std::__hash_value_type<std::string,pssh_graph_state_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,pssh_graph_state_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,pssh_graph_state_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,pssh_graph_state_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, a3)[5];
  if (v8)
  {
LABEL_6:
    result = (*(a4 + 16))(a4, v8);
    if (v8[324])
    {
      return result;
    }

    return std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__erase_unique<std::string>(a2, a3);
  }

  v9 = *(a1 + 72);
  v8 = *(a1 + 64);
  if (v9 >= 0x200)
  {
    v11 = 512;
    while ((v8[324] & 1) != 0)
    {
      v8 += 376;
      if (!--v11)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_5;
  }

  *(a1 + 72) = v9 + 1;
  if (v8)
  {
    v8 += 376 * v9;
LABEL_5:
    *buf = a3;
    std::__hash_table<std::__hash_value_type<std::string,pssh_graph_state_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,pssh_graph_state_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,pssh_graph_state_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,pssh_graph_state_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, a3)[5] = v8;
    goto LABEL_6;
  }

LABEL_12:
  v12 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_ERROR, "No more free memory for graph data.", buf, 2u);
  }

  return std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__erase_unique<std::string>(a2, a3);
}

uint64_t PSSH::SysHealthData::_for_each_active_session(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      if (*(*(v4 + 48) + v5 + 40))
      {
        result = (*(a2 + 16))(a2);
        v2 = *(v4 + 56);
      }

      v5 += 72;
    }
  }

  return result;
}

uint64_t PSSH::SysHealthData::_for_each_active_graph(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v4 = result;
    for (i = 0; i < v2; ++i)
    {
      v6 = *(v4 + 48) + 72 * i;
      if (*(v6 + 40))
      {
        v7 = *(v6 + 16);
        if (v7)
        {
          do
          {
            if (*(v7[5] + 324) == 1)
            {
              result = (*(a2 + 16))(a2);
            }

            v7 = *v7;
          }

          while (v7);
          v2 = *(v4 + 56);
        }
      }
    }
  }

  return result;
}

void PSSH::SysHealthData::cleanupSessionGraphsAfterProcessDeath(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 40))
  {
    std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceStreams *>>>::clear(a2);
  }
}

uint64_t PSSH::SysHealthData::_for_each_active_liveness_node(uint64_t result, uint64_t a2)
{
  for (i = *(result + 112); i; i = *i)
  {
    result = (*(a2 + 16))(a2, i[2]);
  }

  return result;
}

void *std::__hash_table<pssh_graph_state_s const*,std::hash<pssh_graph_state_s const*>,std::equal_to<pssh_graph_state_s const*>,std::allocator<pssh_graph_state_s const*>>::__emplace_unique_key_args<pssh_graph_state_s const*,pssh_graph_state_s const* const&>(void *a1, void *a2)
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

const void **std::__hash_table<std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSH::pssh_session_state_s *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_25EAF0F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAF1040(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,pssh_graph_state_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,pssh_graph_state_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,pssh_graph_state_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,pssh_graph_state_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,pssh_graph_state_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,pssh_graph_state_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,pssh_graph_state_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,pssh_graph_state_s *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_25EAF12B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAF1378(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void PSSH::SysHealthManager::SysHealthManager(PSSH::SysHealthManager *this, PSSH::SysHealthServer *a2)
{
  *this = 0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  operator new();
}

void PSSH::SysHealthManager::~SysHealthManager(dispatch_group_t *this)
{
  dispatch_group_wait(this[2], 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(this[3]);
  dispatch_release(this[2]);
  if (*this)
  {
    PSSH::SysHealthData::~SysHealthData(*this);
    MEMORY[0x25F8C7C50]();
  }

  *this = 0;
}

void PSSH::SysHealthManager::checkGraphForLiveness(__n128 **this, const pssh_graph_state_s *a2)
{
  PSSH::SysHealthData::getCurrSystemHealth(*this, &v6);
  if (v6.n128_u32[3])
  {
    if (a2->var4)
    {
      v4 = 0;
      while (!v6.n128_u8[v4 + 8])
      {
LABEL_9:
        if (++v4 == 4)
        {
          return;
        }
      }

      v5 = 352;
      while (v4 != a2->var0[v5] || !a2->var10)
      {
        if (++v5 == 356)
        {
          goto LABEL_9;
        }
      }

      PSSH::SysHealthData::addLivenessNode(*this, a2);
    }

    else
    {
      PSSH::SysHealthData::removeLivenessNode(*this, a2);
    }
  }
}

void PSSH::SysHealthManager::remoteHasUpdatedGraphs(PSSH::SysHealthManager *this, const pssh_graph_state_s *a2, int a3)
{
  v6 = *this;
  std::string::basic_string[abi:ne200100]<0>(__p, a2->var1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN4PSSH16SysHealthManager22remoteHasUpdatedGraphsEPK18pssh_graph_state_sj_block_invoke;
  v7[3] = &__block_descriptor_tmp_5;
  v8 = a3;
  v7[4] = this;
  v7[5] = a2;
  PSSH::SysHealthData::updateSession(v6, __p, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_25EAF1604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4PSSH16SysHealthManager22remoteHasUpdatedGraphsEPK18pssh_graph_state_sj_block_invoke(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 48) - 1);
  if (v2 >= 0)
  {
    v5 = *(a1 + 32);
    v6 = v2 + 1;
    v7 = 376 * v2;
    do
    {
      v8 = *(a1 + 40) + v7;
      v9 = *v5;
      std::string::basic_string[abi:ne200100]<0>(__p, (v8 + 192));
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 0x40000000;
      v11[2] = ___ZN4PSSH16SysHealthManager22remoteHasUpdatedGraphsEPK18pssh_graph_state_sj_block_invoke_2;
      v11[3] = &__block_descriptor_tmp_3_2;
      v11[4] = v5;
      v11[5] = v8;
      v11[6] = a2;
      PSSH::SysHealthData::updateSessionGraphForKey(v9, a2, __p, v11);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      v7 -= 376;
    }

    while (v6-- > 1);
  }
}

void sub_25EAF1724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4PSSH16SysHealthManager22remoteHasUpdatedGraphsEPK18pssh_graph_state_sj_block_invoke_2(void *a1, _BYTE *__dst)
{
  v4 = a1[4];
  v3 = a1[5];
  if (v3[324] == 1)
  {
    if ((__dst[324] & 1) == 0)
    {
      ++*(a1[6] + 40);
    }

    memcpy(__dst, v3, 0x178uLL);
  }

  else
  {
    if (__dst[324])
    {
      --*(a1[6] + 40);
    }

    __dst[324] = 0;
  }

  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN4PSSH16SysHealthManager22remoteHasUpdatedGraphsEPK18pssh_graph_state_sj_block_invoke_3;
  v7[3] = &__block_descriptor_tmp_23;
  v7[4] = v4;
  v7[5] = __dst;
  dispatch_group_async(v5, v6, v7);
}

void PSSH::SysHealthManager::remoteHasRequestedGraphs()
{
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x2000000000;
  operator new[]();
}

void sub_25EAF1954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void *___ZN4PSSH16SysHealthManager24remoteHasRequestedGraphsERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEU13block_pointerFvPK18pssh_graph_state_siE_block_invoke(uint64_t a1, const void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  return memcpy((v2 + 376 * v4), a2, 0x178uLL);
}

void PSSH::SysHealthManager::remoteHasUpdatedSystemHealth(uint64_t *a1, __int128 *a2)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3802000000;
  v14[3] = __Block_byref_object_copy__2;
  v14[4] = __Block_byref_object_dispose__2;
  v15 = *a2;
  v4 = a1[2];
  v5 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN4PSSH16SysHealthManager28remoteHasUpdatedSystemHealthEPK19pssh_health_state_s_block_invoke;
  block[3] = &unk_279A49350;
  block[4] = v14;
  block[5] = a1;
  dispatch_group_async(v4, v5, block);
  if (*(a2 + 3))
  {
    v6 = *a1;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = ___ZN4PSSH16SysHealthManager28remoteHasUpdatedSystemHealthEPK19pssh_health_state_s_block_invoke_3;
    v12[3] = &__block_descriptor_tmp_10;
    v12[4] = a1;
    PSSH::SysHealthData::_for_each_active_graph(v6, v12);
    v7 = __PSSysHealthLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEBUG, "Starting poll..", buf, 2u);
    }

    v8 = a1[2];
    v9 = a1[3];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 0x40000000;
    v10[2] = ___ZN4PSSH16SysHealthManager28remoteHasUpdatedSystemHealthEPK19pssh_health_state_s_block_invoke_11;
    v10[3] = &__block_descriptor_tmp_12;
    v10[4] = a1;
    dispatch_group_async(v8, v9, v10);
  }

  _Block_object_dispose(v14, 8);
}

__n128 __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void *___ZN4PSSH16SysHealthManager28remoteHasUpdatedSystemHealthEPK19pssh_health_state_s_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  PSSH::SysHealthData::updateSystemHealth(*v1, (*(*(a1 + 32) + 8) + 40), &__block_literal_global_24);
  v2 = *v1;

  return PSSH::SysHealthData::livenessClear(v2);
}

void ___ZN4PSSH16SysHealthManager28remoteHasUpdatedSystemHealthEPK19pssh_health_state_s_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZN4PSSH16SysHealthManager28remoteHasUpdatedSystemHealthEPK19pssh_health_state_s_block_invoke_4;
  v5[3] = &__block_descriptor_tmp_9_1;
  v5[4] = v2;
  v5[5] = a2;
  dispatch_group_async(v3, v4, v5);
}

void ___ZN4PSSH16SysHealthManager28remoteHasUpdatedSystemHealthEPK19pssh_health_state_s_block_invoke_11(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 32) & 1) == 0)
  {
    *(v1 + 32) = 1;
    PSSH::SysHealthManager::monitorLiveness(v1);
  }
}

void PSSH::SysHealthManager::monitorLiveness(dispatch_group_t *this)
{
  v27 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x4002000000;
  v18 = __Block_byref_object_copy__13;
  v19 = __Block_byref_object_dispose__14;
  __p = 0;
  v21 = 0;
  v22 = 0;
  v2 = mach_absolute_time();
  dispatch_group_enter(this[2]);
  PSSH::SysHealthData::getCurrSystemHealth(*this, &v23);
  if (v23.n128_u32[3])
  {
    v3 = *this;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = ___ZN4PSSH16SysHealthManager15monitorLivenessEv_block_invoke;
    v14[3] = &unk_279A49400;
    v14[4] = &v15;
    v14[5] = this;
    PSSH::SysHealthData::_for_each_active_liveness_node(v3, v14);
    if ((*(v16 + 63) & 0x8000000000000000) != 0)
    {
      if (!v16[6])
      {
LABEL_21:
        v8 = __PSSysHealthLogSharedInstance();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *&buf[4] = v23.n128_u32[3];
          _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEBUG, "Polling for liveness. Next poll in %d secs", buf, 8u);
        }

        v9 = dispatch_time(0, 1000000000 * v23.n128_u32[3]);
        v10 = this[3];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___ZN4PSSH16SysHealthManager15monitorLivenessEv_block_invoke_22;
        block[3] = &__block_descriptor_tmp_23;
        block[4] = this;
        dispatch_after(v9, v10, block);
        goto LABEL_24;
      }
    }

    else if (!*(v16 + 63))
    {
      goto LABEL_21;
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "\n");
    if ((v26 & 0x80u) == 0)
    {
      v5 = buf;
    }

    else
    {
      v5 = *buf;
    }

    if ((v26 & 0x80u) == 0)
    {
      v6 = v26;
    }

    else
    {
      v6 = v25;
    }

    std::string::append((v16 + 5), v5, v6);
    if (v26 < 0)
    {
      operator delete(*buf);
    }

    v7 = this[1];
    if (*(v16 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, v16[5], v16[6]);
    }

    else
    {
      v13 = *(v16 + 5);
    }

    PSSH::SysHealthServer::reportEvent(v7, 0, v2, &v13);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    goto LABEL_21;
  }

  *(this + 32) = 0;
  v4 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEBUG, "Stopping poll for liveness health", buf, 2u);
  }

LABEL_24:
  dispatch_group_leave(this[2]);
  _Block_object_dispose(&v15, 8);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_25EAF1F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  _Block_object_dispose(&a28, 8);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void PSSH::SysHealthManager::remoteHasDied(PSSH::SysHealthManager *this, int a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x4002000000;
  v29 = __Block_byref_object_copy__13;
  v30 = __Block_byref_object_dispose__14;
  std::string::basic_string[abi:ne200100]<0>(&v25, "PID: ");
  std::to_string(&v24, a2);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v24;
  }

  else
  {
    v4 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v25, v4, size);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, ": ");
  if ((v23 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v9 = v23;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v33, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v32 = v10->__r_.__value_.__r.__words[2];
  v31 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  v12 = mach_absolute_time();
  v13 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LODWORD(v33.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(v33.__r_.__value_.__r.__words[0]) = a2;
    _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_INFO, "Recording pid [%d] has died", &v33, 8u);
  }

  v14 = *this;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 0x40000000;
  v20[2] = ___ZN4PSSH16SysHealthManager13remoteHasDiedEi_block_invoke;
  v20[3] = &unk_279A493D8;
  v21 = a2;
  v20[4] = &v26;
  v20[5] = this;
  PSSH::SysHealthData::_for_each_active_session(v14, v20);
  std::string::basic_string[abi:ne200100]<0>(&v33, "\n");
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v33;
  }

  else
  {
    v15 = v33.__r_.__value_.__r.__words[0];
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v33.__r_.__value_.__l.__size_;
  }

  std::string::append((v27 + 5), v15, v16);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v17 = *(this + 1);
  if (*(v27 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v27[5], v27[6]);
  }

  else
  {
    v19 = *(v27 + 5);
  }

  PSSH::SysHealthServer::reportEvent(v17, 1, v12, &v19);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v26, 8);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_25EAF22BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose((v40 - 144), 8);
  if (*(v40 - 81) < 0)
  {
    operator delete(*(v40 - 104));
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__13(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__14(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void ___ZN4PSSH16SysHealthManager13remoteHasDiedEi_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = 0;
    v6 = *(a1 + 40);
    do
    {
      while (1)
      {
        v7 = v2[5];
        if (*(v7 + 320) != *(a1 + 48) || (*(v7 + 324) & 1) == 0)
        {
          break;
        }

        *(v7 + 324) = 0;
        --*(a2 + 40);
        v2 = *v2;
        v5 = 1;
        if (!v2)
        {
          goto LABEL_10;
        }
      }

      v2 = *v2;
    }

    while (v2);
    if ((v5 & 1) == 0)
    {
      return;
    }

LABEL_10:
    std::string::basic_string[abi:ne200100]<0>(&v15, " , ");
    v8 = *(a2 + 71);
    if (v8 >= 0)
    {
      v9 = (a2 + 48);
    }

    else
    {
      v9 = *(a2 + 48);
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 71);
    }

    else
    {
      v10 = *(a2 + 56);
    }

    v11 = std::string::insert(&v15, 0, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v17 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v17 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if (v17 >= 0)
    {
      v14 = HIBYTE(v17);
    }

    else
    {
      v14 = __p[1];
    }

    std::string::append((*(*(a1 + 32) + 8) + 40), v13, v14);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    PSSH::SysHealthData::cleanupSessionGraphsAfterProcessDeath(*v6, a2);
  }
}

void sub_25EAF24E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4PSSH16SysHealthManager15monitorLivenessEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 372);
  if (PSSH::SysHealthServer::checkDeadlineMisses(*(*(a1 + 40) + 8)))
  {
    std::string::basic_string[abi:ne200100]<0>(v15, a2);
    v5 = __PSSysHealthLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = v15;
      if ((v16 & 0x80u) != 0)
      {
        v6 = v15[0];
      }

      *buf = 136315138;
      *&buf[4] = v6;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEBUG, "Deadline missed: %s", buf, 0xCu);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, " , ");
    if ((v16 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v15[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v8 = v16;
    }

    else
    {
      v8 = v15[1];
    }

    v9 = std::string::insert(&__p, 0, v7, v8);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v18 = v9->__r_.__value_.__r.__words[2];
    *buf = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v11 = buf;
    }

    else
    {
      v11 = *buf;
    }

    if (v18 >= 0)
    {
      v12 = HIBYTE(v18);
    }

    else
    {
      v12 = *&buf[8];
    }

    std::string::append((*(*(a1 + 32) + 8) + 40), v11, v12);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_25EAF269C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void PSSH::SysHealthServer::SysHealthServer(_OWORD *a1, void *aBlock)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 4) = _Block_copy(aBlock);
  operator new();
}

void PSSH::SysHealthServer::~SysHealthServer(PSSH::SysHealthServer *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    PSSH::SysHealthManager::~SysHealthManager(v2);
    MEMORY[0x25F8C7C50]();
  }

  v3 = *(this + 2);
  if (v3)
  {
    PSSH::SysProcessMonitor::~SysProcessMonitor(v3);
    MEMORY[0x25F8C7C50]();
  }

  _Block_release(*(this + 4));
  v4 = *(this + 5);
  if (v4)
  {
    _Block_release(v4);
  }
}

void *PSSH::SysHealthServer::reportEventTo(uint64_t a1, void *a2, void *aBlock)
{
  *(a1 + 24) = *a2;
  result = _Block_copy(aBlock);
  *(a1 + 40) = result;
  return result;
}

void PSSH::SysHealthServer::reportEvent(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) && (v7 = *(a1 + 24)) != 0)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1174405120;
    v11[2] = ___ZN4PSSH15SysHealthServer11reportEventENS_11pssh_reportEyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke;
    v11[3] = &__block_descriptor_tmp_30;
    v13 = a2;
    v11[4] = a1;
    v11[5] = a3;
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a4, a4[1]);
    }

    else
    {
      __p = *a4;
    }

    dispatch_async(v7, v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (*(v4 + 23) < 0)
    {
      v4 = *v4;
    }

    *buf = 134218754;
    v15 = a3;
    v16 = 1024;
    v17 = a2;
    v18 = 2080;
    v19 = v4;
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_INFO, "Machtime: %llu event: %d reason: %s reported: %d", buf, 0x22u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void ___ZN4PSSH15SysHealthServer11reportEventENS_11pssh_reportEyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 40);
  v3 = *(a1 + 72);
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  (*(v2 + 16))(v2, v3, v1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25EAF2A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSH::SysHealthServer::handleMessageNotifyClientDeath(PSSH::SysHealthManager **this, const PSSG::MessageNotifyClientDeath *a2)
{
  PSSH::SysHealthManager::remoteHasDied(this[1], *(a2 + 124));
  v4 = this[2];
  v5 = *(a2 + 124);

  PSSH::SysProcessMonitor::handleProcessDied(v4, v5);
}

void PSSH::SysHealthServer::handleRequestAllGraphs(uint64_t a1, PSSG::MessageSHRequestAllGraphs *this)
{
  v2 = *(a1 + 8);
  PSSG::MessageSHRequestAllGraphs::getFilter(this, &__p);
  PSSH::SysHealthManager::remoteHasRequestedGraphs();
}

void sub_25EAF2BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4PSSH15SysHealthServer22handleRequestAllGraphsERKN4PSSG25MessageSHRequestAllGraphsEU13block_pointerFvRKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERNS1_7MessageEE_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v15[62] = *MEMORY[0x277D85DE8];
  PSSG::MessageBase::MessageBase(v15, 33, (*(a1 + 40) + 16), a2, 376 * a3);
  v15[0] = &unk_2870BB7B8;
  v4 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 40);
    v6 = (v5 + 16);
    if (*(v5 + 39) < 0)
    {
      v6 = *v6;
    }

    PSSG::MessageSHPublishAllGraphs::description(v15, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    v12 = v6;
    v13 = 2080;
    v14 = p_p;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEBUG, "%s <-- %s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v8 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  PSSG::MessageBase::~MessageBase(v15);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_25EAF2D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  PSSG::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void PSSH::SysHealthServer::handleRequestProcessMonitorStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZN4PSSH15SysHealthServer32handleRequestProcessMonitorStatsERKN4PSSG35MessageSHRequestProcessMonitorStatsEU13block_pointerFvRKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERNS1_7MessageEE_block_invoke;
  v5[3] = &unk_279A49470;
  v5[4] = a3;
  PSSH::SysProcessMonitor::getProcessMonitorStatistics(v4, &v6, v5);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_25EAF2E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4PSSH15SysHealthServer32handleRequestProcessMonitorStatsERKN4PSSG35MessageSHRequestProcessMonitorStatsEU13block_pointerFvRKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERNS1_7MessageEE_block_invoke(uint64_t a1, __int128 *a2, uint64_t a3, int a4)
{
  v16[62] = *MEMORY[0x277D85DE8];
  PSSG::MessageBase::MessageBase(v16, 34, a2, a3, 144 * a4);
  v16[0] = &unk_2870BB9C0;
  v6 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = a2;
    if (*(a2 + 23) < 0)
    {
      v7 = *a2;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Report Process Monitor statistics");
    if (v11 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136315394;
    v13 = v7;
    v14 = 2080;
    v15 = v8;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEBUG, "%s <-- %s", buf, 0x16u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(*(a1 + 32) + 16))();
  PSSG::MessageBase::~MessageBase(v16);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_25EAF2F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  PSSG::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void PSSH::SysHealthServer::handleRequestSystemActionStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZN4PSSH15SysHealthServer30handleRequestSystemActionStatsERKN4PSSG33MessageSHRequestSystemActionStatsEU13block_pointerFvRKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERNS1_7MessageEE_block_invoke;
  v5[3] = &unk_279A49498;
  v5[4] = a3;
  PSSH::SysProcessMonitor::getSystemActionStatistics(v4, &v6, v5);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_25EAF3090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4PSSH15SysHealthServer30handleRequestSystemActionStatsERKN4PSSG33MessageSHRequestSystemActionStatsEU13block_pointerFvRKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERNS1_7MessageEE_block_invoke(uint64_t a1, __int128 *a2, uint64_t a3, int a4)
{
  v16[62] = *MEMORY[0x277D85DE8];
  PSSG::MessageBase::MessageBase(v16, 35, a2, a3, 152 * a4);
  v16[0] = &unk_2870BBA08;
  v6 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = a2;
    if (*(a2 + 23) < 0)
    {
      v7 = *a2;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Report System Action statistics");
    if (v11 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136315394;
    v13 = v7;
    v14 = 2080;
    v15 = v8;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEBUG, "%s <-- %s", buf, 0x16u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(*(a1 + 32) + 16))();
  PSSG::MessageBase::~MessageBase(v16);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_25EAF320C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  PSSG::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void PSSH::SysHealthServer::handleRequestProcessMonitorEventLog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZN4PSSH15SysHealthServer35handleRequestProcessMonitorEventLogERKN4PSSG38MessageSHRequestProcessMonitorEventLogEU13block_pointerFvRKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERNS1_7MessageEE_block_invoke;
  v5[3] = &unk_279A494C0;
  v5[4] = a3;
  PSSH::SysProcessMonitor::getProcessMonitorEventLog(v4, &v6, v5);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_25EAF3304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4PSSH15SysHealthServer35handleRequestProcessMonitorEventLogERKN4PSSG38MessageSHRequestProcessMonitorEventLogEU13block_pointerFvRKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERNS1_7MessageEE_block_invoke(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v15[62] = *MEMORY[0x277D85DE8];
  PSSG::MessageBase::MessageBase(v15, 36, a2, a3, 4800);
  v15[0] = &unk_2870BBA50;
  v5 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = a2;
    if (*(a2 + 23) < 0)
    {
      v6 = *a2;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Report Process Monitor event log");
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315394;
    v12 = v6;
    v13 = 2080;
    v14 = v7;
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEBUG, "%s <-- %s", buf, 0x16u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(*(a1 + 32) + 16))();
  PSSG::MessageBase::~MessageBase(v15);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_25EAF3478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  PSSG::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void PSSH::SysHealthServer::handleCollectDPTailspin(PSSH::SysHealthServer *this, const PSSG::MessageCollectDPTailspin *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v22, "polarisd was asked to collect a DP tailspin on behalf of ");
  v4 = *(a2 + 39);
  if (v4 >= 0)
  {
    v5 = a2 + 16;
  }

  else
  {
    v5 = *(a2 + 2);
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 39);
  }

  else
  {
    v6 = *(a2 + 3);
  }

  v7 = std::string::append(&v22, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v23, ". Received reason: ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = *(a2 + 7);
  if (*(v11 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(v11 + 16), *(v11 + 24));
  }

  else
  {
    v21 = *(v11 + 16);
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v21;
  }

  else
  {
    v12 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v24, v12, size);
  v15 = v14->__r_.__value_.__r.__words[0];
  v16 = v14->__r_.__value_.__l.__size_;
  v25[0] = v14->__r_.__value_.__r.__words[2];
  *(v25 + 3) = *(&v14->__r_.__value_.__r.__words[2] + 3);
  v17 = SHIBYTE(v14->__r_.__value_.__r.__words[2]);
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v18 = *(this + 3);
  if (!v18)
  {
    goto LABEL_29;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN4PSSH15SysHealthServer23handleCollectDPTailspinERKN4PSSG24MessageCollectDPTailspinE_block_invoke;
  block[3] = &__block_descriptor_tmp_11_1;
  if (v17 < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v15, v16);
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = v15;
    __p.__r_.__value_.__l.__size_ = v16;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = v25[0];
    *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v25 + 3);
    *(&__p.__r_.__value_.__s + 23) = v17;
  }

  dispatch_async(v18, block);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_29:
    if ((v17 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_30;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v17 < 0)
  {
LABEL_30:
    operator delete(v15);
  }
}

void ___ZN4PSSH15SysHealthServer23handleCollectDPTailspinERKN4PSSG24MessageCollectDPTailspinE_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(a1 + 55) >= 0)
  {
    v4 = a1 + 32;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  if ((PSUtilitiesDiagnosticPipelineRequestTailspin(1, v4) & 1) == 0)
  {
    v5 = __PSSysHealthLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 55) >= 0)
      {
        v6 = v3;
      }

      else
      {
        v6 = *(a1 + 32);
      }

      v8 = 136315138;
      v9 = v6;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "Could not produce a Diagnostic Pipeline tailspin for %s.", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void PSSG::MessageSHReportProcessMonitorStats::~MessageSHReportProcessMonitorStats(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageSHReportSystemActionStats::~MessageSHReportSystemActionStats(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageSHReportProcessMonitorEventLog::~MessageSHReportProcessMonitorEventLog(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void ps_syshealth_create_server(uint64_t a1)
{
  serverComms = a1;
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  pssh_global_queue = dispatch_queue_create("PSSH-dispatch", v1);
  operator new();
}

uint64_t __ps_syshealth_create_server_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, const UInt8 *a4)
{
  Mutable = CFDataCreateMutable(0, 0);
  v7 = *(a4 + 23);
  if (v7 < 0)
  {
    v8 = a4;
    a4 = *a4;
    v7 = *(v8 + 1);
  }

  CFDataAppendBytes(Mutable, a4, v7);
  v9 = *(*(a1 + 32) + 16);

  return v9();
}

uint64_t ps_syshealth_release_server()
{
  dispatch_release(pssh_global_queue);
  PSSG::ServerComms::registerSysHealthServer(serverComms, 0);
  result = healthServer;
  if (healthServer)
  {
    PSSH::SysHealthServer::~SysHealthServer(healthServer);
    result = MEMORY[0x25F8C7C50]();
  }

  healthServer = 0;
  return result;
}

void ps_telemetry_setup_filter_buffer()
{
  if (qword_27FD132F8 != -1)
  {
    ps_telemetry_setup_filter_buffer_cold_1();
  }
}

uint64_t __ps_telemetry_setup_filter_buffer_block_invoke()
{
  filterBufferReader = ps_buffer_create_serial_data_reader();
  result = ps_buffer_get_serial_data_read_buffer();
  _MergedGlobals = result;
  return result;
}

uint64_t ps_telemetry_release_filter_buffer()
{
  result = filterBufferReader;
  if (filterBufferReader)
  {
    return ps_buffer_destroy_serial_data_reader();
  }

  return result;
}

void ps_telemetry_init_daemon()
{
  context[12305] = ps_buffer_create_serial_data_writer();
  context[0] = ps_buffer_get_serial_data_write_buffer();
  atomic_store(0, context[0]);
  context[12306] = ps_buffer_create_serial_data_writer();
  v0 = ps_buffer_get_serial_data_write_buffer();
  context[12297] = v0;
  atomic_store(0, v0);
  v1 = 0x300Au;
  context[v1] = ps_buffer_create_group_writer_with_options();
  MEMORY[0x25F8C8900]();
  MEMORY[0x25F8C8C70](context[v1]);
  v2 = context[v1];
  v3 = ps_buffer_get_write_buffers();
  context[12300] = v3;
  v4 = *(v3 + 8);
  v5 = 0x300Bu;
  context[v5] = v4;
  v6 = 0x300Du;
  v7 = context[v6] + 1;
  context[v6] = v7;
  *v4 = v7;
  *(context[v5] + 8) = 0;
  context[12302] = 0;
  memset(&v13, 0, 32);
  v13.compare = compare_timestamps;
  context[12296] = CFBinaryHeapCreate(0, 4096, &v13, 0);
  v8 = ps_gsm_map_shared();
  context[12307] = v8;
  context[12308] = ps_gsm_create_source(v8, 1, "polaris.telemetry");
  serial_dispatch_queue = ps_util_create_serial_dispatch_queue("polaris.telemetry.daemon");
  context[12304] = serial_dispatch_queue;
  v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, serial_dispatch_queue);
  v11 = 0x300Fu;
  context[v11] = v10;
  dispatch_source_set_timer(v10, 0, 0x5F5E100uLL, 0x989680uLL);
  dispatch_source_set_event_handler_f(context[v11], process_thread_buffers);
  v12 = 0x3015u;
  context[v12] = xpc_connection_create_mach_service("com.apple.polaris.telemetry", 0, 1uLL);
  context[12310] = dispatch_queue_create("telemetry.enablementQueue", 0);
  context[12311] = CFSetCreateMutable(0, 0, 0);
  xpc_connection_set_event_handler(context[v12], &__block_literal_global_26);
  xpc_connection_activate(context[v12]);
}

void ps_telemetry_destroy_daemon()
{
  if (context[0] && (v0 = atomic_load(context[0]), (v0 & 1) != 0))
  {
    v1 = __PSTelemetryLogSharedInstance();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_ERROR, "Daemon destroyed while telemetry was enabled", v3, 2u);
    }
  }

  else
  {
    if (qword_27FD2B378)
    {
      dispatch_source_cancel(qword_27FD2B378);
      dispatch_resume(qword_27FD2B378);
      dispatch_release(qword_27FD2B378);
      qword_27FD2B378 = 0;
      dispatch_release(qword_27FD2B380);
    }

    if (qword_27FD2B340)
    {
      CFRelease(qword_27FD2B340);
      qword_27FD2B340 = 0;
    }

    if (qword_27FD2B350)
    {
      ps_buffer_delete_write_buffer();
      qword_27FD2B350 = 0;
    }

    if (qword_27FD2B390)
    {
      ps_buffer_destroy_serial_data_writer();
      qword_27FD2B390 = 0;
    }

    if (qword_27FD2B388)
    {
      ps_buffer_destroy_serial_data_writer();
      qword_27FD2B388 = 0;
    }

    if (qword_27FD2B3A8)
    {
      xpc_release(qword_27FD2B3A8);
      qword_27FD2B3A8 = 0;
    }

    if (qword_27FD2B3B0)
    {
      dispatch_release(qword_27FD2B3B0);
      qword_27FD2B3B0 = 0;
    }

    if (qword_27FD2B3B8)
    {
      CFRelease(qword_27FD2B3B8);
      qword_27FD2B3B8 = 0;
    }

    if (qword_27FD2B3A0)
    {
      ps_gsm_remove_source(qword_27FD2B398, qword_27FD2B3A0);
    }

    v2 = qword_27FD2B398;
    if (qword_27FD2B398)
    {

      ps_gsm_remove_gsm(v2);
    }
  }
}

void ps_telemetry_send_session_event(const char *a1, uint64_t a2, const void *a3, size_t a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_data(v8, PSTelemetrySessionEventKey[0], a3, a4);
  xpc_dictionary_set_uint64(v8, PSTelemetrySessionEventTypeKey[0], a2);
  xpc_dictionary_set_string(v8, PSTelemetrySessionEventSessionNameKey, a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __ps_telemetry_send_session_event_block_invoke;
  block[3] = &__block_descriptor_tmp_26;
  block[4] = v8;
  dispatch_sync(qword_27FD2B3B0, block);
  xpc_release(v8);
}

uint64_t compare_timestamps(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + *(a1 + 16) + 16);
  v3 = *(*(a2 + 8) + *(a2 + 16) + 16);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return -1;
  }
}

unint64_t **process_thread_buffers()
{
  v35 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v32 = 0u;
  v31 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  qword_27FD2B330 = qword_27FD2B338;
  qword_27FD2B338 = v31;
  v0 = atomic_load(qword_27FD2B348);
  byte_27FD2B30A = v0;
  if (v0)
  {
    v1 = 0;
    v2 = 0x3001u;
    do
    {
      v3 = *(&context[12289] + v1 + 3);
      v4 = atomic_load((context[12297] + 34 * v1 + 1));
      if (v3 < v4)
      {
        *(&context[12289] + v1 + 3) = v4;
        v5 = context[v2];
        do
        {
          v6 = &context[3 * v5];
          snprintf(__str, 0x1DuLL, "group.pls.local.%d.", v1);
          v6[1] = ps_buffer_create_serial_data_reader();
          buffer = ps_buffer_get_serial_data_read_buffer();
          v8 = context[v2];
          v6[2] = buffer;
          v6[3] = 0;
          v5 = v8 + 1;
          LOWORD(context[v2]) = v5;
          ++v3;
        }

        while (v4 != v3);
      }

      ++v1;
    }

    while (v1 < byte_27FD2B30A);
  }

  if (word_27FD2B308)
  {
    v9 = 0;
    v10 = &unk_27FD13308;
    do
    {
      test_and_add_to_heap(v10);
      ++v9;
      v10 += 24;
    }

    while (v9 < word_27FD2B308);
  }

  if (CFBinaryHeapGetCount(qword_27FD2B340) >= 1)
  {
    do
    {
      Minimum = CFBinaryHeapGetMinimum(qword_27FD2B340);
      *&v32 = v32 + 1;
      v12 = *(Minimum + 1) + *(Minimum + 2);
      v13 = qword_27FD2B370;
      v14 = ps_telemetry_padding_for_alignment(qword_27FD2B370, 8) + 48;
      v15 = ps_telemetry_padding_for_alignment(v14 + v13, *(v12 + 56)) + v14 + *(v12 + 48);
      if ((qword_27FD2B370 + v15) >= 0x1FFF1)
      {
        swap_global_buffer_and_notify();
        v16 = ps_telemetry_padding_for_alignment(0, 8) + 48;
        v15 = ps_telemetry_padding_for_alignment(v16, *(v12 + 56)) + v16 + *(v12 + 48);
      }

      ++*(qword_27FD2B358 + 8);
      qword_27FD2B370 += ps_telemetry_padding_for_alignment(qword_27FD2B370, 8);
      v17 = (qword_27FD2B358 + qword_27FD2B370);
      v18 = *(v12 + 16);
      v19 = *(v12 + 48);
      v17[2] = *(v12 + 32);
      v17[3] = v19;
      v17[1] = v18;
      if (*(v12 + 16) < qword_27FD2B330)
      {
        *(v17 + 2) = qword_27FD2B330;
      }

      qword_27FD2B370 += 48;
      v20 = qword_27FD2B370 + ps_telemetry_padding_for_alignment(qword_27FD2B370, *(v12 + 56));
      qword_27FD2B370 = v20;
      v21 = *(Minimum + 2);
      if (*(v12 + 48) >= (32704 - v21))
      {
        v22 = 32704 - v21;
      }

      else
      {
        v22 = *(v12 + 48);
      }

      memcpy((qword_27FD2B358 + v20 + 16), (*(Minimum + 1) + v21 + 64), v22);
      v23 = qword_27FD2B370 + v22;
      qword_27FD2B370 += v22;
      v24 = *(v12 + 48);
      v25 = v24 >= v22;
      v26 = v24 - v22;
      if (v26 != 0 && v25)
      {
        memcpy((qword_27FD2B358 + v23 + 16), (*(Minimum + 1) + 16), v26);
        qword_27FD2B370 += v26;
      }

      *(&v32 + 1) += v15;
      CFBinaryHeapRemoveMinimumValue(qword_27FD2B340);
      v27 = ps_telemetry_total_size(*(Minimum + 2), *(*(Minimum + 1) + *(Minimum + 2) + 48));
      atomic_fetch_add(*(Minimum + 1), -v27);
      *(Minimum + 2) = (*(Minimum + 2) + v27) % 0x7FF0uLL;
      test_and_add_to_heap(Minimum);
    }

    while (CFBinaryHeapGetCount(qword_27FD2B340) > 0);
  }

  v28 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  *&v33 = qword_27FD2B370;
  *(&v33 + 1) = v28;
  if (qword_27FD2B370)
  {
    swap_global_buffer_and_notify();
  }

  result = ps_telemetry_emit_event_internal(6, &v31, 0x28uLL, 8);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void test_and_add_to_heap(void *value)
{
  if (atomic_load(*(value + 1)))
  {
    v2 = atomic_load((*(value + 1) + 8));
    if (v2)
    {
      *(value + 2) = 0;
      atomic_store(0, (*(value + 1) + 8));
    }

    if (*(*(value + 1) + *(value + 2) + 16) <= qword_27FD2B338)
    {
      CFBinaryHeapAddValue(qword_27FD2B340, value);
    }
  }
}

uint64_t swap_global_buffer_and_notify()
{
  resource_view_index = ps_buffer_get_resource_view_index();
  v2 = qword_27FD2B368;
  MEMORY[0x25F8C8E80](qword_27FD2B350, resource_view_index, &v2);
  ps_buffer_release_write_buffers();
  ps_gsm_notify(qword_27FD2B398, qword_27FD2B3A0, qword_27FD2B368 & 0xFFFFFFFFFFFFLL);
  result = ps_buffer_get_write_buffers();
  qword_27FD2B358 = *(result + 8);
  qword_27FD2B360 = result;
  *qword_27FD2B358 = ++qword_27FD2B368;
  *(qword_27FD2B358 + 8) = 0;
  qword_27FD2B370 = 0;
  return result;
}

void __create_enablement_xpc_service_block_invoke(int a1, xpc_connection_t connection)
{
  v20 = *MEMORY[0x277D85DE8];
  if (connection == MEMORY[0x277D863F8])
  {
    v7 = __PSTelemetryLogSharedInstance();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v8 = "Daemon received XPC_ERROR_CONNECTION_INVALID";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 2;
LABEL_13:
    _os_log_impl(&dword_25EA3A000, v9, v10, v8, buf, v11);
    goto LABEL_14;
  }

  pid = xpc_connection_get_pid(connection);
  v4 = xpc_connection_copy_entitlement_value();
  if (!v4 || (v5 = v4, MEMORY[0x25F8C9F10]() != MEMORY[0x277D86448]) || !xpc_BOOL_get_value(v5))
  {
    v6 = __PSTelemetryLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v17 = connection;
      v18 = 1024;
      v19 = pid;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEFAULT, "connection %p (pid %d) does not have the correct entitlements to access Telemetry Server", buf, 0x12u);
    }

    if ((ps_util_is_internal_build() & 1) == 0)
    {
      v12 = __PSTelemetryLogSharedInstance();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 134218240;
      v17 = connection;
      v18 = 1024;
      v19 = pid;
      v8 = "Rejecting connection %p (pid %d)";
      v9 = v12;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 18;
      goto LABEL_13;
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 0x40000000;
  v14[2] = __create_enablement_xpc_service_block_invoke_14;
  v14[3] = &__block_descriptor_tmp_16_0;
  v14[4] = connection;
  v15 = pid;
  xpc_connection_set_event_handler(connection, v14);
  xpc_connection_set_target_queue(connection, qword_27FD2B3B0);
  xpc_connection_activate(connection);
LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
}

void __create_enablement_xpc_service_block_invoke_14(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a2 != MEMORY[0x277D863F8])
  {
    if (MEMORY[0x25F8C9F10](a2) != MEMORY[0x277D86468])
    {
      v4 = __PSTelemetryLogSharedInstance();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 40);
        v23 = 134218498;
        v24 = v5;
        v25 = 1024;
        v26 = v6;
        v27 = 2080;
        v28 = MEMORY[0x25F8C9E20](a2);
        _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_ERROR, "connection %p (pid %d) got unexpected message %s", &v23, 0x1Cu);
      }

      goto LABEL_23;
    }

    if (xpc_dictionary_get_string(a2, PSTelemetrySessionEventTypeKey[0]))
    {
      CFSetApplyFunction(qword_27FD2B3B8, MEMORY[0x277D864E0], a2);
    }

    v10 = xpc_dictionary_get_BOOL(a2, "telemetryWanted");
    v11 = __PSTelemetryLogSharedInstance();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        v23 = 134218240;
        v24 = v13;
        v25 = 1024;
        v26 = v14;
        _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_DEFAULT, "connection %p (pid %d) wants telemetry", &v23, 0x12u);
      }

      v15 = *(a1 + 32);
      Count = CFSetGetCount(qword_27FD2B3B8);
      v17 = __PSTelemetryLogSharedInstance();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (Count)
      {
        if (v18)
        {
          v19 = CFSetGetCount(qword_27FD2B3B8);
          v23 = 134217984;
          v24 = v19;
          _os_log_impl(&dword_25EA3A000, v17, OS_LOG_TYPE_DEFAULT, "Telemetry already active with count: %ld", &v23, 0xCu);
        }
      }

      else
      {
        if (v18)
        {
          LOWORD(v23) = 0;
          _os_log_impl(&dword_25EA3A000, v17, OS_LOG_TYPE_DEFAULT, "Enabling telemetry", &v23, 2u);
        }

        atomic_store(1u, context[0]);
        dispatch_resume(context[12303]);
      }

      CFSetAddValue(qword_27FD2B3B8, v15);
      goto LABEL_23;
    }

    if (v12)
    {
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v23 = 134218240;
      v24 = v20;
      v25 = 1024;
      v26 = v21;
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_DEFAULT, "connection %p (pid %d) no longer wants telemetry", &v23, 0x12u);
    }

LABEL_8:
    connection_no_longer_wants_telemetry(*(a1 + 32));
    goto LABEL_23;
  }

  v7 = __PSTelemetryLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v23 = 134218240;
    v24 = v8;
    v25 = 1024;
    v26 = v9;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "connection %p (pid %d) invalidated", &v23, 0x12u);
  }

  if (CFSetContainsValue(qword_27FD2B3B8, *(a1 + 32)))
  {
    goto LABEL_8;
  }

LABEL_23:
  v22 = *MEMORY[0x277D85DE8];
}

void connection_no_longer_wants_telemetry(void *value)
{
  v8 = *MEMORY[0x277D85DE8];
  if (CFSetContainsValue(qword_27FD2B3B8, value))
  {
    CFSetRemoveValue(qword_27FD2B3B8, value);
    if (!CFSetGetCount(qword_27FD2B3B8))
    {
      v2 = __PSTelemetryLogSharedInstance();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v6) = 0;
        _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_DEFAULT, "No more active clients; disabling telemetry", &v6, 2u);
      }

      atomic_store(0, context[0]);
      dispatch_suspend(context[12303]);
      dispatch_async_f(context[12304], 0, process_thread_buffers);
    }
  }

  else
  {
    v3 = MEMORY[0x25F8C9E20](value);
    v4 = __PSTelemetryLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = v3;
      _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_ERROR, "Call to connection_no_longer_wants_telemetry for a connection not present in connectionsWantingTelemetry: %s", &v6, 0xCu);
    }

    free(v3);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __PSTelemetryLogSharedInstance()
{
  if (__PSTelemetryLogSharedInstance_onceToken != -1)
  {
    __PSTelemetryLogSharedInstance_cold_1();
  }

  return sharedInstance_4;
}

void ps_telemetry_init_reader()
{
  v18 = *MEMORY[0x277D85DE8];
  ps_telemetry_setup_filter_buffer();
  context_0[0] = ps_buffer_create_group_reader();
  qword_27FD2B3D8 = 0;
  qword_27FD2B4F0 = ps_buffer_create_serial_data_reader();
  qword_27FD2B3E0 = ps_buffer_get_serial_data_read_buffer();
  v0 = getpid();
  if (!proc_name(v0, xmmword_27FD2B658, 0x80u))
  {
    strcpy(xmmword_27FD2B658, "Unknown Process");
  }

  error_out = 0;
  v1 = getpid();
  if (snprintf(xmmword_27FD2B658, 0x80uLL, "%s-%d", xmmword_27FD2B658, v1) >= 0x80)
  {
    v2 = __PSTelemetryLogSharedInstance();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = xmmword_27FD2B658;
      v16 = 1024;
      v17 = getpid();
      _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_ERROR, "Context Session Name for telemetry reader %s client pid %d has beentruncated", buf, 0x12u);
    }
  }

  qword_27FD2B650 = xpc_session_create_mach_service("com.apple.polaris.systemgraph_v2", 0, XPC_SESSION_CREATE_NONE, &error_out);
  if (error_out)
  {
    ps_telemetry_init_reader_cold_1(buf, error_out);
  }

  v3 = __PSTelemetryLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = xmmword_27FD2B658;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "Telemetry client %s was able to establish connection withPS_POLARISD_SYSGRAPH_XPC_SERVICE", buf, 0xCu);
  }

  qword_27FD2B608 = ps_gsm_map_shared();
  ps_gsm_assign_system_graph_session(qword_27FD2B608, qword_27FD2B650);
  v13 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = getpid();
  populateTelemetryReaderInfo(v4, v5, xmmword_27FD2B658, v6, "polaris.telemetry", "polaris.telemetry");
  v7 = xpc_session_send_message_with_reply_sync(qword_27FD2B650, v4, &v13);
  if (!v7 && v13)
  {
    ps_telemetry_init_reader_cold_3(buf, v13);
  }

  value = xpc_dictionary_get_value(v7, "polaris.telemetry");
  if (!value)
  {
    ps_telemetry_init_reader_cold_2(buf);
  }

  uint64 = xpc_dictionary_get_uint64(value, "gst_idx");
  v10 = __PSTelemetryLogSharedInstance();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v15 = uint64;
    _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEBUG, "Received a reply for reserving GST, gstIndex = %llu", buf, 0xCu);
  }

  qword_27FD2B610 = ps_gsm_get_gst(qword_27FD2B608, uint64);
  xpc_release(v5);
  xpc_release(v4);
  qword_27FD2B620 = dispatch_queue_create("com.apple.polaris.telemetry", 0);
  qword_27FD2B628 = xpc_connection_create_mach_service("com.apple.polaris.telemetry", qword_27FD2B620, 0);
  xpc_connection_set_event_handler(qword_27FD2B628, &__block_literal_global_42);
  xpc_connection_activate(qword_27FD2B628);
  byte_27FD2B4E8 = 1;
  v11 = *MEMORY[0x277D85DE8];
}

const char *ps_telemetry_get_string(unsigned int a1, unsigned int a2)
{
  if (a1 == 0xFFFF)
  {
    return "Unavailable";
  }

  buffer = context_0[a2 + 3];
  if (!buffer)
  {
    v4 = &context_0[a2];
    v4[37] = ps_buffer_create_serial_data_reader();
    buffer = ps_buffer_get_serial_data_read_buffer();
    v4[3] = buffer;
  }

  return (buffer + 130 * a1 + 4);
}

void ps_telemetry_deinit_reader()
{
  if (context_0[0])
  {
    ps_buffer_delete_read_buffer();
  }

  if (qword_27FD2B4F0)
  {
    ps_buffer_destroy_serial_data_reader();
  }

  for (i = 0; i != 32; ++i)
  {
    if (context_0[i + 37])
    {
      ps_buffer_destroy_serial_data_reader();
    }
  }

  ps_telemetry_release_filter_buffer();
  xpc_release(qword_27FD2B628);
  dispatch_release(qword_27FD2B620);
  xpc_session_cancel(qword_27FD2B650);
  v1 = qword_27FD2B650;

  xpc_release(v1);
}

uint64_t ps_telemetry_start_reader(NSObject *a1, const void *a2)
{
  if (a1)
  {
    v3 = a1;
    dispatch_retain(a1);
  }

  else
  {
    v3 = dispatch_queue_create("polaris.telemetry", 0);
  }

  qword_27FD2B5F8 = v3;
  qword_27FD2B600 = _Block_copy(a2);
  v4 = _Block_copy(&__block_literal_global_28);
  result = pthread_create(&qword_27FD2B618, 0, workloop, v4);
  if (result)
  {
    ps_telemetry_start_reader_cold_1(&v6);
  }

  return result;
}

void __ps_telemetry_start_reader_block_invoke(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2 <= a3)
  {
    v4 = a2;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      qword_27FD2B3D8 = v4;
      buffers_with_frameid = ps_buffer_get_read_buffers_with_frameid();
      v10 = buffers_with_frameid == 0;
      if (buffers_with_frameid)
      {
        v11 = *(buffers_with_frameid + 8);
        if (qword_27FD2B3D8 != *v11)
        {
          __ps_telemetry_start_reader_block_invoke_cold_1();
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __process_buffers_in_range_reader_block_invoke;
        block[3] = &__block_descriptor_tmp_37;
        v20 = v5;
        v16 = 8;
        v15 = xmmword_25EB78600;
        block[4] = v8;
        v17 = v6;
        v18 = v7;
        v19 = v11;
        dispatch_async_and_wait(qword_27FD2B5F8, block);
        ps_buffer_release_read_buffers();
      }

      else
      {
        v12 = __PSTelemetryLogSharedInstance();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v22 = v4;
          _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_ERROR, "Dropped global telemetry buffer %llu", buf, 0xCu);
        }

        v7 = v4;
        if (!v5)
        {
          v8 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          v7 = v4;
          v6 = v4;
        }
      }

      ++v4;
      v5 = v10;
    }

    while (v4 <= a3);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t workloop(void (**a1)(void, void))
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = pthread_setname_np("Telemetry workloop");
  if (v2)
  {
    v3 = v2;
    v4 = __PSTelemetryLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v12 = 136315394;
      *&v12[4] = "Telemetry workloop";
      v13 = 1024;
      v14 = v3;
      _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_ERROR, "pthread_setname_np failed with name %s and return code %d", v12, 0x12u);
    }
  }

  *v12 = 0;
  v5 = 0x26906FC00020C49BLL;
  if (ps_gsm_wait_gst(qword_27FD2B608, qword_27FD2B610, v12, v5) != 1)
  {
    v6 = 1;
    do
    {
      if (v6)
      {
        v7 = *v12 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = qword_27FD2B3D8 + 1;
      }

      a1[2](a1, v7);
      *v12 = 0;
      v8 = 0x26906FC00020C49BLL;
      v9 = ps_gsm_wait_gst(qword_27FD2B608, qword_27FD2B610, v12, v8);
      v6 = 0;
    }

    while (v9 != 1);
  }

  _Block_release(a1);
  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

void ps_telemetry_stop_reader()
{
  remove_remote_gst();
  pthread_join(qword_27FD2B618, 0);
  dispatch_release(qword_27FD2B5F8);
  v0 = qword_27FD2B600;

  _Block_release(v0);
}

void remove_remote_gst()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  v1 = getpid();
  populateGraphSetInfo(v0, 2uLL, xmmword_27FD2B658, v1);
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "graph_name", "polaris.telemetry");
  gst_index = ps_gsm_get_gst_index(qword_27FD2B610);
  xpc_dictionary_set_uint64(v2, "gst_idx", gst_index);
  appendGraphInfotoGraphSetInfo(v2, v0);
  v4 = xpc_session_send_message(qword_27FD2B650, v0);
  if (v4)
  {
    remove_remote_gst_cold_1(&v5, v4);
  }

  xpc_release(v2);

  xpc_release(v0);
}

void ps_telemetry_enable()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v0, "telemetryWanted", 1);
  xpc_connection_send_message(qword_27FD2B628, v0);

  xpc_release(v0);
}

void ps_telemetry_disable()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v0, "telemetryWanted", 0);
  xpc_connection_send_message(qword_27FD2B628, v0);

  xpc_release(v0);
}

uint64_t __process_buffers_in_range_reader_block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 88) == 1)
  {
    result = (*(qword_27FD2B600 + 16))(qword_27FD2B600, result + 32, result + 64);
  }

  if (*(*(v1 + 80) + 8))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = ps_telemetry_padding_for_alignment(v3, 8);
      v5 = *(v1 + 80) + v4 + v3;
      v6 = ps_telemetry_padding_for_alignment(v4 + v3 + 48, *(v5 + 56)) + v4 + v3 + 48;
      result = (*(qword_27FD2B600 + 16))(qword_27FD2B600, v5 + 16, *(v1 + 80) + v6 + 16);
      v3 = *(v5 + 48) + v6;
      ++v2;
    }

    while (*(*(v1 + 80) + 8) > v2);
  }

  return result;
}

void __setup_xpc_connection_block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2 == MEMORY[0x277D863F8])
  {
    __setup_xpc_connection_block_invoke_cold_1();
  }

  if (MEMORY[0x25F8C9F10](a2) == MEMORY[0x277D86468])
  {
    value = xpc_dictionary_get_value(a2, PSTelemetrySessionEventTypeKey[0]);
    if (value)
    {
      v5 = xpc_uint64_get_value(value);
      if (qword_27FD2B630)
      {
        v6 = v5;
        v7 = xpc_dictionary_get_value(a2, PSTelemetrySessionEventKey[0]);
        v8 = xpc_dictionary_get_value(a2, PSTelemetrySessionEventSessionNameKey);
        xpc_retain(v7);
        xpc_retain(v8);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __setup_xpc_connection_block_invoke_44;
        block[3] = &__block_descriptor_tmp_45;
        block[4] = v8;
        block[5] = v7;
        block[6] = v6;
        dispatch_async(qword_27FD2B630, block);
      }
    }
  }

  else
  {
    v3 = __PSTelemetryLogSharedInstance();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v12 = qword_27FD2B628;
      v13 = 2080;
      v14 = MEMORY[0x25F8C9E20](a2);
      _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_ERROR, "connection %p got unexpected message %s", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __setup_xpc_connection_block_invoke_44(uint64_t a1)
{
  string_ptr = xpc_string_get_string_ptr(*(a1 + 32));
  length = xpc_data_get_length(*(a1 + 40));
  bytes_ptr = xpc_data_get_bytes_ptr(*(a1 + 40));
  (*(qword_27FD2B638 + 16))(qword_27FD2B638, string_ptr, *(a1 + 48), bytes_ptr, length);
  xpc_release(*(a1 + 40));
  v5 = *(a1 + 32);

  xpc_release(v5);
}

char *OUTLINED_FUNCTION_3_10(void *a1, xpc_rich_error_t error)
{
  *a1 = 0;

  return xpc_rich_error_copy_description(error);
}

void OUTLINED_FUNCTION_4_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x1Cu);
}

uint64_t ps_telemetry_total_size(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 48 + a1) % 0x7FF0uLL;
  v3 = v2 - 32705 + (-v2 & 7);
  v4 = 32752 - v2;
  if (v3 >= 0xFFFFFFFFFFFF800FLL)
  {
    v4 = -((a2 + 48 + a1) % 0x7FF0uLL) & 7;
  }

  return v4 + a2 + 48;
}

void ps_telemetry_init_process()
{
  if (ps_telemetry_init_process_onceToken != -1)
  {
    ps_telemetry_init_process_cold_1();
  }
}

void __ps_telemetry_init_process_block_invoke()
{
  v15 = *MEMORY[0x277D85DE8];
  dword_27FD2EE80 = getpid();
  ps_telemetry_setup_filter_buffer();
  proc_name(dword_27FD2EE80, setup_clientid_and_perProcess_buffers_name, 0x20u);
  qword_27FD2EEA0 = ps_buffer_create_serial_data_reader();
  buffer = ps_buffer_get_serial_data_read_buffer();
  v1 = atomic_load(buffer);
  v2 = buffer + 1;
  if (v1)
  {
    v3 = 0;
    if (!strncmp(setup_clientid_and_perProcess_buffers_name, (buffer + 3), 0x20uLL))
    {
LABEL_7:
      ps_telemetry_writer_context[0] = v2 + 34 * v3;
      qword_27FD2EE98 = ps_buffer_create_serial_data_reader();
      qword_27FD2DE78 = ps_buffer_get_serial_data_read_buffer();
      goto LABEL_9;
    }

    v4 = (buffer + 37);
    while (v1 - 1 != v3)
    {
      v5 = strncmp(setup_clientid_and_perProcess_buffers_name, v4, 0x20uLL);
      v4 += 34;
      ++v3;
      if (!v5)
      {
        if (v3 >= v1)
        {
          break;
        }

        goto LABEL_7;
      }
    }
  }

  add = atomic_fetch_add(buffer, 1u);
  ps_telemetry_writer_context[0] = v2 + 34 * add;
  qword_27FD2EE90 = ps_buffer_create_serial_data_writer();
  qword_27FD2DE78 = ps_buffer_get_serial_data_write_buffer();
  atomic_store(0, qword_27FD2DE78);
  strlcpy((ps_telemetry_writer_context[0] + 2), setup_clientid_and_perProcess_buffers_name, 0x20uLL);
  v7 = ps_telemetry_writer_context[0];
  atomic_store(add, (ps_telemetry_writer_context[0] + 1));
  atomic_store(0, v7);
LABEL_9:
  qword_27FD2EE88 = dispatch_queue_create("polaris.telemetry.bufferAllocation", 0);
  v8 = atomic_load(ps_telemetry_writer_context[0]);
  if (v8)
  {
    v9 = 0;
    v10 = &qword_27FD2DE88;
    do
    {
      v11 = atomic_load((ps_telemetry_writer_context[0] + 1));
      snprintf(__str, 0x1DuLL, "group.pls.local.%d.", v11);
      serial_data_reader = ps_buffer_create_serial_data_reader();
      *(v10 - 1) = ps_buffer_get_serial_data_read_buffer();
      *v10 = 0;
      v10[2] = serial_data_reader;
      ++v9;
      v10 += 4;
    }

    while (v8 != v9);
  }

  dispatch_async(qword_27FD2EE88, &__block_literal_global_11_0);
  atomic_store(1u, byte_27FD2EE84);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t ps_telemetry_acquire_thread_buffer(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __ps_telemetry_acquire_thread_buffer_block_invoke;
  v4[3] = &unk_279A49650;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_async_and_wait(qword_27FD2EE88, v4);
  dispatch_async(qword_27FD2EE88, &__block_literal_global_11_0);
  v1 = v6[3];
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

void __ps_telemetry_acquire_thread_buffer_block_invoke(uint64_t a1)
{
  *&v19[5] = *MEMORY[0x277D85DE8];
  v2 = atomic_load(ps_telemetry_writer_context[0]);
  if (v2)
  {
    v3 = v2 + 1;
    v4 = &ps_telemetry_writer_context[4 * v2 - 2];
    while (v4[1] || atomic_load(*v4))
    {
      --v3;
      v4 -= 4;
      if (v3 <= 1)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (!v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = allocate_thread_buffer();
    v6 = *(*(*(a1 + 32) + 8) + 24);
    if (!v6)
    {
      v16 = __PSTelemetryLogSharedInstance();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v17 = *(a1 + 40);
      v18 = 134217984;
      *v19 = v17;
      v11 = "unable to acquire buffer for thread %llu";
      v12 = v16;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 12;
      goto LABEL_12;
    }
  }

  if (atomic_load(*v6))
  {
    __ps_telemetry_acquire_thread_buffer_block_invoke_cold_1();
  }

  atomic_store(1u, (**(*(*(a1 + 32) + 8) + 24) + 8));
  *(*(*(*(a1 + 32) + 8) + 24) + 8) = *(a1 + 40);
  v8 = __PSTelemetryLogSharedInstance();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = *(**(*(*(a1 + 32) + 8) + 24) + 9);
    v18 = 67109376;
    v19[0] = v10;
    LOWORD(v19[1]) = 2048;
    *(&v19[1] + 2) = v9;
    v11 = "acquired buffer %d for thread %llu";
    v12 = v8;
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = 18;
LABEL_12:
    _os_log_impl(&dword_25EA3A000, v12, v13, v11, &v18, v14);
  }

LABEL_13:
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t *allocate_thread_buffer()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = atomic_load(ps_telemetry_writer_context[0]);
  if (v0 == 128)
  {
    v1 = 0;
  }

  else
  {
    v2 = atomic_load((ps_telemetry_writer_context[0] + 1));
    snprintf(__str, 0x1DuLL, "group.pls.local.%d.", v2);
    v3 = &ps_telemetry_writer_context[4 * v0];
    v3[4] = ps_buffer_create_serial_data_writer();
    v4 = ps_buffer_get_serial_data_write_buffer();
    v3[2] = v4;
    v1 = v3 + 2;
    *(v4 + 9) = v0;
    atomic_store(0, *v1);
    atomic_store(1u, (*v1 + 8));
    v1[1] = 0;
    atomic_fetch_add(ps_telemetry_writer_context[0], 1u);
    v5 = __PSTelemetryLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v9 = __str;
      v10 = 1024;
      v11 = v0;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEBUG, "allocated local buffer with key: %s id: %d", buf, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v1;
}

void ps_telemetry_release_thread_buffer(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __ps_telemetry_release_thread_buffer_block_invoke;
  block[3] = &__block_descriptor_tmp_4_2;
  block[4] = a1;
  dispatch_async_and_wait(qword_27FD2EE88, block);
}

void __ps_telemetry_release_thread_buffer_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  ps_telemetry_writer_context[4 * *(*(a1 + 32) + 9) + 3] = 0;
  v2 = __PSTelemetryLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 9);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_DEFAULT, "released buffer %d", v5, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __manage_thread_buffer_watermark_block_invoke()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = atomic_load(ps_telemetry_writer_context[0]);
  v1 = __PSTelemetryLogSharedInstance();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v9 = 67109376;
    v10 = v0;
    v11 = 1024;
    v12 = 128;
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_DEBUG, "thread buffer count: %d, max: %d", &v9, 0xEu);
  }

  if (v0)
  {
    if (v0 == 128)
    {
      goto LABEL_23;
    }

    v2 = 0;
    v3 = &qword_27FD2DE88;
    v4 = v0;
    do
    {
      if (!*v3 && !atomic_load(*(v3 - 1)))
      {
        ++v2;
      }

      v3 += 4;
      --v4;
    }

    while (v4);
  }

  else
  {
    v2 = 0;
  }

  v6 = __PSTelemetryLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 67109376;
    v10 = v2;
    v11 = 1024;
    v12 = 4;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEBUG, "free buffer count: %d, watermark: %d", &v9, 0xEu);
  }

  if (v2 <= 3u)
  {
    if (128 - v0 >= (4 - v2))
    {
      LOBYTE(v0) = 4 - v2;
    }

    else
    {
      LOBYTE(v0) = 0x80 - v0;
    }

    v7 = __PSTelemetryLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v0) = v0;
      v9 = 67109120;
      v10 = v0;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEBUG, "will allocate %d to meet watermark", &v9, 8u);
      if (!v0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      LODWORD(v0) = v0;
      if (!v0)
      {
        goto LABEL_23;
      }
    }

    do
    {
      allocate_thread_buffer();
      LODWORD(v0) = v0 - 1;
    }

    while (v0);
  }

LABEL_23:
  v8 = *MEMORY[0x277D85DE8];
}

unint64_t **ps_telemetry_emit_event_internal(uint64_t a1, char *a2, unint64_t a3, uint64_t a4)
{
  if (a3 >= 0x7FC1)
  {
    ps_telemetry_emit_event_internal_cold_1();
  }

  result = ps_telemetry_is_enabled();
  if (result)
  {
    v9 = atomic_load(&ps_telemetry_writer_context[514] + 4);
    if ((v9 & 1) == 0)
    {
      ps_telemetry_init_process();
    }

    v10 = threadState();
    if ((*v10 & 1) == 0)
    {
      ps_telemetry_init_thread();
    }

    result = buffer();
    if (*result)
    {
      v11 = result;
      if (*(v10 + 28))
      {
        v12 = ps_telemetry_total_size(*(v10 + 8), 32);
        v16 = atomic_load(*v11);
        if (v16 + v12 > 0x7FF0)
        {
          result = ps_telemetry_total_size(*(v10 + 8), a3);
          *(v10 + 24) = vadd_s32(*(v10 + 24), (result | 0x100000000));
          return result;
        }

        v24 = 0;
        v22 = *(v10 + 16);
        v17 = *(v10 + 24);
        v18.i64[0] = v17;
        v18.i64[1] = HIDWORD(v17);
        v23 = vextq_s8(v18, v18, 8uLL);
        LOWORD(v24) = *threadNameID(&threadNameID, v13, v14, v15);
        write_all(7, &v22, 0x20uLL, 8, v19);
        *(v10 + 24) = 0;
      }

      v20 = ps_telemetry_total_size(*(v10 + 8), a3);
      v21 = atomic_load(*v11);
      if (v21 + v20 >= 0x7FF1)
      {
        *(v10 + 24) = v20;
        *(v10 + 28) = 1;
        result = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        *(v10 + 16) = result;
      }

      else
      {

        return write_all(a1, a2, a3, a4, v20);
      }
    }
  }

  return result;
}

_BYTE *ps_telemetry_init_thread()
{
  result = ps_telemetry_is_enabled();
  if (result)
  {
    return ps_telemetry_init_thread_cold_1();
  }

  return result;
}

void *write_all(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = threadState();
  if ((*(v10 + 8) - 32705) <= 0xFFFFFFFFFFFF800ELL)
  {
    write_all_cold_1();
  }

  v11 = v10;
  v12 = buffer();
  v14 = *v12 + v13;
  *(v14 + 2) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v15 = atomic_load((ps_telemetry_writer_context[0] + 1));
  v14[36] = v15;
  *(v14 + 8) = dword_27FD2EE80;
  *(v14 + 3) = *threadid();
  *(v14 + 5) = a1;
  *(v14 + 6) = a3;
  *(v14 + 7) = a4;
  v16 = *v12;
  v17 = *(v11 + 8);
  if (32704 - v17 >= a3)
  {
    v18 = a3;
  }

  else
  {
    v18 = 32704 - v17;
  }

  result = memcpy(v16 + v17 + 64, a2, v18);
  if (32704 - v17 < a3)
  {
    result = memcpy(v16 + 2, &a2[v18], a3 - v18);
  }

  *(v11 + 8) = (v17 + a5) % 0x7FF0;
  atomic_fetch_add(v16, a5);
  return result;
}

void ps_telemetry_deinit_thread()
{
  if (ps_telemetry_is_enabled())
  {
    ps_telemetry_deinit_thread_cold_1();
  }
}

uint64_t PLSSettingsEnableSuperframeIOSurfaceNames()
{
  v0 = +[PLSSettings currentSettings];
  v1 = [v0 enableSuperframeIOSurfaceNames];

  return v1;
}

uint64_t PLSSettingsEnableFastTransition()
{
  v0 = +[PLSSettings currentSettings];
  v1 = [v0 enableFastTransition];

  return v1;
}

uint64_t PLSSettingsSupportsVirtualFrameID()
{
  if (MGGetProductType() != 1036038801)
  {
    return 0;
  }

  v0 = +[PLSSettings currentSettings];
  v1 = ([v0 camDispConfig] >> 6) & 1;

  return v1;
}

uint64_t ps_is_virtual_device()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __ps_is_virtual_device_block_invoke;
  block[3] = &unk_279A49740;
  block[4] = &v3;
  if (ps_is_virtual_device_onceToken != -1)
  {
    dispatch_once(&ps_is_virtual_device_onceToken, block);
  }

  v0 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __ps_is_virtual_device_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = MGGetProductType();
  *(*(*(a1 + 32) + 8) + 24) = v2 == 2141052862;
  v3 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v6 = 134218240;
    v7 = v2;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "MGGetProductType:%ld, isVirtualDevice:%d", &v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t sourceTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"RealityCamera"])
  {
    v2 = 4;
  }

  else
  {
    [v1 isEqualToString:@"IMU"];
    v2 = 1;
  }

  return v2;
}

id __PLSLogSharedInstance()
{
  if (__PLSLogSharedInstance_onceToken != -1)
  {
    __PLSLogSharedInstance_cold_1();
  }

  v1 = sharedInstance_5;

  return v1;
}

void ps_gsm_death_notifier_callback(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (death_notifier_callback_queue && (+[PLSSettings currentSettings](PLSSettings, "currentSettings"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 enableFastTransition], v6, v7))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __ps_gsm_death_notifier_callback_block_invoke;
    v8[3] = &__block_descriptor_48_e5_v8__0l;
    v8[4] = a4;
    v8[5] = a2;
    dispatch_sync(death_notifier_callback_queue, v8);
  }

  else
  {

    ps_gsm_handle_process_death(a4, a2);
  }
}

uint64_t sub_25EAFA458()
{
  v0 = sub_25EB6E1B8();
  __swift_allocate_value_buffer(v0, qword_27FD2EEA8);
  __swift_project_value_buffer(v0, qword_27FD2EEA8);

  return sub_25EB6E1A8();
}

id sub_25EAFA504(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_25EB6E258();

  return v6;
}

id PSCStrideConfig.init(graphName:sessionName:stride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_25EB6E258();

  v8 = sub_25EB6E258();

  v9 = [v6 initWithGraphName:v7 sessionName:v8 stride:a5];

  return v9;
}

id PSCStrideConfig.init(graphName:sessionName:stride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = (v5 + OBJC_IVAR___PSCStrideConfig_graphName);
  *v6 = a1;
  v6[1] = a2;
  v7 = (v5 + OBJC_IVAR___PSCStrideConfig_sessionName);
  *v7 = a3;
  v7[1] = a4;
  *(v5 + OBJC_IVAR___PSCStrideConfig_stride) = a5;
  v9.super_class = PSCStrideConfig;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_25EAFA7F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4E6E6F6973736573;
  v4 = 0xEB00000000656D61;
  if (v2 != 1)
  {
    v3 = 0x656469727473;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6D614E6870617267;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0x4E6E6F6973736573;
  v8 = 0xEB00000000656D61;
  if (*a2 != 1)
  {
    v7 = 0x656469727473;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6D614E6870617267;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25EB6E988();
  }

  return v11 & 1;
}

uint64_t sub_25EAFA900()
{
  v1 = *v0;
  sub_25EB6EA28();
  sub_25EB6E2D8();

  return sub_25EB6EA58();
}

uint64_t sub_25EAFA9AC()
{
  *v0;
  *v0;
  sub_25EB6E2D8();
}

uint64_t sub_25EAFAA44()
{
  v1 = *v0;
  sub_25EB6EA28();
  sub_25EB6E2D8();

  return sub_25EB6EA58();
}

uint64_t sub_25EAFAAEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25EAFD8F4();
  *a2 = result;
  return result;
}

void sub_25EAFAB1C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xEB00000000656D61;
  v5 = 0x4E6E6F6973736573;
  if (v2 != 1)
  {
    v5 = 0x656469727473;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D614E6870617267;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25EAFAB84()
{
  v1 = 0x4E6E6F6973736573;
  if (*v0 != 1)
  {
    v1 = 0x656469727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D614E6870617267;
  }
}

uint64_t sub_25EAFABE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25EAFD8F4();
  *a1 = result;
  return result;
}

uint64_t sub_25EAFAC28(uint64_t a1)
{
  v2 = sub_25EAFAF7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EAFAC64(uint64_t a1)
{
  v2 = sub_25EAFAF7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25EAFACA0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11B40, &qword_25EB78620);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EAFAF7C();
  sub_25EB6EA78();
  v11 = [v3 graphName];
  sub_25EB6E268();

  v15[15] = 0;
  sub_25EB6E928();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    v12 = [v3 sessionName];
    sub_25EB6E268();

    v15[14] = 1;
    sub_25EB6E928();

    v13 = [v3 stride];
    [v13 integerValue];

    v15[13] = 2;
    sub_25EB6E938();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25EAFAF7C()
{
  result = qword_27FD11B48;
  if (!qword_27FD11B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11B48);
  }

  return result;
}

void *StrideConfig.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11B50, &qword_25EB78628);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EAFAF7C();
  sub_25EB6EA68();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for StrideConfig();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = 0;
    v18 = sub_25EB6E8D8();
    v20 = 1;
    v17 = sub_25EB6E8D8();
    v20 = 2;
    sub_25EB6E8E8();
    v18 = sub_25EB6E258();

    v13 = sub_25EB6E258();

    sub_25EAFCC70(0, &qword_27FD11B58, 0x277CCABB0);
    v14 = sub_25EB6E4F8();
    v15 = type metadata accessor for StrideConfig();
    v19.receiver = v3;
    v19.super_class = v15;
    v16 = v18;
    v11 = objc_msgSendSuper2(&v19, sel_initWithGraphName_sessionName_stride_, v18, v13, v14);

    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v11;
}

id StrideConfig.__allocating_init(graphName:sessionName:stride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_allocWithZone(v5);
  v8 = sub_25EB6E258();

  v9 = sub_25EB6E258();

  v10 = [v7 initWithGraphName:v8 sessionName:v9 stride:a5];

  return v10;
}

id StrideConfig.init(graphName:sessionName:stride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_25EB6E258();

  v8 = sub_25EB6E258();

  v11.receiver = v5;
  v11.super_class = type metadata accessor for StrideConfig();
  v9 = objc_msgSendSuper2(&v11, sel_initWithGraphName_sessionName_stride_, v7, v8, a5);

  return v9;
}

id StrideConfig.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StrideConfig.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StrideConfig();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_25EAFB578@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for StrideConfig());
  result = StrideConfig.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void __swiftcall PolarisSystemConfig.init(fromPlistAtPath:)(PolarisSystemConfig_optional *__return_ptr retstr, Swift::String_optional fromPlistAtPath)
{
  if (fromPlistAtPath.value._object)
  {
    v2 = sub_25EB6E258();
  }

  else
  {
    v2 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initFromPlistAtPath_];
}

void PolarisSystemConfig.init(fromPlistAtPath:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_25EB6E058();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11B60, &qword_25EB78630);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - v12;
  v14 = sub_25EB6E098();
  v43 = *(v14 - 8);
  v15 = *(v43 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v41 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  if (a2)
  {
    goto LABEL_5;
  }

  v40 = v14;
  v21 = MGGetProductType();
  if (v21 == 1608945770)
  {
    v42 = v3;
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    v24 = sub_25EB6E258();
    v25 = sub_25EB6E258();
    v26 = [v23 pathForResource:v24 ofType:v25];

    if (v26)
    {
      sub_25EB6E268();

      v3 = v42;
      v14 = v40;
LABEL_5:
      (*(v43 + 56))(v13, 1, 1, v14);
      (*(v6 + 104))(v9, *MEMORY[0x277CC91D8], v5);
      sub_25EB6E088();
      v27 = sub_25EB6E0A8();
      v29 = v28;
      v30 = sub_25EB6E028();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      sub_25EB6E018();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11B68, &qword_25EB78638);
      sub_25EAFC420();
      sub_25EB6E008();
      (*(v43 + 8))(v20, v14);

      sub_25EAFC5CC(v27, v29);
      *&v3[OBJC_IVAR___PolarisSystemConfig_strideConfigsForModes] = v45;
      v44.receiver = v3;
      v44.super_class = PolarisSystemConfig;
      objc_msgSendSuper2(&v44, sel_init);
      return;
    }

    __break(1u);
  }

  else
  {
    v33 = v21;
    if (qword_27FD11B18 != -1)
    {
      swift_once();
    }

    v34 = sub_25EB6E1B8();
    __swift_project_value_buffer(v34, qword_27FD2EEA8);
    v35 = sub_25EB6E198();
    v36 = sub_25EB6E498();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = v33;
      _os_log_impl(&dword_25EA3A000, v35, v36, "Unsupported product type: %ld", v37, 0xCu);
      MEMORY[0x25F8C9C00](v37, -1, -1);
    }

    type metadata accessor for PolarisSystemConfig(v38);
    swift_deallocPartialClassInstance();
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t PolarisSystemConfig.strideConfigs(for:)(uint64_t a1)
{
  v2 = 0xEA00000000005453;
  v3 = 0x41465F53444E4148;
  v4 = 0xE700000000000000;
  v5 = 0x4E574F4E4B4E55;
  if (!a1)
  {
    v5 = 0x4F4E5F53444E4148;
    v4 = 0xEC0000004C414D52;
  }

  if (a1 != 1)
  {
    v3 = v5;
    v2 = v4;
  }

  if (a1 == 2)
  {
    v6 = 0x48545F53444E4148;
  }

  else
  {
    v6 = v3;
  }

  if (a1 == 2)
  {
    v7 = 0xED00004C414D5245;
  }

  else
  {
    v7 = v2;
  }

  v8 = OBJC_IVAR___PolarisSystemConfig_strideConfigsForModes;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!*(v9 + 16))
  {

    goto LABEL_16;
  }

  v10 = sub_25EAFCBE4(v6, v7);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_16:
    swift_endAccess();
    return 0;
  }

  v13 = *(*(v9 + 56) + 8 * v10);
  v14 = swift_endAccess();
  if (v13 >> 62)
  {
    type metadata accessor for PSCStrideConfig(v14);

    v17 = sub_25EB6E848();

    return v17;
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v15 = sub_25EB6E998();
    type metadata accessor for PSCStrideConfig(v15);

    return v13;
  }
}

id _sSo15PSCStrideConfigC7PolarisEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void *sub_25EAFC324@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25EAFC354(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25EAFC620(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25EAFD9DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_25EAFC420()
{
  result = qword_27FD11B70;
  if (!qword_27FD11B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD11B68, &qword_25EB78638);
    sub_25EAFC4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11B70);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25EAFC4F4()
{
  result = qword_27FD11B78;
  if (!qword_27FD11B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD11B80, &qword_25EB78640);
    sub_25EAFC578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11B78);
  }

  return result;
}

unint64_t sub_25EAFC578()
{
  result = qword_27FD11B88;
  if (!qword_27FD11B88)
  {
    type metadata accessor for StrideConfig();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11B88);
  }

  return result;
}

uint64_t sub_25EAFC5CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_25EAFC620(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25EAFC72C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25EB6E6E8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_25EAFC72C(uint64_t a1, unint64_t a2)
{
  v4 = sub_25EAFC778(a1, a2);
  sub_25EAFC8A8(&unk_2870BBCD0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25EAFC778(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25EB06AF0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25EB6E6E8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25EB6E308();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25EB06AF0(v10, 0);
        result = sub_25EB6E6A8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25EAFC8A8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25EAFC994(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_25EAFC994(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11BE0, &unk_25EB78940);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_25EAFCA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6EA48();
  if (a4)
  {
    sub_25EB6E2D8();
  }

  v10 = sub_25EB6EA58();

  return sub_25EAFD228(a1, a2, a3, a4, v10);
}

unint64_t sub_25EAFCB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6E2D8();
  v10 = sub_25EB6EA58();

  return sub_25EAFD334(a1, a2, a3, a4, v10);
}

unint64_t sub_25EAFCBE4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25EB6EA28();
  sub_25EB6E2D8();
  v6 = sub_25EB6EA58();

  return sub_25EAFD434(a1, a2, v6);
}

uint64_t sub_25EAFCC70(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_25EAFCD7C(uint64_t a1, unint64_t *a2)
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

uint64_t getEnumTagSinglePayload for StrideConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StrideConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25EAFCF3C()
{
  result = qword_27FD11BC0;
  if (!qword_27FD11BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11BC0);
  }

  return result;
}

unint64_t sub_25EAFCF94()
{
  result = qword_27FD11BC8;
  if (!qword_27FD11BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11BC8);
  }

  return result;
}

unint64_t sub_25EAFCFEC()
{
  result = qword_27FD11BD0;
  if (!qword_27FD11BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11BD0);
  }

  return result;
}

unint64_t sub_25EAFD040(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  sub_25EAFD940(&qword_27FD11BD8);
  v5 = sub_25EB6E228();

  return sub_25EAFD4EC(a1, v5);
}

unint64_t sub_25EAFD0D0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25EB6E508();

  return sub_25EAFD6A0(a1, v5);
}

unint64_t sub_25EAFD114(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25EB6E508();
  return sub_25EAFD774(a1, v5, type metadata accessor for PSSGResourceID);
}

unint64_t sub_25EAFD168(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25EB6E508();
  return sub_25EAFD774(a1, v5, type metadata accessor for PSSGGraphID);
}

unint64_t sub_25EAFD1BC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_25EB6EA28();
  sub_25EB2F4F0(v6, a1);
  v4 = sub_25EB6EA58();

  return sub_25EAFD83C(a1, v4);
}

unint64_t sub_25EAFD228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v17 = v15[2];
      v16 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_25EB6E988() & 1) != 0)
      {
        if (v16)
        {
          if (a4)
          {
            v19 = v17 == a3 && v16 == a4;
            if (v19 || (sub_25EB6E988() & 1) != 0)
            {
              return v8;
            }
          }
        }

        else if (!a4)
        {
          return v8;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_25EAFD334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_25EB6E988() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_25EB6E988() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_25EAFD434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25EB6E988())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25EAFD4EC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_25EAFD940(&qword_27FD11F30);
      v16 = sub_25EB6E248();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_25EAFD6A0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_25EAFCC70(0, &qword_27FD11B58, 0x277CCABB0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_25EB6E518();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25EAFD774(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    a3(0);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_25EB6E518();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25EAFD83C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);

      sub_25EB24B58(v8, a1);
      v10 = v9;

      if (v10)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_25EAFD8F4()
{
  v0 = sub_25EB6E8A8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25EAFD940(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD11BF0, &qword_25EB78980);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25EAFD9DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unsigned __int8 *Key<>.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = (&v37[-1] - v10);
  v12 = HIBYTE(a2) & 0xF;
  v13 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    v35 = 1;
    return (*(v7 + 56))(a3, v35, 1, v6);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v16 = sub_25EB06B64(a1, a2, 10);

    if ((v16 & 0x100000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_25EB6E6E8();
    }

    v15 = *result;
    if (v15 == 43)
    {
      if (v13 >= 1)
      {
        v12 = v13 - 1;
        if (v13 != 1)
        {
          LODWORD(v16) = 0;
          if (result)
          {
            v23 = result + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                goto LABEL_61;
              }

              v25 = 10 * v16;
              if ((v25 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v16) = v25 + v24;
              if (__CFADD__(v25, v24))
              {
                goto LABEL_61;
              }

              ++v23;
              if (!--v12)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v15 != 45)
    {
      if (v13)
      {
        LODWORD(v16) = 0;
        if (result)
        {
          while (1)
          {
            v29 = *result - 48;
            if (v29 > 9)
            {
              goto LABEL_61;
            }

            v30 = 10 * v16;
            if ((v30 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v16) = v30 + v29;
            if (__CFADD__(v30, v29))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v13)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v16) = 0;
      LOBYTE(v12) = 1;
LABEL_62:
      v38 = v12;
      v34 = v12;

      if (v34)
      {
LABEL_63:
        v35 = 1;
        return (*(v7 + 56))(a3, v35, 1, v6);
      }

LABEL_66:
      *v11 = v16;
      (*(v7 + 104))(v11, *MEMORY[0x277D3E7A8], v6);
      (*(v7 + 32))(a3, v11, v6);
      v35 = 0;
      return (*(v7 + 56))(a3, v35, 1, v6);
    }

    if (v13 >= 1)
    {
      v12 = v13 - 1;
      if (v13 != 1)
      {
        LODWORD(v16) = 0;
        if (result)
        {
          v17 = result + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              goto LABEL_61;
            }

            v19 = 10 * v16;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v16) = v19 - v18;
            if (v19 < v18)
            {
              goto LABEL_61;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v12) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v37[0] = a1;
  v37[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v12)
      {
        LODWORD(v16) = 0;
        v31 = v37;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v16;
          if ((v33 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v16) = v33 + v32;
          if (__CFADD__(v33, v32))
          {
            break;
          }

          ++v31;
          if (!--v12)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v12)
    {
      if (--v12)
      {
        LODWORD(v16) = 0;
        v20 = v37 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v16;
          if ((v22 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v16) = v22 - v21;
          if (v22 < v21)
          {
            break;
          }

          ++v20;
          if (!--v12)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v12)
  {
    if (--v12)
    {
      LODWORD(v16) = 0;
      v26 = v37 + 1;
      while (1)
      {
        v27 = *v26 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v16;
        if ((v28 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v16) = v28 + v27;
        if (__CFADD__(v28, v27))
        {
          break;
        }

        ++v26;
        if (!--v12)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_25EAFDE80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_25EAFDEE0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_25EAFDF18(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void sub_25EAFDFE8(uint64_t a1, uint64_t a2)
{
  v207 = a1;
  v244[9] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF8, &qword_25EB78988);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v218 = v206 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v235 = (v206 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11C00, &qword_25EB78990);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v208 = v206 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v223 = v206 - v14;
  MEMORY[0x28223BE20](v13);
  v234 = v206 - v15;
  v16 = sub_25EB6E138();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v213 = v206 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v212 = v206 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v217 = v206 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v222 = v206 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v220 = v206 - v28;
  MEMORY[0x28223BE20](v27);
  v233 = v206 - v29;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v30 = *(v238 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v238);
  v211 = v206 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v209 = v206 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v216 = v206 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v214 = v206 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v221 = v206 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v219 = v206 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v226 = v206 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v215 = v206 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = v206 - v48;
  v50 = *(a2 + 16);
  v240 = v16;
  v237 = v17;
  v224 = v30;
  v206[1] = a2;
  v210 = v50;
  if (v50)
  {
    v51 = a2 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    swift_beginAccess();
    v53 = *(v30 + 16);
    v52 = (v30 + 16);
    v230 = v52[7];
    v231 = v53;
    v232 = v52;
    v228 = (v17 + 48);
    *&v229 = v52 - 1;
    v236 = MEMORY[0x277D84F90];
    *&v227 = v17 + 32;
    v54 = v50;
    do
    {
      v55 = v238;
      v56 = (v231)(v49, v51, v238);
      v57 = v2;
      v58 = *(v2 + 16);
      MEMORY[0x28223BE20](v56);

      v59 = v234;
      v60 = v239;
      sub_25EAFF930(sub_25EB0EE44, v58, v234);
      v239 = v60;

      (*v229)(v49, v55);
      v61 = v240;
      if ((*v228)(v59, 1, v240) == 1)
      {
        sub_25EB0D660(v59, &unk_27FD11C00, &qword_25EB78990);
      }

      else
      {
        v62 = *v227;
        (*v227)(v233, v59, v61);
        v63 = v236;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_25EB064D0(0, v63[2] + 1, 1, v63);
        }

        v65 = v63[2];
        v64 = v63[3];
        if (v65 >= v64 >> 1)
        {
          v63 = sub_25EB064D0(v64 > 1, v65 + 1, 1, v63);
        }

        v63[2] = v65 + 1;
        v66 = (*(v237 + 80) + 32) & ~*(v237 + 80);
        v236 = v63;
        v62(v63 + v66 + *(v237 + 72) * v65, v233, v240);
      }

      v51 += v230;
      --v54;
      v2 = v57;
    }

    while (v54);
  }

  else
  {
    v236 = MEMORY[0x277D84F90];
  }

  v67 = v236;
  if (v236[2] != v210)
  {

    *&v229 = sub_25EB0C8D4(v87);

    v88 = v67;
    v234 = v67[2];
    if (v234)
    {
      v89 = 0;
      v90 = (v224 + 32);
      v232 = (v224 + 56);
      v233 = (v237 + 16);
      v230 = v224 + 48;
      v231 = (v237 + 8);
      v239 = MEMORY[0x277D84F90];
      while (v89 < v88[2])
      {
        v91 = v237;
        v92 = v220;
        v93 = v240;
        (*(v237 + 16))(v220, v88 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v89, v240);
        v94 = v226;
        sub_25EB6E128();
        v95 = *v90;
        v96 = v238;
        (*v90)(v235, v94, v238);
        (*v232)(v235, 0, 1, v96);
        v97 = v235;
        (*(v91 + 8))(v92, v93);
        if ((*v230)(v97, 1, v96) == 1)
        {
          sub_25EB0D660(v97, &qword_27FD11BF8, &qword_25EB78988);
        }

        else
        {
          v98 = v215;
          v95(v215, v97, v96);
          v95(v219, v98, v96);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v239 = sub_25EB062E0(0, v239[2] + 1, 1, v239);
          }

          v100 = v239[2];
          v99 = v239[3];
          if (v100 >= v99 >> 1)
          {
            v239 = sub_25EB062E0(v99 > 1, v100 + 1, 1, v239);
          }

          v101 = v238;
          v102 = v239;
          v239[2] = v100 + 1;
          v95(&v102[((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v100], v219, v101);
        }

        ++v89;
        v88 = v236;
        if (v234 == v89)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
    }

    v239 = MEMORY[0x277D84F90];
LABEL_51:

    v127 = v239;
LABEL_69:
    sub_25EB07554(v127, v229);

    sub_25EAFD940(&qword_27FD11BD8);
    v164 = sub_25EB6E448();
    v166 = v165;

    sub_25EB0CA68();
    swift_allocError();
    *v167 = v164;
    *(v167 + 8) = v166;
    *(v167 + 16) = 1;
    swift_willThrow();
    goto LABEL_70;
  }

  v68 = *(v207 + 16);
  v69 = v237;
  v70 = v224;
  v225 = v2;
  *&v229 = v68;
  if (v68)
  {
    v71 = v207 + ((*(v224 + 80) + 32) & ~*(v224 + 80));
    swift_beginAccess();
    v73 = *(v70 + 16);
    v72 = v70 + 16;
    v232 = *(v72 + 56);
    v233 = v73;
    v234 = v72;
    v231 = (v72 - 8);
    v74 = (v69 + 48);
    v235 = MEMORY[0x277D84F90];
    v230 = v69 + 32;
    do
    {
      v75 = v221;
      v76 = v238;
      v77 = (v233)(v221, v71, v238);
      v78 = *(v225 + 16);
      MEMORY[0x28223BE20](v77);

      v79 = v223;
      v80 = v239;
      sub_25EAFF930(sub_25EB0CABC, v78, v223);
      v239 = v80;

      (*v231)(v75, v76);
      v81 = v240;
      if ((*v74)(v79, 1, v240) == 1)
      {
        sub_25EB0D660(v79, &unk_27FD11C00, &qword_25EB78990);
      }

      else
      {
        v82 = *v230;
        (*v230)(v222, v79, v81);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v83 = v235;
        }

        else
        {
          v83 = sub_25EB064D0(0, v235[2] + 1, 1, v235);
        }

        v85 = v83[2];
        v84 = v83[3];
        if (v85 >= v84 >> 1)
        {
          v83 = sub_25EB064D0(v84 > 1, v85 + 1, 1, v83);
        }

        v83[2] = v85 + 1;
        v86 = (*(v237 + 80) + 32) & ~*(v237 + 80);
        v235 = v83;
        v82((v83 + v86 + *(v237 + 72) * v85), v222, v240);
      }

      v71 += v232;
      --v68;
    }

    while (v68);
  }

  else
  {
    v235 = MEMORY[0x277D84F90];
  }

  v103 = v235;
  if (v235[2] != v229)
  {

    *&v229 = sub_25EB0C8D4(v108);

    v109 = v240;
    v110 = v103;
    v234 = v103[2];
    if (v234)
    {
      v111 = 0;
      v112 = (v224 + 32);
      v232 = (v224 + 56);
      v233 = (v237 + 16);
      v230 = v224 + 48;
      v231 = (v237 + 8);
      v236 = MEMORY[0x277D84F90];
      while (v111 < v110[2])
      {
        v114 = v237;
        v115 = v110 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
        v116 = *(v237 + 72);
        v239 = v111;
        v117 = v217;
        (*(v237 + 16))(v217, &v115[v116 * v111], v109);
        v118 = v226;
        sub_25EB6E128();
        v119 = *v112;
        v120 = v218;
        v121 = v238;
        (*v112)(v218, v118, v238);
        (*v232)(v120, 0, 1, v121);
        (*(v114 + 8))(v117, v109);
        if ((*v230)(v120, 1, v121) == 1)
        {
          sub_25EB0D660(v120, &qword_27FD11BF8, &qword_25EB78988);
          v113 = v239;
        }

        else
        {
          v122 = v214;
          v119(v214, v120, v121);
          v119(v216, v122, v121);
          v123 = v119;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v236 = sub_25EB062E0(0, v236[2] + 1, 1, v236);
          }

          v113 = v239;
          v125 = v236[2];
          v124 = v236[3];
          if (v125 >= v124 >> 1)
          {
            v236 = sub_25EB062E0(v124 > 1, v125 + 1, 1, v236);
          }

          v126 = v236;
          v236[2] = v125 + 1;
          v123(&v126[((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v125], v216, v238);
        }

        v111 = v113 + 1;
        v110 = v235;
        v109 = v240;
        if (v234 == v111)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_94;
    }

    v236 = MEMORY[0x277D84F90];
LABEL_68:

    v127 = v236;
    goto LABEL_69;
  }

  v104 = v225;
  os_unfair_lock_lock((v225 + 24));
  v105 = v239;
  sub_25EAFFFB0((v104 + 32), v103, v244);
  v106 = v240;
  v107 = v237;
  if (v105)
  {

    os_unfair_lock_unlock((v104 + 24));
    goto LABEL_70;
  }

  v239 = 0;
  os_unfair_lock_unlock((v104 + 24));
  v128 = v236[2];
  swift_beginAccess();
  swift_beginAccess();
  v231 = v128;
  if (v128)
  {
    v129 = 0;
    v230 = v107 + 16;
    v233 = (v224 + 8);
    v228 = (v107 + 8);
    v229 = xmmword_25EB78950;
    v227 = xmmword_25EB78960;
    v130 = v212;
    while (1)
    {
      if (v129 >= v236[2])
      {
        goto LABEL_95;
      }

      (*(v107 + 16))(v130, v236 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v129, v106);
      v132 = v209;
      sub_25EB6E128();
      v133 = *(v225 + 56);
      if (!*(v133 + 16))
      {
        goto LABEL_96;
      }

      v134 = *(v225 + 56);

      v135 = sub_25EAFD040(v132);
      if ((v136 & 1) == 0)
      {
        goto LABEL_97;
      }

      v234 = v129;
      v137 = *(*(v133 + 56) + 8 * v135);
      v138 = v224;
      v139 = *(v224 + 8);

      v140 = v139;
      v139(v132, v238);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD123C0, &qword_25EB78998);
      v141 = *(v138 + 72);
      v142 = (*(v138 + 80) + 32) & ~*(v138 + 80);
      *(swift_allocObject() + 16) = v229;
      sub_25EB6E128();
      v143 = v137 + OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_endpointServer;
      os_unfair_lock_lock((v137 + OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_endpointServer));
      v144 = *(v143 + 40);
      __swift_project_boxed_opaque_existential_1((v143 + 8), *(v143 + 32));
      v145 = v239;
      sub_25EB6E158();
      v239 = v145;
      if (v145)
      {
        break;
      }

      os_unfair_lock_unlock(v143);

      v146 = v225;
      os_unfair_lock_lock((v225 + 24));
      v147 = v208;
      sub_25EB09BDC(v130, v208);
      sub_25EB0D660(v147, &unk_27FD11C00, &qword_25EB78990);
      os_unfair_lock_unlock((v146 + 24));
      v148 = *(v146 + 40);
      v106 = v240;
      v149 = v213;
      v107 = v237;
      if (v148)
      {
        v150 = MEMORY[0x277D84F90];
        v151 = v226;
        v232 = v148;
        if (MEMORY[0x277D84F90] >> 62 && sub_25EB6E5F8())
        {
          sub_25EB0CADC(v150);
        }

        sub_25EAFCC70(0, &qword_27FD11C20, 0x277D3E698);
        sub_25EB0D6C0(&qword_27FD11C28, &qword_27FD11C20, 0x277D3E698);
        v152 = sub_25EB6E428();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C30, &qword_25EB789A0);
        inited = swift_initStackObject();
        *(inited + 16) = v227;
        sub_25EB6E128();
        v154 = *(v225 + 64);
        if (!*(v154 + 16))
        {
          goto LABEL_101;
        }

        v155 = *(v225 + 64);

        v156 = sub_25EAFD040(v151);
        if ((v157 & 1) == 0)
        {
          goto LABEL_102;
        }

        v158 = *(*(v154 + 56) + 8 * v156);
        v159 = v151;
        v160 = v158;
        v140(v159, v238);

        *(inited + 32) = v160;
        sub_25EB0CADC(inited);
        swift_setDeallocating();
        v161 = *(inited + 16);
        swift_arrayDestroy();
        v162 = sub_25EB6E428();

        v243[0] = 0;
        LODWORD(v160) = [v232 commitRemoteGraphs:v152 removedGraphs:v162 option:1 error:v243];

        if (!v160)
        {
          v202 = v243[0];
          v203 = sub_25EB6E048();

          swift_willThrow();
          v243[0] = 0;
          v243[1] = 0xE000000000000000;
          sub_25EB6E6B8();
          MEMORY[0x25F8C69B0](0xD000000000000022, 0x800000025EB8D700);
          v242[7] = v203;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C38, &qword_25EB789A8);
          sub_25EB6E748();
          goto LABEL_107;
        }

        v163 = v243[0];
        v106 = v240;
        v130 = v212;
        v149 = v213;
      }

      v129 = v234 + 1;
      (*v228)(v130, v106);
      v131 = v235;
      if (v231 == v129)
      {
        goto LABEL_72;
      }
    }

    os_unfair_lock_unlock(v143);

    (*v228)(v130, v240);
LABEL_70:
    v168 = *MEMORY[0x277D85DE8];
    return;
  }

  v149 = v213;
  v131 = v235;
LABEL_72:
  v232 = v131[2];
  if (!v232)
  {
LABEL_92:

    goto LABEL_70;
  }

  v169 = v225;
  v234 = *(v225 + 40);
  v231 = v131 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
  swift_beginAccess();
  swift_beginAccess();
  v170 = 0;
  v230 = v107 + 16;
  v233 = (v224 + 8);
  v228 = (v107 + 8);
  v229 = xmmword_25EB78950;
  v227 = xmmword_25EB78960;
  v171 = v211;
  while (1)
  {
    if (v170 >= v235[2])
    {
      goto LABEL_98;
    }

    (*(v107 + 16))(v149, &v231[*(v107 + 72) * v170], v106);
    if (v234)
    {
      break;
    }

LABEL_82:
    sub_25EB6E128();
    v189 = *(v169 + 56);
    if (!*(v189 + 16))
    {
      goto LABEL_99;
    }

    v190 = *(v169 + 56);

    v191 = sub_25EAFD040(v171);
    if ((v192 & 1) == 0)
    {
      goto LABEL_100;
    }

    v193 = v170;
    v194 = *(*(v189 + 56) + 8 * v191);
    v195 = v224;
    v196 = *(v224 + 8);

    v196(v171, v238);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD123C0, &qword_25EB78998);
    v197 = *(v195 + 72);
    v198 = (*(v195 + 80) + 32) & ~*(v195 + 80);
    *(swift_allocObject() + 16) = v229;
    sub_25EB6E128();
    v199 = v194 + OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_endpointServer;
    os_unfair_lock_lock((v194 + OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_endpointServer));
    v200 = *(v199 + 40);
    __swift_project_boxed_opaque_existential_1((v199 + 8), *(v199 + 32));
    v201 = v239;
    sub_25EB6E158();
    if (v201)
    {

      os_unfair_lock_unlock(v199);

      (*v228)(v149, v240);
      goto LABEL_70;
    }

    v239 = 0;
    v170 = v193 + 1;

    os_unfair_lock_unlock(v199);

    v106 = v240;
    (*v228)(v149, v240);
    v171 = v211;
    v107 = v237;
    v169 = v225;
    if (v232 == v170)
    {
      goto LABEL_92;
    }
  }

  v172 = v170;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C30, &qword_25EB789A0);
  v173 = swift_initStackObject();
  *(v173 + 16) = v227;
  v174 = v169;
  v175 = v226;
  sub_25EB6E128();
  v176 = *(v174 + 64);
  if (!*(v176 + 16))
  {
    goto LABEL_103;
  }

  v177 = v174;
  v178 = *(v174 + 64);

  v179 = sub_25EAFD040(v175);
  if ((v180 & 1) == 0)
  {
    goto LABEL_104;
  }

  v181 = *v233;
  v182 = *(*(v176 + 56) + 8 * v179);
  v181(v175, v238);

  *(v173 + 32) = v182;
  sub_25EB0CADC(v173);
  swift_setDeallocating();
  v183 = *(v173 + 16);
  swift_arrayDestroy();
  sub_25EAFCC70(0, &qword_27FD11C20, 0x277D3E698);
  sub_25EB0D6C0(&qword_27FD11C28, &qword_27FD11C20, 0x277D3E698);
  v184 = sub_25EB6E428();

  v185 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    v169 = v177;
    if (sub_25EB6E5F8())
    {
      sub_25EB0CADC(v185);
    }
  }

  else
  {
    v169 = v177;
  }

  v186 = sub_25EB6E428();

  v242[0] = 0;
  v187 = [v234 commitRemoteGraphs:v184 removedGraphs:v186 option:1 error:v242];

  if (v187)
  {
    v170 = v172;
    v188 = v242[0];
    v149 = v213;
    v171 = v211;
    goto LABEL_82;
  }

  v204 = v242[0];
  v205 = sub_25EB6E048();

  swift_willThrow();
  v242[0] = 0;
  v242[1] = 0xE000000000000000;
  sub_25EB6E6B8();
  MEMORY[0x25F8C69B0](0xD000000000000022, 0x800000025EB8D700);
  v241 = v205;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C38, &qword_25EB789A8);
  sub_25EB6E748();
LABEL_107:
  sub_25EB6E838();
  __break(1u);
}

uint64_t sub_25EAFF930@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v33 = a1;
  v29 = a3;
  v39 = sub_25EB6E138();
  v6 = *(*(v39 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = &v29 - v10;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v34 = v9 + 32;
  v35 = v9;
  v30 = (v9 + 8);
  v31 = v9 + 16;
  v36 = a2;

  v17 = 0;
  v18 = v32;
  if (v14)
  {
    while (1)
    {
      v37 = v4;
      v19 = v17;
LABEL_9:
      v20 = v35;
      v21 = v39;
      (*(v35 + 16))(v18, *(v36 + 48) + *(v35 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v39);
      v22 = *(v20 + 32);
      v23 = v38;
      v22(v38, v18, v21);
      v24 = v37;
      v25 = v33(v23);
      v4 = v24;
      if (v24)
      {
        (*v30)(v38, v39);
      }

      if (v25)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v30)(v38, v39);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v29;
    v22(v29, v38, v39);
    v27 = v28;
    v26 = 0;
    return (*(v35 + 56))(v27, v26, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v26 = 1;
        v27 = v29;
        return (*(v35 + 56))(v27, v26, 1, v39);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v37 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_25EAFFC80(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), void (*a5)(id *))
{
  v9 = a1;
  v10 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = sub_25EB6E5F8();
  }

  else
  {
    v11 = *(a1 + 16);
  }

  v12 = a2(0);
  v13 = sub_25EB0D618(a3, a4);
  v24[1] = MEMORY[0x25F8C6B20](v11, v12, v13);
  if (v10)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v9 = sub_25EB6E768() | 0x8000000000000000;
  }

  else
  {
    v17 = -1 << *(v9 + 32);
    v14 = v9 + 64;
    v15 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v9 + 64);
  }

  v20 = 0;
  while ((v9 & 0x8000000000000000) != 0)
  {
    if (!sub_25EB6E808() || (swift_dynamicCast(), !v24[0]))
    {
LABEL_21:
      sub_25EB0EC08();
      return;
    }

LABEL_11:
    a5(v24);
  }

  v21 = v20;
  v22 = v16;
  v23 = v20;
  if (v16)
  {
LABEL_17:
    if (!*(*(v9 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22))))))
    {
      goto LABEL_21;
    }

    v16 = (v22 - 1) & v22;
    v20 = v23;
    goto LABEL_11;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= ((v15 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v22 = *(v14 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_25EAFFEA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  sub_25EB6E128();
  v5 = sub_25EB6E178();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}