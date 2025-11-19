void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C275580](exception, 1);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v4 = a4 - __src;
  memset(__dst, 170, sizeof(__dst));
  if ((a4 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 <= 0x16)
  {
    __dst[23] = a4 - __src;
    v9 = __dst;
    if (a4 == __src)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v9, __src, v4);
    goto LABEL_10;
  }

  if ((v4 | 7) == 0x17)
  {
    v10 = 25;
  }

  else
  {
    v10 = (v4 | 7) + 1;
  }

  v9 = operator new(v10);
  *&__dst[8] = v4;
  *&__dst[16] = v10 | 0x8000000000000000;
  *__dst = v9;
  if (a4 != __src)
  {
    goto LABEL_9;
  }

LABEL_10:
  v9[v4] = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  if ((__dst[23] & 0x80000000) != 0)
  {
    v11 = *__dst;
    if (!*&__dst[8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (!__dst[23])
    {
      return;
    }

    v11 = __dst;
  }

  std::__get_collation_name(&v18, v11);
  *a1 = *&v18.__r_.__value_.__l.__data_;
  v12 = v18.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v18.__r_.__value_.__l + 2);
  v13 = HIBYTE(v12);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a1 + 8);
  }

  if (v13)
  {
    goto LABEL_17;
  }

  if ((__dst[23] & 0x8000000000000000) != 0)
  {
    v11 = *__dst;
    if (*&__dst[8] < 3uLL)
    {
LABEL_25:
      (*(**(a2 + 16) + 32))(&v18);
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      *a1 = v18;
      if (*(a1 + 23) < 0)
      {
        v15 = *(a1 + 8);
        if (v15 == 1 || v15 == 12)
        {
          if (__dst != a1)
          {
            if (__dst[23] >= 0)
            {
              v16 = __dst;
            }

            else
            {
              v16 = *__dst;
            }

            if (__dst[23] >= 0)
            {
              v17 = __dst[23];
            }

            else
            {
              v17 = *&__dst[8];
            }

            std::string::__assign_no_alias<false>(a1, v16, v17);
          }
        }

        else
        {
          **a1 = 0;
          *(a1 + 8) = 0;
        }
      }

      else
      {
        v14 = *(a1 + 23);
        if (v14 == 1 || v14 == 12)
        {
          if (__dst != a1)
          {
            if ((__dst[23] & 0x80000000) != 0)
            {
              std::string::__assign_no_alias<true>(a1, *__dst, *&__dst[8]);
            }

            else
            {
              *a1 = *__dst;
              *(a1 + 16) = *&__dst[16];
            }
          }
        }

        else
        {
          *a1 = 0;
          *(a1 + 23) = 0;
        }
      }

LABEL_17:
      if ((__dst[23] & 0x80000000) == 0)
      {
        return;
      }

      v11 = *__dst;
    }

LABEL_19:
    operator delete(v11);
    return;
  }

  if (__dst[23] < 3)
  {
    goto LABEL_25;
  }
}

void sub_2977DBA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

