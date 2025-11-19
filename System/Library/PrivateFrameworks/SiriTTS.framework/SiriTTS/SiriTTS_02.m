void sub_1C2FB93D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35)
{
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  _Unwind_Resume(exception_object);
}

BOOL UTFRegex::search(URegularExpression **this)
{
  status = U_ZERO_ERROR;
  v2 = uregex_end(*this, 0, &status);
  status = U_ZERO_ERROR;
  return uregex_find(*this, v2, &status) != 0;
}

void FrontendNNModule::compose_input(FrontendNNModule *this@<X0>, char a2@<W1>, std::string *a3@<X8>)
{
  std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](this + 44);
  (*(**(this + 2) + 16))(&v14);
  if (v14)
  {
    std::vector<std::shared_ptr<Agglomerate>>::push_back[abi:ne200100](this + 352, &v14);
    if ((a2 & 1) == 0)
    {
      (*(**(this + 2) + 32))(*(this + 2));
    }

    v6 = v14;
    if (v6 + 8 == v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      StringFormatter::StringFormatter(v13, "TokenBasicItem is missing");
      MEMORY[0x1C692A510](exception, v13);
      __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
    }

    v8 = *(v7 + 40);
    if (*(v8 + 8) == 1952807028)
    {
      if (*(v8 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(a3, *(v8 + 32), *(v8 + 40));
        v6 = v14;
      }

      else
      {
        v9 = *(v8 + 32);
        a3->__r_.__value_.__r.__words[2] = *(v8 + 48);
        *&a3->__r_.__value_.__l.__data_ = v9;
      }

      v10 = *(&v14 + 1);
      a3[1].__r_.__value_.__r.__words[0] = v6;
    }

    else
    {
      std::deque<std::shared_ptr<Agglomerate>>::push_back(this + 4, &v14);
      a3->__r_.__value_.__r.__words[0] = 0;
      a3->__r_.__value_.__l.__size_ = 0;
      v10 = *(&v14 + 1);
      v11 = v14;
      a3->__r_.__value_.__r.__words[2] = 0;
      a3[1].__r_.__value_.__r.__words[0] = v11;
    }
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = 0u;
    *&a3->__r_.__value_.__r.__words[2] = 0u;
    v10 = *(&v14 + 1);
  }

  a3[1].__r_.__value_.__l.__size_ = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(&v14 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
  }
}

void sub_1C2FB96A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      if (a17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a17);
      }

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

void Agglomerate::set<TokenBasicItem>(uint64_t a1, __int128 *a2)
{
  v8 = &v14;
  if (!v3)
  {
    operator new();
  }

  Agglomerate::ItemHolder<TokenBasicItem>::ItemHolder(&v8, a2);
  v4 = v9;
  *(v3 + 24) = v10;
  *(v3 + 8) = v4;
  if (*(v3 + 55) < 0)
  {
    operator delete(*(v3 + 32));
  }

  v5 = __p;
  *(v3 + 48) = v12;
  *(v3 + 32) = v5;
  HIBYTE(v12) = 0;
  LOBYTE(__p) = 0;
  v6 = v13;
  v13 = 0uLL;
  v7 = *(v3 + 64);
  *(v3 + 56) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    v8 = &unk_1F42F3750;
    if (*(&v13 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
    }
  }

  else
  {
    v8 = &unk_1F42F3750;
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }
}

uint64_t Agglomerate::ItemHolder<TokenBasicItem>::ItemHolder(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_1F42F3750;
  v4 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v4;
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 48) = *(a2 + 5);
    *(a1 + 32) = v5;
  }

  v6 = *(a2 + 7);
  *(a1 + 56) = *(a2 + 6);
  *(a1 + 64) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::__map_value_compare<std::type_index,std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>,std::less<std::type_index>,true>,std::allocator<std::__value_type<std::type_index,std::unique_ptr<Agglomerate::ItemHolderBase>>>>::find<std::type_index>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 8);
  v5 = a1 + 8;
  do
  {
    v6 = std::type_info::before[abi:ne200100](*(*(v3 + 32) + 8), v4);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || std::type_info::before[abi:ne200100](v4, *(*(v5 + 32) + 8)))
  {
    return v2;
  }

  return v5;
}

void std::vector<std::shared_ptr<Agglomerate>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Agglomerate>>>(v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

uint64_t DetectSSMLImpl::is_ssml(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  result = std::regex_search[abi:ne200100]<std::__wrap_iter<char const*>,char,std::regex_traits<char>>(v5, &v5[v4], a1 + 8);
  if (result)
  {
    v34 = a1;
    v7 = 0;
    v8 = *(a2 + 23);
    v9 = *(a2 + 23);
    v10 = v8 < 0;
    v12 = *a2;
    v11 = a2[1];
    if (v8 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v8 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = a2[1];
    }

LABEL_13:
    v15 = v14 - v7;
    if ((v14 - v7) < 6)
    {
      return 0;
    }

    else
    {
      v16 = v13 + v14;
      v17 = &v7[v13];
      while (1)
      {
        result = memchr(v17, 60, v15 - 5);
        if (!result)
        {
          break;
        }

        v18 = result;
        if (*result == 1701868348 && *(result + 4) == 27489)
        {
          result = 0;
          if (v18 != v16)
          {
            v20 = v18 - v13;
            if (v20 != -1)
            {
              v7 = (v20 + 6);
              if (v10)
              {
                v21 = v12;
              }

              else
              {
                v21 = a2;
              }

              if (v10)
              {
                v22 = v11;
              }

              else
              {
                v22 = v9;
              }

              if (std::regex_search[abi:ne200100]<std::__wrap_iter<char const*>,char,std::regex_traits<char>>(v21 + v7, v21 + v22, v34 + 136))
              {
                return 1;
              }

              v23 = *(a2 + 23);
              if ((v23 & 0x80u) == 0)
              {
                v24 = a2;
              }

              else
              {
                v24 = *a2;
              }

              if ((v23 & 0x80u) != 0)
              {
                v23 = a2[1];
              }

              v25 = v7;
              if (std::regex_search[abi:ne200100]<std::__wrap_iter<char const*>,char,std::regex_traits<char>>(v24 + v7, v24 + v23, v34 + 72))
              {
LABEL_37:
                v9 = *(a2 + 23);
                v12 = *a2;
                v11 = a2[1];
                if ((v9 & 0x80u) == 0)
                {
                  v26 = a2;
                }

                else
                {
                  v26 = *a2;
                }

                if ((v9 & 0x80u) == 0)
                {
                  v27 = *(a2 + 23);
                }

                else
                {
                  v27 = a2[1];
                }

                v28 = v27 - v25;
                if (v27 >= v25 && v28 >= 7)
                {
                  v29 = v26 + v27;
                  v30 = &v25[v26];
                  do
                  {
                    v31 = memchr(v30, 60, v28 - 6);
                    if (!v31)
                    {
                      break;
                    }

                    if (*v31 == 1886596924 && *(v31 + 3) == 1801545072)
                    {
                      if (v31 == v29)
                      {
                        break;
                      }

                      v25 = (v31 - v26);
                      if (v31 - v26 == -1)
                      {
                        break;
                      }

                      v33 = std::regex_search[abi:ne200100]<std::__wrap_iter<char const*>,char,std::regex_traits<char>>(v31 + 7, v29, v34 + 200);
                      result = 1;
                      if ((v33 & 1) == 0)
                      {
                        goto LABEL_37;
                      }

                      return result;
                    }

                    v30 = v31 + 1;
                    v28 = v29 - v30;
                  }

                  while (v29 - v30 >= 7);
                }
              }

              else
              {
                v9 = *(a2 + 23);
                v12 = *a2;
                v11 = a2[1];
              }

              result = 0;
              v10 = (v9 & 0x80u) != 0;
              v13 = ((v9 & 0x80u) == 0 ? a2 : v12);
              v14 = (v9 & 0x80u) == 0 ? v9 : v11;
              if (v14 >= v7)
              {
                goto LABEL_13;
              }
            }
          }

          return result;
        }

        v17 = (result + 1);
        v15 = v16 - (v18 + 1);
        if (v15 < 6)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
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
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
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
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v42 - 96;
    std::allocator<std::__state<char>>::destroy[abi:ne200100](&v41, (v42 - 96));
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_1C2FBA0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
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

void std::vector<std::pair<unsigned long,char const*>>::__append(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 16 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = end - this->__begin_;
    v7 = __n + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - this->__begin_;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(this, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * __n);
    v11 = &v10[16 * __n];
    v12 = this->__end_ - this->__begin_;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], this->__begin_, v12);
    begin = this->__begin_;
    this->__begin_ = v13;
    this->__end_ = v11;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C2FBA2D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
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
        std::allocator<std::__state<char>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::regex_search[abi:ne200100]<std::__wrap_iter<char const*>,char,std::regex_traits<char>>(_BYTE *__src, _BYTE *a2, uint64_t a3)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__dst, __src, a2, a2 - __src);
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  v4 = v10;
  if ((v10 & 0x80u) == 0)
  {
    v5 = __dst;
  }

  else
  {
    v5 = __dst[0];
  }

  if ((v10 & 0x80u) != 0)
  {
    v4 = __dst[1];
  }

  v6 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a3, v5, &v5[v4], &__p, 64);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if (v10 < 0)
  {
    operator delete(__dst[0]);
  }

  return v6;
}

void sub_1C2FBA4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v10 - 17) < 0)
  {
    operator delete(*(v10 - 40));
  }

  _Unwind_Resume(exception_object);
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

void std::match_results<char const*>::__init(std::match_results<const char *> *this, unsigned int __s, const char *__f, const char *__l, BOOL __no_update_pos)
{
  this->__unmatched_.first = __l;
  p_unmatched = &this->__unmatched_;
  this->__unmatched_.second = __l;
  this->__unmatched_.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&this->__matches_, __s, &this->__unmatched_);
  this->__prefix_.first = __f;
  this->__prefix_.second = __f;
  this->__prefix_.matched = 0;
  this->__suffix_ = *p_unmatched;
  if (!__no_update_pos)
  {
    this->__position_start_ = __f;
  }

  this->__ready_ = 1;
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
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

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

uint64_t std::vector<std::__state<char>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = *(a1 + 8);
  v11 = 96 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<char>>,std::__state<char>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::__state<char>>::~__split_buffer(&v16);
  return v15;
}

void sub_1C2FBAA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::__state<char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
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

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
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
    std::vector<std::pair<unsigned long,char const*>>::__append(this, __sz - v2);
  }
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<char>>,std::__state<char>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 1);
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v7 + 2);
      *(a4 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v7 + 7);
      *(a4 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v9 = v7[10];
      *(a4 + 85) = *(v7 + 85);
      *(a4 + 80) = v9;
      v7 += 12;
      a4 += 96;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator<std::__state<char>>::destroy[abi:ne200100](a1, v5);
      v5 += 12;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void **std::__split_buffer<std::__state<char>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::__state<char>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::pair<unsigned long,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<unsigned long,std::string>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::tuple<std::string,std::vector<std::pair<unsigned long,std::string>>,unsigned long,std::bitset<3ul>>>::push_back[abi:ne200100](const void **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = (v4 - *a1) >> 6;
    if ((v7 + 1) >> 58)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - *a1;
    v9 = v8 >> 5;
    if (v8 >> 5 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v10 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      if (!(v10 >> 58))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = 0;
    v16 = (v7 << 6);
    v17 = v7 << 6;
    v18 = 0;
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,std::string,std::vector<std::pair<unsigned long,std::string>>,unsigned long,std::bitset<3ul>>::__tuple_impl((v7 << 6), a2);
    v6 = (v7 << 6) + 64;
    v11 = a1[1] - *a1;
    v12 = &v16[-v11];
    memcpy(&v16[-v11], *a1, v11);
    v13 = *a1;
    *a1 = v12;
    a1[1] = v6;
    v14 = a1[2];
    a1[2] = v18;
    v17 = v13;
    v18 = v14;
    v15 = v13;
    v16 = v13;
    result = std::__split_buffer<std::tuple<std::string,std::vector<std::pair<unsigned long,std::string>>,unsigned long,std::bitset<3ul>>>::~__split_buffer(&v15);
  }

  else
  {
    result = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,std::string,std::vector<std::pair<unsigned long,std::string>>,unsigned long,std::bitset<3ul>>::__tuple_impl(a1[1], a2);
    v6 = v4 + 64;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_1C2FBADD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::tuple<std::string,std::vector<std::pair<unsigned long,std::string>>,unsigned long,std::bitset<3ul>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__split_buffer<std::__state<char>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 96;
    std::allocator<std::__state<char>>::destroy[abi:ne200100](v4, (i - 96));
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator<std::__state<char>>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = a2[7];
  if (v3)
  {
    a2[8] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

uint64_t std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C2FBAF54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
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

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3);
  v4 = __sz >= v3;
  v5 = __sz - v3;
  if (v5 != 0 && v4)
  {
    std::vector<std::sub_match<char const*>>::__append(this, v5, __x);
  }

  else if (!v4)
  {
    this->__end_ = &this->__begin_[__sz];
  }
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

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v35 = 0;
    negate = this->__negate_;
    goto LABEL_80;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_57;
  }

  v111 = *current;
  v6 = current[1];
  v112 = current[1];
  if (this->__icase_)
  {
    v111 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    v112 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  std::regex_traits<char>::__lookup_collatename<char *>(&this->__traits_, &v111, &v113, &__p);
  if ((v110 & 0x80000000) == 0)
  {
    if (v110)
    {
      goto LABEL_8;
    }

LABEL_57:
    negate = 0;
    v35 = 1;
    goto LABEL_58;
  }

  v37 = v109;
  operator delete(__p);
  if (!v37)
  {
    goto LABEL_57;
  }

LABEL_8:
  begin = this->__digraphs_.__begin_;
  v8 = this->__digraphs_.__end_ - begin;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    p_second = &begin->second;
    while (v111 != *(p_second - 1) || v112 != *p_second)
    {
      p_second += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_215;
  }

LABEL_17:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    p_p = &__p;
    std::regex_traits<char>::transform<char *>(&this->__traits_, &v111, &v113);
    v13 = this->__ranges_.__begin_;
    v14 = v110;
    v15 = this->__ranges_.__end_ - v13;
    if (v15)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v105 = v110;
      if (v110 >= 0)
      {
        v17 = v110;
      }

      else
      {
        v17 = v109;
      }

      if (v110 < 0)
      {
        p_p = __p;
      }

      v18 = v16 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v19 = &v13->second.__r_.__value_.__r.__words[2] + 7;
      v20 = 1;
      v21 = 1;
      while (1)
      {
        v22 = *(v19 - 24);
        if (v22 >= 0)
        {
          v23 = *(v19 - 24);
        }

        else
        {
          v23 = *(v19 - 39);
        }

        if (v22 >= 0)
        {
          v24 = (v19 - 47);
        }

        else
        {
          v24 = *(v19 - 47);
        }

        if (v23 >= v17)
        {
          v25 = v17;
        }

        else
        {
          v25 = v23;
        }

        v26 = memcmp(p_p, v24, v25);
        v27 = v17 >= v23;
        if (v26)
        {
          v27 = v26 >= 0;
        }

        if (v27)
        {
          v28 = *v19;
          if (v28 >= 0)
          {
            v29 = *v19;
          }

          else
          {
            v29 = *(v19 - 15);
          }

          if (v28 >= 0)
          {
            v30 = (v19 - 23);
          }

          else
          {
            v30 = *(v19 - 23);
          }

          if (v17 >= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = v17;
          }

          v32 = memcmp(v30, p_p, v31);
          v33 = v29 >= v17;
          if (v32)
          {
            v33 = v32 >= 0;
          }

          if (v33)
          {
            break;
          }
        }

        v21 = v20++ < v16;
        v19 += 48;
        if (!--v18)
        {
          v34 = 0;
          goto LABEL_164;
        }
      }

      v34 = 5;
LABEL_164:
      v14 = v105;
    }

    else
    {
      v21 = 0;
      v34 = 0;
    }

    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v21)
    {
      v85 = 1;
      goto LABEL_195;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v85 = 0;
    goto LABEL_197;
  }

  std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v111, &v113, &__p);
  v86 = this->__equivalences_.__begin_;
  v87 = v110;
  v88 = this->__equivalences_.__end_ - v86;
  if (v88)
  {
    v89 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
    if (v110 >= 0)
    {
      v90 = v110;
    }

    else
    {
      v90 = v109;
    }

    if (v110 >= 0)
    {
      v91 = &__p;
    }

    else
    {
      v91 = __p;
    }

    if (v89 <= 1)
    {
      v92 = 1;
    }

    else
    {
      v92 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
    }

    v93 = 1;
    v94 = 1;
    while (1)
    {
      size = HIBYTE(v86->__r_.__value_.__r.__words[2]);
      v96 = size;
      if ((size & 0x80u) != 0)
      {
        size = v86->__r_.__value_.__l.__size_;
      }

      if (v90 == size)
      {
        v97 = v96 >= 0 ? v86 : v86->__r_.__value_.__r.__words[0];
        if (!memcmp(v91, v97, v90))
        {
          break;
        }
      }

      v94 = v93++ < v89;
      ++v86;
      if (!--v92)
      {
        goto LABEL_192;
      }
    }

    v85 = 1;
    v34 = 5;
    if (v87 < 0)
    {
LABEL_193:
      operator delete(__p);
    }
  }

  else
  {
    v94 = 0;
LABEL_192:
    v34 = 0;
    v85 = 0;
    if (v87 < 0)
    {
      goto LABEL_193;
    }
  }

  if (!v94)
  {
LABEL_197:
    if (v111 < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v100 = tab[v111];
      if (((v100 & mask) != 0 || v111 == 95 && (mask & 0x80) != 0) && (v112 & 0x8000000000000000) == 0 && ((tab[v112] & mask) != 0 || (mask & 0x80) != 0 && v112 == 95))
      {
        goto LABEL_215;
      }

      neg_mask = this->__neg_mask_;
      if ((v100 & neg_mask) != 0 || v111 == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_214:
        negate = v85;
LABEL_216:
        v35 = 2;
        goto LABEL_80;
      }
    }

    if ((v112 & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[v112] & neg_mask) == 0)
      {
        negate = 1;
        if (v112 != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_216;
        }
      }

      goto LABEL_214;
    }

LABEL_215:
    negate = 1;
    goto LABEL_216;
  }

LABEL_195:
  v35 = 2;
  negate = v85;
  if (v34)
  {
    goto LABEL_80;
  }

LABEL_58:
  v38 = *a2->__current_;
  v111 = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v38) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v38);
    v111 = v38;
  }

  v39 = this->__chars_.__begin_;
  v40 = this->__chars_.__end_ - v39;
  if (v40)
  {
    if (v40 <= 1)
    {
      v40 = 1;
    }

    do
    {
      v41 = *v39++;
      if (v41 == v38)
      {
        goto LABEL_79;
      }
    }

    while (--v40);
  }

  v42 = this->__neg_mask_;
  if (v42 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v38 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v38] & v42) == 0)
    {
      v43 = (v38 == 95) & (v42 >> 7);
    }

    else
    {
      LOBYTE(v43) = 1;
    }

    end = this->__neg_chars_.__end_;
    v45 = memchr(this->__neg_chars_.__begin_, v38, end - this->__neg_chars_.__begin_);
    v46 = !v45 || v45 == end;
    v47 = !v46;
    if ((v43 & 1) == 0 && !v47)
    {
LABEL_79:
      negate = 1;
      goto LABEL_80;
    }
  }

  v50 = this->__ranges_.__begin_;
  v51 = this->__ranges_.__end_;
  if (v50 != v51)
  {
    if (this->__collate_)
    {
      std::regex_traits<char>::transform<char *>(&this->__traits_, &v111, &v112);
      v50 = this->__ranges_.__begin_;
      v51 = this->__ranges_.__end_;
    }

    else
    {
      v110 = 1;
      LOWORD(__p) = v38;
    }

    v52 = v51 - v50;
    if (v52)
    {
      v103 = v110;
      v106 = v35;
      v102 = negate;
      v53 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 4);
      if (v110 >= 0)
      {
        v54 = v110;
      }

      else
      {
        v54 = v109;
      }

      if (v110 >= 0)
      {
        v55 = &__p;
      }

      else
      {
        v55 = __p;
      }

      if (v53 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 4);
      }

      v57 = &v50->second.__r_.__value_.__r.__words[2] + 7;
      v58 = 1;
      v59 = 1;
      while (1)
      {
        v60 = *(v57 - 24);
        if (v60 >= 0)
        {
          v61 = *(v57 - 24);
        }

        else
        {
          v61 = *(v57 - 39);
        }

        if (v60 >= 0)
        {
          v62 = (v57 - 47);
        }

        else
        {
          v62 = *(v57 - 47);
        }

        if (v61 >= v54)
        {
          v63 = v54;
        }

        else
        {
          v63 = v61;
        }

        v64 = memcmp(v55, v62, v63);
        v65 = v54 >= v61;
        if (v64)
        {
          v65 = v64 >= 0;
        }

        if (v65)
        {
          v66 = *v57;
          if (v66 >= 0)
          {
            v67 = *v57;
          }

          else
          {
            v67 = *(v57 - 15);
          }

          if (v66 >= 0)
          {
            v68 = (v57 - 23);
          }

          else
          {
            v68 = *(v57 - 23);
          }

          if (v54 >= v67)
          {
            v69 = v67;
          }

          else
          {
            v69 = v54;
          }

          v70 = memcmp(v68, v55, v69);
          v71 = v67 >= v54;
          if (v70)
          {
            v71 = v70 >= 0;
          }

          if (v71)
          {
            break;
          }
        }

        v59 = v58++ < v53;
        v57 += 48;
        if (!--v56)
        {
          negate = v102;
          goto LABEL_128;
        }
      }

      negate = 1;
