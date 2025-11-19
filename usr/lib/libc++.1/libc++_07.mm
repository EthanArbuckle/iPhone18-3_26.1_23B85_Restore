void std::locale::facet::__on_zero_shared(std::locale::facet *this)
{
  if (this)
  {
    (this->~facet_0)();
  }
}

std::collate_byname<char> *__cdecl std::collate_byname<char>::collate_byname(std::collate_byname<char> *this, const char *__n, size_t __refs)
{
  this[1].__l_ = (__refs - 1);
  v5 = newlocale(63, __n, 0);
  this[2].__l_ = v5;
  if (!v5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, __n);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("collate_byname<char>::collate_byname failed to construct for ", &v8, &v9);
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v9;
    }

    else
    {
      v7 = v9.__r_.__value_.__r.__words[0];
    }

    std::__throw_runtime_error(v7);
  }

  return this;
}

void sub_1922E3F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    std::stoi(&a12);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__shared_count::~__shared_count(v17);
  _Unwind_Resume(a1);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

std::collate_byname<char> *__cdecl std::collate_byname<char>::collate_byname(std::collate_byname<char> *this, const std::string *__n, size_t __refs)
{
  v3 = __n;
  this[1].__l_ = (__refs - 1);
  if ((__n->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __n = __n->__r_.__value_.__r.__words[0];
  }

  v5 = newlocale(63, __n, 0);
  this[2].__l_ = v5;
  if (!v5)
  {
    std::operator+<char>("collate_byname<char>::collate_byname failed to construct for ", &v3->__r_.__value_.__l.__data_, v8);
    if (v9 >= 0)
    {
      v7 = v8;
    }

    else
    {
      v7 = v8[0];
    }

    std::__throw_runtime_error(v7);
  }

  return this;
}

void sub_1922E40D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::stoi(&a10);
  }

  std::__shared_count::~__shared_count(v15);
  _Unwind_Resume(a1);
}

void std::collate_byname<char>::~collate_byname(std::collate_byname<char> *this)
{
  freelocale(this[2].__l_);

  std::__shared_count::~__shared_count(this);
}

{
  std::collate_byname<char>::~collate_byname(this);

  JUMPOUT(0x193B0CA40);
}

int std::collate_byname<char>::do_compare(const std::collate_byname<char> *this, const std::collate_byname<char>::char_type *__lo1, const std::collate_byname<char>::char_type *__hi1, const std::collate_byname<char>::char_type *__lo2, const std::collate_byname<char>::char_type *__hi2)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__dst, __lo1, __hi1, __hi1 - __lo1);
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(v12, __lo2, __hi2, __hi2 - __lo2);
  if (v15 >= 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  if (v13 >= 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = v12[0];
  }

  v10 = strcoll_l(v8, v9, this[2].__l_);
  if (SHIBYTE(v13) < 0)
  {
    MEMORY[0x193B0CA40](v12[0], v13 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(v15) < 0)
  {
    MEMORY[0x193B0CA40](__dst[0], v15 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (v10 < 0)
  {
    return -1;
  }

  else
  {
    return v10 != 0;
  }
}

void sub_1922E4264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a14 < 0)
  {
    std::stoi(&a9);
  }

  if (SHIBYTE(a17) < 0)
  {
    MEMORY[0x193B0CA40](a15, a17 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

std::collate_byname<char>::string_type *__cdecl std::collate_byname<char>::do_transform(std::collate_byname<char>::string_type *__return_ptr retstr, const std::collate_byname<char> *this, const std::collate_byname<char>::char_type *__lo, const std::collate_byname<char>::char_type *__hi)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__dst, __lo, __hi, __hi - __lo);
  if (v13 >= 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  v7 = strxfrm_l(0, v6, 0, this[2].__l_);
  std::string::basic_string[abi:ne200100](retstr, v7, 0);
  size = SHIBYTE(retstr->__r_.__value_.__r.__words[2]);
  if (size >= 0)
  {
    v9 = retstr;
  }

  else
  {
    v9 = retstr->__r_.__value_.__r.__words[0];
  }

  if (v13 >= 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  if (size < 0)
  {
    size = retstr->__r_.__value_.__l.__size_;
  }

  result = strxfrm_l(v9, v10, size + 1, this[2].__l_);
  if (SHIBYTE(v13) < 0)
  {
    return MEMORY[0x193B0CA40](__dst[0], v13 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_1922E4364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (*(v12 + 23) < 0)
  {
    std::stoi(v12);
  }

  if (SHIBYTE(a12) < 0)
  {
    MEMORY[0x193B0CA40](a10, a12 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

std::collate_byname<wchar_t> *__cdecl std::collate_byname<wchar_t>::collate_byname(std::collate_byname<wchar_t> *this, const char *__n, size_t __refs)
{
  this[1].__l_ = (__refs - 1);
  v5 = newlocale(63, __n, 0);
  this[2].__l_ = v5;
  if (!v5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, __n);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("collate_byname<wchar_t>::collate_byname(size_t refs) failed to construct for ", &v8, &v9);
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v9;
    }

    else
    {
      v7 = v9.__r_.__value_.__r.__words[0];
    }

    std::__throw_runtime_error(v7);
  }

  return this;
}

void sub_1922E4440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    std::stoi(&a12);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__shared_count::~__shared_count(v17);
  _Unwind_Resume(a1);
}

std::collate_byname<wchar_t> *__cdecl std::collate_byname<wchar_t>::collate_byname(std::collate_byname<wchar_t> *this, const std::string *__n, size_t __refs)
{
  v3 = __n;
  this[1].__l_ = (__refs - 1);
  if ((__n->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __n = __n->__r_.__value_.__r.__words[0];
  }

  v5 = newlocale(63, __n, 0);
  this[2].__l_ = v5;
  if (!v5)
  {
    std::operator+<char>("collate_byname<wchar_t>::collate_byname(size_t refs) failed to construct for ", &v3->__r_.__value_.__l.__data_, v8);
    if (v9 >= 0)
    {
      v7 = v8;
    }

    else
    {
      v7 = v8[0];
    }

    std::__throw_runtime_error(v7);
  }

  return this;
}

void sub_1922E4540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::stoi(&a10);
  }

  std::__shared_count::~__shared_count(v15);
  _Unwind_Resume(a1);
}

void std::collate_byname<wchar_t>::~collate_byname(std::collate_byname<wchar_t> *this)
{
  freelocale(this[2].__l_);

  std::__shared_count::~__shared_count(this);
}

{
  std::collate_byname<wchar_t>::~collate_byname(this);

  JUMPOUT(0x193B0CA40);
}

int std::collate_byname<wchar_t>::do_compare(const std::collate_byname<wchar_t> *this, const std::collate_byname<wchar_t>::char_type *__lo1, const std::collate_byname<wchar_t>::char_type *__hi1, const std::collate_byname<wchar_t>::char_type *__lo2, const std::collate_byname<wchar_t>::char_type *__hi2)
{
  std::wstring::__init_with_size[abi:ne200100]<wchar_t const*,wchar_t const*>(__dst, __lo1, __hi1, __hi1 - __lo1);
  std::wstring::__init_with_size[abi:ne200100]<wchar_t const*,wchar_t const*>(v12, __lo2, __hi2, __hi2 - __lo2);
  if (v15 >= 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  if (v13 >= 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = v12[0];
  }

  v10 = wcscoll_l(v8, v9, this[2].__l_);
  if (SHIBYTE(v13) < 0)
  {
    MEMORY[0x193B0CA40](v12[0], 4 * v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    MEMORY[0x193B0CA40](__dst[0], 4 * v15);
  }

  if (v10 < 0)
  {
    return -1;
  }

  else
  {
    return v10 != 0;
  }
}

void sub_1922E46D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a14 < 0)
  {
    std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(&a9);
  }

  if (SHIBYTE(a17) < 0)
  {
    MEMORY[0x193B0CA40](a15, 4 * a17);
  }

  _Unwind_Resume(exception_object);
}

std::collate_byname<wchar_t>::string_type *__cdecl std::collate_byname<wchar_t>::do_transform(std::collate_byname<wchar_t>::string_type *__return_ptr retstr, const std::collate_byname<wchar_t> *this, const std::collate_byname<wchar_t>::char_type *__lo, const std::collate_byname<wchar_t>::char_type *__hi)
{
  std::wstring::__init_with_size[abi:ne200100]<wchar_t const*,wchar_t const*>(__dst, __lo, __hi, __hi - __lo);
  if (v13 >= 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  v7 = wcsxfrm_l(0, v6, 0, this[2].__l_);
  std::wstring::basic_string[abi:ne200100](retstr, v7, 0);
  size = SHIBYTE(retstr->__r_.__value_.__r.__words[2]);
  if (size >= 0)
  {
    v9 = retstr;
  }

  else
  {
    v9 = retstr->__r_.__value_.__r.__words[0];
  }

  if (v13 >= 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  if (size < 0)
  {
    size = retstr->__r_.__value_.__l.__size_;
  }

  result = wcsxfrm_l(v9, v10, size + 1, this[2].__l_);
  if (SHIBYTE(v13) < 0)
  {
    return MEMORY[0x193B0CA40](__dst[0], 4 * v13);
  }

  return result;
}

void sub_1922E47D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (*(v12 + 23) < 0)
  {
    std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(v12);
  }

  if (SHIBYTE(a12) < 0)
  {
    MEMORY[0x193B0CA40](a10, 4 * a12);
  }

  _Unwind_Resume(exception_object);
}

void std::ctype<wchar_t>::~ctype(std::ctype<wchar_t> *this)
{
  std::__shared_count::~__shared_count(this);

  JUMPOUT(0x193B0CA40);
}

const std::ctype<wchar_t>::char_type *__cdecl std::ctype<wchar_t>::do_is(const std::ctype<wchar_t> *this, const std::ctype<wchar_t>::char_type *__low, const std::ctype<wchar_t>::char_type *__high, std::ctype_base::mask *__vec)
{
  result = __low;
  if (__low != __high)
  {
    v5 = MEMORY[0x1E69E9830];
    do
    {
      v6 = *result;
      if (v6 > 0x7F)
      {
        v7 = 0;
      }

      else
      {
        v7 = *(v5 + 4 * v6 + 60);
      }

      *__vec++ = v7;
      ++result;
    }

    while (result != __high);
  }

  return result;
}

const std::ctype<wchar_t>::char_type *__cdecl std::ctype<wchar_t>::do_scan_is(const std::ctype<wchar_t> *this, std::ctype_base::mask __m, const std::ctype<wchar_t>::char_type *__low, const std::ctype<wchar_t>::char_type *__high)
{
  for (result = __low; result != __high; ++result)
  {
    v5 = *result;
    if (v5 <= 0x7F && (*(MEMORY[0x1E69E9830] + 4 * v5 + 60) & __m) != 0)
    {
      break;
    }
  }

  return result;
}

const std::ctype<wchar_t>::char_type *__cdecl std::ctype<wchar_t>::do_scan_not(const std::ctype<wchar_t> *this, std::ctype_base::mask __m, const std::ctype<wchar_t>::char_type *__low, const std::ctype<wchar_t>::char_type *__high)
{
  for (result = __low; result != __high; ++result)
  {
    v5 = *result;
    if (v5 > 0x7F)
    {
      break;
    }

    if ((*(MEMORY[0x1E69E9830] + 4 * v5 + 60) & __m) == 0)
    {
      break;
    }
  }

  return result;
}

std::ctype<wchar_t>::char_type std::ctype<wchar_t>::do_toupper(const std::ctype<wchar_t> *this, std::ctype<wchar_t>::char_type a2)
{
  result = a2;
  if (a2 <= 0x7F)
  {
    return *(MEMORY[0x1E69E9830] + 4 * a2 + 2108);
  }

  return result;
}

const std::ctype<wchar_t>::char_type *__cdecl std::ctype<wchar_t>::do_toupper(const std::ctype<wchar_t> *this, std::ctype<wchar_t>::char_type *__low, const std::ctype<wchar_t>::char_type *__high)
{
  result = __low;
  if (__low != __high)
  {
    v4 = MEMORY[0x1E69E9830];
    do
    {
      v5 = *result;
      if (v5 >= 0x80)
      {
        v6 = result;
      }

      else
      {
        v6 = (v4 + 4 * v5 + 2108);
      }

      *result++ = *v6;
    }

    while (result != __high);
  }

  return result;
}

std::ctype<wchar_t>::char_type std::ctype<wchar_t>::do_tolower(const std::ctype<wchar_t> *this, std::ctype<wchar_t>::char_type a2)
{
  result = a2;
  if (a2 <= 0x7F)
  {
    return *(MEMORY[0x1E69E9830] + 4 * a2 + 1084);
  }

  return result;
}

const std::ctype<wchar_t>::char_type *__cdecl std::ctype<wchar_t>::do_tolower(const std::ctype<wchar_t> *this, std::ctype<wchar_t>::char_type *__low, const std::ctype<wchar_t>::char_type *__high)
{
  result = __low;
  if (__low != __high)
  {
    v4 = MEMORY[0x1E69E9830];
    do
    {
      v5 = *result;
      if (v5 >= 0x80)
      {
        v6 = result;
      }

      else
      {
        v6 = (v4 + 4 * v5 + 1084);
      }

      *result++ = *v6;
    }

    while (result != __high);
  }

  return result;
}

const char *__cdecl std::ctype<wchar_t>::do_widen(const std::ctype<wchar_t> *this, const char *__low, const char *__high, std::ctype<wchar_t>::char_type *__dest)
{
  for (result = __low; result != __high; ++__dest)
  {
    v5 = *result++;
    *__dest = v5;
  }

  return result;
}

char std::ctype<wchar_t>::do_narrow(const std::ctype<wchar_t> *this, std::ctype<wchar_t>::char_type a2, char __dfault)
{
  if (a2 >= 0x80)
  {
    return __dfault;
  }

  else
  {
    return a2;
  }
}

const std::ctype<wchar_t>::char_type *__cdecl std::ctype<wchar_t>::do_narrow(const std::ctype<wchar_t> *this, const std::ctype<wchar_t>::char_type *__low, const std::ctype<wchar_t>::char_type *__high, char __dfault, char *__dest)
{
  for (result = __low; result != __high; ++__dest)
  {
    v7 = *result++;
    v6 = v7;
    if (v7 >= 0x80)
    {
      v6 = __dfault;
    }

    *__dest = v6;
  }

  return result;
}

std::ctype<char> *__cdecl std::ctype<char>::ctype(std::ctype<char> *this, const std::ctype_base::mask *__tab, BOOL __del, size_t __refs)
{
  this->__shared_owners_ = __refs - 1;
  this->__tab_ = __tab;
  this->__del_ = __del;
  if (!__tab)
  {
    this->__tab_ = (MEMORY[0x1E69E9830] + 60);
  }

  return this;
}

{
  this->__shared_owners_ = __refs - 1;
  this->__tab_ = __tab;
  this->__del_ = __del;
  if (!__tab)
  {
    this->__tab_ = (MEMORY[0x1E69E9830] + 60);
  }

  return this;
}

void std::ctype<char>::~ctype(std::ctype<char> *this)
{
  if (this->__tab_ && this->__del_)
  {
    MEMORY[0x193B0CA20]();
  }

  std::__shared_count::~__shared_count(this);
}

{
  std::ctype<char>::~ctype(this);

  JUMPOUT(0x193B0CA40);
}

std::ctype<char>::char_type std::ctype<char>::do_toupper(const std::ctype<char> *this, std::ctype<char>::char_type __c)
{
  if ((__c & 0x80000000) == 0)
  {
    *&__c = *(MEMORY[0x1E69E9830] + 4 * __c + 2108);
  }

  return __c;
}

const std::ctype<char>::char_type *__cdecl std::ctype<char>::do_toupper(const std::ctype<char> *this, std::ctype<char>::char_type *__low, const std::ctype<char>::char_type *__high)
{
  result = __low;
  if (__low != __high)
  {
    v4 = MEMORY[0x1E69E9830];
    do
    {
      v5 = *result;
      if ((v5 & 0x8000000000000000) == 0)
      {
        LODWORD(v5) = *(v4 + 4 * v5 + 2108);
      }

      *result++ = v5;
    }

    while (result != __high);
  }

  return result;
}

std::ctype<char>::char_type std::ctype<char>::do_tolower(const std::ctype<char> *this, std::ctype<char>::char_type __c)
{
  if ((__c & 0x80000000) == 0)
  {
    *&__c = *(MEMORY[0x1E69E9830] + 4 * __c + 1084);
  }

  return __c;
}

const std::ctype<char>::char_type *__cdecl std::ctype<char>::do_tolower(const std::ctype<char> *this, std::ctype<char>::char_type *__low, const std::ctype<char>::char_type *__high)
{
  result = __low;
  if (__low != __high)
  {
    v4 = MEMORY[0x1E69E9830];
    do
    {
      v5 = *result;
      if ((v5 & 0x8000000000000000) == 0)
      {
        LODWORD(v5) = *(v4 + 4 * v5 + 1084);
      }

      *result++ = v5;
    }

    while (result != __high);
  }

  return result;
}

const char *__cdecl std::ctype<char>::do_widen(const std::ctype<char> *this, const char *__low, const char *__high, std::ctype<char>::char_type *__to)
{
  for (result = __low; result != __high; ++__to)
  {
    v5 = *result++;
    *__to = v5;
  }

  return result;
}

char std::ctype<char>::do_narrow(const std::ctype<char> *this, std::ctype<char>::char_type __c, char __dfault)
{
  if (__c >= 0)
  {
    return __c;
  }

  else
  {
    return __dfault;
  }
}

const char *__cdecl std::ctype<char>::do_narrow(const std::ctype<char> *this, const std::ctype<char>::char_type *__low, const std::ctype<char>::char_type *__high, char __dfault, char *__to)
{
  for (result = __low; result != __high; ++__to)
  {
    v7 = *result++;
    v6 = v7;
    if (v7 < 0)
    {
      v6 = __dfault;
    }

    *__to = v6;
  }

  return result;
}

std::ctype_byname<char> *__cdecl std::ctype_byname<char>::ctype_byname(std::ctype_byname<char> *this, const char *a2, size_t a3)
{
  this->__del_ = 0;
  v5 = (MEMORY[0x1E69E9830] + 60);
  this->__shared_owners_ = a3 - 1;
  this->__tab_ = v5;
  v6 = newlocale(63, a2, 0);
  this->__l_ = v6;
  if (!v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&v9, a2);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("ctype_byname<char>::ctype_byname failed to construct for ", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    std::__throw_runtime_error(v8);
  }

  return this;
}

void sub_1922E4D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    std::stoi(&a12);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::ctype<char>::~ctype(v17);
  _Unwind_Resume(a1);
}

std::ctype_byname<char> *__cdecl std::ctype_byname<char>::ctype_byname(std::ctype_byname<char> *this, const std::string *a2, size_t a3)
{
  v3 = a2;
  this->__del_ = 0;
  v5 = (MEMORY[0x1E69E9830] + 60);
  this->__shared_owners_ = a3 - 1;
  this->__tab_ = v5;
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  v6 = newlocale(63, a2, 0);
  this->__l_ = v6;
  if (!v6)
  {
    std::operator+<char>("ctype_byname<char>::ctype_byname failed to construct for ", &v3->__r_.__value_.__l.__data_, v9);
    if (v10 >= 0)
    {
      v8 = v9;
    }

    else
    {
      v8 = v9[0];
    }

    std::__throw_runtime_error(v8);
  }

  return this;
}

void sub_1922E4E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::stoi(&a10);
  }

  std::ctype<char>::~ctype(v15);
  _Unwind_Resume(a1);
}

void std::ctype_byname<char>::~ctype_byname(std::ctype_byname<char> *this)
{
  freelocale(this->__l_);

  std::ctype<char>::~ctype(this);
}

{
  std::ctype_byname<char>::~ctype_byname(this);

  JUMPOUT(0x193B0CA40);
}

std::ctype<char>::char_type std::ctype_byname<char>::do_toupper(const std::ctype_byname<char> *this, std::ctype<char>::char_type a2)
{
  if (a2 < 0)
  {
    LOBYTE(v2) = ___toupper_l(a2, this->__l_);
  }

  else
  {
    return *(MEMORY[0x1E69E9830] + 4 * a2 + 2108);
  }

  return v2;
}

const std::ctype<char>::char_type *__cdecl std::ctype_byname<char>::do_toupper(const std::ctype_byname<char> *this, std::ctype<char>::char_type *__low, const std::ctype<char>::char_type *__high)
{
  v3 = __low;
  if (__low != __high)
  {
    v6 = MEMORY[0x1E69E9830];
    do
    {
      v7 = *v3;
      if (v7 < 0)
      {
        LOBYTE(v8) = ___toupper_l(*v3, this->__l_);
      }

      else
      {
        v8 = *(v6 + 4 * v7 + 2108);
      }

      *v3++ = v8;
    }

    while (v3 != __high);
  }

  return v3;
}

std::ctype<char>::char_type std::ctype_byname<char>::do_tolower(const std::ctype_byname<char> *this, std::ctype<char>::char_type a2)
{
  if (a2 < 0)
  {
    LOBYTE(v2) = ___tolower_l(a2, this->__l_);
  }

  else
  {
    return *(MEMORY[0x1E69E9830] + 4 * a2 + 1084);
  }

  return v2;
}

const std::ctype<char>::char_type *__cdecl std::ctype_byname<char>::do_tolower(const std::ctype_byname<char> *this, std::ctype<char>::char_type *__low, const std::ctype<char>::char_type *__high)
{
  v3 = __low;
  if (__low != __high)
  {
    v6 = MEMORY[0x1E69E9830];
    do
    {
      v7 = *v3;
      if (v7 < 0)
      {
        LOBYTE(v8) = ___tolower_l(*v3, this->__l_);
      }

      else
      {
        v8 = *(v6 + 4 * v7 + 1084);
      }

      *v3++ = v8;
    }

    while (v3 != __high);
  }

  return v3;
}

std::ctype_byname<wchar_t> *__cdecl std::ctype_byname<wchar_t>::ctype_byname(std::ctype_byname<wchar_t> *this, const char *a2, size_t a3)
{
  this->__shared_owners_ = a3 - 1;
  v5 = newlocale(63, a2, 0);
  this->__l_ = v5;
  if (!v5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, a2);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("ctype_byname<wchar_t>::ctype_byname failed to construct for ", &v8, &v9);
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v9;
    }

    else
    {
      v7 = v9.__r_.__value_.__r.__words[0];
    }

    std::__throw_runtime_error(v7);
  }

  return this;
}

void sub_1922E5118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    std::stoi(&a12);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__shared_count::~__shared_count(v17);
  _Unwind_Resume(a1);
}

std::ctype_byname<wchar_t> *__cdecl std::ctype_byname<wchar_t>::ctype_byname(std::ctype_byname<wchar_t> *this, const std::string *a2, size_t a3)
{
  v3 = a2;
  this->__shared_owners_ = a3 - 1;
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  v5 = newlocale(63, a2, 0);
  this->__l_ = v5;
  if (!v5)
  {
    std::operator+<char>("ctype_byname<wchar_t>::ctype_byname failed to construct for ", &v3->__r_.__value_.__l.__data_, v8);
    if (v9 >= 0)
    {
      v7 = v8;
    }

    else
    {
      v7 = v8[0];
    }

    std::__throw_runtime_error(v7);
  }

  return this;
}

void sub_1922E5218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::stoi(&a10);
  }

  std::__shared_count::~__shared_count(v15);
  _Unwind_Resume(a1);
}

void std::ctype_byname<wchar_t>::~ctype_byname(std::ctype_byname<wchar_t> *this)
{
  freelocale(this->__l_);

  std::__shared_count::~__shared_count(this);
}

{
  std::ctype_byname<wchar_t>::~ctype_byname(this);

  JUMPOUT(0x193B0CA40);
}

BOOL std::ctype_byname<wchar_t>::do_is(const std::ctype_byname<wchar_t> *this, std::ctype_base::mask __m, std::ctype<wchar_t>::char_type __c)
{
  if (__c <= 0x7F)
  {
    v3 = *(MEMORY[0x1E69E9830] + 4 * __c + 60) & __m;
  }

  else
  {
    v3 = __maskrune_l(__c, __m, this->__l_);
  }

  return v3 != 0;
}

const std::ctype<wchar_t>::char_type *__cdecl std::ctype_byname<wchar_t>::do_is(const std::ctype_byname<wchar_t> *this, const std::ctype<wchar_t>::char_type *__low, const std::ctype<wchar_t>::char_type *__high, std::ctype_base::mask *__vec)
{
  v4 = __low;
  if (__low != __high)
  {
    v8 = MEMORY[0x1E69E9830];
    do
    {
      v9 = *v4;
      if (v9 > 0x7F)
      {
        *__vec = 0;
        if (__maskrune_l(v9, 0x4000uLL, this->__l_))
        {
          *__vec |= 0x4000u;
        }

        if (__maskrune_l(v9, 0x40000uLL, this->__l_))
        {
          *__vec |= 0x40000u;
        }

        if (__maskrune_l(v9, 0x200uLL, this->__l_))
        {
          *__vec |= 0x200u;
        }

        if (__maskrune_l(v9, 0x8000uLL, this->__l_))
        {
          *__vec |= 0x8000u;
        }

        if (__maskrune_l(v9, 0x1000uLL, this->__l_))
        {
          *__vec |= 0x1000u;
        }

        if (__maskrune_l(v9, 0x100uLL, this->__l_))
        {
          *__vec |= 0x100u;
        }

        if (__maskrune_l(v9, 0x400uLL, this->__l_))
        {
          *__vec |= 0x400u;
        }

        if (__maskrune_l(v9, 0x2000uLL, this->__l_))
        {
          *__vec |= 0x2000u;
        }

        if (__maskrune_l(v9, 0x10000uLL, this->__l_))
        {
          *__vec |= 0x10000u;
        }

        if (!__maskrune_l(v9, 0x20000uLL, this->__l_))
        {
          goto LABEL_26;
        }

        v10 = *__vec | 0x20000;
      }

      else
      {
        v10 = *(v8 + 4 * v9 + 60);
      }

      *__vec = v10;
LABEL_26:
      ++v4;
      ++__vec;
    }

    while (v4 != __high);
  }

  return v4;
}

const std::ctype<wchar_t>::char_type *__cdecl std::ctype_byname<wchar_t>::do_scan_is(const std::ctype_byname<wchar_t> *this, std::ctype_base::mask __m, const std::ctype<wchar_t>::char_type *__low, const std::ctype<wchar_t>::char_type *__high)
{
  v4 = __low;
  if (__low != __high)
  {
    v8 = __m;
    v9 = MEMORY[0x1E69E9830];
    do
    {
      v10 = *v4;
      if (v10 <= 0x7F)
      {
        if ((*(v9 + 4 * v10 + 60) & __m) != 0)
        {
          return v4;
        }
      }

      else if (__maskrune_l(v10, v8, this->__l_))
      {
        return v4;
      }

      ++v4;
    }

    while (v4 != __high);
  }

  return v4;
}

const std::ctype<wchar_t>::char_type *__cdecl std::ctype_byname<wchar_t>::do_scan_not(const std::ctype_byname<wchar_t> *this, std::ctype_base::mask __m, const std::ctype<wchar_t>::char_type *__low, const std::ctype<wchar_t>::char_type *__high)
{
  v4 = __low;
  if (__low != __high)
  {
    v8 = __m;
    v9 = MEMORY[0x1E69E9830];
    do
    {
      v10 = *v4;
      if (v10 <= 0x7F)
      {
        if ((*(v9 + 4 * v10 + 60) & __m) == 0)
        {
          return v4;
        }
      }

      else if (!__maskrune_l(v10, v8, this->__l_))
      {
        return v4;
      }

      ++v4;
    }

    while (v4 != __high);
  }

  return v4;
}

std::ctype<wchar_t>::char_type std::ctype_byname<wchar_t>::do_toupper(const std::ctype_byname<wchar_t> *this, std::ctype<wchar_t>::char_type a2)
{
  if (a2 <= 0x7F)
  {
    return *(MEMORY[0x1E69E9830] + 4 * a2 + 2108);
  }

  else
  {
    return ___toupper_l(a2, this->__l_);
  }
}

const std::ctype<wchar_t>::char_type *__cdecl std::ctype_byname<wchar_t>::do_toupper(const std::ctype_byname<wchar_t> *this, std::ctype<wchar_t>::char_type *__low, const std::ctype<wchar_t>::char_type *__high)
{
  v3 = __low;
  if (__low != __high)
  {
    v6 = MEMORY[0x1E69E9830];
    do
    {
      v7 = *v3;
      if (v7 <= 0x7F)
      {
        v8 = *(v6 + 4 * v7 + 2108);
      }

      else
      {
        v8 = ___toupper_l(v7, this->__l_);
      }

      *v3++ = v8;
    }

    while (v3 != __high);
  }

  return v3;
}

