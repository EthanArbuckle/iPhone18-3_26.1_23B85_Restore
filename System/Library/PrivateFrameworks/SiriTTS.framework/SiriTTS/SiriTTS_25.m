void sub_1C316C6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::quasar::releaseE5OptionsAndHandles(void *result, void *a2)
{
  if (*result)
  {
    result = e5rt_e5_compiler_options_release();
  }

  if (*a2)
  {

    return MEMORY[0x1EEE03278](a2);
  }

  return result;
}

void std::vector<char const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

uint64_t kaldi::quasar::purgeE5BundlesForMil(uint64_t a1)
{
  v17[34].__locale_ = 0;
  if (e5rt_e5_compiler_create())
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v17, "purgeE5BundlesForMil", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 311);
      v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "purgeE5BundlesForMil failed for: ", 33);
      v3 = *(a1 + 23);
      if (v3 >= 0)
      {
        v4 = a1;
      }

      else
      {
        v4 = *a1;
      }

      if (v3 >= 0)
      {
        v5 = *(a1 + 23);
      }

      else
      {
        v5 = *(a1 + 8);
      }

LABEL_19:
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " - ", 3);
      last_error_message = e5rt_get_last_error_message();
      v11 = strlen(last_error_message);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, last_error_message, v11);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v17);
      return 0;
    }

    return 0;
  }

  if (*(a1 + 23) < 0)
  {
    v6 = *a1;
  }

  if (e5rt_e5_compiler_purge_e5_bundles_for_input_model())
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v17, "purgeE5BundlesForMil", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 316);
      v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "purgeE5BundlesForMil failed for : ", 34);
      v7 = *(a1 + 23);
      if (v7 >= 0)
      {
        v4 = a1;
      }

      else
      {
        v4 = *a1;
      }

      if (v7 >= 0)
      {
        v5 = *(a1 + 23);
      }

      else
      {
        v5 = *(a1 + 8);
      }

      goto LABEL_19;
    }

    return 0;
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v17, "purgeE5BundlesForMil", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-v2-bridge/EspressoV2MilCompiler.cc", 319);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "purged E5 bundles for: ", 23);
    v14 = *(a1 + 23);
    if (v14 >= 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = *a1;
    }

    if (v14 >= 0)
    {
      v16 = *(a1 + 23);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v17);
  }

  return 1;
}

void sub_1C316CAFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  _Unwind_Resume(a1);
}

BOOL std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(std::string *a1, void *a2, void *a3)
{
  v11 = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v6 = (*(*a2 + 72))(a2);
        v5 = v6 == -1;
        if (v6 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 1;
    }

    result = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v11);
    if (v5 == result)
    {
      break;
    }

    v8 = a2[3];
    if (v8 == a2[4])
    {
      v9 = (*(*a2 + 72))(a2);
    }

    else
    {
      v9 = *v8;
    }

    std::string::push_back(a1, v9);
    v10 = a2[3];
    if (v10 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v10 + 1;
    }
  }

  return result;
}

void sub_1C316CC64(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

BOOL std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (v2)
  {
    if (v2[3] != v2[4])
    {
      return 0;
    }

    if ((*(*v2 + 72))(v2) != -1)
    {
      return *a1 == 0;
    }

    *a1 = 0;
  }

  return 1;
}

void std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](std::regex_traits<char> *a1, const char *a2, int a3)
{
  v5 = std::regex_traits<char>::regex_traits(a1);
  LODWORD(v5[1].__loc_.__locale_) = a3;
  *(&v5[1].__loc_.__locale_ + 4) = 0u;
  *(&v5[1].__col_ + 4) = 0u;
  HIDWORD(v5[2].__ct_) = 0;
  strlen(a2);
  std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>();
}

void sub_1C316CD8C(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x1C692AC50]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x1E69E5318]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x1E69E5340]);
  return this;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1C692A5E0](exception, 17);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
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
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = ++v7;
      do
      {
        v11 = v7;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
      }

      while (v7 != v11);
      if (v11 == v10)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v11 != a3);
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
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
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, (v8 + 1), a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(std::basic_regex<char> *a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10 + 1;
    }
  }

  return v8;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *__s, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    v8 = (v8 + 1);
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = (&v10->__traits_.__loc_.__locale_ + 1);
    }
  }

  return v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1C692A5E0](exception, 14);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void sub_1C316D72C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(v1);
  }

  _Unwind_Resume(exception_object);
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

void std::__empty_state<char>::~__empty_state(std::__owns_one_state<char> *this)
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

  JUMPOUT(0x1C692AE10);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, a2, a3);
  if (result == a2)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = a1->__marked_count_ + 1;

      return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v9, a3, end, marked_count + 1, v10);
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x5B)
  {
    if (v6 != 36)
    {
      v8 = v6 == 40;
      v7 = a2 + 1;
      v8 = !v8 || v7 == a3;
      if (!v8)
      {
        v8 = *v7 == 63;
        v9 = a2 + 2;
        if (v8 && v9 != a3)
        {
          v11 = *v9;
          if (v11 == 33)
          {
            std::regex_traits<char>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v18, v3 + 3, a3);
            marked_count = v18.__marked_count_;
            std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v18, 1, this->__marked_count_);
            this->__marked_count_ += marked_count;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
            }

            goto LABEL_31;
          }

          if (v11 == 61)
          {
            std::regex_traits<char>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v18, v3 + 3, a3);
            v13 = v18.__marked_count_;
            std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v18, 0, this->__marked_count_);
            this->__marked_count_ += v13;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
            }

LABEL_31:
            v3 = v12 + 1;
            std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v18.__traits_.__loc_);
            return v3;
          }
        }
      }

      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return ++v3;
  }

  if (v6 != 92)
  {
    if (v6 != 94)
    {
      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    return ++v3;
  }

  if (a2 + 1 != a3)
  {
    v15 = a2[1];
    if (v15 == 66)
    {
      v16 = 1;
    }

    else
    {
      if (v15 != 98)
      {
        return v3;
      }

      v16 = 0;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v16);
    v3 += 2;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x3E)
  {
    if (v6 != 40)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if (v6 - 42 >= 2)
      {
        goto LABEL_28;
      }

LABEL_34:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        p_open_count = &this->__open_count_;
        ++this->__open_count_;
        v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 3, a3);
        if (v9 == a3)
        {
          goto LABEL_35;
        }

        v10 = v9;
        if (*v9 != 41)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      marked_count = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, v3 + 1, a3);
      if (v12 != a3)
      {
        v10 = v12;
        if (*v12 == 41)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, marked_count);
LABEL_25:
          --*p_open_count;
          return v10 + 1;
        }
      }
    }

LABEL_35:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v6 == 91)
    {

      return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
    }

    if (v6 == 63)
    {
      goto LABEL_34;
    }

LABEL_28:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(this, a2, a3);
  }

  if (v6 != 92)
  {
    if (v6 == 123)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<char const*>(this, a2, a3);
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

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a1, a2 + 1, a3, &__max);
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
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v10, v23, a3, &v27);
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1C692A5E0](exception, 6);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1C692AE10);
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
  a1->__locale_ = &unk_1F42CD220;
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
  a1->__locale_ = &unk_1F42CD220;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1C692AE10);
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

uint64_t std::__lookahead<char,std::regex_traits<char>>::__lookahead[abi:ne200100](uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = &unk_1F42CD268;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F42CD268;
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
  a1->__locale_ = &unk_1F42CD268;
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

  JUMPOUT(0x1C692AE10);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  memset(&v23, 0, 17);
  v24 = 0;
  v25 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v19.first = *(a2 + 24);
  v19.second = v19.first;
  v19.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v19);
  v20 = v5;
  v21 = v5;
  v22 = 0;
  v23 = v19;
  v25 = v5;
  v24 = 1;
  v6 = *(a2 + 88) & 0xFFF;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &begin[v14];
    v16 = v12 + 24 * v11;
    *v16 = v15->std::pair<const char *, const char *>;
    *(v16 + 16) = v15->matched;
    v14 = v13;
    ++v11;
  }

  while (v10 > v13++);
LABEL_11:
  __p.__end_ = begin;
  operator delete(begin);
}

void sub_1C316EB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1C692A5E0](exception, 12);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1C692A5E0](exception, 16);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 12;
      std::allocator<std::__state<char>>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void std::vector<std::sub_match<char const*>>::__append(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v11 = &end[__n];
      v12 = 24 * __n;
      do
      {
        v13 = __x->std::pair<const char *, const char *>;
        *&end->matched = *&__x->matched;
        end->std::pair<const char *, const char *> = v13;
        ++end;
        v12 -= 24;
      }

      while (v12);
      end = v11;
    }

    this->__end_ = end;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v8 = v7 + __n;
    if (v7 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(this, v10);
    }

    v14 = 24 * __n;
    v15 = 24 * v7;
    do
    {
      v16 = __x->std::pair<const char *, const char *>;
      *(v15 + 16) = *&__x->matched;
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    begin = this->__begin_;
    v18 = this->__end_;
    v19 = (24 * v7 + this->__begin_ - v18);
    if (v18 != this->__begin_)
    {
      v20 = (24 * v7 + this->__begin_ - v18);
      do
      {
        v21 = begin->std::pair<const char *, const char *>;
        *(v20 + 2) = *&begin->matched;
        *v20 = v21;
        v20 += 24;
        ++begin;
      }

      while (begin != v18);
      begin = this->__begin_;
    }

    this->__begin_ = v19;
    this->__end_ = (24 * v7 + 24 * __n);
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<char const*>(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(a1, v3 + 1, a3), v7 == v5))
    {
      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, v3 + 1, a3, 0);
      if (v9 != v5)
      {
        return v9;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_23;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_23;
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
    }

    else
    {
      do
      {
        v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(a1, v5, a3, v7);
        v9 = v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    if (v8 == a3)
    {
      goto LABEL_23;
    }

    if (*v8 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
      ++v8;
    }

    if (v8 == a3 || *v8 != 93)
    {
LABEL_23:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v8 + 1;
  }

  return a2;
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
  MEMORY[0x1C692A5E0](exception, 11);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x7800000080004F1) == 0;
    if (v5 && (v4 - 123) >= 3)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      ++v3;
    }
  }

  return v3;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1C692A5E0](exception, 3);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
      ++v3;
    }

    else if ((v4 - 49) <= 8)
    {
      v5 = (v4 - 48);
      if (++v3 != a3)
      {
        while (1)
        {
          v6 = *v3;
          if ((v6 - 48) > 9)
          {
            break;
          }

          if (v5 >= 0x19999999)
          {
            goto LABEL_14;
          }

          v5 = v6 + 10 * v5 - 48;
          if (++v3 == a3)
          {
            v3 = a3;
            break;
          }
        }

        if (!v5)
        {
          goto LABEL_14;
        }
      }

      if (v5 > a1->__marked_count_)
      {
LABEL_14:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v5);
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = *a2;
  if (v4 > 0x63)
  {
    if (v4 == 119)
    {
      v5 = 0;
      goto LABEL_14;
    }

    if (v4 == 115)
    {
      v10 = 0;
      goto LABEL_17;
    }

    if (v4 != 100)
    {
      return v3;
    }

    v6 = 0;
LABEL_12:
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v6);
    v8 = started->__mask_ | 0x400;
LABEL_18:
    started->__mask_ = v8;
    goto LABEL_19;
  }

  switch(v4)
  {
    case 'D':
      v6 = 1;
      goto LABEL_12;
    case 'S':
      v10 = 1;
LABEL_17:
      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v10);
      v8 = started->__mask_ | 0x4000;
      goto LABEL_18;
    case 'W':
      v5 = 1;
LABEL_14:
      v9 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v5);
      v9->__mask_ |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v9, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 > 0x71u)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (!this)
        {
          v10 = 13;
          goto LABEL_69;
        }

        v9 = this;
        v10 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_64;
        }

        if (!this)
        {
          v10 = 9;
          goto LABEL_69;
        }

        v9 = this;
        v10 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_72;
        }

        v11 = a2[1];
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38 && (v11 | 0x20u) - 97 >= 6)
        {
          goto LABEL_72;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_72;
        }

        v12 = *v4;
        v13 = -48;
        if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
        {
          v12 |= 0x20u;
          if ((v12 - 97) >= 6)
          {
            goto LABEL_72;
          }

          v13 = -87;
        }

        v6 = 16 * (v13 + v12);
LABEL_39:
        if (v4 + 1 == a3)
        {
          goto LABEL_72;
        }

        v14 = v4[1];
        v15 = -48;
        if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
        {
          v14 |= 0x20u;
          if ((v14 - 97) >= 6)
          {
            goto LABEL_72;
          }

          v15 = -87;
        }

        if (v4 + 2 != a3)
        {
          v16 = v4[2];
          v17 = -48;
          if ((v16 & 0xF8) == 0x30 || (v16 & 0xFE) == 0x38)
          {
LABEL_49:
            v18 = v17 + v16 + 16 * (v15 + v6 + v14);
            if (this)
            {
              std::string::operator=(this, v18);
            }

            else
            {
              std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v18);
            }

            v4 += 3;
            return v4;
          }

          v16 |= 0x20u;
          if ((v16 - 97) < 6)
          {
            v17 = -87;
            goto LABEL_49;
          }
        }

LABEL_72:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_39;
        }

LABEL_64:
        if ((v5 & 0x80) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
        {
          goto LABEL_72;
        }

        v10 = *a2;
        if (this)
        {
          v9 = this;
          goto LABEL_68;
        }

LABEL_69:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v10);
        return ++v4;
      }

      if (!this)
      {
        v10 = 11;
        goto LABEL_69;
      }

      v9 = this;
      v10 = 11;
    }

LABEL_68:
    std::string::operator=(v9, v10);
    return ++v4;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!this)
      {
        v10 = 12;
        goto LABEL_69;
      }

      v9 = this;
      v10 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_64;
      }

      if (!this)
      {
        v10 = 10;
        goto LABEL_69;
      }

      v9 = this;
      v10 = 10;
    }

    goto LABEL_68;
  }

  if (v5 == 48)
  {
    if (!this)
    {
      v10 = 0;
      goto LABEL_69;
    }

    v9 = this;
    v10 = 0;
    goto LABEL_68;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_72;
    }

    goto LABEL_64;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_72;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_72;
  }

  v8 = v7 & 0x1F;
  if (this)
  {
    std::string::operator=(this, v8);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  v4 += 2;
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1C692A5E0](exception, 4);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
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

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__match_char_icase[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F42CD2F8;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_1C316F9D0(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  locale = v1[1].__locale_;
  if (locale)
  {
    std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F42CD2F8;
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
  a1->__locale_ = &unk_1F42CD2F8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1C692AE10);
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
  a1->__locale_ = &unk_1F42CD340;
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
  a1->__locale_ = &unk_1F42CD340;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1C692AE10);
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

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F42CD3D0;
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
  a1->__locale_ = &unk_1F42CD3D0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1C692AE10);
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
  a1->__locale_ = &unk_1F42CD418;
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
  a1->__locale_ = &unk_1F42CD418;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1C692AE10);
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

      v7 = *(a2 + 16);
      v8 = v4;
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v7++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v8)
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

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x1C692AE10);
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

uint64_t std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_1C317052C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
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

  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x1C692AE10);
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

