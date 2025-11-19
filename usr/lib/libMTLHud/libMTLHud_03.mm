_BYTE *std::string::__init_with_size[abi:ne200100]<char *,char *>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_391C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_brack);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return v4;
  }

  v6 = a4;
  memset(&v25, 0, sizeof(v25));
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_9:
    v11 = *(a1 + 24) & 0x1F0;
    goto LABEL_10;
  }

  v9 = a2[1];
  if (v9 != 46)
  {
    if (v9 == 58)
    {
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(a1, a2 + 2, a3, a4);
      goto LABEL_34;
    }

    if (v9 == 61)
    {
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(a1, a2 + 2, a3, a4);
LABEL_34:
      v6 = v10;
      v18 = 0;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, a2 + 2, a3, &v25);
  v4 = v19;
  v11 = *(a1 + 24) & 0x1F0;
  size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v13 = v19;
  if (!size)
  {
LABEL_10:
    if ((v11 | 0x40) == 0x40)
    {
      v12 = *v4;
      if (v12 == 92)
      {
        if (v11)
        {
          v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4 + 1, a3, &v25);
        }

        else
        {
          v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v4 + 1, a3, &v25, v6);
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v12) = *v4;
    }

    std::string::operator=(&v25, v12);
    v13 = v4 + 1;
  }

LABEL_16:
  if (v13 == a3 || (v14 = *v13, v14 == 93) || (v16 = v13 + 1, v13 + 1 == a3) || v14 != 45 || *v16 == 93)
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v25.__r_.__value_.__l.__size_)
      {
        if (v25.__r_.__value_.__l.__size_ != 1)
        {
          v15 = v25.__r_.__value_.__r.__words[0];
LABEL_40:
          std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v6, v15->__r_.__value_.__s.__data_[0], v15->__r_.__value_.__s.__data_[1]);
          goto LABEL_41;
        }

        v15 = v25.__r_.__value_.__r.__words[0];
        goto LABEL_25;
      }
    }

    else if (*(&v25.__r_.__value_.__s + 23))
    {
      v15 = &v25;
      if (HIBYTE(v25.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_40;
      }

LABEL_25:
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v6, v15->__r_.__value_.__s.__data_[0]);
    }

LABEL_41:
    v18 = 1;
    v4 = v13;
    goto LABEL_42;
  }

  memset(&v24, 0, sizeof(v24));
  v4 = v13 + 2;
  if (v13 + 2 != a3 && *v16 == 91 && *v4 == 46)
  {
    v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v13 + 3, a3, &v24);
LABEL_55:
    v4 = v17;
    goto LABEL_56;
  }

  if ((v11 | 0x40) == 0x40)
  {
    LODWORD(v16) = *v16;
    if (v16 == 92)
    {
      if (v11)
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v13 + 2, a3, &v24);
      }

      else
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v13 + 2, a3, &v24, v6);
      }

      goto LABEL_55;
    }
  }

  else
  {
    LOBYTE(v16) = *v16;
  }

  std::string::operator=(&v24, v16);
LABEL_56:
  v23 = v25;
  memset(&v25, 0, sizeof(v25));
  __p = v24;
  memset(&v24, 0, sizeof(v24));
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v6, &v23, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v18 = 1;
LABEL_42:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v18)
  {
    return v4;
  }

  return v6;
}

void sub_39678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_32;
  }

  v7 = a2;
  for (i = a2; ; v7 = i)
  {
    v9 = *i++;
    if (v9 == 61 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_32;
    }

    --v4;
  }

  if (v7 == a3)
  {
LABEL_32:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char const*>(a1, a2, v7, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_13;
    }

LABEL_33:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  v11 = v19;
LABEL_13:
  std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(a1, v11, &v11[v10], __p);
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    std::vector<std::string>::push_back[abi:ne200100](a4 + 136, __p);
  }

  else
  {
    v13 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v13 = v20;
    }

    if (v13 == 2)
    {
      v15 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v15 = v19;
      }

      std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v15, v15[1]);
    }

    else
    {
      if (v13 != 1)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
      }

      v14 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v14 = v19;
      }

      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v14);
    }
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  return v7 + 2;
}

void sub_3985C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_10;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 58 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_10:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = std::regex_traits<char>::__lookup_classname<char const*>(a1, a2, v6, *(a1 + 24) & 1);
  if (!v9)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
  }

  *(a4 + 160) |= v9;
  return v6 + 2;
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char const*>(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          goto LABEL_25;
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        v9 = this;
        v10 = 8;
LABEL_19:
        std::string::operator=(v9, v10);
        return a2 + 1;
      }

      if (v6 != 100)
      {
        goto LABEL_25;
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (*a2)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_21:
        *(a5 + 164) = v7;
        return a2 + 1;
      }

      goto LABEL_25;
    }

    v9 = this;
    v10 = 0;
    goto LABEL_19;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_21;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
    return a2 + 1;
  }

LABEL_25:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_51:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 <= 0x65u)
  {
    if (v5 <= 0x5Bu)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_32;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          v5 = 7;
          goto LABEL_31;
        }

        v5 = 7;
        goto LABEL_47;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v5 = 8;
LABEL_31:
          std::string::operator=(v6, v5);
          return a2 + 1;
        }

        v5 = 8;
        goto LABEL_47;
      }

      goto LABEL_32;
    }

    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_47;
  }

  if (v5 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v5 = 12;
        goto LABEL_31;
      }

      v5 = 12;
      goto LABEL_47;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v5 = 10;
        goto LABEL_31;
      }

      v5 = 10;
      goto LABEL_47;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          v6 = this;
          v5 = 13;
          goto LABEL_31;
        }

        v5 = 13;
        goto LABEL_47;
      case 't':
        if (this)
        {
          v6 = this;
          v5 = 9;
          goto LABEL_31;
        }

        v5 = 9;
        goto LABEL_47;
      case 'v':
        if (this)
        {
          v6 = this;
          v5 = 11;
          goto LABEL_31;
        }

        v5 = 11;
LABEL_47:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
        return a2 + 1;
    }
  }

LABEL_32:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_51;
  }

  v7 = v5 - 48;
  v8 = a2 + 1;
  if (a2 + 1 != a3 && (*v8 & 0xF8) == 0x30)
  {
    v7 = *v8 + 8 * v7 - 48;
    v8 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v9 = *v8 + 8 * v7 - 48;
      if ((*v8 & 0xF8) == 0x30)
      {
        v8 = a2 + 3;
        v7 = v9;
      }
    }
  }

  if (this)
  {
    std::string::operator=(this, v7);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
  }

  return v8;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = v4[23];
        v8 = v7 < 0 ? *(v4 + 1) : v4[23];
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 40))(*(a1 + 24), v9[i]);
        v11 = v4;
        if (v4[23] < 0)
        {
          v11 = *v4;
        }

        v11[i] = v10;
      }

      for (j = 0; ; ++j)
      {
        v20 = v3[23];
        v21 = v20 < 0 ? *(v3 + 1) : v3[23];
        if (j >= v21)
        {
          break;
        }

        v22 = v3;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = *v3;
        }

        v23 = (*(**(a1 + 24) + 40))(*(a1 + 24), v22[j]);
        v24 = v3;
        if (v3[23] < 0)
        {
          v24 = *v3;
        }

        v24[j] = v23;
      }
    }

    else
    {
      for (k = 0; ; ++k)
      {
        v15 = a2[23];
        v16 = v15 < 0 ? *(a2 + 1) : a2[23];
        if (k >= v16)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        v18 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *a2;
        }

        v18[k] = v17[k];
      }

      for (m = 0; ; ++m)
      {
        v26 = a3[23];
        v27 = v26 < 0 ? *(a3 + 1) : a3[23];
        if (m >= v27)
        {
          break;
        }

        v28 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v28 = *a3;
        }

        v29 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v29 = *a3;
        }

        v29[m] = v28[m];
      }
    }

    v30 = v4[23];
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = *(v31 + 1);
    }

    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(a1 + 16, v4, &v4[v30]);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(a1 + 16, v3, &v3[v32]);
    *v45 = v43;
    v46 = v44;
    *__p = *v41;
    v48 = v42;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }

  else
  {
    v12 = a2[23];
    if (v12 < 0)
    {
      v13 = *(a2 + 1);
    }

    else
    {
      v13 = a2[23];
    }

    if (v13 != 1)
    {
      goto LABEL_74;
    }

    v34 = a3[23];
    if (v34 < 0)
    {
      v34 = *(a3 + 1);
    }

    if (v34 != 1)
    {
LABEL_74:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
    }

    if (*(a1 + 169) == 1)
    {
      v35 = a2;
      if ((v12 & 0x80000000) != 0)
      {
        v35 = *a2;
      }

      v36 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v35);
      v37 = v4;
      if (v4[23] < 0)
      {
        v37 = *v4;
      }

      *v37 = v36;
      v38 = v3;
      if (v3[23] < 0)
      {
        v38 = *v3;
      }

      v39 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v38);
      v40 = v3;
      if (v3[23] < 0)
      {
        v40 = *v3;
      }

      *v40 = v39;
    }

    *v45 = *v4;
    v46 = *(v4 + 2);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    *__p = *v3;
    v48 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  std::vector<std::pair<char,char>>::push_back[abi:ne200100](v6, v7);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_collate);
}

void std::regex_traits<char>::__lookup_collatename<char const*>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_3A3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_3A4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
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

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *&dword_10[6 * v2] = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_ctype);
}

uint64_t std::regex_traits<char>::__lookup_classname<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v7, v7 + v6);
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  classname = std::__get_classname(v8, a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return classname;
}

void sub_3A974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 64;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 64;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 64, &v7);
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
      std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
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

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_3AC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_range);
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

void std::vector<std::pair<char,char>>::push_back[abi:ne200100](uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 1;
    if (v7 <= -2)
    {
      std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v10);
    }

    v11 = (2 * v7);
    *v11 = *a2;
    v6 = 2 * v7 + 2;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void *a1)
{
  *a1 = off_69860;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void *a1)
{
  *a1 = off_69860;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *std::__end_marked_subexpression<char>::~__end_marked_subexpression(void *a1)
{
  *a1 = off_69860;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void *a1)
{
  *a1 = off_69860;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 != a3)
      {
        do
        {
          v6 = *a2;
          if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
          {
            break;
          }

          if (v5 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v5 = v6 + 10 * v5 - 48;
          *a4 = v5;
          ++a2;
        }

        while (a2 != a3);
      }
    }
  }

  return a2;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_badbrace);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_brace);
}

void std::__loop<char>::~__loop(void *a1)
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  operator delete();
}

unsigned int *std::__loop<char>::__exec(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return std::__loop<char>::__init_repeat[abi:ne200100](result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:ne200100](result, a3);
  }

  return result;
}

void std::__owns_two_states<char>::~__owns_two_states(void *a1)
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  operator delete();
}

