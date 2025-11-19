void sub_297309AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x200]);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x240]);
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  std::vector<std::string>::~vector[abi:ne200100]((v19 - 248));
  if (*(a19 + 23) < 0)
  {
    operator delete(*a19);
  }

  _Unwind_Resume(a1);
}

uint64_t util::getNumberOfLogDumps(uint64_t a1, uint64_t a2)
{
  v173 = *MEMORY[0x29EDCA608];
  v153 = 0;
  v154 = 0;
  v155 = 0;
  v150 = 0u;
  v151 = 0u;
  v152 = 0xAAAAAAAA3F800000;
  v3 = operator new(0x48uLL);
  v4 = v3;
  strcpy(v3, "[0-9]{4}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2,4}-[0-9]{3}");
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v148[32] = v5;
  v149 = v5;
  *v148 = v5;
  *&v148[16] = v5;
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = v7 + 64;
  v133 = v3;
  if (v7 + 64 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 <= 0x16)
  {
    memset(buf, 0, 24);
    v10 = buf;
    HIBYTE(buf[0].__end_cap_.__value_) = v7 + 64;
LABEL_12:
    v11 = *a2;
    if (v6 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    memmove(v10, v12, v7);
    goto LABEL_16;
  }

  if ((v8 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v8 | 7) + 1;
  }

  v10 = operator new(v9);
  buf[0].__end_ = (v7 + 64);
  buf[0].__end_cap_.__value_ = (v9 | 0x8000000000000000);
  buf[0].__begin_ = v10;
  if (v7)
  {
    goto LABEL_12;
  }

LABEL_16:
  v13 = v10 + v7;
  v14 = *(v4 + 3);
  v16 = *v4;
  v15 = *(v4 + 1);
  *(v13 + 2) = *(v4 + 2);
  *(v13 + 3) = v14;
  *v13 = v16;
  *(v13 + 1) = v15;
  v13[64] = 0;
  value_high = SHIBYTE(buf[0].__end_cap_.__value_);
  if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(buf[0].__end_cap_.__value_) - 21) < 2)
    {
      v18 = (SHIBYTE(buf[0].__end_cap_.__value_) + 2);
      v19 = buf;
      v20 = 22;
LABEL_22:
      v21 = 2 * v20;
      if (v18 > 2 * v20)
      {
        v21 = v18;
      }

      if ((v21 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v21 | 7) + 1;
      }

      if (v21 >= 0x17)
      {
        v23 = v22;
      }

      else
      {
        v23 = 23;
      }

      v24 = v20 == 22;
      goto LABEL_31;
    }

    begin = buf;
    *(&buf[0].__begin_ + SHIBYTE(buf[0].__end_cap_.__value_)) = 10798;
    v29 = (value_high + 2);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  value_high = buf[0].__end_;
  v20 = (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v20 - buf[0].__end_ >= 2)
  {
    begin = buf[0].__begin_;
    *(&buf[0].__begin_->first.__i_ + buf[0].__end_) = 10798;
    v29 = (value_high + 2);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
LABEL_37:
      HIBYTE(buf[0].__end_cap_.__value_) = v29 & 0x7F;
LABEL_40:
      v27 = v29 + begin;
      goto LABEL_41;
    }

LABEL_39:
    buf[0].__end_ = v29;
    goto LABEL_40;
  }

  v18 = (&buf[0].__end_->first.__i_ + 2);
  if ((0x7FFFFFFFFFFFFFF7 - (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL)) < (&buf[0].__end_->first.__i_ - v20 + 2))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = buf[0].__begin_;
  if (v20 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_22;
  }

  v24 = 0;
  v23 = 0x7FFFFFFFFFFFFFF7;
LABEL_31:
  v25 = operator new(v23);
  v26 = v25;
  if (value_high)
  {
    memmove(v25, v19, value_high);
  }

  *(&v26->first.__i_ + value_high) = 10798;
  if (!v24)
  {
    operator delete(v19);
  }

  buf[0].__end_ = v18;
  buf[0].__end_cap_.__value_ = (v23 | 0x8000000000000000);
  buf[0].__begin_ = v26;
  v27 = v18 + v26;
LABEL_41:
  *v27 = 0;
  *__p = buf[0];
  memset(buf, 0, 24);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v148, __p, 0);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }
  }

  else if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

  operator delete(buf[0].__begin_);
LABEL_43:
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v146 = v30;
  v147 = v30;
  v145 = v30;
  *&v144[0].__locale_ = v30;
  v31 = *(a2 + 23);
  if (v31 >= 0)
  {
    v32 = *(a2 + 23);
  }

  else
  {
    v32 = *(a2 + 8);
  }

  v33 = v32 + 64;
  if (v32 + 64 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v33 <= 0x16)
  {
    memset(buf, 0, 24);
    v35 = buf;
    HIBYTE(buf[0].__end_cap_.__value_) = v32 + 64;
LABEL_54:
    v36 = *a2;
    if (v31 >= 0)
    {
      v37 = a2;
    }

    else
    {
      v37 = *a2;
    }

    memmove(v35, v37, v32);
    goto LABEL_58;
  }

  if ((v33 | 7) == 0x17)
  {
    v34 = 25;
  }

  else
  {
    v34 = (v33 | 7) + 1;
  }

  v35 = operator new(v34);
  buf[0].__end_ = (v32 + 64);
  buf[0].__end_cap_.__value_ = (v34 | 0x8000000000000000);
  buf[0].__begin_ = v35;
  if (v32)
  {
    goto LABEL_54;
  }

LABEL_58:
  v38 = v35 + v32;
  v39 = *(v4 + 3);
  v41 = *v4;
  v40 = *(v4 + 1);
  *(v38 + 2) = *(v4 + 2);
  *(v38 + 3) = v39;
  *v38 = v41;
  *(v38 + 1) = v40;
  v38[64] = 0;
  end = SHIBYTE(buf[0].__end_cap_.__value_);
  if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(buf[0].__end_cap_.__value_) < 0x17)
    {
      v43 = (SHIBYTE(buf[0].__end_cap_.__value_) + 29);
      v44 = buf;
      v45 = 22;
LABEL_66:
      v46 = 2 * v45;
      if (v43 > 2 * v45)
      {
        v46 = v43;
      }

      if ((v46 | 7) == 0x17)
      {
        v47 = 25;
      }

      else
      {
        v47 = (v46 | 7) + 1;
      }

      if (v46 >= 0x17)
      {
        v48 = v47;
      }

      else
      {
        v48 = 23;
      }

      v49 = v45 == 22;
      goto LABEL_75;
    }

    v53 = buf;
    qmemcpy(buf + SHIBYTE(buf[0].__end_cap_.__value_), "(?=-*)(?!(\\.json|\\.tailspin))", 29);
    v54 = end + 29;
    HIBYTE(buf[0].__end_cap_.__value_) = (end + 29) & 0x7F;
LABEL_82:
    v52 = &v53[v54];
    goto LABEL_83;
  }

  end = buf[0].__end_;
  v45 = (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v45 - buf[0].__end_ >= 0x1D)
  {
    v53 = buf[0].__begin_;
    qmemcpy(buf[0].__begin_ + buf[0].__end_, "(?=-*)(?!(\\.json|\\.tailspin))", 29);
    v54 = end + 29;
    buf[0].__end_ = (end + 29);
    goto LABEL_82;
  }

  v43 = (buf[0].__end_ + 29);
  if ((0x7FFFFFFFFFFFFFF7 - (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL)) < (&buf[0].__end_[1].first.__i_ - v45 + 5))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v44 = buf[0].__begin_;
  if (v45 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_66;
  }

  v49 = 0;
  v48 = 0x7FFFFFFFFFFFFFF7;
LABEL_75:
  v50 = operator new(v48);
  v51 = v50;
  if (end)
  {
    memmove(v50, v44, end);
  }

  qmemcpy(v51 + end, "(?=-*)(?!(\\.json|\\.tailspin))", 29);
  if (!v49)
  {
    operator delete(v44);
  }

  buf[0].__end_ = v43;
  buf[0].__end_cap_.__value_ = (v48 | 0x8000000000000000);
  buf[0].__begin_ = v51;
  v52 = v43 + v51;
LABEL_83:
  *v52 = 0;
  *__p = buf[0];
  memset(buf, 0, 24);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v144, __p, 0);
  if ((__p[23] & 0x80000000) == 0)
  {
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

LABEL_88:
    operator delete(buf[0].__begin_);
    v55 = a1;
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_89;
  }

  operator delete(*__p);
  if (SHIBYTE(buf[0].__end_cap_.__value_) < 0)
  {
    goto LABEL_88;
  }

LABEL_85:
  v55 = a1;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
LABEL_86:
    v143 = *v55;
    goto LABEL_90;
  }

LABEL_89:
  std::string::__init_copy_ctor_external(&v143, v55->__r_.__value_.__l.__data_, v55->__r_.__value_.__l.__size_);
LABEL_90:
  std::locale::locale(&v137, v148);
  v138 = *&v148[8];
  v139 = *&v148[24];
  v140 = *&v148[40];
  v141 = v149;
  if (v149)
  {
    atomic_fetch_add_explicit((v149 + 8), 1uLL, memory_order_relaxed);
  }

  v142 = *(&v149 + 1);
  support::fs::getFilteredFiles(&v143, &v137, &v153, 0);
  v56 = v141;
  if (!v141 || atomic_fetch_add(&v141->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    std::locale::~locale(&v137);
    if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

LABEL_98:
    operator delete(v143.__r_.__value_.__l.__data_);
    v57 = v153;
    v134 = v154;
    if (v153 == v154)
    {
      goto LABEL_252;
    }

LABEL_101:
    *&v58 = 0xAAAAAAAAAAAAAAAALL;
    *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v171 = v58;
    v168 = 0xAAAAAAAAAAAAAA00;
    buf[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
    v166 = 0;
    v167 = 0;
    v169 = 0;
    v170 = 0;
    LOBYTE(v171) = 0;
    BYTE8(v171) = 0;
    v172 = 0;
    memset(buf, 0, 41);
    v163 = v58;
    v160 = 0xAAAAAAAAAAAAAA00;
    v157 = 0xAAAAAAAAAAAAAAAALL;
    v158 = 0;
    v159 = 0;
    v161 = 0;
    v162 = 0;
    LOBYTE(v163) = 0;
    BYTE8(v163) = 0;
    v164 = 0;
    memset(__p, 0, sizeof(__p));
    second = *(&v57->matched + 7);
    if (second >= 0)
    {
      first = v57;
    }

    else
    {
      first = v57->first;
    }

    if (second < 0)
    {
      second = v57->second;
    }

    v61 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v144, first, &second[first], __p, 0);
    v62 = *(&v57->matched + 7);
    if (v62 >= 0)
    {
      v63 = v57;
    }

    else
    {
      v63 = v57->first;
    }

    if (v62 < 0)
    {
      v62 = v57->second;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(buf, v63, &v62[v63], __p, 0);
    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    if (!v61)
    {
      goto LABEL_188;
    }

    p_matched = &buf[0].__begin_->matched;
    if (buf[0].__end_ == buf[0].__begin_)
    {
      p_matched = &buf[1].__end_cap_;
    }

    if (*p_matched != 1)
    {
      v72 = 0;
      v73 = 0;
      v71 = 0;
      __dst = 0uLL;
      v136 = 0;
LABEL_127:
      if ((v71 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = v73;
      }

      if ((v71 & 0x80u) == 0)
      {
        v75 = v71;
      }

      else
      {
        v75 = v72;
      }

      v76 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](__p, p_dst, v75);
      v77 = v76;
      v78 = *(&v150 + 1);
      if (!*(&v150 + 1))
      {
        v80 = 0xAAAAAAAAAAAAAAAALL;
        goto LABEL_181;
      }

      v79 = vcnt_s8(*(&v150 + 8));
      v79.i16[0] = vaddlv_u8(v79);
      if (v79.u32[0] > 1uLL)
      {
        v80 = v76;
        if (v76 >= *(&v150 + 1))
        {
          v80 = v76 % *(&v150 + 1);
        }
      }

      else
      {
        v80 = (*(&v150 + 1) - 1) & v76;
      }

      v81 = *(v150 + 8 * v80);
      if (!v81)
      {
        goto LABEL_181;
      }

      v82 = *v81;
      if (!*v81)
      {
        goto LABEL_181;
      }

      v83 = HIBYTE(v136);
      if (v136 >= 0)
      {
        v84 = HIBYTE(v136);
      }

      else
      {
        v84 = *(&__dst + 1);
      }

      if (v136 >= 0)
      {
        v85 = &__dst;
      }

      else
      {
        v85 = __dst;
      }

      if (v79.u32[0] < 2uLL)
      {
        do
        {
          v90 = v82[1];
          if (v90 == v77)
          {
            v91 = *(v82 + 39);
            v92 = v91;
            if (v91 < 0)
            {
              v91 = v82[3];
            }

            if (v91 == v84)
            {
              v93 = v92 >= 0 ? (v82 + 2) : v82[2];
              if (!memcmp(v93, v85, v84))
              {
                v4 = v133;
                goto LABEL_173;
              }
            }
          }

          else if ((v90 & (v78 - 1)) != v80)
          {
            break;
          }

          v82 = *v82;
        }

        while (v82);
        v4 = v133;
LABEL_181:
        v95 = operator new(0x28uLL);
        *__p = v95;
        *&__p[8] = &v150;
        *&__p[16] = 1;
        *v95 = 0;
        v95[1] = v77;
        *(v95 + 1) = __dst;
        v95[4] = v136;
        __dst = 0uLL;
        v136 = 0;
        v96 = (*(&v151 + 1) + 1);
        if (v78 && (*&v152 * v78) >= v96)
        {
          v97 = v150;
          v98 = *(v150 + 8 * v80);
          if (v98)
          {
            goto LABEL_184;
          }

LABEL_232:
          *v95 = v151;
          *&v151 = v95;
          *(v97 + 8 * v80) = &v151;
          if (*v95)
          {
            v117 = *(*v95 + 8);
            if ((v78 & (v78 - 1)) != 0)
            {
              if (v117 >= v78)
              {
                v117 %= v78;
              }

              v98 = (v97 + 8 * v117);
            }

            else
            {
              v98 = (v97 + 8 * (v117 & (v78 - 1)));
            }

LABEL_185:
            *v98 = v95;
          }

          ++*(&v151 + 1);
          if (v136 < 0)
          {
            goto LABEL_187;
          }

          goto LABEL_188;
        }

        v99 = (v78 & (v78 - 1)) != 0;
        if (v78 < 3)
        {
          v99 = 1;
        }

        v100 = v99 | (2 * v78);
        v101 = vcvtps_u32_f32(v96 / *&v152);
        if (v100 <= v101)
        {
          prime = v101;
        }

        else
        {
          prime = v100;
        }

        if (prime == 1)
        {
          prime = 2;
        }

        else if ((prime & (prime - 1)) != 0)
        {
          prime = std::__next_prime(prime);
          v78 = *(&v150 + 1);
        }

        if (prime <= v78)
        {
          if (prime >= v78)
          {
            goto LABEL_230;
          }

          v111 = vcvtps_u32_f32(*(&v151 + 1) / *&v152);
          if (v78 < 3 || (v112 = vcnt_s8(v78), v112.i16[0] = vaddlv_u8(v112), v112.u32[0] > 1uLL))
          {
            v111 = std::__next_prime(v111);
          }

          else
          {
            v113 = 1 << -__clz(v111 - 1);
            if (v111 >= 2)
            {
              v111 = v113;
            }
          }

          if (prime <= v111)
          {
            prime = v111;
          }

          if (prime < v78)
          {
            if (prime)
            {
              goto LABEL_200;
            }

            v118 = v150;
            *&v150 = 0;
            if (v118)
            {
              operator delete(v118);
            }

            v78 = 0;
            *(&v150 + 1) = 0;
            v116 = -1;
            goto LABEL_231;
          }

          v78 = *(&v150 + 1);
          v116 = *(&v150 + 1) - 1;
          if ((*(&v150 + 1) & (*(&v150 + 1) - 1)) == 0)
          {
            goto LABEL_231;
          }

          goto LABEL_247;
        }

LABEL_200:
        if (prime >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v103 = operator new(8 * prime);
        v104 = v150;
        *&v150 = v103;
        if (v104)
        {
          operator delete(v104);
          v103 = v150;
        }

        *(&v150 + 1) = prime;
        bzero(v103, 8 * prime);
        v105 = v151;
        if (!v151)
        {
          goto LABEL_229;
        }

        v106 = *(v151 + 8);
        v107 = prime - 1;
        if ((prime & (prime - 1)) == 0)
        {
          v108 = v106 & v107;
          *(v103 + v108) = &v151;
          while (1)
          {
            v109 = *v105;
            if (!*v105)
            {
              break;
            }

            v110 = v109[1] & v107;
            if (v110 == v108)
            {
              v105 = *v105;
            }

            else if (*(v103 + v110))
            {
              *v105 = *v109;
              *v109 = **(v103 + v110);
              **(v103 + v110) = v109;
            }

            else
            {
              *(v103 + v110) = v105;
              v105 = v109;
              v108 = v110;
            }
          }

          goto LABEL_229;
        }

        if (v106 >= prime)
        {
          v106 %= prime;
        }

        *(v103 + v106) = &v151;
        v114 = *v105;
        if (!*v105)
        {
LABEL_229:
          v78 = prime;
LABEL_230:
          v116 = v78 - 1;
          if ((v78 & (v78 - 1)) == 0)
          {
LABEL_231:
            v80 = v116 & v77;
            v97 = v150;
            v98 = *(v150 + 8 * v80);
            if (!v98)
            {
              goto LABEL_232;
            }

LABEL_184:
            *v95 = *v98;
            goto LABEL_185;
          }

LABEL_247:
          if (v77 >= v78)
          {
            v80 = v77 % v78;
            v97 = v150;
            v98 = *(v150 + 8 * (v77 % v78));
            if (!v98)
            {
              goto LABEL_232;
            }
          }

          else
          {
            v80 = v77;
            v97 = v150;
            v98 = *(v150 + 8 * v77);
            if (!v98)
            {
              goto LABEL_232;
            }
          }

          goto LABEL_184;
        }

        while (1)
        {
LABEL_224:
          v115 = v114[1];
          if (v115 >= prime)
          {
            v115 %= prime;
          }

          if (v115 == v106)
          {
            goto LABEL_223;
          }

          if (*(v103 + v115))
          {
            break;
          }

          *(v103 + v115) = v105;
          v105 = v114;
          v114 = *v114;
          v106 = v115;
          if (!v114)
          {
            goto LABEL_229;
          }
        }

        *v105 = *v114;
        *v114 = **(v103 + v115);
        **(v103 + v115) = v114;
        v114 = v105;
LABEL_223:
        v105 = v114;
        v114 = *v114;
        if (!v114)
        {
          goto LABEL_229;
        }

        goto LABEL_224;
      }

      while (1)
      {
        v86 = v82[1];
        if (v86 == v77)
        {
          v87 = *(v82 + 39);
          v88 = v87;
          if (v87 < 0)
          {
            v87 = v82[3];
          }

          if (v87 == v84)
          {
            v89 = v88 >= 0 ? (v82 + 2) : v82[2];
            if (!memcmp(v89, v85, v84))
            {
LABEL_173:
              if (v83 < 0)
              {
LABEL_187:
                operator delete(__dst);
              }

LABEL_188:
              if (buf[0].__begin_)
              {
                buf[0].__end_ = buf[0].__begin_;
                operator delete(buf[0].__begin_);
              }

              if (++v57 == v134)
              {
                goto LABEL_252;
              }

              goto LABEL_101;
            }
          }
        }

        else
        {
          if (v86 >= v78)
          {
            v86 %= v78;
          }

          if (v86 != v80)
          {
            goto LABEL_181;
          }
        }

        v82 = *v82;
        if (!v82)
        {
          goto LABEL_181;
        }
      }
    }

    v65 = &buf[1];
    if (buf[0].__end_ != buf[0].__begin_)
    {
      v65 = buf[0].__begin_;
    }

    i = v65->first.__i_;
    p_i = &buf[0].__begin_->second.__i_;
    if (buf[0].__end_ == buf[0].__begin_)
    {
      p_i = &buf[1].__end_;
    }

    v68 = *p_i;
    v69 = *p_i - i;
    if (v69 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v69 > 0x16)
    {
      if ((v69 | 7) == 0x17)
      {
        v94 = 25;
      }

      else
      {
        v94 = (v69 | 7) + 1;
      }

      v70 = operator new(v94);
      *(&__dst + 1) = v69;
      v136 = v94 | 0x8000000000000000;
      *&__dst = v70;
      if (v68 == i)
      {
        goto LABEL_125;
      }
    }

    else
    {
      HIBYTE(v136) = *p_i - i;
      v70 = &__dst;
      if (v68 == i)
      {
LABEL_125:
        *(v70 + v69) = 0;
        v71 = HIBYTE(v136);
        v72 = *(&__dst + 1);
        v73 = __dst;
        goto LABEL_127;
      }
    }

    memmove(v70, i, v69);
    goto LABEL_125;
  }

  (v56->__on_zero_shared)(v56);
  std::__shared_weak_count::__release_weak(v56);
  std::locale::~locale(&v137);
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_98;
  }

LABEL_95:
  v57 = v153;
  v134 = v154;
  if (v153 != v154)
  {
    goto LABEL_101;
  }

LABEL_252:
  v119 = *(&v151 + 1);
  v120 = v147;
  if (v147 && !atomic_fetch_add((v147 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v120->__on_zero_shared)(v120);
    std::__shared_weak_count::__release_weak(v120);
  }

  std::locale::~locale(v144);
  v121 = v149;
  if (v149 && !atomic_fetch_add((v149 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v121->__on_zero_shared)(v121);
    std::__shared_weak_count::__release_weak(v121);
  }

  std::locale::~locale(v148);
  operator delete(v4);
  v122 = v151;
  if (v151)
  {
    do
    {
      v130 = *v122;
      if (*(v122 + 39) < 0)
      {
        v131 = v122;
        operator delete(v122[2]);
        v122 = v131;
      }

      operator delete(v122);
      v122 = v130;
    }

    while (v130);
  }

  v123 = v150;
  *&v150 = 0;
  if (v123)
  {
    operator delete(v123);
  }

  v124 = v153;
  if (v153)
  {
    v125 = v154;
    v126 = v153;
    if (v154 != v153)
    {
      do
      {
        v127 = *(v125 - 1);
        v125 -= 3;
        if (v127 < 0)
        {
          operator delete(*v125);
        }
      }

      while (v125 != v124);
      v126 = v153;
    }

    v154 = v124;
    operator delete(v126);
  }

  v128 = *MEMORY[0x29EDCA608];
  return v119;
}

void sub_29730AD7C(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::unordered_set<std::string>::~unordered_set[abi:ne200100](&v3);
  std::vector<std::string>::~vector[abi:ne200100](&v4);
  _Unwind_Resume(a1);
}

void sub_29730ADAC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29730ADB4);
  }

  JUMPOUT(0x29730AC30);
}

