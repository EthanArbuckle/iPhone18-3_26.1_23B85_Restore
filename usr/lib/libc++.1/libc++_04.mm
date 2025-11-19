std::string *__cdecl std::to_string(std::string *__return_ptr retstr, uint64_t __val)
{
  v12 = *MEMORY[0x1E69E9840];
  p_src = &__src;
  v5 = &v12;
  if (__val < 0)
  {
    p_src = v11;
    __src = 45;
    __val = -__val;
  }

  if (&v12 - p_src > 19 || (v6 = (1233 * (64 - __clz(__val | 1))) >> 12, &v12 - p_src >= v6 - (std::__itoa::__pow10_64[v6] > __val) + 1))
  {
    if (HIDWORD(__val))
    {
      if (__val > 0x2540BE3FFLL)
      {
        p_src = std::__itoa::__base_10_u32[abi:ne200100](p_src, __val / 0x2540BE400uLL);
        __val %= 0x2540BE400uLL;
      }

      *p_src = std::__itoa::__digits_base_10[__val / 0x5F5E100uLL];
      v7 = __val % 0x5F5E100uLL;
      *(p_src + 1) = std::__itoa::__digits_base_10[v7 / 0xF4240uLL];
      v7 %= 0xF4240u;
      *(p_src + 2) = std::__itoa::__digits_base_10[v7 / 0x2710uLL];
      v7 %= 0x2710u;
      *(p_src + 3) = std::__itoa::__digits_base_10[v7 / 0x64u];
      *(p_src + 4) = std::__itoa::__digits_base_10[v7 % 0x64u];
      v5 = p_src + 10;
    }

    else
    {
      v5 = std::__itoa::__base_10_u32[abi:ne200100](p_src, __val);
    }
  }

  result = std::string::__init_with_size[abi:ne200100]<char const*,char const*>(retstr, &__src, v5, v5 - &__src);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v12 = *MEMORY[0x1E69E9840];
  p_src = &__src;
  v5 = &v12;
  if (__val < 0)
  {
    p_src = v11;
    __src = 45;
    __val = -__val;
  }

  if (&v12 - p_src > 19 || (v6 = (1233 * (64 - __clz(__val | 1))) >> 12, &v12 - p_src >= v6 - (std::__itoa::__pow10_64[v6] > __val) + 1))
  {
    if (HIDWORD(__val))
    {
      if (__val > 0x2540BE3FFLL)
      {
        p_src = std::__itoa::__base_10_u32[abi:ne200100](p_src, __val / 0x2540BE400uLL);
        __val %= 0x2540BE400uLL;
      }

      *p_src = std::__itoa::__digits_base_10[__val / 0x5F5E100uLL];
      v7 = __val % 0x5F5E100uLL;
      *(p_src + 1) = std::__itoa::__digits_base_10[v7 / 0xF4240uLL];
      v7 %= 0xF4240u;
      *(p_src + 2) = std::__itoa::__digits_base_10[v7 / 0x2710uLL];
      v7 %= 0x2710u;
      *(p_src + 3) = std::__itoa::__digits_base_10[v7 / 0x64u];
      *(p_src + 4) = std::__itoa::__digits_base_10[v7 % 0x64u];
      v5 = p_src + 10;
    }

    else
    {
      v5 = std::__itoa::__base_10_u32[abi:ne200100](p_src, __val);
    }
  }

  result = std::string::__init_with_size[abi:ne200100]<char const*,char const*>(retstr, &__src, v5, v5 - &__src);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unsigned int __val)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = std::__itoa::__base_10_u32[abi:ne200100](__src, __val);
  result = std::string::__init_with_size[abi:ne200100]<char const*,char const*>(retstr, __src, v3, v3 - __src);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  v2 = __val;
  v10 = *MEMORY[0x1E69E9840];
  if (HIDWORD(__val))
  {
    if (__val <= 0x2540BE3FFLL)
    {
      v5 = __src;
    }

    else
    {
      v5 = std::__itoa::__base_10_u32[abi:ne200100](__src, __val / 0x2540BE400);
      v2 %= 0x2540BE400uLL;
    }

    *v5 = std::__itoa::__digits_base_10[v2 / 0x5F5E100];
    *(v5 + 1) = std::__itoa::__digits_base_10[v2 % 0x5F5E100 / 0xF4240];
    v6 = v2 % 0x5F5E100 % 0xF4240;
    *(v5 + 2) = std::__itoa::__digits_base_10[v6 / 0x2710uLL];
    v6 %= 0x2710u;
    *(v5 + 3) = std::__itoa::__digits_base_10[v6 / 0x64u];
    *(v5 + 4) = std::__itoa::__digits_base_10[v6 % 0x64u];
    v4 = v5 + 10;
  }

  else
  {
    v4 = std::__itoa::__base_10_u32[abi:ne200100](__src, __val);
  }

  result = std::string::__init_with_size[abi:ne200100]<char const*,char const*>(retstr, __src, v4, v4 - __src);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v2 = __val;
  v10 = *MEMORY[0x1E69E9840];
  if (HIDWORD(__val))
  {
    if (__val <= 0x2540BE3FFLL)
    {
      v5 = __src;
    }

    else
    {
      v5 = std::__itoa::__base_10_u32[abi:ne200100](__src, __val / 0x2540BE400);
      v2 %= 0x2540BE400uLL;
    }

    *v5 = std::__itoa::__digits_base_10[v2 / 0x5F5E100];
    *(v5 + 1) = std::__itoa::__digits_base_10[v2 % 0x5F5E100 / 0xF4240];
    v6 = v2 % 0x5F5E100 % 0xF4240;
    *(v5 + 2) = std::__itoa::__digits_base_10[v6 / 0x2710uLL];
    v6 %= 0x2710u;
    *(v5 + 3) = std::__itoa::__digits_base_10[v6 / 0x64u];
    *(v5 + 4) = std::__itoa::__digits_base_10[v6 % 0x64u];
    v4 = v5 + 10;
  }

  else
  {
    v4 = std::__itoa::__base_10_u32[abi:ne200100](__src, __val);
  }

  result = std::string::__init_with_size[abi:ne200100]<char const*,char const*>(retstr, __src, v4, v4 - __src);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

std::wstring *__cdecl std::to_wstring(std::wstring *__return_ptr retstr, int __val)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = &v9;
  v5 = &v11;
  if (__val < 0)
  {
    v4 = &v10;
    v9 = 45;
    __val = -__val;
  }

  if (&v11 - v4 > 9 || (v6 = (1233 * (32 - __clz(__val | 1))) >> 12, &v11 - v4 >= (((__PAIR64__(v6, __val) - std::__itoa::__pow10_32[v6]) >> 32) + 1)))
  {
    v5 = std::__itoa::__base_10_u32[abi:ne200100](v4, __val);
  }

  result = std::wstring::__init_with_size[abi:ne200100]<char *,char *>(retstr, &v9, v5, v5 - &v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

std::wstring *__cdecl std::to_wstring(std::wstring *__return_ptr retstr, uint64_t __val)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = &v10;
  v5 = &v12;
  if (__val < 0)
  {
    v4 = v11;
    v10 = 45;
    __val = -__val;
  }

  if (&v12 - v4 > 19 || (v6 = (1233 * (64 - __clz(__val | 1))) >> 12, &v12 - v4 >= v6 - (std::__itoa::__pow10_64[v6] > __val) + 1))
  {
    if (HIDWORD(__val))
    {
      if (__val > 0x2540BE3FFLL)
      {
        v4 = std::__itoa::__base_10_u32[abi:ne200100](v4, __val / 0x2540BE400uLL);
        __val %= 0x2540BE400uLL;
      }

      *v4 = std::__itoa::__digits_base_10[__val / 0x5F5E100uLL];
      v7 = __val % 0x5F5E100uLL;
      *(v4 + 1) = std::__itoa::__digits_base_10[v7 / 0xF4240uLL];
      v7 %= 0xF4240u;
      *(v4 + 2) = std::__itoa::__digits_base_10[v7 / 0x2710uLL];
      v7 %= 0x2710u;
      *(v4 + 3) = std::__itoa::__digits_base_10[v7 / 0x64u];
      *(v4 + 4) = std::__itoa::__digits_base_10[v7 % 0x64u];
      v5 = v4 + 10;
    }

    else
    {
      v5 = std::__itoa::__base_10_u32[abi:ne200100](v4, __val);
    }
  }

  result = std::wstring::__init_with_size[abi:ne200100]<char *,char *>(retstr, &v10, v5, v5 - &v10);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v12 = *MEMORY[0x1E69E9840];
  v4 = &v10;
  v5 = &v12;
  if (__val < 0)
  {
    v4 = v11;
    v10 = 45;
    __val = -__val;
  }

  if (&v12 - v4 > 19 || (v6 = (1233 * (64 - __clz(__val | 1))) >> 12, &v12 - v4 >= v6 - (std::__itoa::__pow10_64[v6] > __val) + 1))
  {
    if (HIDWORD(__val))
    {
      if (__val > 0x2540BE3FFLL)
      {
        v4 = std::__itoa::__base_10_u32[abi:ne200100](v4, __val / 0x2540BE400uLL);
        __val %= 0x2540BE400uLL;
      }

      *v4 = std::__itoa::__digits_base_10[__val / 0x5F5E100uLL];
      v7 = __val % 0x5F5E100uLL;
      *(v4 + 1) = std::__itoa::__digits_base_10[v7 / 0xF4240uLL];
      v7 %= 0xF4240u;
      *(v4 + 2) = std::__itoa::__digits_base_10[v7 / 0x2710uLL];
      v7 %= 0x2710u;
      *(v4 + 3) = std::__itoa::__digits_base_10[v7 / 0x64u];
      *(v4 + 4) = std::__itoa::__digits_base_10[v7 % 0x64u];
      v5 = v4 + 10;
    }

    else
    {
      v5 = std::__itoa::__base_10_u32[abi:ne200100](v4, __val);
    }
  }

  result = std::wstring::__init_with_size[abi:ne200100]<char *,char *>(retstr, &v10, v5, v5 - &v10);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

std::wstring *__cdecl std::to_wstring(std::wstring *__return_ptr retstr, unsigned int __val)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = std::__itoa::__base_10_u32[abi:ne200100](v6, __val);
  result = std::wstring::__init_with_size[abi:ne200100]<char *,char *>(retstr, v6, v3, v3 - v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

std::wstring *__cdecl std::to_wstring(std::wstring *__return_ptr retstr, unint64_t __val)
{
  v2 = __val;
  v10 = *MEMORY[0x1E69E9840];
  if (HIDWORD(__val))
  {
    if (__val <= 0x2540BE3FFLL)
    {
      v5 = v9;
    }

    else
    {
      v5 = std::__itoa::__base_10_u32[abi:ne200100](v9, __val / 0x2540BE400);
      v2 %= 0x2540BE400uLL;
    }

    *v5 = std::__itoa::__digits_base_10[v2 / 0x5F5E100];
    *(v5 + 1) = std::__itoa::__digits_base_10[v2 % 0x5F5E100 / 0xF4240];
    v6 = v2 % 0x5F5E100 % 0xF4240;
    *(v5 + 2) = std::__itoa::__digits_base_10[v6 / 0x2710uLL];
    v6 %= 0x2710u;
    *(v5 + 3) = std::__itoa::__digits_base_10[v6 / 0x64u];
    *(v5 + 4) = std::__itoa::__digits_base_10[v6 % 0x64u];
    v4 = v5 + 10;
  }

  else
  {
    v4 = std::__itoa::__base_10_u32[abi:ne200100](v9, __val);
  }

  result = std::wstring::__init_with_size[abi:ne200100]<char *,char *>(retstr, v9, v4, v4 - v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v2 = __val;
  v10 = *MEMORY[0x1E69E9840];
  if (HIDWORD(__val))
  {
    if (__val <= 0x2540BE3FFLL)
    {
      v5 = v9;
    }

    else
    {
      v5 = std::__itoa::__base_10_u32[abi:ne200100](v9, __val / 0x2540BE400);
      v2 %= 0x2540BE400uLL;
    }

    *v5 = std::__itoa::__digits_base_10[v2 / 0x5F5E100];
    *(v5 + 1) = std::__itoa::__digits_base_10[v2 % 0x5F5E100 / 0xF4240];
    v6 = v2 % 0x5F5E100 % 0xF4240;
    *(v5 + 2) = std::__itoa::__digits_base_10[v6 / 0x2710uLL];
    v6 %= 0x2710u;
    *(v5 + 3) = std::__itoa::__digits_base_10[v6 / 0x64u];
    *(v5 + 4) = std::__itoa::__digits_base_10[v6 % 0x64u];
    v4 = v5 + 10;
  }

  else
  {
    v4 = std::__itoa::__base_10_u32[abi:ne200100](v9, __val);
  }

  result = std::wstring::__init_with_size[abi:ne200100]<char *,char *>(retstr, v9, v4, v4 - v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, float __val)
{
  v4 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  v6 = __val;
  while (1)
  {
    v7 = v4 >= 0 ? &v10 : v10.__r_.__value_.__r.__words[0];
    v8 = snprintf(v7, size + 1, "%f", v6);
    if ((v8 & 0x80000000) == 0)
    {
      break;
    }

    size = (2 * size) | 1;
LABEL_12:
    std::string::resize(&v10, size, 0);
    v4 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  if (size < v8)
  {
    size = v8;
    goto LABEL_12;
  }

  std::string::resize(&v10, v8, 0);
  *retstr = v10;
  return result;
}

void sub_1922B3738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (SHIBYTE(a12) < 0)
  {
    MEMORY[0x193B0CA40](a10, a12 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void std::anonymous namespace::initial_string<std::string>::operator()(std::string *a1@<X8>)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a1, 0x16uLL, 0);
}

void sub_1922B3798(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    MEMORY[0x193B0CA40](*v1, *(v1 + 16) & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, double __val)
{
  v4 = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  while (1)
  {
    v6 = v4 >= 0 ? &v9 : v9.__r_.__value_.__r.__words[0];
    v7 = snprintf(v6, size + 1, "%f", __val);
    if ((v7 & 0x80000000) == 0)
    {
      break;
    }

    size = (2 * size) | 1;
LABEL_11:
    std::string::resize(&v9, size, 0);
    v4 = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  if (size < v7)
  {
    size = v7;
    goto LABEL_11;
  }

  std::string::resize(&v9, v7, 0);
  *retstr = v9;
  return result;
}

void sub_1922B389C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (SHIBYTE(a12) < 0)
  {
    MEMORY[0x193B0CA40](a10, a12 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, long double __val)
{
  v4 = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  while (1)
  {
    v6 = v4 >= 0 ? &v9 : v9.__r_.__value_.__r.__words[0];
    v7 = snprintf(v6, size + 1, "%Lf", __val);
    if ((v7 & 0x80000000) == 0)
    {
      break;
    }

    size = (2 * size) | 1;
LABEL_11:
    std::string::resize(&v9, size, 0);
    v4 = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  if (size < v7)
  {
    size = v7;
    goto LABEL_11;
  }

  std::string::resize(&v9, v7, 0);
  *retstr = v9;
  return result;
}

void sub_1922B39A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (SHIBYTE(a12) < 0)
  {
    MEMORY[0x193B0CA40](a10, a12 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1922B3AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (SHIBYTE(a12) < 0)
  {
    MEMORY[0x193B0CA40](a10, 4 * a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1922B3B44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    MEMORY[0x193B0CA40](*v1, 4 * *(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_1922B3C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (SHIBYTE(a12) < 0)
  {
    MEMORY[0x193B0CA40](a10, 4 * a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1922B3D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (SHIBYTE(a12) < 0)
  {
    MEMORY[0x193B0CA40](a10, 4 * a12);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<wchar_t>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

int std::wstring_view::compare(const std::wstring_view *this, std::wstring_view __sv)
{
  size = __sv.__size_;
  v3 = this->__size_;
  if (__sv.__size_ >= v3)
  {
    __sv.__size_ = this->__size_;
  }

  if (__sv.__size_)
  {
    result = wmemcmp(this->__data_, __sv.__data_, __sv.__size_);
    if (result)
    {
      return result;
    }

    v3 = this->__size_;
  }

  v6 = v3 == size;
  if (v3 < size)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void std::anonymous namespace::throw_from_string_out_of_range(const void **a1)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = *(a1 + 23);
  }

  else
  {
    v2 = a1[1];
  }

  std::string::basic_string[abi:ne200100](v6, v2 + 14);
  if (v7 >= 0)
  {
    v3 = v6;
  }

  else
  {
    v3 = v6[0];
  }

  if (v2)
  {
    if (*(a1 + 23) >= 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = *a1;
    }

    memmove(v3, v4, v2);
  }

  strcpy(v3 + v2, ": out of range");
  if (v7 >= 0)
  {
    v5 = v6;
  }

  else
  {
    v5 = v6[0];
  }

  std::__throw_out_of_range[abi:ne200100](v5);
}

void sub_1922B3F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void std::anonymous namespace::throw_from_string_invalid_arg(const void **a1)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = *(a1 + 23);
  }

  else
  {
    v2 = a1[1];
  }

  std::string::basic_string[abi:ne200100](v6, v2 + 15);
  if (v7 >= 0)
  {
    v3 = v6;
  }

  else
  {
    v3 = v6[0];
  }

  if (v2)
  {
    if (*(a1 + 23) >= 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = *a1;
    }

    memmove(v3, v4, v2);
  }

  strcpy(v3 + v2, ": no conversion");
  if (v7 >= 0)
  {
    v5 = v6;
  }

  else
  {
    v5 = v6[0];
  }

  std::__throw_invalid_argument[abi:ne200100](v5);
}

void sub_1922B401C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_invalid_argument[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E73AD5D0, MEMORY[0x1E69E5610]);
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E5678] + 16);
  return result;
}

uint64_t std::wstring::__init_with_size[abi:ne200100]<char *,char *>(uint64_t result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (a4 > 4)
  {
    if ((a4 | 1) == 5)
    {
      v6 = 7;
    }

    else
    {
      v6 = (a4 | 1) + 1;
    }

    std::allocator<wchar_t>::allocate_at_least[abi:ne200100](result, v6);
  }

  *(result + 23) = a4;
  while (a2 != a3)
  {
    v7 = *a2++;
    *v5++ = v7;
  }

  *v5 = 0;
  return result;
}

void OUTLINED_FUNCTION_0_1(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[2] & 0x7FFFFFFFFFFFFFFFLL;

  JUMPOUT(0x193B0CA40);
}

std::string *__cdecl std::__do_message::message(std::string *__return_ptr retstr, const std::__do_message *this, int __ev)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *__error();
  v6 = __strerrbuf;
  v7 = strerror_r(__ev, __strerrbuf, 0x400uLL);
  if (v7)
  {
    if (v7 == -1)
    {
      v7 = *__error();
    }

    if (v7 != 22)
    {
      abort();
    }

    v6 = &byte_19231D823;
  }

  if (!*v6)
  {
    v6 = __strerrbuf;
    snprintf(__strerrbuf, 0x400uLL, "Unknown error %d", __ev);
  }

  *__error() = v5;
  result = std::string::basic_string[abi:ne200100]<0>(retstr, v6);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

std::string *std::__generic_error_category::message@<X0>(const std::__do_message *this@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  if (a2 < 108)
  {
    return std::__do_message::message(a3, this, a2);
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(a3, "unspecified generic_category error");
  }
}

const std::error_category *std::generic_category(void)
{
  {
    std::generic_category();
  }

  return &std::generic_category(void)::helper;
}

std::string *std::__system_error_category::message@<X0>(const std::__do_message *this@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  if (a2 < 108)
  {
    return std::__do_message::message(a3, this, a2);
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(a3, "unspecified system_category error");
  }
}

const std::error_category *std::system_category(void)
{
  {
    std::system_category();
  }

  return &std::system_category(void)::helper;
}

std::system_error *__cdecl std::system_error::system_error(std::system_error *this, std::error_code __ec, const std::string *__what_arg)
{
  v7 = __ec;
  if (SHIBYTE(__what_arg->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, __what_arg->__r_.__value_.__l.__data_, __what_arg->__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = *__what_arg;
  }

  std::runtime_error::runtime_error(this, &v6);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v6.__r_.__value_.__r.__words[0], v6.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v5.__r_.__value_.__r.__words[0], v5.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  this->__ec_ = v7;
  return this;
}

void sub_1922B4478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

__n128 std::anonymous namespace::make_error_str@<Q0>(std::string *this@<X1>, unsigned int *a2@<X0>, uint64_t a3@<X8>)
{
  if (*a2)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::string::append(this, ": ", 2uLL);
      v7 = *a2;
    }

    (*(**(a2 + 1) + 48))(v11);
    if (v12 >= 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = v11[0];
    }

    if (v12 >= 0)
    {
      v9 = HIBYTE(v12);
    }

    else
    {
      v9 = v11[1];
    }

    std::string::append(this, v8, v9);
    if (SHIBYTE(v12) < 0)
    {
      MEMORY[0x193B0CA40](v11[0], v12 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  result = *&this->__r_.__value_.__l.__data_;
  *a3 = *&this->__r_.__value_.__l.__data_;
  *(a3 + 16) = *(&this->__r_.__value_.__l + 2);
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  return result;
}

void sub_1922B459C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::stoi(&a10);
  }

  _Unwind_Resume(exception_object);
}

std::system_error *__cdecl std::system_error::system_error(std::system_error *this, std::error_code __ec, const char *__what_arg)
{
  v7 = __ec;
  std::string::basic_string[abi:ne200100]<0>(&v5, __what_arg);
  std::runtime_error::runtime_error(this, &v6);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v6.__r_.__value_.__r.__words[0], v6.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v5.__r_.__value_.__r.__words[0], v5.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  this->__ec_ = v7;
  return this;
}

void sub_1922B4668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

std::system_error *__cdecl std::system_error::system_error(std::system_error *this, std::error_code __ec)
{
  cat = __ec.__cat_;
  v3 = *&__ec.__val_;
  if (__ec.__val_)
  {
    (__ec.__cat_->message)(&v6, __ec.__cat_, *&__ec.__val_);
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
  }

  std::runtime_error::runtime_error(this, &v6);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v6.__r_.__value_.__r.__words[0], v6.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  *&this->__ec_.__val_ = v3;
  this->__ec_.__cat_ = cat;
  return this;
}

void sub_1922B4768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::stoi(&a10);
  }

  _Unwind_Resume(exception_object);
}

std::system_error *__cdecl std::system_error::system_error(std::system_error *this, int __ev, const std::error_category *__ecat, const std::string *__what_arg)
{
  v9 = __ev;
  v10 = __ecat;
  if (SHIBYTE(__what_arg->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, __what_arg->__r_.__value_.__l.__data_, __what_arg->__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = *__what_arg;
  }

  std::runtime_error::runtime_error(this, &v11);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v11.__r_.__value_.__r.__words[0], v11.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v8.__r_.__value_.__r.__words[0], v8.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  this->__ec_.__val_ = __ev;
  this->__ec_.__cat_ = __ecat;
  return this;
}

void sub_1922B4864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    std::stoi(&a14);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

std::system_error *__cdecl std::system_error::system_error(std::system_error *this, int __ev, const std::error_category *__ecat, const char *__what_arg)
{
  v9 = __ev;
  v10 = __ecat;
  std::string::basic_string[abi:ne200100]<0>(&v8, __what_arg);
  std::runtime_error::runtime_error(this, &v11);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v11.__r_.__value_.__r.__words[0], v11.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v8.__r_.__value_.__r.__words[0], v8.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  this->__ec_.__val_ = __ev;
  this->__ec_.__cat_ = __ecat;
  return this;
}

void sub_1922B4964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    std::stoi(&a14);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1922B4A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::stoi(&a10);
  }

  _Unwind_Resume(exception_object);
}

void std::system_error::~system_error(std::system_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x193B0CA40);
}

void std::__throw_system_error[abi:ne200100](uint64_t a1, const std::error_category *a2, const char *a3)
{
  exception = __cxa_allocate_exception(0x20uLL);
  *&v7.__val_ = a1;
  v7.__cat_ = a2;
  std::system_error::system_error(exception, v7, a3);
}

void std::__generic_error_category::~__generic_error_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x193B0CA40);
}

void std::__system_error_category::~__system_error_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x193B0CA40);
}

void *std::valarray<unsigned long>::valarray(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

uint64_t *std::valarray<unsigned long>::~valarray(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v2)
  {
    if (v3 != v2)
    {
      a1[1] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
    }

    MEMORY[0x193B0CA40]();
    *a1 = 0;
    a1[1] = 0;
  }

  return a1;
}

{
  v2 = *a1;
  v3 = a1[1];
  if (v2)
  {
    if (v3 != v2)
    {
      a1[1] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
    }

    MEMORY[0x193B0CA40]();
    *a1 = 0;
    a1[1] = 0;
  }

  return a1;
}

uint64_t std::valarray<unsigned long>::resize(uint64_t *a1, unint64_t a2)
{
  result = *a1;
  v5 = a1[1];
  if (result)
  {
    if (v5 != result)
    {
      a1[1] = v5 + ((result - v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    }

    result = MEMORY[0x193B0CA40]();
    *a1 = 0;
    a1[1] = 0;
  }

  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return result;
}

uint64_t std::gslice::__init(std::gslice *this, uint64_t a2)
{
  v4 = *(this + 1);
  if (v4 != *this)
  {
    if (((v4 - *this) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  result = std::valarray<unsigned long>::resize(this + 4, 0);
  v6 = *(this + 4);
  if (*(this + 5) != v6)
  {
    v7 = 0;
    *v6 = a2;
    v8 = *this;
    v9 = *this - 16;
    while (1)
    {
      ++MEMORY[0xFFFFFFFFFFFFFFF8];
      v10 = 0;
      v11 = -1;
      v12 = -16;
      v13 = 0;
      if (MEMORY[0xFFFFFFFFFFFFFFF8] >= *(v8 - 8))
      {
        do
        {
          v10 = v13 - 1;
          if (v13 == 1)
          {

            JUMPOUT(0x193B0CA40);
          }

          v14 = *v12 + 1;
          *v12 = v14;
          *(v12 + 8) = 0;
          v12 -= 8;
          v15 = *(v9 + 8 * v13--);
        }

        while (v14 >= v15);
        v11 = v10 - 1;
      }

      v16 = *(this + 2);
      v17 = v7 + 1;
      v18 = *(v16 + 8 * v11) + v6[v7];
      v6[++v7] = v18;
      v19 = -v10;
      if (v10)
      {
        v20 = (v16 + 8 * v10);
        v21 = (v8 + 8 * v10);
        do
        {
          v23 = *v20++;
          v22 = v23;
          v24 = *v21++;
          v18 -= (v24 - 1) * v22;
          v6[v17] = v18;
          --v19;
        }

        while (v19);
        v7 = v17;
      }
    }
  }

  return result;
}

void std::bad_variant_access::~bad_variant_access(std::bad_variant_access *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x193B0CA40);
}

void std::__libcpp_verbose_abort(const char *__format, ...)
{
  va_start(va, __format);
  va_copy(v2, va);
  vfprintf(*MEMORY[0x1E69E9848], __format, va);
  vasprintf(&v2, __format, va);
  qword_1EAE009B8 = v2;
  abort();
}

unint64_t std::__libcpp_atomic_notify(unint64_t this, const volatile void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (this & 0x1FFFFFFF) + 8) ^ HIDWORD(this));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(this) ^ (v2 >> 47) ^ v2);
  v4 = &std::__libcpp_contention_table[8 * (105 * ((v3 >> 47) ^ v3))];
  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_release);
  if (atomic_load(v4))
  {
    return __ulock_wake();
  }

  return this;
}

std::__cxx_contention_t std::__libcpp_atomic_monitor(const void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ (a1 >> 32));
  v2 = 0x9DDFEA08EB382D69 * ((a1 >> 32) ^ (v1 >> 47) ^ v1);
  return atomic_load_explicit(&std::__libcpp_contention_table[8 * (105 * ((v2 >> 47) ^ v2)) + 1], memory_order_acquire);
}

void std::__libcpp_atomic_wait(const void *a1, std::__cxx_contention_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ (a1 >> 32));
  v3 = 0x9DDFEA08EB382D69 * ((a1 >> 32) ^ (v2 >> 47) ^ v2);
  v4 = &std::__libcpp_contention_table[8 * (105 * ((v3 >> 47) ^ v3))];
  atomic_fetch_add(v4, 1uLL);
  __ulock_wait();
  atomic_fetch_add_explicit(v4, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
}

void std::__cxx_atomic_notify_one(const std::__cxx_atomic_contention_t *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ (a1 >> 32));
  v2 = 0x9DDFEA08EB382D69 * ((a1 >> 32) ^ (v1 >> 47) ^ v1);
  if (atomic_load(&std::__libcpp_contention_table[8 * (105 * ((v2 >> 47) ^ v2))]))
  {
    __ulock_wake();
  }
}

void std::__cxx_atomic_notify_all(const std::__cxx_atomic_contention_t *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ (a1 >> 32));
  v2 = 0x9DDFEA08EB382D69 * ((a1 >> 32) ^ (v1 >> 47) ^ v1);
  if (atomic_load(&std::__libcpp_contention_table[8 * (105 * ((v2 >> 47) ^ v2))]))
  {
    __ulock_wake();
  }
}

void std::__libcpp_atomic_wait(const std::__cxx_atomic_contention_t *a1, std::__cxx_contention_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ (a1 >> 32));
  v3 = 0x9DDFEA08EB382D69 * ((a1 >> 32) ^ (v2 >> 47) ^ v2);
  v4 = &std::__libcpp_contention_table[8 * (105 * ((v3 >> 47) ^ v3))];
  atomic_fetch_add(v4, 1uLL);
  __ulock_wait();
  atomic_fetch_add_explicit(v4, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
}

uint64_t std::__barrier_algorithm_base::__arrive(unint64_t **this, int a2)
{
  v4 = **this;
  v5 = pthread_self();
  if (v4 < 2)
  {
    return 1;
  }

  v7 = 0;
  v8 = a2 + 1;
  v9 = 0x9DDFEA08EB382D69 * ((8 * (v5 & 0x1FFFFFFF) + 8) ^ (v5 >> 32));
  v10 = 0x9DDFEA08EB382D69 * ((v5 >> 32) ^ (v9 >> 47) ^ v9);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47)) % ((**this + 1) >> 1);
  v12 = a2 + 2;
  while (2)
  {
    v13 = v4;
    v14 = v4 + 1;
    v4 = (v4 + 1) >> 1;
    v15 = v4 - 1;
    while (1)
    {
      if (v11 == v4)
      {
        v11 = 0;
      }

      v16 = this[1];
      if ((v13 & 1) == 0 || v11 != v15)
      {
        break;
      }

      v17 = a2;
      atomic_compare_exchange_strong(&v16[8 * v15] + v7, &v17, v12);
      if (v17 == a2)
      {
        goto LABEL_16;
      }

LABEL_14:
      ++v11;
    }

    v18 = &v16[8 * v11] + v7;
    v19 = a2;
    atomic_compare_exchange_strong(v18, &v19, v8);
    if (v19 == a2)
    {
      return 0;
    }

    if (v19 != v8)
    {
      goto LABEL_14;
    }

    v20 = a2 + 1;
    atomic_compare_exchange_strong(&this[1][8 * v11] + v7, &v20, v12);
    if (v20 != (a2 + 1))
    {
      goto LABEL_14;
    }

    v15 = v11;
LABEL_16:
    v11 = v15 >> 1;
    ++v7;
    if (v14 > 3)
    {
      continue;
    }

    return 1;
  }
}

