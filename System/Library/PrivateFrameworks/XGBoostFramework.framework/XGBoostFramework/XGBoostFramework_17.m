void sub_274DFCFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 11);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
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

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x277C69180);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 3);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

char *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 <= 0x71u)
  {
    if (*a2 > 0x65u)
    {
      if (v5 == 102)
      {
        if (!this)
        {
          v8 = 12;
          goto LABEL_69;
        }

        v9 = this;
        v8 = 12;
      }

      else
      {
        if (v5 != 110)
        {
          goto LABEL_64;
        }

        if (!this)
        {
          v8 = 10;
          goto LABEL_69;
        }

        v9 = this;
        v8 = 10;
      }
    }

    else
    {
      if (v5 != 48)
      {
        if (v5 == 99)
        {
          v4 = (a2 + 1);
          if (a2 + 1 == a3)
          {
            goto LABEL_72;
          }

          if (*v4 < 65)
          {
            goto LABEL_72;
          }

          v7 = *v4;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_72;
          }

          v8 = v7 & 0x1F;
          if (this)
          {
            goto LABEL_67;
          }

          goto LABEL_69;
        }

        if (v5 == 95)
        {
          goto LABEL_72;
        }

LABEL_64:
        if ((v5 & 0x80) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
        {
          goto LABEL_72;
        }

        v8 = *a2;
        if (this)
        {
LABEL_67:
          v9 = this;
          goto LABEL_68;
        }

LABEL_69:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
        return ++v4;
      }

      if (!this)
      {
        v8 = 0;
        goto LABEL_69;
      }

      v9 = this;
      v8 = 0;
    }

LABEL_68:
    std::string::operator=(v9, v8);
    return ++v4;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 == 114)
    {
      if (!this)
      {
        v8 = 13;
        goto LABEL_69;
      }

      v9 = this;
      v8 = 13;
    }

    else
    {
      if (v5 != 116)
      {
        goto LABEL_64;
      }

      if (!this)
      {
        v8 = 9;
        goto LABEL_69;
      }

      v9 = this;
      v8 = 9;
    }

    goto LABEL_68;
  }

  if (v5 != 117)
  {
    if (v5 != 118)
    {
      if (v5 == 120)
      {
        v6 = 0;
        goto LABEL_41;
      }

      goto LABEL_64;
    }

    if (!this)
    {
      v8 = 11;
      goto LABEL_69;
    }

    v9 = this;
    v8 = 11;
    goto LABEL_68;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_72;
  }

  v10 = a2[1];
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
  {
    goto LABEL_72;
  }

  v4 = (a2 + 2);
  if (a2 + 2 == a3)
  {
    goto LABEL_72;
  }

  v11 = *v4;
  v12 = -48;
  if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
  {
    v11 |= 0x20u;
    if ((v11 - 97) >= 6)
    {
      goto LABEL_72;
    }

    v12 = -87;
  }

  v6 = 16 * (v12 + v11);
LABEL_41:
  if (v4 + 1 == a3)
  {
    goto LABEL_72;
  }

  v13 = v4[1];
  v14 = -48;
  if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
  {
    v13 |= 0x20u;
    if ((v13 - 97) >= 6)
    {
      goto LABEL_72;
    }

    v14 = -87;
  }

  if (v4 + 2 == a3)
  {
LABEL_72:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v15 = v4[2];
  v16 = -48;
  if ((v15 & 0xF8) != 0x30 && (v15 & 0xFE) != 0x38)
  {
    v15 |= 0x20u;
    if ((v15 - 97) < 6)
    {
      v16 = -87;
      goto LABEL_51;
    }

    goto LABEL_72;
  }

LABEL_51:
  v17 = v15 + 16 * (v6 + v14 + v13) + v16;
  if (this)
  {
    std::string::operator=(this, v17);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
  }

  v4 += 3;
  return v4;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_274DFD7FC(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 2);
  locale = v2[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x277C69180](v2, v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 4);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2883E6A18;
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
  a1->__locale_ = &unk_2883E6A18;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x277C69180);
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
  a1->__locale_ = &unk_2883E6A60;
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
  a1->__locale_ = &unk_2883E6A60;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x277C69180);
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

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x277C69180);
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
  a1->__locale_ = &unk_2883E6AF0;
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
  a1->__locale_ = &unk_2883E6AF0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x277C69180);
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
  a1->__locale_ = &unk_2883E6B38;
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
  a1->__locale_ = &unk_2883E6B38;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x277C69180);
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

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x277C69180);
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

void sub_274DFE5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
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
  v16 = v10[8].__locale_;
  if (v16)
  {
    v10[9].__locale_ = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    v10[6].__locale_ = v17;
    operator delete(v17);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v12;
  v18 = v10[1].__locale_;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  MEMORY[0x277C69180](v10, v11);
  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 40, &v7);
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x277C69180);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v9 = 0;
    negate = this->__negate_;
    goto LABEL_89;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_64;
  }

  LOBYTE(v113) = *current;
  v6 = current[1];
  HIBYTE(v113) = current[1];
  if (this->__icase_)
  {
    LOBYTE(v113) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(v113) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = v113;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&__src, &__s);
  __p = __src;
  size = HIBYTE(__src.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __src.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    goto LABEL_14;
  }

  (*(*this->__traits_.__col_ + 32))(&__src);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = __src;
  if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(__src.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(__src.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_180;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_180:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_64:
    negate = 0;
    v9 = 1;
    goto LABEL_65;
  }

  v39 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v39)
  {
    goto LABEL_64;
  }

LABEL_16:
  begin = this->__digraphs_.__begin_;
  v12 = this->__digraphs_.__end_ - begin;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    p_second = &begin->second;
    while (v113 != *(p_second - 1) || HIBYTE(v113) != *p_second)
    {
      p_second += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_233;
  }

LABEL_25:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    p_s = &__s;
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &v113, &__src);
    v17 = this->__ranges_.__begin_;
    v18 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    v19 = this->__ranges_.__end_ - v17;
    if (v19)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
      v109 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_s = __s.__r_.__value_.__r.__words[0];
      }

      v22 = v20 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
      v23 = &v17->second.__r_.__value_.__r.__words[2] + 7;
      v24 = 1;
      v25 = 1;
      while (1)
      {
        v26 = *(v23 - 24);
        if (v26 >= 0)
        {
          v27 = *(v23 - 24);
        }

        else
        {
          v27 = *(v23 - 39);
        }

        if (v26 >= 0)
        {
          v28 = (v23 - 47);
        }

        else
        {
          v28 = *(v23 - 47);
        }

        if (v27 >= v21)
        {
          v29 = v21;
        }

        else
        {
          v29 = v27;
        }

        v30 = memcmp(p_s, v28, v29);
        v31 = v21 >= v27;
        if (v30)
        {
          v31 = v30 >= 0;
        }

        if (v31)
        {
          v32 = *v23;
          if (v32 >= 0)
          {
            v33 = *v23;
          }

          else
          {
            v33 = *(v23 - 15);
          }

          if (v32 >= 0)
          {
            v34 = (v23 - 23);
          }

          else
          {
            v34 = *(v23 - 23);
          }

          if (v21 >= v33)
          {
            v35 = v33;
          }

          else
          {
            v35 = v21;
          }

          v36 = memcmp(v34, p_s, v35);
          v37 = v33 >= v21;
          if (v36)
          {
            v37 = v36 >= 0;
          }

          if (v37)
          {
            break;
          }
        }

        v25 = v24++ < v20;
        v23 += 48;
        if (!--v22)
        {
          v38 = 0;
          goto LABEL_183;
        }
      }

      v38 = 5;
LABEL_183:
      v18 = v109;
    }

    else
    {
      v25 = 0;
      v38 = 0;
    }

    if (v18 < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v25)
    {
      v89 = 1;
      goto LABEL_213;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v89 = 0;
    goto LABEL_215;
  }

  v90 = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &v113, &__src);
  v91 = this->__equivalences_.__begin_;
  v92 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v93 = this->__equivalences_.__end_ - v91;
  if (v93)
  {
    v94 = 0xAAAAAAAAAAAAAAABLL * (v93 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v95 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v95 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v90 = __s.__r_.__value_.__r.__words[0];
    }

    if (v94 <= 1)
    {
      v96 = 1;
    }

    else
    {
      v96 = 0xAAAAAAAAAAAAAAABLL * (v93 >> 3);
    }

    v97 = 1;
    v98 = 1;
    while (1)
    {
      v99 = HIBYTE(v91->__r_.__value_.__r.__words[2]);
      v100 = v99;
      if ((v99 & 0x80u) != 0)
      {
        v99 = v91->__r_.__value_.__l.__size_;
      }

      if (v95 == v99)
      {
        v101 = v100 >= 0 ? v91 : v91->__r_.__value_.__r.__words[0];
        if (!memcmp(v90, v101, v95))
        {
          break;
        }
      }

      v98 = v97++ < v94;
      ++v91;
      if (!--v96)
      {
        goto LABEL_210;
      }
    }

    v89 = 1;
    v38 = 5;
    if (v92 < 0)
    {
LABEL_211:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v98 = 0;
LABEL_210:
    v38 = 0;
    v89 = 0;
    if (v92 < 0)
    {
      goto LABEL_211;
    }
  }

  if (!v98)
  {
LABEL_215:
    if (v113 < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v104 = tab[v113];
      if (((v104 & mask) != 0 || v113 == 95 && (mask & 0x80) != 0) && (SHIBYTE(v113) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(v113)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(v113) == 95))
      {
        goto LABEL_233;
      }

      neg_mask = this->__neg_mask_;
      if ((neg_mask & v104) != 0 || v113 == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_232:
        negate = v89;
LABEL_234:
        v9 = 2;
        goto LABEL_89;
      }
    }

    if ((SHIBYTE(v113) & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[SHIBYTE(v113)] & neg_mask) == 0)
      {
        negate = 1;
        if (SHIBYTE(v113) != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_234;
        }
      }

      goto LABEL_232;
    }

LABEL_233:
    negate = 1;
    goto LABEL_234;
  }

LABEL_213:
  v9 = 2;
  negate = v89;
  if (v38)
  {
    goto LABEL_89;
  }

LABEL_65:
  v40 = *a2->__current_;
  __src.__r_.__value_.__s.__data_[0] = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v40) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v40);
    __src.__r_.__value_.__s.__data_[0] = v40;
  }

  v41 = this->__chars_.__begin_;
  v42 = this->__chars_.__end_ - v41;
  if (v42)
  {
    if (v42 <= 1)
    {
      v42 = 1;
    }

    do
    {
      v43 = *v41++;
      if (v43 == v40)
      {
        goto LABEL_88;
      }
    }

    while (--v42);
  }

  v44 = this->__neg_mask_;
  if (v44 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v40 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v40] & v44) == 0)
    {
      v46 = (v44 >> 7) & 1;
      v45 = v40 == 95 ? v46 : 0;
    }

    else
    {
      v45 = 1;
    }

    end = this->__neg_chars_.__end_;
    v48 = memchr(this->__neg_chars_.__begin_, v40, end - this->__neg_chars_.__begin_);
    v49 = !v48 || v48 == end;
    v50 = !v49;
    if ((v45 & 1) == 0 && !v50)
    {
LABEL_88:
      negate = 1;
      goto LABEL_89;
    }
  }

  v53 = this->__ranges_.__begin_;
  v54 = this->__ranges_.__end_;
  if (v53 != v54)
  {
    if (this->__collate_)
    {
      std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &__src, &__src.__r_.__value_.__s.__data_[1]);
      v53 = this->__ranges_.__begin_;
      v54 = this->__ranges_.__end_;
      v55 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v55 = 1;
      *(&__s.__r_.__value_.__s + 23) = 1;
      LOWORD(__s.__r_.__value_.__l.__data_) = v40;
    }

    v56 = v54 - v53;
    if (v56)
    {
      v110 = v9;
      v106 = negate;
      v107 = v55;
      v57 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 4);
      if ((v55 & 0x80u) == 0)
      {
        v58 = v55;
      }

      else
      {
        v58 = __s.__r_.__value_.__l.__size_;
      }

      if ((v55 & 0x80u) == 0)
      {
        v59 = &__s;
      }

      else
      {
        v59 = __s.__r_.__value_.__r.__words[0];
      }

      if (v57 <= 1)
      {
        v60 = 1;
      }

      else
      {
        v60 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 4);
      }

      v61 = &v53->second.__r_.__value_.__r.__words[2] + 7;
      v62 = 1;
      v63 = 1;
      while (1)
      {
        v64 = *(v61 - 24);
        if (v64 >= 0)
        {
          v65 = *(v61 - 24);
        }

        else
        {
          v65 = *(v61 - 39);
        }

        if (v64 >= 0)
        {
          v66 = (v61 - 47);
        }

        else
        {
          v66 = *(v61 - 47);
        }

        if (v65 >= v58)
        {
          v67 = v58;
        }

        else
        {
          v67 = v65;
        }

        v68 = memcmp(v59, v66, v67);
        v69 = v58 >= v65;
        if (v68)
        {
          v69 = v68 >= 0;
        }

        if (v69)
        {
          v70 = *v61;
          if (v70 >= 0)
          {
            v71 = *v61;
          }

          else
          {
            v71 = *(v61 - 15);
          }

          if (v70 >= 0)
          {
            v72 = (v61 - 23);
          }

          else
          {
            v72 = *(v61 - 23);
          }

          if (v58 >= v71)
          {
            v73 = v71;
          }

          else
          {
            v73 = v58;
          }

          v74 = memcmp(v72, v59, v73);
          v75 = v71 >= v58;
          if (v74)
          {
            v75 = v74 >= 0;
          }

          if (v75)
          {
            break;
          }
        }

        v63 = v62++ < v57;
        v61 += 48;
        if (!--v60)
        {
          negate = v106;
          goto LABEL_144;
        }
      }

      negate = 1;
LABEL_144:
      v9 = v110;
      if ((v107 & 0x80) == 0)
      {
LABEL_146:
        if (v63)
        {
          goto LABEL_89;
        }

        goto LABEL_147;
      }
    }

    else
    {
      v63 = 0;
      if ((v55 & 0x80) == 0)
      {
        goto LABEL_146;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_146;
  }

LABEL_147:
  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    goto LABEL_173;
  }

  v76 = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &__src.__r_.__value_.__s.__data_[1]);
  v77 = this->__equivalences_.__begin_;
  v78 = this->__equivalences_.__end_ - v77;
  if (!v78)
  {
    v83 = 0;
    if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_171;
  }

  v108 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v111 = v9;
  v79 = 0xAAAAAAAAAAAAAAABLL * (v78 >> 3);
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v80 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v80 = __s.__r_.__value_.__l.__size_;
  }

  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v76 = __s.__r_.__value_.__r.__words[0];
  }

  if (v79 <= 1)
  {
    v81 = 1;
  }

  else
  {
    v81 = 0xAAAAAAAAAAAAAAABLL * (v78 >> 3);
  }

  v82 = 1;
  v83 = 1;
  while (1)
  {
    v84 = HIBYTE(v77->__r_.__value_.__r.__words[2]);
    v85 = v84;
    if ((v84 & 0x80u) != 0)
    {
      v84 = v77->__r_.__value_.__l.__size_;
    }

    if (v80 == v84)
    {
      v86 = v85 >= 0 ? v77 : v77->__r_.__value_.__r.__words[0];
      if (!memcmp(v76, v86, v80))
      {
        break;
      }
    }

    v83 = v82++ < v79;
    ++v77;
    if (!--v81)
    {
      goto LABEL_170;
    }
  }

  negate = 1;
LABEL_170:
  v9 = v111;
  if (v108 < 0)
  {
LABEL_171:
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_172:
  if (v83)
  {
    goto LABEL_89;
  }

LABEL_173:
  v87 = this->__mask_;
  if ((__src.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[__src.__r_.__value_.__s.__data_[0]] & v87) != 0)
  {
    goto LABEL_88;
  }

  v88 = (v87 >> 7) & 1;
  if (__src.__r_.__value_.__s.__data_[0] != 95)
  {
    LOBYTE(v88) = 0;
  }

  negate |= v88;
LABEL_89:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v52 = -993;
  }

  else
  {
    a2->__current_ += v9;
    first = this->__first_;
    v52 = -995;
  }

  a2->__do_ = v52;
  a2->__node_ = first;
}

void sub_274DFF090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
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

void std::regex_traits<char>::transform<char *>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274DFF25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char *,char *>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
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

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
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
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274DFF428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 5);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
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

