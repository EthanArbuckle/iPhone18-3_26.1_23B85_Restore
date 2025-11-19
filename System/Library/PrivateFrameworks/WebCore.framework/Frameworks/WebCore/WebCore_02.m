void std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::anonymous namespace::VisitToString> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> const&>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if ((*(*a1 + 24) & 1) == 0)
  {
    goto LABEL_25;
  }

  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = *a1;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    goto LABEL_24;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_26;
  }

  if (v6 > 0x16)
  {
    operator new();
  }

  a2[23] = v6;
  v8 = &a2[v6];
  if (a2 <= v5 && v8 > v5)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_26:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v6)
  {
    memmove(a2, v5, v6);
  }

  *v8 = 0;
}

double std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::anonymous namespace::VisitToString> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> const&>@<D0>(uint64_t *a1@<X1>, std::string *a2@<X8>)
{
  v3 = *a1;
  memset(&v56, 0, sizeof(v56));
  if (&v56 <= "[" && &v56.__r_.__value_.__l.__data_ + 1 > "[")
  {
    goto LABEL_130;
  }

  v56.__r_.__value_.__s.__data_[0] = 91;
  *(&v56.__r_.__value_.__s + 23) = 1;
  if ((*(v3 + 24) & 1) == 0)
  {
LABEL_131:
    std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_132;
  }

  v5 = *(v3 + 8);
  v6 = v5 & 0x3F;
  if (v5 <= 0x3F && v6 == 0)
  {
    v19 = 0;
    LODWORD(v20) = 1;
    v21 = v56.__r_.__value_.__r.__words[2];
    goto LABEL_48;
  }

  v52 = a2;
  v8 = *v3;
  v9 = "true";
  v10 = **v3 & 1;
  v11 = v10 ? "true" : "false";
  v12 = v10 ^ 5;
  v55 = v10 ^ 5;
  v13 = v10 ? 4 : 5;
  v14 = v10 ? (&__dst + 4) : (&__dst + 5);
  if (v11 >= &__dst && v14 > v11)
  {
    goto LABEL_130;
  }

  memcpy(&__dst, v11, v12);
  *(&__dst + v13) = 0;
  v16 = v55;
  v17 = (v55 & 0x80u) == 0 ? &__dst : __dst;
  v18 = (v55 & 0x80u) == 0 ? v55 : v54;
  if (!v17 && v18)
  {
    goto LABEL_130;
  }

  if (v18 > 0x15)
  {
    if (v18 - 0x7FFFFFFFFFFFFFF6 > 0x800000000000001ELL)
    {
      operator new();
    }

LABEL_132:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v18)
  {
    if (&v56.__r_.__value_.__l.__data_ + 1 > v17 || &v56.__r_.__value_.__l.__data_ + v18 + 1 <= v17)
    {
      memmove(&v56.__r_.__value_.__l.__data_ + 1, v17, v18);
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        v56.__r_.__value_.__l.__size_ = v18 + 1;
      }

      else
      {
        *(&v56.__r_.__value_.__s + 23) = v18 + 1;
      }

      v56.__r_.__value_.__s.__data_[v18 + 1] = 0;
      goto LABEL_42;
    }

LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

LABEL_42:
  if ((v16 & 0x80) != 0)
  {
    operator delete(__dst);
    if (v5 > 0x3F)
    {
LABEL_61:
      v28 = &v8[v5 >> 6];
      v29 = 1;
      while (1)
      {
        while (1)
        {
          v30 = *v8;
          size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
          if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v32 = 22;
          }

          else
          {
            v32 = (v56.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v56.__r_.__value_.__l.__size_;
          }

          if (v32 == size)
          {
            std::string::__grow_by_and_replace(&v56, v32, 1uLL, v32, v32, 0, 1uLL, ",");
          }

          else
          {
            v33 = &v56;
            if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v33 = v56.__r_.__value_.__r.__words[0];
            }

            if (v33 + size <= "," && &v33->__r_.__value_.__l.__data_ + size + 1 > ",")
            {
              goto LABEL_130;
            }

            v33->__r_.__value_.__s.__data_[size] = 44;
            v35 = size + 1;
            if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
            {
              v56.__r_.__value_.__l.__size_ = v35;
            }

            else
            {
              *(&v56.__r_.__value_.__s + 23) = v35 & 0x7F;
            }

            v33->__r_.__value_.__s.__data_[v35] = 0;
          }

          v36 = v30 & (1 << v29);
          v37 = v36 == 0;
          if (v36)
          {
            v38 = v9;
          }

          else
          {
            v38 = "false";
          }

          if (v36)
          {
            v39 = 4;
          }

          else
          {
            v39 = 5;
          }

          v55 = v39;
          v40 = &__dst + 5;
          if (!v37)
          {
            v40 = &__dst + 4;
          }

          if (v38 >= &__dst && v40 > v38)
          {
            goto LABEL_130;
          }

          memcpy(&__dst, v38, v39);
          *(&__dst + v39) = 0;
          v41 = (v55 & 0x80u) == 0 ? &__dst : __dst;
          v42 = (v55 & 0x80u) == 0 ? v55 : v54;
          if (!v41 && v42)
          {
            goto LABEL_130;
          }

          v43 = (v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v56.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          v44 = (v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v56.__r_.__value_.__r.__words[2]) : v56.__r_.__value_.__l.__size_;
          if (v43 - v44 >= v42)
          {
            if (v42)
            {
              if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v45 = &v56;
              }

              else
              {
                v45 = v56.__r_.__value_.__r.__words[0];
              }

              if ((v42 & 0x8000000000000000) != 0)
              {
                goto LABEL_130;
              }

              v46 = v45 + v44;
              if (v45 + v44 <= v41 && &v46[v42] > v41)
              {
                goto LABEL_130;
              }

              v47 = v9;
              v48 = v6;
              v49 = v42;
              memmove(v46, v41, v42);
              v50 = v44 + v49;
              if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
              {
                v56.__r_.__value_.__l.__size_ = v44 + v49;
              }

              else
              {
                *(&v56.__r_.__value_.__s + 23) = v50 & 0x7F;
              }

              v6 = v48;
              v45->__r_.__value_.__s.__data_[v50] = 0;
              v9 = v47;
            }
          }

          else
          {
            std::string::__grow_by_and_replace(&v56, v43, v44 + v42 - v43, v44, v44, 0, v42, v41);
          }

          if ((v55 & 0x80000000) == 0)
          {
            break;
          }

          operator delete(__dst);
          v8 += v29 == 63;
          if (v29 == 63)
          {
            v29 = 0;
          }

          else
          {
            ++v29;
          }

          if (v8 == v28)
          {
            goto LABEL_66;
          }
        }

        v8 += v29 == 63;
        if (v29 == 63)
        {
          v29 = 0;
        }

        else
        {
          ++v29;
        }

        if (v8 == v28)
        {
LABEL_66:
          if (v29 == v6)
          {
            goto LABEL_47;
          }
        }
      }
    }
  }

  else if (v5 > 0x3F)
  {
    goto LABEL_61;
  }

  if (v6 != 1)
  {
    goto LABEL_61;
  }

LABEL_47:
  LODWORD(v20) = HIBYTE(v56.__r_.__value_.__r.__words[2]);
  v21 = v56.__r_.__value_.__r.__words[2];
  v19 = v56.__r_.__value_.__l.__size_;
  a2 = v52;
LABEL_48:
  v22 = v20;
  v23 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v20 = v20;
  if ((v20 & 0x80u) == 0)
  {
    v24 = 22;
  }

  else
  {
    v24 = v23;
  }

  if ((v20 & 0x80u) != 0)
  {
    v20 = v19;
  }

  if (v24 == v20)
  {
    std::string::__grow_by_and_replace(&v56, v24, 1uLL, v24, v24, 0, 1uLL, "]");
    goto LABEL_129;
  }

  v25 = v56.__r_.__value_.__r.__words[0];
  if (v22 >= 0)
  {
    v25 = &v56;
  }

  v26 = v25 + v20;
  if (v25 + v20 <= "]" && v26 + 1 > "]")
  {
    goto LABEL_130;
  }

  *v26 = 93;
  v27 = v20 + 1;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    v56.__r_.__value_.__l.__size_ = v27;
  }

  else
  {
    *(&v56.__r_.__value_.__s + 23) = v27 & 0x7F;
  }

  v25->__r_.__value_.__s.__data_[v27] = 0;
LABEL_129:
  result = *&v56.__r_.__value_.__l.__data_;
  *a2 = v56;
  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::anonymous namespace::VisitToString> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> const&>(unsigned int ***a1@<X1>, char *a2@<X2>, std::string *a3@<X8>)
{
  v4 = *a1;
  memset(&v53, 0, sizeof(v53));
  if (&v53 <= "[" && &v53.__r_.__value_.__l.__data_ + 1 > "[")
  {
    goto LABEL_116;
  }

  v53.__r_.__value_.__s.__data_[0] = 91;
  *(&v53.__r_.__value_.__s + 23) = 1;
  if (v4[3])
  {
    v6 = *v4;
    v7 = v4[1];
    if (*v4 == v7)
    {
      v13 = 0;
      LODWORD(v14) = 1;
      v15 = v53.__r_.__value_.__r.__words[2];
LABEL_98:
      v42 = v14;
      v43 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v14 = v14;
      if ((v14 & 0x80u) == 0)
      {
        v44 = 22;
      }

      else
      {
        v44 = v43;
      }

      if ((v14 & 0x80u) != 0)
      {
        v14 = v13;
      }

      if (v44 == v14)
      {
        std::string::__grow_by_and_replace(&v53, v44, 1uLL, v44, v44, 0, 1uLL, "]");
LABEL_113:
        *a3 = v53;
        return;
      }

      v45 = v53.__r_.__value_.__r.__words[0];
      if (v42 >= 0)
      {
        v45 = &v53;
      }

      v46 = v45 + v14;
      if (v45 + v14 > "]" || v46 + 1 <= "]")
      {
        *v46 = 93;
        v47 = v14 + 1;
        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          v53.__r_.__value_.__l.__size_ = v47;
        }

        else
        {
          *(&v53.__r_.__value_.__s + 23) = v47 & 0x7F;
        }

        v45->__r_.__value_.__s.__data_[v47] = 0;
        goto LABEL_113;
      }

      goto LABEL_116;
    }

    v8 = *v6;
    v51 = 0;
    v52 = 0x1600000000000000;
    v49 = a3;
    __p = 0;
    v9 = absl::numbers_internal::FastIntToBuffer(v8, &__p, a2);
    v11 = v9 - &__p;
    if ((SHIBYTE(v52) & 0x8000000000000000) != 0)
    {
      if (v51 < v11)
      {
        goto LABEL_117;
      }

      p_p = __p;
      v51 = v9 - &__p;
    }

    else
    {
      if (v11 > SHIBYTE(v52))
      {
        goto LABEL_117;
      }

      HIBYTE(v52) = v9 - &__p;
      p_p = &__p;
    }

    p_p[v11] = 0;
    if (v52 >= 0)
    {
      v16 = &__p;
    }

    else
    {
      v16 = __p;
    }

    if (v52 >= 0)
    {
      v17 = HIBYTE(v52);
    }

    else
    {
      v17 = v51;
    }

    if (v16 || !v17)
    {
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = 22;
      }

      else
      {
        v18 = (v53.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v53.__r_.__value_.__l.__size_;
      }

      if (v18 - size < v17)
      {
        std::string::__grow_by_and_replace(&v53, v18, size + v17 - v18, size, size, 0, v17, v16);
        if (SHIBYTE(v52) < 0)
        {
          goto LABEL_29;
        }

        goto LABEL_41;
      }

      if (!v17)
      {
        goto LABEL_40;
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v53;
      }

      else
      {
        v21 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v17 & 0x8000000000000000) == 0)
      {
        v22 = v21 + size;
        if (v21 + size > v16 || &v22[v17] <= v16)
        {
          v23 = v17;
          memmove(v22, v16, v17);
          v24 = size + v23;
          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            v53.__r_.__value_.__l.__size_ = size + v23;
            v21->__r_.__value_.__s.__data_[v24] = 0;
            if ((SHIBYTE(v52) & 0x80000000) == 0)
            {
LABEL_41:
              v20 = v6 + 1;
              if (v6 + 1 == v7)
              {
LABEL_97:
                LODWORD(v14) = HIBYTE(v53.__r_.__value_.__r.__words[2]);
                v15 = v53.__r_.__value_.__r.__words[2];
                v13 = v53.__r_.__value_.__l.__size_;
                a3 = v49;
                goto LABEL_98;
              }

              while (1)
              {
                while (1)
                {
LABEL_45:
                  v25 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
                  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v26 = 22;
                  }

                  else
                  {
                    v26 = (v53.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                  }

                  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v25 = v53.__r_.__value_.__l.__size_;
                  }

                  if (v26 == v25)
                  {
                    std::string::__grow_by_and_replace(&v53, v26, 1uLL, v26, v26, 0, 1uLL, ",");
                  }

                  else
                  {
                    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v27 = &v53;
                    }

                    else
                    {
                      v27 = v53.__r_.__value_.__r.__words[0];
                    }

                    if (v27 + v25 <= "," && &v27->__r_.__value_.__l.__data_ + v25 + 1 > ",")
                    {
                      goto LABEL_116;
                    }

                    v27->__r_.__value_.__s.__data_[v25] = 44;
                    v29 = v25 + 1;
                    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
                    {
                      v53.__r_.__value_.__l.__size_ = v29;
                    }

                    else
                    {
                      *(&v53.__r_.__value_.__s + 23) = v29 & 0x7F;
                    }

                    v27->__r_.__value_.__s.__data_[v29] = 0;
                  }

                  v30 = *v20;
                  v51 = 0;
                  v52 = 0x1600000000000000;
                  __p = 0;
                  v31 = absl::numbers_internal::FastIntToBuffer(v30, &__p, v10);
                  v32 = v31 - &__p;
                  if ((SHIBYTE(v52) & 0x8000000000000000) != 0)
                  {
                    if (v51 < v32)
                    {
                      goto LABEL_117;
                    }

                    v33 = __p;
                    v51 = v31 - &__p;
                  }

                  else
                  {
                    if (v32 > SHIBYTE(v52))
                    {
                      goto LABEL_117;
                    }

                    HIBYTE(v52) = v31 - &__p;
                    v33 = &__p;
                  }

                  v33[v32] = 0;
                  if (v52 >= 0)
                  {
                    v34 = &__p;
                  }

                  else
                  {
                    v34 = __p;
                  }

                  if (v52 >= 0)
                  {
                    v35 = HIBYTE(v52);
                  }

                  else
                  {
                    v35 = v51;
                  }

                  if (!v34 && v35)
                  {
                    goto LABEL_116;
                  }

                  v36 = (v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v53.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                  v37 = (v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v53.__r_.__value_.__r.__words[2]) : v53.__r_.__value_.__l.__size_;
                  if (v36 - v37 >= v35)
                  {
                    break;
                  }

                  std::string::__grow_by_and_replace(&v53, v36, v37 + v35 - v36, v37, v37, 0, v35, v34);
                  if ((SHIBYTE(v52) & 0x80000000) == 0)
                  {
                    goto LABEL_44;
                  }

LABEL_93:
                  operator delete(__p);
                  if (++v20 == v7)
                  {
                    goto LABEL_97;
                  }
                }

                if (v35)
                {
                  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v38 = &v53;
                  }

                  else
                  {
                    v38 = v53.__r_.__value_.__r.__words[0];
                  }

                  if ((v35 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_116;
                  }

                  v39 = v38 + v37;
                  if (v38 + v37 <= v34 && &v39[v35] > v34)
                  {
                    goto LABEL_116;
                  }

                  v40 = v35;
                  memmove(v39, v34, v35);
                  v41 = v37 + v40;
                  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v53.__r_.__value_.__l.__size_ = v37 + v40;
                    v38->__r_.__value_.__s.__data_[v41] = 0;
                    if (SHIBYTE(v52) < 0)
                    {
                      goto LABEL_93;
                    }

                    goto LABEL_44;
                  }

                  *(&v53.__r_.__value_.__s + 23) = v41 & 0x7F;
                  v38->__r_.__value_.__s.__data_[v41] = 0;
                }

                if (SHIBYTE(v52) < 0)
                {
                  goto LABEL_93;
                }

LABEL_44:
                if (++v20 == v7)
                {
                  goto LABEL_97;
                }
              }
            }

LABEL_29:
            operator delete(__p);
            v20 = v6 + 1;
            if (v6 + 1 != v7)
            {
              goto LABEL_45;
            }

            goto LABEL_97;
          }

          *(&v53.__r_.__value_.__s + 23) = v24 & 0x7F;
          v21->__r_.__value_.__s.__data_[v24] = 0;
LABEL_40:
          if ((SHIBYTE(v52) & 0x80000000) == 0)
          {
            goto LABEL_41;
          }

          goto LABEL_29;
        }
      }
    }

LABEL_116:
    __break(1u);
LABEL_117:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v48 = std::__throw_bad_optional_access[abi:sn200100]();
}

void std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::anonymous namespace::VisitToString> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> const&>(unsigned int ***a1@<X1>, char *a2@<X2>, std::string *a3@<X8>)
{
  v4 = *a1;
  memset(&v53, 0, sizeof(v53));
  if (&v53 <= "[" && &v53.__r_.__value_.__l.__data_ + 1 > "[")
  {
    goto LABEL_116;
  }

  v53.__r_.__value_.__s.__data_[0] = 91;
  *(&v53.__r_.__value_.__s + 23) = 1;
  if (v4[3])
  {
    v6 = *v4;
    v7 = v4[1];
    if (*v4 == v7)
    {
      v13 = 0;
      LODWORD(v14) = 1;
      v15 = v53.__r_.__value_.__r.__words[2];
LABEL_98:
      v42 = v14;
      v43 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v14 = v14;
      if ((v14 & 0x80u) == 0)
      {
        v44 = 22;
      }

      else
      {
        v44 = v43;
      }

      if ((v14 & 0x80u) != 0)
      {
        v14 = v13;
      }

      if (v44 == v14)
      {
        std::string::__grow_by_and_replace(&v53, v44, 1uLL, v44, v44, 0, 1uLL, "]");
LABEL_113:
        *a3 = v53;
        return;
      }

      v45 = v53.__r_.__value_.__r.__words[0];
      if (v42 >= 0)
      {
        v45 = &v53;
      }

      v46 = v45 + v14;
      if (v45 + v14 > "]" || v46 + 1 <= "]")
      {
        *v46 = 93;
        v47 = v14 + 1;
        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          v53.__r_.__value_.__l.__size_ = v47;
        }

        else
        {
          *(&v53.__r_.__value_.__s + 23) = v47 & 0x7F;
        }

        v45->__r_.__value_.__s.__data_[v47] = 0;
        goto LABEL_113;
      }

      goto LABEL_116;
    }

    v8 = *v6;
    v51 = 0;
    v52 = 0x1600000000000000;
    v49 = a3;
    __p = 0;
    v9 = absl::numbers_internal::FastIntToBuffer(v8, &__p, a2);
    v11 = v9 - &__p;
    if ((SHIBYTE(v52) & 0x8000000000000000) != 0)
    {
      if (v51 < v11)
      {
        goto LABEL_117;
      }

      p_p = __p;
      v51 = v9 - &__p;
    }

    else
    {
      if (v11 > SHIBYTE(v52))
      {
        goto LABEL_117;
      }

      HIBYTE(v52) = v9 - &__p;
      p_p = &__p;
    }

    p_p[v11] = 0;
    if (v52 >= 0)
    {
      v16 = &__p;
    }

    else
    {
      v16 = __p;
    }

    if (v52 >= 0)
    {
      v17 = HIBYTE(v52);
    }

    else
    {
      v17 = v51;
    }

    if (v16 || !v17)
    {
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = 22;
      }

      else
      {
        v18 = (v53.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v53.__r_.__value_.__l.__size_;
      }

      if (v18 - size < v17)
      {
        std::string::__grow_by_and_replace(&v53, v18, size + v17 - v18, size, size, 0, v17, v16);
        if (SHIBYTE(v52) < 0)
        {
          goto LABEL_29;
        }

        goto LABEL_41;
      }

      if (!v17)
      {
        goto LABEL_40;
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v53;
      }

      else
      {
        v21 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v17 & 0x8000000000000000) == 0)
      {
        v22 = v21 + size;
        if (v21 + size > v16 || &v22[v17] <= v16)
        {
          v23 = v17;
          memmove(v22, v16, v17);
          v24 = size + v23;
          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            v53.__r_.__value_.__l.__size_ = size + v23;
            v21->__r_.__value_.__s.__data_[v24] = 0;
            if ((SHIBYTE(v52) & 0x80000000) == 0)
            {
LABEL_41:
              v20 = v6 + 1;
              if (v6 + 1 == v7)
              {
LABEL_97:
                LODWORD(v14) = HIBYTE(v53.__r_.__value_.__r.__words[2]);
                v15 = v53.__r_.__value_.__r.__words[2];
                v13 = v53.__r_.__value_.__l.__size_;
                a3 = v49;
                goto LABEL_98;
              }

              while (1)
              {
                while (1)
                {
LABEL_45:
                  v25 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
                  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v26 = 22;
                  }

                  else
                  {
                    v26 = (v53.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                  }

                  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v25 = v53.__r_.__value_.__l.__size_;
                  }

                  if (v26 == v25)
                  {
                    std::string::__grow_by_and_replace(&v53, v26, 1uLL, v26, v26, 0, 1uLL, ",");
                  }

                  else
                  {
                    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v27 = &v53;
                    }

                    else
                    {
                      v27 = v53.__r_.__value_.__r.__words[0];
                    }

                    if (v27 + v25 <= "," && &v27->__r_.__value_.__l.__data_ + v25 + 1 > ",")
                    {
                      goto LABEL_116;
                    }

                    v27->__r_.__value_.__s.__data_[v25] = 44;
                    v29 = v25 + 1;
                    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
                    {
                      v53.__r_.__value_.__l.__size_ = v29;
                    }

                    else
                    {
                      *(&v53.__r_.__value_.__s + 23) = v29 & 0x7F;
                    }

                    v27->__r_.__value_.__s.__data_[v29] = 0;
                  }

                  v30 = *v20;
                  v51 = 0;
                  v52 = 0x1600000000000000;
                  __p = 0;
                  v31 = absl::numbers_internal::FastIntToBuffer(v30, &__p, v10);
                  v32 = v31 - &__p;
                  if ((SHIBYTE(v52) & 0x8000000000000000) != 0)
                  {
                    if (v51 < v32)
                    {
                      goto LABEL_117;
                    }

                    v33 = __p;
                    v51 = v31 - &__p;
                  }

                  else
                  {
                    if (v32 > SHIBYTE(v52))
                    {
                      goto LABEL_117;
                    }

                    HIBYTE(v52) = v31 - &__p;
                    v33 = &__p;
                  }

                  v33[v32] = 0;
                  if (v52 >= 0)
                  {
                    v34 = &__p;
                  }

                  else
                  {
                    v34 = __p;
                  }

                  if (v52 >= 0)
                  {
                    v35 = HIBYTE(v52);
                  }

                  else
                  {
                    v35 = v51;
                  }

                  if (!v34 && v35)
                  {
                    goto LABEL_116;
                  }

                  v36 = (v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v53.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                  v37 = (v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v53.__r_.__value_.__r.__words[2]) : v53.__r_.__value_.__l.__size_;
                  if (v36 - v37 >= v35)
                  {
                    break;
                  }

                  std::string::__grow_by_and_replace(&v53, v36, v37 + v35 - v36, v37, v37, 0, v35, v34);
                  if ((SHIBYTE(v52) & 0x80000000) == 0)
                  {
                    goto LABEL_44;
                  }

LABEL_93:
                  operator delete(__p);
                  if (++v20 == v7)
                  {
                    goto LABEL_97;
                  }
                }

                if (v35)
                {
                  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v38 = &v53;
                  }

                  else
                  {
                    v38 = v53.__r_.__value_.__r.__words[0];
                  }

                  if ((v35 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_116;
                  }

                  v39 = v38 + v37;
                  if (v38 + v37 <= v34 && &v39[v35] > v34)
                  {
                    goto LABEL_116;
                  }

                  v40 = v35;
                  memmove(v39, v34, v35);
                  v41 = v37 + v40;
                  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v53.__r_.__value_.__l.__size_ = v37 + v40;
                    v38->__r_.__value_.__s.__data_[v41] = 0;
                    if (SHIBYTE(v52) < 0)
                    {
                      goto LABEL_93;
                    }

                    goto LABEL_44;
                  }

                  *(&v53.__r_.__value_.__s + 23) = v41 & 0x7F;
                  v38->__r_.__value_.__s.__data_[v41] = 0;
                }

                if (SHIBYTE(v52) < 0)
                {
                  goto LABEL_93;
                }

LABEL_44:
                if (++v20 == v7)
                {
                  goto LABEL_97;
                }
              }
            }

LABEL_29:
            operator delete(__p);
            v20 = v6 + 1;
            if (v6 + 1 != v7)
            {
              goto LABEL_45;
            }

            goto LABEL_97;
          }

          *(&v53.__r_.__value_.__s + 23) = v24 & 0x7F;
          v21->__r_.__value_.__s.__data_[v24] = 0;
