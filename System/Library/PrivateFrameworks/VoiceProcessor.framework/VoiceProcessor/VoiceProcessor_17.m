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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *a2;
  if (v6 > 0x5B)
  {
    if (v6 == 92)
    {
      if (a2 + 1 == a3)
      {
        end = this->__end_;
        marked_count = this->__marked_count_;
        goto LABEL_38;
      }

      v11 = a2[1];
      if (v11 == 66)
      {
        v12 = 1;
      }

      else
      {
        if (v11 != 98)
        {
          goto LABEL_29;
        }

        v12 = 0;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v12);
      return a2 + 2;
    }

    if (v6 != 94)
    {
      goto LABEL_30;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    return a2 + 1;
  }

  if (v6 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return a2 + 1;
  }

  if (v6 != 40)
  {
    goto LABEL_30;
  }

  if (a2 + 1 == a3)
  {
    end = this->__end_;
    marked_count = this->__marked_count_;
LABEL_43:
    if (a2 + 1 == a3)
    {
      goto LABEL_99;
    }

    if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
    {
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 3, a3);
      if (v20 == a3)
      {
        goto LABEL_99;
      }

      v21 = v20;
      if (*v20 != 41)
      {
        goto LABEL_99;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      v22 = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 1, a3);
      if (v23 == a3 || (v21 = v23, *v23 != 41))
      {
LABEL_99:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v22);
    }

    --*p_open_count;
    v24 = v21 + 1;
LABEL_56:
    result = a2;
    if (v24 == a2)
    {
      return result;
    }

    goto LABEL_96;
  }

  if (a2[1] != 63 || a2 + 2 == a3)
  {
    goto LABEL_29;
  }

  v7 = a2[2];
  if (v7 == 33)
  {
    std::regex_traits<char>::regex_traits(&v38.__traits_);
    memset(&v38.__flags_, 0, 40);
    v38.__flags_ = this->__flags_;
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v38, a2 + 3, a3);
    v15 = v38.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v38, 1, this->__marked_count_);
    this->__marked_count_ += v15;
    if (v8 == a3 || *v8 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

LABEL_28:
    std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v38.__traits_.__loc_);
    result = v8 + 1;
    if (v8 + 1 != a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v7 == 61)
  {
    std::regex_traits<char>::regex_traits(&v38.__traits_);
    memset(&v38.__flags_, 0, 40);
    v38.__flags_ = this->__flags_;
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v38, a2 + 3, a3);
    v9 = v38.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v38, 0, this->__marked_count_);
    this->__marked_count_ += v9;
    if (v8 == a3 || *v8 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_28;
  }

LABEL_29:
  v6 = *a2;
LABEL_30:
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (v6 > 62)
  {
    v16 = (v6 - 92);
    if (v16 <= 0x21)
    {
      if (((1 << (v6 - 92)) & 0x300000006) != 0)
      {
        return a2;
      }

      if (v6 == 92)
      {
LABEL_38:
        v17 = a2 + 1;
        if (a2 + 1 == a3)
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
        }

        v18 = *v17;
        if (v18 == 48)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(this, 0);
LABEL_95:
          v24 = a2 + 2;
          goto LABEL_96;
        }

        if ((v18 - 49) <= 8)
        {
          v25 = (v18 - 48);
          v24 = a2 + 2;
          if (a2 + 2 != a3)
          {
            while (1)
            {
              v26 = *v24;
              if ((v26 - 48) > 9)
              {
                break;
              }

              if (v25 >= 0x19999999)
              {
                goto LABEL_100;
              }

              v25 = v26 + 10 * v25 - 48;
              if (++v24 == a3)
              {
                v24 = a3;
                break;
              }
            }

            if (!v25)
            {
              goto LABEL_100;
            }
          }

          if (v25 > marked_count)
          {
LABEL_100:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
          }

          std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, v25);
          if (v24 != v17)
          {
            goto LABEL_56;
          }

          v18 = *v17;
        }

        if (v18 > 99)
        {
          if (v18 == 119)
          {
            v27 = this;
            v28 = 0;
            goto LABEL_87;
          }

          if (v18 == 115)
          {
            v35 = this;
            v36 = 0;
LABEL_93:
            started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v35, v36);
            v32 = started->__mask_ | 0x4000;
            goto LABEL_94;
          }

          if (v18 != 100)
          {
            goto LABEL_88;
          }

          v29 = this;
          v30 = 0;
        }

        else
        {
          if (v18 != 68)
          {
            if (v18 != 83)
            {
              if (v18 == 87)
              {
                v27 = this;
                v28 = 1;
LABEL_87:
                v33 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v27, v28);
                v33->__mask_ |= 0x500u;
                std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v33, 95);
                goto LABEL_95;
              }

LABEL_88:
              v34 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(this, a2 + 1, a3, 0);
              if (v34 == v17)
              {
                v24 = a2;
              }

              else
              {
                v24 = v34;
              }

              goto LABEL_56;
            }

            v35 = this;
            v36 = 1;
            goto LABEL_93;
          }

          v29 = this;
          v30 = 1;
        }

        started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v29, v30);
        v32 = started->__mask_ | 0x400;
LABEL_94:
        started->__mask_ = v32;
        goto LABEL_95;
      }

      if (v16 == 31)
      {
        goto LABEL_101;
      }
    }

    if (v6 == 91)
    {
      v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
      goto LABEL_56;
    }

    if (v6 == 63)
    {
      goto LABEL_101;
    }

    goto LABEL_83;
  }

  if (v6 > 40)
  {
    if (v6 != 41)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if ((v6 - 42) < 2)
      {
LABEL_101:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }

      goto LABEL_83;
    }

    return a2;
  }

  if (v6 == 36)
  {
    return a2;
  }

  if (v6 == 40)
  {
    goto LABEL_43;
  }

LABEL_83:
  std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v6);
  v24 = a2 + 1;
LABEL_96:
  v37 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(this, v24, a3, end, marked_count + 1, v37);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743CB910](exception, 11);
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2743CBFA0);
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
    v16 = v12 + 24 * (v11 + v13 - 2);
    *v16 = v15->std::pair<const char *, const char *>;
    *(v16 + 16) = v15->matched;
    v14 = v13;
  }

  while (v10 > v13++);
LABEL_11:

  operator delete(begin);
}

void sub_2725F025C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2881B4C20;
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

  JUMPOUT(0x2743CBFA0);
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2881B4C20;
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

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2881B4BF0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2743CBFA0);
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2881B4BF0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
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

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x2743CBFA0);
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

uint64_t vp::vx::Uplink_Configuration_Manager::calculate_output_max_block_size(vp::vx::Uplink_Configuration_Manager *this, double a2, unsigned int a3, double a4, unsigned int a5, int a6, double a7, unsigned int a8, int a9)
{
  v9 = 0;
  if (a2 != 0.0 && a4 != 0.0 && a7 != 0.0)
  {
    LODWORD(v9) = vcvtpd_u64_f64(a3 / a2 * a4);
    if (a6)
    {
      v9 = v9 + a5 - std::__gcd<unsigned int>(v9, a5);
    }

    LODWORD(v9) = vcvtpd_u64_f64(v9 / a4 * a7);
    if (a9)
    {
      return v9 + a8 - std::__gcd<unsigned int>(v9, a8);
    }
  }

  return v9;
}

uint64_t std::__gcd<unsigned int>(uint64_t result, unsigned int a2)
{
  LODWORD(v2) = result;
  v3 = result > a2;
  if (result >= a2)
  {
    result = a2;
  }

  else
  {
    result = result;
  }

  if (v3)
  {
    v2 = v2;
  }

  else
  {
    v2 = a2;
  }

  if (!result)
  {
    return v2;
  }

  v4 = v2 % result;
  if (v4)
  {
    v5 = v4 >> __clz(__rbit32(v4));
    v6 = result;
    do
    {
      v7 = v6 >> __clz(__rbit32(v6));
      v6 = v7 - v5;
      if (v5 > v7)
      {
        v6 = v5 - v7;
      }

      if (v5 >= v7)
      {
        v5 = v7;
      }
    }

    while (v6);
    return v5 << __clz(__rbit32(v4 | result));
  }

  return result;
}

unsigned int vp::vx::Uplink_Configuration_Manager::calculate_content_dsp_max_block_size(vp::vx::Uplink_Configuration_Manager *this, double a2, unsigned int a3, double a4)
{
  v4 = a3 * a4 / a2;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v4 = 0.0;
  }

  return vcvtpd_u64_f64(v4);
}

uint64_t vp::vx::Uplink_Configuration_Manager::calculate_echo_dsp_block_size(double a1, uint64_t a2, uint64_t a3, unsigned int **a4)
{
  v4 = *(a3 + 48);
  v5 = &qword_272756000;
  if (!*(a3 + 56))
  {
    v4 = 0.01;
  }

  LODWORD(v5) = vcvtpd_u64_f64(v4 * a1);
  return vp::utility::Quantization_Table<unsigned int>::quantize(*a4, a4[1], v5);
}

uint64_t vp::utility::Quantization_Table<unsigned int>::quantize(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a2 - 1);
  if (*a1 <= a3 && v4 >= a3)
  {
    if (a2 != a1)
    {
      v6 = a2 - a1;
      do
      {
        v7 = v6 >> 1;
        v8 = &a1[v6 >> 1];
        v10 = *v8;
        v9 = v8 + 1;
        v6 += ~(v6 >> 1);
        if (v10 < a3)
        {
          a1 = v9;
        }

        else
        {
          v6 = v7;
        }
      }

      while (v6);
      a2 = a1;
    }

    if (*a2 != a3)
    {
      v11 = *(a2 - 1);
      if (*a2 - a3 >= a3 - v11)
      {
        return v11;
      }

      else
      {
        return *a2;
      }
    }
  }

  else
  {
    if (v4 >= a3)
    {
      v4 = a3;
    }

    if (v3 <= a3)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  return a3;
}

void vp::vx::Uplink_Configuration_Manager::calculate_echo_dsp_sample_rate(double a1, double a2, double a3, double a4, double a5, double a6, int8x16_t a7, int8x16_t a8, uint64_t a9, int a10, unsigned int a11, uint64_t *a12, uint64_t a13, char a14)
{
  v24[4] = *MEMORY[0x277D85DE8];
  if (*(a12 + 8) == 1)
  {
    v14 = *a12;
  }

  else
  {
    v15 = 32000.0;
    if (a1 == 44100.0 && a2 == 44100.0)
    {
      *a7.i64 = a11 * 22050.0 / 44100.0;
      *a8.i64 = *a7.i64 - trunc(*a7.i64);
      v16.f64[0] = NAN;
      v16.f64[1] = NAN;
      if (*vbslq_s8(vnegq_f64(v16), a8, a7).i64 == 0.0)
      {
        v15 = 22050.0;
      }
    }

    v17 = a3 > 0.0;
    if (a3 > 16000.0)
    {
      v17 = 0;
    }

    if ((v17 & a10) != 0)
    {
      v18 = 16000.0;
    }

    else
    {
      v18 = v15;
    }

    *v24 = v18;
    *&v24[1] = a1;
    v19 = 1.79769313e308;
    if (a14)
    {
      v19 = *&a13;
    }

    *&v24[2] = v19;
    *&v24[3] = a2;
    v20 = 1;
    v21 = v24;
    do
    {
      if (*&v24[v20] < v18)
      {
        v18 = *&v24[v20];
        v21 = &v24[v20];
      }

      ++v20;
    }

    while (v20 != 4);
    v22 = *v21;
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t vp::vx::Uplink_Configuration_Manager::calculate_mic_ref_sample_time_delta(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, int a11, unsigned int a12, int a13, int a14, int a15, unsigned int a16, unsigned int a17, int a18, char a19, unsigned int a20)
{
  v20 = *(a6 + 4);
  v21 = a10 & (v20 << 29 >> 31);
  if ((v20 & 1) == 0)
  {
    a8 = 0;
  }

  v23 = a11 & (v20 << 27 >> 31);
  v24 = a15 & (v20 << 23 >> 31);
  result = (a9 & (v20 << 30 >> 31)) + a8 - (v23 + v21) + (a14 & (v20 << 25 >> 31)) + (a18 & (v20 << 21 >> 31)) + v24;
  v26 = 1.0;
  if (a4 > 0.0)
  {
    v26 = a3 / a4;
    if ((v20 & 0x80) == 0)
    {
LABEL_6:
      if ((v20 & 0x200) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v20 & 0x80) == 0)
  {
    goto LABEL_6;
  }

  result = (a9 & (v20 << 30 >> 31)) + a8 - (v23 + v21) + (a18 & (v20 << 21 >> 31)) + v24 + vcvtms_s32_f32(v26 * a16);
  if ((v20 & 0x200) == 0)
  {
LABEL_7:
    if ((v20 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = vcvtms_s32_f32(v26 * a17) - v24 + result;
  if ((v20 & 8) == 0)
  {
LABEL_8:
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_26:
  result = v21 - vcvtms_s32_f32(v26 * a12) + result;
  if ((v20 & 0x20) != 0)
  {
LABEL_9:
    result = v23 - vcvtms_s32_f32(v26 * a13) + result;
  }

LABEL_10:
  if (!*(a6 + 80))
  {
    goto LABEL_41;
  }

  if (a3 >= a1)
  {
    v27 = a1;
  }

  else
  {
    v27 = a3;
  }

  v28 = (a6 + 72);
  v29 = *(a6 + 72);
  if (!v29)
  {
    v30 = (a6 + 72);
    do
    {
LABEL_29:
      v33 = *(v30 + 2);
      v36 = *v33 == v30;
      v30 = v33;
    }

    while (v36);
    goto LABEL_40;
  }

  v30 = (a6 + 72);
  do
  {
    v31 = v29[4];
    if (v31 >= v27)
    {
      v30 = v29;
    }

    v29 = *&v29[v31 < v27];
  }

  while (v29);
  if (v30 != v28)
  {
    v32 = *(v30 + 1);
    if (v32)
    {
      do
      {
        v33 = v32;
        v32 = *v32;
      }

      while (v32);
    }

    else
    {
      v35 = v30;
      do
      {
        v33 = *(v35 + 2);
        v36 = *v33 == v35;
        v35 = v33;
      }

      while (!v36);
    }

    if (v33 == v28 || v33[4] - v27 >= v30[4] - v27)
    {
      v33 = v30;
    }

    goto LABEL_40;
  }

  v34 = *v30;
  if (!*v30)
  {
    goto LABEL_29;
  }

  do
  {
    v33 = v34;
    v34 = *(v34 + 1);
  }

  while (v34);
LABEL_40:
  result = (*(v33 + 10) + result);
LABEL_41:
  if (a3 < a1)
  {
    a1 = a3;
  }

  if (*(a6 + 24) == 1)
  {
    result = (result + *(a6 + 16) / 1000.0 * a1);
  }

  if (a19)
  {
    v36 = *(a7 + 8) == 1 && *(a7 + 40) == 13;
    if (v36)
    {
      result = (result + a20 / 1000.0 * a1);
    }
  }

  if (*(a6 + 40) == 1)
  {
    v37 = (a1 * *(a6 + 32));
    if (result <= v37)
    {
      result = v37;
    }

    else
    {
      result = result;
    }
  }

  if (*(a6 + 56) == 1)
  {
    v38 = (a1 * *(a6 + 48));
    if (result >= v38)
    {
      return v38;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t vp::vx::Downlink_Configuration_Manager::calculate_dynamics_dsp_block_size(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 40) != 1)
  {
    return a4;
  }

  do
  {
    result = a4;
    if (*(a3 + 32) >= a4 / a1)
    {
      break;
    }

    if (a4 < 0x41)
    {
      break;
    }

    a4 = a4 >> 1;
  }

  while ((result & 3) == 0);
  return result;
}

uint64_t vp::vx::Downlink_Configuration_Manager::calculate_voice_dsp_fft_block_size(double a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int **a5)
{
  v5 = a4 / a1;
  v6 = *(a3 + 64);
  if (!*(a3 + 72))
  {
    v6 = 2.22507386e-308;
  }

  v7 = *(a3 + 80);
  if (!*(a3 + 88))
  {
    v7 = 1.79769313e308;
  }

  if (v7 >= v5)
  {
    v7 = a4 / a1;
  }

  if (v5 >= v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8 * a1;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v9 = 0.0;
  }

  return vp::utility::Quantization_Table<unsigned int>::quantize(*a5, a5[1], v9);
}

unsigned int vp::vx::Downlink_Configuration_Manager::calculate_voice_dsp_block_size(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int **a6)
{
  if (*(a4 + 56) == 1)
  {
    LODWORD(a5) = vcvtpd_u64_f64(*(a4 + 48) * a1);
    return vp::utility::Quantization_Table<unsigned int>::quantize(*a6, a6[1], a5);
  }

  else
  {
    v7 = a5 * a1 / a2;
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v7 = 0.0;
    }

    return vcvtpd_u64_f64(v7);
  }
}

void vp::vx::Downlink_Configuration_Manager::calculate_voice_dsp_sample_rate(double a1, double a2, double a3, uint64_t a4, int a5, uint64_t *a6, uint64_t a7, char a8)
{
  v16[4] = *MEMORY[0x277D85DE8];
  if (*(a6 + 8) == 1)
  {
    v8 = *a6;
  }

  else
  {
    v9 = a3 > 0.0;
    if (a3 > 16000.0)
    {
      v9 = 0;
    }

    v10 = 32000.0;
    if ((v9 & a5) != 0)
    {
      v10 = 16000.0;
    }

    *v16 = a1;
    *&v16[1] = a2;
    v11 = 1.79769313e308;
    if (a8)
    {
      v11 = *&a7;
    }

    *&v16[2] = v10;
    *&v16[3] = v11;
    v12 = 1;
    v13 = v16;
    do
    {
      if (*&v16[v12] < a1)
      {
        a1 = *&v16[v12];
        v13 = &v16[v12];
      }

      ++v12;
    }

    while (v12 != 4);
    v14 = *v13;
  }

  v15 = *MEMORY[0x277D85DE8];
}

unsigned int vp::vx::Downlink_Configuration_Manager::calculate_voice_mix_dsp_block_size(vp::vx::Downlink_Configuration_Manager *this, double a2, double a3, unsigned int a4, int a5, double a6, unsigned int a7)
{
  result = 0;
  if (a2 != 0.0 && a3 != 0.0 && a6 != 0.0)
  {
    v9 = ceil(a2 / a3);
    LODWORD(v7) = vcvtpd_u64_f64(a7 / a6 * a3);
    if (a5)
    {
      LODWORD(v7) = v7 + a4 - std::__gcd<unsigned int>(v7, a4);
    }

    return vcvtpd_u64_f64(v9 * v7 * 1.1);
  }

  return result;
}

uint64_t vp::vx::database::v1::syntax::conditions::Constant::build(vp::vx::database::v1::syntax::conditions::Constant *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2)
{
  v3 = this;
  v4 = *(this + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  *(a2 + 70) = 1;
  v5 = *(a2 + 5);
  v6 = *(a2 + 6);
  v7 = *(a2 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 4, v4);
  v8 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v7 - v6 + v5);
  LODWORD(v3) = *(v3 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v9 = v8;
  *(a2 + 70) = 1;
  LODWORD(v5) = *(a2 + 8);
  LODWORD(v6) = *(a2 + 12);
  v10 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v9);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v3);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 1);
  v11 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v5 - v6 + v10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v11);
  return v11;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(uint64_t this)
{
  if (*(this + 70) == 1)
  {
    __assert_rtn("NotNested", "flatbuffers.h", 1432, "!nested");
  }

  if (*(this + 64))
  {
    __assert_rtn("NotNested", "flatbuffers.h", 1434, "!num_field_loc");
  }

  return this;
}

apple::aiml::flatbuffers2::vector_downward *apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(apple::aiml::flatbuffers2::vector_downward *this, uint64_t a2, int a3)
{
  v3 = a3;
  v5 = this;
  if (a3 || *(this + 80) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 1uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 1uLL);
    v6 = (*(v5 + 6) - 1);
    *(v5 + 6) = v6;
    *v6 = v3;
    v7 = (*(v5 + 8) - *(v5 + 12) + *(v5 + 10));
    this = apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 7) = v7 | (a2 << 32);
    *(v5 + 7) += 8;
    ++*(v5 + 16);
    v8 = *(v5 + 34);
    if (v8 <= a2)
    {
      LOWORD(v8) = a2;
    }

    *(v5 + 34) = v8;
  }

  return this;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(apple::aiml::flatbuffers2::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    __assert_rtn("EndTable", "flatbuffers.h", 1450, "nested");
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 4uLL);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 4uLL);
  v4 = *(this + 6);
  *(v4 - 4) = 0;
  v4 -= 4;
  *(this + 6) = v4;
  v5 = *(this + 4) - v4 + *(this + 5);
  if ((*(this + 34) + 2) <= 4u)
  {
    v6 = 4;
  }

  else
  {
    v6 = (*(this + 34) + 2);
  }

  *(this + 34) = v6;
  apple::aiml::flatbuffers2::vector_downward::ensure_space(this, v6);
  v7 = (*(this + 6) - v6);
  *(this + 6) = v7;
  bzero(v7, v6);
  v8 = v5 - a2;
  if ((v5 - a2) >= 0x10000)
  {
    __assert_rtn("EndTable", "flatbuffers.h", 1465, "table_object_size < 0x10000");
  }

  v9 = *(this + 6);
  if (!v9)
  {
    __assert_rtn("data", "flatbuffers.h", 1016, "cur_");
  }

  v9[1] = v8;
  *v9 = *(this + 34);
  v10 = *(this + 7);
  if (!v10)
  {
    __assert_rtn("scratch_end", "flatbuffers.h", 1026, "scratch_");
  }

  v11 = *(this + 16);
  v12 = v10 - 8 * v11;
  if (v11)
  {
    v13 = (v10 - 8 * v11);
    do
    {
      v14 = *(v13 + 2);
      if (*(v9 + v14))
      {
        __assert_rtn("EndTable", "flatbuffers.h", 1476, "!ReadScalar<voffset_t>(buf_.data() + field_location->id)");
      }

      v15 = *v13;
      v13 += 2;
      *(v9 + v14) = v5 - v15;
    }

    while (v13 < v10);
  }

  *(this + 7) = v12;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v17 = *(this + 4);
  v16 = *(this + 5);
  LODWORD(v18) = v17 - v9 + v16;
  if (*(this + 81))
  {
    if (!v16)
    {
      __assert_rtn("scratch_data", "flatbuffers.h", 1021, "buf_");
    }

    if (v16 < v12)
    {
      v19 = *v9;
      v20 = v16 + v17;
      v21 = *(this + 5);
      while (1)
      {
        v18 = *v21;
        if (v19 == *(v20 - v18) && !memcmp((v20 - v18), v9, v19))
        {
          break;
        }

        if (++v21 >= v12)
        {
          LODWORD(v18) = v17 - v9 + v16;
          goto LABEL_21;
        }
      }

      v9 = (v9 + (v17 - v9 + v16 - v5));
      *(this + 6) = v9;
    }
  }

LABEL_21:
  if (v18 == v17 + v16 - v9)
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 4uLL);
    v22 = *(this + 7);
    *v22 = v18;
    *(this + 7) = v22 + 1;
    v17 = *(this + 4);
    v16 = *(this + 5);
  }

  *(v16 + v17 - v5) = v18 - v5;
  *(this + 70) = 0;
  return v5;
}