void *std::__owns_two_states<char>::~__owns_two_states(void *a1)
{
  *a1 = off_69CE0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_69860;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unsigned int *std::__loop<char>::__init_repeat[abi:ne200100](unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__alternate<char>::~__alternate(void *a1)
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  operator delete();
}

uint64_t std::__alternate<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_empty);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v9 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v8, a3, end, marked_count + 1, v9);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3 && v6 + 1 != a3 && *v6 == 92)
  {
    v8 = v6[1];
    if (v8 == 40)
    {
      v9 = v6 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
      marked_count = a1->__marked_count_;
      do
      {
        v11 = v9;
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(a1, v9, a3);
        v9 = v12;
      }

      while (v12 != v11);
      if (v11 == a3 || v12 + 1 == a3 || *v12 != 92 || v12[1] != 41)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      v7 = v12 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, marked_count);
    }

    else
    {
      v13 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v8);
      v14 = 2;
      if (!v13)
      {
        v14 = 0;
      }

      v7 += v14;
    }
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = a2;
  if (a2 != a3)
  {
    v7 = __mexp_end;
    v8 = __mexp_begin;
    v11 = *a2;
    if (v11 == 42)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(this, 0, 0xFFFFFFFFFFFFFFFFLL, __s, __mexp_begin, __mexp_end, 1);
      return ++v6;
    }

    if (a2 + 1 != a3 && v11 == 92 && a2[1] == 123)
    {
      v14 = a2 + 2;
      LODWORD(__max) = 0;
      v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(this, a2 + 2, a3, &__max);
      if (v15 == v14)
      {
        goto LABEL_25;
      }

      if (v15 != a3)
      {
        v16 = v15 + 1;
        v17 = *v15;
        if (v17 == 44)
        {
          v26 = -1;
          v18 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(this, v16, a3, &v26);
          if (v18 != a3)
          {
            v19 = v18;
            if (v18 + 1 != a3 && *v18 == 92)
            {
              v20 = v18[1];
              v21 = v20 == 125;
              if (v20 == 125)
              {
                v22 = v26;
                if (v26 == -1)
                {
                  v23 = v8;
                  v24 = v7;
                  v25 = this;
                  v22 = -1;
                  goto LABEL_23;
                }

                if (v26 >= __max)
                {
                  v23 = v8;
                  v24 = v7;
                  v25 = this;
LABEL_23:
                  std::basic_regex<char,std::regex_traits<char>>::__push_loop(v25, __max, v22, __s, v23, v24, 1);
                  return &v19[2 * v21];
                }

LABEL_25:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
              }
            }
          }
        }

        else if (v16 != a3 && v17 == 92 && *v16 == 125)
        {
          v6 = v15 + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(this, __max, __max, __s, v8, v7, 1);
          return v6;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }
  }

  return v6;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v7 = a2 + 1;
    v6 = *a2;
    if (a2 + 1 == a3 && v6 == 36 || ((v6 - 46) <= 0x2E ? (v8 = ((1 << (v6 - 46)) & 0x600000000001) == 0) : (v8 = 1), !v8))
    {
      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(this, a2, a3);
      v7 = v9;
      if (v9 == a2)
      {
        if (*v9 == 46)
        {
          operator new();
        }

        goto LABEL_12;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v6);
    }

    return v7;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(this, a2, a3);
  if (v7 != a2)
  {
    return v7;
  }

LABEL_12:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(std::basic_regex<char> *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      v3 += 2;
    }
  }

  return v3;
}

void *std::__match_any<char>::~__match_any(void *a1)
{
  *a1 = off_69860;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void std::__match_any<char>::~__match_any(void *a1)
{
  *a1 = off_69860;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t std::__match_any<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

BOOL std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(std::basic_regex<char> *this, char a2)
{
  if ((a2 & 0xF8) != 0x30 && (a2 & 0xFE) != 0x38 || a2 - 49 > 8)
  {
    return 0;
  }

  if (a2 - 48 > this->__marked_count_)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, a2 - 48);
  return 1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<char const*>(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v11 = a1->__marked_count_;
        ++a1->__open_count_;
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v9 + 1, a3);
        if (v12 == a3 || (v9 = v12, *v12 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v11);
        --a1->__open_count_;
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
        break;
      default:
        goto LABEL_12;
    }

    ++v9;
  }

LABEL_12:
  if (v9 == a2)
  {
    return v9;
  }

  v13 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v9, a3, end, marked_count + 1, v13);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR_ERE<char const*>(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR_ERE<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v3 = this;
  if (this != a3)
  {
    locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
    v5 = (locale_low - 36);
    if (v5 > 0x3A)
    {
      goto LABEL_8;
    }

    if (((1 << (locale_low - 36)) & 0x5800000080004D1) != 0)
    {
      return v3;
    }

    if (v5 == 5)
    {
      if (a1->__open_count_)
      {
        return v3;
      }

      locale = 41;
    }

    else
    {
LABEL_8:
      if ((locale_low - 123) < 2)
      {
        return v3;
      }

      locale = this->__traits_.__loc_.__locale_;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, locale);
    return (v3 + 1);
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a2 + 1;
  if (v3 + 1 == a3 || *v3 != 92)
  {
    return v3;
  }

  v5 = *v4;
  v6 = (v5 - 36) > 0x3A || ((1 << (v5 - 36)) & 0x5800000080004F1) == 0;
  if (!v6 || (v5 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
    v3 += 2;
    return v3;
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v8 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v5);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    v3 += v9;
    return v3;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4, a3, 0);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, char *__f, char *__l, std::match_results<const char *> *this, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  std::match_results<char const*>::__init(this, *(a1 + 28) + 1, __f, __l, (v9 & 0x800) >> 11);
  if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, __f, __l, this, v9, (v9 & 0x800) == 0))
  {
    if (this->__matches_.__end_ == this->__matches_.__begin_)
    {
      p_unmatched = &this->__unmatched_;
    }

    else
    {
      p_unmatched = this->__matches_.__begin_;
    }

LABEL_19:
    first = p_unmatched->first;
    this->__prefix_.second = p_unmatched->first;
    this->__prefix_.matched = this->__prefix_.first != first;
    second = p_unmatched->second;
    this->__suffix_.first = second;
    this->__suffix_.matched = second != this->__suffix_.second;
    return 1;
  }

  if (__f != __l && (v9 & 0x40) == 0)
  {
    v11 = __f + 1;
    if (v11 != __l)
    {
      v12 = &this->__unmatched_;
      do
      {
        std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((this->__matches_.__end_ - this->__matches_.__begin_) >> 3), &this->__unmatched_);
        v13 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v11, __l, this, v9 | 0x80u, 0);
        begin = this->__matches_.__begin_;
        end = this->__matches_.__end_;
        if (v13)
        {
          goto LABEL_16;
        }

        std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), &this->__unmatched_);
      }

      while (++v11 != __l);
    }

    v12 = &this->__unmatched_;
    std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((this->__matches_.__end_ - this->__matches_.__begin_) >> 3), &this->__unmatched_);
    if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v11, __l, this, v9 | 0x80u, 0))
    {
      begin = this->__matches_.__begin_;
      end = this->__matches_.__end_;
LABEL_16:
      if (end == begin)
      {
        p_unmatched = v12;
      }

      else
      {
        p_unmatched = begin;
      }

      goto LABEL_19;
    }
  }

  result = 0;
  this->__matches_.__end_ = this->__matches_.__begin_;
  return result;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  if (*(a1 + 28))
  {
    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_70;
  }

  *v55 = 0;
  memset(&v55[8], 0, 32);
  v56 = 0uLL;
  *__p = 0uLL;
  memset(v58, 0, 21);
  std::deque<std::__state<char>>::push_back(&v59, v55);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v55[32])
  {
    *&v56 = *&v55[32];
    operator delete(*&v55[32]);
  }

  v51 = a4;
  v13 = v59.i64[1];
  v14 = *(&v61 + 1) + v61 - 1;
  v15 = v14 / 0x2A;
  v16 = *(v59.i64[1] + 8 * (v14 / 0x2A));
  v17 = 3 * (v14 % 0x2A);
  v18 = v16 + 32 * v17;
  *v18 = 0;
  *(v18 + 8) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 16) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 24) = a3;
  std::vector<std::pair<unsigned long,char const*>>::resize((*(v13 + 8 * v15) + 32 * v17 + 56), *(a1 + 32));
  v54 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *(&v61 + 1);
  v22 = v59.i64[1];
  v23 = *(&v61 + 1) + v61 - 1;
  v24 = v23 / 0x2A;
  v25 = 3 * (v23 % 0x2A);
  *(*(v59.i64[1] + 8 * v24) + 32 * v25 + 80) = v6;
  v52 = a3;
  v53 = a2;
  v26 = a3 - a2;
  v27 = *(v22 + 8 * v24) + 32 * v25;
  *(v27 + 88) = a5;
  *(v27 + 92) = a6;
  do
  {
    if ((++v19 & 0xFFF) == 0 && (v19 >> 12) >= v26)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v29 = *(v59.i64[1] + 8 * ((v21 + v61 - 1) / 0x2AuLL)) + 96 * ((v21 + v61 - 1) % 0x2AuLL);
    v30 = *(v29 + 80);
    if (v30)
    {
      (*(*v30 + 16))(v30, v29);
    }

    v31 = *v29;
    if (*v29 <= -995)
    {
      if (v31 != -1000)
      {
        if (v31 == -999)
        {
          goto LABEL_52;
        }

        if (v31 != -995)
        {
          goto LABEL_72;
        }

        std::deque<std::__state<char>>::push_front(&v59, v29);
        goto LABEL_51;
      }

      v32 = *(v29 + 16);
      v34 = (a5 & 0x1000) == 0 || v32 == v52;
      v35 = v32 != v53 || (a5 & 0x20) == 0;
      if (!v35 || !v34)
      {
        goto LABEL_51;
      }

      v36 = v32 - *(v29 + 8);
      if (v20 <= v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = v20;
      }

      if (v54)
      {
        v20 = v37;
      }

      else
      {
        v20 = v36;
      }

      if (v20 != v26)
      {
        std::deque<std::__state<char>>::pop_back(&v59);
        v54 = 1;
        goto LABEL_52;
      }

      v38 = v59.i64[1];
      v39 = v60;
      if (v60 == v59.i64[1])
      {
        v39 = v59.i64[1];
      }

      else
      {
        v40 = (v59.i64[1] + 8 * (v61 / 0x2A));
        v41 = (*v40 + 96 * (v61 % 0x2A));
        v42 = *(v59.i64[1] + 8 * ((*(&v61 + 1) + v61) / 0x2AuLL)) + 96 * ((*(&v61 + 1) + v61) % 0x2AuLL);
        if (v41 != v42)
        {
          do
          {
            std::allocator<std::__state<char>>::destroy[abi:ne200100](&v59, v41);
            v41 += 12;
            if (v41 - *v40 == "Library/Frameworks/Metal.framework/Metal")
            {
              v43 = v40[1];
              ++v40;
              v41 = v43;
            }
          }

          while (v41 != v42);
          v38 = v59.i64[1];
          v39 = v60;
        }
      }

      *(&v61 + 1) = 0;
      v46 = (v39 - v38) >> 3;
      if (v46 >= 3)
      {
        do
        {
          operator delete(*v38);
          v38 = (v59.i64[1] + 8);
          v59.i64[1] = v38;
          v46 = (v60 - v38) >> 3;
        }

        while (v46 > 2);
      }

      if (v46 == 1)
      {
        v47 = 21;
      }

      else
      {
        if (v46 != 2)
        {
LABEL_67:
          v54 = 1;
          v20 = v26;
          goto LABEL_52;
        }

        v47 = 42;
      }

      *&v61 = v47;
      goto LABEL_67;
    }

    if (v31 <= -993)
    {
      if (v31 == -994)
      {
        goto LABEL_52;
      }

      if (v31 != -993)
      {
        goto LABEL_72;
      }

LABEL_51:
      std::deque<std::__state<char>>::pop_back(&v59);
      goto LABEL_52;
    }

    if (v31 == -992)
    {
      v44 = *(v29 + 16);
      *v55 = *v29;
      *&v55[16] = v44;
      v56 = 0uLL;
      *&v55[32] = 0;
      std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v55[32], *(v29 + 32), *(v29 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 40) - *(v29 + 32)) >> 3));
      __p[0] = 0;
      __p[1] = 0;
      v58[0] = 0;
      std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v29 + 56), *(v29 + 64), (*(v29 + 64) - *(v29 + 56)) >> 4);
      v45 = *(v29 + 80);
      *(&v58[1] + 5) = *(v29 + 85);
      v58[1] = v45;
      (*(**(v29 + 80) + 24))(*(v29 + 80), 1, v29);
      (*(*v58[1] + 24))(v58[1], 0, v55);
      std::deque<std::__state<char>>::push_back(&v59, v55);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*&v55[32])
      {
        *&v56 = *&v55[32];
        operator delete(*&v55[32]);
      }
    }

    else if (v31 != -991)
    {
LABEL_72:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
    }

