double IR::IRCoordinates::IRCoordinates(IR::IRCoordinates *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 8) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

double IR::IRCoordinates::reset(IR::IRCoordinates *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

_BYTE *IR::IRCoordinates::getParameterString@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 8)
  {
    v2 = "";
  }

  else
  {
    v2 = off_29EE51EF8[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

double IR::IRCoordinates::getAllCoordinates@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 8;
  *&result = 0x100000000;
  *a1 = xmmword_296C19A50;
  *(a1 + 16) = unk_296C19A60;
  return result;
}

BOOL IR::IRCoordinates::operator==(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  do
  {
    v3 = *(a1 + v2);
    v4 = *(a2 + v2);
    if (v3 != v4)
    {
      break;
    }

    v5 = v2 == 32;
    v2 += 4;
  }

  while (!v5);
  return v3 == v4;
}

BOOL IR::IRCoordinates::operator!=(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  do
  {
    v3 = *(a1 + v2);
    v4 = *(a2 + v2);
    if (v3 != v4)
    {
      break;
    }

    v5 = v2 == 32;
    v2 += 4;
  }

  while (!v5);
  return v3 != v4;
}

BOOL IR::IRCoordinates::equalWithAccuracy(IR::IRCoordinates *this, const IR::IRCoordinates *a2, const IR::IRCoordinates *a3, float a4)
{
  if (vabds_f32(*this, *a2) > a4)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v5 == 8)
    {
      break;
    }

    v7 = vabds_f32(*(this + v5 + 1), *(a2 + v5 + 1));
    ++v5;
  }

  while (v7 <= a4);
  return v6 > 7;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

unsigned int *IR::FixedIntegerDelay<float>::FixedIntegerDelay(unsigned int *a1, unsigned int a2, int a3)
{
  *a1 = a2;
  *(a1 + 2) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 10) = 0u;
  if (a2)
  {
    v13 = 0;
    std::vector<float>::resize(a1 + 1, a2, &v13, 0);
    if (a3)
    {
      v6 = *a1;
      v12 = 0;
      std::vector<float>::resize(a1 + 4, v6, &v12, v5);
    }
  }

  v7 = *(a1 + 1);
  v8 = *(a1 + 2) - v7;
  if (v8 >= 1)
  {
    bzero(v7, v8);
  }

  v9 = *(a1 + 4);
  v10 = *(a1 + 5) - v9;
  if (v10 >= 1)
  {
    bzero(v9, v10);
  }

  return a1;
}

void sub_296B9E868(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::resize(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (a1[1] - *a1) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v4, a3, a4);
  }
}

void IR::FixedIntegerDelay<float>::reset(void *a1)
{
  v2 = a1[1];
  v3 = a1[2] - v2;
  if (v3 >= 1)
  {
    bzero(v2, v3);
  }

  v4 = a1[4];
  v5 = a1[5] - v4;
  if (v5 >= 1)
  {

    bzero(v4, v5);
  }
}

__n128 IR::FixedIntegerDelay<float>::process(unsigned int *a1, char *__src, char *__dst, unsigned int a4)
{
  if (!a4)
  {
    return result;
  }

  v8 = *a1;
  if (!v8)
  {
    if (__src == __dst)
    {
      return result;
    }

    v12 = 4 * a4;
    v10 = __dst;
    goto LABEL_11;
  }

  v9 = *(a1 + 1);
  if (v9 == *(a1 + 2))
  {
    IR::FixedIntegerDelay<float>::process();
  }

  if (v8 <= a4)
  {
    if (__src == __dst)
    {
      v19 = *(a1 + 4);
      if (v19 == *(a1 + 5))
      {
        IR::FixedIntegerDelay<float>::process();
      }

      memcpy(v19, &__src[4 * a4 + -4 * v8], 4 * v8);
      memmove(&__dst[4 * *a1], __src, 4 * (a4 - *a1));
      v16 = *(a1 + 1);
      v18 = 4 * *a1;
      v17 = __dst;
      goto LABEL_19;
    }

    memcpy(__dst, v9, 4 * v8);
    memcpy(*(a1 + 1), &__src[4 * a4 + -4 * *a1], 4 * *a1);
    v13 = *a1;
    v10 = &__dst[4 * v13];
    v12 = 4 * (a4 - v13);
LABEL_11:
    v11 = __src;
    goto LABEL_12;
  }

  if (__src == __dst)
  {
    v15 = *(a1 + 4);
    if (v15 == *(a1 + 5))
    {
      IR::FixedIntegerDelay<float>::process();
    }

    memcpy(v15, &v9[4 * a4], 4 * (v8 - a4));
    memcpy((*(a1 + 4) + 4 * *a1 - 4 * a4), __src, 4 * a4);
    v16 = *(a1 + 1);
    v17 = __dst;
    v18 = 4 * a4;
LABEL_19:
    memcpy(v17, v16, v18);
    result = *(a1 + 2);
    v20 = *(a1 + 2);
    *(a1 + 2) = result;
    *(a1 + 2) = v20;
    v21 = *(a1 + 3);
    *(a1 + 3) = *(a1 + 6);
    *(a1 + 6) = v21;
    return result;
  }

  memcpy(__dst, v9, 4 * a4);
  memmove(*(a1 + 1), (*(a1 + 1) + 4 * a4), 4 * (*a1 - a4));
  v10 = (*(a1 + 1) + 4 * *a1 - 4 * a4);
  v11 = __src;
  v12 = 4 * a4;
LABEL_12:

  memcpy(v10, v11, v12);
  return result;
}

unsigned int *_ZN2IR17FixedIntegerDelayIDF16_EC2Ejb(unsigned int *a1, unsigned int a2, int a3)
{
  *a1 = a2;
  *(a1 + 2) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 10) = 0u;
  if (a2)
  {
    v12 = 0;
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6resizeEmRKDF16_(a1 + 1, a2, &v12, 0);
    if (a3)
    {
      v5 = *a1;
      v11 = 0;
      _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6resizeEmRKDF16_(a1 + 4, v5, &v11, 0);
    }
  }

  v6 = *(a1 + 1);
  v7 = *(a1 + 2) - v6;
  if (v7 >= 1)
  {
    bzero(v6, v7);
  }

  v8 = *(a1 + 4);
  v9 = *(a1 + 5) - v8;
  if (v9 >= 1)
  {
    bzero(v8, v9);
  }

  return a1;
}

void sub_296B9EBCC(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE6resizeEmRKDF16_(void *a1, unint64_t a2, __int16 *a3, int16x4_t a4)
{
  v4 = (a1[1] - *a1) >> 1;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE8__appendEmRKDF16_(a1, a2 - v4, a3, a4);
  }
}

void _ZN2IR17FixedIntegerDelayIDF16_E5resetEv(void *a1)
{
  v2 = a1[1];
  v3 = a1[2] - v2;
  if (v3 >= 1)
  {
    bzero(v2, v3);
  }

  v4 = a1[4];
  v5 = a1[5] - v4;
  if (v5 >= 1)
  {

    bzero(v4, v5);
  }
}

__n128 _ZN2IR17FixedIntegerDelayIDF16_E7processEPKDF16_PDF16_j(unsigned int *a1, char *__src, char *__dst, unsigned int a4)
{
  if (!a4)
  {
    return result;
  }

  v8 = *a1;
  if (!v8)
  {
    if (__src == __dst)
    {
      return result;
    }

    v12 = 2 * a4;
    v10 = __dst;
    goto LABEL_11;
  }

  v9 = *(a1 + 1);
  if (v9 == *(a1 + 2))
  {
    IR::FixedIntegerDelay<float>::process();
  }

  if (v8 <= a4)
  {
    if (__src == __dst)
    {
      v19 = *(a1 + 4);
      if (v19 == *(a1 + 5))
      {
        IR::FixedIntegerDelay<float>::process();
      }

      memcpy(v19, &__src[2 * a4 + -2 * v8], 2 * v8);
      memmove(&__dst[2 * *a1], __src, 2 * (a4 - *a1));
      v16 = *(a1 + 1);
      v18 = 2 * *a1;
      v17 = __dst;
      goto LABEL_19;
    }

    memcpy(__dst, v9, 2 * v8);
    memcpy(*(a1 + 1), &__src[2 * a4 + -2 * *a1], 2 * *a1);
    v13 = *a1;
    v10 = &__dst[2 * v13];
    v12 = 2 * (a4 - v13);
LABEL_11:
    v11 = __src;
    goto LABEL_12;
  }

  if (__src == __dst)
  {
    v15 = *(a1 + 4);
    if (v15 == *(a1 + 5))
    {
      IR::FixedIntegerDelay<float>::process();
    }

    memcpy(v15, &v9[2 * a4], 2 * (v8 - a4));
    memcpy((*(a1 + 4) + 2 * *a1 - 2 * a4), __src, 2 * a4);
    v16 = *(a1 + 1);
    v17 = __dst;
    v18 = 2 * a4;
LABEL_19:
    memcpy(v17, v16, v18);
    result = *(a1 + 2);
    v20 = *(a1 + 2);
    *(a1 + 2) = result;
    *(a1 + 2) = v20;
    v21 = *(a1 + 3);
    *(a1 + 3) = *(a1 + 6);
    *(a1 + 6) = v21;
    return result;
  }

  memcpy(__dst, v9, 2 * a4);
  memmove(*(a1 + 1), (*(a1 + 1) + 2 * a4), 2 * (*a1 - a4));
  v10 = (*(a1 + 1) + 2 * *a1 - 2 * a4);
  v11 = __src;
  v12 = 2 * a4;
LABEL_12:

  memcpy(v10, v11, v12);
  return result;
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_296C19AB0)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_296C19AA0)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_296C19AB0)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_296C19AA0)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

void std::allocator<float>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE8__appendEmRKDF16_(uint64_t a1, unint64_t a2, __int16 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 1)
  {
    if (a2)
    {
      v13 = 0;
      a4.i16[0] = *a3;
      v14 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 2 * a2;
      v17 = v14 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_296C19AB0)));
        if (vuzp1_s8(vuzp1_s16(v20, a4), a4).u8[0])
        {
          *(v18 - 4) = a4.i16[0];
        }

        if (vuzp1_s8(vuzp1_s16(v20, a4), *&a4).i8[1])
        {
          *(v18 - 3) = a4.i16[0];
        }

        if (vuzp1_s8(vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_296C19AA0)))), *&a4).i8[2])
        {
          *(v18 - 2) = a4.i16[0];
          *(v18 - 1) = a4.i16[0];
        }

        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_296C19AD0)));
        if (vuzp1_s8(*&a4, vuzp1_s16(v21, a4)).i32[1])
        {
          *v18 = a4.i16[0];
        }

        if (vuzp1_s8(*&a4, vuzp1_s16(v21, a4)).i8[5])
        {
          v18[1] = a4.i16[0];
        }

        if (vuzp1_s8(*&a4, vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_296C19AC0))))).i8[6])
        {
          v18[2] = a4.i16[0];
          v18[3] = a4.i16[0];
        }

        v13 += 8;
        v18 += 8;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    if ((a2 + (v8 >> 1)) < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v8 >> 1;
    v10 = v6 - *a1;
    if (v10 <= a2 + (v8 >> 1))
    {
      v11 = a2 + (v8 >> 1);
    }

    else
    {
      v11 = v10;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      _ZNSt3__19allocatorIDF16_E17allocate_at_leastB8ne200100Em(a1, v12);
    }

    v22 = 0;
    v23 = 2 * v9;
    a4.i16[0] = *a3;
    v24 = 2 * v9 + 2 * a2;
    v25 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
    v26 = v25 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
    v27 = vdupq_n_s64(v25);
    v28 = (2 * v9 + 8);
    do
    {
      v29 = vdupq_n_s64(v22);
      v30 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_296C19AB0)));
      if (vuzp1_s8(vuzp1_s16(v30, a4), a4).u8[0])
      {
        *(v28 - 4) = a4.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v30, a4), *&a4).i8[1])
      {
        *(v28 - 3) = a4.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_296C19AA0)))), *&a4).i8[2])
      {
        *(v28 - 2) = a4.i16[0];
        *(v28 - 1) = a4.i16[0];
      }

      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_296C19AD0)));
      if (vuzp1_s8(*&a4, vuzp1_s16(v31, a4)).i32[1])
      {
        *v28 = a4.i16[0];
      }

      if (vuzp1_s8(*&a4, vuzp1_s16(v31, a4)).i8[5])
      {
        v28[1] = a4.i16[0];
      }

      if (vuzp1_s8(*&a4, vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_296C19AC0))))).i8[6])
      {
        v28[2] = a4.i16[0];
        v28[3] = a4.i16[0];
      }

      v22 += 8;
      v28 += 8;
    }

    while (v26 != v22);
    v32 = *(a1 + 8) - *a1;
    v33 = v23 - v32;
    memcpy((v23 - v32), *a1, v32);
    v34 = *a1;
    *a1 = v33;
    *(a1 + 8) = v24;
    *(a1 + 16) = 0;
    if (v34)
    {

      operator delete(v34);
    }
  }
}

void _ZNSt3__19allocatorIDF16_E17allocate_at_leastB8ne200100Em(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t IR::FFTFilterTranspose::Implementation::initialize(IR::FFTFilterTranspose::Implementation *this, int a2, int a3, unsigned int a4, int a5, int a6, int a7, char a8, BOOL a9, BOOL a10)
{
  if (*(this + 45) == 1)
  {
    (*(*this + 32))(this);
  }

  if (!a2)
  {
    (*(*this + 40))(this);
    return 4294967246;
  }

  *(this + 6) = a4;
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = a7;
  *(this + 46) = a8;
  std::vector<std::vector<float>>::resize(this + 64, a4);
  std::vector<std::vector<float>>::resize(this + 67, (2 * *(this + 6)));
  v18 = *(this + 3);
  if (!v18)
  {
    v19 = *(this + 2);
LABEL_16:
    *(this + 4) = 0;
    *(this + 5) = v19;
    *(this + 3) = 0;
    v27 = *(this + 64);
    if (*(this + 65) != v27)
    {
      v28 = 0;
      v29 = 1;
      do
      {
        std::vector<float>::resize((v27 + 24 * v28), (*(this + 5) + a6));
        v28 = v29;
        v27 = *(this + 64);
        v26 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 65) - v27) >> 3) > v29++;
      }

      while (v26);
    }

    v30 = *(this + 67);
    if (*(this + 68) != v30)
    {
      v31 = 0;
      v32 = 1;
      do
      {
        std::vector<float>::resize((v30 + 24 * v31), (*(this + 5) + a6));
        v31 = v32;
        v30 = *(this + 67);
        v26 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 68) - v30) >> 3) > v32++;
      }

      while (v26);
    }

    std::vector<float>::resize((this + 560), (*(this + 5) + a6));
    goto LABEL_31;
  }

  if (a5)
  {
    v19 = *(this + 2);
    if (v19 <= v18)
    {
      goto LABEL_16;
    }
  }

  v20 = MultiRadixRealFFT::Size((this + 168));
  v21 = *(this + 3);
  if (v20 != 2 * v21)
  {
    result = MultiRadixRealFFT::Initialize((this + 168), 2 * v21);
    if (result)
    {
      return result;
    }
  }

  if (a5)
  {
    *(this + 5) = *(this + 3);
    v23 = *(this + 64);
    if (*(this + 65) != v23)
    {
      v24 = 0;
      v25 = 1;
      do
      {
        std::vector<float>::resize((v23 + 24 * v24), (*(this + 5) + a6));
        v24 = v25;
        v23 = *(this + 64);
        v26 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 65) - v23) >> 3) > v25++;
      }

      while (v26);
    }
  }

  else
  {
    *(this + 5) = 0;
    v33 = *(this + 64);
    if (*(this + 65) != v33)
    {
      v34 = 0;
      v35 = 1;
      do
      {
        std::vector<float>::resize((v33 + 24 * v34), 0);
        v34 = v35;
        v33 = *(this + 64);
        v26 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 65) - v33) >> 3) > v35++;
      }

      while (v26);
    }
  }

  v36 = *(this + 67);
  if (*(this + 68) != v36)
  {
    v37 = 0;
    v38 = 1;
    do
    {
      std::vector<float>::resize((v36 + 24 * v37), (a6 + 2 * *(this + 3)));
      v37 = v38;
      v36 = *(this + 67);
      v26 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 68) - v36) >> 3) > v38++;
    }

    while (v26);
  }

  std::vector<float>::resize((this + 560), (a6 + 2 * *(this + 3)));
  v39 = *(this + 3);
  v40 = *(this + 2) - *(this + 5);
  *(this + 4) = v40 / v39;
  if (v40 / v39 * v39 < v40)
  {
    *(this + 4) = v40 / v39 + 1;
  }

LABEL_31:
  if (*(this + 46) == 1)
  {
    v41 = *(this + 3);
    if (v41)
    {
      *(this + 8) = v41;
    }

    else
    {
      *(this + 46) = 0;
    }
  }

  std::vector<std::vector<float>>::resize(this + 61, *(this + 6));
  std::vector<std::vector<float>>::resize(this + 58, (2 * *(this + 6)));
  if (*(this + 6))
  {
    v42 = 0;
    v43 = 0;
    v44 = 1;
    do
    {
      std::vector<float>::resize((*(this + 61) + v42), (a6 + 2 * *(this + 3)));
      std::vector<float>::resize((*(this + 58) + 24 * (v44 - 1)), (a6 + 2 * *(this + 3)));
      std::vector<float>::resize((*(this + 58) + 24 * v44), (a6 + 2 * *(this + 3)));
      ++v43;
      v45 = *(this + 6);
      v42 += 24;
      v44 += 2;
    }

    while (v43 < v45);
    v46 = (2 * v45);
  }

  else
  {
    v46 = 0;
  }

  if (*(this + 3))
  {
    std::vector<std::vector<DSPSplitComplex>>::resize(this + 26, v46);
    v47 = (4 * *(this + 6) * *(this + 3));
    v67 = 0;
    std::vector<float>::resize(this + 23, v47, &v67, v48);
    v50 = *(this + 26);
    if (*(this + 27) != v50)
    {
      v51 = 0;
      v52 = 0;
      v53 = 1;
      do
      {
        v54 = 3 * v51;
        std::vector<DSPSplitComplex>::resize((v50 + 24 * v51), 1uLL);
        v55 = *(this + 23);
        v50 = *(this + 26);
        v56 = *(this + 27);
        v57 = *(v50 + 8 * v54);
        v58 = *(this + 3);
        *v57 = v55 + 4 * v52;
        v57[1] = v55 + 4 * (v58 + v52);
        v52 += v58 + v58;
        v51 = v53;
        v26 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v50) >> 3) > v53++;
      }

      while (v26);
    }
  }

  else
  {
    std::vector<std::vector<DSPSplitComplex>>::resize(this + 26, 0);
    std::vector<float>::resize((this + 184), 0);
  }

  if (*(this + 46) == 1)
  {
    v59 = (4 * *(this + 3));
    v66 = 0;
    std::vector<float>::resize(this + 30, v59, &v66, v49);
    v60 = *(this + 30);
    v61 = *(this + 3);
    *(this + 35) = v60;
    *(this + 36) = v60 + 4 * v61;
    *(this + 37) = v60 + 4 * (2 * v61);
    *(this + 38) = v60 + 4 * (3 * v61);
  }

  *(this + 47) = a9;
  v62 = this + 48;
  if (a9)
  {
    for (i = 0; i != 3; ++i)
    {
      v64 = &v62[32 * i];
      caulk::pooled_semaphore_mutex::_lock((v64 + 24));
      std::vector<IR::FFTFilterKernel<float>>::resize(v64, a4);
      if (a4)
      {
        IR::FFTFilterKernel<float>::initialize();
      }

      caulk::pooled_semaphore_mutex::_unlock((v64 + 24));
    }
  }

  else
  {
    caulk::pooled_semaphore_mutex::_lock((this + 72));
    std::vector<IR::FFTFilterKernel<float>>::resize(this + 6, a4);
    if (a4)
    {
      IR::FFTFilterKernel<float>::initialize();
    }

    caulk::pooled_semaphore_mutex::_unlock((this + 72));
  }

  *(this + 19) = v62;
  *(this + 20) = v62;
  if (*(this + 47))
  {
    v65 = this + 80;
  }

  else
  {
    v65 = this + 48;
  }

  *(this + 18) = v65;
  (*(*this + 40))(this);
  result = 0;
  *(this + 45) = 1;
  return result;
}

void std::vector<std::vector<float>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<float>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<float>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
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
    std::vector<float>::__append(this, __sz - v2);
  }
}

void std::vector<std::vector<DSPSplitComplex>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<DSPSplitComplex>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<DSPSplitComplex>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<DSPSplitComplex>::__append(a1, a2 - v2);
  }
}

void *std::vector<IR::FFTFilterKernel<float>>::resize(void *a1, unint64_t a2)
{
  result = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((result - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<IR::FFTFilterKernel<float>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    if (result != v7)
    {
      IR::FFTFilterKernel<float>::~FFTFilterKernel();
    }

    a1[1] = v7;
  }

  return result;
}

void IR::FFTFilterTranspose::Implementation::uninitialize(IR::FFTFilterTranspose::Implementation *this)
{
  IR::FFTFilter<float>::Implementation::uninitialize(this);
  *(this + 114) = 0;
  *(this + 230) = 256;
  *(this + 146) = 0;
  *(this + 31) = *(this + 30);
  std::vector<std::vector<float>>::clear[abi:ne200100](this + 64);
  std::vector<std::vector<float>>::clear[abi:ne200100](this + 61);
  std::vector<std::vector<float>>::clear[abi:ne200100](this + 58);
  std::vector<std::vector<float>>::clear[abi:ne200100](this + 67);
  *(this + 71) = *(this + 70);
}

void std::vector<std::vector<float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void IR::FFTFilterTranspose::Implementation::reset(float **this)
{
  IR::FFTFilter<float>::Implementation::reset(this);
  vDSP_vclr(this[30], 1, this[31] - this[30]);
  v2 = this[61];
  if (this[62] != v2)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      vDSP_vclr(*&v2[6 * v3], 1, (*&v2[6 * v3 + 2] - *&v2[6 * v3]) >> 2);
      v3 = v4;
      v2 = this[61];
      v5 = 0xAAAAAAAAAAAAAAABLL * ((this[62] - v2) >> 3) > v4++;
    }

    while (v5);
  }

  v6 = this[58];
  if (this[59] != v6)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      vDSP_vclr(*&v6[6 * v7], 1, (*&v6[6 * v7 + 2] - *&v6[6 * v7]) >> 2);
      v7 = v8;
      v6 = this[58];
      v5 = 0xAAAAAAAAAAAAAAABLL * ((this[59] - v6) >> 3) > v8++;
    }

    while (v5);
  }

  v9 = this[64];
  if (this[65] != v9)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      vDSP_vclr(*&v9[6 * v10], 1, (*&v9[6 * v10 + 2] - *&v9[6 * v10]) >> 2);
      v10 = v11;
      v9 = this[64];
      v5 = 0xAAAAAAAAAAAAAAABLL * ((this[65] - v9) >> 3) > v11++;
    }

    while (v5);
  }

  *(this + 230) = 256;
  *(this + 146) = 0;
  *(this + 114) = 0;
}

uint64_t IR::FFTFilterTranspose::Implementation::forwardTransform(IR::FFTFilterTranspose::Implementation *this, DSPSplitComplex *__Z, DSPComplex *__C)
{
  v5 = *(this + 3) >> 1;
  v6 = &__Z->realp[v5];
  v7 = &__Z->imagp[v5];
  vDSP_ctoz(__C, 2, __Z, 1, v5);
  vDSP_vclr(v6, 1, *(this + 3) >> 1);
  vDSP_vclr(v7, 1, *(this + 3) >> 1);

  return MultiRadixRealFFT::RealInPlaceTransform((this + 168), __Z, 1, 1.0);
}

