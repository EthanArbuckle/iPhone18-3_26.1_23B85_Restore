BOOL ctu::fs::chmod(const char *a1, uint64_t a2, mode_t a3)
{
  v4 = chmod(a1, a3);
  if (v4)
  {
    v5 = *__error();
    v6 = *__error();
    v7 = __error();
    strerror(*v7);
    _TelephonyUtilDebugPrintError("chmod", "Failed to change mode of file %s to (0x%x) (error: %d(0x%x) (%s))", v8, v9, v10, v11, v12, v13, a1);
  }

  return v4 == 0;
}

uint64_t ctu::fs::get_filtered_files(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = opendir(a1);
  if (!v7)
  {
    v31 = "Failed to open directory %s (error: %d(0x%x) (%s))";
    goto LABEL_25;
  }

  v8 = v7;
  v9 = readdir(v7);
  if (!v9)
  {
    if (!closedir(v8))
    {
      goto LABEL_26;
    }

    v31 = "Failed to close directory %s (error: %d(0x%x) (%s))";
LABEL_25:
    v32 = *__error();
    v33 = *__error();
    v34 = __error();
    strerror(*v34);
    _TelephonyUtilDebugPrintError("get_filtered_files", v31, v35, v36, v37, v38, v39, v40, a1);
    goto LABEL_26;
  }

  v10 = v9;
  v11 = 0;
  do
  {
    std::string::basic_string[abi:ne200100]<0>(v42, v10->d_name);
    v12 = v43;
    if ((v43 & 0x80u) == 0)
    {
      v13 = v42;
    }

    else
    {
      v13 = v42[0];
    }

    if ((v43 & 0x80u) != 0)
    {
      v12 = v42[1];
    }

    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v46 = v14;
    v45[6] = 0xAAAAAAAAAAAAAA00;
    v45[3] = 0xAAAAAAAAAAAAAAAALL;
    v45[4] = 0;
    v45[5] = 0;
    v45[7] = 0;
    v45[8] = 0;
    LOBYTE(v46) = 0;
    BYTE8(v46) = 0;
    v47 = 0;
    *__p = 0u;
    memset(v45, 0, 24);
    v15 = std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(v13, (v13 + v12), __p, a3);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v43 < 0)
    {
      operator delete(v42[0]);
      if (!v15)
      {
        goto LABEL_18;
      }
    }

    else if (!v15)
    {
      goto LABEL_18;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v10->d_name);
    std::vector<std::string>::push_back[abi:ne200100](a4, __p);
    if (SHIBYTE(v45[0]) < 0)
    {
      operator delete(__p[0]);
    }

    v11 = 1;
LABEL_18:
    v10 = readdir(v8);
  }

  while (v10);
  if (!closedir(v8))
  {
    if (v11)
    {
      return 1;
    }

    goto LABEL_26;
  }

  v22 = *__error();
  v23 = *__error();
  v24 = __error();
  strerror(*v24);
  _TelephonyUtilDebugPrintError("get_filtered_files", "Failed to close directory %s (error: %d(0x%x) (%s))", v25, v26, v27, v28, v29, v30, a1);
  if ((v11 & 1) == 0)
  {
LABEL_26:
    _TelephonyUtilDebugPrint("get_filtered_files", "Found no matching content in %s", v16, v17, v18, v19, v20, v21, a1);
    return 0;
  }

  return 1;
}

void sub_1A911B958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ctu::fs::get_last_number_in_unique_path(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v65[0] = a1;
  v65[1] = a2;
  memset(v64, 170, sizeof(v64));
  ctu::llvm::StringRef::operator std::string(v65, v64);
  memset(v63, 170, sizeof(v63));
  std::string::basic_string[abi:ne200100]<0>(v63, "/");
  v4 = HIBYTE(v64[2]);
  v5 = SHIBYTE(v64[2]);
  v6 = v64[0];
  v7 = v64[1];
  if (SHIBYTE(v64[2]) >= 0)
  {
    v8 = v64;
  }

  else
  {
    v8 = v64[0];
  }

  if (SHIBYTE(v64[2]) >= 0)
  {
    v9 = HIBYTE(v64[2]);
  }

  else
  {
    v9 = v64[1];
  }

  if (SHIBYTE(v63[2]) >= 0)
  {
    v10 = v63;
  }

  else
  {
    v10 = v63[0];
  }

  if (SHIBYTE(v63[2]) >= 0)
  {
    v11 = HIBYTE(v63[2]);
  }

  else
  {
    v11 = v63[1];
  }

  v12 = v8 - 1;
  do
  {
    if (!v9)
    {
      goto LABEL_23;
    }

    v13 = v9;
    if (!v11)
    {
      break;
    }

    v14 = memchr(v10, v9[v12], v11);
    v9 = v13 - 1;
  }

  while (v14);
  v15 = v13 - 1;
  if (v5 < 0)
  {
    if (v7 > v15)
    {
      v64[1] = v13;
      goto LABEL_22;
    }

LABEL_122:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v15 >= v4)
  {
    goto LABEL_122;
  }

  HIBYTE(v64[2]) = v13;
  v6 = v64;
LABEL_22:
  v13[v6] = 0;
  v4 = HIBYTE(v64[2]);
  v6 = v64[0];
  v7 = v64[1];
  LOBYTE(v5) = HIBYTE(v64[2]);
LABEL_23:
  v61 = 0xAAAAAAAAAAAAAAAALL;
  v62 = 0xAAAAAAAAAAAAAAAALL;
  if ((v5 & 0x80u) == 0)
  {
    v16 = v64;
  }

  else
  {
    v16 = v6;
  }

  if ((v5 & 0x80u) == 0)
  {
    v17 = v4;
  }

  else
  {
    v17 = v7;
  }

  v60 = 0xAAAAAAAAAAAAAAAALL;
  ctu::fs::get_dir_name(v16, v17, &v60);
  if (SHIBYTE(v64[2]) >= 0)
  {
    v18 = HIBYTE(v64[2]);
  }

  else
  {
    v18 = v64[1];
  }

  if (!v18)
  {
    goto LABEL_81;
  }

  v19 = HIBYTE(v62);
  if (v62 < 0)
  {
    v19 = v61;
  }

  if (!v19)
  {
LABEL_81:
    ctu::llvm::StringRef::operator std::string(v65, a3);
    goto LABEL_115;
  }

  memset(&v59, 170, sizeof(v59));
  if (SHIBYTE(v64[2]) >= 0)
  {
    v20 = v64;
  }

  else
  {
    v20 = v64[0];
  }

  ctu::fs::get_base_name(v20, v18, &v59);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v59.__r_.__value_.__l.__size_;
  }

  memset(v58, 170, sizeof(v58));
  v22 = v58;
  std::string::basic_string[abi:ne200100](v58, size + 13);
  if (SHIBYTE(v58[2]) < 0)
  {
    v22 = v58[0];
  }

  if (size)
  {
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v59;
    }

    else
    {
      v23 = v59.__r_.__value_.__r.__words[0];
    }

    memmove(v22, v23, size);
  }

  strcpy(v22 + size, "-[[:alnum:]]*");
  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v57[1].__ct_ = v24;
  *&v57[2].__loc_.__locale_ = v24;
  *&v57[0].__loc_.__locale_ = v24;
  *&v57[0].__col_ = v24;
  std::regex_traits<char>::regex_traits(v57);
  memset(&v57[1], 0, 40);
  v25 = HIBYTE(v58[2]);
  if (SHIBYTE(v58[2]) >= 0)
  {
    v26 = v58;
  }

  else
  {
    v26 = v58[0];
  }

  if (SHIBYTE(v58[2]) < 0)
  {
    v25 = v58[1];
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(v57, v26, &v25[v26]) != &v25[v26])
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  if (v62 >= 0)
  {
    v27 = &v60;
  }

  else
  {
    v27 = v60;
  }

  if (v62 >= 0)
  {
    v28 = SHIBYTE(v62);
  }

  else
  {
    v28 = v61;
  }

  std::locale::locale(&v49, &v57[0].__loc_);
  v50 = *&v57[0].__ct_;
  v51 = v57[1];
  locale = v57[2].__loc_.__locale_;
  if (v57[2].__loc_.__locale_)
  {
    atomic_fetch_add_explicit(v57[2].__loc_.__locale_ + 1, 1uLL, memory_order_relaxed);
  }

  ct = v57[2].__ct_;
  if (ctu::fs::get_filtered_files(v27, v28, &v49, &v54))
  {
    v29 = v54;
    v30 = v55;
    if (locale)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](locale);
    }

    std::locale::~locale(&v49);
    if (v29 != v30)
    {
      v31 = v54;
      v32 = v55;
      if (v54 == v55)
      {
        v33 = 0;
      }

      else
      {
        v33 = 0;
        do
        {
          memset(&v48, 170, sizeof(v48));
          ctu::tokenize(v31, 45, 0, &v48);
          memset(&v47, 170, sizeof(v47));
          if (*(v48.__r_.__value_.__l.__size_ - 1) < 0)
          {
            std::string::__init_copy_ctor_external(&v47, *(v48.__r_.__value_.__l.__size_ - 24), *(v48.__r_.__value_.__l.__size_ - 16));
          }

          else
          {
            v34 = *(v48.__r_.__value_.__l.__size_ - 24);
            v47.__r_.__value_.__r.__words[2] = *(v48.__r_.__value_.__l.__size_ - 8);
            *&v47.__r_.__value_.__l.__data_ = v34;
          }

          if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v35 = &v47;
          }

          else
          {
            v35 = v47.__r_.__value_.__r.__words[0];
          }

          v36 = strtol(v35, 0, 0);
          if (v33 <= v36)
          {
            v33 = v36;
          }

          if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v47.__r_.__value_.__l.__data_);
          }

          v47.__r_.__value_.__r.__words[0] = &v48;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v47);
          ++v31;
        }

        while (v31 != v32);
      }

      if (SHIBYTE(v64[2]) >= 0)
      {
        v37 = HIBYTE(v64[2]);
      }

      else
      {
        v37 = v64[1];
      }

      memset(&v47, 170, sizeof(v47));
      v38 = &v47;
      std::string::basic_string[abi:ne200100](&v47, v37 + 1);
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = v47.__r_.__value_.__r.__words[0];
      }

      if (v37)
      {
        if (SHIBYTE(v64[2]) >= 0)
        {
          v39 = v64;
        }

        else
        {
          v39 = v64[0];
        }

        memmove(v38, v39, v37);
      }

      *(&v38->__r_.__value_.__l.__data_ + v37) = 45;
      std::to_string(&v46, v33);
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v46;
      }

      else
      {
        v40 = v46.__r_.__value_.__r.__words[0];
      }

      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = v46.__r_.__value_.__l.__size_;
      }

      v42 = std::string::append(&v47, v40, v41);
      v43 = *&v42->__r_.__value_.__l.__data_;
      v48.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
      *&v48.__r_.__value_.__l.__data_ = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      v44 = std::string::append(&v48, "/", 1uLL);
      v45 = *&v44->__r_.__value_.__l.__data_;
      *(a3 + 16) = *(&v44->__r_.__value_.__l + 2);
      *a3 = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      goto LABEL_109;
    }
  }

  else
  {
    if (locale)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](locale);
    }

    std::locale::~locale(&v49);
  }

  ctu::llvm::StringRef::operator std::string(v65, a3);
LABEL_109:
  v48.__r_.__value_.__r.__words[0] = &v54;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v48);
  if (v57[2].__loc_.__locale_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57[2].__loc_.__locale_);
  }

  std::locale::~locale(&v57[0].__loc_);
  if (SHIBYTE(v58[2]) < 0)
  {
    operator delete(v58[0]);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

LABEL_115:
  if (SHIBYTE(v62) < 0)
  {
    operator delete(v60);
  }

  if (SHIBYTE(v63[2]) < 0)
  {
    operator delete(v63[0]);
  }

  if (SHIBYTE(v64[2]) < 0)
  {
    operator delete(v64[0]);
  }
}

void sub_1A911BF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::locale a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, std::locale a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  __p = &a37;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a40);
  if (*(v46 - 209) < 0)
  {
    operator delete(*(v46 - 232));
  }

  if (*(v46 - 185) < 0)
  {
    operator delete(*(v46 - 208));
  }

  if (*(v46 - 161) < 0)
  {
    operator delete(*(v46 - 184));
  }

  if (*(v46 - 137) < 0)
  {
    operator delete(*(v46 - 160));
  }

  if (*(v46 - 113) < 0)
  {
    operator delete(*(v46 - 136));
  }

  _Unwind_Resume(a1);
}

