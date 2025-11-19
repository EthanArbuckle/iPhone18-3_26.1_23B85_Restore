double *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,double *,double *>(double *a1, double *a2, double *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,double *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,double *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = v16;
          v18 = &v16[v14];
          v16 = v18 + 1;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[2];
            v21 = v18 + 2;
            if (*(v21 - 1) < v22)
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v16 != --v6)
        {
          *v16 = *v6;
          *v6 = v15;
          v23 = (v16 - a1 + 8) >> 3;
          v24 = v23 < 2;
          v25 = v23 - 2;
          if (v24)
          {
            goto LABEL_22;
          }

          v26 = v25 >> 1;
          v27 = &a1[v26];
          v28 = *v27;
          v15 = *v16;
          if (*v27 >= *v16)
          {
            goto LABEL_22;
          }

          do
          {
            *v16 = v28;
            v16 = v27;
            if (!v26)
            {
              break;
            }

            v26 = (v26 - 1) >> 1;
            v27 = &a1[v26];
            v28 = *v27;
          }

          while (*v27 < v15);
        }

        *v16 = v15;
LABEL_22:
        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,double *>(uint64_t result, uint64_t a2, uint64_t a3, double *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *v8 < v8[1])
      {
        ++v8;
        v7 = v9;
      }

      v10 = *v8;
      v11 = *a4;
      if (*v8 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v13 = v12 + 2;
          if (v13 < a3 && *v8 < v8[1])
          {
            ++v8;
            v7 = v13;
          }

          v10 = *v8;
        }

        while (*v8 >= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

void std::bad_any_cast::~bad_any_cast(std::bad_any_cast *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x193B0CA40);
}

void std::experimental::fundamentals_v1::bad_any_cast::~bad_any_cast(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x193B0CA40);
}

void std::__call_once(std::once_flag::_State_type *a1, void *a2, void (__cdecl *a3)(void *))
{
  pthread_mutex_lock(&std::mut);
  while (*a1 == 1)
  {
    pthread_cond_wait(&std::cv, &std::mut);
  }

  if (*a1)
  {

    pthread_mutex_unlock(&std::mut);
  }

  else
  {
    v6 = a1;
    *a1 = 1;
    pthread_mutex_unlock(&std::mut);
    (a3)(a2);
    pthread_mutex_lock(&std::mut);
    atomic_store(0xFFFFFFFFFFFFFFFFLL, a1);
    pthread_mutex_unlock(&std::mut);
    pthread_cond_broadcast(&std::cv);
    v7 = 1;
    std::__exception_guard_exceptions<std::__call_once(unsigned long volatile&,void *,void (*)(void *))::$_0>::~__exception_guard_exceptions[abi:ne200100](&v6);
  }
}

uint64_t std::__exception_guard_exceptions<std::__call_once(unsigned long volatile&,void *,void (*)(void *))::$_0>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    pthread_mutex_lock(&std::mut);
    **a1 = 0;
    pthread_mutex_unlock(&std::mut);
    pthread_cond_broadcast(&std::cv);
  }

  return a1;
}

const char *std::__parse_exponent(std::__1 *this, const char *a2, uint64_t a3, int a4)
{
  v4 = a3;
  v5 = (a3 + 1);
  if (a2 > a3 + 1 && __tolower(*(this + a3)) == a4)
  {
    v8 = &v5[this];
    v9 = v5[this];
    if ((v9 & 0x80000000) != 0)
    {
      if (__maskrune(v9, 0x4000uLL))
      {
        return v4;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x4000) != 0)
    {
      return v4;
    }

    v10 = (a2 - v5);
    if (a2 != v5)
    {
      v11 = 0;
      while (1)
      {
        v12 = v11[v8];
        if ((v12 - 9) >= 5 && v12 != 32)
        {
          break;
        }

        if (v10 == ++v11)
        {
          v12 = a2[this];
          v11 = (a2 - v5);
          break;
        }
      }

      if ((v12 == 45 || v12 == 43) && (++v11, v12 != 43))
      {
        v13 = 0x80000000;
      }

      else
      {
        v13 = 0x7FFFFFFF;
      }

      if (v11 < v10 && (v14 = v11[v8], __llvm_libc_common_utils::internal::isalnum(v14)))
      {
        v15 = __llvm_libc_common_utils::internal::b36_char_to_int(v14);
        if (v15 > 9)
        {
          v17 = 0;
          v11 = 0;
        }

        else
        {
          v16 = 0;
          v17 = 0;
          v18 = v11 + 2;
          v25 = &a2[-v4];
          while (1)
          {
            v19 = 10 * v16;
            if (v16 > 0xCCCCCCC)
            {
              v19 = v13;
            }

            v21 = v19 > v13 - v15;
            v20 = v15 + v19;
            if (v21)
            {
              v20 = v13;
              v21 = 1;
            }

            else
            {
              v21 = v16 > 0xCCCCCCC;
            }

            if (v21)
            {
              v22 = 34;
            }

            else
            {
              v22 = v17;
            }

            if (v16 == v13)
            {
              v17 = 34;
            }

            else
            {
              v17 = v22;
            }

            if (v16 == v13)
            {
              v16 = v13;
            }

            else
            {
              v16 = v20;
            }

            if (v25 == v18)
            {
              v11 = v10;
              goto LABEL_46;
            }

            v23 = v18[this + v4];
            if (!__llvm_libc_common_utils::internal::isalnum(v23))
            {
              break;
            }

            v15 = __llvm_libc_common_utils::internal::b36_char_to_int(v23);
            ++v18;
            ++v11;
            if (v15 > 9)
            {
              goto LABEL_46;
            }
          }

          v11 = v18 - 1;
        }

LABEL_46:
        if (v17 == 34)
        {
          if (!v11)
          {
            return v4;
          }

          return &v5[v11];
        }
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        return &v5[v11];
      }
    }
  }

  return v4;
}

uint64_t std::__merge_exponents(std::__1 *this, uint64_t a2, unsigned int a3)
{
  if (this + a2 < -a3)
  {
    v3 = -a3;
  }

  else
  {
    v3 = a2 + this;
  }

  if (this + a2 <= a3)
  {
    return v3;
  }

  else
  {
    return a3;
  }
}

const char *std::__from_chars_floating_point_impl<float>@<X0>(const char *result@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (result == a2)
  {
    goto LABEL_20;
  }

  v7 = result;
  v8 = *result;
  v9 = *result;
  v10 = result;
  if (v8 != 45)
  {
    goto LABEL_5;
  }

  v10 = (result + 1);
  if (result + 1 == a2)
  {
LABEL_20:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 22;
    return result;
  }

  v9 = *v10;
LABEL_5:
  v11 = __tolower(v9);
  if (v11 == 110)
  {

    return std::__from_chars_floating_point_nan<float>(v7, a2, v10 + 1, v8 == 45, a4);
  }

  else if (v11 == 105)
  {

    return std::__from_chars_floating_point_inf<float>(v7, a2, v10 + 1, v8 == 45, a4);
  }

  else if (a3 == 4)
  {

    return std::__from_chars_floating_point_hex<float>(v7, a2, v10, v8 == 45, a4);
  }

  else
  {

    return std::__from_chars_floating_point_decimal<float>(v7, a2, a3, v10, v8 == 45, a4);
  }
}

char *std::__from_chars_floating_point_impl<double>@<X0>(char *result@<X0>, unsigned __int8 *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (result == a2)
  {
    goto LABEL_20;
  }

  v7 = result;
  v8 = *result;
  v9 = *result;
  v10 = result;
  if (v8 != 45)
  {
    goto LABEL_5;
  }

  v10 = result + 1;
  if (result + 1 == a2)
  {
LABEL_20:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 22;
    return result;
  }

  v9 = *v10;
LABEL_5:
  v11 = __tolower(v9);
  if (v11 == 110)
  {

    return std::__from_chars_floating_point_nan<double>(v7, a2, v10 + 1, v8 == 45, a4);
  }

  else if (v11 == 105)
  {

    return std::__from_chars_floating_point_inf<double>(v7, a2, v10 + 1, v8 == 45, a4);
  }

  else if (a3 == 4)
  {

    return std::__from_chars_floating_point_hex<double>(v7, a2, v10, v8 == 45, a4);
  }

  else
  {

    return std::__from_chars_floating_point_decimal<double>(v7, a2, a3, v10, v8 == 45, a4);
  }
}

char *std::__itoa::__base_10_u32[abi:ne200100](_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = std::__itoa::__digits_base_10[v7];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        a1[2] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v13 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = std::__itoa::__digits_base_10[v13 / 0x64u];
        a1[4] = std::__itoa::__digits_base_10[v13 % 0x64u];
        v2 = 10;
      }

      else
      {
        *a1 = v7 | 0x30;
        v8 = (140737489 * (a2 % 0x5F5E100)) >> 47;
        *(a1 + 1) = std::__itoa::__digits_base_10[v8];
        v9 = a2 % 0x5F5E100 - 1000000 * v8;
        *(a1 + 3) = std::__itoa::__digits_base_10[v9 / 0x2710uLL];
        v9 %= 0x2710u;
        *(a1 + 5) = std::__itoa::__digits_base_10[v9 / 0x64u];
        *(a1 + 7) = std::__itoa::__digits_base_10[v9 % 0x64u];
        v2 = 9;
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = std::__itoa::__digits_base_10[v3];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v11 = a2 % 0xF4240 % 0x2710;
        a1[2] = std::__itoa::__digits_base_10[v11 / 0x64u];
        a1[3] = std::__itoa::__digits_base_10[v11 % 0x64u];
        v2 = 8;
      }

      else
      {
        *a1 = v3 + 48;
        v4 = (429497 * (a2 % 0xF4240)) >> 32;
        *(a1 + 1) = std::__itoa::__digits_base_10[v4];
        v5 = a2 % 0xF4240 - 10000 * v4;
        *(a1 + 3) = std::__itoa::__digits_base_10[v5 / 0x64u];
        *(a1 + 5) = std::__itoa::__digits_base_10[v5 % 0x64u];
        v2 = 7;
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v6 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = std::__itoa::__digits_base_10[v6];
      v12 = a2 % 0x2710;
      a1[1] = std::__itoa::__digits_base_10[v12 / 0x64u];
      a1[2] = std::__itoa::__digits_base_10[v12 % 0x64u];
      v2 = 6;
    }

    else
    {
      *a1 = v6 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[(5243 * (a2 % 0x2710)) >> 19];
      *(a1 + 3) = std::__itoa::__digits_base_10[(a2 % 0x2710 - 100 * (((5243 * (a2 % 0x2710)) >> 16) >> 3))];
      v2 = 5;
    }
  }

  else if (a2 > 0x63)
  {
    v10 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = std::__itoa::__digits_base_10[v10];
      a1[1] = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 4;
    }

    else
    {
      *a1 = v10 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 3;
    }
  }

  else if (a2 > 9)
  {
    *a1 = std::__itoa::__digits_base_10[a2];
    v2 = 2;
  }

  else
  {
    *a1 = a2 | 0x30;
    v2 = 1;
  }

  return a1 + v2;
}

char *std::__itoa::__u64toa(unint64_t this, char *a2, char *a3)
{
  v3 = this;
  if (HIDWORD(this))
  {
    if (this > 0x2540BE3FFLL)
    {
      a2 = std::__itoa::__base_10_u32[abi:ne200100](a2, this / 0x2540BE400);
      v3 %= 0x2540BE400uLL;
    }

    *a2 = std::__itoa::__digits_base_10[v3 / 0x5F5E100];
    *(a2 + 1) = std::__itoa::__digits_base_10[v3 % 0x5F5E100 / 0xF4240];
    v5 = v3 % 0x5F5E100 % 0xF4240;
    *(a2 + 2) = std::__itoa::__digits_base_10[v5 / 0x2710uLL];
    v5 %= 0x2710u;
    *(a2 + 3) = std::__itoa::__digits_base_10[v5 / 0x64u];
    *(a2 + 4) = std::__itoa::__digits_base_10[v5 % 0x64u];
    return a2 + 10;
  }

  else
  {

    return std::__itoa::__base_10_u32[abi:ne200100](a2, this);
  }
}

_BYTE *std::_Floating_to_chars[abi:ne200100]<(std::_Floating_to_chars_overload)0,float>(_BYTE *a1, _BYTE *a2, float a3)
{
  v3 = a1;
  v4 = a3;
  if ((LODWORD(a3) & 0x80000000) != 0)
  {
    if (a1 == a2)
    {
      return v3;
    }

    *a1 = 45;
    v3 = a1 + 1;
    a3 = fabsf(a3);
    v5 = a3;
  }

  else
  {
    v5 = a3;
  }

  if ((~LODWORD(v5) & 0x7F800000) != 0)
  {
    return std::__f2s_buffered_n(v3, a2, 0, a3);
  }

  if ((LODWORD(v5) & 0x7FFFFF) != 0)
  {
    if ((LODWORD(v4) & 0x80000000) != 0 && (LODWORD(v5) & 0x7FFFFF) == 0x400000)
    {
      v6 = "nan(ind)";
      v7 = 8;
    }

    else
    {
      v6 = "nan";
      if ((LODWORD(v5) & 0x400000) != 0)
      {
        v7 = 3;
      }

      else
      {
        v6 = "nan(snan)";
        v7 = 9;
      }
    }
  }

  else
  {
    v6 = "inf";
    v7 = 3;
  }

  if (a2 - v3 < v7)
  {
    return a2;
  }

  memcpy(v3, v6, v7);
  v3 += v7;
  return v3;
}

char *std::to_chars(std::__1 *this, std::__1 *a2, char *x2_0, double a3)
{
  return std::_Floating_to_chars[abi:ne200100]<(std::_Floating_to_chars_overload)0,double>(this, a2, a3);
}

{
  return std::_Floating_to_chars[abi:ne200100]<(std::_Floating_to_chars_overload)0,double>(this, a2, a3);
}