LABEL_128:
      v35 = v106;
      if ((v103 & 0x80) == 0)
      {
LABEL_130:
        if (v59)
        {
          goto LABEL_80;
        }

        goto LABEL_131;
      }
    }

    else
    {
      v59 = 0;
      if ((v110 & 0x80) == 0)
      {
        goto LABEL_130;
      }
    }

    operator delete(__p);
    goto LABEL_130;
  }

LABEL_131:
  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    goto LABEL_157;
  }

  v72 = &__p;
  std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v111, &v112, &__p);
  v73 = this->__equivalences_.__begin_;
  v74 = this->__equivalences_.__end_ - v73;
  if (!v74)
  {
    v79 = 0;
    if ((v110 & 0x80) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_155;
  }

  v104 = v110;
  v107 = v35;
  v75 = 0xAAAAAAAAAAAAAAABLL * (v74 >> 3);
  if (v110 >= 0)
  {
    v76 = v110;
  }

  else
  {
    v76 = v109;
  }

  if (v110 < 0)
  {
    v72 = __p;
  }

  if (v75 <= 1)
  {
    v77 = 1;
  }

  else
  {
    v77 = 0xAAAAAAAAAAAAAAABLL * (v74 >> 3);
  }

  v78 = 1;
  v79 = 1;
  while (1)
  {
    v80 = HIBYTE(v73->__r_.__value_.__r.__words[2]);
    v81 = v80;
    if ((v80 & 0x80u) != 0)
    {
      v80 = v73->__r_.__value_.__l.__size_;
    }

    if (v76 == v80)
    {
      v82 = v81 >= 0 ? v73 : v73->__r_.__value_.__r.__words[0];
      if (!memcmp(v72, v82, v76))
      {
        break;
      }
    }

    v79 = v78++ < v75;
    ++v73;
    if (!--v77)
    {
      goto LABEL_154;
    }
  }

  negate = 1;
LABEL_154:
  v35 = v107;
  if (v104 < 0)
  {
LABEL_155:
    operator delete(__p);
  }

LABEL_156:
  if (v79)
  {
    goto LABEL_80;
  }

LABEL_157:
  v83 = this->__mask_;
  if ((v111 & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v111] & v83) != 0)
  {
    goto LABEL_79;
  }

  v84 = (v83 >> 7) & 1;
  if (v111 != 95)
  {
    LOBYTE(v84) = 0;
  }

  negate |= v84;
LABEL_80:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v49 = -993;
  }

  else
  {
    a2->__current_ += v35;
    first = this->__first_;
    v49 = -995;
  }

  a2->__do_ = v49;
  a2->__node_ = first;
}

std::string *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,std::string,std::vector<std::pair<unsigned long,std::string>>,unsigned long,std::bitset<3ul>>::__tuple_impl(std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  if (v6 != v5)
  {
    std::vector<std::pair<unsigned long,std::string>>::__vallocate[abi:ne200100](&this[1], (v6 - v5) >> 5);
  }

  this[2].__r_.__value_.__r.__words[0] = *(a2 + 6);
  this[2].__r_.__value_.__l.__size_ = *(a2 + 7);
  return this;
}

void sub_1C2FBB9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 32) = v10;
  std::vector<std::pair<unsigned long,std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::tuple<std::string,std::vector<std::pair<unsigned long,std::string>>,unsigned long,std::bitset<3ul>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::allocator<std::tuple<std::string,std::vector<std::pair<unsigned long,std::string>>,unsigned long,std::bitset<3ul>>>::destroy[abi:ne200100](i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator<std::tuple<std::string,std::vector<std::pair<unsigned long,std::string>>,unsigned long,std::bitset<3ul>>>::destroy[abi:ne200100](uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::pair<unsigned long,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<unsigned long,std::string>>,std::pair<unsigned long,std::string>*,std::pair<unsigned long,std::string>*,std::pair<unsigned long,std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 1);
      v8 = (v4 + 1);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v9 = *v6;
        v4[3] = *(v6 + 2);
        *&v8->__r_.__value_.__l.__data_ = v9;
      }

      v4 += 4;
      v14 = v4;
      v6 += 2;
    }

    while (v7 + 32 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<unsigned long,std::string>>,std::pair<unsigned long,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,std::string>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::deque<std::tuple<std::string,std::vector<std::pair<unsigned long,std::string>>,unsigned long,std::bitset<3ul>>>::push_back(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 8 * (v5 - v4) - 1;
  }

  v7 = a1[4];
  if (v6 == a1[5] + v7)
  {
    v8 = v7 >= 0x40;
    v9 = v7 - 64;
    if (!v8)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Agglomerate> *>>(v13);
    }

    a1[4] = v9;
    v17 = *v4;
    a1[1] = v4 + 8;
    std::__split_buffer<std::shared_ptr<Agglomerate> *,std::allocator<std::shared_ptr<Agglomerate> *>>::emplace_back<std::shared_ptr<Agglomerate> *&>(a1, &v17);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v15 = 0;
  }

  else
  {
    v14 = a1[5] + a1[4];
    v15 = (*&v4[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] + ((v14 & 0x3F) << 6));
  }

  result = std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,std::string,std::vector<std::pair<unsigned long,std::string>>,unsigned long,std::bitset<3ul>>::__tuple_impl(v15, a2);
  ++a1[5];
  return result;
}

void sub_1C2FBC0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::pair<unsigned long,std::string>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,std::string>>>(a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<unsigned long,std::string>>,std::pair<unsigned long,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 32;
    }
  }

  return a1;
}

void std::__shared_ptr_emplace<std::vector<std::tuple<std::string,std::vector<std::pair<unsigned long,std::string>>,unsigned long,std::bitset<3ul>>>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v1)
    {
      do
      {
        v3 -= 64;
        std::allocator<std::tuple<std::string,std::vector<std::pair<unsigned long,std::string>>,unsigned long,std::bitset<3ul>>>::destroy[abi:ne200100](v3);
      }

      while (v3 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

void std::vector<std::pair<unsigned long,std::string>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void sub_1C2FBC330(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void UTFString::to_utf8(std::string *a1, const UChar *a2, int32_t a3)
{
  pDestLength = 3 * a3;
  v6 = std::string::basic_string[abi:ne200100](a1, 3 * a3, 0);
  pErrorCode = U_ZERO_ERROR;
  v7 = *(v6 + 2);
  if (v6[23] >= 0)
  {
    v8 = v6[23];
  }

  else
  {
    v6 = *v6;
    v8 = v7;
  }

  u_strToUTF8(v6, v8, &pDestLength, a2, a3, &pErrorCode);
  std::string::resize(a1, pDestLength, 0);
}

void sub_1C2FBC3E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void BreaksNNImpl::apply_ICU_sent_break(BreaksNNImpl *this)
{
  status = U_ZERO_ERROR;
  v2 = this + 608;
  v3 = *(this + 83);
  v4 = *(this + 86);
  if (v3)
  {
    if (v4)
    {
      utext_close(v4);
      *(this + 86) = 0;
    }

    *(this + 84) = 0;
    BreaksNNImpl::recover_markers(&v39, this, v2, this + 79);
    v24 = (*(*this + 72))(this);
    if (v24)
    {
      v25 = *(v24 + 8) + *(this + 85);
    }

    BreaksNNImpl::create_token_per_chunk(this, &v39);
    v26 = *(this + 82);
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v32 = v39.__r_.__value_.__r.__words[0];
      *(this + 85) += v39.__r_.__value_.__l.__size_ + v26;
LABEL_64:
      operator delete(v32);
      return;
    }

    v27 = v26 + SHIBYTE(v39.__r_.__value_.__r.__words[2]) + *(this + 85);
    goto LABEL_39;
  }

  if (!v4)
  {
    v5 = *(this + 631);
    if (v5 < 0)
    {
      v2 = *(this + 76);
      v5 = *(this + 77);
    }

    *(this + 86) = utext_openUTF8(0, v2, v5, &status);
    *(this + 84) = 0;
    v6 = *(this + 59);
    ubrk_setUText();
    v7 = *(this + 59);
    ubrk_first();
  }

  v8 = *(this + 59);
  v9 = ubrk_next();
  if (v9 == -1)
  {
    utext_close(*(this + 86));
    *(this + 86) = 0;
    memset(&v39, 0, sizeof(v39));
    BreaksNNImpl::recover_markers(&__p, this, &v39, this + 79);
    v28 = (*(*this + 72))(this);
    if (v28)
    {
      v29 = *(v28 + 8) + *(this + 85);
    }

    BreaksNNImpl::create_token_per_chunk(this, &__p);
    v30 = *(this + 82);
    v31 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (v30)
    {
      *(this + 85) += v30;
      if ((v31 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_63;
    }

    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      *(this + 85) += __p.__r_.__value_.__l.__size_;
LABEL_63:
      v32 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_64;
    }

    v27 = *(this + 85) + HIBYTE(__p.__r_.__value_.__r.__words[2]);
LABEL_39:
    *(this + 85) = v27;
    return;
  }

  LODWORD(v10) = v9;
  v11 = *(this + 62);
  if (!v11)
  {
    goto LABEL_11;
  }

  do
  {
    UTFRegex::set_text(v11, *(this + 86), 0);
    LODWORD(v39.__r_.__value_.__l.__data_) = 0;
    if (!uregex_lookingAt(*v11, v10, &v39))
    {
      break;
    }

    v12 = *(this + 59);
    LODWORD(v10) = ubrk_next();
    v11 = *(this + 62);
  }

  while (v11);
  if (v10 == -1)
  {
    v10 = *(this + 631);
    if (v10 < 0)
    {
      v10 = *(this + 77);
    }
  }

  else
  {
LABEL_11:
    v10 = v10;
  }

  v13 = utext_nativeLength(*(this + 86));
  std::basic_string<char16_t>::basic_string[abi:ne200100](&v39, v13 + 1);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v39;
  }

  else
  {
    v14 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v39.__r_.__value_.__r.__words[1];
  }

  v16 = utext_extract(*(this + 86), *(this + 84), v10, v14, v15, &status);
  std::basic_string<char16_t>::resize(&v39, v16, v17);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v39;
  }

  else
  {
    v18 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v39.__r_.__value_.__r.__words[1];
  }

  UTFString::to_utf8(&__p, v18, v19);
  BreaksNNImpl::recover_markers(&v37, this, &__p, this + 79);
  v20 = *(this + 631);
  if (v20 < 0)
  {
    v20 = *(this + 77);
  }

  if (v10 != v20)
  {
    v33 = (*(*this + 72))(this);
    v34 = *(this + 85);
    if (!v33)
    {
      goto LABEL_48;
    }

LABEL_47:
    v35 = *(v33 + 8) + v34;
    goto LABEL_48;
  }

  if (*(this + 513) != 1)
  {
    v33 = (*(*this + 72))(this);
    v34 = *(this + 85);
    if (!v33)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v21 = *(this + 59);
  if (ubrk_getRuleStatus() && *(this + 82) != 8)
  {
    goto LABEL_49;
  }

  v22 = (*(*this + 72))(this);
  if (v22)
  {
    v23 = *(v22 + 8) + *(this + 85);
  }

LABEL_48:
  BreaksNNImpl::create_token_per_chunk(this, &v37);
LABEL_49:
  *(this + 84) = v10;
  if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v36 = v37.__r_.__value_.__r.__words[0];
    *(this + 85) += v37.__r_.__value_.__l.__size_;
    operator delete(v36);
  }

  else
  {
    *(this + 85) += SHIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    v32 = v39.__r_.__value_.__r.__words[0];
    goto LABEL_64;
  }
}

void sub_1C2FBC860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *UTFString::lstrip(std::string *this)
{
  v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v3 = this->__r_.__value_.__r.__words[0];
  if (v2 >= 0)
  {
    v4 = this;
  }

  else
  {
    v4 = this->__r_.__value_.__r.__words[0];
  }

  if (v2 >= 0)
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v6 = (v4 + size);
    v7 = MEMORY[0x1E69E9830];
    v8 = v4;
    do
    {
      v9 = v8->__r_.__value_.__s.__data_[0];
      if ((v9 & 0x80000000) != 0)
      {
        if (!__maskrune(v9, 0x4000uLL))
        {
          goto LABEL_15;
        }
      }

      else if ((*(v7 + 4 * v9 + 60) & 0x4000) == 0)
      {
        goto LABEL_15;
      }

      v8 = (v8 + 1);
      --size;
    }

    while (size);
    v8 = v6;
LABEL_15:
    LOBYTE(v2) = *(&this->__r_.__value_.__s + 23);
    v3 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v8 = v4;
  }

  if ((v2 & 0x80u) == 0)
  {
    v10 = this;
  }

  else
  {
    v10 = v3;
  }

  return std::string::erase(this, v4 - v10, v8 - v4);
}

std::string *UTFString::rstrip(std::string *this)
{
  v2 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v3 = v2;
  v4 = this + v2;
  if (v3 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_;
  }

  if (v3 >= 0)
  {
    v6 = this;
  }

  else
  {
    v6 = this->__r_.__value_.__r.__words[0];
  }

  v7 = MEMORY[0x1E69E9830];
  while (v5 != v6)
  {
    v9 = *--v5;
    v8 = v9;
    if ((v9 & 0x80000000) != 0)
    {
      if (!__maskrune(v8, 0x4000uLL))
      {
LABEL_13:
        v6 = (v5 + 1);
        break;
      }
    }

    else if ((*(v7 + 4 * v8 + 60) & 0x4000) == 0)
    {
      goto LABEL_13;
    }
  }

  v10 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v11 = v10;
  v12 = this + v10;
  if (v11 >= 0)
  {
    v13 = this;
  }

  else
  {
    v12 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
    v13 = this->__r_.__value_.__r.__words[0];
  }

  return std::string::erase(this, v6 - v13, v12 - v6);
}

void BreaksNNImpl::recover_markers(std::string *__str, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__str, *a3, *(a3 + 8));
  }

  else
  {
    *__str = *a3;
  }

  v7 = *a4;
  if (*a4 != a4[1])
  {
    v8 = 0;
    v9 = v7 + 8;
    v10 = -1;
    while (1)
    {
      v11 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      size = __str->__r_.__value_.__l.__size_;
      if ((v11 & 0x80u) == 0)
      {
        v13 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = __str->__r_.__value_.__l.__size_;
      }

      if (!v13)
      {
        v17 = *(v7 + 31);
        if (v17 >= 0)
        {
          v18 = (v7 + 8);
        }

        else
        {
          v18 = *(v7 + 8);
        }

        if (v17 >= 0)
        {
          v19 = *(v7 + 31);
        }

        else
        {
          v19 = *(v7 + 16);
        }

        std::string::append(__str, v18, v19);
        v20 = *(v7 + 31);
        if (v20 < 0)
        {
          v20 = *(v7 + 16);
        }

        v10 = *v7;
        v21 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<unsigned long,std::string> *,std::pair<unsigned long,std::string> *,std::pair<unsigned long,std::string> *>(v7 + 32, a4[1], v7);
        for (i = a4[1]; i != v21; i -= 32)
        {
          if (*(i - 1) < 0)
          {
            operator delete(*(i - 24));
          }
        }

        a4[1] = v21;
        goto LABEL_75;
      }

      v14 = *v7;
      v15 = *v7 + v8 - *(a2 + 672);
      if (v10 != *v7)
      {
        break;
      }

LABEL_47:
      if ((v11 & 0x80) != 0)
      {
LABEL_49:
        std::string::__init_copy_ctor_external(&__stra, __str->__r_.__value_.__l.__data_, size);
        goto LABEL_50;
      }

LABEL_48:
      __stra = *__str;
LABEL_50:
      std::string::basic_string(&__dst, __str, 0, v15, &v38);
      if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__stra.__r_.__value_.__l.__data_);
      }

      __stra = __dst;
      v32 = *(v7 + 31);
      if (v32 >= 0)
      {
        v33 = (v7 + 8);
      }

      else
      {
        v33 = *(v7 + 8);
      }

      if (v32 >= 0)
      {
        v34 = *(v7 + 31);
      }

      else
      {
        v34 = *(v7 + 16);
      }

      std::string::append(&__stra, v33, v34);
      std::string::basic_string[abi:ne200100](&__dst, __str, v15);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v36 = __dst.__r_.__value_.__l.__size_;
      }

      std::string::append(&__stra, p_dst, v36);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      std::string::operator=(__str, &__stra);
      v20 = *(v7 + 31);
      if (v20 < 0)
      {
        v20 = *(v7 + 16);
      }

      v21 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<unsigned long,std::string> *,std::pair<unsigned long,std::string> *,std::pair<unsigned long,std::string> *>(v7 + 32, a4[1], v7);
      for (j = a4[1]; j != v21; j -= 32)
      {
        if (*(j - 1) < 0)
        {
          operator delete(*(j - 24));
        }
      }

      a4[1] = v21;
      if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__stra.__r_.__value_.__l.__data_);
        v21 = a4[1];
      }

      v10 = v14;
LABEL_75:
      v8 += v20;
      if (v7 == v21)
      {
        return;
      }
    }

    if ((v11 & 0x80) != 0)
    {
      v16 = __str->__r_.__value_.__l.__size_;
      if (v15 < size)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v16 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      if (v15 < v11)
      {
        goto LABEL_48;
      }
    }

    if (v15 != v16)
    {
      return;
    }

    if (*(v7 + 31) < 0)
    {
      v26 = *(v7 + 16);
      if (v26 != 11)
      {
        if (v26 != 12)
        {
          return;
        }

        v27 = *(*v9 + 8);
        v28 = **v9 == 0x726F6E3D6E745C1BLL;
        v29 = 1550606701;
LABEL_42:
        if (!v28 || v27 != v29)
        {
          return;
        }

        goto LABEL_47;
      }

      v24 = *v9;
    }

    else
    {
      v23 = *(v7 + 31);
      v24 = (v7 + 8);
      if (v23 != 11)
      {
        if (v23 != 12)
        {
          return;
        }

        if (*v9 != 0x726F6E3D6E745C1BLL || *(v7 + 16) != 1550606701)
        {
          return;
        }

        goto LABEL_47;
      }
    }

    v30 = *v24;
    v27 = *(v24 + 3);
    v28 = v30 == 0x726F3D696F745C1BLL;
    v29 = 0x5C6874726F3D696FLL;
    goto LABEL_42;
  }
}

void sub_1C2FBCE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, uint64_t *a2, unint64_t a3)
{
  v3 = a2;
  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = a2[1];
    if (v5 < a3)
    {
      goto LABEL_13;
    }

    v3 = *a2;
  }

  else if (v5 < a3)
  {
LABEL_13:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v6 = v5 - a3;
  if (v5 - a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v6;
  if (v5 != a3)
  {
    memmove(__dst, v3 + a3, v6);
  }

  __dst[v6] = 0;
  return __dst;
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<unsigned long,std::string> *,std::pair<unsigned long,std::string> *,std::pair<unsigned long,std::string> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      if (*(a3 + 31) < 0)
      {
        operator delete(*(a3 + 8));
      }

      v6 = *(v5 + 8);
      *(a3 + 24) = *(v5 + 24);
      *(a3 + 8) = v6;
      *(v5 + 31) = 0;
      *(v5 + 8) = 0;
      v5 += 32;
      a3 += 32;
    }

    while (v5 != a2);
  }

  return a3;
}