uint64_t util::compareTwoStringsWithPattern(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v93 = 0xAAAAAAAAAAAAAA00;
  v90[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
  v96 = v5;
  v91 = 0;
  v92 = 0;
  v94 = 0;
  v95 = 0;
  LOBYTE(v96) = 0;
  BYTE8(v96) = 0;
  v97 = 0;
  memset(v90, 0, 41);
  v88 = v5;
  v89 = v5;
  *&v86[0].__locale_ = v5;
  v87 = v5;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v86, a3, 0);
  v83 = 0;
  v84 = 0;
  v85 = 0;
  __p = 0;
  v81 = 0;
  v82 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v102 = 0xAAAAAAAAAAAAAA00;
  *(&v99[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
  v105 = v6;
  v100 = 0;
  v101 = 0;
  v103 = 0;
  v104 = 0;
  LOBYTE(v105) = 0;
  BYTE8(v105) = 0;
  v106 = 0;
  __dst = 0u;
  v99[0] = 0u;
  v7 = *(a1 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 8);
  }

  *(v99 + 9) = 0uLL;
  v9 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v86, v8, (v8 + v7), &__dst, 0);
  v10 = *(a1 + 23);
  if ((v10 & 0x80u) == 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v90, v11, (v11 + v10), &__dst, 0);
  if (__dst)
  {
    *(&__dst + 1) = __dst;
    operator delete(__dst);
  }

  if (!v9)
  {
LABEL_124:
    v38 = 0;
    v61 = __p;
    if (!__p)
    {
      goto LABEL_135;
    }

    goto LABEL_130;
  }

  v79 = a2;
  end = v90[0].__end_;
  begin = v90[0].__begin_;
  if (v90[0].__begin_ != v90[0].__end_)
  {
    while (!begin->matched)
    {
      __dst = 0uLL;
      *&v99[0] = 0;
      v20 = v84;
      v19 = v85;
      if (v84 >= v85)
      {
LABEL_26:
        v21 = v83;
        v22 = v20 - v83;
        v23 = 0xAAAAAAAAAAAAAAABLL * (v20 - v83);
        v24 = v23 + 1;
        if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v25 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v83) >> 3);
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x555555555555555)
        {
          v26 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          if (v26 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v27 = operator new(24 * v26);
        }

        else
        {
          v27 = 0;
        }

        v29 = &v27[24 * v23];
        v30 = &v27[24 * v26];
        *v29 = __dst;
        *(v29 + 2) = *&v99[0];
        v14 = (v29 + 24);
        v31 = &v29[-v22];
        memcpy(&v29[-v22], v83, v22);
        v83 = v31;
        v85 = v30;
        if (v21)
        {
          operator delete(v21);
        }

        goto LABEL_17;
      }

LABEL_16:
      *v20 = __dst;
      v20[2] = *&v99[0];
      v14 = v20 + 3;
LABEL_17:
      v84 = v14;
      if (++begin == end)
      {
        goto LABEL_44;
      }
    }

    i = begin->first.__i_;
    v16 = begin->second.__i_;
    v17 = v16 - begin->first.__i_;
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v17 > 0x16)
    {
      if ((v17 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v17 | 7) + 1;
      }

      p_dst = operator new(v28);
      *(&__dst + 1) = v17;
      *&v99[0] = v28 | 0x8000000000000000;
      *&__dst = p_dst;
      if (v16 == i)
      {
LABEL_23:
        *(p_dst + v17) = 0;
        v20 = v84;
        v19 = v85;
        if (v84 >= v85)
        {
          goto LABEL_26;
        }

        goto LABEL_16;
      }
    }

    else
    {
      BYTE7(v99[0]) = v16 - LOBYTE(begin->first.__i_);
      p_dst = &__dst;
      if (v16 == i)
      {
        goto LABEL_23;
      }
    }

    memmove(p_dst, i, v17);
    goto LABEL_23;
  }

  v14 = 0;
LABEL_44:
  v32 = v83;
  if (v14 - v83 != 24)
  {
    v33 = v83 + 3;
    while (v33 != v14)
    {
      if (*(v32 + 23) < 0)
      {
        operator delete(*v32);
      }

      *v32 = *(v32 + 3);
      v32[2] = v32[5];
      *(v32 + 47) = 0;
      v33 = v32 + 6;
      *(v32 + 24) = 0;
      v32 += 3;
    }

    while (v14 != v32)
    {
      v34 = *(v14 - 1);
      v14 -= 3;
      if (v34 < 0)
      {
        operator delete(*v14);
      }
    }

    v84 = v32;
  }

  *&v35 = 0xAAAAAAAAAAAAAAAALL;
  *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v102 = 0xAAAAAAAAAAAAAA00;
  *(&v99[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
  v105 = v35;
  v100 = 0;
  v101 = 0;
  v103 = 0;
  v104 = 0;
  LOBYTE(v105) = 0;
  BYTE8(v105) = 0;
  v106 = 0;
  __dst = 0u;
  v99[0] = 0u;
  v36 = *(v79 + 23);
  if ((v36 & 0x80u) == 0)
  {
    v37 = v79;
  }

  else
  {
    v37 = *v79;
  }

  if ((v36 & 0x80u) != 0)
  {
    v36 = *(v79 + 8);
  }

  *(v99 + 9) = 0uLL;
  v38 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v86, v37, (v37 + v36), &__dst, 0);
  v39 = *(v79 + 23);
  if ((v39 & 0x80u) == 0)
  {
    v40 = v79;
  }

  else
  {
    v40 = *v79;
  }

  if ((v39 & 0x80u) != 0)
  {
    v39 = *(v79 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v90, v40, (v40 + v39), &__dst, 0);
  if (__dst)
  {
    *(&__dst + 1) = __dst;
    operator delete(__dst);
  }

  if (!v38)
  {
LABEL_129:
    v61 = __p;
    if (!__p)
    {
      goto LABEL_135;
    }

LABEL_130:
    v73 = v81;
    while (v73 != v61)
    {
      v74 = *(v73 - 1);
      v73 -= 3;
      if (v74 < 0)
      {
        operator delete(*v73);
      }
    }

    operator delete(v61);
    goto LABEL_135;
  }

  v42 = v90[0].__end_;
  v41 = v90[0].__begin_;
  if (v90[0].__begin_ != v90[0].__end_)
  {
    while (!v41->matched)
    {
      __dst = 0uLL;
      *&v99[0] = 0;
      v49 = v81;
      v48 = v82;
      if (v81 >= v82)
      {
LABEL_79:
        v50 = __p;
        v51 = v49 - __p;
        v52 = 0xAAAAAAAAAAAAAAABLL * (v49 - __p);
        v53 = v52 + 1;
        if (v52 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v54 = 0xAAAAAAAAAAAAAAABLL * ((v48 - __p) >> 3);
        if (2 * v54 > v53)
        {
          v53 = 2 * v54;
        }

        if (v54 >= 0x555555555555555)
        {
          v55 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v55 = v53;
        }

        if (v55)
        {
          if (v55 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v56 = operator new(24 * v55);
        }

        else
        {
          v56 = 0;
        }

        v58 = &v56[24 * v52];
        v59 = &v56[24 * v55];
        *v58 = __dst;
        *(v58 + 2) = *&v99[0];
        v43 = (v58 + 24);
        v60 = &v58[-v51];
        memcpy(&v58[-v51], __p, v51);
        __p = v60;
        v82 = v59;
        if (v50)
        {
          operator delete(v50);
        }

        goto LABEL_70;
      }

LABEL_69:
      *v49 = __dst;
      v49[2] = *&v99[0];
      v43 = v49 + 3;
LABEL_70:
      v81 = v43;
      if (++v41 == v42)
      {
        goto LABEL_97;
      }
    }

    v44 = v41->first.__i_;
    v45 = v41->second.__i_;
    v46 = v45 - v41->first.__i_;
    if (v46 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v46 > 0x16)
    {
      if ((v46 | 7) == 0x17)
      {
        v57 = 25;
      }

      else
      {
        v57 = (v46 | 7) + 1;
      }

      v47 = operator new(v57);
      *(&__dst + 1) = v46;
      *&v99[0] = v57 | 0x8000000000000000;
      *&__dst = v47;
      if (v45 == v44)
      {
LABEL_76:
        *(v47 + v46) = 0;
        v49 = v81;
        v48 = v82;
        if (v81 >= v82)
        {
          goto LABEL_79;
        }

        goto LABEL_69;
      }
    }

    else
    {
      BYTE7(v99[0]) = v45 - LOBYTE(v41->first.__i_);
      v47 = &__dst;
      if (v45 == v44)
      {
        goto LABEL_76;
      }
    }

    memmove(v47, v44, v46);
    goto LABEL_76;
  }

  v43 = 0;
LABEL_97:
  v61 = __p;
  if (v43 - __p != 24)
  {
    v62 = __p;
    if (__p + 3 != v43)
    {
      v62 = __p;
      do
      {
        if (*(v62 + 23) < 0)
        {
          operator delete(*v62);
        }

        *v62 = *(v62 + 3);
        v62[2] = v62[5];
        *(v62 + 47) = 0;
        v63 = v62 + 6;
        *(v62 + 24) = 0;
        v62 += 3;
      }

      while (v63 != v43);
    }

    while (v43 != v62)
    {
      v64 = *(v43 - 1);
      v43 -= 3;
      if (v64 < 0)
      {
        operator delete(*v43);
      }
    }

    v81 = v62;
  }

  v65 = v83;
  if (v83 == v84)
  {
    v38 = 1;
    if (!__p)
    {
      goto LABEL_135;
    }

    goto LABEL_130;
  }

  do
  {
    v66 = *(v65 + 23);
    if (v66 >= 0)
    {
      v67 = *(v65 + 23);
    }

    else
    {
      v67 = v65[1];
    }

    v68 = *(v61 + 23);
    v69 = v68;
    if (v68 < 0)
    {
      v68 = v61[1];
    }

    if (v67 != v68)
    {
      v38 = 0;
      goto LABEL_129;
    }

    if (v66 >= 0)
    {
      v70 = v65;
    }

    else
    {
      v70 = *v65;
    }

    v71 = *v61;
    if (v69 >= 0)
    {
      v72 = v61;
    }

    else
    {
      v72 = *v61;
    }

    if (memcmp(v70, v72, v67))
    {
      goto LABEL_124;
    }

    v65 += 3;
    v61 += 3;
  }

  while (v65 != v84);
  v38 = 1;
  v61 = __p;
  if (__p)
  {
    goto LABEL_130;
  }

LABEL_135:
  if (v83)
  {
    v75 = v84;
    while (v75 != v83)
    {
      v76 = *(v75 - 1);
      v75 -= 3;
      if (v76 < 0)
      {
        operator delete(*v75);
      }
    }

    operator delete(v83);
  }

  v77 = v89;
  if (v89 && !atomic_fetch_add((v89 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v77->__on_zero_shared)(v77);
    std::__shared_weak_count::__release_weak(v77);
  }

  std::locale::~locale(v86);
  if (v90[0].__begin_)
  {
    v90[0].__end_ = v90[0].__begin_;
    operator delete(v90[0].__begin_);
  }

  return v38;
}

void sub_29730B590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  v28 = *(v26 - 208);
  if (v28)
  {
    *(v26 - 200) = v28;
    operator delete(v28);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a11);
  std::vector<std::string>::~vector[abi:ne200100](&a14);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a17);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL16sGetOsLogContextv_block_invoke_2()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "util");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

const void **ctu::cf::CFSharedRef<__CFReadStream>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

std::string **std::vector<std::string>::vector[abi:ne200100](std::string **a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v5 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v4 - v3);
    *a1 = v6;
    a1[1] = v6;
    a1[2] = (v6 + v5);
    v9 = v6;
    do
    {
      while ((*(v3 + 23) & 0x80000000) == 0)
      {
        v7 = *v3;
        v6->__r_.__value_.__r.__words[2] = *(v3 + 2);
        *&v6->__r_.__value_.__l.__data_ = v7;
        ++v6;
        v3 = (v3 + 24);
        v9 = v6;
        if (v3 == v4)
        {
          goto LABEL_7;
        }
      }

      std::string::__init_copy_ctor_external(v6, *v3, *(v3 + 1));
      v3 = (v3 + 24);
      v6 = ++v9;
    }

    while (v3 != v4);
LABEL_7:
    a1[1] = v6;
  }

  return a1;
}

void sub_29730B818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](&a11);
  *(v11 + 8) = v12;
  std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
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