BOOL ctu::fs::get_partition_info(const char *a1, uint64_t a2, void *a3, void *a4, unint64_t *a5)
{
  if (!a2)
  {
    return 0;
  }

  memset(&v22, 0, sizeof(v22));
  v9 = statvfs(a1, &v22);
  v10 = v9 == 0;
  if (v9)
  {
    v11 = *__error();
    v12 = *__error();
    v13 = __error();
    strerror(*v13);
    _TelephonyUtilDebugPrintError("get_partition_info", "Failed to get filesystem statistics pertaining to path %s (error: %d(0x%x) (%s))", v14, v15, v16, v17, v18, v19, a1);
  }

  else
  {
    *a5 = v22.f_frsize;
    f_bavail = v22.f_bavail;
    *a3 = v22.f_blocks;
    *a4 = f_bavail;
  }

  return v10;
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x1AC580C60]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x1E69E5318]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x1E69E5340]);
  return this;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_1F1CB53F0;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  std::shared_ptr<std::__empty_state<char>>::reset[abi:ne200100]<std::__empty_state<char>,0>((a1 + 40), v7);
  v8 = *(a1 + 40);
  *(a1 + 56) = v8;
  v9 = *(a1 + 24) & 0x1F0;
  if (v9 > 0x3F)
  {
    switch(v9)
    {
      case 0x40u:
LABEL_14:

        return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, a2, a3);
      case 0x80u:
        v13 = memchr(a2, 10, a3 - a2);
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = a3;
        }

        if (v14 == a2)
        {
          v15 = operator new(0x10uLL);
          first = v8->__first_;
          v15[1].__vftable = first;
          v8->__first_ = v15;
          *(a1 + 56) = *(*(a1 + 56) + 8);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, a2, v14);
        }

        while (1)
        {
          v21 = v14 == a3 ? v14 : v14 + 1;
          if (v21 == a3)
          {
            break;
          }

          v17 = memchr(v21, 10, a3 - v21);
          if (v17)
          {
            v14 = v17;
          }

          else
          {
            v14 = a3;
          }

          v18 = *(a1 + 56);
          if (v14 == v21)
          {
            v19 = operator new(0x10uLL);
            v20 = v18->__first_;
            v19[1].__vftable = v20;
            v18->__first_ = v19;
            *(a1 + 56) = *(*(a1 + 56) + 8);
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v21, v14);
          }

          std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, v8, v18);
        }

        break;
      case 0x100u:
        v10 = memchr(a2, 10, a3 - a2);
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = a3;
        }

        if (v11 == a2)
        {
          v22 = operator new(0x10uLL);
          v23 = v8->__first_;
          v22[1].__vftable = v23;
          v8->__first_ = v22;
          *(a1 + 56) = *(*(a1 + 56) + 8);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, a2, v11);
        }

        while (1)
        {
          v21 = v11 == a3 ? v11 : v11 + 1;
          if (v21 == a3)
          {
            break;
          }

          v24 = memchr(v21, 10, a3 - v21);
          if (v24)
          {
            v11 = v24;
          }

          else
          {
            v11 = a3;
          }

          v25 = *(a1 + 56);
          if (v11 == v21)
          {
            v26 = operator new(0x10uLL);
            v27 = v25->__first_;
            v26[1].__vftable = v27;
            v25->__first_ = v26;
            *(a1 + 56) = *(*(a1 + 56) + 8);
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v21, v11);
          }

          std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, v8, v25);
        }

        break;
      default:
        goto LABEL_54;
    }

    return v21;
  }

  else if (v9)
  {
    if (v9 != 16)
    {
      if (v9 != 32)
      {
LABEL_54:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
      }

      goto LABEL_14;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, a2, a3);
  }

  else
  {

    return std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, a2, a3);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1AC5808D0](exception, 17);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::shared_ptr<std::__empty_state<char>>::reset[abi:ne200100]<std::__empty_state<char>,0>(void *a1, uint64_t a2)
{
  v4 = operator new(0x20uLL);
  *v4 = &unk_1F1CB4A58;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  v5 = a1[1];
  *a1 = a2;
  a1[1] = v4;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1A911C604(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    v9 = operator new(0x10uLL);
    v10 = a1->__end_;
    first = v10->__first_;
    v9[1].__vftable = first;
    v10->__first_ = v9;
    a1->__end_ = a1->__end_->__first_;
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v12 = a1->__end_;
      v13 = ++v7;
      do
      {
        v14 = v7;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
      }

      while (v7 != v14);
      if (v14 == v13)
      {
        v15 = operator new(0x10uLL);
        v16 = a1->__end_;
        v17 = v16->__first_;
        v15[1].__vftable = v17;
        v16->__first_ = v15;
        a1->__end_ = a1->__end_->__first_;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v12);
    }

    while (v14 != a3);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      ++v3;
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        ++v3;
      }
    }

    if (v3 != a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, v8 + 1, a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1AC5808D0](exception, 14);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  operator delete(this);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_alternation(std::basic_regex<char> *this, std::__owns_one_state<char> *__sa, std::__owns_one_state<char> *__sb)
{
  v6 = operator new(0x18uLL);
  first = __sb->__first_;
  v6[1].__vftable = __sa->__first_;
  v6[2].__vftable = first;
  v6->__vftable = &unk_1F1CB5420;
  __sa->__first_ = v6;
  __sb->__first_ = 0;
  v8 = operator new(0x10uLL);
  v9 = this->__end_->__first_;
  v8[1].__vftable = v9;
  __sb->__first_ = v8;
  this->__end_->__first_ = 0;
  v10 = operator new(0x10uLL);
  v11 = __sb->__first_;
  v10->__vftable = &unk_1F1CB49B8;
  v10[1].__vftable = v11;
  this->__end_->__first_ = v10;
  this->__end_ = __sb->__first_;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *a2;
  if (v6 > 0x5B)
  {
    if (v6 != 92)
    {
      if (v6 != 94)
      {
        goto LABEL_65;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      return a2 + 1;
    }

    if (a2 + 1 != a3)
    {
      v12 = a2[1];
      if (v12 == 66)
      {
        v13 = 1;
        goto LABEL_56;
      }

      if (v12 == 98)
      {
        v13 = 0;
LABEL_56:
        std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v13);
        return a2 + 2;
      }
    }

    end = this->__end_;
    marked_count = this->__marked_count_;
    goto LABEL_37;
  }

  if (v6 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return a2 + 1;
  }

  if (v6 != 40)
  {
    goto LABEL_65;
  }

  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    goto LABEL_22;
  }

  v7 = a2[2];
  if (v7 == 33)
  {
    *&v30 = 0xAAAAAAAAAAAAAAAALL;
    *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v42.__loop_count_ = v30;
    *&v42.__start_.__cntrl_ = v30;
    *&v42.__traits_.__loc_.__locale_ = v30;
    *&v42.__traits_.__col_ = v30;
    std::regex_traits<char>::regex_traits(&v42.__traits_);
    memset(&v42.__flags_, 0, 40);
    v42.__flags_ = this->__flags_;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v42, a2 + 3, a3);
    v31 = v42.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v42, 1, this->__marked_count_);
    this->__marked_count_ += v31;
    if (v9 == a3 || *v9 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_63;
  }

  if (v7 != 61)
  {
LABEL_22:
    end = this->__end_;
    marked_count = this->__marked_count_;
LABEL_23:
    if (a2 + 1 == a3)
    {
      goto LABEL_101;
    }

    if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
    {
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 3, a3);
      if (v17 == a3)
      {
        goto LABEL_101;
      }

      v18 = v17;
      if (*v17 != 41)
      {
        goto LABEL_101;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      v19 = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 1, a3);
      if (v20 == a3 || (v18 = v20, *v20 != 41))
      {
LABEL_101:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v19);
    }

    --*p_open_count;
    v21 = v18 + 1;
LABEL_34:
    result = a2;
    if (v21 == a2)
    {
      return result;
    }

    goto LABEL_96;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v42.__loop_count_ = v8;
  *&v42.__start_.__cntrl_ = v8;
  *&v42.__traits_.__loc_.__locale_ = v8;
  *&v42.__traits_.__col_ = v8;
  std::regex_traits<char>::regex_traits(&v42.__traits_);
  memset(&v42.__flags_, 0, 40);
  v42.__flags_ = this->__flags_;
  v9 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v42, a2 + 3, a3);
  v10 = v42.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v42, 0, this->__marked_count_);
  this->__marked_count_ += v10;
  if (v9 == a3 || *v9 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_63:
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v42.__traits_.__loc_);
  result = v9 + 1;
  if (v9 + 1 != a2)
  {
    return result;
  }

  v6 = *a2;
LABEL_65:
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (v6 > 62)
  {
    v34 = (v6 - 92);
    if (v34 > 0x21)
    {
LABEL_74:
      if (v6 != 91)
      {
        if (v6 == 63)
        {
          goto LABEL_100;
        }

        goto LABEL_82;
      }

      v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
      goto LABEL_34;
    }

    if (((1 << (v6 - 92)) & 0x300000006) != 0)
    {
      return a2;
    }

    if (v6 != 92)
    {
      if (v34 == 31)
      {
        goto LABEL_100;
      }

      goto LABEL_74;
    }

LABEL_37:
    v22 = a2 + 1;
    if (a2 + 1 == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v23 = *v22;
    if (v23 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, 0);
LABEL_95:
      v21 = a2 + 2;
      goto LABEL_96;
    }

    if ((v23 - 49) <= 8)
    {
      v24 = (v23 - 48);
      v21 = a2 + 2;
      if (a2 + 2 != a3)
      {
        while (1)
        {
          v25 = *v21;
          if ((v25 - 48) > 9)
          {
            break;
          }

          if (v24 >= 0x19999999)
          {
            goto LABEL_102;
          }

          v24 = v25 + 10 * v24 - 48;
          if (++v21 == a3)
          {
            v21 = a3;
            break;
          }
        }

        if (!v24)
        {
          goto LABEL_102;
        }
      }

      if (v24 > marked_count)
      {
LABEL_102:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, v24);
      if (v21 != v22)
      {
        goto LABEL_34;
      }

      v23 = *v22;
    }

    if (v23 > 99)
    {
      if (v23 == 119)
      {
        v26 = this;
        v27 = 0;
        goto LABEL_87;
      }

      if (v23 == 115)
      {
        v39 = this;
        v40 = 0;
LABEL_93:
        started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v39, v40);
        v36 = started->__mask_ | 0x4000;
        goto LABEL_94;
      }

      if (v23 != 100)
      {
        goto LABEL_88;
      }

      v28 = this;
      v29 = 0;
    }

    else
    {
      if (v23 != 68)
      {
        if (v23 != 83)
        {
          if (v23 == 87)
          {
            v26 = this;
            v27 = 1;
LABEL_87:
            v37 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v26, v27);
            v37->__mask_ |= 0x500u;
            std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v37, 95);
            goto LABEL_95;
          }

LABEL_88:
          v38 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(this, a2 + 1, a3, 0);
          if (v38 == v22)
          {
            v21 = a2;
          }

          else
          {
            v21 = v38;
          }

          goto LABEL_34;
        }

        v39 = this;
        v40 = 1;
        goto LABEL_93;
      }

      v28 = this;
      v29 = 1;
    }

    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v28, v29);
    v36 = started->__mask_ | 0x400;
LABEL_94:
    started->__mask_ = v36;
    goto LABEL_95;
  }

  if (v6 <= 40)
  {
    if (v6 == 36)
    {
      return a2;
    }

    if (v6 != 40)
    {
      goto LABEL_82;
    }

    goto LABEL_23;
  }

  if (v6 == 41)
  {
    return a2;
  }

  if (v6 != 46)
  {
    if ((v6 - 42) < 2)
    {
LABEL_100:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

LABEL_82:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v6);
    goto LABEL_83;
  }

  v32 = operator new(0x10uLL);
  first = end->__first_;
  v32->__vftable = &unk_1F1CB4988;
  v32[1].__vftable = first;
  end->__first_ = v32;
  this->__end_ = this->__end_->__first_;
LABEL_83:
  v21 = a2 + 1;
LABEL_96:
  v41 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(this, v21, a3, end, marked_count + 1, v41);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    LODWORD(__max) = -1431655766;
    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = __max;
LABEL_33:
              v21 = __s;
              v22 = 0;
LABEL_46:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = __max;
LABEL_45:
            v21 = __s;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v16 + 1, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(std::basic_regex<char> *this)
{
  v2 = operator new(0x18uLL);
  v3 = (this->__flags_ & 0x5F0) == 1024;
  end = this->__end_;
  first = end->__first_;
  v2->__vftable = &unk_1F1CB5180;
  v2[1].__vftable = first;
  LOBYTE(v2[2].__vftable) = v3;
  end->__first_ = v2;
  this->__end_ = this->__end_->__first_;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(std::basic_regex<char> *this)
{
  v2 = operator new(0x18uLL);
  v3 = (this->__flags_ & 0x5F0) == 1024;
  end = this->__end_;
  first = end->__first_;
  v2->__vftable = &unk_1F1CB5120;
  v2[1].__vftable = first;
  LOBYTE(v2[2].__vftable) = v3;
  end->__first_ = v2;
  this->__end_ = this->__end_->__first_;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(std::basic_regex<char> *this, BOOL a2)
{
  v4 = operator new(0x30uLL);
  first = this->__end_->__first_;
  *v4 = &unk_1F1CB5300;
  *(v4 + 1) = first;
  std::locale::locale(v4 + 2, &this->__traits_.__loc_);
  *(v4 + 24) = *&this->__traits_.__ct_;
  v4[40] = a2;
  this->__end_->__first_ = v4;
  this->__end_ = this->__end_->__first_;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(std::basic_regex<char> *this, const std::basic_regex<char> *a2, BOOL a3, unsigned int a4)
{
  v8 = operator new(0x58uLL);
  first = this->__end_->__first_;
  *v8 = &unk_1F1CB53C0;
  *(v8 + 1) = first;
  std::locale::locale(v8 + 2, &a2->__traits_.__loc_);
  *(v8 + 24) = *&a2->__traits_.__ct_;
  *(v8 + 40) = *&a2->__flags_;
  cntrl = a2->__start_.__cntrl_;
  *(v8 + 7) = a2->__start_.__ptr_;
  *(v8 + 8) = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v8 + 9) = a2->__end_;
  *(v8 + 20) = a4;
  v8[84] = a3;
  this->__end_->__first_ = v8;
  this->__end_ = this->__end_->__first_;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1AC5808D0](exception, 6);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F1CB5300;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F1CB5300;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F1CB53C0;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F1CB53C0;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(a1);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0xAAAAAAAAAAAAAA00;
  v25 = v4;
  v22 = 0;
  v24 = 0uLL;
  LOBYTE(v25) = 0;
  BYTE8(v25) = 0;
  v26 = 0;
  memset(&__p, 0, sizeof(__p));
  v5 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  *&v20 = *(a2 + 24);
  *(&v20 + 1) = v20;
  LOBYTE(v21) = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v5, &v20);
  *(&v21 + 1) = v6;
  v22 = v6;
  LOBYTE(v23) = 0;
  v24 = v20;
  LOBYTE(v25) = v21;
  v26 = v6;
  BYTE8(v25) = 1;
  v7 = *(a2 + 88) & 0xFFF;
  v8 = *(a2 + 16);
  if (v8 == *(a2 + 8))
  {
    v9 = *(a2 + 92);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v8, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v9))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v11 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = *(a1 + 80);
  v13 = *(a2 + 32);
  v14 = 2;
  v15 = 1;
  do
  {
    v16 = &begin[v15];
    v17 = v13 + 24 * v12;
    *v17 = v16->std::pair<const char *, const char *>;
    *(v17 + 16) = v16->matched;
    v15 = v14;
    ++v12;
  }

  while (v11 > v14++);
LABEL_11:

  operator delete(begin);
}

void sub_1A911DFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v25 = 0;
    goto LABEL_30;
  }

  __x.second = a3;
  *&__x.matched = 0xAAAAAAAAAAAAAA00;
  __x.first = a3;
  *v37 = 0;
  memset(&v37[8], 0, 85);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v39, v37);
  if (*&v37[56])
  {
    operator delete(*&v37[56]);
  }

  if (*&v37[32])
  {
    operator delete(*&v37[32]);
  }

  v36 = a4;
  v13 = v40;
  *(v40 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v40 - 40), *(a1 + 32));
  v14 = v40;
  *(v40 - 2) = v6;
  *(v14 - 2) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = v14 - 16;
    v16 = *(v14 - 2);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          *&v22 = 0xAAAAAAAAAAAAAAAALL;
          *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v37[64] = v22;
          *&v37[80] = v22;
          *&v37[32] = v22;
          *&v37[48] = v22;
          *v37 = v22;
          *&v37[16] = v22;
          v23 = *(v14 - 5);
          *v37 = *v18;
          *&v37[16] = v23;
          memset(&v37[32], 0, 24);
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v37[32], *(v14 - 8), *(v14 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 7) - *(v14 - 8)) >> 3));
          memset(&v37[56], 0, 24);
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(&v37[56], *(v14 - 5), *(v14 - 4), (*(v14 - 4) - *(v14 - 5)) >> 4);
          v24 = *v17;
          *&v37[85] = *(v14 - 11);
          *&v37[80] = v24;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(**&v37[80] + 24))(*&v37[80], 0, v37);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v39, v37);
          if (*&v37[56])
          {
            *&v37[64] = *&v37[56];
            operator delete(*&v37[56]);
          }

          if (*&v37[32])
          {
            *&v37[40] = *&v37[32];
            operator delete(*&v37[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v40;
    ++v15;
    if (v39 == v40)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 10);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v40 - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v40 - 12);
    v40 = v21;
    goto LABEL_28;
  }

  v27 = *v36;
  *v27 = a2;
  *(v27 + 8) = v20;
  *(v27 + 16) = 1;
  v28 = *(v14 - 8);
  v29 = *(v14 - 7) - v28;
  if (v29)
  {
    v30 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
    v31 = (v28 + 16);
    v32 = 1;
    do
    {
      v33 = v27 + 24 * v32;
      *v33 = *(v31 - 1);
      v34 = *v31;
      v31 += 24;
      *(v33 + 16) = v34;
    }

    while (v30 > v32++);
  }

  v25 = 1;
LABEL_30:
  *v37 = &v39;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v37);
  return v25;
}

void sub_1A911E350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) >= __n)
  {
    end = this->__end_;
    v16 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    if (v16 >= __n)
    {
      v17 = __n;
    }

    else
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    }

    if (v17)
    {
      v18 = __u->std::pair<const char *, const char *>;
      matched = __u->matched;
      v20 = begin;
      do
      {
        v20->std::pair<const char *, const char *> = v18;
        v20->matched = matched;
        ++v20;
        --v17;
      }

      while (v17);
    }

    if (__n <= v16)
    {
      this->__end_ = &begin[__n];
    }

    else
    {
      v21 = &end[__n - v16];
      v22 = 24 * __n - 8 * ((end - begin) >> 3);
      do
      {
        v23 = __u->std::pair<const char *, const char *>;
        *&end->matched = *&__u->matched;
        end->std::pair<const char *, const char *> = v23;
        ++end;
        v22 -= 24;
      }

      while (v22);
      this->__end_ = v21;
    }
  }

  else
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= __n)
    {
      v9 = __n;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v10);
    v11 = this->__end_;
    v12 = &v11[__n];
    v13 = 24 * __n;
    do
    {
      v14 = __u->std::pair<const char *, const char *>;
      *&v11->matched = *&__u->matched;
      v11->std::pair<const char *, const char *> = v14;
      ++v11;
      v13 -= 24;
    }

    while (v13);
    this->__end_ = v12;
  }
}

