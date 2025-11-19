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

void dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, uint64_t a6, uint64_t a7)
{
  if (a3 != a4)
  {
    v9 = a3;
    v11 = a1 + 56;
    while (1)
    {
      v12 = (v9 + 4);
      v13 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a1 + 48, v9 + 4);
      if (v11 == v13)
      {
        break;
      }

      v14 = *(v13 + 56);
      v43 = v14;
      if (!v14)
      {
        goto LABEL_8;
      }

      (*(*v14 + 24))(v14, a2, v9 + 7);
      (*(*v43 + 32))(v43, a2);
      if (a7)
      {
        std::__tree<dmlc::parameter::FieldAccessEntry *>::__emplace_unique_key_args<dmlc::parameter::FieldAccessEntry *,dmlc::parameter::FieldAccessEntry * const&>(a7, &v43);
      }

LABEL_46:
      v28 = v9[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v9[2];
          v26 = *v29 == v9;
          v9 = v29;
        }

        while (!v26);
      }

      v9 = v29;
      if (v29 == a4)
      {
        return;
      }
    }

    v43 = 0;
LABEL_8:
    if (a6)
    {
      std::pair<std::string,std::string>::pair[abi:ne200100]<std::string const,std::string,0>(&v40, v9 + 2);
      std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](a6, &v40);
      if (v42 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }
    }

    else if (a5)
    {
      if (a5 != 2)
      {
        goto LABEL_53;
      }

      v15 = *(v9 + 55);
      if (v15 < 0)
      {
        v17 = v9[5];
        if (v17 <= 4)
        {
          goto LABEL_53;
        }

        v18 = *v12;
        v16 = *v12 + v17;
      }

      else
      {
        if (v15 < 5)
        {
          goto LABEL_53;
        }

        v16 = v12 + v15;
        v17 = *(v9 + 55);
        v18 = v9 + 4;
      }

      v19 = v18;
      while (1)
      {
        v20 = memchr(v19, 95, v17 - 1);
        if (!v20)
        {
          goto LABEL_53;
        }

        if (*v20 == 24415)
        {
          break;
        }

        v19 = v20 + 1;
        v17 = v16 - v19;
        if (v16 - v19 < 2)
        {
          goto LABEL_53;
        }
      }

      if (v20 != v18)
      {
        goto LABEL_53;
      }

      if ((v15 & 0x80000000) != 0)
      {
        v21 = v9[4];
        v22 = v9[5];
      }

      else
      {
        v21 = v9 + 4;
        v22 = v15;
      }

      v23 = &v21[v22];
      if (v22)
      {
        v24 = v21;
        v25 = &v21[v22];
        while (1)
        {
          ++v24;
          while (*(v24 - 1) != 95)
          {
            v26 = v24++ == v23;
            if (v26)
            {
              goto LABEL_41;
            }
          }

          if (v24 == v23)
          {
            break;
          }

          if (*v24 == 95)
          {
            v25 = v24 - 1;
          }
        }
      }

      else
      {
        v25 = v21;
      }

LABEL_41:
      v27 = v25 - v21;
      if (v25 == v23)
      {
        v27 = -1;
      }

      if ((v15 & 0x80000000) != 0)
      {
        v15 = v9[5];
      }

      if (v27 != v15 - 2)
      {
LABEL_53:
        std::ostringstream::basic_ostringstream[abi:ne200100](&v40);
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "Cannot find argument '", 22);
        v31 = *(v9 + 55);
        if (v31 >= 0)
        {
          v32 = (v9 + 4);
        }

        else
        {
          v32 = v9[4];
        }

        if (v31 >= 0)
        {
          v33 = *(v9 + 55);
        }

        else
        {
          v33 = v9[5];
        }

        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "', Possible Arguments:\n", 23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "----------------\n", 17);
        dmlc::parameter::ParamManager::PrintDocString(a1, &v40);
        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::runtime_error::runtime_error(exception, &v39);
        exception->__vftable = &unk_2883DE2B0;
      }
    }

    goto LABEL_46;
  }
}

void sub_274CBFA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v20 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a19);
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v19);
  goto LABEL_6;
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v20.__end_cap_.__value_ = a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    v19 = *(a1 + 16);
    *(a1 + 16) = 0;
    v20.__end_ = v18;
    v20.__end_cap_.__value_ = v19;
    v20.__first_ = v18;
    v20.__begin_ = v18;
    std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = v4 + 48;
  }

  *(a1 + 8) = v8;
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void dmlc::parameter::ParamManager::PrintDocString(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  if (*(a1 + 32) != v2)
  {
    v5 = 0;
    do
    {
      (*(**(v2 + 8 * v5) + 48))(v19);
      if ((v20 & 0x80u) == 0)
      {
        v6 = v19;
      }

      else
      {
        v6 = v19[0];
      }

      if ((v20 & 0x80u) == 0)
      {
        v7 = v20;
      }

      else
      {
        v7 = v19[1];
      }

      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v6, v7);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " : ", 3);
      if ((v24 & 0x80u) == 0)
      {
        v10 = v23;
      }

      else
      {
        v10 = v23[0];
      }

      if ((v24 & 0x80u) == 0)
      {
        v11 = v24;
      }

      else
      {
        v11 = v23[1];
      }

      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
      v28 = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v28, 1);
      v13 = v27;
      v14 = v27;
      if ((v27 & 0x80u) != 0)
      {
        v13 = v26;
      }

      if (v13)
      {
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "    ", 4);
        if ((v27 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v27 & 0x80u) == 0)
        {
          v17 = v27;
        }

        else
        {
          v17 = v26;
        }

        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, p_p, v17);
        v28 = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, &v28, 1);
        v14 = v27;
      }

      if ((v14 & 0x80) != 0)
      {
        operator delete(__p);
      }

      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      ++v5;
      v2 = *(a1 + 24);
    }

    while (v5 < (*(a1 + 32) - v2) >> 3);
  }
}

void sub_274CBFDD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dmlc::ParamFieldInfo::~ParamFieldInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

void *std::__tree<dmlc::parameter::FieldAccessEntry *>::__emplace_unique_key_args<dmlc::parameter::FieldAccessEntry *,dmlc::parameter::FieldAccessEntry * const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
{
  std::__split_buffer<std::pair<std::string,std::string>>::clear[abi:ne200100](this);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::pair<std::string,std::string>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v4, i - 48);
  }
}

void std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
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

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<std::string const,std::string,0>(std::string *this, __int128 *a2)
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

void sub_274CC00E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, int a6)
{
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(a1, a2, a3, a4, a6, a5, &v24);
  v8 = *(a1 + 48);
  v9 = (a1 + 56);
  if (v8 != (a1 + 56))
  {
    do
    {
      v10 = v25[0];
      v11 = v8[7];
      if (!v25[0])
      {
        goto LABEL_10;
      }

      v12 = v25;
      do
      {
        v13 = v10[4];
        v14 = v13 >= v11;
        v15 = v13 < v11;
        if (v14)
        {
          v12 = v10;
        }

        v10 = v10[v15];
      }

      while (v10);
      if (v12 == v25 || v11 < v12[4])
      {
LABEL_10:
        (*(*v11 + 16))(v11, a2);
      }

      v16 = v8[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v8[2];
          v18 = *v17 == v8;
          v8 = v17;
        }

        while (!v18);
      }

      v8 = v17;
    }

    while (v17 != v9);
    v8 = *(a1 + 48);
  }

  if (v8 != v9)
  {
    do
    {
      v19 = v25[0];
      for (i = v8[7]; v19; v19 = *v19)
      {
        v21 = v19[4];
        if (i >= v21)
        {
          if (v21 >= i)
          {
            goto LABEL_25;
          }

          ++v19;
        }
      }

      (*(*i + 16))(i, a2);
LABEL_25:
      v22 = v8[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v8[2];
          v18 = *v23 == v8;
          v8 = v23;
        }

        while (!v18);
      }

      v8 = v23;
    }

    while (v23 != v9);
  }

  std::__tree<dmlc::parameter::FieldAccessEntry *>::destroy(&v24, v25[0]);
}

void std::__tree<dmlc::parameter::FieldAccessEntry *>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<dmlc::parameter::FieldAccessEntry *>::destroy(a1, *a2);
    std::__tree<dmlc::parameter::FieldAccessEntry *>::destroy(a1, a2[1]);

    operator delete(a2);
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

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void xgboost::Json::operator=()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void xgboost::ToJson<xgboost::obj::RegLossParam>(xgboost::obj::RegLossParam *a1)
{
  *(a1 + 1) = 0x300000000;
  *a1 = &unk_2883E6E50;
  *(a1 + 3) = 0;
  *(a1 + 2) = a1 + 24;
  v1 = a1 + 16;
  *(a1 + 4) = 0;
  xgboost::obj::RegLossParam::__MANAGER__(a1);
  dmlc::parameter::ParamManager::GetDict(&stru_280AF5BF8, v3);
  std::map<std::string,std::string>::map[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string> *>>(&v4, v3[0], v3[1]);
  v6 = v3;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v2 = v4;
  if (v4 != &v5)
  {
    xgboost::JsonString::JsonString(v3, (v4 + 56));
    v6 = (v2 + 32);
    std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v1, (v2 + 32));
    xgboost::Json::operator=();
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v4, v5);
}

void sub_274CC065C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  a21 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a21);
  *v21 = v22;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v23, *(v21 + 24));
  _Unwind_Resume(a1);
}

void dmlc::parameter::ParamManager::GetDict(dmlc::parameter::ParamManager *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 6);
  v4 = this + 56;
  if (v3 != (this + 56))
  {
    do
    {
      (*(*v3[7] + 40))(v9);
      if (*(v3 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v11, v3[4], v3[5]);
      }

      else
      {
        v11 = *(v3 + 4);
      }

      __p = *v9;
      v13 = v10;
      v9[1] = 0;
      v10 = 0;
      v9[0] = 0;
      std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](a2, &v11);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v10) < 0)
      {
        operator delete(v9[0]);
      }

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }
}

void sub_274CC08FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void *std::map<std::string,std::string>::map[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string> *>>(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string,std::string> &>(a1, v4, v6);
      v6 += 6;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string,std::string> &>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string,std::string> &>();
  }

  return v3;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::less<std::string>::operator()[abi:ne200100](a1, a5, (a2 + 32)))
  {
    if (!std::less<std::string>::operator()[abi:ne200100](a1, (a2 + 32), a5))
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
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

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

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::string>::operator()[abi:ne200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__find_equal<std::string>(a1, a3, a5);
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100]<std::string,std::string,0>(std::string *this, __int128 *a2)
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

void sub_274CC0CE8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::JsonString::JsonString(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2883E6F38;
  *(a1 + 8) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 16) = v3;
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_274CC0E94(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,xgboost::Json>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void _ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN7xgboost4JsonEEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSE_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSN_IJXspT2_EEEE(std::string *this, __int128 **a2)
{
  v2 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v2, *(v2 + 1));
  }

  else
  {
    v3 = *v2;
    this->__r_.__value_.__r.__words[2] = *(v2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  operator new();
}

void sub_274CC0F50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,xgboost::Json>,void *>>>::operator()[abi:ne200100](uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(__p + 7);
    if (v3 && atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*v3 + 8))(v3);
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void xgboost::XGBoostParameter<xgboost::obj::RegLossParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(xgboost::obj::RegLossParam *a1, _BYTE *a2, uint64_t *a3)
{
  if (*a2 == 1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    xgboost::obj::RegLossParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF5BF8, a2, *a3, a3[1], 0, a1, 0);
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    xgboost::obj::RegLossParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF5BF8, a2, *a3, a3[1], a1, 0);
    *a2 = 1;
  }
}

void sub_274CC10B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(void *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  if (a3 != a4)
  {
    v9 = a3;
    v11 = result;
    v12 = result + 7;
    while (1)
    {
      result = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v11 + 48, v9);
      if (v12 == result)
      {
        break;
      }

      result = result[7];
      v36 = result;
      if (!result)
      {
        goto LABEL_8;
      }

      (*(*result + 24))(result, a2, v9 + 24);
      result = (*(*v36 + 32))(v36, a2);
      if (a7)
      {
        result = std::__tree<dmlc::parameter::FieldAccessEntry *>::__emplace_unique_key_args<dmlc::parameter::FieldAccessEntry *,dmlc::parameter::FieldAccessEntry * const&>(a7, &v36);
      }

LABEL_46:
      v9 += 48;
      if (v9 == a4)
      {
        return result;
      }
    }

    v36 = 0;
LABEL_8:
    if (a6)
    {
      v13 = *(a6 + 8);
      if (v13 >= *(a6 + 16))
      {
        result = std::vector<std::pair<std::string,std::string>>::__emplace_back_slow_path<std::pair<std::string,std::string> const&>(a6, v9);
      }

      else
      {
        std::pair<std::string,std::string>::pair[abi:ne200100](*(a6 + 8), v9);
        result = (v13 + 48);
        *(a6 + 8) = v13 + 48;
      }

      *(a6 + 8) = result;
    }

    else if (a5)
    {
      if (a5 != 2)
      {
        goto LABEL_48;
      }

      v14 = *(v9 + 23);
      if (v14 < 0)
      {
        v16 = *(v9 + 8);
        if (v16 <= 4)
        {
          goto LABEL_48;
        }

        v17 = *v9;
        v15 = *v9 + v16;
      }

      else
      {
        if (v14 < 5)
        {
          goto LABEL_48;
        }

        v15 = v9 + v14;
        v16 = *(v9 + 23);
        v17 = v9;
      }

      v18 = v17;
      while (1)
      {
        result = memchr(v18, 95, v16 - 1);
        if (!result)
        {
          goto LABEL_48;
        }

        if (*result == 24415)
        {
          break;
        }

        v18 = result + 1;
        v16 = v15 - v18;
        if (v15 - v18 < 2)
        {
          goto LABEL_48;
        }
      }

      if (result != v17)
      {
        goto LABEL_48;
      }

      if ((v14 & 0x80000000) != 0)
      {
        v19 = *v9;
        v20 = *(v9 + 8);
      }

      else
      {
        v19 = v9;
        v20 = v14;
      }

      v21 = &v19[v20];
      if (v20)
      {
        v22 = v19;
        v23 = &v19[v20];
        while (1)
        {
          ++v22;
          while (*(v22 - 1) != 95)
          {
            if (v22++ == v21)
            {
              goto LABEL_41;
            }
          }

          if (v22 == v21)
          {
            break;
          }

          if (*v22 == 95)
          {
            v23 = v22 - 1;
          }
        }
      }

      else
      {
        v23 = v19;
      }

LABEL_41:
      v25 = v23 - v19;
      if (v23 == v21)
      {
        v25 = -1;
      }

      if ((v14 & 0x80000000) != 0)
      {
        v14 = *(v9 + 8);
      }

      if (v25 != v14 - 2)
      {
LABEL_48:
        std::ostringstream::basic_ostringstream[abi:ne200100](v35);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "Cannot find argument '", 22);
        v27 = *(v9 + 23);
        if (v27 >= 0)
        {
          v28 = v9;
        }

        else
        {
          v28 = *v9;
        }

        if (v27 >= 0)
        {
          v29 = *(v9 + 23);
        }

        else
        {
          v29 = *(v9 + 8);
        }

        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "', Possible Arguments:\n", 23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "----------------\n", 17);
        dmlc::parameter::ParamManager::PrintDocString(v11, v35);
        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::runtime_error::runtime_error(exception, &v34);
        exception->__vftable = &unk_2883DE2B0;
      }
    }

    goto LABEL_46;
  }

  return result;
}

void sub_274CC1410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a17);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

uint64_t std::vector<std::pair<std::string,std::string>>::__emplace_back_slow_path<std::pair<std::string,std::string> const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v13.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v6);
  }

  v13.__first_ = 0;
  v13.__begin_ = (48 * v2);
  v13.__end_ = (48 * v2);
  v13.__end_cap_.__value_ = 0;
  std::pair<std::string,std::string>::pair[abi:ne200100]((48 * v2), a2);
  v7 = 48 * v2 + 48;
  v8 = *(a1 + 8) - *a1;
  v9 = 48 * v2 - v8;
  memcpy(v13.__begin_ - v8, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v13);
  return v7;
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

void sub_274CC15FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(a1, a2, a3, a4, a6, a5, &v24);
  v8 = a1[6];
  v9 = a1 + 7;
  if (v8 != a1 + 7)
  {
    do
    {
      v10 = v25[0];
      v11 = v8[7];
      if (!v25[0])
      {
        goto LABEL_10;
      }

      v12 = v25;
      do
      {
        v13 = v10[4];
        v14 = v13 >= v11;
        v15 = v13 < v11;
        if (v14)
        {
          v12 = v10;
        }

        v10 = v10[v15];
      }

      while (v10);
      if (v12 == v25 || v11 < v12[4])
      {
LABEL_10:
        (*(*v11 + 16))(v11, a2);
      }

      v16 = v8[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v8[2];
          v18 = *v17 == v8;
          v8 = v17;
        }

        while (!v18);
      }

      v8 = v17;
    }

    while (v17 != v9);
    v8 = a1[6];
  }

  if (v8 != v9)
  {
    do
    {
      v19 = v25[0];
      for (i = v8[7]; v19; v19 = *v19)
      {
        v21 = v19[4];
        if (i >= v21)
        {
          if (v21 >= i)
          {
            goto LABEL_25;
          }

          ++v19;
        }
      }

      (*(*i + 16))(i, a2);
LABEL_25:
      v22 = v8[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v8[2];
          v18 = *v23 == v8;
          v8 = v23;
        }

        while (!v18);
      }

      v8 = v23;
    }

    while (v23 != v9);
  }

  std::__tree<dmlc::parameter::FieldAccessEntry *>::destroy(&v24, v25[0]);
}

void *xgboost::obj::anonymous namespace::CheckRegInputs(void *result, uint64_t a2)
{
  v4 = result[4];
  if (v4 != *result)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long long>(&v4, result);
  }

  v4 = (*(result[3] + 8) - *result[3]) >> 2;
  v3 = (*(*a2 + 8) - **a2) >> 2;
  if (v4 != v3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v4, &v3);
  }

  v2 = *(result[9] + 8) - *result[9];
  if (v2)
  {
    v4 = v2 >> 2;
    if (v2 >> 2 != *result)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long long>(&v4, result);
    }
  }

  return result;
}

