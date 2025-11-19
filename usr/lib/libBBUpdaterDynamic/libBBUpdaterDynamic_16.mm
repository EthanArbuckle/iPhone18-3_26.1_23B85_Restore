void sub_1E53118BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::pair<std::string const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x40uLL);
  v9 = v8;
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  *(v8 + 1) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v8 + 16), *a3, *(a3 + 8));
  }

  else
  {
    *(v8 + 1) = *a3;
    *(v8 + 4) = *(a3 + 16);
  }

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v9 + 40), *(a3 + 24), *(a3 + 32));
  }

  else
  {
    *(v9 + 40) = *(a3 + 24);
    *(v9 + 7) = *(a3 + 40);
  }

  *(a4 + 16) = 1;
}

void sub_1E5311980(_Unwind_Exception *a1)
{
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v1);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::optional<std::shared_ptr<BasebandBootLogger>>::~optional(uint64_t result)
{
  if (*(result + 16) == 1)
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
  }

  return result;
}

void ResetReasonEncoder::ParsedReason::~ParsedReason(ResetReasonEncoder::ParsedReason *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  if (*(this + 32) == 1 && *(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t __cxx_global_var_init_26()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(void **this)
{
  if (*(this + 64) != 1)
  {
LABEL_5:
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_8:
    operator delete(*this);
    return;
  }

  v2 = this[7];
  if (v2 != (this + 4))
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    goto LABEL_5;
  }

  (*(*v2 + 32))(v2);
  if (*(this + 23) < 0)
  {
    goto LABEL_8;
  }
}

void ResetReasonEncoder::Mapping::~Mapping(ResetReasonEncoder::Mapping *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = *(this + 4);
    if (v3 != v2)
    {
      v5 = v3 - 5;
      do
      {
        while (1)
        {
          if (*(v3 - 8) == 1)
          {
            v7 = *(v3 - 2);
            if (v3 - 5 == v7)
            {
              (*(*v7 + 4))(v7);
            }

            else if (v7)
            {
              (*(*v7 + 5))(v7);
            }
          }

          v6 = v3 - 9;
          if (*(v3 - 49) < 0)
          {
            break;
          }

          v5 -= 9;
          v3 -= 9;
          if (v6 == v2)
          {
            goto LABEL_12;
          }
        }

        operator delete(*v6);
        v5 -= 9;
        v3 -= 9;
      }

      while (v6 != v2);
LABEL_12:
      v4 = *(this + 4);
    }

    *(this + 5) = v2;
    operator delete(v4);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

std::regex_token_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(std::regex_token_iterator<std::__wrap_iter<const char *>, char> *this)
{
  begin = this->__position_.__match_.__matches_.__begin_;
  end = this->__position_.__match_.__matches_.__end_;
  v4 = end - begin;
  if (end == begin)
  {
    v5 = 0;
    p_suffix = &this->__suffix_;
    if (this->__result_ == &this->__suffix_)
    {
LABEL_20:
      p_unmatched = 0;
      goto LABEL_21;
    }
  }

  else
  {
    if (0xAAAAAAAAAAAAAAABLL * (v4 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v5 = operator new(v4);
    memcpy(v5, begin, 24 * ((v4 - 24) / 0x18uLL) + 24);
    p_suffix = &this->__suffix_;
    if (this->__result_ == &this->__suffix_)
    {
      goto LABEL_20;
    }
  }

  v7 = this->__subs_.__begin_;
  v8 = this->__n_ + 1;
  if (v8 < this->__subs_.__end_ - v7)
  {
    this->__n_ = v8;
    v9 = v7[v8];
    if (v9 != -1)
    {
      if (0xAAAAAAAAAAAAAAABLL * (v4 >> 3) <= v9)
      {
        p_unmatched = &this->__position_.__match_.__unmatched_;
      }

      else
      {
        p_unmatched = &begin[v9];
      }

      goto LABEL_21;
    }

LABEL_16:
    p_unmatched = &this->__position_.__match_.__prefix_;
    goto LABEL_21;
  }

  i = this->__position_.__match_.__suffix_.first.__i_;
  v12 = this->__position_.__match_.__suffix_.second.__i_;
  matched = this->__position_.__match_.__suffix_.matched;
  this->__n_ = 0;
  std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&this->__position_);
  v14 = this->__position_.__match_.__matches_.__begin_;
  v15 = this->__position_.__match_.__matches_.__end_;
  v16 = v15 - v14;
  if (v15 == v14)
  {
    v18 = this->__subs_.__begin_;
    v19 = this->__subs_.__end_;
    if (v18 != v19)
    {
      while (*v18 != -1)
      {
        if (++v18 == v19)
        {
          goto LABEL_20;
        }
      }
    }

    p_unmatched = 0;
    if (v18 != v19 && matched && v12 != i)
    {
      this->__suffix_.matched = 1;
      this->__suffix_.first.__i_ = i;
      this->__suffix_.second.__i_ = v12;
      p_unmatched = p_suffix;
    }
  }

  else
  {
    v17 = this->__subs_.__begin_[this->__n_];
    if (v17 == -1)
    {
      goto LABEL_16;
    }

    p_unmatched = &v14[v17];
    if (0xAAAAAAAAAAAAAAABLL * (v16 >> 3) <= v17)
    {
      p_unmatched = &this->__position_.__match_.__unmatched_;
    }
  }

LABEL_21:
  this->__result_ = p_unmatched;
  if (v5)
  {
    operator delete(v5);
  }

  return this;
}

void sub_1E5311EB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(const std::regex_token_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_token_iterator<std::__wrap_iter<const char *>, char> *__x)
{
  v2 = this->__result_;
  v3 = __x->__result_;
  if (!(v2 | v3))
  {
    return 1;
  }

  p_suffix = &this->__suffix_;
  if (v2 == &this->__suffix_ && v3 == &__x->__suffix_)
  {
    v12 = this;
    v13 = __x;
    if (!std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](&this->__suffix_, &__x->__suffix_))
    {
      return 1;
    }

    this = v12;
    v2 = v12->__result_;
    __x = v13;
    if (!v2)
    {
      return 0;
    }
  }

  else if (!v2)
  {
    return 0;
  }

  v7 = __x->__result_;
  if (v7)
  {
    if (v2 == p_suffix || v7 == &__x->__suffix_)
    {
      return 0;
    }

    begin = this->__position_.__match_.__matches_.__begin_;
    end = this->__position_.__match_.__matches_.__end_;
    v10 = __x->__position_.__match_.__matches_.__begin_;
    v11 = __x->__position_.__match_.__matches_.__end_;
    if (end == begin || v11 == v10)
    {
      if (end != begin || v11 != v10)
      {
        return 0;
      }
    }

    else
    {
      if (this->__position_.__begin_.__i_ != __x->__position_.__begin_.__i_)
      {
        return 0;
      }

      if (this->__position_.__end_.__i_ != __x->__position_.__end_.__i_)
      {
        return 0;
      }

      if (this->__position_.__pregex_ != __x->__position_.__pregex_)
      {
        return 0;
      }

      if (this->__position_.__flags_ != __x->__position_.__flags_)
      {
        return 0;
      }

      v19 = this;
      v20 = __x;
      v21 = std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](this->__position_.__match_.__matches_.__begin_, __x->__position_.__match_.__matches_.__begin_);
      __x = v20;
      v22 = v21;
      this = v19;
      if (v22)
      {
        return 0;
      }
    }

    if (this->__n_ == __x->__n_)
    {
      p_subs = &this->__subs_;
      v14 = this->__subs_.__begin_;
      v16 = p_subs->__end_ - v14;
      v18 = &__x->__subs_;
      v17 = __x->__subs_.__begin_;
      if (v16 == v18->__end_ - v17)
      {
        return memcmp(v14, v17, v16) == 0;
      }
    }
  }

  return 0;
}

void *std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(void *a1)
{
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
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

void ResetReasonEncoder::encode(ResetReasonEncoder *this@<X0>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 48) = v3;
  *(a2 + 33) = v3;
  *(a2 + 17) = v3;
  *(a2 + 1) = v3;
  *a2 = 0;
  *(a2 + 64) = 0;
  memset(v29 + 2, 0, 62);
  v4 = *(this + 5);
  v5 = *(this + 6);
  v6 = v5 - v4;
  v7 = (v5 - v4) >> 2;
  LOBYTE(v29[0]) = *this;
  BYTE1(v29[0]) = v7;
  if ((v5 - v4) >= 0x3F)
  {
    v8 = _MergedGlobals_5;
    if (os_log_type_enabled(_MergedGlobals_5, OS_LOG_TYPE_ERROR))
    {
      v25 = 134218240;
      v26 = v6;
      v27 = 1024;
      v28 = 62;
      _os_log_error_impl(&dword_1E5234000, v8, OS_LOG_TYPE_ERROR, "Failed to encode parsed reason because the size of the numeric arguments (%zu bytes) exceeds the maximum size (%d bytes) of the reset reason", &v25, 0x12u);
    }

    goto LABEL_21;
  }

  if (v5 != v4)
  {
    if (v7 > 0x13 && (v7 ? (v9 = (v7 - 1) >> 32 == 0) : (v9 = 0), v9 && v29 - v4 + 2 >= 0x20))
    {
      v10 = v7 & 8;
      v11 = v7 & 8;
      v21 = (v4 + 16);
      v22 = (&v29[1] + 2);
      v23 = v10;
      do
      {
        v24 = *v21;
        *(v22 - 1) = *(v21 - 1);
        *v22 = v24;
        v21 += 2;
        v22 += 2;
        v23 -= 8;
      }

      while (v23);
      if (v7 == v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v12 = v11 + 1;
    do
    {
      *(v29 + 4 * v10 + 2) = *(v4 + 4 * v10);
      v10 = v12++;
    }

    while (v7 > v10);
  }

LABEL_15:
  if (*(this + 32))
  {
    v15 = *(this + 1);
    v13 = this + 8;
    v14 = v15;
    if (v13[23] >= 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    v17 = a2;
    strlcpy(v29 + v6 + 2, v16, 62 - v6);
    a2 = v17;
  }

  v18 = v29[1];
  *a2 = v29[0];
  *(a2 + 16) = v18;
  v19 = v29[3];
  *(a2 + 32) = v29[2];
  *(a2 + 48) = v19;
  *(a2 + 64) = 1;
LABEL_21:
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t std::__optional_destruct_base<std::function<std::string ()(std::string,std::string)>,false>::~__optional_destruct_base[abi:ne200100](uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

void ****std::__exception_guard_exceptions<std::vector<ResetReasonEncoder::SubmatchInfo>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
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
        v6 = v4 - 5;
        do
        {
          while (1)
          {
            if (*(v4 - 8) == 1)
            {
              v8 = *(v4 - 2);
              if (v4 - 5 == v8)
              {
                (*(*v8 + 4))(v8);
              }

              else if (v8)
              {
                (*(*v8 + 5))(v8);
              }
            }

            v7 = v4 - 9;
            if (*(v4 - 49) < 0)
            {
              break;
            }

            v6 -= 9;
            v4 -= 9;
            if (v7 == v3)
            {
              goto LABEL_13;
            }
          }

          operator delete(*v7);
          v6 -= 9;
          v4 -= 9;
        }

        while (v7 != v3);
LABEL_13:
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ResetReasonEncoder::SubmatchInfo>,ResetReasonEncoder::SubmatchInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = v4 - 5;
      do
      {
        while (1)
        {
          if (*(v4 - 8) == 1)
          {
            v8 = *(v4 - 2);
            if (v4 - 5 == v8)
            {
              (*(*v8 + 4))(v8);
            }

            else if (v8)
            {
              (*(*v8 + 5))(v8);
            }
          }

          v7 = v4 - 9;
          if (*(v4 - 49) < 0)
          {
            break;
          }

          v6 -= 9;
          v4 -= 9;
          if (v7 == v5)
          {
            return a1;
          }
        }

        operator delete(*v7);
        v6 -= 9;
        v4 -= 9;
      }

      while (v7 != v5);
    }
  }

  return a1;
}

std::string *std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(std::string *this, __int128 *a2)
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

  v5 = *(a2 + 6);
  this[1].__r_.__value_.__s.__data_[8] = 0;
  LODWORD(this[1].__r_.__value_.__l.__data_) = v5;
  this[2].__r_.__value_.__s.__data_[16] = 0;
  if (*(a2 + 64) == 1)
  {
    v6 = *(a2 + 7);
    if (v6)
    {
      if (v6 == a2 + 2)
      {
        this[2].__r_.__value_.__l.__size_ = &this[1].__r_.__value_.__l.__size_;
        (*(**(a2 + 7) + 24))(*(a2 + 7), &this[1].__r_.__value_.__l.__size_);
        goto LABEL_10;
      }

      v6 = (*(*v6 + 16))(v6);
    }

    this[2].__r_.__value_.__l.__size_ = v6;
LABEL_10:
    this[2].__r_.__value_.__s.__data_[16] = 1;
  }

  return this;
}

void sub_1E5312654(_Unwind_Exception *a1)
{
  std::__optional_destruct_base<std::function<std::string ()(std::string,std::string)>,false>::~__optional_destruct_base[abi:ne200100](v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void *std::__function::__func<$_0,std::allocator<$_0>,std::string ()(std::string,std::string)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5F03ED0;
  return result;
}

void std::__function::__func<$_0,std::allocator<$_0>,std::string ()(std::string,std::string)>::operator()(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *v38 = *a1;
  v39 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *v36 = *a2;
  v37 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v59 = 0uLL;
  pregex = 0;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v57 = v4;
  v58 = v4;
  *&v55[0].__locale_ = v4;
  v56 = v4;
  v5 = std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v55, v36, 0);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50 = 0xAAAAAAAAAAAAAA00;
  v47[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
  v53 = v6;
  v48 = 0;
  v49 = 0;
  v52 = 0;
  v51 = 0;
  LOBYTE(v53) = 0;
  BYTE8(v53) = 0;
  v54 = 0;
  memset(v47, 0, 41);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  __p.__position_.__match_.__unmatched_.second.__i_ = 0xAAAAAAAAAAAAAAAALL;
  __p.__position_.__match_.__matches_.__end_ = 0xAAAAAAAAAAAAAAAALL;
  *&__p.__position_.__match_.__prefix_.second.__i_ = v6;
  memset(&__p.__position_.__match_.__matches_.__end_cap_, 0, 17);
  memset(&__p.__position_.__match_.__unmatched_.matched, 0, 17);
  __p.__position_.__match_.__prefix_.matched = 0;
  __p.__position_.__match_.__suffix_.first.__i_ = 0;
  memset(&__p, 0, 32);
  v7 = HIBYTE(v39);
  if (v39 >= 0)
  {
    v8 = v38;
  }

  else
  {
    v8 = v38[0];
  }

  if (v39 < 0)
  {
    v7 = v38[1];
  }

  *(&__p.__position_.__flags_ + 1) = 0uLL;
  v9 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v5, v8, &v7[v8], &__p, 0);
  v10 = HIBYTE(v39);
  if (v39 >= 0)
  {
    v11 = v38;
  }

  else
  {
    v11 = v38[0];
  }

  if (v39 < 0)
  {
    v10 = v38[1];
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v47, v11, &v10[v11], &__p, 0);
  if (__p.__position_.__begin_.__i_)
  {
    __p.__position_.__end_.__i_ = __p.__position_.__begin_.__i_;
    operator delete(__p.__position_.__begin_.__i_);
  }

  if (v9)
  {
    p_end_cap = &v47[1].__end_cap_;
    if (v47[0].__end_ != v47[0].__begin_)
    {
      p_end_cap = &v47[0].__begin_->matched;
    }

    if (*p_end_cap != 1)
    {
      memset(&__p, 0, 24);
      if (SHIBYTE(pregex) < 0)
      {
LABEL_29:
        operator delete(v59);
      }

LABEL_30:
      v59 = *&__p.__position_.__begin_.__i_;
      pregex = __p.__position_.__pregex_;
      goto LABEL_31;
    }

    if (v47[0].__end_ == v47[0].__begin_)
    {
      begin = &v47[1];
    }

    else
    {
      begin = v47[0].__begin_;
    }

    i = begin->first.__i_;
    p_i = &v47[0].__begin_->second.__i_;
    if (v47[0].__end_ == v47[0].__begin_)
    {
      p_i = &v47[1].__end_;
    }

    v16 = *p_i;
    v17 = *p_i - i;
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v17 > 0x16)
    {
      if ((v17 | 7) == 0x17)
      {
        v34 = 25;
      }

      else
      {
        v34 = (v17 | 7) + 1;
      }

      p_p = operator new(v34);
      __p.__position_.__pregex_ = (v34 | 0x8000000000000000);
      __p.__position_.__begin_.__i_ = p_p;
      __p.__position_.__end_.__i_ = v17;
      if (v16 == i)
      {
LABEL_26:
        p_p[v17] = 0;
        if (SHIBYTE(pregex) < 0)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

    else
    {
      HIBYTE(__p.__position_.__pregex_) = *p_i - i;
      p_p = &__p;
      if (v16 == i)
      {
        goto LABEL_26;
      }
    }

    memmove(p_p, i, v17);
    goto LABEL_26;
  }

LABEL_31:
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&__re.__loop_count_ = v19;
  *&__re.__start_.__cntrl_ = v19;
  *&__re.__traits_.__loc_.__locale_ = v19;
  *&__re.__traits_.__col_ = v19;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&__re, "\\s+", 0);
  v22.first.__i_ = 0xAAAAAAAAAAAAAAAALL;
  v22.second.__i_ = 0xAAAAAAAAAAAAAAAALL;
  *&__p.__position_.__match_.__prefix_.matched = 0xAAAAAAAAAAAAAAAALL;
  *&__p.__position_.__match_.__unmatched_.matched = 0xAAAAAAAAAAAAAAAALL;
  *&__p.__position_.__match_.__suffix_.matched = v22;
  *(&__p.__position_.__flags_ + 1) = -1431655766;
  *&__p.__suffix_.matched = 0xAAAAAAAAAAAAAA00;
  memset(&__p.__position_.__match_.__prefix_, 0, 17);
  memset(&__p.__position_.__match_.__suffix_, 0, 17);
  __p.__position_.__match_.__ready_ = 0;
  memset(&__p.__position_.__match_, 0, 41);
  memset(&__p, 0, 28);
  memset(&__p.__position_.__match_.__position_start_, 0, 32);
  memset(&__p.__n_, 0, 32);
  *&__x.__n_ = v22;
  *&__x.__subs_.__end_ = v22;
  *&__x.__result_ = v22;
  *&__x.__suffix_.second.__i_ = v22;
  *&__x.__position_.__match_.__suffix_.second.__i_ = v22;
  *&__x.__position_.__match_.__ready_ = v22;
  __x.__position_.__match_.__prefix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v22;
  *&__x.__position_.__match_.__prefix_.matched = v22;
  *&__x.__position_.__match_.__matches_.__end_cap_.__value_ = v22;
  *&__x.__position_.__match_.__unmatched_.second.__i_ = v22;
  *&__x.__position_.__pregex_ = v22;
  *&__x.__position_.__match_.__matches_.__begin_ = v22;
  v23 = HIBYTE(pregex);
  if (SHIBYTE(pregex) >= 0)
  {
    v24.__i_ = &v59;
  }

  else
  {
    v24.__i_ = v59;
  }

  if (SHIBYTE(pregex) < 0)
  {
    v23 = *(&v59 + 1);
  }

  *&__x.__position_.__begin_.__i_ = v22;
  v25.__i_ = &v24.__i_[v23];
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(&__x, v24, v25, &__re, v20, v21);
  v26.first.__i_ = 0xAAAAAAAAAAAAAAAALL;
  v26.second.__i_ = 0xAAAAAAAAAAAAAAAALL;
  *&v43.__n_ = v26;
  *&v43.__subs_.__end_ = v26;
  *&v43.__result_ = v26;
  *&v43.__suffix_.second.__i_ = v26;
  *&v43.__position_.__match_.__suffix_.second.__i_ = v26;
  *&v43.__position_.__match_.__ready_ = v26;
  v43.__position_.__match_.__prefix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v26;
  *&v43.__position_.__match_.__prefix_.matched = v26;
  *&v43.__position_.__match_.__matches_.__end_cap_.__value_ = v26;
  *&v43.__position_.__match_.__unmatched_.second.__i_ = v26;
  *&v43.__position_.__pregex_ = v26;
  *&v43.__position_.__match_.__matches_.__begin_ = v26;
  *&v43.__position_.__begin_.__i_ = v26;
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(&v43, &__x);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&__x);
  if (v43.__subs_.__begin_)
  {
    v43.__subs_.__end_ = v43.__subs_.__begin_;
    operator delete(v43.__subs_.__begin_);
  }

  if (v43.__position_.__match_.__matches_.__begin_)
  {
    v43.__position_.__match_.__matches_.__end_ = v43.__position_.__match_.__matches_.__begin_;
    operator delete(v43.__position_.__match_.__matches_.__begin_);
  }

  v27.first.__i_ = 0xAAAAAAAAAAAAAAAALL;
  v27.second.__i_ = 0xAAAAAAAAAAAAAAAALL;
  *&v42.__n_ = v27;
  *&v42.__subs_.__end_ = v27;
  *&v42.__result_ = v27;
  *&v42.__suffix_.second.__i_ = v27;
  *&v42.__position_.__match_.__suffix_.second.__i_ = v27;
  *&v42.__position_.__match_.__ready_ = v27;
  v42.__position_.__match_.__prefix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v27;
  *&v42.__position_.__match_.__prefix_.matched = v27;
  *&v42.__position_.__match_.__matches_.__end_cap_.__value_ = v27;
  *&v42.__position_.__match_.__unmatched_.second.__i_ = v27;
  *&v42.__position_.__pregex_ = v27;
  *&v42.__position_.__match_.__matches_.__begin_ = v27;
  *&v42.__position_.__begin_.__i_ = v27;
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(&v42, &__x);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&__x);
  if (v42.__subs_.__begin_)
  {
    v42.__subs_.__end_ = v42.__subs_.__begin_;
    operator delete(v42.__subs_.__begin_);
  }

  if (v42.__position_.__match_.__matches_.__begin_)
  {
    v42.__position_.__match_.__matches_.__end_ = v42.__position_.__match_.__matches_.__begin_;
    operator delete(v42.__position_.__match_.__matches_.__begin_);
  }

  if (!std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&__p, &__x))
  {
    if (!__x.__result_->matched)
    {
      __dst = 0uLL;
      v41 = 0;
      goto LABEL_52;
    }

    v28 = __x.__result_->first.__i_;
    v29 = __x.__result_->second.__i_;
    v30 = v29 - __x.__result_->first.__i_;
    if (v30 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v30 > 0x16)
    {
      if ((v30 | 7) == 0x17)
      {
        v35 = 25;
      }

      else
      {
        v35 = (v30 | 7) + 1;
      }

      p_dst = operator new(v35);
      *(&__dst + 1) = v30;
      v41 = v35 | 0x8000000000000000;
      *&__dst = p_dst;
      if (v29 == v28)
      {
        goto LABEL_50;
      }
    }

    else
    {
      HIBYTE(v41) = v29 - __x.__result_->first.__i_;
      p_dst = &__dst;
      if (v29 == v28)
      {
LABEL_50:
        *(p_dst + v30) = 0;
LABEL_52:
        *a3 = __dst;
        a3[2] = v41;
        goto LABEL_53;
      }
    }

    memmove(p_dst, v28, v30);
    goto LABEL_50;
  }

LABEL_53:
  if (__x.__subs_.__begin_)
  {
    __x.__subs_.__end_ = __x.__subs_.__begin_;
    operator delete(__x.__subs_.__begin_);
  }

  if (__x.__position_.__match_.__matches_.__begin_)
  {
    __x.__position_.__match_.__matches_.__end_ = __x.__position_.__match_.__matches_.__begin_;
    operator delete(__x.__position_.__match_.__matches_.__begin_);
  }

  if (__p.__subs_.__begin_)
  {
    __p.__subs_.__end_ = __p.__subs_.__begin_;
    operator delete(__p.__subs_.__begin_);
  }

  if (__p.__position_.__match_.__matches_.__begin_)
  {
    __p.__position_.__match_.__matches_.__end_ = __p.__position_.__match_.__matches_.__begin_;
    operator delete(__p.__position_.__match_.__matches_.__begin_);
  }

  cntrl = __re.__start_.__cntrl_;
  if (__re.__start_.__cntrl_ && !atomic_fetch_add(&__re.__start_.__cntrl_->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (cntrl->__on_zero_shared)(cntrl);
    std::__shared_weak_count::__release_weak(cntrl);
  }

  std::locale::~locale(&__re.__traits_.__loc_);
  if (v47[0].__begin_)
  {
    v47[0].__end_ = v47[0].__begin_;
    operator delete(v47[0].__begin_);
  }

  v33 = v58;
  if (v58 && !atomic_fetch_add((v58 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
    std::locale::~locale(v55);
    if ((SHIBYTE(pregex) & 0x80000000) == 0)
    {
LABEL_69:
      if ((SHIBYTE(v37) & 0x80000000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_74;
    }
  }

  else
  {
    std::locale::~locale(v55);
    if ((SHIBYTE(pregex) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }
  }

  operator delete(v59);
  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
LABEL_70:
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_75:
    operator delete(v38[0]);
    return;
  }

LABEL_74:
  operator delete(v36[0]);
  if (SHIBYTE(v39) < 0)
  {
    goto LABEL_75;
  }
}

void sub_1E5312CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(&a72);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(&STACK[0x2C0]);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x390]);
  v74 = STACK[0x3D0];
  if (STACK[0x3D0])
  {
    STACK[0x3D8] = v74;
    operator delete(v74);
    std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v72 - 160));
    if ((*(v72 - 73) & 0x80000000) == 0)
    {
LABEL_8:
      if (a14 < 0)
      {
LABEL_9:
        operator delete(a9);
        if ((a21 & 0x80000000) == 0)
        {
LABEL_10:
          _Unwind_Resume(a1);
        }

LABEL_5:
        operator delete(__p);
        _Unwind_Resume(a1);
      }

LABEL_4:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v72 - 160));
    if ((*(v72 - 73) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  operator delete(*(v72 - 96));
  if (a14 < 0)
  {
    goto LABEL_9;
  }

  goto LABEL_4;
}

uint64_t std::__function::__func<$_0,std::allocator<$_0>,std::string ()(std::string,std::string)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

std::regex_token_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(std::regex_token_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_token_iterator<std::__wrap_iter<const char *>, char> *a2)
{
  v4 = *&a2->__position_.__begin_.__i_;
  *(&this->__position_.__end_.__i_ + 4) = *(&a2->__position_.__end_.__i_ + 4);
  this->__position_.__match_.__matches_.__begin_ = 0;
  *&this->__position_.__begin_.__i_ = v4;
  this->__position_.__match_.__matches_.__end_ = 0;
  this->__position_.__match_.__matches_.__end_cap_.__value_ = 0;
  begin = a2->__position_.__match_.__matches_.__begin_;
  end = a2->__position_.__match_.__matches_.__end_;
  v7 = end - begin;
  if (end == begin)
  {
    v8 = 0;
    v24 = 0;
  }

  else
  {
    if (0xAAAAAAAAAAAAAAABLL * (v7 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v8 = operator new(v7);
    this->__position_.__match_.__matches_.__begin_ = v8;
    this->__position_.__match_.__matches_.__end_ = v8;
    this->__position_.__match_.__matches_.__end_cap_.__value_ = (v8 + v7);
    v9 = 24 * ((v7 - 24) / 0x18uLL) + 24;
    memcpy(v8, begin, v9);
    v24 = v8 + v9;
    this->__position_.__match_.__matches_.__end_ = (v8 + v9);
  }

  v10 = a2->__position_.__match_.__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
  *&this->__position_.__match_.__unmatched_.matched = *&a2->__position_.__match_.__unmatched_.matched;
  this->__position_.__match_.__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v10;
  v11 = *&a2->__position_.__match_.__prefix_.second.__i_;
  v12 = a2->__position_.__match_.__suffix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
  v13 = *&a2->__position_.__match_.__suffix_.matched;
  this->__position_.__match_.__position_start_.__i_ = a2->__position_.__match_.__position_start_.__i_;
  *&this->__position_.__match_.__suffix_.matched = v13;
  this->__position_.__match_.__suffix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v12;
  *&this->__position_.__match_.__prefix_.second.__i_ = v11;
  v14 = a2->__result_;
  this->__result_ = v14;
  v15 = a2->__suffix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
  *&this->__suffix_.matched = *&a2->__suffix_.matched;
  this->__suffix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v15;
  n = a2->__n_;
  this->__subs_.__begin_ = 0;
  this->__n_ = n;
  this->__subs_.__end_ = 0;
  this->__subs_.__end_cap_.__value_ = 0;
  v18 = a2->__subs_.__begin_;
  v17 = a2->__subs_.__end_;
  v19 = v17 - v18;
  if (v17 == v18)
  {
    v20 = 0;
    if (a2->__result_ != &a2->__suffix_)
    {
      goto LABEL_8;
    }

LABEL_14:
    p_suffix = &this->__suffix_;
LABEL_16:
    this->__result_ = p_suffix;
    return this;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v20 = operator new(v17 - v18);
  this->__subs_.__begin_ = v20;
  this->__subs_.__end_ = v20;
  this->__subs_.__end_cap_.__value_ = (v20 + v19);
  memcpy(v20, v18, v19);
  this->__subs_.__end_ = (v20 + v19);
  if (a2->__result_ == &a2->__suffix_)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (v14)
  {
    v21 = v20[n];
    if (v21 == -1)
    {
      p_suffix = &this->__position_.__match_.__prefix_;
    }

    else if (0xAAAAAAAAAAAAAAABLL * ((v24 - v8) >> 3) <= v21)
    {
      p_suffix = &this->__position_.__match_.__unmatched_;
    }

    else
    {
      p_suffix = &v8[v21];
    }

    goto LABEL_16;
  }

  return this;
}

void sub_1E5313090(_Unwind_Exception *exception_object)
{
  v5 = *v1;
  if (*v1)
  {
    *(v2 + 192) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v2 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<$_1,std::allocator<$_1>,std::string ()(std::string,std::string)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5F03F60;
  return result;
}

void std::__function::__func<$_1,std::allocator<$_1>,std::string ()(std::string,std::string)>::operator()(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *v73 = *a1;
  v74 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *v71 = *a2;
  v72 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&__re.__loop_count_ = v4;
  *&__re.__start_.__cntrl_ = v4;
  *&__re.__traits_.__loc_.__locale_ = v4;
  *&__re.__traits_.__col_ = v4;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(&__re, v71, 0);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v85 = v5;
  v86 = v5;
  *&v83[0].__locale_ = v5;
  v84 = v5;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v83, "\\s+", 0);
  v8.first.__i_ = 0xAAAAAAAAAAAAAAAALL;
  v8.second.__i_ = 0xAAAAAAAAAAAAAAAALL;
  *&v82.__position_.__match_.__prefix_.matched = 0xAAAAAAAAAAAAAAAALL;
  *&v82.__position_.__match_.__unmatched_.matched = 0xAAAAAAAAAAAAAAAALL;
  *&v82.__position_.__match_.__suffix_.matched = v8;
  *(&v82.__position_.__flags_ + 1) = -1431655766;
  *&v82.__suffix_.matched = 0xAAAAAAAAAAAAAA00;
  memset(&v82.__position_.__match_.__prefix_, 0, 17);
  memset(&v82.__position_.__match_.__suffix_, 0, 17);
  v82.__position_.__match_.__ready_ = 0;
  memset(&v82.__position_.__match_, 0, 41);
  memset(&v82, 0, 28);
  memset(&v82.__position_.__match_.__position_start_, 0, 32);
  memset(&v82.__n_, 0, 32);
  *&__x.__n_ = v8;
  *&__x.__subs_.__end_ = v8;
  *&__x.__result_ = v8;
  *&__x.__suffix_.second.__i_ = v8;
  *&__x.__position_.__match_.__suffix_.second.__i_ = v8;
  *&__x.__position_.__match_.__ready_ = v8;
  __x.__position_.__match_.__prefix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v8;
  *&__x.__position_.__match_.__prefix_.matched = v8;
  *&__x.__position_.__match_.__matches_.__end_cap_.__value_ = v8;
  *&__x.__position_.__match_.__unmatched_.second.__i_ = v8;
  *&__x.__position_.__pregex_ = v8;
  *&__x.__position_.__match_.__matches_.__begin_ = v8;
  v9 = HIBYTE(v74);
  if (v74 >= 0)
  {
    v10.__i_ = v73;
  }

  else
  {
    v10.__i_ = v73[0];
  }

  if (v74 < 0)
  {
    v9 = v73[1];
  }

  *&__x.__position_.__begin_.__i_ = v8;
  v11.__i_ = &v10.__i_[v9];
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(&__x, v10, v11, &__re, v6, v7);
  v12.first.__i_ = 0xAAAAAAAAAAAAAAAALL;
  v12.second.__i_ = 0xAAAAAAAAAAAAAAAALL;
  *&v80.__n_ = v12;
  *&v80.__subs_.__end_ = v12;
  *&v80.__result_ = v12;
  *&v80.__suffix_.second.__i_ = v12;
  *&v80.__position_.__match_.__suffix_.second.__i_ = v12;
  *&v80.__position_.__match_.__ready_ = v12;
  v80.__position_.__match_.__prefix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v12;
  *&v80.__position_.__match_.__prefix_.matched = v12;
  *&v80.__position_.__match_.__matches_.__end_cap_.__value_ = v12;
  *&v80.__position_.__match_.__unmatched_.second.__i_ = v12;
  *&v80.__position_.__pregex_ = v12;
  *&v80.__position_.__match_.__matches_.__begin_ = v12;
  *&v80.__position_.__begin_.__i_ = v12;
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(&v80, &__x);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&__x);
  if (v80.__subs_.__begin_)
  {
    v80.__subs_.__end_ = v80.__subs_.__begin_;
    operator delete(v80.__subs_.__begin_);
  }

  if (v80.__position_.__match_.__matches_.__begin_)
  {
    v80.__position_.__match_.__matches_.__end_ = v80.__position_.__match_.__matches_.__begin_;
    operator delete(v80.__position_.__match_.__matches_.__begin_);
  }

  if (!std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v82, &__x))
  {
    if (!__x.__result_->matched)
    {
      memset(&__dst, 0, 24);
      if (*(a3 + 23) < 0)
      {
LABEL_19:
        operator delete(*a3);
      }

LABEL_20:
      *a3 = *&__dst.__position_.__begin_.__i_;
      *(a3 + 16) = __dst.__position_.__pregex_;
      goto LABEL_21;
    }

    i = __x.__result_->first.__i_;
    v14 = __x.__result_->second.__i_;
    v15 = v14 - __x.__result_->first.__i_;
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v15 > 0x16)
    {
      if ((v15 | 7) == 0x17)
      {
        v38 = 25;
      }

      else
      {
        v38 = (v15 | 7) + 1;
      }

      p_dst = operator new(v38);
      __dst.__position_.__end_.__i_ = v15;
      __dst.__position_.__pregex_ = (v38 | 0x8000000000000000);
      __dst.__position_.__begin_.__i_ = p_dst;
      if (v14 == i)
      {
LABEL_16:
        p_dst[v15] = 0;
        if (*(a3 + 23) < 0)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      }
    }

    else
    {
      HIBYTE(__dst.__position_.__pregex_) = v14 - __x.__result_->first.__i_;
      p_dst = &__dst;
      if (v14 == i)
      {
        goto LABEL_16;
      }
    }

    memmove(p_dst, i, v15);
    goto LABEL_16;
  }

LABEL_21:
  std::string::append(a3, " ", 1uLL);
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v79.__loop_count_ = v17;
  *&v79.__start_.__cntrl_ = v17;
  *&v79.__traits_.__loc_.__locale_ = v17;
  *&v79.__traits_.__col_ = v17;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v79, "TIMEOUT for message MIPC.*?Client=.*?Msg=.*?Trx=.*? ", 0);
  v20 = HIBYTE(v74);
  if (v74 >= 0)
  {
    v21.__i_ = v73;
  }

  else
  {
    v21.__i_ = v73[0];
  }

  if (v74 < 0)
  {
    v20 = v73[1];
  }

  v22.__i_ = &v21.__i_[v20];
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(&__dst, v21, v22, &v79, v18, v19);
  *&__x.__position_.__begin_.__i_ = *&__dst.__position_.__begin_.__i_;
  *(&__x.__position_.__end_.__i_ + 4) = *(&__dst.__position_.__end_.__i_ + 4);
  begin = __dst.__position_.__match_.__matches_.__begin_;
  end = __dst.__position_.__match_.__matches_.__end_;
  v25 = __dst.__position_.__match_.__matches_.__end_ - __dst.__position_.__match_.__matches_.__begin_;
  value = __x.__position_.__match_.__matches_.__end_cap_.__value_;
  v27 = __x.__position_.__match_.__matches_.__begin_;
  if ((__x.__position_.__match_.__matches_.__end_cap_.__value_ - __x.__position_.__match_.__matches_.__begin_) >= (__dst.__position_.__match_.__matches_.__end_ - __dst.__position_.__match_.__matches_.__begin_))
  {
    v34 = __x.__position_.__match_.__matches_.__end_;
    if ((__x.__position_.__match_.__matches_.__end_ - __x.__position_.__match_.__matches_.__begin_) >= v25)
    {
      while (begin != end)
      {
        v27->first.__i_ = begin->first.__i_;
        v27->second.__i_ = begin->second.__i_;
        v27->matched = begin->matched;
        ++begin;
        ++v27;
      }

      __x.__position_.__match_.__matches_.__end_ = v27;
    }

    else
    {
      v35 = __dst.__position_.__match_.__matches_.__begin_ + __x.__position_.__match_.__matches_.__end_ - __x.__position_.__match_.__matches_.__begin_;
      if (__x.__position_.__match_.__matches_.__end_ != __x.__position_.__match_.__matches_.__begin_)
      {
        do
        {
          v27->first.__i_ = begin->first.__i_;
          v27->second.__i_ = begin->second.__i_;
          v27->matched = begin->matched;
          ++begin;
          ++v27;
        }

        while (begin != v35);
      }

      if (v35 == end)
      {
        __x.__position_.__match_.__matches_.__end_ = v34;
      }

      else
      {
        v36 = v34;
        do
        {
          v37 = *v35;
          *&v34->matched = *(v35 + 2);
          v34->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v37;
          ++v34;
          v35 += 24;
          ++v36;
        }

        while (v35 != end);
        __x.__position_.__match_.__matches_.__end_ = v36;
      }
    }
  }

  else
  {
    v28 = 0xAAAAAAAAAAAAAAABLL * (v25 >> 3);
    if (__x.__position_.__match_.__matches_.__begin_)
    {
      __x.__position_.__match_.__matches_.__end_ = __x.__position_.__match_.__matches_.__begin_;
      operator delete(__x.__position_.__match_.__matches_.__begin_);
      value = 0;
      memset(&__x.__position_.__match_, 0, 24);
    }

    if (v28 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_140;
    }

    v29 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
    v30 = 2 * v29;
    if (2 * v29 <= v28)
    {
      v30 = 0xAAAAAAAAAAAAAAABLL * (v25 >> 3);
    }

    v31 = v29 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v30;
    if (v31 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_140:
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v32 = operator new(24 * v31);
    v33 = v32;
    __x.__position_.__match_.__matches_.__begin_ = v32;
    __x.__position_.__match_.__matches_.__end_ = v32;
    __x.__position_.__match_.__matches_.__end_cap_.__value_ = &v32[v31];
    if (begin != end)
    {
      memcpy(v32, begin, 24 * ((v25 - 24) / 0x18uLL) + 24);
      v33 += (v25 - 24) / 0x18uLL + 1;
    }

    __x.__position_.__match_.__matches_.__end_ = v33;
  }

  __x.__position_.__match_.__unmatched_ = __dst.__position_.__match_.__unmatched_;
  __x.__position_.__match_.__prefix_ = __dst.__position_.__match_.__prefix_;
  __x.__position_.__match_.__suffix_ = __dst.__position_.__match_.__suffix_;
  __x.__suffix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = __dst.__suffix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
  result = __dst.__result_;
  if (__dst.__result_ == &__dst.__suffix_)
  {
    result = &__x.__suffix_;
  }

  __x.__result_ = result;
  __x.__suffix_.matched = __dst.__suffix_.matched;
  v40 = __dst.__subs_.__begin_;
  __x.__n_ = __dst.__n_;
  v41 = __dst.__subs_.__end_;
  v42 = __dst.__subs_.__end_ - __dst.__subs_.__begin_;
  v43 = __x.__subs_.__end_cap_.__value_;
  v44 = __x.__subs_.__begin_;
  *&__x.__position_.__match_.__ready_ = *&__dst.__position_.__match_.__ready_;
  if ((__x.__subs_.__end_cap_.__value_ - __x.__subs_.__begin_) < (__dst.__subs_.__end_ - __dst.__subs_.__begin_))
  {
    v45 = v42 >> 2;
    if (__x.__subs_.__begin_)
    {
      __x.__subs_.__end_ = __x.__subs_.__begin_;
      operator delete(__x.__subs_.__begin_);
      v43 = 0;
      memset(&__x.__subs_, 0, sizeof(__x.__subs_));
    }

    if (v45 >> 62)
    {
      goto LABEL_141;
    }

    v46 = v43 >> 1;
    if (v43 >> 1 <= v45)
    {
      v46 = v42 >> 2;
    }

    v47 = v43 >= 0x7FFFFFFFFFFFFFFCLL ? 0x3FFFFFFFFFFFFFFFLL : v46;
    if (v47 >> 62)
    {
LABEL_141:
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v48 = operator new(4 * v47);
    v49 = v48;
    __x.__subs_.__begin_ = v48;
    __x.__subs_.__end_ = v48;
    __x.__subs_.__end_cap_.__value_ = &v48[v47];
    if (v41 != v40)
    {
      memcpy(v48, v40, v42);
    }

    __x.__subs_.__end_ = (v49 + v42);
    v50 = __x.__result_;
    if (!__x.__result_)
    {
      goto LABEL_88;
    }

LABEL_81:
    if (v50 != &__x.__suffix_)
    {
      v55 = __x.__subs_.__begin_[__x.__n_];
      if (v55 == -1)
      {
        p_prefix = &__x.__position_.__match_.__prefix_;
      }

      else if (0xAAAAAAAAAAAAAAABLL * ((__x.__position_.__match_.__matches_.__end_ - __x.__position_.__match_.__matches_.__begin_) >> 3) <= v55)
      {
        p_prefix = &__x.__position_.__match_.__unmatched_;
      }

      else
      {
        p_prefix = &__x.__position_.__match_.__matches_.__begin_[v55];
      }

      __x.__result_ = p_prefix;
    }

    goto LABEL_88;
  }

  v51 = __x.__subs_.__end_;
  v52 = __x.__subs_.__end_ - __x.__subs_.__begin_;
  if ((__x.__subs_.__end_ - __x.__subs_.__begin_) >= v42)
  {
    if (__dst.__subs_.__end_ != __dst.__subs_.__begin_)
    {
      v54 = __x.__subs_.__begin_;
      memmove(__x.__subs_.__begin_, __dst.__subs_.__begin_, __dst.__subs_.__end_ - __dst.__subs_.__begin_);
      v44 = v54;
    }

    __x.__subs_.__end_ = (v44 + v42);
    v50 = __x.__result_;
    if (__x.__result_)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v53 = __dst.__subs_.__begin_ + v52;
    if (__x.__subs_.__end_ != __x.__subs_.__begin_)
    {
      memmove(__x.__subs_.__begin_, __dst.__subs_.__begin_, v52);
      v51 = __x.__subs_.__end_;
    }

    if (v41 != v53)
    {
      memmove(v51, v53, v41 - v53);
    }

    __x.__subs_.__end_ = (v51 + v41 - v53);
    v50 = __x.__result_;
    if (__x.__result_)
    {
      goto LABEL_81;
    }
  }

LABEL_88:
  if (__dst.__subs_.__begin_)
  {
    __dst.__subs_.__end_ = __dst.__subs_.__begin_;
    operator delete(__dst.__subs_.__begin_);
  }

  if (__dst.__position_.__match_.__matches_.__begin_)
  {
    __dst.__position_.__match_.__matches_.__end_ = __dst.__position_.__match_.__matches_.__begin_;
    operator delete(__dst.__position_.__match_.__matches_.__begin_);
  }

  v57.first.__i_ = 0xAAAAAAAAAAAAAAAALL;
  v57.second.__i_ = 0xAAAAAAAAAAAAAAAALL;
  *&__dst.__position_.__begin_.__i_ = v57;
  *&__dst.__position_.__pregex_ = v57;
  *&__dst.__position_.__match_.__matches_.__begin_ = v57;
  *&__dst.__position_.__match_.__matches_.__end_cap_.__value_ = v57;
  *&__dst.__position_.__match_.__unmatched_.second.__i_ = v57;
  __dst.__position_.__match_.__prefix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v57;
  *&__dst.__position_.__match_.__prefix_.matched = v57;
  *&__dst.__position_.__match_.__suffix_.second.__i_ = v57;
  *&__dst.__position_.__match_.__ready_ = v57;
  *&__dst.__result_ = v57;
  *&__dst.__suffix_.second.__i_ = v57;
  *&__dst.__n_ = v57;
  *&__dst.__subs_.__end_ = v57;
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(&__dst, &__x);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&__x);
  if (__dst.__subs_.__begin_)
  {
    __dst.__subs_.__end_ = __dst.__subs_.__begin_;
    operator delete(__dst.__subs_.__begin_);
  }

  if (__dst.__position_.__match_.__matches_.__begin_)
  {
    __dst.__position_.__match_.__matches_.__end_ = __dst.__position_.__match_.__matches_.__begin_;
    operator delete(__dst.__position_.__match_.__matches_.__begin_);
  }

  if (!std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v82, &__x))
  {
    if (!__x.__result_->matched)
    {
      v63 = 0;
      v64 = 0;
      v62 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
LABEL_104:
      if ((v62 & 0x80u) == 0)
      {
        v65 = &v75;
      }

      else
      {
        v65 = v64;
      }

      if ((v62 & 0x80u) == 0)
      {
        v66 = v62;
      }

      else
      {
        v66 = v63;
      }

      std::string::append(a3, v65, v66);
      if (SHIBYTE(v77) < 0)
      {
        operator delete(v75);
      }

      goto LABEL_112;
    }

    v58 = __x.__result_->first.__i_;
    v59 = __x.__result_->second.__i_;
    v60 = v59 - __x.__result_->first.__i_;
    if (v60 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v60 > 0x16)
    {
      if ((v60 | 7) == 0x17)
      {
        v70 = 25;
      }

      else
      {
        v70 = (v60 | 7) + 1;
      }

      v61 = operator new(v70);
      v76 = v60;
      v77 = v70 | 0x8000000000000000;
      v75 = v61;
      if (v59 == v58)
      {
        goto LABEL_102;
      }
    }

    else
    {
      HIBYTE(v77) = v59 - __x.__result_->first.__i_;
      v61 = &v75;
      if (v59 == v58)
      {
LABEL_102:
        *(v61 + v60) = 0;
        v62 = HIBYTE(v77);
        v64 = v75;
        v63 = v76;
        goto LABEL_104;
      }
    }

    memmove(v61, v58, v60);
    goto LABEL_102;
  }

LABEL_112:
  cntrl = v79.__start_.__cntrl_;
  if (v79.__start_.__cntrl_ && !atomic_fetch_add(&v79.__start_.__cntrl_->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (cntrl->__on_zero_shared)(cntrl);
    std::__shared_weak_count::__release_weak(cntrl);
  }

  std::locale::~locale(&v79.__traits_.__loc_);
  if (__x.__subs_.__begin_)
  {
    __x.__subs_.__end_ = __x.__subs_.__begin_;
    operator delete(__x.__subs_.__begin_);
  }

  if (__x.__position_.__match_.__matches_.__begin_)
  {
    __x.__position_.__match_.__matches_.__end_ = __x.__position_.__match_.__matches_.__begin_;
    operator delete(__x.__position_.__match_.__matches_.__begin_);
  }

  if (v82.__subs_.__begin_)
  {
    v82.__subs_.__end_ = v82.__subs_.__begin_;
    operator delete(v82.__subs_.__begin_);
  }

  if (v82.__position_.__match_.__matches_.__begin_)
  {
    v82.__position_.__match_.__matches_.__end_ = v82.__position_.__match_.__matches_.__begin_;
    operator delete(v82.__position_.__match_.__matches_.__begin_);
  }

  v68 = v86;
  if (v86 && !atomic_fetch_add((v86 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v68->__on_zero_shared)(v68);
    std::__shared_weak_count::__release_weak(v68);
    std::locale::~locale(v83);
    v69 = __re.__start_.__cntrl_;
    if (!__re.__start_.__cntrl_)
    {
LABEL_127:
      std::locale::~locale(&__re.__traits_.__loc_);
      if ((SHIBYTE(v72) & 0x80000000) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_133;
    }
  }

  else
  {
    std::locale::~locale(v83);
    v69 = __re.__start_.__cntrl_;
    if (!__re.__start_.__cntrl_)
    {
      goto LABEL_127;
    }
  }

  if (atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_127;
  }

  (v69->__on_zero_shared)(v69);
  std::__shared_weak_count::__release_weak(v69);
  std::locale::~locale(&__re.__traits_.__loc_);
  if ((SHIBYTE(v72) & 0x80000000) == 0)
  {
LABEL_128:
    if ((SHIBYTE(v74) & 0x80000000) == 0)
    {
      return;
    }

LABEL_134:
    operator delete(v73[0]);
    return;
  }

LABEL_133:
  operator delete(v71[0]);
  if (SHIBYTE(v74) < 0)
  {
    goto LABEL_134;
  }
}

void sub_1E5313AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::locale a51)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a51);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(&STACK[0x230]);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(&STACK[0x300]);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v52 - 208));
  if (*(v51 + 23) < 0)
  {
    operator delete(*v51);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v52 - 144));
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<$_1,std::allocator<$_1>,std::string ()(std::string,std::string)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__destroy_at[abi:ne200100]<ResetReasonEncoder::Mapping,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    if (v3 != v2)
    {
      v5 = v3 - 5;
      do
      {
        while (1)
        {
          if (*(v3 - 8) == 1)
          {
            v7 = *(v3 - 2);
            if (v3 - 5 == v7)
            {
              (*(*v7 + 4))(v7);
            }

            else if (v7)
            {
              (*(*v7 + 5))(v7);
            }
          }

          v6 = v3 - 9;
          if (*(v3 - 49) < 0)
          {
            break;
          }

          v5 -= 9;
          v3 -= 9;
          if (v6 == v2)
          {
            goto LABEL_12;
          }
        }

        operator delete(*v6);
        v5 -= 9;
        v3 -= 9;
      }

      while (v6 != v2);
LABEL_12:
      v4 = *(a1 + 32);
    }

    *(a1 + 40) = v2;
    operator delete(v4);
  }

  if (*(a1 + 23) < 0)
  {
    v8 = *a1;

    operator delete(v8);
  }
}

