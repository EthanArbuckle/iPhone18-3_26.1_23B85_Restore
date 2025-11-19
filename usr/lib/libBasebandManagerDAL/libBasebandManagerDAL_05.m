void sub_2972C2BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE **a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v5;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v5) = 0;
  memset(a4, 170, 24);
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v13, &v12[v13]);
  v14 = *(a4 + 23);
  v15 = v14;
  if (v14 < 0)
  {
    v14 = a4[1];
  }

  if (v14 == 1)
  {
    goto LABEL_26;
  }

  if (v14 != 12)
  {
    if (v15 < 0)
    {
      **a4 = 0;
      a4[1] = 0;
      if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_29:
      operator delete(__dst[0]);
      return;
    }

    *a4 = 0;
    *(a4 + 23) = 0;
LABEL_26:
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v15 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  v16[11] = v16[3];
  if (SHIBYTE(__dst[2]) < 0)
  {
    goto LABEL_29;
  }
}

void sub_2972C2D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C26E8B0](exception, 5);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return;
  }

  v8 = 0;
  v9 = a2 + 1;
  __p[0] = 0;
  __p[1] = 0;
  v35 = 0;
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_25:
    v17 = *(a1 + 24) & 0x1F0;
    goto LABEL_26;
  }

  v10 = a2[1];
  if (v10 != 46)
  {
    if (v10 == 58)
    {
      v11 = a2 + 2;
      if (a3 - (v4 + 2) >= 2 && a3 - 1 != v11)
      {
        v12 = v4 + 2;
        v13 = v4 + 3;
        if (v4[2] != 58)
        {
          goto LABEL_14;
        }

LABEL_13:
        if (*v13 == 93)
        {
          if (a3 != v12)
          {
            v21 = std::regex_traits<char>::__lookup_classname<std::__wrap_iter<char const*>>(a1, v11, v12, *(a1 + 24) & 1);
            if (!v21)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
            }

            *(a4 + 160) |= v21;
            if (SHIBYTE(v35) < 0)
            {
              goto LABEL_69;
            }

            return;
          }
        }

        else
        {
LABEL_14:
          while (v13 != a3 - 1)
          {
            ++v12;
            if (*v13++ == 58)
            {
              goto LABEL_13;
            }
          }
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    if (v10 == 61)
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<std::__wrap_iter<char const*>>(a1, a2 + 2, a3, a4);
      if ((SHIBYTE(v35) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_69;
    }

    v8 = 0;
    goto LABEL_25;
  }

  v14 = a2 + 2;
  if (a3 - (v4 + 2) < 2 || a3 - 1 == v14)
  {
LABEL_90:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v15 = v4 + 2;
  v16 = v9 + 2;
  if (*(v16 - 1) != 46)
  {
    goto LABEL_21;
  }

LABEL_20:
  if (*v16 != 93)
  {
LABEL_21:
    while (v16 != a3 - 1)
    {
      ++v15;
      if (*v16++ == 46)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_90;
  }

  if (a3 == v15)
  {
    goto LABEL_90;
  }

  v22 = a1;
  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(a1, v14, v15, &v36);
  a1 = v22;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
    a1 = v22;
  }

  v35 = v37;
  *__p = v36;
  v23 = HIBYTE(v37);
  v8 = SHIBYTE(v37);
  if (v37 < 0)
  {
    v23 = __p[1];
  }

  if ((v23 - 1) >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v4 = v15 + 2;
  v17 = *(a1 + 24) & 0x1F0;
  v24 = SHIBYTE(v37);
  if (v37 < 0)
  {
    v24 = __p[1];
  }

  if (v24)
  {
LABEL_49:
    if (v4 == a3)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_26:
  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v18) = *v4;
    goto LABEL_45;
  }

  v18 = *v4;
  if (v18 != 92)
  {
LABEL_45:
    if (v8 < 0)
    {
      v25 = __p[0];
      __p[1] = 1;
    }

    else
    {
      HIBYTE(v35) = 1;
      v25 = __p;
    }

    *v25 = v18;
    *(v25 + 1) = 0;
    ++v4;
    goto LABEL_49;
  }

  v19 = a1;
  if (v17)
  {
    v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v4 + 1, a3, __p);
  }

  else
  {
    v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v4 + 1, a3, __p, a4);
  }

  v4 = v20;
  a1 = v19;
  if (v4 == a3)
  {
LABEL_51:
    if (SHIBYTE(v35) < 0)
    {
      if (!__p[1])
      {
        goto LABEL_68;
      }

      if (__p[1] != 1)
      {
        v27 = __p[0];
LABEL_67:
        std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v27, *(v27 + 1));
        goto LABEL_68;
      }

      v27 = __p[0];
    }

    else
    {
      if (!HIBYTE(v35))
      {
        goto LABEL_68;
      }

      v27 = __p;
      if (HIBYTE(v35) != 1)
      {
        goto LABEL_67;
      }
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v27);
    goto LABEL_68;
  }

LABEL_50:
  v26 = *v4;
  if (v26 == 93)
  {
    goto LABEL_51;
  }

  v28 = v4 + 1;
  if (v4 + 1 == a3 || v26 != 45 || *v28 == 93)
  {
    goto LABEL_51;
  }

  v36 = 0uLL;
  v37 = 0;
  v29 = v4 + 2;
  if (v28 + 1 != a3 && *v28 == 91 && *v29 == 46)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v28 + 2, a3, &v36);
    goto LABEL_81;
  }

  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v28) = *v28;
    goto LABEL_79;
  }

  LODWORD(v28) = *v28;
  if (v28 != 92)
  {
LABEL_79:
    HIBYTE(v37) = 1;
    LOWORD(v36) = v28;
    goto LABEL_81;
  }

  if (v17)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v29, a3, &v36);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v29, a3, &v36, a4);
  }

LABEL_81:
  *v32 = *__p;
  v33 = v35;
  __p[1] = 0;
  v35 = 0;
  __p[0] = 0;
  *v30 = v36;
  v31 = v37;
  v36 = 0uLL;
  v37 = 0;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](a4, v32, v30);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

LABEL_86:
    operator delete(v32[0]);
    if (SHIBYTE(v37) < 0)
    {
      goto LABEL_87;
    }

LABEL_68:
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_69;
  }

  operator delete(v30[0]);
  if (SHIBYTE(v33) < 0)
  {
    goto LABEL_86;
  }

LABEL_83:
  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    goto LABEL_68;
  }

LABEL_87:
  operator delete(v36);
  if (SHIBYTE(v35) < 0)
  {
LABEL_69:
    operator delete(__p[0]);
  }
}

void sub_2972C3308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<std::__wrap_iter<char const*>>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  if (a3 - a2 < 2 || a3 - 1 == a2)
  {
    goto LABEL_39;
  }

  v6 = a2 + 1;
  v7 = a2;
  if (*a2 != 61)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*v6 != 93)
  {
LABEL_5:
    while (v6 != a3 - 1)
    {
      ++v7;
      if (*v6++ == 61)
      {
        goto LABEL_4;
      }
    }

LABEL_39:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (a3 == v7)
  {
    goto LABEL_39;
  }

  memset(v17, 170, sizeof(v17));
  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(a1, a2, v7, v17);
  v8 = SHIBYTE(v17[2]);
  if ((SHIBYTE(v17[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v17[2]))
    {
      memset(__p, 170, sizeof(__p));
      v9 = v17;
      goto LABEL_14;
    }

LABEL_40:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v8 = v17[1];
  if (!v17[1])
  {
    goto LABEL_40;
  }

  memset(__p, 170, sizeof(__p));
  v9 = v17[0];
LABEL_14:
  std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(a1, v9, v8 + v9, __p);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    if (__p[1])
    {
LABEL_16:
      v10 = *(a4 + 144);
      if (v10 >= *(a4 + 152))
      {
        *(a4 + 144) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a4 + 136, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (SHIBYTE(__p[2]) < 0)
        {
          std::string::__init_copy_ctor_external(*(a4 + 144), __p[0], __p[1]);
        }

        else
        {
          v11 = *__p;
          *(v10 + 16) = __p[2];
          *v10 = v11;
        }

        *(a4 + 144) = v10 + 24;
        *(a4 + 144) = v10 + 24;
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_33;
    }
  }

  else if (HIBYTE(__p[2]))
  {
    goto LABEL_16;
  }

  v12 = HIBYTE(v17[2]);
  if (SHIBYTE(v17[2]) < 0)
  {
    v12 = v17[1];
  }

  if (v12 == 2)
  {
    v14 = v17;
    if (SHIBYTE(v17[2]) < 0)
    {
      v14 = v17[0];
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v14, *(v14 + 1));
  }

  else
  {
    if (v12 != 1)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
    }

    v13 = v17;
    if (SHIBYTE(v17[2]) < 0)
    {
      v13 = v17[0];
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v13);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_37:
    operator delete(__p[0]);
    if (SHIBYTE(v17[2]) < 0)
    {
      goto LABEL_38;
    }

    return v7 + 2;
  }

LABEL_33:
  if ((SHIBYTE(v17[2]) & 0x80000000) == 0)
  {
    return v7 + 2;
  }

LABEL_38:
  operator delete(v17[0]);
  return v7 + 2;
}

void sub_2972C35F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 144) = v21;
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  if (a3 - a2 < 2 || a3 - 1 == a2)
  {
    goto LABEL_15;
  }

  v5 = a2 + 1;
  v6 = a2;
  if (*a2 != 46)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*v5 != 93)
  {
LABEL_5:
    while (v5 != a3 - 1)
    {
      ++v6;
      if (*v5++ == 46)
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (a3 == v6)
  {
    goto LABEL_15;
  }

  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(a1, a2, v6, &v10);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v10;
  v7 = v11;
  *(a4 + 16) = v11;
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v5 == 115)
      {
        *(a5 + 160) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 119)
      {
        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

    if (v5 != 98)
    {
      if (v5 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 8;
    return a2 + 1;
  }

  else
  {
    if (*a2 > 0x52u)
    {
      if (v5 == 83)
      {
        *(a5 + 164) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 87)
      {
        *(a5 + 164) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

    if (*a2)
    {
      if (v5 == 68)
      {
        *(a5 + 164) |= 0x400u;
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 0;
    return a2 + 1;
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    goto LABEL_82;
  }

  v4 = *a2;
  v5 = *a2;
  if (v4 > 0x65)
  {
    if (*a2 <= 0x71u)
    {
      if (v4 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 12;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 12);
          return a2 + 1;
        }
      }

      else
      {
        if (v4 != 110)
        {
          goto LABEL_48;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 10;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 10);
          return a2 + 1;
        }
      }
    }

    else
    {
      switch(v4)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 13;
            return a2 + 1;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 13);
            return a2 + 1;
          }

        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 9;
            return a2 + 1;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 9);
            return a2 + 1;
          }

        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 11;
            return a2 + 1;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 11);
            return a2 + 1;
          }

        default:
          goto LABEL_48;
      }
    }
  }

  if (*a2 <= 0x5Bu)
  {
    if (v4 != 34 && v4 != 47)
    {
      goto LABEL_48;
    }

    goto LABEL_21;
  }

  if (v4 == 92)
  {
LABEL_21:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      return a2 + 1;
    }
  }

  if (v4 != 97)
  {
    if (v4 == 98)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 8);
        return a2 + 1;
      }
    }

LABEL_48:
    if ((v4 & 0xFFFFFFF8) == 0x30)
    {
      v8 = v4 - 48;
      if (a2 + 1 == a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = a2 + 1;
        v10 = a2[1];
        if ((v10 & 0xF8) == 0x30)
        {
          v8 = v10 + 8 * v8 - 48;
          if (a2 + 2 != a3)
          {
            v11 = a2[2];
            v12 = v11 & 0xF8;
            v13 = v11 + 8 * v8 - 48;
            if (v12 == 48)
            {
              v9 = a2 + 3;
            }

            else
            {
              v9 = a2 + 2;
            }

            if (v12 == 48)
            {
              v8 = v13;
            }

            if (!a4)
            {
              goto LABEL_81;
            }

            goto LABEL_69;
          }

          v9 = a3;
          if (!a4)
          {
LABEL_81:
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
            return v9;
          }

LABEL_69:
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          result = v9;
          *a4 = v8;
          *(a4 + 1) = 0;
          return result;
        }
      }

      if (!a4)
      {
        goto LABEL_81;
      }

      goto LABEL_69;
    }

LABEL_82:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 7;
    return a2 + 1;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 7);
    return a2 + 1;
  }
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) != 1)
  {
    v11 = a2[23];
    if (v11 < 0)
    {
      if (*(a2 + 1) != 1)
      {
        goto LABEL_73;
      }
    }

    else if (v11 != 1)
    {
      goto LABEL_73;
    }

    v29 = a3[23];
    if (v29 < 0)
    {
      v29 = *(a3 + 1);
    }

    if (v29 != 1)
    {
LABEL_73:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
    }

    if (*(a1 + 169) != 1)
    {
LABEL_63:
      *v39 = *v4;
      v40 = *(v4 + 2);
      *(v4 + 1) = 0;
      *(v4 + 2) = 0;
      *v4 = 0;
      *__p = *v3;
      v42 = *(v3 + 2);
      *v3 = 0;
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((a1 + 88), v39);
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v40) < 0)
        {
          goto LABEL_67;
        }
      }

      else if (SHIBYTE(v40) < 0)
      {
        goto LABEL_67;
      }

      return;
    }

    v30 = a2;
    if ((v11 & 0x80000000) != 0)
    {
      v30 = *a2;
    }

    v31 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v30);
    if (v4[23] < 0)
    {
      **v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      *v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
LABEL_60:
        v33 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v32);
        v34 = v3;
        if (v3[23] < 0)
        {
          v34 = *v3;
        }

        *v34 = v33;
        goto LABEL_63;
      }
    }

    v32 = *v3;
    goto LABEL_60;
  }

  if (*(a1 + 169))
  {
    for (i = 0; ; ++i)
    {
      v7 = v4[23];
      if ((v7 & 0x8000000000000000) != 0)
      {
        if (i >= *(v4 + 1))
        {
LABEL_25:
          for (j = 0; ; ++j)
          {
            v17 = v3[23];
            if ((v17 & 0x8000000000000000) != 0)
            {
              if (j >= *(v3 + 1))
              {
                goto LABEL_44;
              }
            }

            else if (j >= v17)
            {
              goto LABEL_44;
            }

            v18 = v3;
            if ((v17 & 0x80000000) != 0)
            {
              v18 = *v3;
            }

            v19 = (*(**(a1 + 24) + 40))(*(a1 + 24), v18[j]);
            v20 = v3;
            if (v3[23] < 0)
            {
              v20 = *v3;
            }

            v20[j] = v19;
          }
        }
      }

      else if (i >= v7)
      {
        goto LABEL_25;
      }

      v8 = v4;
      if ((v7 & 0x80000000) != 0)
      {
        v8 = *v4;
      }

      v9 = (*(**(a1 + 24) + 40))(*(a1 + 24), v8[i]);
      v10 = v4;
      if (v4[23] < 0)
      {
        v10 = *v4;
      }

      v10[i] = v9;
    }
  }

  for (k = 0; ; ++k)
  {
    v14 = a2[23];
    if ((v14 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (k >= v14)
    {
      goto LABEL_35;
    }

LABEL_23:
    v13 = a2;
    if ((v14 & 0x80000000) != 0)
    {
      v13 = *a2;
      v15 = *a2;
    }

    else
    {
      v15 = a2;
    }

    v15[k] = v13[k];
  }

  if (k < *(a2 + 1))
  {
    goto LABEL_23;
  }

LABEL_35:
  for (m = 0; ; ++m)
  {
    v23 = a3[23];
    if ((v23 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (m >= v23)
    {
      goto LABEL_44;
    }

LABEL_42:
    v22 = a3;
    if ((v23 & 0x80000000) != 0)
    {
      v22 = *a3;
      v24 = *a3;
    }

    else
    {
      v24 = a3;
    }

    v24[m] = v22[m];
  }

  if (m < *(a3 + 1))
  {
    goto LABEL_42;
  }

LABEL_44:
  v25 = v4[23];
  if (v25 < 0)
  {
    v26 = v4;
    v4 = *v4;
    v25 = *(v26 + 1);
  }

  std::regex_traits<char>::transform<std::__wrap_iter<char *>>(a1 + 16, v4, &v4[v25]);
  v27 = v3[23];
  if (v27 < 0)
  {
    v28 = v3;
    v3 = *v3;
    v27 = *(v28 + 1);
  }

  std::regex_traits<char>::transform<std::__wrap_iter<char *>>(a1 + 16, v3, &v3[v27]);
  *v39 = *v37;
  v40 = v38;
  *__p = *v35;
  v42 = v36;
  std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((a1 + 88), v39);
  if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      return;
    }

LABEL_67:
    operator delete(v39[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v40) < 0)
  {
    goto LABEL_67;
  }
}

void sub_2972C423C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  support::mobileasset::registerForUpdates(std::string const&,std::string const&,dispatch_queue_s *,void({block_pointer})(int))::$_0::~$_0(va);
  _Unwind_Resume(a1);
}

void sub_2972C4250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  support::mobileasset::registerForUpdates(std::string const&,std::string const&,dispatch_queue_s *,void({block_pointer})(int))::$_0::~$_0(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v6 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v8 = *(a1 + 120);
    v7 = *(a1 + 128);
    if (v8 < v7)
    {
      *v8 = v6;
      v9 = v8 + 2;
LABEL_41:
      *(a1 + 120) = v9;
      return;
    }

    v19 = *(a1 + 112);
    v20 = v8 - v19;
    v21 = (v8 - v19) >> 1;
    if (v21 > -2)
    {
      v22 = v7 - v19;
      if (v22 <= v21 + 1)
      {
        v23 = v21 + 1;
      }

      else
      {
        v23 = v22;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v23;
      }

      if (!v24)
      {
        v25 = 0;
LABEL_39:
        v31 = &v25[2 * v21];
        *v31 = v6;
        v9 = v31 + 2;
        memcpy(v25, v19, v20);
        *(a1 + 112) = v25;
        *(a1 + 120) = v9;
        *(a1 + 128) = &v25[2 * v24];
        if (v19)
        {
          operator delete(v19);
        }

        goto LABEL_41;
      }

      if ((v24 & 0x8000000000000000) == 0)
      {
        v25 = operator new(2 * v24);
        goto LABEL_39;
      }

LABEL_47:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_46:
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v10 = a2 | (a3 << 8);
  v12 = *(a1 + 120);
  v11 = *(a1 + 128);
  if (*(a1 + 170) == 1)
  {
    if (v12 >= v11)
    {
      v13 = *(a1 + 112);
      v14 = v12 - v13;
      v15 = (v12 - v13) >> 1;
      if (v15 <= -2)
      {
        goto LABEL_46;
      }

      v16 = v11 - v13;
      if (v16 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      else
      {
        v17 = v16;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        if (v18 < 0)
        {
          goto LABEL_47;
        }

        goto LABEL_37;
      }

      goto LABEL_42;
    }
  }

  else if (v12 >= v11)
  {
    v13 = *(a1 + 112);
    v14 = v12 - v13;
    v15 = (v12 - v13) >> 1;
    if (v15 <= -2)
    {
      goto LABEL_46;
    }

    v27 = v11 - v13;
    if (v27 <= v15 + 1)
    {
      v28 = v15 + 1;
    }

    else
    {
      v28 = v27;
    }

    if (v27 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v28;
    }

    if (v18)
    {
      if (v18 < 0)
      {
        goto LABEL_47;
      }

LABEL_37:
      v29 = v10;
      v30 = operator new(2 * v18);
      v10 = v29;
      goto LABEL_43;
    }

LABEL_42:
    v30 = 0;
LABEL_43:
    v32 = &v30[2 * v15];
    *v32 = v10;
    v26 = v32 + 2;
    memcpy(v30, v13, v14);
    *(a1 + 112) = v30;
    *(a1 + 120) = v26;
    *(a1 + 128) = &v30[2 * v18];
    if (v13)
    {
      operator delete(v13);
    }

    goto LABEL_45;
  }

  *v12 = v10;
  v26 = v12 + 2;
LABEL_45:
  *(a1 + 120) = v26;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C26E8B0](exception, 1);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 <= 0x16)
  {
    __dst[23] = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  *&__dst[8] = v5;
  *&__dst[16] = v9 | 0x8000000000000000;
  *__dst = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v8[v5] = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if ((__dst[23] & 0x80000000) != 0)
  {
    v12 = *__dst;
    if (!*&__dst[8])
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!__dst[23])
    {
      return;
    }

    v12 = __dst;
  }

  std::__get_collation_name(&v19, v12);
  *a4 = *&v19.__r_.__value_.__l.__data_;
  v13 = v19.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v19.__r_.__value_.__l + 2);
  v14 = HIBYTE(v13);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a4 + 8);
  }

  if (v14)
  {
LABEL_17:
    if ((__dst[23] & 0x80000000) == 0)
    {
      return;
    }

    v12 = *__dst;
LABEL_23:
    operator delete(v12);
    return;
  }

  if ((__dst[23] & 0x8000000000000000) != 0)
  {
    v12 = *__dst;
    if (*&__dst[8] >= 3uLL)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (__dst[23] < 3)
  {
LABEL_25:
    (*(**(a1 + 16) + 32))(&v19);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v19;
    if (*(a4 + 23) < 0)
    {
      v16 = *(a4 + 8);
      if (v16 == 1 || v16 == 12)
      {
        if (__dst != a4)
        {
          if (__dst[23] >= 0)
          {
            v17 = __dst;
          }

          else
          {
            v17 = *__dst;
          }

          if (__dst[23] >= 0)
          {
            v18 = __dst[23];
          }

          else
          {
            v18 = *&__dst[8];
          }

          std::string::__assign_no_alias<false>(a4, v17, v18);
        }
      }

      else
      {
        **a4 = 0;
        *(a4 + 8) = 0;
      }
    }

    else
    {
      v15 = *(a4 + 23);
      if (v15 == 1 || v15 == 12)
      {
        if (__dst != a4)
        {
          if ((__dst[23] & 0x80000000) != 0)
          {
            std::string::__assign_no_alias<true>(a4, *__dst, *&__dst[8]);
          }

          else
          {
            *a4 = *__dst;
            *(a4 + 16) = *&__dst[16];
          }
        }
      }

      else
      {
        *a4 = 0;
        *(a4 + 23) = 0;
      }
    }

    goto LABEL_17;
  }
}