void sub_274CC1A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::LogCheckFormat<unsigned long,unsigned long long>(void *a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (", 2);
  v5 = MEMORY[0x277C68E50](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vs. ", 5);
  v7 = MEMORY[0x277C68E70](v6, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
  operator new();
}

void sub_274CC1CA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void dmlc::OMPException::Rethrow(std::exception_ptr *this)
{
  if (this->__ptr_)
  {
    std::exception_ptr::exception_ptr(&v2, this);
    v1.__ptr_ = &v2;
    std::rethrow_exception(v1);
    __break(1u);
  }
}

void dmlc::LogCheckFormat<int,int>(unsigned int *a1, unsigned int *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (", 2);
  v5 = MEMORY[0x277C68E20](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vs. ", 5);
  v7 = MEMORY[0x277C68E20](v6, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
  operator new();
}

void sub_274CC1EE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<xgboost::obj::$_1,std::allocator<xgboost::obj::$_1>,xgboost::ObjFunction * ()(void)>::~__func()
{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

void std::__function::__func<xgboost::obj::$_1,std::allocator<xgboost::obj::$_1>,xgboost::ObjFunction * ()(void)>::__clone()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void std::__function::__func<xgboost::obj::$_1,std::allocator<xgboost::obj::$_1>,xgboost::ObjFunction * ()(void)>::operator()()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

uint64_t std::__function::__func<xgboost::obj::$_1,std::allocator<xgboost::obj::$_1>,xgboost::ObjFunction * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<xgboost::obj::$_1,std::allocator<xgboost::obj::$_1>,xgboost::ObjFunction * ()(void)>::target_type()
{
}

{
}

{
}

void xgboost::obj::RegLossObj<xgboost::obj::SquaredLogError>::~RegLossObj(void *a1)
{
  *a1 = &unk_2883DD7E0;
  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

{
  *a1 = &unk_2883DD7E0;
  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

void xgboost::obj::RegLossObj<xgboost::obj::SquaredLogError>::LoadConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "reg_loss_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::FromJson<xgboost::obj::RegLossParam>(v7, *v4, (a1 + 24));
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274CC21F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::RegLossObj<xgboost::obj::SquaredLogError>::SaveConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "reg:squaredlogerror");
  v6 = &unk_2883E6F38;
  v7 = 0;
  *v8 = *v4;
  v9 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void xgboost::obj::RegLossObj<xgboost::obj::SquaredLogError>::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::obj::RegLossParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v2, (a1 + 24), a2);
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void xgboost::obj::RegLossObj<xgboost::obj::SquaredLogError>::GetGradient(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t **a5)
{
  v6 = a3;
  v62 = *MEMORY[0x277D85DE8];
  v55 = a2;
  v56 = a5;
  v8 = (*(*a2 + 8) - **a2) >> 2;
  v60.__ptr_ = 0;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(*a5, v8, &v60);
  v9 = *(*(a1 + 8) + 24);
  v10 = **(a1 + 16);
  *v10 = 1065353216;
  v11 = 0.0;
  if (*(v6[9] + 8) == *v6[9])
  {
    v11 = 1.0;
  }

  *(v10 + 4) = *(a1 + 28);
  *(v10 + 8) = v11;
  if (v8 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8;
  }

  if (v9 < 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (v8 % v13)
  {
    v14 = v8 / v13 + 1;
  }

  else
  {
    v14 = v8 / v13;
  }

  v15 = v6[5];
  if (v15 <= 1)
  {
    v15 = 1;
  }

  if (v9 < 0)
  {
    v58 = v15;
    v19 = 0;
    v60.__ptr_ = 0;
    v61.__m_.__sig = 850045863;
    DWORD1(v20) = 0;
    *(&v20 + 1) = 0;
    memset(v61.__m_.__opaque, 0, sizeof(v61.__m_.__opaque));
    v53 = v6;
    v54 = v13;
    do
    {
      v21 = *(a1 + 16);
      v23 = *v21;
      v22 = v21[1];
      if (v23)
      {
        v24 = 1;
      }

      else
      {
        v24 = v22 == 0;
      }

      if (!v24)
      {
        goto LABEL_60;
      }

      v25 = **v56;
      if (!v25 && (*v56)[1] != 0)
      {
        goto LABEL_60;
      }

      v27 = **v55;
      if (!v27 && (*v55)[1] != 0)
      {
        goto LABEL_60;
      }

      v29 = v6[3];
      v31 = *v29;
      v30 = v29[1];
      if (!v31 && v30 != 0)
      {
        goto LABEL_60;
      }

      v33 = v6[9];
      v35 = *v33;
      v34 = v33[1];
      if (!v35 && v34 != 0)
      {
        goto LABEL_60;
      }

      v37 = v22 - v23;
      v38 = v19 * v14;
      v39 = v8;
      if (v19 * v14 + v14 < v8)
      {
        v8 = v19 * v14 + v14;
      }

      if (v37 <= 4 || v37 == 8)
      {
LABEL_60:
        std::terminate();
      }

      v40 = v14;
      if (v38 < v8)
      {
        v42 = *(v23 + 4);
        v41 = *(v23 + 8);
        do
        {
          LODWORD(v20) = 1.0;
          if (v41 == 0.0)
          {
            LODWORD(v20) = *(v35 + 4 * (v38 / v58));
          }

          v43 = *(v27 + 4 * v38);
          v44 = *(v31 + 4 * v38);
          if (v44 == 1.0)
          {
            *&v20 = v42 * *&v20;
          }

          v59 = v20;
          if (v44 <= -1.0)
          {
            *v23 = 0;
          }

          v45 = fmaxf(v43, -1.0);
          v46 = log1pf(v45);
          v47 = log1pf(v44);
          v48.f32[0] = (v46 - v47) / (v45 + 1.0);
          v49 = ((v47 - v46) + 1.0) / ((v45 + 1.0) * (v45 + 1.0));
          v48.i32[1] = fmaxf(v49, 0.000001);
          *(&v20 + 1) = *(&v59 + 1);
          *&v20 = vmul_n_f32(v48, *&v59);
          *(v25 + 8 * v38++) = v20;
        }

        while (v38 != v8);
      }

      ++v19;
      v6 = v53;
      v8 = v39;
      v14 = v40;
    }

    while (v19 != v54);
    dmlc::OMPException::Rethrow(&v60);
    std::mutex::~mutex(&v61);
    std::exception_ptr::~exception_ptr(&v60);
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v60);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/../common/transform.h", 160);
    v17 = dmlc::LogMessageFatal::GetEntry(&v60);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Not part of device code. WITH_CUDA: ", 36);
    MEMORY[0x277C68DF0](v18, 0);
    dmlc::LogMessageFatal::~LogMessageFatal(&v60);
  }

  if (***(a1 + 16) == 0.0)
  {
    v50 = dmlc::LogMessageFatal::GetEntry(&v60);
    dmlc::LogMessageFatal::Entry::Init(v50, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/regression_obj.cu", 138);
    v51 = dmlc::LogMessageFatal::GetEntry(&v60);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "label must be greater than -1 for rmsle so that log(label + 1) can be valid.", 76);
    dmlc::LogMessageFatal::~LogMessageFatal(&v60);
  }

  v52 = *MEMORY[0x277D85DE8];
}

void sub_274CC27F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::exception_ptr a18, uint64_t a19)
{
  std::mutex::~mutex(&a19);
  std::exception_ptr::~exception_ptr(&a18);
  _Unwind_Resume(a1);
}

void xgboost::obj::RegLossObj<xgboost::obj::SquaredLogError>::PredTransform(uint64_t a1, uint64_t **a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = **a2;
  v3 = (*a2)[1];
  v7.__ptr_ = 0;
  v8.__m_.__sig = 850045863;
  memset(v8.__m_.__opaque, 0, sizeof(v8.__m_.__opaque));
  if (v3 != v2 && v2 == 0 && v3 != 0)
  {
    std::terminate();
  }

  dmlc::OMPException::Rethrow(&v7);
  std::mutex::~mutex(&v8);
  std::exception_ptr::~exception_ptr(&v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_274CC2900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9, uint64_t a10)
{
  std::mutex::~mutex(&a10);
  std::exception_ptr::~exception_ptr(&a9);
  _Unwind_Resume(a1);
}

uint64_t xgboost::obj::RegLossObj<xgboost::obj::SquaredLogError>::Targets(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) <= 1uLL)
  {
    return 1;
  }

  else
  {
    return *(a2 + 40);
  }
}

void std::__function::__func<xgboost::obj::$_2,std::allocator<xgboost::obj::$_2>,xgboost::ObjFunction * ()(void)>::~__func()
{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

void std::__function::__func<xgboost::obj::$_2,std::allocator<xgboost::obj::$_2>,xgboost::ObjFunction * ()(void)>::__clone()
{
  operator new();
}

{
  operator new();
}

void std::__function::__func<xgboost::obj::$_2,std::allocator<xgboost::obj::$_2>,xgboost::ObjFunction * ()(void)>::operator()()
{
  operator new();
}

{
  operator new();
}

uint64_t std::__function::__func<xgboost::obj::$_2,std::allocator<xgboost::obj::$_2>,xgboost::ObjFunction * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<xgboost::obj::$_2,std::allocator<xgboost::obj::$_2>,xgboost::ObjFunction * ()(void)>::target_type()
{
}

{
}

void xgboost::obj::RegLossObj<xgboost::obj::LogisticRegression>::~RegLossObj(void *a1)
{
  *a1 = &unk_2883DD8E8;
  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

{
  *a1 = &unk_2883DD8E8;
  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

void xgboost::obj::RegLossObj<xgboost::obj::LogisticRegression>::LoadConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "reg_loss_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::FromJson<xgboost::obj::RegLossParam>(v7, *v4, (a1 + 24));
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274CC2BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::RegLossObj<xgboost::obj::LogisticRegression>::SaveConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "reg:logistic");
  v6 = &unk_2883E6F38;
  v7 = 0;
  *v8 = *v4;
  v9 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void xgboost::obj::RegLossObj<xgboost::obj::LogisticRegression>::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::obj::RegLossParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v2, (a1 + 24), a2);
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void xgboost::obj::RegLossObj<xgboost::obj::LogisticRegression>::GetGradient(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t **a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v54 = a2;
  v55 = a5;
  v8 = (*(*a2 + 8) - **a2) >> 2;
  v58.__ptr_ = 0;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(*a5, v8, &v58);
  v9 = *(*(a1 + 8) + 24);
  v10 = **(a1 + 16);
  *v10 = 1065353216;
  v11 = 0.0;
  if (*(a3[9] + 8) == *a3[9])
  {
    v11 = 1.0;
  }

  *(v10 + 4) = *(a1 + 28);
  *(v10 + 8) = v11;
  if (v8 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8;
  }

  if (v9 < 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (v8 % v13)
  {
    v14 = v8 / v13 + 1;
  }

  else
  {
    v14 = v8 / v13;
  }

  v15 = a3[5];
  if (v15 <= 1)
  {
    v15 = 1;
  }

  if (v9 < 0)
  {
    v57 = v15;
    v58.__ptr_ = 0;
    v19 = 0;
    v59.__m_.__sig = 850045863;
    memset(v59.__m_.__opaque, 0, sizeof(v59.__m_.__opaque));
    v52 = v14;
    v53 = v13;
    do
    {
      v20 = *(a1 + 16);
      v22 = *v20;
      v21 = v20[1];
      if (v22)
      {
        v23 = 1;
      }

      else
      {
        v23 = v21 == 0;
      }

      if (!v23)
      {
        goto LABEL_67;
      }

      v24 = **v55;
      if (!v24 && (*v55)[1] != 0)
      {
        goto LABEL_67;
      }

      v26 = **v54;
      if (!v26 && (*v54)[1] != 0)
      {
        goto LABEL_67;
      }

      v28 = a3[3];
      v30 = *v28;
      v29 = v28[1];
      if (!v30 && v29 != 0)
      {
        goto LABEL_67;
      }

      v32 = a3[9];
      v34 = *v32;
      v33 = v32[1];
      if (!v34 && v33 != 0)
      {
        goto LABEL_67;
      }

      v36 = v21 - v22;
      v37 = v19 * v14;
      v38 = v8;
      if (v19 * v14 + v14 < v8)
      {
        v8 = v19 * v14 + v14;
      }

      if (v36 <= 4 || v36 == 8)
      {
LABEL_67:
        std::terminate();
      }

      if (v37 < v8)
      {
        v39 = *(v22 + 4);
        v40 = *(v22 + 8);
        do
        {
          v41 = *(v26 + 4 * v37);
          if (v41 >= -88.7)
          {
            v42 = -v41;
          }

          else
          {
            v42 = 88.7;
          }

          v43 = expf(v42);
          v44 = 1.0;
          if (v40 == 0.0)
          {
            v44 = *(v34 + 4 * (v37 / v57));
          }

          v45 = *(v30 + 4 * v37);
          if (v45 == 1.0)
          {
            v44 = v39 * v44;
          }

          if (v45 < 0.0 || v45 > 1.0)
          {
            *v22 = 0;
          }

          v47 = 1.0 / ((v43 + 1.0) + 1.0e-16);
          v48.f32[0] = v47 - v45;
          v48.i32[1] = fmaxf(v47 * (1.0 - v47), 1.0e-16);
          *(v24 + 8 * v37++) = vmul_n_f32(v48, v44);
        }

        while (v37 != v8);
      }

      ++v19;
      v14 = v52;
      v8 = v38;
    }

    while (v19 != v53);
    dmlc::OMPException::Rethrow(&v58);
    std::mutex::~mutex(&v59);
    std::exception_ptr::~exception_ptr(&v58);
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v58);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/../common/transform.h", 160);
    v17 = dmlc::LogMessageFatal::GetEntry(&v58);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Not part of device code. WITH_CUDA: ", 36);
    MEMORY[0x277C68DF0](v18, 0);
    dmlc::LogMessageFatal::~LogMessageFatal(&v58);
  }

  if (***(a1 + 16) == 0.0)
  {
    v49 = dmlc::LogMessageFatal::GetEntry(&v58);
    dmlc::LogMessageFatal::Entry::Init(v49, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/regression_obj.cu", 138);
    v50 = dmlc::LogMessageFatal::GetEntry(&v58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "label must be in [0,1] for logistic regression", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v58);
  }

  v51 = *MEMORY[0x277D85DE8];
}

void sub_274CC319C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::exception_ptr a16, uint64_t a17)
{
  std::mutex::~mutex(&a17);
  std::exception_ptr::~exception_ptr(&a16);
  _Unwind_Resume(a1);
}

void xgboost::obj::RegLossObj<xgboost::obj::LogisticRegression>::PredTransform(uint64_t a1, float ***a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = **a2;
  v2 = (*a2)[1];
  v8.__ptr_ = 0;
  v9.__m_.__sig = 850045863;
  memset(v9.__m_.__opaque, 0, sizeof(v9.__m_.__opaque));
  if (v2 != v3)
  {
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2 == 0;
    }

    if (v4)
    {
      v5 = v2 - v3;
      while (v5)
      {
        if (*v3 >= -88.7)
        {
          v6 = -*v3;
        }

        else
        {
          v6 = 88.7;
        }

        *v3++ = 1.0 / ((expf(v6) + 1.0) + 1.0e-16);
        if (!--v5)
        {
          goto LABEL_13;
        }
      }
    }

    std::terminate();
  }

LABEL_13:
  dmlc::OMPException::Rethrow(&v8);
  std::mutex::~mutex(&v9);
  std::exception_ptr::~exception_ptr(&v8);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_274CC330C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::mutex::~mutex((v9 + 8));
  std::exception_ptr::~exception_ptr(&a9);
  _Unwind_Resume(a1);
}

uint64_t xgboost::obj::RegLossObj<xgboost::obj::LogisticRegression>::Targets(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) <= 1uLL)
  {
    return 1;
  }

  else
  {
    return *(a2 + 40);
  }
}

float xgboost::obj::LogisticRegression::ProbToMargin(xgboost::obj::LogisticRegression *this, float a2)
{
  if (a2 <= 0.0 || a2 >= 1.0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v9);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/./regression_loss.h", 94);
    v6 = dmlc::LogMessageFatal::GetEntry(&v9);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: base_score > 0.0f && base_score < 1.0f", 52);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "base_score must be in (0,1) for logistic loss, got: ", 52);
    std::ostream::operator<<();
    dmlc::LogMessageFatal::~LogMessageFatal(&v9);
  }

  return -logf((1.0 / a2) + -1.0);
}

uint64_t std::__function::__func<xgboost::obj::$_3,std::allocator<xgboost::obj::$_3>,xgboost::ObjFunction * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::obj::RegLossObj<xgboost::obj::LogisticClassification>::~RegLossObj(void *a1)
{
  *a1 = &unk_2883DD9F0;
  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

{
  *a1 = &unk_2883DD9F0;
  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

void xgboost::obj::RegLossObj<xgboost::obj::LogisticClassification>::LoadConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "reg_loss_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::FromJson<xgboost::obj::RegLossParam>(v7, *v4, (a1 + 24));
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274CC3694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::RegLossObj<xgboost::obj::LogisticClassification>::SaveConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "binary:logistic");
  v6 = &unk_2883E6F38;
  v7 = 0;
  *v8 = *v4;
  v9 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void xgboost::obj::RegLossObj<xgboost::obj::LogisticClassification>::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::obj::RegLossParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v2, (a1 + 24), a2);
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void xgboost::obj::RegLossObj<xgboost::obj::LogisticClassification>::GetGradient(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t **a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v54 = a2;
  v55 = a5;
  v8 = (*(*a2 + 8) - **a2) >> 2;
  v58.__ptr_ = 0;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(*a5, v8, &v58);
  v9 = *(*(a1 + 8) + 24);
  v10 = **(a1 + 16);
  *v10 = 1065353216;
  v11 = 0.0;
  if (*(a3[9] + 8) == *a3[9])
  {
    v11 = 1.0;
  }

  *(v10 + 4) = *(a1 + 28);
  *(v10 + 8) = v11;
  if (v8 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8;
  }

  if (v9 < 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (v8 % v13)
  {
    v14 = v8 / v13 + 1;
  }

  else
  {
    v14 = v8 / v13;
  }

  v15 = a3[5];
  if (v15 <= 1)
  {
    v15 = 1;
  }

  if (v9 < 0)
  {
    v57 = v15;
    v58.__ptr_ = 0;
    v19 = 0;
    v59.__m_.__sig = 850045863;
    memset(v59.__m_.__opaque, 0, sizeof(v59.__m_.__opaque));
    v52 = v14;
    v53 = v13;
    do
    {
      v20 = *(a1 + 16);
      v22 = *v20;
      v21 = v20[1];
      if (v22)
      {
        v23 = 1;
      }

      else
      {
        v23 = v21 == 0;
      }

      if (!v23)
      {
        goto LABEL_67;
      }

      v24 = **v55;
      if (!v24 && (*v55)[1] != 0)
      {
        goto LABEL_67;
      }

      v26 = **v54;
      if (!v26 && (*v54)[1] != 0)
      {
        goto LABEL_67;
      }

      v28 = a3[3];
      v30 = *v28;
      v29 = v28[1];
      if (!v30 && v29 != 0)
      {
        goto LABEL_67;
      }

      v32 = a3[9];
      v34 = *v32;
      v33 = v32[1];
      if (!v34 && v33 != 0)
      {
        goto LABEL_67;
      }

      v36 = v21 - v22;
      v37 = v19 * v14;
      v38 = v8;
      if (v19 * v14 + v14 < v8)
      {
        v8 = v19 * v14 + v14;
      }

      if (v36 <= 4 || v36 == 8)
      {
LABEL_67:
        std::terminate();
      }

      if (v37 < v8)
      {
        v39 = *(v22 + 4);
        v40 = *(v22 + 8);
        do
        {
          v41 = *(v26 + 4 * v37);
          if (v41 >= -88.7)
          {
            v42 = -v41;
          }

          else
          {
            v42 = 88.7;
          }

          v43 = expf(v42);
          v44 = 1.0;
          if (v40 == 0.0)
          {
            v44 = *(v34 + 4 * (v37 / v57));
          }

          v45 = *(v30 + 4 * v37);
          if (v45 == 1.0)
          {
            v44 = v39 * v44;
          }

          if (v45 < 0.0 || v45 > 1.0)
          {
            *v22 = 0;
          }

          v47 = 1.0 / ((v43 + 1.0) + 1.0e-16);
          v48.f32[0] = v47 - v45;
          v48.i32[1] = fmaxf(v47 * (1.0 - v47), 1.0e-16);
          *(v24 + 8 * v37++) = vmul_n_f32(v48, v44);
        }

        while (v37 != v8);
      }

      ++v19;
      v14 = v52;
      v8 = v38;
    }

    while (v19 != v53);
    dmlc::OMPException::Rethrow(&v58);
    std::mutex::~mutex(&v59);
    std::exception_ptr::~exception_ptr(&v58);
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v58);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/../common/transform.h", 160);
    v17 = dmlc::LogMessageFatal::GetEntry(&v58);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Not part of device code. WITH_CUDA: ", 36);
    MEMORY[0x277C68DF0](v18, 0);
    dmlc::LogMessageFatal::~LogMessageFatal(&v58);
  }

  if (***(a1 + 16) == 0.0)
  {
    v49 = dmlc::LogMessageFatal::GetEntry(&v58);
    dmlc::LogMessageFatal::Entry::Init(v49, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/regression_obj.cu", 138);
    v50 = dmlc::LogMessageFatal::GetEntry(&v58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "label must be in [0,1] for logistic regression", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v58);
  }

  v51 = *MEMORY[0x277D85DE8];
}

void sub_274CC3C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::exception_ptr a16, uint64_t a17)
{
  std::mutex::~mutex(&a17);
  std::exception_ptr::~exception_ptr(&a16);
  _Unwind_Resume(a1);
}

void xgboost::obj::RegLossObj<xgboost::obj::LogisticClassification>::PredTransform(uint64_t a1, float ***a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = **a2;
  v2 = (*a2)[1];
  v8.__ptr_ = 0;
  v9.__m_.__sig = 850045863;
  memset(v9.__m_.__opaque, 0, sizeof(v9.__m_.__opaque));
  if (v2 != v3)
  {
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2 == 0;
    }

    if (v4)
    {
      v5 = v2 - v3;
      while (v5)
      {
        if (*v3 >= -88.7)
        {
          v6 = -*v3;
        }

        else
        {
          v6 = 88.7;
        }

        *v3++ = 1.0 / ((expf(v6) + 1.0) + 1.0e-16);
        if (!--v5)
        {
          goto LABEL_13;
        }
      }
    }

    std::terminate();
  }

LABEL_13:
  dmlc::OMPException::Rethrow(&v8);
  std::mutex::~mutex(&v9);
  std::exception_ptr::~exception_ptr(&v8);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_274CC3DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::mutex::~mutex((v9 + 8));
  std::exception_ptr::~exception_ptr(&a9);
  _Unwind_Resume(a1);
}

uint64_t xgboost::obj::RegLossObj<xgboost::obj::LogisticClassification>::Targets(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) <= 1uLL)
  {
    return 1;
  }

  else
  {
    return *(a2 + 40);
  }
}