void ****std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x29C26E950](a1 + 2);

  return std::istream::~istream();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,false>(uint64_t a1, const void **a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  __s2 = a2 - 3;
  v277 = a2;
  v266 = a2 - 9;
  v267 = a2 - 6;
  k = a1;
  while (1)
  {
    a1 = k;
    v9 = a2 - k;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - k) >> 3);
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, __s2).n128_u64[0];
          return result;
        case 4:

          result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a1 + 48, __s2).n128_u64[0];
          return result;
        case 5:

          result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a1 + 48, a1 + 72, __s2).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v117 = (a2 - 3);
        v118 = *(a2 - 1);
        if (v118 >= 0)
        {
          v119 = a2 - 3;
        }

        else
        {
          v119 = *(a2 - 3);
        }

        if (v118 >= 0)
        {
          v120 = *(a2 - 1);
        }

        else
        {
          v120 = *(a2 - 2);
        }

        v121 = *(a1 + 23);
        v122 = *a1;
        v123 = *(a1 + 8);
        if (v121 >= 0)
        {
          v124 = a1;
        }

        else
        {
          v124 = *a1;
        }

        if (v121 >= 0)
        {
          v125 = *(a1 + 23);
        }

        else
        {
          v125 = *(a1 + 8);
        }

        if (v125 >= v120)
        {
          v126 = v120;
        }

        else
        {
          v126 = v125;
        }

        v127 = memcmp(v119, v124, v126);
        if (v127)
        {
          if (v127 < 0)
          {
            return result;
          }
        }

        else if (v120 <= v125)
        {
          return result;
        }

        v264 = *(a1 + 16);
        v265 = *(a2 - 1);
        result = *v117;
        *a1 = *v117;
        *(a1 + 16) = v265;
        *(a2 - 3) = v122;
        *(a2 - 2) = v123;
        *(a2 - 1) = v264;
        return result;
      }
    }

    if (v9 <= 575)
    {
      if (a4)
      {
        if (a1 == a2)
        {
          return result;
        }

        v128 = (a1 + 24);
        if ((a1 + 24) == a2)
        {
          return result;
        }

        v129 = 0;
        v130 = a1;
        while (2)
        {
          v132 = v130;
          v130 = v128;
          v133 = v132[2].n128_i8[15];
          if (v133 >= 0)
          {
            v134 = v128;
          }

          else
          {
            v134 = v132[1].n128_u64[1];
          }

          if (v133 >= 0)
          {
            v135 = v132[2].n128_u8[15];
          }

          else
          {
            v135 = v132[2].n128_u64[0];
          }

          v136 = v132[1].n128_i8[7];
          if (v136 >= 0)
          {
            v137 = v132;
          }

          else
          {
            v137 = v132->n128_u64[0];
          }

          if (v136 >= 0)
          {
            v138 = v132[1].n128_u8[7];
          }

          else
          {
            v138 = v132->n128_u64[1];
          }

          if (v138 >= v135)
          {
            v139 = v135;
          }

          else
          {
            v139 = v138;
          }

          v140 = memcmp(v134, v137, v139);
          if (v140)
          {
            if (v140 < 0)
            {
LABEL_269:
              v128 = (v130 + 24);
              v129 += 24;
              if ((v130 + 24) == v277)
              {
                return result;
              }

              continue;
            }
          }

          else if (v135 <= v138)
          {
            goto LABEL_269;
          }

          break;
        }

        v141 = *v130;
        v280 = *(v130 + 16);
        v279 = v141;
        if (v280 >= 0)
        {
          v142 = &v279;
        }

        else
        {
          v142 = v141.n128_u64[0];
        }

        if (v280 >= 0)
        {
          v143 = HIBYTE(v280);
        }

        else
        {
          v143 = v141.n128_u64[1];
        }

        *(v130 + 16) = v132[1].n128_u64[0];
        *v130 = *v132;
        v132[1].n128_u8[7] = 0;
        v132->n128_u8[0] = 0;
        v131 = a1;
        if (v132 != a1)
        {
          v144 = v129;
          while (1)
          {
            v145 = a1 + v144;
            v146 = *(a1 + v144 - 24);
            v147 = *(a1 + v144 - 1);
            if (v147 >= 0)
            {
              v148 = (a1 + v144 - 24);
            }

            else
            {
              v148 = *(a1 + v144 - 24);
            }

            if (v147 >= 0)
            {
              v149 = *(a1 + v144 - 1);
            }

            else
            {
              v149 = *(a1 + v144 - 16);
            }

            if (v149 >= v143)
            {
              v150 = v143;
            }

            else
            {
              v150 = v149;
            }

            v151 = memcmp(v142, v148, v150);
            if (v151)
            {
              if (v151 < 0)
              {
                v131 = (a1 + v144);
                break;
              }
            }

            else if (v143 <= v149)
            {
              v131 = v132;
              break;
            }

            v132 = (v132 - 24);
            *v145 = *(a1 + v144 - 24);
            *(v145 + 16) = *(a1 + v144 - 8);
            *(v145 - 1) = 0;
            *(v145 - 24) = 0;
            v144 -= 24;
            if (!v144)
            {
              v131 = a1;
              break;
            }
          }
        }

        result = v279;
        v131[1].n128_u64[0] = v280;
        *v131 = result;
        goto LABEL_269;
      }

      if (a1 == a2)
      {
        return result;
      }

      v245 = (a1 + 24);
      if ((a1 + 24) == a2)
      {
        return result;
      }

LABEL_483:
      v246 = a1;
      a1 = v245;
      v247 = *(v246 + 47);
      if (v247 >= 0)
      {
        v248 = v245;
      }

      else
      {
        v248 = v246[3];
      }

      if (v247 >= 0)
      {
        v249 = *(v246 + 47);
      }

      else
      {
        v249 = v246[4];
      }

      v250 = *(v246 + 23);
      if (v250 >= 0)
      {
        v251 = v246;
      }

      else
      {
        v251 = *v246;
      }

      if (v250 >= 0)
      {
        v252 = *(v246 + 23);
      }

      else
      {
        v252 = v246[1];
      }

      if (v252 >= v249)
      {
        v253 = v249;
      }

      else
      {
        v253 = v252;
      }

      v254 = memcmp(v248, v251, v253);
      if (v254)
      {
        if (v254 < 0)
        {
          goto LABEL_482;
        }
      }

      else if (v249 <= v252)
      {
        goto LABEL_482;
      }

      v255 = *a1;
      v280 = *(a1 + 16);
      v279 = v255;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      if (v280 >= 0)
      {
        v256 = &v279;
      }

      else
      {
        v256 = v279.n128_u64[0];
      }

      if (v280 >= 0)
      {
        v257 = HIBYTE(v280);
      }

      else
      {
        v257 = v279.n128_u64[1];
      }

      for (i = a1; ; i -= 24)
      {
        *i = *(i - 24);
        *(i + 16) = *(i - 8);
        *(i - 1) = 0;
        *(i - 24) = 0;
        v259 = *(i - 25);
        if (v259 >= 0)
        {
          v260 = (i - 48);
        }

        else
        {
          v260 = *(i - 48);
        }

        if (v259 >= 0)
        {
          v261 = *(i - 25);
        }

        else
        {
          v261 = *(i - 40);
        }

        if (v261 >= v257)
        {
          v262 = v257;
        }

        else
        {
          v262 = v261;
        }

        v263 = memcmp(v256, v260, v262);
        if (v263)
        {
          if (v263 < 0)
          {
LABEL_481:
            result = v279;
            *(i - 8) = v280;
            *(i - 24) = result;
LABEL_482:
            v245 = (a1 + 24);
            if ((a1 + 24) == a2)
            {
              return result;
            }

            goto LABEL_483;
          }
        }

        else if (v257 <= v261)
        {
          goto LABEL_481;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v11 = v10 >> 1;
    v12 = a1 + 24 * (v10 >> 1);
    if (v9 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(v12, a1, __s2);
      v271 = a3 - 1;
      if ((a4 & 1) == 0)
      {
LABEL_15:
        v17 = *(a1 - 1);
        if (v17 >= 0)
        {
          v18 = (a1 - 24);
        }

        else
        {
          v18 = *(a1 - 24);
        }

        if (v17 >= 0)
        {
          v19 = *(a1 - 1);
        }

        else
        {
          v19 = *(a1 - 16);
        }

        v20 = *(a1 + 23);
        if (v20 >= 0)
        {
          v21 = a1;
        }

        else
        {
          v21 = *a1;
        }

        if (v20 >= 0)
        {
          v22 = *(a1 + 23);
        }

        else
        {
          v22 = *(a1 + 8);
        }

        if (v22 >= v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = v22;
        }

        v24 = memcmp(v18, v21, v23);
        if (v24)
        {
          if (v24 < 0)
          {
            goto LABEL_129;
          }
        }

        else if (v19 <= v22)
        {
LABEL_129:
          v70 = *a1;
          v280 = *(a1 + 16);
          v279 = v70;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v71 = a2;
          if (v280 >= 0)
          {
            v72 = &v279;
          }

          else
          {
            v72 = v279.n128_u64[0];
          }

          if (v280 >= 0)
          {
            v73 = HIBYTE(v280);
          }

          else
          {
            v73 = v279.n128_u64[1];
          }

          v74 = *(v71 - 1);
          v76 = *(v71 - 3);
          v75 = *(v71 - 2);
          if ((v74 & 0x80u) == 0)
          {
            v77 = __s2;
          }

          else
          {
            v77 = *(v71 - 3);
          }

          if ((v74 & 0x80u) == 0)
          {
            v78 = *(v71 - 1);
          }

          else
          {
            v78 = *(v71 - 2);
          }

          if (v78 >= v73)
          {
            v79 = v73;
          }

          else
          {
            v79 = v78;
          }

          v80 = memcmp(v72, v77, v79);
          if (v80)
          {
            if ((v80 & 0x80000000) == 0)
            {
LABEL_146:
              v81 = a1 + 24;
              do
              {
                while (1)
                {
                  k = v81;
                  v82 = *(v81 + 23);
                  v83 = (v82 & 0x80u) == 0 ? k : *k;
                  v84 = (v82 & 0x80u) == 0 ? v82 : *(k + 8);
                  v85 = v84 >= v73 ? v73 : v84;
                  v86 = memcmp(v72, v83, v85);
                  v81 = k + 24;
                  if (v86)
                  {
                    break;
                  }

                  if (v73 > v84)
                  {
                    goto LABEL_159;
                  }
                }
              }

              while (v86 < 0);
LABEL_159:
              j = v277;
              if (k < v277)
              {
                for (j = __s2; ; v75 = j[1])
                {
                  if ((v74 & 0x80u) == 0)
                  {
                    v89 = j;
                  }

                  else
                  {
                    v89 = v76;
                  }

                  if ((v74 & 0x80u) == 0)
                  {
                    v90 = v74;
                  }

                  else
                  {
                    v90 = v75;
                  }

                  if (v90 >= v73)
                  {
                    v91 = v73;
                  }

                  else
                  {
                    v91 = v90;
                  }

                  v92 = memcmp(v72, v89, v91);
                  if (v92)
                  {
                    if (v92 < 0)
                    {
                      break;
                    }
                  }

                  else if (v73 <= v90)
                  {
                    break;
                  }

                  v88 = *(j - 3);
                  j -= 3;
                  v76 = v88;
                  v74 = *(j + 23);
                }
              }

              if (k < j)
              {
                v93 = *k;
                do
                {
                  v94 = *(k + 8);
                  v95 = *j;
                  *(k + 16) = j[2];
                  *k = v95;
                  *j = v93;
                  *(j + 1) = v94;
                  if (v280 >= 0)
                  {
                    v96 = &v279;
                  }

                  else
                  {
                    v96 = v279.n128_u64[0];
                  }

                  if (v280 >= 0)
                  {
                    v97 = HIBYTE(v280);
                  }

                  else
                  {
                    v97 = v279.n128_u64[1];
                  }

                  v98 = k + 24;
                  do
                  {
                    while (1)
                    {
                      k = v98;
                      v99 = *(v98 + 23);
                      v93 = *k;
                      v100 = (v99 & 0x80u) == 0 ? k : *k;
                      v101 = (v99 & 0x80u) == 0 ? v99 : *(k + 8);
                      v102 = v101 >= v97 ? v97 : v101;
                      v103 = memcmp(v96, v100, v102);
                      v98 = k + 24;
                      if (v103)
                      {
                        break;
                      }

                      if (v97 > v101)
                      {
                        goto LABEL_196;
                      }
                    }
                  }

                  while (v103 < 0);
LABEL_196:
                  v104 = j - 3;
                  do
                  {
                    while (1)
                    {
                      j = v104;
                      v105 = *(v104 + 23);
                      v106 = v105 >= 0 ? j : *j;
                      v107 = v105 >= 0 ? v105 : j[1];
                      v108 = v107 >= v97 ? v97 : v107;
                      v109 = memcmp(v96, v106, v108);
                      v104 = j - 3;
                      if (v109)
                      {
                        break;
                      }

                      if (v97 <= v107)
                      {
                        goto LABEL_176;
                      }
                    }
                  }

                  while ((v109 & 0x80000000) == 0);
LABEL_176:
                  ;
                }

                while (k < j);
              }

              v110 = (k - 24);
              if (k - 24 == a1)
              {
                a2 = v277;
                a3 = v271;
                if (*(k - 1) < 0)
                {
                  operator delete(*v110);
                }
              }

              else
              {
                a2 = v277;
                a3 = v271;
                if (*(a1 + 23) < 0)
                {
                  operator delete(*a1);
                }

                v111 = *v110;
                *(a1 + 16) = *(k - 8);
                *a1 = v111;
                *(k - 1) = 0;
                *(k - 24) = 0;
              }

              a4 = 0;
              result = v279;
              *(k - 8) = v280;
              *v110 = result;
              continue;
            }
          }

          else if (v73 > v78)
          {
            goto LABEL_146;
          }

          for (k = a1 + 24; k < v277; k += 24)
          {
            v112 = *(k + 23);
            if (v112 >= 0)
            {
              v113 = k;
            }

            else
            {
              v113 = *k;
            }

            if (v112 >= 0)
            {
              v114 = *(k + 23);
            }

            else
            {
              v114 = *(k + 8);
            }

            if (v114 >= v73)
            {
              v115 = v73;
            }

            else
            {
              v115 = v114;
            }

            v116 = memcmp(v72, v113, v115);
            if (v116)
            {
              if ((v116 & 0x80000000) == 0)
              {
                goto LABEL_159;
              }
            }

            else if (v73 > v114)
            {
              goto LABEL_159;
            }
          }

          goto LABEL_159;
        }
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, v12, __s2);
      v13 = 24 * v11;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1 + 24, v13 + a1 - 24, v267);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1 + 48, a1 + 24 + v13, v266);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(v13 + a1 - 24, v12, (a1 + 24 + v13));
      v14 = *a1;
      v15 = *(a1 + 8);
      v16 = *v12;
      *(a1 + 16) = *(v12 + 16);
      *a1 = v16;
      *v12 = v14;
      *(v12 + 8) = v15;
      v271 = a3 - 1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v25 = 0;
    v26 = *a1;
    v280 = *(a1 + 16);
    v279 = v26;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    if (v280 >= 0)
    {
      v27 = &v279;
    }

    else
    {
      v27 = v279.n128_u64[0];
    }

    if (v280 >= 0)
    {
      v28 = HIBYTE(v280);
    }

    else
    {
      v28 = v279.n128_u64[1];
    }

    while (1)
    {
      v29 = *(a1 + v25 + 24);
      v30 = *(a1 + v25 + 47);
      v31 = v30 >= 0 ? (a1 + v25 + 24) : *(a1 + v25 + 24);
      v32 = v30 >= 0 ? *(a1 + v25 + 47) : *(a1 + v25 + 32);
      v33 = v28 >= v32 ? v32 : v28;
      v34 = memcmp(v31, v27, v33);
      if (v34)
      {
        break;
      }

      if (v32 <= v28)
      {
        goto LABEL_51;
      }

LABEL_39:
      v25 += 24;
    }

    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_51:
    v35 = a1 + v25 + 24;
    v36 = __s2;
    if (v25)
    {
      do
      {
        while (1)
        {
          v37 = v36;
          v44 = *(v36 + 23);
          v45 = v44 >= 0 ? v37 : *v37;
          v46 = (v44 >= 0 ? v44 : v37[1]);
          v47 = v28 >= v46 ? v46 : v28;
          v48 = memcmp(v45, v27, v47);
          v36 = v37 - 3;
          if (v48)
          {
            break;
          }

          if (v46 > v28)
          {
            goto LABEL_82;
          }
        }
      }

      while (v48 < 0);
    }

    else
    {
      v37 = v277;
      if (v35 < v277)
      {
        v38 = __s2;
        do
        {
          while (1)
          {
            v37 = v38;
            v39 = *(v38 + 23);
            v40 = v39 >= 0 ? v37 : *v37;
            v41 = (v39 >= 0 ? v39 : v37[1]);
            v42 = v28 >= v41 ? v41 : v28;
            v43 = memcmp(v40, v27, v42);
            v38 = v37 - 3;
            if (!v43)
            {
              break;
            }

            if (v35 >= v37 || (v43 & 0x80000000) == 0)
            {
              goto LABEL_82;
            }
          }
        }

        while (v35 < v37 && v41 <= v28);
      }
    }

LABEL_82:
    k = v35;
    if (v35 < v37)
    {
      v49 = v37;
      do
      {
        v50 = *(k + 8);
        v51 = *v49;
        *(k + 16) = v49[2];
        *k = v51;
        *v49 = v29;
        *(v49 + 1) = v50;
        if (v280 >= 0)
        {
          v52 = &v279;
        }

        else
        {
          v52 = v279.n128_u64[0];
        }

        if (v280 >= 0)
        {
          v53 = HIBYTE(v280);
        }

        else
        {
          v53 = v279.n128_u64[1];
        }

        v54 = k + 24;
        do
        {
          while (1)
          {
            k = v54;
            v55 = *(v54 + 23);
            v29 = *k;
            v56 = (v55 & 0x80u) == 0 ? k : *k;
            v57 = (v55 & 0x80u) == 0 ? v55 : *(k + 8);
            v58 = v53 >= v57 ? v57 : v53;
            v59 = memcmp(v56, v52, v58);
            v54 = k + 24;
            if (v59)
            {
              break;
            }

            if (v57 <= v53)
            {
              goto LABEL_104;
            }
          }
        }

        while ((v59 & 0x80000000) == 0);
LABEL_104:
        v60 = v49 - 3;
        do
        {
          while (1)
          {
            v49 = v60;
            v61 = *(v60 + 23);
            v62 = v61 >= 0 ? v49 : *v49;
            v63 = (v61 >= 0 ? v61 : v49[1]);
            v64 = v53 >= v63 ? v63 : v53;
            v65 = memcmp(v62, v52, v64);
            v60 = v49 - 3;
            if (v65)
            {
              break;
            }

            if (v63 > v53)
            {
              goto LABEL_84;
            }
          }
        }

        while (v65 < 0);
LABEL_84:
        ;
      }

      while (k < v49);
    }

    v66 = (k - 24);
    if (k - 24 == a1)
    {
      a2 = v277;
      a3 = v271;
      if (*(k - 1) < 0)
      {
        operator delete(*a1);
      }
    }

    else
    {
      a2 = v277;
      a3 = v271;
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v67 = *v66;
      *(a1 + 16) = *(k - 8);
      *a1 = v67;
      *(k - 1) = 0;
      *(k - 24) = 0;
    }

    v68 = v279;
    *(k - 8) = v280;
    *v66 = v68;
    if (v35 < v37)
    {
LABEL_127:
      std::__introsort<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,false>(a1, k - 24, a3, a4 & 1);
      a4 = 0;
    }

    else
    {
      v69 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*>(a1, (k - 24));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*>(k, a2))
      {
        a2 = (k - 24);
        if (v69)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v69)
      {
        goto LABEL_127;
      }
    }
  }

  if (a1 == a2)
  {
    return result;
  }

  v152 = (v10 - 2) >> 1;
  v153 = v152;
  v268 = v9;
  while (2)
  {
    v155 = v153;
    if (v152 >= v153)
    {
      v156 = (2 * v153) | 1;
      v157 = a1 + 24 * v156;
      v158 = 2 * v153 + 2;
      if (v158 >= v10)
      {
        goto LABEL_340;
      }

      v160 = (v157 + 24);
      v159 = *(v157 + 24);
      v161 = *(v157 + 23);
      if (v161 >= 0)
      {
        v162 = (a1 + 24 * v156);
      }

      else
      {
        v162 = *v157;
      }

      if (v161 >= 0)
      {
        v163 = *(v157 + 23);
      }

      else
      {
        v163 = *(v157 + 8);
      }

      v164 = *(v157 + 47);
      if (v164 >= 0)
      {
        v165 = (v157 + 24);
      }

      else
      {
        v165 = *(v157 + 24);
      }

      if (v164 >= 0)
      {
        v166 = *(v157 + 47);
      }

      else
      {
        v166 = *(v157 + 32);
      }

      if (v166 >= v163)
      {
        v167 = v163;
      }

      else
      {
        v167 = v166;
      }

      v168 = memcmp(v162, v165, v167);
      if (v168)
      {
        a2 = v277;
        if (v168 < 0)
        {
LABEL_340:
          v160 = (a1 + 24 * v156);
          v158 = (2 * v155) | 1;
        }
      }

      else
      {
        v169 = v163 >= v166;
        if (v163 == v166)
        {
          v160 = (a1 + 24 * v156);
          v158 = (2 * v155) | 1;
          a2 = v277;
        }

        else
        {
          a2 = v277;
          if (!v169)
          {
            goto LABEL_340;
          }
        }
      }

      v272 = v155;
      v170 = a1 + 24 * v155;
      v171 = *(v160 + 23);
      if (v171 >= 0)
      {
        v172 = v160;
      }

      else
      {
        v172 = *v160;
      }

      if (v171 >= 0)
      {
        v173 = *(v160 + 23);
      }

      else
      {
        v173 = v160[1];
      }

      v174 = *(v170 + 23);
      if (v174 >= 0)
      {
        v175 = (a1 + 24 * v155);
      }

      else
      {
        v175 = *v170;
      }

      if (v174 >= 0)
      {
        v176 = *(v170 + 23);
      }

      else
      {
        v176 = *(v170 + 8);
      }

      if (v176 >= v173)
      {
        v177 = v173;
      }

      else
      {
        v177 = v176;
      }

      v178 = memcmp(v172, v175, v177);
      if (v178)
      {
        if (v178 < 0)
        {
LABEL_360:
          v179 = *v170;
          v280 = *(v170 + 16);
          v279 = v179;
          *(v170 + 8) = 0;
          *(v170 + 16) = 0;
          *v170 = 0;
          v180 = *v160;
          *(v170 + 16) = v160[2];
          *v170 = v180;
          *(v160 + 23) = 0;
          *v160 = 0;
          if (v152 >= v158)
          {
            v181 = &v279;
            if (v280 < 0)
            {
              v181 = v279.n128_u64[0];
            }

            __s2a = v181;
            if (v280 >= 0)
            {
              v182 = HIBYTE(v280);
            }

            else
            {
              v182 = v279.n128_u64[1];
            }

            while (1)
            {
              v184 = (2 * v158) | 1;
              v185 = a1 + 24 * v184;
              v158 = 2 * v158 + 2;
              if (v158 >= v10)
              {
                goto LABEL_390;
              }

              v154 = (v185 + 24);
              v186 = *(v185 + 24);
              v187 = *(v185 + 23);
              v188 = v187 >= 0 ? (a1 + 24 * v184) : *v185;
              v189 = v187 >= 0 ? *(v185 + 23) : *(v185 + 8);
              v190 = *(v185 + 47);
              v191 = v190 >= 0 ? (v185 + 24) : *(v185 + 24);
              v192 = v190 >= 0 ? *(v185 + 47) : *(v185 + 32);
              v193 = v192 >= v189 ? v189 : v192;
              v194 = memcmp(v188, v191, v193);
              if (v194)
              {
                break;
              }

              v195 = v189 >= v192;
              if (v189 == v192)
              {
                v154 = (a1 + 24 * v184);
                v158 = v184;
                a2 = v277;
                v152 = (v10 - 2) >> 1;
                goto LABEL_391;
              }

              a2 = v277;
              v152 = (v10 - 2) >> 1;
              if (!v195)
              {
                goto LABEL_390;
              }

LABEL_391:
              v196 = *(v154 + 23);
              if (v196 >= 0)
              {
                v197 = v154;
              }

              else
              {
                v197 = *v154;
              }

              if (v196 >= 0)
              {
                v198 = *(v154 + 23);
              }

              else
              {
                v198 = v154[1];
              }

              if (v182 >= v198)
              {
                v199 = v198;
              }

              else
              {
                v199 = v182;
              }

              v200 = memcmp(v197, __s2a, v199);
              if (v200)
              {
                if ((v200 & 0x80000000) == 0)
                {
                  goto LABEL_314;
                }
              }

              else if (v198 > v182)
              {
                goto LABEL_314;
              }

              v183 = *v154;
              v160[2] = v154[2];
              *v160 = v183;
              *(v154 + 23) = 0;
              *v154 = 0;
              v160 = v154;
              if (v152 < v158)
              {
                goto LABEL_315;
              }
            }

            a2 = v277;
            v152 = (v10 - 2) >> 1;
            if ((v194 & 0x80000000) == 0)
            {
              goto LABEL_391;
            }

LABEL_390:
            v154 = (a1 + 24 * v184);
            v158 = v184;
            goto LABEL_391;
          }

LABEL_314:
          v154 = v160;
LABEL_315:
          result = v279;
          v154[2] = v280;
          *v154 = result;
          v155 = v272;
        }
      }

      else if (v173 <= v176)
      {
        goto LABEL_360;
      }
    }

    v153 = v155 - 1;
    if (v155)
    {
      continue;
    }

    break;
  }

  v201 = 0xAAAAAAAAAAAAAAABLL * (v268 >> 3);
  do
  {
    if (v201 < 2)
    {
      goto LABEL_405;
    }

    v203 = 0;
    __s2b = *a1;
    v278 = a2;
    v204 = *(a1 + 16);
    v270 = v204;
    v273 = *(a1 + 8);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v205 = a1;
    *a1 = 0;
    do
    {
      v207 = v205 + 24 * v203;
      v206 = (v207 + 24);
      v208 = 2 * v203;
      v203 = (2 * v203) | 1;
      v209 = v208 + 2;
      if (v208 + 2 < v201)
      {
        v212 = *(v207 + 48);
        v211 = (v207 + 48);
        v210 = v212;
        v213 = v211[-1].n128_i8[15];
        if (v213 >= 0)
        {
          v214 = v206;
        }

        else
        {
          v214 = v211[-2].n128_u64[1];
        }

        if (v213 >= 0)
        {
          v215 = v211[-1].n128_u8[15];
        }

        else
        {
          v215 = v211[-1].n128_u64[0];
        }

        v216 = v211[1].n128_i8[7];
        if (v216 >= 0)
        {
          v217 = v211;
        }

        else
        {
          v217 = v210;
        }

        if (v216 >= 0)
        {
          v218 = v211[1].n128_u8[7];
        }

        else
        {
          v218 = v211->n128_u64[1];
        }

        if (v218 >= v215)
        {
          v219 = v215;
        }

        else
        {
          v219 = v218;
        }

        v220 = memcmp(v214, v217, v219);
        if (v220)
        {
          if ((v220 & 0x80000000) == 0)
          {
            goto LABEL_409;
          }
        }

        else if (v215 > v218)
        {
LABEL_409:
          v206 = v211;
          v203 = v209;
        }
      }

      if (*(v205 + 23) < 0)
      {
        operator delete(*v205);
      }

      result = *v206;
      *(v205 + 16) = v206[1].n128_u64[0];
      *v205 = result;
      v206[1].n128_u8[7] = 0;
      v206->n128_u8[0] = 0;
      v205 = v206;
    }

    while (v203 <= ((v201 - 2) >> 1));
    if (v206 == (a2 - 3))
    {
      v206->n128_u64[0] = __s2b;
      v206->n128_u64[1] = v273;
      v206[1].n128_u64[0] = v270;
      goto LABEL_405;
    }

    result = *(a2 - 3);
    v206[1].n128_u64[0] = *(a2 - 1);
    *v206 = result;
    *(a2 - 3) = __s2b;
    *(a2 - 2) = v273;
    *(a2 - 1) = v270;
    v221 = &v206[1].n128_i64[1] - a1;
    if (v221 >= 25)
    {
      v222 = -2 - 0x5555555555555555 * (v221 >> 3);
      v223 = v222 >> 1;
      v224 = a1 + 24 * (v222 >> 1);
      v225 = *(v224 + 23);
      if (v225 >= 0)
      {
        v226 = (a1 + 24 * (v222 >> 1));
      }

      else
      {
        v226 = *v224;
      }

      if (v225 >= 0)
      {
        v227 = *(v224 + 23);
      }

      else
      {
        v227 = *(v224 + 8);
      }

      v228 = v206[1].n128_i8[7];
      if (v228 >= 0)
      {
        v229 = v206;
      }

      else
      {
        v229 = v206->n128_u64[0];
      }

      if (v228 >= 0)
      {
        v230 = v206[1].n128_u8[7];
      }

      else
      {
        v230 = v206->n128_u64[1];
      }

      if (v230 >= v227)
      {
        v231 = v227;
      }

      else
      {
        v231 = v230;
      }

      v232 = memcmp(v226, v229, v231);
      if (v232)
      {
        if (v232 < 0)
        {
          goto LABEL_405;
        }
      }

      else if (v227 <= v230)
      {
        goto LABEL_405;
      }

      v233 = *v206;
      v280 = v206[1].n128_i64[0];
      v279 = v233;
      v206->n128_u64[1] = 0;
      v206[1].n128_u64[0] = 0;
      v206->n128_u64[0] = 0;
      if (v280 >= 0)
      {
        v234 = &v279;
      }

      else
      {
        v234 = v279.n128_u64[0];
      }

      if (v280 >= 0)
      {
        v235 = HIBYTE(v280);
      }

      else
      {
        v235 = v279.n128_u64[1];
      }

      v236 = *v224;
      v206[1].n128_u64[0] = *(v224 + 16);
      *v206 = v236;
      *(v224 + 23) = 0;
      *v224 = 0;
      if (v222 >= 2)
      {
        while (1)
        {
          v238 = v223 - 1;
          v223 = (v223 - 1) >> 1;
          v239 = a1 + 24 * v223;
          v240 = *(v239 + 23);
          if (v240 >= 0)
          {
            v241 = (a1 + 24 * v223);
          }

          else
          {
            v241 = *v239;
          }

          if (v240 >= 0)
          {
            v242 = *(v239 + 23);
          }

          else
          {
            v242 = *(v239 + 8);
          }

          if (v235 >= v242)
          {
            v243 = v242;
          }

          else
          {
            v243 = v235;
          }

          v244 = memcmp(v241, v234, v243);
          if (v244)
          {
            if (v244 < 0)
            {
              break;
            }
          }

          else if (v242 <= v235)
          {
            break;
          }

          v237 = *v239;
          *(v224 + 16) = *(v239 + 16);
          *v224 = v237;
          *(v239 + 23) = 0;
          *v239 = 0;
          v224 = a1 + 24 * v223;
          if (v238 <= 1)
          {
            goto LABEL_477;
          }
        }
      }

      v239 = v224;
LABEL_477:
      result = v279;
      *(v239 + 16) = v280;
      *v239 = result;
      a2 = v278;
    }

LABEL_405:
    a2 -= 3;
  }

  while (v201-- > 2);
  return result;
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = *(a2 + 23);
  v7 = *a2;
  v8 = *(a2 + 8);
  if (v6 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  v11 = *(a1 + 23);
  v13 = *a1;
  v12 = *(a1 + 8);
  if (v11 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  if (v11 >= 0)
  {
    v15 = *(a1 + 23);
  }

  else
  {
    v15 = *(a1 + 8);
  }

  if (v15 >= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v9, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v10 > v15)
  {
LABEL_18:
    v18 = *(a3 + 23);
    if (v18 >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    if (v18 >= 0)
    {
      v20 = *(a3 + 23);
    }

    else
    {
      v20 = a3[1];
    }

    if (v10 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v10;
    }

    v22 = memcmp(v19, v9, v21);
    if (v22)
    {
      if ((v22 & 0x80000000) == 0)
      {
LABEL_29:
        v23 = *(a1 + 16);
        v24 = a3[2];
        result = *a3;
        *a1 = *a3;
        *(a1 + 16) = v24;
        *a3 = v13;
        a3[1] = v12;
        a3[2] = v23;
        return result;
      }
    }

    else if (v20 > v10)
    {
      goto LABEL_29;
    }

    v31 = *(a1 + 16);
    v32 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v32;
    *a2 = v13;
    *(a2 + 8) = v12;
    *(a2 + 16) = v31;
    v33 = *(a3 + 23);
    if (v33 >= 0)
    {
      v34 = a3;
    }

    else
    {
      v34 = *a3;
    }

    if (v33 >= 0)
    {
      v35 = *(a3 + 23);
    }

    else
    {
      v35 = a3[1];
    }

    if (v31 >= 0)
    {
      v36 = a2;
    }

    else
    {
      v36 = v13;
    }

    if (v31 >= 0)
    {
      v37 = HIBYTE(v31);
    }

    else
    {
      v37 = v12;
    }

    if (v37 >= v35)
    {
      v38 = v35;
    }

    else
    {
      v38 = v37;
    }

    v39 = memcmp(v34, v36, v38);
    if (v39)
    {
      if (v39 < 0)
      {
        return result;
      }
    }

    else if (v35 <= v37)
    {
      return result;
    }

    result = *a3;
    *(a2 + 16) = a3[2];
    *a2 = result;
    *a3 = v13;
    a3[1] = v12;
    a3[2] = v31;
    return result;
  }

  v26 = *(a3 + 23);
  if (v26 >= 0)
  {
    v27 = a3;
  }

  else
  {
    v27 = *a3;
  }

  if (v26 >= 0)
  {
    v28 = *(a3 + 23);
  }

  else
  {
    v28 = a3[1];
  }

  if (v10 >= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v10;
  }

  v30 = memcmp(v27, v9, v29);
  if (v30)
  {
    if (v30 < 0)
    {
      return result;
    }
  }

  else if (v28 <= v10)
  {
    return result;
  }

  v40 = *(a2 + 16);
  v41 = a3[2];
  *a2 = *a3;
  *(a2 + 16) = v41;
  *a3 = v7;
  a3[1] = v8;
  a3[2] = v40;
  v42 = *(a2 + 23);
  if (v42 >= 0)
  {
    v43 = a2;
  }

  else
  {
    v43 = *a2;
  }

  if (v42 >= 0)
  {
    v44 = *(a2 + 23);
  }

  else
  {
    v44 = *(a2 + 8);
  }

  v45 = *(a1 + 23);
  v46 = *a1;
  v47 = *(a1 + 8);
  if (v45 >= 0)
  {
    v48 = a1;
  }

  else
  {
    v48 = *a1;
  }

  if (v45 >= 0)
  {
    v49 = *(a1 + 23);
  }

  else
  {
    v49 = *(a1 + 8);
  }

  if (v49 >= v44)
  {
    v50 = v44;
  }

  else
  {
    v50 = v49;
  }

  v51 = memcmp(v43, v48, v50);
  if (!v51)
  {
    if (v44 <= v49)
    {
      return result;
    }

    goto LABEL_84;
  }

  if ((v51 & 0x80000000) == 0)
  {
LABEL_84:
    v52 = *(a1 + 16);
    v53 = *(a2 + 16);
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = v53;
    *a2 = v46;
    *(a2 + 8) = v47;
    *(a2 + 16) = v52;
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a2, a3);
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  v11 = *(a3 + 23);
  v12 = *a3;
  v13 = *(a3 + 8);
  if (v11 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v11 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 8);
  }

  if (v15 >= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v9, v14, v16);
  if (v17)
  {
    if (v17 < 0)
    {
      return result;
    }
  }

  else if (v10 <= v15)
  {
    return result;
  }

  v19 = *(a3 + 16);
  v20 = a4[2];
  *a3 = *a4;
  *(a3 + 16) = v20;
  *a4 = v12;
  a4[1] = v13;
  a4[2] = v19;
  v21 = *(a3 + 23);
  if (v21 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if (v21 >= 0)
  {
    v23 = *(a3 + 23);
  }

  else
  {
    v23 = *(a3 + 8);
  }

  v24 = *(a2 + 23);
  v25 = *a2;
  v26 = *(a2 + 8);
  if (v24 >= 0)
  {
    v27 = a2;
  }

  else
  {
    v27 = *a2;
  }

  if (v24 >= 0)
  {
    v28 = *(a2 + 23);
  }

  else
  {
    v28 = *(a2 + 8);
  }

  if (v28 >= v23)
  {
    v29 = v23;
  }

  else
  {
    v29 = v28;
  }

  v30 = memcmp(v22, v27, v29);
  if (v30)
  {
    if (v30 < 0)
    {
      return result;
    }
  }

  else if (v23 <= v28)
  {
    return result;
  }

  v31 = *(a2 + 16);
  v32 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v32;
  *a3 = v25;
  *(a3 + 8) = v26;
  *(a3 + 16) = v31;
  v33 = *(a2 + 23);
  if (v33 >= 0)
  {
    v34 = a2;
  }

  else
  {
    v34 = *a2;
  }

  if (v33 >= 0)
  {
    v35 = *(a2 + 23);
  }

  else
  {
    v35 = *(a2 + 8);
  }

  v36 = *(a1 + 23);
  v37 = *a1;
  v38 = *(a1 + 8);
  if (v36 >= 0)
  {
    v39 = a1;
  }

  else
  {
    v39 = *a1;
  }

  if (v36 >= 0)
  {
    v40 = *(a1 + 23);
  }

  else
  {
    v40 = *(a1 + 8);
  }

  if (v40 >= v35)
  {
    v41 = v35;
  }

  else
  {
    v41 = v40;
  }

  v42 = memcmp(v34, v39, v41);
  if (!v42)
  {
    if (v35 <= v40)
    {
      return result;
    }

LABEL_58:
    v43 = *(a1 + 16);
    v44 = *(a2 + 16);
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = v44;
    *a2 = v37;
    *(a2 + 8) = v38;
    *(a2 + 16) = v43;
    return result;
  }

  if ((v42 & 0x80000000) == 0)
  {
    goto LABEL_58;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a2, a3, a4);
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

  v13 = *(a4 + 23);
  v14 = *a4;
  v15 = *(a4 + 8);
  if (v13 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  if (v13 >= 0)
  {
    v17 = *(a4 + 23);
  }

  else
  {
    v17 = *(a4 + 8);
  }

  if (v17 >= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v17;
  }

  v19 = memcmp(v11, v16, v18);
  if (v19)
  {
    if (v19 < 0)
    {
      return result;
    }
  }

  else if (v12 <= v17)
  {
    return result;
  }

  v21 = *(a4 + 16);
  v22 = a5[2];
  *a4 = *a5;
  *(a4 + 16) = v22;
  *a5 = v14;
  a5[1] = v15;
  a5[2] = v21;
  v23 = *(a4 + 23);
  if (v23 >= 0)
  {
    v24 = a4;
  }

  else
  {
    v24 = *a4;
  }

  if (v23 >= 0)
  {
    v25 = *(a4 + 23);
  }

  else
  {
    v25 = *(a4 + 8);
  }

  v26 = *(a3 + 23);
  v27 = *a3;
  v28 = *(a3 + 8);
  if (v26 >= 0)
  {
    v29 = a3;
  }

  else
  {
    v29 = *a3;
  }

  if (v26 >= 0)
  {
    v30 = *(a3 + 23);
  }

  else
  {
    v30 = *(a3 + 8);
  }

  if (v30 >= v25)
  {
    v31 = v25;
  }

  else
  {
    v31 = v30;
  }

  v32 = memcmp(v24, v29, v31);
  if (v32)
  {
    if (v32 < 0)
    {
      return result;
    }
  }

  else if (v25 <= v30)
  {
    return result;
  }

  v33 = *(a3 + 16);
  v34 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v34;
  *a4 = v27;
  *(a4 + 8) = v28;
  *(a4 + 16) = v33;
  v35 = *(a3 + 23);
  if (v35 >= 0)
  {
    v36 = a3;
  }

  else
  {
    v36 = *a3;
  }

  if (v35 >= 0)
  {
    v37 = *(a3 + 23);
  }

  else
  {
    v37 = *(a3 + 8);
  }

  v38 = *(a2 + 23);
  v39 = *a2;
  v40 = *(a2 + 8);
  if (v38 >= 0)
  {
    v41 = a2;
  }

  else
  {
    v41 = *a2;
  }

  if (v38 >= 0)
  {
    v42 = *(a2 + 23);
  }

  else
  {
    v42 = *(a2 + 8);
  }

  if (v42 >= v37)
  {
    v43 = v37;
  }

  else
  {
    v43 = v42;
  }

  v44 = memcmp(v36, v41, v43);
  if (v44)
  {
    if (v44 < 0)
    {
      return result;
    }
  }

  else if (v37 <= v42)
  {
    return result;
  }

  v45 = *(a2 + 16);
  v46 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v46;
  *a3 = v39;
  *(a3 + 8) = v40;
  *(a3 + 16) = v45;
  v47 = *(a2 + 23);
  if (v47 >= 0)
  {
    v48 = a2;
  }

  else
  {
    v48 = *a2;
  }

  if (v47 >= 0)
  {
    v49 = *(a2 + 23);
  }

  else
  {
    v49 = *(a2 + 8);
  }

  v50 = *(a1 + 23);
  v51 = *a1;
  v52 = *(a1 + 8);
  if (v50 >= 0)
  {
    v53 = a1;
  }

  else
  {
    v53 = *a1;
  }

  if (v50 >= 0)
  {
    v54 = *(a1 + 23);
  }

  else
  {
    v54 = *(a1 + 8);
  }

  if (v54 >= v49)
  {
    v55 = v49;
  }

  else
  {
    v55 = v54;
  }

  v56 = memcmp(v48, v53, v55);
  if (v56)
  {
    if (v56 < 0)
    {
      return result;
    }
  }

  else if (v49 <= v54)
  {
    return result;
  }

  v57 = *(a1 + 16);
  v58 = *(a2 + 16);
  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = v58;
  *a2 = v51;
  *(a2 + 8) = v52;
  *(a2 + 16) = v57;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*>(uint64_t a1, const void **a2)
{
  v2 = a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a2 - 3);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a1 + 48, a2 - 3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v6 = a2 - 3;
      v7 = *(a2 - 1);
      if (v7 >= 0)
      {
        v8 = a2 - 3;
      }

      else
      {
        v8 = *(a2 - 3);
      }

      if (v7 >= 0)
      {
        v9 = *(a2 - 1);
      }

      else
      {
        v9 = *(a2 - 2);
      }

      v10 = *(a1 + 23);
      v11 = *a1;
      v12 = *(a1 + 8);
      if (v10 >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      if (v10 >= 0)
      {
        v14 = *(a1 + 23);
      }

      else
      {
        v14 = *(a1 + 8);
      }

      if (v14 >= v9)
      {
        v15 = v9;
      }

      else
      {
        v15 = v14;
      }

      v16 = memcmp(v8, v13, v15);
      if (v16)
      {
        if (v16 < 0)
        {
          return 1;
        }
      }

      else if (v9 <= v14)
      {
        return 1;
      }

      v40 = *(a1 + 16);
      v41 = *(v2 - 1);
      *a1 = *v6;
      *(a1 + 16) = v41;
      *(v2 - 3) = v11;
      *(v2 - 2) = v12;
      *(v2 - 1) = v40;
      return 1;
    }
  }

  v17 = a1 + 48;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, (a1 + 48));
  v18 = (a1 + 72);
  if ((a1 + 72) == v2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  v42 = v2;
  while (2)
  {
    v22 = *(v18 + 23);
    if (v22 >= 0)
    {
      v23 = v18;
    }

    else
    {
      v23 = *v18;
    }

    if (v22 >= 0)
    {
      v24 = *(v18 + 23);
    }

    else
    {
      v24 = v18[1];
    }

    v25 = *(v17 + 23);
    if (v25 >= 0)
    {
      v26 = v17;
    }

    else
    {
      v26 = *v17;
    }

    if (v25 >= 0)
    {
      v27 = *(v17 + 23);
    }

    else
    {
      v27 = *(v17 + 8);
    }

    if (v27 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v27;
    }

    v29 = memcmp(v23, v26, v28);
    if (v29)
    {
      if (v29 < 0)
      {
        goto LABEL_32;
      }
    }

    else if (v24 <= v27)
    {
      goto LABEL_32;
    }

    v43 = v20;
    v44 = *v18;
    v45 = v18[2];
    *v18 = *v17;
    v18[2] = *(v17 + 16);
    *(v17 + 23) = 0;
    *v17 = 0;
    v30 = v19;
    while (1)
    {
      v31 = a1 + v30;
      v32 = (a1 + v30 + 24);
      if (SHIBYTE(v45) >= 0)
      {
        v33 = &v44;
      }

      else
      {
        v33 = v44;
      }

      if (SHIBYTE(v45) >= 0)
      {
        v34 = HIBYTE(v45);
      }

      else
      {
        v34 = *(&v44 + 1);
      }

      v35 = *(v31 + 47);
      if (v35 >= 0)
      {
        v36 = (a1 + v30 + 24);
      }

      else
      {
        v36 = *(a1 + v30 + 24);
      }

      if (v35 >= 0)
      {
        v37 = *(v31 + 47);
      }

      else
      {
        v37 = *(v31 + 32);
      }

      if (v37 >= v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = v37;
      }

      v39 = memcmp(v33, v36, v38);
      if (!v39)
      {
        if (v34 <= v37)
        {
          goto LABEL_31;
        }

        goto LABEL_54;
      }

      if (v39 < 0)
      {
        break;
      }

LABEL_54:
      v17 -= 24;
      *(v31 + 48) = *v32;
      *(v31 + 64) = *(a1 + v30 + 40);
      *(v31 + 47) = 0;
      *v32 = 0;
      v30 -= 24;
      if (v30 == -48)
      {
        v17 = a1;
        goto LABEL_31;
      }
    }

    v17 = a1 + v30 + 48;
LABEL_31:
    v21 = v44;
    *(v17 + 16) = v45;
    *v17 = v21;
    v20 = v43 + 1;
    v2 = v42;
    if (v43 != 7)
    {
LABEL_32:
      v17 = v18;
      v19 += 24;
      v18 += 3;
      if (v18 == v2)
      {
        return 1;
      }

      continue;
    }

    return v18 + 3 == v42;
  }
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](uint64_t a1, char *a2, int a3)
{
  v6 = MEMORY[0x29C26EB90]();
  *(a1 + 8) = std::locale::use_facet(v6, MEMORY[0x29EDC93D0]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x29EDC93E8]);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  v7 = strlen(a2);
  if (std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(a1, a2, &a2[v7]) != &a2[v7])
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  return a1;
}

void sub_29730D3E0(_Unwind_Exception *a1)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(uint64_t a1, std::basic_regex<char> *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_2A1E35468;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E354C0;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v10 = *(a1 + 40);
    *(a1 + 56) = v10;
    v11 = *(a1 + 24) & 0x1F0;
    if (v11 <= 0x3F)
    {
      goto LABEL_4;
    }

LABEL_9:
    if (v11 != 64)
    {
      if (v11 == 128)
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(a1, a2, a3);
      }

      if (v11 == 256)
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(a1, a2, a3);
      }

LABEL_44:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
    }