char *std::_Floating_to_chars[abi:ne200100]<(std::_Floating_to_chars_overload)0,double>(std::__1 *this, std::__1 *a2, double a3)
{
  v3 = this;
  v4 = a3;
  if ((*&a3 & 0x8000000000000000) != 0)
  {
    if (this == a2)
    {
      return v3;
    }

    *this = 45;
    v3 = (this + 1);
    a3 = fabs(a3);
    v5 = a3;
  }

  else
  {
    v5 = a3;
  }

  if ((~*&v5 & 0x7FF0000000000000) != 0)
  {
    return std::__d2s_buffered_n(v3, a2, 0, a3);
  }

  if ((*&v5 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    if ((*&v4 & 0x8000000000000000) != 0 && (*&v5 & 0xFFFFFFFFFFFFFLL) == 0x8000000000000)
    {
      v6 = "nan(ind)";
      v7 = 8;
    }

    else
    {
      v6 = "nan";
      if ((*&v5 & 0x8000000000000) != 0)
      {
        v7 = 3;
      }

      else
      {
        v6 = "nan(snan)";
        v7 = 9;
      }
    }
  }

  else
  {
    v6 = "inf";
    v7 = 3;
  }

  if (a2 - v3 < v7)
  {
    return a2;
  }

  memcpy(v3, v6, v7);
  return v3 + v7;
}

char *std::_Floating_to_chars[abi:ne200100]<(std::_Floating_to_chars_overload)1,float>(char *a1, char *a2, int a3, float a4)
{
  v4 = a1;
  v5 = a4;
  if ((LODWORD(a4) & 0x80000000) != 0)
  {
    if (a1 == a2)
    {
      return v4;
    }

    *a1 = 45;
    v4 = a1 + 1;
    a4 = fabsf(a4);
    v6 = a4;
  }

  else
  {
    v6 = a4;
  }

  if ((~LODWORD(v6) & 0x7F800000) != 0)
  {
    if (a3 == 4)
    {
      return std::_Floating_to_chars_hex_shortest[abi:ne200100]<float>(v4, a2, a4);
    }

    else
    {
      return std::__f2s_buffered_n(v4, a2, a3, a4);
    }
  }

  else
  {
    if ((LODWORD(v6) & 0x7FFFFF) != 0)
    {
      if ((LODWORD(v5) & 0x80000000) != 0 && (LODWORD(v6) & 0x7FFFFF) == 0x400000)
      {
        v7 = "nan(ind)";
        v8 = 8;
      }

      else
      {
        v7 = "nan";
        if ((LODWORD(v6) & 0x400000) != 0)
        {
          v8 = 3;
        }

        else
        {
          v7 = "nan(snan)";
          v8 = 9;
        }
      }
    }

    else
    {
      v7 = "inf";
      v8 = 3;
    }

    if (a2 - v4 >= v8)
    {
      memcpy(v4, v7, v8);
      v4 += v8;
    }

    else
    {
      return a2;
    }
  }

  return v4;
}

char *std::to_chars(std::__1 *this, std::__1 *a2, int a3, double a4)
{
  return std::_Floating_to_chars[abi:ne200100]<(std::_Floating_to_chars_overload)1,double>(this, a2, a3, a4);
}

{
  return std::_Floating_to_chars[abi:ne200100]<(std::_Floating_to_chars_overload)1,double>(this, a2, a3, a4);
}

char *std::_Floating_to_chars[abi:ne200100]<(std::_Floating_to_chars_overload)1,double>(std::__1 *this, std::__1 *a2, int a3, double a4)
{
  v4 = this;
  v5 = a4;
  if ((*&a4 & 0x8000000000000000) != 0)
  {
    if (this == a2)
    {
      return v4;
    }

    *this = 45;
    v4 = this + 1;
    a4 = fabs(a4);
    v6 = a4;
  }

  else
  {
    v6 = a4;
  }

  if ((~*&v6 & 0x7FF0000000000000) != 0)
  {
    if (a3 == 4)
    {
      return std::_Floating_to_chars_hex_shortest[abi:ne200100]<double>(v4, a2, a4);
    }

    else
    {
      return std::__d2s_buffered_n(v4, a2, a3, a4);
    }
  }

  else
  {
    if ((*&v6 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      if ((*&v5 & 0x8000000000000000) != 0 && (*&v6 & 0xFFFFFFFFFFFFFLL) == 0x8000000000000)
      {
        v7 = "nan(ind)";
        v8 = 8;
      }

      else
      {
        v7 = "nan";
        if ((*&v6 & 0x8000000000000) != 0)
        {
          v8 = 3;
        }

        else
        {
          v7 = "nan(snan)";
          v8 = 9;
        }
      }
    }

    else
    {
      v7 = "inf";
      v8 = 3;
    }

    if (a2 - v4 >= v8)
    {
      memcpy(v4, v7, v8);
      v4 += v8;
    }

    else
    {
      return a2;
    }
  }

  return v4;
}

char *std::_Floating_to_chars[abi:ne200100]<(std::_Floating_to_chars_overload)2,float>(char *a1, char *a2, int a3, size_t a4, float a5)
{
  v5 = a1;
  v6 = a5;
  if ((LODWORD(a5) & 0x80000000) != 0)
  {
    if (a1 == a2)
    {
      return v5;
    }

    *a1 = 45;
    v5 = a1 + 1;
    a5 = fabsf(a5);
    v7 = a5;
  }

  else
  {
    v7 = a5;
  }

  if ((~LODWORD(v7) & 0x7F800000) != 0)
  {
    switch(a3)
    {
      case 3:
        return std::_Floating_to_chars_general_precision[abi:ne200100]<float>(v5, a2, a4, a5);
      case 2:
        return std::_Floating_to_chars_fixed_precision[abi:ne200100]<float>(v5, a2, a4, a5);
      case 1:
        return std::_Floating_to_chars_scientific_precision[abi:ne200100]<float>(v5, a2, a4, a5);
    }

    return std::_Floating_to_chars_hex_precision[abi:ne200100]<float>(v5, a2, a4, a5);
  }

  else
  {
    if ((LODWORD(v7) & 0x7FFFFF) != 0)
    {
      if ((LODWORD(v6) & 0x80000000) != 0 && (LODWORD(v7) & 0x7FFFFF) == 0x400000)
      {
        v8 = "nan(ind)";
        v9 = 8;
      }

      else
      {
        v8 = "nan";
        if ((LODWORD(v7) & 0x400000) != 0)
        {
          v9 = 3;
        }

        else
        {
          v8 = "nan(snan)";
          v9 = 9;
        }
      }
    }

    else
    {
      v8 = "inf";
      v9 = 3;
    }

    if (a2 - v5 >= v9)
    {
      memcpy(v5, v8, v9);
      v5 += v9;
    }

    else
    {
      return a2;
    }
  }

  return v5;
}

char *std::_Floating_to_chars[abi:ne200100]<(std::_Floating_to_chars_overload)2,double>(char *a1, char *a2, int a3, size_t a4, double a5)
{
  v5 = a1;
  v6 = a5;
  if ((*&a5 & 0x8000000000000000) != 0)
  {
    if (a1 == a2)
    {
      return v5;
    }

    *a1 = 45;
    v5 = a1 + 1;
    a5 = fabs(a5);
    v7 = a5;
  }

  else
  {
    v7 = a5;
  }

  if ((~*&v7 & 0x7FF0000000000000) != 0)
  {
    switch(a3)
    {
      case 3:
        return std::_Floating_to_chars_general_precision[abi:ne200100]<double>(v5, a2, a4, a5);
      case 2:
        return std::_Floating_to_chars_fixed_precision[abi:ne200100]<double>(v5, a2, a4, a5);
      case 1:
        return std::_Floating_to_chars_scientific_precision[abi:ne200100]<double>(v5, a2, a4, a5);
    }

    return std::_Floating_to_chars_hex_precision[abi:ne200100]<double>(v5, a2, a4, a5);
  }

  else
  {
    if ((*&v7 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      if ((*&v6 & 0x8000000000000000) != 0 && (*&v7 & 0xFFFFFFFFFFFFFLL) == 0x8000000000000)
      {
        v8 = "nan(ind)";
        v9 = 8;
      }

      else
      {
        v8 = "nan";
        if ((*&v7 & 0x8000000000000) != 0)
        {
          v9 = 3;
        }

        else
        {
          v8 = "nan(snan)";
          v9 = 9;
        }
      }
    }

    else
    {
      v8 = "inf";
      v9 = 3;
    }

    if (a2 - v5 >= v9)
    {
      memcpy(v5, v8, v9);
      v5 += v9;
    }

    else
    {
      return a2;
    }
  }

  return v5;
}

BOOL __llvm_libc_common_utils::internal::isalnum(__llvm_libc_common_utils::internal *this)
{
  v1 = this;
  result = 1;
  if ((v1 - 65) > 0x39 || ((1 << (v1 - 65)) & 0x3FFFFFF03FFFFFFLL) == 0)
  {
    return (v1 - 48) < 0xA;
  }

  return result;
}

uint64_t __llvm_libc_common_utils::internal::b36_char_to_int(__llvm_libc_common_utils::internal *this)
{
  if ((this - 49) > 0x49)
  {
    return 0;
  }

  else
  {
    return dword_1922FF2A8[this - 49];
  }
}

char *std::_Floating_to_chars_hex_shortest[abi:ne200100]<float>(char *a1, char *a2, float a3)
{
  v3 = a2;
  if (a3 == 0.0)
  {
    if (a2 - a1 < 4)
    {
      return v3;
    }

    *a1 = 808153136;
    a1 += 4;
    return a1;
  }

  if (LODWORD(a3) >= 0x800000)
  {
    v4 = (LODWORD(a3) >> 23) - 127;
  }

  else
  {
    v4 = -126;
  }

  if (a1 == a2)
  {
    return a1;
  }

  if (LODWORD(a3) < 0x800000)
  {
    v5 = 48;
  }

  else
  {
    v5 = 49;
  }

  *a1 = v5;
  v6 = a1 + 1;
  if ((LODWORD(a3) & 0x7FFFFF) != 0)
  {
    if (v6 != a2)
    {
      v6 = a1 + 2;
      a1[1] = 46;
      v7 = 2 * (LODWORD(a3) & 0x7FFFFF);
      v8 = 20;
      while (v6 != a2)
      {
        *v6++ = std::__itoa::_Charconv_digits[v7 >> v8];
        v7 &= ~(-1 << v8);
        v8 -= 4;
        if (!v7)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
LABEL_14:
    if (a2 - v6 >= 2)
    {
      *v6 = 112;
      if (v4 >= 0)
      {
        v9 = 43;
      }

      else
      {
        v9 = 45;
      }

      if (v4 < 0)
      {
        v10 = -v4;
      }

      else
      {
        v10 = (LODWORD(a3) >> 23) - 127;
      }

      v6[1] = v9;
      v11 = v3 - (v6 + 2);
      if (v11 > 9)
      {
        return std::__itoa::__base_10_u32[abi:ne200100](v6 + 1, v10);
      }

      v12 = (1233 * (32 - __clz(v10 | 1))) >> 12;
      if (v11 >= (((__PAIR64__(v12, v10) - std::__itoa::__pow10_32[v12]) >> 32) + 1))
      {
        return std::__itoa::__base_10_u32[abi:ne200100](v6 + 1, v10);
      }
    }
  }

  return v3;
}

char *std::_Floating_to_chars_hex_shortest[abi:ne200100]<double>(char *a1, char *a2, double a3)
{
  v3 = a2;
  if (a3 == 0.0)
  {
    if (a2 - a1 < 4)
    {
      return v3;
    }

    *a1 = 808153136;
    a1 += 4;
    return a1;
  }

  if (*&a3 >> 52)
  {
    v4 = (*&a3 >> 52) - 1023;
  }

  else
  {
    v4 = -1022;
  }

  if (a1 == a2)
  {
    return a1;
  }

  if (*&a3 >> 52)
  {
    v5 = 49;
  }

  else
  {
    v5 = 48;
  }

  *a1 = v5;
  v6 = a1 + 1;
  v7 = *&a3 & 0xFFFFFFFFFFFFFLL;
  if ((*&a3 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    if (v6 != a2)
    {
      v6 = a1 + 2;
      a1[1] = 46;
      v8 = 48;
      while (v6 != a2)
      {
        *v6++ = std::__itoa::_Charconv_digits[(v7 >> v8)];
        v7 &= ~(-1 << v8);
        v8 -= 4;
        if (!v7)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
LABEL_14:
    if (a2 - v6 >= 2)
    {
      *v6 = 112;
      if (v4 >= 0)
      {
        v9 = 43;
      }

      else
      {
        v9 = 45;
      }

      if (v4 < 0)
      {
        v10 = -v4;
      }

      else
      {
        v10 = (*&a3 >> 52) - 1023;
      }

      v6[1] = v9;
      v11 = v3 - (v6 + 2);
      if (v11 > 9)
      {
        return std::__itoa::__base_10_u32[abi:ne200100](v6 + 1, v10);
      }

      v12 = (1233 * (32 - __clz(v10 | 1))) >> 12;
      if (v11 >= (((__PAIR64__(v12, v10) - std::__itoa::__pow10_32[v12]) >> 32) + 1))
      {
        return std::__itoa::__base_10_u32[abi:ne200100](v6 + 1, v10);
      }
    }
  }

  return v3;
}

char *std::_Floating_to_chars_scientific_precision[abi:ne200100]<float>(std::__1 *a1, char *a2, uint64_t a3, float a4)
{
  v4 = a2;
  if ((a3 & 0x80000000) != 0)
  {
    a3 = 6;
  }

  else if (a3 >= 0x3B9ACA00)
  {
    return v4;
  }

  return std::__d2exp_buffered_n(a1, a2, a3, a4);
}

char *std::_Floating_to_chars_fixed_precision[abi:ne200100]<float>(std::__1 *a1, char *a2, size_t a3, float a4)
{
  v4 = a2;
  if ((a3 & 0x80000000) != 0)
  {
    a3 = 6;
  }

  else if (a3 >= 0x3B9ACA00)
  {
    return v4;
  }

  return std::__d2fixed_buffered_n(a1, a2, a3, a4);
}

char *std::_Floating_to_chars_general_precision[abi:ne200100]<float>(char *a1, char *a2, unsigned int a3, float a4)
{
  v4 = a2;
  v27 = *MEMORY[0x1E69E9840];
  if (a4 == 0.0)
  {
    if (a1 == a2)
    {
      goto LABEL_45;
    }

    *a1 = 48;
    v8 = a1 + 1;
    goto LABEL_44;
  }

  if ((a3 & 0x80000000) != 0)
  {
    a3 = 6;
LABEL_13:
    v7 = (&std::_General_precision_tables<float>::_Special_X_table + 4 * (((a3 - 1) * (a3 + 10)) >> 1));
    goto LABEL_14;
  }

  if (!a3)
  {
    a3 = 1;
    goto LABEL_13;
  }

  v6 = 1000000;
  if (a3 >= 0xF4240)
  {
LABEL_8:
    v7 = &std::_General_precision_tables<float>::_Ordinary_X_table;
    a3 = 39;
    goto LABEL_15;
  }

  if (a3 <= 7)
  {
    goto LABEL_13;
  }

  if (a3 >= 0x28)
  {
    v6 = a3;
    goto LABEL_8;
  }

  v7 = &std::_General_precision_tables<float>::_Ordinary_X_table;
LABEL_14:
  v6 = a3;
LABEL_15:
  v9 = v7;
  if (v7 != &v7[a3 + 5])
  {
    v10 = 4 * a3 + 20;
    v9 = v7;
    while (*v9 < LODWORD(a4))
    {
      ++v9;
      v10 -= 4;
      if (!v10)
      {
        v9 = &v7[a3 + 5];
        break;
      }
    }
  }

  v11 = (v9 - v7) >> 2;
  v13 = v6 > v11 - 5 && v11 - 5 > -5;
  if (v13)
  {
    v14 = v6 - v11 + 4;
    if (v14 >= 37)
    {
      v15 = 37;
    }

    else
    {
      v15 = v14;
    }

    v16 = std::_Floating_to_chars_fixed_precision[abi:ne200100]<float>(__s, &v27, v15, a4);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    if (v6 >= 112)
    {
      v19 = 112;
    }

    else
    {
      v19 = v6;
    }

    LODWORD(v15) = v19 - 1;
    v18 = std::_Floating_to_chars_scientific_precision[abi:ne200100]<float>(__s, &v27, (v19 - 1), a4);
    v16 = memchr(__s, 101, v18 - __s);
    if (!v16)
    {
      v16 = v18;
    }

    v17 = v16;
  }

  if (v15 >= 1)
  {
    do
    {
      v21 = *--v16;
      v20 = v21;
    }

    while (v21 == 48);
    if (v20 != 46)
    {
      ++v16;
    }
  }

  v22 = v16 - __s;
  if (v4 - a1 >= v16 - __s)
  {
    memcpy(a1, __s, v22);
    v8 = &a1[v22];
    if (!v13)
    {
      v25 = v18 - v17;
      if (v4 - v8 >= v25)
      {
        memcpy(v8, v17, v25);
        v4 = &v8[v25];
      }

      goto LABEL_45;
    }

LABEL_44:
    v4 = v8;
  }

LABEL_45:
  v23 = *MEMORY[0x1E69E9840];
  return v4;
}

char *std::_Floating_to_chars_hex_precision[abi:ne200100]<float>(_BYTE *a1, uint64_t a2, int a3, float a4)
{
  v4 = a2;
  if (a3 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = 6;
  }

  v6 = (LODWORD(a4) >> 23) - 127;
  if ((LODWORD(a4) & 0x7FFFFF) != 0)
  {
    v7 = -126;
  }

  else
  {
    v7 = 0;
  }

  if (LODWORD(a4) >> 23)
  {
    v8 = (2 * (LODWORD(a4) & 0x7FFFFF)) | 0x1000000;
  }

  else
  {
    v6 = v7;
    v8 = 2 * (LODWORD(a4) & 0x7FFFFF);
  }

  if (v6 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = -v6;
  }

  if (v6 >= 0)
  {
    v10 = 43;
  }

  else
  {
    v10 = 45;
  }

  if (a2 - a1 >= v5)
  {
    v11 = 2;
    if (v9 >= 0x64)
    {
      v11 = 3;
    }

    if (v9 < 0xA)
    {
      v11 = 1;
    }

    v12 = 3;
    if (v5)
    {
      v12 = 4;
    }

    if (a2 - a1 - v5 >= v11 + v12)
    {
      if (v5 >= 6)
      {
        *a1 = HIBYTE(v8) | 0x30;
      }

      else
      {
        v8 += (1 << (24 - 4 * v5)) & ((2 * v8 - 1) | v8) & (2 * v8);
        *a1 = HIBYTE(v8) | 0x30;
        v14 = a1 + 1;
        if (!v5)
        {
LABEL_35:
          *v14 = 112;
          v14[1] = v10;
          v18 = v4 - (v14 + 2);
          if (v18 > 9)
          {
            return std::__itoa::__base_10_u32[abi:ne200100](v14 + 1, v9);
          }

          v19 = (1233 * (32 - __clz(v9 | 1))) >> 12;
          if (v18 >= (((__PAIR64__(v19, v9) - std::__itoa::__pow10_32[v19]) >> 32) + 1))
          {
            return std::__itoa::__base_10_u32[abi:ne200100](v14 + 1, v9);
          }

          return v4;
        }
      }

      v15 = v8 & 0xFFFFFF;
      a1[1] = 46;
      v14 = a1 + 3;
      a1[2] = std::__itoa::_Charconv_digits[v15 >> 20];
      if (v5 != 1)
      {
        v16 = v5 - 1;
        v17 = 20;
        while (v17)
        {
          v15 = v15 & ~(-1 << v17);
          v17 -= 4;
          *v14++ = std::__itoa::_Charconv_digits[v15 >> v17];
          if (!--v16)
          {
            goto LABEL_35;
          }
        }

        memset(v14, 48, v16);
        v14 += v16;
      }

      goto LABEL_35;
    }
  }

  return v4;
}

char *std::_Floating_to_chars_scientific_precision[abi:ne200100]<double>(std::__1 *a1, char *a2, uint64_t a3, double a4)
{
  v4 = a2;
  if ((a3 & 0x80000000) != 0)
  {
    a3 = 6;
  }

  else if (a3 >= 0x3B9ACA00)
  {
    return v4;
  }

  return std::__d2exp_buffered_n(a1, a2, a3, a4);
}

char *std::_Floating_to_chars_fixed_precision[abi:ne200100]<double>(std::__1 *a1, char *a2, size_t a3, double a4)
{
  v4 = a2;
  if ((a3 & 0x80000000) != 0)
  {
    a3 = 6;
  }

  else if (a3 >= 0x3B9ACA00)
  {
    return v4;
  }

  return std::__d2fixed_buffered_n(a1, a2, a3, a4);
}

char *std::_Floating_to_chars_general_precision[abi:ne200100]<double>(char *a1, char *a2, unsigned int a3, double a4)
{
  v4 = a2;
  v31 = *MEMORY[0x1E69E9840];
  if (a4 == 0.0)
  {
    if (a1 == a2)
    {
      goto LABEL_51;
    }

    *a1 = 48;
    v7 = a1 + 1;
    goto LABEL_50;
  }

  if ((a3 & 0x80000000) != 0)
  {
    a3 = 6;
LABEL_12:
    v8 = (&std::_General_precision_tables<double>::_Special_X_table + 8 * (((a3 - 1) * (a3 + 10)) >> 1));
    v6 = &v8[a3 + 5];
    goto LABEL_13;
  }

  if (!a3)
  {
    a3 = 1;
    goto LABEL_12;
  }

  if (a3 >= 0xF4240)
  {
    v6 = __llvm_libc_common_utils::internal::ClingerConsts<float>::POWERS_OF_TEN_ARRAY;
    a3 = 1000000;
    goto LABEL_21;
  }

  if (a3 <= 0xF)
  {
    goto LABEL_12;
  }

  if (a3 > 0x135)
  {
    v6 = __llvm_libc_common_utils::internal::ClingerConsts<float>::POWERS_OF_TEN_ARRAY;
    goto LABEL_21;
  }

  v8 = std::_General_precision_tables<double>::_Ordinary_X_table;
  v6 = &std::_General_precision_tables<double>::_Ordinary_X_table[a3 + 5];
  if (a3 >= 0x9C)
  {
LABEL_21:
    v8 = std::_General_precision_tables<double>::_Ordinary_X_table;
    v10 = v6 - std::_General_precision_tables<double>::_Ordinary_X_table;
    v6 = std::_General_precision_tables<double>::_Ordinary_X_table;
    do
    {
      v11 = v10 >> 1;
      v12 = &v6[v10 >> 1];
      v14 = *v12;
      v13 = v12 + 1;
      v10 += ~(v10 >> 1);
      if (v14 < *&a4)
      {
        v6 = v13;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
    goto LABEL_26;
  }

LABEL_13:
  if (v8 == v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = v8;
    while (*v9 < *&a4)
    {
      if (++v9 == v6)
      {
        goto LABEL_26;
      }
    }

    v6 = v9;
  }

LABEL_26:
  v15 = (v6 - v8) >> 3;
  v17 = a3 > v15 - 5 && v15 - 5 > -5;
  if (v17)
  {
    v18 = a3 - v15 + 4;
    if (v18 >= 66)
    {
      v19 = 66;
    }

    else
    {
      v19 = v18;
    }

    v20 = std::_Floating_to_chars_fixed_precision[abi:ne200100]<double>(__s, &v31, v19, a4);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    if (a3 >= 767)
    {
      v23 = 767;
    }

    else
    {
      v23 = a3;
    }

    LODWORD(v19) = v23 - 1;
    v22 = std::_Floating_to_chars_scientific_precision[abi:ne200100]<double>(__s, &v31, (v23 - 1), a4);
    v20 = memchr(__s, 101, v22 - __s);
    if (!v20)
    {
      v20 = v22;
    }

    v21 = v20;
  }

  if (v19 >= 1)
  {
    do
    {
      v25 = *--v20;
      v24 = v25;
    }

    while (v25 == 48);
    if (v24 != 46)
    {
      ++v20;
    }
  }

  v26 = v20 - __s;
  if (v4 - a1 >= v20 - __s)
  {
    memcpy(a1, __s, v26);
    v7 = &a1[v26];
    if (!v17)
    {
      v29 = v22 - v21;
      if (v4 - v7 >= v29)
      {
        memcpy(v7, v21, v29);
        v4 = &v7[v29];
      }

      goto LABEL_51;
    }

LABEL_50:
    v4 = v7;
  }

LABEL_51:
  v27 = *MEMORY[0x1E69E9840];
  return v4;
}

char *std::_Floating_to_chars_hex_precision[abi:ne200100]<double>(_BYTE *a1, uint64_t a2, int a3, double a4)
{
  v4 = a2;
  if (a3 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = 13;
  }

  v6 = (*&a4 >> 52) - 1023;
  if ((*&a4 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v7 = -1022;
  }

  else
  {
    v7 = 0;
  }

  if (*&a4 >> 52)
  {
    v8 = *&a4 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  }

  else
  {
    v6 = v7;
    v8 = *&a4 & 0xFFFFFFFFFFFFFLL;
  }

  if (v6 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = -v6;
  }

  if (v6 >= 0)
  {
    v10 = 43;
  }

  else
  {
    v10 = 45;
  }

  v11 = 1;
  v12 = 2;
  v13 = 3;
  if (v9 >= 0x3E8)
  {
    v13 = 4;
  }

  if (v9 >= 0x64)
  {
    v12 = v13;
  }

  if (v9 >= 0xA)
  {
    v11 = v12;
  }

  if (a2 - a1 >= v5)
  {
    v14 = 3;
    if (v5)
    {
      v14 = 4;
    }

    if (a2 - a1 - v5 >= v11 + v14)
    {
      if (v5 >= 0xD)
      {
        *a1 = (v8 >> 52) | 0x30;
      }

      else
      {
        v8 += (1 << (52 - 4 * v5)) & ((2 * v8 - 1) | v8) & (2 * v8);
        *a1 = (v8 >> 52) | 0x30;
        v16 = a1 + 1;
        if (!v5)
        {
LABEL_37:
          *v16 = 112;
          v16[1] = v10;
          v22 = v4 - (v16 + 2);
          if (v22 > 9)
          {
            return std::__itoa::__base_10_u32[abi:ne200100](v16 + 1, v9);
          }

          v23 = (1233 * (32 - __clz(v9 | 1))) >> 12;
          if (v22 >= (((__PAIR64__(v23, v9) - std::__itoa::__pow10_32[v23]) >> 32) + 1))
          {
            return std::__itoa::__base_10_u32[abi:ne200100](v16 + 1, v9);
          }

          return v4;
        }
      }

      a1[1] = 46;
      v16 = a1 + 3;
      a1[2] = std::__itoa::_Charconv_digits[HIWORD(v8) & 0xF];
      if (v5 != 1)
      {
        v17 = 0;
        v18 = v8 & 0xFFFFFFFFFFFFFLL;
        v19 = 48;
        while (v19)
        {
          v18 &= ~(-1 << v19);
          v19 -= 4;
          v16[v17++] = std::__itoa::_Charconv_digits[(v18 >> (v19 & 0xFC))];
          if (v5 - 1 == v17)
          {
            v16 += v17;
            goto LABEL_37;
          }
        }

        v20 = ~v17 + v5;
        v21 = &v16[v17];
        memset(&v16[v17], 48, v20);
        v16 = &v21[v20];
      }

      goto LABEL_37;
    }
  }

  return v4;
}

uint64_t std::__from_chars_floating_point_inf<float>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a2 - a3 > 1 && (v9 = result, result = __tolower(*a3), result == 110) && (result = __tolower(a3[1]), result == 102))
  {
    v10 = a3 + 2;
    if (a2 - (a3 + 2) >= 5)
    {
      result = __tolower(*v10);
      if (result == 105)
      {
        result = __tolower(a3[3]);
        if (result == 110)
        {
          result = __tolower(a3[4]);
          if (result == 105)
          {
            result = __tolower(a3[5]);
            if (result == 116)
            {
              result = __tolower(a3[6]);
              if (result == 121)
              {
                v10 = a3 + 7;
              }
            }
          }
        }
      }
    }

    if (a4)
    {
      v11 = -8388608;
    }

    else
    {
      v11 = 2139095040;
    }

    *a5 = v11;
    *(a5 + 8) = &v10[-v9];
    *(a5 + 16) = 0;
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 22;
  }

  return result;
}

uint64_t std::__from_chars_floating_point_nan<float>@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a2 - a3 > 1 && (v9 = result, result = __tolower(*a3), result == 97) && (result = __tolower(a3[1]), result == 110))
  {
    v10 = a3 + 2;
    if (a2 - v10 >= 2 && *v10 == 40)
    {
      v11 = 1;
      v12 = MEMORY[0x1E69E9830];
      while (1)
      {
        while (1)
        {
          v13 = v10[v11];
          if (v13 != 95)
          {
            break;
          }

          if (&v10[++v11] == a2)
          {
            goto LABEL_21;
          }
        }

        if (v13 == 41)
        {
          break;
        }

        if (v13 < 0)
        {
          result = __maskrune(v13, 0x500uLL);
        }

        else
        {
          result = *(v12 + 4 * v13 + 60) & 0x500;
        }

        ++v11;
        if (result)
        {
          v14 = &v10[v11] == a2;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          goto LABEL_21;
        }
      }

      v10 += v11 + 1;
    }

LABEL_21:
    if (a4)
    {
      v15 = -4194304;
    }

    else
    {
      v15 = 2143289344;
    }

    *a5 = v15;
    *(a5 + 8) = &v10[-v9];
    *(a5 + 16) = 0;
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 22;
  }

  return result;
}

const char *std::__from_chars_floating_point_hex<float>@<X0>(std::__1 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v8 = (a2 - a1);
  std::__parse_fractional_hex_constant<unsigned int>(a1, a2 - a1, a3 - a1, &v28);
  if (v32 != 1)
  {
    result = 0;
    v16 = 22;
    v17 = 0.0;
    goto LABEL_42;
  }

  result = std::__parse_exponent(a1, v8, v28, 112);
  v11 = v29;
  if (v29)
  {
    v12 = v30 + v10;
    if (v12 <= -255)
    {
      v12 = -255;
    }

    if (v12 >= 255)
    {
      LODWORD(v12) = 255;
    }

    v13 = __clz(v29);
    v14 = v12 - v13;
    if ((v12 - v13) > 96)
    {
      v11 = 0;
      v15 = 0xFF00000000;
LABEL_9:
      v16 = 34;
LABEL_30:
      v18 = (v15 >> 9) & 0x7F800000;
      goto LABEL_31;
    }

    v19 = v31;
    if (v14 > -158)
    {
      v20 = (v14 + 158);
      v21 = 8;
    }

    else
    {
      if (v14 < 0xFFFFFF4B)
      {
        v15 = 0;
        v11 = 0;
        goto LABEL_9;
      }

      v20 = 0;
      v21 = -149 - v14;
    }

    v22 = v29 << v13;
    v23 = 1 << (v21 - 1);
    if (((v23 - 1) & v22) != 0)
    {
      v19 = 1;
    }

    v11 = (v22 >> v21) & 0x7FFFFF;
    if (v21 >= 0x20)
    {
      v11 = 0;
    }

    if (v23 & v22) != 0 && ((v11 | v19))
    {
      if (v11 == 0x7FFFFF)
      {
        v11 = 0;
        v20 = (v20 + 1);
        v24 = v20 == 255;
        goto LABEL_27;
      }

      ++v11;
    }

    v24 = v20 == 0;
LABEL_27:
    v15 = v20 << 32;
    if (v24)
    {
      v16 = 34;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_30;
  }

  LODWORD(v18) = 0;
  v16 = 0;
LABEL_31:
  LODWORD(v25) = v11 | v18;
  if (v25 != 0.0 && v16 == 34 && v18 == 0)
  {
    v16 = 0;
  }

  v17 = v25;
  if (a4)
  {
    v17 = -v25;
  }

LABEL_42:
  *a5 = v17;
  *(a5 + 8) = result;
  *(a5 + 16) = v16;
  return result;
}

unint64_t std::__from_chars_floating_point_decimal<float>@<X0>(std::__1 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v12 = (a2 - a1);
  result = std::__parse_fractional_decimal_constant<unsigned int>(a1, a2 - a1, a4 - a1, &v25);
  v14 = 0.0;
  if (v29 != 1)
  {
    goto LABEL_10;
  }

  v15 = v25;
  if (a3 != 2)
  {
    result = std::__parse_exponent(a1, v12, v25, 101);
    v15 = result;
    if (a3 != 1 || (v17 & 0x100000000) != 0)
    {
      v16 = v27 + v17;
      if (v16 <= -255)
      {
        v16 = -255;
      }

      if (v16 >= 255)
      {
        v16 = 255;
      }

      goto LABEL_15;
    }

LABEL_10:
    v15 = 0;
    v18 = 22;
    goto LABEL_33;
  }

  LODWORD(v16) = v27;
  if (v27 <= -255)
  {
    LODWORD(v16) = -255;
  }

  if (v16 >= 255)
  {
    v16 = 255;
  }

  else
  {
    v16 = v16;
  }

LABEL_15:
  LODWORD(v19) = v26;
  if (v26)
  {
    result = __llvm_libc_common_utils::internal::decimal_exp_to_float<float>(v26 | (v16 << 32), v28, 2, a4, a2 - a4);
    if (v20 == 34)
    {
      v18 = 34;
    }

    else
    {
      v18 = 0;
    }

    v21 = result & 0x7FFFFF;
    v19 = (result >> 9) & 0x7F800000;
  }

  else
  {
    v21 = 0;
    v18 = 0;
  }

  LODWORD(v22) = v21 | v19;
  if (v22 != 0.0 && v18 == 34 && v19 == 0)
  {
    v18 = 0;
  }

  if (a5)
  {
    v14 = -v22;
  }

  else
  {
    v14 = v22;
  }

LABEL_33:
  *a6 = v14;
  *(a6 + 8) = v15;
  *(a6 + 16) = v18;
  return result;
}

uint64_t std::__parse_fractional_hex_constant<unsigned int>@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  *(a4 + 16) = 0;
  *(a4 + 8) = 0;
  if (a3 >= a2)
  {
    v12 = 0;
  }

  else
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = MEMORY[0x1E69E9830];
    while (1)
    {
      result = *(v7 + v4);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if ((*(v13 + 4 * result + 60) & 0x10000) != 0)
      {
        v14 = result - 48;
        result = __tolower(result);
        if ((result - 97) >= 6)
        {
          v15 = v14;
        }

        else
        {
          v15 = result - 87;
        }

        if (v12 > 0xFFFFFFE)
        {
          if (v15)
          {
            v9 = 1;
          }

          if ((v11 & 1) == 0)
          {
            v8 += 4;
          }
        }

        else
        {
          v12 = v15 + 16 * v12;
          if (v11)
          {
            v8 -= 4;
          }
        }

        v10 = 1;
      }

      else
      {
        if (v11 & 1 | (result != 46))
        {
          break;
        }

        v11 = 1;
      }

      if (a2 == ++v4)
      {
        v4 = a2;
        break;
      }
    }

    *(a4 + 17) = v10;
    *(a4 + 16) = v9;
    *(a4 + 12) = v8;
  }

  *(a4 + 8) = v12;
  *a4 = v4;
  return result;
}

uint64_t std::__parse_fractional_decimal_constant<unsigned int>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0;
  *(a4 + 8) = 0;
  if (a3 >= a2)
  {
    v8 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(result + a3);
      if ((v9 & 0x80000000) != 0)
      {
        break;
      }

      if ((*(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x400) != 0)
      {
        if (v8 > 0x19999998)
        {
          if (v9 != 48)
          {
            v5 = 1;
          }

          v6 = 1;
          v4 += (v7 & 1) == 0;
        }

        else
        {
          v8 = v9 - 48 + 10 * v8;
          v4 -= v7 & 1;
          v6 = 1;
        }
      }

      else
      {
        if (v7 & 1 | (v9 != 46))
        {
          break;
        }

        v7 = 1;
      }

      if (a2 == ++a3)
      {
        a3 = a2;
        break;
      }
    }

    *(a4 + 17) = v6;
    *(a4 + 16) = v5;
    *(a4 + 12) = v4;
  }

  *(a4 + 8) = v8;
  *a4 = a3;
  return result;
}

unint64_t __llvm_libc_common_utils::internal::decimal_exp_to_float<float>(unint64_t a1, char a2, int a3, char *a4, unint64_t a5)
{
  v5 = HIDWORD(a1);
  if (SHIDWORD(a1) > 39)
  {
    return 0xFF00000000;
  }

  if (SHIDWORD(a1) < -55)
  {
    return 0;
  }

  if ((a2 & 1) == 0)
  {
    if (!(a1 >> 23))
    {
      v16 = a1;
      if (SHIDWORD(a1) < 1)
      {
        v18 = a1;
        if (v5)
        {
          v18 = 0.0;
        }

        if ((a1 & 0x8000000000000000) == 0)
        {
          LODWORD(v5) = 0;
          goto LABEL_29;
        }

        if (SHIDWORD(a1) >= -10)
        {
          v17 = v16 / __llvm_libc_common_utils::internal::ClingerConsts<float>::POWERS_OF_TEN_ARRAY[-HIDWORD(a1)];
          goto LABEL_28;
        }
      }

      else if (a1 >> 33 <= 8)
      {
        if (v5 >= 0xB)
        {
          v16 = __llvm_libc_common_utils::internal::ClingerConsts<float>::POWERS_OF_TEN_ARRAY[HIDWORD(a1) - 10] * v16;
          LODWORD(v5) = 10;
        }

        if (v16 <= 16777000.0)
        {
          v17 = v16 * __llvm_libc_common_utils::internal::ClingerConsts<float>::POWERS_OF_TEN_ARRAY[v5];
LABEL_28:
          v18 = v17;
LABEL_29:
          if (a3 != 2)
          {
            v21 = __llvm_libc_common_utils::internal::ClingerConsts<float>::POWERS_OF_TEN_ARRAY[v5];
            v22 = -(v21 * -v16);
            if (v18 != v22 && (a3 == 0) == v18 < v22)
            {
              v18 = -(v16 * v21);
            }
          }

          LODWORD(v23) = LODWORD(v18) & 0x7FFFFF;
          if ((LODWORD(v18) & 0x7F800000) != 0)
          {
            v23 = LODWORD(v18) & 0x7FFFFF | 0x800000u;
          }

          else
          {
            v23 = v23;
          }

          return (v23 | ((LODWORD(v18) >> 23) << 32)) & 0xFFFFFFFF00 | v23;
        }
      }
    }

    v19 = __llvm_libc_common_utils::internal::eisel_lemire<float>(a1, a3);
    if (v20)
    {
      return v19;
    }

    return __llvm_libc_common_utils::internal::simple_decimal_conversion<float>(a4, a5, a3);
  }

  v12 = __llvm_libc_common_utils::internal::eisel_lemire<float>(a1, a3);
  if ((v13 & 1) == 0)
  {
    return __llvm_libc_common_utils::internal::simple_decimal_conversion<float>(a4, a5, a3);
  }

  v6 = v12;
  v14 = __llvm_libc_common_utils::internal::eisel_lemire<float>((a1 + 1) | a1 & 0xFFFFFFFF00000000, a3);
  if ((v15 & 1) == 0 || v6 != v14)
  {
    return __llvm_libc_common_utils::internal::simple_decimal_conversion<float>(a4, a5, a3);
  }

  return v6;
}

uint64_t __llvm_libc_common_utils::internal::eisel_lemire<float>(uint64_t a1, int a2)
{
  if ((HIDWORD(a1) - 348) < 0xFFFFFD48)
  {
    goto LABEL_33;
  }

  v2 = __clz(a1);
  v3 = (a1 << v2);
  v4 = (&__llvm_libc_common_utils::internal::DETAILED_POWERS_OF_TEN + 16 * (HIDWORD(a1) + 348));
  v5 = v4[1];
  v6 = v5 * v3;
  v7 = (v5 * (a1 << v2)) >> 64;
  v8 = ~v3;
  if ((~v7 & 0x3F) == 0 && v6 > v8)
  {
    v19 = *v4;
    v20 = v19 * v3;
    v21 = (v19 * (a1 << v2)) >> 64;
    v22 = __CFADD__(v21, v6);
    v6 += v21;
    if (v22)
    {
      ++v7;
    }

    if (v20 > v8 && (v7 & 0x3F) == 0x3F && v6 == -1)
    {
      goto LABEL_33;
    }
  }

  v10 = v7 >> ((v7 >> 31) + 6);
  if (a2)
  {
    if (a2 == 2)
    {
      if (v6)
      {
        v11 = 0;
      }

      else
      {
        v11 = (v7 & 0x3F) == 0;
      }

      if (v11 && (v10 & 3) == 1)
      {
LABEL_33:
        v18 = 0;
        v17 = 0;
        return v17 | v18;
      }

      LODWORD(v10) = (v10 & 1) + v10;
    }
  }

  else if (v6 | v7 & 0x3F)
  {
    LODWORD(v10) = v10 + 2;
  }

  v13 = ((217706 * SHIDWORD(a1)) >> 16) - v2 + ((v7 >> 31) ^ 0xFFFFFFFE);
  if ((v10 & 0xFE000000) != 0)
  {
    ++v13;
  }

  if ((v13 - 95) < 0xFFFFFF02)
  {
    goto LABEL_33;
  }

  v14 = (v13 + 160);
  if (v10 >> 25)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v16 = v10 >> v15;
  v17 = v16 & 0x7FFFFF00 | (v14 << 32);
  v18 = v16;
  return v17 | v18;
}

uint64_t __llvm_libc_common_utils::internal::simple_decimal_conversion<float>(char *a1, unint64_t a2, int a3)
{
  v79 = *MEMORY[0x1E69E9840];
  __llvm_libc_common_utils::internal::HighPrecisionDecimal::HighPrecisionDecimal(&v75, a1, a2);
  if (!v75)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_141;
  }

  v4 = v76;
  if (v76 < 1)
  {
    v5 = 0;
    if (v76 < 0)
    {
      if (((217706 * -v76) >> 16) > 150)
      {
        v7 = 0;
        goto LABEL_141;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    if (((217706 * (v76 - 1)) >> 16) > 127)
    {
LABEL_25:
      v7 = 0;
      v5 = 255;
      goto LABEL_141;
    }

    LODWORD(v5) = 0;
    do
    {
      if (v4 <= 0x12)
      {
        v6 = __llvm_libc_common_utils::internal::POWERS_OF_TWO[v4];
      }

      else
      {
        v6 = 60;
      }

      LODWORD(v5) = v6 + v5;
      __llvm_libc_common_utils::internal::HighPrecisionDecimal::shift(&v75, -v6);
      v4 = v76;
    }

    while (v76 > 0);
  }

  if ((v4 & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  while (!v4 && v78[0] < 5u)
  {
    v8 = 1;
    while (1)
    {
      LODWORD(v5) = v5 - v8;
      __llvm_libc_common_utils::internal::HighPrecisionDecimal::shift(&v75, v8);
      v4 = v76;
      if ((v76 & 0x80000000) == 0)
      {
        break;
      }

LABEL_19:
      if (v4 >= 0xFFFFFFEE)
      {
        v8 = __llvm_libc_common_utils::internal::POWERS_OF_TWO[-v4];
      }

      else
      {
        v8 = 60;
      }
    }
  }

  __llvm_libc_common_utils::internal::HighPrecisionDecimal::left_shift(&v75, 1u);
  if (v5 > 128)
  {
    goto LABEL_25;
  }

  for (i = 23; i > 4; i -= 4)
  {
    __llvm_libc_common_utils::internal::HighPrecisionDecimal::left_shift(&v75, 4u);
  }

  __llvm_libc_common_utils::internal::HighPrecisionDecimal::left_shift(&v75, 3u);
  v10 = v76;
  v11 = 0;
  v12 = v76 - 1;
  if (v76 < 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = v75;
    if (v75 >= v12)
    {
      v14 = v76 - 1;
    }

    else
    {
      v14 = v75;
    }

    v15 = v78;
    v16 = v76;
    while (v13)
    {
      v17 = *v15++;
      v11 = v17 + 10 * v11;
      --v13;
      if (!--v16)
      {
        ++v14;
        break;
      }
    }
  }

  v18 = v76 - v14;
  if (v76 > v14)
  {
    v19.i64[1] = 0x100000001;
    v19.i64[0] = v11 | 0x100000000;
    v20 = vdupq_n_s32(v18 - 1);
    v21 = 4;
    v22.i64[0] = 0xA0000000ALL;
    v22.i64[1] = 0xA0000000ALL;
    do
    {
      v23 = v19;
      v19 = vmulq_s32(v19, v22);
      v21 -= 4;
    }

    while (((v18 + 3) & 0xFFFFFFFC) + v21 != 4);
    v24 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v21), xmmword_1922FB370), v20), v23, v19);
    *v24.i8 = vmul_s32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
    v11 = v24.i32[0] * v24.i32[1];
  }

  v25 = v5 + 126;
  if (v76 < 0 || v75 <= v76)
  {
    goto LABEL_52;
  }

  v26 = v78[v76];
  if (v26 != 5 || v76 + 1 != v75)
  {
    v28 = v26 > 4;
    goto LABEL_53;
  }

  if (v77)
  {
    v28 = 1;
    goto LABEL_53;
  }

  if (!v76)
  {
LABEL_52:
    v28 = 0;
  }

  else
  {
    v28 = v78[v12] & 1;
  }

LABEL_53:
  if (v5 <= -126)
  {
    v29 = v75;
    if (v5 != -126)
    {
      while (1)
      {
        v30 = 0;
        v31 = 0;
        do
        {
          v32 = v30;
          if (v30 >= v29)
          {
            v33 = 0;
          }

          else
          {
            v33 = v78[v30];
          }

          v31 = v33 + 10 * v31;
          v30 = v32 + 1;
        }

        while (v31 < 2);
        v34 = v29 - v30;
        if (v29 <= v30)
        {
          break;
        }

        v35 = ~v32 + v29;
        v36 = v78;
        do
        {
          v37 = v36[v30];
          *v36++ = v31 >> 1;
          if (v31)
          {
            v38 = 10;
          }

          else
          {
            v38 = 0;
          }

          v31 = v38 + v37;
          --v35;
        }

        while (v35);
        if (v31)
        {
          goto LABEL_71;
        }

        v29 -= v30;
        if (!v29)
        {
          v29 = 0;
          goto LABEL_69;
        }

LABEL_77:
        v10 = v10 - v30 + 1;
        if (v78[v29 - 1])
        {
          goto LABEL_81;
        }

        v40 = v29 - 2;
        while (--v29)
        {
          if (v78[v40--])
          {
            goto LABEL_81;
          }
        }

LABEL_69:
        v10 = 0;
LABEL_81:
        if (__CFADD__(v25++, 1))
        {
          goto LABEL_83;
        }
      }

      v34 = 0;
LABEL_71:
      v29 = v34;
      do
      {
        if (v29 > 0x31F)
        {
          if (v31 >= 2)
          {
            v77 = 1;
          }
        }

        else
        {
          v78[v29++] = v31 >> 1;
        }

        v39 = v31 & 1;
        v31 = (2 * v39) | (8 * v39);
      }

      while (v39);
      goto LABEL_77;
    }

LABEL_83:
    v43 = 0;
    v44 = 0;
    do
    {
      if (v43 >= v29)
      {
        v45 = 0;
      }

      else
      {
        v45 = v78[v43];
      }

      v44 = v45 + 10 * v44;
      ++v43;
    }

    while (v44 < 2);
    v46 = v29 - v43;
    if (v29 <= v43)
    {
      v46 = 0;
    }

    else
    {
      v47 = v78;
      v48 = v29 - v43;
      do
      {
        v49 = v47[v43];
        *v47++ = v44 >> 1;
        if (v44)
        {
          v50 = 10;
        }

        else
        {
          v50 = 0;
        }

        v44 = v50 + v49;
        --v48;
      }

      while (v48);
      if (!v44)
      {
        if (v29 == v43)
        {
          goto LABEL_96;
        }

        goto LABEL_104;
      }
    }

    do
    {
      if (v46 > 0x31F)
      {
        if (v44 >= 2)
        {
          v77 = 1;
        }
      }

      else
      {
        v78[v46++] = v44 >> 1;
      }

      v52 = v44 & 1;
      v44 = (2 * v52) | (8 * v52);
    }

    while (v52);
LABEL_104:
    if (v78[v46 - 1])
    {
LABEL_108:
      v55 = v10 - v43;
      v56 = v10 - v43 + 1;
      if (v56 < 1)
      {
        v51 = 0;
        v57 = 0;
      }

      else
      {
        v51 = 0;
        if (v46 >= v55)
        {
          v57 = v10 - v43;
        }

        else
        {
          v57 = v46;
        }

        v58 = v46;
        v59 = v55 + 1;
        v60 = v78;
        while (v58)
        {
          v61 = *v60++;
          v51 = v61 + 10 * v51;
          --v58;
          if (!--v59)
          {
            ++v57;
            break;
          }
        }
      }

      if (v57 < v56)
      {
        v62 = v10 - v57 - v43;
        v63.i64[1] = 0x100000001;
        v63.i64[0] = v51 | 0x100000000;
        v64 = vdupq_n_s32(v62);
        v65 = (v62 + 4) & 0xFFFFFFFC;
        v66 = 4;
        v67.i64[0] = 0xA0000000ALL;
        v67.i64[1] = 0xA0000000ALL;
        do
        {
          v68 = v63;
          v63 = vmulq_s32(v63, v67);
          v66 -= 4;
        }

        while (v65 + v66 != 4);
        v69 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v66), xmmword_1922FB370), v64), v68, v63);
        *v69.i8 = vmul_s32(*v69.i8, *&vextq_s8(v69, v69, 8uLL));
        v51 = v69.i32[0] * v69.i32[1];
      }

      v70 = 0;
      if (v56 < 0 || v46 <= v56)
      {
        goto LABEL_131;
      }

      if (a3)
      {
        if (a3 == 1)
        {
          goto LABEL_125;
        }

        v71 = v78[v56];
        if (v71 != 5 || v10 - v46 + 2 != v43)
        {
          v70 = v71 > 4;
          goto LABEL_131;
        }

        if ((v77 & 1) == 0)
        {
          if (v10 + 1 != v43)
          {
            v70 = v78[v55] & 1;
            goto LABEL_131;
          }

          goto LABEL_125;
        }
      }

      v70 = 1;
      goto LABEL_131;
    }

    v53 = v46 - 2;
    while (--v46)
    {
      if (v78[v53--])
      {
        goto LABEL_108;
      }
    }

LABEL_96:
    v51 = 0;
LABEL_125:
    v70 = 0;
LABEL_131:
    LODWORD(v7) = v51 + v70;
    v25 = ((v51 + v70) & 0xFF800000) != 0;
    goto LABEL_132;
  }

  LODWORD(v7) = v11 + v28;
LABEL_132:
  if (v25 > 253)
  {
    v72 = 255;
  }

  else
  {
    v72 = v25 + 1;
  }

  if (v7 == 0x1000000)
  {
    v5 = v72;
  }

  else
  {
    v5 = v25;
  }

  if (v7 == 0x1000000)
  {
    v7 = 0x800000;
  }

  else
  {
    v7 = v7;
  }

LABEL_141:
  v73 = *MEMORY[0x1E69E9840];
  return v7 | (v5 << 32);
}