uint64_t IR::FFTFilterTranspose::Implementation::timeDomainTransposeFIR(IR::FFTFilterTranspose::Implementation *this, const float *a2, float *a3, const float *a4, unsigned int a5, unsigned int a6)
{
  if (a6)
  {
    v9 = a5;
    v10 = a6;
    do
    {
      v11 = *a2++;
      v13 = v11;
      result = MEMORY[0x29C260500](a4, 1, &v13, a3, 1, a3, 1, v9);
      ++a3;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t IR::FFTFilterTranspose::Implementation::timeDomainTransposeDualFIR(IR::FFTFilterTranspose::Implementation *this, const float *a2, const float *a3, float *a4, const float *a5, const float *a6, unsigned int a7, unsigned int a8)
{
  if (a8)
  {
    v13 = a7;
    v14 = a8;
    do
    {
      v15 = *a2++;
      v18 = v15;
      MEMORY[0x29C260500](a5, 1, &v18, a4, 1, a4, 1, v13);
      v16 = *a3++;
      v19 = v16;
      result = MEMORY[0x29C260500](a6, 1, &v19, a4, 1, a4, 1, v13);
      ++a4;
      --v14;
    }

    while (v14);
  }

  return result;
}

void IR::FFTFilterTranspose::Implementation::firFilterSingleInput(IR::FFTFilterTranspose::Implementation *this, float *const *a2, unsigned int a3, unsigned int a4)
{
  v7 = this;
  v8 = *(this + 460);
  if (*(this + 462) == 1)
  {
    v9 = a3;
    v10 = 4 * a3;
    memcpy((*(*(this + 67) + 24 * *(this + 146)) + 4 * *(this + 5) - 4), (**(this + 58) + 4 * *(this + 9)), v10);
    if (v8)
    {
      if (a4)
      {
        v11 = 0;
        v12 = 24;
        do
        {
          v13 = (**(v7 + 19) + v12);
          v14 = *(v7 + 5);
          if (*v13 >= v14)
          {
            v15 = v14;
          }

          else
          {
            v15 = *v13;
          }

          vDSP_conv((*(*(v7 + 67) + 24 * *(v7 + 146)) + 4 * (v14 - v15)), 1, (*(v13 - 3) + 4 * v15 - 4), -1, *(*(v7 + 64) + v11), 1, a3, v15);
          v12 += 40;
          v11 += 24;
        }

        while (24 * a4 != v11);
      }

      v16 = *(*(v7 + 67) + 24 * *(v7 + 146));
      memmove(v16, &v16[4 * a3], 4 * (*(v7 + 5) - 1));
      memcpy((*(*(v7 + 67) + 24 * (*(v7 + 146) ^ 1u)) + 4 * (*(v7 + 5) - 1)), (*(*(v7 + 58) + 24) + 4 * *(v7 + 9)), 4 * a3);
      if (a4)
      {
        v17 = 0;
        v18 = 24;
        do
        {
          v19 = (**(v7 + 18) + v18);
          v20 = *(v7 + 5);
          if (*v19 >= v20)
          {
            v21 = v20;
          }

          else
          {
            v21 = *v19;
          }

          vDSP_conv((*(*(v7 + 67) + 24 * (*(v7 + 146) ^ 1u)) + 4 * (v20 - v21)), 1, (*(v19 - 3) + 4 * v21 - 4), -1, *(v7 + 70), 1, a3, v21);
          MEMORY[0x29C2603D0](*(v7 + 70), 1, *(*(v7 + 64) + v17), 1, *(*(v7 + 64) + v17), 1, a3);
          v18 += 40;
          v17 += 24;
        }

        while (24 * a4 != v17);
      }

      v22 = *(*(v7 + 67) + 24 * (*(v7 + 146) ^ 1u));
      memmove(v22, &v22[4 * a3], 4 * (*(v7 + 5) - 1));
      if (!*(v7 + 10))
      {
        *(v7 + 114) -= a3;
      }
    }

    else
    {
      memcpy((*(*(v7 + 67) + 24 * (*(v7 + 146) ^ 1u)) + 4 * *(v7 + 5) - 4), (*(*(v7 + 58) + 24) + 4 * *(v7 + 9)), v10);
      if (a4)
      {
        v28 = 0;
        v29 = 24;
        do
        {
          v30 = (**(v7 + 19) + v29);
          v31 = *(v7 + 5);
          if (*v30 >= v31)
          {
            v32 = v31;
          }

          else
          {
            v32 = *v30;
          }

          vDSP_conv((*(*(v7 + 67) + 24 * *(v7 + 146)) + 4 * (v31 - v32)), 1, (*(v30 - 3) + 4 * v32 - 4), -1, *(*(v7 + 64) + v28), 1, v9, v32);
          v29 += 40;
          v28 += 24;
        }

        while (24 * a4 != v28);
      }

      v33 = *(*(v7 + 67) + 24 * *(v7 + 146));
      memmove(v33, &v33[4 * v9], 4 * (*(v7 + 5) - 1));
      v34 = *(*(v7 + 67) + 24 * (*(v7 + 146) ^ 1u));
      memmove(v34, &v34[4 * v9], 4 * (*(v7 + 5) - 1));
    }

    if (a4)
    {
      v35 = 0;
      v36 = 24 * a4;
      do
      {
        v37 = *a2++;
        memcpy(v37, *(*(v7 + 64) + v35), v10);
        v35 += 24;
      }

      while (v36 != v35);
    }
  }

  else
  {
    if (v8)
    {
      if (a4)
      {
        v23 = 0;
        v24 = 24;
        v25 = 24 * a4;
        do
        {
          v26 = (**(v7 + 19) + v24);
          if (*v26 >= *(v7 + 5))
          {
            v27 = *(v7 + 5);
          }

          else
          {
            v27 = *v26;
          }

          this = IR::FFTFilterTranspose::Implementation::timeDomainTransposeDualFIR(this, (**(v7 + 58) + 4 * *(v7 + 9)), (*(*(v7 + 58) + 24) + 4 * *(v7 + 9)), *(*(v7 + 64) + v23), *(v26 - 3), *(**(v7 + 18) + v24 - 24), v27, a3);
          v24 += 40;
          v23 += 24;
        }

        while (v25 != v23);
      }

      if (!*(v7 + 10))
      {
        *(v7 + 114) -= a3;
      }
    }

    else
    {
      if (!a4)
      {
        return;
      }

      v38 = 0;
      v39 = 24;
      v40 = 24 * a4;
      do
      {
        v41 = (**(v7 + 19) + v39);
        if (*v41 >= *(v7 + 5))
        {
          v42 = *(v7 + 5);
        }

        else
        {
          v42 = *v41;
        }

        this = IR::FFTFilterTranspose::Implementation::timeDomainTransposeFIR(this, (**(v7 + 58) + 4 * *(v7 + 9)), *(*(v7 + 64) + v38), *(v41 - 3), v42, a3);
        v39 += 40;
        v38 += 24;
      }

      while (v40 != v38);
    }

    if (a4)
    {
      v43 = 0;
      v44 = a3;
      v45 = 4 * a3;
      v46 = 24;
      v47 = 24 * a4;
      do
      {
        v48 = *a2++;
        memcpy(v48, *(*(v7 + 64) + v43), v45);
        if (*(**(v7 + 19) + v46) >= *(v7 + 5))
        {
          v49 = *(v7 + 5);
        }

        else
        {
          v49 = *(**(v7 + 19) + v46);
        }

        memmove(*(*(v7 + 64) + v43), (*(*(v7 + 64) + v43) + 4 * v44), 4 * v49);
        vDSP_vclr((*(*(v7 + 64) + v43) + 4 * v49), 1, v44);
        v43 += 24;
        v46 += 40;
      }

      while (v47 != v43);
    }
  }
}

void IR::FFTFilterTranspose::Implementation::firFilterMultipleInput(IR::FFTFilterTranspose::Implementation *this, float *const *a2, unsigned int a3, unsigned int a4)
{
  v4 = a4;
  v7 = this;
  if (*(this + 462) == 1)
  {
    if (*(this + 460))
    {
      v51 = a3;
      if (a4)
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 4 * a3;
        do
        {
          memcpy((*(*(v7 + 67) + 24 * (v8 + *(v7 + 146))) + 4 * (*(v7 + 5) - 1)), (*(*(v7 + 58) + 24 * v8) + 4 * *(v7 + 9)), v11);
          v12 = **(v7 + 19) + v10;
          v13 = *(v12 + 24);
          v14 = *(v7 + 5);
          if (v13 >= v14)
          {
            v15 = v14;
          }

          else
          {
            v15 = v13;
          }

          vDSP_conv((*(*(v7 + 67) + 24 * (v8 + *(v7 + 146))) + 4 * (v14 - v15)), 1, *v12, 1, *(*(v7 + 64) + v9), 1, v51, v15);
          v16 = *(*(v7 + 67) + 24 * (v8 + *(v7 + 146)));
          memmove(v16, &v16[4 * v51], 4 * (*(v7 + 5) - 1));
          memcpy((*(*(v7 + 67) + 24 * (v8 + (*(v7 + 146) ^ 1))) + 4 * (*(v7 + 5) - 1)), (*(*(v7 + 58) + 24 * (v8 + 1)) + 4 * *(v7 + 9)), v11);
          v17 = **(v7 + 18) + v10;
          v18 = *(v17 + 24);
          v19 = *(v7 + 5);
          if (v18 >= v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = v18;
          }

          vDSP_conv((*(*(v7 + 67) + 24 * (v8 + (*(v7 + 146) ^ 1))) + 4 * (v19 - v20)), 1, (*v17 + 4 * v15 - 4), -1, *(v7 + 70), 1, v51, v20);
          MEMORY[0x29C2603D0](*(v7 + 70), 1, *(*(v7 + 64) + v9), 1, *(*(v7 + 64) + v9), 1, v51);
          v21 = *(*(v7 + 67) + 24 * (v8 + (*(v7 + 146) ^ 1)));
          memmove(v21, &v21[4 * v51], 4 * (*(v7 + 5) - 1));
          v10 += 40;
          v9 += 24;
          v8 += 2;
        }

        while (2 * a4 != v8);
      }

      v4 = a4;
      if (!*(v7 + 10))
      {
        *(v7 + 114) -= v51;
      }
    }

    else
    {
      if (!a4)
      {
        return;
      }

      v28 = 0;
      v29 = 0;
      v30 = a3;
      v51 = a3;
      v31 = 4 * a3;
      v32 = 24 * a4;
      v33 = 24;
      do
      {
        memcpy((*(*(v7 + 67) + 24 * (v28 + *(v7 + 146))) + 4 * (*(v7 + 5) - 1)), (*(*(v7 + 58) + 24 * v28) + 4 * *(v7 + 9)), v31);
        memcpy((*(*(v7 + 67) + 24 * (v28 + (*(v7 + 146) ^ 1))) + 4 * (*(v7 + 5) - 1)), (*(*(v7 + 58) + 24 * (v28 + 1)) + 4 * *(v7 + 9)), v31);
        v34 = (**(v7 + 19) + v33);
        v35 = *(v7 + 5);
        if (*v34 >= v35)
        {
          v36 = v35;
        }

        else
        {
          v36 = *v34;
        }

        vDSP_conv((*(*(v7 + 67) + 24 * (v28 + *(v7 + 146))) + 4 * (v35 - v36)), 1, (*(v34 - 3) + 4 * v36 - 4), -1, *(*(v7 + 64) + v29), 1, v30, v36);
        v37 = *(*(v7 + 67) + 24 * (v28 + *(v7 + 146)));
        memmove(v37, &v37[4 * v30], 4 * (*(v7 + 5) - 1));
        v38 = *(*(v7 + 67) + 24 * (v28 + (*(v7 + 146) ^ 1)));
        memmove(v38, &v38[4 * v30], 4 * (*(v7 + 5) - 1));
        v33 += 40;
        v29 += 24;
        v28 += 2;
      }

      while (v32 != v29);
    }

    if (v4)
    {
      v39 = 0;
      do
      {
        v40 = *a2++;
        memcpy(v40, *(*(v7 + 64) + v39), 4 * v51);
        v39 += 24;
      }

      while (24 * v4 != v39);
    }
  }

  else
  {
    if (*(this + 460))
    {
      if (a4)
      {
        v22 = 0;
        v23 = 24 * a4;
        v24 = 1;
        v25 = 24;
        do
        {
          v26 = (**(v7 + 19) + v25);
          if (*v26 >= *(v7 + 5))
          {
            v27 = *(v7 + 5);
          }

          else
          {
            v27 = *v26;
          }

          this = IR::FFTFilterTranspose::Implementation::timeDomainTransposeDualFIR(this, (*(*(v7 + 58) + 24 * (v24 - 1)) + 4 * *(v7 + 9)), (*(*(v7 + 58) + 24 * v24) + 4 * *(v7 + 9)), *(*(v7 + 64) + v22), *(v26 - 3), *(**(v7 + 18) + v25 - 24), v27, a3);
          v25 += 40;
          v22 += 24;
          v24 += 2;
        }

        while (v23 != v22);
      }

      if (!*(v7 + 10))
      {
        *(v7 + 114) -= a3;
      }
    }

    else
    {
      if (!a4)
      {
        return;
      }

      v41 = 0;
      do
      {
        v42 = **(v7 + 19) + 40 * v41;
        if (*(v42 + 24) >= *(v7 + 5))
        {
          v43 = *(v7 + 5);
        }

        else
        {
          v43 = *(v42 + 24);
        }

        this = IR::FFTFilterTranspose::Implementation::timeDomainTransposeFIR(this, (*(*(v7 + 58) + 24 * (2 * v41)) + 4 * *(v7 + 9)), *(*(v7 + 64) + 24 * v41), *v42, v43, a3);
        ++v41;
      }

      while (v41 != v4);
    }

    if (v4)
    {
      v44 = 0;
      v45 = a3;
      v46 = 4 * a3;
      v47 = 24;
      do
      {
        v48 = *a2++;
        memcpy(v48, *(*(v7 + 64) + v44), v46);
        if (*(**(v7 + 19) + v47) >= *(v7 + 5))
        {
          v49 = *(v7 + 5);
        }

        else
        {
          v49 = *(**(v7 + 19) + v47);
        }

        memmove(*(*(v7 + 64) + v44), (*(*(v7 + 64) + v44) + 4 * v45), 4 * v49);
        vDSP_vclr((*(*(v7 + 64) + v44) + 4 * v49), 1, v45);
        v44 += 24;
        v47 += 40;
      }

      while (24 * v4 != v44);
    }
  }
}

uint64_t IR::FFTFilterTranspose::Implementation::processMultipleInputs(IR::FFTFilterTranspose::Implementation *this, float *const *a2, float *const *a3, uint64_t a4, unsigned int a5, unsigned int a6, IR::ComplexDataCircBuffer *a7)
{
  v87 = *MEMORY[0x29EDCA608];
  if (*(this + 45) != 1)
  {
    return 4294956429;
  }

  v7 = a4;
  if (a4)
  {
    v8 = a6;
    if (!a6)
    {
      return 4294967246;
    }

    if (*(this + 6) != a6 || a6 > a5)
    {
      return 4294967246;
    }

    if (*(this + 2))
    {
      if (*(this + 44) == 1)
      {
        if (caulk::pooled_semaphore_mutex::try_lock((*(this + 20) + 24)))
        {
          *(this + 19) = *(this + 20);
        }

        *(this + 44) = 0;
      }

      if (*(this + 4))
      {
        v75[1] = v75;
        MEMORY[0x2A1C7C4A8]();
        v15 = v75 - ((v14 + 15) & 0xFFFFFFFF0);
        if (v14 >= 0x200)
        {
          v16 = 512;
        }

        else
        {
          v16 = v14;
        }

        bzero(v75 - ((v14 + 15) & 0xFFFFFFFF0), v16);
        v17 = *(this + 6);
        v18 = 8 * v17;
        MEMORY[0x2A1C7C4A8]();
        if ((8 * v17) >= 0x200)
        {
          v19 = 512;
        }

        else
        {
          v19 = 8 * v17;
        }

        bzero(v75 - ((v18 + 15) & 0xFFFFFFFF0), v19);
        if (v17)
        {
          memcpy(v15, a2, 8 * v17);
          memcpy(v75 - ((v18 + 15) & 0xFFFFFFFF0), a3, 8 * v17);
        }

        v78 = (v75 - ((v18 + 15) & 0xFFFFFFFF0));
        if (!a7 || IR::ComplexDataCircBuffer::getNumOutputChannels(a7) != *(this + 6) || IR::ComplexDataCircBuffer::getNumFFTBuffers(a7) < *(this + 4))
        {
          return 4294967246;
        }

        CircularIndex = IR::ComplexDataCircBuffer::getCircularIndex(a7);
        *(this + 9) = IR::ComplexDataCircBuffer::getFFTProcPos(a7);
        v84 = v15;
        v25 = v78;
        v79 = v8;
        v76 = a7;
        while (1)
        {
          v26 = *(this + 3);
          v82 = *(this + 9);
          LODWORD(v83) = v26;
          v27 = v26 - v82;
          if (v27 >= v7)
          {
            v28 = v7;
          }

          else
          {
            v28 = v27;
          }

          if (*(this + 46) == 1 && *(this + 6))
          {
            v29 = 0;
            v30 = 0;
            do
            {
              memcpy((*(*(this + 61) + v29) + 4 * *(this + 9)), *&v15[8 * v30++], 4 * v28);
              v29 += 24;
            }

            while (v30 < *(this + 6));
          }

          if (*(this + 47) == 1)
          {
            v31 = *(this + 20);
            if (v31 != *(this + 19) && (*(this + 460) & 1) == 0 && !*(this + 9))
            {
              v32 = (v31 + 24);
              if (caulk::pooled_semaphore_mutex::try_lock((v31 + 24)))
              {
                v33 = *(this + 19);
                v34 = *(this + 20);
                if (v34 != v33)
                {
                  *(this + 18) = v33;
                  *(this + 19) = v34;
                  v35 = *(this + 8);
                  if (v35)
                  {
                    *(this + 10) = v35;
                    *(this + 146) ^= 1u;
LABEL_53:
                    if (v28 >= v35)
                    {
                      v36 = v35;
                    }

                    else
                    {
                      v36 = v28;
                    }

                    if ((*(this + 5) || (*(this + 46) & 1) == 0) && *(this + 6))
                    {
                      v77 = v7;
                      v37 = 0;
                      v38 = *(this + 8);
                      v39 = -1.0 / v38;
                      v40 = v35 / v38;
                      v41 = -(-1.0 / v38);
                      v80 = 4 * (v28 - v36);
                      v42 = 1;
                      do
                      {
                        v43 = *&v15[8 * v37];
                        v44 = (*(*(this + 58) + 24 * (v42 - 1)) + 4 * *(this + 9));
                        __Step = v41;
                        __Start = 1.0 - v40;
                        vDSP_vrampmul(v43, 1, &__Start, &__Step, v44, 1, v36);
                        if (v35 < v28)
                        {
                          memcpy((*(*(this + 58) + 24 * (v42 - 1)) + 4 * *(this + 9) + 4 * v36), &v43[v36], v80);
                        }

                        v45 = (*(*(this + 58) + 24 * v42) + 4 * *(this + 9));
                        __Step = v39;
                        __Start = v40;
                        vDSP_vrampmul(v43, 1, &__Start, &__Step, v45, 1, v36);
                        if (v35 < v28)
                        {
                          vDSP_vclr((*(*(this + 58) + 24 * v42) + 4 * *(this + 9) + 4 * v36), 1, (v28 - v36));
                        }

                        ++v37;
                        v42 += 2;
                        v15 = v84;
                      }

                      while (v37 < *(this + 6));
                      v35 = *(this + 10);
                      v7 = v77;
                      v25 = v78;
                    }

                    *(this + 10) = v35 - v36;
                    if (v35 == v36)
                    {
                      v46 = v28;
                      if (*(this + 462) == 1)
                      {
                        v47 = *(this + 5);
                        if (v47 >= *(this + 3))
                        {
                          v47 = *(this + 3);
                        }

                        v46 = v47 + v36;
                      }

                      *(this + 114) = v46;
                      *(this + 461) = 0;
                    }

                    *(this + 460) = 1;
                    a7 = v76;
                    goto LABEL_78;
                  }

                  v32 = (v33 + 24);
                }

                caulk::pooled_semaphore_mutex::_unlock(v32);
              }
            }
          }

          v35 = *(this + 10);
          if (v35)
          {
            goto LABEL_53;
          }

          if (!*(this + 5) && (*(this + 46) & 1) != 0)
          {
            goto LABEL_80;
          }

          if (*(this + 6))
          {
            v48 = 0;
            v49 = 1;
            do
            {
              memcpy((*(*(this + 58) + 24 * (v49 - 1)) + 4 * *(this + 9)), *&v15[8 * v48], 4 * v28);
              vDSP_vclr((*(*(this + 58) + 24 * v49) + 4 * *(this + 9)), 1, v28);
              ++v48;
              v49 += 2;
            }

            while (v48 < *(this + 6));
          }

LABEL_78:
          if (*(this + 5))
          {
            IR::FFTFilterTranspose::Implementation::firFilterMultipleInput(this, v25, v28, v79);
            v50 = *(this + 6);
            goto LABEL_85;
          }

LABEL_80:
          if (!*(this + 6))
          {
            goto LABEL_89;
          }

          v51 = 0;
          do
          {
            v52 = v25[v51];
            vDSP_vclr(v52, 1, v28);
            if (v83 != v82)
            {
              *v52 = 0.00000011921;
            }

            ++v51;
            v50 = *(this + 6);
          }

          while (v51 < v50);
LABEL_85:
          if (v50)
          {
            v53 = v25;
            v54 = v15;
            do
            {
              *v54++ += 4 * v28;
              *v53++ += v28;
              --v50;
            }

            while (v50);
            goto LABEL_90;
          }

LABEL_89:
          LOBYTE(v50) = 1;
LABEL_90:
          v55 = *(this + 9) + v28;
          *(this + 9) = v55;
          if (v55 >= *(this + 3))
          {
            if (*(this + 46) == 1)
            {
              v56 = CircularIndex;
              if (*(this + 460) && (*(this + 461) & 1) == 0)
              {
                if ((v50 & 1) == 0)
                {
                  IR::FFTFilterTranspose::Implementation::forwardTransform(this, **(this + 26), **(this + 61));
                  (*(*this + 112))(this, **(this + 26), this + 280, *(this + 3), 0.5);
                  (*(*this + 112))(this, **(this + 26), this + 296, *(this + 3), -0.5);
                  IR::ComplexDataCircBuffer::getFFTBufferVec(a7, 0);
                  IR::FFTFilterTranspose::Implementation::dualFFTBlockConvolution();
                }

                if (!*(this + 10) && !*(this + 5))
                {
                  *(this + 114) -= *(this + 3);
                }

                *(this + 461) = 1;
              }

              else if ((v50 & 1) == 0)
              {
                IR::FFTFilterTranspose::Implementation::forwardTransform(this, **(this + 26), **(this + 61));
                IR::ComplexDataCircBuffer::getFFTBufferVec(a7, 0);
                IR::FFTFilterTranspose::Implementation::fftBlockConvolution();
              }
            }

            else
            {
              v56 = CircularIndex;
              if (*(this + 460))
              {
                v77 = v7;
                if ((v50 & 1) == 0)
                {
                  IR::FFTFilterTranspose::Implementation::forwardTransform(this, **(this + 26), **(this + 58));
                  IR::FFTFilterTranspose::Implementation::forwardTransform(this, *(*(this + 26) + 24), *(*(this + 58) + 24));
                  IR::ComplexDataCircBuffer::getFFTBufferVec(a7, 0);
                  IR::FFTFilterTranspose::Implementation::dualFFTBlockConvolution();
                }

                LODWORD(v7) = v77;
                if (!*(this + 10) && !*(this + 5))
                {
                  *(this + 114) -= *(this + 3);
                }
              }

              else if ((v50 & 1) == 0)
              {
                IR::FFTFilterTranspose::Implementation::forwardTransform(this, **(this + 26), **(this + 58));
                IR::ComplexDataCircBuffer::getFFTBufferVec(a7, 0);
                IR::FFTFilterTranspose::Implementation::fftBlockConvolution();
              }
            }

            if (v56 + 1 == IR::ComplexDataCircBuffer::getNumFFTBuffers(a7))
            {
              v57 = 0;
            }

            else
            {
              v57 = v56 + 1;
            }

            CircularIndex = v57;
            *(this + 9) = 0;
            if (*(this + 460) == 1)
            {
              v15 = v84;
              v25 = v78;
              if (!*(this + 10) && *(this + 114) <= 0)
              {
                *(this + 460) = 0;
                caulk::pooled_semaphore_mutex::_unlock((*(this + 18) + 24));
              }
            }

            else
            {
              v15 = v84;
              v25 = v78;
            }
          }

          v7 = (v7 - v28);
          if (!v7)
          {
            return 0;
          }
        }
      }

      if (*(this + 47) != 1)
      {
        goto LABEL_123;
      }

      v21 = *(this + 20);
      if (v21 == *(this + 19) || (*(this + 460) & 1) != 0 || !caulk::pooled_semaphore_mutex::try_lock((v21 + 24)))
      {
        goto LABEL_123;
      }

      v22 = *(this + 19);
      v23 = *(this + 20);
      if (v23 == v22)
      {
        v58 = (v21 + 24);
      }

      else
      {
        *(this + 18) = v22;
        *(this + 19) = v23;
        v24 = *(this + 8);
        if (v24)
        {
          *(this + 10) = v24;
          *(this + 146) ^= 1u;
LABEL_123:
          v59 = *(this + 10);
          v60 = v7;
          if (v59)
          {
            if (v59 >= v7)
            {
              v61 = v7;
            }

            else
            {
              v61 = v59;
            }

            if (*(this + 6))
            {
              v79 = v8;
              v62 = v7;
              v63 = 0;
              v64 = *(this + 8);
              v65 = -1.0 / v64;
              v66 = v59 / v64;
              v67 = -(-1.0 / v64);
              v84 = (v62 - v61);
              v83 = 4 * v84;
              v68 = 1;
              do
              {
                v69 = a2[v63];
                v70 = *(*(this + 58) + 24 * (v68 - 1));
                __Step = v67;
                __Start = 1.0 - v66;
                vDSP_vrampmul(v69, 1, &__Start, &__Step, v70, 1, v61);
                if (v59 < v60)
                {
                  memcpy((*(*(this + 58) + 24 * (v68 - 1)) + 4 * v61), &a2[v63][v61], v83);
                }

                v71 = a2[v63];
                v72 = *(*(this + 58) + 24 * v68);
                __Step = v65;
                __Start = v66;
                vDSP_vrampmul(v71, 1, &__Start, &__Step, v72, 1, v61);
                if (v59 < v60)
                {
                  vDSP_vclr((*(*(this + 58) + 24 * v68) + 4 * v61), 1, v84);
                }

                ++v63;
                v68 += 2;
              }

              while (v63 < *(this + 6));
              v59 = *(this + 10);
              v8 = v79;
            }

            *(this + 10) = v59 - v61;
            if (v59 == v61)
            {
              if (*(this + 462) == 1)
              {
                LODWORD(v61) = *(this + 5) + v61;
              }

              *(this + 114) = v61;
            }

            *(this + 460) = 1;
          }

          else if (*(this + 6))
          {
            v73 = 0;
            v74 = 1;
            do
            {
              memcpy(*(*(this + 58) + 24 * (v74 - 1)), a2[v73], 4 * v7);
              vDSP_vclr(*(*(this + 58) + 24 * v74), 1, v7);
              ++v73;
              v74 += 2;
            }

            while (v73 < *(this + 6));
          }

          IR::FFTFilterTranspose::Implementation::firFilterMultipleInput(this, a3, v60, v8);
          if (*(this + 460) == 1 && !*(this + 10) && *(this + 114) <= 0)
          {
            *(this + 460) = 0;
            caulk::pooled_semaphore_mutex::_unlock((*(this + 18) + 24));
          }

          return 0;
        }

        v58 = (v22 + 24);
      }

      caulk::pooled_semaphore_mutex::_unlock(v58);
      goto LABEL_123;
    }

    return 4294956429;
  }

  return 0;
}

uint64_t IR::FFTFilterTranspose::Implementation::process(IR::FFTFilterTranspose::Implementation *this, const float *__I, float *const *a3, unsigned int a4, unsigned int a5, IR::ComplexDataCircBuffer *a6)
{
  v65 = *MEMORY[0x29EDCA608];
  if (*(this + 45) != 1)
  {
    return 4294956429;
  }

  v6 = a4;
  if (a4)
  {
    v7 = a5;
    if (!a5 || *(this + 6) != a5)
    {
      return 4294967246;
    }

    if (*(this + 2))
    {
      if (*(this + 44) == 1)
      {
        if (caulk::pooled_semaphore_mutex::try_lock((*(this + 20) + 24)))
        {
          *(this + 19) = *(this + 20);
        }

        *(this + 44) = 0;
      }

      if (*(this + 4))
      {
        MEMORY[0x2A1C7C4A8]();
        v13 = v60 - ((v12 + 15) & 0xFFFFFFFF0);
        if (v12 >= 0x200)
        {
          v14 = 512;
        }

        else
        {
          v14 = v12;
        }

        bzero(v60 - ((v12 + 15) & 0xFFFFFFFF0), v14);
        v15 = *(this + 6);
        if (v15)
        {
          memcpy(v13, a3, 8 * v15);
        }

        if (!a6 || IR::ComplexDataCircBuffer::getNumOutputChannels(a6) != *(this + 6) || IR::ComplexDataCircBuffer::getNumFFTBuffers(a6) < *(this + 4))
        {
          return 4294967246;
        }

        v60[1] = v60;
        CircularIndex = IR::ComplexDataCircBuffer::getCircularIndex(a6);
        *(this + 9) = IR::ComplexDataCircBuffer::getFFTProcPos(a6);
        v61 = v7;
        while (1)
        {
          v23 = *(this + 9);
          v24 = *(this + 3) - v23;
          if (v24 >= v6)
          {
            v25 = v6;
          }

          else
          {
            v25 = v24;
          }

          if (*(this + 46) == 1)
          {
            memcpy((**(this + 61) + 4 * v23), __I, 4 * v25);
          }

          if (*(this + 47) == 1)
          {
            v26 = *(this + 20);
            if (v26 != *(this + 19) && (*(this + 460) & 1) == 0 && !*(this + 9))
            {
              v27 = (v26 + 24);
              if (caulk::pooled_semaphore_mutex::try_lock((v26 + 24)))
              {
                v28 = *(this + 19);
                v29 = *(this + 20);
                if (v29 != v28)
                {
                  *(this + 18) = v28;
                  *(this + 19) = v29;
                  v30 = *(this + 8);
                  if (v30)
                  {
                    *(this + 10) = v30;
                    *(this + 146) ^= 1u;
LABEL_45:
                    if (v25 >= v30)
                    {
                      v31 = v30;
                    }

                    else
                    {
                      v31 = v25;
                    }

                    if (*(this + 5) || (*(this + 46) & 1) == 0)
                    {
                      v32 = *(this + 8);
                      v33 = -1.0 / v32;
                      v34 = v30 / v32;
                      v35 = (**(this + 58) + 4 * *(this + 9));
                      __Step = -(-1.0 / v32);
                      __Start = 1.0 - v34;
                      vDSP_vrampmul(__I, 1, &__Start, &__Step, v35, 1, v31);
                      if (v30 < v25)
                      {
                        memcpy((**(this + 58) + 4 * *(this + 9) + 4 * v31), &__I[v31], 4 * (v25 - v31));
                      }

                      v36 = (*(*(this + 58) + 24) + 4 * *(this + 9));
                      __Step = v33;
                      __Start = v34;
                      vDSP_vrampmul(__I, 1, &__Start, &__Step, v36, 1, v31);
                      if (v30 < v25)
                      {
                        vDSP_vclr((*(*(this + 58) + 24) + 4 * *(this + 9) + 4 * v31), 1, (v25 - v31));
                      }
                    }

                    v37 = *(this + 10) - v31;
                    *(this + 10) = v37;
                    if (!v37)
                    {
                      v38 = v25;
                      if (*(this + 462) == 1)
                      {
                        v39 = *(this + 3);
                        if (v39 >= *(this + 5))
                        {
                          v39 = *(this + 5);
                        }

                        v38 = v39 + v31;
                      }

                      *(this + 114) = v38;
                      *(this + 461) = 0;
                    }

                    *(this + 460) = 1;
                    goto LABEL_64;
                  }

                  v27 = (v28 + 24);
                }

                caulk::pooled_semaphore_mutex::_unlock(v27);
              }
            }
          }

          v30 = *(this + 10);
          if (v30)
          {
            goto LABEL_45;
          }

          if (!*(this + 5) && (*(this + 46) & 1) != 0)
          {
            goto LABEL_66;
          }

          memcpy((**(this + 58) + 4 * *(this + 9)), __I, 4 * v25);
          vDSP_vclr((*(*(this + 58) + 24) + 4 * *(this + 9)), 1, v25);
LABEL_64:
          if (*(this + 5))
          {
            v40 = __I;
            IR::FFTFilterTranspose::Implementation::firFilterSingleInput(this, v13, v25, v7);
            v41 = *(this + 6);
            goto LABEL_69;
          }

LABEL_66:
          if (*(this + 6))
          {
            v40 = __I;
            v42 = 0;
            do
            {
              vDSP_vclr(*&v13[8 * v42++], 1, v25);
              v41 = *(this + 6);
            }

            while (v42 < v41);
LABEL_69:
            __I = &v40[v25];
            if (v41)
            {
              v43 = v13;
              do
              {
                *v43++ += 4 * v25;
                --v41;
              }

              while (v41);
            }

            goto LABEL_74;
          }

          __I += v25;
LABEL_74:
          v44 = *(this + 9) + v25;
          *(this + 9) = v44;
          if (v44 >= *(this + 3))
          {
            v45 = *(this + 46);
            v46 = *(this + 460);
            v62 = __I;
            if (v45 == 1)
            {
              if (v46 && (*(this + 461) & 1) == 0)
              {
                IR::FFTFilterTranspose::Implementation::forwardTransform(this, **(this + 26), **(this + 61));
                (*(*this + 112))(this, **(this + 26), this + 280, *(this + 3), 0.5);
                if (*(this + 6))
                {
                  IR::ComplexDataCircBuffer::getFFTBufferVec(a6, 0);
                  IR::FFTFilterTranspose::Implementation::fftBlockConvolution();
                }

                (*(*this + 112))(this, **(this + 26), this + 296, *(this + 3), -0.5);
                if (*(this + 6))
                {
                  IR::ComplexDataCircBuffer::getFFTBufferVec(a6, 0);
                  IR::FFTFilterTranspose::Implementation::fftBlockConvolution();
                }

                if (!*(this + 10) && !*(this + 5))
                {
                  *(this + 114) -= *(this + 3);
                }

                *(this + 461) = 1;
              }

              else
              {
                IR::FFTFilterTranspose::Implementation::forwardTransform(this, **(this + 26), **(this + 61));
                if (*(this + 6))
                {
                  IR::ComplexDataCircBuffer::getFFTBufferVec(a6, 0);
                  IR::FFTFilterTranspose::Implementation::fftBlockConvolution();
                }
              }
            }

            else
            {
              v47 = *(this + 26);
              if (v46)
              {
                IR::FFTFilterTranspose::Implementation::forwardTransform(this, v47[3], *(*(this + 58) + 24));
                if (*(this + 6))
                {
                  IR::ComplexDataCircBuffer::getFFTBufferVec(a6, 0);
                  IR::FFTFilterTranspose::Implementation::fftBlockConvolution();
                }

                IR::FFTFilterTranspose::Implementation::forwardTransform(this, **(this + 26), **(this + 58));
                if (*(this + 6))
                {
                  IR::ComplexDataCircBuffer::getFFTBufferVec(a6, 0);
                  IR::FFTFilterTranspose::Implementation::fftBlockConvolution();
                }

                if (!*(this + 10) && !*(this + 5))
                {
                  *(this + 114) -= *(this + 3);
                }
              }

              else
              {
                IR::FFTFilterTranspose::Implementation::forwardTransform(this, *v47, **(this + 58));
                if (*(this + 6))
                {
                  IR::ComplexDataCircBuffer::getFFTBufferVec(a6, 0);
                  IR::FFTFilterTranspose::Implementation::fftBlockConvolution();
                }
              }
            }

            if (CircularIndex + 1 == IR::ComplexDataCircBuffer::getNumFFTBuffers(a6))
            {
              CircularIndex = 0;
            }

            else
            {
              ++CircularIndex;
            }

            *(this + 9) = 0;
            if (*(this + 460) == 1)
            {
              v7 = v61;
              __I = v62;
              if (!*(this + 10) && *(this + 114) <= 0)
              {
                *(this + 460) = 0;
                caulk::pooled_semaphore_mutex::_unlock((*(this + 18) + 24));
              }
            }

            else
            {
              v7 = v61;
              __I = v62;
            }
          }

          v6 -= v25;
          if (!v6)
          {
            return 0;
          }
        }
      }

      v17 = __I;
      if (*(this + 47) != 1)
      {
        goto LABEL_111;
      }

      v18 = *(this + 20);
      if (v18 == *(this + 19) || (*(this + 460) & 1) != 0 || !caulk::pooled_semaphore_mutex::try_lock((v18 + 24)))
      {
        goto LABEL_111;
      }

      v19 = *(this + 19);
      v20 = *(this + 20);
      if (v20 == v19)
      {
        v48 = (v18 + 24);
      }

      else
      {
        *(this + 18) = v19;
        *(this + 19) = v20;
        v21 = *(this + 8);
        if (v21)
        {
          *(this + 10) = v21;
          *(this + 146) ^= 1u;
LABEL_111:
          v49 = *(this + 10);
          if (v49)
          {
            v50 = *(this + 8);
            v51 = -1.0 / v50;
            v52 = v49 / v50;
            v53 = -(-1.0 / v50);
            v54 = **(this + 58);
            if (v49 >= v6)
            {
              v55 = v6;
            }

            else
            {
              v55 = v49;
            }

            __Step = v53;
            __Start = 1.0 - v52;
            vDSP_vrampmul(v17, 1, &__Start, &__Step, v54, 1, v55);
            v56 = *(this + 58);
            if (v49 >= v6)
            {
              v58 = v56[3];
              __Step = v51;
              __Start = v52;
              vDSP_vrampmul(v17, 1, &__Start, &__Step, v58, 1, v55);
            }

            else
            {
              memcpy((*v56 + 4 * v55), &v17[v55], 4 * (v6 - v55));
              v57 = *(*(this + 58) + 24);
              __Step = v51;
              __Start = v52;
              vDSP_vrampmul(v17, 1, &__Start, &__Step, v57, 1, v55);
              vDSP_vclr((*(*(this + 58) + 24) + 4 * v55), 1, v6 - v55);
            }

            v59 = *(this + 10) - v55;
            *(this + 10) = v59;
            if (!v59)
            {
              if (*(this + 462) == 1)
              {
                LODWORD(v55) = *(this + 5) + v55;
              }

              *(this + 114) = v55;
            }

            *(this + 460) = 1;
          }

          else
          {
            memcpy(**(this + 58), v17, 4 * v6);
            vDSP_vclr(*(*(this + 58) + 24), 1, v6);
          }

          IR::FFTFilterTranspose::Implementation::firFilterSingleInput(this, a3, v6, v7);
          if (*(this + 460) == 1 && !*(this + 10) && *(this + 114) <= 0)
          {
            *(this + 460) = 0;
            caulk::pooled_semaphore_mutex::_unlock((*(this + 18) + 24));
          }

          return 0;
        }

        v48 = (v19 + 24);
      }

      caulk::pooled_semaphore_mutex::_unlock(v48);
      goto LABEL_111;
    }

    return 4294956429;
  }

  return 0;
}

void sub_296BA2744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    IR::FFTFilterTranspose::FFTFilterTranspose(a9);
  }

  _Unwind_Resume(exception_object);
}

