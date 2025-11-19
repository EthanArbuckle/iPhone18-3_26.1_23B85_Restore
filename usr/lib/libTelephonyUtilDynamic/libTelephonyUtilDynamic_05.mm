unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_125;
    }

    v5 = (a2[1] == 94 ? a2 + 2 : a2 + 1);
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_125;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 == a3)
    {
      v8 = v5;
LABEL_13:
      if (v8 != a3)
      {
        if (*v8 == 45)
        {
          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
          ++v8;
        }

        if (v8 != a3 && *v8 == 93)
        {
          return v8 + 1;
        }
      }

LABEL_125:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    while (1)
    {
      v8 = v5;
      v10 = v5;
      if (v5 == a3)
      {
        goto LABEL_112;
      }

      v11 = *v5;
      v10 = v5;
      if (v11 == 93)
      {
        goto LABEL_112;
      }

      v12 = 0;
      v13 = (v5 + 1);
      v42[0] = 0;
      v42[1] = 0;
      v43 = 0;
      v14 = 0;
      v10 = v8;
      if (v8 + 1 == a3 || v11 != 91)
      {
        goto LABEL_46;
      }

      v15 = *v13;
      switch(v15)
      {
        case '.':
          v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v8 + 2, a3, v42);
          v14 = HIBYTE(v43);
          v12 = v42[1];
          goto LABEL_46;
        case ':':
          LOWORD(__src[0]) = 23866;
          v20 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v8 + 2, a3, __src, __src + 2);
          if (v20 == a3)
          {
LABEL_126:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
          }

          v17 = v20;
          v21 = *(a1 + 24);
          memset(__p, 170, sizeof(__p));
          std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, v8 + 2, v20, v20 - (v8 + 2));
          v22 = HIBYTE(__p[2]);
          if (SHIBYTE(__p[2]) >= 0)
          {
            v23 = __p;
          }

          else
          {
            v23 = __p[0];
          }

          if (SHIBYTE(__p[2]) < 0)
          {
            v22 = __p[1];
          }

          (*(**(a1 + 8) + 48))(*(a1 + 8), v23, &v22[v23]);
          if (SHIBYTE(__p[2]) >= 0)
          {
            v24 = __p;
          }

          else
          {
            v24 = __p[0];
          }

          classname = std::__get_classname(v24, v21 & 1);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          if (!classname)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
          }

          v26 = 0;
          *(v7 + 160) |= classname;
          break;
        case '=':
          LOWORD(v40[0]) = 23869;
          v16 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v8 + 2, a3, v40, v40 + 2);
          if (v16 == a3)
          {
            goto LABEL_126;
          }

          v17 = v16;
          memset(__p, 170, sizeof(__p));
          std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(__p, a1, v8 + 2, v16);
          v18 = SHIBYTE(__p[2]);
          if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
          {
            v18 = __p[1];
            if (!__p[1])
            {
LABEL_127:
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
            }

            memset(__src, 170, sizeof(__src));
            v19 = __p[0];
          }

          else
          {
            if (!HIBYTE(__p[2]))
            {
              goto LABEL_127;
            }

            v19 = __p;
            memset(__src, 170, sizeof(__src));
          }

          std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(__src, a1, v19, v18 + v19);
          v30 = HIBYTE(__src[2]);
          if (SHIBYTE(__src[2]) < 0)
          {
            v30 = __src[1];
          }

          if (v30)
          {
            std::vector<std::string>::push_back[abi:ne200100](v7 + 136, __src);
          }

          else
          {
            v31 = HIBYTE(__p[2]);
            if (SHIBYTE(__p[2]) < 0)
            {
              v31 = __p[1];
            }

            if (v31 == 2)
            {
              if (SHIBYTE(__p[2]) >= 0)
              {
                v38 = __p;
              }

              else
              {
                v38 = __p[0];
              }

              std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v38, *(v38 + 1));
            }

            else
            {
              if (v31 != 1)
              {
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
              }

              if (SHIBYTE(__p[2]) >= 0)
              {
                v32 = __p;
              }

              else
              {
                v32 = __p[0];
              }

              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v32);
            }
          }

          if (SHIBYTE(__src[2]) < 0)
          {
            operator delete(__src[0]);
          }

          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          v26 = 0;
          break;
        default:
          v12 = 0;
          v14 = 0;
          v10 = v8;
LABEL_46:
          v5 = *(a1 + 24) & 0x1F0;
          if (v14 >= 0)
          {
            v12 = v14;
          }

          if (!v12)
          {
            if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
            {
              v27 = *v10;
              if (v27 == 92)
              {
                if ((*(a1 + 24) & 0x1F0) != 0)
                {
                  v28 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v10 + 1, a3, v42);
                }

                else
                {
                  v28 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v10 + 1, a3, v42, v7);
                }

                v10 = v28;
                goto LABEL_74;
              }
            }

            else
            {
              LOBYTE(v27) = *v10;
            }

            if (v14 < 0)
            {
              v29 = v42[0];
              v42[1] = 1;
            }

            else
            {
              HIBYTE(v43) = 1;
              v29 = v42;
            }

            *v29 = v27;
            *(v29 + 1) = 0;
            ++v10;
          }

LABEL_74:
          if (v10 != a3)
          {
            v33 = *v10;
            if (v33 != 93)
            {
              v35 = v10 + 1;
              if (v10 + 1 != a3 && v33 == 45)
              {
                v36 = *v35;
                if (v36 != 93)
                {
                  memset(__p, 0, sizeof(__p));
                  v10 += 2;
                  if (v35 + 1 != a3 && v36 == 91 && *v10 == 46)
                  {
                    v37 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v35 + 2, a3, __p);
                    goto LABEL_118;
                  }

                  if ((v5 | 0x40) == 0x40 && v36 == 92)
                  {
                    if (v5)
                    {
                      v37 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v10, a3, __p);
                    }

                    else
                    {
                      v37 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v10, a3, __p, v7);
                    }

LABEL_118:
                    v10 = v37;
                  }

                  else
                  {
                    HIBYTE(__p[2]) = 1;
                    LOWORD(__p[0]) = v36;
                  }

                  *__src = *v42;
                  v39 = v43;
                  v42[1] = 0;
                  v43 = 0;
                  *v40 = *__p;
                  v41 = __p[2];
                  v42[0] = 0;
                  __src[2] = v39;
                  memset(__p, 0, sizeof(__p));
                  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v7, __src, v40);
                  if (SHIBYTE(v41) < 0)
                  {
                    operator delete(v40[0]);
                  }

                  if (SHIBYTE(__src[2]) < 0)
                  {
                    operator delete(__src[0]);
                  }

                  if (SHIBYTE(__p[2]) < 0)
                  {
                    operator delete(__p[0]);
                  }

LABEL_93:
                  v26 = 1;
                  goto LABEL_110;
                }
              }
            }
          }

          if (SHIBYTE(v43) < 0)
          {
            if (!v42[1])
            {
              operator delete(v42[0]);
LABEL_112:
              v5 = v10;
              goto LABEL_113;
            }

            if (v42[1] != 1)
            {
              v34 = v42[0];
LABEL_92:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v34, v34[1]);
              goto LABEL_93;
            }

            v34 = v42[0];
          }

          else
          {
            if (!HIBYTE(v43))
            {
              goto LABEL_112;
            }

            v34 = v42;
            if (HIBYTE(v43) != 1)
            {
              goto LABEL_92;
            }
          }

          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v34);
          goto LABEL_93;
      }

      v5 = (v17 + 2);
      v10 = v8;
LABEL_110:
      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42[0]);
        if ((v26 & 1) == 0)
        {
          goto LABEL_113;
        }

        goto LABEL_112;
      }

      if (v26)
      {
        goto LABEL_112;
      }

LABEL_113:
      if (v8 == v5)
      {
        goto LABEL_13;
      }
    }
  }

  return a2;
}

void sub_1A9127028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

char *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 <= 0x71)
  {
    if (*a2 > 0x65u)
    {
      if (v5 == 102)
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

          v17 = 12;
          goto LABEL_92;
        }

        v8 = 12;
        goto LABEL_77;
      }

      if (v5 == 110)
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

          v17 = 10;
          goto LABEL_92;
        }

        v8 = 10;
        goto LABEL_77;
      }
    }

    else
    {
      switch(v5)
      {
        case '0':
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

            *a4 = 0;
            return ++v4;
          }

          v8 = 0;
          goto LABEL_77;
        case 'c':
          v4 = a2 + 1;
          if (a2 + 1 == a3)
          {
            goto LABEL_95;
          }

          if (*v4 < 65)
          {
            goto LABEL_95;
          }

          v7 = *v4;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_95;
          }

          v8 = v7 & 0x1F;
LABEL_74:
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

            *a4 = v8;
            *(a4 + 1) = 0;
            return ++v4;
          }

          goto LABEL_77;
        case '_':
          goto LABEL_95;
      }
    }

    goto LABEL_72;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 == 114)
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

        v17 = 13;
        goto LABEL_92;
      }

      v8 = 13;
      goto LABEL_77;
    }

    if (v5 == 116)
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

        v17 = 9;
        goto LABEL_92;
      }

      v8 = 9;
LABEL_77:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
      return ++v4;
    }

LABEL_72:
    v8 = v5;
    if ((v5 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
    {
      goto LABEL_95;
    }

    goto LABEL_74;
  }

  if (v5 != 117)
  {
    if (v5 != 118)
    {
      if (v5 == 120)
      {
        v6 = 0;
        goto LABEL_45;
      }

      goto LABEL_72;
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

      v17 = 11;
LABEL_92:
      *a4 = v17;
      return ++v4;
    }

    v8 = 11;
    goto LABEL_77;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_95;
  }

  v9 = a2[1];
  if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
  {
    goto LABEL_95;
  }

  v4 = a2 + 2;
  if (a2 + 2 == a3)
  {
    goto LABEL_95;
  }

  v10 = *v4;
  v11 = -48;
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
  {
    v10 |= 0x20u;
    if ((v10 - 97) >= 6)
    {
      goto LABEL_95;
    }

    v11 = -87;
  }

  v6 = 16 * (v11 + v10);
LABEL_45:
  if (v4 + 1 == a3)
  {
    goto LABEL_95;
  }

  v12 = v4[1];
  v13 = -48;
  if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
  {
    v12 |= 0x20u;
    if ((v12 - 97) >= 6)
    {
      goto LABEL_95;
    }

    v13 = -87;
  }

  if (v4 + 2 == a3)
  {
    goto LABEL_95;
  }

  v14 = v4[2];
  v15 = -48;
  if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
  {
    goto LABEL_55;
  }

  v14 |= 0x20u;
  if ((v14 - 97) >= 6)
  {
LABEL_95:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v15 = -87;
LABEL_55:
  v16 = v14 + 16 * (v6 + v13 + v12) + v15;
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

    *a4 = v16;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v16);
  }

  v4 += 3;
  return v4;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v15 = 23854;
  v8 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(a2, a3, &v15, &v16);
  if (v8 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = v8;
  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(&v13, a1, a2, v8);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v13;
  v10 = v14;
  *(a4 + 16) = v14;
  v11 = HIBYTE(v10);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a4 + 8);
  }

  if (v11 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v9 + 2;
}

char *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
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
          return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return (a2 + 1);
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
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
        return (a2 + 1);
      }

      if (v6 != 100)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return (a2 + 1);
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
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
      return (a2 + 1);
    }

    if (v6 == 68)
    {
      v7 = *(a5 + 164) | 0x400;
LABEL_22:
      *(a5 + 164) = v7;
      return (a2 + 1);
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_22;
  }

  if (v6 != 87)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
  }

  *(a5 + 164) |= 0x500u;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5);
  return (a2 + 1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_82:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
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

          v11 = 12;
          goto LABEL_77;
        }

        v5 = 12;
        goto LABEL_61;
      }

      if (v5 == 110)
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

          v11 = 10;
          goto LABEL_77;
        }

        v5 = 10;
        goto LABEL_61;
      }
    }

    else
    {
      switch(v5)
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

            v11 = 13;
            goto LABEL_77;
          }

          v5 = 13;
          goto LABEL_61;
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

            v11 = 9;
            goto LABEL_77;
          }

          v5 = 9;
          goto LABEL_61;
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

            v11 = 11;
            goto LABEL_77;
          }

          v5 = 11;
          goto LABEL_61;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
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

    goto LABEL_61;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
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

        v11 = 7;
        goto LABEL_77;
      }

      v5 = 7;
LABEL_61:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
      return a2 + 1;
    case 'b':
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

        v11 = 8;
LABEL_77:
        *a4 = v11;
        return a2 + 1;
      }

      v5 = 8;
      goto LABEL_61;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_82;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3)
  {
    if ((*v7 & 0xF8) != 0x30)
    {
      goto LABEL_51;
    }

    v6 = *v7 + 8 * v6 - 48;
    if (a2 + 2 != a3)
    {
      v8 = a2[2];
      v9 = v8 & 0xF8;
      v10 = v8 + 8 * v6 - 48;
      if (v9 == 48)
      {
        v7 = a2 + 3;
      }

      else
      {
        v7 = a2 + 2;
      }

      if (v9 == 48)
      {
        v6 = v10;
      }

      goto LABEL_51;
    }
  }

  v7 = a3;
LABEL_51:
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

    *a4 = v6;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
  }

  return v7;
}

unsigned __int8 *std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(unsigned __int8 *result, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4 - a3;
  if (a4 != a3)
  {
    if (a2 - result < v4)
    {
      return a2;
    }

    v5 = a2 - v4 + 1;
    if (v5 == result)
    {
      return a2;
    }

    else
    {
      v8 = *a3;
      v6 = a3 + 1;
      v7 = v8;
      while (*result != v7)
      {
LABEL_11:
        if (++result == v5)
        {
          return a2;
        }
      }

      v9 = result + 1;
      v10 = v6;
      while (v10 != a4)
      {
        v12 = *v9++;
        v11 = v12;
        v13 = *v10++;
        if (v11 != v13)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

void std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(uint64_t a1, uint64_t a2, void *__src, uint64_t a4)
{
  memset(&__s, 170, sizeof(__s));
  std::string::__init_with_size[abi:ne200100]<char *,char *>(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    p_s = __s.__r_.__value_.__r.__words[0];
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_10;
    }
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
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    goto LABEL_8;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    p_s = __s.__r_.__value_.__r.__words[0];
    if (__s.__r_.__value_.__l.__size_ < 3)
    {
      goto LABEL_16;
    }

LABEL_10:
    operator delete(p_s);
    return;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 3)
  {
LABEL_16:
    (*(**(a2 + 16) + 32))(&v11);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = v11;
    if (*(a1 + 23) < 0)
    {
      v10 = *(a1 + 8);
      if (v10 != 1 && v10 != 12)
      {
        **a1 = 0;
        *(a1 + 8) = 0;
        goto LABEL_8;
      }
    }

    else
    {
      v9 = *(a1 + 23);
      if (v9 != 12 && v9 != 1)
      {
        *a1 = 0;
        *(a1 + 23) = 0;
LABEL_8:
        if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        p_s = __s.__r_.__value_.__r.__words[0];
        goto LABEL_10;
      }
    }

    std::string::operator=(a1, &__s);
    goto LABEL_8;
  }
}

void sub_1A9127B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result == a2)
      {
        return a2;
      }

      else
      {
        while (1)
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          if (++result == a2)
          {
            return a2;
          }
        }
      }
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a3;
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v9 = a2 + 1;
  v8 = *a2;
  if (a2 + 1 == a3 && v8 == 36 || ((v8 - 46) <= 0x2E ? (v10 = ((1 << (v8 - 46)) & 0x600000000001) == 0) : (v10 = 1), !v10))
  {
    v11 = a2;
    if (v9 != a3)
    {
      v12 = *a2;
      if (v12 != 92)
      {
        v11 = a2;
LABEL_18:
        if (v12 == 46)
        {
          v15 = operator new(0x10uLL);
          v16 = a1->__end_;
          first = v16->__first_;
          v15->__vftable = &unk_1F1CB5390;
          v15[1].__vftable = first;
          v16->__first_ = v15;
          a1->__end_ = a1->__end_->__first_;
          ++v11;
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v13 = *v9;
      if ((v13 - 36) > 0x3A || ((1 << (v13 - 36)) & 0x580000000000441) == 0)
      {
LABEL_20:
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, v3, v4);
        goto LABEL_21;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v13);
      v11 = v3 + 2;
      if (v3 + 2 != v3)
      {
        goto LABEL_42;
      }
    }

    v12 = *v11;
    goto LABEL_18;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  v11 = v3 + 1;
LABEL_21:
  if (v11 == v3)
  {
    if (v9 == v4 || *v11 != 92)
    {
      return v3;
    }

    v18 = v3[1];
    if (v18 == 40)
    {
      v19 = (v3 + 2);
    }

    else
    {
      v19 = v11;
    }

    if (v19 == v3)
    {
      if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v18))
      {
        v11 = v3 + 2;
      }

      goto LABEL_42;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
    v20 = a1->__marked_count_;
    do
    {
      v21 = v19;
      v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(a1, v19, v4);
    }

    while (v21 != v19);
    v11 = v4;
    if (v21 != v4)
    {
      if (v21 + 1 == v4 || *v21 != 92)
      {
        goto LABEL_77;
      }

      if (v21[1] == 41)
      {
        v11 = v21 + 2;
      }

      else
      {
        v11 = v21;
      }
    }

    if (v11 != v21)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v20);
      goto LABEL_42;
    }

LABEL_77:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_42:
  if (v11 != v3)
  {
    if (v11 == v4)
    {
      return v4;
    }

    v22 = a1->__marked_count_ + 1;
    v23 = *v11;
    if (v23 == 42)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
      return v11 + 1;
    }

    if (v11 + 1 == v4 || v23 != 92)
    {
      return v11;
    }

    v24 = v11[1] == 123 ? v11 + 2 : v11;
    v3 = v11;
    if (v11 != v24)
    {
      v33 = 0;
      v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v24, v4, &v33);
      if (v25 == v24)
      {
        goto LABEL_79;
      }

      if (v25 != v4)
      {
        v26 = *v25;
        if (v26 == 44)
        {
          v32 = -1;
          v27 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v25 + 1, v4, &v32);
          if (v27 != v4)
          {
            if (v27 + 1 == v4 || *v27 != 92)
            {
              goto LABEL_78;
            }

            if (v27[1] == 125)
            {
              v4 = v27 + 2;
            }

            else
            {
              v4 = v27;
            }
          }

          if (v4 != v27)
          {
            v29 = v32;
            v28 = v33;
            if (v32 == -1)
            {
              v30 = a1;
              v29 = -1;
              goto LABEL_76;
            }

            if (v32 >= v33)
            {
              v30 = a1;
LABEL_76:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(v30, v28, v29, end, marked_count + 1, v22, 1);
              return v4;
            }

LABEL_79:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }
        }

        else if (v25 + 1 != v4 && v26 == 92)
        {
          v4 = v25[1] == 125 ? v25 + 2 : v25;
          if (v25 != v4)
          {
            v28 = v33;
            v30 = a1;
            v29 = v33;
            goto LABEL_76;
          }
        }
      }