void ***std::__exception_guard_exceptions<std::vector<ResetReasonEncoder::Mapping>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v4 -= 64;
          std::__destroy_at[abi:ne200100]<ResetReasonEncoder::Mapping,0>(v4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

std::regex_token_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(std::regex_token_iterator<std::__wrap_iter<const char *>, char> *this, std::__wrap_iter<const char *> __a, std::__wrap_iter<const char *> __b, const std::regex_token_iterator<std::__wrap_iter<const char *>, char>::regex_type *__re, int __submatch, std::regex_constants::match_flag_type __m)
{
  this->__position_.__begin_ = __a;
  this->__position_.__end_ = __b;
  this->__position_.__pregex_ = __re;
  this->__position_.__flags_ = match_default;
  *&this->__position_.__match_.__matches_.__begin_ = 0u;
  p_match = &this->__position_.__match_;
  this->__position_.__match_.__prefix_.first.__i_ = 0;
  p_prefix = &this->__position_.__match_.__prefix_;
  this->__position_.__match_.__prefix_.second.__i_ = 0;
  this->__position_.__match_.__prefix_.matched = 0;
  this->__position_.__match_.__suffix_.first.__i_ = 0;
  this->__position_.__match_.__suffix_.second.__i_ = 0;
  this->__position_.__match_.__suffix_.matched = 0;
  this->__position_.__match_.__ready_ = 0;
  this->__position_.__match_.__position_start_.__i_ = 0;
  *&this->__position_.__match_.__matches_.__end_cap_.__value_ = 0u;
  *(&this->__position_.__match_.__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> + 1) = 0u;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAA00;
  v19 = v11;
  v16 = 0;
  v18 = 0uLL;
  LOBYTE(v19) = 0;
  BYTE8(v19) = 0;
  v20 = 0;
  memset(__p, 0, sizeof(__p));
  std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(__re, __a.__i_, __b.__i_, __p, 0);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, __a.__i_, __b.__i_, __p, 0);
  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  this->__suffix_.first.__i_ = 0;
  this->__suffix_.second.__i_ = 0;
  this->__suffix_.matched = 0;
  *&this->__n_ = 0u;
  *&this->__subs_.__end_ = 0u;
  v12 = operator new(4uLL);
  this->__subs_.__begin_ = v12;
  *v12++ = -1;
  this->__subs_.__end_ = v12;
  this->__subs_.__end_cap_.__value_ = v12;
  if (this->__position_.__match_.__matches_.__end_ == this->__position_.__match_.__matches_.__begin_)
  {
    this->__suffix_.matched = 1;
    this->__suffix_.first = __a;
    this->__suffix_.second = __b;
    p_prefix = &this->__suffix_;
  }

  this->__result_ = p_prefix;
  return this;
}

