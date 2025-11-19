void sub_2975D30BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, std::locale a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, void *a61, uint64_t a62)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (*(v62 - 185) < 0)
  {
    operator delete(*(v62 - 208));
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a46);
  _Unwind_Resume(a1);
}

void support::fs::createUniquePath(const char *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v29 = *MEMORY[0x29EDCA608];
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__src.st_blksize = v4;
  *__src.st_qspare = v4;
  __src.st_birthtimespec = v4;
  *&__src.st_size = v4;
  __src.st_mtimespec = v4;
  __src.st_ctimespec = v4;
  *&__src.st_uid = v4;
  __src.st_atimespec = v4;
  *&__src.st_dev = v4;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &__src))
  {
    v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    v27 = v5;
    v28 = v5;
    v25 = v5;
    v26 = v5;
    v23 = v5;
    v24 = v5;
    *__src.st_qspare = v5;
    v22 = v5;
    *&__src.st_size = v5;
    *&__src.st_blksize = v5;
    __src.st_ctimespec = v5;
    __src.st_birthtimespec = v5;
    __src.st_atimespec = v5;
    __src.st_mtimespec = v5;
    *&__src.st_dev = v5;
    *&__src.st_uid = v5;
    snprintf(&__src, 0x100uLL, "-%u", 1);
    memset(a2, 170, sizeof(std::string));
    v6 = strlen(&__src);
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_33:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    v8 = 2;
    while (v7 < 0x17)
    {
      HIBYTE(__dst.st_gid) = v7;
      p_dst = &__dst;
      if (v7)
      {
        goto LABEL_16;
      }

LABEL_17:
      *(&p_dst->st_dev + v7) = 0;
      v12 = v2[23];
      if (v12 >= 0)
      {
        v13 = v2;
      }

      else
      {
        v13 = *v2;
      }

      if (v12 >= 0)
      {
        v14 = *(v2 + 23);
      }

      else
      {
        v14 = *(v2 + 1);
      }

      v15 = std::string::insert(&__dst, 0, v13, v14);
      v16 = *&v15->__r_.__value_.__l.__data_;
      a2->__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&a2->__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.st_gid) < 0)
      {
        operator delete(*&__dst.st_dev);
      }

      v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&__dst.st_blksize = v17;
      *__dst.st_qspare = v17;
      __dst.st_birthtimespec = v17;
      *&__dst.st_size = v17;
      __dst.st_mtimespec = v17;
      __dst.st_ctimespec = v17;
      *&__dst.st_uid = v17;
      __dst.st_atimespec = v17;
      *&__dst.st_dev = v17;
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = a2->__r_.__value_.__r.__words[0];
      }

      if (stat(v18, &__dst))
      {
        goto LABEL_32;
      }

      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(a2->__r_.__value_.__l.__data_);
      }

      v9.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v9.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      v27 = v9;
      v28 = v9;
      v25 = v9;
      v26 = v9;
      v23 = v9;
      v24 = v9;
      *__src.st_qspare = v9;
      v22 = v9;
      *&__src.st_size = v9;
      *&__src.st_blksize = v9;
      __src.st_ctimespec = v9;
      __src.st_birthtimespec = v9;
      __src.st_atimespec = v9;
      __src.st_mtimespec = v9;
      *&__src.st_dev = v9;
      *&__src.st_uid = v9;
      snprintf(&__src, 0x100uLL, "-%u", v8);
      memset(a2, 170, sizeof(std::string));
      v7 = strlen(&__src);
      ++v8;
      if (v7 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_33;
      }
    }

    if ((v7 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v7 | 7) + 1;
    }

    p_dst = operator new(v11);
    __dst.st_ino = v7;
    *&__dst.st_uid = v11 | 0x8000000000000000;
    *&__dst.st_dev = p_dst;
LABEL_16:
    memcpy(p_dst, &__src, v7);
    goto LABEL_17;
  }

  if (v2[23] < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v2, *(v2 + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *v2;
    a2->__r_.__value_.__r.__words[2] = *(v2 + 2);
  }

LABEL_32:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_2975D3458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL support::fs::createDir(const char *a1, mode_t a2, int a3)
{
  v5 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v30.st_blksize = v6;
  *v30.st_qspare = v6;
  v30.st_birthtimespec = v6;
  *&v30.st_size = v6;
  v30.st_mtimespec = v6;
  v30.st_ctimespec = v6;
  *&v30.st_uid = v6;
  v30.st_atimespec = v6;
  *&v30.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &v30))
  {
    return 1;
  }

  if (!a3)
  {
    if (v5[23] >= 0)
    {
      v21 = v5;
    }

    else
    {
      v21 = *v5;
    }

    return mkdir(v21, a2) == 0;
  }

  v28[1] = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0x1AAAAAAAAAAAAAALL;
  v28[0] = 0xAAAAAAAAAAAA002FLL;
  memset(&__p[32], 170, 24);
  ctu::tokenize();
  memset(__p, 0, 24);
  if (v5[23] >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (*v7 == 47)
  {
    *__p = *v28;
    *&__p[16] = v29;
  }

  v8 = *&__p[32];
  if (*&__p[40] != *&__p[32])
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      if (v10 != 1)
      {
        if (v29 >= 0)
        {
          v11 = v28;
        }

        else
        {
          v11 = v28[0];
        }

        if (v29 >= 0)
        {
          v12 = HIBYTE(v29);
        }

        else
        {
          v12 = v28[1];
        }

        std::string::append(__p, v11, v12);
        v8 = *&__p[32];
      }

      v13 = v8 + 24 * v9;
      v14 = *(v13 + 23);
      v15 = v14 >= 0 ? v13 : *v13;
      v16 = v14 >= 0 ? *(v13 + 23) : *(v13 + 8);
      std::string::append(__p, v15, v16);
      v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v30.st_blksize = v17;
      *v30.st_qspare = v17;
      v30.st_birthtimespec = v17;
      *&v30.st_size = v17;
      v30.st_mtimespec = v17;
      v30.st_ctimespec = v17;
      *&v30.st_uid = v17;
      v30.st_atimespec = v17;
      *&v30.st_dev = v17;
      v18 = __p[23] >= 0 ? __p : *__p;
      if (stat(v18, &v30))
      {
        v19 = __p[23] >= 0 ? __p : *__p;
        if (mkdir(v19, a2))
        {
          break;
        }
      }

      v9 = v10;
      v8 = *&__p[32];
      ++v10;
      if (0xAAAAAAAAAAAAAAABLL * ((*&__p[40] - *&__p[32]) >> 3) <= v9)
      {
        goto LABEL_42;
      }
    }

    v20 = 0;
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = 1;
  if ((__p[23] & 0x80000000) != 0)
  {
LABEL_43:
    operator delete(*__p);
  }

LABEL_44:
  v22 = *&__p[32];
  if (*&__p[32])
  {
    v23 = *&__p[40];
    v24 = *&__p[32];
    if (*&__p[40] != *&__p[32])
    {
      do
      {
        v25 = *(v23 - 1);
        v23 -= 3;
        if (v25 < 0)
        {
          operator delete(*v23);
        }
      }

      while (v23 != v22);
      v24 = *&__p[32];
    }

    *&__p[40] = v22;
    operator delete(v24);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  return v20;
}

void sub_2975D371C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::vector<std::string>::~vector[abi:ne200100](&a16);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::vector<std::string>::~vector[abi:ne200100](&a16);
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

BOOL support::fs::rename(const std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *a2, std::error_code *a3)
{
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a1 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a2 = a2->__pn_.__r_.__value_.__r.__words[0];
  }

  rename(a1, a2, a3);
  return v3 == 0;
}

BOOL support::fs::chmod(const char *a1, mode_t a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return chmod(a1, a2) == 0;
}

BOOL support::fs::removeDir(const char *a1)
{
  v1 = a1;
  v58[2] = *MEMORY[0x29EDCA608];
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v57.st_blksize = v2;
  *v57.st_qspare = v2;
  v57.st_birthtimespec = v2;
  *&v57.st_size = v2;
  v57.st_mtimespec = v2;
  v57.st_ctimespec = v2;
  *&v57.st_uid = v2;
  v57.st_atimespec = v2;
  *&v57.st_dev = v2;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v57))
  {
    v3 = 1;
    goto LABEL_112;
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  support::fs::readDir(v1, &v54);
  v5 = 0;
  while (1)
  {
    v6 = v5;
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v54) >> 3);
    v3 = v7 <= v5;
    if (v7 <= v5)
    {
      break;
    }

    v8 = v54 + 24 * v5;
    memset(&__p, 170, sizeof(__p));
    if (v8[23] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      __p.__r_.__value_.__r.__words[2] = *(v8 + 2);
      *&__p.__r_.__value_.__l.__data_ = v9;
    }

    v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 1)
      {
        if (*__p.__r_.__value_.__l.__data_ == 46)
        {
          goto LABEL_61;
        }
      }

      else if (__p.__r_.__value_.__l.__size_ == 2 && *__p.__r_.__value_.__l.__data_ == 11822)
      {
        goto LABEL_61;
      }
    }

    else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 1)
    {
      if (__p.__r_.__value_.__s.__data_[0] == 46)
      {
        goto LABEL_61;
      }
    }

    else if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 2 && LOWORD(__p.__r_.__value_.__l.__data_) == 11822)
    {
      goto LABEL_61;
    }

    v11 = SHIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]);
    if (v11 >= 0)
    {
      size = HIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v1->__pn_.__r_.__value_.__l.__size_;
    }

    v13 = size + 1;
    if (size + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v13 < 0x17)
    {
      memset(&v57, 0, 24);
      v15 = &v57;
      HIBYTE(v57.st_gid) = size + 1;
      if (!size)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v13 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v13 | 7) + 1;
      }

      v15 = operator new(v14);
      v57.st_ino = size + 1;
      *&v57.st_uid = v14 | 0x8000000000000000;
      *&v57.st_dev = v15;
    }

    v16 = v1->__pn_.__r_.__value_.__r.__words[0];
    if (v11 >= 0)
    {
      v17 = v1;
    }

    else
    {
      v17 = v1->__pn_.__r_.__value_.__r.__words[0];
    }

    memmove(v15, v17, size);
LABEL_38:
    *&v15[size] = 47;
    if ((v10 & 0x80000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v10 & 0x80000000) == 0)
    {
      v19 = v10;
    }

    else
    {
      v19 = __p.__r_.__value_.__l.__size_;
    }

    v20 = std::string::append(&v57, p_p, v19);
    v21 = v20->__r_.__value_.__r.__words[0];
    v58[0] = v20->__r_.__value_.__l.__size_;
    *(v58 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v21;
    __p.__r_.__value_.__l.__size_ = v58[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v58 + 7);
    *(&__p.__r_.__value_.__s + 23) = v22;
    if (SHIBYTE(v57.st_gid) < 0)
    {
      operator delete(*&v57.st_dev);
      v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v21 = __p.__r_.__value_.__r.__words[0];
    }

    v23.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v23.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v57.st_blksize = v23;
    *v57.st_qspare = v23;
    v57.st_birthtimespec = v23;
    *&v57.st_size = v23;
    v57.st_mtimespec = v23;
    v57.st_ctimespec = v23;
    *&v57.st_uid = v23;
    v57.st_atimespec = v23;
    if (v22 >= 0)
    {
      v24 = &__p;
    }

    else
    {
      v24 = v21;
    }

    *&v57.st_dev = v23;
    if (!stat(v24, &v57))
    {
      v29 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v30 = opendir(v29);
      v31 = v30;
      if (v30)
      {
        v32 = readdir(v30);
        closedir(v31);
        if (v32)
        {
          v33 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v33 = __p.__r_.__value_.__l.__size_;
            v35 = __p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
            v36 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v36 != __p.__r_.__value_.__l.__size_)
            {
              v34 = __p.__r_.__value_.__r.__words[0];
              goto LABEL_89;
            }

            if (v35 == 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v34 = __p.__r_.__value_.__r.__words[0];
            if (v36 > 0x3FFFFFFFFFFFFFF2)
            {
              v40 = 0;
              v39 = 0x7FFFFFFFFFFFFFF7;
            }

            else
            {
LABEL_74:
              v37 = 2 * v36;
              if (v35 > 2 * v36)
              {
                v37 = v35;
              }

              if ((v37 | 7) == 0x17)
              {
                v38 = 25;
              }

              else
              {
                v38 = (v37 | 7) + 1;
              }

              if (v37 >= 0x17)
              {
                v39 = v38;
              }

              else
              {
                v39 = 23;
              }

              v40 = v36 == 22;
            }

            v41 = operator new(v39);
            v42 = v41;
            if (v36)
            {
              memmove(v41, v34, v36);
            }

            *(v42 + v36) = 47;
            if (!v40)
            {
              operator delete(v34);
            }

            __p.__r_.__value_.__l.__size_ = v35;
            __p.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
            __p.__r_.__value_.__r.__words[0] = v42;
            v43 = (v42 + v35);
          }

          else
          {
            v34 = &__p;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 22)
            {
              v35 = 23;
              v36 = 22;
              goto LABEL_74;
            }

LABEL_89:
            v34->__r_.__value_.__s.__data_[v33] = 47;
            v44 = v33 + 1;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              __p.__r_.__value_.__l.__size_ = v44;
            }

            else
            {
              *(&__p.__r_.__value_.__s + 23) = v44 & 0x7F;
            }

            v43 = v34 + v44;
          }

          *v43 = 0;
          v28 = support::fs::removeDir(&__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }
      }
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p.__r_.__value_.__r.__words[0];
    }

    if (!remove(v26, v25))
    {
LABEL_61:
      v28 = 1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &__p;
    }

    else
    {
      v27 = __p.__r_.__value_.__r.__words[0];
    }

    v28 = unlink(v27) == 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    operator delete(__p.__r_.__value_.__l.__data_);
LABEL_7:
    v5 = v6 + 1;
    if ((v28 & 1) == 0)
    {
      goto LABEL_104;
    }
  }

  if ((v1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = v1;
  }

  else
  {
    v45 = v1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (remove(v45, v4))
  {
    if ((v1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = v1;
    }

    else
    {
      v46 = v1->__pn_.__r_.__value_.__r.__words[0];
    }

    unlink(v46);
  }

LABEL_104:
  v47 = v54;
  if (v54)
  {
    v48 = v55;
    v49 = v54;
    if (v55 != v54)
    {
      do
      {
        v50 = *(v48 - 1);
        v48 -= 3;
        if (v50 < 0)
        {
          operator delete(*v48);
        }
      }

      while (v48 != v47);
      v49 = v54;
    }

    v55 = v47;
    operator delete(v49);
  }

LABEL_112:
  v51 = *MEMORY[0x29EDCA608];
  return v3;
}

void sub_2975D3D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a14 & 0x80000000) == 0)
  {
    std::vector<std::string>::~vector[abi:ne200100](&a15);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::vector<std::string>::~vector[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

BOOL support::fs::removeFile(const std::__fs::filesystem::path *a1, std::error_code *a2)
{
  v2 = a1;
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a1 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (!remove(a1, a2))
  {
    return 1;
  }

  if ((v2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = v2->__pn_.__r_.__value_.__r.__words[0];
  }

  return unlink(v3) == 0;
}

uint64_t support::fs::removeDirContents(const char *a1, unint64_t a2)
{
  v3 = a1;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  support::fs::readDir(a1, &v59);
  v54 = time(0);
  v5 = v59;
  v4 = v60;
  if (v59 == v60)
  {
    v49 = 1;
    if (v59)
    {
      goto LABEL_108;
    }

    return v49 & 1;
  }

  v6 = a2;
  v55 = 1;
  while (1)
  {
    memset(&v58, 170, sizeof(v58));
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v58, *v5, v5[1]);
    }

    else
    {
      v7 = *v5;
      v58.__r_.__value_.__r.__words[2] = v5[2];
      *&v58.__r_.__value_.__l.__data_ = v7;
    }

    v8 = SHIBYTE(v58.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      break;
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) == 1)
    {
      if (v58.__r_.__value_.__s.__data_[0] == 46)
      {
        goto LABEL_98;
      }
    }

    else if (HIBYTE(v58.__r_.__value_.__r.__words[2]) == 2 && LOWORD(v58.__r_.__value_.__l.__data_) == 11822)
    {
      goto LABEL_98;
    }

LABEL_19:
    memset(__p, 170, 24);
    v9 = v3[23];
    if (v9 >= 0)
    {
      v10 = *(v3 + 23);
    }

    else
    {
      v10 = *(v3 + 1);
    }

    v11 = v10 + 1;
    if (v10 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v11 < 0x17)
    {
      memset(&v62, 0, 24);
      v16 = &v62;
      HIBYTE(v62.st_gid) = v10 + 1;
      if (!v10)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v12 = v3;
      v13 = v4;
      v14 = a2;
      if ((v11 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v11 | 7) + 1;
      }

      v16 = operator new(v15);
      v62.st_ino = v10 + 1;
      *&v62.st_uid = v15 | 0x8000000000000000;
      *&v62.st_dev = v16;
      a2 = v14;
      v4 = v13;
      v3 = v12;
    }

    v17 = *v3;
    if (v9 >= 0)
    {
      v18 = v3;
    }

    else
    {
      v18 = *v3;
    }

    memmove(v16, v18, v10);
LABEL_33:
    *&v16[v10] = 47;
    if ((v8 & 0x80000000) == 0)
    {
      v19 = &v58;
    }

    else
    {
      v19 = v58.__r_.__value_.__r.__words[0];
    }

    if ((v8 & 0x80000000) == 0)
    {
      size = v8;
    }

    else
    {
      size = v58.__r_.__value_.__l.__size_;
    }

    v21 = std::string::append(&v62, v19, size);
    v22 = *&v21->__r_.__value_.__l.__data_;
    __p[2] = v21->__r_.__value_.__r.__words[2];
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v62.st_gid) < 0)
    {
      operator delete(*&v62.st_dev);
      if (!a2)
      {
        goto LABEL_50;
      }
    }

    else if (!a2)
    {
      goto LABEL_50;
    }

    v23.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v23.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v62.st_blksize = v23;
    *v62.st_qspare = v23;
    v62.st_birthtimespec = v23;
    *&v62.st_size = v23;
    v62.st_mtimespec = v23;
    v62.st_ctimespec = v23;
    v62.st_atimespec = v23;
    *&v62.st_dev = v23;
    *&v62.st_uid = v23;
    if (SHIBYTE(__p[2]) >= 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    if (!stat(v24, &v62) && difftime(v54, v62.st_ctimespec.tv_sec) >= v6)
    {
LABEL_50:
      v27.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v27.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v62.st_blksize = v27;
      *v62.st_qspare = v27;
      v62.st_birthtimespec = v27;
      *&v62.st_size = v27;
      v62.st_mtimespec = v27;
      v62.st_ctimespec = v27;
      v62.st_atimespec = v27;
      *&v62.st_dev = v27;
      *&v62.st_uid = v27;
      if (SHIBYTE(__p[2]) >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = __p[0];
      }

      if (stat(v28, &v62) || (SHIBYTE(__p[2]) >= 0 ? (v32 = __p) : (v32 = __p[0]), (v33 = opendir(v32), (v34 = v33) == 0) || (v35 = readdir(v33), closedir(v34), !v35)))
      {
        if (SHIBYTE(__p[2]) >= 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = __p[0];
        }

        if (!remove(v30, v29) || (SHIBYTE(__p[2]) >= 0 ? (v31 = __p) : (v31 = __p[0]), !unlink(v31)))
        {
LABEL_92:
          v26 = 0;
          v55 = 1;
          v25 = 1;
          if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
          {
            goto LABEL_94;
          }

          goto LABEL_93;
        }

        goto LABEL_62;
      }

      v36 = v3[23];
      if (v36 >= 0)
      {
        v37 = *(v3 + 23);
      }

      else
      {
        v37 = *(v3 + 1);
      }

      v38 = v37 + 1;
      if (v37 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v38 < 0x17)
      {
        memset(&v56, 0, sizeof(v56));
        v41 = &v56;
        *(&v56.__r_.__value_.__s + 23) = v37 + 1;
        if (v37)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v39 = a2;
        if ((v38 | 7) == 0x17)
        {
          v40 = 25;
        }

        else
        {
          v40 = (v38 | 7) + 1;
        }

        v41 = operator new(v40);
        v56.__r_.__value_.__l.__size_ = v37 + 1;
        v56.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
        v56.__r_.__value_.__r.__words[0] = v41;
        a2 = v39;
LABEL_79:
        v42 = *v3;
        if (v36 >= 0)
        {
          v43 = v3;
        }

        else
        {
          v43 = *v3;
        }

        memmove(v41, v43, v37);
      }

      *&v41[v37] = 47;
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v58;
      }

      else
      {
        v44 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v58.__r_.__value_.__l.__size_;
      }

      v46 = std::string::append(&v56, v44, v45);
      v47 = *&v46->__r_.__value_.__l.__data_;
      *&v62.st_uid = *(&v46->__r_.__value_.__l + 2);
      *&v62.st_dev = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      v48 = support::fs::removeDir(&v62);
      if (SHIBYTE(v62.st_gid) < 0)
      {
        operator delete(*&v62.st_dev);
        if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_91;
        }
      }

      else if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_91:
        if (v48)
        {
          goto LABEL_92;
        }