void std::__destroy_barrier_algorithm_base(std::__barrier_algorithm_base *__barrier)
{
  if (__barrier)
  {
    v2 = *(__barrier + 1);
    *(__barrier + 1) = 0;
    if (v2)
    {
      MEMORY[0x193B0CA10](v2, 64);
    }

    JUMPOUT(0x193B0CA40);
  }
}

std::__barrier_algorithm_base *std::__barrier_algorithm_base::__barrier_algorithm_base(std::__barrier_algorithm_base *this, uint64_t *a2)
{
  *this = a2;
  *(this + 1) = 0;
  v3 = *a2 + 1;
  if ((v3 >> 1) >> 58)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 >> 1 << 6;
  }

  v5 = operator new(v4, 0x40uLL);
  v6 = v5;
  if (v3 >= 2)
  {
    bzero(v5, v3 >> 1 << 6);
  }

  *(this + 1) = v6;
  return this;
}

void std::condition_variable::~condition_variable(std::condition_variable *this)
{
  pthread_cond_destroy(&this->__cv_);
}

{
  pthread_cond_destroy(&this->__cv_);
}

void std::condition_variable::wait(std::condition_variable *this, std::unique_lock<std::mutex> *__lk)
{
  if (!__lk->__owns_)
  {
    v3 = "condition_variable::wait: mutex not locked";
    v2 = 1;
    goto LABEL_6;
  }

  v2 = pthread_cond_wait(&this->__cv_, &__lk->__m_->__m_);
  if (v2)
  {
    v3 = "condition_variable wait failed";
LABEL_6:
    std::__throw_system_error(v2, v3);
  }
}

void std::condition_variable::__do_timed_wait(std::condition_variable *this, std::unique_lock<std::mutex> *__lk, std::chrono::time_point<std::chrono::system_clock, std::chrono::duration<long long, std::ratio<1, 1000000000>>> a3)
{
  if (!__lk->__owns_)
  {
    v5 = "condition_variable::timed wait: mutex not locked";
    v4 = 1;
    goto LABEL_9;
  }

  rep = 0x59682F000000E941;
  if (a3.__d_.__rep_ < 0x59682F000000E941)
  {
    rep = a3.__d_.__rep_;
  }

  v6.tv_sec = rep / 1000000000;
  v6.tv_nsec = rep % 1000000000;
  v4 = pthread_cond_timedwait(&this->__cv_, &__lk->__m_->__m_, &v6);
  if (v4 && v4 != 60)
  {
    v5 = "condition_variable timed_wait failed";
LABEL_9:
    std::__throw_system_error(v4, v5);
  }
}

void std::notify_all_at_thread_exit(std::condition_variable *a1, std::unique_lock<std::mutex> a2)
{
  m = a2.__m_;
  v4 = std::__thread_local_data();
  if (!pthread_getspecific(v4->__key_))
  {
    operator new();
  }

  v5 = std::__thread_local_data();
  v6 = pthread_getspecific(v5->__key_);
  sig = m->__m_.__sig;
  m->__m_.__sig = 0;
  m->__m_.__opaque[0] = 0;

  std::__thread_struct::notify_all_at_thread_exit(v6, a1, sig);
}

_BYTE *std::__future_error_category::message@<X0>(unsigned int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1 > 4)
  {
    v3 = "unspecified future_errc value\n";
  }

  else
  {
    v3 = off_1E73AD9A8[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

const std::error_category *std::future_category(void)
{
  {
    std::future_category();
  }

  return &std::future_category(void)::helper;
}

std::future_error *__cdecl std::future_error::future_error(std::future_error *this, std::error_code __ec)
{
  v5 = __ec;
  std::error_code::message(&v4, &v5);
  std::logic_error::logic_error(this, &v4);
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v4.__r_.__value_.__r.__words[0], v4.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  this->__ec_ = v5;
  return this;
}

void sub_1922B5974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::future_error::future_error(&a10);
  }

  _Unwind_Resume(exception_object);
}

void std::future_error::~future_error(std::future_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x193B0CA40);
}

void std::__assoc_sub_state::__on_zero_shared(std::__assoc_sub_state *this)
{
  if (this)
  {
    (this->~__assoc_sub_state_0)();
  }
}

void std::__assoc_sub_state::set_value(std::__assoc_sub_state *this)
{
  std::mutex::lock(&this->__mut_);
  if ((this->__state_ & 1) != 0 || (v3.__ptr_ = 0, ptr = this->__exception_.__ptr_, std::exception_ptr::~exception_ptr(&v3), ptr))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  this->__state_ |= 5u;
  std::condition_variable::notify_all(&this->__cv_);
  std::mutex::unlock(&this->__mut_);
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::future_category();
  *&v3.__val_ = a1;
  v3.__cat_ = &std::future_category(void)::helper;
  std::future_error::future_error(exception, v3);
}

void std::__assoc_sub_state::set_value_at_thread_exit(std::__assoc_sub_state *this)
{
  std::mutex::lock(&this->__mut_);
  if ((this->__state_ & 1) != 0 || (v5.__ptr_ = 0, ptr = this->__exception_.__ptr_, std::exception_ptr::~exception_ptr(&v5), ptr))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  this->__state_ |= 1u;
  v3 = std::__thread_local_data();
  v4 = pthread_getspecific(v3->__key_);
  std::__thread_struct::__make_ready_at_thread_exit(v4, this);
  std::mutex::unlock(&this->__mut_);
}

void std::__assoc_sub_state::set_exception(std::__assoc_sub_state *this, std::exception_ptr __p)
{
  std::mutex::lock(&this->__mut_);
  if ((this->__state_ & 1) != 0 || (ptr = this->__exception_.__ptr_, v5.__ptr_ = 0, std::exception_ptr::~exception_ptr(&v5), ptr))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  std::exception_ptr::operator=(&this->__exception_, __p.__ptr_);
  this->__state_ |= 4u;
  std::condition_variable::notify_all(&this->__cv_);
  std::mutex::unlock(&this->__mut_);
}

void std::__assoc_sub_state::set_exception_at_thread_exit(std::__assoc_sub_state *this, std::exception_ptr __p)
{
  std::mutex::lock(&this->__mut_);
  if ((this->__state_ & 1) != 0 || (ptr = this->__exception_.__ptr_, v7.__ptr_ = 0, std::exception_ptr::~exception_ptr(&v7), ptr))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  std::exception_ptr::operator=(&this->__exception_, __p.__ptr_);
  v5 = std::__thread_local_data();
  v6 = pthread_getspecific(v5->__key_);
  std::__thread_struct::__make_ready_at_thread_exit(v6, this);
  std::mutex::unlock(&this->__mut_);
}

void std::__assoc_sub_state::__make_ready(std::__assoc_sub_state *this)
{
  std::mutex::lock(&this->__mut_);
  this->__state_ |= 4u;
  std::condition_variable::notify_all(&this->__cv_);

  std::mutex::unlock(&this->__mut_);
}

