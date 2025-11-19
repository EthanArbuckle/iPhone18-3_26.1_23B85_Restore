void sub_296EFD938(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::unordered_set<std::string>::~unordered_set[abi:ne200100](&v3);
  std::vector<std::string>::~vector[abi:ne200100](&v4);
  _Unwind_Resume(a1);
}

void sub_296EFD968(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
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
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
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
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
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

void sub_296EFE154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
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

void std::string::__erase_external_with_move(std::string *this, std::string::size_type __pos, std::string::size_type __n)
{
  if (__n)
  {
    v3 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    size = v3;
    v5 = this;
    if ((v3 & 0x8000000000000000) != 0)
    {
      v5 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
      v6 = size - __pos;
      if (size - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = size - __pos;
      }

      if (size - __pos <= __n)
      {
LABEL_7:
        v8 = size - v7;
        if ((v3 & 0x80) == 0)
        {
LABEL_8:
          *(&this->__r_.__value_.__s + 23) = v8 & 0x7F;
LABEL_15:
          v5->__r_.__value_.__s.__data_[v8] = 0;
          return;
        }

LABEL_14:
        this->__r_.__value_.__l.__size_ = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v6 = v3 - __pos;
      if (v3 - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = v3 - __pos;
      }

      if (v3 - __pos <= __n)
      {
        goto LABEL_7;
      }
    }

    v9 = this;
    memmove(v5 + __pos, v5 + __pos + v7, v6 - v7);
    this = v9;
    v8 = size - v7;
    if ((*(&v9->__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }
}

void ___ZL16sGetOsLogContextv_block_invoke()
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

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x29EDC9518];
  v2 = *MEMORY[0x29EDC9518];
  *a1 = *MEMORY[0x29EDC9518];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x29C268C80](a1 + 2);

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

const char *abm::asString(unsigned int a1)
{
  if (a1 > 9)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE5D5E0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE5D630[a1];
  }
}

const char *abm::asString(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE5D650[a1 - 1];
  }
}

{
  if ((a1 - 1) > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE5D668[a1 - 1];
  }
}

{
  if (!(!v2 & v1))
  {
    result = "Generic";
    switch(a1)
    {
      case 0:
        return result;
      case 1:
        return "Lightning to Headphone Jack Adapter";
      case 2:
        return "EarPods with Lightning";
      case 3:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
        goto LABEL_9;
      case 4:
        return "Lightning Cable";
      case 5:
        return "Charging Dock";
      case 12:
        return "SmartKeyboard";
      case 13:
        return "DisplayCover";
      case 14:
        return "Pencil";
      case 15:
        return "MagSafeCharger";
      case 16:
        return "MagSafeBatteryPack";
      case 17:
        return "USB3";
      case 18:
        return "DisplayPort";
      case 19:
        return "USB-C to Headphone Jack Adapter";
      case 20:
        return "EarPods with USB-C";
      default:
        JUMPOUT(0);
    }
  }

  switch(a1)
  {
    case 2048:
      result = "AppleMagSafeSiliconCase";
      break;
    case 2049:
      result = "AppleMagSafeLeatherCase";
      break;
    case 2050:
      result = "AppleMagSafeClearCase";
      break;
    case 2051:
      result = "AppleMagSafeSleeve";
      break;
    case 2052:
      result = "AppleMagSafeWallet";
      break;
    case 2053:
      result = "AppleMagSafeBatteryPack";
      break;
    case 2054:
      result = "AppleMagSafeChargingMat";
      break;
    case 2055:
      result = "AppleMagSafeChargingCable";
      break;
    case 2056:
      result = "AppleMagSafeRuggedCase";
      break;
    case 2057:
      result = "AppleMagSafeTextileCase";
      break;
    case 2058:
      result = "AppleMagSafeTextileCase2025";
      break;
    case 2059:
      result = "AppleMagSafeSiliconCase2025";
      break;
    case 2060:
      result = "AppleMagSafeBatteryPack2025";
      break;
    default:
      if (a1 == 0xFFFF)
      {
        result = "Unknown";
      }

      else
      {
LABEL_9:
        result = "???";
      }

      break;
  }

  return result;
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  *(a1 + 112) = MEMORY[0x29EDC95A8] + 64;
  v3 = a1 + 8;
  v4 = *(MEMORY[0x29EDC9538] + 16);
  v5 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 8));
  v7 = MEMORY[0x29EDC95A8] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C268DF0](a1 + 16);
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v3);
  return a1;
}

void sub_296F001C0(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 8) = v3;
  std::locale::~locale((v2 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C268E60](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C268CE0](v14, a1);
  if (LOBYTE(v14[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x29EDC93D0]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C268CF0](v14);
  return a1;
}

void sub_296F004A4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C268CF0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x296F00484);
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
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        if ((v12 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v12 | 7) + 1;
        }

        v13 = operator new(v14);
        __b[1] = v12;
        __b[2] = (v14 | 0x8000000000000000);
        __b[0] = v13;
      }

      else
      {
        HIBYTE(__b[2]) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v15 = __b;
      }

      else
      {
        v15 = __b[0];
      }

      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        v17 = v16;
        operator delete(__b[0]);
        if (v17 != v12)
        {
          return 0;
        }
      }

      else if (v16 != v12)
      {
        return 0;
      }
    }

    v18 = a4 - a3;
    if (v18 < 1 || (*(*v6 + 96))(v6, a3, v18) == v18)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_296F006E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t abm::AccessorySimulate::create(xpc_object_t *a1)
{
  if (MEMORY[0x29C2693B0](*a1) != MEMORY[0x29EDCAA00] || !xpc_dictionary_get_value(*a1, "kAccessorySimulateEnabled"))
  {
    return 170;
  }

  value = xpc_dictionary_get_value(*a1, "kAccessorySimulateEnabled");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v4 = xpc::dyn_cast_or_default();
  xpc_release(object);
  return v4 | 0x100u;
}