LABEL_62:
        v55 = 0;
        v25 = 0;
        v26 = 2;
        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

      operator delete(v56.__r_.__value_.__l.__data_);
      if (v48)
      {
        goto LABEL_92;
      }

      goto LABEL_62;
    }

    v25 = 0;
    v26 = 3;
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_94;
    }

LABEL_93:
    operator delete(__p[0]);
LABEL_94:
    if (v25)
    {
      goto LABEL_98;
    }

    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_96;
    }

LABEL_99:
    operator delete(v58.__r_.__value_.__l.__data_);
    if (v26 != 3)
    {
      goto LABEL_100;
    }

LABEL_3:
    v5 += 3;
    if (v5 == v4)
    {
      goto LABEL_105;
    }
  }

  if (v58.__r_.__value_.__l.__size_ == 1)
  {
    if (*v58.__r_.__value_.__l.__data_ == 46)
    {
      goto LABEL_98;
    }

    goto LABEL_19;
  }

  if (v58.__r_.__value_.__l.__size_ != 2 || *v58.__r_.__value_.__l.__data_ != 11822)
  {
    goto LABEL_19;
  }

LABEL_98:
  v26 = 0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_99;
  }

LABEL_96:
  if (v26 == 3)
  {
    goto LABEL_3;
  }

LABEL_100:
  if (!v26)
  {
    goto LABEL_3;
  }

LABEL_105:
  v5 = v59;
  v49 = v55;
  if (!v59)
  {
    return v49 & 1;
  }

LABEL_108:
  v50 = v60;
  v51 = v5;
  if (v60 != v5)
  {
    do
    {
      v52 = *(v50 - 1);
      v50 -= 3;
      if (v52 < 0)
      {
        operator delete(*v50);
      }
    }

    while (v50 != v5);
    v51 = v59;
  }

  v60 = v5;
  operator delete(v51);
  return v49 & 1;
}

void sub_2975D4358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void **a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

void support::fs::moveDirUnique(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v16.st_blksize = v6;
  *v16.st_qspare = v6;
  v16.st_birthtimespec = v6;
  *&v16.st_size = v6;
  v16.st_mtimespec = v6;
  v16.st_ctimespec = v6;
  *&v16.st_uid = v6;
  v16.st_atimespec = v6;
  *&v16.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v16))
  {
    goto LABEL_4;
  }

  v7 = (v4->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v4 : v4->__pn_.__r_.__value_.__r.__words[0];
  v8 = opendir(v7);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  v10 = readdir(v8);
  closedir(v9);
  if (!v10)
  {
    goto LABEL_4;
  }

  memset(a3, 170, 24);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  support::fs::createUniquePath(&__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v4->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = v4;
  }

  else
  {
    v12 = v4->__pn_.__r_.__value_.__r.__words[0];
  }

  if (*(a3 + 23) >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  rename(v12, v13, v11);
  if (v14)
  {
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

LABEL_4:
    *(a3 + 23) = 0;
    *a3 = 0;
  }
}

void sub_2975D4568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void support::fs::getFileName(std::string *a1@<X8>)
{
  memset(__p, 170, sizeof(__p));
  ctu::tokenize();
  if (*(__p[1] - 1) < 0)
  {
    std::string::__init_copy_ctor_external(a1, *(__p[1] - 3), *(__p[1] - 2));
  }

  else
  {
    v2 = *(__p[1] - 24);
    a1->__r_.__value_.__r.__words[2] = *(__p[1] - 1);
    *&a1->__r_.__value_.__l.__data_ = v2;
  }

  if (__p[0])
  {
    v3 = __p[1];
    v4 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != __p[0]);
      v4 = __p[0];
    }

    operator delete(v4);
  }
}

void sub_2975D463C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t support::fs::lockDir(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v1 = open(a1, 0);
  if ((v1 & 0x80000000) != 0)
  {
    return v1;
  }

  v5 = 1;
  v3[0] = 0;
  v3[1] = 0;
  v4 = getpid();
  if ((fcntl(v1, 9, v3) & 0x80000000) == 0)
  {
    return v1;
  }

  close(v1);
  return 0xFFFFFFFFLL;
}

BOOL support::fs::unlockDir(support::fs *this)
{
  v1 = this;
  v6 = 2;
  v4[0] = 0;
  v4[1] = 0;
  v5 = getpid();
  v2 = fcntl(v1, 9, v4) == 0;
  close(v1);
  return v2;
}

uint64_t support::fs::getFilteredFiles(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = *MEMORY[0x29EDCA608];
  *__error() = 0;
  if (a1[23] < 0)
  {
    v7 = opendir(*a1);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_69:
    if ((atomic_load_explicit(&qword_2A18CB298, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB298))
    {
      qword_2A18CB2A0 = 0;
      qword_2A18CB2A8 = 0;
      __cxa_guard_release(&qword_2A18CB298);
    }

    if (_MergedGlobals_9 == -1)
    {
      v36 = qword_2A18CB2A8;
      if (!os_log_type_enabled(qword_2A18CB2A8, OS_LOG_TYPE_ERROR))
      {
LABEL_72:
        v37 = 0;
        goto LABEL_75;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_9, &__block_literal_global_9);
      v36 = qword_2A18CB2A8;
      if (!os_log_type_enabled(qword_2A18CB2A8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_72;
      }
    }

    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    v40 = __error();
    v41 = strerror(*v40);
    v48.st_dev = 136315394;
    *&v48.st_mode = a1;
    WORD2(v48.st_ino) = 2080;
    *(&v48.st_ino + 6) = v41;
    _os_log_error_impl(&dword_297476000, v36, OS_LOG_TYPE_ERROR, "Failed to open base directory %s (%s)", &v48, 0x16u);
    goto LABEL_72;
  }

  v7 = opendir(a1);
  if (!v7)
  {
    goto LABEL_69;
  }

LABEL_3:
  v8 = v7;
  v9 = readdir(v7);
  if (v9)
  {
    v10 = v9;
    v42 = 0;
    while (1)
    {
      memset(__dst, 170, sizeof(__dst));
      v11 = strlen(v10->d_name);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        if ((v11 | 7) == 0x17)
        {
          v15 = 25;
        }

        else
        {
          v15 = (v11 | 7) + 1;
        }

        v13 = operator new(v15);
        *&__dst[8] = v12;
        *&__dst[16] = v15 | 0x8000000000000000;
        *__dst = v13;
      }

      else
      {
        __dst[23] = v11;
        v13 = __dst;
        if (!v11)
        {
          __dst[0] = 0;
          v14 = __dst[23];
          if ((__dst[23] & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_18;
        }
      }

      memmove(v13, v10->d_name, v12);
      v13[v12] = 0;
      v14 = __dst[23];
      if ((__dst[23] & 0x8000000000000000) == 0)
      {
LABEL_9:
        if (v14 == 1)
        {
          if (__dst[0] == 46)
          {
            goto LABEL_64;
          }
        }

        else if (v14 == 2 && *__dst == 11822)
        {
          goto LABEL_64;
        }

        goto LABEL_25;
      }

LABEL_18:
      if (*&__dst[8] == 1)
      {
        if (**__dst == 46)
        {
          goto LABEL_64;
        }
      }

      else if (*&__dst[8] == 2 && **__dst == 11822)
      {
        goto LABEL_64;
      }

LABEL_25:
      if (a4)
      {
        goto LABEL_55;
      }

      v16 = v8;
      v17 = a3;
      v18 = a4;
      v19.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v19.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v48.st_blksize = v19;
      *v48.st_qspare = v19;
      v48.st_birthtimespec = v19;
      *&v48.st_size = v19;
      v48.st_ctimespec = v19;
      v48.st_atimespec = v19;
      v48.st_mtimespec = v19;
      *&v48.st_dev = v19;
      *&v48.st_uid = v19;
      v20 = a1[23];
      v21 = a1;
      if (v20 >= 0)
      {
        v22 = *(a1 + 23);
      }

      else
      {
        v22 = *(a1 + 1);
      }

      v23 = v22 + 1;
      if (v22 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v23 < 0x17)
      {
        memset(&v44, 0, sizeof(v44));
        v25 = &v44;
        *(&v44.__r_.__value_.__s + 23) = v22 + 1;
        if (!v22)
        {
          a4 = v18;
          a1 = v21;
          goto LABEL_40;
        }
      }

      else
      {
        if ((v23 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v23 | 7) + 1;
        }

        v25 = operator new(v24);
        v44.__r_.__value_.__l.__size_ = v22 + 1;
        v44.__r_.__value_.__r.__words[2] = v24 | 0x8000000000000000;
        v44.__r_.__value_.__r.__words[0] = v25;
      }

      a1 = v21;
      v26 = *v21;
      if (v20 >= 0)
      {
        v27 = v21;
      }

      else
      {
        v27 = *v21;
      }

      memmove(v25, v27, v22);
      a4 = v18;
LABEL_40:
      *&v25[v22] = 47;
      if ((v14 & 0x80000000) == 0)
      {
        v28 = __dst;
      }

      else
      {
        v28 = *__dst;
      }

      if ((v14 & 0x80000000) == 0)
      {
        v29 = v14;
      }

      else
      {
        v29 = *&__dst[8];
      }

      v30 = std::string::append(&v44, v28, v29);
      a3 = v17;
      v31 = *&v30->__r_.__value_.__l.__data_;
      v46 = v30->__r_.__value_.__r.__words[2];
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      if (v46 >= 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      lstat(v32, &v48);
      v8 = v16;
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_51:
          if ((v48.st_mode & 0xF000) != 0xA000)
          {
            goto LABEL_55;
          }

          goto LABEL_64;
        }
      }

      else if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      operator delete(v44.__r_.__value_.__l.__data_);
      if ((v48.st_mode & 0xF000) != 0xA000)
      {
LABEL_55:
        if (std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(__dst, a2, 0))
        {
          v33 = *(a3 + 8);
          if (v33 >= *(a3 + 16))
          {
            v35 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a3, __dst);
          }

          else
          {
            if ((__dst[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(*(a3 + 8), *__dst, *&__dst[8]);
            }

            else
            {
              v34 = *__dst;
              *(v33 + 16) = *&__dst[16];
              *v33 = v34;
            }

            v35 = (v33 + 24);
            *(a3 + 8) = v33 + 24;
          }

          *(a3 + 8) = v35;
          v42 = 1;
        }
      }

LABEL_64:
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      v10 = readdir(v8);
      if (!v10)
      {
        goto LABEL_74;
      }
    }
  }

  v42 = 0;
LABEL_74:
  closedir(v8);
  v37 = v42;
LABEL_75:
  v38 = *MEMORY[0x29EDCA608];
  return v37 & 1;
}

void sub_2975D4C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  *(v29 + 8) = v30;
  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void support::fs::getBasePath(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      *a2 = *a1;
      *(a2 + 16) = *(a1 + 16);
      return;
    }

LABEL_6:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    memset(&__p, 170, sizeof(__p));
    v3 = a1;
    support::fs::getFileName(&__p);
    v4 = *(v3 + 1);
    if ((v3[23] & 0x80u) == 0)
    {
      v5 = v3[23];
    }

    else
    {
      v3 = *v3;
      v5 = v4;
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v9 = &v3[v5];
    if (v5)
    {
      v10 = size == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v18 = &v3[v5];
    }

    else
    {
      v16 = p_p->__r_.__value_.__s.__data_[0];
      v14 = &p_p->__r_.__value_.__s.__data_[1];
      v15 = v16;
      v17 = v3;
      v18 = &v3[v5];
LABEL_36:
      while (2)
      {
        v19 = v17 + 1;
        while (*v17 != v15)
        {
          ++v17;
          ++v19;
          if (v17 == v9)
          {
            goto LABEL_20;
          }
        }

        v20 = size - 1;
        v21 = v14;
        while (v20)
        {
          if (v19 == v9)
          {
            goto LABEL_20;
          }

          v23 = *v19++;
          v22 = v23;
          v24 = *v21++;
          --v20;
          if (v22 != v24)
          {
            if (++v17 != v9)
            {
              goto LABEL_36;
            }

            goto LABEL_20;
          }
        }

        v18 = v17++;
        if (v17 != v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
    v11 = v18 != v9 || size == 0;
    if (!v11 || v18 - v3 == -1)
    {
      goto LABEL_34;
    }

    if (v5 >= v18 - v3)
    {
      v12 = v18 - v3;
    }

    else
    {
      v12 = v5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v12 >= 0x17)
    {
      if ((v12 | 7) == 0x17)
      {
        v25 = 25;
      }

      else
      {
        v25 = (v12 | 7) + 1;
      }

      v13 = operator new(v25);
      *(&v27 + 1) = v12;
      v28 = v25 | 0x8000000000000000;
      *&v27 = v13;
    }

    else
    {
      HIBYTE(v28) = v12;
      v13 = &v27;
      if (!v12)
      {
        LOBYTE(v27) = 0;
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
LABEL_33:
          *a2 = v27;
          *(a2 + 16) = v28;
          v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
LABEL_34:
          if (v7 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          return;
        }

LABEL_53:
        operator delete(*a2);
        goto LABEL_33;
      }
    }

    memmove(v13, v3, v12);
    *(v13 + v12) = 0;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_53;
  }

  if (*(a1 + 8))
  {
    goto LABEL_6;
  }

  v26 = *a1;

  std::string::__init_copy_ctor_external(a2, v26, 0);
}

void sub_2975D5130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void support::fs::getLastNumberDir(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v79, 170, sizeof(v79));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v79, *a1, *(a1 + 8));
  }

  else
  {
    v79 = *a1;
  }

  v4 = v79.__r_.__value_.__r.__words[0];
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v79;
  }

  else
  {
    v5 = v79.__r_.__value_.__r.__words[0];
  }

  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v79.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v79.__r_.__value_.__l.__size_;
  }

  v7 = size + 1;
  do
  {
    v8 = v7 - 1;
    if (v7 == 1)
    {
      goto LABEL_20;
    }

    v9 = v5->__r_.__value_.__s.__data_[v7-- - 2];
  }

  while (v9 == 47);
  if (v8)
  {
    v10 = v8 - 1;
    if ((*(&v79.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (v79.__r_.__value_.__l.__size_ > v10)
      {
        v79.__r_.__value_.__l.__size_ = v8;
        goto LABEL_19;
      }
    }

    else if (v10 < HIBYTE(v79.__r_.__value_.__r.__words[2]))
    {
      *(&v79.__r_.__value_.__s + 23) = v8;
      v4 = &v79;
LABEL_19:
      v4->__r_.__value_.__s.__data_[v8] = 0;
      goto LABEL_20;
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

LABEL_20:
  memset(&v78, 170, sizeof(v78));
  support::fs::getBasePath(&v79, &v78);
  v11 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v79.__r_.__value_.__l.__size_;
  }

  if (!v11)
  {
    goto LABEL_35;
  }

  v12 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v78.__r_.__value_.__l.__size_;
  }

  if (!v12)
  {
LABEL_35:
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_151;
      }

      goto LABEL_37;
    }

    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
    goto LABEL_150;
  }

  memset(&v77, 170, sizeof(v77));
  support::fs::getFileName(&v77);
  v13 = 0x7FFFFFFFFFFFFFF7;
  memset(v76, 170, sizeof(v76));
  v14 = SHIBYTE(v77.__r_.__value_.__r.__words[2]);
  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v77.__r_.__value_.__l.__size_;
  }

  v16 = v15 + 13;
  if (v15 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 < 0x17)
  {
    memset(v76, 0, sizeof(v76));
    v18 = v76;
    HIBYTE(v76[2]) = v15 + 13;
    if (!v15)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if ((v16 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v16 | 7) + 1;
    }

    v18 = operator new(v17);
    v76[1] = (v15 + 13);
    v76[2] = (v17 | 0x8000000000000000);
    v76[0] = v18;
  }

  if (v14 >= 0)
  {
    v19 = &v77;
  }

  else
  {
    v19 = v77.__r_.__value_.__r.__words[0];
  }

  memmove(v18, v19, v15);