LABEL_52:
    v21 = *(&v61 + 1);
  }

  while (*(&v61 + 1));
  if ((v54 & 1) == 0)
  {
LABEL_70:
    v49 = 0;
    goto LABEL_71;
  }

  v48 = *v51;
  *v48 = v53;
  *(v48 + 8) = v53 + v20;
  v49 = 1;
  *(v48 + 16) = 1;
LABEL_71:
  std::deque<std::__state<char>>::~deque[abi:ne200100](&v59);
  return v49;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v52 = 0;
  v53 = 0;
  v54 = 0;
  *v49 = 0;
  memset(&v49[8], 0, 32);
  v50 = 0u;
  memset(v51, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_47;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v44 = 0;
  memset(&v44[8], 0, 32);
  v45 = 0uLL;
  *__p = 0uLL;
  memset(v47, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v52, v44);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v44[32])
  {
    *&v45 = *&v44[32];
    operator delete(*&v44[32]);
  }

  v43 = a4;
  v13 = v53;
  *(v53 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 8), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v53 - 5), *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v53;
  *(v53 - 2) = v6;
  v18 = (a3 - a2);
  *(v17 - 2) = a5;
  *(v17 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v18;
    if (!v19)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v21 = v17 - 2;
    v20 = *(v17 - 2);
    v22 = v17 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v17 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_33;
        case -992:
          v32 = *(v17 - 5);
          *v44 = *v22;
          *&v44[16] = v32;
          v45 = 0uLL;
          *&v44[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v44[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v47[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
          v33 = *v21;
          *(&v47[1] + 5) = *(v17 - 11);
          v47[1] = v33;
          (*(**v21 + 24))(*v21, 1, v17 - 12);
          (*(*v47[1] + 24))(v47[1], 0, v44);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v52, v44);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v44[32])
          {
            *&v45 = *&v44[32];
            operator delete(*&v44[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_53:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_38;
      }

      if (v23 != -1000)
      {
        goto LABEL_53;
      }

      v24 = *(v17 - 10);
      if ((a5 & 0x20) != 0 && v24 == a2 || (a5 & 0x1000) != 0 && v24 != a3)
      {
LABEL_33:
        v31 = v53 - 12;
        std::allocator<std::__state<char>>::destroy[abi:ne200100](&v52, v53 - 12);
        v53 = v31;
        goto LABEL_38;
      }

      v25 = v15;
      v26 = &v24[-*(v17 - 11)];
      if ((v25 & (v14 >= v26)) == 0)
      {
        v27 = *(v17 - 5);
        *v49 = *v22;
        *&v49[16] = v27;
        if (v49 != v22)
        {
          std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v49[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v51, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
        }

        v28 = *v21;
        *(&v51[3] + 5) = *(v17 - 11);
        v51[3] = v28;
        v14 = v26;
      }

      v29 = v53;
      if (v14 == v18)
      {
        v30 = v52;
        while (v29 != v30)
        {
          v29 -= 12;
          std::allocator<std::__state<char>>::destroy[abi:ne200100](&v52, v29);
        }

        v53 = v30;
        v15 = 1;
        v14 = (a3 - a2);
      }

      else
      {
        v34 = v53 - 12;
        std::allocator<std::__state<char>>::destroy[abi:ne200100](&v52, v53 - 12);
        v53 = v34;
        v15 = 1;
      }
    }

LABEL_38:
    v17 = v53;
  }

  while (v52 != v53);
  if ((v15 & 1) == 0)
  {
LABEL_47:
    v41 = 0;
    goto LABEL_48;
  }

  v35 = *v43;
  *v35 = a2;
  *(v35 + 8) = &v14[a2];
  *(v35 + 16) = 1;
  if (v50 != *&v49[32])
  {
    v36 = 0xAAAAAAAAAAAAAAABLL * ((v50 - *&v49[32]) >> 3);
    v37 = (*&v49[32] + 16);
    v38 = 1;
    do
    {
      v39 = v35 + 24 * v38;
      *v39 = *(v37 - 1);
      v40 = *v37;
      v37 += 24;
      *(v39 + 16) = v40;
      v19 = v36 > v38++;
    }

    while (v19);
  }

  v41 = 1;
LABEL_48:
  if (v51[0])
  {
    v51[1] = v51[0];
    operator delete(v51[0]);
  }

  if (*&v49[32])
  {
    *&v50 = *&v49[32];
    operator delete(*&v49[32]);
  }

  *v49 = &v52;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v49);
  return v41;
}

void sub_3CD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__state<char>::~__state(&a11);
  std::__state<char>::~__state(&a27);
  a27 = v27 - 120;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

__n128 std::deque<std::__state<char>>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 42 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<std::__state<char>>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x2A)) + 96 * (v8 % 0x2A);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0;
  *(v9 + 32) = *(a2 + 32);
  *(v9 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  result = *(a2 + 56);
  *(v9 + 56) = result;
  *(v9 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v12 = *(a2 + 80);
  *(v9 + 85) = *(a2 + 85);
  *(v9 + 80) = v12;
  ++*(a1 + 40);
  return result;
}

uint64_t std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::allocator<std::__state<char>>::destroy[abi:ne200100](a1, (*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  --a1[5];

  return std::deque<std::__state<char>>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

int64x2_t std::deque<std::__state<char>>::push_front(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    std::deque<std::__state<char>>::__add_front_capacity(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x2A));
  v7 = *v6 + 96 * (v4 % 0x2A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4032;
  }

  v8 = *(a2 + 16);
  *(v7 - 96) = *a2;
  *(v7 - 80) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 64) = 0;
  *(v7 - 64) = *(a2 + 32);
  *(v7 - 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 40) = *(a2 + 56);
  *(v7 - 24) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 - 11) = *(a2 + 85);
  *(v7 - 16) = v9;
  result = vaddq_s64(a1[2], xmmword_54B30);
  a1[2] = result;
  return result;
}

void *std::deque<std::__state<char>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<HUDUIWindow *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v10);
}

void sub_3D1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<HUDUIWindow *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<HUDUIWindow *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *> &>::emplace_back<std::__state<char> *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<HUDUIWindow *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *> &>::emplace_front<std::__state<char> *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<HUDUIWindow *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t std::deque<std::__state<char>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

const void **std::deque<std::__state<char>>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x2A)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<HUDUIWindow *>>(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, v11);
}

void sub_3D8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::allocator<std::__state<char>>::destroy[abi:ne200100](a1, v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

_BYTE *std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(void *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      result[16] = *(v5 + 16);
      v5 += 24;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        result[16] = *(v5 + 16);
        v5 += 24;
        result += 24;
      }

      while (v5 != v13);
    }

    if (v13 == a3)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13;
        *(v12 + 16) = *(v13 + 2);
        *v12 = v15;
        v12 += 24;
        v13 = (v13 + 24);
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

char *std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      v18 = v5[1];
      v5 += 2;
      *result = v17;
      *(result + 1) = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        v13 = *v5;
        v14 = v5[1];
        v5 += 2;
        *result = v13;
        *(result + 1) = v14;
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v12++;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_3DED4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_3F718(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_3F9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __destructor_8_s0_s8_s16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void sub_40178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void __destructor_8_s0_s16_s240(uint64_t a1)
{
  v2 = *(a1 + 240);
}

void HUDPersistancyAddKeyAndValue(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = a2;
    v4 = a1;
    v5 = _HUDPersistancyGetDictForCurrentApp();
    [v5 setObject:v3 forKeyedSubscript:v4];

    v9 = v5;
    v6 = _HUDPersistancyGetKeyForCurrentApp();
    if (v6)
    {
      v7 = +[NSUserDefaults standardUserDefaults];
      [v7 setObject:v9 forKey:v6];

      v8 = +[NSUserDefaults standardUserDefaults];
      [v8 synchronize];
    }
  }
}

id _HUDPersistancyGetDictForCurrentApp()
{
  v0 = _HUDPersistancyGetDictForCurrentApp_dict;
  if (!_HUDPersistancyGetDictForCurrentApp_dict)
  {
    v1 = _HUDPersistancyGetKeyForCurrentApp();
    if (v1)
    {
      v2 = +[NSUserDefaults standardUserDefaults];
      v3 = [v2 objectForKey:v1];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [NSMutableDictionary dictionaryWithDictionary:v3];
      }

      else
      {
        v4 = objc_opt_new();
      }

      v5 = _HUDPersistancyGetDictForCurrentApp_dict;
      _HUDPersistancyGetDictForCurrentApp_dict = v4;
    }

    v0 = _HUDPersistancyGetDictForCurrentApp_dict;
  }

  return v0;
}

id HUDPersistancyGetValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = _HUDPersistancyGetDictForCurrentApp();
    v3 = [v2 objectForKeyedSubscript:v1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id _HUDPersistancyGetKeyForCurrentApp()
{
  v0 = NSSelectorFromString(@"instance");
  v1 = NSClassFromString(@"_CADeveloperHUDProperties");
  if (v1)
  {
    v2 = ([(objc_class *)v1 methodForSelector:v0])(v1, v0);
  }

  else
  {
    v2 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v3 = [v2 progName];
LABEL_8:

    goto LABEL_9;
  }

  v3 = 0;
LABEL_9:

  return v3;
}

void HUDUpdateMutableConfig(void *a1)
{
  v1 = a1;
  v4 = v1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v2 = [v3 dictionaryForKey:@"MTL_HUD_CONFIG"];

    if (HUDGetGlobalConfig_onceToken != -1)
    {
      HUDUpdateMutableConfig_cold_1();
    }

    _MTLHUDCheckForConfigVersion(&HUDGetGlobalConfig_config, v2);
  }

  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  HUDUpdateConfig(&HUDGetGlobalConfig_config, v2, 0, v4 == 0);
}

uint64_t _MTLHUDCheckForConfigVersion(uint64_t result, void *a2)
{
  if (!a2)
  {
    return result;
  }

  v2 = result;
  v3 = [a2 objectForKeyedSubscript:@"MTL_HUD_SYSTEM_CONFIG_VERSION"];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LODWORD(v3) = 0;
    goto LABEL_8;
  }

  if ([v4 unsignedIntValue] <= 1)
  {
    LODWORD(v3) = [v4 unsignedIntValue];
LABEL_8:
    *(v2 + 160) = v3;
  }

  return _objc_release_x1();
}

__int16 *HUDGetGlobalConfig()
{
  if (HUDGetGlobalConfig_onceToken != -1)
  {
    HUDUpdateMutableConfig_cold_1();
  }

  return &HUDGetGlobalConfig_config;
}