void std::__assoc_sub_state::copy(std::__assoc_sub_state *this)
{
  __lk.__m_ = &this->__mut_;
  __lk.__owns_ = 1;
  std::mutex::lock(&this->__mut_);
  std::__assoc_sub_state::__sub_wait(this, &__lk);
  ptr = this->__exception_.__ptr_;
  p_exception = &this->__exception_;
  v6.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v6);
  if (ptr)
  {
    std::exception_ptr::exception_ptr(&v5, p_exception);
    v4.__ptr_ = &v5;
    std::rethrow_exception(v4);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_1922B5DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void std::__assoc_sub_state::__sub_wait(std::__assoc_sub_state *this, std::unique_lock<std::mutex> *__lk)
{
  state = this->__state_;
  if ((state & 4) == 0)
  {
    if ((state & 8) != 0)
    {
      this->__state_ = state & 0xFFFFFFF3;
      std::unique_lock<std::mutex>::unlock[abi:ne200100](__lk);
      execute = this->__execute;

      (execute)(this);
    }

    else
    {
      do
      {
        std::condition_variable::wait(&this->__cv_, __lk);
      }

      while ((this->__state_ & 4) == 0);
    }
  }
}

void std::__assoc_sub_state::wait(std::__assoc_sub_state *this)
{
  v2.__m_ = &this->__mut_;
  v2.__owns_ = 1;
  std::mutex::lock(&this->__mut_);
  std::__assoc_sub_state::__sub_wait(this, &v2);
  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

void sub_1922B5EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void std::unique_lock<std::mutex>::unlock[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
  }

  std::mutex::unlock(*a1);
  *(a1 + 8) = 0;
}

std::future<void> *__cdecl std::future<void>::future(std::future<void> *this, std::__assoc_sub_state *__state)
{
  this->__state_ = __state;
  std::__assoc_sub_state::__attach_future[abi:ne200100](__state);
  return this;
}

{
  this->__state_ = __state;
  std::__assoc_sub_state::__attach_future[abi:ne200100](__state);
  return this;
}

void std::__assoc_sub_state::__attach_future[abi:ne200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
  *(a1 + 136) = v2 | 2;

  std::mutex::unlock((a1 + 24));
}

void std::future<void>::~future(std::future<void> *this)
{
  state = this->__state_;
  if (state)
  {
    if (!atomic_fetch_add(&state->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (state->__on_zero_shared)(state);
    }
  }
}

{
  state = this->__state_;
  if (state)
  {
    if (!atomic_fetch_add(&state->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (state->__on_zero_shared)(state);
    }
  }
}

void std::future<void>::get(std::future<void> *this)
{
  state = this->__state_;
  this->__state_ = 0;
  std::__assoc_sub_state::copy(state);
  if (state && !atomic_fetch_add(&state->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    on_zero_shared = state->__on_zero_shared;

    (on_zero_shared)(state);
  }
}

void sub_1922B6150(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::future<void>::get(v1);
  }

  _Unwind_Resume(exception_object);
}

std::promise<void> *__cdecl std::promise<void>::promise(std::promise<void> *this)
{
  operator new();
}

{
  operator new();
}

void std::promise<void>::~promise(std::promise<void> *this)
{
  state = this->__state_;
  if (this->__state_)
  {
    if ((state->__state_ & 1) == 0)
    {
      v7.__ptr_ = 0;
      ptr = state->__exception_.__ptr_;
      std::exception_ptr::~exception_ptr(&v7);
      state = this->__state_;
      if (!ptr && state->__shared_owners_ >= 1)
      {
        std::future_category();
        v8.__cat_ = &std::future_category(void)::helper;
        *&v8.__val_ = 4;
        std::future_error::future_error(&v5, v8);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(&v5, &v6);
        v4.__ptr_ = &v6;
        std::__assoc_sub_state::set_exception(state, v4);
        std::exception_ptr::~exception_ptr(&v6);
        std::logic_error::~logic_error(&v5);
        state = this->__state_;
      }
    }

    if (!atomic_fetch_add(&state->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (state->__on_zero_shared)(state);
    }
  }
}

std::future<void> std::promise<void>::get_future(std::promise<void> *this)
{
  state = this->__state_;
  if (!state)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  *v1 = state;

  std::__assoc_sub_state::__attach_future[abi:ne200100](state);
  return v4;
}

void std::promise<void>::set_value(std::promise<void> *this)
{
  state = this->__state_;
  if (!state)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_sub_state::set_value(state);
}

void std::promise<void>::set_exception(std::promise<void> *this, std::exception_ptr __p)
{
  state = this->__state_;
  if (!this->__state_)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::exception_ptr::exception_ptr(&v4, __p.__ptr_);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(state, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void std::promise<void>::set_value_at_thread_exit(std::promise<void> *this)
{
  state = this->__state_;
  if (!state)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_sub_state::set_value_at_thread_exit(state);
}

void std::promise<void>::set_exception_at_thread_exit(std::promise<void> *this, std::exception_ptr __p)
{
  state = this->__state_;
  if (!this->__state_)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::exception_ptr::exception_ptr(&v4, __p.__ptr_);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception_at_thread_exit(state, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void std::shared_future<void>::~shared_future(std::shared_future<void> *this)
{
  state = this->__state_;
  if (state)
  {
    if (!atomic_fetch_add(&state->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (state->__on_zero_shared)(state);
    }
  }
}

{
  state = this->__state_;
  if (state)
  {
    if (!atomic_fetch_add(&state->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (state->__on_zero_shared)(state);
    }
  }
}

std::shared_future<void> *__cdecl std::shared_future<void>::operator=(std::shared_future<void> *this, const std::shared_future<void> *__rhs)
{
  if (__rhs->__state_)
  {
    atomic_fetch_add_explicit(&__rhs->__state_->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  state = this->__state_;
  if (this->__state_ && !atomic_fetch_add(&state->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (state->__on_zero_shared)(state);
  }

  this->__state_ = __rhs->__state_;
  return this;
}

void std::__assoc_sub_state::~__assoc_sub_state(std::__assoc_sub_state *this)
{
  p_exception = &this->__exception_;
  std::condition_variable::~condition_variable(&this->__cv_);
  std::mutex::~mutex(&this->__mut_);
  std::exception_ptr::~exception_ptr(p_exception);

  std::__shared_count::~__shared_count(this);
}

{
  p_exception = &this->__exception_;
  std::condition_variable::~condition_variable(&this->__cv_);
  std::mutex::~mutex(&this->__mut_);
  std::exception_ptr::~exception_ptr(p_exception);
  std::__shared_count::~__shared_count(this);

  JUMPOUT(0x193B0CA40);
}

void std::__future_error_category::~__future_error_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x193B0CA40);
}

void std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(const std::logic_error *a1@<X0>, std::exception_ptr **a2@<X8>)
{
  exception = __cxa_allocate_exception(0x20uLL);
  __cxa_init_primary_exception();
  v5 = std::logic_error::logic_error(exception, a1);
  exception[1] = a1[1];

  std::exception_ptr::__from_native_exception_pointer(v5, a2);
}

void std::mutex::~mutex(std::mutex *this)
{
  pthread_mutex_destroy(&this->__m_);
}

{
  pthread_mutex_destroy(&this->__m_);
}

void std::mutex::lock(std::mutex *this)
{
  v1 = pthread_mutex_lock(&this->__m_);
  if (v1)
  {
    std::__throw_system_error(v1, "mutex lock failed");
  }
}

std::recursive_mutex *__cdecl std::recursive_mutex::recursive_mutex(std::recursive_mutex *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = pthread_mutexattr_init(&v10);
  if (v2)
  {
    std::__throw_system_error(v2, "recursive_mutex constructor failed");
  }

  v3 = pthread_mutexattr_settype(&v10, 2);
  if (v3)
  {
    __eva = v3;
    pthread_mutexattr_destroy(&v10);
    std::__throw_system_error(__eva, "recursive_mutex constructor failed");
  }

  v4 = pthread_mutex_init(&this->__m_, &v10);
  v5 = pthread_mutexattr_destroy(&v10);
  if (v4)
  {
    std::__throw_system_error(v4, "recursive_mutex constructor failed");
  }

  if (v5)
  {
    __ev = v5;
    pthread_mutex_destroy(&this->__m_);
    std::__throw_system_error(__ev, "recursive_mutex constructor failed");
  }

  v6 = *MEMORY[0x1E69E9840];
  return this;
}

void std::recursive_mutex::~recursive_mutex(std::recursive_mutex *this)
{
  pthread_mutex_destroy(&this->__m_);
}

{
  pthread_mutex_destroy(&this->__m_);
}

void std::recursive_mutex::lock(std::recursive_mutex *this)
{
  v1 = pthread_mutex_lock(&this->__m_);
  if (v1)
  {
    std::__throw_system_error(v1, "recursive_mutex lock failed");
  }
}

std::timed_mutex *__cdecl std::timed_mutex::timed_mutex(std::timed_mutex *this)
{
  this->__m_.__m_.__sig = 850045863;
  *this->__m_.__m_.__opaque = 0u;
  *&this->__m_.__m_.__opaque[16] = 0u;
  *&this->__m_.__m_.__opaque[32] = 0u;
  *&this->__m_.__m_.__opaque[48] = 0;
  this->__cv_.__cv_.__sig = 1018212795;
  *this->__cv_.__cv_.__opaque = 0u;
  *&this->__cv_.__cv_.__opaque[16] = 0u;
  *&this->__cv_.__cv_.__opaque[25] = 0u;
  return this;
}

{
  this->__m_.__m_.__sig = 850045863;
  *this->__m_.__m_.__opaque = 0u;
  *&this->__m_.__m_.__opaque[16] = 0u;
  *&this->__m_.__m_.__opaque[32] = 0u;
  *&this->__m_.__m_.__opaque[48] = 0;
  this->__cv_.__cv_.__sig = 1018212795;
  *this->__cv_.__cv_.__opaque = 0u;
  *&this->__cv_.__cv_.__opaque[16] = 0u;
  *&this->__cv_.__cv_.__opaque[25] = 0u;
  return this;
}

void std::timed_mutex::~timed_mutex(std::timed_mutex *this)
{
  std::mutex::lock(&this->__m_);
  pthread_mutex_unlock(&this->__m_.__m_);
  std::condition_variable::~condition_variable(&this->__cv_);

  std::mutex::~mutex(&this->__m_);
}

void std::timed_mutex::lock(std::timed_mutex *this)
{
  v3.__m_ = &this->__m_;
  v3.__owns_ = 1;
  std::mutex::lock(&this->__m_);
  if (!this->__locked_)
  {
    this->__locked_ = 1;
LABEL_6:
    pthread_mutex_unlock(&v3.__m_->__m_);
    return;
  }

  do
  {
    std::condition_variable::wait(&this->__cv_, &v3);
  }

  while (this->__locked_);
  owns = v3.__owns_;
  this->__locked_ = 1;
  if (owns)
  {
    goto LABEL_6;
  }
}

uint64_t std::unique_lock<std::mutex>::~unique_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    pthread_mutex_unlock(*a1);
  }

  return a1;
}

BOOL std::timed_mutex::try_lock(std::timed_mutex *this)
{
  if (pthread_mutex_trylock(&this->__m_.__m_))
  {
    return 0;
  }

  locked = this->__locked_;
  if (!locked)
  {
    this->__locked_ = 1;
  }

  pthread_mutex_unlock(&this->__m_.__m_);
  return !locked;
}

void std::timed_mutex::unlock(std::timed_mutex *this)
{
  std::mutex::lock(&this->__m_);
  this->__locked_ = 0;
  std::condition_variable::notify_one(&this->__cv_);
  pthread_mutex_unlock(&this->__m_.__m_);
}

std::recursive_timed_mutex *__cdecl std::recursive_timed_mutex::recursive_timed_mutex(std::recursive_timed_mutex *this)
{
  this->__m_.__m_.__sig = 850045863;
  *this->__m_.__m_.__opaque = 0u;
  *&this->__m_.__m_.__opaque[16] = 0u;
  *&this->__m_.__m_.__opaque[32] = 0u;
  *&this->__m_.__m_.__opaque[48] = 0;
  this->__cv_.__cv_.__sig = 1018212795;
  *this->__cv_.__cv_.__opaque = 0u;
  *&this->__cv_.__cv_.__opaque[16] = 0u;
  *&this->__cv_.__cv_.__opaque[32] = 0u;
  this->__id_.__id_ = 0;
  return this;
}

{
  this->__m_.__m_.__sig = 850045863;
  *this->__m_.__m_.__opaque = 0u;
  *&this->__m_.__m_.__opaque[16] = 0u;
  *&this->__m_.__m_.__opaque[32] = 0u;
  *&this->__m_.__m_.__opaque[48] = 0;
  this->__cv_.__cv_.__sig = 1018212795;
  *this->__cv_.__cv_.__opaque = 0u;
  *&this->__cv_.__cv_.__opaque[16] = 0u;
  *&this->__cv_.__cv_.__opaque[32] = 0u;
  this->__id_.__id_ = 0;
  return this;
}

void std::recursive_timed_mutex::~recursive_timed_mutex(std::recursive_timed_mutex *this)
{
  std::mutex::lock(&this->__m_);
  pthread_mutex_unlock(&this->__m_.__m_);
  std::condition_variable::~condition_variable(&this->__cv_);

  std::mutex::~mutex(&this->__m_);
}

void std::recursive_timed_mutex::lock(std::recursive_timed_mutex *this)
{
  v2 = pthread_self();
  v5.__m_ = &this->__m_;
  v5.__owns_ = 1;
  std::mutex::lock(&this->__m_);
  count = this->__count_;
  if (this->__id_.__id_ == v2)
  {
    if (count == -1)
    {
      std::__throw_system_error(35, "recursive_timed_mutex lock limit reached");
    }

    this->__count_ = count + 1;
    goto LABEL_9;
  }

  if (!count)
  {
    this->__count_ = 1;
    this->__id_.__id_ = v2;
LABEL_9:
    pthread_mutex_unlock(&v5.__m_->__m_);
    return;
  }

  do
  {
    std::condition_variable::wait(&this->__cv_, &v5);
  }

  while (this->__count_);
  owns = v5.__owns_;
  this->__count_ = 1;
  this->__id_.__id_ = v2;
  if (owns)
  {
    goto LABEL_9;
  }
}

BOOL std::recursive_timed_mutex::try_lock(std::recursive_timed_mutex *this)
{
  v2 = pthread_self();
  if (pthread_mutex_trylock(&this->__m_.__m_))
  {
    return 0;
  }

  count = this->__count_;
  if (!count || (v3 = 0, count != -1) && this->__id_.__id_ == v2)
  {
    this->__count_ = count + 1;
    this->__id_.__id_ = v2;
    v3 = 1;
  }

  pthread_mutex_unlock(&this->__m_.__m_);
  return v3;
}

void std::recursive_timed_mutex::unlock(std::recursive_timed_mutex *this)
{
  p_m = &this->__m_.__m_;
  v4 = 1;
  std::mutex::lock(&this->__m_);
  v2 = this->__count_ - 1;
  this->__count_ = v2;
  if (v2 || (this->__id_.__id_ = 0, std::unique_lock<std::mutex>::unlock[abi:ne200100](&p_m), std::condition_variable::notify_one(&this->__cv_), (v4 & 1) != 0))
  {
    pthread_mutex_unlock(p_m);
  }
}

std::__shared_mutex_base *__cdecl std::__shared_mutex_base::__shared_mutex_base(std::__shared_mutex_base *this)
{
  this->__mut_.__m_.__sig = 850045863;
  *this->__mut_.__m_.__opaque = 0u;
  *&this->__mut_.__m_.__opaque[16] = 0u;
  *&this->__mut_.__m_.__opaque[32] = 0u;
  *&this->__mut_.__m_.__opaque[48] = 0;
  this->__gate1_.__cv_.__sig = 1018212795;
  *this->__gate1_.__cv_.__opaque = 0u;
  *&this->__gate1_.__cv_.__opaque[16] = 0u;
  *&this->__gate1_.__cv_.__opaque[32] = 0;
  this->__gate2_.__cv_.__sig = 1018212795;
  *this->__gate2_.__cv_.__opaque = 0u;
  *&this->__gate2_.__cv_.__opaque[16] = 0u;
  *&this->__gate2_.__cv_.__opaque[28] = 0u;
  return this;
}

{
  this->__mut_.__m_.__sig = 850045863;
  *this->__mut_.__m_.__opaque = 0u;
  *&this->__mut_.__m_.__opaque[16] = 0u;
  *&this->__mut_.__m_.__opaque[32] = 0u;
  *&this->__mut_.__m_.__opaque[48] = 0;
  this->__gate1_.__cv_.__sig = 1018212795;
  *this->__gate1_.__cv_.__opaque = 0u;
  *&this->__gate1_.__cv_.__opaque[16] = 0u;
  *&this->__gate1_.__cv_.__opaque[32] = 0;
  this->__gate2_.__cv_.__sig = 1018212795;
  *this->__gate2_.__cv_.__opaque = 0u;
  *&this->__gate2_.__cv_.__opaque[16] = 0u;
  *&this->__gate2_.__cv_.__opaque[28] = 0u;
  return this;
}

void std::__shared_mutex_base::lock(std::__shared_mutex_base *this)
{
  v3.__m_ = &this->__mut_;
  v3.__owns_ = 1;
  std::mutex::lock(&this->__mut_);
  while (1)
  {
    state = this->__state_;
    if ((state & 0x80000000) == 0)
    {
      break;
    }

    std::condition_variable::wait(&this->__gate1_, &v3);
  }

  this->__state_ = state | 0x80000000;
  if (state)
  {
    do
    {
      std::condition_variable::wait(&this->__gate2_, &v3);
    }

    while ((this->__state_ & 0x7FFFFFFF) != 0);
  }

  if (v3.__owns_)
  {
    std::mutex::unlock(v3.__m_);
  }
}

BOOL std::__shared_mutex_base::try_lock(std::__shared_mutex_base *this)
{
  std::mutex::lock(&this->__mut_);
  state = this->__state_;
  if (!state)
  {
    this->__state_ = 0x80000000;
  }

  v3 = state == 0;
  std::mutex::unlock(&this->__mut_);
  return v3;
}

void std::__shared_mutex_base::unlock(std::__shared_mutex_base *this)
{
  std::mutex::lock(&this->__mut_);
  this->__state_ = 0;
  std::mutex::unlock(&this->__mut_);

  std::condition_variable::notify_all(&this->__gate1_);
}

void std::__shared_mutex_base::lock_shared(std::__shared_mutex_base *this)
{
  v5.__m_ = &this->__mut_;
  v5.__owns_ = 1;
  std::mutex::lock(&this->__mut_);
  state = this->__state_;
  if (state <= 0x7FFFFFFE)
  {
    this->__state_ = state + 1;
LABEL_6:
    std::mutex::unlock(v5.__m_);
    return;
  }

  do
  {
    std::condition_variable::wait(&this->__gate1_, &v5);
    v3 = this->__state_;
  }

  while (v3 > 0x7FFFFFFE);
  owns = v5.__owns_;
  this->__state_ = v3 + 1;
  if (owns)
  {
    goto LABEL_6;
  }
}

BOOL std::__shared_mutex_base::try_lock_shared(std::__shared_mutex_base *this)
{
  std::mutex::lock(&this->__mut_);
  state = this->__state_;
  if (state <= 0x7FFFFFFE)
  {
    this->__state_ = state + 1;
  }

  v3 = state < 0x7FFFFFFF;
  std::mutex::unlock(&this->__mut_);
  return v3;
}

void std::__shared_mutex_base::unlock_shared(std::__shared_mutex_base *this)
{
  std::mutex::lock(&this->__mut_);
  state = this->__state_;
  v3 = (state & 0x7FFFFFFF) - 1;
  v4 = v3 | state & 0x80000000;
  this->__state_ = v4;
  if ((v4 & 0x80000000) != 0)
  {
    if (!v3)
    {
      std::mutex::unlock(&this->__mut_);
      p_gate2 = &this->__gate2_;
      goto LABEL_9;
    }
  }

  else if (v3 == 2147483646)
  {
    std::mutex::unlock(&this->__mut_);
    p_gate2 = &this->__gate1_;
LABEL_9:

    std::condition_variable::notify_one(p_gate2);
    return;
  }

  std::mutex::unlock(&this->__mut_);
}

std::shared_timed_mutex *__cdecl std::shared_timed_mutex::shared_timed_mutex(std::shared_timed_mutex *this)
{
  this->__base_.__mut_.__m_.__sig = 850045863;
  *this->__base_.__mut_.__m_.__opaque = 0u;
  *&this->__base_.__mut_.__m_.__opaque[16] = 0u;
  *&this->__base_.__mut_.__m_.__opaque[32] = 0u;
  *&this->__base_.__mut_.__m_.__opaque[48] = 0;
  this->__base_.__gate1_.__cv_.__sig = 1018212795;
  *this->__base_.__gate1_.__cv_.__opaque = 0u;
  *&this->__base_.__gate1_.__cv_.__opaque[16] = 0u;
  *&this->__base_.__gate1_.__cv_.__opaque[32] = 0;
  this->__base_.__gate2_.__cv_.__sig = 1018212795;
  *this->__base_.__gate2_.__cv_.__opaque = 0u;
  *&this->__base_.__gate2_.__cv_.__opaque[16] = 0u;
  *&this->__base_.__gate2_.__cv_.__opaque[28] = 0u;
  return this;
}

{
  this->__base_.__mut_.__m_.__sig = 850045863;
  *this->__base_.__mut_.__m_.__opaque = 0u;
  *&this->__base_.__mut_.__m_.__opaque[16] = 0u;
  *&this->__base_.__mut_.__m_.__opaque[32] = 0u;
  *&this->__base_.__mut_.__m_.__opaque[48] = 0;
  this->__base_.__gate1_.__cv_.__sig = 1018212795;
  *this->__base_.__gate1_.__cv_.__opaque = 0u;
  *&this->__base_.__gate1_.__cv_.__opaque[16] = 0u;
  *&this->__base_.__gate1_.__cv_.__opaque[32] = 0;
  this->__base_.__gate2_.__cv_.__sig = 1018212795;
  *this->__base_.__gate2_.__cv_.__opaque = 0u;
  *&this->__base_.__gate2_.__cv_.__opaque[16] = 0u;
  *&this->__base_.__gate2_.__cv_.__opaque[28] = 0u;
  return this;
}

void std::thread::~thread(std::thread *this)
{
  if (this->__t_)
  {
    std::terminate();
  }
}

{
  if (this->__t_)
  {
    std::terminate();
  }
}

void std::thread::join(std::thread *this)
{
  t = this->__t_;
  if (!t)
  {
    v3 = 22;
LABEL_5:
    std::__throw_system_error(v3, "thread::join failed");
  }

  v3 = pthread_join(t, 0);
  if (v3)
  {
    goto LABEL_5;
  }

  this->__t_ = 0;
}

void std::thread::detach(std::thread *this)
{
  t = this->__t_;
  if (!t)
  {
    v3 = 22;
LABEL_5:
    std::__throw_system_error(v3, "thread::detach failed");
  }

  v3 = pthread_detach(t);
  if (v3)
  {
    goto LABEL_5;
  }

  this->__t_ = 0;
}

void std::this_thread::sleep_for (const std::chrono::nanoseconds *__ns)
{
  rep = __ns->__rep_;
  if (__ns->__rep_ >= 1)
  {
    v5 = v1;
    v6 = v2;
    v4.tv_sec = rep / 0x3B9ACA00;
    v4.tv_nsec = rep % 0x3B9ACA00;
      ;
    }
  }
}

std::__thread_specific_ptr<std::__thread_struct> *std::__thread_local_data(void)
{
  {
    std::__thread_local_data(void)::__p = std::__thread_specific_ptr<std::__thread_struct>::__thread_specific_ptr(&std::__thread_local_data(void)::__b);
  }

  return std::__thread_local_data(void)::__p;
}

void std::__thread_struct_imp::~__thread_struct_imp(std::__thread_struct_imp *this)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  while (v2 != v3)
  {
    std::condition_variable::notify_all(*v2);
    std::mutex::unlock(*(v2 + 8));
    v2 += 16;
  }

  v4 = *this;
  v5 = *(this + 1);
  if (*this != v5)
  {
    do
    {
      std::__assoc_sub_state::__make_ready(*v4);
      v6 = *v4;
      if (!atomic_fetch_add(&(*v4)->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
      }

      ++v4;
    }

    while (v4 != v5);
  }

  v7 = *(this + 3);
  if (v7)
  {
    *(this + 4) = v7;
    operator delete(v7);
  }

  v8 = *this;
  if (*this)
  {
    *(this + 1) = v8;
    operator delete(v8);
  }
}

void std::__thread_struct_imp::notify_all_at_thread_exit(std::__thread_struct_imp *this, std::condition_variable *a2, std::mutex *a3)
{
  v7 = *(this + 4);
  v6 = *(this + 5);
  if (v7 >= v6)
  {
    v9 = *(this + 3);
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 4;
    v12 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      std::vector<std::pair<std::string_view,std::__fs::filesystem::PathPartKind>>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v15 = operator new(16 * v14);
      v9 = *(this + 3);
      v10 = *(this + 4) - v9;
      v16 = v10 >> 4;
    }

    else
    {
      v15 = 0;
      v16 = v11;
    }

    v17 = &v15[16 * v11];
    v18 = &v15[16 * v14];
    *v17 = a2;
    *(v17 + 1) = a3;
    v8 = v17 + 16;
    v19 = &v17[-16 * v16];
    memcpy(v19, v9, v10);
    *(this + 3) = v19;
    *(this + 4) = v8;
    *(this + 5) = v18;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = a2;
    *(v7 + 1) = a3;
    v8 = v7 + 16;
  }

  *(this + 4) = v8;
}

void std::__thread_struct_imp::__make_ready_at_thread_exit(std::__thread_struct_imp *this, std::__assoc_sub_state *a2)
{
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v5 >= v4)
  {
    v7 = *this;
    v8 = v5 - *this;
    v9 = v8 >> 3;
    v10 = (v8 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<std::pair<std::string_view,std::__fs::filesystem::PathPartKind>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      v13 = operator new(8 * v12);
      v7 = *this;
      v8 = *(this + 1) - *this;
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[8 * v9];
    v15 = &v13[8 * v12];
    v16 = &v14[-8 * (v8 >> 3)];
    *v14 = a2;
    v6 = v14 + 8;
    memcpy(v16, v7, v8);
    *this = v16;
    *(this + 1) = v6;
    *(this + 2) = v15;
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

  *(this + 1) = v6;
  atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
}

std::__thread_struct *__cdecl std::__thread_struct::__thread_struct(std::__thread_struct *this)
{
  operator new();
}

{
  operator new();
}

void std::__thread_struct::~__thread_struct(std::__thread_struct *this)
{
  p = this->__p_;
  if (p)
  {
    std::__thread_struct_imp::~__thread_struct_imp(p);
    MEMORY[0x193B0CA40]();
  }
}

std::__thread_specific_ptr<std::__thread_struct> *__cdecl std::__thread_specific_ptr<std::__thread_struct>::__thread_specific_ptr(std::__thread_specific_ptr<std::__thread_struct> *this)
{
  v2 = pthread_key_create(&this->__key_, std::__thread_specific_ptr<std::__thread_struct>::__at_thread_exit);
  if (v2)
  {
    std::__throw_system_error(v2, "__thread_specific_ptr construction failed");
  }

  return this;
}

void std::__thread_specific_ptr<std::__thread_struct>::__at_thread_exit(void *a1)
{
  if (a1)
  {
    std::__thread_struct::~__thread_struct(a1);

    JUMPOUT(0x193B0CA40);
  }
}

std::string *std::__iostream_category::message@<X0>(const std::__do_message *this@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  if (a2 == 1 || a2 > 107)
  {
    operator new();
  }

  return std::__do_message::message(a3, this, a2);
}

const std::error_category *std::iostream_category(void)
{
  {
    std::iostream_category();
  }

  return &std::iostream_category(void)::helper;
}

std::ios_base::failure *__cdecl std::ios_base::failure::failure(std::ios_base::failure *this, const std::string *__msg, const std::error_code *__ec)
{
  result = std::system_error::system_error(this, *__ec, __msg);
  return result;
}

{
  result = std::system_error::system_error(this, *__ec, __msg);
  return result;
}

std::ios_base::failure *__cdecl std::ios_base::failure::failure(std::ios_base::failure *this, const char *__msg, const std::error_code *__ec)
{
  result = std::system_error::system_error(this, *__ec, __msg);
  return result;
}

{
  result = std::system_error::system_error(this, *__ec, __msg);
  return result;
}

void std::ios_base::failure::~failure(std::ios_base::failure *this)
{
  std::system_error::~system_error(this);

  JUMPOUT(0x193B0CA40);
}

std::locale std::ios_base::imbue(std::ios_base *this, const std::locale *__loc)
{
  std::locale::locale(v2, &this->__loc_);
  v5 = std::locale::operator=(&this->__loc_, __loc);
  event_size = this->__event_size_;
  if (event_size)
  {
    v7 = event_size - 1;
    do
    {
      v5 = (this->__fn_[v7])(1, this, this->__index_[v7]);
      --v7;
    }

    while (v7 != -1);
  }

  return v5;
}

uint64_t *__cdecl std::ios_base::iword(std::ios_base *this, int __index)
{
  v3 = __index;
  v4 = __index + 1;
  iarray_cap = this->__iarray_cap_;
  if (v4 <= iarray_cap)
  {
    iarray = this->__iarray_;
  }

  else
  {
    v6 = 2 * iarray_cap;
    if (v6 <= v4)
    {
      v6 = __index + 1;
    }

    if (v4 >= 0xFFFFFFFFFFFFFFFLL)
    {
      v7 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = v6;
    }

    v8 = v7;
    v9 = malloc_type_realloc(this->__iarray_, 8 * v7, 0x100004000313F17uLL);
    if (!v9)
    {
      std::ios_base::clear(this, this->__rdstate_ | 1);
      result = &std::ios_base::iword(int)::error;
      std::ios_base::iword(int)::error = 0;
      return result;
    }

    iarray = v9;
    this->__iarray_ = v9;
    iarray_size = this->__iarray_size_;
    if (iarray_size < v7)
    {
      v12 = &v9[iarray_size];
      v13 = v12 + 1;
      if (v12 + 1 <= &iarray[v8])
      {
        v13 = &iarray[v8];
      }

      bzero(v12, ((v13 + ~iarray + -8 * iarray_size) & 0xFFFFFFFFFFFFFFF8) + 8);
    }

    this->__iarray_cap_ = v7;
  }

  v14 = this->__iarray_size_;
  if (v14 <= v4)
  {
    v14 = v4;
  }

  this->__iarray_size_ = v14;
  return &iarray[v3];
}

void **__cdecl std::ios_base::pword(std::ios_base *this, int __index)
{
  v3 = __index;
  v4 = __index + 1;
  if (v4 <= this->__parray_cap_)
  {
    parray = this->__parray_;
    parray_size = this->__parray_size_;
  }

  else
  {
    v5 = this->__parray_;
    v6 = 2 * this->__iarray_cap_;
    if (v6 <= v4)
    {
      v6 = __index + 1;
    }

    if (v4 >= 0xFFFFFFFFFFFFFFFLL)
    {
      v7 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = v6;
    }

    parray = malloc_type_realloc(v5, 8 * v7, 0x80040B8603338uLL);
    if (!parray)
    {
      std::ios_base::clear(this, this->__rdstate_ | 1);
      result = &std::ios_base::pword(int)::error;
      std::ios_base::pword(int)::error = 0;
      return result;
    }

    this->__parray_ = parray;
    parray_size = this->__parray_size_;
    if (parray_size < v7)
    {
      v10 = &parray[parray_size];
      do
      {
        *v10++ = 0;
        parray = this->__parray_;
      }

      while (v10 < &parray[v7]);
    }

    this->__parray_cap_ = v7;
  }

  if (parray_size <= v4)
  {
    parray_size = v4;
  }

  this->__parray_size_ = parray_size;
  return &parray[v3];
}

void std::ios_base::register_callback(std::ios_base *this, std::ios_base::event_callback __fn, int __index)
{
  event_size = this->__event_size_;
  event_cap = this->__event_cap_;
  v8 = event_size + 1;
  if (event_size + 1 > event_cap)
  {
    v9 = 2 * event_cap;
    if (2 * event_cap <= v8)
    {
      v9 = v8;
    }

    if (v8 >= 0xFFFFFFFFFFFFFFFLL)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = malloc_type_realloc(this->__fn_, 8 * v10, 0x80040B8603338uLL);
    if (!v11)
    {
      std::ios_base::clear(this, this->__rdstate_ | 1);
    }

    this->__fn_ = v11;
    v12 = malloc_type_realloc(this->__index_, 4 * v10, 0x100004052888210uLL);
    if (!v12)
    {
      std::ios_base::clear(this, this->__rdstate_ | 1);
    }

    this->__index_ = v12;
    this->__event_cap_ = v10;
    event_size = this->__event_size_;
    v8 = event_size + 1;
  }

  this->__fn_[event_size] = __fn;
  this->__index_[event_size] = __index;
  this->__event_size_ = v8;
}

void std::ios_base::~ios_base(std::ios_base *this)
{
  p_loc = &this->__loc_;
  if (this->__loc_)
  {
    event_size = this->__event_size_;
    if (event_size)
    {
      v4 = event_size - 1;
      do
      {
        (this->__fn_[v4])(0, this, this->__index_[v4]);
        --v4;
      }

      while (v4 != -1);
    }

    std::locale::~locale(p_loc);
    free(this->__fn_);
    free(this->__index_);
    free(this->__iarray_);
    free(this->__parray_);
  }
}

{
  std::ios_base::~ios_base(this);

  JUMPOUT(0x193B0CA40);
}

void std::ios_base::clear(std::ios_base *this, std::ios_base::iostate __state)
{
  v2 = (this->__rdbuf_ == 0) | __state;
  this->__rdstate_ = v2;
  if ((this->__exceptions_ & v2) != 0)
  {
    std::__throw_failure[abi:ne200100]("ios_base::clear");
  }
}

void std::__throw_failure[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  std::iostream_category();
  v3.__cat_ = &std::iostream_category(void)::helper;
  *&v3.__val_ = 1;
  std::system_error::system_error(exception, v3, a1);
}

void std::ios_base::init(std::ios_base *this, void *__sb)
{
  this->__rdbuf_ = __sb;
  this->__rdstate_ = __sb == 0;
  this->__exceptions_ = 0;
  this->__fmtflags_ = 4098;
  *&this->__precision_ = xmmword_19231BE90;
  *&this->__fn_ = 0u;
  *&this->__event_size_ = 0u;
  *&this->__iarray_ = 0u;
  *&this->__iarray_cap_ = 0u;
  *&this->__parray_size_ = 0u;
  std::locale::locale(&this->__loc_);
}

void std::ios_base::copyfmt(std::ios_base *this, const std::ios_base *a2)
{
  event_size = a2->__event_size_;
  if (this->__event_cap_ >= event_size)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v5 = malloc_type_malloc(8 * event_size, 0x80040B8603338uLL);
    if (!v5)
    {
      std::__throw_bad_alloc();
    }

    v6 = v5;
    v7 = malloc_type_malloc(4 * a2->__event_size_, 0x100004052888210uLL);
    if (!v7)
    {
      std::__throw_bad_alloc();
    }
  }

  iarray_size = a2->__iarray_size_;
  if (this->__iarray_cap_ >= iarray_size)
  {
    v9 = 0;
  }

  else
  {
    v9 = malloc_type_malloc(8 * iarray_size, 0x100004000313F17uLL);
    if (!v9)
    {
      std::__throw_bad_alloc();
    }
  }

  parray_size = a2->__parray_size_;
  if (this->__parray_cap_ >= parray_size)
  {
    v11 = 0;
  }

  else
  {
    v11 = malloc_type_malloc(8 * parray_size, 0x80040B8603338uLL);
    if (!v11)
    {
      std::__throw_bad_alloc();
    }
  }

  this->__fmtflags_ = a2->__fmtflags_;
  *&this->__precision_ = *&a2->__precision_;
  std::locale::operator=(&this->__loc_, &a2->__loc_);
  if (this->__event_cap_ < a2->__event_size_)
  {
    free(this->__fn_);
    this->__fn_ = v6;
    free(this->__index_);
    v6 = 0;
    this->__index_ = v7;
    this->__event_cap_ = a2->__event_size_;
    v7 = 0;
  }

  this->__event_size_ = 0;
  if (a2->__event_size_)
  {
    v12 = 0;
    do
    {
      this->__fn_[v12] = a2->__fn_[v12];
      this->__index_[v12] = a2->__index_[v12];
      this->__event_size_ = ++v12;
    }

    while (v12 < a2->__event_size_);
  }

  if (this->__iarray_cap_ < a2->__iarray_size_)
  {
    free(this->__iarray_);
    this->__iarray_ = v9;
    this->__iarray_cap_ = a2->__iarray_size_;
    v9 = 0;
  }

  this->__iarray_size_ = 0;
  if (a2->__iarray_size_)
  {
    v13 = 0;
    iarray = a2->__iarray_;
    v15 = this->__iarray_;
    do
    {
      v15[v13] = iarray[v13];
      v13 = this->__iarray_size_ + 1;
      this->__iarray_size_ = v13;
    }

    while (v13 < a2->__iarray_size_);
  }

  if (this->__parray_cap_ < a2->__parray_size_)
  {
    free(this->__parray_);
    this->__parray_ = v11;
    this->__parray_cap_ = a2->__parray_size_;
    v11 = 0;
  }

  this->__parray_size_ = 0;
  if (a2->__parray_size_)
  {
    v16 = 0;
    do
    {
      this->__parray_[v16] = a2->__parray_[v16];
      this->__parray_size_ = ++v16;
    }

    while (v16 < a2->__parray_size_);
  }

  if (v11)
  {
    free(v11);
  }

  if (v9)
  {
    free(v9);
  }

  if (v7)
  {
    free(v7);
  }

  if (v6)
  {

    free(v6);
  }
}

void sub_1922B82FC(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    free(v3);
    if (!v2)
    {
LABEL_3:
      if (!v1)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      free(v1);
      goto LABEL_8;
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  free(v2);
  if (!v1)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void std::ios_base::move(std::ios_base *this, std::ios_base *a2)
{
  this->__fmtflags_ = a2->__fmtflags_;
  *&this->__precision_ = *&a2->__precision_;
  *&this->__rdstate_ = *&a2->__rdstate_;
  this->__rdbuf_ = 0;
  std::locale::locale(&this->__loc_, &a2->__loc_);
  *&this->__fn_ = *&a2->__fn_;
  *&a2->__fn_ = 0u;
  *&this->__event_size_ = *&a2->__event_size_;
  *&a2->__event_size_ = 0u;
  this->__iarray_ = a2->__iarray_;
  a2->__iarray_ = 0;
  *&this->__iarray_size_ = *&a2->__iarray_size_;
  *&a2->__iarray_size_ = 0u;
  this->__parray_ = a2->__parray_;
  a2->__parray_ = 0;
  *&this->__parray_size_ = *&a2->__parray_size_;
  *&a2->__parray_size_ = 0u;
}

void std::ios_base::swap(std::ios_base *this, std::ios_base *a2)
{
  fmtflags = this->__fmtflags_;
  this->__fmtflags_ = a2->__fmtflags_;
  a2->__fmtflags_ = fmtflags;
  precision = this->__precision_;
  this->__precision_ = a2->__precision_;
  a2->__precision_ = precision;
  width = this->__width_;
  this->__width_ = a2->__width_;
  a2->__width_ = width;
  LODWORD(width) = this->__rdstate_;
  this->__rdstate_ = a2->__rdstate_;
  a2->__rdstate_ = width;
  LODWORD(width) = this->__exceptions_;
  this->__exceptions_ = a2->__exceptions_;
  a2->__exceptions_ = width;
  std::locale::locale(&v20, &this->__loc_);
  std::locale::operator=(&this->__loc_, &a2->__loc_);
  std::locale::operator=(&a2->__loc_, &v20);
  std::locale::~locale(&v20);
  fn = this->__fn_;
  this->__fn_ = a2->__fn_;
  a2->__fn_ = fn;
  index = this->__index_;
  event_size = this->__event_size_;
  v10 = a2->__event_size_;
  this->__index_ = a2->__index_;
  this->__event_size_ = v10;
  a2->__index_ = index;
  a2->__event_size_ = event_size;
  event_cap = this->__event_cap_;
  iarray = this->__iarray_;
  v13 = a2->__iarray_;
  this->__event_cap_ = a2->__event_cap_;
  this->__iarray_ = v13;
  a2->__event_cap_ = event_cap;
  a2->__iarray_ = iarray;
  iarray_size = this->__iarray_size_;
  this->__iarray_size_ = a2->__iarray_size_;
  a2->__iarray_size_ = iarray_size;
  iarray_cap = this->__iarray_cap_;
  parray = this->__parray_;
  v17 = a2->__parray_;
  this->__iarray_cap_ = a2->__iarray_cap_;
  this->__parray_ = v17;
  a2->__iarray_cap_ = iarray_cap;
  a2->__parray_ = parray;
  parray_size = this->__parray_size_;
  this->__parray_size_ = a2->__parray_size_;
  a2->__parray_size_ = parray_size;
  parray_cap = this->__parray_cap_;
  this->__parray_cap_ = a2->__parray_cap_;
  a2->__parray_cap_ = parray_cap;
}

void std::ios_base::__set_badbit_and_consider_rethrow(std::ios_base *this)
{
  this->__rdstate_ |= 1u;
  if (this->__exceptions_)
  {
    __cxa_rethrow();
  }
}

void std::ios_base::__set_failbit_and_consider_rethrow(std::ios_base *this)
{
  this->__rdstate_ |= 4u;
  if ((this->__exceptions_ & 4) != 0)
  {
    __cxa_rethrow();
  }
}

BOOL std::ios_base::sync_with_stdio(BOOL __sync)
{
  v1 = std::ios_base::sync_with_stdio(BOOL)::previous_state;
  std::ios_base::sync_with_stdio(BOOL)::previous_state = __sync;
  return v1;
}

void std::__iostream_category::~__iostream_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x193B0CA40);
}

void std::ios::~ios(std::ios_base *a1)
{
  std::ios_base::~ios_base(a1);

  JUMPOUT(0x193B0CA40);
}

std::ios_base *std::ios::copyfmt(std::ios_base *this, std::ios_base *a2)
{
  if (this != a2)
  {
    std::ios_base::__call_callbacks(this, erase_event);
    std::ios_base::copyfmt(this, a2);
    this[1].__vftable = a2[1].__vftable;
    this[1].__fmtflags_ = a2[1].__fmtflags_;
    std::ios_base::__call_callbacks(this, copyfmt_event);
    this->__exceptions_ = a2->__exceptions_;
    std::ios_base::clear(this, this->__rdstate_);
  }

  return this;
}

std::locale *std::streambuf::~streambuf(std::locale *a1)
{
  std::locale::~locale(a1 + 1);
  return a1;
}

{
  std::locale::~locale(a1 + 1);
  return a1;
}

void std::streambuf::~streambuf(std::locale *a1)
{
  std::locale::~locale(a1 + 1);

  JUMPOUT(0x193B0CA40);
}

const std::locale *std::streambuf::pubimbue@<X0>(std::locale *a1@<X0>, const std::locale *a2@<X1>, std::locale *a3@<X8>)
{
  v5 = a1 + 1;
  (*(a1->__locale_ + 2))(a1);
  std::locale::locale(a3, v5);

  return std::locale::operator=(v5, a2);
}

uint64_t std::streambuf::pubseekpos(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v2;
  v9 = *(a2 + 128);
  v3 = *(a2 + 112);
  v8[6] = *(a2 + 96);
  v8[7] = v3;
  v4 = *(a2 + 80);
  v8[4] = *(a2 + 64);
  v8[5] = v4;
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  result = (*(*a1 + 40))(a1, v8);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::streambuf::in_avail(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  if (v1 >= v2)
  {
    return (*(*a1 + 56))();
  }

  else
  {
    return v2 - v1;
  }
}

uint64_t std::streambuf::snextc(void *a1)
{
  v3 = a1[3];
  v2 = a1[4];
  if (v3 == v2)
  {
    result = (*(*a1 + 80))(a1);
    if (result == -1)
    {
      return result;
    }

    v4 = a1[3];
    v2 = a1[4];
  }

  else
  {
    v4 = v3 + 1;
    a1[3] = v4;
  }

  if (v4 != v2)
  {
    return *v4;
  }

  v6 = *(*a1 + 72);

  return v6(a1);
}

uint64_t std::streambuf::sbumpc(void *a1)
{
  v1 = a1[3];
  if (v1 == a1[4])
  {
    return (*(*a1 + 80))();
  }

  a1[3] = v1 + 1;
  return *v1;
}

uint64_t std::streambuf::sgetc(void *a1)
{
  v1 = a1[3];
  if (v1 == a1[4])
  {
    return (*(*a1 + 72))();
  }

  else
  {
    return *v1;
  }
}

uint64_t std::streambuf::sputbackc(void *a1, unsigned __int8 a2)
{
  v2 = a1[3];
  if (a1[2] == v2)
  {
    return (*(*a1 + 88))(a1, a2);
  }

  v4 = *(v2 - 1);
  v3 = (v2 - 1);
  if (v4 != a2)
  {
    return (*(*a1 + 88))(a1, a2);
  }

  a1[3] = v3;
  return *v3;
}

uint64_t std::streambuf::sungetc(void *a1)
{
  v1 = a1[3];
  if (a1[2] == v1)
  {
    return (*(*a1 + 88))(a1, 0xFFFFFFFFLL);
  }

  a1[3] = v1 - 1;
  return *(v1 - 1);
}

uint64_t std::streambuf::sputc(void *a1, unsigned __int8 a2)
{
  v2 = a1[6];
  if (v2 == a1[7])
  {
    return (*(*a1 + 104))(a1, a2);
  }

  a1[6] = v2 + 1;
  *v2 = a2;
  return a2;
}

uint64_t std::streambuf::basic_streambuf(uint64_t a1)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t std::streambuf::basic_streambuf(uint64_t a1, uint64_t a2)
{
  std::locale::locale((a1 + 8), (a2 + 8));
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t std::streambuf::operator=(uint64_t a1, uint64_t a2)
{
  std::locale::operator=((a1 + 8), (a2 + 8));
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void std::streambuf::swap(std::locale *a1, std::locale *a2)
{
  std::locale::locale(&v10, a1 + 1);
  std::locale::operator=(a1 + 1, a2 + 1);
  std::locale::operator=(a2 + 1, &v10);
  std::locale::~locale(&v10);
  locale = a1[2].__locale_;
  a1[2].__locale_ = a2[2].__locale_;
  a2[2].__locale_ = locale;
  v5 = a1[3].__locale_;
  a1[3].__locale_ = a2[3].__locale_;
  a2[3].__locale_ = v5;
  v6 = a1[4].__locale_;
  a1[4].__locale_ = a2[4].__locale_;
  a2[4].__locale_ = v6;
  v7 = a1[5].__locale_;
  a1[5].__locale_ = a2[5].__locale_;
  a2[5].__locale_ = v7;
  v8 = a1[6].__locale_;
  a1[6].__locale_ = a2[6].__locale_;
  a2[6].__locale_ = v8;
  v9 = a1[7].__locale_;
  a1[7].__locale_ = a2[7].__locale_;
  a2[7].__locale_ = v9;
}

void *std::streambuf::setg(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  return result;
}

void *std::streambuf::setp(void *result, uint64_t a2, uint64_t a3)
{
  result[5] = a2;
  result[6] = a2;
  result[7] = a3;
  return result;
}

double std::streambuf::seekoff@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = -1;
  return result;
}

double std::streambuf::seekpos@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = -1;
  return result;
}

uint64_t std::streambuf::xsgetn(void *a1, char *__dst, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  for (i = 0; i < a3; i += v10)
  {
    v7 = a1[3];
    v8 = a1[4];
    if (v7 >= v8)
    {
      v11 = (*(*a1 + 80))(a1);
      if (v11 == -1)
      {
        return i;
      }

      *__dst++ = v11;
      v10 = 1;
    }

    else
    {
      v9 = v8 - v7;
      if (a3 - i < v9)
      {
        v9 = a3 - i;
      }

      if (v9 >= 0x7FFFFFFF)
      {
        v10 = 0x7FFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (v9)
      {
        memmove(__dst, v7, v10);
        v7 = a1[3];
      }

      __dst += v10;
      a1[3] = &v7[v10];
    }
  }

  return i;
}

uint64_t std::streambuf::uflow(void *a1)
{
  result = (*(*a1 + 72))(a1);
  if (result != -1)
  {
    v3 = a1[3];
    a1[3] = v3 + 1;
    return *v3;
  }

  return result;
}

uint64_t std::streambuf::xsputn(void *a1, unsigned __int8 *__src, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = a1[6];
    v8 = a1[7];
    if (v7 >= v8)
    {
      if ((*(*a1 + 104))(a1, *__src) == -1)
      {
        return v6;
      }

      ++__src;
      ++v6;
    }

    else
    {
      v9 = v8 - v7;
      if (a3 - v6 >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = a3 - v6;
      }

      if (v10)
      {
        memmove(v7, __src, v10);
        v7 = a1[6];
      }

      a1[6] = &v7[v10];
      __src += v10;
      v6 += v10;
    }
  }

  while (v6 < a3);
  return v6;
}

uint64_t *std::istream::basic_istream(uint64_t *a1, uint64_t *a2, void *__sb)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[1];
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, __sb);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  return a1;
}

uint64_t std::istream::basic_istream(uint64_t a1, void *a2)
{
  *(a1 + 64) = 0;
  *(a1 + 8) = 0;
  std::ios_base::init((a1 + 16), a2);
  *(a1 + 152) = 0;
  *(a1 + 160) = -1;
  return a1;
}

void virtual thunk tostd::istream::~istream(void *a1)
{
  std::ios_base::~ios_base((a1 + *(*a1 - 24) + 16));
}

{
  std::ios_base::~ios_base((a1 + *(*a1 - 24) + 16));

  JUMPOUT(0x193B0CA40);
}

void std::istream::~istream(uint64_t a1)
{
  std::ios_base::~ios_base((a1 + 16));

  JUMPOUT(0x193B0CA40);
}

void std::istream::swap(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  a1[1] = a2[1];
  a2[1] = v2;
  v4 = (a1 + *(v3 - 24));
  v5 = (a2 + *(*a2 - 24));
  std::ios_base::swap(v4, v5);
  v6 = v4[1].__vftable;
  v4[1].__vftable = v5[1].__vftable;
  v5[1].__vftable = v6;
  LODWORD(v6) = v4[1].__fmtflags_;
  v4[1].__fmtflags_ = v5[1].__fmtflags_;
  v5[1].__fmtflags_ = v6;
}

BOOL *std::istream::sentry::sentry(BOOL *a1, uint64_t *a2, char a3)
{
  *a1 = 0;
  v4 = *a2;
  v5 = (a2 + *(*a2 - 24));
  rdstate = v5->__rdstate_;
  if (rdstate)
  {
    std::ios_base::clear(v5, rdstate | 4);
  }

  else
  {
    v9 = v5[1].__vftable;
    if (v9)
    {
      std::ostream::flush(v9, a2);
      v4 = *a2;
    }

    if ((a3 & 1) == 0)
    {
      v10 = (a2 + *(v4 - 24));
      if ((v10->__fmtflags_ & 0x1000) != 0)
      {
        std::ios_base::getloc(v10);
        v11 = std::locale::use_facet(&v19, &std::ctype<char>::id);
        std::locale::~locale(&v19);
        v12 = *(a2 + *(*a2 - 24) + 40);
        if (v12)
        {
          while (v12[3] != v12[4] || (*(*v12 + 72))(v12) != -1)
          {
            v13 = v12[3];
            if (v13 == v12[4])
            {
              v15 = (*(*v12 + 72))(v12);
              v14 = v15;
              if ((v15 & 0x80) != 0)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v14 = *v13;
              if ((v14 & 0x80) != 0)
              {
                goto LABEL_20;
              }
            }

            if ((*(&v11[1].~facet + v14) & 0x4000) == 0)
            {
LABEL_20:
              if (v12[3] != v12[4])
              {
                goto LABEL_21;
              }

              v18 = (*(*v12 + 72))(v12);
              v4 = *a2;
              if (v18 != -1)
              {
                goto LABEL_22;
              }

              goto LABEL_19;
            }

            v16 = v12[3];
            if (v16 == v12[4])
            {
              (*(*v12 + 80))(v12);
            }

            else
            {
              v12[3] = v16 + 1;
            }
          }
        }

        v4 = *a2;
LABEL_19:
        std::ios_base::clear((a2 + *(v4 - 24)), *(a2 + *(v4 - 24) + 32) | 6);
LABEL_21:
        v4 = *a2;
      }
    }

LABEL_22:
    *a1 = *(a2 + *(v4 - 24) + 32) == 0;
  }

  return a1;
}

void *std::ostream::flush(void *a1, uint64_t a2)
{
  v3 = a1 + *(*a1 - 24);
  if (*(v3 + 5))
  {
    v7[0] = 0;
    v8 = a1;
    if (!*(v3 + 8))
    {
      v4 = *(v3 + 17);
      if (v4)
      {
        std::ostream::flush(v4, a2);
      }

      v7[0] = 1;
      v5 = *(a1 + *(*a1 - 24) + 40);
      if ((*(*v5 + 48))(v5) == -1)
      {
        std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 1);
      }
    }

    std::ostream::sentry::~sentry(v7);
  }

  return a1;
}

void sub_1922B9618(void *a1)
{
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v1 + *(*v1 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922B9604);
}

char *std::istream::operator>>(char *a1, void (*a2)(char *))
{
  a2(&a1[*(*a1 - 24)]);
  return a1;
}

{
  a2(&a1[*(*a1 - 24)]);
  return a1;
}

uint64_t *std::istream::operator>>(uint64_t *a1, void *a2)
{
  a1[1] = 0;
  std::istream::sentry::sentry(&v15, a1, 1);
  if (!v15)
  {
    return a1;
  }

  if (!a2)
  {
    v12 = 4;
    goto LABEL_21;
  }

  v4 = a1 + 5;
  while (1)
  {
    v5 = *(v4 + *(*a1 - 24));
    v6 = v5[3];
    if (v6 == v5[4])
    {
      v7 = (*(*v5 + 72))(v5);
      if (v7 == -1)
      {
        v13 = 2;
        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v7) = *v6;
    }

    v8 = a2[6];
    if (v8 != a2[7])
    {
      a2[6] = v8 + 1;
      *v8 = v7;
      goto LABEL_10;
    }

    if ((*(*a2 + 104))(a2, v7) == -1)
    {
      break;
    }

LABEL_10:
    v9 = a1[1];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      a1[1] = v9 + 1;
    }

    v10 = *(v4 + *(*a1 - 24));
    v11 = v10[3];
    if (v11 == v10[4])
    {
      (*(*v10 + 80))(v10);
    }

    else
    {
      v10[3] = v11 + 1;
    }
  }

  v13 = 0;
LABEL_18:
  if (a1[1])
  {
    v12 = v13;
  }

  else
  {
    v12 = v13 | 4;
  }

LABEL_21:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v12);
  return a1;
}

void sub_1922B98B4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (v1[1])
  {
    v3 = 1;
  }

  else
  {
    v3 = 5;
  }

  v4 = *v1;
  *(v1 + *(v2 - 24) + 32) |= v3;
  if ((*(v1 + *(v2 - 24) + 36) & 5) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922B9878);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<BOOL,char,std::char_traits<char>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::istream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<char,std::istreambuf_iterator<char>>::id);
    (v4->__vftable[1].~facet)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922B9A4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922B9A10);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic_with_numeric_limits[abi:ne200100]<short,char,std::char_traits<char>>(uint64_t *a1, __int16 *a2)
{
  v10 = 0;
  std::istream::sentry::sentry(&v9, a1, 0);
  if (v9)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v7, &std::num_get<char,std::istreambuf_iterator<char>>::id);
    (v4->__vftable[1].~facet_0)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v10, &v8);
    std::locale::~locale(&v7);
    v5 = v8;
    if (v8 > -32769)
    {
      if (v8 >= 0x8000)
      {
        v10 |= 4u;
        v5 = 0x7FFF;
      }
    }

    else
    {
      v10 |= 4u;
      v5 = 0x8000;
    }

    *a2 = v5;
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v10);
  }

  return a1;
}