char *std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[24 * v4];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(unint64_t a1)
{
  if (a1 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(24 * a1);
}

void std::vector<std::__state<char>>::push_back[abi:ne200100](char **a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    v10 = v9 + 1;
    if (v9 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x155555555555555)
    {
      v12 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 > 0x2AAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = operator new(96 * v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = *(a2 + 16);
    v15 = &v13[96 * v9];
    *v15 = *a2;
    *(v15 + 1) = v14;
    *(v15 + 2) = *(a2 + 32);
    *(v15 + 6) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v15 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v16 = *(a2 + 72);
    v17 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v15 + 85) = *(a2 + 85);
    *(v15 + 9) = v16;
    *(v15 + 10) = v17;
    v18 = *a1;
    v19 = a1[1];
    v20 = &v15[*a1 - v19];
    if (*a1 != v19)
    {
      v21 = *a1;
      v22 = &v15[*a1 - v19];
      do
      {
        v23 = *(v21 + 1);
        *v22 = *v21;
        *(v22 + 1) = v23;
        *(v22 + 5) = 0;
        *(v22 + 6) = 0;
        *(v22 + 2) = *(v21 + 2);
        *(v22 + 6) = *(v21 + 6);
        *(v21 + 4) = 0;
        *(v21 + 5) = 0;
        *(v21 + 6) = 0;
        *(v22 + 8) = 0;
        *(v22 + 9) = 0;
        *(v22 + 56) = *(v21 + 56);
        *(v22 + 9) = *(v21 + 9);
        *(v21 + 7) = 0;
        *(v21 + 8) = 0;
        *(v21 + 9) = 0;
        v24 = *(v21 + 10);
        *(v22 + 85) = *(v21 + 85);
        *(v22 + 10) = v24;
        v21 += 96;
        v22 += 96;
      }

      while (v21 != v19);
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v18);
        v18 += 96;
      }

      while (v18 != v19);
      v18 = *a1;
    }

    v8 = v15 + 96;
    *a1 = v20;
    a1[1] = v8;
    a1[2] = &v13[96 * v12];
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *(a2 + 16);
    *v4 = *a2;
    *(v4 + 16) = v6;
    *(v4 + 40) = 0;
    *(v4 + 48) = 0;
    *(v4 + 32) = 0;
    *(v4 + 32) = *(a2 + 32);
    *(v4 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
    *(v4 + 56) = *(a2 + 56);
    *(v4 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v7 = *(a2 + 80);
    *(v4 + 85) = *(a2 + 85);
    *(v4 + 80) = v7;
    v8 = (v4 + 96);
  }

  a1[1] = v8;
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v7 = end - this->__begin_;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  v9 = __sz - v8;
  if (__sz <= v8)
  {
    if (__sz < v8)
    {
      this->__end_ = &begin[__sz];
    }
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= v9)
    {
      v28 = &end[v9];
      v29 = 24 * __sz - 8 * (v7 >> 3);
      do
      {
        v30 = __x->std::pair<const char *, const char *>;
        *&end->matched = *&__x->matched;
        end->std::pair<const char *, const char *> = v30;
        ++end;
        v29 -= 24;
      }

      while (v29);
      this->__end_ = v28;
    }

    else
    {
      if (__sz > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= __sz)
      {
        v13 = __sz;
      }

      if (v12 >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v13;
      }

      v15 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(v14);
      v17 = &v15[v7];
      v18 = &v15[24 * v9 + v7];
      v19 = 24 * __sz - 8 * (v7 >> 3);
      v20 = &v15[v7];
      do
      {
        v21 = __x->std::pair<const char *, const char *>;
        v20[1].first = *&__x->matched;
        *v20 = v21;
        v20 = (v20 + 24);
        v19 -= 24;
      }

      while (v19);
      v22 = &v15[24 * v16];
      v23 = this->__begin_;
      v24 = this->__end_;
      v25 = &v17[(this->__begin_ - v24)];
      if (v24 != this->__begin_)
      {
        v26 = v25;
        do
        {
          v27 = v23->std::pair<const char *, const char *>;
          *&v26->matched = *&v23->matched;
          v26->std::pair<const char *, const char *> = v27;
          ++v26;
          ++v23;
        }

        while (v23 != v24);
        v23 = this->__begin_;
      }

      this->__begin_ = v25;
      this->__end_ = v18;
      this->__end_cap_.__value_ = v22;
      if (v23)
      {

        operator delete(v23);
      }
    }
  }
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = v5 >> 4;
  if (__sz <= v5 >> 4)
  {
    if (__sz >= v6)
    {
      return;
    }

    v20 = &begin[__sz];
    goto LABEL_16;
  }

  v7 = __sz - v6;
  value = this->__end_cap_.__value_;
  if (v7 <= value - end)
  {
    bzero(this->__end_, 16 * v7);
    v20 = &end[v7];
LABEL_16:
    this->__end_ = v20;
    return;
  }

  if (__sz >> 60)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v9 = value - begin;
  v10 = v9 >> 3;
  if (v9 >> 3 <= __sz)
  {
    v10 = __sz;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(v11);
  v13 = &v12[v5];
  v15 = &v12[16 * v14];
  bzero(v13, 16 * v7);
  v16 = &v13[16 * v7];
  v17 = this->__end_ - this->__begin_;
  v18 = &v13[-v17];
  memcpy(v18, this->__begin_, v17);
  v19 = this->__begin_;
  this->__begin_ = v18;
  this->__end_ = v16;
  this->__end_cap_.__value_ = v15;
  if (v19)
  {

    operator delete(v19);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1AC5808D0](exception, 12);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1AC5808D0](exception, 16);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__destroy_at[abi:ne200100]<std::__state<char>,0>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(unint64_t a1)
{
  if (a1 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(16 * a1);
}

char *std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2;
      *(v7 + 16) = *(a2 + 2);
      *v7 = v8;
      v7 += 24;
      a2 = (a2 + 24);
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_1A911EC44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_1A911ECB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[16 * v4];
  return result;
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_141;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_141;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 != a3)
    {
      v43 = a3 - 4;
      while (1)
      {
        v8 = v5;
        if (v5 == a3)
        {
          goto LABEL_117;
        }

        v9 = *v5;
        v8 = v5;
        if (v9 == 93)
        {
          goto LABEL_117;
        }

        v10 = 0;
        v46[0] = 0;
        v46[1] = 0;
        v47 = 0;
        v11 = 0;
        v8 = v5;
        if (v5 + 1 != a3 && v9 == 91)
        {
          v12 = v5[1];
          switch(v12)
          {
            case '.':
              v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v5 + 2, a3, v46);
              v11 = HIBYTE(v47);
              v10 = v46[1];
              break;
            case ':':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_140;
              }

              for (i = 0; v5[i + 2] != 58 || v5[i + 3] != 93; ++i)
              {
                if (v43 - v5 == i)
                {
                  goto LABEL_140;
                }
              }

              v23 = &v5[i + 2];
              if (v23 == a3)
              {
LABEL_140:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
              }

              v24 = *(a1 + 24);
              memset(__p, 170, sizeof(__p));
              std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, v5 + 2, v23, i);
              v25 = HIBYTE(__p[2]);
              if (SHIBYTE(__p[2]) >= 0)
              {
                v26 = __p;
              }

              else
              {
                v26 = __p[0];
              }

              if (SHIBYTE(__p[2]) < 0)
              {
                v25 = __p[1];
              }

              (*(**(a1 + 8) + 48))(*(a1 + 8), v26, &v25[v26]);
              if (SHIBYTE(__p[2]) >= 0)
              {
                v27 = __p;
              }

              else
              {
                v27 = __p[0];
              }

              classname = std::__get_classname(v27, v24 & 1);
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }

              if (!classname)
              {
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
              }

              v29 = 0;
              *(v7 + 160) |= classname;
              v18 = &v5[i + 4];
              goto LABEL_113;
            case '=':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_140;
              }

              v13 = v43 - v5;
              v14 = (v5 + 2);
              for (j = v5 + 2; ; v14 = j)
              {
                v16 = *j++;
                if (v16 == 61 && *j == 93)
                {
                  break;
                }

                if (!v13)
                {
                  goto LABEL_140;
                }

                --v13;
              }

              if (v14 == a3)
              {
                goto LABEL_140;
              }

              memset(__p, 170, sizeof(__p));
              std::regex_traits<char>::__lookup_collatename<char const*>(__p, a1, v5 + 2, v14);
              v21 = SHIBYTE(__p[2]);
              if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
              {
                v21 = __p[1];
                if (!__p[1])
                {
LABEL_142:
                  std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                }

                memset(__src, 170, sizeof(__src));
                v22 = __p[0];
              }

              else
              {
                if (!HIBYTE(__p[2]))
                {
                  goto LABEL_142;
                }

                v22 = __p;
                memset(__src, 170, sizeof(__src));
              }

              std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(__src, a1, v22, v21 + v22);
              v31 = HIBYTE(__src[2]);
              if (SHIBYTE(__src[2]) < 0)
              {
                v31 = __src[1];
              }

              if (v31)
              {
                std::vector<std::string>::push_back[abi:ne200100](v7 + 136, __src);
              }

              else
              {
                v32 = HIBYTE(__p[2]);
                if (SHIBYTE(__p[2]) < 0)
                {
                  v32 = __p[1];
                }

                if (v32 == 2)
                {
                  if (SHIBYTE(__p[2]) >= 0)
                  {
                    v39 = __p;
                  }

                  else
                  {
                    v39 = __p[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v39, *(v39 + 1));
                }

                else
                {
                  if (v32 != 1)
                  {
                    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                  }

                  if (SHIBYTE(__p[2]) >= 0)
                  {
                    v33 = __p;
                  }

                  else
                  {
                    v33 = __p[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v33);
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

              v29 = 0;
              v18 = v14 + 2;
LABEL_113:
              v37 = v5;
              goto LABEL_114;
            default:
              v10 = 0;
              v11 = 0;
              v8 = v5;
              break;
          }
        }

        v18 = *(a1 + 24) & 0x1F0;
        if (v11 >= 0)
        {
          v10 = v11;
        }

        if (!v10)
        {
          if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
          {
            v19 = *v8;
            if (v19 == 92)
            {
              if ((*(a1 + 24) & 0x1F0) != 0)
              {
                v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v8 + 1, a3, v46);
              }

              else
              {
                v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v8 + 1, a3, v46, v7);
              }

              v8 = v20;
              goto LABEL_79;
            }
          }

          else
          {
            LOBYTE(v19) = *v8;
          }

          if (v11 < 0)
          {
            v30 = v46[0];
            v46[1] = 1;
          }

          else
          {
            HIBYTE(v47) = 1;
            v30 = v46;
          }

          *v30 = v19;
          *(v30 + 1) = 0;
          ++v8;
        }

LABEL_79:
        if (v8 != a3)
        {
          v34 = *v8;
          if (v34 != 93)
          {
            v36 = v8 + 1;
            if (v8 + 1 != a3 && v34 == 45 && *v36 != 93)
            {
              memset(__p, 0, sizeof(__p));
              v37 = v8 + 2;
              if (v8 + 2 != a3 && *v36 == 91 && *v37 == 46)
              {
                v38 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v8 + 3, a3, __p);
                goto LABEL_124;
              }

              if ((v18 | 0x40) == 0x40)
              {
                LODWORD(v36) = *v36;
                if (v36 == 92)
                {
                  if (v18)
                  {
                    v38 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v8 + 2, a3, __p);
                  }

                  else
                  {
                    v38 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v8 + 2, a3, __p, v7);
                  }

LABEL_124:
                  v37 = v38;
LABEL_125:
                  *__src = *v46;
                  v41 = v47;
                  v46[1] = 0;
                  v47 = 0;
                  *v44 = *__p;
                  v45 = __p[2];
                  v46[0] = 0;
                  __src[2] = v41;
                  memset(__p, 0, sizeof(__p));
                  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v7, __src, v44);
                  if (SHIBYTE(v45) < 0)
                  {
                    operator delete(v44[0]);
                  }

                  if (SHIBYTE(__src[2]) < 0)
                  {
                    operator delete(__src[0]);
                  }

                  if (SHIBYTE(__p[2]) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v29 = 1;
LABEL_114:
                  if (SHIBYTE(v47) < 0)
                  {
                    operator delete(v46[0]);
                  }

                  v8 = v37;
                  if ((v29 & 1) == 0)
                  {
                    goto LABEL_118;
                  }

                  goto LABEL_117;
                }
              }

              else
              {
                LOBYTE(v36) = *v36;
              }

              HIBYTE(__p[2]) = 1;
              LOWORD(__p[0]) = v36;
              goto LABEL_125;
            }
          }
        }

        if (SHIBYTE(v47) < 0)
        {
          if (v46[1])
          {
            if (v46[1] == 1)
            {
              v35 = v46[0];
LABEL_88:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v35);
LABEL_98:
              v29 = 1;
              v37 = v8;
              goto LABEL_114;
            }

            v35 = v46[0];
LABEL_97:
            std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v35, v35[1]);
            goto LABEL_98;
          }

          operator delete(v46[0]);
        }

        else if (HIBYTE(v47))
        {
          v35 = v46;
          if (HIBYTE(v47) == 1)
          {
            goto LABEL_88;
          }

          goto LABEL_97;
        }

LABEL_117:
        v18 = v8;
LABEL_118:
        v40 = v18 == v5;
        v5 = v18;
        if (v40)
        {
          goto LABEL_133;
        }
      }
    }

    v18 = v5;
LABEL_133:
    if (v18 == a3)
    {
      goto LABEL_141;
    }

    if (*v18 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
      ++v18;
    }

    if (v18 == a3 || *v18 != 93)
    {
LABEL_141:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return (v18 + 1);
  }

  return a2;
}

void sub_1A911F454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    v2 = operator new(0x18uLL);
    v3 = this->__marked_count_ + 1;
    this->__marked_count_ = v3;
    end = this->__end_;
    first = end->__first_;
    v2->__vftable = &unk_1F1CB4928;
    v2[1].__vftable = first;
    LODWORD(v2[2].__vftable) = v3;
    end->__first_ = v2;
    this->__end_ = this->__end_->__first_;
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    v4 = operator new(0x18uLL);
    end = this->__end_;
    first = end->__first_;
    v4->__vftable = &unk_1F1CB4958;
    v4[1].__vftable = first;
    LODWORD(v4[2].__vftable) = a2;
    end->__first_ = v4;
    this->__end_ = this->__end_->__first_;
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1AC5808D0](exception, 11);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1AC5808D0](exception, 3);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
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

          v18 = 13;
          goto LABEL_91;
        }

        v17 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_73;
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

          v18 = 9;
          goto LABEL_91;
        }

        v17 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_99;
        }

        v9 = a2[1];
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
        {
          goto LABEL_99;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_99;
        }

        v10 = *v4;
        v11 = -48;
        if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
        {
          v10 |= 0x20u;
          if ((v10 - 97) >= 6)
          {
            goto LABEL_99;
          }

          v11 = -87;
        }

        v6 = 16 * (v11 + v10);
LABEL_45:
        if (v4 + 1 == a3)
        {
          goto LABEL_99;
        }

        v12 = v4[1];
        v13 = -48;
        if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
        {
          v12 |= 0x20u;
          if ((v12 - 97) >= 6)
          {
            goto LABEL_99;
          }

          v13 = -87;
        }

        if (v4 + 2 != a3)
        {
          v14 = v4[2];
          v15 = -48;
          if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
          {
            goto LABEL_55;
          }

          v14 |= 0x20u;
          if ((v14 - 97) < 6)
          {
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
        }

LABEL_99:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_45;
        }