LABEL_40:
          if ((SHIBYTE(v52) & 0x80000000) == 0)
          {
            goto LABEL_41;
          }

          goto LABEL_29;
        }
      }
    }

LABEL_116:
    __break(1u);
LABEL_117:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v48 = std::__throw_bad_optional_access[abi:sn200100]();
}

double std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::anonymous namespace::VisitToString> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> const&>@<D0>(uint64_t *a1@<X1>, std::string *a2@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  memset(&v49, 0, sizeof(v49));
  if (&v49 <= "[" && &v49.__r_.__value_.__l.__data_ + 1 > "[")
  {
    goto LABEL_121;
  }

  v49.__r_.__value_.__s.__data_[0] = 91;
  *(&v49.__r_.__value_.__s + 23) = 1;
  if ((*(v3 + 24) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
  }

  v5 = *v3;
  v6 = *(v3 + 8);
  if (*v3 == v6)
  {
    v10 = 0;
    LODWORD(v11) = 1;
    v12 = v49.__r_.__value_.__r.__words[2];
    goto LABEL_103;
  }

  v45 = a2;
  v7 = snprintf(__str, 0x20uLL, "%.16g", *v5);
  if (v7 < 0)
  {
    goto LABEL_122;
  }

  v8 = v7;
  v9 = 0x1000C0077774924;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v48 = v7;
  if (&__p <= __str && &__p + v7 > __str)
  {
    goto LABEL_121;
  }

  if (v7)
  {
    memcpy(&__p, __str, v7);
  }

  *(&__p + v8) = 0;
  v13 = (v48 & 0x80u) == 0 ? &__p : __p;
  v14 = (v48 & 0x80u) == 0 ? v48 : v47;
  if (!v13 && v14)
  {
    goto LABEL_121;
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = 22;
  }

  else
  {
    v15 = (v49.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v49.__r_.__value_.__l.__size_;
  }

  if (v15 - size >= v14)
  {
    if (!v14)
    {
      goto LABEL_43;
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v49;
    }

    else
    {
      v18 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      v19 = v18 + size;
      if (v18 + size > v13 || &v19[v14] <= v13)
      {
        v20 = v14;
        memmove(v19, v13, v14);
        v21 = size + v20;
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          v49.__r_.__value_.__l.__size_ = size + v20;
          v18->__r_.__value_.__s.__data_[v21] = 0;
          if ((v48 & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

LABEL_32:
          operator delete(__p);
          i = v5 + 1;
          if (v5 + 1 != v6)
          {
            goto LABEL_47;
          }

          goto LABEL_102;
        }

        *(&v49.__r_.__value_.__s + 23) = v21 & 0x7F;
        v18->__r_.__value_.__s.__data_[v21] = 0;
LABEL_43:
        if ((v48 & 0x80000000) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_32;
      }
    }

LABEL_121:
    __break(1u);
LABEL_122:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::string::__grow_by_and_replace(&v49, v15, size + v14 - v15, size, size, 0, v14, v13);
  if (v48 < 0)
  {
    goto LABEL_32;
  }

LABEL_44:
  for (i = v5 + 1; i != v6; ++i)
  {
LABEL_47:
    v22 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = 22;
    }

    else
    {
      v23 = (v49.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v49.__r_.__value_.__l.__size_;
    }

    if (v23 == v22)
    {
      std::string::__grow_by_and_replace(&v49, v23, 1uLL, v23, v23, 0, 1uLL, ",");
    }

    else
    {
      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v49;
      }

      else
      {
        v24 = v49.__r_.__value_.__r.__words[0];
      }

      if (v24 + v22 <= "," && &v24->__r_.__value_.__l.__data_ + v22 + 1 > ",")
      {
        goto LABEL_121;
      }

      v24->__r_.__value_.__s.__data_[v22] = 44;
      v26 = v22 + 1;
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        v49.__r_.__value_.__l.__size_ = v26;
      }

      else
      {
        *(&v49.__r_.__value_.__s + 23) = v26 & 0x7F;
      }

      v24->__r_.__value_.__s.__data_[v26] = 0;
    }

    v27 = snprintf(__str, 0x20uLL, "%.16g", *i);
    if (v27 < 0)
    {
      goto LABEL_122;
    }

    v28 = v27;
    if (v27 > 0x16)
    {
      operator new();
    }

    v48 = v27;
    if (&__p <= __str && &__p + v27 > __str)
    {
      goto LABEL_121;
    }

    if (v27)
    {
      memcpy(&__p, __str, v27);
    }

    *(&__p + v28) = 0;
    v29 = (v48 & 0x80u) == 0 ? &__p : __p;
    v30 = (v48 & 0x80u) == 0 ? v48 : v47;
    if (!v29 && v30)
    {
      goto LABEL_121;
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = 22;
    }

    else
    {
      v31 = (v49.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v49.__r_.__value_.__l.__size_;
    }

    if (v31 - v32 >= v30)
    {
      if (v30)
      {
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v49;
        }

        else
        {
          v33 = v49.__r_.__value_.__r.__words[0];
        }

        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_121;
        }

        v34 = v33 + v32;
        if (v33 + v32 <= v29 && &v34[v30] > v29)
        {
          goto LABEL_121;
        }

        v35 = v9;
        v36 = v30;
        memmove(v34, v29, v30);
        v37 = v32 + v36;
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          v49.__r_.__value_.__l.__size_ = v32 + v36;
        }

        else
        {
          *(&v49.__r_.__value_.__s + 23) = v37 & 0x7F;
        }

        v9 = v35;
        v33->__r_.__value_.__s.__data_[v37] = 0;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v49, v31, v32 + v30 - v31, v32, v32, 0, v30, v29);
    }

    if (v48 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_102:
  LODWORD(v11) = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  v12 = v49.__r_.__value_.__r.__words[2];
  v10 = v49.__r_.__value_.__l.__size_;
  a2 = v45;
LABEL_103:
  v38 = v11;
  v39 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v11 = v11;
  if ((v11 & 0x80u) == 0)
  {
    v40 = 22;
  }

  else
  {
    v40 = v39;
  }

  if ((v11 & 0x80u) != 0)
  {
    v11 = v10;
  }

  if (v40 == v11)
  {
    std::string::__grow_by_and_replace(&v49, v40, 1uLL, v40, v40, 0, 1uLL, "]");
    goto LABEL_118;
  }

  v41 = v49.__r_.__value_.__r.__words[0];
  if (v38 >= 0)
  {
    v41 = &v49;
  }

  v42 = v41 + v11;
  if (v41 + v11 <= "]" && v42 + 1 > "]")
  {
    goto LABEL_121;
  }

  *v42 = 93;
  v43 = v11 + 1;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    v49.__r_.__value_.__l.__size_ = v43;
  }

  else
  {
    *(&v49.__r_.__value_.__s + 23) = v43 & 0x7F;
  }

  v41->__r_.__value_.__s.__data_[v43] = 0;
LABEL_118:
  result = *&v49.__r_.__value_.__l.__data_;
  *a2 = v49;
  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::anonymous namespace::VisitToString> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> const&>@<D0>(uint64_t *a1@<X1>, std::string *a2@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  memset(&v49, 0, sizeof(v49));
  if (&v49 <= "[" && &v49.__r_.__value_.__l.__data_ + 1 > "[")
  {
    goto LABEL_121;
  }

  v49.__r_.__value_.__s.__data_[0] = 91;
  *(&v49.__r_.__value_.__s + 23) = 1;
  if ((*(v3 + 24) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
  }

  v5 = *v3;
  v6 = *(v3 + 8);
  if (*v3 == v6)
  {
    v10 = 0;
    LODWORD(v11) = 1;
    v12 = v49.__r_.__value_.__r.__words[2];
    goto LABEL_103;
  }

  v45 = a2;
  v7 = snprintf(__str, 0x20uLL, "%.16g", *v5);
  if (v7 < 0)
  {
    goto LABEL_122;
  }

  v8 = v7;
  v9 = 0x1000C0077774924;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v48 = v7;
  if (&__p <= __str && &__p + v7 > __str)
  {
    goto LABEL_121;
  }

  if (v7)
  {
    memcpy(&__p, __str, v7);
  }

  *(&__p + v8) = 0;
  v13 = (v48 & 0x80u) == 0 ? &__p : __p;
  v14 = (v48 & 0x80u) == 0 ? v48 : v47;
  if (!v13 && v14)
  {
    goto LABEL_121;
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = 22;
  }

  else
  {
    v15 = (v49.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v49.__r_.__value_.__l.__size_;
  }

  if (v15 - size >= v14)
  {
    if (!v14)
    {
      goto LABEL_43;
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v49;
    }

    else
    {
      v18 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      v19 = v18 + size;
      if (v18 + size > v13 || &v19[v14] <= v13)
      {
        v20 = v14;
        memmove(v19, v13, v14);
        v21 = size + v20;
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          v49.__r_.__value_.__l.__size_ = size + v20;
          v18->__r_.__value_.__s.__data_[v21] = 0;
          if ((v48 & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

LABEL_32:
          operator delete(__p);
          i = v5 + 1;
          if (v5 + 1 != v6)
          {
            goto LABEL_47;
          }

          goto LABEL_102;
        }

        *(&v49.__r_.__value_.__s + 23) = v21 & 0x7F;
        v18->__r_.__value_.__s.__data_[v21] = 0;
LABEL_43:
        if ((v48 & 0x80000000) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_32;
      }
    }

LABEL_121:
    __break(1u);
LABEL_122:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::string::__grow_by_and_replace(&v49, v15, size + v14 - v15, size, size, 0, v14, v13);
  if (v48 < 0)
  {
    goto LABEL_32;
  }

LABEL_44:
  for (i = v5 + 1; i != v6; ++i)
  {
LABEL_47:
    v22 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = 22;
    }

    else
    {
      v23 = (v49.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v49.__r_.__value_.__l.__size_;
    }

    if (v23 == v22)
    {
      std::string::__grow_by_and_replace(&v49, v23, 1uLL, v23, v23, 0, 1uLL, ",");
    }

    else
    {
      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v49;
      }

      else
      {
        v24 = v49.__r_.__value_.__r.__words[0];
      }

      if (v24 + v22 <= "," && &v24->__r_.__value_.__l.__data_ + v22 + 1 > ",")
      {
        goto LABEL_121;
      }

      v24->__r_.__value_.__s.__data_[v22] = 44;
      v26 = v22 + 1;
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        v49.__r_.__value_.__l.__size_ = v26;
      }

      else
      {
        *(&v49.__r_.__value_.__s + 23) = v26 & 0x7F;
      }

      v24->__r_.__value_.__s.__data_[v26] = 0;
    }

    v27 = snprintf(__str, 0x20uLL, "%.16g", *i);
    if (v27 < 0)
    {
      goto LABEL_122;
    }

    v28 = v27;
    if (v27 > 0x16)
    {
      operator new();
    }

    v48 = v27;
    if (&__p <= __str && &__p + v27 > __str)
    {
      goto LABEL_121;
    }

    if (v27)
    {
      memcpy(&__p, __str, v27);
    }

    *(&__p + v28) = 0;
    v29 = (v48 & 0x80u) == 0 ? &__p : __p;
    v30 = (v48 & 0x80u) == 0 ? v48 : v47;
    if (!v29 && v30)
    {
      goto LABEL_121;
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = 22;
    }

    else
    {
      v31 = (v49.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v49.__r_.__value_.__l.__size_;
    }

    if (v31 - v32 >= v30)
    {
      if (v30)
      {
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v49;
        }

        else
        {
          v33 = v49.__r_.__value_.__r.__words[0];
        }

        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_121;
        }

        v34 = v33 + v32;
        if (v33 + v32 <= v29 && &v34[v30] > v29)
        {
          goto LABEL_121;
        }

        v35 = v9;
        v36 = v30;
        memmove(v34, v29, v30);
        v37 = v32 + v36;
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          v49.__r_.__value_.__l.__size_ = v32 + v36;
        }

        else
        {
          *(&v49.__r_.__value_.__s + 23) = v37 & 0x7F;
        }

        v9 = v35;
        v33->__r_.__value_.__s.__data_[v37] = 0;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v49, v31, v32 + v30 - v31, v32, v32, 0, v30, v29);
    }

    if (v48 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_102:
  LODWORD(v11) = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  v12 = v49.__r_.__value_.__r.__words[2];
  v10 = v49.__r_.__value_.__l.__size_;
  a2 = v45;
LABEL_103:
  v38 = v11;
  v39 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v11 = v11;
  if ((v11 & 0x80u) == 0)
  {
    v40 = 22;
  }

  else
  {
    v40 = v39;
  }

  if ((v11 & 0x80u) != 0)
  {
    v11 = v10;
  }

  if (v40 == v11)
  {
    std::string::__grow_by_and_replace(&v49, v40, 1uLL, v40, v40, 0, 1uLL, "]");
    goto LABEL_118;
  }

  v41 = v49.__r_.__value_.__r.__words[0];
  if (v38 >= 0)
  {
    v41 = &v49;
  }

  v42 = v41 + v11;
  if (v41 + v11 <= "]" && v42 + 1 > "]")
  {
    goto LABEL_121;
  }

  *v42 = 93;
  v43 = v11 + 1;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    v49.__r_.__value_.__l.__size_ = v43;
  }

  else
  {
    *(&v49.__r_.__value_.__s + 23) = v43 & 0x7F;
  }

  v41->__r_.__value_.__s.__data_[v43] = 0;
LABEL_118:
  result = *&v49.__r_.__value_.__l.__data_;
  *a2 = v49;
  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::anonymous namespace::VisitToString> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> const&>@<D0>(uint64_t *a1@<X1>, std::string *a2@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  memset(&v49, 0, sizeof(v49));
  if (&v49 <= "[" && &v49.__r_.__value_.__l.__data_ + 1 > "[")
  {
    goto LABEL_121;
  }

  v49.__r_.__value_.__s.__data_[0] = 91;
  *(&v49.__r_.__value_.__s + 23) = 1;
  if ((*(v3 + 24) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
  }

  v5 = *v3;
  v6 = *(v3 + 8);
  if (*v3 == v6)
  {
    v10 = 0;
    LODWORD(v11) = 1;
    v12 = v49.__r_.__value_.__r.__words[2];
    goto LABEL_103;
  }

  v45 = a2;
  v7 = snprintf(__str, 0x20uLL, "%.16g", *v5);
  if (v7 < 0)
  {
    goto LABEL_122;
  }

  v8 = v7;
  v9 = 0x1000C0077774924;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v48 = v7;
  if (&__p <= __str && &__p + v7 > __str)
  {
    goto LABEL_121;
  }

  if (v7)
  {
    memcpy(&__p, __str, v7);
  }

  *(&__p + v8) = 0;
  v13 = (v48 & 0x80u) == 0 ? &__p : __p;
  v14 = (v48 & 0x80u) == 0 ? v48 : v47;
  if (!v13 && v14)
  {
    goto LABEL_121;
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = 22;
  }

  else
  {
    v15 = (v49.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v49.__r_.__value_.__l.__size_;
  }

  if (v15 - size >= v14)
  {
    if (!v14)
    {
      goto LABEL_43;
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v49;
    }

    else
    {
      v18 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      v19 = v18 + size;
      if (v18 + size > v13 || &v19[v14] <= v13)
      {
        v20 = v14;
        memmove(v19, v13, v14);
        v21 = size + v20;
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          v49.__r_.__value_.__l.__size_ = size + v20;
          v18->__r_.__value_.__s.__data_[v21] = 0;
          if ((v48 & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

LABEL_32:
          operator delete(__p);
          i = v5 + 1;
          if (v5 + 1 != v6)
          {
            goto LABEL_47;
          }

          goto LABEL_102;
        }

        *(&v49.__r_.__value_.__s + 23) = v21 & 0x7F;
        v18->__r_.__value_.__s.__data_[v21] = 0;
LABEL_43:
        if ((v48 & 0x80000000) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_32;
      }
    }

LABEL_121:
    __break(1u);
LABEL_122:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::string::__grow_by_and_replace(&v49, v15, size + v14 - v15, size, size, 0, v14, v13);
  if (v48 < 0)
  {
    goto LABEL_32;
  }

LABEL_44:
  for (i = v5 + 1; i != v6; ++i)
  {
LABEL_47:
    v22 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = 22;
    }

    else
    {
      v23 = (v49.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v49.__r_.__value_.__l.__size_;
    }

    if (v23 == v22)
    {
      std::string::__grow_by_and_replace(&v49, v23, 1uLL, v23, v23, 0, 1uLL, ",");
    }

    else
    {
      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v49;
      }

      else
      {
        v24 = v49.__r_.__value_.__r.__words[0];
      }

      if (v24 + v22 <= "," && &v24->__r_.__value_.__l.__data_ + v22 + 1 > ",")
      {
        goto LABEL_121;
      }

      v24->__r_.__value_.__s.__data_[v22] = 44;
      v26 = v22 + 1;
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        v49.__r_.__value_.__l.__size_ = v26;
      }

      else
      {
        *(&v49.__r_.__value_.__s + 23) = v26 & 0x7F;
      }

      v24->__r_.__value_.__s.__data_[v26] = 0;
    }

    v27 = snprintf(__str, 0x20uLL, "%.16g", *i);
    if (v27 < 0)
    {
      goto LABEL_122;
    }

    v28 = v27;
    if (v27 > 0x16)
    {
      operator new();
    }

    v48 = v27;
    if (&__p <= __str && &__p + v27 > __str)
    {
      goto LABEL_121;
    }

    if (v27)
    {
      memcpy(&__p, __str, v27);
    }

    *(&__p + v28) = 0;
    v29 = (v48 & 0x80u) == 0 ? &__p : __p;
    v30 = (v48 & 0x80u) == 0 ? v48 : v47;
    if (!v29 && v30)
    {
      goto LABEL_121;
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = 22;
    }

    else
    {
      v31 = (v49.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v49.__r_.__value_.__l.__size_;
    }

    if (v31 - v32 >= v30)
    {
      if (v30)
      {
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v49;
        }

        else
        {
          v33 = v49.__r_.__value_.__r.__words[0];
        }

        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_121;
        }

        v34 = v33 + v32;
        if (v33 + v32 <= v29 && &v34[v30] > v29)
        {
          goto LABEL_121;
        }

        v35 = v9;
        v36 = v30;
        memmove(v34, v29, v30);
        v37 = v32 + v36;
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          v49.__r_.__value_.__l.__size_ = v32 + v36;
        }

        else
        {
          *(&v49.__r_.__value_.__s + 23) = v37 & 0x7F;
        }

        v9 = v35;
        v33->__r_.__value_.__s.__data_[v37] = 0;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v49, v31, v32 + v30 - v31, v32, v32, 0, v30, v29);
    }

    if (v48 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_102:
  LODWORD(v11) = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  v12 = v49.__r_.__value_.__r.__words[2];
  v10 = v49.__r_.__value_.__l.__size_;
  a2 = v45;
LABEL_103:
  v38 = v11;
  v39 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v11 = v11;
  if ((v11 & 0x80u) == 0)
  {
    v40 = 22;
  }

  else
  {
    v40 = v39;
  }

  if ((v11 & 0x80u) != 0)
  {
    v11 = v10;
  }

  if (v40 == v11)
  {
    std::string::__grow_by_and_replace(&v49, v40, 1uLL, v40, v40, 0, 1uLL, "]");
    goto LABEL_118;
  }

  v41 = v49.__r_.__value_.__r.__words[0];
  if (v38 >= 0)
  {
    v41 = &v49;
  }

  v42 = v41 + v11;
  if (v41 + v11 <= "]" && v42 + 1 > "]")
  {
    goto LABEL_121;
  }

  *v42 = 93;
  v43 = v11 + 1;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    v49.__r_.__value_.__l.__size_ = v43;
  }

  else
  {
    *(&v49.__r_.__value_.__s + 23) = v43 & 0x7F;
  }

  v41->__r_.__value_.__s.__data_[v43] = 0;
LABEL_118:
  result = *&v49.__r_.__value_.__l.__data_;
  *a2 = v49;
  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::anonymous namespace::VisitToString> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> const&>(uint64_t *a1@<X1>, std::string *a2@<X8>)
{
  v3 = *a1;
  memset(&v48, 0, sizeof(v48));
  if (&v48 <= "[" && &v48.__r_.__value_.__l.__data_ + 1 > "[")
  {
    goto LABEL_125;
  }

  v48.__r_.__value_.__s.__data_[0] = 91;
  *(&v48.__r_.__value_.__s + 23) = 1;
  if (*(v3 + 24))
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    if (*v3 != v6)
    {
      v45 = a2;
      v7 = "";
      while (1)
      {
        v8 = strlen(v7);
        v9 = v8;
        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = 22;
        }

        else
        {
          v10 = (v48.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v48.__r_.__value_.__l.__size_;
        }

        if (v10 - size >= v8)
        {
          if (v8)
          {
            if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v12 = &v48;
            }

            else
            {
              v12 = v48.__r_.__value_.__r.__words[0];
            }

            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_125;
            }

            if (v12 + size <= v7 && v12 + size + v8 > v7)
            {
              goto LABEL_125;
            }

            memcpy(v12 + size, v7, v8);
            v14 = size + v9;
            if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
            {
              v48.__r_.__value_.__l.__size_ = size + v9;
            }

            else
            {
              *(&v48.__r_.__value_.__s + 23) = v14 & 0x7F;
            }

            v12->__r_.__value_.__s.__data_[v14] = 0;
          }
        }

        else
        {
          std::string::__grow_by_and_replace(&v48, v10, size + v8 - v10, size, size, 0, v8, v7);
        }

        v15 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = 22;
        }

        else
        {
          v16 = (v48.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v15 = v48.__r_.__value_.__l.__size_;
        }

        if (v16 == v15)
        {
          std::string::__grow_by_and_replace(&v48, v16, 1uLL, v16, v16, 0, 1uLL, "");
        }

        else
        {
          if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = &v48;
          }

          else
          {
            v17 = v48.__r_.__value_.__r.__words[0];
          }

          v18 = v17 + v15;
          if (v17 + v15 <= "" && v18 + 1 > "")
          {
            goto LABEL_125;
          }

          *v18 = 34;
          v19 = v15 + 1;
          if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
          {
            v48.__r_.__value_.__l.__size_ = v19;
          }

          else
          {
            *(&v48.__r_.__value_.__s + 23) = v19 & 0x7F;
          }

          v17->__r_.__value_.__s.__data_[v19] = 0;
        }

        v20 = *(v5 + 23);
        if (v20 >= 0)
        {
          v21 = v5;
        }

        else
        {
          v21 = *v5;
        }

        if (v20 >= 0)
        {
          v22 = *(v5 + 23);
        }

        else
        {
          v22 = v5[1];
        }

        if (!v21 && v22)
        {
          goto LABEL_125;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_126;
        }

        if (v22 > 0x16)
        {
          operator new();
        }

        v47 = v22;
        v23 = (__p + v22);
        if (__p <= v21 && v23 > v21)
        {
          goto LABEL_125;
        }

        if (v22)
        {
          memmove(__p, v21, v22);
        }

        *v23 = 0;
        v24 = (v47 & 0x80u) == 0 ? __p : __p[0];
        v25 = (v47 & 0x80u) == 0 ? v47 : __p[1];
        if (!v24 && v25)
        {
          goto LABEL_125;
        }

        v26 = (v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? 22 : (v48.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        v27 = (v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v48.__r_.__value_.__r.__words[2]) : v48.__r_.__value_.__l.__size_;
        if (v26 - v27 >= v25)
        {
          break;
        }

        std::string::__grow_by_and_replace(&v48, v26, v27 + v25 - v26, v27, v27, 0, v25, v24);
        if (v47 < 0)
        {
          goto LABEL_79;
        }

LABEL_90:
        v32 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = 22;
        }

        else
        {
          v33 = (v48.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v32 = v48.__r_.__value_.__l.__size_;
        }

        if (v33 == v32)
        {
          std::string::__grow_by_and_replace(&v48, v33, 1uLL, v33, v33, 0, 1uLL, "");
        }

        else
        {
          if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v34 = &v48;
          }

          else
          {
            v34 = v48.__r_.__value_.__r.__words[0];
          }

          v35 = v34 + v32;
          if (v34 + v32 <= "" && v35 + 1 > "")
          {
            goto LABEL_125;
          }

          *v35 = 34;
          v36 = v32 + 1;
          if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
          {
            v48.__r_.__value_.__l.__size_ = v36;
          }

          else
          {
            *(&v48.__r_.__value_.__s + 23) = v36 & 0x7F;
          }

          v34->__r_.__value_.__s.__data_[v36] = 0;
        }

        v5 += 3;
        v7 = ",";
        if (v5 == v6)
        {
          LODWORD(v37) = HIBYTE(v48.__r_.__value_.__r.__words[2]);
          v38 = v48.__r_.__value_.__l.__size_;
          a2 = v45;
          goto LABEL_109;
        }
      }

      if (v25)
      {
        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &v48;
        }

        else
        {
          v28 = v48.__r_.__value_.__r.__words[0];
        }

        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_125;
        }

        v29 = v28 + v27;
        if (v28 + v27 <= v24 && &v29[v25] > v24)
        {
          goto LABEL_125;
        }

        v30 = v25;
        memmove(v29, v24, v25);
        v31 = v27 + v30;
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          v48.__r_.__value_.__l.__size_ = v27 + v30;
          v28->__r_.__value_.__s.__data_[v31] = 0;
          if ((v47 & 0x80000000) == 0)
          {
            goto LABEL_90;
          }

LABEL_79:
          operator delete(__p[0]);
          goto LABEL_90;
        }

        *(&v48.__r_.__value_.__s + 23) = v31 & 0x7F;
        v28->__r_.__value_.__s.__data_[v31] = 0;
      }

      if ((v47 & 0x80000000) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_79;
    }

    v38 = 0;
    LODWORD(v37) = 1;
LABEL_109:
    v39 = v37;
    v37 = v37;
    if ((v37 & 0x80u) == 0)
    {
      v40 = 22;
    }

    else
    {
      v40 = (v48.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v37 & 0x80u) != 0)
    {
      v37 = v38;
    }

    if (v40 == v37)
    {
      std::string::__grow_by_and_replace(&v48, v40, 1uLL, v40, v40, 0, 1uLL, "]");
LABEL_124:
      *a2 = v48;
      return;
    }

    v41 = v48.__r_.__value_.__r.__words[0];
    if (v39 >= 0)
    {
      v41 = &v48;
    }

    v42 = v41 + v37;
    if (v41 + v37 > "]" || v42 + 1 <= "]")
    {
      *v42 = 93;
      v43 = v37 + 1;
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        v48.__r_.__value_.__l.__size_ = v43;
      }

      else
      {
        *(&v48.__r_.__value_.__s + 23) = v43 & 0x7F;
      }

      v41->__r_.__value_.__s.__data_[v43] = 0;
      goto LABEL_124;
    }

LABEL_125:
    __break(1u);
LABEL_126:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v44 = std::__throw_bad_optional_access[abi:sn200100]();
}

double std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::anonymous namespace::VisitToString> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> const&>@<D0>(uint64_t *a1@<X1>, std::string *a2@<X8>)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  memset(&v60, 0, sizeof(v60));
  if (&v60 <= "{" && &v60.__r_.__value_.__l.__data_ + 1 > "{")
  {
    goto LABEL_147;
  }

  v60.__r_.__value_.__s.__data_[0] = 123;
  *(&v60.__r_.__value_.__s + 23) = 1;
  if ((*(v3 + 24) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
  }

  v7 = *v3;
  v6 = (v3 + 8);
  v5 = v7;
  if (v7 != v6)
  {
    v8 = "";
    v9 = "";
    while (1)
    {
      v10 = v9;
      v11 = strlen(v8);
      v12 = v11;
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = 22;
      }

      else
      {
        v13 = (v60.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v60.__r_.__value_.__l.__size_;
      }

      if (v13 - size >= v11)
      {
        if (v11)
        {
          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v15 = &v60;
          }

          else
          {
            v15 = v60.__r_.__value_.__r.__words[0];
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_147;
          }

          if (v15 + size <= v8 && v15 + size + v11 > v8)
          {
            goto LABEL_147;
          }

          memcpy(v15 + size, v8, v11);
          v17 = size + v12;
          if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
          {
            v60.__r_.__value_.__l.__size_ = size + v12;
          }

          else
          {
            *(&v60.__r_.__value_.__s + 23) = v17 & 0x7F;
          }

          v15->__r_.__value_.__s.__data_[v17] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v60, v13, size + v11 - v13, size, size, 0, v11, v8);
      }

      v18 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = 22;
      }

      else
      {
        v19 = (v60.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v18 = v60.__r_.__value_.__l.__size_;
      }

      if (v19 == v18)
      {
        v9 = v10;
        std::string::__grow_by_and_replace(&v60, v19, 1uLL, v19, v19, 0, 1uLL, v10);
        v20 = *(v5 + 55);
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v23 = &v60;
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v23 = v60.__r_.__value_.__r.__words[0];
        }

        v24 = v23 + v18;
        v9 = v10;
        if (v23 + v18 <= v10 && v24 + 1 > v10)
        {
          goto LABEL_147;
        }

        *v24 = 34;
        v25 = v18 + 1;
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          v60.__r_.__value_.__l.__size_ = v25;
          v23->__r_.__value_.__s.__data_[v25] = 0;
          v20 = *(v5 + 55);
          if ((v20 & 0x8000000000000000) == 0)
          {
LABEL_37:
            v21 = (v5 + 4);
            v22 = v20 == 0;
            goto LABEL_46;
          }
        }

        else
        {
          *(&v60.__r_.__value_.__s + 23) = v25 & 0x7F;
          v23->__r_.__value_.__s.__data_[v25] = 0;
          v20 = *(v5 + 55);
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }
        }
      }

      v21 = v5[4];
      v20 = v5[5];
      v22 = v20 == 0;
      if (!v21 && v20)
      {
        goto LABEL_147;
      }

LABEL_46:
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = 22;
      }

      else
      {
        v26 = (v60.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v27 = v60.__r_.__value_.__l.__size_;
      }

      if (v26 - v27 >= v20)
      {
        if (!v22)
        {
          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = &v60;
          }

          else
          {
            v28 = v60.__r_.__value_.__r.__words[0];
          }

          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_147;
          }

          v29 = v28 + v27;
          if (v28 + v27 <= v21 && &v29[v20] > v21)
          {
            goto LABEL_147;
          }

          v30 = v20;
          memmove(v29, v21, v20);
          v31 = v27 + v30;
          if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
          {
            v60.__r_.__value_.__l.__size_ = v27 + v30;
          }

          else
          {
            *(&v60.__r_.__value_.__s + 23) = v31 & 0x7F;
          }

          v28->__r_.__value_.__s.__data_[v31] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v60, v26, v27 + v20 - v26, v27, v27, 0, v20, v21);
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = 22;
      }

      else
      {
        v32 = (v60.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v33 = v60.__r_.__value_.__l.__size_;
      }

      if (v32 - v33 >= 2)
      {
        v34 = &v60;
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v60.__r_.__value_.__r.__words[0];
        }

        v35 = (v34 + v33);
        if (v34 + v33 <= ":" && v35 + 1 > ":")
        {
          goto LABEL_147;
        }

        *v35 = 14882;
        v36 = v33 + 2;
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          v60.__r_.__value_.__l.__size_ = v33 + 2;
        }

        else
        {
          *(&v60.__r_.__value_.__s + 23) = v36 & 0x7F;
        }

        v34->__r_.__value_.__s.__data_[v36] = 0;
      }

      else
      {
        std::string::__grow_by_and_replace(&v60, v32, v33 - v32 + 2, v33, v33, 0, 2uLL, ":");
      }

      v37 = snprintf(__str, 0x20uLL, "%.16g", v5[7]);
      if (v37 < 0)
      {
        goto LABEL_148;
      }

      v38 = v37;
      if (v37 > 0x16)
      {
        operator new();
      }

      v59 = v37;
      if (__p <= __str && __p + v37 > __str)
      {
        goto LABEL_147;
      }

      if (v37)
      {
        memcpy(__p, __str, v37);
      }

      *(__p + v38) = 0;
      v39 = (v59 & 0x80u) == 0 ? __p : __p[0];
      v40 = (v59 & 0x80u) == 0 ? v59 : __p[1];
      if (!v39 && v40)
      {
        goto LABEL_147;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = 22;
      }

      else
      {
        v41 = (v60.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v42 = v60.__r_.__value_.__l.__size_;
      }

      if (v41 - v42 < v40)
      {
        std::string::__grow_by_and_replace(&v60, v41, v42 + v40 - v41, v42, v42, 0, v40, v39);
        if (v59 < 0)
        {
          goto LABEL_107;
        }

        goto LABEL_119;
      }

      if (!v40)
      {
        goto LABEL_118;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v60;
      }

      else
      {
        v44 = v60.__r_.__value_.__r.__words[0];
      }

      if ((v40 & 0x8000000000000000) != 0)
      {
        goto LABEL_147;
      }

      v45 = v44 + v42;
      if (v44 + v42 <= v39 && &v45[v40] > v39)
      {
        goto LABEL_147;
      }

      v46 = v40;
      memmove(v45, v39, v40);
      v47 = v42 + v46;
      if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *(&v60.__r_.__value_.__s + 23) = v47 & 0x7F;
        v44->__r_.__value_.__s.__data_[v47] = 0;
LABEL_118:
        if (v59 < 0)
        {
          goto LABEL_107;
        }

        goto LABEL_119;
      }

      v60.__r_.__value_.__l.__size_ = v42 + v46;
      v44->__r_.__value_.__s.__data_[v47] = 0;
      if (v59 < 0)
      {
LABEL_107:
        operator delete(__p[0]);
        v43 = v5[1];
        if (v43)
        {
          goto LABEL_120;
        }

        goto LABEL_122;
      }