void sub_1922B9C38(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  __cxa_begin_catch(a1);
  v12 = *(v11 - 20) | 1;
  *(v11 - 20) = v12;
  v13 = *v10;
  *(v10 + *(*v10 - 24) + 32) |= v12;
  if ((*(v10 + *(v13 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922B9BFCLL);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<unsigned short,char,std::char_traits<char>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::istream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<char,std::istreambuf_iterator<char>>::id);
    (v4->__vftable[2].~facet)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922B9DE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922B9DA8);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic_with_numeric_limits[abi:ne200100]<int,char,std::char_traits<char>>(uint64_t *a1, unsigned int *a2)
{
  v10 = 0;
  std::istream::sentry::sentry(&v9, a1, 0);
  if (v9)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v7, &std::num_get<char,std::istreambuf_iterator<char>>::id);
    (v4->__vftable[1].~facet_0)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v10, &v8);
    std::locale::~locale(&v7);
    v5 = v8;
    if (v8 > 0xFFFFFFFF7FFFFFFFLL)
    {
      if (v8 >= 0x80000000)
      {
        v10 |= 4u;
        v5 = 0x7FFFFFFF;
      }
    }

    else
    {
      v10 |= 4u;
      v5 = 0x80000000;
    }

    *a2 = v5;
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v10);
  }

  return a1;
}