unint64_t __llvm_libc_common_utils::internal::HighPrecisionDecimal::shift(unint64_t this, int a2)
{
  if (!a2)
  {
    return this;
  }

  v2 = a2;
  v3 = this;
  if (a2 > 0)
  {
    if (a2 >= 5)
    {
      do
      {
        __llvm_libc_common_utils::internal::HighPrecisionDecimal::left_shift(v3, 4u);
        v2 -= 4;
      }

      while (v2 > 4);
    }

    return __llvm_libc_common_utils::internal::HighPrecisionDecimal::left_shift(v3, v2);
  }

  v4 = *this;
  if (a2 <= 0xFFFFFFFB)
  {
    v5 = this + 9;
    v6 = *(this + 4);
    while (1)
    {
      v7 = 0;
      v8 = 0;
      v9 = v2;
      do
      {
        v10 = v7;
        if (v7 >= v4)
        {
          v11 = 0;
        }

        else
        {
          v11 = *(v5 + v7);
        }

        v8 = v11 + 10 * v8;
        v7 = v10 + 1;
      }

      while (v8 < 0x10);
      v12 = v4 - v7;
      if (v4 <= v7)
      {
        break;
      }

      v13 = ~v10 + v4;
      this = v3 + 9;
      do
      {
        v14 = *(this + v7);
        *this++ = v8 >> 4;
        v8 = v14 + 10 * (v8 & 0xF);
        --v13;
      }

      while (v13);
      if (v8)
      {
        goto LABEL_23;
      }

      v4 -= v7;
      if (!v4)
      {
        v4 = 0;
        goto LABEL_21;
      }

LABEL_29:
      v6 = v6 - v7 + 1;
      if (*(v5 + v4 - 1))
      {
        goto LABEL_33;
      }

      v16 = v4 - 2;
      while (--v4)
      {
        if (*(v5 + v16--))
        {
          goto LABEL_33;
        }
      }

LABEL_21:
      v6 = 0;
LABEL_33:
      v2 += 4;
      if (v9 >= 0xFFFFFFF8)
      {
        *(v3 + 4) = v6;
        goto LABEL_35;
      }
    }

    v12 = 0;
LABEL_23:
    v4 = v12;
    do
    {
      if (v4 > 0x31F)
      {
        if (v8 >= 0x10)
        {
          *(v3 + 8) = 1;
        }
      }

      else
      {
        *(v5 + v4++) = v8 >> 4;
      }

      v15 = v8 & 0xF;
      v8 = 10 * v15;
    }

    while (v15);
    goto LABEL_29;
  }

LABEL_35:
  v18 = 0;
  v19 = 0;
  v20 = -v2;
  v21 = v3 + 9;
  do
  {
    if (v18 >= v4)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v21 + v18);
    }

    v19 = v22 + 10 * v19;
    ++v18;
  }

  while (!(v19 >> v20));
  v23 = ~(-1 << v20);
  *(v3 + 4) = *(v3 + 4) - v18 + 1;
  v24 = v4 - v18;
  if (v4 <= v18)
  {
    if (!v19)
    {
      *v3 = 0;
LABEL_59:
      *(v3 + 4) = 0;
      return this;
    }

    v24 = 0;
    goto LABEL_48;
  }

  v25 = (v3 + 9);
  v26 = v4 - v18;
  do
  {
    this = v25[v18];
    *v25++ = v19 >> v20;
    v19 = this + 10 * (v19 & v23);
    --v26;
  }

  while (v26);
  if (v19)
  {
    do
    {
LABEL_48:
      v27 = v19 >> v20;
      if (v24 > 0x31F)
      {
        if (v27)
        {
          *(v3 + 8) = 1;
        }
      }

      else
      {
        *(v21 + v24++) = v27;
      }

      v28 = v19 & v23;
      v19 = 10 * (v19 & v23);
    }

    while (v28);
    *v3 = v24;
    goto LABEL_54;
  }

  *v3 = v24;
  if (v4 == v18)
  {
    goto LABEL_59;
  }