LABEL_78:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v6, a3);
  }

  while (v7 != v6);
  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (a2 == a3)
  {
LABEL_2:
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(this, a2, a3);
    goto LABEL_16;
  }

  v9 = *a2;
  v10 = (v9 - 36);
  if (v10 > 0x3A)
  {
    goto LABEL_35;
  }

  v8 = a2;
  if (((1 << (v9 - 36)) & 0x5800000080004D1) == 0)
  {
    if (v10 == 5)
    {
      v8 = a2;
      if (this->__open_count_)
      {
        goto LABEL_5;
      }

      LOBYTE(v9) = 41;
LABEL_36:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v9);
      v8 = a2 + 1;
      goto LABEL_5;
    }

LABEL_35:
    v8 = a2;
    if ((v9 - 123) < 2)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_5:
  if (v8 == a2)
  {
    v11 = (a2 + 1);
    if (a2 + 1 == a3 || *a2 != 92)
    {
      v8 = a2;
    }

    else if ((v12 = *v11, v13 = *v11, (v12 - 36) <= 0x3A) && ((1 << (v12 - 36)) & 0x5800000080004F1) != 0 || (v12 - 123) < 3)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v13);
      v8 = a2 + 2;
    }

    else if ((this->__flags_ & 0x1F0) == 0x40)
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(this, a2 + 1, a3, 0);
    }

    else
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(this, v13) ? a2 + 2 : a2;
    }

    if (v8 == a2)
    {
      if (*v8 == 46)
      {
        v14 = operator new(0x10uLL);
        v15 = this->__end_;
        first = v15->__first_;
        v14->__vftable = &unk_1F1CB5390;
        v14[1].__vftable = first;
        v15->__first_ = v14;
        this->__end_ = this->__end_->__first_;
        ++v8;
        goto LABEL_16;
      }

      goto LABEL_2;
    }
  }

LABEL_16:
  if (v8 == a2 && v8 != a3)
  {
    v17 = *v8;
    switch(v17)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
        v18 = this->__marked_count_;
        ++this->__open_count_;
        v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(this, v8 + 1, a3);
        if (v19 == a3 || (v8 = v19, *v19 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v18);
        --this->__open_count_;
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
        break;
      default:
        goto LABEL_27;
    }

    ++v8;
  }

LABEL_27:
  if (v8 == a2)
  {
    return a2;
  }

  v20 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(this, v8, a3, end, marked_count + 1, v20);
}

BOOL ctu::install_termination_handler()
{
  v0 = atomic_load(&_MergedGlobals_5);
  if (!v0)
  {
    v2 = 0;
    atomic_compare_exchange_strong(&_MergedGlobals_5, &v2, v1);
  }

  return v0 == 0;
}

void anonymous namespace::log_termination_info_then_continue_crashing(_anonymous_namespace_ *this)
{
  v5 = *MEMORY[0x1E69E9840];
  atomic_load(&_MergedGlobals_5);
  memset(v4, 170, 24);
  ctu::backtrace_string(0, v4);
  v3.__ptr_ = 0xAAAAAAAAAAAAAAAALL;
  std::current_exception();
  std::exception_ptr::exception_ptr(&v2, &v3);
  v1.__ptr_ = &v2;
  std::rethrow_exception(v1);
  __break(1u);
}

void anonymous namespace::sGetLogger(_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_1EB382900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB382900))
  {
    qword_1EB3828F8 = os_log_create("com.apple.telephony.util", "terminate");

    __cxa_guard_release(&qword_1EB382900);
  }
}

uint64_t (*anonymous namespace::continue_crashing_with_system_termination_handler(uint64_t (*this)(void), void (*a2)(void)))(void)
{
  if (this)
  {
    return this();
  }

  return this;
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

uint64_t boost::exception_detail::error_info_container_impl::diagnostic_information(boost::exception_detail::error_info_container_impl *this, const char *a2)
{
  if (a2)
  {
    v22 = 0xAAAAAAAAAAAAAAAALL;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21[7] = v4;
    v21[8] = v4;
    v21[5] = v4;
    v21[6] = v4;
    v21[3] = v4;
    v21[4] = v4;
    v21[1] = v4;
    v21[2] = v4;
    v20 = v4;
    v21[0] = v4;
    *v18 = v4;
    v19 = v4;
    v17[1] = v4;
    v17[2] = v4;
    v16 = v4;
    v17[0] = v4;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
    v5 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, a2, v5);
    v6 = *(this + 1);
    if (v6 != (this + 16))
    {
      do
      {
        (***(v6 + 5))(__p);
        if (__p[23] >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = *__p;
        }

        if (__p[23] >= 0)
        {
          v8 = __p[23];
        }

        else
        {
          v8 = *&__p[8];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v7, v8);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
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
      }

      while (v10 != (this + 16));
    }

    std::ostringstream::str[abi:ne200100](&v16, __p);
    v12 = *__p;
    v13 = *&__p[8];
    *&__p[16] = *(this + 6);
    *__p = *(this + 2);
    *(this + 4) = v12;
    *(this + 40) = v13;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    *&v16 = *MEMORY[0x1E69E54E8];
    *(&v17[-1] + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    *(&v16 + 1) = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[1]);
    }

    *(&v16 + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v17);
    std::ostream::~ostream();
    MEMORY[0x1AC580CE0](v21);
  }

  result = this + 32;
  if (*(this + 55) < 0)
  {
    return *result;
  }

  return result;
}

void *boost::exception_detail::error_info_container_impl::get@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = result + 2;
  v5 = result[2];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = *a2;
  v7 = result + 2;
  do
  {
    v8 = v5[4];
    if (v8 == v6)
    {
      v7 = v5;
    }

    else
    {
      result = strcmp((*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL));
      if (result >= 0)
      {
        v7 = v5;
      }

      v5 = (v5 + ((result >> 28) & 8));
    }

    v5 = *v5;
  }

  while (v5);
  if (v4 != v7 && ((v9 = v7[4], v9 == v6) || (result = strcmp((*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v9 + 8) & 0x7FFFFFFFFFFFFFFFLL)), (result & 0x80000000) == 0)))
  {
    v10 = v7[6];
    *a3 = v7[5];

    return boost::detail::shared_count::shared_count(a3 + 1, v10);
  }

  else
  {
LABEL_12:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void boost::exception_detail::error_info_container_impl::set(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = (a1 + 8);
  v7 = *a3;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v8 = std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__find_equal<boost::exception_detail::type_info_>(a1 + 8, &v16, v7);
  v9 = *v8;
  if (!*v8)
  {
    v10 = v8;
    v9 = operator new(0x38uLL);
    *(&v14 + 1) = v6;
    v15 = 1;
    v11 = *a3;
    v9[5] = 0;
    v9[6] = 0;
    v9[4] = v11;
    std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__insert_node_at(v6, v16, v10, v9);
    *&v14 = 0;
    std::unique_ptr<std::__tree_node<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,void *>>>>::~unique_ptr[abi:ne200100](&v14);
  }

  v12 = a2[1];
  *&v14 = *a2;
  boost::detail::shared_count::shared_count(&v14 + 1, v12);
  v13 = *(v9 + 5);
  *(v9 + 5) = v14;
  v14 = v13;
  boost::detail::shared_count::~shared_count((&v14 + 8));
  if (*(a1 + 55) < 0)
  {
    **(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 55) = 0;
  }
}

BOOL boost::exception_detail::error_info_container_impl::release(boost::exception_detail::error_info_container_impl *this)
{
  v1 = *(this + 14) - 1;
  *(this + 14) = v1;
  if (this && !v1)
  {
    if (*(this + 55) < 0)
    {
      operator delete(*(this + 4));
    }

    std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::destroy(*(this + 2));
    operator delete(this);
  }

  return v1 == 0;
}

void boost::exception_detail::error_info_container_impl::clone(boost::exception_detail::error_info_container_impl *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  v4 = operator new(0x40uLL);
  *(v4 + 2) = 0;
  *(v4 + 1) = v4 + 16;
  v5 = (v4 + 8);
  *v4 = &unk_1F1CB5C18;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0;
  *(v4 + 6) = 0;
  *(v4 + 14) = 0;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(a2, v4);
  v6 = *(this + 1);
  v7 = this + 16;
  if (v6 != this + 16)
  {
    do
    {
      v19 = 0xAAAAAAAAAAAAAAAALL;
      v20 = 0xAAAAAAAAAAAAAAAALL;
      v8 = (*(**(v6 + 5) + 8))(*(v6 + 5));
      v19 = v8;
      v20 = 0;
      v9 = operator new(0x58uLL);
      *v9 = &unk_1F1CB5BD0;
      *(v9 + 1) = 0x100000001;
      pthread_mutex_init((v9 + 16), 0);
      *v9 = &unk_1F1CB5B88;
      *(v9 + 10) = v8;
      v10 = v20;
      v20 = v9;
      v21[0] = v10;
      boost::detail::shared_count::~shared_count(v21);
      v17 = *(v6 + 4);
      *&v18 = v19;
      boost::detail::shared_count::shared_count(&v18 + 1, v20);
      v22 = 0xAAAAAAAAAAAAAAAALL;
      v11 = std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__find_equal<boost::exception_detail::type_info_>(v5, &v22, v17);
      if (!*v11)
      {
        v12 = v11;
        v13 = operator new(0x38uLL);
        v21[1] = v5;
        v21[2] = 1;
        *(v13 + 4) = v17;
        *(v13 + 40) = v18;
        v18 = 0uLL;
        std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__insert_node_at(v5, v22, v12, v13);
        v21[0] = 0;
        std::unique_ptr<std::__tree_node<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,void *>>>>::~unique_ptr[abi:ne200100](v21);
      }

      boost::detail::shared_count::~shared_count((&v18 + 8));
      boost::detail::shared_count::~shared_count(&v20);
      v14 = *(v6 + 1);
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = *(v6 + 2);
          v16 = *v15 == v6;
          v6 = v15;
        }

        while (!v16);
      }

      v6 = v15;
    }

    while (v15 != v7);
  }
}

void *boost::detail::shared_count::shared_count(void *a1, uint64_t a2)
{
  *a1 = a2;
  if (a2)
  {
    pthread_mutex_lock((a2 + 16));
    ++*(a2 + 8);
    pthread_mutex_unlock((a2 + 16));
  }

  return a1;
}

void *std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__find_equal<boost::exception_detail::type_info_>(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5[4];
    if (v7 != a3)
    {
      v8 = *(a3 + 8);
      do
      {
        v9 = *(v7 + 8);
        if (strcmp((v8 & 0x7FFFFFFFFFFFFFFFLL), (v9 & 0x7FFFFFFFFFFFFFFFLL)) < 0)
        {
          v10 = *v5;
          v4 = v5;
          if (!*v5)
          {
            break;
          }
        }

        else
        {
          if ((strcmp((v9 & 0x7FFFFFFFFFFFFFFFLL), (v8 & 0x7FFFFFFFFFFFFFFFLL)) & 0x80000000) == 0)
          {
            break;
          }

          v4 = v5 + 1;
          v10 = v5[1];
          if (!v10)
          {
            break;
          }
        }

        v7 = v10[4];
        v5 = v10;
      }

      while (v7 != a3);
    }
  }

  else
  {
    v5 = (a1 + 8);
  }

  *a2 = v5;
  return v4;
}

uint64_t *std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      boost::detail::shared_count::~shared_count((v2 + 48));
    }

    operator delete(v2);
  }

  return a1;
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

void boost::detail::shared_count::~shared_count(boost::detail::shared_count *this)
{
  v1 = *this;
  if (*this)
  {
    pthread_mutex_lock((v1 + 16));
    v2 = *(v1 + 8) - 1;
    *(v1 + 8) = v2;
    pthread_mutex_unlock((v1 + 16));
    if (!v2)
    {
      (*(*v1 + 16))(v1);
      pthread_mutex_lock((v1 + 16));
      v3 = *(v1 + 12) - 1;
      *(v1 + 12) = v3;
      pthread_mutex_unlock((v1 + 16));
      if (!v3)
      {
        (*(*v1 + 24))(v1);
      }
    }
  }
}

void std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::destroy(*a1);
    std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::destroy(a1[1]);
    boost::detail::shared_count::~shared_count((a1 + 6));

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::exception_detail::error_info_base>::~sp_counted_impl_p(boost::detail::sp_counted_base *a1)
{
  boost::detail::sp_counted_base::~sp_counted_base(a1);

  operator delete(v1);
}

uint64_t boost::detail::sp_counted_impl_p<boost::exception_detail::error_info_base>::dispose(uint64_t a1)
{
  result = *(a1 + 80);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

void ctu::RequestRestResourceState::dumpState(ctu::RequestRestResourceState *this@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *(this + 1);
  if (!v7)
  {
    v8 = 0;
    goto LABEL_18;
  }

  v8 = std::__shared_weak_count::lock(v7);
  if (!v8 || (v9 = *this) == 0)
  {
LABEL_18:
    v12 = a2;
    v13 = "provider";
    xpc::dict::object_proxy::operator=(&v12, &v11);
    xpc_release(v11);
    v11 = 0;
    if (!v8)
    {
      return;
    }

    goto LABEL_19;
  }

  v10 = (v9 + 8);
  if (*(v9 + 31) < 0)
  {
    v10 = *v10;
  }

  v14 = xpc_string_create(v10);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v12 = a2;
  v13 = "provider";
  xpc::dict::object_proxy::operator=(&v12, &v14, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v14);
  v14 = 0;
LABEL_19:
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
}

void xpc::dict::object_proxy::operator=(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  object = xpc_null_create();
  xpc::dict::object_proxy::operator=(a1, &object, a2);
  xpc_release(object);
}

void *ctu::RequestRestResource::RequestRestResource(void *this)
{
  *this = &unk_1F1CB6F58;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F1CB6F58;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void ctu::RequestRestResource::~RequestRestResource(ctu::RequestRestResource *this)
{
  *this = &unk_1F1CB6F58;
  boost::container::vector<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>>,void>::~vector(this + 1);
}

{
  *this = &unk_1F1CB6F58;
  boost::container::vector<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>>,void>::~vector(this + 1);
}

{
  *this = &unk_1F1CB6F58;
  boost::container::vector<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>>,void>::~vector(this + 1);

  operator delete(this);
}

uint64_t ctu::RequestRestResource::handleMessage_Root_GET(ctu::RequestRestResource *this, ctu::RestResourceContext *a2)
{
  ctu::RequestRestResource::getResourceArray(this, &object);
  v5 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v5 = xpc_null_create();
  }

  (*(*a2 + 32))(a2, &v5);
  xpc_release(v5);
  v5 = 0;
  xpc_release(object);
  return 1;
}

void sub_1A912A0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a9);
  _Unwind_Resume(a1);
}

uint64_t ctu::RequestRestResource::handleMessage_RootDumpState_GET(ctu::RequestRestResource *this, ctu::RestResourceContext *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v15 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v15 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v15 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *(this + 2);
  if (v7)
  {
    v8 = *(this + 1);
    v9 = 32 * v7;
    do
    {
      ctu::RequestRestResourceState::dumpState(v8[3], &v13);
      v10 = v8;
      if (*(v8 + 23) < 0)
      {
        v10 = *v8;
      }

      v12[0] = &v15;
      v12[1] = v10;
      xpc::dict::object_proxy::operator=(v12, &v13, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v13);
      v13 = 0;
      v8 += 4;
      v9 -= 32;
    }

    while (v9);
  }

  v12[0] = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v12[0] = xpc_null_create();
  }

  (*(*a2 + 32))(a2, v12);
  xpc_release(v12[0]);
  xpc_release(v15);
  return 1;
}

void sub_1A912A28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t a14)
{
  xpc_release(object);
  xpc_release(a14);
  _Unwind_Resume(a1);
}

uint64_t ctu::RequestRestResource::handleMessage_Resource_Provider_GET(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5)
{
  v18[0] = a4;
  v18[1] = a5;
  v7 = xpc_array_create(0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x1AC581B70](v7) == MEMORY[0x1E69E9E50])
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  ctu::llvm::StringRef::operator std::string(v18, __p);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v21, (a1 + 8), __p);
  v9 = v21;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 != *(a1 + 8) + 32 * *(a1 + 16))
  {
    v10 = *(v9 + 24);
    v11 = v10[1];
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = v12;
        v14 = *v10;
        if (*v10)
        {
          v15 = (v14 + 8);
          if (*(v14 + 31) < 0)
          {
            v15 = *v15;
          }

          v16 = xpc_string_create(v15);
          if (!v16)
          {
            v16 = xpc_null_create();
          }

          xpc_array_append_value(v8, v16);
          xpc_release(v16);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }
  }

  __p[0] = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  (*(*a2 + 32))(a2, __p);
  xpc_release(__p[0]);
  xpc_release(v8);
  return 1;
}

void sub_1A912A46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(v13);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  xpc_release(v11);
  _Unwind_Resume(a1);
}

BOOL ctu::RequestRestResource::handleRestMessage_POP(ctu::RequestRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  memset(v10, 170, sizeof(v10));
  v5 = *(a3 + 1);
  v9[0] = *a3;
  v9[1] = v5;
  v7 = v10[0];
  if (LODWORD(v10[0]) == 3)
  {
    ctu::RequestRestResource::handleMessage_Resource_POP(this, a2, v6, v10[1], v10[2]);
  }

  return v7 == 3;
}

uint64_t ctu::RequestRestResource::handleMessage_Resource_POP(uint64_t a1, void (***a2)(void **__return_ptr, void), uint64_t a3, const void *a4, const void *a5)
{
  v18[0] = a4;
  v18[1] = a5;
  ctu::llvm::StringRef::operator std::string(v18, &__p);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v22, (a1 + 8), &__p);
  v7 = v22;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (v7 != *(a1 + 8) + 32 * *(a1 + 16))
  {
    v8 = *(v7 + 24);
    v9 = *(v8 + 8);
    if (v9)
    {
      v10 = *(v9 + 8);
    }

    (**a2)(&__p, a2);
    v11 = *(v8 + 8);
    v12 = v20;
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v12 == v11)
    {
      v13 = *(v7 + 24);
      v14 = v13[1];
      *v13 = 0;
      v13[1] = 0;
      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      v15 = *(*(v7 + 24) + 8);
      if (v15)
      {
        v16 = *(v15 + 8);
      }
    }
  }

  return 1;
}

BOOL ctu::RequestRestResource::handleRestMessage_PUSH(ctu::RequestRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  memset(v10, 170, sizeof(v10));
  v5 = *(a3 + 1);
  v9[0] = *a3;
  v9[1] = v5;
  v7 = v10[0];
  if (LODWORD(v10[0]) == 3)
  {
    ctu::RequestRestResource::handleMessage_Resource_PUSH(this, a2, v6, v10[1], v10[2]);
  }

  return v7 == 3;
}