void HUDUpdateConfig(unsigned __int8 *a1, void *a2, int a3, int a4)
{
  v62 = a2;
  if ((MTLHudIsInternalInstall() & 1) != 0 || MTLHudIsSideLoadedApp())
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 objectForKey:@"MetalForceHudEnabled"];

    if (*a1)
    {
      v9 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 BOOLValue];
      }

      else
      {
        v9 = 0;
      }
    }

    *a1 = v9;
    v10 = +[NSUserDefaults standardUserDefaults];
    v11 = [v10 objectForKey:@"MetalHudLoggingEnabled"];

    if (a1[1])
    {
      v12 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 BOOLValue];
      }

      else
      {
        v12 = 0;
      }
    }

    a1[1] = v12;
  }

  v13 = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_ENABLED", *a1);
  *a1 = v13;
  if ((v13 & 1) == 0)
  {
    *a1 = _CONFIG_BOOL(a1, a3, v62, @"GT_HUD_ENABLED", 0);
  }

  a1[5] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_MANUAL_INTERPOSE", a1[5]);
  a1[4] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_ENCODER_TIMING_ENABLED", a1[4]);
  a1[6] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_SHOW_ZERO_METRICS", a1[6]);
  a1[3] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_INSIGHTS_ENABLED", a1[3]);
  a1[2] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_LOG_SHADER_ENABLED", a1[2]);
  *(a1 + 37) = 0;
  a1[17] = 0;
  a1[19] = 1;
  a1[1] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_LOG_ENABLED", a1[1]);
  a1[31] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_LOG_METRICS_ENABLED", a1[31]);
  v14 = _CONFIG_FLOAT(a1, a3, v62, @"MTL_HUD_OPACITY", *(a1 + 10));
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  v15 = fmin(v14, 1.0);
  *(a1 + 10) = v15;
  v16 = _CONFIG_FLOAT(a1, a3, v62, @"MTL_HUD_SCALE", *(a1 + 11));
  if (v16 < 0.1)
  {
    v16 = 0.1;
  }

  v17 = fmin(v16, 1.0);
  *(a1 + 11) = v17;
  a1[23] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_ALLOW_DYNAMIC_WIDTH", a1[23]);
  v18 = _CONFIG_FLOAT(a1, a3, v62, @"MTL_HUD_ENCODER_GPU_TIMELINE_HEIGHT", *(a1 + 12));
  if (v18 < 10.0)
  {
    v18 = 10.0;
  }

  v19 = fmin(v18, 300.0);
  *(a1 + 12) = v19;
  *(a1 + 28) = _CONFIG_FLOAT(a1, a3, v62, @"MTL_HUD_MIN_WIDTH_REQUIRED", *(a1 + 28));
  *(a1 + 30) = fmaxf(_CONFIG_FLOAT(a1, a3, v62, @"MTL_HUD_INSIGHT_TIMEOUT", *(a1 + 30)), 1.0);
  *(a1 + 31) = fmaxf(_CONFIG_FLOAT(a1, a3, v62, @"MTL_HUD_INSIGHT_REPORT_INTERVAL", *(a1 + 31)), 1.0);
  a1[32] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_DISABLE_INTERNAL", a1[32]);
  v20 = _CONFIG_STRING(a1, a3, v62, @"MTL_HUD_ALIGNMENT");
  v21 = v20;
  if (v20)
  {
    v22 = atoll([v20 UTF8String]);
    if (!v22)
    {
      v23 = [&off_6F778 objectForKeyedSubscript:v21];
      v24 = v23;
      if (v23)
      {
        v22 = [v23 unsignedLongLongValue];
      }

      else
      {
        v22 = 0;
      }
    }

    *(a1 + 8) = v22;
  }

  if (*(a1 + 37))
  {
    *(a1 + 9) = *(a1 + 9) & 0xFFFFFFFFFFBFE76BLL | 0x880;
  }

  v25 = _CONFIG_STRING(a1, a3, v62, @"MTL_HUD_ELEMENTS");
  v26 = v25;
  if (v25)
  {
    *(a1 + 9) = _ElementsFromString(v25);
  }

  if (a4 && !*(a1 + 40))
  {
    v27 = [v62 objectForKeyedSubscript:@"MTL_HUD_ELEMENTS"];
    if (v27)
    {
      v28 = *(a1 + 9);
      if (v28 != 16)
      {
        *(a1 + 9) = v28 | 0x81000000;
      }
    }
  }

  v29 = _CONFIG_STRING(a1, a3, v62, @"MTL_HUD_ELEMENTS_OTHERS");

  if (v29)
  {
    *(a1 + 10) = _ElementsFromString(v29);
  }

  v30 = _CONFIG_STRING(a1, a3, v62, @"MTL_HUD_LAYOUT");
  v31 = v30;
  if (v30)
  {
    *(a1 + 9) = _LayoutFromString(v30);
  }

  v32 = _CONFIG_STRING(a1, a3, v62, @"MTL_HUD_LAYOUT_OTHERS");

  if (v32)
  {
    *(a1 + 10) = _LayoutFromString(v32);
  }

  v33 = _CONFIG_INT(a1, a3, v62, @"MTL_HUD_ENCODER_GPU_TIMELINE_FRAME_COUNT", *(a1 + 11));
  if (v33 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  if (v34 >= 10)
  {
    v34 = 10;
  }

  *(a1 + 11) = v34;
  v35 = *(a1 + 12);
  v36 = _CONFIG_FLOAT(a1, a3, v62, @"MTL_HUD_ENCODER_GPU_TIMELINE_SWAP_DELTA", v35);
  if (v36 < 0.1)
  {
    v36 = 0.1;
  }

  *(a1 + 12) = fmin(v36, 10.0);
  v37 = *(a1 + 9);
  if ((v37 & 0x200) != 0)
  {
    a1[4] = 1;
    goto LABEL_56;
  }

  if (a1[4])
  {
LABEL_56:
    *(a1 + 9) = v37 | 0x200;
  }

  v38 = _CONFIG_STRING(a1, a3, v62, @"MTL_HUD_POSITION_X");
  v39 = v38;
  if (v38)
  {
    v40 = atof([v38 UTF8String]);
    *(a1 + 14) = v40;
    *(a1 + 8) = 1;
  }

  v41 = _CONFIG_STRING(a1, a3, v62, @"MTL_HUD_POSITION_Y");
  v42 = v41;
  if (v41)
  {
    v43 = atof([v41 UTF8String]);
    *(a1 + 15) = v43;
    *(a1 + 8) = 1;
  }

  v44 = _CONFIG_INT(a1, a3, v62, @"MTL_HUD_TARGET_FPS", *(a1 + 33));
  v45 = v44 & ~(v44 >> 63);
  if (v45 >= 1000)
  {
    LODWORD(v45) = 1000;
  }

  *(a1 + 33) = v45;
  v46 = _CONFIG_INT(a1, a3, v62, @"MTL_HUD_MIN_WIDTH", *(a1 + 36));
  v47 = 40;
  if (v46 > 40)
  {
    v47 = v46;
  }

  if (v47 >= 1000)
  {
    LODWORD(v47) = 1000;
  }

  *(a1 + 36) = v47;
  a1[15] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_HIDE_GPTK_METRICS", a1[15]);
  a1[14] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_HIDE_METALFX_METRICS", a1[14]);
  v48 = _CONFIG_FLOAT(a1, a3, v62, @"MTL_HUD_RUSAGE_UPDATE_INTERVAL", *(a1 + 32));
  if (v48 <= 0.1)
  {
    v48 = 0.1;
  }

  *(a1 + 32) = v48;
  v49 = _CONFIG_FLOAT(a1, a3, v62, @"MTL_HUD_METRIC_TIMEOUT", *(a1 + 34));
  if (v49 <= 0.1)
  {
    v49 = 0.1;
  }

  *(a1 + 34) = v49;
  v50 = _CONFIG_INT(a1, a3, v62, @"MTL_HUD_QRCODE_UPDATE_FRAME", *(a1 + 35));
  *(a1 + 35) = v50 & ~(v50 >> 63);
  a1[20] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_DISABLE_OS_LOG", a1[20]);
  a1[26] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_DISABLE_COMPILER_STATS", a1[26]);
  a1[27] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_DISABLE_MTL4", a1[27]);
  a1[30] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_SHOW_METRICS_RANGE", a1[30]);
  if (MTLHudIsInternalInstall())
  {
    a1[18] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_ALLOW_CAPTURE_HUD", a1[18]);
    v51 = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_ENERGY_REPORT_ENABLED", (*(a1 + 9) >> 10) & 1);
    v52 = *(a1 + 13);
    v53 = _CONFIG_FLOAT(a1, a3, v62, @"MTL_HUD_ENEGRY_REPORT_SAMPLE_INTERVAL", v52);
    if (v53 < 0.1)
    {
      v53 = 0.1;
    }

    *(a1 + 13) = fmin(v53, 10.0);
    v54 = _CONFIG_FLOAT(a1, a3, v62, @"MTL_HUD_ENEGRY_REPORT_HEIGHT", *(a1 + 13));
    if (v54 < 10.0)
    {
      v54 = 10.0;
    }

    v55 = fmin(v54, 200.0);
    *(a1 + 13) = v55;
    v56 = *(a1 + 9);
    if (v51)
    {
      v56 |= 0x400uLL;
      *(a1 + 9) = v56;
    }

    if (_CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_QR_CODE_ENABLED", (v56 >> 14) & 1))
    {
      *(a1 + 9) |= 0x4000uLL;
    }

    a1[16] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_PROFILER_ENABLED", a1[16]);
    a1[10] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_SHOW_HUD_INTERNAL_METRICS", a1[10]);
    a1[7] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_SHOW_INSIGHTS_METRICS", a1[7]);
    a1[9] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_HIDE_INTERNAL_METRICS", a1[9]);
    a1[33] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_INTERNAL_FORCE_DIRECT", a1[33]);
    a1[24] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_DEBUG_SIGNPOSTS", a1[24]);
    a1[25] = _CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_ROUND_APT", a1[25]);
  }

  v57 = _CONFIG_STRING(a1, a3, v62, @"MTL_HUD_EXTRA_ELEMENTS");
  v58 = v57;
  if (v57)
  {
    *(a1 + 9) |= _ElementsFromString(v57);
  }

  if (_CONFIG_BOOL(a1, a3, v62, @"MTL_HUD_HIDDEN", 0))
  {
    *a1 = 0;
  }

  v59 = 300.0;
  if (a1[30])
  {
    v59 = 350.0;
  }

  *(a1 + 29) = v59;
  v60 = _CONFIG_STRING(a1, a3, v62, @"MTL_HUD_REPORT_URL");
  if (v60)
  {
    v61 = +[_CADeveloperHUDProperties instance];
    [v61 setReportOutputURL:v60];
  }

  MTLHUDDisableInternal = a1[32];
}

id HUDReportingComponentFromIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"com.apple.d3dmetal"])
  {
    v2 = &dword_0 + 2;
  }

  else if ([v1 hasPrefix:@"com.apple.hud-label.metalfx"])
  {
    v2 = &dword_0 + 3;
  }

  else
  {
    v2 = [v1 hasPrefix:@"com.apple.hud-label.hud"];
  }

  return v2;
}

void *HUDGetInternalPerfMetrics()
{
  if (HUDGetInternalPerfMetrics_onceToken != -1)
  {
    HUDGetInternalPerfMetrics_cold_1();
  }

  return &HUDGetInternalPerfMetrics_metrics;
}

void HUDInternalPerfMetricsReset()
{
  if (HUDGetInternalPerfMetrics_onceToken != -1)
  {
    HUDGetInternalPerfMetrics_cold_1();
  }

  bzero(&HUDGetInternalPerfMetrics_metrics, 0x1630uLL);
  HUDValueHistoryRecordInit(&HUDGetInternalPerfMetrics_metrics, 0.0, 1000000000.0, 300000.0);
  HUDValueHistoryRecordInit(&unk_771B0, 0.0, 1000000000.0, 300000.0);
  HUDValueHistoryRecordInit(&unk_77620, 0.0, 1000000000.0, 300000.0);
  HUDValueHistoryRecordInit(&unk_77A90, 0.0, 1000000000.0, 300000.0);

  HUDValueHistoryRecordInit(&HUDGetInternalPerfMetrics_metrics + &stru_11C0, 0.0, 1000000000.0, 300000.0);
}