LABEL_54:
  v29 = v24 - 1;
  while (!*(v21 + v29))
  {
    *v3 = v29--;
    if (v29 == -1)
    {
      goto LABEL_59;
    }
  }

  return this;
}

__llvm_libc_common_utils::internal::HighPrecisionDecimal *__llvm_libc_common_utils::internal::HighPrecisionDecimal::HighPrecisionDecimal(__llvm_libc_common_utils::internal::HighPrecisionDecimal *this, const char *a2, unint64_t a3)
{
  *(this + 8) = 0;
  *this = 0;
  if (!a3)
  {
    goto LABEL_74;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = this + 9;
  while (2)
  {
    v12 = v10;
    while (1)
    {
      v13 = a2[v12];
      if ((v13 - 48) >= 0xA)
      {
        if (v13 != 46)
        {
          v14 = 1;
          if (v8)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }

        goto LABEL_13;
      }

      if (v13 != 48)
      {
        break;
      }

      if (v6)
      {
        ++v9;
        if (v6 > 0x31F)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      *(this + 1) = --v7;
      if (++v12 >= a3)
      {
        v14 = 0;
        if (a3 <= v10 + 1)
        {
          v12 = v10 + 1;
        }

        else
        {
          v12 = a3;
        }

        if (v8)
        {
          goto LABEL_24;
        }

        goto LABEL_27;
      }
    }

    if (a2[v12] != 46)
    {
      ++v9;
      if (v6 >= 0x320)
      {
        *(this + 8) = 1;
        goto LABEL_17;
      }

LABEL_16:
      v11[v6++] = __llvm_libc_common_utils::internal::b36_char_to_int(v13);
      *this = v6;
      goto LABEL_17;
    }

LABEL_13:
    if (v8)
    {
      goto LABEL_70;
    }

    *(this + 1) = v9;
    v8 = 1;
    v7 = v9;
LABEL_17:
    v10 = v12 + 1;
    if (v12 + 1 < a3)
    {
      continue;
    }

    break;
  }

  v14 = 0;
  ++v12;
  if (v8)
  {
LABEL_24:
    v9 = v7;
    if (!v14)
    {
      goto LABEL_70;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(this + 1) = v9;
  if ((v14 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_28:
  if ((a2[v12] | 0x20) != 0x65)
  {
    goto LABEL_70;
  }

  v15 = &a2[v12 + 1];
  if ((*v15 - 48) >= 0xA)
  {
    v16 = *v15;
    if (v16 != 45 && v16 != 43)
    {
      goto LABEL_70;
    }
  }

  v17 = a3 - (v12 + 1);
  if (v17)
  {
    v18 = 0;
    while (1)
    {
      v19 = v15[v18];
      if ((v19 - 9) >= 5 && v19 != 32)
      {
        break;
      }

      if (v17 == ++v18)
      {
        v19 = a2[a3];
        v18 = a3 - (v12 + 1);
        break;
      }
    }

    if ((v19 == 45 || v19 == 43) && (++v18, v19 != 43))
    {
      v21 = 0;
      v20 = 0x80000000;
    }

    else
    {
      v20 = 0x7FFFFFFF;
      v21 = 1;
    }

    if (v18 >= v17)
    {
      v22 = 0;
    }

    else
    {
      v35 = v21;
      v22 = 0;
      v23 = 0;
      v24 = ~v18 + a3 - v12;
      v25 = &a2[v12 + 1 + v18];
      do
      {
        v27 = *v25++;
        v26 = v27;
        if (!__llvm_libc_common_utils::internal::isalnum(v27))
        {
          break;
        }

        v28 = __llvm_libc_common_utils::internal::b36_char_to_int(v26);
        if (v28 > 9)
        {
          break;
        }

        if (v22 == v20)
        {
          v23 = 34;
          v22 = v20;
        }

        else
        {
          v29 = 10 * v22;
          if (v22 > 0xCCCCCCC)
          {
            v29 = v20;
          }

          v31 = v29 > v20 - v28;
          v30 = v28 + v29;
          if (v31)
          {
            v30 = v20;
            v31 = 1;
          }

          else
          {
            v31 = v22 > 0xCCCCCCC;
          }

          if (v31)
          {
            v23 = 34;
          }

          v22 = v30;
        }

        --v24;
      }

      while (v24);
      v21 = v35;
      if (v23 == 34)
      {
        goto LABEL_65;
      }
    }

    if (v21)
    {
      v20 = v22;
    }

    else
    {
      v20 = -v22;
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_65:
  v32 = v9 + v20;
  if (v32 <= -1073741824)
  {
    v32 = -1073741824;
  }

  if (v32 >= 0x40000000)
  {
    LODWORD(v32) = 0x40000000;
  }

  *(this + 1) = v32;
LABEL_70:
  if (!v6)
  {
LABEL_74:
    *(this + 1) = 0;
    return this;
  }

  v33 = v6 - 1;
  while (!v11[v33])
  {
    *this = v33--;
    if (v33 == -1)
    {
      goto LABEL_74;
    }
  }

  return this;
}

unint64_t __llvm_libc_common_utils::internal::HighPrecisionDecimal::left_shift(unint64_t this, unsigned int a2)
{
  v2 = a2;
  v3 = this;
  v4 = &__llvm_libc_common_utils::internal::HighPrecisionDecimal::LEFT_SHIFT_DIGIT_TABLE + 16 * a2;
  v5 = *(v4 + 1);
  v6 = *v4;
  v7 = *v5;
  v8 = *this;
  if (*v5)
  {
    v9 = (this + 9);
    v10 = v5 + 1;
    v11 = *this;
    while (1)
    {
      if (!v11)
      {
        --v6;
        goto LABEL_9;
      }

      v12 = *v9;
      this = __llvm_libc_common_utils::internal::b36_char_to_int(v7);
      if (this != v12)
      {
        break;
      }

      v13 = *v10++;
      v7 = v13;
      ++v9;
      --v11;
      if (!v13)
      {
        goto LABEL_9;
      }
    }

    v6 = (__PAIR64__(v6, v12) - this) >> 32;
  }

LABEL_9:
  v14 = v8 + v6;
  v15 = (v8 - 1);
  if (v8 - 1 >= 0)
  {
    v16 = 0;
    v17 = v3 + 9;
    v18 = v15 + 1;
    v19 = v6 + v8 - 1;
    v20 = (v3 + 9 + v15);
    do
    {
      v21 = *v20--;
      this = (v21 << v2) + v16;
      v16 = this / 0xA;
      v22 = this % 0xA;
      if (v19 > 0x31F)
      {
        if (v22)
        {
          *(v3 + 8) = 1;
        }
      }

      else
      {
        *(v17 + v19) = v22;
      }

      --v19;
      v23 = v18-- <= 1;
    }

    while (!v23);
    if (this >= 0xA)
    {
      v24 = v6 - 1;
      do
      {
        v25 = v16 % 0xA;
        if (v24 > 0x31F)
        {
          if (v25)
          {
            *(v3 + 8) = 1;
          }
        }

        else
        {
          *(v17 + v24) = v25;
        }

        --v24;
        v23 = v16 > 9;
        v16 /= 0xAuLL;
      }

      while (v23);
    }
  }

  if (v14 >= 0x320)
  {
    v26 = 800;
  }

  else
  {
    v26 = v8 + v6;
  }

  v27 = *(v3 + 4) + v6;
  *v3 = v26;
  *(v3 + 4) = v27;
  if (v14)
  {
    v28 = -v26;
    v29 = v26 - 1;
    while (!*(v3 + 9 + v29))
    {
      *v3 = v29--;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
LABEL_32:
    *(v3 + 4) = 0;
  }

  return this;
}

uint64_t std::__from_chars_floating_point_inf<double>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a2 - a3 > 1 && (v9 = result, result = __tolower(*a3), result == 110) && (result = __tolower(a3[1]), result == 102))
  {
    v10 = a3 + 2;
    if (a2 - (a3 + 2) >= 5)
    {
      result = __tolower(*v10);
      if (result == 105)
      {
        result = __tolower(a3[3]);
        if (result == 110)
        {
          result = __tolower(a3[4]);
          if (result == 105)
          {
            result = __tolower(a3[5]);
            if (result == 116)
            {
              result = __tolower(a3[6]);
              if (result == 121)
              {
                v10 = a3 + 7;
              }
            }
          }
        }
      }
    }

    if (a4)
    {
      v11 = 0xFFF0000000000000;
    }

    else
    {
      v11 = 0x7FF0000000000000;
    }

    *a5 = v11;
    *(a5 + 8) = &v10[-v9];
    *(a5 + 16) = 0;
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 22;
  }

  return result;
}

uint64_t std::__from_chars_floating_point_nan<double>@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a2 - a3 > 1 && (v9 = result, result = __tolower(*a3), result == 97) && (result = __tolower(a3[1]), result == 110))
  {
    v10 = a3 + 2;
    if (a2 - v10 >= 2 && *v10 == 40)
    {
      v11 = 1;
      v12 = MEMORY[0x1E69E9830];
      while (1)
      {
        while (1)
        {
          v13 = v10[v11];
          if (v13 != 95)
          {
            break;
          }

          if (&v10[++v11] == a2)
          {
            goto LABEL_21;
          }
        }

        if (v13 == 41)
        {
          break;
        }

        if (v13 < 0)
        {
          result = __maskrune(v13, 0x500uLL);
        }

        else
        {
          result = *(v12 + 4 * v13 + 60) & 0x500;
        }

        ++v11;
        if (result)
        {
          v14 = &v10[v11] == a2;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          goto LABEL_21;
        }
      }

      v10 += v11 + 1;
    }

LABEL_21:
    if (a4)
    {
      v15 = 0xFFF8000000000000;
    }

    else
    {
      v15 = 0x7FF8000000000000;
    }

    *a5 = v15;
    *(a5 + 8) = &v10[-v9];
    *(a5 + 16) = 0;
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 22;
  }

  return result;
}

uint64_t std::__from_chars_floating_point_hex<double>@<X0>(std::__1 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v8 = (a2 - a1);
  result = std::__parse_fractional_hex_constant<unsigned long long>(a1, a2 - a1, a3 - a1, &v27);
  if ((v31 & 1) == 0)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    v18 = 22;
    goto LABEL_43;
  }

  result = std::__parse_exponent(a1, v8, v27, 112);
  v11 = v28;
  if (!v28)
  {
    v17 = 0;
    v13 = 0;
LABEL_29:
    v16 = 1;
    goto LABEL_32;
  }

  v12 = -2047;
  if (v29 + v10 > -2047)
  {
    v12 = v29 + v10;
  }

  v13 = 2047;
  if (v12 >= 2047)
  {
    LODWORD(v12) = 2047;
  }

  v14 = __clz(v28);
  v15 = v12 - v14;
  if (v12 - v14 <= 960)
  {
    if (v15 > -1086)
    {
      v13 = (v15 + 1086);
      v19 = 11;
    }

    else
    {
      if (v15 < 0xFFFFFB8E)
      {
        v16 = 0;
        v17 = 0;
        v13 = 0;
LABEL_31:
        v11 = 34;
        goto LABEL_32;
      }

      v13 = 0;
      v19 = -1074 - v15;
    }

    v20 = v28 << v14;
    v21 = 1 << (v19 - 1);
    if (((v21 - 1) & v20) != 0)
    {
      v22 = 1;
    }

    else
    {
      v22 = v30;
    }

    v23 = (v20 >> v19) & 0xFFFFFFFFFFFFFLL;
    if (v19 >= 0x40)
    {
      v23 = 0;
    }

    if (v21 & v20) != 0 && ((v23 | v22))
    {
      if (v23 == 0xFFFFFFFFFFFFFLL)
      {
        v13 = (v13 + 1);
        v23 = 0x10000000000000;
        if (v13 == 2047)
        {
          v13 = 2047;
LABEL_30:
          v16 = 0;
          v17 = v23 & 0xFFFFFFFFFFFFFLL;
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      ++v23;
    }

    if (!v13)
    {
      goto LABEL_30;
    }

LABEL_28:
    v11 = 0;
    v17 = v23 & 0xFFFFFFFFFFFFFLL;
    goto LABEL_29;
  }

  v16 = 0;
  v17 = 0;
  v11 = 34;
LABEL_32:
  *&v24 = v17 | (v13 << 52);
  if (v13)
  {
    v25 = 1;
  }

  else
  {
    v25 = v16;
  }

  if (v24 == 0.0)
  {
    v25 = 1;
  }

  if (v25)
  {
    v18 = v11;
  }

  else
  {
    v18 = 0;
  }

  v26 = v24;
  if (a4)
  {
    v26 = -v24;
  }

  *a5 = v26;
  *(a5 + 8) = result;
LABEL_43:
  *(a5 + 16) = v18;
  return result;
}

unint64_t std::__from_chars_floating_point_decimal<double>@<X0>(std::__1 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v12 = (a2 - a1);
  result = std::__parse_fractional_decimal_constant<unsigned long long>(a1, a2 - a1, a4 - a1, &v27);
  if ((v31 & 1) == 0)
  {
    goto LABEL_9;
  }

  v14 = v27;
  if (a3 != 2)
  {
    result = std::__parse_exponent(a1, v12, v27, 101);
    v14 = result;
    if (a3 != 1 || (v16 & 0x100000000) != 0)
    {
      v15 = v29 + v16;
      if (v15 <= -2047)
      {
        v15 = -2047;
      }

      if (v15 >= 2047)
      {
        LODWORD(v15) = 2047;
      }

      goto LABEL_14;
    }

LABEL_9:
    *a6 = 0;
    *(a6 + 8) = 0;
    v17 = 22;
    goto LABEL_31;
  }

  LODWORD(v15) = v29;
  if (v29 <= -2047)
  {
    LODWORD(v15) = -2047;
  }

  if (v15 >= 2047)
  {
    LODWORD(v15) = 2047;
  }

LABEL_14:
  result = *v28;
  if (*v28)
  {
    result = __llvm_libc_common_utils::internal::decimal_exp_to_float<double>(a4, *v28, v15, v30, 2, a2 - a4, &v24);
    v17 = v26;
    if (v26 != 34)
    {
      v17 = 0;
    }

    v18 = v24 & 0xFFFFFFFFFFFFFLL;
    v19 = (v25 & 0x7FF) << 52;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  *&v20 = v19 | v18;
  if (v20 != 0.0 && v19 == 0 && v17 == 34)
  {
    v17 = 0;
  }

  v23 = v20;
  if (a5)
  {
    v23 = -v20;
  }

  *a6 = v23;
  *(a6 + 8) = v14;
LABEL_31:
  *(a6 + 16) = v17;
  return result;
}

uint64_t std::__parse_fractional_hex_constant<unsigned long long>@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  *(a4 + 20) = 0;
  *(a4 + 16) = 0;
  if (a3 >= a2)
  {
    v12 = 0;
  }

  else
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = MEMORY[0x1E69E9830];
    while (1)
    {
      result = *(v7 + v4);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if ((*(v13 + 4 * result + 60) & 0x10000) != 0)
      {
        v14 = result - 48;
        result = __tolower(result);
        if ((result - 97) >= 6)
        {
          v15 = v14;
        }

        else
        {
          v15 = result - 87;
        }

        if (v12 > 0xFFFFFFFFFFFFFFELL)
        {
          if (v15)
          {
            v9 = 1;
          }

          if ((v11 & 1) == 0)
          {
            v8 += 4;
          }
        }

        else
        {
          v12 = 16 * v12 + v15;
          if (v11)
          {
            v8 -= 4;
          }
        }

        v10 = 1;
      }

      else
      {
        if (v11 & 1 | (result != 46))
        {
          break;
        }

        v11 = 1;
      }

      if (a2 == ++v4)
      {
        v4 = a2;
        break;
      }
    }

    *(a4 + 21) = v10;
    *(a4 + 20) = v9;
    *(a4 + 16) = v8;
  }

  *a4 = v4;
  *(a4 + 8) = v12;
  return result;
}

uint64_t std::__parse_fractional_decimal_constant<unsigned long long>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 20) = 0;
  *(a4 + 16) = 0;
  if (a3 >= a2)
  {
    v8 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(result + a3);
      if ((v9 & 0x80000000) != 0)
      {
        break;
      }

      if ((*(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x400) != 0)
      {
        v10 = v9 - 48;
        if (v9 == 48)
        {
          v11 = v5;
        }

        else
        {
          v11 = 1;
        }

        v12 = v4 + ((v7 & 1) == 0);
        v13 = 10 * v8 + v10;
        v4 -= v7 & 1;
        if (v8 > 0x1999999999999998)
        {
          v4 = v12;
          v5 = v11;
        }

        v6 = 1;
        if (v8 <= 0x1999999999999998)
        {
          v8 = v13;
        }
      }

      else
      {
        if (v7 & 1 | (v9 != 46))
        {
          break;
        }

        v7 = 1;
      }

      if (a2 == ++a3)
      {
        a3 = a2;
        break;
      }
    }

    *(a4 + 21) = v6;
    *(a4 + 20) = v5;
    *(a4 + 16) = v4;
  }

  *a4 = a3;
  *(a4 + 8) = v8;
  return result;
}

unint64_t __llvm_libc_common_utils::internal::decimal_exp_to_float<double>@<X0>(char *a1@<X4>, unint64_t result@<X0>, int a3@<W1>, char a4@<W2>, int a5@<W3>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (a3 >= 310)
  {
    *a7 = 0;
    *(a7 + 8) = 2047;
LABEL_5:
    v8 = 34;
    goto LABEL_6;
  }

  if (a3 <= -345)
  {
    *a7 = 0;
    *(a7 + 8) = 0;
    goto LABEL_5;
  }

  if ((a4 & 1) != 0 || result >> 52)
  {
    goto LABEL_19;
  }

  v9 = result;
  if (!a3)
  {
    v10 = 0;
    v11 = result;
    goto LABEL_63;
  }

  if (a3 < 1)
  {
    if (a3 >= 0xFFFFFFEA)
    {
      v10 = a3;
      v11 = v9 / __llvm_libc_common_utils::internal::ClingerConsts<double>::POWERS_OF_TEN_ARRAY[-a3 & 0x3FLL];
      goto LABEL_63;
    }

LABEL_19:
    v12 = __clz(result);
    v13 = result << v12;
    v14 = (&__llvm_libc_common_utils::internal::DETAILED_POWERS_OF_TEN + 16 * (a3 + 348));
    v15 = v14[1];
    v16 = v15 * (result << v12);
    v17 = (v15 * (result << v12)) >> 64;
    v18 = ~(result << v12);
    if ((~v17 & 0x1FF) == 0 && v16 > v18)
    {
      v39 = *v14 * v13;
      v40 = (*v14 * v13) >> 64;
      v36 = __CFADD__(v40, v16);
      v16 += v40;
      if (v36)
      {
        ++v17;
      }

      if (v39 > v18 && (v17 & 0x1FF) == 0x1FF && v16 == -1)
      {
        goto LABEL_75;
      }
    }

    v20 = v17 >> 63;
    v21 = v17 >> ((v17 < 0) + 9);
    if (a5)
    {
      if (a5 == 2)
      {
        if (v16)
        {
          v22 = 0;
        }

        else
        {
          v22 = (v17 & 0x1FF) == 0;
        }

        if (v22 && ((v17 >> ((v17 < 0) + 9)) & 3) == 1)
        {
          goto LABEL_75;
        }

        v21 = ((v17 >> ((v17 < 0) + 9)) & 1) + (v17 >> ((v17 < 0) + 9));
      }
    }

    else if (v16 | v17 & 0x1FF)
    {
      v21 += 2;
    }

    v24 = (217706 * a3) >> 16;
    v25 = v24 - v12 + v20;
    if (v21 >> 54)
    {
      ++v25;
    }

    if ((v25 - 961) >= 0xFFFFF802)
    {
      v26 = v25 + 1086;
      v27 = 1;
      if (v21 >> 54)
      {
        v27 = 2;
      }

      v28 = v21 >> v27;
      if ((a4 & 1) == 0)
      {
        goto LABEL_80;
      }

      v29 = __clz(result + 1);
      v30 = (result + 1) << v29;
      v31 = v15 * v30;
      v32 = (v15 * v30) >> 64;
      if ((~v32 & 0x1FF) != 0 || v31 <= ~v30)
      {
        goto LABEL_50;
      }

      v33 = *v14;
      v34 = v33 * v30;
      v35 = (v33 * v30) >> 64;
      v36 = __CFADD__(v35, v31);
      v31 += v35;
      if (v36)
      {
        ++v32;
      }

      if (v34 <= ~v30 || ((v32 & 0x1FF) == 0x1FF ? (v37 = v31 == -1) : (v37 = 0), !v37))
      {
LABEL_50:
        v38 = v32 >> ((v32 < 0) + 9);
        if (a5)
        {
          if (a5 == 2)
          {
            if (!v31 && (v32 & 0x1FF) == 0 && ((v32 >> ((v32 < 0) + 9)) & 3) == 1)
            {
              goto LABEL_75;
            }

            v38 = ((v32 >> ((v32 < 0) + 9)) & 1) + (v32 >> ((v32 < 0) + 9));
          }
        }

        else if (v31 | v32 & 0x1FF)
        {
          v38 += 2;
        }

        v47 = v24 - v29 + (v32 >> 63);
        if (v38 >> 54)
        {
          ++v47;
        }

        if ((v47 - 961) >= 0xFFFFF802)
        {
          v49 = 1;
          if (v38 >> 54)
          {
            v49 = 2;
          }

          if (v28 == v38 >> v49 && v26 == v47 + 1086)
          {
LABEL_80:
            v8 = 0;
            *a7 = v28;
            *(a7 + 8) = v26;
            goto LABEL_6;
          }
        }
      }
    }

LABEL_75:
    result = __llvm_libc_common_utils::internal::simple_decimal_conversion<double>(a1, a6, a5, v50);
    v8 = v51;
    v48 = v50[1];
    *a7 = v50[0];
    *(a7 + 8) = v48;
    goto LABEL_6;
  }

  if (a3 > 0x25)
  {
    goto LABEL_19;
  }

  if (a3 < 0x17)
  {
    v10 = a3;
  }

  else
  {
    v9 = __llvm_libc_common_utils::internal::ClingerConsts<double>::POWERS_OF_TEN_ARRAY[a3 - 22] * v9;
    v10 = 22;
  }

  if (v9 > 9.00719925e15)
  {
    goto LABEL_19;
  }

  v11 = v9 * __llvm_libc_common_utils::internal::ClingerConsts<double>::POWERS_OF_TEN_ARRAY[v10];
LABEL_63:
  v42 = v11;
  if (a5 != 2)
  {
    v43 = __llvm_libc_common_utils::internal::ClingerConsts<double>::POWERS_OF_TEN_ARRAY[v10];
    v44 = -(v43 * -v9);
    if (v11 != v44)
    {
      v45 = -(v9 * v43);
      if ((a5 == 0) == v11 < v44)
      {
        v42 = v45;
      }
    }
  }

  v8 = 0;
  v46 = *&v42 & 0xFFFFFFFFFFFFFLL;
  if ((*&v42 & 0x7FF0000000000000) != 0)
  {
    v46 = *&v42 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  }

  *a7 = v46;
  *(a7 + 8) = (*&v42 >> 52) & 0x7FF;
LABEL_6:
  *(a7 + 16) = v8;
  return result;
}

uint64_t __llvm_libc_common_utils::internal::simple_decimal_conversion<double>@<X0>(char *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v67 = *MEMORY[0x1E69E9840];
  result = __llvm_libc_common_utils::internal::HighPrecisionDecimal::HighPrecisionDecimal(&v63, a1, a2);
  *(a4 + 16) = 0;
  if (v63)
  {
    v7 = v64;
    if (v64 < 1)
    {
      if (v64 < 0)
      {
        if (((217706 * -v64) >> 16) >= 1076)
        {
          *a4 = 0;
          *(a4 + 8) = 0;
LABEL_27:
          *(a4 + 16) = 34;
          goto LABEL_138;
        }

        v8 = 0;
      }

      else
      {
        v8 = 0;
        v7 = 0;
      }
    }

    else
    {
      if (((217706 * (v64 - 1)) >> 16) > 1023)
      {
LABEL_26:
        *a4 = 0;
        *(a4 + 8) = 2047;
        goto LABEL_27;
      }

      v8 = 0;
      do
      {
        if (v7 <= 0x12)
        {
          v9 = __llvm_libc_common_utils::internal::POWERS_OF_TWO[v7];
        }

        else
        {
          v9 = 60;
        }

        v8 += v9;
        __llvm_libc_common_utils::internal::HighPrecisionDecimal::shift(&v63, -v9);
        v7 = v64;
      }

      while (v64 > 0);
    }

    if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_20;
    }

    while (!v7 && v66[0] < 5u)
    {
      v10 = 1;
      while (1)
      {
        v8 -= v10;
        __llvm_libc_common_utils::internal::HighPrecisionDecimal::shift(&v63, v10);
        v7 = v64;
        if ((v64 & 0x80000000) == 0)
        {
          break;
        }

LABEL_20:
        if (v7 >= 0xFFFFFFEE)
        {
          v10 = __llvm_libc_common_utils::internal::POWERS_OF_TWO[-v7];
        }

        else
        {
          v10 = 60;
        }
      }
    }

    result = __llvm_libc_common_utils::internal::HighPrecisionDecimal::left_shift(&v63, 1u);
    if (v8 > 1024)
    {
      goto LABEL_26;
    }

    for (i = 52; i > 4; i -= 4)
    {
      __llvm_libc_common_utils::internal::HighPrecisionDecimal::left_shift(&v63, 4u);
    }

    result = __llvm_libc_common_utils::internal::HighPrecisionDecimal::left_shift(&v63, 4u);
    v12 = v64;
    v13 = 0;
    v14 = v64 - 1;
    if (v64 < 1)
    {
      v16 = 0;
    }

    else
    {
      v15 = v63;
      if (v63 >= v14)
      {
        v16 = v64 - 1;
      }

      else
      {
        v16 = v63;
      }

      v17 = v66;
      v18 = v64;
      while (v15)
      {
        v19 = *v17++;
        v13 = v19 + 10 * v13;
        --v15;
        if (!--v18)
        {
          ++v16;
          break;
        }
      }
    }

    v20 = __OFSUB__(v64, v16);
    v21 = v64 - v16;
    if (!((v21 < 0) ^ v20 | (v21 == 0)))
    {
      do
      {
        v13 *= 10;
        --v21;
      }

      while (v21);
    }

    v22 = v8 + 1022;
    if (v64 < 0 || v63 <= v64)
    {
      goto LABEL_52;
    }

    v23 = v66[v64];
    if (v23 != 5 || v64 + 1 != v63)
    {
      v25 = v23 > 4;
      goto LABEL_53;
    }

    if (v65)
    {
      v25 = 1;
      goto LABEL_53;
    }

    if (!v64)
    {
LABEL_52:
      v25 = 0;
    }

    else
    {
      v25 = v66[v14] & 1;
    }

LABEL_53:
    if (v8 > -1022)
    {
      v48 = v13 + v25;
      goto LABEL_131;
    }

    v26 = v63;
    if (v8 != -1022)
    {
      while (1)
      {
        v27 = 0;
        v28 = 0;
        do
        {
          v29 = v27;
          if (v27 >= v26)
          {
            v30 = 0;
          }

          else
          {
            v30 = v66[v27];
          }

          v28 = v30 + 10 * v28;
          v27 = v29 + 1;
        }

        while (v28 < 2);
        v31 = v26 - v27;
        if (v26 <= v27)
        {
          break;
        }

        v32 = ~v29 + v26;
        v33 = v66;
        do
        {
          result = v33[v27];
          *v33++ = v28 >> 1;
          if (v28)
          {
            v34 = 10;
          }

          else
          {
            v34 = 0;
          }

          v28 = v34 + result;
          --v32;
        }

        while (v32);
        if (v28)
        {
          goto LABEL_71;
        }

        v26 -= v27;
        if (!v26)
        {
          v26 = 0;
          goto LABEL_69;
        }

LABEL_77:
        v12 = v12 - v27 + 1;
        if (v66[v26 - 1])
        {
          goto LABEL_81;
        }

        v36 = v26 - 2;
        while (--v26)
        {
          if (v66[v36--])
          {
            goto LABEL_81;
          }
        }

LABEL_69:
        v12 = 0;
LABEL_81:
        if (__CFADD__(v22++, 1))
        {
          goto LABEL_83;
        }
      }

      v31 = 0;
LABEL_71:
      v26 = v31;
      do
      {
        if (v26 > 0x31F)
        {
          if (v28 >= 2)
          {
            v65 = 1;
          }
        }

        else
        {
          v66[v26++] = v28 >> 1;
        }

        v35 = v28 & 1;
        v28 = (2 * v35) | (8 * v35);
      }

      while (v35);
      goto LABEL_77;
    }

LABEL_83:
    v39 = 0;
    v40 = 0;
    do
    {
      if (v39 >= v26)
      {
        v41 = 0;
      }

      else
      {
        v41 = v66[v39];
      }

      v40 = v41 + 10 * v40;
      ++v39;
    }

    while (v40 < 2);
    v42 = v26 - v39;
    if (v26 <= v39)
    {
      v42 = 0;
    }

    else
    {
      v43 = v66;
      v44 = v26 - v39;
      do
      {
        v45 = v43[v39];
        *v43++ = v40 >> 1;
        if (v40)
        {
          v46 = 10;
        }

        else
        {
          v46 = 0;
        }

        v40 = v46 + v45;
        --v44;
      }

      while (v44);
      if (!v40)
      {
        if (v26 == v39)
        {
          goto LABEL_96;
        }

        goto LABEL_104;
      }
    }

    do
    {
      if (v42 > 0x31F)
      {
        if (v40 >= 2)
        {
          v65 = 1;
        }
      }

      else
      {
        v66[v42++] = v40 >> 1;
      }

      v49 = v40 & 1;
      v40 = (2 * v49) | (8 * v49);
    }

    while (v49);
LABEL_104:
    if (v66[v42 - 1])
    {
LABEL_108:
      v52 = v12 - v39;
      v53 = v12 - v39 + 1;
      if (v53 < 1)
      {
        v47 = 0;
        v54 = 0;
      }

      else
      {
        v47 = 0;
        if (v42 >= v52)
        {
          v54 = v12 - v39;
        }

        else
        {
          v54 = v42;
        }

        v55 = v42;
        v56 = v52 + 1;
        result = 10;
        v57 = v66;
        while (v55)
        {
          v58 = *v57++;
          v47 = v58 + 10 * v47;
          --v55;
          if (!--v56)
          {
            ++v54;
            break;
          }
        }
      }

      if (v54 < v53)
      {
        v59 = v12 - v54 - v39 + 1;
        do
        {
          v47 *= 10;
          --v59;
        }

        while (v59);
      }

      v60 = 0;
      if (v53 < 0 || v42 <= v53)
      {
        goto LABEL_130;
      }

      if (a3)
      {
        if (a3 == 1)
        {
          goto LABEL_124;
        }

        v61 = v66[v53];
        if (v61 != 5 || v12 - v42 + 2 != v39)
        {
          v60 = v61 > 4;
          goto LABEL_130;
        }

        if ((v65 & 1) == 0)
        {
          if (v12 + 1 != v39)
          {
            v60 = v66[v52] & 1;
            goto LABEL_130;
          }

          goto LABEL_124;
        }
      }

      v60 = 1;
      goto LABEL_130;
    }

    v50 = v42 - 2;
    while (--v42)
    {
      if (v66[v50--])
      {
        goto LABEL_108;
      }
    }

LABEL_96:
    v47 = 0;
LABEL_124:
    v60 = 0;
LABEL_130:
    v48 = v47 + v60;
    v22 = v48 >> 52 != 0;
LABEL_131:
    if (v48 == 0x20000000000000)
    {
      v48 = 0x10000000000000;
      if (v22 <= 2045)
      {
        ++v22;
        goto LABEL_137;
      }

      v22 = 2047;
    }

    else if (v22)
    {
LABEL_137:
      *a4 = v48;
      *(a4 + 8) = v22;
      goto LABEL_138;
    }

    *(a4 + 16) = 34;
    goto LABEL_137;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
LABEL_138:
  v62 = *MEMORY[0x1E69E9840];
  return result;
}

std::chrono::system_clock::time_point std::chrono::system_clock::now(void)
{
  if (clock_gettime(_CLOCK_REALTIME, &v2))
  {
    v1 = __error();
    std::__throw_system_error(*v1, "clock_gettime(CLOCK_REALTIME) failed");
  }

  return (v2.tv_nsec / 1000 + 1000000 * v2.tv_sec);
}

std::chrono::steady_clock::time_point std::chrono::steady_clock::now(void)
{
  if (clock_gettime(_CLOCK_MONOTONIC_RAW, &v2))
  {
    v1 = __error();
    std::__throw_system_error(*v1, "clock_gettime(CLOCK_MONOTONIC_RAW) failed");
  }

  return (v2.tv_nsec + 1000000000 * v2.tv_sec);
}

std::error_condition std::error_category::default_error_condition(const std::error_category *this, int __ev)
{
  v3 = __ev;
  v4 = this;
  result.__cat_ = v4;
  result.__val_ = v3;
  return result;
}

void std::exception_ptr::~exception_ptr(std::exception_ptr *this)
{
  __cxa_decrement_exception_refcount(this->__ptr_);
}

{
  __cxa_decrement_exception_refcount(this->__ptr_);
}

std::exception_ptr *__cdecl std::exception_ptr::exception_ptr(std::exception_ptr *this, const std::exception_ptr *a2)
{
  ptr = a2->__ptr_;
  this->__ptr_ = a2->__ptr_;
  __cxa_increment_exception_refcount(ptr);
  return this;
}

{
  ptr = a2->__ptr_;
  this->__ptr_ = a2->__ptr_;
  __cxa_increment_exception_refcount(ptr);
  return this;
}

std::exception_ptr *__cdecl std::exception_ptr::operator=(std::exception_ptr *this, const std::exception_ptr *a2)
{
  if (this->__ptr_ != a2->__ptr_)
  {
    __cxa_increment_exception_refcount(a2->__ptr_);
    __cxa_decrement_exception_refcount(this->__ptr_);
    this->__ptr_ = a2->__ptr_;
  }

  return this;
}

std::nested_exception *__cdecl std::nested_exception::nested_exception(std::nested_exception *this)
{
  this->__ptr_.__ptr_ = __cxa_current_primary_exception();
  return this;
}

{
  this->__ptr_.__ptr_ = __cxa_current_primary_exception();
  return this;
}

std::exception_ptr std::current_exception(void)
{
  v1 = v0;
  v2 = __cxa_current_primary_exception();
  *v1 = v2;
  return v2;
}

void std::nested_exception::~nested_exception(std::nested_exception *this)
{
  __cxa_decrement_exception_refcount(this->__ptr_.__ptr_);
}

{
  __cxa_decrement_exception_refcount(this->__ptr_.__ptr_);
}

{
  __cxa_decrement_exception_refcount(this->__ptr_.__ptr_);

  JUMPOUT(0x193B0CA40);
}

void std::nested_exception::rethrow_nested(const std::nested_exception *this)
{
  ptr = this->__ptr_.__ptr_;
  __cxa_decrement_exception_refcount(0);
  if (!ptr)
  {
    std::terminate();
  }

  v4 = this->__ptr_.__ptr_;
  __cxa_increment_exception_refcount(v4);
  v3.__ptr_ = &v4;
  std::rethrow_exception(v3);
}

void std::bad_expected_access<void>::~bad_expected_access(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x193B0CA40);
}

std::__fs::filesystem::_FilesystemClock::time_point std::__fs::filesystem::_FilesystemClock::now(void)
{
  if (clock_gettime(_CLOCK_REALTIME, &v3))
  {
    v2 = __error();
    std::__throw_system_error(*v2, "clock_gettime(CLOCK_REALTIME) failed");
  }

  v1 = (v3.tv_sec * 1000000000 + v3.tv_nsec) >> 64;
  v0 = 1000000000 * v3.tv_sec + v3.tv_nsec;
  *(&result.__d_.__rep_ + 1) = v1;
  *&result.__d_.__rep_ = v0;
  return result;
}

void std::__fs::filesystem::filesystem_error::~filesystem_error(std::__fs::filesystem::filesystem_error *this)
{
  cntrl = this->__storage_.__cntrl_;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  std::system_error::~system_error(this);
}

{
  std::__fs::filesystem::filesystem_error::~filesystem_error(this);

  JUMPOUT(0x193B0CA40);
}

void std::__fs::filesystem::filesystem_error::__create_what(std::__fs::filesystem::filesystem_error *this, int __num_paths)
{
  v4 = std::runtime_error::what(this);
  if (__num_paths == 2)
  {
    ptr = this->__storage_.__ptr_;
    v8 = ptr;
    if (SHIBYTE(ptr->__p1_.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      v8 = ptr->__p1_.__pn_.__r_.__value_.__r.__words[0];
    }

    p_p2 = &ptr->__p2_;
    if (SHIBYTE(ptr->__p2_.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      p_p2 = p_p2->__words[0];
    }

    v6 = std::__fs::filesystem::detail::format_string("filesystem error: %s [%s] [%s]", &v11, v4, v8, p_p2);
  }

  else if (__num_paths == 1)
  {
    v5 = this->__storage_.__ptr_;
    if (SHIBYTE(v5->__p1_.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = v5->__p1_.__pn_.__r_.__value_.__r.__words[0];
    }

    v6 = std::__fs::filesystem::detail::format_string("filesystem error: %s [%s]", &v11, v4, v5);
  }

  else
  {
    v6 = std::__fs::filesystem::detail::format_string("filesystem error: %s", &v11, v4);
  }

  v10 = this->__storage_.__ptr_;
  if (SHIBYTE(v10->__what_.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v10->__what_.__r_.__value_.__r.__words[0], v10->__what_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL, v6);
  }

  v10->__what_ = v11;
}

const char *__cdecl std::__fs::filesystem::filesystem_error::what(const std::__fs::filesystem::filesystem_error *this)
{
  ptr = this->__storage_.__ptr_;
  result = &ptr->__what_;
  if (SHIBYTE(ptr->__what_.__r_.__value_.__r.__words[2]) < 0)
  {
    return *result;
  }

  return result;
}

double std::__fs::filesystem::detail::format_string@<D0>(std::__fs::filesystem::detail *this@<X0>, std::string *a2@<X8>, ...)
{
  va_start(va, a2);
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  va_copy(v6, va);
  std::__fs::filesystem::detail::vformat_string(this, va, &v5);
  result = *&v5.__r_.__value_.__l.__data_;
  *a2 = v5;
  return result;
}

void sub_1922A4554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_end_catch();
  std::__fs::filesystem::detail::format_string(va, v4);
  _Unwind_Resume(a1);
}

std::string *std::__fs::filesystem::detail::vformat_string@<X0>(std::__fs::filesystem::detail *this@<X0>, va_list a2@<X1>, std::string *a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = vsnprintf(__str, 0x100uLL, this, a2);
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v7 = v6;
  if (v6 > 0xFF)
  {
    std::string::__grow_by(a3, 0x16uLL, v6 - 22, 0, 0, 0, 0);
    a3->__r_.__value_.__l.__size_ = 0;
    if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = a3->__r_.__value_.__r.__words[0];
      a3->__r_.__value_.__l.__size_ = v7;
    }

    else
    {
      *(&a3->__r_.__value_.__s + 23) = v7 & 0x7F;
      v9 = a3;
    }

    v9->__r_.__value_.__s.__data_[v7] = 0;
    v10 = a3->__r_.__value_.__r.__words[0];
    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = a3->__r_.__value_.__r.__words[0];
    }

    result = vsnprintf(v11, v7 + 1, this, a2);
  }

  else
  {
    result = std::string::__assign_external(a3, __str, v6);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1922A467C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    MEMORY[0x193B0CA40](*v1, *(v1 + 16) & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

std::__fs::filesystem::path *__cdecl std::__fs::filesystem::path::replace_extension(std::__fs::filesystem::path *this, const std::__fs::filesystem::path *__replacement)
{
  v4.n128_f64[0] = std::__fs::filesystem::path::extension[abi:ne200100](this, v16);
  v5 = HIBYTE(v17);
  if (v17 < 0)
  {
    v5 = v16[1];
  }

  if (v5)
  {
    v6 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if ((v6 & 0x8000000000000000) != 0)
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
      v7 = size >= v5;
      v8 = size - v5;
      if (!v7)
      {
LABEL_29:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v9 = this->__pn_.__r_.__value_.__r.__words[0];
      this->__pn_.__r_.__value_.__l.__size_ = v8;
    }

    else
    {
      v7 = v6 >= v5;
      v8 = v6 - v5;
      if (!v7)
      {
        goto LABEL_29;
      }

      *(&this->__pn_.__r_.__value_.__s + 23) = v8;
      v9 = this;
    }

    v9->__pn_.__r_.__value_.__s.__data_[v8] = 0;
  }

  v11 = SHIBYTE(__replacement->__pn_.__r_.__value_.__r.__words[2]);
  if (v11 < 0)
  {
    if (!__replacement->__pn_.__r_.__value_.__l.__size_)
    {
      goto LABEL_26;
    }

    v12 = __replacement->__pn_.__r_.__value_.__r.__words[0];
  }

  else
  {
    v12 = __replacement;
    if (!*(&__replacement->__pn_.__r_.__value_.__s + 23))
    {
      goto LABEL_26;
    }
  }

  if (v12->__pn_.__r_.__value_.__s.__data_[0] != 46)
  {
    std::string::append(&this->__pn_, ".", 1uLL);
    LOBYTE(v11) = *(&__replacement->__pn_.__r_.__value_.__s + 23);
  }

  if ((v11 & 0x80u) == 0)
  {
    v13 = __replacement;
  }

  else
  {
    v13 = __replacement->__pn_.__r_.__value_.__r.__words[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = __replacement->__pn_.__r_.__value_.__l.__size_;
  }

  std::string::append(&this->__pn_, v13, v14);
LABEL_26:
  if (SHIBYTE(v17) < 0)
  {
    MEMORY[0x193B0CA40](v16[0], v17 & 0x7FFFFFFFFFFFFFFFLL, v4);
  }

  return this;
}

void sub_1922A48D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::__fs::filesystem::path::replace_extension(&a10);
  }

  _Unwind_Resume(exception_object);
}

double std::__fs::filesystem::path::extension[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__extension(a1);
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

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_name(const std::__fs::filesystem::path *this)
{
  size = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v2 = this;
    this = this->__pn_.__r_.__value_.__r.__words[0];
    size = v2->__pn_.__r_.__value_.__l.__size_;
  }

  v5[0] = this;
  v5[1] = size;
  v6 = 0;
  v7 = 0;
  v8 = 1;
  std::__fs::filesystem::parser::PathParser::increment(v5);
  if (v8 == 2)
  {
    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  if (v8 == 2)
  {
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  result.__size_ = v4;
  result.__data_ = v3;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  size = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v2 = this;
    this = this->__pn_.__r_.__value_.__r.__words[0];
    size = v2->__pn_.__r_.__value_.__l.__size_;
  }

  v6[0] = this;
  v6[1] = size;
  v7 = 0;
  v8 = 0;
  v9 = 1;
  std::__fs::filesystem::parser::PathParser::increment(v6);
  v3 = v9;
  if (v9 == 2)
  {
    std::__fs::filesystem::parser::PathParser::increment(v6);
    v3 = v9;
  }

  if (v3 == 3)
  {
    if (*v7 == 92)
    {
      v4 = "\";
    }

    else
    {
      v4 = "/";
    }

    v5 = 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  result.__size_ = v5;
  result.__data_ = v4;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_path_raw(const std::__fs::filesystem::path *this)
{
  v1 = this;
  size = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v3 = this->__pn_.__r_.__value_.__r.__words[0];
    size = this->__pn_.__r_.__value_.__l.__size_;
  }

  else
  {
    v3 = this;
  }

  v7 = v3;
  v8 = size;
  v9 = 0;
  v10 = 0;
  v11 = 1;
  std::__fs::filesystem::parser::PathParser::increment(&v7);
  if (v11 == 3)
  {
    if (*v9 == 92)
    {
      v4 = "\";
    }

    else
    {
      v4 = "/";
    }

    v5 = 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    if (v11 == 2)
    {
      v4 = v9;
      v5 = v10;
      v6 = &v9[v10];
      if (&v9[v10])
      {
        if (v6 != v7 + v8 && *v6 == 47)
        {
          std::__fs::filesystem::parser::PathParser::increment(&v7);
          if (SHIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            v1 = v1->__pn_.__r_.__value_.__r.__words[0];
          }

          v5 = &v9[v10] - v1;
          v4 = v1;
        }
      }
    }
  }

  result.__size_ = v5;
  result.__data_ = v4;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__relative_path(const std::__fs::filesystem::path *this)
{
  v1 = this;
  size = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v3 = this->__pn_.__r_.__value_.__r.__words[0];
    size = this->__pn_.__r_.__value_.__l.__size_;
  }

  else
  {
    v3 = this;
  }

  v9[0] = v3;
  v9[1] = size;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  std::__fs::filesystem::parser::PathParser::increment(v9);
  v4 = v12;
  if (v12 <= 3u)
  {
    do
    {
      std::__fs::filesystem::parser::PathParser::increment(v9);
      v4 = v12;
    }

    while (v12 < 4u);
  }

  if (v4 == 6)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = v10;
    v7 = SHIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = v1;
      v1 = v1->__pn_.__r_.__value_.__r.__words[0];
      v7 = v8->__pn_.__r_.__value_.__l.__size_;
    }

    v6 = v1 + v7 - v10;
  }

  result.__size_ = v6;
  result.__data_ = v5;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = this;
  size = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__pn_.__r_.__value_.__l.__size_;
    if (!size)
    {
      goto LABEL_20;
    }

    v3 = this->__pn_.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&this->__pn_.__r_.__value_.__s + 23))
    {
      goto LABEL_20;
    }

    v3 = this;
  }

  v11 = v3;
  v12 = size;
  v13 = 0;
  v14 = 0;
  v15 = 1;
  std::__fs::filesystem::parser::PathParser::increment(&v11);
  v4 = v15;
  if (v15 <= 3u)
  {
    do
    {
      std::__fs::filesystem::parser::PathParser::increment(&v11);
      v4 = v15;
    }

    while (v15 < 4u);
  }

  if (v4 == 6)
  {
    v5 = SHIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]);
    if ((v5 & 0x8000000000000000) != 0)
    {
      v6 = v1;
      v1 = v1->__pn_.__r_.__value_.__r.__words[0];
      v5 = v6->__pn_.__r_.__value_.__l.__size_;
    }

    goto LABEL_21;
  }

  v7 = SHIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = v1->__pn_.__r_.__value_.__r.__words[0];
    v7 = v1->__pn_.__r_.__value_.__l.__size_;
  }

  else
  {
    v8 = v1;
  }

  v11 = v8;
  v12 = v7;
  v13 = 0;
  v14 = 0;
  v15 = 6;
  std::__fs::filesystem::parser::PathParser::decrement(&v11);
  v9 = v1;
  if (SHIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (v13 == v9)
  {
LABEL_20:
    v1 = 0;
    v5 = 0;
    goto LABEL_21;
  }

  std::__fs::filesystem::parser::PathParser::decrement(&v11);
  if (SHIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    v1 = v1->__pn_.__r_.__value_.__r.__words[0];
  }

  v5 = v13 + v14 - v1;
LABEL_21:
  v10 = v1;
  result.__size_ = v5;
  result.__data_ = v10;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = this;
  size = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    if (*(&this->__pn_.__r_.__value_.__s + 23))
    {
      v3 = this;
      goto LABEL_6;
    }

LABEL_9:
    v5 = 0;
    v6 = 0;
    goto LABEL_20;
  }

  size = this->__pn_.__r_.__value_.__l.__size_;
  if (!size)
  {
    goto LABEL_9;
  }

  v3 = this->__pn_.__r_.__value_.__r.__words[0];