void sub_1E5313F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v13 = *v11;
  if (!*v11)
  {
    _Unwind_Resume(exception_object);
  }

  *(v10 + 40) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

uint64_t std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    v5 = v4 - *a1;
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v5 > 0x16)
    {
      if ((v5 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v5 | 7) + 1;
      }

      p_dst = operator new(v14);
      v30 = v5;
      v31 = v14 | 0x8000000000000000;
      __dst = p_dst;
      if (v4 == v3)
      {
LABEL_17:
        *(p_dst + v5) = 0;
        if (*(a2 + 16) != 1)
        {
          goto LABEL_18;
        }

LABEL_7:
        v7 = *a2;
        v8 = *(a2 + 8);
        v9 = v8 - *a2;
        if (v9 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v9 > 0x16)
        {
          if ((v9 | 7) == 0x17)
          {
            v25 = 25;
          }

          else
          {
            v25 = (v9 | 7) + 1;
          }

          v10 = operator new(v25);
          v27 = v9;
          v28 = v25 | 0x8000000000000000;
          v26 = v10;
          if (v8 == v7)
          {
            goto LABEL_11;
          }
        }

        else
        {
          HIBYTE(v28) = v9;
          v10 = &v26;
          if (v8 == v7)
          {
LABEL_11:
            *(v10 + v9) = 0;
            v11 = HIBYTE(v28);
            v13 = v26;
            v12 = v27;
            goto LABEL_19;
          }
        }

        memmove(v10, v7, v9);
        goto LABEL_11;
      }
    }

    else
    {
      HIBYTE(v31) = v4 - *a1;
      p_dst = &__dst;
      if (v4 == v3)
      {
        goto LABEL_17;
      }
    }

    memmove(p_dst, v3, v5);
    goto LABEL_17;
  }

  __dst = 0;
  v30 = 0;
  v31 = 0;
  if (*(a2 + 16) == 1)
  {
    goto LABEL_7;
  }

LABEL_18:
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
LABEL_19:
  v15 = SHIBYTE(v31);
  v16 = __dst;
  if (v31 >= 0)
  {
    v17 = HIBYTE(v31);
  }

  else
  {
    v17 = v30;
  }

  if (v31 >= 0)
  {
    v18 = &__dst;
  }

  else
  {
    v18 = __dst;
  }

  if ((v11 & 0x80u) == 0)
  {
    v19 = v11;
  }

  else
  {
    v19 = v12;
  }

  if ((v11 & 0x80u) == 0)
  {
    v20 = &v26;
  }

  else
  {
    v20 = v13;
  }

  if (v19 >= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = v19;
  }

  v22 = memcmp(v18, v20, v21);
  if ((v11 & 0x80) != 0)
  {
    operator delete(v13);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(v16);
LABEL_36:
  v23 = v19 < v17;
  if (v17 < v19)
  {
    v23 = -1;
  }

  if (v22)
  {
    return v22;
  }

  else
  {
    return v23;
  }
}

void sub_1E5314168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _GLOBAL__sub_I_ResetReasonEncoder_cpp()
{
  v287 = *MEMORY[0x1E69E9840];
  ctu::OsLogLogger::OsLogLogger(&_MergedGlobals_5, "com.apple.telephony.abm", "ResetReasonEncoder");
  v157 = operator new(0x48uLL);
  v158 = xmmword_1E5393790;
  strcpy(v157, "AP forced coredump via SPMI - Please analyze reason from AP perspective");
  v159 = 0;
  v164 = 0;
  v162 = 0;
  v160 = 0;
  v161 = 0;
  v163 = 0;
  v165 = operator new(0x60uLL);
  v166 = xmmword_1E53937A0;
  strcpy(v165, "ARI_CLI_ERR - All transaction IDs exhausted for msg\\(.*\\), for client\\(0[xX][0-9a-fA-F]+\\)");
  v167 = 1;
  strcpy(v146, "(msg\\(|\\), for client)");
  v146[23] = 22;
  v147 = 0;
  v148 = 0;
  v150 = 0;
  v152 = 12;
  strcpy(&v151, "for client\\(");
  v153 = 2;
  v154 = 0;
  v156 = 0;
  v169 = 0;
  v168 = 0;
  v170 = 0;
  v168 = operator new(0x90uLL);
  v169 = v168;
  v170 = v168 + 6;
  v140 = v168;
  v98 = v168;
  v104 = &v168;
  *&v105 = &v98;
  v106 = 0xAAAAAAAAAAAAAA00;
  *(&v105 + 1) = &v140;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v168, v146);
  v140 = v140 + 72;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v140, &v151);
  v169 = (v140 + 72);
  v171 = 0;
  v172 = 0;
  v173 = operator new(0x50uLL);
  v174 = xmmword_1E53937B0;
  strcpy(v173, "ARI_CLI_ERR - Tracking receipt of unrecognized transaction 0[xX][0-9a-fA-F]+");
  v175 = 2;
  v140 = operator new(0x40uLL);
  v141 = xmmword_1E53937C0;
  strcpy(v140, "ARI_CLI_ERR - Tracking receipt of unrecognized transaction ");
  v142 = 2;
  v143 = 0;
  v145 = 0;
  v178 = 0;
  v176 = 0;
  v177 = 0;
  v176 = operator new(0x48uLL);
  v177 = v176;
  v178 = v176 + 3;
  v98 = v176;
  *v93 = v176;
  v104 = &v176;
  *&v105 = v93;
  v106 = 0xAAAAAAAAAAAAAA00;
  *(&v105 + 1) = &v98;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v176, &v140);
  v177 = (v98 + 72);
  v179 = 0;
  v180 = 0;
  v181 = operator new(0xA8uLL);
  v182 = xmmword_1E53937D0;
  strcpy(v181, "ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\([a-zA-Z\\.]+\\) [0-9a-zA-Z]+\\([0-9]+-[0-9a-fA-F]+\\) SZ\\([0-9]+\\) TRX\\(0x[0-9a-f]+\\) AP\\.SEQ\\(0x[0-9a-f]+\\).*");
  v183 = 3;
  v104 = operator new(0xB0uLL);
  v105 = xmmword_1E53937E0;
  strcpy(v104, "(ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\(([a-zA-Z]+\\.){0,}|\\) [0-9a-zA-Z]+\\([0-9]+-[0-9a-fA-F]+\\) SZ\\([0-9]+\\) TRX\\(0x[0-9a-f]+\\) AP\\.SEQ\\(0x[0-9a-f]+\\).*)");
  LODWORD(v106) = 0;
  v107 = 0;
  v109 = 0;
  v110 = operator new(0x68uLL);
  v111 = xmmword_1E53937F0;
  strcpy(v110, "ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\([a-zA-Z\\.]+\\) [0-9a-zA-Z]+\\(|-[0-9a-fA-F]+\\).*");
  v112 = 1;
  v113 = 0;
  v115 = 0;
  v116 = operator new(0x60uLL);
  v117 = xmmword_1E5393800;
  strcpy(v116, "ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\([a-zA-Z\\.]+\\) [0-9a-zA-Z]+\\([0-9]+-|\\).*");
  v118 = 2;
  v119 = 0;
  v121 = 0;
  v122 = operator new(0xA0uLL);
  v123 = xmmword_1E5393810;
  strcpy(v122, "ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\([a-zA-Z\\.]+\\) [0-9a-zA-Z]+\\([0-9]+-[0-9a-fA-F]+\\) SZ\\(|\\) TRX\\(0x[0-9a-f]+\\) AP\\.SEQ\\(0x[0-9a-f]+\\).*");
  v124 = 1;
  v125 = 0;
  v127 = 0;
  v0 = operator new(0x98uLL);
  v129 = 0x8000000000000098;
  *&v128 = v0;
  *(&v128 + 1) = 151;
  strcpy(v0, "ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\([a-zA-Z\\.]+\\) [0-9a-zA-Z]+\\([0-9]+-[0-9a-fA-F]+\\) SZ\\([0-9]+\\) TRX\\(|\\) AP\\.SEQ\\(0x[0-9a-f]+\\).*");
  v130 = 2;
  v131 = 0;
  v133 = 0;
  v134 = operator new(0x98uLL);
  v135 = xmmword_1E5393820;
  strcpy(v134, "ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\([a-zA-Z\\.]+\\) [0-9a-zA-Z]+\\([0-9]+-[0-9a-fA-F]+\\) SZ\\([0-9]+\\) TRX\\(0x[0-9a-f]+\\) AP\\.SEQ\\(|\\).*");
  v136 = 2;
  v137 = 0;
  v139 = 0;
  v185 = 0;
  v186 = 0;
  v184 = 0;
  *&v99 = 0xAAAAAAAAAAAAAA00;
  v98 = &v184;
  v184 = operator new(0x1B0uLL);
  v185 = v184;
  v186 = v184 + 18;
  *v93 = v184;
  v87 = v184;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v184, &v104);
  *v93 += 72;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(*v93, &v110);
  *v93 += 72;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(*v93, &v116);
  *v93 += 72;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(*v93, &v122);
  *v93 += 72;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(*v93, &v128);
  *v93 += 72;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(*v93, &v134);
  v185 = (*v93 + 72);
  v187 = 0;
  v188 = 0;
  v1 = operator new(0x40uLL);
  v191 = 0x8000000000000040;
  v189 = v1;
  v190 = 63;
  strcpy(v1, "Baseband got stuck in data context .* state: resetting baseband");
  v192 = 4;
  v98 = operator new(0x48uLL);
  v99 = xmmword_1E5391000;
  strcpy(v98, "(Baseband got stuck in data context | state: resetting baseband)");
  v100 = 0;
  v101 = 0;
  v103 = 0;
  v195 = 0;
  v193 = 0;
  v194 = 0;
  *&v93[8] = 0xAAAAAAAAAAAAAA00;
  *v93 = &v193;
  v193 = operator new(0x48uLL);
  v194 = v193;
  v195 = v193 + 3;
  v87 = v193;
  v81 = v193;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v193, &v98);
  v194 = (v87 + 72);
  v196 = 0;
  v197 = 0;
  v2 = operator new(0x20uLL);
  v200 = 0x8000000000000020;
  v198 = v2;
  v199 = 27;
  strcpy(v2, "Baseband ARI engage timeout");
  v201 = 5;
  v206 = 0;
  v204 = 0;
  v202 = 0;
  v203 = 0;
  v205 = 0;
  v3 = operator new(0x38uLL);
  v209 = 0x8000000000000038;
  v207 = v3;
  v208 = 55;
  strcpy(v3, "Failed to open transport to communicate with baseband.*");
  v210 = 6;
  v215 = 0;
  v213 = 0;
  v211 = 0;
  v212 = 0;
  v214 = 0;
  v4 = operator new(0x20uLL);
  v218 = 0x8000000000000020;
  v216 = v4;
  v217 = 24;
  strcpy(v4, "PCI-EVENT: pci error: .*");
  v219 = 7;
  strcpy(v93, "PCI-EVENT: pci error: ");
  v93[23] = 22;
  v94 = 0;
  v95 = 0;
  v97 = 0;
  v221 = 0;
  v220 = 0;
  v222 = 0;
  *&v88 = 0xAAAAAAAAAAAAAA00;
  v87 = &v220;
  v220 = operator new(0x48uLL);
  v221 = v220;
  v222 = v220 + 3;
  v81 = v220;
  *&v75 = v220;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v220, v93);
  v221 = (v81 + 72);
  v223 = 0;
  v224 = 0;
  v5 = operator new(0x40uLL);
  v227 = 0x8000000000000040;
  v226 = 62;
  v225 = v5;
  strcpy(v5, "filesystem flush operation failed -- check ARI and BB state --");
  v228 = 8;
  v233 = 0;
  v229 = 0;
  v231 = 0;
  v230 = 0;
  v232 = 0;
  v234 = operator new(0x20uLL);
  v236 = 0x8000000000000020;
  v235 = 28;
  strcpy(v234, "modem boot up failure \\[.+\\]");
  v237 = 9;
  v87 = operator new(0x19uLL);
  v88 = xmmword_1E538EBD0;
  strcpy(v87, "BBUpdater error  [0-9]+");
  v89 = 1;
  v90[0] = &unk_1F5F03ED0;
  v91 = v90;
  v92 = 1;
  v239 = 0;
  v240 = 0;
  v238 = 0;
  *&v82 = 0xAAAAAAAAAAAAAA00;
  v81 = &v238;
  v238 = operator new(0x48uLL);
  v239 = v238;
  v240 = v238 + 3;
  *&v75 = v238;
  *&v69 = v238;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v238, &v87);
  v239 = (v75 + 72);
  v241 = 3;
  v242 = 1;
  v243 = operator new(0x20uLL);
  v245 = 0x8000000000000020;
  v244 = 28;
  strcpy(v243, "modem boot up failure \\[.+\\]");
  v246 = 9;
  v81 = operator new(0x20uLL);
  v82 = xmmword_1E5391A60;
  strcpy(v81, "modem boot up failure \\[|\\]");
  v83 = 0;
  v84 = 0;
  v86 = 0;
  v248 = 0;
  v249 = 0;
  v247 = 0;
  *(&v75 + 1) = 0xAAAAAAAAAAAAAA00;
  *&v75 = &v247;
  v247 = operator new(0x48uLL);
  v248 = v247;
  v249 = v247 + 3;
  *&v69 = v247;
  *__p = v247;
  v45 = &v247;
  *&v46 = __p;
  v47 = 0xAAAAAAAAAAAAAA00;
  *(&v46 + 1) = &v69;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v247, &v81);
  v248 = (v69 + 72);
  v250 = 4;
  v251 = 1;
  v253 = 2574;
  strcpy(v252, "^\\[abmtool\\].*");
  v76 = 13;
  strcpy(&v75, "^\\[abmtool\\] ");
  v77 = 0;
  v78 = 0;
  v80 = 0;
  v255 = 0;
  v254 = 0u;
  *(&v69 + 1) = 0xAAAAAAAAAAAAAA00;
  *&v69 = &v254;
  *&v254 = operator new(0x48uLL);
  *(&v254 + 1) = v254;
  v255 = v254 + 72;
  *__p = v254;
  v34 = v254;
  v45 = &v254;
  *&v46 = &v34;
  v47 = 0xAAAAAAAAAAAAAA00;
  *(&v46 + 1) = __p;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v254, &v75);
  *(&v254 + 1) = *__p + 72;
  v256 = 0;
  v257 = 0;
  v259 = 2829;
  strcpy(v258, "^\\[bbutil\\].*");
  v70 = 12;
  strcpy(&v69, "^\\[bbutil\\] ");
  v71 = 0;
  v72 = 0;
  v74 = 0;
  v261 = 0;
  v260 = 0u;
  *__p = &v260;
  *&__p[8] = 0xAAAAAAAAAAAAAA00;
  *&v260 = operator new(0x48uLL);
  *(&v260 + 1) = v260;
  v261 = v260 + 72;
  v34 = v260;
  v32 = v260;
  v45 = &v260;
  *&v46 = &v32;
  v47 = 0xAAAAAAAAAAAAAA00;
  *(&v46 + 1) = &v34;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v260, &v69);
  *(&v260 + 1) = v34 + 9;
  v262 = 0;
  v263 = 0;
  v264 = operator new(0x20uLL);
  v266 = 0x8000000000000020;
  v265 = 28;
  strcpy(v264, "TIMEOUT for message MIPC .*?");
  v267 = 13;
  v45 = operator new(0x20uLL);
  v46 = xmmword_1E5390FF0;
  strcpy(v45, "TIMEOUT for message MIPC \\[|\\]");
  LODWORD(v47) = 0;
  v48[0] = &unk_1F5F03F60;
  v49 = v48;
  v50 = 1;
  v52 = 7;
  strcpy(v51, "Client=");
  v53 = 2;
  v54 = 0;
  v56 = 0;
  v58 = 4;
  strcpy(v57, "Msg=");
  v59 = 2;
  v60 = 0;
  v62 = 0;
  v64 = 4;
  strcpy(v63, "Trx=");
  v65 = 2;
  v66 = 0;
  v68 = 0;
  v269 = 0;
  v270 = 0;
  v268 = 0;
  v34 = &v268;
  v35 = 0xAAAAAAAAAAAAAA00;
  v268 = operator new(0x120uLL);
  v269 = v268;
  v270 = v268 + 12;
  v32 = v268;
  v31[0] = v268;
  *__p = &v268;
  *&__p[8] = v31;
  *&__p[16] = &v32;
  v41 = 0xAAAAAAAAAAAAAA00;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v268, &v45);
  v32 += 3;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v32, v51);
  v32 += 3;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v32, v57);
  v32 += 3;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v32, v63);
  v269 = v32 + 3;
  v271 = 4;
  v272 = 1;
  strcpy(v273, "Resetting baseband .*?");
  v273[23] = 22;
  v273[24] = 14;
  __p[23] = 19;
  strcpy(__p, "Resetting baseband ");
  LODWORD(v41) = 0;
  v42 = 0;
  v44 = 0;
  v275 = 0;
  v274 = 0u;
  v32 = &v274;
  v33 = 0xAAAAAAAAAAAAAA00;
  *&v274 = operator new(0x48uLL);
  *(&v274 + 1) = v274;
  v275 = v274 + 72;
  v31[0] = v274;
  v39 = v274;
  v34 = &v274;
  v35 = &v39;
  v36 = v31;
  v37 = 0xAAAAAAAAAAAAAA00;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v274, __p);
  *(&v274 + 1) = v31[0] + 72;
  v276 = 4;
  v277 = 1;
  v278 = operator new(0x28uLL);
  v280 = 0x8000000000000028;
  v279 = 38;
  strcpy(v278, "Baseband request for reset for FS Sync");
  v281 = 15;
  v282 = 0;
  v284 = 0;
  v283 = 0;
  v285 = 4;
  v286 = 1;
  qword_1ED948F50 = 0;
  qword_1ED948F58 = 0;
  qword_1ED948F60 = 0;
  v31[0] = &qword_1ED948F50;
  v31[1] = 0xAAAAAAAAAAAAAA00;
  v6 = operator new(0x400uLL);
  v7 = 0;
  v8 = 0;
  qword_1ED948F50 = v6;
  qword_1ED948F58 = v6;
  qword_1ED948F60 = (v6 + 1024);
  v9 = v6 - 64;
  v10 = v6;
  do
  {
    v11 = &v157 + v8;
    v30 = v8;
    if (*(&v158 + v8 + 15) < 0)
    {
      std::string::__init_copy_ctor_external(v10, *v11, *(v11 + 1));
    }

    else
    {
      *v10 = *v11;
      *(v10 + 16) = *(v11 + 2);
    }

    v12 = v11[24];
    *(v10 + 32) = 0;
    *(v10 + 24) = v12;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    v14 = *(v11 + 4);
    v13 = *(v11 + 5);
    v32 = (v10 + 32);
    v33 = 0xAAAAAAAAAAAAAA00;
    v15 = v13 - v14;
    if (v13 != v14)
    {
      if (0x8E38E38E38E38E39 * (v15 >> 3) >= 0x38E38E38E38E38FLL)
      {
        std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
      }

      v16 = operator new(v13 - v14);
      *(v10 + 32) = v16;
      *(v10 + 40) = v16;
      *(v10 + 48) = v16 + v15;
      v38 = v16;
      v39 = v16;
      v34 = (v10 + 32);
      v35 = &v38;
      v17 = v16;
      v37 = 0xAAAAAAAAAAAAAA00;
      v36 = &v39;
      while (1)
      {
        if (*(v14 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v17, *v14, *(v14 + 1));
        }

        else
        {
          v19 = *v14;
          v17->__r_.__value_.__r.__words[2] = *(v14 + 2);
          *&v17->__r_.__value_.__l.__data_ = v19;
        }

        v20 = *(v14 + 6);
        v17[1].__r_.__value_.__s.__data_[8] = 0;
        LODWORD(v17[1].__r_.__value_.__l.__data_) = v20;
        v17[2].__r_.__value_.__s.__data_[16] = 0;
        if (*(v14 + 64) != 1)
        {
          goto LABEL_13;
        }

        v18 = *(v14 + 7);
        if (v18)
        {
          if (v14 + 2 == v18)
          {
            v17[2].__r_.__value_.__l.__size_ = &v17[1].__r_.__value_.__l.__size_;
            (*(**(v14 + 7) + 24))(*(v14 + 7), &v17[1].__r_.__value_.__s.__data_[8]);
            goto LABEL_12;
          }

          v18 = (*(*v18 + 16))(v18);
        }

        v17[2].__r_.__value_.__l.__size_ = v18;
LABEL_12:
        v17[2].__r_.__value_.__s.__data_[16] = 1;
LABEL_13:
        v14 = (v14 + 72);
        v17 = v39 + 3;
        v39 += 3;
        if (v14 == v13)
        {
          *(v10 + 40) = v17;
          break;
        }
      }
    }

    v8 = v30 + 64;
    *(v10 + 56) = *(v11 + 7);
    v10 += 64;
    v7 -= 64;
    v9 += 64;
  }

  while (v30 != 960);
  qword_1ED948F58 = v10;
  v21 = &v287;
  do
  {
    v22 = *(v21 - 4);
    if (v22)
    {
      v23 = *(v21 - 3);
      v24 = *(v21 - 4);
      if (v23 != v22)
      {
        v25 = v23 - 5;
        do
        {
          while (1)
          {
            if (*(v23 - 8) == 1)
            {
              v27 = *(v23 - 2);
              if (v23 - 5 == v27)
              {
                (*(*v27 + 4))(v27);
              }

              else if (v27)
              {
                (*(*v27 + 5))(v27);
              }
            }

            v26 = v23 - 9;
            if (*(v23 - 49) < 0)
            {
              break;
            }

            v25 -= 9;
            v23 -= 9;
            if (v26 == v22)
            {
              goto LABEL_34;
            }
          }

          operator delete(*v26);
          v25 -= 9;
          v23 -= 9;
        }

        while (v26 != v22);
LABEL_34:
        v24 = *(v21 - 4);
      }

      *(v21 - 3) = v22;
      operator delete(v24);
    }

    v28 = (v21 - 8);
    if (*(v21 - 41) < 0)
    {
      operator delete(*v28);
    }

    v21 -= 8;
  }

  while (v28 != &v157);
  if (v44 != 1)
  {
LABEL_42:
    if ((__p[23] & 0x80000000) != 0)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v68 == 1)
    {
      goto LABEL_47;
    }

LABEL_50:
    if (v64 < 0)
    {
      goto LABEL_54;
    }

LABEL_51:
    if (v62 == 1)
    {
      goto LABEL_55;
    }

LABEL_58:
    if (v58 < 0)
    {
      goto LABEL_62;
    }

LABEL_59:
    if (v56 == 1)
    {
      goto LABEL_63;
    }

LABEL_66:
    if (v52 < 0)
    {
      goto LABEL_70;
    }

LABEL_67:
    if (v50 == 1)
    {
      goto LABEL_71;
    }