char *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v7 = *a2;
  if (v7 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v7 != 115)
      {
        if (v7 != 119)
        {
          return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v9 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v7 == 98)
      {
        v12 = this;
        v13 = 8;
LABEL_20:
        std::string::operator=(v12, v13);
        return a2 + 1;
      }

      if (v7 != 100)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
      }

      v9 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v9;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (*a2)
    {
      if (v7 == 68)
      {
        v8 = *(a5 + 164) | 0x400;
LABEL_22:
        *(a5 + 164) = v8;
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
    }

    v12 = this;
    v13 = 0;
    goto LABEL_20;
  }

  if (v7 == 83)
  {
    v8 = *(a5 + 164) | 0x4000;
    goto LABEL_22;
  }

  if (v7 != 87)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
  }

  *(a5 + 164) |= 0x500u;
  v17 = 95;
  if (*(a5 + 169) == 1)
  {
    v16 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
    v10 = a5 + 64;
    v11 = &v16;
  }

  else
  {
    if (*(a5 + 170) != 1)
    {
      std::vector<char>::push_back[abi:ne200100](a5 + 64, &v17);
      return a2 + 1;
    }

    v15 = 95;
    v10 = a5 + 64;
    v11 = &v15;
  }

  std::vector<char>::push_back[abi:ne200100](v10, v11);
  return a2 + 1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_55:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 <= 0x65)
  {
    if (*a2 <= 0x5Bu)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_32;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          v7 = 7;
          goto LABEL_31;
        }

        v7 = 7;
        goto LABEL_51;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v7 = 8;
LABEL_31:
          std::string::operator=(v6, v7);
          return a2 + 1;
        }

        v7 = 8;
        goto LABEL_51;
      }

      goto LABEL_32;
    }

    v7 = v5;
    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_51;
  }

  if (*a2 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v7 = 12;
        goto LABEL_31;
      }

      v7 = 12;
      goto LABEL_51;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v7 = 10;
        goto LABEL_31;
      }

      v7 = 10;
      goto LABEL_51;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          v6 = this;
          v7 = 13;
          goto LABEL_31;
        }

        v7 = 13;
        goto LABEL_51;
      case 't':
        if (this)
        {
          v6 = this;
          v7 = 9;
          goto LABEL_31;
        }

        v7 = 9;
        goto LABEL_51;
      case 'v':
        if (this)
        {
          v6 = this;
          v7 = 11;
          goto LABEL_31;
        }

        v7 = 11;
LABEL_51:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
        return a2 + 1;
    }
  }

LABEL_32:
  if ((v5 & 0xF8) != 0x30)
  {
    goto LABEL_55;
  }

  v8 = v5 - 48;
  v9 = a2 + 1;
  if (a2 + 1 != a3)
  {
    if ((*v9 & 0xF8) != 0x30)
    {
      goto LABEL_42;
    }

    v8 = *v9 + 8 * v8 - 48;
    if (a2 + 2 != a3)
    {
      v10 = a2[2];
      v11 = v10 & 0xF8;
      v12 = v10 + 8 * v8 - 48;
      if (v11 == 48)
      {
        v9 = a2 + 3;
      }

      else
      {
        v9 = a2 + 2;
      }

      if (v11 == 48)
      {
        v8 = v12;
      }

      goto LABEL_42;
    }
  }

  v9 = a3;
LABEL_42:
  if (this)
  {
    std::string::operator=(this, v8);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  return v9;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  std::vector<std::pair<char,char>>::push_back[abi:ne200100](v6, v7);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 1);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
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

void std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
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
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_274DFFD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 2);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274DFFE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  MEMORY[0x277C68B90](exception, 9);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::vector<std::pair<char,char>>::push_back[abi:ne200100](uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
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

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x277C69180);
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

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x277C69180);
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 8);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x277C68B90](exception, 7);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x277C69180);
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
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x277C69180);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_2883E6D00;
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
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x277C69180);
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
  MEMORY[0x277C68B90](exception, 15);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
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
LABEL_17:
        if (v12 == 46)
        {
          operator new();
        }

        goto LABEL_19;
      }

      v13 = *v9;
      if ((v13 - 36) > 0x3A || ((1 << (v13 - 36)) & 0x580000000000441) == 0)
      {
LABEL_19:
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, v3, v4);
        goto LABEL_20;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v13);
      v11 = v3 + 2;
      if (v3 + 2 != v3)
      {
        goto LABEL_41;
      }
    }

    v12 = *v11;
    goto LABEL_17;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  v11 = v3 + 1;
LABEL_20:
  if (v11 == v3)
  {
    if (v9 == v4 || *v11 != 92)
    {
      return v3;
    }

    v15 = v3[1];
    if (v15 == 40)
    {
      v16 = (v3 + 2);
    }

    else
    {
      v16 = v11;
    }

    if (v16 == v3)
    {
      if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v15))
      {
        v11 = v3 + 2;
      }

      goto LABEL_41;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
    v17 = a1->__marked_count_;
    do
    {
      v18 = v16;
      v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(a1, v16, v4);
    }

    while (v18 != v16);
    v11 = v4;
    if (v18 != v4)
    {
      if (v18 + 1 == v4 || *v18 != 92)
      {
        goto LABEL_76;
      }

      if (v18[1] == 41)
      {
        v11 = v18 + 2;
      }

      else
      {
        v11 = v18;
      }
    }

    if (v11 != v18)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v17);
      goto LABEL_41;
    }

LABEL_76:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_41:
  if (v11 != v3)
  {
    if (v11 == v4)
    {
      return v4;
    }

    v19 = a1->__marked_count_ + 1;
    v20 = *v11;
    if (v20 == 42)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
      return v11 + 1;
    }

    if (v11 + 1 == v4 || v20 != 92)
    {
      return v11;
    }

    v21 = v11[1] == 123 ? v11 + 2 : v11;
    v3 = v11;
    if (v11 != v21)
    {
      v30 = 0;
      v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v21, v4, &v30);
      if (v22 == v21)
      {
        goto LABEL_78;
      }

      if (v22 != v4)
      {
        v23 = *v22;
        if (v23 == 44)
        {
          v29 = -1;
          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v22 + 1, v4, &v29);
          if (v24 != v4)
          {
            if (v24 + 1 == v4 || *v24 != 92)
            {
              goto LABEL_77;
            }

            if (v24[1] == 125)
            {
              v4 = v24 + 2;
            }

            else
            {
              v4 = v24;
            }
          }

          if (v4 != v24)
          {
            v26 = v29;
            v25 = v30;
            if (v29 == -1)
            {
              v27 = a1;
              v26 = -1;
              goto LABEL_75;
            }

            if (v29 >= v30)
            {
              v27 = a1;
LABEL_75:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(v27, v25, v26, end, marked_count + 1, v19, 1);
              return v4;
            }

LABEL_78:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }
        }

        else if (v22 + 1 != v4 && v23 == 92)
        {
          v4 = v22[1] == 125 ? v22 + 2 : v22;
          if (v22 != v4)
          {
            v25 = v30;
            v27 = a1;
            v26 = v30;
            goto LABEL_75;
          }
        }
      }

LABEL_77:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }
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

void std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x277C69180);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
LABEL_2:
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
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
      if (*(a1 + 36))
      {
        goto LABEL_5;
      }

      LOBYTE(v9) = 41;
LABEL_36:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v9);
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
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v13);
      v8 = a2 + 2;
    }

    else if ((*(a1 + 24) & 0x1F0) == 0x40)
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
    }

    else
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v13) ? a2 + 2 : a2;
    }

    if (v8 == a2)
    {
      if (*v8 == 46)
      {
        operator new();
      }

      goto LABEL_2;
    }
  }

LABEL_16:
  if (v8 == a2 && v8 != a3)
  {
    v14 = *v8;
    switch(v14)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v15 = *(a1 + 28);
        ++*(a1 + 36);
        v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v8 + 1, a3);
        if (v16 == a3 || (v8 = v16, *v16 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v15);
        --*(a1 + 36);
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
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

  v17 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v8, a3, v6, (v7 + 1), v17);
}

__n128 std::deque<std::__state<char>>::push_back(void *a1, uint64_t a2)
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
      v11 = &v10[-*a1];
      if (v6 < v11)
      {
        if (v10 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v17[4] = a1;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<xgboost::Metric>>>(v12);
    }

    a1[4] = v8 - 42;
    v17[0] = *v4;
    a1[1] = v4 + 8;
    std::__split_buffer<xgboost::Json *>::emplace_back<xgboost::Json *&>(a1, v17);
    v4 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v13 = *&v4[8 * (v9 / 0x2A)] + 96 * (v9 % 0x2A);
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = 0;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  result = *(a2 + 56);
  *(v13 + 56) = result;
  *(v13 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v16 = *(a2 + 80);
  *(v13 + 85) = *(a2 + 85);
  *(v13 + 80) = v16;
  ++a1[5];
  return result;
}

void sub_274E013F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
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
  std::allocator<std::__state<char>>::destroy[abi:ne200100]((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
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

const void **std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<xgboost::Metric>>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
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
        std::allocator<std::__state<char>>::destroy[abi:ne200100](v7);
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

void std::vector<dmlc::io::FileInfo>::__construct_one_at_end[abi:ne200100]<dmlc::io::FileInfo const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v6;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v7 = a2[3];
    *(v4 + 64) = *(a2 + 8);
    *(v4 + 48) = v7;
  }

  v8 = *(a2 + 9);
  *(v4 + 80) = *(a2 + 20);
  *(v4 + 72) = v8;
  *(a1 + 8) = v4 + 88;
}

void sub_274E01818(_Unwind_Exception *exception_object)
{
  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<dmlc::io::FileInfo>::__emplace_back_slow_path<dmlc::io::FileInfo const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::io::FileInfo>>(a1, v6);
  }

  v7 = 88 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(v7 + 40) = *(a2 + 5);
    *(v7 + 24) = v9;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v10 = a2[3];
    *(v7 + 64) = *(a2 + 8);
    *(v7 + 48) = v10;
  }

  v11 = *(a2 + 9);
  *(v7 + 80) = *(a2 + 20);
  *(v7 + 72) = v11;
  *&v20 = v20 + 88;
  v12 = a1[1];
  v13 = v19 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<dmlc::io::FileInfo>,dmlc::io::FileInfo*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<dmlc::io::FileInfo>::~__split_buffer(&v18);
  return v17;
}

void sub_274E01A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 47) < 0)
  {
    operator delete(*(v4 + 24));
  }

  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<dmlc::io::FileInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

double xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7>::JsonTypedArray(void *a1)
{
  *&result = 0x700000000;
  a1[1] = 0x700000000;
  *a1 = &unk_2883E16B0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

{
  *&result = 0x700000000;
  a1[1] = 0x700000000;
  *a1 = &unk_2883E16B0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

__n128 xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7>::JsonTypedArray(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[1] = 0x700000000;
  a1->n128_u64[0] = &unk_2883E16B0;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  a1[1].n128_u64[0] = 0;
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = 0;
  a2[2].n128_u64[0] = 0;
  return result;
}

{
  a1->n128_u64[1] = 0x700000000;
  a1->n128_u64[0] = &unk_2883E16B0;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  a1[1].n128_u64[0] = 0;
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = 0;
  a2[2].n128_u64[0] = 0;
  return result;
}

uint64_t xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7>::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 12) != 7)
  {
    return 0;
  }

  v3 = xgboost::Cast<xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7> const,xgboost::Value const>(a2);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(v3 + 2);
  if (v5 - v4 != *(v3 + 3) - v6)
  {
    return 0;
  }

  if (v5 != v4)
  {
    v7 = v5 - v4;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v8 = *v6;
      if (fabsf(*v4) == INFINITY)
      {
        if (fabsf(v8) != INFINITY)
        {
          return 0;
        }
      }

      else if (v8 != *v4)
      {
        return 0;
      }

      ++v6;
      ++v4;
      --v7;
    }

    while (v7);
  }

  return 1;
}

uint64_t xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7>::GetArray(uint64_t a1)
{
  return a1 + 16;
}

{
  return a1 + 16;
}

{
  return a1 + 16;
}