LABEL_6:
  v9 = v3;
  v10 = size;
  v11 = 0;
  v12 = 0;
  v13 = 1;
  std::__fs::filesystem::parser::PathParser::increment(&v9);
  v4 = v13;
  if (v13 <= 3u)
  {
    do
    {
      std::__fs::filesystem::parser::PathParser::increment(&v9);
      v4 = v13;
    }

    while (v13 < 4u);
  }

  if (v4 == 6)
  {
    goto LABEL_9;
  }

  v7 = SHIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = v1;
    v1 = v1->__pn_.__r_.__value_.__r.__words[0];
    v7 = v8->__pn_.__r_.__value_.__l.__size_;
  }

  v9 = v1;
  v10 = v7;
  v11 = 0;
  v12 = 0;
  v13 = 6;
  std::__fs::filesystem::parser::PathParser::decrement(&v9);
  v5 = &byte_19231D823;
  v6 = 0;
  if (((1 << v13) & 0x62) == 0)
  {
    if (((1 << v13) & 0x14) != 0)
    {
      v5 = v11;
      v6 = v12;
    }

    else
    {
      if (*v11 == 92)
      {
        v5 = "\";
      }

      else
      {
        v5 = "/";
      }

      v6 = 1;
    }
  }

LABEL_20:
  result.__size_ = v6;
  result.__data_ = v5;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__stem(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__filename(this);
  size = v3.__size_;
  data = v3.__data_;
  switch(v3.__size_)
  {
    case 2uLL:
      if (*v3.__data_ == 11822)
      {
        size = 2;
        goto LABEL_15;
      }

      break;
    case 1uLL:
      if (*v3.__data_ == 46)
      {
        size = 1;
        goto LABEL_15;
      }

      break;
    case 0uLL:
      goto LABEL_15;
  }

  v4 = v3.__size_;
  while (v4)
  {
    v5 = v4;
    v6 = v3.__data_[--v4];
    if (v6 == 46)
    {
      if (v5 >= 2)
      {
        size = v4;
        if (v3.__size_ < v4)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }
      }

      break;
    }
  }