void IR::FFTFilterTranspose::Implementation::~Implementation(IR::FFTFilterTranspose::Implementation *this)
{
  IR::FFTFilterTranspose::Implementation::~Implementation(this);

  JUMPOUT(0x29C25FC20);
}

{
  *this = &unk_2A1DEC360;
  v2 = *(this + 70);
  if (v2)
  {
    *(this + 71) = v2;
    operator delete(v2);
  }

  v3 = (this + 536);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 512);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 488);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 464);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  IR::FFTFilter<float>::Implementation::~Implementation(this);
}

__n128 IR::FFTFilter<float>::Implementation::getConfigParams@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 8);
  result = *(a1 + 20);
  *(a2 + 12) = result;
  return result;
}

void std::vector<std::vector<float>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v18[4] = a1;
    if (v9)
    {
      std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<float>>::~__split_buffer(v18);
  }
}

void std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<float>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::vector<std::vector<DSPSplitComplex>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v18[4] = a1;
    if (v9)
    {
      std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<float>>::~__split_buffer(v18);
  }
}

void std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<DSPSplitComplex>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
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
      std::allocator<DSPSplitComplex>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::allocator<DSPSplitComplex>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<IR::FFTFilterKernel<float>>::__append(void *result, unint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v2 - v3) >> 3) < a2)
  {
    v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *result) >> 3) + a2;
    if (v4 <= 0x666666666666666)
    {
      v5 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - *result) >> 3);
      if (2 * v5 > v4)
      {
        v4 = 2 * v5;
      }

      if (v5 >= 0x333333333333333)
      {
        v6 = 0x666666666666666;
      }

      else
      {
        v6 = v4;
      }

      if (v6)
      {
        std::allocator<IR::FFTFilterKernel<float>>::allocate_at_least[abi:ne200100](result, v6);
      }

      IR::FFTFilterKernel<float>::FFTFilterKernel();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (a2)
  {
    IR::FFTFilterKernel<float>::FFTFilterKernel();
  }

  result[1] = v3;
  return result;
}

void sub_296BA3058(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<IR::FFTFilterKernel<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<IR::FFTFilterKernel<float>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<IR::FFTFilterKernel<float>>,IR::FFTFilterKernel<float>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    IR::FFTFilterKernel<float>::FFTFilterKernel();
  }
}

void sub_296BA315C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    IR::FFTFilterKernel<float>::~FFTFilterKernel();
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<IR::FFTFilterKernel<float>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != *(a1 + 8))
  {
    *(a1 + 16) = v2 - 40;
    IR::FFTFilterKernel<float>::~FFTFilterKernel();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void IR::FFTFilter<float>::Implementation::~Implementation(uint64_t a1)
{
  IR::FFTFilter<float>::Implementation::~Implementation(a1);

  JUMPOUT(0x29C25FC20);
}

void std::vector<IR::FFTFilterKernel<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = **a1;
    if (v1[1] != v2)
    {
      IR::FFTFilterKernel<float>::~FFTFilterKernel();
    }

    v1[1] = v2;

    operator delete(v3);
  }
}

uint64_t IR::FFTFilter<float>::Implementation::~Implementation(uint64_t a1)
{
  *a1 = &unk_2A1DEC610;
  v2 = *(a1 + 432);
  if (v2)
  {
    *(a1 + 440) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 408);
  if (v3)
  {
    *(a1 + 416) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    *(a1 + 392) = v4;
    operator delete(v4);
  }

  v10 = (a1 + 360);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (a1 + 336);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (a1 + 312);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v5 = *(a1 + 240);
  if (v5)
  {
    *(a1 + 248) = v5;
    operator delete(v5);
  }

  v10 = (a1 + 208);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v6 = *(a1 + 184);
  if (v6)
  {
    *(a1 + 192) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 176);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  for (i = 112; i != 16; i -= 32)
  {
    v10 = (a1 + i);
    std::vector<IR::FFTFilterKernel<float>>::__destroy_vector::operator()[abi:ne200100](&v10);
  }

  return a1;
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t IR::getIRDataLog(IR *this)
{
  if (IR::getIRDataLog(void)::onceToken != -1)
  {
    IR::getIRDataLog();
  }

  return IR::getIRDataLog(void)::gLog;
}

os_log_t ___ZN2IR12getIRDataLogEv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "IRData");
  IR::getIRDataLog(void)::gLog = result;
  return result;
}

uint64_t IR::IRData::Implementation::getFileByteSize(FILE **a1)
{
  v2 = MEMORY[0x29C25FF70](*a1);
  fseek(*a1, 0, 2);
  v3 = MEMORY[0x29C25FF70](*a1);
  fseek(*a1, v2, 0);
  return v3;
}

void IR::IRData::Implementation::readIRPlist(FILE **a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  FileByteSize = IR::IRData::Implementation::getFileByteSize(a1);
  v25 = 0;
  *a2 = 0;
  __ptr = 0;
  if (fread(&__ptr, 4uLL, 1uLL, *a1) != 1)
  {
    if (IR::getIRDataLog(void)::onceToken != -1)
    {
      IR::getIRDataLog();
    }

    v8 = IR::getIRDataLog(void)::gLog;
    if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::readIRPlist(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    goto LABEL_11;
  }

  v7 = __ptr;
  if (FileByteSize - 4 < __ptr)
  {
    if (IR::getIRDataLog(void)::onceToken != -1)
    {
      IR::getIRDataLog();
    }

    if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::readIRPlist();
    }

LABEL_11:
    *a3 = 0;
    return;
  }

  std::vector<unsigned char>::vector[abi:ne200100](bytes, __ptr);
  if (fread(bytes[0], 1uLL, v7, *a1) == v7)
  {
    v16 = CFDataCreate(0, bytes[0], v7);
    if (!v16)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](exception, "Could not construct");
    }

    v21 = v16;
    v17 = CFGetTypeID(v16);
    if (v17 != CFDataGetTypeID())
    {
      v20 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](v20, "Could not construct");
    }

    applesauce::CF::make_DictionaryRef(&v21, &v22);
    v18 = v22;
    v25 = v22;
    v22 = 0;
    if (v21)
    {
      CFRelease(v21);
    }

    *a3 = v18;
  }

  else
  {
    if (IR::getIRDataLog(void)::onceToken != -1)
    {
      IR::IRData::Implementation::readIRPlist();
    }

    if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::readIRPlist();
    }

    *a3 = 0;
  }

  v25 = 0;
  if (bytes[0])
  {
    bytes[1] = bytes[0];
    operator delete(bytes[0]);
  }

  if (v25)
  {
    CFRelease(v25);
  }
}

void sub_296BA381C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a10);
  __cxa_begin_catch(a1);
  if (IR::getIRDataLog(void)::onceToken != -1)
  {
    IR::IRData::Implementation::readIRPlist();
  }

  v13 = IR::getIRDataLog(void)::gLog;
  if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    IR::IRData::Implementation::readIRPlist(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  *v10 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296BA374CLL);
}