apple::aiml::flatbuffers2::FlatBufferBuilder *apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(apple::aiml::flatbuffers2::FlatBufferBuilder *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(result, a3);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(v4, a2, v5);
  }

  return result;
}

apple::aiml::flatbuffers2::vector_downward *apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(apple::aiml::flatbuffers2::vector_downward *this, int a2)
{
  v2 = a2;
  v3 = this;
  if (a2 || *(this + 80) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 2uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(v3, 2uLL);
    v4 = *(v3 + 6);
    *(v4 - 2) = v2;
    v4 -= 2;
    *(v3 + 6) = v4;
    v5 = (*(v3 + 8) - v4 + *(v3 + 10));
    this = apple::aiml::flatbuffers2::vector_downward::ensure_space(v3, 8uLL);
    **(v3 + 7) = v5 | 0x400000000;
    *(v3 + 7) += 8;
    ++*(v3 + 16);
    v6 = *(v3 + 34);
    if (v6 <= 4)
    {
      LOWORD(v6) = 4;
    }

    *(v3 + 34) = v6;
  }

  return this;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = (a2 + result - a3 - *(a2 + result - a3));
  if (*v3 < 9u || !v3[4])
  {
    __assert_rtn("Required", "flatbuffers.h", 2702, "ok");
  }

  return result;
}

unint64_t apple::aiml::flatbuffers2::vector_downward::ensure_space(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 < v3 || (v6 = *(this + 5), v7 = v3 - v6, v3 < v6))
  {
    __assert_rtn("ensure_space", "flatbuffers.h", 988, "cur_ >= scratch_ && scratch_ >= buf_");
  }

  v8 = *(this + 4);
  if (&v2[-v3] < a2)
  {
    v9 = v8 - v2 + v6;
    if (v8)
    {
      v10 = v8 >> 1;
    }

    else
    {
      v10 = *(this + 2);
    }

    if (v10 <= a2)
    {
      v10 = a2;
    }

    v11 = (*(this + 3) + v8 + v10 - 1) & -*(this + 3);
    *(this + 4) = v11;
    v12 = *this;
    if (v6)
    {
      if (v12)
      {
        v13 = (*(*v12 + 32))(v12);
      }

      else
      {
        v15 = &unk_2881C64A8;
        v13 = apple::aiml::flatbuffers2::Allocator::reallocate_downward(&v15, v6, v8, v11, v9, v7);
      }
    }

    else
    {
      if (!v12)
      {
        v15 = &unk_2881C64A8;
        operator new[]();
      }

      v13 = (*(*v12 + 16))(v12, v11);
    }

    LODWORD(v6) = v13;
    v8 = *(this + 4);
    v2 = &v13[v8 - v9];
    *(this + 5) = v13;
    *(this + 6) = v2;
    *(this + 7) = &v13[v7];
  }

  if ((v8 - v2 + v6) >= 0x7FFFFFFF)
  {
    __assert_rtn("ensure_space", "flatbuffers.h", 992, "size() < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  return a2;
}

char *apple::aiml::flatbuffers2::Allocator::reallocate_downward(apple::aiml::flatbuffers2::Allocator *this, unsigned __int8 *a2, unint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  if (a4 <= a3)
  {
    __assert_rtn("reallocate_downward", "flatbuffers.h", 687, "new_size > old_size");
  }

  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

void apple::aiml::flatbuffers2::DefaultAllocator::deallocate(apple::aiml::flatbuffers2::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x2743CBF70);
  }
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::Align(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unint64_t a2)
{
  if (*(this + 9) < a2)
  {
    *(this + 9) = a2;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (a2 - 1) & -(*(this + 8) - *(this + 12) + *(this + 10)));
}

unint64_t apple::aiml::flatbuffers2::vector_downward::fill(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  result = apple::aiml::flatbuffers2::vector_downward::ensure_space(this, a2);
  *(this + 6) -= a2;
  if (a2)
  {
    v5 = 0;
    do
    {
      *(*(this + 6) + v5++) = 0;
    }

    while (a2 != v5);
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unsigned int a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 4uLL);
  if (!a2 || (v4 = *(this + 8) - *(this + 12) + *(this + 10), v5 = v4 >= a2, v6 = v4 - a2, !v5))
  {
    __assert_rtn("ReferTo", "flatbuffers.h", 1419, "off && off <= GetSize()");
  }

  return v6 + 4;
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(unint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 || *(result + 80) == 1)
  {
    v5 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(result, a3);
    result = apple::aiml::flatbuffers2::vector_downward::ensure_space(v4, 8uLL);
    **(v4 + 56) = v5 | (a2 << 32);
    *(v4 + 56) += 8;
    ++*(v4 + 64);
    v6 = *(v4 + 68);
    if (v6 <= a2)
    {
      LOWORD(v6) = a2;
    }

    *(v4 + 68) = v6;
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(uint64_t a1, int a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 4uLL);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, 4uLL);
  v4 = *(a1 + 48);
  *(v4 - 4) = a2;
  v4 -= 4;
  *(a1 + 48) = v4;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

uint64_t vp::vx::database::v1::syntax::decisions::Constant::build(vp::vx::database::v1::syntax::decisions::Constant *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2)
{
  v3 = this;
  v4 = *(this + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  *(a2 + 70) = 1;
  v5 = *(a2 + 5);
  v6 = *(a2 + 6);
  v7 = *(a2 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 4, v4);
  v8 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v7 - v6 + v5);
  LODWORD(v3) = *(v3 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v9 = v8;
  *(a2 + 70) = 1;
  LODWORD(v5) = *(a2 + 8);
  LODWORD(v6) = *(a2 + 12);
  v10 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v9);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned short>(a2, v3);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, 1);
  v11 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v5 - v6 + v10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::Required<vp::vx::database::v1::fbs::Condition>(*(a2 + 4), *(a2 + 5), v11);
  return v11;
}

uint64_t vp::vx::database::v1::syntax::Constraint::build(CFStringRef *this, apple::aiml::flatbuffers2::FlatBufferBuilder *a2, const applesauce::CF::StringRef *a3)
{
  v4 = this;
  v5 = vp::vx::database::v1::fbs::BuildString(a2, this, a3);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v6 = v5;
  *(a2 + 70) = 1;
  v7 = *(a2 + 5);
  v8 = *(a2 + 6);
  v9 = *(a2 + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 4, v6);
  v10 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v9 - v8 + v7);
  v11 = *(v4 + 2);
  LODWORD(v4) = vp::vx::database::v1::fbs::BuildPropertyList(a2, v4 + 2, v12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a2);
  v13 = v4;
  *(a2 + 70) = 1;
  v14 = *(a2 + 8);
  v15 = *(a2 + 12);
  v16 = *(a2 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(a2, 8, v13);
  if (v10)
  {
    v17 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a2, v10);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a2, 4, v17);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a2, 6, v11);
  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a2, v14 - v15 + v16);
}

void *vp::vx::database::v1::syntax::Constraint::get_value(void *this, const void *a2)
{
  v3 = this;
  if (a2)
  {
    this = CFRetain(a2);
  }

  *v3 = a2;
  return this;
}

void *vp::vx::database::v1::syntax::Constraint::get_key(void *this, const void *a2)
{
  v3 = this;
  if (a2)
  {
    this = CFRetain(a2);
  }

  *v3 = a2;
  return this;
}

void applesauce::CF::at_or<applesauce::CF::TypeRef,applesauce::CF::StringRef>(void *a1, CFDictionaryRef theDict, void *key, void *a4)
{
  if (theDict && key && (Value = CFDictionaryGetValue(theDict, key), (v7 = Value) != 0))
  {
    CFRetain(Value);
    CFRetain(v7);
    *a1 = v7;
    CFRelease(v7);
  }

  else
  {
    *a1 = *a4;
    *a4 = 0;
  }
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::NumberRef>::more_or_equal(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&v9, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&cf, a3);
  v4 = cf;
  if (!v9)
  {
    if (cf)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    if (!cf)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!cf || ((v5 = CFNumberCompare(v9, cf, 0)) == kCFCompareEqualTo ? (v6 = 0) : (v6 = -1), v5 == kCFCompareGreaterThan))
  {
    v6 = 1;
  }

  v4 = cf;
  if (cf)
  {
LABEL_14:
    CFRelease(v4);
  }

LABEL_15:
  if (v9)
  {
    CFRelease(v9);
  }

  return (v6 & 0x80) == 0;
}

void sub_2725F1F64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFNumberGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFNumberGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_2725F205C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::NumberRef>::more(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&cf, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&v7, a3);
  v4 = v7;
  if (cf)
  {
    v5 = !v7 || CFNumberCompare(cf, v7, 0) == kCFCompareGreaterThan;
    v4 = v7;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = 0;
    if (v7)
    {
LABEL_9:
      CFRelease(v4);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_2725F2138(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::NumberRef>::less_or_equal(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&cf, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&v7, a3);
  v4 = v7;
  if (cf)
  {
    v5 = v7 && CFNumberCompare(cf, v7, 0) != kCFCompareGreaterThan;
    v4 = v7;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = 1;
    if (v7)
    {
LABEL_9:
      CFRelease(v4);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_2725F21E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::NumberRef>::less(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&v9, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&cf, a3);
  v4 = cf;
  if (!v9)
  {
    if (cf)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    if (!cf)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!cf || ((v5 = CFNumberCompare(v9, cf, 0)) == kCFCompareEqualTo ? (v6 = 0) : (v6 = -1), v5 == kCFCompareGreaterThan))
  {
    v6 = 1;
  }

  v4 = cf;
  if (cf)
  {
LABEL_14:
    CFRelease(v4);
  }

LABEL_15:
  if (v9)
  {
    CFRelease(v9);
  }

  return (v6 >> 7) & 1;
}

void sub_2725F229C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::NumberRef>::equal(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&v10, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&cf, a3);
  v5 = cf;
  v4 = v10;
  if (v10)
  {
    if (!cf)
    {
      v7 = 0;
LABEL_12:
      CFRelease(v4);
      return v7;
    }

    v6 = CFNumberCompare(v10, cf, 0);
    v5 = cf;
  }

  else if (cf)
  {
    v6 = kCFCompareLessThan;
  }

  else
  {
    v6 = kCFCompareEqualTo;
  }

  v7 = v6 == kCFCompareEqualTo;
  if (v5)
  {
    CFRelease(v5);
  }

  v4 = v10;
  if (v10)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_2725F2348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::BooleanRef>::more_or_equal(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&v11, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&BOOLean, a3);
  v5 = BOOLean;
  v4 = v11;
  v6 = BOOLean == 0;
  if (v11)
  {
    if (!BOOLean)
    {
      v6 = 1;
LABEL_12:
      CFRelease(v4);
      return v6;
    }

    Value = CFBooleanGetValue(v11);
    v8 = Value >= CFBooleanGetValue(BOOLean);
    v6 = v8;
    if (v8)
    {
      CFBooleanGetValue(v11);
      CFBooleanGetValue(BOOLean);
    }

    v5 = BOOLean;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v4 = v11;
  if (v11)
  {
    goto LABEL_12;
  }

  return v6;
}

void sub_2725F2408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::BooleanRef::~BooleanRef(va);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFBooleanGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFBooleanGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_2725F2504(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFBoolean const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFBoolean const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::BooleanRef>::more(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&BOOLean, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&v8, a3);
  v6 = 0;
  if (BOOLean)
  {
    if (!v8 || (Value = CFBooleanGetValue(BOOLean), Value >= CFBooleanGetValue(v8)) && (v5 = CFBooleanGetValue(BOOLean), v5 != CFBooleanGetValue(v8)))
    {
      v6 = 1;
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v6;
}

void sub_2725F2628(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::BooleanRef::~BooleanRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::BooleanRef>::less_or_equal(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&BOOLean, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&v8, a3);
  v6 = 1;
  if (BOOLean)
  {
    if (!v8 || (Value = CFBooleanGetValue(BOOLean), Value >= CFBooleanGetValue(v8)) && (v5 = CFBooleanGetValue(BOOLean), v5 != CFBooleanGetValue(v8)))
    {
      v6 = 0;
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v6;
}

void sub_2725F26F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::BooleanRef::~BooleanRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::BooleanRef>::less(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&v12, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&BOOLean, a3);
  v5 = BOOLean;
  v4 = v12;
  if (!v12)
  {
    v9 = BOOLean != 0;
    if (!BOOLean)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (BOOLean)
  {
    Value = CFBooleanGetValue(v12);
    v7 = CFBooleanGetValue(BOOLean);
    v8 = Value >= v7;
    v9 = Value < v7;
    if (v8)
    {
      CFBooleanGetValue(v12);
      CFBooleanGetValue(BOOLean);
    }

    v5 = BOOLean;
    if (!BOOLean)
    {
LABEL_10:
      v4 = v12;
      if (!v12)
      {
        return v9;
      }

      goto LABEL_13;
    }

LABEL_9:
    CFRelease(v5);
    goto LABEL_10;
  }

  v9 = 0;
LABEL_13:
  CFRelease(v4);
  return v9;
}

void sub_2725F27BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::BooleanRef::~BooleanRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::BooleanRef>::equal(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&v12, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::BooleanRef(&BOOLean, a3);
  v5 = BOOLean;
  v4 = v12;
  if (v12)
  {
    if (!BOOLean)
    {
      v8 = 0;
LABEL_14:
      CFRelease(v4);
      return v8;
    }

    Value = CFBooleanGetValue(v12);
    if (Value >= CFBooleanGetValue(BOOLean))
    {
      v9 = CFBooleanGetValue(v12);
      v7 = v9 != CFBooleanGetValue(BOOLean);
    }

    else
    {
      v7 = 1;
    }

    v5 = BOOLean;
  }

  else if (BOOLean)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 == 0;
  if (v5)
  {
    CFRelease(v5);
  }

  v4 = v12;
  if (v12)
  {
    goto LABEL_14;
  }

  return v8;
}

void sub_2725F289C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::BooleanRef::~BooleanRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::StringRef>::more_or_equal(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v7, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&cf, a3);
  v4 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v7, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4 < 2;
}

void sub_2725F2928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

const void *applesauce::CF::TypeRef::operator applesauce::CF::StringRef(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFStringGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFStringGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_2725F2A20(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::StringRef>::more(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v7, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&cf, a3);
  v4 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v7, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4 == kCFCompareGreaterThan;
}

void sub_2725F2AD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::StringRef>::less_or_equal(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v7, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&cf, a3);
  v4 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v7, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4 != kCFCompareGreaterThan;
}

void sub_2725F2B5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::StringRef>::less(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v7, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&cf, a3);
  v4 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v7, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4 > kCFCompareGreaterThan;
}

void sub_2725F2BE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::StringRef>::equal(uint64_t a1, const void **a2, const void **a3)
{
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v7, a2);
  applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&cf, a3);
  v4 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v7, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4 == kCFCompareEqualTo;
}

void sub_2725F2C6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::TypeRef>::more_or_equal(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v4 >= v5;
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::TypeRef>::more(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v4 = *a2;
  v5 = *a2 != 0;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
    v5 = v4 >= v6 && CFEqual(v4, v6) == 0;
    CFRelease(v6);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::TypeRef>::less_or_equal(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v4 = *a2;
  v5 = *a2 == 0;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
    v5 = v4 < v6 || CFEqual(v4, v6) != 0;
    CFRelease(v6);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::TypeRef>::less(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v4 < v5;
}

BOOL vp::vx::database::v1::syntax::Constraint_Evaluator_T<applesauce::CF::TypeRef>::equal(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v4 = *a2;
  v5 = *a2 == 0;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
    if (v4)
    {
      v5 = CFEqual(v4, v6) != 0;
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v6);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

uint64_t vp::vx::database::v1::syntax::parse_constraint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = vp::xml::Node::name(*a2, *(a2 + 8));
  v6 = *(*(*(*a3 + 16))(a3, v4, v5) + 16);

  return v6();
}

void vp::vx::database::v1::syntax::Constraints::Boolean::parse_constraint(vp::vx::database::v1::syntax::Constraints::Boolean *this@<X0>, const vp::xml::Node *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 24) = 0;
  v6 = *a2;
  v5 = *(a2 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(v6 + 8);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v7 = *(v6 + 8);
  }

  if (v7 == 1)
  {
    if (*(this + 16))
    {
      v8 = MEMORY[0x277CBED28];
    }

    else
    {
      v8 = MEMORY[0x277CBED10];
    }

    std::__optional_destruct_base<vp::vx::database::v1::syntax::Constraint,false>::reset[abi:ne200100](a3);
    v9 = *(this + 1);
    if (v9)
    {
      CFRetain(*(this + 1));
    }

    v10 = *v8;
    *a3 = v9;
    *(a3 + 8) = 2;
    if (v10)
    {
      CFRetain(v10);
      *(a3 + 16) = v10;
      *(a3 + 24) = 1;
      CFRelease(v10);
    }

    else
    {
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
    }
  }
}

void std::__optional_destruct_base<vp::vx::database::v1::syntax::Constraint,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRelease(v2);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    *(a1 + 24) = 0;
  }
}

void vp::vx::database::v1::syntax::Constraints::Boolean::~Boolean(vp::vx::database::v1::syntax::Constraints::Boolean *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

void vp::vx::database::v1::syntax::Constraints::Number::parse_constraint(vp::vx::database::v1::syntax::Constraints::Number *this@<X0>, const vp::xml::Node *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 24) = 0;
  vp::xml::Node::children(v23, a2);
  v25[0] = v23;
  v25[1] = 0;
  v26 = 0;
  v27 = 0;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v21, v25, v4);
  v20 = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 64);
  v7 = *(MEMORY[0x277D82818] + 72);
  while (v21)
  {
    if ((*(a3 + 24) & 1) == 0)
    {
      v8 = vp::xml::Node::content(v21, v22);
      v10 = v9;
      if (std::string_view::starts_with[abi:ne200100](v8, v9, "<=", 2uLL))
      {
        if (v10 <= 1)
        {
          goto LABEL_40;
        }

        v8 += 2;
        v10 -= 2;
        v11 = 4;
      }

      else if (std::string_view::starts_with[abi:ne200100](v8, v10, "<", 1uLL))
      {
        if (!v10)
        {
          goto LABEL_40;
        }

        ++v8;
        --v10;
        v11 = 3;
      }

      else if (std::string_view::starts_with[abi:ne200100](v8, v10, ">=", 2uLL))
      {
        v12 = v10 >= 2;
        v10 -= 2;
        if (!v12)
        {
          goto LABEL_40;
        }

        v8 += 2;
        v11 = 6;
      }

      else if (std::string_view::starts_with[abi:ne200100](v8, v10, ">", 1uLL))
      {
        if (!v10)
        {
LABEL_40:
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        ++v8;
        --v10;
        v11 = 5;
      }

      else
      {
        v11 = 2;
      }

      v19 = v11;
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v28);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, v8, v10);
      v35 = 0;
      MEMORY[0x2743CBA70](v28, &v35);
      valuePtr = v35;
      v13 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
      v36 = v13;
      if (!v13)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v28[0] = v20;
      *(v28 + *(v20 - 24)) = v6;
      v29 = v7;
      v30 = MEMORY[0x277D82878] + 16;
      if (v32 < 0)
      {
        operator delete(v31[7].__locale_);
      }

      v30 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v31);
      std::iostream::~basic_iostream();
      MEMORY[0x2743CBE30](&v33);
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, v8, v10);
      v35 = 0;
      MEMORY[0x2743CBA50](v37, &v35);
      v43 = v35;
      v14 = CFNumberCreate(0, kCFNumberDoubleType, &v43);
      v36 = v14;
      if (!v14)
      {
        v17 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v17, "Could not construct");
      }

      v37[0] = v20;
      *(v37 + *(v20 - 24)) = v6;
      v38 = v7;
      v39 = MEMORY[0x277D82878] + 16;
      if (v41 < 0)
      {
        operator delete(v40[7].__locale_);
      }

      v39 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v40);
      std::iostream::~basic_iostream();
      MEMORY[0x2743CBE30](&v42);
      if (v14 != 0)
      {
        CFRelease(v14);
      }

      std::__optional_destruct_base<vp::vx::database::v1::syntax::Constraint,false>::reset[abi:ne200100](a3);
      v15 = *(this + 1);
      if (v15)
      {
        CFRetain(*(this + 1));
      }

      *a3 = v15;
      *(a3 + 8) = v19;
      CFRetain(v13);
      *(a3 + 16) = v13;
      *(a3 + 24) = 1;
      CFRelease(v13);
    }

    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v21, v5);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v27 == 1 && v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }
}