double xgboost::JsonTypedArray<unsigned char,(xgboost::Value::ValueKind)8>::JsonTypedArray(void *a1)
{
  *&result = 0x800000000;
  a1[1] = 0x800000000;
  *a1 = &unk_2883E6560;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

{
  *&result = 0x800000000;
  a1[1] = 0x800000000;
  *a1 = &unk_2883E6560;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

__n128 xgboost::JsonTypedArray<unsigned char,(xgboost::Value::ValueKind)8>::JsonTypedArray(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[1] = 0x800000000;
  a1->n128_u64[0] = &unk_2883E6560;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  a1[1].n128_u64[0] = 0;
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = 0;
  a2[2].n128_u64[0] = 0;
  return result;
}

{
  a1->n128_u64[1] = 0x800000000;
  a1->n128_u64[0] = &unk_2883E6560;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  a1[1].n128_u64[0] = 0;
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = 0;
  a2[2].n128_u64[0] = 0;
  return result;
}

BOOL xgboost::JsonTypedArray<unsigned char,(xgboost::Value::ValueKind)8>::operator==(uint64_t a1, _DWORD *lpsrc)
{
  if (lpsrc[3] != 8)
  {
    return 0;
  }

  v3 = **lpsrc;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24) - v5;
  v8 = (v4 + 2);
  v7 = v4[2];
  return v6 == *(v8 + 1) - v7 && memcmp(v7, v5, v6) == 0;
}

uint64_t xgboost::JsonTypedArray<unsigned char,(xgboost::Value::ValueKind)8>::GetArray(uint64_t a1)
{
  return a1 + 16;
}

{
  return a1 + 16;
}

{
  return a1 + 16;
}

double xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9>::JsonTypedArray(void *a1)
{
  *&result = 0x900000000;
  a1[1] = 0x900000000;
  *a1 = &unk_2883E65A8;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

{
  *&result = 0x900000000;
  a1[1] = 0x900000000;
  *a1 = &unk_2883E65A8;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

__n128 xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9>::JsonTypedArray(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[1] = 0x900000000;
  a1->n128_u64[0] = &unk_2883E65A8;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  a1[1].n128_u64[0] = 0;
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = 0;
  a2[2].n128_u64[0] = 0;
  return result;
}

{
  a1->n128_u64[1] = 0x900000000;
  a1->n128_u64[0] = &unk_2883E65A8;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  a1[1].n128_u64[0] = 0;
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = 0;
  a2[2].n128_u64[0] = 0;
  return result;
}

BOOL xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9>::operator==(uint64_t a1, _DWORD *lpsrc)
{
  if (lpsrc[3] != 9)
  {
    return 0;
  }

  v3 = **lpsrc;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24) - v5;
  v8 = (v4 + 2);
  v7 = v4[2];
  return v6 == *(v8 + 1) - v7 && memcmp(v7, v5, v6) == 0;
}

uint64_t xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9>::GetArray(uint64_t a1)
{
  return a1 + 16;
}

{
  return a1 + 16;
}

{
  return a1 + 16;
}

double xgboost::JsonTypedArray<long long,(xgboost::Value::ValueKind)10>::JsonTypedArray(void *a1)
{
  *&result = 0xA00000000;
  a1[1] = 0xA00000000;
  *a1 = &unk_2883E65F0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

{
  *&result = 0xA00000000;
  a1[1] = 0xA00000000;
  *a1 = &unk_2883E65F0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

__n128 xgboost::JsonTypedArray<long long,(xgboost::Value::ValueKind)10>::JsonTypedArray(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[1] = 0xA00000000;
  a1->n128_u64[0] = &unk_2883E65F0;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  a1[1].n128_u64[0] = 0;
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = 0;
  a2[2].n128_u64[0] = 0;
  return result;
}

{
  a1->n128_u64[1] = 0xA00000000;
  a1->n128_u64[0] = &unk_2883E65F0;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  a1[1].n128_u64[0] = 0;
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = 0;
  a2[2].n128_u64[0] = 0;
  return result;
}

BOOL xgboost::JsonTypedArray<long long,(xgboost::Value::ValueKind)10>::operator==(uint64_t a1, _DWORD *lpsrc)
{
  if (lpsrc[3] != 10)
  {
    return 0;
  }

  v3 = **lpsrc;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24) - v5;
  v8 = (v4 + 2);
  v7 = v4[2];
  return v6 == *(v8 + 1) - v7 && memcmp(v7, v5, v6) == 0;
}

uint64_t xgboost::JsonTypedArray<long long,(xgboost::Value::ValueKind)10>::GetArray(uint64_t a1)
{
  return a1 + 16;
}

{
  return a1 + 16;
}

{
  return a1 + 16;
}

void xgboost::JsonWriter::Visit(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = &v6[-*v4];
    v10 = (v9 + 1);
    if ((v9 + 1) < 0)
    {
      goto LABEL_50;
    }

    v11 = v5 - v8;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    v13 = &v6[-*v4];
    *v9 = 91;
    v7 = v9 + 1;
    memcpy(0, v8, v13);
    *v4 = 0;
    *(v4 + 8) = v9 + 1;
    *(v4 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v6 = 91;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  v14 = *(a2 + 24) - *(a2 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = v14 >> 3;
    v17 = v16 - 1;
    if (v16 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v16;
    }

    do
    {
      v19 = *(*(a2 + 16) + 8 * v15);
      v40 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1u, memory_order_relaxed);
      }

      (*(*a1 + 16))(a1, &v40);
      v20 = v40;
      if (v40 && atomic_fetch_add_explicit((v40 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v20 + 8))(v20);
      }

      if (v17 != v15)
      {
        v21 = a1[1];
        v23 = *(v21 + 8);
        v22 = *(v21 + 16);
        if (v23 >= v22)
        {
          v25 = *v21;
          v26 = &v23[-*v21];
          v27 = (v26 + 1);
          if ((v26 + 1) < 0)
          {
            goto LABEL_50;
          }

          v28 = v22 - v25;
          if (2 * v28 > v27)
          {
            v27 = 2 * v28;
          }

          if (v28 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v29 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            operator new();
          }

          v30 = &v23[-*v21];
          *v26 = 44;
          v24 = v26 + 1;
          memcpy(0, v25, v30);
          *v21 = 0;
          *(v21 + 8) = v26 + 1;
          *(v21 + 16) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v23 = 44;
          v24 = v23 + 1;
        }

        *(v21 + 8) = v24;
      }

      ++v15;
    }

    while (v18 != v15);
  }

  v31 = a1[1];
  v33 = *(v31 + 8);
  v32 = *(v31 + 16);
  if (v33 < v32)
  {
    *v33 = 93;
    v34 = v33 + 1;
    goto LABEL_49;
  }

  v35 = *v31;
  v36 = &v33[-*v31 + 1];
  if (v36 < 0)
  {
LABEL_50:
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v37 = v32 - v35;
  if (2 * v37 > v36)
  {
    v36 = 2 * v37;
  }

  if (v37 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v38 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v38 = v36;
  }

  if (v38)
  {
    operator new();
  }

  v39 = &v33[-*v31];
  *v39 = 93;
  v34 = v39 + 1;
  memcpy(0, v35, v39);
  *v31 = 0;
  *(v31 + 8) = v34;
  *(v31 + 16) = 0;
  if (v35)
  {
    operator delete(v35);
  }

LABEL_49:
  *(v31 + 8) = v34;
}

void sub_274E0267C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void xgboost::JsonWriter::Visit(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  if (v5 >= v4)
  {
    v8 = *v3;
    v9 = &v5[-*v3];
    v10 = (v9 + 1);
    if ((v9 + 1) < 0)
    {
      goto LABEL_29;
    }

    v11 = v4 - v8;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    v13 = &v5[-*v3];
    *v9 = 91;
    v7 = v9 + 1;
    memcpy(0, v8, v13);
    *v3 = 0;
    *(v3 + 8) = v9 + 1;
    *(v3 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }

    v6 = a2;
  }

  else
  {
    v6 = a2;
    *v5 = 91;
    v7 = v5 + 1;
  }

  *(v3 + 8) = v7;
  if (*(v6 + 24) != *(v6 + 16))
  {
    v24 = **(v6 + 16);
    operator new();
  }

  v14 = *(a1 + 8);
  v16 = *(v14 + 8);
  v15 = *(v14 + 16);
  if (v16 < v15)
  {
    *v16 = 93;
    v17 = v16 + 1;
    goto LABEL_28;
  }

  v18 = *v14;
  v19 = &v16[-*v14 + 1];
  if (v19 < 0)
  {
LABEL_29:
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v20 = v15 - v18;
  if (2 * v20 > v19)
  {
    v19 = 2 * v20;
  }

  if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    operator new();
  }

  v22 = &v16[-*v14];
  *v22 = 93;
  v17 = v22 + 1;
  memcpy(0, v18, v22);
  *v14 = 0;
  *(v14 + 8) = v17;
  *(v14 + 16) = 0;
  if (v18)
  {
    operator delete(v18);
  }

LABEL_28:
  *(v14 + 8) = v17;
}

{
  v3 = *(a1 + 8);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  if (v5 >= v4)
  {
    v8 = *v3;
    v9 = &v5[-*v3];
    v10 = (v9 + 1);
    if ((v9 + 1) < 0)
    {
      goto LABEL_29;
    }

    v11 = v4 - v8;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    v13 = &v5[-*v3];
    *v9 = 91;
    v7 = v9 + 1;
    memcpy(0, v8, v13);
    *v3 = 0;
    *(v3 + 8) = v9 + 1;
    *(v3 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }

    v6 = a2;
  }

  else
  {
    v6 = a2;
    *v5 = 91;
    v7 = v5 + 1;
  }

  *(v3 + 8) = v7;
  if (*(v6 + 24) != *(v6 + 16))
  {
    v24 = **(v6 + 16);
    operator new();
  }

  v14 = *(a1 + 8);
  v16 = *(v14 + 8);
  v15 = *(v14 + 16);
  if (v16 < v15)
  {
    *v16 = 93;
    v17 = v16 + 1;
    goto LABEL_28;
  }

  v18 = *v14;
  v19 = &v16[-*v14 + 1];
  if (v19 < 0)
  {
LABEL_29:
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v20 = v15 - v18;
  if (2 * v20 > v19)
  {
    v19 = 2 * v20;
  }

  if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    operator new();
  }

  v22 = &v16[-*v14];
  *v22 = 93;
  v17 = v22 + 1;
  memcpy(0, v18, v22);
  *v14 = 0;
  *(v14 + 8) = v17;
  *(v14 + 16) = 0;
  if (v18)
  {
    operator delete(v18);
  }

LABEL_28:
  *(v14 + 8) = v17;
}

{
  v3 = *(a1 + 8);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  if (v5 >= v4)
  {
    v8 = *v3;
    v9 = &v5[-*v3];
    v10 = (v9 + 1);
    if ((v9 + 1) < 0)
    {
      goto LABEL_29;
    }

    v11 = v4 - v8;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    v13 = &v5[-*v3];
    *v9 = 91;
    v7 = v9 + 1;
    memcpy(0, v8, v13);
    *v3 = 0;
    *(v3 + 8) = v9 + 1;
    *(v3 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }

    v6 = a2;
  }

  else
  {
    v6 = a2;
    *v5 = 91;
    v7 = v5 + 1;
  }

  *(v3 + 8) = v7;
  if (*(v6 + 24) != *(v6 + 16))
  {
    v24 = **(v6 + 16);
    operator new();
  }

  v14 = *(a1 + 8);
  v16 = *(v14 + 8);
  v15 = *(v14 + 16);
  if (v16 < v15)
  {
    *v16 = 93;
    v17 = v16 + 1;
    goto LABEL_28;
  }

  v18 = *v14;
  v19 = &v16[-*v14 + 1];
  if (v19 < 0)
  {
LABEL_29:
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v20 = v15 - v18;
  if (2 * v20 > v19)
  {
    v19 = 2 * v20;
  }

  if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    operator new();
  }

  v22 = &v16[-*v14];
  *v22 = 93;
  v17 = v22 + 1;
  memcpy(0, v18, v22);
  *v14 = 0;
  *(v14 + 8) = v17;
  *(v14 + 16) = 0;
  if (v18)
  {
    operator delete(v18);
  }

LABEL_28:
  *(v14 + 8) = v17;
}

{
  v3 = *(a1 + 8);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  if (v5 >= v4)
  {
    v8 = *v3;
    v9 = &v5[-*v3];
    v10 = (v9 + 1);
    if ((v9 + 1) < 0)
    {
      goto LABEL_29;
    }

    v11 = v4 - v8;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    v13 = &v5[-*v3];
    *v9 = 91;
    v7 = v9 + 1;
    memcpy(0, v8, v13);
    *v3 = 0;
    *(v3 + 8) = v9 + 1;
    *(v3 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }

    v6 = a2;
  }

  else
  {
    v6 = a2;
    *v5 = 91;
    v7 = v5 + 1;
  }

  *(v3 + 8) = v7;
  if (*(v6 + 24) != *(v6 + 16))
  {
    v24 = **(v6 + 16);
    operator new();
  }

  v14 = *(a1 + 8);
  v16 = *(v14 + 8);
  v15 = *(v14 + 16);
  if (v16 < v15)
  {
    *v16 = 93;
    v17 = v16 + 1;
    goto LABEL_28;
  }

  v18 = *v14;
  v19 = &v16[-*v14 + 1];
  if (v19 < 0)
  {
LABEL_29:
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v20 = v15 - v18;
  if (2 * v20 > v19)
  {
    v19 = 2 * v20;
  }

  if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    operator new();
  }

  v22 = &v16[-*v14];
  *v22 = 93;
  v17 = v22 + 1;
  memcpy(0, v18, v22);
  *v14 = 0;
  *(v14 + 8) = v17;
  *(v14 + 16) = 0;
  if (v18)
  {
    operator delete(v18);
  }

LABEL_28:
  *(v14 + 8) = v17;
}

void sub_274E02AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a11 + 8))(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_274E02EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a11 + 8))(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_274E03320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a11 + 8))(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_274E03758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a11 + 8))(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

void xgboost::JsonWriter::Visit(xgboost::JsonWriter *this, const xgboost::JsonObject *a2)
{
  v4 = *(this + 1);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = &v6[-*v4];
    v10 = (v9 + 1);
    if ((v9 + 1) < 0)
    {
      goto LABEL_69;
    }

    v11 = v5 - v8;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    v13 = &v6[-*v4];
    *v9 = 123;
    v7 = v9 + 1;
    memcpy(0, v8, v13);
    *v4 = 0;
    *(v4 + 8) = v9 + 1;
    *(v4 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v6 = 123;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  v14 = *(a2 + 2);
  v15 = a2 + 24;
  if (v14 != (a2 + 24))
  {
    v16 = 0;
    v17 = *(a2 + 4) - 1;
    do
    {
      xgboost::JsonString::JsonString(v54, v14 + 2);
      (*(*this + 96))(this, v54);
      v18 = *(this + 1);
      v20 = *(v18 + 8);
      v19 = *(v18 + 16);
      if (v20 >= v19)
      {
        v22 = *v18;
        v23 = &v20[-*v18];
        v24 = (v23 + 1);
        if ((v23 + 1) < 0)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v25 = v19 - v22;
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v26 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          operator new();
        }

        v27 = &v20[-*v18];
        *v23 = 58;
        v21 = v23 + 1;
        memcpy(0, v22, v27);
        *v18 = 0;
        *(v18 + 8) = v23 + 1;
        *(v18 + 16) = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v20 = 58;
        v21 = v20 + 1;
      }

      *(v18 + 8) = v21;
      v28 = *(v14 + 7);
      v53 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1u, memory_order_relaxed);
      }

      (*(*this + 16))(this, &v53);
      v29 = v53;
      if (v53 && atomic_fetch_add_explicit((v53 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v29 + 8))(v29);
      }

      if (v16 != v17)
      {
        v30 = *(this + 1);
        v32 = *(v30 + 8);
        v31 = *(v30 + 16);
        if (v32 >= v31)
        {
          v34 = *v30;
          v35 = &v32[-*v30];
          v36 = (v35 + 1);
          if ((v35 + 1) < 0)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v37 = v31 - v34;
          if (2 * v37 > v36)
          {
            v36 = 2 * v37;
          }

          if (v37 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v38 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v38 = v36;
          }

          if (v38)
          {
            operator new();
          }

          v39 = &v32[-*v30];
          *v35 = 44;
          v33 = v35 + 1;
          memcpy(0, v34, v39);
          *v30 = 0;
          *(v30 + 8) = v35 + 1;
          *(v30 + 16) = 0;
          if (v34)
          {
            operator delete(v34);
          }
        }

        else
        {
          *v32 = 44;
          v33 = v32 + 1;
        }

        *(v30 + 8) = v33;
      }

      v54[0] = &unk_2883E6F38;
      if (v55 < 0)
      {
        operator delete(v54[2]);
      }

      v40 = *(v14 + 1);
      if (v40)
      {
        do
        {
          v41 = v40;
          v40 = *v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v41 = *(v14 + 2);
          v42 = *v41 == v14;
          v14 = v41;
        }

        while (!v42);
      }

      ++v16;
      v14 = v41;
    }

    while (v41 != v15);
  }

  v43 = *(this + 1);
  v45 = *(v43 + 8);
  v44 = *(v43 + 16);
  if (v45 < v44)
  {
    *v45 = 125;
    v46 = v45 + 1;
    goto LABEL_66;
  }

  v47 = *v43;
  v48 = &v45[-*v43];
  v49 = (v48 + 1);
  if ((v48 + 1) < 0)
  {
LABEL_69:
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v50 = v44 - v47;
  if (2 * v50 > v49)
  {
    v49 = 2 * v50;
  }

  if (v50 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v51 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v51 = v49;
  }

  if (v51)
  {
    operator new();
  }

  v52 = &v45[-*v43];
  *v48 = 125;
  v46 = v48 + 1;
  memcpy(0, v47, v52);
  *v43 = 0;
  *(v43 + 8) = v48 + 1;
  *(v43 + 16) = 0;
  if (v47)
  {
    operator delete(v47);
  }

LABEL_66:
  *(v43 + 8) = v46;
}

void sub_274E03C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::Json::~Json(atomic_uint **this)
{
  v1 = *this;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*v1 + 8))(v1);
    }
  }
}

void xgboost::JsonString::~JsonString(void **this)
{
  *this = &unk_2883E6F38;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_2883E6F38;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x277C69180);
}

void *xgboost::JsonWriter::Visit(xgboost::JsonWriter *this, const xgboost::JsonNumber *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = xgboost::detail::ToCharsFloatImpl(__src, *(a2 + 4), a2);
  if (&__src[v3] >= &v12)
  {
    v4 = &v12;
  }

  else
  {
    v4 = &__src[v3];
  }

  v5 = *(this + 1);
  begin = v5->__begin_;
  v7 = v5->__end_ - v5->__begin_;
  v8 = v4 - __src;
  if (v7 >= v4 - __src + v7)
  {
    if (v7 > v8 + v7)
    {
      v5->__end_ = &begin[v8 + v7];
    }
  }

  else
  {
    std::vector<char>::__append(v5, v8);
    begin = **(this + 1);
  }

  result = memcpy(&begin[v7], __src, v8);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *xgboost::JsonWriter::Visit(xgboost::JsonWriter *this, const xgboost::JsonInteger *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 2);
  if (v3)
  {
    p_src = &__src;
    if (v3 < 0)
    {
      __src = 45;
      p_src = v18;
      v3 = -v3;
    }

    v5 = xgboost::detail::ToCharsUnsignedImpl(p_src, &v19, v3);
    if (v6)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v16);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/json.cc", 73);
      v8 = dmlc::LogMessageFatal::GetEntry(&v16);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Check failed: ret.ec == std::errc()", 35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v16);
    }
  }

  else
  {
    __src = 48;
    v5 = v18;
  }

  v10 = v5 - &__src;
  v11 = *(this + 1);
  begin = v11->__begin_;
  v13 = v11->__end_ - v11->__begin_;
  if (v13 >= v13 + v10)
  {
    if (v13 > v13 + v10)
    {
      v11->__end_ = &begin[v13 + v10];
    }
  }

  else
  {
    std::vector<char>::__append(v11, v10);
    begin = **(this + 1);
  }

  result = memcpy(&begin[v13], &__src, v10);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

std::vector<char> *xgboost::JsonWriter::Visit(uint64_t a1)
{
  result = *(a1 + 8);
  begin = result->__begin_;
  v4 = result->__end_ - result->__begin_;
  if (v4 > 0xFFFFFFFFFFFFFFFBLL)
  {
    result->__end_ = &begin[v4 + 4];
  }

  else
  {
    std::vector<char>::__append(result, 4uLL);
    result = *(a1 + 8);
    begin = result->__begin_;
  }

  begin[v4] = 110;
  result->__begin_[v4 + 1] = 117;
  result->__begin_[v4 + 2] = 108;
  result->__begin_[v4 + 3] = 108;
  return result;
}