uint64_t std::__function::__func<xgboost::obj::$_4,std::allocator<xgboost::obj::$_4>,xgboost::ObjFunction * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::obj::RegLossObj<xgboost::obj::LogisticRaw>::~RegLossObj(void *a1)
{
  *a1 = &unk_2883DDAF8;
  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

{
  *a1 = &unk_2883DDAF8;
  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

void xgboost::obj::RegLossObj<xgboost::obj::LogisticRaw>::LoadConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "reg_loss_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  xgboost::FromJson<xgboost::obj::RegLossParam>(v7, *v4, (a1 + 24));
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274CC409C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::RegLossObj<xgboost::obj::LogisticRaw>::SaveConfig(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "binary:logitraw");
  v6 = &unk_2883E6F38;
  v7 = 0;
  *v8 = *v4;
  v9 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void xgboost::obj::RegLossObj<xgboost::obj::LogisticRaw>::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::obj::RegLossParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v2, (a1 + 24), a2);
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void xgboost::obj::RegLossObj<xgboost::obj::LogisticRaw>::GetGradient(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t **a5)
{
  v6 = a3;
  v61 = *MEMORY[0x277D85DE8];
  v54 = a2;
  v55 = a5;
  v8 = (*(*a2 + 8) - **a2) >> 2;
  v59.__ptr_ = 0;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(*a5, v8, &v59);
  v9 = *(*(a1 + 8) + 24);
  v10 = **(a1 + 16);
  *v10 = 1065353216;
  v11 = 0.0;
  if (*(v6[9] + 8) == *v6[9])
  {
    v11 = 1.0;
  }

  *(v10 + 4) = *(a1 + 28);
  *(v10 + 8) = v11;
  if (v8 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8;
  }

  if (v9 < 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (v8 % v13)
  {
    v14 = v8 / v13 + 1;
  }

  else
  {
    v14 = v8 / v13;
  }

  v15 = v6[5];
  if (v15 <= 1)
  {
    v15 = 1;
  }

  if (v9 < 0)
  {
    v57 = v15;
    v19 = 0;
    v59.__ptr_ = 0;
    v60.__m_.__sig = 850045863;
    memset(v60.__m_.__opaque, 0, sizeof(v60.__m_.__opaque));
    v52 = v6;
    v53 = v13;
    do
    {
      v20 = *(a1 + 16);
      v22 = *v20;
      v21 = v20[1];
      if (v22)
      {
        v23 = 1;
      }

      else
      {
        v23 = v21 == 0;
      }

      if (!v23)
      {
        goto LABEL_67;
      }

      v24 = **v55;
      if (!v24 && (*v55)[1] != 0)
      {
        goto LABEL_67;
      }

      v26 = **v54;
      if (!v26 && (*v54)[1] != 0)
      {
        goto LABEL_67;
      }

      v28 = v6[3];
      v30 = *v28;
      v29 = v28[1];
      if (!v30 && v29 != 0)
      {
        goto LABEL_67;
      }

      v32 = v6[9];
      v34 = *v32;
      v33 = v32[1];
      if (!v34 && v33 != 0)
      {
        goto LABEL_67;
      }

      v36 = v21 - v22;
      v37 = v19 * v14;
      v38 = v8;
      if (v19 * v14 + v14 < v8)
      {
        v8 = v19 * v14 + v14;
      }

      if (v36 <= 4 || v36 == 8)
      {
LABEL_67:
        std::terminate();
      }

      v39 = v14;
      if (v37 < v8)
      {
        v40 = *(v22 + 4);
        v41 = *(v22 + 8);
        do
        {
          v42 = 1.0;
          if (v41 == 0.0)
          {
            v42 = *(v34 + 4 * (v37 / v57));
          }

          v43 = *(v26 + 4 * v37);
          v44 = *(v30 + 4 * v37);
          if (v44 == 1.0)
          {
            v42 = v40 * v42;
          }

          v58 = v42;
          if (v44 < 0.0 || v44 > 1.0)
          {
            *v22 = 0;
          }

          if (v43 >= -88.7)
          {
            v46 = -v43;
          }

          else
          {
            v46 = 88.7;
          }

          v47 = 1.0 / ((expf(v46) + 1.0) + 1.0e-16);
          v48.f32[0] = v47 - v44;
          v48.i32[1] = fmaxf(v47 * (1.0 - v47), 1.0e-16);
          *(v24 + 8 * v37++) = vmul_n_f32(v48, v58);
        }

        while (v37 != v8);
      }

      ++v19;
      v6 = v52;
      v8 = v38;
      v14 = v39;
    }

    while (v19 != v53);
    dmlc::OMPException::Rethrow(&v59);
    std::mutex::~mutex(&v60);
    std::exception_ptr::~exception_ptr(&v59);
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v59);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/../common/transform.h", 160);
    v17 = dmlc::LogMessageFatal::GetEntry(&v59);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Not part of device code. WITH_CUDA: ", 36);
    MEMORY[0x277C68DF0](v18, 0);
    dmlc::LogMessageFatal::~LogMessageFatal(&v59);
  }

  if (***(a1 + 16) == 0.0)
  {
    v49 = dmlc::LogMessageFatal::GetEntry(&v59);
    dmlc::LogMessageFatal::Entry::Init(v49, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/regression_obj.cu", 138);
    v50 = dmlc::LogMessageFatal::GetEntry(&v59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "label must be in [0,1] for logistic regression", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v59);
  }

  v51 = *MEMORY[0x277D85DE8];
}

void sub_274CC4690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::exception_ptr a18, uint64_t a19)
{
  std::mutex::~mutex(&a19);
  std::exception_ptr::~exception_ptr(&a18);
  _Unwind_Resume(a1);
}

void xgboost::obj::RegLossObj<xgboost::obj::LogisticRaw>::PredTransform(uint64_t a1, uint64_t **a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = **a2;
  v3 = (*a2)[1];
  v7.__ptr_ = 0;
  v8.__m_.__sig = 850045863;
  memset(v8.__m_.__opaque, 0, sizeof(v8.__m_.__opaque));
  if (v3 != v2 && v2 == 0 && v3 != 0)
  {
    std::terminate();
  }

  dmlc::OMPException::Rethrow(&v7);
  std::mutex::~mutex(&v8);
  std::exception_ptr::~exception_ptr(&v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_274CC479C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9, uint64_t a10)
{
  std::mutex::~mutex(&a10);
  std::exception_ptr::~exception_ptr(&a9);
  _Unwind_Resume(a1);
}

uint64_t xgboost::obj::RegLossObj<xgboost::obj::LogisticRaw>::Targets(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) <= 1uLL)
  {
    return 1;
  }

  else
  {
    return *(a2 + 40);
  }
}

void std::__function::__func<xgboost::obj::$_5,std::allocator<xgboost::obj::$_5>,xgboost::ObjFunction * ()(void)>::operator()()
{
  if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst() + 4) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/regression_obj.cu");
    xgboost::ConsoleLogger::ConsoleLogger(v2, __p, 203, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "reg:linear is now deprecated in favor of reg:squarederror.", 58);
    xgboost::ConsoleLogger::~ConsoleLogger(v2);
    if (v1 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_274CC4928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16)
{
  xgboost::ConsoleLogger::~ConsoleLogger(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::obj::$_5,std::allocator<xgboost::obj::$_5>,xgboost::ObjFunction * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<xgboost::obj::$_6,std::allocator<xgboost::obj::$_6>,xgboost::ObjFunction * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::obj::PseudoHuberRegression::LoadConfig(xgboost::obj::PseudoHuberRegression *this, char ***a2)
{
  v4 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "pseduo_huber_param");
  v5 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>((v4 + 16), __p);
  v6 = v4 + 24;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 != v5)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "pseduo_huber_param");
    v7 = (*(**a2 + 3))(*a2, __p);
    xgboost::FromJson<xgboost::PesudoHuberParam>(v7, (this + 16), v8);
    v11 = v8;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_274CC4BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::PseudoHuberRegression::SaveConfig(xgboost::obj::PseudoHuberRegression *this, xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "reg:pseudohubererror");
  v6 = &unk_2883E6F38;
  v7 = 0;
  *v8 = *v4;
  v9 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void xgboost::obj::PseudoHuberRegression::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::PesudoHuberParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>((a1 + 16), a2, v2);
  v3 = v2;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void xgboost::obj::PseudoHuberRegression::GetGradient(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  v89 = *MEMORY[0x277D85DE8];
  v74 = *(a1 + 20);
  v87.__ptr_ = 0;
  if (v74 == 0.0)
  {
    dmlc::LogCheckFormat<float,double>(&v74, &v87);
  }

  v9 = *(*(a1 + 8) + 24);
  if (v9 < 0)
  {
    v16 = *(a3 + 24);
    v14 = *(a3 + 32);
    v10 = *v16;
    v17 = v16[1] - *v16;
    v15 = v17 >> 2;
    v13 = *(a3 + 40);
    if (v17)
    {
      v12 = v13 * v14;
    }

    else
    {
      v12 = 0;
    }

    v11 = v17 >> 2;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v14 = *(a3 + 32);
    v13 = *(a3 + 40);
    v15 = (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2;
  }

  v53[0] = 0;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(*a5, v15, v53);
  v18 = **a5;
  v19 = (*a5)[1];
  if (!v18 && v19 || (v20 = *(a1 + 8), v21 = **a2, v22 = (*a2)[1], !v21) && v22)
  {
LABEL_53:
    std::terminate();
  }

  v23 = (v19 - v18) >> 3;
  v24 = (v22 - v21) >> 2;
  if (*(v20 + 24) == -1)
  {
    v25 = **(a3 + 72);
    v26 = (*(*(a3 + 72) + 8) - v25) >> 2;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v53[0] = v13;
  v53[1] = 1;
  v54[0] = v14;
  v54[1] = v13;
  v54[2] = v11;
  v54[3] = v10;
  v54[4] = v10;
  v54[5] = v12;
  v55 = v9;
  v56 = 1;
  v57 = v24;
  v58 = v24;
  v59 = v21;
  v60 = v21;
  v61 = v24;
  v62 = -1;
  v63 = v74;
  v64 = v26;
  v65 = v25;
  v66 = 1065353216;
  v67 = 1;
  v68 = v23;
  v69 = v23;
  v70 = v18;
  v71 = v18;
  v72 = v23;
  v73 = -1;
  if (*(v20 + 24) != -1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v87);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/../common/common.h", 239);
    v28 = dmlc::LogMessageFatal::GetEntry(&v87);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "XGBoost version not compiled with GPU support.", 46);
    dmlc::LogMessageFatal::~LogMessageFatal(&v87);
  }

  v75 = v13;
  v76 = 1;
  v77[0] = v14;
  v77[1] = v13;
  v78 = v11;
  v79 = v10;
  v80 = v10;
  v81 = v12;
  v82 = v9;
  if (v11 == v12)
  {
    goto LABEL_30;
  }

  v29 = 0;
  v87.__ptr_ = v13;
  v88.__m_.__sig = 1;
  while (*(&v75 + v29) == *(&v87.__ptr_ + v29))
  {
    v29 += 8;
    if (v29 == 16)
    {
      goto LABEL_30;
    }
  }

  v30 = 0;
  v87.__ptr_ = 1;
  v88.__m_.__sig = v14;
  do
  {
    v31 = *(&v75 + v30);
    v32 = *(&v87.__ptr_ + v30);
    v33 = v31 != v32 || v30 == 8;
    v30 += 8;
  }

  while (!v33);
  if (v31 == v32)
  {
LABEL_30:
    v87.__ptr_ = 0;
    v88.__m_.__sig = 850045863;
    v34 = 0;
    memset(v88.__m_.__opaque, 0, sizeof(v88.__m_.__opaque));
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        v36 = *(v10 + 4 * i);
        v85 = 2;
        v86 = v54;
        v37 = xgboost::linalg::UnravelIndex<2ul>(i, &v85, v34);
        if (v56 * i >= v58)
        {
          goto LABEL_39;
        }

        v38 = &v66;
        if (v64)
        {
          if (v64 <= v37)
          {
            goto LABEL_53;
          }

          v38 = (v65 + 4 * v37);
        }

        if (v67 * i >= v69)
        {
LABEL_39:
          __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
        }

        v39.f32[0] = *(v60 + 4 * v56 * i) - v36;
        v40.f32[0] = sqrtf(((v39.f32[0] * v39.f32[0]) / (v63 * v63)) + 1.0);
        v39.f32[1] = v63 * v63;
        v40.f32[1] = ((v63 * v63) + (v39.f32[0] * v39.f32[0])) * v40.f32[0];
        v34 = vmul_n_f32(vdiv_f32(v39, v40), *v38);
        *(v71 + 8 * v67 * i) = v34;
      }
    }
  }

  else
  {
    v87.__ptr_ = 0;
    v88.__m_.__sig = 850045863;
    v42 = 0;
    memset(v88.__m_.__opaque, 0, sizeof(v88.__m_.__opaque));
    if (v12)
    {
      for (j = 0; j != v12; ++j)
      {
        v83.__ptr_ = 2;
        v84 = v77;
        v44 = xgboost::linalg::UnravelIndex<2ul>(j, &v83, v42);
        v47 = v75 * v44 + v76 * v46;
        if (v47 >= v78)
        {
          goto LABEL_51;
        }

        v48 = *(v80 + 4 * v47);
        v85 = 2;
        v86 = v54;
        v49 = xgboost::linalg::UnravelIndex<2ul>(j, &v85, v45);
        if (v56 * j >= v58)
        {
          goto LABEL_51;
        }

        v50 = &v66;
        if (v64)
        {
          if (v64 <= v49)
          {
            goto LABEL_53;
          }

          v50 = (v65 + 4 * v49);
        }

        if (v67 * j >= v69)
        {
LABEL_51:
          __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
        }

        v51.f32[0] = *(v60 + 4 * v56 * j) - v48;
        v52.f32[0] = sqrtf(((v51.f32[0] * v51.f32[0]) / (v63 * v63)) + 1.0);
        v51.f32[1] = v63 * v63;
        v52.f32[1] = ((v63 * v63) + (v51.f32[0] * v51.f32[0])) * v52.f32[0];
        v42 = vmul_n_f32(vdiv_f32(v51, v52), *v50);
        *(v71 + 8 * v67 * j) = v42;
      }
    }
  }

  dmlc::OMPException::Rethrow(&v87);
  std::mutex::~mutex(&v88);
  std::exception_ptr::~exception_ptr(&v87);
  v41 = *MEMORY[0x277D85DE8];
}

void sub_274CC54F0(_Unwind_Exception *a1)
{
  std::mutex::~mutex((v1 + 8));
  std::exception_ptr::~exception_ptr((v2 - 184));
  _Unwind_Resume(a1);
}

void sub_274CC54FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (v11)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a10, v11);
  }

  _Unwind_Resume(a1);
}

void sub_274CC5558(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::obj::PseudoHuberRegression::Targets(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) <= 1uLL)
  {
    return 1;
  }

  else
  {
    return *(a2 + 40);
  }
}

void xgboost::FromJson<xgboost::PesudoHuberParam>(char ***a1@<X0>, xgboost::PesudoHuberParam *a2@<X1>, void *a3@<X8>)
{
  v5 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a1);
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v6 = v5[2];
  v7 = v5 + 3;
  if (v6 != v5 + 3)
  {
    do
    {
      v8 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v6[7]);
      v14[3] = v6 + 4;
      v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v13, v6 + 4);
      std::string::operator=((v9 + 56), (v8 + 16));
      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v7);
  }

  xgboost::XGBoostParameter<xgboost::PesudoHuberParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(a2, &v13, a3);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v13, v14[0]);
}

void xgboost::XGBoostParameter<xgboost::PesudoHuberParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(xgboost::PesudoHuberParam *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*this == 1)
  {

    dmlc::Parameter<xgboost::PesudoHuberParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(this, a2, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = xgboost::PesudoHuberParam::__MANAGER__(this);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v6, this, *a2, (a2 + 8), a3, 0);
    *this = 1;
  }
}

void sub_274CC5748(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dmlc::Parameter<xgboost::PesudoHuberParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(xgboost::PesudoHuberParam *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = xgboost::PesudoHuberParam::__MANAGER__(a1);
  dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v6, a1, *a2, (a2 + 8), 0, a3, 0);
}

void sub_274CC57C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::ToJson<xgboost::PesudoHuberParam>(xgboost::PesudoHuberParam *a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0x300000000;
  *a2 = &unk_2883E6E50;
  a2[3] = 0;
  a2[2] = a2 + 3;
  a2[4] = 0;
  v3 = xgboost::PesudoHuberParam::__MANAGER__(a1);
  dmlc::parameter::ParamManager::GetDict(v3, v5);
  std::map<std::string,std::string>::map[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string> *>>(&v6, v5[0], v5[1]);
  v8 = v5;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v4 = v6;
  if (v6 != &v7)
  {
    xgboost::JsonString::JsonString(v5, (v6 + 56));
    v8 = (v4 + 32);
    std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 2), (v4 + 32));
    xgboost::Json::operator=();
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v6, v7);
}

void sub_274CC594C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  a21 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a21);
  *v21 = v22;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v23, *(v21 + 24));
  _Unwind_Resume(a1);
}

void xgboost::XGBoostParameter<xgboost::PesudoHuberParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(xgboost::PesudoHuberParam *this@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*this == 1)
  {

    dmlc::Parameter<xgboost::PesudoHuberParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(this, a2, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = xgboost::PesudoHuberParam::__MANAGER__(this);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(v6, this, *a2, a2[1], a3, 0);
    *this = 1;
  }
}

void sub_274CC5A68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *dmlc::Parameter<xgboost::PesudoHuberParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>@<X0>(xgboost::PesudoHuberParam *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = xgboost::PesudoHuberParam::__MANAGER__(a1);
  return dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(v6, a1, *a2, a2[1], 0, a3, 0);
}

void sub_274CC5ADC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dmlc::LogCheckFormat<float,double>(int *a1, double *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (", 2);
  v4 = *a1;
  v5 = std::ostream::operator<<();
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vs. ", 5);
  v7 = MEMORY[0x277C68E00](v6, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
  operator new();
}

void sub_274CC5CA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

unint64_t xgboost::linalg::UnravelIndex<2ul>(unint64_t a1, void *a2, int8x8_t a3)
{
  v3 = a2[1];
  if (HIDWORD(a1))
  {
    v6[0] = *a2;
    v6[1] = v3;
    return xgboost::linalg::detail::UnravelImpl<unsigned long long,2>(a1, v6);
  }

  else
  {
    v5[0] = *a2;
    v5[1] = v3;
    return xgboost::linalg::detail::UnravelImpl<unsigned int,2>(a1, v5, a3);
  }
}

unint64_t xgboost::linalg::detail::UnravelImpl<unsigned long long,2>(unint64_t a1, void *a2)
{
  if (*a2 < 2uLL)
  {
    std::terminate();
  }

  v2 = *(a2[1] + 8);
  v3 = vaddlv_u8(vcnt_s8((v2 - 1)));
  if ((v2 & (v2 - 1)) != 0)
  {
    return a1 / v2;
  }

  else
  {
    return a1 >> v3;
  }
}

uint64_t xgboost::linalg::detail::UnravelImpl<unsigned int,2>(unsigned int a1, void *a2, int8x8_t a3)
{
  if (*a2 < 2uLL)
  {
    std::terminate();
  }

  v3 = *(a2[1] + 8);
  a3.i32[0] = v3 - 1;
  v4 = a1 >> vaddlv_u8(vcnt_s8(a3));
  if ((v3 & (v3 - 1)) != 0)
  {
    return a1 / v3;
  }

  else
  {
    return v4;
  }
}

uint64_t xgboost::linalg::TensorView<float const,2>::operator()<unsigned long &,unsigned long &>(void *a1, void *a2, void *a3)
{
  v3 = *a1 * *a2 + a1[1] * *a3;
  if (v3 >= a1[4])
  {
    __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
  }

  return a1[6] + 4 * v3;
}

uint64_t std::__function::__func<xgboost::obj::$_7,std::allocator<xgboost::obj::$_7>,xgboost::ObjFunction * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::obj::PoissonRegression::~PoissonRegression(xgboost::obj::PoissonRegression *this)
{
  *this = &unk_2883DDD88;
  xgboost::HostDeviceVector<int>::~HostDeviceVector();
}

{
  *this = &unk_2883DDD88;
  xgboost::HostDeviceVector<int>::~HostDeviceVector();
}

void xgboost::obj::PoissonRegression::LoadConfig(xgboost::obj::PoissonRegression *this, const xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "poisson_regression_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  v5 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v4);
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  v6 = *(v5 + 2);
  v7 = (v5 + 24);
  if (v6 != (v5 + 24))
  {
    do
    {
      v8 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v6[7]);
      v19[3] = v6 + 4;
      v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v18, v6 + 4);
      v5 = std::string::operator=((v9 + 56), (v8 + 16));
      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v7);
  }

  if (*(this + 16) == 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    xgboost::obj::PoissonRegressionParam::__MANAGER__(v5);
    dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&xmmword_280AF5C40, this + 16, v18, v19, 0, &v15, 0);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    xgboost::obj::PoissonRegressionParam::__MANAGER__(v5);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&xmmword_280AF5C40, this + 16, v18, v19, &v15, 0);
    *(this + 16) = 1;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v18, v19[0]);
  v18 = &v15;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v18);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274CC61CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, void *a20)
{
  *(v20 - 56) = &a16;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100]((v20 - 56));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a19, a20);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::obj::PoissonRegression::SaveConfig(xgboost::obj::PoissonRegression *this, xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v3, "count:poisson");
  v5 = &unk_2883E6F38;
  v6 = 0;
  *v7 = *v3;
  v8 = v4;
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  (*(**a2 + 24))(*a2, &__p);
  xgboost::Json::operator=();
}