void sub_296BA38BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef((v13 - 40));
  _Unwind_Resume(a1);
}

CFTypeID applesauce::CF::make_DictionaryRef@<X0>(CFDataRef *this@<X0>, void *a2@<X8>)
{
  if (!*this)
  {
    goto LABEL_10;
  }

  v4 = CFPropertyListCreateWithData(0, *this, 0, 0, 0);
  if (!v4)
  {
    result = CFDictionaryGetTypeID();
    if (!result)
    {
      *a2 = 0;
      return result;
    }

LABEL_10:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 != CFDictionaryGetTypeID())
  {
    CFRelease(v5);
    goto LABEL_10;
  }

  *a2 = v5;
  v7 = CFGetTypeID(v5);
  result = CFDictionaryGetTypeID();
  if (v7 != result)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](v9, "Could not construct");
  }

  return result;
}

void sub_296BA39E8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void applesauce::CF::DataRef::~DataRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void IR::IRData::Implementation::extractIRDataTypePlist(const __CFDictionary **a1@<X0>, int a2@<W1>, _DWORD *a3@<X2>, const __CFDictionary **a4@<X8>)
{
  v6 = *a1;
  if (!a2 || !v6)
  {
    *a4 = v6;
    *a1 = 0;
    return;
  }

  cf = 0;
  v24 = @"ImpulseResponses";
  applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(v6, &v24, &cf, &theArray);
  if (cf)
  {
    CFRelease(cf);
  }

  v9 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v11 = Count;
    v12 = theArray;
    if (theArray)
    {
      v13 = CFArrayGetCount(theArray);
      if (!v11)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v13 = 0;
      if (!Count)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    while (v9 != v12 || v13 != v14)
    {
      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(v9, v14, a4);
      v15 = *a4;
      if (!*a4)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25F8D0](exception, "Could not construct");
      }

      v24 = @"Type";
      v16 = applesauce::CF::details::find_at_key_or_optional<unsigned int,__CFString const*>(v15, &v24);
      if ((v16 & 0x100000000) != 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v17 == a2)
      {
        goto LABEL_27;
      }

      v18 = *a4;
      if (!*a4)
      {
        v22 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25F8D0](v22, "Could not construct");
      }

      v24 = @"DataLengthBytes";
      v19 = applesauce::CF::details::find_at_key_or_optional<unsigned int,__CFString const*>(v18, &v24);
      if ((v19 & 0x100000000) != 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      *a3 += v20;
      if (*a4)
      {
        CFRelease(*a4);
      }

      if (v11 == ++v14)
      {
        break;
      }
    }
  }

LABEL_26:
  *a4 = 0;
LABEL_27:
  if (theArray)
  {
    CFRelease(theArray);
  }
}

void sub_296BA3C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(v12);
  applesauce::CF::ArrayRef::~ArrayRef(&a12);
  _Unwind_Resume(a1);
}

void *applesauce::CF::DictionaryRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

void applesauce::CF::ArrayRef::~ArrayRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void IR::IRData::Implementation::readIRPlist(CFTypeRef *a1@<X0>, _DWORD *a2@<X1>, int a3@<W2>, CFTypeRef *a4@<X8>)
{
  v7 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  cf = v7;
  IR::getFilePtr(&cf, 1, v13);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13[0])
  {
    IR::IRData::Implementation::readIRPlist(v13, a2, a4);
    v8 = *a4;
    if (*a4)
    {
      CFRetain(*a4);
    }

    v10 = v8;
    IR::IRData::Implementation::extractIRDataTypePlist(&v10, a3, a2, &v11);
    *a4 = v11;
    v11 = v8;
    if (v8)
    {
      CFRelease(v8);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    v9 = v13[0];
    v13[0] = 0;
    if (v9)
    {
      (v13[1])();
    }
  }

  else
  {
    *a4 = 0;
  }
}

void sub_296BA3E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(void))
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
  applesauce::CF::DictionaryRef::~DictionaryRef(v14);
  v16 = a13;
  a13 = 0;
  if (v16)
  {
    a14();
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::URLRef::~URLRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void IR::IRData::Implementation::readIRPlist(IR::IRData::Implementation *this@<X0>, CFTypeRef *a2@<X8>)
{
  v7 = 0;
  v5 = *this;
  if (*this)
  {
    CFRetain(*this);
  }

  v6 = v5;
  IR::IRData::Implementation::readIRPlist(&v6, &v7, *(this + 10), a2);
  if (v5)
  {
    CFRelease(v5);
  }
}

void IR::IRData::~IRData(IR::IRData::Implementation **this)
{
  std::unique_ptr<IR::IRData::Implementation>::reset[abi:ne200100](this, 0);
}

{
  std::unique_ptr<IR::IRData::Implementation>::reset[abi:ne200100](this, 0);
}

void IR::IRData::Implementation::Implementation(uint64_t a1, int a2, int a3, char a4, int a5, int a6, int a7, uint64_t *a8, float a9, float a10, uint64_t *a11, uint64_t *a12, int a13, const void **a14, const void **a15)
{
  *a1 = a9;
  *(a1 + 4) = a9;
  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  *(a1 + 16) = a3;
  *(a1 + 20) = a10;
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a7;
  *(a1 + 84) = a7;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  std::vector<IR::IRCoordinateType>::__init_with_size[abi:ne200100]<IR::IRCoordinateType*,IR::IRCoordinateType*>(a1 + 88, *a8, a8[1], (a8[1] - *a8) >> 2);
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 136, *a11, a11[1], (a11[1] - *a11) >> 2);
  *(a1 + 160) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  std::vector<IR::IRInterpolationMethod>::__init_with_size[abi:ne200100]<IR::IRInterpolationMethod*,IR::IRInterpolationMethod*>(a1 + 208, *a12, a12[1], (a12[1] - *a12) >> 2);
  IR::IRCoordinates::IRCoordinates((a1 + 232));
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  IR::IRDataAttributes::IRDataAttributes(a1 + 344, &stru_2A1DECFF0, a3, a4, a13, 0, a9);
  *(a1 + 496) = a13 == 1;
  *(a1 + 500) = 0;
  *(a1 + 512) = 0;
  *(a1 + 528) = 0;
  *(a1 + 520) = 0;
  v19 = *a14;
  if (*a14)
  {
    v20 = *(a1 + 296);
    *(a1 + 296) = v19;
    CFRetain(v19);
    if (v20)
    {
      CFRelease(v20);
    }
  }

  v21 = *a15;
  if (*a15)
  {
    v22 = *(a1 + 304);
    *(a1 + 304) = v21;
    CFRetain(v21);
    if (v22)
    {
      CFRelease(v22);
    }
  }

  IR::IRData::Implementation::createEmptyIRObject(a1);
}

void sub_296BA419C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::vector<std::shared_ptr<IR::VBAPTriangulationKernel>>::__destroy_vector::operator()[abi:ne200100](&a10);
  IR::IRDataAttributes::~IRDataAttributes((v10 + 344));
  a10 = (v10 + 312);
  std::vector<IR::FFTFilterKernel<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  applesauce::CF::DictionaryRef::~DictionaryRef((v10 + 304));
  applesauce::CF::DictionaryRef::~DictionaryRef((v10 + 296));
  applesauce::CF::StringRef::~StringRef((v10 + 288));
  v17 = *(v10 + 280);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = *v12;
  if (*v12)
  {
    *(v10 + 216) = v18;
    operator delete(v18);
  }

  v19 = *(v10 + 184);
  if (v19)
  {
    *(v10 + 192) = v19;
    operator delete(v19);
  }

  v20 = *v15;
  if (*v15)
  {
    *(v10 + 168) = v20;
    operator delete(v20);
  }

  v21 = *(v14 + 24);
  if (v21)
  {
    *(v10 + 144) = v21;
    operator delete(v21);
  }

  v22 = *v14;
  if (*v14)
  {
    *(v10 + 120) = v22;
    operator delete(v22);
  }

  v23 = *v11;
  if (*v11)
  {
    *(v10 + 96) = v23;
    operator delete(v23);
  }

  v24 = *v13;
  if (*v13)
  {
    *(v10 + 56) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

uint64_t IR::IRDataAttributes::IRDataAttributes(uint64_t a1, const __CFString *a2, int a3, char a4, int a5, int a6, float a7)
{
  cf = CFURLCreateWithString(0, a2, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  IR::IRDataAttributes::IRDataAttributes(a1, &cf, a3, a4, 0, 0, a5, a6, a7);
  if (cf)
  {
    CFRelease(cf);
  }

  return a1;
}

void sub_296BA4364(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

int *IR::IRData::Implementation::getEmptyIRDataNode(IR::IRData::Implementation *this)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    IR::IRData::Implementation::getEmptyIRDataNode();
  }

  return &dword_2A18B8200;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t IR::IRData::Implementation::Implementation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unsigned int a6, uint64_t *a7, uint64_t *a8, float a9, const __CFDictionary **a10, uint64_t a11, unsigned int a12, char a13, int a14, int a15, uint64_t *a16)
{
  *a1 = a9;
  *(a1 + 4) = a9;
  *(a1 + 8) = 0;
  *(a1 + 16) = a12;
  *(a1 + 24) = a13;
  *(a1 + 28) = 0;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a14;
  *(a1 + 84) = a14;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v95 = (a1 + 88);
  std::vector<IR::IRCoordinateType>::__init_with_size[abi:ne200100]<IR::IRCoordinateType*,IR::IRCoordinateType*>(a1 + 88, *a4, a4[1], (a4[1] - *a4) >> 2);
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  v96 = (a1 + 112);
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 136, *a7, a7[1], (a7[1] - *a7) >> 2);
  *(a1 + 160) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  v94 = (a1 + 208);
  std::vector<IR::IRInterpolationMethod>::__init_with_size[abi:ne200100]<IR::IRInterpolationMethod*,IR::IRInterpolationMethod*>(a1 + 208, *a8, a8[1], (a8[1] - *a8) >> 2);
  IR::IRCoordinates::IRCoordinates((a1 + 232));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  v23 = *(a11 + 23);
  if (v23 >= 0)
  {
    v24 = a11;
  }

  else
  {
    v24 = *a11;
  }

  if (v24)
  {
    if (v23 >= 0)
    {
      v25 = *(a11 + 23);
    }

    else
    {
      v25 = *(a11 + 8);
    }

    v26 = CFStringCreateWithBytes(0, v24, v25, 0x8000100u, 0);
    *(a1 + 288) = v26;
    if (!v26)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](exception, "Could not construct");
    }
  }

  else
  {
    *(a1 + 288) = 0;
  }

  *(a1 + 321) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  IR::IRDataAttributes::IRDataAttributes(a1 + 344, &stru_2A1DECFF0, a12, a13, a15, 0, a9);
  *(a1 + 496) = a15 == 1;
  *(a1 + 500) = 0;
  *(a1 + 512) = 0;
  *(a1 + 528) = 0;
  *(a1 + 520) = 0;
  v28 = *a10;
  if (*a10)
  {
    v29 = *(a1 + 304);
    *(a1 + 304) = v28;
    CFRetain(v28);
    if (v29)
    {
      CFRelease(v29);
    }

    if (!*a10)
    {
      v93 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](v93, "Could not construct");
    }

    v30 = applesauce::CF::details::find_at_key_or_optional<float,char const(&)[14]>(*a10, "ModelingDelay");
    if ((v30 & 0x100000000) != 0)
    {
      *(a1 + 36) = vcvtas_u32_f32((*a1 * *&v30) / *(a1 + 4));
    }
  }

  v31 = *a2;
  v32 = *(a2 + 8);
  if (*a2 == v32 || (v33 = *a3, v34 = *(a3 + 8), *a3 == v34) || (v36 = *a4, v35 = a4[1], *a4 == v35) || (v37 = *a7, v38 = a7[1], *a7 == v38) || (v39 = *a8, v40 = a8[1], *a8 == v40))
  {
    if (IR::getIRDataLog(void)::onceToken != -1)
    {
      IR::getIRDataLog();
    }

    v50 = IR::getIRDataLog(void)::gLog;
    if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::Implementation(v50, v51, v52, v53, v54, v55, v56, v57);
    }
  }

  else
  {
    v41 = (v31[1] - *v31) >> 2;
    if (v41 % a6)
    {
      if (IR::getIRDataLog(void)::onceToken != -1)
      {
        IR::getIRDataLog();
      }

      v42 = IR::getIRDataLog(void)::gLog;
      if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        IR::IRData::Implementation::Implementation(v42, v43, v44, v45, v46, v47, v48, v49);
      }

      return a1;
    }

    v59 = v32 - v31;
    *(a1 + 72) = -1431655765 * (v59 >> 3);
    if (v34 - v33 == v59 && (v60 = (v35 - v36) >> 2, v61 = v33[1] - *v33, v62 = v61 >> 2, v61 >> 2 == v60) && v38 - v37 == v61 && v40 - v39 == v61)
    {
      v63 = *a5;
      v64 = *(a5 + 8);
      if (*a5 == v64)
      {
        v66 = 0.0;
        goto LABEL_53;
      }

      if (v64 - v63 == v59 && a6 == (v63[1] - *v63) >> 2)
      {
        v65 = 0;
        v66 = 0.0;
        v67 = 1;
        do
        {
          __C[0] = 0.0;
          vDSP_maxv(*(*a5 + 24 * v65), 1, __C, v62);
          if (__C[0] > v66)
          {
            v66 = __C[0];
          }

          v65 = v67;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) > v67++);
LABEL_53:
        *(a1 + 8) = v41 / a6;
        *(a1 + 20) = v66;
        *(a1 + 28) = v60;
        if (!*(a1 + 16))
        {
          *(a1 + 16) = v41 / a6;
        }

        if (IR::IRData::Implementation::canCreateSizeDimension(a1, a16))
        {
          v85.__i_ = v95->__begin_;
          LODWORD(__C[0]) = 8;
          std::vector<IR::IRCoordinateType>::insert(v95, v85, 1uLL, __C);
          v86.__i_ = v94->__begin_;
          LODWORD(__C[0]) = 1;
          std::vector<IR::IRCoordinateType>::insert(v94, v86, 1uLL, __C);
          v87 = *(a1 + 136);
          __C[0] = 0.0;
          std::vector<float>::insert((a1 + 136), v87, 1uLL, __C, v88);
          v89 = *(a1 + 112);
          v90 = (*(a1 + 120) - v89) >> 2;
          __B[0] = 1;
          vDSP_vsaddi(v89, 1, __B, v89, 1, v90);
          v91.__i_ = v96->__begin_;
          __C[0] = 0.0;
          std::vector<IR::IRCoordinateType>::insert(v96, v91, 1uLL, __C);
          ++*(a1 + 28);
        }

        if (*a10)
        {
          v92 = applesauce::CF::DictionaryRef::operator->(a10);
          applesauce::CF::details::find_at_key_or_optional<float,char const(&)[21]>(*v92, "DiffuseFieldPowerRMS");
        }

        IR::IRData::Implementation::createEmptyIRObject(a1);
      }

      if (IR::getIRDataLog(void)::onceToken != -1)
      {
        IR::getIRDataLog();
      }

      v77 = IR::getIRDataLog(void)::gLog;
      if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        IR::IRData::Implementation::Implementation(v77, v78, v79, v80, v81, v82, v83, v84);
      }
    }

    else
    {
      if (IR::getIRDataLog(void)::onceToken != -1)
      {
        IR::getIRDataLog();
      }

      v69 = IR::getIRDataLog(void)::gLog;
      if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        IR::IRData::Implementation::Implementation(v69, v70, v71, v72, v73, v74, v75, v76);
      }
    }
  }

  return a1;
}

void sub_296BA50CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void **a10, void **a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  applesauce::CF::ArrayRef::~ArrayRef(&a24);
  *(v33 - 144) = v32 + 512;
  std::vector<std::shared_ptr<IR::VBAPTriangulationKernel>>::__destroy_vector::operator()[abi:ne200100]((v33 - 144));
  IR::IRDataAttributes::~IRDataAttributes((v32 + 344));
  *(v33 - 144) = v32 + 312;
  std::vector<IR::FFTFilterKernel<float>>::__destroy_vector::operator()[abi:ne200100]((v33 - 144));
  applesauce::CF::DictionaryRef::~DictionaryRef((v32 + 304));
  applesauce::CF::DictionaryRef::~DictionaryRef(a10);
  applesauce::CF::StringRef::~StringRef((v32 + 288));
  v35 = *(v32 + 280);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v36 = *a17;
  if (*a17)
  {
    *(v32 + 216) = v36;
    operator delete(v36);
  }

  v37 = *(v32 + 184);
  if (v37)
  {
    *(v32 + 192) = v37;
    operator delete(v37);
  }

  v38 = *a11;
  if (*a11)
  {
    *(v32 + 168) = v38;
    operator delete(v38);
  }

  v39 = *(a19 + 24);
  if (v39)
  {
    *(v32 + 144) = v39;
    operator delete(v39);
  }

  v40 = *a19;
  if (*a19)
  {
    *(v32 + 120) = v40;
    operator delete(v40);
  }

  v41 = *a18;
  if (*a18)
  {
    *(v32 + 96) = v41;
    operator delete(v41);
  }

  v42 = *a12;
  if (*a12)
  {
    *(v32 + 56) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(a1);
}

BOOL IR::IRData::Implementation::canCreateSizeDimension(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  if (v4 == v5)
  {
LABEL_9:
    if (IR::getIRDataLog(void)::onceToken != -1)
    {
      IR::getIRDataLog();
    }

    v8 = IR::getIRDataLog(void)::gLog;
    result = os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR);
    if (result)
    {
      IR::IRData::Implementation::canCreateSizeDimension(v8, v10, v11, v12, v13, v14, v15, v16);
      return 0;
    }
  }

  else
  {
    v6 = *(a1 + 88);
    while (*v6 != 8)
    {
      if (++v6 == v5)
      {
        v7 = *(a1 + 88);
        while (*v7)
        {
          if (++v7 == v5)
          {
            goto LABEL_9;
          }
        }

        while (*v4 != 1)
        {
          if (++v4 == v5)
          {
            goto LABEL_9;
          }
        }

        v17 = 0;
        v18 = (v3 - v2) >> 2;
        v19 = 1;
        result = 1;
        while (1)
        {
          v20 = *(v2 + 4 * v17);
          v21 = v20 >= 0.0 && v20 <= 1.0;
          if (!v21)
          {
            break;
          }

          v17 = v19;
          v21 = v18 > v19++;
          if (!v21)
          {
            return result;
          }
        }

        if (IR::getIRDataLog(void)::onceToken != -1)
        {
          IR::getIRDataLog();
        }

        v30 = IR::getIRDataLog(void)::gLog;
        result = os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR);
        if (result)
        {
          IR::IRData::Implementation::canCreateSizeDimension(v30, v31, v32, v33, v34, v35, v36, v37);
          return 0;
        }

        return result;
      }
    }

    if (IR::getIRDataLog(void)::onceToken != -1)
    {
      IR::getIRDataLog();
    }

    v22 = IR::getIRDataLog(void)::gLog;
    result = os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR);
    if (result)
    {
      IR::IRData::Implementation::canCreateSizeDimension(v22, v23, v24, v25, v26, v27, v28, v29);
      return 0;
    }
  }

  return result;
}

std::vector<int>::iterator std::vector<IR::IRCoordinateType>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  if (!__n)
  {
    return __position.__i_;
  }

  v5 = __x;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    v15 = end - __position.__i_;
    v16 = this->__end_;
    v17 = __n;
    if (__n <= end - __position.__i_)
    {
      goto LABEL_21;
    }

    v18 = 0;
    v17 = v15 >> 2;
    v16 = &end[__n - (v15 >> 2)];
    v19 = *__x;
    v20 = (4 * __n - v15 - 4) >> 2;
    v21 = (v20 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v22 = vdupq_n_s64(v20);
    v23 = (end + 2);
    do
    {
      v24 = vdupq_n_s64(v18);
      v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_296C19AB0)));
      if (vuzp1_s16(v25, *v22.i8).u8[0])
      {
        *(v23 - 2) = v19;
      }

      if (vuzp1_s16(v25, *&v22).i8[2])
      {
        *(v23 - 1) = v19;
      }

      if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_296C19AA0)))).i32[1])
      {
        *v23 = v19;
        v23[1] = v19;
      }

      v18 += 4;
      v23 += 4;
    }

    while (v21 != v18);
    this->__end_ = v16;
    if (end != __position.__i_)
    {
LABEL_21:
      v26 = &__position.__i_[__n];
      v27 = &v16[-__n];
      v28 = v16;
      if (v27 < end)
      {
        v28 = v16;
        do
        {
          v29 = *v27++;
          *v28++ = v29;
        }

        while (v27 < end);
      }

      this->__end_ = v28;
      if (v16 != v26)
      {
        memmove(&__position.__i_[__n], __position.__i_, v16 - v26);
      }

      if (__position.__i_ <= v5)
      {
        if (this->__end_ <= v5)
        {
          v30 = 0;
        }

        else
        {
          v30 = __n;
        }

        v5 += v30;
      }

      v31 = 0;
      v32 = *v5;
      v33 = vdupq_n_s64(v17 - 1);
      v34 = (__position.__i_ + 2);
      do
      {
        v35 = vdupq_n_s64(v31);
        v36 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_296C19AB0)));
        if (vuzp1_s16(v36, *v33.i8).u8[0])
        {
          *(v34 - 2) = v32;
        }

        if (vuzp1_s16(v36, *&v33).i8[2])
        {
          *(v34 - 1) = v32;
        }

        if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_296C19AA0)))).i32[1])
        {
          *v34 = v32;
          v34[1] = v32;
        }

        v31 += 4;
        v34 += 4;
      }

      while (((v17 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v31);
    }

    return __position.__i_;
  }

  begin = this->__begin_;
  v11 = __n + end - this->__begin_;
  if (v11 >> 62)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v12 = __position.__i_ - begin;
  v13 = value - begin;
  if (v13 >> 1 > v11)
  {
    v11 = v13 >> 1;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v14 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    std::allocator<float>::allocate_at_least[abi:ne200100](this, v14);
  }

  v38 = 0;
  v37 = 4 * (v12 >> 2);
  v39 = *__x;
  v40 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
  v41 = vdupq_n_s64(v40);
  v42 = v40 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
  v43 = (v37 + 8);
  do
  {
    v44 = vdupq_n_s64(v38);
    v45 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_296C19AB0)));
    if (vuzp1_s16(v45, *v41.i8).u8[0])
    {
      *(v43 - 2) = v39;
    }

    if (vuzp1_s16(v45, *&v41).i8[2])
    {
      *(v43 - 1) = v39;
    }

    if (vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_296C19AA0)))).i32[1])
    {
      *v43 = v39;
      v43[1] = v39;
    }

    v38 += 4;
    v43 += 4;
  }

  while (v42 != v38);
  memcpy((v37 + 4 * __n), __position.__i_, this->__end_ - __position.__i_);
  v46 = this->__begin_;
  v47 = (v37 + 4 * __n + this->__end_ - __position.__i_);
  this->__end_ = __position.__i_;
  v48 = (__position.__i_ - v46);
  v49 = (v37 - (__position.__i_ - v46));
  memcpy(v49, v46, v48);
  v50 = this->__begin_;
  this->__begin_ = v49;
  this->__end_ = v47;
  this->__end_cap_.__value_ = 0;
  if (v50)
  {
    operator delete(v50);
  }

  return v37;
}