void xgboost::JsonWriter::Visit(xgboost::JsonWriter *this, const xgboost::JsonString *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  memset(&v20, 0, sizeof(v20));
  std::string::push_back(&v20, 34);
  v3 = 0;
  v4 = (a2 + 16);
  while (1)
  {
    v5 = *(a2 + 39);
    v6 = v5 < 0 ? *(a2 + 3) : *(a2 + 39);
    if (v3 >= v6)
    {
      break;
    }

    v7 = a2 + 16;
    if ((v5 & 0x80000000) != 0)
    {
      v7 = *v4;
    }

    v8 = v7[v3];
    if (v8 <= 11)
    {
      switch(v8)
      {
        case 8:
          v9 = "\\b";
          goto LABEL_34;
        case 9:
          v9 = "\\t";
          goto LABEL_34;
        case 10:
          v9 = "\\n";
          goto LABEL_34;
      }
    }

    else if (v8 > 33)
    {
      v9 = "\\"";
      if (v8 == 34)
      {
        goto LABEL_34;
      }

      if (v8 == 92)
      {
        if ((v5 & 0x80000000) != 0)
        {
          v10 = *(a2 + 3);
        }

        else
        {
          v10 = *(a2 + 39);
        }

        v9 = "\\\";
        if (v3 < v10)
        {
          v11 = a2 + 16;
          if ((v5 & 0x80000000) != 0)
          {
            v11 = *v4;
          }

          if (v11[v3 + 1] == 117)
          {
            v9 = "\";
          }

          else
          {
            v9 = "\\\";
          }
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (v8 == 12)
      {
        v9 = "\\f";
        goto LABEL_34;
      }

      if (v8 == 13)
      {
        v9 = "\\r";
LABEL_34:
        std::string::append(&v20, v9);
        goto LABEL_35;
      }
    }

    if (v8 > 0x1F)
    {
      std::string::push_back(&v20, v8);
    }

    else
    {
      snprintf(__str, 8uLL, "\\u%04x", v8);
      std::string::append(&v20, __str);
    }

LABEL_35:
    ++v3;
  }

  std::string::push_back(&v20, 34);
  v12 = *(this + 1);
  begin = v12->__begin_;
  v14 = v12->__end_ - v12->__begin_;
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v20.__r_.__value_.__l.__size_;
  }

  if (v14 >= size + v14)
  {
    if (v14 > size + v14)
    {
      v12->__end_ = &begin[size + v14];
    }
  }

  else
  {
    std::vector<char>::__append(v12, size);
    begin = **(this + 1);
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v20;
  }

  else
  {
    v16 = v20.__r_.__value_.__r.__words[0];
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v20.__r_.__value_.__l.__size_;
  }

  memcpy(&begin[v14], v16, v17);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_274E042D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<char> *xgboost::JsonWriter::Visit(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  begin = result->__begin_;
  v5 = result->__end_ - result->__begin_;
  if (*(a2 + 16) == 1)
  {
    if (v5 > 0xFFFFFFFFFFFFFFFBLL)
    {
      result->__end_ = &begin[v5 + 4];
    }

    else
    {
      std::vector<char>::__append(result, 4uLL);
      result = *(a1 + 8);
      begin = result->__begin_;
    }

    begin[v5] = 116;
    v6 = 117;
    v7 = 114;
    v8 = 3;
    v9 = 2;
    v10 = 1;
  }

  else
  {
    if (v5 > 0xFFFFFFFFFFFFFFFALL)
    {
      result->__end_ = &begin[v5 + 5];
    }

    else
    {
      std::vector<char>::__append(result, 5uLL);
      result = *(a1 + 8);
      begin = result->__begin_;
    }

    begin[v5] = 102;
    v6 = 115;
    result->__begin_[v5 + 1] = 97;
    v7 = 108;
    v8 = 4;
    v9 = 3;
    v10 = 2;
  }

  result->__begin_[v5 + v10] = v7;
  result->__begin_[v5 + v9] = v6;
  result->__begin_[v5 + v8] = 101;
  return result;
}

_BYTE *xgboost::Value::TypeStr@<X0>(xgboost::Value *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 > 0xA)
  {
    v5 = &str_23;
  }

  else
  {
    v5 = (&off_279EF9A88)[v4];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v5);
}

uint64_t *xgboost::DummyJsonObject(xgboost *this)
{
  if ((atomic_load_explicit(&qword_280AF7150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF7150))
  {
    operator new();
  }

  return &_MergedGlobals_19;
}

uint64_t *xgboost::Value::operator[](xgboost::Value *a1)
{
  Entry = dmlc::LogMessageFatal::GetEntry(&v12);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/json.cc", 188);
  v3 = dmlc::LogMessageFatal::GetEntry(&v12);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Object of type ", 15);
  xgboost::Value::TypeStr(a1, __p);
  if ((v11 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v6 = v11;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " can not be indexed by string.", 30);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  dmlc::LogMessageFatal::~LogMessageFatal(&v12);
  xgboost::DummyJsonObject(v8);
  return &_MergedGlobals_19;
}

{
  Entry = dmlc::LogMessageFatal::GetEntry(&v12);
  dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/json.cc", 193);
  v3 = dmlc::LogMessageFatal::GetEntry(&v12);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Object of type ", 15);
  xgboost::Value::TypeStr(a1, __p);
  if ((v11 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v6 = v11;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " can not be indexed by Integer.", 31);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  dmlc::LogMessageFatal::~LogMessageFatal(&v12);
  xgboost::DummyJsonObject(v8);
  return &_MergedGlobals_19;
}

void *xgboost::JsonObject::JsonObject(void *a1, uint64_t a2)
{
  a1[1] = 0x300000000;
  *a1 = &unk_2883E6E50;
  a1[4] = 0;
  a1[3] = 0;
  a1[2] = a1 + 3;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::swap((a2 + 16), (a1 + 2));
  return a1;
}

{
  a1[1] = 0x300000000;
  *a1 = &unk_2883E6E50;
  a1[4] = 0;
  a1[3] = 0;
  a1[2] = a1 + 3;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::swap((a2 + 16), (a1 + 2));
  return a1;
}

void *xgboost::JsonObject::JsonObject(void *result, void *a2)
{
  result[1] = 0x300000000;
  result[2] = *a2;
  v2 = a2 + 1;
  v3 = a2[1];
  *result = &unk_2883E6E50;
  result[3] = v3;
  v4 = result + 3;
  v5 = a2[2];
  result[4] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *a2 = v2;
    *v2 = 0;
    a2[2] = 0;
  }

  else
  {
    result[2] = v4;
  }

  return result;
}

{
  result[1] = 0x300000000;
  result[2] = *a2;
  v2 = a2 + 1;
  v3 = a2[1];
  *result = &unk_2883E6E50;
  result[3] = v3;
  v4 = result + 3;
  v5 = a2[2];
  result[4] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *a2 = v2;
    *v2 = 0;
    a2[2] = 0;
  }

  else
  {
    result[2] = v4;
  }

  return result;
}

uint64_t xgboost::JsonObject::operator==(void *a1, uint64_t a2)
{
  if (*(a2 + 12) != 3)
  {
    return 0;
  }

  v3 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(a2);
  if (a1[4] == v3[4])
  {
    v4 = a1[2];
    v5 = a1 + 3;
    if (v4 == v5)
    {
      return 1;
    }

    v6 = v3[2];
    while (1)
    {
      v7 = *(v4 + 55);
      if (v7 >= 0)
      {
        v8 = *(v4 + 55);
      }

      else
      {
        v8 = v4[5];
      }

      v9 = *(v6 + 55);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = v6[5];
      }

      if (v8 != v9)
      {
        break;
      }

      v11 = v7 >= 0 ? v4 + 4 : v4[4];
      v12 = v10 >= 0 ? v6 + 4 : v6[4];
      if (memcmp(v11, v12, v8))
      {
        break;
      }

      result = (*(*v4[7] + 40))(v4[7], v6[7]);
      if (!result)
      {
        return result;
      }

      v14 = v4[1];
      v15 = v4;
      if (v14)
      {
        do
        {
          v4 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v4 = v15[2];
          v16 = *v4 == v15;
          v15 = v4;
        }

        while (!v16);
      }

      v17 = v6[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v6[2];
          v16 = *v18 == v6;
          v6 = v18;
        }

        while (!v16);
      }

      v6 = v18;
      if (v4 == v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL xgboost::JsonString::operator==(uint64_t a1, xgboost::Value *a2)
{
  if (*(a2 + 3))
  {
    return 0;
  }

  v4 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(a2);
  v5 = *(v4 + 39);
  if (v5 >= 0)
  {
    v6 = *(v4 + 39);
  }

  else
  {
    v6 = v4[3];
  }

  v7 = *(a1 + 39);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 24);
  }

  if (v6 != v7)
  {
    return 0;
  }

  v11 = v4[2];
  v9 = v4 + 2;
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  v14 = *(a1 + 16);
  v13 = (a1 + 16);
  v12 = v14;
  if (v8 >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  return memcmp(v9, v15, v6) == 0;
}

double xgboost::JsonArray::JsonArray(void *a1, void *a2)
{
  *&result = 0x400000000;
  a1[1] = 0x400000000;
  *a1 = &unk_2883E6E98;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  v3 = a2[2];
  a2[2] = 0;
  a1[2] = v3;
  v4 = a2[3];
  a2[3] = a1[3];
  a1[3] = v4;
  v5 = a2[4];
  a2[4] = a1[4];
  a1[4] = v5;
  return result;
}

{
  *&result = 0x400000000;
  a1[1] = 0x400000000;
  *a1 = &unk_2883E6E98;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  v3 = a2[2];
  a2[2] = 0;
  a1[2] = v3;
  v4 = a2[3];
  a2[3] = a1[3];
  a1[3] = v4;
  v5 = a2[4];
  a2[4] = a1[4];
  a1[4] = v5;
  return result;
}

uint64_t xgboost::JsonArray::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 12) != 4)
  {
    return 0;
  }

  v3 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(a2);
  v5 = a1 + 16;
  v4 = *(a1 + 16);
  v6 = v3[2];
  v7 = v3[3];
  if (*(v5 + 8) - v4 != v7 - v6)
  {
    return 0;
  }

  if (v6 == v7)
  {
    return 1;
  }

  v8 = v6 + 8;
  do
  {
    v9 = *v4++;
    result = (*(**(v8 - 8) + 40))(*(v8 - 8), v9);
    if (result)
    {
      v11 = v8 == v7;
    }

    else
    {
      v11 = 1;
    }

    v8 += 8;
  }

  while (!v11);
  return result;
}

BOOL xgboost::JsonNumber::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 12) != 1)
  {
    return 0;
  }

  v3 = *(xgboost::Cast<xgboost::JsonNumber const,xgboost::Value const>(a2) + 4);
  v4 = *(a1 + 16);
  if (fabsf(v4) == INFINITY)
  {
    return fabsf(v3) == INFINITY;
  }

  else
  {
    return v4 == v3;
  }
}

BOOL xgboost::JsonInteger::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 12) != 2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  return v2 == *(xgboost::Cast<xgboost::JsonInteger const,xgboost::Value const>(a2) + 2);
}

BOOL xgboost::JsonBoolean::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 12) != 5)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  return v2 == *(xgboost::Cast<xgboost::JsonBoolean const,xgboost::Value const>(a2) + 16);
}

uint64_t xgboost::JsonReader::Parse(xgboost::JsonReader *this)
{
  v2 = MEMORY[0x277D85DE0];
  while (1)
  {
    v3 = *(this + 3);
    v4 = *(this + 1);
    if (v4 < v3)
    {
      v5 = *(this + 2);
      while (1)
      {
        v6 = *(v5 + v4);
        v7 = v6 > 0x20;
        v8 = (1 << v6) & 0x100002600;
        if (v7 || v8 == 0)
        {
          break;
        }

        *(this + 1) = ++v4;
        if (v3 == v4)
        {
          goto LABEL_29;
        }
      }
    }

    if (v4 == v3)
    {
LABEL_29:
      operator new();
    }

    LODWORD(v4) = *(*(this + 2) + v4);
    if (v4 > 122)
    {
      if (v4 == 255)
      {
        goto LABEL_29;
      }

      if (v4 == 123)
      {
        return (*(*this + 8))(this);
      }
    }

    else
    {
      if (v4 == 45)
      {
        return (*(*this + 24))(this);
      }

      if (v4 == 91)
      {
        return (*(*this + 16))(this);
      }
    }

    v4 = v4;
    if ((v4 & 0x80000000) == 0 && (*(v2 + 4 * v4 + 60) & 0x400) != 0)
    {
      return (*(*this + 24))(this);
    }

    if (v4 > 0x65u)
    {
      break;
    }

    if (v4 == 34)
    {
      return (**this)(this);
    }

    if (v4 == 73 || v4 == 78)
    {
      return (*(*this + 24))(this);
    }

LABEL_27:
    std::string::basic_string[abi:ne200100]<0>(__p, "Unknown construct");
    xgboost::JsonReader::Error(this, __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v4 == 102)
  {
    return (*(*this + 32))(this);
  }

  if (v4 != 110)
  {
    if (v4 == 116)
    {
      return (*(*this + 32))(this);
    }

    goto LABEL_27;
  }

  return (*(*this + 40))(this);
}

void sub_274E05168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *xgboost::JsonReader::SkipSpaces(void *this)
{
  v1 = this[3];
  v2 = this[1];
  if (v2 < v1)
  {
    v3 = this[2];
    do
    {
      v4 = *(v3 + v2);
      v5 = v4 > 0x20;
      v6 = (1 << v4) & 0x100002600;
      if (v5 || v6 == 0)
      {
        break;
      }

      this[1] = ++v2;
    }

    while (v1 != v2);
  }

  return this;
}

uint64_t xgboost::JsonReader::Error(unint64_t *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v46);
  v4 = xgboost::StringView::substr((a1 + 2), 0, a1[3]);
  v6 = v5;
  if (v5)
  {
    v7 = v4;
    do
    {
      v8 = *v7;
      std::ostream::put();
      ++v7;
      --v6;
    }

    while (v6);
  }

  std::to_string(&v44, a1[1]);
  v9 = std::string::insert(&v44, 0, ", around character position: ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
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

  std::string::append(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  std::string::push_back(a2, 10);
  v13 = a1[1];
  if (!v13)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v44);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/json.cc", 374);
    v15 = dmlc::LogMessageFatal::GetEntry(&v44);
    v16 = *(a2 + 23);
    if (v16 >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    if (v16 >= 0)
    {
      v18 = *(a2 + 23);
    }

    else
    {
      v18 = *(a2 + 8);
    }

    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", ", 3);
    std::stringbuf::str();
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &__p;
    }

    else
    {
      v21 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = __p.__r_.__value_.__l.__size_;
    }

    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " ", 2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v44);
    v13 = a1[1];
  }

  if (v13 >= 8)
  {
    v24 = v13 - 8;
  }

  else
  {
    v24 = 0;
  }

  v25 = v13 + 8;
  if (v25 >= a1[3])
  {
    v26 = a1[3];
  }

  else
  {
    v26 = v25;
  }

  v27 = xgboost::StringView::substr((a1 + 2), v24, v26 - v24);
  v29 = v28;
  memset(&__p, 0, sizeof(__p));
  if (v28)
  {
    v30 = v27;
    do
    {
      v31 = *v30;
      if (*v30)
      {
        if (v31 != 10)
        {
          std::string::push_back(&__p, v31);
          goto LABEL_44;
        }

        v32 = "\\n";
      }

      else
      {
        v32 = "\\0";
      }

      std::string::append(&__p, v32);
LABEL_44:
      ++v30;
      --v29;
    }

    while (v29);
  }

  std::string::append(a2, "    ");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &__p;
  }

  else
  {
    v33 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v34 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v33, v34);
  std::string::push_back(a2, 10);
  std::string::append(a2, "    ");
  while (v24 < a1[1] - 1)
  {
    std::string::push_back(a2, 126);
    ++v24;
  }

  std::string::push_back(a2, 94);
  v35 = a1[1];
  v36 = v26 - v35;
  if (v26 > v35)
  {
    do
    {
      std::string::push_back(a2, 126);
      --v36;
    }

    while (v36);
  }

  v37 = dmlc::LogMessageFatal::GetEntry(&v44);
  dmlc::LogMessageFatal::Entry::Init(v37, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/json.cc", 407);
  v38 = dmlc::LogMessageFatal::GetEntry(&v44);
  v39 = *(a2 + 23);
  if (v39 >= 0)
  {
    v40 = a2;
  }

  else
  {
    v40 = *a2;
  }

  if (v39 >= 0)
  {
    v41 = *(a2 + 23);
  }

  else
  {
    v41 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v40, v41);
  dmlc::LogMessageFatal::~LogMessageFatal(&v44);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v46[0] = *MEMORY[0x277D82818];
  v42 = *(MEMORY[0x277D82818] + 72);
  *(v46 + *(v46[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v46[2] = v42;
  v47 = MEMORY[0x277D82878] + 16;
  if (v49 < 0)
  {
    operator delete(v48[7].__locale_);
  }

  v47 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v48);
  std::iostream::~basic_iostream();
  return MEMORY[0x277C690D0](&v50);
}

void sub_274E05648(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, int a5, __int16 a6, char a7, char a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  dmlc::LogMessageFatal::~LogMessageFatal(&a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15, MEMORY[0x277D82818]);
  MEMORY[0x277C690D0](va);
  _Unwind_Resume(a1);
}

unint64_t xgboost::StringView::substr(xgboost::StringView *this, unint64_t a2, unint64_t a3)
{
  v5 = a2;
  if (*(this + 1) < a2)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, this + 1);
  }

  if (*(this + 1) - v5 < a3)
  {
    v3 = *(this + 1) - v5;
  }

  return *this + v5;
}