LABEL_74:
    if (SHIBYTE(v46) < 0)
    {
      goto LABEL_78;
    }

LABEL_75:
    if (v74 == 1)
    {
      goto LABEL_79;
    }

LABEL_82:
    if (v70 < 0)
    {
      goto LABEL_86;
    }

LABEL_83:
    if (v80 == 1)
    {
      goto LABEL_87;
    }

LABEL_90:
    if (v76 < 0)
    {
      goto LABEL_94;
    }

LABEL_91:
    if (v86 == 1)
    {
      goto LABEL_95;
    }

LABEL_98:
    if (SHIBYTE(v82) < 0)
    {
      goto LABEL_102;
    }

LABEL_99:
    if (v92 == 1)
    {
      goto LABEL_103;
    }

LABEL_106:
    if (SHIBYTE(v88) < 0)
    {
      goto LABEL_110;
    }

LABEL_107:
    if (v97 == 1)
    {
      goto LABEL_111;
    }

LABEL_114:
    if ((v93[23] & 0x80000000) != 0)
    {
      goto LABEL_118;
    }

LABEL_115:
    if (v103 == 1)
    {
      goto LABEL_119;
    }

LABEL_122:
    if (SHIBYTE(v99) < 0)
    {
      goto LABEL_126;
    }

LABEL_123:
    if (v139 == 1)
    {
      goto LABEL_127;
    }

LABEL_130:
    if (SHIBYTE(v135) < 0)
    {
      goto LABEL_134;
    }

LABEL_131:
    if (v133 == 1)
    {
      goto LABEL_135;
    }

LABEL_138:
    if (SHIBYTE(v129) < 0)
    {
      goto LABEL_142;
    }

LABEL_139:
    if (v127 == 1)
    {
      goto LABEL_143;
    }

LABEL_146:
    if (SHIBYTE(v123) < 0)
    {
      goto LABEL_150;
    }

LABEL_147:
    if (v121 == 1)
    {
      goto LABEL_151;
    }

LABEL_154:
    if (SHIBYTE(v117) < 0)
    {
      goto LABEL_158;
    }

LABEL_155:
    if (v115 == 1)
    {
      goto LABEL_159;
    }

LABEL_162:
    if (SHIBYTE(v111) < 0)
    {
      goto LABEL_166;
    }

LABEL_163:
    if (v109 == 1)
    {
      goto LABEL_167;
    }

LABEL_170:
    if (SHIBYTE(v105) < 0)
    {
      goto LABEL_174;
    }

LABEL_171:
    if (v145 == 1)
    {
      goto LABEL_175;
    }

LABEL_178:
    if (SHIBYTE(v141) < 0)
    {
      goto LABEL_182;
    }

LABEL_179:
    if (v156 == 1)
    {
      goto LABEL_183;
    }

LABEL_186:
    if (v152 < 0)
    {
      goto LABEL_190;
    }

LABEL_187:
    if (v150 == 1)
    {
      goto LABEL_191;
    }

LABEL_194:
    if ((v146[23] & 0x80000000) != 0)
    {
      goto LABEL_195;
    }

    goto LABEL_196;
  }

  if (v43 != &v42)
  {
    if (v43)
    {
      (*(*v43 + 40))();
    }

    goto LABEL_42;
  }

  (*(*v43 + 32))(v43);
  if ((__p[23] & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

LABEL_46:
  operator delete(*__p);
  if (v68 != 1)
  {
    goto LABEL_50;
  }

LABEL_47:
  if (v67 != &v66)
  {
    if (v67)
    {
      (*(*v67 + 40))();
    }

    goto LABEL_50;
  }

  (*(*v67 + 32))(v67);
  if ((v64 & 0x80000000) == 0)
  {
    goto LABEL_51;
  }

LABEL_54:
  operator delete(v63[0]);
  if (v62 != 1)
  {
    goto LABEL_58;
  }

LABEL_55:
  if (v61 != &v60)
  {
    if (v61)
    {
      (*(*v61 + 40))();
    }

    goto LABEL_58;
  }

  (*(*v61 + 32))(v61);
  if ((v58 & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

LABEL_62:
  operator delete(v57[0]);
  if (v56 != 1)
  {
    goto LABEL_66;
  }

LABEL_63:
  if (v55 != &v54)
  {
    if (v55)
    {
      (*(*v55 + 40))();
    }

    goto LABEL_66;
  }

  (*(*v55 + 32))(v55);
  if ((v52 & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

LABEL_70:
  operator delete(v51[0]);
  if (v50 != 1)
  {
    goto LABEL_74;
  }

LABEL_71:
  if (v49 != v48)
  {
    if (v49)
    {
      (*(*v49 + 40))();
    }

    goto LABEL_74;
  }

  (*(*v49 + 32))(v49);
  if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

LABEL_78:
  operator delete(v45);
  if (v74 != 1)
  {
    goto LABEL_82;
  }

LABEL_79:
  if (v73 != &v72)
  {
    if (v73)
    {
      (*(*v73 + 40))();
    }

    goto LABEL_82;
  }

  (*(*v73 + 32))(v73);
  if ((v70 & 0x80000000) == 0)
  {
    goto LABEL_83;
  }

LABEL_86:
  operator delete(v69);
  if (v80 != 1)
  {
    goto LABEL_90;
  }

LABEL_87:
  if (v79 != &v78)
  {
    if (v79)
    {
      (*(*v79 + 40))();
    }

    goto LABEL_90;
  }

  (*(*v79 + 32))(v79);
  if ((v76 & 0x80000000) == 0)
  {
    goto LABEL_91;
  }

LABEL_94:
  operator delete(v75);
  if (v86 != 1)
  {
    goto LABEL_98;
  }

LABEL_95:
  if (v85 != &v84)
  {
    if (v85)
    {
      (*(*v85 + 40))();
    }

    goto LABEL_98;
  }

  (*(*v85 + 32))(v85);
  if ((SHIBYTE(v82) & 0x80000000) == 0)
  {
    goto LABEL_99;
  }

LABEL_102:
  operator delete(v81);
  if (v92 != 1)
  {
    goto LABEL_106;
  }

LABEL_103:
  if (v91 != v90)
  {
    if (v91)
    {
      (*(*v91 + 40))();
    }

    goto LABEL_106;
  }

  (*(*v91 + 32))(v91);
  if ((SHIBYTE(v88) & 0x80000000) == 0)
  {
    goto LABEL_107;
  }

LABEL_110:
  operator delete(v87);
  if (v97 != 1)
  {
    goto LABEL_114;
  }

LABEL_111:
  if (v96 != &v95)
  {
    if (v96)
    {
      (*(*v96 + 40))();
    }

    goto LABEL_114;
  }

  (*(*v96 + 32))(v96);
  if ((v93[23] & 0x80000000) == 0)
  {
    goto LABEL_115;
  }

LABEL_118:
  operator delete(*v93);
  if (v103 != 1)
  {
    goto LABEL_122;
  }

LABEL_119:
  if (v102 != &v101)
  {
    if (v102)
    {
      (*(*v102 + 40))();
    }

    goto LABEL_122;
  }

  (*(*v102 + 32))(v102);
  if ((SHIBYTE(v99) & 0x80000000) == 0)
  {
    goto LABEL_123;
  }

LABEL_126:
  operator delete(v98);
  if (v139 != 1)
  {
    goto LABEL_130;
  }

LABEL_127:
  if (v138 != &v137)
  {
    if (v138)
    {
      (*(*v138 + 40))();
    }

    goto LABEL_130;
  }

  (*(*v138 + 32))(v138);
  if ((SHIBYTE(v135) & 0x80000000) == 0)
  {
    goto LABEL_131;
  }

LABEL_134:
  operator delete(v134);
  if (v133 != 1)
  {
    goto LABEL_138;
  }

LABEL_135:
  if (v132 != &v131)
  {
    if (v132)
    {
      (*(*v132 + 40))();
    }

    goto LABEL_138;
  }

  (*(*v132 + 32))(v132);
  if ((SHIBYTE(v129) & 0x80000000) == 0)
  {
    goto LABEL_139;
  }

LABEL_142:
  operator delete(v128);
  if (v127 != 1)
  {
    goto LABEL_146;
  }

LABEL_143:
  if (v126 != &v125)
  {
    if (v126)
    {
      (*(*v126 + 40))();
    }

    goto LABEL_146;
  }

  (*(*v126 + 32))(v126);
  if ((SHIBYTE(v123) & 0x80000000) == 0)
  {
    goto LABEL_147;
  }

LABEL_150:
  operator delete(v122);
  if (v121 != 1)
  {
    goto LABEL_154;
  }

LABEL_151:
  if (v120 != &v119)
  {
    if (v120)
    {
      (*(*v120 + 40))();
    }

    goto LABEL_154;
  }

  (*(*v120 + 32))(v120);
  if ((SHIBYTE(v117) & 0x80000000) == 0)
  {
    goto LABEL_155;
  }

LABEL_158:
  operator delete(v116);
  if (v115 != 1)
  {
    goto LABEL_162;
  }

LABEL_159:
  if (v114 != &v113)
  {
    if (v114)
    {
      (*(*v114 + 40))();
    }

    goto LABEL_162;
  }

  (*(*v114 + 32))(v114);
  if ((SHIBYTE(v111) & 0x80000000) == 0)
  {
    goto LABEL_163;
  }

LABEL_166:
  operator delete(v110);
  if (v109 != 1)
  {
    goto LABEL_170;
  }

LABEL_167:
  if (v108 != &v107)
  {
    if (v108)
    {
      (*(*v108 + 40))();
    }

    goto LABEL_170;
  }

  (*(*v108 + 32))(v108);
  if ((SHIBYTE(v105) & 0x80000000) == 0)
  {
    goto LABEL_171;
  }

LABEL_174:
  operator delete(v104);
  if (v145 != 1)
  {
    goto LABEL_178;
  }

LABEL_175:
  if (v144 != &v143)
  {
    if (v144)
    {
      (*(*v144 + 40))();
    }

    goto LABEL_178;
  }

  (*(*v144 + 32))(v144);
  if ((SHIBYTE(v141) & 0x80000000) == 0)
  {
    goto LABEL_179;
  }

LABEL_182:
  operator delete(v140);
  if (v156 != 1)
  {
    goto LABEL_186;
  }

LABEL_183:
  if (v155 != &v154)
  {
    if (v155)
    {
      (*(*v155 + 40))();
    }

    goto LABEL_186;
  }

  (*(*v155 + 32))(v155);
  if ((v152 & 0x80000000) == 0)
  {
    goto LABEL_187;
  }

LABEL_190:
  operator delete(v151);
  if (v150 != 1)
  {
    goto LABEL_194;
  }

LABEL_191:
  if (v149 != &v148)
  {
    if (v149)
    {
      (*(*v149 + 40))();
    }

    goto LABEL_194;
  }

  (*(*v149 + 32))(v149);
  if ((v146[23] & 0x80000000) != 0)
  {
LABEL_195:
    operator delete(*v146);
  }

LABEL_196:
  v29 = *MEMORY[0x1E69E9840];
}

void sub_1E531618C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ResetReasonEncoder::Mapping *a11, ResetReasonEncoder::Mapping *a12, ResetReasonEncoder::Mapping *a13, ResetReasonEncoder::Mapping *a14, ResetReasonEncoder::Mapping *a15, ResetReasonEncoder::Mapping *a16, ResetReasonEncoder::Mapping *a17, ResetReasonEncoder::Mapping *a18, ResetReasonEncoder::Mapping *a19, ResetReasonEncoder::Mapping *a20, ResetReasonEncoder::Mapping *a21, ResetReasonEncoder::Mapping *a22, ResetReasonEncoder::Mapping *a23, ResetReasonEncoder::Mapping *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void **a48, void **a49, void **a50, void **a51, void **a52, uint64_t a53, uint64_t a54, void **a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__exception_guard_exceptions<std::vector<ResetReasonEncoder::Mapping>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a55);
  ResetReasonEncoder::Mapping::~Mapping(a12);
  ResetReasonEncoder::Mapping::~Mapping(a13);
  ResetReasonEncoder::Mapping::~Mapping(a15);
  ResetReasonEncoder::Mapping::~Mapping(a11);
  ResetReasonEncoder::Mapping::~Mapping(a14);
  ResetReasonEncoder::Mapping::~Mapping(a16);
  ResetReasonEncoder::Mapping::~Mapping(a18);
  ResetReasonEncoder::Mapping::~Mapping(a17);
  ResetReasonEncoder::Mapping::~Mapping(a20);
  ResetReasonEncoder::Mapping::~Mapping(a19);
  ResetReasonEncoder::Mapping::~Mapping(a21);
  ResetReasonEncoder::Mapping::~Mapping(a22);
  ResetReasonEncoder::Mapping::~Mapping(a24);
  ResetReasonEncoder::Mapping::~Mapping(a23);
  ResetReasonEncoder::Mapping::~Mapping(v65);
  ResetReasonEncoder::Mapping::~Mapping(&STACK[0x778]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&a65);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x2E8]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x2A0]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x258]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x210]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x330]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x378]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x3C0]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x408]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x450]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x4A0]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(a48);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(a49);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(a50);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(a51);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(a52);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x4E8]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x698]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x728]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x6E0]);
  _Unwind_Resume(a1);
}

BBUEUR16FirmwareVersion *BBUFirmwareVersion::createFromVersionString(capabilities::updater *a1)
{
  FirmwareVersion = capabilities::updater::getFirmwareVersion(a1);
  if (FirmwareVersion != 2)
  {
    if (FirmwareVersion < 2 || FirmwareVersion == 3)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/FirmwareVersion/Common/BBUFirmwareVersion.cpp", 0x17u, "Assertion failure(false && Unrecognized radio type.)", v4, v5, v6, v9);
    }

    return 0;
  }

  v7 = operator new(0x60uLL);
  BBUEUR16FirmwareVersion::BBUEUR16FirmwareVersion(v7);
  if (((*(*v7 + 56))(v7, a1) & 1) == 0)
  {
    (*(*v7 + 8))(v7);
    return 0;
  }

  return v7;
}

uint64_t BBUFDRUtilities::connect(uint64_t *a1, uint64_t *a2)
{
  value = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v4 = off_1ED944170;
  if (!off_1ED944170)
  {
    v5 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v5);
    v24.__r_.__value_.__r.__words[0] = v5;
    v6 = operator new(0x20uLL);
    *v6 = &unk_1F5F05A00;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v5;
    v7 = off_1ED944178;
    off_1ED944170 = v5;
    off_1ED944178 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v4 = off_1ED944170;
  }

  v8 = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFDRCacheLocation(v4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = __p;
  }

  v21 = 0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = v22;
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = v23;
  }

  v9 = *MEMORY[0x1E695E480];
  v25 = 0xAAAAAAAAAAAAAAAALL;
  if (ctu::cf::convert_copy())
  {
    v10 = CFURLCreateWithString(v9, v25, 0);
    CFRelease(v25);
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = 0;
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_19:
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

  operator delete(v24.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_20:
    value = v10;
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v23.__r_.__value_.__l.__data_);
  value = v10;
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_21:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_28:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v8)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_27:
  operator delete(v22.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_22:
  if (!v8)
  {
LABEL_30:
    v11 = value;
    v12 = *a2;
    if (!value)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_29:
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_30;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  v11 = value;
  v12 = *a2;
  if (value)
  {
LABEL_31:
    CFDictionaryAddValue(v12, @"DataDirectory", v11);
    v12 = *a2;
  }

LABEL_32:
  CFDictionaryAddValue(v12, @"SignData", *MEMORY[0x1E695E4C0]);
  if (v11)
  {
    CFRelease(v11);
  }

  v13 = AMFDRCreateWithOptions(v9, *a2);
  *a1 = v13;
  if (v13)
  {
    return 0;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 11;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 11;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "failed creating reference to fdr\n", v14, v15, v16, v18);
    return 11;
  }

  return result;
}

void sub_1E5316CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, const void *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(&a20);
    if ((a26 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a17 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(&a20);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a21);
  if ((a17 & 0x80000000) == 0)
  {
LABEL_4:
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a10);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a12);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t BBUFDRUtilities::copy(CFStringRef *a1, CFStringRef *a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a1;
  if (!v11 || !*a2 || !*a4)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return 2;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return 2;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v21 = *a2;
      v44 = *a2;
      v45 = *a4;
      _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "invalid arguments:  dataClass = %p, serial = %p, options = %p", a6, a7, a8, *a1);
    }

    return 2;
  }

  if (!CFStringGetLength(v11) || !CFStringGetLength(*a2))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
      {
LABEL_31:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          Length = CFStringGetLength(*a1);
          CFStringGetLength(*a2);
          _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "invalid field length:  dataClass = %li, serial = %li\n", v24, v25, v26, Length);
        }
      }
    }

    return 2;
  }

  v50 = 0;
  v13 = *a1;
  v49[2] = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  v14 = *a2;
  v49[1] = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  v15 = *a4;
  v49[0] = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  v16 = BBUFDRUtilities::connect(&v50, v49);
  v20 = v16;
  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (!v20)
  {
    cf = 0;
    v27 = *a2;
    v28 = *MEMORY[0x1E695E480];
    v43 = capabilities::radio::chipID(v16);
    v29 = CFStringCreateWithFormat(v28, 0, @"%08X-%@");
    v30 = AMFDRDataCopy(v50, *a1, v29, &cf);
    if (v29 && v30)
    {
      v35 = cf;
      v36 = *a3;
      *a3 = v30;
      if (v36)
      {
        CFRelease(v36);
      }

      if (!v35)
      {
        v20 = 0;
LABEL_52:
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v29)
        {
          CFRelease(v29);
        }

        goto LABEL_56;
      }
    }

    else
    {
      v37 = *a3;
      *a3 = v30;
      if (v37)
      {
        CFRelease(v37);
      }
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        goto LABEL_45;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "failed copying data from FDR\n", v32, v33, v34, v43);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v20 = 11;
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_46;
      }
    }

LABEL_45:
    v20 = 11;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_52;
    }

LABEL_46:
    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      ctu::cf::show(__p, cf, v31);
      if (v47 >= 0)
      {
        v41 = __p;
      }

      else
      {
        LOBYTE(v41) = __p[0];
      }

      _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "%s\n", v38, v39, v40, v41);
      if (v47 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_52;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
    {
LABEL_21:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "failed establish connection to FDR\n", v17, v18, v19, v42);
      }
    }
  }

LABEL_56:
  if (v50)
  {
    CFRelease(v50);
  }

  return v20;
}

void sub_1E531729C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUFDRUtilities::validateAndCopy(capabilities::radio *a1, uint64_t *a2, const void **a3, uint64_t *a4, ctu::cf **a5, char a6)
{
  v11 = *a2;
  v12 = *MEMORY[0x1E695E480];
  v59 = capabilities::radio::chipID(a1);
  v17 = CFStringCreateWithFormat(v12, 0, @"%08X-%@");
  if (*a1 && *a2 && *a4)
  {
    v65 = 0;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        goto LABEL_13;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      ctu::cf::show(v66, *a1, v13);
      v18 = v67;
      v19 = v66[0];
      ctu::cf::show(&__p, v17, v20);
      v24 = v66;
      if (v18 < 0)
      {
        LOBYTE(v24) = v19;
      }

      _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "DataClass: %s, DataInstance: %s\n", v21, v22, v23, v24);
      if (v64 < 0)
      {
        operator delete(__p);
      }

      if (v67 < 0)
      {
        operator delete(v66[0]);
      }
    }

LABEL_13:
    if (!AMFDRIsSupported())
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 109, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUFDRUtilities.cpp", 0x101u, "Assertion failure(( AMFDRIsSupported() == true) && AMFDR calls are made but dyn libFDR is NOT linked)", v56, v57, v58, v59);
    }

    if (a6)
    {
LABEL_20:
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_24;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "Calling AMFDRSealingMapCopyLocalData which does the unsealing/validation.\n", v25, v26, v27, v59);
      }

LABEL_24:
      v32 = AMFDRSealingMapCopyLocalData(*a1, v17, *a4, &v65);
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_32;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        ctu::cf::show(v66, v65, v28);
        if (v67 >= 0)
        {
          v36 = v66;
        }

        else
        {
          LOBYTE(v36) = v66[0];
        }

        _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "AMFDRSealingMapCopyLocalData error: %s\n", v33, v34, v35, v36);
        if (v67 < 0)
        {
          operator delete(v66[0]);
        }
      }

LABEL_32:
      if (v32)
      {
        goto LABEL_37;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_37;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "AMFDRSealingMapCopyLocalData returned NULL data \n", v29, v30, v31, v59);
      }

LABEL_37:
      if (v65)
      {
        goto LABEL_42;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_42;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "AMFDRSealingMapCopyLocalData returned NULL error \n", v29, v30, v31, v59);
      }

LABEL_42:
      v37 = v65;
      *a5 = v65;
      if (v32)
      {
        v38 = v37 == 0;
      }

      else
      {
        v38 = 0;
      }

      v39 = v38;
      v40 = *a3;
      *a3 = v32;
      if (v40)
      {
        CFRelease(v40);
      }

      if (v39)
      {
        result = 0;
        goto LABEL_84;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_76;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_76;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "hit an error while copying data from FDR\n", v29, v30, v31, v59);
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          result = 11;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
          {
LABEL_77:
            if ((gBBULogVerbosity & 0x80000000) == 0)
            {
              ctu::cf::show(v66, v65, v28);
              if (v67 >= 0)
              {
                v53 = v66;
              }

              else
              {
                LOBYTE(v53) = v66[0];
              }

              _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "%s\n", v50, v51, v52, v53);
              if (v67 < 0)
              {
                operator delete(v66[0]);
              }

              result = 11;
            }
          }

LABEL_84:
          if (v17)
          {
            v54 = result;
            CFRelease(v17);
            return v54;
          }

          return result;
        }
      }

LABEL_76:
      result = 11;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
      {
        goto LABEL_77;
      }

      goto LABEL_84;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
      {
LABEL_17:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "Setting AMFDR Log Handler\n", v25, v26, v27, v59);
        }
      }
    }

    AMFDRLogSetHandler(BBUFDRLogHandler);
    goto LABEL_20;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_56;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v60 = *a2;
    v61 = *a4;
    _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "invalid arguments:  dataClass = %p, serial = %p\n, options = %p", v14, v15, v16, *a1);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_57;
    }
  }

LABEL_56:
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
  {
    goto LABEL_64;
  }

LABEL_57:
  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    ctu::cf::show(v66, *a1, v13);
    if (v67 >= 0)
    {
      v45 = v66;
    }

    else
    {
      LOBYTE(v45) = v66[0];
    }

    _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "DataClass: %s\n", v42, v43, v44, v45);
    if (v67 < 0)
    {
      operator delete(v66[0]);
    }

    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 2;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_65;
    }
  }

LABEL_64:
  result = 2;
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
  {
    return result;
  }

LABEL_65:
  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    ctu::cf::show(v66, v17, v13);
    if (v67 >= 0)
    {
      v49 = v66;
    }

    else
    {
      LOBYTE(v49) = v66[0];
    }

    _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "DataInstance: %s\n", v46, v47, v48, v49);
    if (v67 < 0)
    {
      operator delete(v66[0]);
    }

    return 2;
  }

  return result;
}

void sub_1E5317A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL BBUFDRUtilities::isTrustErrorAcceptable(BBUFDRUtilities *this, __CFError *a2)
{
  v5 = AMFDRGetTrustError(this);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "FDR TrustError: %llu\n", v2, v3, v4, v5);
  }

LABEL_5:
  if (!v5)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v7 = 0;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return v7;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v7 = 0;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return v7;
      }
    }

    if (gBBULogVerbosity < 0)
    {
      return v7;
    }

    v8 = "Fatal error in FDR data validation/decode \n";
LABEL_18:
    _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, v8, v2, v3, v4, v10);
    return v7;
  }

  v6 = v5 & 0xFFFD9FFFFFFFFEFFLL;
  v7 = (v5 & 0xFFFD9FFFFFFFFEFFLL) == 0;
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  if (v6)
  {
    v8 = "Fatal error in FDR data validation/decode \n";
  }

  else
  {
    v8 = "We only have acceptable errors, so we can ignore these errors \n";
  }

  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  return v7;
}

BOOL BBUFDRUtilities::isErrorImageNotFound(_BOOL8 this, __CFError *a2)
{
  if (!this)
  {
    return this;
  }

  v2 = CFErrorCopyUserInfo(this);
  if (v2)
  {
    v6 = v2;
    v7 = *MEMORY[0x1E695E670];
    Value = CFDictionaryGetValue(v2, *MEMORY[0x1E695E670]);
    if (Value)
    {
      v10 = Value;
      while (1)
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
          {
            goto LABEL_12;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          ctu::cf::show(__p, v10, v9);
          v14 = __p;
          if (v24 < 0)
          {
            LOBYTE(v14) = __p[0];
          }

          _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "AMFDRSealingMapCopyLocalData error: %s\n", v11, v12, v13, v14);
          if (v24 < 0)
          {
            operator delete(__p[0]);
          }
        }

LABEL_12:
        Code = CFErrorGetCode(v10);
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
          {
LABEL_14:
            if ((gBBULogVerbosity & 0x80000000) == 0)
            {
              _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "ErrorCode from isErrorImageNotFound: 0x%lx\n", v15, v16, v17, Code);
            }
          }
        }

        CFRelease(v6);
        v19 = CFErrorCopyUserInfo(v10);
        if (!v19)
        {
          goto LABEL_26;
        }

        v6 = v19;
        v10 = CFDictionaryGetValue(v19, v7);
        if (!v10)
        {
          goto LABEL_25;
        }
      }
    }

    Code = 0;