char *std::vector<float>::insert(void *a1, char *__src, unint64_t a3, char *a4, int16x4_t a5)
{
  if (!a3)
  {
    return __src;
  }

  v6 = a4;
  v9 = a1[1];
  v10 = a1[2];
  if (a3 <= (v10 - v9) >> 2)
  {
    v16 = v9 - __src;
    v17 = a1[1];
    v18 = a3;
    if (a3 <= (v9 - __src) >> 2)
    {
      goto LABEL_21;
    }

    v19 = 0;
    v18 = v16 >> 2;
    v17 = &v9[4 * (a3 - (v16 >> 2))];
    a5.i32[0] = *a4;
    v20 = (4 * a3 - v16 - 4) >> 2;
    v21 = (v20 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v22 = vdupq_n_s64(v20);
    v23 = v9 + 8;
    do
    {
      v24 = vdupq_n_s64(v19);
      v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_296C19AB0)));
      if (vuzp1_s16(v25, a5).u8[0])
      {
        *(v23 - 2) = a5.i32[0];
      }

      if (vuzp1_s16(v25, a5).i8[2])
      {
        *(v23 - 1) = a5.i32[0];
      }

      if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_296C19AA0)))).i32[1])
      {
        *v23 = a5.i32[0];
        v23[1] = a5.i32[0];
      }

      v19 += 4;
      v23 += 4;
    }

    while (v21 != v19);
    a1[1] = v17;
    if (v9 != __src)
    {
LABEL_21:
      v26 = &__src[4 * a3];
      v27 = &v17[-4 * a3];
      v28 = v17;
      if (v27 < v9)
      {
        v28 = v17;
        do
        {
          v29 = *v27;
          v27 += 4;
          *v28 = v29;
          v28 += 4;
        }

        while (v27 < v9);
      }

      a1[1] = v28;
      if (v17 != v26)
      {
        memmove(&__src[4 * a3], __src, v17 - v26);
      }

      if (__src <= v6)
      {
        if (a1[1] <= v6)
        {
          v30 = 0;
        }

        else
        {
          v30 = a3;
        }

        v6 += 4 * v30;
      }

      v31 = 0;
      a5.i32[0] = *v6;
      v32 = vdupq_n_s64(v18 - 1);
      v33 = __src + 8;
      do
      {
        v34 = vdupq_n_s64(v31);
        v35 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v34, xmmword_296C19AB0)));
        if (vuzp1_s16(v35, a5).u8[0])
        {
          *(v33 - 2) = a5.i32[0];
        }

        if (vuzp1_s16(v35, a5).i8[2])
        {
          *(v33 - 1) = a5.i32[0];
        }

        if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v34, xmmword_296C19AA0)))).i32[1])
        {
          *v33 = a5.i32[0];
          v33[1] = a5.i32[0];
        }

        v31 += 4;
        v33 += 4;
      }

      while (((v18 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v31);
    }

    return __src;
  }

  v11 = *a1;
  v12 = a3 + (&v9[-*a1] >> 2);
  if (v12 >> 62)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v13 = __src - v11;
  v14 = v10 - v11;
  if (v14 >> 1 > v12)
  {
    v12 = v14 >> 1;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v15 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::allocator<float>::allocate_at_least[abi:ne200100](a1, v15);
  }

  v37 = 0;
  v36 = 4 * (v13 >> 2);
  a5.i32[0] = *a4;
  v38 = (v36 + 4 * a3);
  v39 = (a3 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
  v40 = vdupq_n_s64(v39);
  v41 = v39 - ((a3 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
  v42 = (v36 + 8);
  do
  {
    v43 = vdupq_n_s64(v37);
    v44 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v43, xmmword_296C19AB0)));
    if (vuzp1_s16(v44, a5).u8[0])
    {
      *(v42 - 2) = a5.i32[0];
    }

    if (vuzp1_s16(v44, a5).i8[2])
    {
      *(v42 - 1) = a5.i32[0];
    }

    if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v40, vorrq_s8(v43, xmmword_296C19AA0)))).i32[1])
    {
      *v42 = a5.i32[0];
      v42[1] = a5.i32[0];
    }

    v37 += 4;
    v42 += 4;
  }

  while (v41 != v37);
  memcpy(v38, __src, a1[1] - __src);
  v45 = *a1;
  v46 = &v38[a1[1] - __src];
  a1[1] = __src;
  v47 = (__src - v45);
  v48 = (v36 - (__src - v45));
  memcpy(v48, v45, v47);
  v49 = *a1;
  *a1 = v48;
  a1[1] = v46;
  a1[2] = 0;
  if (v49)
  {
    operator delete(v49);
  }

  return v36;
}

uint64_t IR::IRData::Implementation::createSizeDimension(uint64_t a1, void *a2, const __CFArray **a3, int a4)
{
  v14 = *MEMORY[0x29EDCA608];
  std::chrono::system_clock::now();
  v7 = *a3;
  if (a4 == 1)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else if (!v7)
  {
    goto LABEL_6;
  }

  if (CFArrayGetCount(v7) == (a2[1] - *a2) >> 2)
  {
LABEL_6:
    memset(v11, 0, sizeof(v11));
    std::vector<IR::IRCoordinates>::reserve(v11, *(a1 + 72));
    IR::IRCoordinates::IRCoordinates(v10);
    if (*(a1 + 496))
    {
      v12 = 0;
      operator new();
    }

    v13 = 0;
    operator new();
  }

  return 0;
}

void sub_296BA65DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, char *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58)
{
  std::vector<std::vector<std::list<int>>>::__destroy_vector::operator()[abi:ne200100](&a33);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a36);
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  a54 = &a43;
  std::vector<IR::FFTFilterKernel<float>>::__destroy_vector::operator()[abi:ne200100](&a54);
  if (a51)
  {
    a52 = a51;
    operator delete(a51);
  }

  _Unwind_Resume(a1);
}

void IR::IRData::Implementation::findDimensionsWithMoreThanOneNode(IR::IRData::Implementation *this)
{
  v19[4] = *MEMORY[0x29EDCA608];
  v1 = (this + 160);
  *(this + 21) = *(this + 20);
  if (**(this + 34) != *(*(this + 34) + 8))
  {
    v3 = *(this + 7);
    if (v3)
    {
      __u = 0;
      std::vector<IR::IRInterpolationMethod>::assign((this + 184), v3, &__u);
      if (*(this + 496) == 1)
      {
        v4 = *(this + 14);
        if (v4 != *(this + 15))
        {
          *(*(this + 23) + 4 * *v4) = -286331153 * ((*(*(this + 34) + 8) - **(this + 34)) >> 3);
          v19[0] = &unk_2A1DEC7B8;
          v19[1] = this;
          v19[3] = v19;
          IR::IRData::Implementation::forEachNode(this, v19, 0, 0);
          std::__function::__value_func<void ()(IR::IRDataNode &,unsigned int)>::~__value_func[abi:ne200100](v19);
        }

        v5 = *(this + 64);
        v6 = *(this + 65);
        if (v5 == v6)
        {
          v7 = 0;
        }

        else
        {
          v7 = 0;
          do
          {
            v8 = *v5;
            v5 += 2;
            v9 = (*(v8 + 48) - *(v8 + 40)) >> 2;
            if (v9 > v7)
            {
              v7 = v9;
            }
          }

          while (v5 != v6);
        }

        v10 = *(this + 11);
        v11 = *(this + 12);
        v12 = v10;
        if (v10 != v11)
        {
          while (*v12)
          {
            v12 += 4;
            if (v12 == v11)
            {
              v12 = *(this + 12);
              break;
            }
          }
        }

        if (v11 != v12)
        {
          *(*(this + 23) + ((v12 - v10) & 0x3FFFFFFFCLL)) = v7;
        }

        v13 = v10;
        if (v10 != v11)
        {
          while (*v13 != 1)
          {
            v13 += 4;
            if (v13 == v11)
            {
              v13 = v11;
              break;
            }
          }
        }

        if (v11 != v13)
        {
          *(*(this + 23) + ((v13 - v10) & 0x3FFFFFFFCLL)) = v7;
        }
      }

      else
      {
        **(this + 23) = -286331153 * ((*(*(this + 34) + 8) - **(this + 34)) >> 3);
        v18[0] = &unk_2A1DEC800;
        v18[1] = this;
        v18[3] = v18;
        IR::IRData::Implementation::forEachNode(this, v18, 0, 0);
        std::__function::__value_func<void ()(IR::IRDataNode &,unsigned int)>::~__value_func[abi:ne200100](v18);
      }

      v14 = *(this + 7);
      if (v14)
      {
        v15 = 0;
        for (i = 0; i < v14; ++i)
        {
          if (*(*(this + 23) + v15) >= 2u)
          {
            std::vector<int>::push_back[abi:ne200100](v1, (*(this + 11) + v15));
            v14 = *(this + 7);
          }

          v15 += 4;
        }
      }
    }
  }
}

void sub_296BA69FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(IR::IRDataNode &,unsigned int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void IR::IRData::Implementation::Implementation(uint64_t a1, const IR::IRDataAttributes *a2)
{
  *(a1 + 16) = 0;
  *(a1 + 28) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 24) = 0;
  *a1 = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0xFFFF0000FFFF0000;
  *(a1 + 88) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  IR::IRCoordinates::IRCoordinates((a1 + 232));
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  IR::IRDataAttributes::IRDataAttributes((a1 + 344), a2);
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 500) = 0;
  *(a1 + 512) = 0;
  *(a1 + 528) = 0;
  *(a1 + 520) = 0;
  operator new();
}

void sub_296BA9C7C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const void *applesauce::CF::StringRef::from_get@<X0>(const void *this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    v4 = this;
    CFRetain(this);
    *a2 = v4;
    v5 = CFGetTypeID(v4);
    this = CFStringGetTypeID();
    if (v5 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](exception, "Could not construct");
    }
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

void sub_296BAA554(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::TypeRefPair::~TypeRefPair(applesauce::CF::TypeRefPair *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
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

      std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
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
    v13 = 0;
    a4.i32[0] = *a3;
    v14 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v12 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v13);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_296C19AB0)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_296C19AA0)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v13 += 4;
      v16 += 4;
    }

    while (v14 != v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v10 + 4 * v20;
    a4.i32[0] = *a3;
    v23 = (4 * a2 - (v10 - result) - 4) >> 2;
    v24 = vdupq_n_s64(v23);
    v25 = (v10 + 8);
    do
    {
      v26 = vdupq_n_s64(v21);
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_296C19AB0)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v25 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v25 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_296C19AA0)))).i32[1])
      {
        *v25 = a4.i32[0];
        v25[1] = a4.i32[0];
      }

      v21 += 4;
      v25 += 4;
    }

    while (((v23 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void std::vector<IR::IRInterpolationMethod>::assign(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n, std::vector<unsigned int>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (__n > (value - begin) >> 2)
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

    if (!(__n >> 62))
    {
      v7 = value >> 1;
      if (value >> 1 <= __n)
      {
        v7 = __n;
      }

      if (value >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v8 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<IR::IRCoordinateType>::__vallocate[abi:ne200100](this, v8);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v10 = end - begin;
  if (v10 >= __n)
  {
    v11 = __n;
  }

  else
  {
    v11 = end - begin;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *__u;
    v14 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = begin + 2;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_296C19AB0)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 2) = v13;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 1) = v13;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_296C19AA0)))).i32[1])
      {
        *v16 = v13;
        v16[1] = v13;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v14 != v12);
  }

  v19 = __n >= v10;
  v20 = __n - v10;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = &end[v20];
    v23 = *__u;
    v24 = (4 * __n - (end - begin) - 4) >> 2;
    v25 = vdupq_n_s64(v24);
    v26 = end + 2;
    do
    {
      v27 = vdupq_n_s64(v21);
      v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_296C19AB0)));
      if (vuzp1_s16(v28, *v25.i8).u8[0])
      {
        *(v26 - 2) = v23;
      }

      if (vuzp1_s16(v28, *&v25).i8[2])
      {
        *(v26 - 1) = v23;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_296C19AA0)))).i32[1])
      {
        *v26 = v23;
        v26[1] = v23;
      }

      v21 += 4;
      v26 += 4;
    }

    while (((v24 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    this->__end_ = v22;
  }

  else
  {
    this->__end_ = &begin[__n];
  }
}

void IR::calculateFadeInWindow(std::vector<int>::size_type __sz, std::vector<int> *this)
{
  v3 = __sz;
  v4 = __sz;
  if (__sz != this->__end_ - this->__begin_)
  {
    std::vector<float>::resize(this, __sz);
  }

  if (v3)
  {
    begin = this->__begin_;
    v6 = 3.14159265 / (v3 + 1);
    do
    {
      v7 = cos(v6) * -0.5 + 0.5;
      *begin++ = v7;
      v6 = 3.14159265 / (v3 + 1) + v6;
      --v4;
    }

    while (v4);
  }
}

void std::vector<short>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<short>::__append(a1, a2 - v2);
  }
}

uint64_t IR::IRData::Implementation::computeAverageIR(IR::IRData::Implementation *this)
{
  v15[4] = *MEMORY[0x29EDCA608];
  if (*(this + 336))
  {
    return 1;
  }

  v3 = *(this + 18);
  v4 = *(this + 8);
  if (!(v4 * v3))
  {
    return 0;
  }

  v14 = 1.0 / v3;
  v5 = *(this + 39);
  if (*(this + 40) != v5)
  {
    IR::FFTFilterKernel<float>::~FFTFilterKernel();
  }

  *(this + 40) = v5;
  std::vector<IR::FFTFilterKernel<float>>::resize(this + 39, v4);
  if (*(this + 8))
  {
    IR::FFTFilterKernel<float>::initialize();
  }

  if (*(this + 496))
  {
    v6 = *(this + 64);
    for (i = *(this + 65); v6 != i; v6 += 2)
    {
      v8 = *v6;
      v9 = *(*v6 + 88);
      if (*(*v6 + 96) != v9)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = (*(v9 + 24 * v10 + 8) - *(v9 + 24 * v10)) >> 3;
          if (*(this + 8) >= v12)
          {
            v13 = v12;
          }

          else
          {
            v13 = *(this + 8);
          }

          if (v13)
          {
            IR::FFTFilterKernel<float>::accumulate();
          }

          v9 = *(v8 + 88);
          v10 = ++v11;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((*(v8 + 96) - v9) >> 3) > v11);
      }
    }
  }

  else
  {
    v15[0] = &unk_2A1DEC890;
    v15[1] = this;
    v15[2] = &v14;
    v15[3] = v15;
    IR::IRData::Implementation::forEachNode(this, v15, 0, 0);
    std::__function::__value_func<void ()(IR::IRDataNode &,unsigned int)>::~__value_func[abi:ne200100](v15);
  }

  result = 1;
  *(this + 336) = 1;
  return result;
}

void sub_296BAAE14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(IR::IRDataNode &,unsigned int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t IR::IRData::Implementation::getNumSpatialPoints(IR::IRData::Implementation *this, const IR::IRDataAttributes *a2)
{
  IR::IRData::Implementation::readIRPlist(this, &cf);
  if (!cf)
  {
    return 0;
  }

  v2 = applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[20]>(cf, "TotalNumCoordinates");
  if ((v2 & 0x100000000) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t IR::IRData::Implementation::getNumFiltersPerSpatialPoint(IR::IRData::Implementation *this, const IR::IRDataAttributes *a2)
{
  IR::IRData::Implementation::readIRPlist(this, &cf);
  if (!cf)
  {
    return 0;
  }

  v2 = applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[12]>(cf, "NumChannels");
  if ((v2 & 0x100000000) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t IR::IRData::Implementation::getFilterLength(IR::IRData::Implementation *this, const IR::IRDataAttributes *a2)
{
  IR::IRData::Implementation::readIRPlist(this, &cf);
  if (!cf)
  {
    return 0;
  }

  v3 = *(this + 8);
  v4 = *(this + 6);
  v5 = applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[13]>(cf, "FilterLength");
  if ((v5 & 0x100000000) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  v7 = applesauce::CF::details::find_at_key_or_optional<float,char const(&)[11]>(cf, "SampleRate");
  v8 = *(this + 2);
  if (v8 != 0.0)
  {
    v9 = *&v7;
    if ((v7 & 0x100000000) == 0)
    {
      v9 = 0.0;
    }

    v6 = ((v8 / v9) * v6);
  }

  if (v4 + v3 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v4 + v3;
  }

  if (!v3)
  {
    v10 = v6;
  }

  v11 = __OFSUB__(v10, v4);
  v12 = v10 - v4;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

void sub_296BAB004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

uint64_t IR::IRData::Implementation::getModelingDelay(IR::IRData::Implementation *this, const IR::IRDataAttributes *a2)
{
  IR::IRData::Implementation::readIRPlist(this, &v10);
  if (!v10)
  {
    goto LABEL_11;
  }

  v7 = @"UserData";
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*>(v10, &v7, &cf);
  v2 = v9;
  if (v9 != 1)
  {
    goto LABEL_11;
  }

  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  v3 = applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[14]>(cf, "ModelingDelay");
  v4 = (v3 & 0x100000000) != 0 ? v3 : 0;
  if (v9)
  {
    if (cf)
    {
      CFRelease(cf);
    }

    if ((v2 & 1) == 0)
    {
LABEL_11:
      v4 = 0;
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v4;
}

void sub_296BAB10C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  std::optional<applesauce::CF::DictionaryRef>::~optional(va);
  applesauce::CF::DictionaryRef::~DictionaryRef(va1);
  _Unwind_Resume(a1);
}

void IR::IRData::Implementation::getUserData(IR::IRData::Implementation *this@<X0>, void *a2@<X8>)
{
  IR::IRData::Implementation::readIRPlist(this, &v6);
  if (v6)
  {
    cf = 0;
    v5 = @"UserData";
    applesauce::CF::at_or<applesauce::CF::DictionaryRef,__CFString const*>(v6, &v5, &cf, a2);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    *a2 = 0;
  }
}

void IR::IRData::Implementation::getIRDataTypes(CFTypeRef *this@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  v32 = 0;
  v4 = *this;
  if (*this)
  {
    CFRetain(*this);
  }

  v30 = v4;
  IR::IRData::Implementation::readIRPlist(&v30, &v32, 0, &v31);
  if (v4)
  {
    CFRelease(v4);
  }

  if (!v31)
  {
    goto LABEL_15;
  }

  theArray = @"ImpulseResponses";
  if (!applesauce::CF::details::has_key<__CFString const*>(v31, &theArray))
  {
    goto LABEL_15;
  }

  if (!v31)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  cf = 0;
  v28 = @"ImpulseResponses";
  applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(v31, &v28, &cf, &theArray);
  if (cf)
  {
    CFRelease(cf);
  }

  v5 = theArray;
  if (!theArray)
  {
LABEL_15:
    a2->__begin_ = 0;
    a2->__end_ = 0;
    a2->__end_cap_.__value_ = 0;
    goto LABEL_16;
  }

  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  Count = CFArrayGetCount(v5);
  std::vector<IR::IRDataType>::reserve(a2, Count);
  v7 = theArray;
  if (!theArray)
  {
    goto LABEL_16;
  }

  v8 = CFArrayGetCount(theArray);
  v9 = v8;
  v10 = theArray;
  if (!theArray)
  {
    v11 = 0;
    if (!v8)
    {
      goto LABEL_41;
    }

LABEL_20:
    v12 = 0;
    do
    {
      if (v7 == v10 && v11 == v12)
      {
        break;
      }

      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(v7, v12, &v28);
      if (!v28)
      {
        v25 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25F8D0](v25, "Could not construct");
      }

      cf = @"Type";
      v13 = applesauce::CF::details::find_at_key_or_optional<unsigned int,__CFString const*>(v28, &cf);
      if ((v13 & 0x100000000) != 0 && v13 <= 4)
      {
        end = a2->__end_;
        value = a2->__end_cap_.__value_;
        if (end >= value)
        {
          begin = a2->__begin_;
          v18 = end - a2->__begin_;
          v19 = v18 >> 2;
          v20 = (v18 >> 2) + 1;
          if (v20 >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v21 = value - begin;
          if (v21 >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
          v23 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v23 = v20;
          }

          if (v23)
          {
            std::allocator<float>::allocate_at_least[abi:ne200100](a2, v23);
          }

          *(4 * v19) = v13;
          v16 = 4 * v19 + 4;
          memcpy(0, begin, v18);
          v24 = a2->__begin_;
          a2->__begin_ = 0;
          a2->__end_ = v16;
          a2->__end_cap_.__value_ = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *end = v13;
          v16 = (end + 4);
        }

        a2->__end_ = v16;
      }

      if (v28)
      {
        CFRelease(v28);
      }

      ++v12;
    }

    while (v9 != v12);
    goto LABEL_41;
  }

  v11 = CFArrayGetCount(theArray);
  if (v9)
  {
    goto LABEL_20;
  }

LABEL_41:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_16:
  if (v31)
  {
    CFRelease(v31);
  }
}

void sub_296BAB49C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  v9 = va_arg(va2, void);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  applesauce::CF::ArrayRef::~ArrayRef(va1);
  applesauce::CF::DictionaryRef::~DictionaryRef(va2);
  _Unwind_Resume(a1);
}

void std::vector<IR::IRDataType>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](this, __n);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }
}

void IR::IRData::Implementation::getGlobalUserData(CFTypeRef *this@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  v10 = 0;
  v4 = *this;
  if (*this)
  {
    CFRetain(*this);
  }

  v8 = v4;
  IR::IRData::Implementation::readIRPlist(&v8, &v10, 0, &v9);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v9 && (*buf = @"ImpulseResponses", (applesauce::CF::details::has_key<__CFString const*>(v9, buf) & 1) != 0))
  {
    if (!v9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](exception, "Could not construct");
    }

    *buf = @"UserData";
    cf = 0;
    applesauce::CF::at_or<applesauce::CF::DictionaryRef,__CFString const*>(v9, buf, &cf, a2);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    if (IR::getIRDataLog(void)::onceToken != -1)
    {
      IR::IRData::Implementation::readIRPlist();
    }

    v5 = IR::getIRDataLog(void)::gLog;
    if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "getGlobalUserData";
      _os_log_impl(&dword_296B9D000, v5, OS_LOG_TYPE_DEFAULT, "IRData::%s: Not a consolidated IR file, use IRData::getUserData() instead.", buf, 0xCu);
    }

    *a2 = 0;
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

float IR::IRData::Implementation::getOriginalSampleRate(IR::IRData::Implementation *this, const IR::IRDataAttributes *a2)
{
  IR::IRData::Implementation::readIRPlist(this, &cf);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  v2 = applesauce::CF::details::find_at_key_or_optional<float,char const(&)[11]>(cf, "SampleRate");
  if (cf)
  {
    CFRelease(cf);
  }

  result = *&v2;
  if ((v2 & 0x100000000) == 0)
  {
    return 0.0;
  }

  return result;
}

void sub_296BAB868(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

uint64_t IR::IRData::Implementation::getAudioChannelLayoutTag(IR::IRData::Implementation *this, const IR::IRDataAttributes *a2)
{
  IR::IRData::Implementation::readIRPlist(this, &cf);
  if (!cf)
  {
    return 0;
  }

  v2 = applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[22]>(cf, "AudioChannelLayoutTag");
  if ((v2 & 0x100000000) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

const __CFDictionary *IR::IRData::Implementation::isConsolidatedIR(IR::IRData::Implementation *this, const IR::IRDataAttributes *a2)
{
  IR::IRDataAttributes::IRDataAttributes(v6, this);
  v7 = 0;
  IR::IRData::Implementation::readIRPlist(v6, &cf);
  if (cf)
  {
    v4 = @"ImpulseResponses";
    v2 = applesauce::CF::details::has_key<__CFString const*>(cf, &v4);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v2 = 0;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v6[0])
  {
    CFRelease(v6[0]);
  }

  return v2;
}

void sub_296BAB9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IR::IRDataAttributes::~IRDataAttributes(va);
  _Unwind_Resume(a1);
}

uint64_t IR::IRData::Implementation::hasType(IR::IRDataAttributes *a1, int a2)
{
  IR::IRDataAttributes::IRDataAttributes(v19, a1);
  v20 = 0;
  IR::IRData::Implementation::readIRPlist(v19, &v18);
  if (!v18)
  {
    v8 = 0;
    goto LABEL_28;
  }

  theArray = @"ImpulseResponses";
  if (applesauce::CF::details::has_key<__CFString const*>(v18, &theArray))
  {
    if (!v18)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](exception, "Could not construct");
    }

    cf = 0;
    v16 = @"ImpulseResponses";
    applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(v18, &v16, &cf, &theArray);
    if (cf)
    {
      CFRelease(cf);
    }

    v3 = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v5 = Count;
      v6 = theArray;
      if (theArray)
      {
        v7 = CFArrayGetCount(theArray);
        if (!v5)
        {
LABEL_23:
          if (theArray)
          {
            CFRelease(theArray);
          }

          goto LABEL_25;
        }
      }

      else
      {
        v7 = 0;
        if (!Count)
        {
          goto LABEL_23;
        }
      }

      v9 = 0;
      while (v3 != v6 || v7 != v9)
      {
        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(v3, v9, &v16);
        if (!v16)
        {
          v13 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25F8D0](v13, "Could not construct");
        }

        cf = @"Type";
        v10 = applesauce::CF::details::find_at_key_or_optional<unsigned int,__CFString const*>(v16, &cf);
        if ((v10 & 0x100000000) != 0)
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        if (v16)
        {
          CFRelease(v16);
        }

        if (v11 == a2)
        {
          if (theArray)
          {
            CFRelease(theArray);
          }

          v8 = 1;
          goto LABEL_26;
        }

        if (v5 == ++v9)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_23;
    }
  }

LABEL_25:
  v8 = 0;
LABEL_26:
  if (v18)
  {
    CFRelease(v18);
  }

LABEL_28:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v19[0])
  {
    CFRelease(v19[0]);
  }

  return v8;
}

void sub_296BABC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  IR::IRDataAttributes::~IRDataAttributes(va1);
  _Unwind_Resume(a1);
}