LABEL_73:
        v17 = v5;
        if ((v5 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
        {
          goto LABEL_99;
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
          return ++v4;
        }

        goto LABEL_78;
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

        v18 = 11;
LABEL_91:
        *a4 = v18;
        return ++v4;
      }

      v17 = 11;
    }

LABEL_78:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
    return ++v4;
  }

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

        v18 = 12;
        goto LABEL_91;
      }

      v17 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_73;
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

        v18 = 10;
        goto LABEL_91;
      }

      v17 = 10;
    }

    goto LABEL_78;
  }

  if (v5 == 48)
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

      *a4 = 0;
      return ++v4;
    }

    v17 = 0;
    goto LABEL_78;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_99;
    }

    goto LABEL_73;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_99;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_99;
  }

  v8 = v7 & 0x1F;
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
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  v4 += 2;
  return v4;
}

void sub_1A911FC88(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  locale = v1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1AC5808D0](exception, 4);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if (flags)
  {
    v8 = operator new(0x30uLL);
    v9 = v8;
    v8[1].__locale_ = this->__end_->__first_;
    v10 = &unk_1F1CB52D0;
LABEL_6:
    v8->__locale_ = v10;
    std::locale::locale(v8 + 2, &this->__traits_.__loc_);
    *&v9[3].__locale_ = *&this->__traits_.__ct_;
    LODWORD(v9[5].__locale_) = __i;
    this->__end_->__first_ = v9;
    goto LABEL_7;
  }

  if ((flags & 8) != 0)
  {
    v8 = operator new(0x30uLL);
    v9 = v8;
    v8[1].__locale_ = this->__end_->__first_;
    v10 = &unk_1F1CB5210;
    goto LABEL_6;
  }

  v5 = operator new(0x18uLL);
  end = this->__end_;
  first = end->__first_;
  v5->__vftable = &unk_1F1CB5B30;
  v5[1].__vftable = first;
  LODWORD(v5[2].__vftable) = __i;
  end->__first_ = v5;
LABEL_7:
  this->__end_ = this->__end_->__first_;
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F1CB51E0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F1CB51E0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F1CB5150;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F1CB5150;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
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

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
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

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F1CB52D0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F1CB52D0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      v8 = *(v3 + 8) != *v3;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v9 = 0;
      while (1)
      {
        v10 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v9));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v9));
        if (v10 != result)
        {
          break;
        }

        if (v4 == ++v9)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F1CB5210;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F1CB5210;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = v4;
      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

unsigned int *std::__back_ref<char>::__exec(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

std::__bracket_expression<char, std::regex_traits<char>> *__cdecl std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(std::basic_regex<char> *this, BOOL __negate)
{
  v4 = operator new(0xB0uLL);
  first = this->__end_->__first_;
  flags_low = LOBYTE(this->__flags_);
  v7 = flags_low & 1;
  v8 = (flags_low >> 3) & 1;
  *(v4 + 1) = first;
  std::locale::locale(v4 + 2, &this->__traits_.__loc_);
  *(v4 + 24) = *&this->__traits_.__ct_;
  *(v4 + 40) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0u;
  v4[168] = __negate;
  v4[169] = v7;
  v4[170] = v8;
  std::locale::locale(&v11, v4 + 2);
  std::locale::name(&v12, &v11);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v12.__r_.__value_.__l.__size_ != 1 || *v12.__r_.__value_.__l.__data_ != 67;
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  else
  {
    v9 = SHIBYTE(v12.__r_.__value_.__r.__words[2]) != 1 || v12.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v11);
  v4[171] = v9;
  this->__end_->__first_ = v4;
  this->__end_ = v4;
  return v4;
}

void sub_1A91209A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v15 = v10[8].__locale_;
  if (v15)
  {
    v10[9].__locale_ = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v10[6].__locale_ = v16;
    operator delete(v16);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v11;
  v17 = v10[1].__locale_;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  if (*(a1 + 169) == 1)
  {
    a2 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    goto LABEL_4;
  }

  if (*(a1 + 170) == 1)
  {
LABEL_4:
    v3 = a1 + 40;

    goto LABEL_6;
  }

  v3 = a1 + 40;

LABEL_6:
  std::vector<char>::push_back[abi:ne200100](v3, a2);
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v1 = std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  operator delete(v1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v10 = 0;
    negate = this->__negate_;
    goto LABEL_64;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_39;
  }

  LOBYTE(__src) = *current;
  v6 = current[1];
  HIBYTE(__src) = current[1];
  if (this->__icase_)
  {
    LOBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  __s.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  __s.__r_.__value_.__r.__words[2] = 0x2AAAAAAAAAAAAAALL;
  __s.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAA00AAAALL;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  std::__get_collation_name(&v75, &__s);
  __p = v75;
  size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v75.__r_.__value_.__r.__words[2]);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v75.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v9 = __s.__r_.__value_.__r.__words[0];
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
LABEL_11:
      operator delete(v9);
      goto LABEL_15;
    }

LABEL_124:
    (*(*this->__traits_.__col_ + 32))(&v75);
    if (v8 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v75;
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_ != 1 && __p.__r_.__value_.__l.__size_ != 12)
      {
        *__p.__r_.__value_.__l.__data_ = 0;
        __p.__r_.__value_.__l.__size_ = 0;
        goto LABEL_9;
      }
    }

    else if (HIBYTE(v75.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v75.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
LABEL_9:
      if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      v9 = __s.__r_.__value_.__r.__words[0];
      goto LABEL_11;
    }

    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 3)
  {
    goto LABEL_124;
  }

LABEL_15:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_17;
    }

LABEL_39:
    negate = 0;
    v10 = 1;
    goto LABEL_40;
  }

  v23 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v23)
  {
    goto LABEL_39;
  }

LABEL_17:
  begin = this->__digraphs_.__begin_;
  v13 = this->__digraphs_.__end_ - begin;
  if (v13)
  {
    v14 = v13 >> 1;
    if ((v13 >> 1) <= 1)
    {
      v14 = 1;
    }

    p_second = &begin->second;
    while (__src != *(p_second - 1) || HIBYTE(__src) != *p_second)
    {
      p_second += 2;
      if (!--v14)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_165;
  }

LABEL_26:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    memset(&__s, 170, sizeof(__s));
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &__src, &v75);
    v17 = this->__ranges_.__begin_;
    if (this->__ranges_.__end_ == v17)
    {
LABEL_33:
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v18 = 0;
      v19 = 3;
      while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v17->first.__r_.__value_.__r.__words[v19 - 3], &__s.__r_.__value_.__l.__data_) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, (&this->__ranges_.__begin_->first.__r_.__value_.__l.__data_ + v19 * 8)) >= 1)
      {
        ++v18;
        v17 = this->__ranges_.__begin_;
        v19 += 6;
        if (v18 >= 0xAAAAAAAAAAAAAAABLL * ((this->__ranges_.__end_ - v17) >> 4))
        {
          goto LABEL_33;
        }
      }

      v21 = 5;
      v20 = 1;
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v20)
    {
      v22 = 1;
      goto LABEL_145;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v22 = 0;
    goto LABEL_147;
  }

  memset(&__s, 170, sizeof(__s));
  p_s = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &v75);
  v40 = this->__equivalences_.__begin_;
  v41 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v42 = this->__equivalences_.__end_ - v40;
  if (v42)
  {
    v43 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v44 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v43 <= 1)
    {
      v45 = 1;
    }

    else
    {
      v45 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 3);
    }

    v46 = 1;
    v47 = 1;
    while (1)
    {
      v48 = HIBYTE(v40->__r_.__value_.__r.__words[2]);
      v49 = v48;
      if ((v48 & 0x80u) != 0)
      {
        v48 = v40->__r_.__value_.__l.__size_;
      }

      if (v44 == v48)
      {
        v50 = v49 >= 0 ? v40 : v40->__r_.__value_.__r.__words[0];
        if (!memcmp(p_s, v50, v44))
        {
          break;
        }
      }

      v47 = v46++ < v43;
      ++v40;
      if (!--v45)
      {
        goto LABEL_142;
      }
    }

    v22 = 1;
    v21 = 5;
    if (v41 < 0)
    {
LABEL_143:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v47 = 0;
LABEL_142:
    v21 = 0;
    v22 = 0;
    if (v41 < 0)
    {
      goto LABEL_143;
    }
  }

  if (!v47)
  {
LABEL_147:
    if (__src < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v69 = tab[__src];
      if (((v69 & mask) != 0 || __src == 95 && (mask & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(__src)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_165;
      }

      neg_mask = this->__neg_mask_;
      if ((neg_mask & v69) != 0 || __src == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_164:
        negate = v22;
LABEL_166:
        v10 = 2;
        goto LABEL_64;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[SHIBYTE(__src)] & neg_mask) == 0)
      {
        negate = 1;
        if (SHIBYTE(__src) != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_166;
        }
      }

      goto LABEL_164;
    }

LABEL_165:
    negate = 1;
    goto LABEL_166;
  }

LABEL_145:
  v10 = 2;
  negate = v22;
  if (v21)
  {
    goto LABEL_64;
  }

LABEL_40:
  v24 = *a2->__current_;
  v75.__r_.__value_.__s.__data_[0] = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v24) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v24);
    v75.__r_.__value_.__s.__data_[0] = v24;
  }

  v25 = this->__chars_.__begin_;
  v26 = this->__chars_.__end_ - v25;
  if (v26)
  {
    if (v26 <= 1)
    {
      v26 = 1;
    }

    do
    {
      v27 = *v25++;
      if (v27 == v24)
      {
        goto LABEL_63;
      }
    }

    while (--v26);
  }

  v28 = this->__neg_mask_;
  if (v28 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v24 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v24] & v28) == 0)
    {
      v30 = (v28 >> 7) & 1;
      v29 = v24 == 95 ? v30 : 0;
    }

    else
    {
      v29 = 1;
    }

    end = this->__neg_chars_.__end_;
    v32 = memchr(this->__neg_chars_.__begin_, v24, end - this->__neg_chars_.__begin_);
    v33 = !v32 || v32 == end;
    v34 = !v33;
    if ((v29 & 1) == 0 && !v34)
    {
LABEL_63:
      negate = 1;
      goto LABEL_64;
    }
  }

  v37 = this->__ranges_.__begin_;
  v38 = this->__ranges_.__end_;
  if (v37 == v38)
  {
    goto LABEL_101;
  }

  memset(&__s, 170, sizeof(__s));
  if (this->__collate_)
  {
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &v75, v75.__r_.__value_.__r.__words + 1);
    v37 = this->__ranges_.__begin_;
    v38 = this->__ranges_.__end_;
  }

  else
  {
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v24;
  }

  if (v38 == v37)
  {
LABEL_97:
    v53 = 0;
  }

  else
  {
    v51 = 0;
    v52 = 3;
    while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v37->first.__r_.__value_.__r.__words[v52 - 3], &__s.__r_.__value_.__l.__data_) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s, (&this->__ranges_.__begin_->first.__r_.__value_.__l.__data_ + v52 * 8)) >= 1)
    {
      ++v51;
      v37 = this->__ranges_.__begin_;
      v52 += 6;
      if (v51 >= 0xAAAAAAAAAAAAAAABLL * ((this->__ranges_.__end_ - v37) >> 4))
      {
        goto LABEL_97;
      }
    }

    v53 = 1;
    negate = 1;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if ((v53 & 1) == 0)
  {
LABEL_101:
    if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
    {
LABEL_136:
      v65 = this->__mask_;
      if ((v75.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v75.__r_.__value_.__s.__data_[0]] & v65) != 0)
      {
        goto LABEL_63;
      }

      v66 = (v65 >> 7) & 1;
      if (v75.__r_.__value_.__s.__data_[0] != 95)
      {
        LOBYTE(v66) = 0;
      }

      negate |= v66;
      goto LABEL_64;
    }

    memset(&__s, 170, sizeof(__s));
    v54 = &__s;
    std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &v75, v75.__r_.__value_.__r.__words + 1);
    v55 = this->__equivalences_.__begin_;
    v56 = this->__equivalences_.__end_ - v55;
    if (v56)
    {
      v71 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      v72 = v10;
      v57 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v58 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v54 = __s.__r_.__value_.__r.__words[0];
      }

      if (v57 <= 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
      }

      v60 = 1;
      v61 = 1;
      while (1)
      {
        v62 = HIBYTE(v55->__r_.__value_.__r.__words[2]);
        v63 = v62;
        if ((v62 & 0x80u) != 0)
        {
          v62 = v55->__r_.__value_.__l.__size_;
        }

        if (v58 == v62)
        {
          v64 = v63 >= 0 ? v55 : v55->__r_.__value_.__r.__words[0];
          if (!memcmp(v54, v64, v58))
          {
            break;
          }
        }

        v61 = v60++ < v57;
        ++v55;
        if (!--v59)
        {
          goto LABEL_133;
        }
      }

      negate = 1;
LABEL_133:
      v10 = v72;
      if ((v71 & 0x80) == 0)
      {
LABEL_135:
        if (v61)
        {
          goto LABEL_64;
        }

        goto LABEL_136;
      }
    }

    else
    {
      v61 = 0;
      if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_135;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_135;
  }

LABEL_64:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v36 = -993;
  }

  else
  {
    a2->__current_ += v10;
    first = this->__first_;
    v36 = -995;
  }

  a2->__do_ = v36;
  a2->__node_ = first;
}

void sub_1A9121368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
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
        std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(uint64_t a1)
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

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v7 = a1 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void std::regex_traits<char>::transform<char *>(int a1, uint64_t a2, void *__src, uint64_t a4)
{
  memset(__p, 170, sizeof(__p));
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v5 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, &v5[v6]);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A9121660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::__init_with_size[abi:ne200100]<char *,char *>(void *__dst, void *__src, uint64_t a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = __dst;
  if (a4 > 0x16)
  {
    if ((a4 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (a4 | 7) + 1;
    }

    __dst = operator new(v8);
    v7[1] = a4;
    v7[2] = v8 | 0x8000000000000000;
    *v7 = __dst;
    v7 = __dst;
  }

  else
  {
    *(__dst + 23) = a4;
  }

  v9 = a3 - __src;
  if (v9)
  {
    __dst = memmove(v7, __src, v9);
  }

  *(v7 + v9) = 0;
  return __dst;
}

void std::regex_traits<char>::__transform_primary<char *>(void *a1, uint64_t a2, void *__src, uint64_t a4)
{
  memset(__p, 170, sizeof(__p));
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  memset(a1, 170, 24);
  v6 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, &v6[v7]);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = a1[1];
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      a1[1] = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A9121830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, char a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = &v5[-*a1];
    v9 = v8 + 1;
    if ((v8 + 1) < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    v12[v8] = a2;
    v6 = &v12[v8 + 1];
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = v6;
    *(a1 + 16) = &v12[v11];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1AC5808D0](exception, 5);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *__src, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - __src - 2;
  if (a3 - __src < 2)
  {
    goto LABEL_14;
  }

  v6 = __src;
  for (i = __src; ; v6 = i)
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

  std::regex_traits<char>::__lookup_collatename<char const*>(&v12, a1, __src, v6);
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
      return a2 + 1;
    }

    if (v6 == 68)
    {
      v7 = *(a5 + 164) | 0x400;
LABEL_22:
      *(a5 + 164) = v7;
      return a2 + 1;
    }

    goto LABEL_25;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_22;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5);
    return a2 + 1;
  }

LABEL_25:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, a4);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_78:
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

          v9 = 12;
          goto LABEL_73;
        }

        v5 = 12;
        goto LABEL_57;
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

          v9 = 10;
          goto LABEL_73;
        }

        v5 = 10;
        goto LABEL_57;
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

            v9 = 13;
            goto LABEL_73;
          }

          v5 = 13;
          goto LABEL_57;
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

            v9 = 9;
            goto LABEL_73;
          }

          v5 = 9;
          goto LABEL_57;
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

            v9 = 11;
            goto LABEL_73;
          }

          v5 = 11;
          goto LABEL_57;
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

    goto LABEL_57;
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

        v9 = 7;
        goto LABEL_73;
      }

      v5 = 7;