void BreaksNNImpl::create_token_per_chunk(int a1, std::string *__str)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v2 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    memset(&__p, 0, sizeof(__p));
    if (v2 >= 0)
    {
      v5 = __str;
    }

    else
    {
      v5 = __str->__r_.__value_.__r.__words[0];
    }

    v6 = 0;
    v21[0] = v5;
    v21[1] = (size << 32);
    if (size)
    {
      v7 = 0;
      do
      {
        v8 = UTFString::codepoint_iterator<std::string>::operator*(v21);
        if (!u_isUWhiteSpace(v8))
        {
          goto LABEL_21;
        }

        v9 = v5->__r_.__value_.__s.__data_[v7];
        v10 = v9 - 194;
        if (v9 <= 0xEF)
        {
          v11 = 2;
        }

        else
        {
          v11 = 3;
        }

        if (v9 <= 0xDF)
        {
          v12 = v11;
        }

        else
        {
          v12 = v11 + 1;
        }

        if (v10 >= 0x33)
        {
          v12 = 1;
        }

        v7 += v12;
        LODWORD(v21[1]) = v7;
      }

      while (v7 != size);
      v7 = size;
LABEL_21:
      v13 = v7;
      if (size == v7)
      {
        MEMORY[0x1C692A640](&__p, "");
        goto LABEL_44;
      }

      v6 = v21[1];
    }

    else
    {
      v13 = 0;
    }

    v21[0] = v5;
    HIDWORD(v21[1]) = size;
    v14 = size - 1;
    LODWORD(v21[1]) = size - 1;
    if (v5->__r_.__value_.__s.__data_[v14] <= -65)
    {
      LODWORD(v14) = utf8_back1SafeBody(v5, 0, size - 1);
      LODWORD(v21[1]) = v14;
    }

    if (v14 != v6)
    {
      do
      {
        v15 = UTFString::codepoint_iterator<std::string>::operator*(v21);
        if (!u_isUWhiteSpace(v15))
        {
          goto LABEL_33;
        }

        v14 = v14 - 1;
        LODWORD(v21[1]) = v14;
        if (v5->__r_.__value_.__s.__data_[v14] <= -65)
        {
          LODWORD(v14) = utf8_back1SafeBody(v5, 0, v14);
          LODWORD(v21[1]) = v14;
        }
      }

      while (v14 != v6);
      LODWORD(v14) = v6;
    }

LABEL_33:
    v16 = v5->__r_.__value_.__s.__data_[v14];
    v17 = v16 - 194;
    if (v16 <= 0xEF)
    {
      v18 = 2;
    }

    else
    {
      v18 = 3;
    }

    if (v16 <= 0xDF)
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 + 1;
    }

    if (v17 >= 0x33)
    {
      v19 = 1;
    }

    std::string::basic_string(&v22, __str, v13, size - (v13 + size - v14 - v19), &v23);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v22;
LABEL_44:
    operator new();
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1C2FBD55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  TokenBasicItem::~TokenBasicItem(&a15);
  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t UTFString::codepoint_iterator<std::string>::operator*(uint64_t *a1)
{
  v2 = *(a1 + 2);
  v3 = *a1;
  v4 = *(*a1 + v2);
  result = *(*a1 + v2);
  if (v4 < 0)
  {
    v6 = v2 + 1;
    v7 = *(a1 + 3);
    if (v2 + 1 == v7)
    {
      return 0xFFFFFFFFLL;
    }

    if (result < 0xE0)
    {
      if (result < 0xC2)
      {
        return 0xFFFFFFFFLL;
      }

      v10 = result & 0x1F;
    }

    else
    {
      if (result > 0xEF)
      {
        if ((result - 240) > 4)
        {
          return 0xFFFFFFFFLL;
        }

        v6 = *(v3 + v6);
        if (((byte_1C386E2C2[v6 >> 4] >> (result + 16)) & 1) == 0)
        {
          return 0xFFFFFFFFLL;
        }

        v13 = v2 + 2;
        if (v2 + 2 == v7)
        {
          return 0xFFFFFFFFLL;
        }

        v9 = *(v3 + v13) ^ 0x80;
        if (v9 > 0x3F)
        {
          return 0xFFFFFFFFLL;
        }

        LODWORD(v8) = v6 & 0x3F | ((result - 240) << 6);
        LODWORD(v6) = v13;
      }

      else
      {
        v8 = v4 & 0xF;
        if (((a00000000000000[v8] >> (*(v3 + v6) >> 5)) & 1) == 0)
        {
          return 0xFFFFFFFFLL;
        }

        v9 = *(v3 + v6) & 0x3F;
      }

      LODWORD(v6) = v6 + 1;
      if (v6 == v7)
      {
        return 0xFFFFFFFFLL;
      }

      v10 = v9 | (v8 << 6);
    }

    v11 = *(v3 + v6) ^ 0x80;
    v12 = v11 | (v10 << 6);
    if (v11 <= 0x3F)
    {
      return v12;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void FrontendNNModule::get_input_from_tokens(uint64_t **a1, void *a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = a2[44];
  v4 = a2[45];
  if (v4 == v3)
  {
    return;
  }

  v6 = 0;
  do
  {
    memset(&v51, 0, sizeof(v51));
    if (*(v7 + 8) == 1952807028)
    {
      if ((*(v7 + 55) & 0x8000000000000000) != 0)
      {
        if (!*(v7 + 40))
        {
LABEL_45:
          v13 = v6 + 1;
          goto LABEL_84;
        }
      }

      else if (!*(v7 + 55))
      {
        goto LABEL_45;
      }

LABEL_10:
      std::string::operator=(&v51, (v7 + 32));
      v3 = a2[44];
      v4 = a2[45];
      goto LABEL_11;
    }

    if (a3)
    {
      goto LABEL_10;
    }

LABEL_11:
    v8 = (v4 - v3) >> 4;
    if (v8 <= v6)
    {
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    v9 = *(v3 + 16 * v6);
    v11 = v10;
    v12 = v9 + 8;
    v13 = v6 + 1;
    if (v8 > v6 + 1)
    {
      v14 = *(v3 + 16 * v13);
      v16 = a1;
      if (v12 != v11 || v14 + 8 != v15)
      {
        goto LABEL_18;
      }

LABEL_17:
      UTFString::rstrip(&v51);
      goto LABEL_18;
    }

    v16 = a1;
    if (v12 == v10)
    {
      goto LABEL_17;
    }

LABEL_18:
    if (!v6)
    {
      goto LABEL_76;
    }

    v17 = a2[44];
    v18 = (a2[45] - v17) >> 4;
    if (v18 <= v6 - 1)
    {
LABEL_86:
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    v19 = *(v17 + 16 * (v6 - 1));
    if (v19 + 8 == v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(v20 + 40) + 8;
    }

    for (i = v6 - 2; ; --i)
    {
      v23 = i + 1;
      if (*(v21 + 16))
      {
        break;
      }

      if (v23 < 1)
      {
        goto LABEL_36;
      }

LABEL_31:
      if (v18 <= i)
      {
        goto LABEL_86;
      }

      v25 = *(v17 + 16 * i);
      if (v25 + 8 == v26)
      {
        v21 = 0;
      }

      else
      {
        v21 = *(v26 + 40) + 8;
      }
    }

    v24 = *(v21 + 47);
    if (v24 < 0)
    {
      v24 = *(v21 + 32);
    }

    if (v23 >= 1 && !v24)
    {
      goto LABEL_31;
    }

LABEL_36:
    v27 = *(*(v21 + 48) + 16);
    if (*(v27 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v50, *v27, *(v27 + 1));
    }

    else
    {
      v28 = *v27;
      v50.__r_.__value_.__r.__words[2] = *(v27 + 2);
      *&v50.__r_.__value_.__l.__data_ = v28;
    }

    v29 = *(v16 + 23);
    if (v29 < 0)
    {
      v29 = v16[1];
    }

    if (v29)
    {
      v30 = *(v21 + 8);
      v31 = *(v21 + 16);
      std::string::basic_string[abi:ne200100]<0>(__p, " ");
      v32 = UTFString::endswith(v16, __p);
      v33 = v32;
      if (v49 < 0)
      {
        operator delete(__p[0]);
        if (!v33)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v32)
        {
          goto LABEL_74;
        }

LABEL_47:
        v34 = FrontendNNModule::check_valid_space(&v50, v31 + v30, *(v7 + 16));
        std::string::basic_string[abi:ne200100](__p, v34, 32);
        if ((v49 & 0x80u) == 0)
        {
          v35 = __p;
        }

        else
        {
          v35 = __p[0];
        }

        if ((v49 & 0x80u) == 0)
        {
          v36 = v49;
        }

        else
        {
          v36 = __p[1];
        }

        std::string::append(v16, v35, v36);
        if (v49 < 0)
        {
          operator delete(__p[0]);
          if (!v34)
          {
LABEL_57:
            v37 = a2[55];
            if (!v37)
            {
              goto LABEL_74;
            }

            status = U_ZERO_ERROR;
            LODWORD(__p[0]) = 0;
            v38 = (v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v51 : v51.__r_.__value_.__r.__words[0];
            v39 = (v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v51.__r_.__value_.__r.__words[2]) : v51.__r_.__value_.__l.__size_;
            v40 = utext_openUTF8(0, v38, v39, __p);
            v41 = SLODWORD(__p[0]) <= 0 ? v40 : 0;
            UTFRegex::set_text(v37, v41, 1);
            if (!uregex_find(*v37, -1, &status) && !UTFString::endswith(v16, a2 + 52))
            {
              goto LABEL_74;
            }

            std::string::basic_string[abi:ne200100]<0>(__p, " ");
            v42 = UTFString::endswith(v16, __p);
            v43 = v42;
            if (v49 < 0)
            {
              operator delete(__p[0]);
              if (v43)
              {
                goto LABEL_74;
              }
            }

            else if (v42)
            {
              goto LABEL_74;
            }

            std::string::append(v16, " ");
          }
        }

        else if (!v34)
        {
          goto LABEL_57;
        }
      }
    }

LABEL_74:
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

LABEL_76:
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = &v51;
    }

    else
    {
      v44 = v51.__r_.__value_.__r.__words[0];
    }

    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v51.__r_.__value_.__l.__size_;
    }

    std::string::append(v16, v44, size);
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

LABEL_84:
    v3 = a2[44];
    v4 = a2[45];
    v6 = v13;
  }

  while (v13 < (v4 - v3) >> 4);
}

void sub_1C2FBDAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(a11 + 23) < 0)
  {
    operator delete(*a11);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,std::vector<std::shared_ptr<Agglomerate>>>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v8 = v7 + 1;
    if (v7 + 1 > 0x555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 48 * v7;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *(a2 + 24);
    *(v11 + 40) = *(a2 + 5);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v6 = 48 * v7 + 48;
    v13 = *a1;
    v14 = a1[1] - *a1;
    *(v11 + 24) = v12;
    v15 = 48 * v7 - v14;
    memcpy((v11 - v14), v13, v14);
    *a1 = v15;
    a1[1] = v6;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v3 + 3) = 0;
    *(v3 + 4) = 0;
    *(v3 + 5) = 0;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v6 = (v3 + 48);
  }

  a1[1] = v6;
}

std::string *std::pair<std::string,std::vector<std::shared_ptr<Agglomerate>>>::pair[abi:ne200100]<std::string&,std::vector<std::shared_ptr<Agglomerate>>&,0>(std::string *this, __int128 *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::shared_ptr<Agglomerate>>::__init_with_size[abi:ne200100]<std::shared_ptr<Agglomerate>*,std::shared_ptr<Agglomerate>*>(&this[1], *a3, a3[1], (a3[1] - *a3) >> 4);
  return this;
}

void sub_1C2FBDD58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::shared_ptr<Agglomerate>>::__init_with_size[abi:ne200100]<std::shared_ptr<Agglomerate>*,std::shared_ptr<Agglomerate>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<Agglomerate>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<std::shared_ptr<Agglomerate>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Agglomerate>>>(a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<Agglomerate>>,std::shared_ptr<Agglomerate>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v3 -= 16;
    }
  }

  return a1;
}

void Censor::global_plaintext(std::string *a1, uint64_t a2)
{
  if (atomic_load(censorship_count))
  {
    std::string::basic_string[abi:ne200100]<0>(a1, "<private>");
  }

  else if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1, *a2, *(a2 + 8));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = *a2;
    a1->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }
}

void UTFRegex::set_text(UTFRegex *this, UText *text, char a3)
{
  status = U_ZERO_ERROR;
  v6 = *(this + 2);
  if (v6 && *(this + 8) == 1)
  {
    utext_close(v6);
  }

  *(this + 2) = text;
  *(this + 8) = a3;
  uregex_setUText(*this, text, &status);
  if (status >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    StringFormatter::StringFormatter(v8, "Failed regex match set text");
    MEMORY[0x1C692A510](exception, v8);
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  uregex_reset(*this, -1, &status);
}

void sub_1C2FBDFF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void std::deque<std::shared_ptr<Agglomerate>>::pop_front(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[1] + ((v2 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v2 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  std::deque<std::shared_ptr<Agglomerate>>::__maybe_remove_front_spare[abi:ne200100](a1);
}

uint64_t std::basic_string<char16_t>::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 >= 0xB)
  {
    if ((a2 | 3) == 0xB)
    {
      v2 = 13;
    }

    else
    {
      v2 = (a2 | 3) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v2);
  }

  *(result + 23) = a2;
  if (a2)
  {
    v3 = 0;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = (result + 8);
    do
    {
      v6 = vdupq_n_s64(v3);
      v7 = vmovn_s64(vcgeq_u64(v4, vorrq_s8(v6, xmmword_1C378AF00)));
      if (vuzp1_s8(vuzp1_s16(v7, *v4.i8), *v4.i8).u8[0])
      {
        *(v5 - 4) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v7, *&v4), *&v4).i8[1])
      {
        *(v5 - 3) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, vorrq_s8(v6, xmmword_1C378AEF0)))), *&v4).i8[2])
      {
        *(v5 - 2) = 0;
        *(v5 - 1) = 0;
      }

      v8 = vmovn_s64(vcgeq_u64(v4, vorrq_s8(v6, xmmword_1C37BDD90)));
      if (vuzp1_s8(*&v4, vuzp1_s16(v8, *&v4)).i32[1])
      {
        *v5 = 0;
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(v8, *&v4)).i8[5])
      {
        v5[1] = 0;
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, vorrq_s8(v6, xmmword_1C37BDD80))))).i8[6])
      {
        v5[2] = 0;
        v5[3] = 0;
      }

      v3 += 8;
      v5 += 8;
    }

    while (((a2 + 7) & 0x7FFFFFFFFFFFFFF8) != v3);
  }

  *(result + 2 * a2) = 0;
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void AudioResamplingModule::process_data(uint64_t a1, uint64_t *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v10 = *(*v4 + 8);
  v9 = *(*v4 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*v10 != 1)
  {
    goto LABEL_13;
  }

  kaldi::LinearResample::Reset(*(a1 + 272), v5, v6, v7, v8);
  *(a1 + 312) = 0;
  if (*(v10 + 113) != 1)
  {
    goto LABEL_13;
  }

  if ((*(a1 + 292) & 1) == 0)
  {
    *(a1 + 296) = 15;
  }

  v11 = *a2;
  {
    *&v67 = 0;
    memset(buf, 0, sizeof(buf));
    std::vector<RateMarker>::__init_with_size[abi:ne200100]<RateMarker*,RateMarker*>(buf, *v12, v12[1], (v12[1] - *v12) >> 3);
    v13 = *buf;
    if (*&buf[8] != *buf)
    {
      *(a1 + 296) = (*(a1 + 296) / *(*buf + 4));
LABEL_11:
      operator delete(v13);
      goto LABEL_12;
    }

    if (*&buf[8])
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  *(a1 + 296) += *(v10 + 104);
LABEL_13:
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v14 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
  {
    v16 = (*(a1 + 336) - *(a1 + 328)) >> 2;
    *buf = 134217984;
    *&buf[4] = v16;
    _os_log_impl(&dword_1C2F95000, v14, OS_LOG_TYPE_DEBUG, "Prepending silence of %lu samples.", buf, 0xCu);
  }

  Diagnostics::log(7, "Prepending silence of %lu samples.", v15, (*(a1 + 336) - *(a1 + 328)) >> 2);
  v17 = (v10 + 56);
  std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(v10 + 56, *(v10 + 56), *(a1 + 328), *(a1 + 336), (*(a1 + 336) - *(a1 + 328)) >> 2);
  *(a1 + 336) = *(a1 + 328);
  v19 = *(v10 + 56);
  v18 = *(v10 + 64);
  v20 = v18;
  while (v20 != v19)
  {
    v21 = *(v20 - 1);
    v20 -= 4;
    if (fabsf(v21) > 100.0)
    {
      v19 = v20 + 4;
      break;
    }
  }

  v22 = (v18 - v19) >> 2;
  if (*(v10 + 1) == 1)
  {
    v23 = *(v10 + 64);
    if ((v18 - v19) >> 2 > *(a1 + 304) * *(a1 + 320) / 0x3E8uLL)
    {
      v23 = &v19[4 * (*(a1 + 304) * *(a1 + 320) / 0x3E8uLL)];
    }

    v22 = (v18 - v23) >> 2;
    v19 = v23;
  }

  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v24 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = v22;
    _os_log_impl(&dword_1C2F95000, v24, OS_LOG_TYPE_DEBUG, "Trim trailing silence of %lu samples and will add to the beginning of next audio chunk.", buf, 0xCu);
  }

  Diagnostics::log(7, "Trim trailing silence of %lu samples and will add to the beginning of next audio chunk.", v25, v22);
  std::vector<float>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>((a1 + 328), v19, *(v10 + 64), (*(v10 + 64) - v19) >> 2);
  v26 = *(v10 + 56);
  v27 = *(v10 + 64);
  if (v19 != v27)
  {
    v28 = *(v10 + 64);
    v27 = v19;
    *(v10 + 64) = v19;
  }

  v29 = *(a1 + 296) * *(a1 + 320) / 0x3E8uLL - *(a1 + 312);
  v30 = v29 & ~(v29 >> 63);
  if (v30 >= (v19 - v26) >> 2)
  {
    v31 = (v19 - v26) >> 2;
  }

  else
  {
    v31 = v30;
  }

  if (v31)
  {
    v32 = Resampler::make_some_noise(std::vector<float> &,unsigned long,unsigned long)::rnd;
    do
    {
      v32 = 1664525 * v32 + 1013904223;
      *v26++ = (~(3 * (v32 / 3)) + v32);
      --v31;
    }

    while (v31);
    Resampler::make_some_noise(std::vector<float> &,unsigned long,unsigned long)::rnd = v32;
    v26 = *v17;
  }

  v33 = *(a1 + 272);
  v34 = *(v10 + 1);
  memset(buf, 0, sizeof(buf));
  *&v67 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(buf, v26, v27, (v27 - v26) >> 2);
  v65[2] = 0;
  v65[0] = *buf;
  v65[1] = ((*&buf[8] - *buf) >> 2);
  kaldi::VectorBase<float>::Scale(v65);
  __src = 0;
  v63 = 0;
  v64 = 0;
  kaldi::LinearResample::Resample(v33, v65, v34, &__src, v35);
  kaldi::VectorBase<float>::Scale(&__src);
  std::vector<float>::vector[abi:ne200100](__dst, v63);
  if (v63)
  {
    memmove(__dst[0], __src, 4 * v63);
  }

  v36 = __dst[0];
  v37 = __dst[1];
  if (__dst[0] != __dst[1])
  {
    v38 = (v33 + 112);
    v39 = (v33 + 116);
    do
    {
      v40 = *v36;
      v41 = *v39;
      if (*v36 < *v38 || v40 > v41)
      {
        if (v40 <= v41)
        {
          v43 = v36;
        }

        else
        {
          v40 = *v39;
          v43 = (v33 + 116);
        }

        if (v40 < *v38)
        {
          v43 = (v33 + 112);
        }

        *v36 = *v43;
      }

      ++v36;
    }

    while (v36 != v37);
  }

  kaldi::Vector<float>::Destroy(&__src);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v44 = *v17;
  if (*v17)
  {
    *(v10 + 64) = v44;
    operator delete(v44);
    *v17 = 0;
    *(v10 + 64) = 0;
    *(v10 + 72) = 0;
  }

  *(v10 + 56) = *__dst;
  *(v10 + 72) = v61;
  v45 = *(a1 + 176);
  v59[0] = *(a1 + 168);
  v59[1] = v45;
  if (v45)
  {
    atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  OverlappingPrompt::overlap_if_available(v59, v10 + 56);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  *(a1 + 312) += (*(v10 + 64) - *(v10 + 56)) >> 2;
  v46 = *a2;
  {
    v48 = *(*v47 + 8);
    v49 = *(*v47 + 16);
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v50 = v48[1];
    if (*v48 != v50)
    {
      v51 = *v48 + 32;
      do
      {
        v52 = *(v51 - 16);
        *buf = *(v51 - 32);
        v67 = v52;
        if (*(v51 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v51, *(v51 + 8));
        }

        else
        {
          v53 = *v51;
          __p.__r_.__value_.__r.__words[2] = *(v51 + 16);
          *&__p.__r_.__value_.__l.__data_ = v53;
        }

        *(&v67 + 1) = (*(a1 + 288) * *(&v67 + 1));
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v54 = v51 - 32;
        v51 += 56;
      }

      while (v54 + 56 != v50);
    }

    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }
  }

  v55 = a2[1];
  v57 = *a2;
  v58 = v55;
  if (v55)
  {
    atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 72))(a1, &v57);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v56 = *MEMORY[0x1E69E9840];
}

void sub_1C2FBE978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(exception_object);
}

void std::deque<std::shared_ptr<Agglomerate>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 32) >= 0x200uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }
}

void std::basic_string<char16_t>::resize(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __n, std::basic_string<char16_t>::value_type __c)
{
  v5 = this;
  v6 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v6 & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v7 = __n - size;
    if (__n > size)
    {
      v6 = this->__r_.__value_.__l.__size_;
      v11 = this->__r_.__value_.__r.__words[2];
      v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v9 = HIBYTE(v11);
      goto LABEL_6;
    }

    this->__r_.__value_.__l.__size_ = __n;
    v5 = this->__r_.__value_.__r.__words[0];
LABEL_28:
    v20 = (v5 + 2 * __n);
    goto LABEL_31;
  }

  v7 = __n - v6;
  if (__n <= v6)
  {
    *(&this->__r_.__value_.__s + 23) = __n;
    goto LABEL_28;
  }

  v8 = 10;
  LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