CFDataRef IR::IRData::Implementation::createSoundProfilePack(IR::IRData::Implementation *this, const IR::IRData *a2, CFTypeRef cf, const void *a4, const __CFString *a5)
{
  v59[1] = *MEMORY[0x29EDCA608];
  v9 = CFGetTypeID(cf);
  if (v9 == CFDictionaryGetTypeID())
  {
    v10 = MGCopyAnswer();
    if (v10)
    {
      v55 = v10;
      v11 = CFGetTypeID(v10);
      if (v11 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25F8D0](exception, "Could not construct");
      }
    }

    else
    {
      applesauce::CF::StringRef::from_get(&stru_2A1DECFF0, &v55);
    }

    v53 = CFStringCreateWithBytes(0, "HRIR_ITDMod", 11, 0x8000100u, 0);
    if (!v53)
    {
      v38 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](v38, "Could not construct");
    }

    SerializedIRData = IR::IRData::Implementation::createSerializedIRData(this);
    v52 = SerializedIRData;
    if (SerializedIRData)
    {
      v23 = CFGetTypeID(SerializedIRData);
      if (v23 != CFDataGetTypeID())
      {
        v43 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25F8D0](v43, "Could not construct");
      }
    }

    applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::DataRef>(v56, &v53, &v52);
    v51 = CFStringCreateWithBytes(0, "HRIR_DFEQ", 9, 0x8000100u, 0);
    if (!v51)
    {
      v39 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](v39, "Could not construct");
    }

    v24 = IR::IRData::Implementation::createSerializedIRData(a2);
    v50 = v24;
    if (v24)
    {
      v25 = CFGetTypeID(v24);
      if (v25 != CFDataGetTypeID())
      {
        v44 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25F8D0](v44, "Could not construct");
      }
    }

    applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::DataRef>(v57, &v51, &v50);
    cfa = CFStringCreateWithBytes(0, "EQ", 2, 0x8000100u, 0);
    if (!cfa)
    {
      v40 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](v40, "Could not construct");
    }

    applesauce::CF::DictionaryRef::from_get(cf, &v48);
    v26 = cfa;
    if (cfa)
    {
      CFRetain(cfa);
    }

    v57[2] = v26;
    v27 = v48;
    if (v48)
    {
      CFRetain(v48);
    }

    v57[3] = v27;
    v47 = CFStringCreateWithBytes(0, "version", 7, 0x8000100u, 0);
    if (!v47)
    {
      v41 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](v41, "Could not construct");
    }

    applesauce::CF::StringRef::from_get(a4, &v46);
    v28 = v47;
    if (v47)
    {
      CFRetain(v47);
    }

    v57[4] = v28;
    v29 = v46;
    if (v46)
    {
      CFRetain(v46);
    }

    v57[5] = v29;
    v30 = CFStringCreateWithBytes(0, "device", 6, 0x8000100u, 0);
    v31 = v30;
    v45 = v30;
    if (!v30)
    {
      v42 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](v42, "Could not construct");
    }

    CFRetain(v30);
    v58 = v31;
    v32 = v55;
    if (v55)
    {
      CFRetain(v55);
    }

    v59[0] = v32;
    v54[0] = v56;
    v54[1] = 5;
    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v54);
    v34 = 0;
    v54[2] = CFDictionaryRef;
    do
    {
      v35 = v59[v34];
      if (v35)
      {
        CFRelease(v35);
      }

      v36 = v59[v34 - 1];
      if (v36)
      {
        CFRelease(v36);
      }

      v34 -= 2;
    }

    while (v34 != -10);
    if (v45)
    {
      CFRelease(v45);
    }

    if (v46)
    {
      CFRelease(v46);
    }

    if (v47)
    {
      CFRelease(v47);
    }

    if (v48)
    {
      CFRelease(v48);
    }

    if (cfa)
    {
      CFRelease(cfa);
    }

    if (v50)
    {
      CFRelease(v50);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    if (v52)
    {
      CFRelease(v52);
    }

    if (v53)
    {
      CFRelease(v53);
    }

    Data = CFPropertyListCreateData(*MEMORY[0x29EDB8ED8], CFDictionaryRef, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (CFDictionaryRef)
    {
      CFRelease(CFDictionaryRef);
    }

    if (v55)
    {
      CFRelease(v55);
    }
  }

  else
  {
    if (IR::getIRDataLog(void)::onceToken != -1)
    {
      IR::getIRDataLog();
    }

    v13 = IR::getIRDataLog(void)::gLog;
    if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::createSoundProfilePack(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    return 0;
  }

  return Data;
}

void sub_296BAC248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, const void *a24, const void *a25, const void *a26, const void *a27, uint64_t a28, uint64_t a29, char a30, int a31, const void *a32, __int16 a33, char a34, char a35)
{
  __cxa_free_exception(v36);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a24);
  applesauce::CF::StringRef::~StringRef(&a25);
  applesauce::CF::DataRef::~DataRef(&a26);
  applesauce::CF::StringRef::~StringRef(&a27);
  while (v35 != &a33)
  {
    v35 = (v35 - 16);
    applesauce::CF::TypeRefPair::~TypeRefPair(v35);
  }

  applesauce::CF::StringRef::~StringRef(&a32);
  _Unwind_Resume(a1);
}

uint64_t IR::IRData::Implementation::createSerializedIRData(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*(*a1 + 24))
  {
    LODWORD(__N) = v1[2];
    v3 = v1[7];
    v15 = v1[8];
    memset(&v14[3], 0, 72);
    std::vector<float>::vector[abi:ne200100](v14, (v15 * __N));
    std::vector<float>::vector[abi:ne200100](&v13, v3);
    if (*(*a1 + 496))
    {
      v17 = 0;
      operator new();
    }

    v18 = 0;
    operator new();
  }

  if (IR::getIRDataLog(void)::onceToken != -1)
  {
    IR::getIRDataLog();
  }

  v4 = IR::getIRDataLog(void)::gLog;
  if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    IR::IRData::Implementation::createSerializedIRData(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  return 0;
}

void sub_296BACFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22, uint64_t a23, uint64_t a24, const void *a25, const void *a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, const void *a52, uint64_t a53, uint64_t a54, const void *a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  applesauce::CF::StringRef::~StringRef(&a18);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a22);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  while (v72 != &a72)
  {
    v72 = (v72 - 16);
    applesauce::CF::TypeRefPair::~TypeRefPair(v72);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a25);
  applesauce::CF::ArrayRef::~ArrayRef(&a26);
  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  if (a46)
  {
    a47 = a46;
    operator delete(a46);
  }

  a72 = &a49;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&a72);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a52);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a55);
  if (a56)
  {
    a57 = a56;
    operator delete(a56);
  }

  if (a59)
  {
    a60 = a59;
    operator delete(a59);
  }

  a72 = &a62;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a72);
  a72 = &a65;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a72);
  a72 = &a68;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a72);
  _Unwind_Resume(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,applesauce::CF::DataRef>(void *a1, CFTypeRef *a2, const void **a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v5;
  v6 = *a3;
  if (v6)
  {
    CFRetain(v6);
  }

  a1[1] = v6;
  return a1;
}

const void *applesauce::CF::DictionaryRef::from_get@<X0>(const void *this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    v4 = this;
    CFRetain(this);
    *a2 = v4;
    v5 = CFGetTypeID(v4);
    this = CFDictionaryGetTypeID();
    if (v5 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](exception, "Could not construct");
    }
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

void sub_296BAD3E4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

CFDictionaryRef IR::IRData::Implementation::createSoundProfileMetaDataDictionary(IR::IRData::Implementation *this, const __CFData *a2)
{
  v37[2] = *MEMORY[0x29EDCA608];
  if (!CFDataGetLength(this))
  {
    if (IR::getIRDataLog(void)::onceToken != -1)
    {
      IR::getIRDataLog();
    }

    v9 = IR::getIRDataLog(void)::gLog;
    if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::createSoundProfileMetaDataDictionary(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    return 0;
  }

  v3 = CFPropertyListCreateWithData(0, this, 1uLL, 0, 0);
  if (!v3)
  {
    if (IR::getIRDataLog(void)::onceToken != -1)
    {
      IR::getIRDataLog();
    }

    v17 = IR::getIRDataLog(void)::gLog;
    if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::createSoundProfileMetaDataDictionary(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    return 0;
  }

  v35 = v3;
  v4 = CFGetTypeID(v3);
  if (v4 != CFDictionaryGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  v32 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
  if (!v32)
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](v27, "Could not construct");
  }

  applesauce::CF::at_or<applesauce::CF::StringRef,char const* const&>(v35, IR::kCloudIRDataKey_Version, &v32, &v33);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,applesauce::CF::StringRef>(v36, IR::kCloudIRDataKey_Version, &v33);
  if (!v35)
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](v28, "Could not construct");
  }

  v30 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
  if (!v30)
  {
    v29 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](v29, "Could not construct");
  }

  applesauce::CF::at_or<applesauce::CF::StringRef,char const* const&>(v35, &IR::kCloudIRDataKey_DeviceName, &v30, &cf);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,applesauce::CF::StringRef>(v37, &IR::kCloudIRDataKey_DeviceName, &cf);
  v34[0] = v36;
  v34[1] = 2;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v34);
  for (i = 0; i != -4; i -= 2)
  {
    v7 = v37[i + 1];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *&v36[i * 8 + 16];
    if (v8)
    {
      CFRelease(v8);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  return CFDictionaryRef;
}

void sub_296BAD758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11, const void *a12, uint64_t a13, uint64_t a14, const void *a15, char a16)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a12);
  applesauce::CF::StringRef::~StringRef(&a11);
  while (v16 != &a16)
  {
    v16 = (v16 - 16);
    applesauce::CF::TypeRefPair::~TypeRefPair(v16);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a15);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,applesauce::CF::StringRef>(applesauce::CF::TypeRef *a1, char **a2, const void **a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, *a2);
  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
  }

  *(a1 + 1) = v5;
  return a1;
}

void IR::IRData::Implementation::getSoundProfileVersion(IR::IRData::Implementation *this@<X0>, std::string *a2@<X8>)
{
  if (!CFDataGetLength(this))
  {
    if (IR::getIRDataLog(void)::onceToken != -1)
    {
      IR::getIRDataLog();
    }

    v8 = IR::getIRDataLog(void)::gLog;
    if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::getSoundProfileVersion(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    goto LABEL_15;
  }

  v5 = CFPropertyListCreateWithData(0, this, 1uLL, 0, 0);
  if (!v5)
  {
    if (IR::getIRDataLog(void)::onceToken != -1)
    {
      IR::getIRDataLog();
    }

    v16 = IR::getIRDataLog(void)::gLog;
    if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::getSoundProfileVersion(v16, v17, v18, v19, v20, v21, v22, v23);
    }

LABEL_15:
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  v6 = v5;
  v27 = v5;
  v7 = CFGetTypeID(v5);
  if (v7 != CFDictionaryGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25F8D0](exception, "Could not construct");
  }

  __p[0] = 0;
  __p[1] = 0;
  v26 = 0;
  applesauce::CF::at_or<std::string,char const* const&>(v6, IR::kCloudIRDataKey_Version, __p, a2);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  CFRelease(v6);
}

void sub_296BADA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  __cxa_free_exception(v12);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a12);
  _Unwind_Resume(a1);
}

uint64_t IR::IRData::Implementation::createDictionaryIRData(unsigned int **this, const IR::IRData *a2)
{
  v21[22] = *MEMORY[0x29EDCA608];
  v3 = *this;
  if (((*this)[6] & 1) != 0 || !v3[4])
  {
    v12 = v3[2];
    v13 = v3[7];
    v14 = v3[8];
    memset(v20, 0, sizeof(v20));
    memset(v19, 0, sizeof(v19));
    memset(v18, 0, sizeof(v18));
    std::vector<float>::vector[abi:ne200100](v21, v12);
    std::vector<std::vector<float>>::vector[abi:ne200100](v17, v14);
    if (v21[0])
    {
      v21[1] = v21[0];
      operator delete(v21[0]);
    }

    std::vector<float>::vector[abi:ne200100](&v16, v13);
    IR::IRData::Implementation::vectorizeIRData<std::vector<float>>(*this, v20, v19, v18);
  }

  if (IR::getIRDataLog(void)::onceToken != -1)
  {
    IR::getIRDataLog();
  }

  v4 = IR::getIRDataLog(void)::gLog;
  if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    IR::IRData::Implementation::createDictionaryIRData(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  return 0;
}

void IR::IRData::Implementation::vectorizeIRData<std::vector<float>>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  __p[11] = *MEMORY[0x29EDCA608];
  std::vector<std::vector<float>>::resize(a2, 0);
  std::vector<std::vector<float>>::resize(a3, 0);
  std::vector<std::vector<std::vector<float>>>::resize(a4, 0);
  std::vector<float>::vector[abi:ne200100](__p, *(a1 + 28));
  if (*(a1 + 496))
  {
    __p[6] = 0;
    operator new();
  }

  __p[10] = 0;
  operator new();
}

void sub_296BAE364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  std::__function::__value_func<void ()(IR::IRDataNode &,unsigned int)>::~__value_func[abi:ne200100](&a18);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 IR::IRData::getDefaultCoordinates@<Q0>(IR::IRData *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  result = *(*this + 232);
  v4 = *(*this + 248);
  *a2 = result;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v2 + 264);
  return result;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[12],applesauce::CF::StringRef>(applesauce::CF::TypeRef *a1, char *a2, const void **a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
  }

  *(a1 + 1) = v5;
  return a1;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[9],applesauce::CF::DictionaryRef>(applesauce::CF::TypeRef *a1, char *a2, const void **a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
  }

  *(a1 + 1) = v5;
  return a1;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[18],applesauce::CF::DictionaryRef>(applesauce::CF::TypeRef *a1, char *a2, const void **a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
  }

  *(a1 + 1) = v5;
  return a1;
}

uint64_t IR::IRData::Implementation::createSerializedIRData(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {

    return IR::IRData::Implementation::createSerializedIRData(v2);
  }

  else
  {
    if (IR::getIRDataLog(void)::onceToken != -1)
    {
      IR::getIRDataLog();
    }

    v4 = IR::getIRDataLog(void)::gLog;
    if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::createSerializedIRData(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    return 0;
  }
}

uint64_t IR::IRData::Implementation::forEachNode(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result;
  v15 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    result = std::function<void ()(IR::IRDataNode &,unsigned int)>::operator()(a2, a3, a4);
    v8 = *(a3 + 72);
    v9 = *(a3 + 80);
    while (v8 != v9)
    {
      std::__function::__value_func<void ()(IR::IRDataNode &,unsigned int)>::__value_func[abi:ne200100](v13, a2);
      IR::IRData::Implementation::forEachNode(v5, v13, v8, (a4 + 1));
      result = std::__function::__value_func<void ()(IR::IRDataNode &,unsigned int)>::~__value_func[abi:ne200100](v13);
      v8 += 120;
    }
  }

  else
  {
    v10 = *(result + 272);
    v11 = *v10;
    v12 = v10[1];
    while (v11 != v12)
    {
      std::__function::__value_func<void ()(IR::IRDataNode &,unsigned int)>::__value_func[abi:ne200100](v14, a2);
      IR::IRData::Implementation::forEachNode(v5, v14, v11, 0);
      result = std::__function::__value_func<void ()(IR::IRDataNode &,unsigned int)>::~__value_func[abi:ne200100](v14);
      v11 += 120;
    }
  }

  return result;
}

{
  v5 = result;
  v15 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    result = std::function<void ()(IR::IRDataNode const&,unsigned int)>::operator()(a2, a3, a4);
    v8 = *(a3 + 72);
    v9 = *(a3 + 80);
    while (v8 != v9)
    {
      std::__function::__value_func<void ()(IR::IRDataNode const&,unsigned int)>::__value_func[abi:ne200100](v13, a2);
      IR::IRData::Implementation::forEachNode(v5, v13, v8, (a4 + 1));
      result = std::__function::__value_func<void ()(IR::IRDataNode const&,unsigned int)>::~__value_func[abi:ne200100](v13);
      v8 += 120;
    }
  }

  else
  {
    v10 = *(result + 272);
    v11 = *v10;
    v12 = v10[1];
    while (v11 != v12)
    {
      std::__function::__value_func<void ()(IR::IRDataNode const&,unsigned int)>::__value_func[abi:ne200100](v14, a2);
      IR::IRData::Implementation::forEachNode(v5, v14, v11, 0);
      result = std::__function::__value_func<void ()(IR::IRDataNode const&,unsigned int)>::~__value_func[abi:ne200100](v14);
      v11 += 120;
    }
  }

  return result;
}

void sub_296BAE64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(IR::IRDataNode &,unsigned int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<applesauce::CF::DictionaryRef>::push_back[abi:ne200100](void *a1, CFTypeRef *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v12[4] = a1;
    if (v11)
    {
      std::allocator<applesauce::CF::DictionaryRef>::allocate_at_least[abi:ne200100](a1, v11);
    }

    v12[0] = 0;
    v12[1] = 8 * v8;
    v12[3] = 0;
    std::construct_at[abi:ne200100]<applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef*>((8 * v8), a2);
    v12[2] = 8 * v8 + 8;
    std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(a1, v12);
    v7 = a1[1];
    result = std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(v12);
  }

  else
  {
    result = std::construct_at[abi:ne200100]<applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef*>(a1[1], a2);
    v7 = v5 + 8;
  }

  a1[1] = v7;
  return result;
}