LABEL_119:
      v43 = v5[1];
      if (v43)
      {
        do
        {
LABEL_120:
          v48 = v43;
          v43 = *v43;
        }

        while (v43);
        goto LABEL_8;
      }

      do
      {
LABEL_122:
        v48 = v5[2];
        v49 = *v48 == v5;
        v5 = v48;
      }

      while (!v49);
LABEL_8:
      v8 = ",";
      v5 = v48;
      if (v48 == v6)
      {
        LODWORD(v50) = HIBYTE(v60.__r_.__value_.__r.__words[2]);
        v51 = v60.__r_.__value_.__l.__size_;
        goto LABEL_129;
      }
    }
  }

  v51 = 0;
  LODWORD(v50) = 1;
LABEL_129:
  v52 = v50;
  v50 = v50;
  if ((v50 & 0x80u) == 0)
  {
    v53 = 22;
  }

  else
  {
    v53 = (v60.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v50 & 0x80u) != 0)
  {
    v50 = v51;
  }

  if (v53 == v50)
  {
    std::string::__grow_by_and_replace(&v60, v53, 1uLL, v53, v53, 0, 1uLL, "}");
    goto LABEL_146;
  }

  v54 = v60.__r_.__value_.__r.__words[0];
  if (v52 >= 0)
  {
    v54 = &v60;
  }

  if (v54 + v50 <= "}" && &v54->__r_.__value_.__l.__data_ + v50 + 1 > "}")
  {
LABEL_147:
    __break(1u);
LABEL_148:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v54->__r_.__value_.__s.__data_[v50] = 125;
  v56 = v50 + 1;
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    v60.__r_.__value_.__l.__size_ = v56;
  }

  else
  {
    *(&v60.__r_.__value_.__s + 23) = v56 & 0x7F;
  }

  v54->__r_.__value_.__s.__data_[v56] = 0;
LABEL_146:
  result = *&v60.__r_.__value_.__l.__data_;
  *a2 = v60;
  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::anonymous namespace::VisitToString> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> const&>@<D0>(uint64_t *a1@<X1>, std::string *a2@<X8>)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  memset(&v60, 0, sizeof(v60));
  if (&v60 <= "{" && &v60.__r_.__value_.__l.__data_ + 1 > "{")
  {
    goto LABEL_147;
  }

  v60.__r_.__value_.__s.__data_[0] = 123;
  *(&v60.__r_.__value_.__s + 23) = 1;
  if ((*(v3 + 24) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
  }

  v7 = *v3;
  v6 = (v3 + 8);
  v5 = v7;
  if (v7 != v6)
  {
    v8 = "";
    v9 = "";
    while (1)
    {
      v10 = v9;
      v11 = strlen(v8);
      v12 = v11;
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = 22;
      }

      else
      {
        v13 = (v60.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v60.__r_.__value_.__l.__size_;
      }

      if (v13 - size >= v11)
      {
        if (v11)
        {
          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v15 = &v60;
          }

          else
          {
            v15 = v60.__r_.__value_.__r.__words[0];
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_147;
          }

          if (v15 + size <= v8 && v15 + size + v11 > v8)
          {
            goto LABEL_147;
          }

          memcpy(v15 + size, v8, v11);
          v17 = size + v12;
          if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
          {
            v60.__r_.__value_.__l.__size_ = size + v12;
          }

          else
          {
            *(&v60.__r_.__value_.__s + 23) = v17 & 0x7F;
          }

          v15->__r_.__value_.__s.__data_[v17] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v60, v13, size + v11 - v13, size, size, 0, v11, v8);
      }

      v18 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = 22;
      }

      else
      {
        v19 = (v60.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v18 = v60.__r_.__value_.__l.__size_;
      }

      if (v19 == v18)
      {
        v9 = v10;
        std::string::__grow_by_and_replace(&v60, v19, 1uLL, v19, v19, 0, 1uLL, v10);
        v20 = *(v5 + 55);
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v23 = &v60;
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v23 = v60.__r_.__value_.__r.__words[0];
        }

        v24 = v23 + v18;
        v9 = v10;
        if (v23 + v18 <= v10 && v24 + 1 > v10)
        {
          goto LABEL_147;
        }

        *v24 = 34;
        v25 = v18 + 1;
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          v60.__r_.__value_.__l.__size_ = v25;
          v23->__r_.__value_.__s.__data_[v25] = 0;
          v20 = *(v5 + 55);
          if ((v20 & 0x8000000000000000) == 0)
          {
LABEL_37:
            v21 = (v5 + 4);
            v22 = v20 == 0;
            goto LABEL_46;
          }
        }

        else
        {
          *(&v60.__r_.__value_.__s + 23) = v25 & 0x7F;
          v23->__r_.__value_.__s.__data_[v25] = 0;
          v20 = *(v5 + 55);
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }
        }
      }

      v21 = v5[4];
      v20 = v5[5];
      v22 = v20 == 0;
      if (!v21 && v20)
      {
        goto LABEL_147;
      }

LABEL_46:
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = 22;
      }

      else
      {
        v26 = (v60.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v27 = v60.__r_.__value_.__l.__size_;
      }

      if (v26 - v27 >= v20)
      {
        if (!v22)
        {
          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = &v60;
          }

          else
          {
            v28 = v60.__r_.__value_.__r.__words[0];
          }

          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_147;
          }

          v29 = v28 + v27;
          if (v28 + v27 <= v21 && &v29[v20] > v21)
          {
            goto LABEL_147;
          }

          v30 = v20;
          memmove(v29, v21, v20);
          v31 = v27 + v30;
          if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
          {
            v60.__r_.__value_.__l.__size_ = v27 + v30;
          }

          else
          {
            *(&v60.__r_.__value_.__s + 23) = v31 & 0x7F;
          }

          v28->__r_.__value_.__s.__data_[v31] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v60, v26, v27 + v20 - v26, v27, v27, 0, v20, v21);
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = 22;
      }

      else
      {
        v32 = (v60.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v33 = v60.__r_.__value_.__l.__size_;
      }

      if (v32 - v33 >= 2)
      {
        v34 = &v60;
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v60.__r_.__value_.__r.__words[0];
        }

        v35 = (v34 + v33);
        if (v34 + v33 <= ":" && v35 + 1 > ":")
        {
          goto LABEL_147;
        }

        *v35 = 14882;
        v36 = v33 + 2;
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          v60.__r_.__value_.__l.__size_ = v33 + 2;
        }

        else
        {
          *(&v60.__r_.__value_.__s + 23) = v36 & 0x7F;
        }

        v34->__r_.__value_.__s.__data_[v36] = 0;
      }

      else
      {
        std::string::__grow_by_and_replace(&v60, v32, v33 - v32 + 2, v33, v33, 0, 2uLL, ":");
      }

      v37 = snprintf(__str, 0x20uLL, "%.16g", *(v5 + 7));
      if (v37 < 0)
      {
        goto LABEL_148;
      }

      v38 = v37;
      if (v37 > 0x16)
      {
        operator new();
      }

      v59 = v37;
      if (__p <= __str && __p + v37 > __str)
      {
        goto LABEL_147;
      }

      if (v37)
      {
        memcpy(__p, __str, v37);
      }

      *(__p + v38) = 0;
      v39 = (v59 & 0x80u) == 0 ? __p : __p[0];
      v40 = (v59 & 0x80u) == 0 ? v59 : __p[1];
      if (!v39 && v40)
      {
        goto LABEL_147;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = 22;
      }

      else
      {
        v41 = (v60.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v42 = v60.__r_.__value_.__l.__size_;
      }

      if (v41 - v42 < v40)
      {
        std::string::__grow_by_and_replace(&v60, v41, v42 + v40 - v41, v42, v42, 0, v40, v39);
        if (v59 < 0)
        {
          goto LABEL_107;
        }

        goto LABEL_119;
      }

      if (!v40)
      {
        goto LABEL_118;
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v60;
      }

      else
      {
        v44 = v60.__r_.__value_.__r.__words[0];
      }

      if ((v40 & 0x8000000000000000) != 0)
      {
        goto LABEL_147;
      }

      v45 = v44 + v42;
      if (v44 + v42 <= v39 && &v45[v40] > v39)
      {
        goto LABEL_147;
      }

      v46 = v40;
      memmove(v45, v39, v40);
      v47 = v42 + v46;
      if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *(&v60.__r_.__value_.__s + 23) = v47 & 0x7F;
        v44->__r_.__value_.__s.__data_[v47] = 0;
LABEL_118:
        if (v59 < 0)
        {
          goto LABEL_107;
        }

        goto LABEL_119;
      }

      v60.__r_.__value_.__l.__size_ = v42 + v46;
      v44->__r_.__value_.__s.__data_[v47] = 0;
      if (v59 < 0)
      {
LABEL_107:
        operator delete(__p[0]);
        v43 = v5[1];
        if (v43)
        {
          goto LABEL_120;
        }

        goto LABEL_122;
      }

LABEL_119:
      v43 = v5[1];
      if (v43)
      {
        do
        {
LABEL_120:
          v48 = v43;
          v43 = *v43;
        }

        while (v43);
        goto LABEL_8;
      }

      do
      {
LABEL_122:
        v48 = v5[2];
        v49 = *v48 == v5;
        v5 = v48;
      }

      while (!v49);
LABEL_8:
      v8 = ",";
      v5 = v48;
      if (v48 == v6)
      {
        LODWORD(v50) = HIBYTE(v60.__r_.__value_.__r.__words[2]);
        v51 = v60.__r_.__value_.__l.__size_;
        goto LABEL_129;
      }
    }
  }

  v51 = 0;
  LODWORD(v50) = 1;
LABEL_129:
  v52 = v50;
  v50 = v50;
  if ((v50 & 0x80u) == 0)
  {
    v53 = 22;
  }

  else
  {
    v53 = (v60.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v50 & 0x80u) != 0)
  {
    v50 = v51;
  }

  if (v53 == v50)
  {
    std::string::__grow_by_and_replace(&v60, v53, 1uLL, v53, v53, 0, 1uLL, "}");
    goto LABEL_146;
  }

  v54 = v60.__r_.__value_.__r.__words[0];
  if (v52 >= 0)
  {
    v54 = &v60;
  }

  if (v54 + v50 <= "}" && &v54->__r_.__value_.__l.__data_ + v50 + 1 > "}")
  {
LABEL_147:
    __break(1u);
LABEL_148:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v54->__r_.__value_.__s.__data_[v50] = 125;
  v56 = v50 + 1;
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    v60.__r_.__value_.__l.__size_ = v56;
  }

  else
  {
    *(&v60.__r_.__value_.__s + 23) = v56 & 0x7F;
  }

  v54->__r_.__value_.__s.__data_[v56] = 0;
LABEL_146:
  result = *&v60.__r_.__value_.__l.__data_;
  *a2 = v60;
  return result;
}

void *webrtc::AudioBuffer::AudioBuffer(webrtc::AudioBuffer *this, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *this = &unk_28828D328;
  *(this + 1) = a2 / 100;
  v8 = a4 / 100;
  *(this + 2) = a3;
  *(this + 3) = v8;
  *(this + 4) = a5;
  *(this + 5) = a6 / 100;
  *(this + 6) = 0;
  *(this + 7) = a5;
  v9 = 3;
  if ((a4 - 48000) >= 0x64)
  {
    v9 = 1;
  }

  v10 = 2;
  if ((a4 - 32000) >= 0x64)
  {
    v10 = v9;
  }

  *(this + 8) = v10;
  if (!(v8 % v10))
  {
    *(this + 9) = v8 / v10;
    operator new();
  }

  webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v8 % v10);
  return std::vector<std::unique_ptr<webrtc::PushSincResampler>>::push_back[abi:sn200100](v11, v12);
}