void sub_274E05814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14)
{
  v15 = a14;
  a14 = 0;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a14, v15);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::ParseStr(uint64_t *a1)
{
  v1 = *(a1 + 23);
  v2 = v1;
  if ((v1 & 0x80u) != 0)
  {
    v1 = a1[1];
  }

  if (v1)
  {
    v3 = 0;
    if (v2 >= 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = *a1;
    }

    while (!v3 || *(v4 + v3) != 34 || *(v4 + v3 - 1) == 92)
    {
      if (v1 == ++v3)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v3 = 0;
  }

  memset(&v5, 0, sizeof(v5));
  std::string::resize(&v5, v3, 0);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_274E058E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::JsonReader::ParseString(xgboost::JsonReader *this)
{
  xgboost::JsonReader::GetConsecutiveChar(this, 0x22u);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  memset(&v11, 0, sizeof(v11));
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v2 = *(this + 1);
        v3 = *(this + 3);
        if (v2 == v3)
        {
          v5 = 255;
          goto LABEL_5;
        }

        v4 = *(this + 2);
        v5 = *(v4 + v2);
        v6 = v2 + 1;
        *(this + 1) = v2 + 1;
        if (v5 == 92)
        {
          break;
        }

        if (v5 == 34)
        {
          memset(&v11, 0, sizeof(v11));
          operator new();
        }

LABEL_5:
        std::string::push_back(&v11, v5);
        if (v5 == 10 || v5 == 255 || v5 == 13)
        {
          xgboost::JsonReader::Expect(this, 34, v5);
        }
      }

      if (v6 == v3)
      {
        goto LABEL_19;
      }

      v7 = *(v4 + v6);
      *(this + 1) = v2 + 2;
      if (v7 <= 113)
      {
        break;
      }

      switch(v7)
      {
        case 'r':
          v8 = "\r";
          goto LABEL_25;
        case 't':
          v8 = "\t";
LABEL_25:
          std::string::append(&v11, v8);
          break;
        case 'u':
          std::string::push_back(&v11, 92);
          std::string::push_back(&v11, 117);
          break;
        default:
          goto LABEL_19;
      }
    }

    switch(v7)
    {
      case '""':
        v8 = "";
        goto LABEL_25;
      case '\\':
        v8 = "\";
        goto LABEL_25;
      case 'n':
        v8 = "\n";
        goto LABEL_25;
    }

LABEL_19:
    std::string::basic_string[abi:ne200100]<0>(__p, "Unknown escape");
    xgboost::JsonReader::Error(this, __p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_274E05C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  std::ostringstream::~ostringstream(&a30);
  _Unwind_Resume(a1);
}

void xgboost::JsonReader::GetConsecutiveChar(xgboost::JsonReader *this, unsigned __int8 a2)
{
  v2 = *(this + 1);
  if (v2 == *(this + 3))
  {
    v3 = 255;
  }

  else
  {
    v3 = *(*(this + 2) + v2);
    *(this + 1) = v2 + 1;
  }

  if (v3 != a2)
  {
    xgboost::JsonReader::Expect(this, a2, v3);
  }
}

void xgboost::JsonReader::Expect(xgboost::JsonReader *this, std::string::value_type a2, int a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v16, "Expecting: ");
  std::string::push_back(v6, a2);
  std::string::append(&v16, ", got: ");
  if (!a3)
  {
    v7 = "\\0";
    goto LABEL_5;
  }

  if (a3 == -1)
  {
    v7 = "EOF";
LABEL_5:
    std::string::append(&v16, v7);
    goto LABEL_16;
  }

  *(&v13.__r_.__value_.__s + 23) = 1;
  LOWORD(v13.__r_.__value_.__l.__data_) = a3;
  v8 = std::string::append(&v13, " ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v15 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v15 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v15 >= 0)
  {
    v11 = HIBYTE(v15);
  }

  else
  {
    v11 = __p[1];
  }

  std::string::append(&v16, v10, v11);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

LABEL_16:
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = v16;
  }

  xgboost::JsonReader::Error(this, &v12);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_274E05E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void xgboost::JsonReader::ParseNull(xgboost::JsonReader *this)
{
  *(&v8.__r_.__value_.__s + 23) = 1;
  LOWORD(v8.__r_.__value_.__l.__data_) = xgboost::JsonReader::GetNextNonSpaceChar(this);
  v2 = 3;
  do
  {
    v3 = *(this + 1);
    if (v3 == *(this + 3))
    {
      v4 = -1;
    }

    else
    {
      v4 = *(*(this + 2) + v3);
      *(this + 1) = v3 + 1;
    }

    std::string::push_back(&v8, v4);
    --v2;
  }

  while (v2);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v8.__r_.__value_.__l.__size_ == 4)
    {
      v5 = v8.__r_.__value_.__r.__words[0];
LABEL_12:
      if (LODWORD(v5->__r_.__value_.__l.__data_) == 1819047278)
      {
        goto LABEL_15;
      }
    }
  }

  else if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) == 4)
  {
    v5 = &v8;
    goto LABEL_12;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Expecting null value null");
  xgboost::JsonReader::Error(this, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_15:
  operator new();
}

void sub_274E06040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::JsonReader::GetNextNonSpaceChar(xgboost::JsonReader *this)
{
  v1 = *(this + 3);
  v2 = *(this + 1);
  if (v2 < v1)
  {
    v3 = *(this + 2);
    while (1)
    {
      v4 = *(v3 + v2);
      v5 = v4 > 0x20;
      v6 = (1 << v4) & 0x100002600;
      if (v5 || v6 == 0)
      {
        break;
      }

      *(this + 1) = ++v2;
      if (v1 == v2)
      {
        return -1;
      }
    }
  }

  if (v2 == v1)
  {
    return -1;
  }

  else
  {
    v8 = *(*(this + 2) + v2);
    *(this + 1) = v2 + 1;
  }

  return v8;
}

void xgboost::JsonReader::ParseArray(xgboost::JsonReader *this)
{
  memset(v19, 0, 24);
  xgboost::JsonReader::GetConsecutiveChar(this, 0x5Bu);
  while (1)
  {
    v2 = *(this + 1);
    if (v2 != *(this + 3) && *(*(this + 2) + v2) == 93)
    {
      xgboost::JsonReader::GetConsecutiveChar(this, 0x5Du);
      v22 = 0x400000000;
      v21 = &unk_2883E6E98;
      v23 = v19[0];
      v24 = *&v19[1];
      memset(v19, 0, 24);
      operator new();
    }

    xgboost::JsonReader::Parse(&v20, this);
    v3 = *(&v19[0] + 1);
    if (*(&v19[0] + 1) >= *&v19[1])
    {
      v6 = (*(&v19[0] + 1) - *&v19[0]) >> 3;
      v7 = v6 + 1;
      if ((v6 + 1) >> 61)
      {
        std::vector<xgboost::Json>::__throw_length_error[abi:ne200100]();
      }

      v8 = *&v19[1] - *&v19[0];
      if ((*&v19[1] - *&v19[0]) >> 2 > v7)
      {
        v7 = v8 >> 2;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v9 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v7;
      }

      v24 = v19;
      if (v9)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::parameter::FieldAccessEntry *>>(v19, v9);
      }

      v10 = (8 * v6);
      v21 = 0;
      v22 = v10;
      *(&v23 + 1) = 0;
      v11 = v20;
      *v10 = v20;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
      }

      *&v23 = v10 + 1;
      v12 = (v10 + *&v19[0] - *(&v19[0] + 1));
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::Json>,xgboost::Json*>(v19, *&v19[0], *(&v19[0] + 1), v12);
      v13 = *&v19[0];
      v14 = *&v19[1];
      *&v19[0] = v12;
      v18 = v23;
      *(v19 + 8) = v23;
      *&v23 = v13;
      *(&v23 + 1) = v14;
      v21 = v13;
      v22 = v13;
      std::__split_buffer<xgboost::Json>::~__split_buffer(&v21);
      v5 = v18;
    }

    else
    {
      v4 = v20;
      **(&v19[0] + 1) = v20;
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
      }

      v5 = v3 + 8;
    }

    *(&v19[0] + 1) = v5;
    NextNonSpaceChar = xgboost::JsonReader::GetNextNonSpaceChar(this);
    if (NextNonSpaceChar == 44)
    {
      goto LABEL_23;
    }

    if (NextNonSpaceChar != 93)
    {
      break;
    }

    v16 = 0;
LABEL_24:
    v17 = v20;
    if (v20 && atomic_fetch_add_explicit((v20 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*v17 + 8))(v17);
    }

    if ((v16 & 1) == 0)
    {
      v22 = 0x400000000;
      v21 = &unk_2883E6E98;
      v23 = v19[0];
      v24 = *&v19[1];
      memset(v19, 0, 24);
      operator new();
    }
  }

  xgboost::JsonReader::Expect(this, 44, NextNonSpaceChar);
LABEL_23:
  v16 = 1;
  goto LABEL_24;
}

void sub_274E06434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&a15);
  a15 = &a11;
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void xgboost::JsonArray::~JsonArray(xgboost::JsonArray *this)
{
  *this = &unk_2883E6E98;
  v1 = (this + 16);
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2883E6E98;
  v2 = (this + 16);
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x277C69180](this, 0x10A1C405897D53FLL);
}

void xgboost::JsonReader::ParseObject(xgboost::JsonReader *this)
{
  xgboost::JsonReader::GetConsecutiveChar(this, 0x7Bu);
  v31 = 0;
  v32 = 0;
  v30 = &v31;
  v2 = *(this + 3);
  v3 = *(this + 1);
  if (v3 < v2)
  {
    v4 = *(this + 2);
    while (1)
    {
      v5 = *(v4 + v3);
      v6 = v5 > 0x20;
      v7 = (1 << v5) & 0x100002600;
      if (v6 || v7 == 0)
      {
        break;
      }

      *(this + 1) = ++v3;
      if (v2 == v3)
      {
        goto LABEL_13;
      }
    }
  }

  if (v3 != v2 && *(*(this + 2) + v3) == 125)
  {
    xgboost::JsonReader::GetConsecutiveChar(this, 0x7Du);
    v34 = 0x300000000;
    v33 = &unk_2883E6E50;
    v35 = v30;
    v36 = v31;
    v37 = v32;
    if (v32)
    {
      *(v31 + 16) = &v36;
      v30 = &v31;
      v31 = 0;
      v32 = 0;
    }

    else
    {
      v35 = &v36;
    }

    xgboost::Json::Json();
  }

LABEL_13:
  v9 = *MEMORY[0x277D82828];
  v10 = *(MEMORY[0x277D82828] + 24);
  while (1)
  {
    v11 = *(this + 3);
    v12 = *(this + 1);
    if (v12 < v11)
    {
      v13 = *(this + 2);
      while (1)
      {
        v14 = *(v13 + v12);
        v6 = v14 > 0x20;
        v15 = (1 << v14) & 0x100002600;
        if (v6 || v15 == 0)
        {
          break;
        }

        *(this + 1) = ++v12;
        if (v11 == v12)
        {
          goto LABEL_26;
        }
      }
    }

    if (v12 == v11 || (v17 = *(*(this + 2) + v12), v17 == 255))
    {
LABEL_26:
      std::ostringstream::basic_ostringstream[abi:ne200100](&v33);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, " (", 2);
      LOBYTE(v28) = -1;
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, &v28, 1);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " vs. ", 5);
      v21 = MEMORY[0x277C68E20](v20, 0xFFFFFFFFLL);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ") ", 2);
      operator new();
    }

    if (v17 != 34)
    {
      xgboost::JsonReader::Expect(this, 34, v17);
    }

    (**this)(&v29, this);
    NextNonSpaceChar = xgboost::JsonReader::GetNextNonSpaceChar(this);
    if (NextNonSpaceChar != 58)
    {
      xgboost::JsonReader::Expect(this, 58, NextNonSpaceChar);
    }

    xgboost::JsonReader::Parse(&v28, this);
    v33 = (xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v29) + 16);
    v23 = std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v30, v33);
    v24 = *(v23 + 56);
    *(v23 + 56) = v28;
    v28 = v24;
    v25 = xgboost::JsonReader::GetNextNonSpaceChar(this);
    if (v25 == 44)
    {
      goto LABEL_35;
    }

    if (v25 != 125)
    {
      break;
    }

    v26 = 0;
    if (!v24)
    {
      goto LABEL_38;
    }

LABEL_36:
    if (atomic_fetch_add_explicit(v24 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*v24 + 8))(v24);
    }

LABEL_38:
    v27 = v29;
    if (v29 && atomic_fetch_add_explicit(v29 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*v27 + 8))(v27);
    }

    if ((v26 & 1) == 0)
    {
      v34 = 0x300000000;
      v33 = &unk_2883E6E50;
      v35 = v30;
      v36 = v31;
      v37 = v32;
      if (v32)
      {
        *(v31 + 16) = &v36;
        v30 = &v31;
        v31 = 0;
        v32 = 0;
      }

      else
      {
        v35 = &v36;
      }

      xgboost::Json::Json();
    }
  }

  xgboost::JsonReader::Expect(this, 44, v25);
  v24 = v28;
LABEL_35:
  v26 = 1;
  if (!v24)
  {
    goto LABEL_38;
  }

  goto LABEL_36;
}

void sub_274E06B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20)
{
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v20 + 16, a20);
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(&a13, a14);
  _Unwind_Resume(a1);
}

void xgboost::JsonObject::~JsonObject(char **this)
{
  *this = &unk_2883E6E50;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy((this + 2), this[3]);
}

{
  *this = &unk_2883E6E50;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy((this + 2), this[3]);

  JUMPOUT(0x277C69180);
}