LABEL_25:
    CFRelease(v6);
  }

  else
  {
    Code = 0;
  }

LABEL_26:
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_32;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "ErrorCode from isErrorImageNotFound: 0x%lx\n", v3, v4, v5, Code);
    this = Code == 4;
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      this = Code == 4;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = Code == 4;
LABEL_33:
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    if (this)
    {
      v20 = "The root cause of the AMFDR failure IS missing bbxx file \n";
    }

    else
    {
      v20 = "The root cause of the AMFDR failure is NOT missing bbxx file \n";
    }

    v21 = this;
    _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, v20, v3, v4, v5, v22);
    return v21;
  }

  return this;
}

void sub_1E5317F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __cxx_global_var_init_27()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t BBUICEProvisioner::determineSupport(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    BBUFeedback::handleBeginQuickStep(*(a1 + 8), "Assuming mature provisioning supported.");
    *(a1 + 16) = 1;
    (*(**(a1 + 8) + 24))(*(a1 + 8), 0);
  }

  return 0;
}

uint64_t BBUICEProvisioner::handleBeginMature(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  __p[6] = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 56, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUICEProvisioner.cpp", 0x32u, "Assertion failure(d.get() && Error: Unable retrieve public key to start provisioning.)", v30, v31, v32, v33);
  }

  CFRetain(v3);
  v6 = operator new(0xFA0uLL);
  bzero(v6, 0xFA0uLL);
  v7 = operator new(0x4C4uLL);
  bzero(v7, 0x4C4uLL);
  Length = CFDataGetLength(v3);
  *v6 = Length;
  if (Length <= 0xF9Eu)
  {
    v37.length = CFDataGetLength(v3);
    v37.location = 0;
    CFDataGetBytes(v3, v37, v6 + 2);
    BBUFeedback::handleComment(*(a1 + 8), "Start provisioning by sending pubkey, size %d", *v6);
    IceAriGetContext();
    if (!KTLStartProvision())
    {
      BBUFeedback::handleComment(*(a1 + 8), "Failed to retrieve mature provisioning parameters.");
      v9 = 56;
      goto LABEL_49;
    }

    bzero(__dst, 0x400uLL);
    if (v7[14] >= 0x400u)
    {
      v10 = 1024;
    }

    else
    {
      v10 = v7[14];
    }

    memcpy(__dst, v7 + 15, v10);
    memset(&__p[3], 170, 24);
    ctu::hex(__dst, v10);
    valid = KTLIsValidIMEIString();
    if (valid)
    {
      v12 = operator new(0x18uLL);
      v13 = v12;
      if (SHIBYTE(__p[5]) < 0)
      {
        std::string::__init_copy_ctor_external(v12, __p[3], __p[4]);
      }

      else
      {
        *&v12->__r_.__value_.__l.__data_ = *&__p[3];
        v12->__r_.__value_.__r.__words[2] = __p[5];
      }

      valid = *a3;
      if (*a3)
      {
        if (*(valid + 23) < 0)
        {
          v14 = *a3;
          operator delete(*valid);
          valid = v14;
        }

        operator delete(valid);
      }

      *a3 = v13;
    }

    if (capabilities::updater::supportsDualIMEIProvision(valid))
    {
      memcpy(__dst, v7 + 554, v10);
      memset(__p, 170, 24);
      ctu::hex(__dst, v10);
      if (KTLIsValidIMEIString())
      {
        BBUFeedback::handleComment(*(a1 + 8), "IMEI2 is valid. Populating provisioning params!");
        v15 = operator new(0x18uLL);
        v16 = v15;
        if (SHIBYTE(__p[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v15, __p[0], __p[1]);
        }

        else
        {
          *&v15->__r_.__value_.__l.__data_ = *__p;
          v15->__r_.__value_.__r.__words[2] = __p[2];
        }

        v17 = a3[1];
        if (v17)
        {
          if (*(v17 + 23) < 0)
          {
            v18 = a3[1];
            operator delete(*v17);
            v17 = v18;
          }

          operator delete(v17);
        }

        a3[1] = v16;
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v7[536] >= 0x400u)
    {
      v19 = 1024;
    }

    else
    {
      v19 = v7[536];
    }

    memcpy(__dst, v7 + 537, v19);
    memset(__p, 170, 24);
    ctu::hex(__dst, v19);
    if (KTLIsValidMEIDString())
    {
      BBUFeedback::handleComment(*(a1 + 8), "MEID is valid. Populating provisioning params!");
      v20 = operator new(0x18uLL);
      v21 = v20;
      if (SHIBYTE(__p[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v20, __p[0], __p[1]);
      }

      else
      {
        *&v20->__r_.__value_.__l.__data_ = *__p;
        v20->__r_.__value_.__r.__words[2] = __p[2];
      }

      v22 = a3[2];
      if (v22)
      {
        if (*(v22 + 23) < 0)
        {
          operator delete(*v22);
        }

        operator delete(v22);
      }

      a3[2] = v21;
    }

    v23 = operator new(0x10uLL);
    v24 = v7[23];
    v23[2] = v24;
    v25 = operator new[](v24);
    *v23 = v25;
    memcpy(v25, v7 + 24, v24);
    v26 = a3[4];
    if (v26)
    {
      if (*v26)
      {
        operator delete(*v26);
      }

      operator delete(v26);
    }

    a3[4] = v23;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(__p[5]) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }
    }

    else if ((SHIBYTE(__p[5]) & 0x80000000) == 0)
    {
LABEL_48:
      v9 = 0;
      goto LABEL_49;
    }

    operator delete(__p[3]);
    goto LABEL_48;
  }

  v9 = 19;
LABEL_49:
  operator delete(v7);
  operator delete(v6);
  CFRelease(v3);
  v27 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1E53184A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, const void *a23)
{
  operator delete(v25);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  operator delete(v24);
  operator delete(v23);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a23);
  _Unwind_Resume(a1);
}

uint64_t BBUICEProvisioner::handleFinishMature(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 57, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUICEProvisioner.cpp", 0x83u, "Assertion failure(d.get() && Error: Unable retrieve public key to finish provisioning.)", v10, v11, v12, v13);
  }

  CFRetain(v2);
  v4 = operator new(0xC02uLL);
  v5 = operator new(0xACuLL);
  bzero(v4, 0xC02uLL);
  *(v5 + 156) = 0u;
  v5[8] = 0u;
  v5[9] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  *v5 = 0u;
  v5[1] = 0u;
  Length = CFDataGetLength(v2);
  *v4 = Length;
  if (Length <= 0xC00u)
  {
    v14.length = CFDataGetLength(v2);
    v14.location = 0;
    CFDataGetBytes(v2, v14, v4 + 2);
    BBUFeedback::handleComment(*(a1 + 8), "Sending manifest, size %d", *v4);
    IceAriGetContext();
    if (KTLFinishProvision())
    {
      v7 = 0;
    }

    else
    {
      BBUFeedback::handleComment(*(a1 + 8), "Finish provision failed, rsp status: 0x%x", *(v5 + 5));
      v7 = 57;
    }
  }

  else
  {
    v7 = 19;
  }

  operator delete(v5);
  operator delete(v4);
  CFRelease(v2);
  return v7;
}

void sub_1E53186F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E531870C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void sub_1E531872C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  operator delete(v10);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void sub_1E5318748(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E5318760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  operator delete(v11);
  operator delete(v10);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_28()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void *BasebandUpdaterCreate(const __CFDictionary *a1, void (*a2)(void *, const char *), void *a3, void *a4)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43 = v8;
  v44 = v8;
  LOBYTE(v43) = 0;
  DWORD1(v43) = 0;
  WORD4(v43) = 0;
  LOBYTE(v44) = 0;
  BYTE8(v44) = 0;
  v47 = 0xAAAAAAAAAAAA0202;
  __p[1] = 0;
  v46 = 0uLL;
  __p[0] = 0xAAAA000000000000;
  v42[0] = 0xAAAAAAAAAAAAAAAALL;
  v42[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x1E6926D60](v42, @"BasebandUpdaterCreate");
  inited = ParseUpdaterDebugArgs(a1, &v43);
  v50 = 0;
  v10 = MEMORY[0x1E695E480];
  if (!a1)
  {
    v11 = 0;
LABEL_14:
    LogInstance = ACFULogging::getLogInstance(inited);
    inited = ACFULogging::initLog(LogInstance, v11, a2, a3);
    v22 = inited;
    v15 = v50;
    if (!v50)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v11 = a1;
  if (!DWORD1(v43))
  {
    goto LABEL_14;
  }

  v12 = *MEMORY[0x1E695E480];
  v13 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"logLevel=%d", DWORD1(v43));
  v49 = v13;
  if (!v13)
  {
    ACFULogging::getLogInstance(0);
    inited = ACFULogging::handleMessage();
LABEL_44:
    ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage();
    std::string::basic_string[abi:ne200100]<0>(v40, "Failed to init logging");
    v33 = ACFUError::addError();
    v26 = 0;
    if (v41 < 0)
    {
      v32 = v40;
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v12, 0, a1);
  v15 = MutableCopy;
  v50 = MutableCopy;
  if (MutableCopy)
  {
    Value = CFDictionaryGetValue(MutableCopy, @"Options");
    v17 = Value;
    if (!Value)
    {
      goto LABEL_9;
    }

    v18 = CFGetTypeID(Value);
    if (v18 != CFDictionaryGetTypeID())
    {
      goto LABEL_9;
    }

    v48 = 0;
    v19 = CFDictionaryCreateMutableCopy(v12, 0, v17);
    v20 = v19;
    v48 = v19;
    if (v19)
    {
      CFDictionaryAddValue(v19, @"ACFUDebugArgs", v13);
      CFDictionaryReplaceValue(v15, @"Options", v20);
      CFRelease(v20);
LABEL_9:
      v21 = 1;
      v11 = v15;
      goto LABEL_10;
    }
  }

  ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage();
  v11 = 0;
  v21 = 0;
LABEL_10:
  CFRelease(v13);
  if (v21)
  {
    goto LABEL_14;
  }

  v22 = 1;
  if (v15)
  {
LABEL_15:
    CFRelease(v15);
  }

LABEL_16:
  if (v22)
  {
    goto LABEL_44;
  }

  if (a2)
  {
    sLogSink = a2;
    sLogContext = a3;
  }

  if (_MergedGlobals_6 == -1)
  {
    if (qword_1ED948F70)
    {
      goto LABEL_21;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_4);
    if (qword_1ED948F70)
    {
LABEL_21:
      v24 = *v10;
      Instance = _CFRuntimeCreateInstance();
      v26 = Instance;
      if (Instance)
      {
        if (!a1)
        {
LABEL_26:
          ACFULogging::getLogInstance(Instance);
          ACFULogging::handleMessage();
          goto LABEL_27;
        }

        v27 = operator new(0x20uLL);
        BasebandUpdater::BasebandUpdater(v27, v26, a1);
        v26[2] = v27;
        v28 = **v27;
        v30 = Instance[2];
        v29 = Instance[3];
        if (v29 && (atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
          if (v30)
          {
            goto LABEL_26;
          }
        }

        else if (v30)
        {
          goto LABEL_26;
        }

        ACFULogging::getLogInstance(Instance);
        ACFULogging::handleMessage();
        v34 = operator new(0x30uLL);
        v35 = xmmword_1E5391A00;
        strcpy(v34, "Failed to create BasebandUpdater instance");
        ACFUError::addError();
        v32 = &v34;
        goto LABEL_32;
      }

      ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage();
      std::string::basic_string[abi:ne200100]<0>(v36, "Failed to create BasebandUpdater CFRuntime object");
      v33 = ACFUError::addError();
      v26 = 0;
      if (v37 < 0)
      {
        v32 = v36;
        goto LABEL_32;
      }

      goto LABEL_33;
    }
  }

  ACFULogging::getLogInstance(inited);
  ACFULogging::handleMessage();
  std::string::basic_string[abi:ne200100]<0>(v38, "Failed to register BasebandUpdater CFRuntimeClass");
  v33 = ACFUError::addError();
  v26 = 0;
  if (v39 < 0)
  {
    v32 = v38;
LABEL_32:
    operator delete(*v32);
  }

LABEL_33:
  ACFULogging::getLogInstance(v33);
  ACFULogging::handleMessage();
  if (a4 && ACFUError::hasError(v42))
  {
    *a4 = ACFUError::getCFError(v42);
  }

  if (v26)
  {
    CFRelease(v26);
    v26 = 0;
  }

LABEL_27:
  MEMORY[0x1E6926D70](v42);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__p[1]);
  }

  return v26;
}

void sub_1E5318D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E6926D70](&a35);
  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Unwind_Resume(a1);
}

uint64_t __BasebandUpdaterCreate_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED948F70 = result;
  return result;
}

void *BasebandUpdaterObjDestroy(void *result)
{
  if (result)
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      v2 = (*(*result + 8))(result);
      ACFULogging::getLogInstance(v2);
      result = ACFULogging::handleMessage();
      v1[2] = 0;
    }
  }

  return result;
}

CFStringRef BasebandUpdaterObjDescribe(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    v3 = CFGetAllocator(v1);
    return CFStringCreateWithFormat(v2, 0, @"<BasebandUpdater %p [%p]>{}", v1, v3);
  }

  return result;
}

uint64_t BasebandUpdaterExecCommand(uint64_t a1, ACFURestore *a2, uint64_t a3, const __CFDictionary **a4, uint64_t *a5)
{
  v81[0] = 0xAAAAAAAAAAAAAAAALL;
  v81[1] = 0xAAAAAAAAAAAAAAAALL;
  v9 = MEMORY[0x1E6926D60](v81, @"BasebandUpdaterExecCommand");
  if (!a1)
  {
    ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage();
    v80[23] = 21;
    strcpy(v80, "NULL updater argument");
    ACFUError::addError();
    if (!a5)
    {
      goto LABEL_115;
    }

    goto LABEL_15;
  }

  v10 = *(a1 + 16);
  {
    ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage();
    v78 = operator new(0x20uLL);
    v79 = xmmword_1E5391A60;
    strcpy(v78, "NULL BasebandUpdater object");
    ACFUError::addError();
    operator delete(v78);
    if (!a5)
    {
      goto LABEL_115;
    }

LABEL_15:
    CFError = ACFUError::getCFError(v81);
    goto LABEL_16;
  }

  v13 = v10;
  v14 = ACFURestore::restoreCommand(a2, v12);
  if (v14 != -1)
  {
    v15 = *(v13 + 3);
    v76.__r_.__value_.__r.__words[0] = *(v13 + 2);
    v76.__r_.__value_.__l.__size_ = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = ACFURestore::executeCommand();
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v22 = v16;
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
      v16 = v22;
      if (v22)
      {
LABEL_68:
        v18 = 1;
        goto LABEL_116;
      }
    }

    else if (v16)
    {
      goto LABEL_68;
    }

LABEL_65:
    v49 = *(v13 + 2);
    v50 = *(v13 + 3);
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      v51 = *(v49 + 400);
      if (atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (v51)
        {
          goto LABEL_68;
        }
      }

      else
      {
        (v50->__on_zero_shared)(v50);
        std::__shared_weak_count::__release_weak(v50);
        if (v51)
        {
          goto LABEL_68;
        }
      }
    }

    else if (*(v49 + 400))
    {
      goto LABEL_68;
    }

    ACFULogging::getLogInstance(v16);
    CFStringGetCStringPtr(a2, 0x8000100u);
    ACFULogging::handleMessage();
    if (!a5)
    {
      goto LABEL_115;
    }

    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
    {
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_73;
      }
    }

    else
    {
      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
LABEL_73:
        if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
        {
          goto LABEL_75;
        }

LABEL_74:
        if (BBUpdaterCommon::inRestoreOS(void)::recoveryOS)
        {
          goto LABEL_75;
        }

LABEL_115:
        v18 = 0;
        goto LABEL_116;
      }
    }

    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
    {
LABEL_75:
      v73 = 0xAAAAAAAAAAAAAAAALL;
      v74 = 0xAAAAAAAAAAAAAAAALL;
      v52 = *(v13 + 2);
      v53 = *(v13 + 3);
      v76.__r_.__value_.__r.__words[0] = v52;
      v76.__r_.__value_.__l.__size_ = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ACFURestore::getErrorHandle(&v73, v52);
      if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v53->__on_zero_shared)(v53);
        std::__shared_weak_count::__release_weak(v53);
      }

      memset(&v76, 0, sizeof(v76));
      v72 = 0;
      v54 = *(v13 + 2);
      v55 = *(v13 + 3);
      v70 = v54;
      v71 = v55;
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v56 = (*(*v54 + 96))(v54, &v76, &v72);
      if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v57 = v56;
        (v55->__on_zero_shared)(v55);
        std::__shared_weak_count::__release_weak(v55);
        v56 = v57;
      }

      if (v56)
      {
        if (v72 == 1)
        {
          ACFUError::clearError(v73);
          std::string::basic_string[abi:ne200100]<0>(&__p, "Emergency coredump detected; route this failure to the baseband firmware team for analysis");
          ACFUError::addError();
          if (v69 < 0)
          {
            operator delete(__p);
          }

          v58 = ACFUError::getCFError(v73);
        }

        else
        {
          ACFUError::clearError(v73);
          std::operator+<char>();
          ACFUError::addError();
          if (v67 < 0)
          {
            operator delete(v66);
          }

          v58 = ACFUError::getCFError(v73);
        }

        *a5 = v58;
LABEL_110:
        if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v76.__r_.__value_.__l.__data_);
        }

        v64 = v74;
        if (v74 && !atomic_fetch_add((v74 + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v64->__on_zero_shared)(v64);
          std::__shared_weak_count::__release_weak(v64);
        }

        goto LABEL_115;
      }

      v59 = *(v13 + 2);
      v60 = *(v13 + 3);
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v62 = *(v59 + 376);
      v61 = *(v59 + 384);
      v70 = v62;
      v71 = v61;
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v60->__on_zero_shared)(v60);
        std::__shared_weak_count::__release_weak(v60);
      }

      v63 = v70;
      if ((ACFUError::hasError(v70) & 1) == 0)
      {
        if (!ACFUError::hasError(v73))
        {
LABEL_103:
          if (v71 && !atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v71->__on_zero_shared)(v71);
            std::__shared_weak_count::__release_weak(v71);
          }

          goto LABEL_110;
        }

        v63 = v73;
      }

      *a5 = ACFUError::getCFError(v63);
      goto LABEL_103;
    }

    goto LABEL_74;
  }

  v19 = BasebandRestore::basebandRestoreCommand(a2, v14);
  v20 = v19;
  switch(v19)
  {
    case -1:
      ACFULogging::getLogInstance(v19);
      CFStringGetCStringPtr(a2, 0x8000100u);
      ACFULogging::handleMessage();
      CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
      std::string::basic_string[abi:ne200100]<0>(&v76, CStringPtr);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("BasebandUpdater unsupported command: ", &v76, &v75);
      ACFUError::addError();
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_20:
          if (!a5)
          {
            goto LABEL_115;
          }

LABEL_122:
          CFError = ACFUError::getCFError(v81);
          break;
        }
      }

      else if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      operator delete(v76.__r_.__value_.__l.__data_);
      if (!a5)
      {
        goto LABEL_115;
      }

      goto LABEL_122;
    case 0:
      v38 = *(v13 + 2);
      v39 = *(v13 + 3);
      v76.__r_.__value_.__r.__words[0] = v38;
      v76.__r_.__value_.__l.__size_ = v39;
      if (v39)
      {
        atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = (*(*v38 + 48))(v38);
      goto LABEL_64;
    case 1:
      v32 = *(v13 + 2);
      v33 = *(v13 + 3);
      v76.__r_.__value_.__r.__words[0] = v32;
      v76.__r_.__value_.__l.__size_ = v33;
      if (v33)
      {
        atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = (*(*v32 + 56))(v32);
      goto LABEL_64;
    case 2:
      v34 = *(v13 + 2);
      v35 = *(v13 + 3);
      v76.__r_.__value_.__r.__words[0] = v34;
      v76.__r_.__value_.__l.__size_ = v35;
      if (v35)
      {
        atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = (*(*v34 + 64))(v34, a4);
      goto LABEL_64;
    case 3:
      v26 = *(v13 + 2);
      v27 = *(v13 + 3);
      v76.__r_.__value_.__r.__words[0] = v26;
      v76.__r_.__value_.__l.__size_ = v27;
      if (v27)
      {
        atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = BasebandRestore::copyBasebandMigrationDataCmd(v26, a4);
      goto LABEL_64;
    case 4:
      v40 = *(v13 + 2);
      v41 = *(v13 + 3);
      v76.__r_.__value_.__r.__words[0] = v40;
      v76.__r_.__value_.__l.__size_ = v41;
      if (v41)
      {
        atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = BasebandRestore::restoreBasebandMigrationDataCmd(v40, a4);
      goto LABEL_64;
    case 5:
      v42 = *(v13 + 2);
      v43 = *(v13 + 3);
      v76.__r_.__value_.__r.__words[0] = v42;
      v76.__r_.__value_.__l.__size_ = v43;
      if (v43)
      {
        atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = BasebandRestore::pingCmd(v42, a4);
      goto LABEL_64;
    case 6:
      v36 = *(v13 + 2);
      v37 = *(v13 + 3);
      v76.__r_.__value_.__r.__words[0] = v36;
      v76.__r_.__value_.__l.__size_ = v37;
      if (v37)
      {
        atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = (*(*v36 + 72))(v36, a4);
      goto LABEL_64;
    case 7:
      v46 = *(v13 + 2);
      v47 = *(v13 + 3);
      v76.__r_.__value_.__r.__words[0] = v46;
      v76.__r_.__value_.__l.__size_ = v47;
      if (v47)
      {
        atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = (*(*v46 + 80))(v46);
      goto LABEL_64;
    case 8:
      v30 = *(v13 + 2);
      v31 = *(v13 + 3);
      v76.__r_.__value_.__r.__words[0] = v30;
      v76.__r_.__value_.__l.__size_ = v31;
      if (v31)
      {
        atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = BasebandRestore::provisionCmd(v30, a4);
      goto LABEL_64;
    case 9:
      v44 = *(v13 + 2);
      v45 = *(v13 + 3);
      v76.__r_.__value_.__r.__words[0] = v44;
      v76.__r_.__value_.__l.__size_ = v45;
      if (v45)
      {
        atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = (*(*v44 + 104))(v44, a4);
      goto LABEL_64;
    case 10:
      v23 = *(v13 + 2);
      v24 = *(v13 + 3);
      v76.__r_.__value_.__r.__words[0] = v23;
      v76.__r_.__value_.__l.__size_ = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = (*(*v23 + 112))(v23, a4);
      goto LABEL_64;
    case 11:
      v28 = *(v13 + 2);
      v29 = *(v13 + 3);
      v76.__r_.__value_.__r.__words[0] = v28;
      v76.__r_.__value_.__l.__size_ = v29;
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = (*(*v28 + 120))(v28);
LABEL_64:
      v48 = v25;
      v16 = std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v76);
      if ((v48 & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_68;
    default:
      ACFULogging::getLogInstance(v19);
      ACFULogging::handleMessage();
      std::to_string(&v76, v20);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Logic error: invalid BasebandUpdater command: ", &v76, &v77);
      ACFUError::addError();
      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_53:
          if (!a5)
          {
            goto LABEL_115;
          }

          goto LABEL_119;
        }
      }

      else if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

      operator delete(v76.__r_.__value_.__l.__data_);
      if (!a5)
      {
        goto LABEL_115;
      }

LABEL_119:
      CFError = ACFUError::getCFError(v81);
      break;
  }

LABEL_16:
  v18 = 0;
  *a5 = CFError;
LABEL_116:
  MEMORY[0x1E6926D70](v81);
  return v18;
}

void sub_1E5319A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a27);
  MEMORY[0x1E6926D70](v46 - 80);
  _Unwind_Resume(a1);
}

void sub_1E5319BAC(_Unwind_Exception *a1)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
    MEMORY[0x1E6926D70](v1 - 80);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E5319BF8);
}

void sub_1E5319BD0(_Unwind_Exception *a1)
{
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
    MEMORY[0x1E6926D70](v1 - 80);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E5319BF8);
}

uint64_t BasebandUpdaterIsDone(uint64_t a1, void *a2)
{
  v20[0] = 0xAAAAAAAAAAAAAAAALL;
  v20[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x1E6926D60](v20, @"BasebandUpdaterIsDone");
  if (!a1)
  {
    goto LABEL_24;
  }

  v4 = *(a1 + 16);
  {
    ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage();
    __p = operator new(0x20uLL);
    v19 = xmmword_1E5391A60;
    strcpy(__p, "NULL BasebandUpdater object");
    ACFUError::addError();
    operator delete(__p);
    if (a2)
    {
      *a2 = ACFUError::getCFError(v20);
    }

    goto LABEL_22;
  }

  v6 = v4;
  v7 = *(v4 + 2);
  v8 = *(v6 + 3);
  v16 = v7;
  v17 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  isRestoreComplete = ACFURestore::isRestoreComplete(v7);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v14 = isRestoreComplete;
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    isRestoreComplete = v14;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  if (!isRestoreComplete)
  {
    goto LABEL_24;
  }

LABEL_9:
  ACFULogging::getLogInstance(isRestoreComplete);
  ACFULogging::handleMessage();
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v10 = *(v6 + 2);
  v11 = *(v6 + 3);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ACFURestore::getErrorHandle(&v16, v10);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (a2 && ACFUError::hasError(v16))
  {
    *a2 = ACFUError::getCFError(v16);
  }

  v12 = v17;
  if (v17 && !atomic_fetch_add((v17 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

LABEL_22:
  v13 = 1;
LABEL_25:
  MEMORY[0x1E6926D70](v20);
  return v13;
}

void sub_1E5319EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x1E6926D70](v6 - 48);
  _Unwind_Resume(a1);
}

void sub_1E5319EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x1E6926D70](v4 - 48);
  _Unwind_Resume(a1);
}

void sub_1E5319F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x1E6926D70](v6 - 48);
  _Unwind_Resume(a1);
}