LABEL_6:
  if (v8 - v6 < v7)
  {
    std::basic_string<char16_t>::__grow_by(this, v8, v7 - v8 + v6, v6, v6, v3, v4);
    v5->__r_.__value_.__l.__size_ = v6;
    LOBYTE(v9) = *(&v5->__r_.__value_.__s + 23);
  }

  v12 = v5;
  if ((v9 & 0x80) != 0)
  {
    v12 = v5->__r_.__value_.__r.__words[0];
  }

  v13 = 0;
  v14 = vdupq_n_s64(v7 - 1);
  v15 = &v12->__r_.__value_.__s.__data_[v6 + 4];
  do
  {
    v16 = vdupq_n_s64(v13);
    v17 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_1C378AF00)));
    if (vuzp1_s8(vuzp1_s16(v17, *v14.i8), *v14.i8).u8[0])
    {
      *(v15 - 4) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(v17, *&v14), *&v14).i8[1])
    {
      *(v15 - 3) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_1C378AEF0)))), *&v14).i8[2])
    {
      *(v15 - 2) = 0;
      *(v15 - 1) = 0;
    }

    v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_1C37BDD90)));
    if (vuzp1_s8(*&v14, vuzp1_s16(v18, *&v14)).i32[1])
    {
      *v15 = 0;
    }

    if (vuzp1_s8(*&v14, vuzp1_s16(v18, *&v14)).i8[5])
    {
      v15[1] = 0;
    }

    if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_1C37BDD80))))).i8[6])
    {
      v15[2] = 0;
      v15[3] = 0;
    }

    v13 += 8;
    v15 += 8;
  }

  while (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) != v13);
  v19 = v6 + v7;
  if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
  {
    v5->__r_.__value_.__l.__size_ = v19;
  }

  else
  {
    *(&v5->__r_.__value_.__s + 23) = v19 & 0x7F;
  }

  v20 = (v12 + 2 * v19);
LABEL_31:
  v20->__r_.__value_.__s.__data_[0] = 0;
}

void *std::deque<std::shared_ptr<Agglomerate>>::push_back(void *result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 32 * (v5 - v6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<std::shared_ptr<Agglomerate>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v8 + v3[4];
  }

  v10 = *a2;
  *(*(v6 + ((v9 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v9) = *a2;
  if (*(&v10 + 1))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
    v8 = v3[5];
  }

  v3[5] = v8 + 1;
  return result;
}

uint64_t FrontendNNModule::get_current_basic_item(FrontendNNModule *this)
{
  v1 = *(this + 45);
  if (*(this + 44) == v1)
  {
    return 0;
  }

  v2 = *(v1 - 16);
  if (v2 + 8 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 40) + 8;
  }
}

uint64_t FrontendNNModule::get_current_item_attribute@<X0>(FrontendNNModule *this@<X0>, void *a2@<X8>)
{
  result = (*(*this + 72))(this);
  if (result)
  {
    v4 = *(result + 56);
    *a2 = *(result + 48);
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Agglomerate>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void Mil2BnnsWaveRNNSubscaleInference::inference(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v87 = *(a1 + 48);
  if (*(a1 + 56) == 1)
  {
    v6 = roundf((v87 / **(v5 + 80)) * 0.5);
    v87 = (v6 + v6);
  }

  v8 = *(v5 + 8);
  v7 = *(v5 + 16);
  v9 = *(a1 + 288);
  v10 = *v9;
  v11 = v9[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(&v101, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    v101 = *(a1 + 64);
  }

  v93.__begin_ = &v101;
  v83 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v10 + 144), &v101.__r_.__value_.__l.__data_)[5];
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(a1 + 288);
  v13 = *v12;
  v14 = v12[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 111) < 0)
  {
    std::string::__init_copy_ctor_external(&v100, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    v100 = *(a1 + 88);
  }

  v93.__begin_ = &v100;
  v82 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v13 + 144), &v100.__r_.__value_.__l.__data_)[5];
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(a1 + 288);
  v16 = *(v15 + 16);
  v17 = *(v15 + 24);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 135) < 0)
  {
    std::string::__init_copy_ctor_external(&v99, *(a1 + 112), *(a1 + 120));
  }

  else
  {
    v99 = *(a1 + 112);
  }

  v93.__begin_ = &v99;
  v81 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v16 + 144), &v99.__r_.__value_.__l.__data_)[5];
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = *(a1 + 288);
  v19 = *(v18 + 16);
  v20 = *(v18 + 24);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 207) < 0)
  {
    std::string::__init_copy_ctor_external(&v98, *(a1 + 184), *(a1 + 192));
  }

  else
  {
    v98 = *(a1 + 184);
  }

  v93.__begin_ = &v98;
  v86 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v19 + 144), &v98.__r_.__value_.__l.__data_)[5];
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = *(a1 + 288);
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 231) < 0)
  {
    std::string::__init_copy_ctor_external(&v97, *(a1 + 208), *(a1 + 216));
  }

  else
  {
    v97 = *(a1 + 208);
  }

  v93.__begin_ = &v97;
  v24 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v22 + 144), &v97.__r_.__value_.__l.__data_)[5];
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v25 = *(a1 + 288);
  v26 = *(v25 + 16);
  v27 = *(v25 + 24);
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 255) < 0)
  {
    std::string::__init_copy_ctor_external(&v96, *(a1 + 232), *(a1 + 240));
  }

  else
  {
    v96 = *(a1 + 232);
  }

  v93.__begin_ = &v96;
  v28 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v26 + 144), &v96.__r_.__value_.__l.__data_)[5];
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v29 = *(a1 + 288);
  v30 = *(v29 + 16);
  v31 = *(v29 + 24);
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 183) < 0)
  {
    std::string::__init_copy_ctor_external(&v95, *(a1 + 160), *(a1 + 168));
  }

  else
  {
    v95 = *(a1 + 160);
  }

  v93.__begin_ = &v95;
  v32 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v30 + 144), &v95.__r_.__value_.__l.__data_)[5];
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  v79 = a3;
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v33 = *(a1 + 288);
  v34 = *(v33 + 16);
  v35 = *(v33 + 24);
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 159) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, *(a1 + 136), *(a1 + 144));
  }

  else
  {
    v94 = *(a1 + 136);
  }

  v93.__begin_ = &v94;
  v36 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v34 + 144), &v94.__r_.__value_.__l.__data_)[5];
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v37 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  std::vector<float>::vector[abi:ne200100](&v93, v87 * v37 + 5);
  begin = v93.__begin_;
  v93.__begin_[1] = *(a1 + 316);
  begin[3] = *(a1 + 320);
  if (v7 != v8)
  {
    v39 = 0;
    v40 = 0;
    if (v37 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = v37;
    }

    v80 = v41;
    do
    {
      v42 = *(a1 + 288);
      v43 = *v42;
      v44 = *(v42 + 8);
      if (v44)
      {
        atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      Mil2BnnsModel::set_bnns_input<unsigned long,float>(v43, v83, *(*(*a2 + 8) + 24 * v40), *(a1 + 280));
      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      v45 = *(a1 + 288);
      v46 = *v45;
      v47 = *(v45 + 8);
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      Mil2BnnsModel::execute(v46);
      v85 = v40;
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      v48 = *(a1 + 288);
      v49 = v48[2];
      v50 = v48[3];
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        v48 = *(a1 + 288);
      }

      v51 = *v48;
      v52 = v48[1];
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      Mil2BnnsModel::set_bnns_input<unsigned long>(v49, v81, *(*(v51 + 32) + 8 * v82), 3 * *(a1 + 284));
      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }

      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      }

      if (v87)
      {
        for (i = 0; i < v87; i += 2)
        {
          v54 = *(a1 + 288);
          v55 = *(v54 + 16);
          v56 = *(v54 + 24);
          if (v56)
          {
            atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          Mil2BnnsModel::execute(v55);
          if (v56)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v56);
          }

          v57 = *(a1 + 288);
          v58 = *(v57 + 16);
          v59 = *(v57 + 24);
          if (v59)
          {
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          bnns = Mil2BnnsModel::get_bnns_output<unsigned long>(v58, v86);
          if (v59)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v59);
          }

          v61 = *(a1 + 288);
          v62 = *(v61 + 16);
          v63 = *(v61 + 24);
          if (v63)
          {
            atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v64 = Mil2BnnsModel::get_bnns_output<unsigned long>(v62, v24);
          if (v63)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v63);
          }

          v65 = (bnns / 127.5) + -1.0;
          v66 = (v64 / 127.5) + -1.0;
          *(a1 + 308) = v65;
          *(a1 + 312) = *(a1 + 316);
          *(a1 + 320) = v66;
          v67 = *(a1 + 288);
          v68 = *(v67 + 16);
          v69 = *(v67 + 24);
          if (v69)
          {
            atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          Mil2BnnsModel::set_bnns_input<unsigned long,float>(v68, v36, (a1 + 308), 4);
          if (v69)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v69);
          }

          v70 = *(a1 + 288);
          v72 = *(v70 + 16);
          v71 = *(v70 + 24);
          if (v71)
          {
            atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v73 = *(v72 + 32);
          v74 = *(v73 + 8 * v28);
          *(v73 + 8 * v28) = *(v73 + 8 * v32);
          *(v73 + 8 * v32) = v74;
          v75 = *(v72 + 40);
          v76 = *(v75 + 16 * v28);
          *(v75 + 16 * v28) = *(v75 + 16 * v32);
          *(v75 + 16 * v32) = v76;
          if (v71)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v71);
          }

          v77 = &v93.__begin_[v39 + i];
          *v77 = v65;
          v77[5] = v66;
        }
      }

      v40 = v85 + 1;
      v39 += v87;
    }

    while (v85 + 1 != v80);
  }

  std::vector<float>::resize(&v93, v87 * v37);
  MilWaveRNNInference::signal_postprocessing(&v91, &v93, (a1 + 304));
  __p = 0;
  v89 = 0;
  v90 = 0;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(&__p, v91, v92, (v92 - v91) >> 1);
  v78 = *(v79 + 24);
  if (!v78)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v78 + 48))(v78, &__p);
  if (__p)
  {
    v89 = __p;
    operator delete(__p);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v93.__begin_)
  {
    v93.__end_ = v93.__begin_;
    operator delete(v93.__begin_);
  }
}

void sub_1C2FBF688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WaveformRateChangerImpl::reset(WaveformRateChangerImpl *this, int16x4_t a2)
{
  v3 = (*(this + 34) + (*(this + 34) >> 31)) >> 1;
  v8 = 0;
  std::vector<float>::assign(this + 4, v3, &v8, a2);
  *(this + 8) = *(this + 7);
  v4 = (*(this + 34) + (*(this + 34) >> 31)) >> 1;
  v7 = 0;
  result = std::vector<float>::assign(this + 10, v4, &v7, v5);
  *(this + 112) = 0;
  *(this + 13) = 0;
  *(this + 30) = 1065353216;
  return result;
}

_DWORD *std::vector<float>::assign(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v8 = v6 >> 1;
      if (v6 >> 1 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v9 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<int>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 2;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 2;
  }

  if (v12)
  {
    a4.i32[0] = *a3;
    v13 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = vdupq_n_s64(v12 - 1);
    v15 = result + 2;
    v16 = 1;
    do
    {
      v17 = vdupq_n_s64(v16 - 1);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1C378AF00)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v15 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v15 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1C378AEF0)))).i32[1])
      {
        *v15 = a4.i32[0];
        v15[1] = a4.i32[0];
      }

      v16 += 4;
      v15 += 4;
      v13 -= 4;
    }

    while (v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    a4.i32[0] = *a3;
    v21 = (4 * a2 - (v10 - result) - 4) >> 2;
    v22 = (v21 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v23 = vdupq_n_s64(v21);
    v24 = (v10 + 8);
    v25 = 1;
    do
    {
      v26 = vdupq_n_s64(v25 - 1);
      v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_1C378AF00)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v24 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v24 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_1C378AEF0)))).i32[1])
      {
        *v24 = a4.i32[0];
        v24[1] = a4.i32[0];
      }

      v25 += 4;
      v24 += 4;
      v22 -= 4;
    }

    while (v22);
    v28 = (v10 + 4 * v20);
  }

  else
  {
    v28 = &result[a2];
  }

  a1[1] = v28;
  return result;
}

void kaldi::LinearResample::Reset(kaldi::LinearResample *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(this + 9) = 0;
  *(this + 10) = 0;
  kaldi::Vector<float>::Resize(this + 11, 0, 0, a4, a5);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
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

void FRNFA::replace(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    v3 = *a2;
  }

  if (v2 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  operator new();
}

void sub_1C2FC0404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a23, MEMORY[0x1E69E54D8]);
  MEMORY[0x1C692AD30](&a39);
  v42 = *(v40 - 152);
  if (v42)
  {
    operator delete(v42);
  }

  v43 = *(v40 - 128);
  if (v43)
  {
    operator delete(v43);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  _Unwind_Resume(a1);
}

uint64_t boost::basic_string_ref<char,std::char_traits<char>>::at(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 <= a3)
  {
    std::logic_error::logic_error(&v6, "boost::string_ref::at");
    v6.__vftable = (MEMORY[0x1E69E55B8] + 16);
    v4.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_v7ugDeqUSYfEsWNDPoTj60IGCue5atQyiyR20/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/utility/string_ref.hpp";
    v4.i64[1] = "const charT &boost::basic_string_ref<char>::at(size_t) const [charT = char, traits = std::char_traits<char>]";
    v5 = 139;
    boost::throw_exception<std::out_of_range>(&v6, &v4);
  }

  return a1 + a3;
}

uint64_t FRCode::match_step(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, unint64_t a6, int a7, int a8, int a9, char a10)
{
  v11 = *a3;
  if (a3[1] != *a3)
  {
    v12 = a6;
    v14 = 0;
    v80 = 0;
    v15 = a8 == 0;
    v16 = a8;
    v73 = a8 - 1;
    v17 = a8 + 1;
    v78 = a8;
    if (a6 == a8)
    {
      v15 = 1;
    }

    v74 = v15;
    if (a6 <= a8)
    {
      v18 = 1;
    }

    else
    {
      v18 = a10;
    }

    v82 = v18;
    v19 = a6 <= a8 || (a9 - 7) < 0xFFFFFFFB;
    v75 = a10 | v19;
    while (2)
    {
      v20 = (v11 + 196 * v14);
      v21 = *v20;
      v22 = (a1[4] + 12 * *v20);
      switch(*v22)
      {
        case 0:
        case 4:
        case 5:
          v23 = v21 + 1;
          goto LABEL_70;
        case 1:
          v38 = v20[25];
          v39 = v20[26];
          v40 = (v20 + 25);
          v41 = *(v40 - 96);
          v42 = *(v40 - 92);
          v44 = *a2;
          v43 = *(a2 + 8);
          if (v43)
          {
            atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v45 = v39 + a7 - v42;
          v46 = a8 - v38 + v41;
          v47 = *v44;
          while (2)
          {
            if (v47 == v44[1])
            {
              memset(&__p[3] + 8, 0, 24);
              memset(__p + 8, 0, 48);
              LODWORD(__p[0]) = v39 + a7 - v42;
              v60 = boost::basic_string_ref<char,std::char_traits<char>>::substr(a5, a6, v45);
              std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__dst, v60, &v60[v61], v61);
              *(__p + 8) = __dst;
              FRCode::get_replacement(&__dst, a1, a5, a6, v40 - 96, v40);
              v62 = a1[3];
              *&__p[2] = __dst;
              std::string::basic_string[abi:ne200100]<0>(&__dst, v62);
              if (SHIBYTE(__p[4]) < 0)
              {
                operator delete(*(&__p[3] + 1));
              }

              *(&__p[3] + 8) = __dst;
              std::vector<FRReplaceInst>::push_back[abi:ne200100](v44, __p);
              if (SHIBYTE(__p[4]) < 0)
              {
                operator delete(*(&__p[3] + 1));
              }

              if (SBYTE7(__p[3]) < 0)
              {
                operator delete(*&__p[2]);
              }

              if (SHIBYTE(__p[1]) < 0)
              {
                operator delete(*(&__p[0] + 1));
              }
            }

            else
            {
              if (*v47 != v45)
              {
                v47 += 80;
                continue;
              }

              v65 = *(v47 + 31);
              if (v65 < 0)
              {
                v65 = *(v47 + 16);
              }

              if (v65 + v45 < v46)
              {
                v66 = boost::basic_string_ref<char,std::char_traits<char>>::substr(a5, a6, v45);
                std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, v66, &v66[v67], v67);
                if (*(v47 + 31) < 0)
                {
                  operator delete(*(v47 + 8));
                }

                v68 = __p[0];
                *(v47 + 24) = *&__p[1];
                *(v47 + 8) = v68;
                FRCode::get_replacement(__p, a1, a5, a6, v40 - 96, v40);
                if (*(v47 + 55) < 0)
                {
                  operator delete(*(v47 + 32));
                }

                *(v47 + 32) = *__p;
              }
            }

            break;
          }

          if (v43)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v43);
          }

          v80 = 1;
          v12 = a6;
          v16 = v78;
          goto LABEL_100;
        case 2:
          v32 = v20 + 1;
          v48 = v22[1];
          if (!v20[v48 + 1])
          {
            *(v32 + v48) = v17;
          }

          v23 = v21 + 1;
          goto LABEL_71;
        case 3:
          v33 = (v20 + 25);
          v20[v22[1] + 25] = v17;
          v23 = v21 + 1;
          goto LABEL_46;
        case 6:
          FRCode::add_state(a3, v22[1], v20 + 1, (v20 + 25));
          v23 = v22[2];
          goto LABEL_70;
        case 7:
          v49 = v22[1];
          if (v49 >= v22[2] + v49)
          {
            goto LABEL_100;
          }

          v50 = 8 * v49;
          do
          {
            FRCode::add_state(a3, *(a1[10] + v50) + *v20, v20 + 1, (v20 + 25));
            ++v49;
            v50 += 8;
          }

          while (v22[2] + v22[1] > v49);
          goto LABEL_63;
        case 8:
          v23 = v22[1];
LABEL_70:
          v32 = v20 + 1;
LABEL_71:
          v33 = (v20 + 25);
          goto LABEL_72;
        case 9:
          if (v82)
          {
            goto LABEL_100;
          }

          v36 = a1[15];
          v37 = *boost::basic_string_ref<char,std::char_traits<char>>::at(a5, v12, v16);
          if ((v36 & 8) != 0)
          {
            v69 = v22[1];
            if (v69 != case_folding[v37] && v69 != case_folding[v37 + 256])
            {
              goto LABEL_100;
            }
          }

          else if (v22[1] != v37)
          {
            goto LABEL_100;
          }

          v33 = (v20 + 25);
          v23 = *v20 + 1;
          v32 = v20 + 1;
LABEL_98:
          v59 = a4;
LABEL_73:
          FRCode::add_state(v59, v23, v32, v33);
LABEL_100:
          ++v14;
          v11 = *a3;
          if (0x7D6343EB1A1F58D1 * ((a3[1] - *a3) >> 2) <= v14)
          {
            goto LABEL_103;
          }

          continue;
        case 0xA:
          if ((v75 & 1) == 0)
          {
            v51 = boost::basic_string_ref<char,std::char_traits<char>>::substr(a5, v12, v16);
            low = FRCode::get_low(v51, v52);
            v54 = v12;
            v55 = low;
            v56 = boost::basic_string_ref<char,std::char_traits<char>>::substr(a5, v54, v16);
            high = FRCode::get_high(v56, v57);
            if (v55 == v22[1])
            {
              if (high == v22[2])
              {
                FRCode::add_state(a4, *v20 + 1, v20 + 1, (v20 + 25));
              }

              v12 = a6;
              v16 = v78;
            }

            else
            {
              v12 = a6;
              v16 = v78;
            }
          }

          goto LABEL_100;
        case 0xB:
          v34 = v22[1];
          if (!(v34 | a8))
          {
            FRCode::add_state(a3, v21 + 1, v20 + 1, (v20 + 25));
            v34 = v22[1];
          }

          if (v34 == 1 && v12 == v16)
          {
            FRCode::add_state(a3, *v20 + 1, v20 + 1, (v20 + 25));
            v34 = v22[1];
          }

          if (v34 != 2 || !v74 && *boost::basic_string_ref<char,std::char_traits<char>>::at(a5, v12, v73) != 32 && *boost::basic_string_ref<char,std::char_traits<char>>::at(a5, v12, v16) != 32)
          {
            goto LABEL_100;
          }

          v33 = (v20 + 25);
          v23 = *v20 + 1;
LABEL_46:
          v32 = v20 + 1;
LABEL_72:
          v59 = a3;
          goto LABEL_73;
        case 0xC:
        case 0xD:
          if (v82)
          {
            goto LABEL_100;
          }

          v24 = v22[1];
          if (v22[2] == 1)
          {
            v25 = a1[8];
            v26 = boost::basic_string_ref<char,std::char_traits<char>>::substr(a5, v12, v16);
            std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__dst, v26, &v26[v27], v27);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __dst.__r_.__value_.__l.__size_;
            }

            UTFString::to_utf16(__p, p_dst, size);
            v30 = __p;
            if (SBYTE7(__p[1]) < 0)
            {
              v30 = *&__p[0];
            }

            v31 = *v30;
            if (SBYTE7(__p[1]) < 0)
            {
              operator delete(*&__p[0]);
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if ((uset_serializedContains() != 0) != (*(v25 + 80 * v24 + 76) == 1))
            {
              FRCode::add_state(a4, *v20 + 1, v20 + 1, (v20 + 25));
            }

LABEL_63:
            v12 = a6;
          }

          else
          {
            v63 = a1[6] + 40 * v24;
            v64 = boost::basic_string_ref<char,std::char_traits<char>>::at(a5, v12, v16);
            if ((*(v63 + 32) == 1) != ((*(v63 + ((*v64 >> 3) & 0x18)) >> *v64) & 1))
            {
              FRCode::add_state(a4, *v20 + 1, v20 + 1, (v20 + 25));
            }
          }

          goto LABEL_100;
        case 0xE:
          if (a10)
          {
            goto LABEL_100;
          }

          v23 = v21 + 1;
          v32 = v20 + 1;
          v33 = (v20 + 25);
          goto LABEL_98;
        default:
          goto LABEL_100;
      }
    }
  }

  v80 = 0;