void std::regex_traits<char>::transform<char *>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C3170784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__lookup_collatename<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
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
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
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

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1C3170918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, a2, a3, a3 - a2);
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

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C3170A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1C692A5E0](exception, 5);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return v4;
  }

  v6 = a4;
  memset(&v25, 0, sizeof(v25));
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_9:
    v11 = *(a1 + 24) & 0x1F0;
    goto LABEL_10;
  }

  v9 = a2[1];
  if (v9 != 46)
  {
    if (v9 == 58)
    {
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(a1, a2 + 2, a3, a4);
      goto LABEL_34;
    }

    if (v9 == 61)
    {
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(a1, a2 + 2, a3, a4);
LABEL_34:
      v6 = v10;
      v18 = 0;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, a2 + 2, a3, &v25);
  v4 = v19;
  v11 = *(a1 + 24) & 0x1F0;
  size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v13 = v19;
  if (!size)
  {
LABEL_10:
    if ((v11 | 0x40) == 0x40)
    {
      v12 = *v4;
      if (v12 == 92)
      {
        if (v11)
        {
          v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4 + 1, a3, &v25);
        }

        else
        {
          v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v4 + 1, a3, &v25, v6);
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v12) = *v4;
    }

    std::string::operator=(&v25, v12);
    v13 = v4 + 1;
  }

LABEL_16:
  if (v13 == a3 || (v14 = *v13, v14 == 93) || (v16 = v13 + 1, v13 + 1 == a3) || v14 != 45 || *v16 == 93)
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v25.__r_.__value_.__l.__size_)
      {
        if (v25.__r_.__value_.__l.__size_ != 1)
        {
          v15 = v25.__r_.__value_.__r.__words[0];
LABEL_40:
          std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v6, v15->__r_.__value_.__s.__data_[0], v15->__r_.__value_.__s.__data_[1]);
          goto LABEL_41;
        }

        v15 = v25.__r_.__value_.__r.__words[0];
        goto LABEL_25;
      }
    }

    else if (*(&v25.__r_.__value_.__s + 23))
    {
      v15 = &v25;
      if (HIBYTE(v25.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_40;
      }

LABEL_25:
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v6, v15->__r_.__value_.__s.__data_[0]);
    }

LABEL_41:
    v18 = 1;
    v4 = v13;
    goto LABEL_42;
  }

  memset(&v24, 0, sizeof(v24));
  v4 = v13 + 2;
  if (v13 + 2 != a3 && *v16 == 91 && *v4 == 46)
  {
    v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v13 + 3, a3, &v24);
LABEL_55:
    v4 = v17;
    goto LABEL_56;
  }

  if ((v11 | 0x40) == 0x40)
  {
    LODWORD(v16) = *v16;
    if (v16 == 92)
    {
      if (v11)
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v13 + 2, a3, &v24);
      }

      else
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v13 + 2, a3, &v24, v6);
      }

      goto LABEL_55;
    }
  }

  else
  {
    LOBYTE(v16) = *v16;
  }

  std::string::operator=(&v24, v16);
LABEL_56:
  v23 = v25;
  memset(&v25, 0, sizeof(v25));
  __p = v24;
  memset(&v24, 0, sizeof(v24));
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v6, &v23, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v18 = 1;
LABEL_42:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v18)
  {
    return v4;
  }

  return v6;
}

void sub_1C3170E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_32;
  }

  v7 = a2;
  for (i = a2; ; v7 = i)
  {
    v9 = *i++;
    if (v9 == 61 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_32;
    }

    --v4;
  }

  if (v7 == a3)
  {
LABEL_32:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v7, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_13;
    }

LABEL_33:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  v11 = v19;
LABEL_13:
  std::regex_traits<char>::__transform_primary<char *>(a1, v11, &v11[v10], __p);
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    std::vector<std::string>::push_back[abi:ne200100](a4 + 136, __p);
  }

  else
  {
    v13 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v13 = v20;
    }

    if (v13 == 2)
    {
      v15 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v15 = v19;
      }

      std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v15, v15[1]);
    }

    else
    {
      if (v13 != 1)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
      }

      v14 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v14 = v19;
      }

      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v14);
    }
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  return v7 + 2;
}

void sub_1C3170FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_10;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 58 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_10:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = std::regex_traits<char>::__lookup_classname<char const*>(a1, a2, v6, *(a1 + 24) & 1);
  if (!v9)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
  }

  *(a4 + 160) |= v9;
  return v6 + 2;
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
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
        v9 = this;
        v10 = 8;
LABEL_19:
        std::string::operator=(v9, v10);
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
    if (*a2)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_21:
        *(a5 + 164) = v7;
        return a2 + 1;
      }

      goto LABEL_25;
    }

    v9 = this;
    v10 = 0;
    goto LABEL_19;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_21;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
    return a2 + 1;
  }

LABEL_25:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_51:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 <= 0x65u)
  {
    if (v5 <= 0x5Bu)
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
          v5 = 7;
          goto LABEL_31;
        }

        v5 = 7;
        goto LABEL_47;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v5 = 8;
LABEL_31:
          std::string::operator=(v6, v5);
          return a2 + 1;
        }

        v5 = 8;
        goto LABEL_47;
      }

      goto LABEL_32;
    }

    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_47;
  }

  if (v5 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v5 = 12;
        goto LABEL_31;
      }

      v5 = 12;
      goto LABEL_47;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v5 = 10;
        goto LABEL_31;
      }

      v5 = 10;
      goto LABEL_47;
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
          v5 = 13;
          goto LABEL_31;
        }

        v5 = 13;
        goto LABEL_47;
      case 't':
        if (this)
        {
          v6 = this;
          v5 = 9;
          goto LABEL_31;
        }

        v5 = 9;
        goto LABEL_47;
      case 'v':
        if (this)
        {
          v6 = this;
          v5 = 11;
          goto LABEL_31;
        }

        v5 = 11;
LABEL_47:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
        return a2 + 1;
    }
  }

LABEL_32:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_51;
  }

  v7 = v5 - 48;
  v8 = a2 + 1;
  if (a2 + 1 != a3 && (*v8 & 0xF8) == 0x30)
  {
    v7 = *v8 + 8 * v7 - 48;
    v8 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v9 = *v8 + 8 * v7 - 48;
      if ((*v8 & 0xF8) == 0x30)
      {
        v8 = a2 + 3;
        v7 = v9;
      }
    }
  }

  if (this)
  {
    std::string::operator=(this, v7);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
  }

  return v8;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = v4[23];
        v8 = v7 < 0 ? *(v4 + 1) : v4[23];
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 40))(*(a1 + 24), v9[i]);
        v11 = v4;
        if (v4[23] < 0)
        {
          v11 = *v4;
        }

        v11[i] = v10;
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
        v15 = a2[23];
        v16 = v15 < 0 ? *(a2 + 1) : a2[23];
        if (k >= v16)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        v18 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *a2;
        }

        v18[k] = v17[k];
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

    v30 = v4[23];
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = *(v31 + 1);
    }

    std::regex_traits<char>::transform<char *>(a1 + 16, v4, &v4[v30]);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    std::regex_traits<char>::transform<char *>(a1 + 16, v3, &v3[v32]);
    *v45 = v43;
    v46 = v44;
    *__p = *v41;
    v48 = v42;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }

  else
  {
    v12 = a2[23];
    if (v12 < 0)
    {
      v13 = *(a2 + 1);
    }

    else
    {
      v13 = a2[23];
    }

    if (v13 != 1)
    {
      goto LABEL_74;
    }

    v34 = a3[23];
    if (v34 < 0)
    {
      v34 = *(a3 + 1);
    }

    if (v34 != 1)
    {
LABEL_74:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
    }

    if (*(a1 + 169) == 1)
    {
      v35 = a2;
      if ((v12 & 0x80000000) != 0)
      {
        v35 = *a2;
      }

      v36 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v35);
      v37 = v4;
      if (v4[23] < 0)
      {
        v37 = *v4;
      }

      *v37 = v36;
      v38 = v3;
      if (v3[23] < 0)
      {
        v38 = *v3;
      }

      v39 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v38);
      v40 = v3;
      if (v3[23] < 0)
      {
        v40 = *v3;
      }

      *v40 = v39;
    }

    *v45 = *v4;
    v46 = *(v4 + 2);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    *__p = *v3;
    v48 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }
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
  MEMORY[0x1C692A5E0](exception, 1);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1C692A5E0](exception, 2);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

uint64_t std::regex_traits<char>::__lookup_classname<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, a2, a3, a3 - a2);
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

  (*(**(a1 + 8) + 48))(*(a1 + 8), v7, v7 + v6);
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  classname = std::__get_classname(v8, a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return classname;
}

void sub_1C3171AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 64;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 64;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 64, &v7);
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
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

    v20.__end_cap_.__value_ = a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    v19 = *(a1 + 16);
    *(a1 + 16) = 0;
    v20.__end_ = v18;
    v20.__end_cap_.__value_ = v19;
    v20.__first_ = v18;
    v20.__begin_ = v18;
    std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = v4 + 48;
  }

  *(a1 + 8) = v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1C692A5E0](exception, 9);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::vector<std::pair<char,char>>::push_back[abi:ne200100](uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 1;
    if (v7 <= -2)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<short>>(a1, v10);
    }

    v11 = (2 * v7);
    *v11 = *a2;
    v6 = 2 * v7 + 2;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 != a3)
      {
        do
        {
          v6 = *a2;
          if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
          {
            break;
          }

          if (v5 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v5 = v6 + 10 * v5 - 48;
          *a4 = v5;
          ++a2;
        }

        while (a2 != a3);
      }
    }
  }

  return a2;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1C692A5E0](exception, 8);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1C692A5E0](exception, 7);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1C692AE10);
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1C692AE10);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_1F42CD5E0;
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

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x1C692AE10);
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
  MEMORY[0x1C692A5E0](exception, 15);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v9 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v8, a3, end, marked_count + 1, v9);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3 && v6 + 1 != a3 && *v6 == 92)
  {
    v8 = v6[1];
    if (v8 == 40)
    {
      v9 = v6 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
      marked_count = a1->__marked_count_;
      do
      {
        v11 = v9;
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(a1, v9, a3);
        v9 = v12;
      }

      while (v12 != v11);
      if (v11 == a3 || v12 + 1 == a3 || *v12 != 92 || v12[1] != 41)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      v7 = v12 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, marked_count);
    }

    else
    {
      v13 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v8);
      v14 = 2;
      if (!v13)
      {
        v14 = 0;
      }

      v7 += v14;
    }
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = a2;
  if (a2 != a3)
  {
    v7 = __mexp_end;
    v8 = __mexp_begin;
    v11 = *a2;
    if (v11 == 42)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(this, 0, 0xFFFFFFFFFFFFFFFFLL, __s, __mexp_begin, __mexp_end, 1);
      return ++v6;
    }

    if (a2 + 1 != a3 && v11 == 92 && a2[1] == 123)
    {
      v14 = a2 + 2;
      LODWORD(__max) = 0;
      v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(this, a2 + 2, a3, &__max);
      if (v15 == v14)
      {
        goto LABEL_25;
      }

      if (v15 != a3)
      {
        v16 = v15 + 1;
        v17 = *v15;
        if (v17 == 44)
        {
          v26 = -1;
          v18 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(this, v16, a3, &v26);
          if (v18 != a3)
          {
            v19 = v18;
            if (v18 + 1 != a3 && *v18 == 92)
            {
              v20 = v18[1];
              v21 = v20 == 125;
              if (v20 == 125)
              {
                v22 = v26;
                if (v26 == -1)
                {
                  v23 = v8;
                  v24 = v7;
                  v25 = this;
                  v22 = -1;
                  goto LABEL_23;
                }

                if (v26 >= __max)
                {
                  v23 = v8;
                  v24 = v7;
                  v25 = this;
LABEL_23:
                  std::basic_regex<char,std::regex_traits<char>>::__push_loop(v25, __max, v22, __s, v23, v24, 1);
                  return &v19[2 * v21];
                }

LABEL_25:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
              }
            }
          }
        }

        else if (v16 != a3 && v17 == 92 && *v16 == 125)
        {
          v6 = v15 + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(this, __max, __max, __s, v8, v7, 1);
          return v6;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }
  }

  return v6;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v7 = a2 + 1;
    v6 = *a2;
    if (a2 + 1 == a3 && v6 == 36 || ((v6 - 46) <= 0x2E ? (v8 = ((1 << (v6 - 46)) & 0x600000000001) == 0) : (v8 = 1), !v8))
    {
      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(this, a2, a3);
      v7 = v9;
      if (v9 == a2)
      {
        if (*v9 == 46)
        {
          operator new();
        }

        goto LABEL_12;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v6);
    }

    return v7;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(this, a2, a3);
  if (v7 != a2)
  {
    return v7;
  }

LABEL_12:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(std::basic_regex<char> *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      v3 += 2;
    }
  }

  return v3;
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<char const*>(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v11 = a1->__marked_count_;
        ++a1->__open_count_;
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v9 + 1, a3);
        if (v12 == a3 || (v9 = v12, *v12 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v11);
        --a1->__open_count_;
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
        break;
      default:
        goto LABEL_12;
    }

    ++v9;
  }

LABEL_12:
  if (v9 == a2)
  {
    return v9;
  }

  v13 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v9, a3, end, marked_count + 1, v13);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR_ERE<char const*>(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR_ERE<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v3 = this;
  if (this != a3)
  {
    locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
    v5 = (locale_low - 36);
    if (v5 > 0x3A)
    {
      goto LABEL_8;
    }

    if (((1 << (locale_low - 36)) & 0x5800000080004D1) != 0)
    {
      return v3;
    }

    if (v5 == 5)
    {
      if (a1->__open_count_)
      {
        return v3;
      }

      locale = 41;
    }

    else
    {
LABEL_8:
      if ((locale_low - 123) < 2)
      {
        return v3;
      }

      locale = this->__traits_.__loc_.__locale_;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, locale);
    return (v3 + 1);
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a2 + 1;
  if (v3 + 1 == a3 || *v3 != 92)
  {
    return v3;
  }

  v5 = *v4;
  v6 = (v5 - 36) > 0x3A || ((1 << (v5 - 36)) & 0x5800000080004F1) == 0;
  if (!v6 || (v5 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
    v3 += 2;
    return v3;
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v8 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v5);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    v3 += v9;
    return v3;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4, a3, 0);
}

std::string *std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(std::string *a1, std::__wrap_iter<const char *> a2, std::__wrap_iter<const char *> a3, const std::regex_iterator<std::__wrap_iter<const char *>, char>::regex_type *a4, char *a5, unsigned __int32 __m)
{
  v6 = __m;
  i = a2.__i_;
  std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_iterator(&v18, a2, a3, a4, __m);
  memset(&v17.__match_.__prefix_, 0, 17);
  memset(&v17.__match_.__suffix_, 0, 17);
  v17.__match_.__ready_ = 0;
  v17.__match_.__position_start_.__i_ = 0;
  memset(&v17.__match_, 0, 41);
  memset(&v17, 0, 28);
  if (std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v18, &v17))
  {
    if ((v6 & 0x200) == 0)
    {
      while (i != a3.__i_)
      {
        std::string::push_back(a1, *i++);
      }
    }
  }

  else
  {
    v11 = strlen(a5);
    v12 = 0;
    v13 = 0;
    while (!std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v18, &v17))
    {
      if ((v6 & 0x200) == 0)
      {
        v14 = v18.__match_.__prefix_.first.__i_;
        v15 = v18.__match_.__prefix_.second.__i_;
        while (v14 != v15)
        {
          std::string::push_back(a1, *v14++);
        }
      }

      a1 = std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(&v18.__match_, a1, a5, &a5[v11], v6);
      v13 = v18.__match_.__suffix_.first.__i_;
      v12 = v18.__match_.__suffix_.second.__i_;
      if ((v6 & 0x400) != 0)
      {
        break;
      }

      std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&v18);
    }

    if ((v6 & 0x200) == 0)
    {
      while (v13 != v12)
      {
        std::string::push_back(a1, *v13++);
      }
    }
  }

  if (v17.__match_.__matches_.__begin_)
  {
    v17.__match_.__matches_.__end_ = v17.__match_.__matches_.__begin_;
    operator delete(v17.__match_.__matches_.__begin_);
  }

  if (v18.__match_.__matches_.__begin_)
  {
    v18.__match_.__matches_.__end_ = v18.__match_.__matches_.__begin_;
    operator delete(v18.__match_.__matches_.__begin_);
  }

  return a1;
}