void xgboost::JsonReader::ParseNumber(xgboost::JsonReader *this, uint64_t a2, uint64_t a3, float *a4)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = *(this + 1);
  v6 = (*(this + 2) + v5);
  v7 = *v6;
  switch(v7)
  {
    case '+':
      v8 = 0;
      break;
    case '-':
      v8 = 1;
      break;
    case 'N':
      xgboost::JsonReader::GetConsecutiveChar(this, 0x4Eu);
      xgboost::JsonReader::GetConsecutiveChar(this, 0x61u);
      xgboost::JsonReader::GetConsecutiveChar(this, 0x4Eu);
      v30 = 0x100000000;
      v29 = &unk_2883E6FC8;
      v31 = 2143289344;
      operator new();
    default:
      v8 = 0;
      v9 = (*(this + 2) + v5);
LABEL_8:
      if (v7 == 48)
      {
        v12 = *++v9;
        v7 = v12;
      }

      else if (v7 == 73)
      {
        v10 = 0;
        *(this + 1) = (v9 - v6) + v5;
        v32[0] = 0x7974696E69666E49;
        do
        {
          xgboost::JsonReader::GetConsecutiveChar(this, *(v32 + v10++));
        }

        while (v10 != 8);
        v11 = INFINITY;
        if (v8)
        {
          v11 = -INFINITY;
        }

        v27 = 0x100000000;
        v26 = &unk_2883E6FC8;
        v28 = v11;
        operator new();
      }

      if ((v7 - 48) > 9)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        do
        {
          v13 = 10 * v13 + v7 - 48;
          v14 = *++v9;
          v7 = v14;
        }

        while ((v14 - 48) < 0xA);
      }

      if (v7 == 46)
      {
        v16 = *++v9;
        v15 = v16;
        if ((v16 - 48) <= 9)
        {
          do
          {
            v13 = 10 * v13 + (v15 - 48);
            v17 = *++v9;
            v15 = v17;
          }

          while ((v17 - 48) < 0xA);
        }
      }

      else
      {
        v15 = v7;
      }

      if ((v15 | 0x20) == 0x65)
      {
        v18 = v9[1];
        if (v18 == 45 || v18 == 43)
        {
          v20 = v9[2];
          v19 = v9 + 2;
          v18 = v20;
        }

        else
        {
          v19 = v9 + 1;
        }

        if ((v18 - 48) > 9)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "Expecting digit");
          xgboost::JsonReader::Error(this, __p);
          if (v25 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          do
          {
            v22 = *++v19;
          }

          while ((v22 - 48) < 0xA);
        }

        v21 = (v19 - v6);
        *(this + 1) += (v19 - v6);
      }

      else
      {
        v21 = (v9 - v6);
        *(this + 1) = v5 + (v9 - v6);
        if (v7 != 46)
        {
          operator new();
        }
      }

      LODWORD(v32[0]) = 0;
      xgboost::detail::FromCharFloatImpl(v6, v21, v32, a4);
      if (v23)
      {
        LODWORD(v32[0]) = strtof(v6, 0);
      }

      operator new();
  }

  v9 = (v6 + 1);
  v7 = v6[1];
  goto LABEL_8;
}

void sub_274E070E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::JsonReader::ParseBoolean(xgboost::JsonReader *this)
{
  NextNonSpaceChar = xgboost::JsonReader::GetNextNonSpaceChar(this);
  std::string::basic_string[abi:ne200100]<0>(&v5, "true");
  std::string::basic_string[abi:ne200100]<0>(&__p, "false");
  if (NextNonSpaceChar == 116)
  {
    xgboost::JsonReader::GetConsecutiveChar(this, 0x72u);
    v3 = 117;
  }

  else
  {
    xgboost::JsonReader::GetConsecutiveChar(this, 0x61u);
    xgboost::JsonReader::GetConsecutiveChar(this, 0x6Cu);
    v3 = 115;
  }

  xgboost::JsonReader::GetConsecutiveChar(this, v3);
  xgboost::JsonReader::GetConsecutiveChar(this, 0x65u);
  operator new();
}

void sub_274E07264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_274E073F0(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add_explicit(v1 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::Json::Dump(atomic_uint **a1, std::string *a2, char a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v4 = *a1;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
  }

  xgboost::Json::Dump(&v6, &v7, a3);
  if (v4 && atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v4 + 8))(v4);
  }

  std::string::resize(a2, v8 - v7, 0);
  v5 = v7;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v8 != v7)
  {
    memmove(a2, v7, v8 - v7);
    v5 = v7;
  }

  if (v5)
  {
    v8 = v5;
    operator delete(v5);
  }
}

void sub_274E0754C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::Json::Dump(atomic_uint **a1, void *a2, char a3)
{
  a2[1] = *a2;
  if ((a3 & 4) != 0)
  {
    v5 = &unk_2883E72B0;
    v6 = a2;
    v3 = *a1;
    if (*a1)
    {
      atomic_fetch_add_explicit(v3 + 2, 1u, memory_order_relaxed);
    }
  }

  else
  {
    v5 = &unk_2883E71B0;
    v6 = a2;
    v3 = *a1;
    if (*a1)
    {
      atomic_fetch_add_explicit(v3 + 2, 1u, memory_order_relaxed);
    }
  }

  result = (*(*v3 + 16))(v3, &v5);
  if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    return (*(*v3 + 8))(v3);
  }

  return result;
}

void sub_274E076E8(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add_explicit(v1 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::Json::Dump(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  (*(*a2 + 16))(a2, &v4);
  result = v4;
  if (v4)
  {
    if (atomic_fetch_add_explicit((v4 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_274E07820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void xgboost::UBJReader::ParseArray(xgboost::UBJReader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 3);
  if (v2 == v3)
  {
    memset(&v67, 0, sizeof(v67));
  }

  else
  {
    v15 = *(this + 2);
    v16 = *(v15 + v2);
    if (v16 == 36)
    {
      *(this + 1) = v2 + 1;
      if (v2 + 1 == v3)
      {
        v17 = 255;
      }

      else
      {
        v17 = *(v15 + v2 + 1);
        *(this + 1) = v2 + 2;
      }

      xgboost::JsonReader::GetConsecutiveChar(this, 0x23u);
      xgboost::JsonReader::GetConsecutiveChar(this, 0x4Cu);
      v18 = 0;
      v20 = *(this + 1);
      v19 = *(this + 2);
      v21 = *(v19 + v20);
      v22 = v20 + 8;
      *(this + 1) = v22;
      __p[0] = v21;
      v23 = 7;
      do
      {
        v24 = *(__p + v23);
        *(__p + v23) = *(__p + v18);
        *(__p + v18++) = v24;
        --v23;
      }

      while (v18 != 4);
      v25 = __p[0];
      if (v22 == *(this + 3))
      {
        v16 = 255;
      }

      else
      {
        v16 = *(v19 + v22);
      }

      if (v17 > 99)
      {
        if (v17 == 108)
        {
          xgboost::JsonTypedArray<int,(xgboost::Value::ValueKind)9>::JsonTypedArray(__p, __p[0]);
          if (v25 >= 1)
          {
            v59 = v70;
            v61 = *(this + 1);
            v60 = *(this + 2);
            do
            {
              v62 = *(v60 + v61);
              v61 += 4;
              *(this + 1) = v61;
              *v59++ = bswap32(v62);
              --v25;
            }

            while (v25);
          }

          operator new();
        }

        if (v17 == 100)
        {
          xgboost::JsonTypedArray<float,(xgboost::Value::ValueKind)7>::JsonTypedArray(__p, __p[0]);
          if (v25 >= 1)
          {
            v29 = v70;
            v31 = *(this + 1);
            v30 = *(this + 2);
            do
            {
              v32 = *(v30 + v31);
              v31 += 4;
              *(this + 1) = v31;
              *v29++ = bswap32(v32);
              --v25;
            }

            while (v25);
          }

          operator new();
        }
      }

      else
      {
        if (v17 == 76)
        {
          xgboost::JsonTypedArray<long long,(xgboost::Value::ValueKind)10>::JsonTypedArray(__p, __p[0]);
          if (v25 >= 1)
          {
            v51 = 0;
            v52 = v70;
            v54 = *(this + 1);
            v53 = *(this + 2);
            do
            {
              v55 = 0;
              v56 = *(v53 + v54);
              v54 += 8;
              *(this + 1) = v54;
              v67.__r_.__value_.__r.__words[0] = v56;
              v57 = 7;
              do
              {
                v58 = v67.__r_.__value_.__s.__data_[v57];
                v67.__r_.__value_.__s.__data_[v57] = v67.__r_.__value_.__s.__data_[v55];
                v67.__r_.__value_.__s.__data_[v55++] = v58;
                --v57;
              }

              while (v55 != 4);
              *(v52 + 8 * v51++) = v67.__r_.__value_.__r.__words[0];
            }

            while (v51 != v25);
          }

          operator new();
        }

        if (v17 == 85)
        {
          xgboost::JsonTypedArray<unsigned char,(xgboost::Value::ValueKind)8>::JsonTypedArray(__p, __p[0]);
          if (v25 >= 1)
          {
            for (i = 0; i != v25; ++i)
            {
              v27 = *(this + 1);
              v28 = *(*(this + 2) + v27);
              *(this + 1) = v27 + 1;
              *(v70 + i) = v28;
            }
          }

          operator new();
        }
      }

      Entry = dmlc::LogMessageFatal::GetEntry(&v68);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/json.cc", 742);
      v34 = dmlc::LogMessageFatal::GetEntry(&v68);
      *(&v66.__r_.__value_.__s + 23) = 1;
      LOWORD(v66.__r_.__value_.__l.__data_) = v17;
      v36 = *&v35->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      v38 = *&v37->__r_.__value_.__l.__data_;
      *&v70 = *(&v37->__r_.__value_.__l + 2);
      *__p = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      if ((SBYTE7(v70) & 0x80u) == 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = __p[0];
      }

      if ((SBYTE7(v70) & 0x80u) == 0)
      {
        v40 = BYTE7(v70);
      }

      else
      {
        v40 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v39, v40);
      if (SBYTE7(v70) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      dmlc::LogMessageFatal::~LogMessageFatal(&v68);
    }

    memset(&v67, 0, sizeof(v67));
    if (v16 == 35)
    {
      v41 = *(this + 1);
      if (v41 != *(this + 3))
      {
        *(this + 1) = v41 + 1;
      }

      xgboost::JsonReader::GetConsecutiveChar(this, 0x4Cu);
      v42 = 0;
      v43 = *(this + 1);
      v44 = *(*(this + 2) + v43);
      *(this + 1) = v43 + 8;
      __p[0] = v44;
      v45 = 7;
      do
      {
        v46 = *(__p + v45);
        *(__p + v45) = *(__p + v42);
        *(__p + v42++) = v46;
        --v45;
      }

      while (v42 != 4);
      v47 = __p[0];
      v48 = (v67.__r_.__value_.__l.__size_ - v67.__r_.__value_.__r.__words[0]) >> 3;
      if (__p[0] <= v48)
      {
        if (__p[0] < v48)
        {
          std::vector<xgboost::Json>::__base_destruct_at_end[abi:ne200100](&v67, v67.__r_.__value_.__r.__words[0] + 8 * __p[0]);
        }
      }

      else
      {
        if (__p[0] - v48 > ((v67.__r_.__value_.__r.__words[2] - v67.__r_.__value_.__l.__size_) >> 3))
        {
          if (!(__p[0] >> 61))
          {
            v49 = (v67.__r_.__value_.__r.__words[2] - v67.__r_.__value_.__r.__words[0]) >> 2;
            if (v49 <= __p[0])
            {
              v49 = __p[0];
            }

            if (v67.__r_.__value_.__r.__words[2] - v67.__r_.__value_.__r.__words[0] >= 0x7FFFFFFFFFFFFFF8)
            {
              v50 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v50 = v49;
            }

            v71 = &v67;
            std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::parameter::FieldAccessEntry *>>(&v67, v50);
          }

          std::vector<xgboost::Json>::__throw_length_error[abi:ne200100]();
        }

        std::vector<xgboost::Json>::__construct_at_end(&v67, __p[0] - v48);
      }

      if (v47 >= 1)
      {
        for (j = 0; j != v47; ++j)
        {
          xgboost::UBJReader::Parse(__p, this);
          v64 = *(v67.__r_.__value_.__r.__words[0] + 8 * j);
          *(v67.__r_.__value_.__r.__words[0] + 8 * j) = __p[0];
          __p[0] = v64;
          if (v64 && atomic_fetch_add_explicit(v64 + 2, 0xFFFFFFFF, memory_order_release) == 1)
          {
            __dmb(9u);
            (*(*v64 + 8))(v64);
          }
        }
      }

LABEL_19:
      __p[1] = 0x400000000;
      __p[0] = &unk_2883E6E98;
      v70 = 0uLL;
      v71 = 0;
      std::vector<xgboost::Json>::__init_with_size[abi:ne200100]<xgboost::Json*,xgboost::Json*>(&v70, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_, (v67.__r_.__value_.__l.__size_ - v67.__r_.__value_.__r.__words[0]) >> 3);
      operator new();
    }

    if (v16 == 93)
    {
LABEL_18:
      xgboost::JsonReader::GetConsecutiveChar(this, 0x5Du);
      goto LABEL_19;
    }
  }

  do
  {
    xgboost::UBJReader::Parse(&v66, this);
    size = v67.__r_.__value_.__l.__size_;
    if (v67.__r_.__value_.__l.__size_ >= v67.__r_.__value_.__r.__words[2])
    {
      v5 = (v67.__r_.__value_.__l.__size_ - v67.__r_.__value_.__r.__words[0]) >> 3;
      v6 = v5 + 1;
      if ((v5 + 1) >> 61)
      {
        std::vector<xgboost::Json>::__throw_length_error[abi:ne200100]();
      }

      v7 = v67.__r_.__value_.__r.__words[2] - v67.__r_.__value_.__r.__words[0];
      if ((v67.__r_.__value_.__r.__words[2] - v67.__r_.__value_.__r.__words[0]) >> 2 > v6)
      {
        v6 = v7 >> 2;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v6;
      }

      v71 = &v67;
      if (v8)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::parameter::FieldAccessEntry *>>(&v67, v8);
      }

      v9 = (8 * v5);
      __p[0] = 0;
      __p[1] = v9;
      *(&v70 + 1) = 0;
      *v9 = 0;
      *(8 * v5) = v66.__r_.__value_.__r.__words[0];
      v66.__r_.__value_.__r.__words[0] = 0;
      *&v70 = 8 * v5 + 8;
      v10 = 8 * v5 + v67.__r_.__value_.__r.__words[0] - v67.__r_.__value_.__l.__size_;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::Json>,xgboost::Json*>(&v67, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_, (v9 + v67.__r_.__value_.__r.__words[0] - v67.__r_.__value_.__l.__size_));
      v11 = v67.__r_.__value_.__r.__words[0];
      v12 = v67.__r_.__value_.__r.__words[2];
      v67.__r_.__value_.__r.__words[0] = v10;
      v65 = v70;
      *&v67.__r_.__value_.__r.__words[1] = v70;
      *&v70 = v11;
      *(&v70 + 1) = v12;
      __p[0] = v11;
      __p[1] = v11;
      std::__split_buffer<xgboost::Json>::~__split_buffer(__p);
      v13 = v66.__r_.__value_.__r.__words[0];
      v67.__r_.__value_.__l.__size_ = v65;
      if (v66.__r_.__value_.__r.__words[0] && atomic_fetch_add_explicit((v66.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v13 + 8))(v13);
      }
    }

    else
    {
      *v67.__r_.__value_.__l.__size_ = 0;
      *size = v66.__r_.__value_.__r.__words[0];
      v67.__r_.__value_.__l.__size_ = (size + 1);
    }

    v14 = *(this + 1);
  }

  while (v14 == *(this + 3) || *(*(this + 2) + v14) != 93);
  goto LABEL_18;
}

void sub_274E08158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34)
{
  std::__split_buffer<xgboost::Json>::~__split_buffer(&__p);
  a12 = &a18;
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t xgboost::UBJReader::Parse(xgboost::UBJReader *this)
{
  v1 = *(this + 1);
  if (v1 == *(this + 3))
  {
LABEL_2:
    operator new();
  }

  while (1)
  {
    v3 = *(this + 2);
    v4 = *(v3 + v1);
    if (v4 == 255)
    {
      goto LABEL_2;
    }

    v5 = v1 + 1;
    *(this + 1) = v1 + 1;
    if (v4 < 72)
    {
      if (v4 != 68)
      {
        if (v4 == 67)
        {
          v16 = *(v3 + v5);
          *(this + 1) = v1 + 2;
          v24 = 0x200000000;
          v23 = &unk_2883E7028;
          v25 = v16;
          operator new();
        }

        if (v4 == 70)
        {
          v48 = 0x500000000;
          v47 = &unk_2883E70E8;
          v49 = 1;
          operator new();
        }

        goto LABEL_15;
      }

      Entry = dmlc::LogMessageFatal::GetEntry(v41);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/json.cc", 852);
      v7 = dmlc::LogMessageFatal::GetEntry(v41);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "f64 is not supported.", 21);
      dmlc::LogMessageFatal::~LogMessageFatal(v41);
LABEL_14:
      v8 = dmlc::LogMessageFatal::GetEntry(v41);
      dmlc::LogMessageFatal::Entry::Init(v8, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/common/json.cc", 855);
      v9 = dmlc::LogMessageFatal::GetEntry(v41);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "High precision number is not supported.", 39);
      dmlc::LogMessageFatal::~LogMessageFatal(v41);
      goto LABEL_15;
    }

    if (v4 <= 72)
    {
      goto LABEL_14;
    }

    if (v4 <= 89)
    {
      if (v4 <= 82)
      {
        if (v4 == 73)
        {
          v18 = *(v3 + v5);
          *(this + 1) = v1 + 3;
          v33 = 0x200000000;
          v32 = &unk_2883E7028;
          v34 = (bswap32(v18) >> 16);
          operator new();
        }

        if (v4 == 76)
        {
          v10 = 0;
          v11 = *(v3 + v5);
          *(this + 1) = v1 + 9;
          v41[0] = v11;
          v12 = 7;
          do
          {
            v13 = *(v41 + v12);
            *(v41 + v12) = *(v41 + v10);
            *(v41 + v10++) = v13;
            --v12;
          }

          while (v10 != 4);
          v27 = 0x200000000;
          v26 = &unk_2883E7028;
          v28 = v41[0];
          operator new();
        }
      }

      else
      {
        switch(v4)
        {
          case 'S':
            xgboost::UBJReader::DecodeStr(this, &v43);
            v41[0] = &unk_2883E6F38;
            v41[1] = 0;
            if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v42, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
            }

            else
            {
              v42 = v43;
            }

            operator new();
          case 'T':
            v51 = 0x500000000;
            v50 = &unk_2883E70E8;
            v52 = 1;
            operator new();
          case 'U':
            v14 = *(v3 + v5);
            *(this + 1) = v1 + 2;
            v36 = 0x200000000;
            v35 = &unk_2883E7028;
            v37 = v14;
            operator new();
        }
      }

      goto LABEL_15;
    }

    if (v4 <= 104)
    {
      break;
    }

    switch(v4)
    {
      case 'i':
        v17 = *(v3 + v5);
        *(this + 1) = v1 + 2;
        v39 = 0x200000000;
        v38 = &unk_2883E7028;
        v40 = v17;
        operator new();
      case 'l':
        v20 = *(v3 + v5);
        *(this + 1) = v1 + 5;
        v30 = 0x200000000;
        v29 = &unk_2883E7028;
        v31 = bswap32(v20);
        operator new();
      case '{':
        return (*(*this + 8))(this);
    }

LABEL_15:
    std::string::basic_string[abi:ne200100]<0>(__p, "Unknown construct");
    xgboost::JsonReader::Error(this, __p);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    v1 = *(this + 1);
    if (v1 == *(this + 3))
    {
      goto LABEL_2;
    }
  }

  if (v4 == 90)
  {
    v54 = 0x600000000;
    v53 = &unk_2883E7088;
    operator new();
  }

  if (v4 != 91)
  {
    if (v4 == 100)
    {
      v15 = *(v3 + v5);
      *(this + 1) = v1 + 5;
      v45 = 0x100000000;
      v44 = &unk_2883E6FC8;
      v46 = bswap32(v15);
      operator new();
    }

    goto LABEL_15;
  }

  return (*(*this + 16))(this);
}

void sub_274E08B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 169) < 0)
  {
    operator delete(*(v40 - 192));
  }

  _Unwind_Resume(exception_object);
}

void *xgboost::UBJReader::DecodeStr@<X0>(xgboost::UBJReader *this@<X0>, uint64_t a2@<X8>)
{
  xgboost::JsonReader::GetConsecutiveChar(this, 0x4Cu);
  v4 = 0;
  v5 = *(this + 1);
  v6 = *(*(this + 2) + v5);
  *(this + 1) = v5 + 8;
  __n = v6;
  v7 = 7;
  do
  {
    v8 = *(&__n + v7);
    *(&__n + v7) = *(&__n + v4);
    *(&__n + v4++) = v8;
    --v7;
  }

  while (v4 != 4);
  v9 = __n;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::string::resize(a2, v9, 0);
  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  result = memcpy(v10, (*(this + 2) + *(this + 1)), v9);
  *(this + 1) += v9;
  return result;
}

void sub_274E08CB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::UBJReader::ParseObject(xgboost::UBJReader *this)
{
  v2 = *(this + 1);
  if (v2 == *(this + 3))
  {
    v12 = 0;
    v13 = 0;
    v11 = &v12;
    goto LABEL_4;
  }

  v3 = *(*(this + 2) + v2);
  v12 = 0;
  v13 = 0;
  v11 = &v12;
  if (v3 != 125)
  {
    do
    {
      while (1)
      {
LABEL_4:
        xgboost::UBJReader::DecodeStr(this, __p);
        xgboost::UBJReader::Parse(&v8, this);
        if (!*std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__find_equal<std::string>(&v11, &v14, __p))
        {
          operator new();
        }

        v4 = v8;
        if (v8 && atomic_fetch_add_explicit((v8 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          __dmb(9u);
          (*(*v4 + 8))(v4);
        }

        v5 = *(this + 1);
        v6 = v5 != *(this + 3) && *(*(this + 2) + v5) == 125;
        if (v10 < 0)
        {
          break;
        }

        if (v6)
        {
          goto LABEL_16;
        }
      }

      operator delete(__p[0]);
    }

    while (!v6);
  }

LABEL_16:
  xgboost::JsonReader::GetConsecutiveChar(this, 0x7Du);
  v7[0] = v12;
  v7[1] = v13;
  if (v13)
  {
    *(v12 + 16) = v7;
    v11 = &v12;
    v12 = 0;
    v13 = 0;
  }

  xgboost::Json::Json();
}

void sub_274E08F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, char *a23)
{
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v23 + 16, a13);
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(&a22, a23);
  _Unwind_Resume(a1);
}

void xgboost::UBJWriter::Visit(xgboost::UBJWriter *this, const xgboost::JsonArray *a2)
{
  v4 = *(this + 1);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = &v6[-*v4];
    v10 = (v9 + 1);
    if ((v9 + 1) < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v11 = v5 - v8;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    v13 = &v6[-*v4];
    *v9 = 91;
    v7 = v9 + 1;
    memcpy(0, v8, v13);
    *v4 = 0;
    *(v4 + 8) = v9 + 1;
    *(v4 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v6 = 91;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  v14 = (*(a2 + 3) - *(a2 + 2)) >> 3;
  v15 = *(this + 1);
  v23 = 35;
  std::vector<char>::push_back[abi:ne200100](v15, &v23);
  v16 = *(this + 1);
  v22 = 76;
  std::vector<char>::push_back[abi:ne200100](v16, &v22);
  v18 = *(a2 + 2);
  for (i = *(a2 + 3); v18 != i; ++v18)
  {
    v19 = *v18;
    v21 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1u, memory_order_relaxed);
    }

    (*(*this + 16))(this, &v21);
    v20 = v21;
    if (v21)
    {
      if (atomic_fetch_add_explicit((v21 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v20 + 8))(v20);
      }
    }
  }
}

void sub_274E091E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a9 + 8))(a9);
    }
  }

  _Unwind_Resume(exception_object);
}