void xgboost::obj::PoissonRegression::Configure(_BYTE *a1, uint64_t *a2)
{
  v3 = a1 + 16;
  if (a1[16] == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    xgboost::obj::PoissonRegressionParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&xmmword_280AF5C40, v3, *a2, a2[1], 0, &v4, 0);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    xgboost::obj::PoissonRegressionParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&xmmword_280AF5C40, v3, *a2, a2[1], &v4, 0);
    *v3 = 1;
  }

  v7 = &v4;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_274CC6640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void xgboost::obj::PoissonRegression::GetGradient(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v9 = **(a3 + 24);
  v10 = *(*(a3 + 24) + 8);
  LODWORD(v56) = 0;
  v11 = v10 - v9;
  v57 = v11 >> 2;
  if (!v11)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v57, &v56);
  }

  v57 = ((*a2)[1] - **a2) >> 2;
  v56 = (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2;
  if (v57 != v56)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v57, &v56);
  }

  v57 = ((*a2)[1] - **a2) >> 2;
  *__x = 0;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(*a5, v57, __x);
  v12 = *(*(a1 + 8) + 24);
  v13 = *(a1 + 24);
  __x[0] = 0;
  std::vector<int>::resize(v13, 1uLL, __x);
  v14 = **(a1 + 24);
  v15 = *(*(a1 + 24) + 8) - v14;
  if (v15 >= 1)
  {
    memset_pattern16(v14, &unk_274E1F3C0, v15);
  }

  v16 = *(a3 + 72);
  v18 = *v16;
  v17 = v16[1];
  v19 = v57;
  v20 = v17 - *v16;
  if (v20)
  {
    v56 = v20 >> 2;
    if (v20 >> 2 != v57)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v56, &v57);
    }

    v19 = v57;
  }

  if (v12 < 0)
  {
    v24 = *(a1 + 20);
    *__x = 0;
    v59.__m_.__sig = 850045863;
    memset(v59.__m_.__opaque, 0, sizeof(v59.__m_.__opaque));
    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        v26 = *(a1 + 24);
        v27 = *v26;
        v28 = *(v26 + 8);
        if (v27)
        {
          v29 = 1;
        }

        else
        {
          v29 = v28 == 0;
        }

        if (!v29)
        {
          goto LABEL_57;
        }

        v31 = **a5;
        v30 = (*a5)[1];
        if (!v31 && v30 != 0)
        {
          goto LABEL_57;
        }

        v33 = **a2;
        v34 = (*a2)[1];
        if (!v33 && v34 != 0)
        {
          goto LABEL_57;
        }

        v36 = *(a3 + 24);
        v37 = *v36;
        v38 = v36[1];
        if (!v37 && v38 != 0)
        {
          goto LABEL_57;
        }

        v40 = *(a3 + 72);
        v41 = *v40;
        v42 = v40[1];
        v43 = v41 || v42 == 0;
        if (!v43 || (v34 - v33) >> 2 <= i)
        {
          goto LABEL_57;
        }

        v44 = *(v33 + 4 * i);
        if (v17 == v18)
        {
          v45 = 1.0;
        }

        else
        {
          if ((v42 - v41) >> 2 <= i)
          {
            goto LABEL_57;
          }

          v45 = *(v41 + 4 * i);
        }

        if ((v38 - v37) >> 2 <= i)
        {
          goto LABEL_57;
        }

        v46 = *(v37 + 4 * i);
        if (v46 < 0.0)
        {
          if (v28 == v27)
          {
            goto LABEL_57;
          }

          *v27 = 0;
        }

        if ((v30 - v31) >> 3 <= i)
        {
LABEL_57:
          std::terminate();
        }

        v55 = v45;
        v54 = expf(v24 + v44);
        v47.f32[0] = expf(v44) - v46;
        v47.f32[1] = v54;
        *(v31 + 8 * i) = vmul_n_f32(v47, v55);
      }
    }

    dmlc::OMPException::Rethrow(__x);
    std::mutex::~mutex(&v59);
    std::exception_ptr::~exception_ptr(__x);
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__x);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/../common/transform.h", 160);
    v22 = dmlc::LogMessageFatal::GetEntry(__x);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Not part of device code. WITH_CUDA: ", 36);
    MEMORY[0x277C68DF0](v23, 0);
    dmlc::LogMessageFatal::~LogMessageFatal(__x);
  }

  v48 = *(a1 + 24);
  v49 = *v48;
  v50 = *(v48 + 8);
  if (*v48 != v50)
  {
    do
    {
      if (!*v49)
      {
        v51 = dmlc::LogMessageFatal::GetEntry(__x);
        dmlc::LogMessageFatal::Entry::Init(v51, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/regression_obj.cu", 332);
        v52 = dmlc::LogMessageFatal::GetEntry(__x);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "PoissonRegression: label must be nonnegative", 44);
        dmlc::LogMessageFatal::~LogMessageFatal(__x);
      }

      ++v49;
    }

    while (v49 != v50);
  }

  v53 = *MEMORY[0x277D85DE8];
}

void sub_274CC6BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, std::exception_ptr a18)
{
  std::mutex::~mutex((v18 + 8));
  std::exception_ptr::~exception_ptr(&a18);
  _Unwind_Resume(a1);
}

void xgboost::obj::PoissonRegression::PredTransform(uint64_t a1, float ***a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = **a2;
  v2 = (*a2)[1];
  v7.__ptr_ = 0;
  v8.__m_.__sig = 850045863;
  memset(v8.__m_.__opaque, 0, sizeof(v8.__m_.__opaque));
  if (v2 != v3)
  {
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2 == 0;
    }

    if (v4)
    {
      v5 = v2 - v3;
      while (v5)
      {
        *v3 = expf(*v3);
        ++v3;
        if (!--v5)
        {
          goto LABEL_10;
        }
      }
    }

    std::terminate();
  }

LABEL_10:
  dmlc::OMPException::Rethrow(&v7);
  std::mutex::~mutex(&v8);
  std::exception_ptr::~exception_ptr(&v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_274CC6D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::mutex::~mutex((v9 + 8));
  std::exception_ptr::~exception_ptr(&a9);
  _Unwind_Resume(a1);
}

void dmlc::LogCheckFormat<unsigned long,unsigned int>(void *a1, unsigned int *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " (", 2);
  v5 = MEMORY[0x277C68E50](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vs. ", 5);
  v7 = MEMORY[0x277C68E30](v6, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
  operator new();
}

void sub_274CC6F60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::obj::$_8,std::allocator<xgboost::obj::$_8>,xgboost::ObjFunction * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::obj::CoxRegression::SaveConfig(xgboost::obj::CoxRegression *this, xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "survival:cox");
  v6 = &unk_2883E6F38;
  v7 = 0;
  *v8 = *v4;
  v9 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void sub_274CC7194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::CoxRegression::GetGradient(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, void **a5)
{
  v7 = **(a3 + 24);
  v8 = *(*(a3 + 24) + 8);
  LODWORD(v56) = 0;
  v9 = v8 - v7;
  v57 = v9 >> 2;
  if (!v9)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v57, &v56);
  }

  v57 = ((*a2)[1] - **a2) >> 2;
  v56 = (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2;
  if (v57 != v56)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v57, &v56);
  }

  v10 = *a2;
  v11 = ((*a2)[1] - **a2) >> 2;
  v58 = 0;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(*a5, v11, &v58);
  v12 = *a5;
  v13 = (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2;
  if (v13 != (*(a3 + 192) - *(a3 + 184)) >> 3)
  {
    std::vector<unsigned long>::resize((a3 + 184), v13);
    v14 = *(a3 + 184);
    v15 = *(a3 + 192);
    if (v14 != v15)
    {
      v16 = 0;
      v17 = (v15 - v14 - 8) >> 3;
      v18 = vdupq_n_s64(v17);
      v19 = (v17 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v20 = xmmword_274E1F3B0;
      v21 = vdupq_n_s64(2uLL);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v18, v20));
        if (v22.i8[0])
        {
          v14[v16] = v16;
        }

        if (v22.i8[4])
        {
          v14[v16 + 1] = v16 + 1;
        }

        v16 += 2;
        v20 = vaddq_s64(v20, v21);
      }

      while (v19 != v16);
    }

    v58 = *(a3 + 24);
    std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1}>(v14, v15, &v58);
  }

  v23 = ((v10[1] - *v10) >> 2);
  v58 = v23;
  v24 = *(*(a3 + 72) + 8) - **(a3 + 72);
  if (v24)
  {
    v56 = v24 >> 2;
    if ((v24 >> 2) != v23)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v56, &v58);
    }

    v23 = v58;
  }

  if (v23)
  {
    v25 = *(a3 + 184);
    v26 = *v10;
    v27 = 0.0;
    do
    {
      v28 = *v25++;
      v27 = v27 + expf(*(v26 + 4 * v28));
      v23 = (v23 - 1);
    }

    while (v23);
    v30 = 0;
    v31 = *(a3 + 24);
    v32 = *v31;
    v33 = (v31[1] - *v31) >> 2;
    v34 = *(a3 + 40);
    *&v29 = 0;
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
    do
    {
      v55 = v29;
      v39 = *(*(a3 + 184) + 8 * v30);
      v40 = exp(*(*v10 + 4 * v39));
      v41 = **(a3 + 72);
      v42 = 1.0;
      if (*(*(a3 + 72) + 8) != v41)
      {
        v42 = *(v41 + 4 * v39);
      }

      if (v39 * v34 >= v33)
      {
        __assert_rtn("operator()", "linalg.h", 422, "offset < data_.size() && Out of bound access.");
      }

      v53 = v42;
      v54 = v40;
      v43 = *(v32 + 4 * v39 * v34);
      v44 = fabsf(v43);
      v45 = v44;
      v37 = v36 + v37;
      if (v38 >= v44)
      {
        if (v38 > v44)
        {
          Entry = dmlc::LogMessageFatal::GetEntry(&v57);
          dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/regression_obj.cu", 433);
          v49 = dmlc::LogMessageFatal::GetEntry(&v57);
          v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "Check failed: last_abs_y <= abs_y", 33);
          v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, ": ", 2);
          v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "CoxRegression: labels must be in sorted order, ", 47);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "MetaInfo::LabelArgsort failed!", 30);
          dmlc::LogMessageFatal::~LogMessageFatal(&v57);
        }
      }

      else
      {
        v27 = v27 - v37;
        v37 = 0.0;
      }

      v29 = v55;
      if (v43 > 0.0)
      {
        v35 = v35 + 1.0 / (v27 * v27);
        *&v29 = *&v55 + 1.0 / v27;
      }

      if (v39 >= (v12[1] - *v12) >> 3)
      {
        std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_out_of_range[abi:ne200100]();
      }

      v46 = 0.0;
      if (v43 > 0.0)
      {
        v46 = 1.0;
      }

      v47.f64[0] = -v46;
      v47.f64[1] = -(v54 * v54) * v35;
      *(*v12 + 8 * v39) = vcvt_f32_f64(vmulq_n_f64(vmlaq_n_f64(v47, vdupq_lane_s64(v29, 0), v54), v53));
      ++v30;
      v36 = v54;
      v38 = v45;
    }

    while (v30 < v58);
  }
}

void xgboost::obj::CoxRegression::PredTransform(uint64_t a1, float ***a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = **a2;
  v3 = (*a2)[1] - v2;
  v5.__ptr_ = 0;
  v6.__m_.__sig = 850045863;
  memset(v6.__m_.__opaque, 0, sizeof(v6.__m_.__opaque));
  if (v3 >= 1)
  {
    do
    {
      *v2 = expf(*v2);
      ++v2;
      --v3;
    }

    while (v3);
  }

  dmlc::OMPException::Rethrow(&v5);
  std::mutex::~mutex(&v6);
  std::exception_ptr::~exception_ptr(&v5);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_274CC7904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::mutex::~mutex((v9 + 8));
  std::exception_ptr::~exception_ptr(&a9);
  _Unwind_Resume(a1);
}

void std::vector<unsigned long>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(a1, a2 - v2);
  }
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1}>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 < 129)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x277D826F0];
    v8 = a2 - a1;
    while (1)
    {
      v9 = operator new(8 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_274CC7BDC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(uint64_t *a1, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v10 = *a1;
      if (fabsf(*(**a3 + 4 * v9)) < fabsf(*(**a3 + 4 * *a1)))
      {
        *a1 = v9;
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v14 = a4 >> 1;
      v15 = &a1[a4 >> 1];
      v16 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, v15, a3, v16, a5);
        std::__stable_sort_move<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v14]);

        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *,std::__wrap_iter<unsigned long *>>(a5, &a5[v14], &a5[v14], &a5[a4], a1, a3);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, v15, a3, v16, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6);
      }
    }

    else
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, a2, a3);
    }
  }
}

uint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(uint64_t *result, uint64_t *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = **a3;
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v3;
        v8 = *v3;
        v9 = *v7;
        v10 = fabsf(*(v5 + 4 * v8));
        if (v10 < fabsf(*(v5 + 4 * v9)))
        {
          v11 = v4;
          while (1)
          {
            *(result + v11 + 8) = v9;
            if (!v11)
            {
              break;
            }

            v9 = *(result + v11 - 8);
            v11 -= 8;
            if (v10 >= fabsf(*(v5 + 4 * v9)))
            {
              v12 = (result + v11 + 8);
              goto LABEL_10;
            }
          }

          v12 = result;
LABEL_10:
          *v12 = v8;
        }

        v3 = v6 + 1;
        v4 += 8;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      if (fabsf(*(**a3 + 4 * v10)) >= fabsf(*(**a3 + 4 * *result)))
      {
        *a5 = *result;
        v11 = *(a2 - 1);
      }

      else
      {
        *a5 = v10;
        v11 = *result;
      }

      a5[1] = v11;
    }

    else if (a4 == 1)
    {
      *a5 = *result;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(result, &result[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(&v9[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(v9, &v9[a4 >> 1], &v9[a4 >> 1], a2, a5, a3);
    }

    else
    {

      return std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(result, a2, a5, a3);
    }
  }

  return result;
}

uint64_t *std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *,std::__wrap_iter<unsigned long *>>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, void **a6)
{
  if (result == a2)
  {
LABEL_9:
    while (a3 != a4)
    {
      v10 = *a3++;
      *a5++ = v10;
    }
  }

  else
  {
    v6 = *a6;
    while (a3 != a4)
    {
      v7 = *a3;
      v8 = fabsf(*(*v6 + 4 * *a3));
      v9 = fabsf(*(*v6 + 4 * *result));
      if (v8 >= v9)
      {
        v7 = *result;
      }

      result += v8 >= v9;
      a3 += v8 < v9;
      *a5++ = v7;
      if (result == a2)
      {
        goto LABEL_9;
      }
    }

    while (result != a2)
    {
      v11 = *result++;
      *a5++ = v11;
    }
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v9 = a6;
    do
    {
      if (a5 <= a8 || v9 <= a8)
      {
        std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(a1, a2, a3, a4, a5, v9, a7);
        return;
      }

      if (!a5)
      {
        return;
      }

      v14 = 0;
      v15 = 0;
      v16 = **a4;
      v17 = fabsf(*(v16 + 4 * *a2));
      while (1)
      {
        v18 = a1[v15];
        if (v17 < fabsf(*(v16 + 4 * v18)))
        {
          break;
        }

        ++v15;
        v14 -= 8;
        if (a5 == v15)
        {
          return;
        }
      }

      v19 = a5 - v15;
      v41 = a8;
      v42 = a4;
      __dst = &a1[v14 / 0xFFFFFFFFFFFFFFF8];
      v40 = a3;
      if (a5 - v15 >= v9)
      {
        if (a5 - 1 == v15)
        {
          a1[v15] = *a2;
          *a2 = v18;
          return;
        }

        v23 = v19 / 2;
        v24 = &a1[v19 / 2];
        v21 = a2;
        if (a2 != a3)
        {
          v25 = (a3 - a2) >> 3;
          v26 = fabsf(*(v16 + 4 * v24[v15]));
          v21 = a2;
          do
          {
            v27 = v25 >> 1;
            v28 = &v21[8 * (v25 >> 1)];
            v30 = *v28;
            v29 = v28 + 8;
            v25 += ~(v25 >> 1);
            if (fabsf(*(v16 + 4 * v30)) < v26)
            {
              v21 = v29;
            }

            else
            {
              v25 = v27;
            }
          }

          while (v25);
        }

        v20 = (v21 - a2) >> 3;
        v22 = &v24[v14 / 0xFFFFFFFFFFFFFFF8];
      }

      else
      {
        v20 = v9 / 2;
        v21 = &a2[v9 / 2];
        v22 = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,unsigned long,std::__identity>(&a1[v14 / 0xFFFFFFFFFFFFFFF8], a2, v21, a4);
        v23 = (v22 - a1 + v14) >> 3;
      }

      v31 = a5 - v23 - v15;
      v32 = v9 - v20;
      v33 = a2;
      v34 = v23;
      v35 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(v22, v33, v21);
      a1 = v35;
      if (v34 + v20 >= v9 + a5 - (v34 + v20) - v15)
      {
        v38 = v35;
        std::__inplace_merge<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(v35, v21, v40, v42, v31, v32, a7, v41);
        a1 = __dst;
        v21 = v22;
        a4 = v42;
        v32 = v20;
        a8 = v41;
        v31 = v34;
        a3 = v38;
      }

      else
      {
        v36 = v22;
        a4 = v42;
        v37 = v20;
        a8 = v41;
        std::__inplace_merge<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(__dst, v36, v35, v42, v34, v37, a7, v41);
        a3 = v40;
      }

      a5 = v31;
      v9 = v32;
      a2 = v21;
    }

    while (v32);
  }
}

uint64_t *std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  if (result != a2)
  {
    v4 = *result++;
    *a3 = v4;
    if (result != a2)
    {
      v5 = 0;
      v6 = **a4;
      v7 = a3;
      v8 = a3;
      do
      {
        v10 = *v8++;
        v9 = v10;
        if (fabsf(*(v6 + 4 * *result)) >= fabsf(*(v6 + 4 * v10)))
        {
          *v8 = *result;
        }

        else
        {
          v7[1] = v9;
          v11 = a3;
          if (v7 != a3)
          {
            v12 = v5;
            while (1)
            {
              v11 = (a3 + v12);
              v13 = *(a3 + v12 - 8);
              if (fabsf(*(v6 + 4 * *result)) >= fabsf(*(v6 + 4 * v13)))
              {
                break;
              }

              *v11 = v13;
              v12 -= 8;
              if (!v12)
              {
                v11 = a3;
                break;
              }
            }
          }

          *v11 = *result;
        }

        ++result;
        v5 += 8;
        v7 = v8;
      }

      while (result != a2);
    }
  }

  return result;
}

uint64_t *std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, void **a6)
{
  if (result == a2)
  {
LABEL_9:
    while (a3 != a4)
    {
      v10 = *a3++;
      *a5++ = v10;
    }
  }

  else
  {
    v6 = *a6;
    while (a3 != a4)
    {
      v7 = *a3;
      v8 = fabsf(*(*v6 + 4 * *a3));
      v9 = fabsf(*(*v6 + 4 * *result));
      if (v8 >= v9)
      {
        v7 = *result;
      }

      a3 += v8 < v9;
      result += v8 >= v9;
      *a5++ = v7;
      if (result == a2)
      {
        goto LABEL_9;
      }
    }

    while (result != a2)
    {
      v11 = *result++;
      *a5++ = v11;
    }
  }

  return result;
}