LABEL_15:
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__extension(const std::__fs::filesystem::path *this)
{
  v2 = std::__fs::filesystem::path::__filename(this);
  size = v2.__size_;
  if (!v2.__size_)
  {
    goto LABEL_6;
  }

  if (v2.__size_ == 2)
  {
    if (*v2.__data_ == 11822)
    {
LABEL_5:
      size = 0;
LABEL_6:
      v3 = &byte_19231D823;
      goto LABEL_17;
    }
  }

  else if (v2.__size_ == 1 && *v2.__data_ == 46)
  {
    goto LABEL_5;
  }

  v4 = 0;
  v5 = &v2.__data_[v2.__size_];
  do
  {
    if (-v2.__size_ == v4)
    {
      goto LABEL_12;
    }

    v6 = v5[--v4];
  }

  while (v6 != 46);
  if (v2.__size_ + v4 + 1 < 2)
  {
LABEL_12:
    size = 0;
    v3 = 0;
    goto LABEL_17;
  }

  if (v2.__size_ < v2.__size_ + v4)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  v3 = &v5[v4];
  size = -v4;
LABEL_17:
  result.__size_ = size;
  result.__data_ = v3;
  return result;
}

std::__fs::filesystem::path *__cdecl std::__fs::filesystem::path::lexically_normal(std::__fs::filesystem::path *__return_ptr retstr, std::__fs::filesystem::path *this)
{
  v2 = this;
  if ((SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!*(&this->__pn_.__r_.__value_.__s + 23))
    {
      *retstr = *this;
      return this;
    }

    goto LABEL_5;
  }

  if (this->__pn_.__r_.__value_.__l.__size_)
  {
LABEL_5:
    v34 = 0;
    v35 = 0;
    v36 = 0;
    std::vector<std::pair<std::string_view,std::__fs::filesystem::PathPartKind>>::reserve(&v34, 0x20uLL);
    size = SHIBYTE(v2->__pn_.__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v5 = v2;
      v2 = v2->__pn_.__r_.__value_.__r.__words[0];
      size = v5->__pn_.__r_.__value_.__l.__size_;
    }

    v30[0] = v2;
    v30[1] = size;
    v31 = 0;
    v32 = 0;
    v33 = 1;
    std::__fs::filesystem::parser::PathParser::increment(v30);
    v6 = 0;
    v7 = 0;
    while (1)
    {
      if (v33 > 3u)
      {
        if (v33 != 4)
        {
          if (v33 != 5)
          {
LABEL_59:
            v24 = v34;
            v25 = v35;
            if (v34 == v35)
            {
              std::__fs::filesystem::path::path[abi:ne200100]<char [2],void>(&retstr->__pn_, ".");
            }

            else
            {
              v26 = (v7 & 1) != 0 && v35[-1].__pn_.__r_.__value_.__s.__data_[16] == 2;
              retstr->__pn_.__r_.__value_.__r.__words[0] = 0;
              retstr->__pn_.__r_.__value_.__l.__size_ = 0;
              retstr->__pn_.__r_.__value_.__r.__words[2] = 0;
              std::string::reserve(&retstr->__pn_, v6 - 0x5555555555555555 * ((v25 - v24) >> 3) + v26);
              v27 = v34;
              v28 = v35;
              while (v27 != v28)
              {
                std::__fs::filesystem::path::append[abi:ne200100]<std::string_view>(&retstr->__pn_, v27++);
              }

              if (v26)
              {
                std::__fs::filesystem::path::append[abi:ne200100]<char [1]>(&retstr->__pn_, &byte_19231D823);
              }
            }

            this = v34;
            if (v34)
            {
              v35 = v34;
              return MEMORY[0x193B0CA40](v34, v36 - v34);
            }

            return this;
          }

LABEL_21:
          v7 = 1;
          goto LABEL_42;
        }
      }

      else if (v33 != 2)
      {
        if (v33 != 3)
        {
          goto LABEL_59;
        }

        if (*v31 == 92)
        {
          v8 = "\";
        }

        else
        {
          v8 = "/";
        }

LABEL_20:
        v10 = *v8;
        if (v10 == 46)
        {
          goto LABEL_21;
        }

        if (v10 == 47)
        {
          v11 = 1;
        }

        else
        {
          v11 = 2;
        }

        v9 = 1;
        goto LABEL_29;
      }

      v9 = v32;
      if (!v32)
      {
        goto LABEL_21;
      }

      v8 = v31;
      if (v32 != 2)
      {
        if (v32 == 1)
        {
          goto LABEL_20;
        }

LABEL_28:
        v11 = 2;
LABEL_29:
        v6 += v9;
        v12 = v35;
        if (v35 >= v36)
        {
          v14 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 3) + 1;
          if (v14 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::pair<std::string_view,std::__fs::filesystem::PathPartKind>>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v36 - v34) >> 3) > v14)
          {
            v14 = 0x5555555555555556 * ((v36 - v34) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 3) >= 0x555555555555555)
          {
            v15 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v15 = v14;
          }

          v38 = &v34;
          if (v15)
          {
            std::allocator<std::pair<std::string_view,std::__fs::filesystem::PathPartKind>>::allocate_at_least[abi:ne200100](&v34, v15);
          }

          v16 = 8 * ((v35 - v34) >> 3);
          *v16 = v8;
          *(v16 + 8) = v9;
          *(v16 + 16) = v11;
          goto LABEL_40;
        }

        v7 = 0;
        v35->__pn_.__r_.__value_.__r.__words[0] = v8;
        v12->__pn_.__r_.__value_.__l.__size_ = v9;
        v13 = v12 + 1;
        v12->__pn_.__r_.__value_.__s.__data_[16] = v11;
LABEL_41:
        v35 = v13;
        goto LABEL_42;
      }

      if (*v31 != 11822)
      {
        v9 = 2;
        goto LABEL_28;
      }

      v20 = v35;
      if (v34 == v35)
      {
        goto LABEL_47;
      }

      v21 = v35[-1].__pn_.__r_.__value_.__s.__data_[16];
      if (v21 != 1)
      {
        if (v21 == 2)
        {
          v13 = v35 - 1;
          v6 -= v35[-1].__pn_.__r_.__value_.__l.__size_;
          v7 = 1;
          goto LABEL_41;
        }

LABEL_47:
        v6 += 2;
        if (v35 < v36)
        {
          v7 = 0;
          v35->__pn_.__r_.__value_.__r.__words[0] = "..";
          v20->__pn_.__r_.__value_.__l.__size_ = 2;
          v13 = v20 + 1;
          v20->__pn_.__r_.__value_.__s.__data_[16] = 4;
          goto LABEL_41;
        }

        v22 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 3) + 1;
        if (v22 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::pair<std::string_view,std::__fs::filesystem::PathPartKind>>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v36 - v34) >> 3) > v22)
        {
          v22 = 0x5555555555555556 * ((v36 - v34) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 3) >= 0x555555555555555)
        {
          v23 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v23 = v22;
        }

        v38 = &v34;
        if (v23)
        {
          std::allocator<std::pair<std::string_view,std::__fs::filesystem::PathPartKind>>::allocate_at_least[abi:ne200100](&v34, v23);
        }

        v16 = 8 * ((v35 - v34) >> 3);
        *v16 = "..";
        *(v16 + 8) = 2;
        *(v16 + 16) = 4;
LABEL_40:
        v13 = (v16 + 24);
        v17 = (v16 - (v35 - v34));
        memcpy(v17, v34, v35 - v34);
        v18 = v34;
        v19 = v36;
        v34 = v17;
        v35 = v13;
        v36 = 0;
        v37[0] = v18;
        v37[2] = v18;
        v37[3] = v19;
        v37[1] = v18;
        std::__split_buffer<std::pair<std::string_view,std::__fs::filesystem::PathPartKind>>::~__split_buffer(v37);
        v7 = 0;
        goto LABEL_41;
      }

      v7 = 0;
LABEL_42:
      std::__fs::filesystem::parser::PathParser::increment(v30);
    }
  }

  v29 = this->__pn_.__r_.__value_.__r.__words[0];

  std::string::__init_copy_ctor_external(&retstr->__pn_, v29, 0);
  return this;
}

void sub_1922A53DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a15)
  {
    MEMORY[0x193B0CA40](a15, a17 - a15);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::pair<std::string_view,std::__fs::filesystem::PathPartKind>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<std::pair<std::string_view,std::__fs::filesystem::PathPartKind>>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::pair<std::string_view,std::__fs::filesystem::PathPartKind>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

std::__fs::filesystem::path *__cdecl std::__fs::filesystem::path::lexically_relative(std::__fs::filesystem::path *__return_ptr retstr, const std::__fs::filesystem::path *this, const std::__fs::filesystem::path *__base)
{
  v4 = this;
  size = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v7 = this->__pn_.__r_.__value_.__r.__words[0];
    size = this->__pn_.__r_.__value_.__l.__size_;
  }

  else
  {
    v7 = this;
  }

  v37 = v7;
  v38 = size;
  __s1 = 0;
  __n = 0;
  v41 = 1;
  std::__fs::filesystem::parser::PathParser::increment(&v37);
  v8 = HIBYTE(__base->__pn_.__r_.__value_.__r.__words[2]);
  if ((v8 & 0x80u) == 0)
  {
    v9 = __base;
  }

  else
  {
    v9 = __base->__pn_.__r_.__value_.__r.__words[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = __base->__pn_.__r_.__value_.__l.__size_;
  }

  *&v34 = v9;
  *(&v34 + 1) = v8;
  __s2[0] = 0;
  __s2[1] = 0;
  LOBYTE(v36) = 1;
  result = std::__fs::filesystem::parser::PathParser::increment(&v34);
  v11 = v36;
  if (v41 == 2 && v36 == 2)
  {
    if (__n != __s2[1])
    {
      goto LABEL_92;
    }

    result = memcmp(__s1, __s2[0], __n);
    if (result)
    {
      goto LABEL_92;
    }

LABEL_16:
    result = std::__fs::filesystem::parser::PathParser::increment(&v37);
    v11 = v36;
    goto LABEL_19;
  }

  v12 = v41 & 0xFE;
  if (v41 != v36)
  {
    if (v12 == 2 || (v36 & 0xFE) == 2)
    {
      goto LABEL_92;
    }

    goto LABEL_19;
  }

  if (v12 == 2)
  {
    goto LABEL_16;
  }

LABEL_19:
  if ((v11 & 0xFE) == 2)
  {
    result = std::__fs::filesystem::parser::PathParser::increment(&v34);
    v11 = v36;
  }

  if (v41 != v11 && ((v41 & 0xFE) == 2 || (v11 & 0xFE) == 2))
  {
    goto LABEL_92;
  }

  v13 = SHIBYTE(v4->__pn_.__r_.__value_.__r.__words[2]);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v14 = v4;
    v4 = v4->__pn_.__r_.__value_.__r.__words[0];
    v13 = v14->__pn_.__r_.__value_.__l.__size_;
  }

  v37 = v4;
  v38 = v13;
  __s1 = 0;
  __n = 0;
  v41 = 1;
  std::__fs::filesystem::parser::PathParser::increment(&v37);
  v15 = HIBYTE(__base->__pn_.__r_.__value_.__r.__words[2]);
  if ((v15 & 0x80u) == 0)
  {
    v16 = __base;
  }

  else
  {
    v16 = __base->__pn_.__r_.__value_.__r.__words[0];
  }

  if ((v15 & 0x80u) != 0)
  {
    v15 = __base->__pn_.__r_.__value_.__l.__size_;
  }

  *&v34 = v16;
  *(&v34 + 1) = v15;
  __s2[0] = 0;
  __s2[1] = 0;
  LOBYTE(v36) = 1;
  for (result = std::__fs::filesystem::parser::PathParser::increment(&v34); ; result = std::__fs::filesystem::parser::PathParser::increment(&v34))
  {
    v17 = v41;
    if (v41 == 1 || v41 == 6)
    {
      break;
    }

    if (v36 == 1 || v36 == 6 || v41 != v36)
    {
      goto LABEL_69;
    }

    if (v41 <= 3u)
    {
      if (v41 != 2)
      {
        if (*__s1 == 92)
        {
          result = "\";
        }

        else
        {
          result = "/";
        }

        if (*__s2[0] == 92)
        {
          v21 = "\";
        }

        else
        {
          v21 = "/";
        }

        v22 = 1;
        goto LABEL_60;
      }

LABEL_54:
      result = __s1;
      v22 = __n;
      goto LABEL_56;
    }

    if (v41 == 4)
    {
      goto LABEL_54;
    }

    v22 = 0;
    result = &byte_19231D823;
LABEL_56:
    if (v41 == 5)
    {
      v23 = 0;
      v21 = &byte_19231D823;
    }

    else
    {
      v21 = __s2[0];
      v23 = __s2[1];
    }

    if (v22 != v23)
    {
      goto LABEL_69;
    }

LABEL_60:
    result = memcmp(result, v21, v22);
    if (v17 != 3 && result)
    {
      goto LABEL_69;
    }

    std::__fs::filesystem::parser::PathParser::increment(&v37);
  }

  if (v36 == 6 || v36 == 1)
  {
    return std::__fs::filesystem::path::path[abi:ne200100]<char [2],void>(&retstr->__pn_, ".");
  }

LABEL_69:
  v25 = 0;
  v31 = v34;
  v32 = *__s2;
  v33 = v36;
  while (2)
  {
    if (v33 <= 3u)
    {
      if (v33 != 2)
      {
        if (v33 != 3)
        {
          goto LABEL_87;
        }

        if (*v32 == 92)
        {
          v26 = "\";
        }

        else
        {
          v26 = "/";
        }

LABEL_84:
        if (*v26 != 46)
        {
          goto LABEL_85;
        }

        goto LABEL_86;
      }

LABEL_79:
      if (*(&v32 + 1))
      {
        v26 = v32;
        if (*(&v32 + 1) == 1)
        {
          goto LABEL_84;
        }

        if (*(&v32 + 1) == 2 && *v32 == 11822)
        {
          --v25;
        }

        else
        {
LABEL_85:
          ++v25;
        }
      }

LABEL_86:
      result = std::__fs::filesystem::parser::PathParser::increment(&v31);
      continue;
    }

    break;
  }

  if (v33 == 4)
  {
    goto LABEL_79;
  }

  if (v33 == 5)
  {
    goto LABEL_86;
  }

LABEL_87:
  if ((v25 & 0x80000000) == 0)
  {
    if (!v25 && (((1 << v41) & 0x62) != 0 || ((1 << v41) & 0x14) != 0 && !__n))
    {
      return std::__fs::filesystem::path::path[abi:ne200100]<char [2],void>(&retstr->__pn_, ".");
    }

    retstr->__pn_.__r_.__value_.__r.__words[0] = 0;
    retstr->__pn_.__r_.__value_.__l.__size_ = 0;
    v27 = v25 + 1;
    retstr->__pn_.__r_.__value_.__r.__words[2] = 0;
    while (--v27)
    {
      result = std::__fs::filesystem::path::append[abi:ne200100]<char [1]>(&retstr->__pn_, "..");
    }

    while (2)
    {
      if (v41 == 1 || v41 == 6)
      {
        return result;
      }

      if (v41 > 3u)
      {
        if (v41 == 4)
        {
          goto LABEL_105;
        }

        v30 = 0;
        v29 = &byte_19231D823;
      }

      else
      {
        if (v41 != 2)
        {
          if (*__s1 == 92)
          {
            v29 = "\";
          }

          else
          {
            v29 = "/";
          }

          v30 = 1;
          goto LABEL_107;
        }

LABEL_105:
        v29 = __s1;
        v30 = __n;
      }

LABEL_107:
      *&v31 = v29;
      *(&v31 + 1) = v30;
      std::__fs::filesystem::path::append[abi:ne200100]<std::string_view>(&retstr->__pn_, &v31);
      result = std::__fs::filesystem::parser::PathParser::increment(&v37);
      continue;
    }
  }

LABEL_92:
  retstr->__pn_.__r_.__value_.__r.__words[0] = 0;
  retstr->__pn_.__r_.__value_.__l.__size_ = 0;
  retstr->__pn_.__r_.__value_.__r.__words[2] = 0;
  return result;
}