void sub_2972C47A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE **a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v5;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v5) = 0;
  memset(a4, 170, 24);
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v13, &v12[v13]);
  v14 = *(a4 + 23);
  v15 = v14;
  if (v14 < 0)
  {
    v14 = a4[1];
  }

  if (v14 == 1)
  {
    goto LABEL_26;
  }

  if (v14 != 12)
  {
    if (v15 < 0)
    {
      **a4 = 0;
      a4[1] = 0;
      if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_29:
      operator delete(__dst[0]);
      return;
    }

    *a4 = 0;
    *(a4 + 23) = 0;
LABEL_26:
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v15 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  v16[11] = v16[3];
  if (SHIBYTE(__dst[2]) < 0)
  {
    goto LABEL_29;
  }
}

void sub_2972C4994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3) + 1;
  if (v4 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v2) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v2) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v8 = operator new(24 * v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[8 * (v3 >> 3)];
  v16 = v9;
  v10 = &v8[24 * v7];
  v17 = v9;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v9, *a2, *(a2 + 8));
    v9 = v16;
    v11 = v17;
    v2 = *a1;
    v3 = *(a1 + 8) - *a1;
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *a2;
    v9->__r_.__value_.__r.__words[2] = *(a2 + 16);
    v11 = &v8[8 * (v3 >> 3)];
  }

  v12 = &v11[1];
  v13 = v9 - v3;
  memcpy(v9 - v3, v2, v3);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v12;
  *(a1 + 16) = v10;
  if (v14)
  {
    operator delete(v14);
  }

  return v12;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C26E8B0](exception, 2);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

uint64_t std::regex_traits<char>::__lookup_classname<std::__wrap_iter<char const*>>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  v4 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, a2, v4);
    goto LABEL_10;
  }

  if ((v4 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v4 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v4;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v4) = 0;
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v13, &v12[v13]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v14 = __dst;
  }

  else
  {
    v14 = __dst[0];
  }

  result = std::__get_classname(v14, a4);
  if (SHIBYTE(__dst[2]) < 0)
  {
    v16 = result;
    operator delete(__dst[0]);
    return v16;
  }

  return result;
}

void sub_2972C4D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](uint64_t a1, char a2)
{
  if (*(a1 + 169) == 1)
  {
    v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v5 = *(a1 + 72);
    v4 = *(a1 + 80);
    if (v5 < v4)
    {
      *v5 = v3;
      v6 = (v5 + 1);
      goto LABEL_28;
    }

    v10 = *(a1 + 64);
    v11 = v5 - v10;
    v12 = v5 - v10 + 1;
    if (v12 >= 0)
    {
      v13 = v4 - v10;
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
        v15 = v3;
        v16 = operator new(v14);
        v3 = v15;
      }

      else
      {
        v16 = 0;
      }

      v22 = &v16[v14];
      v16[v11] = v3;
      v6 = &v16[v11 + 1];
      goto LABEL_26;
    }

LABEL_29:
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 170);
  v9 = *(a1 + 72);
  v8 = *(a1 + 80);
  if (v9 < v8)
  {
    *v9 = a2;
    *(a1 + 72) = v9 + 1;
    return;
  }

  v10 = *(a1 + 64);
  v11 = v9 - v10;
  v17 = v9 - v10 + 1;
  if (v17 < 0)
  {
    goto LABEL_29;
  }

  v18 = v8 - v10;
  if (2 * v18 > v17)
  {
    v17 = 2 * v18;
  }

  if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    v20 = a2;
    v21 = operator new(v19);
    a2 = v20;
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  v22 = &v16[v19];
  v16[v11] = a2;
  v6 = &v16[v11 + 1];
LABEL_26:
  memcpy(v16, v10, v11);
  *(a1 + 64) = v16;
  *(a1 + 72) = v6;
  *(a1 + 80) = v22;
  if (v10)
  {
    operator delete(v10);
    *(a1 + 72) = v6;
    return;
  }

LABEL_28:
  *(a1 + 72) = v6;
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = v3 + 48;
LABEL_3:
    a1[1] = v7;
    return;
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v9 = v8 + 1;
  if (v8 + 1 > 0x555555555555555)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x2AAAAAAAAAAAAAALL)
  {
    v11 = 0x555555555555555;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = a2;
    v13 = operator new(48 * v11);
    a2 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = &v13[48 * v8];
  *v14 = *a2;
  v15 = &v13[48 * v11];
  *(v14 + 2) = *(a2 + 2);
  *a2 = 0;
  *(a2 + 1) = 0;
  v16 = *(a2 + 24);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(v14 + 5) = *(a2 + 5);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v7 = v14 + 48;
  v17 = *a1;
  v18 = a1[1] - *a1;
  *(v14 + 24) = v16;
  v19 = &v14[-v18];
  memcpy(&v14[-v18], v17, v18);
  *a1 = v19;
  a1[1] = v7;
  a1[2] = v15;
  if (!v17)
  {
    goto LABEL_3;
  }

  operator delete(v17);
  a1[1] = v7;
}

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v6 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v6, a2, v3);
    goto LABEL_10;
  }

  if ((v3 | 7) == 0x17)
  {
    v7 = 25;
  }

  else
  {
    v7 = (v3 | 7) + 1;
  }

  v8 = a2;
  v9 = operator new(v7);
  a2 = v8;
  v6 = v9;
  __dst[1] = v3;
  __dst[2] = (v7 | 0x8000000000000000);
  __dst[0] = v9;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v6 + v3) = 0;
  v10 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v10 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v11, &v10[v11]);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_2972C5190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  MEMORY[0x29C26E8B0](exception, 9);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
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

void std::basic_regex<char,std::regex_traits<char>>::__push_loop(std::basic_regex<char> *this, size_t __min, size_t __max, std::__owns_one_state<char> *__s, size_t __mexp_begin, size_t __mexp_end, BOOL __greedy)
{
  v7 = __mexp_end;
  v8 = __mexp_begin;
  v13 = operator new(0x10uLL);
  end = this->__end_;
  first = end->__first_;
  v13->__first_ = first;
  end->__first_ = 0;
  v16 = operator new(0x38uLL);
  loop_count = this->__loop_count_;
  v16[1].__vftable = __s->__first_;
  v16[2].__vftable = v13;
  v16->__vftable = &unk_2A1E359A8;
  v16[3].__vftable = __min;
  v16[4].__vftable = __max;
  LODWORD(v16[5].__vftable) = loop_count;
  HIDWORD(v16[5].__vftable) = v8;
  LODWORD(v16[6].__vftable) = v7;
  BYTE4(v16[6].__vftable) = __greedy;
  __s->__first_ = 0;
  v18 = operator new(0x10uLL);
  v18->__vftable = &unk_2A1E35A38;
  v18[1].__vftable = v16;
  end->__first_ = v18;
  this->__end_ = v13;
  __s->__first_ = v16;
  this->__loop_count_ = loop_count + 1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C26E8B0](exception, 8);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C26E8B0](exception, 7);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void (__cdecl ***std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_2A1E35A08;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__loop<char>::~__loop(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  *__p = &unk_2A1E35A08;
  v2 = __p[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  operator delete(__p);
}

uint64_t std::__loop<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = (*(a2 + 56) + 16 * *(result + 40));
  if (*a2 != -991)
  {
    *v2 = 0;
    if (!*(result + 32))
    {
      *a2 = -994;
      goto LABEL_28;
    }

    if (*(result + 24))
    {
      *a2 = -994;
      *(a2 + 80) = *(result + 8);
      v2[1] = *(a2 + 16);
      v18 = *(result + 44);
      v19 = *(result + 48);
      if (v18 == v19)
      {
        return result;
      }

      v20 = (v19 - 1);
      v21 = (v18 - 1);
      v22 = *(a2 + 24);
      v23 = *(a2 + 32);
      v24 = v20 - v21;
      if ((v20 - v21) >= 2)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFFELL) + v21;
        v26 = v23 + 24 * v21 + 24;
        v27 = v24 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          *(v26 - 24) = v22;
          *(v26 - 16) = v22;
          *v26 = v22;
          *(v26 + 8) = v22;
          *(v26 - 8) = 0;
          *(v26 + 16) = 0;
          v26 += 48;
          v27 -= 2;
        }

        while (v27);
        if (v24 == (v24 & 0xFFFFFFFFFFFFFFFELL))
        {
          return result;
        }
      }

      else
      {
        v25 = v21;
      }

      v28 = v20 - v25;
      v29 = (v23 + 24 * v25 + 16);
      do
      {
        *(v29 - 2) = v22;
        *(v29 - 1) = v22;
        *v29 = 0;
        v29 += 24;
        --v28;
      }

      while (v28);
      return result;
    }

LABEL_26:
    *a2 = -992;
    return result;
  }

  v3 = *v2 + 1;
  *v2 = v3;
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = v3 < v5;
  if (v3 < v5 && v3 >= v4)
  {
    v6 = v3 < v5 && v2[1] != *(a2 + 16);
  }

  if (v6 && v3 >= v4)
  {
    goto LABEL_26;
  }

  *a2 = -994;
  if (!v6)
  {
LABEL_28:
    *(a2 + 80) = *(result + 16);
    return result;
  }

  *(a2 + 80) = *(result + 8);
  v2[1] = *(a2 + 16);
  v10 = *(result + 44);
  v11 = *(result + 48);
  if (v10 == v11)
  {
    return result;
  }

  v12 = (v11 - 1);
  v13 = (v10 - 1);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = v12 - v13;
  if ((v12 - v13) < 2)
  {
    v17 = v13;
LABEL_39:
    v32 = v12 - v17;
    v33 = (v15 + 24 * v17 + 16);
    do
    {
      *(v33 - 2) = v14;
      *(v33 - 1) = v14;
      *v33 = 0;
      v33 += 24;
      --v32;
    }

    while (v32);
    return result;
  }

  v17 = (v16 & 0xFFFFFFFFFFFFFFFELL) + v13;
  v30 = v15 + 24 * v13 + 24;
  v31 = v16 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    *(v30 - 24) = v14;
    *(v30 - 16) = v14;
    *v30 = v14;
    *(v30 + 8) = v14;
    *(v30 - 8) = 0;
    *(v30 + 16) = 0;
    v30 += 48;
    v31 -= 2;
  }

  while (v31);
  if (v16 != (v16 & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_39;
  }

  return result;
}

uint64_t std::__loop<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    *(a3 + 80) = *(result + 16);
    return result;
  }

  *(a3 + 80) = *(result + 8);
  v3 = *(result + 44);
  *(*(a3 + 56) + 16 * *(result + 40) + 8) = *(a3 + 16);
  v4 = *(result + 48);
  if (v3 != v4)
  {
    v5 = (v4 - 1);
    v6 = (v3 - 1);
    v7 = *(a3 + 24);
    v8 = *(a3 + 32);
    v9 = v5 - v6;
    if ((v5 - v6) < 2)
    {
      v10 = v6;
LABEL_9:
      v13 = v5 - v10;
      v14 = (v8 + 24 * v10 + 16);
      do
      {
        *(v14 - 2) = v7;
        *(v14 - 1) = v7;
        *v14 = 0;
        v14 += 24;
        --v13;
      }

      while (v13);
      return result;
    }

    v10 = (v9 & 0xFFFFFFFFFFFFFFFELL) + v6;
    v11 = v8 + 24 * v6 + 24;
    v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v11 - 24) = v7;
      *(v11 - 16) = v7;
      *v11 = v7;
      *(v11 + 8) = v7;
      *(v11 - 8) = 0;
      *(v11 + 16) = 0;
      v11 += 48;
      v12 -= 2;
    }

    while (v12);
    if (v9 != (v9 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_9;
    }
  }

  return result;
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_2A1E35A08;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  *__p = &unk_2A1E35A08;
  v2 = __p[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  operator delete(__p);
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_2A1E35A08;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  *__p = &unk_2A1E35A08;
  v2 = __p[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  operator delete(__p);
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
  MEMORY[0x29C26E8B0](exception, 15);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = a2;
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 != v4)
  {
    return v6;
  }

  if (v4 == a3 || v4 + 1 == a3 || *v6 != 92)
  {
    return v4;
  }

  v7 = v4[1];
  if (v7 == 40)
  {
    v6 = v4 + 2;
  }

  if (v6 != v4)
  {
    if ((*(a1 + 24) & 2) != 0)
    {
      v11 = *(a1 + 28);
    }

    else
    {
      v9 = v6;
      v10 = operator new(0x18uLL);
      v6 = v9;
      v11 = *(a1 + 28) + 1;
      *(a1 + 28) = v11;
      v12 = *(a1 + 56);
      v13 = *(v12 + 8);
      *v10 = &unk_2A1E35918;
      v10[1] = v13;
      *(v10 + 4) = v11;
      *(v12 + 8) = v10;
      *(a1 + 56) = v10;
    }

    do
    {
      if (v6 == a3)
      {
        goto LABEL_31;
      }

      v14 = v6;
      v15 = *(a1 + 56);
      v16 = *(a1 + 28);
      v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(a1, v6, a3);
      if (v14 == v17)
      {
        break;
      }

      v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v17, a3, v15, (v16 + 1), (*(a1 + 28) + 1));
    }

    while (v14 != v6);
    if (v14 == a3)
    {
      v4 = a3;
    }

    else
    {
      if (v14 + 1 == a3 || *v14 != 92)
      {
        goto LABEL_31;
      }

      if (v14[1] == 41)
      {
        v4 = v14 + 2;
      }

      else
      {
        v4 = v14;
      }
    }

    if (v4 != v14)
    {
      if ((*(a1 + 24) & 2) == 0)
      {
        v18 = operator new(0x18uLL);
        v19 = *(a1 + 56);
        v20 = *(v19 + 8);
        *v18 = &unk_2A1E35960;
        v18[1] = v20;
        *(v18 + 4) = v11;
        *(v19 + 8) = v18;
        *(a1 + 56) = v18;
        return v4;
      }

      return v4;
    }

LABEL_31:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if ((v7 & 0xF8) != 0x30 && (v7 & 0xFE) != 0x38 || (v7 - 49) > 8)
  {
    return v4;
  }

  if ((v7 - 48) > *(a1 + 28))
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v7 - 48);
  return v4 + 2;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  if (this == a3)
  {
    return this;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low == 42)
  {
    v7 = this;
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
    return (&v7->__traits_.__loc_.__locale_ + 1);
  }

  if ((&this->__traits_.__loc_.__locale_ + 1) == a3 || locale_low != 92)
  {
    return this;
  }

  v9 = BYTE1(this->__traits_.__loc_.__locale_) == 123 ? (&this->__traits_.__loc_.__locale_ + 2) : this;
  if (v9 == this)
  {
    return this;
  }

  if (v9 == a3)
  {
    v10 = 0;
LABEL_20:
    v12 = a3;
    goto LABEL_21;
  }

  v11 = LOBYTE(v9->__traits_.__loc_.__locale_);
  if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
  {
    goto LABEL_54;
  }

  v10 = v11 - 48;
  v12 = &v9->__traits_.__loc_.__locale_ + 1;
  if ((&v9->__traits_.__loc_.__locale_ + 1) == a3)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = *v12;
    if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
    {
      break;
    }

    if (v10 >= 214748364)
    {
      goto LABEL_54;
    }

    v10 = v13 + 10 * v10 - 48;
    if (++v12 == a3)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  if (v12 == v9)
  {
    goto LABEL_54;
  }

  if (v12 == a3)
  {
    goto LABEL_55;
  }

  v14 = *v12;
  v15 = (v12 + 1);
  if (v14 == 44)
  {
    if (v15 == a3)
    {
      goto LABEL_55;
    }

    v16 = LOBYTE(v15->__traits_.__loc_.__locale_);
    if ((v16 & 0xF8) == 0x30 || (v16 & 0xFE) == 0x38)
    {
      v15 = (v12 + 2);
      if (v12 + 2 == a3)
      {
        goto LABEL_55;
      }

      v17 = v16 - 48;
      while (1)
      {
        v22 = LOBYTE(v15->__traits_.__loc_.__locale_);
        if ((v22 & 0xF8) != 0x30 && (v22 & 0xFE) != 0x38)
        {
          break;
        }

        if (v17 >= 214748364)
        {
          goto LABEL_54;
        }

        v17 = v22 + 10 * v17 - 48;
        v15 = (v15 + 1);
        if (v15 == a3)
        {
          v15 = a3;
          break;
        }
      }
    }

    else
    {
      v17 = -1;
    }

    if (v15 != a3)
    {
      if ((&v15->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v15->__traits_.__loc_.__locale_) != 92)
      {
        goto LABEL_55;
      }

      if (BYTE1(v15->__traits_.__loc_.__locale_) == 125)
      {
        a3 = (&v15->__traits_.__loc_.__locale_ + 2);
      }

      else
      {
        a3 = v15;
      }
    }

    if (a3 != v15)
    {
      if (v17 == -1)
      {
        v20 = v10;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v19 = a3;
        v21 = -1;
        goto LABEL_53;
      }

      if (v17 >= v10)
      {
        v19 = a3;
        v20 = v10;
        v21 = v17;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        goto LABEL_53;
      }

LABEL_54:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
    }

LABEL_55:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
  }

  if (v15 == a3 || v14 != 92)
  {
    goto LABEL_55;
  }

  v18 = (v12[1] == 125 ? v12 + 2 : v12);
  if (v12 == v18)
  {
    goto LABEL_55;
  }

  v19 = v18;
  v20 = v10;
  __mexp_begin = __mexp_begin;
  __mexp_end = __mexp_end;
  v21 = v10;