void sub_296BAE75C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFMutableDataRef IR::IRData::Implementation::createSerializedIRDataWithNoise(IR::IRData::Implementation *this, const __CFData *a2)
{
  v135 = *MEMORY[0x29EDCA608];
  if (!this)
  {
    if (IR::getIRDataLog(void)::onceToken != -1)
    {
      IR::getIRDataLog();
    }

    v16 = IR::getIRDataLog(void)::gLog;
    if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::createSerializedIRDataWithNoise(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    return 0;
  }

  BytePtr = CFDataGetBytePtr(this);
  Length = CFDataGetLength(this);
  v5 = fmemopen(BytePtr, Length, "r");
  v130[0] = v5;
  v130[1] = MEMORY[0x29EDCA640];
  if (!v5)
  {
    if (IR::getIRDataLog(void)::onceToken != -1)
    {
      IR::getIRDataLog();
    }

    v24 = IR::getIRDataLog(void)::gLog;
    if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::createSerializedIRDataWithNoise(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    return 0;
  }

  v6 = v5;
  FileByteSize = IR::IRData::Implementation::getFileByteSize(v130);
  v129 = 0;
  IR::IRData::Implementation::readIRPlist(v130, &v129, &v128);
  v8 = v128;
  if (v128)
  {
    v9 = applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[13]>(v128, "FilterLength");
    if ((v9 & 0x100000000) != 0 && (v10 = v9, v9))
    {
      v11 = applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[20]>(v8, "TotalNumCoordinates");
      if ((v11 & 0x100000000) != 0 && (v12 = v11) != 0)
      {
        v13 = applesauce::CF::details::find_at_key_or_optional<unsigned int,char const(&)[12]>(v8, "NumChannels");
        if ((v13 & 0x100000000) != 0)
        {
          v14 = v13;
          if (v13)
          {
            memset(&__p, 0, 24);
            applesauce::CF::at_or<std::string,char const(&)[18]>(v8, "CoefficientFormat", &__p, &v127);
            if (SHIBYTE(__p.__x_[5]) < 0)
            {
              operator delete(*__p.__x_);
            }

            if ((*(&v127.__r_.__value_.__s + 23) & 0x80) != 0)
            {
              if (v127.__r_.__value_.__l.__size_ != 5 || (*v127.__r_.__value_.__l.__data_ == 829714025 ? (v66 = *(v127.__r_.__value_.__r.__words[0] + 4) == 54) : (v66 = 0), !v66))
              {
                if (v127.__r_.__value_.__l.__size_ == 7)
                {
                  v15 = v127.__r_.__value_.__r.__words[0];
                  goto LABEL_53;
                }

LABEL_63:
                if (IR::getIRDataLog(void)::onceToken != -1)
                {
                  IR::IRData::Implementation::readIRPlist();
                }

                if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
                {
                  IR::IRData::Implementation::createSerializedIRDataWithNoise();
                }

LABEL_86:
                v32 = 0;
                goto LABEL_87;
              }
            }

            else
            {
              if (HIBYTE(v127.__r_.__value_.__r.__words[2]) != 5)
              {
                if (HIBYTE(v127.__r_.__value_.__r.__words[2]) == 7)
                {
                  v15 = &v127;
LABEL_53:
                  data = v15->__r_.__value_.__l.__data_;
                  v68 = *(v15->__r_.__value_.__r.__words + 3);
                  if (data != 1634692198 || v68 != 842232929)
                  {
                    goto LABEL_63;
                  }

                  v111 = 0;
                  v115 = 0x3FFFFFFFCLL;
                  v70 = 2;
LABEL_68:
                  if (!v128)
                  {
                    exception = __cxa_allocate_exception(0x10uLL);
                    MEMORY[0x29C25F8D0](exception, "Could not construct");
                  }

                  memset(&v126, 0, sizeof(v126));
                  applesauce::CF::at_or<std::string,char const(&)[12]>(v128, "DelayFormat", &v126, &__p);
                  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v127.__r_.__value_.__l.__data_);
                  }

                  *&v127.__r_.__value_.__l.__data_ = *__p.__x_;
                  v127.__r_.__value_.__r.__words[2] = *&__p.__x_[4];
                  HIBYTE(__p.__x_[5]) = 0;
                  LOBYTE(__p.__x_[0]) = 0;
                  if (SHIBYTE(v126.__end_cap_.__value_) < 0)
                  {
                    operator delete(v126.__begin_);
                  }

                  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
                  {
                    if (v127.__r_.__value_.__l.__size_ == 7)
                    {
                      v72 = v127.__r_.__value_.__r.__words[0];
LABEL_78:
                      v73 = v72->__r_.__value_.__l.__data_;
                      v74 = *(v72->__r_.__value_.__r.__words + 3);
                      if (v73 != 1634692198 || v74 != 842232929)
                      {
                        goto LABEL_82;
                      }

                      v76 = applesauce::CF::DictionaryRef::operator->(&v128);
                      *__p.__x_ = @"Dimensions";
                      v126.__begin_ = 0;
                      applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(*v76, &__p, &v126, &v125);
                      applesauce::CF::ArrayRef::~ArrayRef(&v126.__begin_);
                      applesauce::CF::ArrayRef_proxy::ArrayRef_proxy(&__p, &v125);
                      size = applesauce::CF::get_size(**__p.__x_, v77);
                      v79 = size;
                      if (size < 0xA)
                      {
                        v80 = FileByteSize - MEMORY[0x29C25FF70](v6);
                        v81 = v111;
                        v82 = 1;
                        if (!v111)
                        {
                          v82 = 2;
                        }

                        v114 = v14;
                        v105 = 4 * (v79 & 0xF);
                        if (v80 >= (((v14 * v10) << v82) + 4 * v14 + v105) * v12)
                        {
                          memset(&v126, 0, sizeof(v126));
                          memset(&v124, 0, sizeof(v124));
                          v122 = 0;
                          v121 = 0;
                          v83 = v10;
                          v123 = 0;
                          if (v111)
                          {
                            v84 = &v121;
                            std::vector<short>::resize(&v121, v10);
                          }

                          else
                          {
                            std::vector<float>::resize(&v126, v10);
                            std::vector<float>::resize(&v124, v10);
                            v84 = &v126;
                          }

                          begin = v84->__begin_;
                          std::random_device::random_device[abi:ne200100](&v120);
                          v85 = MEMORY[0x29C25FA30](&v120);
                          v112 = v10 << v70;
                          __p.__x_[0] = v85;
                          for (i = 1; i != 624; ++i)
                          {
                            v85 = i + 1812433253 * (v85 ^ (v85 >> 30));
                            __p.__x_[i] = v85;
                          }

                          __p.__i_ = 0;
                          v118 = 0x100000000;
                          v110 = v121;
                          MutableCopy = CFDataCreateMutableCopy(0, 0, this);
                          v88 = 0;
                          theData = MutableCopy;
                          v107 = v10;
                          v89 = v10 * 1.0e-10;
                          newLength = 4 * v10;
                          v109 = 2 * v10;
                          v104 = v12;
                          do
                          {
                            v106 = v88;
                            fseek(v6, v105, 1);
                            v90 = 0;
                            do
                            {
                              v91 = MEMORY[0x29C25FF70](v6);
                              if (v81)
                              {
                                v92 = v83;
                                v93 = v110;
                                if (fread(v121, 2uLL, v83, v6) == v83)
                                {
                                  do
                                  {
                                    v94 = std::uniform_int_distribution<int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v118, &__p, &v118);
                                    v95 = *v93 & 0xFFFE;
                                    if (v94)
                                    {
                                      ++v95;
                                    }

                                    *v93++ = v95;
                                    --v92;
                                  }

                                  while (v92);
                                  v96 = v109;
                                  v81 = v111;
                                }

                                else
                                {
                                  if (IR::getIRDataLog(void)::onceToken != -1)
                                  {
                                    IR::IRData::Implementation::readIRPlist();
                                  }

                                  v81 = v111;
                                  v101 = IR::getIRDataLog(void)::gLog;
                                  if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
                                  {
                                    __C = 4.8151e-34;
                                    v132 = "createSerializedIRDataWithNoise";
                                    v133 = 1024;
                                    v134 = v107;
                                    _os_log_error_impl(&dword_296B9D000, v101, OS_LOG_TYPE_ERROR, "IRData::%s: failed to read %d int16 values from input data", &__C, 0x12u);
                                  }

                                  bzero(v121, v109);
                                  v96 = v109;
                                }
                              }

                              else if (fread(v126.__begin_, 4uLL, v83, v6) == v83)
                              {
                                v97 = v124.__begin_;
                                v98 = v107;
                                do
                                {
                                  v99 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&__p);
                                  v100 = (v99 + std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&__p) * 4294967300.0) * 5.42101086e-20 + 0.0;
                                  *v97++ = v100;
                                  --v98;
                                }

                                while (v98);
                                __C = 0.0;
                                vDSP_svesq(v124.__begin_, 1, &__C, v83);
                                v116 = sqrtf(v89 / __C);
                                MEMORY[0x29C260530](v124.__begin_, 1, &v116, v124.__begin_, 1, v83);
                                v81 = v111;
                                MEMORY[0x29C2603D0](v126.__begin_, 1, v124.__begin_, 1, v126.__begin_, 1, v83);
                                v96 = newLength;
                              }

                              else
                              {
                                if (IR::getIRDataLog(void)::onceToken != -1)
                                {
                                  IR::IRData::Implementation::readIRPlist();
                                }

                                v102 = IR::getIRDataLog(void)::gLog;
                                if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
                                {
                                  __C = 4.8151e-34;
                                  v132 = "createSerializedIRDataWithNoise";
                                  v133 = 1024;
                                  v134 = v107;
                                  _os_log_error_impl(&dword_296B9D000, v102, OS_LOG_TYPE_ERROR, "IRData::%s: failed to read %d float values from input data", &__C, 0x12u);
                                }

                                vDSP_vclr(v126.__begin_, 1, v83);
                                v96 = newLength;
                              }

                              v136.length = v112 & v115;
                              v136.location = v91;
                              CFDataReplaceBytes(theData, v136, begin, v96);
                              fseek(v6, 4, 1);
                              ++v90;
                            }

                            while (v90 != v114);
                            v88 = v106 + 1;
                          }

                          while (v106 + 1 != v104);
                          v32 = theData;
                          theData = 0;
                          applesauce::CF::ObjectRef<__CFData *>::~ObjectRef(&theData);
                          std::random_device::~random_device(&v120);
                          if (v121)
                          {
                            v122 = v121;
                            operator delete(v121);
                          }

                          if (v124.__begin_)
                          {
                            v124.__end_ = v124.__begin_;
                            operator delete(v124.__begin_);
                          }

                          if (v126.__begin_)
                          {
                            v126.__end_ = v126.__begin_;
                            operator delete(v126.__begin_);
                          }

                          goto LABEL_102;
                        }

                        if (IR::getIRDataLog(void)::onceToken != -1)
                        {
                          IR::IRData::Implementation::readIRPlist();
                        }

                        if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
                        {
                          IR::IRData::Implementation::createSerializedIRDataWithNoise();
                        }
                      }

                      else
                      {
                        if (IR::getIRDataLog(void)::onceToken != -1)
                        {
                          IR::IRData::Implementation::readIRPlist();
                        }

                        if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
                        {
                          IR::IRData::Implementation::createSerializedIRDataWithNoise();
                        }
                      }

                      v32 = 0;
LABEL_102:
                      applesauce::CF::ArrayRef::~ArrayRef(&v125);
LABEL_87:
                      if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v127.__r_.__value_.__l.__data_);
                      }

                      goto LABEL_42;
                    }
                  }

                  else if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) == 7)
                  {
                    v72 = &v127;
                    goto LABEL_78;
                  }

LABEL_82:
                  if (IR::getIRDataLog(void)::onceToken != -1)
                  {
                    IR::IRData::Implementation::readIRPlist();
                  }

                  if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
                  {
                    IR::IRData::Implementation::createSerializedIRDataWithNoise();
                  }

                  goto LABEL_86;
                }

                goto LABEL_63;
              }

              if (LODWORD(v127.__r_.__value_.__l.__data_) != 829714025 || v127.__r_.__value_.__s.__data_[4] != 54)
              {
                goto LABEL_63;
              }
            }

            v70 = 1;
            v115 = 0x1FFFFFFFELL;
            v111 = 1;
            goto LABEL_68;
          }
        }

        if (IR::getIRDataLog(void)::onceToken != -1)
        {
          IR::getIRDataLog();
        }

        v57 = IR::getIRDataLog(void)::gLog;
        if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          IR::IRData::Implementation::createSerializedIRDataWithNoise(v57, v58, v59, v60, v61, v62, v63, v64);
        }
      }

      else
      {
        if (IR::getIRDataLog(void)::onceToken != -1)
        {
          IR::getIRDataLog();
        }

        v49 = IR::getIRDataLog(void)::gLog;
        if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          IR::IRData::Implementation::createSerializedIRDataWithNoise(v49, v50, v51, v52, v53, v54, v55, v56);
        }
      }
    }

    else
    {
      if (IR::getIRDataLog(void)::onceToken != -1)
      {
        IR::getIRDataLog();
      }

      v41 = IR::getIRDataLog(void)::gLog;
      if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        IR::IRData::Implementation::createSerializedIRDataWithNoise(v41, v42, v43, v44, v45, v46, v47, v48);
      }
    }
  }

  else
  {
    if (IR::getIRDataLog(void)::onceToken != -1)
    {
      IR::getIRDataLog();
    }

    v33 = IR::getIRDataLog(void)::gLog;
    if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::createSerializedIRDataWithNoise(v33, v34, v35, v36, v37, v38, v39, v40);
    }
  }

  v32 = 0;
LABEL_42:
  if (v128)
  {
    CFRelease(v128);
  }

  v130[0] = 0;
  fclose(v6);
  return v32;
}

void sub_296BAF230(_Unwind_Exception *a1)
{
  std::random_device::~random_device(&STACK[0xA5C]);
  v5 = *(v2 + 2512);
  if (v5)
  {
    *(v2 + 2520) = v5;
    operator delete(v5);
  }

  v6 = *(v2 + 2536);
  if (v6)
  {
    *(v2 + 2544) = v6;
    operator delete(v6);
  }

  v7 = *(v2 + 2568);
  if (v7)
  {
    *(v2 + 2576) = v7;
    operator delete(v7);
  }

  applesauce::CF::ArrayRef::~ArrayRef((v3 - 240));
  if (*(v3 - 185) < 0)
  {
    operator delete(*(v2 + 2592));
  }

  applesauce::CF::DictionaryRef::~DictionaryRef((v3 - 176));
  *(v2 + 2640) = 0;
  fclose(v1);
  _Unwind_Resume(a1);
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_296BAF36C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **applesauce::CF::ObjectRef<__CFData *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFDataRef IR::IRData::Implementation::createNoisySoundProfilePack(IR::IRData::Implementation *this, const __CFData *a2)
{
  if (!CFDataGetLength(this))
  {
    if (IR::getIRDataLog(void)::onceToken != -1)
    {
      IR::getIRDataLog();
    }

    v8 = IR::getIRDataLog(void)::gLog;
    if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::createNoisySoundProfilePack(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    return 0;
  }

  v3 = CFPropertyListCreateWithData(0, this, 1uLL, 0, 0);
  if (!v3)
  {
    if (IR::getIRDataLog(void)::onceToken != -1)
    {
      IR::getIRDataLog();
    }

    v16 = IR::getIRDataLog(void)::gLog;
    if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      IR::IRData::Implementation::createNoisySoundProfilePack(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    return 0;
  }

  v4 = v3;
  v5 = CFStringCreateWithCString(0, "HRIR_ITDMod", 0x8000100u);
  key = v5;
  if (v5)
  {
    v6 = CFGetTypeID(v5);
    if (v6 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](exception, "Could not construct");
    }

    v7 = key;
  }

  else
  {
    v7 = 0;
  }

  if (CFDictionaryContainsKey(v4, v7))
  {
    v25 = CFDictionaryGetValue(v4, key);
    SerializedIRDataWithNoise = IR::IRData::Implementation::createSerializedIRDataWithNoise(v25, v26);
    value = SerializedIRDataWithNoise;
    if (!SerializedIRDataWithNoise)
    {
      goto LABEL_21;
    }

    v28 = CFGetTypeID(SerializedIRDataWithNoise);
    if (v28 != CFDataGetTypeID())
    {
      v55 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](v55, "Could not construct");
    }

    if (value)
    {
      CFDictionaryReplaceValue(v4, key, value);
    }

    else
    {
LABEL_21:
      if (IR::getIRDataLog(void)::onceToken != -1)
      {
        IR::getIRDataLog();
      }

      v29 = IR::getIRDataLog(void)::gLog;
      if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        IR::IRData::Implementation::createNoisySoundProfilePack(v29, v30, v31, v32, v33, v34, v35, v36);
      }
    }

    if (value)
    {
      CFRelease(value);
    }
  }

  v37 = CFStringCreateWithCString(0, "HRIR_DFEQ", 0x8000100u);
  valuea = v37;
  if (v37)
  {
    v38 = CFGetTypeID(v37);
    if (v38 != CFStringGetTypeID())
    {
      v54 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](v54, "Could not construct");
    }

    v39 = valuea;
  }

  else
  {
    v39 = 0;
  }

  if (CFDictionaryContainsKey(v4, v39))
  {
    v40 = CFDictionaryGetValue(v4, valuea);
    v42 = IR::IRData::Implementation::createSerializedIRDataWithNoise(v40, v41);
    cf = v42;
    if (!v42)
    {
      goto LABEL_36;
    }

    v43 = CFGetTypeID(v42);
    if (v43 != CFDataGetTypeID())
    {
      v56 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](v56, "Could not construct");
    }

    if (cf)
    {
      CFDictionaryReplaceValue(v4, valuea, cf);
    }

    else
    {
LABEL_36:
      if (IR::getIRDataLog(void)::onceToken != -1)
      {
        IR::IRData::Implementation::readIRPlist();
      }

      v44 = IR::getIRDataLog(void)::gLog;
      if (os_log_type_enabled(IR::getIRDataLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        IR::IRData::Implementation::createNoisySoundProfilePack(v44, v45, v46, v47, v48, v49, v50, v51);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  Data = CFPropertyListCreateData(*MEMORY[0x29EDB8ED8], v4, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (valuea)
  {
    CFRelease(valuea);
  }

  if (key)
  {
    CFRelease(key);
  }

  CFRelease(v4);
  return Data;
}

void sub_296BAF778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, const void *a12)
{
  __cxa_free_exception(v12);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  applesauce::CF::StringRef::~StringRef(&a11);
  applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(&a12);
  _Unwind_Resume(a1);
}

void IR::IRData::Implementation::insertIRDataInTree(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, __n128 *a5, __n128 *a6, unsigned int a7, void *a8)
{
  v8 = a8;
  v9 = a7;
  v13 = *(a1 + 112);
  v14 = *(a1 + 120);
  if (v14 == v13)
  {
    v20 = 0;
    v13 = *(a1 + 120);
  }

  else
  {
    v15 = 0;
    do
    {
      v16 = IR::IRCoordinates::get(a3, *(*(a1 + 88) + 4 * *(v13 + 4 * v15)));
      v17 = *(*(a1 + 112) + 4 * v15);
      v18 = *(*(a1 + 136) + 4 * v17);
      if (v18 != 0.0)
      {
        v16 = fmodf(v16, *(*(a1 + 136) + 4 * v17));
        if (v16 < 0.0)
        {
          v16 = v18 + v16;
        }
      }

      v19 = a2[1];
      v20 = *a2;
      if (*a2 == v19)
      {
        goto LABEL_21;
      }

      v21 = 0xEEEEEEEEEEEEEEEFLL * ((v19 - v20) >> 3);
      do
      {
        v22 = v21 >> 1;
        v23 = (v20 + 120 * (v21 >> 1));
        v25 = *v23;
        v24 = v23 + 30;
        v21 += ~(v21 >> 1);
        if (v25 < v16)
        {
          v20 = v24;
        }

        else
        {
          v21 = v22;
        }
      }

      while (v21);
      if (v20 == v19)
      {
LABEL_21:
        *v36 = v16;
        *&v36[1] = 0u;
        v37 = 0u;
        *v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        std::vector<IR::IRDataNode>::push_back[abi:ne200100](a2, v36);
        if (*(&v41 + 1))
        {
          *&v42 = *(&v41 + 1);
          operator delete(*(&v41 + 1));
        }

        v43[0] = &v40;
        std::vector<IR::IRDataNode>::__destroy_vector::operator()[abi:ne200100](v43);
        if (v38[1])
        {
          *&v39 = v38[1];
          operator delete(v38[1]);
        }

        if (v38[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v38[0]);
        }

        v43[0] = &v36[1];
        std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::__destroy_vector::operator()[abi:ne200100](v43);
        v20 = a2[1] - 120;
      }

      else if (*v20 != v16)
      {
        *v36 = v16;
        *&v36[1] = 0u;
        v37 = 0u;
        *v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v20 = std::vector<IR::IRDataNode>::insert(a2, v20, v36);
        if (*(&v41 + 1))
        {
          *&v42 = *(&v41 + 1);
          operator delete(*(&v41 + 1));
        }

        v43[0] = &v40;
        std::vector<IR::IRDataNode>::__destroy_vector::operator()[abi:ne200100](v43);
        if (v38[1])
        {
          *&v39 = v38[1];
          operator delete(v38[1]);
        }

        if (v38[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v38[0]);
        }

        v43[0] = &v36[1];
        std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::__destroy_vector::operator()[abi:ne200100](v43);
      }

      a2 = (v20 + 72);
      ++v15;
      v13 = *(a1 + 112);
      v14 = *(a1 + 120);
    }

    while (v15 < (v14 - v13) >> 2);
    v9 = a7;
    v8 = a8;
    if (v20)
    {
      goto LABEL_42;
    }
  }

  if (v13 != v14)
  {
LABEL_42:
    if (!v20)
    {
      IR::IRData::Implementation::insertIRDataInTree();
    }

    goto LABEL_43;
  }

  v26 = a2[1];
  if (*a2 == v26)
  {
    LODWORD(v36[0]) = 0;
    *&v36[1] = 0u;
    v37 = 0u;
    *v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    std::vector<IR::IRDataNode>::push_back[abi:ne200100](a2, v36);
    if (*(&v41 + 1))
    {
      *&v42 = *(&v41 + 1);
      operator delete(*(&v41 + 1));
    }

    v43[0] = &v40;
    std::vector<IR::IRDataNode>::__destroy_vector::operator()[abi:ne200100](v43);
    if (v38[1])
    {
      *&v39 = v38[1];
      operator delete(v38[1]);
    }

    if (v38[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38[0]);
    }

    v43[0] = &v36[1];
    std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::__destroy_vector::operator()[abi:ne200100](v43);
    v26 = a2[1];
  }

  v20 = v26 - 120;
LABEL_43:
  if (*(a1 + 496) == 1)
  {
    v27 = *(v20 + 32);
    if (!v27)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN2IR23VBAPTriangulationKernelENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    LODWORD(v36[0]) = IR::IRCoordinates::get(a3, 0);
    std::vector<float>::push_back[abi:ne200100]((v27 + 40), v36);
    v28 = *(v20 + 32);
    LODWORD(v36[0]) = IR::IRCoordinates::get(a3, 1u);
    std::vector<float>::push_back[abi:ne200100]((v28 + 64), v36);
    std::vector<std::vector<float>>::push_back[abi:ne200100](*(v20 + 32) + 112, a5);
    std::vector<std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>>::push_back[abi:ne200100]((*(v20 + 32) + 88), a4);
    std::vector<std::vector<float>>::push_back[abi:ne200100](*(v20 + 32) + 184, a6);
    if ((v9 & 0x80000000) == 0 && v9 < ((v8[1] - *v8) >> 2))
    {
      v29 = *(*v8 + 4 * v9);
      v30 = *(v20 + 32);
      if (*(v30 + 136) == v29)
      {
        ++*(v30 + 140);
      }

      else
      {
        *(v30 + 136) = v29;
        *(v30 + 140) = 1;
      }
    }
  }

  else
  {
    std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::__vdeallocate((v20 + 8));
    *(v20 + 8) = *a4;
    *(v20 + 24) = *(a4 + 16);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    std::vector<float>::__move_assign(v20 + 48, a5);
    std::vector<float>::__move_assign(v20 + 96, a6);
  }
}

void sub_296BAFCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IR::IRDataNode::~IRDataNode(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<IR::IRDataNode>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<IR::IRDataNode>::__emplace_back_slow_path<IR::IRDataNode>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<IR::IRDataNode>>::construct[abi:ne200100]<IR::IRDataNode,IR::IRDataNode,void,0>(a1, a1[1], a2);
    result = v3 + 120;
    a1[1] = v3 + 120;
  }

  a1[1] = result;
  return result;
}

void IR::IRDataNode::~IRDataNode(IR::IRDataNode *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v5 = (this + 72);
  std::vector<IR::IRDataNode>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = (this + 8);
  std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

uint64_t std::vector<IR::IRDataNode>::insert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v10 = *a1;
    v11 = 0xEEEEEEEEEEEEEEEFLL * ((v7 - *a1) >> 3) + 1;
    if (v11 > 0x222222222222222)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v12 = a2 - v10;
    v13 = 0xEEEEEEEEEEEEEEEFLL * ((v6 - v10) >> 3);
    v14 = 2 * v13;
    if (2 * v13 <= v11)
    {
      v14 = 0xEEEEEEEEEEEEEEEFLL * ((v7 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x111111111111111)
    {
      v15 = 0x222222222222222;
    }

    else
    {
      v15 = v14;
    }

    v21 = a1;
    if (v15)
    {
      std::allocator<IR::IRDataNode>::allocate_at_least[abi:ne200100](a1, v15);
    }

    v17 = 0;
    v18 = 8 * (v12 >> 3);
    v19 = v18;
    v20 = 0;
    std::__split_buffer<IR::IRDataNode>::emplace_back<IR::IRDataNode>(&v17, a3);
    v4 = std::vector<IR::IRDataNode>::__swap_out_circular_buffer(a1, &v17, v4);
    std::__split_buffer<IR::IRDataNode>::~__split_buffer(&v17);
  }

  else if (a2 == v7)
  {
    std::allocator_traits<std::allocator<IR::IRDataNode>>::construct[abi:ne200100]<IR::IRDataNode,IR::IRDataNode,void,0>(a1, a1[1], a3);
    a1[1] = v7 + 120;
  }

  else
  {
    std::vector<IR::IRDataNode>::__move_range(a1, a2, a1[1], a2 + 120);
    *v4 = *a3;
    std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>::__vdeallocate((v4 + 8));
    *(v4 + 8) = *(a3 + 8);
    *(v4 + 24) = *(a3 + 24);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v8 = *(a3 + 32);
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    v9 = *(v4 + 40);
    *(v4 + 32) = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    std::vector<float>::__move_assign(v4 + 48, (a3 + 48));
    std::vector<IR::IRDataNode>::__vdeallocate((v4 + 72));
    *(v4 + 72) = *(a3 + 72);
    *(v4 + 88) = *(a3 + 88);
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    std::vector<float>::__move_assign(v4 + 96, (a3 + 96));
  }

  return v4;
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v16[4] = result;
    if (v10)
    {
      std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<float>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void **std::vector<std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v16[4] = result;
    if (v10)
    {
      std::allocator<std::vector<DSPSplitComplex>>::allocate_at_least[abi:ne200100](result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<std::unique_ptr<IR::FFTFilterKernel<float>>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void IR::IRData::Implementation::getCoordinateTree(IR::IRData::Implementation *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 6;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  if (*(this + 496))
  {
    v4 = *(this + 64);
    for (i = *(this + 65); v4 != i; v4 += 2)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v7 + 160);
      v13[0] = *(v7 + 144);
      v13[1] = v8;
      v14 = *(v7 + 176);
      v9 = *(v7 + 40);
      if (*(v7 + 48) != v9)
      {
        v10 = 0;
        v11 = 1;
        do
        {
          IR::IRCoordinates::set(v13, 0, *(v9 + 4 * v10));
          IR::IRCoordinates::set(v13, 1u, *(*(v7 + 64) + 4 * v10));
          IR::IRData::Implementation::insertInCoordinateTree(this, v13, a2);
          v10 = v11;
          v9 = *(v7 + 40);
          ++v11;
        }

        while (v10 < (*(v7 + 48) - v9) >> 2);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }

  else
  {
    v12 = *(this + 34);
    if (*v12 != v12[1])
    {
      *a2 = **(this + 11);
      IR::IRData::Implementation::recursiveGetCoordinateTree(this, v12, 0, a2);
    }
  }
}

void IR::IRData::Implementation::recursiveGetCoordinateTree(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v4 = a2[1];
  if (*a2 != v4)
  {
    v7 = (a3 + 1);
    v8 = (*a2 + 72);
    do
    {
      std::vector<float>::push_back[abi:ne200100]((a4 + 8), v8 - 18);
      if (*v8 != v8[1])
      {
        v11 = 6;
        __p = 0u;
        memset(v13, 0, sizeof(v13));
        std::vector<IR::IRCoordinateTree>::push_back[abi:ne200100]((a4 + 32), &v11);
        v14 = &v13[8];
        std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](&v14);
        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        v9 = *(a4 + 40);
        *(v9 - 56) = *(*(a1 + 88) + 4 * v7);
        IR::IRData::Implementation::recursiveGetCoordinateTree(a1, v8, v7, v9 - 56);
      }

      v10 = v8 + 6;
      v8 += 15;
    }

    while (v10 != v4);
  }
}

void IR::IRData::Implementation::insertInCoordinateTree(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[11];
  if (a1[12] != v3)
  {
    v7 = 0;
    do
    {
      v8 = IR::IRCoordinates::get(a2, *(v3 + 4 * v7));
      v29 = v8;
      v9 = a1[11];
      *a3 = *(v9 + 4 * v7);
      v10 = a1[17];
      v11 = *(v10 + 4 * v7);
      if (v11 != 0.0)
      {
        v8 = fmodf(v8, v11);
        v29 = v8;
        if (v8 < 0.0)
        {
          v8 = v8 + *(v10 + 4 * v7);
          v29 = v8;
        }
      }

      v13 = *(a3 + 8);
      v14 = *(a3 + 16);
      v12 = (a3 + 8);
      if (v14 == v13)
      {
        v16 = *(a3 + 16);
      }

      else
      {
        v15 = (v14 - v13) >> 2;
        v16 = *(a3 + 8);
        do
        {
          v17 = v15 >> 1;
          v18 = &v16[4 * (v15 >> 1)];
          v20 = *v18;
          v19 = (v18 + 1);
          v15 += ~(v15 >> 1);
          if (v20 < v8)
          {
            v16 = v19;
          }

          else
          {
            v15 = v17;
          }
        }

        while (v15);
      }

      if (v14 == v16)
      {
        std::vector<float>::push_back[abi:ne200100](v12, &v29);
        if (((a1[12] - a1[11]) >> 2) - 1 > v7)
        {
          v25 = 6;
          __p = 0u;
          v27 = 0u;
          v28 = 0u;
          std::vector<IR::IRCoordinateTree>::push_back[abi:ne200100]((a3 + 32), &v25);
          v30 = &v27 + 1;
          std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](&v30);
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }

          a3 = *(a3 + 40) - 56;
        }
      }

      else if (*v16 == v8)
      {
        if (((a1[12] - v9) >> 2) - 1 > v7)
        {
          a3 = *(a3 + 32) + 56 * ((v16 - v13) >> 2);
        }
      }

      else
      {
        v21 = std::vector<float>::insert(v12, v16, &v29);
        if (((a1[12] - a1[11]) >> 2) - 1 > v7)
        {
          v23 = *(a3 + 32);
          v22 = (a3 + 32);
          v24 = v23 + 56 * ((v21 - *(v22 - 3)) >> 2);
          v25 = 6;
          __p = 0u;
          v27 = 0u;
          v28 = 0u;
          a3 = std::vector<IR::IRCoordinateTree>::insert(v22, v24, &v25);
          v30 = &v27 + 1;
          std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](&v30);
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }
        }
      }

      ++v7;
      v3 = a1[11];
    }

    while (v7 < (a1[12] - v3) >> 2);
  }
}

void sub_296BB07C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IR::IRCoordinateTree::~IRCoordinateTree(va);
  _Unwind_Resume(a1);
}