std::ctype<wchar_t>::char_type std::ctype_byname<wchar_t>::do_tolower(const std::ctype_byname<wchar_t> *this, std::ctype<wchar_t>::char_type a2)
{
  if (a2 <= 0x7F)
  {
    return *(MEMORY[0x1E69E9830] + 4 * a2 + 1084);
  }

  else
  {
    return ___tolower_l(a2, this->__l_);
  }
}

const std::ctype<wchar_t>::char_type *__cdecl std::ctype_byname<wchar_t>::do_tolower(const std::ctype_byname<wchar_t> *this, std::ctype<wchar_t>::char_type *__low, const std::ctype<wchar_t>::char_type *__high)
{
  v3 = __low;
  if (__low != __high)
  {
    v6 = MEMORY[0x1E69E9830];
    do
    {
      v7 = *v3;
      if (v7 <= 0x7F)
      {
        v8 = *(v6 + 4 * v7 + 1084);
      }

      else
      {
        v8 = ___tolower_l(v7, this->__l_);
      }

      *v3++ = v8;
    }

    while (v3 != __high);
  }

  return v3;
}

const char *__cdecl std::ctype_byname<wchar_t>::do_widen(const std::ctype_byname<wchar_t> *this, const char *__low, const char *__high, std::ctype<wchar_t>::char_type *__dest)
{
  for (i = __low; i != __high; ++__dest)
  {
    v8 = *i++;
    *__dest = btowc_l(v8, this->__l_);
  }

  return i;
}

char std::ctype_byname<wchar_t>::do_narrow(const std::ctype_byname<wchar_t> *this, std::ctype<wchar_t>::char_type a2, char __dfault)
{
  v4 = wctob_l(a2, this->__l_);
  if (v4 == -1)
  {
    return __dfault;
  }

  else
  {
    return v4;
  }
}

const std::ctype<wchar_t>::char_type *__cdecl std::ctype_byname<wchar_t>::do_narrow(const std::ctype_byname<wchar_t> *this, const std::ctype<wchar_t>::char_type *__low, const std::ctype<wchar_t>::char_type *__high, char __dfault, char *__dest)
{
  for (i = __low; i != __high; ++__dest)
  {
    v10 = *i++;
    v11 = wctob_l(v10, this->__l_);
    if (v11 == -1)
    {
      v12 = __dfault;
    }

    else
    {
      v12 = v11;
    }

    *__dest = v12;
  }

  return i;
}

void std::codecvt<char,char,__mbstate_t>::~codecvt(std::codecvt<char, char, mbstate_t> *this)
{
  std::__shared_count::~__shared_count(this);

  JUMPOUT(0x193B0CA40);
}

std::codecvt_base::result std::codecvt<char,char,__mbstate_t>::do_out(const std::codecvt<char, char, mbstate_t> *this, std::codecvt<char, char, mbstate_t>::state_type *__st, const std::codecvt<char, char, mbstate_t>::intern_type *__frm, const std::codecvt<char, char, mbstate_t>::intern_type *__frm_end, const std::codecvt<char, char, mbstate_t>::intern_type **__frm_nxt, std::codecvt<char, char, mbstate_t>::extern_type *__to, std::codecvt<char, char, mbstate_t>::extern_type *__to_end, std::codecvt<char, char, mbstate_t>::extern_type **__to_nxt)
{
  *__frm_nxt = __frm;
  *__to_nxt = __to;
  return 3;
}

std::codecvt_base::result std::codecvt<char,char,__mbstate_t>::do_in(const std::codecvt<char, char, mbstate_t> *this, std::codecvt<char, char, mbstate_t>::state_type *__st, const std::codecvt<char, char, mbstate_t>::extern_type *__frm, const std::codecvt<char, char, mbstate_t>::extern_type *__frm_end, const std::codecvt<char, char, mbstate_t>::extern_type **__frm_nxt, std::codecvt<char, char, mbstate_t>::intern_type *__to, std::codecvt<char, char, mbstate_t>::intern_type *__to_end, std::codecvt<char, char, mbstate_t>::intern_type **__to_nxt)
{
  *__frm_nxt = __frm;
  *__to_nxt = __to;
  return 3;
}

int std::codecvt<char,char,__mbstate_t>::do_length(const std::codecvt<char, char, mbstate_t> *this, std::codecvt<char, char, mbstate_t>::state_type *__st, const std::codecvt<char, char, mbstate_t>::extern_type *__frm, const std::codecvt<char, char, mbstate_t>::extern_type *__end, size_t __mx)
{
  if (__end - __frm >= __mx)
  {
    return __mx;
  }

  else
  {
    return __end - __frm;
  }
}

std::codecvt<wchar_t, char, mbstate_t> *__cdecl std::codecvt<wchar_t,char,__mbstate_t>::codecvt(std::codecvt<wchar_t, char, mbstate_t> *this, size_t __refs)
{
  this->__shared_owners_ = __refs - 1;
  this->__l_ = 0;
  return this;
}

{
  this->__shared_owners_ = __refs - 1;
  this->__l_ = 0;
  return this;
}

std::codecvt<wchar_t, char, mbstate_t> *__cdecl std::codecvt<wchar_t,char,__mbstate_t>::codecvt(std::codecvt<wchar_t, char, mbstate_t> *this, const char *a2, size_t __refs)
{
  this->__shared_owners_ = __refs - 1;
  v5 = newlocale(63, a2, 0);
  this->__l_ = v5;
  if (!v5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, a2);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("codecvt_byname<wchar_t, char, mbstate_t>::codecvt_byname failed to construct for ", &v8, &v9);
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v9;
    }

    else
    {
      v7 = v9.__r_.__value_.__r.__words[0];
    }

    std::__throw_runtime_error(v7);
  }

  return this;
}

void sub_1922E5A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    std::stoi(&a12);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__shared_count::~__shared_count(v17);
  _Unwind_Resume(a1);
}