void sub_1922A5944(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    MEMORY[0x193B0CA40](*v1, *(v1 + 16) & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

int std::__fs::filesystem::path::__compare(const std::__fs::filesystem::path *this, std::__fs::filesystem::path::__string_view a2)
{
  size = a2.__size_;
  data = a2.__data_;
  v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = this;
    this = this->__pn_.__r_.__value_.__r.__words[0];
    v4 = v5->__pn_.__r_.__value_.__l.__size_;
  }

  v30[0] = this;
  v30[1] = v4;
  v31 = 0;
  v32 = 0;
  v33 = 1;
  std::__fs::filesystem::parser::PathParser::increment(v30);
  v26[0] = data;
  v26[1] = size;
  v27 = 0;
  v28 = 0;
  v29 = 1;
  std::__fs::filesystem::parser::PathParser::increment(v26);
  v6 = v33;
  if (v33 != 2)
  {
    v9 = v29;
    if (v29 != 2)
    {
      goto LABEL_27;
    }

    v8 = 0;
    v7 = &byte_19231D823;
    goto LABEL_8;
  }

  v7 = v31;
  v8 = v32;
  v9 = v29;
  if (v29 == 2)
  {
LABEL_8:
    v9 = 2;
    v11 = v27;
    v10 = v28;
    goto LABEL_9;
  }

  v10 = 0;
  v11 = &byte_19231D823;
LABEL_9:
  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(v7, v11, v12);
  if (v8 < v10)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 == v10)
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v6 <= 2)
  {
    do
    {
      std::__fs::filesystem::parser::PathParser::increment(v30);
    }

    while (v33 < 3u);
    v9 = v29;
  }

  if (v9 <= 2)
  {
    do
    {
      std::__fs::filesystem::parser::PathParser::increment(v26);
      v9 = v29;
    }

    while (v29 < 3u);
  }

  if (v15)
  {
    return v15;
  }

  v6 = v33;
LABEL_27:
  if (v6 == 3)
  {
    if (v9 != 3)
    {
      return 1;
    }
  }

  else
  {
    if (v9 == 3)
    {
      return -1;
    }

    if (v6 > 3)
    {
      goto LABEL_34;
    }
  }

  do
  {
    std::__fs::filesystem::parser::PathParser::increment(v30);
  }

  while (v33 < 4u);
  v9 = v29;
LABEL_34:
  if (v9 <= 3)
  {
    do
    {
      std::__fs::filesystem::parser::PathParser::increment(v26);
    }

    while (v29 < 4u);
  }

  while (v33 != 1 && v33 != 6)
  {
    v17 = v29;
    if (v29 == 1 || v29 == 6)
    {
      goto LABEL_69;
    }

    if (v33 > 3u)
    {
      if (v33 == 4)
      {
LABEL_51:
        v19 = v31;
        v20 = v32;
        goto LABEL_53;
      }

      v20 = 0;
      v19 = &byte_19231D823;
    }

    else
    {
      if (v33 == 2)
      {
        goto LABEL_51;
      }

      if (*v31 == 92)
      {
        v19 = "\";
      }

      else
      {
        v19 = "/";
      }

      v20 = 1;
    }

LABEL_53:
    if (v29 > 3u)
    {
      if (v29 == 4)
      {
LABEL_60:
        v21 = v27;
        v22 = v28;
        goto LABEL_62;
      }

      v22 = 0;
      v21 = &byte_19231D823;
    }

    else
    {
      if (v29 == 2)
      {
        goto LABEL_60;
      }

      if (*v27 == 92)
      {
        v21 = "\";
      }

      else
      {
        v21 = "/";
      }

      v22 = 1;
    }

LABEL_62:
    if (v22 >= v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = v22;
    }

    v24 = memcmp(v19, v21, v23);
    if (v24)
    {
      return v24;
    }

    if (v20 != v22)
    {
      if (v20 < v22)
      {
        return -1;
      }

      else
      {
        return 1;
      }
    }

    std::__fs::filesystem::parser::PathParser::increment(v30);
    std::__fs::filesystem::parser::PathParser::increment(v26);
  }

  v17 = v29;
LABEL_69:
  if (v33 == 6)
  {
    if (v17 != 6)
    {
      return -1;
    }
  }

  else if (v17 == 6)
  {
    return 1;
  }

  return 0;
}

size_t std::__fs::filesystem::hash_value(const std::__fs::filesystem::path *__p)
{
  size = HIBYTE(__p->__pn_.__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p->__pn_.__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = __p->__pn_.__r_.__value_.__l.__size_;
  }

  v10[0] = v2;
  v10[1] = size;
  v11 = 0;
  v12 = 0;
  v13 = 1;
  std::__fs::filesystem::parser::PathParser::increment(v10);
  v3 = 0;
  while (v13 <= 3u)
  {
    if (v13 == 2)
    {
      goto LABEL_14;
    }

    if (v13 != 3)
    {
      return v3;
    }

    v4 = 1;
    v5 = "/";
LABEL_15:
    v6 = std::__string_view_hash<char>::operator()[abi:ne200100](&v9, v5, v4);
    v7 = __ROR8__(v6 + 16, 16);
    v3 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v3 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v3 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ v7)))) >> 47))) ^ v6;
    std::__fs::filesystem::parser::PathParser::increment(v10);
  }

  if (v13 == 4)
  {
LABEL_14:
    v5 = v11;
    v4 = v12;
    goto LABEL_15;
  }

  if (v13 == 5)
  {
    v4 = 0;
    v5 = &byte_19231D823;
    goto LABEL_15;
  }

  return v3;
}

std::__fs::filesystem::path::iterator *__cdecl std::__fs::filesystem::path::begin(std::__fs::filesystem::path::iterator *__return_ptr retstr, const std::__fs::filesystem::path *this)
{
  size = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v5 = this->__pn_.__r_.__value_.__r.__words[0];
    size = this->__pn_.__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = this;
  }

  v10[0] = v5;
  v10[1] = size;
  v11 = 0;
  v12 = _BeforeBegin;
  result = std::__fs::filesystem::parser::PathParser::increment(v10);
  retstr->__stashed_elem_.__pn_.__r_.__value_.__r.__words[0] = 0;
  retstr->__stashed_elem_.__pn_.__r_.__value_.__l.__size_ = 0;
  retstr->__stashed_elem_.__pn_.__r_.__value_.__r.__words[2] = 0;
  retstr->__path_ptr_ = this;
  v7 = v12;
  retstr->__state_ = v12;
  retstr->__entry_ = v11;
  data = &byte_19231D823;
  v9 = 0;
  if (((1 << v7) & 0x62) == 0)
  {
    if (((1 << v7) & 0x14) != 0)
    {
      v9 = v11.__size_;
      if (v11.__size_ >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      data = v11.__data_;
      if (v11.__size_ >= 0x17)
      {
        operator new();
      }
    }

    else
    {
      if (*v11.__data_ == 92)
      {
        data = "\";
      }

      else
      {
        data = "/";
      }

      v9 = 1;
    }
  }

  HIBYTE(v14) = v9;
  if (v9)
  {
    result = memmove(&v13, data, v9);
  }

  *(&v13 + v9) = 0;
  if (SHIBYTE(retstr->__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    result = MEMORY[0x193B0CA40](retstr->__stashed_elem_.__pn_.__r_.__value_.__r.__words[0], retstr->__stashed_elem_.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  *&retstr->__stashed_elem_.__pn_.__r_.__value_.__l.__data_ = v13;
  retstr->__stashed_elem_.__pn_.__r_.__value_.__r.__words[2] = v14;
  return result;
}

std::__fs::filesystem::path::iterator *__cdecl std::__fs::filesystem::path::end(std::__fs::filesystem::path::iterator *__return_ptr retstr, std::__fs::filesystem::path::iterator *this)
{
  *&retstr->__stashed_elem_.__pn_.__r_.__value_.__r.__words[2] = 0u;
  retstr->__entry_ = 0u;
  *&retstr->__stashed_elem_.__pn_.__r_.__value_.__l.__data_ = 0u;
  retstr->__state_ = _AtEnd;
  retstr->__path_ptr_ = &this->__stashed_elem_;
  return this;
}

std::__fs::filesystem::path::iterator *__cdecl std::__fs::filesystem::path::iterator::__increment(std::__fs::filesystem::path::iterator *this)
{
  path_ptr = this->__path_ptr_;
  size = SHIBYTE(path_ptr->__pn_.__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    path_ptr = path_ptr->__pn_.__r_.__value_.__r.__words[0];
    size = this->__path_ptr_->__pn_.__r_.__value_.__l.__size_;
  }

  state = this->__state_;
  v10[0] = path_ptr;
  v10[1] = size;
  entry = this->__entry_;
  v12 = state;
  std::__fs::filesystem::parser::PathParser::increment(v10);
  v5 = v12;
  this->__state_ = v12;
  this->__entry_ = entry;
  data = &byte_19231D823;
  v7 = 0;
  v8 = 1 << v5;
  if ((v8 & 0x62) == 0)
  {
    if ((v8 & 0x14) != 0)
    {
      v7 = entry.__size_;
      if (entry.__size_ >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      data = entry.__data_;
      if (entry.__size_ >= 0x17)
      {
        operator new();
      }
    }

    else
    {
      if (*entry.__data_ == 92)
      {
        data = "\";
      }

      else
      {
        data = "/";
      }

      v7 = 1;
    }
  }

  HIBYTE(v14) = v7;
  if (v7)
  {
    memmove(&v13, data, v7);
  }

  *(&v13 + v7) = 0;
  if (SHIBYTE(this->__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](this->__stashed_elem_.__pn_.__r_.__value_.__r.__words[0], this->__stashed_elem_.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  *&this->__stashed_elem_.__pn_.__r_.__value_.__l.__data_ = v13;
  this->__stashed_elem_.__pn_.__r_.__value_.__r.__words[2] = v14;
  return this;
}

std::__fs::filesystem::path::iterator *__cdecl std::__fs::filesystem::path::iterator::__decrement(std::__fs::filesystem::path::iterator *this)
{
  path_ptr = this->__path_ptr_;
  size = SHIBYTE(path_ptr->__pn_.__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    path_ptr = path_ptr->__pn_.__r_.__value_.__r.__words[0];
    size = this->__path_ptr_->__pn_.__r_.__value_.__l.__size_;
  }

  state = this->__state_;
  v10[0] = path_ptr;
  v10[1] = size;
  entry = this->__entry_;
  v12 = state;
  std::__fs::filesystem::parser::PathParser::decrement(v10);
  v5 = v12;
  this->__state_ = v12;
  this->__entry_ = entry;
  data = &byte_19231D823;
  v7 = 0;
  v8 = 1 << v5;
  if ((v8 & 0x62) == 0)
  {
    if ((v8 & 0x14) != 0)
    {
      v7 = entry.__size_;
      if (entry.__size_ >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      data = entry.__data_;
      if (entry.__size_ >= 0x17)
      {
        operator new();
      }
    }

    else
    {
      if (*entry.__data_ == 92)
      {
        data = "\";
      }

      else
      {
        data = "/";
      }

      v7 = 1;
    }
  }

  HIBYTE(v14) = v7;
  if (v7)
  {
    memmove(&v13, data, v7);
  }

  *(&v13 + v7) = 0;
  if (SHIBYTE(this->__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](this->__stashed_elem_.__pn_.__r_.__value_.__r.__words[0], this->__stashed_elem_.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  *&this->__stashed_elem_.__pn_.__r_.__value_.__l.__data_ = v13;
  this->__stashed_elem_.__pn_.__r_.__value_.__r.__words[2] = v14;
  return this;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E73AD5B8, MEMORY[0x1E69E55F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E5658] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5638], MEMORY[0x1E69E5618]);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E73AD5C0, MEMORY[0x1E69E55F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E5660] + 16);
  return result;
}

uint64_t std::__fs::filesystem::parser::PathParser::increment(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 - 2) >= 3)
  {
    if ((v1 - 5) < 2)
    {
LABEL_15:
      *(this + 32) = 6;
      *(this + 16) = 0;
      *(this + 24) = 0;
      return this;
    }

    v2 = *this;
  }

  else
  {
    v2 = (*(this + 16) + *(this + 24));
  }

  v3 = (*this + *(this + 8));
  if (v2 == v3)
  {
    goto LABEL_15;
  }

  if ((v1 - 1) < 2)
  {
    if (v2)
    {
      v4 = 1;
      if (v2 >= v3)
      {
        v4 = -1;
      }

      if (*v2 == 47)
      {
        v5 = v2;
        while (1)
        {
          v5 += v4;
          if (v5 == v3)
          {
            break;
          }

          if (*v5 != 47)
          {
            goto LABEL_46;
          }
        }

        v5 = (*this + *(this + 8));
LABEL_46:
        v15 = 3;
        goto LABEL_49;
      }

      v5 = v2;
      while (1)
      {
        v5 += v4;
        if (v5 == v3)
        {
          break;
        }

        if (*v5 == 47)
        {
          goto LABEL_48;
        }
      }

      v5 = (*this + *(this + 8));
    }

    else
    {
      v5 = 0;
    }

LABEL_48:
    v15 = 4;
LABEL_49:
    *(this + 32) = v15;
    v7 = v5 - v2;
    goto LABEL_50;
  }

  if (v1 == 3)
  {
    if (v2 && *v2 != 47)
    {
      if (v2 < v3)
      {
        v16 = 1;
      }

      else
      {
        v16 = -1;
      }

      v6 = v2;
      while (1)
      {
        v6 += v16;
        if (v6 == v3)
        {
          break;
        }

        if (*v6 == 47)
        {
          goto LABEL_20;
        }
      }

      v6 = (*this + *(this + 8));
    }

    else
    {
      v6 = 0;
    }

LABEL_20:
    *(this + 32) = 4;
    v7 = v6 - v2;
    goto LABEL_50;
  }

  if (!v2 || *v2 != 47)
  {
    v12 = 0;
LABEL_40:
    *(this + 32) = 5;
    v7 = v12 - v2;
LABEL_50:
    *(this + 16) = v2;
    *(this + 24) = v7;
    return this;
  }

  if (v2 < v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  v9 = v2;
  v10 = v2;
  do
  {
    v11 = v10;
    v10 += v8;
    if (v10 == v3)
    {
      v12 = v10;
      goto LABEL_40;
    }

    v9 += v8;
  }

  while (*v10 == 47);
  v12 = &v11[v8];
  if (v10 == v3 || *v10 == 47)
  {
    goto LABEL_40;
  }

  if (v10 < v3)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  v14 = v10;
  while (1)
  {
    v14 += v13;
    if (v14 == v3)
    {
      break;
    }

    if (*v14 == 47)
    {
      goto LABEL_61;
    }
  }

  v14 = (*this + *(this + 8));
LABEL_61:
  *(this + 32) = 4;
  *(this + 16) = v10;
  *(this + 24) = v14 - v9;
  return this;
}

unint64_t *std::__fs::filesystem::parser::PathParser::decrement(unint64_t *this)
{
  v1 = *this;
  v2 = *(this + 32);
  if ((v2 - 3) >= 3)
  {
    if ((v2 - 1) < 2)
    {
LABEL_9:
      *(this + 32) = 1;
      this[2] = 0;
      this[3] = 0;
      return this;
    }

    v3 = v1 + this[1];
  }

  else
  {
    v3 = this[2];
  }

  if (v3 == v1)
  {
    goto LABEL_9;
  }

  v4 = (v1 - 1);
  v5 = (v3 - 1);
  if (*(this + 32) <= 4u)
  {
    if (v2 == 3)
    {
      *(this + 32) = 2;
      this[2] = v1;
      this[3] = v3 - v1;
      return this;
    }

    if (*v5 == 47)
    {
      v7 = v3 >= v1;
      v8 = v3 - v1;
      v9 = 1;
      if (v7)
      {
        v9 = -1;
      }

      do
      {
        v5 += v9;
        if (v5 == v4)
        {
          *(this + 32) = 3;
          this[2] = v1;
          this[3] = v8;
          return this;
        }
      }

      while (*v5 == 47);
      if (v5 < v4)
      {
        v10 = 1;
      }

      else
      {
        v10 = -1;
      }

      v11 = &v5[v10];
      do
      {
        v12 = v11;
        if (v11 == v4)
        {
          break;
        }

        v13 = *v11;
        v11 += v10;
      }

      while (v13 != 47);
    }

    else
    {
      v5 = 0;
      v12 = 0;
    }

    v18 = v12 + 1;
    *(this + 32) = 4;
    v19 = v5 - v12;
    goto LABEL_41;
  }

  if (v2 == 5)
  {
    if (*v5 == 47)
    {
      v6 = 0;
    }

    else
    {
      if (v3 < v1)
      {
        v20 = 1;
      }

      else
      {
        v20 = -1;
      }

      v21 = (v20 + v3 - 1);
      do
      {
        v6 = v21;
        if (v21 == v4)
        {
          break;
        }

        v22 = *v21;
        v21 += v20;
      }

      while (v22 != 47);
    }

    v18 = v6 + 1;
    *(this + 32) = 4;
    v19 = v3 - (v6 + 1);
LABEL_41:
    this[2] = v18;
    this[3] = v19;
    return this;
  }

  v14 = 1;
  if (v3 >= v1)
  {
    v14 = -1;
  }

  if (*(v3 - 1) == 47)
  {
    v15 = 0;
    v16 = v14 + v3 - 1;
    while ((v16 + v15) != v4)
    {
      v17 = *(v16 + v15);
      v15 += v14;
      if (v17 != 47)
      {
        v18 = (v3 + v15);
        *(this + 32) = 5;
        v19 = -v15;
        goto LABEL_41;
      }
    }

    *(this + 32) = 3;
    this[2] = v1;
    this[3] = v3 - v1;
  }

  else
  {
    v23 = v14;
    do
    {
      v24 = v23;
      v25 = v3 + v23;
      v26 = (v3 + v23 - 1);
      if (v26 == v4)
      {
        break;
      }

      v27 = *v26;
      v23 = v24 + v14;
    }

    while (v27 != 47);
    *(this + 32) = 4;
    this[2] = v25;
    this[3] = -v24;
  }

  return this;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::allocator<std::pair<std::string_view,std::__fs::filesystem::PathPartKind>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__split_buffer<std::pair<std::string_view,std::__fs::filesystem::PathPartKind>>::~__split_buffer(uint64_t *a1)
{
  v2 = a1[2];
  if (v2 != a1[1])
  {
    a1[2] = (v2 - a1[1] - 24) % 0x18uLL + a1[1];
  }

  v3 = *a1;
  if (*a1)
  {
    MEMORY[0x193B0CA40](v3, a1[3] - v3);
  }

  return a1;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [2],void>(std::string *this, std::string *a2)
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

void sub_1922A6D68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    std::__fs::filesystem::path::path[abi:ne200100]<char [2],void>(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__dst, __src, a3, v7);
    if (v19 >= 0)
    {
      v12 = __dst;
    }

    else
    {
      v12 = __dst[0];
    }

    if (v19 >= 0)
    {
      v13 = HIBYTE(v19);
    }

    else
    {
      v13 = __dst[1];
    }

    std::string::append(this, v12, v13);
    if (SHIBYTE(v19) < 0)
    {
      MEMORY[0x193B0CA40](__dst[0], v19 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  return this;
}

void sub_1922A6EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::__fs::filesystem::path::replace_extension(&a10);
  }

  _Unwind_Resume(exception_object);
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

std::string *std::__fs::filesystem::path::append[abi:ne200100]<std::string_view>(std::string *this, uint64_t a2)
{
  if (*(a2 + 8) && **a2 == 47)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }
  }

  else if (std::__fs::filesystem::path::__filename(this).__size_)
  {
    std::string::push_back(this, 47);
  }

  std::string::append[abi:ne200100]<char const*,0>(this, *a2, (*a2 + *(a2 + 8)));
  return this;
}

std::string *std::__fs::filesystem::path::append[abi:ne200100]<char [1]>(std::string *this, std::string *__src)
{
  if (__src->__r_.__value_.__s.__data_[0] == 47)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }
  }

  else if (std::__fs::filesystem::path::__filename(this).__size_)
  {
    std::string::push_back(this, 47);
  }

  v4 = (__src - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, __src, v4);
  return this;
}

void std::bad_function_call::~bad_function_call(std::bad_function_call *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x193B0CA40);
}

size_t std::__next_prime(size_t __n)
{
  if (__n > 0xD3)
  {
    if (__n >= 0xFFFFFFFFFFFFFFC6)
    {
      std::__throw_overflow_error[abi:ne200100]("__next_prime overflow");
    }

    v8 = __n / 0xD2;
    v9 = 210 * (__n / 0xD2);
    v10 = 48;
    do
    {
      v12 = v10 >> 1;
      v13 = &v11[v10 >> 1];
      v15 = *v13;
      v14 = v13 + 1;
      v10 += ~(v10 >> 1);
      if (__n % 0xD2 > v15)
      {
        v11 = v14;
      }

      else
      {
        v10 = v12;
      }
    }

    while (v10);
LABEL_16:
    v17 = 0x14u;
    while (1)
    {
      if (result / v18 < v18)
      {
        break;
      }

      if (result == result / v18 * v18)
      {
LABEL_117:
        if (v16 == 47)
        {
          ++v8;
          v16 = 0;
        }

        else
        {
          ++v16;
        }

        v9 = 210 * v8;
        goto LABEL_16;
      }

      v17 += 4;
      if (v17 == 188)
      {
        v19 = 419;
        while (1)
        {
          v20 = result / (v19 - 208);
          if (v20 < v19 - 208)
          {
            return result;
          }

          if (result == v20 * (v19 - 208))
          {
            goto LABEL_117;
          }

          v21 = result / (v19 - 198);
          if (v21 < v19 - 198)
          {
            return result;
          }

          if (result == v21 * (v19 - 198))
          {
            goto LABEL_117;
          }

          v22 = result / (v19 - 196);
          if (v22 < v19 - 196)
          {
            return result;
          }

          if (result == v22 * (v19 - 196))
          {
            goto LABEL_117;
          }

          v23 = result / (v19 - 192);
          if (v23 < v19 - 192)
          {
            return result;
          }

          if (result == v23 * (v19 - 192))
          {
            goto LABEL_117;
          }

          v24 = result / (v19 - 190);
          if (v24 < v19 - 190)
          {
            return result;
          }

          if (result == v24 * (v19 - 190))
          {
            goto LABEL_117;
          }

          v25 = result / (v19 - 186);
          if (v25 < v19 - 186)
          {
            return result;
          }

          if (result == v25 * (v19 - 186))
          {
            goto LABEL_117;
          }

          v26 = result / (v19 - 180);
          if (v26 < v19 - 180)
          {
            return result;
          }

          if (result == v26 * (v19 - 180))
          {
            goto LABEL_117;
          }

          v27 = result / (v19 - 178);
          if (v27 < v19 - 178)
          {
            return result;
          }

          if (result == v27 * (v19 - 178))
          {
            goto LABEL_117;
          }

          v28 = result / (v19 - 172);
          if (v28 < v19 - 172)
          {
            return result;
          }

          if (result == v28 * (v19 - 172))
          {
            goto LABEL_117;
          }

          v29 = result / (v19 - 168);
          if (v29 < v19 - 168)
          {
            return result;
          }

          if (result == v29 * (v19 - 168))
          {
            goto LABEL_117;
          }

          v30 = result / (v19 - 166);
          if (v30 < v19 - 166)
          {
            return result;
          }

          if (result == v30 * (v19 - 166))
          {
            goto LABEL_117;
          }

          v31 = result / (v19 - 162);
          if (v31 < v19 - 162)
          {
            return result;
          }

          if (result == v31 * (v19 - 162))
          {
            goto LABEL_117;
          }

          v32 = result / (v19 - 156);
          if (v32 < v19 - 156)
          {
            return result;
          }

          if (result == v32 * (v19 - 156))
          {
            goto LABEL_117;
          }

          v33 = result / (v19 - 150);
          if (v33 < v19 - 150)
          {
            return result;
          }

          if (result == v33 * (v19 - 150))
          {
            goto LABEL_117;
          }

          v34 = result / (v19 - 148);
          if (v34 < v19 - 148)
          {
            return result;
          }

          if (result == v34 * (v19 - 148))
          {
            goto LABEL_117;
          }

          v35 = result / (v19 - 142);
          if (v35 < v19 - 142)
          {
            return result;
          }

          if (result == v35 * (v19 - 142))
          {
            goto LABEL_117;
          }

          v36 = result / (v19 - 138);
          if (v36 < v19 - 138)
          {
            return result;
          }

          if (result == v36 * (v19 - 138))
          {
            goto LABEL_117;
          }

          v37 = result / (v19 - 136);
          if (v37 < v19 - 136)
          {
            return result;
          }

          if (result == v37 * (v19 - 136))
          {
            goto LABEL_117;
          }

          v38 = result / (v19 - 130);
          if (v38 < v19 - 130)
          {
            return result;
          }

          if (result == v38 * (v19 - 130))
          {
            goto LABEL_117;
          }

          v39 = result / (v19 - 126);
          if (v39 < v19 - 126)
          {
            return result;
          }

          if (result == v39 * (v19 - 126))
          {
            goto LABEL_117;
          }

          v40 = result / (v19 - 120);
          if (v40 < v19 - 120)
          {
            return result;
          }

          if (result == v40 * (v19 - 120))
          {
            goto LABEL_117;
          }

          v41 = result / (v19 - 112);
          if (v41 < v19 - 112)
          {
            return result;
          }

          if (result == v41 * (v19 - 112))
          {
            goto LABEL_117;
          }

          v42 = result / (v19 - 108);
          if (v42 < v19 - 108)
          {
            return result;
          }

          if (result == v42 * (v19 - 108))
          {
            goto LABEL_117;
          }

          v43 = result / (v19 - 106);
          if (v43 < v19 - 106)
          {
            return result;
          }

          if (result == v43 * (v19 - 106))
          {
            goto LABEL_117;
          }

          v44 = result / (v19 - 102);
          if (v44 < v19 - 102)
          {
            return result;
          }

          if (result == v44 * (v19 - 102))
          {
            goto LABEL_117;
          }

          v45 = result / (v19 - 100);
          if (v45 < v19 - 100)
          {
            return result;
          }

          if (result == v45 * (v19 - 100))
          {
            goto LABEL_117;
          }

          v46 = result / (v19 - 96);
          if (v46 < v19 - 96)
          {
            return result;
          }

          if (result == v46 * (v19 - 96))
          {
            goto LABEL_117;
          }

          v47 = result / (v19 - 88);
          if (v47 < v19 - 88)
          {
            return result;
          }

          if (result == v47 * (v19 - 88))
          {
            goto LABEL_117;
          }

          v48 = result / (v19 - 82);
          if (v48 < v19 - 82)
          {
            return result;
          }

          if (result == v48 * (v19 - 82))
          {
            goto LABEL_117;
          }

          v49 = result / (v19 - 78);
          if (v49 < v19 - 78)
          {
            return result;
          }

          if (result == v49 * (v19 - 78))
          {
            goto LABEL_117;
          }

          v50 = result / (v19 - 72);
          if (v50 < v19 - 72)
          {
            return result;
          }

          if (result == v50 * (v19 - 72))
          {
            goto LABEL_117;
          }

          v51 = result / (v19 - 70);
          if (v51 < v19 - 70)
          {
            return result;
          }

          if (result == v51 * (v19 - 70))
          {
            goto LABEL_117;
          }

          v52 = result / (v19 - 66);
          if (v52 < v19 - 66)
          {
            return result;
          }

          if (result == v52 * (v19 - 66))
          {
            goto LABEL_117;
          }

          v53 = result / (v19 - 60);
          if (v53 < v19 - 60)
          {
            return result;
          }

          if (result == v53 * (v19 - 60))
          {
            goto LABEL_117;
          }

          v54 = result / (v19 - 58);
          if (v54 < v19 - 58)
          {
            return result;
          }

          if (result == v54 * (v19 - 58))
          {
            goto LABEL_117;
          }

          v55 = result / (v19 - 52);
          if (v55 < v19 - 52)
          {
            return result;
          }

          if (result == v55 * (v19 - 52))
          {
            goto LABEL_117;
          }

          v56 = result / (v19 - 46);
          if (v56 < v19 - 46)
          {
            return result;
          }

          if (result == v56 * (v19 - 46))
          {
            goto LABEL_117;
          }

          v57 = result / (v19 - 42);
          if (v57 < v19 - 42)
          {
            return result;
          }

          if (result == v57 * (v19 - 42))
          {
            goto LABEL_117;
          }

          v58 = result / (v19 - 40);
          if (v58 < v19 - 40)
          {
            return result;
          }

          if (result == v58 * (v19 - 40))
          {
            goto LABEL_117;
          }

          v59 = result / (v19 - 36);
          if (v59 < v19 - 36)
          {
            return result;
          }

          if (result == v59 * (v19 - 36))
          {
            goto LABEL_117;
          }

          v60 = result / (v19 - 30);
          if (v60 < v19 - 30)
          {
            return result;
          }

          if (result == v60 * (v19 - 30))
          {
            goto LABEL_117;
          }

          v61 = result / (v19 - 28);
          if (v61 < v19 - 28)
          {
            return result;
          }

          if (result == v61 * (v19 - 28))
          {
            goto LABEL_117;
          }

          v62 = result / (v19 - 22);
          if (v62 < v19 - 22)
          {
            return result;
          }

          if (result == v62 * (v19 - 22))
          {
            goto LABEL_117;
          }

          v63 = result / (v19 - 18);
          if (v63 < v19 - 18)
          {
            return result;
          }

          if (result == v63 * (v19 - 18))
          {
            goto LABEL_117;
          }

          v64 = result / (v19 - 16);
          if (v64 < v19 - 16)
          {
            return result;
          }

          if (result == v64 * (v19 - 16))
          {
            goto LABEL_117;
          }

          v65 = result / (v19 - 12);
          if (v65 < v19 - 12)
          {
            return result;
          }

          if (result == v65 * (v19 - 12))
          {
            goto LABEL_117;
          }

          v66 = result / (v19 - 10);
          if (v66 < v19 - 10)
          {
            return result;
          }

          if (result == v66 * (v19 - 10))
          {
            goto LABEL_117;
          }

          if (result / v19 < v19)
          {
            return result;
          }

          v67 = result / v19 * v19;
          v19 += 210;
          if (result == v67)
          {
            goto LABEL_117;
          }
        }
      }
    }
  }

  else
  {
    v2 = 48;
    do
    {
      v3 = v2 >> 1;
      v4 = &v1[v2 >> 1];
      v6 = *v4;
      v5 = v4 + 1;
      v2 += ~(v2 >> 1);
      if (v6 < __n)
      {
        v1 = v5;
      }

      else
      {
        v2 = v3;
      }
    }

    while (v2);
    return *v1;
  }

  return result;
}

void std::__throw_overflow_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::overflow_error::overflow_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E73AD5C8, MEMORY[0x1E69E5608]);
}