LABEL_53:
  std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v20, v21, a4, __mexp_begin, __mexp_end, 1);
  return v19;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  v4 = a2 + 1;
  v3 = *a2;
  if ((a2 + 1 != a3 || v3 != 36) && ((v3 - 46) > 0x2E || ((1 << (v3 - 46)) & 0x600000000001) == 0))
  {
    v18 = a2;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v3);
    return v18 + 1;
  }

  v6 = a2;
  if (v4 == a3)
  {
    goto LABEL_9;
  }

  v7 = *a2;
  if (v7 == 92)
  {
    v8 = *v4;
    if ((v8 - 36) > 0x3A || ((1 << (v8 - 36)) & 0x580000000000441) == 0)
    {
      return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
    }

    v10 = a1;
    v11 = a2;
    v12 = a3;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
    a2 = v11;
    a3 = v12;
    a1 = v10;
    v6 = v4 + 1;
    if (v4 + 1 == v11)
    {
LABEL_9:
      if (*v6 != 46)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

LABEL_19:
      v14 = a1;
      v15 = operator new(0x10uLL);
      end = v14->__end_;
      first = end->__first_;
      v15->__vftable = &unk_2A1E35B10;
      v15->__first_ = first;
      end->__first_ = v15;
      v14->__end_ = v15;
      return v6 + 1;
    }

    return v6;
  }

  v6 = a2;
  if (v7 == 46)
  {
    goto LABEL_19;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
}

void (__cdecl ***std::__match_any<char>::~__match_any(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__match_any<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<std::__wrap_iter<char const*>>(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        v11 = operator new(0x18uLL);
        v12 = (*(a1 + 24) & 0x5F0) == 1024;
        v13 = *(a1 + 56);
        v11[1] = *(v13 + 8);
        v14 = &unk_2A1E35600;
        break;
      case '(':
        if ((*(a1 + 24) & 2) != 0)
        {
          v16 = *(a1 + 28);
        }

        else
        {
          v15 = operator new(0x18uLL);
          v16 = *(a1 + 28) + 1;
          *(a1 + 28) = v16;
          v17 = *(a1 + 56);
          v18 = *(v17 + 8);
          *v15 = &unk_2A1E35918;
          v15[1] = v18;
          *(v15 + 4) = v16;
          *(v17 + 8) = v15;
          *(a1 + 56) = v15;
        }

        ++*(a1 + 36);
        v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v9 + 1, a3);
        if (v19 == a3 || (v9 = v19, *v19 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          v20 = operator new(0x18uLL);
          v21 = *(a1 + 56);
          v22 = *(v21 + 8);
          *v20 = &unk_2A1E35960;
          v20[1] = v22;
          *(v20 + 4) = v16;
          *(v21 + 8) = v20;
          *(a1 + 56) = v20;
        }

        --*(a1 + 36);
        goto LABEL_17;
      case '^':
        v11 = operator new(0x18uLL);
        v12 = (*(a1 + 24) & 0x5F0) == 1024;
        v13 = *(a1 + 56);
        v11[1] = *(v13 + 8);
        v14 = &unk_2A1E355B8;
        break;
      default:
        goto LABEL_18;
    }

    *v11 = v14;
    *(v11 + 16) = v12;
    *(v13 + 8) = v11;
    *(a1 + 56) = v11;
LABEL_17:
    ++v9;
  }

LABEL_18:
  if (v9 == a2)
  {
    return a2;
  }

  v23 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v9, a3, v6, (v7 + 1), v23);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(this, a2, a2);
    if (result != a2)
    {
      return result;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(this, a2, a3);
  }

  v7 = *a2;
  v8 = (v7 - 36);
  if (v8 > 0x3A)
  {
    goto LABEL_13;
  }

  if (((1 << (v7 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_6;
  }

  if (v8 == 5)
  {
    if (!this->__open_count_)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, 41);
      return a2 + 1;
    }
  }

  else
  {
LABEL_13:
    if ((v7 - 123) >= 2)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v7);
      return a2 + 1;
    }
  }

LABEL_6:
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(this, a2, a3);
  if (result == a2)
  {
    if (*result == 46)
    {
      v9 = result;
      v10 = operator new(0x10uLL);
      end = this->__end_;
      first = end->__first_;
      v10->__vftable = &unk_2A1E35B10;
      v10->__first_ = first;
      end->__first_ = v10;
      this->__end_ = v10;
      return v9 + 1;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(this, a2, a3);
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3 || a2 + 1 == a3 || *a2 != 92)
  {
    return v3;
  }

  v4 = a2[1];
  v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x5800000080004F1) == 0;
  if (!v5 || (v4 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
    v3 += 2;
    return v3;
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v4))
  {
    v3 += 2;
  }

  return v3;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, std::sub_match<const char *> *a2, std::sub_match<const char *> *a3, std::vector<std::csub_match> *this, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  this[1].__begin_ = a3;
  v11 = &this[1];
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  std::vector<std::sub_match<char const*>>::assign(this, (v10 + 1), &this[1]);
  this[2].__begin_ = a2;
  this[2].__end_ = a2;
  LOBYTE(this[2].__end_cap_.__value_) = 0;
  *&this[3].__begin_ = v11->std::pair<const char *, const char *>;
  LOBYTE(this[3].__end_cap_.__value_) = this[1].__end_cap_.__value_;
  if ((v9 & 0x800) == 0)
  {
    this[4].__end_ = a2;
  }

  LOBYTE(this[4].__begin_) = 1;
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
    {
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  if (*(a1 + 28))
  {
    if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
    {
      goto LABEL_28;
    }

LABEL_13:
    if (a2 != a3 && (v9 & 0x40) == 0)
    {
      for (i = &a2->first + 1; i != a3; ++i)
      {
        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
        if ((*(a1 + 24) & 0x1F0) != 0)
        {
          if (*(a1 + 28))
          {
            if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(a1, i, a3, this, v9 | 0x80u, 0))
            {
              goto LABEL_28;
            }
          }

          else if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(a1, i, a3, this, v9 | 0x80u, 0))
          {
            goto LABEL_28;
          }
        }

        else if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, i, a3, this, v9 | 0x80u, 0))
        {
          goto LABEL_28;
        }

        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
      }

      std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
      if ((*(a1 + 24) & 0x1F0) != 0)
      {
        if (*(a1 + 28))
        {
          if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(a1, i, a3, this, v9 | 0x80u, 0))
          {
            goto LABEL_28;
          }
        }

        else if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(a1, i, a3, this, v9 | 0x80u, 0))
        {
          goto LABEL_28;
        }
      }

      else if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, i, a3, this, v9 | 0x80u, 0))
      {
        goto LABEL_28;
      }
    }

    result = 0;
    this->__end_ = this->__begin_;
    return result;
  }

  if ((std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_28:
  if (this->__end_ == this->__begin_)
  {
    begin = v11;
  }

  else
  {
    begin = this->__begin_;
  }

  first = begin->first;
  this[2].__end_ = begin->first;
  LOBYTE(this[2].__end_cap_.__value_) = this[2].__begin_ != first;
  second = begin->second;
  this[3].__begin_ = second;
  LOBYTE(this[3].__end_cap_.__value_) = second != this[3].__end_;
  return 1;
}

void std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(std::vector<std::ssub_match> *this, uint64_t a2, std::sub_match<std::__wrap_iter<const char *>> *a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  v11 = a4[1] - *a4;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
  begin = this->__begin_;
  end = this->__end_;
  v15 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
  if (v12 <= v15)
  {
    if (v12 < v15)
    {
      end = (begin + v11);
      this->__end_ = (begin + v11);
    }
  }

  else
  {
    std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(this, v12 - v15);
    begin = this->__begin_;
    end = this->__end_;
  }

  if (end == begin)
  {
    v20 = a2 - v10;
  }

  else
  {
    v16 = 0;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    v18 = *a4;
    v19 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
    v20 = a2 - v10;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    p_matched = &begin->matched;
    do
    {
      if (v19 <= v16)
      {
        v22 = a4 + 3;
      }

      else
      {
        v22 = v18;
      }

      *(p_matched - 2) = v20 + *v22;
      *(p_matched - 1) = v20 + v22[1];
      *p_matched = *(v22 + 16);
      p_matched += 24;
      ++v16;
      v18 += 3;
    }

    while (v17 != v16);
  }

  this[1].__begin_ = a3;
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  v23 = (v20 + a4[6]);
  this[2].__begin_ = v23;
  this[2].__end_ = (v20 + a4[7]);
  LOBYTE(this[2].__end_cap_.__value_) = *(a4 + 64);
  this[3].__begin_ = (v20 + a4[9]);
  this[3].__end_ = (v20 + a4[10]);
  LOBYTE(this[3].__end_cap_.__value_) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    this[4].__end_ = v23;
  }

  LOBYTE(this[4].__begin_) = *(a4 + 96);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_91;
  }

  *v79 = 0;
  memset(&v79[8], 0, 85);
  std::deque<std::__state<char>>::__add_back_capacity(&v80);
  v12 = *(*(&v80 + 1) + 8 * ((v82.i64[0] + v82.i64[1]) / 0x2AuLL)) + 96 * ((v82.i64[0] + v82.i64[1]) % 0x2AuLL);
  v13 = *&v79[16];
  *v12 = *v79;
  *(v12 + 16) = v13;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = 0;
  memset(&v79[32], 0, 24);
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  memset(&v79[56], 0, 24);
  v14 = *&v79[80];
  *(v12 + 85) = *&v79[85];
  *(v12 + 80) = v14;
  v16 = v82.i64[1];
  v15 = v82.i64[0];
  v17 = ++v82.i64[1];
  v18 = *(&v80 + 1);
  v19 = *(a1 + 32);
  v20 = *(*(&v80 + 1) + 8 * ((v82.i64[0] + v16) / 0x2AuLL)) + 96 * ((v82.i64[0] + v16) % 0x2AuLL);
  *v20 = 0;
  *(v20 + 8) = a2;
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = *(v20 + 56);
  v22 = (*(v20 + 64) - v21) >> 4;
  v74 = a4;
  if (v19 <= v22)
  {
    if (v19 < v22)
    {
      *(v20 + 64) = v21 + 16 * v19;
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append((v20 + 56), v19 - v22);
    v17 = v82.i64[1];
    v15 = v82.i64[0];
    v18 = *(&v80 + 1);
  }

  v75 = a3;
  v76 = 0;
  v77 = 0;
  v23 = 0;
  v24 = *(v18 + 8 * ((v15 + v17 - 1) / 0x2AuLL)) + 96 * ((v15 + v17 - 1) % 0x2AuLL);
  *(v24 + 80) = v6;
  *(v24 + 92) = a6;
  v25 = a3 - a2;
  *(v24 + 88) = a5;
  do
  {
    if ((++v23 & 0xFFF) == 0 && (v23 >> 12) >= v25)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v27 = *(*(&v80 + 1) + 8 * ((v17 + v82.i64[0] - 1) / 0x2AuLL)) + 96 * ((v17 + v82.i64[0] - 1) % 0x2AuLL);
    v28 = *(v27 + 80);
    if (v28)
    {
      (*(*v28 + 16))(v28, v27);
    }

    v29 = *v27;
    if (*v27 <= -995)
    {
      if (v29 != -1000)
      {
        if (v29 == -999)
        {
          goto LABEL_9;
        }

        if (v29 != -995)
        {
LABEL_105:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        v30 = v82.i64[0];
        if (!v82.i64[0])
        {
          std::deque<std::__state<char>>::__add_front_capacity(&v80);
          v30 = v82.i64[0];
        }

        v31 = (*(&v80 + 1) + 8 * (v30 / 0x2A));
        v32 = *v31 + 96 * (v30 % 0x2A);
        if (v81 == *(&v80 + 1))
        {
          v32 = 0;
        }

        if (v32 == *v31)
        {
          v32 = *(v31 - 1) + 4032;
        }

        v33 = *(v27 + 16);
        *(v32 - 96) = *v27;
        *(v32 - 80) = v33;
        *(v32 - 56) = 0;
        *(v32 - 48) = 0;
        *(v32 - 64) = 0;
        *(v32 - 64) = *(v27 + 32);
        *(v32 - 48) = *(v27 + 48);
        *(v27 + 32) = 0;
        *(v27 + 40) = 0;
        *(v27 + 48) = 0;
        *(v32 - 40) = 0;
        *(v32 - 32) = 0;
        *(v32 - 24) = 0;
        *(v32 - 40) = *(v27 + 56);
        *(v32 - 24) = *(v27 + 72);
        *(v27 + 56) = 0;
        *(v27 + 64) = 0;
        *(v27 + 72) = 0;
        v34 = *(v27 + 80);
        *(v32 - 11) = *(v27 + 85);
        *(v32 - 16) = v34;
        v35 = vdupq_laneq_s64(v82, 1);
        v82 = vaddq_s64(v82, xmmword_29742FB20);
        v35.i64[0] = vaddq_s64(v35, v82).u64[0];
        v36 = (*(*(&v80 + 1) + 8 * (v35.i64[0] / 0x2AuLL)) + 96 * (v35.i64[0] % 0x2AuLL));
        v37 = v36[7];
        if (!v37)
        {
          goto LABEL_39;
        }

LABEL_38:
        v36[8] = v37;
        operator delete(v37);
LABEL_39:
        v39 = v36[4];
        if (v39)
        {
          v36[5] = v39;
          operator delete(v39);
        }

        v40 = 42 * ((v81 - *(&v80 + 1)) >> 3) - 1;
        v41 = v82;
        --v82.i64[1];
        if (v81 == *(&v80 + 1))
        {
          v40 = 0;
        }

        if ((v40 - (v41.i64[1] + v41.i64[0]) + 1) >= 0x54)
        {
          operator delete(*(v81 - 8));
          *&v81 = v81 - 8;
        }

        goto LABEL_9;
      }

      v38 = *(v27 + 16);
      if ((a5 & 0x20) != 0 && v38 == a2 || (a5 & 0x1000) != 0 && v38 != v75)
      {
        goto LABEL_37;
      }

      v49 = v38 - *(v27 + 8);
      v50 = v76;
      if (v76 <= v49)
      {
        v50 = v49;
      }

      if (v77)
      {
        v49 = v50;
      }

      if (v49 == v25)
      {
        v51 = *(&v80 + 1);
        v52 = v81;
        if (v81 == *(&v80 + 1))
        {
          v82.i64[1] = 0;
          v64 = 0;
        }

        else
        {
          v53 = (*(&v80 + 1) + 8 * (v82.i64[0] / 0x2AuLL));
          v54 = (*v53 + 96 * (v82.i64[0] % 0x2AuLL));
          v55 = *(*(&v80 + 1) + 8 * ((v82.i64[1] + v82.i64[0]) / 0x2AuLL)) + 96 * ((v82.i64[1] + v82.i64[0]) % 0x2AuLL);
          if (v54 != v55)
          {
            do
            {
              v56 = v54[7];
              if (v56)
              {
                v54[8] = v56;
                operator delete(v56);
              }

              v57 = v54[4];
              if (v57)
              {
                v54[5] = v57;
                operator delete(v57);
              }

              v54 += 12;
              if ((v54 - *v53) == 4032)
              {
                v58 = v53[1];
                ++v53;
                v54 = v58;
              }
            }

            while (v54 != v55);
            v51 = *(&v80 + 1);
            v52 = v81;
          }

          v82.i64[1] = 0;
          v64 = (v52 - v51) >> 3;
          if (v64 >= 3)
          {
            do
            {
              operator delete(*v51);
              v51 = (*(&v80 + 1) + 8);
              *(&v80 + 1) = v51;
              v64 = (v81 - v51) >> 3;
            }

            while (v64 > 2);
          }
        }

        if (v64 == 1)
        {
          v65 = 21;
LABEL_86:
          v82.i64[0] = v65;
        }

        else if (v64 == 2)
        {
          v65 = 42;
          goto LABEL_86;
        }

        v77 = 1;
        v76 = v25;
        goto LABEL_9;
      }

      v76 = v49;
      v59 = (*(*(&v80 + 1) + 8 * ((v82.i64[1] + v82.i64[0] - 1) / 0x2AuLL)) + 96 * ((v82.i64[1] + v82.i64[0] - 1) % 0x2AuLL));
      v60 = v59[7];
      if (v60)
      {
        v59[8] = v60;
        operator delete(v60);
      }

      v61 = v59[4];
      if (v61)
      {
        v59[5] = v61;
        operator delete(v61);
      }

      v62 = 42 * ((v81 - *(&v80 + 1)) >> 3) - 1;
      v63 = v82;
      --v82.i64[1];
      if (v81 == *(&v80 + 1))
      {
        v62 = 0;
      }

      if ((v62 - (v63.i64[1] + v63.i64[0]) + 1) >= 0x54)
      {
        operator delete(*(v81 - 8));
        *&v81 = v81 - 8;
      }

      v77 = 1;
    }

    else
    {
      if (v29 <= -993)
      {
        if (v29 == -994)
        {
          goto LABEL_9;
        }

        if (v29 != -993)
        {
          goto LABEL_105;
        }

LABEL_37:
        v36 = (*(*(&v80 + 1) + 8 * ((v82.i64[1] + v82.i64[0] - 1) / 0x2AuLL)) + 96 * ((v82.i64[1] + v82.i64[0] - 1) % 0x2AuLL));
        v37 = v36[7];
        if (v37)
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (v29 == -992)
      {
        *&v42 = 0xAAAAAAAAAAAAAAAALL;
        *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v79[64] = v42;
        *&v79[80] = v42;
        *&v79[32] = v42;
        *&v79[48] = v42;
        *v79 = v42;
        *&v79[16] = v42;
        std::__state<char>::__state(v79, v27);
        (*(**(v27 + 80) + 24))(*(v27 + 80), 1, v27);
        (*(**&v79[80] + 24))(*&v79[80], 0, v79);
        v43 = *(&v80 + 1);
        if (v81 == *(&v80 + 1))
        {
          v44 = 0;
        }

        else
        {
          v44 = 42 * ((v81 - *(&v80 + 1)) >> 3) - 1;
        }

        v45 = v82.i64[1] + v82.i64[0];
        if (v44 == v82.i64[1] + v82.i64[0])
        {
          std::deque<std::__state<char>>::__add_back_capacity(&v80);
          v43 = *(&v80 + 1);
          v45 = v82.i64[1] + v82.i64[0];
        }

        v46 = *(v43 + 8 * (v45 / 0x2A)) + 96 * (v45 % 0x2A);
        v47 = *&v79[16];
        *v46 = *v79;
        *(v46 + 16) = v47;
        *(v46 + 40) = 0;
        *(v46 + 48) = 0;
        *(v46 + 32) = 0;
        *(v46 + 32) = *&v79[32];
        *(v46 + 48) = *&v79[48];
        memset(&v79[32], 0, 24);
        *(v46 + 56) = 0;
        *(v46 + 64) = 0;
        *(v46 + 72) = 0;
        *(v46 + 56) = *&v79[56];
        *(v46 + 72) = *&v79[72];
        memset(&v79[56], 0, 24);
        v48 = *&v79[80];
        *(v46 + 85) = *&v79[85];
        *(v46 + 80) = v48;
        ++v82.i64[1];
        if (*&v79[56])
        {
          *&v79[64] = *&v79[56];
          operator delete(*&v79[56]);
        }

        if (*&v79[32])
        {
          *&v79[40] = *&v79[32];
          operator delete(*&v79[32]);
        }
      }

      else if (v29 != -991)
      {
        goto LABEL_105;
      }
    }

LABEL_9:
    v17 = v82.i64[1];
  }

  while (v82.i64[1]);
  if (v77)
  {
    v66 = *v74;
    *v66 = a2;
    *(v66 + 8) = a2 + v76;
    v67 = 1;
    *(v66 + 16) = 1;
    v68 = *(&v80 + 1);
    v69 = v81;
    v82.i64[1] = 0;
    v70 = (v81 - *(&v80 + 1)) >> 3;
    if (v70 < 3)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

LABEL_91:
  v67 = 0;
  v68 = *(&v80 + 1);
  v69 = v81;
  v82.i64[1] = 0;
  v70 = (v81 - *(&v80 + 1)) >> 3;
  if (v70 < 3)
  {
    goto LABEL_93;
  }

  do
  {
LABEL_92:
    operator delete(*v68);
    v69 = v81;
    v68 = (*(&v80 + 1) + 8);
    *(&v80 + 1) = v68;
    v70 = (v81 - v68) >> 3;
  }

  while (v70 > 2);
LABEL_93:
  if (v70 == 1)
  {
    v71 = 21;
LABEL_97:
    v82.i64[0] = v71;
  }

  else if (v70 == 2)
  {
    v71 = 42;
    goto LABEL_97;
  }

  if (v68 != v69)
  {
    do
    {
      v72 = *v68++;
      operator delete(v72);
    }

    while (v68 != v69);
    if (v81 != *(&v80 + 1))
    {
      *&v81 = v81 + ((*(&v80 + 1) - v81 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v80)
  {
    operator delete(v80);
  }

  return v67;
}

void sub_2972C7764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__state<char>::~__state(va);
  std::deque<std::__state<char>>::~deque[abi:ne200100]((v9 - 144));
  _Unwind_Resume(a1);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v68 = 0;
  v69 = 0;
  v70 = 0;
  *&v67[36] = -1431655766;
  *v65 = 0xAAAAAAAA00000000;
  memset(&v65[8], 0, 32);
  *v66 = 0u;
  memset(v67, 0, 36);
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_69:
    v53 = 0;
    v54 = *v67;
    if (!*v67)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  __x.second = a3;
  *&__x.matched = 0xAAAAAAAAAAAAAA00;
  __x.first = a3;
  *v63 = 0;
  memset(&v63[8], 0, 85);
  v69 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v68, v63);
  if (*&v63[56])
  {
    *&v63[64] = *&v63[56];
    operator delete(*&v63[56]);
  }

  if (*&v63[32])
  {
    *&v63[40] = *&v63[32];
    operator delete(*&v63[32]);
  }

  v13 = v69;
  *(v69 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v14 = *(v13 - 8);
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 7) = v14 + 24 * v15;
    }
  }

  else
  {
    std::vector<std::sub_match<char const*>>::__append((v13 - 4), v15 - v16, &__x);
    v13 = v69;
  }

  v17 = *(v13 - 5);
  v18 = *(a1 + 32);
  v19 = (*(v13 - 4) - v17) >> 4;
  v61 = a4;
  if (v18 <= v19)
  {
    if (v18 < v19)
    {
      *(v13 - 4) = v17 + 16 * v18;
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append((v13 - 40), v18 - v19);
    v13 = v69;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v62 = a3;
  v23 = (a3 - a2);
  *(v13 - 2) = v6;
  *(v13 - 2) = a5;
  *(v13 - 4) = a6;
  do
  {
    v24 = (++v22 & 0xFFF) != 0 || (v22 >> 12) < v23;
    if (!v24)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v26 = v13 - 1;
    v25 = *(v13 - 2);
    v27 = v13 - 6;
    if (v25)
    {
      (*(*v25 + 16))(v25, v13 - 6);
    }

    v28 = *v27;
    if (*v27 <= -994)
    {
      if ((v28 + 995) < 2)
      {
        goto LABEL_16;
      }

      if (v28 != -1000)
      {
LABEL_84:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }

      v29 = *(v13 - 10);
      if ((a5 & 0x20) != 0 && v29 == a2 || (a5 & 0x1000) != 0 && v29 != v62)
      {
LABEL_34:
        v30 = v69;
        v31 = *(v69 - 5);
        if (v31)
        {
          *(v69 - 4) = v31;
          operator delete(v31);
        }

        v32 = *(v30 - 8);
        if (v32)
        {
          *(v30 - 7) = v32;
          operator delete(v32);
        }

        v69 = v30 - 6;
        goto LABEL_16;
      }

      v37 = v20;
      v38 = &v29[-*(v13 - 11)];
      if ((v21 & (v37 >= v38)) == 0)
      {
        v39 = *(v13 - 5);
        *v65 = *v27;
        *&v65[16] = v39;
        if (v65 != v27)
        {
          std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v65[32], *(v13 - 8), *(v13 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - *(v13 - 8)) >> 3));
          std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v67, *(v13 - 5), *(v13 - 4), (*(v13 - 4) - *(v13 - 5)) >> 4);
        }

        v40 = *v26;
        *&v67[29] = *(v13 - 11);
        *&v67[24] = v40;
        v37 = v38;
      }

      v41 = v69;
      if (v37 == v23)
      {
        v42 = v68;
        while (v41 != v42)
        {
          v43 = *(v41 - 5);
          if (v43)
          {
            *(v41 - 4) = v43;
            operator delete(v43);
          }

          v44 = *(v41 - 8);
          if (v44)
          {
            *(v41 - 7) = v44;
            operator delete(v44);
          }

          v41 -= 6;
        }

        v69 = v42;
        v21 = 1;
        v20 = v23;
      }

      else
      {
        v20 = v37;
        v45 = *(v69 - 5);
        if (v45)
        {
          *(v69 - 4) = v45;
          operator delete(v45);
        }

        v46 = *(v41 - 8);
        if (v46)
        {
          *(v41 - 7) = v46;
          operator delete(v46);
        }

        v69 = v41 - 6;
        v21 = 1;
      }
    }

    else
    {
      switch(v28)
      {
        case -993:
          goto LABEL_34;
        case -992:
          *&v33 = 0xAAAAAAAAAAAAAAAALL;
          *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v63[64] = v33;
          *&v63[80] = v33;
          *&v63[32] = v33;
          *&v63[48] = v33;
          *v63 = v33;
          *&v63[16] = v33;
          std::__state<char>::__state(v63, v13 - 6);
          (*(**v26 + 24))(*v26, 1, v13 - 6);
          (*(**&v63[80] + 24))(*&v63[80], 0, v63);
          v34 = v69;
          if (v69 >= v70)
          {
            v69 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v68, v63);
            if (*&v63[56])
            {
              *&v63[64] = *&v63[56];
              operator delete(*&v63[56]);
            }
          }

          else
          {
            v35 = *&v63[16];
            *v69 = *v63;
            v34[1] = v35;
            *(v34 + 6) = 0;
            *(v34 + 7) = 0;
            *(v34 + 4) = 0;
            *(v34 + 5) = 0;
            v34[2] = *&v63[32];
            *(v34 + 6) = *&v63[48];
            *&v63[32] = 0;
            *&v63[40] = 0;
            *(v34 + 8) = 0;
            *(v34 + 9) = 0;
            *(v34 + 56) = *&v63[56];
            *(v34 + 9) = *&v63[72];
            memset(&v63[48], 0, 32);
            v36 = *&v63[80];
            *(v34 + 85) = *&v63[85];
            *(v34 + 10) = v36;
            v69 = v34 + 6;
          }

          if (*&v63[32])
          {
            *&v63[40] = *&v63[32];
            operator delete(*&v63[32]);
          }

          break;
        case -991:
          break;
        default:
          goto LABEL_84;
      }
    }

LABEL_16:
    v13 = v69;
  }

  while (v68 != v69);
  if ((v21 & 1) == 0)
  {
    goto LABEL_69;
  }

  v47 = *v61;
  *v47 = a2;
  *(v47 + 8) = &v20[a2];
  *(v47 + 16) = 1;
  if (v66[0] != *&v65[32])
  {
    v48 = 0xAAAAAAAAAAAAAAABLL * ((v66[0] - *&v65[32]) >> 3);
    v49 = (*&v65[32] + 16);
    v50 = 1;
    do
    {
      v51 = v47 + 24 * v50;
      *v51 = *(v49 - 1);
      v52 = *v49;
      v49 += 24;
      *(v51 + 16) = v52;
      v24 = v48 > v50++;
    }

    while (v24);
  }

  v53 = 1;
  v54 = *v67;
  if (*v67)
  {
LABEL_70:
    *&v67[8] = v54;
    operator delete(v54);
  }

LABEL_71:
  if (*&v65[32])
  {
    v66[0] = *&v65[32];
    operator delete(*&v65[32]);
  }

  v55 = v68;
  if (v68)
  {
    v56 = v69;
    v57 = v68;
    if (v69 != v68)
    {
      do
      {
        v58 = *(v56 - 5);
        if (v58)
        {
          *(v56 - 4) = v58;
          operator delete(v58);
        }

        v59 = *(v56 - 8);
        if (v59)
        {
          *(v56 - 7) = v59;
          operator delete(v59);
        }

        v56 -= 6;
      }

      while (v56 != v55);
      v57 = v68;
    }

    v69 = v55;
    operator delete(v57);
  }

  return v53;
}