LABEL_103:
  *a3 = *a4;
  *a4 = v11;
  v70 = a3[1];
  a3[1] = a4[1];
  a4[1] = v70;
  v71 = a3[2];
  a3[2] = a4[2];
  a4[1] = *a4;
  a4[2] = v71;
  return v80 & 1;
}

void sub_1C2FC0CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::basic_string_ref<char,std::char_traits<char>>::substr(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 < a3)
  {
    std::logic_error::logic_error(&v6, "string_ref::substr");
    v6.__vftable = (MEMORY[0x1E69E55B8] + 16);
    v4.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_v7ugDeqUSYfEsWNDPoTj60IGCue5atQyiyR20/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/utility/string_ref.hpp";
    v4.i64[1] = "basic_string_ref<charT, traits> boost::basic_string_ref<char>::substr(size_type, size_type) const [charT = char, traits = std::char_traits<char>]";
    v5 = 166;
    boost::throw_exception<std::out_of_range>(&v6, &v4);
  }

  return a1 + a3;
}

void UTFString::to_utf16(std::basic_string<char16_t> *this, const char *a2, unint64_t a3)
{
  v3 = a3;
  v6 = std::basic_string<char16_t>::basic_string[abi:ne200100](this, a3);
  *pErrorCode = 0;
  v7 = *(v6 + 8);
  if (*(v6 + 23) >= 0)
  {
    v8 = *(v6 + 23);
  }

  else
  {
    v6 = *v6;
    v8 = v7;
  }

  u_strFromUTF8(v6, v8, pErrorCode, a2, v3, &pErrorCode[1]);
  std::basic_string<char16_t>::resize(this, pErrorCode[0], v9);
}

void sub_1C2FC0E80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__hash_table<std::__hash_value_type<char,std::vector<int>>,std::__unordered_map_hasher<char,std::__hash_value_type<char,std::vector<int>>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,std::vector<int>>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,std::vector<int>>>>::find<char>(void *a1, unsigned __int8 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 16) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 FRCode::add_state(uint64_t a1, int a2, _OWORD *a3, uint64_t a4)
{
  v9 = *a1;
  v8 = *(a1 + 8);
  if (*a1 == v8)
  {
LABEL_5:
    v11 = *(a1 + 16);
    if (v8 >= v11)
    {
      v13 = 0x7D6343EB1A1F58D1 * ((v8 - v9) >> 2);
      v14 = v13 + 1;
      if ((v13 + 1) > 0x14E5E0A72F05397)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v15 = 0x7D6343EB1A1F58D1 * ((v11 - v9) >> 2);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0xA72F05397829CBLL)
      {
        v16 = 0x14E5E0A72F05397;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<FRCode::State>>(v16);
      }

      v17 = 196 * v13;
      *v17 = -1;
      *(v17 + 4) = 0u;
      *(v17 + 20) = 0u;
      *(v17 + 36) = 0u;
      *(v17 + 52) = 0u;
      *(v17 + 68) = 0u;
      *(v17 + 84) = 0u;
      *(v17 + 100) = 0u;
      *(v17 + 116) = 0u;
      *(v17 + 132) = 0u;
      *(v17 + 148) = 0u;
      *(v17 + 164) = 0u;
      *(v17 + 180) = 0u;
      v12 = 196 * v13 + 196;
      v18 = *(a1 + 8) - *a1;
      v19 = 196 * v13 - v18;
      memcpy((v17 - v18), *a1, v18);
      v20 = *a1;
      *a1 = v19;
      *(a1 + 8) = v12;
      *(a1 + 16) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v8 = -1;
      *(v8 + 4) = 0u;
      *(v8 + 20) = 0u;
      *(v8 + 36) = 0u;
      *(v8 + 52) = 0u;
      *(v8 + 68) = 0u;
      *(v8 + 84) = 0u;
      *(v8 + 100) = 0u;
      *(v8 + 116) = 0u;
      *(v8 + 132) = 0u;
      *(v8 + 148) = 0u;
      *(v8 + 164) = 0u;
      v12 = v8 + 196;
      *(v8 + 180) = 0u;
    }

    *(a1 + 8) = v12;
    *(v12 - 196) = a2;
    v21 = a3[1];
    *(v12 - 192) = *a3;
    *(v12 - 176) = v21;
    v22 = a3[2];
    v23 = a3[3];
    v24 = a3[5];
    *(v12 - 128) = a3[4];
    *(v12 - 112) = v24;
    *(v12 - 160) = v22;
    *(v12 - 144) = v23;
    v25 = *(a1 + 8);
    v26 = *(a4 + 16);
    *(v25 - 96) = *a4;
    *(v25 - 80) = v26;
    result = *(a4 + 32);
    v28 = *(a4 + 48);
    v29 = *(a4 + 80);
    *(v25 - 32) = *(a4 + 64);
    *(v25 - 16) = v29;
    *(v25 - 64) = result;
    *(v25 - 48) = v28;
  }

  else
  {
    v10 = *a1;
    while (*v10 != a2)
    {
      v10 += 49;
      if (v10 == v8)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

void *boost::io::ostream_put<char,std::char_traits<char>>(void *a1, uint64_t a2, unint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = a1;
  MEMORY[0x1C692A8E0](v18, a1);
  if (v18[0] != 1)
  {
    goto LABEL_15;
  }

  v6 = a1 + *(*a1 - 24);
  v7 = *(v6 + 5);
  v8 = *(v6 + 3);
  v9 = v8 - a3;
  if (v8 <= a3)
  {
    v13 = (*(*v7 + 96))(*(v6 + 5), a2, a3);
  }

  else
  {
    if ((*(v6 + 2) & 0xB0) == 0x20)
    {
      if ((*(*v7 + 96))(*(v6 + 5), a2, a3) != a3)
      {
        goto LABEL_23;
      }

      v10 = a1 + *(*a1 - 24);
      v11 = *(v10 + 36);
      if (v11 == -1)
      {
        std::ios_base::getloc((a1 + *(*a1 - 24)));
        v12 = std::locale::use_facet(&v20, MEMORY[0x1E69E5318]);
        v11 = (v12->__vftable[2].~facet_0)(v12, 32);
        std::locale::~locale(&v20);
        *(v10 + 36) = v11;
      }

      v20.__locale_ = (0x101010101010101 * v11);
      if (v9 >= 9)
      {
        while ((*(*v7 + 96))(v7, &v20, 8) == 8)
        {
          v9 -= 8;
          if (v9 <= 8)
          {
            goto LABEL_10;
          }
        }

        goto LABEL_23;
      }

LABEL_10:
      if ((*(*v7 + 96))(v7, &v20, v9) != v9)
      {
LABEL_23:
        MEMORY[0x1C692A8F0](v18);
        std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 1);
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    v14 = *(v6 + 36);
    if (v14 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v15 = std::locale::use_facet(&v20, MEMORY[0x1E69E5318]);
      v14 = (v15->__vftable[2].~facet_0)(v15, 32);
      std::locale::~locale(&v20);
      *(v6 + 36) = v14;
    }

    v20.__locale_ = (0x101010101010101 * v14);
    if (v9 >= 9)
    {
      while ((*(*v7 + 96))(v7, &v20, 8) == 8)
      {
        v9 -= 8;
        if (v9 <= 8)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_23;
    }

LABEL_21:
    if ((*(*v7 + 96))(v7, &v20, v9) != v9)
    {
      goto LABEL_23;
    }

    v13 = (*(*v7 + 96))(v7, a2, a3);
  }

  if (v13 != a3)
  {
    goto LABEL_23;
  }

LABEL_14:
  *(a1 + *(*a1 - 24) + 24) = 0;
LABEL_15:
  MEMORY[0x1C692A8F0](v18);
LABEL_24:
  v16 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1C2FC1504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, std::locale a13)
{
  std::locale::~locale(&a13);
  MEMORY[0x1C692A8F0](&a10);
  boost::io::detail::ostream_guard<char,std::char_traits<char>>::~ostream_guard(&a12);
  _Unwind_Resume(a1);
}

void *std::vector<FRCode::State>::reserve(void *result, unint64_t a2)
{
  if (0x7D6343EB1A1F58D1 * ((result[2] - *result) >> 2) < a2)
  {
    v2 = result[1] - *result;
    std::__allocate_at_least[abi:ne200100]<std::allocator<FRCode::State>>(a2);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<FRCode::State>>(unint64_t a1)
{
  if (a1 < 0x14E5E0A72F05398)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_1C2FC18E0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1C692AD30](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1C692AC50](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1C692AC50](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1C2FC199C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1C2FC1A58(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void std::vector<FRReplaceInst>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    if (v6 + 1 > 0x333333333333333)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 4);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x199999999999999)
    {
      v9 = 0x333333333333333;
    }

    else
    {
      v9 = v8;
    }

    v18 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<FRReplaceInst>>(v9);
    }

    v15 = 0;
    v16 = 80 * v6;
    std::allocator_traits<std::allocator<FRReplaceInst>>::construct[abi:ne200100]<FRReplaceInst,FRReplaceInst const&,0>(80 * v6, a2);
    v17 = 80 * v6 + 80;
    v10 = a1[1];
    v11 = 80 * v6 + *a1 - v10;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FRReplaceInst>,FRReplaceInst*>(a1, *a1, v10, v11);
    v12 = *a1;
    *a1 = v11;
    v13 = a1[2];
    v14 = v17;
    *(a1 + 1) = v17;
    *&v17 = v12;
    *(&v17 + 1) = v13;
    v15 = v12;
    v16 = v12;
    std::__split_buffer<FRReplaceInst>::~__split_buffer(&v15);
    v5 = v14;
  }

  else
  {
    std::allocator_traits<std::allocator<FRReplaceInst>>::construct[abi:ne200100]<FRReplaceInst,FRReplaceInst const&,0>(a1[1], a2);
    v5 = v4 + 80;
    a1[1] = v4 + 80;
  }

  a1[1] = v5;
}

void sub_1C2FC1CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<FRReplaceInst>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<FRReplaceInst>>(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator_traits<std::allocator<FRReplaceInst>>::construct[abi:ne200100]<FRReplaceInst,FRReplaceInst const&,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }
}

void sub_1C2FC1DEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<FRReplaceInst>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 80;
    std::allocator_traits<std::allocator<FRReplaceInst>>::destroy[abi:ne200100]<FRReplaceInst,0>(v3 - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FRReplaceInst>,FRReplaceInst*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v8 = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 32) = v8;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 32) = 0;
      v9 = *(v6 + 56);
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 56) = v9;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      *(v6 + 56) = 0;
      v6 += 80;
      a4 += 80;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<FRReplaceInst>>::destroy[abi:ne200100]<FRReplaceInst,0>(v5);
      v5 += 80;
    }

    while (v5 != a3);
  }
}

uint64_t kaldi::nnet1::SelfAttention::PropagateFnc(uint64_t *a1, _DWORD *a2, int *a3, uint64_t a4, const char *a5)
{
  v5 = a2[5];
  v6 = *(a1 + 12);
  if (v5 % v6)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 0x198, "batch_size % num_utts == 0", a5);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v62, "PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 410, 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Running forward propagation for batch size = ", 45);
    v12 = MEMORY[0x1C692A960](v11, v5);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", which contains ", 17);
    v14 = MEMORY[0x1C692A960](v13, (v5 / v6));
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " frames each from ", 18);
    v16 = MEMORY[0x1C692A960](v15, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v62);
  }

  (*(*a1 + 160))(a1);
  v17 = a1[2];
  v18 = a1[7];
  if (v18)
  {
    v19 = (v18 + 12);
  }

  else
  {
    v19 = (a1 + *(*a1 - 40) + 8);
  }

  v20 = *v19;
  v21 = a1[8];
  if (v21)
  {
    v22 = (v21 + 12);
    v23 = *a1;
  }

  else
  {
    v23 = *a1;
    v22 = (a1 + *(*a1 - 40) + 8);
  }

  v40 = *v22;
  v24 = *v22 + v20;
  if (v24 != (*(v23 + 88))(a1))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 0x1A3, "history_state_size == HistoryStateSize()", v25);
  }

  v26 = v17 + 48 * a4;
  kaldi::CuMatrix<float>::CuMatrix(v62, *(a1 + 12), (a2[5] * v24 / v6 + *(v26 + 16)), 0, 0, 0);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v59, v62, 0, v64, 0, *(v26 + 16));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v59, v26, 111, v27, v28);
  v59 = &unk_1F42BFE90;
  v60 = 0u;
  v61 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v59);
  if (v6 >= 1)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v59, a2, v30, v29 + a2[5], 0, a2[4]);
      if (v6 != 1)
      {
        kaldi::CuMatrixBase<float>::SetStride(&v59, a2[6] * v6);
      }

      kaldi::CuSubMatrix<float>::CuSubMatrix(&v56, a3, v30, v29 + a3[5], 0, a3[4]);
      if (v6 != 1)
      {
        kaldi::CuMatrixBase<float>::SetStride(&v56, a3[6] * v6);
      }

      if (v64 <= v30)
      {
        kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v31);
      }

      *&v51 = v62[1].__locale_ + 4 * (v65 * v30);
      v50 = &unk_1F42BFF30;
      *(&v51 + 1) = v63;
      *&v52 = v66;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v53, &v50, (v63 / v24));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v50, &v53, 0, SHIDWORD(v54), 0, v20);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v47, &v53, 0, SHIDWORD(v54), v20, v40);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v44, &v50, HIDWORD(v51) - HIDWORD(v60), SHIDWORD(v60), 0, SDWORD2(v51));
      v34 = a1[7];
      if (v34)
      {
        (*(*v34 + 112))(v34, &v59, &v44, a4);
      }

      else
      {
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v44, &v59, 111, v32, v33);
      }

      kaldi::CuSubMatrix<float>::CuSubMatrix(&v41, &v47, HIDWORD(v48) - HIDWORD(v60), SHIDWORD(v60), 0, SDWORD2(v48));
      v37 = a1[8];
      if (v37)
      {
        (*(*v37 + 112))(v37, &v59, &v41, a4);
      }

      else
      {
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v41, &v59, 111, v35, v36);
      }

      (*(*a1[9] + 24))(a1[9], &v50, &v47, a4);
      v38 = a1[9] + *(*a1[9] - 40);
      (*(*v38 + 112))(v38, &v59, &v56, a4);
      v41 = &unk_1F42BFE90;
      v42 = 0u;
      v43 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v41);
      v44 = &unk_1F42BFE90;
      v45 = 0u;
      v46 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v44);
      v47 = &unk_1F42BFE90;
      v48 = 0u;
      v49 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v47);
      v50 = &unk_1F42BFE90;
      v51 = 0u;
      v52 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v50);
      v53 = &unk_1F42BFE90;
      v54 = 0u;
      v55 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v53);
      v56 = &unk_1F42BFE90;
      v57 = 0u;
      v58 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v56);
      v59 = &unk_1F42BFE90;
      v60 = 0u;
      v61 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v59);
      ++v30;
      --v29;
    }

    while (v6 != v30);
  }

  (*(*a1[9] + 32))(a1[9]);
  (*(*a1 + 128))(a1, v62, a4);
  return kaldi::CuMatrix<float>::~CuMatrix(v62);
}

void sub_1C2FC2620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  a40 = &unk_1F42BFE90;
  *(v45 + 8) = 0u;
  *(v45 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a40);
  kaldi::CuMatrix<float>::~CuMatrix(&a45);
  _Unwind_Resume(a1);
}

unsigned int *kaldi::nnet1::ScaledDotAttention::SetKeyValueStates(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 20);
  if (v6 != *(a3 + 20))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v39, "SetKeyValueStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 64);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Mismatch in number of key and value pairs in ScaledDotAttention, got ", 69);
    v22 = MEMORY[0x1C692A960](v21, *(a2 + 20));
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " keys and ", 10);
    v24 = MEMORY[0x1C692A960](v23, *(a3 + 20));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v24, " values");
    goto LABEL_27;
  }

  v9 = *(a1 + 120);
  v10 = *(a2 + 16);
  if (v9)
  {
    if (v10 != *(v9 + 8))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v39, "SetKeyValueStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 78);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Mismatch of key matrix input in ScaledDotAttention, expected ", 61);
      v26 = MEMORY[0x1C692A960](v25, *(*(a1 + 120) + 8));
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", but got ", 10);
      MEMORY[0x1C692A960](v27, *(a2 + 16));
      goto LABEL_27;
    }

    kaldi::CuMatrix<float>::Resize(a1 + 8, v6, *(v9 + 12), 0, 0);
    (*(**(a1 + 120) + 112))(*(a1 + 120), a2, a1 + 8, a4);
  }

  else
  {
    if (v10 != *(*(a1 + 112) + 12))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v39, "SetKeyValueStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 70);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Mismatch of key matrix input in ScaledDotAttention, expected ", 61);
      v32 = MEMORY[0x1C692A960](v31, *(*(a1 + 112) + 12));
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ", but got ", 10);
      MEMORY[0x1C692A960](v33, *(a2 + 16));
      goto LABEL_27;
    }

    kaldi::CuMatrix<float>::Resize(a1 + 8, v6, v10, 0, 0);
    kaldi::CuMatrixBase<float>::CopyFromMat<float>((a1 + 8), a2, 111, v11, v12);
  }

  v13 = *(a1 + 128);
  if (v13)
  {
    if (*(a3 + 16) == *(v13 + 8))
    {
      kaldi::CuMatrix<float>::Resize(a1 + 56, *(a3 + 20), *(v13 + 12), 0, 0);
      v14 = *(**(a1 + 128) + 112);

      return v14();
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v39, "SetKeyValueStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 97);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Mismatch of value matrix input in ScaledDotAttention, expected ", 63);
    v29 = MEMORY[0x1C692A960](v28, *(*(a1 + 128) + 8));
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ", but got ", 10);
    MEMORY[0x1C692A960](v30, *(a3 + 16));
LABEL_27:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v39);
  }

  v16 = *(a1 + 136);
  v17 = *(a3 + 16);
  if (v16)
  {
    v18 = *(v16 + 8);
  }

  else
  {
    v18 = *(a1 + *(*a1 - 40) + 12);
  }

  if (v17 != v18)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v39, "SetKeyValueStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 89);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Mismatch of value matrix input in ScaledDotAttention, expected ", 63);
    v35 = *(a1 + 136);
    if (v35)
    {
      v36 = (v35 + 8);
    }

    else
    {
      v36 = (a1 + *(*a1 - 40) + 12);
    }

    v37 = MEMORY[0x1C692A960](v34, *v36);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ", but got ", 10);
    MEMORY[0x1C692A960](v38, *(a3 + 16));
    goto LABEL_27;
  }

  kaldi::CuMatrix<float>::Resize(a1 + 56, *(a3 + 20), v17, 0, 0);

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>((a1 + 56), a3, 111, v19, v20);
}