void sub_1C3172EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
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

std::string *std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(std::string::value_type ***a1, std::string *this, unsigned __int8 *a3, unsigned __int8 *a4, __int16 a5)
{
  v6 = a3;
  if ((a5 & 0x100) != 0)
  {
    if (a3 == a4)
    {
      return this;
    }

    while (1)
    {
      v29 = *v6;
      if (v29 == 92)
      {
        v33 = v6 + 1;
        if (v6 + 1 != a4)
        {
          v29 = *v33;
          v34 = v29 - 48;
          if ((v29 - 48) <= 9)
          {
            v35 = &(*a1)[3 * (v29 - 48)];
            if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v34)
            {
              v35 = (a1 + 3);
            }

            v36 = *v35;
            v37 = *(v35 + 8);
            while (v36 != v37)
            {
              v38 = *v36++;
              std::string::push_back(this, v38);
            }

            goto LABEL_54;
          }

          ++v6;
        }
      }

      else if (v29 == 38)
      {
        v30 = **a1;
        v31 = (*a1)[1];
        while (v30 != v31)
        {
          v32 = *v30++;
          std::string::push_back(this, v32);
        }

        goto LABEL_53;
      }

      std::string::push_back(this, v29);
LABEL_53:
      v33 = v6;
LABEL_54:
      v6 = v33 + 1;
      if (v33 + 1 == a4)
      {
        return this;
      }
    }
  }

  if (a3 != a4)
  {
    do
    {
      v9 = *v6;
      v10 = v6 + 1;
      if (v9 == 36 && v10 != a4)
      {
        v9 = *v10;
        if (v9 > 0x26)
        {
          if (v9 == 39)
          {
            v26 = a1[9];
            v27 = a1[10];
            while (v26 != v27)
            {
              v28 = *v26++;
              std::string::push_back(this, v28);
            }

            goto LABEL_10;
          }

          if (v9 == 96)
          {
            v15 = a1[6];
            v16 = a1[7];
            while (v15 != v16)
            {
              v17 = *v15++;
              std::string::push_back(this, v17);
            }

            goto LABEL_10;
          }
        }

        else
        {
          if (v9 == 36)
          {
            goto LABEL_9;
          }

          if (v9 == 38)
          {
            v12 = **a1;
            v13 = (*a1)[1];
            while (v12 != v13)
            {
              v14 = *v12++;
              std::string::push_back(this, v14);
            }

            goto LABEL_10;
          }
        }

        LODWORD(v18) = v9 - 48;
        if (v18 <= 9)
        {
          v18 = v18;
          if (v6 + 2 != a4)
          {
            v19 = v6[2];
            v20 = v19 - 48;
            v21 = v19 + 10 * v18 - 48;
            if (v20 > 9)
            {
              v10 = v6 + 1;
            }

            else
            {
              v18 = v21;
              v10 = v6 + 2;
            }
          }

          if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v18)
          {
            v22 = (a1 + 3);
          }

          else
          {
            v22 = &(*a1)[3 * v18];
          }

          v23 = *v22;
          v24 = *(v22 + 8);
          while (v23 != v24)
          {
            v25 = *v23++;
            std::string::push_back(this, v25);
          }

          goto LABEL_10;
        }

        LOBYTE(v9) = 36;
      }

      v10 = v6;
LABEL_9:
      std::string::push_back(this, v9);
LABEL_10:
      v6 = v10 + 1;
    }

    while (v10 + 1 != a4);
  }

  return this;
}

std::regex_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(std::regex_iterator<std::__wrap_iter<const char *>, char> *this)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  i = p_match[-1].__position_start_.__i_;
  flags = i | 0x800;
  LODWORD(p_match[-1].__position_start_.__i_) = i | 0x800;
  if (p_match->__matches_.__end_ == begin)
  {
    p_unmatched = &p_match->__unmatched_;
  }

  else
  {
    p_unmatched = begin;
  }

  v7 = p_unmatched->second.__i_;
  if (p_unmatched->first.__i_ != v7)
  {
    v8 = p_unmatched->second.__i_;
LABEL_6:
    this->__flags_ = flags | 0x80;
    v10 = this->__end_.__i_;
    pregex = this->__pregex_;
    memset(&__p.__prefix_, 0, 17);
    memset(&__p.__suffix_, 0, 17);
    __p.__ready_ = 0;
    __p.__position_start_ = 0;
    memset(&__p, 0, 41);
    v11 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(pregex, v8, v10, &__p, flags | 0x80);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, v8, v10, &__p, (flags & 0x800) != 0);
    if (__p.__matches_.__begin_)
    {
      __p.__matches_.__end_ = __p.__matches_.__begin_;
      operator delete(__p.__matches_.__begin_);
    }

    if (v11)
    {
      this->__match_.__prefix_.first.__i_ = v7;
      this->__match_.__prefix_.matched = this->__match_.__prefix_.second.__i_ != v7;
      return this;
    }

    begin = p_match->__matches_.__begin_;
    goto LABEL_16;
  }

  v12 = this->__end_.__i_;
  if (v12 == v7)
  {
LABEL_16:
    if (begin)
    {
      this->__match_.__matches_.__end_ = begin;
      operator delete(begin);
      p_match->__matches_.__begin_ = 0;
      p_match->__matches_.__end_ = 0;
      p_match->__matches_.__end_cap_.__value_ = 0;
    }

    this->__match_.__ready_ = 0;
    *&p_match->__matches_.__begin_ = 0u;
    *&p_match->__matches_.__end_cap_.__value_ = 0u;
    *(&p_match->__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> + 1) = 0u;
    this->__match_.__prefix_.first.__i_ = 0;
    this->__match_.__prefix_.second.__i_ = 0;
    this->__match_.__prefix_.matched = 0;
    this->__match_.__suffix_.first.__i_ = 0;
    this->__match_.__suffix_.second.__i_ = 0;
    this->__match_.__suffix_.matched = 0;
    this->__match_.__position_start_.__i_ = 0;
    return this;
  }

  v13 = this->__pregex_;
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  v14 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v13, v7, v12, &__p, i | 0x860u);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, v7, v12, &__p, 1);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if ((v14 & 1) == 0)
  {
    v8 = v7 + 1;
    flags = this->__flags_;
    goto LABEL_6;
  }

  return this;
}

void sub_1C31733BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::regex_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_iterator(std::regex_iterator<std::__wrap_iter<const char *>, char> *this, std::__wrap_iter<const char *> __a, std::__wrap_iter<const char *> __b, const std::regex_iterator<std::__wrap_iter<const char *>, char>::regex_type *__re, std::regex_constants::match_flag_type __m)
{
  v5 = __m;
  this->__begin_ = __a;
  this->__end_ = __b;
  this->__pregex_ = __re;
  this->__flags_ = __m;
  *&this->__match_.__matches_.__begin_ = 0u;
  p_match = &this->__match_;
  this->__match_.__prefix_.first.__i_ = 0;
  this->__match_.__prefix_.second.__i_ = 0;
  this->__match_.__prefix_.matched = 0;
  this->__match_.__suffix_.first.__i_ = 0;
  this->__match_.__suffix_.second.__i_ = 0;
  this->__match_.__suffix_.matched = 0;
  this->__match_.__ready_ = 0;
  this->__match_.__position_start_.__i_ = 0;
  *&this->__match_.__matches_.__end_cap_.__value_ = 0u;
  *(&this->__match_.__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> + 1) = 0u;
  memset(&__p.__prefix_, 0, 17);
  memset(&__p.__suffix_, 0, 17);
  __p.__ready_ = 0;
  __p.__position_start_ = 0;
  memset(&__p, 0, 41);
  std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(__re, __a.__i_, __b.__i_, &__p, __m);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, __a.__i_, __b.__i_, &__p, (v5 & 0x800) != 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  return this;
}

void sub_1C31734B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v10 + 40) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(std::vector<std::ssub_match> *a1, uint64_t a2, std::sub_match<std::__wrap_iter<const char *>> *a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  std::vector<std::sub_match<std::__wrap_iter<char const*>>>::resize(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  begin = a1->__begin_;
  if (a1->__end_ == a1->__begin_)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12 * 24);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      begin[v12].first.__i_ = (v14 + *v19);
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12 * 24);
      }

      a1->__begin_[v12].second.__i_ = (v14 + v20[1]);
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12 * 24);
      }

      v22 = *(v21 + 16);
      begin = a1->__begin_;
      end = a1->__end_;
      a1->__begin_[v12].matched = v22;
      ++v13;
      ++v12;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3));
  }

  a1[1].__begin_ = a3;
  a1[1].__end_ = a3;
  LOBYTE(a1[1].__end_cap_.__value_) = 0;
  v24 = (v14 + a4[6]);
  a1[2].__begin_ = v24;
  a1[2].__end_ = (v14 + a4[7]);
  LOBYTE(a1[2].__end_cap_.__value_) = *(a4 + 64);
  a1[3].__begin_ = (v14 + a4[9]);
  a1[3].__end_ = (v14 + a4[10]);
  LOBYTE(a1[3].__end_cap_.__value_) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    a1[4].__end_ = v24;
  }

  LOBYTE(a1[4].__begin_) = *(a4 + 96);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_70;
  }

  *v55 = 0;
  memset(&v55[8], 0, 32);
  v56 = 0uLL;
  *__p = 0uLL;
  memset(v58, 0, 21);
  std::deque<std::__state<char>>::push_back(&v59, v55);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v55[32])
  {
    *&v56 = *&v55[32];
    operator delete(*&v55[32]);
  }

  v51 = a4;
  v13 = v59.i64[1];
  v14 = *(&v61 + 1) + v61 - 1;
  v15 = v14 / 0x2A;
  v16 = *(v59.i64[1] + 8 * (v14 / 0x2A));
  v17 = 3 * (v14 % 0x2A);
  v18 = v16 + 32 * v17;
  *v18 = 0;
  *(v18 + 8) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 16) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 24) = a3;
  std::vector<std::pair<unsigned long,char const*>>::resize((*(v13 + 8 * v15) + 32 * v17 + 56), *(a1 + 32));
  v54 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *(&v61 + 1);
  v22 = v59.i64[1];
  v23 = *(&v61 + 1) + v61 - 1;
  v24 = v23 / 0x2A;
  v25 = 3 * (v23 % 0x2A);
  *(*(v59.i64[1] + 8 * v24) + 32 * v25 + 80) = v6;
  v52 = a3;
  v53 = a2;
  v26 = a3 - a2;
  v27 = *(v22 + 8 * v24) + 32 * v25;
  *(v27 + 88) = a5;
  *(v27 + 92) = a6;
  do
  {
    if ((++v19 & 0xFFF) == 0 && (v19 >> 12) >= v26)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v29 = *(v59.i64[1] + 8 * ((v21 + v61 - 1) / 0x2AuLL)) + 96 * ((v21 + v61 - 1) % 0x2AuLL);
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
          goto LABEL_52;
        }

        if (v31 != -995)
        {
          goto LABEL_72;
        }

        std::deque<std::__state<char>>::push_front(&v59, v29);
        goto LABEL_51;
      }

      v32 = *(v29 + 16);
      v34 = (a5 & 0x1000) == 0 || v32 == v52;
      v35 = v32 != v53 || (a5 & 0x20) == 0;
      if (!v35 || !v34)
      {
        goto LABEL_51;
      }

      v36 = v32 - *(v29 + 8);
      if (v20 <= v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = v20;
      }

      if (v54)
      {
        v20 = v37;
      }

      else
      {
        v20 = v36;
      }

      if (v20 != v26)
      {
        std::deque<std::__state<char>>::pop_back(&v59);
        v54 = 1;
        goto LABEL_52;
      }

      v38 = v59.i64[1];
      v39 = v60;
      if (v60 == v59.i64[1])
      {
        v39 = v59.i64[1];
      }

      else
      {
        v40 = (v59.i64[1] + 8 * (v61 / 0x2A));
        v41 = (*v40 + 96 * (v61 % 0x2A));
        v42 = *(v59.i64[1] + 8 * ((*(&v61 + 1) + v61) / 0x2AuLL)) + 96 * ((*(&v61 + 1) + v61) % 0x2AuLL);
        if (v41 != v42)
        {
          do
          {
            std::allocator<std::__state<char>>::destroy[abi:ne200100](&v59, v41);
            v41 += 12;
            if ((v41 - *v40) == 4032)
            {
              v43 = v40[1];
              ++v40;
              v41 = v43;
            }
          }

          while (v41 != v42);
          v38 = v59.i64[1];
          v39 = v60;
        }
      }

      *(&v61 + 1) = 0;
      v46 = (v39 - v38) >> 3;
      if (v46 >= 3)
      {
        do
        {
          operator delete(*v38);
          v38 = (v59.i64[1] + 8);
          v59.i64[1] = v38;
          v46 = (v60 - v38) >> 3;
        }

        while (v46 > 2);
      }

      if (v46 == 1)
      {
        v47 = 21;
      }

      else
      {
        if (v46 != 2)
        {
LABEL_67:
          v54 = 1;
          v20 = v26;
          goto LABEL_52;
        }

        v47 = 42;
      }

      *&v61 = v47;
      goto LABEL_67;
    }

    if (v31 <= -993)
    {
      if (v31 == -994)
      {
        goto LABEL_52;
      }

      if (v31 != -993)
      {
        goto LABEL_72;
      }

LABEL_51:
      std::deque<std::__state<char>>::pop_back(&v59);
      goto LABEL_52;
    }

    if (v31 == -992)
    {
      v44 = *(v29 + 16);
      *v55 = *v29;
      *&v55[16] = v44;
      v56 = 0uLL;
      *&v55[32] = 0;
      std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v55[32], *(v29 + 32), *(v29 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 40) - *(v29 + 32)) >> 3));
      __p[0] = 0;
      __p[1] = 0;
      v58[0] = 0;
      std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v29 + 56), *(v29 + 64), (*(v29 + 64) - *(v29 + 56)) >> 4);
      v45 = *(v29 + 80);
      *(&v58[1] + 5) = *(v29 + 85);
      v58[1] = v45;
      (*(**(v29 + 80) + 24))(*(v29 + 80), 1, v29);
      (*(*v58[1] + 24))(v58[1], 0, v55);
      std::deque<std::__state<char>>::push_back(&v59, v55);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*&v55[32])
      {
        *&v56 = *&v55[32];
        operator delete(*&v55[32]);
      }
    }

    else if (v31 != -991)
    {
LABEL_72:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
    }

LABEL_52:
    v21 = *(&v61 + 1);
  }

  while (*(&v61 + 1));
  if ((v54 & 1) == 0)
  {
LABEL_70:
    v49 = 0;
    goto LABEL_71;
  }

  v48 = *v51;
  *v48 = v53;
  *(v48 + 8) = v53 + v20;
  v49 = 1;
  *(v48 + 16) = 1;