void sub_2972C7DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__state<char>::~__state(&a27);
  std::vector<std::__state<char>>::~vector[abi:ne200100]((v27 - 120));
  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::clear(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v11 = 0;
  }

  else
  {
    v4 = a1[4];
    v5 = &v2[v4 / 0x2A];
    v6 = *v5 + 96 * (v4 % 0x2A);
    v7 = v2[(a1[5] + v4) / 0x2A] + 96 * ((a1[5] + v4) % 0x2A);
    if (v6 != v7)
    {
      do
      {
        v8 = *(v6 + 7);
        if (v8)
        {
          *(v6 + 8) = v8;
          operator delete(v8);
        }

        v9 = *(v6 + 4);
        if (v9)
        {
          *(v6 + 5) = v9;
          operator delete(v9);
        }

        v6 += 96;
        if (v6 - *v5 == 4032)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
        }
      }

      while (v6 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }

    a1[5] = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v12 = a1[2];
        v2 = (a1[1] + 8);
        a1[1] = v2;
        v11 = (v12 - v2) >> 3;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v13 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      return;
    }

    v13 = 42;
  }

  a1[4] = v13;
}

void std::deque<std::__state<char>>::__add_back_capacity(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 >= 0x2A;
  v4 = v2 - 42;
  if (v3)
  {
    *(a1 + 32) = v4;
    goto LABEL_4;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9 = v7 - v8;
  v10 = v6 - *a1;
  if (v7 - v8 < v10)
  {
    if (v6 != v7)
    {
      v44 = operator new(0xFC0uLL);
      std::__split_buffer<lcdm::SubTLV *>::emplace_back<lcdm::SubTLV *&>(a1, &v44);
      return;
    }

    v44 = operator new(0xFC0uLL);
    std::__split_buffer<lcdm::SubTLV *>::emplace_front<lcdm::SubTLV *>(a1, &v44);
LABEL_4:
    v5 = *(a1 + 8);
    v44 = *v5;
    *(a1 + 8) = v5 + 1;
    std::__split_buffer<lcdm::SubTLV *>::emplace_back<lcdm::SubTLV *&>(a1, &v44);
    return;
  }

  v11 = v10 >> 2;
  if (v6 == *a1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = 8 * v12;
  v14 = operator new(8 * v12);
  v15 = operator new(0xFC0uLL);
  v16 = v15;
  v17 = &v14[v9];
  v18 = &v14[v13];
  if (v9 != v13)
  {
    goto LABEL_15;
  }

  if (v9 < 1)
  {
    if (v7 == v8)
    {
      v22 = 1;
    }

    else
    {
      v22 = v9 >> 2;
    }

    if (v22 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = operator new(8 * v22);
    v18 = &v17[8 * v22];
    operator delete(v14);
    v23 = *(a1 + 8);
    v7 = *(a1 + 16);
    v14 = v17;
    *v17 = v16;
    v19 = v17 + 8;
    if (v7 == v23)
    {
      goto LABEL_16;
    }

LABEL_31:
    while (v17 != v14)
    {
      v24 = v17;
LABEL_30:
      v25 = *(v7 - 8);
      v7 -= 8;
      *(v24 - 1) = v25;
      v20 = v24 - 8;
      v17 = v20;
      if (v7 == *(a1 + 8))
      {
        goto LABEL_17;
      }
    }

    if (v19 < v18)
    {
      v24 = &v14[8 * ((((v18 - v19) >> 3) + 1 + ((((v18 - v19) >> 3) + 1) >> 63)) >> 1)];
      v27 = v19 - v14;
      v26 = v19 == v14;
      v19 += 8 * ((((v18 - v19) >> 3) + 1 + ((((v18 - v19) >> 3) + 1) >> 63)) >> 1);
      if (!v26)
      {
        memmove(v24, v17, v27);
      }

      goto LABEL_30;
    }

    if (v18 == v14)
    {
      v28 = 1;
    }

    else
    {
      v28 = (v18 - v14) >> 2;
    }

    if (v28 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v29 = operator new(8 * v28);
    v30 = v29;
    v31 = (v28 + 3) >> 2;
    v24 = &v29[8 * v31];
    v32 = v19 - v14;
    v26 = v19 == v14;
    v19 = v24;
    if (!v26)
    {
      v19 = &v24[v32];
      v33 = v32 - 8;
      if (v33 >= 0x18 && (v34 = 8 * v31, (&v29[8 * v31] - v17) >= 0x20))
      {
        v38 = (v33 >> 3) + 1;
        v39 = 8 * (v38 & 0x3FFFFFFFFFFFFFFCLL);
        v35 = &v24[v39];
        v36 = &v17[v39];
        v40 = (v17 + 16);
        v41 = &v29[v34 + 16];
        v42 = v38 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v43 = *v40;
          *(v41 - 1) = *(v40 - 1);
          *v41 = v43;
          v40 += 2;
          v41 += 32;
          v42 -= 4;
        }

        while (v42);
        if (v38 == (v38 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v35 = &v29[8 * v31];
        v36 = v17;
      }

      do
      {
        v37 = *v36;
        v36 += 8;
        *v35 = v37;
        v35 += 8;
      }

      while (v35 != v19);
    }

LABEL_44:
    v18 = &v29[8 * v28];
    operator delete(v14);
    v14 = v30;
    goto LABEL_30;
  }

  v17 -= ((v9 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_15:
  *v17 = v15;
  v19 = v17 + 8;
  if (v7 != v8)
  {
    goto LABEL_31;
  }

LABEL_16:
  v20 = v17;
LABEL_17:
  v21 = *a1;
  *a1 = v14;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19;
  *(a1 + 24) = v18;
  if (v21)
  {

    operator delete(v21);
  }
}

void sub_2972C8268(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::__add_front_capacity(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) >= 0x2A)
  {
    *(a1 + 32) = v5 + 42;
    v41 = *(v2 - 1);
    *(a1 + 16) = v2 - 8;
    std::__split_buffer<lcdm::SubTLV *>::emplace_front<lcdm::SubTLV *>(a1, &v41);
    return;
  }

  v6 = *(a1 + 24);
  v7 = *a1;
  v8 = &v6[-*a1];
  if (v2 - v3 < v8)
  {
    if (v3 == v7)
    {
      v41 = operator new(0xFC0uLL);
      std::__split_buffer<lcdm::SubTLV *>::emplace_back<lcdm::SubTLV *&>(a1, &v41);
      v37 = *(a1 + 16);
      v41 = *(v37 - 8);
      *(a1 + 16) = v37 - 8;
      std::__split_buffer<lcdm::SubTLV *>::emplace_front<lcdm::SubTLV *>(a1, &v41);
      if (*(a1 + 16) - *(a1 + 8) == 8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v41 = operator new(0xFC0uLL);
      std::__split_buffer<lcdm::SubTLV *>::emplace_front<lcdm::SubTLV *>(a1, &v41);
      if (*(a1 + 16) - *(a1 + 8) == 8)
      {
LABEL_9:
        v9 = 21;
LABEL_42:
        *(a1 + 32) = v9;
        return;
      }
    }

    v9 = *(a1 + 32) + 42;
    goto LABEL_42;
  }

  if (v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 >> 2;
  }

  if (v10 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = operator new(8 * v10);
  v12 = operator new(0xFC0uLL);
  v13 = v12;
  if (v10)
  {
    v14 = &v11[8 * v10];
    *v11 = v12;
    v15 = v11 + 8;
    if (v3 != v2)
    {
LABEL_16:
      v16 = v11;
      while (1)
      {
        if (v15 == v14)
        {
          if (v16 <= v11)
          {
            if (v15 == v11)
            {
              v20 = 1;
            }

            else
            {
              v20 = (v15 - v11) >> 2;
            }

            if (v20 >> 61)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v21 = operator new(8 * v20);
            v22 = v21;
            v23 = v20 >> 2;
            v17 = &v21[8 * (v20 >> 2)];
            v25 = v15 - v16;
            v24 = v15 == v16;
            v15 = v17;
            if (!v24)
            {
              v15 = &v17[v25];
              v26 = v25 - 8;
              if (v26 < 0x18 || (v27 = 8 * v23, (&v21[8 * v23] - v16) < 0x20))
              {
                v28 = &v21[8 * (v20 >> 2)];
                v29 = v16;
                goto LABEL_32;
              }

              v31 = (v26 >> 3) + 1;
              v32 = 8 * (v31 & 0x3FFFFFFFFFFFFFFCLL);
              v28 = &v17[v32];
              v29 = &v16[v32];
              v33 = (v16 + 16);
              v34 = &v21[v27 + 16];
              v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v36 = *v33;
                *(v34 - 1) = *(v33 - 1);
                *v34 = v36;
                v33 += 2;
                v34 += 32;
                v35 -= 4;
              }

              while (v35);
              if (v31 != (v31 & 0x3FFFFFFFFFFFFFFCLL))
              {
                do
                {
LABEL_32:
                  v30 = *v29;
                  v29 += 8;
                  *v28 = v30;
                  v28 += 8;
                }

                while (v28 != v15);
              }
            }

            v14 = &v21[8 * v20];
            if (v11)
            {
              operator delete(v11);
            }

            v11 = v22;
            goto LABEL_18;
          }

          v19 = (((v16 - v11) >> 3) + 1 + ((((v16 - v11) >> 3) + 1) >> 63)) >> 1;
          v17 = &v16[-8 * v19];
          if (v15 != v16)
          {
            memmove(&v16[-8 * v19], v16, v15 - v16);
          }

          v15 = &v17[v15 - v16];
        }

        else
        {
          v17 = v16;
        }

LABEL_18:
        v18 = *v3;
        v3 += 8;
        *v15 = v18;
        v15 += 8;
        v16 = v17;
        if (v3 == *(a1 + 16))
        {
          goto LABEL_45;
        }
      }
    }
  }

  else
  {
    v38 = operator new(8uLL);
    v14 = v38 + 8;
    operator delete(v11);
    v3 = *(a1 + 8);
    v39 = *(a1 + 16);
    v11 = v38;
    *v38 = v13;
    v15 = v38 + 8;
    if (v3 != v39)
    {
      goto LABEL_16;
    }
  }

  v17 = v11;
LABEL_45:
  v40 = *a1;
  *a1 = v11;
  *(a1 + 8) = v17;
  *(a1 + 16) = v15;
  *(a1 + 24) = v14;
  if (v15 - v17 == 8)
  {
    *(a1 + 32) = 21;
    if (!v40)
    {
      return;
    }
  }

  else
  {
    *(a1 + 32) += 42;
    if (!v40)
    {
      return;
    }
  }

  operator delete(v40);
}

void sub_2972C85F0(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void **std::deque<std::__state<char>>::~deque[abi:ne200100](void **a1)
{
  std::deque<std::__state<char>>::clear(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(char **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) >= a4)
  {
    v16 = a1[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - result) >> 3) >= a4)
    {
      while (v5 != a3)
      {
        *result = *v5;
        result[16] = v5[16];
        v5 += 24;
        result += 24;
      }

      a1[1] = result;
    }

    else
    {
      v17 = &a2[v16 - result];
      if (v16 != result)
      {
        do
        {
          *result = *v5;
          result[16] = v5[16];
          v5 += 24;
          result += 24;
        }

        while (v5 != v17);
      }

      if (v17 == a3)
      {
        a1[1] = v16;
      }

      else
      {
        v18 = v16;
        do
        {
          v19 = *v17;
          *(v16 + 2) = *(v17 + 2);
          *v16 = v19;
          v16 += 24;
          v17 += 24;
          v18 += 24;
        }

        while (v17 != a3);
        a1[1] = v18;
      }
    }
  }

  else
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_25;
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= a4)
    {
      v11 = a4;
    }

    v12 = v10 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v11;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_25:
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = 24 * v12;
    result = operator new(24 * v12);
    v14 = result;
    *a1 = result;
    a1[1] = result;
    a1[2] = &result[v13];
    if (v5 != a3)
    {
      v15 = 24 * ((a3 - v5 - 24) / 0x18uLL) + 24;
      result = memcpy(result, v5, v15);
      v14 += v15;
    }

    a1[1] = v14;
  }

  return result;
}

char *std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t a1, char *a2, char *a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  result = *a1;
  if (a4 <= (v7 - result) >> 4)
  {
    v15 = *(a1 + 8);
    if (a4 <= (v15 - result) >> 4)
    {
      if (a2 == a3)
      {
        *(a1 + 8) = result;
        return result;
      }

      v24 = a3 - a2 - 16;
      if (v24 < 0xF0 || ((v44 = v24 & 0xFFFFFFFFFFFFFFF0 | 8, v45 = &result[v44], v46 = &a2[v44], v47 = (v24 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < &a2[v47]) ? (v48 = a2 + 8 >= &result[v47]) : (v48 = 1), v48 ? (v49 = 0) : (v49 = 1), v45 > a2 ? (v50 = result >= v46) : (v50 = 1), !v50 || (v49 & 1) != 0))
      {
        v15 = result;
        v25 = a2;
      }

      else
      {
        v51 = (v24 >> 4) + 1;
        v52 = 16 * (v51 & 0x1FFFFFFFFFFFFFFCLL);
        v15 = &result[v52];
        v25 = &a2[v52];
        v53 = (a2 + 32);
        v54 = result + 32;
        v55 = v51 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v57 = *(v53 - 2);
          v56 = *(v53 - 1);
          v59 = *v53;
          v58 = v53[1];
          v53 += 4;
          *(v54 - 2) = v57;
          *(v54 - 1) = v56;
          *v54 = v59;
          v54[1] = v58;
          v54 += 4;
          v55 -= 4;
        }

        while (v55);
        if (v51 == (v51 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }

      do
      {
        v26 = *v25;
        v27 = *(v25 + 1);
        v25 += 16;
        *v15 = v26;
        *(v15 + 1) = v27;
        v15 += 16;
      }

      while (v25 != a3);
LABEL_26:
      *(a1 + 8) = v15;
      return result;
    }

    v16 = &a2[v15 - result];
    if (v15 != result)
    {
      v17 = v15 - result - 16;
      if (v17 < 0xF0 || ((v28 = v17 & 0xFFFFFFFFFFFFFFF0 | 8, v29 = &result[v28], v30 = &a2[v28], v31 = (v17 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < &a2[v31]) ? (v32 = a2 + 8 >= &result[v31]) : (v32 = 1), v32 ? (v33 = 0) : (v33 = 1), v29 > a2 ? (v34 = result >= v30) : (v34 = 1), !v34 || (v33 & 1) != 0))
      {
        v18 = result;
        v19 = a2;
      }

      else
      {
        v35 = (v17 >> 4) + 1;
        v36 = 16 * (v35 & 0x1FFFFFFFFFFFFFFCLL);
        v18 = &result[v36];
        v19 = &a2[v36];
        v37 = (a2 + 32);
        v38 = result + 32;
        v39 = v35 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v41 = *(v37 - 2);
          v40 = *(v37 - 1);
          v43 = *v37;
          v42 = v37[1];
          v37 += 4;
          *(v38 - 2) = v41;
          *(v38 - 1) = v40;
          *v38 = v43;
          v38[1] = v42;
          v38 += 4;
          v39 -= 4;
        }

        while (v39);
        if (v35 == (v35 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_18;
        }
      }

      do
      {
        v20 = *v19;
        v21 = *(v19 + 1);
        v19 += 16;
        *v18 = v20;
        *(v18 + 1) = v21;
        v18 += 16;
      }

      while (v19 != v16);
    }

LABEL_18:
    if (v16 != a3)
    {
      v22 = v15;
      do
      {
        v23 = *v16;
        v16 += 16;
        *v15 = v23;
        v15 += 16;
        v22 += 16;
      }

      while (v16 != a3);
      *(a1 + 8) = v22;
      return result;
    }

    goto LABEL_26;
  }

  if (result)
  {
    *(a1 + 8) = result;
    v9 = a4;
    operator delete(result);
    a4 = v9;
    v7 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  if (a4 >> 60)
  {
    goto LABEL_60;
  }

  v10 = v7 >> 3;
  if (v7 >> 3 <= a4)
  {
    v10 = a4;
  }

  v32 = v7 >= 0x7FFFFFFFFFFFFFF0;
  v11 = 0xFFFFFFFFFFFFFFFLL;
  if (!v32)
  {
    v11 = v10;
  }

  if (v11 >> 60)
  {
LABEL_60:
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v12 = 16 * v11;
  result = operator new(16 * v11);
  v13 = result;
  *a1 = result;
  *(a1 + 8) = result;
  *(a1 + 16) = &result[v12];
  if (a2 != a3)
  {
    v14 = (a3 - a2) & 0xFFFFFFFFFFFFFFF0;
    result = memcpy(result, a2, v14);
    v13 += v14;
  }

  *(a1 + 8) = v13;
  return result;
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(std::vector<std::ssub_match> *this, std::vector<std::ssub_match>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v11 = &end[__n];
      v12 = 24 * __n;
      do
      {
        end->first.__i_ = 0;
        end->second.__i_ = 0;
        end->matched = 0;
        ++end;
        v12 -= 24;
      }

      while (v12);
      end = v11;
    }

    this->__end_ = end;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v5 = v4 + __n;
    if (v4 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v7 = v5;
    }

    if (v7)
    {
      if (v7 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v8 = __n;
      v9 = this;
      v10 = operator new(24 * v7);
      this = v9;
      __n = v8;
    }

    else
    {
      v10 = 0;
    }

    v13 = &v10[24 * v4];
    v14 = 24 * __n;
    v15 = &v13[24 * __n];
    v16 = v13;
    do
    {
      *v16 = 0;
      *(v16 + 1) = 0;
      v16[16] = 0;
      v16 += 24;
      v14 -= 24;
    }

    while (v14);
    v17 = &v10[24 * v7];
    begin = this->__begin_;
    v19 = &v13[(this->__begin_ - end)];
    if (end != this->__begin_)
    {
      v20 = v19;
      do
      {
        v21 = begin->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
        *&v20->matched = *&begin->matched;
        v20->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v21;
        ++v20;
        ++begin;
      }

      while (begin != end);
      begin = this->__begin_;
    }

    this->__begin_ = v19;
    this->__end_ = v15;
    this->__end_cap_.__value_ = v17;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t __cxx_global_var_init_36()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_297288000);
  }

  return result;
}

void _GLOBAL__sub_I_ResetInfo_cpp()
{
  v77 = *MEMORY[0x29EDCA608];
  v9 = 15;
  strcpy(v8, ".*\\[abmtool\\].*");
  v10[0] = 1;
  v12 = 14;
  strcpy(v11, ".*\\[bbutil\\].*");
  v13 = 1;
  v14 = operator new(0x50uLL);
  v15 = xmmword_29742FB30;
  strcpy(v14, ".*AP forced coredump via SPMI - Please analyze reason from AP perspective.*");
  v16 = 1;
  v17 = operator new(0x19uLL);
  v18 = xmmword_29742FB40;
  strcpy(v17, ".*(after OTASP/OTAPA).*");
  v19 = 1;
  v20 = operator new(0x38uLL);
  v21 = xmmword_29742FB50;
  strcpy(v20, ".*Carrier bundle updated settings that require reset");
  v22 = 1;
  v23 = operator new(0x28uLL);
  v24 = xmmword_29742F120;
  strcpy(v23, ".*Manually Triggering BB Core Dump");
  v25 = 1;
  v26 = operator new(0x28uLL);
  v27 = xmmword_29742FB60;
  strcpy(v26, ".*modem manager triggered reset.*");
  v28 = 1;
  v29 = operator new(0x38uLL);
  v30 = xmmword_29742FB70;
  strcpy(v29, ".*User requested to change Baseband field test config");
  v31 = 1;
  v32 = operator new(0x28uLL);
  v33 = 33;
  v34 = 0x8000000000000028;
  strcpy(v32, ".*applebbproxy setup AT interface");
  v35 = 1;
  v36 = operator new(0x28uLL);
  v37 = 36;
  v38 = 0x8000000000000028;
  strcpy(v36, ".*Resetting Baseband after restore.*");
  v39 = 1;
  v40 = operator new(0x30uLL);
  v41 = 42;
  v42 = 0x8000000000000030;
  strcpy(v40, ".*Resetting baseband after pushing files.*");
  v43 = 1;
  v44 = operator new(0x40uLL);
  v45 = 59;
  v46 = 0x8000000000000040;
  strcpy(v44, ".*Resetting Baseband after successful restore of carrier NV");
  v47 = 1;
  v48 = operator new(0x30uLL);
  v49 = 41;
  v50 = 0x8000000000000030;
  strcpy(v48, ".*Resetting modem from WirelessAutomation");
  v51 = 1;
  v52 = operator new(0x20uLL);
  v53 = 25;
  v54 = 0x8000000000000020;
  strcpy(v52, ".*Requesting Soft Reset.*");
  v55 = 1;
  v58 = 0x8000000000000030;
  v56 = operator new(0x30uLL);
  v57 = 42;
  strcpy(v56, ".*AP-triggered((?!: locationd PDS).*|(.*))");
  v59 = 1;
  v62 = 0x8000000000000038;
  v60 = operator new(0x38uLL);
  v61 = 50;
  strcpy(v60, ".*User ((requested state)|(Triggered Core))dump.*");
  v63 = 1;
  HIBYTE(v64[2]) = 19;
  strcpy(v64, ".*SIM APNs change.*");
  v65 = 1;
  v66 = operator new(0x28uLL);
  v68 = 0x8000000000000028;
  v67 = 34;
  strcpy(v66, ".*AttachAPN Push to force detach.*");
  v69 = 1;
  v71 = 14;
  strcpy(v70, ".*CSIM reset.*");
  v72 = 1;
  __p = operator new(0x20uLL);
  v75 = 0x8000000000000020;
  v74 = 25;
  strcpy(__p, ".*com\\.apple\\.symptomsd.*");
  v76 = 1;
  qword_2A18CA988 = 0;
  qword_2A18CA990 = 0;
  kDefaultPatternMasks = 0;
  v0 = 0;
  kDefaultPatternMasks = operator new(0x280uLL);
  qword_2A18CA988 = kDefaultPatternMasks;
  qword_2A18CA990 = kDefaultPatternMasks + 640;
  v7 = kDefaultPatternMasks;
  v1 = kDefaultPatternMasks;
  do
  {
    v4 = &v8[v0 / 2];
    if (*(&v9 + v0 * 4) < 0)
    {
      std::string::__init_copy_ctor_external(v1, *v4, v4[1]);
      v3 = v7;
    }

    else
    {
      v2 = *v4;
      *(v1 + 16) = v4[2];
      *v1 = v2;
      v3 = v1;
    }

    *(v1 + 24) = v10[v0];
    v0 += 8;
    v1 = v3 + 32;
    v7 = v3 + 32;
  }

  while (v0 != 160);
  qword_2A18CA988 = v3 + 32;
  if (SHIBYTE(v75) < 0)
  {
    operator delete(__p);
    if ((v71 & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v68) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }
  }

  else if ((v71 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(v70[0]);
  if ((SHIBYTE(v68) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v64[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(v66);
  if ((SHIBYTE(v64[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v62) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(v64[0]);
  if ((SHIBYTE(v62) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v58) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v60);
  if ((SHIBYTE(v58) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v54) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v56);
  if ((SHIBYTE(v54) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v50) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v52);
  if ((SHIBYTE(v50) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v46) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v48);
  if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v44);
  if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v38) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v40);
  if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(v36);
  if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v32);
  if ((SHIBYTE(v30) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(v29);
  if ((SHIBYTE(v27) & 0x80000000) == 0)
  {
LABEL_20:
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  operator delete(v26);
  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
LABEL_21:
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_42:
  operator delete(v23);
  if ((SHIBYTE(v21) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

LABEL_43:
  operator delete(v20);
  if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
LABEL_23:
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

LABEL_44:
  operator delete(v17);
  if ((SHIBYTE(v15) & 0x80000000) == 0)
  {
LABEL_24:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_46:
    operator delete(v11[0]);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_47:
    operator delete(v8[0]);
    v6 = *MEMORY[0x29EDCA608];
    return;
  }

LABEL_45:
  operator delete(v14);
  if (v12 < 0)
  {
    goto LABEL_46;
  }

LABEL_25:
  if (v9 < 0)
  {
    goto LABEL_47;
  }

LABEL_26:
  v5 = *MEMORY[0x29EDCA608];
}

void sub_2972C9534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void ***a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  std::__exception_guard_exceptions<std::vector<ResetInfo::RegexPatternAndReasonMask>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a10);
  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SLOBYTE(STACK[0x27F]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x288]);
  if ((SLOBYTE(STACK[0x27F]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((SLOBYTE(STACK[0x25F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(STACK[0x268]);
  if ((SLOBYTE(STACK[0x25F]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((SLOBYTE(STACK[0x23F]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x248]);
  if ((SLOBYTE(STACK[0x23F]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((SLOBYTE(STACK[0x21F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(STACK[0x228]);
  if ((SLOBYTE(STACK[0x21F]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a84 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x208]);
  if ((a84 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a82 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(a83);
  if ((a82 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a80 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(a81);
  if ((a80 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a78 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(a79);
  if ((a78 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a76 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(a77);
  if ((a76 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a74 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(a75);
  if ((a74 & 0x80000000) == 0)
  {
LABEL_13:
    if ((a72 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(a73);
  if ((a72 & 0x80000000) == 0)
  {
LABEL_14:
    if ((a65 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(a67);
  if ((a65 & 0x80000000) == 0)
  {
LABEL_15:
    if ((a58 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(a60);
  if ((a58 & 0x80000000) == 0)
  {
LABEL_16:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(a53);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_17:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(a46);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_18:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_19:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(a32);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_20:
    if ((a23 & 0x80000000) == 0)
    {
LABEL_42:
      _Unwind_Resume(a1);
    }

LABEL_41:
    operator delete(a18);
    _Unwind_Resume(a1);
  }

LABEL_40:
  operator delete(a25);
  if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  goto LABEL_41;
}

void LogDumpDB::LogDumpDB(LogDumpDB *this)
{
  ctu::OsLogLogger::OsLogLogger((this + 8), "com.apple.telephony.abm", *MEMORY[0x29EDBE868]);
  *this = &unk_2A1E35B58;
  *(this + 4) = 20;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  LogDumpDB::init(this);
}

{
  ctu::OsLogLogger::OsLogLogger((this + 8), "com.apple.telephony.abm", *MEMORY[0x29EDBE868]);
  *this = &unk_2A1E35B58;
  *(this + 4) = 20;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  LogDumpDB::init(this);
}

void sub_2972C97F0(_Unwind_Exception *a1)
{
  std::vector<ResetInfo>::~vector[abi:ne200100](v2);
  MEMORY[0x29C26DE80](v1 + 8);
  _Unwind_Resume(a1);
}

void LogDumpDB::init(LogDumpDB *this)
{
  v43 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v2 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(&__dst);
    v3 = __dst;
    __dst = 0uLL;
    v4 = *(&off_2A1399498 + 1);
    off_2A1399498 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&__dst + 1);
    if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A1399498;
  }

  *(&v39[1] + 1) = v2;
  *&v39[2] = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v6 = *MEMORY[0x29EDBE868];
  v7 = strlen(*MEMORY[0x29EDBE868]);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    p_dst = operator new(v10);
    *(&__dst + 1) = v8;
    *&v30 = v10 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_19;
  }

  BYTE7(v30) = v7;
  p_dst = &__dst;
  if (v7)
  {
LABEL_19:
    memmove(p_dst, v6, v8);
  }

  *(p_dst + v8) = 0;
  os_unfair_lock_lock((v2 + 40));
  Preferences::getPreference<__CFArray const*>(v2, &__dst, &v43);
  os_unfair_lock_unlock((v2 + 40));
  if (SBYTE7(v30) < 0)
  {
    operator delete(__dst);
  }

  v11 = *&v39[2];
  if (*&v39[2] && !atomic_fetch_add((*&v39[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v12 = v43;
    v42 = v43;
    if (!v43)
    {
      return;
    }
  }

  else
  {
    v12 = v43;
    v42 = v43;
    if (!v43)
    {
      return;
    }
  }

  CFRetain(v12);
  Count = CFArrayGetCount(v12);
  v14 = Count;
  if (Count)
  {
    v15 = 0;
    v26 = *MEMORY[0x29EDBE930];
    v25 = *MEMORY[0x29EDBEF60];
    v16 = *MEMORY[0x29EDBEB00];
    v17 = *MEMORY[0x29EDBEEE0];
    v18 = *MEMORY[0x29EDBED78];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
      v20 = ValueAtIndex;
      if (ValueAtIndex && (v21 = CFGetTypeID(ValueAtIndex), v21 == CFDictionaryGetTypeID()))
      {
        v41 = v20;
        CFRetain(v20);
      }

      else
      {
        v20 = 0;
        v41 = 0;
      }

      v40[0] = 0xAAAAAAAAAAAAAAAALL;
      v40[1] = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(v40, v20);
      memset(&v39[1] + 8, 170, 24);
      __dst = 0uLL;
      *&v30 = 0;
      ctu::cf::MakeCFString::MakeCFString(v39, v26);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C26DF80](v39);
      if (SBYTE7(v30) < 0)
      {
        operator delete(__dst);
      }

      memset(v39, 170, 24);
      __dst = 0uLL;
      *&v30 = 0;
      ctu::cf::MakeCFString::MakeCFString(v38, v25);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C26DF80](v38);
      if (SBYTE7(v30) < 0)
      {
        operator delete(__dst);
      }

      memset(v38, 170, sizeof(v38));
      __dst = 0uLL;
      *&v30 = 0;
      ctu::cf::MakeCFString::MakeCFString(v37, v16);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C26DF80](v37);
      if (SBYTE7(v30) < 0)
      {
        operator delete(__dst);
      }

      memset(v37, 170, sizeof(v37));
      __dst = 0uLL;
      *&v30 = 0;
      ctu::cf::MakeCFString::MakeCFString(&v36, v17);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C26DF80](&v36);
      if (SBYTE7(v30) < 0)
      {
        operator delete(__dst);
      }

      memset(&v36, 170, sizeof(v36));
      __dst = 0uLL;
      *&v30 = 0;
      ctu::cf::MakeCFString::MakeCFString(v44, v18);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C26DF80](v44);
      if (SBYTE7(v30) < 0)
      {
        operator delete(__dst);
      }

      *&v22 = 0xAAAAAAAAAAAAAAAALL;
      *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__p = v22;
      v35 = v22;
      *v32 = v22;
      v33 = v22;
      v30 = v22;
      v31 = v22;
      __dst = v22;
      if (SHIBYTE(v39[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v28, *(&v39[1] + 1), *&v39[2]);
      }

      else
      {
        v28 = *(&v39[1] + 8);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
      }

      else
      {
        v27 = v36;
      }

      ResetInfo::ResetInfo(&__dst, v38, v37, v39, &v28, 7, &v27);
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_50:
          v23 = *(this + 4);
          if (v23 < *(this + 5))
          {
            goto LABEL_51;
          }

          goto LABEL_54;
        }
      }

      else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      operator delete(v28.__r_.__value_.__l.__data_);
      v23 = *(this + 4);
      if (v23 < *(this + 5))
      {
LABEL_51:
        ResetInfo::ResetInfo(v23, &__dst);
        v24 = &v23[4].__r_.__value_.__s.__data_[16];
        *(this + 4) = v23 + 112;
        goto LABEL_55;
      }

LABEL_54:
      v24 = std::vector<ResetInfo>::__emplace_back_slow_path<ResetInfo const&>(this + 3, &__dst);
LABEL_55:
      *(this + 4) = v24;
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p[1]);
        if ((SBYTE7(v33) & 0x80000000) == 0)
        {
LABEL_57:
          if ((SHIBYTE(v31) & 0x80000000) == 0)
          {
            goto LABEL_58;
          }

          goto LABEL_68;
        }
      }

      else if ((SBYTE7(v33) & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      operator delete(v32[0]);
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
LABEL_58:
        if ((SBYTE7(v30) & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_69;
      }

LABEL_68:
      operator delete(*(&v30 + 1));
      if ((SBYTE7(v30) & 0x80000000) == 0)
      {
LABEL_59:
        if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_70;
      }

LABEL_69:
      operator delete(__dst);
      if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_60:
        if ((SHIBYTE(v37[2]) & 0x80000000) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_71;
      }

LABEL_70:
      operator delete(v36.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v37[2]) & 0x80000000) == 0)
      {
LABEL_61:
        if ((v38[23] & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_72;
      }

LABEL_71:
      operator delete(v37[0]);
      if ((v38[23] & 0x80000000) == 0)
      {
LABEL_62:
        if ((SBYTE7(v39[1]) & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_73;
      }

LABEL_72:
      operator delete(*v38);
      if ((SBYTE7(v39[1]) & 0x80000000) == 0)
      {
LABEL_63:
        if ((SHIBYTE(v39[2]) & 0x80000000) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_74;
      }

LABEL_73:
      operator delete(*&v39[0]);
      if ((SHIBYTE(v39[2]) & 0x80000000) == 0)
      {
LABEL_64:
        MEMORY[0x29C26DFC0](v40);
        if (!v20)
        {
          goto LABEL_27;
        }

LABEL_75:
        CFRelease(v20);
        goto LABEL_27;
      }

LABEL_74:
      operator delete(*(&v39[1] + 1));
      MEMORY[0x29C26DFC0](v40);
      if (v20)
      {
        goto LABEL_75;
      }

LABEL_27:
      ++v15;
    }

    while (v14 != v15);
  }

  CFRelease(v12);
}

void sub_2972C9ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a48 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a48 & 0x80000000) == 0)
  {
LABEL_6:
    if (a54 < 0)
    {
      operator delete(a49);
    }

    if (*(v54 - 193) < 0)
    {
      operator delete(*(v54 - 216));
    }

    if (*(v54 - 169) < 0)
    {
      operator delete(*(v54 - 192));
    }

    if (*(v54 - 145) < 0)
    {
      operator delete(*(v54 - 168));
    }

    MEMORY[0x29C26DFC0](v54 - 144);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v54 - 128));
    ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v54 - 120));
    _Unwind_Resume(a1);
  }

  operator delete(a43);
  goto LABEL_6;
}

void sub_2972CA124(_Unwind_Exception *a1)
{
  std::vector<ResetInfo>::~vector[abi:ne200100](v2);
  MEMORY[0x29C26DE80](v1 + 8);
  _Unwind_Resume(a1);
}

void LogDumpDB::commitToDisk(LogDumpDB *this)
{
  v40 = *MEMORY[0x29EDCA608];
  cf = 0;
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  v4 = Mutable;
  if (Mutable)
  {
    cf = Mutable;
  }

  v5 = *(this + 3);
  v6 = *(this + 4);
  v32 = this;
  if (v5 != v6)
  {
    v35 = *MEMORY[0x29EDBE930];
    v34 = *MEMORY[0x29EDBEB00];
    v33 = *MEMORY[0x29EDBEEE0];
    v7 = *MEMORY[0x29EDBEF60];
    v8 = *MEMORY[0x29EDBED78];
    do
    {
      v38 = 0;
      v9 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v10 = v9;
      if (v9)
      {
        v38 = v9;
      }

      v11 = *(v5 + 9);
      v12 = operator new(0x38uLL);
      v12[8] = 0;
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 2) = &__dst.__r_.__value_.__l.__size_;
      __dst.__r_.__value_.__r.__words[0] = v12;
      __dst.__r_.__value_.__l.__size_ = v12;
      *(v12 + 24) = 1;
      __dst.__r_.__value_.__r.__words[2] = 1;
      *(v12 + 5) = v11;
      *(v12 + 6) = 0xAAAAAAAA00000000;
      Timestamp::asString(&__dst, 0, 9, &__p);
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&__dst, __dst.__r_.__value_.__l.__size_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = __p;
      }

      ctu::cf::insert<char const*,std::string>(v10, v35, &__dst, v2, v13);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_13:
          if ((*(v5 + 23) & 0x80000000) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_17;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if ((*(v5 + 23) & 0x80000000) == 0)
      {
LABEL_14:
        v15 = *v5;
        __p.__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&__p.__r_.__value_.__l.__data_ = v15;
        goto LABEL_18;
      }

LABEL_17:
      std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 1));
LABEL_18:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = __p;
      }

      ctu::cf::insert<char const*,std::string>(v10, v34, &__dst, v2, v14);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_23:
          if ((*(v5 + 47) & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if ((*(v5 + 47) & 0x80000000) == 0)
      {
LABEL_24:
        __p = *(v5 + 1);
        goto LABEL_28;
      }

LABEL_27:
      std::string::__init_copy_ctor_external(&__p, *(v5 + 3), *(v5 + 4));
LABEL_28:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = __p;
      }

      ctu::cf::insert<char const*,std::string>(v10, v33, &__dst, v2, v16);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_33:
          if ((*(v5 + 71) & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_37;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if ((*(v5 + 71) & 0x80000000) == 0)
      {
LABEL_34:
        __p = *(v5 + 2);
        goto LABEL_38;
      }

LABEL_37:
      std::string::__init_copy_ctor_external(&__p, *(v5 + 6), *(v5 + 7));
LABEL_38:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = __p;
      }

      ctu::cf::insert<char const*,std::string>(v10, v7, &__dst, v2, v17);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_43:
          if ((*(v5 + 111) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_47;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if ((*(v5 + 111) & 0x80000000) == 0)
      {
LABEL_44:
        __p = *(v5 + 88);
        goto LABEL_48;
      }

LABEL_47:
      std::string::__init_copy_ctor_external(&__p, *(v5 + 11), *(v5 + 12));
LABEL_48:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = __p;
      }

      ctu::cf::insert<char const*,std::string>(v10, v8, &__dst, v2, v18);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_56:
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_56;
      }

      CFArrayAppendValue(v4, v10);
      if (v10)
      {
        CFRelease(v10);
      }

      v5 += 7;
    }

    while (v5 != v6);
  }

  v19 = *(v32 + 1);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(__dst.__r_.__value_.__l.__data_) = 138412290;
    *(__dst.__r_.__value_.__r.__words + 4) = v4;
    _os_log_debug_impl(&dword_297288000, v19, OS_LOG_TYPE_DEBUG, "#D Current tracking list: %@", &__dst, 0xCu);
  }

  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v20 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(&__dst);
    v21 = *&__dst.__r_.__value_.__l.__data_;
    *&__dst.__r_.__value_.__l.__data_ = 0uLL;
    v22 = *(&off_2A1399498 + 1);
    off_2A1399498 = v21;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }

    size = __dst.__r_.__value_.__l.__size_;
    if (__dst.__r_.__value_.__l.__size_ && !atomic_fetch_add((__dst.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v20 = off_2A1399498;
  }

  __p.__r_.__value_.__r.__words[0] = v20;
  __p.__r_.__value_.__l.__size_ = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v24 = *MEMORY[0x29EDBE868];
  v25 = strlen(*MEMORY[0x29EDBE868]);
  if (v25 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v26 = v25;
  if (v25 >= 0x17)
  {
    if ((v25 | 7) == 0x17)
    {
      v28 = 25;
    }

    else
    {
      v28 = (v25 | 7) + 1;
    }

    p_dst = operator new(v28);
    __dst.__r_.__value_.__l.__size_ = v26;
    __dst.__r_.__value_.__r.__words[2] = v28 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_77;
  }

  *(&__dst.__r_.__value_.__s + 23) = v25;
  p_dst = &__dst;
  if (v25)
  {
LABEL_77:
    memmove(p_dst, v24, v26);
  }

  *(p_dst + v26) = 0;
  SharedData::setPreference<__CFArray *>(v20, &__dst, cf);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    v29 = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v29 = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_83;
    }
  }

  if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
    v30 = cf;
    if (!cf)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

LABEL_83:
  v30 = cf;
  if (cf)
  {
LABEL_84:
    CFRelease(v30);
  }

LABEL_85:
  v31 = *MEMORY[0x29EDCA608];
}

void sub_2972CA7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(&a14);
  _Unwind_Resume(a1);
}

void SharedData::setPreference<__CFArray *>(os_unfair_lock_s *a1, uint64_t a2, const void *a3)
{
  os_unfair_lock_lock(a1 + 10);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v7, v6);
  ctu::cf::plist_adapter::set<__CFArray *>(a1, a3, v7, 1);
  MEMORY[0x29C26DF80](&v7);
  os_unfair_lock_unlock(a1 + 10);
}

const void **ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

BOOL LogDumpDB::checkIfDuplicatedSignature(LogDumpDB *this, const ResetInfo *a2, const ResetInfo *a3)
{
  v93 = *MEMORY[0x29EDCA608];
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, *a3, *(a3 + 1));
  }

  else
  {
    v90 = *a3;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v92, *a2, *(a2 + 1));
  }

  else
  {
    v92 = *a2;
  }

  v6 = SHIBYTE(v92.__r_.__value_.__r.__words[2]);
  size = v92.__r_.__value_.__l.__size_;
  v8 = v92.__r_.__value_.__r.__words[0];
  v9 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
  v10 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v90;
  }

  else
  {
    v9 = v90.__r_.__value_.__l.__size_;
    v11 = v90.__r_.__value_.__r.__words[0];
  }

  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v92.__r_.__value_.__r.__words[0];
  }

  else
  {
    size = SHIBYTE(v92.__r_.__value_.__r.__words[2]);
    v12 = &v92;
  }

  if (size >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = size;
  }

  v14 = size == v9;
  if (memcmp(v11, v12, v13))
  {
    v14 = 0;
  }

  if (v6 < 0)
  {
    operator delete(v8);
    if ((*(&v90.__r_.__value_.__s + 23) & 0x80) == 0)
    {
LABEL_20:
      if (v14)
      {
        goto LABEL_21;
      }

LABEL_25:
      v15 = *(this + 1);
      result = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        goto LABEL_239;
      }

      LOWORD(v90.__r_.__value_.__l.__data_) = 0;
      v17 = "#D Two reset types are not same. No need to check duplicated signature";
LABEL_27:
      _os_log_debug_impl(&dword_297288000, v15, OS_LOG_TYPE_DEBUG, v17, &v90, 2u);
      goto LABEL_238;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_20;
  }

  operator delete(v90.__r_.__value_.__l.__data_);
  if (!v14)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, *a3, *(a3 + 1));
  }

  else
  {
    v90 = *a3;
  }

  v18 = strlen(*MEMORY[0x29EDBEB60]);
  v19 = v18;
  v20 = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v18 != -1)
    {
      v21 = &v90;
      v22 = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
      goto LABEL_34;
    }

LABEL_241:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v18 == -1)
  {
    goto LABEL_241;
  }

  v22 = v90.__r_.__value_.__l.__size_;
  v21 = v90.__r_.__value_.__r.__words[0];
LABEL_34:
  if (v22 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v22;
  }

  v24 = memcmp(v21, *MEMORY[0x29EDBEB60], v23) == 0;
  v25 = v22 == v19 && v24;
  if ((v20 & 0x80000000) == 0)
  {
    if (v25)
    {
      goto LABEL_42;
    }

LABEL_46:
    if (*(a2 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v90, *(a2 + 6), *(a2 + 7));
    }

    else
    {
      v90 = *(a2 + 2);
    }

    if (*(a3 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v92, *(a3 + 6), *(a3 + 7));
    }

    else
    {
      v92 = *(a3 + 2);
    }

    *__dst = operator new(0x68uLL);
    *&__dst[8] = xmmword_29742FFE0;
    strcpy(*__dst, "(Power assertion watchdog fired for 'com.apple.AppleBasebandManager.RadioNotReady.Bootup'; Timeout =).*");
    v27 = util::compareTwoStringsWithPattern(&v90, &v92, __dst);
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
      if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_54:
        if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_108;
      }
    }

    else if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    operator delete(v92.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_55:
      if (!v27)
      {
        goto LABEL_238;
      }

      goto LABEL_109;
    }

LABEL_108:
    operator delete(v90.__r_.__value_.__l.__data_);
    if (!v27)
    {
      goto LABEL_238;
    }

LABEL_109:
    v44 = *(this + 1);
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_113;
    }

    if (*(a3 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v90, *(a3 + 6), *(a3 + 7));
    }

    else
    {
      v90 = *(a3 + 2);
    }

    v85 = &v90;
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v85 = v90.__r_.__value_.__r.__words[0];
    }

    LODWORD(v92.__r_.__value_.__l.__data_) = 136315138;
    *(v92.__r_.__value_.__r.__words + 4) = v85;
LABEL_231:
    _os_log_debug_impl(&dword_297288000, v44, OS_LOG_TYPE_DEBUG, "#D This is duplicated signature based on the dump reason: %s", &v92, 0xCu);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
      result = 1;
    }

    else
    {
LABEL_113:
      result = 1;
    }

    goto LABEL_239;
  }

  operator delete(v90.__r_.__value_.__l.__data_);
  if (!v25)
  {
    goto LABEL_46;
  }

LABEL_42:
  v26 = *(this + 1);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    if (*(a3 + 111) < 0)
    {
      std::string::__init_copy_ctor_external(&v90, *(a3 + 11), *(a3 + 12));
    }

    else
    {
      v90 = *(a3 + 88);
    }

    v69 = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
    v70 = v90.__r_.__value_.__r.__words[0];
    if (*(a2 + 111) < 0)
    {
      std::string::__init_copy_ctor_external(&v92, *(a2 + 11), *(a2 + 12));
    }

    else
    {
      v92 = *(a2 + 88);
    }

    v71 = &v90;
    if (v69 < 0)
    {
      v71 = v70;
    }

    v72 = &v92;
    if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v72 = v92.__r_.__value_.__r.__words[0];
    }

    *__dst = 136315394;
    *&__dst[4] = v71;
    *&__dst[12] = 2080;
    *&__dst[14] = v72;
    _os_log_debug_impl(&dword_297288000, v26, OS_LOG_TYPE_DEBUG, "#D Comparing current reason, %s, and the recorded reason, %s", __dst, 0x16u);
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v92.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }
  }

  if (*(a3 + 111) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, *(a3 + 11), *(a3 + 12));
  }

  else
  {
    v90 = *(a3 + 88);
  }

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external(&v92, *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v92 = *(a2 + 88);
  }

  v28 = SHIBYTE(v92.__r_.__value_.__r.__words[2]);
  v29 = v92.__r_.__value_.__l.__size_;
  v30 = v92.__r_.__value_.__r.__words[0];
  v31 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
  v32 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v90;
  }

  else
  {
    v31 = v90.__r_.__value_.__l.__size_;
    v33 = v90.__r_.__value_.__r.__words[0];
  }

  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v34 = v92.__r_.__value_.__r.__words[0];
  }

  else
  {
    v29 = SHIBYTE(v92.__r_.__value_.__r.__words[2]);
    v34 = &v92;
  }

  if (v29 >= v31)
  {
    v35 = v31;
  }

  else
  {
    v35 = v29;
  }

  v36 = v29 == v31;
  if (memcmp(v33, v34, v35))
  {
    v36 = 0;
  }

  if ((v28 & 0x8000000000000000) == 0)
  {
    if ((v32 & 0x80) == 0)
    {
      goto LABEL_74;
    }

LABEL_103:
    operator delete(v90.__r_.__value_.__l.__data_);
    if (v36)
    {
      goto LABEL_75;
    }

    goto LABEL_104;
  }

  operator delete(v30);
  if ((*(&v90.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_103;
  }

LABEL_74:
  if (!v36)
  {
LABEL_104:
    v15 = *(this + 1);
    result = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      goto LABEL_239;
    }

    LOWORD(v90.__r_.__value_.__l.__data_) = 0;
    v17 = "#D Two crash reasons are not identical. No need to check duplicated signature";
    goto LABEL_27;
  }

LABEL_75:
  v89 = this;
  for (i = 0; i != 8; ++i)
  {
    if (*(a2 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v90, *(a2 + 6), *(a2 + 7));
    }

    else
    {
      v90 = *(a2 + 2);
    }

    if (*(a3 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v92, *(a3 + 6), *(a3 + 7));
    }

    else
    {
      v92 = *(a3 + 2);
    }

    v38 = abm::kInterestingHardResetReasonSignatures[i];
    v39 = strlen(v38);
    if (v39 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v40 = v39;
    if (v39 >= 0x17)
    {
      if ((v39 | 7) == 0x17)
      {
        v42 = 25;
      }

      else
      {
        v42 = (v39 | 7) + 1;
      }

      v41 = operator new(v42);
      *&__dst[8] = v40;
      *&__dst[16] = v42 | 0x8000000000000000;
      *__dst = v41;
LABEL_90:
      memmove(v41, v38, v40);
      goto LABEL_91;
    }

    __dst[23] = v39;
    v41 = __dst;
    if (v39)
    {
      goto LABEL_90;
    }

LABEL_91:
    v41[v40] = 0;
    v43 = util::compareTwoStringsWithPattern(&v90, &v92, __dst);
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
      if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_93:
        if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_98;
      }
    }

    else if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_93;
    }

    operator delete(v92.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_94:
      if (v43)
      {
        goto LABEL_112;
      }

      continue;
    }

LABEL_98:
    operator delete(v90.__r_.__value_.__l.__data_);
    if (v43)
    {
LABEL_112:
      v44 = *(v89 + 1);
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_113;
      }

      if (*(a3 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v90, *(a3 + 6), *(a3 + 7));
      }

      else
      {
        v90 = *(a3 + 2);
      }

      v86 = &v90;
      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v86 = v90.__r_.__value_.__r.__words[0];
      }

      LODWORD(v92.__r_.__value_.__l.__data_) = 136315138;
      *(v92.__r_.__value_.__r.__words + 4) = v86;
      goto LABEL_231;
    }
  }

  if (*(a3 + 111) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, *(a3 + 11), *(a3 + 12));
  }

  else
  {
    v90 = *(a3 + 88);
  }

  v45 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
  v46 = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
  v47 = v90.__r_.__value_.__r.__words[0];
  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = &v90;
  }

  else
  {
    v48 = v90.__r_.__value_.__r.__words[0];
  }

  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v45 = v90.__r_.__value_.__l.__size_;
  }

  v49 = v48 + v45;
  if (v45 >= 17)
  {
    v52 = v48;
    v51 = v89;
    do
    {
      v50 = memchr(v52, 67, v45 - 16);
      if (!v50)
      {
        break;
      }

      if (*v50 == 0x63206D6F74737543 && *(v50 + 1) == 0x7079742068736172 && v50[16] == 101)
      {
        goto LABEL_133;
      }

      v52 = (v50 + 1);
      v45 = v49 - v52;
    }

    while (v49 - v52 > 16);
    v50 = v49;
  }

  else
  {
    v50 = v48 + v45;
    v51 = v89;
  }

LABEL_133:
  v56 = v50 == v49 || v50 - v48 == -1;
  if (v46 < 0)
  {
    operator delete(v47);
  }

  if (v56)
  {
    if (*(a3 + 111) < 0)
    {
      std::string::__init_copy_ctor_external(&v90, *(a3 + 11), *(a3 + 12));
    }

    else
    {
      v90 = *(a3 + 88);
    }

    v58 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
    v59 = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
    v60 = v90.__r_.__value_.__r.__words[0];
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = &v90;
    }

    else
    {
      v61 = v90.__r_.__value_.__r.__words[0];
    }

    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v58 = v90.__r_.__value_.__l.__size_;
    }

    v62 = v61 + v58;
    if (v58 >= 18)
    {
      v64 = v61;
      v51 = v89;
      do
      {
        v63 = memchr(v64, 67, v58 - 17);
        if (!v63)
        {
          break;
        }

        if (*v63 == 0x7274206873617243 && *(v63 + 1) == 0x2064657265676769 && *(v63 + 8) == 31074)
        {
          goto LABEL_166;
        }

        v64 = (v63 + 1);
        v58 = v62 - v64;
      }

      while (v62 - v64 >= 18);
      v63 = v62;
    }

    else
    {
      v63 = v61 + v58;
      v51 = v89;
    }

LABEL_166:
    v68 = v63 == v62 || v63 - v61 == -1;
    if (v59 < 0)
    {
      operator delete(v60);
    }

    if (v68)
    {
      if (*(a3 + 111) < 0)
      {
        std::string::__init_copy_ctor_external(&v90, *(a3 + 11), *(a3 + 12));
      }

      else
      {
        v90 = *(a3 + 88);
      }

      v73 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
      v74 = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
      v75 = v90.__r_.__value_.__r.__words[0];
      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v76 = &v90;
      }

      else
      {
        v76 = v90.__r_.__value_.__r.__words[0];
      }

      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v73 = v90.__r_.__value_.__l.__size_;
      }

      v77 = v76 + v73;
      if (v73 >= 14)
      {
        v79 = v76;
        v51 = v89;
        do
        {
          v78 = memchr(v79, 67, v73 - 13);
          if (!v78)
          {
            break;
          }

          if (*v78 == 0x6E69206873617243 && *(v78 + 6) == 0x64657463656A6E69)
          {
            goto LABEL_206;
          }

          v79 = (v78 + 1);
          v73 = v77 - v79;
        }

        while (v77 - v79 >= 14);
        v78 = v77;
      }

      else
      {
        v78 = v76 + v73;
        v51 = v89;
      }

LABEL_206:
      v82 = v78 == v77 || v78 - v76 == -1;
      if (v74 < 0)
      {
        operator delete(v75);
      }

      if (v82)
      {
        v83 = *(v51 + 1);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v90.__r_.__value_.__l.__data_) = 0;
          _os_log_debug_impl(&dword_297288000, v83, OS_LOG_TYPE_DEBUG, "#D The crash reason has duplicated signature", &v90, 2u);
        }

        goto LABEL_113;
      }

      v57 = "Crash injected";
    }

    else
    {
      v57 = "Crash triggered by";
    }
  }

  else
  {
    v57 = "Custom crash type";
  }

  v84 = *(v51 + 1);
  result = os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG);
  if (!result)
  {
    goto LABEL_239;
  }

  if (*(a3 + 111) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, *(a3 + 11), *(a3 + 12));
  }

  else
  {
    v90 = *(a3 + 88);
  }

  v87 = &v90;
  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v87 = v90.__r_.__value_.__r.__words[0];
  }

  LODWORD(v92.__r_.__value_.__l.__data_) = 136315394;
  *(v92.__r_.__value_.__r.__words + 4) = v87;
  WORD2(v92.__r_.__value_.__r.__words[1]) = 2080;
  *(&v92.__r_.__value_.__r.__words[1] + 6) = v57;
  _os_log_debug_impl(&dword_297288000, v84, OS_LOG_TYPE_DEBUG, "#D This is NOT duplicated signature based on the crash reason: %s has %s", &v92, 0x16u);
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

LABEL_238:
  result = 0;
LABEL_239:
  v88 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2972CB4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void LogDumpDB::clearDB(LogDumpDB *this)
{
  cf = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  if (Mutable)
  {
    cf = Mutable;
  }

  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v3 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(__p);
    v4 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v5 = *(&off_2A1399498 + 1);
    off_2A1399498 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v3 = off_2A1399498;
  }

  v19 = v3;
  v20 = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v7 = *MEMORY[0x29EDBE868];
  v8 = strlen(*MEMORY[0x29EDBE868]);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    v10 = operator new(v11);
    __p[1] = v9;
    v18 = v11 | 0x8000000000000000;
    __p[0] = v10;
    goto LABEL_21;
  }

  HIBYTE(v18) = v8;
  v10 = __p;
  if (v8)
  {
LABEL_21:
    memmove(v10, v7, v9);
  }

  *(v9 + v10) = 0;
  SharedData::setPreference<__CFArray *>(v3, __p, cf);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = *(this + 3);
  v14 = *(this + 4);
  if (v14 != v13)
  {
    do
    {
      if (*(v14 - 1) < 0)
      {
        operator delete(*(v14 - 3));
        if ((*(v14 - 41) & 0x80000000) == 0)
        {
LABEL_36:
          if ((*(v14 - 65) & 0x80000000) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_41;
        }
      }

      else if ((*(v14 - 41) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      operator delete(*(v14 - 8));
      if ((*(v14 - 65) & 0x80000000) == 0)
      {
LABEL_37:
        v16 = v14 - 14;
        if (*(v14 - 89) < 0)
        {
          goto LABEL_42;
        }

        goto LABEL_33;
      }

LABEL_41:
      operator delete(*(v14 - 11));
      v16 = v14 - 14;
      if (*(v14 - 89) < 0)
      {
LABEL_42:
        operator delete(*v16);
      }

LABEL_33:
      v14 = v16;
    }

    while (v16 != v13);
  }

  *(this + 4) = v13;
  v15 = *(this + 1);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_297288000, v15, OS_LOG_TYPE_DEFAULT, "#I Log Dump DB is cleared", __p, 2u);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2972CB858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t LogDumpDB::writeToDB(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__s1, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    __s1 = *(a2 + 24);
  }

  v6 = *MEMORY[0x29EDBF6E0];
  v7 = strlen(*MEMORY[0x29EDBF6E0]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v7 != __s1.__r_.__value_.__l.__size_)
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
      v8 = *(a1 + 8);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_8;
      }

      goto LABEL_67;
    }

    if (v7 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v11 = __s1.__r_.__value_.__r.__words[0];
    v12 = memcmp(__s1.__r_.__value_.__l.__data_, v6, v7);
    operator delete(v11);
    if (v12)
    {
LABEL_7:
      v8 = *(a1 + 8);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_8;
      }

LABEL_67:
      LOWORD(__s1.__r_.__value_.__l.__data_) = 0;
      _os_log_debug_impl(&dword_297288000, v8, OS_LOG_TYPE_DEBUG, "#D Checking if log dump is duplicated", &__s1, 2u);
LABEL_8:
      v9 = *(a1 + 24);
      __s1.__r_.__value_.__s.__data_[0] = 0;
      v10 = *(a1 + 32);
      v23[0] = a1;
      v23[1] = &__s1;
      ResetInfo::ResetInfo(&v24, a2);
      v31 = a3;
      if (v9 != v10)
      {
        while (!LogDumpDB::writeToDB(ResetInfo const&,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator()(v23, v9))
        {
          v9 = (v9 + 112);
          if (v9 == v10)
          {
            v9 = v10;
            goto LABEL_22;
          }
        }

        if (v9 != v10)
        {
          for (i = (v9 + 112); i != v10; i = (i + 112))
          {
            if (!LogDumpDB::writeToDB(ResetInfo const&,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator()(v23, i))
            {
              ResetInfo::operator=(v9, i);
              v9 = (v9 + 112);
            }
          }
        }
      }

LABEL_22:
      if (v30 < 0)
      {
        operator delete(__p);
        if ((v28 & 0x80000000) == 0)
        {
LABEL_24:
          if ((v26 & 0x80000000) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_43;
        }
      }

      else if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      operator delete(v27);
      if ((v26 & 0x80000000) == 0)
      {
LABEL_25:
        if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_44;
      }

LABEL_43:
      operator delete(v25);
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_26:
        v15 = *(a1 + 32);
        if (v9 != v15)
        {
          goto LABEL_27;
        }

        goto LABEL_45;
      }

LABEL_44:
      operator delete(v24.__r_.__value_.__l.__data_);
      v15 = *(a1 + 32);
      if (v9 != v15)
      {
LABEL_27:
        if (v15 == v9)
        {
LABEL_39:
          *(a1 + 32) = v9;
          if (v9 < *(a1 + 40))
          {
LABEL_40:
            ResetInfo::ResetInfo(v9, a2);
            v17 = v9 + 112;
            *(a1 + 32) = v9 + 112;
LABEL_47:
            *(a1 + 32) = v17;
            v18 = *(a1 + 24);
            if (0x6DB6DB6DB6DB6DB7 * (&v17[-v18] >> 4) <= *(a1 + 16))
            {
LABEL_64:
              LogDumpDB::commitToDisk(a1);
              v13 = __s1.__r_.__value_.__s.__data_[0];
              return v13 & 1;
            }

            if ((v18 + 112) != v17)
            {
              do
              {
                v19 = v18 + 112;
                ResetInfo::operator=(v18, (v18 + 112));
                v20 = (v18 + 224);
                v18 += 112;
              }

              while (v20 != v17);
              v17 = *(a1 + 32);
              v18 = v19;
            }

            if (v17 == v18)
            {
LABEL_63:
              *(a1 + 32) = v18;
              goto LABEL_64;
            }

            while (1)
            {
              if (*(v17 - 1) < 0)
              {
                operator delete(*(v17 - 3));
                if (*(v17 - 41) < 0)
                {
                  goto LABEL_60;
                }

LABEL_57:
                if ((*(v17 - 65) & 0x80000000) == 0)
                {
                  goto LABEL_61;
                }

LABEL_53:
                operator delete(*(v17 - 11));
                v21 = (v17 - 112);
                if (*(v17 - 89) < 0)
                {
                  goto LABEL_62;
                }

LABEL_54:
                v17 = v21;
                if (v21 == v18)
                {
                  goto LABEL_63;
                }
              }

              else
              {
                if ((*(v17 - 41) & 0x80000000) == 0)
                {
                  goto LABEL_57;
                }

LABEL_60:
                operator delete(*(v17 - 8));
                if (*(v17 - 65) < 0)
                {
                  goto LABEL_53;
                }

LABEL_61:
                v21 = (v17 - 112);
                if ((*(v17 - 89) & 0x80000000) == 0)
                {
                  goto LABEL_54;
                }

LABEL_62:
                operator delete(*v21);
                v17 = v21;
                if (v21 == v18)
                {
                  goto LABEL_63;
                }
              }
            }
          }

LABEL_46:
          v17 = std::vector<ResetInfo>::__emplace_back_slow_path<ResetInfo const&>((a1 + 24), a2);
          goto LABEL_47;
        }

        while (1)
        {
          if (*(v15 - 1) < 0)
          {
            operator delete(*(v15 - 3));
            if (*(v15 - 41) < 0)
            {
              goto LABEL_36;
            }

LABEL_33:
            if ((*(v15 - 65) & 0x80000000) == 0)
            {
              goto LABEL_37;
            }

LABEL_29:
            operator delete(*(v15 - 11));
            v16 = v15 - 14;
            if (*(v15 - 89) < 0)
            {
              goto LABEL_38;
            }

LABEL_30:
            v15 = v16;
            if (v16 == v9)
            {
              goto LABEL_39;
            }
          }

          else
          {
            if ((*(v15 - 41) & 0x80000000) == 0)
            {
              goto LABEL_33;
            }

LABEL_36:
            operator delete(*(v15 - 8));
            if (*(v15 - 65) < 0)
            {
              goto LABEL_29;
            }

LABEL_37:
            v16 = v15 - 14;
            if ((*(v15 - 89) & 0x80000000) == 0)
            {
              goto LABEL_30;
            }

LABEL_38:
            operator delete(*v16);
            v15 = v16;
            if (v16 == v9)
            {
              goto LABEL_39;
            }
          }
        }
      }

LABEL_45:
      v9 = v15;
      if (v15 < *(a1 + 40))
      {
        goto LABEL_40;
      }

      goto LABEL_46;
    }
  }

  else if (v7 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]) || memcmp(&__s1, v6, v7))
  {
    goto LABEL_7;
  }

  v13 = 0;
  return v13 & 1;
}