void kaldi::CuMatrix<float>::Resize(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5)
{
  if (a4 >= 4)
  {
    kaldi::KaldiAssertFailure_("Resize", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x4A, "resize_type == kSetZero || resize_type == kUndefined || resize_type == kSetZeroIfNewMemory || resize_type == kCopyData", a5);
  }

  if (a3 * a2)
  {
    v9 = a4;
    if (a5)
    {
      v10 = *(a1 + 24) != a3;
    }

    else
    {
      v10 = 0;
    }

    if (a4 == 3)
    {
      if (*(a1 + 20) == a2 && ((*(a1 + 16) == a3) & ~v10) != 0)
      {
        return;
      }

      v9 = 0;
    }

    v11 = *(a1 + 24);
    if (v11 < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a1 + 28) / v11;
    }

    if (v11 < a3)
    {
      goto LABEL_19;
    }

    if (v12 < a2)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
LABEL_19:
      if (v9 == 2)
      {
        v14 = *(a1 + 16);
        v13 = *(a1 + 20);
        if (v13 >= a2)
        {
          v15 = a2;
        }

        else
        {
          v15 = v13;
        }

        if (v14 >= a3)
        {
          v16 = a3;
        }

        else
        {
          v16 = v14;
        }

        kaldi::Matrix<float>::Matrix(&v27, a2, a3, 0, a5);
        kaldi::SubMatrix<float>::SubMatrix(v26, &v27, 0, v15, 0, v16);
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v24, a1, 0, v15, 0, v16);
        kaldi::MatrixBase<float>::CopyFromMat<float>(v26, &v25, 111, v17, v18);
        kaldi::CuMatrixBase<float>::~CuMatrixBase(v26);
      }

      else
      {
        v20 = (a1 + 8);
        v19 = *(a1 + 8);
        if (v19 && (*(a1 + 40) & 1) == 0)
        {
          free(v19);
        }

        *v20 = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        kaldi::Matrix<float>::Matrix(&v27, a2, a3, v9, a5);
      }

      v21 = v27;
      v27 = *(a1 + 8);
      *(a1 + 8) = v21;
      v22 = v28;
      v28 = *(a1 + 16);
      *(a1 + 16) = v22;
      LOBYTE(v21) = v29;
      v29 = *(a1 + 40);
      *(a1 + 40) = v21;
      kaldi::Matrix<float>::~Matrix(&v27);
    }

    else
    {
      *(a1 + 16) = a3;
      *(a1 + 20) = a2;
      if (!v9)
      {
        v23 = a1 + 8;

        kaldi::MatrixBase<float>::SetZero(v23);
      }
    }
  }

  else
  {
    if (a3 | a2)
    {
      kaldi::KaldiAssertFailure_("Resize", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x50, "rows == 0 && cols == 0", a5);
    }

    *(a1 + 16) = 0;
  }
}

void sub_1C2FC2E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(va);
  kaldi::Matrix<float>::~Matrix(va1);
  _Unwind_Resume(a1);
}

unsigned int *kaldi::CuMatrixBase<float>::CopyFromMat<float>(unsigned int *result, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 20))
  {
    return kaldi::MatrixBase<float>::CopyFromMat<float>(result + 2, a2 + 8, a3, a4, a5);
  }

  return result;
}

unsigned int *kaldi::MatrixBase<float>::CopyFromMat<float>(unsigned int *result, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  if (a2 != result)
  {
    v6 = result;
    v7 = *(a2 + 12);
    if (a3 == 111)
    {
      v8 = result[3];
      if (v8 != v7 || result[2] != *(a2 + 8))
      {
        kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x34D, "num_rows_ == M.NumRows() && num_cols_ == M.NumCols()", a5);
      }

      if (v8 >= 1)
      {
        v9 = 0;
        do
        {
          kaldi::MatrixBase<float>::Row(v6, v9, a5, v25);
          kaldi::MatrixBase<float>::Row(a2, v9, v10, v24);
          result = kaldi::VectorBase<float>::CopyFromVec(v25, v24, v11, v12, v13);
          ++v9;
        }

        while (v9 < *(v6 + 12));
      }
    }

    else
    {
      v14 = result[2];
      if (v14 != v7 || (v15 = result[3], v15 != *(a2 + 8)))
      {
        kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x350, "num_cols_ == M.NumRows() && num_rows_ == M.NumCols()", a5);
      }

      if (v15 >= 1)
      {
        v16 = 0;
        v17 = *result;
        v18 = *a2;
        v19 = 4 * result[4];
        v20 = 4 * *(a2 + 16);
        do
        {
          v21 = v14;
          v22 = v18;
          v23 = v17;
          if (v14 >= 1)
          {
            do
            {
              *v23++ = *v22;
              v22 = (v22 + v20);
              --v21;
            }

            while (v21);
          }

          ++v16;
          v17 = (v17 + v19);
          ++v18;
        }

        while (v16 != v15);
      }
    }
  }

  return result;
}

uint64_t kaldi::CuMatrixBase<float>::ApplySoftMaxPerRow(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a1[5] != *(a2 + 20) || a1[4] != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("ApplySoftMaxPerRow", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x563, "SameDim(*this, src)", a5);
  }

  kaldi::MatrixBase<float>::CopyFromMat<float>(a1 + 2, a2 + 8, 111, a4, a5);
  result = kaldi::MatrixBase<float>::NumRows((a1 + 2));
  if (result >= 1)
  {
    v9 = 0;
    do
    {
      kaldi::MatrixBase<float>::Row((a1 + 2), v9, v8, v11);
      kaldi::VectorBase<float>::ApplySoftMax(v11, v10);
      ++v9;
      result = kaldi::MatrixBase<float>::NumRows((a1 + 2));
    }

    while (v9 < result);
  }

  return result;
}

uint64_t kaldi::nnet1::ScaledDotAttention::ClearKeyValueStates(kaldi::nnet1::ScaledDotAttention *this)
{
  v9 = 0u;
  v8 = 0u;
  v7 = &unk_1F42BFED8;
  v10 = 0;
  v5 = 0u;
  v4 = 0u;
  v3 = &unk_1F42BFED8;
  v6 = 0;
  kaldi::CuMatrix<float>::Swap(this + 8, &v7);
  kaldi::CuMatrix<float>::Swap(this + 56, &v3);
  kaldi::CuMatrix<float>::~CuMatrix(&v3);
  return kaldi::CuMatrix<float>::~CuMatrix(&v7);
}

void sub_1C2FC319C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  kaldi::CuMatrix<float>::~CuMatrix(&a9);
  kaldi::CuMatrix<float>::~CuMatrix(&a15);
  _Unwind_Resume(a1);
}

uint64_t kaldi::CuMatrix<float>::~CuMatrix(uint64_t a1)
{
  *a1 = &unk_1F42BFED8;
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2 && (*(a1 + 40) & 1) == 0)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return a1;
}

{
  *a1 = &unk_1F42BFED8;
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2 && (*(a1 + 40) & 1) == 0)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return a1;
}

uint64_t kaldi::CuMatrix<float>::Swap(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a2 + 8) = *(result + 8);
  *(result + 8) = v2;
  LODWORD(v2) = *(a2 + 16);
  *(a2 + 16) = *(result + 16);
  *(result + 16) = v2;
  LODWORD(v2) = *(a2 + 20);
  *(a2 + 20) = *(result + 20);
  *(result + 20) = v2;
  LODWORD(v2) = *(a2 + 24);
  *(a2 + 24) = *(result + 24);
  *(result + 24) = v2;
  LODWORD(v2) = *(a2 + 28);
  *(a2 + 28) = *(result + 28);
  *(result + 28) = v2;
  v3 = *(a2 + 32);
  *(a2 + 32) = *(result + 32);
  *(result + 32) = v3;
  LOBYTE(v3) = *(a2 + 40);
  *(a2 + 40) = *(result + 40);
  *(result + 40) = v3;
  return result;
}

uint64_t kaldi::nnet1::Nnet::InputDim(kaldi::nnet1::Nnet *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*this == *(this + 1))
  {
    kaldi::KaldiAssertFailure_("InputDim", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 0x367, "!components_.empty()", a5);
  }

  return *(**this + 8);
}

unsigned int *kaldi::nnet1::SelfAttention::SetHistoryState(uint64_t *a1, uint64_t a2, int a3)
{
  (*(*a1 + 160))(a1);
  if (a3)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 0x256, "batch_idx == 0", v6);
  }

  kaldi::CuMatrix<float>::Resize(a1[2], *(a2 + 20), *(a2 + 16), 0, 0);
  v9 = a1[2];

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(v9, a2, 111, v7, v8);
}

uint64_t kaldi::CuSubMatrix<float>::CuSubMatrix(uint64_t result, uint64_t a2, int a3, int a4, const char *a5, int a6)
{
  v6 = *(a2 + 24);
  v7 = *(a2 + 28) - a5;
  *(result + 8) = *(a2 + 8) + 4 * v6 * a3 + 4 * a5;
  v8 = *(a2 + 32);
  *(result + 16) = a6;
  *(result + 20) = a4;
  *(result + 24) = v6;
  *(result + 28) = v7 - v6 * a3;
  *(result + 32) = v8;
  *result = &unk_1F42BFE90;
  if (((a5 | a3) & 0x80000000) != 0 || a4 + a3 > *(a2 + 20) || a6 + a5 > *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("CuSubMatrix", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x3A9, "(row_offset >= 0) && (col_offset >= 0) && (row_offset + num_rows <= mat.num_rows_) && (col_offset + num_cols <= mat.num_cols_)", a5);
  }

  return result;
}

void *std::vector<kaldi::CuMatrix<float>>::resize(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<kaldi::CuMatrix<float>>::__append(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 48 * a2;
    if (v3 != v7)
    {
      v8 = v3 - 48;
      v9 = (v3 - 48);
      v10 = (v3 - 48);
      do
      {
        v11 = *v10;
        v10 -= 6;
        result = (*(v11 + 16))(v9);
        v8 -= 48;
        v12 = v9 == v7;
        v9 = v10;
      }

      while (!v12);
    }

    v2[1] = v7;
  }

  return result;
}

uint64_t kaldi::nnet1::Nnet::OutputDim(kaldi::nnet1::Nnet *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 1);
  if (*this == v5)
  {
    kaldi::KaldiAssertFailure_("OutputDim", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 0x362, "!components_.empty()", a5);
  }

  return *(*(v5 - 8) + 12);
}

void kaldi::nnet1::Nnet::Feedforward(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5)
{
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("Feedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 0x316, "NULL != out", a5);
  }

  if (*(a1[18] + 32) != 1)
  {
    kaldi::KaldiAssertFailure_("Feedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 0x317, "opts_->num_subbatches == 1", a5);
  }

  v7 = (a1[1] - *a1) >> 3;
  if (a4 == -1)
  {
    v8 = v7;
  }

  else
  {
    v8 = a4;
  }

  v9 = v8 + a5;
  if (v8 + a5 > v7)
  {
    v26 = v8;
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v34, "Feedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 796);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "Components to propagate (startCompIdx=", 38);
    v28 = MEMORY[0x1C692A960](v27, a5);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ", num_comps=", 12);
    v30 = MEMORY[0x1C692A960](v29, v26);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ") must not be greater than ", 27);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "#components in the network (", 28);
    v33 = MEMORY[0x1C692A960](v32, (a1[1] - *a1) >> 3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v33, ").");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v34);
  }

  if (v8)
  {
    v12 = v7 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    kaldi::CuMatrix<float>::Resize(a3, *(a2 + 20), *(a2 + 16), 1u, 0);

    kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111, v13, v14);
  }

  else if (v8 == 1)
  {
    v15 = *(*a1 + 8 * a5);

    kaldi::nnet1::Component::Propagate(v15, a2, a3, 0);
  }

  else
  {
    std::vector<kaldi::CuMatrix<float>>::vector[abi:ne200100](v34, 2uLL);
    v16 = *(a3 + 32);
    v17 = v34[0];
    *(v34[0] + 32) = v16;
    *(v17 + 80) = v16;
    kaldi::nnet1::Component::Propagate(*(*a1 + 8 * a5), a2, v17, 0);
    v18 = 0;
    v19 = a5;
    v20 = v9 - 2;
    if (a5 > v9 - 2)
    {
      v20 = a5;
    }

    v21 = v20 - a5;
    v22 = (v19 << 32) + 0x100000000;
    for (i = 8 * v19 + 8; ; i += 8)
    {
      v24 = v34[0] + 48 * v18;
      if (!v21)
      {
        break;
      }

      v18 = !v18;
      v25 = *(*a1 + i);
      --v21;
      v22 += 0x100000000;
      kaldi::nnet1::Component::Propagate(v25, v24, v34[0] + 48 * v18, 0);
    }

    kaldi::nnet1::Component::Propagate(*(*a1 + (v22 >> 29)), v24, a3, 0);
    v35 = v34;
    std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v35);
  }
}

uint64_t kaldi::nnet1::Component::Propagate(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1[2] != *(a2 + 16))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v20, "Propagate", "../engine/common/libquasar/libkaldi/src/nnet/nnet-component.h", 678);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Non-matching dims! ", 19);
    v12 = (*(*a1 + 24))(a1);
    kaldi::nnet1::Component::TypeToMarker(v12, &v19);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v19;
    }

    else
    {
      v13 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, size);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " input-dim : ", 13);
    v17 = MEMORY[0x1C692A960](v16, a1[2]);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " data : ", 8);
    MEMORY[0x1C692A960](v18, *(a2 + 16));
    std::string::~string(&v19);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
  }

  v8 = (*(*a1 + 56))(a1, *(a2 + 20));
  kaldi::CuMatrix<float>::Resize(a3, v8, a1[3], 0, 0);
  v9 = *(*a1 + 112);

  return v9(a1, a2, a3, a4);
}

void *kaldi::nnet1::LayerNorm::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-layer-norm-component.cc", 0x1B, "in.NumCols() == input_dim_", a5);
  }

  v8 = *(a2 + 20);
  v48 = 0;
  v49 = 0;
  v46 = &unk_1F42BFF70;
  v47 = 0;
  kaldi::CuVector<float>::Resize(&v46, v8, 0, a4, a5);
  if (*(a2 + 20) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *(a2 + 8) + 4 * *(a2 + 24) * v11;
      v13 = *(a2 + 16);
      v14 = *(a2 + 32);
      v42 = &unk_1F42BFF30;
      v43 = v12;
      v45 = v14;
      v44 = v13;
      v15 = kaldi::CuVectorBase<float>::Sum(&v42);
      *(v47 + 4 * v11++) = *&v15 / v44;
    }

    while (v11 < *(a2 + 20));
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111, v9, v10);
  kaldi::CuMatrixBase<float>::AddVecToCols(a3, &v46, v16, v17, v18, -1.0, 1.0);
  v19 = *(a2 + 20);
  v44 = 0;
  v45 = 0;
  v42 = &unk_1F42BFF70;
  v43 = 0;
  kaldi::CuVector<float>::Resize(&v42, v19, 0, v20, v21);
  if (*(a2 + 20) >= 1)
  {
    v25 = 0;
    do
    {
      if (v25 >= *(a3 + 20))
      {
        kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v24);
      }

      v26 = *(a3 + 16);
      v27 = *(a3 + 32);
      v41[1] = *(a3 + 8) + 4 * *(a3 + 24) * v25;
      v41[0] = &unk_1F42BFF30;
      v41[2] = v26;
      v41[3] = v27;
      kaldi::CuVector<float>::CuVector(v39, v41);
      kaldi::CuVectorBase<float>::MulElements(v39, v41, v28, v29, v30);
      v31 = kaldi::CuVectorBase<float>::Sum(v39);
      *(v43 + 4 * v25) = 1.0 / (*(a1 + 48) + sqrtf(*&v31 / (v40 - *(a1 + 52))));
      kaldi::CuVector<float>::~CuVector(v39);
      ++v25;
    }

    while (v25 < *(a2 + 20));
  }

  kaldi::CuMatrixBase<float>::MulRowsVec(a3, &v42, v22, v23, v24);
  kaldi::CuMatrixBase<float>::MulColsVec(a3, a1 + 56, v32, v33, v34);
  kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 88, v35, v36, v37, 1.0, 1.0);
  kaldi::CuVector<float>::~CuVector(&v42);
  return kaldi::CuVector<float>::~CuVector(&v46);
}

void sub_1C2FC3CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::Matrix<float>::Matrix(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  kaldi::Matrix<float>::Resize(a1, a2, a3, a4, a5);
  return a1;
}

uint64_t kaldi::CuMatrix<float>::CuMatrix(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, const char *a6)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a5;
  *a1 = &unk_1F42BFED8;
  *(a1 + 40) = 0;
  kaldi::CuMatrix<float>::Resize(a1, a2, a3, a4, a6);
  return a1;
}

uint64_t *kaldi::nnet1::QuantizedAffineTransform<signed char>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuMatrixBase<float>::AddMatMat<signed char>(a3, a2, 111, (a1 + 48), 0x70, 1.0, 0.0);

  return kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 96, v5, v6, v7, 1.0, 1.0);
}

uint64_t kaldi::MatrixBase<float>::Scale(uint64_t result, float a2)
{
  if (a2 != 1.0)
  {
    v2 = result;
    v3 = *(result + 12);
    if (v3)
    {
      if (*(result + 8) == *(result + 16))
      {
        v4 = *result;

        return cblas_sscal_NEWLAPACK_ILP64();
      }

      else if (v3 >= 1)
      {
        v5 = 0;
        v6 = *result;
        do
        {
          v7 = v2[2];
          result = cblas_sscal_NEWLAPACK_ILP64();
          ++v5;
          v6 += 4 * v2[4];
        }

        while (v5 < v2[3]);
      }
    }
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::Row@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, const char *a3@<X4>, uint64_t *a4@<X8>)
{
  if (*(result + 12) <= a2)
  {
    kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.h", 0x12F, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a3);
  }

  v4 = *result + 4 * (*(result + 16) * a2);
  v5 = *(result + 8);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = v4;
  *(a4 + 2) = v5;
  return result;
}

{
  if (*(result + 12) <= a2)
  {
    kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.h", 0x129, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a3);
  }

  v4 = *result + 4 * (*(result + 16) * a2);
  v5 = *(result + 8);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = v4;
  *(a4 + 2) = v5;
  return result;
}

uint64_t kaldi::nnet1::SelfAttention::HistoryStateSize(kaldi::nnet1::SelfAttention *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    v2 = (v1 + 12);
  }

  else
  {
    v2 = (this + *(*this - 40) + 8);
  }

  v3 = *v2;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = (v4 + 12);
  }

  else
  {
    v5 = (this + *(*this - 40) + 8);
  }

  return (*v5 + v3);
}

uint64_t kaldi::CuSubMatrix<float>::CuSubMatrix(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 24) = 0u;
  *(result + 8) = 0u;
  *result = &unk_1F42BFE90;
  v5 = *(a2 + 16);
  v6 = v5 / a3;
  if (v5 % a3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "CuSubMatrix", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 989);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "the vector cannot be represented as a matrix with rows ", 55);
    v8 = MEMORY[0x1C692A960](v7, a3);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " , while it has dimension ", 26);
    MEMORY[0x1C692A960](v9, *(a2 + 16));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  *(result + 8) = *(a2 + 8);
  *(result + 16) = v6;
  *(result + 20) = a3;
  *(result + 24) = v6;
  *(result + 28) = v5;
  *(result + 32) = *(a2 + 24);
  return result;
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::AddMatMat(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, const char *a5, float a6)
{
  v27 = 0;
  v28 = kaldi::kaldi_memalign_free;
  v30 = 0;
  v29 = 0;
  v31 = 0;
  kaldi::QuantizedMatrixBase<signed char>::PrepareMatMat(a1, a2, &v27, a4, a5);
  v9 = kaldi::MatrixBase<float>::NumRows(a3);
  v10 = kaldi::MatrixBase<float>::NumCols(a3);
  v11 = 1.0 / (*(a1 + 12) * *&v29);
  if (a6 == 0.0)
  {
    v12 = *(a1 + 40);
    v13 = v27;
    v14 = *(a1 + 4);
    v15 = *a3;
    v16 = kaldi::MatrixBase<float>::Stride(a3);
    BNNSFilterApplyBatch(v12, v9, v13, v14, v15, v16);
    kaldi::MatrixBase<float>::Scale(a3, v11);
  }

  else
  {
    kaldi::Matrix<float>::Matrix(v26, v9, v10, 0, 0);
    v17 = *(a1 + 40);
    v18 = kaldi::MatrixBase<float>::NumRows(v26);
    v19 = v27;
    v20 = *(a1 + 4);
    v21 = v26[0];
    v22 = kaldi::MatrixBase<float>::Stride(v26);
    BNNSFilterApplyBatch(v17, v18, v19, v20, v21, v22);
    kaldi::MatrixBase<float>::AddMat(a3, v26, 111, v11, a6, v23, v24);
    kaldi::Matrix<float>::~Matrix(v26);
  }

  result = v27;
  v27 = 0;
  if (result)
  {
    return v28();
  }

  return result;
}

void sub_1C2FC4240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(void))
{
  if (a14)
  {
    a15();
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::PrepareMatMat(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v8 = kaldi::MatrixBase<float>::AbsMax(a2, a2, a3, a4, a5);
  if (v8 == 0.0)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = v8;
  }

  v10 = kaldi::MatrixBase<float>::NumRows(a2);
  v11 = kaldi::MatrixBase<float>::NumCols(a2);
  v12 = a1[2];
  v13 = 2147500000.0 / (v12 * v11);
  v14 = v12 / v9;
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x20uLL, v11 * v10, 0x100004077774924uLL))
  {
    v16 = 0;
  }

  else
  {
    v16 = memptr;
  }

  memptr = v16;
  v17 = *a3;
  *a3 = v16;
  if (v17)
  {
    (*(a3 + 8))(v17);
    v16 = *a3;
  }

  result = kaldi::ComputeQuantizedData<signed char>(v16, a2, v15);
  *(a3 + 16) = v15;
  v19 = *a1;
  v20 = *(a1 + 4);
  if (!v20)
  {
    v20 = *(a1 + 2);
  }

  v21 = *(a1 + 1);
  if (*(a3 + 20) != LODWORD(v19) || *(a3 + 24) != v21 || *(a3 + 32) != v20)
  {
    *(a3 + 20) = v19;
    *(a3 + 24) = v21;
    *(a3 + 32) = v20;
  }

  return result;
}