void sub_1922B9FD4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  __cxa_begin_catch(a1);
  v12 = *(v11 - 20) | 1;
  *(v11 - 20) = v12;
  v13 = *v10;
  *(v10 + *(*v10 - 24) + 32) |= v12;
  if ((*(v10 + *(v13 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922B9F98);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<unsigned int,char,std::char_traits<char>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::istream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<char,std::istreambuf_iterator<char>>::id);
    (v4->__vftable[2].~facet_0)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922BA180(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BA144);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<long,char,std::char_traits<char>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::istream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<char,std::istreambuf_iterator<char>>::id);
    (v4->__vftable[1].~facet_0)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922BA32C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BA2F0);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<unsigned long,char,std::char_traits<char>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::istream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<char,std::istreambuf_iterator<char>>::id);
    (v4->__vftable[2].__on_zero_shared)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922BA4D8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BA49CLL);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<long long,char,std::char_traits<char>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::istream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<char,std::istreambuf_iterator<char>>::id);
    (v4->__vftable[1].__on_zero_shared)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922BA684(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BA648);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<unsigned long long,char,std::char_traits<char>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::istream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<char,std::istreambuf_iterator<char>>::id);
    (v4->__vftable[3].~facet)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922BA830(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BA7F4);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<float,char,std::char_traits<char>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::istream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<char,std::istreambuf_iterator<char>>::id);
    (v4->__vftable[3].~facet_0)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922BA9DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BA9A0);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<double,char,std::char_traits<char>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::istream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<char,std::istreambuf_iterator<char>>::id);
    (v4->__vftable[3].__on_zero_shared)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922BAB88(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BAB4CLL);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<long double,char,std::char_traits<char>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::istream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<char,std::istreambuf_iterator<char>>::id);
    (v4->__vftable[4].~facet)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922BAD34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BACF8);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<void *,char,std::char_traits<char>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::istream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<char,std::istreambuf_iterator<char>>::id);
    (v4->__vftable[4].~facet_0)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922BAEE0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BAEA4);
  }

  __cxa_rethrow();
}

uint64_t std::istream::get(uint64_t *a1)
{
  a1[1] = 0;
  std::istream::sentry::sentry(&v7, a1, 1);
  if (v7)
  {
    v2 = *(a1 + *(*a1 - 24) + 40);
    v3 = v2[3];
    if (v3 == v2[4])
    {
      v4 = (*(*v2 + 80))(v2);
      if (v4 == -1)
      {
        v5 = 6;
        goto LABEL_7;
      }
    }

    else
    {
      v2[3] = v3 + 1;
      v4 = *v3;
    }

    v5 = 0;
    a1[1] = 1;
LABEL_7:
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v5);
    return v4;
  }

  return 0xFFFFFFFFLL;
}

void sub_1922BB080(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BB040);
  }

  __cxa_rethrow();
}

uint64_t *std::istream::get(uint64_t *a1, _BYTE *a2)
{
  v4 = std::istream::get(a1);
  if (v4 != -1)
  {
    *a2 = v4;
  }

  return a1;
}

uint64_t *std::istream::get(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v6 = std::locale::use_facet(&v9, &std::ctype<char>::id);
  v7 = (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v9);
  return std::istream::get(a1, a2, a3, v7);
}

uint64_t *std::istream::get(uint64_t *a1, _BYTE *a2, uint64_t a3, unsigned __int8 a4)
{
  a1[1] = 0;
  std::istream::sentry::sentry(&v20, a1, 1);
  if (!v20)
  {
    goto LABEL_23;
  }

  v8 = a3 - 1;
  if (a3 < 1)
  {
    v18 = 4;
    goto LABEL_22;
  }

  v9 = a1[1];
  if (v9 >= v8)
  {
    v18 = 0;
    goto LABEL_19;
  }

  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 != v11[4])
    {
      LOBYTE(v13) = *v12;
      goto LABEL_8;
    }

    v13 = (*(*v11 + 72))(v11);
    if (v13 == -1)
    {
      break;
    }

LABEL_8:
    if (v13 != a4)
    {
      *a2++ = v13;
      v14 = a1[1];
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = v14 + 1;
        a1[1] = v14 + 1;
      }

      v16 = *(v10 + *(*a1 - 24));
      v17 = v16[3];
      if (v17 == v16[4])
      {
        (*(*v16 + 80))(v16);
        v15 = a1[1];
      }

      else
      {
        v16[3] = v17 + 1;
      }

      if (v15 < v8)
      {
        continue;
      }
    }

    v18 = 0;
    goto LABEL_16;
  }

  v18 = 2;
LABEL_16:
  v9 = a1[1];
LABEL_19:
  if (!v9)
  {
    v18 |= 4u;
  }

  *a2 = 0;
LABEL_22:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v18);
LABEL_23:
  if (a3 >= 1)
  {
    *a2 = 0;
  }

  return a1;
}

void sub_1922BB3D0(void *a1)
{
  __cxa_begin_catch(a1);
  v3 = *v2;
  *(v2 + *(*v2 - 24) + 32) |= 1u;
  if ((*(v2 + *(v3 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BB378);
  }

  *v1 = 0;
  __cxa_rethrow();
}

uint64_t *std::istream::get(uint64_t *a1, void *a2)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v4 = std::locale::use_facet(&v7, &std::ctype<char>::id);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v7);
  return std::istream::get(a1, a2, v5);
}

uint64_t *std::istream::get(uint64_t *a1, void *a2, unsigned __int8 a3)
{
  a1[1] = 0;
  std::istream::sentry::sentry(&v16, a1, 1);
  if (!v16)
  {
    return a1;
  }

  v6 = a1 + 5;
  while (1)
  {
    v7 = *(v6 + *(*a1 - 24));
    v8 = v7[3];
    if (v8 != v7[4])
    {
      LOBYTE(v9) = *v8;
      goto LABEL_6;
    }

    v9 = (*(*v7 + 72))(v7);
    if (v9 == -1)
    {
      break;
    }

LABEL_6:
    if (v9 == a3)
    {
      goto LABEL_15;
    }

    v10 = a2[6];
    if (v10 == a2[7])
    {
      if ((*(*a2 + 104))(a2, v9) == -1)
      {
LABEL_15:
        v14 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      a2[6] = v10 + 1;
      *v10 = v9;
    }

    v11 = a1[1];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      a1[1] = v11 + 1;
    }

    v12 = *(v6 + *(*a1 - 24));
    v13 = v12[3];
    if (v13 == v12[4])
    {
      (*(*v12 + 80))(v12);
    }

    else
    {
      v12[3] = v13 + 1;
    }
  }

  v14 = 2;
LABEL_17:
  if (!a1[1])
  {
    v14 |= 4u;
  }

  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v14);
  return a1;
}

void sub_1922BB6EC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1922BB6A0);
}

uint64_t *std::istream::getline(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v6 = std::locale::use_facet(&v9, &std::ctype<char>::id);
  v7 = (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v9);
  return std::istream::getline(a1, a2, a3, v7);
}

uint64_t *std::istream::getline(uint64_t *a1, _BYTE *a2, uint64_t a3, unsigned __int8 a4)
{
  a1[1] = 0;
  std::istream::sentry::sentry(&v21, a1, 1);
  if (!v21)
  {
    goto LABEL_19;
  }

  v8 = a1 + 5;
  while (1)
  {
    v9 = *(v8 + *(*a1 - 24));
    v10 = v9[3];
    if (v10 == v9[4])
    {
      v11 = (*(*v9 + 72))(v9);
      if (v11 == -1)
      {
        v18 = 2;
        goto LABEL_20;
      }
    }

    else
    {
      LOBYTE(v11) = *v10;
    }

    if (v11 == a4)
    {
      break;
    }

    if (a1[1] >= a3 - 1)
    {
      v18 = 4;
      goto LABEL_20;
    }

    *a2 = v11;
    v12 = a2 + 1;
    v13 = *(v8 + *(*a1 - 24));
    v14 = v13[3];
    if (v14 == v13[4])
    {
      (*(*v13 + 80))(v13);
    }

    else
    {
      v13[3] = v14 + 1;
    }

    v15 = a1[1];
    ++a2;
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      a1[1] = v15 + 1;
      a2 = v12;
    }
  }

  v16 = *(a1 + *(*a1 - 24) + 40);
  v17 = v16[3];
  if (v17 == v16[4])
  {
    (*(*v16 + 80))(v16);
  }

  else
  {
    v16[3] = v17 + 1;
  }

  v19 = a1[1];
  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = 0;
    a1[1] = v19 + 1;
  }

  else
  {
LABEL_19:
    v18 = 0;
  }

LABEL_20:
  if (a3 >= 1)
  {
    *a2 = 0;
  }

  if (!a1[1])
  {
    v18 |= 4u;
  }

  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v18);
  return a1;
}

void sub_1922BB9F8(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v4 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BB98CLL);
  }

  if (v2 >= 1)
  {
    *v3 = 0;
  }

  __cxa_rethrow();
}

uint64_t *std::istream::ignore(uint64_t *a1, uint64_t a2, int a3)
{
  a1[1] = 0;
  std::istream::sentry::sentry(&v17, a1, 1);
  if (!v17)
  {
    return a1;
  }

  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = a1[1];
    while (1)
    {
      if (v10 >= a2)
      {
        goto LABEL_18;
      }

      v11 = *(a1 + *(*a1 - 24) + 40);
      v12 = v11[3];
      if (v12 != v11[4])
      {
        break;
      }

      v13 = (*(*v11 + 80))(v11);
      if (v13 == -1)
      {
LABEL_19:
        v15 = 2;
        goto LABEL_20;
      }

      v10 = a1[1];
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_16;
      }

LABEL_17:
      v10 = v14;
      if (v13 == a3)
      {
        goto LABEL_18;
      }
    }

    v11[3] = v12 + 1;
    v13 = *v12;
LABEL_16:
    v14 = v10 + 1;
    a1[1] = v10 + 1;
    goto LABEL_17;
  }

  do
  {
    v6 = *(a1 + *(*a1 - 24) + 40);
    v7 = v6[3];
    if (v7 == v6[4])
    {
      v8 = (*(*v6 + 80))(v6);
      if (v8 == -1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v6[3] = v7 + 1;
      v8 = *v7;
    }

    v9 = a1[1];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      a1[1] = v9 + 1;
    }
  }

  while (v8 != a3);
LABEL_18:
  v15 = 0;
LABEL_20:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v15);
  return a1;
}

void sub_1922BBC5C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BBC24);
  }

  __cxa_rethrow();
}

uint64_t std::istream::peek(uint64_t *a1)
{
  a1[1] = 0;
  std::istream::sentry::sentry(&v6, a1, 1);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + *(*a1 - 24) + 40);
  v3 = v2[3];
  if (v3 == v2[4])
  {
    v4 = (*(*v2 + 72))(v2);
  }

  else
  {
    v4 = *v3;
  }

  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | (2 * (v4 == -1)));
  return v4;
}

void sub_1922BBDBC(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BBD84);
  }

  __cxa_rethrow();
}

uint64_t *std::istream::read(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  std::istream::sentry::sentry(&v10, a1, 1);
  if (v10)
  {
    v6 = *(a1 + *(*a1 - 24) + 40);
    v7 = (*(*v6 + 64))(v6, a2, a3);
    a1[1] = v7;
    if (v7 == a3)
    {
      v8 = 0;
    }

    else
    {
      v8 = 6;
    }
  }

  else
  {
    v8 = 4;
  }

  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  return a1;
}

void sub_1922BBF30(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BBEFCLL);
  }

  __cxa_rethrow();
}

uint64_t std::istream::readsome(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  std::istream::sentry::sentry(&v14, a1, 1);
  if (v14)
  {
    v6 = *(a1 + *(*a1 - 24) + 40);
    v7 = v6[3];
    v8 = v6[4];
    if (v7 >= v8)
    {
      v9 = (*(*v6 + 56))(v6);
    }

    else
    {
      v9 = v8 - v7;
    }

    if (v9 == -1)
    {
      v10 = 2;
    }

    else if (v9)
    {
      if (v9 < a3)
      {
        a3 = v9;
      }

      v11 = *(a1 + *(*a1 - 24) + 40);
      v12 = (*(*v11 + 64))(v11, a2, a3);
      a1[1] = v12;
      if (v12 == a3)
      {
        v10 = 0;
      }

      else
      {
        v10 = 6;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 4;
  }

  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v10);
  return a1[1];
}

void sub_1922BC118(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BC0E4);
  }

  __cxa_rethrow();
}

uint64_t *std::istream::putback(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  v5 = *(a1 + *(*a1 - 24) + 32) & 0xFFFFFFFD;
  a1[1] = 0;
  std::ios_base::clear((a1 + *(v4 - 24)), v5);
  std::istream::sentry::sentry(&v11, a1, 1);
  if (!v11)
  {
    v5 |= 4u;
    goto LABEL_9;
  }

  v6 = *(a1 + *(*a1 - 24) + 40);
  if (!v6)
  {
LABEL_8:
    v5 |= 1u;
    goto LABEL_9;
  }

  v7 = v6[3];
  if (v6[2] == v7 || (v9 = *(v7 - 1), v8 = v7 - 1, v9 != a2))
  {
    if ((*(*v6 + 88))(v6, a2) != -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6[3] = v8;
LABEL_9:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v5);
  return a1;
}

void sub_1922BC2F8(void *a1)
{
  __cxa_begin_catch(a1);
  v3 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= v2 | 1;
  if ((*(v1 + *(v3 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BC2BCLL);
  }

  __cxa_rethrow();
}

uint64_t *std::istream::unget(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + *(*a1 - 24) + 32) & 0xFFFFFFFD;
  a1[1] = 0;
  std::ios_base::clear((a1 + *(v2 - 24)), v3);
  std::istream::sentry::sentry(&v7, a1, 1);
  if (!v7)
  {
    v3 |= 4u;
    goto LABEL_8;
  }

  v4 = *(a1 + *(*a1 - 24) + 40);
  if (!v4)
  {
LABEL_7:
    v3 |= 1u;
    goto LABEL_8;
  }

  v5 = v4[3];
  if (v4[2] == v5)
  {
    if ((*(*v4 + 88))(v4, 0xFFFFFFFFLL) != -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4[3] = v5 - 1;
LABEL_8:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v3);
  return a1;
}

void sub_1922BC4C4(void *a1)
{
  __cxa_begin_catch(a1);
  v3 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= v2 | 1;
  if ((*(v1 + *(v3 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BC48CLL);
  }

  __cxa_rethrow();
}

uint64_t std::istream::sync(uint64_t *a1)
{
  std::istream::sentry::sentry(&v6, a1, 1);
  v2 = *(a1 + *(*a1 - 24) + 40);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  v3 = (*(*v2 + 48))(v2);
  if (v3 == -1)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | (v3 == -1));
  return v4;
}

void sub_1922BC61C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922BC5D4);
  }

  __cxa_rethrow();
}

void std::istream::tellg(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 128) = -1;
  std::istream::sentry::sentry(&v9, a1, 1);
  if (v9)
  {
    (*(**(a1 + *(*a1 - 24) + 40) + 32))(v10);
    *(a2 + 128) = v11;
    v4 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v4;
    v5 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v5;
    v6 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v6;
    v7 = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = v7;
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32));
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1922BC7E0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v3 = *v2;
    *(v2 + *(*v2 - 24) + 32) |= 1u;
    if ((*(v2 + *(v3 - 24) + 36) & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x1922BC790);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::istream::seekg(uint64_t *a1, __int128 *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = (a1 + *(*a1 - 24));
  v5 = v4->__rdstate_ & 0xFFFFFFFD;
  std::ios_base::clear(v4, v5);
  std::istream::sentry::sentry(&v14, a1, 1);
  if (v14)
  {
    v6 = *(*a1 - 24);
    v7 = *a2;
    v17 = a2[1];
    v16 = v7;
    v8 = a2[5];
    v20 = a2[4];
    v9 = a2[2];
    v19 = a2[3];
    v18 = v9;
    v10 = a2[6];
    v23 = a2[7];
    v22 = v10;
    v11 = *(a1 + v6 + 40);
    v24 = *(a2 + 16);
    v21 = v8;
    (*(*v11 + 40))(v15);
    if (v15[16] == -1)
    {
      v5 |= 4u;
    }

    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v5);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1922BC9F8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v4 = *v2;
    *(v2 + *(*v2 - 24) + 32) |= v3 | 1;
    if ((*(v2 + *(v4 - 24) + 36) & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x1922BC99CLL);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::istream::seekg(uint64_t *a1)
{
  v7[17] = *MEMORY[0x1E69E9840];
  v2 = (a1 + *(*a1 - 24));
  v3 = v2->__rdstate_ & 0xFFFFFFFD;
  std::ios_base::clear(v2, v3);
  std::istream::sentry::sentry(&v6, a1, 1);
  if (v6)
  {
    (*(**(a1 + *(*a1 - 24) + 40) + 32))(v7);
    if (v7[16] == -1)
    {
      v3 |= 4u;
    }

    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v3);
  }

  v4 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1922BCBD8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v4 = *v2;
    *(v2 + *(*v2 - 24) + 32) |= v3 | 1;
    if ((*(v2 + *(v4 - 24) + 36) & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x1922BCB80);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ostream::basic_ostream(uint64_t *a1, uint64_t *a2, void *__sb)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[1];
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, __sb);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  return a1;
}

uint64_t std::ostream::basic_ostream(uint64_t a1, void *a2)
{
  *(a1 + 56) = 0;
  std::ios_base::init((a1 + 8), a2);
  *(a1 + 144) = 0;
  *(a1 + 152) = -1;
  return a1;
}

void virtual thunk tostd::ostream::~ostream(void *a1)
{
  std::ios_base::~ios_base((a1 + *(*a1 - 24) + 8));
}

{
  std::ios_base::~ios_base((a1 + *(*a1 - 24) + 8));

  JUMPOUT(0x193B0CA40);
}

void std::ostream::~ostream(uint64_t a1)
{
  std::ios_base::~ios_base((a1 + 8));

  JUMPOUT(0x193B0CA40);
}

void std::ostream::swap(void *a1, void *a2)
{
  v2 = (a1 + *(*a1 - 24));
  v3 = (a2 + *(*a2 - 24));
  std::ios_base::swap(v2, v3);
  v4 = v2[1].__vftable;
  v2[1].__vftable = v3[1].__vftable;
  v3[1].__vftable = v4;
  LODWORD(v4) = v2[1].__fmtflags_;
  v2[1].__fmtflags_ = v3[1].__fmtflags_;
  v3[1].__fmtflags_ = v4;
}

uint64_t std::ostream::sentry::sentry(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  v3 = a2 + *(*a2 - 24);
  if (!*(v3 + 8))
  {
    v4 = *(v3 + 17);
    if (v4)
    {
      std::ostream::flush(v4, a2);
    }

    *a1 = 1;
  }

  return a1;
}

uint64_t std::ostream::sentry::~sentry(uint64_t a1)
{
  v2 = *(a1 + 8) + *(**(a1 + 8) - 24);
  if (*(v2 + 40))
  {
    if (!*(v2 + 32) && (*(v2 + 9) & 0x20) != 0 && !std::uncaught_exceptions())
    {
      v3 = *(*(a1 + 8) + *(**(a1 + 8) - 24) + 40);
      if ((*(*v3 + 48))(v3) == -1)
      {
        v4 = (*(a1 + 8) + *(**(a1 + 8) - 24));
        std::ios_base::clear(v4, v4->__rdstate_ | 1);
      }
    }
  }

  return a1;
}

void sub_1922BD07C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1922BD06CLL);
}

char *std::ostream::operator<<(char *a1, void (*a2)(char *))
{
  a2(&a1[*(*a1 - 24)]);
  return a1;
}

{
  a2(&a1[*(*a1 - 24)]);
  return a1;
}

void *std::ostream::__put_num[abi:ne200100]<BOOL>(void *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v5 = *(v3 + 17);
    if (v5)
    {
      std::ostream::flush(v5, a2);
    }

    v12[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v6 = std::locale::use_facet(&v14, &std::num_put<char,std::ostreambuf_iterator<char>>::id);
    std::locale::~locale(&v14);
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 5);
    v9 = *(v7 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v7 + 36) = v9;
    }

    if (!(v6->__vftable[1].~facet)(v6, v8, v7, v9, a2))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry(v12);
  return a1;
}