LABEL_57:
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

        v9 = 8;
LABEL_73:
        *a4 = v9;
        return a2 + 1;
      }

      v5 = 8;
      goto LABEL_57;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_78;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3 && (*v7 & 0xF8) == 0x30)
  {
    v6 = *v7 + 8 * v6 - 48;
    v7 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v8 = *v7 + 8 * v6 - 48;
      if ((*v7 & 0xF8) == 0x30)
      {
        v7 = a2 + 3;
        v6 = v8;
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

    *a4 = v6;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
  }

  return v7;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](uint64_t a1, void *__src, char *a3)
{
  v3 = a3;
  v4 = __src;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = *(v4 + 23);
        v8 = v7 < 0 ? v4[1] : *(v4 + 23);
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 40))(*(a1 + 24), *(v9 + i));
        v11 = v4;
        if (*(v4 + 23) < 0)
        {
          v11 = *v4;
        }

        *(v11 + i) = v10;
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
        v15 = *(__src + 23);
        v16 = v15 < 0 ? __src[1] : *(__src + 23);
        if (k >= v16)
        {
          break;
        }

        v17 = __src;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *__src;
        }

        v18 = __src;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *__src;
        }

        *(v18 + k) = *(v17 + k);
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

    v30 = *(v4 + 23);
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = v31[1];
    }

    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(&v44, a1 + 16, v4, v4 + v30);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(v42, a1 + 16, v3, &v3[v32]);
    *v46 = v44;
    v47 = v45;
    v45 = 0;
    *__p = *v42;
    v49 = v43;
    v42[0] = 0;
    v42[1] = 0;
    v43 = 0;
    v44 = 0uLL;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((a1 + 88), v46);
    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46[0]);
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42[0]);
    }

    if (SHIBYTE(v45) < 0)
    {
      v34 = v44;
LABEL_76:
      operator delete(v34);
    }
  }

  else
  {
    v12 = *(__src + 23);
    if (v12 < 0)
    {
      v13 = __src[1];
    }

    else
    {
      v13 = *(__src + 23);
    }

    if (v13 != 1)
    {
      goto LABEL_78;
    }

    v35 = a3[23];
    if (v35 < 0)
    {
      v35 = *(a3 + 1);
    }

    if (v35 != 1)
    {
LABEL_78:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
    }

    if (*(a1 + 169) == 1)
    {
      v36 = __src;
      if ((v12 & 0x80000000) != 0)
      {
        v36 = *__src;
      }

      v37 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v36);
      v38 = v4;
      if (*(v4 + 23) < 0)
      {
        v38 = *v4;
      }

      *v38 = v37;
      v39 = v3;
      if (v3[23] < 0)
      {
        v39 = *v3;
      }

      v40 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v39);
      v41 = v3;
      if (v3[23] < 0)
      {
        v41 = *v3;
      }

      *v41 = v40;
    }

    *v46 = *v4;
    v47 = v4[2];
    v4[1] = 0;
    v4[2] = 0;
    *v4 = 0;
    *__p = *v3;
    v49 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((a1 + 88), v46);
    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v47) < 0)
    {
      v34 = v46[0];
      goto LABEL_76;
    }
  }
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (*(a1 + 169) == 1)
  {
    v4 = (*(**(a1 + 24) + 40))(*(a1 + 24), a2);
    LOWORD(a3) = (*(**(a1 + 24) + 40))(*(a1 + 24), a3);
  }

  std::vector<std::pair<char,char>>::push_back[abi:ne200100](a1 + 112, v4 | (a3 << 8));
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1AC5808D0](exception, 1);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::regex_traits<char>::__lookup_collatename<char const*>(uint64_t a1, uint64_t a2, void *__src, uint64_t a4)
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

void sub_1A9122530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(void *a1, uint64_t a2, void *__src, uint64_t a4)
{
  memset(__p, 170, sizeof(__p));
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  memset(a1, 170, 24);
  v6 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, &v6[v7]);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = a1[1];
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      a1[1] = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A9122678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1AC5808D0](exception, 2);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 169) == 1)
  {
    v2 = (*(**(a1 + 24) + 40))(*(a1 + 24), 95);
    v3 = a1 + 64;
    goto LABEL_4;
  }

  v4 = *(a1 + 170);
  v3 = a1 + 64;
  v2 = 95;
  if (v4 == 1)
  {
LABEL_4:

    goto LABEL_6;
  }

LABEL_6:
  std::vector<char>::push_back[abi:ne200100](v3, v2);
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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

    if (v12)
    {
      if (v12 > 0x555555555555555)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = operator new(48 * v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[48 * v9];
    *v14 = *a2;
    v15 = &v13[48 * v12];
    *(v14 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 24);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v14 + 5) = *(a2 + 5);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v8 = v14 + 48;
    v17 = *a1;
    v18 = a1[1] - *a1;
    *(v14 + 24) = v16;
    v19 = &v14[-v18];
    memcpy(&v14[-v18], v17, v18);
    *a1 = v19;
    a1[1] = v8;
    a1[2] = v15;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v6 = *a2;
    *(v4 + 2) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 5) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = v4 + 48;
  }

  a1[1] = v8;
}

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(int a1, uint64_t a2, void *__src, uint64_t a4)
{
  memset(__p, 170, sizeof(__p));
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v5 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, &v5[v6]);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A91229A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  MEMORY[0x1AC5808D0](exception, 9);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::vector<std::pair<char,char>>::push_back[abi:ne200100](uint64_t a1, __int16 a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      if (v12 < 0)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = operator new(2 * v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[2 * v9];
    *v14 = a2;
    v6 = v14 + 2;
    memcpy(v13, v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = &v13[2 * v12];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
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
  v8 = __mexp_end;
  v9 = __mexp_begin;
  v14 = operator new(0x10uLL);
  end = this->__end_;
  first = end->__first_;
  v14[1] = first;
  end->__first_ = 0;
  v17 = operator new(0x38uLL);
  loop_count = this->__loop_count_;
  *(v17 + 1) = __s->__first_;
  *(v17 + 2) = v14;
  *v17 = &unk_1F1CB48F8;
  *(v17 + 3) = __min;
  *(v17 + 4) = __max;
  *(v17 + 10) = loop_count;
  *(v17 + 11) = v9;
  *(v17 + 12) = v8;
  *(v17 + 52) = __greedy;
  __s->__first_ = 0;
  v19 = operator new(0x10uLL);
  v19->__vftable = &unk_1F1CB5240;
  v19[1].__vftable = v17;
  this->__end_->__first_ = v19;
  this->__end_ = *(v17 + 2);
  __s->__first_ = v17;
  this->__loop_count_ = loop_count + 1;
}

void sub_1A9122E40(_Unwind_Exception *a1)
{
  v3 = std::__owns_two_states<char>::~__owns_two_states(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result != a2)
      {
        do
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
          ++result;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1AC5808D0](exception, 8);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1AC5808D0](exception, 7);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = std::__owns_two_states<char>::~__owns_two_states(a1);

  operator delete(v1);
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

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = std::__owns_two_states<char>::~__owns_two_states(a1);

  operator delete(v1);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_1F1CB5270;
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

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = std::__owns_two_states<char>::~__owns_two_states(a1);

  operator delete(v1);
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
  MEMORY[0x1AC5808D0](exception, 15);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v9 = a2 + 1;
  v8 = *a2;
  if (a2 + 1 != a3 || v8 != 36)
  {
    if ((v8 - 46) > 0x2E || ((1 << (v8 - 46)) & 0x600000000001) == 0)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
    }

    else if (v9 == a3 || v8 != 92)
    {
      if (v8 != 46)
      {
        goto LABEL_4;
      }

      v18 = operator new(0x10uLL);
      first = end->__first_;
      v18->__vftable = &unk_1F1CB5390;
      v18[1].__vftable = first;
      end->__first_ = v18;
      a1->__end_ = a1->__end_->__first_;
    }

    else
    {
      v17 = *v9;
      if ((v17 - 36) > 0x3A || ((1 << (v17 - 36)) & 0x580000000000441) == 0)
      {
        goto LABEL_4;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
      v9 = v3 + 2;
    }

LABEL_32:
    if (v9 == a3)
    {
      return v9;
    }

    v22 = a1->__marked_count_ + 1;
    v23 = *v9;
    if (v23 == 42)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
      return v9 + 1;
    }

    if (v9 + 1 == a3 || v23 != 92 || v9[1] != 123)
    {
      return v9;
    }

    LODWORD(__max) = 0;
    v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v9 + 2, a3, &__max);
    if (v24 == v9 + 2)
    {
      goto LABEL_58;
    }

    if (v24 != a3)
    {
      v25 = v24 + 1;
      v26 = *v24;
      if (v26 == 44)
      {
        v34 = -1;
        v27 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v24 + 1, a3, &v34);
        if (v27 != a3)
        {
          v28 = v27;
          if (v27 + 1 != a3 && *v27 == 92)
          {
            v29 = v27[1];
            v30 = v29 == 125;
            if (v29 == 125)
            {
              v31 = v34;
              if (v34 == -1)
              {
                v32 = a1;
                v31 = -1;
                goto LABEL_55;
              }

              if (v34 >= __max)
              {
                v32 = a1;
LABEL_55:
                std::basic_regex<char,std::regex_traits<char>>::__push_loop(v32, __max, v31, end, marked_count + 1, v22, 1);
                return &v28[2 * v30];
              }

LABEL_58:
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
            }
          }
        }
      }

      else if (v25 != a3 && v26 == 92 && *v25 == 125)
      {
        v3 = v24 + 2;
        std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, __max, __max, end, marked_count + 1, v22, 1);
        return v3;
      }
    }

    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
  }

LABEL_4:
  v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
  v9 = v10;
  if (v10 == v3 && v10 != a3 && v10 + 1 != a3 && *v10 == 92)
  {
    v11 = v10[1];
    if (v11 == 40)
    {
      v12 = v10 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
      v13 = a1->__marked_count_;
      do
      {
        v14 = v12;
        v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(a1, v12, a3);
        v12 = v15;
      }

      while (v15 != v14);
      if (v14 == a3 || v15 + 1 == a3 || *v15 != 92 || v15[1] != 41)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      v9 = v15 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v13);
    }

    else
    {
      v20 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v11);
      v21 = 2;
      if (!v20)
      {
        v21 = 0;
      }

      v9 += v21;
    }
  }

  if (v9 != v3)
  {
    goto LABEL_32;
  }

  return v3;
}

void (__cdecl ***std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_any<char>::~__match_any(void (__cdecl ***__p)(std::__owns_one_state<char> *__hidden this))
{
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  operator delete(__p);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (a2 == a3)
  {
    goto LABEL_24;
  }

  v8 = *a2;
  v9 = (v8 - 36);
  if (v9 > 0x3A)
  {
    goto LABEL_14;
  }

  if (((1 << (v8 - 36)) & 0x5800000080004D1) == 0)
  {
    if (v9 == 5)
    {
      if (this->__open_count_)
      {
        goto LABEL_24;
      }

      LOBYTE(v8) = 41;
      goto LABEL_15;
    }

LABEL_14:
    if ((v8 - 123) < 2)
    {
      goto LABEL_4;
    }

LABEL_15:
    v13 = 1;
    goto LABEL_16;
  }

LABEL_4:
  v10 = a2 + 1;
  v11 = a2;
  if (a2 + 1 == a3 || v8 != 92)
  {
LABEL_22:
    if (v8 == 46)
    {
      v16 = operator new(0x10uLL);
      v17 = this->__end_;
      first = v17->__first_;
      v16->__vftable = &unk_1F1CB5390;
      v16[1].__vftable = first;
      v17->__first_ = v16;
      this->__end_ = this->__end_->__first_;
      ++v11;
      goto LABEL_25;
    }

LABEL_24:
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
    goto LABEL_25;
  }

  v12 = *v10;
  LOBYTE(v8) = *v10;
  v13 = 2;
  if ((v12 - 36) <= 0x3A && ((1 << (v12 - 36)) & 0x5800000080004F1) != 0 || (v12 - 123) < 3)
  {
LABEL_16:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v8);
    v11 = &a2[v13];
    goto LABEL_37;
  }

  if ((this->__flags_ & 0x1F0) == 0x40)
  {
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(this, a2 + 1, a3, 0);
  }

  else
  {
    v14 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(this, v8);
    v15 = 2;
    if (!v14)
    {
      v15 = 0;
    }

    v11 = &a2[v15];
  }

  if (v11 == a2)
  {
    v8 = *v11;
    goto LABEL_22;
  }

LABEL_25:
  if (v11 == a2 && v11 != a3)
  {
    v19 = *v11;
    switch(v19)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
        v20 = this->__marked_count_;
        ++this->__open_count_;
        v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(this, v11 + 1, a3);
        if (v21 == a3 || (v11 = v21, *v21 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v20);
        --this->__open_count_;
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
        break;
      default:
        goto LABEL_36;
    }

    ++v11;
  }

LABEL_36:
  if (v11 == a2)
  {
    return v11;
  }

LABEL_37:
  v22 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(this, v11, a3, end, marked_count + 1, v22);
}

uint64_t std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(std::sub_match<const char *> *a1, std::sub_match<const char *> *a2, uint64_t a3, uint64_t a4)
{
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAA00;
  v15 = v7;
  v12 = 0;
  v14 = 0uLL;
  LOBYTE(v15) = 0;
  BYTE8(v15) = 0;
  v16 = 0;
  memset(__p, 0, sizeof(__p));
  v8 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a4, a1, a2, __p, 0x1040u);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(a3, a1, a2, __p, 0);
  if (*__p)
  {
    operator delete(*__p);
  }

  if (!v8)
  {
    return 0;
  }

  if (*(a3 + 88) != 1)
  {
    return 1;
  }

  result = 0;
  *(a3 + 8) = *a3;
  return result;
}

void sub_1A9123BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, std::sub_match<const char *> *a2, std::sub_match<const char *> *a3, std::vector<std::csub_match> *this, unsigned int a5)
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
  if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
  {
    if (a2 == a3 || (v9 & 0x40) != 0)
    {
      goto LABEL_18;
    }

    v18 = &a2->first + 1;
    if (v18 != a3)
    {
      do
      {
        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
        v19 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80, 0);
        begin = this->__begin_;
        end = this->__end_;
        if (v19)
        {
          goto LABEL_8;
        }

        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), v11);
      }

      while (++v18 != a3);
    }

    std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
    if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80, 0))
    {
LABEL_18:
      result = 0;
      this->__end_ = this->__begin_;
      return result;
    }
  }

  begin = this->__begin_;
  end = this->__end_;
LABEL_8:
  if (end == begin)
  {
    v14 = v11;
  }

  else
  {
    v14 = begin;
  }

  first = v14->first;
  this[2].__end_ = v14->first;
  LOBYTE(this[2].__end_cap_.__value_) = this[2].__begin_ != first;
  second = v14->second;
  this[3].__begin_ = second;
  LOBYTE(this[3].__end_cap_.__value_) = second != this[3].__end_;
  return 1;
}