LABEL_15:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, a2, a3);
  }

  v10 = *(a1 + 40);
  *(a1 + 56) = v10;
  v11 = *(a1 + 24) & 0x1F0;
  if (v11 > 0x3F)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v11)
  {
    if (v11 == 16)
    {

      return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, a2, a3);
    }

    if (v11 != 32)
    {
      goto LABEL_44;
    }

    goto LABEL_15;
  }

  v13 = a2;
  while (1)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v13, a3);
    if (result == v13)
    {
      break;
    }

LABEL_25:
    v14 = result == v13;
    v13 = result;
    if (v14)
    {
      goto LABEL_30;
    }
  }

  v15 = *(a1 + 56);
  v16 = *(a1 + 28);
  v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v13, a3);
  if (v17 != v13)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v17, a3, v15, (v16 + 1), (*(a1 + 28) + 1));
    goto LABEL_25;
  }

  result = v13;
LABEL_30:
  if (result == a2)
  {
    v18 = result;
    v19 = operator new(0x10uLL);
    result = v18;
    v20 = *(a1 + 56);
    v21 = *(v20 + 8);
    v19[1] = v21;
    *(v20 + 8) = v19;
    *(a1 + 56) = v19;
  }

  if (result != a3)
  {
LABEL_35:
    if (*result != 124)
    {
      return result;
    }

    v29 = *(a1 + 56);
    v30 = result + 1;
    v31 = result + 1;
    while (1)
    {
      v32 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v31, a3);
      if (v32 == v31)
      {
        v33 = *(a1 + 56);
        v34 = *(a1 + 28);
        v35 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v31, a3);
        if (v35 == v31)
        {
          v32 = v31;
LABEL_42:
          v36 = v32;
          if (v32 == v30)
          {
            v37 = operator new(0x10uLL);
            v38 = *(a1 + 56);
            v39 = *(v38 + 8);
            v37[1] = v39;
            *(v38 + 8) = v37;
            *(a1 + 56) = v37;
          }

          v22 = operator new(0x18uLL);
          v23 = *(v29 + 8);
          v22[1] = *(v10 + 8);
          v22[2] = v23;
          *v22 = &unk_2A1E35A80;
          *(v10 + 8) = v22;
          *(v29 + 8) = 0;
          v24 = operator new(0x10uLL);
          v25 = *(a1 + 56);
          v26 = *(v25 + 8);
          v24[1] = v26;
          *(v29 + 8) = v24;
          *(v25 + 8) = 0;
          v27 = operator new(0x10uLL);
          v28 = *(v29 + 8);
          *v27 = &unk_2A1E35AC8;
          v27[1] = v28;
          *(v25 + 8) = v27;
          *(a1 + 56) = *(v29 + 8);
          result = v36;
          if (v36 == a3)
          {
            return result;
          }

          goto LABEL_35;
        }

        v32 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v35, a3, v33, (v34 + 1), (*(a1 + 28) + 1));
      }

      v14 = v32 == v31;
      v31 = v32;
      if (v14)
      {
        goto LABEL_42;
      }
    }
  }

  return result;
}