LABEL_71:
  std::deque<std::__state<char>>::~deque[abi:ne200100](&v59);
  return v49;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v52 = 0;
  v53 = 0;
  v54 = 0;
  *v49 = 0;
  memset(&v49[8], 0, 32);
  v50 = 0u;
  memset(v51, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_47;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v44 = 0;
  memset(&v44[8], 0, 32);
  v45 = 0uLL;
  *__p = 0uLL;
  memset(v47, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v52, v44);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v44[32])
  {
    *&v45 = *&v44[32];
    operator delete(*&v44[32]);
  }

  v43 = a4;
  v13 = v53;
  *(v53 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 8), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v53 - 5), *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v53;
  *(v53 - 2) = v6;
  v18 = (a3 - a2);
  *(v17 - 2) = a5;
  *(v17 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v18;
    if (!v19)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v21 = v17 - 2;
    v20 = *(v17 - 2);
    v22 = v17 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v17 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_33;
        case -992:
          v32 = *(v17 - 5);
          *v44 = *v22;
          *&v44[16] = v32;
          v45 = 0uLL;
          *&v44[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v44[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v47[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
          v33 = *v21;
          *(&v47[1] + 5) = *(v17 - 11);
          v47[1] = v33;
          (*(**v21 + 24))(*v21, 1, v17 - 12);
          (*(*v47[1] + 24))(v47[1], 0, v44);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v52, v44);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v44[32])
          {
            *&v45 = *&v44[32];
            operator delete(*&v44[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_53:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_38;
      }

      if (v23 != -1000)
      {
        goto LABEL_53;
      }

      v24 = *(v17 - 10);
      if ((a5 & 0x20) != 0 && v24 == a2 || (a5 & 0x1000) != 0 && v24 != a3)
      {
LABEL_33:
        v31 = v53 - 12;
        std::allocator<std::__state<char>>::destroy[abi:ne200100](&v52, v53 - 12);
        v53 = v31;
        goto LABEL_38;
      }

      v25 = v15;
      v26 = &v24[-*(v17 - 11)];
      if ((v25 & (v14 >= v26)) == 0)
      {
        v27 = *(v17 - 5);
        *v49 = *v22;
        *&v49[16] = v27;
        if (v49 != v22)
        {
          std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v49[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v51, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
        }

        v28 = *v21;
        *(&v51[3] + 5) = *(v17 - 11);
        v51[3] = v28;
        v14 = v26;
      }

      v29 = v53;
      if (v14 == v18)
      {
        v30 = v52;
        while (v29 != v30)
        {
          v29 -= 12;
          std::allocator<std::__state<char>>::destroy[abi:ne200100](&v52, v29);
        }

        v53 = v30;
        v15 = 1;
        v14 = (a3 - a2);
      }

      else
      {
        v34 = v53 - 12;
        std::allocator<std::__state<char>>::destroy[abi:ne200100](&v52, v53 - 12);
        v53 = v34;
        v15 = 1;
      }
    }

LABEL_38:
    v17 = v53;
  }

  while (v52 != v53);
  if ((v15 & 1) == 0)
  {
LABEL_47:
    v41 = 0;
    goto LABEL_48;
  }

  v35 = *v43;
  *v35 = a2;
  *(v35 + 8) = &v14[a2];
  *(v35 + 16) = 1;
  if (v50 != *&v49[32])
  {
    v36 = 0xAAAAAAAAAAAAAAABLL * ((v50 - *&v49[32]) >> 3);
    v37 = (*&v49[32] + 16);
    v38 = 1;
    do
    {
      v39 = v35 + 24 * v38;
      *v39 = *(v37 - 1);
      v40 = *v37;
      v37 += 24;
      *(v39 + 16) = v40;
      v19 = v36 > v38++;
    }

    while (v19);
  }

  v41 = 1;
LABEL_48:
  if (v51[0])
  {
    v51[1] = v51[0];
    operator delete(v51[0]);
  }

  if (*&v49[32])
  {
    *&v50 = *&v49[32];
    operator delete(*&v49[32]);
  }

  *v49 = &v52;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v49);
  return v41;
}

void sub_1C3174040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__state<char>::~__state(&a11);
  std::__state<char>::~__state(&a27);
  a27 = v27 - 120;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

__n128 std::deque<std::__state<char>>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 42 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<std::__state<char>>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x2A)) + 96 * (v8 % 0x2A);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0;
  *(v9 + 32) = *(a2 + 32);
  *(v9 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  result = *(a2 + 56);
  *(v9 + 56) = result;
  *(v9 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v12 = *(a2 + 80);
  *(v9 + 85) = *(a2 + 85);
  *(v9 + 80) = v12;
  ++*(a1 + 40);
  return result;
}

uint64_t std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::allocator<std::__state<char>>::destroy[abi:ne200100](a1, (*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  --a1[5];

  return std::deque<std::__state<char>>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

int64x2_t std::deque<std::__state<char>>::push_front(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    std::deque<std::__state<char>>::__add_front_capacity(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x2A));
  v7 = *v6 + 96 * (v4 % 0x2A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4032;
  }

  v8 = *(a2 + 16);
  *(v7 - 96) = *a2;
  *(v7 - 80) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 64) = 0;
  *(v7 - 64) = *(a2 + 32);
  *(v7 - 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 40) = *(a2 + 56);
  *(v7 - 24) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 - 11) = *(a2 + 85);
  *(v7 - 16) = v9;
  result = vaddq_s64(a1[2], xmmword_1C378D2D0);
  a1[2] = result;
  return result;
}

void *std::deque<std::__state<char>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::emplace_back<std::pair<int,int> *&>(a1, &v10);
}

void sub_1C31744A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<std::__state<char>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

const void **std::deque<std::__state<char>>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x2A)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::emplace_front<std::pair<int,int> *>(a1, v11);
}

void sub_1C3174770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::allocator<std::__state<char>>::destroy[abi:ne200100](a1, v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<char **>::~__split_buffer(a1);
}

_BYTE *std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(void *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      result[16] = *(v5 + 16);
      v5 += 24;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        result[16] = *(v5 + 16);
        v5 += 24;
        result += 24;
      }

      while (v5 != v13);
    }

    if (v13 == a3)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13;
        *(v12 + 16) = *(v13 + 2);
        *v12 = v15;
        v12 += 24;
        v13 = (v13 + 24);
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

char *std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      v18 = v5[1];
      v5 += 2;
      *result = v17;
      *(result + 1) = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        v13 = *v5;
        v14 = v5[1];
        v5 += 2;
        *result = v13;
        *(result + 1) = v14;
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v12++;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::resize(std::vector<std::ssub_match> *this, std::vector<std::ssub_match>::size_type __sz)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3);
  v3 = __sz >= v2;
  v4 = __sz - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(this, v4);
  }

  else if (!v3)
  {
    this->__end_ = &this->__begin_[__sz];
  }
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(std::vector<std::ssub_match> *this, std::vector<std::ssub_match>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v10 = &end[__n];
      v11 = 24 * __n;
      do
      {
        end->first.__i_ = 0;
        end->second.__i_ = 0;
        end->matched = 0;
        ++end;
        v11 -= 24;
      }

      while (v11);
      end = v10;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v7 = v6 + __n;
    if (v6 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(this, v9);
    }

    v12 = 24 * __n;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    begin = this->__begin_;
    v15 = this->__end_;
    v16 = (24 * v6 + this->__begin_ - v15);
    if (v15 != this->__begin_)
    {
      v17 = (24 * v6 + this->__begin_ - v15);
      do
      {
        v18 = begin->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
        *(v17 + 2) = *&begin->matched;
        *v17 = v18;
        v17 += 24;
        ++begin;
      }

      while (begin != v15);
      begin = this->__begin_;
    }

    this->__begin_ = v16;
    this->__end_ = (24 * v6 + 24 * __n);
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__p, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&v15, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v17);
    v5 = v15;
    v4 = v16;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v6 = HIBYTE(v20);
  if (v20 >= 0)
  {
    v7 = HIBYTE(v20);
  }

  else
  {
    v7 = v19;
  }

  if (v20 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v3 & 0x80u) == 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = &v15;
  }

  else
  {
    v10 = v5;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(p_p, v10, v11);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_24;
  }

  operator delete(__p);
LABEL_24:
  v13 = v9 < v7;
  if (v7 < v9)
  {
    v13 = -1;
  }

  if (v12)
  {
    return v12;
  }

  else
  {
    return v13;
  }
}

void sub_1C3174EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::ESTensorData::~ESTensorData(kaldi::quasar::ESTensorData *this)
{
  *this = &unk_1F42CD730;
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    free(v2);
  }

  kaldi::quasar::ComputeEngineBufferItf::~ComputeEngineBufferItf(this);
}

{
  kaldi::quasar::ESTensorData::~ESTensorData(this);

  JUMPOUT(0x1C692AE10);
}

uint64_t kaldi::quasar::ESNetworkConfig::ESNetworkConfig(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F42CD808;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 56) = *(a2 + 2);
    *(a1 + 40) = v3;
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = a1 + 72;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void kaldi::quasar::ESNetworkConfig::Read(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, const char *a5)
{
  memset(&__str, 0, sizeof(__str));
  v41[0] = 0;
  v41[1] = 0;
  v9 = a2 + 4;
  v10 = (a1 + 112);
  v42 = 0;
  v11 = (a1 + 88);
  while ((*(v9 + *(*a2 - 24)) & 2) == 0)
  {
    v39 = 0uLL;
    v40 = 0;
    kaldi::ReadToken(a2, a3, &v39, a4, a5);
    v12 = *(a4 + 23);
    if (v12 >= 0)
    {
      v13 = *(a4 + 23);
    }

    else
    {
      v13 = *(a4 + 8);
    }

    v14 = HIBYTE(v40);
    v15 = SHIBYTE(v40);
    if (!v13)
    {
      goto LABEL_17;
    }

    v16 = *(&v39 + 1);
    if (v40 >= 0)
    {
      v16 = HIBYTE(v40);
    }

    if (v16 == v13 && (v40 >= 0 ? (v17 = &v39) : (v17 = v39), v12 >= 0 ? (v18 = a4) : (v18 = *a4), !memcmp(v17, v18, v13)))
    {
      v33 = 0;
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_72;
      }

LABEL_75:
      operator delete(v39);
      if ((v33 & 1) == 0)
      {
        break;
      }
    }

    else
    {
LABEL_17:
      if (v15 < 0)
      {
        if (*(&v39 + 1) != 10 || (*v39 == 0x6F6974636E75463CLL ? (v20 = *(v39 + 8) == 15982) : (v20 = 0), !v20))
        {
          if (*(&v39 + 1) == 14 && *v39 == 0x5474757074754F3CLL && *(v39 + 6) == 0x3E726F736E655474)
          {
            goto LABEL_57;
          }

          if (*(&v39 + 1) != 16)
          {
            if (*(&v39 + 1) != 17 || (*v39 == 0x657475706D6F433CLL ? (v22 = *(v39 + 8) == 0x6D726F6674616C50) : (v22 = 0), v22 ? (v23 = *(v39 + 16) == 62) : (v23 = 0), p_str = v11, !v23))
            {
LABEL_81:
              kaldi::KaldiErrorMessage::KaldiErrorMessage(v38, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 240);
              v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Unknown token ", 14);
              if (v40 >= 0)
              {
                v35 = &v39;
              }

              else
              {
                v35 = v39;
              }

              if (v40 >= 0)
              {
                v36 = HIBYTE(v40);
              }

              else
              {
                v36 = *(&v39 + 1);
              }

              v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, v36);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ", a typo in config file?", 24);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v38);
            }

            goto LABEL_70;
          }

          v25 = v39;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      if (v14 <= 15)
      {
        if (v14 != 10)
        {
          if (v14 != 14)
          {
            goto LABEL_81;
          }

          if (v39 != 0x5474757074754F3CLL || *(&v39 + 6) != 0x3E726F736E655474)
          {
            goto LABEL_81;
          }

LABEL_57:
          kaldi::ReadToken(a2, a3, v41, a4, a5);
          v38[0] = v41;
          v28 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 64, v41);
          std::string::operator=((v28 + 56), &__str);
          goto LABEL_71;
        }

        if (v39 != 0x6F6974636E75463CLL || WORD4(v39) != 15982)
        {
          goto LABEL_81;
        }

LABEL_63:
        p_str = &__str;
        goto LABEL_70;
      }

      if (v14 == 16)
      {
        v25 = &v39;
LABEL_65:
        v31 = *v25;
        v30 = v25[1];
        v32 = v31 == 0x6F706B636568433CLL && v30 == 0x3E656D614E746E69;
        p_str = v10;
        if (!v32)
        {
          goto LABEL_81;
        }

        goto LABEL_70;
      }

      if (v14 != 17)
      {
        goto LABEL_81;
      }

      v26 = v39 == 0x657475706D6F433CLL && *(&v39 + 1) == 0x6D726F6674616C50;
      v27 = v26 && v40 == 62;
      p_str = v11;
      if (!v27)
      {
        goto LABEL_81;
      }

LABEL_70:
      kaldi::ReadToken(a2, a3, p_str, a4, a5);
LABEL_71:
      std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
      v33 = 1;
      if (v40 < 0)
      {
        goto LABEL_75;
      }

LABEL_72:
      if ((v33 & 1) == 0)
      {
        break;
      }
    }
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1C3175438(_Unwind_Exception *exception_object)
{
  if (*(v1 - 145) < 0)
  {
    operator delete(*(v1 - 168));
  }

  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(exception_object);
}

kaldi::quasar::ESNetworkPlan *kaldi::quasar::ESNetworkPlan::ESNetworkPlan(kaldi::quasar::ESNetworkPlan *this, const kaldi::quasar::ESNetworkConfig *a2)
{
  *this = &unk_1F42CD848;
  kaldi::quasar::ESNetworkConfig::ESNetworkConfig((this + 8), a2);
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 25) = 0;
  *(this + 216) = 0u;
  *(this + 52) = 1065353216;
  *(this + 232) = 0u;
  *(this + 62) = 1065353216;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 32) = this + 264;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 78) = 1065353216;
  *(this + 160) = 0;
  kaldi::quasar::ESNetworkPlan::LoadNetwork(this, this + 48);
  return this;
}

void sub_1C3175594(_Unwind_Exception *a1)
{
  v5 = v4;
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(v5);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v1 + 256, *(v1 + 264));
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(v1 + 176);
  kaldi::quasar::ESNetworkConfig::~ESNetworkConfig(v2);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v1);
  _Unwind_Resume(a1);
}