LABEL_45:
  strcpy(v18 + v15, "-[[:alnum:]]*");
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v74[32] = v20;
  v75 = v20;
  *v74 = v20;
  *&v74[16] = v20;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v74, v76, 0);
  v71 = 0;
  v72 = 0;
  v73 = 0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v70 = v78;
  }

  std::locale::locale(&v64, v74);
  v65 = *&v74[8];
  v66 = *&v74[24];
  v67 = *&v74[40];
  v68 = v75;
  if (v75)
  {
    atomic_fetch_add_explicit((v75 + 8), 1uLL, memory_order_relaxed);
  }

  v69 = *(&v75 + 1);
  if (!support::fs::getFilteredFiles(&v70, &v64, &v71, 0))
  {
    v24 = v68;
    if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

    std::locale::~locale(&v64);
    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v70.__r_.__value_.__l.__data_);
    }

    goto LABEL_85;
  }

  v21 = v71;
  v22 = v72;
  v23 = v68;
  if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  std::locale::~locale(&v64);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
    if (v21 == v22)
    {
      goto LABEL_85;
    }
  }

  else if (v21 == v22)
  {
LABEL_85:
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }

    goto LABEL_138;
  }

  v25 = v71;
  v26 = v72;
  if (v71 != v72)
  {
    v27 = 0;
    while (1)
    {
      memset(__p, 170, 24);
      ctu::tokenize();
      memset(&v62, 170, sizeof(v62));
      if (*(__p[1] - 1) < 0)
      {
        std::string::__init_copy_ctor_external(&v62, *(__p[1] - 3), *(__p[1] - 2));
      }

      else
      {
        v29 = *(__p[1] - 24);
        v62.__r_.__value_.__r.__words[2] = *(__p[1] - 1);
        *&v62.__r_.__value_.__l.__data_ = v29;
      }

      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v62;
      }

      else
      {
        v30 = v62.__r_.__value_.__r.__words[0];
      }

      v31 = strtol(v30, 0, 0);
      if (v27 <= v31)
      {
        v27 = v31;
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
        v32 = __p[0];
        if (__p[0])
        {
LABEL_80:
          v33 = __p[1];
          v28 = v32;
          if (__p[1] != v32)
          {
            do
            {
              v34 = *(v33 - 1);
              v33 -= 3;
              if (v34 < 0)
              {
                operator delete(*v33);
              }
            }

            while (v33 != v32);
            v28 = __p[0];
          }

          __p[1] = v32;
          operator delete(v28);
        }
      }

      else
      {
        v32 = __p[0];
        if (__p[0])
        {
          goto LABEL_80;
        }
      }

      v25 += 3;
      if (v25 == v26)
      {
        goto LABEL_89;
      }
    }
  }

  v27 = 0;
LABEL_89:
  v35 = SHIBYTE(v79.__r_.__value_.__r.__words[2]);
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v36 = v79.__r_.__value_.__l.__size_;
  }

  v37 = v36 + 1;
  if (v36 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v37 < 0x17)
  {
    memset(&v62, 0, sizeof(v62));
    v39 = &v62;
    *(&v62.__r_.__value_.__s + 23) = v36 + 1;
    if (!v36)
    {
      goto LABEL_103;
    }
  }

  else
  {
    if ((v37 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v37 | 7) + 1;
    }

    v39 = operator new(v38);
    v62.__r_.__value_.__l.__size_ = v36 + 1;
    v62.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
    v62.__r_.__value_.__r.__words[0] = v39;
  }

  if (v35 >= 0)
  {
    v40 = &v79;
  }

  else
  {
    v40 = v79.__r_.__value_.__r.__words[0];
  }

  memmove(v39, v40, v36);
LABEL_103:
  *&v39[v36] = 45;
  std::to_string(&v61, v27);
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &v61;
  }

  else
  {
    v41 = v61.__r_.__value_.__r.__words[0];
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v61.__r_.__value_.__l.__size_;
  }

  v43 = std::string::append(&v62, v41, v42);
  v44 = *&v43->__r_.__value_.__l.__data_;
  __p[2] = v43->__r_.__value_.__r.__words[2];
  *__p = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  v45 = SHIBYTE(__p[2]);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    v45 = __p[1];
    v48 = __p[2] & 0x7FFFFFFFFFFFFFFFLL;
    v47 = (__p[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v47 == __p[1])
    {
      if (v48 == 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v46 = __p[0];
      if (v47 > 0x3FFFFFFFFFFFFFF2)
      {
        v51 = 0;
LABEL_124:
        v52 = operator new(v13);
        v53 = v52;
        if (v47)
        {
          memmove(v52, v46, v47);
        }

        v53[v47] = 47;
        if (!v51)
        {
          operator delete(v46);
        }

        __p[1] = v48;
        __p[2] = (v13 | 0x8000000000000000);
        __p[0] = v53;
        v54 = &v53[v48];
        goto LABEL_134;
      }

LABEL_115:
      v49 = 2 * v47;
      if (v48 > 2 * v47)
      {
        v49 = v48;
      }

      if ((v49 | 7) == 0x17)
      {
        v50 = 25;
      }

      else
      {
        v50 = (v49 | 7) + 1;
      }

      if (v49 >= 0x17)
      {
        v13 = v50;
      }

      else
      {
        v13 = 23;
      }

      v51 = v47 == 22;
      goto LABEL_124;
    }

    v46 = __p[0];
  }

  else
  {
    v46 = __p;
    if (SHIBYTE(__p[2]) == 22)
    {
      v47 = 22;
      v48 = 23;
      goto LABEL_115;
    }
  }

  *(v45 + v46) = 47;
  v55 = v45 + 1;
  if (SHIBYTE(__p[2]) < 0)
  {
    __p[1] = v55;
  }

  else
  {
    HIBYTE(__p[2]) = v55 & 0x7F;
  }

  v54 = &v55[v46];
LABEL_134:
  *v54 = 0;
  *&a2->__r_.__value_.__l.__data_ = *__p;
  a2->__r_.__value_.__r.__words[2] = __p[2];
  memset(__p, 0, 24);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

LABEL_138:
  v56 = v71;
  if (v71)
  {
    v57 = v72;
    v58 = v71;
    if (v72 != v71)
    {
      do
      {
        v59 = *(v57 - 1);
        v57 -= 3;
        if (v59 < 0)
        {
          operator delete(*v57);
        }
      }

      while (v57 != v56);
      v58 = v71;
    }

    v72 = v56;
    operator delete(v58);
  }

  v60 = v75;
  if (!v75 || atomic_fetch_add((v75 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    std::locale::~locale(v74);
    if ((SHIBYTE(v76[2]) & 0x80000000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_154;
  }

  (v60->__on_zero_shared)(v60);
  std::__shared_weak_count::__release_weak(v60);
  std::locale::~locale(v74);
  if (SHIBYTE(v76[2]) < 0)
  {
LABEL_154:
    operator delete(v76[0]);
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_155;
    }

LABEL_150:
    if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_151;
    }

LABEL_37:
    operator delete(v78.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_38:
    operator delete(v79.__r_.__value_.__l.__data_);
    return;
  }

LABEL_149:
  if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_150;
  }

LABEL_155:
  operator delete(v77.__r_.__value_.__l.__data_);
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_37;
  }

LABEL_151:
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_38;
  }
}

void sub_2975D5968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void **a41, uint64_t a42, uint64_t a43, std::locale a44)
{
  if (v44 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((a21 & 0x80000000) == 0)
      {
LABEL_9:
        std::vector<std::string>::~vector[abi:ne200100](&a41);
        std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a44);
        if (*(v45 - 161) < 0)
        {
          operator delete(*(v45 - 184));
          if ((*(v45 - 137) & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        else if ((*(v45 - 137) & 0x80000000) == 0)
        {
LABEL_11:
          if (*(v45 - 113) < 0)
          {
            goto LABEL_12;
          }

          goto LABEL_16;
        }

        operator delete(*(v45 - 160));
        if (*(v45 - 113) < 0)
        {
LABEL_12:
          operator delete(*(v45 - 136));
          if ((*(v45 - 89) & 0x80000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_17;
        }

LABEL_16:
        if ((*(v45 - 89) & 0x80000000) == 0)
        {
LABEL_13:
          _Unwind_Resume(a1);
        }

LABEL_17:
        operator delete(*(v45 - 112));
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a16);
      goto LABEL_9;
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

BOOL support::fs::getPartitionInfo(uint64_t a1, void *a2, void *a3, unint64_t *a4)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23))
    {
      memset(&v11, 0, sizeof(v11));
      v7 = statvfs(a1, &v11);
      result = v7 == 0;
      if (v7)
      {
        return result;
      }

LABEL_7:
      *a4 = v11.f_frsize;
      f_bavail = v11.f_bavail;
      *a2 = v11.f_blocks;
      *a3 = f_bavail;
      return result;
    }

    return 0;
  }

  if (!*(a1 + 8))
  {
    return 0;
  }

  memset(&v11, 0, sizeof(v11));
  v9 = statvfs(*a1, &v11);
  result = v9 == 0;
  if (!v9)
  {
    goto LABEL_7;
  }

  return result;
}

void *support::fs::readCurrentLine@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::istream::tellg();
  v4 = v11;
  if (v11 >= 2)
  {
    do
    {
      std::istream::seekg();
      if (std::istream::peek() == 10)
      {
        break;
      }
    }

    while (v4-- > 1);
  }

  std::istream::seekg();
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v6 = std::locale::use_facet(v10, MEMORY[0x29EDC93D0]);
  v7 = (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(v10);
  result = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a2, v7);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2975D5CEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__darwin_time_t support::fs::getFileCreationTime(const char *a1)
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v3.st_blksize = v1;
  *v3.st_qspare = v1;
  v3.st_birthtimespec = v1;
  *&v3.st_size = v1;
  v3.st_mtimespec = v1;
  v3.st_ctimespec = v1;
  *&v3.st_uid = v1;
  v3.st_atimespec = v1;
  *&v3.st_dev = v1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v3))
  {
    return 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    return v3.st_birthtimespec.tv_sec;
  }
}

void ___ZN7support2fsL16sGetOsLogContextEv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "supports.fs");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v11 = -86;
  MEMORY[0x29C271AB0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_2975D5F2C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2975D5EECLL);
  }

  __cxa_rethrow();
}

void BootModule::create(capabilities::radio *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  if (capabilities::radio::vendor(a1) != 1)
  {
    return;
  }

  v6 = operator new(0x270uLL);
  v7 = v6;
  v8 = *a1;
  v9 = *(a1 + 1);
  v17 = v8;
  v18 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a2;
  v11 = a2[1];
  v16[0] = v10;
  v16[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15[0] = 0;
  v15[1] = 0;
  BootModule::BootModule(v6, &v17, v16, v15);
  v12 = operator new(0x20uLL);
  v12->__shared_owners_ = 0;
  p_shared_owners = &v12->__shared_owners_;
  v12->__vftable = &unk_2A1E4B920;
  v12->__shared_weak_owners_ = 0;
  v12[1].__vftable = v7;
  v14 = *(v7 + 10);
  if (v14)
  {
    if (v14->__shared_owners_ != -1)
    {
      goto LABEL_12;
    }

    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v7 + 9) = v7;
    *(v7 + 10) = v12;
    std::__shared_weak_count::__release_weak(v14);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_12;
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v7 + 9) = v7;
    *(v7 + 10) = v12;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_12;
    }
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
LABEL_12:
  *a3 = v7;
  *(a3 + 8) = v12;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  BootModule::init(*a3);
}

void sub_2975D6184(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<BootModule> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModule>(BootModule*)::{lambda(BootModule*)#1}::operator() const(BootModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_2975D61AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  __cxa_end_catch();
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

void BootModule::init(BootModule *this)
{
  v5 = *(this + 9);
  v3 = *(this + 10);
  v4 = this + 72;
  if (!v3 || (v6 = std::__shared_weak_count::lock(v3)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN10BootModule4initEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_22_3;
  v11[4] = this;
  v11[5] = v5;
  v12 = v7;
  v13 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI10BootModuleE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_236;
  block[4] = v4;
  block[5] = &v13;
  v9 = *(this + 11);
  if (!*(this + 12))
  {
    dispatch_sync(v9, block);
    v10 = v12;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v9, block);
  v10 = v12;
  if (v12)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v7);
}

uint64_t BootModule::BootModule(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v7 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E500C0;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    std::__shared_weak_count::__release_weak(v8);
    *a1 = &unk_2A1E42AA8;
    std::__shared_weak_count::__release_weak(v8);
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    *a1 = &unk_2A1E42AA8;
  }

  *a1 = &unk_2A1E4B038;
  ctu::OsLogContext::OsLogContext(buf, "com.apple.telephony.abm", "boot.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v10 = dispatch_queue_create_with_target_V2("boot.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v10, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v10);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v10;
  if (v10)
  {
    dispatch_retain(v10);
    *(a1 + 96) = 0;
    dispatch_release(v10);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 104, &__dst);
  MEMORY[0x29C270D60](&__dst);
  ctu::OsLogContext::~OsLogContext(buf);
  *a1 = &unk_2A1E4B038;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 156) = 15;
  v11 = dispatch_semaphore_create(0);
  *(a1 + 232) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  *(a1 + 160) = v11;
  *(a1 + 194) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 176) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = -1;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0;
  *(a1 + 416) = -1;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0;
  config::hw::regionInfo(v11);
  *(a1 + 488) = dispatch_group_create();
  *(a1 + 496) = 0;
  v12 = (*(*a1 + 16))(a1);
  v13 = 0x7FFFFFFFFFFFFFF7;
  v14 = strlen(v12);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v14 | 7) + 1;
    }

    p_dst = operator new(v21);
    *(&__dst + 1) = v15;
    v83 = v21 | 0x8000000000000000;
    *&__dst = p_dst;