uint64_t ctu::RequestRestResource::handleMessage_Resource_PUSH(uint64_t a1, void (***a2)(void **__return_ptr, void), uint64_t a3, const void *a4, const void *a5)
{
  v13[0] = a4;
  v13[1] = a5;
  ctu::llvm::StringRef::operator std::string(v13, &__p);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v12, (a1 + 8), &__p);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  ctu::llvm::StringRef::operator std::string(v13, &__p);
  ctu::RequestRestResource::createIfNotPresent(a1, &__p, &v12);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  (**a2)(&__p, a2);
  v7 = __p;
  if (__p)
  {
    v8 = *(v12 + 3);
    v9 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v8[1];
    *v8 = v7;
    v8[1] = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return 1;
}

void sub_1A912A7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ctu::RequestRestResource::getResourceArray(ctu::RequestRestResource *this@<X0>, xpc_object_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E50])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *(this + 2);
  if (v7)
  {
    v8 = *(this + 1);
    v9 = 32 * v7;
    do
    {
      if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v8, *(v8 + 1));
      }

      else
      {
        v10 = *v8;
        __p.__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&__p.__r_.__value_.__l.__data_ = v10;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v12 = xpc_string_create(p_p);
      if (!v12)
      {
        v12 = xpc_null_create();
      }

      xpc_array_append_value(*a2, v12);
      xpc_release(v12);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 += 2;
      v9 -= 32;
    }

    while (v9);
  }
}

BOOL ctu::RequestRestResource::createIfNotPresent(void *a1, uint64_t a2, __int128 **a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1 + 1;
  v6 = &v3[2 * v5];
  v7 = *a3;
  if (*a3 == v6)
  {
    v11 = operator new(0x10uLL);
    *v11 = 0;
    v11[1] = 0;
    v23[0] = v11;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v25 = v12;
    *&v25[16] = v12;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v25, *a2, *(a2 + 8));
      v3 = a1[1];
      v5 = a1[2];
    }

    else
    {
      *v25 = *a2;
      *&v25[16] = *(a2 + 16);
    }

    v23[0] = 0;
    *&v25[24] = v11;
    v23[1] = v25;
    v23[2] = v4;
    v13 = &v3[2 * v5];
    while (v5)
    {
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v3[2 * (v5 >> 1)], v25) & 0x80u) == 0)
      {
        v5 >>= 1;
      }

      else
      {
        v3 += 2 * (v5 >> 1) + 2;
        v5 += ~(v5 >> 1);
      }
    }

    if (v3 == v13 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v25, v3) & 0x80) != 0)
    {
      v14 = a1[2];
      if (a1[3] == v14)
      {
        boost::container::vector<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>>,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>*,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>>>(&v24, v4, v3, v25);
        v3 = v24;
      }

      else
      {
        v15 = *v4 + 32 * v14;
        if (v15 == v3)
        {
          v20 = *v25;
          *(v15 + 16) = *&v25[16];
          *v15 = v20;
          memset(v25, 0, sizeof(v25));
          *(v15 + 24) = *&v25[24];
          ++a1[2];
        }

        else
        {
          v16 = v15 - 32;
          *v15 = *(v15 - 32);
          *(v15 - 32) = 0;
          *(v15 - 24) = 0;
          v17 = *(v15 - 16);
          v18 = *(v15 - 8);
          *(v15 - 16) = 0;
          *(v15 - 8) = 0;
          *(v15 + 16) = v17;
          *(v15 + 24) = v18;
          ++a1[2];
          if ((v15 - 32) != v3)
          {
            do
            {
              v19 = (v16 - 32);
              boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>::operator=(v16, (v16 - 32));
              v16 = v19;
            }

            while (v19 != v3);
          }

          boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>::operator=(v3, v25);
        }
      }
    }

    std::unique_ptr<ctu::RequestRestResourceState>::reset[abi:ne200100](&v25[24], 0);
    if ((v25[23] & 0x80000000) != 0)
    {
      operator delete(*v25);
    }

    *a3 = v3;
    std::unique_ptr<ctu::RequestRestResourceState>::reset[abi:ne200100](v23, 0);
  }

  result = v7 == v6;
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A912AC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  boost::container::dtl::value_destructor<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>>,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>>::~value_destructor(va1);
  std::unique_ptr<ctu::RequestRestResourceState>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void *boost::container::vector<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>>,void>::~vector(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 24);
    do
    {
      std::unique_ptr<ctu::RequestRestResourceState>::reset[abi:ne200100](v3, 0);
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
      }

      v3 += 4;
      --v2;
    }

    while (v2);
  }

  if (a1[2])
  {
    operator delete(*a1);
  }

  return a1;
}

void std::unique_ptr<ctu::RequestRestResourceState>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v2);
  }
}

void boost::container::vector<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>>,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>*,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>>>(void *a1, char *a2, __int128 *a3, __int128 *a4)
{
  v4 = *(a2 + 2);
  v5 = 0x3FFFFFFFFFFFFFFLL;
  v6 = *(a2 + 1) + 1;
  if (0x3FFFFFFFFFFFFFFLL - v4 < v6 - v4)
  {
    goto LABEL_27;
  }

  v7 = v4 >> 61;
  v8 = 8 * v4;
  if (v7 > 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  v10 = v8 / 5;
  if (v7)
  {
    v10 = v9;
  }

  if (v10 < 0x3FFFFFFFFFFFFFFLL)
  {
    v5 = v10;
  }

  v11 = v6 <= v5 ? v5 : *(a2 + 1) + 1;
  if (v6 >> 58)
  {
LABEL_27:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v16 = *a2;
  v17 = operator new(32 * v11);
  v18 = v17;
  v19 = *a2;
  v20 = *a2 + 32 * *(a2 + 1);
  v21 = v17;
  if (*a2 != a3)
  {
    v22 = *a2;
    v21 = v17;
    do
    {
      v23 = *v22;
      *(v21 + 2) = *(v22 + 2);
      *v21 = v23;
      *v22 = 0;
      *(v22 + 1) = 0;
      v24 = *(v22 + 3);
      *(v22 + 2) = 0;
      *(v22 + 3) = 0;
      *(v21 + 3) = v24;
      v22 += 32;
      v21 += 32;
    }

    while (v22 != a3);
  }

  v25 = *a4;
  *(v21 + 2) = *(a4 + 2);
  *v21 = v25;
  *a4 = 0;
  *(a4 + 1) = 0;
  v26 = *(a4 + 3);
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  *(v21 + 3) = v26;
  if (v20 != a3)
  {
    v27 = v21 + 56;
    v28 = a3;
    do
    {
      v29 = *v28;
      *(v27 - 1) = *(v28 + 2);
      *(v27 - 3) = v29;
      *v28 = 0;
      *(v28 + 1) = 0;
      v30 = *(v28 + 3);
      *(v28 + 2) = 0;
      *(v28 + 3) = 0;
      *v27 = v30;
      v27 += 4;
      v28 += 2;
    }

    while (v28 != v20);
  }

  if (v19)
  {
    v31 = *(a2 + 1);
    if (v31)
    {
      v32 = (v19 + 24);
      do
      {
        std::unique_ptr<ctu::RequestRestResourceState>::reset[abi:ne200100](v32, 0);
        if (*(v32 - 1) < 0)
        {
          operator delete(*(v32 - 3));
        }

        v32 += 4;
        --v31;
      }

      while (v31);
    }

    operator delete(*a2);
  }

  v33 = *(a2 + 1) + 1;
  *a2 = v18;
  *(a2 + 1) = v33;
  *(a2 + 2) = v11;
  *a1 = &v18[a3 - v16];
}

uint64_t boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  v5 = *(a2 + 3);
  *(a2 + 3) = 0;
  std::unique_ptr<ctu::RequestRestResourceState>::reset[abi:ne200100]((a1 + 24), v5);
  return a1;
}

uint64_t *boost::container::dtl::value_destructor<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>>,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RequestRestResourceState>>>::~value_destructor(uint64_t *a1)
{
  v2 = *a1;
  std::unique_ptr<ctu::RequestRestResourceState>::reset[abi:ne200100]((*a1 + 24), 0);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  return a1;
}

double mav_buffer_queue_create()
{
  v0 = operator new(0x38uLL);
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  *(v0 + 12) = 0;
  return result;
}

void mav_buffer_queue_free(void **__p)
{
  if (!__p)
  {
    return;
  }

  v2 = __p[1];
  v3 = __p[2];
  __p[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = __p[2];
      v2 = (__p[1] + 8);
      __p[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = 512;
  }

  __p[4] = v5;
LABEL_10:
  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = __p[1];
    v7 = __p[2];
    if (v7 != v8)
    {
      __p[2] = &v7[(v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8];
    }
  }

  if (*__p)
  {
    operator delete(*__p);
  }

  operator delete(__p);
}

uint64_t mav_buffer_queue_enqueue_internal(uint64_t a1, dispatch_data_t *a2)
{
  v4 = *a2;
  size = dispatch_data_get_size(*a2);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 8);
  v9 = v7 - v8;
  *(a1 + 48) += size;
  if (v7 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v7 - v8) << 6) - 1;
  }

  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = v11 + v12;
  if (v10 == v11 + v12)
  {
    if (v12 < 0x200)
    {
      v14 = *(a1 + 24);
      v15 = *a1;
      v16 = &v14[-*a1];
      if (v9 >= v16)
      {
        v19 = v16 >> 2;
        if (v14 == v15)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        v21 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v20);
        v23 = v22;
        v24 = operator new(0x1000uLL);
        v25 = &v21[v9];
        v26 = &v21[8 * v23];
        if (v9 == 8 * v23)
        {
          v27 = v7 - v8;
          if (v9 < 1)
          {
            v39 = v27 >> 2;
            if (v7 == v8)
            {
              v40 = 1;
            }

            else
            {
              v40 = v39;
            }

            v41 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v40);
            v25 = &v41[8 * (v40 >> 2)];
            v26 = &v41[8 * v42];
            if (v21)
            {
              operator delete(v21);
            }

            v21 = v41;
          }

          else
          {
            v25 -= 8 * (((v27 >> 3) + 1 + (((v27 >> 3) + 1) >> 63)) >> 1);
          }
        }

        *v25 = v24;
        v43 = v25 + 8;
        v44 = *(a1 + 16);
        if (v44 == *(a1 + 8))
        {
          v56 = v25;
        }

        else
        {
          do
          {
            if (v25 == v21)
            {
              if (v43 >= v26)
              {
                if (v26 == v21)
                {
                  v48 = 1;
                }

                else
                {
                  v48 = (v26 - v21) >> 2;
                }

                v49 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v48);
                v51 = v49;
                v45 = &v49[(2 * v48 + 6) & 0xFFFFFFFFFFFFFFF8];
                v52 = v43 - v21;
                v46 = v43 == v21;
                v43 = v45;
                if (!v46)
                {
                  v43 = &v45[v52];
                  v53 = v45;
                  do
                  {
                    v54 = *v25;
                    v25 += 8;
                    *v53 = v54;
                    v53 += 8;
                    v52 -= 8;
                  }

                  while (v52);
                }

                v26 = &v49[8 * v50];
                if (v21)
                {
                  operator delete(v21);
                }

                v21 = v51;
              }

              else
              {
                v45 = &v21[8 * ((((v26 - v43) >> 3) + 1 + ((((v26 - v43) >> 3) + 1) >> 63)) >> 1)];
                v47 = v43 - v21;
                v46 = v43 == v21;
                v43 += 8 * ((((v26 - v43) >> 3) + 1 + ((((v26 - v43) >> 3) + 1) >> 63)) >> 1);
                if (!v46)
                {
                  memmove(v45, v25, v47);
                }
              }
            }

            else
            {
              v45 = v25;
            }

            v55 = *(v44 - 8);
            v44 -= 8;
            *(v45 - 1) = v55;
            v56 = v45 - 8;
            v25 = v56;
          }

          while (v44 != *(a1 + 8));
        }

        v57 = *a1;
        *a1 = v21;
        *(a1 + 8) = v56;
        *(a1 + 16) = v43;
        *(a1 + 24) = v26;
        if (v57)
        {
          operator delete(v57);
        }

        goto LABEL_53;
      }

      v17 = operator new(0x1000uLL);
      v18 = v17;
      if (v14 != v7)
      {
        *v7 = v17;
        *(a1 + 16) += 8;
        goto LABEL_53;
      }

      if (v8 == v15)
      {
        if (v7 == v8)
        {
          v28 = 1;
        }

        else
        {
          v28 = (v14 - v8) >> 2;
        }

        v29 = 2 * v28;
        v30 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v28);
        v8 = &v30[(v29 + 6) & 0xFFFFFFFFFFFFFFF8];
        v32 = *(a1 + 8);
        v33 = v8;
        v34 = *(a1 + 16) - v32;
        if (v34)
        {
          v33 = &v8[v34];
          v35 = &v30[(v29 + 6) & 0xFFFFFFFFFFFFFFF8];
          do
          {
            v36 = *v32++;
            *v35 = v36;
            v35 += 8;
            v34 -= 8;
          }

          while (v34);
        }

        v37 = *a1;
        *a1 = v30;
        *(a1 + 8) = v8;
        *(a1 + 16) = v33;
        *(a1 + 24) = &v30[8 * v31];
        if (v37)
        {
          operator delete(v37);
          v8 = *(a1 + 8);
        }
      }

      *(v8 - 1) = v18;
      v38 = *(a1 + 8);
      *(a1 + 8) = v38 - 8;
      v59 = *(v38 - 8);
      *(a1 + 8) = v38;
    }

    else
    {
      *(a1 + 32) = v12 - 512;
      v59 = *v8;
      *(a1 + 8) = v8 + 8;
    }

    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v59);
LABEL_53:
    v8 = *(a1 + 8);
    v11 = *(a1 + 40);
    v13 = *(a1 + 32) + v11;
    v4 = *a2;
  }

  *(*&v8[(v13 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v13 & 0x1FF)) = v4;
  *(a1 + 40) = v11 + 1;
  *a2 = 0;
  return 0;
}

void sub_1A912B3B4(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t mav_buffer_queue_dequeue_internal(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(*(*(a1 + 8) + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF));
    *a2 = v5;
    *(a1 + 48) -= dispatch_data_get_size(v5);
    *(a1 + 32) = v4 + 1;
    *(a1 + 40) = v2 - 1;
    std::deque<void *>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
    if (*(a1 + 40))
    {
      std::deque<void *>::__maybe_remove_front_spare[abi:ne200100](a1, 0);
      v6 = *(a1 + 8);
      v7 = *(a1 + 16);
      v8 = ((v7 - v6) << 6) - 1;
      if (v7 == v6)
      {
        v8 = 0;
      }

      if ((v8 - (*(a1 + 40) + *(a1 + 32))) >= 0x200)
      {
        operator delete(*(v7 - 8));
        v6 = *(a1 + 8);
        v7 = *(a1 + 16) - 8;
        *(a1 + 16) = v7;
      }
    }

    else
    {
      v6 = *(a1 + 16);
      if (v6 != *(a1 + 8))
      {
        do
        {
          operator delete(*(v6 - 8));
          v9 = *(a1 + 8);
          v6 = *(a1 + 16) - 8;
          *(a1 + 16) = v6;
        }

        while (v6 != v9);
      }

      *(a1 + 32) = 0;
      v7 = v6;
    }

    v10 = *a1;
    v11 = *(a1 + 24) - *a1;
    if (v11 > (v7 - v6))
    {
      if (v7 == v6)
      {
        v12 = 0;
        v13 = 0;
      }

      else
      {
        v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>((v7 - v6) >> 3);
        v10 = *a1;
        v11 = *(a1 + 24) - *a1;
      }

      if (v13 < v11 >> 3)
      {
        v14 = *(a1 + 8);
        v15 = *(a1 + 16) - v14;
        if (v15)
        {
          v16 = v12;
          do
          {
            v17 = *v14++;
            *v16++ = v17;
            v15 -= 8;
          }

          while (v15);
          v14 = *(a1 + 8);
          v18 = *(a1 + 16);
          v10 = *a1;
        }

        else
        {
          v18 = *(a1 + 8);
        }

        *a1 = v12;
        *(a1 + 8) = v12;
        *(a1 + 16) = v12 + v18 - v14;
        *(a1 + 24) = &v12[v13];
        v12 = v10;
      }

      if (v12)
      {
        operator delete(v12);
      }
    }
  }

  return 0;
}

void sub_1A912B57C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A912B568);
}