void *std::vector<std::unique_ptr<webrtc::PushSincResampler>>::push_back[abi:sn200100](void *result, uint64_t *a2)
{
  v3 = result[1];
  v2 = result[2];
  if (v3 >= v2)
  {
    v5 = v3 - *result;
    v6 = (v5 >> 3) + 1;
    if (v6 >> 61)
    {
      goto LABEL_13;
    }

    v7 = v2 - *result;
    v8 = v7 >> 2;
    if (v7 >> 2 <= v6)
    {
      v8 = (v5 >> 3) + 1;
    }

    v9 = v7 >= 0x7FFFFFFFFFFFFFF8;
    v10 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v9)
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *a2;
  *a2 = 0;
  *v3 = v4;
  result[1] = v3 + 1;
  return result;
}

void webrtc::AudioBuffer::~AudioBuffer(webrtc::AudioBuffer *this)
{
  *this = &unk_28828D328;
  v2 = *(this + 16);
  if (v2)
  {
    v3 = *(this + 17);
    v4 = *(this + 16);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 16);
    }

    *(this + 17) = v2;
    operator delete(v4);
  }

  v7 = *(this + 13);
  if (v7)
  {
    v8 = *(this + 14);
    v9 = *(this + 13);
    if (v8 != v7)
    {
      do
      {
        v11 = *--v8;
        v10 = v11;
        *v8 = 0;
        if (v11)
        {
          (*(*v10 + 8))(v10);
        }
      }

      while (v8 != v7);
      v9 = *(this + 13);
    }

    *(this + 14) = v7;
    operator delete(v9);
  }

  v12 = *(this + 12);
  *(this + 12) = 0;
  if (v12)
  {
    v13 = v12[4];
    if (v13)
    {
      v12[5] = v13;
      operator delete(v13);
    }

    v14 = v12[1];
    if (v14)
    {
      v12[2] = v14;
      operator delete(v14);
    }

    MEMORY[0x2743DA540](v12, 0x1020C401E2BB44DLL);
  }

  v15 = *(this + 11);
  *(this + 11) = 0;
  if (v15)
  {
    v16 = webrtc::ChannelBuffer<float>::~ChannelBuffer(v15);
    MEMORY[0x2743DA540](v16, 0x10A0C40650D7302);
  }

  v17 = *(this + 10);
  *(this + 10) = 0;
  if (v17)
  {
    v18 = webrtc::ChannelBuffer<float>::~ChannelBuffer(v17);
    MEMORY[0x2743DA540](v18, 0x10A0C40650D7302);
  }
}

{
  webrtc::AudioBuffer::~AudioBuffer(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::AudioBuffer::CopyFrom(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x28223BE20](a1, a2, a3);
  v8 = v4;
  v9 = result;
  v10 = *(result + 32);
  *(result + 56) = v10;
  v11 = *(result + 80);
  v12 = *(result + 88);
  *(v11 + 48) = v10;
  if (v12)
  {
    *(v12 + 48) = v10;
  }

  v13 = *(result + 16);
  v14 = v13 - 1;
  if (v13 <= 1)
  {
    v15 = *(result + 8);
    v16 = *(result + 24);
    goto LABEL_14;
  }

  v15 = *(result + 8);
  v16 = *(result + 24);
  if (v10 != 1)
  {
LABEL_14:
    if (v15 == v16)
    {
      if (v10 && v15)
      {
        v26 = 0;
        v27 = *(v11 + 8);
        __asm
        {
          FMOV            V3.4S, #1.0
          FMOV            V4.4S, #-1.0
        }

        v34.i64[0] = 0x4700000047000000;
        v34.i64[1] = 0x4700000047000000;
        do
        {
          v35 = 0;
          v36 = v4[v26];
          v37 = *(v27 + 8 * v26);
          if (v15 < 8)
          {
            goto LABEL_24;
          }

          if ((v37 - v36) < 0x20)
          {
            goto LABEL_24;
          }

          v38 = v36 + 1;
          v39 = v37 + 1;
          v40 = v15 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v41 = vbslq_s8(vcgtq_f32(v38[-1], _Q3), _Q3, v38[-1]);
            v42 = vbslq_s8(vcgtq_f32(*v38, _Q3), _Q3, *v38);
            v39[-1] = vmulq_f32(vbslq_s8(vcgtq_f32(_Q4, v41), _Q4, v41), v34);
            *v39 = vmulq_f32(vbslq_s8(vcgtq_f32(_Q4, v42), _Q4, v42), v34);
            v38 += 2;
            v39 += 2;
            v40 -= 8;
          }

          while (v40);
          v35 = v15 & 0xFFFFFFFFFFFFFFF8;
          if (v15 != (v15 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_24:
            v43 = v15 - v35;
            v44 = v35;
            v45 = &v37->f32[v44];
            v46 = &v36->f32[v44];
            do
            {
              v47 = *v46++;
              v48 = v47;
              if (v47 > 1.0)
              {
                v48 = 1.0;
              }

              if (v48 < -1.0)
              {
                v48 = -1.0;
              }

              *v45++ = v48 * 32768.0;
              --v43;
            }

            while (v43);
          }

          ++v26;
        }

        while (v26 != v10);
      }

      return result;
    }

    if (!v10)
    {
      return result;
    }

    v49 = 0;
    __asm
    {
      FMOV            V4.4S, #1.0
      FMOV            V5.4S, #-1.0
    }

    v80 = _Q5;
    v81 = _Q4;
    while (1)
    {
      v52 = v9[13];
      if (v49 >= (v9[14] - v52) >> 3)
      {
        goto LABEL_67;
      }

      result = webrtc::PushSincResampler::Resample(*(v52 + 8 * v49), v8[v49], v9[1], *(*(v11 + 8) + 8 * v49), v16, v5, v6, v7);
      v53.i64[0] = 0x4700000047000000;
      v53.i64[1] = 0x4700000047000000;
      v11 = v9[10];
      v16 = v9[3];
      if (v16)
      {
        v54 = *(*(v11 + 8) + 8 * v49);
        if (v16 < 8)
        {
          v55 = 0;
LABEL_41:
          v60 = v16 - v55;
          v61 = &v54->f32[v55];
          do
          {
            v62 = *v61;
            if (*v61 > 1.0)
            {
              v62 = 1.0;
            }

            if (v62 < -1.0)
            {
              v62 = -1.0;
            }

            *v61++ = v62 * 32768.0;
            --v60;
          }

          while (v60);
          goto LABEL_33;
        }

        v55 = v16 & 0xFFFFFFFFFFFFFFF8;
        v56 = v54 + 1;
        v57 = v16 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v58 = vbslq_s8(vcgtq_f32(v56[-1], v81), v81, v56[-1]);
          v59 = vbslq_s8(vcgtq_f32(*v56, v81), v81, *v56);
          v56[-1] = vmulq_f32(vbslq_s8(vcgtq_f32(v80, v58), v80, v58), v53);
          *v56 = vmulq_f32(vbslq_s8(vcgtq_f32(v80, v59), v80, v59), v53);
          v56 += 2;
          v57 -= 8;
        }

        while (v57);
        if (v16 != v55)
        {
          goto LABEL_41;
        }
      }

LABEL_33:
      if (++v49 >= v9[7])
      {
        return result;
      }
    }
  }

  if (*(result + 152) != 1)
  {
    v25 = v4[*(result + 160)];
LABEL_49:
    if (v15 != v16)
    {
      goto LABEL_53;
    }

LABEL_50:
    v63 = **(v11 + 8);
    if (!v15)
    {
      return result;
    }

    goto LABEL_55;
  }

  if (v15)
  {
    v17 = 0;
    v18 = 1.0 / v13;
    v20 = v4 + 1;
    v19 = *v4;
    while (1)
    {
      v21 = *(v19 + 4 * v17);
      v22 = v20;
      v23 = v14;
      do
      {
        v24 = *v22++;
        v21 = v21 + *(v24 + 4 * v17);
        --v23;
      }

      while (v23);
      if (v17 == 3840)
      {
        goto LABEL_67;
      }

      v25 = v82;
      v82[v17++] = v18 * v21;
      if (v17 == v15)
      {
        goto LABEL_49;
      }
    }
  }

  v25 = v82;
  if (!v16)
  {
    goto LABEL_50;
  }

LABEL_53:
  v64 = *(result + 104);
  if (*(result + 112) == v64)
  {
LABEL_67:
    __break(1u);
    return result;
  }

  result = webrtc::PushSincResampler::Resample(*v64, v25, v15, **(v11 + 8), v16, v5, v6, v7);
  v63 = **(v9[10] + 8);
  v15 = v9[3];
  v25 = v63;
  if (v15)
  {
LABEL_55:
    v65 = 0;
    if (v15 < 8)
    {
      goto LABEL_60;
    }

    if ((v63 - v25) < 0x20)
    {
      goto LABEL_60;
    }

    v65 = v15 & 0xFFFFFFFFFFFFFFF8;
    v66 = (v25 + 4);
    v67 = v63 + 1;
    __asm
    {
      FMOV            V0.4S, #1.0
      FMOV            V1.4S, #-1.0
    }

    v70.i64[0] = 0x4700000047000000;
    v70.i64[1] = 0x4700000047000000;
    v71 = v15 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v72 = vbslq_s8(vcgtq_f32(v66[-1], _Q0), _Q0, v66[-1]);
      v73 = vbslq_s8(vcgtq_f32(*v66, _Q0), _Q0, *v66);
      v67[-1] = vmulq_f32(vbslq_s8(vcgtq_f32(_Q1, v72), _Q1, v72), v70);
      *v67 = vmulq_f32(vbslq_s8(vcgtq_f32(_Q1, v73), _Q1, v73), v70);
      v66 += 2;
      v67 += 2;
      v71 -= 8;
    }

    while (v71);
    if (v15 != v65)
    {
LABEL_60:
      v74 = v15 - v65;
      v75 = v65;
      v76 = &v63->f32[v75];
      v77 = &v25[v75];
      do
      {
        v78 = *v77++;
        v79 = v78;
        if (v78 > 1.0)
        {
          v79 = 1.0;
        }

        if (v79 < -1.0)
        {
          v79 = -1.0;
        }

        *v76++ = v79 * 32768.0;
        --v74;
      }

      while (v74);
    }
  }

  return result;
}

void *webrtc::AudioBuffer::CopyTo(void *result, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = result;
  v11 = result[5];
  v12 = result[7];
  if (v11 == result[3])
  {
    if (v12 && v11)
    {
      v13 = 0;
      v14 = *(result[10] + 8);
      v15.i64[0] = 0x4700000047000000;
      v15.i64[1] = 0x4700000047000000;
      v16.i64[0] = 0xC7000000C7000000;
      v16.i64[1] = 0xC7000000C7000000;
      v17.i64[0] = 0x3800000038000000;
      v17.i64[1] = 0x3800000038000000;
      do
      {
        v18 = 0;
        v19 = *(v14 + 8 * v13);
        v20 = a3[v13];
        if (v11 < 8)
        {
          goto LABEL_11;
        }

        if ((v20 - v19) < 0x20)
        {
          goto LABEL_11;
        }

        v21 = v19 + 1;
        v22 = v20 + 1;
        v23 = v11 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v24 = vbslq_s8(vcgtq_f32(v21[-1], v15), v15, v21[-1]);
          v25 = vbslq_s8(vcgtq_f32(*v21, v15), v15, *v21);
          v22[-1] = vmulq_f32(vbslq_s8(vcgtq_f32(v16, v24), v16, v24), v17);
          *v22 = vmulq_f32(vbslq_s8(vcgtq_f32(v16, v25), v16, v25), v17);
          v21 += 2;
          v22 += 2;
          v23 -= 8;
        }

        while (v23);
        v18 = v11 & 0xFFFFFFFFFFFFFFF8;
        if (v11 != (v11 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_11:
          v26 = v11 - v18;
          v27 = v18;
          v28 = &v20->f32[v27];
          v29 = &v19->f32[v27];
          do
          {
            v30 = *v29++;
            v31 = v30;
            if (v30 > 32768.0)
            {
              v31 = 32768.0;
            }

            if (v31 < -32768.0)
            {
              v31 = -32768.0;
            }

            *v28++ = v31 * 0.000030518;
            --v26;
          }

          while (v26);
        }

        ++v13;
      }

      while (v13 != v12);
    }

    goto LABEL_36;
  }

  if (v12)
  {
    v32 = 0;
    v33.i64[0] = 0x4700000047000000;
    v33.i64[1] = 0x4700000047000000;
    v34.i64[0] = 0xC7000000C7000000;
    v34.i64[1] = 0xC7000000C7000000;
    v35.i64[0] = 0x3800000038000000;
    v35.i64[1] = 0x3800000038000000;
    do
    {
      v36 = *(*(v10[10] + 8) + 8 * v32);
      v37 = v10[3];
      if (!v37)
      {
        goto LABEL_32;
      }

      if (v37 >= 8)
      {
        v38 = v37 & 0xFFFFFFFFFFFFFFF8;
        v39 = (v36 + 4);
        v40 = v37 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v41 = vbslq_s8(vcgtq_f32(v39[-1], v33), v33, v39[-1]);
          v42 = vbslq_s8(vcgtq_f32(*v39, v33), v33, *v39);
          v39[-1] = vmulq_f32(vbslq_s8(vcgtq_f32(v34, v41), v34, v41), v35);
          *v39 = vmulq_f32(vbslq_s8(vcgtq_f32(v34, v42), v34, v42), v35);
          v39 += 2;
          v40 -= 8;
        }

        while (v40);
        if (v37 == v38)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v38 = 0;
      }

      v43 = v37 - v38;
      v44 = &v36[v38];
      do
      {
        v45 = *v44;
        if (*v44 > 32768.0)
        {
          v45 = 32768.0;
        }

        if (v45 < -32768.0)
        {
          v45 = -32768.0;
        }

        *v44++ = v45 * 0.000030518;
        --v43;
      }

      while (v43);
LABEL_32:
      v46 = v10[16];
      if (v32 >= (v10[17] - v46) >> 3)
      {
        __break(1u);
        return result;
      }

      result = webrtc::PushSincResampler::Resample(*(v46 + 8 * v32), v36, v37, a3[v32], v10[5], a6, a7, a8);
      v35.i64[0] = 0x3800000038000000;
      v35.i64[1] = 0x3800000038000000;
      v34.i64[0] = 0xC7000000C7000000;
      v34.i64[1] = 0xC7000000C7000000;
      v33.i64[0] = 0x4700000047000000;
      v33.i64[1] = 0x4700000047000000;
      ++v32;
      v12 = v10[7];
    }

    while (v32 < v12);
  }

LABEL_36:
  while (v12 < *(a2 + 8))
  {
    result = memcpy(a3[v12++], *a3, 4 * v10[5]);
  }

  return result;
}