void std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>>(uint64_t *__dst, uint64_t *a2, uint64_t a3, void **a4, uint64_t a5, uint64_t a6, uint64_t __src)
{
  v7 = a2;
  v8 = __dst;
  if (a5 <= a6)
  {
    if (__dst != a2)
    {
      v12 = -__src;
      v13 = __src;
      v14 = __dst;
      do
      {
        v15 = *v14++;
        *v13++ = v15;
        v12 -= 8;
      }

      while (v14 != a2);
      v16 = *a4;
      while (v7 != a3)
      {
        v17 = *v7;
        v18 = fabsf(*(*v16 + 4 * *v7));
        v19 = fabsf(*(*v16 + 4 * *__src));
        if (v18 >= v19)
        {
          v17 = *__src;
        }

        v7 += v18 < v19;
        __src += 8 * (v18 >= v19);
        *v8++ = v17;
        if (v13 == __src)
        {
          return;
        }
      }

      memmove(v8, __src, -(__src + v12));
    }
  }

  else
  {
    v9 = __src;
    if (a2 != a3)
    {
      v9 = __src;
      v10 = a2;
      do
      {
        v11 = *v10++;
        *v9++ = v11;
      }

      while (v10 != a3);
    }

    v20 = a4;
    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &>,std::reverse_iterator<unsigned long *>,std::reverse_iterator<unsigned long *>,std::reverse_iterator<std::__wrap_iter<unsigned long *>>,std::reverse_iterator<std::__wrap_iter<unsigned long *>>,std::reverse_iterator<std::__wrap_iter<unsigned long *>>>(v9, v9, __src, __src, a2, a2, v8, v8, a3, a3, &v20);
  }
}

void *std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,unsigned long,std::__identity>(void *a1, void *a2, void *a3, uint64_t **a4)
{
  if (a2 != a1)
  {
    v4 = a2 - a1;
    v5 = **a4;
    v6 = fabsf(*(v5 + 4 * *a3));
    do
    {
      v7 = v4 >> 1;
      v8 = &a1[v4 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      v4 += ~(v4 >> 1);
      if (v6 < fabsf(*(v5 + 4 * v10)))
      {
        v4 = v7;
      }

      else
      {
        a1 = v9;
      }
    }

    while (v4);
    return a1;
  }

  return a2;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v7 = *__src;
      memmove(__src, a2, a3 - a2);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 8 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 8;
      v9 = a3 - 8 - __src;
      if (a3 - 8 != __src)
      {
        memmove(__src + 8, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>>(__src, a2, a3);
    }
  }

  return v4;
}

void std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<xgboost::MetaInfo::LabelAbsSort(void)::{lambda(unsigned long,unsigned long)#1} &>,std::reverse_iterator<unsigned long *>,std::reverse_iterator<unsigned long *>,std::reverse_iterator<std::__wrap_iter<unsigned long *>>,std::reverse_iterator<std::__wrap_iter<unsigned long *>>,std::reverse_iterator<std::__wrap_iter<unsigned long *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void ***a11)
{
  if (a2 != a4)
  {
    v12 = *a11;
    while (a6 != a8)
    {
      v13 = *(a2 - 8);
      if (fabsf(*(**v12 + 4 * v13)) >= fabsf(*(**v12 + 4 * *(a6 - 8))))
      {
        a2 -= 8;
      }

      else
      {
        v13 = *(a6 - 8);
        a6 -= 8;
      }

      *(a10 - 8) = v13;
      a10 -= 8;
      if (a2 == a4)
      {
        return;
      }
    }

    if (a4 != a2)
    {
      v14 = -8;
      do
      {
        v15 = *(a2 - 8);
        a2 -= 8;
        *(a10 + v14) = v15;
        v14 -= 8;
      }

      while (a2 != a4);
    }
  }
}

char *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>>(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 3;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 3)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 8;
      v6 = a2 + 8;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 8;
        v8 = v6 == a3;
        v6 += 8;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 3;
    v10 = (a2 - a1) >> 3;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[8 * v10];
    do
    {
      v14 = *(v12 - 1);
      v12 -= 8;
      v13 = v14;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        *v16 = *v15;
        v18 = &v15[8 * v3];
        v19 = __OFSUB__(v3, (a3 - v15) >> 3);
        v21 = v3 - ((a3 - v15) >> 3);
        v20 = (v21 < 0) ^ v19;
        v15 = &a1[8 * v21];
        if (v20)
        {
          v15 = v18;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *v17 = v13;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

uint64_t std::__function::__func<xgboost::obj::$_9,std::allocator<xgboost::obj::$_9>,xgboost::ObjFunction * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::obj::GammaRegression::~GammaRegression(xgboost::obj::GammaRegression *this)
{
  *this = &unk_2883DDF98;
  xgboost::HostDeviceVector<int>::~HostDeviceVector();
}

{
  *this = &unk_2883DDF98;
  xgboost::HostDeviceVector<int>::~HostDeviceVector();
}

void xgboost::obj::GammaRegression::SaveConfig(xgboost::obj::GammaRegression *this, xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "reg:gamma");
  v6 = &unk_2883E6F38;
  v7 = 0;
  *v8 = *v4;
  v9 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void sub_274CC8A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::obj::GammaRegression::GetGradient(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  v59 = *MEMORY[0x277D85DE8];
  v9 = **(a3 + 24);
  v10 = *(*(a3 + 24) + 8);
  LODWORD(v55) = 0;
  v11 = v10 - v9;
  v56 = v11 >> 2;
  if (!v11)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v56, &v55);
  }

  v56 = ((*a2)[1] - **a2) >> 2;
  v55 = (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2;
  if (v56 != v55)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v56, &v55);
  }

  v56 = ((*a2)[1] - **a2) >> 2;
  *__x = 0;
  v12 = *(*(a1 + 8) + 24);
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(*a5, v56, __x);
  v13 = *(a1 + 16);
  __x[0] = 0;
  std::vector<int>::resize(v13, 1uLL, __x);
  v14 = **(a1 + 16);
  v15 = *(*(a1 + 16) + 8) - v14;
  if (v15 >= 1)
  {
    memset_pattern16(v14, &unk_274E1F3C0, v15);
  }

  v16 = *(a3 + 72);
  v18 = *v16;
  v17 = v16[1];
  v19 = v56;
  v20 = v17 - *v16;
  if (v20)
  {
    v55 = v20 >> 2;
    if (v20 >> 2 != v56)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v55, &v56);
    }

    v19 = v56;
  }

  if (v12 < 0)
  {
    *__x = 0;
    v58.__m_.__sig = 850045863;
    memset(v58.__m_.__opaque, 0, sizeof(v58.__m_.__opaque));
    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        v25 = *(a1 + 16);
        v26 = *v25;
        v27 = *(v25 + 8);
        if (v26)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27 == 0;
        }

        if (!v28)
        {
          goto LABEL_57;
        }

        v30 = **a5;
        v29 = (*a5)[1];
        if (!v30 && v29 != 0)
        {
          goto LABEL_57;
        }

        v32 = **a2;
        v33 = (*a2)[1];
        if (!v32 && v33 != 0)
        {
          goto LABEL_57;
        }

        v35 = *(a3 + 24);
        v36 = *v35;
        v37 = v35[1];
        if (!v36 && v37 != 0)
        {
          goto LABEL_57;
        }

        v39 = *(a3 + 72);
        v40 = *v39;
        v41 = v39[1];
        v42 = v40 || v41 == 0;
        if (!v42 || (v33 - v32) >> 2 <= i)
        {
          goto LABEL_57;
        }

        v43 = *(v32 + 4 * i);
        if (v17 == v18)
        {
          v44 = 1.0;
        }

        else
        {
          if ((v41 - v40) >> 2 <= i)
          {
            goto LABEL_57;
          }

          v44 = *(v40 + 4 * i);
        }

        if ((v37 - v36) >> 2 <= i)
        {
          goto LABEL_57;
        }

        v45 = *(v36 + 4 * i);
        if (v45 <= 0.0)
        {
          if (v27 == v26)
          {
            goto LABEL_57;
          }

          *v26 = 0;
        }

        if ((v29 - v30) >> 3 <= i)
        {
LABEL_57:
          std::terminate();
        }

        v54 = v44;
        v46 = v45 / expf(v43);
        v47.f32[0] = 1.0 - v46;
        v47.f32[1] = v46;
        *(v30 + 8 * i) = vmul_n_f32(v47, v54);
      }
    }

    dmlc::OMPException::Rethrow(__x);
    std::mutex::~mutex(&v58);
    std::exception_ptr::~exception_ptr(__x);
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__x);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/../common/transform.h", 160);
    v22 = dmlc::LogMessageFatal::GetEntry(__x);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Not part of device code. WITH_CUDA: ", 36);
    MEMORY[0x277C68DF0](v23, 0);
    dmlc::LogMessageFatal::~LogMessageFatal(__x);
  }

  v48 = *(a1 + 16);
  v49 = *v48;
  v50 = *(v48 + 8);
  if (*v48 != v50)
  {
    do
    {
      if (!*v49)
      {
        v51 = dmlc::LogMessageFatal::GetEntry(__x);
        dmlc::LogMessageFatal::Entry::Init(v51, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/regression_obj.cu", 527);
        v52 = dmlc::LogMessageFatal::GetEntry(__x);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "GammaRegression: label must be positive.", 40);
        dmlc::LogMessageFatal::~LogMessageFatal(__x);
      }

      ++v49;
    }

    while (v49 != v50);
  }

  v53 = *MEMORY[0x277D85DE8];
}

void sub_274CC902C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, std::exception_ptr a16)
{
  std::mutex::~mutex((v16 + 8));
  std::exception_ptr::~exception_ptr(&a16);
  _Unwind_Resume(a1);
}

void xgboost::obj::GammaRegression::PredTransform(uint64_t a1, float ***a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = **a2;
  v2 = (*a2)[1];
  v7.__ptr_ = 0;
  v8.__m_.__sig = 850045863;
  memset(v8.__m_.__opaque, 0, sizeof(v8.__m_.__opaque));
  if (v2 != v3)
  {
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2 == 0;
    }

    if (v4)
    {
      v5 = v2 - v3;
      while (v5)
      {
        *v3 = expf(*v3);
        ++v3;
        if (!--v5)
        {
          goto LABEL_10;
        }
      }
    }

    std::terminate();
  }

LABEL_10:
  dmlc::OMPException::Rethrow(&v7);
  std::mutex::~mutex(&v8);
  std::exception_ptr::~exception_ptr(&v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_274CC91A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::mutex::~mutex((v9 + 8));
  std::exception_ptr::~exception_ptr(&a9);
  _Unwind_Resume(a1);
}

void sub_274CC92F0(_Unwind_Exception *a1)
{
  if (*(v2 + 39) < 0)
  {
    operator delete(*v3);
  }

  MEMORY[0x277C69180](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::obj::$_10,std::allocator<xgboost::obj::$_10>,xgboost::ObjFunction * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::obj::TweedieRegression::~TweedieRegression(xgboost::obj::TweedieRegression *this)
{
  *this = &unk_2883DE0A0;
  xgboost::HostDeviceVector<int>::~HostDeviceVector();
}

{
  *this = &unk_2883DE0A0;
  xgboost::HostDeviceVector<int>::~HostDeviceVector();
}

void xgboost::obj::TweedieRegression::LoadConfig(xgboost::obj::TweedieRegression *this, const xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "tweedie_regression_param");
  v4 = (*(**a2 + 24))(*a2, __p);
  v5 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v4);
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  v6 = *(v5 + 2);
  v7 = (v5 + 24);
  if (v6 != (v5 + 24))
  {
    do
    {
      v8 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v6[7]);
      v19[3] = v6 + 4;
      v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v18, v6 + 4);
      v5 = std::string::operator=((v9 + 56), (v8 + 16));
      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v7);
  }

  if (*(this + 40) == 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    xgboost::obj::TweedieRegressionParam::__MANAGER__(v5);
    dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF5C88, this + 40, v18, v19, 0, &v15, 0);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    xgboost::obj::TweedieRegressionParam::__MANAGER__(v5);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF5C88, this + 40, v18, v19, &v15, 0);
    *(this + 40) = 1;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v18, v19[0]);
  v18 = &v15;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v18);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274CC95E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, void *a20)
{
  *(v20 - 56) = &a16;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100]((v20 - 56));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a19, a20);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::obj::TweedieRegression::SaveConfig(xgboost::obj::TweedieRegression *this, xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v3, "reg:tweedie");
  v5 = &unk_2883E6F38;
  v6 = 0;
  *v7 = *v3;
  v8 = v4;
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  (*(**a2 + 24))(*a2, &__p);
  xgboost::Json::operator=();
}

uint64_t xgboost::obj::TweedieRegression::Configure(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + 40);
  if (*(a1 + 40) == 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    xgboost::obj::TweedieRegressionParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF5C88, v4, *a2, a2[1], 0, &v14, 0);
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    xgboost::obj::TweedieRegressionParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF5C88, v4, *a2, a2[1], &v14, 0);
    *v4 = 1;
  }

  v9 = &v14;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v9);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "tweedie-nloglik@", 16);
  v5 = *(a1 + 44);
  std::ostream::operator<<();
  std::stringbuf::str();
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v9 = *MEMORY[0x277D82828];
  *(&v9 + *(v9 - 3)) = *(MEMORY[0x277D82828] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v13);
}

void sub_274CC9BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void xgboost::obj::TweedieRegression::GetGradient(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v9 = **(a3 + 24);
  v10 = *(*(a3 + 24) + 8);
  LODWORD(v59) = 0;
  v11 = v10 - v9;
  v60 = v11 >> 2;
  if (!v11)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v60, &v59);
  }

  v60 = ((*a2)[1] - **a2) >> 2;
  v59 = (*(*(a3 + 24) + 8) - **(a3 + 24)) >> 2;
  if (v60 != v59)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v60, &v59);
  }

  v60 = ((*a2)[1] - **a2) >> 2;
  *__x = 0;
  std::vector<xgboost::detail::GradientPairInternal<float>>::resize(*a5, v60, __x);
  v12 = *(*(a1 + 8) + 24);
  v13 = *(a1 + 48);
  __x[0] = 0;
  std::vector<int>::resize(v13, 1uLL, __x);
  v14 = **(a1 + 48);
  v15 = *(*(a1 + 48) + 8) - v14;
  if (v15 >= 1)
  {
    memset_pattern16(v14, &unk_274E1F3C0, v15);
  }

  v16 = *(a3 + 72);
  v18 = *v16;
  v17 = v16[1];
  v19 = v60;
  v20 = v17 - *v16;
  if (v20)
  {
    v59 = v20 >> 2;
    if (v20 >> 2 != v60)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v59, &v60);
    }

    v19 = v60;
  }

  if (v12 < 0)
  {
    v24 = *(a1 + 44);
    *__x = 0;
    v62.__m_.__sig = 850045863;
    memset(v62.__m_.__opaque, 0, sizeof(v62.__m_.__opaque));
    if (v19)
    {
      v25 = 0;
      v26 = 0;
      v27 = 1.0 - v24;
      v28 = 2.0 - v24;
      do
      {
        v29 = *(a1 + 48);
        v30 = *v29;
        v31 = *(v29 + 8);
        if (v30)
        {
          v32 = 1;
        }

        else
        {
          v32 = v31 == 0;
        }

        if (!v32)
        {
          goto LABEL_57;
        }

        v34 = **a5;
        v33 = (*a5)[1];
        if (!v34 && v33 != 0)
        {
          goto LABEL_57;
        }

        v36 = **a2;
        v37 = (*a2)[1];
        if (!v36 && v37 != 0)
        {
          goto LABEL_57;
        }

        v39 = *(a3 + 24);
        v40 = *v39;
        v41 = v39[1];
        if (!v40 && v41 != 0)
        {
          goto LABEL_57;
        }

        v43 = *(a3 + 72);
        v44 = *v43;
        v45 = v43[1];
        v46 = v44 || v45 == 0;
        if (!v46 || (v37 - v36) >> 2 <= v26)
        {
          goto LABEL_57;
        }

        v47 = *(v36 + 4 * v26);
        if (v17 == v18)
        {
          v48 = 1.0;
        }

        else
        {
          if ((v45 - v44) >> 2 <= v26)
          {
            goto LABEL_57;
          }

          v48 = *(v44 + 4 * v26);
        }

        if ((v41 - v40) >> 2 <= v26)
        {
          goto LABEL_57;
        }

        v49 = *(v40 + 4 * v26);
        if (v49 < 0.0)
        {
          if (v31 == v30)
          {
            goto LABEL_57;
          }

          *v30 = 0;
        }

        if ((v33 - v34) >> 3 <= v26)
        {
LABEL_57:
          std::terminate();
        }

        v50 = expf(v27 * v47);
        v51 = expf(v28 * v47);
        v52 = (v34 + v25);
        *v52 = v48 * (v51 - (v49 * v50));
        v52[1] = v48 * ((v28 * v51) + (-(v49 * v27) * v50));
        ++v26;
        v25 += 8;
      }

      while (v19 != v26);
    }

    dmlc::OMPException::Rethrow(__x);
    std::mutex::~mutex(&v62);
    std::exception_ptr::~exception_ptr(__x);
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__x);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/../common/transform.h", 160);
    v22 = dmlc::LogMessageFatal::GetEntry(__x);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Not part of device code. WITH_CUDA: ", 36);
    MEMORY[0x277C68DF0](v23, 0);
    dmlc::LogMessageFatal::~LogMessageFatal(__x);
  }

  v53 = *(a1 + 48);
  v54 = *v53;
  v55 = *(v53 + 8);
  if (*v53 != v55)
  {
    do
    {
      if (!*v54)
      {
        v56 = dmlc::LogMessageFatal::GetEntry(__x);
        dmlc::LogMessageFatal::Entry::Init(v56, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/objective/regression_obj.cu", 634);
        v57 = dmlc::LogMessageFatal::GetEntry(__x);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "TweedieRegression: label must be nonnegative", 44);
        dmlc::LogMessageFatal::~LogMessageFatal(__x);
      }

      ++v54;
    }

    while (v54 != v55);
  }

  v58 = *MEMORY[0x277D85DE8];
}

void sub_274CCA198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, std::exception_ptr a15)
{
  std::mutex::~mutex((v15 + 8));
  std::exception_ptr::~exception_ptr(&a15);
  _Unwind_Resume(a1);
}

uint64_t xgboost::obj::TweedieRegression::DefaultEvalMetric(xgboost::obj::TweedieRegression *this)
{
  result = this + 16;
  if (*(this + 39) < 0)
  {
    return *result;
  }

  return result;
}

void xgboost::obj::TweedieRegression::PredTransform(uint64_t a1, float ***a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = **a2;
  v2 = (*a2)[1];
  v7.__ptr_ = 0;
  v8.__m_.__sig = 850045863;
  memset(v8.__m_.__opaque, 0, sizeof(v8.__m_.__opaque));
  if (v2 != v3)
  {
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2 == 0;
    }

    if (v4)
    {
      v5 = v2 - v3;
      while (v5)
      {
        *v3 = expf(*v3);
        ++v3;
        if (!--v5)
        {
          goto LABEL_10;
        }
      }
    }

    std::terminate();
  }

LABEL_10:
  dmlc::OMPException::Rethrow(&v7);
  std::mutex::~mutex(&v8);
  std::exception_ptr::~exception_ptr(&v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_274CCA324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::mutex::~mutex((v9 + 8));
  std::exception_ptr::~exception_ptr(&a9);
  _Unwind_Resume(a1);
}