void abm::AccessorySimulate::toDict(abm::AccessorySimulate *this@<X0>, xpc_object_t *a2@<X8>)
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

  if (MEMORY[0x29C2693B0](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_BOOL_create(*this);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kAccessorySimulateEnabled", v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
}

const char *abm::AccessorySimulate::asString(abm::AccessorySimulate *this)
{
  if (*this)
  {
    return "enabled";
  }

  else
  {
    return "disabled";
  }
}

const char *abm::asString(__int16 a1)
{
  if ((a1 + 1) > 5u)
  {
    return "???";
  }

  else
  {
    return off_29EE5D918[(a1 + 1)];
  }
}

{
  if ((a1 + 1) > 4u)
  {
    return "???";
  }

  else
  {
    return off_29EE5D948[(a1 + 1)];
  }
}

{
  if ((a1 + 1) > 4u)
  {
    return "???";
  }

  else
  {
    return off_29EE5D970[(a1 + 1)];
  }
}

{
  if ((a1 + 1) > 5u)
  {
    return "???";
  }

  else
  {
    return off_29EE5D998[(a1 + 1)];
  }
}

{
  if ((a1 + 1) > 5u)
  {
    return "NotApplicable";
  }

  else
  {
    return off_29EE5D9C8[(a1 + 1)];
  }
}

unint64_t abm::AccessoryInfo::create(uint64_t a1)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v60 = v2;
  v59 = v2;
  v58 = v2;
  v57 = v2;
  v56 = v2;
  v55 = 0xAAAAAAAAAAAAAAAALL;
  v53 = v2;
  v52 = v2;
  v51[1] = 0xAAAAAAAAAAAAAAAALL;
  *&v50[80] = v2;
  *&v50[64] = v2;
  *&v50[48] = v2;
  *&v50[32] = v2;
  *v50 = v2;
  *&v50[16] = v2;
  v49 = v2;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  v54 = 0;
  v3 = MEMORY[0x29EDC95A0] + 64;
  v51[0] = MEMORY[0x29EDC95A0] + 64;
  v4 = *(MEMORY[0x29EDC9530] + 16);
  v48 = *(MEMORY[0x29EDC9530] + 8);
  *(&v48 + *(v48 - 24)) = v4;
  *&v49 = 0;
  v5 = (&v48 + *(v48 - 24));
  std::ios_base::init(v5, &v49 + 8);
  v6 = MEMORY[0x29EDC95A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  v48 = v6;
  v51[0] = v3;
  v38 = MEMORY[0x29EDC9568] + 16;
  *(&v49 + 1) = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C268DF0](v50);
  memset(&v50[8], 0, 80);
  v7 = MEMORY[0x29EDC9570] + 16;
  *(&v49 + 1) = MEMORY[0x29EDC9570] + 16;
  *&v50[88] = 8;
  if (&v50[56] != a1)
  {
    if (*(a1 + 23) < 0)
    {
      std::string::__assign_no_alias<true>(&v50[56], *a1, *(a1 + 8));
    }

    else
    {
      *&v50[56] = *a1;
      *&v50[72] = *(a1 + 16);
    }
  }

  std::stringbuf::__init_buf_ptrs[abi:ne200100](&v49 + 8);
  v39 = 0;
  v41 = 0;
  v42 = 0;
  v8 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v40 = -1;
  while (1)
  {
    v9 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v48, &v45, 0x2Cu);
    if ((*(v9 + *(*v9 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if (v47 >= 0)
    {
      v10 = HIBYTE(v47);
    }

    else
    {
      v10 = v46;
    }

    if (v47 >= 0)
    {
      v11 = &v45;
    }

    else
    {
      v11 = v45;
    }

    if (v10)
    {
      v12 = memchr(v11, 58, v10);
      if (v12)
      {
        v13 = v12 - v11;
      }

      else
      {
        v13 = -1;
      }

      __dst[1] = 0xAAAAAAAAAAAAAAAALL;
      __dst[2] = 0xAAAAAAAAAAAAAAAALL;
      if (v10 >= v13)
      {
        v10 = v13;
      }

      __dst[0] = 0xAAAAAAAAAAAAAAAALL;
      if (v10 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    else
    {
      v13 = -1;
      memset(__dst, 170, sizeof(__dst));
    }

    if (v10 >= 0x17)
    {
      if ((v10 | 7) == 0x17)
      {
        v19 = 25;
      }

      else
      {
        v19 = (v10 | 7) + 1;
      }

      v14 = operator new(v19);
      __dst[1] = v10;
      __dst[2] = (v19 | 0x8000000000000000);
      __dst[0] = v14;
    }

    else
    {
      HIBYTE(__dst[2]) = v10;
      v14 = __dst;
      if (!v10)
      {
        LOBYTE(__dst[0]) = 0;
        v15 = v13 + 1;
        memset(__p, 170, sizeof(__p));
        v16 = SHIBYTE(v47);
        if ((SHIBYTE(v47) & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_33;
      }
    }

    memmove(v14, v11, v10);
    *(v14 + v10) = 0;
    v15 = v13 + 1;
    memset(__p, 170, sizeof(__p));
    v16 = SHIBYTE(v47);
    if ((SHIBYTE(v47) & 0x8000000000000000) == 0)
    {
LABEL_25:
      if (v15 > v16)
      {
        goto LABEL_197;
      }

      v17 = &v45;
      v18 = v16 - v15;
      if (v16 - v15 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_194;
      }

      goto LABEL_35;
    }

LABEL_33:
    v16 = v46;
    if (v46 < v15)
    {
LABEL_197:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v17 = v45;
    v18 = v46 - v15;
    if (v46 - v15 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_194:
      std::string::__throw_length_error[abi:ne200100]();
    }

LABEL_35:
    if (v18 >= 0x17)
    {
      if ((v18 | 7) == 0x17)
      {
        v27 = 25;
      }

      else
      {
        v27 = (v18 | 7) + 1;
      }

      v20 = operator new(v27);
      __p[1] = v18;
      __p[2] = (v27 | 0x8000000000000000);
      __p[0] = v20;
    }

    else
    {
      HIBYTE(__p[2]) = v18;
      v20 = __p;
      if (v16 == v15)
      {
        *(__p + v18) = 0;
        v21 = SHIBYTE(__dst[2]);
        if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_59;
      }
    }

    memmove(v20, &v17[v15], v18);
    *(v20 + v18) = 0;
    v21 = SHIBYTE(__dst[2]);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
LABEL_38:
      if (!v21)
      {
        goto LABEL_195;
      }

      v22 = LOBYTE(__dst[0]);
      v23 = SHIBYTE(__p[2]);
      if (LOBYTE(__dst[0]) > 0x6Fu)
      {
        goto LABEL_61;
      }

      goto LABEL_40;
    }

LABEL_59:
    if (!__dst[1])
    {
LABEL_195:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v22 = *__dst[0];
    v23 = SHIBYTE(__p[2]);
    if (v22 > 0x6F)
    {
LABEL_61:
      switch(v22)
      {
        case 'p':
          if (v23 >= 0)
          {
            v31 = __p;
          }

          else
          {
            v31 = __p[0];
          }

          if (!strcasecmp("NotApplicable", v31))
          {
            v42 = 0;
          }

          else if (!strcasecmp("Battery", v31))
          {
            v42 = 1;
          }

          else if (!strcasecmp("Wired", v31))
          {
            v42 = 2;
          }

          else
          {
            if (!strcasecmp("Inductive", v31))
            {
              v32 = 3;
            }

            else
            {
              v32 = 0xFFFFFFFFLL;
            }

            v42 = v32;
          }

          break;
        case 'r':
          if (v23 >= 0)
          {
            v35 = __p;
          }

          else
          {
            v35 = __p[0];
          }

          if (!strcasecmp("NotApplicable", v35))
          {
            v41 = 0;
          }

          else if (!strcasecmp("White", v35))
          {
            v41 = 1;
          }

          else if (!strcasecmp("Black", v35))
          {
            v41 = 2;
          }

          else
          {
            if (!strcasecmp("Brown", v35))
            {
              v36 = 3;
            }

            else
            {
              v36 = -1;
            }

            v41 = v36;
          }

          break;
        case 's':
          if (v23 >= 0)
          {
            v28 = __p;
          }

          else
          {
            v28 = __p[0];
          }

          if (!strcasecmp("NotApplicable", v28))
          {
            v39 = 0;
          }

          else if (!strcasecmp("Detached", v28))
          {
            v39 = 1;
          }

          else if (!strcasecmp("Attached", v28))
          {
            v39 = 2;
          }

          else if (!strcasecmp("Opened", v28))
          {
            v39 = 3;
          }

          else
          {
            if (!strcasecmp("Closed", v28))
            {
              v29 = 4;
            }

            else
            {
              v29 = -1;
            }

            v39 = v29;
          }

          break;
      }

      goto LABEL_159;
    }

LABEL_40:
    switch(v22)
    {
      case 'c':
        if (v23 >= 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = __p[0];
        }

        if (!strcasecmp("NotApplicable", v30))
        {
          v25 = 0;
        }

        else if (!strcasecmp("Lightning", v30))
        {
          v25 = 0x10000;
        }

        else if (!strcasecmp("USBC", v30))
        {
          v25 = 0x20000;
        }

        else if (!strcasecmp("NFC", v30))
        {
          v25 = 196608;
        }

        else if (!strcasecmp("SmartConnector", v30))
        {
          v25 = 0x40000;
        }

        else
        {
          v25 = -65536;
        }

        v26 = v8;
        goto LABEL_158;
      case 'i':
        if (v23 >= 0)
        {
          v33 = __p;
        }

        else
        {
          v33 = __p[0];
        }

        if (!strcasecmp("Generic", v33))
        {
          v40 = 0;
        }

        else if (!strcasecmp("Lightning to Headphone Jack Adapter", v33))
        {
          v40 = 1;
        }

        else if (!strcasecmp("EarPods with Lightning", v33))
        {
          v40 = 2;
        }

        else if (!strcasecmp("Lightning Cable", v33))
        {
          v40 = 4;
        }

        else if (!strcasecmp("Charging Dock", v33))
        {
          v40 = 5;
        }

        else if (!strcasecmp("SmartKeyboard", v33))
        {
          v40 = 12;
        }

        else if (!strcasecmp("DisplayCover", v33))
        {
          v40 = 13;
        }

        else if (!strcasecmp("Pencil", v33))
        {
          v40 = 14;
        }

        else if (!strcasecmp("USB3", v33))
        {
          v40 = 17;
        }

        else if (!strcasecmp("DisplayPort", v33))
        {
          v40 = 18;
        }

        else if (!strcasecmp("USB-C to Headphone Jack Adapter", v33))
        {
          v40 = 19;
        }

        else if (!strcasecmp("EarPods with USB-C", v33))
        {
          v40 = 20;
        }

        else if (!strcasecmp("MagSafeCharger", v33))
        {
          v40 = 15;
        }

        else if (!strcasecmp("MagSafeBatteryPack", v33))
        {
          v40 = 16;
        }

        else if (!strcasecmp("AppleMagSafeSiliconCase", v33))
        {
          v40 = 2048;
        }

        else if (!strcasecmp("AppleMagSafeLeatherCase", v33))
        {
          v40 = 2049;
        }

        else if (!strcasecmp("AppleMagSafeClearCase", v33))
        {
          v40 = 2050;
        }

        else if (!strcasecmp("AppleMagSafeSleeve", v33))
        {
          v40 = 2051;
        }

        else if (!strcasecmp("AppleMagSafeWallet", v33))
        {
          v40 = 2052;
        }

        else if (!strcasecmp("AppleMagSafeBatteryPack", v33))
        {
          v40 = 2053;
        }

        else if (!strcasecmp("AppleMagSafeChargingMat", v33))
        {
          v40 = 2054;
        }

        else if (!strcasecmp("AppleMagSafeChargingCable", v33))
        {
          v40 = 2055;
        }

        else if (!strcasecmp("AppleMagSafeRuggedCase", v33))
        {
          v40 = 2056;
        }

        else if (!strcasecmp("AppleMagSafeTextileCase", v33))
        {
          v40 = 2057;
        }

        else if (!strcasecmp("AppleMagSafeTextileCase2025", v33))
        {
          v40 = 2058;
        }

        else if (!strcasecmp("AppleMagSafeSiliconCase2025", v33))
        {
          v40 = 2059;
        }

        else
        {
          if (!strcasecmp("AppleMagSafeBatteryPack2025", v33))
          {
            v34 = 2060;
          }

          else
          {
            v34 = -1;
          }

          v40 = v34;
        }

        break;
      case 'm':
        if (v23 >= 0)
        {
          v24 = __p;
        }

        else
        {
          v24 = __p[0];
        }

        if (!strcasecmp("NotApplicable", v24))
        {
          v25 = 0;
          v26 = v8 & 0xFFFF0000;
        }

        else if (!strcasecmp("Leather", v24))
        {
          v25 = 1;
          v26 = v8 & 0xFFFF0000;
        }

        else if (!strcasecmp("Silicone", v24))
        {
          v25 = 2;
          v26 = v8 & 0xFFFF0000;
        }

        else if (!strcasecmp("Plastic", v24))
        {
          v25 = 3;
          v26 = v8 & 0xFFFF0000;
        }

        else
        {
          if (!strcasecmp("Textile", v24))
          {
            v25 = 4;
          }

          else
          {
            v25 = 0xFFFF;
          }

          v26 = v8 & 0xFFFF0000;
        }

LABEL_158:
        v8 = v25 | v26;
        break;
    }

LABEL_159:
    if (v23 < 0)
    {
      operator delete(__p[0]);
      if (v21 < 0)
      {
        goto LABEL_163;
      }
    }

    else if (v21 < 0)
    {
LABEL_163:
      operator delete(__dst[0]);
    }
  }

  if (v47 < 0)
  {
    operator delete(v45);
  }

  v48 = *MEMORY[0x29EDC9530];
  *(&v48 + *(v48 - 24)) = *(MEMORY[0x29EDC9530] + 24);
  *(&v49 + 1) = v7;
  if ((v50[79] & 0x80000000) != 0)
  {
    operator delete(*&v50[56]);
  }

  *(&v49 + 1) = v38;
  std::locale::~locale(v50);
  std::istream::~istream();
  MEMORY[0x29C268E60](v51);
  return (v41 << 32) | (v42 << 48) | (v39 << 16) | v40;
}

unint64_t abm::AccessoryInfo::create(xpc_object_t *a1)
{
  if (MEMORY[0x29C2693B0](*a1) != MEMORY[0x29EDCAA00])
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = -1;
    return (v2 << 48) | (v3 << 32) | (v4 << 16) | v5;
  }

  if (xpc_dictionary_get_value(*a1, "kAccessoryID"))
  {
    value = xpc_dictionary_get_value(*a1, "kAccessoryID");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    v7 = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = v7;
    if (xpc_dictionary_get_value(*a1, "kAccessoryState"))
    {
LABEL_11:
      v8 = xpc_dictionary_get_value(*a1, "kAccessoryState");
      objecta = v8;
      if (v8)
      {
        xpc_retain(v8);
      }

      else
      {
        objecta = xpc_null_create();
      }

      v9 = xpc::dyn_cast_or_default();
      xpc_release(objecta);
      v4 = v9;
      if (xpc_dictionary_get_value(*a1, "kAccessoryColor"))
      {
        goto LABEL_15;
      }

LABEL_8:
      v3 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v5 = -1;
    if (xpc_dictionary_get_value(*a1, "kAccessoryState"))
    {
      goto LABEL_11;
    }
  }

  v4 = 0;
  if (!xpc_dictionary_get_value(*a1, "kAccessoryColor"))
  {
    goto LABEL_8;
  }

LABEL_15:
  v10 = xpc_dictionary_get_value(*a1, "kAccessoryColor");
  objectb = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    objectb = xpc_null_create();
  }

  v3 = xpc::dyn_cast_or_default();
  xpc_release(objectb);
LABEL_19:
  if (!xpc_dictionary_get_value(*a1, "kAccessoryPower"))
  {
    v2 = 0;
    if (xpc_dictionary_get_value(*a1, "kAccessoryMaterial"))
    {
      goto LABEL_27;
    }

LABEL_23:
    if (!xpc_dictionary_get_value(*a1, "kAccessoryConnection"))
    {
      return (v2 << 48) | (v3 << 32) | (v4 << 16) | v5;
    }

    goto LABEL_31;
  }

  v11 = xpc_dictionary_get_value(*a1, "kAccessoryPower");
  objectc = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    objectc = xpc_null_create();
  }

  v12 = xpc::dyn_cast_or_default();
  xpc_release(objectc);
  v2 = v12;
  if (!xpc_dictionary_get_value(*a1, "kAccessoryMaterial"))
  {
    goto LABEL_23;
  }

LABEL_27:
  v13 = xpc_dictionary_get_value(*a1, "kAccessoryMaterial");
  objectd = v13;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    objectd = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(objectd);
  if (xpc_dictionary_get_value(*a1, "kAccessoryConnection"))
  {
LABEL_31:
    v14 = xpc_dictionary_get_value(*a1, "kAccessoryConnection");
    objecte = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      objecte = xpc_null_create();
    }

    xpc::dyn_cast_or_default();
    xpc_release(objecte);
  }

  return (v2 << 48) | (v3 << 32) | (v4 << 16) | v5;
}

void abm::AccessoryInfo::toDict(abm::AccessoryInfo *this@<X0>, void **a2@<X8>)
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

  if (MEMORY[0x29C2693B0](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(*this);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kAccessoryID", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 1));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kAccessoryState", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v12 = xpc_int64_create(*(this + 2));
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kAccessoryColor", v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  v14 = xpc_int64_create(*(this + 3));
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kAccessoryPower", v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = xpc_int64_create(*(this + 4));
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kAccessoryMaterial", v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = xpc_int64_create(*(this + 5));
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kAccessoryConnection", v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9530];
  v3 = *MEMORY[0x29EDC9530];
  *a1 = *MEMORY[0x29EDC9530];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

const char *radio::asString(int a1)
{
  if ((a1 - 1) > 6)
  {
    return "RFSelfTestErrorCode::kSuccess";
  }

  else
  {
    return off_29EE5DED8[(a1 - 1)];
  }
}

void radio::QMICommandDriverM20::create(NSObject **a1@<X0>, uint64_t *a2@<X1>, atomic_ullong *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0x148uLL);
  v7 = *a1;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a2;
  v9 = a2[1];
  v11[0] = v8;
  v11[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::QMICommandDriverM20::QMICommandDriverM20(v6, &object, v11);
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<radio::QMICommandDriverM20>::shared_ptr[abi:ne200100]<radio::QMICommandDriverM20,std::shared_ptr<radio::QMICommandDriverM20> ctu::SharedSynchronizable<radio::CommandDriver>::make_shared_ptr<radio::QMICommandDriverM20>(radio::QMICommandDriverM20*)::{lambda(radio::QMICommandDriverM20*)#1},0>(a3, v6);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  v10 = *a3;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 0x40000000;
  v13[2] = ___ZN5radio19QMICommandDriverM204initEv_block_invoke;
  v13[3] = &__block_descriptor_tmp_14;
  v13[4] = v10;
  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped((v10 + 8), v13);
}

void sub_296F0238C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  if (v10)
  {
    dispatch_release(v10);
    if (!v11)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

void radio::QMICommandDriverM20::init(radio::QMICommandDriverM20 *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN5radio19QMICommandDriverM204initEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_14;
  v1[4] = this;
  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(this + 1, v1);
}

uint64_t radio::QMICommandDriverM20::QMICommandDriverM20(uint64_t a1, NSObject **a2, uint64_t *a3)
{
  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *a3;
  v7 = a3[1];
  v9[0] = v6;
  v9[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::QMICommandDriverBase::QMICommandDriverBase(a1, &object, v9);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_2A1E162A8;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  return a1;
}

void sub_296F02524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Unwind_Resume(a1);
}

void radio::QMICommandDriverM20::~QMICommandDriverM20(radio::QMICommandDriverM20 *this)
{
  *this = &unk_2A1E162A8;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v3, 2u);
  }

  qmi::Client::~Client((this + 296));
  radio::QMICommandDriverBase::~QMICommandDriverBase(this);
}

{
  *this = &unk_2A1E162A8;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v3, 2u);
  }

  qmi::Client::~Client((this + 296));
  radio::QMICommandDriverBase::~QMICommandDriverBase(this);
}

{
  *this = &unk_2A1E162A8;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v4, 2u);
  }

  qmi::Client::~Client((this + 296));
  radio::QMICommandDriverBase::~QMICommandDriverBase(this);
  operator delete(v3);
}

void radio::QMICommandDriverM20::startAppsClient_sync(radio::QMICommandDriverM20 *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  memset(v32, 170, 24);
  Name = radio::CommandDriver::getName(this);
  BYTE7(v31) = 5;
  strcpy(v30, ".apps");
  v7 = strlen(Name);
  v8 = std::string::insert(v30, 0, Name, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  *&v32[1] = *(&v8->__r_.__value_.__l + 2);
  v32[0] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if ((SBYTE7(v31) & 0x80000000) == 0)
  {
    if (*(this + 24))
    {
      goto LABEL_7;
    }

LABEL_13:
    v13 = *(this + 3);
    v23 = v13;
    if (v13)
    {
      dispatch_retain(v13);
    }

    v28 = 5;
    strcpy(__p, "radio");
    v14 = std::__shared_weak_count::lock(v5);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v22 = v14;
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v15 = v14;
        (v14->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v15);
      }
    }

    else
    {
      v22 = 0;
    }

    qmi::Client::createWithQueue();
    v20 = v31;
    v31 = 0uLL;
    v21 = *(this + 40);
    *(this + 312) = v20;
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }

    qmi::Client::~Client(v30);
    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }

    if (v28 < 0)
    {
      operator delete(__p[0]);
      v19 = v23;
      if (!v23)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v19 = v23;
      if (!v23)
      {
        goto LABEL_33;
      }
    }

LABEL_32:
    dispatch_release(v19);
    goto LABEL_33;
  }

  operator delete(v30[0]);
  if (!*(this + 24))
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = *(this + 3);
  v29 = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v28 = 5;
  strcpy(__p, "radio");
  v11 = std::__shared_weak_count::lock(v5);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v26 = v11;
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v12 = v11;
      (v11->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  else
  {
    v26 = 0;
  }

  v16 = *(this + 25);
  v24 = *(this + 24);
  v25 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::createWithQueueLocal();
  v17 = v31;
  v31 = 0uLL;
  v18 = *(this + 40);
  *(this + 312) = v17;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  qmi::Client::~Client(v30);
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v19 = v29;
  if (v29)
  {
    goto LABEL_32;
  }

LABEL_33:
  qmi::Client::setHandler();
  qmi::Client::setHandler();
  qmi::Client::start((this + 296));
  if (SBYTE7(v32[1]) < 0)
  {
    operator delete(*&v32[0]);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_296F02BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, dispatch_object_t object, char a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
    if (a32 < 0)
    {
LABEL_3:
      operator delete(__p);
      v35 = object;
      if (!object)
      {
LABEL_8:
        if (*(v33 - 73) < 0)
        {
          operator delete(*(v33 - 96));
        }

        std::__shared_weak_count::__release_weak(v32);
        _Unwind_Resume(a1);
      }

LABEL_7:
      dispatch_release(v35);
      goto LABEL_8;
    }
  }

  else if (a32 < 0)
  {
    goto LABEL_3;
  }

  v35 = object;
  if (!object)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN5radio19QMICommandDriverM2020startAppsClient_syncEv_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEFAULT, "#I APPS:Stopped", v2, 2u);
  }
}