uint64_t *webrtc::AudioBuffer::CopyTo(uint64_t *this, webrtc::AudioBuffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = this;
  v10 = this[7];
  if (this[5] == this[3])
  {
    if (v10)
    {
      v11 = 0;
      do
      {
        this = memcpy(*(*(*(a2 + 10) + 8) + 8 * v11), *(*(v9[10] + 8) + 8 * v11), 4 * v9[3]);
        ++v11;
        v12 = v9[7];
      }

      while (v11 < v12);
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_14;
  }

  if (!v10)
  {
    v12 = 0;
LABEL_14:
    while (v12 < *(a2 + 7))
    {
      this = memcpy(*(*(*(a2 + 10) + 8) + 8 * v12++), **(*(a2 + 10) + 8), 4 * v9[5]);
    }

    return this;
  }

  v13 = 0;
  while (1)
  {
    v14 = v9[16];
    if (v13 >= (v9[17] - v14) >> 3)
    {
      break;
    }

    this = webrtc::PushSincResampler::Resample(*(v14 + 8 * v13), *(*(v9[10] + 8) + 8 * v13), v9[3], *(*(*(a2 + 10) + 8) + 8 * v13), *(a2 + 3), a6, a7, a8);
    ++v13;
    v12 = v9[7];
    if (v13 >= v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return this;
}

void webrtc::AudioBuffer::CopyFrom(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v9 = v4;
  v10 = v3;
  v11 = *(v3 + 32);
  *(v3 + 56) = v11;
  v12 = *(v3 + 80);
  *(v12 + 48) = v11;
  v13 = *(v3 + 88);
  if (v13)
  {
    *(v13 + 48) = v11;
  }

  v14 = *(v3 + 8);
  v15 = *(v3 + 24);
  if (v11 != 1)
  {
    if (v14 == v15)
    {
      if (v11 && v14)
      {
        v19 = 0;
        v20 = *(v12 + 8);
        do
        {
          v21 = *(v20 + 8 * v19);
          v22 = v14;
          v23 = v9;
          do
          {
            v8.i16[0] = *v23;
            v8.i64[0] = vmovl_s16(*v8.f32).u64[0];
            v8.f32[0] = v8.i32[0];
            *v21++ = v8.i32[0];
            v23 += v11;
            --v22;
          }

          while (v22);
          ++v19;
          v9 = (v9 + 2);
        }

        while (v19 != v11);
      }

      return;
    }

    if (!v11)
    {
      return;
    }

    v29 = 0;
    v30 = v4 + 2;
    for (i = v4; ; i = (i + 2))
    {
      v32 = v10[1];
      if (v32)
      {
        break;
      }

LABEL_44:
      v51 = v10[13];
      if (v29 >= (v10[14] - v51) >> 3)
      {
        goto LABEL_103;
      }

      webrtc::PushSincResampler::Resample(*(v51 + 8 * v29), v110, v32, *(*(v10[10] + 8) + 8 * v29), v10[3], v5, v6, v7);
      ++v29;
      v11 = v10[7];
      v30 = (v30 + 2);
      if (v29 >= v11)
      {
        return;
      }
    }

    if (v32 < 4 || v11 != 1)
    {
      v34 = 0;
      v35 = v29;
      goto LABEL_42;
    }

    if (v32 >= 0x10)
    {
      v34 = v32 & 0xFFFFFFFFFFFFFFF0;
      v36 = v32 & 0xFFFFFFFFFFFFFFF0;
      v37 = v111;
      v38 = v30;
      do
      {
        v39 = *v38[-2].i8;
        v40 = vcvtq_f32_s32(vmovl_s16(*v38));
        v41 = vmovl_high_s16(*v38->i8);
        v37[-2] = vcvtq_f32_s32(vmovl_s16(*v39.i8));
        v37[-1] = vcvtq_f32_s32(vmovl_high_s16(v39));
        v8 = vcvtq_f32_s32(v41);
        *v37 = v40;
        v37[1] = v8;
        v37 += 4;
        v38 += 4;
        v36 -= 16;
      }

      while (v36);
      if (v32 == v34)
      {
        goto LABEL_44;
      }

      if ((v32 & 0xC) == 0)
      {
        v35 = v29 + v34 * v11;
LABEL_42:
        v47 = v9 + v35;
        v48 = 2 * v11;
        v49 = v32 - v34;
        v50 = &v110[v34];
        do
        {
          v8.i16[0] = *v47;
          v8.i64[0] = vmovl_s16(*v8.f32).u64[0];
          v8.f32[0] = v8.i32[0];
          *v50++ = v8.f32[0];
          v47 = (v47 + v48);
          --v49;
        }

        while (v49);
        goto LABEL_44;
      }
    }

    else
    {
      v34 = 0;
    }

    v42 = v34;
    v34 = v32 & 0xFFFFFFFFFFFFFFFCLL;
    v35 = v29 + (v32 & 0xFFFFFFFFFFFFFFFCLL) * v11;
    v43 = (i + 2 * v42);
    v44 = &v110[v42];
    v45 = v42 - (v32 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v46 = *v43++;
      v8 = vcvtq_f32_s32(vmovl_s16(v46));
      *v44 = v8;
      v44 += 4;
      v45 += 4;
    }

    while (v45);
    if (v32 == v34)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  v16 = *(v3 + 16);
  if (v16 != 1)
  {
    if (v14 == v15)
    {
      v24 = **(v12 + 8);
      if (*(v3 + 152) != 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v24 = v110;
      if (*(v3 + 152) != 1)
      {
LABEL_19:
        if (v14)
        {
          v25 = v9 + *(v3 + 160);
          v26 = 2 * v16;
          v27 = v24;
          v28 = *(v3 + 8);
          do
          {
            v8.i16[0] = *v25;
            v8.i64[0] = vmovl_s16(*v8.f32).u64[0];
            v8.f32[0] = v8.i32[0];
            *v27++ = v8.f32[0];
            v25 = (v25 + v26);
            --v28;
          }

          while (v28);
        }

LABEL_77:
        if (v14 == v15)
        {
          return;
        }

        v76 = v10[13];
        if (v10[14] != v76)
        {
          v77 = *v76;
          v78 = **(v12 + 8);
LABEL_101:
          webrtc::PushSincResampler::Resample(v77, v24, v14, v78, v15, v5, v6, v7);
          return;
        }

LABEL_103:
        __break(1u);
        return;
      }
    }

    if (!v14)
    {
      goto LABEL_77;
    }

    if (!v16)
    {
      v73 = v24;
      v74 = *(v3 + 8);
      v75 = *(v3 + 24);
      bzero(v24, 4 * v14);
      v24 = v73;
      v15 = v75;
      v14 = v74;
      goto LABEL_77;
    }

    v53 = 0;
    v54 = 0;
    v55 = v16 & 0xFFFFFFFFFFFFFFF0;
    v56 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v57 = &v9[2];
    v58 = 2 * v16;
    v59 = v9;
    while (1)
    {
      if (v16 >= 4)
      {
        if (v16 < 0x10)
        {
          v60 = 0;
          v61 = 0;
LABEL_64:
          v5 = v53 + v56;
          v68 = v60;
          v69 = (v59 + 2 * v61);
          v70 = v61 - (v16 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v71 = *v69++;
            v68 = vaddw_s16(v68, v71);
            v70 += 4;
          }

          while (v70);
          v60 = vaddvq_s32(v68);
          v6 = v16 & 0xFFFFFFFFFFFFFFFCLL;
          if (v16 == v56)
          {
            goto LABEL_54;
          }

          goto LABEL_69;
        }

        v62 = 0uLL;
        v63 = v16 & 0xFFFFFFFFFFFFFFF0;
        v5 = v57;
        v64 = 0uLL;
        v65 = 0uLL;
        v66 = 0uLL;
        do
        {
          v67 = *(v5 - 16);
          v64 = vaddw_high_s16(v64, v67);
          v62 = vaddw_s16(v62, *v67.i8);
          v66 = vaddw_high_s16(v66, *v5);
          v65 = vaddw_s16(v65, *v5);
          v5 += 32;
          v63 -= 16;
        }

        while (v63);
        v60 = vaddvq_s32(vaddq_s32(vaddq_s32(v65, v62), vaddq_s32(v66, v64)));
        if (v16 == v55)
        {
          goto LABEL_54;
        }

        if ((v16 & 0xC) != 0)
        {
          v61 = v16 & 0xFFFFFFFFFFFFFFF0;
          goto LABEL_64;
        }

        v5 = v53 + v55;
        v6 = v16 & 0xFFFFFFFFFFFFFFF0;
      }

      else
      {
        v6 = 0;
        v60 = 0;
        v5 = v53;
      }

LABEL_69:
      v6 = v16 - v6;
      v5 = v9 + 2 * v5;
      do
      {
        v72 = *v5;
        v5 += 2;
        v7 = v72;
        v60 += v72;
        --v6;
      }

      while (v6);
LABEL_54:
      v53 += v16;
      v24[v54++] = (v60 / v16);
      v57 += v58;
      v59 = (v59 + v58);
      if (v54 == v14)
      {
        goto LABEL_77;
      }
    }
  }

  if (v14 != v15)
  {
    if (!v14)
    {
      goto LABEL_99;
    }

    if (v14 < 4)
    {
      v52 = 0;
      goto LABEL_97;
    }

    if (v14 >= 0x10)
    {
      v52 = v14 & 0xFFFFFFFFFFFFFFF0;
      v94 = v4 + 2;
      v95 = v111;
      v96 = v14 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v97 = *v94[-2].i8;
        v98 = vcvtq_f32_s32(vmovl_s16(*v94));
        v99 = vmovl_high_s16(*v94->i8);
        v95[-2] = vcvtq_f32_s32(vmovl_s16(*v97.i8));
        v95[-1] = vcvtq_f32_s32(vmovl_high_s16(v97));
        *v95 = v98;
        v95[1] = vcvtq_f32_s32(v99);
        v95 += 4;
        v94 += 4;
        v96 -= 16;
      }

      while (v96);
      if (v14 == v52)
      {
        goto LABEL_99;
      }

      if ((v14 & 0xC) == 0)
      {
LABEL_97:
        v105 = v14 - v52;
        v106 = &v110[v52];
        v107 = v4 + v52;
        do
        {
          v108 = *v107++;
          *v106++ = v108;
          --v105;
        }

        while (v105);
        goto LABEL_99;
      }
    }

    else
    {
      v52 = 0;
    }

    v100 = v52;
    v52 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v101 = (v4 + 2 * v100);
    v102 = &v110[v100];
    v103 = v100 - (v14 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v104 = *v101++;
      *v102++ = vcvtq_f32_s32(vmovl_s16(v104));
      v103 += 4;
    }

    while (v103);
    if (v14 != v52)
    {
      goto LABEL_97;
    }

LABEL_99:
    v109 = *(v3 + 104);
    if (*(v3 + 112) != v109)
    {
      v77 = *v109;
      v78 = **(v12 + 8);
      v24 = v110;
      goto LABEL_101;
    }

    goto LABEL_103;
  }

  if (!v14)
  {
    return;
  }

  v17 = **(v12 + 8);
  if (v14 < 4)
  {
    v18 = 0;
    goto LABEL_87;
  }

  if (v14 >= 0x10)
  {
    v18 = v14 & 0xFFFFFFFFFFFFFFF0;
    v79 = v4 + 2;
    v80 = v17 + 2;
    v81 = v14 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v82 = *v79[-2].i8;
      v83 = vcvtq_f32_s32(vmovl_s16(*v79));
      v84 = vmovl_high_s16(*v79->i8);
      v80[-2] = vcvtq_f32_s32(vmovl_s16(*v82.i8));
      v80[-1] = vcvtq_f32_s32(vmovl_high_s16(v82));
      *v80 = v83;
      v80[1] = vcvtq_f32_s32(v84);
      v80 += 4;
      v79 += 4;
      v81 -= 16;
    }

    while (v81);
    if (v14 == v18)
    {
      return;
    }

    if ((v14 & 0xC) == 0)
    {
LABEL_87:
      v90 = v14 - v18;
      v91 = &v17->f32[v18];
      v92 = v4 + v18;
      do
      {
        v93 = *v92++;
        *v91++ = v93;
        --v90;
      }

      while (v90);
      return;
    }
  }

  else
  {
    v18 = 0;
  }

  v85 = v18;
  v18 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v86 = (v4 + 2 * v85);
  v87 = (v17 + 4 * v85);
  v88 = v85 - (v14 & 0xFFFFFFFFFFFFFFFCLL);
  do
  {
    v89 = *v86++;
    *v87++ = vcvtq_f32_s32(vmovl_s16(v89));
    v88 += 4;
  }

  while (v88);
  if (v14 != v18)
  {
    goto LABEL_87;
  }
}

uint64_t webrtc::AudioBuffer::CopyTo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x28223BE20](a1, a2, a3);
  v12 = v11;
  v13 = result;
  v15 = *(v14 + 8);
  v16 = *(result + 24);
  v17 = *(result + 40);
  v18 = *(result + 56);
  if (v18 != 1)
  {
    if (v16 == v17)
    {
      if (v18)
      {
        if (!v16)
        {
          return result;
        }

        v21 = 0;
        v22 = *(*(result + 80) + 8);
        v24 = v16 > 7 && v15 == 1;
        v25 = vdupq_n_s32(0x46FFFE00u);
        v26.i64[0] = 0xC7000000C7000000;
        v26.i64[1] = 0xC7000000C7000000;
        v27.i64[0] = 0x3F0000003F000000;
        v27.i64[1] = 0x3F0000003F000000;
        v28.i64[0] = 0x8000000080000000;
        v28.i64[1] = 0x8000000080000000;
        v9.i32[0] = 0.5;
        v29 = v12;
        while (1)
        {
          v30 = *(v22 + 8 * v21);
          if (!v24)
          {
            break;
          }

          result = v21 + (v16 & 0xFFFFFFFFFFFFFFF8) * v15;
          v31 = v16 & 0xFFFFFFFFFFFFFFF8;
          v32 = *(v22 + 8 * v21);
          v33 = v29;
          do
          {
            v34 = *v32;
            v35 = v32[1];
            v32 += 2;
            v36 = vbslq_s8(vcgtq_f32(v34, v25), v25, v34);
            v37 = vbslq_s8(vcgtq_f32(v35, v25), v25, v35);
            v38 = vbslq_s8(vcgtq_f32(v26, v36), v26, v36);
            v39 = vbslq_s8(vcgtq_f32(v26, v37), v26, v37);
            v10 = vuzp1q_s16(vcvtq_s32_f32(vaddq_f32(v38, vbslq_s8(v28, v27, v38))), vcvtq_s32_f32(vaddq_f32(v39, vbslq_s8(v28, v27, v39))));
            *v33++ = v10;
            v31 -= 8;
          }

          while (v31);
          v40 = v16 & 0xFFFFFFFFFFFFFFF8;
          if (v16 != (v16 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_24;
          }

LABEL_17:
          ++v21;
          v29 = (v29 + 2);
          if (v21 == v18)
          {
            goto LABEL_76;
          }
        }

        v40 = 0;
        result = v21;
LABEL_24:
        result = v12 + 2 * result;
        v41 = v16 - v40;
        v42 = (v30 + 4 * v40);
        do
        {
          v43 = *v42++;
          *v10.i32 = v43;
          if (v43 > 32767.0)
          {
            *v10.i32 = 32767.0;
          }

          if (*v10.i32 < -32768.0)
          {
            *v10.i32 = -32768.0;
          }

          *result = (*v10.i32 + *vbslq_s8(v28, v9, v10).i32);
          result += 2 * v15;
          --v41;
        }

        while (v41);
        goto LABEL_17;
      }

LABEL_76:
      v17 = v16;
      goto LABEL_77;
    }

    if (!v18)
    {
LABEL_77:
      if (v18 >= v15 || v17 == 0)
      {
        return result;
      }

      v87 = 0;
      v88 = 0;
      v90 = v17 < 4 || v15 != 1;
      v91 = (v17 & 0xFFFFFFFFFFFFFFF0) * v15;
      v92 = (v17 & 0xFFFFFFFFFFFFFFFCLL) * v15;
      result = v18 + v92;
      v93 = v12 + 2 * v18;
      v94 = v93 + 16;
      v95 = v18;
      while (1)
      {
        v96 = (v88 & 0x7FFFFFFFFFFFFFF0) == 0 || v90;
        if (v96)
        {
          v97 = 0;
          v98 = v18;
          v99 = v95;
        }

        else
        {
          if (v17 < 0x10)
          {
            v100 = 0;
LABEL_100:
            v99 = v95 + v92;
            v105 = &v93[2 * v100];
            v106 = v100 - (v17 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *&v105[v87] = *v105;
              v105 += 8;
              v106 += 4;
            }

            while (v106);
            v98 = v18 + v92;
            v97 = v17 & 0xFFFFFFFFFFFFFFFCLL;
            if (v17 == (v17 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_88;
            }

            goto LABEL_105;
          }

          v101 = v17 & 0xFFFFFFFFFFFFFFF0;
          v102 = (v93 + 16);
          v103 = v94;
          do
          {
            v104 = *v102;
            *(v103 - 1) = *(v102 - 1);
            *v103 = v104;
            v103 += 2;
            v102 += 2;
            v101 -= 16;
          }

          while (v101);
          if (v17 == (v17 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_88;
          }

          v100 = v17 & 0xFFFFFFFFFFFFFFF0;
          if ((v17 & 0xC) != 0)
          {
            goto LABEL_100;
          }

          v99 = v95 + v91;
          v98 = v18 + v91;
          v97 = v17 & 0xFFFFFFFFFFFFFFF0;
        }

LABEL_105:
        v107 = v17 - v97;
        v108 = v12;
        do
        {
          *(v108 + v99) = *(v108 + v98);
          v108 = (v108 + 2 * v15);
          --v107;
        }

        while (v107);
LABEL_88:
        ++v95;
        ++v88;
        v94 = (v94 + 2);
        v87 += 2;
        if (v95 == v15)
        {
          return result;
        }
      }
    }

    v62 = 0;
    v63 = v12;
    v126 = vdupq_n_s32(0x46FFFE00u);
    while (1)
    {
      v64 = v13[16];
      if (v62 >= (v13[17] - v64) >> 3)
      {
        goto LABEL_118;
      }

      result = webrtc::PushSincResampler::Resample(*(v64 + 8 * v62), *(*(v13[10] + 8) + 8 * v62), v13[3], v127, v17, v4, v5, v6);
      v66.i64[0] = 0x3F0000003F000000;
      v66.i64[1] = 0x3F0000003F000000;
      v67.i64[0] = 0xC7000000C7000000;
      v67.i64[1] = 0xC7000000C7000000;
      v68.i64[0] = 0x8000000080000000;
      v68.i64[1] = 0x8000000080000000;
      v69.i32[0] = 0.5;
      v17 = v13[5];
      if (v17)
      {
        if (v17 < 8 || v15 != 1)
        {
          v71 = 0;
          v72 = v62;
LABEL_69:
          v82 = v12 + v72;
          v83 = v17 - v71;
          v84 = &v127[v71];
          do
          {
            v85 = *v84++;
            *v65.i32 = v85;
            if (v85 > 32767.0)
            {
              *v65.i32 = 32767.0;
            }

            if (*v65.i32 < -32768.0)
            {
              *v65.i32 = -32768.0;
            }

            *v82 = (*v65.i32 + *vbslq_s8(v68, v69, v65).i32);
            v82 += v15;
            --v83;
          }

          while (v83);
          goto LABEL_58;
        }

        v71 = v17 & 0xFFFFFFFFFFFFFFF8;
        v72 = v62 + (v17 & 0xFFFFFFFFFFFFFFF8) * v15;
        v73 = v127;
        v74 = v17 & 0xFFFFFFFFFFFFFFF8;
        v75 = v63;
        do
        {
          v76 = *v73;
          v77 = *(v73 + 4);
          v73 += 8;
          v78 = vbslq_s8(vcgtq_f32(v76, v126), v126, v76);
          v79 = vbslq_s8(vcgtq_f32(v77, v126), v126, v77);
          v80 = vbslq_s8(vcgtq_f32(v67, v78), v67, v78);
          v81 = vbslq_s8(vcgtq_f32(v67, v79), v67, v79);
          v65 = vuzp1q_s16(vcvtq_s32_f32(vaddq_f32(v80, vbslq_s8(v68, v66, v80))), vcvtq_s32_f32(vaddq_f32(v81, vbslq_s8(v68, v66, v81))));
          *v75++ = v65;
          v74 -= 8;
        }

        while (v74);
        if (v17 != v71)
        {
          goto LABEL_69;
        }
      }

LABEL_58:
      ++v62;
      v18 = v13[7];
      v63 = (v63 + 2);
      if (v62 >= v18)
      {
        goto LABEL_77;
      }
    }
  }

  if (v16 != v17)
  {
    v44 = *(result + 128);
    if (*(result + 136) == v44)
    {
LABEL_118:
      __break(1u);
      return result;
    }

    v19 = v127;
    result = webrtc::PushSincResampler::Resample(*v44, **(*(result + 80) + 8), v16, v127, v17, v4, v5, v6);
    v16 = v13[5];
    if (v15 == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_33;
  }

  v19 = **(*(result + 80) + 8);
  if (v15 != 1)
  {
LABEL_33:
    if (!v16 || !v15)
    {
      return result;
    }

    v45 = 0;
    v46 = 0;
    v47 = v15 & 0xFFFFFFFFFFFFFFF0;
    v48 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v49 = (v12 + 1);
    v50 = 2 * v15;
    v7.i32[0] = 0.5;
    v51.i64[0] = 0x8000000080000000;
    v51.i64[1] = 0x8000000080000000;
    v52 = v15;
    v53 = v12;
    while (1)
    {
      *v8.i32 = v19[v46];
      if (*v8.i32 > 32767.0)
      {
        *v8.i32 = 32767.0;
      }

      if (*v8.i32 < -32768.0)
      {
        *v8.i32 = -32768.0;
      }

      result = (*v8.i32 + *vbslq_s8(v51, v7, v8).i32);
      v54 = v45;
      if (v15 >= 4)
      {
        if (v15 < 0x10)
        {
          v55 = 0;
LABEL_48:
          v54 = v45 + v48;
          *v8.i8 = vdup_n_s16(result);
          v58 = (v53 + 2 * v55);
          v59 = v55 - (v15 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            *v58++ = v8.i64[0];
            v59 += 4;
          }

          while (v59);
          if (v15 == v48)
          {
            goto LABEL_36;
          }

          goto LABEL_53;
        }

        v8 = vdupq_n_s16(result);
        v56 = v15 & 0xFFFFFFFFFFFFFFF0;
        v57 = v49;
        do
        {
          v57[-1] = v8;
          *v57 = v8;
          v57 += 2;
          v56 -= 16;
        }

        while (v56);
        if (v15 == v47)
        {
          goto LABEL_36;
        }

        v55 = v15 & 0xFFFFFFFFFFFFFFF0;
        if ((v15 & 0xC) != 0)
        {
          goto LABEL_48;
        }

        v54 = v45 + v47;
      }

LABEL_53:
      v60 = v52 - v54;
      v61 = v12 + v54;
      do
      {
        *v61++ = result;
        --v60;
      }

      while (v60);
LABEL_36:
      v45 += v15;
      ++v46;
      v49 = (v49 + v50);
      v53 = (v53 + v50);
      v52 += v15;
      if (v46 == v16)
      {
        return result;
      }
    }
  }

LABEL_4:
  if (!v16)
  {
    return result;
  }

  if (v16 >= 8)
  {
    v20 = v16 & 0xFFFFFFFFFFFFFFF8;
    v109 = vdupq_n_s32(0x46FFFE00u);
    v110.i64[0] = 0xC7000000C7000000;
    v110.i64[1] = 0xC7000000C7000000;
    v7.i64[0] = 0x3F0000003F000000;
    v7.i64[1] = 0x3F0000003F000000;
    v111.i64[0] = 0x8000000080000000;
    v111.i64[1] = 0x8000000080000000;
    v112 = v16 & 0xFFFFFFFFFFFFFFF8;
    v113 = v12;
    v114 = v19;
    do
    {
      v115 = *v114;
      v116 = v114[1];
      v114 += 2;
      v117 = vbslq_s8(vcgtq_f32(v115, v109), v109, v115);
      v118 = vbslq_s8(vcgtq_f32(v116, v109), v109, v116);
      v119 = vbslq_s8(vcgtq_f32(v110, v117), v110, v117);
      v120 = vbslq_s8(vcgtq_f32(v110, v118), v110, v118);
      v8 = vuzp1q_s16(vcvtq_s32_f32(vaddq_f32(v119, vbslq_s8(v111, v7, v119))), vcvtq_s32_f32(vaddq_f32(v120, vbslq_s8(v111, v7, v120))));
      *v113++ = v8;
      v112 -= 8;
    }

    while (v112);
    if (v16 == v20)
    {
      return result;
    }
  }

  else
  {
    v20 = 0;
  }

  v121 = v16 - v20;
  v122 = v12 + v20;
  v123 = &v19[v20];
  v7.i32[0] = 0.5;
  v124.i64[0] = 0x8000000080000000;
  v124.i64[1] = 0x8000000080000000;
  do
  {
    v125 = *v123++;
    *v8.i32 = v125;
    if (v125 > 32767.0)
    {
      *v8.i32 = 32767.0;
    }

    if (*v8.i32 < -32768.0)
    {
      *v8.i32 = -32768.0;
    }

    *v122++ = (*v8.i32 + *vbslq_s8(v124, v7, v8).i32);
    --v121;
  }

  while (v121);
  return result;
}

float32x4_t *webrtc::AudioBuffer::ExportSplitChannelData(float32x4_t *this, uint64_t a2, __int16 *const *a3, double a4, int8x16_t a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  v10 = this[4].i64[0];
  if (v10)
  {
    v11 = this[4].u64[1];
    if (v11)
    {
      v12 = this[5].i64[1];
      if (v12)
      {
        v13 = 0;
        v14 = *(v12 + 16) + 8 * *(v12 + 56) * a2;
        a5.i32[0] = 0.5;
        v15.i64[0] = 0x8000000080000000;
        v15.i64[1] = 0x8000000080000000;
        v16 = vdupq_n_s32(0x46FFFE00u);
        v17.i64[0] = 0xC7000000C7000000;
        v17.i64[1] = 0xC7000000C7000000;
        v18.i64[0] = 0x3F0000003F000000;
        v18.i64[1] = 0x3F0000003F000000;
        while (1)
        {
          v19 = *(v14 + 8 * v13);
          v20 = a3[v13];
          if (v11 < 8)
          {
            break;
          }

          v22 = v11 & 0xFFFFFFFFFFFFFFF8;
          v23 = a3[v13];
          this = *(v14 + 8 * v13);
          do
          {
            v24 = *this;
            v25 = this[1];
            this += 2;
            v26 = vbslq_s8(vcgtq_f32(v24, v16), v16, v24);
            v27 = vbslq_s8(vcgtq_f32(v25, v16), v16, v25);
            v28 = vbslq_s8(vcgtq_f32(v17, v26), v17, v26);
            v29 = vbslq_s8(vcgtq_f32(v17, v27), v17, v27);
            a10 = vuzp1q_s16(vcvtq_s32_f32(vaddq_f32(v28, vbslq_s8(v15, v18, v28))), vcvtq_s32_f32(vaddq_f32(v29, vbslq_s8(v15, v18, v29))));
            *v23++ = a10;
            v22 -= 8;
          }

          while (v22);
          v21 = v11 & 0xFFFFFFFFFFFFFFF8;
          if (v11 != (v11 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_11;
          }

LABEL_5:
          if (++v13 == v10)
          {
            return this;
          }
        }

        v21 = 0;
LABEL_11:
        v30 = v11 - v21;
        v31 = &v20[v21];
        v32 = (v19 + 4 * v21);
        do
        {
          v33 = *v32++;
          *a10.i32 = v33;
          if (v33 > 32767.0)
          {
            *a10.i32 = 32767.0;
          }

          if (*a10.i32 < -32768.0)
          {
            *a10.i32 = -32768.0;
          }

          *v31++ = (*a10.i32 + *vbslq_s8(v15, a5, a10).i32);
          --v30;
        }

        while (v30);
        goto LABEL_5;
      }

      v34 = 0;
      v35 = *(this[5].i64[0] + 16) + 8 * *(this[5].i64[0] + 56) * a2;
      a5.i32[0] = 0.5;
      v36.i64[0] = 0x8000000080000000;
      v36.i64[1] = 0x8000000080000000;
      v37 = vdupq_n_s32(0x46FFFE00u);
      v38.i64[0] = 0xC7000000C7000000;
      v38.i64[1] = 0xC7000000C7000000;
      v39.i64[0] = 0x3F0000003F000000;
      v39.i64[1] = 0x3F0000003F000000;
      while (1)
      {
        v40 = *(v35 + 8 * v34);
        v41 = a3[v34];
        if (v11 < 8)
        {
          break;
        }

        v43 = v11 & 0xFFFFFFFFFFFFFFF8;
        v44 = a3[v34];
        this = *(v35 + 8 * v34);
        do
        {
          v45 = *this;
          v46 = this[1];
          this += 2;
          v47 = vbslq_s8(vcgtq_f32(v45, v37), v37, v45);
          v48 = vbslq_s8(vcgtq_f32(v46, v37), v37, v46);
          v49 = vbslq_s8(vcgtq_f32(v38, v47), v38, v47);
          v50 = vbslq_s8(vcgtq_f32(v38, v48), v38, v48);
          a10 = vuzp1q_s16(vcvtq_s32_f32(vaddq_f32(v49, vbslq_s8(v36, v39, v49))), vcvtq_s32_f32(vaddq_f32(v50, vbslq_s8(v36, v39, v50))));
          *v44++ = a10;
          v43 -= 8;
        }

        while (v43);
        v42 = v11 & 0xFFFFFFFFFFFFFFF8;
        if (v11 != (v11 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_25;
        }

LABEL_19:
        if (++v34 == v10)
        {
          return this;
        }
      }

      v42 = 0;
LABEL_25:
      v51 = v11 - v42;
      v52 = &v41[v42];
      v53 = (v40 + 4 * v42);
      do
      {
        v54 = *v53++;
        *a10.i32 = v54;
        if (v54 > 32767.0)
        {
          *a10.i32 = 32767.0;
        }

        if (*a10.i32 < -32768.0)
        {
          *a10.i32 = -32768.0;
        }

        *v52++ = (*a10.i32 + *vbslq_s8(v36, a5, a10).i32);
        --v51;
      }

      while (v51);
      goto LABEL_19;
    }
  }

  return this;
}

uint64_t *webrtc::ChannelBuffer<float>::~ChannelBuffer(uint64_t *a1)
{
  v2 = a1[11];
  if (v2)
  {
    v3 = a1[12];
    v4 = a1[11];
    if (v3 != v2)
    {
      v5 = a1[12];
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[11];
    }

    a1[12] = v2;
    operator delete(v4);
  }

  v8 = a1[8];
  if (v8)
  {
    v9 = a1[9];
    v10 = a1[8];
    if (v9 != v8)
    {
      v11 = a1[9];
      do
      {
        v13 = *(v11 - 24);
        v11 -= 24;
        v12 = v13;
        if (v13)
        {
          *(v9 - 16) = v12;
          operator delete(v12);
        }

        v9 = v11;
      }

      while (v11 != v8);
      v10 = a1[8];
    }

    a1[9] = v8;
    operator delete(v10);
  }

  v14 = a1[2];
  a1[2] = 0;
  if (v14)
  {
    MEMORY[0x2743DA520](v14, 0x80C80B8603338);
  }

  v15 = a1[1];
  a1[1] = 0;
  if (v15)
  {
    MEMORY[0x2743DA520](v15, 0x80C80B8603338);
  }

  v16 = *a1;
  *a1 = 0;
  if (v16)
  {
    MEMORY[0x2743DA520](v16, 0x1000C8052888210);
  }

  return a1;
}

void webrtc::GetFormatParameter(uint64_t a1@<X0>, void **a2@<X1>, size_t a3@<X2>, std::string *a4@<X8>)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_19:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  v12 = a3;
  v6 = (&__p + a3);
  if (&__p <= a2 && v6 > a2)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a3)
  {
    memmove(&__p, a2, a3);
  }

  *v6 = 0;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 40, &__p);
  v8 = v7;
  if (v12 < 0)
  {
    operator delete(__p);
    if ((a1 + 48) != v8)
    {
      goto LABEL_11;
    }

LABEL_14:
    v10 = 0;
    a4->__r_.__value_.__s.__data_[0] = 0;
    goto LABEL_17;
  }

  if ((a1 + 48) == v7)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (*(v8 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(a4, v8[7], v8[8]);
  }

  else
  {
    v9 = *(v8 + 7);
    a4->__r_.__value_.__r.__words[2] = v8[9];
    *&a4->__r_.__value_.__l.__data_ = v9;
  }

  v10 = 1;
LABEL_17:
  a4[1].__r_.__value_.__s.__data_[0] = v10;
}

void webrtc::GetFormatParameter<std::vector<unsigned char>>(uint64_t a1@<X0>, void **a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  webrtc::GetFormatParameter(a1, a2, a3, &__p);
  if (v18 == 1)
  {
    v19 = __p;
  }

  else
  {
    *(&v19.__r_.__value_.__s + 23) = 0;
    v19.__r_.__value_.__s.__data_[0] = 0;
  }

  do
  {
    size = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (!v19.__r_.__value_.__l.__size_)
      {
LABEL_41:
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        *(a4 + 24) = 1;
        if ((size & 0x80) == 0)
        {
          return;
        }

        goto LABEL_42;
      }

      v6 = v19.__r_.__value_.__r.__words[0];
      v7 = memchr(v19.__r_.__value_.__l.__data_, 44, v19.__r_.__value_.__l.__size_);
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (!*(&v19.__r_.__value_.__s + 23))
      {
        goto LABEL_41;
      }

      v6 = &v19;
      v7 = memchr(&v19, 44, SHIBYTE(v19.__r_.__value_.__r.__words[2]));
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    if (v7 - v6 != -1)
    {
      v8 = v7 - v6;
      if ((size & 0x80000000) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

LABEL_14:
    v8 = -1;
    if ((size & 0x80000000) != 0)
    {
LABEL_13:
      size = v19.__r_.__value_.__l.__size_;
      v9 = v19.__r_.__value_.__r.__words[0];
      goto LABEL_16;
    }

LABEL_15:
    v9 = &v19;
LABEL_16:
    if (size >= v8)
    {
      size = v8;
    }

    if (size >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (size > 0x16)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = size;
    v10 = (&__p + size);
    if (&__p <= v9 && v10 > v9)
    {
      __break(1u);
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (size)
    {
      memmove(&__p, v9, size);
    }

    v10->__r_.__value_.__s.__data_[0] = 0;
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
      v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = __p.__r_.__value_.__l.__size_;
    }

    v14 = webrtc::string_to_number_internal::ParseSigned(&p_p->__r_.__value_.__l.__data_, v13, 0xAuLL);
    if ((v15 & ((v14 + 0x80000000) >> 32 == 0)) != 0)
    {
      v16 = v14 | 0x100000000;
    }

    else
    {
      v16 = 0;
    }

    if ((v16 & 0x100000000) != 0)
    {
      operator new();
    }

    *a4 = 0;
    *(a4 + 24) = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while (HIDWORD(v16));
  if ((*(&v19.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_42:
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = (a1 + 8);
  do
  {
    while (1)
    {
      v8 = *(v3 + 55);
      v9 = v8 >= 0 ? v3 + 4 : v3[4];
      v10 = v8 >= 0 ? *(v3 + 55) : v3[5];
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, v5, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_23;
      }

LABEL_9:
      v3 = v3[1];
      if (!v3)
      {
        goto LABEL_24;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v7 = v3;
    v3 = *v3;
  }

  while (v3);
LABEL_24:
  if (v7 == v2)
  {
    return v2;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v5, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return v7;
    }

    return v2;
  }

  else
  {
    if (v6 < v15)
    {
      return v2;
    }

    return v7;
  }
}

void webrtc::anonymous namespace::AudioCodingModuleImpl::~AudioCodingModuleImpl(webrtc::_anonymous_namespace_::AudioCodingModuleImpl *this)
{
  pthread_mutex_destroy((this + 15904));
  pthread_mutex_destroy((this + 15800));
  v2 = *(this + 47);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 8);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 96);
          if (v6)
          {
            *(v4 - 88) = v6;
            operator delete(v6);
          }

          v4 -= 104;
        }

        while (v4 != v3);
        v5 = *(v2 + 8);
      }

      *(v2 + 16) = v3;
      operator delete(v5);
    }

    MEMORY[0x2743DA540](v2, 0x1020C40E72D6CFBLL);
  }

  v7 = *(this + 37);
  *(this + 37) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

  v8 = *(this + 30);
  if (v8)
  {
    v9 = *(this + 31);
    v10 = *(this + 30);
    if (v9 != v8)
    {
      do
      {
        v12 = *--v9;
        v11 = v12;
        *v9 = 0;
        if (v12)
        {
          (*(*v11 + 8))(v11);
        }
      }

      while (v9 != v8);
      v10 = *(this + 30);
    }

    *(this + 31) = v8;
    operator delete(v10);
  }

  v13 = *(this + 21);
  *(this + 21) = 0;
  if (v13)
  {
    MEMORY[0x2743DA520](v13, 0x1000C80BDFB0063);
  }

  v14 = *(this + 20);
  *(this + 20) = 0;
  if (v14)
  {
    MEMORY[0x2743DA520](v14, 0x1000C80BDFB0063);
  }

  v15 = *(this + 18);
  *(this + 18) = 0;
  if (v15)
  {
    MEMORY[0x2743DA520](v15, 0x1000C8077774924);
  }

  pthread_mutex_destroy(this + 1);
  v16 = *(this + 5);
  if (v16)
  {
    *(this + 6) = v16;
    operator delete(v16);
  }
}

{

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::AudioCodingModuleImpl::ModifyEncoder(pthread_mutex_t *a1, uint64_t a2, void (*a3)(uint64_t, char *))
{
  pthread_mutex_lock(a1 + 1);
  a3(a2, &a1[4].__opaque[32]);

  return pthread_mutex_unlock(a1 + 1);
}

uint64_t webrtc::anonymous namespace::AudioCodingModuleImpl::Reset(pthread_mutex_t *this)
{
  pthread_mutex_lock(this + 1);
  if (this[246].__opaque[40] == 1)
  {
    this[246].__opaque[40] = 0;
  }

  v2 = *&this[4].__opaque[32];
  if (v2)
  {
    (*(*v2 + 64))(v2);
    return pthread_mutex_unlock(this + 1);
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
  {
    return pthread_mutex_unlock(this + 1);
  }

  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/acm2/audio_coding_module.cc");
  return pthread_mutex_unlock(this + 1);
}

uint64_t webrtc::anonymous namespace::AudioCodingModuleImpl::RegisterTransportCallback(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 15800));
  *(a1 + 15864) = a2;
  pthread_mutex_unlock((a1 + 15800));
  return 0;
}

uint64_t webrtc::anonymous namespace::AudioCodingModuleImpl::Add10MsData(webrtc::_anonymous_namespace_::AudioCodingModuleImpl *this, const webrtc::AudioFrame *a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](this, a2, a3);
  v5 = v4;
  v6 = v3;
  pthread_mutex_lock(v3 + 1);
  v7 = *(v5 + 24);
  if (!v7)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  LODWORD(v8) = *(v5 + 32);
  if (v8 >= 192001)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v7 != v8 / 100)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
LABEL_17:
      webrtc::webrtc_logging_impl::Log("\r\t", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/acm2/audio_coding_module.cc");
    }

LABEL_18:
    sig_low = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  v16 = *(v5 + 40);
  if (v16 > 8 || ((1 << v16) & 0x156) == 0)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v17 = *&v6[4].__opaque[32];
  *&v108 = "Add10MsData";
  *(&v108 + 1) = 11;
  if (!v17)
  {
LABEL_70:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v69, v70, v71, v72, v73, v74, v75, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/acm2/audio_coding_module.cc");
    }

    goto LABEL_18;
  }

  v18 = *v5;
  if (v6[246].__opaque[16])
  {
    if (v18 != *&v6[2].__opaque[20])
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/acm2/audio_coding_module.cc");
      }

      v26 = *v5 - *&v6[2].__opaque[20];
      v27 = (*(**&v6[4].__opaque[32] + 16))(*&v6[4].__opaque[32]);
      LODWORD(v8) = *(v5 + 32);
      *&v6[2].__opaque[16] += v26 * (v27 / v8);
      *&v6[2].__opaque[20] = *v5;
      v17 = *&v6[4].__opaque[32];
    }
  }

  else
  {
    *&v6[2].__opaque[16] = v18;
    *&v6[2].__opaque[20] = v18;
    v6[246].__opaque[16] = 1;
  }

  v30 = (*(*v17 + 16))(v17);
  v38 = v30;
  v39 = *(v5 + 40);
  if (v39 != 2)
  {
    if (v8 != v30)
    {
      v42 = &v6[4].__opaque[48];
      *&v6[4].__opaque[48] = *&v6[2].__opaque[16];
      *&v6[5].__opaque[8] = *(v5 + 24);
      *&v6[5].__opaque[24] = v39;
      goto LABEL_34;
    }

LABEL_37:
    v49 = *&v6[2].__opaque[20];
    if (v49 == *&v6[2].__opaque[16])
    {
      v50 = vdup_n_s32(v49);
      v42 = v5;
    }

    else
    {
      v42 = &v6[4].__opaque[48];
      webrtc::AudioFrame::CopyFrom(&v6[4].__opaque[48], v5, v31, v32, v33, v34, v35, v36);
      v50 = *&v6[2].__opaque[16];
      *&v6[4].__opaque[48] = v50.i32[0];
    }

    v51 = (v5 + 24);
    v52 = vld1_dup_f32(v51);
    *&v6[2].__opaque[16] = vadd_s32(v50, v52);
    goto LABEL_61;
  }

  v40 = (*(**&v6[4].__opaque[32] + 24))(*&v6[4].__opaque[32]);
  if (v40 != 1 && v8 == v38)
  {
    goto LABEL_37;
  }

  v42 = &v6[4].__opaque[48];
  *&v6[4].__opaque[48] = *&v6[2].__opaque[16];
  v43 = *(v5 + 24);
  *&v6[5].__opaque[8] = v43;
  if (v40 != 1)
  {
    *&v6[5].__opaque[24] = *(v5 + 40);
    if (v8 == v38)
    {
      goto LABEL_50;
    }

LABEL_34:
    if (*(v5 + 15432) != 1)
    {
      v48 = (v5 + 72);
      goto LABEL_44;
    }

    v47 = &unk_280905000;
    {
      goto LABEL_111;
    }

    goto LABEL_36;
  }

  *&v6[5].__opaque[24] = 1;
  if (v8 == v38)
  {
    webrtc::AudioFrame::mutable_data(&v6[4].__opaque[48], v43, 1uLL, v33, v34, v35, v36, v105);
    v37.n128_f64[0] = webrtc::DownMixFrame(v5, v106);
LABEL_50:
    v43 = 0;
    v44 = 0;
    v46 = 0;
    v45 = 0;
    goto LABEL_51;
  }

  if (v43)
  {
    v44 = &v108;
  }

  else
  {
    v44 = 0;
  }

  v37.n128_f64[0] = webrtc::DownMixFrame(v5, v44);
  v45 = 1;
  v46 = v43;
LABEL_51:
  while (1)
  {
    v53 = (*(**&v6[4].__opaque[32] + 16))(*&v6[4].__opaque[32], v37);
    *(v42 + 32) = v53;
    *(v42 + 24) = v53 / 0x64uLL;
    if (v8 == v38)
    {
      break;
    }

    v105[0] = v45;
    v105[1] = v46;
    v106 = v44;
    v107 = v43;
    v8 = *&v6[5].__opaque[8];
    v47 = *&v6[5].__opaque[24];
    v59 = v47 * v8;
    if (v47 * v8 >= 0x1E01)
    {
      goto LABEL_107;
    }

    if (v47 < 0x19)
    {
      if (*(v42 + 15432) == 1)
      {
        bzero((v42 + 72), 2 * v59);
        *(v42 + 15432) = 0;
      }

      *(v42 + 24) = v8;
      *(v42 + 40) = v47;
      v104[0] = v47;
      v104[1] = v8;
      if (v59)
      {
        v60 = v42 + 72;
      }

      else
      {
        v60 = 0;
      }

      v104[2] = v60;
      v104[3] = v47 * v8;
      webrtc::PushResampler<short>::Resample(&v6[2].__opaque[24], v105, v104, v54, v55, v56, v57, v58);
      break;
    }

    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/audio/audio_frame.cc", 175, "num_channels <= kMaxNumberOfAudioChannels", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v55, v56, v57, v58, *&v6[5].__opaque[24]);
LABEL_111:
    {
      operator new[]();
    }

LABEL_36:
    v48 = *(v47 + 2056);
LABEL_44:
    v46 = *(v5 + 24);
    v45 = *(v5 + 40);
    v43 = v45 * v46;
    if (v45 * v46)
    {
      v44 = v48;
    }

    else
    {
      v44 = 0;
    }
  }

  v61 = *&v6[2].__opaque[20];
  *&v6[2].__opaque[16] += *&v6[5].__opaque[8];
  *&v6[2].__opaque[20] = v61 + *(v5 + 24);
LABEL_61:
  v62 = (*(**&v6[4].__opaque[32] + 24))(*&v6[4].__opaque[32]);
  v63 = *(v42 + 40);
  *v6->__opaque = *v42;
  *&v6->__opaque[16] = *(v42 + 24);
  *&v6->__opaque[24] = v62;
  if (v63 != v62)
  {
    webrtc::ReMixFrame(v42, v62, &v6->__opaque[32]);
    v64 = *&v6->__opaque[32];
    goto LABEL_67;
  }

  if (*(v42 + 15432) != 1)
  {
    v64 = v42 + 72;
    goto LABEL_67;
  }

  {
    goto LABEL_108;
  }

  while (1)
  {
    v64 = webrtc::AudioFrame::zeroed_data(void)::null_data;
LABEL_67:
    *&v6->__opaque[8] = v64;
    v65 = *(v5 + 15440);
    v5 = *(v5 + 15448);
    v66 = *&v6[4].__opaque[32];
    *&v108 = "Process";
    *(&v108 + 1) = 7;
    if (!v66)
    {
      goto LABEL_70;
    }

    if (v6[246].__opaque[17] == 1)
    {
      v67 = *v6->__opaque;
      v68 = v67;
      goto LABEL_74;
    }

    v76 = *&v6[246].__opaque[24];
    v77 = (*v6->__opaque - *&v6[246].__opaque[20]);
    v59 = (*(*v66 + 32))(v66) * v77;
    v78 = (*(**&v6[4].__opaque[32] + 16))(*&v6[4].__opaque[32]);
    if (!(v59 % v78))
    {
      break;
    }

    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)3,long long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)3,long long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)3,long long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)3,long long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)3,long long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)3,long long> const&)::t, v79, v80, v81, v82, v59 % v78);