void std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](uint64_t **a1, uint64_t **a2, __n128 a3)
{
  if (*(a2 + 24) == 1)
  {
    v5 = a2[1];
    v6 = a2[2];
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v7 = (*a2)[1];
  v11 = **a2;
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10[0] = 0;
  v10[1] = 0;
  std::ranges::__find_if_impl[abi:ne200100]<vp::xml::Node_Iterator,vp::xml::Node_Iterator,std::reference_wrapper<vp::xml::text_filter[abi:llvm18_nua](vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>,std::identity>(v9, &v11, v10, a3);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*(a2 + 24) == 1)
  {
    v8 = a2[2];
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v5 = v9[0];
  v6 = v9[1];
  a2[1] = v9[0];
  a2[2] = v6;
  *(a2 + 24) = 1;
  if (v6)
  {
LABEL_12:
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

LABEL_13:
  *a1 = v5;
  a1[1] = v6;
  a1[2] = a2;
}

uint64_t std::optional<applesauce::CF::NumberRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

vp::xml::Node_Iterator *std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](vp::xml::Node_Iterator *a1, __n128 a2)
{
  vp::xml::Node_Iterator::increment(a1, a2);
  v3 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v8 = v3;
  v7[0] = 0;
  v7[1] = 0;
  std::ranges::__find_if_impl[abi:ne200100]<vp::xml::Node_Iterator,vp::xml::Node_Iterator,std::reference_wrapper<vp::xml::text_filter[abi:llvm18_nua](vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>,std::identity>(&v6, &v8, v7, v3);
  if (v8.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8.n128_u64[1]);
  }

  v4 = *(a1 + 1);
  *a1 = v6;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

double vp::xml::Node_Iterator::increment(vp::xml::Node_Iterator *this, __n128 a2)
{
  v2 = *this;
  if (*this)
  {
    v4 = *(this + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = *(this + 1);
      v6 = *(v2 + 48);
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      *&v7 = v6;
      *(&v7 + 1) = v5;
      v10 = v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v8 = *(this + 1);
      a2.n128_u64[0] = v10;
      *this = v10;
      if (v8)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    else
    {
      a2.n128_u64[0] = *(v2 + 48);
      *this = a2;
    }
  }

  return a2.n128_f64[0];
}

void std::ranges::__find_if_impl[abi:ne200100]<vp::xml::Node_Iterator,vp::xml::Node_Iterator,std::reference_wrapper<vp::xml::text_filter[abi:llvm18_nua](vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>,std::identity>(void *a1, vp::xml::Node_Iterator *a2, void *a3, __n128 a4)
{
  v6 = *a2;
  if (*a2 != *a3)
  {
    while (1)
    {
      v8 = *(a2 + 1);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(v6 + 8);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      else
      {
        v9 = *(v6 + 8);
      }

      if (v9 == 3)
      {
        break;
      }

      a4.n128_f64[0] = vp::xml::Node_Iterator::increment(a2, a4);
      v6 = *a2;
      if (*a2 == *a3)
      {
        goto LABEL_9;
      }
    }

    v6 = *a2;
  }

LABEL_9:
  v10 = *(a2 + 1);
  *a1 = v6;
  a1[1] = v10;
  *a2 = 0;
  *(a2 + 1) = 0;
}

void vp::vx::database::v1::syntax::Constraints::Number::~Number(vp::vx::database::v1::syntax::Constraints::Number *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

void vp::vx::database::v1::syntax::Constraints::String::parse_constraint(vp::vx::database::v1::syntax::Constraints::String *this@<X0>, const vp::xml::Node *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 24) = 0;
  vp::xml::Node::children(v16, a2);
  v18[0] = v16;
  v18[1] = 0;
  v19 = 0;
  v20 = 0;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v14, v18, v5);
  while (v14)
  {
    v6 = *(this + 2);
    v7 = vp::xml::Node::content(v14, v15);
    vp::vx::database::v1::runtime::String_Pool::intern(&cf, v6, v7, v8);
    if (cf)
    {
      std::__optional_destruct_base<vp::vx::database::v1::syntax::Constraint,false>::reset[abi:ne200100](a3);
      v10 = *(this + 1);
      if (v10)
      {
        CFRetain(v10);
      }

      *a3 = v10;
      *(a3 + 8) = 2;
      v11 = cf;
      if (cf)
      {
        CFRetain(cf);
        v12 = cf;
        *(a3 + 16) = v11;
        *(a3 + 24) = 1;
        if (v12)
        {
          CFRelease(v12);
        }
      }

      else
      {
        *(a3 + 16) = 0;
        *(a3 + 24) = 1;
      }

      break;
    }

    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v14, v9);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v20 == 1)
  {
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }
}

void vp::vx::database::v1::syntax::Constraints::String::~String(vp::vx::database::v1::syntax::Constraints::String *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

void vp::vx::database::v1::syntax::Constraints::Four_CC::parse_constraint(CFTypeRef *this@<X0>, const vp::xml::Node *a2@<X1>, _BYTE *a3@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[24] = 0;
  vp::xml::Node::children(v41, a2);
  v43[0] = v41;
  v43[1] = 0;
  v44 = 0;
  v45 = 0;
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::begin[abi:ne200100](&v39, v43, v5);
  while (1)
  {
    if (!v39)
    {
      goto LABEL_36;
    }

    if ((a3[24] & 1) == 0)
    {
      break;
    }

    std::ranges::filter_view[abi:llvm18_nua]<std::ranges::ref_view<vp::xml::Node_Range>,vp::xml::text_filter(vp::xml::Node_Range)::{lambda(vp::xml::Node const&)#1}>::__iterator::operator++[abi:ne200100](&v39, v6);
  }

  v7 = vp::xml::Node::content(v39, v40);
  v9 = &v7[v8];
  v10 = v7;
  if (v8)
  {
    while (*v10 == 48)
    {
      ++v10;
      if (!--v8)
      {
        v10 = v9;
        break;
      }
    }
  }

  if (v10 == v9 || *v10 - 48 >= 0xA)
  {
    if (v10 != v7)
    {
      v36 = 0x100000000;
LABEL_44:
      LODWORD(v47.__r_.__value_.__l.__data_) = v36;
      v47.__r_.__value_.__s.__data_[4] = BYTE4(v36);
      std::__optional_destruct_base<vp::vx::database::v1::syntax::Constraint,false>::reset[abi:ne200100](a3);
      vp::vx::database::v1::syntax::Constraint::Constraint<applesauce::CF::StringRef &,unsigned int &>(a3, this[1], &v47);
      a3[24] = 1;
      goto LABEL_36;
    }
  }

  else
  {
    v11 = 9;
    do
    {
      v12 = *v10;
      if ((*v10 - 58) < 0xF6u)
      {
        break;
      }

      ++v10;
      *(__p + v11) = (v12 - 48);
      v13 = v11-- != 0;
      v14 = v13;
    }

    while (v10 != v9 && v14);
    v15 = v11 + 1;
    v16 = (v11 + 1) << 32;
    v17 = *(__p + v11 + 1);
    if (v15 <= 7)
    {
      v18 = (__p + (v16 >> 30) + 4);
      v19 = &dword_27275AA34;
      do
      {
        v21 = *v18++;
        v20 = v21;
        v22 = *v19++;
        v17 += v22 * v20;
      }

      while (v18 < &v50);
    }

    v23 = v50 * *(&std::__itoa::__pow10_32 + ((0x900000000 - v16) >> 30));
    v24 = &v10[-((v23 & 0xFFFFFFFF00000000) != 0)];
    if (v24 == v9)
    {
      if (!__CFADD__(v17, v23))
      {
LABEL_43:
        v36 = (v17 + v23) | 0x100000000;
        goto LABEL_44;
      }
    }

    else
    {
      v25 = *v24 - 48;
      v26 = __CFADD__(v17, v23);
      if (v25 >= 0xA && !v26)
      {
        goto LABEL_43;
      }
    }
  }

  v27 = vp::xml::Node::content(v39, v40);
  v29 = v27;
  if (v28 != 4)
  {
    v30 = v28;
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string<std::string_view,0>(&__dst, v29, v30);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v47, "failed to convert ", &__dst);
    v32 = std::string::append(&v47, " to four character code", 0x18uLL);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v49 = v32->__r_.__value_.__r.__words[2];
    *__p = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x2743CB8B0](exception, __p);
  }

  v34 = bswap32(*v27);
  v38 = 1;
  v37 = v34;
  std::__optional_destruct_base<vp::vx::database::v1::syntax::Constraint,false>::reset[abi:ne200100](a3);
  vp::vx::database::v1::syntax::Constraint::Constraint<applesauce::CF::StringRef &,unsigned int &>(a3, this[1], &v37);
  a3[24] = 1;
LABEL_36:
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v45 == 1 && v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_2725F42D8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2725F42E0);
  }

  __clang_call_terminate(a1);
}

uint64_t vp::vx::database::v1::syntax::Constraint::Constraint<applesauce::CF::StringRef &,unsigned int &>(uint64_t a1, CFTypeRef cf, int *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  *(a1 + 8) = 2;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 16) = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void vp::vx::database::v1::syntax::Constraints::Four_CC::~Four_CC(vp::vx::database::v1::syntax::Constraints::Four_CC *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t (***vp::vx::database::v1::syntax::Constraints::constraint_parser(uint64_t (***a1)(), vp::vx::database::v1::syntax *this, char *a3))()
{
  v4 = vp::vx::database::v1::syntax::constexpr_hash(this, a3, a3);
  v5 = vp::vx::database::v1::syntax::Constraint::Parser::null(void)::s_null;
  if (v4 <= 0x498395525390128)
  {
    if (v4 <= 0xBA40C0FA7EC1140CLL)
    {
      if (v4 > 0xA188FB989C5D61EELL)
      {
        v6 = 0xA954BFA7BD2E3717;
        v23 = a1 + 78;
        if (v4 != 0xB88743712476B40BLL)
        {
          v23 = vp::vx::database::v1::syntax::Constraint::Parser::null(void)::s_null;
        }

        if (v4 == 0xAF698B64D2829150)
        {
          v24 = a1 + 48;
        }

        else
        {
          v24 = v23;
        }

        if (v4 == 0xA954BFA7BD2E3718)
        {
          v8 = a1 + 72;
        }

        else
        {
          v8 = v24;
        }

        v9 = 0xA188FB989C5D61EFLL;
        v10 = a1 + 23;
        v17 = 0xA2148DCD604AB5B0;
        v18 = a1 + 101;
        v19 = v4 == 0xA6F3B0A29050C694;
        v20 = a1 + 115;
      }

      else
      {
        v6 = 0x8A373B8A470C9FC0;
        v15 = a1 + 81;
        if (v4 != 0xA1292B0F929CB840)
        {
          v15 = vp::vx::database::v1::syntax::Constraint::Parser::null(void)::s_null;
        }

        if (v4 == 0xA105070F8CF24955)
        {
          v16 = a1 + 30;
        }

        else
        {
          v16 = v15;
        }

        if (v4 == 0x8A373B8A470C9FC1)
        {
          v8 = a1 + 75;
        }

        else
        {
          v8 = v16;
        }

        v9 = 0x858A4692D4461309;
        v10 = a1 + 54;
        v17 = 0x8742FCB0F9A894E4;
        v18 = a1 + 93;
        v19 = v4 == 0x894C3A5A1CF75C56;
        v20 = a1 + 25;
      }
    }

    else
    {
      if (v4 > 0xDD8FEC1FD0C71E5FLL)
      {
        if (v4 > 0xE43C8B9FC8667D71)
        {
          v6 = 0xF776ACDBBFF73E8CLL;
          v13 = a1 + 35;
          if (v4 != 0xFD2BE7301BC80E57)
          {
            v13 = vp::vx::database::v1::syntax::Constraint::Parser::null(void)::s_null;
          }

          if (v4 == 0xF776ACDBBFF73E8DLL)
          {
            v8 = a1 + 95;
          }

          else
          {
            v8 = v13;
          }

          v9 = 0xE43C8B9FC8667D72;
          v10 = a1 + 118;
          v11 = v4 == 0xE825CFA538F344A4;
          v12 = a1 + 106;
          goto LABEL_28;
        }

        v30 = 0xDD8FEC1FD0C71E60;
        v31 = a1 + 16;
        v32 = 0xDFDBA55A79F56227;
        v33 = a1 + 57;
        v34 = v4 == 0xE28680BB3A226F83;
        v35 = a1 + 121;
        goto LABEL_89;
      }

      v6 = 0xD090B43AF25CDA51;
      v21 = a1 + 91;
      if (v4 != 0xD1E7629FE14D09E0)
      {
        v21 = vp::vx::database::v1::syntax::Constraint::Parser::null(void)::s_null;
      }

      if (v4 == 0xD0C082A69E373085)
      {
        v22 = a1 + 37;
      }

      else
      {
        v22 = v21;
      }

      if (v4 == 0xD090B43AF25CDA52)
      {
        v8 = a1 + 69;
      }

      else
      {
        v8 = v22;
      }

      v9 = 0xBA40C0FA7EC1140DLL;
      v10 = a1 + 20;
      v17 = 0xCF0341C82F47EF35;
      v18 = a1 + 87;
      v19 = v4 == 0xCF9FE0B824615421;
      v20 = a1 + 66;
    }

    goto LABEL_77;
  }

  if (v4 <= 0x5188CF25628C3D56)
  {
    if (v4 > 0x1872435F6E8C9902)
    {
      if (v4 > 0x23A8886125357B31)
      {
        v6 = 0x3FA3D4DB2C2A6CEFLL;
        v7 = a1 + 42;
        if (v4 != 0x4C04D8C1582AE129)
        {
          v7 = vp::vx::database::v1::syntax::Constraint::Parser::null(void)::s_null;
        }

        if (v4 == 0x3FA3D4DB2C2A6CF0)
        {
          v8 = a1 + 97;
        }

        else
        {
          v8 = v7;
        }

        v9 = 0x23A8886125357B32;
        v10 = a1 + 103;
        v11 = v4 == 0x3ACA45B4BCE9CC5ELL;
        v12 = a1 + 109;
LABEL_28:
        if (v11)
        {
          v5 = v12;
        }

LABEL_81:
        if (v4 == v9)
        {
          v5 = v10;
        }

        if (v4 <= v6)
        {
          return v5;
        }

        else
        {
          return v8;
        }
      }

      v30 = 0x1872435F6E8C9903;
      v31 = a1 + 27;
      v32 = 0x1B11D2AEAA71A9FELL;
      v33 = a1 + 18;
      v34 = v4 == 0x1C6278F51A7C5FEELL;
      v35 = a1 + 45;
      goto LABEL_89;
    }

    v6 = 0xF6FE2AD4C8FEA89;
    v25 = a1 + 135;
    if (v4 != 0x1550918DFD1B8FE3)
    {
      v25 = vp::vx::database::v1::syntax::Constraint::Parser::null(void)::s_null;
    }

    if (v4 == 0x14F74491BD896AB7)
    {
      v26 = a1 + 39;
    }

    else
    {
      v26 = v25;
    }

    if (v4 == 0xF6FE2AD4C8FEA8ALL)
    {
      v8 = a1 + 84;
    }

    else
    {
      v8 = v26;
    }

    v9 = 0x498395525390129;
    v10 = a1 + 33;
    v17 = 0xD0E0EEDDA40B0E0;
    v18 = a1 + 6;
    v19 = v4 == 0xF2B392A1FCFDB28;
    v20 = a1 + 14;
LABEL_77:
    if (v19)
    {
      v5 = v20;
    }

    if (v4 == v17)
    {
      v5 = v18;
    }

    goto LABEL_81;
  }

  if (v4 <= 0x6548E6967205FD3FLL)
  {
    v6 = 0x58DA21131A63A985;
    v27 = a1 + 126;
    if (v4 != 0x5AE60A0AA2A90ED3)
    {
      v27 = vp::vx::database::v1::syntax::Constraint::Parser::null(void)::s_null;
    }

    if (v4 == 0x5A17D1B68B308519)
    {
      v28 = a1 + 60;
    }

    else
    {
      v28 = v27;
    }

    if (v4 == 0x58DA21131A63A986)
    {
      v8 = a1 + 12;
    }

    else
    {
      v8 = v28;
    }

    v9 = 0x5188CF25628C3D57;
    v10 = a1 + 51;
    v17 = 0x56E2179B430E85ACLL;
    v18 = a1 + 3;
    v19 = v4 == 0x56F706BB01EB9C7DLL;
    v20 = a1 + 123;
    goto LABEL_77;
  }

  if (v4 > 0x74E3CFF99397407ELL)
  {
    v6 = 0x7A5B0D7A15823FC2;
    v14 = a1 + 89;
    if (v4 != 0x7B69288D862CF616)
    {
      v14 = vp::vx::database::v1::syntax::Constraint::Parser::null(void)::s_null;
    }

    if (v4 == 0x7A5B0D7A15823FC3)
    {
      v8 = a1 + 129;
    }

    else
    {
      v8 = v14;
    }

    v9 = 0x74E3CFF99397407FLL;
    v10 = a1 + 63;
    v11 = v4 == 0x772F3E59CBFD41C0;
    v12 = a1 + 9;
    goto LABEL_28;
  }

  v30 = 0x6548E6967205FD40;
  v31 = a1 + 112;
  v32 = 0x69B28E03A51D8C95;
  v33 = a1 + 132;
  v34 = v4 == 0x6DDA229FE0EB6F7FLL;
  v35 = a1 + 99;
LABEL_89:
  if (v34)
  {
    v5 = v35;
  }

  if (v4 == v32)
  {
    v5 = v33;
  }

  if (v4 == v30)
  {
    return v31;
  }

  else
  {
    return v5;
  }
}

void non-virtual thunk tovp::vx::database::v1::syntax::Constraints::~Constraints(vp::vx::database::v1::syntax::Constraints *this)
{
  vp::vx::database::v1::syntax::Constraints::~Constraints((this - 8));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::database::v1::syntax::Constraints::~Constraints((this - 8));
}

void vp::vx::database::v1::syntax::Constraints::~Constraints(vp::vx::database::v1::syntax::Constraints *this)
{
  *this = &unk_2881B64A0;
  *(this + 1) = &unk_2881B64D0;
  v2 = *(this + 136);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 133);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 130);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 127);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 124);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 122);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 119);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 116);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 113);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 110);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(this + 107);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(this + 104);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(this + 102);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(this + 100);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(this + 98);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(this + 96);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(this + 94);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(this + 92);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(this + 90);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(this + 88);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(this + 85);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(this + 82);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(this + 79);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(this + 76);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(this + 73);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(this + 70);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(this + 67);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(this + 64);
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = *(this + 61);
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = *(this + 58);
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = *(this + 55);
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = *(this + 52);
  if (v33)
  {
    CFRelease(v33);
  }

  v34 = *(this + 49);
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = *(this + 46);
  if (v35)
  {
    CFRelease(v35);
  }

  v36 = *(this + 43);
  if (v36)
  {
    CFRelease(v36);
  }

  v37 = *(this + 40);
  if (v37)
  {
    CFRelease(v37);
  }

  v38 = *(this + 38);
  if (v38)
  {
    CFRelease(v38);
  }

  v39 = *(this + 36);
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = *(this + 34);
  if (v40)
  {
    CFRelease(v40);
  }

  v41 = *(this + 31);
  if (v41)
  {
    CFRelease(v41);
  }

  v42 = *(this + 28);
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = *(this + 26);
  if (v43)
  {
    CFRelease(v43);
  }

  v44 = *(this + 24);
  if (v44)
  {
    CFRelease(v44);
  }

  v45 = *(this + 21);
  if (v45)
  {
    CFRelease(v45);
  }

  v46 = *(this + 19);
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = *(this + 17);
  if (v47)
  {
    CFRelease(v47);
  }

  v48 = *(this + 15);
  if (v48)
  {
    CFRelease(v48);
  }

  v49 = *(this + 13);
  if (v49)
  {
    CFRelease(v49);
  }

  v50 = *(this + 10);
  if (v50)
  {
    CFRelease(v50);
  }

  v51 = *(this + 7);
  if (v51)
  {
    CFRelease(v51);
  }

  v52 = *(this + 4);
  if (v52)
  {
    CFRelease(v52);
  }
}