void ___ZN5radio19QMICommandDriverM2020startAppsClient_syncEv_block_invoke_12(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEFAULT, "#I APPS:Started", v2, 2u);
  }
}

void ___ZN5radio19QMICommandDriverM204initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I initializing", &v7, 2u);
  }

  v3 = *(v1 + 176);
  if (v3)
  {
    Registry::getServerConnection(&v7, v3);
    v4 = v7;
    v7 = 0uLL;
    v5 = *(v1 + 200);
    *(v1 + 192) = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  radio::QMICommandDriverBase::startDMSClient_sync(v1);
  radio::QMICommandDriverBase::startBSPClient_sync(v1);
  radio::QMICommandDriverM20::startAppsClient_sync(v1);
  radio::QMICommandDriverBase::setupOperatingModeReporting_sync(v1);
}

void radio::QMICommandDriverM20::queryIPAWakeReason(uint64_t a1, const void **a2, uint64_t a3)
{
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN5radio19QMICommandDriverM2018queryIPAWakeReasonEN3ctu2cf11CFSharedRefI14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEENS3_IKS4_EEEEE_block_invoke;
  v8[3] = &__block_descriptor_tmp_22_2;
  v5 = *a2;
  v8[4] = a1;
  cf = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a3 + 8);
  aBlock = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped((a1 + 8), v8);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZN5radio19QMICommandDriverM2018queryIPAWakeReasonEN3ctu2cf11CFSharedRefI14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEENS3_IKS4_EEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[0] = v3;
  v16[1] = v3;
  qmi::MutableMessageBase::MutableMessageBase(v16);
  v11 = v2 + 264;
  v12 = QMIServiceMsg::create();
  v13 = 25000;
  v14 = 0;
  v15 = 0;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN5radio19QMICommandDriverM2018queryIPAWakeReasonEN3ctu2cf11CFSharedRefI14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEENS3_IKS4_EEEEE_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_19_2;
  v4 = a1[5];
  v7[4] = v2;
  cf = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a1[7];
  v9 = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm16GetWakeReasonIPA8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5DB58;
  aBlock[4] = v7;
  v15 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v15)
  {
    _Block_release(v15);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v16);
}