std::runtime_error *std::overflow_error::overflow_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E5670] + 16);
  return result;
}

void std::bad_weak_ptr::~bad_weak_ptr(std::bad_weak_ptr *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x193B0CA40);
}

BOOL std::__shared_count::__release_shared(std::__shared_count *this)
{
  add = atomic_fetch_add(&this->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL);
  if (!add)
  {
    (this->__on_zero_shared)(this);
  }

  return add == 0;
}

void std::__shared_weak_count::__release_shared(std::__shared_weak_count *this)
{
  if (!atomic_fetch_add(&this->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    p_shared_weak_owners = &this->__shared_weak_owners_;
    (this->__on_zero_shared)(this);
    if (!atomic_load_explicit(p_shared_weak_owners, memory_order_acquire) || !atomic_fetch_add(&this->__shared_weak_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      on_zero_shared_weak = this->__on_zero_shared_weak;

      (on_zero_shared_weak)(this);
    }
  }
}

void std::__shared_weak_count::__release_weak(std::__shared_weak_count *this)
{
  if (!atomic_load_explicit(&this->__shared_weak_owners_, memory_order_acquire) || !atomic_fetch_add(&this->__shared_weak_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (this->__on_zero_shared_weak)();
  }
}

std::__shared_weak_count *__cdecl std::__shared_weak_count::lock(std::__shared_weak_count *this)
{
  v1 = atomic_load(&this->__shared_owners_);
  if (v1 == -1)
  {
    return 0;
  }

  v2 = v1;
  while (1)
  {
    atomic_compare_exchange_strong(&this->__shared_owners_, &v2, v1 + 1);
    if (v2 == v1)
    {
      break;
    }

    v1 = v2;
    if (v2 == -1)
    {
      return 0;
    }
  }

  return this;
}

std::__sp_mut *__cdecl std::__get_sp_mut(const void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ (a1 >> 32));
  v2 = 0x9DDFEA08EB382D69 * ((a1 >> 32) ^ (v1 >> 47) ^ v1);
  return (&std::__get_sp_mut(void const*)::muts + ((9 * ((v2 >> 47) ^ v2)) & 0x1F));
}

void *__cdecl std::align(size_t __align, size_t __sz, void **__ptr, size_t *__space)
{
  v4 = *__space;
  if (*__space < __sz)
  {
    return 0;
  }

  result = ((*__ptr + __align - 1) & -__align);
  v6 = result - *__ptr;
  if (v6 > *__space - __sz)
  {
    return 0;
  }

  *__ptr = result;
  *__space = v4 - v6;
  return result;
}

unint64_t std::pmr::set_default_resource(void (***this)(std::pmr::__new_delete_memory_resource_imp *__hidden this), std::pmr::memory_resource *a2)
{
  if (this)
  {
    v2 = this;
  }

  return atomic_exchange(&std::pmr::__default_memory_resource(BOOL,std::pmr::memory_resource *)::__res, v2);
}

void **std::pmr::unsynchronized_pool_resource::__adhoc_pool::__release_ptr(void **this, std::pmr::memory_resource *a2)
{
  v2 = *this;
  if (*this)
  {
    v4 = this;
    do
    {
      v6 = *v2;
      v5 = v2[1];
      v7 = v2[2];
      this = (*(*a2 + 24))(a2);
      *v4 = v6;
      v2 = v6;
    }

    while (v6);
  }

  return this;
}

uint64_t std::pmr::unsynchronized_pool_resource::__adhoc_pool::__do_allocate(std::pmr::unsynchronized_pool_resource::__adhoc_pool *this, std::pmr::memory_resource *a2, uint64_t a3, unint64_t a4)
{
  if (a4 <= 8)
  {
    v5 = 8;
  }

  else
  {
    v5 = a4;
  }

  v6 = (a3 + 7) & 0xFFFFFFFFFFFFFFF8;
  result = (*(*a2 + 16))(a2, v6 + 24, v5);
  v8 = (result + v6);
  *v8 = *this;
  *(result + v6 + 24 - 16) = result;
  v8[2] = v5;
  *this = result + v6;
  return result;
}

char **std::pmr::unsynchronized_pool_resource::__adhoc_pool::__do_deallocate(char **this, std::pmr::memory_resource *a2, _BYTE *a3)
{
  v3 = *this;
  if (*(*this + 1) == a3)
  {
    v4 = this;
LABEL_6:
    v5 = *v3;
    this = (*(*a2 + 24))(a2, a3, v3 - a3 + 24, *(v3 + 2));
    *v4 = v5;
  }

  else
  {
    while (1)
    {
      v4 = v3;
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      if (*(v3 + 1) == a3)
      {
        goto LABEL_6;
      }
    }
  }

  return this;
}

uint64_t std::pmr::unsynchronized_pool_resource::__pool_index(std::pmr::unsynchronized_pool_resource *this, unint64_t a2, unint64_t a3)
{
  result = *(this + 8);
  if (a3 <= 8 && 1 << result >= a2)
  {
    if (a2 <= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = a2;
    }

    v5 = v4 - 1;
    if (v5 >= 8)
    {
      LODWORD(result) = 0;
      v6 = v5 >> 3;
      do
      {
        result = (result + 1);
        v7 = v6 > 1;
        v6 >>= 1;
      }

      while (v7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::pmr::unsynchronized_pool_resource::unsynchronized_pool_resource(uint64_t result, unint64_t *a2, uint64_t a3)
{
  *result = &unk_1F06C01C8;
  *(result + 8) = a3;
  *(result + 16) = 0;
  *(result + 24) = 0;
  v3 = 0x40000000;
  v5 = *a2;
  v4 = a2[1];
  if (v4 < 0x40000000)
  {
    v3 = a2[1];
  }

  if (v3 <= 8)
  {
    v3 = 8;
  }

  if (!v4)
  {
    v3 = 0x100000;
  }

  LODWORD(v6) = 0x100000;
  if (v5 < 0x100000)
  {
    v6 = *a2;
  }

  if (v5 >= 0x10)
  {
    v7 = v6;
  }

  else
  {
    v7 = 16;
  }

  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x100000;
  }

  *(result + 36) = v8;
  v9 = 1;
  if (v3 >= 9)
  {
    for (i = 8; i < v3; i *= 2)
    {
      ++v9;
    }
  }

  *(result + 32) = v9;
  return result;
}

void **std::pmr::unsynchronized_pool_resource::release(std::pmr::unsynchronized_pool_resource *this)
{
  result = std::pmr::unsynchronized_pool_resource::__adhoc_pool::__release_ptr(this + 2, *(this + 1));
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(this + 8);
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = 16 * v4;
      do
      {
        std::pmr::unsynchronized_pool_resource::__fixed_pool::__release_ptr((*(this + 3) + v5), *(this + 1));
        v5 += 16;
      }

      while (v6 != v5);
      v3 = *(this + 3);
      LODWORD(v4) = *(this + 8);
    }

    result = (*(**(this + 1) + 24))(*(this + 1), v3, 16 * v4, 8);
    *(this + 3) = 0;
  }

  return result;
}

void *std::pmr::unsynchronized_pool_resource::__fixed_pool::__release_ptr(void *this, std::pmr::memory_resource *a2)
{
  this[1] = 0;
  v2 = *this;
  if (*this)
  {
    v4 = this;
    do
    {
      v6 = *v2;
      v5 = v2[1];
      v7 = v2[2];
      this = (*(*a2 + 24))(a2);
      *v4 = v6;
      v2 = v6;
    }

    while (v6);
  }

  return this;
}

unint64_t *std::pmr::unsynchronized_pool_resource::do_allocate(std::pmr::unsynchronized_pool_resource *this, unint64_t a2, unint64_t a3)
{
  if (a3 > 8)
  {
    goto LABEL_11;
  }

  v4 = *(this + 8);
  if (1 << v4 < a2)
  {
    goto LABEL_11;
  }

  v5 = a2 <= a3 ? a3 : a2;
  v6 = v5 - 1;
  if (v6 >= 8)
  {
    v7 = 0;
    v8 = v6 >> 3;
    do
    {
      ++v7;
      v9 = v8 > 1;
      v8 >>= 1;
    }

    while (v9);
  }

  else
  {
    v7 = 0;
  }

  if (v7 == v4)
  {
LABEL_11:
    v10 = *(this + 1);
    if (a3 <= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = a3;
    }

    v12 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = (*(*v10 + 16))(v10, v12 + 24, v11);
    v14 = (v13 + v12);
    *v14 = *(this + 2);
    *(v13 + v12 + 8) = v13;
    v14[2] = v11;
    *(this + 2) = v13 + v12;
    return v13;
  }

  v16 = *(this + 3);
  if (!v16)
  {
    v16 = (*(**(this + 1) + 16))(*(this + 1), 16 * v4, 8);
    *(this + 3) = v16;
    v17 = *(this + 8);
    if (v17)
    {
      bzero(v16, 16 * v17);
      v16 = *(this + 3);
    }
  }

  v18 = &v16[16 * v7];
  v13 = v18[1];
  if (v13)
  {
    v18[1] = *v13;
    return v13;
  }

  v19 = *v18;
  if (*v18)
  {
    v19 = v19 - *(v19 + 8) + 24;
  }

  v20 = v7 + 3;
  v21 = v19 >> (v7 + 3);
  v22 = 0x400uLL >> (v7 + 3);
  if (v22 <= 0x10)
  {
    v22 = 16;
  }

  if (v21)
  {
    v23 = v21 + (v21 >> 2);
  }

  else
  {
    v23 = v22;
  }

  v24 = 0x40000000uLL >> v20;
  LODWORD(v25) = *(this + 9);
  if (v25 >= 0x100000)
  {
    v25 = 0x100000;
  }

  else
  {
    v25 = v25;
  }

  if (v24 >= v25)
  {
    v24 = v25;
  }

  if (v23 >= v24)
  {
    v23 = v24;
  }

  v26 = *(this + 1);

  return std::pmr::unsynchronized_pool_resource::__fixed_pool::__allocate_in_new_chunk(v18, v26, 1 << v20, v23 << v20);
}

void *std::pmr::unsynchronized_pool_resource::__fixed_pool::__allocate_in_new_chunk(std::pmr::unsynchronized_pool_resource::__fixed_pool *this, std::pmr::memory_resource *a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = (a4 + 7) & 0xFFFFFFFFFFFFFFF8;
  result = (*(*a2 + 16))(a2, v7 + 24, 8);
  v9 = (result + v7);
  *v9 = *this;
  *(result + v7 + 8) = result;
  v9[2] = 8;
  *this = result + v7;
  if (v4 > a3)
  {
    v10 = *(this + 1);
    v11 = result;
    v12 = a3;
    do
    {
      v11 = (v11 + a3);
      *v11 = v10;
      v10 = result + v12;
      v12 += a3;
      v4 -= a3;
    }

    while (a3 != v4);
    *(this + 1) = v11;
  }

  return result;
}

char **std::pmr::unsynchronized_pool_resource::do_deallocate(char **this, void *a2, unint64_t a3, unint64_t a4)
{
  if (a4 > 8)
  {
    return std::pmr::unsynchronized_pool_resource::__adhoc_pool::__do_deallocate(this + 2, this[1], a2);
  }

  v4 = *(this + 8);
  if (1 << v4 < a3)
  {
    return std::pmr::unsynchronized_pool_resource::__adhoc_pool::__do_deallocate(this + 2, this[1], a2);
  }

  v5 = a3 <= a4 ? a4 : a3;
  v6 = v5 - 1;
  if (v5 - 1 >= 8)
  {
    v7 = 0;
    v8 = v6 >> 3;
    do
    {
      ++v7;
      v9 = v8 > 1;
      v8 >>= 1;
    }

    while (v9);
  }

  else
  {
    v7 = 0;
  }

  if (v7 == v4)
  {
    return std::pmr::unsynchronized_pool_resource::__adhoc_pool::__do_deallocate(this + 2, this[1], a2);
  }

  v10 = &this[3][16 * v7];
  *a2 = *(v10 + 8);
  *(v10 + 8) = a2;
  return this;
}

unint64_t std::pmr::monotonic_buffer_resource::do_allocate(std::pmr::monotonic_buffer_resource *this, unint64_t a2, unint64_t a3)
{
  v5 = *(this + 2);
  if (!v5 || v5 - *(this + 1) < a2 || (result = (v5 - a2) & -a3, *(this + 1) > result) || (*(this + 2) = result) == 0)
  {
    v7 = *(this + 4);
    if (v7)
    {
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      if (v9 - v8 >= a2)
      {
        result = (v9 - a2) & -a3;
        v10 = *(v7 + 8);
        if (result && v8 <= result)
        {
          *(v7 + 16) = result;
          return result;
        }
      }

      if (a3 <= 8)
      {
        v12 = 8;
      }

      else
      {
        v12 = a3;
      }

      v13 = v7 - v8;
    }

    else
    {
      if (a3 <= 8)
      {
        v12 = 8;
      }

      else
      {
        v12 = a3;
      }

      v14 = *(this + 1);
      if (v14)
      {
        v15 = *(this + 3) - v14;
      }

      else
      {
        v15 = *(this + 3);
      }

      v13 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    v16 = v13 + 32;
    if (((a2 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= v16)
    {
      v17 = ((2 * v16 - 57) & 0xFFFFFFFFFFFFFFF8) + 32;
    }

    else
    {
      v17 = ((a2 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
    }

    v18 = (*(**(this + 5) + 16))(*(this + 5), v17, v12);
    v19 = v18 + v17;
    *(v18 + v17 - 32) = *(this + 4);
    v20 = v18 + v17 - 32;
    *(v19 - 24) = v18;
    *(v19 - 16) = v20;
    *(v19 - 8) = v12;
    *(this + 4) = v20;
    if (v17 - 32 >= a2 && (result = (v20 - a2) & -v12, v20 - (v17 - 32) <= result))
    {
      *(v19 - 16) = result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void std::pmr::monotonic_buffer_resource::~monotonic_buffer_resource(std::pmr::monotonic_buffer_resource *this)
{
  std::pmr::monotonic_buffer_resource::~monotonic_buffer_resource(this);

  JUMPOUT(0x193B0CA40);
}

{
  *this = &unk_1F06C0200;
  std::pmr::monotonic_buffer_resource::release[abi:ne200100](this);
}

void std::pmr::unsynchronized_pool_resource::~unsynchronized_pool_resource(std::pmr::unsynchronized_pool_resource *this)
{
  std::pmr::unsynchronized_pool_resource::~unsynchronized_pool_resource(this);

  JUMPOUT(0x193B0CA40);
}

{
  *this = &unk_1F06C01C8;
  std::pmr::unsynchronized_pool_resource::release(this);
}

void std::pmr::synchronized_pool_resource::~synchronized_pool_resource(std::pmr::synchronized_pool_resource *this)
{
  *this = &unk_1F06C02B0;
  v1 = (this + 8);
  std::pmr::unsynchronized_pool_resource::~unsynchronized_pool_resource((this + 72));
  std::mutex::~mutex(v1);
}

{
  *this = &unk_1F06C02B0;
  v1 = (this + 8);
  std::pmr::unsynchronized_pool_resource::~unsynchronized_pool_resource((this + 72));
  std::mutex::~mutex(v1);

  JUMPOUT(0x193B0CA40);
}