void sub_1E5319F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    MEMORY[0x1E6926D70](v21 - 48);
    _Unwind_Resume(a1);
  }

  MEMORY[0x1E6926D70](v21 - 48);
  _Unwind_Resume(a1);
}

uint64_t BasebandUpdaterSetOptions(void *a1, const __CFDictionary *a2, void *a3)
{
  v29[0] = 0xAAAAAAAAAAAAAAAALL;
  v29[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = MEMORY[0x1E6926D60](v29, @"BasebandUpdaterSetOptions");
  if (a1 && a2)
  {
    v7 = a1[2];
    if (v7)
    {
      v8 = **v7;
      v11 = *(v9 + 2);
      v10 = *(v9 + 3);
      v23 = v11;
      v24 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = v11[15];
      if (v12)
      {
        CFRelease(v12);
      }

      v11[15] = a2;
      AMSupportSafeRetain();
      v13 = (*(*v11 + 136))(v11);
      v14 = v13;
      if (v13)
      {
        ACFULogging::getLogInstance(v13);
        v13 = ACFULogging::handleMessage();
      }

      if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }

      if (v14)
      {
        ACFULogging::getLogInstance(v13);
        ACFULogging::handleMessage();
        std::string::basic_string[abi:ne200100]<0>(v21, "Failed to setOptions on BasebandUpdater obj");
        ACFUError::addError();
        if (v22 < 0)
        {
          v15 = v21;
LABEL_24:
          operator delete(*v15);
          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    else
    {
      LogInstance = ACFULogging::getLogInstance(0);
      inited = ACFULogging::initLog(LogInstance, a2, sLogSink, sLogContext);
      if (inited)
      {
        ACFULogging::getLogInstance(inited);
        ACFULogging::handleMessage();
        std::string::basic_string[abi:ne200100]<0>(v25, "Failed to init logging");
        ACFUError::addError();
        if (v26 < 0)
        {
          v15 = v25;
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      v18 = operator new(0x20uLL);
      BasebandUpdater::BasebandUpdater(v18, a1, a2);
      a1[2] = v18;
    }

    v19 = 1;
    goto LABEL_19;
  }

  ACFULogging::getLogInstance(v6);
  ACFULogging::handleMessage();
  std::string::basic_string[abi:ne200100]<0>(v27, "NULL updater and/or options arguments");
  ACFUError::addError();
  if (v28 < 0)
  {
    v15 = v27;
    goto LABEL_24;
  }

LABEL_25:
  if (a3 && ACFUError::hasError(v29))
  {
    v19 = 0;
    *a3 = ACFUError::getCFError(v29);
  }

  else
  {
    v19 = 0;
  }

LABEL_19:
  MEMORY[0x1E6926D70](v29);
  return v19;
}

void sub_1E531A258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
    MEMORY[0x1E6926D70](v25 - 48);
    _Unwind_Resume(a1);
  }

  MEMORY[0x1E6926D70](v25 - 48);
  _Unwind_Resume(a1);
}

ACFULogging *BasebandUpdaterRegisterLogSink(uint64_t a1, void *a2, void (*a3)(void *, const char *))
{
  if (!a1)
  {
    ACFULogging::getLogInstance(0);
    return ACFULogging::handleMessage();
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = **v5;
    v7 = v5[2];
    v8 = v5[3];
    if (!v8)
    {
      v14 = *(v7 + 15);
      LogInstance = ACFULogging::getLogInstance(v5);
      result = ACFULogging::initLog(LogInstance, v14, a3, a2);
      if (result)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *(v7 + 15);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      v11 = ACFULogging::getLogInstance(v10);
      result = ACFULogging::initLog(v11, v9, a3, a2);
      if (!result)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = ACFULogging::getLogInstance(v5);
  result = ACFULogging::initLog(v13, v9, a3, a2);
  if (result)
  {
LABEL_10:
    ACFULogging::getLogInstance(result);
    return ACFULogging::handleMessage();
  }

LABEL_13:
  sLogSink = a3;
  sLogContext = a2;
  return result;
}

double BBUPersonalizationParameters::create(BBUPersonalizationParameters *this)
{
  PersonalizationParameters = capabilities::updater::getPersonalizationParameters(this);
  if (PersonalizationParameters)
  {
    if (PersonalizationParameters == 1)
    {
      v3 = operator new(0x60uLL);
      result = 0.0;
      *(v3 + 8) = 0u;
      *(v3 + 24) = 0u;
      *(v3 + 40) = 0u;
      *(v3 + 56) = 0u;
      *(v3 + 72) = 0u;
      *(v3 + 22) = 0;
      *v3 = &unk_1F5F03DE8;
    }

    else if (PersonalizationParameters == 2)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/Common/BBUPersonalizationParameters.cpp", 0x15u, "Assertion failure(false && Unrecognized radio type.)", v6, v7, v8, v9);
    }
  }

  else
  {
    v4 = operator new(0x60uLL);
    result = 0.0;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 22) = 0;
    *v4 = &unk_1F5F05C90;
  }

  return result;
}

void BBUPersonalizationParameters::~BBUPersonalizationParameters(BBUPersonalizationParameters *this)
{
  *this = &unk_1F5F040D8;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 7);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }
}

uint64_t BBUPersonalizationParameters::setPublicKeyHash(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 40) = a2;
  return result;
}