void LogDumpDB::writeToDB(LogDumpDB *this, const ResetInfo *a2)
{
  v3 = *(this + 4);
  if (v3 >= *(this + 5))
  {
    v4 = std::vector<ResetInfo>::__emplace_back_slow_path<ResetInfo const&>(this + 3, a2);
  }

  else
  {
    ResetInfo::ResetInfo(*(this + 4), a2);
    v4 = (v3 + 112);
    *(this + 4) = v4;
  }

  *(this + 4) = v4;
  v5 = *(this + 3);
  if (0x6DB6DB6DB6DB6DB7 * (&v4[-v5] >> 4) > *(this + 4))
  {
    if ((v5 + 112) != v4)
    {
      do
      {
        v6 = v5 + 112;
        ResetInfo::operator=(v5, (v5 + 112));
        v7 = (v5 + 224);
        v5 += 112;
      }

      while (v7 != v4);
      v4 = *(this + 4);
      v5 = v6;
    }

    if (v4 == v5)
    {
LABEL_9:
      *(this + 4) = v5;
      goto LABEL_10;
    }

    while (1)
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 3));
        if ((*(v4 - 41) & 0x80000000) == 0)
        {
LABEL_16:
          if ((*(v4 - 65) & 0x80000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_21;
        }
      }

      else if ((*(v4 - 41) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      operator delete(*(v4 - 8));
      if ((*(v4 - 65) & 0x80000000) == 0)
      {
LABEL_17:
        v8 = (v4 - 112);
        if (*(v4 - 89) < 0)
        {
          goto LABEL_22;
        }

        goto LABEL_13;
      }

LABEL_21:
      operator delete(*(v4 - 11));
      v8 = (v4 - 112);
      if (*(v4 - 89) < 0)
      {
LABEL_22:
        operator delete(*v8);
      }

LABEL_13:
      v4 = v8;
      if (v8 == v5)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:

  LogDumpDB::commitToDisk(this);
}

void LogDumpDB::queryLogDumpDB(LogDumpDB *this, xpc_object_t *a2)
{
  if (*(this + 4) != *(this + 3))
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    v4 = MEMORY[0x29EDCAA00];
    if (v3 || (v3 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26F9F0](v3) == v4)
      {
        xpc_retain(v3);
        v5 = v3;
      }

      else
      {
        v5 = xpc_null_create();
      }
    }

    else
    {
      v5 = xpc_null_create();
      v3 = 0;
    }

    xpc_release(v3);
    v6 = xpc_null_create();
    v7 = *a2;
    *a2 = v5;
    xpc_release(v7);
    xpc_release(v6);
    v8 = xpc_array_create(0, 0);
    v9 = MEMORY[0x29EDCA9E0];
    if (v8 || (v8 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26F9F0](v8) == v9)
      {
        xpc_retain(v8);
        v10 = v8;
      }

      else
      {
        v10 = xpc_null_create();
      }
    }

    else
    {
      v10 = xpc_null_create();
      v8 = 0;
    }

    xpc_release(v8);
    if (MEMORY[0x29C26F9F0](v10) != v9)
    {
      v11 = *(this + 1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_297288000, v11, OS_LOG_TYPE_ERROR, "Failed to create xpc array for querying logdump DB", &buf, 2u);
      }

LABEL_81:
      xpc_release(v10);
      return;
    }

    v12 = *(this + 3);
    if (v12 == *(this + 4))
    {
LABEL_77:
      if (v10)
      {
        xpc_retain(v10);
        v35 = v10;
      }

      else
      {
        v35 = xpc_null_create();
      }

      xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE868], v35);
      v36 = xpc_null_create();
      xpc_release(v35);
      xpc_release(v36);
      goto LABEL_81;
    }

    key = *MEMORY[0x29EDBEC80];
    v40 = *MEMORY[0x29EDBEEE0];
    v39 = *MEMORY[0x29EDBED78];
    v38 = *MEMORY[0x29EDBEB00];
    v13 = *MEMORY[0x29EDBEF60];
    while (1)
    {
      v14 = xpc_dictionary_create(0, 0, 0);
      if (v14 || (v14 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C26F9F0](v14) == v4)
        {
          xpc_retain(v14);
          v15 = v14;
        }

        else
        {
          v15 = xpc_null_create();
        }
      }

      else
      {
        v15 = xpc_null_create();
        v14 = 0;
      }

      xpc_release(v14);
      if (MEMORY[0x29C26F9F0](v15) == v4)
      {
        break;
      }

      v16 = *(this + 1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_297288000, v16, OS_LOG_TYPE_ERROR, "Failed to create xpc dictionary for querying logdump DB", &buf, 2u);
      }