void std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(char **a1, uint64_t a2, char *a3, uint64_t *a4, char a5)
{
  v5 = a5;
  v9 = a4[6];
  v10 = a4[1] - *a4;
  v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
  v12 = *a1;
  v13 = a1[1];
  v14 = v13;
  v15 = v13 - *a1;
  v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3);
  v17 = v11 - v16;
  if (v11 <= v16)
  {
    if (v11 < v16)
    {
      v14 = &v12[v10];
      a1[1] = &v12[v10];
    }
  }

  else
  {
    v18 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v18 - v13) >> 3) >= v17)
    {
      v28 = 24 * v11 - 8 * (v15 >> 3);
      do
      {
        *v14 = 0;
        *(v14 + 8) = 0;
        *(v14 + 16) = 0;
        v14 += 24;
        v28 -= 24;
      }

      while (v28);
      a1[1] = &v13[24 * v17];
      v14 = &v13[24 * v17];
    }

    else
    {
      if (v11 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v44 = a4[6];
      v45 = a2;
      v19 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v12) >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= v11)
      {
        v20 = v11;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v22 = operator new(24 * v21);
      v14 = &v22[24 * v17 + v15];
      v23 = 24 * v11 - 8 * (v15 >> 3);
      v24 = &v22[v15];
      do
      {
        *v24 = 0;
        *(v24 + 1) = 0;
        v24[16] = 0;
        v24 += 24;
        v23 -= 24;
      }

      while (v23);
      a2 = v45;
      if (v12 != v13)
      {
        v25 = v12;
        v26 = v22;
        do
        {
          v27 = *v25;
          *(v26 + 2) = *(v25 + 2);
          *v26 = v27;
          v26 += 24;
          v25 += 24;
        }

        while (v25 != v13);
      }

      *a1 = v22;
      a1[1] = v14;
      a1[2] = &v22[24 * v21];
      v5 = a5;
      v9 = v44;
      if (v12)
      {
        operator delete(v12);
        v9 = v44;
        a2 = v45;
        v14 = a1[1];
      }
    }
  }

  v29 = *a1;
  if (v14 == *a1)
  {
    v32 = a2 - v9;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = a2 - v9;
    v34 = *a4;
    v33 = a4[1];
    do
    {
      v35 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v34) >> 3);
      v36 = (v34 + v30);
      if (v35 <= v31)
      {
        v37 = a4 + 3;
      }

      else
      {
        v37 = v36;
      }

      *&v29[v30] = v32 + *v37;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v31)
      {
        v38 = a4 + 3;
      }

      else
      {
        v38 = (*a4 + v30);
      }

      *&(*a1)[v30 + 8] = v32 + v38[1];
      v34 = *a4;
      v33 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v33 - *a4) >> 3) <= v31)
      {
        v39 = a4 + 3;
      }

      else
      {
        v39 = (*a4 + v30);
      }

      v40 = *(v39 + 16);
      v29 = *a1;
      v41 = a1[1];
      (*a1)[v30 + 16] = v40;
      ++v31;
      v30 += 24;
    }

    while (v31 < 0xAAAAAAAAAAAAAAABLL * ((v41 - v29) >> 3));
  }

  a1[3] = a3;
  a1[4] = a3;
  *(a1 + 40) = 0;
  v42 = (v32 + a4[6]);
  a1[6] = v42;
  a1[7] = (v32 + a4[7]);
  *(a1 + 64) = *(a4 + 64);
  a1[9] = (v32 + a4[9]);
  a1[10] = (v32 + a4[10]);
  *(a1 + 88) = *(a4 + 88);
  if ((v5 & 1) == 0)
  {
    a1[13] = v42;
  }

  *(a1 + 96) = *(a4 + 96);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, uint64_t a5, char a6)
{
  v7 = a5;
  v10 = a2;
  if ((*(a1 + 24) & 0x1F0) == 0)
  {

    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  if (!*(a1 + 28))
  {
    memset(v154, 0, 48);
    v71 = *(a1 + 40);
    if (!v71)
    {
LABEL_217:
      std::deque<std::__state<char>>::~deque[abi:ne200100](v154);
      return v71;
    }

    *v156 = 0;
    memset(&v156[8], 0, 85);
    std::deque<std::__state<char>>::push_back(v154, v156);
    if (*&v156[56])
    {
      operator delete(*&v156[56]);
    }

    if (*&v156[32])
    {
      operator delete(*&v156[32]);
    }

    v72 = v154[0].i64[1];
    v73 = v154[2].i64[1] + v154[2].i64[0] - 1;
    v74 = 0xC30C30C30C30C30DLL;
    v75 = v73 / 0x2A;
    v76 = *(v154[0].i64[1] + 8 * (v73 / 0x2A));
    v77 = 3 * (v73 % 0x2A);
    v78 = v76 + 32 * v77;
    *v78 = 0;
    *(v78 + 8) = v10;
    *(*(v72 + 8 * v75) + 32 * v77 + 16) = v10;
    *(*(v72 + 8 * v75) + 32 * v77 + 24) = a3;
    std::vector<std::pair<unsigned long,char const*>>::resize((*(v72 + 8 * v75) + 32 * v77 + 56), *(a1 + 32));
    v147 = 0;
    v148 = 0;
    v79 = 0;
    v80 = v154[2].i64[1];
    v81 = v154[0].i64[1];
    v82 = v154[2].i64[1] + v154[2].i64[0] - 1;
    v83 = v82 / 0x2A;
    v84 = 3 * (v82 % 0x2A);
    *(*(v154[0].i64[1] + 8 * v83) + 32 * v84 + 80) = v71;
    v151 = a3;
    v153 = (a3 - v10);
    v85 = *(v81 + 8 * v83) + 32 * v84;
    *(v85 + 88) = v7;
    *(v85 + 92) = a6;
    while (1)
    {
      if ((++v79 & 0xFFF) == 0 && (v79 >> 12) >= v153)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
      }

      v87 = v80 + v154[2].i64[0] - 1;
      v88 = (((v87 >> 1) * v74) >> 64) >> 4;
      v89 = *(v154[0].i64[1] + 8 * v88) + 96 * (v87 - 42 * v88);
      v91 = (v89 + 80);
      v90 = *(v89 + 80);
      if (v90)
      {
        (*(*v90 + 16))(v90, v89);
      }

      v92 = *v89;
      if (*v89 <= -995)
      {
        switch(v92)
        {
          case -1000:
            v97 = *(v89 + 16);
            v98 = (v7 & 0x1000) == 0 || v97 == v151;
            v99 = v98;
            v100 = v97 != v10 || (v7 & 0x20) == 0;
            if (!v100 || (v99 & 1) == 0)
            {
              goto LABEL_212;
            }

            v101 = &v97[-*(v89 + 8)];
            v102 = v147;
            if (v147 <= v101)
            {
              v102 = v101;
            }

            if ((v148 & 1) == 0)
            {
              v102 = v101;
            }

            if (v102 == v153)
            {
              v103 = v154[0].i64[1];
              v104 = v154[1].i64[0];
              if (v154[1].i64[0] == v154[0].i64[1])
              {
                v104 = v154[0].i64[1];
              }

              else
              {
                v105 = v10;
                v106 = (((v154[2].i64[0] >> 1) * v74) >> 64) >> 4;
                v107 = (v154[0].i64[1] + 8 * v106);
                v108 = (*v107 + 96 * (v154[2].i64[0] - 42 * v106));
                v109 = v74;
                v110 = ((((v154[2].i64[1] + v154[2].i64[0]) >> 1) * v74) >> 64) >> 4;
                v111 = *(v154[0].i64[1] + 8 * v110) + 96 * (v154[2].i64[1] + v154[2].i64[0] - 42 * v110);
                if (v108 != v111)
                {
                  do
                  {
                    std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v108);
                    v108 += 12;
                    if ((v108 - *v107) == 4032)
                    {
                      v112 = v107[1];
                      ++v107;
                      v108 = v112;
                    }
                  }

                  while (v108 != v111);
                  v103 = v154[0].i64[1];
                  v104 = v154[1].i64[0];
                }

                v10 = v105;
                v74 = v109;
              }

              v154[2].i64[1] = 0;
              v116 = (v104 - v103) >> 3;
              if (v116 >= 3)
              {
                do
                {
                  operator delete(*v103);
                  v103 = (v154[0].i64[1] + 8);
                  v154[0].i64[1] = v103;
                  v116 = (v154[1].i64[0] - v103) >> 3;
                }

                while (v116 > 2);
              }

              if (v116 == 1)
              {
                v117 = 21;
LABEL_199:
                v154[2].i64[0] = v117;
              }

              else if (v116 == 2)
              {
                v117 = 42;
                goto LABEL_199;
              }

              v148 = 1;
              v147 = v153;
              break;
            }

            v147 = v102;
            std::deque<std::__state<char>>::pop_back(v154);
            v148 = 1;
            break;
          case -999:
            break;
          case -995:
            v93 = v154[2].u64[0];
            v94 = v154[0].i64[1];
            v95 = v154[1].i64[0];
            if (!v154[2].i64[0])
            {
              v96 = 42 * ((v154[1].i64[0] - v154[0].i64[1]) >> 3) - 1;
              if (v154[1].i64[0] == v154[0].i64[1])
              {
                v96 = 0;
              }

              if ((v96 - v154[2].i64[1]) < 0x2A)
              {
                if (v154[1].i64[0] - v154[0].i64[1] >= (v154[1].i64[1] - v154[0].i64[0]))
                {
                  if (v154[1].i64[1] == v154[0].i64[0])
                  {
                    v118 = 1;
                  }

                  else
                  {
                    v118 = (v154[1].i64[1] - v154[0].i64[0]) >> 2;
                  }

                  *&v156[32] = v154;
                  *v156 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v118);
                  *&v156[8] = *v156;
                  *&v156[16] = *v156;
                  *&v156[24] = *v156 + 8 * v119;
                  v150 = v10;
                  v157 = operator new(0xFC0uLL);
                  std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(v156, &v157);
                  v120 = v154[0].i64[1];
                  for (i = *&v156[16]; v120 != v154[1].i64[0]; *&v156[16] += 8)
                  {
                    if (i == *&v156[24])
                    {
                      v122 = v7;
                      v124 = *&v156[8];
                      v123 = *v156;
                      if (*&v156[8] <= *v156)
                      {
                        if (i == *v156)
                        {
                          v128 = 1;
                        }

                        else
                        {
                          v128 = &i[-*v156] >> 2;
                        }

                        v129 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v128);
                        v131 = &v129[8 * (v128 >> 2)];
                        v132 = i - v124;
                        v98 = i == v124;
                        i = v131;
                        v7 = v122;
                        if (!v98)
                        {
                          i = &v131[v132];
                          v133 = v131;
                          do
                          {
                            v134 = *v124;
                            v124 += 8;
                            *v133 = v134;
                            v133 += 8;
                            v132 -= 8;
                          }

                          while (v132);
                        }

                        *v156 = v129;
                        *&v156[8] = v131;
                        *&v156[16] = i;
                        *&v156[24] = &v129[8 * v130];
                        if (v123)
                        {
                          operator delete(v123);
                        }
                      }

                      else
                      {
                        v125 = (((*&v156[8] - *v156) >> 3) + 1 + ((((*&v156[8] - *v156) >> 3) + 1) >> 63)) >> 1;
                        v126 = *&v156[8] - 8 * v125;
                        v127 = &i[-*&v156[8]];
                        if (i != *&v156[8])
                        {
                          memmove((*&v156[8] - 8 * v125), *&v156[8], &i[-*&v156[8]]);
                        }

                        i = &v127[v126];
                        *&v156[8] = v126;
                        *&v156[16] = &v127[v126];
                        v7 = v122;
                      }
                    }

                    v135 = *v120++;
                    *i = v135;
                    i = (*&v156[16] + 8);
                  }

                  v136 = v154[0].i64[0];
                  v154[0] = *v156;
                  v154[1].i64[0] = i;
                  v154[1].i64[1] = *&v156[24];
                  v137 = 21;
                  if (&i[-*&v156[8]] != 8)
                  {
                    v137 = v154[2].i64[0] + 42;
                  }

                  v154[2].i64[0] = v137;
                  v74 = 0xC30C30C30C30C30DLL;
                  if (v136)
                  {
                    operator delete(v136);
                  }

                  v10 = v150;
                }

                else
                {
                  if (v154[0].i64[1] == v154[0].i64[0])
                  {
                    *v156 = operator new(0xFC0uLL);
                    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(v154, v156);
                    *v156 = *(v154[1].i64[0] - 8);
                    v154[1].i64[0] -= 8;
                  }

                  else
                  {
                    *v156 = operator new(0xFC0uLL);
                  }

                  std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(v154, v156);
                  v138 = 21;
                  if (v154[1].i64[0] - v154[0].i64[1] != 8)
                  {
                    v138 = v154[2].i64[0] + 42;
                  }

                  v154[2].i64[0] = v138;
                }
              }

              else
              {
                v154[2].i64[0] = 42;
                *v156 = *(v154[1].i64[0] - 8);
                v154[1].i64[0] -= 8;
                std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(v154, v156);
              }

              v93 = v154[2].u64[0];
              v94 = v154[0].i64[1];
              v95 = v154[1].i64[0];
            }

            v139 = (((v93 >> 1) * v74) >> 64) >> 4;
            v140 = (v94 + 8 * v139);
            v141 = *v140 + 96 * (v93 - 42 * v139);
            if (v95 == v94)
            {
              v142 = 0;
            }

            else
            {
              v142 = v141;
            }

            if (v142 == *v140)
            {
              v142 = *(v140 - 1) + 4032;
            }

            v143 = *(v89 + 16);
            *(v142 - 96) = *v89;
            *(v142 - 80) = v143;
            *(v142 - 56) = 0;
            *(v142 - 48) = 0;
            *(v142 - 64) = 0;
            *(v142 - 64) = *(v89 + 32);
            *(v142 - 48) = *(v89 + 48);
            *(v89 + 32) = 0;
            *(v89 + 40) = 0;
            *(v89 + 48) = 0;
            *(v142 - 40) = 0;
            *(v142 - 32) = 0;
            *(v142 - 24) = 0;
            *(v142 - 40) = *(v89 + 56);
            *(v142 - 24) = *(v89 + 72);
            *(v89 + 56) = 0;
            *(v89 + 64) = 0;
            *(v89 + 72) = 0;
            v144 = *v91;
            *(v142 - 11) = *(v89 + 85);
            *(v142 - 16) = v144;
            v154[2] = vaddq_s64(v154[2], xmmword_1A91627B0);
            goto LABEL_212;
          default:
            goto LABEL_220;
        }
      }

      else
      {
        if (v92 > -993)
        {
          if (v92 == -992)
          {
            *&v113 = 0xAAAAAAAAAAAAAAAALL;
            *(&v113 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&v156[64] = v113;
            *&v156[80] = v113;
            *&v156[32] = v113;
            *&v156[48] = v113;
            *v156 = v113;
            *&v156[16] = v113;
            v114 = *(v89 + 16);
            *v156 = *v89;
            *&v156[16] = v114;
            memset(&v156[32], 0, 24);
            std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v156[32], *(v89 + 32), *(v89 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v89 + 40) - *(v89 + 32)) >> 3));
            memset(&v156[56], 0, 24);
            std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(&v156[56], *(v89 + 56), *(v89 + 64), (*(v89 + 64) - *(v89 + 56)) >> 4);
            v115 = *v91;
            *&v156[85] = *(v89 + 85);
            *&v156[80] = v115;
            (*(**(v89 + 80) + 24))(*(v89 + 80), 1, v89);
            (*(**&v156[80] + 24))(*&v156[80], 0, v156);
            std::deque<std::__state<char>>::push_back(v154, v156);
            if (*&v156[56])
            {
              *&v156[64] = *&v156[56];
              operator delete(*&v156[56]);
            }

            if (*&v156[32])
            {
              *&v156[40] = *&v156[32];
              operator delete(*&v156[32]);
            }
          }

          else if (v92 != -991)
          {
LABEL_220:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
          }

          goto LABEL_213;
        }

        if (v92 != -994)
        {
          if (v92 != -993)
          {
            goto LABEL_220;
          }

LABEL_212:
          std::deque<std::__state<char>>::pop_back(v154);
        }
      }