void sub_296F03100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v10 + 48);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v10 + 40));
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F0312C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN5radio19QMICommandDriverM2018queryIPAWakeReasonEN3ctu2cf11CFSharedRefI14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEENS3_IKS4_EEEEE_block_invoke_2(uint64_t a1, const qmi::ResponseBase *a2)
{
  v4 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  radio::QMICommandDriverBase::checkError(v4, a2, "getting IPA wake reason", &cf);
  if (!cf)
  {
    TlvValue = qmi::MessageBase::findTlvValue(a2);
    v11 = TlvValue;
    if (TlvValue && (tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v10, 1), v13 = *v11, *v11))
    {
      if (v13 == 1)
      {
        v14 = *MEMORY[0x29EDB8ED8];
        ctu::cf::insert<char const*,unsigned int>(*(a1 + 40), "kKeyBasebandWakeChannel", 0xDu, *MEMORY[0x29EDB8ED8], v12);
      }

      else
      {
        v14 = *MEMORY[0x29EDB8ED8];
        if (v13 == 2)
        {
          ctu::cf::insert<char const*,unsigned int>(*(a1 + 40), "kKeyBasebandWakeChannel", 0xAu, *MEMORY[0x29EDB8ED8], v12);
        }

        else
        {
          ctu::cf::insert<char const*,unsigned int>(*(a1 + 40), "kKeyBasebandWakeChannel", 8u, *MEMORY[0x29EDB8ED8], v12);
        }
      }

      v16 = qmi::MessageBase::findTlvValue(a2);
      v18 = v16;
      if (v16 && (tlv::throwIfNotEnoughBytes(v16, v16 + v17, 4), *v18))
      {
        v19 = *(a1 + 40);
        if (v19)
        {
          CFRetain(v19);
        }

        v20 = qmi::MessageBase::findTlvValue(a2);
        v22 = v20;
        if (v20)
        {
          v23 = v21;
          v36 = v20;
          memset(block, 170, 24);
          tlv::parseV<bsp::tlv::abm::WakeBuffer>(&v36, v21, block);
          v24 = v36;
          if (v36)
          {
            v37 = 0;
            v38 = 0;
            if (ctu::cf::convert_copy())
            {
              v26 = v38;
              v37 = v38;
            }

            else
            {
              v26 = 0;
            }

            ctu::cf::insert<char const*,__CFData const*>(v19, "kKeyBasebandWakeData", v26, v14, v25);
            if (v26)
            {
              CFRelease(v26);
            }
          }

          if (block[0])
          {
            block[1] = block[0];
            operator delete(block[0]);
          }

          if (!v24)
          {
            (*MEMORY[0x29EDC91A8])(*a2, 18, v22, v23);
          }
        }

        if (v19)
        {
          CFRelease(v19);
        }
      }

      else
      {
        __p = operator new(0x28uLL);
        strcpy(__p, "null IPA wake data from baseband");
        CreateError();
        v27 = cf;
        cf = block[0];
        block[0] = 0;
        if (v27)
        {
          CFRelease(v27);
          if (block[0])
          {
            CFRelease(block[0]);
          }
        }

        operator delete(__p);
      }
    }

    else
    {
      v29 = operator new(0x20uLL);
      strcpy(v29, "invalid IPA wake reason type");
      CreateError();
      v28 = cf;
      cf = block[0];
      block[0] = 0;
      if (v28)
      {
        CFRelease(v28);
        if (block[0])
        {
          CFRelease(block[0]);
        }
      }

      operator delete(v29);
    }
  }

  if (*(a1 + 48) && *(a1 + 56))
  {
    v5 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      CFRetain(*(a1 + 40));
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = _Block_copy(v7);
    }

    else
    {
      v8 = 0;
    }

    v15 = *(a1 + 56);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
    block[3] = &__block_descriptor_tmp_91_2;
    if (v8)
    {
      aBlock = _Block_copy(v8);
      v34 = v5;
      if (!v5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      aBlock = 0;
      v34 = v5;
      if (!v5)
      {
LABEL_21:
        v35 = v6;
        if (v6)
        {
          CFRetain(v6);
        }

        dispatch_async(v15, block);
        if (v35)
        {
          CFRelease(v35);
        }

        if (v34)
        {
          CFRelease(v34);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v8)
        {
          _Block_release(v8);
        }

        if (v6)
        {
          CFRelease(v6);
        }

        if (v5)
        {
          CFRelease(v5);
        }

        goto LABEL_35;
      }
    }

    CFRetain(v5);
    goto LABEL_21;
  }

LABEL_35:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F03650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a19);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296F036ACLL);
}

void sub_296F036A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

const void **_ZZZZN5radio19QMICommandDriverM2018queryIPAWakeReasonEN3ctu2cf11CFSharedRefI14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEENS3_IKS4_EEEEEEUb_EUb0_EN3__2D1Ev(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void __copy_helper_block_e8_40c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE48c103_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = a2[6];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a2[7];
  a1[6] = v5;
  a1[7] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE48c103_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void qmi::Client::SendProxy::~SendProxy(qmi::Client::SendProxy *this)
{
  if (*(this + 1))
  {
    v2 = *this;
    qmi::Client::send();
  }

  v3 = *(this + 4);
  if (v3)
  {
    _Block_release(v3);
  }
}

{
  if (*(this + 1))
  {
    v2 = *this;
    qmi::Client::send();
  }

  v3 = *(this + 4);
  if (v3)
  {
    _Block_release(v3);
  }
}

void ___ZN5radio19QMICommandDriverM2013getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2(void *a1, const qmi::ResponseBase *a2)
{
  v4 = a1[4];
  cf = 0xAAAAAAAAAAAAAAAALL;
  radio::QMICommandDriverBase::checkError(v4, a2, "getting wake reason", &cf);
  v45 = 0;
  v5 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v8 = Mutable;
  if (Mutable)
  {
    v45 = Mutable;
  }

  if (cf)
  {
    goto LABEL_4;
  }

  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v15 = TlvValue;
  if (TlvValue)
  {
    tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v14, 1);
    v16 = *v15;
  }

  else
  {
    v16 = 0;
  }

  v18 = qmi::MessageBase::findTlvValue(a2);
  v20 = v18;
  if (v18)
  {
    tlv::throwIfNotEnoughBytes(v18, v18 + v19, 1);
    v21 = *v20;
    if (v16 != 2)
    {
      goto LABEL_43;
    }

LABEL_99:
    v9 = 14;
    goto LABEL_5;
  }

  v21 = 0;
  if (v16 == 2)
  {
    goto LABEL_99;
  }

LABEL_43:
  if (v16 != 1)
  {
    __p = operator new(0x20uLL);
    v41 = xmmword_296FBC300;
    strcpy(__p, "invalid wake reason type");
    CreateError();
    v22 = cf;
    cf = block[0];
    block[0] = 0;
    if (v22)
    {
      CFRelease(v22);
      if (block[0])
      {
        CFRelease(block[0]);
      }
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p);
    }

LABEL_4:
    v9 = 0;
    goto LABEL_5;
  }

  v9 = 11;
  if (v21 <= 16)
  {
    if (v21 == 5)
    {
      v9 = 12;
      goto LABEL_64;
    }

    if (v21 == 9)
    {
      v9 = 15;
      goto LABEL_64;
    }

    if (v21 != 15)
    {
      goto LABEL_60;
    }

    goto LABEL_64;
  }

  if (v21 > 101)
  {
    if (v21 == 102)
    {
      v9 = 16;
      goto LABEL_64;
    }

    if (v21 != 110)
    {
      goto LABEL_60;
    }

    goto LABEL_87;
  }

  if (v21 == 17)
  {
LABEL_64:
    v23 = qmi::MessageBase::findTlvValue(a2);
    v25 = v23;
    if (v23 && (tlv::throwIfNotEnoughBytes(v23, v23 + v24, 4), *v25))
    {
      v44 = v8;
      if (v8)
      {
        CFRetain(v8);
      }

      v26 = qmi::MessageBase::findTlvValue(a2);
      v28 = v26;
      if (v26)
      {
        v29 = v27;
        v51 = v26;
        memset(block, 170, 24);
        tlv::parseV<apps::tlv::abm::WakeBuffer>(&v51, v27, block);
        v30 = v51;
        if (v51)
        {
          v52 = 0;
          v53 = 0;
          if (ctu::cf::convert_copy())
          {
            v32 = v53;
            v52 = v53;
          }

          else
          {
            v32 = 0;
          }

          ctu::cf::insert<char const*,__CFData const*>(v8, "kKeyBasebandWakeData", v32, v5, v31);
          if (v32)
          {
            CFRelease(v32);
          }
        }

        if (block[0])
        {
          block[1] = block[0];
          operator delete(block[0]);
        }

        if (!v30)
        {
          (*MEMORY[0x29EDC91A8])(*a2, 19, v28, v29);
        }
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      v42 = operator new(0x20uLL);
      v43 = xmmword_296FBC2F0;
      strcpy(v42, "null wake data from baseband");
      CreateError();
      v33 = cf;
      cf = block[0];
      block[0] = 0;
      if (v33)
      {
        CFRelease(v33);
        if (block[0])
        {
          CFRelease(block[0]);
        }
      }

      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42);
      }
    }

LABEL_5:
    if (!a1[5] || !a1[6])
    {
      goto LABEL_35;
    }

    ctu::cf::insert<char const*,unsigned int>(v8, "kKeyBasebandWakeChannel", v9, v5, v7);
    v10 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v8)
    {
      CFRetain(v8);
    }

    v11 = a1[5];
    if (v11)
    {
      v12 = _Block_copy(v11);
    }

    else
    {
      v12 = 0;
    }

    v17 = a1[6];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke;
    block[3] = &__block_descriptor_tmp_91_2;
    if (v12)
    {
      aBlock = _Block_copy(v12);
      v49 = v10;
      if (!v10)
      {
        goto LABEL_21;
      }
    }

    else
    {
      aBlock = 0;
      v49 = v10;
      if (!v10)
      {
LABEL_21:
        v50 = v8;
        if (v8)
        {
          CFRetain(v8);
        }

        dispatch_async(v17, block);
        if (v50)
        {
          CFRelease(v50);
        }

        if (v49)
        {
          CFRelease(v49);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v12)
        {
          _Block_release(v12);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        if (v10)
        {
          CFRelease(v10);
        }

LABEL_35:
        if (!v8)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }
    }

    CFRetain(v10);
    goto LABEL_21;
  }

  if (v21 != 101)
  {
LABEL_60:
    v9 = 8;
    goto LABEL_64;
  }