void kaldi::quasar::ESNetworkPlan::LoadNetwork(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 119);
  v5 = *(a1 + 104);
  if ((v4 & 0x80u) == 0)
  {
    v6 = *(a1 + 119);
  }

  else
  {
    v6 = *(a1 + 104);
  }

  if (!v6)
  {
    context = espresso_create_context();
    goto LABEL_107;
  }

  v7 = (a1 + 96);
  if ((v4 & 0x80) != 0)
  {
    if (v5 > 10)
    {
      switch(v5)
      {
        case 11:
          if (**v7 != 0x544E55525F454E41 || *(*v7 + 3) != 0x454D49544E55525FLL)
          {
            goto LABEL_164;
          }

          break;
        case 15:
          if (**v7 != 0x504D5F4C4154454DLL || *(*v7 + 7) != 0x48504152475F5350)
          {
            goto LABEL_164;
          }

          break;
        case 18:
          v15 = **v7 == 0x544E55525F454E41 && *(*v7 + 1) == 0x455249445F454D49;
          if (!v15 || (*v7)[8] != 21571)
          {
            goto LABEL_164;
          }

          break;
        default:
          goto LABEL_164;
      }
    }

    else
    {
      if (v5 != 3)
      {
        if (v5 != 5)
        {
          if (v5 != 7)
          {
            goto LABEL_164;
          }

          v8 = *v7;
          goto LABEL_17;
        }

        if (**v7 != 1096041805 || *(*v7 + 4) != 76)
        {
LABEL_164:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&v76, "MakeEspressoContext", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 271);
          v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v76, "Unknown platform: ", 18);
          v67 = *(a1 + 119);
          if (v67 >= 0)
          {
            v68 = a1 + 96;
          }

          else
          {
            v68 = *(a1 + 96);
          }

          if (v67 >= 0)
          {
            v69 = *(a1 + 119);
          }

          else
          {
            v69 = *(a1 + 104);
          }

          v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, v68, v69);
          std::operator<<[abi:ne200100]<std::char_traits<char>>(v70, ", a typo in config file?");
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v76);
        }

        goto LABEL_75;
      }

      v25 = *v7;
      if (**v7 != 20557 || *(*v7 + 2) != 83)
      {
        v27 = *v25;
        v28 = *(v25 + 2);
        if (v27 != 20547 || v28 != 85)
        {
          goto LABEL_164;
        }
      }
    }
  }

  else if (*(a1 + 119) > 0xAu)
  {
    switch(v4)
    {
      case 11:
        if (*v7 != 0x544E55525F454E41 || *(a1 + 99) != 0x454D49544E55525FLL)
        {
          goto LABEL_164;
        }

        break;
      case 15:
        if (*v7 != 0x504D5F4C4154454DLL || *(a1 + 103) != 0x48504152475F5350)
        {
          goto LABEL_164;
        }

        break;
      case 18:
        v13 = *v7 == 0x544E55525F454E41 && *(a1 + 104) == 0x455249445F454D49;
        if (!v13 || *(a1 + 112) != 21571)
        {
          goto LABEL_164;
        }

        break;
      default:
        goto LABEL_164;
    }
  }

  else
  {
    if (v4 != 3)
    {
      if (v4 != 5)
      {
        v8 = (a1 + 96);
        if (v4 != 7)
        {
          goto LABEL_164;
        }

LABEL_17:
        v10 = *v8;
        v11 = *(v8 + 3);
        if (v10 != 1599426627 || v11 != 1414283615)
        {
          goto LABEL_164;
        }

        goto LABEL_99;
      }

      if (*v7 != 1096041805 || *(a1 + 100) != 76)
      {
        goto LABEL_164;
      }

LABEL_75:
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v76, "MakeEspressoContext", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 259);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v76, "Using The Metal GPU backend (legacy, deprecated) ", 49);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "\n", 1);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v76);
      }

      goto LABEL_99;
    }

    if ((*v7 != 20557 || *(a1 + 98) != 83) && (*v7 != 20547 || *(a1 + 98) != 85))
    {
      goto LABEL_164;
    }
  }

LABEL_99:
  context = espresso_create_context();
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v76, "MakeEspressoContext", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 273, 3);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v76, "Set compute platform to ", 24);
    v32 = *(a1 + 119);
    if (v32 >= 0)
    {
      v33 = a1 + 96;
    }

    else
    {
      v33 = *(a1 + 96);
    }

    if (v32 >= 0)
    {
      v34 = *(a1 + 119);
    }

    else
    {
      v34 = *(a1 + 104);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v76);
  }

LABEL_107:
  if (!context)
  {
    context = espresso_create_context();
  }

  *(a1 + 144) = context;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, *a2, *(a2 + 8));
    v35 = *(a1 + 144);
  }

  else
  {
    v75 = *a2;
  }

  plan_and_load_network = espresso_create_plan_and_load_network();
  *(a1 + 168) = plan_and_load_network;
  if (!plan_and_load_network)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v76, "LoadNetwork", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 369);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v76, "plan_ != nullptr", 16);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v76);
  }

  memset(v74, 0, sizeof(v74));
  v37 = *(a1 + 152);
  v38 = *(a1 + 160);
  c_network_get_input_names();
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v39 = *(a1 + 152);
  v40 = *(a1 + 160);
  c_network_get_output_names();
  std::unordered_set<std::string>::unordered_set<std::__wrap_iter<std::string*>>(&v76, 0, 0);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(a1 + 176, &v76);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(&v76);
  std::unordered_set<std::string>::unordered_set<std::__wrap_iter<std::string*>>(&v76, 0, 0);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(a1 + 216, &v76);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(&v76);
  v41 = *(a1 + 168);
  if (espresso_plan_build())
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v76, "LoadNetwork", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 386);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v76, "espresso_plan_build(plan_) == ESPRESSO_STATUS_SUCCESS", 53);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v76);
  }

  if (*(a1 + 168) != *(a1 + 152))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v76, "LoadNetwork", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 387);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v76, "plan_ == network_.plan", 22);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v76);
  }

  v76.__locale_ = 0;
  v77 = 0;
  v78 = 0;
  v42 = *(a1 + 160);
  espresso_get_additional_configuration_names();
  locale = v76.__locale_;
  if (v76.__locale_ == v77)
  {
    v46 = 0;
    *(a1 + 320) = 0;
  }

  else
  {
    v44 = *(v76.__locale_ + 23);
    if (v44 < 0)
    {
      v45 = *v76.__locale_;
      v44 = *(v76.__locale_ + 1);
    }

    else
    {
      v45 = v76.__locale_;
    }

    if (v44 >= 13)
    {
      v47 = v45 + v44;
      v48 = v45;
      do
      {
        v49 = memchr(v48, 98, v44 - 12);
        if (!v49)
        {
          break;
        }

        if (*v49 == 0x6F635F6863746162 && *(v49 + 5) == 0x5F6769666E6F635FLL)
        {
          goto LABEL_130;
        }

        v48 = (v49 + 1);
        v44 = v47 - v48;
      }

      while (v47 - v48 > 12);
      v49 = v47;
LABEL_130:
      v52 = v49 != v47 && v49 == v45;
      *(a1 + 320) = v52;
    }

    else
    {
      *(a1 + 320) = 0;
    }

    v53 = *(locale + 23);
    if (v53 < 0)
    {
      v54 = locale;
      locale = *locale;
      v53 = *(v54 + 1);
    }

    v55 = locale + v53;
    if (v53 >= 13)
    {
      v56 = locale;
      do
      {
        v57 = memchr(v56, 119, v53 - 12);
        if (!v57)
        {
          break;
        }

        if (*v57 == 0x6F635F6874646977 && *(v57 + 5) == 0x5F6769666E6F635FLL)
        {
          goto LABEL_148;
        }

        v56 = (v57 + 1);
        v53 = v55 - v56;
      }

      while (v55 - v56 > 12);
    }

    v57 = v55;
LABEL_148:
    v46 = v57 != v55 && v57 == locale;
  }

  *(a1 + 321) = v46;
  v60 = v71;
  for (i = v72; v60 != i; v60 += 24)
  {
    LODWORD(v80) = 0;
    if (*(v60 + 23) < 0)
    {
      v62 = *v60;
    }

    v63 = *(a1 + 152);
    v64 = *(a1 + 160);
    espresso_blob_is_dynamic();
    v65 = v80;
    v79 = v60;
    *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 280), v60) + 10) = v65;
  }

  v80 = &v76;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v80);
  v76.__locale_ = &v71;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v76);
  v76.__locale_ = v74;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v76);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }
}

void kaldi::quasar::ESNetworkPlan::~ESNetworkPlan(kaldi::quasar::ESNetworkPlan *this)
{
  *this = &unk_1F42CD848;
  if (*(this + 21) && espresso_plan_destroy())
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v3, "~ESNetworkPlan", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 315);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ret == ESPRESSO_STATUS_SUCCESS", 30);
LABEL_9:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  v2 = *(this + 18);
  if (espresso_context_destroy())
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v3, "~ESNetworkPlan", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 318);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ret == ESPRESSO_STATUS_SUCCESS", 30);
    goto LABEL_9;
  }

  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(this + 280);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 256, *(this + 33));
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(this + 216);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(this + 176);
  kaldi::quasar::ESNetworkConfig::~ESNetworkConfig(this + 1);

  kaldi::CuMatrixBase<float>::~CuMatrixBase(this);
}

{
  kaldi::quasar::ESNetworkPlan::~ESNetworkPlan(this);

  JUMPOUT(0x1C692AE10);
}

void kaldi::quasar::ESNetworkPlan::CreateData()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void kaldi::quasar::ESNetworkPlan::CreateZeroedDataInt32(uint64_t a1, uint64_t a2)
{
  std::vector<unsigned long>::vector[abi:ne200100](&__dst, (*(a2 + 8) - *a2) >> 3);
  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    memmove(__dst, *a2, v3 - *a2);
  }

  operator new();
}

void sub_1C3176490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x1C692AE10](v11, 0x1093C40B76D1C73);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::ESNetworkPlan::CreateZeroedDataFloat(uint64_t a1, uint64_t a2)
{
  std::vector<unsigned long>::vector[abi:ne200100](&__dst, (*(a2 + 8) - *a2) >> 3);
  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    memmove(__dst, *a2, v3 - *a2);
  }

  operator new();
}

void sub_1C3176558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x1C692AE10](v11, 0x1093C40B76D1C73);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::ESNetworkPlan::CreateConcat(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (*a2 != *(a2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = **v3;
      {
        memset(&v5[17], 0, 80);
        espresso_buffer_unpack_tensor_shape();
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "CreateConcat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 457);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "rank > 0", 8);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
      }
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "CreateConcat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 453);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "es_data != nullptr", 18);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  operator new();
}

uint64_t kaldi::quasar::ESTensorData::GetDataFloat(kaldi::quasar::ESTensorData *this)
{
  if (*(this + 48) != 65568)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "GetDataFloat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 181);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "t_.buffer.storage_type == ESPRESSO_STORAGE_TYPE_FLOAT32");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return *(this + 4);
}

void *kaldi::quasar::ESNetworkPlan::CreateSplit@<X0>(char **a1@<X1>, void *a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = (*(*a1 + 23))(a1, 0);
  result = std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::vector[abi:ne200100](a2, v5);
  if (v5)
  {
    v7 = **a1;
    {
      memset(v15, 0, 80);
      v14 = 0;
      espresso_buffer_unpack_tensor_shape();
      memset(__p, 0, sizeof(__p));
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(__p, v15, v15, 0);
      v8 = __p[0];
      *__p[0] = 1;
      v9 = v14;
      if (v14)
      {
        v10 = 1;
        do
        {
          v11 = *v8++;
          v10 *= v11;
          --v9;
        }

        while (v9);
      }

      operator new();
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "CreateSplit", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 519);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "src_buf != nullptr", 18);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C31770E4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1C3177104);
}

uint64_t kaldi::quasar::ESNetworkPlan::CreateSlice(kaldi::quasar::ESNetworkPlan *this, const kaldi::quasar::ComputeEngineBufferItf *a2, int a3, unsigned int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((*(*a2 + 176))(a2) <= 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v20, "CreateSlice", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 542);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, "src->GetNumDims() >= 1");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
  }

  if (a3 < 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v20, "CreateSlice", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 543);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, "0 <= start");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
  }

  if (a4 < a3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v20, "CreateSlice", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 544);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, "start <= end");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
  }

  v7 = (*(*a2 + 184))(a2, 0);
  if (v7 < a4)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v20, "CreateSlice", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 546);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, "end <= num_split");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
  }

  if (!v7)
  {
    operator new();
  }

  v8 = *a2;
  if (a3 || v7 != a4)
  {
    v12 = *v8;
    {
      memset(v20, 0, 80);
      v19 = 0;
      espresso_buffer_unpack_tensor_shape();
      memset(__p, 0, sizeof(__p));
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(__p, v20, v20, 0);
      v13 = __p[0];
      *__p[0] = (a4 - a3);
      if (v19 >= 2)
      {
        v14 = v19 - 1;
        v15 = (v13 + 8);
        v16 = 1;
        do
        {
          v17 = *v15++;
          v16 *= v17;
          --v14;
        }

        while (v14);
      }

      operator new();
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v20, "CreateSlice", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 555);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, "src_buf != nullptr");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
  }

  v9 = *(v8 + 2);
  v10 = *MEMORY[0x1E69E9840];

  return v9(a2);
}

void sub_1C31775C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::ESNetworkPlan::SetNetworkFunctionName(uint64_t a1, __int128 **a2, _BYTE *a3, _BYTE *a4)
{
  if (*(a1 + 88))
  {
    v6 = *a2;
    if (a2[1] != *a2)
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(__p, *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        __p[0].__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&__p[0].__r_.__value_.__l.__data_ = v8;
      }

      if (std::__tree<std::string>::__count_unique<std::string>(a1 + 72, &__p[0].__r_.__value_.__l.__data_))
      {
        v9 = std::map<std::string,std::string>::at(a1 + 72, &__p[0].__r_.__value_.__l.__data_);
        v11 = *(a1 + 152);
        v10 = *(a1 + 160);
        if (*(v9 + 23) < 0)
        {
          v12 = *v9;
        }

        v13 = *(a1 + 152);
        espresso_network_set_function_name();
        *a3 = 1;
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(a1 + 143) < 0)
  {
    if (!*(a1 + 128))
    {
      return;
    }

    v14 = *(a1 + 120);
  }

  else if (!*(a1 + 143))
  {
    return;
  }

  v15 = *(a1 + 152);
  v16 = *(a1 + 160);
  if (espresso_network_set_function_name())
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "SetNetworkFunctionName", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 591);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Set function name for checkpoint failed, error=", 47);
    last_error = espresso_get_last_error();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, last_error);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  *a4 = 1;
}

uint64_t std::map<std::string,std::string>::at(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

uint64_t kaldi::quasar::ESNetworkPlan::RunNitro(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  kdebug_trace();
  v9 = *a2;
  for (i = a2[1]; v9 != i; v9 += 32)
  {
    kaldi::quasar::StripColon(v9, __p);
    v11 = *(a1 + 152);
    v12 = *(a1 + 160);
    v13 = *(v9 + 24);
    if (espresso_network_bind_buffer())
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v29, "RunNitro", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 613);
      last_error = espresso_get_last_error();
      v20 = strlen(last_error);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, last_error, v20);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v29);
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

  v14 = *(a1 + 152);
  v15 = espresso_plan_execute_sync();
  if (v15)
  {
    v23 = v15;
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v29, "RunNitro", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 621);
    v24 = MEMORY[0x1C692A960](&v29, v23);
    __p[0].__r_.__value_.__s.__data_[0] = 32;
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, __p, 1);
    v26 = espresso_get_last_error();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, v26);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v29);
  }

  if (a5)
  {
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](a5);
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::reserve(a5, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    if (*a3 != a3[1])
    {
      kaldi::quasar::StripColon(*a3, &v28);
      v16 = *(a1 + 152);
      v17 = *(a1 + 160);
      if (!espresso_network_bind_buffer())
      {
        kaldi::quasar::EspressoNDArray::EspressoNDArray(&v29, __p, 1);
        operator new();
      }

      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v29, "RunNitro", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 636);
      v21 = espresso_get_last_error();
      v22 = strlen(v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, v21, v22);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v29);
    }
  }

  return kdebug_trace();
}

void sub_1C3177BC4()
{
  if (v0)
  {
    free(v0);
  }

  JUMPOUT(0x1C3177C1CLL);
}

void sub_1C3177BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1C3177C28);
  }

  JUMPOUT(0x1C3177C2CLL);
}

void kaldi::quasar::StripColon(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = std::string::find(a1, 58, 0);
  if (v4 == -1)
  {
    if (*(a1 + 23) < 0)
    {
      v5 = *a1;
      v6 = *(a1 + 8);

      std::string::__init_copy_ctor_external(a2, v5, v6);
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }
  }

  else
  {
    std::string::basic_string(a2, a1, 0, v4, &v7);
  }
}