void std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 48;
      v7 = v4 - 48;
      v8 = v4 - 48;
      do
      {
        v9 = *v8;
        v8 -= 48;
        (*(v9 + 16))(v7);
        v6 -= 48;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void MarkupImpl::generate_tokens(MarkupImpl *this)
{
  FrontendNNModule::compose_input(this, 1, &__p);
  (*(*this + 80))(&v20, this);
  v2 = v20;
  if (v20 && *(*(v20 + 16) + 24) == 1936944492 || !*(this + 63))
  {
    v3 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = *(this + 64);
    *(this + 63) = v2;
    *(this + 64) = v3;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v6 = *(this + 59);
    v7 = *(this + 64);
    v18 = *(this + 63);
    v19 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v6 + 72))(v6, &v18);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    v8 = v17;
    v12 = v8 + 8 != v9 || v8 + 8 != v10;
    *(this + 496) = v12;
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = __p.__r_.__value_.__l.__size_;
  }

  if (!v13)
  {
    if (v17)
    {
      v14 = *(this + 9);
      if (!v14 || *(*(*(this + 5) + (((v14 + *(this + 8) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v14 + *(this + 64) - 1)) != v17)
      {
        std::deque<std::shared_ptr<Agglomerate>>::push_back(this + 4, &v17);
      }
    }
  }

  if (v17)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = __p.__r_.__value_.__l.__size_;
    }

    if (v15)
    {
      (*(*this + 208))(this, &__p);
    }

    (*(**(this + 2) + 32))(*(this + 2));
  }

  else
  {
    *(this + 8) = 1;
    *(this + 61) = 0;
  }

  if (*(&v17 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1C2FC474C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  v18 = *(v16 - 40);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  std::pair<std::string,std::shared_ptr<std::vector<FRReplaceInst>>>::~pair(&a10);
  _Unwind_Resume(a1);
}

void PronounceNNImpl::generate_tokens(PronounceNNImpl *this)
{
  v107 = *MEMORY[0x1E69E9840];
  v2 = *(this + 497);
  (*(*this + 64))(&v100);
  if (*v100 == v100[1])
  {
    *(this + 8) = 1;
  }

  else
  {
    v3 = 0x1EC07B000uLL;
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v4 = 0x1EC07B000uLL;
    v5 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_1C2F95000, v5, OS_LOG_TYPE_DEFAULT, "G2P started", &buf, 2u);
    }

    Diagnostics::log(5, "G2P started", v6);
    kdebug_trace();
    v93.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v8 = *v100;
    v7 = v100[1];
    if (*v100 != v7)
    {
      while (1)
      {
        if (*(v8 + 23) < 0)
        {
          v10 = *(v8 + 1);
          if (v10)
          {
            std::string::__init_copy_ctor_external(&v98, *v8, v10);
LABEL_12:
            UTFString::lstrip(&v98);
            UTFString::rstrip(&v98);
            __p = v98;
            memset(&v98, 0, sizeof(v98));
            v11 = *(this + 65);
            LODWORD(buf.__r_.__value_.__l.__data_) = 0;
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
              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            v14 = utext_openUTF8(0, p_p, size, &buf);
            if (SLODWORD(buf.__r_.__value_.__l.__data_) <= 0)
            {
              v15 = v14;
            }

            else
            {
              v15 = 0;
            }

            UTFRegex::set_text(v11, v15, 1);
            LODWORD(buf.__r_.__value_.__l.__data_) = 0;
            v16 = uregex_matches(*v11, 0, &buf);
            v17 = *(v3 + 3528);
            if (v16)
            {
              if (v17 != -1)
              {
                dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
              }

              v18 = *(v4 + 3536);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                Censor::global_plaintext(&buf, &__p);
                v19 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
                *v103 = 136315138;
                v104 = v19;
                _os_log_impl(&dword_1C2F95000, v18, OS_LOG_TYPE_DEBUG, "Remove isolated punctuation chunk: %s", v103, 0xCu);
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }
              }

              Censor::global_plaintext(&buf, &__p);
              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_buf = &buf;
              }

              else
              {
                p_buf = buf.__r_.__value_.__r.__words[0];
              }

              Diagnostics::log(7, "Remove isolated punctuation chunk: %s", v20, p_buf);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              v22 = *(v8 + 4);
              v24 = *(v22 - 16);
              v23 = *(v22 - 8);
              *&v97 = v24;
              *(&v97 + 1) = v23;
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v24)
              {
                if (v24 + 8 == v25)
                {
                  v26 = 0;
                }

                else
                {
                  v26 = *(v25 + 40) + 8;
                }

                v54 = *(v26 + 47);
                if ((v54 & 0x8000000000000000) != 0)
                {
                  v54 = *(v26 + 32);
                }

                if (v54 >= 2)
                {
                  MEMORY[0x1C692A640](v26 + 24, ".");
                  v24 = v97;
                  Agglomerate::set<TokenBasicItem>(v97, v26);
                }

                v106 = 0u;
                *&buf.__r_.__value_.__r.__words[1] = 0u;
                v55 = (*(*this + 88))(this);
                FrontendNNModule::update_phrasing_item(this, &buf, 1, v55);
                Agglomerate::set<TokenPhrasingItem>(v24, &buf);
                std::deque<std::shared_ptr<Agglomerate>>::push_back(this + 4, &v97);
                if (*(&v106 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*(&v106 + 1));
                }

                if (buf.__r_.__value_.__r.__words[2])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](buf.__r_.__value_.__r.__words[2]);
                }

                v23 = *(&v97 + 1);
              }

              if (v23)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v23);
              }

              v39 = 0;
              v49 = 5;
              goto LABEL_91;
            }

            if (v17 != -1)
            {
              dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
            }

            v36 = *(v4 + 3536);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&dword_1C2F95000, v36, OS_LOG_TYPE_DEFAULT, "G2P model inference started", &buf, 2u);
            }

            Diagnostics::log(5, "G2P model inference started", v37);
            (*(*this + 128))(&buf, this, v8);
            v39 = buf.__r_.__value_.__l.__size_;
            v38 = buf.__r_.__value_.__r.__words[0];
            if (!buf.__r_.__value_.__r.__words[0] || *(v8 + 3) == *(v8 + 4))
            {
              if (*(v3 + 3528) != -1)
              {
                dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
              }

              v45 = *(v4 + 3536);
              v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
              v48 = "G2P model inference bypass";
              if (v46)
              {
                LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&dword_1C2F95000, v45, OS_LOG_TYPE_DEFAULT, "G2P model inference bypass", &buf, 2u);
                v48 = "G2P model inference bypass";
              }
            }

            else
            {
              if (*buf.__r_.__value_.__l.__data_ != *(buf.__r_.__value_.__r.__words[0] + 8))
              {
                if ((*(this + 496) & 1) == 0)
                {
                  *(*buf.__r_.__value_.__l.__data_ + 24) = -1;
                }

                if (*(v3 + 3528) != -1)
                {
                  dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
                }

                v40 = *(v4 + 3536);
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                  _os_log_impl(&dword_1C2F95000, v40, OS_LOG_TYPE_DEFAULT, "G2P output reconstruction started", &buf, 2u);
                }

                Diagnostics::log(5, "G2P output reconstruction started", v41);
                v42 = *(v8 + 4);
                if (*(v8 + 3) == v42)
                {
                  v44 = 1;
                }

                else
                {
                  v43 = *(v42 - 16);
                }

                if (*(v8 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v96, *v8, *(v8 + 1));
                }

                else
                {
                  v73 = *v8;
                  v96.__r_.__value_.__r.__words[2] = *(v8 + 2);
                  *&v96.__r_.__value_.__l.__data_ = v73;
                }

                v94 = v38;
                v95 = v39;
                if (v39)
                {
                  atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v74 = (*(*this + 184))(this, &v96, &v94, *(this + 498), v44 & *(this + 497));
                if (v95)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v95);
                }

                if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v96.__r_.__value_.__l.__data_);
                  if (v74)
                  {
                    goto LABEL_150;
                  }
                }

                else if (v74)
                {
LABEL_150:
                  v49 = 0;
                  goto LABEL_91;
                }

                if (*(v3 + 3528) != -1)
                {
                  dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
                }

                v75 = *(v4 + 3536);
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                  _os_log_impl(&dword_1C2F95000, v75, OS_LOG_TYPE_DEFAULT, "Remove chunking failed, retry G2P inference!", &buf, 2u);
                }

                Diagnostics::log(5, "Remove chunking failed, retry G2P inference!", v76);
                v49 = 4;
LABEL_91:
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                  if (v39)
                  {
LABEL_93:
                    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
                  }
                }

                else if (v39)
                {
                  goto LABEL_93;
                }

                if (v49 && v49 != 5)
                {
                  goto LABEL_173;
                }

                goto LABEL_134;
              }

              if (*(v3 + 3528) != -1)
              {
                dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
              }

              v71 = *(v4 + 3536);
              v72 = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
              v48 = "G2P model inference got empty result!";
              if (v72)
              {
                LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&dword_1C2F95000, v71, OS_LOG_TYPE_DEFAULT, "G2P model inference got empty result!", &buf, 2u);
                v48 = "G2P model inference got empty result!";
              }
            }

            v49 = 5;
            Diagnostics::log(5, v48, v47);
            goto LABEL_91;
          }
        }

        else if (*(v8 + 23))
        {
          v9 = *v8;
          v98.__r_.__value_.__r.__words[2] = *(v8 + 2);
          *&v98.__r_.__value_.__l.__data_ = v9;
          goto LABEL_12;
        }

        v27 = *(v8 + 4);
        v29 = *(v27 - 16);
        v28 = *(v27 - 8);
        *&v99 = v29;
        *(&v99 + 1) = v28;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v31 = v29 + 8;
        if (v29 + 8 == v30)
        {
          v32 = 0;
          goto LABEL_105;
        }

        v32 = 0;
        v33 = *(*(v30 + 40) + 8);
        if (v33 > 1835102826)
        {
          v34 = v33 == 1886547312;
          v35 = 1835102827;
        }

        else
        {
          v34 = v33 == 1635083369;
          v35 = 1651664235;
        }

        if (v34 || v33 == v35)
        {
          break;
        }

LABEL_105:
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        if (v32)
        {
          goto LABEL_134;
        }

        v56 = *(v8 + 4);
        v58 = *(v56 - 16);
        v57 = *(v56 - 8);
        if (v57)
        {
          atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v60 = v58 + 8;
        if (v58 + 8 == v59)
        {
          if (*(v3 + 3528) != -1)
          {
            dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
          }

          v67 = *(v4 + 3536);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_1C2F95000, v67, OS_LOG_TYPE_ERROR, "#PronounceNNImpl - Phonetic: basic is needed", &buf, 2u);
          }

          v69 = "#PronounceNNImpl - Phonetic: basic is needed";
        }

        else
        {
          v61 = *(v59 + 40);
          if (v60 == v62)
          {
            memset(&buf, 0, sizeof(buf));
            (*(*this + 192))(this, v61 + 8, &buf, 1);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
              if (!v57)
              {
                goto LABEL_134;
              }

              goto LABEL_133;
            }

            goto LABEL_132;
          }

          if (*(v61 + 8) == 1885892462)
          {
            v63 = v3;
            v64 = *(v62 + 40);
            FrontendNNModule::handle_phonetic_token(&buf, this, *(v61 + 56), v64 + 8);
            v65 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v65 = buf.__r_.__value_.__l.__size_;
            }

            if (v65)
            {
              if (*(v64 + 31) < 0)
              {
                std::string::__init_copy_ctor_external(&__p, *(v64 + 8), *(v64 + 16));
              }

              else
              {
                v66 = *(v64 + 8);
                __p.__r_.__value_.__r.__words[2] = *(v64 + 24);
                *&__p.__r_.__value_.__l.__data_ = v66;
              }

              (*(*this + 192))(this, v61 + 8, &__p, 0);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              (*(*this + 176))(this, &buf, v61 + 8, *(this + 498));
              {
                v77 = *(this + 9);
                if (v77)
                {
                  v78 = *(*(*(this + 5) + (((v77 + *(this + 8) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v77 + *(this + 64) - 1));
                  v80 = v78 + 8 == v79 ? 0 : *(v79 + 40) + 8;
                  if (v60 != v81 && *(*(v81 + 40) + 8) == 1)
                  {
                    *(v80 + 1) = 1;
                  }
                }
              }
            }

            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            v3 = v63;
            v4 = 0x1EC07B000;
            if (!v57)
            {
              goto LABEL_134;
            }

LABEL_133:
            std::__shared_weak_count::__release_shared[abi:ne200100](v57);
            goto LABEL_134;
          }

          if (*(v3 + 3528) != -1)
          {
            dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
          }

          v70 = *(v4 + 3536);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_1C2F95000, v70, OS_LOG_TYPE_ERROR, "#PronounceNNImpl - Phonetic: kind of basic item isn't PHONETIC_TOKEN", &buf, 2u);
          }

          v69 = "#PronounceNNImpl - Phonetic: kind of basic item isn't PHONETIC_TOKEN";
        }

        Diagnostics::log(3, v69, v68);
LABEL_132:
        if (v57)
        {
          goto LABEL_133;
        }

LABEL_134:
        v8 += 3;
        if (v8 == v7)
        {
          goto LABEL_173;
        }
      }

      v106 = 0u;
      *&buf.__r_.__value_.__r.__words[1] = 0u;
      if (v33 != 1651664235)
      {
        goto LABEL_77;
      }

      if (v31 == v51 || *(*(v51 + 40) + 12) > 8)
      {
        FrontendNNModule::update_phrasing_item(this, &buf, 1, 1);
        goto LABEL_100;
      }

      if (v31 == v52)
      {
LABEL_77:
        v53 = (*(*this + 88))(this);
        FrontendNNModule::update_phrasing_item(this, &buf, 1, v53);
      }

      else
      {
        FrontendNNModule::update_phrasing_item(this, &buf, 1, *(*(v52 + 40) + 8));
      }

LABEL_100:
      Agglomerate::set<TokenPhrasingItem>(v29, &buf);
      std::deque<std::shared_ptr<Agglomerate>>::push_back(this + 4, &v99);
      if (*(&v106 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v106 + 1));
      }

      if (buf.__r_.__value_.__r.__words[2])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](buf.__r_.__value_.__r.__words[2]);
      }

      v32 = 1;
      goto LABEL_105;
    }

LABEL_173:
    PronounceNNImpl::postfix_alignment(this);
    rep = std::chrono::steady_clock::now().__d_.__rep_;
    kdebug_trace();
    v83 = rep - v93.__d_.__rep_;
    if (*(v3 + 3528) != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v84 = (v83 * 0x431BDE82D7B634DBLL) >> 64;
    v85 = *(v4 + 3536);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_1C2F95000, v85, OS_LOG_TYPE_DEFAULT, "G2P ended", &buf, 2u);
    }

    Diagnostics::log(5, "G2P ended", v86);
    if (*(v3 + 3528) != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v87 = *(v4 + 3536);
    v88 = os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT);
    v90 = ((v84 >> 18) + (v84 >> 63));
    v91 = v90 / 1000.0;
    if (v88)
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
      *(buf.__r_.__value_.__r.__words + 4) = v90 / 1000.0;
      _os_log_impl(&dword_1C2F95000, v87, OS_LOG_TYPE_DEFAULT, "G2P latency: %.3f s", &buf, 0xCu);
    }

    Diagnostics::log(5, "G2P latency: %.3f s", v89, *&v91);
  }

  if (v101)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v101);
  }

  v92 = *MEMORY[0x1E69E9840];
}

void sub_1C2FC5604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  _Unwind_Resume(exception_object);
}

void ExtractFeaturesImpl::extract_sentence_text(ExtractFeaturesImpl *this)
{
  v91 = *MEMORY[0x1E69E9840];
  *(this + 59) = 0;
  if (*(this + 271) < 0)
  {
    **(this + 31) = 0;
    *(this + 32) = 0;
  }

  else
  {
    *(this + 248) = 0;
    *(this + 271) = 0;
  }

  if (*(this + 319) < 0)
  {
    **(this + 37) = 0;
    *(this + 38) = 0;
  }

  else
  {
    *(this + 296) = 0;
    *(this + 319) = 0;
  }

  v85 = 0;
  v86 = 0;
  v87 = 0;
  (*(***(this + 13) + 40))(&buf);
  std::vector<PhonemeRepresentation::Word>::push_back[abi:ne200100](&v85, &buf);
  v82 = (this + 296);
  __p.__r_.__value_.__r.__words[0] = &buf;
  std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](&__p);
  v83 = 0;
  v2 = 0;
  v79 = 0;
  v3 = 0;
  v4 = (this + 472);
  v80 = 0;
  v81 = 1000000000;
  while (1)
  {
    v5 = v3;
    (*(**(this + 2) + 16))(&buf);
    v6 = *&buf.__r_.__value_.__l.__data_;
    *&buf.__r_.__value_.__l.__data_ = 0uLL;
    v7 = *(this + 60);
    *v4 = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      v8 = *v4;
      if (buf.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](buf.__r_.__value_.__l.__size_);
        if (!v8)
        {
          goto LABEL_114;
        }

        v8 = *v4;
        goto LABEL_14;
      }
    }

    else
    {
      v8 = v6;
    }

    if (!v8)
    {
      goto LABEL_114;
    }

LABEL_14:
    ++v3;
    if (v8 + 8 == v9)
    {
      *(this + 61) = 0;
      goto LABEL_93;
    }

    v10 = *(v9 + 40);
    *(this + 61) = v10 + 8;
    if (!v2)
    {
      v11 = *(v10 + 56);
      v2 = *(v11 + 16);
      v12 = *(v11 + 24);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v83)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      }

      v83 = v12;
    }

    v13 = *(this + 61);
    v14 = *v13;
    if (*v13 == 1853189228)
    {
      goto LABEL_93;
    }

    v15 = *v4;
    v17 = v15 + 8;
    v18 = *(v13 + 16);
    if (v15 + 8 == v16 || v18)
    {
      v19 = *(v13 + 8);
      v20 = v81;
      if (v19 < v81)
      {
        v20 = *(v13 + 8);
      }

      v21 = v18 + v19;
      v22 = v80;
      if (v80 <= v21)
      {
        v22 = v21;
      }

      v80 = v22;
      v81 = v20;
    }

    if (v14 <= 1886547311)
    {
      break;
    }

    if (v14 == 1886547312 || v14 == 1952807028)
    {
      goto LABEL_38;
    }

    v23 = 1886809699;
LABEL_37:
    if (v14 != v23)
    {
      goto LABEL_93;
    }