void HUDInternalPerfMetricFrameBegin()
{
  if (HUDGetInternalPerfMetrics_onceToken != -1)
  {
    HUDGetInternalPerfMetrics_cold_1();
  }

  HUDValueHistoryRecordAddValue(&HUDGetInternalPerfMetrics_metrics, qword_771A8);
  HUDValueHistoryRecordAddValue(&unk_771B0, qword_77618);
  HUDValueHistoryRecordAddValue(&unk_77620, qword_77A88);
  HUDValueHistoryRecordAddValue(&unk_77A90, qword_77EF8);
  HUDValueHistoryRecordAddValue(&HUDGetInternalPerfMetrics_metrics + &stru_11C0, qword_78368);
  qword_771A8 = 0;
  qword_77618 = 0;
  qword_77A88 = 0;
  qword_77EF8 = 0;
  qword_78368 = 0;
}

void HUDInternalPerfMetricPresentAdd(uint64_t a1)
{
  if (HUDGetInternalPerfMetrics_onceToken != -1)
  {
    HUDGetInternalPerfMetrics_cold_1();
  }

  qword_771A8 += a1;
}

void HUDInternalPerfMetricRenderAdd(uint64_t a1)
{
  if (HUDGetInternalPerfMetrics_onceToken != -1)
  {
    HUDGetInternalPerfMetrics_cold_1();
  }

  qword_77618 += a1;
}

void HUDInternalPerfMetricGPUTimeTrackerAdd(uint64_t a1)
{
  if (HUDGetInternalPerfMetrics_onceToken != -1)
  {
    HUDGetInternalPerfMetrics_cold_1();
  }

  qword_77A88 += a1;
}

void HUDInternalPerfMetricLoggingAdd(uint64_t a1)
{
  if (HUDGetInternalPerfMetrics_onceToken != -1)
  {
    HUDGetInternalPerfMetrics_cold_1();
  }

  qword_78368 += a1;
}

void HUDRegisterGlobalMetrics()
{
  v0 = +[_CADeveloperHUDProperties instance];
  v25 = xmmword_69FF8;
  v26 = unk_6A008;
  v27 = 30;
  v23 = *off_69FD8;
  v24 = *&off_69FE8;
  v1 = [v0 addMetric:&v23];
  v2 = v23;
  *&v23 = @"Thermal State";

  v3 = *(&v23 + 1);
  *(&v23 + 1) = @"com.apple.hud-stat.thermal-state";

  *&v25 = 0x40000;
  v4 = [v0 addMetric:&v23];
  v5 = v23;
  *&v23 = @"Screen FPS";

  v6 = *(&v23 + 1);
  *(&v23 + 1) = @"com.apple.hud-stat.screen-fps";

  *&v25 = 1;
  v7 = [v0 addMetric:&v23];
  v8 = v23;
  *&v23 = @"Screen FPS Low";

  v9 = *(&v23 + 1);
  *(&v23 + 1) = @"com.apple.hud-stat.screen-refresh-rate-low";

  *&v25 = 1;
  v10 = [v0 addMetric:&v23];
  v11 = v23;
  *&v23 = @"Screen FPS High";

  v12 = *(&v23 + 1);
  *(&v23 + 1) = @"com.apple.hud-stat.screen-refresh-rate-high";

  *&v25 = 1;
  v13 = [v0 addMetric:&v23];
  v14 = v23;
  *&v23 = @"Graphics Memory";

  HIDWORD(v26) = 3;
  v15 = *(&v23 + 1);
  *(&v23 + 1) = @"com.apple.hud-stat.graphics-memory";

  *&v25 = 8;
  v16 = [v0 addMetric:&v23];
  v17 = v23;
  *&v23 = @"App Memory";

  HIDWORD(v26) = 3;
  v18 = *(&v23 + 1);
  *(&v23 + 1) = @"com.apple.hud-stat.app-memory";

  *&v25 = 8;
  v19 = [v0 addMetric:&v23];
  v20 = v23;
  *&v23 = @"Available Memory";

  HIDWORD(v26) = 3;
  v21 = *(&v23 + 1);
  *(&v23 + 1) = @"com.apple.hud-stat.available-memory";

  *&v25 = 8;
  v22 = [v0 addMetric:&v23];
}

unint64_t _CONFIG_BOOL(uint64_t a1, int a2, void *a3, void *a4, unint64_t a5)
{
  v9 = a3;
  v10 = a4;
  v11 = [*(a1 + 168) objectForKeyedSubscript:v10];

  if (v11)
  {
    if (!a2)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (getenv([v10 UTF8String]))
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v12 = [NSNumber numberWithBool:a5];
  [*(a1 + 168) setObject:v12 forKeyedSubscript:v10];

  if (a2)
  {
    goto LABEL_5;
  }

LABEL_6:
  v13 = [v9 objectForKeyedSubscript:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v13)
    {
      a5 = [v13 BOOLValue];

      goto LABEL_13;
    }
  }

  else
  {
  }

  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_11:
  v14 = getenv([v10 UTF8String]);
  if (v14)
  {
    a5 = atoi(v14) > 0;
  }

LABEL_13:

  return a5;
}

float _CONFIG_FLOAT(uint64_t a1, int a2, void *a3, void *a4, float a5)
{
  v9 = a3;
  v10 = a4;
  v11 = [*(a1 + 168) objectForKeyedSubscript:v10];

  if (v11)
  {
    if (!a2)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (getenv([v10 UTF8String]))
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  *&v12 = a5;
  v13 = [NSNumber numberWithFloat:v12];
  [*(a1 + 168) setObject:v13 forKeyedSubscript:v10];

  if (a2)
  {
    goto LABEL_5;
  }

LABEL_6:
  v14 = [v9 objectForKeyedSubscript:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v14)
    {
      [v14 floatValue];
      a5 = v15;

      goto LABEL_13;
    }
  }

  else
  {
  }

  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_11:
  v16 = getenv([v10 UTF8String]);
  if (v16)
  {
    a5 = atof(v16);
  }

LABEL_13:

  return a5;
}

id _CONFIG_STRING(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  [*(a1 + 168) objectForKeyedSubscript:v8];

  if (a2 && getenv([v8 UTF8String]))
  {
    v9 = getenv([v8 UTF8String]);
    if (v9)
    {
      v10 = v9;
LABEL_13:
      v11 = [NSString stringWithUTF8String:v10];
      goto LABEL_15;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  v11 = [v7 objectForKeyedSubscript:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 stringValue];

    v11 = v12;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = 0;
  }

  if (!v11 && a2)
  {
    v13 = getenv([v8 UTF8String]);
    if (v13)
    {
      v10 = v13;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

LABEL_15:

  return v11;
}

uint64_t _ElementsFromString(void *a1)
{
  v1 = a1;
  v2 = atoll([v1 UTF8String]);
  if (!v2)
  {
    v3 = [v1 lowercaseString];
    v4 = [v3 componentsSeparatedByString:{@", "}];

    if ([v4 count])
    {
      v14 = v4;
      v15 = v1;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v2 = 0;
        v8 = *v17;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v16 + 1) + 8 * i);
            v11 = [&off_6F7A0 objectForKeyedSubscript:v10];
            v12 = v11;
            if (v11)
            {
              v2 |= [v11 unsignedLongValue];
            }

            else
            {
              fprintf(__stderrp, "[libMTLHUD] Unknown extra element name: %s\n", [v10 UTF8String]);
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v7);
      }

      else
      {
        v2 = 0;
      }

      v4 = v14;
      v1 = v15;
    }

    else
    {
      fprintf(__stderrp, "[libMTLHUD] Unknown MTL_HUD_ELEMENTS: %s\n", [v1 UTF8String]);
      v2 = 0;
    }
  }

  return v2;
}

uint64_t _LayoutFromString(void *a1)
{
  v1 = a1;
  if (!strcasecmp("FPS", [v1 UTF8String]))
  {
    v3 = 0;
  }

  else if (!strcasecmp("Lite", [v1 UTF8String]) || !strcasecmp("Default", objc_msgSend(v1, "UTF8String")))
  {
    v3 = 1;
  }

  else if (!strcasecmp("Rich", [v1 UTF8String]))
  {
    v3 = 2;
  }

  else if (!strcasecmp("Full", [v1 UTF8String]))
  {
    v3 = 3;
  }

  else
  {
    v2 = atoi([v1 UTF8String]);
    if (v2 > 3)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v3 = v2;
  }

  v4 = _LayoutFromString_layouts[v3];
LABEL_11:

  return v4;
}

id _CONFIG_INT(uint64_t a1, int a2, void *a3, void *a4, id a5)
{
  v9 = a3;
  v10 = a4;
  v11 = [*(a1 + 168) objectForKeyedSubscript:v10];

  if (v11)
  {
    if (!a2)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (getenv([v10 UTF8String]))
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v12 = [NSNumber numberWithLongLong:a5];
  [*(a1 + 168) setObject:v12 forKeyedSubscript:v10];

  if (a2)
  {
    goto LABEL_5;
  }

LABEL_6:
  v13 = [v9 objectForKeyedSubscript:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v13)
    {
      a5 = [v13 longLongValue];

      goto LABEL_13;
    }
  }

  else
  {
  }

  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_11:
  v14 = getenv([v10 UTF8String]);
  if (v14)
  {
    a5 = atoll(v14);
  }

LABEL_13:

  return a5;
}

id _HUDSignpostLegacyLoggingHandle()
{
  if (_HUDSignpostLegacyLoggingHandle_onceToken != -1)
  {
    _HUDSignpostLegacyLoggingHandle_cold_1();
  }

  v1 = _HUDSignpostLegacyLoggingHandle_handle;

  return v1;
}

id _HUDSignpostInsightsLoggingHandle()
{
  if (_HUDSignpostInsightsLoggingHandle_onceToken != -1)
  {
    _HUDSignpostInsightsLoggingHandle_cold_1();
  }

  v1 = _HUDSignpostInsightsLoggingHandle_handle;

  return v1;
}

id _HUDSignpostInsightsMetricsHandle()
{
  if (_HUDSignpostInsightsMetricsHandle_onceToken != -1)
  {
    _HUDSignpostInsightsMetricsHandle_cold_1();
  }

  v1 = _HUDSignpostInsightsMetricsHandle_handle;

  return v1;
}

id HUDSignpostGetOSLog(int a1)
{
  if (*(HUDGetGlobalConfig() + 20) == 1)
  {
    v1 = &_os_log_disabled;
    v3 = &_os_log_disabled;
    goto LABEL_10;
  }

  if (a1)
  {
    if (a1 == 2)
    {
      v4 = _HUDSignpostInsightsMetricsHandle();
    }

    else
    {
      if (a1 != 1)
      {
        goto LABEL_10;
      }

      v4 = _HUDSignpostInsightsLoggingHandle();
    }
  }

  else
  {
    v4 = _HUDSignpostLegacyLoggingHandle();
  }

  v1 = v4;
LABEL_10:

  return v1;
}