void std::__function::__func<xgboost::tree::$_0,std::allocator<xgboost::tree::$_0>,xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::~__func()
{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

{
  JUMPOUT(0x277C69180);
}

void std::__function::__func<xgboost::tree::$_0,std::allocator<xgboost::tree::$_0>,xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::__clone()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void std::__function::__func<xgboost::tree::$_0,std::allocator<xgboost::tree::$_0>,xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::operator()(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  operator new();
}

{
  v2 = *a2;
  operator new();
}

{
  v2 = *a2;
  operator new();
}

void sub_274CCA4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xgboost::common::Monitor::~Monitor((v15 + 160));
  xgboost::tree::TrainParam::~TrainParam(v17);
  v19 = *(v15 + 16);
  *(v15 + 16) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  MEMORY[0x277C69180](v15, v16);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::tree::$_0,std::allocator<xgboost::tree::$_0>,xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<xgboost::tree::$_0,std::allocator<xgboost::tree::$_0>,xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::target_type()
{
}

{
}

{
}

{
}

{
}

{
}

{
}

void xgboost::tree::TreePruner::~TreePruner(xgboost::tree::TreePruner *this)
{
  *this = &unk_2883DE358;
  xgboost::common::Monitor::~Monitor(this + 20);
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  *this = &unk_2883DE358;
  xgboost::common::Monitor::~Monitor(this + 20);
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::tree::TreePruner::LoadConfig(xgboost::tree::TreePruner *this, char ***a2)
{
  v3 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "train_param");
  v4 = std::map<std::string,xgboost::Json>::at(v3 + 16, __p);
  xgboost::FromJson<xgboost::tree::TrainParam>(v4, (this + 24), v7);
  v8 = v7;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274CCA78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::TreePruner::SaveConfig(xgboost::tree::TreePruner *this, xgboost::Json *a2)
{
  xgboost::ToJson<xgboost::tree::TrainParam>((this + 24), v4);
  std::string::basic_string[abi:ne200100]<0>(__p, "train_param");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

uint64_t xgboost::tree::TreePruner::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::tree::TrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>((a1 + 24), a2, v5);
  v6 = v5;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
  return (*(**(a1 + 16) + 32))(*(a1 + 16), a2);
}

void xgboost::tree::TreePruner::Update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "PrunerUpdate");
  xgboost::common::Monitor::Start();
  v26 = a2;
  v27 = a3;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(a1 + 28);
  v10 = *a4;
  v9 = a4[1];
  v28 = a4;
  *(a1 + 28) = v8 / (v9 - *a4);
  if (v9 != v10)
  {
    v11 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst();
    do
    {
      v12 = *v10;
      v13 = *(*v10 + 12);
      if (v13 < 1)
      {
        v15 = 0;
      }

      else
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = *(v12 + 160);
          v17 = (v16 + 20 * v14);
          if (v17[1] == -1 && v17[3] != -1)
          {
            v18 = *v17;
            if (*v17 == -1)
            {
              v19 = 0;
            }

            else
            {
              v19 = 0;
              do
              {
                ++v19;
                v18 = *(v16 + 20 * (v18 & 0x7FFFFFFF));
              }

              while (v18 != -1);
            }

            v15 = xgboost::tree::TreePruner::TryPruneLeaf(a1, v12, v14, v19, v15);
            v13 = *(v12 + 12);
          }

          ++v14;
        }

        while (v14 < v13);
      }

      if (*(v11 + 4) > 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v29, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/updater_prune.cc");
        xgboost::ConsoleLogger::ConsoleLogger(__p, v29, 101, 2);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "tree pruning end, ", 18);
        v21 = MEMORY[0x277C68E20](v20, (*(v12 + 12) + ~*(v12 + 16)));
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " extra nodes, ", 14);
        v23 = MEMORY[0x277C68E20](v22, v15);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " pruned nodes, max_depth=", 25);
        v25 = xgboost::RegTree::MaxDepth(v12, 0);
        MEMORY[0x277C68E20](v24, v25);
        xgboost::ConsoleLogger::~ConsoleLogger(__p);
        if (v30 < 0)
        {
          operator delete(v29[0]);
        }
      }

      ++v10;
    }

    while (v10 != v9);
  }

  *(a1 + 28) = v8;
  (*(**(a1 + 16) + 48))(*(a1 + 16), v26, v27, v28);
  std::string::basic_string[abi:ne200100]<0>(__p, "PrunerUpdate");
  xgboost::common::Monitor::Stop();
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274CCABB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::chrono::steady_clock::time_point *xgboost::common::Monitor::Monitor(std::chrono::steady_clock::time_point *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(this, &unk_274E44C6E);
  v2[4] = 0;
  v2[3] = v2 + 4;
  v2[6] = 0;
  v2[7] = 0;
  v2[5] = 0;
  this[6].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  this[6].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  return this;
}

void xgboost::common::Monitor::~Monitor(char **this)
{
  xgboost::common::Monitor::Print(this);
  this[7] += std::chrono::steady_clock::now().__d_.__rep_ - this[6];
  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy((this + 3), this[4]);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void xgboost::tree::TrainParam::~TrainParam(void **this)
{
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  v2 = this[10];
  if (v2)
  {
    this[11] = v2;
    operator delete(v2);
  }
}

void xgboost::FromJson<xgboost::tree::TrainParam>(char ***a1@<X0>, xgboost::tree::TrainParam *a2@<X1>, void *a3@<X8>)
{
  v5 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a1);
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v6 = v5[2];
  v7 = v5 + 3;
  if (v6 != v5 + 3)
  {
    do
    {
      v8 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v6[7]);
      v14[3] = v6 + 4;
      v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v13, v6 + 4);
      std::string::operator=((v9 + 56), (v8 + 16));
      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v7);
  }

  xgboost::XGBoostParameter<xgboost::tree::TrainParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(a2, &v13, a3);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v13, v14[0]);
}

uint64_t std::map<std::string,xgboost::Json>::at(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

void xgboost::XGBoostParameter<xgboost::tree::TrainParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(xgboost::tree::TrainParam *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*this == 1)
  {

    dmlc::Parameter<xgboost::tree::TrainParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(this, a2, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = xgboost::tree::TrainParam::__MANAGER__(this);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v6, this, *a2, (a2 + 8), a3, 0);
    *this = 1;
  }
}

void sub_274CCAEF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dmlc::Parameter<xgboost::tree::TrainParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(xgboost::tree::TrainParam *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = xgboost::tree::TrainParam::__MANAGER__(a1);
  dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v6, a1, *a2, (a2 + 8), 0, a3, 0);
}

void sub_274CCAF68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::ToJson<xgboost::tree::TrainParam>(xgboost::tree::TrainParam *a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0x300000000;
  *a2 = &unk_2883E6E50;
  a2[3] = 0;
  a2[2] = a2 + 3;
  a2[4] = 0;
  v3 = xgboost::tree::TrainParam::__MANAGER__(a1);
  dmlc::parameter::ParamManager::GetDict(v3, v5);
  std::map<std::string,std::string>::map[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string> *>>(&v6, v5[0], v5[1]);
  v8 = v5;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v4 = v6;
  if (v6 != &v7)
  {
    xgboost::JsonString::JsonString(v5, (v6 + 56));
    v8 = (v4 + 32);
    std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 2), (v4 + 32));
    xgboost::Json::operator=();
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v6, v7);
}

void sub_274CCB0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  a21 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a21);
  *v21 = v22;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v23, *(v21 + 24));
  _Unwind_Resume(a1);
}

void xgboost::XGBoostParameter<xgboost::tree::TrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(xgboost::tree::TrainParam *this@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*this == 1)
  {

    dmlc::Parameter<xgboost::tree::TrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(this, a2, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = xgboost::tree::TrainParam::__MANAGER__(this);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(v6, this, *a2, a2[1], a3, 0);
    *this = 1;
  }
}

void sub_274CCB210(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *dmlc::Parameter<xgboost::tree::TrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>@<X0>(xgboost::tree::TrainParam *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = xgboost::tree::TrainParam::__MANAGER__(a1);
  return dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(v6, a1, *a2, a2[1], 0, a3, 0);
}

void sub_274CCB284(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t xgboost::tree::TreePruner::TryPruneLeaf(xgboost::tree::TreePruner *this, xgboost::RegTree *a2, int a3, int a4, uint64_t a5)
{
  v10 = *(a2 + 20);
  if (*(v10 + 20 * a3 + 4) != -1)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v29);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/updater_prune.cc", 71);
    v23 = dmlc::LogMessageFatal::GetEntry(&v29);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Check failed: tree[nid].IsLeaf()", 32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v29);
    v10 = *(a2 + 20);
  }

  v11 = *(v10 + 20 * a3);
  if (v11 != -1)
  {
    v12 = v11 & 0x7FFFFFFF;
    if (*(v10 + 20 * v12 + 4) == -1)
    {
      v25 = dmlc::LogMessageFatal::GetEntry(&v28);
      dmlc::LogMessageFatal::Entry::Init(v25, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/updater_prune.cc", 76);
      v26 = dmlc::LogMessageFatal::GetEntry(&v28);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Check failed: !tree[pid].IsLeaf()", 33);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v28);
      v10 = *(a2 + 20);
    }

    v13 = v10 + 20 * v12;
    v14 = *(v13 + 4);
    v15 = *(v13 + 8);
    if (*(v10 + 20 * v14 + 4) == -1 && v15 != -1 && *(v10 + 20 * v15 + 4) == -1)
    {
      v17 = (*(a2 + 26) + 16 * v12);
      if (*(this + 8) > *v17 || (v18 = *(this + 9)) != 0 && v18 < a4)
      {
        v19 = *(this + 7) * v17[2];
        xgboost::RegTree::DeleteNode(a2, v14);
        xgboost::RegTree::DeleteNode(a2, *(*(a2 + 20) + 20 * v12 + 8));
        v20 = *(a2 + 20) + 20 * v12;
        *(v20 + 16) = v19;
        *(v20 + 4) = -1;
        return xgboost::tree::TreePruner::TryPruneLeaf(this, a2, v12, a4 - 1, a5 + 2);
      }
    }
  }

  return a5;
}

void xgboost::RegTree::DeleteNode(xgboost::RegTree *this, int a2)
{
  v20 = 1;
  v21 = a2;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v21, &v20);
  }

  v4 = *(this + 20) + 20 * (*(*(this + 20) + 20 * a2) & 0x7FFFFFFF);
  v5 = 8;
  if (*(v4 + 4) == a2)
  {
    v5 = 4;
  }

  *(v4 + v5) = -1;
  v7 = *(this + 24);
  v6 = *(this + 25);
  if (v7 >= v6)
  {
    v9 = *(this + 23);
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 2;
    v12 = v11 + 1;
    if ((v11 + 1) >> 62)
    {
      std::vector<xgboost::TreeUpdaterReg const*>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFFCLL;
    v15 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this + 184, v15);
    }

    v16 = (v7 - v9) >> 2;
    v17 = (4 * v11);
    v18 = (4 * v11 - 4 * v16);
    *v17 = a2;
    v8 = v17 + 1;
    memcpy(v18, v9, v10);
    v19 = *(this + 23);
    *(this + 23) = v18;
    *(this + 24) = v8;
    *(this + 25) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v7 = a2;
    v8 = v7 + 1;
  }

  *(this + 24) = v8;
  *(*(this + 20) + 20 * a2 + 12) = -1;
  ++*(this + 4);
}

void sub_274CCB6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11)
{
  v12 = a9;
  a9 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a9, v12);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t xgboost::RegTree::MaxDepth(xgboost::RegTree *this, int a2)
{
  v3 = *(*(this + 20) + 20 * a2 + 4);
  if (v3 == -1)
  {
    return 0;
  }

  v5 = xgboost::RegTree::MaxDepth(this, v3) + 1;
  v6 = xgboost::RegTree::MaxDepth(this, *(*(this + 20) + 20 * a2 + 8));
  if (v5 <= v6 + 1)
  {
    return (v6 + 1);
  }

  else
  {
    return v5;
  }
}

uint64_t *xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::SketchContainerImpl(uint64_t *a1, uint64_t a2, int a3, uint64_t *a4, char a5, int a6)
{
  v11 = a1 + 3;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  std::vector<xgboost::FeatureType>::vector[abi:ne200100]<xgboost::common::detail::SpanIterator<xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,true>,0>(a1 + 6, a4, 0, a4, *a4);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  *(a1 + 9) = *a2;
  a1[11] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = a3;
  *(a1 + 100) = a5;
  *(a1 + 26) = a6;
  *(a1 + 108) = 0;
  xgboost::common::Monitor::Monitor(a1 + 14);
  std::string::basic_string[abi:ne200100]<0>(&__str, "SketchContainerImpl");
  std::string::operator=((a1 + 14), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v13 = a1[9];
  v12 = a1[10];
  v33 = 0;
  v14 = v12 - v13;
  v34[0] = v14 >> 3;
  if (!v14)
  {
    dmlc::LogCheckFormat<unsigned long,int>(v34, &v33);
  }

  v15 = (a1[10] - a1[9]) >> 3;
  v16 = *a1;
  v17 = a1[1];
  v18 = 0xF0F0F0F0F0F0F0F1 * ((v17 - *a1) >> 3);
  v19 = v15 - v18;
  if (v15 <= v18)
  {
    if (v15 < v18)
    {
      v23 = v16 + 136 * v15;
      while (v17 != v23)
      {
        v17 -= 136;
        std::allocator_traits<std::allocator<xgboost::common::WQuantileSketch<float,float>>>::destroy[abi:ne200100]<xgboost::common::WQuantileSketch<float,float>,0>(v17);
      }

      a1[1] = v23;
    }
  }

  else
  {
    v20 = a1[2];
    if (0xF0F0F0F0F0F0F0F1 * ((v20 - v17) >> 3) < v19)
    {
      if (v15 <= 0x1E1E1E1E1E1E1E1)
      {
        v21 = 0xF0F0F0F0F0F0F0F1 * ((v20 - v16) >> 3);
        if (2 * v21 > v15)
        {
          v15 = 2 * v21;
        }

        if (v21 >= 0xF0F0F0F0F0F0F0)
        {
          v22 = 0x1E1E1E1E1E1E1E1;
        }

        else
        {
          v22 = v15;
        }

        v34[5] = a1;
        if (v22 <= 0x1E1E1E1E1E1E1E1)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 136 * ((136 * v19 - 136) / 0x88) + 136);
    a1[1] = v17 + 136 * ((136 * v19 - 136) / 0x88) + 136;
  }

  v24 = *(a1 + 26);
  v32 = 1;
  v33 = v24;
  if (v24 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v33, &v32);
  }

  std::vector<std::set<float>>::resize(v11, (a1[10] - a1[9]) >> 3);
  v26 = a1[6];
  v25 = a1[7];
  if (v26 == v25)
  {
    v28 = 0;
  }

  else
  {
    v27 = v26 + 1;
    do
    {
      v28 = *(v27 - 1) == 1;
      v29 = *(v27 - 1) == 1 || v27 == v25;
      ++v27;
    }

    while (!v29);
  }

  *(a1 + 108) = v28;
  return a1;
}

void sub_274CCBCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19)
{
  xgboost::common::Monitor::~Monitor((v21 + 40));
  v23 = *v21;
  if (*v21)
  {
    v19[10] = v23;
    operator delete(v23);
  }

  v24 = v19[6];
  if (v24)
  {
    v19[7] = v24;
    operator delete(v24);
  }

  a18 = v20;
  std::vector<std::set<float>>::__destroy_vector::operator()[abi:ne200100](&a18);
  a18 = v19;
  std::vector<xgboost::common::WQuantileSketch<float,float>>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void std::vector<std::set<float>>::resize(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 - *a1;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v12 = v4 + 24 * a2;
      if (v3 != v12)
      {
        do
        {
          v13 = v3 - 24;
          std::__tree<dmlc::parameter::FieldAccessEntry *>::destroy(v3 - 24, *(v3 - 16));
          v3 = v13;
        }

        while (v13 != v12);
      }

      a1[1] = v12;
    }
  }

  else
  {
    v8 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v3) >> 3) < v7)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v4) >> 3);
        v10 = 2 * v9;
        if (2 * v9 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        if (v11 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v14 = v3 + 24 * v7;
    v15 = 24 * a2 - 8 * (v5 >> 3);
    v16 = (v3 + 8);
    do
    {
      *v16 = 0;
      v16[1] = 0;
      *(v16 - 1) = v16;
      v16 += 3;
      v15 -= 24;
    }

    while (v15);
    a1[1] = v14;
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::CalcColumnSize(uint64_t **a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v39 = *MEMORY[0x277D85DE8];
  v7 = **a1;
  v8 = (*a1)[1];
  v9 = *a1[1];
  std::vector<std::vector<unsigned long>>::vector[abi:ne200100](&v33, a3);
  v10 = v33;
  for (i = v34; v10 != i; v10 += 3)
  {
    v37.__ptr_ = 0;
    std::vector<unsigned long>::resize(v10, a2, &v37);
  }

  v12 = (v8 - v7) >> 3;
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  v35 = 1;
  v36 = v4;
  if (v4 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v36, &v35);
  }

  v37.__ptr_ = 0;
  v38.__m_.__sig = 850045863;
  memset(v38.__m_.__opaque, 0, sizeof(v38.__m_.__opaque));
  if (v12 >= 2)
  {
    v22 = 0;
    do
    {
      if (v34 == v33)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      v23 = (v7 + 8 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = v25 - *v23;
      if (v26)
      {
        v27 = v9 == 0;
      }

      else
      {
        v27 = 0;
      }

      if (v27)
      {
        std::terminate();
      }

      if (v25 != v24)
      {
        v28 = (v9 + 8 * v24);
        v29 = *v33;
        v30 = (v33[1] - *v33) >> 3;
        do
        {
          v32 = *v28;
          v28 += 2;
          v31 = v32;
          if (v30 <= v32)
          {
            std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
          }

          ++*(v29 + 8 * v31);
          --v26;
        }

        while (v26);
      }

      ++v22;
    }

    while (v22 != v13);
  }

  dmlc::OMPException::Rethrow(&v37);
  std::mutex::~mutex(&v38);
  std::exception_ptr::~exception_ptr(&v37);
  v37.__ptr_ = 0;
  std::vector<unsigned long>::vector[abi:ne200100](a4, a2);
  v35 = 1;
  v36 = v4;
  v37.__ptr_ = 0;
  v38.__m_.__sig = 850045863;
  memset(v38.__m_.__opaque, 0, sizeof(v38.__m_.__opaque));
  if (a2)
  {
    v14 = 0;
    v15 = v33;
    v16 = v34;
    v17 = *a4;
    do
    {
      if (v15 != v16)
      {
        v18 = *(v17 + 8 * v14);
        v19 = v15;
        do
        {
          v20 = *v19;
          v19 += 3;
          v18 += *(v20 + 8 * v14);
          *(v17 + 8 * v14) = v18;
        }

        while (v19 != v16);
      }

      ++v14;
    }

    while (v14 != a2);
  }

  dmlc::OMPException::Rethrow(&v37);
  std::mutex::~mutex(&v38);
  std::exception_ptr::~exception_ptr(&v37);
  v37.__ptr_ = &v33;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v37);
  v21 = *MEMORY[0x277D85DE8];
}

void sub_274CCC4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  a13 = &a10;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_274CCC4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = a15;
  a15 = 0;
  if (v16)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a15, v16);
  }

  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  JUMPOUT(0x274CCC594);
}

void sub_274CCC4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15)
{
  v16 = a15;
  a15 = 0;
  if (v16)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a15, v16);
  }

  a13 = &a10;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_274CCC4E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::exception_ptr a15)
{
  std::mutex::~mutex((v16 + 8));
  std::exception_ptr::~exception_ptr(&a15);
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  JUMPOUT(0x274CCC594);
}

void sub_274CCC504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, std::exception_ptr a15)
{
  std::mutex::~mutex((v15 + 8));
  std::exception_ptr::~exception_ptr(&a15);
  a13 = &a10;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_274CCC524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274CCC530);
}

void sub_274CCC55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274CCC568);
}

void sub_274CCC580(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274CCC5A4);
}

void std::vector<unsigned long>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(a1, a2 - v3, a3);
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::LoadBalance(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v9 = (*(*(a1 + 8) + 8) - **(a1 + 8)) >> 3;
  std::vector<std::vector<unsigned long>>::vector[abi:ne200100](&v7, a3);
  v4 = v7;
  for (i = v8; v4 != i; v4 += 3)
  {
    __p = 0;
    std::vector<unsigned long>::resize(v4, a2, &__p);
  }

  xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::CalcColumnSize();
}

void sub_274CCC8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, char *__p, char *a16, uint64_t a17, char a18)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  __p = &a18;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::SearchGroupIndFromRow(void *a1, unint64_t a2)
{
  v14 = a2;
  v3 = a1[1];
  v5 = *(v3 - 4);
  v4 = (v3 - 4);
  if (v5 <= a2)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v14, v4);
  }

  v6 = *a1;
  v7 = a1[1] - 4 - *a1;
  if (v7)
  {
    v8 = v7 >> 2;
    v6 = *a1;
    do
    {
      v9 = v8 >> 1;
      v10 = &v6[v8 >> 1];
      v12 = *v10;
      v11 = v10 + 1;
      v8 += ~(v8 >> 1);
      if (v14 < v12)
      {
        v8 = v9;
      }

      else
      {
        v6 = v11;
      }
    }

    while (v8);
  }

  return ((v6 - *a1) >> 2) - 1;
}