LABEL_19:
    memmove(p_dst, v12, v15);
    *(p_dst + v15) = 0;
    v17 = SHIBYTE(v83);
    if ((SHIBYTE(v83) & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  HIBYTE(v83) = v14;
  p_dst = &__dst;
  if (v14)
  {
    goto LABEL_19;
  }

  LOBYTE(__dst) = 0;
  v17 = SHIBYTE(v83);
  if ((SHIBYTE(v83) & 0x8000000000000000) == 0)
  {
LABEL_13:
    if (v17 - 12 < 0xB)
    {
      v18 = v17 + 11;
      v19 = &__dst;
      v20 = 22;
LABEL_23:
      v22 = 2 * v20;
      if (v18 > 2 * v20)
      {
        v22 = v18;
      }

      if ((v22 | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (v22 | 7) + 1;
      }

      if (v22 >= 0x17)
      {
        v24 = v23;
      }

      else
      {
        v24 = 23;
      }

      v25 = v20 == 22;
      goto LABEL_32;
    }

    v30 = &__dst;
LABEL_39:
    v31 = v30 + v17;
    *v31 = *".resetqueue";
    *(v31 + 7) = 1702192501;
    v32 = v17 + 11;
    if (SHIBYTE(v83) < 0)
    {
      *(&__dst + 1) = v17 + 11;
    }

    else
    {
      HIBYTE(v83) = v32 & 0x7F;
    }

    v29 = v30 + v32;
    goto LABEL_43;
  }

LABEL_20:
  v17 = *(&__dst + 1);
  v20 = (v83 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v20 - *(&__dst + 1) >= 0xB)
  {
    v30 = __dst;
    goto LABEL_39;
  }

  v18 = *(&__dst + 1) + 11;
  if (0x7FFFFFFFFFFFFFF7 - (v83 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 11 - v20)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = __dst;
  if (v20 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_23;
  }

  v25 = 0;
  v24 = 0x7FFFFFFFFFFFFFF7;
LABEL_32:
  v26 = operator new(v24);
  v27 = v26;
  if (v17)
  {
    memmove(v26, v19, v17);
  }

  v28 = &v27[v17];
  *v28 = *".resetqueue";
  *(v28 + 7) = 1702192501;
  if (!v25)
  {
    operator delete(v19);
  }

  *(&__dst + 1) = v18;
  v83 = v24 | 0x8000000000000000;
  *&__dst = v27;
  v29 = &v27[v18];
  v13 = 0x7FFFFFFFFFFFFFF7;
LABEL_43:
  *v29 = 0;
  v85 = v83;
  *buf = __dst;
  v83 = 0;
  __dst = 0uLL;
  if (v85 >= 0)
  {
    v33 = buf;
  }

  else
  {
    v33 = *buf;
  }

  v34 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v35 = dispatch_queue_create(v33, v34);
  *(a1 + 504) = v35;
  if (SHIBYTE(v85) < 0)
  {
    operator delete(*buf);
    if ((SHIBYTE(v83) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  else if ((SHIBYTE(v83) & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

  operator delete(__dst);
LABEL_48:
  *(a1 + 560) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 584) = *a4;
  v36 = a4[1];
  *(a1 + 592) = v36;
  if (v36)
  {
    atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 600) = -1;
  *(a1 + 608) = *a3;
  v37 = a3[1];
  *(a1 + 616) = v37;
  if (v37)
  {
    atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 188) = 0;
  *(a1 + 576) = 0;
  *(a1 + 184) = 0;
  *(a1 + 304) = 0;
  *(a1 + 152) = 0;
  *(a1 + 328) = 8;
  if (capabilities::abs::supportsLCDM(v35))
  {
    v38 = operator new(0x50uLL);
    lcdm::CrashDB::CrashDB(v38);
    *buf = v38;
    v39 = operator new(0x20uLL);
    *v39 = &unk_2A1E49308;
    *(v39 + 1) = 0;
    *(v39 + 2) = 0;
    *(v39 + 3) = v38;
    *(a1 + 560) = v38;
    v40 = *(a1 + 568);
    *(a1 + 568) = v39;
    if (!v40)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v39 = 0;
    *(a1 + 560) = 0;
    v40 = *(a1 + 568);
    *(a1 + 568) = 0;
    if (!v40)
    {
      goto LABEL_58;
    }
  }

  if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

LABEL_58:
  if (sys::isBootSessionChanged(v39))
  {
    v41 = *(a1 + 104);
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    if (v42)
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v41, OS_LOG_TYPE_DEFAULT, "#I Resetting baseband boot stats", buf, 2u);
    }

    *(a1 + 528) = 0;
    goto LABEL_99;
  }

  xdict = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (!qword_2A18CAEC8)
  {
    v44 = operator new(0x68uLL);
    HealthEventDB::HealthEventDB(v44);
    *&__dst = v44;
    v43 = operator new(0x20uLL);
    *v43 = &unk_2A1E46550;
    v43[1] = 0;
    v43[2] = 0;
    v43[3] = v44;
    v45 = off_2A18CAED0;
    qword_2A18CAEC8 = v44;
    off_2A18CAED0 = v43;
    if (!v45)
    {
      *buf = v44;
      *&buf[8] = v43;
      goto LABEL_72;
    }

    if (!atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v45->__on_zero_shared)(v45);
      std::__shared_weak_count::__release_weak(v45);
    }
  }

  v43 = off_2A18CAED0;
  *buf = qword_2A18CAEC8;
  *&buf[8] = off_2A18CAED0;
  if (off_2A18CAED0)
  {
LABEL_72:
    atomic_fetch_add_explicit(v43 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  HealthEventDB::getHealthInfo(*buf, &xdict);
  v46 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  value = xpc_dictionary_get_value(xdict, "KeyBasebandStats");
  v48 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v48 = xpc_null_create();
  }

  v49 = xpc_null_create();
  v50 = MEMORY[0x29EDCAA00];
  if (v48 && MEMORY[0x29C272BA0](v48) == v50)
  {
    xpc_retain(v48);
    v51 = v48;
  }

  else
  {
    v51 = xpc_null_create();
  }

  if (MEMORY[0x29C272BA0](v51) != v50)
  {
    if (v49)
    {
      xpc_retain(v49);
      v52 = v49;
    }

    else
    {
      v52 = xpc_null_create();
    }

    xpc_release(v51);
    v51 = v52;
  }

  xpc_release(v49);
  xpc_release(v48);
  if (MEMORY[0x29C272BA0](v51) != v50)
  {
    v53 = *(a1 + 104);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297476000, v53, OS_LOG_TYPE_ERROR, "Baseband boot stats not found", buf, 2u);
    }

    *(a1 + 528) = 0;
  }

  v54 = xpc_dictionary_get_value(v51, *MEMORY[0x29EDBF2C0]);
  *buf = v54;
  if (v54)
  {
    xpc_retain(v54);
  }

  else
  {
    *buf = xpc_null_create();
  }

  *(a1 + 528) = xpc::dyn_cast_or_default(buf, 0);
  xpc_release(*buf);
  v55 = xpc_dictionary_get_value(v51, *MEMORY[0x29EDBF2C8]);
  *buf = v55;
  if (v55)
  {
    xpc_retain(v55);
  }

  else
  {
    *buf = xpc_null_create();
  }

  *(a1 + 532) = xpc::dyn_cast_or_default(buf, 0);
  xpc_release(*buf);
  xpc_release(v51);
  xpc_release(xdict);
LABEL_99:
  capabilities::abs::supportedMobileAssetTypes(v42);
  v56 = capabilities::abs::operator&();
  if (v56 || (capabilities::abs::supportedMobileAssetTypes(v56), capabilities::abs::operator&()))
  {
    v57 = (*(*a1 + 16))(a1);
    v58 = strlen(v57);
    if (v58 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v59 = v58;
    if (v58 >= 0x17)
    {
      if ((v58 | 7) == 0x17)
      {
        v65 = 25;
      }

      else
      {
        v65 = (v58 | 7) + 1;
      }

      v60 = operator new(v65);
      *(&__dst + 1) = v59;
      v83 = v65 | 0x8000000000000000;
      *&__dst = v60;
    }

    else
    {
      HIBYTE(v83) = v58;
      v60 = &__dst;
      if (!v58)
      {
        LOBYTE(__dst) = 0;
        v61 = SHIBYTE(v83);
        if ((SHIBYTE(v83) & 0x8000000000000000) == 0)
        {
LABEL_105:
          if (v61 - 12 < 0xB)
          {
            v62 = v61 + 11;
            v63 = &__dst;
            v64 = 22;
            goto LABEL_115;
          }

          v73 = &__dst;
          goto LABEL_131;
        }

LABEL_112:
        v61 = *(&__dst + 1);
        v64 = (v83 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v64 - *(&__dst + 1) < 0xB)
        {
          v62 = *(&__dst + 1) + 11;
          if (0x7FFFFFFFFFFFFFF7 - (v83 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 11 - v64)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v63 = __dst;
          if (v64 >= 0x3FFFFFFFFFFFFFF3)
          {
            v68 = 0;
LABEL_124:
            v69 = operator new(v13);
            v70 = v69;
            if (v61)
            {
              memmove(v69, v63, v61);
            }

            v71 = &v70[v61];
            *v71 = *".assetqueue";
            *(v71 + 7) = 1702192501;
            if (!v68)
            {
              operator delete(v63);
            }

            *(&__dst + 1) = v62;
            v83 = v13 | 0x8000000000000000;
            *&__dst = v70;
            v72 = &v70[v62];
LABEL_135:
            *v72 = 0;
            v85 = v83;
            *buf = __dst;
            v83 = 0;
            __dst = 0uLL;
            if (v85 >= 0)
            {
              v76 = buf;
            }

            else
            {
              v76 = *buf;
            }

            v77 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
            v78 = dispatch_queue_create(v76, v77);
            v79 = *(a1 + 520);
            *(a1 + 520) = v78;
            if (v79)
            {
              dispatch_release(v79);
            }

            if (SHIBYTE(v85) < 0)
            {
              operator delete(*buf);
              if ((SHIBYTE(v83) & 0x80000000) == 0)
              {
                return a1;
              }
            }

            else if ((SHIBYTE(v83) & 0x80000000) == 0)
            {
              return a1;
            }

            operator delete(__dst);
            return a1;
          }

LABEL_115:
          v66 = 2 * v64;
          if (v62 > 2 * v64)
          {
            v66 = v62;
          }

          if ((v66 | 7) == 0x17)
          {
            v67 = 25;
          }

          else
          {
            v67 = (v66 | 7) + 1;
          }

          if (v66 >= 0x17)
          {
            v13 = v67;
          }

          else
          {
            v13 = 23;
          }

          v68 = v64 == 22;
          goto LABEL_124;
        }

        v73 = __dst;
LABEL_131:
        v74 = v73 + v61;
        *v74 = *".assetqueue";
        *(v74 + 7) = 1702192501;
        v75 = v61 + 11;
        if (SHIBYTE(v83) < 0)
        {
          *(&__dst + 1) = v61 + 11;
        }

        else
        {
          HIBYTE(v83) = v75 & 0x7F;
        }

        v72 = v73 + v75;
        goto LABEL_135;
      }
    }

    memmove(v60, v57, v59);
    *(v60 + v59) = 0;
    v61 = SHIBYTE(v83);
    if ((SHIBYTE(v83) & 0x8000000000000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_112;
  }

  return a1;
}

void sub_2975D6F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void **a11, void *a12, xpc_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, xpc_object_t object)
{
  std::unique_ptr<HealthEventDB>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  v24 = (v20 + 512);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v20 + 608);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v20 + 584);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v20 + 560);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v22);
  v25 = *(v20 + 520);
  if (v25)
  {
    dispatch_release(v25);
  }

  if (*v24)
  {
    dispatch_resume(*v24);
    if (*v24)
    {
      dispatch_release(*v24);
    }
  }

  v26 = *(v20 + 504);
  if (v26)
  {
    dispatch_release(v26);
  }

  v27 = *(v20 + 496);
  if (v27)
  {
    dispatch_group_leave(v27);
    v28 = *(v20 + 496);
    if (v28)
    {
      dispatch_release(v28);
    }
  }

  v29 = *(v20 + 488);
  if (v29)
  {
    dispatch_release(v29);
    if (*(v20 + 487) < 0)
    {
LABEL_13:
      operator delete(*(v21 + 296));
      if ((*(v20 + 447) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    }
  }

  else if (*(v20 + 487) < 0)
  {
    goto LABEL_13;
  }

  if ((*(v20 + 447) & 0x80000000) == 0)
  {
LABEL_14:
    if (*(v20 + 399) < 0)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(v21 + 256));
  if (*(v20 + 399) < 0)
  {
LABEL_15:
    operator delete(*(v21 + 208));
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v21 + 176);
    v30 = *(v21 + 168);
    if (!v30)
    {
      goto LABEL_22;
    }

LABEL_21:
    _Block_release(v30);
LABEL_22:
    if (*(v20 + 303) < 0)
    {
      operator delete(*(v20 + 280));
      if ((*(v20 + 279) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

    else if ((*(v20 + 279) & 0x80000000) == 0)
    {
LABEL_24:
      BootModule::MobileAssetUpdate::~MobileAssetUpdate(a11);
      v31 = *(v20 + 176);
      if (!v31)
      {
        goto LABEL_30;
      }

LABEL_28:
      dispatch_group_leave(v31);
      v32 = *(v20 + 176);
      if (v32)
      {
        dispatch_release(v32);
      }

LABEL_30:
      if (*v21)
      {
        dispatch_group_leave(*v21);
        if (*v21)
        {
          dispatch_release(*v21);
        }
      }

      v33 = *(v20 + 160);
      if (v33)
      {
        dispatch_release(v33);
      }

      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v21 - 32);
      if (*(v20 + 135) < 0)
      {
        operator delete(*a10);
      }

      MEMORY[0x29C270D60](v20 + 104);
      ctu::SharedSynchronizable<data::TransportService::State>::~SharedSynchronizable(a12);
      Service::~Service(v20);
      _Unwind_Resume(a1);
    }

    operator delete(*(v20 + 256));
    BootModule::MobileAssetUpdate::~MobileAssetUpdate(a11);
    v31 = *(v20 + 176);
    if (!v31)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_20:
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v21 + 176);
  v30 = *(v21 + 168);
  if (!v30)
  {
    goto LABEL_22;
  }

  goto LABEL_21;
}

BOOL BootModule::isPTMobileAssetSupported(BootModule *this)
{
  capabilities::abs::supportedMobileAssetTypes(this);
  v1 = capabilities::abs::operator&();
  if (v1)
  {
    return 1;
  }

  capabilities::abs::supportedMobileAssetTypes(v1);
  return capabilities::abs::operator&() != 0;
}

void BootModule::~BootModule(BootModule *this)
{
  *this = &unk_2A1E4B038;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v31, 2u);
  }

  v4 = *(this + 77);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 74);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 71);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 68);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 65);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 64);
  if (v9)
  {
    dispatch_resume(v9);
    v10 = *(this + 64);
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  v11 = *(this + 63);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(this + 62);
  if (v12)
  {
    dispatch_group_leave(v12);
    v13 = *(this + 62);
    if (v13)
    {
      dispatch_release(v13);
    }
  }

  v14 = *(this + 61);
  if (v14)
  {
    dispatch_release(v14);
  }

  if (*(this + 487) < 0)
  {
    operator delete(*(this + 58));
    if ((*(this + 447) & 0x80000000) == 0)
    {
LABEL_29:
      if ((*(this + 399) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_34:
      operator delete(*(this + 47));
      v15 = *(this + 44);
      if (!v15)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  else if ((*(this + 447) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  operator delete(*(this + 53));
  if (*(this + 399) < 0)
  {
    goto LABEL_34;
  }

LABEL_30:
  v15 = *(this + 44);
  if (!v15)
  {
LABEL_36:
    v16 = *(this + 42);
    if (!v16)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_35:
  if (atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_36;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  v16 = *(this + 42);
  if (v16)
  {
LABEL_37:
    _Block_release(v16);
  }

LABEL_38:
  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
    if ((*(this + 279) & 0x80000000) == 0)
    {
LABEL_40:
      if ((*(this + 255) & 0x80000000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_46;
    }
  }

  else if ((*(this + 279) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  operator delete(*(this + 32));
  if ((*(this + 255) & 0x80000000) == 0)
  {
LABEL_41:
    if ((*(this + 223) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_47:
    operator delete(*(this + 25));
    v17 = *(this + 22);
    if (!v17)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

LABEL_46:
  operator delete(*(this + 29));
  if (*(this + 223) < 0)
  {
    goto LABEL_47;
  }

LABEL_42:
  v17 = *(this + 22);
  if (!v17)
  {
    goto LABEL_50;
  }

LABEL_48:
  dispatch_group_leave(v17);
  v18 = *(this + 22);
  if (v18)
  {
    dispatch_release(v18);
  }

LABEL_50:
  v19 = *(this + 21);
  if (v19)
  {
    dispatch_group_leave(v19);
    v20 = *(this + 21);
    if (v20)
    {
      dispatch_release(v20);
    }
  }

  v21 = *(this + 20);
  if (v21)
  {
    dispatch_release(v21);
  }

  v22 = *(this + 18);
  if (!v22 || atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 135) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (*(this + 135) < 0)
  {
LABEL_58:
    operator delete(*(this + 14));
  }

LABEL_59:
  MEMORY[0x29C270D60](v2);
  v23 = *(this + 12);
  if (v23)
  {
    dispatch_release(v23);
  }

  v24 = *(this + 11);
  if (v24)
  {
    dispatch_release(v24);
  }

  v25 = *(this + 10);
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  *this = &unk_2A1E500C0;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v26 = *(this + 3);
  if (v26)
  {
    v27 = *(this + 4);
    v28 = *(this + 3);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 1);
        v27 -= 3;
        if (v29 < 0)
        {
          operator delete(*v27);
        }
      }

      while (v27 != v26);
      v28 = *(this + 3);
    }

    *(this + 4) = v26;
    operator delete(v28);
  }

  v30 = *(this + 2);
  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }
}

{
  BootModule::~BootModule(this);

  operator delete(v1);
}

void BootModule::changeState_sync(uint64_t a1, unsigned int a2)
{
  v43 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 104);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = *(a1 + 576);
    if (v6 > 8)
    {
      v7 = "Unknown";
      if (a2 > 8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = off_29EE6C3D8[v6];
      if (a2 > 8)
      {
LABEL_4:
        v8 = "Unknown";
LABEL_7:
        *buf = 136446466;
        *&buf[4] = v7;
        *&buf[12] = 2082;
        *&buf[14] = v8;
        _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I boot state changing %{public}s -> %{public}s", buf, 0x16u);
        goto LABEL_8;
      }
    }

    v8 = off_29EE6C3D8[a2];
    goto LABEL_7;
  }

LABEL_8:
  *(a1 + 576) = a2;
  if (!capabilities::ipc::supportsPCI(v5))
  {
    goto LABEL_43;
  }

  v9 = (a1 + 344);
  if (*(a1 + 576) - 3 > 1)
  {
    v19 = *(a1 + 352);
    *v9 = 0;
    *(a1 + 352) = 0;
    if (!v19 || atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_43;
    }

    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    if (!*(a1 + 176))
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (*v9)
    {
      goto LABEL_43;
    }

    v10 = *(a1 + 336);
    if (v10)
    {
      v10 = _Block_copy(v10);
    }

    aBlock = v10;
    pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
    v11 = off_2A18CAD88;
    if (!off_2A18CAD88)
    {
      ABMServer::create_default_global(buf);
      v12 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v13 = *(&off_2A18CAD88 + 1);
      off_2A18CAD88 = v12;
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v14 = *&buf[8];
      if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v11 = off_2A18CAD88;
    }

    v38 = v11;
    v39 = *(&off_2A18CAD88 + 1);
    if (*(&off_2A18CAD88 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A18CAD88 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
    v15 = *(*v11 + 144);
    pci::event::Listener::create();
    v16 = v41;
    v41 = 0uLL;
    v17 = *(a1 + 352);
    *v9 = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (*(&v41 + 1) && !atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v41 + 1) + 16))(*(&v41 + 1));
      std::__shared_weak_count::__release_weak(*(&v41 + 1));
    }

    if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v18 = *(a1 + 104);
    if (*(a1 + 344))
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_297476000, v18, OS_LOG_TYPE_DEFAULT, "#I Listening for PCI events", buf, 2u);
        if (!*(a1 + 176))
        {
          goto LABEL_49;
        }

        goto LABEL_44;
      }

LABEL_43:
      if (!*(a1 + 176))
      {
        goto LABEL_49;
      }

      goto LABEL_44;
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 0;
    _os_log_error_impl(&dword_297476000, v18, OS_LOG_TYPE_ERROR, "Could not create PCI event listener!", buf, 2u);
    if (!*(a1 + 176))
    {
      goto LABEL_49;
    }
  }

LABEL_44:
  v20 = *(a1 + 576);
  if (v20 != 4)
  {
    goto LABEL_50;
  }

  v21 = *(a1 + 104);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v21, OS_LOG_TYPE_DEFAULT, "#I Releasing shutdown request session", buf, 2u);
  }

  (*(*a1 + 104))(a1, 7);
  v22 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v22)
  {
    dispatch_group_leave(v22);
    dispatch_release(v22);
  }

LABEL_49:
  v20 = *(a1 + 576);
LABEL_50:
  if (v20 != 7)
  {
    goto LABEL_75;
  }

  *buf = 0;
  v23 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    *buf = Mutable;
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBF4A0], v23, v25);
  v26 = *MEMORY[0x29EDBF460];
  v27 = strlen(*MEMORY[0x29EDBF460]);
  if (v27 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v28 = v27;
  if (v27 >= 0x17)
  {
    if ((v27 | 7) == 0x17)
    {
      v31 = 25;
    }

    else
    {
      v31 = (v27 | 7) + 1;
    }

    v29 = operator new(v31);
    __dst[1] = v28;
    v37 = v31 | 0x8000000000000000;
    __dst[0] = v29;
  }

  else
  {
    HIBYTE(v37) = v27;
    v29 = __dst;
    if (!v27)
    {
      LOBYTE(__dst[0]) = 0;
      v30 = *buf;
      if (!*buf)
      {
        goto LABEL_65;
      }

      goto LABEL_63;
    }
  }

  memmove(v29, v26, v28);
  *(v28 + v29) = 0;
  v30 = *buf;
  if (!*buf)
  {
LABEL_65:
    cf = 0;
    goto LABEL_66;
  }

LABEL_63:
  v32 = CFGetTypeID(v30);
  if (v32 != CFDictionaryGetTypeID())
  {
    goto LABEL_65;
  }

  cf = v30;
  CFRetain(v30);
LABEL_66:
  v34 = 0;
  Service::broadcastEvent(a1, __dst, &cf, &v34);
  if (v34)
  {
    _Block_release(v34);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    if (!v30)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  operator delete(__dst[0]);
  if (v30)
  {
LABEL_74:
    CFRelease(v30);
  }

LABEL_75:
  v33 = *MEMORY[0x29EDCA608];
}

void sub_2975D7DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, void *aBlock, uint64_t a20, uint64_t a21, char a22)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(a1);
}

void BootModule::requestReset(void *a1, const ResetInfo *a2, uint64_t *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = a1[10];
  if (!v4 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v4)) == 0))
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

  if (!capabilities::abs::shouldIgnoreResets(v8))
  {
    v12 = a1[63];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_9_7;
    block[4] = a1;
    block[5] = v7;
    v17 = v9;
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    ResetInfo::ResetInfo(&v18, a2);
    v13 = *a3;
    if (*a3)
    {
      v13 = _Block_copy(v13);
    }

    aBlock = v13;
    dispatch_async(v12, block);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v24 < 0)
    {
      operator delete(__p);
      if ((v22 & 0x80000000) == 0)
      {
LABEL_19:
        if ((v20 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }
    }

    else if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    operator delete(v21);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_20:
      if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }

LABEL_25:
    operator delete(v19);
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_21:
      v14 = v17;
      if (!v17)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_26:
    operator delete(v18.__r_.__value_.__l.__data_);
    v14 = v17;
    if (!v17)
    {
      goto LABEL_28;
    }

LABEL_27:
    std::__shared_weak_count::__release_weak(v14);
    goto LABEL_28;
  }

  v10 = a1[13];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    ResetInfo::asString(a2, v26);
    v11 = v27 >= 0 ? v26 : v26[0];
    *buf = 136446210;
    v29 = v11;
    _os_log_impl(&dword_297476000, v10, OS_LOG_TYPE_DEFAULT, "#I Ignoring modem reset request: %{public}s", buf, 0xCu);
    if (v27 < 0)
    {
      operator delete(v26[0]);
      if (!*a3)
      {
        goto LABEL_28;
      }

      goto LABEL_12;
    }
  }

  if (*a3)
  {
LABEL_12:
    LODWORD(v26[0]) = 0;
    dispatch::block<void({block_pointer})(int,std::string)>::operator()<int,char const(&)[1]>(a3, v26, "");
  }