uint64_t kaldi::quasar::ESNetworkPlan::NeedShapeChange(void *a1, const void ***a2, const void ***a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a1[21];
  if (espresso_plan_get_phase() == 1)
  {
    memset(v31, 0, sizeof(v31));
    v32 = 1065353216;
    v7 = *a3;
    v8 = a3[1];
    while (v7 != v8)
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v31, v7);
      v7 += 3;
    }

    if (!std::operator==[abi:ne200100]<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>(v31, a1 + 27))
    {
      v9 = 1;
LABEL_26:
      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(v31);
      goto LABEL_27;
    }

    memset(v29, 0, sizeof(v29));
    v30 = 1065353216;
    v10 = *a2;
    v11 = a2[1];
    while (v10 != v11)
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v29, v10);
      v10 += 4;
    }

    if (std::operator==[abi:ne200100]<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>(v29, a1 + 22))
    {
      v12 = *a2;
      if (a2[1] == *a2)
      {
LABEL_23:
        v9 = 0;
LABEL_25:
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(v29);
        goto LABEL_26;
      }

      v13 = 0;
      v14 = 0;
      while (1)
      {
        v15 = &v12[v13];
        if (*(v15 + 23) < 0)
        {
          v16 = *v15;
        }

        v17 = v15[3];
        v18 = a1[19];
        v19 = a1[20];
        blob_dimensions = espresso_network_query_blob_dimensions();
        if (blob_dimensions)
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v28, "NeedShapeChange", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 683);
          v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Espresso failed query blob info ", 32);
          v24 = MEMORY[0x1C692A960](v23, blob_dimensions);
          v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ": ", 2);
          last_error = espresso_get_last_error();
          v27 = strlen(last_error);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, last_error, v27);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
        }

        if (v17[14] > 1uLL || v17[10] != v33 || v17[11] != v34 || v17[12] != v35 || v17[13] != v36)
        {
          break;
        }

        ++v14;
        v12 = *a2;
        v13 += 4;
        if (v14 >= (a2[1] - *a2) >> 5)
        {
          goto LABEL_23;
        }
      }
    }

    v9 = 1;
    goto LABEL_25;
  }

  v9 = 1;
LABEL_27:
  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1C3177F34(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::ESNetworkPlan::PrepareInputsAndOutputs(uint64_t a1, const void ***a2, const void ***a3)
{
  v99 = *MEMORY[0x1E69E9840];
  result = kaldi::quasar::ESNetworkPlan::NeedShapeChange(a1, a2, a3);
  if (!result)
  {
    goto LABEL_51;
  }

  v7 = *(a1 + 168);
  if (espresso_plan_get_phase() == 1)
  {
    v8 = *(a1 + 168);
    v9 = espresso_plan_build_clean();
    if (v9)
    {
      v87 = v9;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v95, "PrepareInputsAndOutputs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 706);
      v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v95, "Espresso failed to reset plan with ", 35);
      v89 = MEMORY[0x1C692A960](v88, v87);
      v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ": ", 2);
      last_error = espresso_get_last_error();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v90, last_error);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v95);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::clear(a1 + 176);
  v10 = *a2;
  v11 = a2[1];
  while (v10 != v11)
  {
    if (*(v10 + 23) < 0)
    {
      v12 = *v10;
    }

    v13 = *(a1 + 152);
    v14 = *(a1 + 160);
    v15 = espresso_network_declare_input();
    if (v15)
    {
      v47 = v15;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v95, "PrepareInputsAndOutputs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 715);
      v49 = *(v10 + 23);
      if (v49 >= 0)
      {
        v50 = v10;
      }

      else
      {
        v50 = *v10;
      }

      if (v49 >= 0)
      {
        v51 = *(v10 + 23);
      }

      else
      {
        v51 = v10[1];
      }

      v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, v50, v51);
      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "' with ", 7);
      v54 = MEMORY[0x1C692A960](v53, v47);
      v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, ": ", 2);
      v56 = espresso_get_last_error();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v55, v56);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v95);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((a1 + 176), v10);
    v10 += 4;
  }

  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::clear(a1 + 216);
  v16 = *a3;
  v17 = a3[1];
  while (v16 != v17)
  {
    if (*(v16 + 23) < 0)
    {
      v18 = *v16;
    }

    v19 = *(a1 + 152);
    v20 = *(a1 + 160);
    v21 = espresso_network_declare_output();
    if (v21)
    {
      v57 = v21;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v95, "PrepareInputsAndOutputs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 726);
      v59 = *(v16 + 23);
      if (v59 >= 0)
      {
        v60 = v16;
      }

      else
      {
        v60 = *v16;
      }

      if (v59 >= 0)
      {
        v61 = *(v16 + 23);
      }

      else
      {
        v61 = v16[1];
      }

      v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v60, v61);
      v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "' with ", 7);
      v64 = MEMORY[0x1C692A960](v63, v57);
      v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, ": ", 2);
      v66 = espresso_get_last_error();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v65, v66);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v95);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((a1 + 216), v16);
    v16 += 3;
  }

  if (*(a1 + 320))
  {
    v96 = 0;
    v97 = 0uLL;
    std::to_string(&v95, *((*a2)[3] + 13));
    v22 = std::string::insert(&v95, 0, "batch_config_");
  }

  else
  {
    if ((*(a1 + 321) & 1) == 0)
    {
LABEL_35:
      std::vector<char const*>::vector[abi:ne200100](&v98, (a2[1] - *a2) >> 5);
      v30 = (a2[1] - *a2) >> 5;
      LODWORD(v96) = -1;
      std::vector<int>::vector[abi:ne200100](&v95, v30);
      std::vector<std::vector<int>>::vector[abi:ne200100](v94, 5uLL);
      if (v95.__r_.__value_.__r.__words[0])
      {
        v95.__r_.__value_.__l.__size_ = v95.__r_.__value_.__r.__words[0];
        operator delete(v95.__r_.__value_.__l.__data_);
      }

      std::vector<int>::vector[abi:ne200100](__p, (a2[1] - *a2) >> 5);
      v31 = *a2;
      if (a2[1] != *a2)
      {
        v32 = 0;
        do
        {
          v33 = v31[4 * v32 + 3];
          v34 = espresso_buffer_unpack_tensor_shape();
          if (v34)
          {
            kaldi::KaldiErrorMessage::KaldiErrorMessage(&v95, "PrepareInputsAndOutputs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 763);
            v68 = &(*a2)[4 * v32];
            v69 = *(v68 + 23);
            if (v69 >= 0)
            {
              v70 = &(*a2)[4 * v32];
            }

            else
            {
              v70 = *v68;
            }

            if (v69 >= 0)
            {
              v71 = *(v68 + 23);
            }

            else
            {
              v71 = *(v68 + 8);
            }

            v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v70, v71);
            v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, "' with ", 7);
            v74 = MEMORY[0x1C692A960](v73, v34);
            v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, ": ", 2);
            v76 = espresso_get_last_error();
            v77 = strlen(v76);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, v76, v77);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v95);
          }

          *(__p[0] + v32) = 0;
          v35 = &(*a2)[4 * v32];
          if (*(v35 + 23) < 0)
          {
            v35 = *v35;
          }

          *(v98 + 8 * v32++) = v35;
          v31 = *a2;
        }

        while (v32 < (a2[1] - *a2) >> 5);
      }

      v36 = *(a1 + 152);
      v37 = *(a1 + 160);
      v38 = *v94[0];
      v39 = *(v94[0] + 24);
      v40 = *(v94[0] + 48);
      v41 = *(v94[0] + 72);
      v92 = *(v94[0] + 96);
      v42 = espresso_network_change_input_blob_shapes_seq_rank();
      if (v42)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&v95, "PrepareInputsAndOutputs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 777);
        v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v95, "Espresso failed to change input blob shapes with ", 49);
        v83 = MEMORY[0x1C692A960](v82, v42);
        v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, ": ", 2);
        v85 = espresso_get_last_error();
        v86 = strlen(v85);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, v85, v86);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v95);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v95.__r_.__value_.__r.__words[0] = v94;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v95);
      v43 = v98;
      if (!v98)
      {
        goto LABEL_50;
      }

      *(&v98 + 1) = v98;
      goto LABEL_48;
    }

    v96 = 0;
    v97 = 0uLL;
    std::to_string(&v95, *((*a2)[3] + 10));
    v22 = std::string::insert(&v95, 0, "width_config_");
  }

  v23 = v22->__r_.__value_.__r.__words[0];
  *&v98 = v22->__r_.__value_.__l.__size_;
  *(&v98 + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
  v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v97) < 0)
  {
    operator delete(v96);
  }

  v96 = v23;
  *&v97 = v98;
  *(&v97 + 7) = *(&v98 + 7);
  HIBYTE(v97) = v24;
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  v25 = *(a1 + 152);
  v26 = *(a1 + 160);
  if (espresso_network_select_configuration())
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v95, "PrepareInputsAndOutputs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 747);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v95, "configuration name not supported: ", 34);
      if (v97 >= 0)
      {
        v28 = &v96;
      }

      else
      {
        v28 = v96;
      }

      if (v97 >= 0)
      {
        v29 = HIBYTE(v97);
      }

      else
      {
        v29 = v97;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v95);
    }

    if (SHIBYTE(v97) < 0)
    {
      operator delete(v96);
    }

    goto LABEL_35;
  }

  if (SHIBYTE(v97) < 0)
  {
    v43 = v96;
LABEL_48:
    operator delete(v43);
  }

LABEL_50:
  v44 = *(a1 + 168);
  result = espresso_plan_build();
  v45 = result;
  if (result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v95, "PrepareInputsAndOutputs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 783);
    v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v95, "Espresso failed to build plan with ", 35);
    v79 = MEMORY[0x1C692A960](v78, v45);
    v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, ": ", 2);
    v81 = espresso_get_last_error();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v80, v81);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v95);
  }

LABEL_51:
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C31787B0(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1C31787B8);
  }

  __clang_call_terminate(a1);
}

void kaldi::quasar::ESNetworkPlan::RunClassic(void *a1, const void ***a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a1[21])
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(__C, "RunClassic", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 792);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__C, "plan_ != nullptr");
    goto LABEL_26;
  }

  kdebug_trace();
  kaldi::quasar::ESNetworkPlan::PrepareInputsAndOutputs(a1, a2, a3);
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    while (1)
    {
      v11 = *(v9[3] + 40);
      if (v11 == 131104)
      {
        if (*(v9 + 23) < 0)
        {
          v12 = *v9;
        }

        v13 = a1[19];
        v14 = a1[20];
        v15 = espresso_network_bind_buffer();
        vDSP_vflt32(*v9[3], 1, __C[0], 1, __C[19]);
      }

      else
      {
        if (v11 != 65568)
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(__C, "RunClassic", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 814);
          std::operator<<[abi:ne200100]<std::char_traits<char>>(__C, "kv.second->storage_type == ESPRESSO_STORAGE_TYPE_FLOAT32");
          goto LABEL_26;
        }

        if (*(v9 + 23) < 0)
        {
          v16 = *v9;
        }

        v17 = a1[19];
        v18 = a1[20];
        v15 = espresso_network_bind_buffer();
      }

      if (v15)
      {
        break;
      }

      v9 += 4;
      if (v9 == v10)
      {
        goto LABEL_13;
      }
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(__C, "RunClassic", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 822);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__C, "espresso_network_bind_buffer failed: ", 37);
    last_error = espresso_get_last_error();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v31, last_error);
LABEL_26:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__C);
  }

LABEL_13:
  v19 = a1[19];
  v20 = espresso_plan_execute_sync();
  if (v20)
  {
    v21 = v20;
    if (*a3 != *(a3 + 8))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(__C, "RunClassic", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 834);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__C, "espresso_plan_execute_sync() failed: ", 37);
      v36 = MEMORY[0x1C692A960](v35, v21);
      v39[0] = 32;
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v39, 1);
      v38 = espresso_get_last_error();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v37, v38);
      goto LABEL_26;
    }

    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__C, "RunClassic", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 831);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__C, "espresso_plan_execute_sync() failed: ", 37);
      v23 = MEMORY[0x1C692A960](v22, v21);
      v39[0] = 32;
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v39, 1);
      v25 = espresso_get_last_error();
      v26 = strlen(v25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v25, v26);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(__C);
    }
  }

  else
  {
    if (a5)
    {
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](a5);
      v27 = *a3;
      if (*a3 != *(a3 + 8))
      {
        if (*(v27 + 23) < 0)
        {
          v28 = *v27;
        }

        v29 = a1[19];
        v30 = a1[20];
        if (!espresso_network_bind_buffer())
        {
          kaldi::quasar::EspressoNDArray::EspressoNDArray(__C, v39, 1);
          operator new();
        }

        kaldi::KaldiErrorMessage::KaldiErrorMessage(__C, "RunClassic", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 848);
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__C, "espresso_network_bind_buffer failed: ", 37);
        v34 = espresso_get_last_error();
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v33, v34);
        goto LABEL_26;
      }
    }

    kdebug_trace();
  }
}

uint64_t kaldi::quasar::ESNetworkPlan::RunTraining(void *a1, const void ***a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a1[21])
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v40, "RunTraining", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 864);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v40, "plan_ != nullptr");
    goto LABEL_19;
  }

  kaldi::quasar::ESNetworkPlan::PrepareInputsAndOutputs(a1, a2, a3);
  v10 = *a2;
  v9 = a2[1];
  while (v10 != v9)
  {
    if (*(v10 + 23) < 0)
    {
      v11 = *v10;
    }

    v12 = a1[19];
    v13 = a1[20];
    v14 = v10[3];
    if (espresso_network_bind_buffer())
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v40, "RunTraining", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 877);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Failed to bind buffer for input=", 32);
      v25 = *(v10 + 23);
      if (v25 >= 0)
      {
        v26 = v10;
      }

      else
      {
        v26 = *v10;
      }

      if (v25 >= 0)
      {
        v27 = *(v10 + 23);
      }

      else
      {
        v27 = v10[1];
      }

      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ", error=", 8);
      last_error = espresso_get_last_error();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v29, last_error);
      goto LABEL_19;
    }

    v10 += 4;
  }

  v15 = a1[19];
  if (espresso_plan_execute_sync())
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v40, "RunTraining", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 883);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Failed to run checkpoint network, error=", 40);
    v34 = espresso_get_last_error();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v33, v34);
    goto LABEL_19;
  }

  v16 = a1[19];
  v17 = a1[20];
  get_main_function_name();
  if (espresso_network_set_function_name())
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v40, "RunTraining", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 888);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Failed to set function to main, error=", 38);
    v36 = espresso_get_last_error();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v35, v36);
    goto LABEL_19;
  }

  v18 = a1[19];
  result = espresso_plan_execute_sync();
  if (result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v40, "RunTraining", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 893);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Failed to run main network, error=", 34);
    v38 = espresso_get_last_error();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v37, v38);
    goto LABEL_19;
  }

  if (a5)
  {
    result = std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](a5);
    v20 = *a3;
    if (*a3 != *(a3 + 8))
    {
      if (*(v20 + 23) < 0)
      {
        v21 = *v20;
      }

      v22 = a1[19];
      v23 = a1[20];
      if (!espresso_network_bind_buffer())
      {
        kaldi::quasar::EspressoNDArray::EspressoNDArray(v40, v39, 1);
        operator new();
      }

      kaldi::KaldiErrorMessage::KaldiErrorMessage(v40, "RunTraining", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 906);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "espresso_network_bind_buffer failed: ", 37);
      v32 = espresso_get_last_error();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v31, v32);
LABEL_19:
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v40);
    }
  }

  return result;
}