void sub_274CCCAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14)
{
  v15 = a14;
  a14 = 0;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a14, v15);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::GatherSketchInfo(uint64_t *a1, uint64_t *a2, const void **a3, uint64_t *a4, uint64_t *a5)
{
  *&v63 = 0;
  std::vector<unsigned long>::resize(a3, 1uLL, &v63);
  Engine = rabit::engine::GetEngine(v9);
  v11 = (*(*Engine + 72))(Engine);
  v12 = v11;
  v13 = rabit::engine::GetEngine(v11);
  v57 = (*(*v13 + 64))(v13);
  v15 = *a1;
  v14 = a1[1];
  __p = 0;
  v61 = 0;
  v62 = 0;
  v16 = *a2;
  if (a2[1] != *a2)
  {
    v17 = 0;
    v18 = 8;
    do
    {
      v19 = a1[6];
      v20 = a1[7] - v19;
      if (!v20)
      {
        goto LABEL_7;
      }

      if (v20 <= v17)
      {
LABEL_33:
        std::terminate();
      }

      if (*(v19 + v17) == 1)
      {
        *&v63 = 0;
        std::vector<unsigned long>::push_back[abi:ne200100](&__p, &v63);
      }

      else
      {
LABEL_7:
        std::vector<unsigned long>::push_back[abi:ne200100](&__p, (v16 + v18));
      }

      ++v17;
      v16 = *a2;
      v18 += 40;
    }

    while (v17 < 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  }

  v21 = 0xF0F0F0F0F0F0F0F1 * ((v14 - v15) >> 3);
  v22 = v21 + 1;
  *&v63 = 0;
  std::vector<unsigned long>::resize(a4, (v21 + 1) * v12, &v63);
  v24 = v61;
  v25 = *a4;
  if (__p != v61)
  {
    v26 = v25 + 8 * v57 * v22;
    v27 = (__p + 8);
    v28 = *__p;
    *(v26 + 8) = *__p;
    v29 = v26 + 8;
    if (v27 != v24)
    {
      v30 = (v29 + 8);
      do
      {
        v31 = *v27++;
        v28 += v31;
        *v30++ = v28;
      }

      while (v27 != v24);
    }
  }

  v32 = a4[1];
  v33 = rabit::engine::GetEngine(v23);
  (*(*v33 + 8))(v33, v25, 8, (v32 - v25) >> 3, rabit::op::Reducer<rabit::op::Sum,unsigned long>, 0, 0);
  if (v12 >= 1)
  {
    v34 = v12;
    v35 = 8 * v21;
    v36 = 8 * v21 + 8;
    v37 = -1;
    do
    {
      v37 += v22;
      if (v37 >= (a4[1] - *a4) >> 3)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      *&v63 = *(*a4 + v35);
      std::vector<unsigned long>::push_back[abi:ne200100](a3, &v63);
      v35 += v36;
      --v34;
    }

    while (v34);
  }

  v39 = *a3;
  v38 = a3[1];
  if (*a3 == v38)
  {
    v58[0] = v38 - v39;
    v59 = 1;
    dmlc::LogCheckFormat<unsigned long,int>(v58, &v59);
  }

  v40 = v39 + 1;
  if (v39 + 1 != v38)
  {
    v41 = *v39;
    do
    {
      v41 += *v40;
      *v40++ = v41;
    }

    while (v40 != v38);
  }

  v42 = *(a3[1] - 1);
  v63 = 0uLL;
  std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize(a5, v42, &v63);
  v43 = *a5;
  *&v63 = (a5[1] - *a5) >> 4;
  *(&v63 + 1) = v43;
  v44 = xgboost::common::Span<xgboost::common::WQSummary<float,float>::Entry,18446744073709551615ul>::subspan(v58, &v63, *(*a3 + v57), *(*a3 + v57 + 1) - *(*a3 + v57));
  v46 = *a2;
  v45 = a2[1];
  if (v45 != *a2)
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = v58;
    do
    {
      v51 = a1[6];
      v52 = a1[7] - v51;
      if (!v52)
      {
        goto LABEL_28;
      }

      if (v52 <= v49)
      {
        goto LABEL_33;
      }

      if (*(v51 + v49) != 1)
      {
LABEL_28:
        v44 = std::__copy_impl::operator()[abi:ne200100]<xgboost::common::WQSummary<float,float>::Entry *,xgboost::common::WQSummary<float,float>::Entry *,xgboost::common::detail::SpanIterator<xgboost::common::Span<xgboost::common::WQSummary<float,float>::Entry,18446744073709551615ul>,false>>(&v63, *(v46 + v47), (*(v46 + v47) + 16 * *(v46 + v47 + 8)), v50, v48);
        v50 = *(&v63 + 1);
        v48 = v64;
        v46 = *a2;
        v45 = a2[1];
      }

      ++v49;
      v47 += 40;
    }

    while (v49 < 0xCCCCCCCCCCCCCCCDLL * ((v45 - v46) >> 3));
  }

  v54 = *a5;
  v53 = a5[1];
  v55 = rabit::engine::GetEngine(v44);
  (*(*v55 + 8))(v55, v54, 4, ((v53 - v54) >> 2) & 0x3FFFFFFFFFFFFFFCLL, rabit::op::Reducer<rabit::op::Sum,float>, 0, 0);
  if (__p)
  {
    v61 = __p;
    operator delete(__p);
  }
}

void sub_274CCCF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t *std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize(uint64_t *result, unint64_t a2, _OWORD *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = (v3 - *result) >> 4;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      result[1] = v4 + 16 * a2;
    }
  }

  else
  {
    v6 = result[2];
    if (a2 - v5 > (v6 - v3) >> 4)
    {
      if (!(a2 >> 60))
      {
        v7 = v6 - v4;
        v8 = (v6 - v4) >> 3;
        if (v8 <= a2)
        {
          v8 = a2;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFF0)
        {
          v9 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WQSummary<float,float>::Entry>>(result, v9);
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = &v3[a2 - v5];
    v11 = 16 * a2 - 16 * v5;
    do
    {
      *v3++ = *a3;
      v11 -= 16;
    }

    while (v11);
    result[1] = v10;
  }

  return result;
}

unint64_t *xgboost::common::Span<xgboost::common::WQSummary<float,float>::Entry,18446744073709551615ul>::subspan(unint64_t *result, void *a2, unint64_t a3, unint64_t a4)
{
  if (a4 == -1)
  {
    a4 = *a2 - a3;
    if (*a2 < a3)
    {
      goto LABEL_8;
    }
  }

  else if (a4 + a3 > *a2)
  {
    goto LABEL_8;
  }

  v4 = a2[1];
  *result = a4;
  result[1] = v4 + 16 * a3;
  if (a4 && !v4)
  {
LABEL_8:
    std::terminate();
  }

  return result;
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::AllReduce(uint64_t *a1, uint64_t *a2, std::vector<int> *a3)
{
  v89 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v87, "AllReduce");
  v5 = xgboost::common::Monitor::Start();
  if (v88.__m_.__opaque[7] < 0)
  {
    operator delete(v87.__ptr_);
  }

  v81 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  Engine = rabit::engine::GetEngine(v5);
  (*(*Engine + 8))(Engine, &v81, 8, 1, rabit::op::Reducer<rabit::op::Max,unsigned long>, 0, 0);
  v83[0].__ptr_ = (0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3));
  if (v81 != v83[0].__ptr_)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v81, v83);
  }

  v7 = a1[6];
  v80[0] = a1[7] - v7;
  v80[1] = v7;
  begin = a3->__begin_;
  end = a3->__end_;
  LODWORD(v86[0].__ptr_) = 0;
  v10 = end - begin;
  v83[0].__ptr_ = (v10 >> 2);
  if (v10)
  {
    dmlc::LogCheckFormat<unsigned long,int>(v83, v86);
  }

  std::vector<int>::resize(a3, 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3));
  v11 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v12 = *a2;
  v13 = a2[1];
  v14 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - *a2) >> 3);
  v15 = v11 - v14;
  if (v11 <= v14)
  {
    if (v11 < v14)
    {
      v19 = v12 - 0x5A5A5A5A5A5A5A58 * ((a1[1] - *a1) >> 3);
      while (v13 != v19)
      {
        v20 = *(v13 - 24);
        if (v20)
        {
          *(v13 - 16) = v20;
          operator delete(v20);
        }

        v13 -= 40;
      }

      a2[1] = v19;
    }
  }

  else
  {
    v16 = a2[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v16 - v13) >> 3) < v15)
    {
      if (v11 <= 0x666666666666666)
      {
        v17 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v12) >> 3);
        if (2 * v17 > v11)
        {
          v11 = 2 * v17;
        }

        if (v17 >= 0x333333333333333)
        {
          v18 = 0x666666666666666;
        }

        else
        {
          v18 = v11;
        }

        *&v88.__m_.__opaque[16] = a2;
        std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer>>(v18);
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    bzero(a2[1], 40 * ((40 * v15 - 40) / 0x28) + 40);
    a2[1] = v13 + 40 * ((40 * v15 - 40) / 0x28) + 40;
  }

  v77 = 0;
  v78 = 0;
  v79 = 0;
  v21 = std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v77, a1[9], a1[10], (a1[10] - a1[9]) >> 3);
  v23 = v77;
  v22 = v78;
  v24 = rabit::engine::GetEngine(v21);
  (*(*v24 + 8))(v24, v23, 8, (v22 - v23) >> 3, rabit::op::Reducer<rabit::op::Sum,unsigned long>, 0, 0);
  v26 = *a1;
  v25 = a1[1];
  LODWORD(v83[0].__ptr_) = *(a1 + 26);
  LODWORD(v86[0].__ptr_) = 1;
  if (SLODWORD(v83[0].__ptr_) < 1)
  {
    dmlc::LogCheckFormat<int,int>(v83, v86);
  }

  v73 = a2;
  v87.__ptr_ = 0;
  v88.__m_.__sig = 850045863;
  memset(v88.__m_.__opaque, 0, sizeof(v88.__m_.__opaque));
  if (v25 != v26)
  {
    v27 = 0;
    v28 = 0xF0F0F0F0F0F0F0F1 * ((v25 - v26) >> 3);
    while (1)
    {
      v29 = vcvts_n_u32_f32(*(a1 + 24), 3uLL);
      v30 = *(v77 + v27);
      if (v30 >= v29)
      {
        LODWORD(v31) = v29;
      }

      else
      {
        v31 = *(v77 + v27);
      }

      if (!v30)
      {
        goto LABEL_84;
      }

      v32 = a1[6];
      v33 = a1[7] - v32;
      if (!v33)
      {
        break;
      }

      if (v33 <= v27)
      {
        std::terminate();
      }

      if (*(v32 + v27) != 1)
      {
        break;
      }

      v31 = *(a1[3] + 24 * v27 + 16);
LABEL_83:
      a3->__begin_[v27] = v31;
LABEL_84:
      if (++v27 == v28)
      {
        goto LABEL_85;
      }
    }

    v85 = 0;
    *&v83[0].__ptr_ = 0u;
    *__p = 0u;
    v34 = *a1 + 136 * v27;
    if (*(v34 + 56) == *(v34 + 48))
    {
      v36 = *(v34 + 8) - *v34;
      if (!v36)
      {
        goto LABEL_44;
      }

      v35 = v36 >> 3;
    }

    else
    {
      v35 = 2 * *(v34 + 40);
      if (!v35)
      {
        goto LABEL_44;
      }
    }

    std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize(__p, v35);
    if (__p[1] == __p[0])
    {
      v37 = 0;
    }

    else
    {
      v37 = __p[0];
    }

    v83[0].__ptr_ = v37;
LABEL_44:
    v38 = *(v34 + 24);
    v39 = 126 - 2 * __clz(v38);
    if (v38)
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,xgboost::common::WQSummary<float,float>::Queue::QEntry *,false>(*v34, (*v34 + 8 * v38), &v82, v40, 1);
    v83[1].__ptr_ = 0;
    v41 = *(v34 + 24);
    if (v41)
    {
      v42 = 0;
      v43 = 0;
      v44 = *v34;
      ptr = v83[0].__ptr_;
      v46 = *v34 + 12;
      v47 = 0.0;
      do
      {
        v48 = &v44[2 * v43];
        v49 = v43 + 1;
        v51 = *v48;
        v50 = v48[1];
        if (v43 + 1 < v41)
        {
          v52 = (v46 + 8 * v43);
          while (*(v52 - 1) == v51)
          {
            v53 = *v52;
            v52 += 2;
            v50 = v50 + v53;
            if (v41 == ++v49)
            {
              v49 = v41;
              break;
            }
          }
        }

        v54 = &ptr[16 * v42];
        *v54 = v47;
        v47 = v47 + v50;
        ++v42;
        v54[1] = v47;
        v54[2] = v50;
        v54[3] = v51;
        v43 = v49;
      }

      while (v49 < v41);
      v83[1].__ptr_ = v42;
    }

    else
    {
      v42 = 0;
    }

    v55 = *(v34 + 48);
    v56 = *(v34 + 40);
    if (*(v34 + 56) == v55)
    {
      if (v42 <= v56)
      {
LABEL_74:
        v63 = *v73;
        v64 = (*v73 + 40 * v27);
        if (v31 > ((v64[3] - v64[2]) >> 4))
        {
          std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize((v64 + 2), v31);
          if (v64[3] == v64[2])
          {
            v65 = 0;
          }

          else
          {
            v65 = v64[2];
          }

          *v64 = v65;
          v63 = *v73;
        }

        if (!*(v63 + 40 * v27))
        {
          Entry = dmlc::LogMessageFatal::GetEntry(v86);
          dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/quantile.cc", 413);
          v67 = dmlc::LogMessageFatal::GetEntry(v86);
          v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "Check failed: reduced[i].data", 29);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, ": ", 2);
          dmlc::LogMessageFatal::~LogMessageFatal(v86);
          v63 = *v73;
        }

        xgboost::common::WQSummary<float,float>::SetPrune((v63 + 40 * v27), v83, v31);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        goto LABEL_83;
      }

      if (v56 > (*(v34 + 120) - *(v34 + 112)) >> 4)
      {
        std::vector<xgboost::common::WQSummary<float,float>::Entry,std::allocator<xgboost::common::WQSummary<float,float>::Entry>>::resize(v34 + 112, *(v34 + 40));
        if (*(v34 + 120) == *(v34 + 112))
        {
          v62 = 0;
        }

        else
        {
          v62 = *(v34 + 112);
        }

        *(v34 + 96) = v62;
        v56 = *(v34 + 40);
      }

      v59 = v34 + 96;
      xgboost::common::WQSummary<float,float>::SetPrune((v34 + 96), v83, v56);
    }

    else
    {
      v57 = xgboost::common::WQSummary<float,float>::SetPrune(v55, v83, v56).n128_u64[0];
      v59 = *(v34 + 48);
      if ((*(v34 + 56) - v59) >= 0x11)
      {
        v60 = 24;
        v61 = 1;
        do
        {
          if (*(v59 + v60))
          {
            if (*(v59 + 8))
            {
              xgboost::common::WQSummary<float,float>::SetCombine(v83, v59, v59 + v60 - 8, *&v57, v58);
              v57 = xgboost::common::WQSummary<float,float>::SetPrune(*(v34 + 48), v83, *(v34 + 40)).n128_u64[0];
            }

            else
            {
              xgboost::common::WQSummary<float,float>::CopyFrom(v59, v59 + v60 - 8);
            }
          }

          ++v61;
          v59 = *(v34 + 48);
          v60 += 16;
        }

        while (v61 < (*(v34 + 56) - v59) >> 4);
      }
    }

    xgboost::common::WQSummary<float,float>::CopyFrom(v83, v59);
    goto LABEL_74;
  }

LABEL_85:
  dmlc::OMPException::Rethrow(&v87);
  std::mutex::~mutex(&v88);
  std::exception_ptr::~exception_ptr(&v87);
  v70 = rabit::engine::GetEngine(v69);
  v71 = (*(*v70 + 72))(v70);
  if (v71 != 1)
  {
    v87.__ptr_ = 0;
    std::vector<unsigned long>::vector[abi:ne200100](&v76, 1uLL);
    v87.__ptr_ = 0;
    std::vector<unsigned long>::vector[abi:ne200100](&v75, v71 * v81 + v71);
    xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::GatherSketchInfo();
  }

  std::string::basic_string[abi:ne200100]<0>(&v87, "AllReduce");
  xgboost::common::Monitor::Stop();
  if (v88.__m_.__opaque[7] < 0)
  {
    operator delete(v87.__ptr_);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  v72 = *MEMORY[0x277D85DE8];
}

void sub_274CCE248()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  JUMPOUT(0x274CCE32CLL);
}

void sub_274CCE254()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  JUMPOUT(0x274CCE32CLL);
}

void sub_274CCE2F0()
{
  if (*(v0 - 145) < 0)
  {
    v1 = *(v0 - 168);
    JUMPOUT(0x274CCE368);
  }

  if (v2)
  {
    operator delete(v2);
  }

  JUMPOUT(0x274CCE460);
}

void sub_274CCE374()
{
  v1 = *(v0 - 168);
  *(v0 - 168) = 0;
  if (v1)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v0 - 168, v1);
  }

  if (v2)
  {
    operator delete(v2);
  }

  JUMPOUT(0x274CCE460);
}

void sub_274CCE3A0(_Unwind_Exception *a1)
{
  if (*(v1 - 145) < 0)
  {
    v2 = *(v1 - 168);
    JUMPOUT(0x274CCE43CLL);
  }

  _Unwind_Resume(a1);
}

void sub_274CCE3DC(_Unwind_Exception *a1)
{
  v3 = *(v1 - 168);
  *(v1 - 168) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v1 - 168, v3);
  }

  _Unwind_Resume(a1);
}

void sub_274CCE418(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_274CCE444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer>,xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer*>>::~__exception_guard_exceptions[abi:ne200100](&a37);
  std::__split_buffer<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer> &>::~__split_buffer(v37 - 168);
  _Unwind_Resume(a1);
}