uint64_t mav_buffer_queue_front_internal(void *a1, void *a2)
{
  v2 = a1[5];
  if (v2)
  {
    v2 = *(*(a1[1] + ((a1[4] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (a1[4] & 0x1FFLL));
  }

  *a2 = v2;
  return 0;
}

void std::deque<void *>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (v3 < 0x200)
  {
    a2 = 1;
  }

  if (v3 > 0x3FF || (a2 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }
}

void *mav_linked_list_init(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t *mav_linked_list_insert_front(uint64_t *result, void *a2)
{
  v2 = *(result + 4);
  if (v2)
  {
    v3 = *result;
    *a2 = *result;
    a2[1] = 0;
    *(v3 + 8) = a2;
    *result = a2;
    v4 = v2 + 1;
  }

  else
  {
    *result = a2;
    result[1] = a2;
    v4 = 1;
    *a2 = 0;
    a2[1] = 0;
  }

  a2[2] = result;
  *(result + 4) = v4;
  return result;
}

uint64_t mav_linked_list_insert_back(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(result + 8);
    *a2 = 0;
    a2[1] = v3;
    *v3 = a2;
    *(result + 8) = a2;
    v4 = v2 + 1;
  }

  else
  {
    *result = a2;
    *(result + 8) = a2;
    v4 = 1;
    *a2 = 0;
    a2[1] = 0;
  }

  a2[2] = result;
  *(result + 16) = v4;
  return result;
}

void *mav_linked_list_remove_front(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1;
  *(a1 + 16) = v1 - 1;
  result = *a1;
  v4 = *result;
  *v2 = *result;
  if (v4)
  {
    v2 = v4;
  }

  v2[1] = 0;
  return result;
}

uint64_t mav_linked_list_remove_back(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1;
  *(a1 + 16) = v1 - 1;
  result = *(a1 + 8);
  v4 = *(result + 8);
  v2[1] = v4;
  if (v4)
  {
    v2 = v4;
  }

  *v2 = 0;
  return result;
}

__n128 ctu::path_join_impl(std::string *this, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    if (!*(a2 + 8))
    {
      return result;
    }

    v5 = *a2;
  }

  else
  {
    v5 = a2;
    if (!*(a2 + 23))
    {
      return result;
    }
  }

  if (*v5 == 47)
  {
    if ((*(&this->__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_27;
    }

LABEL_28:
    result = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 16);
    *&this->__r_.__value_.__l.__data_ = result;
    *(a2 + 23) = 0;
    *a2 = 0;
    return result;
  }

  if ((*(&this->__r_.__value_.__s + 23) & 0x80) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (!size)
    {
LABEL_27:
      operator delete(this->__r_.__value_.__l.__data_);
      goto LABEL_28;
    }
  }

  else
  {
    if (!*(&this->__r_.__value_.__s + 23))
    {
      goto LABEL_28;
    }

    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = this;
  }

  else
  {
    v7 = this->__r_.__value_.__r.__words[0];
  }

  if (v7->__r_.__value_.__s.__data_[size - 1] != 47)
  {
    std::string::push_back(this, 47);
    LOBYTE(v4) = *(a2 + 23);
  }

  if ((v4 & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if ((v4 & 0x80u) == 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = *(a2 + 8);
  }

  std::string::append(this, v8, v9);
  return result;
}

void ctu::dirname(std::string::size_type a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v4;
  v7 = v4;
  *v5 = v4;
  ctu::path_split(a1, a2, v5);
  if (SHIBYTE(__p[0]) < 0)
  {
    std::string::__init_copy_ctor_external(a3, v5[0], v5[1]);
  }

  else
  {
    *a3 = *v5;
    *(a3 + 16) = __p[0];
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v5[0]);
  }
}

double ctu::PathView::PathView(ctu::PathView *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

BOOL ctu::PathView::hasTail(ctu::PathView *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 2) + v1;
  v3 = *this + *(this + 1);
  return v3 != v2 && v2 + 1 != v3;
}

uint64_t ctu::PathView::tail(ctu::PathView *this)
{
  v4 = this + 16;
  result = *(this + 2);
  v3 = *(v4 + 1);
  if (v3)
  {
    v5 = result + v3;
    if (*this + *(this + 1) == v5)
    {
      return v5;
    }

    else
    {
      return v5 + 1;
    }
  }

  return result;
}

uint64_t ctu::PathView::head(ctu::PathView *this)
{
  if (*(this + 3))
  {
    result = *this;
    v3 = *(this + 2) - *this - 1;
    *(this + 1);
  }

  else
  {
    result = *this;
    v4 = *(this + 1);
  }

  return result;
}

BOOL ctu::PathView::hasHead(ctu::PathView *this)
{
  v1 = *(this + 2);
  v2 = *this;
  v3 = &v1[-*this];
  if (v3 > 1)
  {
    return 1;
  }

  if (v3 == 1 && *v2 == 47)
  {
    return 0;
  }

  return v1 != v2;
}

uint64_t ctu::PathView::skip(uint64_t *a1, _BYTE *a2, size_t __n)
{
  if (a1[3])
  {
    v3 = __n == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v5 = __n;
  if (*a2 == 47)
  {
    v5 = __n - 1;
    if (__n == 1)
    {
      return 0;
    }

    ++a2;
  }

  if (a2[v5 - 1] == 47)
  {
    if (v5 - 1 < v5)
    {
      --v5;
    }

    if (!v5)
    {
      return 0;
    }
  }

  v8 = a1[1];
  v7 = a1[2];
  v9 = *a1;
  v10 = *a1 + v8 - v7;
  if (v10 < v5 || memcmp(a1[2], a2, v5))
  {
    return 0;
  }

  v11 = (v7 + v5);
  v12 = v10 - v5;
  if (v10 != v5)
  {
    if (*v11 == 47)
    {
      if (v12 == 1)
      {
LABEL_23:
        v13 = -1;
      }

      else
      {
        v13 = 1;
        while (v11[v13] != 47)
        {
          ++v13;
          if (v5 + v7 - v8 - v9 + 1 + v13 == 1)
          {
            goto LABEL_23;
          }
        }
      }

      if (v13 <= 1)
      {
        v13 = 1;
      }

      if (v13 < v12)
      {
        v12 = v13;
      }

      ++v11;
      --v12;
      goto LABEL_29;
    }

    return 0;
  }

LABEL_29:
  a1[2] = v11;
  a1[3] = v12;
  return 1;
}

uint64_t xpc::dyn_cast_or_default@<X0>(xpc_object_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (MEMORY[0x1AC581B70](*a1) == MEMORY[0x1E69E9E70] && (bytes_ptr = xpc_data_get_bytes_ptr(*a1)) != 0)
  {
    v11 = bytes_ptr;
    result = xpc_data_get_length(*a1);
    if (result < 1)
    {
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v12 = result;
      v13 = operator new(result);
      v14 = &v13[v12];
      result = memcpy(v13, v11, v12);
    }

    *a3 = v13;
    a3[1] = v14;
    a3[2] = v14;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = *a2;
    v7 = *(a2 + 8);
    v8 = v7 - *a2;

    return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, v6, v7, v8);
  }

  return result;
}

void xpc::dyn_cast_or_default(xpc_object_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (MEMORY[0x1AC581B70](*a1) == MEMORY[0x1E69E9E70])
  {
    v12 = 0;
    v13 = 0;
    v11 = &v12;
    bytes_ptr = xpc_data_get_bytes_ptr(*a1);
    if (bytes_ptr)
    {
      for (i = xpc_data_get_length(*a1); i; --i)
      {
        std::__tree<unsigned char>::__emplace_hint_unique_key_args<unsigned char,unsigned char const&>(&v11, &v12, *bytes_ptr, *bytes_ptr);
        ++bytes_ptr;
      }

      v8 = v12;
      *a3 = v11;
      a3[1] = v8;
      v9 = a3 + 1;
      v10 = v13;
      a3[2] = v13;
      if (v10)
      {
        v8[2] = v9;
        v11 = &v12;
        v12 = 0;
        v13 = 0;
        v8 = 0;
      }

      else
      {
        *a3 = v9;
      }
    }

    else
    {
      std::set<unsigned char>::set[abi:ne200100](a3, a2);
      v8 = v12;
    }

    std::__tree<unsigned char>::destroy(v8);
  }

  else
  {

    std::set<unsigned char>::set[abi:ne200100](a3, a2);
  }
}

double xpc::dyn_cast_or_default(void *a1, double a2)
{
  if (MEMORY[0x1AC581B70](*a1) != MEMORY[0x1E69E9E88])
  {
    return a2;
  }

  v5 = *a1;

  return xpc_double_get_value(v5);
}

void xpc::auto_reply::deleter_with_conn(xpc_object_t *a1, xpc_connection_t *a2)
{
  if (a1)
  {
    if (MEMORY[0x1AC581B70](*a1) == MEMORY[0x1E69E9E80] && MEMORY[0x1AC581B70](*a2) == MEMORY[0x1E69E9E68])
    {
      xpc_connection_send_message(*a2, *a1);
    }

    xpc_release(*a1);

    operator delete(a1);
  }
}

void *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, const void *a2, uint64_t a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = std::vector<unsigned char>::__vallocate[abi:ne200100](result, __sz);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_1A912BF24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<unsigned char>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<unsigned char>::destroy(*a1);
    std::__tree<unsigned char>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t *std::set<unsigned char>::set[abi:ne200100](uint64_t *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<unsigned char>::__emplace_hint_unique_key_args<unsigned char,unsigned char const&>(a1, v3, *(v5 + 25), *(v5 + 25));
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

uint64_t *std::__tree<unsigned char>::__emplace_hint_unique_key_args<unsigned char,unsigned char const&>(uint64_t *result, uint64_t *a2, unsigned __int8 a3, char a4)
{
  v5 = a2;
  v6 = result;
  v7 = (result + 1);
  if (result + 1 != a2)
  {
    v8 = *(a2 + 25);
    if (v8 <= a3)
    {
      if (v8 >= a3)
      {
        return result;
      }

      v13 = a2 + 1;
      v12 = a2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
          v5 = v13;
          v14 = v13;
        }

        while (v12);
      }

      else
      {
        v14 = a2;
        do
        {
          v20 = v14;
          v14 = v14[2];
        }

        while (*v14 != v20);
      }

      if (v14 == v7)
      {
        goto LABEL_42;
      }

      if (*(v14 + 25) > a3)
      {
        goto LABEL_42;
      }

      v21 = *v7;
      v13 = result + 1;
      v5 = result + 1;
      if (!*v7)
      {
        goto LABEL_42;
      }

      while (1)
      {
        while (1)
        {
          v5 = v21;
          v22 = *(v21 + 25);
          if (v22 <= a3)
          {
            break;
          }

          v21 = *v21;
          v13 = v5;
          if (!*v5)
          {
            goto LABEL_42;
          }
        }

        if (v22 >= a3)
        {
          return result;
        }

        v21 = v21[1];
        if (!v21)
        {
LABEL_30:
          v13 = v5 + 1;
          goto LABEL_42;
        }
      }
    }
  }

  v9 = *a2;
  if (*result == a2)
  {
    v11 = a2;
  }

  else
  {
    if (v9)
    {
      v10 = *a2;
      do
      {
        v11 = v10;
        v10 = v10[1];
      }

      while (v10);
    }

    else
    {
      v15 = a2;
      do
      {
        v11 = v15[2];
        v16 = *v11 == v15;
        v15 = v11;
      }

      while (v16);
    }

    if (*(v11 + 25) >= a3)
    {
      v18 = *v7;
      v13 = result + 1;
      v5 = result + 1;
      if (!*v7)
      {
        goto LABEL_42;
      }

      while (1)
      {
        while (1)
        {
          v5 = v18;
          v19 = *(v18 + 25);
          if (v19 <= a3)
          {
            break;
          }

          v18 = *v18;
          v13 = v5;
          if (!*v5)
          {
            goto LABEL_42;
          }
        }

        if (v19 >= a3)
        {
          return result;
        }

        v18 = v18[1];
        if (!v18)
        {
          goto LABEL_30;
        }
      }
    }
  }

  if (v9)
  {
    v17 = v11;
  }

  else
  {
    v17 = a2;
  }

  if (v9)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = a2;
  }

  if (!*v13)
  {
    v5 = v17;
LABEL_42:
    v23 = operator new(0x20uLL);
    v23[25] = a4;
    *v23 = 0;
    *(v23 + 1) = 0;
    *(v23 + 2) = v5;
    *v13 = v23;
    v24 = **v6;
    if (v24)
    {
      *v6 = v24;
      v25 = *v13;
    }

    else
    {
      v25 = v23;
    }

    result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v6[1], v25);
    ++v6[2];
  }

  return result;
}

void ctu::rest::detail::read_raw_binary_value(char *a1, size_t a2, xpc_object_t *a3)
{
  if (MEMORY[0x1AC581B70](*a3) != MEMORY[0x1E69E9E70] || (length = xpc_data_get_length(*a3), (bytes_ptr = xpc_data_get_bytes_ptr(*a3)) == 0))
  {
    v6 = a1;
    v7 = a2;
LABEL_3:

    bzero(v6, v7);
    return;
  }

  if (length >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = length;
  }

  memcpy(a1, bytes_ptr, v10);
  v7 = a2 - length;
  if (a2 > length)
  {
    v6 = &a1[length];
    goto LABEL_3;
  }
}

xpc_object_t ctu::rest::detail::write_enum_string_value@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  return xpc::string("%lld:%s", a3, a1, v3);
}

{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  return xpc::string("%llu:%s", a3, a1, v3);
}

void sub_1A912C3B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A912C448(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A912C428);
}

void sub_1A912C454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A912C4E8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A912C4C8);
}

void sub_1A912C4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A912C588(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A912C568);
}

void sub_1A912C594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A912C628(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A912C608);
}

void sub_1A912C634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A912C6C8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A912C6A8);
}

void sub_1A912C6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A912C768(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A912C748);
}

void sub_1A912C774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A912C808(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A912C7E8);
}

void sub_1A912C814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::xpc_to_cf@<X0>(void *a1@<X8>)
{
  result = _CFXPCCreateCFObjectFromXPCObject();
  *a1 = result;
  return result;
}

std::runtime_error *ctu::IllegalTimerParamsException::IllegalTimerParamsException(std::runtime_error *this, const char *a2)
{
  result = std::runtime_error::runtime_error(this, a2);
  result->__vftable = &unk_1F1CB68F0;
  return result;
}

{
  result = std::runtime_error::runtime_error(this, a2);
  result->__vftable = &unk_1F1CB68F0;
  return result;
}

void ctu::IllegalTimerParamsException::~IllegalTimerParamsException(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

void ctu::TimerService::scheduleAfterImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v11 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  if (a5)
  {
    v12 = _Block_copy(a5);
  }

  else
  {
    v12 = 0;
  }

  *__p = *a2;
  v16 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  aBlock = v12;
  object = v11;
  (*(*a1 + 8))(a1, __p, a3, a4, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A912C9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ctu::TimerService::createOneShotTimerImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, intptr_t identifier, const void *a6)
{
  global_queue = dispatch_get_global_queue(identifier, 0);
  v13 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  if (a6)
  {
    v14 = _Block_copy(a6);
  }

  else
  {
    v14 = 0;
  }

  v18 = *(a2 + 16);
  *__p = *a2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  aBlock = v14;
  object = v13;
  (*(*a1 + 16))(a1, __p, a3, a4, identifier, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A912CB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ctu::TimerService::createPeriodicTimerImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, intptr_t identifier, const void *a6)
{
  global_queue = dispatch_get_global_queue(identifier, 0);
  v13 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  if (a6)
  {
    v14 = _Block_copy(a6);
  }

  else
  {
    v14 = 0;
  }

  *__p = *a2;
  v18 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  aBlock = v14;
  object = v13;
  (*(*a1 + 24))(a1, __p, a3, a4, identifier, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A912CC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::TimerService::scheduleAfterImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[4] = *MEMORY[0x1E69E9840];
  global_queue = dispatch_get_global_queue(0, 0);
  v11 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN3ctu12TimerService17scheduleAfterImplENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_5tupleIJNS_8TimeTypeENS1_6chrono8durationIxNS1_5ratioILl1ELl1000000EEEEEEEENS1_8functionIFvvEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_19;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v20, a5);
  v12 = _Block_copy(aBlock);
  *__p = *a2;
  v18 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v15 = v12;
  object = v11;
  (*(*a1 + 8))(a1, __p, a3, a4, &object, &v15);
  if (v15)
  {
    _Block_release(v15);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v20);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A912CE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN3ctu12TimerService17scheduleAfterImplENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_5tupleIJNS_8TimeTypeENS1_6chrono8durationIxNS1_5ratioILl1ELl1000000EEEEEEEENS1_8functionIFvvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t ctu::TimerService::createOneShotTimerImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, intptr_t identifier, uint64_t a6)
{
  v22[4] = *MEMORY[0x1E69E9840];
  global_queue = dispatch_get_global_queue(identifier, 0);
  v13 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN3ctu12TimerService22createOneShotTimerImplENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_5tupleIJNS_8TimeTypeENS1_6chrono8durationIxNS1_5ratioILl1ELl1000000EEEEEEEE11qos_class_tNS1_8functionIFvvEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_3_1;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v22, a6);
  v14 = _Block_copy(aBlock);
  v20 = *(a2 + 16);
  *__p = *a2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v17 = v14;
  object = v13;
  (*(*a1 + 16))(a1, __p, a3, a4, identifier, &object, &v17);
  if (v17)
  {
    _Block_release(v17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v22);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A912D0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN3ctu12TimerService22createOneShotTimerImplENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_5tupleIJNS_8TimeTypeENS1_6chrono8durationIxNS1_5ratioILl1ELl1000000EEEEEEEE11qos_class_tNS1_8functionIFvvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t ctu::TimerService::createPeriodicTimerImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, intptr_t identifier, uint64_t a6)
{
  v22[4] = *MEMORY[0x1E69E9840];
  global_queue = dispatch_get_global_queue(identifier, 0);
  v13 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN3ctu12TimerService23createPeriodicTimerImplENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_5tupleIJNS_8TimeTypeENS1_6chrono8durationIxNS1_5ratioILl1ELl1000000EEEEEEEE11qos_class_tNS1_8functionIFvvEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_6_0;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v22, a6);
  v14 = _Block_copy(aBlock);
  *__p = *a2;
  v20 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v17 = v14;
  object = v13;
  (*(*a1 + 24))(a1, __p, a3, a4, identifier, &object, &v17);
  if (v17)
  {
    _Block_release(v17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v22);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A912D2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN3ctu12TimerService23createPeriodicTimerImplENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_5tupleIJNS_8TimeTypeENS1_6chrono8durationIxNS1_5ratioILl1ELl1000000EEEEEEEE11qos_class_tNS1_8functionIFvvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void ctu::TimerService::throwIfPeriodIsZero(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    ctu::IllegalTimerParamsException::IllegalTimerParamsException(exception, "Cannot set up a period of 0 time; that would be insane!");
  }
}

void ctu::TimerService::createPeriodicTimerImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject **a5, void **a6)
{
  *__p = *a2;
  v10 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = *a5;
  *a5 = 0;
  aBlock = *a6;
  object = v6;
  *a6 = 0;
  (*(*a1 + 24))(a1, __p, a3, a4, 0, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A912D4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ctu::Gestalt::create_default_global(void *a1@<X8>)
{
  v3 = operator new(0x20uLL);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = &unk_1F1CB50E8;
  v3[3] = &unk_1F1CB7578;
  {
  }

  *a1 = v3 + 3;
  a1[1] = v3;
}

void std::__shared_ptr_emplace<anonymous namespace::GestaltIos>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1CB50E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t anonymous namespace::GestaltIos::isInternalBuild(_anonymous_namespace_::GestaltIos *this)
{
  if (_TUQueryBuildInformationOnce != -1)
  {
    dispatch_once(&_TUQueryBuildInformationOnce, &__block_literal_global_43);
  }

  return _TUIsInternalBuildCached;
}

uint64_t anonymous namespace::GestaltIos::isCarrierBuild(_anonymous_namespace_::GestaltIos *this)
{
  if (_TUQueryBuildInformationOnce != -1)
  {
    dispatch_once(&_TUQueryBuildInformationOnce, &__block_literal_global_43);
  }

  return _TUIsCarrierBuildCached;
}

uint64_t anonymous namespace::GestaltIos::isInternalOrCarrierBuild(_anonymous_namespace_::GestaltIos *this)
{
  if ((*(*this + 16))(this))
  {
    return 1;
  }

  v3 = *(*this + 24);

  return v3(this);
}

uint64_t **anonymous namespace::GestaltIos::getDeviceMaterial@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  v9 = 1;
  *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(a1, 1u, &v9) + 8) = MGValueAs;
  v9 = 1;
  v4 = *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(a1, 1u, &v9) + 8);
  v8 = 2;
  *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(a1, 2u, &v8) + 8) = v4;
  v9 = 3;
  *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(a1, 3u, &v9) + 8) = v5;
  v9 = 4;
  result = std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(a1, 4u, &v9);
  *(result + 8) = v6;
  return result;
}