LABEL_28:
  std::__shared_weak_count::__release_weak(v9);
  v15 = *MEMORY[0x29EDCA608];
}

void ___ZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke(void *a1)
{
  v2 = a1[6];
  if (!v2)
  {
    return;
  }

  v3 = a1[4];
  v4 = std::__shared_weak_count::lock(v2);
  v21 = v4;
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (!a1[5])
  {
    goto LABEL_16;
  }

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_2;
  v9[3] = &__block_descriptor_tmp_38;
  v9[4] = v3;
  ResetInfo::ResetInfo(&v10, (a1 + 7));
  v6 = a1[21];
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v8 = a1[5];
  v7 = a1[6];
  aBlock = v6;
  v18 = v8;
  v19 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::SharedSynchronizable<BootModule>::execute_wrapped((v3 + 72), v9);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16 < 0)
  {
    operator delete(__p);
    if ((v14 & 0x80000000) == 0)
    {
LABEL_14:
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_20:
      operator delete(v11);
      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_16:
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }

LABEL_22:
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        return;
      }

      goto LABEL_21;
    }
  }

  else if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v13);
  if (v12 < 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  operator delete(v10.__r_.__value_.__l.__data_);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_22;
  }
}

void ___ZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_2(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 576);
  if (v3 > 8 || ((1 << v3) & 0x1C7) == 0)
  {
    v12 = *(v2 + 104);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      ResetInfo::asString((a1 + 40), &__p);
      v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v13;
      _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I Reset requested: %{public}s", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    (*(*v2 + 104))(v2, 1);
    *v65 = 0xAAAAAAAAAAAAAAAALL;
    v14 = xpc_dictionary_create(0, 0, 0);
    v15 = v14;
    if (v14)
    {
      *v65 = v14;
    }

    else
    {
      v15 = xpc_null_create();
      *v65 = v15;
      if (!v15)
      {
        v16 = xpc_null_create();
        v15 = 0;
        goto LABEL_37;
      }
    }

    if (MEMORY[0x29C272BA0](v15) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v15);
      goto LABEL_38;
    }

    v16 = xpc_null_create();
LABEL_37:
    *v65 = v16;
LABEL_38:
    xpc_release(v15);
    ResetInfo::addToDict((a1 + 40), v65);
    v21 = *v65;
    v64 = *v65;
    if (*v65)
    {
      xpc_retain(*v65);
    }

    else
    {
      v21 = xpc_null_create();
      v64 = v21;
    }

    BootModule::submitBBResetMetric_sync(v2, &v64);
    xpc_release(v21);
    v22 = *v65;
    v63 = *v65;
    v64 = 0;
    if (*v65)
    {
      xpc_retain(*v65);
    }

    else
    {
      v22 = xpc_null_create();
      v63 = v22;
    }

    BootModule::updateResetInfoAnalyticsEvent_sync(v2, &v63);
    xpc_release(v22);
    v63 = 0;
    if (*(a1 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      __p = *(a1 + 40);
    }

    v23 = *MEMORY[0x29EDBEB60];
    v24 = strlen(*MEMORY[0x29EDBEB60]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v24 != __p.__r_.__value_.__l.__size_)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((*(a1 + 63) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_57;
      }

      if (v24 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v25 = __p.__r_.__value_.__r.__words[0];
      v26 = memcmp(__p.__r_.__value_.__l.__data_, v23, v24);
      operator delete(v25);
      if (v26)
      {
LABEL_50:
        if ((*(a1 + 63) & 0x80000000) == 0)
        {
LABEL_51:
          __p = *(a1 + 40);
          goto LABEL_58;
        }

LABEL_57:
        std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
LABEL_58:
        v27 = *MEMORY[0x29EDBEB68];
        v28 = strlen(*MEMORY[0x29EDBEB68]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v28 == __p.__r_.__value_.__l.__size_)
          {
            if (v28 == -1)
            {
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            v29 = __p.__r_.__value_.__r.__words[0];
            v30 = memcmp(__p.__r_.__value_.__l.__data_, v27, v28);
            operator delete(v29);
            if (!v30)
            {
              goto LABEL_65;
            }
          }

          else
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else if (v28 == SHIBYTE(__p.__r_.__value_.__r.__words[2]) && !memcmp(&__p, v27, v28))
        {
LABEL_65:
          BootModule::reportStatisticsSoftReset_sync(v2);
        }

LABEL_67:
        *(v2 + 194) = 0;
        memset(&buf, 170, 16);
        (*(*v2 + 88))(&buf, v2);
        if (!buf.__r_.__value_.__r.__words[0])
        {
LABEL_102:
          size = buf.__r_.__value_.__l.__size_;
          if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (size->__on_zero_shared)(size);
            std::__shared_weak_count::__release_weak(size);
          }

          xpc_release(*v65);
          goto LABEL_106;
        }

        Registry::getAdaptiveTimerService(&__p, *(v2 + 608));
        v31 = *&__p.__r_.__value_.__l.__data_;
        if (__p.__r_.__value_.__l.__size_ && !atomic_fetch_add((__p.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(**(&v31 + 1) + 16))(*(&v31 + 1));
          std::__shared_weak_count::__release_weak(*(&v31 + 1));
        }

        if (v31)
        {
          Registry::getAdaptiveTimerService(&__p, *(v2 + 608));
          ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
          v33 = __p.__r_.__value_.__l.__size_;
          if (__p.__r_.__value_.__l.__size_ && !atomic_fetch_add((__p.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            v34 = ScaledTime;
            (v33->__on_zero_shared)(v33);
            std::__shared_weak_count::__release_weak(v33);
            ScaledTime = v34;
          }

          v35 = ScaledTime / 1000;
        }

        else
        {
          v35 = 360000;
        }

        object = 0xAAAAAAAAAAAAAAAALL;
        v36 = buf.__r_.__value_.__r.__words[0];
        v37 = operator new(0x38uLL);
        strcpy(v37, "com.apple.AppleBasebandManager.RadioNotReady.Bootup");
        v38 = *(v36 + 48);
        std::string::__init_copy_ctor_external(&__p, v37, 0x33uLL);
        (*(*v38 + 24))(&object, v38, &__p, v35);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        operator delete(v37);
        v40 = *(a1 + 160);
        v39 = *(a1 + 168);
        __p.__r_.__value_.__r.__words[0] = v2;
        __p.__r_.__value_.__l.__size_ = v40;
        __p.__r_.__value_.__r.__words[2] = v39;
        if (v39)
        {
          atomic_fetch_add_explicit((v39 + 16), 1uLL, memory_order_relaxed);
        }

        ResetInfo::ResetInfo(&v53, (a1 + 40));
        v41 = *(a1 + 152);
        if (v41)
        {
          v41 = _Block_copy(v41);
        }

        aBlock = v41;
        v61 = object;
        if (object)
        {
          dispatch_retain(object);
          v42 = object;
        }

        else
        {
          v42 = 0;
        }

        v43 = *(v2 + 88);
        v44 = operator new(0x98uLL);
        v45 = v44;
        *&v44->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
        v46 = __p.__r_.__value_.__r.__words[2];
        v44->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
        if (v46)
        {
          atomic_fetch_add_explicit((v46 + 16), 1uLL, memory_order_relaxed);
        }

        ResetInfo::ResetInfo(v44 + 1, &v53);
        v47 = aBlock;
        if (aBlock)
        {
          v47 = _Block_copy(aBlock);
        }

        v48 = v61;
        v45[5].__words[2] = v47;
        v45[6].__words[0] = v48;
        v61 = 0;
        dispatch_group_notify_f(v42, v43, v45, _ZZN8dispatch6detail12group_notifyIZZZN10BootModule12requestResetE9ResetInfoNS_5blockIU13block_pointerFviNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEEUb_EUb0_E3__0EEvP16dispatch_group_sP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEEENUlPvE_8__invokeESO_);
        if (v61)
        {
          dispatch_release(v61);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v59 < 0)
        {
          operator delete(v58);
          if ((v57 & 0x80000000) == 0)
          {
LABEL_96:
            if ((v55 & 0x80000000) == 0)
            {
              goto LABEL_97;
            }

            goto LABEL_109;
          }
        }

        else if ((v57 & 0x80000000) == 0)
        {
          goto LABEL_96;
        }

        operator delete(v56);
        if ((v55 & 0x80000000) == 0)
        {
LABEL_97:
          if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_98;
          }

          goto LABEL_110;
        }

LABEL_109:
        operator delete(v54);
        if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_98:
          v49 = __p.__r_.__value_.__r.__words[2];
          if (!__p.__r_.__value_.__r.__words[2])
          {
            goto LABEL_100;
          }

          goto LABEL_99;
        }

LABEL_110:
        operator delete(v53.__r_.__value_.__l.__data_);
        v49 = __p.__r_.__value_.__r.__words[2];
        if (!__p.__r_.__value_.__r.__words[2])
        {
LABEL_100:
          if (object)
          {
            dispatch_release(object);
          }

          goto LABEL_102;
        }

LABEL_99:
        std::__shared_weak_count::__release_weak(v49);
        goto LABEL_100;
      }
    }

    else if (v24 != SHIBYTE(__p.__r_.__value_.__r.__words[2]) || memcmp(&__p, v23, v24))
    {
      goto LABEL_50;
    }

    BootModule::reportStatisticsHardResetTime_sync(v2);
    goto LABEL_67;
  }

  v5 = v3;
  __p.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&__p.__r_.__value_.__r.__words[1] = xmmword_2976A1080;
  strcpy(__p.__r_.__value_.__l.__data_, "Reset rejected; Boot state is: ");
  v6 = off_29EE6C3D8[v5];
  v7 = strlen(v6);
  v8 = std::string::append(&__p, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  buf.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&buf.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = *(v2 + 104);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v17 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    v18 = buf.__r_.__value_.__r.__words[0];
    ResetInfo::asString((a1 + 40), &__p);
    p_buf = &buf;
    if (v17 < 0)
    {
      p_buf = v18;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *v65 = 136315394;
    *&v65[4] = p_buf;
    v66 = 2080;
    v67 = p_p;
    _os_log_debug_impl(&dword_297476000, v10, OS_LOG_TYPE_DEBUG, "#D %s; %s", v65, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v11 = *(a1 + 152);
  if (v11)
  {
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = buf;
    }

    (*(v11 + 16))(v11, 3760250880, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_14;
    }
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_14:
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_106:
  v51 = *MEMORY[0x29EDCA608];
}

void sub_2975D8C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, dispatch_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BootModule::submitBBResetMetric_sync(uint64_t a1, xpc_object_t *a2)
{
  v4 = MEMORY[0x29C272BA0](*a2);
  v5 = MEMORY[0x29EDCAA00];
  v6 = *(a1 + 104);
  if (v4 != MEMORY[0x29EDCAA00])
  {
    if (os_log_type_enabled(*(a1 + 104), OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "No input is given", buf, 2u);
    }

    return;
  }

  if (os_log_type_enabled(*(a1 + 104), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Submitting AWD of baseband reset", buf, 2u);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v7) == v5)
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
  v9 = xpc_BOOL_create(*(a1 + 360));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE5A8], v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  v11 = xpc_int64_create(*(a1 + 368));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF890], v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = xpc_int64_create(*(a1 + 416));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF898], v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = (a1 + 376);
  if (*(a1 + 399) < 0)
  {
    v15 = *v15;
  }

  v16 = xpc_string_create(v15);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF8D0], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = (a1 + 424);
  if (*(a1 + 447) < 0)
  {
    v18 = *v18;
  }

  v19 = xpc_string_create(v18);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF8D8], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  v21 = (a1 + 464);
  if (*(a1 + 487) < 0)
  {
    v21 = *v21;
  }

  v22 = xpc_string_create(v21);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF888], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  v24 = xpc_int64_create(*(a1 + 328));
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE548], v24);
  v25 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v25);
  v26 = xpc_string_create(*MEMORY[0x29EDBF880]);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE588], v26);
  v27 = xpc_null_create();
  xpc_release(v26);
  xpc_release(v27);
  v28 = xpc_int64_create(524310);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE660], v28);
  v29 = xpc_null_create();
  xpc_release(v28);
  xpc_release(v29);
  v30 = *a2;
  if (v30)
  {
    xpc_retain(v30);
  }

  else
  {
    v30 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE580], v30);
  v31 = xpc_null_create();
  xpc_release(v30);
  xpc_release(v31);
  v32 = *MEMORY[0x29EDBEBD0];
  v33 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v33 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v34 = v33;
  if (v33 >= 0x17)
  {
    if ((v33 | 7) == 0x17)
    {
      v36 = 25;
    }

    else
    {
      v36 = (v33 | 7) + 1;
    }

    v35 = operator new(v36);
    v40 = v34;
    v41 = v36 | 0x8000000000000000;
    *buf = v35;
LABEL_48:
    memmove(v35, v32, v34);
    *(v35 + v34) = 0;
    object = v8;
    if (v8)
    {
      goto LABEL_43;
    }

LABEL_49:
    object = xpc_null_create();
    goto LABEL_50;
  }

  HIBYTE(v41) = v33;
  v35 = buf;
  if (v33)
  {
    goto LABEL_48;
  }

  buf[0] = 0;
  object = v8;
  if (!v8)
  {
    goto LABEL_49;
  }

LABEL_43:
  xpc_retain(v8);
LABEL_50:
  v37 = 0;
  Service::runCommand(a1, buf, &object, &v37);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v8);
}

void sub_2975D9300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

void BootModule::updateResetInfoAnalyticsEvent_sync(uint64_t a1, xpc_object_t *a2)
{
  v191[2] = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29C272BA0](*a2);
  v5 = MEMORY[0x29EDCAA00];
  v6 = *(a1 + 104);
  if (v4 != MEMORY[0x29EDCAA00])
  {
    if (os_log_type_enabled(*(a1 + 104), OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "No input is given", &buf, 2u);
    }

    goto LABEL_282;
  }

  if (os_log_type_enabled(*(a1 + 104), OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Updating Analytics metric of baseband reset", &buf, 2u);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v7) == v5)
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
  v9 = xpc_dictionary_create(0, 0, 0);
  if (v9 || (v9 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v9) == v5)
    {
      xpc_retain(v9);
      v10 = v9;
    }

    else
    {
      v10 = xpc_null_create();
    }
  }

  else
  {
    v10 = xpc_null_create();
    v9 = 0;
  }

  xpc_release(v9);
  v11 = xpc_BOOL_create(*(a1 + 360));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "inVoiceCall", v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = xpc_int64_create(*(a1 + 368));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "rat", v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = xpc_int64_create(*(a1 + 416));
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "rat2", v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = (a1 + 376);
  if (*(a1 + 399) < 0)
  {
    v17 = *v17;
  }

  v18 = xpc_string_create(v17);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "PLMN", v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = (a1 + 424);
  if (*(a1 + 447) < 0)
  {
    v20 = *v20;
  }

  v21 = xpc_string_create(v20);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "PLMN2", v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = *(a1 + 400);
  if (v23)
  {
    v24 = xpc_uint64_create(v23);
    if (!v24)
    {
      v24 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "cellId", v24);
    v25 = xpc_null_create();
    xpc_release(v24);
    xpc_release(v25);
  }

  v26 = *(a1 + 448);
  if (v26)
  {
    v27 = xpc_uint64_create(v26);
    if (!v27)
    {
      v27 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "cellId2", v27);
    v28 = xpc_null_create();
    xpc_release(v27);
    xpc_release(v28);
  }

  v29 = *(a1 + 408);
  if (v29)
  {
    v30 = xpc_uint64_create(v29);
    if (!v30)
    {
      v30 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "tac", v30);
    v31 = xpc_null_create();
    xpc_release(v30);
    xpc_release(v31);
  }

  v32 = *(a1 + 456);
  if (v32)
  {
    v33 = xpc_uint64_create(v32);
    if (!v33)
    {
      v33 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "tac2", v33);
    v34 = xpc_null_create();
    xpc_release(v33);
    xpc_release(v34);
  }

  v35 = (a1 + 464);
  if (*(a1 + 487) < 0)
  {
    v35 = *v35;
  }

  v36 = xpc_string_create(v35);
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "sku", v36);
  v37 = xpc_null_create();
  xpc_release(v36);
  xpc_release(v37);
  v38 = xpc_int64_create(*(a1 + 328));
  if (!v38)
  {
    v38 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "operatingMode", v38);
  v39 = xpc_null_create();
  xpc_release(v38);
  xpc_release(v39);
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBED80]);
  *&buf = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v41 = xpc::dyn_cast_or_default(&buf, 0);
  xpc_release(buf);
  is_transcription_pending = util::apfs::is_transcription_pending(v42);
  v44 = xpc_BOOL_create((is_transcription_pending ^ 1u) & v41);
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "isMTBF", v44);
  v45 = xpc_null_create();
  xpc_release(v44);
  xpc_release(v45);
  memset(__s1, 170, sizeof(__s1));
  v46 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEEE0]);
  *&buf = v46;
  if (v46)
  {
    xpc_retain(v46);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__s1, &buf, *MEMORY[0x29EDBF5C8], v47);
  xpc_release(buf);
  if (is_transcription_pending)
  {
    v48 = *(a1 + 104);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_297476000, v48, OS_LOG_TYPE_DEFAULT, "#I APFS transcription is pending", &buf, 2u);
    }

    if (v41)
    {
      v49 = *(a1 + 104);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_297476000, v49, OS_LOG_TYPE_DEFAULT, "#I Downgrading Baseband Reset MTBF metric because APFS transcription is pending", &buf, 2u);
      }
    }
  }

  if (__s1[2] >= 0)
  {
    v50 = __s1;
  }

  else
  {
    v50 = __s1[0];
  }

  v51 = xpc_string_create(v50);
  if (!v51)
  {
    v51 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "resetType", v51);
  v52 = xpc_null_create();
  xpc_release(v51);
  xpc_release(v52);
  v53 = strlen(*MEMORY[0x29EDBF6D8]);
  v54 = v53;
  v55 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
  {
    if (v53 != -1)
    {
      v56 = __s1;
      goto LABEL_78;
    }

LABEL_283:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v53 == -1)
  {
    goto LABEL_283;
  }

  v56 = __s1[0];
  v55 = __s1[1];
LABEL_78:
  if (v55 >= v54)
  {
    v57 = v54;
  }

  else
  {
    v57 = v55;
  }

  if (!memcmp(v56, *MEMORY[0x29EDBF6D8], v57) && v55 == v54)
  {
    v58 = xpc_string_create(*MEMORY[0x29EDBE918]);
    if (!v58)
    {
      v58 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE9B0], v58);
    v59 = xpc_null_create();
    xpc_release(v58);
    xpc_release(v59);
    goto LABEL_246;
  }

  memset(&v180, 170, sizeof(v180));
  v60 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBED88]);
  *&buf = v60;
  if (v60)
  {
    xpc_retain(v60);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&v180, &buf, "no-reset-reason", v61);
  xpc_release(buf);
  memset(&__str, 170, sizeof(__str));
  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v180.__r_.__value_.__l.__data_, v180.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = v180;
  }

  v62 = *MEMORY[0x29EDBF750];
  v63 = strlen(*MEMORY[0x29EDBF750]);
  v64 = v63;
  v65 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v63 != -1)
    {
      v65 = __s1[1];
      if (__s1[1] >= v63)
      {
        v68 = v63;
      }

      else
      {
        v68 = __s1[1];
      }

      v67 = memcmp(__s1[0], v62, v68);
      if (v67)
      {
        goto LABEL_232;
      }

      goto LABEL_104;
    }