std::codecvt_base::result std::codecvt<wchar_t,char,__mbstate_t>::do_out(const std::codecvt<wchar_t, char, mbstate_t> *this, std::codecvt<wchar_t, char, mbstate_t>::state_type *__st, const std::codecvt<wchar_t, char, mbstate_t>::intern_type *__frm, const std::codecvt<wchar_t, char, mbstate_t>::intern_type *__frm_end, const std::codecvt<wchar_t, char, mbstate_t>::intern_type **__frm_nxt, std::codecvt<wchar_t, char, mbstate_t>::extern_type *__to, std::codecvt<wchar_t, char, mbstate_t>::extern_type *__to_end, std::codecvt<wchar_t, char, mbstate_t>::extern_type **__to_nxt)
{
  v10 = __to;
  v13 = __frm;
  v32 = *MEMORY[0x1E69E9840];
  v16 = __frm;
  if (__frm != __frm_end)
  {
    v16 = __frm;
    while (*v16)
    {
      if (++v16 == __frm_end)
      {
        v16 = __frm_end;
        break;
      }
    }
  }

  *__to_nxt = __to;
  *__frm_nxt = __frm;
  while (v13 != __frm_end && v10 != __to_end)
  {
    v17 = *(&__st->_mbstateL + 5);
    *(&v31._mbstateL + 4) = *(&__st->_mbstateL + 4);
    *(&v31._mbstateL + 5) = v17;
    v18 = *(&__st->_mbstateL + 7);
    *(&v31._mbstateL + 6) = *(&__st->_mbstateL + 6);
    *(&v31._mbstateL + 7) = v18;
    v19 = *(&__st->_mbstateL + 1);
    *v31.__mbstate8 = *__st->__mbstate8;
    *(&v31._mbstateL + 1) = v19;
    v20 = *(&__st->_mbstateL + 3);
    *(&v31._mbstateL + 2) = *(&__st->_mbstateL + 2);
    *(&v31._mbstateL + 3) = v20;
    v21 = wcsnrtombs_l(v10, __frm_nxt, v16 - v13, __to_end - v10, __st, this->__l_);
    if (!v21)
    {
      goto LABEL_25;
    }

    if (v21 == -1)
    {
      *__to_nxt = v10;
      while (v13 != *__frm_nxt)
      {
        v28 = wcrtomb_l(v10, *v13, &v31, this->__l_);
        if (v28 == -1)
        {
          break;
        }

        v10 = &(*__to_nxt)[v28];
        *__to_nxt = v10;
        ++v13;
      }

      *__frm_nxt = v13;
LABEL_31:
      result = error;
      goto LABEL_34;
    }

    v10 = &(*__to_nxt)[v21];
    *__to_nxt = v10;
    if (v10 == __to_end)
    {
      v13 = *__frm_nxt;
      break;
    }

    if (v16 == __frm_end)
    {
      v13 = *__frm_nxt;
      v16 = __frm_end;
    }

    else
    {
      v22 = wcrtomb_l(v30, 0, __st, this->__l_);
      if (v22 == -1)
      {
        goto LABEL_31;
      }

      if (v22 > __to_end - *__to_nxt)
      {
LABEL_25:
        result = partial;
        goto LABEL_34;
      }

      if (v22)
      {
        v23 = v30;
        do
        {
          v24 = *v23++;
          v25 = (*__to_nxt)++;
          *v25 = v24;
          --v22;
        }

        while (v22);
      }

      v13 = (*__frm_nxt + 1);
      *__frm_nxt = v13;
      v26 = v13;
      v16 = __frm_end;
      if (v13 != __frm_end)
      {
        while (*v26)
        {
          if (++v26 == __frm_end)
          {
            v16 = __frm_end;
            goto LABEL_24;
          }
        }

        v16 = v26;
      }

LABEL_24:
      v10 = *__to_nxt;
    }
  }

  result = v13 != __frm_end;
LABEL_34:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

std::codecvt_base::result std::codecvt<wchar_t,char,__mbstate_t>::do_in(const std::codecvt<wchar_t, char, mbstate_t> *this, std::codecvt<wchar_t, char, mbstate_t>::state_type *__st, const std::codecvt<wchar_t, char, mbstate_t>::extern_type *__frm, const std::codecvt<wchar_t, char, mbstate_t>::extern_type *__frm_end, const std::codecvt<wchar_t, char, mbstate_t>::extern_type **__frm_nxt, std::codecvt<wchar_t, char, mbstate_t>::intern_type *__to, std::codecvt<wchar_t, char, mbstate_t>::intern_type *__to_end, std::codecvt<wchar_t, char, mbstate_t>::intern_type **__to_nxt)
{
  v10 = __to;
  v13 = __frm;
  v27 = *MEMORY[0x1E69E9840];
  v16 = __frm_end;
  if (__frm != __frm_end)
  {
    v16 = __frm;
    while (*v16)
    {
      if (++v16 == __frm_end)
      {
        v16 = __frm_end;
        break;
      }
    }
  }

  *__to_nxt = __to;
  *__frm_nxt = __frm;
  if (__frm != __frm_end)
  {
    while (v10 != __to_end)
    {
      v17 = *(&__st->_mbstateL + 5);
      *(&v26._mbstateL + 4) = *(&__st->_mbstateL + 4);
      *(&v26._mbstateL + 5) = v17;
      v18 = *(&__st->_mbstateL + 7);
      *(&v26._mbstateL + 6) = *(&__st->_mbstateL + 6);
      *(&v26._mbstateL + 7) = v18;
      v19 = *(&__st->_mbstateL + 1);
      *v26.__mbstate8 = *__st->__mbstate8;
      *(&v26._mbstateL + 1) = v19;
      v20 = *(&__st->_mbstateL + 3);
      *(&v26._mbstateL + 2) = *(&__st->_mbstateL + 2);
      *(&v26._mbstateL + 3) = v20;
      v21 = mbsnrtowcs_l(v10, __frm_nxt, v16 - v13, __to_end - v10, __st, this->__l_);
      if (v21 == -1)
      {
        while (1)
        {
          *__to_nxt = v10;
          if (v13 == *__frm_nxt)
          {
            *__frm_nxt = v13;
            goto LABEL_28;
          }

          v23 = mbrtowc_l(v10, v13, v16 - v13, &v26, this->__l_);
          if (v23)
          {
            if (v23 == -2)
            {
              *__frm_nxt = v13;
              result = partial;
              goto LABEL_29;
            }

            if (v23 == -1)
            {
              *__frm_nxt = v13;
              goto LABEL_31;
            }
          }

          else
          {
            v23 = 1;
          }

          v13 += v23;
          v10 = *__to_nxt + 1;
        }
      }

      v22 = &(*__to_nxt)[v21];
      *__to_nxt = v22;
      if (v22 == __to_end)
      {
        v13 = *__frm_nxt;
        break;
      }

      v13 = *__frm_nxt;
      if (v16 == __frm_end)
      {
        goto LABEL_16;
      }

      if (mbrtowc_l(v22, *__frm_nxt, 1uLL, __st, this->__l_))
      {
LABEL_31:
        result = error;
        goto LABEL_29;
      }

      ++*__to_nxt;
      v13 = *__frm_nxt + 1;
      *__frm_nxt = v13;
      if (v13 == __frm_end)
      {
LABEL_16:
        v16 = __frm_end;
      }

      else
      {
        v16 = v13;
        while (*v16)
        {
          if (++v16 == __frm_end)
          {
            goto LABEL_16;
          }
        }
      }

      if (v13 == __frm_end)
      {
        break;
      }

      v10 = *__to_nxt;
    }
  }

LABEL_28:
  result = v13 != __frm_end;
LABEL_29:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

std::codecvt_base::result std::codecvt<wchar_t,char,__mbstate_t>::do_unshift(const std::codecvt<wchar_t, char, mbstate_t> *this, std::codecvt<wchar_t, char, mbstate_t>::state_type *__st, std::codecvt<wchar_t, char, mbstate_t>::extern_type *__to, std::codecvt<wchar_t, char, mbstate_t>::extern_type *__to_end, std::codecvt<wchar_t, char, mbstate_t>::extern_type **__to_nxt)
{
  *__to_nxt = __to;
  v7 = wcrtomb_l(v13, 0, __st, this->__l_);
  if (v7 + 1 < 2)
  {
    return 2;
  }

  v9 = v7 - 1;
  if (v7 - 1 > __to_end - *__to_nxt)
  {
    return 1;
  }

  if (v7 != 1)
  {
    v10 = v13;
    do
    {
      v11 = *v10++;
      v12 = (*__to_nxt)++;
      *v12 = v11;
      --v9;
    }

    while (v9);
  }

  return 0;
}

int std::codecvt<wchar_t,char,__mbstate_t>::do_encoding(const std::codecvt<wchar_t, char, mbstate_t> *this)
{
  if (mbtowc_l(0, 0, 6uLL, this->__l_))
  {
    return -1;
  }

  l = this->__l_;
  return !l || ___mb_cur_max_l(l) == 1;
}

int std::codecvt<wchar_t,char,__mbstate_t>::do_length(const std::codecvt<wchar_t, char, mbstate_t> *this, std::codecvt<wchar_t, char, mbstate_t>::state_type *a2, const std::codecvt<wchar_t, char, mbstate_t>::extern_type *__frm, const std::codecvt<wchar_t, char, mbstate_t>::extern_type *__end, size_t __mx)
{
  v5 = 0;
  if (__mx)
  {
    v7 = __frm;
    if (__frm != __end)
    {
      v5 = 0;
      v11 = 1;
      do
      {
        v12 = mbrlen_l(v7, __end - v7, a2, this->__l_);
        if (v12)
        {
          if (v12 >= 0xFFFFFFFFFFFFFFFELL)
          {
            return v5;
          }

          v13 = v12;
        }

        else
        {
          v12 = 1;
          v13 = 1;
        }

        v5 += v13;
        if (v11 >= __mx)
        {
          break;
        }

        v7 += v12;
        ++v11;
      }

      while (v7 != __end);
    }
  }

  return v5;
}

int std::codecvt<wchar_t,char,__mbstate_t>::do_max_length(const std::codecvt<wchar_t, char, mbstate_t> *this)
{
  l = this->__l_;
  if (l)
  {
    return ___mb_cur_max_l(l);
  }

  else
  {
    return 1;
  }
}

void std::codecvt<char16_t,char,__mbstate_t>::~codecvt(std::codecvt<char16_t, char, mbstate_t> *this)
{
  std::__shared_count::~__shared_count(this);

  JUMPOUT(0x193B0CA40);
}

std::codecvt_base::result std::codecvt<char16_t,char,__mbstate_t>::do_out(const std::codecvt<char16_t, char, mbstate_t> *this, std::codecvt<char16_t, char, mbstate_t>::state_type *__st, const std::codecvt<char16_t, char, mbstate_t>::intern_type *__frm, const std::codecvt<char16_t, char, mbstate_t>::intern_type *__frm_end, const std::codecvt<char16_t, char, mbstate_t>::intern_type **__frm_nxt, std::codecvt<char16_t, char, mbstate_t>::extern_type *__to, std::codecvt<char16_t, char, mbstate_t>::extern_type *__to_end, std::codecvt<char16_t, char, mbstate_t>::extern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::utf16_to_utf8(__frm, __frm_end, v13, __to, __to_end, v12, 0x10FFFF, 0, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

uint64_t std::utf16_to_utf8(std::__1 *this, char *a2, unsigned __int16 *a3, const unsigned __int16 **a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 **a7, char a8, std::codecvt_mode a9)
{
  *a3 = this;
  *a6 = a4;
  if ((a8 & 2) != 0)
  {
    if (a5 - a4 < 3)
    {
      return 1;
    }

    *a6 = a4 + 1;
    *a4 = -17;
    v10 = (*a6)++;
    *v10 = -69;
    v11 = (*a6)++;
    *v11 = -65;
  }

  v12 = *a3;
  if (*a3 >= a2)
  {
    return 0;
  }

  while (1)
  {
    v13 = *v12;
    if (v13 > a7)
    {
      return 2;
    }

    if (v13 <= 0x7F)
    {
      v14 = *a6;
      if (&a5[-*a6] < 1)
      {
        return 1;
      }

      *a6 = v14 + 1;
      *v14 = v13;
      goto LABEL_27;
    }

    if (v13 <= 0x7FF)
    {
      v15 = *a6;
      if (&a5[-*a6] < 2)
      {
        return 1;
      }

      *a6 = v15 + 1;
      *v15 = (v13 >> 6) | 0xC0;
      goto LABEL_26;
    }

    if (v13 >> 11 <= 0x1A)
    {
      v16 = *a6;
      if (&a5[-*a6] < 3)
      {
        return 1;
      }

      *a6 = v16 + 1;
      *v16 = (v13 >> 12) | 0xE0;
      v17 = (v13 >> 6) & 0x3F | 0x80;
LABEL_25:
      v27 = (*a6)++;
      *v27 = v17;
LABEL_26:
      v28 = v13 & 0x3F | 0x80;
      v29 = (*a6)++;
      *v29 = v28;
      goto LABEL_27;
    }

    if (v13 >> 10 > 0x36)
    {
      if (v13 < 0xE000)
      {
        return 2;
      }

      v26 = *a6;
      if (&a5[-*a6] < 3)
      {
        return 1;
      }

      *a6 = v26 + 1;
      *v26 = (v13 >> 12) | 0xE0;
      v17 = (v13 >> 6) & 0xFFFFFFBF;
      goto LABEL_25;
    }

    if (a2 - v12 < 3)
    {
      return 1;
    }

    v20 = *(v12 + 1);
    v18 = (v12 + 2);
    v19 = v20;
    if ((v20 & 0xFC00) != 0xDC00)
    {
      return 2;
    }

    if (&a5[-*a6] < 4)
    {
      return 1;
    }

    if ((v19 & 0x3FF | ((v13 & 0x3FF) << 10)) + 0x10000 > a7)
    {
      return 2;
    }

    *a3 = v18;
    v21 = ((v13 >> 6) & 0xF) + 1;
    v22 = (*a6)++;
    *v22 = (v21 >> 2) | 0xF0;
    v23 = (*a6)++;
    *v23 = (16 * (v21 & 3)) | (v13 >> 2) & 0xF | 0x80;
    v24 = (*a6)++;
    *v24 = (16 * (v13 & 3)) | (v19 >> 6) & 0xF | 0x80;
    v25 = (*a6)++;
    *v25 = v19 & 0x3F | 0x80;
LABEL_27:
    v12 = (*a3 + 2);
    *a3 = v12;
    if (v12 >= a2)
    {
      return 0;
    }
  }
}

std::codecvt_base::result std::codecvt<char16_t,char,__mbstate_t>::do_in(const std::codecvt<char16_t, char, mbstate_t> *this, std::codecvt<char16_t, char, mbstate_t>::state_type *__st, const std::codecvt<char16_t, char, mbstate_t>::extern_type *__frm, const std::codecvt<char16_t, char, mbstate_t>::extern_type *__frm_end, const std::codecvt<char16_t, char, mbstate_t>::extern_type **__frm_nxt, std::codecvt<char16_t, char, mbstate_t>::intern_type *__to, std::codecvt<char16_t, char, mbstate_t>::intern_type *__to_end, std::codecvt<char16_t, char, mbstate_t>::intern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::utf8_to_utf16(__frm, __frm_end, v13, __to, __to_end, v12, 0x10FFFF, 0, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

uint64_t std::utf8_to_utf16(std::__1 *this, unsigned __int8 *a2, unsigned __int8 *a3, const unsigned __int8 **a4, char *a5, unsigned __int16 *a6, unsigned __int16 **a7, char a8, std::codecvt_mode a9)
{
  *a3 = this;
  *a6 = a4;
  v9 = *a3;
  if ((a8 & 4) != 0 && a2 - v9 >= 3 && *v9 == 239 && v9[1] == 187 && v9[2] == 191)
  {
    v9 += 3;
    *a3 = v9;
  }

  if (v9 >= a2)
  {
    return 0;
  }

  v10 = *a6;
  while (1)
  {
    v11 = v10;
    if (v10 >= a5)
    {
      return v11 >= a5;
    }

    v12 = *v9;
    if (v12 > a7)
    {
      return 2;
    }

    if ((v12 & 0x80) == 0)
    {
      *v11 = v12;
      v13 = (v9 + 1);
      goto LABEL_48;
    }

    if (v12 < 0xC2)
    {
      return 2;
    }

    if (v12 <= 0xDF)
    {
      if (a2 - v9 < 2)
      {
        return 1;
      }

      v14 = v9[1];
      if ((v14 & 0xC0) != 0x80)
      {
        return 2;
      }

      v15 = v14 & 0x3F | ((v12 & 0x1F) << 6);
      if (v15 > a7)
      {
        return 2;
      }

      *v11 = v15;
      v13 = (v9 + 2);
      goto LABEL_48;
    }

    if (v12 <= 0xEF)
    {
      if (a2 - v9 < 2)
      {
        return 1;
      }

      v16 = v9[1];
      if (v12 == 237)
      {
        v19 = v16 & 0xE0;
      }

      else
      {
        if (v12 == 224)
        {
          if ((v16 & 0xE0) != 0xA0)
          {
            return 2;
          }

LABEL_34:
          if (a2 - v9 == 2)
          {
            return 1;
          }

          v20 = v9[2];
          if ((v20 & 0xC0) != 0x80)
          {
            return 2;
          }

          v21 = (v12 << 12) | ((v16 & 0x3F) << 6) | v20 & 0x3F;
          if (v21 > a7)
          {
            return 2;
          }

          *v11 = v21;
          v13 = (v9 + 3);
          goto LABEL_48;
        }

        v19 = v16 & 0xC0;
      }

      if (v19 != 128)
      {
        return 2;
      }

      goto LABEL_34;
    }

    if (v12 > 0xF4)
    {
      return 2;
    }

    v17 = (a2 - v9);
    if (a2 - v9 < 2)
    {
      return 1;
    }

    v18 = v9[1];
    if (v12 == 244)
    {
      v22 = v18 & 0xF0;
      goto LABEL_40;
    }

    if (v12 != 240)
    {
      v22 = v18 & 0xC0;
LABEL_40:
      if (v22 != 128)
      {
        return 2;
      }

      goto LABEL_41;
    }

    if (v18 - 144 >= 0x30)
    {
      return 2;
    }

LABEL_41:
    if (v17 == 2)
    {
      return 1;
    }

    v23 = v9[2];
    if ((v23 & 0xC0) != 0x80)
    {
      return 2;
    }

    if (v17 == 3)
    {
      return 1;
    }

    v24 = v9[3];
    if ((v24 & 0xC0) != 0x80)
    {
      return 2;
    }

    if (a5 - v11 < 3)
    {
      return 1;
    }

    if ((((v12 & 7) << 18) | ((v18 & 0x3F) << 12) | ((v23 & 0x3F) << 6) | v24 & 0x3F) > a7)
    {
      return 2;
    }

    *v11 = (((4 * (v18 & 0xF)) | (((4 * (v12 & 7)) | (v18 >> 4) & 3) << 6) | (v23 >> 4) & 3) + 16320) | 0xD800;
    *(v11 + 1) = v24 & 0x3F | ((v23 & 0xF) << 6) | 0xDC00;
    *a6 = v11 + 2;
    v13 = *a3 + 4;
LABEL_48:
    *a3 = v13;
    v10 = *a6 + 2;
    *a6 = v10;
    v9 = *a3;
    if (*a3 >= a2)
    {
      return v11 >= a5;
    }
  }
}

uint64_t std::utf8_to_utf16_length(std::__1 *this, const unsigned __int8 *a2, const unsigned __int8 *a3, unint64_t a4, char a5, std::codecvt_mode a6)
{
  v6 = a2 - this < 3 || (a5 & 4) == 0;
  v7 = this;
  if (!v6)
  {
    v7 = this;
    if (*this == 239)
    {
      v7 = this;
      if (*(this + 1) == 187)
      {
        v8 = 3;
        if (*(this + 2) != 191)
        {
          v8 = 0;
        }

        v7 = this + v8;
      }
    }
  }

  if (v7 < a2 && a3)
  {
    v9 = 0;
    while (1)
    {
      v10 = *v7;
      if (v10 > a4)
      {
        return (v7 - this);
      }

      if ((v10 & 0x80) == 0)
      {
        ++v7;
        goto LABEL_48;
      }

      if (v10 < 0xC2)
      {
        return (v7 - this);
      }

      if (v10 <= 0xDF)
      {
        if (&a2[-v7] < 2)
        {
          return (v7 - this);
        }

        v11 = *(v7 + 1);
        if ((v11 & 0xC0) != 0x80 || (v11 & 0x3F | ((v10 & 0x1F) << 6)) > a4)
        {
          return (v7 - this);
        }

        v7 += 2;
        goto LABEL_48;
      }

      if (v10 <= 0xEF)
      {
        if (&a2[-v7] < 3)
        {
          return (v7 - this);
        }

        v12 = *(v7 + 1);
        v13 = *(v7 + 2);
        if (v10 == 237)
        {
          v17 = v12 & 0xE0;
        }

        else
        {
          if (v10 == 224)
          {
            if ((v12 & 0xE0) != 0xA0)
            {
              return (v7 - this);
            }

LABEL_38:
            if ((v13 & 0xC0) != 0x80 || (((v10 & 0xF) << 12) | ((v12 & 0x3F) << 6) | v13 & 0x3F) > a4)
            {
              return (v7 - this);
            }

            v7 += 3;
            goto LABEL_48;
          }

          v17 = v12 & 0xC0;
        }

        if (v17 != 128)
        {
          return (v7 - this);
        }

        goto LABEL_38;
      }

      if (v10 > 0xF4 || &a2[-v7] < 4 || &a3[-v9] < 2)
      {
        return (v7 - this);
      }

      v14 = *(v7 + 1);
      v15 = *(v7 + 2);
      v16 = *(v7 + 3);
      if (v10 == 244)
      {
        break;
      }

      if (v10 != 240)
      {
        v18 = v14 & 0xC0;
LABEL_43:
        if (v18 != 128)
        {
          return (v7 - this);
        }

        goto LABEL_44;
      }

      if ((v14 - 144) >= 0x30)
      {
        return (v7 - this);
      }

LABEL_44:
      if ((v15 & 0xC0) != 0x80 || (v16 & 0xC0) != 0x80 || (((v10 & 7) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6) | v16 & 0x3F) > a4)
      {
        return (v7 - this);
      }

      ++v9;
      v7 += 4;
LABEL_48:
      if (v7 < a2 && ++v9 < a3)
      {
        continue;
      }

      return (v7 - this);
    }

    v18 = v14 & 0xF0;
    goto LABEL_43;
  }

  return (v7 - this);
}

void std::codecvt<char16_t,char8_t,__mbstate_t>::~codecvt(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

uint64_t std::codecvt<char16_t,char8_t,__mbstate_t>::do_out(int a1, int a2, std::__1 *this, char *a4, void *a5, const unsigned __int16 **a6, unsigned __int8 *a7, void *a8)
{
  *v13 = this;
  result = std::utf16_to_utf8(this, a4, v13, a6, a7, v12, 0x10FFFF, 0, a6);
  v11 = *v12;
  *a5 = *v13;
  *a8 = v11;
  return result;
}

uint64_t std::codecvt<char16_t,char8_t,__mbstate_t>::do_in(int a1, int a2, std::__1 *this, unsigned __int8 *a4, void *a5, const unsigned __int8 **a6, char *a7, void *a8)
{
  *v13 = this;
  result = std::utf8_to_utf16(this, a4, v13, a6, a7, v12, 0x10FFFF, 0, a6);
  v11 = *v12;
  *a5 = *v13;
  *a8 = v11;
  return result;
}

void std::codecvt<char32_t,char,__mbstate_t>::~codecvt(std::codecvt<char32_t, char, mbstate_t> *this)
{
  std::__shared_count::~__shared_count(this);

  JUMPOUT(0x193B0CA40);
}

std::codecvt_base::result std::codecvt<char32_t,char,__mbstate_t>::do_out(const std::codecvt<char32_t, char, mbstate_t> *this, std::codecvt<char32_t, char, mbstate_t>::state_type *__st, const std::codecvt<char32_t, char, mbstate_t>::intern_type *__frm, const std::codecvt<char32_t, char, mbstate_t>::intern_type *__frm_end, const std::codecvt<char32_t, char, mbstate_t>::intern_type **__frm_nxt, std::codecvt<char32_t, char, mbstate_t>::extern_type *__to, std::codecvt<char32_t, char, mbstate_t>::extern_type *__to_end, std::codecvt<char32_t, char, mbstate_t>::extern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::ucs4_to_utf8(__frm, __frm_end, v13, __to, __to_end, v12, 0x10FFFF, 0, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

uint64_t std::ucs4_to_utf8(std::__1 *this, const unsigned int *a2, unsigned int *a3, const unsigned int **a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 **a7, char a8, std::codecvt_mode a9)
{
  *a3 = this;
  *a6 = a4;
  if ((a8 & 2) != 0)
  {
    if (a5 - a4 < 3)
    {
      return 1;
    }

    *a6 = a4 + 1;
    *a4 = -17;
    v10 = (*a6)++;
    *v10 = -69;
    v11 = (*a6)++;
    *v11 = -65;
  }

  for (i = *a3; ; *a3 = i)
  {
    if (i >= a2)
    {
      return 0;
    }

    v13 = *i;
    if (v13 >> 11 == 27 || v13 > a7)
    {
      break;
    }

    if (v13 > 0x7F)
    {
      if (v13 > 0x7FF)
      {
        v17 = *a6;
        v18 = &a5[-*a6];
        if (WORD1(v13))
        {
          if (v18 < 4)
          {
            return 1;
          }

          *a6 = v17 + 1;
          *v17 = (v13 >> 18) | 0xF0;
          v19 = (*a6)++;
          *v19 = (v13 >> 12) & 0x3F | 0x80;
        }

        else
        {
          if (v18 < 3)
          {
            return 1;
          }

          *a6 = v17 + 1;
          *v17 = (v13 >> 12) | 0xE0;
        }

        v20 = (*a6)++;
        *v20 = (v13 >> 6) & 0x3F | 0x80;
      }

      else
      {
        v16 = *a6;
        if (&a5[-*a6] < 2)
        {
          return 1;
        }

        *a6 = v16 + 1;
        *v16 = (v13 >> 6) | 0xC0;
      }

      v21 = v13 & 0x3F | 0x80;
      v22 = (*a6)++;
      *v22 = v21;
    }

    else
    {
      v15 = *a6;
      if (&a5[-*a6] < 1)
      {
        return 1;
      }

      *a6 = v15 + 1;
      *v15 = v13;
    }

    i = (*a3 + 4);
  }

  return 2;
}

std::codecvt_base::result std::codecvt<char32_t,char,__mbstate_t>::do_in(const std::codecvt<char32_t, char, mbstate_t> *this, std::codecvt<char32_t, char, mbstate_t>::state_type *__st, const std::codecvt<char32_t, char, mbstate_t>::extern_type *__frm, const std::codecvt<char32_t, char, mbstate_t>::extern_type *__frm_end, const std::codecvt<char32_t, char, mbstate_t>::extern_type **__frm_nxt, std::codecvt<char32_t, char, mbstate_t>::intern_type *__to, std::codecvt<char32_t, char, mbstate_t>::intern_type *__to_end, std::codecvt<char32_t, char, mbstate_t>::intern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::utf8_to_ucs4(__frm, __frm_end, v13, __to, __to_end, v12, 0x10FFFF, 0, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

uint64_t std::utf8_to_ucs4(std::__1 *this, char *a2, unsigned __int8 *a3, const unsigned __int8 **a4, unsigned int *a5, unsigned int *a6, unsigned int **a7, char a8, std::codecvt_mode a9)
{
  *a3 = this;
  *a6 = a4;
  v9 = *a3;
  if ((a8 & 4) != 0 && a2 - v9 >= 3 && *v9 == 239 && v9[1] == 187 && v9[2] == 191)
  {
    v9 += 3;
    *a3 = v9;
  }

  if (v9 >= a2)
  {
    return 0;
  }

  v10 = *a6;
  while (1)
  {
    v11 = v10;
    if (v10 >= a5)
    {
      return v11 >= a5;
    }

    LODWORD(v12) = *v9;
    if ((*v9 & 0x80000000) == 0)
    {
      if (*v9 > a7)
      {
        return 2;
      }

      result = 1;
      goto LABEL_47;
    }

    if (v12 < 0xC2)
    {
      return 2;
    }

    if (v12 <= 0xDF)
    {
      if (a2 - v9 < 2)
      {
        return 1;
      }

      v14 = v9[1];
      if ((v14 & 0xC0) != 0x80)
      {
        return 2;
      }

      v15 = v14 & 0x3F | ((v12 & 0x1F) << 6);
      result = 2;
      if (v15 > a7)
      {
        return result;
      }

      LODWORD(v12) = v15;
      goto LABEL_47;
    }

    if (v12 <= 0xEF)
    {
      if (a2 - v9 < 2)
      {
        return 1;
      }

      v16 = v9[1];
      if (v12 == 237)
      {
        v19 = v16 & 0xE0;
      }

      else
      {
        if (v12 == 224)
        {
          if ((v16 & 0xE0) != 0xA0)
          {
            return 2;
          }

LABEL_34:
          if (a2 - v9 == 2)
          {
            return 1;
          }

          v20 = v9[2];
          if ((v20 & 0xC0) != 0x80)
          {
            return 2;
          }

          v12 = ((v12 & 0xF) << 12) | ((v16 & 0x3F) << 6) | v20 & 0x3F;
          if (v12 > a7)
          {
            return 2;
          }

          result = 3;
          goto LABEL_47;
        }

        v19 = v16 & 0xC0;
      }

      if (v19 != 128)
      {
        return 2;
      }

      goto LABEL_34;
    }

    if (v12 > 0xF4)
    {
      return 2;
    }

    v17 = (a2 - v9);
    if (a2 - v9 < 2)
    {
      return 1;
    }

    v18 = v9[1];
    if (v12 == 244)
    {
      v21 = v18 & 0xF0;
    }

    else
    {
      if (v12 == 240)
      {
        if ((v18 - 144) >= 0x30)
        {
          return 2;
        }

        goto LABEL_41;
      }

      v21 = v18 & 0xC0;
    }

    if (v21 != 128)
    {
      return 2;
    }

LABEL_41:
    if (v17 == 2)
    {
      return 1;
    }

    v22 = v9[2];
    if ((v22 & 0xC0) != 0x80)
    {
      return 2;
    }

    if (v17 == 3)
    {
      return 1;
    }

    v23 = v9[3];
    if ((v23 & 0xC0) != 0x80)
    {
      return 2;
    }

    v12 = ((v12 & 7) << 18) | ((v18 & 0x3F) << 12) | ((v22 & 0x3F) << 6) | v23 & 0x3F;
    if (v12 > a7)
    {
      return 2;
    }

    result = 4;
LABEL_47:
    *v11 = v12;
    *a3 = &v9[result];
    v10 = *a6 + 4;
    *a6 = v10;
    v9 = *a3;
    if (*a3 >= a2)
    {
      return v11 >= a5;
    }
  }
}

uint64_t std::utf8_to_ucs4_length(std::__1 *this, const unsigned __int8 *a2, const unsigned __int8 *a3, unint64_t a4, char a5, std::codecvt_mode a6)
{
  v6 = a2 - this < 3 || (a5 & 4) == 0;
  v7 = this;
  if (!v6)
  {
    v7 = this;
    if (*this == 239)
    {
      v7 = this;
      if (*(this + 1) == 187)
      {
        v8 = 3;
        if (*(this + 2) != 191)
        {
          v8 = 0;
        }

        v7 = this + v8;
      }
    }
  }

  if (v7 < a2 && a3)
  {
    v9 = 1;
    while (1)
    {
      if ((*v7 & 0x80000000) == 0)
      {
        if (*v7 > a4)
        {
          return (v7 - this);
        }

        v10 = 1;
        goto LABEL_47;
      }

      v11 = *v7;
      if (v11 < 0xC2)
      {
        return (v7 - this);
      }

      if (v11 <= 0xDF)
      {
        if (&a2[-v7] < 2)
        {
          return (v7 - this);
        }

        v12 = *(v7 + 1);
        if ((v12 & 0xC0) != 0x80 || (v12 & 0x3F | ((v11 & 0x1F) << 6)) > a4)
        {
          return (v7 - this);
        }

        v10 = 2;
        goto LABEL_47;
      }

      if (v11 <= 0xEF)
      {
        if (&a2[-v7] < 3)
        {
          return (v7 - this);
        }

        v13 = *(v7 + 1);
        v14 = *(v7 + 2);
        if (v11 == 237)
        {
          v18 = v13 & 0xE0;
        }

        else
        {
          if (v11 == 224)
          {
            if ((v13 & 0xE0) != 0xA0)
            {
              return (v7 - this);
            }

LABEL_37:
            if ((v14 & 0xC0) != 0x80 || (((v11 & 0xF) << 12) | ((v13 & 0x3F) << 6) | v14 & 0x3F) > a4)
            {
              return (v7 - this);
            }

            v10 = 3;
            goto LABEL_47;
          }

          v18 = v13 & 0xC0;
        }

        if (v18 != 128)
        {
          return (v7 - this);
        }

        goto LABEL_37;
      }

      if (v11 > 0xF4 || &a2[-v7] < 4)
      {
        return (v7 - this);
      }

      v15 = *(v7 + 1);
      v16 = *(v7 + 2);
      v17 = *(v7 + 3);
      if (v11 == 244)
      {
        break;
      }

      if (v11 != 240)
      {
        v19 = v15 & 0xC0;
LABEL_42:
        if (v19 != 128)
        {
          return (v7 - this);
        }

        goto LABEL_43;
      }

      if ((v15 - 144) >= 0x30)
      {
        return (v7 - this);
      }

LABEL_43:
      if ((v16 & 0xC0) != 0x80 || (v17 & 0xC0) != 0x80 || (((v11 & 7) << 18) | ((v15 & 0x3F) << 12) | ((v16 & 0x3F) << 6) | v17 & 0x3F) > a4)
      {
        return (v7 - this);
      }

      v10 = 4;
LABEL_47:
      v7 += v10;
      if (v7 < a2 && v9++ < a3)
      {
        continue;
      }

      return (v7 - this);
    }

    v19 = v15 & 0xF0;
    goto LABEL_42;
  }

  return (v7 - this);
}

void std::codecvt<char32_t,char8_t,__mbstate_t>::~codecvt(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

uint64_t std::codecvt<char32_t,char8_t,__mbstate_t>::do_out(int a1, int a2, std::__1 *this, unsigned int *a4, void *a5, const unsigned int **a6, unsigned __int8 *a7, void *a8)
{
  *v13 = this;
  result = std::ucs4_to_utf8(this, a4, v13, a6, a7, v12, 0x10FFFF, 0, a6);
  v11 = *v12;
  *a5 = *v13;
  *a8 = v11;
  return result;
}

uint64_t std::codecvt<char32_t,char8_t,__mbstate_t>::do_in(int a1, int a2, std::__1 *this, char *a4, void *a5, const unsigned __int8 **a6, unsigned int *a7, void *a8)
{
  *v13 = this;
  result = std::utf8_to_ucs4(this, a4, v13, a6, a7, v12, 0x10FFFF, 0, a6);
  v11 = *v12;
  *a5 = *v13;
  *a8 = v11;
  return result;
}

std::codecvt_base::result std::__codecvt_utf8<wchar_t>::do_out(const std::__codecvt_utf8<wchar_t> *this, std::__codecvt_utf8<wchar_t>::state_type *__st, const std::__codecvt_utf8<wchar_t>::intern_type *__frm, const std::__codecvt_utf8<wchar_t>::intern_type *__frm_end, const std::__codecvt_utf8<wchar_t>::intern_type **__frm_nxt, std::__codecvt_utf8<wchar_t>::extern_type *__to, std::__codecvt_utf8<wchar_t>::extern_type *__to_end, std::__codecvt_utf8<wchar_t>::extern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::ucs4_to_utf8(__frm, __frm_end, v13, __to, __to_end, v12, this->__maxcode_, this->__mode_, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

std::codecvt_base::result std::__codecvt_utf8<wchar_t>::do_in(const std::__codecvt_utf8<wchar_t> *this, std::__codecvt_utf8<wchar_t>::state_type *__st, const std::__codecvt_utf8<wchar_t>::extern_type *__frm, const std::__codecvt_utf8<wchar_t>::extern_type *__frm_end, const std::__codecvt_utf8<wchar_t>::extern_type **__frm_nxt, std::__codecvt_utf8<wchar_t>::intern_type *__to, std::__codecvt_utf8<wchar_t>::intern_type *__to_end, std::__codecvt_utf8<wchar_t>::intern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::utf8_to_ucs4(__frm, __frm_end, v13, __to, __to_end, v12, this->__maxcode_, this->__mode_, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

int std::__codecvt_utf8<wchar_t>::do_max_length(const std::__codecvt_utf8<wchar_t> *this)
{
  if ((this->__mode_ & 4) != 0)
  {
    return 7;
  }

  else
  {
    return 4;
  }
}

std::codecvt_base::result std::__codecvt_utf8<char16_t>::do_out(const std::__codecvt_utf8<char16_t> *this, std::__codecvt_utf8<char16_t>::state_type *__st, const std::__codecvt_utf8<char16_t>::intern_type *__frm, const std::__codecvt_utf8<char16_t>::intern_type *__frm_end, const std::__codecvt_utf8<char16_t>::intern_type **__frm_nxt, std::__codecvt_utf8<char16_t>::extern_type *__to, std::__codecvt_utf8<char16_t>::extern_type *__to_end, std::__codecvt_utf8<char16_t>::extern_type **__to_nxt)
{
  maxcode = this->__maxcode_;
  if ((this->__mode_ & 2) != 0)
  {
    if (__to_end - __to < 3)
    {
LABEL_3:
      result = partial;
      goto LABEL_21;
    }

    *__to = -17425;
    __to[2] = -65;
    __to += 3;
  }

  if (__frm >= __frm_end)
  {
LABEL_20:
    result = ok;
  }

  else
  {
    while (1)
    {
      v10 = *__frm;
      if ((v10 & 0xF800) == 0xD800 || maxcode < v10)
      {
        break;
      }

      v12 = __to_end - __to;
      if (v10 > 0x7F)
      {
        if (v10 > 0x7FF)
        {
          if (v12 < 3)
          {
            goto LABEL_3;
          }

          *__to = (v10 >> 12) | 0xE0;
          __to[1] = (v10 >> 6) & 0x3F | 0x80;
          __to[2] = v10 & 0x3F | 0x80;
          __to += 3;
        }

        else
        {
          if (v12 < 2)
          {
            goto LABEL_3;
          }

          *__to = (v10 >> 6) | 0xC0;
          __to[1] = v10 & 0x3F | 0x80;
          __to += 2;
        }
      }

      else
      {
        if (v12 < 1)
        {
          goto LABEL_3;
        }

        *__to++ = v10;
      }

      if (++__frm >= __frm_end)
      {
        goto LABEL_20;
      }
    }

    result = error;
  }

LABEL_21:
  *__frm_nxt = __frm;
  *__to_nxt = __to;
  return result;
}

std::codecvt_base::result std::__codecvt_utf8<char16_t>::do_in(const std::__codecvt_utf8<char16_t> *this, std::__codecvt_utf8<char16_t>::state_type *__st, const std::__codecvt_utf8<char16_t>::extern_type *__frm, const std::__codecvt_utf8<char16_t>::extern_type *__frm_end, const std::__codecvt_utf8<char16_t>::extern_type **__frm_nxt, std::__codecvt_utf8<char16_t>::intern_type *__to, std::__codecvt_utf8<char16_t>::intern_type *__to_end, std::__codecvt_utf8<char16_t>::intern_type **__to_nxt)
{
  v8 = __frm_end - __frm < 3 || (this->__mode_ & 4) == 0;
  if (!v8 && *__frm == 239 && *(__frm + 1) == 187)
  {
    v9 = 3;
    if (*(__frm + 2) != 191)
    {
      v9 = 0;
    }

    __frm += v9;
  }

  if (__frm < __frm_end)
  {
    maxcode = this->__maxcode_;
    while (1)
    {
      v11 = __to;
      if (__to >= __to_end)
      {
LABEL_39:
        result = v11 >= __to_end;
        goto LABEL_41;
      }

      v12 = *__frm;
      if ((*__frm & 0x80000000) == 0)
      {
        if (maxcode < *__frm)
        {
          goto LABEL_38;
        }

        v13 = 1;
        goto LABEL_35;
      }

      if (v12 < 0xC2)
      {
        goto LABEL_38;
      }

      if (v12 <= 0xDF)
      {
        if (__frm_end - __frm < 2)
        {
          goto LABEL_40;
        }

        v14 = __frm[1];
        if ((v14 & 0xC0) != 0x80)
        {
          goto LABEL_38;
        }

        v15 = v14 & 0x3F | ((v12 & 0x1F) << 6);
        if (maxcode < v15)
        {
          goto LABEL_38;
        }

        LOWORD(v12) = v15;
        v13 = 2;
        goto LABEL_35;
      }

      if (v12 > 0xEF)
      {
        goto LABEL_38;
      }

      if (__frm_end - __frm < 2)
      {
LABEL_40:
        result = partial;
        goto LABEL_41;
      }

      v16 = __frm[1];
      if (v12 == 237)
      {
        break;
      }

      if (v12 != 224)
      {
        v17 = v16 & 0xC0;
LABEL_30:
        if (v17 != 128)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }

      if ((v16 & 0xE0) != 0xA0)
      {
        goto LABEL_38;
      }

LABEL_31:
      if (__frm_end - __frm == 2)
      {
        goto LABEL_40;
      }

      v18 = __frm[2];
      if ((v18 & 0xC0) != 0x80 || (LOWORD(v12) = (v12 << 12) | ((v16 & 0x3F) << 6) | v18 & 0x3F, maxcode < v12))
      {
LABEL_38:
        result = error;
        goto LABEL_41;
      }

      v13 = 3;
LABEL_35:
      *__to++ = v12;
      __frm += v13;
      if (__frm >= __frm_end)
      {
        goto LABEL_39;
      }
    }

    v17 = v16 & 0xE0;
    goto LABEL_30;
  }

  result = ok;
LABEL_41:
  *__frm_nxt = __frm;
  *__to_nxt = __to;
  return result;
}

int std::__codecvt_utf8<char16_t>::do_length(const std::__codecvt_utf8<char16_t> *this, std::__codecvt_utf8<char16_t>::state_type *a2, const std::__codecvt_utf8<char16_t>::extern_type *__frm, const std::__codecvt_utf8<char16_t>::extern_type *__end, size_t __mx)
{
  v5 = __end - __frm < 3 || (this->__mode_ & 4) == 0;
  v6 = __frm;
  if (!v5)
  {
    v6 = __frm;
    if (*__frm == 239)
    {
      v6 = __frm;
      if (*(__frm + 1) == 187)
      {
        v7 = 3;
        if (*(__frm + 2) != 191)
        {
          v7 = 0;
        }

        v6 = &__frm[v7];
      }
    }
  }

  if (__mx && v6 < __end)
  {
    maxcode = this->__maxcode_;
    v9 = 1;
    while (1)
    {
      if ((*v6 & 0x80000000) == 0)
      {
        if (maxcode < *v6)
        {
          return v6 - __frm;
        }

        v10 = 1;
        goto LABEL_34;
      }

      v11 = *v6;
      if (v11 < 0xC2)
      {
        return v6 - __frm;
      }

      if (v11 <= 0xDF)
      {
        if (__end - v6 < 2)
        {
          return v6 - __frm;
        }

        v12 = v6[1];
        if ((v12 & 0xC0) != 0x80 || maxcode < (v12 & 0x3F | ((v11 & 0x1F) << 6)))
        {
          return v6 - __frm;
        }

        v10 = 2;
        goto LABEL_34;
      }

      if (v11 > 0xEF || __end - v6 < 3)
      {
        return v6 - __frm;
      }

      v13 = v6[1];
      v14 = v6[2];
      if (v11 == 237)
      {
        break;
      }

      if (v11 != 224)
      {
        v15 = v13 & 0xC0;
LABEL_30:
        if (v15 != 128)
        {
          return v6 - __frm;
        }

        goto LABEL_31;
      }

      if ((v13 & 0xE0) != 0xA0)
      {
        return v6 - __frm;
      }

LABEL_31:
      if ((v14 & 0xC0) != 0x80 || maxcode < (((v11 & 0xF) << 12) | ((v13 & 0x3F) << 6) | v14 & 0x3F))
      {
        return v6 - __frm;
      }

      v10 = 3;
LABEL_34:
      v6 += v10;
      if (v6 < __end && v9++ < __mx)
      {
        continue;
      }

      return v6 - __frm;
    }

    v15 = v13 & 0xE0;
    goto LABEL_30;
  }

  return v6 - __frm;
}

int std::__codecvt_utf8<char16_t>::do_max_length(const std::__codecvt_utf8<char16_t> *this)
{
  if ((this->__mode_ & 4) != 0)
  {
    return 6;
  }

  else
  {
    return 3;
  }
}

std::codecvt_base::result std::__codecvt_utf8<char32_t>::do_out(const std::__codecvt_utf8<char32_t> *this, std::__codecvt_utf8<char32_t>::state_type *__st, const std::__codecvt_utf8<char32_t>::intern_type *__frm, const std::__codecvt_utf8<char32_t>::intern_type *__frm_end, const std::__codecvt_utf8<char32_t>::intern_type **__frm_nxt, std::__codecvt_utf8<char32_t>::extern_type *__to, std::__codecvt_utf8<char32_t>::extern_type *__to_end, std::__codecvt_utf8<char32_t>::extern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::ucs4_to_utf8(__frm, __frm_end, v13, __to, __to_end, v12, this->__maxcode_, this->__mode_, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

std::codecvt_base::result std::__codecvt_utf8<char32_t>::do_in(const std::__codecvt_utf8<char32_t> *this, std::__codecvt_utf8<char32_t>::state_type *__st, const std::__codecvt_utf8<char32_t>::extern_type *__frm, const std::__codecvt_utf8<char32_t>::extern_type *__frm_end, const std::__codecvt_utf8<char32_t>::extern_type **__frm_nxt, std::__codecvt_utf8<char32_t>::intern_type *__to, std::__codecvt_utf8<char32_t>::intern_type *__to_end, std::__codecvt_utf8<char32_t>::intern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::utf8_to_ucs4(__frm, __frm_end, v13, __to, __to_end, v12, this->__maxcode_, this->__mode_, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

int std::__codecvt_utf8<char32_t>::do_max_length(const std::__codecvt_utf8<char32_t> *this)
{
  if ((this->__mode_ & 4) != 0)
  {
    return 7;
  }

  else
  {
    return 4;
  }
}

std::codecvt_base::result std::__codecvt_utf16<wchar_t,false>::do_out(const std::__codecvt_utf16<wchar_t, false> *this, std::__codecvt_utf16<wchar_t, false>::state_type *__st, const std::__codecvt_utf16<wchar_t, false>::intern_type *__frm, const std::__codecvt_utf16<wchar_t, false>::intern_type *__frm_end, const std::__codecvt_utf16<wchar_t, false>::intern_type **__frm_nxt, std::__codecvt_utf16<wchar_t, false>::extern_type *__to, std::__codecvt_utf16<wchar_t, false>::extern_type *__to_end, std::__codecvt_utf16<wchar_t, false>::extern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::ucs4_to_utf16be(__frm, __frm_end, v13, __to, __to_end, v12, this->__maxcode_, this->__mode_, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

uint64_t std::ucs4_to_utf16be(std::__1 *this, const unsigned int *a2, unsigned int *a3, const unsigned int **a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 **a7, char a8, std::codecvt_mode a9)
{
  *a3 = this;
  *a6 = a4;
  if ((a8 & 2) != 0)
  {
    if (a5 - a4 < 2)
    {
      return 1;
    }

    *a6 = a4 + 1;
    *a4 = -2;
    v10 = (*a6)++;
    *v10 = -1;
  }

  v11 = *a3;
  if (*a3 >= a2)
  {
    return 0;
  }

  while (1)
  {
    v12 = *v11;
    if (v12 >> 11 == 27 || v12 > a7)
    {
      break;
    }

    v14 = *a6;
    v15 = &a5[-*a6];
    if (WORD1(v12))
    {
      if (v15 < 4)
      {
        return 1;
      }

      *a6 = v14 + 1;
      *v14 = ((((v12 >> 10) & 0x7C0) + 16320) >> 8) | 0xD8;
      v16 = (*a6)++;
      *v16 = (((v12 >> 10) & 0xC0) - 64) & 0xC0 | (v12 >> 10);
      v17 = (*a6)++;
      *v17 = BYTE1(v12) & 3 | 0xDC;
    }

    else
    {
      if (v15 < 2)
      {
        return 1;
      }

      *a6 = v14 + 1;
      *v14 = BYTE1(v12);
    }

    v18 = (*a6)++;
    *v18 = v12;
    v11 = (*a3 + 4);
    *a3 = v11;
    if (v11 >= a2)
    {
      return 0;
    }
  }

  return 2;
}

std::codecvt_base::result std::__codecvt_utf16<wchar_t,false>::do_in(const std::__codecvt_utf16<wchar_t, false> *this, std::__codecvt_utf16<wchar_t, false>::state_type *__st, const std::__codecvt_utf16<wchar_t, false>::extern_type *__frm, const std::__codecvt_utf16<wchar_t, false>::extern_type *__frm_end, const std::__codecvt_utf16<wchar_t, false>::extern_type **__frm_nxt, std::__codecvt_utf16<wchar_t, false>::intern_type *__to, std::__codecvt_utf16<wchar_t, false>::intern_type *__to_end, std::__codecvt_utf16<wchar_t, false>::intern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::utf16be_to_ucs4(__frm, __frm_end, v13, __to, __to_end, v12, this->__maxcode_, this->__mode_, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

uint64_t std::utf16be_to_ucs4(std::__1 *this, unsigned __int8 *a2, unsigned __int8 *a3, const unsigned __int8 **a4, unsigned int *a5, unsigned int *a6, unsigned int **a7, char a8, std::codecvt_mode a9)
{
  *a3 = this;
  *a6 = a4;
  v9 = *a3;
  if ((a8 & 4) != 0 && a2 - v9 >= 2 && *v9 == 254 && v9[1] == 255)
  {
    v9 += 2;
    *a3 = v9;
  }

  if (v9 < a2 - 1)
  {
    v10 = *a6;
    while (v10 < a5)
    {
      v11 = v9[1] | (*v9 << 8);
      v12 = (*v9 << 8) & 0xFC00;
      if (v12 == 55296)
      {
        if (a2 - v9 < 4)
        {
          return 1;
        }

        v14 = v9[2];
        if ((v14 & 0xFC) != 0xDC)
        {
          return 2;
        }

        v11 = (v9[3] | ((v14 & 3) << 8) & 0x3FF | ((v9[1] | (*v9 << 8) & 0x3FFu) << 10)) + 0x10000;
        if (v11 > a7)
        {
          return 2;
        }

        result = 4;
      }

      else
      {
        if (v12 == 56320)
        {
          return 2;
        }

        result = 2;
        if (v11 > a7)
        {
          return result;
        }
      }

      *v10 = v11;
      *a3 = &v9[result];
      v10 = (*a6 + 4);
      *a6 = v10;
      v9 = *a3;
      if (*a3 >= (a2 - 1))
      {
        return v9 < a2;
      }
    }
  }

  return v9 < a2;
}

uint64_t std::utf16be_to_ucs4_length(std::__1 *this, const unsigned __int8 *a2, const unsigned __int8 *a3, unint64_t a4, char a5, std::codecvt_mode a6)
{
  v6 = a2 - this < 2 || (a5 & 4) == 0;
  v7 = this;
  if (!v6)
  {
    v7 = this;
    if (*this == 254)
    {
      v7 = this + 2 * (*(this + 1) == 255);
    }
  }

  if (v7 < a2 - 1 && a3)
  {
    v8 = 1;
    while (1)
    {
      v9 = (*v7 << 8) & 0xFC00;
      if (v9 == 55296)
      {
        if (a2 - v7 < 4)
        {
          return (v7 - this);
        }

        v11 = v7[2];
        if ((v11 & 0xFC) != 0xDC || (v7[3] | ((v11 & 3) << 8) & 0x3FF | ((v7[1] | (*v7 << 8) & 0x3FFu) << 10)) + 0x10000 > a4)
        {
          return (v7 - this);
        }

        v7 += 4;
      }

      else
      {
        if (v9 == 56320 || (v7[1] | (*v7 << 8)) > a4)
        {
          return (v7 - this);
        }

        v7 += 2;
      }

      if (v7 < a2 - 1 && v8++ < a3)
      {
        continue;
      }

      return (v7 - this);
    }
  }

  return (v7 - this);
}

int std::__codecvt_utf16<wchar_t,false>::do_max_length(const std::__codecvt_utf16<wchar_t, false> *this)
{
  if ((this->__mode_ & 4) != 0)
  {
    return 6;
  }

  else
  {
    return 4;
  }
}

std::codecvt_base::result std::__codecvt_utf16<wchar_t,true>::do_out(const std::__codecvt_utf16<wchar_t, true> *this, std::__codecvt_utf16<wchar_t, true>::state_type *__st, const std::__codecvt_utf16<wchar_t, true>::intern_type *__frm, const std::__codecvt_utf16<wchar_t, true>::intern_type *__frm_end, const std::__codecvt_utf16<wchar_t, true>::intern_type **__frm_nxt, std::__codecvt_utf16<wchar_t, true>::extern_type *__to, std::__codecvt_utf16<wchar_t, true>::extern_type *__to_end, std::__codecvt_utf16<wchar_t, true>::extern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::ucs4_to_utf16le(__frm, __frm_end, v13, __to, __to_end, v12, this->__maxcode_, this->__mode_, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

uint64_t std::ucs4_to_utf16le(std::__1 *this, const unsigned int *a2, unsigned int *a3, const unsigned int **a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 **a7, char a8, std::codecvt_mode a9)
{
  *a3 = this;
  *a6 = a4;
  if ((a8 & 2) != 0)
  {
    if (a5 - a4 < 2)
    {
      return 1;
    }

    *a6 = a4 + 1;
    *a4 = -1;
    v10 = (*a6)++;
    *v10 = -2;
  }

  v11 = *a3;
  if (*a3 >= a2)
  {
    return 0;
  }

  while (1)
  {
    v12 = *v11;
    if (v12 >> 11 == 27 || v12 > a7)
    {
      break;
    }

    v14 = *a6;
    v15 = &a5[-*a6];
    if (WORD1(v12))
    {
      if (v15 < 4)
      {
        return 1;
      }

      *a6 = v14 + 1;
      *v14 = (((v12 >> 10) & 0xC0) - 64) & 0xC0 | (v12 >> 10);
      v17 = (*a6)++;
      *v17 = ((((v12 >> 10) & 0x7C0) + 16320) >> 8) | 0xD8;
      v18 = (*a6)++;
      *v18 = v12;
      v16 = (v12 >> 8) & 3 | 0xFFFFFFDC;
    }

    else
    {
      if (v15 < 2)
      {
        return 1;
      }

      *a6 = v14 + 1;
      *v14 = v12;
      v16 = v12 >> 8;
    }

    v19 = (*a6)++;
    *v19 = v16;
    v11 = (*a3 + 4);
    *a3 = v11;
    if (v11 >= a2)
    {
      return 0;
    }
  }

  return 2;
}

std::codecvt_base::result std::__codecvt_utf16<wchar_t,true>::do_in(const std::__codecvt_utf16<wchar_t, true> *this, std::__codecvt_utf16<wchar_t, true>::state_type *__st, const std::__codecvt_utf16<wchar_t, true>::extern_type *__frm, const std::__codecvt_utf16<wchar_t, true>::extern_type *__frm_end, const std::__codecvt_utf16<wchar_t, true>::extern_type **__frm_nxt, std::__codecvt_utf16<wchar_t, true>::intern_type *__to, std::__codecvt_utf16<wchar_t, true>::intern_type *__to_end, std::__codecvt_utf16<wchar_t, true>::intern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::utf16le_to_ucs4(__frm, __frm_end, v13, __to, __to_end, v12, this->__maxcode_, this->__mode_, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

uint64_t std::utf16le_to_ucs4(std::__1 *this, unsigned __int8 *a2, unsigned __int8 *a3, const unsigned __int8 **a4, unsigned int *a5, unsigned int *a6, unsigned int **a7, char a8, std::codecvt_mode a9)
{
  *a3 = this;
  *a6 = a4;
  v9 = *a3;
  if ((a8 & 4) != 0 && a2 - v9 >= 2 && *v9 == 255 && v9[1] == 254)
  {
    v9 += 2;
    *a3 = v9;
  }

  if (v9 < a2 - 1)
  {
    v10 = *a6;
    while (v10 < a5)
    {
      v11 = *v9 | (v9[1] << 8);
      v12 = (v9[1] << 8) & 0xFC00;
      if (v12 == 55296)
      {
        if (a2 - v9 < 4)
        {
          return 1;
        }

        v14 = v9[3];
        if ((v14 & 0xFC) != 0xDC)
        {
          return 2;
        }

        v11 = (v9[2] | ((v14 & 3) << 8) & 0x3FF | ((*v9 | (v9[1] << 8) & 0x3FFu) << 10)) + 0x10000;
        if (v11 > a7)
        {
          return 2;
        }

        result = 4;
      }

      else
      {
        if (v12 == 56320)
        {
          return 2;
        }

        result = 2;
        if (v11 > a7)
        {
          return result;
        }
      }

      *v10 = v11;
      *a3 = &v9[result];
      v10 = (*a6 + 4);
      *a6 = v10;
      v9 = *a3;
      if (*a3 >= (a2 - 1))
      {
        return v9 < a2;
      }
    }
  }

  return v9 < a2;
}

uint64_t std::utf16le_to_ucs4_length(std::__1 *this, const unsigned __int8 *a2, const unsigned __int8 *a3, unint64_t a4, char a5, std::codecvt_mode a6)
{
  v6 = a2 - this < 2 || (a5 & 4) == 0;
  v7 = this;
  if (!v6)
  {
    v7 = this;
    if (*this == 255)
    {
      v7 = this + 2 * (*(this + 1) == 254);
    }
  }

  if (v7 < a2 - 1 && a3)
  {
    v8 = 1;
    while (1)
    {
      v9 = (v7[1] << 8) & 0xFC00;
      if (v9 == 55296)
      {
        if (a2 - v7 < 4)
        {
          return (v7 - this);
        }

        v11 = v7[3];
        if ((v11 & 0xFC) != 0xDC || (v7[2] | ((v11 & 3) << 8) & 0x3FF | ((*v7 | (v7[1] << 8) & 0x3FFu) << 10)) + 0x10000 > a4)
        {
          return (v7 - this);
        }

        v7 += 4;
      }

      else
      {
        if (v9 == 56320 || (*v7 | (v7[1] << 8)) > a4)
        {
          return (v7 - this);
        }

        v7 += 2;
      }

      if (v7 < a2 - 1 && v8++ < a3)
      {
        continue;
      }

      return (v7 - this);
    }
  }

  return (v7 - this);
}

int std::__codecvt_utf16<wchar_t,true>::do_max_length(const std::__codecvt_utf16<wchar_t, true> *this)
{
  if ((this->__mode_ & 4) != 0)
  {
    return 6;
  }

  else
  {
    return 4;
  }
}

std::codecvt_base::result std::__codecvt_utf16<char16_t,false>::do_out(const std::__codecvt_utf16<char16_t, false> *this, std::__codecvt_utf16<char16_t, false>::state_type *__st, const std::__codecvt_utf16<char16_t, false>::intern_type *__frm, const std::__codecvt_utf16<char16_t, false>::intern_type *__frm_end, const std::__codecvt_utf16<char16_t, false>::intern_type **__frm_nxt, std::__codecvt_utf16<char16_t, false>::extern_type *__to, std::__codecvt_utf16<char16_t, false>::extern_type *__to_end, std::__codecvt_utf16<char16_t, false>::extern_type **__to_nxt)
{
  maxcode = this->__maxcode_;
  if ((this->__mode_ & 2) != 0)
  {
    if (__to_end - __to < 2)
    {
LABEL_3:
      result = partial;
      goto LABEL_16;
    }

    *__to = -2;
    __to += 2;
  }

  if (__frm >= __frm_end)
  {
    result = ok;
  }

  else
  {
    v10 = __to_end - __to;
    do
    {
      v11 = *__frm;
      if ((v11 & 0xF800) == 0xD800 || maxcode < v11)
      {
        result = error;
        goto LABEL_16;
      }

      v13 = v10 < 2;
      v10 -= 2;
      if (v13)
      {
        goto LABEL_3;
      }

      *__to = BYTE1(v11);
      v14 = __to + 2;
      __to[1] = v11;
      ++__frm;
      __to += 2;
    }

    while (__frm < __frm_end);
    result = ok;
    __to = v14;
  }

LABEL_16:
  *__frm_nxt = __frm;
  *__to_nxt = __to;
  return result;
}

std::codecvt_base::result std::__codecvt_utf16<char16_t,false>::do_in(const std::__codecvt_utf16<char16_t, false> *this, std::__codecvt_utf16<char16_t, false>::state_type *__st, const std::__codecvt_utf16<char16_t, false>::extern_type *__frm, const std::__codecvt_utf16<char16_t, false>::extern_type *__frm_end, const std::__codecvt_utf16<char16_t, false>::extern_type **__frm_nxt, std::__codecvt_utf16<char16_t, false>::intern_type *__to, std::__codecvt_utf16<char16_t, false>::intern_type *__to_end, std::__codecvt_utf16<char16_t, false>::intern_type **__to_nxt)
{
  v8 = __frm_end - __frm < 2 || (this->__mode_ & 4) == 0;
  if (!v8 && *__frm == 254)
  {
    __frm += 2 * (*(__frm + 1) == 255);
  }

  if (__frm < __frm_end - 1)
  {
    maxcode = this->__maxcode_;
    while (__to < __to_end)
    {
      v10 = *__frm;
      if ((v10 & 0xF8) == 0xD8 || maxcode < (*(__frm + 1) | (v10 << 8)))
      {
        result = error;
        goto LABEL_17;
      }

      *__to++ = _byteswap_ushort(*__frm);
      __frm += 2;
      if (__frm >= __frm_end - 1)
      {
        break;
      }
    }
  }

  result = __frm < __frm_end;
LABEL_17:
  *__frm_nxt = __frm;
  *__to_nxt = __to;
  return result;
}

int std::__codecvt_utf16<char16_t,false>::do_length(const std::__codecvt_utf16<char16_t, false> *this, std::__codecvt_utf16<char16_t, false>::state_type *a2, const std::__codecvt_utf16<char16_t, false>::extern_type *__frm, const std::__codecvt_utf16<char16_t, false>::extern_type *__end, size_t __mx)
{
  v5 = __end - __frm < 2 || (this->__mode_ & 4) == 0;
  v6 = __frm;
  if (!v5)
  {
    v6 = __frm;
    if (*__frm == 254)
    {
      v6 = &__frm[2 * (*(__frm + 1) == 255)];
    }
  }

  if (__mx && v6 < __end - 1)
  {
    v7 = 1;
    do
    {
      v8 = *v6;
      if ((v8 & 0xF8) == 0xD8)
      {
        break;
      }

      v9 = this->__maxcode_ >= (*(v6 + 1) | (v8 << 8));
      v6 += 2 * v9;
      v9 = !v9 || v6 >= __end - 1;
    }

    while (!v9 && v7++ < __mx);
  }

  return v6 - __frm;
}

int std::__codecvt_utf16<char16_t,false>::do_max_length(const std::__codecvt_utf16<char16_t, false> *this)
{
  if ((this->__mode_ & 4) != 0)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

std::codecvt_base::result std::__codecvt_utf16<char16_t,true>::do_out(const std::__codecvt_utf16<char16_t, true> *this, std::__codecvt_utf16<char16_t, true>::state_type *__st, const std::__codecvt_utf16<char16_t, true>::intern_type *__frm, const std::__codecvt_utf16<char16_t, true>::intern_type *__frm_end, const std::__codecvt_utf16<char16_t, true>::intern_type **__frm_nxt, std::__codecvt_utf16<char16_t, true>::extern_type *__to, std::__codecvt_utf16<char16_t, true>::extern_type *__to_end, std::__codecvt_utf16<char16_t, true>::extern_type **__to_nxt)
{
  maxcode = this->__maxcode_;
  if ((this->__mode_ & 2) != 0)
  {
    if (__to_end - __to < 2)
    {
LABEL_3:
      result = partial;
      goto LABEL_16;
    }

    *__to = -257;
    __to += 2;
  }

  if (__frm >= __frm_end)
  {
    result = ok;
  }

  else
  {
    v10 = __to_end - __to;
    do
    {
      v11 = *__frm;
      if ((v11 & 0xF800) == 0xD800 || maxcode < v11)
      {
        result = error;
        goto LABEL_16;
      }

      v13 = v10 < 2;
      v10 -= 2;
      if (v13)
      {
        goto LABEL_3;
      }

      *__to = v11;
      v14 = v11 >> 8;
      v15 = __to + 2;
      __to[1] = v14;
      ++__frm;
      __to += 2;
    }

    while (__frm < __frm_end);
    result = ok;
    __to = v15;
  }

LABEL_16:
  *__frm_nxt = __frm;
  *__to_nxt = __to;
  return result;
}

std::codecvt_base::result std::__codecvt_utf16<char16_t,true>::do_in(const std::__codecvt_utf16<char16_t, true> *this, std::__codecvt_utf16<char16_t, true>::state_type *__st, const std::__codecvt_utf16<char16_t, true>::extern_type *__frm, const std::__codecvt_utf16<char16_t, true>::extern_type *__frm_end, const std::__codecvt_utf16<char16_t, true>::extern_type **__frm_nxt, std::__codecvt_utf16<char16_t, true>::intern_type *__to, std::__codecvt_utf16<char16_t, true>::intern_type *__to_end, std::__codecvt_utf16<char16_t, true>::intern_type **__to_nxt)
{
  v8 = __frm_end - __frm < 2 || (this->__mode_ & 4) == 0;
  if (!v8 && *__frm == 255)
  {
    __frm += 2 * (*(__frm + 1) == 254);
  }

  if (__frm < __frm_end - 1)
  {
    maxcode = this->__maxcode_;
    while (__to < __to_end)
    {
      v10 = *(__frm + 1);
      if ((v10 & 0xF8) == 0xD8 || maxcode < (*__frm | (v10 << 8)))
      {
        result = error;
        goto LABEL_17;
      }

      *__to++ = *__frm | (v10 << 8);
      __frm += 2;
      if (__frm >= __frm_end - 1)
      {
        break;
      }
    }
  }

  result = __frm < __frm_end;
LABEL_17:
  *__frm_nxt = __frm;
  *__to_nxt = __to;
  return result;
}

int std::__codecvt_utf16<char16_t,true>::do_length(const std::__codecvt_utf16<char16_t, true> *this, std::__codecvt_utf16<char16_t, true>::state_type *a2, const std::__codecvt_utf16<char16_t, true>::extern_type *__frm, const std::__codecvt_utf16<char16_t, true>::extern_type *__end, size_t __mx)
{
  v5 = __end - __frm < 2 || (this->__mode_ & 4) == 0;
  v6 = __frm;
  if (!v5)
  {
    v6 = __frm;
    if (*__frm == 255)
    {
      v6 = &__frm[2 * (*(__frm + 1) == 254)];
    }
  }

  if (__mx && v6 < __end - 1)
  {
    v7 = 1;
    do
    {
      v8 = *(v6 + 1);
      if ((v8 & 0xF8) == 0xD8)
      {
        break;
      }

      v9 = this->__maxcode_ >= (*v6 | (v8 << 8));
      v6 += 2 * v9;
      v9 = !v9 || v6 >= __end - 1;
    }

    while (!v9 && v7++ < __mx);
  }

  return v6 - __frm;
}

int std::__codecvt_utf16<char16_t,true>::do_max_length(const std::__codecvt_utf16<char16_t, true> *this)
{
  if ((this->__mode_ & 4) != 0)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

std::codecvt_base::result std::__codecvt_utf16<char32_t,false>::do_out(const std::__codecvt_utf16<char32_t, false> *this, std::__codecvt_utf16<char32_t, false>::state_type *__st, const std::__codecvt_utf16<char32_t, false>::intern_type *__frm, const std::__codecvt_utf16<char32_t, false>::intern_type *__frm_end, const std::__codecvt_utf16<char32_t, false>::intern_type **__frm_nxt, std::__codecvt_utf16<char32_t, false>::extern_type *__to, std::__codecvt_utf16<char32_t, false>::extern_type *__to_end, std::__codecvt_utf16<char32_t, false>::extern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::ucs4_to_utf16be(__frm, __frm_end, v13, __to, __to_end, v12, this->__maxcode_, this->__mode_, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

std::codecvt_base::result std::__codecvt_utf16<char32_t,false>::do_in(const std::__codecvt_utf16<char32_t, false> *this, std::__codecvt_utf16<char32_t, false>::state_type *__st, const std::__codecvt_utf16<char32_t, false>::extern_type *__frm, const std::__codecvt_utf16<char32_t, false>::extern_type *__frm_end, const std::__codecvt_utf16<char32_t, false>::extern_type **__frm_nxt, std::__codecvt_utf16<char32_t, false>::intern_type *__to, std::__codecvt_utf16<char32_t, false>::intern_type *__to_end, std::__codecvt_utf16<char32_t, false>::intern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::utf16be_to_ucs4(__frm, __frm_end, v13, __to, __to_end, v12, this->__maxcode_, this->__mode_, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

int std::__codecvt_utf16<char32_t,false>::do_max_length(const std::__codecvt_utf16<char32_t, false> *this)
{
  if ((this->__mode_ & 4) != 0)
  {
    return 6;
  }

  else
  {
    return 4;
  }
}

std::codecvt_base::result std::__codecvt_utf16<char32_t,true>::do_out(const std::__codecvt_utf16<char32_t, true> *this, std::__codecvt_utf16<char32_t, true>::state_type *__st, const std::__codecvt_utf16<char32_t, true>::intern_type *__frm, const std::__codecvt_utf16<char32_t, true>::intern_type *__frm_end, const std::__codecvt_utf16<char32_t, true>::intern_type **__frm_nxt, std::__codecvt_utf16<char32_t, true>::extern_type *__to, std::__codecvt_utf16<char32_t, true>::extern_type *__to_end, std::__codecvt_utf16<char32_t, true>::extern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::ucs4_to_utf16le(__frm, __frm_end, v13, __to, __to_end, v12, this->__maxcode_, this->__mode_, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

std::codecvt_base::result std::__codecvt_utf16<char32_t,true>::do_in(const std::__codecvt_utf16<char32_t, true> *this, std::__codecvt_utf16<char32_t, true>::state_type *__st, const std::__codecvt_utf16<char32_t, true>::extern_type *__frm, const std::__codecvt_utf16<char32_t, true>::extern_type *__frm_end, const std::__codecvt_utf16<char32_t, true>::extern_type **__frm_nxt, std::__codecvt_utf16<char32_t, true>::intern_type *__to, std::__codecvt_utf16<char32_t, true>::intern_type *__to_end, std::__codecvt_utf16<char32_t, true>::intern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::utf16le_to_ucs4(__frm, __frm_end, v13, __to, __to_end, v12, this->__maxcode_, this->__mode_, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

int std::__codecvt_utf16<char32_t,true>::do_max_length(const std::__codecvt_utf16<char32_t, true> *this)
{
  if ((this->__mode_ & 4) != 0)
  {
    return 6;
  }

  else
  {
    return 4;
  }
}

std::codecvt_base::result std::__codecvt_utf8_utf16<wchar_t>::do_out(const std::__codecvt_utf8_utf16<wchar_t> *this, std::__codecvt_utf8_utf16<wchar_t>::state_type *__st, const std::__codecvt_utf8_utf16<wchar_t>::intern_type *__frm, const std::__codecvt_utf8_utf16<wchar_t>::intern_type *__frm_end, const std::__codecvt_utf8_utf16<wchar_t>::intern_type **__frm_nxt, std::__codecvt_utf8_utf16<wchar_t>::extern_type *__to, std::__codecvt_utf8_utf16<wchar_t>::extern_type *__to_end, std::__codecvt_utf8_utf16<wchar_t>::extern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::utf16_to_utf8(__frm, __frm_end, v13, __to, __to_end, v12, this->__maxcode_, this->__mode_, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

uint64_t std::utf16_to_utf8(std::__1 *this, char *a2, unsigned int *a3, const unsigned int **a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 **a7, char a8, std::codecvt_mode a9)
{
  *a3 = this;
  *a6 = a4;
  if ((a8 & 2) != 0)
  {
    if (a5 - a4 < 3)
    {
      return 1;
    }

    *a6 = a4 + 1;
    *a4 = -17;
    v10 = (*a6)++;
    *v10 = -69;
    v11 = (*a6)++;
    *v11 = -65;
  }

  v12 = *a3;
  if (*a3 >= a2)
  {
    return 0;
  }

  while (1)
  {
    v13 = *v12;
    v14 = *v12;
    if (v14 > a7)
    {
      return 2;
    }

    if (v14 <= 0x7F)
    {
      v15 = *a6;
      if (&a5[-*a6] < 1)
      {
        return 1;
      }

      *a6 = v15 + 1;
      *v15 = v13;
      goto LABEL_24;
    }

    if (v14 <= 0x7FF)
    {
      v16 = *a6;
      if (&a5[-*a6] < 2)
      {
        return 1;
      }

      *a6 = v16 + 1;
      *v16 = (v13 >> 6) | 0xC0;
      goto LABEL_23;
    }

    if (v14 >> 11 <= 0x1A)
    {
      goto LABEL_21;
    }

    if (v14 >> 10 > 0x36)
    {
      if (v14 < 0xE000)
      {
        return 2;
      }

LABEL_21:
      v25 = *a6;
      if (&a5[-*a6] < 3)
      {
        return 1;
      }

      *a6 = v25 + 1;
      *v25 = (v14 >> 12) | 0xE0;
      v26 = (*a6)++;
      *v26 = (v13 >> 6) & 0x3F | 0x80;
LABEL_23:
      v27 = v13 & 0x3F | 0x80;
      v28 = (*a6)++;
      *v28 = v27;
      goto LABEL_24;
    }

    if (a2 - v12 < 5)
    {
      return 1;
    }

    v19 = *(v12 + 1);
    v17 = v12 + 4;
    v18 = v19;
    if ((v19 & 0xFC00) != 0xDC00)
    {
      return 2;
    }

    if (&a5[-*a6] < 4)
    {
      return 1;
    }

    if ((v18 & 0x3FF | ((v14 & 0x3FF) << 10)) + 0x10000 > a7)
    {
      return 2;
    }

    *a3 = v17;
    v20 = ((v13 >> 6) & 0xF) + 1;
    v21 = (*a6)++;
    *v21 = (v20 >> 2) | 0xF0;
    v22 = (*a6)++;
    *v22 = (v13 >> 2) & 0xF | (16 * (v20 & 3)) | 0x80;
    v23 = (*a6)++;
    *v23 = (16 * (v13 & 3)) | (v18 >> 6) & 0xF | 0x80;
    v24 = (*a6)++;
    *v24 = v18 & 0x3F | 0x80;
LABEL_24:
    v12 = (*a3 + 4);
    *a3 = v12;
    if (v12 >= a2)
    {
      return 0;
    }
  }
}

std::codecvt_base::result std::__codecvt_utf8_utf16<wchar_t>::do_in(const std::__codecvt_utf8_utf16<wchar_t> *this, std::__codecvt_utf8_utf16<wchar_t>::state_type *__st, const std::__codecvt_utf8_utf16<wchar_t>::extern_type *__frm, const std::__codecvt_utf8_utf16<wchar_t>::extern_type *__frm_end, const std::__codecvt_utf8_utf16<wchar_t>::extern_type **__frm_nxt, std::__codecvt_utf8_utf16<wchar_t>::intern_type *__to, std::__codecvt_utf8_utf16<wchar_t>::intern_type *__to_end, std::__codecvt_utf8_utf16<wchar_t>::intern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::utf8_to_utf16(__frm, __frm_end, v13, __to, __to_end, v12, this->__maxcode_, this->__mode_, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

uint64_t std::utf8_to_utf16(std::__1 *this, unsigned __int8 *a2, unsigned __int8 *a3, const unsigned __int8 **a4, char *a5, unsigned int *a6, unsigned int **a7, char a8, std::codecvt_mode a9)
{
  *a3 = this;
  *a6 = a4;
  v9 = *a3;
  if ((a8 & 4) != 0 && a2 - v9 >= 3 && *v9 == 239 && v9[1] == 187 && v9[2] == 191)
  {
    v9 += 3;
    *a3 = v9;
  }

  if (v9 >= a2)
  {
    return 0;
  }

  v10 = *a6;
  while (1)
  {
    v11 = v10;
    if (v10 >= a5)
    {
      return v11 >= a5;
    }

    v12 = *v9;
    if (v12 > a7)
    {
      return 2;
    }

    if ((v12 & 0x80) == 0)
    {
      *v11 = v12;
      v13 = (v9 + 1);
      goto LABEL_48;
    }

    if (v12 < 0xC2)
    {
      return 2;
    }

    if (v12 <= 0xDF)
    {
      if (a2 - v9 < 2)
      {
        return 1;
      }

      v14 = v9[1];
      if ((v14 & 0xC0) != 0x80)
      {
        return 2;
      }

      v15 = v14 & 0x3F | ((v12 & 0x1F) << 6);
      if (v15 > a7)
      {
        return 2;
      }

      *v11 = v15;
      v13 = (v9 + 2);
      goto LABEL_48;
    }

    if (v12 <= 0xEF)
    {
      if (a2 - v9 < 2)
      {
        return 1;
      }

      v16 = v9[1];
      if (v12 == 237)
      {
        v19 = v16 & 0xE0;
      }

      else
      {
        if (v12 == 224)
        {
          if ((v16 & 0xE0) != 0xA0)
          {
            return 2;
          }

LABEL_34:
          if (a2 - v9 == 2)
          {
            return 1;
          }

          v20 = v9[2];
          if ((v20 & 0xC0) != 0x80)
          {
            return 2;
          }

          v21 = ((v12 & 0xF) << 12) | ((v16 & 0x3F) << 6) | v20 & 0x3F;
          if (v21 > a7)
          {
            return 2;
          }

          *v11 = v21;
          v13 = (v9 + 3);
          goto LABEL_48;
        }

        v19 = v16 & 0xC0;
      }

      if (v19 != 128)
      {
        return 2;
      }

      goto LABEL_34;
    }

    if (v12 > 0xF4)
    {
      return 2;
    }

    v17 = (a2 - v9);
    if (a2 - v9 < 2)
    {
      return 1;
    }

    v18 = v9[1];
    if (v12 == 244)
    {
      v22 = v18 & 0xF0;
      goto LABEL_40;
    }

    if (v12 != 240)
    {
      v22 = v18 & 0xC0;
LABEL_40:
      if (v22 != 128)
      {
        return 2;
      }

      goto LABEL_41;
    }

    if (v18 - 144 >= 0x30)
    {
      return 2;
    }

LABEL_41:
    if (v17 == 2)
    {
      return 1;
    }

    v23 = v9[2];
    if ((v23 & 0xC0) != 0x80)
    {
      return 2;
    }

    if (v17 == 3)
    {
      return 1;
    }

    v24 = v9[3];
    if ((v24 & 0xC0) != 0x80)
    {
      return 2;
    }

    if (a5 - v11 < 5)
    {
      return 1;
    }

    if ((((v12 & 7) << 18) | ((v18 & 0x3F) << 12) | ((v23 & 0x3F) << 6) | v24 & 0x3F) > a7)
    {
      return 2;
    }

    *v11 = (((4 * (v18 & 0xF)) | (((4 * (v12 & 7)) | (v18 >> 4) & 3) << 6) | (v23 >> 4) & 3) - 64) | 0xD800;
    *(v11 + 1) = v24 & 0x3F | ((v23 & 0xF) << 6) | 0xDC00;
    *a6 = v11 + 4;
    v13 = *a3 + 4;
LABEL_48:
    *a3 = v13;
    v10 = *a6 + 4;
    *a6 = v10;
    v9 = *a3;
    if (*a3 >= a2)
    {
      return v11 >= a5;
    }
  }
}

int std::__codecvt_utf8_utf16<wchar_t>::do_max_length(const std::__codecvt_utf8_utf16<wchar_t> *this)
{
  if ((this->__mode_ & 4) != 0)
  {
    return 7;
  }

  else
  {
    return 4;
  }
}

std::codecvt_base::result std::__codecvt_utf8_utf16<char16_t>::do_out(const std::__codecvt_utf8_utf16<char16_t> *this, std::__codecvt_utf8_utf16<char16_t>::state_type *__st, const std::__codecvt_utf8_utf16<char16_t>::intern_type *__frm, const std::__codecvt_utf8_utf16<char16_t>::intern_type *__frm_end, const std::__codecvt_utf8_utf16<char16_t>::intern_type **__frm_nxt, std::__codecvt_utf8_utf16<char16_t>::extern_type *__to, std::__codecvt_utf8_utf16<char16_t>::extern_type *__to_end, std::__codecvt_utf8_utf16<char16_t>::extern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::utf16_to_utf8(__frm, __frm_end, v13, __to, __to_end, v12, this->__maxcode_, this->__mode_, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

std::codecvt_base::result std::__codecvt_utf8_utf16<char16_t>::do_in(const std::__codecvt_utf8_utf16<char16_t> *this, std::__codecvt_utf8_utf16<char16_t>::state_type *__st, const std::__codecvt_utf8_utf16<char16_t>::extern_type *__frm, const std::__codecvt_utf8_utf16<char16_t>::extern_type *__frm_end, const std::__codecvt_utf8_utf16<char16_t>::extern_type **__frm_nxt, std::__codecvt_utf8_utf16<char16_t>::intern_type *__to, std::__codecvt_utf8_utf16<char16_t>::intern_type *__to_end, std::__codecvt_utf8_utf16<char16_t>::intern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::utf8_to_utf16(__frm, __frm_end, v13, __to, __to_end, v12, this->__maxcode_, this->__mode_, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

int std::__codecvt_utf8_utf16<char16_t>::do_max_length(const std::__codecvt_utf8_utf16<char16_t> *this)
{
  if ((this->__mode_ & 4) != 0)
  {
    return 7;
  }

  else
  {
    return 4;
  }
}

std::codecvt_base::result std::__codecvt_utf8_utf16<char32_t>::do_out(const std::__codecvt_utf8_utf16<char32_t> *this, std::__codecvt_utf8_utf16<char32_t>::state_type *__st, const std::__codecvt_utf8_utf16<char32_t>::intern_type *__frm, const std::__codecvt_utf8_utf16<char32_t>::intern_type *__frm_end, const std::__codecvt_utf8_utf16<char32_t>::intern_type **__frm_nxt, std::__codecvt_utf8_utf16<char32_t>::extern_type *__to, std::__codecvt_utf8_utf16<char32_t>::extern_type *__to_end, std::__codecvt_utf8_utf16<char32_t>::extern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::utf16_to_utf8(__frm, __frm_end, v13, __to, __to_end, v12, this->__maxcode_, this->__mode_, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

std::codecvt_base::result std::__codecvt_utf8_utf16<char32_t>::do_in(const std::__codecvt_utf8_utf16<char32_t> *this, std::__codecvt_utf8_utf16<char32_t>::state_type *__st, const std::__codecvt_utf8_utf16<char32_t>::extern_type *__frm, const std::__codecvt_utf8_utf16<char32_t>::extern_type *__frm_end, const std::__codecvt_utf8_utf16<char32_t>::extern_type **__frm_nxt, std::__codecvt_utf8_utf16<char32_t>::intern_type *__to, std::__codecvt_utf8_utf16<char32_t>::intern_type *__to_end, std::__codecvt_utf8_utf16<char32_t>::intern_type **__to_nxt)
{
  *v13 = __frm;
  result = std::utf8_to_utf16(__frm, __frm_end, v13, __to, __to_end, v12, this->__maxcode_, this->__mode_, __to);
  v11 = *v12;
  *__frm_nxt = *v13;
  *__to_nxt = v11;
  return result;
}

int std::__codecvt_utf8_utf16<char32_t>::do_max_length(const std::__codecvt_utf8_utf16<char32_t> *this)
{
  if ((this->__mode_ & 4) != 0)
  {
    return 7;
  }

  else
  {
    return 4;
  }
}

void std::__narrow_to_utf8<16ul>::~__narrow_to_utf8(std::__narrow_to_utf8<16> *this)
{
  std::__shared_count::~__shared_count(this);

  JUMPOUT(0x193B0CA40);
}

void std::__narrow_to_utf8<32ul>::~__narrow_to_utf8(std::__narrow_to_utf8<32> *this)
{
  std::__shared_count::~__shared_count(this);

  JUMPOUT(0x193B0CA40);
}

void std::__widen_from_utf8<16ul>::~__widen_from_utf8(std::__widen_from_utf8<16> *this)
{
  std::__shared_count::~__shared_count(this);

  JUMPOUT(0x193B0CA40);
}

void std::__widen_from_utf8<32ul>::~__widen_from_utf8(std::__widen_from_utf8<32> *this)
{
  std::__shared_count::~__shared_count(this);

  JUMPOUT(0x193B0CA40);
}

std::numpunct<char> *__cdecl std::numpunct<char>::numpunct(std::numpunct<char> *this, size_t __refs)
{
  this->__shared_owners_ = __refs - 1;
  *&this->__decimal_point_ = 11310;
  *&this->__grouping_.__r_.__value_.__r.__words[1] = 0uLL;
  this->__grouping_.__r_.__value_.__r.__words[0] = 0;
  return this;
}

{
  this->__shared_owners_ = __refs - 1;
  *&this->__decimal_point_ = 11310;
  *&this->__grouping_.__r_.__value_.__r.__words[1] = 0uLL;
  this->__grouping_.__r_.__value_.__r.__words[0] = 0;
  return this;
}

std::numpunct<wchar_t> *__cdecl std::numpunct<wchar_t>::numpunct(std::numpunct<wchar_t> *this, size_t __refs)
{
  this->__shared_owners_ = __refs - 1;
  *&this->__decimal_point_ = 0x2C0000002ELL;
  *&this->__grouping_.__r_.__value_.__r.__words[1] = 0uLL;
  this->__grouping_.__r_.__value_.__r.__words[0] = 0;
  return this;
}

{
  this->__shared_owners_ = __refs - 1;
  *&this->__decimal_point_ = 0x2C0000002ELL;
  *&this->__grouping_.__r_.__value_.__r.__words[1] = 0uLL;
  this->__grouping_.__r_.__value_.__r.__words[0] = 0;
  return this;
}

void std::numpunct<char>::~numpunct(std::numpunct<char> *this)
{
  if (SHIBYTE(this->__grouping_.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](this->__grouping_.__r_.__value_.__r.__words[0], this->__grouping_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__shared_count::~__shared_count(this);
}

{
  std::numpunct<char>::~numpunct(this);

  JUMPOUT(0x193B0CA40);
}

void std::numpunct<wchar_t>::~numpunct(std::numpunct<wchar_t> *this)
{
  if (SHIBYTE(this->__grouping_.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](this->__grouping_.__r_.__value_.__r.__words[0], this->__grouping_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__shared_count::~__shared_count(this);
}

{
  std::numpunct<wchar_t>::~numpunct(this);

  JUMPOUT(0x193B0CA40);
}

std::string *__cdecl std::numpunct<char>::do_grouping(std::string *__return_ptr retstr, std::string *this)
{
  if (SHIBYTE(this[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(retstr, this[1].__r_.__value_.__l.__data_, this[1].__r_.__value_.__l.__size_);
  }

  else
  {
    *retstr = this[1];
  }

  return this;
}

std::string *__cdecl std::numpunct<wchar_t>::do_grouping(std::string *__return_ptr retstr, std::string *this)
{
  if (SHIBYTE(this[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(retstr, this[1].__r_.__value_.__l.__data_, this[1].__r_.__value_.__l.__size_);
  }

  else
  {
    *retstr = this[1];
  }

  return this;
}

_BYTE *std::wstring::basic_string[abi:ne200100]<0>(_BYTE *a1, __int32 *a2)
{
  v4 = wcslen(a2);
  if (v4 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 5)
  {
    if ((v4 | 1) == 5)
    {
      v6 = 7;
    }

    else
    {
      v6 = (v4 | 1) + 1;
    }

    std::allocator<wchar_t>::allocate_at_least[abi:ne200100](a1, v6);
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, a2, 4 * v4);
  }

  *&a1[4 * v5] = 0;
  return a1;
}

std::numpunct_byname<char> *__cdecl std::numpunct_byname<char>::numpunct_byname(std::numpunct_byname<char> *this, const char *__nm, size_t __refs)
{
  *&this->__decimal_point_ = 11310;
  *&this->__grouping_.__r_.__value_.__r.__words[1] = 0uLL;
  this->__grouping_.__r_.__value_.__r.__words[0] = 0;
  this->__shared_owners_ = __refs - 1;
  std::numpunct_byname<char>::__init(this, __nm);
  return this;
}

void std::numpunct_byname<char>::__init(std::numpunct_byname<char> *this, const char *a2)
{
  if (*a2 != 67 || a2[1])
  {
    v4 = newlocale(63, a2, 0);
    v11 = v4;
    if (!v4)
    {
      std::string::basic_string[abi:ne200100]<0>(&v9, a2);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("numpunct_byname<char>::numpunct_byname failed to construct for ", &v9, &v10);
      if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v10;
      }

      else
      {
        v8 = v10.__r_.__value_.__r.__words[0];
      }

      std::__throw_runtime_error(v8);
    }

    v5 = localeconv_l(v4);
    std::checked_string_to_char_convert(&this->__decimal_point_, v5->decimal_point, v11, v6);
    std::checked_string_to_char_convert(&this->__thousands_sep_, v5->thousands_sep, v11, v7);
    std::string::__assign_external(&this->__grouping_, v5->grouping);
    std::__libcpp_unique_locale::~__libcpp_unique_locale(&v11);
  }
}

void sub_1922E9420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    std::stoi(&a13);
  }

  if (SHIBYTE(a12) < 0)
  {
    MEMORY[0x193B0CA40](a10, a12 & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__libcpp_unique_locale::~__libcpp_unique_locale((v18 - 24));
  _Unwind_Resume(a1);
}

std::numpunct_byname<char> *__cdecl std::numpunct_byname<char>::numpunct_byname(std::numpunct_byname<char> *this, const std::string *__nm, size_t __refs)
{
  *&this->__decimal_point_ = 11310;
  *&this->__grouping_.__r_.__value_.__r.__words[1] = 0uLL;
  this->__grouping_.__r_.__value_.__r.__words[0] = 0;
  this->__shared_owners_ = __refs - 1;
  if ((__nm->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __nm = __nm->__r_.__value_.__r.__words[0];
  }

  std::numpunct_byname<char>::__init(this, __nm);
  return this;
}

void std::numpunct_byname<char>::~numpunct_byname(std::numpunct_byname<char> *this)
{
  std::numpunct<char>::~numpunct(this);

  JUMPOUT(0x193B0CA40);
}

BOOL std::checked_string_to_char_convert(std::__1 *this, char *a2, _xlocale *a3, _xlocale *a4)
{
  if (!*a2)
  {
    return 0;
  }

  if (a2[1])
  {
    result = std::checked_string_to_wchar_convert(&v9, a2, a3);
    if (!result)
    {
      return result;
    }

    v7 = v9;
    v8 = wctob_l(v9, a3);
    if (v8 == -1)
    {
      LOBYTE(v8) = 32;
      if (v7 != 8239 && v7 != 160)
      {
        return 0;
      }
    }

    *this = v8;
  }

  else
  {
    *this = *a2;
  }

  return 1;
}

std::numpunct_byname<wchar_t> *__cdecl std::numpunct_byname<wchar_t>::numpunct_byname(std::numpunct_byname<wchar_t> *this, const char *__nm, size_t __refs)
{
  *&this->__decimal_point_ = 0x2C0000002ELL;
  *&this->__grouping_.__r_.__value_.__r.__words[1] = 0uLL;
  this->__grouping_.__r_.__value_.__r.__words[0] = 0;
  this->__shared_owners_ = __refs - 1;
  std::numpunct_byname<wchar_t>::__init(this, __nm);
  return this;
}

void std::numpunct_byname<wchar_t>::__init(std::numpunct_byname<wchar_t> *this, const char *a2)
{
  if (*a2 != 67 || a2[1])
  {
    v4 = newlocale(63, a2, 0);
    v9 = v4;
    if (!v4)
    {
      std::string::basic_string[abi:ne200100]<0>(&v7, a2);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("numpunct_byname<wchar_t>::numpunct_byname failed to construct for ", &v7, &v8);
      if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v8;
      }

      else
      {
        v6 = v8.__r_.__value_.__r.__words[0];
      }

      std::__throw_runtime_error(v6);
    }

    v5 = localeconv_l(v4);
    std::checked_string_to_wchar_convert(&this->__decimal_point_, v5->decimal_point, v9);
    std::checked_string_to_wchar_convert(&this->__thousands_sep_, v5->thousands_sep, v9);
    std::string::__assign_external(&this->__grouping_, v5->grouping);
    std::__libcpp_unique_locale::~__libcpp_unique_locale(&v9);
  }
}

void sub_1922E9708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    std::stoi(&a13);
  }

  if (SHIBYTE(a12) < 0)
  {
    MEMORY[0x193B0CA40](a10, a12 & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__libcpp_unique_locale::~__libcpp_unique_locale((v18 - 24));
  _Unwind_Resume(a1);
}

std::numpunct_byname<wchar_t> *__cdecl std::numpunct_byname<wchar_t>::numpunct_byname(std::numpunct_byname<wchar_t> *this, const std::string *__nm, size_t __refs)
{
  *&this->__decimal_point_ = 0x2C0000002ELL;
  *&this->__grouping_.__r_.__value_.__r.__words[1] = 0uLL;
  this->__grouping_.__r_.__value_.__r.__words[0] = 0;
  this->__shared_owners_ = __refs - 1;
  if ((__nm->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __nm = __nm->__r_.__value_.__r.__words[0];
  }

  std::numpunct_byname<wchar_t>::__init(this, __nm);
  return this;
}

void std::numpunct_byname<wchar_t>::~numpunct_byname(std::numpunct_byname<wchar_t> *this)
{
  std::numpunct<wchar_t>::~numpunct(this);

  JUMPOUT(0x193B0CA40);
}

BOOL std::checked_string_to_wchar_convert(__int32 *a1, char *__s, _xlocale *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*__s)
  {
    memset(&v11, 0, sizeof(v11));
    v6 = strlen(__s);
    v7 = mbrtowc_l(&v10, __s, v6, &v11, a3);
    result = v7 < 0xFFFFFFFFFFFFFFFELL;
    if (v7 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      *a1 = v10;
    }
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

int std::__num_get_base::__get_base(std::ios_base *a1)
{
  v1 = a1->__fmtflags_ & 0x4A;
  if (!v1)
  {
    return 0;
  }

  if (v1 == 8)
  {
    v2 = 16;
  }

  else
  {
    v2 = 10;
  }

  if (v1 == 64)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

void std::__num_put_base::__format_int(char *__fmt, const char *__len, BOOL __signd, std::ios_base::fmtflags __flags)
{
  if ((__flags & 0x800) != 0 && (__flags & 0x4A) != 8 && (__flags & 0x4A) != 0x40 && __signd)
  {
    *__fmt++ = 43;
  }

  if ((__flags & 0x200) != 0)
  {
    *__fmt++ = 35;
  }

  v4 = *__len;
  if (*__len)
  {
    v5 = __len + 1;
    do
    {
      *__fmt++ = v4;
      v6 = *v5++;
      v4 = v6;
    }

    while (v6);
  }

  v7 = __flags & 0x4A;
  if (__signd)
  {
    v8 = 100;
  }

  else
  {
    v8 = 117;
  }

  if ((__flags & 0x4000) != 0)
  {
    v9 = 88;
  }

  else
  {
    v9 = 120;
  }

  if (v7 == 8)
  {
    v8 = v9;
  }

  if (v7 == 64)
  {
    v10 = 111;
  }

  else
  {
    v10 = v8;
  }

  *__fmt = v10;
}

BOOL std::__num_put_base::__format_float(char *__fmt, const char *__len, std::ios_base::fmtflags __flags)
{
  if ((__flags & 0x800) != 0)
  {
    *__fmt++ = 43;
  }

  if ((__flags & 0x400) != 0)
  {
    *__fmt++ = 35;
  }

  v3 = __flags & 0x104;
  if (v3 != 260)
  {
    *__fmt = 10798;
    __fmt += 2;
  }

  v4 = *__len;
  if (*__len)
  {
    v5 = __len + 1;
    do
    {
      *__fmt++ = v4;
      v6 = *v5++;
      v4 = v6;
    }

    while (v6);
  }

  if ((__flags & 0x4000) != 0)
  {
    v7 = 69;
  }

  else
  {
    v7 = 101;
  }

  if ((__flags & 0x4000) != 0)
  {
    v8 = 71;
  }

  else
  {
    v8 = 103;
  }

  if ((__flags & 0x4000) != 0)
  {
    v9 = 65;
  }

  else
  {
    v9 = 97;
  }

  if (v3 == 260)
  {
    v8 = v9;
  }

  if ((__flags & 0x4000) != 0)
  {
    v10 = 70;
  }

  else
  {
    v10 = 102;
  }

  if (v3 == 4)
  {
    v8 = v10;
  }

  if (v3 != 256)
  {
    v7 = v8;
  }

  *__fmt = v7;
  return v3 != 260;
}

uint64_t std::__time_get_c_storage<char>::__weeks()
{
  if ((atomic_load_explicit(&qword_1EAE05CF8, memory_order_acquire) & 1) == 0)
  {
    std::__time_get_c_storage<char>::__weeks();
  }

  return _MergedGlobals_1;
}

void std::init_weeks(std::__1 *this)
{
  {
    std::init_weeks();
  }

  v1 = &qword_1EAE05D90;
  if (byte_1EAE05DA7 < 0)
  {
    qword_1EAE05D98 = 6;
    v1 = qword_1EAE05D90;
  }

  else
  {
    byte_1EAE05DA7 = 6;
  }

  strcpy(v1, "Sunday");
  v2 = &qword_1EAE05DA8;
  if (byte_1EAE05DBF < 0)
  {
    qword_1EAE05DB0 = 6;
    v2 = qword_1EAE05DA8;
  }

  else
  {
    byte_1EAE05DBF = 6;
  }

  strcpy(v2, "Monday");
  v3 = &qword_1EAE05DC0;
  if (byte_1EAE05DD7 < 0)
  {
    qword_1EAE05DC8 = 7;
    v3 = qword_1EAE05DC0;
  }

  else
  {
    byte_1EAE05DD7 = 7;
  }

  strcpy(v3, "Tuesday");
  v4 = &qword_1EAE05DD8;
  if (byte_1EAE05DEF < 0)
  {
    qword_1EAE05DE0 = 9;
    v4 = qword_1EAE05DD8;
  }

  else
  {
    byte_1EAE05DEF = 9;
  }

  strcpy(v4, "Wednesday");
  if (byte_1EAE05E07 < 0)
  {
    qword_1EAE05DF8 = 8;
    v5 = qword_1EAE05DF0;
  }

  else
  {
    v5 = &qword_1EAE05DF0;
    byte_1EAE05E07 = 8;
  }

  strcpy(v5, "Thursday");
  if (byte_1EAE05E1F < 0)
  {
    qword_1EAE05E10 = 6;
    v6 = qword_1EAE05E08;
  }

  else
  {
    v6 = &qword_1EAE05E08;
    byte_1EAE05E1F = 6;
  }

  strcpy(v6, "Friday");
  if (byte_1EAE05E37 < 0)
  {
    qword_1EAE05E28 = 8;
    v7 = qword_1EAE05E20;
  }

  else
  {
    v7 = &qword_1EAE05E20;
    byte_1EAE05E37 = 8;
  }

  strcpy(v7, "Saturday");
  if (byte_1EAE05E4F < 0)
  {
    qword_1EAE05E40 = 3;
    v8 = qword_1EAE05E38;
  }

  else
  {
    v8 = &qword_1EAE05E38;
    byte_1EAE05E4F = 3;
  }

  *v8 = 7238995;
  if (byte_1EAE05E67 < 0)
  {
    qword_1EAE05E58 = 3;
    v9 = qword_1EAE05E50;
  }

  else
  {
    v9 = &qword_1EAE05E50;
    byte_1EAE05E67 = 3;
  }

  *v9 = 7237453;
  if (byte_1EAE05E7F < 0)
  {
    qword_1EAE05E70 = 3;
    v10 = qword_1EAE05E68;
  }

  else
  {
    v10 = &qword_1EAE05E68;
    byte_1EAE05E7F = 3;
  }

  *v10 = 6649172;
  if (byte_1EAE05E97 < 0)
  {
    qword_1EAE05E88 = 3;
    v11 = qword_1EAE05E80;
  }

  else
  {
    v11 = &qword_1EAE05E80;
    byte_1EAE05E97 = 3;
  }

  *v11 = 6579543;
  if (byte_1EAE05EAF < 0)
  {
    qword_1EAE05EA0 = 3;
    v12 = qword_1EAE05E98;
  }

  else
  {
    v12 = &qword_1EAE05E98;
    byte_1EAE05EAF = 3;
  }

  *v12 = 7694420;
  if (byte_1EAE05EC7 < 0)
  {
    qword_1EAE05EB8 = 3;
    v13 = qword_1EAE05EB0;
  }

  else
  {
    v13 = &qword_1EAE05EB0;
    byte_1EAE05EC7 = 3;
  }

  *v13 = 6910534;
  if (byte_1EAE05EDF < 0)
  {
    qword_1EAE05ED0 = 3;
    v14 = qword_1EAE05EC8;
  }

  else
  {
    v14 = &qword_1EAE05EC8;
    byte_1EAE05EDF = 3;
  }

  *v14 = 7627091;
}

uint64_t std::__time_get_c_storage<wchar_t>::__weeks()
{
  {
    if (v1)
    {
      std::init_wweeks(v1);
      std::__time_get_c_storage<wchar_t>::__weeks(void)const::weeks = &std::init_wweeks(void)::weeks;
    }
  }

  return std::__time_get_c_storage<wchar_t>::__weeks(void)const::weeks;
}

std::wstring *std::init_wweeks(std::__1 *this)
{
  {
    std::init_wweeks();
  }

  std::wstring::__assign_external(&std::init_wweeks(void)::weeks, "S", 6uLL);
  std::wstring::__assign_external(&stru_1EAE05950, "M", 6uLL);
  std::wstring::__assign_external(&stru_1EAE05968, "T", 7uLL);
  std::wstring::__assign_external(&stru_1EAE05980, "W", 9uLL);
  std::wstring::__assign_external(&stru_1EAE05998, "T", 8uLL);
  std::wstring::__assign_external(&stru_1EAE059B0, "F", 6uLL);
  result = std::wstring::__assign_external(&stru_1EAE059C8, "S", 8uLL);
  if (byte_1EAE059F7 < 0)
  {
    qword_1EAE059E8 = 3;
    v2 = qword_1EAE059E0;
  }

  else
  {
    v2 = &qword_1EAE059E0;
    byte_1EAE059F7 = 3;
  }

  *v2 = 0x7500000053;
  v2[1] = 110;
  if (byte_1EAE05A0F < 0)
  {
    qword_1EAE05A00 = 3;
    v3 = qword_1EAE059F8;
  }

  else
  {
    v3 = &qword_1EAE059F8;
    byte_1EAE05A0F = 3;
  }

  *v3 = 0x6F0000004DLL;
  v3[1] = 110;
  if (byte_1EAE05A27 < 0)
  {
    qword_1EAE05A18 = 3;
    v4 = qword_1EAE05A10;
  }

  else
  {
    v4 = &qword_1EAE05A10;
    byte_1EAE05A27 = 3;
  }

  *v4 = 0x7500000054;
  v4[1] = 101;
  if (byte_1EAE05A3F < 0)
  {
    qword_1EAE05A30 = 3;
    v5 = qword_1EAE05A28;
  }

  else
  {
    v5 = &qword_1EAE05A28;
    byte_1EAE05A3F = 3;
  }

  *v5 = 0x6500000057;
  v5[1] = 100;
  if (byte_1EAE05A57 < 0)
  {
    qword_1EAE05A48 = 3;
    v6 = qword_1EAE05A40;
  }

  else
  {
    v6 = &qword_1EAE05A40;
    byte_1EAE05A57 = 3;
  }

  *v6 = 0x6800000054;
  v6[1] = 117;
  if (byte_1EAE05A6F < 0)
  {
    qword_1EAE05A60 = 3;
    v7 = qword_1EAE05A58;
  }

  else
  {
    v7 = &qword_1EAE05A58;
    byte_1EAE05A6F = 3;
  }

  *v7 = 0x7200000046;
  v7[1] = 105;
  if (byte_1EAE05A87 < 0)
  {
    qword_1EAE05A78 = 3;
    v8 = qword_1EAE05A70;
  }

  else
  {
    v8 = &qword_1EAE05A70;
    byte_1EAE05A87 = 3;
  }

  *v8 = 0x6100000053;
  v8[1] = 116;
  return result;
}

uint64_t std::__time_get_c_storage<char>::__months()
{
  if ((atomic_load_explicit(&qword_1EAE05D08, memory_order_acquire) & 1) == 0)
  {
    std::__time_get_c_storage<char>::__months();
  }

  return qword_1EAE05D00;
}

void std::init_months(std::__1 *this)
{
  {
    std::init_months();
  }

  v1 = &qword_1EAE05EE0;
  if (byte_1EAE05EF7 < 0)
  {
    qword_1EAE05EE8 = 7;
    v1 = qword_1EAE05EE0;
  }

  else
  {
    byte_1EAE05EF7 = 7;
  }

  strcpy(v1, "January");
  v2 = &qword_1EAE05EF8;
  if (byte_1EAE05F0F < 0)
  {
    qword_1EAE05F00 = 8;
    v2 = qword_1EAE05EF8;
  }

  else
  {
    byte_1EAE05F0F = 8;
  }

  strcpy(v2, "February");
  v3 = &qword_1EAE05F10;
  if (byte_1EAE05F27 < 0)
  {
    qword_1EAE05F18 = 5;
    v3 = qword_1EAE05F10;
  }

  else
  {
    byte_1EAE05F27 = 5;
  }

  strcpy(v3, "March");
  v4 = &qword_1EAE05F28;
  if (byte_1EAE05F3F < 0)
  {
    qword_1EAE05F30 = 5;
    v4 = qword_1EAE05F28;
  }

  else
  {
    byte_1EAE05F3F = 5;
  }

  strcpy(v4, "April");
  v5 = &qword_1EAE05F40;
  if (byte_1EAE05F57 < 0)
  {
    qword_1EAE05F48 = 3;
    v5 = qword_1EAE05F40;
  }

  else
  {
    byte_1EAE05F57 = 3;
  }

  *v5 = 7954765;
  v6 = &qword_1EAE05F58;
  if (byte_1EAE05F6F < 0)
  {
    qword_1EAE05F60 = 4;
    v6 = qword_1EAE05F58;
  }

  else
  {
    byte_1EAE05F6F = 4;
  }

  strcpy(v6, "June");
  v7 = &qword_1EAE05F70;
  if (byte_1EAE05F87 < 0)
  {
    qword_1EAE05F78 = 4;
    v7 = qword_1EAE05F70;
  }

  else
  {
    byte_1EAE05F87 = 4;
  }

  strcpy(v7, "July");
  v8 = &qword_1EAE05F88;
  if (byte_1EAE05F9F < 0)
  {
    qword_1EAE05F90 = 6;
    v8 = qword_1EAE05F88;
  }

  else
  {
    byte_1EAE05F9F = 6;
  }

  strcpy(v8, "August");
  v9 = &qword_1EAE05FA0;
  if (byte_1EAE05FB7 < 0)
  {
    qword_1EAE05FA8 = 9;
    v9 = qword_1EAE05FA0;
  }

  else
  {
    byte_1EAE05FB7 = 9;
  }

  strcpy(v9, "September");
  v10 = &qword_1EAE05FB8;
  if (byte_1EAE05FCF < 0)
  {
    qword_1EAE05FC0 = 7;
    v10 = qword_1EAE05FB8;
  }

  else
  {
    byte_1EAE05FCF = 7;
  }

  strcpy(v10, "October");
  v11 = &qword_1EAE05FD0;
  if (byte_1EAE05FE7 < 0)
  {
    qword_1EAE05FD8 = 8;
    v11 = qword_1EAE05FD0;
  }

  else
  {
    byte_1EAE05FE7 = 8;
  }

  strcpy(v11, "November");
  v12 = &qword_1EAE05FE8;
  if (byte_1EAE05FFF < 0)
  {
    qword_1EAE05FF0 = 8;
    v12 = qword_1EAE05FE8;
  }

  else
  {
    byte_1EAE05FFF = 8;
  }

  strcpy(v12, "December");
  v13 = &qword_1EAE06000;
  if (byte_1EAE06017 < 0)
  {
    qword_1EAE06008 = 3;
    v13 = qword_1EAE06000;
  }

  else
  {
    byte_1EAE06017 = 3;
  }

  *v13 = 7233866;
  v14 = &qword_1EAE06018;
  if (byte_1EAE0602F < 0)
  {
    qword_1EAE06020 = 3;
    v14 = qword_1EAE06018;
  }

  else
  {
    byte_1EAE0602F = 3;
  }

  *v14 = 6448454;
  if (byte_1EAE06047 < 0)
  {
    qword_1EAE06038 = 3;
    v15 = qword_1EAE06030;
  }

  else
  {
    v15 = &qword_1EAE06030;
    byte_1EAE06047 = 3;
  }

  *v15 = 7496013;
  if (byte_1EAE0605F < 0)
  {
    qword_1EAE06050 = 3;
    v16 = qword_1EAE06048;
  }

  else
  {
    v16 = &qword_1EAE06048;
    byte_1EAE0605F = 3;
  }

  *v16 = 7499841;
  if (byte_1EAE06077 < 0)
  {
    qword_1EAE06068 = 3;
    v17 = qword_1EAE06060;
  }

  else
  {
    v17 = &qword_1EAE06060;
    byte_1EAE06077 = 3;
  }

  *v17 = 7954765;
  if (byte_1EAE0608F < 0)
  {
    qword_1EAE06080 = 3;
    v18 = qword_1EAE06078;
  }

  else
  {
    v18 = &qword_1EAE06078;
    byte_1EAE0608F = 3;
  }

  *v18 = 7238986;
  if (byte_1EAE060A7 < 0)
  {
    qword_1EAE06098 = 3;
    v19 = qword_1EAE06090;
  }

  else
  {
    v19 = &qword_1EAE06090;
    byte_1EAE060A7 = 3;
  }

  *v19 = 7107914;
  if (byte_1EAE060BF < 0)
  {
    qword_1EAE060B0 = 3;
    v20 = qword_1EAE060A8;
  }

  else
  {
    v20 = &qword_1EAE060A8;
    byte_1EAE060BF = 3;
  }

  *v20 = 6780225;
  if (byte_1EAE060D7 < 0)
  {
    qword_1EAE060C8 = 3;
    v21 = qword_1EAE060C0;
  }

  else
  {
    v21 = &qword_1EAE060C0;
    byte_1EAE060D7 = 3;
  }

  *v21 = 7365971;
  if (byte_1EAE060EF < 0)
  {
    qword_1EAE060E0 = 3;
    v22 = qword_1EAE060D8;
  }

  else
  {
    v22 = &qword_1EAE060D8;
    byte_1EAE060EF = 3;
  }

  *v22 = 7627599;
  if (byte_1EAE06107 < 0)
  {
    qword_1EAE060F8 = 3;
    v23 = qword_1EAE060F0;
  }

  else
  {
    v23 = &qword_1EAE060F0;
    byte_1EAE06107 = 3;
  }

  *v23 = 7761742;
  if (byte_1EAE0611F < 0)
  {
    qword_1EAE06110 = 3;
    v24 = qword_1EAE06108;
  }

  else
  {
    v24 = &qword_1EAE06108;
    byte_1EAE0611F = 3;
  }

  *v24 = 6513988;
}

uint64_t std::__time_get_c_storage<wchar_t>::__months()
{
  {
    if (v1)
    {
      std::init_wmonths(v1);
      std::__time_get_c_storage<wchar_t>::__months(void)const::months = &std::init_wmonths(void)::months;
    }
  }

  return std::__time_get_c_storage<wchar_t>::__months(void)const::months;
}

std::wstring *std::init_wmonths(std::__1 *this)
{
  {
    std::init_wmonths();
  }

  std::wstring::__assign_external(&std::init_wmonths(void)::months, dword_19231D3D4, 7uLL);
  std::wstring::__assign_external(&stru_1EAE05AB0, dword_19231D3F4, 8uLL);
  std::wstring::__assign_external(&stru_1EAE05AC8, dword_19231D418, 5uLL);
  std::wstring::__assign_external(&stru_1EAE05AE0, dword_19231D430, 5uLL);
  v1 = &qword_1EAE05AF8;
  if (byte_1EAE05B0F < 0)
  {
    qword_1EAE05B00 = 3;
    v1 = qword_1EAE05AF8;
  }

  else
  {
    byte_1EAE05B0F = 3;
  }

  *v1 = 0x610000004DLL;
  v1[1] = 121;
  v2 = &xmmword_1EAE05B10;
  if (byte_1EAE05B27 < 0)
  {
    *(&xmmword_1EAE05B10 + 1) = 4;
    v2 = xmmword_1EAE05B10;
  }

  else
  {
    byte_1EAE05B27 = 4;
  }

  *v2 = xmmword_19231D458;
  *(v2 + 4) = 0;
  v3 = &xmmword_1EAE05B28;
  if (byte_1EAE05B3F < 0)
  {
    *(&xmmword_1EAE05B28 + 1) = 4;
    v3 = xmmword_1EAE05B28;
  }

  else
  {
    byte_1EAE05B3F = 4;
  }

  *v3 = xmmword_19231D46C;
  *(v3 + 4) = 0;
  std::wstring::__assign_external(&stru_1EAE05B40, dword_19231D480, 6uLL);
  std::wstring::__assign_external(&stru_1EAE05B58, dword_19231D49C, 9uLL);
  std::wstring::__assign_external(&stru_1EAE05B70, dword_19231D4C4, 7uLL);
  std::wstring::__assign_external(&stru_1EAE05B88, dword_19231D4E4, 8uLL);
  result = std::wstring::__assign_external(&stru_1EAE05BA0, dword_19231D508, 8uLL);
  v5 = &qword_1EAE05BB8;
  if (byte_1EAE05BCF < 0)
  {
    qword_1EAE05BC0 = 3;
    v5 = qword_1EAE05BB8;
  }

  else
  {
    byte_1EAE05BCF = 3;
  }

  *v5 = 0x610000004ALL;
  v5[1] = 110;
  v6 = &qword_1EAE05BD0;
  if (byte_1EAE05BE7 < 0)
  {
    qword_1EAE05BD8 = 3;
    v6 = qword_1EAE05BD0;
  }

  else
  {
    byte_1EAE05BE7 = 3;
  }

  *v6 = 0x6500000046;
  v6[1] = 98;
  if (byte_1EAE05BFF < 0)
  {
    qword_1EAE05BF0 = 3;
    v7 = qword_1EAE05BE8;
  }

  else
  {
    v7 = &qword_1EAE05BE8;
    byte_1EAE05BFF = 3;
  }

  *v7 = 0x610000004DLL;
  v7[1] = 114;
  if (byte_1EAE05C17 < 0)
  {
    qword_1EAE05C08 = 3;
    v8 = qword_1EAE05C00;
  }

  else
  {
    v8 = &qword_1EAE05C00;
    byte_1EAE05C17 = 3;
  }

  *v8 = 0x7000000041;
  v8[1] = 114;
  if (byte_1EAE05C2F < 0)
  {
    qword_1EAE05C20 = 3;
    v9 = qword_1EAE05C18;
  }

  else
  {
    v9 = &qword_1EAE05C18;
    byte_1EAE05C2F = 3;
  }

  *v9 = 0x610000004DLL;
  v9[1] = 121;
  if (byte_1EAE05C47 < 0)
  {
    qword_1EAE05C38 = 3;
    v10 = qword_1EAE05C30;
  }

  else
  {
    v10 = &qword_1EAE05C30;
    byte_1EAE05C47 = 3;
  }

  *v10 = 0x750000004ALL;
  v10[1] = 110;
  if (byte_1EAE05C5F < 0)
  {
    qword_1EAE05C50 = 3;
    v11 = qword_1EAE05C48;
  }

  else
  {
    v11 = &qword_1EAE05C48;
    byte_1EAE05C5F = 3;
  }

  *v11 = 0x750000004ALL;
  v11[1] = 108;
  if (byte_1EAE05C77 < 0)
  {
    qword_1EAE05C68 = 3;
    v12 = qword_1EAE05C60;
  }

  else
  {
    v12 = &qword_1EAE05C60;
    byte_1EAE05C77 = 3;
  }

  *v12 = 0x7500000041;
  v12[1] = 103;
  if (byte_1EAE05C8F < 0)
  {
    qword_1EAE05C80 = 3;
    v13 = qword_1EAE05C78;
  }

  else
  {
    v13 = &qword_1EAE05C78;
    byte_1EAE05C8F = 3;
  }

  *v13 = 0x6500000053;
  v13[1] = 112;
  if (byte_1EAE05CA7 < 0)
  {
    qword_1EAE05C98 = 3;
    v14 = qword_1EAE05C90;
  }

  else
  {
    v14 = &qword_1EAE05C90;
    byte_1EAE05CA7 = 3;
  }

  *v14 = 0x630000004FLL;
  v14[1] = 116;
  if (byte_1EAE05CBF < 0)
  {
    qword_1EAE05CB0 = 3;
    v15 = qword_1EAE05CA8;
  }

  else
  {
    v15 = &qword_1EAE05CA8;
    byte_1EAE05CBF = 3;
  }

  *v15 = 0x6F0000004ELL;
  v15[1] = 118;
  if (byte_1EAE05CD7 < 0)
  {
    qword_1EAE05CC8 = 3;
    v16 = qword_1EAE05CC0;
  }

  else
  {
    v16 = &qword_1EAE05CC0;
    byte_1EAE05CD7 = 3;
  }

  *v16 = 0x6500000044;
  v16[1] = 99;
  return result;
}

uint64_t std::__time_get_c_storage<char>::__am_pm()
{
  if ((atomic_load_explicit(&qword_1EAE05D18, memory_order_acquire) & 1) == 0)
  {
    std::__time_get_c_storage<char>::__am_pm();
  }

  return qword_1EAE05D10;
}

void std::init_am_pm(std::__1 *this)
{
  {
    std::init_am_pm();
  }

  if (byte_1EAE05D47 < 0)
  {
    qword_1EAE05D38 = 2;
    v1 = qword_1EAE05D30;
  }

  else
  {
    v1 = &qword_1EAE05D30;
    byte_1EAE05D47 = 2;
  }

  strcpy(v1, "AM");
  if (byte_1EAE05D5F < 0)
  {
    qword_1EAE05D50 = 2;
    v2 = qword_1EAE05D48;
  }

  else
  {
    v2 = &qword_1EAE05D48;
    byte_1EAE05D5F = 2;
  }

  strcpy(v2, "PM");
}

uint64_t std::__time_get_c_storage<wchar_t>::__am_pm()
{
  if ((atomic_load_explicit(&qword_1EAE05D28, memory_order_acquire) & 1) == 0)
  {
    std::__time_get_c_storage<wchar_t>::__am_pm();
  }

  return qword_1EAE05D20;
}

void std::init_wam_pm(std::__1 *this)
{
  {
    std::init_wam_pm();
  }

  if (byte_1EAE05D77 < 0)
  {
    qword_1EAE05D68 = 2;
    v1 = qword_1EAE05D60;
  }

  else
  {
    v1 = &qword_1EAE05D60;
    byte_1EAE05D77 = 2;
  }

  *v1 = 0x4D00000041;
  *(v1 + 2) = 0;
  if (byte_1EAE05D8F < 0)
  {
    qword_1EAE05D80 = 2;
    v2 = qword_1EAE05D78;
  }

  else
  {
    v2 = &qword_1EAE05D78;
    byte_1EAE05D8F = 2;
  }

  *v2 = 0x4D00000050;
  *(v2 + 2) = 0;
}

char *std::__time_get_c_storage<char>::__x()
{
  {
    std::__time_get_c_storage<char>::__x();
  }

  return std::__time_get_c_storage<char>::__x(void)const::s;
}

_BYTE *std::__time_get_c_storage<wchar_t>::__x()
{
  {
    std::wstring::basic_string[abi:ne200100]<0>(std::__time_get_c_storage<wchar_t>::__x(void)const::s, dword_19231C4AC);
    __cxa_atexit(std::wstring::~wstring, std::__time_get_c_storage<wchar_t>::__x(void)const::s, &dword_192293000);
  }

  return std::__time_get_c_storage<wchar_t>::__x(void)const::s;
}

char *std::__time_get_c_storage<char>::__X()
{
  {
    std::__time_get_c_storage<char>::__X();
  }

  return std::__time_get_c_storage<char>::__X(void)const::s;
}

_BYTE *std::__time_get_c_storage<wchar_t>::__X()
{
  {
    std::wstring::basic_string[abi:ne200100]<0>(std::__time_get_c_storage<wchar_t>::__X(void)const::s, dword_19231C4D0);
    __cxa_atexit(std::wstring::~wstring, std::__time_get_c_storage<wchar_t>::__X(void)const::s, &dword_192293000);
  }

  return std::__time_get_c_storage<wchar_t>::__X(void)const::s;
}

char *std::__time_get_c_storage<char>::__c()
{
  {
    std::__time_get_c_storage<char>::__c();
  }

  return std::__time_get_c_storage<char>::__c(void)const::s;
}

_BYTE *std::__time_get_c_storage<wchar_t>::__c()
{
  {
    std::wstring::basic_string[abi:ne200100]<0>(std::__time_get_c_storage<wchar_t>::__c(void)const::s, dword_19231C4F4);
    __cxa_atexit(std::wstring::~wstring, std::__time_get_c_storage<wchar_t>::__c(void)const::s, &dword_192293000);
  }

  return std::__time_get_c_storage<wchar_t>::__c(void)const::s;
}

char *std::__time_get_c_storage<char>::__r()
{
  {
    std::__time_get_c_storage<char>::__r();
  }

  return std::__time_get_c_storage<char>::__r(void)const::s;
}

_BYTE *std::__time_get_c_storage<wchar_t>::__r()
{
  {
    std::wstring::basic_string[abi:ne200100]<0>(std::__time_get_c_storage<wchar_t>::__r(void)const::s, dword_19231C548);
    __cxa_atexit(std::wstring::~wstring, std::__time_get_c_storage<wchar_t>::__r(void)const::s, &dword_192293000);
  }

  return std::__time_get_c_storage<wchar_t>::__r(void)const::s;
}

std::__time_get *__cdecl std::__time_get::__time_get(std::__time_get *this, const char *__nm)
{
  v4 = newlocale(63, __nm, 0);
  this->__loc_ = v4;
  if (!v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, __nm);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("time_get_byname failed to construct for ", &v7, &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v8;
    }

    else
    {
      v6 = v8.__r_.__value_.__r.__words[0];
    }

    std::__throw_runtime_error(v6);
  }

  return this;
}

void sub_1922EB2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    std::stoi(&a12);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

std::__time_get *__cdecl std::__time_get::__time_get(std::__time_get *this, const std::string *__nm)
{
  v2 = __nm;
  if ((__nm->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __nm = __nm->__r_.__value_.__r.__words[0];
  }

  v4 = newlocale(63, __nm, 0);
  this->__loc_ = v4;
  if (!v4)
  {
    std::operator+<char>("time_get_byname failed to construct for ", &v2->__r_.__value_.__l.__data_, v7);
    if (v8 >= 0)
    {
      v6 = v7;
    }

    else
    {
      v6 = v7[0];
    }

    std::__throw_runtime_error(v6);
  }

  return this;
}

void sub_1922EB3B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::stoi(&a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__time_get::~__time_get(std::__time_get *this)
{
  freelocale(this->__loc_);
}

{
  freelocale(this->__loc_);
}

void std::__time_get_storage<char>::__analyze(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, std::string *a4@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  *&v37.tm_isdst = 0xFFFFFFFFLL;
  v37.tm_gmtoff = 0;
  v37.tm_zone = 0;
  *&v37.tm_sec = xmmword_19231C330;
  *&v37.tm_mon = xmmword_19231C340;
  v36[2] = 0;
  v36[0] = 37;
  v36[1] = a2;
  v8 = strftime_l(v38, 0x64uLL, v36, &v37, *a1);
  v35 = v38;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  a4->__r_.__value_.__r.__words[0] = 0;
  if (v8)
  {
    v9 = &v38[v8];
    v10 = a1 + 344;
    v11 = v38;
    while (1)
    {
      v12 = *v11;
      if ((v12 & 0x8000000000000000) == 0 && (*(a3[2] + 4 * v12) & 0x4000) != 0)
      {
        std::string::push_back(a4, 32);
        v22 = a3[2];
        v23 = v35 + 1;
        do
        {
          v11 = v23;
          v35 = v23;
          if (v23 == v9)
          {
            break;
          }

          v24 = *v23;
          if (v24 < 0)
          {
            break;
          }

          v25 = *(v22 + 4 * v24);
          v23 = v11 + 1;
        }

        while ((v25 & 0x4000) != 0);
        goto LABEL_13;
      }

      v34 = v11;
      v33 = 0;
      v13 = std::__scan_keyword[abi:ne200100]<char *,std::string *,std::ctype<char>>(&v34, v9, (a1 + 8), (a1 + 344), a3, &v33, 0) - a1 - 8;
      if (v13 <= 335)
      {
        break;
      }

      v34 = v35;
      v16 = std::__scan_keyword[abi:ne200100]<char *,std::string *,std::ctype<char>>(&v34, v9, (a1 + 344), (a1 + 920), a3, &v33, 0) - v10;
      if (v16 <= 575)
      {
        std::string::push_back(a4, 37);
        if (v16 >= 288)
        {
          v17 = 98;
        }

        else
        {
          v17 = 66;
        }

        std::string::push_back(a4, v17);
        if (a2 == 120)
        {
          v18 = (v10 + 8 * (v16 >> 3));
          if (v18[23] < 0)
          {
            v18 = *v18;
          }

          v19 = *v18;
          if ((v19 & 0x8000000000000000) == 0 && (*(a3[2] + 4 * v19) & 0x400) != 0)
          {
            size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
            if ((size & 0x80u) == 0)
            {
              v21 = a4;
            }

            else
            {
              v21 = a4->__r_.__value_.__r.__words[0];
            }

            if ((size & 0x80u) != 0)
            {
              size = a4->__r_.__value_.__l.__size_;
            }

            v21->__r_.__value_.__s.__data_[size - 1] = 109;
          }
        }

        goto LABEL_10;
      }

      v26 = *(a1 + 943);
      if (v26 < 0)
      {
        v26 = *(a1 + 928);
      }

      v27 = *(a1 + 967);
      if (v27 < 0)
      {
        v27 = *(a1 + 952);
      }

      if (v26 + v27)
      {
        v34 = v35;
        if (std::__scan_keyword[abi:ne200100]<char *,std::string *,std::ctype<char>>(&v34, v9, (a1 + 920), (a1 + 968), a3, &v33, 0) - a1 - 920 <= 47)
        {
          std::string::push_back(a4, 37);
          std::string::push_back(a4, 112);
LABEL_10:
          v15 = v34;
          goto LABEL_11;
        }
      }

      v34 = v35;
      v28 = *v35;
      if (v28 < 0)
      {
        goto LABEL_46;
      }

      if ((*(a3[2] + 4 * v28) & 0x400) == 0)
      {
        if (v28 == 37)
        {
          std::string::push_back(a4, 37);
          std::string::push_back(a4, 37);
        }

        else
        {
LABEL_46:
          std::string::push_back(a4, v28);
        }

        v15 = v35 + 1;
LABEL_11:
        v35 = v15;
        goto LABEL_12;
      }

      v29 = std::__get_up_to_n_digits[abi:ne200100]<char,char *>(&v35, v9, &v33, a3, 4);
      if (v29 <= 30)
      {
        if (v29 <= 10)
        {
          if (v29 == 6)
          {
            std::string::push_back(a4, 37);
            v30 = 119;
          }

          else
          {
            if (v29 != 7)
            {
LABEL_74:
              for (i = v34; i != v35; i = ++v34)
              {
                std::string::push_back(a4, *i);
              }

              goto LABEL_12;
            }

            std::string::push_back(a4, 37);
            v30 = 117;
          }
        }

        else
        {
          switch(v29)
          {
            case 11:
              std::string::push_back(a4, 37);
              v30 = 73;
              break;
            case 12:
              std::string::push_back(a4, 37);
              v30 = 109;
              break;
            case 23:
              std::string::push_back(a4, 37);
              v30 = 72;
              break;
            default:
              goto LABEL_74;
          }
        }
      }

      else if (v29 > 60)
      {
        switch(v29)
        {
          case 61:
            std::string::push_back(a4, 37);
            v30 = 121;
            break;
          case 364:
            std::string::push_back(a4, 37);
            v30 = 106;
            break;
          case 2061:
            std::string::push_back(a4, 37);
            v30 = 89;
            break;
          default:
            goto LABEL_74;
        }
      }

      else
      {
        switch(v29)
        {
          case 31:
            std::string::push_back(a4, 37);
            v30 = 100;
            break;
          case 55:
            std::string::push_back(a4, 37);
            v30 = 77;
            break;
          case 59:
            std::string::push_back(a4, 37);
            v30 = 83;
            break;
          default:
            goto LABEL_74;
        }
      }

      std::string::push_back(a4, v30);
LABEL_12:
      v11 = v35;
LABEL_13:
      if (v11 == v9)
      {
        goto LABEL_77;
      }
    }

    std::string::push_back(a4, 37);
    if (v13 >= 168)
    {
      v14 = 97;
    }

    else
    {
      v14 = 65;
    }

    std::string::push_back(a4, v14);
    goto LABEL_10;
  }

LABEL_77:
  v32 = *MEMORY[0x1E69E9840];
}

uint64_t *std::__scan_keyword[abi:ne200100]<char *,std::string *,std::ctype<char>>(char **a1, char *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, _DWORD *a6, char a7)
{
  v10 = a3;
  v47 = *MEMORY[0x1E69E9840];
  v12 = a4 - a3;
  v13 = 0xAAAAAAAAAAAAAAABLL * v12;
  v45 = a7;
  if (0xAAAAAAAAAAAAAAABLL * v12 < 0x65)
  {
    v14 = 0;
    v42 = &v46;
  }

  else
  {
    v14 = malloc_type_malloc(0xAAAAAAAAAAAAAAABLL * v12, 0x100004077774924uLL);
    a7 = v45;
    v42 = v14;
    if (!v14)
    {
      std::__throw_bad_alloc();
    }
  }

  v39 = a6;
  v40 = v14;
  if (v10 == a4)
  {
    v15 = 0;
    v17 = v42;
  }

  else
  {
    v15 = 0;
    v16 = v10;
    v17 = v42;
    v18 = v42;
    do
    {
      v19 = *(v16 + 23);
      if (v19 < 0)
      {
        v19 = v16[1];
      }

      v20 = v19 == 0;
      v21 = v19 == 0;
      if (v20)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      if (v20)
      {
        ++v15;
      }

      v13 -= v21;
      *v18++ = v22;
      v16 += 3;
    }

    while (v16 != a4);
  }

  v23 = *a1;
  if (*a1 != a2 && v13 != 0)
  {
    v25 = 0;
    v41 = v10;
    v43 = a1;
    while (1)
    {
      v26 = *v23;
      if ((a7 & 1) == 0)
      {
        LODWORD(v26) = (*(*a5 + 24))(a5, v26);
        a7 = v45;
      }

      if (v10 == a4)
      {
        break;
      }

      v27 = 0;
      v28 = v25 + 1;
      do
      {
        if (*v17 == 1)
        {
          v29 = v10;
          if (*(v10 + 23) < 0)
          {
            v29 = *v10;
          }

          v30 = *(v29 + v25);
          if ((a7 & 1) == 0)
          {
            LODWORD(v30) = (*(*a5 + 24))(a5, v30);
            a7 = v45;
          }

          if (v26 == v30)
          {
            v31 = *(v10 + 23);
            if (v31 < 0)
            {
              v31 = v10[1];
            }

            if (v31 == v28)
            {
              *v17 = 2;
              --v13;
              ++v15;
            }

            v27 = 1;
          }

          else
          {
            *v17 = 0;
            --v13;
          }
        }

        v10 += 3;
        ++v17;
      }

      while (v10 != a4);
      v32 = v43;
      v23 = *v43;
      if ((v27 & 1) == 0)
      {
        v10 = v41;
        v17 = v42;
        goto LABEL_52;
      }

      *v43 = ++v23;
      v10 = v41;
      v17 = v42;
      if (v15 + v13 >= 2)
      {
        v33 = v41;
        v34 = v42;
        do
        {
          if (*v34 == 2)
          {
            v35 = *(v33 + 23);
            if (v35 < 0)
            {
              v35 = v33[1];
            }

            if (v35 != v28)
            {
              *v34 = 0;
              --v15;
            }
          }

          v33 += 3;
          ++v34;
        }

        while (v33 != a4);
        goto LABEL_50;
      }

LABEL_52:
      ++v25;
      if (v23 == a2 || v13 == 0)
      {
        goto LABEL_57;
      }
    }

    v32 = v43;
LABEL_50:
    v23 = *v32;
    goto LABEL_52;
  }

LABEL_57:
  if (v23 == a2)
  {
    *v39 |= 2u;
  }

  while (v10 != a4)
  {
    if (*v17 == 2)
    {
      goto LABEL_63;
    }

    v10 += 3;
    ++v17;
  }

  *v39 |= 4u;
LABEL_63:
  if (v40)
  {
    free(v40);
  }

  v37 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1922EBC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__get_up_to_n_digits[abi:ne200100]<char,char *>(char **a1, char *a2, _DWORD *a3, void *a4, int a5)
{
  if (*a1 == a2)
  {
    v9 = 0;
    v10 = 6;
    goto LABEL_6;
  }

  v7 = **a1;
  if (v7 < 0 || (*(a4[2] + 4 * v7) & 0x400) == 0)
  {
    v9 = 0;
    v10 = 4;
LABEL_6:
    *a3 |= v10;
    return v9;
  }

  v14 = (*(*a4 + 72))(a4);
  v15 = *a1 + 1;
  *a1 = v15;
  v9 = (v14 - 48);
  if (v15 == a2 || a5 < 2)
  {
LABEL_18:
    if (v15 != a2)
    {
      return v9;
    }

    v10 = 2;
    goto LABEL_6;
  }

  while (1)
  {
    v17 = *v15;
    if (v17 < 0 || (*(a4[2] + 4 * v17) & 0x400) == 0)
    {
      return v9;
    }

    v18 = (*(*a4 + 72))(a4);
    v15 = *a1 + 1;
    *a1 = v15;
    v9 = (v18 + 10 * v9 - 48);
    if (v15 == a2 || a5-- <= 2)
    {
      goto LABEL_18;
    }
  }
}

void std::__time_get_storage<wchar_t>::__analyze(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, std::wstring *a4@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  *&v32.tm_isdst = 0xFFFFFFFFLL;
  v32.tm_gmtoff = 0;
  v32.tm_zone = 0;
  *&v32.tm_sec = xmmword_19231C330;
  *&v32.tm_mon = xmmword_19231C340;
  v31[2] = 0;
  v31[0] = 37;
  v31[1] = a2;
  strftime_l(v35, 0x64uLL, v31, &v32, *a1);
  v29 = v35;
  v30 = v34;
  memset(&v33, 0, sizeof(v33));
  v8 = mbsrtowcs_l(v34, &v29, 0x64uLL, &v33, *a1);
  if (v8 == -1)
  {
    std::__throw_runtime_error("locale not supported");
  }

  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  if (v8)
  {
    v9 = a1 + 344;
    v10 = v34;
    v11 = &v34[v8];
    while (1)
    {
      if ((*(*a3 + 24))(a3, 0x4000, *v10))
      {
        std::wstring::push_back(a4, 32);
        do
        {
          v12 = v30 + 1;
          v30 = v12;
        }

        while (v12 != v11 && ((*(*a3 + 24))(a3, 0x4000, *v12) & 1) != 0);
        goto LABEL_16;
      }

      v28 = v30;
      v27 = 0;
      v13 = std::__scan_keyword[abi:ne200100]<wchar_t *,std::wstring *,std::ctype<wchar_t>>(&v28, v11, (a1 + 8), (a1 + 344), a3, &v27, 0) - a1 - 8;
      if (v13 <= 335)
      {
        break;
      }

      v28 = v30;
      v16 = std::__scan_keyword[abi:ne200100]<wchar_t *,std::wstring *,std::ctype<wchar_t>>(&v28, v11, (a1 + 344), (a1 + 920), a3, &v27, 0) - v9;
      if (v16 <= 575)
      {
        std::wstring::push_back(a4, 37);
        if (v16 >= 288)
        {
          v17 = 98;
        }

        else
        {
          v17 = 66;
        }

        std::wstring::push_back(a4, v17);
        if (a2 == 120)
        {
          v18 = (v9 + 8 * (v16 >> 3));
          if (*(v18 + 23) < 0)
          {
            v18 = *v18;
          }

          if ((*(*a3 + 24))(a3, 1024, *v18))
          {
            size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
            if ((size & 0x80u) == 0)
            {
              v20 = a4;
            }

            else
            {
              v20 = a4->__r_.__value_.__r.__words[0];
            }

            if ((size & 0x80u) != 0)
            {
              size = a4->__r_.__value_.__l.__size_;
            }

            v20->__r_.__value_.__s.__data_[size - 1] = 109;
          }
        }

        goto LABEL_14;
      }

      v21 = *(a1 + 943);
      if (v21 < 0)
      {
        v21 = *(a1 + 928);
      }

      v22 = *(a1 + 967);
      if (v22 < 0)
      {
        v22 = *(a1 + 952);
      }

      if (v21 + v22)
      {
        v28 = v30;
        if (std::__scan_keyword[abi:ne200100]<wchar_t *,std::wstring *,std::ctype<wchar_t>>(&v28, v11, (a1 + 920), (a1 + 968), a3, &v27, 0) - a1 - 920 <= 47)
        {
          std::wstring::push_back(a4, 37);
          std::wstring::push_back(a4, 112);
          goto LABEL_14;
        }
      }

      v28 = v30;
      if (!(*(*a3 + 24))(a3, 1024, *v30))
      {
        if ((*(*a3 + 104))(a3, *v30, 0) == 37)
        {
          std::wstring::push_back(a4, 37);
          std::wstring::push_back(a4, 37);
        }

        else
        {
          std::wstring::push_back(a4, *v30);
        }

        v15 = v30 + 1;
        goto LABEL_15;
      }

      v23 = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,wchar_t *>(&v30, v11, &v27, a3, 4);
      if (v23 <= 30)
      {
        if (v23 <= 10)
        {
          if (v23 == 6)
          {
            std::wstring::push_back(a4, 37);
            v24 = 119;
          }

          else
          {
            if (v23 != 7)
            {
LABEL_70:
              for (i = v28; i != v30; i = ++v28)
              {
                std::wstring::push_back(a4, *i);
              }

              goto LABEL_16;
            }

            std::wstring::push_back(a4, 37);
            v24 = 117;
          }
        }

        else
        {
          switch(v23)
          {
            case 11:
              std::wstring::push_back(a4, 37);
              v24 = 73;
              break;
            case 12:
              std::wstring::push_back(a4, 37);
              v24 = 109;
              break;
            case 23:
              std::wstring::push_back(a4, 37);
              v24 = 72;
              break;
            default:
              goto LABEL_70;
          }
        }
      }

      else if (v23 > 60)
      {
        switch(v23)
        {
          case 61:
            std::wstring::push_back(a4, 37);
            v24 = 121;
            break;
          case 364:
            std::wstring::push_back(a4, 37);
            v24 = 106;
            break;
          case 2061:
            std::wstring::push_back(a4, 37);
            v24 = 89;
            break;
          default:
            goto LABEL_70;
        }
      }

      else
      {
        switch(v23)
        {
          case 31:
            std::wstring::push_back(a4, 37);
            v24 = 100;
            break;
          case 55:
            std::wstring::push_back(a4, 37);
            v24 = 77;
            break;
          case 59:
            std::wstring::push_back(a4, 37);
            v24 = 83;
            break;
          default:
            goto LABEL_70;
        }
      }

      std::wstring::push_back(a4, v24);
LABEL_16:
      v10 = v30;
      if (v30 == v11)
      {
        goto LABEL_73;
      }
    }

    std::wstring::push_back(a4, 37);
    if (v13 >= 168)
    {
      v14 = 97;
    }

    else
    {
      v14 = 65;
    }

    std::wstring::push_back(a4, v14);
LABEL_14:
    v15 = v28;
LABEL_15:
    v30 = v15;
    goto LABEL_16;
  }

LABEL_73:
  v26 = *MEMORY[0x1E69E9840];
}

void sub_1922EC3A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    MEMORY[0x193B0CA40](*v1, 4 * *(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__scan_keyword[abi:ne200100]<wchar_t *,std::wstring *,std::ctype<wchar_t>>(unsigned int **a1, unsigned int *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, _DWORD *a6, char a7)
{
  v10 = a3;
  v47 = *MEMORY[0x1E69E9840];
  v12 = a4 - a3;
  v13 = 0xAAAAAAAAAAAAAAABLL * v12;
  v45 = a7;
  if (0xAAAAAAAAAAAAAAABLL * v12 < 0x65)
  {
    v14 = 0;
    v42 = &v46;
  }

  else
  {
    v14 = malloc_type_malloc(0xAAAAAAAAAAAAAAABLL * v12, 0x100004077774924uLL);
    a7 = v45;
    v42 = v14;
    if (!v14)
    {
      std::__throw_bad_alloc();
    }
  }

  v39 = a6;
  v40 = v14;
  if (v10 == a4)
  {
    v15 = 0;
    v17 = v42;
  }

  else
  {
    v15 = 0;
    v16 = v10;
    v17 = v42;
    v18 = v42;
    do
    {
      v19 = *(v16 + 23);
      if (v19 < 0)
      {
        v19 = v16[1];
      }

      v20 = v19 == 0;
      v21 = v19 == 0;
      if (v20)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      if (v20)
      {
        ++v15;
      }

      v13 -= v21;
      *v18++ = v22;
      v16 += 3;
    }

    while (v16 != a4);
  }

  v23 = *a1;
  if (*a1 != a2 && v13 != 0)
  {
    v25 = 0;
    v41 = v10;
    v43 = a1;
    while (1)
    {
      v26 = *v23;
      if ((a7 & 1) == 0)
      {
        LODWORD(v26) = (*(*a5 + 56))(a5, v26);
        a7 = v45;
      }

      if (v10 == a4)
      {
        break;
      }

      v27 = 0;
      v28 = v25 + 1;
      do
      {
        if (*v17 == 1)
        {
          v29 = v10;
          if (*(v10 + 23) < 0)
          {
            v29 = *v10;
          }

          v30 = *(v29 + v25);
          if ((a7 & 1) == 0)
          {
            LODWORD(v30) = (*(*a5 + 56))(a5, v30);
            a7 = v45;
          }

          if (v26 == v30)
          {
            v31 = *(v10 + 23);
            if (v31 < 0)
            {
              v31 = v10[1];
            }

            if (v31 == v28)
            {
              *v17 = 2;
              --v13;
              ++v15;
            }

            v27 = 1;
          }

          else
          {
            *v17 = 0;
            --v13;
          }
        }

        v10 += 3;
        ++v17;
      }

      while (v10 != a4);
      v32 = v43;
      v23 = *v43;
      if ((v27 & 1) == 0)
      {
        v10 = v41;
        v17 = v42;
        goto LABEL_52;
      }

      *v43 = ++v23;
      v10 = v41;
      v17 = v42;
      if (v15 + v13 >= 2)
      {
        v33 = v41;
        v34 = v42;
        do
        {
          if (*v34 == 2)
          {
            v35 = *(v33 + 23);
            if (v35 < 0)
            {
              v35 = v33[1];
            }

            if (v35 != v28)
            {
              *v34 = 0;
              --v15;
            }
          }

          v33 += 3;
          ++v34;
        }

        while (v33 != a4);
        goto LABEL_50;
      }

LABEL_52:
      ++v25;
      if (v23 == a2 || v13 == 0)
      {
        goto LABEL_57;
      }
    }

    v32 = v43;
LABEL_50:
    v23 = *v32;
    goto LABEL_52;
  }

LABEL_57:
  if (v23 == a2)
  {
    *v39 |= 2u;
  }

  while (v10 != a4)
  {
    if (*v17 == 2)
    {
      goto LABEL_63;
    }

    v10 += 3;
    ++v17;
  }

  *v39 |= 4u;
LABEL_63:
  if (v40)
  {
    free(v40);
  }

  v37 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1922EC704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__get_up_to_n_digits[abi:ne200100]<wchar_t,wchar_t *>(unsigned int **a1, unsigned int *a2, _DWORD *a3, uint64_t a4, int a5)
{
  if (*a1 == a2)
  {
    v13 = 0;
    v18 = 6;
    goto LABEL_17;
  }

  v10 = **a1;
  if (!(*(*a4 + 24))(a4, 1024, v10))
  {
    v13 = 0;
    v18 = 4;
    goto LABEL_17;
  }

  v11 = (*(*a4 + 104))(a4, v10, 0);
  v12 = *a1 + 1;
  *a1 = v12;
  v13 = (v11 - 48);
  if (v12 == a2 || a5 < 2)
  {
LABEL_13:
    if (v12 != a2)
    {
      return v13;
    }

    v18 = 2;
LABEL_17:
    *a3 |= v18;
    return v13;
  }

  while (1)
  {
    v15 = *v12;
    if (!(*(*a4 + 24))(a4, 1024, v15))
    {
      return v13;
    }

    v16 = (*(*a4 + 104))(a4, v15, 0);
    v12 = *a1 + 1;
    *a1 = v12;
    v13 = (v16 + 10 * v13 - 48);
    if (v12 == a2 || a5-- <= 2)
    {
      goto LABEL_13;
    }
  }
}

double std::__time_get_storage<char>::init(uint64_t a1, void *a2)
{
  v4 = 0;
  v13 = *MEMORY[0x1E69E9840];
  memset(&v11, 0, sizeof(v11));
  v5 = (a1 + 176);
  do
  {
    v11.tm_wday = v4;
    strftime_l(__s, 0x64uLL, "%A", &v11, *a1);
    std::string::__assign_external(v5 - 7, __s);
    strftime_l(__s, 0x64uLL, "%a", &v11, *a1);
    std::string::__assign_external(v5, __s);
    ++v4;
    ++v5;
  }

  while (v4 != 7);
  v6 = 0;
  v7 = (a1 + 632);
  do
  {
    v11.tm_mon = v6;
    strftime_l(__s, 0x64uLL, "%B", &v11, *a1);
    std::string::__assign_external(v7 - 12, __s);
    strftime_l(__s, 0x64uLL, "%b", &v11, *a1);
    std::string::__assign_external(v7, __s);
    ++v6;
    ++v7;
  }

  while (v6 != 12);
  v11.tm_hour = 1;
  strftime_l(__s, 0x64uLL, "%p", &v11, *a1);
  std::string::__assign_external((a1 + 920), __s);
  v11.tm_hour = 13;
  strftime_l(__s, 0x64uLL, "%p", &v11, *a1);
  std::string::__assign_external((a1 + 944), __s);
  std::__time_get_storage<char>::__analyze(a1, 99, a2, &v10);
  if (*(a1 + 991) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 968), *(a1 + 984) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(a1 + 968) = v10;
  std::__time_get_storage<char>::__analyze(a1, 114, a2, &v10);
  if (*(a1 + 1015) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 992), *(a1 + 1008) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(a1 + 992) = v10;
  std::__time_get_storage<char>::__analyze(a1, 120, a2, &v10);
  if (*(a1 + 1039) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 1016), *(a1 + 1032) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(a1 + 1016) = v10;
  std::__time_get_storage<char>::__analyze(a1, 88, a2, &v10);
  if (*(a1 + 1063) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 1040), *(a1 + 1056) & 0x7FFFFFFFFFFFFFFFLL);
  }

  result = *&v10.__r_.__value_.__l.__data_;
  *(a1 + 1040) = v10;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

double std::__time_get_storage<wchar_t>::init(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v22 = *MEMORY[0x1E69E9840];
  memset(&v18, 0, sizeof(v18));
  v5 = (a1 + 176);
  memset(&v19, 0, sizeof(v19));
  do
  {
    v18.tm_wday = v4;
    strftime_l(v21, 0x64uLL, "%A", &v18, *a1);
    memset(&v19, 0, sizeof(v19));
    v16.__r_.__value_.__r.__words[0] = v21;
    v6 = mbsrtowcs_l(v20, &v16, 0x64uLL, &v19, *a1);
    if (v6 + 1 <= 1)
    {
      goto LABEL_20;
    }

    std::wstring::__assign_trivial[abi:ne200100]<wchar_t *,wchar_t *>(v5 - 7, v20, &v20[v6], v6);
    strftime_l(v21, 0x64uLL, "%a", &v18, *a1);
    memset(&v19, 0, sizeof(v19));
    v16.__r_.__value_.__r.__words[0] = v21;
    v7 = mbsrtowcs_l(v20, &v16, 0x64uLL, &v19, *a1);
    if (v7 + 1 <= 1)
    {
      goto LABEL_20;
    }

    std::wstring::__assign_trivial[abi:ne200100]<wchar_t *,wchar_t *>(v5, v20, &v20[v7], v7);
    ++v4;
    ++v5;
  }

  while (v4 != 7);
  v8 = 0;
  v9 = (a1 + 632);
  do
  {
    v18.tm_mon = v8;
    strftime_l(v21, 0x64uLL, "%B", &v18, *a1);
    memset(&v19, 0, sizeof(v19));
    v16.__r_.__value_.__r.__words[0] = v21;
    v10 = mbsrtowcs_l(v20, &v16, 0x64uLL, &v19, *a1);
    if (v10 + 1 <= 1)
    {
      goto LABEL_20;
    }

    std::wstring::__assign_trivial[abi:ne200100]<wchar_t *,wchar_t *>(v9 - 12, v20, &v20[v10], v10);
    strftime_l(v21, 0x64uLL, "%b", &v18, *a1);
    memset(&v19, 0, sizeof(v19));
    v16.__r_.__value_.__r.__words[0] = v21;
    v11 = mbsrtowcs_l(v20, &v16, 0x64uLL, &v19, *a1);
    if (v11 + 1 <= 1)
    {
      goto LABEL_20;
    }

    std::wstring::__assign_trivial[abi:ne200100]<wchar_t *,wchar_t *>(v9, v20, &v20[v11], v11);
    ++v8;
    ++v9;
  }

  while (v8 != 12);
  v18.tm_hour = 1;
  strftime_l(v21, 0x64uLL, "%p", &v18, *a1);
  memset(&v19, 0, sizeof(v19));
  v17 = v21;
  v12 = mbsrtowcs_l(v20, &v17, 0x64uLL, &v19, *a1);
  if (v12 == -1 || (std::wstring::__assign_trivial[abi:ne200100]<wchar_t *,wchar_t *>((a1 + 920), v20, &v20[v12], v12), v18.tm_hour = 13, strftime_l(v21, 0x64uLL, "%p", &v18, *a1), memset(&v19, 0, sizeof(v19)), v17 = v21, v13 = mbsrtowcs_l(v20, &v17, 0x64uLL, &v19, *a1), v13 == -1))
  {
LABEL_20:
    std::__throw_runtime_error("locale not supported");
  }

  std::wstring::__assign_trivial[abi:ne200100]<wchar_t *,wchar_t *>((a1 + 944), v20, &v20[v13], v13);
  std::__time_get_storage<wchar_t>::__analyze(a1, 99, a2, &v16);
  if (*(a1 + 991) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 968), 4 * *(a1 + 984));
  }

  *(a1 + 968) = v16;
  std::__time_get_storage<wchar_t>::__analyze(a1, 114, a2, &v16);
  if (*(a1 + 1015) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 992), 4 * *(a1 + 1008));
  }

  *(a1 + 992) = v16;
  std::__time_get_storage<wchar_t>::__analyze(a1, 120, a2, &v16);
  if (*(a1 + 1039) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 1016), 4 * *(a1 + 1032));
  }

  *(a1 + 1016) = v16;
  std::__time_get_storage<wchar_t>::__analyze(a1, 88, a2, &v16);
  if (*(a1 + 1063) < 0)
  {
    MEMORY[0x193B0CA40](*(a1 + 1040), 4 * *(a1 + 1056));
  }

  result = *&v16.__r_.__value_.__l.__data_;
  *(a1 + 1040) = v16;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

std::__time_get *std::__time_get_storage<char>::__time_get_storage(std::__time_get *a1, const char *a2)
{
  v4 = std::__time_get::__time_get(a1, a2);
  bzero(&v4[1], 0x420uLL);
  std::ctype_byname<char>::ctype_byname(&v6, a2, 1uLL);
  v6.__vftable = &unk_1F06C3B08;
  std::__time_get_storage<char>::init(a1, &v6);
  std::ctype_byname<char>::~ctype_byname(&v6);
  return a1;
}

void sub_1922ED0B4(_Unwind_Exception *a1, std::ctype_byname<char> *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::ctype_byname<char>::~ctype_byname(&a10);
  if (*(v10 + 1063) < 0)
  {
    MEMORY[0x193B0CA40](*(v10 + 1040), *(v10 + 1056) & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (*(v10 + 1039) < 0)
  {
    MEMORY[0x193B0CA40](*(v10 + 1016), *(v10 + 1032) & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (*(v10 + 1015) < 0)
  {
    MEMORY[0x193B0CA40](*(v10 + 992), *(v10 + 1008) & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (*(v10 + 991) < 0)
  {
    MEMORY[0x193B0CA40](*(v10 + 968), *(v10 + 984) & 0x7FFFFFFFFFFFFFFFLL);
  }

  v12 = (v10 + 967);
  v13 = -48;
  while (1)
  {
    if (*v12 < 0)
    {
      MEMORY[0x193B0CA40](*(v12 - 23), *(v12 - 7) & 0x7FFFFFFFFFFFFFFFLL);
    }

    v12 -= 24;
    v13 += 24;
    if (!v13)
    {
      v14 = (v10 + 919);
      v15 = -576;
      while (1)
      {
        if (*v14 < 0)
        {
          MEMORY[0x193B0CA40](*(v14 - 23), *(v14 - 7) & 0x7FFFFFFFFFFFFFFFLL);
        }

        v14 -= 24;
        v15 += 24;
        if (!v15)
        {
          v16 = (v10 + 343);
          v17 = -336;
          while (1)
          {
            if (*v16 < 0)
            {
              MEMORY[0x193B0CA40](*(v16 - 23), *(v16 - 7) & 0x7FFFFFFFFFFFFFFFLL);
            }

            v16 -= 24;
            v17 += 24;
            if (!v17)
            {
              std::__time_get::~__time_get(v10);
              _Unwind_Resume(a1);
            }
          }
        }
      }
    }
  }
}

std::__time_get *std::__time_get_storage<char>::__time_get_storage(std::__time_get *a1, const std::string *a2)
{
  v4 = std::__time_get::__time_get(a1, a2);
  bzero(&v4[1], 0x420uLL);
  std::ctype_byname<char>::ctype_byname(&v6, a2, 1uLL);
  v6.__vftable = &unk_1F06C3B08;
  std::__time_get_storage<char>::init(a1, &v6);
  std::ctype_byname<char>::~ctype_byname(&v6);
  return a1;
}

void sub_1922ED250(_Unwind_Exception *a1, std::ctype_byname<char> *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::ctype_byname<char>::~ctype_byname(&a10);
  if (*(v10 + 1063) < 0)
  {
    MEMORY[0x193B0CA40](*(v10 + 1040), *(v10 + 1056) & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (*(v10 + 1039) < 0)
  {
    MEMORY[0x193B0CA40](*(v10 + 1016), *(v10 + 1032) & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (*(v10 + 1015) < 0)
  {
    MEMORY[0x193B0CA40](*(v10 + 992), *(v10 + 1008) & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (*(v10 + 991) < 0)
  {
    MEMORY[0x193B0CA40](*(v10 + 968), *(v10 + 984) & 0x7FFFFFFFFFFFFFFFLL);
  }

  v12 = (v10 + 967);
  v13 = -48;
  while (1)
  {
    if (*v12 < 0)
    {
      MEMORY[0x193B0CA40](*(v12 - 23), *(v12 - 7) & 0x7FFFFFFFFFFFFFFFLL);
    }

    v12 -= 24;
    v13 += 24;
    if (!v13)
    {
      v14 = (v10 + 919);
      v15 = -576;
      while (1)
      {
        if (*v14 < 0)
        {
          MEMORY[0x193B0CA40](*(v14 - 23), *(v14 - 7) & 0x7FFFFFFFFFFFFFFFLL);
        }

        v14 -= 24;
        v15 += 24;
        if (!v15)
        {
          v16 = (v10 + 343);
          v17 = -336;
          while (1)
          {
            if (*v16 < 0)
            {
              MEMORY[0x193B0CA40](*(v16 - 23), *(v16 - 7) & 0x7FFFFFFFFFFFFFFFLL);
            }

            v16 -= 24;
            v17 += 24;
            if (!v17)
            {
              std::__time_get::~__time_get(v10);
              _Unwind_Resume(a1);
            }
          }
        }
      }
    }
  }
}

std::__time_get *std::__time_get_storage<wchar_t>::__time_get_storage(std::__time_get *a1, const char *a2)
{
  v4 = std::__time_get::__time_get(a1, a2);
  bzero(&v4[1], 0x420uLL);
  std::ctype_byname<wchar_t>::ctype_byname(&v6, a2, 1uLL);
  v6.__vftable = &unk_1F06C3B88;
  std::__time_get_storage<wchar_t>::init(a1, &v6);
  std::ctype_byname<wchar_t>::~ctype_byname(&v6);
  return a1;
}

void sub_1922ED3E8(_Unwind_Exception *a1, std::ctype_byname<wchar_t> *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::ctype_byname<wchar_t>::~ctype_byname(&a10);
  if (*(v10 + 1063) < 0)
  {
    MEMORY[0x193B0CA40](*(v10 + 1040), 4 * *(v10 + 1056));
  }

  if (*(v10 + 1039) < 0)
  {
    MEMORY[0x193B0CA40](*(v10 + 1016), 4 * *(v10 + 1032));
  }

  if (*(v10 + 1015) < 0)
  {
    MEMORY[0x193B0CA40](*(v10 + 992), 4 * *(v10 + 1008));
  }

  if (*(v10 + 991) < 0)
  {
    MEMORY[0x193B0CA40](*(v10 + 968), 4 * *(v10 + 984));
  }

  v12 = (v10 + 967);
  v13 = -48;
  while (1)
  {
    if (*v12 < 0)
    {
      MEMORY[0x193B0CA40](*(v12 - 23), 4 * *(v12 - 7));
    }

    v12 -= 24;
    v13 += 24;
    if (!v13)
    {
      v14 = (v10 + 919);
      v15 = -576;
      while (1)
      {
        if (*v14 < 0)
        {
          MEMORY[0x193B0CA40](*(v14 - 23), 4 * *(v14 - 7));
        }

        v14 -= 24;
        v15 += 24;
        if (!v15)
        {
          v16 = (v10 + 343);
          v17 = -336;
          while (1)
          {
            if (*v16 < 0)
            {
              MEMORY[0x193B0CA40](*(v16 - 23), 4 * *(v16 - 7));
            }

            v16 -= 24;
            v17 += 24;
            if (!v17)
            {
              std::__time_get::~__time_get(v10);
              _Unwind_Resume(a1);
            }
          }
        }
      }
    }
  }
}

std::__time_get *std::__time_get_storage<wchar_t>::__time_get_storage(std::__time_get *a1, const std::string *a2)
{
  v4 = std::__time_get::__time_get(a1, a2);
  bzero(&v4[1], 0x420uLL);
  std::ctype_byname<wchar_t>::ctype_byname(&v6, a2, 1uLL);
  v6.__vftable = &unk_1F06C3B88;
  std::__time_get_storage<wchar_t>::init(a1, &v6);
  std::ctype_byname<wchar_t>::~ctype_byname(&v6);
  return a1;
}

void sub_1922ED584(_Unwind_Exception *a1, std::ctype_byname<wchar_t> *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::ctype_byname<wchar_t>::~ctype_byname(&a10);
  if (*(v10 + 1063) < 0)
  {
    MEMORY[0x193B0CA40](*(v10 + 1040), 4 * *(v10 + 1056));
  }

  if (*(v10 + 1039) < 0)
  {
    MEMORY[0x193B0CA40](*(v10 + 1016), 4 * *(v10 + 1032));
  }

  if (*(v10 + 1015) < 0)
  {
    MEMORY[0x193B0CA40](*(v10 + 992), 4 * *(v10 + 1008));
  }

  if (*(v10 + 991) < 0)
  {
    MEMORY[0x193B0CA40](*(v10 + 968), 4 * *(v10 + 984));
  }

  v12 = (v10 + 967);
  v13 = -48;
  while (1)
  {
    if (*v12 < 0)
    {
      MEMORY[0x193B0CA40](*(v12 - 23), 4 * *(v12 - 7));
    }

    v12 -= 24;
    v13 += 24;
    if (!v13)
    {
      v14 = (v10 + 919);
      v15 = -576;
      while (1)
      {
        if (*v14 < 0)
        {
          MEMORY[0x193B0CA40](*(v14 - 23), 4 * *(v14 - 7));
        }

        v14 -= 24;
        v15 += 24;
        if (!v15)
        {
          v16 = (v10 + 343);
          v17 = -336;
          while (1)
          {
            if (*v16 < 0)
            {
              MEMORY[0x193B0CA40](*(v16 - 23), 4 * *(v16 - 7));
            }

            v16 -= 24;
            v17 += 24;
            if (!v17)
            {
              std::__time_get::~__time_get(v10);
              _Unwind_Resume(a1);
            }
          }
        }
      }
    }
  }
}

uint64_t std::__time_get_storage<char>::__do_date_order(uint64_t a1)
{
  v1 = (a1 + 1016);
  v2 = *(a1 + 1039);
  for (i = 5; ; ++i)
  {
    v4 = *(a1 + 1039);
    if ((*(a1 + 1039) & 0x80) != 0)
    {
      v4 = *(a1 + 1024);
    }

    v5 = i - 5;
    if (v4 <= v5)
    {
      break;
    }

    v6 = (a1 + 1016);
    if ((*(a1 + 1039) & 0x80) != 0)
    {
      v6 = *v1;
    }

    if (*(v6 + v5) == 37)
    {
      break;
    }
  }

  v7 = (a1 + 1016);
  if ((*(a1 + 1039) & 0x80) != 0)
  {
    v7 = *v1;
  }

  v8 = *(v7 + i - 4);
  if (v8 <= 0x6C)
  {
    if (v8 != 89)
    {
      if (v8 == 100)
      {
        while (1)
        {
          v9 = *(a1 + 1039);
          if ((*(a1 + 1039) & 0x80) != 0)
          {
            v9 = *(a1 + 1024);
          }

          v10 = i - 3;
          if (v9 <= v10)
          {
            break;
          }

          v11 = (a1 + 1016);
          if ((*(a1 + 1039) & 0x80) != 0)
          {
            v11 = *v1;
          }

          if (*(v11 + v10) == 37)
          {
            break;
          }

          ++i;
        }

        v34 = *(a1 + 1039);
        if ((*(a1 + 1039) & 0x80) != 0)
        {
          v34 = *(a1 + 1024);
        }

        if (v34 != v10)
        {
          v35 = (a1 + 1016);
          if ((*(a1 + 1039) & 0x80) != 0)
          {
            v35 = *v1;
          }

          if (*(v35 + i - 2) == 109)
          {
            while (1)
            {
              v36 = *(a1 + 1039);
              if ((*(a1 + 1039) & 0x80) != 0)
              {
                v36 = *(a1 + 1024);
              }

              v37 = i - 1;
              if (v36 <= v37)
              {
                break;
              }

              v38 = (a1 + 1016);
              if ((*(a1 + 1039) & 0x80) != 0)
              {
                v38 = *v1;
              }

              if (*(v38 + v37) == 37)
              {
                break;
              }

              ++i;
            }

            v40 = *(a1 + 1039);
            if ((*(a1 + 1039) & 0x80) != 0)
            {
              v40 = *(a1 + 1024);
            }

            if (v40 != v37)
            {
              v41 = (a1 + 1016);
              if ((*(a1 + 1039) & 0x80) != 0)
              {
                v41 = *v1;
              }

              if (*(v41 + i) == 121)
              {
                return 1;
              }

              if ((*(a1 + 1039) & 0x80) != 0)
              {
                v1 = *v1;
              }

              if (*(v1 + i) == 89)
              {
                return 1;
              }
            }
          }
        }
      }

      return 0;
    }

    goto LABEL_28;
  }

  if (v8 != 109)
  {
    if (v8 == 121)
    {
      while (1)
      {
LABEL_28:
        v13 = *(a1 + 1039);
        if ((*(a1 + 1039) & 0x80) != 0)
        {
          v13 = *(a1 + 1024);
        }

        v14 = i - 3;
        if (v13 <= v14)
        {
          break;
        }

        v12 = a1 + 1016;
        if ((*(a1 + 1039) & 0x80) != 0)
        {
          v12 = *v1;
        }

        if (*(v12 + v14) == 37)
        {
          break;
        }

        ++i;
      }

      v15 = *(a1 + 1039);
      if ((*(a1 + 1039) & 0x80) != 0)
      {
        v15 = *(a1 + 1024);
      }

      if (v15 != v14)
      {
        v16 = a1 + 1016;
        if ((*(a1 + 1039) & 0x80) != 0)
        {
          v16 = *v1;
        }

        v17 = *(v16 + i - 2);
        if (v17 == 100)
        {
          while (1)
          {
            v30 = *(a1 + 1039);
            if ((*(a1 + 1039) & 0x80) != 0)
            {
              v30 = *(a1 + 1024);
            }

            v31 = i - 1;
            if (v30 <= v31)
            {
              break;
            }

            v29 = a1 + 1016;
            if ((*(a1 + 1039) & 0x80) != 0)
            {
              v29 = *v1;
            }

            if (*(v29 + v31) == 37)
            {
              break;
            }

            ++i;
          }

          v32 = *(a1 + 1039);
          if ((*(a1 + 1039) & 0x80) != 0)
          {
            v32 = *(a1 + 1024);
          }

          if (v32 != v31)
          {
            if ((*(a1 + 1039) & 0x80) != 0)
            {
              v1 = *v1;
            }

            if (*(v1 + i) == 109)
            {
              return 4;
            }
          }
        }

        else if (v17 == 109)
        {
          while (1)
          {
            v18 = *(a1 + 1039);
            if ((*(a1 + 1039) & 0x80) != 0)
            {
              v18 = *(a1 + 1024);
            }

            v19 = i - 1;
            if (v18 <= v19)
            {
              break;
            }

            v20 = a1 + 1016;
            if ((*(a1 + 1039) & 0x80) != 0)
            {
              v20 = *v1;
            }

            if (*(v20 + v19) == 37)
            {
              break;
            }

            ++i;
          }

          v39 = *(a1 + 1039);
          if ((*(a1 + 1039) & 0x80) != 0)
          {
            v39 = *(a1 + 1024);
          }

          if (v39 != v19)
          {
            if ((*(a1 + 1039) & 0x80) != 0)
            {
              v1 = *v1;
            }

            if (*(v1 + i) == 100)
            {
              return 3;
            }
          }
        }
      }
    }

    return 0;
  }

  while (1)
  {
    v22 = *(a1 + 1039);
    if ((*(a1 + 1039) & 0x80) != 0)
    {
      v22 = *(a1 + 1024);
    }

    v23 = i - 3;
    if (v22 <= v23)
    {
      break;
    }

    v21 = a1 + 1016;
    if ((*(a1 + 1039) & 0x80) != 0)
    {
      v21 = *v1;
    }

    if (*(v21 + v23) == 37)
    {
      break;
    }

    ++i;
  }

  v24 = *(a1 + 1039);
  if ((*(a1 + 1039) & 0x80) != 0)
  {
    v24 = *(a1 + 1024);
  }

  if (v24 == v23)
  {
    return 0;
  }

  v25 = a1 + 1016;
  if ((*(a1 + 1039) & 0x80) != 0)
  {
    v25 = *v1;
  }

  if (*(v25 + i - 2) != 100)
  {
    return 0;
  }

  while (1)
  {
    v26 = *(a1 + 1039);
    if ((*(a1 + 1039) & 0x80) != 0)
    {
      v26 = *(a1 + 1024);
    }

    v27 = i - 1;
    if (v26 <= v27)
    {
      break;
    }

    v28 = a1 + 1016;
    if ((*(a1 + 1039) & 0x80) != 0)
    {
      v28 = *v1;
    }

    if (*(v28 + v27) == 37)
    {
      break;
    }

    ++i;
  }

  v42 = *(a1 + 1039);
  if ((*(a1 + 1039) & 0x80) != 0)
  {
    v42 = *(a1 + 1024);
  }

  if (v42 == v27)
  {
    return 0;
  }

  v43 = a1 + 1016;
  if ((*(a1 + 1039) & 0x80) != 0)
  {
    v43 = *v1;
  }

  if (*(v43 + i) != 121)
  {
    if ((*(a1 + 1039) & 0x80) != 0)
    {
      v1 = *v1;
    }

    if (*(v1 + i) != 89)
    {
      return 0;
    }
  }

  return 2;
}

uint64_t std::__time_get_storage<wchar_t>::__do_date_order(uint64_t a1)
{
  v1 = (a1 + 1016);
  v2 = *(a1 + 1039);
  for (i = 5; ; ++i)
  {
    v4 = *(a1 + 1039);
    if ((*(a1 + 1039) & 0x80) != 0)
    {
      v4 = *(a1 + 1024);
    }

    v5 = i - 5;
    if (v4 <= v5)
    {
      break;
    }

    v6 = (a1 + 1016);
    if ((*(a1 + 1039) & 0x80) != 0)
    {
      v6 = *v1;
    }

    if (*(v6 + v5) == 37)
    {
      break;
    }
  }

  v7 = (a1 + 1016);
  if ((*(a1 + 1039) & 0x80) != 0)
  {
    v7 = *v1;
  }

  v8 = *(v7 + i - 4);
  if (v8 <= 108)
  {
    if (v8 != 89)
    {
      if (v8 == 100)
      {
        while (1)
        {
          v9 = *(a1 + 1039);
          if ((*(a1 + 1039) & 0x80) != 0)
          {
            v9 = *(a1 + 1024);
          }

          v10 = i - 3;
          if (v9 <= v10)
          {
            break;
          }

          v11 = (a1 + 1016);
          if ((*(a1 + 1039) & 0x80) != 0)
          {
            v11 = *v1;
          }

          if (*(v11 + v10) == 37)
          {
            break;
          }

          ++i;
        }

        v34 = *(a1 + 1039);
        if ((*(a1 + 1039) & 0x80) != 0)
        {
          v34 = *(a1 + 1024);
        }

        if (v34 != v10)
        {
          v35 = (a1 + 1016);
          if ((*(a1 + 1039) & 0x80) != 0)
          {
            v35 = *v1;
          }

          if (*(v35 + i - 2) == 109)
          {
            while (1)
            {
              v36 = *(a1 + 1039);
              if ((*(a1 + 1039) & 0x80) != 0)
              {
                v36 = *(a1 + 1024);
              }

              v37 = i - 1;
              if (v36 <= v37)
              {
                break;
              }

              v38 = (a1 + 1016);
              if ((*(a1 + 1039) & 0x80) != 0)
              {
                v38 = *v1;
              }

              if (*(v38 + v37) == 37)
              {
                break;
              }

              ++i;
            }

            v40 = *(a1 + 1039);
            if ((*(a1 + 1039) & 0x80) != 0)
            {
              v40 = *(a1 + 1024);
            }

            if (v40 != v37)
            {
              v41 = (a1 + 1016);
              if ((*(a1 + 1039) & 0x80) != 0)
              {
                v41 = *v1;
              }

              if (*(v41 + i) == 121)
              {
                return 1;
              }

              if ((*(a1 + 1039) & 0x80) != 0)
              {
                v1 = *v1;
              }

              if (*(v1 + i) == 89)
              {
                return 1;
              }
            }
          }
        }
      }

      return 0;
    }

    goto LABEL_28;
  }

  if (v8 != 109)
  {
    if (v8 == 121)
    {
      while (1)
      {
LABEL_28:
        v13 = *(a1 + 1039);
        if ((*(a1 + 1039) & 0x80) != 0)
        {
          v13 = *(a1 + 1024);
        }

        v14 = i - 3;
        if (v13 <= v14)
        {
          break;
        }

        v12 = a1 + 1016;
        if ((*(a1 + 1039) & 0x80) != 0)
        {
          v12 = *v1;
        }

        if (*(v12 + 4 * v14) == 37)
        {
          break;
        }

        ++i;
      }

      v15 = *(a1 + 1039);
      if ((*(a1 + 1039) & 0x80) != 0)
      {
        v15 = *(a1 + 1024);
      }

      if (v15 != v14)
      {
        v16 = a1 + 1016;
        if ((*(a1 + 1039) & 0x80) != 0)
        {
          v16 = *v1;
        }

        v17 = *(v16 + 4 * (i - 2));
        if (v17 == 100)
        {
          while (1)
          {
            v30 = *(a1 + 1039);
            if ((*(a1 + 1039) & 0x80) != 0)
            {
              v30 = *(a1 + 1024);
            }

            v31 = i - 1;
            if (v30 <= v31)
            {
              break;
            }

            v29 = a1 + 1016;
            if ((*(a1 + 1039) & 0x80) != 0)
            {
              v29 = *v1;
            }

            if (*(v29 + 4 * v31) == 37)
            {
              break;
            }

            ++i;
          }

          v32 = *(a1 + 1039);
          if ((*(a1 + 1039) & 0x80) != 0)
          {
            v32 = *(a1 + 1024);
          }

          if (v32 != v31)
          {
            if ((*(a1 + 1039) & 0x80) != 0)
            {
              v1 = *v1;
            }

            if (*(v1 + i) == 109)
            {
              return 4;
            }
          }
        }

        else if (v17 == 109)
        {
          while (1)
          {
            v18 = *(a1 + 1039);
            if ((*(a1 + 1039) & 0x80) != 0)
            {
              v18 = *(a1 + 1024);
            }

            v19 = i - 1;
            if (v18 <= v19)
            {
              break;
            }

            v20 = a1 + 1016;
            if ((*(a1 + 1039) & 0x80) != 0)
            {
              v20 = *v1;
            }

            if (*(v20 + 4 * v19) == 37)
            {
              break;
            }

            ++i;
          }

          v39 = *(a1 + 1039);
          if ((*(a1 + 1039) & 0x80) != 0)
          {
            v39 = *(a1 + 1024);
          }

          if (v39 != v19)
          {
            if ((*(a1 + 1039) & 0x80) != 0)
            {
              v1 = *v1;
            }

            if (*(v1 + i) == 100)
            {
              return 3;
            }
          }
        }
      }
    }

    return 0;
  }

  while (1)
  {
    v22 = *(a1 + 1039);
    if ((*(a1 + 1039) & 0x80) != 0)
    {
      v22 = *(a1 + 1024);
    }

    v23 = i - 3;
    if (v22 <= v23)
    {
      break;
    }

    v21 = a1 + 1016;
    if ((*(a1 + 1039) & 0x80) != 0)
    {
      v21 = *v1;
    }

    if (*(v21 + 4 * v23) == 37)
    {
      break;
    }

    ++i;
  }

  v24 = *(a1 + 1039);
  if ((*(a1 + 1039) & 0x80) != 0)
  {
    v24 = *(a1 + 1024);
  }

  if (v24 == v23)
  {
    return 0;
  }

  v25 = a1 + 1016;
  if ((*(a1 + 1039) & 0x80) != 0)
  {
    v25 = *v1;
  }

  if (*(v25 + 4 * (i - 2)) != 100)
  {
    return 0;
  }

  while (1)
  {
    v26 = *(a1 + 1039);
    if ((*(a1 + 1039) & 0x80) != 0)
    {
      v26 = *(a1 + 1024);
    }

    v27 = i - 1;
    if (v26 <= v27)
    {
      break;
    }

    v28 = a1 + 1016;
    if ((*(a1 + 1039) & 0x80) != 0)
    {
      v28 = *v1;
    }

    if (*(v28 + 4 * v27) == 37)
    {
      break;
    }

    ++i;
  }

  v42 = *(a1 + 1039);
  if ((*(a1 + 1039) & 0x80) != 0)
  {
    v42 = *(a1 + 1024);
  }

  if (v42 == v27)
  {
    return 0;
  }

  v43 = a1 + 1016;
  if ((*(a1 + 1039) & 0x80) != 0)
  {
    v43 = *v1;
  }

  if (*(v43 + 4 * i) != 121)
  {
    if ((*(a1 + 1039) & 0x80) != 0)
    {
      v1 = *v1;
    }

    if (*(v1 + i) != 89)
    {
      return 0;
    }
  }

  return 2;
}

std::__time_put *__cdecl std::__time_put::__time_put(std::__time_put *this, const char *__nm)
{
  v4 = newlocale(63, __nm, 0);
  this->__loc_ = v4;
  if (!v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, __nm);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("time_put_byname failed to construct for ", &v7, &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v8;
    }

    else
    {
      v6 = v8.__r_.__value_.__r.__words[0];
    }

    std::__throw_runtime_error(v6);
  }

  return this;
}

void sub_1922EDE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    std::stoi(&a12);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

std::__time_put *__cdecl std::__time_put::__time_put(std::__time_put *this, const std::string *__nm)
{
  v2 = __nm;
  if ((__nm->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __nm = __nm->__r_.__value_.__r.__words[0];
  }

  v4 = newlocale(63, __nm, 0);
  this->__loc_ = v4;
  if (!v4)
  {
    std::operator+<char>("time_put_byname failed to construct for ", &v2->__r_.__value_.__l.__data_, v7);
    if (v8 >= 0)
    {
      v6 = v7;
    }

    else
    {
      v6 = v7[0];
    }

    std::__throw_runtime_error(v6);
  }

  return this;
}

void sub_1922EDEF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::stoi(&a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__time_put::~__time_put(std::__time_put *this)
{
  loc = this->__loc_;
  if (loc)
  {
    freelocale(loc);
  }
}

void std::moneypunct_byname<char,false>::init(uint64_t a1, char *a2)
{
  v4 = newlocale(63, a2, 0);
  v14 = v4;
  if (!v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v12, a2);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("moneypunct_byname failed to construct for ", &v12, &v13);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v13;
    }

    else
    {
      v11 = v13.__r_.__value_.__r.__words[0];
    }

    std::__throw_runtime_error(v11);
  }

  v5 = localeconv_l(v4);
  if (!std::checked_string_to_char_convert((a1 + 16), v5->mon_decimal_point, v14, v6))
  {
    *(a1 + 16) = 127;
  }

  if (!std::checked_string_to_char_convert((a1 + 17), v5->mon_thousands_sep, v14, v7))
  {
    *(a1 + 17) = 127;
  }

  std::string::__assign_external((a1 + 24), v5->mon_grouping);
  std::string::__assign_external((a1 + 48), v5->currency_symbol);
  frac_digits = v5->frac_digits;
  if (frac_digits == 127)
  {
    LOBYTE(frac_digits) = 0;
  }

  *(a1 + 120) = frac_digits;
  v9 = (a1 + 72);
  if (v5->p_sign_posn)
  {
    std::string::__assign_external(v9, v5->positive_sign);
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
      *(a1 + 95) = 2;
    }

    strcpy(v9, "()");
  }

  v10 = (a1 + 96);
  if (v5->n_sign_posn)
  {
    std::string::__assign_external(v10, v5->negative_sign);
  }

  else
  {
    if (*(a1 + 119) < 0)
    {
      *(a1 + 104) = 2;
      v10 = *(a1 + 96);
    }

    else
    {
      *(a1 + 119) = 2;
    }

    strcpy(v10, "()");
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v13 = *(a1 + 48);
  }

  std::__init_pat<char>(a1 + 124, &v13, 0, v5->p_cs_precedes, v5->p_sep_by_space, v5->p_sign_posn);
  std::__init_pat<char>(a1 + 128, (a1 + 48), 0, v5->n_cs_precedes, v5->n_sep_by_space, v5->n_sign_posn);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v13.__r_.__value_.__r.__words[0], v13.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__libcpp_unique_locale::~__libcpp_unique_locale(&v14);
}

void sub_1922EE13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    std::stoi(&a13);
  }

  if (SHIBYTE(a12) < 0)
  {
    MEMORY[0x193B0CA40](a10, a12 & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__libcpp_unique_locale::~__libcpp_unique_locale((v18 - 24));
  _Unwind_Resume(a1);
}

void std::__init_pat<char>(uint64_t a1, std::string *this, int a3, int a4, int a5, int a6)
{
  v8 = this;
  if (a3)
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    v11 = size == 4;
  }

  else
  {
    v11 = 0;
  }

  if (a4 != 1)
  {
    if (a4)
    {
      goto LABEL_63;
    }

    if (v11)
    {
      v12 = HIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((v12 & 0x80u) == 0)
      {
        v13 = (this | 3);
      }

      else
      {
        v13 = (this->__r_.__value_.__r.__words[0] + 3);
      }

      if ((v12 & 0x80u) == 0)
      {
        v14 = v8;
      }

      else
      {
        v14 = v8->__r_.__value_.__r.__words[0];
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = v8->__r_.__value_.__l.__size_;
      }

      std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<char *>,std::__wrap_iter<char *>>(v14, v13, &v14[v12]);
    }

    if (a6 > 1)
    {
      switch(a6)
      {
        case 2:
          *a1 = 4;
          *(a1 + 3) = 3;
          if (a5 != 2)
          {
            if (a5 == 1)
            {
              if (!v11)
              {
                std::string::insert(v8, 0, 1uLL, 32);
              }

              goto LABEL_48;
            }

            goto LABEL_47;
          }

          break;
        case 3:
          *a1 = 4;
          *(a1 + 3) = 2;
          if (a5 == 2)
          {
            v15 = 3;
            goto LABEL_79;
          }

          if (a5 != 1)
          {
            if (!a5)
            {
              v16 = 768;
              goto LABEL_57;
            }

            goto LABEL_63;
          }

          v19 = 769;
          goto LABEL_90;
        case 4:
          *a1 = 4;
          *(a1 + 3) = 3;
          if (a5 != 2)
          {
            if (a5 == 1)
            {
              v15 = 512;
LABEL_79:
              *(a1 + 1) = v15;
LABEL_80:
              if (!v11)
              {

                std::string::insert(v8, 0, 1uLL, 32);
              }

              return;
            }

LABEL_47:
            if (!a5)
            {
LABEL_48:
              v16 = 512;
              goto LABEL_57;
            }

LABEL_63:
            *a1 = 67109634;
            return;
          }

          break;
        default:
          goto LABEL_63;
      }

      v19 = 258;
LABEL_90:
      *(a1 + 1) = v19;
      if (v11)
      {

        std::string::erase(v8, 0, 1uLL);
      }

      return;
    }

    if (a6)
    {
      if (a6 != 1)
      {
        goto LABEL_63;
      }

      *a1 = 3;
      *(a1 + 3) = 2;
      if (a5 == 2)
      {
        v19 = 1025;
        goto LABEL_90;
      }

      if (a5 == 1)
      {
        v15 = 4;
        goto LABEL_79;
      }

      if (a5)
      {
        goto LABEL_63;
      }

      v16 = 4;
LABEL_57:
      *(a1 + 1) = v16;
      return;
    }

    v17 = 33555459;
LABEL_60:
    *a1 = v17;
    if (!a5 || a5 == 2)
    {
      return;
    }

    if (a5 == 1)
    {
      goto LABEL_80;
    }

    goto LABEL_63;
  }

  if (a6 <= 1)
  {
    if (!a6)
    {
      v17 = 67109379;
      goto LABEL_60;
    }

    if (a6 != 1)
    {
      goto LABEL_63;
    }

    goto LABEL_41;
  }

  if (a6 == 2)
  {
    *a1 = 2;
    *(a1 + 3) = 3;
    if (a5 != 2)
    {
      if (a5 != 1)
      {
        if (!a5)
        {
          v16 = 1024;
          goto LABEL_57;
        }

        goto LABEL_63;
      }

      v18 = 1024;
      goto LABEL_85;
    }

    v20 = 260;
LABEL_75:
    *(a1 + 1) = v20;
    if (v11)
    {
      v21 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      if (v21 < 0)
      {
        v22 = this->__r_.__value_.__l.__size_ - 1;
        this->__r_.__value_.__l.__size_ = v22;
        v8 = this->__r_.__value_.__r.__words[0];
      }

      else
      {
        v22 = v21 - 1;
        *(&this->__r_.__value_.__s + 23) = v22 & 0x7F;
      }

      v8->__r_.__value_.__s.__data_[v22] = 0;
    }

    return;
  }

  if (a6 == 3)
  {
LABEL_41:
    *a1 = 3;
    *(a1 + 3) = 4;
    if (a5 != 2)
    {
      if (a5 != 1)
      {
        if (a5)
        {
          goto LABEL_63;
        }

        v16 = 2;
        goto LABEL_57;
      }

      v18 = 2;
      goto LABEL_85;
    }

    v20 = 513;
    goto LABEL_75;
  }

  if (a6 != 4)
  {
    goto LABEL_63;
  }

  *a1 = 2;
  *(a1 + 3) = 4;
  if (a5 != 2)
  {
    if (a5 != 1)
    {
      if (a5)
      {
        goto LABEL_63;
      }

      v16 = 3;
      goto LABEL_57;
    }

    v20 = 259;
    goto LABEL_75;
  }

  v18 = 768;
LABEL_85:
  *(a1 + 1) = v18;
  if (!v11)
  {

    std::string::push_back(this, 32);
  }
}

void std::moneypunct_byname<char,true>::init(uint64_t a1, char *a2)
{
  v4 = newlocale(63, a2, 0);
  v14 = v4;
  if (!v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v12, a2);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("moneypunct_byname failed to construct for ", &v12, &v13);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v13;
    }

    else
    {
      v11 = v13.__r_.__value_.__r.__words[0];
    }

    std::__throw_runtime_error(v11);
  }

  v5 = localeconv_l(v4);
  if (!std::checked_string_to_char_convert((a1 + 16), v5->mon_decimal_point, v14, v6))
  {
    *(a1 + 16) = 127;
  }

  if (!std::checked_string_to_char_convert((a1 + 17), v5->mon_thousands_sep, v14, v7))
  {
    *(a1 + 17) = 127;
  }

  std::string::__assign_external((a1 + 24), v5->mon_grouping);
  std::string::__assign_external((a1 + 48), v5->int_curr_symbol);
  int_frac_digits = v5->int_frac_digits;
  if (int_frac_digits == 127)
  {
    LOBYTE(int_frac_digits) = 0;
  }

  *(a1 + 120) = int_frac_digits;
  v9 = (a1 + 72);
  if (v5->int_p_sign_posn)
  {
    std::string::__assign_external(v9, v5->positive_sign);
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
      *(a1 + 95) = 2;
    }

    strcpy(v9, "()");
  }

  v10 = (a1 + 96);
  if (v5->int_n_sign_posn)
  {
    std::string::__assign_external(v10, v5->negative_sign);
  }

  else
  {
    if (*(a1 + 119) < 0)
    {
      *(a1 + 104) = 2;
      v10 = *(a1 + 96);
    }

    else
    {
      *(a1 + 119) = 2;
    }

    strcpy(v10, "()");
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v13 = *(a1 + 48);
  }

  std::__init_pat<char>(a1 + 124, &v13, 1, v5->int_p_cs_precedes, v5->int_p_sep_by_space, v5->int_p_sign_posn);
  std::__init_pat<char>(a1 + 128, (a1 + 48), 1, v5->int_n_cs_precedes, v5->int_n_sep_by_space, v5->int_n_sign_posn);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v13.__r_.__value_.__r.__words[0], v13.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__libcpp_unique_locale::~__libcpp_unique_locale(&v14);
}

void sub_1922EE740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    std::stoi(&a13);
  }

  if (SHIBYTE(a12) < 0)
  {
    MEMORY[0x193B0CA40](a10, a12 & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::__libcpp_unique_locale::~__libcpp_unique_locale((v18 - 24));
  _Unwind_Resume(a1);
}

void std::moneypunct_byname<wchar_t,false>::init(uint64_t a1, char *a2)
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
  currency_symbol = v5->currency_symbol;
  v6 = mbsrtowcs_l(v18, &currency_symbol, 0x64uLL, &v17, v16);
  if (v6 == -1)
  {
    std::__throw_runtime_error("locale not supported");
  }

  std::wstring::__assign_trivial[abi:ne200100]<wchar_t *,wchar_t *>((a1 + 48), v18, v18 + v6, v6);
  frac_digits = v5->frac_digits;
  if (frac_digits == 127)
  {
    LOBYTE(frac_digits) = 0;
  }

  *(a1 + 120) = frac_digits;
  if (v5->p_sign_posn)
  {
    memset(&v17, 0, sizeof(v17));
    currency_symbol = v5->positive_sign;
    v8 = mbsrtowcs_l(v18, &currency_symbol, 0x64uLL, &v17, v16);
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

  if (v5->n_sign_posn)
  {
    memset(&v17, 0, sizeof(v17));
    currency_symbol = v5->negative_sign;
    v10 = mbsrtowcs_l(v18, &currency_symbol, 0x64uLL, &v17, v16);
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

  std::__init_pat<wchar_t>(a1 + 124, &v14, 0, v5->p_cs_precedes, v5->p_sep_by_space, v5->p_sign_posn);
  std::__init_pat<wchar_t>(a1 + 128, (a1 + 48), 0, v5->n_cs_precedes, v5->n_sep_by_space, v5->n_sign_posn);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v14.__r_.__value_.__r.__words[0], 4 * v14.__r_.__value_.__r.__words[2]);
  }

  std::__libcpp_unique_locale::~__libcpp_unique_locale(&v16);
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1922EEAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _xlocale *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
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

void std::__init_pat<wchar_t>(uint64_t a1, std::wstring *this, int a3, int a4, int a5, int a6)
{
  v8 = this;
  if (a3)
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    v11 = size == 4;
  }

  else
  {
    v11 = 0;
  }

  if (a4 != 1)
  {
    if (a4)
    {
      goto LABEL_60;
    }

    if (v11)
    {
      v12 = HIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((v12 & 0x80u) == 0)
      {
        v13 = this;
      }

      else
      {
        v13 = this->__r_.__value_.__r.__words[0];
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = this->__r_.__value_.__l.__size_;
      }

      std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<wchar_t *>,std::__wrap_iter<wchar_t *>>(v13, v13 + 12, &v13[4 * v12]);
    }

    if (a6 > 1)
    {
      switch(a6)
      {
        case 2:
          *a1 = 4;
          *(a1 + 3) = 3;
          if (a5 != 2)
          {
            if (a5 == 1)
            {
              if (!v11)
              {
                std::wstring::insert(v8, 0, 1uLL, 32);
              }

              goto LABEL_45;
            }

            goto LABEL_44;
          }

          break;
        case 3:
          *a1 = 4;
          *(a1 + 3) = 2;
          if (a5 == 2)
          {
            v14 = 3;
            goto LABEL_76;
          }

          if (a5 != 1)
          {
            if (!a5)
            {
              v15 = 768;
              goto LABEL_54;
            }

            goto LABEL_60;
          }

          v18 = 769;
          goto LABEL_87;
        case 4:
          *a1 = 4;
          *(a1 + 3) = 3;
          if (a5 != 2)
          {
            if (a5 == 1)
            {
              v14 = 512;
LABEL_76:
              *(a1 + 1) = v14;
LABEL_77:
              if (!v11)
              {

                std::wstring::insert(v8, 0, 1uLL, 32);
              }

              return;
            }

LABEL_44:
            if (!a5)
            {
LABEL_45:
              v15 = 512;
              goto LABEL_54;
            }

LABEL_60:
            *a1 = 67109634;
            return;
          }

          break;
        default:
          goto LABEL_60;
      }

      v18 = 258;
LABEL_87:
      *(a1 + 1) = v18;
      if (v11)
      {

        std::wstring::erase(v8, 0, 1uLL);
      }

      return;
    }

    if (a6)
    {
      if (a6 != 1)
      {
        goto LABEL_60;
      }

      *a1 = 3;
      *(a1 + 3) = 2;
      if (a5 == 2)
      {
        v18 = 1025;
        goto LABEL_87;
      }

      if (a5 == 1)
      {
        v14 = 4;
        goto LABEL_76;
      }

      if (a5)
      {
        goto LABEL_60;
      }

      v15 = 4;
LABEL_54:
      *(a1 + 1) = v15;
      return;
    }

    v16 = 33555459;
LABEL_57:
    *a1 = v16;
    if (!a5 || a5 == 2)
    {
      return;
    }

    if (a5 == 1)
    {
      goto LABEL_77;
    }

    goto LABEL_60;
  }

  if (a6 <= 1)
  {
    if (!a6)
    {
      v16 = 67109379;
      goto LABEL_57;
    }

    if (a6 != 1)
    {
      goto LABEL_60;
    }

    goto LABEL_38;
  }

  if (a6 == 2)
  {
    *a1 = 2;
    *(a1 + 3) = 3;
    if (a5 != 2)
    {
      if (a5 != 1)
      {
        if (!a5)
        {
          v15 = 1024;
          goto LABEL_54;
        }

        goto LABEL_60;
      }

      v17 = 1024;
      goto LABEL_82;
    }

    v19 = 260;
LABEL_72:
    *(a1 + 1) = v19;
    if (v11)
    {
      v20 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      if (v20 < 0)
      {
        v21 = this->__r_.__value_.__l.__size_ - 1;
        this->__r_.__value_.__l.__size_ = v21;
        v8 = this->__r_.__value_.__r.__words[0];
      }

      else
      {
        v21 = v20 - 1;
        *(&this->__r_.__value_.__s + 23) = v21 & 0x7F;
      }

      v8->__r_.__value_.__s.__data_[v21] = 0;
    }

    return;
  }

  if (a6 == 3)
  {
LABEL_38:
    *a1 = 3;
    *(a1 + 3) = 4;
    if (a5 != 2)
    {
      if (a5 != 1)
      {
        if (a5)
        {
          goto LABEL_60;
        }

        v15 = 2;
        goto LABEL_54;
      }

      v17 = 2;
      goto LABEL_82;
    }

    v19 = 513;
    goto LABEL_72;
  }

  if (a6 != 4)
  {
    goto LABEL_60;
  }

  *a1 = 2;
  *(a1 + 3) = 4;
  if (a5 != 2)
  {
    if (a5 != 1)
    {
      if (a5)
      {
        goto LABEL_60;
      }

      v15 = 3;
      goto LABEL_54;
    }

    v19 = 259;
    goto LABEL_72;
  }

  v17 = 768;
LABEL_82:
  *(a1 + 1) = v17;
  if (!v11)
  {

    std::wstring::push_back(this, 32);
  }
}