void kaldi::quasar::ESNetworkPlan::Run(void *a1, __int128 **a2, __int128 **a3, uint64_t a4, void *a5)
{
  *v34 = 0;
  kaldi::quasar::ESNetworkPlan::SetNetworkFunctionName(a1, a3, &v34[1], v34);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  std::vector<std::pair<std::string,espresso_buffer_t const*>>::reserve(&v31, (a2[1] - *a2) >> 5);
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      v9 = *(v7 + 3);
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v30, "Run", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 926);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "es_data != nullptr", 18);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v30);
      }

      v12 = v11;
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v29, *v7, *(v7 + 1));
      }

      else
      {
        v13 = *v7;
        v29.__r_.__value_.__r.__words[2] = *(v7 + 2);
        *&v29.__r_.__value_.__l.__data_ = v13;
      }

      v14 = v12 + 32;
      v15 = v32;
      if (v32 >= v33)
      {
        v17 = (v32 - v31) >> 5;
        v18 = v17 + 1;
        if ((v17 + 1) >> 59)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v19 = v33 - v31;
        if ((v33 - v31) >> 4 > v18)
        {
          v18 = v19 >> 4;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFE0)
        {
          v20 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        v30[4] = &v31;
        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>>(&v31, v20);
        }

        v21 = 32 * v17;
        v22 = *&v29.__r_.__value_.__l.__data_;
        *(v21 + 16) = *(&v29.__r_.__value_.__l + 2);
        *v21 = v22;
        memset(&v29, 0, sizeof(v29));
        *(v21 + 24) = v14;
        v23 = (32 * v17 - (v32 - v31));
        memcpy(v23, v31, v32 - v31);
        v24 = v31;
        v25 = v33;
        v31 = v23;
        v32 = (32 * v17 + 32);
        v33 = 0;
        v30[2] = v24;
        v30[3] = v25;
        v30[0] = v24;
        v30[1] = v24;
        std::__split_buffer<std::pair<std::string,e5rt_execution_stream_operation **>>::~__split_buffer(v30);
        v32 = (32 * v17 + 32);
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v16 = v29.__r_.__value_.__r.__words[2];
        *v32 = *&v29.__r_.__value_.__l.__data_;
        *(v15 + 2) = v16;
        *(v15 + 3) = v14;
        v32 = v15 + 32;
      }

      v7 += 2;
    }

    while (v7 != v8);
  }

  if (v34[1])
  {
    kaldi::quasar::ESNetworkPlan::RunNitro(a1, &v31, a3, v6, a5);
  }

  else if (v34[0] == 1)
  {
    kaldi::quasar::ESNetworkPlan::RunTraining(a1, &v31, a3, v6, a5);
  }

  else
  {
    kaldi::quasar::ESNetworkPlan::RunClassic(a1, &v31, a3, v6, a5);
  }

  v30[0] = &v31;
  std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__destroy_vector::operator()[abi:ne200100](v30);
}

{
  v65 = 0;
  kaldi::quasar::ESNetworkPlan::SetNetworkFunctionName(a1, a3, &v65 + 1, &v65);
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  std::vector<std::pair<std::string,espresso_buffer_t const*>>::reserve(&v59, (a2[1] - *a2) >> 5);
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    do
    {
      v10 = *(v8 + 3);
      v11 = *v10;
      v12 = **v10;
      if (!v13)
      {
        v14 = (*(v11 + 22))(v10);
        if (v14 == 1)
        {
          memset(&v66, 0, sizeof(v66));
          (*(**(v8 + 3) + 56))(*(v8 + 3), &v66);
          (*(*a1 + 24))(v69, a1, &v66, 0);
          v13 = v69[0];
          v17 = v63;
          if (v63 >= v64)
          {
            v19 = v62;
            v20 = v63 - v62;
            v21 = (v63 - v62) >> 3;
            v22 = v21 + 1;
            if ((v21 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v23 = v64 - v62;
            if ((v64 - v62) >> 2 > v22)
            {
              v22 = v23 >> 2;
            }

            v24 = v23 >= 0x7FFFFFFFFFFFFFF8;
            v25 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v24)
            {
              v25 = v22;
            }

            *(&v57 + 1) = &v62;
            if (v25)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(&v62, v25);
            }

            v69[0] = 0;
            *(8 * v21) = v13;
            v18 = 8 * v21 + 8;
            memcpy(0, v19, v20);
            v32 = v62;
            v33 = v64;
            v62 = 0;
            v63 = v18;
            v64 = 0;
            *(&v56 + 1) = v32;
            *&v57 = v33;
            v55 = v32;
            *&v56 = v32;
            std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~__split_buffer(&v55);
          }

          else
          {
            v69[0] = 0;
            *v63 = v13;
            v18 = (v17 + 1);
          }

          v63 = v18;
          v34 = v69[0];
          v69[0] = 0;
          if (v34)
          {
            (*(*v34 + 8))(v34);
          }

          if (v66.__r_.__value_.__r.__words[0])
          {
            v66.__r_.__value_.__l.__size_ = v66.__r_.__value_.__r.__words[0];
            operator delete(v66.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          if (v14 != 2)
          {
            kaldi::KaldiErrorMessage::KaldiErrorMessage(&v55, "Run", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 972);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Unsupported input dimensions", 28);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v55);
          }

          v57 = 0u;
          v56 = 0u;
          v55 = &unk_1F42BFED8;
          v58 = 0;
          (*(**(v8 + 3) + 32))(*(v8 + 3), &v55);
          (*(*a1 + 32))(v69, a1, &v55);
          v13 = v69[0];
          v15 = v63;
          if (v63 >= v64)
          {
            v26 = v62;
            v27 = v63 - v62;
            v28 = (v63 - v62) >> 3;
            v29 = v28 + 1;
            if ((v28 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v30 = v64 - v62;
            if ((v64 - v62) >> 2 > v29)
            {
              v29 = v30 >> 2;
            }

            v24 = v30 >= 0x7FFFFFFFFFFFFFF8;
            v31 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v24)
            {
              v31 = v29;
            }

            v68 = &v62;
            if (v31)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(&v62, v31);
            }

            v35 = v69[0];
            v69[0] = 0;
            *(8 * v28) = v35;
            v16 = 8 * v28 + 8;
            memcpy(0, v26, v27);
            v36 = v62;
            v37 = v64;
            v62 = 0;
            v63 = v16;
            v64 = 0;
            v66.__r_.__value_.__r.__words[2] = v36;
            v67 = v37;
            v66.__r_.__value_.__r.__words[0] = v36;
            v66.__r_.__value_.__l.__size_ = v36;
            std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~__split_buffer(&v66);
          }

          else
          {
            v69[0] = 0;
            *v63 = v13;
            v16 = (v15 + 1);
          }

          v63 = v16;
          v38 = v69[0];
          v69[0] = 0;
          if (v38)
          {
            (*(*v38 + 8))(v38);
          }

          kaldi::CuMatrix<float>::~CuMatrix(&v55);
        }
      }

      if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v66, *v8, *(v8 + 1));
      }

      else
      {
        v39 = *v8;
        v66.__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&v66.__r_.__value_.__l.__data_ = v39;
      }

      v40 = v13 + 32;
      v41 = v60;
      if (v60 >= v61)
      {
        v43 = (v60 - v59) >> 5;
        v44 = v43 + 1;
        if ((v43 + 1) >> 59)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v45 = v61 - v59;
        if ((v61 - v59) >> 4 > v44)
        {
          v44 = v45 >> 4;
        }

        if (v45 >= 0x7FFFFFFFFFFFFFE0)
        {
          v46 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v46 = v44;
        }

        *(&v57 + 1) = &v59;
        if (v46)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>>(&v59, v46);
        }

        v47 = 32 * v43;
        v48 = *&v66.__r_.__value_.__l.__data_;
        *(v47 + 16) = *(&v66.__r_.__value_.__l + 2);
        *v47 = v48;
        memset(&v66, 0, sizeof(v66));
        *(v47 + 24) = v40;
        v49 = 32 * v43 + 32;
        v50 = (v47 - (v60 - v59));
        memcpy(v50, v59, v60 - v59);
        v51 = v59;
        v52 = v61;
        v59 = v50;
        v60 = v49;
        v61 = 0;
        *(&v56 + 1) = v51;
        *&v57 = v52;
        v55 = v51;
        *&v56 = v51;
        std::__split_buffer<std::pair<std::string,e5rt_execution_stream_operation **>>::~__split_buffer(&v55);
        v60 = v49;
        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v42 = v66.__r_.__value_.__r.__words[2];
        *v60 = *&v66.__r_.__value_.__l.__data_;
        *(v41 + 2) = v42;
        *(v41 + 3) = v40;
        v60 = v41 + 32;
      }

      v8 += 2;
    }

    while (v8 != v9);
  }

  if ((v65 & 0x100) != 0)
  {
    kaldi::quasar::ESNetworkPlan::RunNitro(a1, &v59, a3, v7, a5);
  }

  else if (v65 == 1)
  {
    kaldi::quasar::ESNetworkPlan::RunTraining(a1, &v59, a3, v7, a5);
  }

  else
  {
    kaldi::quasar::ESNetworkPlan::RunClassic(a1, &v59, a3, v7, a5);
  }

  v55 = &v59;
  std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__destroy_vector::operator()[abi:ne200100](&v55);
  v55 = &v62;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v55);
}

void sub_1C3179540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v20 = (v18 - 120);
  std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__destroy_vector::operator()[abi:ne200100](&v20);
  _Unwind_Resume(a1);
}

void *std::vector<std::pair<std::string,espresso_buffer_t const*>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1C3179C38(_Unwind_Exception *a1)
{
  v3 = *(v1 - 104);
  *(v1 - 104) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 - 144);
  if (v4)
  {
    *(v1 - 136) = v4;
    operator delete(v4);
  }

  *(v1 - 104) = v1 - 200;
  std::vector<std::pair<std::string,e5rt_execution_stream_operation **>>::__destroy_vector::operator()[abi:ne200100]((v1 - 104));
  *(v1 - 200) = v1 - 176;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100]((v1 - 200));
  _Unwind_Resume(a1);
}

void kaldi::quasar::ESTensorData::Copy(kaldi::quasar::ESTensorData *this)
{
  if (*(this + 25))
  {
    v2 = *(this + 17);
    v3 = *(this + 15) * *(this + 14) * *(this + 16);
    v23 = 0u;
    v24 = 0u;
    v4 = v3 * v2;
    *__dst = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v25 = 0;
    LODWORD(v24) = 65568;
    kaldi::quasar::EspressoNDArray::InitBufferMemory(__dst, v3 * v2);
    v5 = *(this + 9);
    v6 = *(this + 11);
    v22 = *(this + 10);
    v23 = v6;
    v7 = *(this + 5);
    v8 = *(this + 7);
    v9 = *(this + 8);
    v18 = *(this + 6);
    v19 = v8;
    v20 = v9;
    v21 = v5;
    v10 = *(this + 2);
    v11 = *(this + 3);
    v12 = *(this + 4);
    __dst[1] = *(this + 5);
    v15 = v11;
    v16 = v12;
    v17 = v7;
    v13 = *(this + 25);
    *&v24 = *(this + 24);
    *(&v24 + 1) = v13;
    memcpy(__dst[0], *(this + 4), 4 * v4);
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    *__dst = 0u;
    LODWORD(v24) = 65568;
  }

  operator new();
}

void sub_1C3179EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  if (a31)
  {
    free(a31);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::ESTensorData::CopyToMatrix(uint64_t a1, uint64_t a2)
{
  kaldi::quasar::EspressoNDArray::ToMatrix<kaldi::Matrix<float>>((a1 + 32), a2);
}

{
  kaldi::quasar::EspressoNDArray::ToMatrix<kaldi::CuMatrix<float>>((a1 + 32), a2);
}

void *kaldi::quasar::ESTensorData::CopyFromImpl(kaldi::quasar::ESTensorData *this, char **lpsrc)
{
  v3 = **lpsrc;
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = (v4 + 32);

  return kaldi::quasar::EspressoNDArray::CopyTo(v5, (this + 32));
}

void *kaldi::quasar::ESTensorData::FlatRangeCopy(kaldi::quasar::ESTensorData *this, const kaldi::quasar::ComputeEngineBufferItf *a2, int a3, int a4, int a5)
{
  v9 = (*(*a2 + 152))(a2);
  if (*(this + 48) != 65568)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "GetWritableDataFloat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 176);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "t_.buffer.storage_type == ESPRESSO_STORAGE_TYPE_FLOAT32");
    goto LABEL_8;
  }

  if (a4 - a3 < 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "FlatRangeCopy", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 90);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "srcend - srcstart >= 0");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  v10 = (v9 + 4 * a3);
  v11 = (*(this + 4) + 4 * a5);

  return memcpy(v11, v10, 4 * (a4 - a3));
}

float kaldi::quasar::ESTensorData::FlatRangeCopy(kaldi::quasar::ESTensorData *this, int *a2, unsigned int a3, int a4)
{
  if ((a3 & 0x80000000) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v11, "FlatRangeCopy", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 95);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "length >= 0");
    goto LABEL_12;
  }

  v4 = *(this + 48);
  if (v4 != 65568)
  {
    if (v4 == 131104)
    {
      v5 = (*(this + 4) + 4 * a4);
      v6 = 4 * a3;

      memcpy(v5, a2, v6);
      return result;
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v11, "FlatRangeCopy", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 106);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "unsupported storage type.");
LABEL_12:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  if (a3)
  {
    v8 = *(this + 4);
    v9 = a3;
    do
    {
      v10 = *a2++;
      result = v10;
      *v8++ = v10;
      --v9;
    }

    while (v9);
  }

  return result;
}

_DWORD *kaldi::quasar::ESTensorData::FlatRangeCopy(_DWORD *this, float *a2, unsigned int a3, int a4)
{
  if ((a3 & 0x80000000) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "FlatRangeCopy", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 111);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "length >= 0");
    goto LABEL_12;
  }

  v4 = this[48];
  if (v4 != 65568)
  {
    if (v4 == 131104)
    {
      if (a3)
      {
        v5 = *(this + 4);
        v6 = a3;
        do
        {
          v7 = *a2++;
          *v5++ = v7;
          --v6;
        }

        while (v6);
      }

      return this;
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "FlatRangeCopy", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 122);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "unsupported storage type.");
LABEL_12:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  v8 = (*(this + 4) + 4 * a4);
  v9 = 4 * a3;

  return memcpy(v8, a2, v9);
}

float kaldi::quasar::ESTensorData::AssignScalar(kaldi::quasar::ESTensorData *this, int a2, int a3)
{
  v3 = *(this + 48);
  if (v3 == 65568)
  {
    result = a2;
    *(*(this + 4) + 4 * a3) = a2;
  }

  else
  {
    if (v3 != 131104)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "AssignScalar", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 139);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "unsupported storage type.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
    }

    *(*(this + 4) + 4 * a3) = a2;
  }

  return result;
}

uint64_t kaldi::quasar::ESTensorData::AssignScalar(uint64_t this, float a2, int a3)
{
  v3 = *(this + 192);
  if (v3 == 131104)
  {
    *(*(this + 32) + 4 * a3) = a2;
  }

  else
  {
    if (v3 != 65568)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "AssignScalar", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 152);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "unsupported storage type.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
    }

    *(*(this + 32) + 4 * a3) = a2;
  }

  return this;
}

float kaldi::quasar::ESTensorData::GetFloatScalar(kaldi::quasar::ESTensorData *this, int a2)
{
  if (*(this + 48) != 65568)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v3, "GetDataFloat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 181);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "t_.buffer.storage_type == ESPRESSO_STORAGE_TYPE_FLOAT32");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  return *(*(this + 4) + 4 * a2);
}

uint64_t kaldi::quasar::ESTensorData::GetWritableDataFloat(kaldi::quasar::ESTensorData *this)
{
  if (*(this + 48) != 65568)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "GetWritableDataFloat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 176);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "t_.buffer.storage_type == ESPRESSO_STORAGE_TYPE_FLOAT32");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return *(this + 4);
}