LABEL_213:
      v80 = v154[2].i64[1];
      if (!v154[2].i64[1])
      {
        if (v148)
        {
          v145 = *a4;
          *v145 = v10;
          *(v145 + 8) = &v147[v10];
          v71 = 1;
          *(v145 + 16) = 1;
        }

        else
        {
          v71 = 0;
        }

        goto LABEL_217;
      }
    }
  }

  v157 = 0;
  v158 = 0;
  v159 = 0;
  *&v156[92] = -1431655766;
  *v156 = 0xAAAAAAAA00000000;
  memset(&v156[8], 0, 84);
  v12 = *(a1 + 40);
  if (!v12)
  {
LABEL_102:
    v71 = 0;
    goto LABEL_103;
  }

  __x.second = a3;
  *&__x.matched = 0xAAAAAAAAAAAAAA00;
  __x.first = a3;
  v154[0].i32[0] = 0;
  *(v154 + 8) = 0uLL;
  *(&v154[1] + 8) = 0uLL;
  *(&v154[2] + 8) = 0uLL;
  *(&v154[3] + 8) = 0uLL;
  *(&v154[4] + 8) = 0uLL;
  *(v154[5].i64 + 5) = 0;
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v157, v154);
  if (v154[3].i64[1])
  {
    operator delete(v154[3].i64[1]);
  }

  if (v154[2].i64[0])
  {
    operator delete(v154[2].i64[0]);
  }

  v146 = a4;
  v13 = v158;
  *(v158 - 24) = 0;
  *(v13 - 11) = v10;
  *(v13 - 10) = v10;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v158 - 40), *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v149 = v10;
  v17 = (a3 - v10);
  v18 = v158;
  *(v158 - 2) = v12;
  v19 = v7;
  *(v18 - 2) = v7;
  *(v18 - 4) = a6;
  do
  {
    v20 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v17;
    if (!v20)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v22 = (v18 - 16);
    v21 = *(v18 - 2);
    v23 = v18 - 96;
    if (v21)
    {
      (*(*v21 + 16))(v21, v18 - 96);
    }

    v24 = *v23;
    if (*v23 > -994)
    {
      switch(v24)
      {
        case -993:
          goto LABEL_43;
        case -992:
          v40.i64[0] = 0xAAAAAAAAAAAAAAAALL;
          v40.i64[1] = 0xAAAAAAAAAAAAAAAALL;
          v154[4] = v40;
          v154[5] = v40;
          v154[2] = v40;
          v154[3] = v40;
          v154[0] = v40;
          v154[1] = v40;
          v41 = *(v18 - 5);
          v154[0] = *v23;
          v154[1] = v41;
          memset(&v154[2], 0, 24);
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(v154[2].i8, *(v18 - 8), *(v18 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v18 - 7) - *(v18 - 8)) >> 3));
          memset(&v154[3].u64[1], 0, 24);
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(&v154[3].i8[8], *(v18 - 5), *(v18 - 4), (*(v18 - 4) - *(v18 - 5)) >> 4);
          v42 = *v22;
          *(v154[5].i64 + 5) = *(v18 - 11);
          v154[5].i64[0] = v42;
          (*(**v22 + 24))(*v22, 1, v18 - 96);
          (*(*v154[5].i64[0] + 24))(v154[5].i64[0], 0, v154);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v157, v154);
          if (v154[3].i64[1])
          {
            v154[4].i64[0] = v154[3].i64[1];
            operator delete(v154[3].i64[1]);
          }

          if (v154[2].i64[0])
          {
            v154[2].i64[1] = v154[2].i64[0];
            operator delete(v154[2].i64[0]);
          }

          break;
        case -991:
          break;
        default:
LABEL_219:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v24 + 995) < 2)
      {
        goto LABEL_48;
      }

      if (v24 != -1000)
      {
        goto LABEL_219;
      }

      v25 = *(v18 - 10);
      if ((v19 & 0x20) != 0 && v25 == v149 || (v19 & 0x1000) != 0 && v25 != a3)
      {
LABEL_43:
        v39 = v158 - 96;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v158 - 12);
        v158 = v39;
        goto LABEL_48;
      }

      v26 = &v25[-*(v18 - 11)];
      if ((v15 & (v14 >= v26)) == 0)
      {
        v27 = *(v18 - 5);
        *v156 = *v23;
        *&v156[16] = v27;
        if (v156 != v23)
        {
          v29 = *(v18 - 8);
          v28 = *(v18 - 7);
          v30 = v28 - v29;
          v31 = *&v156[48];
          v32 = *&v156[32];
          if (*&v156[48] - *&v156[32] >= (v28 - v29))
          {
            v43 = *&v156[40];
            if (*&v156[40] - *&v156[32] >= v30)
            {
              while (v29 != v28)
              {
                *v32 = *v29;
                v32[16] = *(v29 + 16);
                v29 = (v29 + 24);
                v32 += 24;
              }
            }

            else
            {
              v44 = (v29 + *&v156[40] - *&v156[32]);
              if (*&v156[40] != *&v156[32])
              {
                do
                {
                  *v32 = *v29;
                  v32[16] = *(v29 + 16);
                  v29 = (v29 + 24);
                  v32 += 24;
                }

                while (v29 != v44);
              }

              if (v44 == v28)
              {
                v32 = v43;
              }

              else
              {
                v32 = v43;
                do
                {
                  v45 = *v44;
                  *(v43 + 2) = *(v44 + 2);
                  *v43 = v45;
                  v43 += 24;
                  v44 = (v44 + 24);
                  v32 += 24;
                }

                while (v44 != v28);
              }
            }
          }

          else
          {
            v152 = v26;
            if (*&v156[32])
            {
              *&v156[40] = *&v156[32];
              operator delete(*&v156[32]);
              v31 = 0;
              memset(&v156[32], 0, 24);
            }

            v33 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
            if (v33 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_222;
            }

            v34 = 0xAAAAAAAAAAAAAAABLL * (v31 >> 3);
            if (2 * v34 > v33)
            {
              v33 = 2 * v34;
            }

            v35 = v34 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v33;
            if (v35 > 0xAAAAAAAAAAAAAAALL)
            {
LABEL_222:
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v32 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(v35);
            *&v156[32] = v32;
            *&v156[40] = v32;
            *&v156[48] = &v32[24 * v36];
            if (v29 == v28)
            {
              v26 = v152;
            }

            else
            {
              v37 = v32;
              v26 = v152;
              do
              {
                v38 = *v29;
                *(v37 + 2) = *(v29 + 2);
                *v37 = v38;
                v37 += 24;
                v29 = (v29 + 24);
                v32 += 24;
              }

              while (v29 != v28);
            }
          }

          *&v156[40] = v32;
          v47 = *(v18 - 5);
          v46 = *(v18 - 4);
          v48 = v46 - v47;
          v49 = *&v156[72];
          v50 = *&v156[56];
          if (*&v156[72] - *&v156[56] >= (v46 - v47))
          {
            v57 = *&v156[64];
            if (*&v156[64] - *&v156[56] >= v48)
            {
              while (v47 != v46)
              {
                *v50 = *v47;
                v50[1] = *(v47 + 1);
                v47 += 16;
                v50 += 2;
              }
            }

            else
            {
              v58 = &v47[*&v156[64] - *&v156[56]];
              if (*&v156[64] != *&v156[56])
              {
                do
                {
                  *v50 = *v47;
                  v50[1] = *(v47 + 1);
                  v47 += 16;
                  v50 += 2;
                }

                while (v47 != v58);
              }

              if (v58 == v46)
              {
                v50 = v57;
              }

              else
              {
                v50 = v57;
                do
                {
                  v59 = *v58;
                  v58 += 16;
                  *v57++ = v59;
                  v50 += 2;
                }

                while (v58 != v46);
              }
            }
          }

          else
          {
            v51 = v26;
            if (*&v156[56])
            {
              *&v156[64] = *&v156[56];
              operator delete(*&v156[56]);
              v49 = 0;
              memset(&v156[56], 0, 24);
            }

            v52 = v48 >> 4;
            if ((v48 >> 4) >> 60)
            {
              goto LABEL_221;
            }

            if (v49 >> 3 > v52)
            {
              v52 = v49 >> 3;
            }

            v53 = v49 >= 0x7FFFFFFFFFFFFFF0 ? 0xFFFFFFFFFFFFFFFLL : v52;
            if (v53 >> 60)
            {
LABEL_221:
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v50 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(v53);
            *&v156[56] = v50;
            *&v156[64] = v50;
            *&v156[72] = &v50[2 * v54];
            if (v47 == v46)
            {
              v26 = v51;
            }

            else
            {
              v55 = v50;
              v26 = v51;
              do
              {
                v56 = *v47;
                v47 += 16;
                *v55++ = v56;
                v50 += 2;
              }

              while (v47 != v46);
            }
          }

          *&v156[64] = v50;
        }

        v60 = *v22;
        *&v156[85] = *(v22 + 5);
        *&v156[80] = v60;
        v14 = v26;
      }

      v61 = v158;
      if (v14 == v17)
      {
        v62 = v157;
        while (v61 != v62)
        {
          v61 -= 96;
          std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v61);
        }

        v158 = v62;
        v15 = 1;
        v14 = v17;
      }

      else
      {
        v63 = v158 - 96;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v158 - 12);
        v158 = v63;
        v15 = 1;
      }
    }

LABEL_48:
    v18 = v158;
  }

  while (v157 != v158);
  if ((v15 & 1) == 0)
  {
    goto LABEL_102;
  }

  v65 = *v146;
  *v65 = v149;
  *(v65 + 8) = &v14[v149];
  *(v65 + 16) = 1;
  if (*&v156[40] != *&v156[32])
  {
    v66 = 0xAAAAAAAAAAAAAAABLL * ((*&v156[40] - *&v156[32]) >> 3);
    v67 = (*&v156[32] + 16);
    v68 = 1;
    do
    {
      v69 = v65 + 24 * v68;
      *v69 = *(v67 - 1);
      v70 = *v67;
      v67 += 24;
      *(v69 + 16) = v70;
      v20 = v66 > v68++;
    }

    while (v20);
  }

  v71 = 1;
LABEL_103:
  if (*&v156[56])
  {
    *&v156[64] = *&v156[56];
    operator delete(*&v156[56]);
  }

  if (*&v156[32])
  {
    *&v156[40] = *&v156[32];
    operator delete(*&v156[32]);
  }

  *v156 = &v157;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v156);
  return v71;
}

void sub_1A9125034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  operator delete(v40);
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<std::__state<char>>::~deque[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

__n128 std::deque<std::__state<char>>::push_back(void **a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 42 * ((v5 - v4) >> 3) - 1;
  }

  v8 = a1[4];
  v9 = a1[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x2A)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v6 >= v11)
      {
        if (v10 == *a1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11 >> 2;
        }

        v42 = a1;
        v38 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v12);
        v39 = &v38[v6];
        v40 = &v38[v6];
        v41 = &v38[8 * v13];
        v37 = operator new(0xFC0uLL);
        std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(&v38, &v37);
        v14 = v38;
        v15 = v39;
        v16 = v40;
        v17 = v41;
        v18 = a1[2];
        if (v18 == a1[1])
        {
          v31 = v39;
        }

        else
        {
          do
          {
            if (v15 == v14)
            {
              if (v16 >= v17)
              {
                if (v17 == v15)
                {
                  v22 = 1;
                }

                else
                {
                  v22 = (v17 - v15) >> 2;
                }

                v23 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v22);
                v25 = v23;
                v19 = &v23[(2 * v22 + 6) & 0xFFFFFFFFFFFFFFF8];
                v26 = v16 - v15;
                v20 = v16 == v15;
                v16 = v19;
                if (!v20)
                {
                  v16 = &v19[v26];
                  v27 = v19;
                  v28 = v15;
                  do
                  {
                    v29 = *v28;
                    v28 += 8;
                    *v27 = v29;
                    v27 += 8;
                    v26 -= 8;
                  }

                  while (v26);
                }

                v17 = &v23[8 * v24];
                if (v15)
                {
                  operator delete(v14);
                }

                v14 = v25;
              }

              else
              {
                v19 = &v15[8 * ((((v17 - v16) >> 3) + 1 + ((((v17 - v16) >> 3) + 1) >> 63)) >> 1)];
                v21 = v16 - v15;
                v20 = v16 == v15;
                v16 += 8 * ((((v17 - v16) >> 3) + 1 + ((((v17 - v16) >> 3) + 1) >> 63)) >> 1);
                if (!v20)
                {
                  memmove(v19, v15, v21);
                }
              }
            }

            else
            {
              v19 = v15;
            }

            v30 = *(v18 - 1);
            v18 -= 8;
            *(v19 - 1) = v30;
            v31 = v19 - 8;
            v15 = v31;
          }

          while (v18 != a1[1]);
        }

        v32 = *a1;
        *a1 = v14;
        a1[1] = v31;
        a1[2] = v16;
        a1[3] = v17;
        if (v32)
        {
          operator delete(v32);
        }

        goto LABEL_35;
      }

      if (v10 != v5)
      {
        v38 = operator new(0xFC0uLL);
        std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v38);
        goto LABEL_35;
      }

      v38 = operator new(0xFC0uLL);
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v38);
      v4 = a1[1];
    }

    else
    {
      a1[4] = (v8 - 42);
    }

    v38 = *v4;
    a1[1] = v4 + 8;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v38);
LABEL_35:
    v4 = a1[1];
    v9 = a1[4] + a1[5];
  }

  v33 = *&v4[8 * (v9 / 0x2A)] + 96 * (v9 % 0x2A);
  v34 = *(a2 + 16);
  *v33 = *a2;
  *(v33 + 16) = v34;
  *(v33 + 40) = 0;
  *(v33 + 48) = 0;
  *(v33 + 32) = 0;
  *(v33 + 32) = *(a2 + 32);
  *(v33 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v33 + 56) = 0;
  *(v33 + 64) = 0;
  *(v33 + 72) = 0;
  result = *(a2 + 56);
  *(v33 + 56) = result;
  *(v33 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v36 = *(a2 + 80);
  *(v33 + 85) = *(a2 + 85);
  *(v33 + 80) = v36;
  a1[5] = a1[5] + 1;
  return result;
}