void _HUDSystemStateUpdate(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 8) = HUDGetProcessMemoryUsageData();
    v2 = objc_autoreleasePoolPush();
    v3 = MTLCreateSystemDefaultDevice();
    *a1 = [v3 currentAllocatedSize];

    objc_autoreleasePoolPop(v2);
    *(a1 + 16) = os_proc_available_memory();
    if (_HUDSystemStateUpdate_onceToken != -1)
    {
      _HUDSystemStateUpdate_cold_1();
    }

    if ((_HUDSystemStateUpdate_didEncounterError & 1) == 0)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      memset(v20, 0, sizeof(v20));
      if (proc_pid_rusage(_HUDSystemStateUpdate_process_pid, 6, v20))
      {
        _HUDSystemStateUpdate_didEncounterError = 1;
        *(a1 + 24) = 0;
      }

      else
      {
        *(a1 + 24) = 1;
        v4 = *(&v26 + 1);
        *(a1 + 32) = v27;
        *(a1 + 40) = v21;
        v5 = *(&v27 + 1);
        v6 = v32;
        *(a1 + 56) = v4;
        *(a1 + 64) = v5;
        *(a1 + 72) = v6;
        v7 = +[_CADeveloperHUDProperties instance];
        *&v8 = *(a1 + 8);
        [v7 updateFloatMetric:@"com.apple.hud-stat.app-memory" value:v8];

        v9 = +[_CADeveloperHUDProperties instance];
        *&v10 = *a1;
        [v9 updateFloatMetric:@"com.apple.hud-stat.graphics-memory" value:v10];

        v11 = +[_CADeveloperHUDProperties instance];
        *&v12 = *(a1 + 16);
        [v11 updateFloatMetric:@"com.apple.hud-stat.available-memory" value:v12];

        v13 = +[NSProcessInfo processInfo];
        v14 = [v13 thermalState];

        if (v14 > 3)
        {
          v16 = 0xFFFFFFFFLL;
          v15 = "Unknown";
        }

        else
        {
          v15 = (&off_6A0A0)[v14];
          v16 = dword_55060[v14];
        }

        v17 = +[_CADeveloperHUDProperties instance];
        v18 = [v17 getMetric:@"com.apple.hud-stat.thermal-state"];

        if (v18)
        {
          v19 = [NSString stringWithUTF8String:v15];
          [v18 setStringValue:v19];

          [v18 setValueColor:v16];
        }
      }
    }
  }
}

uint64_t HUDSystemStateGetSnapshot(void *a1)
{
  *a1 = &HUDSystemStateGetSnapshot_globalState;
  v1 = HUDCurrentTimeInNs();
  v2 = (v1 - HUDSystemStateGetSnapshot_lastTime);
  if ((*(HUDGetGlobalConfig() + 32) * 1000000000.0) >= v2)
  {
    return 0;
  }

  xmmword_783F0 = 0u;
  unk_78400 = 0u;
  xmmword_783D0 = 0u;
  unk_783E0 = 0u;
  HUDSystemStateGetSnapshot_globalState = 0u;
  HUDSystemStateGetSnapshot_lastTime = v1;
  _HUDSystemStateUpdate(&HUDSystemStateGetSnapshot_globalState);
  return 1;
}

id _HUDDispatchQueueGet()
{
  if (_HUDDispatchQueueGet_onceToken != -1)
  {
    _HUDDispatchQueueGet_cold_1();
  }

  v1 = _HUDDispatchQueueGet_queue;

  return v1;
}

void HUDDispatchQueueAsync(void *a1)
{
  v1 = a1;
  v2 = _HUDDispatchQueueGet();
  dispatch_async(v2, v1);
}

void HUDDispatchQueueGroupAsync(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = _HUDDispatchQueueGet();
  dispatch_group_async(v4, v5, v3);
}

__n128 __copy_assignment_8_8_s0_s8_s16_t24w44(uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  objc_storeStrong((a1 + 16), *(a2 + 16));
  result = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 40) = v5;
  *(a1 + 24) = result;
  return result;
}

__n128 __copy_assignment_8_8_s0_s8_s16_s24_s32_s40_s48_s56_t64w16(uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  objc_storeStrong((a1 + 16), *(a2 + 16));
  objc_storeStrong((a1 + 24), *(a2 + 24));
  objc_storeStrong((a1 + 32), *(a2 + 32));
  objc_storeStrong((a1 + 40), *(a2 + 40));
  objc_storeStrong((a1 + 48), *(a2 + 48));
  objc_storeStrong((a1 + 56), *(a2 + 56));
  result = *(a2 + 64);
  *(a1 + 64) = result;
  return result;
}

void __copy_assignment_8_8_s0_s8_s16_t24w12_s40_s48_s56_s64(uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  objc_storeStrong((a1 + 16), *(a2 + 16));
  v4 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v4;
  objc_storeStrong((a1 + 40), *(a2 + 40));
  objc_storeStrong((a1 + 48), *(a2 + 48));
  objc_storeStrong((a1 + 56), *(a2 + 56));
  v5 = *(a2 + 64);

  objc_storeStrong((a1 + 64), v5);
}

void __destructor_8_s0_s8_s16_s40_s48_s56_s64(uint64_t a1)
{
  v2 = *(a1 + 64);
}

id MTLHud_objc_unwrap(void *a1)
{
  v1 = a1;
  v2 = NSSelectorFromString(@"baseObject");
  if (objc_opt_respondsToSelector())
  {
    do
    {
      v3 = ([v1 methodForSelector:v2])(v1, v2);

      v1 = v3;
    }

    while ((objc_opt_respondsToSelector() & 1) != 0);
  }

  else
  {
    v3 = v1;
  }

  return v3;
}

uint64_t MTLHudIsInternalInstall()
{
  if (MTLHUDDisableInternal)
  {
    v0 = 0;
  }

  else
  {
    if (MTLHudIsInternalInstall___onceToken != -1)
    {
      MTLHudIsInternalInstall_cold_1();
    }

    v0 = MTLHudIsInternalInstall___internalInstall;
  }

  return v0 & 1;
}

uint64_t MTLHudIsSideLoadedApp()
{
  if (MTLHudIsSideLoadedApp___onceToken != -1)
  {
    MTLHudIsSideLoadedApp_cold_1();
  }

  return MTLHudIsSideLoadedApp___isSideloaded;
}

uint64_t MTLHudIsProcessTranslated()
{
  if (MTLHudIsProcessTranslated_onceToken != -1)
  {
    MTLHudIsProcessTranslated_cold_1();
  }

  return 0;
}

uint64_t MTLHudIsExcluded()
{
  if (MTLHudIsExcluded_onceToken != -1)
  {
    MTLHudIsExcluded_cold_1();
  }

  return MTLHudIsExcluded_isBlastDoor;
}

uint64_t MTLHudIsCaptureEnabled()
{
  if (MTLHudIsCaptureEnabled_onceToken != -1)
  {
    MTLHudIsCaptureEnabled_cold_1();
  }

  return MTLHudIsCaptureEnabled_attached;
}

uint64_t MTLHudGetMetalWrapperType()
{
  if (MTLHudGetMetalWrapperType_onceToken != -1)
  {
    MTLHudGetMetalWrapperType_cold_1();
  }

  return MTLHudGetMetalWrapperType_wrapperType;
}

uint64_t HUDGetProcessMemoryUsageData()
{
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *task_info_out = 0u;
  v3 = 0u;
  task_info_outCnt = 93;
  task_info(mach_task_self_, 0x16u, task_info_out, &task_info_outCnt);
  return v11;
}

uint64_t MTLHudIsVirtualDevice()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __MTLHudIsVirtualDevice_block_invoke;
  block[3] = &unk_6A218;
  block[4] = &v3;
  if (MTLHudIsVirtualDevice_onceToken != -1)
  {
    dispatch_once(&MTLHudIsVirtualDevice_onceToken, block);
  }

  v0 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __MTLHudIsVirtualDevice_block_invoke(uint64_t a1)
{
  v2 = MobileGestalt_get_current_device();
  *(*(*(a1 + 32) + 8) + 24) = MobileGestalt_get_isVirtualDevice();
}

unint64_t HUDCurrentTimeInNs()
{
  v0 = mach_absolute_time();
  if (HUDMachAbsoluteToNs_onceToken != -1)
  {
    HUDCurrentTimeInNs_cold_1();
  }

  return v0 * HUDMachAbsoluteToNs_tb / *algn_7848C;
}

uint64_t MTLHUDFormattedTimeInNanosecond(unint64_t a1, int a2, const char *a3, char *__str, size_t __size)
{
  result = 0xFFFFFFFFLL;
  v10 = 3.6e12;
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
          return result;
        }

        goto LABEL_8;
      }
    }

    else
    {
      if (a1 > 0x34630B8A000)
      {
LABEL_13:
        v11 = "h";
        goto LABEL_24;
      }

      if (a1 > 0xDF8475800)
      {
LABEL_15:
        v11 = "m";
        v10 = 6.0e10;
        goto LABEL_24;
      }

      if (a1 > 0x3B9ACA00)
      {
        goto LABEL_4;
      }

      if (a1 > 0xF4240)
      {
LABEL_18:
        v11 = "ms";
        v10 = 1000000.0;
        goto LABEL_24;
      }

      if (a1 > 0x3E8)
      {
LABEL_8:
        v11 = "us";
        v10 = 1000.0;
        goto LABEL_24;
      }
    }

    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = "";
    }

    v11 = "ns";
    snprintf(__str, __size, "%s%llu%s", v12, a1, "ns");
    v10 = 1.0;
    goto LABEL_24;
  }

  if (a2 > 4)
  {
    if (a2 != 5)
    {
      if (a2 != 6)
      {
        return result;
      }

      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (a2 == 3)
  {
    goto LABEL_18;
  }

LABEL_4:
  v11 = "s";
  v10 = 1000000000.0;
LABEL_24:
  if (a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = "";
  }

  result = snprintf(__str, __size, "%s%.2f%s", v13, a1 / v10, v11);
  __str[result] = 0;
  return result;
}

uint64_t MTLHUDFormattedBytes(unint64_t a1, int a2, const char *a3, char *__str, size_t __size)
{
  result = 0xFFFFFFFFLL;
  v10 = 1000000000.0;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        if (a2 != 4)
        {
          return result;
        }

        goto LABEL_13;
      }

LABEL_15:
      v12 = "MB";
      v10 = 1000000.0;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (a1 <= 0x3B9ACA00)
  {
    if (a1 > 0xF4240)
    {
      goto LABEL_15;
    }

    if (a1 > 0x3E8)
    {
LABEL_17:
      v12 = "KB";
      v10 = 1000.0;
      goto LABEL_18;
    }

LABEL_8:
    if (a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = "";
    }

    v12 = "B";
    snprintf(__str, __size, "%s%llu%s", v11, a1, "B");
    v10 = 1.0;
    goto LABEL_18;
  }

LABEL_13:
  v12 = "GB";
LABEL_18:
  if (a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = "";
  }

  result = snprintf(__str, __size, "%s%.2f%s", v13, a1 / v10, v12);
  __str[result] = 0;
  return result;
}

uint64_t MTLHUDFormattedBytesPerSecond(unint64_t a1, int a2, const char *a3, char *__str, size_t __size)
{
  result = 0xFFFFFFFFLL;
  v10 = 1000000000.0;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        if (a2 != 4)
        {
          return result;
        }

        goto LABEL_13;
      }

LABEL_15:
      v12 = "MB/s";
      v10 = 1000000.0;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (a1 <= 0x3B9ACA00)
  {
    if (a1 > 0xF4240)
    {
      goto LABEL_15;
    }

    if (a1 > 0x3E8)
    {
LABEL_17:
      v12 = "KB/s";
      v10 = 1000.0;
      goto LABEL_18;
    }

LABEL_8:
    if (a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = "";
    }

    v12 = "B/s";
    snprintf(__str, __size, "%s%llu%s", v11, a1, "B/s");
    v10 = 1.0;
    goto LABEL_18;
  }