LABEL_38:
    v24 = *(this + 319);
    if (*(this + 319) < 0)
    {
      if (!*(this + 38))
      {
        goto LABEL_70;
      }
    }

    else if (!*(this + 319))
    {
      goto LABEL_70;
    }

    if ((*(v13 + 47) & 0x8000000000000000) != 0)
    {
      if (!*(v13 + 32))
      {
LABEL_70:
        *&buf.__r_.__value_.__r.__words[1] = 0uLL;
        v90 = 0;
        if ((v24 & 0x80) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_71;
      }
    }

    else if (!*(v13 + 47))
    {
      goto LABEL_70;
    }

    *&buf.__r_.__value_.__r.__words[1] = 0uLL;
    v90 = 0;
    if (!v79 && v14 != 1886809699)
    {
      std::string::push_back(v82, 32);
      v24 = *(this + 319);
    }

    if ((v24 & 0x80) == 0)
    {
      goto LABEL_47;
    }

LABEL_71:
    v24 = *(this + 38);
LABEL_47:
    buf.__r_.__value_.__r.__words[0] = v24;
    Agglomerate::set<TokenExtractionItem>(*v4, &buf);
    v25 = *(this + 61);
    if (*v25 != 1952807028 || *(v25 + 16))
    {
      v28 = *(v25 + 24);
      v26 = v25 + 24;
      v27 = v28;
      v29 = *(v26 + 23);
      if (v29 >= 0)
      {
        v30 = v26;
      }

      else
      {
        v30 = v27;
      }

      if (v29 >= 0)
      {
        v31 = *(v26 + 23);
      }

      else
      {
        v31 = *(v26 + 8);
      }

      std::string::append(v82, v30, v31);
    }

    v32 = *v4;
    if (v32 + 8 != v33)
    {
      v34 = *(v33 + 40);
      v35 = *(v34 + 55);
      if (v35 < 0)
      {
        v36 = *(v34 + 40);
      }

      else
      {
        v36 = *(v34 + 55);
      }

      v79 = v36 != 0;
      if (v36)
      {
        if (v35 >= 0)
        {
          v42 = (v34 + 32);
        }

        else
        {
          v42 = *(v34 + 32);
        }

        if (v35 >= 0)
        {
          v43 = *(v34 + 55);
        }

        else
        {
          v43 = *(v34 + 40);
        }

        std::string::append(v82, v42, v43);
      }

      if ((*(this + 271) & 0x8000000000000000) != 0)
      {
        if (*(this + 32))
        {
          goto LABEL_85;
        }
      }

      else
      {
        if (!*(this + 271))
        {
          goto LABEL_86;
        }

LABEL_85:
        std::string::append((this + 248), " ");
      }

LABEL_86:
      v44 = *(v34 + 31);
      if (v44 >= 0)
      {
        v45 = (v34 + 8);
      }

      else
      {
        v45 = *(v34 + 8);
      }

      if (v44 >= 0)
      {
        v46 = *(v34 + 31);
      }

      else
      {
        v46 = *(v34 + 16);
      }

      std::string::append((this + 248), v45, v46);
      ++*(this + 59);
      goto LABEL_93;
    }

    v79 = 0;
LABEL_93:
    v47 = *v4;
    if (v47 + 8 != v48)
    {
      std::vector<PhonemeRepresentation::Word>::__insert_with_size[abi:ne200100]<std::__wrap_iter<PhonemeRepresentation::Word const*>,std::__wrap_iter<PhonemeRepresentation::Word const*>>(&v85, v86, *(*(v48 + 40) + 8), *(*(v48 + 40) + 16), 0xAAAAAAAAAAAAAAABLL * ((*(*(v48 + 40) + 16) - *(*(v48 + 40) + 8)) >> 3));
      v47 = *v4;
    }

    if (v47 + 8 != v49)
    {
      v50 = *(v49 + 40);
      if (*(v50 + 8) == 1)
      {
        (*(***(this + 13) + 40))(&buf);
        std::vector<PhonemeRepresentation::Word>::push_back[abi:ne200100](&v85, &buf);
        __p.__r_.__value_.__r.__words[0] = &buf;
        std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](&__p);
      }

      if (*(v50 + 9) == 1)
      {
        v3 = v5 + 1;
        goto LABEL_114;
      }
    }
  }

  if (v14 == 1635083369)
  {
    if (v17 == v37)
    {
      goto LABEL_93;
    }

    v38 = *(v37 + 40);
    *&buf.__r_.__value_.__r.__words[1] = 0uLL;
    v90 = 0;
    v39 = *(this + 319);
    if (*(this + 319) < 0)
    {
      if (*(this + 38))
      {
LABEL_63:
        std::string::push_back(v82, 32);
        v39 = *(this + 319);
        if ((v39 & 0x80) == 0)
        {
LABEL_102:
          buf.__r_.__value_.__r.__words[0] = v39;
          Agglomerate::set<TokenExtractionItem>(*v4, &buf);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v88, 60, (v38 + 40));
          std::string::push_back(&v88, 62);
          __p = v88;
          memset(&v88, 0, sizeof(v88));
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
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(v82, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v88.__r_.__value_.__l.__data_);
          }

          goto LABEL_93;
        }

LABEL_64:
        v39 = *(this + 38);
        goto LABEL_102;
      }
    }

    else if (*(this + 319))
    {
      goto LABEL_63;
    }

    if ((v39 & 0x80) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_64;
  }

  if (v14 != 1651664235)
  {
    v23 = 1885892462;
    goto LABEL_37;
  }

  if (v17 == v40)
  {
    goto LABEL_93;
  }

  v41 = *(v40 + 40);
  if (*(v41 + 8) != 0.0)
  {
    (*(***(this + 13) + 40))(&buf);
    std::vector<PhonemeRepresentation::Word>::push_back[abi:ne200100](&v85, &buf);
    __p.__r_.__value_.__r.__words[0] = &buf;
    std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](&__p);
    goto LABEL_93;
  }

  if (*(v41 + 12) != 1)
  {
    goto LABEL_93;
  }

  (*(***(this + 13) + 40))(&buf);
  std::vector<PhonemeRepresentation::Word>::push_back[abi:ne200100](&v85, &buf);
  __p.__r_.__value_.__r.__words[0] = &buf;
  std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](&__p);
LABEL_114:
  if (*(this + 207) < 0)
  {
    **(this + 23) = 0;
    *(this + 24) = 0;
  }

  else
  {
    *(this + 184) = 0;
    *(this + 207) = 0;
  }

  v53 = v81;
  if (v2)
  {
    std::string::operator=((this + 208), v2);
  }

  v54 = (this + 184);
  if (v3)
  {
    if (v81 < v80)
    {
      v55 = *(v2 + 23);
      if ((v55 & 0x8000000000000000) != 0)
      {
        v55 = *(v2 + 8);
      }

      if (v80 <= v55)
      {
        v55 = v80;
      }

      else
      {
        if (Diagnostics_GetLogObject(void)::onceToken != -1)
        {
          dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
        }

        v56 = Diagnostics_GetLogObject(void)::__profile_log_default;
        if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
        {
          Censor::global_plaintext(&__p, v2);
          v57 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          LODWORD(buf.__r_.__value_.__l.__data_) = 134218498;
          *(buf.__r_.__value_.__r.__words + 4) = v81;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v80;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
          v90 = v57;
          _os_log_impl(&dword_1C2F95000, v56, OS_LOG_TYPE_ERROR, "Invalid sentence range: [%zu, %zu) in text '%s'", &buf, 0x20u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        Censor::global_plaintext(&buf, v2);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        Diagnostics::log(3, "Invalid sentence range: [%zu, %zu) in text '%s'", v58, v81, v80, p_buf);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (v55 < v81)
        {
          v53 = v55;
        }
      }

      *(this + 49) = v53;
      std::string::basic_string(&buf, v2, v53, v55 - v53, &__p);
      if (*(this + 207) < 0)
      {
        operator delete(*v54);
      }

      *v54 = *&buf.__r_.__value_.__l.__data_;
      *(this + 25) = *(&buf.__r_.__value_.__l + 2);
    }
  }

  else
  {
    *(this + 8) = 1;
  }

  if ((*(this + 8) & 1) == 0)
  {
    memset(&buf, 0, sizeof(buf));
    v60 = *(this + 207);
    if (v60 >= 0)
    {
      v61 = this + 184;
    }

    else
    {
      v61 = *(this + 23);
    }

    if (v60 >= 0)
    {
      v62 = *(this + 207);
    }

    else
    {
      v62 = *(this + 24);
    }

    for (; v62; --v62)
    {
      v63 = *v61;
      if (v63 <= 0xC)
      {
        if (v63 == 9)
        {
          v64 = "\\t";
          goto LABEL_164;
        }

        v64 = "\\n";
        if (v63 == 10)
        {
          goto LABEL_164;
        }
      }

      else
      {
        switch(v63)
        {
          case 0xDu:
            v64 = "\\r";
            goto LABEL_164;
          case 0x5Cu:
            v64 = "\\\";
            goto LABEL_164;
          case 0x1Bu:
            v64 = "\\e";
LABEL_164:
            std::string::append(&buf, v64);
            goto LABEL_165;
        }
      }

      std::string::push_back(&buf, v63);
LABEL_165:
      ++v61;
    }

    (*(***(this + 13) + 24))(&__p);
    v65 = (this + 344);
    if (*(this + 367) < 0)
    {
      operator delete(*v65);
    }

    *v65 = *&__p.__r_.__value_.__l.__data_;
    *(this + 45) = *(&__p.__r_.__value_.__l + 2);
    UTFString::remove_invalid_utf8_codes(&__p, v82);
    if (*(this + 319) < 0)
    {
      operator delete(v82->__r_.__value_.__l.__data_);
    }

    *&v82->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    *(this + 39) = *(&__p.__r_.__value_.__l + 2);
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v66 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
    {
      Censor::global_plaintext(&__p, &buf);
      v67 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(v88.__r_.__value_.__l.__data_) = 136315138;
      *(v88.__r_.__value_.__r.__words + 4) = v67;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    Censor::global_plaintext(&__p, &buf);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = &__p;
    }

    else
    {
      v69 = __p.__r_.__value_.__r.__words[0];
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v70 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
    {
      Censor::global_plaintext(&__p, v82);
      v71 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(v88.__r_.__value_.__l.__data_) = 136315138;
      *(v88.__r_.__value_.__r.__words + 4) = v71;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    Censor::global_plaintext(&__p, v82);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = &__p;
    }

    else
    {
      v73 = __p.__r_.__value_.__r.__words[0];
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v74 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
    {
      Censor::global_plaintext(&__p, v65);
      v75 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(v88.__r_.__value_.__l.__data_) = 136315138;
      *(v88.__r_.__value_.__r.__words + 4) = v75;
      _os_log_impl(&dword_1C2F95000, v74, OS_LOG_TYPE_DEFAULT, "Phonemes : %s", &v88, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    Censor::global_plaintext(&__p, v65);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v77 = &__p;
    }

    else
    {
      v77 = __p.__r_.__value_.__r.__words[0];
    }

    Diagnostics::log(5, "Phonemes : %s", v76, v77);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  buf.__r_.__value_.__r.__words[0] = &v85;
  std::vector<PhonemeRepresentation::Word>::__destroy_vector::operator()[abi:ne200100](&buf);
  v78 = *MEMORY[0x1E69E9840];
}

void sub_1C2FC6420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  *(v31 - 128) = &a23;
  std::vector<PhonemeRepresentation::Word>::__destroy_vector::operator()[abi:ne200100]((v31 - 128));
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ParallelComponent::PropagateFnc(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v27 = a4;
  v5 = *(result + 184);
  v28 = *(result + 192);
  if (v5 != v28)
  {
    v8 = result;
    v9 = 0;
    v10 = 0;
    v11 = *(a3 + 32);
    do
    {
      v12 = kaldi::nnet1::Nnet::InputDim(v5, a2, a3, a4, a5);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v34, a2, 0, *(a2 + 20), v9, v12);
      v17 = kaldi::nnet1::Nnet::OutputDim(v5, v13, v14, v15, v16);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v31, a3, 0, *(a3 + 20), v10, v17);
      *(&v36 + 1) = v11;
      *(&v33 + 1) = v11;
      memset(&v29[1], 0, 24);
      v30 = 0;
      v29[0] = &unk_1F42BFED8;
      v29[4] = v11;
      if (v8[178] == 1)
      {
        kaldi::nnet1::Nnet::Feedforward(v5, &v34, v29, 0xFFFFFFFF, 0);
      }

      else
      {
        kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(v5, &v34, v29, v27, v18);
      }

      if (v8[176] == 1)
      {
        v9 = (kaldi::nnet1::Nnet::InputDim(v5, v19, v20, v21, v22) + v9);
      }

      if (v8[177] == 1)
      {
        kaldi::CuMatrixBase<float>::AddMat(&v31, v29, 111, v21, v22, 1.0, 1.0);
      }

      else
      {
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v31, v29, 111, v21, v22);
        v10 = (kaldi::nnet1::Nnet::OutputDim(v5, v23, v24, v25, v26) + v10);
      }

      kaldi::CuMatrix<float>::~CuMatrix(v29);
      v31 = &unk_1F42BFE90;
      v32 = 0u;
      v33 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v31);
      v34 = &unk_1F42BFE90;
      v35 = 0u;
      v36 = 0u;
      result = kaldi::CuMatrixBase<float>::~CuMatrixBase(&v34);
      v5 = (v5 + 376);
    }

    while (v5 != v28);
  }

  return result;
}

void sub_1C2FC6738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  a22 = &unk_1F42BFE90;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a22);
  _Unwind_Resume(a1);
}

uint64_t kaldi::MatrixBase<float>::AddMat(uint64_t result, uint64_t *a2, int a3, float a4, float a5, uint64_t a6, const char *a7)
{
  v8 = result;
  if (a2 == result)
  {
    if (a3 == 111)
    {
      v20 = a4 + a5;

      return kaldi::MatrixBase<float>::Scale(result, v20);
    }

    else
    {
      v25 = *(result + 12);
      if (v25 != *(result + 8))
      {
        kaldi::KaldiAssertFailure_("AddMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x1C0, "num_rows_ == num_cols_ && AddMat: adding to self (transposed): not symmetric.", a7);
      }

      v26 = *result;
      if (a4 == 1.0 && a5 == 1.0)
      {
        if (v25 >= 1)
        {
          v37 = 0;
          v38 = *(result + 16);
          v39 = 4 * v38;
          v40 = *result;
          v41 = *result;
          do
          {
            if (v37)
            {
              v42 = 0;
              v43 = v37 * v38;
              v44 = v41;
              do
              {
                v45 = v40[v42] + *v44;
                *v44 = v45;
                v40[v42++] = v45;
                v44 = (v44 + v39);
              }

              while (v37 != v42);
            }

            else
            {
              v43 = 0;
            }

            v26[v43 + v37] = v26[v43 + v37] + v26[v43 + v37];
            ++v37;
            ++v41;
            v40 = (v40 + v39);
          }

          while (v37 != v25);
        }
      }

      else if (v25 >= 1)
      {
        v28 = 0;
        v29 = *(result + 16);
        v30 = 4 * v29;
        v31 = *result;
        v32 = *result;
        do
        {
          if (v28)
          {
            v33 = 0;
            v34 = v28 * v29;
            v35 = v32;
            do
            {
              v36 = v31[v33];
              v31[v33] = (v36 * a5) + (a4 * *v35);
              *v35 = (*v35 * a5) + (a4 * v36);
              ++v33;
              v35 = (v35 + v30);
            }

            while (v28 != v33);
          }

          else
          {
            v34 = 0;
          }

          v26[v34 + v28] = (a4 + a5) * v26[v34 + v28];
          ++v28;
          ++v32;
          v31 = (v31 + v30);
        }

        while (v28 != v25);
      }
    }
  }

  else
  {
    if (a5 != 1.0)
    {
      result = kaldi::MatrixBase<float>::Scale(result, a5);
    }

    v10 = *(a2 + 4);
    v11 = *a2;
    v12 = *v8;
    v13 = *(v8 + 12);
    v14 = *(v8 + 16);
    if (a3 == 111)
    {
      v15 = *(a2 + 3);
      if (v15 != v13 || *(a2 + 2) != *(v8 + 8))
      {
        kaldi::KaldiAssertFailure_("AddMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x1DC, "A.num_rows_ == num_rows_ && A.num_cols_ == num_cols_", a7);
      }

      if (v15 >= 1)
      {
        v16 = 0;
        v17 = 4 * v14;
        v18 = 4 * v10;
        do
        {
          v19 = *(v8 + 8);
          result = cblas_saxpy_NEWLAPACK_ILP64();
          ++v16;
          v12 += v17;
          v11 += v18;
        }

        while (v16 < *(v8 + 12));
      }
    }

    else
    {
      v21 = *(a2 + 2);
      if (v21 != v13 || *(a2 + 3) != *(v8 + 8))
      {
        kaldi::KaldiAssertFailure_("AddMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x1E2, "A.num_cols_ == num_rows_ && A.num_rows_ == num_cols_", a7);
      }

      if (v21 >= 1)
      {
        v22 = 0;
        v23 = 4 * v14;
        do
        {
          v24 = *(v8 + 8);
          result = cblas_saxpy_NEWLAPACK_ILP64();
          ++v22;
          v11 += 4;
          v12 += v23;
        }

        while (v22 < *(v8 + 12));
      }
    }
  }

  return result;
}

void kaldi::Matrix<float>::Resize(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  v5 = a5;
  v6 = a3;
  v7 = a2;
  v9 = *(a1 + 16);
  if (v9 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 20) / v9;
  }

  if (v9 == a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a5;
  }

  v12 = *a1;
  if (!a4)
  {
    v16 = 1;
    goto LABEL_35;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {
      if (!v12)
      {
        kaldi::Matrix<float>::Init(a1, a2, a3, a5, a5);
        goto LABEL_57;
      }

      if (*(a1 + 12) == a2)
      {
        v13 = *(a1 + 8) == a3 ? v11 : 1;
        if ((v13 & 1) == 0)
        {
          return;
        }
      }

      if (v9 >= a3 && v10 >= a2)
      {
        v15 = v11;
      }

      else
      {
        v15 = 1;
      }

      if ((v15 & 1) == 0)
      {
        *(a1 + 8) = a3;
        *(a1 + 12) = a2;
        goto LABEL_57;
      }

      LOBYTE(v16) = 1;
LABEL_43:
      if ((*(a1 + 32) & 1) == 0)
      {
        free(v12);
      }

      *(a1 + 32) = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      kaldi::Matrix<float>::Init(a1, v7, v6, v5, a5);
      if ((v16 & 1) == 0)
      {
        return;
      }

LABEL_57:

      kaldi::MatrixBase<float>::SetZero(a1);
      return;
    }

    v16 = 0;
    if (!v12)
    {
LABEL_48:
      kaldi::Matrix<float>::Init(a1, a2, a3, a5, a5);
      if (!v16)
      {
        return;
      }

      goto LABEL_57;
    }

LABEL_36:
    if (v9 >= a3 && v10 >= a2)
    {
      v21 = v11;
    }

    else
    {
      v21 = 1;
    }

    if ((v21 & 1) == 0)
    {
      *(a1 + 8) = a3;
      *(a1 + 12) = a2;
      if (!v16)
      {
        return;
      }

      goto LABEL_57;
    }

    goto LABEL_43;
  }

  v16 = 1;
  if (!a2 || !v12)
  {
LABEL_35:
    if (!v12)
    {
      goto LABEL_48;
    }

    goto LABEL_36;
  }

  if (v9 < a3 || v10 < a2)
  {
    v11 = 1;
  }

  v18 = *(a1 + 12);
  if (v11)
  {
    v19 = a2 <= v18 && *(a1 + 8) >= a3;
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    kaldi::Matrix<float>::Resize(v41, a2, a3, v19, a5);
    if (*(a1 + 12) >= v7)
    {
      v24 = v7;
    }

    else
    {
      v24 = *(a1 + 12);
    }

    if (*(a1 + 8) >= v6)
    {
      v25 = v6;
    }

    else
    {
      v25 = *(a1 + 8);
    }

    v40 = 0;
    if (!HIDWORD(v41[1]) || !LODWORD(v41[1]) || HIDWORD(v41[1]) < v24 || LODWORD(v41[1]) < v25)
    {
      kaldi::KaldiAssertFailure_("SubMatrix", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x71A, "static_cast<UnsignedMatrixIndexT>(ro) < static_cast<UnsignedMatrixIndexT>(M.num_rows_) && static_cast<UnsignedMatrixIndexT>(co) < static_cast<UnsignedMatrixIndexT>(M.num_cols_) && static_cast<UnsignedMatrixIndexT>(r) <= static_cast<UnsignedMatrixIndexT>(M.num_rows_ - ro) && static_cast<UnsignedMatrixIndexT>(c) <= static_cast<UnsignedMatrixIndexT>(M.num_cols_ - co)", v23);
    }

    v37 = v25;
    v38 = v24;
    v36 = v41[0];
    v39 = v41[2];
    kaldi::SubMatrix<float>::SubMatrix(v35, a1, 0, v24, 0, v25);
    kaldi::MatrixBase<float>::CopyFromMat<float>(&v36, v35, 111, v26, v27);
    v28 = v41[0];
    v41[0] = *a1;
    v29 = v41[0];
    *a1 = v28;
    v30 = *&v41[1];
    *&v41[1] = *(a1 + 8);
    *(a1 + 8) = v30;
    v31 = v42;
    v32 = *(a1 + 32);
    v42 = v32;
    *(a1 + 32) = v31;
    if (v29 && (v32 & 1) == 0)
    {
      free(v29);
    }
  }

  else
  {
    v22 = *(a1 + 8);
    *(a1 + 8) = v9;
    *(a1 + 12) = v10;
    if (a3 > v22)
    {
      kaldi::SubMatrix<float>::SubMatrix(v41, a1, 0, a2, v22, a3 - v22);
      if (LODWORD(v41[1]) == LODWORD(v41[2]))
      {
        bzero(v41[0], 4 * SLODWORD(v41[1]) * SHIDWORD(v41[1]));
      }

      else if (SHIDWORD(v41[1]) >= 1)
      {
        v33 = 0;
        do
        {
          bzero(v41[0] + 4 * LODWORD(v41[2]) * v33++, 4 * SLODWORD(v41[1]));
        }

        while (v33 < SHIDWORD(v41[1]));
      }
    }

    if (v7 > v18)
    {
      kaldi::SubMatrix<float>::SubMatrix(v41, a1, v18, v7 - v18, 0, v6);
      if (LODWORD(v41[1]) == LODWORD(v41[2]))
      {
        bzero(v41[0], 4 * SLODWORD(v41[1]) * SHIDWORD(v41[1]));
      }

      else if (SHIDWORD(v41[1]) >= 1)
      {
        v34 = 0;
        do
        {
          bzero(v41[0] + 4 * LODWORD(v41[2]) * v34++, 4 * SLODWORD(v41[1]));
        }

        while (v34 < SHIDWORD(v41[1]));
      }
    }

    *(a1 + 8) = v6;
    *(a1 + 12) = v7;
  }
}