void xgboost::anonymous namespace::WritePrimitive<long long>(uint64_t a1, std::vector<char> *this)
{
  v3 = 0;
  v9 = a1;
  v4 = 7;
  do
  {
    v5 = *(&v9 + v4);
    *(&v9 + v4) = *(&v9 + v3);
    *(&v9 + v3++) = v5;
    --v4;
  }

  while (v3 != 4);
  v6 = v9;
  begin = this->__begin_;
  v8 = this->__end_ - this->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFF7)
  {
    this->__end_ = &begin[v8 + 8];
  }

  else
  {
    std::vector<char>::__append(this, 8uLL);
    begin = this->__begin_;
  }

  *&begin[v8] = v6;
}

void xgboost::UBJWriter::Visit(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  end = v3->__end_;
  value = v3->__end_cap_.__value_;
  if (end >= value)
  {
    begin = v3->__begin_;
    v8 = (end - v3->__begin_);
    v9 = (v8 + 1);
    if ((v8 + 1) < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = value - begin;
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
      operator new();
    }

    v12 = end - v3->__begin_;
    *v8 = 91;
    v6 = v8 + 1;
    memcpy(0, begin, v12);
    v3->__begin_ = 0;
    v3->__end_ = v8 + 1;
    v3->__end_cap_.__value_ = 0;
    if (begin)
    {
      operator delete(begin);
    }
  }

  else
  {
    *end = 91;
    v6 = end + 1;
  }

  v3->__end_ = v6;
  v22 = 36;
  std::vector<char>::push_back[abi:ne200100](v3, &v22);
  v21 = 100;
  std::vector<char>::push_back[abi:ne200100](v3, &v21);
  v20 = 35;
  std::vector<char>::push_back[abi:ne200100](v3, &v20);
  v19 = 76;
  std::vector<char>::push_back[abi:ne200100](v3, &v19);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = v3->__end_ - v3->__begin_;
  v16 = *(a2 + 24) - *(a2 + 16);
  if (v15 >= v16 + v15)
  {
    if (v15 > v16 + v15)
    {
      v3->__end_ = &v3->__begin_[v16 + v15];
    }
  }

  else
  {
    std::vector<char>::__append(v3, v16);
  }

  if (v13 != v14)
  {
    v17 = 0;
    if (((v13 - v14) >> 2) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = (v13 - v14) >> 2;
    }

    do
    {
      *&v3->__begin_[v15] = bswap32(*(*(a2 + 16) + 4 * v17));
      v15 += 4;
      ++v17;
    }

    while (v18 != v17);
  }
}

{
  v3 = *(a1 + 8);
  end = v3->__end_;
  value = v3->__end_cap_.__value_;
  if (end >= value)
  {
    begin = v3->__begin_;
    v8 = (end - v3->__begin_);
    v9 = (v8 + 1);
    if ((v8 + 1) < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = value - begin;
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
      operator new();
    }

    v12 = end - v3->__begin_;
    *v8 = 91;
    v6 = v8 + 1;
    memcpy(0, begin, v12);
    v3->__begin_ = 0;
    v3->__end_ = v8 + 1;
    v3->__end_cap_.__value_ = 0;
    if (begin)
    {
      operator delete(begin);
    }
  }

  else
  {
    *end = 91;
    v6 = end + 1;
  }

  v3->__end_ = v6;
  v22 = 36;
  std::vector<char>::push_back[abi:ne200100](v3, &v22);
  v21 = 85;
  std::vector<char>::push_back[abi:ne200100](v3, &v21);
  v20 = 35;
  std::vector<char>::push_back[abi:ne200100](v3, &v20);
  v19 = 76;
  std::vector<char>::push_back[abi:ne200100](v3, &v19);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = v3->__end_ - v3->__begin_;
  v16 = *(a2 + 24) - *(a2 + 16);
  if (v15 >= v16 + v15)
  {
    if (v15 > v16 + v15)
    {
      v3->__end_ = &v3->__begin_[v16 + v15];
    }
  }

  else
  {
    std::vector<char>::__append(v3, v16);
  }

  if (v13 != v14)
  {
    v17 = 0;
    if ((v13 - v14) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v13 - v14;
    }

    do
    {
      v3->__begin_[v15++] = *(*(a2 + 16) + v17++);
    }

    while (v18 != v17);
  }
}

{
  v3 = *(a1 + 8);
  end = v3->__end_;
  value = v3->__end_cap_.__value_;
  if (end >= value)
  {
    begin = v3->__begin_;
    v8 = (end - v3->__begin_);
    v9 = (v8 + 1);
    if ((v8 + 1) < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = value - begin;
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
      operator new();
    }

    v12 = end - v3->__begin_;
    *v8 = 91;
    v6 = v8 + 1;
    memcpy(0, begin, v12);
    v3->__begin_ = 0;
    v3->__end_ = v8 + 1;
    v3->__end_cap_.__value_ = 0;
    if (begin)
    {
      operator delete(begin);
    }
  }

  else
  {
    *end = 91;
    v6 = end + 1;
  }

  v3->__end_ = v6;
  v22 = 36;
  std::vector<char>::push_back[abi:ne200100](v3, &v22);
  v21 = 108;
  std::vector<char>::push_back[abi:ne200100](v3, &v21);
  v20 = 35;
  std::vector<char>::push_back[abi:ne200100](v3, &v20);
  v19 = 76;
  std::vector<char>::push_back[abi:ne200100](v3, &v19);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = v3->__end_ - v3->__begin_;
  v16 = *(a2 + 24) - *(a2 + 16);
  if (v15 >= v16 + v15)
  {
    if (v15 > v16 + v15)
    {
      v3->__end_ = &v3->__begin_[v16 + v15];
    }
  }

  else
  {
    std::vector<char>::__append(v3, v16);
  }

  if (v13 != v14)
  {
    v17 = 0;
    if (((v13 - v14) >> 2) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = (v13 - v14) >> 2;
    }

    do
    {
      *&v3->__begin_[v15] = bswap32(*(*(a2 + 16) + 4 * v17));
      v15 += 4;
      ++v17;
    }

    while (v18 != v17);
  }
}

{
  v3 = *(a1 + 8);
  end = v3->__end_;
  value = v3->__end_cap_.__value_;
  if (end >= value)
  {
    begin = v3->__begin_;
    v8 = (end - v3->__begin_);
    v9 = (v8 + 1);
    if ((v8 + 1) < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = value - begin;
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
      operator new();
    }

    v12 = end - v3->__begin_;
    *v8 = 91;
    v6 = v8 + 1;
    memcpy(0, begin, v12);
    v3->__begin_ = 0;
    v3->__end_ = v8 + 1;
    v3->__end_cap_.__value_ = 0;
    if (begin)
    {
      operator delete(begin);
    }
  }

  else
  {
    *end = 91;
    v6 = end + 1;
  }

  v3->__end_ = v6;
  v25 = 36;
  std::vector<char>::push_back[abi:ne200100](v3, &v25);
  v24 = 76;
  std::vector<char>::push_back[abi:ne200100](v3, &v24);
  v23 = 35;
  std::vector<char>::push_back[abi:ne200100](v3, &v23);
  v22 = 76;
  std::vector<char>::push_back[abi:ne200100](v3, &v22);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = v3->__end_ - v3->__begin_;
  v16 = *(a2 + 24) - *(a2 + 16);
  if (v15 >= v16 + v15)
  {
    if (v15 > v16 + v15)
    {
      v3->__end_ = &v3->__begin_[v16 + v15];
    }
  }

  else
  {
    std::vector<char>::__append(v3, v16);
  }

  if (v13 != v14)
  {
    v17 = 0;
    if (((v13 - v14) >> 3) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = (v13 - v14) >> 3;
    }

    do
    {
      v19 = 0;
      v26 = *(*(a2 + 16) + 8 * v17);
      v20 = 7;
      do
      {
        v21 = *(&v26 + v20);
        *(&v26 + v20) = *(&v26 + v19);
        *(&v26 + v19++) = v21;
        --v20;
      }

      while (v19 != 4);
      *&v3->__begin_[v15] = v26;
      v15 += 8;
      ++v17;
    }

    while (v17 != v18);
  }
}

void xgboost::UBJWriter::Visit(xgboost::UBJWriter *this, const xgboost::JsonObject *a2)
{
  v4 = *(this + 1);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = &v6[-*v4];
    v10 = (v9 + 1);
    if ((v9 + 1) < 0)
    {
      goto LABEL_38;
    }

    v11 = v5 - v8;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    v13 = &v6[-*v4];
    *v9 = 123;
    v7 = v9 + 1;
    memcpy(0, v8, v13);
    *v4 = 0;
    *(v4 + 8) = v9 + 1;
    *(v4 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v6 = 123;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  v14 = *(a2 + 2);
  v15 = a2 + 24;
  if (v14 != v15)
  {
    do
    {
      v16 = v14[7];
      v31 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(v16 + 2, 1u, memory_order_relaxed);
      }

      (*(*this + 16))(this, &v31);
      v17 = v31;
      if (v31 && atomic_fetch_add_explicit(v31 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v17 + 8))(v17);
      }

      v18 = v14[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v14[2];
          v20 = *v19 == v14;
          v14 = v19;
        }

        while (!v20);
      }

      v14 = v19;
    }

    while (v19 != v15);
  }

  v21 = *(this + 1);
  v23 = *(v21 + 8);
  v22 = *(v21 + 16);
  if (v23 < v22)
  {
    *v23 = 125;
    v24 = v23 + 1;
    goto LABEL_37;
  }

  v25 = *v21;
  v26 = &v23[-*v21];
  v27 = (v26 + 1);
  if ((v26 + 1) < 0)
  {
LABEL_38:
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v28 = v22 - v25;
  if (2 * v28 > v27)
  {
    v27 = 2 * v28;
  }

  if (v28 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v29 = v27;
  }

  if (v29)
  {
    operator new();
  }

  v30 = &v23[-*v21];
  *v26 = 125;
  v24 = v26 + 1;
  memcpy(0, v25, v30);
  *v21 = 0;
  *(v21 + 8) = v26 + 1;
  *(v21 + 16) = 0;
  if (v25)
  {
    operator delete(v25);
  }

LABEL_37:
  *(v21 + 8) = v24;
}

