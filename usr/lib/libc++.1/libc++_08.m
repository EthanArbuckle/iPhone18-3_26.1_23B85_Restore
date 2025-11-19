void std::moneypunct_byname<wchar_t,true>::init(uint64_t a1, char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = newlocale(63, a2, 0);
  v16 = v4;
  if (!v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v17, a2);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("moneypunct_byname failed to construct for ", &v17, v18);
    if ((v18[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = v18;
    }

    else
    {
      v13 = v18[0].__r_.__value_.__r.__words[0];
    }

    std::__throw_runtime_error(v13);
  }

  v5 = localeconv_l(v4);
  if (!std::checked_string_to_wchar_convert((a1 + 16), v5->mon_decimal_point, v16))
  {
    *(a1 + 16) = 0x7FFFFFFF;
  }

  if (!std::checked_string_to_wchar_convert((a1 + 20), v5->mon_thousands_sep, v16))
  {
    *(a1 + 20) = 0x7FFFFFFF;
  }

  std::string::__assign_external((a1 + 24), v5->mon_grouping);
  memset(&v17, 0, sizeof(v17));
  int_curr_symbol = v5->int_curr_symbol;
  v6 = mbsrtowcs_l(v18, &int_curr_symbol, 0x64uLL, &v17, v16);
  if (v6 == -1)
  {
    std::__throw_runtime_error("locale not supported");
  }

  std::wstring::__assign_trivial[abi:ne200100]<wchar_t *,wchar_t *>((a1 + 48), v18, v18 + v6, v6);
  int_frac_digits = v5->int_frac_digits;
  if (int_frac_digits == 127)
  {
    LOBYTE(int_frac_digits) = 0;
  }

  *(a1 + 120) = int_frac_digits;
  if (v5->int_p_sign_posn)
  {
    memset(&v17, 0, sizeof(v17));
    int_curr_symbol = v5->positive_sign;
    v8 = mbsrtowcs_l(v18, &int_curr_symbol, 0x64uLL, &v17, v16);
    if (v8 == -1)
    {
      goto LABEL_29;
    }

    std::wstring::__assign_trivial[abi:ne200100]<wchar_t *,wchar_t *>((a1 + 72), v18, v18 + v8, v8);
  }

  else
  {
    if (*(a1 + 95) < 0)
    {
      *(a1 + 80) = 2;
      v9 = *(a1 + 72);
    }

    else
    {
      v9 = a1 + 72;
      *(a1 + 95) = 2;
    }

    *v9 = 0x2900000028;
    *(v9 + 8) = 0;
  }

  if (v5->int_n_sign_posn)
  {
    memset(&v17, 0, sizeof(v17));
    int_curr_symbol = v5->negative_sign;
    v10 = mbsrtowcs_l(v18, &int_curr_symbol, 0x64uLL, &v17, v16);
    if (v10 != -1)
    {
      std::wstring::__assign_trivial[abi:ne200100]<wchar_t *,wchar_t *>((a1 + 96), v18, v18 + v10, v10);
      goto LABEL_23;
    }

LABEL_29:
    std::__throw_runtime_error("locale not supported");
  }

  if (*(a1 + 119) < 0)
  {
    *(a1 + 104) = 2;
    v11 = *(a1 + 96);
  }

  else
  {
    v11 = a1 + 96;
    *(a1 + 119) = 2;
  }

  *v11 = 0x2900000028;
  *(v11 + 8) = 0;
LABEL_23:
  if (*(a1 + 71) < 0)
  {
    std::wstring::__init_copy_ctor_external(&v14, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v14 = *(a1 + 48);
  }

  std::__init_pat<wchar_t>(a1 + 124, &v14, 1, v5->int_p_cs_precedes, v5->int_p_sep_by_space, v5->int_p_sign_posn);
  std::__init_pat<wchar_t>(a1 + 128, (a1 + 48), 1, v5->int_n_cs_precedes, v5->int_n_sep_by_space, v5->int_n_sign_posn);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v14.__r_.__value_.__r.__words[0], 4 * v14.__r_.__value_.__r.__words[2]);
  }

  std::__libcpp_unique_locale::~__libcpp_unique_locale(&v16);
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1922EF220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _xlocale *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    std::stoi(&a32);
  }

  if (SHIBYTE(a17) < 0)
  {
    MEMORY[0x193B0CA40](a15, a17 & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__libcpp_unique_locale::~__libcpp_unique_locale(&a14);
  _Unwind_Resume(a1);
}

void std::__codecvt_utf8<wchar_t>::~__codecvt_utf8(std::codecvt<wchar_t, char, mbstate_t> *a1)
{
  std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(a1);

  JUMPOUT(0x193B0CA40);
}

void std::__codecvt_utf8<char16_t>::~__codecvt_utf8(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::__codecvt_utf8<char32_t>::~__codecvt_utf8(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::__codecvt_utf16<wchar_t,false>::~__codecvt_utf16(std::codecvt<wchar_t, char, mbstate_t> *a1)
{
  std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(a1);

  JUMPOUT(0x193B0CA40);
}

void std::__codecvt_utf16<wchar_t,true>::~__codecvt_utf16(std::codecvt<wchar_t, char, mbstate_t> *a1)
{
  std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(a1);

  JUMPOUT(0x193B0CA40);
}

void std::__codecvt_utf16<char16_t,false>::~__codecvt_utf16(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::__codecvt_utf16<char16_t,true>::~__codecvt_utf16(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::__codecvt_utf16<char32_t,false>::~__codecvt_utf16(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::__codecvt_utf16<char32_t,true>::~__codecvt_utf16(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::__codecvt_utf8_utf16<wchar_t>::~__codecvt_utf8_utf16(std::codecvt<wchar_t, char, mbstate_t> *a1)
{
  std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(a1);

  JUMPOUT(0x193B0CA40);
}

void std::__codecvt_utf8_utf16<char32_t>::~__codecvt_utf8_utf16(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::__codecvt_utf8_utf16<char16_t>::~__codecvt_utf8_utf16(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::num_get<char,std::istreambuf_iterator<char>>::~num_get(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::~num_get(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::num_put<char,std::ostreambuf_iterator<char>>::~num_put(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::~num_put(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::time_get<char,std::istreambuf_iterator<char>>::~time_get(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::~time_get(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::time_get_byname<char,std::istreambuf_iterator<char>>::~time_get_byname(std::__shared_count *a1)
{
  std::__time_get_storage<char>::~__time_get_storage[abi:ne200100](&a1[1].__shared_owners_);

  std::__shared_count::~__shared_count(a1);
}

{
  std::__time_get_storage<char>::~__time_get_storage[abi:ne200100](&a1[1].__shared_owners_);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::time_get_byname<wchar_t,std::istreambuf_iterator<wchar_t>>::~time_get_byname(std::__shared_count *a1)
{
  std::__time_get_storage<wchar_t>::~__time_get_storage[abi:ne200100](&a1[1].__shared_owners_);

  std::__shared_count::~__shared_count(a1);
}

{
  std::__time_get_storage<wchar_t>::~__time_get_storage[abi:ne200100](&a1[1].__shared_owners_);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::time_put<char,std::ostreambuf_iterator<char>>::~time_put(uint64_t a1)
{
  std::__time_put::~__time_put((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  std::__time_put::~__time_put((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::~time_put(uint64_t a1)
{
  std::__time_put::~__time_put((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  std::__time_put::~__time_put((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::time_put_byname<char,std::ostreambuf_iterator<char>>::~time_put_byname(uint64_t a1)
{
  std::__time_put::~__time_put((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  std::__time_put::~__time_put((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::time_put_byname<wchar_t,std::ostreambuf_iterator<wchar_t>>::~time_put_byname(uint64_t a1)
{
  std::__time_put::~__time_put((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  std::__time_put::~__time_put((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::moneypunct<char,false>::~moneypunct(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::moneypunct<char,true>::~moneypunct(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::moneypunct<wchar_t,false>::~moneypunct(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::moneypunct<wchar_t,true>::~moneypunct(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::moneypunct_byname<char,false>::~moneypunct_byname(std::__shared_count *a1)
{
  std::moneypunct_byname<char,false>::~moneypunct_byname(a1);

  JUMPOUT(0x193B0CA40);
}

void std::moneypunct_byname<char,true>::~moneypunct_byname(std::__shared_count *a1)
{
  std::moneypunct_byname<char,true>::~moneypunct_byname(a1);

  JUMPOUT(0x193B0CA40);
}

void std::moneypunct_byname<wchar_t,false>::~moneypunct_byname(std::__shared_count *a1)
{
  std::moneypunct_byname<wchar_t,false>::~moneypunct_byname(a1);

  JUMPOUT(0x193B0CA40);
}

void std::moneypunct_byname<wchar_t,true>::~moneypunct_byname(std::__shared_count *a1)
{
  std::moneypunct_byname<wchar_t,true>::~moneypunct_byname(a1);

  JUMPOUT(0x193B0CA40);
}

void std::money_get<char,std::istreambuf_iterator<char>>::~money_get(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::~money_get(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::money_put<char,std::ostreambuf_iterator<char>>::~money_put(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::~money_put(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::messages<char>::~messages(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::messages<wchar_t>::~messages(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::messages_byname<char>::~messages_byname(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::messages_byname<wchar_t>::~messages_byname(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

_BYTE *std::wstring::__init_with_size[abi:ne200100]<wchar_t const*,wchar_t const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 4)
  {
    if ((a4 | 1) == 5)
    {
      v5 = 7;
    }

    else
    {
      v5 = (a4 | 1) + 1;
    }

    std::allocator<wchar_t>::allocate_at_least[abi:ne200100](__dst, v5);
  }

  __dst[23] = a4;
  v6 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v6);
  }

  *&v4[v6] = 0;
  return __dst;
}

uint64_t *std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[33] = 0;
  if (a2)
  {
    std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__vallocate[abi:ne200100](a1, a2);
    v4 = a1[1];
    bzero(v4, 8 * a2);
    a1[1] = v4 + 8 * a2;
  }

  return a1;
}

uint64_t std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::vector<std::pair<std::string_view,std::__fs::filesystem::PathPartKind>>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::__sso_allocator<std::locale::facet *,30ul>>((a1 + 3), a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 8 * v4;
  return result;
}

uint64_t std::__allocate_at_least[abi:ne200100]<std::__sso_allocator<std::locale::facet *,30ul>>(uint64_t result, unint64_t a2)
{
  if (a2 > 0x1E || (*(result + 240) & 1) != 0)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(result + 240) = 1;
  return result;
}

void *std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__destroy_vector::operator()[abi:ne200100](void **a1)
{
  v1 = *a1;
  result = **a1;
  if (result)
  {
    v1[1] = result;
    if (result != v1 + 3)
    {
      v3 = v1[2] - result;
      JUMPOUT(0x193B0CA40);
    }

    *(v1 + 264) = 0;
  }

  return result;
}

uint64_t *std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__assign_with_size[abi:ne200100]<std::locale::facet **,std::locale::facet **>(uint64_t *result, char *__src, uint64_t a3, unint64_t a4)
{
  v7 = result;
  v8 = *result;
  if (a4 > (result[2] - *result) >> 3)
  {
    std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__vdeallocate(result);
    if (a4 >> 61)
    {
      std::vector<std::pair<std::string_view,std::__fs::filesystem::PathPartKind>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7[2] - *v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__vallocate[abi:ne200100](v7, v11);
    v8 = v7[1];
    goto LABEL_15;
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (a4 <= (v12 - v8) >> 3)
  {
LABEL_15:
    v17 = a3 - __src;
    if (v17)
    {
      result = memmove(v8, __src, v17);
    }

    v16 = &v8[v17];
    goto LABEL_18;
  }

  if (v12 != v8)
  {
    result = memmove(*result, __src, v12 - v8);
    v12 = v7[1];
  }

  v14 = &__src[v13];
  v15 = a3 - &__src[v13];
  if (v15)
  {
    result = memmove(v12, v14, v15);
  }

  v16 = &v12[v15];
LABEL_18:
  v7[1] = v16;
  return result;
}

uint64_t std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__vdeallocate(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    *(a1 + 8) = result;
    if (result == a1 + 24)
    {
      *(a1 + 264) = 0;
    }

    else
    {
      result = MEMORY[0x193B0CA40](result, *(a1 + 16) - result);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  return result;
}

void std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::pair<std::string_view,std::__fs::filesystem::PathPartKind>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11 = a1 + 24;
    v20[4] = a1 + 24;
    if (v10)
    {
      v12 = std::__allocate_at_least[abi:ne200100]<std::__sso_allocator<std::locale::facet *,30ul>>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = (v12 + 8 * v8);
    v14 = v12 + 8 * v10;
    bzero(v13, 8 * a2);
    v15 = &v13[8 * a2];
    v16 = *(a1 + 8) - *a1;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v15;
    v19 = *(a1 + 16);
    *(a1 + 16) = v14;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    std::__split_buffer<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul> &>::~__split_buffer(v20);
  }
}

uint64_t *std::__split_buffer<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul> &>::~__split_buffer(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    a1[2] = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[4];
    if (v4 == v5)
    {
      *(v5 + 240) = 0;
    }

    else
    {
      MEMORY[0x193B0CA40](v4, a1[3] - v4);
    }
  }

  return a1;
}

void std::__libcpp_unique_locale::~__libcpp_unique_locale(_xlocale **this)
{
  v1 = *this;
  if (v1)
  {
    freelocale(v1);
  }
}

void std::wstring::__assign_trivial[abi:ne200100]<wchar_t *,wchar_t *>(std::wstring *this, std::wstring::value_type *a2, std::wstring::value_type *a3, std::wstring::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 4)
    {
      goto LABEL_11;
    }

    v10 = 4;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::wstring::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 4);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

uint64_t std::moneypunct_byname<char,false>::moneypunct_byname[abi:ne200100](uint64_t a1, char *a2, uint64_t a3)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = a3 - 1;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  std::moneypunct_byname<char,false>::init(a1, a2);
  return a1;
}

void sub_1922F033C(_Unwind_Exception *a1)
{
  if (*(v1 + 119) < 0)
  {
    MEMORY[0x193B0CA40](*(v1 + 96), *(v1 + 112) & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::moneypunct_byname<char,false>::moneypunct_byname[abi:ne200100](v1);
  std::__shared_count::~__shared_count(v1);
  _Unwind_Resume(a1);
}

uint64_t std::moneypunct_byname<char,true>::moneypunct_byname[abi:ne200100](uint64_t a1, char *a2, uint64_t a3)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = a3 - 1;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  std::moneypunct_byname<char,true>::init(a1, a2);
  return a1;
}

void sub_1922F0400(_Unwind_Exception *a1)
{
  if (*(v1 + 119) < 0)
  {
    MEMORY[0x193B0CA40](*(v1 + 96), *(v1 + 112) & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::moneypunct_byname<char,false>::moneypunct_byname[abi:ne200100](v1);
  std::__shared_count::~__shared_count(v1);
  _Unwind_Resume(a1);
}

uint64_t std::moneypunct_byname<wchar_t,false>::moneypunct_byname[abi:ne200100](uint64_t a1, char *a2, uint64_t a3)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = a3 - 1;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  std::moneypunct_byname<wchar_t,false>::init(a1, a2);
  return a1;
}

void sub_1922F04C4(_Unwind_Exception *a1)
{
  if (*(v1 + 119) < 0)
  {
    MEMORY[0x193B0CA40](*(v1 + 96), 4 * *(v1 + 112));
  }

  std::moneypunct_byname<wchar_t,false>::moneypunct_byname[abi:ne200100](v1);
  std::__shared_count::~__shared_count(v1);
  _Unwind_Resume(a1);
}

uint64_t std::moneypunct_byname<wchar_t,true>::moneypunct_byname[abi:ne200100](uint64_t a1, char *a2, uint64_t a3)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = a3 - 1;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  std::moneypunct_byname<wchar_t,true>::init(a1, a2);
  return a1;
}

void sub_1922F0588(_Unwind_Exception *a1)
{
  if (*(v1 + 119) < 0)
  {
    MEMORY[0x193B0CA40](*(v1 + 96), 4 * *(v1 + 112));
  }

  std::moneypunct_byname<wchar_t,false>::moneypunct_byname[abi:ne200100](v1);
  std::__shared_count::~__shared_count(v1);
  _Unwind_Resume(a1);
}

std::__time_get *std::time_get_byname<char,std::istreambuf_iterator<char>>::time_get_byname[abi:ne200100](std::__time_get *a1, const std::string *a2, uint64_t a3)
{
  a1[1].__loc_ = (a3 - 1);
  std::__time_get_storage<char>::__time_get_storage(a1 + 3, a2);
  return a1;
}

std::__time_get *std::time_get_byname<wchar_t,std::istreambuf_iterator<wchar_t>>::time_get_byname[abi:ne200100](std::__time_get *a1, const std::string *a2, uint64_t a3)
{
  a1[1].__loc_ = (a3 - 1);
  std::__time_get_storage<wchar_t>::__time_get_storage(a1 + 3, a2);
  return a1;
}

std::__time_put *std::time_put<char,std::ostreambuf_iterator<char>>::time_put[abi:ne200100](std::__time_put *a1, const std::string *a2, uint64_t a3)
{
  a1[1].__loc_ = (a3 - 1);
  std::__time_put::__time_put(a1 + 2, a2);
  return a1;
}

std::__time_put *std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::time_put[abi:ne200100](std::__time_put *a1, const std::string *a2, uint64_t a3)
{
  a1[1].__loc_ = (a3 - 1);
  std::__time_put::__time_put(a1 + 2, a2);
  return a1;
}

uint64_t ***std::__call_once_proxy[abi:ne200100]<std::tuple<std::locale::id::__get(void)::$_0 &&>>(uint64_t ***result)
{
  v1 = ***result;
  *(v1 + 8) = atomic_fetch_add(std::locale::id::__next_id, 1u) + 1;
  return result;
}

void std::__time_get_temp<char>::~__time_get_temp(std::ctype_byname<char> *a1)
{
  std::ctype_byname<char>::~ctype_byname(a1);

  JUMPOUT(0x193B0CA40);
}

void std::__time_get_temp<wchar_t>::~__time_get_temp(std::ctype_byname<wchar_t> *a1)
{
  std::ctype_byname<wchar_t>::~ctype_byname(a1);

  JUMPOUT(0x193B0CA40);
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<char *>,std::__wrap_iter<char *>>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 1 == a2)
    {
      v7 = *__src;
      memmove(__src, __src + 1, v6);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 1 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 1;
      v9 = a3 - 1 - __src;
      if (a3 - 1 != __src)
      {
        memmove(__src + 1, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<char *>>(__src, a2, a3);
    }
  }

  return v4;
}

_BYTE *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<char *>>(_BYTE *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a2 - a1;
  if (a2 - a1 == a3 - a2)
  {
    if (a2 != a1 && a3 != a2)
    {
      v4 = a1 + 1;
      v5 = a2 + 1;
      do
      {
        v6 = *(v4 - 1);
        *(v4 - 1) = *(v5 - 1);
        *(v5 - 1) = v6;
        if (v4 == a2)
        {
          break;
        }

        ++v4;
      }

      while (v5++ != a3);
    }
  }

  else
  {
    v8 = a3 - a2;
    v9 = a2 - a1;
    do
    {
      v10 = v9;
      v9 = v8;
      v8 = v10 % v8;
    }

    while (v8);
    v11 = &a1[v9];
    do
    {
      v13 = *--v11;
      v12 = v13;
      v14 = &v11[v3];
      v15 = v11;
      do
      {
        v16 = v14;
        *v15 = *v14;
        v17 = a3 - v14;
        if (v3 >= v17)
        {
          v14 = &a2[-v17];
        }

        else
        {
          v14 = &v16[v3];
        }

        v15 = v16;
      }

      while (v14 != v11);
      *v16 = v12;
    }

    while (v11 != a1);
    return &a1[a3 - a2];
  }

  return a2;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<wchar_t *>,std::__wrap_iter<wchar_t *>>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 4 == a2)
    {
      v7 = *__src;
      memmove(__src, __src + 4, v6);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 4 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 4;
      v9 = a3 - 4 - __src;
      if (a3 - 4 != __src)
      {
        memmove(__src + 4, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<wchar_t *>>(__src, a2, a3);
    }
  }

  return v4;
}

char *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<wchar_t *>>(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 2;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 2)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 4;
      v6 = a2 + 4;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 4;
        v8 = v6 == a3;
        v6 += 4;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 2;
    v10 = (a2 - a1) >> 2;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[4 * v10];
    do
    {
      v14 = *(v12 - 1);
      v12 -= 4;
      v13 = v14;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        *v16 = *v15;
        v18 = &v15[4 * v3];
        v19 = __OFSUB__(v3, (a3 - v15) >> 2);
        v21 = v3 - ((a3 - v15) >> 2);
        v20 = (v21 < 0) ^ v19;
        v15 = &a1[4 * v21];
        if (v20)
        {
          v15 = v18;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *v17 = v13;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

uint64_t std::__num_get_signed_integral[abi:ne200100]<long>(const char *a1, char *a2, _DWORD *a3, int a4)
{
  if (a1 == a2)
  {
    goto LABEL_9;
  }

  v8 = *__error();
  *__error() = 0;
  v9 = strtoll_l(a1, &v12, a4, 0);
  v10 = *__error();
  if (!v10)
  {
    *__error() = v8;
    if (v12 == a2)
    {
      return v9;
    }

LABEL_9:
    v9 = 0;
    *a3 = 4;
    return v9;
  }

  if (v12 != a2)
  {
    goto LABEL_9;
  }

  if (v10 == 34)
  {
    *a3 = 4;
    if (v9 > 0)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return 0x8000000000000000;
    }
  }

  return v9;
}

uint64_t std::__num_get_unsigned_integral[abi:ne200100]<unsigned short>(char *a1, char *a2, _DWORD *a3, int a4)
{
  if (a1 == a2)
  {
    goto LABEL_12;
  }

  v7 = a1;
  v8 = *a1;
  if (v8 == 45)
  {
    v7 = a1 + 1;
    if (a1 + 1 == a2)
    {
      goto LABEL_12;
    }
  }

  v9 = *__error();
  *__error() = 0;
  v10 = strtoull_l(v7, &v14, a4, 0);
  v11 = *__error();
  if (v11)
  {
    if (v14 == a2)
    {
      if (v11 != 34 && !(v10 >> 16))
      {
        goto LABEL_8;
      }

LABEL_15:
      *a3 = 4;
      LOWORD(v12) = -1;
      return v12;
    }

LABEL_12:
    LOWORD(v12) = 0;
    *a3 = 4;
    return v12;
  }

  *__error() = v9;
  if (v14 != a2)
  {
    goto LABEL_12;
  }

  if (v10 >= 0x10000)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (v8 == 45)
  {
    return -v10;
  }

  else
  {
    LOWORD(v12) = v10;
  }

  return v12;
}

uint64_t std::__num_get_unsigned_integral[abi:ne200100]<unsigned int>(char *a1, char *a2, _DWORD *a3, int a4)
{
  if (a1 == a2)
  {
    goto LABEL_9;
  }

  v7 = a1;
  v8 = *a1;
  if (v8 == 45)
  {
    v7 = a1 + 1;
    if (a1 + 1 == a2)
    {
      goto LABEL_9;
    }
  }

  v9 = *__error();
  *__error() = 0;
  v10 = strtoull_l(v7, &v13, a4, 0);
  v11 = *__error();
  if (!v11)
  {
    *__error() = v9;
    if (v13 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = 0;
    *a3 = 4;
    return result;
  }

  if (v13 != a2)
  {
    goto LABEL_9;
  }

  if (v11 == 34)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (HIDWORD(v10))
  {
LABEL_14:
    *a3 = 4;
    return 0xFFFFFFFFLL;
  }

  if (v8 == 45)
  {
    return -v10;
  }

  else
  {
    return v10;
  }
}

uint64_t std::__num_get_unsigned_integral[abi:ne200100]<unsigned long>(char *a1, char *a2, _DWORD *a3, int a4)
{
  if (a1 == a2)
  {
    goto LABEL_9;
  }

  v7 = a1;
  v8 = *a1;
  if (v8 == 45)
  {
    v7 = a1 + 1;
    if (a1 + 1 == a2)
    {
      goto LABEL_9;
    }
  }

  v9 = *__error();
  *__error() = 0;
  v10 = strtoull_l(v7, &v13, a4, 0);
  v11 = *__error();
  if (v11)
  {
    if (v13 == a2)
    {
      if (v11 == 34)
      {
        *a3 = 4;
        return -1;
      }

      goto LABEL_11;
    }

LABEL_9:
    result = 0;
    *a3 = 4;
    return result;
  }

  *__error() = v9;
  if (v13 != a2)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (v8 == 45)
  {
    return -v10;
  }

  else
  {
    return v10;
  }
}

float std::__num_get_float[abi:ne200100]<float>(const char *a1, char *a2, _DWORD *a3)
{
  if (a1 == a2)
  {
    *a3 = 4;
    return 0.0;
  }

  v6 = *__error();
  *__error() = 0;
  v7 = strtof_l(a1, &v11, 0);
  v8 = *__error();
  if (!v8)
  {
    *__error() = v6;
    v9 = 0.0;
    if (v11 == a2)
    {
      return v7;
    }

LABEL_8:
    *a3 = 4;
    return v9;
  }

  v9 = 0.0;
  if (v11 != a2)
  {
    goto LABEL_8;
  }

  v9 = v7;
  if (v8 == 34)
  {
    goto LABEL_8;
  }

  return v7;
}

double std::__num_get_float[abi:ne200100]<double>(const char *a1, char *a2, _DWORD *a3)
{
  if (a1 == a2)
  {
    *a3 = 4;
    return 0.0;
  }

  v6 = *__error();
  *__error() = 0;
  v7 = strtod_l(a1, &v11, 0);
  v8 = *__error();
  if (!v8)
  {
    *__error() = v6;
    v9 = 0.0;
    if (v11 == a2)
    {
      return v7;
    }

LABEL_8:
    *a3 = 4;
    return v9;
  }

  v9 = 0.0;
  if (v11 != a2)
  {
    goto LABEL_8;
  }

  v9 = v7;
  if (v8 == 34)
  {
    goto LABEL_8;
  }

  return v7;
}

double std::__num_get_float[abi:ne200100]<long double>(const char *a1, char *a2, _DWORD *a3)
{
  if (a1 == a2)
  {
    *a3 = 4;
    return 0.0;
  }

  v6 = *__error();
  *__error() = 0;
  v7 = strtold_l(a1, &v11, 0);
  v8 = *__error();
  if (!v8)
  {
    *__error() = v6;
    v9 = 0.0;
    if (v11 == a2)
    {
      return v7;
    }

LABEL_8:
    *a3 = 4;
    return v9;
  }

  v9 = 0.0;
  if (v11 != a2)
  {
    goto LABEL_8;
  }

  v9 = v7;
  if (v8 == 34)
  {
    goto LABEL_8;
  }

  return v7;
}

uint64_t std::__time_get_storage<char>::~__time_get_storage[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 1063) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 1040), *(a1 + 1056) & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (*(a1 + 1039) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 1016), *(a1 + 1032) & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (*(a1 + 1015) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 992), *(a1 + 1008) & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (*(a1 + 991) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 968), *(a1 + 984) & 0x7FFFFFFFFFFFFFFFLL);
  }

  for (i = 0; i != -48; i -= 24)
  {
    if (*(a1 + i + 967) < 0)
    {
      MEMORY[0x193B0CA40](*(a1 + i + 944), *(a1 + i + 960) & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  v3 = 576;
  do
  {
    if (*(a1 + v3 + 343) < 0)
    {
      MEMORY[0x193B0CA40](*(a1 + v3 + 320), *(a1 + v3 + 336) & 0x7FFFFFFFFFFFFFFFLL);
    }

    v3 -= 24;
  }

  while (v3);
  do
  {
    if (*(a1 + v3 + 343) < 0)
    {
      MEMORY[0x193B0CA40](*(a1 + v3 + 320), *(a1 + v3 + 336) & 0x7FFFFFFFFFFFFFFFLL);
    }

    v3 -= 24;
  }

  while (v3 != -336);
  freelocale(*a1);
  return a1;
}

uint64_t std::__time_get_storage<wchar_t>::~__time_get_storage[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 1063) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 1040), 4 * *(a1 + 1056));
  }

  if (*(a1 + 1039) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 1016), 4 * *(a1 + 1032));
  }

  if (*(a1 + 1015) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 992), 4 * *(a1 + 1008));
  }

  if (*(a1 + 991) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 968), 4 * *(a1 + 984));
  }

  for (i = 0; i != -48; i -= 24)
  {
    if (*(a1 + i + 967) < 0)
    {
      MEMORY[0x193B0CA40](*(a1 + i + 944), 4 * *(a1 + i + 960));
    }
  }

  v3 = 576;
  do
  {
    if (*(a1 + v3 + 343) < 0)
    {
      MEMORY[0x193B0CA40](*(a1 + v3 + 320), 4 * *(a1 + v3 + 336));
    }

    v3 -= 24;
  }

  while (v3);
  do
  {
    if (*(a1 + v3 + 343) < 0)
    {
      MEMORY[0x193B0CA40](*(a1 + v3 + 320), 4 * *(a1 + v3 + 336));
    }

    v3 -= 24;
  }

  while (v3 != -336);
  freelocale(*a1);
  return a1;
}

void std::moneypunct_byname<char,false>::~moneypunct_byname(std::__shared_count *this)
{
  if (SHIBYTE(this[7].__vftable) < 0)
  {
    MEMORY[0x193B0CA40](this[6].__vftable, this[7].__vftable & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(this[5].__shared_owners_) < 0)
  {
    MEMORY[0x193B0CA40](this[4].__shared_owners_, this[5].__shared_owners_ & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(this[4].__vftable) < 0)
  {
    MEMORY[0x193B0CA40](this[3].__vftable, this[4].__vftable & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(this[2].__shared_owners_) < 0)
  {
    MEMORY[0x193B0CA40](this[1].__shared_owners_, this[2].__shared_owners_ & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__shared_count::~__shared_count(this);
}

void std::moneypunct_byname<char,true>::~moneypunct_byname(std::__shared_count *this)
{
  if (SHIBYTE(this[7].__vftable) < 0)
  {
    MEMORY[0x193B0CA40](this[6].__vftable, this[7].__vftable & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(this[5].__shared_owners_) < 0)
  {
    MEMORY[0x193B0CA40](this[4].__shared_owners_, this[5].__shared_owners_ & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(this[4].__vftable) < 0)
  {
    MEMORY[0x193B0CA40](this[3].__vftable, this[4].__vftable & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(this[2].__shared_owners_) < 0)
  {
    MEMORY[0x193B0CA40](this[1].__shared_owners_, this[2].__shared_owners_ & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__shared_count::~__shared_count(this);
}

void std::moneypunct_byname<wchar_t,false>::~moneypunct_byname(std::__shared_count *this)
{
  if (SHIBYTE(this[7].__vftable) < 0)
  {
    MEMORY[0x193B0CA40](this[6].__vftable, 4 * this[7].__vftable);
  }

  if (SHIBYTE(this[5].__shared_owners_) < 0)
  {
    MEMORY[0x193B0CA40](this[4].__shared_owners_, 4 * this[5].__shared_owners_);
  }

  if (SHIBYTE(this[4].__vftable) < 0)
  {
    MEMORY[0x193B0CA40](this[3].__vftable, 4 * this[4].__vftable);
  }

  if (SHIBYTE(this[2].__shared_owners_) < 0)
  {
    MEMORY[0x193B0CA40](this[1].__shared_owners_, this[2].__shared_owners_ & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__shared_count::~__shared_count(this);
}

void std::moneypunct_byname<wchar_t,true>::~moneypunct_byname(std::__shared_count *this)
{
  if (SHIBYTE(this[7].__vftable) < 0)
  {
    MEMORY[0x193B0CA40](this[6].__vftable, 4 * this[7].__vftable);
  }

  if (SHIBYTE(this[5].__shared_owners_) < 0)
  {
    MEMORY[0x193B0CA40](this[4].__shared_owners_, 4 * this[5].__shared_owners_);
  }

  if (SHIBYTE(this[4].__vftable) < 0)
  {
    MEMORY[0x193B0CA40](this[3].__vftable, 4 * this[4].__vftable);
  }

  if (SHIBYTE(this[2].__shared_owners_) < 0)
  {
    MEMORY[0x193B0CA40](this[1].__shared_owners_, this[2].__shared_owners_ & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__shared_count::~__shared_count(this);
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(std::string::~string, a2, a3);
}

void OUTLINED_FUNCTION_2(uint64_t *a1)
{
  v2 = *a1;
  v3 = 4 * a1[2];

  JUMPOUT(0x193B0CA40);
}

uint64_t OUTLINED_FUNCTION_6()
{
  result = *v0;
  v3 = *(v1 + 40) & 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2, void *a3)
{

  return __cxa_atexit(v3, 0, a3);
}

uint64_t OUTLINED_FUNCTION_8()
{
  result = *v1;
  v3 = *(v0 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(v2 + 88);
  return result;
}

uint64_t __cxx_global_array_dtor()
{
  v0 = &byte_1EAE05EDF;
  v1 = -336;
  do
  {
    if (*v0 < 0)
    {
      result = MEMORY[0x193B0CA40](*(v0 - 23), *(v0 - 7) & 0x7FFFFFFFFFFFFFFFLL);
    }

    v0 -= 24;
    v1 += 24;
  }

  while (v1);
  return result;
}

uint64_t __cxx_global_array_dtor_258()
{
  v0 = &byte_1EAE05A87;
  v1 = -336;
  do
  {
    if (*v0 < 0)
    {
      result = MEMORY[0x193B0CA40](*(v0 - 23), 4 * *(v0 - 7));
    }

    v0 -= 24;
    v1 += 24;
  }

  while (v1);
  return result;
}

uint64_t __cxx_global_array_dtor_273()
{
  v0 = &byte_1EAE0611F;
  v1 = -576;
  do
  {
    if (*v0 < 0)
    {
      result = MEMORY[0x193B0CA40](*(v0 - 23), *(v0 - 7) & 0x7FFFFFFFFFFFFFFFLL);
    }

    v0 -= 24;
    v1 += 24;
  }

  while (v1);
  return result;
}

uint64_t __cxx_global_array_dtor_297()
{
  v0 = &byte_1EAE05CD7;
  v1 = -576;
  do
  {
    if (*v0 < 0)
    {
      result = MEMORY[0x193B0CA40](*(v0 - 23), 4 * *(v0 - 7));
    }

    v0 -= 24;
    v1 += 24;
  }

  while (v1);
  return result;
}

uint64_t __cxx_global_array_dtor_321()
{
  v0 = &byte_1EAE05D5F;
  v1 = -48;
  do
  {
    if (*v0 < 0)
    {
      result = MEMORY[0x193B0CA40](*(v0 - 23), *(v0 - 7) & 0x7FFFFFFFFFFFFFFFLL);
    }

    v0 -= 24;
    v1 += 24;
  }

  while (v1);
  return result;
}

uint64_t __cxx_global_array_dtor_324()
{
  v0 = &byte_1EAE05D8F;
  v1 = -48;
  do
  {
    if (*v0 < 0)
    {
      result = MEMORY[0x193B0CA40](*(v0 - 23), 4 * *(v0 - 7));
    }

    v0 -= 24;
    v1 += 24;
  }

  while (v1);
  return result;
}

char *std::__get_ostream_file(void *a1)
{
  v1 = *(a1 + *(*a1 - 24) + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *v1;
  v3 = **v1;
  if (v4)
  {
    v5 = v4 + 120;
  }

  else
  {
    v7 = *v2;
    if (!result)
    {
      return result;
    }

    v5 = result + 64;
  }

  return *v5;
}

std::regex_error *__cdecl std::regex_error::regex_error(std::regex_error *this, std::regex_constants::error_type __ecode)
{
  if (__ecode - 1 > 0x10)
  {
    v3 = "Unknown error type";
  }

  else
  {
    v3 = (&off_1E73AE1B0)[__ecode - 1];
  }

  result = std::runtime_error::runtime_error(this, v3);
  result->__code_ = __ecode;
  return result;
}

void std::regex_error::~regex_error(std::regex_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x193B0CA40);
}

std::string *__cdecl std::__get_collation_name(std::string *__return_ptr retstr, const char *__s)
{
  v4 = 111;
  do
  {
    v6 = &v5[2 * (v4 >> 1)];
    v8 = *v6;
    v7 = (v6 + 2);
    result = strcmp(v8, __s);
    if (result >= 0)
    {
      v4 >>= 1;
    }

    else
    {
      v4 += ~(v4 >> 1);
    }

    if (result < 0)
    {
      v5 = v7;
    }
  }

  while (v4);
  retstr->__r_.__value_.__r.__words[0] = 0;
  retstr->__r_.__value_.__l.__size_ = 0;
  retstr->__r_.__value_.__r.__words[2] = 0;
  {
    result = strcmp(__s, *v5);
    if (!result)
    {
      v10 = *(v5 + 8);
      *(&retstr->__r_.__value_.__s + 23) = 1;
      retstr->__r_.__value_.__s.__data_[0] = v10;
    }
  }

  return result;
}

std::regex_traits<char>::char_class_type std::__get_classname(const char *__s, BOOL __icase)
{
  v2 = __icase;
  v4 = 15;
  do
  {
    v6 = &v5[2 * (v4 >> 1)];
    v8 = *v6;
    v7 = (v6 + 2);
    v9 = strcmp(v8, __s);
    if (v9 >= 0)
    {
      v4 >>= 1;
    }

    else
    {
      v4 += ~(v4 >> 1);
    }

    if (v9 < 0)
    {
      v5 = v7;
    }
  }

  while (v4);
  if (v5 == &off_1E73AE1B0 || strcmp(__s, *v5))
  {
    return 0;
  }

  v11 = *(v5 + 2);
  if (v11 == 128)
  {
    result = 38272;
  }

  else
  {
    result = *(v5 + 2);
  }

  if (v11 != 128 && v2)
  {
    if ((v11 & 0x9000) != 0)
    {
      return v11 | 0x100;
    }

    else
    {
      return *(v5 + 2);
    }
  }

  return result;
}

uint64_t std::__match_any_but_newline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v5 = *(result + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

uint64_t std::__match_any_but_newline<wchar_t>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || ((v3 = *v2, (*v2 - 8232) >= 2) ? (v4 = v3 == 13) : (v4 = 1), !v4 ? (v5 = v3 == 10) : (v5 = 1), v5))
  {
    v6 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v6 = *(result + 8);
  }

  *(a2 + 80) = v6;
  return result;
}

std::strstreambuf *__cdecl std::strstreambuf::strstreambuf(std::strstreambuf *this, std::streamsize __alsize)
{
  std::locale::locale(&this->__loc_);
  *&this->__einp_ = 0u;
  *&this->__nout_ = 0u;
  *&this->__binp_ = 0u;
  this->__strmode_ = 4;
  this->__palloc_ = 0;
  this->__pfree_ = 0;
  this->__alsize_ = __alsize;
  return this;
}

{
  std::locale::locale(&this->__loc_);
  *&this->__einp_ = 0u;
  *&this->__nout_ = 0u;
  *&this->__binp_ = 0u;
  this->__strmode_ = 4;
  this->__palloc_ = 0;
  this->__pfree_ = 0;
  this->__alsize_ = __alsize;
  return this;
}

std::strstreambuf *__cdecl std::strstreambuf::strstreambuf(std::strstreambuf *this, void *(__cdecl *__palloc)(size_t), void (__cdecl *__pfree)(void *))
{
  std::locale::locale(&this->__loc_);
  *&this->__einp_ = 0u;
  *&this->__nout_ = 0u;
  *&this->__binp_ = 0u;
  this->__strmode_ = 4;
  this->__alsize_ = 4096;
  this->__palloc_ = __palloc;
  this->__pfree_ = __pfree;
  return this;
}

{
  std::locale::locale(&this->__loc_);
  *&this->__einp_ = 0u;
  *&this->__nout_ = 0u;
  *&this->__binp_ = 0u;
  this->__strmode_ = 4;
  this->__alsize_ = 4096;
  this->__palloc_ = __palloc;
  this->__pfree_ = __pfree;
  return this;
}

void std::strstreambuf::__init(std::strstreambuf *this, char *__gnext, std::streamsize __n, char *__pbeg)
{
  v4 = __pbeg;
  if (__n)
  {
    if (__n >= 0)
    {
      v7 = __n;
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    if (__pbeg)
    {
      goto LABEL_6;
    }

LABEL_8:
    v4 = &__gnext[v7];
    goto LABEL_9;
  }

  v7 = strlen(__gnext);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_6:
  this->__bout_ = v4;
  this->__nout_ = v4;
  this->__eout_ = &v4[v7];
LABEL_9:
  this->__binp_ = __gnext;
  this->__ninp_ = __gnext;
  this->__einp_ = v4;
}

std::strstreambuf *__cdecl std::strstreambuf::strstreambuf(std::strstreambuf *this, char *__gnext, std::streamsize __n, char *__pbeg)
{
  std::locale::locale(&this->__loc_);
  *&this->__einp_ = 0u;
  *&this->__nout_ = 0u;
  *&this->__binp_ = 0u;
  this->__strmode_ = 0;
  this->__palloc_ = 0;
  this->__pfree_ = 0;
  this->__alsize_ = 4096;
  if (__n)
  {
    if (__n >= 0)
    {
      v8 = __n;
    }

    else
    {
      v8 = 0x7FFFFFFFLL;
    }

    if (__pbeg)
    {
      goto LABEL_6;
    }

LABEL_8:
    __pbeg = &__gnext[v8];
    goto LABEL_9;
  }

  v8 = strlen(__gnext);
  if (!__pbeg)
  {
    goto LABEL_8;
  }

LABEL_6:
  this->__bout_ = __pbeg;
  this->__nout_ = __pbeg;
  this->__eout_ = &__pbeg[v8];
LABEL_9:
  this->__binp_ = __gnext;
  this->__ninp_ = __gnext;
  this->__einp_ = __pbeg;
  return this;
}

{
  std::locale::locale(&this->__loc_);
  *&this->__einp_ = 0u;
  *&this->__nout_ = 0u;
  *&this->__binp_ = 0u;
  this->__strmode_ = 0;
  this->__palloc_ = 0;
  this->__pfree_ = 0;
  this->__alsize_ = 4096;
  if (__n)
  {
    if (__n >= 0)
    {
      v8 = __n;
    }

    else
    {
      v8 = 0x7FFFFFFFLL;
    }

    if (__pbeg)
    {
      goto LABEL_6;
    }

LABEL_8:
    __pbeg = &__gnext[v8];
    goto LABEL_9;
  }

  v8 = strlen(__gnext);
  if (!__pbeg)
  {
    goto LABEL_8;
  }

LABEL_6:
  this->__bout_ = __pbeg;
  this->__nout_ = __pbeg;
  this->__eout_ = &__pbeg[v8];
LABEL_9:
  this->__binp_ = __gnext;
  this->__ninp_ = __gnext;
  this->__einp_ = __pbeg;
  return this;
}

std::strstreambuf *__cdecl std::strstreambuf::strstreambuf(std::strstreambuf *this, const char *__gnext, std::streamsize __n)
{
  std::locale::locale(&this->__loc_);
  *&this->__einp_ = 0u;
  *&this->__nout_ = 0u;
  *&this->__binp_ = 0u;
  this->__strmode_ = 2;
  this->__palloc_ = 0;
  this->__pfree_ = 0;
  this->__alsize_ = 4096;
  if (__n)
  {
    if (__n >= 0)
    {
      v6 = __n;
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v6 = strlen(__gnext);
  }

  this->__binp_ = __gnext;
  this->__ninp_ = __gnext;
  this->__einp_ = &__gnext[v6];
  return this;
}

{
  std::locale::locale(&this->__loc_);
  *&this->__einp_ = 0u;
  *&this->__nout_ = 0u;
  *&this->__binp_ = 0u;
  this->__strmode_ = 2;
  this->__palloc_ = 0;
  this->__pfree_ = 0;
  this->__alsize_ = 4096;
  if (__n)
  {
    if (__n >= 0)
    {
      v6 = __n;
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v6 = strlen(__gnext);
  }

  this->__binp_ = __gnext;
  this->__ninp_ = __gnext;
  this->__einp_ = &__gnext[v6];
  return this;
}

std::strstreambuf *__cdecl std::strstreambuf::strstreambuf(std::strstreambuf *this, unsigned __int8 *__gnext, std::streamsize __n, unsigned __int8 *__pbeg)
{
  std::locale::locale(&this->__loc_);
  *&this->__einp_ = 0u;
  *&this->__nout_ = 0u;
  *&this->__binp_ = 0u;
  this->__strmode_ = 0;
  this->__palloc_ = 0;
  this->__pfree_ = 0;
  this->__alsize_ = 4096;
  if (__n)
  {
    if (__n >= 0)
    {
      v8 = __n;
    }

    else
    {
      v8 = 0x7FFFFFFFLL;
    }

    if (__pbeg)
    {
      goto LABEL_6;
    }

LABEL_8:
    __pbeg = &__gnext[v8];
    goto LABEL_9;
  }

  v8 = strlen(__gnext);
  if (!__pbeg)
  {
    goto LABEL_8;
  }

LABEL_6:
  this->__bout_ = __pbeg;
  this->__nout_ = __pbeg;
  this->__eout_ = &__pbeg[v8];
LABEL_9:
  this->__binp_ = __gnext;
  this->__ninp_ = __gnext;
  this->__einp_ = __pbeg;
  return this;
}

std::strstreambuf *__cdecl std::strstreambuf::strstreambuf(std::strstreambuf *this, const unsigned __int8 *__gnext, std::streamsize __n)
{
  std::locale::locale(&this->__loc_);
  *&this->__einp_ = 0u;
  *&this->__nout_ = 0u;
  *&this->__binp_ = 0u;
  this->__strmode_ = 2;
  this->__palloc_ = 0;
  this->__pfree_ = 0;
  this->__alsize_ = 4096;
  if (__n)
  {
    if (__n >= 0)
    {
      v6 = __n;
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v6 = strlen(__gnext);
  }

  this->__binp_ = __gnext;
  this->__ninp_ = __gnext;
  this->__einp_ = &__gnext[v6];
  return this;
}

void std::strstreambuf::~strstreambuf(std::strstreambuf *this)
{
  if (this->__binp_ && (this->__strmode_ & 9) == 1)
  {
    pfree = this->__pfree_;
    if (pfree)
    {
      pfree();
    }

    else
    {
      MEMORY[0x193B0CA20]();
    }
  }

  std::locale::~locale(&this->__loc_);
}

{
  std::strstreambuf::~strstreambuf(this);

  JUMPOUT(0x193B0CA40);
}

void std::strstreambuf::swap(std::strstreambuf *this, std::strstreambuf *__rhs)
{
  std::streambuf::swap(this, __rhs);
  strmode = this->__strmode_;
  this->__strmode_ = __rhs->__strmode_;
  __rhs->__strmode_ = strmode;
  alsize = this->__alsize_;
  palloc = this->__palloc_;
  v7 = __rhs->__palloc_;
  this->__alsize_ = __rhs->__alsize_;
  this->__palloc_ = v7;
  __rhs->__alsize_ = alsize;
  __rhs->__palloc_ = palloc;
  pfree = this->__pfree_;
  this->__pfree_ = __rhs->__pfree_;
  __rhs->__pfree_ = pfree;
}

void std::strstreambuf::freeze(std::strstreambuf *this, BOOL __freezefl)
{
  strmode = this->__strmode_;
  if ((strmode & 4) != 0)
  {
    v3 = strmode & 0xFFFFFFF7;
    if (__freezefl)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    this->__strmode_ = v3 | v4;
  }
}

char *__cdecl std::strstreambuf::str(std::strstreambuf *this)
{
  strmode = this->__strmode_;
  if ((strmode & 4) != 0)
  {
    this->__strmode_ = strmode | 8;
  }

  return this->__binp_;
}

std::streambuf::int_type std::strstreambuf::overflow(std::strstreambuf *this, std::streambuf::int_type __c)
{
  if (__c == -1)
  {
    return 0;
  }

  v2 = __c;
  nout = this->__nout_;
  if (nout != this->__eout_)
  {
LABEL_3:
    *nout = v2;
    ++this->__nout_;
    return v2;
  }

  if ((this->__strmode_ & 0xC) == 4)
  {
    if (!nout)
    {
      nout = this->__einp_;
    }

    binp = this->__binp_;
    alsize = 2 * (nout - binp);
    palloc = this->__palloc_;
    if (this->__alsize_ > alsize)
    {
      alsize = this->__alsize_;
    }

    if (alsize)
    {
      v9 = alsize;
    }

    else
    {
      v9 = 4096;
    }

    if (!palloc)
    {
      operator new[]();
    }

    v10 = (palloc)(v9);
    if (v10)
    {
      if (nout != binp)
      {
        memcpy(v10, this->__binp_, nout - binp);
      }

      v11 = this->__binp_;
      v12 = (this->__ninp_ - v11);
      v13 = (this->__einp_ - v11);
      v14 = this->__nout_ - this->__bout_;
      if (this->__strmode_)
      {
        pfree = this->__pfree_;
        if (pfree)
        {
          pfree();
        }

        else if (v11)
        {
          MEMORY[0x193B0CA20](v11, 0x1000C8077774924);
        }
      }

      this->__binp_ = v10;
      this->__ninp_ = &v12[v10];
      this->__einp_ = &v13[v10];
      this->__bout_ = &v13[v10];
      nout = &v13[v10 + v14];
      this->__nout_ = nout;
      this->__eout_ = (v10 + v9);
      this->__strmode_ |= 1u;
      goto LABEL_3;
    }
  }

  return -1;
}

std::streambuf::int_type std::strstreambuf::pbackfail(std::strstreambuf *this, std::streambuf::int_type __c)
{
  ninp = this->__ninp_;
  if (this->__binp_ == ninp)
  {
    return -1;
  }

  if (__c == -1)
  {
    __c = 0;
    v3 = ninp - 1;
LABEL_7:
    this->__ninp_ = v3;
    return __c;
  }

  v3 = ninp - 1;
  if ((this->__strmode_ & 2) != 0)
  {
    if (*v3 == __c)
    {
      goto LABEL_7;
    }

    return -1;
  }

  this->__ninp_ = v3;
  *v3 = __c;
  return __c;
}

std::streambuf::int_type std::strstreambuf::underflow(std::strstreambuf *this)
{
  ninp = this->__ninp_;
  if (ninp != this->__einp_)
  {
    return *ninp;
  }

  nout = this->__nout_;
  if (ninp < nout)
  {
    this->__einp_ = nout;
    return *ninp;
  }

  return -1;
}

std::streambuf::pos_type *__cdecl std::strstreambuf::seekoff(std::streambuf::pos_type *__return_ptr retstr, std::streambuf::pos_type *this, std::streambuf::off_type a3, std::ios_base::seekdir __way, std::ios_base::openmode __which)
{
  if (__way == end)
  {
LABEL_4:
    if ((__which & 0x18) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_7;
  }

  if (__way != cur)
  {
    if (__way)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if ((__which & 8) >> 3 == (__which & 0x10) >> 4)
  {
LABEL_22:
    v9 = -1;
    goto LABEL_23;
  }

LABEL_7:
  if ((__which & 8) != 0 && !*(&this->__st_._mbstateL + 3) || (__which & 0x10) != 0 && !*(&this->__st_._mbstateL + 6))
  {
    goto LABEL_22;
  }

  v5 = *(&this->__st_._mbstateL + 7);
  if (!v5)
  {
    v5 = *(&this->__st_._mbstateL + 4);
    if (__way)
    {
      goto LABEL_13;
    }

LABEL_19:
    v8 = __way;
    goto LABEL_20;
  }

  if (__way == beg)
  {
    goto LABEL_19;
  }

LABEL_13:
  v6 = v5;
  if (__way != end)
  {
    v7 = 24;
    if ((__which & 8) == 0)
    {
      v7 = 48;
    }

    v6 = *&this->__st_.__mbstate8[v7];
  }

  v8 = v6 - *(&this->__st_._mbstateL + 2);
LABEL_20:
  v9 = v8 + a3;
  if (v9 < 0)
  {
    goto LABEL_22;
  }

  v10 = *(&this->__st_._mbstateL + 2);
  if (v9 > v5 - v10)
  {
    goto LABEL_22;
  }

  v11 = v10 + v9;
  if ((__which & 8) != 0)
  {
    v12 = *(&this->__st_._mbstateL + 4);
    if (v11 >= v12)
    {
      v12 = v10 + v9;
    }

    *(&this->__st_._mbstateL + 3) = v11;
    *(&this->__st_._mbstateL + 4) = v12;
  }

  if ((__which & 0x10) != 0)
  {
    v13 = *(&this->__st_._mbstateL + 5);
    if (v11 < v13)
    {
      v13 = v10 + v9;
    }

    *(&this->__st_._mbstateL + 5) = v13;
    *(&this->__st_._mbstateL + 6) = v11;
  }

LABEL_23:
  *(&retstr->__st_._mbstateL + 6) = 0u;
  *(&retstr->__st_._mbstateL + 7) = 0u;
  *(&retstr->__st_._mbstateL + 4) = 0u;
  *(&retstr->__st_._mbstateL + 5) = 0u;
  *(&retstr->__st_._mbstateL + 2) = 0u;
  *(&retstr->__st_._mbstateL + 3) = 0u;
  *retstr->__st_.__mbstate8 = 0u;
  *(&retstr->__st_._mbstateL + 1) = 0u;
  retstr->__off_ = v9;
  return this;
}

std::streambuf::pos_type *__cdecl std::strstreambuf::seekpos(std::streambuf::pos_type *__return_ptr retstr, std::streambuf::pos_type *this, std::streambuf::pos_type *__sp, std::ios_base::openmode __which)
{
  if ((__which & 0x18) == 0 || (__which & 8) != 0 && !*(&this->__st_._mbstateL + 3) || (__which & 0x10) != 0 && !*(&this->__st_._mbstateL + 6))
  {
    goto LABEL_11;
  }

  off = __sp->__off_;
  v5 = *(&this->__st_._mbstateL + 7);
  v6 = v5;
  if (v5)
  {
    if (off < 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = *(&this->__st_._mbstateL + 4);
    if (off < 0)
    {
LABEL_11:
      off = -1;
      goto LABEL_12;
    }
  }

  v7 = *(&this->__st_._mbstateL + 2);
  if (off > v6 - v7)
  {
    goto LABEL_11;
  }

  v8 = v7 + off;
  if ((__which & 8) != 0)
  {
    v9 = *(&this->__st_._mbstateL + 4);
    if (v8 >= v9)
    {
      v9 = v8;
    }

    *(&this->__st_._mbstateL + 3) = v8;
    *(&this->__st_._mbstateL + 4) = v9;
  }

  if ((__which & 0x10) != 0)
  {
    v10 = v8 - v5;
    if (v8 >= *(&this->__st_._mbstateL + 5))
    {
      v8 = *(&this->__st_._mbstateL + 5);
    }

    *(&this->__st_._mbstateL + 5) = v8;
    *(&this->__st_._mbstateL + 6) = v10 + v5;
  }

LABEL_12:
  *(&retstr->__st_._mbstateL + 6) = 0u;
  *(&retstr->__st_._mbstateL + 7) = 0u;
  *(&retstr->__st_._mbstateL + 4) = 0u;
  *(&retstr->__st_._mbstateL + 5) = 0u;
  *(&retstr->__st_._mbstateL + 2) = 0u;
  *(&retstr->__st_._mbstateL + 3) = 0u;
  *retstr->__st_.__mbstate8 = 0u;
  *(&retstr->__st_._mbstateL + 1) = 0u;
  retstr->__off_ = off;
  return this;
}

void std::istrstream::~istrstream(std::istrstream *this)
{
  v2 = v1;
  v4 = *v1;
  this->__vftable = *v1;
  *(&this->__vftable + v4[-2].~istrstream_0) = *(v1 + 24);
  std::strstreambuf::~strstreambuf(&this->__sb_);

  std::istream::~istream(this, v2 + 8);
}

{
  std::istrstream::~istrstream(this);
  std::ios::~ios((v1 + 112));
}

{
  std::istrstream::~istrstream(this);
  std::ios::~ios((v1 + 112));

  JUMPOUT(0x193B0CA40);
}

void virtual thunk tostd::istrstream::~istrstream(std::istrstream *this)
{
  std::istrstream::~istrstream((this + this->__vftable[-2].~istrstream_0));
  v2 = (v1 + 112);

  std::ios::~ios(v2);
}

{
  std::istrstream::~istrstream((this + this->__vftable[-2].~istrstream_0));
}

void std::ostrstream::~ostrstream(std::ostrstream *this)
{
  v2 = v1;
  v4 = *v1;
  this->__vftable = *v1;
  *(&this->__vftable + v4[-2].~ostrstream_0) = *(v1 + 24);
  std::strstreambuf::~strstreambuf(&this->__sb_);

  std::ostream::~ostream(this, v2 + 8);
}

{
  std::ostrstream::~ostrstream(this);
  std::ios::~ios((v1 + 104));
}

{
  std::ostrstream::~ostrstream(this);
  std::ios::~ios((v1 + 104));

  JUMPOUT(0x193B0CA40);
}

void virtual thunk tostd::ostrstream::~ostrstream(std::ostrstream *this)
{
  std::ostrstream::~ostrstream((this + this->__vftable[-2].~ostrstream_0));
  v2 = (v1 + 104);

  std::ios::~ios(v2);
}

{
  std::ostrstream::~ostrstream((this + this->__vftable[-2].~ostrstream_0));
}

void std::strstream::~strstream(std::strstream *this)
{
  v2 = v1;
  v4 = *v1;
  this->__sb_.__vftable = *v1;
  *(&this->__sb_.__vftable + v4[-1].pbackfail) = *(v1 + 64);
  this->__sb_.__binp_ = *(v1 + 72);
  std::strstreambuf::~strstreambuf(&this->__sb_.__ninp_);

  std::iostream::~basic_iostream(this, v2 + 8);
}

{
  std::strstream::~strstream(this);
  std::ios::~ios((v1 + 120));
}

{
  std::strstream::~strstream(this);
  std::ios::~ios((v1 + 120));

  JUMPOUT(0x193B0CA40);
}

void non-virtual thunk tostd::strstream::~strstream(std::strstream *this)
{
  std::strstream::~strstream((this - 16));

  std::ios::~ios(&this[1].__sb_.__loc_);
}

{
  std::strstream::~strstream((this - 16));
}

void virtual thunk tostd::strstream::~strstream(std::strstream *this)
{
  std::strstream::~strstream((this + this->__sb_.__vftable[-1].pbackfail));
  v2 = (v1 + 120);

  std::ios::~ios(v2);
}

{
  std::strstream::~strstream((this + this->__sb_.__vftable[-1].pbackfail));
}

std::error_code std::__fs::filesystem::directory_entry::__do_refresh(std::__fs::filesystem::directory_entry *this)
{
  this->__data_.__size_ = -1;
  p_data = &this->__data_;
  *&this->__data_.__type_ = 0;
  *&this->__data_.__sym_perms_ = 0xFFFF0000FFFFLL;
  this->__data_.__write_time_.__d_.__rep_ = 0uLL;
  this->__data_.__nlink_ = -1;
  LODWORD(v20) = 0;
  v3 = std::system_category();
  v21 = v3;
  LODWORD(v22) = 0;
  v23 = v3;
  if ((this->__p_.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = this;
  }

  else
  {
    v4 = this->__p_.__pn_.__r_.__value_.__r.__words[0];
  }

  if (lstat(v4, &v19.st_rdev) == -1)
  {
    v5 = *__error();
    v6 = std::generic_category();
    v22 = v5;
    v23 = v6;
  }

  std::__fs::filesystem::detail::create_file_status(&v22, this, &v19.st_rdev, &v20, &v19.st_uid);
  LOBYTE(v7) = v19.st_uid;
  v8 = HIDWORD(*&v19.st_uid);
  if (LOBYTE(v19.st_uid) != 3)
  {
    if (!LOBYTE(v19.st_uid))
    {
      *&this->__data_.__type_ = 0;
      *&this->__data_.__sym_perms_ = 0xFFFF0000FFFFLL;
      p_data->__size_ = -1;
      p_data->__nlink_ = -1;
      *&this->__data_.__write_time_.__d_.__rep_ = 0;
      *(&this->__data_.__write_time_.__d_.__rep_ + 1) = 0x8000000000000000;
LABEL_27:
      v14 = v20;
      v3 = v21;
      v15 = v20 & 0xFFFFFFFF00000000;
      goto LABEL_28;
    }

    this->__data_.__cache_type_ = _RefreshNonSymlink;
    this->__data_.__type_ = v7;
    this->__data_.__non_sym_perms_ = v8;
LABEL_17:
    if (v7 == 1)
    {
      p_data->__size_ = *&v19.st_gen;
    }

    if (v7 && v7 != 255)
    {
      this->__data_.__nlink_ = *(&v19.st_rdev + 3);
      if (v19.st_ctimespec.tv_nsec < 0 && v19.st_birthtimespec.tv_sec)
      {
        v13 = (v19.st_birthtimespec.tv_sec + (v19.st_ctimespec.tv_nsec + 1) * 1000000000 + __PAIR128__(-1, -1000000000)) >> 64;
        v12 = v19.st_birthtimespec.tv_sec + 1000000000 * (v19.st_ctimespec.tv_nsec + 1) - 1000000000;
      }

      else
      {
        v13 = (v19.st_ctimespec.tv_nsec * 1000000000 + v19.st_birthtimespec.tv_sec) >> 64;
        v12 = 1000000000 * v19.st_ctimespec.tv_nsec + v19.st_birthtimespec.tv_sec;
      }

      *&this->__data_.__write_time_.__d_.__rep_ = v12;
      *(&this->__data_.__write_time_.__d_.__rep_ + 1) = v13;
    }

    goto LABEL_27;
  }

  this->__data_.__sym_perms_ = v19.st_gid;
  v19.st_dev = 0;
  v19.st_ino = v3;
  LODWORD(v22) = 0;
  v23 = v3;
  if ((this->__p_.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = this;
  }

  else
  {
    v9 = this->__p_.__pn_.__r_.__value_.__r.__words[0];
  }

  if (stat(v9, &v19.st_rdev) == -1)
  {
    v10 = *__error();
    v11 = std::generic_category();
    v22 = v10;
    v23 = v11;
  }

  std::__fs::filesystem::detail::create_file_status(&v22, this, &v19.st_rdev, &v19, &v18);
  v7 = v18;
  this->__data_.__type_ = v18;
  this->__data_.__non_sym_perms_ = HIDWORD(v7);
  if (v7)
  {
    this->__data_.__cache_type_ = _RefreshSymlink;
    goto LABEL_17;
  }

  v14 = 0;
  v15 = 0;
  this->__data_.__cache_type_ = _RefreshSymlinkUnresolved;
LABEL_28:
  v16 = v15 | v14;
  v17 = v3;
  result.__cat_ = v17;
  result.__val_ = v16;
  return result;
}

void std::__fs::filesystem::detail::create_file_status(std::__fs::filesystem::detail *this@<X0>, std::error_code *a2@<X1>, const std::__fs::filesystem::path *a3@<X2>, const stat *a4@<X3>, uint64_t a5@<X8>)
{
  if (a4)
  {
    *&a4->st_dev = *this;
  }

  v11 = *this;
  if (v11)
  {
    v12 = std::generic_category();
    v21 = 2;
    v22 = v12;
    if ((*(**(this + 1) + 32))(*(this + 1), v11, &v21) & 1) != 0 || ((*(*&v22->st_dev + 40))(v22, this, v21) & 1) != 0 || (v25 = 20, v26 = v12, (*(**(this + 1) + 32))(*(this + 1), *this, &v25)) || ((v26->equivalent_0)(v26, this, v25))
    {
      *a5 = -1;
LABEL_9:
      v18 = 0xFFFF;
      goto LABEL_18;
    }

    if (*this)
    {
      v21 = "posix_stat";
      v22 = a4;
      v23 = a2;
      v24 = 0;
      if (a4)
      {
        a4->st_dev = 0;
        a4->st_ino = std::system_category();
      }

      std::__fs::filesystem::detail::ErrorHandler<void>::report(&v21, this, "failed to determine attributes for the specified path", v13, v14, v15, v16, v17, v21);
      *a5 = 0;
      goto LABEL_9;
    }
  }

  v19 = WORD2(a3->__pn_.__r_.__value_.__r.__words[0]);
  if ((v19 >> 12) == 7)
  {
    v20 = 8;
  }

  else
  {
    v20 = byte_19231D6E4[(v19 >> 12) ^ 8];
  }

  *a5 = v20;
  v18 = v19 & 0xFFF;
LABEL_18:
  *(a5 + 4) = v18;
}

__n128 std::__fs::filesystem::detail::ErrorHandler<void>::report_impl(uint64_t a1, __n128 *a2, std::__fs::filesystem::detail *a3, va_list a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v18, "in ");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*a1, &v18, &v19);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(": ", &v19, &v20);
    std::__fs::filesystem::detail::vformat_string(a3, a4, &v17);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v17;
    }

    else
    {
      v8 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v17.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v20, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v22 = v10->__r_.__value_.__r.__words[2];
    v21 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v17.__r_.__value_.__r.__words[0], v17.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v20.__r_.__value_.__r.__words[0], v20.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v19.__r_.__value_.__r.__words[0], v19.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v18.__r_.__value_.__r.__words[0], v18.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    v14 = v12 != 0;
    if (v13)
    {
      ++v14;
    }

    if (v14)
    {
      if (v14 == 1)
      {
        std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::__fs::filesystem::path const&,std::error_code const&>(&v21, v12, a2);
      }

      std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::__fs::filesystem::path const&,std::__fs::filesystem::path const&,std::error_code const&>(&v21, v12, v13, a2);
    }

    std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::error_code const&>(&v21, a2);
  }

  result = *a2;
  *v4 = *a2;
  return result;
}

void sub_1922F347C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 25) < 0)
  {
    std::__fs::filesystem::path::replace_extension((v30 - 48));
  }

  _Unwind_Resume(exception_object);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(char *__s@<X1>, std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::error_code const&>(uint64_t a1, void *a2)
{
  exception = __cxa_allocate_exception(0x30uLL);
  std::__fs::filesystem::filesystem_error::filesystem_error[abi:ne200100](exception, a1, *a2, a2[1]);
}

void std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::__fs::filesystem::path const&,std::error_code const&>(uint64_t a1, uint64_t a2, void *a3)
{
  exception = __cxa_allocate_exception(0x30uLL);
  std::__fs::filesystem::filesystem_error::filesystem_error[abi:ne200100](exception, a1, a2, *a3, a3[1]);
}

void std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::__fs::filesystem::path const&,std::__fs::filesystem::path const&,std::error_code const&>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  exception = __cxa_allocate_exception(0x30uLL);
  std::__fs::filesystem::filesystem_error::filesystem_error[abi:ne200100](exception, a1, a2, a3, *a4, a4[1]);
}

void sub_1922F3784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  imp = v16[1].__imp_.__imp_;
  if (imp)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](imp);
  }

  std::system_error::~system_error(v16);
  _Unwind_Resume(a1);
}

std::string *std::__shared_ptr_emplace<std::__fs::filesystem::filesystem_error::_Storage>::__shared_ptr_emplace[abi:ne200100]<std::__fs::filesystem::path,std::__fs::filesystem::path,std::allocator<std::__fs::filesystem::filesystem_error::_Storage>,0>(std::string *a1, __int128 *a2, __int128 *a3)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F06C40A8;
  std::__fs::filesystem::filesystem_error::_Storage::_Storage[abi:ne200100](a1 + 1, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<std::__fs::filesystem::filesystem_error::_Storage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F06C40A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193B0CA40);
}

uint64_t std::__shared_ptr_emplace<std::__fs::filesystem::filesystem_error::_Storage>::__on_zero_shared(uint64_t result)
{
  v1 = result;
  if (*(result + 95) < 0)
  {
    result = MEMORY[0x193B0CA40](*(result + 72), *(result + 88) & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (*(v1 + 71) < 0)
  {
    result = MEMORY[0x193B0CA40](*(v1 + 48), *(v1 + 64) & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (*(v1 + 47) < 0)
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 40) & 0x7FFFFFFFFFFFFFFFLL;

    JUMPOUT(0x193B0CA40);
  }

  return result;
}

std::string *std::__fs::filesystem::filesystem_error::_Storage::_Storage[abi:ne200100](std::string *this, __int128 *a2, __int128 *a3)
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

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  return this;
}

void sub_1922F3A10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char [2],void>(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1922F3AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  imp = v14[1].__imp_.__imp_;
  if (imp)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](imp);
  }

  std::system_error::~system_error(v14);
  _Unwind_Resume(a1);
}

std::string *std::__shared_ptr_emplace<std::__fs::filesystem::filesystem_error::_Storage>::__shared_ptr_emplace[abi:ne200100]<std::__fs::filesystem::path const&,std::__fs::filesystem::path,std::allocator<std::__fs::filesystem::filesystem_error::_Storage>,0>(std::string *a1, __int128 *a2, __int128 *a3)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F06C40A8;
  std::__fs::filesystem::filesystem_error::_Storage::_Storage[abi:ne200100](a1 + 1, a2, a3);
  return a1;
}

void sub_1922F3C68(_Unwind_Exception *a1)
{
  imp = v1[1].__imp_.__imp_;
  if (imp)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](imp);
  }

  std::system_error::~system_error(v1);
  _Unwind_Resume(a1);
}

std::string *std::__shared_ptr_emplace<std::__fs::filesystem::filesystem_error::_Storage>::__shared_ptr_emplace[abi:ne200100]<std::__fs::filesystem::path const&,std::__fs::filesystem::path const&,std::allocator<std::__fs::filesystem::filesystem_error::_Storage>,0>(std::string *a1, __int128 *a2, __int128 *a3)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F06C40A8;
  std::__fs::filesystem::filesystem_error::_Storage::_Storage[abi:ne200100](a1 + 1, a2, a3);
  return a1;
}

std::__fs::filesystem::directory_iterator *__cdecl std::__fs::filesystem::directory_iterator::directory_iterator(std::__fs::filesystem::directory_iterator *this, const std::__fs::filesystem::path *a2, std::error_code *a3, std::__fs::filesystem::directory_options a4)
{
  v13 = a4;
  this->__imp_.__ptr_ = 0;
  this->__imp_.__cntrl_ = 0;
  v9 = "directory_iterator::directory_iterator(...)";
  v10 = a3;
  v11 = a2;
  v12 = 0;
  if (a3)
  {
    a3->__val_ = 0;
    v5 = std::system_category();
    a3->__cat_ = v5;
  }

  else
  {
    v5 = std::system_category();
  }

  v7 = 0;
  v8 = v5;
  std::allocate_shared[abi:ne200100]<std::__fs::filesystem::__dir_stream,std::allocator<std::__fs::filesystem::__dir_stream>,std::__fs::filesystem::path const&,std::__fs::filesystem::directory_options &,std::error_code &,0>();
}

void sub_1922F3E50(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__fs::filesystem::detail::ErrorHandler<void>::report(uint64_t a1, __n128 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "in ");
    v5 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*a1, &v10, &v11);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v10.__r_.__value_.__r.__words[0], v10.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL, v5);
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    v8 = v6 != 0;
    if (v7)
    {
      ++v8;
    }

    if (v8)
    {
      if (v8 == 1)
      {
        std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::__fs::filesystem::path const&,std::error_code const&>(&v11, v6, a2);
      }

      std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::__fs::filesystem::path const&,std::__fs::filesystem::path const&,std::error_code const&>(&v11, v6, v7, a2);
    }

    std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::error_code const&>(&v11, a2);
  }

  result = *a2;
  *v2 = *a2;
  return result;
}

void sub_1922F3F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    std::__fs::filesystem::path::replace_extension(&a17);
  }

  _Unwind_Resume(exception_object);
}

std::__fs::filesystem::directory_iterator *__cdecl std::__fs::filesystem::directory_iterator::__increment(std::__fs::filesystem::directory_iterator *this, std::error_code *__ec)
{
  v18[0] = "directory_iterator::operator++()";
  v18[1] = __ec;
  v18[2] = 0;
  v18[3] = 0;
  if (__ec)
  {
    __ec->__val_ = 0;
    v4 = std::system_category();
    __ec->__cat_ = v4;
  }

  else
  {
    v4 = std::system_category();
  }

  v17.__val_ = 0;
  v17.__cat_ = v4;
  if ((std::__fs::filesystem::__dir_stream::advance(this->__imp_.__ptr_, &v17) & 1) == 0)
  {
    ptr = this->__imp_.__ptr_;
    v11 = *(this->__imp_.__ptr_ + 8);
    v16 = *(this->__imp_.__ptr_ + 3);
    v15 = v11;
    *(ptr + 1) = 0;
    *(ptr + 2) = 0;
    *(ptr + 3) = 0;
    cntrl = this->__imp_.__cntrl_;
    this->__imp_.__ptr_ = 0;
    this->__imp_.__cntrl_ = 0;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    if (v17.__val_)
    {
      v13 = &v15;
      if (v16 < 0)
      {
        LOBYTE(v13) = v15.n128_u8[0];
      }

      v11.n128_f64[0] = std::__fs::filesystem::detail::ErrorHandler<void>::report(v18, &v17, "at root %s", v5, v6, v7, v8, v9, v13);
    }

    if (SHIBYTE(v16) < 0)
    {
      MEMORY[0x193B0CA40](v15.n128_u64[0], v16 & 0x7FFFFFFFFFFFFFFFLL, v11);
    }
  }

  return this;
}

void sub_1922F4054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    std::__fs::filesystem::path::replace_extension(&a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__fs::filesystem::__dir_stream::advance(std::__fs::filesystem::__dir_stream *this, std::error_code *a2)
{
  v4 = *this;
  *__error() = 0;
  a2->__val_ = 0;
  v5 = std::system_category();
  a2->__cat_ = v5;
  v6 = readdir(v4);
  if (!v6)
  {
LABEL_8:
    if (*__error())
    {
      v11 = *__error();
      v12 = std::generic_category();
      *&a2->__val_ = v11;
      a2->__cat_ = v12;
    }

LABEL_10:
    std::__fs::filesystem::__dir_stream::close(this);
    return 0;
  }

  while (1)
  {
    d_name = v6->d_name;
    file = std::__fs::filesystem::detail::get_file_type<dirent,unsigned char>(v6);
    v19[0] = d_name;
    v9 = strlen(d_name);
    v19[1] = v9;
    v20 = file;
    if (v9 != 2)
    {
      break;
    }

    if (*d_name != 11822)
    {
      goto LABEL_12;
    }

LABEL_7:
    v10 = *this;
    *__error() = 0;
    a2->__val_ = 0;
    a2->__cat_ = v5;
    v6 = readdir(v10);
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (v9 != 1)
  {
    goto LABEL_13;
  }

  if (*d_name == 46)
  {
    goto LABEL_7;
  }

LABEL_12:
  v9 = 1;
LABEL_13:
  if (!v9 || a2->__val_)
  {
    goto LABEL_10;
  }

  std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&v17.__pn_, v19);
  std::__fs::filesystem::operator/[abi:ne200100](&v17, this + 8, &v18);
  v14 = v20;
  if (v20 == 3)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  if (v20)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (*(this + 55) < 0)
  {
    MEMORY[0x193B0CA40](*(this + 4), *(this + 6) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(this + 32) = v18;
  *(&v18.__pn_.__r_.__value_.__s + 23) = 0;
  v18.__pn_.__r_.__value_.__s.__data_[0] = 0;
  *(this + 8) = -1;
  *(this + 9) = -1;
  *(this + 10) = 0;
  *(this + 11) = 0x8000000000000000;
  *(this + 12) = 0xFFFF0000FFFFLL;
  *(this + 104) = v14;
  *(this + 105) = v16;
  if (SHIBYTE(v17.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v17.__pn_.__r_.__value_.__r.__words[0], v17.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  return 1;
}

void sub_1922F4228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::__fs::filesystem::path::replace_extension(&a10);
  }

  _Unwind_Resume(exception_object);
}

std::__fs::filesystem::recursive_directory_iterator *__cdecl std::__fs::filesystem::recursive_directory_iterator::recursive_directory_iterator(std::__fs::filesystem::recursive_directory_iterator *this, const std::__fs::filesystem::path *__p, std::__fs::filesystem::directory_options __opt, std::error_code *__ec)
{
  v13[15] = *MEMORY[0x1E69E9840];
  this->__imp_.__ptr_ = 0;
  this->__imp_.__cntrl_ = 0;
  this->__rec_ = 1;
  v12[0] = "recursive_directory_iterator";
  v12[1] = __ec;
  v12[2] = __p;
  v12[3] = 0;
  if (__ec)
  {
    __ec->__val_ = 0;
    v8 = std::system_category();
    __ec->__cat_ = v8;
  }

  else
  {
    v8 = std::system_category();
  }

  v11.__val_ = 0;
  v11.__cat_ = v8;
  std::__fs::filesystem::__dir_stream::__dir_stream(v13, __p, __opt, &v11);
  if (!v11.__val_ || (std::__fs::filesystem::detail::ErrorHandler<void>::report(v12, &v11), !v11.__val_))
  {
    if (v13[0])
    {
      operator new();
    }
  }

  std::__fs::filesystem::__dir_stream::~__dir_stream(v13);
  v9 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1922F43AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__fs::filesystem::__dir_stream::~__dir_stream(va);
  v9 = *(v7 + 8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

void std::__fs::filesystem::recursive_directory_iterator::__pop(std::__fs::filesystem::recursive_directory_iterator *this, std::error_code *__ec)
{
  if (__ec)
  {
    __ec->__val_ = 0;
    __ec->__cat_ = std::system_category();
  }

  std::deque<std::__fs::filesystem::__dir_stream>::pop_back(this->__imp_.__ptr_);
  if (*(this->__imp_.__ptr_ + 5))
  {

    std::__fs::filesystem::recursive_directory_iterator::__advance(this, __ec);
  }

  else
  {
    cntrl = this->__imp_.__cntrl_;
    this->__imp_.__ptr_ = 0;
    this->__imp_.__cntrl_ = 0;
    if (cntrl)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }
}

void std::__fs::filesystem::recursive_directory_iterator::__advance(std::__fs::filesystem::recursive_directory_iterator *this, std::error_code *__ec)
{
  v22[0] = "recursive_directory_iterator::operator++()";
  v22[1] = __ec;
  v22[2] = 0;
  v22[3] = 0;
  if (__ec)
  {
    __ec->__val_ = 0;
    v4 = std::system_category();
    __ec->__cat_ = v4;
  }

  else
  {
    v4 = std::system_category();
  }

  ptr = this->__imp_.__ptr_;
  v21.__val_ = 0;
  v21.__cat_ = v4;
  v6 = *(ptr + 5);
  if (v6)
  {
    while (1)
    {
      if (std::__fs::filesystem::__dir_stream::advance((*(*(ptr + 1) + 8 * ((v6 + *(ptr + 4) - 1) / 0x24uLL)) + 112 * ((v6 + *(ptr + 4) - 1) % 0x24uLL)), &v21))
      {
        return;
      }

      if (v21.__val_)
      {
        break;
      }

      std::deque<std::__fs::filesystem::__dir_stream>::pop_back(ptr);
      v6 = *(ptr + 5);
      if (!v6)
      {
        if (!v21.__val_)
        {
          goto LABEL_10;
        }

        v12 = -1;
        goto LABEL_13;
      }
    }

    v12 = *(ptr + 5) - 1;
LABEL_13:
    v14 = *(*(ptr + 1) + 8 * ((v12 + *(ptr + 4)) / 0x24uLL)) + 112 * ((v12 + *(ptr + 4)) % 0x24uLL);
    v15 = *(v14 + 24);
    v19 = *(v14 + 8);
    v20 = v15;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 8) = 0;
    cntrl = this->__imp_.__cntrl_;
    this->__imp_.__ptr_ = 0;
    this->__imp_.__cntrl_ = 0;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    v17 = &v19;
    if (v20 < 0)
    {
      LOBYTE(v17) = v19;
    }

    v18 = std::__fs::filesystem::detail::ErrorHandler<void>::report(v22, &v21, "at root %s", v7, v8, v9, v10, v11, v17);
    if (SHIBYTE(v20) < 0)
    {
      MEMORY[0x193B0CA40](v19, v20 & 0x7FFFFFFFFFFFFFFFLL, v18);
    }

    return;
  }

LABEL_10:
  v13 = this->__imp_.__cntrl_;
  this->__imp_.__ptr_ = 0;
  this->__imp_.__cntrl_ = 0;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_1922F4608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    std::__fs::filesystem::path::replace_extension(&a11);
  }

  _Unwind_Resume(exception_object);
}

std::__fs::filesystem::recursive_directory_iterator *__cdecl std::__fs::filesystem::recursive_directory_iterator::__increment(std::__fs::filesystem::recursive_directory_iterator *this, std::error_code *__ec)
{
  if (__ec)
  {
    __ec->__val_ = 0;
    __ec->__cat_ = std::system_category();
  }

  if (!this->__rec_ || !std::__fs::filesystem::recursive_directory_iterator::__try_recursion(this, __ec) && (!__ec || !__ec->__val_))
  {
    this->__rec_ = 1;
    std::__fs::filesystem::recursive_directory_iterator::__advance(this, __ec);
  }

  return this;
}

BOOL std::__fs::filesystem::recursive_directory_iterator::__try_recursion(std::__fs::filesystem::recursive_directory_iterator *this, std::error_code *__ec)
{
  v29 = *MEMORY[0x1E69E9840];
  v26[0] = "recursive_directory_iterator::operator++()";
  v26[1] = __ec;
  v26[2] = 0;
  v26[3] = 0;
  if (__ec)
  {
    __ec->__val_ = 0;
    v4 = std::system_category();
    __ec->__cat_ = v4;
  }

  else
  {
    v4 = std::system_category();
  }

  v5 = *(this->__imp_.__ptr_ + 48);
  v6 = *(this->__imp_.__ptr_ + 5) + *(this->__imp_.__ptr_ + 4) - 1;
  v7 = *(*(this->__imp_.__ptr_ + 1) + 8 * (v6 / 0x24));
  __eca.__val_ = 0;
  __eca.__cat_ = v4;
  v8 = v7 + 112 * (v6 % 0x24);
  if (v5)
  {
    v9 = std::__fs::filesystem::directory_entry::__get_ft[abi:ne200100]((v8 + 32), &__eca);
  }

  else
  {
    v9 = std::__fs::filesystem::directory_entry::__get_sym_ft[abi:ne200100]((v8 + 32), &__eca);
  }

  val = __eca.__val_;
  if (__eca.__val_)
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    __eca.__val_ = 0;
    __eca.__cat_ = v4;
  }

  if (v9 != 2)
  {
    goto LABEL_29;
  }

  std::__fs::filesystem::__dir_stream::__dir_stream(&v27, (v8 + 32), *(this->__imp_.__ptr_ + 48), &__eca);
  if (!v27)
  {
    std::__fs::filesystem::__dir_stream::~__dir_stream(&v27);
    val = __eca.__val_;
    if (!__eca.__val_)
    {
      goto LABEL_29;
    }

LABEL_14:
    v12 = *(this->__imp_.__ptr_ + 48);
    v13 = std::generic_category();
    *&v27 = 13;
    *(&v27 + 1) = v13;
    if ((__eca.__cat_->equivalent)(__eca.__cat_, val, &v27))
    {
      if ((v12 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if ((*(**(&v27 + 1) + 40))(*(&v27 + 1), &__eca, v27))
      {
        v19 = (v12 & 2) == 0;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
LABEL_16:
        if (__ec)
        {
          result = 0;
          __ec->__val_ = 0;
          __ec->__cat_ = v4;
          goto LABEL_30;
        }

LABEL_29:
        result = 0;
        goto LABEL_30;
      }
    }

    v20 = *(v8 + 32);
    v28 = *(v8 + 48);
    v27 = v20;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 32) = 0;
    cntrl = this->__imp_.__cntrl_;
    this->__imp_.__ptr_ = 0;
    this->__imp_.__cntrl_ = 0;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    v22 = &v27;
    if (v28 < 0)
    {
      LOBYTE(v22) = v27;
    }

    v23 = std::__fs::filesystem::detail::ErrorHandler<void>::report(v26, &__eca, "attempting recursion into %s", v14, v15, v16, v17, v18, v22);
    if (SHIBYTE(v28) < 0)
    {
      MEMORY[0x193B0CA40](v27, v28 & 0x7FFFFFFFFFFFFFFFLL, v23);
    }

    goto LABEL_29;
  }

  std::deque<std::__fs::filesystem::__dir_stream>::push_back(this->__imp_.__ptr_, &v27);
  std::__fs::filesystem::__dir_stream::~__dir_stream(&v27);
  result = 1;
LABEL_30:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1922F4980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    std::__fs::filesystem::path::replace_extension(&a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__fs::filesystem::directory_entry::__get_sym_ft[abi:ne200100](std::__fs::filesystem::path *a1, std::error_code *__ec)
{
  v3 = 1 << a1[3].__pn_.__r_.__value_.__s.__data_[1];
  if ((v3 & 0x5A) != 0)
  {
    if (__ec)
    {
      __ec->__val_ = 0;
      __ec->__cat_ = std::system_category();
    }

    LOBYTE(v4) = 3;
  }

  else if ((v3 & 0xA4) != 0)
  {
    v4 = a1[3].__pn_.__r_.__value_.__s.__data_[0];
    if (__ec)
    {
      if ((v4 - 255) > 0xFFFFFF01)
      {
        __ec->__val_ = 0;
        __ec->__cat_ = std::system_category();
      }

      else
      {
        v6 = std::generic_category();
        *&__ec->__val_ = 2;
        __ec->__cat_ = v6;
        LOBYTE(v4) = a1[3].__pn_.__r_.__value_.__s.__data_[0];
      }
    }
  }

  else
  {
    std::__fs::filesystem::__symlink_status(a1, __ec);
    LOBYTE(v4) = v8;
  }

  return v4;
}

uint64_t std::__fs::filesystem::directory_entry::__get_ft[abi:ne200100](std::__fs::filesystem::path *a1, std::error_code *__ec)
{
  if (((1 << a1[3].__pn_.__r_.__value_.__s.__data_[1]) & 0x53) != 0)
  {
    std::__fs::filesystem::__status(a1, __ec);
    LOBYTE(v4) = v7;
  }

  else
  {
    v4 = a1[3].__pn_.__r_.__value_.__s.__data_[0];
    if (__ec)
    {
      if ((v4 - 255) > 0xFFFFFF01)
      {
        __ec->__val_ = 0;
        __ec->__cat_ = std::system_category();
      }

      else
      {
        v5 = std::generic_category();
        *&__ec->__val_ = 2;
        __ec->__cat_ = v5;
        LOBYTE(v4) = a1[3].__pn_.__r_.__value_.__s.__data_[0];
      }
    }
  }

  return v4;
}

uint64_t std::__fs::filesystem::__dir_stream::close(DIR **this)
{
  v2 = closedir(*this);
  std::system_category();
  if (v2 == -1)
  {
    v3 = *__error();
    std::generic_category();
  }

  else
  {
    v3 = 0;
  }

  *this = 0;
  return v3;
}

std::__fs::filesystem::path *std::__fs::filesystem::operator/[abi:ne200100]@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a3->__pn_, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__pn_.__r_.__value_.__l.__data_ = *a2;
    a3->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  return std::__fs::filesystem::path::operator/=[abi:ne200100](a3, this);
}

void sub_1922F4BC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char [2],void>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__fs::filesystem::detail::get_file_type<dirent,unsigned char>(uint64_t a1)
{
  if (*(a1 + 20) - 1 > 0xB)
  {
    return 0;
  }

  else
  {
    return byte_19231D7BF[(*(a1 + 20) - 1)];
  }
}

std::__fs::filesystem::path *std::__fs::filesystem::path::operator/=[abi:ne200100](std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append[abi:ne200100]<char const*,0>(a1, *a2, (*a2 + *(a2 + 8)));
  return a1;
}

void sub_1922F4CC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char [2],void>(v1);
  }

  _Unwind_Resume(exception_object);
}

std::__fs::filesystem::__dir_stream *std::__fs::filesystem::__dir_stream::__dir_stream(std::__fs::filesystem::__dir_stream *this, const std::__fs::filesystem::path *a2, std::__fs::filesystem::directory_options a3, std::error_code *a4)
{
  *this = 0;
  v8 = (this + 8);
  if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v8, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v9 = *&a2->__pn_.__r_.__value_.__l.__data_;
    v8->__r_.__value_.__r.__words[2] = a2->__pn_.__r_.__value_.__r.__words[2];
    *&v8->__r_.__value_.__l.__data_ = v9;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 52) = 0;
  *(this + 12) = 0xFFFF0000FFFFLL;
  *(this + 8) = -1;
  *(this + 9) = -1;
  *(this + 10) = 0;
  *(this + 11) = 0x8000000000000000;
  if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2->__pn_.__r_.__value_.__r.__words[0];
  }

  v11 = opendir(v10);
  *this = v11;
  if (v11)
  {
    std::__fs::filesystem::__dir_stream::advance(this, a4);
  }

  else
  {
    v12 = *__error();
    v13 = std::generic_category();
    *&a4->__val_ = v12;
    a4->__cat_ = v13;
    if ((a3 & 2) != 0)
    {
      v15 = 13;
      v16 = v13;
      if ((v13->equivalent)(v13, v12, &v15) || (v16->equivalent_0)(v16, a4, v15))
      {
        a4->__val_ = 0;
        a4->__cat_ = std::system_category();
      }
    }
  }

  return this;
}

void sub_1922F4E28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    MEMORY[0x193B0CA40](*(v1 + 32), *(v1 + 48) & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (*(v1 + 31) < 0)
  {
    MEMORY[0x193B0CA40](*(v1 + 8), *(v1 + 24) & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void std::__fs::filesystem::__dir_stream::~__dir_stream(DIR **this)
{
  if (*this)
  {
    std::__fs::filesystem::__dir_stream::close(this);
  }

  if (*(this + 55) < 0)
  {
    MEMORY[0x193B0CA40](this[4], this[6] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (*(this + 31) < 0)
  {
    MEMORY[0x193B0CA40](this[1], this[3] & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void *std::__shared_ptr_emplace<std::__fs::filesystem::__dir_stream>::__shared_ptr_emplace[abi:ne200100]<std::__fs::filesystem::path const&,std::__fs::filesystem::directory_options &,std::error_code &,std::allocator<std::__fs::filesystem::__dir_stream>,0>(void *a1, const std::__fs::filesystem::path *a2, std::__fs::filesystem::directory_options *a3, std::error_code *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F06C40F8;
  std::__fs::filesystem::__dir_stream::__dir_stream((a1 + 4), a2, *a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<std::__fs::filesystem::__dir_stream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F06C40F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::__shared_ptr_emplace<std::__fs::filesystem::recursive_directory_iterator::__shared_imp>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F06C4148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193B0CA40);
}

uint64_t *std::deque<std::__fs::filesystem::__dir_stream>::~deque[abi:ne200100](uint64_t *a1)
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
    v6 = &v2[v5 / 0x24];
    v7 = (*v6 + 112 * (v5 % 0x24));
    v8 = v2[(a1[5] + v5) / 0x24] + 112 * ((a1[5] + v5) % 0x24);
    if (v7 != v8)
    {
      do
      {
        std::__fs::filesystem::__dir_stream::~__dir_stream(v7);
        v7 = (v9 + 112);
        if ((v7 - *v6) == 4032)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      MEMORY[0x193B0CA40](*v2, 4032);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 18;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = 36;
  }

  a1[4] = v12;
LABEL_16:
  while (v2 != v3)
  {
    v13 = *v2++;
    MEMORY[0x193B0CA40](v13, 4032);
  }

  return std::__split_buffer<std::__fs::filesystem::__dir_stream *>::~__split_buffer(a1);
}

uint64_t *std::__split_buffer<std::__fs::filesystem::__dir_stream *>::~__split_buffer(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    a1[2] = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    MEMORY[0x193B0CA40](v4, a1[3] - v4);
  }

  return a1;
}

__n128 std::deque<std::__fs::filesystem::__dir_stream>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 36 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<std::__fs::filesystem::__dir_stream>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x24)) + 112 * (v8 % 0x24);
  *v9 = *a2;
  v10 = *(a2 + 8);
  *(v9 + 24) = *(a2 + 24);
  *(v9 + 8) = v10;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v11 = *(a2 + 32);
  *(v9 + 48) = *(a2 + 48);
  *(v9 + 32) = v11;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  result = *(a2 + 64);
  v13 = *(a2 + 96);
  *(v9 + 80) = *(a2 + 80);
  *(v9 + 96) = v13;
  *(v9 + 64) = result;
  *a2 = 0;
  ++*(a1 + 40);
  return result;
}

void *std::deque<std::__fs::filesystem::__dir_stream>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x24;
  v3 = v1 - 36;
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
    std::allocator<std::__fs::filesystem::__dir_stream *>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::__fs::filesystem::__dir_stream *>::emplace_back<std::__fs::filesystem::__dir_stream *&>(a1, &v10);
}

void sub_1922F54CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x193B0CA40](v3, 4032);
  std::__split_buffer<std::__fs::filesystem::__dir_stream *>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::__fs::filesystem::__dir_stream *>::emplace_back<std::__fs::filesystem::__dir_stream *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::allocator<std::__fs::filesystem::__dir_stream *>::allocate_at_least[abi:ne200100](result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<std::__fs::filesystem::__dir_stream *>::emplace_front<std::__fs::filesystem::__dir_stream *>(const void **result, void *a2)
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

      std::allocator<std::__fs::filesystem::__dir_stream *>::allocate_at_least[abi:ne200100](result, v9);
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

void *std::__split_buffer<std::__fs::filesystem::__dir_stream *>::emplace_back<std::__fs::filesystem::__dir_stream *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::allocator<std::__fs::filesystem::__dir_stream *>::allocate_at_least[abi:ne200100](result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<std::__fs::filesystem::__dir_stream *>::emplace_front<std::__fs::filesystem::__dir_stream *&>(const void **result, void *a2)
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

      std::allocator<std::__fs::filesystem::__dir_stream *>::allocate_at_least[abi:ne200100](result[4], v9);
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

void std::allocator<std::__fs::filesystem::__dir_stream *>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<std::__fs::filesystem::__dir_stream>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__fs::filesystem::__dir_stream::~__dir_stream((*(a1[1] + 8 * (v2 / 0x24)) + 112 * (v2 % 0x24)));
  --a1[5];

  return std::deque<std::__fs::filesystem::__dir_stream>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<std::__fs::filesystem::__dir_stream>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 36 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x24)
  {
    a2 = 1;
  }

  if (v5 < 0x48)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    MEMORY[0x193B0CA40](*(v2 - 8), 4032);
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

std::__fs::filesystem::path *__cdecl std::__fs::filesystem::__absolute(std::__fs::filesystem::path *__return_ptr retstr, const std::__fs::filesystem::path *a2, std::error_code *__ec)
{
  memset(&v4, 0, sizeof(v4));
  std::__fs::filesystem::__do_absolute(a2, &v4, __ec, retstr);
  if (SHIBYTE(v4.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    return MEMORY[0x193B0CA40](v4.__pn_.__r_.__value_.__r.__words[0], v4.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_1922F5AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::__fs::filesystem::path::replace_extension(&a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__fs::filesystem::__do_absolute(std::__fs::filesystem::path *this@<X0>, std::__fs::filesystem::path *a2@<X1>, std::error_code *a3@<X2>, std::__fs::filesystem::path *a4@<X8>)
{
  if (a3)
  {
    a3->__val_ = 0;
    a3->__cat_ = std::system_category();
  }

  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    if (SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = this->__pn_.__r_.__value_.__r.__words[0];
      size = this->__pn_.__r_.__value_.__l.__size_;

      std::string::__init_copy_ctor_external(&a4->__pn_, v9, size);
    }

    else
    {
      *&a4->__pn_.__r_.__value_.__l.__data_ = *&this->__pn_.__r_.__value_.__l.__data_;
      a4->__pn_.__r_.__value_.__r.__words[2] = this->__pn_.__r_.__value_.__r.__words[2];
    }
  }

  else
  {
    std::__fs::filesystem::__current_path(&v11, a3);
    if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](a2->__pn_.__r_.__value_.__r.__words[0], a2->__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    *a2 = v11;
    if (a3 && a3->__val_)
    {
      a4->__pn_.__r_.__value_.__r.__words[0] = 0;
      a4->__pn_.__r_.__value_.__l.__size_ = 0;
      a4->__pn_.__r_.__value_.__r.__words[2] = 0;
    }

    else
    {
      std::__fs::filesystem::operator/[abi:ne200100](this, a2, a4);
    }
  }
}

std::__fs::filesystem::path *__cdecl std::__fs::filesystem::__canonical(std::__fs::filesystem::path *__return_ptr retstr, const std::__fs::filesystem::path *a2, std::error_code *__ec)
{
  memset(&v14, 0, sizeof(v14));
  v13[0] = "canonical";
  v13[1] = __ec;
  v13[2] = a2;
  v13[3] = &v14;
  if (__ec)
  {
    __ec->__val_ = 0;
    __ec->__cat_ = std::system_category();
  }

  std::__fs::filesystem::__do_absolute(a2, &v14, __ec, &v12);
  if ((v12.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v12;
  }

  else
  {
    v6 = v12.__pn_.__r_.__value_.__r.__words[0];
  }

  v7 = realpath_DARWIN_EXTSN(v6, 0);
  v8 = v7;
  if (v7)
  {
    v11.n128_u64[0] = v7;
    std::__fs::filesystem::path::path[abi:ne200100]<char *,void>(&retstr->__pn_, &v11);
    free(v8);
  }

  else
  {
    v11.n128_u64[0] = *__error();
    v11.n128_u64[1] = std::generic_category();
    v10 = std::__fs::filesystem::detail::ErrorHandler<std::__fs::filesystem::path>::report(v13, &v11, retstr);
  }

  if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    result = MEMORY[0x193B0CA40](v12.__pn_.__r_.__value_.__r.__words[0], v12.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL, v10);
  }

  if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    return MEMORY[0x193B0CA40](v14.__pn_.__r_.__value_.__r.__words[0], v14.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL, v10);
  }

  return result;
}

void sub_1922F5CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  free(v13);
  if (SHIBYTE(a13) < 0)
  {
    MEMORY[0x193B0CA40](a11, a13 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (*(v14 - 33) < 0)
  {
    MEMORY[0x193B0CA40](*(v14 - 56), *(v14 - 40) & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(a1);
}

__n128 std::__fs::filesystem::detail::ErrorHandler<std::__fs::filesystem::path>::report@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v11, "in ");
    v6 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*a1, &v11, &v12);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v11.__r_.__value_.__r.__words[0], v11.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL, v6);
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    v9 = v7 != 0;
    if (v8)
    {
      ++v9;
    }

    if (v9)
    {
      if (v9 == 1)
      {
        std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::__fs::filesystem::path const&,std::error_code const&>(&v12, v7, a2);
      }

      std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::__fs::filesystem::path const&,std::__fs::filesystem::path const&,std::error_code const&>(&v12, v7, v8, a2);
    }

    std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::error_code const&>(&v12, a2);
  }

  result = *a2;
  *v3 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  return result;
}

void sub_1922F5E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    std::__fs::filesystem::path::replace_extension(&a17);
  }

  _Unwind_Resume(exception_object);
}

void std::__fs::filesystem::__copy(const std::__fs::filesystem::path *__from, const std::__fs::filesystem::path *__to, std::__fs::filesystem::copy_options __opt, std::error_code *__ec)
{
  v5 = __opt;
  _190[0] = "copy";
  _190[1] = __ec;
  _190[2] = __from;
  _190[3] = __to;
  if (__ec)
  {
    __ec->__val_ = 0;
    v8 = std::system_category();
    __ec->__cat_ = v8;
  }

  else
  {
    v8 = std::system_category();
  }

  v28 = 0;
  v29 = v8;
  if ((v5 & 0xB0) != 0)
  {
    v25.st_dev = 0;
    v25.st_ino = v8;
    if ((__from->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = __from;
    }

    else
    {
      v9 = __from->__pn_.__r_.__value_.__r.__words[0];
    }

    v10 = lstat(v9, &v27);
  }

  else
  {
    v25.st_dev = 0;
    v25.st_ino = v8;
    if ((__from->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = __from;
    }

    else
    {
      v11 = __from->__pn_.__r_.__value_.__r.__words[0];
    }

    v10 = stat(v11, &v27);
  }

  if (v10 == -1)
  {
    *&v25.st_dev = *__error();
    v25.st_ino = std::generic_category();
  }

  std::__fs::filesystem::detail::create_file_status(&v25, __from, &v27, &v28, v26);
  if (v28)
  {
    goto LABEL_16;
  }

  if ((v5 & 0xA0) != 0)
  {
    LODWORD(__toa.__pn_.__r_.__value_.__l.__data_) = 0;
    __toa.__pn_.__r_.__value_.__l.__size_ = v8;
    if ((__to->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = __to;
    }

    else
    {
      v13 = __to->__pn_.__r_.__value_.__r.__words[0];
    }

    v14 = lstat(v13, &v25);
  }

  else
  {
    LODWORD(__toa.__pn_.__r_.__value_.__l.__data_) = 0;
    __toa.__pn_.__r_.__value_.__l.__size_ = v8;
    if ((__to->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = __to;
    }

    else
    {
      v15 = __to->__pn_.__r_.__value_.__r.__words[0];
    }

    v14 = stat(v15, &v25);
  }

  if (v14 == -1)
  {
    __toa.__pn_.__r_.__value_.__r.__words[0] = *__error();
    __toa.__pn_.__r_.__value_.__l.__size_ = std::generic_category();
  }

  std::__fs::filesystem::detail::create_file_status(&__toa, __to, &v25, &v28, v24);
  if (!v24[0])
  {
LABEL_16:
    p_toa = &v28;
LABEL_33:
    std::__fs::filesystem::detail::ErrorHandler<void>::report(_190, p_toa);
    return;
  }

  if (!v26[0] || v26[0] == 255 || v26[0] - 4 < 0xFFFFFFFD || v24[0] != 255 && (v24[0] - 4 < 0xFFFFFFFD || v24[0] == 1 && v26[0] == 2 || v27.st_dev == v25.st_dev && v27.st_ino == v25.st_ino))
  {
    v16 = std::generic_category();
    __toa.__pn_.__r_.__value_.__r.__words[0] = 78;
    __toa.__pn_.__r_.__value_.__l.__size_ = v16;
    p_toa = &__toa;
    goto LABEL_33;
  }

  if (v26[0] == 1)
  {
    if ((v5 & 0x40) == 0)
    {
      if ((v5 & 0x80) != 0)
      {
        std::__fs::filesystem::__create_symlink(__from, __to, __ec);
      }

      else if ((v5 & 0x100) != 0)
      {
        std::__fs::filesystem::__create_hard_link(__from, __to, __ec);
      }

      else if (v24[0] == 2)
      {
        std::__fs::filesystem::path::filename[abi:ne200100](__from, &v22);
        std::__fs::filesystem::operator/[abi:ne200100](&v22, __to, &__toa);
        std::__fs::filesystem::__copy_file(__from, &__toa, v5, __ec);
        if (SHIBYTE(__toa.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          MEMORY[0x193B0CA40](__toa.__pn_.__r_.__value_.__r.__words[0], __toa.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
        }

        if (SHIBYTE(v22.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          MEMORY[0x193B0CA40](v22.__pn_.__r_.__value_.__r.__words[0], v22.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
        }
      }

      else
      {
        std::__fs::filesystem::__copy_file(__from, __to, v5, __ec);
      }
    }

    return;
  }

  if (v26[0] != 2)
  {
    if ((v5 & 0x20) != 0)
    {
      return;
    }

    if (v24[0] == 255)
    {
      std::__fs::filesystem::__copy_symlink(__from, __to, __ec);
      return;
    }

    v17 = 17;
LABEL_65:
    LODWORD(__toa.__pn_.__r_.__value_.__l.__data_) = v17;
    std::__fs::filesystem::detail::ErrorHandler<void>::report(_190, &__toa);
    return;
  }

  if ((v5 & 0x80) != 0)
  {
    v17 = 21;
    goto LABEL_65;
  }

  if (!v5 || (v5 & 8) != 0)
  {
    if (v24[0] == 255)
    {
      std::__fs::filesystem::__create_directory(__to, __from, __ec);
      if (__ec)
      {
        if (__ec->__val_)
        {
          return;
        }

LABEL_68:
        std::__fs::filesystem::directory_iterator::directory_iterator(&v21, __from, __ec, none);
        if (__ec->__val_)
        {
LABEL_82:
          if (v21.__imp_.__cntrl_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21.__imp_.__cntrl_);
          }

          return;
        }

LABEL_71:
        v20.__val_ = 0;
        v20.__cat_ = v8;
        if (v21.__imp_.__ptr_)
        {
          while (1)
          {
            v18 = std::__fs::filesystem::directory_iterator::__dereference(&v21);
            v19 = std::__fs::filesystem::directory_iterator::__dereference(&v21);
            std::__fs::filesystem::path::filename[abi:ne200100](&v19->__p_, &v22);
            std::__fs::filesystem::operator/[abi:ne200100](&v22, __to, &__toa);
            std::__fs::filesystem::__copy(&v18->__p_, &__toa, (v5 | 0x200), __ec);
            if (SHIBYTE(__toa.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              MEMORY[0x193B0CA40](__toa.__pn_.__r_.__value_.__r.__words[0], __toa.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
            }

            if (SHIBYTE(v22.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              MEMORY[0x193B0CA40](v22.__pn_.__r_.__value_.__r.__words[0], v22.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
            }

            if (__ec && __ec->__val_)
            {
              break;
            }

            std::__fs::filesystem::directory_iterator::__increment(&v21, &v20);
            if (v20.__val_ || !v21.__imp_.__ptr_)
            {
              if (v20.__val_)
              {
                std::__fs::filesystem::detail::ErrorHandler<void>::report(_190, &v20);
              }

              goto LABEL_82;
            }
          }
        }

        goto LABEL_82;
      }
    }

    else if (__ec)
    {
      goto LABEL_68;
    }

    std::__fs::filesystem::directory_iterator::directory_iterator(&v21, __from, 0, none);
    goto LABEL_71;
  }
}

void sub_1922F62B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

double std::__fs::filesystem::detail::ErrorHandler<void>::report(uint64_t a1, unsigned int *a2)
{
  v4.n128_u64[0] = *a2;
  v4.n128_u64[1] = std::generic_category();
  *&result = std::__fs::filesystem::detail::ErrorHandler<void>::report(a1, &v4).n128_u64[0];
  return result;
}

void std::__fs::filesystem::__copy_symlink(const std::__fs::filesystem::path *__existing_symlink, const std::__fs::filesystem::path *__new_symlink, std::error_code *__ec)
{
  std::__fs::filesystem::__read_symlink(&__to, __existing_symlink, __ec);
  if (!__ec || !__ec->__val_)
  {
    std::__fs::filesystem::__create_symlink(&__to, __new_symlink, __ec);
  }

  if (SHIBYTE(__to.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__to.__pn_.__r_.__value_.__r.__words[0], __to.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void sub_1922F6408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::__fs::filesystem::path::replace_extension(&a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__fs::filesystem::__create_symlink(const std::__fs::filesystem::path *__to, const std::__fs::filesystem::path *__new_symlink, std::error_code *__ec)
{
  v8[0] = "create_symlink";
  v8[1] = __ec;
  v8[2] = __to;
  v8[3] = __new_symlink;
  if (__ec)
  {
    __ec->__val_ = 0;
    __ec->__cat_ = std::system_category();
  }

  if ((__to->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = __to;
  }

  else
  {
    v5 = __to->__pn_.__r_.__value_.__r.__words[0];
  }

  if ((__new_symlink->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = __new_symlink;
  }

  else
  {
    v6 = __new_symlink->__pn_.__r_.__value_.__r.__words[0];
  }

  if (symlink(v5, v6) == -1)
  {
    v7.n128_u64[0] = *__error();
    v7.n128_u64[1] = std::generic_category();
    std::__fs::filesystem::detail::ErrorHandler<void>::report(v8, &v7);
  }
}

void std::__fs::filesystem::__create_hard_link(const std::__fs::filesystem::path *__to, const std::__fs::filesystem::path *__new_hard_link, std::error_code *__ec)
{
  v8[0] = "create_hard_link";
  v8[1] = __ec;
  v8[2] = __to;
  v8[3] = __new_hard_link;
  if (__ec)
  {
    __ec->__val_ = 0;
    __ec->__cat_ = std::system_category();
  }

  if ((__to->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = __to;
  }

  else
  {
    v5 = __to->__pn_.__r_.__value_.__r.__words[0];
  }

  if ((__new_hard_link->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = __new_hard_link;
  }

  else
  {
    v6 = __new_hard_link->__pn_.__r_.__value_.__r.__words[0];
  }

  if (link(v5, v6) == -1)
  {
    v7.n128_u64[0] = *__error();
    v7.n128_u64[1] = std::generic_category();
    std::__fs::filesystem::detail::ErrorHandler<void>::report(v8, &v7);
  }
}

BOOL std::__fs::filesystem::__copy_file(const std::__fs::filesystem::path *__from, const std::__fs::filesystem::path *__to, std::__fs::filesystem::copy_options __opt, std::error_code *__ec)
{
  v4 = __opt;
  _200[0] = "copy_file";
  _200[1] = __ec;
  _200[2] = __to;
  _200[3] = __from;
  if (__ec)
  {
    __ec->__val_ = 0;
    v8 = std::system_category();
    __ec->__cat_ = v8;
  }

  else
  {
    v8 = std::system_category();
  }

  LODWORD(v34) = 0;
  v35 = v8;
  std::__fs::filesystem::detail::FileDescriptor::create_with_status<int>(__from, &v34, 4, v27);
  if (v34)
  {
    v9 = std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(_200, &v34);
LABEL_28:
    v15 = v9;
    goto LABEL_29;
  }

  if (v33 != 1)
  {
    v16 = std::generic_category();
    v34 = 45;
    v35 = v16;
    v9 = std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(_200, &v34);
    goto LABEL_28;
  }

  LODWORD(v21) = 0;
  v22 = v8;
  if ((__to->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = __to;
  }

  else
  {
    v10 = __to->__pn_.__r_.__value_.__r.__words[0];
  }

  if (stat(v10, &v26) == -1)
  {
    v21 = *__error();
    v22 = std::generic_category();
  }

  std::__fs::filesystem::detail::create_file_status(&v21, __to, &v26, &v34, &v25);
  if (!v25)
  {
    v9 = std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(_200, &v34);
    goto LABEL_28;
  }

  v11 = v25;
  v12 = v25 != 255;
  if (v25 != 1)
  {
    if (v25 != 255)
    {
      v17 = std::generic_category();
      v21 = 45;
      v22 = v17;
      v9 = std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(_200, &v21);
      goto LABEL_28;
    }

    goto LABEL_15;
  }

  if (v28 == v26.st_dev && v30 == v26.st_ino)
  {
    LODWORD(v21) = 17;
    v9 = std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(_200, &v21);
    goto LABEL_28;
  }

  if (v4)
  {
LABEL_46:
    v15 = 0;
    goto LABEL_29;
  }

  if ((v4 & 4) != 0)
  {
    if (v31 < v26.st_mtimespec.tv_sec || v31 == v26.st_mtimespec.tv_sec && v32 <= v26.st_mtimespec.tv_nsec)
    {
      goto LABEL_46;
    }
  }

  else if ((v4 & 2) == 0)
  {
    v19 = std::generic_category();
    v21 = 17;
    v22 = v19;
    if ((std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(_200, &v21) & 1) == 0)
    {
      goto LABEL_46;
    }
  }

LABEL_15:
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = 513;
  }

  std::__fs::filesystem::detail::FileDescriptor::create_with_status<int,unsigned short>(__to, &v34, v13, v29, &v21);
  if (!v34)
  {
    if (v11 == 255)
    {
      goto LABEL_36;
    }

    if (v26.st_dev != v23 || v26.st_ino != v24)
    {
      v20 = 9;
      v14 = std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(_200, &v20);
      goto LABEL_20;
    }

    if (!std::__fs::filesystem::detail::posix_fchmod(&v21, &v28, &v34) && !std::__fs::filesystem::detail::posix_ftruncate(&v21, 0, &v34))
    {
LABEL_36:
      {
        v15 = 1;
        goto LABEL_21;
      }
    }
  }

  v14 = std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(_200, &v34);
LABEL_20:
  v15 = v14;
LABEL_21:
  std::__fs::filesystem::detail::FileDescriptor::close(&v21);
LABEL_29:
  std::__fs::filesystem::detail::FileDescriptor::close(v27);
  return v15;
}

double std::__fs::filesystem::path::filename[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__filename(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

BOOL std::__fs::filesystem::__create_directory(const std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *__attributes, std::error_code *a3)
{
  v22[0] = "create_directory";
  v22[1] = a3;
  v22[2] = a1;
  v22[3] = __attributes;
  if (a3)
  {
    a3->__val_ = 0;
    v6 = std::system_category();
    a3->__cat_ = v6;
  }

  else
  {
    v6 = std::system_category();
  }

  v21.st_dev = 0;
  v21.st_ino = v6;
  __ec.__val_ = 0;
  __ec.__cat_ = v6;
  if ((__attributes->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = __attributes;
  }

  else
  {
    v7 = __attributes->__pn_.__r_.__value_.__r.__words[0];
  }

  if (stat(v7, &v21.st_uid) == -1)
  {
    v8 = *__error();
    v9 = std::generic_category();
    *&__ec.__val_ = v8;
    __ec.__cat_ = v9;
  }

  std::__fs::filesystem::detail::create_file_status(&__ec, __attributes, &v21.st_uid, &v21, &v20);
  if (v20 == 2)
  {
    if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = a1->__pn_.__r_.__value_.__r.__words[0];
    }

    if (mkdir(v16, v21.st_gid))
    {
      v17 = *__error();
      v18 = std::generic_category();
      *&v21.st_dev = v17;
      v21.st_ino = v18;
      *&__ec.__val_ = 17;
      __ec.__cat_ = v18;
      if (!(v18->equivalent)(v18, v17, &__ec) && ((__ec.__cat_->equivalent_0)(__ec.__cat_, &v21, __ec.__val_) & 1) == 0)
      {
        return std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(v22, &v21);
      }

      __ec.__val_ = 0;
      __ec.__cat_ = v6;
      std::__fs::filesystem::__status(a1, &__ec);
      v20 = v19;
      if (v19 != 2)
      {
        return std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(v22, &v21);
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (!v20)
    {
      return std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(v22, &v21);
    }

    __ec.__val_ = 20;
    return std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(v22, &__ec, "the specified attribute path is invalid", v10, v11, v12, v13, v14, v19);
  }
}

void std::__fs::filesystem::detail::FileDescriptor::create_with_status<int>(uint64_t a1@<X0>, const stat *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  std::__fs::filesystem::detail::FileDescriptor::create<int>(a1, a2, a3, a4);
  if (!a2->st_dev)
  {
    *(a4 + 16) = 0u;
    *(a4 + 160) = 0xFFFF00000000;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 144) = 0u;
    LODWORD(v7) = 0;
    v8 = std::system_category();
    if (fstat(*(a4 + 8), (a4 + 16)) == -1)
    {
      v7 = *__error();
      v8 = std::generic_category();
    }

    std::__fs::filesystem::detail::create_file_status(&v7, *a4, (a4 + 16), a2, &v6);
    *(a4 + 160) = v6;
  }
}

uint64_t std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "in ");
    v5 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*a1, &v10, &v11);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v10.__r_.__value_.__r.__words[0], v10.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL, v5);
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    v8 = v6 != 0;
    if (v7)
    {
      ++v8;
    }

    if (v8)
    {
      if (v8 == 1)
      {
        std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::__fs::filesystem::path const&,std::error_code const&>(&v11, v6, a2);
      }

      std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::__fs::filesystem::path const&,std::__fs::filesystem::path const&,std::error_code const&>(&v11, v6, v7, a2);
    }

    std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::error_code const&>(&v11, a2);
  }

  *v2 = *a2;
  return 0;
}

void sub_1922F6CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    std::__fs::filesystem::path::replace_extension(&a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(uint64_t a1, unsigned int *a2)
{
  v4[0] = *a2;
  v4[1] = std::generic_category();
  return std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(a1, v4);
}

void std::__fs::filesystem::detail::FileDescriptor::create_with_status<int,unsigned short>(uint64_t a1@<X0>, const stat *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  std::__fs::filesystem::detail::FileDescriptor::create<int,unsigned short>(a1, a2, a3, a4, a5);
  if (!a2->st_dev)
  {
    *(a5 + 16) = 0u;
    *(a5 + 160) = 0xFFFF00000000;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 80) = 0u;
    *(a5 + 96) = 0u;
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0u;
    *(a5 + 144) = 0u;
    LODWORD(v8) = 0;
    v9 = std::system_category();
    if (fstat(*(a5 + 8), (a5 + 16)) == -1)
    {
      v8 = *__error();
      v9 = std::generic_category();
    }

    std::__fs::filesystem::detail::create_file_status(&v8, *a5, (a5 + 16), a2, &v7);
    *(a5 + 160) = v7;
  }
}

BOOL std::__fs::filesystem::detail::posix_fchmod(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = fchmod(*(a1 + 8), *(a2 + 4));
  if (v4 == -1)
  {
    v6 = *__error();
    v5 = std::generic_category();
    *a3 = v6;
  }

  else
  {
    *a3 = 0;
    v5 = std::system_category();
  }

  a3[1] = v5;
  return v4 == -1;
}

BOOL std::__fs::filesystem::detail::posix_ftruncate(uint64_t a1, off_t a2, void *a3)
{
  v4 = ftruncate(*(a1 + 8), a2);
  if (v4 == -1)
  {
    v6 = *__error();
    v5 = std::generic_category();
    *a3 = v6;
  }

  else
  {
    *a3 = 0;
    v5 = std::system_category();
  }

  a3[1] = v5;
  return v4 == -1;
}

BOOL std::__fs::filesystem::detail::anonymous namespace::copy_file_impl(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = copyfile_state_alloc();
  v7 = fcopyfile(*(a1 + 8), *(a2 + 8), v6, 8u);
  if (v7 < 0)
  {
    v9 = *__error();
    v8 = std::generic_category();
    *a3 = v9;
  }

  else
  {
    *a3 = 0;
    v8 = std::system_category();
  }

  a3[1] = v8;
  copyfile_state_free(v6);
  return v7 >= 0;
}

std::__fs::filesystem::path *__cdecl std::__fs::filesystem::__read_symlink(std::__fs::filesystem::path *__return_ptr retstr, const std::__fs::filesystem::path *a2, std::error_code *__ec)
{
  v12 = *MEMORY[0x1E69E9840];
  v9[0] = "read_symlink";
  v9[1] = __ec;
  v9[2] = a2;
  v9[3] = 0;
  if (__ec)
  {
    __ec->__val_ = 0;
    __ec->__cat_ = std::system_category();
  }

  if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2->__pn_.__r_.__value_.__r.__words[0];
  }

  v6 = readlink(v5, v11, 0x401uLL);
  if (v6 == -1)
  {
    v10.n128_u64[0] = *__error();
    v10.n128_u64[1] = std::generic_category();
    std::__fs::filesystem::detail::ErrorHandler<std::__fs::filesystem::path>::report(v9, &v10, retstr);
  }

  else if (v6 < 0x401)
  {
    v11[v6] = 0;
    v10.n128_u64[0] = v11;
    result = std::__fs::filesystem::path::path[abi:ne200100]<char *,void>(&retstr->__pn_, &v10);
  }

  else
  {
    v10.n128_u64[0] = 84;
    v10.n128_u64[1] = std::generic_category();
    std::__fs::filesystem::detail::ErrorHandler<std::__fs::filesystem::path>::report(v9, &v10, retstr);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL std::__fs::filesystem::__create_directories(const std::__fs::filesystem::path *a1, std::error_code *a2)
{
  v18[0] = "create_directories";
  v18[1] = a2;
  v18[2] = a1;
  v18[3] = 0;
  if (a2)
  {
    a2->__val_ = 0;
    v4 = std::system_category();
    a2->__cat_ = v4;
  }

  else
  {
    v4 = std::system_category();
  }

  __ec.__val_ = 0;
  __ec.__cat_ = v4;
  LODWORD(v20) = 0;
  v21 = v4;
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (stat(v5, &v19) == -1)
  {
    v6 = *__error();
    v7 = std::generic_category();
    v20 = v6;
    v21 = v7;
  }

  std::__fs::filesystem::detail::create_file_status(&v20, a1, &v19, &__ec, v16);
  if (v16[0] != 255)
  {
    if (v16[0] == 2)
    {
      return 0;
    }

    if (v16[0])
    {
      v12 = std::generic_category();
      *&v19.st_dev = 17;
      v19.st_ino = v12;
      p_ec = &v19;
    }

    else
    {
      p_ec = &__ec;
    }

    return std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(v18, p_ec);
  }

  std::__fs::filesystem::path::parent_path[abi:ne200100](a1, &v19);
  st_gid_high = HIBYTE(v19.st_gid);
  if ((v19.st_gid & 0x80000000) != 0)
  {
    st_gid_high = v19.st_ino;
  }

  if (st_gid_high)
  {
    std::__fs::filesystem::__status(&v19, &__ec);
    if (v20 == 255)
    {
      v11.__data_ = a1;
      if (std::__fs::filesystem::operator==[abi:ne200100](&v19, v11))
      {
        v15 = 22;
        v13 = std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(v18, &v15);
        goto LABEL_31;
      }

      std::__fs::filesystem::__create_directories(&v19, a2);
      if (a2 && a2->__val_)
      {
        v9 = 0;
        goto LABEL_32;
      }
    }

    else if (v20 != 2)
    {
      if (!v20)
      {
        goto LABEL_30;
      }

      v15 = 20;
      v13 = std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(v18, &v15);
      goto LABEL_31;
    }
  }

  v13 = std::__fs::filesystem::__create_directory(a1, &__ec);
  if (__ec.__val_)
  {
LABEL_30:
    v13 = std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(v18, &__ec);
  }

LABEL_31:
  v9 = v13;
LABEL_32:
  if (SHIBYTE(v19.st_gid) < 0)
  {
    MEMORY[0x193B0CA40](*&v19.st_dev, *&v19.st_uid & 0x7FFFFFFFFFFFFFFFLL);
  }

  return v9;
}

void sub_1922F72AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (SHIBYTE(a19) < 0)
  {
    MEMORY[0x193B0CA40](a17, a19 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

double std::__fs::filesystem::path::parent_path[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__parent_path(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

BOOL std::__fs::filesystem::operator==[abi:ne200100](const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) == 0;
}

BOOL std::__fs::filesystem::__create_directory(const std::__fs::filesystem::path *a1, std::error_code *a2)
{
  v9[0] = "create_directory";
  v9[1] = a2;
  v9[2] = a1;
  v9[3] = 0;
  if (a2)
  {
    a2->__val_ = 0;
    a2->__cat_ = std::system_category();
  }

  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (!mkdir(v3, 0x1FFu))
  {
    return 1;
  }

  v7 = *__error();
  v8 = std::generic_category();
  *&__ec.__val_ = 17;
  __ec.__cat_ = v8;
  if ((v8->equivalent)(v8, v7, &__ec) || ((__ec.__cat_->equivalent_0)(__ec.__cat_, &v7, __ec.__val_)) && (__ec.__val_ = 0, __ec.__cat_ = std::system_category(), std::__fs::filesystem::__status(a1, &__ec), v5 == 2))
  {
    return 0;
  }

  else
  {
    return std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(v9, &v7);
  }
}

uint64_t std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(uint64_t a1, unsigned int *a2, std::__fs::filesystem::detail *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = &a9;
  v12.n128_u64[0] = *a2;
  v12.n128_u64[1] = std::generic_category();
  std::__fs::filesystem::detail::ErrorHandler<BOOL>::report_impl(a1, &v12, a3, &a9);
  return 0;
}

void std::__fs::filesystem::__create_directory_symlink(const std::__fs::filesystem::path *__to, const std::__fs::filesystem::path *__new_symlink, std::error_code *__ec)
{
  v8[0] = "create_directory_symlink";
  v8[1] = __ec;
  v8[2] = __to;
  v8[3] = __new_symlink;
  if (__ec)
  {
    __ec->__val_ = 0;
    __ec->__cat_ = std::system_category();
  }

  if ((__to->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = __to;
  }

  else
  {
    v5 = __to->__pn_.__r_.__value_.__r.__words[0];
  }

  if ((__new_symlink->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = __new_symlink;
  }

  else
  {
    v6 = __new_symlink->__pn_.__r_.__value_.__r.__words[0];
  }

  if (symlink(v5, v6) == -1)
  {
    v7.n128_u64[0] = *__error();
    v7.n128_u64[1] = std::generic_category();
    std::__fs::filesystem::detail::ErrorHandler<void>::report(v8, &v7);
  }
}

std::__fs::filesystem::path *__cdecl std::__fs::filesystem::__current_path(std::__fs::filesystem::path *__return_ptr retstr, std::error_code *__ec)
{
  v8[0] = "current_path";
  v8[1] = __ec;
  v8[2] = 0;
  v8[3] = 0;
  if (__ec)
  {
    __ec->__val_ = 0;
    __ec->__cat_ = std::system_category();
  }

  v3 = getcwd(0, 0);
  if (v3)
  {
    v4 = v3;
    v7.n128_u64[0] = v3;
    std::__fs::filesystem::path::path[abi:ne200100]<char *,void>(&retstr->__pn_, &v7);
    free(v4);
  }

  else
  {
    v6 = *__error();
    v7.n128_u64[1] = std::generic_category();
    std::__fs::filesystem::detail::ErrorHandler<std::__fs::filesystem::path>::report(v8, &v7, "call to getcwd failed", retstr, v6);
  }

  return result;
}

void std::__fs::filesystem::detail::ErrorHandler<std::__fs::filesystem::path>::report(uint64_t a1@<X0>, __n128 *a2@<X1>, std::__fs::filesystem::detail *a3@<X2>, void *a4@<X8>, char a5)
{
  std::__fs::filesystem::detail::ErrorHandler<std::__fs::filesystem::path>::report_impl(a1, a2, a3, &a5);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
}

void std::__fs::filesystem::__current_path(const std::__fs::filesystem::path *a1, std::error_code *__ec)
{
  v5[0] = "current_path";
  v5[1] = __ec;
  v5[2] = a1;
  v5[3] = 0;
  if (__ec)
  {
    __ec->__val_ = 0;
    __ec->__cat_ = std::system_category();
  }

  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (chdir(v3) == -1)
  {
    v4.n128_u64[0] = *__error();
    v4.n128_u64[1] = std::generic_category();
    std::__fs::filesystem::detail::ErrorHandler<void>::report(v5, &v4);
  }
}

BOOL std::__fs::filesystem::__equivalent(const std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *a2, std::error_code *__ec)
{
  var80.st_atimespec.tv_sec = "equivalent";
  var80.st_atimespec.tv_nsec = __ec;
  var80.st_mtimespec.tv_sec = a1;
  var80.st_mtimespec.tv_nsec = a2;
  if (__ec)
  {
    __ec->__val_ = 0;
    v6 = std::system_category();
    __ec->__cat_ = v6;
  }

  else
  {
    v6 = std::system_category();
  }

  var80.st_uid = 0;
  *&var80.st_rdev = v6;
  var80.st_dev = 0;
  var80.st_ino = v6;
  memset(&v21, 0, sizeof(v21));
  memset(&v20, 0, sizeof(v20));
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v18, &a1->__pn_);
  LODWORD(var80.st_ctimespec.tv_sec) = 0;
  var80.st_ctimespec.tv_nsec = v6;
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v18;
  }

  else
  {
    v7 = v18.__r_.__value_.__r.__words[0];
  }

  if (stat(v7, &v21) == -1)
  {
    v8 = *__error();
    v9 = std::generic_category();
    var80.st_ctimespec.tv_sec = v8;
    var80.st_ctimespec.tv_nsec = v9;
  }

  std::__fs::filesystem::detail::create_file_status(&var80.st_ctimespec, &v18, &v21, &var80.st_uid, v19);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v18.__r_.__value_.__r.__words[0], v18.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (v19[0] != 255 && v19[0])
  {
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v18, &a2->__pn_);
    LODWORD(var80.st_ctimespec.tv_sec) = 0;
    var80.st_ctimespec.tv_nsec = v6;
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v18;
    }

    else
    {
      v12 = v18.__r_.__value_.__r.__words[0];
    }

    if (stat(v12, &v20) == -1)
    {
      v13 = *__error();
      v14 = std::generic_category();
      var80.st_ctimespec.tv_sec = v13;
      var80.st_ctimespec.tv_nsec = v14;
    }

    std::__fs::filesystem::detail::create_file_status(&var80.st_ctimespec, &v18, &v20, &var80, v17);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v18.__r_.__value_.__r.__words[0], v18.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if (v17[0] != 255 && v17[0])
    {
      return v21.st_dev == v20.st_dev && v21.st_ino == v20.st_ino;
    }

    else
    {
      v15 = std::generic_category();
      v18.__r_.__value_.__r.__words[0] = 45;
      v18.__r_.__value_.__l.__size_ = v15;
      return std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(&var80.st_atimespec, &v18);
    }
  }

  else
  {
    v10 = std::generic_category();
    v18.__r_.__value_.__r.__words[0] = 45;
    v18.__r_.__value_.__l.__size_ = v10;
    return std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(&var80.st_atimespec, &v18);
  }
}

uintmax_t std::__fs::filesystem::__file_size(const std::__fs::filesystem::path *a1, std::error_code *__ec)
{
  v16[0] = "file_size";
  v16[1] = __ec;
  v16[2] = a1;
  v16[3] = 0;
  if (__ec)
  {
    __ec->__val_ = 0;
    v4 = std::system_category();
    __ec->__cat_ = v4;
  }

  else
  {
    v4 = std::system_category();
  }

  LODWORD(v14) = 0;
  v15 = v4;
  LODWORD(v17) = 0;
  v18 = v4;
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (stat(v5, &v13) == -1)
  {
    v6 = *__error();
    v7 = std::generic_category();
    v17 = v6;
    v18 = v7;
  }

  std::__fs::filesystem::detail::create_file_status(&v17, a1, &v13, &v14, &v12);
  v8 = v12;
  if (v12 && v12 != 255 && v12 == 1)
  {
    return v13.st_size;
  }

  if (!v14)
  {
    v10 = std::generic_category();
    v11 = 45;
    if (v8 == 2)
    {
      v11 = 21;
    }

    v14 = v11;
    v15 = v10;
  }

  return std::__fs::filesystem::detail::ErrorHandler<unsigned long>::report(v16, &v14);
}

uint64_t std::__fs::filesystem::detail::ErrorHandler<unsigned long>::report(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "in ");
    v5 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*a1, &v10, &v11);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v10.__r_.__value_.__r.__words[0], v10.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL, v5);
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    v8 = v6 != 0;
    if (v7)
    {
      ++v8;
    }

    if (v8)
    {
      if (v8 == 1)
      {
        std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::__fs::filesystem::path const&,std::error_code const&>(&v11, v6, a2);
      }

      std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::__fs::filesystem::path const&,std::__fs::filesystem::path const&,std::error_code const&>(&v11, v6, v7, a2);
    }

    std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::error_code const&>(&v11, a2);
  }

  *v2 = *a2;
  return -1;
}

void sub_1922F7BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    std::__fs::filesystem::path::replace_extension(&a17);
  }

  _Unwind_Resume(exception_object);
}

uintmax_t std::__fs::filesystem::__hard_link_count(const std::__fs::filesystem::path *a1, std::error_code *__ec)
{
  v12[0] = "hard_link_count";
  v12[1] = __ec;
  v12[2] = a1;
  v12[3] = 0;
  if (__ec)
  {
    __ec->__val_ = 0;
    v4 = std::system_category();
    __ec->__cat_ = v4;
  }

  else
  {
    v4 = std::system_category();
  }

  LODWORD(v11[0]) = 0;
  v11[1] = v4;
  LODWORD(v13) = 0;
  v14 = v4;
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (stat(v5, &v10) == -1)
  {
    v6 = *__error();
    v7 = std::generic_category();
    v13 = v6;
    v14 = v7;
  }

  std::__fs::filesystem::detail::create_file_status(&v13, a1, &v10, v11, v9);
  if (LODWORD(v11[0]))
  {
    return std::__fs::filesystem::detail::ErrorHandler<unsigned long>::report(v12, v11);
  }

  else
  {
    return v10.st_nlink;
  }
}

BOOL std::__fs::filesystem::__fs_is_empty(const std::__fs::filesystem::path *__p, std::error_code *__ec)
{
  v16[0] = "is_empty";
  v16[1] = __ec;
  v16[2] = __p;
  v16[3] = 0;
  if (__ec)
  {
    __ec->__val_ = 0;
    v4 = std::system_category();
    __ec->__cat_ = v4;
  }

  else
  {
    v4 = std::system_category();
  }

  v14 = 0;
  v15 = v4;
  LODWORD(_D0[0].__imp_.__ptr_) = 0;
  _D0[0].__imp_.__cntrl_ = v4;
  if ((__p->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p->__pn_.__r_.__value_.__r.__words[0];
  }

  if (stat(v5, &v13) == -1)
  {
    v6 = *__error();
    v7 = std::generic_category();
    _D0[0].__imp_.__ptr_ = v6;
    _D0[0].__imp_.__cntrl_ = v7;
  }

  std::__fs::filesystem::detail::create_file_status(_D0, __p, &v13, &v14, v12);
  if (v14)
  {
    v8 = &v14;
    return std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(v16, v8);
  }

  if (v12[0] == 1)
  {
    return v13.st_size == 0;
  }

  if (v12[0] != 2)
  {
    v11 = std::generic_category();
    _D0[0].__imp_.__ptr_ = 45;
    _D0[0].__imp_.__cntrl_ = v11;
    v8 = _D0;
    return std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(v16, v8);
  }

  if (__ec)
  {
    std::__fs::filesystem::directory_iterator::directory_iterator(_D0, __p, __ec, none);
    v9 = 0;
    if (__ec->__val_)
    {
      goto LABEL_22;
    }
  }

  else
  {
    std::__fs::filesystem::directory_iterator::directory_iterator(_D0, __p, 0, none);
  }

  v9 = _D0[0].__imp_.__ptr_ == 0;
LABEL_22:
  if (_D0[0].__imp_.__cntrl_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](_D0[0].__imp_.__cntrl_);
  }

  return v9;
}

std::__fs::filesystem::file_time_type std::__fs::filesystem::__last_write_time(const std::__fs::filesystem::path *a1, std::error_code *__ec)
{
  v13[0] = "last_write_time";
  v13[1] = __ec;
  v13[2] = a1;
  v13[3] = 0;
  if (__ec)
  {
    __ec->__val_ = 0;
    v4 = std::system_category();
    __ec->__cat_ = v4;
  }

  else
  {
    v4 = std::system_category();
  }

  LODWORD(v12[0]) = 0;
  v12[1] = v4;
  LODWORD(v14) = 0;
  v15 = v4;
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (stat(v5, &v11) == -1)
  {
    v6 = *__error();
    v7 = std::generic_category();
    v14 = v6;
    v15 = v7;
  }

  std::__fs::filesystem::detail::create_file_status(&v14, a1, &v11, v12, v10);
  if (LODWORD(v12[0]))
  {
    v8 = std::__fs::filesystem::detail::ErrorHandler<std::chrono::time_point<std::__fs::filesystem::_FilesystemClock,std::chrono::duration<__int128,std::ratio<1l,1000000000l>>>>::report(v13, v12);
  }

  else
  {
    if (__ec)
    {
      __ec->__val_ = 0;
      __ec->__cat_ = v4;
    }

    if (v11.st_mtimespec.tv_sec < 0 && v11.st_mtimespec.tv_nsec)
    {
      v9 = (v11.st_mtimespec.tv_nsec + (v11.st_mtimespec.tv_sec + 1) * 1000000000 + __PAIR128__(-1, -1000000000)) >> 64;
      v8 = v11.st_mtimespec.tv_nsec + 1000000000 * (v11.st_mtimespec.tv_sec + 1) - 1000000000;
    }

    else
    {
      v9 = (v11.st_mtimespec.tv_sec * 1000000000 + v11.st_mtimespec.tv_nsec) >> 64;
      v8 = 1000000000 * v11.st_mtimespec.tv_sec + v11.st_mtimespec.tv_nsec;
    }
  }

  *(&result.__d_.__rep_ + 1) = v9;
  *&result.__d_.__rep_ = v8;
  return result;
}

uint64_t std::__fs::filesystem::detail::ErrorHandler<std::chrono::time_point<std::__fs::filesystem::_FilesystemClock,std::chrono::duration<__int128,std::ratio<1l,1000000000l>>>>::report(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "in ");
    v5 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*a1, &v10, &v11);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v10.__r_.__value_.__r.__words[0], v10.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL, v5);
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    v8 = v6 != 0;
    if (v7)
    {
      ++v8;
    }

    if (v8)
    {
      if (v8 == 1)
      {
        std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::__fs::filesystem::path const&,std::error_code const&>(&v11, v6, a2);
      }

      std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::__fs::filesystem::path const&,std::__fs::filesystem::path const&,std::error_code const&>(&v11, v6, v7, a2);
    }

    std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::error_code const&>(&v11, a2);
  }

  *v2 = *a2;
  return 0;
}

void sub_1922F8074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    std::__fs::filesystem::path::replace_extension(&a17);
  }

  _Unwind_Resume(exception_object);
}

void std::__fs::filesystem::__last_write_time(const std::__fs::filesystem::path *a1, std::__fs::filesystem::file_time_type __new_time, std::error_code *__ec)
{
  v3 = *(&__new_time.__d_.__rep_ + 1);
  v4 = *&__new_time.__d_.__rep_;
  v12[0] = "last_write_time";
  v12[1] = __ec;
  v12[2] = a1;
  v12[3] = 0;
  if (__ec)
  {
    __ec->__val_ = 0;
    __ec->__cat_ = std::system_category();
  }

  v10 = xmmword_19231D7D0;
  if ((std::__fs::filesystem::detail::time_util<std::chrono::time_point<std::__fs::filesystem::_FilesystemClock,std::chrono::duration<__int128,std::ratio<1l,1000000000l>>>,long,timespec>::convert_to_timespec(&v11, v4, v3) & 1) == 0)
  {
    v9 = std::generic_category();
    v13.n128_u64[0] = 84;
    v13.n128_u64[1] = v9;
LABEL_11:
    std::__fs::filesystem::detail::ErrorHandler<void>::report(v12, &v13);
    return;
  }

  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (utimensat(-2, v6, &v10, 0) == -1)
  {
    v7 = *__error();
    v8 = std::generic_category();
    v13.n128_u64[0] = v7;
    v13.n128_u64[1] = v8;
    if (v7)
    {
      goto LABEL_11;
    }
  }
}

uint64_t std::__fs::filesystem::detail::time_util<std::chrono::time_point<std::__fs::filesystem::_FilesystemClock,std::chrono::duration<__int128,std::ratio<1l,1000000000l>>>,long,timespec>::convert_to_timespec(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v6 = __divti3();
  v9 = (__PAIR128__(v7, v6) * -1000000000 + __PAIR128__(a3, a2)) >> 64;
  v8 = -1000000000 * v6 + a2;
  v10 = v6 + (v9 >> 63);
  if (__CFADD__(v6, v9 >> 63))
  {
    v11 = v7 + 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = __PAIR128__(v11, v10) < 0x8000000000000000;
  v13 = __PAIR128__(-1, 0x7FFFFFFFFFFFFFFFLL) < __PAIR128__(v11, v10);
  if (v11 >= 0)
  {
    v13 = v12;
  }

  if (!v13)
  {
    return 0;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    if (__PAIR128__(a3, a2) < __PAIR128__(0x8000000000000000, 884105729))
    {
      return 0;
    }

    v14 = v6-- != 0;
    v7 = v14 + v7 - 1;
    v14 = __CFADD__(v8, 1000000000);
    v8 += 1000000000;
    if (v14)
    {
      ++v9;
    }
  }

  if (v6 < 0x8000000000000000)
  {
    v15 = v7;
  }

  else
  {
    v15 = v7 + 1;
  }

  if (!v15)
  {
    *a1 = v6;
    if (v8 >= 0x8000000000000000)
    {
      ++v9;
    }

    if (!v9)
    {
      a1[1] = v8;
      return 1;
    }
  }

  return 0;
}

void std::__fs::filesystem::__permissions(const std::__fs::filesystem::path *a1, std::__fs::filesystem::perms a2, std::__fs::filesystem::perm_options a3, std::error_code *a4)
{
  v5 = a2;
  *&v23.st_uid = "permissions";
  *&v23.st_rdev = a4;
  v23.st_atimespec.tv_sec = a1;
  v23.st_atimespec.tv_nsec = 0;
  if (a4)
  {
    a4->__val_ = 0;
    a4->__cat_ = std::system_category();
  }

  v7 = v5 & 0xFFF;
  if ((a3 & 0xE) != 0)
  {
    v23.st_dev = 0;
    v8 = std::system_category();
    v23.st_ino = v8;
    if ((a3 & 8) != 0)
    {
      LODWORD(v24) = 0;
      v25 = v8;
      if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = a1;
      }

      else
      {
        v12 = a1->__pn_.__r_.__value_.__r.__words[0];
      }

      v10 = lstat(v12, &v23.st_mtimespec);
    }

    else
    {
      LODWORD(v24) = 0;
      v25 = v8;
      if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = a1->__pn_.__r_.__value_.__r.__words[0];
      }

      v10 = stat(v9, &v23.st_mtimespec);
    }

    if (v10 == -1)
    {
      v13 = *__error();
      v14 = std::generic_category();
      v24 = v13;
      v25 = v14;
    }

    std::__fs::filesystem::detail::create_file_status(&v24, a1, &v23.st_mtimespec, &v23, &v21);
    if (v23.st_dev)
    {
      p_st_mtimespec = &v23;
LABEL_28:
      std::__fs::filesystem::detail::ErrorHandler<void>::report(&v23.st_uid, p_st_mtimespec);
      return;
    }

    v16 = v22 & ~v7;
    if ((a3 & 4) == 0)
    {
      v16 = v7;
    }

    v17 = v7 | v22;
    if ((a3 & 2) == 0)
    {
      v17 = v16;
    }

    v7 = v17 & 0xFFF;
    v11 = 32 * (v21 == 3);
  }

  else
  {
    v11 = 0;
  }

  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = a1;
  }

  else
  {
    v18 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (fchmodat(-2, v18, v7, v11) == -1)
  {
    v19 = *__error();
    v20 = std::generic_category();
    v23.st_mtimespec.tv_sec = v19;
    v23.st_mtimespec.tv_nsec = v20;
    p_st_mtimespec = &v23.st_mtimespec;
    goto LABEL_28;
  }
}

BOOL std::__fs::filesystem::__remove(const std::__fs::filesystem::path *a1, std::error_code *__ec)
{
  v10[0] = "remove";
  v10[1] = __ec;
  v10[2] = a1;
  v10[3] = 0;
  if (__ec)
  {
    __ec->__val_ = 0;
    __ec->__cat_ = std::system_category();
  }

  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  v4 = remove(v3, __ec);
  if (v4 == -1)
  {
    v8 = *__error();
    v9 = std::generic_category();
    v6 = 2;
    v7 = v9;
    if (!(v9->equivalent)(v9, v8, &v6) && ((v7->equivalent_0)(v7, &v8, v6) & 1) == 0)
    {
      std::__fs::filesystem::detail::ErrorHandler<BOOL>::report(v10, &v8);
    }
  }

  return v4 != -1;
}

uintmax_t std::__fs::filesystem::__remove_all(const std::__fs::filesystem::path *a1, std::error_code *__ec)
{
  v7.__pn_.__r_.__value_.__r.__words[2] = "remove_all";
  v8 = __ec;
  v9 = a1;
  v10 = 0;
  if (__ec)
  {
    __ec->__val_ = 0;
    v4 = std::system_category();
    __ec->__cat_ = v4;
  }

  else
  {
    v4 = std::system_category();
  }

  LODWORD(v7.__pn_.__r_.__value_.__l.__data_) = 0;
  v7.__pn_.__r_.__value_.__l.__size_ = v4;
  if (LODWORD(v7.__pn_.__r_.__value_.__l.__data_))
  {
    return std::__fs::filesystem::detail::ErrorHandler<unsigned long>::report(&v7.__pn_.__r_.__value_.__r.__words[2], &v7);
  }

  return result;
}

uint64_t std::__fs::filesystem::anonymous namespace::remove_all_impl(std::__fs::filesystem::_anonymous_namespace_ *this, const char *a2, const std::__fs::filesystem::path *a3, std::error_code *a4)
{
  v5 = a2;
  v6 = this;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v7 = openat(this, a2, 17826048, a4);
  if (v7 == -1)
  {
    v18 = *__error();
    v19 = std::generic_category();
    a3->__pn_.__r_.__value_.__r.__words[0] = v18;
    a3->__pn_.__r_.__value_.__l.__size_ = v19;
    v32 = 2;
    v33 = v19;
    if ((v19->equivalent)(v19, v18, &v32) || (*(*v33 + 40))(v33, a3, v32))
    {
      LODWORD(a3->__pn_.__r_.__value_.__l.__data_) = 0;
      v11 = 0;
      a3->__pn_.__r_.__value_.__l.__size_ = std::system_category();
    }

    else
    {
      v32 = 20;
      v33 = v19;
      if (*(*a3->__pn_.__r_.__value_.__l.__size_ + 32))(a3->__pn_.__r_.__value_.__l.__size_, LODWORD(a3->__pn_.__r_.__value_.__l.__data_), &v32) || ((*(*v33 + 40))(v33, a3, v32) & 1) != 0 || (v31.__r_.__value_.__r.__words[0] = 62, v31.__r_.__value_.__l.__size_ = v19, ((*(*a3->__pn_.__r_.__value_.__l.__size_ + 32))(a3->__pn_.__r_.__value_.__l.__size_, LODWORD(a3->__pn_.__r_.__value_.__l.__data_), &v31)) || ((*(*v31.__r_.__value_.__l.__size_ + 40))(v31.__r_.__value_.__l.__size_, a3, LODWORD(v31.__r_.__value_.__l.__data_)) & 1) != 0 || (v29 = 31, v30 = v19, (*(*a3->__pn_.__r_.__value_.__l.__size_ + 32))(a3->__pn_.__r_.__value_.__l.__size_, LODWORD(a3->__pn_.__r_.__value_.__l.__data_), &v29)) || ((v30->equivalent_0)(v30, a3, v29))
      {
        LODWORD(a3->__pn_.__r_.__value_.__l.__data_) = 0;
        a3->__pn_.__r_.__value_.__l.__size_ = std::system_category();
        if (v5[23] >= 0)
        {
          v28 = v5;
        }

        else
        {
          v28 = *v5;
        }

        if (unlinkat(v6, v28, 0) == -1)
        {
          v11 = 0;
          a3->__pn_.__r_.__value_.__r.__words[0] = *__error();
          a3->__pn_.__r_.__value_.__l.__size_ = v19;
        }

        else
        {
          return 1;
        }
      }

      else
      {
        return 0;
      }
    }

    return v11;
  }

  v8 = v7;
  v9 = fdopendir(v7);
  if (!v9)
  {
    close(v8);
    v20 = *__error();
    v21 = std::generic_category();
    v11 = 0;
    a3->__pn_.__r_.__value_.__r.__words[0] = v20;
    a3->__pn_.__r_.__value_.__l.__size_ = v21;
    return v11;
  }

  v10 = v9;
  v11 = 0;
  while (1)
  {
    *__error() = 0;
    LODWORD(a3->__pn_.__r_.__value_.__l.__data_) = 0;
    a3->__pn_.__r_.__value_.__l.__size_ = std::system_category();
    v12 = readdir(v10);
    if (!v12)
    {
      break;
    }

    d_name = v12->d_name;
    file = std::__fs::filesystem::detail::get_file_type<dirent,unsigned char>(v12);
    v32 = d_name;
    v15 = strlen(d_name);
    v33 = v15;
    v34 = file;
    if (v15 == 2)
    {
      if (*d_name != 11822)
      {
LABEL_12:
        v15 = 1;
        goto LABEL_13;
      }
    }

    else if (v15 == 1)
    {
      if (*d_name != 46)
      {
        goto LABEL_12;
      }
    }

    else
    {
LABEL_13:
      if (!v15 || LODWORD(a3->__pn_.__r_.__value_.__l.__data_))
      {
        goto LABEL_24;
      }

      std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&v31, &v32);
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        MEMORY[0x193B0CA40](v31.__r_.__value_.__r.__words[0], v31.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
      }

      v11 += v17;
    }
  }

  if (*__error())
  {
    v22 = *__error();
    v23 = std::generic_category();
    a3->__pn_.__r_.__value_.__r.__words[0] = v22;
    a3->__pn_.__r_.__value_.__l.__size_ = v23;
  }

LABEL_24:
  if (v5[23] >= 0)
  {
    v24 = v5;
  }

  else
  {
    v24 = *v5;
  }

  if (unlinkat(v6, v24, 128) == -1)
  {
    v25 = *__error();
    v26 = std::generic_category();
    a3->__pn_.__r_.__value_.__r.__words[0] = v25;
    a3->__pn_.__r_.__value_.__l.__size_ = v26;
  }

  else
  {
    ++v11;
  }

  closedir(v10);
  return v11;
}

void std::__fs::filesystem::__rename(const std::__fs::filesystem::path *__from, const std::__fs::filesystem::path *__to, std::error_code *__ec)
{
  v9[0] = "rename";
  v9[1] = __ec;
  v9[2] = __from;
  v9[3] = __to;
  if (__ec)
  {
    __ec->__val_ = 0;
    __ec->__cat_ = std::system_category();
  }

  if ((__from->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = __from;
  }

  else
  {
    v5 = __from->__pn_.__r_.__value_.__r.__words[0];
  }

  if ((__to->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = __to;
  }

  else
  {
    v6 = __to->__pn_.__r_.__value_.__r.__words[0];
  }

  rename(v5, v6, __ec);
  if (v7 == -1)
  {
    v8.n128_u64[0] = *__error();
    v8.n128_u64[1] = std::generic_category();
    std::__fs::filesystem::detail::ErrorHandler<void>::report(v9, &v8);
  }
}

void std::__fs::filesystem::__resize_file(const std::__fs::filesystem::path *a1, uintmax_t __size, std::error_code *a3)
{
  v7[0] = "resize_file";
  v7[1] = a3;
  v7[2] = a1;
  v7[3] = 0;
  if (a3)
  {
    a3->__val_ = 0;
    a3->__cat_ = std::system_category();
  }

  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (truncate(v5, __size) == -1)
  {
    v6.n128_u64[0] = *__error();
    v6.n128_u64[1] = std::generic_category();
    std::__fs::filesystem::detail::ErrorHandler<void>::report(v7, &v6);
  }
}

std::__fs::filesystem::space_info *__cdecl std::__fs::filesystem::__space(std::__fs::filesystem::space_info *__return_ptr retstr, const std::__fs::filesystem::path *a2, std::error_code *__ec)
{
  v16[0] = "space";
  v16[1] = __ec;
  v16[2] = a2;
  v16[3] = 0;
  if (__ec)
  {
    __ec->__val_ = 0;
    __ec->__cat_ = std::system_category();
  }

  memset(&v15, 0, sizeof(v15));
  if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2->__pn_.__r_.__value_.__r.__words[0];
  }

  result = statvfs(v5, &v15);
  if (result == -1)
  {
    v14.n128_u64[0] = *__error();
    v14.n128_u64[1] = std::generic_category();
    std::__fs::filesystem::detail::ErrorHandler<void>::report(v16, &v14);
    retstr->free = -1;
    retstr->available = -1;
    retstr->capacity = -1;
  }

  else
  {
    f_blocks = v15.f_blocks;
    f_frsize = v15.f_frsize;
    v9 = !is_mul_ok(v15.f_blocks, v15.f_frsize);
    retstr->capacity = v15.f_blocks * v15.f_frsize;
    if (!f_blocks || v9)
    {
      retstr->capacity = -1;
    }

    f_bfree = v15.f_bfree;
    v11 = !is_mul_ok(v15.f_bfree, f_frsize);
    retstr->free = v15.f_bfree * f_frsize;
    if (!f_bfree || v11)
    {
      retstr->free = -1;
    }

    f_bavail = v15.f_bavail;
    v13 = !is_mul_ok(v15.f_bavail, f_frsize);
    retstr->available = v15.f_bavail * f_frsize;
    if (!f_bavail || v13)
    {
      retstr->available = -1;
    }
  }

  return result;
}

std::__fs::filesystem::file_status std::__fs::filesystem::__status(const std::__fs::filesystem::path *a1, std::error_code *__ec)
{
  v5 = v2;
  LODWORD(v11) = 0;
  v12 = std::system_category();
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (stat(v6, &v10) == -1)
  {
    v7 = *__error();
    v8 = std::generic_category();
    v11 = v7;
    v12 = v8;
  }

  std::__fs::filesystem::detail::create_file_status(&v11, a1, &v10, __ec, v5);
  return v9;
}

std::__fs::filesystem::file_status std::__fs::filesystem::__symlink_status(const std::__fs::filesystem::path *a1, std::error_code *__ec)
{
  v5 = v2;
  LODWORD(v11) = 0;
  v12 = std::system_category();
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (lstat(v6, &v10) == -1)
  {
    v7 = *__error();
    v8 = std::generic_category();
    v11 = v7;
    v12 = v8;
  }

  std::__fs::filesystem::detail::create_file_status(&v11, a1, &v10, __ec, v5);
  return v9;
}

std::__fs::filesystem::path *__cdecl std::__fs::filesystem::__temp_directory_path(std::__fs::filesystem::path *__return_ptr retstr, std::error_code *__ec)
{
  v13.st_mtimespec.tv_sec = "temp_directory_path";
  v13.st_mtimespec.tv_nsec = __ec;
  v13.st_ctimespec.tv_sec = 0;
  v13.st_ctimespec.tv_nsec = 0;
  if (__ec)
  {
    __ec->__val_ = 0;
    __ec->__cat_ = std::system_category();
  }

  v3 = 0;
  v4 = "/tmp";
  while (1)
  {
    v5 = getenv((&off_1E73AE238)[v3]);
    if (v5)
    {
      break;
    }

    if (++v3 == 4)
    {
      goto LABEL_8;
    }
  }

  v4 = v5;
LABEL_8:
  v13.st_atimespec.tv_nsec = v4;
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v13.st_uid, &v13.st_atimespec.tv_nsec);
  v13.st_dev = 0;
  v13.st_ino = std::system_category();
  LODWORD(v14) = 0;
  st_ino = v13.st_ino;
  if (v13.st_atimespec.tv_sec >= 0)
  {
    p_st_uid = &v13.st_uid;
  }

  else
  {
    p_st_uid = *&v13.st_uid;
  }

  if (stat(p_st_uid, &v13.st_birthtimespec) == -1)
  {
    v7 = *__error();
    v8 = std::generic_category();
    v14 = v7;
    st_ino = v8;
  }

  std::__fs::filesystem::detail::create_file_status(&v14, &v13.st_uid, &v13.st_birthtimespec, &v13, v12);
  if (v12[0] == 2)
  {
    *&retstr->__pn_.__r_.__value_.__l.__data_ = *&v13.st_uid;
    retstr->__pn_.__r_.__value_.__r.__words[2] = v13.st_atimespec.tv_sec;
    memset(&v13.st_uid, 0, 24);
  }

  else if (v12[0])
  {
    LODWORD(v13.st_birthtimespec.tv_sec) = 20;
    v11 = &v13.st_uid;
    if (v13.st_atimespec.tv_sec < 0)
    {
      LOBYTE(v11) = v13.st_uid;
    }

    std::__fs::filesystem::detail::ErrorHandler<std::__fs::filesystem::path>::report(&v13.st_mtimespec, &v13.st_birthtimespec, "path %s is not a directory", retstr, v11);
  }

  else
  {
    v10 = &v13.st_uid;
    if (v13.st_atimespec.tv_sec < 0)
    {
      LOBYTE(v10) = v13.st_uid;
    }

    std::__fs::filesystem::detail::ErrorHandler<std::__fs::filesystem::path>::report(&v13.st_mtimespec, &v13, "cannot access path %s", retstr, v10);
  }

  if (SHIBYTE(v13.st_atimespec.tv_sec) < 0)
  {
    return MEMORY[0x193B0CA40](*&v13.st_uid, v13.st_atimespec.tv_sec & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_1922F8F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (SHIBYTE(a15) < 0)
  {
    MEMORY[0x193B0CA40](a13, a15 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void std::__fs::filesystem::detail::ErrorHandler<std::__fs::filesystem::path>::report(uint64_t a1@<X0>, unsigned int *a2@<X1>, std::__fs::filesystem::detail *a3@<X2>, void *a4@<X8>, char a5)
{
  v9 = &a5;
  v8.n128_u64[0] = *a2;
  v8.n128_u64[1] = std::generic_category();
  std::__fs::filesystem::detail::ErrorHandler<std::__fs::filesystem::path>::report_impl(a1, &v8, a3, &a5);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
}

std::__fs::filesystem::path *__cdecl std::__fs::filesystem::__weakly_canonical(std::__fs::filesystem::path *__return_ptr retstr, const std::__fs::filesystem::path *__p, std::error_code *__ec)
{
  v41[0] = "weakly_canonical";
  v41[1] = __ec;
  v41[2] = __p;
  v41[3] = 0;
  if (__ec)
  {
    __ec->__val_ = 0;
    __ec->__cat_ = std::system_category();
  }

  size = SHIBYTE(__p->__pn_.__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __p->__pn_.__r_.__value_.__l.__size_;
    if (size)
    {
      goto LABEL_5;
    }

LABEL_46:
    std::__fs::filesystem::path::path[abi:ne200100]<char [1],void>(&v36.__pn_, &byte_19231D823);
    result = std::__fs::filesystem::__canonical(retstr, &v36, __ec);
    if ((SHIBYTE(v36.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v26 = v36.__pn_.__r_.__value_.__r.__words[0];
    v27 = v36.__pn_.__r_.__value_.__r.__words[2];
    return MEMORY[0x193B0CA40](v26, v27 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (!*(&__p->__pn_.__r_.__value_.__s + 23))
  {
    goto LABEL_46;
  }

LABEL_5:
  memset(&v40, 0, sizeof(v40));
  memset(&v39, 0, sizeof(v39));
  v29 = retstr;
  std::string::reserve(&v39, size);
  v7 = HIBYTE(__p->__pn_.__r_.__value_.__r.__words[2]);
  if ((v7 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p->__pn_.__r_.__value_.__r.__words[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = __p->__pn_.__r_.__value_.__l.__size_;
  }

  v36.__pn_.__r_.__value_.__r.__words[0] = v8;
  *&v36.__pn_.__r_.__value_.__r.__words[1] = v7;
  v37 = 0;
  v38 = 6;
  std::__fs::filesystem::parser::PathParser::decrement(&v36);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  __eca.__val_ = 0;
  __eca.__cat_ = std::system_category();
  if (v38 == 1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    if ((__p->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p->__pn_.__r_.__value_.__r.__words[0];
    }

    v10 = v36.__pn_.__r_.__value_.__r.__words[2];
    v11 = v37;
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      *v39.__r_.__value_.__l.__data_ = 0;
      v39.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v39.__r_.__value_.__s.__data_[0] = 0;
      *(&v39.__r_.__value_.__s + 23) = 0;
    }

    std::string::append[abi:ne200100]<char const*,0>(&v39, v9, (v9 + ~v9 + v10 + v11 + 1));
    std::__fs::filesystem::__status(&v39, &__eca);
    if (!v30.__pn_.__r_.__value_.__s.__data_[0])
    {
      goto LABEL_51;
    }

    if (v30.__pn_.__r_.__value_.__s.__data_[0] != 255)
    {
      break;
    }

    v12 = 0;
    v13 = &byte_19231D823;
    if (((1 << v38) & 0x62) == 0)
    {
      if (((1 << v38) & 0x14) != 0)
      {
        v13 = v36.__pn_.__r_.__value_.__r.__words[2];
        v12 = v37;
      }

      else
      {
        if (*v36.__pn_.__r_.__value_.__r.__words[2] == 92)
        {
          v13 = "\";
        }

        else
        {
          v13 = "/";
        }

        v12 = 1;
      }
    }

    v14 = v34;
    if (v34 >= v35)
    {
      v16 = (v34 - v33) >> 4;
      v17 = v16 + 1;
      if ((v16 + 1) >> 60)
      {
        std::vector<std::pair<std::string_view,std::__fs::filesystem::PathPartKind>>::__throw_length_error[abi:ne200100]();
      }

      v18 = v35 - v33;
      if ((v35 - v33) >> 3 > v17)
      {
        v17 = v18 >> 3;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF0)
      {
        v19 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        std::allocator<std::string_view>::allocate_at_least[abi:ne200100](&v33, v19);
      }

      v20 = (16 * v16);
      *v20 = v13;
      v20[1] = v12;
      v15 = 16 * v16 + 16;
      v21 = (v20 - (v34 - v33));
      memcpy(v21, v33, v34 - v33);
      v22 = v33;
      v23 = v35;
      v33 = v21;
      v34 = v15;
      v35 = 0;
      if (v22)
      {
        MEMORY[0x193B0CA40](v22, v23 - v22);
      }
    }

    else
    {
      v34->__pn_.__r_.__value_.__r.__words[0] = v13;
      v14->__pn_.__r_.__value_.__l.__size_ = v12;
      v15 = &v14->__pn_.__r_.__value_.__r.__words[2];
    }

    v34 = v15;
    std::__fs::filesystem::parser::PathParser::decrement(&v36);
    if (v38 == 1)
    {
      goto LABEL_39;
    }
  }

  std::__fs::filesystem::__canonical(&v31, &v39, &__eca);
  if (SHIBYTE(v40.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v40.__pn_.__r_.__value_.__r.__words[0], v40.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v40 = v31;
  if (__eca.__val_)
  {
LABEL_51:
    v24 = std::__fs::filesystem::detail::ErrorHandler<std::__fs::filesystem::path>::report(v41, &__eca, v29);
    goto LABEL_58;
  }

  if (v38 == 1)
  {
LABEL_39:
    std::__fs::filesystem::path::path[abi:ne200100]<char [1],void>(&v30.__pn_, &byte_19231D823);
    std::__fs::filesystem::__canonical(&v31, &v30, &__eca);
    if (SHIBYTE(v40.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v40.__pn_.__r_.__value_.__r.__words[0], v40.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    v40 = v31;
    *(&v31.__pn_.__r_.__value_.__s + 23) = 0;
    v31.__pn_.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v30.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v30.__pn_.__r_.__value_.__r.__words[0], v30.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if (__eca.__val_)
    {
      v24 = std::__fs::filesystem::detail::ErrorHandler<std::__fs::filesystem::path>::report(v41, &__eca, v29);
      goto LABEL_58;
    }
  }

  v28 = v34;
  if (v33 == v34)
  {
    v24 = *&v40.__pn_.__r_.__value_.__l.__data_;
    *v29 = v40;
    memset(&v40, 0, sizeof(v40));
  }

  else
  {
    while (v28 != v33)
    {
      v28 = (v28 - 16);
      std::__fs::filesystem::path::append[abi:ne200100]<std::string_view>(&v40.__pn_, v28);
    }

    std::__fs::filesystem::path::lexically_normal(v29, &v40);
  }

LABEL_58:
  result = v33;
  if (v33)
  {
    v34 = v33;
    result = MEMORY[0x193B0CA40](v33, v35 - v33, v24);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    result = MEMORY[0x193B0CA40](v39.__r_.__value_.__r.__words[0], v39.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL, v24);
  }

  if (SHIBYTE(v40.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    v26 = v40.__pn_.__r_.__value_.__r.__words[0];
    v27 = v40.__pn_.__r_.__value_.__r.__words[2];
    return MEMORY[0x193B0CA40](v26, v27 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_1922F941C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a21)
  {
    MEMORY[0x193B0CA40](a21, a23 - a21);
  }

  if (SHIBYTE(a34) < 0)
  {
    MEMORY[0x193B0CA40](a32, a34 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a37) < 0)
  {
    MEMORY[0x193B0CA40](a35, a37 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__fs::filesystem::detail::FileDescriptor::close(std::__fs::filesystem::detail::FileDescriptor *this)
{
  result = *(this + 2);
  if (result != -1)
  {
    result = close(result);
  }

  *(this + 2) = -1;
  return result;
}

void std::allocator<std::string_view>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char *,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_1922F9590(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    std::__fs::filesystem::operator/[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

const std::error_category *std::__fs::filesystem::detail::FileDescriptor::create<int>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = std::system_category();
  v8 = a1;
  if (*(a1 + 23) < 0)
  {
    v8 = *a1;
  }

  result = open(v8, a3);
  v10 = result;
  if (result == -1)
  {
    v11 = *__error();
    result = std::generic_category();
    *a2 = v11;
    *(a2 + 8) = result;
  }

  *a4 = a1;
  *(a4 + 8) = v10;
  *(a4 + 160) = 0;
  *(a4 + 164) = 0xFFFF;
  return result;
}

const std::error_category *std::__fs::filesystem::detail::FileDescriptor::create<int,unsigned short>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = std::system_category();
  v10 = a1;
  if (*(a1 + 23) < 0)
  {
    v10 = *a1;
  }

  result = open(v10, a3, a4);
  v12 = result;
  if (result == -1)
  {
    v13 = *__error();
    result = std::generic_category();
    *a2 = v13;
    *(a2 + 8) = result;
  }

  *a5 = a1;
  *(a5 + 8) = v12;
  *(a5 + 160) = 0;
  *(a5 + 164) = 0xFFFF;
  return result;
}

__n128 std::__fs::filesystem::detail::ErrorHandler<BOOL>::report_impl(uint64_t a1, __n128 *a2, std::__fs::filesystem::detail *a3, va_list a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v18, "in ");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*a1, &v18, &v19);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(": ", &v19, &v20);
    std::__fs::filesystem::detail::vformat_string(a3, a4, &v17);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v17;
    }

    else
    {
      v8 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v17.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v20, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v22 = v10->__r_.__value_.__r.__words[2];
    v21 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v17.__r_.__value_.__r.__words[0], v17.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v20.__r_.__value_.__r.__words[0], v20.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v19.__r_.__value_.__r.__words[0], v19.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v18.__r_.__value_.__r.__words[0], v18.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    v14 = v12 != 0;
    if (v13)
    {
      ++v14;
    }

    if (v14)
    {
      if (v14 == 1)
      {
        std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::__fs::filesystem::path const&,std::error_code const&>(&v21, v12, a2);
      }

      std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::__fs::filesystem::path const&,std::__fs::filesystem::path const&,std::error_code const&>(&v21, v12, v13, a2);
    }

    std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::error_code const&>(&v21, a2);
  }

  result = *a2;
  *v4 = *a2;
  return result;
}

void sub_1922F9854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 25) < 0)
  {
    std::__fs::filesystem::path::replace_extension((v30 - 48));
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__fs::filesystem::detail::ErrorHandler<std::__fs::filesystem::path>::report_impl(uint64_t a1, __n128 *a2, std::__fs::filesystem::detail *a3, va_list a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v18, "in ");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*a1, &v18, &v19);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(": ", &v19, &v20);
    std::__fs::filesystem::detail::vformat_string(a3, a4, &v17);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v17;
    }

    else
    {
      v8 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v17.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v20, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v22 = v10->__r_.__value_.__r.__words[2];
    v21 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v17.__r_.__value_.__r.__words[0], v17.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v20.__r_.__value_.__r.__words[0], v20.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v19.__r_.__value_.__r.__words[0], v19.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      MEMORY[0x193B0CA40](v18.__r_.__value_.__r.__words[0], v18.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    v14 = v12 != 0;
    if (v13)
    {
      ++v14;
    }

    if (v14)
    {
      if (v14 == 1)
      {
        std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::__fs::filesystem::path const&,std::error_code const&>(&v21, v12, a2);
      }

      std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::__fs::filesystem::path const&,std::__fs::filesystem::path const&,std::error_code const&>(&v21, v12, v13, a2);
    }

    std::__fs::filesystem::__throw_filesystem_error[abi:ne200100]<std::string &,std::error_code const&>(&v21, a2);
  }

  result = *a2;
  *v4 = *a2;
  return result;
}

void sub_1922F9A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 25) < 0)
  {
    std::__fs::filesystem::path::replace_extension((v30 - 48));
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_1922F9B40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    std::__fs::filesystem::operator/[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_1922F9BA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    std::__fs::filesystem::operator/[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [1],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_1922F9BFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    std::__fs::filesystem::operator/[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_0_3(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2] & 0x7FFFFFFFFFFFFFFFLL;
  JUMPOUT(0x193B0CA40);
}

uint64_t std::__fs::filesystem::detail::format_string(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    return MEMORY[0x193B0CA40](*a2, *(a2 + 16) & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void std::__rs_default::operator()()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    v0 = 5489;
    dword_1EAE00B48 = 5489;
    v1 = 1;
    for (i = 3; i != 626; ++i)
    {
      v3 = 1812433253 * (v0 ^ (v0 >> 30));
      v0 = v3 + v1;
      *(&_MergedGlobals + i) = i + v3 - 2;
      ++v1;
    }

    qword_1EAE01508 = 0;

    __cxa_guard_release(&_MergedGlobals);
  }
}

void std::logic_error::logic_error()
{
  v0 = __cxa_guard_acquire(qword_1EAE01518);
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_0_0(v1, &_MergedGlobals_0);

    __cxa_guard_release(v2);
  }
}

void std::generic_category()
{
  {
    __cxa_atexit(std::generic_category(void)::AvoidDestroyingGenericCategory::~AvoidDestroyingGenericCategory, &std::generic_category(void)::helper, &dword_192293000);
  }
}

void std::system_category()
{
  {
    __cxa_atexit(std::system_category(void)::AvoidDestroyingSystemCategory::~AvoidDestroyingSystemCategory, &std::system_category(void)::helper, &dword_192293000);
  }
}

void std::future_category()
{
  {
    __cxa_atexit(std::future_category(void)::AvoidDestroyingFutureCategory::~AvoidDestroyingFutureCategory, &std::future_category(void)::helper, &dword_192293000);
  }
}

atomic_ullong *std::future<void>::get(atomic_ullong *result)
{
  if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::iostream_category()
{
  {
    __cxa_atexit(std::iostream_category(void)::AvoidDestroyingIostreamCategory::~AvoidDestroyingIostreamCategory, &std::iostream_category(void)::helper, &dword_192293000);
  }
}

uint64_t *std::num_get<char,std::istreambuf_iterator<char>>::do_get(uint64_t *result)
{
  if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v1 = OUTLINED_FUNCTION_3(result);
    return (*(v2 + 16))(v1);
  }

  return result;
}

uint64_t std::num_get<char,std::istreambuf_iterator<char>>::do_get(uint64_t result, uint64_t a2)
{
  v3 = result;
  do
  {
    if (*(v3 - 1) < 0)
    {
      result = MEMORY[0x193B0CA40](*(v3 - 24), *(v3 - 8) & 0x7FFFFFFFFFFFFFFFLL);
    }

    v3 -= 24;
  }

  while (v3 != a2);
  return result;
}

uint64_t std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(uint64_t result, uint64_t a2)
{
  v3 = result;
  do
  {
    if (*(v3 - 1) < 0)
    {
      result = MEMORY[0x193B0CA40](*(v3 - 24), 4 * *(v3 - 8));
    }

    v3 -= 24;
  }

  while (v3 != a2);
  return result;
}

uint64_t std::locale::__imp::__imp(uint64_t result, void *a2, uint64_t *a3)
{
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = *(result + 8 * v5);
    if (v7)
    {
      if (!atomic_fetch_add(v7 + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = OUTLINED_FUNCTION_3(v7);
        (*(v9 + 16))(v8);
      }
    }

    v5 = v6;
    result = *a3;
    ++v6;
  }

  while (v5 < (*a2 - *a3) >> 3);
  return result;
}

atomic_ullong *std::locale::__imp::__imp(atomic_ullong *result, uint64_t a2)
{
  if (!atomic_fetch_add(result, 0xFFFFFFFFFFFFFFFFLL))
  {
    return OUTLINED_FUNCTION_5(result, a2, *(*a2 + 16));
  }

  return result;
}

void std::__time_get_c_storage<char>::__weeks()
{
  v0 = __cxa_guard_acquire(&qword_1EAE05CF8);
  if (v0)
  {
    std::init_weeks(v0);
    _MergedGlobals_1 = &qword_1EAE05D90;

    __cxa_guard_release(&qword_1EAE05CF8);
  }
}

void std::init_weeks()
{
  if (v0)
  {
    OUTLINED_FUNCTION_7(v0, v1, &dword_192293000);
  }
}

void std::init_wweeks()
{
  if (v0)
  {
    OUTLINED_FUNCTION_7(v0, v1, &dword_192293000);
  }
}

void std::__time_get_c_storage<char>::__months()
{
  v0 = __cxa_guard_acquire(&qword_1EAE05D08);
  if (v0)
  {
    std::init_months(v0);
    qword_1EAE05D00 = &qword_1EAE05EE0;

    __cxa_guard_release(&qword_1EAE05D08);
  }
}

void std::init_months()
{
  if (v0)
  {
    OUTLINED_FUNCTION_7(v0, v1, &dword_192293000);
  }
}

void std::init_wmonths()
{
  if (v0)
  {
    OUTLINED_FUNCTION_7(v0, v1, &dword_192293000);
  }
}

void std::__time_get_c_storage<char>::__am_pm()
{
  v0 = __cxa_guard_acquire(&qword_1EAE05D18);
  if (v0)
  {
    std::init_am_pm(v0);
    qword_1EAE05D10 = &qword_1EAE05D30;

    __cxa_guard_release(&qword_1EAE05D18);
  }
}

void std::init_am_pm()
{
  if (v0)
  {
    OUTLINED_FUNCTION_7(v0, v1, &dword_192293000);
  }
}

void std::__time_get_c_storage<wchar_t>::__am_pm()
{
  v0 = __cxa_guard_acquire(&qword_1EAE05D28);
  if (v0)
  {
    std::init_wam_pm(v0);
    qword_1EAE05D20 = &qword_1EAE05D60;

    __cxa_guard_release(&qword_1EAE05D28);
  }
}

void std::init_wam_pm()
{
  if (v0)
  {
    OUTLINED_FUNCTION_7(v0, v1, &dword_192293000);
  }
}

void std::__time_get_c_storage<char>::__x()
{
  if (v0)
  {
    OUTLINED_FUNCTION_0_2(v0, std::__time_get_c_storage<char>::__x(void)const::s, &dword_192293000);
  }
}

void std::__time_get_c_storage<char>::__X()
{
  if (v0)
  {
    OUTLINED_FUNCTION_0_2(v0, std::__time_get_c_storage<char>::__X(void)const::s, &dword_192293000);
  }
}

void std::__time_get_c_storage<char>::__c()
{
  if (v0)
  {
    OUTLINED_FUNCTION_0_2(v0, std::__time_get_c_storage<char>::__c(void)const::s, &dword_192293000);
  }
}

void std::__time_get_c_storage<char>::__r()
{
  if (v0)
  {
    OUTLINED_FUNCTION_0_2(v0, std::__time_get_c_storage<char>::__r(void)const::s, &dword_192293000);
  }
}

uint64_t std::moneypunct_byname<char,false>::moneypunct_byname[abi:ne200100](uint64_t a1)
{
  result = OUTLINED_FUNCTION_4(a1);
  if (v4 < 0)
  {
    v5 = OUTLINED_FUNCTION_9(result, v3);
    result = MEMORY[0x193B0CA40](v5, v6 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (*(v1 + 71) < 0)
  {
    v7 = OUTLINED_FUNCTION_8();
    result = MEMORY[0x193B0CA40](v7, v8 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (*(v1 + 47) < 0)
  {
    OUTLINED_FUNCTION_6();

    JUMPOUT(0x193B0CA40);
  }

  return result;
}

uint64_t std::moneypunct_byname<wchar_t,false>::moneypunct_byname[abi:ne200100](uint64_t a1)
{
  result = OUTLINED_FUNCTION_4(a1);
  if (v4 < 0)
  {
    v5 = OUTLINED_FUNCTION_9(result, v3);
    result = MEMORY[0x193B0CA40](v5, 4 * v6);
  }

  if (*(v1 + 71) < 0)
  {
    v7 = OUTLINED_FUNCTION_8();
    result = MEMORY[0x193B0CA40](v7, 4 * v8);
  }

  if (*(v1 + 47) < 0)
  {
    OUTLINED_FUNCTION_6();

    JUMPOUT(0x193B0CA40);
  }

  return result;
}

void operator delete[](void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, size_t __sz)
{
    ;
  }
}

void operator delete(void *__p, size_t __sz, std::align_val_t a3)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}