const void **anonymous namespace::GestaltIos::getNVRAMVar@<X0>(void *a1@<X8>)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  cf = 0;
  if (off_1EB382910)
  {
    v4 = off_1EB382910(@"NVRAMDictionary", 0);
    v5 = cf;
    cf = v4;
    v18 = v5;
    ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&v18);
    if (cf)
    {
      v6 = CFGetTypeID(cf);
      if (v6 == CFDictionaryGetTypeID())
      {
        v19 = 0;
        v20 = 0;
        context[1] = &v19;
        v18 = &v19;
        context[0] = &v18;
        CFDictionaryApplyFunction(cf, ctu::cf::_Applier_InsertMapDefault<std::string,std::string,std::insert_iterator<std::map<std::string,std::string>>>, context);
        v8 = *a1;
        v7 = a1[1];
        v9 = v19;
        *a1 = v18;
        a1[1] = v9;
        v18 = v8;
        v19 = v7;
        v10 = a1[2];
        v11 = v20;
        a1[2] = v20;
        v20 = v10;
        v12 = v9 + 2;
        if (v11)
        {
          v13 = v12;
        }

        else
        {
          v13 = a1;
        }

        *v13 = v3;
        if (v10)
        {
          v14 = v7 + 2;
        }

        else
        {
          v14 = &v18;
        }

        *v14 = &v19;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v7);
      }
    }
  }

  return ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&cf);
}

void sub_1A912DA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a13);
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&a9);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*v13);
  _Unwind_Resume(a1);
}

unint64_t anonymous namespace::GestaltIos::isEoS(_anonymous_namespace_::GestaltIos *this)
{
  {
    cf = 0;
    if (off_1EB382910)
    {
      v2 = off_1EB382910(@"EOSHalleyConfiguration", 0);
      v3 = cf;
      cf = v2;
      v8 = v3;
      ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&v8);
      v1 = cf;
      if (!cf)
      {
LABEL_8:
        ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&cf);
        return v1;
      }

      LODWORD(v8) = -1;
      v4 = CFGetTypeID(cf);
      if (v4 == CFNumberGetTypeID())
      {
        ctu::cf::assign(&v8, cf, v5);
        v1 = v8 == 0;
        goto LABEL_8;
      }
    }

    v1 = 0;
    goto LABEL_8;
  }

  return 0;
}

void *___ZN12_GLOBAL__N_130ensureMobileGestaltDylibLoadedEv_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  strcpy(v2, "/usr/lib/libMobileGestalt.dylib");
  result = dlopen(v2, 1);
  _MergedGlobals_6 = result;
  if (result)
  {
    result = dlsym(result, "MGCopyAnswer");
    off_1EB382910 = result;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

const void **anonymous namespace::GestaltIos::getMGValue<std::string>(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  cf = 0;
  if (off_1EB382910)
  {
    v3 = off_1EB382910(a2, 0);
    v4 = cf;
    cf = v3;
    v7 = v4;
    ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&v7);
    if (cf)
    {
      ctu::cf::assign(a1, cf);
    }
  }

  return ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&cf);
}

void sub_1A912DC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&a9);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

const void **ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t anonymous namespace::GestaltIos::getMGValueAsNumber<BOOL>(uint64_t a1)
{
  cf = 0;
  if (!off_1EB382910)
  {
    goto LABEL_5;
  }

  v1 = off_1EB382910(a1, 0);
  v2 = cf;
  cf = v1;
  v8 = v2;
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&v8);
  v3 = cf;
  if (cf)
  {
    LOBYTE(v8) = 0;
    v4 = CFGetTypeID(cf);
    if (v4 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v8, cf, v5);
      v3 = v8;
      goto LABEL_6;
    }

LABEL_5:
    v3 = 0;
  }

LABEL_6:
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&cf);
  return v3 & 1;
}

unint64_t anonymous namespace::GestaltIos::getMGValueAsNumber<int>(uint64_t a1)
{
  cf = 0;
  if (!off_1EB382910)
  {
    goto LABEL_5;
  }

  v1 = off_1EB382910(a1, 0);
  v2 = cf;
  cf = v1;
  v8 = v2;
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&v8);
  v3 = cf;
  if (cf)
  {
    LODWORD(v8) = 0;
    v4 = CFGetTypeID(cf);
    if (v4 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v8, cf, v5);
      v3 = v8;
      goto LABEL_6;
    }

LABEL_5:
    v3 = 0;
  }

LABEL_6:
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&cf);
  return v3;
}

uint64_t **std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t **a1, unsigned int a2, _DWORD *a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 7);
        if (v8 <= a2)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= a2)
      {
        break;
      }

      v5 = v7[1];
      if (!v5)
      {
        v6 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = a1 + 1;
LABEL_9:
    v9 = v7;
    v7 = operator new(0x28uLL);
    *(v7 + 7) = *a3;
    *(v7 + 8) = 0;
    *v7 = 0;
    v7[1] = 0;
    v7[2] = v9;
    *v6 = v7;
    v10 = **a1;
    v11 = v7;
    if (v10)
    {
      *a1 = v10;
      v11 = *v6;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v11);
    a1[2] = (a1[2] + 1);
  }

  return v7;
}

void ctu::cf::_Applier_InsertMapDefault<std::string,std::string,std::insert_iterator<std::map<std::string,std::string>>>(__CFString *cf, __CFString *a2, uint64_t *a3)
{
  *v28 = 0u;
  v29 = 0u;
  *v27 = 0u;
  if (!ctu::cf::assign(v27, cf))
  {
    goto LABEL_39;
  }

  ctu::cf::assign(&v28[1], a2);
  std::pair<std::string const,std::string>::pair[abi:ne200100]<std::string,std::string,0>(&v24, v27);
  v5 = *a3;
  v6 = a3[1];
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  if ((v5 + 8) == v6 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, v6 + 4) & 0x80) != 0)
  {
    v8 = v6;
    if (*v5 == v6)
    {
      goto LABEL_18;
    }

    v9 = *v6;
    if (*v6)
    {
      do
      {
        v8 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = v6;
      do
      {
        v8 = v13[2];
        v14 = *v8 == v13;
        v13 = v8;
      }

      while (v14);
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 4, &v24.__r_.__value_.__l.__data_) & 0x80) != 0)
    {
LABEL_18:
      if (!*v6)
      {
        v33 = v6;
LABEL_24:
        v16 = operator new(0x50uLL);
        v17 = v16;
        v30[0] = v16;
        v30[1] = v5;
        v31 = 0;
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external((v16 + 32), v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
          v18 = v30[0];
        }

        else
        {
          *(v16 + 32) = v24;
          v18 = v16;
        }

        *(v17 + 56) = *__p;
        *(v17 + 9) = v26;
        __p[1] = 0;
        v26 = 0;
        __p[0] = 0;
        LOBYTE(v31) = 1;
        v19 = v33;
        *v18 = 0;
        v18[1] = 0;
        v18[2] = v19;
        *v6 = v18;
        v20 = **v5;
        if (v20)
        {
          *v5 = v20;
          v18 = *v6;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v5 + 8), v18);
        ++*(v5 + 16);
        v15 = v30[0];
        v30[0] = 0;
        std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v30);
        goto LABEL_30;
      }

      v33 = v8;
      v7 = v8 + 1;
      goto LABEL_20;
    }
  }

  else
  {
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 4, &v24.__r_.__value_.__l.__data_) & 0x80) == 0)
    {
      v32 = v6;
      v33 = v6;
      v7 = &v32;
      goto LABEL_21;
    }

    v7 = v6 + 1;
    v10 = v6[1];
    if (v10)
    {
      v11 = v6[1];
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v23 = v6;
      do
      {
        v12 = v23[2];
        v14 = *v12 == v23;
        v23 = v12;
      }

      while (!v14);
    }

    if (v12 == (v5 + 8))
    {
      goto LABEL_50;
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, v12 + 4) & 0x80) != 0)
    {
      v10 = *v7;
LABEL_50:
      if (v10)
      {
        v33 = v12;
        v7 = v12;
      }

      else
      {
        v33 = v6;
      }

      goto LABEL_20;
    }
  }

  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(v5, &v33, &v24.__r_.__value_.__l.__data_);
LABEL_20:
  v6 = *v7;
LABEL_21:
  v15 = v6;
  v6 = v7;
  if (!v15)
  {
    goto LABEL_24;
  }

LABEL_30:
  a3[1] = v15;
  v21 = v15[1];
  if (v21)
  {
    do
    {
      v22 = v21;
      v21 = *v21;
    }

    while (v21);
  }

  else
  {
    do
    {
      v22 = v15[2];
      v14 = *v22 == v15;
      v15 = v22;
    }

    while (!v14);
  }

  a3[1] = v22;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

LABEL_39:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[1]);
  }

  if (SHIBYTE(v28[0]) < 0)
  {
    operator delete(v27[0]);
  }
}

void sub_1A912E178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v15 - 88);
  std::pair<std::string,std::string>::~pair(&a9);
  std::pair<std::string,std::string>::~pair(&a15);
  _Unwind_Resume(a1);
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

void sub_1A912E228(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>((a1 + 4));

    operator delete(a1);
  }
}

void ctu::backtrace_string(ctu *this@<X0>, std::string *a2@<X8>)
{
  memset(__p, 170, sizeof(__p));
  ctu::capture_backtrace(0x40, __p);
  memset(&v4, 170, sizeof(v4));
  ctu::symbolicate_frames(__p[0] + this, (((__p[1] - __p[0]) >> 3) - this), &v4);
  ctu::join<std::__wrap_iter<std::string *>>(v4.__begin_, v4.__end_, "\n", 1uLL, a2);
  v6 = &v4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1A912E414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  *(v14 - 40) = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v14 - 40));
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ctu::capture_backtrace(ctu *this@<X0>, void ***a2@<X8>)
{
  v2 = this;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<void *>::resize(a2, this);
  v4 = backtrace(*a2, v2);
  std::vector<void *>::resize(a2, v4);
}

void sub_1A912E498(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ctu::symbolicate_frames(void *const *this@<X0>, void **a2@<X1>, std::vector<std::string> *a3@<X8>)
{
  v3 = a2;
  v5 = backtrace_symbols(this, a2);
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  a3->__begin_ = 0;
  std::vector<std::string>::reserve(a3, v3);
  if (v3)
  {
    end = a3->__end_;
    v7 = v5;
    do
    {
      if (end >= a3->__end_cap_.__value_)
      {
        end = std::vector<std::string>::__emplace_back_slow_path<char *&>(a3, v7);
      }

      else
      {
        std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,char *&,void,0>(a3, end++, v7);
      }

      a3->__end_ = end;
      ++v7;
      v3 = (v3 - 1);
    }

    while (v3);
  }

  if (v5)
  {

    operator delete(v5);
  }
}

void sub_1A912E590(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v3 = this->__end_ - this->__begin_;
    v12.__end_cap_.__value_ = this;
    v4 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, __n);
    v5 = &v4[v3];
    v7 = &v4[24 * v6];
    v8 = this->__end_ - this->__begin_;
    v9 = &v4[v3 - v8];
    memcpy(v9, this->__begin_, v8);
    begin = this->__begin_;
    this->__begin_ = v9;
    this->__end_ = v5;
    value = this->__end_cap_.__value_;
    this->__end_cap_.__value_ = v7;
    v12.__end_ = begin;
    v12.__end_cap_.__value_ = value;
    v12.__first_ = begin;
    v12.__begin_ = begin;
    std::__split_buffer<std::string>::~__split_buffer(&v12);
  }
}

void std::vector<void *>::resize(void *a1, unint64_t a2)
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
    std::vector<void *>::__append(a1, a2 - v2);
  }
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<char *&>(uint64_t a1, const char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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

  v14.__end_cap_.__value_ = a1;
  if (v6)
  {
    v7 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14.__first_ = v7;
  v14.__begin_ = v7 + v2;
  v14.__end_ = v14.__begin_;
  v14.__end_cap_.__value_ = &v7[v6];
  std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,char *&,void,0>(a1, v14.__begin_->__r_.__value_.__r.__words, a2);
  v8 = v14.__begin_ + 1;
  v9 = *(a1 + 8) - *a1;
  v10 = v14.__begin_ - v9;
  memcpy(v14.__begin_ - v9, *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v14.__end_cap_.__value_;
  v14.__end_ = v11;
  v14.__end_cap_.__value_ = v12;
  v14.__first_ = v11;
  v14.__begin_ = v11;
  std::__split_buffer<std::string>::~__split_buffer(&v14);
  return v8;
}

size_t std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,char *&,void,0>(uint64_t a1, void *a2, const char **a3)
{
  v4 = *a3;
  result = strlen(*a3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    if ((result | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (result | 7) + 1;
    }

    v8 = operator new(v7);
    a2[1] = v6;
    a2[2] = v7 | 0x8000000000000000;
    *a2 = v8;
    a2 = v8;
  }

  else
  {
    *(a2 + 23) = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  result = memmove(a2, v4, v6);
LABEL_10:
  *(a2 + v6) = 0;
  return result;
}

void std::vector<void *>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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
      if (v10 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v11 = operator new(8 * v10);
    }

    else
    {
      v11 = 0;
    }

    bzero(&v11[8 * (v7 >> 3)], 8 * a2);
    memcpy(v11, v6, v7);
    *a1 = v11;
    *(a1 + 8) = &v11[8 * (v7 >> 3) + 8 * a2];
    *(a1 + 16) = &v11[8 * v10];
    if (v6)
    {

      operator delete(v6);
    }
  }
}

std::string *ctu::join<std::__wrap_iter<std::string *>>@<X0>(std::string *__str@<X0>, std::string *a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (__str != a2)
  {
    v8 = __str;
    __str = std::string::operator=(a5, __str);
    if ((a4 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (a4 | 7) + 1;
    }

    for (i = v8 + 1; ; ++i)
    {
      if (i == a2)
      {
        return __str;
      }

      if (!a3)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        __dst = 0;
        v22 = 0;
        v23 = 0;
        goto LABEL_17;
      }

      if (a4 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (a4 >= 0x17)
      {
        p_dst = operator new(v10);
        v22 = a4;
        v23 = v10 | 0x8000000000000000;
        __dst = p_dst;
      }

      else
      {
        HIBYTE(v23) = a4;
        p_dst = &__dst;
        if (!a4)
        {
          goto LABEL_16;
        }
      }

      memmove(p_dst, a3, a4);
LABEL_16:
      *(p_dst + a4) = 0;
      v15 = HIBYTE(v23);
      v14 = __dst;
      v13 = v22;
LABEL_17:
      if ((v15 & 0x80u) == 0)
      {
        v16 = &__dst;
      }

      else
      {
        v16 = v14;
      }

      if ((v15 & 0x80u) == 0)
      {
        v17 = v15;
      }

      else
      {
        v17 = v13;
      }

      std::string::append(a5, v16, v17);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__dst);
      }

      v18 = SHIBYTE(i->__r_.__value_.__r.__words[2]);
      if (v18 >= 0)
      {
        v19 = i;
      }

      else
      {
        v19 = i->__r_.__value_.__r.__words[0];
      }

      if (v18 >= 0)
      {
        size = HIBYTE(i->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = i->__r_.__value_.__l.__size_;
      }

      __str = std::string::append(a5, v19, size);
    }
  }

  return __str;
}

void sub_1A912EAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void ctu::TreeRestResource::handleDroppedConnection(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v8 = *(a1 + 8);
    v9 = 40 * v4;
    do
    {
      v16[0] = *a3;
      memset(&__p, 170, sizeof(__p));
      ctu::llvm::StringRef::operator std::string(v16, &__p);
      v10 = *(v8 + 23);
      if (v10 >= 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = *v8;
      }

      if (v10 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = *(v8 + 8);
      }

      ctu::path_join_impl(&__p, v11, v12);
      v13 = *(v8 + 24);
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
        size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      ctu::PathView::PathView(v16, p_p, size);
      (*(*v13 + 32))(v13, a2, v16, a4);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 += 40;
      v9 -= 40;
    }

    while (v9);
  }
}

void sub_1A912EC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::TreeRestResource::handleRestMessage_GET(ctu::TreeRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  v5 = xpc_array_create(0, 0);
  if (v5 || (v5 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E50])
    {
      xpc_retain(v5);
      v6 = v5;
    }

    else
    {
      v6 = xpc_null_create();
    }
  }

  else
  {
    v6 = xpc_null_create();
    v5 = 0;
  }

  xpc_release(v5);
  v7 = *(this + 2);
  if (v7)
  {
    v8 = *(this + 1);
    v9 = 40 * v7;
    do
    {
      if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v8, *(v8 + 1));
      }

      else
      {
        v10 = *v8;
        __p.__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&__p.__r_.__value_.__l.__data_ = v10;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v12 = xpc_string_create(p_p);
      if (!v12)
      {
        v12 = xpc_null_create();
      }

      xpc_array_append_value(v6, v12);
      xpc_release(v12);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 = (v8 + 40);
      v9 -= 40;
    }

    while (v9);
  }

  __p.__r_.__value_.__r.__words[0] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    __p.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  (*(*a2 + 32))(a2, &__p);
  xpc_release(__p.__r_.__value_.__l.__data_);
  xpc_release(v6);
  return 1;
}

void sub_1A912EE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  xpc_release(object);
  xpc_release(v14);
  _Unwind_Resume(a1);
}

uint64_t ctu::TreeRestResource::handleMessage_DumpState(uint64_t a1, ctu::RestResourceContext *a2, uint64_t a3)
{
  (*(*a2 + 16))(object, a2);
  v7 = ctu::rest::asOperation(object, v6);
  xpc_release(object[0]);
  if (v7 == 2)
  {
    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
    __p.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20 = v8;
    *&__p.__r_.__value_.__l.__data_ = v8;
    *object = v8;
    ctu::ReplyDictRestResourceContextDecorator::ReplyDictRestResourceContextDecorator(object, a2);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 8);
      v11 = v10 + 40 * v9;
      do
      {
        std::string::operator=(&__p, v10);
        *&v12 = 0xAAAAAAAAAAAAAAAALL;
        *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v18[0] = v12;
        v18[1] = v12;
        if (*(a3 + 24))
        {
          v13 = *a3;
          v14 = (*(a3 + 16) - *a3);
          v15 = v14 - 1;
          if (v14 > 1)
          {
            v14 = *(a3 + 8);
            if (v15 < v14)
            {
              v14 = v15;
            }
          }

          else if (v14 >= *(a3 + 8))
          {
            v14 = *(a3 + 8);
          }
        }

        else
        {
          v13 = *a3;
          v14 = *(a3 + 8);
        }

        v17[0] = v13;
        v17[1] = v14;
        ctu::splice_path_with_head<ctu::llvm::StringRef,std::string &,char const(&)[2]>(v22, v17, v10, "*", v18);
        ctu::PathView::advance(v18, 1);
        (*(**(v10 + 24) + 16))(*(v10 + 24), object, v18);
        v10 += 40;
      }

      while (v10 != v11);
    }

    object[0] = &unk_1F1CB6710;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(&v20 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }
  }

  return 1;
}