LABEL_76:
      xpc_release(v15);
      v12 += 7;
      if (v12 == *(this + 4))
      {
        goto LABEL_77;
      }
    }

    v17 = *(v12 + 9);
    v18 = operator new(0x38uLL);
    v18[8] = 0;
    *v18 = 0;
    *(v18 + 1) = 0;
    *(v18 + 2) = &buf.__r_.__value_.__l.__size_;
    buf.__r_.__value_.__r.__words[0] = v18;
    buf.__r_.__value_.__l.__size_ = v18;
    *(v18 + 24) = 1;
    buf.__r_.__value_.__r.__words[2] = 1;
    *(v18 + 5) = v17;
    *(v18 + 6) = 0xAAAAAAAA00000000;
    Timestamp::asString(&buf, 0, 9, __p);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&buf, buf.__r_.__value_.__l.__size_);
    if (v43 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    v20 = xpc_string_create(v19);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    xpc_dictionary_set_value(v15, key, v20);
    v21 = xpc_null_create();
    xpc_release(v20);
    xpc_release(v21);
    if (v43 < 0)
    {
      operator delete(__p[0]);
      if ((*(v12 + 47) & 0x80000000) == 0)
      {
        goto LABEL_35;
      }
    }

    else if ((*(v12 + 47) & 0x80000000) == 0)
    {
LABEL_35:
      buf = *(v12 + 1);
      goto LABEL_38;
    }

    std::string::__init_copy_ctor_external(&buf, *(v12 + 3), *(v12 + 4));
LABEL_38:
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v23 = xpc_string_create(p_buf);
    if (!v23)
    {
      v23 = xpc_null_create();
    }

    xpc_dictionary_set_value(v15, v40, v23);
    v24 = xpc_null_create();
    xpc_release(v23);
    xpc_release(v24);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
      if ((*(v12 + 111) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }
    }

    else if ((*(v12 + 111) & 0x80000000) == 0)
    {
LABEL_45:
      buf = *(v12 + 88);
      goto LABEL_48;
    }

    std::string::__init_copy_ctor_external(&buf, *(v12 + 11), *(v12 + 12));
LABEL_48:
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &buf;
    }

    else
    {
      v25 = buf.__r_.__value_.__r.__words[0];
    }

    v26 = xpc_string_create(v25);
    if (!v26)
    {
      v26 = xpc_null_create();
    }

    xpc_dictionary_set_value(v15, v39, v26);
    v27 = xpc_null_create();
    xpc_release(v26);
    xpc_release(v27);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
      if ((*(v12 + 23) & 0x80000000) == 0)
      {
        goto LABEL_55;
      }
    }

    else if ((*(v12 + 23) & 0x80000000) == 0)
    {
LABEL_55:
      v28 = *v12;
      buf.__r_.__value_.__r.__words[2] = *(v12 + 2);
      *&buf.__r_.__value_.__l.__data_ = v28;
      goto LABEL_58;
    }

    std::string::__init_copy_ctor_external(&buf, *v12, *(v12 + 1));