void sub_29730D888(_Unwind_Exception *a1)
{
  std::__empty_state<char>::~__empty_state(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  result = a2;
  while (1)
  {
    v8 = result;
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, result, a3);
    if (result == v8)
    {
      break;
    }

LABEL_2:
    if (result == v8)
    {
      goto LABEL_7;
    }
  }

  v9 = a1->__end_;
  marked_count = a1->__marked_count_;
  v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v8);
  if (v11 != v8)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v11, a3, v9, marked_count + 1, a1->__marked_count_ + 1);
    goto LABEL_2;
  }

  result = v8;
LABEL_7:
  if (v8 == a2)
  {
    v12 = result;
    v13 = operator new(0x10uLL);
    result = v12;
    v14 = a1->__end_;
    first = v14->__first_;
    v13->__first_ = first;
    v14->__first_ = v13;
    a1->__end_ = v13;
  }

  if (v8 != a3)
  {
LABEL_12:
    if (*result != 124)
    {
      return result;
    }

    v23 = a1->__end_;
    v24 = (result + 1);
    v25 = result + 1;
    while (1)
    {
      v26 = v25;
      v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v25, a3);
      if (v25 == v26)
      {
        v27 = a1->__end_;
        v28 = a1->__marked_count_;
        v29 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v26);
        if (v29 == v26)
        {
          v25 = v26;
LABEL_19:
          v30 = v25;
          if (v26 == v24)
          {
            v31 = operator new(0x10uLL);
            v32 = a1->__end_;
            v33 = v32->__first_;
            v31->__first_ = v33;
            v32->__first_ = v31;
            a1->__end_ = v31;
          }

          v16 = operator new(0x18uLL);
          v17 = v23->__first_;
          v16[1].__vftable = end->__first_;
          v16[2].__vftable = v17;
          v16->__vftable = &unk_2A1E35A80;
          end->__first_ = v16;
          v23->__first_ = 0;
          v18 = operator new(0x10uLL);
          v19 = a1->__end_;
          v20 = v19->__first_;
          v18[1].__vftable = v20;
          v23->__first_ = v18;
          v19->__first_ = 0;
          v21 = operator new(0x10uLL);
          v22 = v23->__first_;
          v21->__vftable = &unk_2A1E35AC8;
          v21[1].__vftable = v22;
          v19->__first_ = v21;
          a1->__end_ = v23->__first_;
          result = v30;
          if (v26 == a3)
          {
            return result;
          }

          goto LABEL_12;
        }

        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v29, a3, v27, v28 + 1, a1->__marked_count_ + 1);
      }

      if (v25 == v26)
      {
        goto LABEL_19;
      }
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  if (*a2 == 94)
  {
    v6 = operator new(0x18uLL);
    v7 = (*(a1 + 24) & 0x5F0) == 1024;
    v8 = *(a1 + 56);
    v9 = *(v8 + 8);
    *v6 = &unk_2A1E355B8;
    v6[1] = v9;
    *(v6 + 16) = v7;
    *(v8 + 8) = v6;
    *(a1 + 56) = v6;
    ++v3;
  }

  if (v3 != a3)
  {
    while (1)
    {
      if (v3 == a3)
      {
        v13 = v3;
LABEL_11:
        if (v13 == a3)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      v10 = *(a1 + 56);
      v11 = *(a1 + 28);
      v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, v3, a3);
      if (v12 == v3)
      {
        break;
      }

      v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v12, a3, v10, (v11 + 1), (*(a1 + 28) + 1));
      v14 = v13 == v3;
      v3 = v13;
      if (v14)
      {
        goto LABEL_11;
      }
    }

    v13 = v3;
    if (v3 == a3)
    {
      goto LABEL_18;
    }

LABEL_14:
    v3 = &v13->__traits_.__loc_.__locale_ + 1;
    if ((&v13->__traits_.__loc_.__locale_ + 1) != a3 || LOBYTE(v13->__traits_.__loc_.__locale_) != 36)
    {
      goto LABEL_18;
    }

    v15 = operator new(0x18uLL);
    v16 = (*(a1 + 24) & 0x5F0) == 1024;
    v17 = *(a1 + 56);
    v18 = *(v17 + 8);
    *v15 = &unk_2A1E35600;
    v15[1] = v18;
    *(v15 + 16) = v16;
    *(v17 + 8) = v15;
    *(a1 + 56) = v15;
  }

  v13 = v3;
LABEL_18:
  v3 = v13;
  if (v13 != a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  return v3;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = *(a1 + 56);
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_11;
  }

  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
LABEL_11:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  if (v8 != a3)
  {
    while (LOBYTE(v8->__traits_.__loc_.__locale_) == 124)
    {
      v9 = *(a1 + 56);
      v10 = (&v8->__traits_.__loc_.__locale_ + 1);
      v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, (&v8->__traits_.__loc_.__locale_ + 1), a3);
      if (v11 == (&v8->__traits_.__loc_.__locale_ + 1))
      {
        goto LABEL_11;
      }

      do
      {
        v8 = v11;
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v11, a3);
      }

      while (v11 != v8);
      if (v8 == v10)
      {
        goto LABEL_11;
      }

      v12 = operator new(0x18uLL);
      v13 = *(v9 + 8);
      v12[1] = *(v6 + 8);
      v12[2] = v13;
      *v12 = &unk_2A1E35A80;
      *(v6 + 8) = v12;
      *(v9 + 8) = 0;
      v14 = operator new(0x10uLL);
      v15 = *(a1 + 56);
      v16 = *(v15 + 8);
      v14[1] = v16;
      *(v9 + 8) = v14;
      *(v15 + 8) = 0;
      v17 = operator new(0x10uLL);
      v18 = *(v9 + 8);
      *v17 = &unk_2A1E35AC8;
      v17[1] = v18;
      *(v15 + 8) = v17;
      *(a1 + 56) = *(v9 + 8);
      if (v8 == a3)
      {
        return v8;
      }
    }
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_2A1E35A80;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_2A1E35AC8;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return v10;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(uint64_t a1, std::basic_regex<char> *__s, std::basic_regex<char> *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = (&v9->__traits_.__loc_.__locale_ + 1);
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = (&v9->__traits_.__loc_.__locale_ + 1);
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_2A1E35A80;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_2A1E35AC8;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = (&v24->__traits_.__loc_.__locale_ + 1);
    }
  }

  while (v10 != a3);
  return v10;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x5B)
  {
    if (v3 == 92)
    {
      if (a2 + 1 != a3)
      {
        v13 = a2[1];
        if (v13 == 66)
        {
          v14 = a1;
          v15 = a2;
          v16 = operator new(0x30uLL);
          first = v14->__end_->__first_;
          *v16 = &unk_2A1E35648;
          *(v16 + 1) = first;
          std::locale::locale(v16 + 2, &v14->__traits_.__loc_);
          *(v16 + 24) = *&v14->__traits_.__ct_;
          v16[40] = 1;
        }

        else
        {
          if (v13 != 98)
          {
            return a2;
          }

          v14 = a1;
          v15 = a2;
          v16 = operator new(0x30uLL);
          v17 = v14->__end_->__first_;
          *v16 = &unk_2A1E35648;
          *(v16 + 1) = v17;
          std::locale::locale(v16 + 2, &v14->__traits_.__loc_);
          *(v16 + 24) = *&v14->__traits_.__ct_;
          v16[40] = 0;
        }

        v14->__end_->__first_ = v16;
        v14->__end_ = v16;
        return v15 + 2;
      }

      return a2;
    }

    if (v3 != 94)
    {
      return a2;
    }

    v7 = a1;
    v8 = a2;
    v9 = operator new(0x18uLL);
    v10 = (v7->__flags_ & 0x5F0) == 1024;
    end = v7->__end_;
    v9[1] = end->__first_;
    v12 = &unk_2A1E355B8;
LABEL_14:
    *v9 = v12;
    *(v9 + 16) = v10;
    end->__first_ = v9;
    v7->__end_ = v9;
    return v8 + 1;
  }

  if (v3 == 36)
  {
    v7 = a1;
    v8 = a2;
    v9 = operator new(0x18uLL);
    v10 = (v7->__flags_ & 0x5F0) == 1024;
    end = v7->__end_;
    v9[1] = end->__first_;
    v12 = &unk_2A1E35600;
    goto LABEL_14;
  }

  v5 = v3 == 40;
  v4 = a2 + 1;
  v5 = !v5 || v4 == a3;
  if (v5)
  {
    return a2;
  }

  v5 = *v4 == 63;
  v18 = a2 + 2;
  if (!v5 || v18 == a3)
  {
    return a2;
  }

  v20 = *v18;
  if (v20 == 33)
  {
    *&v29 = 0xAAAAAAAAAAAAAAAALL;
    *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v35.__loop_count_ = v29;
    *&v35.__start_.__cntrl_ = v29;
    *&v35.__traits_.__loc_.__locale_ = v29;
    *&v35.__traits_.__col_ = v29;
    v31 = a2;
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v35);
    v33 = a1;
    v35.__flags_ = a1->__flags_;
    v34 = a3;
    v27 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v35, v31 + 3, a3);
    LODWORD(v31) = v35.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v33, &v35, 1, v33->__marked_count_);
    v33->__marked_count_ += v31;
    if (v27 == v34 || *v27 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_32;
  }

  if (v20 != 61)
  {
    return a2;
  }

  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v35.__loop_count_ = v21;
  *&v35.__start_.__cntrl_ = v21;
  *&v35.__traits_.__loc_.__locale_ = v21;
  *&v35.__traits_.__col_ = v21;
  v23 = a2;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v35);
  v25 = a1;
  v35.__flags_ = a1->__flags_;
  v26 = a3;
  v27 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v35, v23 + 3, a3);
  LODWORD(v23) = v35.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v25, &v35, 0, v25->__marked_count_);
  v25->__marked_count_ += v23;
  if (v27 == v26 || *v27 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_32:
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v35.__traits_.__loc_);
  return v27 + 1;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  if (this == a3)
  {
    return this;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low <= 0x3E)
  {
    if (locale_low != 40)
    {
      if (locale_low == 46)
      {
        v4 = a1;
        v6 = operator new(0x10uLL);
        v7 = *(v4 + 56);
        v8 = *(v7 + 8);
        *v6 = &unk_2A1E356D8;
        v6[1] = v8;
        *(v7 + 8) = v6;
        *(v4 + 56) = v6;
        return (&this->__traits_.__loc_.__locale_ + 1);
      }

      if (locale_low - 42 >= 2)
      {
        goto LABEL_27;
      }

LABEL_47:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    v14 = &this->__traits_.__loc_.__locale_ + 1;
    if ((&this->__traits_.__loc_.__locale_ + 1) != a3)
    {
      if ((&this->__traits_.__loc_.__locale_ + 2) != a3 && *v14 == 63 && BYTE2(this->__traits_.__loc_.__locale_) == 58)
      {
        v15 = (a1 + 36);
        ++*(a1 + 36);
        v16 = a3;
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, &this->__traits_.__loc_.__locale_ + 3, a3);
        if (v17 == v16)
        {
          goto LABEL_56;
        }

        v18 = v17;
        if (*v17 != 41)
        {
          goto LABEL_56;
        }

LABEL_43:
        --*v15;
        return (v18 + 1);
      }

      if ((*(a1 + 24) & 2) != 0)
      {
        v23 = *(a1 + 28);
      }

      else
      {
        v19 = a1;
        v20 = a3;
        v21 = operator new(0x18uLL);
        a3 = v20;
        v22 = v21;
        a1 = v19;
        v23 = *(v19 + 28) + 1;
        *(v19 + 28) = v23;
        v24 = *(v19 + 56);
        v25 = *(v24 + 8);
        *v22 = &unk_2A1E35918;
        v22[1] = v25;
        *(v22 + 4) = v23;
        *(v24 + 8) = v22;
        *(v19 + 56) = v22;
      }

      v15 = (a1 + 36);
      ++*(a1 + 36);
      v29 = a1;
      v30 = a3;
      v31 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, v14, a3);
      if (v31 != v30)
      {
        v18 = v31;
        if (*v31 == 41)
        {
          if ((*(v29 + 24) & 2) == 0)
          {
            v32 = operator new(0x18uLL);
            v33 = *(v29 + 56);
            v34 = *(v33 + 8);
            *v32 = &unk_2A1E35960;
            v32[1] = v34;
            *(v32 + 4) = v23;
            *(v33 + 8) = v32;
            *(v29 + 56) = v32;
          }

          goto LABEL_43;
        }
      }
    }