LABEL_87:
  v39 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  v34 = a1[5];
  if (v34)
  {
    v35 = _Block_copy(v34);
    v36 = a1[6];
    v37 = v35;
    v38 = v36;
    if (v36)
    {
      goto LABEL_91;
    }

LABEL_94:
    radio::QMICommandDriverM20::queryIPAWakeReason(v4, &v39, &v37);
    if (!v35)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  v35 = 0;
  v36 = a1[6];
  v37 = 0;
  v38 = v36;
  if (!v36)
  {
    goto LABEL_94;
  }

LABEL_91:
  dispatch_retain(v36);
  radio::QMICommandDriverM20::queryIPAWakeReason(v4, &v39, &v37);
  dispatch_release(v36);
  if (v35)
  {
LABEL_95:
    _Block_release(v35);
  }

LABEL_96:
  if (v8)
  {
    CFRelease(v8);
LABEL_36:
    CFRelease(v8);
  }

LABEL_37:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F03F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

const void **_ZZZZN5radio19QMICommandDriverM2013getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEEEUb1_EUb2_EN3__6D1Ev(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void radio::QMICommandDriverM20::getFieldTestConfig(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (!v3 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v9 = *a2;
    if (*a2)
    {
      goto LABEL_5;
    }

LABEL_15:
    v10 = 0;
    v11 = *(a2 + 8);
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = *a2;
  if (!*a2)
  {
    goto LABEL_15;
  }

LABEL_5:
  v10 = _Block_copy(v9);
  v11 = *(a2 + 8);
  if (v11)
  {
LABEL_6:
    dispatch_retain(v11);
  }

LABEL_7:
  v12 = a1[2];
  if (!v12 || (v13 = a1[1], (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  v16 = operator new(0x28uLL);
  *v16 = a1;
  v16[1] = v5;
  v16[2] = v7;
  v16[3] = v10;
  v16[4] = v11;
  v17 = a1[3];
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v13;
  v18[2] = v15;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void radio::QMICommandDriverM20::setFieldTestConfig(void *a1, const void **a2, uint64_t a3)
{
  if (*a2)
  {
    v5 = a1[2];
    if (!v5 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v9 = v8;
    p_shared_weak_owners = &v8->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      v11 = *a2;
      if (!v11)
      {
LABEL_12:
        if (*a3)
        {
          v12 = _Block_copy(*a3);
          v13 = *(a3 + 8);
          if (!v13)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v12 = 0;
          v13 = *(a3 + 8);
          if (!v13)
          {
LABEL_15:
            v14 = a1[2];
            if (!v14 || (v15 = a1[1], (v16 = std::__shared_weak_count::lock(v14)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v17 = v16;
            v18 = operator new(0x30uLL);
            *v18 = a1;
            v18[1] = v7;
            v18[2] = v9;
            v18[3] = v11;
            v18[4] = v12;
            v18[5] = v13;
            v19 = a1[3];
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            v20 = operator new(0x18uLL);
            *v20 = v18;
            v20[1] = v15;
            v20[2] = v17;
            dispatch_async_f(v19, v20, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::setFieldTestConfig(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(radio::QMICommandDriverM20::setFieldTestConfig(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverM20::setFieldTestConfig(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverM20::setFieldTestConfig(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
            if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v17->__on_zero_shared)(v17);
              std::__shared_weak_count::__release_weak(v17);
            }

            std::__shared_weak_count::__release_weak(v9);
            return;
          }
        }

        dispatch_retain(v13);
        goto LABEL_15;
      }
    }

    else
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v9);
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      v11 = *a2;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    CFRetain(v11);
    goto LABEL_12;
  }

  if (*a3 && *(a3 + 8))
  {
    cf = 0xAAAAAAAAAAAAAAAALL;
    v24 = 13;
    strcpy(__p, "Invalid input");
    CreateError();
    CFRetain(0xAAAAAAAAAAAAAAAALL);
    if (*a3)
    {
      v21 = _Block_copy(*a3);
    }

    else
    {
      v21 = 0;
    }

    v22 = *(a3 + 8);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
    block[3] = &__block_descriptor_tmp_104;
    if (v21)
    {
      aBlock = _Block_copy(v21);
      v28 = 0xAAAAAAAAAAAAAAAALL;
    }

    else
    {
      aBlock = 0;
      v28 = 0xAAAAAAAAAAAAAAAALL;
    }

    CFRetain(0xAAAAAAAAAAAAAAAALL);
    dispatch_async(v22, block);
    if (v28)
    {
      CFRelease(v28);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v21)
    {
      _Block_release(v21);
    }

    CFRelease(0xAAAAAAAAAAAAAAAALL);
    CFRelease(cf);
  }
}

void sub_296F04514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void radio::QMICommandDriverM20::sendRFSelfTestReq(void *a1, CFTypeRef *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  if (!*a3)
  {
    v6 = 0;
    v7 = *(a3 + 8);
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = _Block_copy(*a3);
  v7 = *(a3 + 8);
  if (v7)
  {
LABEL_5:
    dispatch_retain(v7);
  }

LABEL_6:
  v8 = a1[2];
  if (!v8 || (v9 = a1[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = operator new(0x20uLL);
  *v12 = a1;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v13 = a1[3];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = operator new(0x18uLL);
  *v14 = v12;
  v14[1] = v9;
  v14[2] = v11;
  dispatch_async_f(v13, v14, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverM20::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverM20::sendRFSelfTestReq(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);

    std::__shared_weak_count::__release_weak(v11);
  }
}

void radio::QMICommandDriverM20::getRFSelfTestNonce(void *a1, uint64_t a2)
{
  if (*a2 && *(a2 + 8))
  {
    v4 = _Block_copy(*a2);
    v5 = *(a2 + 8);
    if (v5)
    {
      dispatch_retain(*(a2 + 8));
    }

    v6 = a1[2];
    if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v9 = v8;
    v10 = operator new(0x18uLL);
    *v10 = a1;
    v10[1] = v4;
    v10[2] = v5;
    v11 = a1[3];
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = operator new(0x18uLL);
    *v12 = v10;
    v12[1] = v7;
    v12[2] = v9;
    dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::QMICommandDriverM20::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverM20::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverM20::getRFSelfTestNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);

      std::__shared_weak_count::__release_weak(v9);
    }
  }

  else
  {
    v13 = a1[5];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_296ECF000, v13, OS_LOG_TYPE_ERROR, "No callback for getting RF Self Test Nonce", v14, 2u);
    }
  }
}

void radio::QMICommandDriverM20::setRFSelfTestTicket(void *a1, CFTypeRef *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  if (!*a3)
  {
    v6 = 0;
    v7 = *(a3 + 8);
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = _Block_copy(*a3);
  v7 = *(a3 + 8);
  if (v7)
  {
LABEL_5:
    dispatch_retain(v7);
  }

LABEL_6:
  v8 = a1[2];
  if (!v8 || (v9 = a1[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = operator new(0x20uLL);
  *v12 = a1;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v13 = a1[3];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = operator new(0x18uLL);
  *v14 = v12;
  v14[1] = v9;
  v14[2] = v11;
  dispatch_async_f(v13, v14, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::setRFSelfTestTicket(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(radio::QMICommandDriverM20::setRFSelfTestTicket(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverM20::setRFSelfTestTicket(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverM20::setRFSelfTestTicket(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);

    std::__shared_weak_count::__release_weak(v11);
  }
}

void radio::QMICommandDriverM20::getAntennaTxPort(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (!v3 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v9 = *a2;
    if (*a2)
    {
      goto LABEL_5;
    }

LABEL_15:
    v10 = 0;
    v11 = *(a2 + 8);
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = *a2;
  if (!*a2)
  {
    goto LABEL_15;
  }

LABEL_5:
  v10 = _Block_copy(v9);
  v11 = *(a2 + 8);
  if (v11)
  {
LABEL_6:
    dispatch_retain(v11);
  }

LABEL_7:
  v12 = a1[2];
  if (!v12 || (v13 = a1[1], (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  v16 = operator new(0x28uLL);
  *v16 = a1;
  v16[1] = v5;
  v16[2] = v7;
  v16[3] = v10;
  v16[4] = v11;
  v17 = a1[3];
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v13;
  v18[2] = v15;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(radio::QMICommandDriverM20::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverM20::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverM20::getAntennaTxPort(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void radio::QMICommandDriverM20::setAntennaTxPort(void *a1, const void **a2, uint64_t a3)
{
  v4 = a1[2];
  if (!v4 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v11 = *a2;
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = *a2;
  if (v11)
  {
LABEL_7:
    CFRetain(v11);
  }

LABEL_8:
  if (!*a3)
  {
    v12 = 0;
    v13 = *(a3 + 8);
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = _Block_copy(*a3);
  v13 = *(a3 + 8);
  if (v13)
  {
LABEL_10:
    dispatch_retain(v13);
  }

LABEL_11:
  v14 = a1[2];
  if (!v14 || (v15 = a1[1], (v16 = std::__shared_weak_count::lock(v14)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v17 = v16;
  v18 = operator new(0x30uLL);
  *v18 = a1;
  v18[1] = v7;
  v18[2] = v9;
  v18[3] = v11;
  v18[4] = v12;
  v18[5] = v13;
  v19 = a1[3];
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v20 = operator new(0x18uLL);
  *v20 = v18;
  v20[1] = v15;
  v20[2] = v17;
  dispatch_async_f(v19, v20, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(radio::QMICommandDriverM20::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverM20::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverM20::setAntennaTxPort(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  std::__shared_weak_count::__release_weak(v9);
}

void radio::QMICommandDriverM20::setMCC(void *a1, CFTypeRef *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  if (!*a3)
  {
    v6 = 0;
    v7 = *(a3 + 8);
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = _Block_copy(*a3);
  v7 = *(a3 + 8);
  if (v7)
  {
LABEL_5:
    dispatch_retain(v7);
  }

LABEL_6:
  v8 = a1[2];
  if (!v8 || (v9 = a1[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = operator new(0x20uLL);
  *v12 = a1;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v13 = a1[3];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = operator new(0x18uLL);
  *v14 = v12;
  v14[1] = v9;
  v14[2] = v11;
  dispatch_async_f(v13, v14, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(radio::QMICommandDriverM20::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverM20::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverM20::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);

    std::__shared_weak_count::__release_weak(v11);
  }
}

void radio::QMICommandDriverM20::setLegacyMCC_sync(void *a1, const __CFDictionary **a2, uint64_t a3)
{
  v43 = *MEMORY[0x29EDCA608];
  v4 = a1[2];
  if (!v4 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v38[0] = 0xAAAAAAAAAAAAAAAALL;
  v38[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = ctu::cf::dict_adapter::dict_adapter(v38, *a2);
  Bool = ctu::cf::map_adapter::getBool(v10, *MEMORY[0x29EDC8B20]);
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v12;
  v37 = v12;
  qmi::MutableMessageBase::MutableMessageBase(&v36);
  v32[0] = MEMORY[0x29EDCA5F8];
  v32[1] = 0x40000000;
  v13 = ___ZN5radio19QMICommandDriverM2017setLegacyMCC_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke;
  v33 = ___ZN5radio19QMICommandDriverM2017setLegacyMCC_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke;
  v34 = &__block_descriptor_tmp_32;
  v35 = Bool;
  v14 = *(&v36 + 1);
  if (*(&v36 + 1) != v37)
  {
    while (*(*v14 + 8) != 1)
    {
      if (++v14 == v37)
      {
        goto LABEL_12;
      }
    }
  }

  if (v14 == v37)
  {
LABEL_12:
    v17 = qmi::MutableMessageBase::createTLV<bsp::tlv::abm::Enable>(&v36);
    v13 = v33;
  }

  else
  {
    v15 = ***v14;
    if (!v16)
    {
      __cxa_bad_cast();
    }

    v17 = v16 + 9;
  }

  v13(v32, v17);
  v18 = a1[5];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = "disable";
    if (Bool)
    {
      v19 = "enable";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v19;
    _os_log_impl(&dword_296ECF000, v18, OS_LOG_TYPE_DEFAULT, "#I Request to set legacy mcc to %s", &buf, 0xCu);
  }

  v27 = a1 + 33;
  v28 = QMIServiceMsg::create();
  v29 = 25000;
  v30 = 0;
  aBlock = 0;
  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 1174405120;
  v23[2] = ___ZN5radio19QMICommandDriverM2017setLegacyMCC_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke_35;
  v23[3] = &__block_descriptor_tmp_37;
  v23[4] = a1;
  v23[5] = v7;
  v24 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v20 = *a3;
  if (*a3)
  {
    v20 = _Block_copy(v20);
  }

  v21 = *(a3 + 8);
  v25 = v20;
  object = v21;
  if (v21)
  {
    dispatch_retain(v21);
  }

  *&buf = MEMORY[0x29EDCA5F8];
  *(&buf + 1) = 0x40000000;
  v40 = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm18SettingLegacyTxMCC8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v41 = &unk_29EE5DD80;
  v42 = v23;
  aBlock = _Block_copy(&buf);
  qmi::Client::send();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v25)
  {
    _Block_release(v25);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v36);
  MEMORY[0x29C268420](v38);
  std::__shared_weak_count::__release_weak(v9);
  v22 = *MEMORY[0x29EDCA608];
}

void sub_296F05244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN5radio19QMICommandDriverM2017setLegacyMCC_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke_35(void *a1, const qmi::ResponseBase *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v14 = v6;
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_25:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      cf = 0xAAAAAAAAAAAAAAAALL;
      radio::QMICommandDriverBase::checkError(v5, a2, "setting legacy mcc", &cf);
      v8 = a1[7];
      if (!v8 || !a1[8])
      {
LABEL_23:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_25;
      }

      v9 = cf;
      if (cf && (CFRetain(cf), (v8 = a1[7]) == 0))
      {
        v10 = 0;
      }

      else
      {
        v10 = _Block_copy(v8);
      }

      v11 = a1[8];
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
      block[3] = &__block_descriptor_tmp_104;
      if (v10)
      {
        aBlock = _Block_copy(v10);
        v17 = v9;
        if (!v9)
        {
          goto LABEL_15;
        }
      }

      else
      {
        aBlock = 0;
        v17 = v9;
        if (!v9)
        {
LABEL_15:
          dispatch_async(v11, block);
          if (v17)
          {
            CFRelease(v17);
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v10)
          {
            _Block_release(v10);
          }

          if (v9)
          {
            CFRelease(v9);
          }

          goto LABEL_23;
        }
      }

      CFRetain(v9);
      goto LABEL_15;
    }
  }
}

void sub_296F054B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE56c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[7];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a2[8];
  a1[7] = v5;
  a1[8] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE56c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

uint64_t radio::QMICommandDriverM20::setSTxMCC_sync(void *a1, const __CFDictionary **a2, uint64_t a3)
{
  v43 = *MEMORY[0x29EDCA608];
  v38[0] = 0xAAAAAAAAAAAAAAAALL;
  v38[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = ctu::cf::dict_adapter::dict_adapter(v38, *a2);
  Bool = ctu::cf::map_adapter::getBool(v5, *MEMORY[0x29EDC8C88]);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v7;
  v37 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v36);
  v32[0] = MEMORY[0x29EDCA5F8];
  v32[1] = 0x40000000;
  v8 = ___ZN5radio19QMICommandDriverM2014setSTxMCC_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke;
  v33 = ___ZN5radio19QMICommandDriverM2014setSTxMCC_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke;
  v34 = &__block_descriptor_tmp_38;
  v35 = Bool;
  v9 = *(&v36 + 1);
  if (*(&v36 + 1) != v37)
  {
    while (*(*v9 + 8) != 1)
    {
      if (++v9 == v37)
      {
        goto LABEL_8;
      }
    }
  }

  if (v9 == v37)
  {
LABEL_8:
    v12 = qmi::MutableMessageBase::createTLV<bsp::tlv::abm::Enable>(&v36);
    v8 = v33;
  }

  else
  {
    v10 = ***v9;
    if (!v11)
    {
      __cxa_bad_cast();
    }

    v12 = v11 + 9;
  }

  v8(v32, v12);
  v13 = a1[5];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = "disable";
    if (Bool)
    {
      v14 = "enable";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v14;
    _os_log_impl(&dword_296ECF000, v13, OS_LOG_TYPE_DEFAULT, "#I Request to set sTx mcc to %s", &buf, 0xCu);
  }

  v15 = a1[2];
  if (!v15 || (v16 = a1[1], (v17 = std::__shared_weak_count::lock(v15)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v18 = v17;
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v18);
  }

  v27 = a1 + 33;
  v28 = QMIServiceMsg::create();
  v29 = 25000;
  v30 = 0;
  aBlock = 0;
  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 1174405120;
  v23[2] = ___ZN5radio19QMICommandDriverM2014setSTxMCC_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke_39;
  v23[3] = &__block_descriptor_tmp_43_1;
  v23[4] = a1;
  v23[5] = v16;
  v24 = v18;
  atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v19 = *a3;
  if (*a3)
  {
    v19 = _Block_copy(v19);
  }

  v20 = *(a3 + 8);
  v25 = v19;
  object = v20;
  if (v20)
  {
    dispatch_retain(v20);
  }

  *&buf = MEMORY[0x29EDCA5F8];
  *(&buf + 1) = 0x40000000;
  v40 = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm13SettingSTxMCC8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v41 = &unk_29EE5DDA8;
  v42 = v23;
  aBlock = _Block_copy(&buf);
  qmi::Client::send();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v25)
  {
    _Block_release(v25);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  std::__shared_weak_count::__release_weak(v18);
  qmi::MutableMessageBase::~MutableMessageBase(&v36);
  result = MEMORY[0x29C268420](v38);
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F05998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN5radio19QMICommandDriverM2014setSTxMCC_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEEEEE_block_invoke_39(void *a1, const qmi::ResponseBase *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v14 = v6;
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_25:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      cf = 0xAAAAAAAAAAAAAAAALL;
      radio::QMICommandDriverBase::checkError(v5, a2, "setting sTx mcc", &cf);
      v8 = a1[7];
      if (!v8 || !a1[8])
      {
LABEL_23:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_25;
      }

      v9 = cf;
      if (cf && (CFRetain(cf), (v8 = a1[7]) == 0))
      {
        v10 = 0;
      }

      else
      {
        v10 = _Block_copy(v8);
      }

      v11 = a1[8];
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
      block[3] = &__block_descriptor_tmp_104;
      if (v10)
      {
        aBlock = _Block_copy(v10);
        v17 = v9;
        if (!v9)
        {
          goto LABEL_15;
        }
      }

      else
      {
        aBlock = 0;
        v17 = v9;
        if (!v9)
        {
LABEL_15:
          dispatch_async(v11, block);
          if (v17)
          {
            CFRelease(v17);
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v10)
          {
            _Block_release(v10);
          }

          if (v9)
          {
            CFRelease(v9);
          }

          goto LABEL_23;
        }
      }

      CFRetain(v9);
      goto LABEL_15;
    }
  }
}

void sub_296F05C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void radio::QMICommandDriverM20::sendAccessoryInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN5radio19QMICommandDriverM2017sendAccessoryInfoENSt3__16vectorIN3abm13AccessoryInfoENS1_9allocatorIS4_EEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v10[3] = &__block_descriptor_tmp_49_2;
  v10[4] = a1;
  __p = 0;
  v12 = 0;
  v13 = 0;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = v5 - *a2;
  if (v5 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v7 >> 2) >= 0x1555555555555556)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    __p = operator new(v7);
    v13 = __p + v7;
    memcpy(__p, v6, v7);
    v12 = __p + v7;
  }

  v8 = *a3;
  if (*a3)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a3 + 8);
  aBlock = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped((a1 + 8), v10);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_296F05D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN5radio19QMICommandDriverM2017sendAccessoryInfoENSt3__16vectorIN3abm13AccessoryInfoENS1_9allocatorIS4_EEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v3;
  v42 = v3;
  qmi::MutableMessageBase::MutableMessageBase(&v41);
  v35[0] = MEMORY[0x29EDCA5F8];
  v35[1] = 1174405120;
  v4 = ___ZN5radio19QMICommandDriverM2017sendAccessoryInfoENSt3__16vectorIN3abm13AccessoryInfoENS1_9allocatorIS4_EEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2;
  v36 = ___ZN5radio19QMICommandDriverM2017sendAccessoryInfoENSt3__16vectorIN3abm13AccessoryInfoENS1_9allocatorIS4_EEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2;
  v37 = &__block_descriptor_tmp_45_0;
  v39 = 0;
  v40 = 0;
  __p = 0;
  v6 = a1[5];
  v5 = a1[6];
  v7 = v5 - v6;
  if (v5 != v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v7 >> 2) >= 0x1555555555555556)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    __p = operator new(v7);
    v40 = __p + v7;
    memcpy(__p, v6, v7);
    v39 = __p + v7;
  }

  v8 = *(&v41 + 1);
  v9 = v42;
  v10 = *(&v41 + 1);
  if (*(&v41 + 1) != v42)
  {
    v10 = *(&v41 + 1);
    while (*(*v10 + 8) != 1)
    {
      if (++v10 == v42)
      {
        goto LABEL_12;
      }
    }
  }

  if (v10 == v42)
  {
LABEL_12:
    v14 = operator new(0x28uLL);
    v14[8] = 1;
    *v14 = &unk_2A1E16E38;
    *(v14 + 2) = 0;
    v13 = v14 + 16;
    *(v14 + 3) = 0;
    *(v14 + 4) = 0;
    if (v9 >= *(&v42 + 1))
    {
      v16 = v9 - v8;
      v17 = (v9 - v8) >> 3;
      v18 = v17 + 1;
      if ((v17 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v19 = *(&v42 + 1) - v8;
      if ((*(&v42 + 1) - v8) >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (v20 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v21 = v14;
        v22 = v14 + 16;
        v23 = operator new(8 * v20);
        v14 = v21;
      }

      else
      {
        v22 = v14 + 16;
        v23 = 0;
      }

      v24 = &v23[8 * v17];
      *v24 = v14;
      v15 = v24 + 8;
      memcpy(v23, v8, v16);
      *(&v41 + 1) = v23;
      *&v42 = v15;
      *(&v42 + 1) = &v23[8 * v20];
      if (v8)
      {
        operator delete(v8);
      }

      v13 = v22;
    }

    else
    {
      *v9 = v14;
      v15 = v9 + 8;
    }

    *&v42 = v15;
    v4 = v36;
  }

  else
  {
    v11 = ***v10;
    if (!v12)
    {
      __cxa_bad_cast();
    }

    v13 = v12 + 16;
  }

  v4(v35, v13);
  v30 = v2 + 264;
  v31 = QMIServiceMsg::create();
  v32 = 25000;
  v33 = 0;
  v34 = 0;
  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 1174405120;
  v27[2] = ___ZN5radio19QMICommandDriverM2017sendAccessoryInfoENSt3__16vectorIN3abm13AccessoryInfoENS1_9allocatorIS4_EEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_46;
  v27[3] = &__block_descriptor_tmp_48;
  v27[4] = v2;
  v25 = a1[8];
  if (v25)
  {
    v25 = _Block_copy(v25);
  }

  v26 = a1[9];
  v28 = v25;
  object = v26;
  if (v26)
  {
    dispatch_retain(v26);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm17SendAccessoryInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5DDD0;
  aBlock[4] = v27;
  v34 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v34)
  {
    _Block_release(v34);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v28)
  {
    _Block_release(v28);
  }

  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v41);
}

void sub_296F06180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, char a29)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v29 + 40);
  qmi::Client::SendProxy::~SendProxy(&a17);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&a29);
  _Unwind_Resume(a1);
}

void ___ZN5radio19QMICommandDriverM2017sendAccessoryInfoENSt3__16vectorIN3abm13AccessoryInfoENS1_9allocatorIS4_EEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 != v2)
  {
    v4 = a2;
    v5 = *(a2 + 8);
    v24 = *(a1 + 40);
    do
    {
      while (1)
      {
        v6 = *v3;
        v7 = v3[1];
        v8 = v3[2];
        v9 = v3[3];
        v10 = v3[4];
        v11 = v3[5];
        v12 = *(v4 + 16);
        if (v5 >= v12)
        {
          break;
        }

        *v5 = v6;
        v5[1] = v7;
        v5[2] = v8;
        v5[3] = v9;
        v5[4] = v10;
        v5[5] = v11;
        v5 += 6;
        *(v4 + 8) = v5;
        v3 += 6;
        if (v3 == v2)
        {
          return;
        }
      }

      v13 = *v4;
      v14 = v5 - *v4;
      v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 2) + 1;
      if (v15 > 0x1555555555555555)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 2);
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0xAAAAAAAAAAAAAAALL)
      {
        v17 = 0x1555555555555555;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        v25 = *v3;
        if (v17 > 0x1555555555555555)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v3[1];
        v19 = operator new(12 * v17);
        v7 = v18;
        v4 = a2;
        v6 = v25;
      }

      else
      {
        v19 = 0;
      }

      v20 = &v19[4 * (v14 >> 2)];
      *v20 = v6;
      *(v20 + 1) = v7;
      *(v20 + 2) = v8;
      *(v20 + 3) = v9;
      v21 = &v19[12 * v17];
      *(v20 + 4) = v10;
      *(v20 + 5) = v11;
      v5 = v20 + 12;
      v22 = &v20[-v14];
      memcpy(&v20[-v14], v13, v14);
      *v4 = v22;
      *(v4 + 8) = v5;
      *(v4 + 16) = v21;
      if (v13)
      {
        operator delete(v13);
      }

      v2 = v24;
      *(v4 + 8) = v5;
      v3 += 6;
    }

    while (v3 != v24);
  }
}

void *__copy_helper_block_e8_32c61_ZTSNSt3__16vectorIN3abm13AccessoryInfoENS_9allocatorIS2_EEEE(void *result, uint64_t a2)
{
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  v3 = *(a2 + 32);
  v2 = *(a2 + 40);
  v4 = v2 - v3;
  if (v2 != v3)
  {
    v5 = result;
    if (0xAAAAAAAAAAAAAAABLL * (v4 >> 2) >= 0x1555555555555556)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v4);
    v5[4] = v6;
    v5[5] = v6;
    v7 = &v6[v4];
    v5[6] = &v6[v4];
    result = memcpy(v6, v3, v4);
    v5[5] = v7;
  }

  return result;
}

void sub_296F0640C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c61_ZTSNSt3__16vectorIN3abm13AccessoryInfoENS_9allocatorIS2_EEEE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

void ___ZN5radio19QMICommandDriverM2017sendAccessoryInfoENSt3__16vectorIN3abm13AccessoryInfoENS1_9allocatorIS4_EEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_46(void *a1, const qmi::ResponseBase *a2)
{
  v3 = a1[4];
  cf = 0xAAAAAAAAAAAAAAAALL;
  radio::QMICommandDriverBase::checkError(v3, a2, "sending accessory info", &cf);
  v4 = a1[5];
  if (!v4 || !a1[6])
  {
    goto LABEL_20;
  }

  v5 = cf;
  if (cf && (CFRetain(cf), (v4 = a1[5]) == 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = _Block_copy(v4);
  }

  v7 = a1[6];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_104;
  if (v6)
  {
    aBlock = _Block_copy(v6);
    v11 = v5;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  aBlock = 0;
  v11 = v5;
  if (v5)
  {
LABEL_11:
    CFRetain(v5);
  }

LABEL_12:
  dispatch_async(v7, block);
  if (v11)
  {
    CFRelease(v11);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }
}

void __copy_helper_block_e8_40c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void __copy_helper_block_e8_40c61_ZTSNSt3__16vectorIN3abm13AccessoryInfoENS_9allocatorIS2_EEEE64c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(void *a1, void *a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  v5 = a2[5];
  v4 = a2[6];
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v6 >> 2) >= 0x1555555555555556)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v7 = operator new(v6);
    a1[5] = v7;
    a1[6] = v7;
    v8 = &v7[v6];
    a1[7] = &v7[v6];
    memcpy(v7, v5, v6);
    a1[6] = v8;
  }

  v9 = a2[8];
  if (v9)
  {
    v9 = _Block_copy(v9);
  }

  v10 = a2[9];
  a1[8] = v9;
  a1[9] = v10;
  if (v10)
  {

    dispatch_retain(v10);
  }
}

void sub_296F06720(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c61_ZTSNSt3__16vectorIN3abm13AccessoryInfoENS_9allocatorIS2_EEEE64c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;

    operator delete(v4);
  }
}

void radio::QMICommandDriverM20::getRFFEScanData(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 && *(a2 + 8))
  {
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1174405120;
    v8[2] = ___ZN5radio19QMICommandDriverM2015getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEE_block_invoke;
    v8[3] = &__block_descriptor_tmp_54;
    v8[4] = a1;
    v5 = _Block_copy(v3);
    v6 = *(a2 + 8);
    aBlock = v5;
    object = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped((a1 + 8), v8);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296ECF000, v7, OS_LOG_TYPE_ERROR, "No callback for getting RFFE scan data", buf, 2u);
    }
  }
}

void ___ZN5radio19QMICommandDriverM2015getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[0] = v3;
  v14[1] = v3;
  qmi::MutableMessageBase::MutableMessageBase(v14);
  v9 = v2 + 264;
  v10 = QMIServiceMsg::create();
  v11 = 25000;
  v12 = 0;
  v13 = 0;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN5radio19QMICommandDriverM2015getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEE_block_invoke_2;
  v6[3] = &__block_descriptor_tmp_51_1;
  v6[4] = v2;
  v4 = a1[5];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = a1[6];
  v7 = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm15GetRFFEScanData8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5DDF8;
  aBlock[4] = v6;
  v13 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v13)
  {
    _Block_release(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v14);
}

void sub_296F06A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>::~callback(v8 + 40);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F06A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN5radio19QMICommandDriverM2015getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEE_block_invoke_2(void *a1, qmi::MessageBase *this)
{
  v31 = *MEMORY[0x29EDCA608];
  if (*(this + 1))
  {
    v3 = a1[4];
    v4 = operator new(0x20uLL);
    v23 = v4;
    v24 = xmmword_296FBC2F0;
    strcpy(v4, "Failed to get RFFE scan data");
    v5 = *(v3 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(block) = 136315138;
      *(&block + 4) = v4;
      _os_log_error_impl(&dword_296ECF000, v5, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
      if (v24 >= 0)
      {
        v4 = &v23;
      }

      else
      {
        v4 = v23;
      }
    }

    v6 = xpc_string_create(v4);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v7 = xpc_null_create();
    v8 = a1[5];
    if (v8)
    {
      v9 = _Block_copy(v8);
    }

    else
    {
      v9 = 0;
    }

    v15 = a1[6];
    *&block = MEMORY[0x29EDCA5F8];
    *(&block + 1) = 1174405120;
    v26 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
    v27 = &__block_descriptor_tmp_145;
    if (v9)
    {
      aBlock = _Block_copy(v9);
      v29 = v6;
      if (v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      aBlock = 0;
      v29 = v6;
      if (v6)
      {
LABEL_16:
        xpc_retain(v6);
        object = v7;
        if (v7)
        {
LABEL_17:
          xpc_retain(v7);
          goto LABEL_21;
        }

LABEL_20:
        object = xpc_null_create();
LABEL_21:
        dispatch_async(v15, &block);
        xpc_release(object);
        object = 0;
        xpc_release(v29);
        v29 = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v9)
        {
          _Block_release(v9);
        }

        xpc_release(v7);
        xpc_release(v6);
        if (SHIBYTE(v24) < 0)
        {
          v16 = v23;
LABEL_46:
          operator delete(v16);
          goto LABEL_47;
        }

        goto LABEL_47;
      }
    }

    v29 = xpc_null_create();
    object = v7;
    if (v7)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  TlvValue = qmi::MessageBase::findTlvValue(this);
  if (!TlvValue)
  {
    v14 = 0;
    v13 = 0;
    goto LABEL_28;
  }

  block = 0uLL;
  v26 = 0;
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&block, TlvValue, &TlvValue[v11], v11);
  v12 = block;
  v13 = *(&block + 1) - block;
  if (*(&block + 1) == block)
  {
    v14 = 0;
    if (block)
    {
LABEL_11:
      *(&block + 1) = v12;
      operator delete(v12);
    }
  }

  else
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v14 = operator new(*(&block + 1) - block);
    memcpy(v14, v12, v13);
    v13 += v14;
    if (v12)
    {
      goto LABEL_11;
    }
  }

LABEL_28:
  v17 = xpc_null_create();
  v18 = xpc_data_create(v14, v13 - v14);
  if (v18)
  {
    v19 = a1[5];
    if (v19)
    {
LABEL_30:
      v20 = _Block_copy(v19);
      goto LABEL_33;
    }
  }

  else
  {
    v18 = xpc_null_create();
    v19 = a1[5];
    if (v19)
    {
      goto LABEL_30;
    }
  }

  v20 = 0;
LABEL_33:
  v21 = a1[6];
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v26 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJNS1_4dictES2_EEEvDpT__block_invoke;
  v27 = &__block_descriptor_tmp_144;
  if (v20)
  {
    aBlock = _Block_copy(v20);
    v29 = v17;
    if (v17)
    {
      goto LABEL_35;
    }

LABEL_38:
    v29 = xpc_null_create();
    object = v18;
    if (v18)
    {
      goto LABEL_36;
    }

    goto LABEL_39;
  }

  aBlock = 0;
  v29 = v17;
  if (!v17)
  {
    goto LABEL_38;
  }

LABEL_35:
  xpc_retain(v17);
  object = v18;
  if (v18)
  {
LABEL_36:
    xpc_retain(v18);
    goto LABEL_40;
  }

LABEL_39:
  object = xpc_null_create();
LABEL_40:
  dispatch_async(v21, &block);
  xpc_release(object);
  object = 0;
  xpc_release(v29);
  v29 = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v20)
  {
    _Block_release(v20);
  }

  xpc_release(v18);
  xpc_release(v17);
  if (v14)
  {
    v16 = v14;
    goto LABEL_46;
  }

LABEL_47:
  v22 = *MEMORY[0x29EDCA608];
}

void sub_296F06E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  v15 = v14;
  if (v15)
  {
    operator delete(v15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c61_ZTSN8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c61_ZTSN8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

uint64_t dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void radio::QMICommandDriverM20::getResetProperties(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Getting reset properties", buf, 2u);
  }

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN5radio19QMICommandDriverM2018getResetPropertiesEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_69_3;
  v7[4] = a1;
  v5 = *a2;
  if (*a2)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a2 + 8);
  aBlock = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped((a1 + 8), v7);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5radio19QMICommandDriverM2018getResetPropertiesEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[0] = v3;
  v14[1] = v3;
  qmi::MutableMessageBase::MutableMessageBase(v14);
  v9 = v2 + 264;
  v10 = QMIServiceMsg::create();
  v11 = 25000;
  v12 = 0;
  v13 = 0;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN5radio19QMICommandDriverM2018getResetPropertiesEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2;
  v6[3] = &__block_descriptor_tmp_66;
  v6[4] = v2;
  v4 = a1[5];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = a1[6];
  v7 = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm18GetResetProperties8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5DE20;
  aBlock[4] = v6;
  v13 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v13)
  {
    _Block_release(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v14);
}

void sub_296F072C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v8 + 40);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F072E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN5radio19QMICommandDriverM2018getResetPropertiesEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2(void *a1, const qmi::ResponseBase *a2)
{
  v4 = a1[4];
  v33 = 0;
  cf = 0xAAAAAAAAAAAAAAAALL;
  radio::QMICommandDriverBase::checkError(v4, a2, "getting reset properties", &cf);
  if (cf)
  {
    v5 = 0;
    if (!a1[5])
    {
      goto LABEL_38;
    }

LABEL_11:
    if (!a1[6])
    {
      goto LABEL_38;
    }

    v15 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v5)
    {
      CFRetain(v5);
    }

    v16 = a1[5];
    if (v16)
    {
      v17 = _Block_copy(v16);
    }

    else
    {
      v17 = 0;
    }

    v18 = a1[6];
    block = MEMORY[0x29EDCA5F8];
    p_block = 1174405120;
    v36 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke;
    v37 = &__block_descriptor_tmp_136;
    if (v17)
    {
      v38 = _Block_copy(v17);
      v39 = v15;
      if (!v15)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v38 = 0;
      v39 = v15;
      if (!v15)
      {
LABEL_24:
        v40 = v5;
        if (v5)
        {
          CFRetain(v5);
        }

        dispatch_async(v18, &block);
        if (v40)
        {
          CFRelease(v40);
        }

        if (v39)
        {
          CFRelease(v39);
        }

        if (v38)
        {
          _Block_release(v38);
        }

        if (v17)
        {
          _Block_release(v17);
        }

        if (v5)
        {
          CFRelease(v5);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        goto LABEL_38;
      }
    }

    CFRetain(v15);
    goto LABEL_24;
  }

  block = 0;
  p_block = &block;
  v36 = 0x3002000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0xAAAAAAAAAAAAAA01;
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 0x40000000;
  v29 = ___ZN5radio19QMICommandDriverM2018getResetPropertiesEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_56;
  v30 = &unk_29EE5DAA0;
  v31 = &block;
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v8 = TlvValue;
  if (TlvValue)
  {
    tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v7, 1);
    LOBYTE(v19) = *v8 != 0;
    v29(v28, &v19);
  }

  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 0x40000000;
  v25 = ___ZN5radio19QMICommandDriverM2018getResetPropertiesEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2_59;
  v26 = &unk_29EE5DAC8;
  v27 = &block;
  v9 = qmi::MessageBase::findTlvValue(a2);
  v11 = v9;
  if (v9)
  {
    tlv::throwIfNotEnoughBytes(v9, v9 + v10, 2);
    LOWORD(v19) = *v11;
    v25(v24, &v19);
  }

  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 0x40000000;
  v21 = ___ZN5radio19QMICommandDriverM2018getResetPropertiesEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_3;
  v22 = &unk_29EE5DAF0;
  v23 = &block;
  v12 = qmi::MessageBase::findTlvValue(a2);
  v14 = v12;
  if (v12)
  {
    tlv::throwIfNotEnoughBytes(v12, v12 + v13, 4);
    LODWORD(v19) = *v14;
    v21(v20, &v19);
  }

  radio::BasebandProperties::toDict(&v19, (p_block + 40));
  v5 = v19;
  v33 = v19;
  _Block_object_dispose(&block, 8);
  if (a1[5])
  {
    goto LABEL_11;
  }

LABEL_38:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_296F076AC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 5, v2, v3);
  JUMPOUT(0x296F07538);
}

void sub_296F076D8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 4, v2, v3);
  JUMPOUT(0x296F074B4);
}

void sub_296F07704(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 3, v2, v3);
  JUMPOUT(0x296F07430);
}

void sub_296F07760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26)
{
  _Block_object_dispose((v26 - 120), 8);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a26);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v26 - 128));
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(const void **a1)
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

void radio::QMICommandDriverM20::sendBatteryInfoUpdate(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEFAULT, "#I Sending battery info update", buf, 2u);
  }

  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN5radio19QMICommandDriverM2021sendBatteryInfoUpdateEhbN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v11[3] = &__block_descriptor_tmp_80;
  v11[4] = a1;
  v14 = a3;
  v15 = a2;
  v9 = *a4;
  if (*a4)
  {
    v9 = _Block_copy(v9);
  }

  v10 = *(a4 + 8);
  aBlock = v9;
  object = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped((a1 + 8), v11);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5radio19QMICommandDriverM2021sendBatteryInfoUpdateEhbN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56 = v3;
  v57 = v3;
  qmi::MutableMessageBase::MutableMessageBase(&v56);
  v52[0] = MEMORY[0x29EDCA5F8];
  v52[1] = 0x40000000;
  v4 = ___ZN5radio19QMICommandDriverM2021sendBatteryInfoUpdateEhbN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2;
  v53 = ___ZN5radio19QMICommandDriverM2021sendBatteryInfoUpdateEhbN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2;
  v54 = &__block_descriptor_tmp_71;
  v55 = *(a1 + 56);
  v5 = *(&v56 + 1);
  v6 = v57;
  v7 = *(&v56 + 1);
  if (*(&v56 + 1) != v57)
  {
    v7 = *(&v56 + 1);
    while (*(*v7 + 8) != 1)
    {
      if (++v7 == v57)
      {
        goto LABEL_9;
      }
    }
  }

  if (v7 == v57)
  {
LABEL_9:
    v11 = operator new(0x10uLL);
    v12 = v11;
    v11[4] = 1;
    *v11 = &unk_2A1E16E88;
    if (v6 >= *(&v57 + 1))
    {
      v14 = v6 - v5;
      v15 = (v6 - v5) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        goto LABEL_59;
      }

      v17 = *(&v57 + 1) - v5;
      if ((*(&v57 + 1) - v5) >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (v18 >> 61)
        {
          goto LABEL_60;
        }

        v19 = operator new(8 * v18);
      }

      else
      {
        v19 = 0;
      }

      v20 = &v19[8 * v15];
      *v20 = v12;
      v13 = v20 + 8;
      memcpy(v19, v5, v14);
      *(&v56 + 1) = v19;
      *&v57 = v13;
      *(&v57 + 1) = &v19[8 * v18];
      if (v5)
      {
        operator delete(v5);
      }
    }

    else
    {
      *v6 = v11;
      v13 = v6 + 8;
    }

    v10 = v12 + 9;
    *&v57 = v13;
    v4 = v53;
  }

  else
  {
    v8 = ***v7;
    if (!v9)
    {
      goto LABEL_58;
    }

    v10 = v9 + 9;
  }

  v4(v52, v10);
  v48[0] = MEMORY[0x29EDCA5F8];
  v48[1] = 0x40000000;
  v21 = ___ZN5radio19QMICommandDriverM2021sendBatteryInfoUpdateEhbN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_3;
  v49 = ___ZN5radio19QMICommandDriverM2021sendBatteryInfoUpdateEhbN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_3;
  v50 = &__block_descriptor_tmp_73;
  v51 = *(a1 + 57);
  v22 = *(&v56 + 1);
  v23 = v57;
  v24 = *(&v56 + 1);
  if (*(&v56 + 1) != v57)
  {
    v24 = *(&v56 + 1);
    while (*(*v24 + 8) != 2)
    {
      if (++v24 == v57)
      {
        goto LABEL_32;
      }
    }
  }

  if (v24 != v57)
  {
    v25 = ***v24;
    if (v26)
    {
      v27 = v26 + 9;
      goto LABEL_47;
    }

LABEL_58:
    __cxa_bad_cast();
  }

LABEL_32:
  v28 = operator new(0x10uLL);
  v29 = v28;
  v28[4] = 2;
  *v28 = &unk_2A1E16ED8;
  if (v23 >= *(&v57 + 1))
  {
    v31 = v23 - v22;
    v32 = (v23 - v22) >> 3;
    v33 = v32 + 1;
    if (!((v32 + 1) >> 61))
    {
      v34 = *(&v57 + 1) - v22;
      if ((*(&v57 + 1) - v22) >> 2 > v33)
      {
        v33 = v34 >> 2;
      }

      if (v34 >= 0x7FFFFFFFFFFFFFF8)
      {
        v35 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v33;
      }

      if (!v35)
      {
        v36 = 0;
LABEL_44:
        v37 = &v36[8 * v32];
        *v37 = v29;
        v30 = v37 + 8;
        memcpy(v36, v22, v31);
        *(&v56 + 1) = v36;
        *&v57 = v30;
        *(&v57 + 1) = &v36[8 * v35];
        if (v22)
        {
          operator delete(v22);
        }

        goto LABEL_46;
      }

      if (!(v35 >> 61))
      {
        v36 = operator new(8 * v35);
        goto LABEL_44;
      }

LABEL_60:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_59:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  *v23 = v28;
  v30 = v23 + 8;
LABEL_46:
  v27 = v29 + 9;
  *&v57 = v30;
  v21 = v49;
LABEL_47:
  v21(v48, v27);
  v43 = v2 + 264;
  v44 = QMIServiceMsg::create();
  v45 = 25000;
  v46 = 0;
  v47 = 0;
  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 1174405120;
  v40[2] = ___ZN5radio19QMICommandDriverM2021sendBatteryInfoUpdateEhbN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4;
  v40[3] = &__block_descriptor_tmp_77_1;
  v40[4] = v2;
  v38 = *(a1 + 40);
  if (v38)
  {
    v38 = _Block_copy(v38);
  }

  v39 = *(a1 + 48);
  v41 = v38;
  object = v39;
  if (v39)
  {
    dispatch_retain(v39);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm15SendBatteryInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5DE48;
  aBlock[4] = v40;
  v47 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v47)
  {
    _Block_release(v47);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v41)
  {
    _Block_release(v41);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v56);
}