LABEL_285:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v63 == -1)
  {
    goto LABEL_285;
  }

  if (SHIBYTE(__s1[2]) >= v63)
  {
    v66 = v63;
  }

  else
  {
    v66 = SHIBYTE(__s1[2]);
  }

  v67 = memcmp(__s1, v62, v66);
  if (v67)
  {
    goto LABEL_232;
  }

LABEL_104:
  if (v65 == v64)
  {
    v69 = capabilities::radio::maverick(v67);
    if (v69)
    {
      *&v70 = 0xAAAAAAAAAAAAAAAALL;
      *(&v70 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v177 = v70;
      v178 = v70;
      v175 = v70;
      v176 = v70;
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v175, "(ATCS_TIMEOUT on message for svc=[0-9]*)(client=[0-9]*).*(txid=[0-9]*)(msgid=0x[a-zA-Z0-9]*)\\)(.*)", 0);
      *&v71 = 0xAAAAAAAAAAAAAAAALL;
      *(&v71 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v170 = 0xAAAAAAAAAAAAAA00;
      v167[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
      v173 = v71;
      v168 = 0;
      v169 = 0;
      v171 = 0;
      v172 = 0;
      LOBYTE(v173) = 0;
      BYTE8(v173) = 0;
      v174 = 0;
      memset(v167, 0, 41);
      v186 = 0xAAAAAAAAAAAAAA00;
      *(&v183[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v189 = v71;
      v184 = 0;
      v185 = 0;
      v187 = 0;
      v188 = 0;
      LOBYTE(v189) = 0;
      BYTE8(v189) = 0;
      v190 = 0;
      buf = 0u;
      v183[0] = 0u;
      size = HIBYTE(v180.__r_.__value_.__r.__words[2]);
      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = &v180;
      }

      else
      {
        v73 = v180.__r_.__value_.__r.__words[0];
      }

      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v180.__r_.__value_.__l.__size_;
      }

      *(v183 + 9) = 0uLL;
      v74 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&v175, v73, (v73 + size), &buf, 0);
      v75 = HIBYTE(v180.__r_.__value_.__r.__words[2]);
      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v76 = &v180;
      }

      else
      {
        v76 = v180.__r_.__value_.__r.__words[0];
      }

      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v75 = v180.__r_.__value_.__l.__size_;
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v167, v76, (v76 + v75), &buf, 0);
      if (buf)
      {
        *(&buf + 1) = buf;
        operator delete(buf);
      }

      if (!v74)
      {
        goto LABEL_226;
      }

      begin = v167[0].__begin_;
      v78 = 0xAAAAAAAAAAAAAAABLL * ((v167[0].__end_ - v167[0].__begin_) >> 3);
      if (v78 <= 1)
      {
        v79 = v167;
      }

      else
      {
        v79 = v167[0].__begin_;
      }

      if (v79[1].matched)
      {
        if (v78 <= 1)
        {
          v80 = v167;
        }

        else
        {
          v80 = v167[0].__begin_;
        }

        i = v80[1].first.__i_;
        v82 = v80[1].second.__i_;
        v83 = v82 - i;
        if ((v82 - i) > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v83 > 0x16)
        {
          if ((v83 | 7) == 0x17)
          {
            v93 = 25;
          }

          else
          {
            v93 = (v83 | 7) + 1;
          }

          v157 = v93;
          p_dst = operator new(v93);
          __dst.__r_.__value_.__l.__size_ = v82 - i;
          __dst.__r_.__value_.__r.__words[2] = v157 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = p_dst;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v82 - i;
          p_dst = &__dst;
        }

        if (v82 != i)
        {
          memmove(p_dst, i, v82 - i);
        }

        p_dst->__r_.__value_.__s.__data_[v83] = 0;
        v5 = MEMORY[0x29EDCAA00];
      }

      else
      {
        memset(&__dst, 0, sizeof(__dst));
      }

      p_matched = &begin[4].matched;
      if (v78 <= 4)
      {
        p_matched = &v167[1].__end_cap_;
      }

      if (LOBYTE(p_matched->__value_) == 1)
      {
        v95 = &begin[4];
        if (v78 <= 4)
        {
          v95 = &v167[1];
        }

        v96 = v95->__begin_;
        p_second = &begin[4].second;
        if (v78 <= 4)
        {
          p_second = &v167[1].__end_;
        }

        v98 = *p_second;
        v99 = *p_second - v96;
        if (v99 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v99 > 0x16)
        {
          if ((v99 | 7) == 0x17)
          {
            v104 = 25;
          }

          else
          {
            v104 = (v99 | 7) + 1;
          }

          v100 = operator new(v104);
          v164 = v99;
          v165 = v104 | 0x8000000000000000;
          v163 = v100;
        }

        else
        {
          HIBYTE(v165) = *p_second - v96;
          v100 = &v163;
        }

        if (v98 != v96)
        {
          memmove(v100, v96, v99);
        }

        *(v100 + v99) = 0;
        v103 = HIBYTE(v165);
        v102 = v163;
        v101 = v164;
      }

      else
      {
        v101 = 0;
        v102 = 0;
        v103 = 0;
        v163 = 0;
        v164 = 0;
        v165 = 0;
      }

      if ((v103 & 0x80u) == 0)
      {
        v105 = &v163;
      }

      else
      {
        v105 = v102;
      }

      if ((v103 & 0x80u) == 0)
      {
        v106 = v103;
      }

      else
      {
        v106 = v101;
      }

      v107 = std::string::append(&__dst, v105, v106);
      v108 = *&v107->__r_.__value_.__l.__data_;
      *&v183[0] = *(&v107->__r_.__value_.__l + 2);
      buf = v108;
      v107->__r_.__value_.__l.__size_ = 0;
      v107->__r_.__value_.__r.__words[2] = 0;
      v107->__r_.__value_.__r.__words[0] = 0;
      v109 = 0xAAAAAAAAAAAAAAABLL * ((v167[0].__end_ - v167[0].__begin_) >> 3);
      p_end_cap = &v167[0].__begin_[5].matched;
      if (v109 <= 5)
      {
        p_end_cap = &v167[1].__end_cap_;
      }

      if (LOBYTE(p_end_cap->__value_) == 1)
      {
        v111 = v109 > 5;
        if (v109 <= 5)
        {
          v112 = &v167[1];
        }

        else
        {
          v112 = v167[0].__begin_ + 5;
        }

        v113 = v112->first.__i_;
        p_end = &v167[0].__begin_[5].second;
        if (!v111)
        {
          p_end = &v167[1].__end_;
        }

        v115 = *p_end;
        v116 = *p_end - v113;
        if (v116 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v116 > 0x16)
        {
          if ((v116 | 7) == 0x17)
          {
            v121 = 25;
          }

          else
          {
            v121 = (v116 | 7) + 1;
          }

          p_p = operator new(v121);
          v161 = v116;
          v162 = v121 | 0x8000000000000000;
          __p = p_p;
        }

        else
        {
          HIBYTE(v162) = *p_end - v113;
          p_p = &__p;
        }

        if (v115 != v113)
        {
          memmove(p_p, v113, v116);
        }

        *(p_p + v116) = 0;
        v120 = HIBYTE(v162);
        v119 = __p;
        v118 = v161;
      }

      else
      {
        v118 = 0;
        v119 = 0;
        v120 = 0;
        __p = 0;
        v161 = 0;
        v162 = 0;
      }

      if ((v120 & 0x80u) == 0)
      {
        v122 = &__p;
      }

      else
      {
        v122 = v119;
      }

      if ((v120 & 0x80u) == 0)
      {
        v123 = v120;
      }

      else
      {
        v123 = v118;
      }

      v124 = std::string::append(&buf, v122, v123);
      v125 = v124->__r_.__value_.__r.__words[0];
      v191[0] = v124->__r_.__value_.__l.__size_;
      *(v191 + 7) = *(&v124->__r_.__value_.__r.__words[1] + 7);
      v126 = HIBYTE(v124->__r_.__value_.__r.__words[2]);
      v124->__r_.__value_.__l.__size_ = 0;
      v124->__r_.__value_.__r.__words[2] = 0;
      v124->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str.__r_.__value_.__r.__words[0] = v125;
      __str.__r_.__value_.__l.__size_ = v191[0];
      *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v191 + 7);
      *(&__str.__r_.__value_.__s + 23) = v126;
      if (SHIBYTE(v162) < 0)
      {
        operator delete(__p);
        if ((SBYTE7(v183[0]) & 0x80000000) == 0)
        {
LABEL_209:
          if ((SHIBYTE(v165) & 0x80000000) == 0)
          {
            goto LABEL_210;
          }

          goto LABEL_216;
        }
      }

      else if ((SBYTE7(v183[0]) & 0x80000000) == 0)
      {
        goto LABEL_209;
      }

      operator delete(buf);
      if ((SHIBYTE(v165) & 0x80000000) == 0)
      {
LABEL_210:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_211;
        }

        goto LABEL_217;
      }

LABEL_216:
      operator delete(v163);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_211:
        v127 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_212;
        }

        goto LABEL_218;
      }

LABEL_217:
      operator delete(__dst.__r_.__value_.__l.__data_);
      v127 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_212:
        if ((v127 & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(&v180, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        }

        else
        {
          v180 = __str;
        }

LABEL_226:
        if (v167[0].__begin_)
        {
          v167[0].__end_ = v167[0].__begin_;
          operator delete(v167[0].__begin_);
        }

        v130 = v178;
        if (v178 && !atomic_fetch_add((v178 + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v130->__on_zero_shared)(v130);
          std::__shared_weak_count::__release_weak(v130);
        }

        std::locale::~locale(&v175);
        goto LABEL_232;
      }

LABEL_218:
      if ((v127 & 0x80u) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((v127 & 0x80u) == 0)
      {
        v129 = v127;
      }

      else
      {
        v129 = __str.__r_.__value_.__l.__size_;
      }

      std::string::__assign_no_alias<false>(&v180.__r_.__value_.__l.__data_, p_str, v129);
      goto LABEL_226;
    }

    if (capabilities::radio::ice(v69))
    {
      *&v85 = 0xAAAAAAAAAAAAAAAALL;
      *(&v85 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v177 = v85;
      v178 = v85;
      v175 = v85;
      v176 = v85;
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v175, "(.*ARI_TIMEOUT -.*)( SZ\\([0-9]*\\).*)", 0);
      *&v86 = 0xAAAAAAAAAAAAAAAALL;
      *(&v86 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v170 = 0xAAAAAAAAAAAAAA00;
      v167[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
      v173 = v86;
      v168 = 0;
      v169 = 0;
      v171 = 0;
      v172 = 0;
      LOBYTE(v173) = 0;
      BYTE8(v173) = 0;
      v174 = 0;
      memset(v167, 0, 41);
      v186 = 0xAAAAAAAAAAAAAA00;
      *(&v183[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v189 = v86;
      v184 = 0;
      v185 = 0;
      v187 = 0;
      v188 = 0;
      LOBYTE(v189) = 0;
      BYTE8(v189) = 0;
      v190 = 0;
      buf = 0u;
      v183[0] = 0u;
      v87 = HIBYTE(v180.__r_.__value_.__r.__words[2]);
      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v88 = &v180;
      }

      else
      {
        v88 = v180.__r_.__value_.__r.__words[0];
      }

      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v87 = v180.__r_.__value_.__l.__size_;
      }

      *(v183 + 9) = 0uLL;
      v89 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&v175, v88, (v88 + v87), &buf, 0);
      v90 = HIBYTE(v180.__r_.__value_.__r.__words[2]);
      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v91 = &v180;
      }

      else
      {
        v91 = v180.__r_.__value_.__r.__words[0];
      }

      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v90 = v180.__r_.__value_.__l.__size_;
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v167, v91, (v91 + v90), &buf, 0);
      if (buf)
      {
        *(&buf + 1) = buf;
        operator delete(buf);
      }

      if (v89)
      {
        v92 = v167;
        if (0xAAAAAAAAAAAAAAABLL * ((v167[0].__end_ - v167[0].__begin_) >> 3) > 1)
        {
          v92 = v167[0].__begin_;
        }

        std::sub_match<std::__wrap_iter<char const*>>::str[abi:ne200100](&buf, &v92[1]);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        *&__str.__r_.__value_.__l.__data_ = buf;
        __str.__r_.__value_.__r.__words[2] = *&v183[0];
        std::string::operator=(&v180, &__str);
      }

      goto LABEL_226;
    }
  }

LABEL_232:
  if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v131 = &v180;
  }

  else
  {
    v131 = v180.__r_.__value_.__r.__words[0];
  }

  v132 = xpc_string_create(v131);
  if (!v132)
  {
    v132 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "resetReason", v132);
  v133 = xpc_null_create();
  xpc_release(v132);
  xpc_release(v133);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v134 = &__str;
  }

  else
  {
    v134 = __str.__r_.__value_.__r.__words[0];
  }

  v135 = xpc_string_create(v134);
  if (!v135)
  {
    v135 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "shortResetReason", v135);
  v136 = xpc_null_create();
  xpc_release(v135);
  xpc_release(v136);
  v137 = xpc_string_create(*MEMORY[0x29EDBE928]);
  if (!v137)
  {
    v137 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE9B0], v137);
  v138 = xpc_null_create();
  xpc_release(v137);
  xpc_release(v138);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_246;
    }
  }

  else if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_246;
  }

  operator delete(v180.__r_.__value_.__l.__data_);
LABEL_246:
  v139 = xpc_string_create("metricsCCBasebandResetInfo");
  if (!v139)
  {
    v139 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE7F8], v139);
  v140 = xpc_null_create();
  xpc_release(v139);
  xpc_release(v140);
  v141 = xpc_string_create("Reset");
  if (!v141)
  {
    v141 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE9B8], v141);
  v142 = xpc_null_create();
  xpc_release(v141);
  xpc_release(v142);
  if (v10)
  {
    xpc_retain(v10);
    v143 = v10;
  }

  else
  {
    v143 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBF020], v143);
  v144 = xpc_null_create();
  xpc_release(v143);
  xpc_release(v144);
  v145 = xpc_dictionary_create(0, 0, 0);
  if (v145 || (v145 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v145) == v5)
    {
      xpc_retain(v145);
      v146 = v145;
    }

    else
    {
      v146 = xpc_null_create();
    }
  }

  else
  {
    v146 = xpc_null_create();
    v145 = 0;
  }

  xpc_release(v145);
  v147 = xpc_string_create(*MEMORY[0x29EDBE550]);
  if (!v147)
  {
    v147 = xpc_null_create();
  }

  xpc_dictionary_set_value(v146, *MEMORY[0x29EDBE588], v147);
  v148 = xpc_null_create();
  xpc_release(v147);
  xpc_release(v148);
  if (v8)
  {
    xpc_retain(v8);
    v149 = v8;
  }

  else
  {
    v149 = xpc_null_create();
  }

  xpc_dictionary_set_value(v146, *MEMORY[0x29EDBE580], v149);
  v150 = xpc_null_create();
  xpc_release(v149);
  xpc_release(v150);
  v151 = *MEMORY[0x29EDBEBD0];
  v152 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v152 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v153 = v152;
  if (v152 >= 0x17)
  {
    if ((v152 | 7) == 0x17)
    {
      v155 = 25;
    }

    else
    {
      v155 = (v152 | 7) + 1;
    }

    p_buf = operator new(v155);
    *(&buf + 1) = v153;
    *&v183[0] = v155 | 0x8000000000000000;
    *&buf = p_buf;
LABEL_275:
    memmove(p_buf, v151, v153);
    *(p_buf + v153) = 0;
    object = v146;
    if (v146)
    {
      goto LABEL_270;
    }

LABEL_276:
    object = xpc_null_create();
    goto LABEL_277;
  }

  BYTE7(v183[0]) = v152;
  p_buf = &buf;
  if (v152)
  {
    goto LABEL_275;
  }

  LOBYTE(buf) = 0;
  object = v146;
  if (!v146)
  {
    goto LABEL_276;
  }

LABEL_270:
  xpc_retain(v146);
LABEL_277:
  v158 = 0;
  Service::runCommand(a1, &buf, &object, &v158);
  xpc_release(object);
  object = 0;
  if (SBYTE7(v183[0]) < 0)
  {
    operator delete(buf);
  }

  xpc_release(v146);
  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
  }

  xpc_release(v10);
  xpc_release(v8);
LABEL_282:
  v156 = *MEMORY[0x29EDCA608];
}

void sub_2975DA75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::locale a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a37);
  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  xpc_release(v64);
  xpc_release(v63);
  _Unwind_Resume(a1);
}

void BootModule::reportStatisticsHardResetTime_sync(BootModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Submitting Stats of hard reset time", buf, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = time(0);
  v6 = xpc_int64_create(v5);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBF4F0], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = (*(this + 132) + 1);
  *(this + 132) = v8;
  v9 = xpc_int64_create(v8);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBF2C0], v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  object = v4;
  *buf = operator new(0x20uLL);
  v14 = xmmword_29769DFE0;
  strcpy(*buf, "CommandUpdateBBBootStats");
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  v11 = 0;
  Service::runCommand(this, buf, &object, &v11);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v4);
}

void sub_2975DADB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

void BootModule::reportStatisticsSoftReset_sync(BootModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Submitting Stats of soft reset time", buf, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = (*(this + 133) + 1);
  *(this + 133) = v5;
  v6 = xpc_int64_create(v5);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBF2C8], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  object = v4;
  *buf = operator new(0x20uLL);
  v11 = xmmword_29769DFE0;
  strcpy(*buf, "CommandUpdateBBBootStats");
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  v8 = 0;
  Service::runCommand(this, buf, &object, &v8);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v4);
}

void sub_2975DAFF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

uint64_t _ZZZZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEEUb_EUb0_EN3__0D1Ev(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a1 + 71) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(a1 + 72));
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    operator delete(*(a1 + 24));
    v4 = *(a1 + 16);
    if (!v4)
    {
      return a1;
    }

    goto LABEL_10;
  }