uint64_t ctu::TreeRestResource::installSubResource(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2[2];
  v4 = a2[3];
  v24[0] = v3;
  v24[1] = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v8 = &v4[v3];
  v9 = (*a2 + a2[1]);
  if (v9 == v8)
  {
    v10 = (a1 + 8);
  }

  else
  {
    v10 = (a1 + 8);
    if (v8 + 1 != v9)
    {
      ctu::llvm::StringRef::operator std::string(v24, __p);
      boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>>>::find(v25, (a1 + 8), __p);
      v11 = v25[0];
      if ((v28[7] & 0x80000000) != 0)
      {
        operator delete(__p[0]);
      }

      if (v11 != *(a1 + 8) + 40 * *(a1 + 16))
      {
        v12 = *(a2 + 1);
        *__p = *a2;
        *v28 = v12;
        ctu::PathView::advance(__p, 1);
        result = (*(**(v11 + 24) + 24))(*(v11 + 24), __p, a3);
        goto LABEL_28;
      }

LABEL_8:
      result = 0;
      goto LABEL_28;
    }
  }

  *&v28[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v14;
  *v28 = v14;
  ctu::llvm::StringRef::operator std::string(v24, __p);
  *&v28[8] = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  v25[0] = __p;
  v25[1] = v10;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = (v15 + 40 * v16);
  while (v16)
  {
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15 + 5 * (v16 >> 1), __p) & 0x80u) == 0)
    {
      v16 >>= 1;
    }

    else
    {
      v15 = (v15 + 40 * (v16 >> 1) + 40);
      v16 += ~(v16 >> 1);
    }
  }

  if (v15 == v17 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v15) & 0x80) != 0)
  {
    v18 = *(a1 + 16);
    if (*(a1 + 24) == v18)
    {
      boost::container::vector<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>>,boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>*,boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>>>(&v26, v10, v15, __p);
    }

    else
    {
      v19 = *v10 + 40 * v18;
      if (v19 == v15)
      {
        v22 = *__p;
        *(v19 + 16) = *v28;
        *v19 = v22;
        __p[1] = 0;
        *v28 = 0;
        __p[0] = 0;
        *(v19 + 24) = *&v28[8];
        *&v28[8] = 0;
        *&v28[16] = 0;
        ++*(a1 + 16);
      }

      else
      {
        v20 = v19 - 40;
        *v19 = *(v19 - 40);
        *(v19 + 16) = *(v19 - 24);
        *(v19 - 40) = 0;
        *(v19 - 32) = 0;
        *(v19 + 24) = *(v19 - 16);
        *(v19 - 24) = 0;
        *(v19 - 16) = 0;
        *(v19 - 8) = 0;
        ++*(a1 + 16);
        if ((v19 - 40) != v15)
        {
          do
          {
            v21 = (v20 - 40);
            boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>::operator=(v20, (v20 - 40));
            v20 = v21;
          }

          while (v21 != v15);
        }

        boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>::operator=(v15, __p);
      }
    }
  }

  if (*&v28[16])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v28[16]);
  }

  if ((v28[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  result = 1;
LABEL_28:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A912F35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  boost::container::dtl::value_destructor<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>>,boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>>::~value_destructor(va);
  _Unwind_Resume(a1);
}

void ctu::TreeRestResource::~TreeRestResource(ctu::TreeRestResource *this)
{
  *this = &unk_1F1CB7070;
  boost::container::vector<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>>,void>::~vector(this + 1);
}

{
  *this = &unk_1F1CB7070;
  boost::container::vector<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>>,void>::~vector(this + 1);

  operator delete(this);
}

void *boost::container::vector<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>>,void>::~vector(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 32);
    do
    {
      if (*v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v3);
      }

      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 4));
      }

      v3 += 5;
      --v2;
    }

    while (v2);
  }

  if (a1[2])
  {
    operator delete(*a1);
  }

  return a1;
}

void boost::container::vector<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>>,boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>*,boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>>>(void *a1, char *a2, __int128 *a3, __int128 *a4)
{
  v4 = *(a2 + 2);
  v5 = *(a2 + 1) + 1;
  if (0x333333333333333 - v4 < v5 - v4)
  {
    goto LABEL_29;
  }

  v6 = v4 >> 61;
  v7 = 8 * v4;
  if (v6 > 4)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7;
  }

  v9 = v7 / 5;
  if (v6)
  {
    v9 = v8;
  }

  if (v9 >= 0x333333333333333)
  {
    v9 = 0x333333333333333;
  }

  v10 = v5 <= v9 ? v9 : *(a2 + 1) + 1;
  v11 = *(a2 + 1) - 0x333333333333332 < 0;
  if (v5 > 0x333333333333333)
  {
LABEL_29:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v16 = *a2;
  v17 = operator new(40 * v10);
  v18 = v17;
  v19 = *a2;
  v20 = *a2 + 40 * *(a2 + 1);
  v21 = v17;
  if (*a2 != a3)
  {
    v22 = *a2;
    v21 = v17;
    do
    {
      v23 = *v22;
      *(v21 + 2) = *(v22 + 2);
      *v21 = v23;
      *(v22 + 1) = 0;
      *(v22 + 2) = 0;
      *v22 = 0;
      *(v21 + 24) = *(v22 + 24);
      *(v22 + 3) = 0;
      *(v22 + 4) = 0;
      v22 = (v22 + 40);
      v21 += 40;
    }

    while (v22 != a3);
  }

  v24 = *a4;
  *(v21 + 2) = *(a4 + 2);
  *v21 = v24;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  *(v21 + 24) = *(a4 + 24);
  *(a4 + 3) = 0;
  *(a4 + 4) = 0;
  if (v20 != a3)
  {
    v25 = v21 + 64;
    v26 = a3;
    do
    {
      v27 = *v26;
      *(v25 - 1) = *(v26 + 2);
      *(v25 - 24) = v27;
      *(v26 + 1) = 0;
      *(v26 + 2) = 0;
      *v26 = 0;
      *v25 = *(v26 + 24);
      v25 = (v25 + 40);
      *(v26 + 3) = 0;
      *(v26 + 4) = 0;
      v26 = (v26 + 40);
    }

    while (v26 != v20);
  }

  if (v19)
  {
    v28 = *(a2 + 1);
    if (v28)
    {
      v29 = (v19 + 32);
      do
      {
        if (*v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v29);
        }

        if (*(v29 - 9) < 0)
        {
          operator delete(*(v29 - 4));
        }

        v29 += 5;
        --v28;
      }

      while (v28);
    }

    operator delete(*a2);
  }

  v30 = *(a2 + 1) + 1;
  *a2 = v18;
  *(a2 + 1) = v30;
  *(a2 + 2) = v10;
  *a1 = &v18[a3 - v16];
}

uint64_t boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  v5 = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v6 = *(a1 + 32);
  *(a1 + 24) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

uint64_t *boost::container::dtl::value_destructor<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>>,boost::container::dtl::pair<std::string,std::shared_ptr<ctu::RestResourceBase>>>::~value_destructor(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  return a1;
}

xpc_object_t *ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(ctu::os::OSSharedRef<os_log_s>,xpc::dict const&,dispatch::queue const&,std::shared_ptr<ctu::RestResourceConnection> const&,std::function<void ()(xpc::object)>)::$_0::~$_0(xpc_object_t *a1)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100]((a1 + 1));
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

uint64_t ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(uint64_t a1, uint64_t a2, NSObject **a3, void *a4, uint64_t a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0;
  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v12, a5);
  ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(a1, &v11, a2, a3, a4, v12);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v12);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return a1;
}

{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0;
  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v12, a5);
  ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(a1, &v11, a2, a3, a4, v12);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v12);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v11);
  v9 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1A912F7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](&a10);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&a9);
  _Unwind_Resume(a1);
}

void sub_1A912F8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](&a10);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&a9);
  _Unwind_Resume(a1);
}

BOOL ctu::ReplyCallbackRestResourceContext::sendReplyWithValue(ctu::ReplyCallbackRestResourceContext *this, void **a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(this + 8);
  if (v2)
  {
    v5 = *(this + 9);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(this + 3);
      v11 = (v10 + 8);
      if (*(v10 + 31) < 0)
      {
        v11 = *v11;
      }

      xpc::object::to_string(a2, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v16 = v11;
      v17 = 2048;
      v18 = v10;
      v19 = 2080;
      v20 = p_p;
      _os_log_debug_impl(&dword_1A90E3000, v5, OS_LOG_TYPE_DEBUG, "[conn %s (%p)] Sending reply: %s", buf, 0x20u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v6 = *a2;
    object = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object = xpc_null_create();
    }

    v7 = *(this + 8);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v7 + 48))(v7, &object);
    xpc_release(object);
  }

  result = v2 != 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ctu::ReplyCallbackRestResourceContext::getAuthorResource@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  *a2 = *(this + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

ctu::ReplyDictRestResourceContextDecorator *ctu::ReplyDictRestResourceContextDecorator::ReplyDictRestResourceContextDecorator(ctu::ReplyDictRestResourceContextDecorator *this, ctu::RestResourceContext *a2)
{
  *this = &unk_1F1CB6710;
  *(this + 1) = a2;
  *(this + 1) = 0u;
  v3 = (this + 16);
  *(this + 2) = 0u;
  *(this + 6) = 0;
  (*(*a2 + 40))(&v11, a2);
  v4 = v11;
  v11 = 0uLL;
  v5 = *(this + 3);
  *(this + 1) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    if (*(&v11 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
    }
  }

  if (MEMORY[0x1AC581B70](**v3) == MEMORY[0x1E69E9ED0])
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6 || (v6 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x1AC581B70](v6) == MEMORY[0x1E69E9E80])
      {
        xpc_retain(v6);
        v7 = v6;
      }

      else
      {
        v7 = xpc_null_create();
      }
    }

    else
    {
      v7 = xpc_null_create();
      v6 = 0;
    }

    xpc_release(v6);
    if (v7)
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }

    v9 = **v3;
    **v3 = v8;
    xpc_release(v9);
    xpc_release(v7);
  }

  return this;
}

void sub_1A912FC74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL ctu::ReplyDictRestResourceContextDecorator::sendReplyWithValue(uint64_t a1, void **a2)
{
  v4 = *(a1 + 55);
  if (v4 < 0)
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      return v4 != 0;
    }
  }

  else if (!*(a1 + 55))
  {
    return v4 != 0;
  }

  v5 = **(a1 + 16);
  v12 = v5;
  if (v5 && MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E80])
  {
    xpc_retain(v5);
  }

  else
  {
    v12 = xpc_null_create();
  }

  v6 = *a2;
  v10 = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    v10 = xpc_null_create();
  }

  v7 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v7 = *v7;
  }

  v9[0] = &v12;
  v9[1] = v7;
  xpc::dict::object_proxy::operator=(v9, &v10, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v10);
  v10 = 0;
  xpc_release(v12);
  return v4 != 0;
}

void ctu::ReplyDictRestResourceContextDecorator::takeAutoReplyValue(ctu::ReplyDictRestResourceContextDecorator *this@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x48uLL);
  v5 = v4;
  *v4 = &unk_1F1CB4EF0;
  *(v4 + 1) = 0;
  v7 = *(this + 2);
  v6 = *(this + 3);
  *(v4 + 2) = 0;
  *(v4 + 3) = v7;
  *(v4 + 4) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 40), *(this + 4), *(this + 5));
  }

  else
  {
    *(v4 + 40) = *(this + 2);
    *(v4 + 7) = *(this + 6);
  }

  v5[2].__shared_weak_owners_ = xpc_null_create();
  *a2 = v5 + 64;
  a2[1] = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_1A912FE84(_Unwind_Exception *a1)
{
  shared_owners = v1[1].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void ctu::ReplyCallbackRestResourceContext::~ReplyCallbackRestResourceContext(void **this)
{
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(this + 9);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100]((this + 5));
  v2 = this[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[2];
  if (v3)
  {
    dispatch_release(v3);
  }
}

{
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(this + 9);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100]((this + 5));
  v2 = this[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  operator delete(this);
}

void std::__shared_ptr_emplace<anonymous namespace::createAutoReplyValueInsideOuterReply(std::shared_ptr<xpc::object> const&,std::string const&)::AutoReplier,std::allocator<anonymous namespace::createAutoReplyValueInsideOuterReply(std::shared_ptr<xpc::object> const&,std::string const&)::AutoReplier>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1CB4EF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<anonymous namespace::createAutoReplyValueInsideOuterReply(std::shared_ptr<xpc::object> const&,std::string const&)::AutoReplier,std::allocator<anonymous namespace::createAutoReplyValueInsideOuterReply(std::shared_ptr<xpc::object> const&,std::string const&)::AutoReplier>>::__on_zero_shared(uint64_t a1)
{
  v2 = **(a1 + 24);
  v10 = v2;
  v3 = MEMORY[0x1E69E9E80];
  if (v2 && MEMORY[0x1AC581B70](v2) == v3)
  {
    xpc_retain(v2);
  }

  else
  {
    v2 = xpc_null_create();
    v10 = v2;
  }

  if (MEMORY[0x1AC581B70](v2) == v3)
  {
    v4 = *(a1 + 64);
    v8 = v4;
    if (v4)
    {
      xpc_retain(v4);
    }

    else
    {
      v8 = xpc_null_create();
    }

    v5 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
    }

    v7[0] = &v10;
    v7[1] = v5;
    xpc::dict::object_proxy::operator=(v7, &v8, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v8);
    v8 = 0;
    v2 = v10;
  }

  xpc_release(v2);
  xpc_release(*(a1 + 64));
  *(a1 + 64) = 0;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

uint64_t std::__function::__func<ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(ctu::os::OSSharedRef<os_log_s>,xpc::dict const&,dispatch::queue const&,std::shared_ptr<ctu::RestResourceConnection> const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(ctu::os::OSSharedRef<os_log_s>,xpc::dict const&,dispatch::queue const&,std::shared_ptr<ctu::RestResourceConnection> const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F1CB55B0;
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 16);
  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void std::__function::__func<ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(ctu::os::OSSharedRef<os_log_s>,xpc::dict const&,dispatch::queue const&,std::shared_ptr<ctu::RestResourceConnection> const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(ctu::os::OSSharedRef<os_log_s>,xpc::dict const&,dispatch::queue const&,std::shared_ptr<ctu::RestResourceConnection> const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::~__func(xpc_object_t *a1)
{
  *a1 = &unk_1F1CB55B0;
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100]((a1 + 2));
  xpc_release(a1[1]);

  operator delete(a1);
}

void *std::__function::__func<ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(ctu::os::OSSharedRef<os_log_s>,xpc::dict const&,dispatch::queue const&,std::shared_ptr<ctu::RestResourceConnection> const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(ctu::os::OSSharedRef<os_log_s>,xpc::dict const&,dispatch::queue const&,std::shared_ptr<ctu::RestResourceConnection> const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::__clone(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  *v2 = &unk_1F1CB55B0;
  v3 = *(a1 + 8);
  v2[1] = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v2[1] = xpc_null_create();
  }

  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v2 + 2), a1 + 16);
  return v2;
}

void sub_1A91303B0(_Unwind_Exception *a1)
{
  xpc::dict::~dict(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(ctu::os::OSSharedRef<os_log_s>,xpc::dict const&,dispatch::queue const&,std::shared_ptr<ctu::RestResourceConnection> const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(ctu::os::OSSharedRef<os_log_s>,xpc::dict const&,dispatch::queue const&,std::shared_ptr<ctu::RestResourceConnection> const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F1CB55B0;
  v4 = *(a1 + 8);
  a2[1] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    a2[1] = xpc_null_create();
  }

  return std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(ctu::os::OSSharedRef<os_log_s>,xpc::dict const&,dispatch::queue const&,std::shared_ptr<ctu::RestResourceConnection> const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(ctu::os::OSSharedRef<os_log_s>,xpc::dict const&,dispatch::queue const&,std::shared_ptr<ctu::RestResourceConnection> const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::destroy(uint64_t a1)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 16);
  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
}

uint64_t std::__function::__func<ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(ctu::os::OSSharedRef<os_log_s>,xpc::dict const&,dispatch::queue const&,std::shared_ptr<ctu::RestResourceConnection> const&,std::function<void ()(xpc::object)>)::$_0,std::allocator<ctu::ReplyCallbackRestResourceContext::ReplyCallbackRestResourceContext(ctu::os::OSSharedRef<os_log_s>,xpc::dict const&,dispatch::queue const&,std::shared_ptr<ctu::RestResourceConnection> const&,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ctu::base64::encode(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  v3 = (a2 + 8);
  *a2 = 0;
  *(a2 + 16) = 0;
  if (*a1 != a1[1])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:*a1 length:a1[1] - *a1 freeWhenDone:{0, v5}];
    if (v6)
    {
      v10 = 0;
      v11 = 0uLL;
      ctu::cf::assign(&v10, [v6 base64EncodedStringWithOptions:0]);
      v7 = v10;
      *v3 = v11;
      *(v3 + 7) = *(&v11 + 7);
      v8 = HIBYTE(v11);
      *a2 = v7;
      *(a2 + 23) = v8;
    }

    ctu::ns::AutoPool::~AutoPool(&v9);
  }
}

void sub_1A9130594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ctu::ns::AutoPool::~AutoPool(&a9);
  _Unwind_Resume(a1);
}

void ctu::base64::decode(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = a1[1];
  }

  if (v3)
  {
    v14 = objc_autoreleasePoolPush();
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    if (v6 >= 0)
    {
      v8 = *(a1 + 23);
    }

    else
    {
      v8 = a1[1];
    }

    v9 = [v5 initWithBytesNoCopy:v7 length:v8 encoding:4 freeWhenDone:0];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:1];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 length];
        if (v12)
        {
          std::vector<unsigned char>::__append(a2, v12);
          v13 = *a2;
        }

        else
        {
          v13 = 0;
        }

        [v11 getBytes:v13 length:{objc_msgSend(v11, "length")}];
      }
    }

    ctu::ns::AutoPool::~AutoPool(&v14);
  }
}

void sub_1A91306C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::ns::AutoPool::~AutoPool(va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t ctu::DispatchTimerService::create@<X0>(std::__shared_weak_count_vtbl **a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x30uLL);
  v3->~__shared_weak_count = &unk_1F1CB7378;
  ctu::SharedLoggable<ctu::DispatchTimerService,ctu::OsLogLogger>::SharedLoggable<char const(&)[6]>(&v3->~__shared_weak_count_0, "DispatchTimerService", QOS_CLASS_UTILITY, "timer");
  v4 = &unk_1F1CB6DA0;
  v3->~__shared_weak_count = &unk_1F1CB6DA0;
  *a1 = v3;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = operator new(0x20uLL);
  v5->__vftable = &unk_1F1CB4CC0;
  v5->__shared_owners_ = 0;
  v5->__shared_weak_owners_ = 0;
  v5[1].__vftable = v3;
  a1[1] = v5;
  on_zero_shared = v3->__on_zero_shared;
  if (!on_zero_shared)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3->~__shared_weak_count_0 = v3;
    v3->__on_zero_shared = v5;
    goto LABEL_5;
  }

  if (on_zero_shared->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3->~__shared_weak_count_0 = v3;
    v3->__on_zero_shared = v5;
    std::__shared_weak_count::__release_weak(on_zero_shared);
LABEL_5:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    v4 = v3->~__shared_weak_count;
  }

  return (*(v4 + 7))(v3);
}