LABEL_107:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/audio/audio_frame.cc", 174, "total_samples <= data_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v55, v56, v57, v58, v59);
LABEL_108:
    {
      operator new[]();
    }
  }

  v68 = v76 + (v59 / v78);
  v67 = *v6->__opaque;
LABEL_74:
  *&v6[246].__opaque[20] = v67;
  *&v6[246].__opaque[24] = v68;
  v6[246].__opaque[17] = 0;
  if ((v6[246].__opaque[40] & 1) == 0)
  {
    *&v6[246].__opaque[32] = v65;
    v6[246].__opaque[40] = v5;
  }

  v6[2].__sig = 0;
  v83 = v6 + 2;
  v84 = *&v6->__opaque[16] * *&v6->__opaque[24];
  if (v84)
  {
    v85 = *&v6->__opaque[8];
  }

  else
  {
    v85 = 0;
  }

  webrtc::AudioEncoder::Encode(*&v6[4].__opaque[32], v68, v85, v84, &v6[2].__sig, &v108);
  v86 = v108;
  v87 = BYTE12(v108);
  v103 = DWORD2(v108);
  v88 = v109;
  v89 = BYTE1(v109);
  v90 = SDWORD1(v109);
  v91 = *(&v109 + 1);
  v92 = (*(**&v6[4].__opaque[32] + 56))(*&v6[4].__opaque[32]) / 1000;
  if (*v6[4].__opaque != v92 || *&v6[4].__opaque[4])
  {
    *&v6[4].__opaque[4] = 0;
    *v6[4].__opaque = v92;
    CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear();
    if (CountsLinear)
    {
      webrtc::metrics::HistogramAdd(CountsLinear, v92);
    }
  }

  sig = v83->__sig;
  if (!v83->__sig && (v88 & 1) == 0)
  {
    sig_low = 0;
    if (!v91)
    {
      goto LABEL_19;
    }

LABEL_103:
    operator delete(v91);
    goto LABEL_19;
  }

  v95 = v6[4].__opaque[40];
  if (v86)
  {
    *(&v6[248].__sig + v90) += *&v6[248].__opaque[16] + 1;
    *&v6[248].__opaque[16] = 0;
    v96 = *(&v6[248].__sig + v90);
    v97 = __OFSUB__(v96, 500);
    v98 = v96 - 500;
    if (v98 < 0 == v97)
    {
      *(&v6[248].__sig + v90) = v98;
    }
  }

  else
  {
    ++*&v6[248].__opaque[16];
  }

  if (sig || (v88 & 1) == 0)
  {
    if (v89)
    {
      v99 = 1;
    }

    else
    {
      v99 = 2;
    }
  }

  else
  {
    v99 = 0;
    v87 = v95;
  }

  pthread_mutex_lock((v6 + 15800));
  v100 = *&v6[247].__opaque[48];
  if (v100)
  {
    if (v6[246].__opaque[40] == 1)
    {
      v101 = *&v6[246].__opaque[32];
    }

    else
    {
      v101 = -1;
    }

    (*(*v100 + 16))(v100, v99, v87, v103, *&v6[2].__opaque[8], v6[2].__sig, v101);
  }

  pthread_mutex_unlock((v6 + 15800));
  if (v6[246].__opaque[40] == 1)
  {
    v6[246].__opaque[40] = 0;
  }

  v6[4].__opaque[40] = v87;
  pthread_mutex_lock((v6 + 15904));
  (*(**&v6[4].__opaque[32] + 208))(&v108);
  v102 = v109;
  *&v6[249].__opaque[24] = v108;
  *&v6[249].__opaque[40] = v102;
  *&v6[250].__sig = v110;
  *&v6[250].__opaque[8] = v111;
  *&v6[250].__opaque[16] = (*(**&v6[4].__opaque[32] + 56))(*&v6[4].__opaque[32]);
  pthread_mutex_unlock((v6 + 15904));
  sig_low = LODWORD(v6[2].__sig);
  if (v91)
  {
    goto LABEL_103;
  }

LABEL_19:
  pthread_mutex_unlock(v6 + 1);
  return sig_low;
}

uint64_t webrtc::anonymous namespace::AudioCodingModuleImpl::SetPacketLossRate(pthread_mutex_t *this, int a2)
{
  pthread_mutex_lock(this + 1);
  v4 = *&this[4].__opaque[32];
  if (v4)
  {
    v5 = a2 / 100.0;
    (*(*v4 + 144))(v4, v5);
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/acm2/audio_coding_module.cc");
  }

  pthread_mutex_unlock(this + 1);
  return 0;
}

uint64_t webrtc::anonymous namespace::AudioCodingModuleImpl::GetANAStats@<X0>(webrtc::_anonymous_namespace_::AudioCodingModuleImpl *this@<X0>, uint64_t a2@<X8>)
{
  pthread_mutex_lock((this + 15904));
  v4 = *(this + 999);
  *a2 = *(this + 998);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(this + 1000);
  *(a2 + 45) = *(this + 16013);

  return pthread_mutex_unlock((this + 15904));
}

uint64_t webrtc::anonymous namespace::AudioCodingModuleImpl::GetTargetBitrate(webrtc::_anonymous_namespace_::AudioCodingModuleImpl *this)
{
  pthread_mutex_lock((this + 15904));
  v2 = *(this + 4006);
  pthread_mutex_unlock((this + 15904));
  return v2;
}

void webrtc::AudioConverter::Create(webrtc::AudioConverter *this, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (this > a3)
  {
    operator new();
  }

  if (this < a3)
  {
    if (a2 == a4)
    {
      operator new();
    }

    operator new();
  }

  if (a2 == a4)
  {
    operator new();
  }

  operator new();
}

void *webrtc::DownmixConverter::Convert(void *this, const float *const *a2, uint64_t a3, int32x4_t **a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v10 = this[1];
  v9 = this[2];
  if (v9 * v10 != a3)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_audio/audio_converter.cc", 215, "src_size == src_channels() * src_frames()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, a3);
    goto LABEL_19;
  }

  if (this[4] * this[3] > a5)
  {
LABEL_19:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_audio/audio_converter.cc", 216, "dst_capacity >= dst_channels() * dst_frames()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, a5);
    return webrtc::ResampleConverter::ResampleConverter(v24, v25, v26, v27, v28);
  }

  if (!v9)
  {
    return this;
  }

  v11 = *a4;
  v12 = v10;
  if (!v10)
  {
    *&a9 = 0.0 / v12;
    if (v9 >= 8)
    {
      v18 = v9 & 0xFFFFFFFFFFFFFFF8;
      v19 = vdupq_lane_s32(*&a9, 0);
      v20 = v11 + 1;
      v21 = v9 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v20[-1] = v19;
        *v20 = v19;
        v20 += 2;
        v21 -= 8;
      }

      while (v21);
      if (v9 == v18)
      {
        return this;
      }
    }

    else
    {
      v18 = 0;
    }

    v22 = v9 - v18;
    v23 = &v11->i32[v18];
    do
    {
      *v23++ = LODWORD(a9);
      --v22;
    }

    while (v22);
    return this;
  }

  for (i = 0; i != v9; ++i)
  {
    v14 = 0.0;
    v15 = a2;
    v16 = v10;
    do
    {
      v17 = *v15++;
      v14 = v14 + *(v17 + 4 * i);
      --v16;
    }

    while (v16);
    *&v11->i32[i] = v14 / v12;
  }

  return this;
}

void *webrtc::ResampleConverter::ResampleConverter(void *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *this = &unk_28828D3A0;
  this[1] = a2;
  this[2] = a3;
  this[3] = a4;
  this[4] = a5;
  if (a2 != 1 && a4 != a2 && a4 != 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_audio/audio_converter.cc", 211, "dst_channels == src_channels || dst_channels == 1 || src_channels == 1", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v8);
    goto LABEL_9;
  }

  *this = &unk_28828D3F0;
  this[5] = 0;
  this[6] = 0;
  this[7] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

LABEL_9:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

void webrtc::ResampleConverter::~ResampleConverter(webrtc::ResampleConverter *this)
{
  *this = &unk_28828D3F0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }
}

{
  *this = &unk_28828D3F0;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

void *webrtc::ResampleConverter::Convert(void *this, const float *const *a2, uint64_t a3, float *const *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (this[2] * this[1] != a3)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_audio/audio_converter.cc", 215, "src_size == src_channels() * src_frames()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, a3);
    goto LABEL_8;
  }

  v8 = this;
  if (this[4] * this[3] > a5)
  {
LABEL_8:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_audio/audio_converter.cc", 216, "dst_capacity >= dst_channels() * dst_frames()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, a5);
    return webrtc::CompositionConverter::CompositionConverter();
  }

  v9 = this[5];
  if (this[6] != v9)
  {
    v12 = 0;
    do
    {
      this = webrtc::PushSincResampler::Resample(*(v9 + 8 * v12), a2[v12], v8[2], a4[v12], v8[4], a6, a7, a8);
      ++v12;
      v9 = v8[5];
    }

    while (v12 < (v8[6] - v9) >> 3);
  }

  return this;
}