LABEL_56:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if (LOBYTE(this->__traits_.__loc_.__locale_) > 0x5Bu)
  {
    if (locale_low != 92)
    {
      if (locale_low == 123)
      {
        goto LABEL_47;
      }

      goto LABEL_27;
    }

    v11 = &this->__traits_.__loc_.__locale_ + 1;
    if ((&this->__traits_.__loc_.__locale_ + 1) == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v13 = *v11;
    if (v13 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
      return (&this->__traits_.__loc_.__locale_ + 2);
    }

    if ((v13 - 49) <= 8)
    {
      v26 = (v13 - 48);
      v9 = &this->__traits_.__loc_.__locale_ + 2;
      if ((&this->__traits_.__loc_.__locale_ + 2) == a3)
      {
        v28 = a3;
      }

      else
      {
        while (1)
        {
          v27 = *v9;
          if ((v27 - 48) > 9)
          {
            break;
          }

          if (v26 >= 0x19999999)
          {
            goto LABEL_57;
          }

          v26 = v27 + 10 * v26 - 48;
          if (++v9 == a3)
          {
            v9 = a3;
            break;
          }
        }

        v28 = a3;
        if (!v26)
        {
LABEL_57:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
        }
      }

      if (v26 > *(a1 + 28))
      {
        goto LABEL_57;
      }

      v35 = a1;
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v26);
      a1 = v35;
      a3 = v28;
      if (v9 != v11)
      {
        return v9;
      }
    }

    v36 = a1;
    v37 = a3;
    v38 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(a1, v11, a3);
    v39 = v37;
    v9 = v38;
    if (v38 == v11)
    {
      v40 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(v36, v11, v39, 0);
      if (v40 == v11)
      {
        return this;
      }

      else
      {
        return v40;
      }
    }

    return v9;
  }

  if (locale_low != 91)
  {
    if (locale_low == 63)
    {
      goto LABEL_47;
    }

LABEL_27:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(a1, this, a3);
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, this, a3);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  if (this == a3)
  {
    return this;
  }

  v6 = *(a1 + 24) & 0x1F0;
  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low <= 0x3E)
  {
    if (locale_low == 42)
    {
      v8 = (&this->__traits_.__loc_.__locale_ + 1);
      if (v6)
      {
        v19 = 1;
      }

      else
      {
        v19 = v8 == a3;
      }

      if (!v19 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v9 = &this->__traits_.__loc_.__locale_ + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v10 = 0;
        goto LABEL_34;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v23 = 0;
      goto LABEL_43;
    }

    if (locale_low == 43)
    {
      v8 = (&this->__traits_.__loc_.__locale_ + 1);
      if (!v6 && v8 != a3 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v9 = &this->__traits_.__loc_.__locale_ + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v10 = 1;
LABEL_34:
        std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v10, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 0);
        return v9;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v23 = 1;
      goto LABEL_43;
    }

    return this;
  }

  if (locale_low == 63)
  {
    v20 = (&this->__traits_.__loc_.__locale_ + 1);
    if (v6)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == a3;
    }

    if (v21 || LOBYTE(v20->__traits_.__loc_.__locale_) != 63)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 1uLL, a4, __mexp_begin, __mexp_end, 1);
      return v20;
    }

    else
    {
      v22 = &this->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 1uLL, a4, __mexp_begin, __mexp_end, 0);
      return v22;
    }
  }

  else
  {
    if (locale_low != 123)
    {
      return this;
    }

    if ((&this->__traits_.__loc_.__locale_ + 1) == a3)
    {
      goto LABEL_69;
    }

    v11 = BYTE1(this->__traits_.__loc_.__locale_);
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      goto LABEL_69;
    }

    v12 = v11 - 48;
    v13 = (&this->__traits_.__loc_.__locale_ + 2);
    if ((&this->__traits_.__loc_.__locale_ + 2) != a3)
    {
      while (1)
      {
        v14 = LOBYTE(v13->__traits_.__loc_.__locale_);
        if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
        {
          break;
        }

        if (v12 >= 214748364)
        {
          goto LABEL_69;
        }

        v12 = v14 + 10 * v12 - 48;
        v13 = (v13 + 1);
        if (v13 == a3)
        {
          v13 = a3;
          break;
        }
      }
    }

    if (v13 == a3)
    {
      goto LABEL_70;
    }

    v15 = LOBYTE(v13->__traits_.__loc_.__locale_);
    if (v15 != 44)
    {
      if (v15 == 125)
      {
        v16 = (&v13->__traits_.__loc_.__locale_ + 1);
        if (v6 || v16 == a3 || LOBYTE(v16->__traits_.__loc_.__locale_) != 63)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v12, a4, __mexp_begin, __mexp_end, 1);
          return v16;
        }

        else
        {
          v17 = &v13->__traits_.__loc_.__locale_ + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v12, a4, __mexp_begin, __mexp_end, 0);
          return v17;
        }
      }

LABEL_69:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
    }

    if ((&v13->__traits_.__loc_.__locale_ + 1) == a3)
    {
      goto LABEL_69;
    }

    v24 = BYTE1(v13->__traits_.__loc_.__locale_);
    if (v24 == 125)
    {
      v8 = (&v13->__traits_.__loc_.__locale_ + 2);
      if (!v6 && v8 != a3 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v10 = v12;
        v9 = &v13->__traits_.__loc_.__locale_ + 3;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        goto LABEL_34;
      }

      v23 = v12;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
LABEL_43:
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v23, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
      return v8;
    }

    if ((v24 & 0xF8) != 0x30 && (v24 & 0xFE) != 0x38)
    {
      goto LABEL_70;
    }

    v25 = v24 - 48;
    v26 = (&v13->__traits_.__loc_.__locale_ + 2);
    if (v26 != a3)
    {
      while (1)
      {
        v27 = LOBYTE(v26->__traits_.__loc_.__locale_);
        if ((v27 & 0xF8) != 0x30 && (v27 & 0xFE) != 0x38)
        {
          break;
        }

        if (v25 >= 214748364)
        {
          goto LABEL_69;
        }

        v25 = v27 + 10 * v25 - 48;
        v26 = (v26 + 1);
        if (v26 == a3)
        {
          v26 = a3;
          break;
        }
      }
    }

    if (v26 == a3 || LOBYTE(v26->__traits_.__loc_.__locale_) != 125)
    {
LABEL_70:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

    if (v25 < v12)
    {
      goto LABEL_69;
    }

    v28 = (&v26->__traits_.__loc_.__locale_ + 1);
    if (v6 || v28 == a3 || LOBYTE(v28->__traits_.__loc_.__locale_) != 63)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v25, a4, __mexp_begin, __mexp_end, 1);
      return v28;
    }

    else
    {
      v29 = &v26->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v25, a4, __mexp_begin, __mexp_end, 0);
      return v29;
    }
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_23;
    }

    v5 = a2[1];
    v6 = v5 == 94;
    v7 = v5 == 94 ? a2 + 2 : a2 + 1;
    v8 = operator new(0xB0uLL);
    std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v8, a1, *(*(a1 + 56) + 8), v6, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
    *(*(a1 + 56) + 8) = v8;
    *(a1 + 56) = v8;
    if (v7 == a3)
    {
      goto LABEL_23;
    }

    if ((*(a1 + 24) & 0x1F0) != 0 && *v7 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 93);
      ++v7;
    }

    if (v7 == a3)
    {
      goto LABEL_23;
    }

    do
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(a1, v7, a3, v8);
      v10 = v9 == v7;
      v7 = v9;
    }

    while (!v10);
    if (v9 == a3)
    {
      goto LABEL_23;
    }

    if (*v9 == 45)
    {
      v11 = v9;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 45);
      v9 = v11 + 1;
    }

    if (v9 == a3 || *v9 != 93)
    {
LABEL_23:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v9 + 1;
  }

  return a2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *a2;
  if (v4 <= 0x71)
  {
    if (*a2 > 0x65u)
    {
      if (v4 == 102)
      {
        if (!a4)
        {
          v18 = a2;
          v19 = 12;
          goto LABEL_80;
        }

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

      if (v4 == 110)
      {
        if (!a4)
        {
          v18 = a2;
          v19 = 10;
          goto LABEL_80;
        }

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
    }

    else
    {
      switch(v4)
      {
        case '0':
          if (!a4)
          {
            v18 = a2;
            v19 = 0;
            goto LABEL_80;
          }

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
          return a2 + 1;
        case 'c':
          if (a2 + 1 == a3)
          {
            goto LABEL_96;
          }

          v6 = a2[1];
          if (((v6 & 0xDF) - 65) > 0x19u)
          {
            goto LABEL_96;
          }

          v7 = v6 & 0x1F;
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

            *a4 = v7;
            *(a4 + 1) = 0;
            return a2 + 2;
          }

          else
          {
            v20 = a2;
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
            return v20 + 2;
          }

        case '_':
          goto LABEL_96;
      }
    }

    goto LABEL_74;
  }

  if (*a2 <= 0x74u)
  {
    if (v4 == 114)
    {
      if (!a4)
      {
        v18 = a2;
        v19 = 13;
        goto LABEL_80;
      }

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

    if (v4 == 116)
    {
      if (!a4)
      {
        v18 = a2;
        v19 = 9;
        goto LABEL_80;
      }

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

LABEL_74:
    if ((v4 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[*a2] & 0x500) != 0)
    {
      goto LABEL_96;
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

      *a4 = v4;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    v18 = a2;
    v19 = v4;
LABEL_80:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v19);
    return v18 + 1;
  }

  if (v4 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_96;
    }

    v9 = a2[1];
    if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
    {
      goto LABEL_96;
    }

    a2 += 2;
    if (a2 == a3)
    {
      goto LABEL_96;
    }

    v10 = *a2;
    v11 = -48;
    if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
    {
      v10 |= 0x20u;
      if ((v10 - 97) >= 6)
      {
        goto LABEL_96;
      }

      v11 = -87;
    }

    v5 = 16 * (v11 + v10);
LABEL_46:
    if (a2 + 1 == a3)
    {
      goto LABEL_96;
    }

    v12 = a2[1];
    v13 = -48;
    if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
    {
      v12 |= 0x20u;
      if ((v12 - 97) >= 6)
      {
        goto LABEL_96;
      }

      v13 = -87;
    }

    if (a2 + 2 != a3)
    {
      v14 = a2[2];
      v15 = -48;
      if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
      {
        goto LABEL_56;
      }

      v14 |= 0x20u;
      if ((v14 - 97) < 6)
      {
        v15 = -87;
LABEL_56:
        v16 = v14 + 16 * (v5 + v13 + v12) + v15;
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
          return a2 + 3;
        }

        v17 = a2;
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v16);
        return v17 + 3;
      }
    }

LABEL_96:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  if (v4 != 118)
  {
    if (v4 == 120)
    {
      v5 = 0;
      goto LABEL_46;
    }

    goto LABEL_74;
  }

  if (!a4)
  {
    v18 = a2;
    v19 = 11;
    goto LABEL_80;
  }

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

void std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return;
  }

  v4 = *a2;
  if (v4 == 93)
  {
    return;
  }

  v7 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v36 = 0;
  if (a2 + 1 == a3 || v4 != 91)
  {
    goto LABEL_23;
  }

  v8 = a2[1];
  if (v8 != 46)
  {
    if (v8 != 58)
    {
      if (v8 == 61)
      {
        std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(a1, a2 + 2, a3, a4);
        if ((SHIBYTE(v36) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_70;
      }

      v7 = 0;
LABEL_23:
      v17 = *(a1 + 24) & 0x1F0;
      goto LABEL_35;
    }

    if (a3 - (a2 + 2) >= 2)
    {
      v9 = a3 - a2 - 4;
      v10 = a2 + 2;
      v11 = a2 + 3;
      if (a2[2] != 58)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (*v11 == 93)
      {
        if (v10 != a3)
        {
          v25 = std::regex_traits<char>::__lookup_classname<char const*>(a1, a2 + 2, v10, *(a1 + 24) & 1);
          if (!v25)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
          }

          *(a4 + 160) |= v25;
          if (SHIBYTE(v36) < 0)
          {
            goto LABEL_70;
          }

          return;
        }
      }

      else
      {
LABEL_13:
        while (v9)
        {
          --v9;
          v10 = v11;
          v12 = *v11++;
          if (v12 == 58)
          {
            goto LABEL_12;
          }
        }
      }
    }

LABEL_88:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (a3 - (a2 + 2) < 2)
  {
    goto LABEL_88;
  }

  v13 = a3 - a2 - 4;
  v14 = a2 + 2;
  v15 = a2 + 3;
  if (a2[2] != 46)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (*v15 != 93)
  {
LABEL_19:
    while (v13)
    {
      --v13;
      v14 = v15;
      v16 = *v15++;
      if (v16 == 46)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_88;
  }

  if (v14 == a3)
  {
    goto LABEL_88;
  }

  v19 = a1;
  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2 + 2, v14, &v37);
  a1 = v19;
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
    a1 = v19;
  }

  v36 = v38;
  *__p = v37;
  v20 = HIBYTE(v38);
  v7 = SHIBYTE(v38);
  v21 = *(&v37 + 1);
  if (v38 < 0)
  {
    v20 = __p[1];
  }

  if ((v20 - 1) >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  a2 = v14 + 2;
  v17 = *(a1 + 24) & 0x1F0;
  if (v38 >= 0)
  {
    v21 = SHIBYTE(v38);
  }

  if (v21)
  {
    v18 = v14 + 2;
    if (a2 == a3)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_35:
  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v22) = *a2;
LABEL_44:
    if (v7 < 0)
    {
      v26 = __p[0];
      __p[1] = 1;
      *__p[0] = v22;
      v26[1] = 0;
      v18 = a2 + 1;
      if (a2 + 1 == a3)
      {
        goto LABEL_52;
      }
    }

    else
    {
      HIBYTE(v36) = 1;
      LOWORD(__p[0]) = v22;
      v18 = a2 + 1;
      if (a2 + 1 == a3)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_51;
  }

  v22 = *a2;
  if (v22 != 92)
  {
    goto LABEL_44;
  }

  v23 = a1;
  if (v17)
  {
    v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, a2 + 1, a3, __p);
  }

  else
  {
    v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, a2 + 1, a3, __p, a4);
  }

  v18 = v24;
  a1 = v23;
  if (v18 == a3)
  {
LABEL_52:
    if (SHIBYTE(v36) < 0)
    {
      if (!__p[1])
      {
        goto LABEL_69;
      }

      if (__p[1] != 1)
      {
        v28 = __p[0];
LABEL_68:
        std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v28, *(v28 + 1));
LABEL_69:
        if ((SHIBYTE(v36) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_70;
      }

      v28 = __p[0];
    }

    else
    {
      if (!HIBYTE(v36))
      {
        goto LABEL_69;
      }

      v28 = __p;
      if (HIBYTE(v36) != 1)
      {
        goto LABEL_68;
      }
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v28);
    goto LABEL_69;
  }

LABEL_51:
  v27 = *v18;
  if (v27 == 93)
  {
    goto LABEL_52;
  }

  v29 = v18 + 1;
  if (v18 + 1 == a3 || v27 != 45 || *v29 == 93)
  {
    goto LABEL_52;
  }

  v37 = 0uLL;
  v38 = 0;
  v30 = v18 + 2;
  if (v18 + 2 != a3 && *v29 == 91 && *v30 == 46)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v18 + 3, a3, &v37);
    goto LABEL_79;
  }

  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v29) = *v29;
    goto LABEL_77;
  }

  LODWORD(v29) = *v29;
  if (v29 != 92)
  {
LABEL_77:
    HIBYTE(v38) = 1;
    LOWORD(v37) = v29;
    goto LABEL_79;
  }

  if (v17)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v30, a3, &v37);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v30, a3, &v37, a4);
  }

LABEL_79:
  *v33 = *__p;
  v34 = v36;
  __p[1] = 0;
  v36 = 0;
  __p[0] = 0;
  *v31 = v37;
  v32 = v38;
  v37 = 0uLL;
  v38 = 0;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](a4, v33, v31);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
    if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
LABEL_81:
      if ((SHIBYTE(v38) & 0x80000000) == 0)
      {
        goto LABEL_82;
      }

LABEL_86:
      operator delete(v37);
      if (SHIBYTE(v36) < 0)
      {
        goto LABEL_70;
      }

      return;
    }
  }

  else if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
    goto LABEL_81;
  }

  operator delete(v33[0]);
  if (SHIBYTE(v38) < 0)
  {
    goto LABEL_86;
  }

LABEL_82:
  if (SHIBYTE(v36) < 0)
  {
LABEL_70:
    operator delete(__p[0]);
  }
}

void sub_29730F91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_38;
  }

  v7 = a2;
  v8 = a2 + 1;
  if (*a2 != 61)
  {
    goto LABEL_4;
  }

LABEL_3:
  if (*v8 != 93)
  {
LABEL_4:
    while (v4)
    {
      --v4;
      v7 = v8;
      v9 = *v8++;
      if (v9 == 61)
      {
        goto LABEL_3;
      }
    }

LABEL_38:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (v7 == a3)
  {
    goto LABEL_38;
  }

  memset(v19, 170, sizeof(v19));
  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v7, v19);
  v10 = SHIBYTE(v19[2]);
  if ((SHIBYTE(v19[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v19[2]))
    {
      memset(__p, 170, sizeof(__p));
      v11 = v19;
      goto LABEL_13;
    }

LABEL_39:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v10 = v19[1];
  if (!v19[1])
  {
    goto LABEL_39;
  }

  memset(__p, 170, sizeof(__p));
  v11 = v19[0];
LABEL_13:
  std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(a1, v11, v10 + v11, __p);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    if (__p[1])
    {
LABEL_15:
      v12 = *(a4 + 144);
      if (v12 >= *(a4 + 152))
      {
        *(a4 + 144) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a4 + 136, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_36;
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
          v13 = *__p;
          *(v12 + 16) = __p[2];
          *v12 = v13;
        }

        *(a4 + 144) = v12 + 24;
        *(a4 + 144) = v12 + 24;
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_32;
    }
  }

  else if (HIBYTE(__p[2]))
  {
    goto LABEL_15;
  }

  v14 = HIBYTE(v19[2]);
  if (SHIBYTE(v19[2]) < 0)
  {
    v14 = v19[1];
  }

  if (v14 == 2)
  {
    v16 = v19;
    if (SHIBYTE(v19[2]) < 0)
    {
      v16 = v19[0];
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v16, *(v16 + 1));
  }

  else
  {
    if (v14 != 1)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
    }

    v15 = v19;
    if (SHIBYTE(v19[2]) < 0)
    {
      v15 = v19[0];
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v15);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_36:
    operator delete(__p[0]);
    if (SHIBYTE(v19[2]) < 0)
    {
      goto LABEL_37;
    }

    return v7 + 2;
  }