ctu::DispatchTimerService *ctu::DispatchTimerService::DispatchTimerService(ctu::DispatchTimerService *this)
{
  *this = &unk_1F1CB7378;
  ctu::SharedLoggable<ctu::DispatchTimerService,ctu::OsLogLogger>::SharedLoggable<char const(&)[6]>(this + 1, "DispatchTimerService", QOS_CLASS_UTILITY, "timer");
  *this = &unk_1F1CB6DA0;
  return this;
}

{
  *this = &unk_1F1CB7378;
  ctu::SharedLoggable<ctu::DispatchTimerService,ctu::OsLogLogger>::SharedLoggable<char const(&)[6]>(this + 1, "DispatchTimerService", QOS_CLASS_UTILITY, "timer");
  *this = &unk_1F1CB6DA0;
  return this;
}

void *ctu::DispatchTimerService::DispatchTimerService(void *a1)
{
  *a1 = &unk_1F1CB7378;
  ctu::SharedLoggable<ctu::DispatchTimerService,ctu::OsLogLogger>::SharedLoggable<char const(&)[6]>(a1 + 1, "DispatchTimerService", QOS_CLASS_UTILITY, "timer");
  *a1 = &unk_1F1CB6DA0;
  return a1;
}

{
  *a1 = &unk_1F1CB7378;
  ctu::SharedLoggable<ctu::DispatchTimerService,ctu::OsLogLogger>::SharedLoggable<char const(&)[6]>(a1 + 1, "DispatchTimerService", QOS_CLASS_UTILITY, "timer");
  *a1 = &unk_1F1CB6DA0;
  return a1;
}

void *ctu::SharedLoggable<ctu::DispatchTimerService,ctu::OsLogLogger>::SharedLoggable<char const(&)[6]>(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  a1[4] = os_log_create("com.apple.telephony", a4);
  return a1;
}

void ctu::DispatchTimerService::~DispatchTimerService(void **this)
{
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(this + 5);
  ctu::SharedSynchronizable<ctu::RestModuleState>::~SharedSynchronizable(this + 1);
}

{
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(this + 5);
  ctu::SharedSynchronizable<ctu::RestModuleState>::~SharedSynchronizable(this + 1);
}

{
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(this + 5);
  ctu::SharedSynchronizable<ctu::RestModuleState>::~SharedSynchronizable(this + 1);

  operator delete(this);
}

uint64_t ctu::DispatchTimerService::dispatchClockID(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = 1;
  if (v2 == 2)
  {
    v3 = 2;
  }

  if (v2 == 1)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void ctu::DispatchTimerService::scheduleAfterImpl(uint64_t a1, uint64_t a2, char a3, uint64_t a4, NSObject **a5, void **a6)
{
  v8 = dispatch_time(qword_1A9163480[a3], 1000 * a4);
  v9 = *a5;
  v10 = *a6;

  dispatch_after(v8, v9, v10);
}

void ___ZNK3ctu20DispatchTimerService19createDispatchTimerEP16dispatch_queue_sRKNSt3__15tupleIJNS_8TimeTypeENS3_6chrono8durationIxNS3_5ratioILl1ELl1000000EEEEEEEEy11qos_class_tU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  dispatch_source_cancel(v2);
}

void ctu::DispatchTimerService::createOneShotTimerImpl(uint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W4>, dispatch_queue_t *a4@<X5>, void **a5@<X6>, void *a6@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  ctu::DispatchTimerService::createDispatchTimer(*a4, v6, 0xFFFFFFFFFFFFFFFFLL, a3, *a5, a6);
}

void ctu::DispatchTimerService::createPeriodicTimerImpl(uint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W4>, dispatch_queue_t *a4@<X5>, void **a5@<X6>, void *a6@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  ctu::DispatchTimerService::createDispatchTimer(*a4, v6, 1000 * a2, a3, *a5, a6);
}

void std::__shared_ptr_pointer<ctu::DispatchTimerService *,std::shared_ptr<ctu::DispatchTimerService> ctu::SharedSynchronizable<ctu::DispatchTimerService>::make_shared_ptr<ctu::DispatchTimerService>(ctu::DispatchTimerService*)::{lambda(ctu::DispatchTimerService *)#1},std::allocator<ctu::DispatchTimerService>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::DispatchTimerService *,std::shared_ptr<ctu::DispatchTimerService> ctu::SharedSynchronizable<ctu::DispatchTimerService>::make_shared_ptr<ctu::DispatchTimerService>(ctu::DispatchTimerService*)::{lambda(ctu::DispatchTimerService *)#1},std::allocator<ctu::DispatchTimerService>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::shared_ptr<ctu::DispatchTimerService> ctu::SharedSynchronizable<ctu::DispatchTimerService>::make_shared_ptr<ctu::DispatchTimerService>(ctu::DispatchTimerService*)::{lambda(ctu::DispatchTimerService*)#1}::operator() const(ctu::DispatchTimerService*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

void std::__shared_ptr_pointer<BOOL *,std::shared_ptr<void>::__shared_ptr_default_delete<void,BOOL>,std::allocator<BOOL>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BOOL *,std::shared_ptr<void>::__shared_ptr_default_delete<void,BOOL>,std::allocator<BOOL>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *ctu::Http::HttpSession_impl::createSession(ctu::Http::HttpSession_impl *this)
{
  v2 = operator new(0xB0uLL);
  *v2 = &unk_1F1CB6450;
  *(v2 + 136) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 81) = 0u;
  *(v2 + 14) = 0;
  *(v2 + 15) = 0;
  *(v2 + 13) = 0;
  *(v2 + 125) = 0;
  *(v2 + 152) = 0u;
  *(v2 + 165) = 0;
  v3 = objc_opt_new();
  *(v2 + 2) = v3;
  [v3 setMaxConcurrentOperationCount:1];
  result = operator new(0x20uLL);
  *result = &unk_1F1CB4C50;
  result[1] = 0;
  result[2] = 0;
  result[3] = v2;
  *this = v2;
  *(this + 1) = result;
  return result;
}

void sub_1A9130EDC(void *a1)
{
  __cxa_begin_catch(a1);
  ctu::Http::HttpSession_impl::Deleter::operator()(v1);
  __cxa_rethrow();
}

void ctu::Http::HttpSession_impl::Deleter::operator()(uint64_t a1)
{
  if (a1)
  {
    v1[0] = MEMORY[0x1E69E9820];
    v1[1] = 3221225472;
    v1[2] = ___ZN3ctu4Http16HttpSession_impl7DeleterclEPS1__block_invoke;
    v1[3] = &__block_descriptor_40_e5_v8__0l;
    v1[4] = a1;
    ctu::Http::HttpSession_impl::addOperation(a1, v1);
  }
}

void ctu::Http::HttpSession_impl::addOperation(uint64_t a1, uint64_t a2)
{
  v6 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AAE0] blockOperationWithBlock:a2];
  v5 = *(a1 + 16);
  if (v5)
  {
    [v5 addOperation:v4];
  }

  ctu::ns::AutoPool::~AutoPool(&v6);
}

void sub_1A9131038(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3ctu4Http16HttpSession_impl7DeleterclEPS1__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 136))();
  }

  return result;
}

void ctu::Http::HttpSession_impl::~HttpSession_impl(ctu::Http::HttpSession_impl *this)
{
  *this = &unk_1F1CB6450;
  v2 = *(this + 1);
  if (v2)
  {
    [v2 invalidateAndCancel];
    v2 = *(this + 1);
  }

  *(this + 1) = 0;
  *(this + 3) = 0;

  *(this + 2) = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(this + 20);
  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  v3 = *(this + 14);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(this + 11);
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(this + 4);
}

{
  ctu::Http::HttpSession_impl::~HttpSession_impl(this);

  operator delete(v1);
}

uint64_t ctu::Http::HttpSession_impl::setSSLProtocolLimitation(uint64_t this, SSLProtocol a2, SSLProtocol a3)
{
  *(this + 124) = a2;
  *(this + 128) = a3;
  return this;
}

void ctu::Http::HttpSession_impl::setBackgroundConfigurationWithUniqueIdentifier(ctu::Http::HttpSession_impl *this)
{
  v2 = objc_opt_new();
  std::string::__assign_external((this + 136), [objc_msgSend(v2 "UUIDString")]);
}

const void **ctu::Http::HttpSession_impl::setProxyServer(const void **result, uint64_t a2, unsigned int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = result;
    if (*(a2 + 23) < 0)
    {
      v5 = *(a2 + 8);
      if (!v5)
      {
        goto LABEL_31;
      }

      std::string::__init_copy_ctor_external(&__p, *a2, v5);
    }

    else
    {
      if (!*(a2 + 23))
      {
        goto LABEL_31;
      }

      __p = *a2;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v20 = __p;
    }

    v18 = 0;
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&valuePtr, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      valuePtr = v20;
    }

    v6 = *MEMORY[0x1E695E480];
    if ((valuePtr.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_valuePtr = &valuePtr;
    }

    else
    {
      p_valuePtr = valuePtr.__r_.__value_.__r.__words[0];
    }

    if ((valuePtr.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(valuePtr.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = valuePtr.__r_.__value_.__l.__size_;
    }

    v9 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], p_valuePtr, size, 0x8000100u, 0);
    if (v9)
    {
      v10 = v18;
      v18 = v9;
      v19 = v10;
      ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v19);
    }

    if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(valuePtr.__r_.__value_.__l.__data_);
    }

    v17 = v18;
    v18 = 0;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v18);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v20.__r_.__value_.__r.__words[0] = 0;
    valuePtr.__r_.__value_.__r.__words[0] = a3;
    v11 = CFNumberCreate(v6, kCFNumberLongLongType, &valuePtr);
    if (v11)
    {
      v20.__r_.__value_.__r.__words[0] = v11;
      valuePtr.__r_.__value_.__r.__words[0] = 0;
      ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&valuePtr.__r_.__value_.__l.__data_);
      v12 = v20.__r_.__value_.__r.__words[0];
    }

    else
    {
      v12 = 0;
    }

    v19 = v12;
    v20.__r_.__value_.__r.__words[0] = 0;
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v20.__r_.__value_.__l.__data_);
    v13 = *MEMORY[0x1E695AE68];
    valuePtr.__r_.__value_.__r.__words[0] = *MEMORY[0x1E695AE60];
    valuePtr.__r_.__value_.__l.__size_ = v13;
    v14 = *MEMORY[0x1E695AE58];
    valuePtr.__r_.__value_.__r.__words[2] = *MEMORY[0x1E695AE50];
    v23 = v14;
    v20.__r_.__value_.__r.__words[0] = v17;
    v20.__r_.__value_.__l.__size_ = v12;
    v20.__r_.__value_.__r.__words[2] = v17;
    v21 = v12;
    v18 = CFDictionaryCreate(v6, &valuePtr.__r_.__value_.__l.__data_, &v20.__r_.__value_.__l.__data_, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::operator=(v4 + 4, &v18);
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v18);
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v19);
    result = ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v17);
  }

LABEL_31:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A9131434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a17);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

const void **ctu::Http::HttpSession_impl::setTLSPolicyName(const void **this, const __CFString *a2)
{
  if (a2)
  {
    return ctu::cf::CFSharedRef<__CFString const>::operator=(this + 20, a2);
  }

  return this;
}

const void **ctu::cf::CFSharedRef<__CFString const>::operator=(const void **a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *a1;
  *a1 = cf;
  v6 = v4;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v6);
  return a1;
}

void ctu::Http::HttpSession_impl::setAllowCellularAccess(ctu::Http::HttpSession_impl *this, char a2)
{
  v4 = operator new(1uLL);
  *v4 = a2;
  v5 = operator new(0x20uLL);
  *v5 = &unk_1F1CB4A20;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v4;
  v6 = *(this + 14);
  *(this + 13) = v4;
  *(this + 14) = v5;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void ctu::Http::HttpSession_impl::getBackgroundIdentifier(ctu::Http::HttpSession_impl *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 159) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 17), *(this + 18));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 136);
    a2->__r_.__value_.__r.__words[2] = *(this + 19);
  }
}

void ctu::Http::HttpRequest::create(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a4;
  if (!*a4)
  {
    ctu::Http::HttpSession_impl::createSession(&v21);
    v11 = *(a4 + 8);
    v12 = v21;
    *a4 = v21;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      v10 = *a4;
    }

    else
    {
      v10 = v12;
    }
  }

  v13 = *(a4 + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = operator new(0xE0uLL);
  v15 = v14;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v14 + 1;
  v14[2] = 0;
  v14[3] = 0;
  *v14 = &unk_1F1CB62A8;
  v14[1] = &unk_1F1CB63F8;
  {
    v15[4] = v18;
    v15[5] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v15[4] = 0;
    v15[5] = 0;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v15 + 2, *a2, *(a2 + 8));
  }

  else
  {
    *(v15 + 3) = *a2;
    v15[8] = *(a2 + 16);
  }

  v15[13] = 0;
  *(v15 + 11) = 0u;
  *(v15 + 9) = 0u;
  *(v15 + 28) = a1;
  std::map<std::string,std::string,ctu::Http::case_insensitive_key_comparer,std::allocator<std::pair<std::string const,std::string>>>::map[abi:ne200100](v15 + 15, a3);
  v15[18] = 0x403E000000000000;
  *(v15 + 19) = 0u;
  *(v15 + 21) = 0u;
  *(v15 + 23) = 0u;
  v15[25] = 6;
  v15[26] = 0;
  *(v15 + 216) = 0;
  v19 = operator new(0x20uLL);
  v19->__vftable = &unk_1F1CB4C18;
  v19->__shared_owners_ = 0;
  v19->__shared_weak_owners_ = 0;
  v19[1].__vftable = v15;
  v20 = v15[3];
  if (v20)
  {
    if (v20->__shared_owners_ != -1)
    {
      goto LABEL_22;
    }

    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v15[2] = v16;
    v15[3] = v19;
    std::__shared_weak_count::__release_weak(v20);
  }

  else
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v15[2] = v16;
    v15[3] = v19;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
LABEL_22:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  *a5 = v15;
  a5[1] = v19;
}