LABEL_58:
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &buf;
    }

    else
    {
      v29 = buf.__r_.__value_.__r.__words[0];
    }

    v30 = xpc_string_create(v29);
    if (!v30)
    {
      v30 = xpc_null_create();
    }

    xpc_dictionary_set_value(v15, v38, v30);
    v31 = xpc_null_create();
    xpc_release(v30);
    xpc_release(v31);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
      if ((*(v12 + 71) & 0x80000000) == 0)
      {
        goto LABEL_65;
      }
    }

    else if ((*(v12 + 71) & 0x80000000) == 0)
    {
LABEL_65:
      buf = *(v12 + 2);
LABEL_68:
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &buf;
      }

      else
      {
        v32 = buf.__r_.__value_.__r.__words[0];
      }

      v33 = xpc_string_create(v32);
      if (!v33)
      {
        v33 = xpc_null_create();
      }

      xpc_dictionary_set_value(v15, v13, v33);
      v34 = xpc_null_create();
      xpc_release(v33);
      xpc_release(v34);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      xpc_array_append_value(v10, v15);
      goto LABEL_76;
    }

    std::string::__init_copy_ctor_external(&buf, *(v12 + 6), *(v12 + 7));
    goto LABEL_68;
  }
}

void ***std::vector<ResetInfo>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_15:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        if ((*(v3 - 41) & 0x80000000) == 0)
        {
LABEL_7:
          if ((*(v3 - 65) & 0x80000000) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_12;
        }
      }

      else if ((*(v3 - 41) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*(v3 - 8));
      if ((*(v3 - 65) & 0x80000000) == 0)
      {
LABEL_8:
        v5 = v3 - 14;
        if (*(v3 - 89) < 0)
        {
          goto LABEL_13;
        }

        goto LABEL_4;
      }

LABEL_12:
      operator delete(*(v3 - 11));
      v5 = v3 - 14;
      if (*(v3 - 89) < 0)
      {
LABEL_13:
        operator delete(*v5);
      }

LABEL_4:
      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_15;
      }
    }
  }

  return a1;
}