LABEL_32:
  if ((SHIBYTE(v19[2]) & 0x80000000) == 0)
  {
    return v7 + 2;
  }

LABEL_37:
  operator delete(v19[0]);
  return v7 + 2;
}

void sub_29730FBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 144) = v21;
  if (a14 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      _Unwind_Resume(a1);
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  v7 = a2 + 1;
  if (*a2 != 46)
  {
    goto LABEL_4;
  }

LABEL_3:
  if (*v7 != 93)
  {
LABEL_4:
    while (v4)
    {
      --v4;
      v6 = v7;
      v8 = *v7++;
      if (v8 == 46)
      {
        goto LABEL_3;
      }
    }

LABEL_14:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (v6 == a3)
  {
    goto LABEL_14;
  }

  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v6, &v12);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
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

      goto LABEL_25;
    }

    if (v5 != 98)
    {
      if (v5 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return a2 + 1;
      }

      goto LABEL_25;
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

      goto LABEL_25;
    }

    if (*a2)
    {
      if (v5 == 68)
      {
        *(a5 + 164) |= 0x400u;
        return a2 + 1;
      }

LABEL_25:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, a4);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_75:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v4 = *a2;
  v5 = *a2;
  if (v4 <= 0x65)
  {
    if (*a2 <= 0x5Bu)
    {
      if (v4 != 34 && v4 != 47)
      {
        goto LABEL_48;
      }
    }

    else if (v4 != 92)
    {
      if (v4 == 97)
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

          *a4 = 7;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 7);
          return a2 + 1;
        }
      }

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

    if (v4 == 110)
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
    }
  }

LABEL_48:
  if ((v4 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_75;
  }

  v8 = v5 - 48;
  v9 = a2 + 1;
  if (a2 + 1 != a3 && (*v9 & 0xF8) == 0x30)
  {
    v8 = *v9 + 8 * v8 - 48;
    v9 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v10 = *v9 + 8 * v8 - 48;
      if ((*v9 & 0xF8) == 0x30)
      {
        v9 = a2 + 3;
        v8 = v10;
      }
    }
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

    result = v9;
    *a4 = v8;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
    return v9;
  }

  return result;
}

uint64_t std::regex_traits<char>::__lookup_classname<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
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
    memcpy(v8, a2, v4);
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

void sub_297310504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(a1, a2, a3);
  if (result == a2 && result != a3 && result + 1 != a3 && *result == 92)
  {
    v7 = result[1];
    if (v7 == 40)
    {
      v8 = (result + 2);
      if ((*(a1 + 24) & 2) != 0)
      {
        v10 = *(a1 + 28);
      }

      else
      {
        v9 = operator new(0x18uLL);
        v10 = *(a1 + 28) + 1;
        *(a1 + 28) = v10;
        v11 = *(a1 + 56);
        v12 = *(v11 + 8);
        *v9 = &unk_2A1E35918;
        v9[1] = v12;
        *(v9 + 4) = v10;
        *(v11 + 8) = v9;
        *(a1 + 56) = v9;
      }

      while (v8 != a3)
      {
        v14 = *(a1 + 56);
        v15 = *(a1 + 28);
        v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, v8, a3);
        if (v16 == v8)
        {
          break;
        }

        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v16, a3, v14, (v15 + 1), (*(a1 + 28) + 1));
        v18 = v17 == v8;
        v8 = v17;
        if (v18)
        {
          goto LABEL_20;
        }
      }

      v17 = v8;
LABEL_20:
      if (v17 == a3 || (&v17->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v17->__traits_.__loc_.__locale_) != 92 || BYTE1(v17->__traits_.__loc_.__locale_) != 41)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      result = v17 + 2 * (BYTE1(v17->__traits_.__loc_.__locale_) == 41);
      if ((*(a1 + 24) & 2) == 0)
      {
        v19 = result;
        v20 = operator new(0x18uLL);
        result = v19;
        v21 = *(a1 + 56);
        v22 = *(v21 + 8);
        *v20 = &unk_2A1E35960;
        v20[1] = v22;
        *(v20 + 4) = v10;
        *(v21 + 8) = v20;
        *(a1 + 56) = v20;
      }
    }

    else if (((v7 & 0xF8) == 0x30 || (v7 & 0xFE) == 0x38) && (v7 - 49) <= 8)
    {
      if ((v7 - 48) > *(a1 + 28))
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      v13 = result;
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v7 - 48);
      return v13 + 2;
    }
  }

  return result;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = this;
  if (this == a3)
  {
    return v6;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low == 42)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
    return (v6 + 1);
  }

  if ((&this->__traits_.__loc_.__locale_ + 1) == a3 || locale_low != 92 || BYTE1(this->__traits_.__loc_.__locale_) != 123)
  {
    return v6;
  }

  v9 = (this + 2 * (BYTE1(this->__traits_.__loc_.__locale_) == 123));
  if (v9 == a3)
  {
    goto LABEL_41;
  }

  v10 = LOBYTE(v9->__traits_.__loc_.__locale_);
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
  {
    goto LABEL_41;
  }

  v11 = v10 - 48;
  v12 = (&v9->__traits_.__loc_.__locale_ + 1);
  if ((&v9->__traits_.__loc_.__locale_ + 1) != a3)
  {
    while (1)
    {
      v13 = LOBYTE(v12->__traits_.__loc_.__locale_);
      if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
      {
        break;
      }

      if (v11 >= 214748364)
      {
        goto LABEL_41;
      }

      v11 = v13 + 10 * v11 - 48;
      v12 = (v12 + 1);
      if (v12 == a3)
      {
        v12 = a3;
        break;
      }
    }
  }

  if (v12 == a3)
  {
    goto LABEL_42;
  }

  v14 = (&v12->__traits_.__loc_.__locale_ + 1);
  v15 = LOBYTE(v12->__traits_.__loc_.__locale_);
  if (v15 != 44)
  {
    if (v14 != a3 && v15 == 92 && LOBYTE(v14->__traits_.__loc_.__locale_) == 125)
    {
      v19 = &v12->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v11, v11, a4, __mexp_begin, __mexp_end, 1);
      return v19;
    }

LABEL_42:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
  }

  if (v14 != a3 && ((v16 = LOBYTE(v14->__traits_.__loc_.__locale_), (v16 & 0xF8) == 0x30) || (v16 & 0xFE) == 0x38))
  {
    v17 = v16 - 48;
    v14 = (&v12->__traits_.__loc_.__locale_ + 2);
    if ((&v12->__traits_.__loc_.__locale_ + 2) != a3)
    {
      while (1)
      {
        v20 = LOBYTE(v14->__traits_.__loc_.__locale_);
        if ((v20 & 0xF8) != 0x30 && (v20 & 0xFE) != 0x38)
        {
          break;
        }

        if (v17 >= 214748364)
        {
          goto LABEL_41;
        }

        v17 = v20 + 10 * v17 - 48;
        v14 = (v14 + 1);
        if (v14 == a3)
        {
          v14 = a3;
          break;
        }
      }
    }
  }

  else
  {
    v17 = -1;
  }

  if (v14 == a3 || (&v14->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v14->__traits_.__loc_.__locale_) != 92 || BYTE1(v14->__traits_.__loc_.__locale_) != 125)
  {
    goto LABEL_42;
  }

  v18 = v14 + 2 * (BYTE1(v14->__traits_.__loc_.__locale_) == 125);
  if (v17 != -1)
  {
    if (v17 >= v11)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v11, v17, a4, __mexp_begin, __mexp_end, 1);
      return v18;
    }

LABEL_41:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v11, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
  return v18;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2 + 1;
    v3 = *a2;
    if (a2 + 1 != a3 || v3 != 36)
    {
      if ((v3 - 46) > 0x2E || ((1 << (v3 - 46)) & 0x600000000001) == 0)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v3);
        return v4;
      }

      if (v4 == a3 || v3 != 92)
      {
        if (v3 == 46)
        {
          v10 = operator new(0x10uLL);
          end = a1->__end_;
          first = end->__first_;
          v10->__vftable = &unk_2A1E35B10;
          v10->__first_ = first;
          end->__first_ = v10;
          a1->__end_ = v10;
          return v4;
        }
      }

      else
      {
        v7 = *v4;
        if ((v7 - 36) <= 0x3A && ((1 << (v7 - 36)) & 0x580000000000441) != 0)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
          return a2 + 2;
        }
      }
    }
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (this == a3)
  {
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, this, a3);
    if (v11 != this)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  v9 = (locale_low - 36);
  if (v9 > 0x3A)
  {
    goto LABEL_22;
  }

  if (((1 << (locale_low - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_4;
  }

  if (v9 == 5)
  {
    if (!*(a1 + 36))
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_22:
    if ((locale_low - 123) >= 2)
    {
LABEL_23:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, locale_low);
      v11 = &this->__traits_.__loc_.__locale_ + 1;
      goto LABEL_32;
    }
  }

LABEL_4:
  v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, this, a3);
  v11 = v10;
  if (v10 == this)
  {
    if (LOBYTE(v10->__traits_.__loc_.__locale_) == 46)
    {
      v12 = operator new(0x10uLL);
      v13 = *(a1 + 56);
      v14 = *(v13 + 8);
      *v12 = &unk_2A1E35B10;
      v12[1] = v14;
      *(v13 + 8) = v12;
      *(a1 + 56) = v12;
      ++v11;
      goto LABEL_9;
    }

LABEL_8:
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, this, a3);
  }

LABEL_9:
  if (v11 == this && v11 != a3)
  {
    v15 = *v11;
    switch(v15)
    {
      case '$':
        v16 = operator new(0x18uLL);
        v17 = (*(a1 + 24) & 0x5F0) == 1024;
        v18 = *(a1 + 56);
        v16[1] = *(v18 + 8);
        v19 = &unk_2A1E35600;
        break;
      case '(':
        if ((*(a1 + 24) & 2) != 0)
        {
          v21 = *(a1 + 28);
        }

        else
        {
          v20 = operator new(0x18uLL);
          v21 = *(a1 + 28) + 1;
          *(a1 + 28) = v21;
          v22 = *(a1 + 56);
          v23 = *(v22 + 8);
          *v20 = &unk_2A1E35918;
          v20[1] = v23;
          *(v20 + 4) = v21;
          *(v22 + 8) = v20;
          *(a1 + 56) = v20;
        }

        ++*(a1 + 36);
        v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v11 + 1, a3);
        if (v24 == a3 || (v11 = v24, *v24 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          v25 = operator new(0x18uLL);
          v26 = *(a1 + 56);
          v27 = *(v26 + 8);
          *v25 = &unk_2A1E35960;
          v25[1] = v27;
          *(v25 + 4) = v21;
          *(v26 + 8) = v25;
          *(a1 + 56) = v25;
        }

        --*(a1 + 36);
        goto LABEL_30;
      case '^':
        v16 = operator new(0x18uLL);
        v17 = (*(a1 + 24) & 0x5F0) == 1024;
        v18 = *(a1 + 56);
        v16[1] = *(v18 + 8);
        v19 = &unk_2A1E355B8;
        break;
      default:
        goto LABEL_31;
    }

    *v16 = v19;
    *(v16 + 16) = v17;
    *(v18 + 8) = v16;
    *(a1 + 56) = v16;
LABEL_30:
    ++v11;
  }

LABEL_31:
  if (v11 == this)
  {
    return v11;
  }

LABEL_32:
  v28 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v11, a3, v6, (v7 + 1), v28);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  if (this == a3 || (&this->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(this->__traits_.__loc_.__locale_) != 92)
  {
    return this;
  }

  v3 = BYTE1(this->__traits_.__loc_.__locale_);
  v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x5800000080004F1) == 0;
  if (!v4 || (v3 - 123) < 3)
  {
    v5 = this;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v3);
    return &v5->__traits_.__loc_.__locale_ + 2;
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v7 = &this->__traits_.__loc_.__locale_ + 1;

    return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v7, a3, 0);
  }

  else
  {
    v8 = this;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v3);
    v10 = 2;
    if (!v9)
    {
      v10 = 0;
    }

    return v8 + v10;
  }
}

uint64_t std::unordered_set<std::string>::~unordered_set[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void *std::unique_ptr<std::__hash_node<std::string,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v23 = *(a2 + a3 - 48);
      v24 = *(a2 + a3 - 40);
      v25 = *(a2 + a3 - 24);
      v26 = *(a2 + a3 - 56);
      v27 = *(a2 + a3 - 16);
      v28 = *(a2 + a3 - 8);
      v29 = v26 + v27;
      v30 = 0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))));
      v31 = 0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47));
      v32 = *(a2 + a3 - 64) + a3;
      v33 = v23 + v26 + v32;
      v34 = __ROR8__(v33, 44) + v32;
      v35 = __ROR8__(v32 + v24 + v31, 21);
      v36 = v33 + v24;
      v37 = v34 + v35;
      v38 = v29 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v39 = v25 + v27 + v38;
      v40 = v39 + v28;
      v41 = __ROR8__(v39, 44) + v38 + __ROR8__(v38 + v24 + v28, 21);
      v43 = *a2;
      v42 = a2 + 4;
      v44 = v43 - 0x4B6D499041670D8DLL * v24;
      v45 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v46 = *(v42 - 3);
        v47 = v44 + v36 + v29 + v46;
        v48 = v42[2];
        v49 = v42[3];
        v50 = v42[1];
        v29 = v50 + v36 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v37 + v48, 42);
        v51 = v31 + v40;
        v52 = *(v42 - 2);
        v53 = *(v42 - 1);
        v54 = *(v42 - 4) - 0x4B6D499041670D8DLL * v37;
        v55 = v54 + v40 + v53;
        v56 = v54 + v46 + v52;
        v36 = v56 + v53;
        v57 = __ROR8__(v56, 44) + v54;
        v58 = (0xB492B66FBE98F273 * __ROR8__(v47, 37)) ^ v41;
        v44 = 0xB492B66FBE98F273 * __ROR8__(v51, 33);
        v37 = v57 + __ROR8__(v55 + v58, 21);
        v59 = v44 + v41 + *v42;
        v40 = v50 + v48 + v59 + v49;
        v41 = __ROR8__(v50 + v48 + v59, 44) + v59 + __ROR8__(v29 + v52 + v59 + v49, 21);
        v42 += 8;
        v31 = v58;
        v45 += 64;
      }

      while (v45);
      v60 = v58 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) ^ ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) >> 47));
      v61 = v44 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) >> 47));
    }

    else
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v16 = *(a2 + a3 - 24) + v14 + v6;
      v17 = 0xC3A5C85C97CB3127 * (v16 + *(a2 + a3 - 8) + v8 + v15) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + __ROR8__(*(a2 + a3 - 8) + v8 + v14, 52) + __ROR8__(v16, 31));
      return 0x9AE16A3B2F90404FLL * ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) ^ ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) >> 47));
    }
  }

  else if (a3 > 0x10)
  {
    v18 = a2[1];
    v19 = 0xB492B66FBE98F273 * *a2;
    v20 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v19 - v18, 43);
    v21 = v19 + a3 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
    v22 = 0x9DDFEA08EB382D69 * ((v20 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v21);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  }

  else if (a3 < 9)
  {
    if (a3 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a3)
      {
        v64 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v64 ^ (v64 >> 47));
      }
    }

    else
    {
      v62 = *(a2 + a3 - 4);
      v63 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v62);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) ^ ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 47));
    }
  }

  else
  {
    v3 = *(a2 + a3 - 8);
    v4 = __ROR8__(v3 + a3, a3);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
  }

  return result;
}