{
  vp::vx::database::v1::syntax::Constraints::~Constraints(this);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::database::v1::syntax::Constraints::create_constraint(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = -v6;
  v8 = (a2 - v6);
  if (*v8 >= 5u && (v9 = v8[2]) != 0 && (v10 = a2 + v9 + *(a2 + v9), v11 = &v10[-*v10], *v11 >= 5u) && (v12 = *(v11 + 2)) != 0)
  {
    vp::vx::database::v1::runtime::String_Pool::intern(&v22, v5, &v10[v12 + 4 + *&v10[v12]], *&v10[v12 + *&v10[v12]]);
    v13 = v22;
    v19 = v22;
    v7 = -*a2;
  }

  else
  {
    v13 = 0;
    v19 = 0;
  }

  v14 = a2 + v7;
  v15 = *(a2 + v7);
  if (v15 <= 6)
  {
    LODWORD(v16) = 0;
LABEL_14:
    v18 = 0;
    v21 = 0;
    goto LABEL_15;
  }

  v16 = *(v14 + 3);
  if (*(v14 + 3))
  {
    LODWORD(v16) = *(a2 + v16);
  }

  v20 = v16;
  if (v15 < 9)
  {
    goto LABEL_14;
  }

  v17 = *(v14 + 4);
  if (!v17)
  {
    goto LABEL_14;
  }

  vp::vx::database::v1::fbs::CreatePropertyList(&v21, v5, (a2 + v17 + *(a2 + v17)));
  v13 = v19;
  LODWORD(v16) = v20;
  v18 = v21;
LABEL_15:
  *a3 = v13;
  *(a3 + 8) = v16;
  *(a3 + 16) = v18;
  *(a3 + 24) = 1;
}

uint64_t vp::vx::database::v1::syntax::Constraints::Boolean::Boolean(uint64_t a1, const void *a2, char a3)
{
  *a1 = &unk_2881B5198;
  if (a2)
  {
    CFRetain(a2);
  }

  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  return a1;
}

void *vp::vx::database::v1::syntax::Constraints::Number::Number(void *a1, const void *a2)
{
  *a1 = &unk_2881B51C0;
  if (a2)
  {
    CFRetain(a2);
  }

  a1[1] = a2;
  return a1;
}

void *vp::vx::database::v1::syntax::Constraints::String::String(void *a1, CFTypeRef cf, uint64_t a3)
{
  *a1 = &unk_2881B51E8;
  if (cf)
  {
    CFRetain(cf);
  }

  a1[1] = cf;
  a1[2] = a3;
  return a1;
}

void *vp::vx::database::v1::syntax::Constraints::Four_CC::Four_CC(void *a1, const void *a2)
{
  *a1 = &unk_2881B5210;
  if (a2)
  {
    CFRetain(a2);
  }

  a1[1] = a2;
  return a1;
}

int *vp::vx::Voice_Processor_State_Manager::create_state<BOOL>(uint64_t a1, __n128 *a2, _BYTE *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(v11) = *a3;
  vp::vx::data_flow::State_Manager::create_state(&v12, a2 + 3, v11);
  LODWORD(a2) = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  vp::vx::data_flow::Value::~Value(v11);
  *a1 = a2;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  return vp::vx::data_flow::State<void>::~State(&v8);
}

int *vp::vx::Voice_Processor_State_Manager::create_state<vp::vx::Chat_Flavor>(uint64_t a1, __n128 *a2, _DWORD *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(v11) = *a3;
  vp::vx::data_flow::State_Manager::create_state(&v12, a2 + 3, v11);
  LODWORD(a2) = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  vp::vx::data_flow::Value::~Value(v11);
  *a1 = a2;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  return vp::vx::data_flow::State<void>::~State(&v8);
}

void std::vector<vp::vx::data_flow::State_Listener>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        vp::vx::data_flow::State_Listener::~State_Listener((v4 - 32));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::__hash_table<applesauce::CF::StringRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<applesauce::CF::StringRef>>::~__hash_table(uint64_t *a1)
{
  v2 = a1[3];
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::pmr::polymorphic_allocator<std::__hash_node<applesauce::CF::StringRef,void *>>::destroy[abi:ne200100]<applesauce::CF::StringRef>(*(v2 + 16));
      std::allocator_traits<vp::Allocator<std::__hash_node<applesauce::CF::StringRef,void *>>>::deallocate[abi:ne200100](a1[4], v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<applesauce::CF::StringRef,void *> *> *>>::deallocate[abi:ne200100](a1[2], v4, a1[1]);
  }

  return a1;
}

void std::pmr::polymorphic_allocator<std::__hash_node<applesauce::CF::StringRef,void *>>::destroy[abi:ne200100]<applesauce::CF::StringRef>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void vp::vx::data_flow::State_Listener::~State_Listener(vp::vx::data_flow::State_Listener *this)
{
  if (*(this + 1))
  {
    v2 = *(this + 6);
    if (v2)
    {
      vp::vx::data_flow::State<void>::unregister_listener(this, v2);
      *(this + 6) = 0;
    }
  }

  vp::vx::data_flow::State<void>::~State(this);
}

void std::__shared_ptr_emplace<vp::vx::Control_Center_Manager_Impl>::__on_zero_shared(uint64_t a1)
{
  for (i = *(a1 + 472); i; i = *i)
  {
    v3 = *(a1 + 40);
    v4 = i[2];
    if (v4)
    {
      CFRetain(i[2]);
    }

    cf = v4;
    (*(*v3 + 56))(v3, &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  v10 = (a1 + 504);
  std::vector<vp::vx::data_flow::State_Listener>::__destroy_vector::operator()[abi:ne200100](&v10);
  std::__hash_table<applesauce::CF::StringRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<applesauce::CF::StringRef>>::~__hash_table((a1 + 448));
  v5 = *(a1 + 440);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  vp::cf::Notification_Listener::~Notification_Listener((a1 + 400));
  vp::cf::Notification_Listener::~Notification_Listener((a1 + 368));
  std::recursive_mutex::~recursive_mutex((a1 + 304));
  vp::vx::data_flow::State<void>::~State((a1 + 280));
  vp::vx::data_flow::State<void>::~State((a1 + 256));
  vp::vx::data_flow::State<void>::~State((a1 + 232));
  vp::vx::data_flow::State<void>::~State((a1 + 208));
  vp::vx::data_flow::State<void>::~State((a1 + 184));
  vp::vx::data_flow::State<void>::~State((a1 + 160));
  vp::vx::data_flow::State<void>::~State((a1 + 136));
  vp::vx::data_flow::State<void>::~State((a1 + 112));
  vp::vx::data_flow::State<void>::~State((a1 + 88));
  vp::vx::data_flow::State<void>::~State((a1 + 64));
  v6 = *(a1 + 56);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void std::__shared_ptr_emplace<vp::vx::Control_Center_Manager_Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881B5A58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void std::__function::__func<vp::vx::Control_Center_Manager::set_app_bundle_id(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_app_bundle_id(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>,void ()(applesauce::CF::StringRef const&)>::operator()(vp *a1, CFTypeRef *a2)
{
  v2 = a1;
  v26 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*a2)
  {
    a1 = CFRetain(*a2);
  }

  v4 = *(v2 + 1);
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(v18, v4, "vp::vx::Control_Center_Manager]", 30);
    v7 = v19;
    v8 = v19;
    v9 = v18[1];
    v10 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (v8 >= 0)
      {
        v11 = v7;
      }

      else
      {
        v11 = v9;
      }

      if (v8 >= 0)
      {
        v12 = v18;
      }

      else
      {
        v12 = v18[0];
      }

      if (v11)
      {
        v13 = " ";
      }

      else
      {
        v13 = "";
      }

      if (v3)
      {
        applesauce::CF::convert_to<std::string,0>(__p, v3);
        if (v17 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        *buf = 136315650;
        v21 = v12;
        v22 = 2080;
        v23 = v13;
        v24 = 2080;
        v25 = v14;
        _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEFAULT, "%s%sapplication bundle ID is %s", buf, 0x20u);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136315650;
        v21 = v12;
        v22 = 2080;
        v23 = v13;
        v24 = 2080;
        v25 = "null";
        _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEFAULT, "%s%sapplication bundle ID is %s", buf, 0x20u);
      }

      LOBYTE(v8) = v19;
    }

    if ((v8 & 0x80) != 0)
    {
      operator delete(v18[0]);
      if (!v3)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  if (v3)
  {
LABEL_24:
    CFRelease(v3);
  }

LABEL_25:
  v15 = *MEMORY[0x277D85DE8];
}

void sub_2725F58D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<vp::vx::Control_Center_Manager::set_app_bundle_id(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_app_bundle_id(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>,void ()(applesauce::CF::StringRef const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B5AD8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<vp::vx::Control_Center_Manager::set_bypass(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_bypass(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(BOOL const&)>::operator()(vp *a1, unsigned __int8 *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 1);
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, v3, "vp::vx::Control_Center_Manager]", 30);
    v6 = v16;
    v7 = v16;
    v8 = __p[1];
    v9 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v7 >= 0)
      {
        v10 = v6;
      }

      else
      {
        v10 = v8;
      }

      v11 = __p[0];
      if (v7 >= 0)
      {
        v11 = __p;
      }

      if (v10)
      {
        v12 = " ";
      }

      else
      {
        v12 = "";
      }

      *buf = 136315650;
      v18 = v11;
      v19 = 2080;
      v20 = v12;
      if (v2)
      {
        v13 = "is";
      }

      else
      {
        v13 = "is not";
      }

      v21 = 2080;
      v22 = v13;
      _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEFAULT, "%s%svoice processing %s bypassed", buf, 0x20u);
      LOBYTE(v7) = v16;
    }

    if ((v7 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<vp::vx::Control_Center_Manager::set_bypass(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_bypass(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B5B20;
  a2[1] = v2;
  return result;
}

void std::__function::__func<vp::vx::Control_Center_Manager::set_media_handoff(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_media_handoff(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(BOOL const&)>::operator()(vp *a1, unsigned __int8 *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 1);
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, v3, "vp::vx::Control_Center_Manager]", 30);
    v6 = v16;
    v7 = v16;
    v8 = __p[1];
    v9 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v7 >= 0)
      {
        v10 = v6;
      }

      else
      {
        v10 = v8;
      }

      v11 = __p[0];
      if (v7 >= 0)
      {
        v11 = __p;
      }

      if (v10)
      {
        v12 = " ";
      }

      else
      {
        v12 = "";
      }

      *buf = 136315650;
      v18 = v11;
      v19 = 2080;
      v20 = v12;
      if (v2)
      {
        v13 = "true";
      }

      else
      {
        v13 = "false";
      }

      v21 = 2080;
      v22 = v13;
      _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEFAULT, "%s%smedia handoff enabled: %s", buf, 0x20u);
      LOBYTE(v7) = v16;
    }

    if ((v7 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<vp::vx::Control_Center_Manager::set_media_handoff(vp::vx::data_flow::State<BOOL>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_media_handoff(vp::vx::data_flow::State<BOOL>)::$_0>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B5B68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::register_listener(std::function<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::register_listener(std::function<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::compare_value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a2 + 16);
  if (v3 != *(*a3 + 16))
  {
    return 0;
  }

  v4 = *(*a2 + 8);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v6 = *(*a3 + 8);
  v10 = *(*a2 + 8);
  v8 = v6;
  v9 = v4 + 4 * v3;
  return boost::intrusive::algo_equal<boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::intrusive::algo_pred_equal>(&v10, &v9, &v8);
}

uint64_t boost::intrusive::algo_equal<boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::intrusive::algo_pred_equal>(_DWORD **a1, void *a2, void *a3)
{
  while (1)
  {
    v3 = *a1;
    if (*a1 == *a2)
    {
      break;
    }

    if (!v3)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (!*a3)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    v4 = *v3 == **a3;
    v5 = v4;
    if (!v4)
    {
      return v5;
    }

    *a1 = v3 + 1;
    if (!*a3)
    {
      __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
    }

    *a3 += 4;
  }

  return 1;
}

void *vp::vx::data_flow::Value::Type_ID_Eraser<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::destroy_value(uint64_t a1, uint64_t a2)
{
  result = *a2;
  if (*(*a2 + 24))
  {
    return boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(result, result[1]);
  }

  return result;
}

char *vp::vx::data_flow::Value::Type_ID_Eraser<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::move_value(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = **a3;
  *(v3 + 8) = v3 + 32;
  *(v3 + 16) = xmmword_2727565D0;
  return boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl(v3, v4);
}

char *vp::vx::data_flow::Value::Type_ID_Eraser<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::copy_value(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *a2 + 32;
  *v3 = **a3;
  *(v3 + 8) = v5;
  *(v3 + 16) = xmmword_2727565D0;
  v6 = v4[1];
  v7 = v4[2];
  v11 = v6;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v10 = &v6[4 * v7];
  return boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::container::vec_iterator<vp::vx::Chat_Flavor*,true>>(v3, &v11, &v10);
}

void sub_2725F616C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v1, *(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 40, 8);
  *a2 = result;
  return result;
}

void std::__function::__func<vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::register_listener(std::function<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::register_listener(std::function<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::register_listener(std::function<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::register_listener(std::function<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5BB0;
  std::__function::__value_func<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::register_listener(std::function<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::register_listener(std::function<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5BB0;
  std::__function::__value_func<void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<vp::vx::Control_Center_Manager::set_hidden_chat_flavors(vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_hidden_chat_flavors(vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>)::$_0>,void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>::operator()(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v2, 0, 0, 0);
}

void sub_2725F6620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v16 < 0)
  {
    operator delete(v15);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a15);
  _Unwind_Resume(a1);
}

void *std::end[abi:ne200100]<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  if (!a2 && a3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  *result = a2 + 4 * a3;
  return result;
}

uint64_t _ZNSt3__19transformB8ne200100IN5boost9container12vec_iteratorIPN2vp2vx11Chat_FlavorELb1EEENS_20back_insert_iteratorIN8nlohmann10basic_jsonINS_3mapENS_6vectorENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbxydSH_NSA_14adl_serializerENSD_IhNSH_IhEEEEEEEEPDoFNS_17basic_string_viewIcSG_EES6_EEET0_T_SU_ST_T1_(int **a1, int **a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1 != *a2)
  {
    if (v3)
    {
      vp::reflect_value_name_tag<vp::vx::Chat_Flavor,128ul>(*v3);
      operator new();
    }

    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return a3;
}

char *vp::reflect_value_name_tag<vp::vx::Chat_Flavor,128ul>(int a1)
{
  v1 = vp::detail::reflect_value_name<(vp::vx::Chat_Flavor)0,128ul>(a1);
  if (v2)
  {
    v3 = &v1[v2];
    for (i = v2; i; --i)
    {
      v5 = *--v3;
      if (v5 == 58)
      {
        v6 = v3 - v1 + 1;
        if (v2 < v6)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v1[v6];
      }
    }
  }

  v6 = 0;
  return &v1[v6];
}

char *vp::detail::reflect_value_name<(vp::vx::Chat_Flavor)0,128ul>(int a1)
{
  result = "vp::vx::Chat_Flavor::Standard]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::Chat_Flavor::Wide_Spectrum]";
      break;
    case 2:
      result = "vp::vx::Chat_Flavor::Voice_Isolation]";
      break;
    case 3:
      result = "(vp::vx::Chat_Flavor)3]";
      break;
    case 4:
      result = "(vp::vx::Chat_Flavor)4]";
      break;
    case 5:
      result = "(vp::vx::Chat_Flavor)5]";
      break;
    case 6:
      result = "(vp::vx::Chat_Flavor)6]";
      break;
    case 7:
      result = "(vp::vx::Chat_Flavor)7]";
      break;
    case 8:
      result = "(vp::vx::Chat_Flavor)8]";
      break;
    case 9:
      result = "(vp::vx::Chat_Flavor)9]";
      break;
    case 10:
      result = "(vp::vx::Chat_Flavor)10]";
      break;
    case 11:
      result = "(vp::vx::Chat_Flavor)11]";
      break;
    case 12:
      result = "(vp::vx::Chat_Flavor)12]";
      break;
    case 13:
      result = "(vp::vx::Chat_Flavor)13]";
      break;
    case 14:
      result = "(vp::vx::Chat_Flavor)14]";
      break;
    case 15:
      result = "(vp::vx::Chat_Flavor)15]";
      break;
    case 16:
      result = "(vp::vx::Chat_Flavor)16]";
      break;
    case 17:
      result = "(vp::vx::Chat_Flavor)17]";
      break;
    case 18:
      result = "(vp::vx::Chat_Flavor)18]";
      break;
    case 19:
      result = "(vp::vx::Chat_Flavor)19]";
      break;
    case 20:
      result = "(vp::vx::Chat_Flavor)20]";
      break;
    case 21:
      result = "(vp::vx::Chat_Flavor)21]";
      break;
    case 22:
      result = "(vp::vx::Chat_Flavor)22]";
      break;
    case 23:
      result = "(vp::vx::Chat_Flavor)23]";
      break;
    case 24:
      result = "(vp::vx::Chat_Flavor)24]";
      break;
    case 25:
      result = "(vp::vx::Chat_Flavor)25]";
      break;
    case 26:
      result = "(vp::vx::Chat_Flavor)26]";
      break;
    case 27:
      result = "(vp::vx::Chat_Flavor)27]";
      break;
    case 28:
      result = "(vp::vx::Chat_Flavor)28]";
      break;
    case 29:
      result = "(vp::vx::Chat_Flavor)29]";
      break;
    case 30:
      result = "(vp::vx::Chat_Flavor)30]";
      break;
    case 31:
      result = "(vp::vx::Chat_Flavor)31]";
      break;
    case 32:
      result = "(vp::vx::Chat_Flavor)32]";
      break;
    case 33:
      result = "(vp::vx::Chat_Flavor)33]";
      break;
    case 34:
      result = "(vp::vx::Chat_Flavor)34]";
      break;
    case 35:
      result = "(vp::vx::Chat_Flavor)35]";
      break;
    case 36:
      result = "(vp::vx::Chat_Flavor)36]";
      break;
    case 37:
      result = "(vp::vx::Chat_Flavor)37]";
      break;
    case 38:
      result = "(vp::vx::Chat_Flavor)38]";
      break;
    case 39:
      result = "(vp::vx::Chat_Flavor)39]";
      break;
    case 40:
      result = "(vp::vx::Chat_Flavor)40]";
      break;
    case 41:
      result = "(vp::vx::Chat_Flavor)41]";
      break;
    case 42:
      result = "(vp::vx::Chat_Flavor)42]";
      break;
    case 43:
      result = "(vp::vx::Chat_Flavor)43]";
      break;
    case 44:
      result = "(vp::vx::Chat_Flavor)44]";
      break;
    case 45:
      result = "(vp::vx::Chat_Flavor)45]";
      break;
    case 46:
      result = "(vp::vx::Chat_Flavor)46]";
      break;
    case 47:
      result = "(vp::vx::Chat_Flavor)47]";
      break;
    case 48:
      result = "(vp::vx::Chat_Flavor)48]";
      break;
    case 49:
      result = "(vp::vx::Chat_Flavor)49]";
      break;
    case 50:
      result = "(vp::vx::Chat_Flavor)50]";
      break;
    case 51:
      result = "(vp::vx::Chat_Flavor)51]";
      break;
    case 52:
      result = "(vp::vx::Chat_Flavor)52]";
      break;
    case 53:
      result = "(vp::vx::Chat_Flavor)53]";
      break;
    case 54:
      result = "(vp::vx::Chat_Flavor)54]";
      break;
    case 55:
      result = "(vp::vx::Chat_Flavor)55]";
      break;
    case 56:
      result = "(vp::vx::Chat_Flavor)56]";
      break;
    case 57:
      result = "(vp::vx::Chat_Flavor)57]";
      break;
    case 58:
      result = "(vp::vx::Chat_Flavor)58]";
      break;
    case 59:
      result = "(vp::vx::Chat_Flavor)59]";
      break;
    case 60:
      result = "(vp::vx::Chat_Flavor)60]";
      break;
    case 61:
      result = "(vp::vx::Chat_Flavor)61]";
      break;
    case 62:
      result = "(vp::vx::Chat_Flavor)62]";
      break;
    case 63:
      result = "(vp::vx::Chat_Flavor)63]";
      break;
    case 64:
      result = "(vp::vx::Chat_Flavor)64]";
      break;
    case 65:
      result = "(vp::vx::Chat_Flavor)65]";
      break;
    case 66:
      result = "(vp::vx::Chat_Flavor)66]";
      break;
    case 67:
      result = "(vp::vx::Chat_Flavor)67]";
      break;
    case 68:
      result = "(vp::vx::Chat_Flavor)68]";
      break;
    case 69:
      result = "(vp::vx::Chat_Flavor)69]";
      break;
    case 70:
      result = "(vp::vx::Chat_Flavor)70]";
      break;
    case 71:
      result = "(vp::vx::Chat_Flavor)71]";
      break;
    case 72:
      result = "(vp::vx::Chat_Flavor)72]";
      break;
    case 73:
      result = "(vp::vx::Chat_Flavor)73]";
      break;
    case 74:
      result = "(vp::vx::Chat_Flavor)74]";
      break;
    case 75:
      result = "(vp::vx::Chat_Flavor)75]";
      break;
    case 76:
      result = "(vp::vx::Chat_Flavor)76]";
      break;
    case 77:
      result = "(vp::vx::Chat_Flavor)77]";
      break;
    case 78:
      result = "(vp::vx::Chat_Flavor)78]";
      break;
    case 79:
      result = "(vp::vx::Chat_Flavor)79]";
      break;
    case 80:
      result = "(vp::vx::Chat_Flavor)80]";
      break;
    case 81:
      result = "(vp::vx::Chat_Flavor)81]";
      break;
    case 82:
      result = "(vp::vx::Chat_Flavor)82]";
      break;
    case 83:
      result = "(vp::vx::Chat_Flavor)83]";
      break;
    case 84:
      result = "(vp::vx::Chat_Flavor)84]";
      break;
    case 85:
      result = "(vp::vx::Chat_Flavor)85]";
      break;
    case 86:
      result = "(vp::vx::Chat_Flavor)86]";
      break;
    case 87:
      result = "(vp::vx::Chat_Flavor)87]";
      break;
    case 88:
      result = "(vp::vx::Chat_Flavor)88]";
      break;
    case 89:
      result = "(vp::vx::Chat_Flavor)89]";
      break;
    case 90:
      result = "(vp::vx::Chat_Flavor)90]";
      break;
    case 91:
      result = "(vp::vx::Chat_Flavor)91]";
      break;
    case 92:
      result = "(vp::vx::Chat_Flavor)92]";
      break;
    case 93:
      result = "(vp::vx::Chat_Flavor)93]";
      break;
    case 94:
      result = "(vp::vx::Chat_Flavor)94]";
      break;
    case 95:
      result = "(vp::vx::Chat_Flavor)95]";
      break;
    case 96:
      result = "(vp::vx::Chat_Flavor)96]";
      break;
    case 97:
      result = "(vp::vx::Chat_Flavor)97]";
      break;
    case 98:
      result = "(vp::vx::Chat_Flavor)98]";
      break;
    case 99:
      result = "(vp::vx::Chat_Flavor)99]";
      break;
    case 100:
      result = "(vp::vx::Chat_Flavor)100]";
      break;
    case 101:
      result = "(vp::vx::Chat_Flavor)101]";
      break;
    case 102:
      result = "(vp::vx::Chat_Flavor)102]";
      break;
    case 103:
      result = "(vp::vx::Chat_Flavor)103]";
      break;
    case 104:
      result = "(vp::vx::Chat_Flavor)104]";
      break;
    case 105:
      result = "(vp::vx::Chat_Flavor)105]";
      break;
    case 106:
      result = "(vp::vx::Chat_Flavor)106]";
      break;
    case 107:
      result = "(vp::vx::Chat_Flavor)107]";
      break;
    case 108:
      result = "(vp::vx::Chat_Flavor)108]";
      break;
    case 109:
      result = "(vp::vx::Chat_Flavor)109]";
      break;
    case 110:
      result = "(vp::vx::Chat_Flavor)110]";
      break;
    case 111:
      result = "(vp::vx::Chat_Flavor)111]";
      break;
    case 112:
      result = "(vp::vx::Chat_Flavor)112]";
      break;
    case 113:
      result = "(vp::vx::Chat_Flavor)113]";
      break;
    case 114:
      result = "(vp::vx::Chat_Flavor)114]";
      break;
    case 115:
      result = "(vp::vx::Chat_Flavor)115]";
      break;
    case 116:
      result = "(vp::vx::Chat_Flavor)116]";
      break;
    case 117:
      result = "(vp::vx::Chat_Flavor)117]";
      break;
    case 118:
      result = "(vp::vx::Chat_Flavor)118]";
      break;
    case 119:
      result = "(vp::vx::Chat_Flavor)119]";
      break;
    case 120:
      result = "(vp::vx::Chat_Flavor)120]";
      break;
    case 121:
      result = "(vp::vx::Chat_Flavor)121]";
      break;
    case 122:
      result = "(vp::vx::Chat_Flavor)122]";
      break;
    case 123:
      result = "(vp::vx::Chat_Flavor)123]";
      break;
    case 124:
      result = "(vp::vx::Chat_Flavor)124]";
      break;
    case 125:
      result = "(vp::vx::Chat_Flavor)125]";
      break;
    case 126:
      result = "(vp::vx::Chat_Flavor)126]";
      break;
    case 127:
      result = "(vp::vx::Chat_Flavor)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::Chat_Flavor)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

uint64_t std::__function::__func<vp::vx::Control_Center_Manager::set_hidden_chat_flavors(vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_hidden_chat_flavors(vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>)::$_0>,void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B5BF8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<vp::vx::Control_Center_Manager::set_supported_chat_flavors(vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_supported_chat_flavors(vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>)::$_0>,void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>::operator()(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v2, 0, 0, 0);
}

void sub_2725F71AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v16 < 0)
  {
    operator delete(v15);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(&a15);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<vp::vx::Control_Center_Manager::set_supported_chat_flavors(vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_supported_chat_flavors(vp::vx::data_flow::State<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>)::$_0>,void ()(boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B5C40;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(vp::vx::Chat_Flavor const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(vp::vx::Chat_Flavor const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<vp::vx::Chat_Flavor>::register_listener(std::function<void ()(vp::vx::Chat_Flavor const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::Chat_Flavor>::register_listener(std::function<void ()(vp::vx::Chat_Flavor const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<vp::vx::Chat_Flavor>::register_listener(std::function<void ()(vp::vx::Chat_Flavor const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::Chat_Flavor>::register_listener(std::function<void ()(vp::vx::Chat_Flavor const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(vp::vx::Chat_Flavor const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<vp::vx::Chat_Flavor>::register_listener(std::function<void ()(vp::vx::Chat_Flavor const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::Chat_Flavor>::register_listener(std::function<void ()(vp::vx::Chat_Flavor const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5C88;
  std::__function::__value_func<void ()(vp::vx::Chat_Flavor const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<vp::vx::Chat_Flavor>::register_listener(std::function<void ()(vp::vx::Chat_Flavor const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::Chat_Flavor>::register_listener(std::function<void ()(vp::vx::Chat_Flavor const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5C88;
  std::__function::__value_func<void ()(vp::vx::Chat_Flavor const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<vp::vx::Control_Center_Manager::set_ideal_mic_mode(vp::vx::data_flow::State<vp::vx::Chat_Flavor>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_ideal_mic_mode(vp::vx::data_flow::State<vp::vx::Chat_Flavor>)::$_0>,void ()(vp::vx::Chat_Flavor const&)>::operator()(vp *a1, int *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 1);
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(v18, v3, "vp::vx::Control_Center_Manager]", 30);
    v6 = v19;
    if ((v19 & 0x80u) == 0)
    {
      v7 = v19;
    }

    else
    {
      v7 = v18[1];
    }

    v8 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (v6 >= 0)
      {
        v9 = v18;
      }

      else
      {
        v9 = v18[0];
      }

      v10 = vp::reflect_value_name_tag<vp::vx::Chat_Flavor,128ul>(v2);
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      v17 = v11;
      if (v11)
      {
        memmove(&__p, v10, v11);
      }

      *(&__p + v12) = 0;
      v13 = " ";
      if (!v7)
      {
        v13 = "";
      }

      *buf = 136315650;
      p_p = &__p;
      if (v17 < 0)
      {
        p_p = __p;
      }

      v21 = v9;
      v22 = 2080;
      v23 = v13;
      v24 = 2080;
      v25 = p_p;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEFAULT, "%s%sideal mic mode is %s", buf, 0x20u);
      if (v17 < 0)
      {
        operator delete(__p);
      }

      LOBYTE(v6) = v19;
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(v18[0]);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2725F7828(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<vp::vx::Control_Center_Manager::set_ideal_mic_mode(vp::vx::data_flow::State<vp::vx::Chat_Flavor>)::$_0,std::allocator<vp::vx::Control_Center_Manager::set_ideal_mic_mode(vp::vx::data_flow::State<vp::vx::Chat_Flavor>)::$_0>,void ()(vp::vx::Chat_Flavor const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881B5CD0;
  a2[1] = v2;
  return result;
}

uint64_t std::vector<vp::vx::data_flow::State_Listener>::__emplace_back_slow_path<vp::vx::data_flow::State_Listener>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 32 * v2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(v7 + 24) = v8;
  v9 = 32 * v2 + 32;
  v10 = *a1;
  v11 = a1[1];
  v12 = 32 * v2 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = v12;
    do
    {
      *v14 = *v13;
      *(v14 + 8) = *(v13 + 8);
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      v15 = *(v13 + 6);
      *(v13 + 6) = 0;
      *(v14 + 24) = v15;
      v13 = (v13 + 32);
      v14 += 32;
    }

    while (v13 != v11);
    do
    {
      vp::vx::data_flow::State_Listener::~State_Listener(v10);
      v10 = (v16 + 32);
    }

    while (v10 != v11);
  }

  v17 = *a1;
  *a1 = v12;
  *(a1 + 1) = v9;
  if (v17)
  {
    operator delete(v17);
  }

  return v9;
}

int *vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::create_listener(uint64_t a1, int *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  vp::vx::data_flow::State<void>::State(v7, a2);
  vp::vx::data_flow::State<void>::State(a1, v7);
  *(a1 + 24) = 0;
  if (*(a1 + 8))
  {
    std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>::__value_func[abi:ne200100](v8, a3);
    std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>::__value_func[abi:ne200100](v9, v8);
    v10 = 0;
    operator new();
  }

  result = vp::vx::data_flow::State<void>::~State(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725F7B38(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::compare_value(uint64_t a1, const __CFString ***a2, const __CFString ***a3)
{
  v3 = *a2;
  v4 = *a3;
  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**a2, *a3))
  {
    return 0;
  }

  v5 = v3[3];
  if (v5 != v4[3])
  {
    return 0;
  }

  v6 = v3[2];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = v4[2];
  v11 = v6 + v5;
  v12 = v6;
  v10 = v8;
  return boost::intrusive::algo_equal<boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::intrusive::algo_pred_equal>(&v12, &v11, &v10);
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::destroy_value(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(*a2 + 32))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate((v2 + 8), *(v2 + 16));
  }

  if (*v2)
  {
    CFRelease(*v2);
  }
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::move_value(uint64_t a1, void **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = **a3;
  *v4 = 0;
  return std::__tuple_leaf<1ul,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,false>::__tuple_leaf[abi:ne200100]((v3 + 1), v4 + 1);
}

uint64_t std::__tuple_leaf<1ul,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,false>::__tuple_leaf[abi:ne200100](uint64_t a1, void *a2)
{
  *a1 = *a2;
  *(a1 + 8) = a1 + 32;
  *(a1 + 16) = xmmword_2727565D0;
  boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl(a1, a2);
  return a1;
}

char *vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::copy_value(uint64_t a1, void **a2, CFTypeRef **a3)
{
  v3 = *a2;
  v4 = *a3;
  std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100](*a2, **a3);
  *(v3 + 8) = v4[1];
  *(v3 + 16) = v3 + 40;
  *(v3 + 24) = xmmword_2727565D0;
  v5 = v4[2];
  v6 = v4[3];
  v10 = v5;
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
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v9 = &v5[4 * v6];
  return boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::container::vec_iterator<vp::vx::Chat_Flavor*,true>>((v3 + 8), &v10, &v9);
}

void sub_2725F7ED4(_Unwind_Exception *a1)
{
  if (*(v1 + 32))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v2, *(v1 + 16));
  }

  std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::~__tuple_leaf(v1);
  _Unwind_Resume(a1);
}

void *std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100](void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

const void **std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::~__tuple_leaf(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 48, 8);
  *a2 = result;
  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5938;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5938;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E0_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EEclES12_(std::pmr *a1, uint64_t a2)
{
  if (*a2)
  {
    default_resource = std::pmr::get_default_resource(a1);
    v10 = &v12;
    v11 = xmmword_2727565D0;
    v4 = *(a2 + 16);
    std::end[abi:ne200100]<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>(&v8, v4, *(a2 + 24));
    p_default_resource = &default_resource;
    v5 = v8;
    while (v4 != v5)
    {
      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v13 = *v4;
      std::back_insert_iterator<boost::container::small_vector<vp::services::Control_Center::Chat_Flavor,3ul,vp::Allocator<vp::services::Control_Center::Chat_Flavor>,void>>::operator=[abi:ne200100](&p_default_resource, &v13);
      ++v4;
    }

    v6 = *(a1 + 1);
    v7 = *a2;
    if (v7)
    {
      CFRetain(v7);
    }

    p_default_resource = v7;
    (*(*v6 + 80))(v6, &p_default_resource, v10, v11);
    if (p_default_resource)
    {
      CFRelease(p_default_resource);
    }

    if (*(&v11 + 1))
    {
      boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&default_resource, v10);
    }
  }
}

void sub_2725F8374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&a10, a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::back_insert_iterator<boost::container::small_vector<vp::services::Control_Center::Chat_Flavor,3ul,vp::Allocator<vp::services::Control_Center::Chat_Flavor>,void>>::operator=[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  v6 = (*(*a1 + 8) + 4 * v5);
  if (v5 == *(*a1 + 24))
  {
    boost::container::vector<vp::services::Control_Center::Chat_Flavor,boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>,vp::services::Control_Center::Chat_Flavor*,vp::services::Control_Center::Chat_Flavor>>(&v8, v4, v6, a2);
    boost::container::vec_iterator<vp::services::Control_Center::Chat_Flavor *,false>::operator*(v8);
  }

  else
  {
    *v6 = *a2;
    *(v4 + 16) = v5 + 1;
  }

  return a1;
}

void *boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

_DWORD *boost::container::vector<vp::services::Control_Center::Chat_Flavor,boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>,vp::services::Control_Center::Chat_Flavor*,vp::services::Control_Center::Chat_Flavor>>(void *a1, uint64_t a2, char *a3, _DWORD *a4)
{
  v4 = *(a2 + 24);
  if (v4 != *(a2 + 16))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x3FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  v9 = *(a2 + 8);
  if (!(v4 >> 61))
  {
    if (v4 + 1 > 8 * v4 / 5)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = 8 * v4 / 5;
    }

    goto LABEL_16;
  }

  if (v4 >> 61 > 4)
  {
    v11 = -1;
  }

  else
  {
    v11 = 8 * v4;
  }

  v12 = v4 + 1;
  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  v10 = v12 > v11 ? v4 + 1 : v11;
  if (v12 >> 62)
  {
LABEL_26:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

LABEL_16:
  result = (*(**a2 + 16))();
  v14 = result;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = result;
  if (v15)
  {
    v17 = result;
    if (v15 != a3)
    {
      result = memmove(result, *(a2 + 8), a3 - v15);
      v17 = (v14 + a3 - v15);
    }
  }

  *v17 = *a4;
  if (a3)
  {
    v18 = &v15[4 * v16];
    if (v18 != a3)
    {
      result = memmove(v17 + 1, a3, v18 - a3);
    }
  }

  if (v15)
  {
    v19 = *(a2 + 24);
    result = boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 8));
  }

  v20 = *(a2 + 16) + 1;
  *(a2 + 8) = v14;
  *(a2 + 16) = v20;
  *(a2 + 24) = v10;
  *a1 = &a3[v14 - v9];
  return result;
}

uint64_t boost::container::vec_iterator<vp::services::Control_Center::Chat_Flavor *,false>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E0_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E0_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E0_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B5A10;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E0_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EED0Ev(void *a1)
{
  *a1 = &unk_2881B5A10;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E0_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EED1Ev(void *a1)
{
  *a1 = &unk_2881B5A10;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISD_EEvEEEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSK_EUlRKT_RKT0_E0_JS9_SG_EEEDaOSO_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_SG_EEERNS4_13State_ManagerESO_S13_EUlPPKNS4_5ValueEPS1B_E_NS_9allocatorIS1G_EEFvS1E_S1F_EEclEOS1E_OS1F_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = vp::vx::data_flow::Value::view_storage(v3[1]);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN10applesauce2CF9StringRefEN5boost9container12small_vectorIN2vp2vx11Chat_FlavorELm3ENS9_9AllocatorISB_EEvEEEEC2B8ne200100IJLm0ELm1EEJS5_SE_EJEJEJRKS5_RKSE_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSM_IJDpT2_EEEDpOT3_(&cf, *v6, v7);
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v8);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  *storage = cf;
  cf = 0;
  std::__tuple_leaf<1ul,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,false>::__tuple_leaf[abi:ne200100]((storage + 1), v11);
  if (v11[3])
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v11, v11[1]);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>::~tuple(uint64_t a1)
{
  if (*(a1 + 32))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate((a1 + 8), *(a1 + 16));
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN10applesauce2CF9StringRefEN5boost9container12small_vectorIN2vp2vx11Chat_FlavorELm3ENS9_9AllocatorISB_EEvEEEEC2B8ne200100IJLm0ELm1EEJS5_SE_EJEJEJRKS5_RKSE_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSM_IJDpT2_EEEDpOT3_(void *a1, const void *a2, void *a3)
{
  v5 = std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::StringRef const&,0>(a1, a2);
  v5[1] = *a3;
  v5[2] = v5 + 5;
  *(v5 + 3) = xmmword_2727565D0;
  v6 = a3[1];
  v7 = a3[2];
  v11 = v6;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v10 = &v6[4 * v7];
  boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::container::vec_iterator<vp::vx::Chat_Flavor*,true>>(v5 + 8, &v11, &v10);
  return a1;
}

void sub_2725F89C4(_Unwind_Exception *a1)
{
  if (*(v1 + 32))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v2, *(v1 + 16));
  }

  std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::~__tuple_leaf(v1);
  _Unwind_Resume(a1);
}

void *std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::StringRef const&,0>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISD_EEvEEEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSK_EUlRKT_RKT0_E0_JS9_SG_EEEDaOSO_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_SG_EEERNS4_13State_ManagerESO_S13_EUlPPKNS4_5ValueEPS1B_E_NS_9allocatorIS1G_EEFvS1E_S1F_EE7__cloneEPNS0_6__baseIS1J_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B59C8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EEclES12_(std::pmr *a1, uint64_t a2)
{
  if (*a2)
  {
    default_resource = std::pmr::get_default_resource(a1);
    v10 = &v12;
    v11 = xmmword_2727565D0;
    v4 = *(a2 + 16);
    std::end[abi:ne200100]<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>(&v8, v4, *(a2 + 24));
    p_default_resource = &default_resource;
    v5 = v8;
    while (v4 != v5)
    {
      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v13 = *v4;
      std::back_insert_iterator<boost::container::small_vector<vp::services::Control_Center::Chat_Flavor,3ul,vp::Allocator<vp::services::Control_Center::Chat_Flavor>,void>>::operator=[abi:ne200100](&p_default_resource, &v13);
      ++v4;
    }

    v6 = *(a1 + 1);
    v7 = *a2;
    if (v7)
    {
      CFRetain(v7);
    }

    p_default_resource = v7;
    (*(*v6 + 72))(v6, &p_default_resource, v10, v11);
    if (p_default_resource)
    {
      CFRelease(p_default_resource);
    }

    if (*(&v11 + 1))
    {
      boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&default_resource, v10);
    }
  }
}

void sub_2725F8BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    boost::container::small_vector_allocator<vp::services::Control_Center::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&a10, a11);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B5980;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EED0Ev(void *a1)
{
  *a1 = &unk_2881B5980;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_E_JN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISL_EEvEEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSR_5StateIT0_EEEUlRKNS_5tupleIJSH_SO_EEEE_NS_9allocatorIS13_EEFvS12_EED1Ev(void *a1)
{
  *a1 = &unk_2881B5980;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISD_EEvEEEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSK_EUlRKT_RKT0_E_JS9_SG_EEEDaOSO_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_SG_EEERNS4_13State_ManagerESO_S13_EUlPPKNS4_5ValueEPS1B_E_NS_9allocatorIS1G_EEFvS1E_S1F_EEclEOS1E_OS1F_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = vp::vx::data_flow::Value::view_storage(v3[1]);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN10applesauce2CF9StringRefEN5boost9container12small_vectorIN2vp2vx11Chat_FlavorELm3ENS9_9AllocatorISB_EEvEEEEC2B8ne200100IJLm0ELm1EEJS5_SE_EJEJEJRKS5_RKSE_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSM_IJDpT2_EEEDpOT3_(&cf, *v6, v7);
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v8);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  *storage = cf;
  cf = 0;
  std::__tuple_leaf<1ul,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,false>::__tuple_leaf[abi:ne200100]((storage + 1), v11);
  if (v11[3])
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v11, v11[1]);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEN5boost9container12small_vectorINS3_11Chat_FlavorELm3ENS2_9AllocatorISD_EEvEEEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSK_EUlRKT_RKT0_E_JS9_SG_EEEDaOSO_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_SG_EEERNS4_13State_ManagerESO_S13_EUlPPKNS4_5ValueEPS1B_E_NS_9allocatorIS1G_EEFvS1E_S1F_EE7__cloneEPNS0_6__baseIS1J_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B5888;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,BOOL>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,BOOL>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef,BOOL>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,BOOL>>::compare_value(uint64_t a1, const __CFString ***a2, const __CFString ***a3)
{
  v3 = *a2;
  v4 = *a3;
  return applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**a2, *a3) == kCFCompareEqualTo && *(v3 + 8) == *(v4 + 8);
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,BOOL>>::destroy_value(uint64_t a1, const void ***a2)
{
  v2 = **a2;
  if (v2)
  {
    CFRelease(v2);
  }
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,BOOL>>::move_value(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = **a3;
  *v4 = 0;
  *(v3 + 8) = *(v4 + 8);
}

void *vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,BOOL>>::copy_value(uint64_t a1, void **a2, CFTypeRef **a3)
{
  v3 = *a3;
  result = std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100](*a2, **a3);
  *(result + 8) = *(v3 + 8);
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,BOOL>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,BOOL>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 16, 8);
  *a2 = result;
  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,BOOL>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,BOOL>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,BOOL>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,BOOL>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B57F8;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,BOOL>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,BOOL>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B57F8;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,BOOL> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_bE_JN10applesauce2CF9StringRefEbEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSH_5StateIT0_EEEUlRKNS_5tupleIJSE_bEEEE_NS_9allocatorIST_EEFvSS_EEclESS_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 8);
    CFRetain(*a2);
    cf = v2;
    (*(*v4 + 64))(v4, &cf, v3);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_bE_JN10applesauce2CF9StringRefEbEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSH_5StateIT0_EEEUlRKNS_5tupleIJSE_bEEEE_NS_9allocatorIST_EEFvSS_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_bE_JN10applesauce2CF9StringRefEbEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSH_5StateIT0_EEEUlRKNS_5tupleIJSE_bEEEE_NS_9allocatorIST_EEFvSS_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_bE_JN10applesauce2CF9StringRefEbEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSH_5StateIT0_EEEUlRKNS_5tupleIJSE_bEEEE_NS_9allocatorIST_EEFvSS_EE7__cloneEPNS0_6__baseISW_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B5840;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_bE_JN10applesauce2CF9StringRefEbEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSH_5StateIT0_EEEUlRKNS_5tupleIJSE_bEEEE_NS_9allocatorIST_EEFvSS_EED0Ev(void *a1)
{
  *a1 = &unk_2881B5840;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_bE_JN10applesauce2CF9StringRefEbEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSH_5StateIT0_EEEUlRKNS_5tupleIJSE_bEEEE_NS_9allocatorIST_EEFvSS_EED1Ev(void *a1)
{
  *a1 = &unk_2881B5840;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEbEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSD_EUlRKT_bE_JS9_bEEEDaOSH_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_bEEERNS4_13State_ManagerESH_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v3[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v8 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v8 = 0;
  }

  std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::StringRef const&,0>(&v11, *v6);
  v12 = *v8;
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v9);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef,BOOL>>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v11;
  *(result + 8) = v12;
  return result;
}

const void **std::tuple<applesauce::CF::StringRef,BOOL>::~tuple(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEbEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSD_EUlRKT_bE_JS9_bEEEDaOSH_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_bEEERNS4_13State_ManagerESH_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B5748;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t _ZZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS0_27Control_Center_Manager_Impl9configureERS1_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JN10applesauce2CF9StringRefENS0_11Chat_FlavorEN5boost9container12small_vectorISN_Lm3ENS_9AllocatorISN_EEvEEbbSN_EEEDaOS5_NS0_9data_flow16Call_ImmediatelyEDpRKNSW_5StateIT0_EEENUlRKNSt3__15tupleIJSM_SN_ST_bbSN_EEEE_D2Ev(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::compare_value(uint64_t a1, const __CFString ***a2, const __CFString ***a3)
{
  v3 = *a2;
  v4 = *a3;
  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**a2, *a3))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v3 + 2) == *(v4 + 2);
  }

  if (!v5)
  {
    return 0;
  }

  v6 = v3[4];
  if (v6 != v4[4])
  {
    return 0;
  }

  v7 = v3[3];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v9 = v4[3];
  v13 = v7 + v6;
  v14 = v7;
  v12 = v9;
  v10 = boost::intrusive::algo_equal<boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::intrusive::algo_pred_equal>(&v14, &v13, &v12);
  result = 0;
  if (v10 && *(v3 + 56) == *(v4 + 56))
  {
    if (*(v3 + 57) == *(v4 + 57))
    {
      return *(v3 + 15) == *(v4 + 15);
    }

    return 0;
  }

  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::destroy_value(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(*a2 + 40))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate((v2 + 16), *(v2 + 24));
  }

  if (*v2)
  {
    CFRelease(*v2);
  }
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::move_value(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = **a3;
  *v4 = 0;
  *(v3 + 8) = *(v4 + 2);
  result = std::__tuple_leaf<2ul,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,false>::__tuple_leaf[abi:ne200100](v3 + 16, v4 + 2);
  *(v3 + 56) = *(v4 + 56);
  *(v3 + 57) = *(v4 + 57);
  *(v3 + 60) = *(v4 + 15);
  return result;
}

uint64_t std::__tuple_leaf<2ul,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,false>::__tuple_leaf[abi:ne200100](uint64_t a1, void *a2)
{
  *a1 = *a2;
  *(a1 + 8) = a1 + 32;
  *(a1 + 16) = xmmword_2727565D0;
  boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl(a1, a2);
  return a1;
}

char *vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::copy_value(uint64_t a1, void **a2, CFTypeRef **a3)
{
  v3 = *a2;
  v4 = *a3;
  std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100](*a2, **a3);
  *(v3 + 8) = *(v4 + 2);
  *(v3 + 16) = v4[2];
  *(v3 + 24) = v3 + 48;
  *(v3 + 32) = xmmword_2727565D0;
  v5 = v4[3];
  v6 = v4[4];
  v10 = v5;
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
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v9 = &v5[4 * v6];
  result = boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::container::vec_iterator<vp::vx::Chat_Flavor*,true>>((v3 + 16), &v10, &v9);
  *(v3 + 56) = *(v4 + 56);
  *(v3 + 57) = *(v4 + 57);
  *(v3 + 60) = *(v4 + 15);
  return result;
}

void sub_2725F9CF8(_Unwind_Exception *a1)
{
  if (*(v1 + 40))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v2, *(v1 + 24));
  }

  std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::~__tuple_leaf(v1);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 64, 8);
  *a2 = result;
  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5688;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5688;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JN10applesauce2CF9StringRefENS3_11Chat_FlavorEN5boost9container12small_vectorISQ_Lm3ENS2_9AllocatorISQ_EEvEEbbSQ_EEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSZ_5StateIT0_EEEUlRKNS_5tupleIJSP_SQ_SW_bbSQ_EEEE_NS_9allocatorIS1B_EEFvS1A_EEclES1A_(void *a1, uint64_t a2)
{
  if (*a2)
  {
    if (*(a2 + 57))
    {
      v4 = *(a2 + 60);
    }

    else if (*(a2 + 56))
    {
      v4 = 2;
    }

    else
    {
      v5 = *(a2 + 24);
      v6 = *(a2 + 32);
      if (!v5 && v6)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (v6)
      {
        v4 = *(a2 + 8);
        v7 = 4 * v6;
        v8 = *(a2 + 24);
        while (1)
        {
          if (!v8)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          if (*v8 == v4)
          {
            break;
          }

          ++v8;
          v7 -= 4;
          if (!v7)
          {
            if (*(a1[1] + 504) != 2)
            {
              goto LABEL_15;
            }

            v4 = *v5;
            break;
          }
        }
      }

      else
      {
LABEL_15:
        v4 = 0;
      }
    }

    v9 = a1[3];
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = a1[2];
        if (v12)
        {
          v13 = *(v12 + 32);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 1174405120;
          block[2] = ___ZZN2vp2vx27Control_Center_Manager_Impl9configureERNS0_29Voice_Processor_State_ManagerEENKUlRKT_RKT0_RKT1_RKT2_T3_T4_E_clIN10applesauce2CF9StringRefENS0_11Chat_FlavorEN5boost9container12small_vectorISN_Lm3ENS_9AllocatorISN_EEvEEbbSN_EEDaS6_S9_SC_SF_SG_SH__block_invoke;
          block[3] = &__block_descriptor_tmp_58;
          v19 = v4;
          block[4] = v12;
          v18 = v11;
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          dispatch_async(v13, block);
          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    v14 = a1[4];
    v15 = *a2;
    if (v15)
    {
      CFRetain(v15);
    }

    cf = v15;
    (*(*v14 + 48))(v14, &cf, v4);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void ___ZZN2vp2vx27Control_Center_Manager_Impl9configureERNS0_29Voice_Processor_State_ManagerEENKUlRKT_RKT0_RKT1_RKT2_T3_T4_E_clIN10applesauce2CF9StringRefENS0_11Chat_FlavorEN5boost9container12small_vectorISN_Lm3ENS_9AllocatorISN_EEvEEbbSN_EEDaS6_S9_SC_SF_SG_SH__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = vp::vx::data_flow::State<void>::State(&__dst, (*(a1 + 32) + 256));
  default_resource = std::pmr::get_default_resource(v3);
  v26 = 0;
  v27 = 0;
  __p = default_resource;
  v21 = __dst;
  *buf = v23;
  *&buf[8] = &v21;
  *&buf[16] = &__p;
  vp::vx::data_flow::Engine::do_with_shared_state_lock(v23, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, buf);
  v5 = *vp::vx::data_flow::Value::view_storage(&__p);
  vp::vx::data_flow::Value::~Value(&__p);
  v6 = vp::vx::data_flow::State<void>::~State(&__dst);
  if (v2 != v5)
  {
    v7 = *(a1 + 32);
    log = vp::get_log(v6);
    v9 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      log_context_info = vp::get_log_context_info(&__p, v7, "vp::vx::Control_Center_Manager_Impl]", 35);
      v11 = SHIBYTE(v27);
      if (v27 >= 0)
      {
        v12 = HIBYTE(v27);
      }

      else
      {
        v12 = v26;
      }

      v13 = vp::get_log(log_context_info);
      v9 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v11 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v15 = vp::reflect_value_name_tag<vp::vx::Chat_Flavor,128ul>(v2);
        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v17 = v16;
        if (v16 >= 0x17)
        {
          operator new();
        }

        v24 = v16;
        if (v16)
        {
          memmove(&__dst, v15, v16);
        }

        *(&__dst + v17) = 0;
        v18 = " ";
        if (!v12)
        {
          v18 = "";
        }

        *buf = 136315650;
        p_dst = &__dst;
        if (v24 < 0)
        {
          p_dst = __dst;
        }

        *&buf[4] = p_p;
        *&buf[12] = 2080;
        *&buf[14] = v18;
        *&buf[22] = 2080;
        v29 = p_dst;
        _os_log_impl(&dword_2724B4000, v13, OS_LOG_TYPE_DEFAULT, "%s%sactive chat flavor is %s", buf, 0x20u);
        if (v24 < 0)
        {
          operator delete(__dst);
        }

        LOBYTE(v11) = HIBYTE(v27);
      }

      if ((v11 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }

    *buf = std::pmr::get_default_resource(v9);
    *&buf[8] = 0;
    *&buf[16] = &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id;
    *vp::vx::data_flow::Value::allocate_storage(buf) = v2;
    vp::vx::data_flow::State<void>::set_value((v7 + 256), buf);
    vp::vx::data_flow::Value::~Value(buf);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2725FA494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (v18 < 0)
  {
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c63_ZTSNSt3__110shared_ptrIN2vp2vx27Control_Center_Manager_ImplEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_e8_32c63_ZTSNSt3__110shared_ptrIN2vp2vx27Control_Center_Manager_ImplEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JN10applesauce2CF9StringRefENS3_11Chat_FlavorEN5boost9container12small_vectorISQ_Lm3ENS2_9AllocatorISQ_EEvEEbbSQ_EEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSZ_5StateIT0_EEEUlRKNS_5tupleIJSP_SQ_SW_bbSQ_EEEE_NS_9allocatorIS1B_EEFvS1A_EE18destroy_deallocateEv(void *a1)
{
  _ZNSt3__110__function12__alloc_funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JN10applesauce2CF9StringRefENS3_11Chat_FlavorEN5boost9container12small_vectorISQ_Lm3ENS2_9AllocatorISQ_EEvEEbbSQ_EEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSZ_5StateIT0_EEEUlRKNS_5tupleIJSP_SQ_SW_bbSQ_EEEE_NS_9allocatorIS1B_EEFvS1A_EE7destroyB8ne200100Ev(a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function12__alloc_funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JN10applesauce2CF9StringRefENS3_11Chat_FlavorEN5boost9container12small_vectorISQ_Lm3ENS2_9AllocatorISQ_EEvEEbbSQ_EEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSZ_5StateIT0_EEEUlRKNS_5tupleIJSP_SQ_SW_bbSQ_EEEE_NS_9allocatorIS1B_EEFvS1A_EE7destroyB8ne200100Ev(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JN10applesauce2CF9StringRefENS3_11Chat_FlavorEN5boost9container12small_vectorISQ_Lm3ENS2_9AllocatorISQ_EEvEEbbSQ_EEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSZ_5StateIT0_EEEUlRKNS_5tupleIJSP_SQ_SW_bbSQ_EEEE_NS_9allocatorIS1B_EEFvS1A_EE7__cloneEPNS0_6__baseIS1E_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B56D0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JN10applesauce2CF9StringRefENS3_11Chat_FlavorEN5boost9container12small_vectorISQ_Lm3ENS2_9AllocatorISQ_EEvEEbbSQ_EEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSZ_5StateIT0_EEEUlRKNS_5tupleIJSP_SQ_SW_bbSQ_EEEE_NS_9allocatorIS1B_EEFvS1A_EED0Ev(void *a1)
{
  *a1 = &unk_2881B56D0;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JN10applesauce2CF9StringRefENS3_11Chat_FlavorEN5boost9container12small_vectorISQ_Lm3ENS2_9AllocatorISQ_EEvEEbbSQ_EEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSZ_5StateIT0_EEEUlRKNS_5tupleIJSP_SQ_SW_bbSQ_EEEE_NS_9allocatorIS1B_EEFvS1A_EED1Ev(void *a1)
{
  *a1 = &unk_2881B56D0;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefENS3_11Chat_FlavorEN5boost9container12small_vectorISA_Lm3ENS2_9AllocatorISA_EEvEEbbSA_EEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSK_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JS9_SA_SG_bbSA_EEEDaOSO_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_SA_SG_bbSA_EEERNS4_13State_ManagerESO_S1B_EUlPPKNS4_5ValueEPS1J_E_NS_9allocatorIS1O_EEFvS1M_S1N_EEclEOS1M_OS1N_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v3[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id)
  {
    v8 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v3[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>>(void)::s_type_id)
  {
    v10 = vp::vx::data_flow::Value::view_storage(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = v3[3];
  if (v11[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v12 = vp::vx::data_flow::Value::view_storage(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = v3[4];
  if (v13[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v14 = vp::vx::data_flow::Value::view_storage(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = vp::vx::data_flow::Value::view_storage(v3[5]);
  std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::StringRef const&,0>(&cf, *v6);
  v21 = *v8;
  v22 = *v10;
  v23 = &v25;
  v24 = xmmword_2727565D0;
  v16 = v10[1];
  v17 = v10[2];
  v30 = v16;
  if (!v16 && v17)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v29 = &v16[4 * v17];
  boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::container::vec_iterator<vp::vx::Chat_Flavor*,true>>(&v22, &v30, &v29);
  v26 = *v12;
  v27 = *v14;
  v28 = *v15;
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v18);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  *storage = cf;
  cf = 0;
  *(storage + 8) = v21;
  std::__tuple_leaf<2ul,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,false>::__tuple_leaf[abi:ne200100](storage + 16, &v22);
  *(storage + 56) = v26;
  *(storage + 57) = v27;
  *(storage + 60) = v28;
  if (*(&v24 + 1))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&v22, v23);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t std::tuple<applesauce::CF::StringRef,vp::vx::Chat_Flavor,boost::container::small_vector<vp::vx::Chat_Flavor,3ul,vp::Allocator<vp::vx::Chat_Flavor>,void>,BOOL,BOOL,vp::vx::Chat_Flavor>::~tuple(uint64_t a1)
{
  if (*(a1 + 40))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate((a1 + 16), *(a1 + 24));
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefENS3_11Chat_FlavorEN5boost9container12small_vectorISA_Lm3ENS2_9AllocatorISA_EEvEEbbSA_EEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSK_EUlRKT_RKT0_RKT1_RKT2_T3_T4_E_JS9_SA_SG_bbSA_EEEDaOSO_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_SA_SG_bbSA_EEERNS4_13State_ManagerESO_S1B_EUlPPKNS4_5ValueEPS1J_E_NS_9allocatorIS1O_EEFvS1M_S1N_EE7__cloneEPNS0_6__baseIS1R_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B55D8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,unsigned int>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,unsigned int>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef,unsigned int>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,unsigned int>>::compare_value(uint64_t a1, const __CFString ***a2, const __CFString ***a3)
{
  v3 = *a2;
  v4 = *a3;
  return applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**a2, *a3) == kCFCompareEqualTo && *(v3 + 2) == *(v4 + 2);
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,unsigned int>>::destroy_value(uint64_t a1, const void ***a2)
{
  v2 = **a2;
  if (v2)
  {
    CFRelease(v2);
  }
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,unsigned int>>::move_value(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = **a3;
  *v4 = 0;
  *(v3 + 8) = *(v4 + 2);
}

void *vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,unsigned int>>::copy_value(uint64_t a1, void **a2, CFTypeRef **a3)
{
  v3 = *a3;
  result = std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100](*a2, **a3);
  *(result + 2) = *(v3 + 2);
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,unsigned int>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef,unsigned int>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 16, 8);
  *a2 = result;
  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,unsigned int>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,unsigned int>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,unsigned int>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,unsigned int>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5518;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,unsigned int>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef,unsigned int>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5518;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef,unsigned int> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_T0_E_JN10applesauce2CF9StringRefEjEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSG_5StateIT0_EEEUlRKNS_5tupleIJSD_jEEEE_NS_9allocatorISS_EEFvSR_EEclESR_(uint64_t a1, CFTypeRef *a2)
{
  v2 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = *(a1 + 8);
        if (v7)
        {
          v8 = *(v7 + 32);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 1174405120;
          block[2] = ___ZZN2vp2vx27Control_Center_Manager_Impl9configureERNS0_29Voice_Processor_State_ManagerEENKUlT_T0_E_clIN10applesauce2CF9StringRefEjEEDaS4_S5__block_invoke;
          block[3] = &__block_descriptor_tmp_41;
          block[4] = v7;
          v10 = v5;
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
          CFRetain(v2);
          cf = v2;
          dispatch_async(v8, block);
          if (cf)
          {
            CFRelease(cf);
          }

          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }

    CFRelease(v2);
  }
}

void ___ZZN2vp2vx27Control_Center_Manager_Impl9configureERNS0_29Voice_Processor_State_ManagerEENKUlT_T0_E_clIN10applesauce2CF9StringRefEjEEDaS4_S5__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (v3)
  {
    CFRetain(*(a1 + 48));
  }

  vp::vx::Control_Center_Manager_Impl::update_preferred_chat_flavor_value(v2, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (v5)
  {
    CFRetain(v5);
  }

  vp::vx::Control_Center_Manager_Impl::update_automatic_mic_mode_is_enabled_value(v4, v5);
  if (v5)
  {
    CFRelease(v5);
  }
}

void __destroy_helper_block_e8_32c63_ZTSNSt3__110shared_ptrIN2vp2vx27Control_Center_Manager_ImplEEE48c31_ZTSN10applesauce2CF9StringRefE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_e8_32c63_ZTSNSt3__110shared_ptrIN2vp2vx27Control_Center_Manager_ImplEEE48c31_ZTSN10applesauce2CF9StringRefE(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 40);
  result[4] = *(a2 + 32);
  result[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 48);
  if (v4)
  {
    result = CFRetain(*(a2 + 48));
  }

  v2[6] = v4;
  return result;
}

void vp::vx::Control_Center_Manager_Impl::update_preferred_chat_flavor_value(uint64_t a1, const void *a2)
{
  if (a2)
  {
    CFRetain(a2);
    v4 = *(a1 + 16);
    CFRetain(a2);
  }

  else
  {
    v4 = *(a1 + 16);
  }

  cf[0] = a2;
  v5 = (*(*v4 + 24))(v4, cf);
  v6 = cf[0];
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  cf[0] = std::pmr::get_default_resource(v6);
  cf[1] = 0;
  cf[2] = &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(cf) = v5;
  vp::vx::data_flow::State<void>::set_value((a1 + 232), cf);
  vp::vx::data_flow::Value::~Value(cf);
}

void sub_2725FB318(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::data_flow::Value::~Value(va);
  _Unwind_Resume(a1);
}

void vp::vx::Control_Center_Manager_Impl::update_automatic_mic_mode_is_enabled_value(uint64_t a1, const void *a2)
{
  if (a2)
  {
    CFRetain(a2);
    v4 = *(a1 + 16);
    CFRetain(a2);
  }

  else
  {
    v4 = *(a1 + 16);
  }

  cf[0] = a2;
  v5 = (*(*v4 + 88))(v4, cf);
  v6 = cf[0];
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  cf[0] = std::pmr::get_default_resource(v6);
  cf[1] = 0;
  cf[2] = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(cf) = v5;
  vp::vx::data_flow::State<void>::set_value((a1 + 136), cf);
  vp::vx::data_flow::Value::~Value(cf);
}

void sub_2725FB410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::data_flow::Value::~Value(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_T0_E_JN10applesauce2CF9StringRefEjEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSG_5StateIT0_EEEUlRKNS_5tupleIJSD_jEEEE_NS_9allocatorISS_EEFvSR_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_T0_E_JN10applesauce2CF9StringRefEjEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSG_5StateIT0_EEEUlRKNS_5tupleIJSD_jEEEE_NS_9allocatorISS_EEFvSR_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_T0_E_JN10applesauce2CF9StringRefEjEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSG_5StateIT0_EEEUlRKNS_5tupleIJSD_jEEEE_NS_9allocatorISS_EEFvSR_EE7__cloneEPNS0_6__baseISV_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B5560;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_T0_E_JN10applesauce2CF9StringRefEjEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSG_5StateIT0_EEEUlRKNS_5tupleIJSD_jEEEE_NS_9allocatorISS_EEFvSR_EED0Ev(void *a1)
{
  *a1 = &unk_2881B5560;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_T0_E_JN10applesauce2CF9StringRefEjEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSG_5StateIT0_EEEUlRKNS_5tupleIJSD_jEEEE_NS_9allocatorISS_EEFvSR_EED1Ev(void *a1)
{
  *a1 = &unk_2881B5560;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEjEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSD_EUlT_T0_E_JS9_jEEEDaOSH_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_jEEERNS4_13State_ManagerESH_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v3[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v8 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v8 = 0;
  }

  std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::StringRef const&,0>(&v11, *v6);
  v12 = *v8;
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v9);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef,unsigned int>>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v11;
  *(result + 8) = v12;
  return result;
}

const void **std::tuple<applesauce::CF::StringRef,unsigned int>::~tuple(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEjEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSD_EUlT_T0_E_JS9_jEEEDaOSH_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_jEEERNS4_13State_ManagerESH_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B5468;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef>>::destroy_value(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::tuple<applesauce::CF::StringRef>>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B52E8;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::tuple<applesauce::CF::StringRef>>::register_listener(std::function<void ()(std::tuple<applesauce::CF::StringRef> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B52E8;
  std::__function::__value_func<void ()(std::tuple<applesauce::CF::StringRef> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_E_JN10applesauce2CF9StringRefEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSF_5StateIT0_EEEUlRKNS_5tupleIJSC_EEEE_NS_9allocatorISR_EEFvSQ_EEclESQ_(uint64_t a1, CFTypeRef *a2)
{
  cf[9] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
    v30[0] = v3;
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = *(a1 + 8);
        if (v7)
        {
          v8 = std::hash<applesauce::CF::StringRef>::operator()(v3);
          v9 = v8;
          v10 = *(v7 + 432);
          if (v10)
          {
            v11 = vcnt_s8(v10);
            v11.i16[0] = vaddlv_u8(v11);
            v12 = v11.u32[0];
            if (v11.u32[0] > 1uLL)
            {
              v2 = v8;
              if (v8 >= v10)
              {
                v2 = v8 % v10;
              }
            }

            else
            {
              v2 = (v10 - 1) & v8;
            }

            v13 = *(*(v7 + 424) + 8 * v2);
            if (v13)
            {
              for (i = *v13; i; i = *i)
              {
                v15 = i[1];
                if (v15 == v9)
                {
                  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(i[2], v30) == kCFCompareEqualTo)
                  {
                    goto LABEL_44;
                  }
                }

                else
                {
                  if (v12 > 1)
                  {
                    if (v15 >= v10)
                    {
                      v15 %= v10;
                    }
                  }

                  else
                  {
                    v15 &= v10 - 1;
                  }

                  if (v15 != v2)
                  {
                    break;
                  }
                }
              }
            }
          }

          v16 = (*(**(v7 + 456) + 16))(*(v7 + 456), 24, 8);
          *v16 = 0;
          v16[1] = v9;
          CFRetain(v3);
          v16[2] = v3;
          v17 = (*(v7 + 464) + 1);
          v18 = *(v7 + 472);
          if (!v10 || (v18 * v10) < v17)
          {
            v19 = 1;
            if (v10 >= 3)
            {
              v19 = (v10 & (v10 - 1)) != 0;
            }

            v20 = v19 | (2 * v10);
            v21 = vcvtps_u32_f32(v17 / v18);
            if (v20 <= v21)
            {
              v22 = v21;
            }

            else
            {
              v22 = v20;
            }

            std::__hash_table<applesauce::CF::StringRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<applesauce::CF::StringRef>>::__rehash<true>(v7 + 424, v22);
            v10 = *(v7 + 432);
            if ((v10 & (v10 - 1)) != 0)
            {
              if (v9 >= v10)
              {
                v2 = v9 % v10;
              }

              else
              {
                v2 = v9;
              }
            }

            else
            {
              v2 = (v10 - 1) & v9;
            }
          }

          v23 = *(v7 + 424);
          v24 = *(v23 + 8 * v2);
          if (v24)
          {
            *v16 = *v24;
          }

          else
          {
            *v16 = *(v7 + 448);
            *(v7 + 448) = v16;
            *(v23 + 8 * v2) = v7 + 448;
            if (!*v16)
            {
LABEL_43:
              ++*(v7 + 464);
LABEL_44:
              CFRetain(v3);
              v30[1] = v3;
              (*(**(v7 + 16) + 32))(cf);
              v26 = *(v7 + 408);
              v27 = cf[0];
              if (cf[0])
              {
                CFRetain(cf[0]);
              }

              v30[9] = v27;
              CFRetain(v3);
              v30[6] = v3;
              v30[7] = *v7;
              v28 = *(v7 + 8);
              v30[8] = v28;
              if (v28)
              {
                atomic_fetch_add_explicit((v28 + 16), 1uLL, memory_order_relaxed);
              }

              cf[8] = 0;
              operator new();
            }

            v25 = *(*v16 + 8);
            if ((v10 & (v10 - 1)) != 0)
            {
              if (v25 >= v10)
              {
                v25 %= v10;
              }
            }

            else
            {
              v25 &= v10 - 1;
            }

            v24 = (*(v7 + 424) + 8 * v25);
          }

          *v24 = v16;
          goto LABEL_43;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }

    CFRelease(v3);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_2725FC13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  std::pmr::polymorphic_allocator<std::__hash_node<applesauce::CF::StringRef,void *>>::destroy[abi:ne200100]<applesauce::CF::StringRef>(*(v10 + 16));
  std::allocator_traits<vp::Allocator<std::__hash_node<applesauce::CF::StringRef,void *>>>::deallocate[abi:ne200100](*(v11 + 456), v10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  applesauce::CF::StringRef::~StringRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(applesauce::CF::DictionaryRef)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t _ZZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEENUlT_E_D2Ev(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

uint64_t _ZZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEENUlT_E0_D2Ev(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E0_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEEclEOSC_(uint64_t a1, const __CFDictionary **a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 16);
      if (v7)
      {
        (*(**(v7 + 16) + 40))(&v16);
        if (!v3)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        cf[0] = 0;
        applesauce::CF::at_or<applesauce::CF::StringRef,__CFString const*>(&v15, v3, v16, cf);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        v8 = v15;
        if (v15)
        {
          if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v15, (a1 + 8)) == kCFCompareEqualTo)
          {
            v9 = *(v7 + 32);
            cf[0] = MEMORY[0x277D85DD0];
            cf[1] = 1174405120;
            cf[2] = ___ZZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEENKUlT_E0_clINS3_13DictionaryRefEEEDaS5__block_invoke;
            cf[3] = &__block_descriptor_tmp_33;
            cf[4] = v7;
            v13 = v6;
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v10 = *(a1 + 8);
            if (v10)
            {
              CFRetain(v10);
            }

            v14 = v10;
            dispatch_async(v9, cf);
            if (v14)
            {
              CFRelease(v14);
            }

            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }
          }

          CFRelease(v8);
        }

        if (v16)
        {
          CFRelease(v16);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_2725FC4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  applesauce::CF::StringRef::~StringRef((v10 - 56));
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  _Unwind_Resume(a1);
}

void ___ZZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEENKUlT_E0_clINS3_13DictionaryRefEEEDaS5__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRetain(*(a1 + 48));
  }

  vp::vx::Control_Center_Manager_Impl::update_automatic_mic_mode_is_enabled_value(v1, v2);
  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_2725FC564(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E0_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEE18destroy_deallocateEv(void *a1)
{
  _ZNSt3__110__function12__alloc_funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E0_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEE7destroyB8ne200100Ev(a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function12__alloc_funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E0_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEE7destroyB8ne200100Ev(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

CFTypeRef *_ZNKSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E0_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEE7__cloneEPNS0_6__baseISD_EE(CFTypeRef *result, void *a2)
{
  v3 = result;
  *a2 = &unk_2881B53F0;
  v4 = result[1];
  if (v4)
  {
    result = CFRetain(result[1]);
  }

  v6 = v3[2];
  v5 = v3[3];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E0_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEED0Ev(void *a1)
{
  *a1 = &unk_2881B53F0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E0_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEED1Ev(void *a1)
{
  *a1 = &unk_2881B53F0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEEclEOSC_(uint64_t a1, const __CFDictionary **a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 16);
      if (v7)
      {
        (*(**(v7 + 16) + 40))(&v16);
        if (!v3)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        cf[0] = 0;
        applesauce::CF::at_or<applesauce::CF::StringRef,__CFString const*>(&v15, v3, v16, cf);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        v8 = v15;
        if (v15)
        {
          if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v15, (a1 + 8)) == kCFCompareEqualTo)
          {
            v9 = *(v7 + 32);
            cf[0] = MEMORY[0x277D85DD0];
            cf[1] = 1174405120;
            cf[2] = ___ZZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEENKUlT_E_clINS3_13DictionaryRefEEEDaS5__block_invoke;
            cf[3] = &__block_descriptor_tmp_6455;
            cf[4] = v7;
            v13 = v6;
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v10 = *(a1 + 8);
            if (v10)
            {
              CFRetain(v10);
            }

            v14 = v10;
            dispatch_async(v9, cf);
            if (v14)
            {
              CFRelease(v14);
            }

            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }
          }

          CFRelease(v8);
        }

        if (v16)
        {
          CFRelease(v16);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_2725FC9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  applesauce::CF::StringRef::~StringRef((v10 - 56));
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  _Unwind_Resume(a1);
}

void ___ZZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEENKUlT_E_clINS3_13DictionaryRefEEEDaS5__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRetain(*(a1 + 48));
  }

  vp::vx::Control_Center_Manager_Impl::update_preferred_chat_flavor_value(v1, v2);
  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_2725FCA44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEE18destroy_deallocateEv(void *a1)
{
  _ZNSt3__110__function12__alloc_funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEE7destroyB8ne200100Ev(a1 + 8);

  operator delete(a1);
}

void _ZNSt3__110__function12__alloc_funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEE7destroyB8ne200100Ev(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

CFTypeRef *_ZNKSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEE7__cloneEPNS0_6__baseISD_EE(CFTypeRef *result, void *a2)
{
  v3 = result;
  *a2 = &unk_2881B5378;
  v4 = result[1];
  if (v4)
  {
    result = CFRetain(result[1]);
  }

  v6 = v3[2];
  v5 = v3[3];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEED0Ev(void *a1)
{
  *a1 = &unk_2881B5378;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx27Control_Center_Manager_Impl20update_app_bundle_idEN10applesauce2CF9StringRefEEUlT_E_NS_9allocatorIS9_EEFvNS6_13DictionaryRefEEED1Ev(void *a1)
{
  *a1 = &unk_2881B5378;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

unint64_t std::__hash_table<applesauce::CF::StringRef,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,vp::Allocator<applesauce::CF::StringRef>>::__rehash<true>(unint64_t result, size_t __n)
{
  v2 = result;
  if (__n == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = __n;
    if ((__n & (__n - 1)) != 0)
    {
      result = std::__next_prime(__n);
      v3 = result;
    }
  }

  v4 = *(v2 + 8);
  if (v3 <= *&v4)
  {
    if (v3 >= *&v4)
    {
      return result;
    }

    result = vcvtps_u32_f32(*(v2 + 40) / *(v2 + 48));
    if (*&v4 < 3uLL || (v10 = vcnt_s8(v4), v10.i16[0] = vaddlv_u8(v10), v10.u32[0] > 1uLL))
    {
      result = std::__next_prime(result);
    }

    else
    {
      v11 = 1 << -__clz(result - 1);
      if (result >= 2)
      {
        result = v11;
      }
    }

    if (v3 <= result)
    {
      v3 = result;
    }

    if (v3 >= *&v4)
    {
      return result;
    }

    if (!v3)
    {
      v15 = *v2;
      *v2 = 0;
      if (v15)
      {
        result = std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<applesauce::CF::StringRef,void *> *> *>>::deallocate[abi:ne200100](*(v2 + 16), v15, *(v2 + 8));
      }

      *(v2 + 8) = 0;
      return result;
    }
  }

  if (v3 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  result = (*(**(v2 + 16) + 16))(*(v2 + 16), 8 * v3, 8);
  v5 = *v2;
  *v2 = result;
  if (v5)
  {
    result = std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<applesauce::CF::StringRef,void *> *> *>>::deallocate[abi:ne200100](*(v2 + 16), v5, *(v2 + 8));
  }

  v6 = 0;
  *(v2 + 8) = v3;
  do
  {
    *(*v2 + 8 * v6++) = 0;
  }

  while (v3 != v6);
  v7 = *(v2 + 24);
  if (v7)
  {
    v8 = v7[1];
    v9 = vcnt_s8(v3);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    *(*v2 + 8 * v8) = v2 + 24;
    v12 = *v7;
    if (*v7)
    {
      do
      {
        v13 = v12[1];
        if (v9.u32[0] > 1uLL)
        {
          if (v13 >= v3)
          {
            v13 %= v3;
          }
        }

        else
        {
          v13 &= v3 - 1;
        }

        if (v13 != v8)
        {
          v14 = *v2;
          if (!*(*v2 + 8 * v13))
          {
            *(v14 + 8 * v13) = v7;
            goto LABEL_31;
          }

          *v7 = *v12;
          *v12 = **(v14 + 8 * v13);
          **(v14 + 8 * v13) = v12;
          v12 = v7;
        }

        v13 = v8;
LABEL_31:
        v7 = v12;
        v12 = *v12;
        v8 = v13;
      }

      while (v12);
    }
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_E_JN10applesauce2CF9StringRefEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSF_5StateIT0_EEEUlRKNS_5tupleIJSC_EEEE_NS_9allocatorISR_EEFvSQ_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_E_JN10applesauce2CF9StringRefEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSF_5StateIT0_EEEUlRKNS_5tupleIJSC_EEEE_NS_9allocatorISR_EEFvSQ_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_E_JN10applesauce2CF9StringRefEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSF_5StateIT0_EEEUlRKNS_5tupleIJSC_EEEE_NS_9allocatorISR_EEFvSQ_EE7__cloneEPNS0_6__baseISU_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B5330;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_E_JN10applesauce2CF9StringRefEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSF_5StateIT0_EEEUlRKNS_5tupleIJSC_EEEE_NS_9allocatorISR_EEFvSQ_EED0Ev(void *a1)
{
  *a1 = &unk_2881B5330;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERS4_EUlT_E_JN10applesauce2CF9StringRefEEEEDaOS8_NS3_9data_flow16Call_ImmediatelyEDpRKNSF_5StateIT0_EEEUlRKNS_5tupleIJSC_EEEE_NS_9allocatorISR_EEFvSQ_EED1Ev(void *a1)
{
  *a1 = &unk_2881B5330;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSD_EUlT_E_JS9_EEEDaOSH_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_EEERNS4_13State_ManagerESH_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EEclEOS12_OS13_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  std::__tuple_leaf<0ul,applesauce::CF::StringRef,false>::__tuple_leaf[abi:ne200100]<applesauce::CF::StringRef const&,0>(&v7, *v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::tuple<applesauce::CF::StringRef>>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v7;
  return result;
}

void sub_2725FD0F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::tuple<applesauce::CF::StringRef>::~tuple(va);
  _Unwind_Resume(a1);
}

const void **std::tuple<applesauce::CF::StringRef>::~tuple(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_5tupleIJN10applesauce2CF9StringRefEEEEEC1IZNS3_29Voice_Processor_State_Manager21create_state_listenerIZNS3_27Control_Center_Manager_Impl9configureERSD_EUlT_E_JS9_EEEDaOSH_NS4_16Call_ImmediatelyEDpRKNS4_5StateIT0_EEEUlDpRKT_E_JS9_EEERNS4_13State_ManagerESH_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE7__cloneEPNS0_6__baseIS17_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B5238;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t vp::decorators::CPU_Profiler::ProcessDownlinkAudio(vp::decorators::CPU_Profiler *this, AudioBufferList *a2, AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, int a6, const AudioTimeStamp *a7)
{
  v17 = a3;
  v18 = a2;
  v15 = a5;
  v16 = a4;
  v13 = 0;
  v14 = a6;
  rep = std::chrono::system_clock::now().__d_.__rep_;
  v10[7] = a7;
  v11 = 0uLL;
  v10[0] = &v13;
  v10[1] = this;
  v10[2] = &v18;
  v10[3] = &v17;
  v10[4] = &v16;
  v10[5] = &v15;
  v10[6] = &v14;
  vp::utility::CPU_Profiler::measure(&v11, caulk::function_ref<void ()(void)>::functor_invoker<vp::decorators::CPU_Profiler::ProcessDownlinkAudio(AudioBufferList *,AudioBufferList *,AudioBufferList *,AudioBufferList *,unsigned int,AudioTimeStamp const&)::$_0>, v10);
  result = v13;
  if (!v13)
  {
    v10[0] = *(this + 5);
    v19 = v11;
    vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::write(*(this + 5), &rep, v10, &v19.i64[1], v19.i64);
    return v13;
  }

  return result;
}

void vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::write(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 744);
  v11 = *(a1 + 672);
  explicit = atomic_load_explicit((a1 + 736), memory_order_acquire);
  v13 = v10 - 1;
  v14 = v11 >= explicit;
  v15 = v11 - explicit;
  if (!v14)
  {
    v13 = -1;
  }

  if (v15 == v13)
  {
    vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::flush(a1);
  }

  v16 = *a2;
  v17 = *a3;
  v18 = *a4;
  v19 = *a5;
  v20 = *(a1 + 752);
  v21 = *(a1 + 744);
  v22 = *(a1 + 672);
  v23 = v22 + v21 + 1;
  do
  {
    v23 -= v21;
  }

  while (v23 >= v21);
  if (v23 == atomic_load_explicit((a1 + 736), memory_order_acquire))
  {
    goto LABEL_23;
  }

  v24 = (v20 + 32 * v22);
  *v24 = v16;
  v24[1] = v17;
  v24[2] = v18;
  v24[3] = v19;
  atomic_store(v23, (a1 + 672));
  v25 = *(a1 + 744);
  v26 = *(a1 + 672);
  v27 = atomic_load_explicit((a1 + 736), memory_order_acquire);
  if (v26 < v27)
  {
    v25 = 0;
  }

  if (v27 + ~v26 + v25 >= *(a1 + 648) >> 1)
  {
    v33 = *MEMORY[0x277D85DE8];
    return;
  }

  v28 = *(a1 + 656);
  if (v28)
  {
    v29 = *a1;
    v30 = *(a1 + 8);
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 16), 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x277D7F098])
    {
      v35 = v29;
      v31 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
      *(v31 + 16) = 0;
      *(v31 + 24) = v35;
      *v31 = &unk_2881B6220;
      *(v31 + 8) = 0;
      v32 = *MEMORY[0x277D85DE8];

      caulk::concurrent::messenger::enqueue(v28, v31);
      return;
    }

    __break(1u);
LABEL_23:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v34 = *MEMORY[0x277D85DE8];

  vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::flush(a1);
}

void sub_2725FD544(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::flush(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  v12 = a1;
  v2 = *(a1 + 752);
  v3 = *(a1 + 744);
  explicit = atomic_load_explicit((a1 + 672), memory_order_acquire);
  v5 = *(a1 + 736);
  v6 = explicit - v5;
  if (explicit >= v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7 + v6;
  if (v7 + v6)
  {
    v9 = v7 + explicit;
    v10 = v2 + 32 * v5;
    v11 = v7 + explicit - v3;
    if (v7 + explicit <= v3)
    {
      _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EyyyEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_yyyEE6Buffer5flushEvEUlRKT_E_EEvPS8_SI_SG_(v10, (v10 + 32 * v8), &v12);
      if (v9 == v3)
      {
        v11 = 0;
      }

      else
      {
        v11 = v9;
      }
    }

    else
    {
      _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EyyyEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_yyyEE6Buffer5flushEvEUlRKT_E_EEvPS8_SI_SG_(v10, (v2 + 32 * v3), &v12);
      _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EyyyEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_yyyEE6Buffer5flushEvEUlRKT_E_EEvPS8_SI_SG_(v2, (v2 + 32 * (v5 - v3) + 32 * v8), &v12);
    }

    atomic_store(v11, (a1 + 736));
  }

  std::ostream::flush();

  std::mutex::unlock((a1 + 16));
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EyyyEE6Buffer5writeERKS6_RKySC_SC_EUlT_E_JNSt3__18weak_ptrIS8_EEEE7performEv(caulk::concurrent::message *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *(a1 + 3);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v3)
      {
        vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::flush(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::__shared_weak_count::__release_weak(v2);
    v6 = *(a1 + 4);
    *a1 = &unk_2881B6248;
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    *a1 = &unk_2881B6248;
  }

  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x277D7F098];
  if (*MEMORY[0x277D7F098])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _ZN5caulk10concurrent7details12message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EyyyEE6Buffer5writeERKS6_RKySC_SC_EUlT_E_JNSt3__18weak_ptrIS8_EEEE7performEv(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 24);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = std::__shared_weak_count::lock(v1);
    if (v3)
    {
      v4 = v3;
      if (v2)
      {
        vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::flush(v2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZN5caulk10concurrent7details12message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EyyyEE6Buffer5writeERKS6_RKySC_SC_EUlT_E_JNSt3__18weak_ptrIS8_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881B6248;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

void _ZN5caulk10concurrent7details12message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EyyyEE6Buffer5writeERKS6_RKySC_SC_EUlT_E_JNSt3__18weak_ptrIS8_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881B6248;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EyyyEE6Buffer5writeERKS6_RKySC_SC_EUlT_E_JNSt3__18weak_ptrIS8_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881B6248;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x2743CBFA0);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN2vp7utility7CSV_LogIJNS4_8ISO_8601EyyyEE6Buffer5writeERKS6_RKySC_SC_EUlT_E_JNSt3__18weak_ptrIS8_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_2881B6248;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

uint64_t _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJN2vp7utility8ISO_8601EyyyEEEE22run_functor_and_deleteIZNS6_7CSV_LogIJS7_yyyEE6Buffer5flushEvEUlRKT_E_EEvPS8_SI_SG_(uint64_t result, std::chrono::duration<long long, std::ratio<1, 1000000>>::rep *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = MEMORY[0x277D82680];
    do
    {
      v7 = *a3;
      vp::utility::operator<<((*a3 + 80), *v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((v7 + 80), ", ", 2);
      v8 = MEMORY[0x2743CBB70](v7 + 80, v5[1]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", ", 2);
      v9 = MEMORY[0x2743CBB70](v7 + 80, v5[2]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
      v10 = MEMORY[0x2743CBB70](v7 + 80, v5[3]);
      std::ios_base::getloc((v10 + *(*v10 - 24)));
      v11 = std::locale::use_facet(&v12, v6);
      (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v12);
      std::ostream::put();
      result = std::ostream::flush();
      v5 += 4;
    }

    while (v5 != a2);
  }

  return result;
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t caulk::function_ref<void ()(void)>::functor_invoker<vp::decorators::CPU_Profiler::ProcessDownlinkAudio(AudioBufferList *,AudioBufferList *,AudioBufferList *,AudioBufferList *,unsigned int,AudioTimeStamp const&)::$_0>(uint64_t a1)
{
  v1 = *a1;
  v2 = **(*a1 + 16);
  v3 = **(*a1 + 24);
  v4 = **(*a1 + 32);
  v5 = **(*a1 + 40);
  v6 = **(*a1 + 48);
  v7 = *(*a1 + 56);
  v8 = *(*(*a1 + 8) + 8);
  result = (*(*v8 + 72))(v8, v2, v3, v4, v5, v6, v7);
  **v1 = result;
  return result;
}

uint64_t vp::decorators::CPU_Profiler::Process(vp::decorators::CPU_Profiler *this, const AudioBufferList *a2, const AudioTimeStamp *a3, AudioBufferList *a4, AudioTimeStamp *a5, unsigned int *a6, void *a7, unsigned int *a8, AudioStreamPacketDescription *a9)
{
  v20 = a8;
  v21 = a7;
  v19 = 0;
  rep = std::chrono::system_clock::now().__d_.__rep_;
  v16[0] = &v19;
  v16[1] = this;
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = &v21;
  v16[8] = &v20;
  v16[9] = &a9;
  v17 = 0uLL;
  vp::utility::CPU_Profiler::measure(&v17, caulk::function_ref<void ()(void)>::functor_invoker<vp::decorators::CPU_Profiler::Process(AudioBufferList const&,AudioTimeStamp const&,AudioBufferList&,AudioTimeStamp&,unsigned int &,void *,unsigned int *,AudioStreamPacketDescription *)::$_0>, v16);
  result = v19;
  if (!v19)
  {
    v16[0] = *(this + 4);
    v22 = v17;
    vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::write(*(this + 3), &rep, v16, &v22.i64[1], v22.i64);
    return v19;
  }

  return result;
}

uint64_t caulk::function_ref<void ()(void)>::functor_invoker<vp::decorators::CPU_Profiler::Process(AudioBufferList const&,AudioTimeStamp const&,AudioBufferList&,AudioTimeStamp&,unsigned int &,void *,unsigned int *,AudioStreamPacketDescription *)::$_0>(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = **(*a1 + 56);
  v8 = **(*a1 + 64);
  v9 = **(*a1 + 72);
  v10 = *(*(*a1 + 8) + 8);
  result = (*(*v10 + 64))(v10, v2, v3, v4, v5, v6, v7, v8, v9);
  **v1 = result;
  return result;
}

uint64_t vp::decorators::CPU_Profiler::InitializeDownlinkProcessing(uint64_t a1, uint64_t a2, int a3)
{
  result = (*(**(a1 + 8) + 32))(*(a1 + 8));
  *(a1 + 20) = a3;
  return result;
}

uint64_t vp::decorators::CPU_Profiler::InitializeHWInput(vp::decorators::CPU_Profiler *this, const AudioStreamBasicDescription *a2, const AudioChannelLayout *a3, uint64_t a4, uint64_t a5, uint64_t a6, const unsigned int *a7, const AudioStreamBasicDescription *a8, const AudioChannelLayout *a9, uint64_t a10, unsigned int a11, const unsigned int *a12)
{
  result = (*(**(this + 1) + 16))(*(this + 1), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  *(this + 4) = a10;
  return result;
}

void vp::decorators::CPU_Profiler::~CPU_Profiler(std::__shared_weak_count **this)
{
  vp::decorators::CPU_Profiler::~CPU_Profiler(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v21 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::decorators::CPU_Profiler]", 28);
    v4 = v16;
    v5 = v16;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v18 = v9;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v16;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = this[6];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = this[4];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = this[1];
  *this = &unk_2881C6738;
  this[1] = 0;
  if (v13)
  {
    (v13->~__shared_weak_count_0)(v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void vp::decorators::CPU_Profiler::create_log(uint64_t *a1, const std::__fs::filesystem::path *a2, int a3)
{
  v25 = *MEMORY[0x277D85DE8];
  std::__fs::filesystem::__create_directories(a2 + 2, 0);
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v15 = std::chrono::system_clock::to_time_t(&__t);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__src = 0u;
  v18 = 0u;
  v6 = localtime(&v15);
  v7 = strftime(__src, 0x80uLL, "vp.%Y%m%d.%H%M%S.", v6);
  if (a3)
  {
    v8 = 100;
  }

  else
  {
    v8 = 117;
  }

  v9 = __toupper(v8);
  snprintf(&__src[v7], 128 - v7, "%cL.CPU_Profile.csv", v9);
  memset(&v13, 0, sizeof(v13));
  v10 = (&__t.__d_.__rep_ + 7);
  do
  {
    v11 = v10->__r_.__value_.__s.__data_[1];
    v10 = (v10 + 1);
  }

  while (v11);
  std::string::append[abi:ne200100]<char const*,0>(&v13.__pn_, __src, v10);
  std::__fs::filesystem::operator/[abi:ne200100](&__p, &a2[2], &v13);
  std::ofstream::basic_ofstream(a1);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__pn_.__r_.__value_.__l.__data_);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2725FE134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2725FE6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15)
{
  if (a2)
  {
    std::locale::~locale(&a15);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x2743CBA00](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x2743CBE30](a1 + 52);
  return a1;
}

void boost::alignment::detail::throw_exception<std::bad_alloc>()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82918] + 16;
}

void std::__shared_ptr_emplace<vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer,std::allocator<vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer>>::__on_zero_shared(uint64_t a1)
{
  vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer::flush(a1 + 24);
  v2 = *(a1 + 768);
  explicit = atomic_load_explicit((a1 + 696), memory_order_acquire);
  v4 = *(a1 + 760);
  v5 = v4 - explicit;
  if (v4 <= explicit)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  if (v6 != v5)
  {
    v7 = v6 + explicit;
    v8 = v7 >= v2;
    v9 = v7 - v2;
    if (!v9)
    {
      v7 = 0;
    }

    if (v9 == 0 || !v8)
    {
      v9 = v7;
    }

    atomic_store(v9, (a1 + 760));
  }

  v10 = *(a1 + 776);
  if (v10)
  {
    free(*(v10 - 8));
  }

  v11 = *(a1 + 688);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = MEMORY[0x277D82810];
  v13 = *MEMORY[0x277D82810];
  *(a1 + 104) = *MEMORY[0x277D82810];
  *(a1 + 104 + *(v13 - 24)) = *(v12 + 24);
  MEMORY[0x2743CBA00](a1 + 112);
  std::ostream::~ostream();
  MEMORY[0x2743CBE30](a1 + 520);
  std::mutex::~mutex((a1 + 40));
  v14 = *(a1 + 32);
  if (v14)
  {

    std::__shared_weak_count::__release_weak(v14);
  }
}

void std::__shared_ptr_emplace<vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer,std::allocator<vp::utility::CSV_Log<vp::utility::ISO_8601,unsigned long long,unsigned long long,unsigned long long>::Buffer>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881B61E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v3 = *(MEMORY[0x277D82810] + 16);
  v4 = *(MEMORY[0x277D82810] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D82860] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x2743CB9F0](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}