void sub_1922BD2B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922BD29CLL);
}

void *std::ostream::__put_num_integer_promote[abi:ne200100]<short>(void *a1, uint64_t a2)
{
  v16[0] = 0;
  v17 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v4 = a2;
    v5 = *(v3 + 17);
    if (v5)
    {
      std::ostream::flush(v5, a2);
    }

    v16[0] = 1;
    v6 = (a1 + *(*a1 - 24));
    fmtflags = v6->__fmtflags_;
    std::ios_base::getloc(v6);
    v8 = std::locale::use_facet(&v18, &std::num_put<char,std::ostreambuf_iterator<char>>::id);
    std::locale::~locale(&v18);
    v9 = a1 + *(*a1 - 24);
    v10 = *(v9 + 5);
    v11 = *(v9 + 36);
    if (v11 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v12 = std::locale::use_facet(&v18, &std::ctype<char>::id);
      v11 = (v12->__vftable[2].~facet_0)(v12, 32);
      std::locale::~locale(&v18);
      *(v9 + 36) = v11;
    }

    if ((fmtflags & 0x4A) == 0x40 || (fmtflags & 0x4A) == 8)
    {
      v14 = v4;
    }

    else
    {
      v14 = v4;
    }

    if (!(v8->__vftable[1].~facet_0)(v8, v10, v9, v11, v14))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry(v16);
  return a1;
}

void sub_1922BD4F0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922BD4D0);
}

void *std::ostream::__put_num_integer_promote[abi:ne200100]<unsigned short>(void *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v4 = a2;
    v5 = *(v3 + 17);
    if (v5)
    {
      std::ostream::flush(v5, a2);
    }

    v12[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v6 = std::locale::use_facet(&v14, &std::num_put<char,std::ostreambuf_iterator<char>>::id);
    std::locale::~locale(&v14);
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 5);
    v9 = *(v7 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v7 + 36) = v9;
    }

    if (!(v6->__vftable[2].~facet)(v6, v8, v7, v9, v4))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry(v12);
  return a1;
}

void sub_1922BD704(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922BD6E8);
}

void *std::ostream::__put_num_integer_promote[abi:ne200100]<int>(void *a1, uint64_t a2)
{
  v16[0] = 0;
  v17 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v4 = a2;
    v5 = *(v3 + 17);
    if (v5)
    {
      std::ostream::flush(v5, a2);
    }

    v16[0] = 1;
    v6 = (a1 + *(*a1 - 24));
    fmtflags = v6->__fmtflags_;
    std::ios_base::getloc(v6);
    v8 = std::locale::use_facet(&v18, &std::num_put<char,std::ostreambuf_iterator<char>>::id);
    std::locale::~locale(&v18);
    v9 = a1 + *(*a1 - 24);
    v10 = *(v9 + 5);
    v11 = *(v9 + 36);
    if (v11 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v12 = std::locale::use_facet(&v18, &std::ctype<char>::id);
      v11 = (v12->__vftable[2].~facet_0)(v12, 32);
      std::locale::~locale(&v18);
      *(v9 + 36) = v11;
    }

    if ((fmtflags & 0x4A) == 0x40 || (fmtflags & 0x4A) == 8)
    {
      v14 = v4;
    }

    else
    {
      v14 = v4;
    }

    if (!(v8->__vftable[1].~facet_0)(v8, v10, v9, v11, v14))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry(v16);
  return a1;
}

void sub_1922BD93C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922BD91CLL);
}

void *std::ostream::__put_num_integer_promote[abi:ne200100]<unsigned int>(void *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v4 = a2;
    v5 = *(v3 + 17);
    if (v5)
    {
      std::ostream::flush(v5, a2);
    }

    v12[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v6 = std::locale::use_facet(&v14, &std::num_put<char,std::ostreambuf_iterator<char>>::id);
    std::locale::~locale(&v14);
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 5);
    v9 = *(v7 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v7 + 36) = v9;
    }

    if (!(v6->__vftable[2].~facet)(v6, v8, v7, v9, v4))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry(v12);
  return a1;
}

void sub_1922BDB50(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922BDB34);
}

void *std::ostream::__put_num[abi:ne200100]<long>(void *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v5 = *(v3 + 17);
    if (v5)
    {
      std::ostream::flush(v5, a2);
    }

    v12[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v6 = std::locale::use_facet(&v14, &std::num_put<char,std::ostreambuf_iterator<char>>::id);
    std::locale::~locale(&v14);
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 5);
    v9 = *(v7 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v7 + 36) = v9;
    }

    if (!(v6->__vftable[1].~facet_0)(v6, v8, v7, v9, a2))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry(v12);
  return a1;
}

void sub_1922BDD64(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922BDD48);
}

void *std::ostream::__put_num[abi:ne200100]<unsigned long>(void *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v5 = *(v3 + 17);
    if (v5)
    {
      std::ostream::flush(v5, a2);
    }

    v12[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v6 = std::locale::use_facet(&v14, &std::num_put<char,std::ostreambuf_iterator<char>>::id);
    std::locale::~locale(&v14);
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 5);
    v9 = *(v7 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v7 + 36) = v9;
    }

    if (!(v6->__vftable[2].~facet)(v6, v8, v7, v9, a2))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry(v12);
  return a1;
}

void sub_1922BDF78(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922BDF5CLL);
}

void *std::ostream::__put_num[abi:ne200100]<long long>(void *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v5 = *(v3 + 17);
    if (v5)
    {
      std::ostream::flush(v5, a2);
    }

    v12[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v6 = std::locale::use_facet(&v14, &std::num_put<char,std::ostreambuf_iterator<char>>::id);
    std::locale::~locale(&v14);
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 5);
    v9 = *(v7 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v7 + 36) = v9;
    }

    if (!(v6->__vftable[1].__on_zero_shared)(v6, v8, v7, v9, a2))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry(v12);
  return a1;
}

void sub_1922BE18C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922BE170);
}

void *std::ostream::__put_num[abi:ne200100]<unsigned long long>(void *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v5 = *(v3 + 17);
    if (v5)
    {
      std::ostream::flush(v5, a2);
    }

    v12[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v6 = std::locale::use_facet(&v14, &std::num_put<char,std::ostreambuf_iterator<char>>::id);
    std::locale::~locale(&v14);
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 5);
    v9 = *(v7 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v7 + 36) = v9;
    }

    if (!(v6->__vftable[2].~facet_0)(v6, v8, v7, v9, a2))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry(v12);
  return a1;
}

void sub_1922BE3A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922BE384);
}

void *std::ostream::__put_num[abi:ne200100]<double>(void *a1, uint64_t a2, double a3)
{
  v13[0] = 0;
  v14 = a1;
  v4 = a1 + *(*a1 - 24);
  if (!*(v4 + 8))
  {
    v6 = *(v4 + 17);
    if (v6)
    {
      std::ostream::flush(v6, a2);
    }

    v13[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v7 = std::locale::use_facet(&v15, &std::num_put<char,std::ostreambuf_iterator<char>>::id);
    std::locale::~locale(&v15);
    v8 = a1 + *(*a1 - 24);
    v9 = *(v8 + 5);
    v10 = *(v8 + 36);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v15, &std::ctype<char>::id);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      *(v8 + 36) = v10;
    }

    if (!(v7->__vftable[2].__on_zero_shared)(v7, v9, v8, v10, a3))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry(v13);
  return a1;
}

void sub_1922BE5C4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922BE5A4);
}

void *std::ostream::__put_num[abi:ne200100]<long double>(void *a1, uint64_t a2, double a3)
{
  v13[0] = 0;
  v14 = a1;
  v4 = a1 + *(*a1 - 24);
  if (!*(v4 + 8))
  {
    v6 = *(v4 + 17);
    if (v6)
    {
      std::ostream::flush(v6, a2);
    }

    v13[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v7 = std::locale::use_facet(&v15, &std::num_put<char,std::ostreambuf_iterator<char>>::id);
    std::locale::~locale(&v15);
    v8 = a1 + *(*a1 - 24);
    v9 = *(v8 + 5);
    v10 = *(v8 + 36);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v15, &std::ctype<char>::id);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      *(v8 + 36) = v10;
    }

    if (!(v7->__vftable[3].~facet)(v7, v9, v8, v10, a3))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry(v13);
  return a1;
}

void sub_1922BE7E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922BE7C0);
}

void *std::ostream::__put_num[abi:ne200100]<void const*>(void *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v5 = *(v3 + 17);
    if (v5)
    {
      std::ostream::flush(v5, a2);
    }

    v12[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v6 = std::locale::use_facet(&v14, &std::num_put<char,std::ostreambuf_iterator<char>>::id);
    std::locale::~locale(&v14);
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 5);
    v9 = *(v7 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v7 + 36) = v9;
    }

    if (!(v6->__vftable[3].~facet_0)(v6, v8, v7, v9, a2))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry(v12);
  return a1;
}

void sub_1922BE9F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922BE9D8);
}

void *std::ostream::operator<<(void *a1, uint64_t a2)
{
  v15[0] = 0;
  v16 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v5 = a2;
    v6 = *(v3 + 17);
    if (v6)
    {
      std::ostream::flush(v6, a2);
    }

    v15[0] = 1;
    if (v5)
    {
      v7 = 0;
      v14 = 0;
      v13 = *(a1 + *(*a1 - 24) + 40);
      while (1)
      {
        if (v5[3] == v5[4])
        {
          v9 = (*(*v5 + 72))(v5);
          v8 = v9 == -1;
          if (v9 == -1)
          {
            v5 = 0;
          }
        }

        else
        {
          v8 = 0;
        }

        if (v8 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v14))
        {
          break;
        }

        v10 = v5[3];
        v11 = v10 == v5[4] ? (*(*v5 + 72))(v5) : *v10;
        std::ostreambuf_iterator<char>::operator=[abi:ne200100](&v13, v11);
        if (!v13)
        {
          break;
        }

        v12 = v5[3];
        if (v12 == v5[4])
        {
          (*(*v5 + 80))(v5);
        }

        else
        {
          v5[3] = v12 + 1;
        }

        --v7;
      }

      if (!v7)
      {
        std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
      }
    }

    else
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::ostream::sentry::~sentry(v15);
  return a1;
}

void sub_1922BEC50(void *a1)
{
  __cxa_begin_catch(a1);
  std::ios_base::__set_failbit_and_consider_rethrow((v1 + *(*v1 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922BEAA8);
}

void sub_1922BEC84(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  std::ostream::sentry::~sentry(va);
  JUMPOUT(0x1922BEC9CLL);
}

void **std::ostreambuf_iterator<char>::operator=[abi:ne200100](void **a1, unsigned __int8 a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = v3[6];
    if (v4 == v3[7])
    {
      if ((*(*v3 + 104))(v3, a2) == -1)
      {
        *a1 = 0;
      }
    }

    else
    {
      v3[6] = v4 + 1;
      *v4 = a2;
    }
  }

  return a1;
}

void *std::ostream::put(void *a1, uint64_t a2)
{
  v8[0] = 0;
  v9 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v4 = a2;
    v5 = *(v3 + 17);
    if (v5)
    {
      std::ostream::flush(v5, a2);
    }

    v8[0] = 1;
    v7 = *(a1 + *(*a1 - 24) + 40);
    std::ostreambuf_iterator<char>::operator=[abi:ne200100](&v7, v4);
    if (!v7)
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::ostream::sentry::~sentry(v8);
  return a1;
}

void sub_1922BEE24(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v11 + *(*v11 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922BEE10);
}

void *std::ostream::write(void *a1, uint64_t a2, uint64_t a3)
{
  v10[0] = 0;
  v11 = a1;
  v4 = a1 + *(*a1 - 24);
  if (!*(v4 + 8))
  {
    v8 = *(v4 + 17);
    if (v8)
    {
      std::ostream::flush(v8, a2);
    }

    v10[0] = 1;
    if (a3)
    {
      v9 = *(a1 + *(*a1 - 24) + 40);
      if ((*(*v9 + 96))(v9, a2, a3) != a3)
      {
        std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 1);
      }
    }
  }

  std::ostream::sentry::~sentry(v10);
  return a1;
}

void sub_1922BEF74(void *a1)
{
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v1 + *(*v1 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922BEEC4);
}

void *std::ostream::tellp@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result + *(*result - 24);
  if ((v2[32] & 5) == 0)
  {
    return (*(**(v2 + 5) + 32))(*(v2 + 5), 0, 1, 16);
  }

  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 128) = -1;
  return result;
}

void *std::ostream::seekp(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v16 = a1;
  v4 = *a1;
  v5 = a1 + *(*a1 - 24);
  if (!*(v5 + 8))
  {
    v6 = *(v5 + 17);
    if (v6)
    {
      std::ostream::flush(v6, a2);
      v4 = *a1;
    }

    v15[0] = 1;
  }

  v7 = a1 + *(v4 - 24);
  if ((v7[32] & 5) == 0)
  {
    v8 = *(v7 + 5);
    v9 = *(a2 + 16);
    v18 = *a2;
    v19 = v9;
    v10 = *(a2 + 48);
    v20 = *(a2 + 32);
    v21 = v10;
    v26 = *(a2 + 128);
    v11 = *(a2 + 112);
    v24 = *(a2 + 96);
    v25 = v11;
    v12 = *(a2 + 80);
    v22 = *(a2 + 64);
    v23 = v12;
    (*(*v8 + 40))(v17);
    if (v17[16] == -1)
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
    }
  }

  std::ostream::sentry::~sentry(v15);
  v13 = *MEMORY[0x1E69E9840];
  return a1;
}

{
  v11[17] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v10 = a1;
  v3 = *a1;
  v4 = a1 + *(*a1 - 24);
  if (!*(v4 + 8))
  {
    v5 = *(v4 + 17);
    if (v5)
    {
      std::ostream::flush(v5, a2);
      v3 = *a1;
    }

    v9[0] = 1;
  }

  v6 = a1 + *(v3 - 24);
  if ((v6[32] & 5) == 0)
  {
    (*(**(v6 + 5) + 32))(v11);
    if (v11[16] == -1)
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
    }
  }

  std::ostream::sentry::~sentry(v9);
  v7 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1922BF1AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostream::sentry::~sentry(va);
  _Unwind_Resume(a1);
}

uint64_t *std::iostream::basic_iostream(uint64_t *a1, uint64_t *a2, void *__sb)
{
  v5 = a2[1];
  *a1 = v5;
  *(a1 + *(v5 - 24)) = a2[2];
  a1[1] = 0;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, __sb);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v7 = a2[3];
  a1[2] = v7;
  *(a1 + *(v7 - 24) + 16) = a2[4];
  v8 = *a2;
  *a1 = *a2;
  *(a1 + *(v8 - 24)) = a2[5];
  a1[2] = a2[6];
  return a1;
}

uint64_t std::iostream::basic_iostream(uint64_t a1, void *a2)
{
  *(a1 + 72) = 0;
  *a1 = off_1F06C0BD8;
  *(a1 + 8) = 0;
  *(a1 + 24) = off_1F06C0C00;
  std::ios_base::init((a1 + 24), a2);
  *(a1 + 160) = 0;
  *(a1 + 168) = -1;
  return a1;
}

void non-virtual thunk tostd::iostream::~basic_iostream(uint64_t a1)
{
  std::ios_base::~ios_base((a1 + 8));
}

{
  std::ios_base::~ios_base((a1 + 8));

  JUMPOUT(0x193B0CA40);
}

void virtual thunk tostd::iostream::~basic_iostream(void *a1)
{
  std::ios_base::~ios_base((a1 + *(*a1 - 24) + 24));
}

{
  std::ios_base::~ios_base((a1 + *(*a1 - 24) + 24));

  JUMPOUT(0x193B0CA40);
}

void std::iostream::~basic_iostream(uint64_t a1)
{
  std::ios_base::~ios_base((a1 + 24));

  JUMPOUT(0x193B0CA40);
}

void std::iostream::swap(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  a1[1] = a2[1];
  a2[1] = v2;
  v4 = (a1 + *(v3 - 24));
  v5 = (a2 + *(*a2 - 24));
  std::ios_base::swap(v4, v5);
  v6 = v4[1].__vftable;
  v4[1].__vftable = v5[1].__vftable;
  v5[1].__vftable = v6;
  LODWORD(v6) = v4[1].__fmtflags_;
  v4[1].__fmtflags_ = v5[1].__fmtflags_;
  v5[1].__fmtflags_ = v6;
}

void std::wios::~wios(std::ios_base *a1)
{
  std::ios_base::~ios_base(a1);

  JUMPOUT(0x193B0CA40);
}

std::ios_base *std::wios::copyfmt(std::ios_base *this, std::ios_base *a2)
{
  if (this != a2)
  {
    std::ios_base::__call_callbacks(this, erase_event);
    std::ios_base::copyfmt(this, a2);
    this[1].__vftable = a2[1].__vftable;
    this[1].__fmtflags_ = a2[1].__fmtflags_;
    std::ios_base::__call_callbacks(this, copyfmt_event);
    this->__exceptions_ = a2->__exceptions_;
    std::ios_base::clear(this, this->__rdstate_);
  }

  return this;
}

std::locale *std::wstreambuf::~wstreambuf(std::locale *a1)
{
  std::locale::~locale(a1 + 1);
  return a1;
}

{
  std::locale::~locale(a1 + 1);
  return a1;
}

void std::wstreambuf::~wstreambuf(std::locale *a1)
{
  std::locale::~locale(a1 + 1);

  JUMPOUT(0x193B0CA40);
}

const std::locale *std::wstreambuf::pubimbue@<X0>(std::locale *a1@<X0>, const std::locale *a2@<X1>, std::locale *a3@<X8>)
{
  v5 = a1 + 1;
  (*(a1->__locale_ + 2))(a1);
  std::locale::locale(a3, v5);

  return std::locale::operator=(v5, a2);
}

uint64_t std::wstreambuf::pubseekpos(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v2;
  v9 = *(a2 + 128);
  v3 = *(a2 + 112);
  v8[6] = *(a2 + 96);
  v8[7] = v3;
  v4 = *(a2 + 80);
  v8[4] = *(a2 + 64);
  v8[5] = v4;
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  result = (*(*a1 + 40))(a1, v8);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::wstreambuf::in_avail(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  if (v1 >= v2)
  {
    return (*(*a1 + 56))();
  }

  else
  {
    return (v2 - v1) >> 2;
  }
}

uint64_t std::wstreambuf::snextc(void *a1)
{
  v2 = a1[3];
  if (v2 == a1[4])
  {
    result = (*(*a1 + 80))(a1);
  }

  else
  {
    result = *v2;
    a1[3] = v2 + 1;
  }

  if (result != -1)
  {
    v4 = a1[3];
    if (v4 == a1[4])
    {
      v5 = *(*a1 + 72);

      return v5(a1);
    }

    else
    {
      return *v4;
    }
  }

  return result;
}

uint64_t std::wstreambuf::sbumpc(void *a1)
{
  v1 = a1[3];
  if (v1 == a1[4])
  {
    return (*(*a1 + 80))();
  }

  v2 = *v1;
  a1[3] = v1 + 1;
  return v2;
}

uint64_t std::wstreambuf::sgetc(void *a1)
{
  v1 = a1[3];
  if (v1 == a1[4])
  {
    return (*(*a1 + 72))();
  }

  else
  {
    return *v1;
  }
}

uint64_t std::wstreambuf::sputbackc(void *a1, uint64_t a2)
{
  v2 = a1[3];
  if (a1[2] == v2)
  {
    return (*(*a1 + 88))();
  }

  v4 = *(v2 - 4);
  v3 = v2 - 4;
  if (v4 != a2)
  {
    return (*(*a1 + 88))();
  }

  a1[3] = v3;
  return a2;
}

uint64_t std::wstreambuf::sungetc(void *a1)
{
  v1 = a1[3];
  if (a1[2] == v1)
  {
    return (*(*a1 + 88))(a1, 0xFFFFFFFFLL);
  }

  v2 = *(v1 - 4);
  a1[3] = v1 - 4;
  return v2;
}

uint64_t std::wstreambuf::sputc(void *a1, uint64_t a2)
{
  v2 = a1[6];
  if (v2 == a1[7])
  {
    return (*(*a1 + 104))();
  }

  *v2 = a2;
  a1[6] = v2 + 1;
  return a2;
}

uint64_t std::wstreambuf::basic_streambuf(uint64_t a1)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t std::wstreambuf::basic_streambuf(uint64_t a1, uint64_t a2)
{
  std::locale::locale((a1 + 8), (a2 + 8));
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t std::wstreambuf::operator=(uint64_t a1, uint64_t a2)
{
  std::locale::operator=((a1 + 8), (a2 + 8));
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void std::wstreambuf::swap(std::locale *a1, std::locale *a2)
{
  std::locale::locale(&v10, a1 + 1);
  std::locale::operator=(a1 + 1, a2 + 1);
  std::locale::operator=(a2 + 1, &v10);
  std::locale::~locale(&v10);
  locale = a1[2].__locale_;
  a1[2].__locale_ = a2[2].__locale_;
  a2[2].__locale_ = locale;
  v5 = a1[3].__locale_;
  a1[3].__locale_ = a2[3].__locale_;
  a2[3].__locale_ = v5;
  v6 = a1[4].__locale_;
  a1[4].__locale_ = a2[4].__locale_;
  a2[4].__locale_ = v6;
  v7 = a1[5].__locale_;
  a1[5].__locale_ = a2[5].__locale_;
  a2[5].__locale_ = v7;
  v8 = a1[6].__locale_;
  a1[6].__locale_ = a2[6].__locale_;
  a2[6].__locale_ = v8;
  v9 = a1[7].__locale_;
  a1[7].__locale_ = a2[7].__locale_;
  a2[7].__locale_ = v9;
}

void *std::wstreambuf::setg(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  return result;
}

void *std::wstreambuf::setp(void *result, uint64_t a2, uint64_t a3)
{
  result[5] = a2;
  result[6] = a2;
  result[7] = a3;
  return result;
}

double std::wstreambuf::seekoff@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = -1;
  return result;
}

double std::wstreambuf::seekpos@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = -1;
  return result;
}

uint64_t std::wstreambuf::xsgetn(void *a1, char *__dst, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  for (i = 0; i < a3; i += v10)
  {
    v7 = a1[3];
    v8 = a1[4];
    if (v7 >= v8)
    {
      v11 = (*(*a1 + 80))(a1);
      if (v11 == -1)
      {
        return i;
      }

      *__dst = v11;
      __dst += 4;
      v10 = 1;
    }

    else
    {
      if (a3 - i >= (v8 - v7) >> 2)
      {
        v9 = (v8 - v7) >> 2;
      }

      else
      {
        v9 = a3 - i;
      }

      if (v9 >= 0x7FFFFFFF)
      {
        v10 = 0x7FFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (v9)
      {
        memmove(__dst, v7, 4 * v10);
        v7 = a1[3];
      }

      __dst += 4 * v10;
      a1[3] = &v7[4 * v10];
    }
  }

  return i;
}

uint64_t std::wstreambuf::uflow(void *a1)
{
  result = (*(*a1 + 72))(a1);
  if (result != -1)
  {
    v3 = a1[3];
    result = *v3;
    a1[3] = v3 + 1;
  }

  return result;
}

uint64_t std::wstreambuf::xsputn(void *a1, char *__src, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = a1[6];
    v8 = a1[7];
    if (v7 >= v8)
    {
      if ((*(*a1 + 104))(a1, *__src) == -1)
      {
        return v6;
      }

      __src += 4;
      ++v6;
    }

    else
    {
      v9 = v8 - v7;
      if (a3 - v6 >= v9 >> 2)
      {
        v10 = v9 >> 2;
      }

      else
      {
        v10 = a3 - v6;
      }

      if (v10)
      {
        memmove(v7, __src, 4 * v10);
        v7 = a1[6];
      }

      a1[6] = &v7[4 * v10];
      __src += 4 * v10;
      v6 += v10;
    }
  }

  while (v6 < a3);
  return v6;
}

uint64_t *std::wistream::basic_istream(uint64_t *a1, uint64_t *a2, void *__sb)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[1];
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, __sb);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  return a1;
}