char *std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3) + 1;
  if (v4 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
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

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
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
  MEMORY[0x29C275580](exception, 2);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
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
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
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

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v4 = a4 - __src;
  memset(__dst, 170, sizeof(__dst));
  if ((a4 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 <= 0x16)
  {
    HIBYTE(__dst[2]) = a4 - __src;
    v8 = __dst;
    if (a4 == __src)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, __src, v4);
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

  v8 = operator new(v9);
  __dst[1] = v4;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v8;
  if (a4 != __src)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v4) = 0;
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

  (*(**(a2 + 16) + 32))(*(a2 + 16), v11, &v10[v11]);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_2977DBFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  MEMORY[0x29C275580](exception, 9);
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
  v16->__vftable = &unk_2A1E54068;
  v16[3].__vftable = __min;
  v16[4].__vftable = __max;
  LODWORD(v16[5].__vftable) = loop_count;
  HIDWORD(v16[5].__vftable) = v8;
  LODWORD(v16[6].__vftable) = v7;
  BYTE4(v16[6].__vftable) = __greedy;
  __s->__first_ = 0;
  v18 = operator new(0x10uLL);
  v18->__vftable = &unk_2A1E540F8;
  v18[1].__vftable = v16;
  end->__first_ = v18;
  this->__end_ = v13;
  __s->__first_ = v16;
  this->__loop_count_ = loop_count + 1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C275580](exception, 8);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C275580](exception, 7);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void (__cdecl ***std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_2A1E540C8;
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
  *__p = &unk_2A1E540C8;
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
  *a1 = &unk_2A1E540C8;
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
  *__p = &unk_2A1E540C8;
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
  *a1 = &unk_2A1E540C8;
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
  *__p = &unk_2A1E540C8;
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
  MEMORY[0x29C275580](exception, 15);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    goto LABEL_20;
  }

  v7 = a2 + 1;
  v6 = *a2;
  if ((a2 + 1 != a3 || v6 != 36) && ((v6 - 46) > 0x2E || ((1 << (v6 - 46)) & 0x600000000001) == 0))
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
    result = a2 + 1;
    goto LABEL_21;
  }

  result = a2;
  if (v7 == a3)
  {
    goto LABEL_9;
  }

  v10 = *a2;
  if (v10 != 92)
  {
    result = a2;
    if (v10 != 46)
    {
LABEL_20:
      result = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v11 = *v7;
  if ((v11 - 36) > 0x3A || ((1 << (v11 - 36)) & 0x580000000000441) == 0)
  {
    goto LABEL_20;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v11);
  result = a2 + 2;
  if (a2 + 2 == a2)
  {
LABEL_9:
    if (*result != 46)
    {
      goto LABEL_20;
    }

LABEL_19:
    v13 = result;
    v14 = operator new(0x10uLL);
    v15 = *(a1 + 56);
    v16 = *(v15 + 8);
    *v14 = &unk_2A1E541D0;
    v14[1] = v16;
    *(v15 + 8) = v14;
    *(a1 + 56) = v14;
    result = v13 + 1;
  }

LABEL_21:
  if (a2 == a3 || result != a2)
  {
    return result;
  }

  if (a2 + 1 == a3)
  {
    return a2;
  }

  if (*result != 92)
  {
    return a2;
  }

  v17 = a2[1];
  if (v17 == 40)
  {
    result = a2 + 2;
  }

  if (result != a2)
  {
    if ((*(a1 + 24) & 2) != 0)
    {
      v20 = *(a1 + 28);
    }

    else
    {
      v18 = result;
      v19 = operator new(0x18uLL);
      result = v18;
      v20 = *(a1 + 28) + 1;
      *(a1 + 28) = v20;
      v21 = *(a1 + 56);
      v22 = *(v21 + 8);
      *v19 = &unk_2A1E53FD8;
      v19[1] = v22;
      *(v19 + 4) = v20;
      *(v21 + 8) = v19;
      *(a1 + 56) = v19;
    }

    do
    {
      if (result == a3)
      {
        goto LABEL_53;
      }

      v23 = result;
      v24 = *(a1 + 56);
      v25 = *(a1 + 28);
      v26 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(a1, result, a3);
      if (v23 == v26)
      {
        break;
      }

      result = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v26, a3, v24, (v25 + 1), (*(a1 + 28) + 1));
    }

    while (v23 != result);
    if (v23 == a3)
    {
      result = a3;
    }

    else
    {
      if (v23 + 1 == a3 || *v23 != 92)
      {
        goto LABEL_53;
      }

      if (v23[1] == 41)
      {
        result = v23 + 2;
      }

      else
      {
        result = v23;
      }
    }

    if (result != v23)
    {
      if ((*(a1 + 24) & 2) == 0)
      {
        v27 = result;
        v28 = operator new(0x18uLL);
        result = v27;
        v29 = *(a1 + 56);
        v30 = *(v29 + 8);
        *v28 = &unk_2A1E54020;
        v28[1] = v30;
        *(v28 + 4) = v20;
        *(v29 + 8) = v28;
        *(a1 + 56) = v28;
      }

      return result;
    }

LABEL_53:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if ((v17 & 0xF8) != 0x30 && (v17 & 0xFE) != 0x38)
  {
    return a2;
  }

  result = a2;
  if ((v17 - 49) <= 8)
  {
    if ((v17 - 48) > *(a1 + 28))
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v17 - 48);
    return a2 + 2;
  }

  return result;
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (a2 == a3)
  {
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(this, a2, a2);
    if (v8 != a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = *a2;
  v10 = (v9 - 36);
  if (v10 > 0x3A)
  {
    goto LABEL_37;
  }

  if (((1 << (v9 - 36)) & 0x5800000080004D1) == 0)
  {
    if (v10 == 5)
    {
      if (this->__open_count_)
      {
        goto LABEL_6;
      }

      LOBYTE(v9) = 41;
LABEL_38:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v9);
      v12 = a2 + 1;
      goto LABEL_29;
    }

LABEL_37:
    if ((v9 - 123) < 2)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_6:
  v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(this, a2, a3);
  v12 = v11;
  if (v11 != a2)
  {
    goto LABEL_12;
  }

  if (*v11 != 46)
  {
LABEL_10:
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(this, a2, a3);
LABEL_11:
    v12 = v8;
LABEL_12:
    if (v12 != a2)
    {
      goto LABEL_29;
    }

LABEL_13:
    if (v12 == a3)
    {
      goto LABEL_29;
    }

    v16 = *v12;
    switch(v16)
    {
      case '$':
        v17 = operator new(0x18uLL);
        v18 = (this->__flags_ & 0x5F0) == 1024;
        v19 = this->__end_;
        v17->__first_ = v19->__first_;
        v20 = &unk_2A1E53CC0;
        break;
      case '(':
        if ((this->__flags_ & 2) != 0)
        {
          v22 = this->__marked_count_;
        }

        else
        {
          v21 = operator new(0x18uLL);
          v22 = this->__marked_count_ + 1;
          this->__marked_count_ = v22;
          v23 = this->__end_;
          first = v23->__first_;
          v21->__vftable = &unk_2A1E53FD8;
          v21->__first_ = first;
          LODWORD(v21[1].__vftable) = v22;
          v23->__first_ = v21;
          this->__end_ = v21;
        }

        ++this->__open_count_;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(this, v12 + 1, a3);
        if (v25 == a3 || (v12 = v25, *v25 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        if ((this->__flags_ & 2) == 0)
        {
          v26 = operator new(0x18uLL);
          v27 = this->__end_;
          v28 = v27->__first_;
          v26->__vftable = &unk_2A1E54020;
          v26->__first_ = v28;
          LODWORD(v26[1].__vftable) = v22;
          v27->__first_ = v26;
          this->__end_ = v26;
        }

        --this->__open_count_;
        goto LABEL_28;
      case '^':
        v17 = operator new(0x18uLL);
        v18 = (this->__flags_ & 0x5F0) == 1024;
        v19 = this->__end_;
        v17->__first_ = v19->__first_;
        v20 = &unk_2A1E53C78;
        break;
      default:
        goto LABEL_29;
    }

    v17->__vftable = v20;
    LOBYTE(v17[1].__vftable) = v18;
    v19->__first_ = v17;
    this->__end_ = v17;
LABEL_28:
    ++v12;
    goto LABEL_29;
  }

  v13 = operator new(0x10uLL);
  v14 = this->__end_;
  v15 = v14->__first_;
  v13->__vftable = &unk_2A1E541D0;
  v13->__first_ = v15;
  v14->__first_ = v13;
  this->__end_ = v13;
  if (++v12 == a2)
  {
    goto LABEL_13;
  }

LABEL_29:
  if (v12 == a2)
  {
    return a2;
  }

  v29 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(this, v12, a3, end, marked_count + 1, v29);
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

uint64_t std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v147 = 0u;
  v148 = 0u;
  v146 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_154;
  }

  *v145 = 0;
  memset(&v145[8], 0, 85);
  std::deque<std::__state<char>>::__add_back_capacity(&v146);
  v11 = 0xC30C30C30C30C30DLL;
  v12 = *(*(&v146 + 1) + 8 * ((v148.i64[0] + v148.i64[1]) / 0x2AuLL)) + 96 * ((v148.i64[0] + v148.i64[1]) % 0x2AuLL);
  v13 = *&v145[16];
  *v12 = *v145;
  *(v12 + 16) = v13;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = 0;
  memset(&v145[32], 0, 24);
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  memset(&v145[56], 0, 24);
  v14 = *&v145[80];
  *(v12 + 85) = *&v145[85];
  *(v12 + 80) = v14;
  v16 = v148.i64[1];
  v15 = v148.i64[0];
  v17 = ++v148.i64[1];
  v18 = *(&v146 + 1);
  v19 = *(a1 + 32);
  v20 = *(*(&v146 + 1) + 8 * ((v148.i64[0] + v16) / 0x2AuLL)) + 96 * ((v148.i64[0] + v16) % 0x2AuLL);
  *v20 = 0;
  *(v20 + 8) = a2;
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = *(v20 + 56);
  v22 = (*(v20 + 64) - v21) >> 4;
  v138 = a4;
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
    v17 = v148.i64[1];
    v15 = v148.i64[0];
    v18 = *(&v146 + 1);
  }

  v139 = 0;
  v141 = 0;
  v23 = 0;
  v24 = *(v18 + 8 * ((v15 + v17 - 1) / 0x2AuLL)) + 96 * ((v15 + v17 - 1) % 0x2AuLL);
  *(v24 + 80) = v6;
  v144 = a3 - a2;
  *(v24 + 88) = a5;
  *(v24 + 92) = a6;
  do
  {
    if ((++v23 & 0xFFF) == 0 && (v23 >> 12) >= v144)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v26 = v17 + v148.i64[0] - 1;
    v27 = v11;
    v28 = (((v26 >> 1) * v11) >> 64) >> 4;
    v29 = *(*(&v146 + 1) + 8 * v28) + 96 * (v26 - 42 * v28);
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
          goto LABEL_9;
        }

        if (v31 != -995)
        {
LABEL_170:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        v32 = v148.i64[0];
        v33 = *(&v146 + 1);
        v34 = v147;
        if (v148.i64[0])
        {
          goto LABEL_124;
        }

        v35 = v147 - *(&v146 + 1);
        v36 = 42 * ((v147 - *(&v146 + 1)) >> 3) - 1;
        if (v147 == *(&v146 + 1))
        {
          v36 = 0;
        }

        if ((v36 - v148.i64[1]) >= 0x2A)
        {
          v148.i64[0] = 42;
          v38 = (v147 - 8);
          v37 = *(v147 - 8);
          *&v147 = v147 - 8;
          v39 = v146;
          if (*(&v146 + 1) != v146)
          {
            v40 = *(&v146 + 1);
            goto LABEL_116;
          }

          if (v38 < *(&v147 + 1))
          {
            v85 = (((*(&v147 + 1) - v38) >> 3) + 1) / 2;
            v40 = 8 * v85 + *(&v146 + 1);
            if (v38 != *(&v146 + 1))
            {
              memmove((8 * v85 + *(&v146 + 1)), *(&v146 + 1), &v38[-*(&v146 + 1)]);
              v38 = v147;
            }

            *&v147 = &v38[8 * v85];
            goto LABEL_116;
          }

          if (*(&v147 + 1) == *(&v146 + 1))
          {
            v87 = 1;
          }

          else
          {
            v87 = (*(&v147 + 1) - *(&v146 + 1)) >> 2;
          }

          if (!(v87 >> 61))
          {
            v88 = operator new(8 * v87);
            v89 = v87;
            v90 = (v87 + 3) >> 2;
            v40 = &v88[8 * v90];
            v91 = v40;
            if (v38 != v33)
            {
              v91 = (v40 + v38 - v33);
              v92 = &v88[8 * v90];
              v93 = v33;
              if (v35 - 16 < 0x18)
              {
                goto LABEL_175;
              }

              v94 = 8 * v90;
              v92 = &v88[8 * v90];
              v93 = v33;
              if ((v92 - v33) < 0x20)
              {
                goto LABEL_175;
              }

              v95 = ((v35 - 16) >> 3) + 1;
              v96 = 8 * (v95 & 0x3FFFFFFFFFFFFFFCLL);
              v92 = (v40 + v96);
              v93 = &v33[v96];
              v97 = (v33 + 16);
              v98 = &v88[v94 + 16];
              v99 = v95 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v100 = *v97;
                *(v98 - 1) = *(v97 - 1);
                *v98 = v100;
                v97 += 2;
                v98 += 32;
                v99 -= 4;
              }

              while (v99);
              if (v95 != (v95 & 0x3FFFFFFFFFFFFFFCLL))
              {
LABEL_175:
                do
                {
                  v101 = *v93;
                  v93 += 8;
                  *v92 = v101;
                  v92 += 8;
                }

                while (v92 != v91);
              }
            }

            *&v146 = v88;
            *(&v146 + 1) = v40;
            *&v147 = v91;
            *(&v147 + 1) = &v88[8 * v89];
            if (v33)
            {
              operator delete(v39);
              v40 = *(&v146 + 1);
            }

LABEL_116:
            *(v40 - 8) = v37;
            v78 = (v40 - 8);
            *(&v146 + 1) = v78;
LABEL_123:
            v32 = v148.i64[0];
            v34 = v147;
            v33 = v78;
            v11 = v27;
LABEL_124:
            v106 = (((v32 >> 1) * v11) >> 64) >> 4;
            v107 = &v33[8 * v106];
            v108 = *v107 + 96 * (v32 - 42 * v106);
            if (v34 == v33)
            {
              v108 = 0;
            }

            if (v108 == *v107)
            {
              v108 = *(v107 - 1) + 4032;
            }

            v109 = *(v29 + 16);
            *(v108 - 96) = *v29;
            *(v108 - 80) = v109;
            *(v108 - 56) = 0;
            *(v108 - 48) = 0;
            *(v108 - 64) = 0;
            *(v108 - 64) = *(v29 + 32);
            *(v108 - 48) = *(v29 + 48);
            *(v29 + 32) = 0;
            *(v29 + 40) = 0;
            *(v29 + 48) = 0;
            *(v108 - 40) = 0;
            *(v108 - 32) = 0;
            *(v108 - 24) = 0;
            *(v108 - 40) = *(v29 + 56);
            *(v108 - 24) = *(v29 + 72);
            *(v29 + 56) = 0;
            *(v29 + 64) = 0;
            *(v29 + 72) = 0;
            v110 = *(v29 + 80);
            *(v108 - 11) = *(v29 + 85);
            *(v108 - 16) = v110;
            v111 = vdupq_laneq_s64(v148, 1);
            v148 = vaddq_s64(v148, xmmword_2977DFBD0);
            v111.i64[0] = vaddq_s64(v111, v148).u64[0];
            v112 = (((v111.i64[0] >> 1) * v11) >> 64) >> 4;
            v44 = (*(*(&v146 + 1) + 8 * v112) + 96 * (v111.i64[0] - 42 * v112));
            v45 = v44[7];
            if (!v45)
            {
LABEL_35:
              v46 = v44[4];
              if (v46)
              {
                v44[5] = v46;
                operator delete(v46);
              }

              v47 = 42 * ((v147 - *(&v146 + 1)) >> 3) - 1;
              v48 = v148;
              --v148.i64[1];
              if (v147 == *(&v146 + 1))
              {
                v47 = 0;
              }

              if ((v47 - (v48.i64[1] + v48.i64[0]) + 1) >= 0x54)
              {
                operator delete(*(v147 - 8));
                *&v147 = v147 - 8;
              }

              goto LABEL_9;
            }

LABEL_34:
            v44[8] = v45;
            operator delete(v45);
            goto LABEL_35;
          }

LABEL_172:
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        if (v35 < *(&v147 + 1) - v146)
        {
          if (*(&v146 + 1) == v146)
          {
            *v145 = operator new(0xFC0uLL);
            std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(&v146, v145);
            *v145 = *(v147 - 8);
            *&v147 = v147 - 8;
          }

          else
          {
            *v145 = operator new(0xFC0uLL);
          }

          std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(&v146, v145);
          v78 = *(&v146 + 1);
          v86 = 21;
          if (v147 - *(&v146 + 1) != 8)
          {
            v86 = v148.i64[0] + 42;
          }

          v148.i64[0] = v86;
          goto LABEL_123;
        }

        if (*(&v147 + 1) == v146)
        {
          v77 = 1;
        }

        else
        {
          v77 = (*(&v147 + 1) - v146) >> 2;
        }

        if (v77 >> 61)
        {
          goto LABEL_172;
        }

        v78 = operator new(8 * v77);
        v79 = operator new(0xFC0uLL);
        v80 = v79;
        if (v77)
        {
          v81 = &v78[8 * v77];
          *v78 = v79;
          v82 = v78 + 8;
          v83 = v33 == v34;
          v84 = v78;
          if (!v83)
          {
            goto LABEL_132;
          }

          goto LABEL_119;
        }

        v102 = operator new(8uLL);
        v81 = v102 + 8;
        operator delete(v78);
        v33 = *(&v146 + 1);
        v103 = v147;
        v78 = v102;
        *v102 = v80;
        v82 = v102 + 8;
        v83 = v33 == v103;
        v84 = v78;
        if (v83)
        {
LABEL_119:
          v104 = v146;
          *&v146 = v84;
          *(&v146 + 1) = v78;
          *&v147 = v82;
          *(&v147 + 1) = v81;
          v105 = v148.i64[0] + 42;
          if (v82 - v78 == 8)
          {
            v105 = 21;
          }

          v148.i64[0] = v105;
          if (v104)
          {
            operator delete(v104);
            v78 = *(&v146 + 1);
          }

          goto LABEL_123;
        }

LABEL_132:
        while (2)
        {
          if (v82 != v81)
          {
            v113 = v78;
            goto LABEL_131;
          }

          v140 = v84;
          if (v78 > v84)
          {
            v115 = (((v78 - v84) >> 3) + 1 + ((((v78 - v84) >> 3) + 1) >> 63)) >> 1;
            v113 = &v78[-8 * v115];
            if (v82 != v78)
            {
              memmove(&v78[-8 * v115], v78, v82 - v78);
            }

            v82 = &v113[v82 - v78];
            goto LABEL_131;
          }

          if (v82 == v84)
          {
            v116 = 1;
          }

          else
          {
            v116 = (v82 - v84) >> 2;
          }

          if (v116 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v117 = operator new(8 * v116);
          v84 = v117;
          v118 = v116 >> 2;
          v113 = &v117[8 * (v116 >> 2)];
          v119 = v82 - v78;
          v83 = v82 == v78;
          v82 = v113;
          if (!v83)
          {
            v82 = &v113[v119];
            v120 = v119 - 8;
            if (v120 < 0x18 || (v121 = 8 * v118, (&v117[8 * v118] - v78) < 0x20))
            {
              v122 = &v117[8 * (v116 >> 2)];
              v123 = v78;
              goto LABEL_145;
            }

            v125 = (v120 >> 3) + 1;
            v126 = 8 * (v125 & 0x3FFFFFFFFFFFFFFCLL);
            v122 = &v113[v126];
            v123 = &v78[v126];
            v127 = (v78 + 16);
            v128 = &v117[v121 + 16];
            v129 = v125 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v130 = *v127;
              *(v128 - 1) = *(v127 - 1);
              *v128 = v130;
              v127 += 2;
              v128 += 32;
              v129 -= 4;
            }

            while (v129);
            if (v125 != (v125 & 0x3FFFFFFFFFFFFFFCLL))
            {
              do
              {
LABEL_145:
                v124 = *v123;
                v123 += 8;
                *v122 = v124;
                v122 += 8;
              }

              while (v122 != v82);
            }
          }

          v81 = &v117[8 * v116];
          if (v140)
          {
            operator delete(v140);
          }

LABEL_131:
          v114 = *v33;
          v33 += 8;
          *v82 = v114;
          v82 += 8;
          v78 = v113;
          if (v33 == v147)
          {
            goto LABEL_119;
          }

          continue;
        }
      }

      v41 = *(v29 + 16);
      if ((a5 & 0x20) != 0 && v41 == a2)
      {
        goto LABEL_33;
      }

      v57 = v41 - *(v29 + 8);
      v58 = v139;
      if (v139 <= v57)
      {
        v58 = v57;
      }

      if ((v141 & 1) == 0)
      {
        v58 = v57;
      }

      if (v58 == v144)
      {
        v59 = *(&v146 + 1);
        if (v147 == *(&v146 + 1))
        {
          v148.i64[1] = 0;
          v65 = 0;
        }

        else
        {
          v60 = (((v148.i64[0] >> 1) * v11) >> 64) >> 4;
          v61 = (*(&v146 + 1) + 8 * v60);
          v62 = (*v61 + 96 * (v148.i64[0] - 42 * v60));
          v63 = ((((v148.i64[1] + v148.i64[0]) >> 1) * v11) >> 64) >> 4;
          v64 = *(*(&v146 + 1) + 8 * v63) + 96 * (v148.i64[1] + v148.i64[0] - 42 * v63);
          if (v62 == v64)
          {
            v148.i64[1] = 0;
            v65 = (v147 - *(&v146 + 1)) >> 3;
            if (v65 >= 3)
            {
              goto LABEL_58;
            }
          }

          else
          {
            do
            {
              v67 = v62[7];
              if (v67)
              {
                v62[8] = v67;
                operator delete(v67);
              }

              v68 = v62[4];
              if (v68)
              {
                v62[5] = v68;
                operator delete(v68);
              }

              v62 += 12;
              if ((v62 - *v61) == 4032)
              {
                v69 = v61[1];
                ++v61;
                v62 = v69;
              }
            }

            while (v62 != v64);
            v59 = *(&v146 + 1);
            v148.i64[1] = 0;
            v65 = (v147 - *(&v146 + 1)) >> 3;
            if (v65 >= 3)
            {
              do
              {
LABEL_58:
                operator delete(*v59);
                v59 = (*(&v146 + 1) + 8);
                *(&v146 + 1) = v59;
                v65 = (v147 - v59) >> 3;
              }

              while (v65 > 2);
            }
          }
        }

        if (v65 == 1)
        {
          v66 = 21;
LABEL_93:
          v148.i64[0] = v66;
        }

        else if (v65 == 2)
        {
          v66 = 42;
          goto LABEL_93;
        }

        v141 = 1;
        v139 = v144;
        goto LABEL_9;
      }

      v139 = v58;
      v70 = v148.i64[1] + v148.i64[0] - 1;
      v71 = (((v70 >> 1) * v11) >> 64) >> 4;
      v72 = (*(*(&v146 + 1) + 8 * v71) + 96 * (v70 - 42 * v71));
      v73 = v72[7];
      if (v73)
      {
        v72[8] = v73;
        operator delete(v73);
      }

      v74 = v72[4];
      if (v74)
      {
        v72[5] = v74;
        operator delete(v74);
      }

      v75 = 42 * ((v147 - *(&v146 + 1)) >> 3) - 1;
      v76 = v148;
      --v148.i64[1];
      if (v147 == *(&v146 + 1))
      {
        v75 = 0;
      }

      if ((v75 - (v76.i64[1] + v76.i64[0]) + 1) >= 0x54)
      {
        operator delete(*(v147 - 8));
        *&v147 = v147 - 8;
      }

      v141 = 1;
    }

    else
    {
      if (v31 <= -993)
      {
        if (v31 == -994)
        {
          goto LABEL_9;
        }

        if (v31 != -993)
        {
          goto LABEL_170;
        }

LABEL_33:
        v42 = v148.i64[1] + v148.i64[0] - 1;
        v43 = (((v42 >> 1) * v11) >> 64) >> 4;
        v44 = (*(*(&v146 + 1) + 8 * v43) + 96 * (v42 - 42 * v43));
        v45 = v44[7];
        if (!v45)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      if (v31 == -992)
      {
        *&v49 = 0xAAAAAAAAAAAAAAAALL;
        *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v145[64] = v49;
        *&v145[80] = v49;
        *&v145[32] = v49;
        *&v145[48] = v49;
        *v145 = v49;
        *&v145[16] = v49;
        std::__state<char>::__state(v145, v29);
        (*(**(v29 + 80) + 24))(*(v29 + 80), 1, v29);
        (*(**&v145[80] + 24))(*&v145[80], 0, v145);
        v50 = *(&v146 + 1);
        if (v147 == *(&v146 + 1))
        {
          v51 = 0;
        }

        else
        {
          v51 = 42 * ((v147 - *(&v146 + 1)) >> 3) - 1;
        }

        v52 = v148.i64[1] + v148.i64[0];
        if (v51 == v148.i64[1] + v148.i64[0])
        {
          std::deque<std::__state<char>>::__add_back_capacity(&v146);
          v50 = *(&v146 + 1);
          v52 = v148.i64[1] + v148.i64[0];
        }

        v53 = (((v52 >> 1) * v11) >> 64) >> 4;
        v54 = *(v50 + 8 * v53) + 96 * (v52 - 42 * v53);
        v55 = *&v145[16];
        *v54 = *v145;
        *(v54 + 16) = v55;
        *(v54 + 40) = 0;
        *(v54 + 48) = 0;
        *(v54 + 32) = 0;
        *(v54 + 32) = *&v145[32];
        *(v54 + 48) = *&v145[48];
        memset(&v145[32], 0, 24);
        *(v54 + 56) = 0;
        *(v54 + 64) = 0;
        *(v54 + 72) = 0;
        *(v54 + 56) = *&v145[56];
        *(v54 + 72) = *&v145[72];
        memset(&v145[56], 0, 24);
        v56 = *&v145[80];
        *(v54 + 85) = *&v145[85];
        *(v54 + 80) = v56;
        ++v148.i64[1];
        if (*&v145[56])
        {
          *&v145[64] = *&v145[56];
          operator delete(*&v145[56]);
        }

        if (*&v145[32])
        {
          *&v145[40] = *&v145[32];
          operator delete(*&v145[32]);
        }
      }

      else if (v31 != -991)
      {
        goto LABEL_170;
      }
    }

LABEL_9:
    v17 = v148.i64[1];
  }

  while (v148.i64[1]);
  if ((v141 & 1) == 0)
  {
    v6 = 0;
    v132 = *(&v146 + 1);
    v133 = v147;
    v148.i64[1] = 0;
    v134 = (v147 - *(&v146 + 1)) >> 3;
    if (v134 < 3)
    {
      goto LABEL_156;
    }

    goto LABEL_155;
  }

  v131 = *v138;
  *v131 = a2;
  *(v131 + 8) = a2 + v139;
  v6 = 1;
  *(v131 + 16) = 1;
LABEL_154:
  v132 = *(&v146 + 1);
  v133 = v147;
  v148.i64[1] = 0;
  v134 = (v147 - *(&v146 + 1)) >> 3;
  if (v134 < 3)
  {
    goto LABEL_156;
  }

  do
  {
LABEL_155:
    operator delete(*v132);
    v133 = v147;
    v132 = (*(&v146 + 1) + 8);
    *(&v146 + 1) = v132;
    v134 = (v147 - v132) >> 3;
  }

  while (v134 > 2);
LABEL_156:
  if (v134 == 1)
  {
    v135 = 21;
    goto LABEL_160;
  }

  if (v134 == 2)
  {
    v135 = 42;
LABEL_160:
    v148.i64[0] = v135;
  }

  if (v132 != v133)
  {
    do
    {
      v136 = *v132++;
      operator delete(v136);
    }

    while (v132 != v133);
    if (v147 != *(&v146 + 1))
    {
      *&v147 = v147 + ((*(&v146 + 1) - v147 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v146)
  {
    operator delete(v146);
  }

  return v6;
}

void sub_2977DE548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  operator delete(v16);
  operator delete(v15);
  std::deque<std::__state<char>>::~deque[abi:ne200100](v17 - 144);
  _Unwind_Resume(a1);
}

void sub_2977DE570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  operator delete(v15);
  std::deque<std::__state<char>>::~deque[abi:ne200100](v16 - 144);
  _Unwind_Resume(a1);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, uint64_t a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v121 = 0;
  v122 = 0;
  v123 = 0;
  *&v120[36] = -1431655766;
  *v118 = 0xAAAAAAAA00000000;
  memset(&v118[8], 0, 32);
  *v119 = 0u;
  memset(v120, 0, 36);
  v6 = *(a1 + 40);
  if (!v6)
  {
    v11 = 0;
    v15 = 0;
    goto LABEL_151;
  }

  __x.second = a3;
  *&__x.matched = 0xAAAAAAAAAAAAAA00;
  __x.first = a3;
  *v116 = 0;
  memset(&v116[8], 0, 85);
  v11 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v121, v116);
  v122 = v11;
  if (*&v116[56])
  {
    operator delete(*&v116[56]);
  }

  if (*&v116[32])
  {
    operator delete(*&v116[32]);
  }

  v12 = *(v11 - 8);
  *(v11 - 24) = 0;
  *(v11 - 11) = a2;
  *(v11 - 10) = a2;
  *(v11 - 9) = a3;
  v13 = *(a1 + 28);
  v14 = 0xAAAAAAAAAAAAAAABLL * ((*(v11 - 7) - v12) >> 3);
  if (v13 <= v14)
  {
    if (v13 < v14)
    {
      *(v11 - 7) = v12 + 24 * v13;
    }
  }

  else
  {
    std::vector<std::sub_match<char const*>>::__append((v11 - 64), v13 - v14, &__x);
  }

  v16 = *(v11 - 5);
  v17 = *(a1 + 32);
  v18 = (*(v11 - 4) - v16) >> 4;
  if (v17 <= v18)
  {
    if (v17 < v18)
    {
      *(v11 - 4) = v16 + 16 * v17;
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append((v11 - 40), v17 - v18);
  }

  v113 = a4;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = &a3[-a2];
  *(v11 - 2) = v6;
  *(v11 - 2) = a5;
  *(v11 - 4) = a6;
  do
  {
    v23 = (++v21 & 0xFFF) != 0 || (v21 >> 12) < v22;
    if (!v23)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v25 = v11 - 16;
    v24 = *(v11 - 2);
    v26 = v11 - 96;
    if (v24)
    {
      (*(*v24 + 16))(v24, v11 - 96);
    }

    v27 = *v26;
    if (*v26 <= -994)
    {
      if ((v27 + 995) < 2)
      {
        goto LABEL_17;
      }

      if (v27 != -1000)
      {
LABEL_165:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }

      v28 = *(v11 - 10);
      if ((a5 & 0x20) != 0 && v28 == a2)
      {
LABEL_33:
        v29 = v122;
        v30 = *(v122 - 5);
        if (v30)
        {
          *(v122 - 4) = v30;
          operator delete(v30);
        }

        v31 = *(v29 - 8);
        if (v31)
        {
          *(v29 - 7) = v31;
          operator delete(v31);
        }

        v122 = v29 - 96;
        goto LABEL_17;
      }

      v36 = (v28 - *(v11 - 11));
      if ((v20 & (v19 >= v36)) == 0)
      {
        v37 = *(v11 - 5);
        *v118 = *v26;
        *&v118[16] = v37;
        if (v118 != v26)
        {
          v39 = *(v11 - 8);
          v38 = *(v11 - 7);
          v40 = v38 - v39;
          v41 = v119[1];
          v42 = *&v118[32];
          if (v119[1] - *&v118[32] >= (v38 - v39))
          {
            v48 = v119[0];
            if (v119[0] - *&v118[32] >= v40)
            {
              while (v39 != v38)
              {
                *v42 = *v39;
                v42[16] = v39[16];
                v39 += 24;
                v42 += 24;
              }
            }

            else
            {
              v49 = &v39[v119[0] - *&v118[32]];
              if (v119[0] != *&v118[32])
              {
                do
                {
                  *v42 = *v39;
                  v42[16] = v39[16];
                  v39 += 24;
                  v42 += 24;
                }

                while (v39 != v49);
              }

              if (v49 == v38)
              {
                v42 = v48;
              }

              else
              {
                v42 = v48;
                do
                {
                  v50 = *v49;
                  *(v48 + 2) = *(v49 + 2);
                  *v48 = v50;
                  v48 += 24;
                  v49 += 24;
                  v42 += 24;
                }

                while (v49 != v38);
              }
            }
          }

          else
          {
            v112 = v36;
            if (*&v118[32])
            {
              v119[0] = *&v118[32];
              operator delete(*&v118[32]);
              v41 = 0;
              *&v118[32] = 0;
              *v119 = 0uLL;
            }

            v43 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
            if (v43 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_167;
            }

            v44 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
            if (2 * v44 > v43)
            {
              v43 = 2 * v44;
            }

            v45 = v44 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v43;
            if (v45 > 0xAAAAAAAAAAAAAAALL)
            {
LABEL_167:
              std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
            }

            v46 = operator new(24 * v45);
            v42 = v46;
            *&v118[32] = v46;
            v119[0] = v46;
            v119[1] = &v46[24 * v45];
            if (v39 != v38)
            {
              v47 = 24 * ((v40 - 24) / 0x18uLL) + 24;
              memcpy(v46, v39, v47);
              v42 += v47;
            }

            v36 = v112;
          }

          v119[0] = v42;
          v52 = *(v11 - 5);
          v51 = *(v11 - 4);
          v53 = v51 - v52;
          v54 = *&v120[16];
          v55 = *v120;
          if (*&v120[16] - *v120 >= (v51 - v52))
          {
            v62 = *&v120[8];
            if (*&v120[8] - *v120 >= v53)
            {
              if (v52 == v51)
              {
                v60 = *v120;
              }

              else
              {
                v66 = v53 - 16;
                if ((v53 - 16) < 0x50)
                {
                  goto LABEL_92;
                }

                v88 = *v120 + 8 >= &v52[(v66 & 0xFFFFFFFFFFFFFFF0) + 16] || (v52 + 8) >= *v120 + (v66 & 0xFFFFFFFFFFFFFFF0) + 16;
                v89 = !v88;
                if (v52 < *v120 + 8 + (v66 & 0xFFFFFFFFFFFFFFF0) && *v120 < &v52[(v66 & 0xFFFFFFFFFFFFFFF0) + 8])
                {
                  goto LABEL_92;
                }

                if (v89)
                {
                  goto LABEL_92;
                }

                v91 = (v66 >> 4) + 1;
                v92 = 16 * (v91 & 0x1FFFFFFFFFFFFFFCLL);
                v60 = (*v120 + v92);
                v93 = &v52[v92];
                v94 = (v52 + 32);
                v95 = (*v120 + 32);
                v96 = v91 & 0x1FFFFFFFFFFFFFFCLL;
                do
                {
                  v98 = *(v94 - 2);
                  v97 = *(v94 - 1);
                  v100 = *v94;
                  v99 = v94[1];
                  v94 += 4;
                  *(v95 - 2) = v98;
                  *(v95 - 1) = v97;
                  *v95 = v100;
                  v95[1] = v99;
                  v95 += 4;
                  v96 -= 4;
                }

                while (v96);
                v55 = v60;
                v52 = v93;
                if (v91 != (v91 & 0x1FFFFFFFFFFFFFFCLL))
                {
LABEL_92:
                  v60 = v55;
                  do
                  {
                    *v60 = *v52;
                    v60[1] = *(v52 + 1);
                    v52 += 16;
                    v60 += 2;
                  }

                  while (v52 != v51);
                }
              }
            }

            else
            {
              v63 = &v52[*&v120[8] - *v120];
              if (*&v120[8] != *v120)
              {
                v64 = *&v120[8] - *v120 - 16;
                if (v64 < 0x50)
                {
                  goto LABEL_170;
                }

                v74 = *v120 + 8 >= &v52[(v64 & 0xFFFFFFFFFFFFFFF0) + 16] || (v52 + 8) >= *v120 + (v64 & 0xFFFFFFFFFFFFFFF0) + 16;
                v75 = !v74;
                if (v52 < *v120 + 8 + (v64 & 0xFFFFFFFFFFFFFFF0) && *v120 < &v52[(v64 & 0xFFFFFFFFFFFFFFF0) + 8])
                {
                  goto LABEL_170;
                }

                if (v75)
                {
                  goto LABEL_170;
                }

                v77 = (v64 >> 4) + 1;
                v78 = 16 * (v77 & 0x1FFFFFFFFFFFFFFCLL);
                v79 = (*v120 + v78);
                v80 = &v52[v78];
                v81 = (v52 + 32);
                v82 = (*v120 + 32);
                v83 = v77 & 0x1FFFFFFFFFFFFFFCLL;
                do
                {
                  v85 = *(v81 - 2);
                  v84 = *(v81 - 1);
                  v87 = *v81;
                  v86 = v81[1];
                  v81 += 4;
                  *(v82 - 2) = v85;
                  *(v82 - 1) = v84;
                  *v82 = v87;
                  v82[1] = v86;
                  v82 += 4;
                  v83 -= 4;
                }

                while (v83);
                v55 = v79;
                v52 = v80;
                if (v77 != (v77 & 0x1FFFFFFFFFFFFFFCLL))
                {
LABEL_170:
                  do
                  {
                    *v55 = *v52;
                    v55[1] = *(v52 + 1);
                    v52 += 16;
                    v55 += 2;
                  }

                  while (v52 != v63);
                }
              }

              if (v63 == v51)
              {
                v60 = v62;
              }

              else
              {
                v60 = v62;
                do
                {
                  v65 = *v63;
                  v63 += 16;
                  *v62++ = v65;
                  v60 += 2;
                }

                while (v63 != v51);
              }
            }
          }

          else
          {
            v56 = v36;
            if (*v120)
            {
              *&v120[8] = *v120;
              operator delete(*v120);
              v54 = 0;
              memset(v120, 0, 24);
            }

            v57 = v53 >> 4;
            if ((v53 >> 4) >> 60)
            {
              goto LABEL_166;
            }

            if (v54 >> 3 > v57)
            {
              v57 = v54 >> 3;
            }

            v58 = v54 >= 0x7FFFFFFFFFFFFFF0 ? 0xFFFFFFFFFFFFFFFLL : v57;
            if (v58 >> 60)
            {
LABEL_166:
              std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
            }

            v59 = operator new(16 * v58);
            v60 = v59;
            *v120 = v59;
            *&v120[8] = v59;
            *&v120[16] = &v59[2 * v58];
            if (v52 != v51)
            {
              v61 = v53 & 0xFFFFFFFFFFFFFFF0;
              memcpy(v59, v52, v61);
              v60 = (v60 + v61);
            }

            v36 = v56;
          }

          *&v120[8] = v60;
        }

        v67 = *v25;
        *&v120[29] = *(v25 + 5);
        *&v120[24] = v67;
        v19 = v36;
      }

      v68 = v122;
      if (v19 == v22)
      {
        v69 = v121;
        while (v68 != v69)
        {
          v70 = *(v68 - 5);
          if (v70)
          {
            *(v68 - 4) = v70;
            operator delete(v70);
          }

          v71 = *(v68 - 8);
          if (v71)
          {
            *(v68 - 7) = v71;
            operator delete(v71);
          }

          v68 -= 96;
        }

        v122 = v69;
        v20 = 1;
        v19 = v22;
      }

      else
      {
        v72 = *(v122 - 5);
        if (v72)
        {
          *(v122 - 4) = v72;
          operator delete(v72);
        }

        v73 = *(v68 - 8);
        if (v73)
        {
          *(v68 - 7) = v73;
          operator delete(v73);
        }

        v122 = v68 - 96;
        v20 = 1;
      }
    }

    else
    {
      switch(v27)
      {
        case -993:
          goto LABEL_33;
        case -992:
          *&v32 = 0xAAAAAAAAAAAAAAAALL;
          *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v116[64] = v32;
          *&v116[80] = v32;
          *&v116[32] = v32;
          *&v116[48] = v32;
          *v116 = v32;
          *&v116[16] = v32;
          std::__state<char>::__state(v116, v11 - 6);
          (*(**v25 + 24))(*v25, 1, v11 - 96);
          (*(**&v116[80] + 24))(*&v116[80], 0, v116);
          v33 = v122;
          if (v122 >= v123)
          {
            v122 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v121, v116);
            if (*&v116[56])
            {
              *&v116[64] = *&v116[56];
              operator delete(*&v116[56]);
            }
          }

          else
          {
            v34 = *&v116[16];
            *v122 = *v116;
            *(v33 + 1) = v34;
            *(v33 + 6) = 0;
            *(v33 + 7) = 0;
            *(v33 + 4) = 0;
            *(v33 + 5) = 0;
            *(v33 + 2) = *&v116[32];
            *(v33 + 6) = *&v116[48];
            *&v116[32] = 0;
            *&v116[40] = 0;
            *(v33 + 8) = 0;
            *(v33 + 9) = 0;
            *(v33 + 56) = *&v116[56];
            *(v33 + 9) = *&v116[72];
            memset(&v116[48], 0, 32);
            v35 = *&v116[80];
            *(v33 + 85) = *&v116[85];
            *(v33 + 10) = v35;
            v122 = v33 + 96;
          }

          if (*&v116[32])
          {
            *&v116[40] = *&v116[32];
            operator delete(*&v116[32]);
          }

          break;
        case -991:
          break;
        default:
          goto LABEL_165;
      }
    }

LABEL_17:
    v15 = v121;
    v11 = v122;
  }

  while (v121 != v122);
  if ((v20 & 1) == 0)
  {
LABEL_151:
    v107 = 0;
    v108 = *v120;
    if (!*v120)
    {
      goto LABEL_153;
    }

    goto LABEL_152;
  }

  v101 = *v113;
  *v101 = a2;
  *(v101 + 8) = &v19[a2];
  *(v101 + 16) = 1;
  if (v119[0] != *&v118[32])
  {
    v102 = 0xAAAAAAAAAAAAAAABLL * ((v119[0] - *&v118[32]) >> 3);
    v103 = (*&v118[32] + 16);
    v104 = 1;
    do
    {
      v105 = v101 + 24 * v104;
      *v105 = *(v103 - 1);
      v106 = *v103;
      v103 += 24;
      *(v105 + 16) = v106;
      v23 = v102 > v104++;
    }

    while (v23);
  }

  v107 = 1;
  v108 = *v120;
  if (*v120)
  {
LABEL_152:
    *&v120[8] = v108;
    operator delete(v108);
  }

LABEL_153:
  if (*&v118[32])
  {
    v119[0] = *&v118[32];
    operator delete(*&v118[32]);
  }

  if (v15)
  {
    while (v11 != v15)
    {
      v109 = *(v11 - 5);
      if (v109)
      {
        *(v11 - 4) = v109;
        operator delete(v109);
      }

      v110 = *(v11 - 8);
      if (v110)
      {
        *(v11 - 7) = v110;
        operator delete(v110);
      }

      v11 -= 96;
    }

    operator delete(v15);
  }

  return v107;
}

void sub_2977DEF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  std::__state<char>::~__state(&a29);
  std::vector<std::__state<char>>::~vector[abi:ne200100]((v29 - 120));
  _Unwind_Resume(a1);
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
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v44);
      return;
    }

    v44 = operator new(0xFC0uLL);
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v44);
LABEL_4:
    v5 = *(a1 + 8);
    v44 = *v5;
    *(a1 + 8) = v5 + 1;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v44);
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