std::string::value_type *std::vector<ResetInfo>::__emplace_back_slow_path<ResetInfo const&>(const ResetInfo **a1, const ResetInfo *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v5 = 0x249249249249249;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 > 0x249249249249249)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v6 = a2;
    v7 = operator new(112 * v5);
    a2 = v6;
  }

  else
  {
    v7 = 0;
  }

  v16 = &v7[112 * v2];
  v17 = &v7[112 * v5];
  ResetInfo::ResetInfo(v16, a2);
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 - v9;
  v11 = (v16 + v10);
  if (*a1 != v9)
  {
    v12 = 0;
    v13 = *a1;
    v14 = (v16 + v10);
    do
    {
      ResetInfo::ResetInfo(v14, v13);
      v13 = (v13 + 112);
      v14 = (v14 + 112);
      v12 -= 112;
    }

    while (v13 != v9);
    while (1)
    {
      if (*(v8 + 111) < 0)
      {
        operator delete(*(v8 + 11));
        if ((*(v8 + 71) & 0x80000000) == 0)
        {
LABEL_18:
          if ((*(v8 + 47) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_23;
        }
      }

      else if ((*(v8 + 71) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(*(v8 + 6));
      if ((*(v8 + 47) & 0x80000000) == 0)
      {
LABEL_19:
        if (*(v8 + 23) < 0)
        {
          goto LABEL_24;
        }

        goto LABEL_15;
      }

LABEL_23:
      operator delete(*(v8 + 3));
      if (*(v8 + 23) < 0)
      {
LABEL_24:
        operator delete(*v8);
      }

LABEL_15:
      v8 = (v8 + 112);
      if (v8 == v9)
      {
        v8 = *a1;
        break;
      }
    }
  }

  *a1 = v11;
  a1[1] = &v16[4].__r_.__value_.__r.__words[2];
  a1[2] = v17;
  if (v8)
  {
    operator delete(v8);
  }

  return &v16[4].__r_.__value_.__s.__data_[16];
}

void sub_2972CC858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ResetInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_2972CC86C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v3)
  {
    v5 = (v2 - 112);
    do
    {
      ResetInfo::~ResetInfo(v5);
      v5 = (v6 - 112);
      v3 += 112;
    }

    while (v3);
  }

  std::__split_buffer<ResetInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<ResetInfo>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      if ((*(i - 41) & 0x80000000) == 0)
      {
LABEL_6:
        if (*(i - 65) < 0)
        {
          goto LABEL_11;
        }

        goto LABEL_7;
      }
    }

    else if ((*(i - 41) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(i - 64));
    if (*(i - 65) < 0)
    {
LABEL_11:
      operator delete(*(i - 88));
      if ((*(i - 89) & 0x80000000) == 0)
      {
        continue;
      }

      goto LABEL_12;
    }

LABEL_7:
    if ((*(i - 89) & 0x80000000) == 0)
    {
      continue;
    }

LABEL_12:
    operator delete(*(i - 112));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t ctu::cf::insert<char const*,std::string>(__CFDictionary *a1, const __CFString **a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5)
{
  value = 0;
  ctu::cf::convert_copy(&value, a2, 0x8000100, a4, a5);
  v6 = value;
  value = 0;
  ctu::cf::convert_copy();
  v7 = value;
  if (v6)
  {
    v8 = value == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v8)
  {
    if (!value)
    {
      goto LABEL_11;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, v6, value);
  }

  CFRelease(v7);
LABEL_11:
  if (v6)
  {
    CFRelease(v6);
  }

  return v9;
}

void sub_2972CCA34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_2972CCA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

BOOL LogDumpDB::writeToDB(ResetInfo const&,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator()(uint64_t a1, const ResetInfo *a2)
{
  v37 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  result = LogDumpDB::checkIfDuplicatedSignature(*a1, a2, (a1 + 16));
  if (result)
  {
    v6 = *(a2 + 9);
    if (*(a1 + 88) - v6 < *(a1 + 128))
    {
      v7 = *(v4 + 1);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
LABEL_24:
        result = 1;
        **(a1 + 8) = 1;
        goto LABEL_25;
      }

      v8 = operator new(0x38uLL);
      v8[8] = 0;
      *v8 = 0;
      *(v8 + 1) = 0;
      *(v8 + 2) = &v24.__r_.__value_.__l.__size_;
      v24.__r_.__value_.__r.__words[0] = v8;
      v24.__r_.__value_.__l.__size_ = v8;
      *(v8 + 24) = 1;
      v24.__r_.__value_.__r.__words[2] = 1;
      *(v8 + 5) = v6;
      *(v8 + 6) = 0xAAAAAAAA00000000;
      v9 = v22;
      Timestamp::asString(&v24, 0, 9, v22);
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v24, v24.__r_.__value_.__l.__size_);
      if (v23 < 0)
      {
        v9 = v22[0];
      }

      v10 = *(a1 + 88);
      v11 = operator new(0x38uLL);
      v11[8] = 0;
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = &v24.__r_.__value_.__l.__size_;
      v24.__r_.__value_.__r.__words[0] = v11;
      v24.__r_.__value_.__l.__size_ = v11;
      *(v11 + 24) = 1;
      v24.__r_.__value_.__r.__words[2] = 1;
      *(v11 + 5) = v10;
      *(v11 + 6) = 0xAAAAAAAA00000000;
      Timestamp::asString(&v24, 0, 9, v20);
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v24, v24.__r_.__value_.__l.__size_);
      if (v21 >= 0)
      {
        v12 = v20;
      }

      else
      {
        v12 = v20[0];
      }

      v13 = *(a1 + 88);
      if (*(a1 + 87) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, *(a1 + 64), *(a1 + 72));
      }

      else
      {
        v24 = *(a1 + 64);
      }

      v14 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
      v15 = v24.__r_.__value_.__r.__words[0];
      if (*(a1 + 127) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(a1 + 104), *(a1 + 112));
      }

      else
      {
        __p = *(a1 + 104);
      }

      v16 = &v24;
      if (v14 < 0)
      {
        v16 = v15;
      }

      p_p = &__p;
      *buf = 136316418;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v26 = v9;
      v27 = 2050;
      v28 = v6;
      v29 = 2080;
      v30 = v12;
      v31 = 2050;
      v32 = v13;
      v33 = 2082;
      v34 = v16;
      v35 = 2082;
      v36 = p_p;
      _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I Found duplicated log at timestamp: %s[%{public}llu], new log timestamp: %s[%{public}llu], dump reason: %{public}s, crash reason: %{public}s", buf, 0x3Eu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_22:
          if ((v21 & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_28;
        }
      }

      else if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      operator delete(v24.__r_.__value_.__l.__data_);
      if ((v21 & 0x80000000) == 0)
      {
LABEL_23:
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

LABEL_29:
        operator delete(v22[0]);
        goto LABEL_24;
      }

LABEL_28:
      operator delete(v20[0]);
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }

    result = 0;
  }

LABEL_25:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2972CCD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a24 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a19);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a13);
  if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

_OWORD *ResetInfo::operator=(_OWORD *result, void *a2)
{
  v2 = a2;
  v3 = result;
  if (result == a2)
  {
    v7 = a2[9];
    *(result + 20) = *(a2 + 20);
    *(result + 9) = v7;
    return result;
  }

  if (*(result + 23) < 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v8 = v2[1];
    }

    std::string::__assign_no_alias<false>(result, a2, v8);
    v5 = v2 + 3;
    v6 = *(v2 + 47);
    if (*(v3 + 47) < 0)
    {
LABEL_15:
      if ((v6 & 0x80u) == 0)
      {
        v12 = v5;
      }

      else
      {
        v12 = v2[3];
      }

      if ((v6 & 0x80u) == 0)
      {
        v13 = v6;
      }

      else
      {
        v13 = v2[4];
      }

      std::string::__assign_no_alias<false>((v3 + 24), v12, v13);
      v10 = v2 + 6;
      v11 = *(v2 + 71);
      if ((*(v3 + 71) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_25:
      if ((v11 & 0x80u) == 0)
      {
        v15 = v10;
      }

      else
      {
        v15 = v2[6];
      }

      if ((v11 & 0x80u) == 0)
      {
        v16 = v11;
      }

      else
      {
        v16 = v2[7];
      }

      std::string::__assign_no_alias<false>((v3 + 48), v15, v16);
      goto LABEL_33;
    }
  }

  else if ((*(a2 + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(result, *a2, a2[1]);
    v5 = v2 + 3;
    v6 = *(v2 + 47);
    if (*(v3 + 47) < 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = *a2;
    *(result + 2) = a2[2];
    *result = v4;
    v5 = a2 + 3;
    v6 = *(a2 + 47);
    if (*(result + 47) < 0)
    {
      goto LABEL_15;
    }
  }

  if ((v6 & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>((v3 + 24), v2[3], v2[4]);
    v10 = v2 + 6;
    v11 = *(v2 + 71);
    if (*(v3 + 71) < 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v9 = *v5;
    *(v3 + 40) = v5[2];
    *(v3 + 24) = v9;
    v10 = v2 + 6;
    v11 = *(v2 + 71);
    if (*(v3 + 71) < 0)
    {
      goto LABEL_25;
    }
  }

LABEL_22:
  if ((v11 & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>((v3 + 48), v2[6], v2[7]);
  }

  else
  {
    v14 = *v10;
    *(v3 + 64) = v10[2];
    *(v3 + 48) = v14;
  }

LABEL_33:
  v17 = v2[9];
  *(v3 + 80) = *(v2 + 20);
  *(v3 + 72) = v17;
  v18 = *(v2 + 111);
  if (*(v3 + 111) < 0)
  {
    if (v18 >= 0)
    {
      v20 = v2 + 11;
    }

    else
    {
      v20 = v2[11];
    }

    if (v18 >= 0)
    {
      v21 = *(v2 + 111);
    }

    else
    {
      v21 = v2[12];
    }

    std::string::__assign_no_alias<false>((v3 + 88), v20, v21);
    return v3;
  }

  else
  {
    if ((*(v2 + 111) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((v3 + 88), v2[11], v2[12]);
    }

    else
    {
      v19 = *(v2 + 11);
      *(v3 + 104) = v2[13];
      *(v3 + 88) = v19;
    }

    return v3;
  }
}

void ResetInfo::ResetInfo(std::string *this, const ResetInfo *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
      *&this[1].__r_.__value_.__l.__data_ = v5;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
LABEL_6:
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  v7 = *(a2 + 9);
  LODWORD(this[3].__r_.__value_.__r.__words[1]) = *(a2 + 20);
  this[3].__r_.__value_.__r.__words[0] = v7;
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v8 = *(a2 + 88);
    this[4].__r_.__value_.__l.__size_ = *(a2 + 13);
    *&this[3].__r_.__value_.__r.__words[2] = v8;
  }
}