uint64_t std::wistream::basic_istream(uint64_t a1, void *a2)
{
  *(a1 + 64) = 0;
  *(a1 + 8) = 0;
  std::ios_base::init((a1 + 16), a2);
  *(a1 + 152) = 0;
  *(a1 + 160) = -1;
  return a1;
}

void virtual thunk tostd::wistream::~wistream(void *a1)
{
  std::ios_base::~ios_base((a1 + *(*a1 - 24) + 16));
}

{
  std::ios_base::~ios_base((a1 + *(*a1 - 24) + 16));

  JUMPOUT(0x193B0CA40);
}

void std::wistream::~wistream(uint64_t a1)
{
  std::ios_base::~ios_base((a1 + 16));

  JUMPOUT(0x193B0CA40);
}

void std::wistream::swap(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  a1[1] = a2[1];
  a2[1] = v2;
  v4 = (a1 + *(v3 - 24));
  v5 = (a2 + *(*a2 - 24));
  std::ios_base::swap(v4, v5);
  v6 = v4[1].__vftable;
  v4[1].__vftable = v5[1].__vftable;
  v5[1].__vftable = v6;
  LODWORD(v6) = v4[1].__fmtflags_;
  v4[1].__fmtflags_ = v5[1].__fmtflags_;
  v5[1].__fmtflags_ = v6;
}

BOOL *std::wistream::sentry::sentry(BOOL *a1, uint64_t *a2, char a3)
{
  *a1 = 0;
  v4 = *a2;
  v5 = (a2 + *(*a2 - 24));
  rdstate = v5->__rdstate_;
  if (rdstate)
  {
    std::ios_base::clear(v5, rdstate | 4);
  }

  else
  {
    v9 = v5[1].__vftable;
    if (v9)
    {
      std::wostream::flush(v9, a2);
      v4 = *a2;
    }

    if ((a3 & 1) == 0)
    {
      v10 = (a2 + *(v4 - 24));
      if ((v10->__fmtflags_ & 0x1000) != 0)
      {
        std::ios_base::getloc(v10);
        v11 = std::locale::use_facet(&v20, &std::ctype<wchar_t>::id);
        std::locale::~locale(&v20);
        v12 = *(a2 + *(*a2 - 24) + 40);
        v19 = 0;
        v20.__locale_ = v12;
        while (1)
        {
          v13 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v20);
          if (v13 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v19))
          {
            break;
          }

          v14 = *(v20.__locale_ + 3);
          v15 = v14 == *(v20.__locale_ + 4) ? (*(*v20.__locale_ + 72))(v20.__locale_) : *v14;
          if (((v11->__vftable[1].~facet)(v11, 0x4000, v15) & 1) == 0)
          {
            break;
          }

          v16 = *(v20.__locale_ + 3);
          if (v16 == *(v20.__locale_ + 4))
          {
            (*(*v20.__locale_ + 80))(v20.__locale_);
          }

          else
          {
            *(v20.__locale_ + 3) = v16 + 4;
          }
        }

        v17 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v20);
        if (v17 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v19))
        {
          std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 6);
        }

        v4 = *a2;
      }
    }

    *a1 = *(a2 + *(v4 - 24) + 32) == 0;
  }

  return a1;
}

void *std::wostream::flush(void *a1, uint64_t a2)
{
  v3 = a1 + *(*a1 - 24);
  if (*(v3 + 5))
  {
    v7[0] = 0;
    v8 = a1;
    if (!*(v3 + 8))
    {
      v4 = *(v3 + 17);
      if (v4)
      {
        std::wostream::flush(v4, a2);
      }

      v7[0] = 1;
      v5 = *(a1 + *(*a1 - 24) + 40);
      if ((*(*v5 + 48))(v5) == -1)
      {
        std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 1);
      }
    }

    std::wostream::sentry::~sentry(v7);
  }

  return a1;
}

void sub_1922C081C(void *a1)
{
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v1 + *(*v1 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922C0808);
}

char *std::wistream::operator>>(char *a1, void (*a2)(char *))
{
  a2(&a1[*(*a1 - 24)]);
  return a1;
}

{
  a2(&a1[*(*a1 - 24)]);
  return a1;
}

uint64_t *std::wistream::operator>>(uint64_t *a1, void *a2)
{
  a1[1] = 0;
  std::wistream::sentry::sentry(&v15, a1, 1);
  if (!v15)
  {
    return a1;
  }

  if (!a2)
  {
    v13 = 4;
    goto LABEL_22;
  }

  v4 = a1 + 5;
  while (1)
  {
    v5 = *(v4 + *(*a1 - 24));
    v6 = v5[3];
    if (v6 == v5[4])
    {
      v7 = (*(*v5 + 72))(v5);
    }

    else
    {
      v7 = *v6;
    }

    if (v7 == -1)
    {
      v12 = 2;
      goto LABEL_19;
    }

    v8 = a2[6];
    if (v8 != a2[7])
    {
      *v8 = v7;
      a2[6] = v8 + 1;
      goto LABEL_11;
    }

    if ((*(*a2 + 104))(a2) == -1)
    {
      break;
    }

LABEL_11:
    v9 = a1[1];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      a1[1] = v9 + 1;
    }

    v10 = *(v4 + *(*a1 - 24));
    v11 = v10[3];
    if (v11 == v10[4])
    {
      (*(*v10 + 80))(v10);
    }

    else
    {
      v10[3] = v11 + 4;
    }
  }

  v12 = 0;
LABEL_19:
  if (a1[1])
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 | 4;
  }

LABEL_22:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v13);
  return a1;
}

void sub_1922C0AB4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  if (v1[1])
  {
    v3 = 1;
  }

  else
  {
    v3 = 5;
  }

  v4 = *v1;
  *(v1 + *(v2 - 24) + 32) |= v3;
  if ((*(v1 + *(v2 - 24) + 36) & 5) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C0A78);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<BOOL,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::wistream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
    (v4->__vftable[1].~facet)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922C0C4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C0C10);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic_with_numeric_limits[abi:ne200100]<short,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, __int16 *a2)
{
  v10 = 0;
  std::wistream::sentry::sentry(&v9, a1, 0);
  if (v9)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v7, &std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
    (v4->__vftable[1].~facet_0)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v10, &v8);
    std::locale::~locale(&v7);
    v5 = v8;
    if (v8 > -32769)
    {
      if (v8 >= 0x8000)
      {
        v10 |= 4u;
        v5 = 0x7FFF;
      }
    }

    else
    {
      v10 |= 4u;
      v5 = 0x8000;
    }

    *a2 = v5;
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v10);
  }

  return a1;
}

void sub_1922C0E38(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  __cxa_begin_catch(a1);
  v12 = *(v11 - 20) | 1;
  *(v11 - 20) = v12;
  v13 = *v10;
  *(v10 + *(*v10 - 24) + 32) |= v12;
  if ((*(v10 + *(v13 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C0DFCLL);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<unsigned short,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::wistream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
    (v4->__vftable[2].~facet)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922C0FE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C0FA8);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic_with_numeric_limits[abi:ne200100]<int,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, unsigned int *a2)
{
  v10 = 0;
  std::wistream::sentry::sentry(&v9, a1, 0);
  if (v9)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v7, &std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
    (v4->__vftable[1].~facet_0)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v10, &v8);
    std::locale::~locale(&v7);
    v5 = v8;
    if (v8 > 0xFFFFFFFF7FFFFFFFLL)
    {
      if (v8 >= 0x80000000)
      {
        v10 |= 4u;
        v5 = 0x7FFFFFFF;
      }
    }

    else
    {
      v10 |= 4u;
      v5 = 0x80000000;
    }

    *a2 = v5;
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v10);
  }

  return a1;
}

void sub_1922C11D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  __cxa_begin_catch(a1);
  v12 = *(v11 - 20) | 1;
  *(v11 - 20) = v12;
  v13 = *v10;
  *(v10 + *(*v10 - 24) + 32) |= v12;
  if ((*(v10 + *(v13 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C1198);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<unsigned int,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::wistream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
    (v4->__vftable[2].~facet_0)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922C1380(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C1344);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<long,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::wistream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
    (v4->__vftable[1].~facet_0)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922C152C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C14F0);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<unsigned long,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::wistream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
    (v4->__vftable[2].__on_zero_shared)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922C16D8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C169CLL);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<long long,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::wistream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
    (v4->__vftable[1].__on_zero_shared)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922C1884(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C1848);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<unsigned long long,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::wistream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
    (v4->__vftable[3].~facet)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922C1A30(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C19F4);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<float,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::wistream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
    (v4->__vftable[3].~facet_0)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922C1BDC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C1BA0);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<double,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::wistream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
    (v4->__vftable[3].__on_zero_shared)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922C1D88(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C1D4CLL);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<long double,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::wistream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
    (v4->__vftable[4].~facet)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922C1F34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C1EF8);
  }

  __cxa_rethrow();
}

uint64_t *std::__input_arithmetic[abi:ne200100]<void *,wchar_t,std::char_traits<wchar_t>>(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  std::wistream::sentry::sentry(&v7, a1, 0);
  if (v7)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v4 = std::locale::use_facet(&v6, &std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
    (v4->__vftable[4].~facet_0)(v4, *(a1 + *(*a1 - 24) + 40), 0, a1 + *(*a1 - 24), &v8, a2);
    std::locale::~locale(&v6);
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  }

  return a1;
}

void sub_1922C20E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 32) |= a11 | 1;
  if ((*(v11 + *(v12 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C20A4);
  }

  __cxa_rethrow();
}

uint64_t std::wistream::get(uint64_t *a1)
{
  a1[1] = 0;
  std::wistream::sentry::sentry(&v7, a1, 1);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + *(*a1 - 24) + 40);
  v3 = v2[3];
  if (v3 == v2[4])
  {
    v4 = (*(*v2 + 80))(v2);
  }

  else
  {
    v4 = *v3;
    v2[3] = v3 + 1;
  }

  if (v4 == -1)
  {
    v5 = 6;
  }

  else
  {
    v5 = 0;
    a1[1] = 1;
  }

  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v5);
  return v4;
}

void sub_1922C227C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C2244);
  }

  __cxa_rethrow();
}

uint64_t *std::wistream::get(uint64_t *a1, _DWORD *a2)
{
  v4 = std::wistream::get(a1);
  if (v4 != -1)
  {
    *a2 = v4;
  }

  return a1;
}

uint64_t *std::wistream::get(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v6 = std::locale::use_facet(&v9, &std::ctype<wchar_t>::id);
  v7 = (v6->__vftable[3].__on_zero_shared)(v6, 10);
  std::locale::~locale(&v9);
  return std::wistream::get(a1, a2, a3, v7);
}

uint64_t *std::wistream::get(uint64_t *a1, _DWORD *a2, uint64_t a3, int a4)
{
  a1[1] = 0;
  std::wistream::sentry::sentry(&v20, a1, 1);
  if (v20)
  {
    v8 = a3 - 1;
    if (a3 < 1)
    {
      v18 = 4;
    }

    else
    {
      v9 = a1[1];
      if (v9 >= v8)
      {
LABEL_16:
        v17 = 0;
      }

      else
      {
        v10 = a1 + 5;
        while (1)
        {
          v11 = *(v10 + *(*a1 - 24));
          v12 = v11[3];
          if (v12 == v11[4])
          {
            v13 = (*(*v11 + 72))(v11);
          }

          else
          {
            v13 = *v12;
          }

          if (v13 == -1)
          {
            v9 = a1[1];
            v17 = 2;
            goto LABEL_20;
          }

          v14 = a1[1];
          if (v13 == a4)
          {
            break;
          }

          *a2++ = v13;
          v9 = 0x7FFFFFFFFFFFFFFFLL;
          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v9 = v14 + 1;
            a1[1] = v14 + 1;
          }

          v15 = *(v10 + *(*a1 - 24));
          v16 = v15[3];
          if (v16 == v15[4])
          {
            (*(*v15 + 80))(v15);
            v9 = a1[1];
          }

          else
          {
            v15[3] = v16 + 4;
          }

          if (v9 >= v8)
          {
            goto LABEL_16;
          }
        }

        v17 = 0;
        v9 = a1[1];
      }

LABEL_20:
      if (v9)
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 | 4;
      }

      *a2 = 0;
    }

    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v18);
  }

  if (a3 >= 1)
  {
    *a2 = 0;
  }

  return a1;
}

void sub_1922C25C8(void *a1)
{
  __cxa_begin_catch(a1);
  v3 = *v2;
  *(v2 + *(*v2 - 24) + 32) |= 1u;
  if ((*(v2 + *(v3 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C2578);
  }

  *v1 = 0;
  __cxa_rethrow();
}

uint64_t *std::wistream::get(uint64_t *a1, void *a2)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v4 = std::locale::use_facet(&v7, &std::ctype<wchar_t>::id);
  v5 = (v4->__vftable[3].__on_zero_shared)(v4, 10);
  std::locale::~locale(&v7);
  return std::wistream::get(a1, a2, v5);
}

uint64_t *std::wistream::get(uint64_t *a1, void *a2, int a3)
{
  a1[1] = 0;
  std::wistream::sentry::sentry(&v16, a1, 1);
  if (v16)
  {
    v6 = a1 + 5;
    while (1)
    {
      v7 = *(v6 + *(*a1 - 24));
      v8 = v7[3];
      v9 = v8 == v7[4] ? (*(*v7 + 72))(v7) : *v8;
      if (v9 == -1)
      {
        break;
      }

      if (v9 == a3)
      {
        goto LABEL_16;
      }

      v10 = a2[6];
      if (v10 == a2[7])
      {
        if ((*(*a2 + 104))(a2) == -1)
        {
LABEL_16:
          v14 = 0;
          goto LABEL_18;
        }
      }

      else
      {
        *v10 = v9;
        a2[6] = v10 + 1;
      }

      v11 = a1[1];
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        a1[1] = v11 + 1;
      }

      v12 = *(v6 + *(*a1 - 24));
      v13 = v12[3];
      if (v13 == v12[4])
      {
        (*(*v12 + 80))(v12);
      }

      else
      {
        v12[3] = v13 + 4;
      }
    }

    v14 = 2;
LABEL_18:
    if (!a1[1])
    {
      v14 |= 4u;
    }

    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v14);
  }

  return a1;
}

void sub_1922C28D8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1922C288CLL);
}

uint64_t *std::wistream::getline(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v6 = std::locale::use_facet(&v9, &std::ctype<wchar_t>::id);
  v7 = (v6->__vftable[3].__on_zero_shared)(v6, 10);
  std::locale::~locale(&v9);
  return std::wistream::getline(a1, a2, a3, v7);
}

uint64_t *std::wistream::getline(uint64_t *a1, _DWORD *a2, uint64_t a3, int a4)
{
  a1[1] = 0;
  std::wistream::sentry::sentry(&v21, a1, 1);
  if (!v21)
  {
    goto LABEL_19;
  }

  v8 = a1 + 5;
  while (1)
  {
    v9 = *(v8 + *(*a1 - 24));
    v10 = v9[3];
    if (v10 == v9[4])
    {
      v11 = (*(*v9 + 72))(v9);
    }

    else
    {
      v11 = *v10;
    }

    if (v11 == -1)
    {
      v16 = 2;
      goto LABEL_20;
    }

    if (v11 == a4)
    {
      break;
    }

    v12 = a1[1];
    if (v12 >= a3 - 1)
    {
      v16 = 4;
      goto LABEL_20;
    }

    *a2 = v11;
    v13 = a2 + 1;
    v14 = *(v8 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 != v14[4])
    {
      v14[3] = v15 + 4;
      goto LABEL_12;
    }

    (*(*v14 + 80))(v14);
    v12 = a1[1];
    ++a2;
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_12:
      a1[1] = v12 + 1;
      a2 = v13;
    }
  }

  v17 = *(a1 + *(*a1 - 24) + 40);
  v18 = v17[3];
  if (v18 == v17[4])
  {
    (*(*v17 + 80))(v17);
  }

  else
  {
    v17[3] = v18 + 4;
  }

  v19 = a1[1];
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_19:
    v16 = 0;
  }

  else
  {
    v16 = 0;
    a1[1] = v19 + 1;
  }

LABEL_20:
  if (a3 >= 1)
  {
    *a2 = 0;
  }

  if (!a1[1])
  {
    v16 |= 4u;
  }

  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v16);
  return a1;
}

void sub_1922C2BDC(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v4 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C2B70);
  }

  if (v2 >= 1)
  {
    *v3 = 0;
  }

  __cxa_rethrow();
}

uint64_t *std::wistream::ignore(uint64_t *a1, uint64_t a2, int a3)
{
  a1[1] = 0;
  std::wistream::sentry::sentry(&v17, a1, 1);
  if (v17)
  {
    if (a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      while (1)
      {
        v6 = *(a1 + *(*a1 - 24) + 40);
        v7 = v6[3];
        if (v7 == v6[4])
        {
          v8 = (*(*v6 + 80))(*(a1 + *(*a1 - 24) + 40));
        }

        else
        {
          v8 = *v7;
          v6[3] = v7 + 1;
        }

        if (v8 == -1)
        {
          break;
        }

        v9 = a1[1];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          a1[1] = v9 + 1;
        }

        if (v8 == a3)
        {
          goto LABEL_20;
        }
      }

LABEL_21:
      v15 = 2;
    }

    else
    {
      v10 = a1[1];
      do
      {
        if (v10 >= a2)
        {
          break;
        }

        v11 = *(a1 + *(*a1 - 24) + 40);
        v12 = v11[3];
        if (v12 == v11[4])
        {
          v13 = (*(*v11 + 80))(*(a1 + *(*a1 - 24) + 40));
        }

        else
        {
          v13 = *v12;
          v11[3] = v12 + 1;
        }

        if (v13 == -1)
        {
          goto LABEL_21;
        }

        v14 = a1[1];
        v10 = 0x7FFFFFFFFFFFFFFFLL;
        if (v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = v14 + 1;
          a1[1] = v14 + 1;
        }
      }

      while (v13 != a3);
LABEL_20:
      v15 = 0;
    }

    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v15);
  }

  return a1;
}

void sub_1922C2E3C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C2E04);
  }

  __cxa_rethrow();
}

uint64_t std::wistream::peek(uint64_t *a1)
{
  a1[1] = 0;
  std::wistream::sentry::sentry(&v6, a1, 1);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + *(*a1 - 24) + 40);
  v3 = v2[3];
  if (v3 == v2[4])
  {
    v4 = (*(*v2 + 72))(v2);
  }

  else
  {
    v4 = *v3;
  }

  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | (2 * (v4 == -1)));
  return v4;
}

void sub_1922C2F9C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C2F64);
  }

  __cxa_rethrow();
}

uint64_t *std::wistream::read(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  std::wistream::sentry::sentry(&v10, a1, 1);
  if (v10)
  {
    v6 = *(a1 + *(*a1 - 24) + 40);
    v7 = (*(*v6 + 64))(v6, a2, a3);
    a1[1] = v7;
    if (v7 == a3)
    {
      v8 = 0;
    }

    else
    {
      v8 = 6;
    }
  }

  else
  {
    v8 = 4;
  }

  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v8);
  return a1;
}

void sub_1922C3110(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C30DCLL);
  }

  __cxa_rethrow();
}

uint64_t std::wistream::readsome(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  std::wistream::sentry::sentry(&v14, a1, 1);
  if (v14)
  {
    v6 = *(a1 + *(*a1 - 24) + 40);
    v7 = v6[3];
    v8 = v6[4];
    if (v7 >= v8)
    {
      v9 = (*(*v6 + 56))(v6);
    }

    else
    {
      v9 = (v8 - v7) >> 2;
    }

    if (v9 == -1)
    {
      v10 = 2;
    }

    else if (v9)
    {
      if (v9 < a3)
      {
        a3 = v9;
      }

      v11 = *(a1 + *(*a1 - 24) + 40);
      v12 = (*(*v11 + 64))(v11, a2, a3);
      a1[1] = v12;
      if (v12 == a3)
      {
        v10 = 0;
      }

      else
      {
        v10 = 6;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 4;
  }

  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v10);
  return a1[1];
}

void sub_1922C32FC(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C32C8);
  }

  __cxa_rethrow();
}

uint64_t *std::wistream::putback(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + *(*a1 - 24) + 32) & 0xFFFFFFFD;
  a1[1] = 0;
  std::ios_base::clear((a1 + *(v4 - 24)), v5);
  std::wistream::sentry::sentry(&v11, a1, 1);
  if (v11)
  {
    v6 = *(a1 + *(*a1 - 24) + 40);
    if (!v6 || ((v7 = v6[3], v6[2] == v7) || (v9 = *(v7 - 4), v8 = v7 - 4, v9 != a2) ? (LODWORD(a2) = (*(*v6 + 88))(v6, a2)) : (v6[3] = v8), a2 == -1))
    {
      v5 |= 1u;
    }
  }

  else
  {
    v5 |= 4u;
  }

  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v5);
  return a1;
}

void sub_1922C34E0(void *a1)
{
  __cxa_begin_catch(a1);
  v3 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= v2 | 1;
  if ((*(v1 + *(v3 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C34A4);
  }

  __cxa_rethrow();
}

uint64_t *std::wistream::unget(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + *(*a1 - 24) + 32) & 0xFFFFFFFD;
  a1[1] = 0;
  std::ios_base::clear((a1 + *(v2 - 24)), v3);
  std::wistream::sentry::sentry(&v8, a1, 1);
  if (v8)
  {
    v4 = *(a1 + *(*a1 - 24) + 40);
    if (!v4 || ((v5 = v4[3], v4[2] == v5) ? (v6 = (*(*v4 + 88))(v4, 0xFFFFFFFFLL)) : (v6 = *(v5 - 4), v4[3] = v5 - 4), v6 == -1))
    {
      v3 |= 1u;
    }
  }

  else
  {
    v3 |= 4u;
  }

  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v3);
  return a1;
}

void sub_1922C36B0(void *a1)
{
  __cxa_begin_catch(a1);
  v3 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= v2 | 1;
  if ((*(v1 + *(v3 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C3678);
  }

  __cxa_rethrow();
}

uint64_t std::wistream::sync(uint64_t *a1)
{
  std::wistream::sentry::sentry(&v6, a1, 1);
  v2 = *(a1 + *(*a1 - 24) + 40);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  v3 = (*(*v2 + 48))(v2);
  if (v3 == -1)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | (v3 == -1));
  return v4;
}

void sub_1922C3808(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1922C37C0);
  }

  __cxa_rethrow();
}