void **BasebandTransport::getSupportedProtocols@<X0>(BasebandTransport *this@<X0>, void **a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  result = capabilities::radio::vendor(this);
  if (result > 2)
  {
    if (result == 3)
    {
      v53 = &v53;
      v54 = &v53;
      v55 = 0;
      v20 = operator new(0x18uLL);
      v20[4] = 8;
      *v20 = &v53;
      *(v20 + 1) = &v53;
      v53 = v20;
      v54 = v20;
      v55 = 1;
      v42 = operator new(0x18uLL);
      v42[4] = 17;
      *v42 = v20;
      *(v42 + 1) = &v53;
      *(v20 + 1) = v42;
      v53 = v42;
      v55 = 2;
      v43 = operator new(0x18uLL);
      v43[4] = 10;
      *v43 = v42;
      *(v43 + 1) = &v53;
      *(v42 + 1) = v43;
      v53 = v43;
      v55 = 3;
      v44 = operator new(0x18uLL);
      v44[4] = 14;
      *v44 = v43;
      *(v44 + 1) = &v53;
      *(v43 + 1) = v44;
      v53 = v44;
      v55 = 4;
      v45 = operator new(0x18uLL);
      v45[4] = 16;
      *v45 = v44;
      *(v45 + 1) = &v53;
      *(v44 + 1) = v45;
      v53 = v45;
      v55 = 5;
      result = operator new(0x18uLL);
      *(result + 4) = 18;
      v46 = &v53;
      *result = v45;
      result[1] = &v53;
      *(v45 + 1) = result;
      v19 = 6;
      v53 = result;
      v55 = 6;
      if (a2[2])
      {
        result = a2[1];
        v47 = *(*a2 + 1);
        v48 = *result;
        v48[1] = v47;
        *v47 = v48;
        a2[2] = 0;
        if (result == a2)
        {
          v19 = 6;
        }

        else
        {
          do
          {
            v49 = result[1];
            operator delete(result);
            result = v49;
          }

          while (v49 != a2);
          if (!v55)
          {
            return result;
          }

          v19 = a2[2] + v55;
        }

        result = v53;
        v20 = v54;
        v51 = v53[1];
        v46 = *v54;
      }

      else
      {
        v51 = &v53;
      }

      v46[1] = v51;
      *v51 = v46;
LABEL_36:
      v52 = *a2;
      v52[1] = v20;
      *v20 = v52;
      *a2 = result;
      result[1] = a2;
      goto LABEL_37;
    }

    if (result != 4)
    {
      return result;
    }

    v53 = &v53;
    v54 = &v53;
    v55 = 0;
    v20 = operator new(0x18uLL);
    v20[4] = 10;
    *v20 = &v53;
    *(v20 + 1) = &v53;
    v53 = v20;
    v54 = v20;
    v55 = 1;
    v21 = operator new(0x18uLL);
    v21[4] = 19;
    *v21 = v20;
    *(v21 + 1) = &v53;
    *(v20 + 1) = v21;
    v53 = v21;
    v55 = 2;
    v22 = operator new(0x18uLL);
    v22[4] = 20;
    *v22 = v21;
    *(v22 + 1) = &v53;
    *(v21 + 1) = v22;
    v53 = v22;
    v55 = 3;
    v23 = operator new(0x18uLL);
    v23[4] = 21;
    *v23 = v22;
    *(v23 + 1) = &v53;
    *(v22 + 1) = v23;
    v53 = v23;
    v55 = 4;
    v24 = operator new(0x18uLL);
    v24[4] = 22;
    *v24 = v23;
    *(v24 + 1) = &v53;
    *(v23 + 1) = v24;
    v53 = v24;
    v55 = 5;
    v25 = operator new(0x18uLL);
    v25[4] = 23;
    v26 = &v53;
    *v25 = v24;
    *(v25 + 1) = &v53;
    *(v24 + 1) = v25;
    v53 = v25;
    v55 = 6;
    result = operator new(0x18uLL);
    *(result + 4) = 24;
    *result = v25;
    result[1] = &v53;
    *(v25 + 1) = result;
    v19 = 7;
    v53 = result;
    v55 = 7;
    if (a2[2])
    {
      result = a2[1];
      v27 = *(*a2 + 1);
      v28 = *result;
      v28[1] = v27;
      *v27 = v28;
      a2[2] = 0;
      if (result != a2)
      {
        do
        {
          v29 = result[1];
          operator delete(result);
          result = v29;
        }

        while (v29 != a2);
        goto LABEL_20;
      }

      v19 = 7;
LABEL_34:
      result = v53;
      v20 = v54;
      v50 = v53[1];
      v26 = *v54;
      goto LABEL_35;
    }

LABEL_27:
    v50 = &v53;
LABEL_35:
    v26[1] = v50;
    *v50 = v26;
    goto LABEL_36;
  }

  if (result == 1)
  {
    v53 = &v53;
    v54 = &v53;
    v55 = 0;
    v20 = operator new(0x18uLL);
    v20[4] = 0;
    *v20 = &v53;
    *(v20 + 1) = &v53;
    v53 = v20;
    v54 = v20;
    v55 = 1;
    v30 = operator new(0x18uLL);
    v30[4] = 1;
    *v30 = v20;
    *(v30 + 1) = &v53;
    *(v20 + 1) = v30;
    v53 = v30;
    v55 = 2;
    v31 = operator new(0x18uLL);
    v31[4] = 2;
    *v31 = v30;
    *(v31 + 1) = &v53;
    *(v30 + 1) = v31;
    v53 = v31;
    v55 = 3;
    v32 = operator new(0x18uLL);
    v32[4] = 3;
    *v32 = v31;
    *(v32 + 1) = &v53;
    *(v31 + 1) = v32;
    v53 = v32;
    v55 = 4;
    v33 = operator new(0x18uLL);
    v33[4] = 4;
    *v33 = v32;
    *(v33 + 1) = &v53;
    *(v32 + 1) = v33;
    v53 = v33;
    v55 = 5;
    v34 = operator new(0x18uLL);
    v34[4] = 5;
    *v34 = v33;
    *(v34 + 1) = &v53;
    *(v33 + 1) = v34;
    v53 = v34;
    v55 = 6;
    v35 = operator new(0x18uLL);
    v35[4] = 10;
    *v35 = v34;
    *(v35 + 1) = &v53;
    *(v34 + 1) = v35;
    v53 = v35;
    v55 = 7;
    v36 = operator new(0x18uLL);
    v36[4] = 12;
    *v36 = v35;
    *(v36 + 1) = &v53;
    *(v35 + 1) = v36;
    v53 = v36;
    v55 = 8;
    v37 = operator new(0x18uLL);
    v37[4] = 14;
    *v37 = v36;
    *(v37 + 1) = &v53;
    *(v36 + 1) = v37;
    v53 = v37;
    v55 = 9;
    v38 = operator new(0x18uLL);
    v38[4] = 11;
    v26 = &v53;
    *v38 = v37;
    *(v38 + 1) = &v53;
    *(v37 + 1) = v38;
    v53 = v38;
    v55 = 10;
    result = operator new(0x18uLL);
    *(result + 4) = 15;
    *result = v38;
    result[1] = &v53;
    *(v38 + 1) = result;
    v19 = 11;
    v53 = result;
    v55 = 11;
    if (a2[2])
    {
      result = a2[1];
      v39 = *(*a2 + 1);
      v40 = *result;
      v40[1] = v39;
      *v39 = v40;
      a2[2] = 0;
      if (result != a2)
      {
        do
        {
          v41 = result[1];
          operator delete(result);
          result = v41;
        }

        while (v41 != a2);
LABEL_20:
        if (!v55)
        {
          return result;
        }

        v19 = a2[2] + v55;
        goto LABEL_34;
      }

      v19 = 11;
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  if (result == 2)
  {
    v53 = &v53;
    v54 = &v53;
    v55 = 0;
    v4 = operator new(0x18uLL);
    v4[4] = 6;
    *v4 = &v53;
    *(v4 + 1) = &v53;
    v53 = v4;
    v54 = v4;
    v55 = 1;
    v5 = operator new(0x18uLL);
    v5[4] = 7;
    *v5 = v4;
    *(v5 + 1) = &v53;
    *(v4 + 1) = v5;
    v53 = v5;
    v55 = 2;
    v6 = operator new(0x18uLL);
    v6[4] = 8;
    *v6 = v5;
    *(v6 + 1) = &v53;
    *(v5 + 1) = v6;
    v53 = v6;
    v55 = 3;
    v7 = operator new(0x18uLL);
    v7[4] = 9;
    *v7 = v6;
    *(v7 + 1) = &v53;
    *(v6 + 1) = v7;
    v53 = v7;
    v55 = 4;
    v8 = operator new(0x18uLL);
    v8[4] = 10;
    *v8 = v7;
    *(v8 + 1) = &v53;
    *(v7 + 1) = v8;
    v53 = v8;
    v55 = 5;
    result = capabilities::abs::supportsETSProtocol(v8);
    if (result)
    {
      result = operator new(0x18uLL);
      *(result + 4) = 13;
      v9 = v53;
      *result = v53;
      result[1] = &v53;
      v9[1] = result;
      v53 = result;
      ++v55;
    }

    if (a2[2])
    {
      result = a2[1];
      v10 = *(*a2 + 1);
      v11 = *result;
      v11[1] = v10;
      *v10 = v11;
      a2[2] = 0;
      if (result != a2)
      {
        do
        {
          v12 = result[1];
          operator delete(result);
          result = v12;
        }

        while (v12 != a2);
      }
    }

    v13 = v55;
    if (v55)
    {
      v15 = v53;
      v14 = v54;
      v16 = v53[1];
      v17 = *v54;
      v17[1] = v16;
      *v16 = v17;
      v18 = *a2;
      v18[1] = v14;
      *v14 = v18;
      *a2 = v15;
      v15[1] = a2;
      v19 = a2[2] + v13;
LABEL_37:
      a2[2] = v19;
    }
  }

  return result;
}

void sub_297311B24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::list<BasebandTransport::Protocol>::~list(va);
  std::list<BasebandTransport::Protocol>::~list(v2);
  _Unwind_Resume(a1);
}

void sub_297311B44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<BasebandTransport::Protocol>::clear(va);
  std::list<BasebandTransport::Protocol>::~list(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::list<BasebandTransport::Protocol>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void BasebandTransport::getSupportedProtocolsAsStringLowerCase(BasebandTransport *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  memset(v15, 170, sizeof(v15));
  BasebandTransport::getSupportedProtocols(this, v15);
  for (i = v15[1]; i != v15; i = i[1])
  {
    v4 = *(i + 4);
    memset(__p, 170, sizeof(__p));
    BasebandTransport::asString(v4, __p);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v5 = (__p + HIBYTE(__p[2]));
    }

    else
    {
      v5 = (__p[0] + __p[1]);
    }

    if (SHIBYTE(__p[2]) >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    for (; v6 != v5; v6 = (v6 + 1))
    {
      *v6 = __tolower(*v6);
    }

    v7 = operator new(0x28uLL);
    v8 = v7;
    *v7 = 0;
    *(v7 + 1) = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
      std::string::__init_copy_ctor_external((v7 + 16), __p[0], __p[1]);
    }

    else
    {
      *(v7 + 1) = *__p;
      *(v7 + 4) = __p[2];
    }

    v9 = *a2;
    *v8 = *a2;
    v8[1] = a2;
    *(v9 + 8) = v8;
    *a2 = v8;
    ++a2[2];
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v15[2])
  {
    v10 = v15[1];
    v11 = *(v15[0] + 1);
    v12 = *v15[1];
    *(v12 + 8) = v11;
    *v11 = v12;
    v15[2] = 0;
    if (v10 != v15)
    {
      do
      {
        v13 = v10[1];
        operator delete(v10);
        v10 = v13;
      }

      while (v13 != v15);
    }
  }
}

void sub_297311D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v17 = v16;
  operator delete(v17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::list<BasebandTransport::Protocol>::~list(&a15);
  std::list<std::string>::~list(v15);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransport::asStringLowerCase@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(a2, 170, 24);
  result = BasebandTransport::asString(a1, a2);
  v4 = *(a2 + 23);
  v5 = v4;
  v6 = a2 + v4;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = (*a2 + a2[1]);
  }

  if (v5 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  for (; v8 != v7; ++v8)
  {
    result = __tolower(*v8);
    *v8 = result;
  }

  return result;
}

void sub_297311E30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *std::list<std::string>::~list(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v6 = *(v2 + 1);
        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != a1);
    }
  }

  return a1;
}

void BasebandTransport::getSupportedProtocolsAsString(BasebandTransport *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  memset(v14, 170, sizeof(v14));
  BasebandTransport::getSupportedProtocols(this, v14);
  for (i = v14[1]; i != v14; i = i[1])
  {
    BasebandTransport::asString(*(i + 4), __p);
    v4 = operator new(0x28uLL);
    v5 = v4;
    *v4 = 0;
    *(v4 + 1) = 0;
    v6 = SHIBYTE(v13);
    if (SHIBYTE(v13) < 0)
    {
      std::string::__init_copy_ctor_external((v4 + 16), __p[0], __p[1]);
    }

    else
    {
      *(v4 + 1) = *__p;
      *(v4 + 4) = v13;
    }

    v7 = *a2;
    *v5 = *a2;
    v5[1] = a2;
    *(v7 + 8) = v5;
    *a2 = v5;
    ++a2[2];
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v14[2])
  {
    v8 = v14[1];
    v9 = *(v14[0] + 1);
    v10 = *v14[1];
    *(v10 + 8) = v9;
    *v9 = v10;
    v14[2] = 0;
    if (v8 != v14)
    {
      do
      {
        v11 = v8[1];
        operator delete(v8);
        v8 = v11;
      }

      while (v11 != v14);
    }
  }
}

void sub_29731200C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v18 = v16;
  operator delete(v18);
  operator delete(v17);
  std::list<BasebandTransport::Protocol>::~list(&a15);
  std::list<std::string>::~list(v15);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransport::asString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  switch(result)
  {
    case 0:
      a2[23] = 3;
      *a2 = 16976;
      a2[2] = 76;
      a2[3] = 0;
      break;
    case 1:
      a2[23] = 3;
      *a2 = 16979;
      a2[2] = 76;
      a2[3] = 0;
      break;
    case 2:
      a2[23] = 4;
      strcpy(a2, "DIAG");
      break;
    case 3:
      a2[23] = 4;
      strcpy(a2, "REFS");
      break;
    case 4:
      a2[23] = 5;
      *a2 = 1481985361;
      a2[4] = 49;
      a2[5] = 0;
      break;
    case 5:
      a2[23] = 5;
      *a2 = 1481985361;
      a2[4] = 50;
      a2[5] = 0;
      break;
    case 6:
      a2[23] = 3;
      *a2 = 20306;
      a2[2] = 77;
      a2[3] = 0;
      break;
    case 7:
      a2[23] = 4;
      strcpy(a2, "BOOT");
      break;
    case 8:
      a2[23] = 3;
      *a2 = 21057;
      a2[2] = 73;
      a2[3] = 0;
      break;
    case 9:
      a2[23] = 3;
      *a2 = 21587;
      a2[2] = 84;
      a2[3] = 0;
      break;
    case 10:
      a2[23] = 2;
      strcpy(a2, "AT");
      break;
    case 11:
      a2[23] = 4;
      strcpy(a2, "ADPL");
      break;
    case 12:
      a2[23] = 8;
      strcpy(a2, "MEDIACTL");
      break;
    case 13:
      a2[23] = 3;
      *a2 = 21573;
      a2[2] = 83;
      a2[3] = 0;
      break;
    case 14:
      a2[23] = 4;
      strcpy(a2, "GNSS");
      break;
    case 15:
      a2[23] = 4;
      strcpy(a2, "QDSS");
      break;
    case 16:
      a2[23] = 5;
      *a2 = 1414808402;
      a2[4] = 72;
      a2[5] = 0;
      break;
    case 17:
      a2[23] = 3;
      *a2 = 17217;
      a2[2] = 80;
      a2[3] = 0;
      break;
    case 18:
      a2[23] = 4;
      strcpy(a2, "VCOM");
      break;
    case 19:
      a2[23] = 4;
      strcpy(a2, "MIPC");
      break;
    case 20:
      a2[23] = 3;
      *a2 = 18500;
      a2[2] = 76;
      a2[3] = 0;
      break;
    case 21:
      a2[23] = 3;
      *a2 = 21837;
      a2[2] = 88;
      a2[3] = 0;
      break;
    case 22:
      a2[23] = 3;
      *a2 = 16710;
      a2[2] = 67;
      a2[3] = 0;
      break;
    case 23:
      a2[23] = 3;
      *a2 = 17734;
      a2[2] = 80;
      a2[3] = 0;
      break;
    case 24:
      a2[23] = 7;
      strcpy(a2, "IQTRACE");
      break;
    default:
      a2[23] = 7;
      strcpy(a2, "Unknown");
      break;
  }

  return result;
}

{
  if (result > 1)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        a2[23] = 7;
        strcpy(a2, "Stalled");
        return result;
      }

      goto LABEL_8;
    }

    a2[23] = 5;
    *a2 = 1869771333;
    a2[4] = 114;
    a2[5] = 0;
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        a2[23] = 5;
        *a2 = 1684104530;
        a2[4] = 121;
        a2[5] = 0;
        return result;
      }

LABEL_8:
      a2[23] = 7;
      strcpy(a2, "Unknown");
      return result;
    }

    a2[23] = 8;
    strcpy(a2, "NotReady");
  }

  return result;
}

uint64_t BasebandTransport::asProtocol(char *__s1)
{
  v1 = __s1;
  if ((__s1[23] & 0x80000000) == 0)
  {
    result = strcmp(__s1, "PBL");
    if (!result)
    {
      return result;
    }

    if (!strcmp(v1, "SBL"))
    {
      return 1;
    }

    if (strcasecmp(v1, "DIAG"))
    {
      if (strcasecmp(v1, "REFS"))
      {
        if (strcasecmp(v1, "QMUX1"))
        {
          if (strcasecmp(v1, "QMUX2"))
          {
            if (strcasecmp(v1, "ROM"))
            {
              if (strcasecmp(v1, "BOOT"))
              {
                if (strcasecmp(v1, "ARI"))
                {
                  if (strcasecmp(v1, "STT"))
                  {
                    if (strcasecmp(v1, "AT"))
                    {
                      if (strcasecmp(v1, "ADPL"))
                      {
                        if (strcasecmp(v1, "MEDIACTL"))
                        {
                          if (strcasecmp(v1, "ETS"))
                          {
                            if (strcasecmp(v1, "GNSS"))
                            {
                              if (strcasecmp(v1, "QDSS"))
                              {
                                if (strcasecmp(v1, "RCTTH"))
                                {
                                  if (strcasecmp(v1, "ACP"))
                                  {
                                    if (strcasecmp(v1, "VCOM"))
                                    {
                                      if (strcasecmp(v1, "MIPC"))
                                      {
                                        if (strcasecmp(v1, "DHL"))
                                        {
                                          if (strcasecmp(v1, "MUX"))
                                          {
                                            if (strcasecmp(v1, "FAC"))
                                            {
                                              if (strcasecmp(v1, "FEP"))
                                              {
                                                goto LABEL_26;
                                              }

                                              return 23;
                                            }

                                            return 22;
                                          }

                                          return 21;
                                        }

                                        return 20;
                                      }

                                      return 19;
                                    }

                                    return 18;
                                  }

                                  return 17;
                                }

                                return 16;
                              }

                              return 15;
                            }

                            return 14;
                          }

                          return 13;
                        }

                        return 12;
                      }

                      return 11;
                    }

                    return 10;
                  }

                  return 9;
                }

                return 8;
              }

              return 7;
            }

            return 6;
          }

          return 5;
        }

        return 4;
      }

      return 3;
    }

    return 2;
  }

  v1 = *__s1;
  result = strcmp(*__s1, "PBL");
  if (!result)
  {
    return result;
  }

  if (!strcmp(v1, "SBL"))
  {
    return 1;
  }

  if (!strcasecmp(v1, "DIAG"))
  {
    return 2;
  }

  if (!strcasecmp(v1, "REFS"))
  {
    return 3;
  }

  if (!strcasecmp(v1, "QMUX1"))
  {
    return 4;
  }

  if (!strcasecmp(v1, "QMUX2"))
  {
    return 5;
  }

  if (!strcasecmp(v1, "ROM"))
  {
    return 6;
  }

  if (!strcasecmp(v1, "BOOT"))
  {
    return 7;
  }

  if (!strcasecmp(v1, "ARI"))
  {
    return 8;
  }

  if (!strcasecmp(v1, "STT"))
  {
    return 9;
  }

  if (!strcasecmp(v1, "AT"))
  {
    return 10;
  }

  if (!strcasecmp(v1, "ADPL"))
  {
    return 11;
  }

  if (!strcasecmp(v1, "MEDIACTL"))
  {
    return 12;
  }

  if (!strcasecmp(v1, "ETS"))
  {
    return 13;
  }

  if (!strcasecmp(v1, "GNSS"))
  {
    return 14;
  }

  if (!strcasecmp(v1, "QDSS"))
  {
    return 15;
  }

  if (!strcasecmp(v1, "RCTTH"))
  {
    return 16;
  }

  if (!strcasecmp(v1, "ACP"))
  {
    return 17;
  }

  if (!strcasecmp(v1, "VCOM"))
  {
    return 18;
  }

  if (!strcasecmp(v1, "MIPC"))
  {
    return 19;
  }

  if (!strcasecmp(v1, "DHL"))
  {
    return 20;
  }

  if (!strcasecmp(v1, "MUX"))
  {
    return 21;
  }

  if (!strcasecmp(v1, "FAC"))
  {
    return 22;
  }

  if (!strcasecmp(v1, "FEP"))
  {
    return 23;
  }

LABEL_26:
  if (!strcasecmp(v1, "IQTRACE"))
  {
    return 24;
  }

  else
  {
    return 25;
  }
}

uint64_t BasebandTransport::getDefaultTransportIOReadSize(capabilities::radio *a1)
{
  v1 = a1;
  v2 = capabilities::radio::dal(a1);
  if (v2)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0x4000;
  }

  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v2);
  if (shouldUseMinBasebandTransportIOReadSize)
  {
    return v3;
  }

  if (v1 == 17)
  {
    return 0x80000;
  }

  if (v1 == 21 || v1 == 20)
  {
    return 61440;
  }

  v6 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
  if (v1 == 10 && (v6 & 1) != 0)
  {
    return 3584;
  }

  if ((v1 - 19) > 5)
  {
    return 0x8000;
  }

  return dword_297431FD0[v1 - 19];
}

uint64_t BasebandTransport::getDefaultTransportIOReadCount(capabilities::abs *a1)
{
  v1 = a1;
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(a1);
  if (shouldUseMinBasebandTransportIOReadCount)
  {
    return 4;
  }

  switch(v1)
  {
    case 17:
      return 16;
    case 21:
      return 15;
    case 20:
      return 63;
  }

  v4 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
  if (v1 == 10 && (v4 & 1) != 0)
  {
    return 15;
  }

  if (v1 <= 18)
  {
    if (v1 != 2)
    {
      if (v1 == 15 || v1 == 16)
      {
        return 36;
      }

      return 4;
    }

    return 16;
  }

  result = 31;
  if (v1 > 22)
  {
    if (v1 != 23)
    {
      if (v1 == 24)
      {
        return 86;
      }

      return 4;
    }
  }

  else if (v1 != 19)
  {
    return 15;
  }

  return result;
}