LABEL_14:
  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v4 = *(a1 + 16);
  if (v4)
  {
LABEL_10:
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *__copy_helper_block_e8_40c15_ZTSK9ResetInfo152c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE160c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1, void *a2)
{
  ResetInfo::ResetInfo((a1 + 40), (a2 + 5));
  result = a2[19];
  if (result)
  {
    result = _Block_copy(result);
  }

  v6 = a2[20];
  v5 = a2[21];
  *(a1 + 152) = result;
  *(a1 + 160) = v6;
  *(a1 + 168) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c15_ZTSK9ResetInfo152c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE160c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if ((*(a1 + 111) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a1 + 87) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      operator delete(*(a1 + 64));
      if ((*(a1 + 63) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 111) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(a1 + 88));
  if (*(a1 + 87) < 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((*(a1 + 63) & 0x80000000) == 0)
  {
    return;
  }

LABEL_13:
  v4 = *(a1 + 40);

  operator delete(v4);
}

void ___ZN10BootModule4initEv_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 104);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    *__p = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Initializing", __p, 2u);
  }

  v5 = capabilities::ipc::supportsPCI(v4);
  if (v5)
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN10BootModule4initEv_block_invoke_10;
    aBlock[3] = &__block_descriptor_tmp_16_3;
    v7 = a1[5];
    v6 = a1[6];
    aBlock[4] = v2;
    aBlock[5] = v7;
    v31 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = _Block_copy(aBlock);
    v9 = *(v2 + 336);
    *(v2 + 336) = v8;
    if (v9)
    {
      _Block_release(v9);
    }

    v5 = v31;
    if (v31)
    {
      std::__shared_weak_count::__release_weak(v31);
    }
  }

  capabilities::abs::supportedMobileAssetTypes(v5);
  v10 = capabilities::abs::operator&();
  if (v10 || (capabilities::abs::supportedMobileAssetTypes(v10), capabilities::abs::operator&()))
  {
    pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    v11 = off_2A18CAFB8;
    if (!off_2A18CAFB8)
    {
      SharedData::create_default_global(__p);
      v12 = *__p;
      *__p = 0;
      *&__p[8] = 0;
      v13 = *(&off_2A18CAFB8 + 1);
      off_2A18CAFB8 = v12;
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v14 = *&__p[8];
      if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v11 = off_2A18CAFB8;
    }

    v15 = *(&off_2A18CAFB8 + 1);
    v28 = v11;
    v29 = *(&off_2A18CAFB8 + 1);
    if (*(&off_2A18CAFB8 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_2976A0E90;
    strcpy(*__p, "Baseband Mobile Asset PT image");
    SharedData::setPreference<char const*>(v11, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
      v16 = *(v2 + 104);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
LABEL_28:
        pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
        v17 = off_2A18CAFB8;
        if (!off_2A18CAFB8)
        {
          SharedData::create_default_global(__p);
          v18 = *__p;
          *__p = 0;
          *&__p[8] = 0;
          v19 = *(&off_2A18CAFB8 + 1);
          off_2A18CAFB8 = v18;
          if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v19->__on_zero_shared)(v19);
            std::__shared_weak_count::__release_weak(v19);
          }

          v20 = *&__p[8];
          if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
          }

          v17 = off_2A18CAFB8;
        }

        v21 = *(&off_2A18CAFB8 + 1);
        v28 = v17;
        v29 = *(&off_2A18CAFB8 + 1);
        if (*(&off_2A18CAFB8 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
        *__p = operator new(0x28uLL);
        *&__p[8] = xmmword_2976A4710;
        strcpy(*__p, "BasebandMobileAssetVerificationState");
        SharedData::getPreference<std::string>(v17, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
          pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
          v22 = off_2A18CAFB8;
          if (!off_2A18CAFB8)
          {
LABEL_43:
            SharedData::create_default_global(__p);
            v23 = *__p;
            *__p = 0;
            *&__p[8] = 0;
            v24 = *(&off_2A18CAFB8 + 1);
            off_2A18CAFB8 = v23;
            if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v24->__on_zero_shared)(v24);
              std::__shared_weak_count::__release_weak(v24);
            }

            v25 = *&__p[8];
            if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v25->__on_zero_shared)(v25);
              std::__shared_weak_count::__release_weak(v25);
            }

            v22 = off_2A18CAFB8;
          }
        }

        else
        {
          pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
          v22 = off_2A18CAFB8;
          if (!off_2A18CAFB8)
          {
            goto LABEL_43;
          }
        }

        v26 = *(&off_2A18CAFB8 + 1);
        v28 = v22;
        v29 = *(&off_2A18CAFB8 + 1);
        if (*(&off_2A18CAFB8 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
        *__p = operator new(0x28uLL);
        *&__p[8] = xmmword_2976A44F0;
        strcpy(*__p, "BasebandMobileAssetVerificationVersion");
        SharedData::getPreference<std::string>(v22, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v26)
        {
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
          }
        }

        return;
      }
    }

    else
    {
      v16 = *(v2 + 104);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }
    }

    *__p = 0;
    _os_log_impl(&dword_297476000, v16, OS_LOG_TYPE_DEFAULT, "#I Clear MobileAsset PT path", __p, 2u);
    goto LABEL_28;
  }
}

void sub_2975DB85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2975DB874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2975DB88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule4initEv_block_invoke_10(void *a1, int a2, uint64_t a3, int a4)
{
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    v18 = v10;
    if (v10)
    {
      v11 = v10;
      if (!a1[5])
      {
        goto LABEL_12;
      }

      memset(&v16, 170, sizeof(v16));
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, *a3, *(a3 + 8));
      }

      else
      {
        v16 = *a3;
      }

      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1174405120;
      v12[2] = ___ZN10BootModule4initEv_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_14_4;
      v12[4] = v9;
      v14 = a2;
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v16;
      }

      v15 = a4;
      ctu::SharedSynchronizable<BootModule>::execute_wrapped((v9 + 72), v12);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_12:
          if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            return;
          }

LABEL_16:
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
          return;
        }
      }

      else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      operator delete(v16.__r_.__value_.__l.__data_);
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_16;
      }
    }
  }
}

void sub_2975DBA58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v24 - 64);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v24 - 64);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule4initEv_block_invoke_2(uint64_t a1)
{
  v73 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!*(a1 + 64))
  {
    v6 = *(a1 + 63);
    v7 = *(a1 + 48);
    if (v6 >= 0)
    {
      v8 = *(a1 + 63);
    }

    else
    {
      v8 = *(a1 + 48);
    }

    v9 = v8 + 11;
    if (v8 + 11 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v10 = (a1 + 40);
    if (v9 < 0x17)
    {
      v63[1] = 0;
      v64 = 0;
      HIBYTE(v64) = v8 + 11;
      *(v63 + 7) = 540693582;
      v63[0] = *"PCI-EVENT: ";
      v13 = &v63[1] + 3;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ((v9 | 7) == 0x17)
      {
        v11 = 25;
      }

      else
      {
        v11 = (v9 | 7) + 1;
      }

      v12 = operator new(v11);
      v63[1] = (v8 + 11);
      v64 = v11 | 0x8000000000000000;
      v63[0] = v12;
      *(v12 + 7) = 540693582;
      *v12 = *"PCI-EVENT: ";
      v13 = v12 + 11;
    }

    v14 = *v10;
    if (v6 >= 0)
    {
      v15 = (a1 + 40);
    }

    else
    {
      v15 = *v10;
    }

    memmove(v13, v15, v8);
LABEL_20:
    v13[v8] = 0;
    if ((v6 & 0x80000000) == 0 || v7 != 27 || (**v10 == 0x67676972742D5041 ? (v16 = *(*v10 + 8) == 0x7361622064657265) : (v16 = 0), v16 ? (v17 = *(*v10 + 16) == 0x657220646E616265) : (v17 = 0), v17 ? (v18 = *(*v10 + 19) == 0x746573657220646ELL) : (v18 = 0), !v18))
    {
LABEL_57:
      *&v32 = 0xAAAAAAAAAAAAAAAALL;
      *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v71 = v32;
      v72 = v32;
      v69 = v32;
      v70 = v32;
      v67 = v32;
      v68 = v32;
      *buf = v32;
      v33 = *MEMORY[0x29EDBEB60];
      v34 = strlen(*MEMORY[0x29EDBEB60]);
      if (v34 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v35 = v34;
      if (v34 >= 0x17)
      {
        if ((v34 | 7) == 0x17)
        {
          v37 = 25;
        }

        else
        {
          v37 = (v34 | 7) + 1;
        }

        v36 = operator new(v37);
        *&__dst[8] = v35;
        *&__dst[16] = v37 | 0x8000000000000000;
        *__dst = v36;
      }

      else
      {
        __dst[23] = v34;
        v36 = __dst;
        if (!v34)
        {
LABEL_66:
          v36[v35] = 0;
          v38 = *MEMORY[0x29EDBF750];
          v39 = strlen(*MEMORY[0x29EDBF750]);
          if (v39 > 0x7FFFFFFFFFFFFFF7)
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
            *(&v61 + 1) = v40;
            v62 = v42 | 0x8000000000000000;
            *&v61 = v41;
          }

          else
          {
            HIBYTE(v62) = v39;
            v41 = &v61;
            if (!v39)
            {
LABEL_75:
              v41[v40] = 0;
              Timestamp::Timestamp(v57);
              Timestamp::asString(v57, 0, 9, __p);
              v56 = 0;
              LOBYTE(v55) = 0;
              ResetInfo::ResetInfo(buf, __dst, &v61, v63, __p, 7, &v55);
              if (v60 < 0)
              {
                operator delete(__p[0]);
                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v57, v58);
                if ((SHIBYTE(v62) & 0x80000000) == 0)
                {
LABEL_77:
                  if ((__dst[23] & 0x80000000) == 0)
                  {
                    goto LABEL_78;
                  }

                  goto LABEL_82;
                }
              }

              else
              {
                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v57, v58);
                if ((SHIBYTE(v62) & 0x80000000) == 0)
                {
                  goto LABEL_77;
                }
              }

              operator delete(v61);
              if ((__dst[23] & 0x80000000) == 0)
              {
LABEL_78:
                v43 = v2[13];
                if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_83;
                }

LABEL_104:
                if (*(a1 + 63) < 0)
                {
                  v10 = *v10;
                }

                v46 = *(a1 + 68);
                *__dst = 136315394;
                *&__dst[4] = v10;
                *&__dst[12] = 1024;
                *&__dst[14] = v46;
                _os_log_error_impl(&dword_297476000, v43, OS_LOG_TYPE_ERROR, "PCI event: %s, sleeping for %u ms, then requesting Baseband reset", __dst, 0x12u);
LABEL_83:
                usleep(1000 * *(a1 + 68));
                ResetInfo::ResetInfo(&v48, buf);
                aBlock = 0;
                BootModule::requestReset(v2, &v48, &aBlock);
                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                if (v54 < 0)
                {
                  operator delete(v53);
                  if ((v52 & 0x80000000) == 0)
                  {
LABEL_87:
                    if ((v50 & 0x80000000) == 0)
                    {
                      goto LABEL_88;
                    }

                    goto LABEL_97;
                  }
                }

                else if ((v52 & 0x80000000) == 0)
                {
                  goto LABEL_87;
                }

                operator delete(v51);
                if ((v50 & 0x80000000) == 0)
                {
LABEL_88:
                  if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_89;
                  }

                  goto LABEL_98;
                }

LABEL_97:
                operator delete(v49);
                if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_89:
                  if ((SHIBYTE(v72) & 0x80000000) == 0)
                  {
                    goto LABEL_90;
                  }

                  goto LABEL_99;
                }

LABEL_98:
                operator delete(v48.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v72) & 0x80000000) == 0)
                {
LABEL_90:
                  if ((SBYTE7(v70) & 0x80000000) == 0)
                  {
                    goto LABEL_91;
                  }

                  goto LABEL_100;
                }

LABEL_99:
                operator delete(*(&v71 + 1));
                if ((SBYTE7(v70) & 0x80000000) == 0)
                {
LABEL_91:
                  if ((SHIBYTE(v68) & 0x80000000) == 0)
                  {
                    goto LABEL_92;
                  }

                  goto LABEL_101;
                }

LABEL_100:
                operator delete(v69);
                if ((SHIBYTE(v68) & 0x80000000) == 0)
                {
LABEL_92:
                  if ((SBYTE7(v67) & 0x80000000) == 0)
                  {
                    goto LABEL_93;
                  }

                  goto LABEL_102;
                }

LABEL_101:
                operator delete(*(&v67 + 1));
                if ((SBYTE7(v67) & 0x80000000) == 0)
                {
LABEL_93:
                  if ((SHIBYTE(v64) & 0x80000000) == 0)
                  {
                    goto LABEL_94;
                  }

LABEL_103:
                  operator delete(v63[0]);
                  v45 = *MEMORY[0x29EDCA608];
                  return;
                }

LABEL_102:
                operator delete(*buf);
                if ((SHIBYTE(v64) & 0x80000000) == 0)
                {
                  goto LABEL_94;
                }

                goto LABEL_103;
              }

LABEL_82:
              operator delete(*__dst);
              v43 = v2[13];
              if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_83;
              }

              goto LABEL_104;
            }
          }

          memmove(v41, v38, v40);
          goto LABEL_75;
        }
      }

      memmove(v36, v33, v35);
      goto LABEL_66;
    }

    v19 = SHIBYTE(v64);
    if ((SHIBYTE(v64) & 0x8000000000000000) != 0)
    {
      v19 = v63[1];
      v22 = (v64 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v22 - v63[1] < 0x1F)
      {
        v20 = v63[1] + 31;
        if ((0x7FFFFFFFFFFFFFF7 - (v64 & 0x7FFFFFFFFFFFFFFFLL)) < v63[1] - v22 + 31)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v21 = v63[0];
        if (v22 > 0x3FFFFFFFFFFFFFF2)
        {
          v26 = 0;
          v25 = 0x7FFFFFFFFFFFFFF7;
LABEL_48:
          v27 = operator new(v25);
          v28 = v27;
          if (v19)
          {
            memmove(v27, v21, v19);
          }

          qmemcpy(v28 + v19, " [likely caused by bbctl reset]", 31);
          if (!v26)
          {
            operator delete(v21);
          }

          v63[1] = v20;
          v64 = v25 | 0x8000000000000000;
          v63[0] = v28;
          v29 = &v20[v28];
          goto LABEL_56;
        }

LABEL_39:
        v23 = 2 * v22;
        if (v20 > 2 * v22)
        {
          v23 = v20;
        }

        if ((v23 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v23 | 7) + 1;
        }

        if (v23 >= 0x17)
        {
          v25 = v24;
        }

        else
        {
          v25 = 23;
        }

        v26 = v22 == 22;
        goto LABEL_48;
      }

      v30 = v63[0];
      qmemcpy(v63[0] + v63[1], " [likely caused by bbctl reset]", 31);
      v31 = v19 + 31;
      v63[1] = (v19 + 31);
    }

    else
    {
      if (SHIBYTE(v64) < 0x17)
      {
        v20 = (SHIBYTE(v64) + 31);
        v21 = v63;
        v22 = 22;
        goto LABEL_39;
      }

      v30 = v63;
      qmemcpy(v63 + SHIBYTE(v64), " [likely caused by bbctl reset]", 31);
      v31 = v19 + 31;
      HIBYTE(v64) = (v19 + 31) & 0x7F;
    }

    v29 = v30 + v31;
LABEL_56:
    *v29 = 0;
    goto LABEL_57;
  }

  v3 = v2[13];
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
LABEL_94:
    v44 = *MEMORY[0x29EDCA608];
    return;
  }

  v4 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v4 = *v4;
  }

  *buf = 136315138;
  *&buf[4] = v4;
  _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I PCI event: %s", buf, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_2975DC170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t __copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void SharedData::setPreference<char const*>(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 40));
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(v10, v4);
  v5 = v10[0];
  v6 = *MEMORY[0x29EDB8ED8];
  value = 0;
  ctu::cf::convert_copy(&value, "", 0x8000100, v6, v7);
  v8 = value;
  v10[1] = value;
  if (value)
  {
    v9 = *MEMORY[0x29EDB8FA8];
    CFPreferencesSetValue(v5, value, *(a1 + 8), *(a1 + 16), *MEMORY[0x29EDB8FA8]);
    CFPreferencesSynchronize(*(a1 + 8), *(a1 + 16), v9);
    CFRelease(v8);
  }

  MEMORY[0x29C270E70](v10);
  os_unfair_lock_unlock((a1 + 40));
}

void SharedData::getPreference<std::string>(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 40));
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v6, v4);
  v5 = (**a1)(a1, v6);
  if (v5)
  {
    ctu::cf::assign();
    CFRelease(v5);
  }

  MEMORY[0x29C270E70](&v6);
  os_unfair_lock_unlock((a1 + 40));
}

_WORD *BootModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

char *BootModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  result = operator new(3uLL);
  a1[1] = result + 3;
  a1[2] = result + 3;
  *result = 256;
  result[2] = 3;
  *a1 = result;
  return result;
}

void BootModule::shutdownWithStage(uint64_t a1, int a2, NSObject **a3)
{
  if (a2 == 3)
  {
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1174405120;
    v8[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_36;
    v8[3] = &__block_descriptor_tmp_43_0;
    v7 = *a3;
    v8[4] = a1;
    object = v7;
    if (v7)
    {
      dispatch_retain(v7);
      dispatch_group_enter(object);
    }

    ctu::SharedSynchronizable<BootModule>::execute_wrapped((a1 + 72), v8);
    if (object)
    {
      dispatch_group_leave(object);
      v5 = object;
      if (object)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (a2 != 1)
    {
      if (a2)
      {
        return;
      }

      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1174405120;
      v12[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
      v12[3] = &__block_descriptor_tmp_24_3;
      v4 = *a3;
      v12[4] = a1;
      v13 = v4;
      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v13);
      }

      ctu::SharedSynchronizable<BootModule>::execute_wrapped((a1 + 72), v12);
      if (!v13)
      {
        return;
      }

      dispatch_group_leave(v13);
      v5 = v13;
      if (!v13)
      {
        return;
      }

LABEL_18:
      dispatch_release(v5);
      return;
    }

    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_25;
    v10[3] = &__block_descriptor_tmp_35_4;
    v6 = *a3;
    v10[4] = a1;
    group = v6;
    if (v6)
    {
      dispatch_retain(v6);
      dispatch_group_enter(group);
    }

    ctu::SharedSynchronizable<BootModule>::execute_wrapped((a1 + 72), v10);
    if (group)
    {
      dispatch_group_leave(group);
      v5 = group;
      if (group)
      {
        goto LABEL_18;
      }
    }
  }
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Shutdown prepare", &buf, 2u);
  }

  v4 = *(v2 + 576);
  if (v4 <= 8)
  {
    v5 = 1 << v4;
    if ((v5 & 0x1E1) != 0)
    {
      (*(*v2 + 104))(v2, 8);
      v6 = *(v2 + 176);
      *(v2 + 176) = 0;
      if (v6)
      {
        dispatch_group_leave(v6);
        dispatch_release(v6);
      }
    }

    else if ((v5 & 0xE) != 0)
    {
      v7 = *(a1 + 40);
      if (v7)
      {
        dispatch_retain(v7);
        dispatch_group_enter(v7);
      }

      v8 = *(v2 + 176);
      *(v2 + 176) = v7;
      if (v8)
      {
        dispatch_group_leave(v8);
        dispatch_release(v8);
      }

      v9 = *(v2 + 104);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Holding shutdown request session", &buf, 2u);
      }
    }

    else
    {
      (*(*v2 + 104))(v2, 7);
    }
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v2 + 88))(&v20, v2);
  if (v20)
  {
    Registry::getAdaptiveTimerService(&buf, *(v2 + 608));
    v10 = *&buf.__r_.__value_.__l.__data_;
    if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v10 + 1) + 16))(*(&v10 + 1));
      std::__shared_weak_count::__release_weak(*(&v10 + 1));
      if (v10)
      {
LABEL_19:
        Registry::getAdaptiveTimerService(&buf, *(v2 + 608));
        ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
        size = buf.__r_.__value_.__l.__size_;
        if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          v13 = ScaledTime;
          (size->__on_zero_shared)(size);
          std::__shared_weak_count::__release_weak(size);
          ScaledTime = v13;
        }

        v14 = ScaledTime / 1000;
        goto LABEL_25;
      }
    }

    else if (v10)
    {
      goto LABEL_19;
    }

    v14 = 240000;