void std::wistream::tellg(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 128) = -1;
  std::wistream::sentry::sentry(&v9, a1, 1);
  if (v9)
  {
    (*(**(a1 + *(*a1 - 24) + 40) + 32))(v10);
    *(a2 + 128) = v11;
    v4 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v4;
    v5 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v5;
    v6 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v6;
    v7 = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = v7;
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32));
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1922C39CC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v3 = *v2;
    *(v2 + *(*v2 - 24) + 32) |= 1u;
    if ((*(v2 + *(v3 - 24) + 36) & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x1922C397CLL);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::wistream::seekg(uint64_t *a1, __int128 *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = (a1 + *(*a1 - 24));
  v5 = v4->__rdstate_ & 0xFFFFFFFD;
  std::ios_base::clear(v4, v5);
  std::wistream::sentry::sentry(&v14, a1, 1);
  if (v14)
  {
    v6 = *(*a1 - 24);
    v7 = *a2;
    v17 = a2[1];
    v16 = v7;
    v8 = a2[5];
    v20 = a2[4];
    v9 = a2[2];
    v19 = a2[3];
    v18 = v9;
    v10 = a2[6];
    v23 = a2[7];
    v22 = v10;
    v11 = *(a1 + v6 + 40);
    v24 = *(a2 + 16);
    v21 = v8;
    (*(*v11 + 40))(v15);
    if (v15[16] == -1)
    {
      v5 |= 4u;
    }

    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v5);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1922C3BE4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v4 = *v2;
    *(v2 + *(*v2 - 24) + 32) |= v3 | 1;
    if ((*(v2 + *(v4 - 24) + 36) & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x1922C3B88);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::wistream::seekg(uint64_t *a1)
{
  v7[17] = *MEMORY[0x1E69E9840];
  v2 = (a1 + *(*a1 - 24));
  v3 = v2->__rdstate_ & 0xFFFFFFFD;
  std::ios_base::clear(v2, v3);
  std::wistream::sentry::sentry(&v6, a1, 1);
  if (v6)
  {
    (*(**(a1 + *(*a1 - 24) + 40) + 32))(v7);
    if (v7[16] == -1)
    {
      v3 |= 4u;
    }

    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v3);
  }

  v4 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1922C3DC4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v4 = *v2;
    *(v2 + *(*v2 - 24) + 32) |= v3 | 1;
    if ((*(v2 + *(v4 - 24) + 36) & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x1922C3D6CLL);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::wostream::basic_ostream(uint64_t *a1, uint64_t *a2, void *__sb)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[1];
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, __sb);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  return a1;
}

uint64_t std::wostream::basic_ostream(uint64_t a1, void *a2)
{
  *(a1 + 56) = 0;
  std::ios_base::init((a1 + 8), a2);
  *(a1 + 144) = 0;
  *(a1 + 152) = -1;
  return a1;
}

void virtual thunk tostd::wostream::~wostream(void *a1)
{
  std::ios_base::~ios_base((a1 + *(*a1 - 24) + 8));
}

{
  std::ios_base::~ios_base((a1 + *(*a1 - 24) + 8));

  JUMPOUT(0x193B0CA40);
}

void std::wostream::~wostream(uint64_t a1)
{
  std::ios_base::~ios_base((a1 + 8));

  JUMPOUT(0x193B0CA40);
}

void std::wostream::swap(void *a1, void *a2)
{
  v2 = (a1 + *(*a1 - 24));
  v3 = (a2 + *(*a2 - 24));
  std::ios_base::swap(v2, v3);
  v4 = v2[1].__vftable;
  v2[1].__vftable = v3[1].__vftable;
  v3[1].__vftable = v4;
  LODWORD(v4) = v2[1].__fmtflags_;
  v2[1].__fmtflags_ = v3[1].__fmtflags_;
  v3[1].__fmtflags_ = v4;
}

uint64_t std::wostream::sentry::sentry(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  v3 = a2 + *(*a2 - 24);
  if (!*(v3 + 8))
  {
    v4 = *(v3 + 17);
    if (v4)
    {
      std::wostream::flush(v4, a2);
    }

    *a1 = 1;
  }

  return a1;
}

uint64_t std::wostream::sentry::~sentry(uint64_t a1)
{
  v2 = *(a1 + 8) + *(**(a1 + 8) - 24);
  if (*(v2 + 40))
  {
    if (!*(v2 + 32) && (*(v2 + 9) & 0x20) != 0 && !std::uncaught_exceptions())
    {
      v3 = *(*(a1 + 8) + *(**(a1 + 8) - 24) + 40);
      if ((*(*v3 + 48))(v3) == -1)
      {
        v4 = (*(a1 + 8) + *(**(a1 + 8) - 24));
        std::ios_base::clear(v4, v4->__rdstate_ | 1);
      }
    }
  }

  return a1;
}

void sub_1922C4268(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1922C4258);
}

char *std::wostream::operator<<(char *a1, void (*a2)(char *))
{
  a2(&a1[*(*a1 - 24)]);
  return a1;
}

{
  a2(&a1[*(*a1 - 24)]);
  return a1;
}

void *std::wostream::__put_num[abi:ne200100]<BOOL>(void *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v5 = *(v3 + 17);
    if (v5)
    {
      std::wostream::flush(v5, a2);
    }

    v12[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v6 = std::locale::use_facet(&v14, &std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
    std::locale::~locale(&v14);
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 5);
    v9 = *(v7 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<wchar_t>::id);
      v9 = (v10->__vftable[3].__on_zero_shared)(v10, 32);
      std::locale::~locale(&v14);
      *(v7 + 36) = v9;
    }

    if (!(v6->__vftable[1].~facet)(v6, v8, v7, v9, a2))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::wostream::sentry::~sentry(v12);
  return a1;
}

void sub_1922C44A4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::wostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922C4488);
}

void *std::wostream::__put_num_integer_promote[abi:ne200100]<short>(void *a1, uint64_t a2)
{
  v16[0] = 0;
  v17 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v4 = a2;
    v5 = *(v3 + 17);
    if (v5)
    {
      std::wostream::flush(v5, a2);
    }

    v16[0] = 1;
    v6 = (a1 + *(*a1 - 24));
    fmtflags = v6->__fmtflags_;
    std::ios_base::getloc(v6);
    v8 = std::locale::use_facet(&v18, &std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
    std::locale::~locale(&v18);
    v9 = a1 + *(*a1 - 24);
    v10 = *(v9 + 5);
    v11 = *(v9 + 36);
    if (v11 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v12 = std::locale::use_facet(&v18, &std::ctype<wchar_t>::id);
      v11 = (v12->__vftable[3].__on_zero_shared)(v12, 32);
      std::locale::~locale(&v18);
      *(v9 + 36) = v11;
    }

    if ((fmtflags & 0x4A) == 0x40 || (fmtflags & 0x4A) == 8)
    {
      v14 = v4;
    }

    else
    {
      v14 = v4;
    }

    if (!(v8->__vftable[1].~facet_0)(v8, v10, v9, v11, v14))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::wostream::sentry::~sentry(v16);
  return a1;
}

void sub_1922C46DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::wostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922C46BCLL);
}

void *std::wostream::__put_num_integer_promote[abi:ne200100]<unsigned short>(void *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v4 = a2;
    v5 = *(v3 + 17);
    if (v5)
    {
      std::wostream::flush(v5, a2);
    }

    v12[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v6 = std::locale::use_facet(&v14, &std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
    std::locale::~locale(&v14);
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 5);
    v9 = *(v7 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<wchar_t>::id);
      v9 = (v10->__vftable[3].__on_zero_shared)(v10, 32);
      std::locale::~locale(&v14);
      *(v7 + 36) = v9;
    }

    if (!(v6->__vftable[2].~facet)(v6, v8, v7, v9, v4))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::wostream::sentry::~sentry(v12);
  return a1;
}

void sub_1922C48F0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::wostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922C48D4);
}

void *std::wostream::__put_num_integer_promote[abi:ne200100]<int>(void *a1, uint64_t a2)
{
  v16[0] = 0;
  v17 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v4 = a2;
    v5 = *(v3 + 17);
    if (v5)
    {
      std::wostream::flush(v5, a2);
    }

    v16[0] = 1;
    v6 = (a1 + *(*a1 - 24));
    fmtflags = v6->__fmtflags_;
    std::ios_base::getloc(v6);
    v8 = std::locale::use_facet(&v18, &std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
    std::locale::~locale(&v18);
    v9 = a1 + *(*a1 - 24);
    v10 = *(v9 + 5);
    v11 = *(v9 + 36);
    if (v11 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v12 = std::locale::use_facet(&v18, &std::ctype<wchar_t>::id);
      v11 = (v12->__vftable[3].__on_zero_shared)(v12, 32);
      std::locale::~locale(&v18);
      *(v9 + 36) = v11;
    }

    if ((fmtflags & 0x4A) == 0x40 || (fmtflags & 0x4A) == 8)
    {
      v14 = v4;
    }

    else
    {
      v14 = v4;
    }

    if (!(v8->__vftable[1].~facet_0)(v8, v10, v9, v11, v14))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::wostream::sentry::~sentry(v16);
  return a1;
}

void sub_1922C4B28(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::wostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922C4B08);
}

void *std::wostream::__put_num_integer_promote[abi:ne200100]<unsigned int>(void *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v4 = a2;
    v5 = *(v3 + 17);
    if (v5)
    {
      std::wostream::flush(v5, a2);
    }

    v12[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v6 = std::locale::use_facet(&v14, &std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
    std::locale::~locale(&v14);
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 5);
    v9 = *(v7 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<wchar_t>::id);
      v9 = (v10->__vftable[3].__on_zero_shared)(v10, 32);
      std::locale::~locale(&v14);
      *(v7 + 36) = v9;
    }

    if (!(v6->__vftable[2].~facet)(v6, v8, v7, v9, v4))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::wostream::sentry::~sentry(v12);
  return a1;
}

void sub_1922C4D3C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::wostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922C4D20);
}

void *std::wostream::__put_num[abi:ne200100]<long>(void *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v5 = *(v3 + 17);
    if (v5)
    {
      std::wostream::flush(v5, a2);
    }

    v12[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v6 = std::locale::use_facet(&v14, &std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
    std::locale::~locale(&v14);
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 5);
    v9 = *(v7 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<wchar_t>::id);
      v9 = (v10->__vftable[3].__on_zero_shared)(v10, 32);
      std::locale::~locale(&v14);
      *(v7 + 36) = v9;
    }

    if (!(v6->__vftable[1].~facet_0)(v6, v8, v7, v9, a2))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::wostream::sentry::~sentry(v12);
  return a1;
}

void sub_1922C4F50(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::wostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922C4F34);
}

void *std::wostream::__put_num[abi:ne200100]<unsigned long>(void *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v5 = *(v3 + 17);
    if (v5)
    {
      std::wostream::flush(v5, a2);
    }

    v12[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v6 = std::locale::use_facet(&v14, &std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
    std::locale::~locale(&v14);
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 5);
    v9 = *(v7 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<wchar_t>::id);
      v9 = (v10->__vftable[3].__on_zero_shared)(v10, 32);
      std::locale::~locale(&v14);
      *(v7 + 36) = v9;
    }

    if (!(v6->__vftable[2].~facet)(v6, v8, v7, v9, a2))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::wostream::sentry::~sentry(v12);
  return a1;
}

void sub_1922C5164(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::wostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922C5148);
}

void *std::wostream::__put_num[abi:ne200100]<long long>(void *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v5 = *(v3 + 17);
    if (v5)
    {
      std::wostream::flush(v5, a2);
    }

    v12[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v6 = std::locale::use_facet(&v14, &std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
    std::locale::~locale(&v14);
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 5);
    v9 = *(v7 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<wchar_t>::id);
      v9 = (v10->__vftable[3].__on_zero_shared)(v10, 32);
      std::locale::~locale(&v14);
      *(v7 + 36) = v9;
    }

    if (!(v6->__vftable[1].__on_zero_shared)(v6, v8, v7, v9, a2))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::wostream::sentry::~sentry(v12);
  return a1;
}

void sub_1922C5378(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::wostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922C535CLL);
}

void *std::wostream::__put_num[abi:ne200100]<unsigned long long>(void *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v5 = *(v3 + 17);
    if (v5)
    {
      std::wostream::flush(v5, a2);
    }

    v12[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v6 = std::locale::use_facet(&v14, &std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
    std::locale::~locale(&v14);
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 5);
    v9 = *(v7 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<wchar_t>::id);
      v9 = (v10->__vftable[3].__on_zero_shared)(v10, 32);
      std::locale::~locale(&v14);
      *(v7 + 36) = v9;
    }

    if (!(v6->__vftable[2].~facet_0)(v6, v8, v7, v9, a2))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::wostream::sentry::~sentry(v12);
  return a1;
}

void sub_1922C558C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::wostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922C5570);
}

void *std::wostream::__put_num[abi:ne200100]<double>(void *a1, uint64_t a2, double a3)
{
  v13[0] = 0;
  v14 = a1;
  v4 = a1 + *(*a1 - 24);
  if (!*(v4 + 8))
  {
    v6 = *(v4 + 17);
    if (v6)
    {
      std::wostream::flush(v6, a2);
    }

    v13[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v7 = std::locale::use_facet(&v15, &std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
    std::locale::~locale(&v15);
    v8 = a1 + *(*a1 - 24);
    v9 = *(v8 + 5);
    v10 = *(v8 + 36);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v15, &std::ctype<wchar_t>::id);
      v10 = (v11->__vftable[3].__on_zero_shared)(v11, 32);
      std::locale::~locale(&v15);
      *(v8 + 36) = v10;
    }

    if (!(v7->__vftable[2].__on_zero_shared)(v7, v9, v8, v10, a3))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::wostream::sentry::~sentry(v13);
  return a1;
}

void sub_1922C57B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::wostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922C5790);
}

void *std::wostream::__put_num[abi:ne200100]<long double>(void *a1, uint64_t a2, double a3)
{
  v13[0] = 0;
  v14 = a1;
  v4 = a1 + *(*a1 - 24);
  if (!*(v4 + 8))
  {
    v6 = *(v4 + 17);
    if (v6)
    {
      std::wostream::flush(v6, a2);
    }

    v13[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v7 = std::locale::use_facet(&v15, &std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
    std::locale::~locale(&v15);
    v8 = a1 + *(*a1 - 24);
    v9 = *(v8 + 5);
    v10 = *(v8 + 36);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v15, &std::ctype<wchar_t>::id);
      v10 = (v11->__vftable[3].__on_zero_shared)(v11, 32);
      std::locale::~locale(&v15);
      *(v8 + 36) = v10;
    }

    if (!(v7->__vftable[3].~facet)(v7, v9, v8, v10, a3))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::wostream::sentry::~sentry(v13);
  return a1;
}

void sub_1922C59CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::wostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922C59ACLL);
}

void *std::wostream::__put_num[abi:ne200100]<void const*>(void *a1, uint64_t a2)
{
  v12[0] = 0;
  v13 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v5 = *(v3 + 17);
    if (v5)
    {
      std::wostream::flush(v5, a2);
    }

    v12[0] = 1;
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v6 = std::locale::use_facet(&v14, &std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
    std::locale::~locale(&v14);
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 5);
    v9 = *(v7 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<wchar_t>::id);
      v9 = (v10->__vftable[3].__on_zero_shared)(v10, 32);
      std::locale::~locale(&v14);
      *(v7 + 36) = v9;
    }

    if (!(v6->__vftable[3].~facet_0)(v6, v8, v7, v9, a2))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::wostream::sentry::~sentry(v12);
  return a1;
}

void sub_1922C5BE0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::wostream::sentry::~sentry(&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922C5BC4);
}

void *std::wostream::operator<<(void *a1, void *a2)
{
  v15[0] = 0;
  v16 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v6 = *(v3 + 17);
    if (v6)
    {
      std::wostream::flush(v6, a2);
    }

    v15[0] = 1;
    if (a2)
    {
      v7 = 0;
      v13 = 0;
      v14 = a2;
      v12 = *(a1 + *(*a1 - 24) + 40);
      while (1)
      {
        v8 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v14);
        if (v8 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v13))
        {
          break;
        }

        v9 = v14[3];
        v10 = v9 == v14[4] ? (*(*v14 + 72))(v14) : *v9;
        std::ostreambuf_iterator<wchar_t>::operator=[abi:ne200100](&v12, v10);
        if (!v12)
        {
          break;
        }

        v11 = v14[3];
        if (v11 == v14[4])
        {
          (*(*v14 + 80))(v14);
        }

        else
        {
          v14[3] = v11 + 4;
        }

        --v7;
      }

      if (!v7)
      {
        std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
      }
    }

    else
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::wostream::sentry::~sentry(v15);
  return a1;
}

void sub_1922C5E00(void *a1)
{
  __cxa_begin_catch(a1);
  std::ios_base::__set_failbit_and_consider_rethrow((v1 + *(*v1 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922C5C94);
}

void sub_1922C5E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_end_catch();
  std::wostream::sentry::~sentry(va);
  JUMPOUT(0x1922C5E4CLL);
}

void **std::ostreambuf_iterator<wchar_t>::operator=[abi:ne200100](void **a1, int a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = v3[6];
    if (v4 == v3[7])
    {
      a2 = (*(*v3 + 104))(v3);
    }

    else
    {
      *v4 = a2;
      v3[6] = v4 + 1;
    }

    if (a2 == -1)
    {
      *a1 = 0;
    }
  }

  return a1;
}

void *std::wostream::put(void *a1, uint64_t a2)
{
  v8[0] = 0;
  v9 = a1;
  v3 = a1 + *(*a1 - 24);
  if (!*(v3 + 8))
  {
    v4 = a2;
    v5 = *(v3 + 17);
    if (v5)
    {
      std::wostream::flush(v5, a2);
    }

    v8[0] = 1;
    v7 = *(a1 + *(*a1 - 24) + 40);
    std::ostreambuf_iterator<wchar_t>::operator=[abi:ne200100](&v7, v4);
    if (!v7)
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 1);
    }
  }

  std::wostream::sentry::~sentry(v8);
  return a1;
}

void sub_1922C5FD0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v11 + *(*v11 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922C5FBCLL);
}

void *std::wostream::write(void *a1, uint64_t a2, uint64_t a3)
{
  v10[0] = 0;
  v11 = a1;
  v4 = a1 + *(*a1 - 24);
  if (!*(v4 + 8))
  {
    v8 = *(v4 + 17);
    if (v8)
    {
      std::wostream::flush(v8, a2);
    }

    v10[0] = 1;
    if (a3)
    {
      v9 = *(a1 + *(*a1 - 24) + 40);
      if ((*(*v9 + 96))(v9, a2, a3) != a3)
      {
        std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 1);
      }
    }
  }

  std::wostream::sentry::~sentry(v10);
  return a1;
}

void sub_1922C6120(void *a1)
{
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v1 + *(*v1 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1922C6070);
}

void *std::wostream::tellp@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result + *(*result - 24);
  if ((v2[32] & 5) == 0)
  {
    return (*(**(v2 + 5) + 32))(*(v2 + 5), 0, 1, 16);
  }

  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 128) = -1;
  return result;
}

void *std::wostream::seekp(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v16 = a1;
  v4 = *a1;
  v5 = a1 + *(*a1 - 24);
  if (!*(v5 + 8))
  {
    v6 = *(v5 + 17);
    if (v6)
    {
      std::wostream::flush(v6, a2);
      v4 = *a1;
    }

    v15[0] = 1;
  }

  v7 = a1 + *(v4 - 24);
  if ((v7[32] & 5) == 0)
  {
    v8 = *(v7 + 5);
    v9 = *(a2 + 16);
    v18 = *a2;
    v19 = v9;
    v10 = *(a2 + 48);
    v20 = *(a2 + 32);
    v21 = v10;
    v26 = *(a2 + 128);
    v11 = *(a2 + 112);
    v24 = *(a2 + 96);
    v25 = v11;
    v12 = *(a2 + 80);
    v22 = *(a2 + 64);
    v23 = v12;
    (*(*v8 + 40))(v17);
    if (v17[16] == -1)
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
    }
  }

  std::wostream::sentry::~sentry(v15);
  v13 = *MEMORY[0x1E69E9840];
  return a1;
}

{
  v11[17] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v10 = a1;
  v3 = *a1;
  v4 = a1 + *(*a1 - 24);
  if (!*(v4 + 8))
  {
    v5 = *(v4 + 17);
    if (v5)
    {
      std::wostream::flush(v5, a2);
      v3 = *a1;
    }

    v9[0] = 1;
  }

  v6 = a1 + *(v3 - 24);
  if ((v6[32] & 5) == 0)
  {
    (*(**(v6 + 5) + 32))(v11);
    if (v11[16] == -1)
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
    }
  }

  std::wostream::sentry::~sentry(v9);
  v7 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1922C6358(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::wostream::sentry::~sentry(va);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf(uint64_t a1, uint64_t a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 96) = *(a2 + 96);
  std::stringbuf::__move_init[abi:ne200100](a1, a2);
  return a1;
}

void sub_1922C6564(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    MEMORY[0x193B0CA40](*(v1 + 64), *(v1 + 80) & 0x7FFFFFFFFFFFFFFFLL);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__move_init[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 64);
  v4 = *(a2 + 64);
  if (*(a2 + 87) >= 0)
  {
    v4 = a2 + 64;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = v6 - v4;
    v8 = *(a2 + 24) - v4;
    v9 = *(a2 + 32) - v4;
  }

  else
  {
    v9 = -1;
    v8 = -1;
    v7 = -1;
  }

  v10 = *(a2 + 40);
  if (v10)
  {
    v11 = v10 - v4;
    v12 = *(a2 + 48) - v4;
    v13 = *(a2 + 56) - v4;
  }

  else
  {
    v11 = -1;
    v12 = -1;
    v13 = -1;
  }

  v14 = *(a2 + 88);
  v15 = v14 - v4;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = -1;
  }

  v17 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v21 = v9;
    MEMORY[0x193B0CA40](*(a1 + 64), *(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL);
    v9 = v21;
  }

  v18 = *v5;
  *(a1 + 80) = *(v5 + 2);
  *v17 = v18;
  *(a2 + 87) = 0;
  *(a2 + 64) = 0;
  if (*(a1 + 87) < 0)
  {
    v17 = *v17;
  }

  if (v7 != -1)
  {
    *(a1 + 16) = v17 + v7;
    *(a1 + 24) = v17 + v8;
    *(a1 + 32) = v17 + v9;
  }

  if (v11 != -1)
  {
    *(a1 + 56) = v17 + v13;
    *(a1 + 40) = v17 + v11;
    *(a1 + 48) = v17 + v11 + v12;
  }

  v19 = v17 + v16;
  if (v16 == -1)
  {
    v19 = 0;
  }

  *(a1 + 88) = v19;
  if (*(a2 + 87) >= 0)
  {
    v20 = v5;
  }

  else
  {
    v20 = *(a2 + 64);
  }

  *(a2 + 16) = v20;
  *(a2 + 24) = v20;
  *(a2 + 32) = v20;
  *(a2 + 40) = v20;
  *(a2 + 48) = v20;
  *(a2 + 56) = v20;
  *(a2 + 88) = v20;
  std::locale::locale(&v22, (a2 + 8));
  (*(*a1 + 16))(a1, &v22);
  std::locale::locale(&v23, (a1 + 8));
  std::locale::operator=((a1 + 8), &v22);
  std::locale::~locale(&v23);
  std::locale::~locale(&v22);
}