uint64_t DaleBooter::create@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  v4 = operator new(0xB8uLL);
  v8 = v4;
  v23 = &unk_1F5F01F98;
  LOBYTE(v24) = 0;
  v26 = 0;
  v9 = *(a1 + 32);
  if (v9 == 1)
  {
    v7 = *(a1 + 8);
    v24 = v7;
    v25 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v5 = 1;
    v26 = 1;
    LOBYTE(v27) = 0;
    v29 = 0;
    v10 = *(a1 + 64);
    if (v10 != 1)
    {
LABEL_3:
      LOBYTE(v30) = 0;
      v32 = 0;
      v11 = *(a1 + 96);
      if (v11 != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    LOBYTE(v27) = 0;
    v29 = 0;
    v10 = *(a1 + 64);
    if (v10 != 1)
    {
      goto LABEL_3;
    }
  }

  v7 = *(a1 + 40);
  v27 = v7;
  v28 = *(a1 + 56);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v5 = 1;
  v29 = 1;
  LOBYTE(v30) = 0;
  v32 = 0;
  v11 = *(a1 + 96);
  if (v11 != 1)
  {
LABEL_4:
    LOBYTE(v33) = 0;
    v38 = 0;
    v12 = *(a1 + 144);
    if (v12 == 1)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = *(a1 + 72);
  v30 = v7;
  v31 = *(a1 + 88);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  v5 = 1;
  v32 = 1;
  LOBYTE(v33) = 0;
  v38 = 0;
  v12 = *(a1 + 144);
  if (v12 == 1)
  {
LABEL_5:
    v13 = *(a1 + 120);
    v14 = *(a1 + 104);
    v5 = *(a1 + 112);
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    v33 = v14;
    v34 = v5;
    v6 = *(a1 + 128);
    v35 = v13;
    v36 = v6;
    LODWORD(v7) = *(a1 + 136);
    v37 = v7;
    if (v6)
    {
      v4 = &v35;
      v15 = *(v13 + 8);
      if ((v5 & (v5 - 1)) != 0)
      {
        if (v15 >= v5)
        {
          v15 %= v5;
        }
      }

      else
      {
        v15 &= v5 - 1;
      }

      *(v14 + 8 * v15) = &v35;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
    }

    v38 = 1;
    LOBYTE(v39) = 0;
    v41 = 0;
    v16 = *(a1 + 168);
    if (v16 == 1)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

LABEL_11:
  LOBYTE(v39) = 0;
  v41 = 0;
  v16 = *(a1 + 168);
  if (v16 == 1)
  {
LABEL_17:
    v4 = *(a1 + 160);
    v39 = *(a1 + 152);
    v40 = v4;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    v41 = 1;
  }

LABEL_18:
  *v8 = &unk_1F5F04120;
  v8[1] = &unk_1F5F01F98;
  *(v8 + 16) = 0;
  *(v8 + 40) = 0;
  if (v9)
  {
    *(v8 + 1) = v24;
    v8[4] = v25;
    v25 = 0;
    v24 = 0uLL;
    *(v8 + 40) = 1;
    *(v8 + 48) = 0;
    v17 = v8 + 6;
    *(v8 + 72) = 0;
    if (!v10)
    {
LABEL_20:
      *(v8 + 80) = 0;
      v18 = v8 + 10;
      *(v8 + 104) = 0;
      if (!v11)
      {
        goto LABEL_21;
      }

      goto LABEL_28;
    }
  }

  else
  {
    *(v8 + 48) = 0;
    v17 = v8 + 6;
    *(v8 + 72) = 0;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  *v17 = v27;
  v17[2] = v28;
  v28 = 0;
  v27 = 0uLL;
  *(v8 + 72) = 1;
  *(v8 + 80) = 0;
  v18 = v8 + 10;
  *(v8 + 104) = 0;
  if (!v11)
  {
LABEL_21:
    *(v8 + 112) = 0;
    *(v8 + 152) = 0;
    if (!v12)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_28:
  *v18 = v30;
  v18[2] = v31;
  v31 = 0;
  v30 = 0uLL;
  *(v8 + 104) = 1;
  *(v8 + 112) = 0;
  *(v8 + 152) = 0;
  if (!v12)
  {
LABEL_22:
    *(v8 + 160) = 0;
    *(v8 + 176) = 0;
    if (!v16)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_29:
  v20 = v33;
  v21 = v35;
  v33 = 0;
  v34 = 0;
  v8[16] = v35;
  v8[14] = v20;
  v8[15] = v5;
  v8[17] = v6;
  *(v8 + 36) = v7;
  if (v6)
  {
    v22 = *(v21 + 8);
    if ((v5 & (v5 - 1)) != 0)
    {
      if (v22 >= v5)
      {
        v22 %= v5;
      }
    }

    else
    {
      v22 &= v5 - 1;
    }

    *(v20 + 8 * v22) = v8 + 16;
    v35 = 0;
    v36 = 0;
  }

  *(v8 + 152) = 1;
  *(v8 + 160) = 0;
  *(v8 + 176) = 0;
  if (v16)
  {
LABEL_23:
    v8[20] = v39;
    v8[21] = v4;
    v39 = 0;
    v40 = 0;
    *(v8 + 176) = 1;
  }

LABEL_24:
  BasebandBooterParams::~BasebandBooterParams(&v23);
  result = (*(*v8 + 32))(v8);
  if (result)
  {
    *a2 = v8;
  }

  else
  {
    ACFULogging::getLogInstance(result);
    ACFULogging::handleMessage();
    return (*(*v8 + 8))(v8);
  }

  return result;
}

void sub_1E531ABF8(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t DaleBooter::boot(uint64_t a1, _DWORD *a2)
{
  v85 = *MEMORY[0x1E69E9840];
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  *a2 = 1;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  memset(v84.__m_.__opaque, 0, sizeof(v84.__m_.__opaque));
  v84.__m_.__sig = 850045863;
  memset(v83.__cv_.__opaque, 0, sizeof(v83.__cv_.__opaque));
  v83.__cv_.__sig = 1018212795;
  v65 = 0;
  v4 = ACFUDiagnostics::create(0, 1);
  v5 = block;
  if (!block)
  {
    v69 = 0;
    v70 = 0;
    ACFULogging::getLogInstance(v4);
LABEL_6:
    ACFULogging::handleMessage();
    goto LABEL_7;
  }

  v6 = operator new(0x20uLL);
  v6->__vftable = &unk_1F5F03AE8;
  v6->__shared_owners_ = 0;
  v6->__shared_weak_owners_ = 0;
  v6[1].__vftable = v5;
  v69 = v5;
  v70 = v6;
  v59.__r_.__value_.__s.__data_[0] = 0;
  v60 = 0;
  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v59, *(a1 + 16), *(a1 + 24));
    }

    else
    {
      v59 = *(a1 + 16);
    }

    v60 = 1;
  }

  v61.__r_.__value_.__s.__data_[0] = 0;
  v62 = 0;
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v61, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      v61 = *(a1 + 48);
    }

    v62 = 1;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  v64 = 0;
  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 103) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 80), *(a1 + 88));
    }

    else
    {
      __p = *(a1 + 80);
    }

    v64 = 1;
  }

  DaleFirmware_Boot::create(&v59, &block);
  v9 = block;
  if (block)
  {
    v10 = operator new(0x20uLL);
    *v10 = &unk_1F5F04170;
    *(v10 + 1) = 0;
    *(v10 + 2) = 0;
    *(v10 + 3) = v9;
    v66 = v9;
    v67 = v10;
    block = 0;
    if ((v64 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v10 = 0;
    v66 = 0;
    v67 = 0;
    block = 0;
    if ((v64 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_27:
  if (v62 == 1 && SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (v60 == 1 && SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (!v9)
  {
    ACFULogging::getLogInstance(v10);
    goto LABEL_6;
  }

  v57 = v5;
  v58 = v6;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v55 = 0;
  v56 = 0;
  DaleController::create(&v57, &v55, &block);
  v11 = block;
  block = 0;
  v12 = v68;
  v68 = v11;
  if (v12)
  {
    (*(*v12 + 64))(v12);
    v13 = block;
    block = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  v14 = v56;
  if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = v58;
  if (v58 && !atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (!v68)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_6;
  }

  v16 = (*(*v68 + 32))(v68);
  *a2 = v16;
  if (v16)
  {
    ACFULogging::getLogInstance(v16);
    v42 = *a2;
    ACFULogging::handleMessage();
LABEL_7:
    v7 = 0;
    std::condition_variable::~condition_variable(&v83);
    std::mutex::~mutex(&v84);
    v8 = v67;
    if (!v67)
    {
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  v54 = 6;
  strcpy(v53, "booter");
  v82 = 0;
  v17 = operator new(0x28uLL);
  *v17 = &unk_1F5F041C0;
  *(v17 + 1) = &v68;
  *(v17 + 2) = &v84;
  *(v17 + 3) = &v83;
  *(v17 + 4) = &v65;
  v82 = v17;
  support::misc::safe_timer::create(v53, 60000, v81, QOS_CLASS_UTILITY, &block);
  v18 = block;
  block = 0;
  v19 = v82;
  if (v82 == v81)
  {
    v19 = (*(*v82 + 32))(v82);
    if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (v82)
    {
      v19 = (*(*v82 + 40))(v82);
    }

    if ((v54 & 0x80000000) == 0)
    {
LABEL_49:
      if (v18)
      {
        goto LABEL_50;
      }

      goto LABEL_54;
    }
  }

  operator delete(v53[0]);
  if (!v18)
  {
LABEL_54:
    ACFULogging::getLogInstance(v19);
    goto LABEL_6;
  }

LABEL_50:
  v20 = *(v18 + 23);
  if (v20 == dispatch_get_specific("CurrentQueue"))
  {
    support::misc::safe_timer::start_sync(v18);
  }

  else
  {
    block = MEMORY[0x1E69E9820];
    v72 = 0x40000000;
    v73 = ___ZN7support4misc10safe_timer5startEv_block_invoke;
    v74 = &__block_descriptor_tmp_8_0;
    v75 = v18;
    dispatch_sync(v20, &block);
  }

  v21 = v68;
  v51 = v66;
  v52 = v67;
  if (v67)
  {
    atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(v47[0]) = 0;
  v50 = 0;
  if (*(a1 + 152) == 1)
  {
    *v47 = 0u;
    v48 = 0u;
    v49 = *(a1 + 144);
    prime = *(a1 + 120);
    if (prime == 1)
    {
      prime = 2;
LABEL_61:
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(v47, prime);
LABEL_62:
      for (i = *(a1 + 128); i; i = *i)
      {
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(v47, (i + 2), (i + 2));
      }

      v50 = 1;
      goto LABEL_65;
    }

    if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(*(a1 + 120));
      v37 = v47[1];
      v38 = prime >= v47[1];
      if (prime > v47[1])
      {
        goto LABEL_61;
      }
    }

    else
    {
      v37 = 0;
      v38 = 1;
      if (prime)
      {
        goto LABEL_61;
      }
    }

    if (v38)
    {
      goto LABEL_62;
    }

    v39 = vcvtps_u32_f32(*(&v48 + 1) / v49);
    if (v37 < 3 || (v40 = vcnt_s8(v37), v40.i16[0] = vaddlv_u8(v40), v40.u32[0] > 1uLL))
    {
      v39 = std::__next_prime(v39);
    }

    else
    {
      v41 = 1 << -__clz(v39 - 1);
      if (v39 >= 2)
      {
        v39 = v41;
      }
    }

    if (prime <= v39)
    {
      prime = v39;
    }

    if (prime >= v37)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_65:
  LOBYTE(v44) = 0;
  v46 = 0;
  if (*(a1 + 176) == 1)
  {
    v24 = *(a1 + 168);
    v44 = *(a1 + 160);
    v45 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v46 = 1;
  }

  *a2 = DaleController::pushFirmware(v21, &v51, v47, &v44);
  if (v46 == 1)
  {
    v25 = v45;
    if (v45)
    {
      if (!atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v25->__on_zero_shared)(v25);
        std::__shared_weak_count::__release_weak(v25);
      }
    }
  }

  if (v50 == 1)
  {
    v26 = v48;
    if (!v48)
    {
LABEL_81:
      v28 = v47[0];
      v47[0] = 0;
      if (v28)
      {
        operator delete(v28);
      }

      goto LABEL_83;
    }

    while (1)
    {
      v27 = *v26;
      if (v26[63] < 0)
      {
        operator delete(*(v26 + 5));
        if ((v26[39] & 0x80000000) == 0)
        {
          goto LABEL_77;
        }

LABEL_80:
        operator delete(*(v26 + 2));
        operator delete(v26);
        v26 = v27;
        if (!v27)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (v26[39] < 0)
        {
          goto LABEL_80;
        }

LABEL_77:
        operator delete(v26);
        v26 = v27;
        if (!v27)
        {
          goto LABEL_81;
        }
      }
    }
  }

LABEL_83:
  v29 = v52;
  if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  std::mutex::lock(&v84);
  v65 = 1;
  std::mutex::unlock(&v84);
  std::condition_variable::notify_one(&v83);
  support::misc::safe_timer::stop(v18);
  v77 = 0;
  v78 = &v77;
  v79 = 0x2000000000;
  v80 = 0;
  v30 = *(v18 + 23);
  block = MEMORY[0x1E69E9820];
  v72 = 1107296256;
  v73 = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
  v74 = &__block_descriptor_tmp_12_0;
  v75 = &v77;
  v76 = v18;
  dispatch_sync(v30, &block);
  v31 = *(v78 + 24);
  _Block_object_dispose(&v77, 8);
  if (v31 == 1)
  {
    ACFULogging::getLogInstance(v32);
    ACFULogging::handleMessage();
  }

  else
  {
    if (!*a2)
    {
      v7 = 1;
      goto LABEL_89;
    }

    ACFULogging::getLogInstance(v32);
    v43 = *a2;
    ACFULogging::handleMessage();
  }

  v7 = 0;
LABEL_89:
  (*(*v18 + 8))(v18);
  std::condition_variable::~condition_variable(&v83);
  std::mutex::~mutex(&v84);
  v8 = v67;
  if (!v67)
  {
    goto LABEL_92;
  }

LABEL_90:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_92:
  v33 = v68;
  v68 = 0;
  if (v33)
  {
    (*(*v33 + 64))(v33);
  }

  v34 = v70;
  if (v70 && !atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  v35 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1E531B6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, char a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, char a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62)
{
  if (a54 == 1 && a53 < 0)
  {
    operator delete(__p);
  }

  if (a47 == 1 && a46 < 0)
  {
    operator delete(a41);
  }

  if (a40 == 1 && a39 < 0)
  {
    operator delete(a34);
  }

  std::condition_variable::~condition_variable((v62 - 200));
  std::mutex::~mutex((v62 - 152));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a57);
  v64 = a59;
  a59 = 0;
  if (v64)
  {
    (*(*v64 + 64))(v64);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a60);
  _Unwind_Resume(a1);
}

void DaleBooter::~DaleBooter(DaleBooter *this)
{
  *this = &unk_1F5F04120;
  BasebandBooterParams::~BasebandBooterParams((this + 8));
}

{
  *this = &unk_1F5F04120;
  BasebandBooterParams::~BasebandBooterParams((this + 8));

  operator delete(this);
}

void std::__shared_ptr_pointer<DaleFirmware_Boot  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<DaleFirmware_Boot  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<DaleFirmware_Boot  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5393A2CLL)
  {
    if (((v2 & 0x80000001E5393A2CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5393A2CLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5393A2CLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

__n128 std::__function::__func<DaleBooter::boot(ACFUErrorCode &)::$_0,std::allocator<DaleBooter::boot(ACFUErrorCode &)::$_0>,void ()(void)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_1F5F041C0;
  *(v2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v2 + 24) = result;
  return result;
}

__n128 std::__function::__func<DaleBooter::boot(ACFUErrorCode &)::$_0,std::allocator<DaleBooter::boot(ACFUErrorCode &)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5F041C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<DaleBooter::boot(ACFUErrorCode &)::$_0,std::allocator<DaleBooter::boot(ACFUErrorCode &)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  v2 = DaleController::warmResetForce(**(a1 + 8));
  if (v2)
  {
    ACFULogging::getLogInstance(v2);
LABEL_24:
    ACFULogging::handleMessage();
    v12 = (*(***(a1 + 8) + 32))(**(a1 + 8));
    if (v12)
    {
      ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage();
    }

    return;
  }

  __lk.__m_ = *(a1 + 16);
  *&__lk.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock(__lk.__m_);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v6 = v5.__d_.__rep_ + 10000000000;
  while ((*v4 & 1) == 0)
  {
    v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    if (v6 <= v5.__d_.__rep_)
    {
LABEL_20:
      v11 = *v4;
      if (!__lk.__owns_)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v8.__d_.__rep_ = v6 - std::chrono::steady_clock::now().__d_.__rep_;
    if (v8.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v9.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v9.__d_.__rep_)
      {
        v10 = 0;
        goto LABEL_19;
      }

      if (v9.__d_.__rep_ < 1)
      {
        if (v9.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v7.__d_.__rep_ = v8.__d_.__rep_ + 0x8000000000000000;
          goto LABEL_5;
        }
      }

      else if (v9.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v8.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_19:
          v7.__d_.__rep_ = v10 + v8.__d_.__rep_;
          goto LABEL_5;
        }

LABEL_4:
        v7.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_5:
        std::condition_variable::__do_timed_wait(v3, &__lk, v7);
        std::chrono::steady_clock::now();
        goto LABEL_6;
      }

      v10 = 1000 * v9.__d_.__rep_;
      if (1000 * v9.__d_.__rep_ <= (v8.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_19;
      }

      goto LABEL_4;
    }

LABEL_6:
    v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    if (v5.__d_.__rep_ >= v6)
    {
      goto LABEL_20;
    }
  }

  v11 = 1;
  if (__lk.__owns_)
  {
LABEL_21:
    std::mutex::unlock(__lk.__m_);
  }

LABEL_22:
  if ((v11 & 1) == 0)
  {
    ACFULogging::getLogInstance(v5.__d_.__rep_);
    goto LABEL_24;
  }
}

uint64_t std::__function::__func<DaleBooter::boot(ACFUErrorCode &)::$_0,std::allocator<DaleBooter::boot(ACFUErrorCode &)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10DaleBooter4bootER13ACFUErrorCodeE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10DaleBooter4bootER13ACFUErrorCodeE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10DaleBooter4bootER13ACFUErrorCodeE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10DaleBooter4bootER13ACFUErrorCodeE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t __cxx_global_var_init_29()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

const char *DaleImage::sImageTypeToString(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return "???";
  }

  else
  {
    return off_1E876E8F0[a1];
  }
}

uint64_t DaleImage::create@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  *a2 = 0;
  v5 = operator new(0x40uLL);
  v9 = *a1;
  v10 = *(a1 + 4);
  v11[0] = 0;
  v13 = 0;
  v6 = *(a1 + 40);
  if (v6 == 1)
  {
    v12 = -1;
    v2 = *(a1 + 32);
    if (v2 != -1)
    {
      v14 = v11;
      v15 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISK_LNS0_6_TraitE1EEEEEvRSL_OT_EUlSU_E_JRKNS0_6__baseILSO_1EJSD_SJ_EEEEEEDcST_DpT0_;
      v16 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISK_LNS0_6_TraitE1EEEEEvRSL_OT_EUlSU_E_JRKNS0_6__baseILSO_1EJSD_SJ_EEEEEEDcST_DpT0_;
      (*(&v15 + v2))(&v14, a1 + 8);
      v12 = v2;
    }

    v13 = 1;
  }

  *v5 = &unk_1F5F04240;
  *(v5 + 2) = v9;
  v5[12] = v10;
  v5[16] = 0;
  v5[48] = 0;
  if (v6)
  {
    *(v5 + 10) = -1;
    if (v2 == -1)
    {
      v5[48] = 1;
      *(v5 + 7) = 0;
    }

    else
    {
      v14 = v5 + 16;
      v15 = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::string,ctu::cf::CFSharedRef<__CFData const>> &&>;
      v16 = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::string,ctu::cf::CFSharedRef<__CFData const>> &&>;
      (*(&v15 + v2))(&v14, v11);
      *(v5 + 10) = v2;
      v7 = v13;
      v5[48] = 1;
      *(v5 + 7) = 0;
      if ((v7 & 1) == 0)
      {
        goto LABEL_14;
      }

      if (v12 != -1)
      {
        v15 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
        v16 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
        (*(&v15 + v12))(&v14, v11);
      }
    }

    v12 = -1;
  }

  else
  {
    *(v5 + 7) = 0;
  }

LABEL_14:
  result = (*(*v5 + 16))(v5);
  if (result)
  {
    *a2 = v5;
  }

  else
  {
    ACFULogging::getLogInstance(result);
    DaleImage::sImageTypeToString(*a1);
    ACFULogging::handleMessage();
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void sub_1E531C040(_Unwind_Exception *a1)
{
  v5 = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>::~__move_constructor[abi:ne200100](v3);
  std::__optional_destruct_base<std::variant<std::string,ctu::cf::CFSharedRef<__CFData const>>,false>::~__optional_destruct_base[abi:ne200100](v5);
  operator delete(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

void sub_1E531C06C(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t DaleImage::DaleImage(uint64_t result, int *a2)
{
  *result = &unk_1F5F04240;
  v2 = *(a2 + 4);
  v3 = *a2;
  *(result + 16) = 0;
  *(result + 8) = v3;
  *(result + 12) = v2;
  *(result + 48) = 0;
  if (*(a2 + 40) == 1)
  {
    *(result + 40) = -1;
    v4 = a2[8];
    if (v4 != -1)
    {
      v5 = result;
      v6 = result + 16;
      v7[0] = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::string,ctu::cf::CFSharedRef<__CFData const>> &&>;
      v7[1] = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::string,ctu::cf::CFSharedRef<__CFData const>> &&>;
      (v7[v4])(&v6, a2 + 2);
      result = v5;
      *(v5 + 40) = v4;
    }

    *(result + 48) = 1;
  }

  *(result + 56) = 0;
  return result;
}

BOOL DaleImage::load(DaleImage *this)
{
  if (!*(this + 2))
  {
    goto LABEL_64;
  }

  if (*(this + 48) != 1)
  {
    if (*(this + 12))
    {
      return 1;
    }

LABEL_64:
    ACFULogging::getLogInstance(this);
    goto LABEL_65;
  }

  v2 = (this + 16);
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    v4 = MEMORY[0x1E6926300]();
    operator delete(v4);
  }

  v5 = *(this + 10);
  ACFULogging::getLogInstance(v3);
  v6 = *(this + 2);
  if (v5)
  {
    if (v6 <= 0xA)
    {
      v7 = off_1E876E8F0[v6];
    }

    v9 = ACFULogging::handleMessage();
    if (*(this + 10) == 1)
    {
      if (!*v2 && (*(this + 12) & 1) == 0)
      {
        ACFULogging::getLogInstance(v9);
        DaleImage::sImageTypeToString(*(this + 2));
LABEL_65:
        ACFULogging::handleMessage();
        return 0;
      }

      return 1;
    }

LABEL_75:
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (v6 <= 0xA)
  {
    v8 = off_1E876E8F0[v6];
  }

  ACFULogging::handleMessage();
  if (*(this + 10))
  {
    goto LABEL_75;
  }

  v10 = this + 16;
  if (*(this + 39) < 0)
  {
    v10 = *v2;
  }

  v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v10, 0x8000100u);
  v12 = v11;
  v13 = *(this + 39);
  if ((v13 & 0x8000000000000000) == 0)
  {
    if (*(this + 39))
    {
      goto LABEL_21;
    }

LABEL_44:
    ACFULogging::getLogInstance(v11);
    DaleImage::sImageTypeToString(*(this + 2));
    ACFULogging::handleMessage();
    if (!v12)
    {
      return 0;
    }

    goto LABEL_56;
  }

  if (!*(this + 3))
  {
    goto LABEL_44;
  }

LABEL_21:
  if (!v11)
  {
    ACFULogging::getLogInstance(0);
    DaleImage::sImageTypeToString(*(this + 2));
    ACFULogging::handleMessage();
    return 0;
  }

  if (v13 >= 0)
  {
    v15 = *(this + 39);
  }

  else
  {
    v14 = *(this + 2);
    v15 = *(this + 3);
  }

  v16 = ctu::fs::file_exists();
  if ((v16 & 1) == 0)
  {
    if (*(this + 12))
    {
LABEL_40:
      v25 = 1;
      goto LABEL_41;
    }

    ACFULogging::getLogInstance(v16);
    DaleImage::sImageTypeToString(*(this + 2));
    if (*(this + 39) < 0)
    {
      v36 = *v2;
    }

    goto LABEL_55;
  }

  v17 = *(this + 39);
  if (v17 < 0)
  {
    v18 = *(this + 2);
  }

  if (v17 >= 0)
  {
    v19 = *(this + 39);
  }

  else
  {
    v19 = *(this + 3);
  }

  is_directory = ctu::fs::is_directory();
  if (is_directory)
  {
    ACFULogging::getLogInstance(is_directory);
    DaleImage::sImageTypeToString(*(this + 2));
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v21 = *(this + 39);
    if (v21 < 0)
    {
      v22 = *(this + 2);
    }

    if (v21 >= 0)
    {
      v23 = *(this + 39);
    }

    else
    {
      v23 = *(this + 3);
    }

    file_size = ctu::fs::get_file_size();
    if (file_size)
    {
      if (*(this + 12) == 1)
      {
        ACFULogging::getLogInstance(file_size);
        v27 = *(this + 2);
        if (v27 <= 0xA)
        {
          v28 = off_1E876E8F0[v27];
        }

        if (*(this + 39) < 0)
        {
          v32 = *v2;
        }

        ACFULogging::handleMessage();
        v33 = *(this + 39);
        if (v33 < 0)
        {
          v34 = *(this + 2);
        }

        if (v33 >= 0)
        {
          v35 = *(this + 39);
        }

        else
        {
          v35 = *(this + 3);
        }

        ctu::fs::remove_file();
        goto LABEL_40;
      }

      ACFULogging::getLogInstance(file_size);
      v29 = *(this + 2);
      if (v29 <= 0xA)
      {
        v30 = off_1E876E8F0[v29];
      }

      if ((*(this + 39) & 0x80000000) == 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      ACFULogging::getLogInstance(file_size);
      DaleImage::sImageTypeToString(*(this + 2));
      if ((*(this + 39) & 0x80000000) == 0)
      {
        goto LABEL_55;
      }
    }
  }

  v31 = *v2;
LABEL_55:
  ACFULogging::handleMessage();
LABEL_56:
  v25 = 0;
LABEL_41:
  CFRelease(v12);
  return (v25 & 1) != 0;
}

void sub_1E531C64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E531C664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E531C678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<std::variant<std::string,ctu::cf::CFSharedRef<__CFData const>>>::operator=[abi:ne200100]<std::variant<std::string,ctu::cf::CFSharedRef<__CFData const>>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 1)
  {
    v3 = *(a1 + 24);
    v4 = *(a2 + 24);
    if (v3 == -1)
    {
      if (v4 == -1)
      {
        return a1;
      }
    }

    else if (v4 == -1)
    {
      v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      (*(&v8 + v3))(&v7, a1, a2);
      *(a1 + 24) = -1;
      return a1;
    }

    v7 = a1;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISK_LNS0_6_TraitE1EEEEEvOT_EUlRSQ_OT0_E_JRNS0_6__baseILSO_1EJSD_SJ_EEEOSY_EEEDcSQ_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISK_LNS0_6_TraitE1EEEEEvOT_EUlRSQ_OT0_E_JRNS0_6__baseILSO_1EJSD_SJ_EEEOSY_EEEDcSQ_DpT0_;
    (*(&v8 + v4))(&v7, a1, a2);
    return a1;
  }

  *a1 = 0;
  *(a1 + 24) = -1;
  v6 = *(a2 + 24);
  if (v6 != -1)
  {
    v7 = a1;
    v8 = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::string,ctu::cf::CFSharedRef<__CFData const>> &&>;
    v9 = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::string,ctu::cf::CFSharedRef<__CFData const>> &&>;
    (*(&v8 + v6))(&v7, a2);
    *(a1 + 24) = v6;
  }

  *(a1 + 32) = 1;
  return a1;
}

void DaleImage::getData(unint64_t this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ACFUDataContainer::DirectDataRef **a4@<X8>)
{
  v6 = this;
  *a4 = 0;
  v25 = 0;
  if (!a3 || (this = DaleImage::getSize(this), a3 + a2 > this))
  {
    ACFULogging::getLogInstance(this);
    DaleImage::sImageTypeToString(*(v6 + 2));
    ACFULogging::handleMessage();
    return;
  }

  if ((*(v6 + 48) & 1) == 0)
  {
    goto LABEL_38;
  }

  v8 = *(v6 + 10);
  if (!v8)
  {
    v22 = *(v6 + 7);
    if (v22)
    {
LABEL_27:
      ACFUDataContainer::copyDirectData(v22);
      *a4 = cf;
      return;
    }

    this = DaleImage::load(v6);
    if (this)
    {
      v22 = *(v6 + 7);
      if (v22)
      {
        goto LABEL_27;
      }

      ACFULogging::getLogInstance(0);
LABEL_39:
      DaleImage::sImageTypeToString(*(v6 + 2));
      ACFULogging::handleMessage();
      return;
    }

LABEL_38:
    ACFULogging::getLogInstance(this);
    goto LABEL_39;
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  if (v8 != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v9 = (v6 + 16);
  v10 = *(v6 + 2);
  cf = v10;
  if (v10)
  {
    CFRetain(v10);
    v11 = cf;
    goto LABEL_17;
  }

  v12 = DaleImage::load(v6);
  if (!v12)
  {
    ACFULogging::getLogInstance(v12);
    DaleImage::sImageTypeToString(*(v6 + 2));
    goto LABEL_35;
  }

  if (*(v6 + 10) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (&cf != v9)
  {
    v11 = *v9;
    if (*v9)
    {
      v13 = *v9;
      CFRetain(v11);
      v11 = v13;
    }

    v14 = cf;
    cf = v11;
    if (!v14)
    {
      goto LABEL_16;
    }

    CFRelease(v14);
  }

  v11 = cf;
LABEL_16:
  if (v11)
  {
LABEL_17:
    BytePtr = CFDataGetBytePtr(v11);
    v16 = operator new(0x18uLL);
    ACFUDataContainer::DirectDataRef::DirectDataRef(v16, BytePtr);
    v17 = v25;
    v25 = v16;
    if (v17)
    {
      v18 = MEMORY[0x1E69262B0]();
      operator delete(v18);
    }

    v19 = 1;
    v20 = cf;
    if (cf)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  ACFULogging::getLogInstance(0);
  DaleImage::sImageTypeToString(*(v6 + 2));
LABEL_35:
  ACFULogging::handleMessage();
  v16 = 0;
  v19 = 0;
  v20 = cf;
  if (cf)
  {
LABEL_20:
    CFRelease(v20);
  }

LABEL_21:
  if (v19)
  {
    v21 = *a4;
    *a4 = v16;
    if (!v21)
    {
      return;
    }

LABEL_30:
    v23 = MEMORY[0x1E69262B0](v21);
    operator delete(v23);
    return;
  }

  if (v16)
  {
    v21 = v16;
    goto LABEL_30;
  }
}

void sub_1E531CAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::unique_ptr<ACFUDataContainer::DirectDataRef>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<ACFUDataContainer::DirectDataRef>::~unique_ptr[abi:ne200100](v8);
  _Unwind_Resume(a1);
}

CFIndex DaleImage::getSize(DaleImage *this)
{
  if (*(this + 48) != 1)
  {
    return 0;
  }

  v1 = *(this + 10);
  if (v1)
  {
    if (v1 != 1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v2 = *(this + 2);
    if (v2)
    {
      CFRetain(v2);
      Length = CFDataGetLength(v2);
      CFRelease(v2);
      return Length;
    }

    return 0;
  }

  v5 = *(this + 7);
  if (!v5)
  {
    DaleImage::load(this);
    v5 = *(this + 7);
    if (!v5)
    {
      return 0;
    }
  }

  return MEMORY[0x1EEDED3C0](v5);
}

void sub_1E531CBF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void DaleImage::~DaleImage(DaleImage *this)
{
  *this = &unk_1F5F04240;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    v3 = MEMORY[0x1E6926300]();
    operator delete(v3);
  }

  if (*(this + 48) == 1)
  {
    v4 = *(this + 10);
    if (v4 != -1)
    {
      v6[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v6[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      (v6[v4])(&v5, this + 16);
    }

    *(this + 10) = -1;
  }
}

{
  *this = &unk_1F5F04240;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    v3 = MEMORY[0x1E6926300]();
    operator delete(v3);
  }

  if (*(this + 48) == 1)
  {
    v4 = *(this + 10);
    if (v4 != -1)
    {
      v6[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v6[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      (v6[v4])(&v5, this + 16);
    }
  }

  operator delete(this);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISK_LNS0_6_TraitE1EEEEEvRSL_OT_EUlSU_E_JRKNS0_6__baseILSO_1EJSD_SJ_EEEEEEDcST_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

CFTypeRef _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISK_LNS0_6_TraitE1EEEEEvRSL_OT_EUlSU_E_JRKNS0_6__baseILSO_1EJSD_SJ_EEEEEEDcST_DpT0_(CFTypeRef **a1, CFTypeRef *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = *a2;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>::~__move_constructor[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v5[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    v5[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    (v5[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t std::__optional_destruct_base<std::variant<std::string,ctu::cf::CFSharedRef<__CFData const>>,false>::~__optional_destruct_base[abi:ne200100](uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 != -1)
    {
      v4[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v4[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v2 = result;
      (v4[v1])(&v3);
      result = v2;
    }

    *(result + 24) = -1;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::string,ctu::cf::CFSharedRef<__CFData const>> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::string,ctu::cf::CFSharedRef<__CFData const>> &&>(void **result, void *a2)
{
  v2 = *result;
  *v2 = 0;
  *v2 = *a2;
  *a2 = 0;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISK_LNS0_6_TraitE1EEEEEvOT_EUlRSQ_OT0_E_JRNS0_6__baseILSO_1EJSD_SJ_EEEOSY_EEEDcSQ_DpT0_(__n128 **a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[1].n128_u32[2];
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    v9[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    v9[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    (v9[v5])(&v8, v4);
LABEL_7:
    v4[1].n128_u32[2] = -1;
    result = *a3;
    v4[1].n128_u64[0] = a3[1].n128_u64[0];
    *v4 = result;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    a3->n128_u64[0] = 0;
    v4[1].n128_u32[2] = 0;
    return result;
  }

  if (*(a2 + 23) < 0)
  {
    v6 = a2;
    operator delete(*a2);
    a2 = v6;
  }

  result = *a3;
  *(a2 + 16) = a3[1].n128_u64[0];
  *a2 = result;
  a3[1].n128_u8[7] = 0;
  a3->n128_u8[0] = 0;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISK_LNS0_6_TraitE1EEEEEvOT_EUlRSQ_OT0_E_JRNS0_6__baseILSO_1EJSD_SJ_EEEOSY_EEEDcSQ_DpT0_(uint64_t *a1, const void **a2, const void **a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (v4 == -1)
  {
    goto LABEL_8;
  }

  if (v4 != 1)
  {
    v6 = a3;
    v8[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    v8[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    (v8[v4])(&v7, v3);
    a3 = v6;
LABEL_8:
    *v3 = 0;
    *v3 = *a3;
    *a3 = 0;
    *(v3 + 24) = 1;
    return;
  }

  if (a2 != a3)
  {
    v5 = *a2;
    *a2 = 0;
    *a2 = *a3;
    *a3 = 0;
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

uint64_t BBUEUR2Programmer::EUR2Item::EUR2Item(uint64_t a1, int a2, char **lpsrc)
{
  *(a1 + 8) = a2;
  *a1 = &unk_1F5F04278;
  *(a1 + 16) = 0;
  if (a2 != 8193)
  {
    if (a2 != 0x2000)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 85, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x39u, "Assertion failure(false && Invalid BBU Programmer item type.)", v12, v13, v14, v15);
LABEL_11:
    }

    if (lpsrc)
    {
      goto LABEL_7;
    }

LABEL_9:
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 66, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x3Cu, "Assertion failure(fImage && BBU Programmer item creation failed.)", v9, v10, v11, v15);
    goto LABEL_11;
  }

  if (!lpsrc)
  {
    goto LABEL_9;
  }

LABEL_7:
  v5 = **lpsrc;
  *(a1 + 16) = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  return a1;
}

uint64_t BBUEUR2Programmer::BBUEUR2Programmer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = BBUProgrammer::BBUProgrammer(a1, a2, a3, a4);
  *v5 = &unk_1F5F036B8;
  v6 = capabilities::programmer::connectAttemptCount(v5);
  *(a1 + 68) = v6;
  v7 = capabilities::programmer::connectTimeout(v6);
  *(a1 + 72) = v7;
  *(a1 + 76) = capabilities::programmer::commandTimeout(v7);
  *(a1 + 65) = 0;
  *(a1 + 80) = 0;
  *a1 = &unk_1F5F042B0;
  v8 = pthread_mutex_init((a1 + 88), 0);
  *(a1 + 4284) = 0;
  *(a1 + 4292) = 0;
  if (capabilities::coredump::getPersonality(v8) == 3)
  {
    v9 = 0x100000;
  }

  else
  {
    v9 = 0x40000;
  }

  *(a1 + 4288) = v9;
  if ((TelephonyUtilRingBufferInitialize() & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 95, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x68u, "Assertion failure(success && Failed to initialize ring buffer.)", v12, v13, v14, v15);
  }

  return a1;
}

void sub_1E531D318(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  pthread_mutex_destroy((v1 + 88));
  BBUICEProgrammer::~BBUICEProgrammer(v1);
  _Unwind_Resume(a1);
}

void BBUEUR2Programmer::~BBUEUR2Programmer(BBUEUR2Programmer *this)
{
  *this = &unk_1F5F042B0;
  pthread_mutex_destroy((this + 88));
  *this = &unk_1F5F04DD0;
  v2 = this + 40;
  for (i = *(this + 6); i != v2; i = *(i + 8))
  {
    v4 = *(i + 16);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  if (*(this + 7))
  {
    v5 = *(this + 6);
    v6 = *(*(this + 5) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 7) = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = *(v5 + 1);
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }
}

{
  *this = &unk_1F5F042B0;
  pthread_mutex_destroy((this + 88));
  *this = &unk_1F5F04DD0;
  v2 = this + 40;
  for (i = *(this + 6); i != v2; i = *(i + 8))
  {
    v4 = *(i + 16);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  if (*(this + 7))
  {
    v5 = *(this + 6);
    v6 = *(*(this + 5) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 7) = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = *(v5 + 1);
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  operator delete(this);
}

uint64_t BBUEUR2Programmer::connectForImage_nl(uint64_t a1, int *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  BBUFeedback::handleBeginQuickStep(*(a1 + 8), "Waiting for Hello");
  v38 = -1431655766;
  __p = 0;
  v36 = 0;
  v37 = 0;
  v4 = -8;
  do
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v45 = v6;
    v46 = v6;
    v43 = v6;
    v44 = v6;
    v41 = v6;
    v42 = v6;
    v39 = v6;
    v40 = v6;
    v7 = *(a1 + 16);
    if (ETLSAHCommandReceive() && ETLSAHCommandParseHello())
    {
      if (v38 != 256 && *(a1 + 4284) == 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = v38;
      }

      *a2 = v9;
      v10 = *(a1 + 4276);
      if ((ETLSAHCommandCreateHelloResponse() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0xAFu, "Assertion failure(success)", v31, v32, v33, v34);
      }

      v11 = *(a1 + 16);
      if (ETLSAHCommandSend())
      {
        v12 = 0;
        v13 = 0;
        goto LABEL_15;
      }
    }
  }

  while (!__CFADD__(v4++, 1));
  v13 = 3;
  v12 = 1;
LABEL_15:
  (*(**(a1 + 8) + 24))(*(a1 + 8), v13);
  if (v12)
  {
    goto LABEL_32;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_20;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    v17 = ETLSAHModeAsString();
    _BBULog(13, 1, "BBUProgrammer", &str_8_3, "Hello received boot mode:  %s\n", v18, v19, v20, v17);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

LABEL_20:
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  if (gBBULogVerbosity >= 1)
  {
    v21 = *a2;
    v22 = ETLSAHModeAsString();
    _BBULog(13, 1, "BBUProgrammer", &str_8_3, "Hello response boot mode:  %s\n", v23, v24, v25, v22);
  }

LABEL_23:
  v26 = HIBYTE(v37);
  if (v37 < 0)
  {
    v26 = v36;
  }

  if (v26)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_32;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      p_p = &__p;
      if (v37 < 0)
      {
        LOBYTE(p_p) = __p;
      }

      _BBULog(13, 1, "BBUProgrammer", &str_8_3, "Hello reserved fields:  %s\n", v14, v15, v16, p_p);
    }
  }

LABEL_32:
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p);
  }

  v28 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1E531D9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEUR2Programmer::disconnect(BBUEUR2Programmer *this)
{
  result = BBUProgrammer::disconnect(this);
  if (!result && *(this + 65) == 1)
  {
    *(this + 65) = 0;
  }

  return result;
}

uint64_t BBUEUR2Programmer::disconnectForImage_nl(BBUFeedback **this)
{
  v10 = *MEMORY[0x1E69E9840];
  BBUFeedback::handleBeginQuickStep(this[1], "Disconnecting");
  if (ETLSAHCommandCreateDone())
  {
    v2 = this[2];
    ETLSAHCommandSend();
  }

  v3 = this[2];
  if (!ETLSAHCommandReceive() || !ETLSAHCommandParseDoneResponse())
  {
    v7 = 3;
    goto LABEL_10;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v7 = 0;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v7 = 0;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_10;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(13, 0, "BBUProgrammer", &str_8_3, "Status was %u\n", v4, v5, v6, 170);
    v7 = 0;
  }

LABEL_10:
  (*(*this[1] + 24))(this[1], v7);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t BBUEUR2Programmer::gatherPersonalizationParameters(BBUFeedback **this, char a2, char a3, unsigned int *a4, BBUPersonalizationParameters *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v34 = -1431655766;
    BBUFeedback::handleBeginPhase(this[1], "Gathering Personalization parameters...");
    if ((*(*this + 23))(this, &v34))
    {
      Nonce_nl = 48;
    }

    else if (v34 == 2)
    {
      Nonce_nl = 28;
    }

    else if (v34 == 256)
    {
      v14 = operator new(0x20uLL);
      Nonce_nl = BBUEUR2Programmer::handleMaverickGetNonce_nl(this, a2);
      if (!Nonce_nl)
      {
        v15 = operator new(0x10uLL);
        *v15 = &unk_1F5F04B68;
        v15[1] = 0;
        v15[1] = CFDataCreate(*MEMORY[0x1E695E480], v14 + 4, 20);
        Nonce_nl = BBUEURPersonalizationParameters::EURChipID::createFromChipID(*(v14 + 7));
        v16 = BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber((v14 + 24), 0x20);
        *a4 = *v14;
        operator delete(v14);
        v17 = a5;
        v18 = *(a5 + 1);
        if (v18)
        {
          (*(*v18 + 8))(*(a5 + 1));
          v17 = a5;
        }

        *(v17 + 1) = v15;
        v19 = *(v17 + 2);
        if (v19)
        {
          (*(*v19 + 8))(*(v17 + 2));
          v17 = a5;
        }

        *(v17 + 2) = Nonce_nl;
        (*(*v17 + 16))(v17, v16);
        v20 = this[1];
        (*(*v15 + 24))(__p, v15);
        if (v33 >= 0)
        {
          v21 = __p;
        }

        else
        {
          v21 = __p[0];
        }

        BBUFeedback::handleComment(v20, "   NONCE: %s", v21);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }

        if (v16)
        {
          v22 = this[1];
          (*(*v16 + 24))(__p, v16);
          if (v33 >= 0)
          {
            v24 = __p;
          }

          else
          {
            v24 = __p[0];
          }

          v25 = BBUpdaterCommon::redactedString(v24, v23);
          BBUFeedback::handleComment(v22, "   SNUM: 0x%s", v25);
          v26 = a5;
          if (v33 < 0)
          {
            operator delete(__p[0]);
            v26 = a5;
          }

          v27 = this[1];
          v28 = (*(**(v26 + 3) + 24))(*(v26 + 3));
          BBUFeedback::handleComment(v27, "   CertID: %u", v28);
        }

        if (Nonce_nl)
        {
          v29 = this[1];
          v30 = (*(*Nonce_nl + 24))(Nonce_nl);
          BBUFeedback::handleComment(v29, "   CHIPID: 0x%08x", v30);
          Nonce_nl = 0;
        }
      }
    }

    else
    {
      Nonce_nl = 12;
    }

    (*(*this[1] + 16))(this[1], Nonce_nl);
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      Nonce_nl = 0;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        return Nonce_nl;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      Nonce_nl = 0;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        return Nonce_nl;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      _BBULog(13, 1, "BBUProgrammer", &str_8_3, "Not in restore mode - skipping gathering Personalization parameters...\n", a6, a7, a8, v31);
      return 0;
    }
  }

  return Nonce_nl;
}

void sub_1E531DFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEUR2Programmer::handleMaverickGetNonce_nl(uint64_t a1, char a2)
{
  v7 = operator new[](0x400uLL);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_5;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    _BBULog(13, 1, "BBUProgrammer", &str_8_3, "Starting Maverick Protocol\n", v4, v5, v6, v19);
  }

LABEL_5:
  v8 = *(a1 + 16);
  if (ETLSAHCommandReceive() && ETLSAHCommandParseMaverickEraseQuery() && ETLSAHCommandCreateMaverickEraseResponse())
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
      {
LABEL_10:
        if (gBBULogVerbosity >= 1)
        {
          v20 = *v7;
          _BBULog(13, 1, "BBUProgrammer", &str_8_3, "Sending Erase Response: Length %u Type %u  Erase EFS %u\n", v9, v10, v11, v7[1]);
        }
      }
    }

    v12 = *(a1 + 16);
    ETLSAHCommandSend();
    *(a1 + 65) = a2;
  }

  v13 = *(a1 + 16);
  if (!ETLSAHCommandReceive())
  {
    v17 = 3;
    goto LABEL_22;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
    {
LABEL_16:
      if (gBBULogVerbosity >= 1)
      {
        v21 = *v7;
        _BBULog(13, 1, "BBUProgrammer", &str_8_3, "Checking Manifest Request: Length %u Type %u\n", v14, v15, v16, v7[1]);
      }
    }
  }

  if (ETLSAHCommandParseMaverickRootManifestQuery())
  {
    v17 = 0;
  }

  else
  {
    v17 = 3;
  }

LABEL_22:
  operator delete[](v7);
  return v17;
}

uint64_t BBUEUR2Programmer::program(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, int a11, int a12)
{
  pthread_mutex_lock((a1 + 88));
  *(a1 + 4284) = a11;
  pthread_mutex_unlock((a1 + 88));
  if (BBUProgrammer::addItemsFromList(a1, a6))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 66, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x17Fu, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to add Programmer items from list.)", v26, v27, v28, v29);
  }

  v19 = (*(*a1 + 160))(a1, a2, a3, a4, a5, a7, a9, a10, a12);
  pthread_mutex_lock((a1 + 88));
  if (a6)
  {
    if (a6[2])
    {
      v20 = a6[1];
      v21 = *(*a6 + 8);
      v22 = *v20;
      *(v22 + 8) = v21;
      *v21 = v22;
      a6[2] = 0;
      if (v20 != a6)
      {
        do
        {
          v23 = v20[1];
          operator delete(v20);
          v20 = v23;
        }

        while (v23 != a6);
      }
    }

    operator delete(a6);
  }

  pthread_mutex_unlock((a1 + 88));
  return v19;
}

void sub_1E531E3DC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  pthread_mutex_unlock((v1 + 88));
  _Unwind_Resume(a1);
}

uint64_t BBUEUR2Programmer::sendImage_nl(BBUFeedback **a1, char **lpsrc, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = *MEMORY[0x1E69E9840];
  v42 = -1431655766;
  if (!lpsrc)
  {
    v16 = 0;
    (*(*MEMORY[0x10] + 16))(MEMORY[0x10]);
    if (a5)
    {
      goto LABEL_3;
    }

    while (1)
    {
LABEL_9:
      v23 = (*(*a1 + 23))(a1, &v42);
      if (v23)
      {
LABEL_51:
        v21 = v23;
        goto LABEL_59;
      }

      if (v42 != 256)
      {
        if (v42 == 2)
        {
          v21 = 28;
          goto LABEL_59;
        }

        v24 = v16[2];
        if (v24 == 0x2000)
        {
          v25 = 2;
          v26 = a1[1];
          if (*(v26 + 44) == 1)
          {
LABEL_15:
            *(v26 + 10) = v25;
          }

LABEL_16:
          v27 = 1;
        }

        else
        {
          if (v24 == 8193)
          {
            v25 = 5;
            v26 = a1[1];
            if (*(v26 + 44) == 1)
            {
              goto LABEL_15;
            }

            goto LABEL_16;
          }

          v27 = 0;
        }

        v21 = (*(*a1 + 22))(a1, *(v16 + 2), v27);
        if (v27)
        {
          BBUFeedback::endProgressBarItem(a1[1]);
        }

        v35 = 1;
        if (v21)
        {
          goto LABEL_59;
        }

        goto LABEL_40;
      }

      *&v28 = 0xAAAAAAAAAAAAAAAALL;
      *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v43 = v28;
      v44 = v28;
      Nonce_nl = BBUEUR2Programmer::handleMaverickGetNonce_nl(a1, a7);
      if (Nonce_nl)
      {
        v21 = Nonce_nl;
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
          {
            goto LABEL_39;
          }
        }

        v33 = "failed getting nonce\n";
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v34 = (*(*a1 + 24))(a1, a3, v43, a6, a7, 0, a8);
        if (v34)
        {
          v21 = v34;
          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
            {
              goto LABEL_39;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
            {
              goto LABEL_39;
            }
          }

          v33 = "failed handling sahara send hashes command\n";
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v21 = (*(*a1 + 25))(a1);
          if (!v21)
          {
            goto LABEL_39;
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
            {
              goto LABEL_39;
            }

LABEL_37:
            v33 = "failed handling maverick end\n";
            if (gBBULogVerbosity < 0)
            {
              goto LABEL_39;
            }

LABEL_38:
            _BBULog(5, 0, "BBUProgrammer", &str_8_3, v33, v30, v31, v32, v41);
            goto LABEL_39;
          }

          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
          {
            goto LABEL_37;
          }
        }
      }

LABEL_39:
      v35 = 0;
      if (v21)
      {
        goto LABEL_59;
      }

LABEL_40:
      v23 = BBUEUR2Programmer::disconnectForImage_nl(a1);
      if (v23)
      {
        v36 = 1;
      }

      else
      {
        v36 = v35;
      }

      if (v36 == 1)
      {
        goto LABEL_51;
      }
    }
  }

  v15 = **lpsrc;
  (*(**(v16 + 2) + 16))(*(v16 + 2));
  if ((a5 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v17 = (*(*a1 + 24))(a1, a3, a4, a6, a7, 1, a8);
  if (v17)
  {
    v21 = v17;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_6;
    }

    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
    {
LABEL_6:
      if (gBBULogVerbosity < 0)
      {
        goto LABEL_59;
      }

      v22 = "failed handling sahara send hashes command\n";
LABEL_57:
      _BBULog(5, 0, "BBUProgrammer", &str_8_3, v22, v18, v19, v20, v41);
      goto LABEL_59;
    }

    goto LABEL_59;
  }

  v37 = (*(*a1 + 25))(a1);
  if (v37)
  {
    v21 = v37;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
LABEL_59:
        v38 = *MEMORY[0x1E69E9840];
        return v21;
      }
    }

    if (gBBULogVerbosity < 0)
    {
      goto LABEL_59;
    }

    v22 = "failed handling maverick end\n";
    goto LABEL_57;
  }

  v40 = *MEMORY[0x1E69E9840];

  return BBUEUR2Programmer::disconnectForImage_nl(a1);
}

uint64_t BBUEUR2Programmer::collectCoreDump(std::string::size_type a1, const char *a2)
{
  v125[2] = *MEMORY[0x1E69E9840];
  if (capabilities::coredump::getPersonality(a1) == 3)
  {
    if (a2[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v110, *a2, *(a2 + 1));
    }

    else
    {
      v110 = *a2;
    }

    v44 = operator new[](0x10000uLL);
    v111 = 0;
    BBUFeedback::handleBeginPhase(*(a1 + 8), "Collecting core dump...");
    v45 = *(a1 + 16);
    if (ETLSAHGetDebugRecordCount64Bit())
    {
      if (v111 >> 58)
      {
        v46 = -1;
      }

      else
      {
        v46 = v111 << 6;
      }

      v47 = operator new[](v46);
      v48 = *(a1 + 16);
      v49 = ETLSAHGetDebugTable64Bit();
      if (((v111 != 0) & v49) == 1)
      {
        v105 = v44;
        v50 = 0;
        v103 = v47;
        v51 = v47;
        while (1)
        {
          BBUFeedback::handleComment(*(a1 + 8), "Record %llu: Preference 0x%x, Base 0x%llx, Length 0x%llx", v50, *v51, *(v51 + 1), *(v51 + 2));
          BBUFeedback::handleComment(*(a1 + 8), "\tDescription: '%s', Filename '%s'", v51 + 24, v51 + 44);
          if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v124, v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
          }

          else
          {
            v124 = v110;
          }

          v123 = 0xAAAAAAAAAAAAAAAALL;
          *&v52 = 0xAAAAAAAAAAAAAAAALL;
          *(&v52 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v121[16] = v52;
          v122 = v52;
          v120 = v52;
          *v121 = v52;
          v119 = v52;
          __p = 0;
          v118 = 0uLL;
          v53 = SHIBYTE(v124.__r_.__value_.__r.__words[2]);
          if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v124.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v124.__r_.__value_.__l.__size_;
          }

          v55 = size + 1;
          if (size + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v55 < 0x17)
          {
            memset(&v115, 0, sizeof(v115));
            v57 = &v115;
            *(&v115.__r_.__value_.__s + 23) = size + 1;
            if (!size)
            {
              goto LABEL_104;
            }
          }

          else
          {
            if ((v55 | 7) == 0x17)
            {
              v56 = 25;
            }

            else
            {
              v56 = (v55 | 7) + 1;
            }

            v57 = operator new(v56);
            v115.__r_.__value_.__l.__size_ = size + 1;
            v115.__r_.__value_.__r.__words[2] = v56 | 0x8000000000000000;
            v115.__r_.__value_.__r.__words[0] = v57;
          }

          if (v53 >= 0)
          {
            v58 = &v124;
          }

          else
          {
            v58 = v124.__r_.__value_.__r.__words[0];
          }

          memmove(v57, v58, size);
LABEL_104:
          *&v57[size] = 47;
          v59 = strlen(v51 + 44);
          v60 = std::string::append(&v115, v51 + 44, v59);
          v61 = v60->__r_.__value_.__r.__words[0];
          v125[0] = v60->__r_.__value_.__l.__size_;
          *(v125 + 7) = *(&v60->__r_.__value_.__r.__words[1] + 7);
          v62 = HIBYTE(v60->__r_.__value_.__r.__words[2]);
          v60->__r_.__value_.__l.__size_ = 0;
          v60->__r_.__value_.__r.__words[2] = 0;
          v60->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v118) < 0)
          {
            operator delete(__p);
          }

          __p = v61;
          *&v118 = v125[0];
          *(&v118 + 7) = *(v125 + 7);
          HIBYTE(v118) = v62;
          if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v115.__r_.__value_.__l.__data_);
            v62 = HIBYTE(v118);
            v61 = __p;
          }

          if (v62 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = v61;
          }

          v64 = open_dprotected_np(p_p, 1793, 4, 0, 420);
          if ((v64 & 0x80000000) == 0)
          {
            if (TelephonyUtilTransportCreateWithFD())
            {
              v68 = *(v51 + 2);
              v115.__r_.__value_.__r.__words[0] = 0;
              v115.__r_.__value_.__l.__size_ = a1;
              v115.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
              v116 = 0;
              if (v68 >= 0x28000)
              {
                v78 = v68 >> 15;
                if (v78 <= 0x64)
                {
                  v69 = 0x64 / v78;
                }

                else
                {
                  LODWORD(v69) = 1;
                }
              }

              else
              {
                LODWORD(v69) = 20;
              }

              LODWORD(v115.__r_.__value_.__r.__words[2]) = v69;
              v112.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
              v112.__r_.__value_.__l.__size_ = 0x40000000;
              v112.__r_.__value_.__r.__words[2] = ___ZN17BBUEUR2Programmer21captureRecord64Bit_nlENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEPK33ETLSAHDebugDataFieldRecord64Bit_t_block_invoke;
              v113 = &__block_descriptor_tmp_47_0;
              v114 = a1;
              v79 = *(a1 + 16);
              v80 = *(a1 + 4288);
              v84 = ETLSAHGetRecordEx64Bit();
              if ((v84 & 1) == 0)
              {
                if (gBBULogMaskGet(void)::once == -1)
                {
                  if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
                  {
LABEL_132:
                    if ((gBBULogVerbosity & 0x80000000) == 0)
                    {
                      _BBULog(1, 0, "BBUProgrammer", &str_8_3, "failed getting record\n", v81, v82, v83, v100);
                    }
                  }
                }

                else
                {
                  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                  if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
                  {
                    goto LABEL_132;
                  }
                }
              }

              v70 = v84 ^ 1;
LABEL_135:
              close(v64);
              TelephonyUtilTransportFree();
              goto LABEL_136;
            }

            if (gBBULogMaskGet(void)::once == -1)
            {
              v70 = 1;
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
              {
                goto LABEL_135;
              }
            }

            else
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              v70 = 1;
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
              {
                goto LABEL_135;
              }
            }

            if ((gBBULogVerbosity & 0x80000000) == 0)
            {
              _BBULog(1, 0, "BBUProgrammer", &str_8_3, "failed creating transport with fd %i\n", v65, v66, v67, v64);
            }

            goto LABEL_135;
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            v70 = 1;
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
            {
              goto LABEL_136;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            v70 = 1;
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
            {
              goto LABEL_136;
            }
          }

          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            v71 = SHIBYTE(v118);
            v72 = __p;
            v73 = __error();
            if (v71 >= 0)
            {
              v77 = &__p;
            }

            else
            {
              LOBYTE(v77) = v72;
            }

            v102 = *v73;
            _BBULog(1, 0, "BBUProgrammer", &str_8_3, "failed opening file %s with fd %i errno %d\n", v74, v75, v76, v77);
          }

LABEL_136:
          if (SHIBYTE(v118) < 0)
          {
            operator delete(__p);
            if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_141:
              operator delete(v124.__r_.__value_.__l.__data_);
              v49 = v70 == 0;
              if (++v50 >= v111)
              {
                goto LABEL_161;
              }

              goto LABEL_142;
            }
          }

          else if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_141;
          }

          v49 = v70 == 0;
          if (++v50 >= v111)
          {
            goto LABEL_161;
          }

LABEL_142:
          v51 += 64;
          if (v70)
          {
LABEL_161:
            v47 = v103;
            v44 = v105;
            if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS != -1)
            {
LABEL_162:
              dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
              if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
              {
LABEL_163:
                dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
                if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
                {
LABEL_155:
                  BBUFeedback::handleComment(*(a1 + 8), "Parsing crash reason...");
                  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v112, v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v112 = v110;
                  }

                  (*(*a1 + 208))(a1, &v112);
                  if ((SHIBYTE(v112.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_191;
                  }

                  operator delete(v112.__r_.__value_.__l.__data_);
                  if (!v49)
                  {
                    goto LABEL_195;
                  }

LABEL_192:
                  if (!ETLSAHCommandCreateReset())
                  {
                    goto LABEL_195;
                  }

                  v94 = *(a1 + 16);
                  v95 = ETLSAHCommandSend();
                  goto LABEL_196;
                }

LABEL_154:
                if (BBUpdaterCommon::inRestoreOS(void)::recoveryOS)
                {
                  goto LABEL_155;
                }

LABEL_191:
                if (v49)
                {
                  goto LABEL_192;
                }

LABEL_195:
                v95 = 0;
LABEL_196:
                if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v96 = &v110;
                }

                else
                {
                  v96 = v110.__r_.__value_.__r.__words[0];
                }

                BBUFeedback::handleComment(*(a1 + 8), "Final coredump at %s:", v96);
                *&v119 = MEMORY[0x1E69E9820];
                *(&v119 + 1) = 1174405120;
                *&v120 = ___ZN17BBUEUR2Programmer20collectCoreDump64BitENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
                *(&v120 + 1) = &__block_descriptor_tmp_38;
                *v121 = a1;
                if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                {
                  std::string::__init_copy_ctor_external(&v121[8], v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
                }

                else
                {
                  *&v121[8] = v110;
                }

                ctu::fs::iterate_folder();
                if (v95)
                {
                  v92 = v70;
                }

                else
                {
                  v92 = 3;
                }

                operator delete[](v44);
                if (v47)
                {
                  operator delete[](v47);
                }

                (*(**(a1 + 8) + 16))(*(a1 + 8), v92);
                if ((v121[31] & 0x80000000) != 0)
                {
                  operator delete(*&v121[8]);
                  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_211;
                  }
                }

                else if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
                {
LABEL_211:
                  v93 = v110.__r_.__value_.__r.__words[0];
LABEL_212:
                  operator delete(v93);
                }

                goto LABEL_213;
              }

LABEL_153:
              if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
              {
                goto LABEL_155;
              }

              goto LABEL_154;
            }

LABEL_152:
            if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
            {
              goto LABEL_163;
            }

            goto LABEL_153;
          }
        }
      }
    }

    else
    {
      BBUFeedback::handleComment(*(a1 + 8), "Failed to get debug table\n");
      v47 = 0;
      v49 = 0;
    }

    v70 = 0;
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS != -1)
    {
      goto LABEL_162;
    }

    goto LABEL_152;
  }

  v4 = operator new[](0x10000uLL);
  LODWORD(v125[0]) = -1431655766;
  BBUFeedback::handleBeginPhase(*(a1 + 8), "Collecting core dump...");
  v5 = *(a1 + 16);
  v104 = v4;
  if ((ETLSAHGetDebugRecordCount() & 1) == 0)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Failed to get debug table\n");
    v106 = 0;
    v29 = 0;
    v8 = 0;
LABEL_74:
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS != -1)
    {
      goto LABEL_158;
    }

LABEL_75:
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
    {
      goto LABEL_159;
    }

    goto LABEL_76;
  }

  if (is_mul_ok(SLODWORD(v125[0]), 0x34uLL))
  {
    v6 = 52 * SLODWORD(v125[0]);
  }

  else
  {
    v6 = -1;
  }

  v106 = operator new[](v6);
  v7 = *(a1 + 16);
  v8 = ETLSAHGetDebugTable();
  if (((SLODWORD(v125[0]) > 0) & v8) == 1)
  {
    v9 = 1;
    v10 = v106;
    while (1)
    {
      BBUFeedback::handleComment(*(a1 + 8), "Record %u: Preference 0x%x, Base 0x%x, Length 0x%x", v9 - 1, *v10, *(v10 + 1), *(v10 + 2));
      BBUFeedback::handleComment(*(a1 + 8), "\tDescription: '%s', Filename '%s'", v10 + 12, v10 + 32);
      if (a2[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v109, *a2, *(a2 + 1));
      }

      else
      {
        v109 = *a2;
      }

      v123 = 0xAAAAAAAAAAAAAAAALL;
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v121[16] = v11;
      v122 = v11;
      v120 = v11;
      *v121 = v11;
      v119 = v11;
      __p = 0;
      v118 = 0uLL;
      v12 = SHIBYTE(v109.__r_.__value_.__r.__words[2]);
      if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(v109.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = v109.__r_.__value_.__l.__size_;
      }

      v14 = v13 + 1;
      if (v13 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v14 < 0x17)
      {
        memset(&v115, 0, sizeof(v115));
        v16 = &v115;
        *(&v115.__r_.__value_.__s + 23) = v13 + 1;
        if (!v13)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if ((v14 | 7) == 0x17)
        {
          v15 = 25;
        }

        else
        {
          v15 = (v14 | 7) + 1;
        }

        v16 = operator new(v15);
        v115.__r_.__value_.__l.__size_ = v13 + 1;
        v115.__r_.__value_.__r.__words[2] = v15 | 0x8000000000000000;
        v115.__r_.__value_.__r.__words[0] = v16;
      }

      if (v12 >= 0)
      {
        v17 = &v109;
      }

      else
      {
        v17 = v109.__r_.__value_.__r.__words[0];
      }

      memmove(v16, v17, v13);
LABEL_27:
      *&v16[v13] = 47;
      v18 = strlen(v10 + 32);
      v19 = std::string::append(&v115, v10 + 32, v18);
      v20 = v19->__r_.__value_.__r.__words[0];
      v124.__r_.__value_.__r.__words[0] = v19->__r_.__value_.__l.__size_;
      *(v124.__r_.__value_.__r.__words + 7) = *(&v19->__r_.__value_.__r.__words[1] + 7);
      v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v118) < 0)
      {
        operator delete(__p);
      }

      __p = v20;
      *&v118 = v124.__r_.__value_.__r.__words[0];
      *(&v118 + 7) = *(v124.__r_.__value_.__r.__words + 7);
      HIBYTE(v118) = v21;
      if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v115.__r_.__value_.__l.__data_);
        v21 = HIBYTE(v118);
        v20 = __p;
      }

      if (v21 >= 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = v20;
      }

      v23 = open_dprotected_np(v22, 1793, 4, 0, 420);
      if ((v23 & 0x80000000) == 0)
      {
        if (TelephonyUtilTransportCreateWithFD())
        {
          v27 = *(v10 + 2);
          v115.__r_.__value_.__r.__words[0] = 0;
          v115.__r_.__value_.__l.__size_ = a1;
          v115.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
          v116 = 0;
          if (v27 >= 0x28000)
          {
            v37 = v27 >> 15;
            if (v37 <= 0x64)
            {
              v28 = 0x64 / v37;
            }

            else
            {
              v28 = 1;
            }
          }

          else
          {
            v28 = 20;
          }

          LODWORD(v115.__r_.__value_.__r.__words[2]) = v28;
          v112.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
          v112.__r_.__value_.__l.__size_ = 0x40000000;
          v112.__r_.__value_.__r.__words[2] = ___ZN17BBUEUR2Programmer16captureRecord_nlENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEPK28ETLSAHDebugDataFieldRecord_t_block_invoke;
          v113 = &__block_descriptor_tmp_44;
          v114 = a1;
          v38 = *(a1 + 16);
          v39 = *(a1 + 4288);
          v43 = ETLSAHGetRecordEx();
          if ((v43 & 1) == 0)
          {
            if (gBBULogMaskGet(void)::once == -1)
            {
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
              {
LABEL_55:
                if ((gBBULogVerbosity & 0x80000000) == 0)
                {
                  _BBULog(1, 0, "BBUProgrammer", &str_8_3, "failed getting record\n", v40, v41, v42, v99);
                }
              }
            }

            else
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
              {
                goto LABEL_55;
              }
            }
          }

          v29 = v43 ^ 1;
LABEL_58:
          close(v23);
          TelephonyUtilTransportFree();
          goto LABEL_59;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          v29 = 1;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_58;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v29 = 1;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_58;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(1, 0, "BBUProgrammer", &str_8_3, "failed creating transport with fd %i\n", v24, v25, v26, v23);
        }

        goto LABEL_58;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        v29 = 1;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_59;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v29 = 1;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_59;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v30 = SHIBYTE(v118);
        v31 = __p;
        v32 = __error();
        if (v30 >= 0)
        {
          v36 = &__p;
        }

        else
        {
          LOBYTE(v36) = v31;
        }

        v101 = *v32;
        _BBULog(1, 0, "BBUProgrammer", &str_8_3, "failed opening file %s with fd %i errno %d\n", v33, v34, v35, v36);
      }

LABEL_59:
      if (SHIBYTE(v118) < 0)
      {
        operator delete(__p);
        if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_64:
          operator delete(v109.__r_.__value_.__l.__data_);
          v8 = v29 == 0;
          if (v9 >= SLODWORD(v125[0]))
          {
            goto LABEL_74;
          }

          goto LABEL_65;
        }
      }

      else if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_64;
      }

      v8 = v29 == 0;
      if (v9 >= SLODWORD(v125[0]))
      {
        goto LABEL_74;
      }

LABEL_65:
      ++v9;
      v10 += 52;
      if (v29)
      {
        goto LABEL_74;
      }
    }
  }

  v29 = 0;
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    goto LABEL_75;
  }