{
  v9 = *a4;
  {
    v13 = *(a4 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (**v12)(v20);
    v14 = v20[0];
    v15 = v20[1];
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v18 = v14;
    v19 = v15;
    if (v15)
    {
      v16 = 0;
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = v15;
      goto LABEL_11;
    }

    v17 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  v16 = 1;
LABEL_11:
  ctu::Http::HttpRequest::create(a1, a2, a3, &v18, a5);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if ((v16 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_1A913188C(_Unwind_Exception *exception_object)
{
  v4 = v2[5];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = v2[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  operator delete(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A9131944()
{
  if (!v0)
  {
    JUMPOUT(0x1A9131920);
  }

  JUMPOUT(0x1A9131918);
}

void sub_1A9131A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void ctu::Http::HttpSessionRequest::Deleter::operator()(uint64_t a1)
{
  if (a1)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = ___ZN3ctu4Http18HttpSessionRequest7DeleterclEPS1__block_invoke;
    v2[3] = &__block_descriptor_40_e5_v8__0l;
    v2[4] = a1;
    v1 = *(a1 + 32);
    if (v1)
    {
      ctu::Http::HttpSession_impl::addOperation(v1, v2);
    }
  }
}

uint64_t ___ZN3ctu4Http18HttpSessionRequest7DeleterclEPS1__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 256))();
  }

  return result;
}

uint64_t ctu::Http::HttpSessionRequest::getHttpSession@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 40);
  *a2 = *(this + 32);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void ctu::Http::asString(unsigned int a1@<W0>, void *a2@<X8>)
{
  v5 = objc_autoreleasePoolPush();
  v4 = [(__CFString *)ctu::Http::HTTPMethod(a1) cStringUsingEncoding:4];
  std::string::basic_string[abi:ne200100]<0>(a2, v4);
  ctu::ns::AutoPool::~AutoPool(&v5);
}

void sub_1A9131BF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

__CFString *ctu::Http::HTTPMethod(unsigned int a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E786BA40[a1];
  }
}

void ctu::Http::HttpSessionRequest::~HttpSessionRequest(ctu::Http::HttpSessionRequest *this)
{
  *this = &unk_1F1CB62A8;
  *(this + 1) = &unk_1F1CB63F8;
  v2 = *(*(this + 4) + 24);
  if (v2)
  {
    v3 = *(this + 24);
    if (v3)
    {
      [v2 removeCallbackFor:{objc_msgSend(v3, "taskIdentifier")}];
    }
  }

  *(this + 24) = 0;
  v4 = *(this + 5);
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 23);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(this + 22);
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = *(this + 21);
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = *(this + 20);
  if (v8)
  {
    _Block_release(v8);
  }

  v9 = *(this + 19);
  if (v9)
  {
    dispatch_release(v9);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 120, *(this + 16));
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(this + 13);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(this + 12);
  v10 = *(this + 9);
  if (v10)
  {
    *(this + 10) = v10;
    operator delete(v10);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  v11 = *(this + 5);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 3);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

{
  ctu::Http::HttpSessionRequest::~HttpSessionRequest(this);

  operator delete(v1);
}

void non-virtual thunk toctu::Http::HttpSessionRequest::~HttpSessionRequest(ctu::Http::HttpSessionRequest *this)
{
  ctu::Http::HttpSessionRequest::~HttpSessionRequest((this - 8));
}

{
  ctu::Http::HttpSessionRequest::~HttpSessionRequest((this - 8));

  operator delete(v1);
}

void ctu::Http::HttpSessionRequest::start(void *a1, uint64_t a2)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = ___ZN3ctu4Http18HttpSessionRequest5startENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke;
  v11[3] = &__block_descriptor_80_e8_32c112_ZTSKZN3ctu4Http18HttpSessionRequest5startENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3__0_e5_v8__0l;
  v4 = a1[2];
  v3 = a1[3];
  *&v8 = a1;
  *(&v8 + 1) = v4;
  if (!v3 || (v6 = std::__shared_weak_count::lock(v3), (v9 = v6) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v6 = v9;
    v12 = v8;
    v13 = v9;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __p = *a2;
    *&v12 = a1;
    *(&v12 + 1) = v4;
    v13 = v6;
  }

  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_7:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v14 = __p;
  }

  v7 = a1[4];
  if (v7)
  {
    ctu::Http::HttpSession_impl::addOperation(v7, v11);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_1A9131F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  ctu::Http::HttpSessionRequest::start(std::string)::$_0::~$_0(&a9);
  _Unwind_Resume(a1);
}

void ___ZN3ctu4Http18HttpSessionRequest5startENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v57, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v57 = *(a1 + 56);
  }

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v58 = objc_autoreleasePoolPush();
  v5 = *(v2 + 32);
  if (!v5 || !*(v2 + 152) || !*(v2 + 160) || !*(v5 + 16))
  {
    goto LABEL_152;
  }

  if (*(v2 + 71) < 0)
  {
    v6 = *(v2 + 56);
    if (!v6)
    {
      goto LABEL_80;
    }

    URLString = 0xAAAAAAAAAAAAAAAALL;
    std::string::__init_copy_ctor_external(&v62, *(v2 + 48), v6);
  }

  else
  {
    if (!*(v2 + 71))
    {
      goto LABEL_80;
    }

    v62 = *(v2 + 48);
    URLString = 0xAAAAAAAAAAAAAAAALL;
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v64, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
  }

  else
  {
    v64 = v62;
  }

  v66 = 0;
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v65, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
  }

  else
  {
    v65 = v64;
  }

  v7 = *MEMORY[0x1E695E480];
  if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v65;
  }

  else
  {
    v8 = v65.__r_.__value_.__r.__words[0];
  }

  if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v65.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v65.__r_.__value_.__l.__size_;
  }

  v10 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v8, size, 0x8000100u, 0);
  if (v10)
  {
    v11 = v66;
    v66 = v10;
    v67 = v11;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v67);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  URLString = v66;
  v66 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v66);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (URLString)
  {
    v61 = 0xAAAAAAAAAAAAAAAALL;
    v61 = CFURLCreateWithString(v7, URLString, 0);
    if (!v61)
    {
      v13 = 0;
      v33 = 2;
      goto LABEL_86;
    }

    v12 = objc_alloc(MEMORY[0x1E696AD68]);
    v13 = [v12 initWithURL:v61 cachePolicy:1 timeoutInterval:*(v2 + 144)];
    if (!v13)
    {
      v33 = 3;
      goto LABEL_86;
    }

    std::string::basic_string[abi:ne200100]<0>(&v65, "Connection");
    v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v2 + 120, &v65);
    v15 = (v2 + 128);
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (v15 != v14)
    {
      [MEMORY[0x1E696AF58] setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695AD58] inRequest:v13];
    }

    cf = 0;
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      goto LABEL_82;
    }

    v17 = *(v2 + 120);
    if (v17 != v15)
    {
      do
      {
        v67 = 0;
        v18 = *(v17 + 55);
        if (v18 >= 0)
        {
          v19 = (v17 + 4);
        }

        else
        {
          v19 = v17[4];
        }

        if (v18 >= 0)
        {
          v20 = *(v17 + 55);
        }

        else
        {
          v20 = v17[5];
        }

        v21 = CFStringCreateWithBytes(v7, v19, v20, 0x8000100u, 0);
        v66 = 0;
        v67 = v21;
        v22 = *(v17 + 79);
        if (v22 >= 0)
        {
          v23 = (v17 + 7);
        }

        else
        {
          v23 = v17[7];
        }

        if (v22 >= 0)
        {
          v24 = *(v17 + 79);
        }

        else
        {
          v24 = v17[8];
        }

        v25 = CFStringCreateWithBytes(v7, v23, v24, 0x8000100u, 0);
        v66 = v25;
        v65.__r_.__value_.__r.__words[0] = v67;
        if (v67)
        {
          CFRetain(v67);
        }

        v64.__r_.__value_.__r.__words[0] = v25;
        if (v25)
        {
          CFRetain(v25);
          if (v65.__r_.__value_.__r.__words[0])
          {
            CFDictionaryAddValue(Mutable, v65.__r_.__value_.__l.__data_, v25);
          }
        }

        ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&v64.__r_.__value_.__l.__data_);
        ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&v65.__r_.__value_.__l.__data_);
        ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&v66);
        ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&v67);
        v26 = v17[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v17[2];
            v28 = *v27 == v17;
            v17 = v27;
          }

          while (!v28);
        }

        v17 = v27;
      }

      while (v27 != v15);
    }

    v29 = cf;
    cf = Mutable;
    v65.__r_.__value_.__r.__words[0] = v29;
    ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v65.__r_.__value_.__l.__data_);
    if (!cf)
    {
      goto LABEL_82;
    }

    v59 = cf;
    CFRetain(cf);
    [v13 setAllHTTPHeaderFields:v59];
    ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v59);
    [v13 setHTTPMethod:ctu::Http::HTTPMethod(*(v2 + 112))];
    if (*(v2 + 112) != 3 || *(v2 + 72) == *(v2 + 80))
    {
      v33 = 1;
      goto LABEL_85;
    }

    std::string::basic_string[abi:ne200100]<0>(&v65, "CONTENT-ENCODING");
    v30 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v2 + 120, &v65);
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (v15 == v30)
    {
      goto LABEL_76;
    }

    MEMORY[0x1AC580C60](&v64);
    boost::algorithm::detail::transform_range_copy<std::string,std::string,boost::algorithm::detail::to_upperF<char>>(&v65, (v30 + 56), &v64);
    v31 = std::string::compare(&v65, "GZIP");
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    std::locale::~locale(&v64);
    if (v31)
    {
LABEL_76:
      v32 = [MEMORY[0x1E695DEF0] dataWithBytes:*(v2 + 72) length:*(v2 + 80) - *(v2 + 72)];
      v33 = 1;
    }

    else
    {
      memset(&v65, 0, sizeof(v65));
      v56 = ctu::Compression::Compress(v2 + 72, &v65);
      if (v56)
      {
        v32 = [MEMORY[0x1E695DEF0] dataWithBytes:v65.__r_.__value_.__r.__words[0] length:v65.__r_.__value_.__l.__size_ - v65.__r_.__value_.__r.__words[0]];
        v33 = 1;
      }

      else
      {
        v32 = 0;
        v33 = 3;
      }

      if (v65.__r_.__value_.__r.__words[0])
      {
        v65.__r_.__value_.__l.__size_ = v65.__r_.__value_.__r.__words[0];
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (!v56)
      {
        goto LABEL_85;
      }
    }

    if (v32)
    {
      [v13 setHTTPBody:v32];
    }

    else
    {
LABEL_82:
      v33 = 3;
    }

LABEL_85:
    ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&cf);
LABEL_86:
    ctu::SharedRef<__CFURL const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFURL const>::~SharedRef(&v61);
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&URLString);
    if (v33 != 1)
    {
      if (v13)
      {
      }

      goto LABEL_153;
    }

    if (!v13)
    {
      goto LABEL_156;
    }

    v34 = v13;
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v57.__r_.__value_.__l.__size_)
      {
        goto LABEL_96;
      }

      v35 = v57.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&v57.__r_.__value_.__s + 23))
      {
        goto LABEL_96;
      }

      v35 = &v57;
    }

    [v13 setBoundInterfaceIdentifier:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithCString:encoding:", v35, 4)}];
LABEL_96:
    v36 = *(v2 + 32);
    v37 = *(v36 + 8);
    if (v37)
    {
      goto LABEL_143;
    }

    v38 = (v36 + 136);
    if (*(v36 + 159) < 0)
    {
      if (!*(v36 + 144))
      {
        goto LABEL_103;
      }

      v38 = *v38;
    }

    else if (!*(v36 + 159))
    {
LABEL_103:
      if (*(v36 + 132) == 1)
      {
        v40 = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
      }

      else
      {
        v40 = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
      }

LABEL_106:
      v41 = v40;
      v42 = *(v2 + 32);
      if (*(v42 + 160))
      {
        [v40 set_tlsTrustPinningPolicyName:?];
        v42 = *(v2 + 32);
      }

      if (*(v42 + 172) == 1)
      {
        [v41 _setAllowsUCA:1];
        v42 = *(v2 + 32);
      }

      if (*(v42 + 88))
      {
        [v41 set_CTDataConnectionServiceType:?];
        v42 = *(v2 + 32);
      }

      if (*(v42 + 32) || (v46 = *(v42 + 88)) != 0 && CFStringCompare(v46, @"kCTDataConnectionServiceTypeInternet", 0))
      {
        [v41 setConnectionProxyDictionary:?];
      }

      v43 = *(v2 + 32);
      if (*(v43 + 124))
      {
        [v41 setTLSMinimumSupportedProtocol:?];
        v43 = *(v2 + 32);
      }

      if (*(v43 + 128))
      {
        [v41 setTLSMaximumSupportedProtocol:?];
        v43 = *(v2 + 32);
      }

      v44 = *(v43 + 104);
      if (v44)
      {
        [v41 setAllowsCellularAccess:*v44];
        v43 = *(v2 + 32);
      }

      v45 = (v43 + 40);
      if (*(v43 + 63) < 0)
      {
        if (!*(v43 + 48))
        {
          goto LABEL_129;
        }

        v45 = *v45;
      }

      else if (!*(v43 + 63))
      {
LABEL_129:
        v47 = (v43 + 64);
        if (*(v43 + 87) < 0)
        {
          if (!*(v43 + 72))
          {
LABEL_135:
            v48 = *(v43 + 120);
            if (v48)
            {
              [v41 set_connectionCacheCellPurgeTimeout:v48];
              v43 = *(v2 + 32);
            }

            if (*(v43 + 168))
            {
              [v41 setWaitsForConnectivity:1];
              LODWORD(v49) = *(*(v2 + 32) + 168);
              [v41 setTimeoutIntervalForResource:v49];
            }

            v50 = objc_opt_new();
            v51 = *(v2 + 32);
            *(v51 + 24) = v50;
            if (v50)
            {
              v37 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v41 delegate:v50 delegateQueue:*(v51 + 16)];
              v51 = *(v2 + 32);
              *(v51 + 8) = v37;
            }

            else
            {
              v37 = *(v51 + 8);
            }

            if (v37)
            {
LABEL_143:
              v52 = [v37 dataTaskWithRequest:v13];
              *(v2 + 192) = v52;
              if (v52)
              {
                v53 = *(*(v2 + 32) + 24);
                v65.__r_.__value_.__r.__words[0] = v4;
                v65.__r_.__value_.__l.__size_ = v3;
                if (v3)
                {
                  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
                  v52 = *(v2 + 192);
                }

                [v53 addCallbackHandler:&v65 for:{objc_msgSend(v52, "taskIdentifier")}];
                if (v65.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v65.__r_.__value_.__l.__size_);
                }

                if (*(v2 + 216) == 1)
                {
                  *(v2 + 208) = [v13 mutableCopy];
                }

                [*(v2 + 192) resume];
                goto LABEL_156;
              }

              goto LABEL_152;
            }

            *(*(v2 + 32) + 24) = 0;
LABEL_152:
            v33 = 3;
            goto LABEL_153;
          }

          v47 = *v47;
        }

        else if (!*(v43 + 87))
        {
          goto LABEL_135;
        }

        [v41 set_sourceApplicationBundleIdentifier:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithCString:encoding:", v47, objc_msgSend(MEMORY[0x1E696AEC0], "defaultCStringEncoding"))}];
        v43 = *(v2 + 32);
        goto LABEL_135;
      }

      [v41 set_sourceApplicationSecondaryIdentifier:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithCString:encoding:", v45, objc_msgSend(MEMORY[0x1E696AEC0], "defaultCStringEncoding"))}];
      v43 = *(v2 + 32);
      goto LABEL_129;
    }

    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", v38];
    v40 = [MEMORY[0x1E696AF80] backgroundSessionConfigurationWithIdentifier:v39];
    goto LABEL_106;
  }

  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&URLString);
LABEL_80:
  v33 = 2;
LABEL_153:
  v54 = operator new(0x68uLL);
  ctu::Http::HttpResponseConcrete::HttpResponseConcrete(v54, 0);
  v55 = operator new(0x20uLL);
  v55->__shared_owners_ = 0;
  v55->__vftable = &unk_1F1CB4BA8;
  v55->__shared_weak_owners_ = 0;
  v55[1].__vftable = v54;
  *(v54 + 2) = v33;
  v65.__r_.__value_.__r.__words[0] = v54;
  v65.__r_.__value_.__l.__size_ = v55;
  atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
  (*(*v2 + 288))(v2, &v65);
  if (v65.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65.__r_.__value_.__l.__size_);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v55);
LABEL_156:
  ctu::ns::AutoPool::~AutoPool(&v58);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }
}

void sub_1A9132918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, __int16 a19, char a20, char a21, int a22, const void *a23, const void *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, const void *a31, std::locale a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  v40 = *(v38 - 128);
  if (v40)
  {
    *(v38 - 120) = v40;
    operator delete(v40);
  }

  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&a23);
  ctu::SharedRef<__CFURL const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFURL const>::~SharedRef(&a24);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a31);
  ctu::ns::AutoPool::~AutoPool(&a18);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A9132AF4()
{
  if (!v0)
  {
    JUMPOUT(0x1A9132ADCLL);
  }

  JUMPOUT(0x1A9132AD4);
}

void __copy_helper_block_e8_32c112_ZTSKZN3ctu4Http18HttpSessionRequest5startENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3__0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  v2 = *(a2 + 48);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v3 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v3;
  }
}

void sub_1A9132B6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c112_ZTSKZN3ctu4Http18HttpSessionRequest5startENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3__0(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t ctu::Http::HttpSessionRequest::start(std::string)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void ctu::Http::HttpSessionRequest::handleResponse_sync(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 160);
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 152);
  if (v6 && *(a1 + 160))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZN3ctu4Http18HttpSessionRequest19handleResponse_syncENSt3__110shared_ptrINS0_12HttpResponseEEE_block_invoke;
    block[3] = &__block_descriptor_56_e8_32c89_ZTSN8dispatch5blockIU13block_pointerFvNSt3__110shared_ptrIN3ctu4Http12HttpResponseEEEEEE40c51_ZTSNSt3__110shared_ptrIN3ctu4Http12HttpResponseEEE_e5_v8__0l;
    if (v5)
    {
      v7 = _Block_copy(v5);
    }

    else
    {
      v7 = 0;
    }

    v9 = *a2;
    v8 = a2[1];
    aBlock = v7;
    v12 = v9;
    v13 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(v6, block);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  if (v5)
  {
    _Block_release(v5);
  }
}

void ___ZN3ctu4Http18HttpSessionRequest19handleResponse_syncENSt3__110shared_ptrINS0_12HttpResponseEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  v4 = a1[5];
  v3 = a1[6];
  v5 = v4;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v2 + 16))(v2, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1A9132D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c89_ZTSN8dispatch5blockIU13block_pointerFvNSt3__110shared_ptrIN3ctu4Http12HttpResponseEEEEEE40c51_ZTSNSt3__110shared_ptrIN3ctu4Http12HttpResponseEEE(void *a1, void *a2)
{
  result = a2[4];
  if (result)
  {
    result = _Block_copy(result);
  }

  v6 = a2[5];
  v5 = a2[6];
  a1[4] = result;
  a1[5] = v6;
  a1[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c89_ZTSN8dispatch5blockIU13block_pointerFvNSt3__110shared_ptrIN3ctu4Http12HttpResponseEEEEEE40c51_ZTSNSt3__110shared_ptrIN3ctu4Http12HttpResponseEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

void ctu::Http::HttpSessionRequest::handleDataSent_sync(ctu::Http::HttpSessionRequest *this, int a2, int a3, int a4)
{
  v8 = *(this + 22);
  if (v8)
  {
    v9 = _Block_copy(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(this + 19);
  if (v10 && *(this + 22))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZN3ctu4Http18HttpSessionRequest19handleDataSent_syncEiii_block_invoke;
    block[3] = &__block_descriptor_52_e8_32c45_ZTSN8dispatch5blockIU13block_pointerFviiiEEE_e5_v8__0l;
    v11 = v9 ? _Block_copy(v9) : 0;
    aBlock = v11;
    v14 = a2;
    v15 = a3;
    v16 = a4;
    dispatch_async(v10, block);
    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  if (v9)
  {
    _Block_release(v9);
  }
}

void *__copy_helper_block_e8_32c45_ZTSN8dispatch5blockIU13block_pointerFviiiEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c45_ZTSN8dispatch5blockIU13block_pointerFviiiEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ctu::Http::HttpSessionRequest::handleDataReceived_sync(ctu::Http::HttpSessionRequest *this, int a2, int a3)
{
  v6 = *(this + 21);
  if (v6)
  {
    v7 = _Block_copy(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 19);
  if (v8 && *(this + 21))
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = ___ZN3ctu4Http18HttpSessionRequest23handleDataReceived_syncEii_block_invoke;
    v10[3] = &__block_descriptor_48_e8_32c44_ZTSN8dispatch5blockIU13block_pointerFviiEEE_e5_v8__0l;
    v9 = v7 ? _Block_copy(v7) : 0;
    aBlock = v9;
    v12 = a2;
    v13 = a3;
    dispatch_async(v8, v10);
    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  if (v7)
  {
    _Block_release(v7);
  }
}

void *__copy_helper_block_e8_32c44_ZTSN8dispatch5blockIU13block_pointerFviiEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c44_ZTSN8dispatch5blockIU13block_pointerFviiEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

const void **ctu::Http::HttpSessionRequest::setProxySettings(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 32);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(&v4, a2);
  (*(*v2 + 8))(v2, &v4);
  return ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v4);
}

void sub_1A91331B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t ctu::Http::HttpSessionRequest::setTLSPolicyName(uint64_t this, const __CFString *a2)
{
  if (a2)
  {
    return (*(**(this + 32) + 48))();
  }

  return this;
}

uint64_t ctu::Http::HttpSessionRequest::getTLSNegotiatedCipherSuite(ctu::Http::HttpSessionRequest *this)
{
  v1 = *(this + 24);
  if (v1)
  {
    return [v1 _TLSNegotiatedCipherSuite];
  }

  else
  {
    return 0xFFFFLL;
  }
}

uint64_t ctu::Http::HttpSessionRequest::setMaxAllowedRedirects(uint64_t this, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    *(this + 200) = a2;
  }

  return this;
}

NSURLRequest *ctu::Http::HttpSessionRequest::handleWillSendRequest_sync(ctu::Http::HttpSessionRequest *this, NSURLRequest *a2, NSURLResponse *a3)
{
  v3 = *(this + 51);
  if (v3 >= *(this + 50))
  {
    return 0;
  }

  v4 = a2;
  if (a3 && (*(this + 216) & 1) != 0 && *(this + 26))
  {
    v6 = [(NSURLRequest *)a2 URL];
    v4 = [*(this + 26) mutableCopy];
    [(NSURLRequest *)v4 setURL:v6];
    v3 = *(this + 51);
  }

  *(this + 51) = v3 + 1;
  return v4;
}