uint64_t kaldi::quasar::ESTensorData::GetDataInt32(kaldi::quasar::ESTensorData *this)
{
  if (*(this + 48) != 131104)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "GetDataInt32", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 191);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "t_.buffer.storage_type == ESPRESSO_STORAGE_TYPE_INT32");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return *(this + 4);
}

uint64_t kaldi::quasar::ESTensorData::GetDimSize(kaldi::quasar::ESTensorData *this, int a2)
{
  v5[10] = *MEMORY[0x1E69E9840];
  espresso_buffer_unpack_tensor_shape();
  result = v5[a2];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void kaldi::quasar::ESTensorData::Reshape()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "Reshape", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/espresso-bridge/es-model.cc", 127);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented TODO");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

kaldi::quasar::ESNetworkConfig *kaldi::quasar::ESNetworkConfig::ESNetworkConfig(kaldi::quasar::ESNetworkConfig *this, const kaldi::quasar::ESNetworkConfig *a2)
{
  *this = &unk_1F42CDA38;
  *(this + 8) = *(a2 + 8);
  v4 = *(a2 + 3);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 16) = *(a2 + 16);
  *this = &unk_1F42CD808;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v5 = *(a2 + 40);
    *(this + 7) = *(a2 + 7);
    *(this + 40) = v5;
  }

  std::map<std::string,std::string>::map[abi:ne200100](this + 8, a2 + 8);
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v6 = *(a2 + 88);
    *(this + 13) = *(a2 + 13);
    *(this + 88) = v6;
  }

  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external((this + 112), *(a2 + 14), *(a2 + 15));
  }

  else
  {
    v7 = *(a2 + 7);
    *(this + 16) = *(a2 + 16);
    *(this + 7) = v7;
  }

  return this;
}

void sub_1C317A7E0(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v1 + 64, *(v1 + 72));
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  kaldi::quasar::ComputeEngineConfigItf::~ComputeEngineConfigItf(v1);
  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoNDArray::ToMatrix<kaldi::Matrix<float>>(uint64_t *a1, uint64_t a2)
{
  v28[9] = *MEMORY[0x1E69E9840];
  v26 = 0;
  espresso_buffer_unpack_tensor_shape();
  v4 = a1[21];
  if (v4 >= 3)
  {
    v5 = 0;
    while (*&v27[8 * v5] == 1)
    {
      if (v26 - 1 == ++v5)
      {
        v5 = v26 - 1;
        break;
      }
    }

    if (v26 <= v5 + 1)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = v26;
    }

    v7 = v6 - 1;
    v8 = v5;
    while (1)
    {
      v9 = v8 + 1;
      if (v8 + 1 >= v26)
      {
        break;
      }

      v10 = v28[v8++];
      if (v10 != 1)
      {
        v7 = v9 - 1;
        v6 = v9;
        break;
      }
    }

    if (v7 + 2 < v26)
    {
      v11 = v26 - v7 - 2;
      v12 = &v28[v7 + 1];
      while (1)
      {
        v13 = *v12++;
        if (v13 != 1)
        {
          break;
        }

        if (!--v11)
        {
          goto LABEL_17;
        }
      }

      if (v9 < v26)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "ToMatrix", "../engine/common/libquasar/libkaldi/src/espresso-bridge/espresso-ndarray.h", 253);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Tensor rank is greater than 2: ", 31);
        MEMORY[0x1C692A980](v24, a1[21]);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
      }

      goto LABEL_25;
    }

LABEL_17:
    if (v9 >= v26)
    {
LABEL_25:
      v16 = &v27[8 * v5];
      goto LABEL_26;
    }

    v14 = *&v27[8 * v6];
    v15 = &v27[8 * v5];
LABEL_22:
    v17 = *v15;
    kaldi::Matrix<float>::Resize(a2, *v15, v14, 1, 0);
    if (!v17)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v15 = v27;
    v14 = v28[0];
    goto LABEL_22;
  }

  v16 = v27;
LABEL_26:
  v14 = *v16;
  kaldi::Matrix<float>::Resize(a2, 1, *v16, 1, 0);
  v17 = 1;
LABEL_27:
  v18 = 0;
  v19 = *a1;
  do
  {
    if (v14)
    {
      v20 = 0;
      v21 = 0;
      v22 = *a2 + 4 * *(a2 + 16) * v18;
      do
      {
        *(v22 + 4 * v21) = *(v19 + 4 * v21);
        ++v21;
        v20 -= 4;
      }

      while (v14 != v21);
      v19 -= v20;
    }

    ++v18;
  }

  while (v18 != v17);
LABEL_33:
  v23 = *MEMORY[0x1E69E9840];
}

void sub_1C317AA80(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoNDArray::ToMatrix<kaldi::CuMatrix<float>>(uint64_t *a1, uint64_t a2)
{
  v28[9] = *MEMORY[0x1E69E9840];
  v26 = 0;
  espresso_buffer_unpack_tensor_shape();
  v4 = a1[21];
  if (v4 >= 3)
  {
    v5 = 0;
    while (*&v27[8 * v5] == 1)
    {
      if (v26 - 1 == ++v5)
      {
        v5 = v26 - 1;
        break;
      }
    }

    if (v26 <= v5 + 1)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = v26;
    }

    v7 = v6 - 1;
    v8 = v5;
    while (1)
    {
      v9 = v8 + 1;
      if (v8 + 1 >= v26)
      {
        break;
      }

      v10 = v28[v8++];
      if (v10 != 1)
      {
        v7 = v9 - 1;
        v6 = v9;
        break;
      }
    }

    if (v7 + 2 < v26)
    {
      v11 = v26 - v7 - 2;
      v12 = &v28[v7 + 1];
      while (1)
      {
        v13 = *v12++;
        if (v13 != 1)
        {
          break;
        }

        if (!--v11)
        {
          goto LABEL_17;
        }
      }

      if (v9 < v26)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "ToMatrix", "../engine/common/libquasar/libkaldi/src/espresso-bridge/espresso-ndarray.h", 253);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Tensor rank is greater than 2: ", 31);
        MEMORY[0x1C692A980](v24, a1[21]);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
      }

      goto LABEL_25;
    }

LABEL_17:
    if (v9 >= v26)
    {
LABEL_25:
      v16 = &v27[8 * v5];
      goto LABEL_26;
    }

    v14 = *&v27[8 * v6];
    v15 = &v27[8 * v5];
LABEL_22:
    v17 = *v15;
    kaldi::CuMatrix<float>::Resize(a2, *v15, v14, 1u, 0);
    if (!v17)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v15 = v27;
    v14 = v28[0];
    goto LABEL_22;
  }

  v16 = v27;
LABEL_26:
  v14 = *v16;
  kaldi::CuMatrix<float>::Resize(a2, 1, *v16, 1u, 0);
  v17 = 1;
LABEL_27:
  v18 = 0;
  v19 = *a1;
  do
  {
    if (v14)
    {
      v20 = 0;
      v21 = 0;
      v22 = *(a2 + 8) + 4 * *(a2 + 24) * v18;
      do
      {
        *(v22 + 4 * v21) = *(v19 + 4 * v21);
        ++v21;
        v20 -= 4;
      }

      while (v14 != v21);
      v19 -= v20;
    }

    ++v18;
  }

  while (v18 != v17);
LABEL_33:
  v23 = *MEMORY[0x1E69E9840];
}

void sub_1C317ACD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

float kaldi::quasar::EspressoNDArray::ToVector<kaldi::CuVector<float>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = a1[11] * a1[10] * a1[12] * a1[13];
  v7 = *a1;
  kaldi::CuVector<float>::Resize(a2, v6, 1u, a4, a5);
  if (v6)
  {
    v9 = 0;
    v10 = *(a2 + 8);
    do
    {
      result = *(v7 + 4 * v9);
      *(v10 + 4 * v9++) = result;
    }

    while (v6 != v9);
  }

  return result;
}

char *std::vector<int>::__assign_with_size[abi:ne200100]<float *,float *>(char **a1, float *a2, float *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 2)
  {
    while (v5 != a3)
    {
      v17 = *v5++;
      *result = v17;
      result += 4;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != result)
    {
      do
      {
        v14 = *v5++;
        *result = v14;
        result += 4;
        v12 -= 4;
      }

      while (v12);
    }

    if (v13 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v11 = v16;
        v11 += 4;
        v15 += 4;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void *kaldi::quasar::EspressoNDArray::CopyTo(kaldi::quasar::EspressoNDArray *this, kaldi::quasar::EspressoNDArray *a2)
{
  v7[54] = *MEMORY[0x1E69E9840];
  v2 = *(this + 11) * *(this + 10) * *(this + 12) * *(this + 13);
  if (v2 != *(a2 + 11) * *(a2 + 10) * *(a2 + 12) * *(a2 + 13))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v7, "CopyTo", "../engine/common/libquasar/libkaldi/src/espresso-bridge/espresso-ndarray.h", 95);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "total_elements == dst.Volume()");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  espresso_buffer_unpack_tensor_shape();
  espresso_buffer_unpack_tensor_shape();
  result = memmove(*a2, *this, 4 * v2);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C317B034(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<std::string>::unordered_set<std::__wrap_iter<std::string*>>(uint64_t a1, const void **a2, const void **a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, v5);
      v5 += 3;
    }

    while (v5 != a3);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

uint64_t kaldi::quasar::EspressoNDArray::FromStdVector<std::vector<int>>(kaldi::quasar::EspressoNDArray *a1, int **a2, char a3)
{
  v12 = *MEMORY[0x1E69E9840];
  kaldi::quasar::EspressoNDArray::InitBufferMemory(a1, a2[1] - *a2);
  v6 = *a2;
  if (a2[1] != *a2)
  {
    v7 = *a1;
    if ((a2[1] - *a2) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = a2[1] - *a2;
    }

    do
    {
      v9 = *v6++;
      *v7++ = v9;
      --v8;
    }

    while (v8);
  }

  if (a3)
  {
    *(a1 + 21) = 2;
  }

  else
  {
    *(a1 + 21) = 1;
  }

  result = espresso_buffer_pack_tensor_shape();
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t kaldi::quasar::EspressoNDArray::FromStdVector<std::vector<float>>(kaldi::quasar::EspressoNDArray *a1, int **a2, char a3)
{
  v12 = *MEMORY[0x1E69E9840];
  kaldi::quasar::EspressoNDArray::InitBufferMemory(a1, a2[1] - *a2);
  v6 = *a2;
  if (a2[1] != *a2)
  {
    v7 = *a1;
    if ((a2[1] - *a2) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = a2[1] - *a2;
    }

    do
    {
      v9 = *v6++;
      *v7++ = v9;
      --v8;
    }

    while (v8);
  }

  if (a3)
  {
    *(a1 + 21) = 2;
  }

  else
  {
    *(a1 + 21) = 1;
  }

  result = espresso_buffer_pack_tensor_shape();
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t kaldi::quasar::EspressoNDArray::FromMatrix<kaldi::CuMatrixBase<float>>(kaldi::quasar::EspressoNDArray *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  kaldi::quasar::EspressoNDArray::InitBufferMemory(a1, v4 * v5);
  *(a1 + 21) = 2;
  result = espresso_buffer_pack_tensor_shape();
  if (v5 >= 1)
  {
    v8 = 0;
    v9 = *a1;
    v10 = 4 * v4;
    do
    {
      if (*(a2 + 20) <= v8)
      {
        kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x225, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v7);
      }

      v12 = *(a2 + 16);
      v13 = *(a2 + 32);
      result = memcpy(v9, (*(a2 + 8) + 4 * (*(a2 + 24) * v8++)), v10);
      v9 += v10;
    }

    while (v5 != v8);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t kaldi::quasar::EspressoNDArray::FromMatrix<kaldi::MatrixBase<float>>(kaldi::quasar::EspressoNDArray *a1, uint64_t a2)
{
  __src[5] = *MEMORY[0x1E69E9840];
  v4 = kaldi::MatrixBase<float>::NumRows(a2);
  v5 = kaldi::MatrixBase<float>::NumCols(a2);
  kaldi::quasar::EspressoNDArray::InitBufferMemory(a1, v5 * v4);
  *(a1 + 21) = 2;
  v6 = v5;
  __src[3] = v4;
  __src[4] = v5;
  result = espresso_buffer_pack_tensor_shape();
  if (v4 >= 1)
  {
    v9 = 0;
    v10 = *a1;
    v11 = 4 * v6;
    do
    {
      kaldi::MatrixBase<float>::Row(a2, v9, v8, __src);
      result = memcpy(v10, __src[0], v11);
      ++v9;
      v10 += v11;
    }

    while (v4 != v9);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void *kaldi::quasar::ESTensorData::ESTensorData(void *a1, uint64_t a2)
{
  v4 = kaldi::quasar::ComputeEngineBufferItf::ComputeEngineBufferItf(a1);
  *v4 = &unk_1F42CD730;
  v4[25] = 0;
  v4[26] = 0;
  v5 = *a2;
  v6 = *(a2 + 8) - *a2;
  if (v6)
  {
    v7 = v6 >> 3;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = 1;
    do
    {
      v9 = *v5++;
      v8 *= v9;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = 1;
  }

  kaldi::quasar::EspressoNDArray::InitBufferMemory((a1 + 4), v8);
  v10 = *(a2 + 8) - *a2;
  espresso_buffer_pack_tensor_shape();
  a1[25] = (*(a2 + 8) - *a2) >> 3;
  return a1;
}

void sub_1C317B604(_Unwind_Exception *a1)
{
  v3 = *(v1 + 208);
  *(v1 + 208) = 0;
  if (v3)
  {
    free(v3);
  }

  kaldi::quasar::ComputeEngineBufferItf::~ComputeEngineBufferItf(v1);
  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:ne200100]<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a2, v3 + 2);
    if (!v5)
    {
      break;
    }

    v6 = *(v3 + 39);
    if (v6 >= 0)
    {
      v7 = *(v3 + 39);
    }

    else
    {
      v7 = v3[3];
    }

    v8 = *(v5 + 39);
    v9 = v8;
    if (v8 < 0)
    {
      v8 = v5[3];
    }

    if (v7 != v8)
    {
      break;
    }

    v10 = v6 >= 0 ? (v3 + 2) : v3[2];
    v13 = v5[2];
    v11 = v5 + 2;
    v12 = v13;
    v14 = v9 >= 0 ? v11 : v12;
  }

  while (!memcmp(v10, v14, v7));
  return v4;
}

uint64_t *kaldi::quasar::EspressoNDArray::EspressoNDArray(uint64_t *a1, __int128 *a2, int a3)
{
  v4 = 0;
  v22 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = a2[2];
  *(a1 + 1) = a2[1];
  *(a1 + 2) = v6;
  *a1 = v5;
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[6];
  *(a1 + 5) = a2[5];
  *(a1 + 6) = v9;
  *(a1 + 3) = v7;
  *(a1 + 4) = v8;
  v10 = a2[7];
  v11 = a2[8];
  v12 = a2[9];
  a1[20] = *(a2 + 20);
  *(a1 + 8) = v11;
  *(a1 + 9) = v12;
  *(a1 + 7) = v10;
  a1[21] = 0;
  if (a3)
  {
    v4 = *a1;
  }

  a1[22] = v4;
  v13 = *(a1 + 40);
  if (v13 != 65568)
  {
    if (v13)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::to_string(&v19, *(a1 + 40));
      v17 = std::string::insert(&v19, 0, "Unsupported storage type ");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v21 = v17->__r_.__value_.__r.__words[2];
      v20 = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x1C692A570](exception, &v20);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    *(a1 + 40) = 65568;
  }

  espresso_buffer_unpack_tensor_shape();
  v14 = *MEMORY[0x1E69E9840];
  return a1;
}