void sub_274E09CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void *xgboost::anonymous namespace::EncodeStr(std::vector<char> *a1, const void **a2)
{
  v12 = 76;
  std::vector<char>::push_back[abi:ne200100](a1, &v12);
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  begin = a1->__begin_;
  v6 = a1->__end_ - a1->__begin_;
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v6 >= v7 + v6)
  {
    if (v6 > v7 + v6)
    {
      a1->__end_ = &begin[v7 + v6];
    }
  }

  else
  {
    std::vector<char>::__append(a1, v7);
    begin = a1->__begin_;
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  return memcpy(&begin[v6], v9, v10);
}

void xgboost::UBJWriter::Visit(xgboost::UBJWriter *this, const xgboost::JsonNumber *a2)
{
  v4 = *(this + 1);
  v9 = 100;
  std::vector<char>::push_back[abi:ne200100](v4, &v9);
  v5 = *(a2 + 4);
  v6 = *(this + 1);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFFBLL)
  {
    v6->__end_ = &begin[v8 + 4];
  }

  else
  {
    std::vector<char>::__append(v6, 4uLL);
    begin = v6->__begin_;
  }

  *&begin[v8] = bswap32(v5);
}

void xgboost::UBJWriter::Visit(xgboost::UBJWriter *this, const xgboost::JsonInteger *a2)
{
  v3 = *(a2 + 2);
  if (v3 < -127)
  {
    if (v3 > 0xFFFFFFFFFFFF8000)
    {
LABEL_10:
      v12 = *(this + 1);
      v19 = 73;
      std::vector<char>::push_back[abi:ne200100](v12, &v19);
      v13 = *(this + 1);
      begin = v13->__begin_;
      v15 = v13->__end_ - v13->__begin_;
      if (v15 > 0xFFFFFFFFFFFFFFFDLL)
      {
        v13->__end_ = &begin[v15 + 2];
      }

      else
      {
        std::vector<char>::__append(v13, 2uLL);
        begin = v13->__begin_;
      }

      *&begin[v15] = bswap32(v3) >> 16;
      return;
    }

    if (v3 <= 0xFFFFFFFF80000000)
    {
LABEL_15:
      v16 = *(this + 1);
      v17 = 76;
      std::vector<char>::push_back[abi:ne200100](v16, &v17);
      return;
    }
  }

  else
  {
    if (v3 <= 126)
    {
      v4 = *(this + 1);
      v20 = 105;
      std::vector<char>::push_back[abi:ne200100](v4, &v20);
      v5 = *(this + 1);
      v6 = v5->__begin_;
      v7 = v5->__end_ - v5->__begin_;
      if (v7 == -1)
      {
        v5->__end_ = v6;
      }

      else
      {
        std::vector<char>::__append(v5, 1uLL);
        v6 = v5->__begin_;
      }

      v6[v7] = v3;
      return;
    }

    if (v3 <= 0x7FFE)
    {
      goto LABEL_10;
    }

    if (v3 > 0x7FFFFFFE)
    {
      goto LABEL_15;
    }
  }

  v8 = *(this + 1);
  v18 = 108;
  std::vector<char>::push_back[abi:ne200100](v8, &v18);
  v9 = *(this + 1);
  v10 = v9->__begin_;
  v11 = v9->__end_ - v9->__begin_;
  if (v11 > 0xFFFFFFFFFFFFFFFBLL)
  {
    v9->__end_ = &v10[v11 + 4];
  }

  else
  {
    std::vector<char>::__append(v9, 4uLL);
    v10 = v9->__begin_;
  }

  *&v10[v11] = bswap32(v3);
}

void xgboost::UBJWriter::Visit(xgboost::UBJWriter *this, const xgboost::JsonNull *a2)
{
  v2 = *(this + 1);
  v3 = 90;
  std::vector<char>::push_back[abi:ne200100](v2, &v3);
}

void *xgboost::UBJWriter::Visit(xgboost::UBJWriter *this, const void **a2)
{
  v4 = *(this + 1);
  v6 = 83;
  std::vector<char>::push_back[abi:ne200100](v4, &v6);
}

void xgboost::UBJWriter::Visit(xgboost::UBJWriter *this, const xgboost::JsonBoolean *a2)
{
  v2 = *(this + 1);
  if (*(a2 + 16))
  {
    v3 = 84;
  }

  else
  {
    v3 = 70;
  }

  v4 = v3;
  std::vector<char>::push_back[abi:ne200100](v2, &v4);
}

uint64_t xgboost::JsonArray::operator[](uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (a2 >= ((*(a1 + 24) - v2) >> 3))
  {
    std::vector<xgboost::Json>::__throw_out_of_range[abi:ne200100]();
  }

  return v2 + 8 * a2;
}

uint64_t *std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::swap(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = result + 1;
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

uint64_t dmlc::io::FileSystem::ListDirectoryRecursive(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v22 = 0u;
  memset(v21, 0, sizeof(v21));
  std::deque<dmlc::io::URI>::push_back(v21, a2);
  while (v22.i64[1])
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    (*(*a1 + 24))(a1, *(*(&v21[0] + 1) + 8 * (v22.i64[0] / 0x38uLL)) + 72 * (v22.i64[0] % 0x38uLL), &v18);
    v5 = *(*(&v21[0] + 1) + 8 * (v22.i64[0] / 0x38uLL)) + 72 * (v22.i64[0] % 0x38uLL);
    if (*(v5 + 71) < 0)
    {
      operator delete(*(v5 + 48));
    }

    if (*(v5 + 47) < 0)
    {
      operator delete(*(v5 + 24));
    }

    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    v22 = vaddq_s64(v22, xmmword_274E207D0);
    if (v22.i64[0] >= 0x70uLL)
    {
      operator delete(**(&v21[0] + 1));
      *(&v21[0] + 1) += 8;
      v22.i64[0] -= 56;
    }

    v6 = v18;
    v7 = v19;
    while (v6 != v7)
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v13, *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        v13.__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v13.__r_.__value_.__l.__data_ = v8;
      }

      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v9 = *(v6 + 24);
        v14.__r_.__value_.__r.__words[2] = *(v6 + 5);
        *&v14.__r_.__value_.__l.__data_ = v9;
      }

      if (*(v6 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v6 + 6), *(v6 + 7));
      }

      else
      {
        v10 = v6[3];
        __p.__r_.__value_.__r.__words[2] = *(v6 + 8);
        *&__p.__r_.__value_.__l.__data_ = v10;
      }

      v11 = *(v6 + 9);
      v17 = *(v6 + 20);
      v16 = v11;
      if (v17 == 1)
      {
        std::deque<dmlc::io::URI>::push_back(v21, &v13);
      }

      else
      {
        std::vector<dmlc::io::FileInfo>::push_back[abi:ne200100](a3, &v13);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      v6 = (v6 + 88);
    }

    v13.__r_.__value_.__r.__words[0] = &v18;
    std::vector<dmlc::io::FileInfo>::__destroy_vector::operator()[abi:ne200100](&v13);
  }

  return std::deque<dmlc::io::URI>::~deque[abi:ne200100](v21);
}

void dmlc::TemporaryDirectory::RecursiveDelete(uint64_t a1, char *a2)
{
  v2 = a2;
  v53 = *MEMORY[0x277D85DE8];
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  dmlc::io::URI::URI(v44, a2);
  Instance = dmlc::io::FileSystem::GetInstance(v44, v4);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  (*(*Instance + 24))(Instance, v44, &v41);
  v6 = v41;
  for (i = v42; v6 != i; v6 = (v6 + 88))
  {
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v36, *v6, *(v6 + 1));
    }

    else
    {
      v8 = *v6;
      v36.__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&v36.__r_.__value_.__l.__data_ = v8;
    }

    if (*(v6 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v37, *(v6 + 3), *(v6 + 4));
    }

    else
    {
      v9 = *(v6 + 24);
      v37.__r_.__value_.__r.__words[2] = *(v6 + 5);
      *&v37.__r_.__value_.__l.__data_ = v9;
    }

    if (*(v6 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v6 + 6), *(v6 + 7));
    }

    else
    {
      v10 = v6[3];
      __p.__r_.__value_.__r.__words[2] = *(v6 + 8);
      *&__p.__r_.__value_.__l.__data_ = v10;
    }

    v11 = *(v6 + 9);
    v40 = *(v6 + 20);
    v39 = v11;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v13 = lstat(p_p, &v52);
    v50 = 0;
    v51 = v13;
    if (v13)
    {
      dmlc::LogCheckFormat<int,int>(&v51, &v50);
    }

    if ((v52.st_mode & 0xF000) == 0xA000)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v52);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/filesys.cc", 35);
      v16 = dmlc::LogMessageFatal::GetEntry(&v52);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Check failed: !IsSymlink(info.path.name)", 40);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Symlink not supported in TemporaryDirectory", 43);
      dmlc::LogMessageFatal::~LogMessageFatal(&v52);
    }

    if (v40 == 1)
    {
      dmlc::TemporaryDirectory::RecursiveDelete(a1, &__p);
    }

    else
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &__p;
      }

      else
      {
        v19 = __p.__r_.__value_.__r.__words[0];
      }

      if (remove(v19, v14))
      {
        dmlc::LogMessage::LogMessage(&v52, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/filesys.cc", 41);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*&v52.st_dev, "Couldn't remove file ", 21);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &__p;
        }

        else
        {
          v21 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, size);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "; you may want to remove it manually", 36);
        dmlc::LogMessage::~LogMessage(&v52);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }

  if (v2[23] >= 0)
  {
    v24 = v2;
  }

  else
  {
    v24 = *v2;
  }

  if (rmdir(v24))
  {
    dmlc::LogMessage::LogMessage(&v52, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/filesys.cc", 56);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*&v52.st_dev, "~TemporaryDirectory(): ", 23);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Could not remove temporary directory ", 37);
    v27 = v2[23];
    if (v27 >= 0)
    {
      v28 = v2;
    }

    else
    {
      v28 = *v2;
    }

    if (v27 >= 0)
    {
      v29 = v2[23];
    }

    else
    {
      v29 = *(v2 + 1);
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "; you may want to remove it manually", 36);
  }

  else
  {
    if (*(a1 + 24) != 1)
    {
      goto LABEL_60;
    }

    dmlc::LogMessage::LogMessage(&v52, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/dmlc/src/io/filesys.cc", 53);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*&v52.st_dev, "Successfully deleted temporary directory ", 41);
    v32 = v2[23];
    if (v32 >= 0)
    {
      v33 = v2;
    }

    else
    {
      v33 = *v2;
    }

    if (v32 >= 0)
    {
      v34 = v2[23];
    }

    else
    {
      v34 = *(v2 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
  }

  dmlc::LogMessage::~LogMessage(&v52);
LABEL_60:
  *&v52.st_dev = &v41;
  std::vector<dmlc::io::FileInfo>::__destroy_vector::operator()[abi:ne200100](&v52);
  if (v49 < 0)
  {
    operator delete(v48);
  }

  if (v47 < 0)
  {
    operator delete(v46);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_274E0ABA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, char a41, __int16 a42, char a43, char a44)
{
  a9 = &a27;
  std::vector<dmlc::io::FileInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  dmlc::io::FileInfo::~FileInfo(&a30);
  _Unwind_Resume(a1);
}

uint64_t std::deque<dmlc::io::URI>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v2[v5 / 0x38];
    v7 = *v6 + 72 * (v5 % 0x38);
    v8 = v2[(*(a1 + 40) + v5) / 0x38] + 72 * ((*(a1 + 40) + v5) % 0x38);
    if (v7 != v8)
    {
      do
      {
        if (*(v7 + 71) < 0)
        {
          operator delete(*(v7 + 48));
        }

        if (*(v7 + 47) < 0)
        {
          operator delete(*(v7 + 24));
        }

        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        v7 += 72;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    v10 = v3;
  }

  *v4 = 0;
  v11 = v10 - v2;
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

  if (v11 == 1)
  {
    v12 = 28;
    goto LABEL_21;
  }

  if (v11 == 2)
  {
    v12 = 56;
LABEL_21:
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

void std::deque<dmlc::io::URI>::push_back(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 56 * ((v5 - v4) >> 3) - 1;
  }

  v7 = a1[4];
  if (v6 == a1[5] + v7)
  {
    v8 = v7 >= 0x38;
    v9 = v7 - 56;
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<xgboost::Metric>>>(v13);
    }

    a1[4] = v9;
    v19 = *v4;
    a1[1] = v4 + 8;
    std::__split_buffer<xgboost::Json *>::emplace_back<xgboost::Json *&>(a1, &v19);
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
    v15 = (*&v4[8 * (v14 / 0x38)] + 72 * (v14 % 0x38));
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v15, *a2, *(a2 + 1));
  }

  else
  {
    v16 = *a2;
    v15->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v15->__r_.__value_.__l.__data_ = v16;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(v15 + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v17 = *(a2 + 24);
    v15[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&v15[1].__r_.__value_.__l.__data_ = v17;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(v15 + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v18 = a2[3];
    v15[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&v15[2].__r_.__value_.__l.__data_ = v18;
  }

  ++a1[5];
}

void sub_274E0B34C(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t xgboost::gbm::GBTreeModel::Save(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v9 = (*(a1 + 184) - *(a1 + 176)) >> 3;
  v10 = v4;
  if (v4 != v9)
  {
    dmlc::LogCheckFormat<int,int>(&v10, &v9);
  }

  result = (*(*a2 + 8))(a2, a1 + 16, 160);
  v6 = *(a1 + 176);
  v7 = *(a1 + 184);
  while (v6 != v7)
  {
    v8 = *v6++;
    result = xgboost::RegTree::Save(v8, a2);
  }

  if (*(a1 + 232) != *(a1 + 224))
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void sub_274E0B51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11)
{
  v12 = a9;
  a9 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a9, v12);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::gbm::GBTreeModel::Load(uint64_t a1, uint64_t (***a2)(void, uint64_t, uint64_t))
{
  v4 = (**a2)(a2, a1 + 16, 160);
  v9 = 160;
  v10 = v4;
  if (v4 != 160)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v10, &v9);
  }

  std::vector<std::unique_ptr<xgboost::RegTree>>::clear[abi:ne200100]((a1 + 176));
  std::vector<std::unique_ptr<xgboost::RegTree>>::clear[abi:ne200100]((a1 + 200));
  v5 = *(a1 + 16);
  if (v5 >= 1)
  {
    operator new();
  }

  std::vector<int>::resize((a1 + 224), v5);
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*(a1 + 232) == *(a1 + 224))
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a1 + 224);
    }

    v8 = (**a2)(a2, v7, 4 * v6);
    v9 = 4 * *(a1 + 16);
    v10 = v8;
    if (v8 != v9)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(&v10, &v9);
    }
  }
}

void sub_274E0B8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::gbm::GBTreeModel::SaveModel(xgboost::gbm::GBTreeModel *this, xgboost::Json *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = (*(this + 23) - *(this + 22)) >> 3;
  LODWORD(__p[0]) = *(this + 4);
  LODWORD(v4) = v3;
  if (LODWORD(__p[0]) != v3)
  {
    dmlc::LogCheckFormat<int,int>(__p, &v4);
  }

  xgboost::ToJson<xgboost::gbm::GBTreeModelParam>((this + 16), &v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "gbtree_model_param");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void sub_274E0C0BC(_Unwind_Exception *a1)
{
  std::mutex::~mutex(&v4);
  std::exception_ptr::~exception_ptr(&v3);
  v3.__ptr_ = &v2;
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&v3);
  _Unwind_Resume(a1);
}

void sub_274E0C130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274E0C13CLL);
}

void sub_274E0C164(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&__p);
  JUMPOUT(0x274E0C1E0);
}

void sub_274E0C190(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char *a34)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(&a33, a34);
  JUMPOUT(0x274E0C200);
}