LABEL_158:
  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
  {
LABEL_159:
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_76:
  if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
  {
    goto LABEL_78;
  }

LABEL_77:
  if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0)
  {
    goto LABEL_167;
  }

LABEL_78:
  BBUFeedback::handleComment(*(a1 + 8), "Parsing crash reason...");
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v108, *a2, *(a2 + 1));
  }

  else
  {
    v108 = *a2;
  }

  (*(*a1 + 208))(a1, &v108);
  if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_167:
    if (!v8)
    {
      goto LABEL_172;
    }

    goto LABEL_168;
  }

  operator delete(v108.__r_.__value_.__l.__data_);
  if (!v8)
  {
LABEL_172:
    v86 = 0;
    v87 = *(a1 + 8);
    v88 = a2;
    if ((a2[23] & 0x80000000) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_173;
  }

LABEL_168:
  if (!ETLSAHCommandCreateReset())
  {
    goto LABEL_172;
  }

  v85 = *(a1 + 16);
  v86 = ETLSAHCommandSend();
  v87 = *(a1 + 8);
  v88 = a2;
  if ((a2[23] & 0x80000000) == 0)
  {
    goto LABEL_174;
  }

LABEL_173:
  v88 = *a2;
LABEL_174:
  BBUFeedback::handleComment(v87, "Final coredump at %s:", v88);
  v89 = a2[23];
  if (v89 < 0)
  {
    v90 = *a2;
  }

  if (v89 >= 0)
  {
    v91 = a2[23];
  }

  else
  {
    v91 = *(a2 + 1);
  }

  if (v89 < 0)
  {
    std::string::__init_copy_ctor_external(&v107, *a2, *(a2 + 1));
  }

  else
  {
    v107 = *a2;
  }

  ctu::fs::iterate_folder();
  if (v86)
  {
    v92 = v29;
  }

  else
  {
    v92 = 3;
  }

  operator delete[](v104);
  if (v106)
  {
    operator delete[](v106);
  }

  (*(**(a1 + 8) + 16))(*(a1 + 8), v92);
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    v93 = v107.__r_.__value_.__r.__words[0];
    goto LABEL_212;
  }

LABEL_213:
  v97 = *MEMORY[0x1E69E9840];
  return v92;
}