LABEL_25:
    v15 = v20;
    v16 = operator new(0x38uLL);
    strcpy(v16, "com.apple.AppleBasebandManager.RadioNotReady.Shutdown");
    v17 = *(v15 + 48);
    std::string::__init_copy_ctor_external(&buf, v16, 0x35uLL);
    (*(*v17 + 24))(&object, v17, &buf, v14);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (object)
    {
      dispatch_release(object);
    }

    operator delete(v16);
  }

  if (notify_is_valid_token(*(v2 + 600)))
  {
    notify_cancel(*(v2 + 600));
  }

  v18 = v21;
  if (v21)
  {
    if (!atomic_fetch_add((v21 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }
  }
}

void sub_2975DCAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va1);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2975DCAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2975DCAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  operator delete(v18);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_2975DCB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2975DCB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2975DCB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_25(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[10];
  if (!v3 || (v4 = v2[9], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = v2[13];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v6);
  v7 = v2[13];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
LABEL_5:
    *buf = 0;
    _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I Shutdown baseband", buf, 2u);
  }

LABEL_6:
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_26;
  aBlock[3] = &__block_descriptor_tmp_32_3;
  v8 = *(a1 + 40);
  aBlock[4] = v2;
  group = v8;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(group);
  }

  v11 = v4;
  v12 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v13 = _Block_copy(aBlock);
  (*(*v2 + 120))(v2, &v13);
  if (v13)
  {
    _Block_release(v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_2975DCD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_group_t group, uint64_t a16, std::__shared_weak_count *a17, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  std::__shared_weak_count::__release_weak(v18);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_26(void *a1)
{
  v2 = a1[7];
  if (!v2)
  {
    return;
  }

  v3 = a1[4];
  v4 = std::__shared_weak_count::lock(v2);
  v37 = v4;
  if (!v4)
  {
    return;
  }

  if (!a1[6])
  {
LABEL_52:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v22 = v4;
      (v4->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v22);
    }

    return;
  }

  v35 = 0;
  v5 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v35 = Mutable;
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBF420], v5, v7);
  v8 = *MEMORY[0x29EDBF460];
  v9 = strlen(*MEMORY[0x29EDBF460]);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v9 | 7) + 1;
    }

    v11 = operator new(v13);
    __dst[1] = v10;
    v34 = v13 | 0x8000000000000000;
    __dst[0] = v11;
LABEL_15:
    memmove(v11, v8, v10);
    *(v10 + v11) = 0;
    v12 = v35;
    if (!v35)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  HIBYTE(v34) = v9;
  v11 = __dst;
  if (v9)
  {
    goto LABEL_15;
  }

  LOBYTE(__dst[0]) = 0;
  v12 = v35;
  if (!v35)
  {
    goto LABEL_18;
  }

LABEL_16:
  v14 = CFGetTypeID(v12);
  if (v14 == CFDictionaryGetTypeID())
  {
    cf = v12;
    CFRetain(v12);
    goto LABEL_19;
  }

LABEL_18:
  cf = 0;
LABEL_19:
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_2;
  aBlock[3] = &__block_descriptor_tmp_28_5;
  v15 = a1[5];
  aBlock[4] = v3;
  group = v15;
  if (v15)
  {
    dispatch_retain(v15);
    dispatch_group_enter(group);
  }

  v16 = a1[7];
  v29 = a1[6];
  v30 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = _Block_copy(aBlock);
  Service::broadcastEvent(v3, __dst, &cf, &v31);
  if (v31)
  {
    _Block_release(v31);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__dst[0]);
  }

  v17 = *MEMORY[0x29EDBEBF0];
  v18 = strlen(*MEMORY[0x29EDBEBF0]);
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v18;
  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v18 | 7) + 1;
    }

    v20 = operator new(v21);
    __p[1] = v19;
    v26 = v21 | 0x8000000000000000;
    __p[0] = v20;
    goto LABEL_37;
  }

  HIBYTE(v26) = v18;
  v20 = __p;
  if (v18)
  {
LABEL_37:
    memmove(v20, v17, v19);
  }

  *(v19 + v20) = 0;
  v23 = 0;
  v24 = 0;
  Service::broadcastEvent(v3, __p, &v24, &v23);
  if (v23)
  {
    _Block_release(v23);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v35)
  {
    CFRelease(v35);
  }

  v4 = v37;
  if (v37)
  {
    goto LABEL_52;
  }
}

void sub_2975DD0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, dispatch_group_t group, uint64_t a24, std::__shared_weak_count *a25, void *a26, char a27)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a11);
  if (a17 < 0)
  {
    operator delete(__p);
    v29 = a25;
    if (!a25)
    {
LABEL_5:
      v30 = group;
      if (!group)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v29 = a25;
    if (!a25)
    {
      goto LABEL_5;
    }
  }

  std::__shared_weak_count::__release_weak(v29);
  v30 = group;
  if (!group)
  {
    goto LABEL_11;
  }

LABEL_9:
  dispatch_group_leave(v30);
  if (group)
  {
    dispatch_release(group);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v27 - 88));
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v27 - 80);
    _Unwind_Resume(a1);
  }

LABEL_11:
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v27 - 88));
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v27 - 80);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_2(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[6];
      if (v6)
      {
        v7[0] = MEMORY[0x29EDCA5F8];
        v7[1] = 0x40000000;
        v7[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_3;
        v7[3] = &__block_descriptor_tmp_27;
        v7[4] = v3;
        ctu::SharedSynchronizable<BootModule>::execute_wrapped((v6 + 72), v7);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v1 + 88))(&v6);
  v2 = v6;
  if (v6)
  {
    v3 = operator new(0x38uLL);
    strcpy(v3, "com.apple.AppleBasebandManager.RadioNotReady.Shutdown");
    v4 = *(v2 + 48);
    std::string::__init_copy_ctor_external(&v8, v3, 0x35uLL);
    (*(*v4 + 32))(v4, &v8);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    operator delete(v3);
  }

  v5 = v7;
  if (v7)
  {
    if (!atomic_fetch_add((v7 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_2975DD448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  operator delete(v17);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_2975DD47C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c35_ZTSNSt3__18weak_ptrI10BootModuleEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[5];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_36(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v1 + 88))(&v18, v1);
  v2 = v18;
  if (v18)
  {
    v3 = operator new(0x38uLL);
    strcpy(v3, "com.apple.AppleBasebandManager.RadioNotReady.Bootup");
    v4 = *(v2 + 48);
    std::string::__init_copy_ctor_external(&v20, v3, 0x33uLL);
    (*(*v4 + 32))(v4, &v20);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    operator delete(v3);
    v5 = v18;
    v6 = operator new(0x38uLL);
    strcpy(v6, "com.apple.AppleBasebandManager.RadioNotReady.Shutdown");
    v7 = *(v5 + 48);
    std::string::__init_copy_ctor_external(&v20, v6, 0x35uLL);
    (*(*v7 + 32))(v7, &v20);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    operator delete(v6);
  }

  v8 = v1[73];
  if (v8)
  {
    v9 = (*(*v8 + 32))(v8);
    v10 = v1[13];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "failed";
      if (v9)
      {
        v11 = "successful";
      }

      LODWORD(v20.__r_.__value_.__l.__data_) = 136315138;
      *(v20.__r_.__value_.__r.__words + 4) = v11;
      _os_log_impl(&dword_297476000, v10, OS_LOG_TYPE_DEFAULT, "#I Baseband poweroff (forced) %s", &v20, 0xCu);
    }
  }

  v12 = v1[18];
  v1[17] = 0;
  v1[18] = 0;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v1[44];
  v1[43] = 0;
  v1[44] = 0;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = v1[74];
  v1[73] = 0;
  v1[74] = 0;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = v1[65];
  if (v15)
  {
    dispatch_async(v15, &__block_literal_global_10);
  }

  v16 = v19;
  if (v19 && !atomic_fetch_add((v19 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *MEMORY[0x29EDCA608];
}

void sub_2975DD8C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_39(capabilities::abs *a1)
{
  capabilities::abs::supportedMobileAssetTypes(a1);
  v1 = capabilities::abs::operator&();
  if (v1)
  {
    v2 = "com.apple.MobileAsset.MAVBasebandAssets";
    v3 = strlen("com.apple.MobileAsset.MAVBasebandAssets");
    if (v3 <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_3;
    }

LABEL_28:
    std::string::__throw_length_error[abi:ne200100]();
  }

  capabilities::abs::supportedMobileAssetTypes(v1);
  if (capabilities::abs::operator&())
  {
    v2 = "com.apple.MobileAsset.INTBasebandAssets";
  }

  else
  {
    v2 = "";
  }

  v3 = strlen(v2);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_28;
  }

LABEL_3:
  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v3 | 7) + 1;
    }

    v5 = operator new(v6);
    __dst[1] = v4;
    v16 = v6 | 0x8000000000000000;
    __dst[0] = v5;
    goto LABEL_10;
  }

  HIBYTE(v16) = v3;
  v5 = __dst;
  if (v3)
  {
LABEL_10:
    v3 = memcpy(v5, v2, v4);
  }

  *(v4 + v5) = 0;
  capabilities::abs::supportedMobileAssetTypes(v3);
  v7 = capabilities::abs::operator&();
  if (v7)
  {
    v8 = "PT";
    v9 = strlen("PT");
    if (v9 <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_13;
    }

LABEL_33:
    std::string::__throw_length_error[abi:ne200100]();
  }

  capabilities::abs::supportedMobileAssetTypes(v7);
  if (capabilities::abs::operator&())
  {
    v8 = "RP";
  }

  else
  {
    v8 = "";
  }

  v9 = strlen(v8);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_33;
  }

LABEL_13:
  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    v11 = operator new(v12);
    __p[1] = v10;
    v14 = v12 | 0x8000000000000000;
    __p[0] = v11;
    goto LABEL_20;
  }

  HIBYTE(v14) = v9;
  v11 = __p;
  if (v9)
  {
LABEL_20:
    memcpy(v11, v8, v10);
  }

  *(v10 + v11) = 0;
  MobileAssetSupport::unlockAsset(__dst, __p);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      return;
    }

LABEL_35:
    operator delete(__dst[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v16) < 0)
  {
    goto LABEL_35;
  }
}

void sub_2975DDB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
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

void BootModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
{
  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    v4 = *a3;
    if (*a3)
    {
      dispatch_retain(*a3);
      dispatch_group_enter(v4);
    }

    v5 = a1[10];
    if (!v5 || (v6 = a1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = operator new(0x10uLL);
    *v9 = a1;
    v9[1] = v4;
    v10 = a1[11];
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = operator new(0x18uLL);
    *v11 = v9;
    v11[1] = v6;
    v11[2] = v8;
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_14:
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  v12 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v12);
  }

  v13 = a1[10];
  if (!v13 || (v14 = a1[9], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v15;
  v16 = operator new(0x10uLL);
  *v16 = a1;
  v16[1] = v12;
  v17 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v14;
  v18[2] = v8;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void BootModule::registerCommandHandlers_sync(BootModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *__dst = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", __dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_118:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_118;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_118;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (config::hw::iPhone(v5))
  {
    BootModule::startNetworkCampTimer_sync(this);
  }

  v7 = *MEMORY[0x29EDBF318];
  v8 = strlen(*MEMORY[0x29EDBF318]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
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
    *&__dst[8] = v9;
    *&__dst[16] = v11 | 0x8000000000000000;
    *__dst = v10;
    goto LABEL_16;
  }

  __dst[23] = v8;
  v10 = __dst;
  if (v8)
  {
LABEL_16:
    memmove(v10, v7, v9);
  }

  v10[v9] = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_48_4;
  aBlock[4] = this;
  aBlock[5] = v4;
  v66 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v67 = v12;
  Service::registerCommandHandler(this, __dst, &v67);
  if (v12)
  {
    _Block_release(v12);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  v13 = *MEMORY[0x29EDBEAA8];
  v14 = strlen(*MEMORY[0x29EDBEAA8]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v16 = operator new(v17);
    *&__dst[8] = v15;
    *&__dst[16] = v17 | 0x8000000000000000;
    *__dst = v16;
    goto LABEL_29;
  }

  __dst[23] = v14;
  v16 = __dst;
  if (v14)
  {
LABEL_29:
    memmove(v16, v13, v15);
  }

  v16[v15] = 0;
  v62[0] = MEMORY[0x29EDCA5F8];
  v62[1] = 1174405120;
  v62[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_49;
  v62[3] = &__block_descriptor_tmp_57_2;
  v62[4] = this;
  v62[5] = v4;
  v63 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v18 = _Block_copy(v62);
  v64 = v18;
  Service::registerCommandHandler(this, __dst, &v64);
  if (v18)
  {
    _Block_release(v18);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  v19 = *MEMORY[0x29EDBF340];
  v20 = strlen(*MEMORY[0x29EDBF340]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    *&__dst[8] = v21;
    *&__dst[16] = v23 | 0x8000000000000000;
    *__dst = v22;
    goto LABEL_42;
  }

  __dst[23] = v20;
  v22 = __dst;
  if (v20)
  {
LABEL_42:
    memmove(v22, v19, v21);
  }

  v22[v21] = 0;
  v59[0] = MEMORY[0x29EDCA5F8];
  v59[1] = 1174405120;
  v59[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_58;
  v59[3] = &__block_descriptor_tmp_59;
  v59[4] = v4;
  v60 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = _Block_copy(v59);
  v61 = v24;
  Service::registerCommandHandler(this, __dst, &v61);
  if (v24)
  {
    _Block_release(v24);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  v25 = *MEMORY[0x29EDBEE80];
  v26 = strlen(*MEMORY[0x29EDBEE80]);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v26 | 7) + 1;
    }

    v28 = operator new(v29);
    *&__dst[8] = v27;
    *&__dst[16] = v29 | 0x8000000000000000;
    *__dst = v28;
    goto LABEL_55;
  }

  __dst[23] = v26;
  v28 = __dst;
  if (v26)
  {
LABEL_55:
    memmove(v28, v25, v27);
  }

  v28[v27] = 0;
  v56[0] = MEMORY[0x29EDCA5F8];
  v56[1] = 1174405120;
  v56[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_60;
  v56[3] = &__block_descriptor_tmp_63_1;
  v56[4] = this;
  v56[5] = v4;
  v57 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v30 = _Block_copy(v56);
  v58 = v30;
  Service::registerCommandHandler(this, __dst, &v58);
  if (v30)
  {
    _Block_release(v30);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  capabilities::abs::supportedMobileAssetTypes(v31);
  v32 = capabilities::abs::operator&();
  if (v32 || (capabilities::abs::supportedMobileAssetTypes(v32), capabilities::abs::operator&()))
  {
    *__dst = operator new(0x20uLL);
    *&__dst[8] = xmmword_2976A1090;
    strcpy(*__dst, "CommandBasebandHealthEvent");
    v53[0] = MEMORY[0x29EDCA5F8];
    v53[1] = 1174405120;
    v53[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_64;
    v53[3] = &__block_descriptor_tmp_67_3;
    v53[4] = this;
    v53[5] = v4;
    v54 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v33 = _Block_copy(v53);
    v55 = v33;
    Service::registerCommandHandler(this, __dst, &v55);
    if (v33)
    {
      _Block_release(v33);
    }

    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }

    if (v54)
    {
      std::__shared_weak_count::__release_weak(v54);
    }
  }

  v51 = 0xAAAAAAAAAAAAAAAALL;
  v52 = 0xAAAAAAAAAAAAAAAALL;
  v34 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v35 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(__dst, v34);
    v36 = *__dst;
    *__dst = 0uLL;
    v37 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v36;
    if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
    }

    v38 = *&__dst[8];
    if (*&__dst[8] && !atomic_fetch_add((*&__dst[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v38->__on_zero_shared)(v38);
      std::__shared_weak_count::__release_weak(v38);
    }

    v35 = off_2A18CADD8;
  }

  v39 = *(&off_2A18CADD8 + 1);
  v47 = v35;
  v48 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v35 + 16))(&v49, v35);
  v51 = 0;
  v52 = 0;
  if (v50)
  {
    v52 = std::__shared_weak_count::lock(v50);
    if (v52)
    {
      v51 = v49;
    }

    if (v50)
    {
      std::__shared_weak_count::__release_weak(v50);
    }
  }

  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
    if (!v51)
    {
      goto LABEL_101;
    }
  }

  else if (!v51)
  {
    goto LABEL_101;
  }

  memset(__dst, 170, 16);
  v45[0] = MEMORY[0x29EDCA5F8];
  v45[1] = 1174405120;
  v45[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_68;
  v45[3] = &__block_descriptor_tmp_74_2;
  v45[4] = this;
  v45[5] = v4;
  v46 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v40 = _Block_copy(v45);
  v41 = *(this + 11);
  if (v41)
  {
    dispatch_retain(v41);
  }

  *__dst = v40;
  *&__dst[8] = v41;
  if (!v40)
  {
    v43 = 0;
    object = v41;
    if (!v41)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  v43 = _Block_copy(v40);
  object = v41;
  if (v41)
  {
LABEL_90:
    dispatch_retain(v41);
  }

LABEL_91:
  radio::CommandDriver::watchClientState();
  if (object)
  {
    dispatch_release(object);
  }

  if (v43)
  {
    _Block_release(v43);
  }

  if (v41)
  {
    dispatch_release(v41);
  }

  if (v40)
  {
    _Block_release(v40);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_weak(v46);
  }

LABEL_101:
  v42 = v52;
  if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  if (v57)
  {
    std::__shared_weak_count::__release_weak(v57);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_weak(v63);
  }

  if (v66)
  {
    std::__shared_weak_count::__release_weak(v66);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_2975DE668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  if (a38)
  {
    std::__shared_weak_count::__release_weak(a38);
  }

  if (a45)
  {
    std::__shared_weak_count::__release_weak(a45);
  }

  v48 = *(v46 - 208);
  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

  v49 = *(v46 - 144);
  if (v49)
  {
    std::__shared_weak_count::__release_weak(v49);
  }

  std::__shared_weak_count::__release_weak(v45);
  _Unwind_Resume(a1);
}