void webrtc::CompositionConverter::CompositionConverter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_28828D418;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 40) = *a2;
  *(a1 + 56) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = (v8 - v9) >> 3;
  if (v10 <= 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_audio/audio_converter.cc", 126, "converters_.size() >= 2", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v10);
    webrtc::CompositionConverter::~CompositionConverter(v11);
  }

  else if (v9 != v8 - 8)
  {
    operator new();
  }
}

void webrtc::CompositionConverter::~CompositionConverter(webrtc::CompositionConverter *this)
{
  webrtc::CompositionConverter::~CompositionConverter(this);

  JUMPOUT(0x2743DA540);
}

{
  *this = &unk_28828D418;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *(this + 9);
    v4 = *(this + 8);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          v7 = webrtc::ChannelBuffer<float>::~ChannelBuffer(v5);
          MEMORY[0x2743DA540](v7, 0x10A0C40650D7302);
        }
      }

      while (v3 != v2);
      v4 = *(this + 8);
    }

    *(this + 9) = v2;
    operator delete(v4);
  }

  v8 = *(this + 5);
  if (v8)
  {
    v9 = *(this + 6);
    v10 = *(this + 5);
    if (v9 != v8)
    {
      do
      {
        v12 = *--v9;
        v11 = v12;
        *v9 = 0;
        if (v12)
        {
          (*(*v11 + 8))(v11);
        }
      }

      while (v9 != v8);
      v10 = *(this + 5);
    }

    *(this + 6) = v8;
    operator delete(v10);
  }
}

void *webrtc::CompositionConverter::Convert(void *this, const float *const *a2, uint64_t a3, float *const *a4)
{
  v4 = this[5];
  if (v4 == this[6])
  {
    goto LABEL_14;
  }

  v5 = this;
  v6 = this[8];
  if (v6 == this[9])
  {
    goto LABEL_14;
  }

  this = (*(**v4 + 16))(*v4, a2, a3, *(*v6 + 8), *(*v6 + 40) * *(*v6 + 24));
  v7 = v5[5];
  v8 = v5[6];
  if ((v8 - v7) >= 0x11)
  {
    v9 = 0;
    do
    {
      v10 = v5[8];
      v11 = (v5[9] - v10) >> 3;
      if (v11 <= v9 || v11 <= v9 + 1)
      {
        goto LABEL_14;
      }

      v12 = (v10 + 8 * v9);
      this = (*(**(v7 + 8 * v9 + 16) + 16))(*(v7 + 8 * v9 + 16), *(*v12 + 8), *(*v12 + 40) * *(*v12 + 24), *(v12[1] + 8), *(v12[1] + 40) * *(v12[1] + 24));
      v7 = v5[5];
      v8 = v5[6];
      v13 = v9 + 3 >= (v8 - v7) >> 3;
      ++v9;
    }

    while (!v13);
  }

  if (v7 == v8 || v5[8] == v5[9])
  {
LABEL_14:
    __break(1u);
    return this;
  }

  v14 = *(**(v8 - 8) + 16);

  return v14();
}

void *webrtc::UpmixConverter::Convert(void *this, const float *const *a2, uint64_t a3, float *const *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (this[2] * this[1] != a3)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_audio/audio_converter.cc", 215, "src_size == src_channels() * src_frames()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, a3);
    goto LABEL_17;
  }

  v8 = this[3];
  v9 = this[4];
  if (v9 * v8 > a5)
  {
LABEL_17:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_audio/audio_converter.cc", 216, "dst_capacity >= dst_channels() * dst_frames()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, a5);
    JUMPOUT(0x2730EF32CLL);
  }

  if (v9 && v8)
  {
    v10 = 0;
    v11 = *a2;
    do
    {
      v12 = *(v11 + 4 * v10);
      if (v8 == 1)
      {
        v13 = 0;
      }

      else
      {
        v14 = v8 & 0xFFFFFFFFFFFFFFFELL;
        v15 = a4 + 1;
        do
        {
          v16 = *v15;
          *(*(v15 - 1) + 4 * v10) = v12;
          v16[v10] = v12;
          v15 += 2;
          v14 -= 2;
        }

        while (v14);
        v13 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 == (v8 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_6;
        }
      }

      v17 = v8 - v13;
      v18 = &a4[v13];
      do
      {
        v19 = *v18++;
        *(v19 + 4 * v10) = v12;
        --v17;
      }

      while (v17);
LABEL_6:
      ++v10;
    }

    while (v10 != v9);
  }

  return this;
}

void *webrtc::CopyConverter::Convert(void *this, const float *const *a2, uint64_t a3, const float *const *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = this[1];
  if (this[2] * v8 != a3)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_audio/audio_converter.cc", 215, "src_size == src_channels() * src_frames()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, a3);
    goto LABEL_9;
  }

  v9 = this;
  if (this[4] * this[3] > a5)
  {
LABEL_9:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_audio/audio_converter.cc", 216, "dst_capacity >= dst_channels() * dst_frames()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, a5);
    return webrtc::AudioDecoder::EncodedAudioFrame::IsDtxPacket(v13);
  }

  if (a2 != a4 && v8)
  {
    v12 = 0;
    do
    {
      this = memcpy(a4[v12], a2[v12], 4 * v9[4]);
      ++v12;
    }

    while (v12 < v9[1]);
  }

  return this;
}

void std::vector<webrtc::AudioDecoder::ParseResult>::__emplace_back_slow_path<unsigned int &,int,std::unique_ptr<webrtc::AudioDecoder::EncodedAudioFrame>>(void *a1)
{
  v1 = ((a1[1] - *a1) >> 4) + 1;
  if (!(v1 >> 60))
  {
    v2 = a1[2] - *a1;
    if (v2 >> 3 > v1)
    {
      v1 = v2 >> 3;
    }

    if (v2 >= 0x7FFFFFFFFFFFFFF0)
    {
      v1 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v1)
    {
      if (!(v1 >> 60))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t webrtc::AudioDecoderG711::SdpToConfig(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) == 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (v1 != 4)
  {
    v7 = 0;
    v9 = 0;
    if (*(a1 + 24) == 8000)
    {
      goto LABEL_26;
    }

    return 0;
  }

  v3 = *v2;
  if (v3 != 80)
  {
    if ((v3 - 65) < 0x1A)
    {
      LOBYTE(v3) = v3 + 32;
    }

    if (v3 != 112)
    {
      goto LABEL_35;
    }
  }

  v4 = v2[1];
  if (v4 != 67)
  {
    if ((v4 - 65) < 0x1A)
    {
      LOBYTE(v4) = v4 + 32;
    }

    if (v4 != 99)
    {
      goto LABEL_35;
    }
  }

  v5 = v2[2];
  if (v5 != 77)
  {
    if ((v5 - 65) < 0x1A)
    {
      LOBYTE(v5) = v5 + 32;
    }

    if (v5 != 109)
    {
      goto LABEL_35;
    }
  }

  v6 = v2[3];
  if (v6 == 85)
  {
    goto LABEL_23;
  }

  if ((v6 - 65) < 0x1A)
  {
    LOBYTE(v6) = v6 + 32;
  }

  if (v6 == 117)
  {
LABEL_23:
    v7 = 1;
    v8 = *v2;
    if (v8 == 80)
    {
      goto LABEL_39;
    }
  }

  else
  {
LABEL_35:
    v7 = 0;
    v8 = *v2;
    if (v8 == 80)
    {
      goto LABEL_39;
    }
  }

  if ((v8 - 65) < 0x1A)
  {
    LOBYTE(v8) = v8 + 32;
  }

  if (v8 != 112)
  {
LABEL_53:
    v9 = 0;
    if (*(a1 + 24) == 8000)
    {
      goto LABEL_26;
    }

    return 0;
  }

LABEL_39:
  v19 = v2[1];
  if (v19 != 67)
  {
    if ((v19 - 65) < 0x1A)
    {
      LOBYTE(v19) = v19 + 32;
    }

    if (v19 != 99)
    {
      goto LABEL_53;
    }
  }

  v20 = v2[2];
  if (v20 != 77)
  {
    if ((v20 - 65) < 0x1A)
    {
      LOBYTE(v20) = v20 + 32;
    }

    if (v20 != 109)
    {
      goto LABEL_53;
    }
  }

  v21 = v2[3];
  if (v21 != 65)
  {
    if ((v21 - 65) < 0x1A)
    {
      LOBYTE(v21) = v21 + 32;
    }

    if (v21 != 97)
    {
      goto LABEL_53;
    }
  }

  v9 = 1;
  if (*(a1 + 24) != 8000)
  {
    return 0;
  }

LABEL_26:
  v10 = *(a1 + 32);
  v11 = v7 | v9;
  v12 = (v10 - 1) > 0x17;
  v13 = v7 ^ 1u;
  v14 = v10 << 32;
  if (v12)
  {
    v13 = 0;
    v14 = 0;
  }

  v15 = v11 == 1;
  if (v11 == 1)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  return v17 | v16;
}

void webrtc::AudioDecoderG711::AppendSupportedDecoders(void *a1)
{
  HIBYTE(v15) = 4;
  if (__p <= "PCMU" && __p + 4 > "PCMU")
  {
    goto LABEL_22;
  }

  strcpy(__p, "PCMU");
  LODWORD(v16) = 8000;
  v18 = 0;
  v19 = 0;
  *(&v16 + 1) = 1;
  v17 = &v18;
  LODWORD(v20) = 8000;
  *(&v20 + 1) = 1;
  *&v21 = 0xFA000000FA00;
  DWORD2(v21) = 64000;
  WORD6(v21) = 1;
  v2 = a1[1];
  if (v2 >= a1[2])
  {
    std::vector<webrtc::AudioCodecSpec>::__emplace_back_slow_path<webrtc::AudioCodecSpec>(a1);
  }

  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = *__p;
  *(v2 + 16) = v15;
  *v2 = v3;
  __p[1] = 0;
  v15 = 0;
  __p[0] = 0;
  *(v2 + 24) = v16;
  v4 = v19;
  *(v2 + 40) = v17;
  v5 = v18;
  *(v2 + 48) = v18;
  *(v2 + 56) = v4;
  v6 = v2 + 48;
  if (v4)
  {
    *(v5 + 16) = v6;
    v5 = 0;
    v17 = &v18;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    *(v2 + 40) = v6;
  }

  v12 = v21;
  *(v2 + 64) = v20;
  *(v2 + 80) = v12;
  a1[1] = v2 + 96;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v17, v5);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(v15) = 4;
  if (__p <= "PCMA" && __p + 4 > "PCMA")
  {
    goto LABEL_22;
  }

  strcpy(__p, "PCMA");
  LODWORD(v16) = 8000;
  v18 = 0;
  v19 = 0;
  *(&v16 + 1) = 1;
  v17 = &v18;
  LODWORD(v20) = 8000;
  *(&v20 + 1) = 1;
  *&v21 = 0xFA000000FA00;
  DWORD2(v21) = 64000;
  WORD6(v21) = 1;
  v7 = a1[1];
  if (v7 >= a1[2])
  {
    std::vector<webrtc::AudioCodecSpec>::__emplace_back_slow_path<webrtc::AudioCodecSpec>(a1);
  }

  if (v7)
  {
    v8 = *__p;
    *(v7 + 16) = v15;
    *v7 = v8;
    __p[1] = 0;
    v15 = 0;
    __p[0] = 0;
    *(v7 + 24) = v16;
    v9 = v19;
    *(v7 + 40) = v17;
    v10 = v18;
    *(v7 + 48) = v18;
    *(v7 + 56) = v9;
    v11 = v7 + 48;
    if (v9)
    {
      *(v10 + 16) = v11;
      v10 = 0;
      v17 = &v18;
      v18 = 0;
      v19 = 0;
    }

    else
    {
      *(v7 + 40) = v11;
    }

    v13 = v21;
    *(v7 + 64) = v20;
    *(v7 + 80) = v13;
    a1[1] = v7 + 96;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v17, v10);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }
}

void std::vector<webrtc::AudioCodecSpec>::__emplace_back_slow_path<webrtc::AudioCodecSpec>(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5) + 1;
  if (v1 <= 0x2AAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v1)
    {
      v1 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
    {
      v2 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void webrtc::AudioDecoderG722Impl::~AudioDecoderG722Impl(void **this)
{
  free(this[1]);
}

{
  free(this[1]);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::AudioDecoderG722Impl::DecodeInternal(uint64_t a1, uint64_t a2, unint64_t a3, double a4, double a5, int8x16_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  result = WebRtc_g722_decode(*(a1 + 8), a8, a2, a3, a4, a5, a6);
  *a9 = 1;
  return result;
}

double webrtc::AudioDecoderG722Impl::Reset(webrtc::AudioDecoderG722Impl *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    v1 = malloc_type_malloc(0x1E8uLL, 0x10000409A32B08BuLL);
  }

  v1[60] = 0;
  result = 0.0;
  *(v1 + 28) = 0u;
  *(v1 + 29) = 0u;
  *(v1 + 26) = 0u;
  *(v1 + 27) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 25) = 0u;
  *(v1 + 22) = 0u;
  *(v1 + 23) = 0u;
  *(v1 + 20) = 0u;
  *(v1 + 21) = 0u;
  *(v1 + 18) = 0u;
  *(v1 + 19) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 17) = 0u;
  *(v1 + 14) = 0u;
  *(v1 + 15) = 0u;
  *(v1 + 12) = 0u;
  *(v1 + 13) = 0u;
  *(v1 + 10) = 0u;
  *(v1 + 11) = 0u;
  *(v1 + 8) = 0u;
  *(v1 + 9) = 0u;
  *(v1 + 6) = 0u;
  *(v1 + 7) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 3) = 8;
  *(v1 + 1) = 0;
  *(v1 + 72) = 32;
  *(v1 + 117) = 8;
  return result;
}

void webrtc::AudioDecoderG722StereoImpl::~AudioDecoderG722StereoImpl(void **this)
{
  free(this[1]);
  free(this[2]);
}

{
  free(this[1]);
  free(this[2]);

  JUMPOUT(0x2743DA540);
}

void *webrtc::AudioDecoderG722StereoImpl::Reset(webrtc::AudioDecoderG722StereoImpl *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    v2 = malloc_type_malloc(0x1E8uLL, 0x10000409A32B08BuLL);
  }

  v2[60] = 0;
  v3 = 0uLL;
  *(v2 + 28) = 0u;
  *(v2 + 29) = 0u;
  *(v2 + 26) = 0u;
  *(v2 + 27) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 25) = 0u;
  *(v2 + 22) = 0u;
  *(v2 + 23) = 0u;
  *(v2 + 20) = 0u;
  *(v2 + 21) = 0u;
  *(v2 + 18) = 0u;
  *(v2 + 19) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 17) = 0u;
  *(v2 + 14) = 0u;
  *(v2 + 15) = 0u;
  *(v2 + 12) = 0u;
  *(v2 + 13) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 3) = 8;
  *(v2 + 1) = 0;
  *(v2 + 72) = 32;
  *(v2 + 117) = 8;
  result = *(this + 2);
  if (!result)
  {
    result = malloc_type_malloc(0x1E8uLL, 0x10000409A32B08BuLL);
    v3 = 0uLL;
  }

  result[60] = 0;
  *(result + 28) = v3;
  *(result + 29) = v3;
  *(result + 26) = v3;
  *(result + 27) = v3;
  *(result + 24) = v3;
  *(result + 25) = v3;
  *(result + 22) = v3;
  *(result + 23) = v3;
  *(result + 20) = v3;
  *(result + 21) = v3;
  *(result + 18) = v3;
  *(result + 19) = v3;
  *(result + 16) = v3;
  *(result + 17) = v3;
  *(result + 14) = v3;
  *(result + 15) = v3;
  *(result + 12) = v3;
  *(result + 13) = v3;
  *(result + 10) = v3;
  *(result + 11) = v3;
  *(result + 8) = v3;
  *(result + 9) = v3;
  *(result + 6) = v3;
  *(result + 7) = v3;
  *(result + 4) = v3;
  *(result + 5) = v3;
  *(result + 2) = v3;
  *(result + 3) = v3;
  *result = v3;
  *(result + 1) = v3;
  *(result + 3) = 8;
  *(result + 1) = 0;
  *(result + 72) = 32;
  *(result + 117) = 8;
  return result;
}

void webrtc::AudioDecoderG722::AppendSupportedDecoders(void *a1)
{
  HIBYTE(v8) = 4;
  if (__p <= "G722" && __p + 4 > "G722")
  {
    goto LABEL_12;
  }

  strcpy(__p, "G722");
  LODWORD(v9) = 8000;
  v11 = 0;
  v12 = 0;
  *(&v9 + 1) = 1;
  v10 = &v11;
  LODWORD(v13) = 16000;
  *(&v13 + 1) = 1;
  *&v14 = 0xFA000000FA00;
  DWORD2(v14) = 64000;
  WORD6(v14) = 1;
  v1 = a1[1];
  if (v1 >= a1[2])
  {
    std::vector<webrtc::AudioCodecSpec>::__emplace_back_slow_path<webrtc::AudioCodecSpec>(a1);
  }

  if (v1)
  {
    v2 = *__p;
    *(v1 + 16) = v8;
    *v1 = v2;
    __p[1] = 0;
    v8 = 0;
    __p[0] = 0;
    *(v1 + 24) = v9;
    v3 = v12;
    *(v1 + 40) = v10;
    v4 = v11;
    *(v1 + 48) = v11;
    *(v1 + 56) = v3;
    v5 = v1 + 48;
    if (v3)
    {
      *(v4 + 16) = v5;
      v4 = 0;
      v10 = &v11;
      v11 = 0;
      v12 = 0;
    }

    else
    {
      *(v1 + 40) = v5;
    }

    v6 = v14;
    *(v1 + 64) = v13;
    *(v1 + 80) = v6;
    a1[1] = v1 + 96;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v10, v4);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
LABEL_12:
    __break(1u);
  }
}

uint64_t webrtc::AudioDecoderG722::MakeAudioDecoder@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((result - 1) <= 1)
  {
    if (result == 1)
    {
      operator new();
    }

    operator new();
  }

  *a2 = 0;
  return result;
}

char *webrtc::AudioDecoderL16::SdpToConfig(webrtc::AudioDecoderL16 *this, const webrtc::SdpAudioFormat *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 4);
  if (v9 >> 31)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/numerics/safe_conversions.h", 36, "IsValueInRangeForNumericType<Dst>(value)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v8);
    return std::pair<std::string const,std::string>::pair[abi:sn200100]<char const(&)[9],char const(&)[3],0>(v21, v22, v23);
  }

  else
  {
    v10 = *(this + 23);
    if ((v10 & 0x80u) == 0)
    {
      v11 = this;
    }

    else
    {
      v11 = *this;
    }

    if ((v10 & 0x80u) != 0)
    {
      v10 = *(this + 1);
    }

    if (v10 != 3)
    {
      return 0;
    }

    v12 = *(this + 6);
    v13 = *v11;
    if (v13 != 76)
    {
      if ((v13 - 65) < 0x1A)
      {
        LOBYTE(v13) = v13 + 32;
      }

      if (v13 != 108)
      {
        return 0;
      }
    }

    v14 = *(v11 + 1);
    if (v14 != 49)
    {
      if ((v14 - 65) < 0x1A)
      {
        LOBYTE(v14) = v14 + 32;
      }

      if (v14 != 49)
      {
        return 0;
      }
    }

    v15 = *(v11 + 2);
    if (v15 == 54)
    {
      goto LABEL_20;
    }

    if ((v15 - 65) < 0x1A)
    {
      LOBYTE(v15) = v15 + 32;
    }

    if (v15 == 54)
    {
LABEL_20:
      if (v12 > 31999)
      {
        if (v12 != 48000 && v12 != 32000)
        {
          return 0;
        }
      }

      else if (v12 != 8000 && v12 != 16000)
      {
        return 0;
      }

      v17 = (v9 - 1) > 0x17;
      v18 = v12 & 0x7FFFFF00 | (v9 << 32);
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = *(this + 6);
      }

      if (v17)
      {
        v20 = 0;
      }

      else
      {
        v20 = v18;
      }

      return (v20 | v19);
    }

    else
    {
      return 0;
    }
  }
}

char *std::pair<std::string const,std::string>::pair[abi:sn200100]<char const(&)[9],char const(&)[3],0>(char *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_21;
  }

  if (v6 > 0x16)
  {
    operator new();
  }

  a1[23] = v6;
  v7 = &a1[v6];
  if (a1 <= __s && v7 > __s)
  {
    goto LABEL_20;
  }

  if (v6)
  {
    memmove(a1, __s, v6);
  }

  *v7 = 0;
  v9 = strlen(a3);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_21:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v9 > 0x16)
  {
    operator new();
  }

  a1[47] = v9;
  v10 = &a1[v9 + 24];
  if (a1 + 24 <= a3 && v10 > a3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v9)
  {
    memmove(a1 + 24, a3, v9);
  }

  *v10 = 0;
  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(uint64_t **a1, uint64_t *a2, const void **a3)
{
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!*v3)
  {
    operator new();
  }

  return *v3;
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_23;
  }

  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a2 + 55);
  if (v13 >= 0)
  {
    v14 = a2 + 4;
  }

  else
  {
    v14 = a2[4];
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 55);
  }

  else
  {
    v15 = a2[5];
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (!v17)
  {
    if (v12 >= v15)
    {
      goto LABEL_19;
    }

LABEL_23:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
    }

    else
    {
      if (v19)
      {
        v20 = *a2;
        do
        {
          v21 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        v22 = a2;
        do
        {
          v21 = v22[2];
          v23 = *v21 == v22;
          v22 = v21;
        }

        while (v23);
      }

      v24 = *(v21 + 55);
      if (v24 >= 0)
      {
        v25 = v21 + 4;
      }

      else
      {
        v25 = v21[4];
      }

      if (v24 >= 0)
      {
        v26 = *(v21 + 55);
      }

      else
      {
        v26 = v21[5];
      }

      v27 = *(a5 + 23);
      if (v27 >= 0)
      {
        v28 = a5;
      }

      else
      {
        v28 = *a5;
      }

      if (v27 >= 0)
      {
        v29 = *(a5 + 23);
      }

      else
      {
        v29 = a5[1];
      }

      if (v29 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v25, v28, v30);
      if (v31)
      {
        if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v26 >= v29)
      {
LABEL_48:
        v32 = *v8;
        if (!*v8)
        {
          v33 = v8;
LABEL_69:
          *a3 = v33;
          return v8;
        }

        while (1)
        {
          v33 = v32;
          v36 = v32[4];
          v34 = v32 + 4;
          v35 = v36;
          v37 = *(v34 + 23);
          if (v37 >= 0)
          {
            v38 = v34;
          }

          else
          {
            v38 = v35;
          }

          if (v37 >= 0)
          {
            v39 = *(v34 + 23);
          }

          else
          {
            v39 = v34[1];
          }

          if (v39 >= v29)
          {
            v40 = v29;
          }

          else
          {
            v40 = v39;
          }

          v41 = memcmp(v28, v38, v40);
          if (v41)
          {
            if (v41 < 0)
            {
              goto LABEL_50;
            }

LABEL_64:
            v42 = memcmp(v38, v28, v40);
            if (v42)
            {
              if ((v42 & 0x80000000) == 0)
              {
                goto LABEL_69;
              }
            }

            else if (v39 >= v29)
            {
              goto LABEL_69;
            }

            v8 = v33 + 1;
            v32 = v33[1];
            if (!v32)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v29 >= v39)
            {
              goto LABEL_64;
            }

LABEL_50:
            v32 = *v33;
            v8 = v33;
            if (!*v33)
            {
              goto LABEL_69;
            }
          }
        }
      }
    }

    if (v19)
    {
      *a3 = v21;
      return v21 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v17 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = memcmp(v14, v11, v16);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
LABEL_21:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }
  }

  else if (v15 >= v12)
  {
    goto LABEL_21;
  }

  v43 = a2[1];
  if (v43)
  {
    v44 = a2[1];
    do
    {
      a4 = v44;
      v44 = *v44;
    }

    while (v44);
  }

  else
  {
    v45 = a2;
    do
    {
      a4 = v45[2];
      v23 = *a4 == v45;
      v45 = a4;
    }

    while (!v23);
  }

  if (a4 != v8)
  {
    v46 = *(a4 + 55);
    if (v46 >= 0)
    {
      v47 = (a4 + 4);
    }

    else
    {
      v47 = a4[4];
    }

    if (v46 >= 0)
    {
      v48 = *(a4 + 55);
    }

    else
    {
      v48 = a4[5];
    }

    if (v48 >= v12)
    {
      v49 = v12;
    }

    else
    {
      v49 = v48;
    }

    v50 = memcmp(v11, v47, v49);
    if (v50)
    {
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_95;
      }
    }

    else if (v12 >= v48)
    {
LABEL_95:
      v51 = *v8;
      if (!*v8)
      {
        v52 = v8;
LABEL_116:
        *a3 = v52;
        return v8;
      }

      while (1)
      {
        v52 = v51;
        v55 = v51[4];
        v53 = v51 + 4;
        v54 = v55;
        v56 = *(v53 + 23);
        if (v56 >= 0)
        {
          v57 = v53;
        }

        else
        {
          v57 = v54;
        }

        if (v56 >= 0)
        {
          v58 = *(v53 + 23);
        }

        else
        {
          v58 = v53[1];
        }

        if (v58 >= v12)
        {
          v59 = v12;
        }

        else
        {
          v59 = v58;
        }

        v60 = memcmp(v11, v57, v59);
        if (v60)
        {
          if (v60 < 0)
          {
            goto LABEL_97;
          }

LABEL_111:
          v61 = memcmp(v57, v11, v59);
          if (v61)
          {
            if ((v61 & 0x80000000) == 0)
            {
              goto LABEL_116;
            }
          }

          else if (v58 >= v12)
          {
            goto LABEL_116;
          }

          v8 = v52 + 1;
          v51 = v52[1];
          if (!v51)
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (v12 >= v58)
          {
            goto LABEL_111;
          }

LABEL_97:
          v51 = *v52;
          v8 = v52;
          if (!*v52)
          {
            goto LABEL_116;
          }
        }
      }
    }
  }

  if (v43)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *(a2 + 8));
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
LABEL_4:
        v4 = a2;