void sub_2977DF2F8(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(char **a1, void *a2)
{
  v4 = a1[2];
  if (v4 != a1[3])
  {
    goto LABEL_19;
  }

  v5 = *a1;
  v6 = a1[1];
  if (v6 > *a1)
  {
    v7 = ((v6 - *a1) >> 3) + 1;
    v8 = &v6[-8 * (v7 / 2)];
    v9 = v4 - v6;
    if (v4 != v6)
    {
      memmove(&v6[-8 * (v7 / 2)], a1[1], v4 - v6);
      v6 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v6[8 * (v7 / -2)];
    goto LABEL_19;
  }

  v10 = (v4 - v5) >> 2;
  if (v4 == v5)
  {
    v10 = 1;
  }

  if (v10 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = v10 >> 2;
  v12 = 8 * v10;
  v13 = operator new(8 * v10);
  v14 = &v13[8 * v11];
  v16 = v4 - v6;
  v15 = v4 == v6;
  v4 = v14;
  if (!v15)
  {
    v4 = &v14[v16];
    v17 = v16 - 8;
    if ((v16 - 8) < 0x38)
    {
      v18 = &v13[8 * v11];
      do
      {
LABEL_16:
        v27 = *v6;
        v6 += 8;
        *v18 = v27;
        v18 += 8;
      }

      while (v18 != v4);
      goto LABEL_17;
    }

    v19 = &v13[8 * v11];
    v18 = v19;
    if ((v19 - v6) < 0x20)
    {
      goto LABEL_16;
    }

    v20 = (v17 >> 3) + 1;
    v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
    v18 = &v14[v21];
    v22 = &v6[v21];
    v23 = (v6 + 16);
    v24 = v19 + 16;
    v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    v6 = v22;
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v4;
  a1[3] = &v13[v12];
  if (v5)
  {
    operator delete(v5);
    v4 = a1[2];
  }

LABEL_19:
  *v4 = *a2;
  a1[2] = v4 + 8;
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (v8 >= v7)
    {
      v11 = v7 - v4;
      v10 = v11 == 0;
      v12 = v11 >> 2;
      if (v10)
      {
        v12 = 1;
      }

      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = (v12 + 3) >> 2;
      v14 = 8 * v12;
      v15 = operator new(8 * v12);
      v6 = &v15[8 * v13];
      v16 = v6;
      v17 = v8 - v4;
      if (v8 != v4)
      {
        v16 = &v6[v17];
        v18 = v17 - 8;
        v19 = &v15[8 * v13];
        v20 = v4;
        if (v18 < 0x38)
        {
          goto LABEL_24;
        }

        v21 = &v15[8 * v13];
        v19 = v21;
        v20 = v4;
        if ((v21 - v4) < 0x20)
        {
          goto LABEL_24;
        }

        v22 = (v18 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v19 = &v6[v23];
        v20 = &v4[v23];
        v24 = (v4 + 16);
        v25 = v21 + 16;
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_24:
          do
          {
            v28 = *v20;
            v20 += 8;
            *v19 = v28;
            v19 += 8;
          }

          while (v19 != v16);
        }
      }

      *a1 = v15;
      *(a1 + 8) = v6;
      *(a1 + 16) = v16;
      *(a1 + 24) = &v15[v14];
      if (v4)
      {
        operator delete(v5);
        v6 = *(a1 + 8);
      }
    }

    else
    {
      v9 = (((v7 - v8) >> 3) + 1) / 2;
      v6 = &v4[8 * v9];
      if (v8 != v4)
      {
        memmove(&v4[8 * v9], v4, v8 - v4);
        v8 = *(a1 + 16);
      }

      *(a1 + 16) = &v8[8 * v9];
    }
  }

  else
  {
    v6 = *(a1 + 8);
  }

  *(v6 - 1) = *a2;
  *(a1 + 8) = v6 - 8;
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 / 0x2A];
    v6 = *v5 + 96 * (v4 % 0x2A);
    v7 = v2[(*(a1 + 40) + v4) / 0x2A] + 96 * ((*(a1 + 40) + v4) % 0x2A);
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
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 21;
    goto LABEL_19;
  }

  if (v11 == 2)
  {
    v12 = 42;
LABEL_19:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      *(a1 + 16) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v6 = this->__r_.__value_.__r.__words[0];
    if (v4 >= 0x1C)
    {
      qmemcpy(v6, "([^:]*):([^:]*):([^:]*):(.*)", 28);
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        this->__r_.__value_.__l.__size_ = 28;
      }

      else
      {
        *(&this->__r_.__value_.__s + 23) = 28;
      }

      goto LABEL_10;
    }

    v5 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v4 = 22;
    v5 = this;
  }

  v7 = 2 * v4;
  if (2 * v4 <= 0x1C)
  {
    v7 = 28;
  }

  v8 = (v7 | 7) + 1;
  v6 = operator new(v8);
  qmemcpy(v6, "([^:]*):([^:]*):([^:]*):(.*)", 28);
  if (v4 != 22)
  {
    operator delete(v5);
  }

  this->__r_.__value_.__r.__words[0] = v6;
  this->__r_.__value_.__l.__size_ = 28;
  this->__r_.__value_.__r.__words[2] = v8 | 0x8000000000000000;
LABEL_10:
  v6[28] = 0;
  return this;
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}