void sub_1A91253E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  operator delete(v10);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__destroy_at[abi:ne200100]<std::__state<char>,0>((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  v3 = a1[2];
  v4 = v3 == a1[1];
  v5 = 42 * ((v3 - a1[1]) >> 3) - 1;
  v7 = a1[4];
  v6 = a1[5];
  a1[5] = v6 - 1;
  if (v4)
  {
    v5 = 0;
  }

  if ((v5 - (v6 + v7) - 83) <= 0xFFFFFFFFFFFFFFABLL)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(void *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v11);
      v14 = &v12[8 * (v11 >> 2)];
      v15 = a1[1];
      v4 = v14;
      v16 = a1[2] - v15;
      if (v16)
      {
        v4 = &v14[v16];
        v17 = &v12[8 * (v11 >> 2)];
        do
        {
          v18 = *v15++;
          *v17 = v18;
          v17 += 8;
          v16 -= 8;
        }

        while (v16);
      }

      v19 = *a1;
      *a1 = v12;
      a1[1] = v14;
      a1[2] = v4;
      a1[3] = &v12[8 * v13];
      if (v19)
      {
        operator delete(v19);
        v4 = a1[2];
      }
    }

    else
    {
      v7 = ((v6 >> 3) + 1) / -2;
      v8 = ((v6 >> 3) + 1) / 2;
      v9 = &v5[-8 * v8];
      v10 = v4 - v5;
      if (v4 != v5)
      {
        memmove(&v5[-8 * v8], v5, v4 - v5);
        v5 = a1[1];
      }

      v4 = &v9[v10];
      a1[1] = &v5[8 * v7];
      a1[2] = &v9[v10];
    }
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
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

      v10 = 2 * v9;
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v9);
      v5 = &v11[(v10 + 6) & 0xFFFFFFFFFFFFFFF8];
      v13 = *(a1 + 8);
      v14 = v5;
      v15 = *(a1 + 16) - v13;
      if (v15)
      {
        v14 = &v5[v15];
        v16 = v5;
        do
        {
          v17 = *v13++;
          *v16 = v17;
          v16 += 8;
          v15 -= 8;
        }

        while (v15);
      }

      v18 = *a1;
      *a1 = v11;
      *(a1 + 8) = v5;
      *(a1 + 16) = v14;
      *(a1 + 24) = &v11[8 * v12];
      if (v18)
      {
        operator delete(v18);
        v5 = *(a1 + 8);
      }
    }

    else
    {
      v8 = (((v7 - v6) >> 3) + 1) / 2;
      v5 = &v4[8 * v8];
      if (v6 != v4)
      {
        memmove(&v4[8 * v8], v4, v6 - v4);
        v6 = *(a1 + 16);
      }

      *(a1 + 8) = v5;
      *(a1 + 16) = &v6[8 * v8];
    }
  }

  else
  {
    v5 = *(a1 + 8);
  }

  *(v5 - 1) = *a2;
  *(a1 + 8) -= 8;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(unint64_t a1)
{
  if (a1 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(8 * a1);
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * ((*(a1 + 40) + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(const std::regex_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_iterator<std::__wrap_iter<const char *>, char> *__x)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  end = p_match->__matches_.__end_;
  v9 = &__x->__match_;
  v7 = __x->__match_.__matches_.__begin_;
  v8 = v9->__matches_.__end_;
  v10 = v8 == v7 && end == begin;
  if (end != begin && v8 != v7)
  {
    return this->__begin_.__i_ == __x->__begin_.__i_ && this->__end_.__i_ == __x->__end_.__i_ && this->__pregex_ == __x->__pregex_ && this->__flags_ == __x->__flags_ && std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](begin, v7) == 0;
  }

  return v10;
}

uint64_t std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __dst = 0;
    v20 = 0;
    v21 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&v16, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v18);
    v5 = v16;
    v4 = v17;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v6 = SHIBYTE(v21);
  v7 = __dst;
  if (v21 >= 0)
  {
    v8 = HIBYTE(v21);
  }

  else
  {
    v8 = v20;
  }

  if (v21 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v11 = &v16;
  }

  else
  {
    v11 = v5;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(p_dst, v11, v12);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v7);
LABEL_24:
  v14 = v10 < v8;
  if (v8 < v10)
  {
    v14 = -1;
  }

  if (v13)
  {
    return v13;
  }

  else
  {
    return v14;
  }
}

void sub_1A9125A48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_1F1CB53F0;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  std::shared_ptr<std::__empty_state<char>>::reset[abi:ne200100]<std::__empty_state<char>,0>((a1 + 40), v7);
  v8 = *(a1 + 40);
  *(a1 + 56) = v8;
  v9 = *(a1 + 24) & 0x1F0;
  if (v9 > 0x3F)
  {
    switch(v9)
    {
      case 0x40u:
LABEL_14:

        return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
      case 0x80u:
        v13 = memchr(a2, 10, a3 - a2);
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = a3;
        }

        if (v14 == a2)
        {
          v15 = operator new(0x10uLL);
          first = v8->__first_;
          v15[1].__vftable = first;
          v8->__first_ = v15;
          *(a1 + 56) = *(*(a1 + 56) + 8);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, a2, v14);
        }

        if (v14 != a3)
        {
          ++v14;
        }

        while (v14 != a3)
        {
          v17 = memchr(v14, 10, a3 - v14);
          if (v17)
          {
            v18 = v17;
          }

          else
          {
            v18 = a3;
          }

          v19 = *(a1 + 56);
          if (v18 == v14)
          {
            v20 = operator new(0x10uLL);
            v21 = v19->__first_;
            v20[1].__vftable = v21;
            v19->__first_ = v20;
            *(a1 + 56) = *(*(a1 + 56) + 8);
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v14, v18);
          }

          std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, v8, v19);
          if (v18 == a3)
          {
            v14 = v18;
          }

          else
          {
            v14 = v18 + 1;
          }
        }

        break;
      case 0x100u:
        v10 = memchr(a2, 10, a3 - a2);
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = a3;
        }

        if (v11 == a2)
        {
          v22 = operator new(0x10uLL);
          v23 = v8->__first_;
          v22[1].__vftable = v23;
          v8->__first_ = v22;
          *(a1 + 56) = *(*(a1 + 56) + 8);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, a2, v11);
        }

        if (v11 != a3)
        {
          ++v11;
        }

        while (v11 != a3)
        {
          v24 = memchr(v11, 10, a3 - v11);
          if (v24)
          {
            v25 = v24;
          }

          else
          {
            v25 = a3;
          }

          v26 = *(a1 + 56);
          if (v25 == v11)
          {
            v27 = operator new(0x10uLL);
            v28 = v26->__first_;
            v27[1].__vftable = v28;
            v26->__first_ = v27;
            *(a1 + 56) = *(*(a1 + 56) + 8);
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v11, v25);
          }

          std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, v8, v26);
          if (v25 == a3)
          {
            v11 = v25;
          }

          else
          {
            v11 = v25 + 1;
          }
        }

        break;
      default:
        goto LABEL_55;
    }

    return a3;
  }

  else if (v9)
  {
    if (v9 != 16)
    {
      if (v9 != 32)
      {
LABEL_55:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
      }

      goto LABEL_14;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  else
  {

    return std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, v7, a3);
  }

  while (v8 != v7);
  if (v8 == a2)
  {
    v9 = operator new(0x10uLL);
    v10 = a1->__end_;
    first = v10->__first_;
    v9[1].__vftable = first;
    v10->__first_ = v9;
    a1->__end_ = a1->__end_->__first_;
  }

  if (v8 != a3)
  {
    do
    {
      if (*v8 != 124)
      {
        break;
      }

      v12 = a1->__end_;
      v13 = v8 + 1;
      v14 = v8 + 1;
      do
      {
        v8 = v14;
        v14 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, v14, a3);
      }

      while (v8 != v14);
      if (v13 == v8)
      {
        v15 = operator new(0x10uLL);
        v16 = a1->__end_;
        v17 = v16->__first_;
        v15[1].__vftable = v17;
        v16->__first_ = v15;
        a1->__end_ = a1->__end_->__first_;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v12);
    }

    while (v8 != a3);
    return v8;
  }

  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  if (*a2 == 94)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    ++v3;
  }

  if (v3 != v4)
  {
    do
    {
      v6 = v3;
      v3 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(this, v3, v4);
    }

    while (v6 != v3);
    if (v6 != v4 && v6 + 1 == v4 && *v6 == 36)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
      ++v6;
    }

    if (v6 != v4)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v4;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a3;
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  if (v7 != v3)
  {
    do
    {
      if (*v8 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, v8 + 1, v3);
      if (v8 + 1 == v10)
      {
        goto LABEL_8;
      }

      v8 = v10;
      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v8 != v3);
    return v8;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
LABEL_3:
    v8 = a2;
    goto LABEL_4;
  }

  v12 = *a2;
  if (v12 > 0x5B)
  {
    if (v12 == 92)
    {
      if (a2 + 1 != a3)
      {
        v17 = a2[1];
        if (v17 == 66)
        {
          v18 = 1;
        }

        else
        {
          if (v17 != 98)
          {
            goto LABEL_28;
          }

          v18 = 0;
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, v18);
        v9 = a2 + 2;
        goto LABEL_29;
      }

LABEL_28:
      v9 = a2;
      goto LABEL_29;
    }

    v9 = a2;
    if (v12 != 94)
    {
      goto LABEL_29;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
LABEL_23:
    v9 = a2 + 1;
    goto LABEL_29;
  }

  if (v12 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
    goto LABEL_23;
  }

  v9 = a2;
  if (v12 != 40)
  {
    goto LABEL_29;
  }

  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    goto LABEL_28;
  }

  v13 = a2[2];
  if (v13 == 33)
  {
    *&v31 = 0xAAAAAAAAAAAAAAAALL;
    *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v44.__loop_count_ = v31;
    *&v44.__start_.__cntrl_ = v31;
    *&v44.__traits_.__loc_.__locale_ = v31;
    *&v44.__traits_.__col_ = v31;
    std::regex_traits<char>::regex_traits(&v44.__traits_);
    memset(&v44.__flags_, 0, 40);
    v44.__flags_ = a1->__flags_;
    v15 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v44, a2 + 3, a3);
    v32 = v44.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(a1, &v44, 1, a1->__marked_count_);
    a1->__marked_count_ += v32;
    if (v15 == a3 || *v15 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_68;
  }

  if (v13 != 61)
  {
    goto LABEL_28;
  }

  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v44.__loop_count_ = v14;
  *&v44.__start_.__cntrl_ = v14;
  *&v44.__traits_.__loc_.__locale_ = v14;
  *&v44.__traits_.__col_ = v14;
  std::regex_traits<char>::regex_traits(&v44.__traits_);
  memset(&v44.__flags_, 0, 40);
  v44.__flags_ = a1->__flags_;
  v15 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v44, a2 + 3, a3);
  v16 = v44.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(a1, &v44, 0, a1->__marked_count_);
  a1->__marked_count_ += v16;
  if (v15 == a3 || *v15 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_68:
  v9 = v15 + 1;
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v44.__traits_.__loc_);
LABEL_29:
  if (v9 != a2)
  {
    return v9;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v19 = *a2;
  if (v19 <= 0x3E)
  {
    if (*a2 <= 0x28u)
    {
      if (v19 == 36)
      {
        goto LABEL_3;
      }

      if (v19 == 40)
      {
        if (a2 + 1 != a3)
        {
          if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
          {
            ++a1->__open_count_;
            v26 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2 + 3, a3);
            if (v26 != a3 && *v26 == 41)
            {
              --a1->__open_count_;
              v8 = v26 + 1;
              goto LABEL_4;
            }
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
            v27 = a1->__marked_count_;
            ++a1->__open_count_;
            v28 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2 + 1, a3);
            if (v28 != a3)
            {
              v29 = v28;
              if (*v28 == 41)
              {
                std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v27);
                --a1->__open_count_;
                v8 = v29 + 1;
                goto LABEL_4;
              }
            }
          }
        }

        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }
    }

    else
    {
      if (v19 == 41)
      {
        goto LABEL_3;
      }

      if (v19 == 46)
      {
        v20 = operator new(0x10uLL);
        first = end->__first_;
        v20->__vftable = &unk_1F1CB4988;
        v20[1].__vftable = first;
        end->__first_ = v20;
        a1->__end_ = a1->__end_->__first_;
LABEL_74:
        v8 = a2 + 1;
        goto LABEL_4;
      }

      if (v19 - 42 < 2)
      {
LABEL_101:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }
    }

LABEL_73:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v19);
    goto LABEL_74;
  }

  v22 = v19 - 92;
  if (v22 > 0x21)
  {
LABEL_70:
    if (v19 == 91)
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
      goto LABEL_4;
    }

    if (v19 == 63)
    {
      goto LABEL_101;
    }

    goto LABEL_73;
  }

  if (((1 << (v19 - 92)) & 0x300000006) != 0)
  {
    goto LABEL_3;
  }

  if (v19 != 92)
  {
    if (v22 == 31)
    {
      goto LABEL_101;
    }

    goto LABEL_70;
  }

  v23 = a2 + 1;
  if (a3 == a2 + 1)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v24 = *v23;
  v25 = v24 - 48;
  if (v24 == 48)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v25);
    v8 = a2 + 2;
    goto LABEL_78;
  }

  v8 = a2 + 1;
  if ((v24 - 49) <= 8)
  {
    v8 = a2 + 2;
    if (a2 + 2 == a3)
    {
      v8 = a3;
    }

    else
    {
      while (1)
      {
        v30 = *v8;
        if ((v30 - 48) > 9)
        {
          break;
        }

        if (v25 >= 0x19999999)
        {
          goto LABEL_103;
        }

        ++v8;
        v25 = v30 + 10 * v25 - 48;
        if (v8 == a3)
        {
          v8 = a3;
          break;
        }
      }

      if (!v25)
      {
LABEL_103:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }
    }

    if (v25 > marked_count)
    {
      goto LABEL_103;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v25);
  }

LABEL_78:
  if (v23 != v8)
  {
    goto LABEL_4;
  }

  v33 = *v23;
  if (v33 <= 0x63)
  {
    if (v33 != 68)
    {
      if (v33 != 83)
      {
        v8 = a2 + 1;
        if (v33 != 87)
        {
          goto LABEL_97;
        }

        v34 = a1;
        v35 = 1;
        goto LABEL_91;
      }

      v41 = a1;
      v42 = 1;
      goto LABEL_94;
    }

    v36 = a1;
    v37 = 1;
    goto LABEL_89;
  }

  if (v33 != 119)
  {
    if (v33 == 115)
    {
      v41 = a1;
      v42 = 0;
LABEL_94:
      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v41, v42);
      v39 = started->__mask_ | 0x4000;
      goto LABEL_95;
    }

    v8 = a2 + 1;
    if (v33 != 100)
    {
      goto LABEL_97;
    }

    v36 = a1;
    v37 = 0;
LABEL_89:
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v36, v37);
    v39 = started->__mask_ | 0x400;
LABEL_95:
    started->__mask_ = v39;
    goto LABEL_96;
  }

  v34 = a1;
  v35 = 0;
LABEL_91:
  v40 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v34, v35);
  v40->__mask_ |= 0x500u;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v40, 95);
LABEL_96:
  v8 = a2 + 2;
LABEL_97:
  if (v23 == v8)
  {
    v43 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
    if (v43 == v23)
    {
      v8 = a2;
    }

    else
    {
      v8 = v43;
    }
  }

LABEL_4:
  v9 = a2;
  if (v8 == a2)
  {
    return v9;
  }

  v10 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v8, a3, end, marked_count + 1, v10);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = a6;
  v8 = a5;
  v11 = a1;
  v12 = *(a1 + 24) & 0x1F0;
  v13 = *a2;
  if (v13 > 0x3E)
  {
    if (v13 == 63)
    {
      v6 = a2 + 1;
      if (v12)
      {
        v20 = 1;
      }

      else
      {
        v20 = v6 == a3;
      }

      if (!v20 && *v6 == 63)
      {
        v6 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_32;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_44;
    }

    v6 = a2;
    if (v13 != 123)
    {
      return v6;
    }

    LODWORD(__max) = -1431655766;
    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(a2 + 1, a3, &__max);
    if (v15 != v16)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v6 = v16 + 1;
            if (!v12 && v6 != a3 && *v6 == 63)
            {
              v6 = v16 + 2;
              v14 = __max;
              a5 = v8;
              a6 = v7;
              a1 = v11;
              v18 = __max;
LABEL_32:
              v21 = __s;
              v22 = 0;
LABEL_45:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v6;
            }

            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            v18 = __max;
LABEL_44:
            v21 = __s;
            v22 = 1;
            goto LABEL_45;
          }

          goto LABEL_57;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_57;
        }

        if (*v23 == 125)
        {
          v6 = v16 + 2;
          if (!v12 && v6 != a3 && *v6 == 63)
          {
            v6 = v16 + 3;
            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            goto LABEL_25;
          }

          v14 = __max;
          a5 = v8;
          a6 = v7;
          a1 = v11;
LABEL_35:
          v18 = -1;
          goto LABEL_44;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v16 + 1, a3, &v27);
        if (v23 != v25 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v6 = v25 + 1;
            v22 = 1;
            if (!v12 && v6 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v6 = v25 + 2;
              }
            }

            a5 = v8;
            a6 = v7;
            a1 = v11;
            v21 = __s;
            goto LABEL_45;
          }

          goto LABEL_57;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_57:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v13 == 42)
  {
    v6 = a2 + 1;
    if (v12)
    {
      v19 = 1;
    }

    else
    {
      v19 = v6 == a3;
    }

    if (!v19 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_25;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_35;
  }

  v6 = a2;
  if (v13 == 43)
  {
    v6 = a2 + 1;
    if (!v12 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_25:
      v18 = -1;
      goto LABEL_32;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_35;
  }

  return v6;
}