LABEL_6:
        operator delete(v4);
        return;
      }
    }

    else if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a2 + 32));
    v4 = a2;

    goto LABEL_6;
  }
}

unsigned int *webrtc::AudioDecoderMultiChannelOpusImpl::MakeAudioDecoder@<X0>(unsigned int *result@<X0>, void *a2@<X8>)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v2 = *result;
  if ((v2 - 25) < 0xFFFFFFE8)
  {
    goto LABEL_15;
  }

  v3 = result[1];
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

  v4 = result[2];
  if (v4 > v3)
  {
    goto LABEL_15;
  }

  v5 = *(result + 2);
  v6 = *(result + 3);
  if (v6 - v5 != v2)
  {
    goto LABEL_15;
  }

  v7 = v4 + v3;
  if (v5 != v6)
  {
    v8 = *(result + 2);
    do
    {
      v9 = *v8;
      if (v9 != 255 && v7 <= v9)
      {
        goto LABEL_15;
      }
    }

    while (++v8 != v6);
  }

  if (v7 >= 255)
  {
LABEL_15:
    *a2 = 0;
    return result;
  }

  v12[0] = 0;
  result = WebRtcOpus_MultistreamDecoderCreate(v12, v6 - v5, v3, v4, v5);
  if (!result)
  {
    operator new();
  }

  *a2 = 0;
  return result;
}

void webrtc::AudioDecoderMultiChannelOpusImpl::~AudioDecoderMultiChannelOpusImpl(webrtc::AudioDecoderMultiChannelOpusImpl *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *v2;
    if (*v2 || (v3 = v2[1]) != 0)
    {
      free(v3);
    }

    free(v2);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }
}

{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *v2;
    if (*v2 || (v3 = v2[1]) != 0)
    {
      free(v3);
    }

    free(v2);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::AudioDecoderMultiChannelOpusImpl::SdpToConfig(webrtc::AudioDecoderMultiChannelOpusImpl *this@<X0>, uint64_t a2@<X8>)
{
  v5 = *(this + 4);
  Format = webrtc::GetFormatParameter<int>(this, "num_streams", 0xBuLL);
  if ((Format & 0x100000000) == 0 || (v7 = Format, v8 = webrtc::GetFormatParameter<int>(this, "coupled_streams", 0xFuLL), (v8 & 0x100000000) == 0))
  {
    *a2 = 0;
    *(a2 + 40) = 0;
    return;
  }

  v9 = v8;
  webrtc::GetFormatParameter<std::vector<unsigned char>>(this, "channel_mapping", 0xFuLL, &__p);
  if ((v18 & 1) == 0)
  {
    v11 = 0;
LABEL_23:
    *a2 = 0;
    goto LABEL_24;
  }

  v10 = (v17 - __p);
  if (v17 != __p)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if ((v5 - 1) > 0x17 || (v7 & 0x80000000) != 0 || v9 > v7 || v10 != v5)
  {
    goto LABEL_22;
  }

  v12 = v9 + v7;
  if (v10)
  {
    v13 = 0;
    do
    {
      v14 = *v13;
      if (v14 != 255 && v12 <= v14)
      {
        goto LABEL_22;
      }
    }

    while (++v13 != v10);
  }

  if (v12 >= 255)
  {
LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  *a2 = v5;
  *(a2 + 4) = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = 0;
  *(a2 + 24) = v10;
  v11 = 1;
  *(a2 + 32) = 0;
LABEL_24:
  *(a2 + 40) = v11;
  if (v18 == 1 && __p)
  {
    v17 = __p;
    operator delete(__p);
  }
}

uint64_t webrtc::GetFormatParameter<int>(uint64_t a1, void **a2, size_t a3)
{
  webrtc::GetFormatParameter(a1, a2, a3, &v11);
  if (v12 == 1)
  {
    __p = v11;
    memset(&v11, 0, sizeof(v11));
    v4 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    size = __p.__r_.__value_.__l.__size_;
  }

  else
  {
    LODWORD(v4) = 0;
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
  }

  if ((v4 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((v4 & 0x80u) == 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = size;
  }

  v7 = webrtc::string_to_number_internal::ParseSigned(&p_p->__r_.__value_.__l.__data_, v6, 0xAuLL);
  v9 = v8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v12 == 1 && SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if ((v9 & ((v7 + 0x80000000) >> 32 == 0)) != 0)
  {
    return v7 | 0x100000000;
  }

  else
  {
    return 0;
  }
}

void webrtc::AudioDecoderMultiChannelOpusImpl::ParsePayload(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (WebRtcOpus_PacketHasFec(*(a1 + 16), *a1))
  {
    v3 = *(a1 + 16);
    v4 = *a1;
    if (WebRtcOpus_PacketHasFec(v3, *a1))
    {
      WebRtcOpus_PacketHasFec(v3, v4);
    }

    if (*a1)
    {
      operator new[]();
    }

    operator new();
  }

  operator new();
}

unint64_t webrtc::AudioDecoderMultiChannelOpusImpl::PacketDurationRedundant(webrtc::AudioDecoderMultiChannelOpusImpl *this, unsigned __int8 *a2, uint64_t a3)
{
  if (!WebRtcOpus_PacketHasFec(a2, a3))
  {
    v8 = *(this + 1);
    if (!a3)
    {
      return (10 * (*(v8 + 28) / 1000));
    }

    if (a3 < 1)
    {
      return 0;
    }

    v9 = *a2;
    if ((v9 & 3) != 0)
    {
      if ((v9 & 3) == 3)
      {
        if (a3 == 1)
        {
          return 0;
        }

        v12 = a2[1] & 0x3F;
        v13 = *(v8 + 28);
        if ((v9 & 0x80) != 0)
        {
          goto LABEL_32;
        }

LABEL_23:
        v14 = 1374389535 * (v13 << ((*a2 >> 3) & 3));
        v15 = (v14 >> 37) + (v14 >> 63);
        if (((v9 >> 3) & 3) == 3)
        {
          v16 = 60 * v13 / 1000;
        }

        else
        {
          v16 = v15;
        }

        v17 = v13 / 50;
        if ((v9 & 8) == 0)
        {
          v17 = v13 / 100;
        }

        if ((~v9 & 0x60) != 0)
        {
          v18 = v16;
        }

        else
        {
          v18 = v17;
        }

        goto LABEL_33;
      }

      v12 = 2;
      v13 = *(v8 + 28);
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v12 = 1;
      v13 = *(v8 + 28);
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_32:
    v19 = 1374389535 * (v13 << ((*a2 >> 3) & 3));
    v18 = (v19 >> 39) + (v19 >> 63);
LABEL_33:
    v20 = v18 * v12;
    if (v20 <= 120 * v13 / 1000)
    {
      return v20;
    }

    else
    {
      return 0;
    }
  }

  result = WebRtcOpus_PacketHasFec(a2, a3);
  if (result)
  {
    v7 = *a2;
    if (*a2 < 0)
    {
      v10 = 48000 << ((*a2 >> 3) & 3);
      if (v10 >> 9 >= 0x177)
      {
        return v10 / 0x190;
      }

      else
      {
        return 0;
      }
    }

    else if ((~v7 & 0x60) != 0)
    {
      v11 = (v7 >> 3) & 3;
      if (v11 == 3)
      {
        return 2880;
      }

      else
      {
        return (42949673 * (48000 << v11)) >> 32;
      }
    }

    else if ((v7 & 8) != 0)
    {
      return 960;
    }

    else
    {
      return 480;
    }
  }

  return result;
}

uint64_t webrtc::AudioDecoderMultiChannelOpusImpl::DecodeInternal(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, int16x8_t *a5, int *a6)
{
  v10 = 1;
  result = WebRtcOpus_Decode(*(a1 + 8), a2, a3, a5, &v10);
  if (result >= 1)
  {
    result = (*(a1 + 16) * result);
  }

  if (v10 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  *a6 = v9;
  return result;
}

uint64_t webrtc::AudioDecoderMultiChannelOpusImpl::DecodeRedundantInternal(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, int16x8_t *a5, int *a6)
{
  if (WebRtcOpus_PacketHasFec(a2, a3))
  {
    v14 = 1;
    result = WebRtcOpus_DecodeFec(*(a1 + 8), a2, a3, a5, &v14);
    if (result >= 1)
    {
      result = (*(a1 + 16) * result);
    }

    v12 = v14;
  }

  else
  {
    v15 = 1;
    result = WebRtcOpus_Decode(*(a1 + 8), a2, a3, a5, &v15);
    if (result >= 1)
    {
      result = (*(a1 + 16) * result);
    }

    v12 = v15;
  }

  if (v12 == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  *a6 = v13;
  return result;
}

uint64_t webrtc::AudioDecoderMultiChannelOpusImpl::Reset(webrtc::AudioDecoderMultiChannelOpusImpl *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 1);
  if (*v8)
  {
    result = opus_decoder_ctl(*v8, 4028, a3, a4, a5, a6, a7, a8, v10);
  }

  else
  {
    result = opus_multistream_decoder_ctl(*(v8 + 8), 4028, a3, a4, a5, a6, a7, a8, v10);
  }

  *(v8 + 24) = 0;
  return result;
}

uint64_t webrtc::AudioDecoderMultiChannelOpusImpl::PacketDuration(webrtc::AudioDecoderMultiChannelOpusImpl *this, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(this + 1);
  if (!a3)
  {
    return (10 * (*(v3 + 28) / 1000));
  }

  if (a3 < 1)
  {
    return 0;
  }

  v4 = *a2;
  if ((v4 & 3) != 0)
  {
    if ((v4 & 3) == 3)
    {
      if (a3 == 1)
      {
        return 0;
      }

      v6 = a2[1] & 0x3F;
      v7 = *(v3 + 28);
      if ((v4 & 0x80) != 0)
      {
        goto LABEL_18;
      }

LABEL_9:
      v8 = 1374389535 * (v7 << ((*a2 >> 3) & 3));
      v9 = (v8 >> 37) + (v8 >> 63);
      if (((v4 >> 3) & 3) == 3)
      {
        v10 = 60 * v7 / 1000;
      }

      else
      {
        v10 = v9;
      }

      v11 = v7 / 50;
      if ((v4 & 8) == 0)
      {
        v11 = v7 / 100;
      }

      if ((~v4 & 0x60) != 0)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      goto LABEL_19;
    }

    v6 = 2;
    v7 = *(v3 + 28);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 1;
    v7 = *(v3 + 28);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_18:
  v13 = 1374389535 * (v7 << ((*a2 >> 3) & 3));
  v12 = (v13 >> 39) + (v13 >> 63);
LABEL_19:
  v14 = v12 * v6;
  if (v14 <= 120 * v7 / 1000)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

void webrtc::OpusFrame::~OpusFrame(webrtc::OpusFrame *this)
{
  *this = &unk_28828D628;
  v1 = *(this + 4);
  *(this + 4) = 0;
  if (v1)
  {
    MEMORY[0x2743DA520](v1, 0x1000C8077774924);
  }
}

{
  *this = &unk_28828D628;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::OpusFrame::Duration(webrtc::OpusFrame *this)
{
  v1 = **(this + 1);
  if (*(this + 40) == 1)
  {
    v2 = (*(v1 + 64))();
  }

  else
  {
    v2 = (*(v1 + 72))();
  }

  return v2 & ~(v2 >> 31);
}

uint64_t webrtc::OpusFrame::Decode@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = 1;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = (*(*v10 + 88))(v10);
  v12 = 2 * a3;
  v13 = *v10;
  if (v7 == 1)
  {
    v14 = (*(v13 + 64))(v10, v8, v9);
    if ((v14 & 0x80000000) == 0 && (v15 = v14, result = (*(*v10 + 96))(v10), result * (2 * v15) > v12) || (result = (*(*v10 + 104))(v10, v8, v9, v11, a2, &v21), (result & 0x80000000) != 0))
    {
LABEL_10:
      v20 = 0;
      *a4 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v17 = (*(v13 + 72))(v10, v8, v9);
    if ((v17 & 0x80000000) == 0)
    {
      v18 = v17;
      result = (*(*v10 + 96))(v10);
      if (result * (2 * v18) > v12)
      {
        goto LABEL_10;
      }
    }

    result = (*(*v10 + 112))(v10, v8, v9, v11, a2, &v21);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_10;
    }
  }

  v19 = v21;
  *a4 = result;
  *(a4 + 8) = v19;
  v20 = 1;
LABEL_11:
  *(a4 + 16) = v20;
  return result;
}

uint64_t webrtc::AudioDecoderOpusImpl::AudioDecoderOpusImpl(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_28828D660;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  (*(*a2 + 16))(__p, a2, "WebRTC-Audio-OpusGeneratePlc", 28);
  v5 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  if (v5 < 7)
  {
    v6 = 0;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v7 = __p[0];
  if ((v21 & 0x80u) == 0)
  {
    v7 = __p;
  }

  v8 = *v7;
  v9 = *(v7 + 3);
  v6 = v8 == 1650552389 && v9 == 1684368482;
  if (v21 < 0)
  {
LABEL_15:
    operator delete(__p[0]);
  }

LABEL_16:
  *(a1 + 28) = v6;
  WebRtcOpus_DecoderCreate((a1 + 8), *(a1 + 16), *(a1 + 24));
  v17 = *(a1 + 8);
  if (*v17)
  {
    opus_decoder_ctl(*v17, 4028, v11, v12, v13, v14, v15, v16, v19);
  }

  else
  {
    opus_multistream_decoder_ctl(*(v17 + 8), 4028, v11, v12, v13, v14, v15, v16, v19);
  }

  *(v17 + 24) = 0;
  return a1;
}

void webrtc::AudioDecoderOpusImpl::~AudioDecoderOpusImpl(webrtc::AudioDecoderOpusImpl *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *v1;
    if (*v1 || (v2 = v1[1]) != 0)
    {
      free(v2);
    }

    free(v1);
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *v1;
    if (*v1 || (v2 = v1[1]) != 0)
    {
      free(v2);
    }

    free(v1);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::AudioDecoderOpusImpl::ParsePayload(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (!WebRtcOpus_PacketHasFec(*(a1 + 16), *a1))
  {
    operator new();
  }

  v3 = *(a1 + 16);
  v4 = *a1;
  if (WebRtcOpus_PacketHasFec(v3, *a1))
  {
    if (WebRtcOpus_PacketHasFec(v3, v4))
    {
      if (*a1)
      {
        goto LABEL_13;
      }

LABEL_11:
      operator new();
    }

LABEL_10:
    if (*a1)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v4)
  {
    if (v4 < 1 || (*v3 & 3) != 0 && (*v3 & 3) == 3 && v4 == 1)
    {
      goto LABEL_10;
    }

    if (!*a1)
    {
      goto LABEL_11;
    }
  }

  else if (!*a1)
  {
    goto LABEL_11;
  }

LABEL_13:
  operator new[]();
}

uint64_t webrtc::AudioDecoderOpusImpl::PacketDurationRedundant(webrtc::AudioDecoderOpusImpl *this, unsigned __int8 *a2, uint64_t a3)
{
  if (!WebRtcOpus_PacketHasFec(a2, a3))
  {
    v14 = *(this + 1);
    if (!a3)
    {
      return (10 * (*(v14 + 28) / 1000));
    }

    if (a3 < 1)
    {
      return 0;
    }

    v15 = *a2;
    if ((v15 & 3) != 0)
    {
      if ((v15 & 3) == 3)
      {
        if (a3 == 1)
        {
          return 0;
        }

        v18 = a2[1] & 0x3F;
        v19 = *(v14 + 28);
        if ((v15 & 0x80) != 0)
        {
          goto LABEL_40;
        }

LABEL_31:
        v20 = 1374389535 * (v19 << ((*a2 >> 3) & 3));
        v21 = (v20 >> 37) + (v20 >> 63);
        if (((v15 >> 3) & 3) == 3)
        {
          v22 = 60 * v19 / 1000;
        }

        else
        {
          v22 = v21;
        }

        v23 = v19 / 50;
        if ((v15 & 8) == 0)
        {
          v23 = v19 / 100;
        }

        if ((~v15 & 0x60) != 0)
        {
          v24 = v22;
        }

        else
        {
          v24 = v23;
        }

        goto LABEL_41;
      }

      v18 = 2;
      v19 = *(v14 + 28);
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v18 = 1;
      v19 = *(v14 + 28);
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_40:
    v25 = 1374389535 * (v19 << ((*a2 >> 3) & 3));
    v24 = (v25 >> 39) + (v25 >> 63);
LABEL_41:
    v26 = v24 * v18;
    if (v26 <= 120 * v19 / 1000)
    {
      return v26;
    }

    else
    {
      return 0;
    }
  }

  v6 = *(this + 6);
  result = WebRtcOpus_PacketHasFec(a2, a3);
  if (result)
  {
    v8 = *a2;
    if (*a2 < 0)
    {
      v16 = 1374389535 * (v6 << ((*a2 >> 3) & 3));
      v13 = (v16 >> 39) + (v16 >> 63);
    }

    else
    {
      v9 = 1374389535 * (v6 << ((*a2 >> 3) & 3));
      v10 = (v9 >> 37) + (v9 >> 63);
      if (((v8 >> 3) & 3) == 3)
      {
        v11 = 60 * v6 / 1000;
      }

      else
      {
        v11 = v10;
      }

      v12 = v6 / 50;
      if ((v8 & 8) == 0)
      {
        v12 = v6 / 100;
      }

      if ((~v8 & 0x60) != 0)
      {
        v13 = v11;
      }

      else
      {
        v13 = v12;
      }
    }

    if (v13 > 120 * (v6 / 1000) || v13 < 10 * (v6 / 1000))
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }

  return result;
}

uint64_t webrtc::AudioDecoderOpusImpl::DecodeInternal(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, int16x8_t *a5, int *a6)
{
  v10 = 1;
  result = WebRtcOpus_Decode(*(a1 + 8), a2, a3, a5, &v10);
  if (result >= 1)
  {
    result = (result * *(a1 + 16));
  }

  if (v10 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  *a6 = v9;
  return result;
}

uint64_t webrtc::AudioDecoderOpusImpl::DecodeRedundantInternal(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, int16x8_t *a5, int *a6)
{
  if (WebRtcOpus_PacketHasFec(a2, a3))
  {
    v14 = 1;
    result = WebRtcOpus_DecodeFec(*(a1 + 8), a2, a3, a5, &v14);
    if (result >= 1)
    {
      result = (result * *(a1 + 16));
    }

    v12 = v14;
  }

  else
  {
    v15 = 1;
    result = WebRtcOpus_Decode(*(a1 + 8), a2, a3, a5, &v15);
    if (result >= 1)
    {
      result = (result * *(a1 + 16));
    }

    v12 = v15;
  }

  if (v12 == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  *a6 = v13;
  return result;
}

uint64_t webrtc::AudioDecoderOpusImpl::Reset(webrtc::AudioDecoderOpusImpl *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 1);
  if (*v8)
  {
    result = opus_decoder_ctl(*v8, 4028, a3, a4, a5, a6, a7, a8, v10);
  }

  else
  {
    result = opus_multistream_decoder_ctl(*(v8 + 8), 4028, a3, a4, a5, a6, a7, a8, v10);
  }

  *(v8 + 24) = 0;
  return result;
}

uint64_t webrtc::AudioDecoderOpusImpl::PacketDuration(webrtc::AudioDecoderOpusImpl *this, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(this + 1);
  if (!a3)
  {
    return (10 * (*(v3 + 28) / 1000));
  }

  if (a3 < 1)
  {
    return 0;
  }

  v4 = *a2;
  if ((v4 & 3) != 0)
  {
    if ((v4 & 3) == 3)
    {
      if (a3 == 1)
      {
        return 0;
      }

      v6 = a2[1] & 0x3F;
      v7 = *(v3 + 28);
      if ((v4 & 0x80) != 0)
      {
        goto LABEL_18;
      }

LABEL_9:
      v8 = 1374389535 * (v7 << ((*a2 >> 3) & 3));
      v9 = (v8 >> 37) + (v8 >> 63);
      if (((v4 >> 3) & 3) == 3)
      {
        v10 = 60 * v7 / 1000;
      }

      else
      {
        v10 = v9;
      }

      v11 = v7 / 50;
      if ((v4 & 8) == 0)
      {
        v11 = v7 / 100;
      }

      if ((~v4 & 0x60) != 0)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      goto LABEL_19;
    }

    v6 = 2;
    v7 = *(v3 + 28);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 1;
    v7 = *(v3 + 28);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_18:
  v13 = 1374389535 * (v7 << ((*a2 >> 3) & 3));
  v12 = (v13 >> 39) + (v13 >> 63);
LABEL_19:
  v14 = v12 * v6;
  if (v14 <= 120 * v7 / 1000)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}