void xgboost::common::anonymous namespace::AllreduceCategories(rabit::engine *a1, int a2, void *a3)
{
  v83 = *MEMORY[0x277D85DE8];
  Engine = rabit::engine::GetEngine(a1);
  v6 = (*(*Engine + 72))(Engine);
  v7 = rabit::engine::GetEngine(v6);
  v8 = (*(*v7 + 64))(v7);
  v56 = v6;
  if (v6 != 1)
  {
    v9 = v8;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) + 1;
    v81.__ptr_ = 0;
    std::vector<unsigned long>::vector[abi:ne200100](&v74, v10);
    v11 = v74;
    if (a3[1] != *a3)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
      if (v12 <= 1)
      {
        v12 = 1;
      }

      v13 = v74 + 8;
      v14 = (*a3 + 16);
      do
      {
        v15 = *v14;
        v14 += 3;
        *v13++ = v15;
        --v12;
      }

      while (v12);
    }

    v16 = v75;
    v18 = v11 + 1;
    v17 = *v11;
    v19 = v11 == v75 || v18 == v75;
    if (!v19)
    {
      do
      {
        v17 += *v18;
        *v18++ = v17;
      }

      while (v18 != v16);
      v17 = *v11;
    }

    LODWORD(v59[0]) = 0;
    if (v17)
    {
      dmlc::LogCheckFormat<unsigned long,int>(v11, v59);
    }

    v81.__ptr_ = 0;
    v20 = std::vector<unsigned long>::vector[abi:ne200100](&v72, ((v75 - v74) >> 3) * v6);
    v21 = v72;
    if (v75 != v74)
    {
      v20 = memmove(v72 + 8 * v9 * ((v75 - v74) >> 3), v74, v75 - v74);
      v21 = v72;
    }

    v22 = v73;
    v23 = rabit::engine::GetEngine(v20);
    (*(*v23 + 8))(v23, v21, 8, (v22 - v21) >> 3, rabit::op::Reducer<rabit::op::Sum,unsigned long>, 0, 0);
    v71 = *(v75 - 1);
    LODWORD(v81.__ptr_) = 0;
    std::vector<float>::vector[abi:ne200100](&v69, v71);
    v24 = *a3;
    v25 = a3[1];
    if (*a3 != v25)
    {
      v26 = v69;
      do
      {
        v27 = *v24;
        if (*v24 != v24 + 1)
        {
          do
          {
            *v26 = *(v27 + 7);
            v28 = v27[1];
            if (v28)
            {
              do
              {
                v29 = v28;
                v28 = *v28;
              }

              while (v28);
            }

            else
            {
              do
              {
                v29 = v27[2];
                v19 = *v29 == v27;
                v27 = v29;
              }

              while (!v19);
            }

            ++v26;
            v27 = v29;
          }

          while (v29 != v24 + 1);
        }

        v24 += 3;
      }

      while (v24 != v25);
    }

    v81.__ptr_ = 0;
    v30 = std::vector<unsigned long>::vector[abi:ne200100](&v67, v56 + 1);
    v31 = v67;
    *(v67 + v9 + 1) = v71;
    v32 = v68;
    v33 = rabit::engine::GetEngine(v30);
    (*(*v33 + 8))(v33, v31, 8, (v32 - v31) >> 3, rabit::op::Reducer<rabit::op::Sum,unsigned long>, 0, 0);
    v34 = v68;
    if (v67 != v68)
    {
      v35 = v67 + 8;
      if (v67 + 8 != v68)
      {
        v36 = *v67;
        do
        {
          v36 += *v35;
          *v35++ = v36;
        }

        while (v35 != v34);
      }
    }

    v37 = *(v34 - 1);
    LODWORD(v81.__ptr_) = 0;
    v38 = std::vector<float>::vector[abi:ne200100](&__p, v37);
    v39 = *(v67 + v9);
    v64 = *(v67 + v9 + 1) - v39;
    if (v64 != v71)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v64, &v71);
    }

    v40 = __p;
    if (v70 != v69)
    {
      v38 = memmove(__p + 4 * v39, v69, v70 - v69);
      v40 = __p;
    }

    v41 = v66;
    v42 = rabit::engine::GetEngine(v38);
    (*(*v42 + 8))(v42, v40, 4, (v41 - v40) >> 2, rabit::op::Reducer<rabit::op::Sum,float>, 0, 0);
    v59[0] = (v66 - __p) >> 2;
    v59[1] = __p;
    v60 = (v68 - v67) >> 3;
    v61 = v67;
    v62[0] = (v73 - v72) >> 3;
    v62[1] = v72;
    v44 = *a3;
    v43 = a3[1];
    v55 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *a3) >> 3);
    v63 = v55;
    LODWORD(v80[0]) = a2;
    LODWORD(v78) = 1;
    if (a2 < 1)
    {
      dmlc::LogCheckFormat<int,int>(v80, &v78);
    }

    v81.__ptr_ = 0;
    v82.__m_.__sig = 850045863;
    memset(v82.__m_.__opaque, 0, sizeof(v82.__m_.__opaque));
    if (v43 != v44)
    {
      v45 = 0;
      v58 = v9;
      v46 = v9 + 1;
      do
      {
        if (*a1)
        {
          if (*a1 <= v45)
          {
            goto LABEL_67;
          }

          if (*(*(a1 + 1) + v45) == 1 && v56 >= 1)
          {
            v48 = 0;
            v49 = (v45 + 1);
            while (1)
            {
              v50 = v46;
              if (v48 != v58)
              {
                v50 = v48 + 1;
                if (v60 <= v48 + 1)
                {
                  goto LABEL_67;
                }

                xgboost::common::Span<float,18446744073709551615ul>::subspan(v59, v61[v48], v61[v50] - v61[v48], v80);
                xgboost::common::Span<unsigned long,18446744073709551615ul>::subspan(&v78, v62, (v63 + 1) * v48, v63 + 1);
                if (v78 <= v45 || v78 <= v49)
                {
                  goto LABEL_67;
                }

                xgboost::common::Span<float,18446744073709551615ul>::subspan(v80, *(v79 + 8 * v45), *(v79 + 8 * v49) - *(v79 + 8 * v45), v77);
                v51 = v77[0];
                if (v77[0])
                {
                  break;
                }
              }

LABEL_54:
              v48 = v50;
              if (v50 >= v56)
              {
                goto LABEL_55;
              }
            }

            v52 = 0;
            v53 = v77[0];
            while (v52 < v53)
            {
              v76 = *(v77[1] + 4 * v52);
              std::__tree<float>::__emplace_unique_key_args<float,float &>(*a3 + 24 * v45, v76);
              v53 = v77[0];
              if (v52 == v77[0])
              {
                break;
              }

              if (v51 == ++v52)
              {
                goto LABEL_54;
              }
            }

LABEL_67:
            std::terminate();
          }
        }

LABEL_55:
        ++v45;
      }

      while (v45 != v55);
    }

    dmlc::OMPException::Rethrow(&v81);
    std::mutex::~mutex(&v82);
    std::exception_ptr::~exception_ptr(&v81);
    if (__p)
    {
      v66 = __p;
      operator delete(__p);
    }

    if (v67)
    {
      v68 = v67;
      operator delete(v67);
    }

    if (v69)
    {
      v70 = v69;
      operator delete(v69);
    }

    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }
  }

  v54 = *MEMORY[0x277D85DE8];
}

void sub_274CCED2C()
{
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  JUMPOUT(0x274CCEE18);
}

void sub_274CCEDA0()
{
  dmlc::LogMessageFatal::~LogMessageFatal((v0 - 184));
  v1 = *(v0 - 168);
  *(v0 - 168) = 0;
  if (v1)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v0 - 168);
  }

  JUMPOUT(0x274CCEE18);
}

void sub_274CCEDB4()
{
  v1 = *(v0 - 168);
  *(v0 - 168) = 0;
  if (v1)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v0 - 168, v1);
  }

  JUMPOUT(0x274CCEE68);
}

void sub_274CCEDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274CCEDC8);
}

void sub_274CCEDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274CCEDECLL);
}

void sub_274CCEE04(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274CCEE78);
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v2);
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::PushRowPage(uint64_t a1, uint64_t **a2, const xgboost::MetaInfo *a3, unint64_t *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "PushRowPage");
  xgboost::common::Monitor::Start();
  if (v24 < 0)
  {
    operator delete(__p);
  }

  v7 = *a3;
  v22 = *(a3 + 1);
  v13 = *(a3 + 2);
  LODWORD(v19) = *(a1 + 104);
  LODWORD(v17) = 1;
  if (v19 >= 1)
  {
    v19 = (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 8) - *a1) >> 3));
    if (v19 != v22)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(&v19, &v22);
    }

    if (*a4)
    {
      v8 = a4[1];
      v18[0] = *a4;
      v18[1] = v8;
    }

    else if (*(a1 + 100) == 1)
    {
    }

    else
    {
      v9 = *(a3 + 9);
      v20 = 0;
      v21 = 0;
      v19 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v19, *v9, v9[1], (v9[1] - *v9) >> 2);
    }

    if (v19 != v20)
    {
      v17 = ((v20 - v19) >> 2);
      if (v17 != *a3)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long long>(&v17, a3);
      }
    }

    v10 = (*a2)[1];
    v14 = *a2[1];
    v15 = **a2;
    v11 = *(a3 + 2);
    v12 = *(a1 + 104);
    xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::LoadBalance();
  }

  dmlc::LogCheckFormat<int,int>(&v19, &v17);
}

void sub_274CCF498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::exception_ptr a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, std::exception_ptr a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *xgboost::common::anonymous namespace::UnrollGroupWeights(uint64_t *this, const xgboost::MetaInfo *a2)
{
  v2 = this;
  v3 = *(a2 + 9);
  if (*v3 == v3[1])
  {
    *this = 0;
    this[1] = 0;
    this[2] = 0;
  }

  else
  {
    v5 = *a2;
    v16 = v5;
    std::vector<float>::vector[abi:ne200100](this, v5);
    v15 = (*(a2 + 7) - *(a2 + 6)) >> 2;
    v14 = 2;
    if (v15 < 2)
    {
      dmlc::LogCheckFormat<unsigned long,int>(&v15, &v14);
    }

    v6 = *(a2 + 7);
    v7 = *(v6 - 4);
    this = (v6 - 4);
    if (v5 != v7)
    {
      dmlc::LogCheckFormat<unsigned int,unsigned long>(this, &v16);
    }

    v8 = v16;
    if (v16)
    {
      v9 = 0;
      v10 = 0;
      v11 = *v3;
      v12 = *v2;
      v13 = *(a2 + 6);
      do
      {
        *(v12 + 4 * v9) = *(v11 + 4 * v10);
        if (v9 == *(v13 + 4 * (v10 + 1)))
        {
          ++v10;
        }

        ++v9;
      }

      while (v8 != v9);
    }
  }

  return this;
}

void sub_274CCF84C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::anonymous namespace::MergeWeights(uint64_t *a1, void *a2, unint64_t *a3, int a4, int a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v31 = *a3;
  if (v31 != *a2)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long long>(&v31, a2);
  }

  std::vector<float>::vector[abi:ne200100](a1, *a3);
  v10 = a2[9];
  if (a4)
  {
    v31 = (a2[7] - a2[6]) >> 2;
    v32 = 2;
    if (v31 < 2)
    {
      dmlc::LogCheckFormat<unsigned long,int>(&v31, &v32);
    }

    v11 = a2[7];
    v13 = *(v11 - 4);
    v12 = (v11 - 4);
    v31 = *a3;
    if (v31 != v13)
    {
      dmlc::LogCheckFormat<unsigned int,unsigned long>(v12, &v31);
    }

    v14 = *a3;
    if (*a3)
    {
      v15 = 0;
      v16 = 0;
      v17 = a3[1];
      v18 = *v10;
      v19 = v10[1];
      v20 = *a1;
      v21 = a2[6];
      do
      {
        if (v18 == v19)
        {
          v22 = 1.0;
        }

        else
        {
          v22 = *(v18 + 4 * v16);
        }

        *(v20 + 4 * v15) = *(v17 + 4 * v15) * v22;
        if (v15 == *(v21 + 4 * (v16 + 1)))
        {
          ++v16;
        }

        ++v15;
      }

      while (v14 != v15);
    }
  }

  else
  {
    v23 = *a3;
    LODWORD(v31) = a5;
    v32 = 1;
    if (a5 < 1)
    {
      dmlc::LogCheckFormat<int,int>(&v31, &v32);
    }

    v33.__ptr_ = 0;
    v34.__m_.__sig = 850045863;
    memset(v34.__m_.__opaque, 0, sizeof(v34.__m_.__opaque));
    if (v23)
    {
      v24 = 0;
      v25 = *a3;
      v26 = *v10;
      v27 = v10[1];
      v28 = *a1;
      do
      {
        if (v25 == v24)
        {
          std::terminate();
        }

        if (v26 == v27)
        {
          v29 = 1.0;
        }

        else
        {
          v29 = *(v26 + 4 * v24);
        }

        *(v28 + 4 * v24) = *(a3[1] + 4 * v24) * v29;
        ++v24;
      }

      while (v23 != v24);
    }

    dmlc::OMPException::Rethrow(&v33);
    std::mutex::~mutex(&v34);
    std::exception_ptr::~exception_ptr(&v33);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void sub_274CCFD14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::exception_ptr a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::MakeCuts()
{
  v8 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "MakeCuts");
  xgboost::common::Monitor::Start();
  if (v7 < 0)
  {
    operator delete(__p);
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v0 = 0;
  v1 = 0;
  v2 = 0;
  xgboost::common::SketchContainerImpl<xgboost::common::WQuantileSketch<float,float>>::AllReduce();
}

{
    ;
  }
}

void sub_274CD05D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::mutex::~mutex((v27 + 8));
  std::exception_ptr::~exception_ptr(&v33);
  v32 = &v29;
  std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer>>::__destroy_vector::operator()[abi:ne200100](&v32);
  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  v30[0] = &v31;
  std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer>>::__destroy_vector::operator()[abi:ne200100](v30);
  _Unwind_Resume(a1);
}

void sub_274CD0640(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x274CD0710);
}

void sub_274CD0660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a20);
  v23 = a22;
  a22 = 0;
  if (v23)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a22, v23);
  }

  v27 = &v24;
  std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer>>::__destroy_vector::operator()[abi:ne200100](&v27);
  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  v25[0] = &v26;
  std::vector<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer,std::allocator<xgboost::common::QuantileSketchTemplate<float,float,xgboost::common::WQSummary<float,float>>::SummaryContainer>>::__destroy_vector::operator()[abi:ne200100](v25);
  _Unwind_Resume(a1);
}

void sub_274CD0698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a20);
  v22 = a22;
  a22 = 0;
  if (v22)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a22);
  }

  JUMPOUT(0x274CD06E0);
}

void sub_274CD06CC(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274CD0710);
}

void std::vector<float>::resize(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (a1[1] - *a1) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v4, a3, a4);
  }
}

float xgboost::common::AddCategories(xgboost::common *a1, uint64_t a2)
{
  v5 = (a1 + 8);
  v4 = *a1;
  if (*a1 != (a1 + 8))
  {
    v6 = *a1;
    while (1)
    {
      v7 = v6[7];
      if (v7 < 0.0 || v7 >= 16777000.0)
      {
        break;
      }

      v9 = *(v6 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v6 + 2);
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
      if (v10 == v5)
      {
        goto LABEL_14;
      }
    }

    xgboost::common::InvalidCategory(a1);
    v4 = *a1;
  }

LABEL_14:
  if (v4 == v5)
  {
    v4 = v5;
  }

  else
  {
    v12 = v4;
    while (1)
    {
      v13 = *(v12 + 1);
      v14 = v12;
      if (v13)
      {
        do
        {
          v12 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v12 = *(v14 + 2);
          v11 = *v12 == v14;
          v14 = v12;
        }

        while (!v11);
      }

      if (v12 == v5)
      {
        break;
      }

      if (v4[7] < v12[7])
      {
        v4 = v12;
      }
    }
  }

  v15 = *(a2 + 8);
  v16 = v4[7];
  v17 = *(a1 + 2);
  if ((v16 + 1.0) < v17)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, " (", 2);
    v18 = std::ostream::operator<<();
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " vs. ", 5);
    v20 = MEMORY[0x277C68E50](v19, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ") ", 2);
    operator new();
  }

  if ((v16 & 0x80000000) == 0)
  {
    v21 = 0;
    v22 = v15[1];
    do
    {
      v23 = v21;
      v24 = v15[2];
      if (v22 >= v24)
      {
        v25 = *v15;
        v26 = v22 - *v15;
        v27 = v26 >> 2;
        v28 = (v26 >> 2) + 1;
        if (v28 >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v29 = v24 - v25;
        if (v29 >> 1 > v28)
        {
          v28 = v29 >> 1;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v30 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v28;
        }

        if (v30)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(v15, v30);
        }

        *(4 * v27) = v23;
        v22 = (4 * v27 + 4);
        memcpy(0, v25, v26);
        v31 = *v15;
        *v15 = 0;
        v15[1] = v22;
        v15[2] = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        *v22++ = v23;
      }

      v15[1] = v22;
      ++v21;
    }

    while (v16 + 1 != v21);
  }

  return v16;
}

void sub_274CD0B68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::SketchContainerImpl(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, char a5, int a6)
{
  v11 = (a1 + 24);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  std::vector<xgboost::FeatureType>::vector[abi:ne200100]<xgboost::common::detail::SpanIterator<xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,true>,0>((a1 + 48), a4, 0, a4, *a4);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *a2;
  *(a1 + 88) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 96) = a3;
  *(a1 + 100) = a5;
  *(a1 + 104) = a6;
  *(a1 + 108) = 0;
  xgboost::common::Monitor::Monitor((a1 + 112));
  std::string::basic_string[abi:ne200100]<0>(&__str, "SketchContainerImpl");
  std::string::operator=((a1 + 112), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v13 = *(a1 + 72);
  v12 = *(a1 + 80);
  v23 = 0;
  v14 = v12 - v13;
  v21 = v14 >> 3;
  if (!v14)
  {
    dmlc::LogCheckFormat<unsigned long,int>(&v21, &v23);
  }

  std::vector<xgboost::common::WXQuantileSketch<float,float>>::resize(a1, (*(a1 + 80) - *(a1 + 72)) >> 3);
  LODWORD(v21) = *(a1 + 104);
  v23 = 1;
  if (v21 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v21, &v23);
  }

  std::vector<std::set<float>>::resize(v11, (*(a1 + 80) - *(a1 + 72)) >> 3);
  v16 = *(a1 + 48);
  v15 = *(a1 + 56);
  if (v16 == v15)
  {
    v18 = 0;
  }

  else
  {
    v17 = v16 + 1;
    do
    {
      v18 = *(v17 - 1) == 1;
      v19 = *(v17 - 1) == 1 || v17 == v15;
      ++v17;
    }

    while (!v19);
  }

  *(a1 + 108) = v18;
  return a1;
}

void sub_274CD1044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17)
{
  xgboost::common::Monitor::~Monitor((v18 + 40));
  v20 = *v18;
  if (*v18)
  {
    v17[10] = v20;
    operator delete(v20);
  }

  v21 = v17[6];
  if (v21)
  {
    v17[7] = v21;
    operator delete(v21);
  }

  std::vector<std::set<float>>::__destroy_vector::operator()[abi:ne200100](&a17);
  a17 = v17;
  std::vector<xgboost::common::WXQuantileSketch<float,float>>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void std::vector<xgboost::common::WXQuantileSketch<float,float>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<xgboost::common::WXQuantileSketch<float,float>>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<xgboost::common::WXQuantileSketch<float,float>>::__base_destruct_at_end[abi:ne200100](a1, *a1 + 136 * a2);
  }
}

void xgboost::common::SketchContainerImpl<xgboost::common::WXQuantileSketch<float,float>>::CalcColumnSize(uint64_t **a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v39 = *MEMORY[0x277D85DE8];
  v7 = **a1;
  v8 = (*a1)[1];
  v9 = *a1[1];
  std::vector<std::vector<unsigned long>>::vector[abi:ne200100](&v33, a3);
  v10 = v33;
  for (i = v34; v10 != i; v10 += 3)
  {
    v37.__ptr_ = 0;
    std::vector<unsigned long>::resize(v10, a2, &v37);
  }

  v12 = (v8 - v7) >> 3;
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  v35 = 1;
  v36 = v4;
  if (v4 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v36, &v35);
  }

  v37.__ptr_ = 0;
  v38.__m_.__sig = 850045863;
  memset(v38.__m_.__opaque, 0, sizeof(v38.__m_.__opaque));
  if (v12 >= 2)
  {
    v22 = 0;
    do
    {
      if (v34 == v33)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
      }

      v23 = (v7 + 8 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = v25 - *v23;
      if (v26)
      {
        v27 = v9 == 0;
      }

      else
      {
        v27 = 0;
      }

      if (v27)
      {
        std::terminate();
      }

      if (v25 != v24)
      {
        v28 = (v9 + 8 * v24);
        v29 = *v33;
        v30 = (v33[1] - *v33) >> 3;
        do
        {
          v32 = *v28;
          v28 += 2;
          v31 = v32;
          if (v30 <= v32)
          {
            std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
          }

          ++*(v29 + 8 * v31);
          --v26;
        }

        while (v26);
      }

      ++v22;
    }

    while (v22 != v13);
  }

  dmlc::OMPException::Rethrow(&v37);
  std::mutex::~mutex(&v38);
  std::exception_ptr::~exception_ptr(&v37);
  v37.__ptr_ = 0;
  std::vector<unsigned long>::vector[abi:ne200100](a4, a2);
  v35 = 1;
  v36 = v4;
  v37.__ptr_ = 0;
  v38.__m_.__sig = 850045863;
  memset(v38.__m_.__opaque, 0, sizeof(v38.__m_.__opaque));
  if (a2)
  {
    v14 = 0;
    v15 = v33;
    v16 = v34;
    v17 = *a4;
    do
    {
      if (v15 != v16)
      {
        v18 = *(v17 + 8 * v14);
        v19 = v15;
        do
        {
          v20 = *v19;
          v19 += 3;
          v18 += *(v20 + 8 * v14);
          *(v17 + 8 * v14) = v18;
        }

        while (v19 != v16);
      }

      ++v14;
    }

    while (v14 != a2);
  }

  dmlc::OMPException::Rethrow(&v37);
  std::mutex::~mutex(&v38);
  std::exception_ptr::~exception_ptr(&v37);
  v37.__ptr_ = &v33;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v37);
  v21 = *MEMORY[0x277D85DE8];
}

void sub_274CD159C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  a13 = &a10;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_274CD15A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = a15;
  a15 = 0;
  if (v16)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a15, v16);
  }

  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  JUMPOUT(0x274CD1664);
}

void sub_274CD15B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15)
{
  v16 = a15;
  a15 = 0;
  if (v16)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a15, v16);
  }

  a13 = &a10;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_274CD15B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::exception_ptr a15)
{
  std::mutex::~mutex((v16 + 8));
  std::exception_ptr::~exception_ptr(&a15);
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  JUMPOUT(0x274CD1664);
}

void sub_274CD15D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, std::exception_ptr a15)
{
  std::mutex::~mutex((v15 + 8));
  std::exception_ptr::~exception_ptr(&a15);
  a13 = &a10;
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_274CD15F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274CD1600);
}

void sub_274CD162C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274CD1638);
}

void sub_274CD1650(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274CD1674);
}