LABEL_13:
  v12 = "GB/s";
LABEL_18:
  if (a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = "";
  }

  result = snprintf(__str, __size, "%s%.2f%s", v13, a1 / v10, v12);
  __str[result] = 0;
  return result;
}

float MTLHUDRandomMaterialColorLM(float *a1, float *a2, float *a3, float a4, float a5)
{
  v9 = a4 * 78.233 + a4 * 12.9898;
  v10 = sinf(v9) * 43758.5453;
  v11 = __sincosf_stret(((v10 - floorf(v10)) * 6.283) + 0.0);
  v12 = (v11.__cosval * 0.995) + 0.0;
  v13 = (v11.__sinval * 0.995) + 0.0;
  v14 = v12 - (v13 * 0.0);
  v15 = v13 + (v12 * 0.0);
  v16 = sqrtf((v15 * v15) + (v14 * v14));
  v17 = atan2f(v15, v14);
  v18 = fmod(v17 * 180.0 / 3.14159, 360.0);
  if (v18 >= 0.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 360.0;
  }

  v20 = fmaxf(fminf(v16, 1.0), 0.0);
  v21 = a5 * 0.75;
  v22 = fmod(v19, 360.0);
  if (v19 < 0.0)
  {
    v22 = v22 + 360.0;
  }

  *v23.i32 = v22;
  v25 = (1.0 - fabsf((v21 * 2.0) + -1.0)) * v20;
  v26 = 0;
  v27 = 0.0;
  v28 = *v23.i32 / 60.0;
  *v24.i32 = *v23.i32 - (truncf(*v23.i32 * 0.5) * 2.0);
  v29.i64[0] = 0x8000000080000000;
  v29.i64[1] = 0x8000000080000000;
  v30 = v25 * (1.0 - fabsf(*vbslq_s8(v29, v24, v23).i32 + -1.0));
  if ((*v23.i32 / 60.0) <= 1.0)
  {
    v26 = __PAIR64__(LODWORD(v30), LODWORD(v25));
    goto LABEL_20;
  }

  if (v28 <= 2.0)
  {
    v26 = __PAIR64__(LODWORD(v25), LODWORD(v30));
    goto LABEL_20;
  }

  if (v28 <= 3.0)
  {
    *(&v26 + 1) = v25;
    goto LABEL_16;
  }

  if (v28 <= 4.0)
  {
    *(&v26 + 1) = v30;
LABEL_19:
    v27 = v25;
    goto LABEL_20;
  }

  if (v28 <= 5.0)
  {
    *&v26 = v30;
    goto LABEL_19;
  }

  if (v28 <= 6.0)
  {
    *&v26 = v25;
LABEL_16:
    v27 = v30;
  }

LABEL_20:
  v31 = v21 + v25 * -0.5;
  *a1 = *&v26 + v31;
  *a2 = *(&v26 + 1) + v31;
  result = v27 + v31;
  *a3 = result;
  return result;
}