void IR::IRCoordinateTree::~IRCoordinateTree(IR::IRCoordinateTree *this)
{
  v3 = (this + 32);
  std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

uint64_t std::vector<IR::IRCoordinateTree>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<IR::IRCoordinateTree>::__emplace_back_slow_path<IR::IRCoordinateTree>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

float *std::vector<float>::insert(void *a1, char *__src, float *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v29 = a1;
    if (v14)
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](a1, v14);
    }

    v26 = 0;
    v27 = 4 * v15;
    v28 = (4 * v15);
    std::__split_buffer<float>::emplace_back<float const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 4);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_296BB0A48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<IR::IRCoordinateTree>::insert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v8 = *a1;
    v9 = 0x6DB6DB6DB6DB6DB7 * ((v6 - *a1) >> 3) + 1;
    if (v9 > 0x492492492492492)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = a2 - v8;
    v11 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v8) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= v9)
    {
      v12 = 0x6DB6DB6DB6DB6DB7 * ((v6 - *a1) >> 3) + 1;
    }

    if (v11 >= 0x249249249249249)
    {
      v13 = 0x492492492492492;
    }

    else
    {
      v13 = v12;
    }

    v19 = a1;
    if (v13)
    {
      std::allocator<IR::IRCoordinateTree>::allocate_at_least[abi:ne200100](a1, v13);
    }

    v15 = 0;
    v16 = 8 * (v10 >> 3);
    v17 = v16;
    v18 = 0;
    std::__split_buffer<IR::IRCoordinateTree>::emplace_back<IR::IRCoordinateTree>(&v15, a3);
    v4 = std::vector<IR::IRCoordinateTree>::__swap_out_circular_buffer(a1, &v15, v4);
    std::__split_buffer<IR::IRCoordinateTree>::~__split_buffer(&v15);
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 8) = 0;
    *(v6 + 8) = *(a3 + 8);
    *(v6 + 24) = *(a3 + 24);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 40) = 0;
    *(v6 + 48) = 0;
    *(v6 + 32) = *(a3 + 32);
    *(v6 + 48) = *(a3 + 48);
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    a1[1] = v6 + 56;
  }

  else
  {
    std::vector<IR::IRCoordinateTree>::__move_range(a1, a2, v6, a2 + 56);
    *v4 = *a3;
    std::vector<float>::__move_assign(v4 + 8, (a3 + 8));
    std::vector<IR::IRCoordinateTree>::__vdeallocate((v4 + 32));
    *(v4 + 32) = *(a3 + 32);
    *(v4 + 48) = *(a3 + 48);
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
  }

  return v4;
}

void sub_296BB0C3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<IR::IRCoordinateTree>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<IR::IRCoordinates>::reserve(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x71C71C71C71C71DLL)
    {
      std::allocator<IR::IRCoordinates>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

BOOL AUSM::ExclusionZone::isInExclusionZone@<W0>(AUSM::ExclusionZone *this@<X0>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>, BOOL a6@<W8>)
{
  if (*this == 1)
  {
    v21 = __sincosf_stret(a2 * 0.017453);
    v22 = __sincosf_stret(a3 * 0.017453);
    v23 = v21.__sinval * (v22.__cosval * a4);
    v24 = v21.__cosval * (v22.__cosval * a4);
    v25 = v22.__sinval * a4;
    v26 = *(this + 1);
    v27 = *(this + 2);
    v28 = v23 >= (v26 - a5);
    if (v23 > (v27 + a5))
    {
      v29 = 1;
    }

    else
    {
      v28 = 1;
      v29 = v23 < (v26 - a5);
    }

    v30 = !v29;
    if (v26 <= v27)
    {
      v31 = v30;
    }

    else
    {
      v31 = v28;
    }

    v32 = *(this + 3);
    v33 = *(this + 4);
    v12 = v24 >= (v32 - a5);
    if (v24 > (v33 + a5))
    {
      v34 = 1;
    }

    else
    {
      v12 = 1;
      v34 = v24 < (v32 - a5);
    }

    v35 = !v34;
    if (v32 <= v33)
    {
      v12 = v35;
    }

    v36 = *(this + 5);
    v37 = *(this + 6);
    v17 = v25 >= (v36 - a5);
    if (v25 > (v37 + a5))
    {
      v38 = 1;
    }

    else
    {
      v17 = 1;
      v38 = v25 < (v36 - a5);
    }

    v39 = !v38;
    if (v36 <= v37)
    {
      v17 = v39;
    }

    if ((v31 & 1) == 0)
    {
      return 0;
    }

    return v12 && v17;
  }

  if (!*this)
  {
    v9 = *(this + 3);
    v10 = *(this + 4);
    v11 = v9 - a5;
    v12 = (v9 - a5) <= a2;
    if ((v10 + a5) < a2)
    {
      v13 = 1;
    }

    else
    {
      v12 = 1;
      v13 = v11 > a2;
    }

    v14 = !v13;
    if (v9 <= v10)
    {
      v12 = v14;
    }

    v15 = *(this + 1);
    v16 = *(this + 2);
    v17 = (v15 - a5) <= a3;
    if ((v16 + a5) < a3)
    {
      v18 = 1;
    }

    else
    {
      v17 = 1;
      v18 = (v15 - a5) > a3;
    }

    v19 = !v18;
    if (v15 <= v16)
    {
      v17 = v19;
    }

    return v12 && v17;
  }

  return a6;
}

float IR::IRData::Implementation::estimateAverageDelay(IR::IRData::Implementation *this)
{
  v17[4] = *MEMORY[0x29EDCA608];
  v16 = 0;
  if (*(this + 496) == 1)
  {
    v1 = *(this + 64);
    v2 = *(this + 65);
    if (v1 == v2)
    {
      v3 = 0;
      v4 = 0.0;
    }

    else
    {
      v3 = 0;
      v4 = 0.0;
      do
      {
        v5 = *(*v1 + 112);
        v6 = *(*v1 + 120);
        v7 = v6 - v5;
        if (v6 != v5)
        {
          v8 = 0;
          v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
          if (v9 <= 1)
          {
            v9 = 1;
          }

          do
          {
            v10 = *(v5 + 24 * v8);
            v11 = *(v5 + 24 * v8 + 8) - v10;
            if (v11)
            {
              v12 = v11 >> 2;
              if (v12 <= 1)
              {
                v12 = 1;
              }

              v13 = v12;
              do
              {
                v14 = *v10++;
                v4 = v14 + v4;
                --v13;
              }

              while (v13);
              v3 += v12;
            }

            ++v8;
          }

          while (v8 != v9);
        }

        v1 += 16;
      }

      while (v1 != v2);
    }
  }

  else
  {
    v17[0] = &unk_2A1DEC848;
    v17[1] = &v16 + 4;
    v17[2] = &v16;
    v17[3] = v17;
    IR::IRData::Implementation::forEachNode(this, v17, 0, 0);
    std::__function::__value_func<void ()(IR::IRDataNode const&,unsigned int)>::~__value_func[abi:ne200100](v17);
    v4 = *(&v16 + 1);
    v3 = v16;
  }

  return v4 / v3;
}

void sub_296BB0FEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(IR::IRDataNode const&,unsigned int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296BB1100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(IR::IRDataNode const&,unsigned int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t IR::IRData::Implementation::getBooleanFromDictionary(const __CFDictionary **a1, const __CFString *a2, int a3)
{
  v5 = *a1;
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = a2;
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::BooleanRef,std::string const&>(v5, a2, &v20);
  if (v21 == 1)
  {
    v6 = v20;
    if (!v20)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](exception, "Could not construct");
    }

    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v6))
    {
      v8 = 0;
      LOBYTE(v6) = CFBooleanGetValue(v6) != 0;
    }

    else
    {
      v12 = CFNumberGetTypeID();
      if (v12 == CFGetTypeID(v6))
      {
        v13 = applesauce::CF::details::number_convert_as<BOOL>(v6);
        v8 = 0;
        LOBYTE(v6) = (v13 & 0x100) != 0 ? v13 : a3;
      }

      else
      {
        v8 = 0;
        LOBYTE(v6) = a3;
      }
    }
  }

  else
  {
    if (!*a1)
    {
      v16 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25F8D0](v16, "Could not construct");
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::NumberRef,std::string const&>(*a1, v6, &cf);
    if (v19 == 1)
    {
      if (!cf)
      {
        v17 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25F8D0](v17, "Could not construct");
      }

      if (a3)
      {
        v9 = 1.0;
      }

      else
      {
        v9 = 0.0;
      }

      v10 = applesauce::CF::convert_as<float,0>(cf);
      v11 = *&v10;
      if ((v10 & 0x100000000) == 0)
      {
        v11 = v9;
      }

      LOBYTE(v6) = v11 > 0.5;
      if (v19)
      {
        v8 = 0;
        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  if (v21 == 1 && v20)
  {
    CFRelease(v20);
  }

  if (v8)
  {
LABEL_28:
    LOBYTE(v6) = a3;
  }

  return v6 & 1;
}

void sub_296BB1350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::optional<applesauce::CF::NumberRef>::~optional(&a9);
  std::optional<applesauce::CF::BooleanRef>::~optional(&a11);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(IR::IRDataNode &,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t std::function<void ()(IR::IRDataNode const&,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t IR::IRData::Implementation::printNodes(IR::IRData::Implementation *this)
{
  v6[4] = *MEMORY[0x29EDCA608];
  if (**(this + 34) == *(*(this + 34) + 8))
  {
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x29EDC93C8], "Empty!", 6);
    std::ios_base::getloc((v2 + *(*v2 - 24)));
    v3 = std::locale::use_facet(&v5, MEMORY[0x29EDC93D0]);
    (v3->__vftable[2].~facet_0)(v3, 10);
    std::locale::~locale(&v5);
    std::ostream::put();
    std::ostream::flush();
  }

  v6[0] = &unk_2A1DEC8D8;
  v6[3] = v6;
  IR::IRData::Implementation::forEachNode(this, v6, 0, 0);
  return std::__function::__value_func<void ()(IR::IRDataNode &,unsigned int)>::~__value_func[abi:ne200100](v6);
}

void IR::IRData::Implementation::generatePanningIRData(IR::IRData::Implementation *this@<X0>, float a2@<S0>, IR::IRData::Implementation *a3@<X1>, IR *a4@<X2>, uint64_t a5@<X3>, float *a6@<X4>, void *a7@<X8>)
{
  if (this == 6619138)
  {
    IR::IRData::Implementation::generateStereoPanningIRData(a3, a2, a3, a4, a5, a6);
  }

  IR::IRData::Implementation::generateMultiChannelPanningIRData(this, a2, a3, a4, a5, a7);
}

void IR::IRData::Implementation::generateStereoPanningIRData(IR::IRData::Implementation *this, float a2, BOOL a3, uint64_t a4, uint64_t a5, float *a6)
{
  v13 = *MEMORY[0x29EDCA608];
  IR::generateGrid(2, this, a6, v8);
  v9 = 1;
  memset(v8, 0, sizeof(v8));
  std::vector<IR::IRCoordinateType>::__init_with_size[abi:ne200100]<IR::IRCoordinateType const*,IR::IRCoordinateType const*>(v8, &v9, &v10, 2uLL);
  v12 = 0x43B4000000000000;
  memset(v7, 0, sizeof(v7));
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v7, &v12, &v13, 2uLL);
  v11 = 0x100000001;
  memset(__p, 0, sizeof(__p));
  std::vector<IR::IRInterpolationMethod>::__init_with_size[abi:ne200100]<IR::IRInterpolationMethod const*,IR::IRInterpolationMethod const*>(__p, &v11, &v12, 2uLL);
  operator new();
}

void sub_296BB1C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, void *a40, uint64_t a41)
{
  std::vector<std::vector<std::list<int>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a34);
  if (__p)
  {
    a38 = __p;
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  if (a18)
  {
    operator delete(a18);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void IR::IRData::Implementation::generateMultiChannelPanningIRData(IR::IRData::Implementation *this@<X0>, float a2@<S0>, int a3@<W1>, IR *a4@<X2>, int a5@<W3>, void *a6@<X8>)
{
  v9 = this;
  v52[2] = *MEMORY[0x29EDCA608];
  v46 = this;
  v45 = a2;
  v11 = IR::IRDataLoader::instance(this);
  IR::IRDataLoader::getCustomLayoutFromTag(v11, v9, v43);
  if (v44 == 1)
  {
    GetChannelLayoutSphericalCoordinates(v43[0], &v37, v12);
  }

  else
  {
    GetChannelLayoutSphericalCoordinates(v9, &v37);
  }

  if (v44 == 1)
  {
    GetChannelLayoutChannelLabels(v43[0], &v35);
  }

  else
  {
    GetChannelLayoutChannelLabels(v46, &v35);
  }

  v33 = 0;
  v32 = 0;
  v34 = 0;
  v13 = v36 - v35;
  v14 = (v36 - v35) >> 2;
  v15 = v14 - 1;
  LODWORD(v31.__begin_) = v14 - 1;
  if (v14 >= 1)
  {
    do
    {
      if ((IsLFEChannelLabel(*(v35 + v15)) & 1) != 0 || (LODWORD(begin_low) = v31.__begin_, *(v41 + SLODWORD(v31.__begin_)) == 0.0))
      {
        std::vector<int>::push_back[abi:ne200100](&v32, &v31);
        begin_low = SLODWORD(v31.__begin_);
        v17 = v37 + 4 * SLODWORD(v31.__begin_);
        v18 = v38 - (v17 + 4);
        if (v38 != v17 + 4)
        {
          memmove(v37 + 4 * SLODWORD(v31.__begin_), v17 + 4, v38 - (v17 + 4));
          begin_low = SLODWORD(v31.__begin_);
        }

        v38 = &v17[v18];
        v19 = v39 + 4 * begin_low;
        v20 = v40 - (v19 + 4);
        if (v40 != v19 + 4)
        {
          memmove(v39 + 4 * begin_low, v19 + 4, v40 - (v19 + 4));
          LODWORD(begin_low) = v31.__begin_;
        }

        v40 = &v19[v20];
      }

      v15 = begin_low - 1;
      LODWORD(v31.__begin_) = begin_low - 1;
    }

    while (begin_low > 0);
    v13 = v36 - v35;
  }

  if ((v13 >> 2))
  {
    HOA::HOA(&v31, a4, a5, 0);
    HOA::createDecoder(&v31, &v37, &v39, 0, 0);
    IR::generateGrid(a4, a3, v21, v30);
    v28 = 0;
    v29 = 1;
    v27 = 0;
    v26 = 0;
    v24 = v13 >> 2;
    v25 = 2;
    v51 = 1;
    memset(v30, 0, sizeof(v30));
    std::vector<IR::IRCoordinateType>::__init_with_size[abi:ne200100]<IR::IRCoordinateType const*,IR::IRCoordinateType const*>(v30, &v51, v52, 2uLL);
    v49 = 0x43B4000000000000;
    memset(__C, 0, sizeof(__C));
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(__C, &v49, &v50, 2uLL);
    v47 = 0x100000001;
    memset(__p, 0, sizeof(__p));
    std::vector<IR::IRInterpolationMethod>::__init_with_size[abi:ne200100]<IR::IRInterpolationMethod const*,IR::IRInterpolationMethod const*>(__p, &v47, &v48, 2uLL);
    std::allocate_shared[abi:ne200100]<IR::IRData const,std::allocator<IR::IRData>,float &,int,int,float,BOOL,unsigned int,unsigned int,unsigned int &,std::vector<IR::IRCoordinateType>,std::vector<float>,std::vector<IR::IRInterpolationMethod>,IR::IRSphericalInterpolation,applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef,0>();
  }

  *a6 = 0;
  a6[1] = 0;
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v44 == 1)
  {
    if (v43[0])
    {
      v43[1] = v43[0];
      operator delete(v43[0]);
    }
  }
}

void sub_296BB2788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  *(v46 - 160) = v45;
  std::vector<std::vector<std::list<int>>>::__destroy_vector::operator()[abi:ne200100]((v46 - 160));
  *(v46 - 136) = v44;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v46 - 136));
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  v48 = a20;
  if (a18)
  {
    operator delete(a18);
    v48 = a20;
  }

  if (v48)
  {
    operator delete(v48);
  }

  HOA::~HOA(&a44);
  v49 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v49;
    operator delete(v49);
  }

  v50 = STACK[0x2B8];
  if (STACK[0x2B8])
  {
    STACK[0x2C0] = v50;
    operator delete(v50);
  }

  std::tuple<std::vector<float>,std::vector<float>,std::vector<float>>::~tuple(&STACK[0x2D0]);
  if (*(v46 - 208) == 1)
  {
    v51 = *(v46 - 232);
    if (v51)
    {
      *(v46 - 224) = v51;
      operator delete(v51);
    }
  }

  _Unwind_Resume(a1);
}

void IR::IRData::IRData(void *a1)
{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  std::make_unique[abi:ne200100]<IR::IRData::Implementation,float &,unsigned int &,unsigned int &,float &,BOOL &,unsigned int &,unsigned int &,unsigned int &,std::vector<IR::IRCoordinateType> const&,std::vector<float> const&,std::vector<IR::IRInterpolationMethod> const&,IR::IRSphericalInterpolation &,applesauce::CF::DictionaryRef &,applesauce::CF::DictionaryRef &,0>();
}

{
  IR::IRData::IRData(a1);
}

{
  *a1 = 0;
  operator new();
}

{
  IR::IRData::IRData(a1);
}

void sub_296BB2A88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DataRef::~DataRef(va);
  MEMORY[0x29C25FC20](v3, 0x10F0C40E38F14B0);
  std::unique_ptr<IR::IRData::Implementation>::reset[abi:ne200100](v2, 0);
  _Unwind_Resume(a1);
}

void sub_296BB2CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, const void *);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  applesauce::CF::DictionaryRef::~DictionaryRef(va1);
  MEMORY[0x29C25FC20](v9, 0x10F0C40E38F14B0);
  _Unwind_Resume(a1);
}

void sub_296BB2E34(_Unwind_Exception *a1)
{
  MEMORY[0x29C25FC20](v2, 0x10F0C40E38F14B0);
  std::unique_ptr<IR::IRData::Implementation>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

void sub_296BB2EFC(_Unwind_Exception *a1)
{
  MEMORY[0x29C25FC20](v2, 0x10F0C40E38F14B0);
  std::unique_ptr<IR::IRData::Implementation>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

void IR::IRData::extractIRDataTypePlist(CFTypeRef *a1@<X0>, int a2@<W1>, _DWORD *a3@<X2>, const __CFDictionary **a4@<X8>)
{
  v7 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  cf = v7;
  IR::IRData::Implementation::extractIRDataTypePlist(&cf, a2, a3, a4);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296BB3004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef IR::IRData::Implementation::getDescription@<X0>(CFTypeRef this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 36);
  if (v3)
  {
    this = CFRetain(*(this + 36));
  }

  *a2 = v3;
  return this;
}