const char *HUDMTLPixelFormatName(int a1)
{
  result = "Invalid";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      return "A8Unorm";
    case 10:
      return "R8Unorm";
    case 11:
      return "R8Unorm_sRGB";
    case 12:
      return "R8Snorm";
    case 13:
      return "R8Uint";
    case 14:
      return "R8Sint";
    case 20:
      return "R16Unorm";
    case 22:
      return "R16Snorm";
    case 23:
      return "R16Uint";
    case 24:
      return "R16Sint";
    case 25:
      return "R16Float";
    case 30:
      return "RG8Unorm";
    case 31:
      return "RG8Unorm_sRGB";
    case 32:
      return "RG8Snorm";
    case 33:
      return "RG8Uint";
    case 34:
      return "RG8Sint";
    case 40:
      return "B5G6R5Unorm";
    case 41:
      return "A1BGR5Unorm";
    case 42:
      return "ABGR4Unorm";
    case 43:
      return "BGR5A1Unorm";
    case 53:
      return "R32Uint";
    case 54:
      return "R32Sint";
    case 55:
      return "R32Float";
    case 60:
      return "RG16Unorm";
    case 62:
      return "RG16Snorm";
    case 63:
      return "RG16Uint";
    case 64:
      return "RG16Sint";
    case 65:
      return "RG16Float";
    case 70:
      return "RGBA8Unorm";
    case 71:
      return "RGBA8Unorm_sRGB";
    case 72:
      return "RGBA8Snorm";
    case 73:
      return "RGBA8Uint";
    case 74:
      return "RGBA8Sint";
    case 80:
      return "BGRA8Unorm";
    case 81:
      return "BGRA8Unorm_sRGB";
    case 90:
      return "RGB10A2Unorm";
    case 91:
      return "RGB10A2Uint";
    case 92:
      return "RG11B10Float";
    case 93:
      return "RGB9E5Float";
    case 94:
      return "BGR10A2Unorm";
    case 103:
      return "RG32Uint";
    case 104:
      return "RG32Sint";
    case 105:
      return "RG32Float";
    case 110:
      return "RGBA16Unorm";
    case 112:
      return "RGBA16Snorm";
    case 113:
      return "RGBA16Uint";
    case 114:
      return "RGBA16Sint";
    case 115:
      return "RGBA16Float";
    case 123:
      return "RGBA32Uint";
    case 124:
      return "RGBA32Sint";
    case 125:
      return "RGBA32Float";
    case 130:
      return "BC1_RGBA";
    case 131:
      return "BC1_RGBA_sRGB";
    case 132:
      return "BC2_RGBA";
    case 133:
      return "BC2_RGBA_sRGB";
    case 134:
      return "BC3_RGBA";
    case 135:
      return "BC3_RGBA_sRGB";
    case 140:
      return "BC4_RUnorm";
    case 141:
      return "BC4_RSnorm";
    case 142:
      return "BC5_RGUnorm";
    case 143:
      return "BC5_RGSnorm";
    case 150:
      return "BC6H_RGBFloat";
    case 151:
      return "BC6H_RGBUfloat";
    case 152:
      return "BC7_RGBAUnorm";
    case 153:
      return "BC7_RGBAUnorm_sRGB";
    case 160:
      return "PVRTC_RGB_2BPP";
    case 161:
      return "PVRTC_RGB_2BPP_sRGB";
    case 162:
      return "PVRTC_RGB_4BPP";
    case 163:
      return "PVRTC_RGB_4BPP_sRGB";
    case 164:
      return "PVRTC_RGBA_2BPP";
    case 165:
      return "PVRTC_RGBA_2BPP_sRGB";
    case 166:
      return "PVRTC_RGBA_4BPP";
    case 167:
      return "PVRTC_RGBA_4BPP_sRGB";
    case 170:
      return "EAC_R11Unorm";
    case 172:
      return "EAC_R11Snorm";
    case 174:
      return "EAC_RG11Unorm";
    case 176:
      return "EAC_RG11Snorm";
    case 178:
      return "EAC_RGBA8";
    case 179:
      return "EAC_RGBA8_sRGB";
    case 180:
      return "ETC2_RGB8";
    case 181:
      return "ETC2_RGB8_sRGB";
    case 182:
      return "ETC2_RGB8A1";
    case 183:
      return "ETC2_RGB8A1_sRGB";
    case 186:
      return "ASTC_4x4_sRGB";
    case 187:
      return "ASTC_5x4_sRGB";
    case 188:
      return "ASTC_5x5_sRGB";
    case 189:
      return "ASTC_6x5_sRGB";
    case 190:
      return "ASTC_6x6_sRGB";
    case 192:
      return "ASTC_8x5_sRGB";
    case 193:
      return "ASTC_8x6_sRGB";
    case 194:
      return "ASTC_8x8_sRGB";
    case 195:
      return "ASTC_10x5_sRGB";
    case 196:
      return "ASTC_10x6_sRGB";
    case 197:
      return "ASTC_10x8_sRGB";
    case 198:
      return "ASTC_10x10_sRGB";
    case 199:
      return "ASTC_12x10_sRGB";
    case 200:
      return "ASTC_12x12_sRGB";
    case 204:
      return "ASTC_4x4_LDR";
    case 205:
      return "ASTC_5x4_LDR";
    case 206:
      return "ASTC_5x5_LDR";
    case 207:
      return "ASTC_6x5_LDR";
    case 208:
      return "ASTC_6x6_LDR";
    case 210:
      return "ASTC_8x5_LDR";
    case 211:
      return "ASTC_8x6_LDR";
    case 212:
      return "ASTC_8x8_LDR";
    case 213:
      return "ASTC_10x5_LDR";
    case 214:
      return "ASTC_10x6_LDR";
    case 215:
      return "ASTC_10x8_LDR";
    case 216:
      return "ASTC_10x10_LDR";
    case 217:
      return "ASTC_12x10_LDR";
    case 218:
      return "ASTC_12x12_LDR";
    case 222:
      return "ASTC_4x4_HDR";
    case 223:
      return "ASTC_5x4_HDR";
    case 224:
      return "ASTC_5x5_HDR";
    case 225:
      return "ASTC_6x5_HDR";
    case 226:
      return "ASTC_6x6_HDR";
    case 228:
      return "ASTC_8x5_HDR";
    case 229:
      return "ASTC_8x6_HDR";
    case 230:
      return "ASTC_8x8_HDR";
    case 231:
      return "ASTC_10x5_HDR";
    case 232:
      return "ASTC_10x6_HDR";
    case 233:
      return "ASTC_10x8_HDR";
    case 234:
      return "ASTC_10x10_HDR";
    case 235:
      return "ASTC_12x10_HDR";
    case 236:
      return "ASTC_12x12_HDR";
    case 240:
      return "GBGR422";
    case 241:
      return "BGRG422";
    case 250:
      return "Depth16Unorm";
    case 252:
      return "Depth32Float";
    case 253:
      return "Stencil8";
    case 255:
      return "Depth24Unorm_Stencil8";
    case 260:
      return "Depth32Float_Stencil8";
    case 261:
      return "X32_Stencil8";
    case 262:
      return "X24_Stencil8";
    case 263:
      return "Inherited";
    case 264:
      return "Unspecialized";
    default:
      if (!MTLHudIsInternalInstall())
      {
        return 0;
      }

      if (a1 <= 323)
      {
        if (a1 <= 220)
        {
          if (a1 > 115)
          {
            if (a1 <= 190)
            {
              if (a1 == 116)
              {
                return "RGBA16Bfloat";
              }

              if (a1 == 185)
              {
                return "ASTC_4x2_sRGB";
              }
            }

            else
            {
              switch(a1)
              {
                case 191:
                  return "ASTC_8x4_sRGB";
                case 203:
                  return "ASTC_4x2_LDR";
                case 209:
                  return "ASTC_8x4_LDR";
              }
            }
          }

          else if (a1 <= 65)
          {
            if (a1 == 26)
            {
              return "R16Bfloat";
            }

            if (a1 == 44)
            {
              return "BGRA4Unorm";
            }
          }

          else
          {
            switch(a1)
            {
              case 'B':
                return "RG16Bfloat";
              case 'T':
                return "ARGB8Unorm";
              case 'U':
                return "ARGB8Unorm_sRGB";
            }
          }
        }

        else if (a1 <= 302)
        {
          if (a1 > 299)
          {
            if (a1 == 300)
            {
              return "RGBX8Unorm";
            }

            if (a1 == 301)
            {
              return "RGBX8Unorm_sRGB";
            }

            return "RGBX8Snorm";
          }

          if (a1 == 221)
          {
            return "ASTC_4x2_HDR";
          }

          if (a1 == 227)
          {
            return "ASTC_8x4_HDR";
          }
        }

        else if (a1 > 313)
        {
          switch(a1)
          {
            case 314:
              return "RGBX16Sint";
            case 315:
              return "RGBX16Float";
            case 323:
              return "RGBX32Uint";
          }
        }

        else
        {
          switch(a1)
          {
            case 303:
              return "RGBX8Uint";
            case 304:
              return "RGBX8Sint";
            case 313:
              return "RGBX16Uint";
          }
        }

        return 0;
      }

      switch(a1)
      {
        case 500:
          return "YCBCR8_420_2P";
        case 501:
          return "YCBCR8_422_1P";
        case 502:
          return "YCBCR8_422_2P";
        case 503:
          return "YCBCR8_444_2P";
        case 504:
          return "YCBCR10_444_1P";
        case 505:
          return "YCBCR10_420_2P";
        case 506:
          return "YCBCR10_422_2P";
        case 507:
          return "YCBCR10_444_2P";
        case 508:
          return "YCBCR10_420_2P_PACKED";
        case 509:
          return "YCBCR10_422_2P_PACKED";
        case 510:
          return "YCBCR10_444_2P_PACKED";
        case 511:
        case 512:
        case 513:
        case 514:
        case 515:
        case 516:
        case 517:
        case 518:
        case 519:
        case 531:
        case 532:
        case 533:
        case 534:
        case 535:
        case 536:
        case 537:
        case 538:
        case 539:
        case 549:
        case 557:
        case 558:
        case 559:
        case 561:
        case 614:
          return 0;
        case 520:
          return "YCBCR8_420_2P_sRGB";
        case 521:
          return "YCBCR8_422_1P_sRGB";
        case 522:
          return "YCBCR8_422_2P_sRGB";
        case 523:
          return "YCBCR8_444_2P_sRGB";
        case 524:
          return "YCBCR10_444_1P_sRGB";
        case 525:
          return "YCBCR10_420_2P_sRGB";
        case 526:
          return "YCBCR10_422_2P_sRGB";
        case 527:
          return "YCBCR10_444_2P_sRGB";
        case 528:
          return "YCBCR10_420_2P_PACKED_sRGB";
        case 529:
          return "YCBCR10_422_2P_PACKED_sRGB";
        case 530:
          return "YCBCR10_444_2P_PACKED_sRGB";
        case 540:
          return "RGB8_420_2P";
        case 541:
          return "RGB8_422_2P";
        case 542:
          return "RGB8_444_2P";
        case 543:
          return "RGB10_420_2P";
        case 544:
          return "RGB10_422_2P";
        case 545:
          return "RGB10_444_2P";
        case 546:
          return "RGB10_420_2P_PACKED";
        case 547:
          return "RGB10_422_2P_PACKED";
        case 548:
          return "RGB10_444_2P_PACKED";
        case 550:
          return "RGB10A8_2P_XR10";
        case 551:
          return "RGB10A8_2P_XR10_sRGB";
        case 552:
          return "BGRA10_XR";
        case 553:
          return "BGRA10_XR_sRGB";
        case 554:
          return "BGR10_XR";
        case 555:
          return "BGR10_XR_sRGB";
        case 556:
          return "RGBA16Float_XR";
        case 560:
          return "YCBCRA8_444_1P";
        case 562:
          return "YCBCR8_422_1P_REV";
        case 563:
          return "YCBCR10_444_1P_PQ";
        case 564:
          return "YCBCR10_420_2P_PQ";
        case 565:
          return "YCBCR10_422_2P_PQ";
        case 566:
          return "YCBCR10_444_2P_PQ";
        case 567:
          return "YCBCR10_420_2P_PACKED_PQ";
        case 568:
          return "YCBCR10_422_2P_PACKED_PQ";
        case 569:
          return "YCBCR10_444_2P_PACKED_PQ";
        case 570:
          return "YCBCR12_420_2P";
        case 571:
          return "YCBCR12_422_2P";
        case 572:
          return "YCBCR12_444_2P";
        case 573:
          return "YCBCR12_420_2P_PQ";
        case 574:
          return "YCBCR12_422_2P_PQ";
        case 575:
          return "YCBCR12_444_2P_PQ";
        case 576:
          return "R10Unorm_X6";
        case 577:
          return "R10Unorm_X6_sRGB";
        case 578:
          return "RG10Unorm_X12";
        case 579:
          return "RG10Unorm_X12_sRGB";
        case 580:
          return "YCBCR12_420_2P_PACKED";
        case 581:
          return "YCBCR12_422_2P_PACKED";
        case 582:
          return "YCBCR12_444_2P_PACKED";
        case 583:
          return "YCBCR12_420_2P_PACKED_PQ";
        case 584:
          return "YCBCR12_422_2P_PACKED_PQ";
        case 585:
          return "YCBCR12_444_2P_PACKED_PQ";
        case 586:
          return "RGB10A2Unorm_sRGB";
        case 587:
          return "RGB10A2Unorm_PQ";
        case 588:
          return "R10Unorm_PACKED";
        case 589:
          return "RG10Unorm_PACKED";
        case 590:
          return "YCBCR10_444_1P_XR";
        case 591:
          return "YCBCR10_420_2P_XR";
        case 592:
          return "YCBCR10_422_2P_XR";
        case 593:
          return "YCBCR10_444_2P_XR";
        case 594:
          return "YCBCR10_420_2P_PACKED_XR";
        case 595:
          return "YCBCR10_422_2P_PACKED_XR";
        case 596:
          return "YCBCR10_444_2P_PACKED_XR";
        case 597:
          return "YCBCR12_420_2P_XR";
        case 598:
          return "YCBCR12_422_2P_XR";
        case 599:
          return "YCBCR12_444_2P_XR";
        case 600:
          return "YCBCR12_420_2P_PACKED_XR";
        case 601:
          return "YCBCR12_422_2P_PACKED_XR";
        case 602:
          return "YCBCR12_444_2P_PACKED_XR";
        case 603:
          return "R12Unorm_X4";
        case 604:
          return "R12Unorm_X4_PQ";
        case 605:
          return "RG12Unorm_X8";
        case 606:
          return "R10Unorm_X6_PQ";
        case 607:
          return "YCBCR10_444_1P_HLG";
        case 608:
          return "YCBCR10_420_2P_HLG";
        case 609:
          return "YCBCR10_422_2P_HLG";
        case 610:
          return "YCBCR10_444_2P_HLG";
        case 611:
          return "YCBCR10_420_2P_PACKED_HLG";
        case 612:
          return "YCBCR10_422_2P_PACKED_HLG";
        case 613:
          return "YCBCR10_444_2P_PACKED_HLG";
        case 615:
          return "YCBCR12_420_2P_HLG";
        case 616:
          return "YCBCR12_422_2P_HLG";
        case 617:
          return "YCBCR12_444_2P_HLG";
        case 618:
          return "YCBCR12_420_2P_PACKED_HLG";
        case 619:
          return "YCBCR12_422_2P_PACKED_HLG";
        case 620:
          return "YCBCR12_444_2P_PACKED_HLG";
        case 621:
          return "R10Unorm_X6_HLG";
        case 622:
          return "R12Unorm_X4_HLG";
        case 623:
          return "RGB10A2Unorm_HLG";
        case 624:
          return "RGB10A8_2P";
        case 625:
          return "RGB10A8_2P_sRGB";
        case 626:
          return "RGB10A8_2P_PQ";
        case 627:
          return "RGB10A8_2P_HLG";
        case 628:
          return "BGR10A2Unorm_sRGB";
        case 629:
          return "BGR10A2Unorm_PQ";
        case 630:
          return "BGRA10Uint_PACKED";
        case 631:
          return "BGRA10_XR_PACKED";
        case 632:
          return "BGRA10_XR_PACKED_sRGB";
        case 633:
          return "BGRA10Unorm_PACKED";
        case 634:
          return "BGRA10Unorm_PACKED_sRGB";
        case 635:
          return "BGRA10Unorm_PACKED_HLG";
        case 636:
          return "BGRA10Unorm_PACKED_PQ";
        case 637:
          return "BGRA10Uint";
        case 638:
          return "BGRA10Unorm";
        case 639:
          return "BGRA10Unorm_sRGB";
        case 640:
          return "BGRA10Unorm_HLG";
        case 641:
          return "BGRA10Unorm_PQ";
        case 642:
          return "R10Uint_X6";
        case 643:
          return "R10Uint_PACKED";
        case 644:
          return "RG10Uint_X12";
        case 645:
          return "RG10Uint_PACKED";
        case 646:
          return "R12Uint_X4";
        case 647:
          return "R12Uint_PACKED";
        case 648:
          return "RG12Uint_X8";
        case 649:
          return "RG12Uint_PACKED";
        case 650:
          return "RGB10A8Uint_2P";
        default:
          if (a1 == 324)
          {
            result = "RGBX32Sint";
          }

          else
          {
            if (a1 != 325)
            {
              return 0;
            }

            result = "RGBX32Float";
          }

          break;
      }

      return result;
  }
}

uint64_t MTLHUDGameModeEnabled()
{
  if (MTLHUDGameModeEnabled_onceToken != -1)
  {
    MTLHUDGameModeEnabled_cold_1();
  }

  return MTLHUDGameModeEnabled_enabled;
}

uint64_t MTLHUDGetGameModeKeyState()
{
  if (MTLHUDGetGameModeKeyState_onceToken != -1)
  {
    MTLHUDGetGameModeKeyState_cold_1();
  }

  return MTLHUDGetGameModeKeyState_state;
}

void MTLHUDInit()
{
  if ((MTLHudIsExcluded() & 1) == 0)
  {
    if ((MTLHudIsInternalInstall() & 1) != 0 || MTLHudIsSideLoadedApp())
    {
      v0 = +[NSUserDefaults standardUserDefaults];
      v1 = [v0 objectForKey:@"MetalForceHudEnabled"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = [v1 BOOLValue];
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = 0;
    }

    v3 = getenv("MTL_HUD_ENABLED");
    if (v3 || (v3 = getenv("GT_HUD_ENABLED")) != 0)
    {
      if (strtol(v3, 0, 0) <= 0)
      {
        return;
      }
    }

    else if (!v2)
    {
      return;
    }

    v4 = getenv("MTL_HUD_MANUAL_INTERPOSE");
    if (!v4 || !atoi(v4))
    {

      HUDInitInterposeCA();
    }
  }
}

void sub_49074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(va);
  _Unwind_Resume(a1);
}

void sub_49400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __destructor_8_s0_s8_s16(va);
  _Unwind_Resume(a1);
}

void sub_4A000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __destructor_8_s0_s8_s16_s40_s48_s56_s64(va);
  _Unwind_Resume(a1);
}

void sub_4A23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  __destructor_8_s0_s8_s16_s40_s48_s56_s64(va);
  _Unwind_Resume(a1);
}

void _HUDGPUTimeTrackerGetMetricDescriptors()
{
  {
    __cxa_atexit(__cxx_global_array_dtor, 0, &dword_0);
  }
}

void HUDUIOverlayCreate_cold_1(id *a1, uint64_t a2)
{
  v4 = (a1 + 760);
  v5 = -560;
  do
  {
    HUDStringVertexBufferInternal::~HUDStringVertexBufferInternal(v4);
    v4 = (v6 - 56);
    v5 += 56;
  }

  while (v5);
  std::__hash_table<std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,HUDUIStringInternal>>>::~__hash_table(a2);
  HUDFont::~HUDFont(a1);

  operator delete();
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

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}

__float2 __sincospif_stret(float a1)
{
  v3 = ___sincospif_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}