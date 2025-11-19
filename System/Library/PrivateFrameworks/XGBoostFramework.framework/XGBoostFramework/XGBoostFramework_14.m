uint64_t *xgboost::HostDeviceVector<xgboost::Entry>::~HostDeviceVector(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x277C69180](v2, 0x20C40960023A9);
  }

  *a1 = 0;
  return a1;
}

void xgboost::HostDeviceVector<xgboost::Entry>::HostDeviceVector()
{
  operator new();
}

{
  operator new();
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

uint64_t xgboost::HostDeviceVector<xgboost::Entry>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

void xgboost::HostDeviceVector<xgboost::Entry>::DeviceSpan(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
}

{
  *a1 = 0;
  a1[1] = 0;
}

uint64_t xgboost::HostDeviceVector<xgboost::Entry>::DevicePointer()
{
  return 0;
}

{
  return 0;
}

uint64_t xgboost::HostDeviceVector<xgboost::Entry>::HostPointer(uint64_t a1)
{
  return **a1;
}

{
  return **a1;
}

uint64_t xgboost::HostDeviceVector<xgboost::Entry>::HostVector(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

uint64_t **xgboost::HostDeviceVector<xgboost::Entry>::HostSpan@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X8>)
{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 3;
  a2[1] = v2;
  return result;
}

{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 3;
  a2[1] = v2;
  return result;
}

uint64_t **xgboost::HostDeviceVector<xgboost::Entry>::ConstHostSpan@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X8>)
{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 3;
  a2[1] = v2;
  return result;
}

uint64_t **xgboost::HostDeviceVector<xgboost::Entry>::Fill(uint64_t **result, uint64_t a2)
{
  v2 = **result;
  v3 = ((*result)[1] - v2) >> 3;
  v4 = v3 - 1;
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = (v3 + 1) & 0x7FFFFFFFFFFFFFFELL;
    v7 = vdupq_n_s64(v4);
    v8 = (v2 + 8);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v5), xmmword_274E1F3B0)));
      if (v9.i8[0])
      {
        *(v8 - 1) = a2;
      }

      if (v9.i8[4])
      {
        *v8 = a2;
      }

      v5 += 2;
      v8 += 2;
    }

    while (v6 != v5);
  }

  return result;
}

void ***xgboost::HostDeviceVector<xgboost::Entry>::Copy(void ***result, const void ***a2)
{
  v6 = ((*result)[1] - **result) >> 3;
  v5 = ((*a2)[1] - **a2) >> 3;
  if (v6 != v5)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v6, &v5);
  }

  v3 = **a2;
  v4 = (*a2)[1];
  if (v4 != v3)
  {
    return memmove(**result, v3, v4 - v3);
  }

  return result;
}

void sub_274DB4094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<xgboost::Entry>::Copy(void ***result, uint64_t a2)
{
  v2 = ((*result)[1] - **result) >> 3;
  v4 = (*(a2 + 8) - *a2) >> 3;
  v5 = v2;
  if (v2 != v4)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    return memmove(**result, *a2, v3 - *a2);
  }

  return result;
}

void sub_274DB41D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<xgboost::Entry>::Copy(void ***result, void *__src, uint64_t a3)
{
  v3 = ((*result)[1] - **result) >> 3;
  v4 = a3;
  v5 = v3;
  if (v3 != a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  if (a3)
  {
    return memmove(**result, __src, 8 * a3);
  }

  return result;
}

void sub_274DB431C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::HostDeviceVector<xgboost::Entry>::Extend(void **a1, const void ***a2)
{
  v4 = *a1;
  v5 = v4[1] - *v4;
  std::vector<xgboost::Entry>::resize(v4, (((*a2)[1] - **a2) >> 3) + (v5 >> 3));
  v6 = **a2;
  v7 = (*a2)[1];
  if (v7 != v6)
  {
    v8 = (v5 + **a1);

    memmove(v8, v6, v7 - v6);
  }
}

uint64_t *xgboost::HostDeviceVector<xgboost::Entry>::Resize(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = **result;
  v5 = *(*result + 8);
  v6 = v5 - v4;
  v7 = (v5 - v4) >> 3;
  if (a2 <= v7)
  {
    if (a2 >= v7)
    {
      return result;
    }

    v13 = v4 + 8 * a2;
  }

  else
  {
    v8 = a2 - v7;
    v9 = v3[2];
    if (v8 > (v9 - v5) >> 3)
    {
      if (!(a2 >> 61))
      {
        v10 = v9 - v4;
        v11 = v10 >> 2;
        if (v10 >> 2 <= a2)
        {
          v11 = a2;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(*result, v12);
      }

      std::vector<xgboost::Json>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0;
    v13 = v5 + 8 * v8;
    v15 = (8 * a2 - v6 - 8) >> 3;
    v16 = vdupq_n_s64(v15);
    v17 = (v5 + 8);
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v14), xmmword_274E1F3B0)));
      if (v18.i8[0])
      {
        *(v17 - 1) = a3;
      }

      if (v18.i8[4])
      {
        *v17 = a3;
      }

      v14 += 2;
      v17 += 2;
    }

    while (((v15 + 2) & 0x3FFFFFFFFFFFFFFELL) != v14);
  }

  v3[1] = v13;
  return result;
}

void xgboost::HostDeviceVector<unsigned long long>::HostDeviceVector(void *a1)
{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

void sub_274DB46C0(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x277C69180](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t *xgboost::HostDeviceVector<unsigned long long>::~HostDeviceVector(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x277C69180](v2, 0x10C402FEFCB83);
  }

  *a1 = 0;
  return a1;
}

void xgboost::HostDeviceVector<unsigned long long>::HostDeviceVector()
{
  operator new();
}

{
  operator new();
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

uint64_t xgboost::HostDeviceVector<unsigned long long>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

void xgboost::HostDeviceVector<unsigned long long>::DeviceSpan(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
}

{
  *a1 = 0;
  a1[1] = 0;
}

uint64_t xgboost::HostDeviceVector<unsigned long long>::DevicePointer()
{
  return 0;
}

{
  return 0;
}

uint64_t xgboost::HostDeviceVector<unsigned long long>::HostPointer(uint64_t a1)
{
  return **a1;
}

{
  return **a1;
}

uint64_t xgboost::HostDeviceVector<unsigned long long>::HostVector(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

uint64_t **xgboost::HostDeviceVector<unsigned long long>::HostSpan@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X8>)
{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 3;
  a2[1] = v2;
  return result;
}

{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 3;
  a2[1] = v2;
  return result;
}

uint64_t **xgboost::HostDeviceVector<unsigned long long>::ConstHostSpan@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X8>)
{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 3;
  a2[1] = v2;
  return result;
}

uint64_t **xgboost::HostDeviceVector<unsigned long long>::Fill(uint64_t **result, uint64_t a2)
{
  v2 = **result;
  v3 = ((*result)[1] - v2) >> 3;
  v4 = v3 - 1;
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = (v3 + 1) & 0x7FFFFFFFFFFFFFFELL;
    v7 = vdupq_n_s64(v4);
    v8 = (v2 + 8);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v5), xmmword_274E1F3B0)));
      if (v9.i8[0])
      {
        *(v8 - 1) = a2;
      }

      if (v9.i8[4])
      {
        *v8 = a2;
      }

      v5 += 2;
      v8 += 2;
    }

    while (v6 != v5);
  }

  return result;
}

void ***xgboost::HostDeviceVector<unsigned long long>::Copy(void ***result, const void ***a2)
{
  v6 = ((*result)[1] - **result) >> 3;
  v5 = ((*a2)[1] - **a2) >> 3;
  if (v6 != v5)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v6, &v5);
  }

  v3 = **a2;
  v4 = (*a2)[1];
  if (v4 != v3)
  {
    return memmove(**result, v3, v4 - v3);
  }

  return result;
}

void sub_274DB4C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<unsigned long long>::Copy(void ***result, uint64_t a2)
{
  v2 = ((*result)[1] - **result) >> 3;
  v4 = (*(a2 + 8) - *a2) >> 3;
  v5 = v2;
  if (v2 != v4)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    return memmove(**result, *a2, v3 - *a2);
  }

  return result;
}

void sub_274DB4D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<unsigned long long>::Copy(void ***result, void *__src, uint64_t a3)
{
  v3 = ((*result)[1] - **result) >> 3;
  v4 = a3;
  v5 = v3;
  if (v3 != a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  if (a3)
  {
    return memmove(**result, __src, 8 * a3);
  }

  return result;
}

void sub_274DB4EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::HostDeviceVector<unsigned long long>::Extend(void **a1, const void ***a2)
{
  v4 = *a1;
  v5 = v4[1] - *v4;
  std::vector<unsigned long>::resize(v4, (((*a2)[1] - **a2) >> 3) + (v5 >> 3));
  v6 = **a2;
  v7 = (*a2)[1];
  if (v7 != v6)
  {
    v8 = (v5 + **a1);

    memmove(v8, v6, v7 - v6);
  }
}

uint64_t *xgboost::HostDeviceVector<unsigned long long>::Resize(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = **result;
  v5 = *(*result + 8);
  v6 = v5 - v4;
  v7 = (v5 - v4) >> 3;
  if (a2 <= v7)
  {
    if (a2 >= v7)
    {
      return result;
    }

    v13 = v4 + 8 * a2;
  }

  else
  {
    v8 = a2 - v7;
    v9 = v3[2];
    if (v8 > (v9 - v5) >> 3)
    {
      if (!(a2 >> 61))
      {
        v10 = v9 - v4;
        v11 = v10 >> 2;
        if (v10 >> 2 <= a2)
        {
          v11 = a2;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(*result, v12);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0;
    v13 = v5 + 8 * v8;
    v15 = (8 * a2 - v6 - 8) >> 3;
    v16 = vdupq_n_s64(v15);
    v17 = (v5 + 8);
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v14), xmmword_274E1F3B0)));
      if (v18.i8[0])
      {
        *(v17 - 1) = a3;
      }

      if (v18.i8[4])
      {
        *v17 = a3;
      }

      v14 += 2;
      v17 += 2;
    }

    while (((v15 + 2) & 0x3FFFFFFFFFFFFFFELL) != v14);
  }

  v3[1] = v13;
  return result;
}

void xgboost::HostDeviceVector<unsigned int>::HostDeviceVector(void *a1)
{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

void sub_274DB52C4(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x277C69180](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t *xgboost::HostDeviceVector<unsigned int>::~HostDeviceVector(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x277C69180](v2, 0x10C402FEFCB83);
  }

  *a1 = 0;
  return a1;
}

void xgboost::HostDeviceVector<unsigned int>::HostDeviceVector()
{
  operator new();
}

{
  operator new();
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

uint64_t xgboost::HostDeviceVector<unsigned int>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

void xgboost::HostDeviceVector<unsigned int>::DeviceSpan(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
}

{
  *a1 = 0;
  a1[1] = 0;
}

uint64_t xgboost::HostDeviceVector<unsigned int>::DevicePointer()
{
  return 0;
}

{
  return 0;
}

uint64_t xgboost::HostDeviceVector<unsigned int>::HostPointer(uint64_t a1)
{
  return **a1;
}

{
  return **a1;
}

uint64_t xgboost::HostDeviceVector<unsigned int>::HostVector(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

uint64_t **xgboost::HostDeviceVector<unsigned int>::HostSpan@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X8>)
{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 2;
  a2[1] = v2;
  return result;
}

{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 2;
  a2[1] = v2;
  return result;
}

uint64_t **xgboost::HostDeviceVector<unsigned int>::ConstHostSpan@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X8>)
{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 2;
  a2[1] = v2;
  return result;
}

uint64_t **xgboost::HostDeviceVector<unsigned int>::Fill(uint64_t **result, int a2)
{
  v2 = **result;
  v3 = ((*result)[1] - v2) >> 2;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = vdupq_n_s64(v3 - 1);
    v6 = (v2 + 8);
    do
    {
      v7 = vdupq_n_s64(v4);
      v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_274E1F3B0)));
      if (vuzp1_s16(v8, *v5.i8).u8[0])
      {
        *(v6 - 2) = a2;
      }

      if (vuzp1_s16(v8, *&v5).i8[2])
      {
        *(v6 - 1) = a2;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_274E1FC60)))).i32[1])
      {
        *v6 = a2;
        v6[1] = a2;
      }

      v4 += 4;
      v6 += 4;
    }

    while (((v3 + 3) & 0x7FFFFFFFFFFFFFFCLL) != v4);
  }

  return result;
}

void ***xgboost::HostDeviceVector<unsigned int>::Copy(void ***result, const void ***a2)
{
  v6 = ((*result)[1] - **result) >> 2;
  v5 = ((*a2)[1] - **a2) >> 2;
  if (v6 != v5)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v6, &v5);
  }

  v3 = **a2;
  v4 = (*a2)[1];
  if (v4 != v3)
  {
    return memmove(**result, v3, v4 - v3);
  }

  return result;
}

void sub_274DB57FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<unsigned int>::Copy(void ***result, uint64_t a2)
{
  v2 = ((*result)[1] - **result) >> 2;
  v4 = (*(a2 + 8) - *a2) >> 2;
  v5 = v2;
  if (v2 != v4)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    return memmove(**result, *a2, v3 - *a2);
  }

  return result;
}

void sub_274DB5940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<unsigned int>::Copy(void ***result, void *__src, uint64_t a3)
{
  v3 = ((*result)[1] - **result) >> 2;
  v4 = a3;
  v5 = v3;
  if (v3 != a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  if (a3)
  {
    return memmove(**result, __src, 4 * a3);
  }

  return result;
}

void sub_274DB5A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::HostDeviceVector<unsigned int>::Extend(std::vector<unsigned int> **a1, const void ***a2)
{
  v4 = *a1;
  v5 = v4->__end_ - v4->__begin_;
  std::vector<float>::resize(v4, (((*a2)[1] - **a2) >> 2) + (v5 >> 2));
  v6 = **a2;
  v7 = (*a2)[1];
  if (v7 != v6)
  {
    v8 = (*a1)->__begin_ + v5;

    memmove(v8, v6, v7 - v6);
  }
}

void xgboost::HostDeviceVector<xgboost::RegTree::Segment>::HostDeviceVector(void *a1)
{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

void sub_274DB5C34(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x277C69180](v1, v2);
  _Unwind_Resume(a1);
}

void sub_274DB5CF8(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x277C69180](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t *xgboost::HostDeviceVector<xgboost::RegTree::Segment>::~HostDeviceVector(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x277C69180](v2, 0x20C40960023A9);
  }

  *a1 = 0;
  return a1;
}

void xgboost::HostDeviceVector<xgboost::RegTree::Segment>::HostDeviceVector()
{
  operator new();
}

{
  operator new();
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

uint64_t xgboost::HostDeviceVector<xgboost::RegTree::Segment>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

void xgboost::HostDeviceVector<xgboost::RegTree::Segment>::DeviceSpan(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
}

{
  *a1 = 0;
  a1[1] = 0;
}

uint64_t xgboost::HostDeviceVector<xgboost::RegTree::Segment>::DevicePointer()
{
  return 0;
}

{
  return 0;
}

uint64_t xgboost::HostDeviceVector<xgboost::RegTree::Segment>::HostPointer(uint64_t a1)
{
  return **a1;
}

{
  return **a1;
}

uint64_t xgboost::HostDeviceVector<xgboost::RegTree::Segment>::HostVector(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

uint64_t **xgboost::HostDeviceVector<xgboost::RegTree::Segment>::HostSpan@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X8>)
{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 4;
  a2[1] = v2;
  return result;
}

{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 4;
  a2[1] = v2;
  return result;
}

uint64_t **xgboost::HostDeviceVector<xgboost::RegTree::Segment>::ConstHostSpan@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X8>)
{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 4;
  a2[1] = v2;
  return result;
}

void **xgboost::HostDeviceVector<xgboost::RegTree::Segment>::Fill(void **result, uint64_t a2, uint64_t a3)
{
  v3 = **result;
  v4 = ((*result)[1] - v3) >> 4;
  if (v4 >= 1)
  {
    v5 = v4 + 1;
    do
    {
      *v3 = a2;
      v3[1] = a3;
      v3 += 2;
      --v5;
    }

    while (v5 > 1);
  }

  return result;
}

void ***xgboost::HostDeviceVector<xgboost::RegTree::Segment>::Copy(void ***result, const void ***a2)
{
  v6 = ((*result)[1] - **result) >> 4;
  v5 = ((*a2)[1] - **a2) >> 4;
  if (v6 != v5)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v6, &v5);
  }

  v3 = **a2;
  v4 = (*a2)[1];
  if (v4 != v3)
  {
    return memmove(**result, v3, v4 - v3);
  }

  return result;
}

void sub_274DB61B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<xgboost::RegTree::Segment>::Copy(void ***result, uint64_t a2)
{
  v2 = ((*result)[1] - **result) >> 4;
  v4 = (*(a2 + 8) - *a2) >> 4;
  v5 = v2;
  if (v2 != v4)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    return memmove(**result, *a2, v3 - *a2);
  }

  return result;
}

void sub_274DB62F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<xgboost::RegTree::Segment>::Copy(void ***result, void *__src, uint64_t a3)
{
  v3 = ((*result)[1] - **result) >> 4;
  v4 = a3;
  v5 = v3;
  if (v3 != a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  if (a3)
  {
    return memmove(**result, __src, 16 * a3);
  }

  return result;
}

void sub_274DB643C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::HostDeviceVector<xgboost::RegTree::Segment>::Extend(void **a1, const void ***a2)
{
  v4 = *a1;
  v5 = v4[1] - *v4;
  std::vector<std::pair<double,double>>::resize(v4, (((*a2)[1] - **a2) >> 4) + (v5 >> 4));
  v6 = **a2;
  v7 = (*a2)[1];
  if (v7 != v6)
  {
    v8 = (v5 + **a1);

    memmove(v8, v6, v7 - v6);
  }
}

uint64_t *xgboost::HostDeviceVector<xgboost::RegTree::Segment>::Resize(uint64_t *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  v6 = **result;
  v5 = *(*result + 8);
  v7 = (v5 - v6) >> 4;
  if (a2 <= v7)
  {
    if (a2 < v7)
    {
      v4[1] = v6 + 16 * a2;
    }
  }

  else
  {
    v8 = a2 - v7;
    v9 = v4[2];
    if (v8 > (v9 - v5) >> 4)
    {
      if (!(a2 >> 60))
      {
        v10 = v9 - v6;
        v11 = (v9 - v6) >> 3;
        if (v11 <= a2)
        {
          v11 = a2;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF0)
        {
          v12 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WQSummary<float,float>::Entry>>(*result, v12);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v13 = &v5[2 * v8];
    do
    {
      *v5 = a3;
      v5[1] = a4;
      v5 += 2;
    }

    while (v5 != v13);
    v4[1] = v13;
  }

  return result;
}

void xgboost::HostDeviceVector<unsigned long>::HostDeviceVector(void *a1)
{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

{
  *a1 = 0;
  operator new();
}

void sub_274DB6778(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x277C69180](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t *xgboost::HostDeviceVector<unsigned long>::~HostDeviceVector(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x277C69180](v2, 0x10C402FEFCB83);
  }

  *a1 = 0;
  return a1;
}

void xgboost::HostDeviceVector<unsigned long>::HostDeviceVector()
{
  operator new();
}

{
  operator new();
}

{
    ;
  }
}

{
    ;
  }
}

{
    ;
  }
}

uint64_t xgboost::HostDeviceVector<unsigned long>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

void xgboost::HostDeviceVector<unsigned long>::DeviceSpan(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
}

{
  *a1 = 0;
  a1[1] = 0;
}

uint64_t xgboost::HostDeviceVector<unsigned long>::DevicePointer()
{
  return 0;
}

{
  return 0;
}

uint64_t xgboost::HostDeviceVector<unsigned long>::HostPointer(uint64_t a1)
{
  return **a1;
}

{
  return **a1;
}

uint64_t xgboost::HostDeviceVector<unsigned long>::HostVector(uint64_t a1)
{
  return *a1;
}

{
  return *a1;
}

uint64_t **xgboost::HostDeviceVector<unsigned long>::HostSpan@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X8>)
{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 3;
  a2[1] = v2;
  return result;
}

{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 3;
  a2[1] = v2;
  return result;
}

uint64_t **xgboost::HostDeviceVector<unsigned long>::ConstHostSpan@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X8>)
{
  v2 = **result;
  *a2 = ((*result)[1] - v2) >> 3;
  a2[1] = v2;
  return result;
}

uint64_t **xgboost::HostDeviceVector<unsigned long>::Fill(uint64_t **result, uint64_t a2)
{
  v2 = **result;
  v3 = ((*result)[1] - v2) >> 3;
  v4 = v3 - 1;
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = (v3 + 1) & 0x7FFFFFFFFFFFFFFELL;
    v7 = vdupq_n_s64(v4);
    v8 = (v2 + 8);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v5), xmmword_274E1F3B0)));
      if (v9.i8[0])
      {
        *(v8 - 1) = a2;
      }

      if (v9.i8[4])
      {
        *v8 = a2;
      }

      v5 += 2;
      v8 += 2;
    }

    while (v6 != v5);
  }

  return result;
}

void ***xgboost::HostDeviceVector<unsigned long>::Copy(void ***result, const void ***a2)
{
  v6 = ((*result)[1] - **result) >> 3;
  v5 = ((*a2)[1] - **a2) >> 3;
  if (v6 != v5)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v6, &v5);
  }

  v3 = **a2;
  v4 = (*a2)[1];
  if (v4 != v3)
  {
    return memmove(**result, v3, v4 - v3);
  }

  return result;
}

void sub_274DB6C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<unsigned long>::Copy(void ***result, uint64_t a2)
{
  v2 = ((*result)[1] - **result) >> 3;
  v4 = (*(a2 + 8) - *a2) >> 3;
  v5 = v2;
  if (v2 != v4)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    return memmove(**result, *a2, v3 - *a2);
  }

  return result;
}

void sub_274DB6DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void ***xgboost::HostDeviceVector<unsigned long>::Copy(void ***result, void *__src, uint64_t a3)
{
  v3 = ((*result)[1] - **result) >> 3;
  v4 = a3;
  v5 = v3;
  if (v3 != a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v5, &v4);
  }

  if (a3)
  {
    return memmove(**result, __src, 8 * a3);
  }

  return result;
}

void sub_274DB6EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::HostDeviceVector<unsigned long>::Extend(void **a1, const void ***a2)
{
  v4 = *a1;
  v5 = v4[1] - *v4;
  std::vector<unsigned long>::resize(v4, (((*a2)[1] - **a2) >> 3) + (v5 >> 3));
  v6 = **a2;
  v7 = (*a2)[1];
  if (v7 != v6)
  {
    v8 = (v5 + **a1);

    memmove(v8, v6, v7 - v6);
  }
}

void *std::vector<xgboost::detail::GradientPairInternal<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<xgboost::detail::GradientPairInternal<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_274DB707C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::detail::GradientPairInternal<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
}

void *std::vector<xgboost::FeatureType>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<xgboost::FeatureType>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<xgboost::FeatureType>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_274DB7138(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_274DB71BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::QuantileHistMaker::Builder<float>::Builder(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  _ZNSt3__115allocate_sharedB8ne200100IN7xgboost6common13ColumnSamplerENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_274DB7378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<xgboost::common::Monitor>::~unique_ptr[abi:ne200100]((v15 + 128));
  std::unique_ptr<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>>::~unique_ptr[abi:ne200100]((v16 + 72));
  std::vector<xgboost::tree::ApproxRowPartitioner>::__destroy_vector::operator()[abi:ne200100](&a15);
  std::unique_ptr<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>>::reset[abi:ne200100]((v16 + 24), 0);
  v18 = *v16;
  if (*v16)
  {
    *(v15 + 40) = v18;
    operator delete(v18);
  }

  v19 = *(v15 + 24);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

char ***std::unique_ptr<xgboost::common::Monitor>::~unique_ptr[abi:ne200100](char ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xgboost::common::Monitor::~Monitor(v2);
    MEMORY[0x277C69180]();
  }

  return a1;
}

uint64_t *std::unique_ptr<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__tree<dmlc::parameter::FieldAccessEntry *>::destroy(v2 + 296, *(v2 + 304));
    v3 = *(v2 + 272);
    if (v3)
    {
      *(v2 + 280) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 248);
    if (v4)
    {
      operator delete(v4);
    }

    v5 = *(v2 + 224);
    if (v5)
    {
      *(v2 + 232) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 200);
    if (v6)
    {
      *(v2 + 208) = v6;
      operator delete(v6);
    }

    v10 = (v2 + 176);
    std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v10);
    v7 = *(v2 + 104);
    if (v7)
    {
      *(v2 + 112) = v7;
      operator delete(v7);
    }

    v10 = (v2 + 80);
    std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v10);
    v8 = *(v2 + 40);
    if (v8)
    {
      *(v2 + 48) = v8;
      operator delete(v8);
    }

    v10 = (v2 + 16);
    std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v10);
    MEMORY[0x277C69180](v2, 0x10B0C407352E802);
  }

  return a1;
}

void xgboost::tree::QuantileHistMaker::Builder<float>::Builder()
{
  xgboost::tree::QuantileHistMaker::Builder<float>::Builder();
}

{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<float>::UpdateTree(void *a1, char ***a2)
{
  v4 = a1[16];
  std::string::basic_string[abi:ne200100]<0>(&__p, "UpdateTree");
  xgboost::common::Monitor::Start();
  if (v8 < 0)
  {
    operator delete(__p);
  }

  v5 = *a2;
  if (*a1 == 1)
  {
    v6 = *a2;
  }

  else
  {
    std::vector<xgboost::detail::GradientPairInternal<float>>::resize(a1 + 4, (v5[1] - *v5) >> 3);
    if (a1 + 4 != v5)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__assign_with_size[abi:ne200100]<xgboost::detail::GradientPairInternal<float>*,xgboost::detail::GradientPairInternal<float>*>(a1 + 4, *v5, v5[1], (v5[1] - *v5) >> 3);
    }
  }

  xgboost::tree::QuantileHistMaker::Builder<float>::InitData();
}

void sub_274DB7694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::QuantileHistMaker::Builder<float>::InitData(void *a1, uint64_t a2)
{
  v3 = a1[16];
  std::string::basic_string[abi:ne200100]<0>(&__p, "InitData");
  xgboost::common::Monitor::Start();
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  (**a2)(a2);
  v18 = 0;
  v5 = a1[8];
  for (i = a1[9]; i != v5; std::allocator_traits<std::allocator<xgboost::tree::ApproxRowPartitioner>>::destroy[abi:ne200100]<xgboost::tree::ApproxRowPartitioner,0>(i))
  {
    i -= 136;
  }

  a1[9] = v5;
  v6 = a1[1];
  v7 = *(v6 + 20);
  v8 = *(v6 + 128);
  LODWORD(__p) = -1;
  HIDWORD(__p) = v7;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = v8;
  (*(*a2 + 104))(&v16);
  __p = v16;
  v12 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::GHistIndexMatrix>::BatchIterator(&v10, 0);
}

void sub_274DB7BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  v30 = __p;
  __p = 0;
  if (v30)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&__p, v30);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::QuantileHistMaker::Builder<float>::ExpandTree(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 128);
  std::string::basic_string[abi:ne200100]<0>(__p, "ExpandTree");
  xgboost::common::Monitor::Start();
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }

  xgboost::tree::Driver<xgboost::tree::CPUExpandEntry>::Driver(v5, *(*(a1 + 8) + 24));
  xgboost::tree::QuantileHistMaker::Builder<float>::InitRoot();
}

void sub_274DB8290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  __p = &a35;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](&__p);
  xgboost::tree::Driver<xgboost::tree::CPUExpandEntry>::~Driver(v46 - 160);
  _Unwind_Resume(a1);
}

uint64_t xgboost::tree::QuantileHistMaker::Builder<float>::UpdatePredictionCache(void *a1, uint64_t a2, uint64_t *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a1[12];
  if (!v3 || (v3 == a2 ? (v6 = a1[11] == 0) : (v6 = 1), v6))
  {
    result = 0;
  }

  else
  {
    v9 = a1[16];
    std::string::basic_string[abi:ne200100]<0>(&v60, "UpdatePredictionCache");
    xgboost::common::Monitor::Start();
    if (v61.__m_.__opaque[7] < 0)
    {
      operator delete(v60.__ptr_);
    }

    v58[0] = a3[5];
    v10 = (*(*a2 + 24))(a2);
    if (v58[0] != *v10)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long long>(v58, v10);
    }

    v51 = a1[7];
    v52 = a1[1];
    v53 = a1[11];
    v11 = *a3;
    v12 = a3[2];
    v13 = a3[4];
    v14 = *(a3 + 12);
    v58[0] = a3[5];
    LODWORD(v54[0]) = 0;
    if (!v58[0])
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(v58, v54);
    }

    if (!v53)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v60);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/./hist/evaluate_splits.h", 387);
      v47 = dmlc::LogMessageFatal::GetEntry(&v60);
      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Check failed: p_last_tree", 25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v60);
    }

    xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((v51 + 152), v58);
    LODWORD(v54[0]) = v14;
    v59.i32[0] = -1;
    if (v14 != -1)
    {
      dmlc::LogCheckFormat<int,int>(v54, &v59);
    }

    v57 = 0xCCCCCCCCCCCCCCCDLL * ((*(v53 + 168) - *(v53 + 160)) >> 2);
    v16 = a1[8];
    v15 = a1[9];
    v49 = a1;
    v50 = v15;
    while (v16 != v15)
    {
      v54[0] = (0xAAAAAAAAAAAAAAABLL * ((*(v16 + 112) - *(v16 + 104)) >> 3));
      if (v54[0] != v57)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(v54, &v57);
      }

      v17 = *(v16 + 104);
      v18 = *(v16 + 112);
      *v54 = 0u;
      *__p = 0u;
      v56 = 0u;
      v19 = v18 - v17;
      if (v19)
      {
        v20 = 0;
        v21 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 3);
        do
        {
          v22 = *(*(v16 + 104) + 24 * v20 + 8) - *(*(v16 + 104) + 24 * v20);
          v23 = v22 >> 3;
          if ((v22 & 0x1FF8) != 0)
          {
            v24 = ((v22 >> 3) >> 10) + 1;
          }

          else
          {
            v24 = (v22 >> 3) >> 10;
          }

          if (v24)
          {
            v25 = 0;
            do
            {
              v26 = v25 + 1024;
              if (v23 >= v25 + 1024)
              {
                v27 = v25 + 1024;
              }

              else
              {
                v27 = v23;
              }

              xgboost::common::BlockedSpace2d::AddBlock(v54, v20, v25, v27);
              v25 = v26;
              --v24;
            }

            while (v24);
          }

          ++v20;
        }

        while (v20 != v21);
        v60.__ptr_ = 0;
        v61.__m_.__sig = 850045863;
        memset(v61.__m_.__opaque, 0, sizeof(v61.__m_.__opaque));
        if (v54[1] != v54[0])
        {
          v28 = 0;
          if (((v54[1] - v54[0]) >> 4) <= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = (v54[1] - v54[0]) >> 4;
          }

          do
          {
            FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(v54, v28);
            Range = xgboost::common::BlockedSpace2d::GetRange(v54, v28);
            v34 = *(v53 + 160) + 20 * FirstDimension;
            if (*(v34 + 12) != -1 && *(v34 + 4) == -1)
            {
              v35 = Range;
              v36 = v32;
              v37 = *(v16 + 104);
              v59 = *(*(v51 + 296) + 24 * FirstDimension);
              v38 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v58, FirstDimension, v52, v59.i64, v59, v33);
              if (v35 < v36)
              {
                v39 = *(v37 + 24 * FirstDimension);
                v40 = v38 * v52[1];
                v41 = v39 + 8 * v36;
                v42 = (v39 + 8 * v35);
                do
                {
                  v43 = *v42 * v11;
                  if (v43 >= v12)
                  {
                    __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
                  }

                  *(v13 + 4 * v43) = v40 + *(v13 + 4 * v43);
                  ++v42;
                }

                while (v42 < v41);
              }
            }

            ++v28;
          }

          while (v28 != v29);
        }
      }

      else
      {
        v60.__ptr_ = 0;
        v61.__m_.__sig = 850045863;
        memset(v61.__m_.__opaque, 0, sizeof(v61.__m_.__opaque));
      }

      dmlc::OMPException::Rethrow(&v60);
      std::mutex::~mutex(&v61);
      std::exception_ptr::~exception_ptr(&v60);
      if (__p[1])
      {
        *&v56 = __p[1];
        operator delete(__p[1]);
      }

      if (v54[0])
      {
        v54[1] = v54[0];
        operator delete(v54[0]);
      }

      v16 += 136;
      v15 = v50;
    }

    v44 = v49[16];
    std::string::basic_string[abi:ne200100]<0>(&v60, "UpdatePredictionCache");
    xgboost::common::Monitor::Stop();
    if (v61.__m_.__opaque[7] < 0)
    {
      operator delete(v60.__ptr_);
    }

    result = 1;
  }

  v45 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_274DB8BB4()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  xgboost::common::Index::~Index(&v1);
  JUMPOUT(0x274DB8CBCLL);
}

void sub_274DB8BC0()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  xgboost::common::Index::~Index(&v1);
  JUMPOUT(0x274DB8CBCLL);
}

void sub_274DB8C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274DB8C70);
}

void sub_274DB8C88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_274DB8C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    JUMPOUT(0x274DB8CB8);
  }

  _Unwind_Resume(a1);
}

void xgboost::tree::QuantileHistMaker::Builder<float>::InitSampling(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 128);
  std::string::basic_string[abi:ne200100]<0>(&__p, "InitSampling");
  xgboost::common::Monitor::Start();
  if (v20.__m_.__opaque[7] < 0)
  {
    operator delete(__p);
  }

  v7 = (*(*a2 + 24))(a2);
  v8 = dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get();
  v9 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v8);
  v10 = *v7;
  v11 = *(*(a1 + 8) + 48);
  __p = 0;
  v20.__m_.__sig = 850045863;
  memset(v20.__m_.__opaque, 0, sizeof(v20.__m_.__opaque));
  if (v10)
  {
    v12 = v11;
    if (v9 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v9;
    }

    v14 = (*a3 + 4);
    do
    {
      if (*v14 < 0.0 || (v13 = (16807 * v13) & 0x7FFFFFFFFFFFFFFFLL, vcvtd_n_f64_u64(v13 - 1, 0x3FuLL) >= v12))
      {
        *(v14 - 1) = 0.0;
        *v14 = 0.0;
      }

      v14 += 2;
      --v10;
    }

    while (v10);
  }

  dmlc::OMPException::Rethrow(&__p);
  v15 = *(a1 + 128);
  std::string::basic_string[abi:ne200100]<0>(&v17, "InitSampling");
  xgboost::common::Monitor::Stop();
  if (v18 < 0)
  {
    operator delete(v17);
  }

  std::mutex::~mutex(&v20);
  std::exception_ptr::~exception_ptr(&__p);
  v16 = *MEMORY[0x277D85DE8];
}

void sub_274DB8E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::exception_ptr a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::~mutex((v21 + 8));
  std::exception_ptr::~exception_ptr(&a16);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::~HistEvaluator(result);
  }

  return result;
}

void xgboost::tree::QuantileHistMaker::Builder<float>::InitRoot(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 160);
  v6 = *v5;
  if (*v5 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      ++v7;
      v6 = v5[5 * (v6 & 0x7FFFFFFF)];
    }

    while (v6 != -1);
  }

  *a4 = 0;
  *(a4 + 1) = v7;
  a4[1] = 0;
  *(a4 + 4) = 0;
  a4[3] = 0;
  a4[4] = 0;
  a4[5] = 0;
  *(a4 + 48) = 0;
  *(a4 + 7) = 0u;
  *(a4 + 9) = 0u;
  v8 = a4[1];
  v21 = *a4;
  v22 = v8;
  LODWORD(v23) = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v9 = *(a4 + 4);
  v27 = *(a4 + 3);
  v28 = v9;
  v29 = a4[10];
  v19 = 0;
  v18 = 0uLL;
  std::vector<xgboost::tree::CPUExpandEntry>::__init_with_size[abi:ne200100]<xgboost::tree::CPUExpandEntry const*,xgboost::tree::CPUExpandEntry const*>(&v18, &v21, v30, 1uLL);
  xgboost::tree::ConstructHistSpace<std::vector<xgboost::tree::HistRowPartitioner>>(&v20, (a1 + 64), &v18);
  *&v17 = &v18;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  v10 = *(a1 + 8);
  v11 = *(v10 + 20);
  v12 = *(v10 + 128);
  LODWORD(v21) = -1;
  HIDWORD(v21) = v11;
  v22 = 0;
  v23 = 0;
  LOBYTE(v24) = 0;
  v25 = v12;
  (*(*a2 + 104))(&v17);
  v16 = v17;
  if (*(&v17 + 1))
  {
    atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::GHistIndexMatrix>::BatchIterator(&v15, 0);
}

void sub_274DB9720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34)
{
  xgboost::common::Index::~Index(&a34);
  v35 = *a10;
  if (*a10)
  {
    *(a11 + 32) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void xgboost::tree::ConstructHistSpace<std::vector<xgboost::tree::HistRowPartitioner>>(xgboost::common::BlockedSpace2d *a1, uint64_t *a2, uint64_t **a3)
{
  std::vector<unsigned long>::vector[abi:ne200100](v34, 0x2E8BA2E8BA2E8BA3 * (a3[1] - *a3));
  v7 = *a2;
  for (i = a2[1]; v7 != i; v7 += 136)
  {
    v8 = *a3;
    v9 = a3[1];
    if (*a3 != v9)
    {
      v10 = 0;
      do
      {
        v25 = *v8;
        v26 = v8[1];
        v27 = *(v8 + 4);
        v29 = 0;
        v30 = 0;
        __p = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v8[3], v8[4], (v8[4] - v8[3]) >> 2);
        v11 = *(v8 + 3);
        v12 = *(v8 + 4);
        v33 = v8[10];
        v31 = v11;
        v32 = v12;
        v13 = *(*(v7 + 104) + 24 * v25 + 8) - *(*(v7 + 104) + 24 * v25);
        if (*(v34[0] + v10) <= (v13 >> 3))
        {
          v14 = v13 >> 3;
        }

        else
        {
          v14 = *(v34[0] + v10);
        }

        *(v34[0] + v10) = v14;
        if (__p)
        {
          v29 = __p;
          operator delete(__p);
        }

        v8 += 11;
        v10 += 8;
      }

      while (v8 != v9);
    }
  }

  v16 = *a3;
  v15 = a3[1];
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  v17 = v15 - v16;
  if (v17)
  {
    v18 = 0;
    v19 = 0x2E8BA2E8BA2E8BA3 * (v17 >> 3);
    do
    {
      v20 = *(v34[0] + v18);
      if (v20)
      {
        v21 = (v20 >> 8) + 1;
      }

      else
      {
        v21 = v20 >> 8;
      }

      if (v21)
      {
        v22 = 0;
        do
        {
          v23 = v22 + 256;
          if (v20 >= v22 + 256)
          {
            v24 = v22 + 256;
          }

          else
          {
            v24 = v20;
          }

          xgboost::common::BlockedSpace2d::AddBlock(a1, v18, v22, v24);
          v22 = v23;
          --v21;
        }

        while (v21);
      }

      ++v18;
    }

    while (v18 != v19);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }
}

void sub_274DB9ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  v23 = *(v21 + 24);
  if (v23)
  {
    *(v21 + 32) = v23;
    operator delete(v23);
  }

  v24 = *v21;
  if (*v21)
  {
    *(v21 + 8) = v24;
    operator delete(v24);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::QuantileHistMaker::Builder<float>::BuildHistogram(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a4 + 1;
  std::vector<xgboost::tree::CPUExpandEntry>::vector[abi:ne200100](v43, 0x2E8BA2E8BA2E8BA3 * ((a4[1] - *a4) >> 3));
  v31 = a2;
  std::vector<xgboost::tree::CPUExpandEntry>::vector[abi:ne200100](v42, 0x2E8BA2E8BA2E8BA3 * ((*v7 - *a4) >> 3));
  v8 = *a4;
  v32 = a4[1];
  if (*a4 != v32)
  {
    v9 = 0;
    do
    {
      v10 = *(a3 + 160);
      v11 = v10 + 20 * *v8;
      v12 = *(v11 + 4);
      LODWORD(v11) = *(v11 + 8);
      v13 = v8[10];
      v14 = v8[8];
      if (v13 >= v14)
      {
        v15 = v11;
      }

      else
      {
        v15 = v12;
      }

      if (v13 >= v14)
      {
        v11 = v12;
      }

      else
      {
        v11 = v11;
      }

      v16 = *(v10 + 20 * v11);
      if (v16 == -1)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        do
        {
          v16 = *(v10 + 20 * (v16 & 0x7FFFFFFF));
          v17 += 0x100000000;
        }

        while (v16 != -1);
      }

      memset(v44 + 7, 0, 32);
      v18 = &v43[0][11 * v9];
      *v18 = v17 | v11;
      v18[1] = 0;
      *(v18 + 4) = 0;
      v20 = v18 + 3;
      v19 = v18[3];
      if (v19)
      {
        v18[4] = v19;
        operator delete(v19);
        *v20 = 0;
        v18[4] = 0;
        v18[5] = 0;
      }

      *v20 = 0;
      v18[4] = 0;
      *(v18 + 48) = 0;
      v18[5] = 0;
      *(v18 + 49) = v44[0];
      *(v18 + 65) = v44[1];
      v18[10] = *(&v44[1] + 15);
      v21 = *(a3 + 160);
      v22 = *(v21 + 20 * v15);
      if (v22 == -1)
      {
        v23 = 0;
      }

      else
      {
        v23 = 0;
        do
        {
          v22 = *(v21 + 20 * (v22 & 0x7FFFFFFF));
          v23 += 0x100000000;
        }

        while (v22 != -1);
      }

      v24 = v23 | v15;
      memset(v44 + 7, 0, 32);
      v25 = v42[0] + 88 * v9;
      *v25 = v24;
      *(v25 + 8) = 0;
      *(v25 + 16) = 0;
      v27 = (v25 + 24);
      v26 = *(v25 + 24);
      if (v26)
      {
        *(v25 + 32) = v26;
        operator delete(v26);
        *v27 = 0;
        *(v25 + 32) = 0;
        *(v25 + 40) = 0;
      }

      *v27 = 0;
      *(v25 + 32) = 0;
      *(v25 + 48) = 0;
      *(v25 + 40) = 0;
      *(v25 + 49) = v44[0];
      *(v25 + 65) = v44[1];
      *(v25 + 80) = *(&v44[1] + 15);
      ++v9;
      v8 += 11;
    }

    while (v8 != v32);
  }

  xgboost::tree::ConstructHistSpace<std::vector<xgboost::tree::HistRowPartitioner>>(v44, (a1 + 64), v43);
  v28 = *(a1 + 8);
  v29 = *(v28 + 20);
  v30 = *(v28 + 128);
  LODWORD(v35) = -1;
  HIDWORD(v35) = v29;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = v30;
  (*(*v31 + 104))(&v40);
  v35 = v40;
  v36 = v41;
  if (v41)
  {
    atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::GHistIndexMatrix>::BatchIterator(&v34, 0);
}

void sub_274DB9F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, char a29)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  xgboost::common::Index::~Index((v29 - 144));
  *(v29 - 144) = &a29;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100]((v29 - 144));
  *(v29 - 144) = v29 - 168;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100]((v29 - 144));
  _Unwind_Resume(a1);
}

void xgboost::tree::HistRowPartitioner::UpdatePosition(void *a1, xgboost::GHistIndexMatrix *this, uint64_t *a3, uint64_t a4)
{
  v217 = *MEMORY[0x277D85DE8];
  v7 = xgboost::GHistIndexMatrix::Transpose(this);
  v205 = a1;
  v206 = this;
  v8 = *(this + 112);
  v203 = v7;
  v204 = a3;
  v11 = a3;
  v10 = *a3;
  v9 = v11[1];
  v12 = 0x2E8BA2E8BA2E8BA3 * ((v9 - v10) >> 3);
  if (v8 == 1)
  {
    if (*(v7 + 156))
    {
      memset(&v212, 0, sizeof(v212));
      xgboost::tree::HistRowPartitioner::FindSplitConditions(v204, a4, v206, &v212);
      *__p = 0u;
      v211 = 0u;
      *v209 = 0u;
      if (v9 == v10)
      {
        v20 = 0;
      }

      else
      {
        v13 = 0;
        do
        {
          v14 = *(a1[13] + 24 * *(*v204 + 88 * v13) + 8) - *(a1[13] + 24 * *(*v204 + 88 * v13));
          v15 = v14 >> 3;
          if ((v14 & 0x3FF8) != 0)
          {
            v16 = ((v14 >> 3) >> 11) + 1;
          }

          else
          {
            v16 = (v14 >> 3) >> 11;
          }

          if (v16)
          {
            v17 = 0;
            do
            {
              v18 = v17 + 2048;
              if (v15 >= v17 + 2048)
              {
                v19 = v17 + 2048;
              }

              else
              {
                v19 = v15;
              }

              xgboost::common::BlockedSpace2d::AddBlock(v209, v13, v17, v19);
              v17 = v18;
              --v16;
            }

            while (v16);
          }

          ++v13;
        }

        while (v13 != v12);
        v20 = (v209[1] - v209[0]) >> 4;
      }

      std::vector<std::pair<double,double>>::resize(a1, v12);
      std::vector<unsigned long>::resize(a1 + 3, v12 + 1);
      v45 = a1[3];
      *v45 = 0;
      if (v12 + 1 >= 2)
      {
        v46 = 0;
        v47 = *v204;
        v48 = a1[13];
        v49 = v45 + 1;
        do
        {
          v50 = *v47;
          v47 += 22;
          v51 = *(v48 + 24 * v50 + 8) - *(v48 + 24 * v50);
          v46 += (v51 >> 3) >> 11;
          if ((v51 & 0x3FF8) != 0)
          {
            ++v46;
          }

          *v49++ = v46;
          --v12;
        }

        while (v12);
      }

      if (a1[9] < v20)
      {
        std::vector<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::resize((a1 + 6), v20);
        a1[9] = v20;
      }

      if (a1[16] != *(v206 + 19))
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(a1 + 16, v206 + 19);
      }

      v215.__ptr_ = 0;
      v216.__m_.__sig = 850045863;
      memset(v216.__m_.__opaque, 0, sizeof(v216.__m_.__opaque));
      if (v209[1] != v209[0])
      {
        v52 = 0;
        v53 = (v209[1] - v209[0]) >> 4;
        if (v53 <= 1)
        {
          v53 = 1;
        }

        v190 = v53;
        while (1)
        {
          FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(v209, v52);
          Range = xgboost::common::BlockedSpace2d::GetRange(v209, v52);
          v56 = *(*v204 + 88 * FirstDimension);
          xgboost::common::PartitionBuilder<2048ul>::AllocateForTask(v205, *(v205[3] + 8 * FirstDimension) + (Range >> 11));
          v57 = Range >> 11;
          v58 = *(v203 + 152);
          if (v58 == 4)
          {
            break;
          }

          if (v58 == 2)
          {
            v63 = *(v205[3] + 8 * FirstDimension) + v57;
            v64 = v205[6];
            if (v63 < (v205[7] - v64) >> 4)
            {
              v196 = v212.__begin_[FirstDimension];
              v65 = *(v205[13] + 24 * v56);
              v66 = *(v64 + 16 * v63);
              xgboost::common::ColumnMatrix::GetColumn<unsigned short,true>(&v213, v203, *(*(a4 + 160) + 20 * v56 + 12) & 0x7FFFFFFF);
            }

            goto LABEL_183;
          }

          if (v58 == 1)
          {
            v59 = *(v205[3] + 8 * FirstDimension) + v57;
            v60 = v205[6];
            if (v59 < (v205[7] - v60) >> 4)
            {
              v195 = v212.__begin_[FirstDimension];
              v61 = *(v205[13] + 24 * v56);
              v62 = *(v60 + 16 * v59);
              xgboost::common::ColumnMatrix::GetColumn<unsigned char,true>(&v213, v203, *(*(a4 + 160) + 20 * v56 + 12) & 0x7FFFFFFF);
            }

            goto LABEL_183;
          }

          Entry = dmlc::LogMessageFatal::GetEntry(&v214);
          dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/./updater_quantile_hist.h", 177);
          v72 = dmlc::LogMessageFatal::GetEntry(&v214);
          v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, "Check failed: false", 19);
          v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, ": ", 2);
          MEMORY[0x277C68E30](v74, *(v203 + 152));
          dmlc::LogMessageFatal::~LogMessageFatal(&v214);
          a1 = v205;
          if (++v52 == v190)
          {
            goto LABEL_80;
          }
        }

        v67 = *(v205[3] + 8 * FirstDimension) + v57;
        v68 = v205[6];
        if (v67 < (v205[7] - v68) >> 4)
        {
          v197 = v212.__begin_[FirstDimension];
          v69 = *(v205[13] + 24 * v56);
          v70 = *(v68 + 16 * v67);
          xgboost::common::ColumnMatrix::GetColumn<unsigned int,true>(&v213, v203, *(*(a4 + 160) + 20 * v56 + 12) & 0x7FFFFFFF);
        }

LABEL_183:
        std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::__throw_out_of_range[abi:ne200100]();
      }

LABEL_80:
      dmlc::OMPException::Rethrow(&v215);
      std::mutex::~mutex(&v216);
      std::exception_ptr::~exception_ptr(&v215);
      xgboost::common::PartitionBuilder<2048ul>::CalculateRowOffsets(a1);
      v215.__ptr_ = 0;
      v216.__m_.__sig = 850045863;
      memset(v216.__m_.__opaque, 0, sizeof(v216.__m_.__opaque));
      if (v209[1] != v209[0])
      {
        v75 = 0;
        if (((v209[1] - v209[0]) >> 4) <= 1)
        {
          v76 = 1;
        }

        else
        {
          v76 = (v209[1] - v209[0]) >> 4;
        }

        do
        {
          v77 = xgboost::common::BlockedSpace2d::GetFirstDimension(v209, v75);
          v78 = xgboost::common::BlockedSpace2d::GetRange(v209, v75);
          xgboost::common::PartitionBuilder<2048ul>::MergeToArray(a1, v77, v78, *(a1[13] + 24 * *(*v204 + 88 * v77)));
          ++v75;
        }

        while (v76 != v75);
      }
    }

    else
    {
      memset(&v212, 0, sizeof(v212));
      xgboost::tree::HistRowPartitioner::FindSplitConditions(v204, a4, v206, &v212);
      *__p = 0u;
      v211 = 0u;
      *v209 = 0u;
      if (v9 == v10)
      {
        v36 = 0;
      }

      else
      {
        v29 = 0;
        do
        {
          v30 = *(a1[13] + 24 * *(*v204 + 88 * v29) + 8) - *(a1[13] + 24 * *(*v204 + 88 * v29));
          v31 = v30 >> 3;
          if ((v30 & 0x3FF8) != 0)
          {
            v32 = ((v30 >> 3) >> 11) + 1;
          }

          else
          {
            v32 = (v30 >> 3) >> 11;
          }

          if (v32)
          {
            v33 = 0;
            do
            {
              v34 = v33 + 2048;
              if (v31 >= v33 + 2048)
              {
                v35 = v33 + 2048;
              }

              else
              {
                v35 = v31;
              }

              xgboost::common::BlockedSpace2d::AddBlock(v209, v29, v33, v35);
              v33 = v34;
              --v32;
            }

            while (v32);
          }

          ++v29;
        }

        while (v29 != v12);
        v36 = (v209[1] - v209[0]) >> 4;
      }

      std::vector<std::pair<double,double>>::resize(a1, v12);
      std::vector<unsigned long>::resize(a1 + 3, v12 + 1);
      v117 = a1[3];
      *v117 = 0;
      if (v12 + 1 >= 2)
      {
        v118 = 0;
        v119 = *v204;
        v120 = a1[13];
        v121 = v117 + 1;
        do
        {
          v122 = *v119;
          v119 += 22;
          v123 = *(v120 + 24 * v122 + 8) - *(v120 + 24 * v122);
          v118 += (v123 >> 3) >> 11;
          if ((v123 & 0x3FF8) != 0)
          {
            ++v118;
          }

          *v121++ = v118;
          --v12;
        }

        while (v12);
      }

      if (a1[9] < v36)
      {
        std::vector<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::resize((a1 + 6), v36);
        a1[9] = v36;
      }

      if (a1[16] != *(v206 + 19))
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(a1 + 16, v206 + 19);
      }

      v215.__ptr_ = 0;
      v216.__m_.__sig = 850045863;
      memset(v216.__m_.__opaque, 0, sizeof(v216.__m_.__opaque));
      if (v209[1] != v209[0])
      {
        v124 = 0;
        v125 = (v209[1] - v209[0]) >> 4;
        if (v125 <= 1)
        {
          v125 = 1;
        }

        v191 = v125;
        while (1)
        {
          v192 = v124;
          v126 = xgboost::common::BlockedSpace2d::GetFirstDimension(v209, v124);
          v127 = xgboost::common::BlockedSpace2d::GetRange(v209, v192);
          v128 = *(*v204 + 88 * v126);
          xgboost::common::PartitionBuilder<2048ul>::AllocateForTask(v205, *(v205[3] + 8 * v126) + (v127 >> 11));
          v129 = v127 >> 11;
          v130 = *(v203 + 152);
          if (v130 == 4)
          {
            break;
          }

          if (v130 == 2)
          {
            v135 = *(v205[3] + 8 * v126) + v129;
            v136 = v205[6];
            if (v135 < (v205[7] - v136) >> 4)
            {
              v199 = v212.__begin_[v126];
              v137 = *(v205[13] + 24 * v128);
              v138 = *(v136 + 16 * v135);
              xgboost::common::ColumnMatrix::GetColumn<unsigned short,false>(&v213, v203, *(*(a4 + 160) + 20 * v128 + 12) & 0x7FFFFFFF);
            }

            goto LABEL_185;
          }

          if (v130 == 1)
          {
            v131 = *(v205[3] + 8 * v126) + v129;
            v132 = v205[6];
            if (v131 < (v205[7] - v132) >> 4)
            {
              v198 = v212.__begin_[v126];
              v133 = *(v205[13] + 24 * v128);
              v134 = *(v132 + 16 * v131);
              xgboost::common::ColumnMatrix::GetColumn<unsigned char,false>(&v213, v203, *(*(a4 + 160) + 20 * v128 + 12) & 0x7FFFFFFF);
            }

            goto LABEL_185;
          }

          v143 = dmlc::LogMessageFatal::GetEntry(&v214);
          dmlc::LogMessageFatal::Entry::Init(v143, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/./updater_quantile_hist.h", 177);
          v144 = dmlc::LogMessageFatal::GetEntry(&v214);
          v145 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v144, "Check failed: false", 19);
          v146 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v145, ": ", 2);
          MEMORY[0x277C68E30](v146, *(v203 + 152));
          dmlc::LogMessageFatal::~LogMessageFatal(&v214);
          a1 = v205;
          v124 = v192 + 1;
          if (v192 + 1 == v191)
          {
            goto LABEL_140;
          }
        }

        v139 = *(v205[3] + 8 * v126) + v129;
        v140 = v205[6];
        if (v139 < (v205[7] - v140) >> 4)
        {
          v200 = v212.__begin_[v126];
          v141 = *(v205[13] + 24 * v128);
          v142 = *(v140 + 16 * v139);
          xgboost::common::ColumnMatrix::GetColumn<unsigned int,false>(&v213, v203, *(*(a4 + 160) + 20 * v128 + 12) & 0x7FFFFFFF);
        }

LABEL_185:
        std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::__throw_out_of_range[abi:ne200100]();
      }

LABEL_140:
      dmlc::OMPException::Rethrow(&v215);
      std::mutex::~mutex(&v216);
      std::exception_ptr::~exception_ptr(&v215);
      xgboost::common::PartitionBuilder<2048ul>::CalculateRowOffsets(a1);
      v215.__ptr_ = 0;
      v216.__m_.__sig = 850045863;
      memset(v216.__m_.__opaque, 0, sizeof(v216.__m_.__opaque));
      if (v209[1] != v209[0])
      {
        v147 = 0;
        if (((v209[1] - v209[0]) >> 4) <= 1)
        {
          v148 = 1;
        }

        else
        {
          v148 = (v209[1] - v209[0]) >> 4;
        }

        do
        {
          v149 = xgboost::common::BlockedSpace2d::GetFirstDimension(v209, v147);
          v150 = xgboost::common::BlockedSpace2d::GetRange(v209, v147);
          xgboost::common::PartitionBuilder<2048ul>::MergeToArray(a1, v149, v150, *(a1[13] + 24 * *(*v204 + 88 * v149)));
          ++v147;
        }

        while (v148 != v147);
      }
    }
  }

  else if (*(v7 + 156))
  {
    memset(&v212, 0, sizeof(v212));
    xgboost::tree::HistRowPartitioner::FindSplitConditions(v204, a4, v206, &v212);
    *__p = 0u;
    v211 = 0u;
    *v209 = 0u;
    if (v9 == v10)
    {
      v28 = 0;
    }

    else
    {
      v21 = 0;
      do
      {
        v22 = *(a1[13] + 24 * *(*v204 + 88 * v21) + 8) - *(a1[13] + 24 * *(*v204 + 88 * v21));
        v23 = v22 >> 3;
        if ((v22 & 0x3FF8) != 0)
        {
          v24 = ((v22 >> 3) >> 11) + 1;
        }

        else
        {
          v24 = (v22 >> 3) >> 11;
        }

        if (v24)
        {
          v25 = 0;
          do
          {
            v26 = v25 + 2048;
            if (v23 >= v25 + 2048)
            {
              v27 = v25 + 2048;
            }

            else
            {
              v27 = v23;
            }

            xgboost::common::BlockedSpace2d::AddBlock(v209, v21, v25, v27);
            v25 = v26;
            --v24;
          }

          while (v24);
        }

        ++v21;
      }

      while (v21 != v12);
      v28 = (v209[1] - v209[0]) >> 4;
    }

    std::vector<std::pair<double,double>>::resize(a1, v12);
    std::vector<unsigned long>::resize(a1 + 3, v12 + 1);
    v79 = a1[3];
    *v79 = 0;
    if (v12 + 1 >= 2)
    {
      v80 = 0;
      v81 = *v204;
      v82 = a1[13];
      v83 = v79 + 1;
      do
      {
        v84 = *v81;
        v81 += 22;
        v85 = *(v82 + 24 * v84 + 8) - *(v82 + 24 * v84);
        v80 += (v85 >> 3) >> 11;
        if ((v85 & 0x3FF8) != 0)
        {
          ++v80;
        }

        *v83++ = v80;
        --v12;
      }

      while (v12);
    }

    if (a1[9] < v28)
    {
      std::vector<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::resize((a1 + 6), v28);
      a1[9] = v28;
    }

    v86 = *(v206 + 19);
    v207 = (v206 + 152);
    if (a1[16] != v86)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(a1 + 16, v207);
    }

    v215.__ptr_ = 0;
    v216.__m_.__sig = 850045863;
    memset(v216.__m_.__opaque, 0, sizeof(v216.__m_.__opaque));
    if (v209[1] != v209[0])
    {
      v87 = 0;
      v88 = (v209[1] - v209[0]) >> 4;
      if (v88 <= 1)
      {
        v88 = 1;
      }

      v193 = v88;
      while (1)
      {
        v89 = xgboost::common::BlockedSpace2d::GetFirstDimension(v209, v87);
        v90 = xgboost::common::BlockedSpace2d::GetRange(v209, v87);
        v91 = *(*v204 + 88 * v89);
        xgboost::common::PartitionBuilder<2048ul>::AllocateForTask(v205, *(v205[3] + 8 * v89) + (v90 >> 11));
        v92 = v90 >> 11;
        v93 = *(v203 + 152);
        if (v93 == 4)
        {
          break;
        }

        if (v93 == 2)
        {
          v99 = *(v205[3] + 8 * v89) + v92;
          v100 = v205[6];
          if (v99 < (v205[7] - v100) >> 4)
          {
            v101 = v212.__begin_[v89];
            v102 = *(v205[13] + 24 * v91);
            v103 = *(v100 + 16 * v99);
            xgboost::common::ColumnMatrix::GetColumn<unsigned short,true>(&v213, v203, *(*(a4 + 160) + 20 * v91 + 12) & 0x7FFFFFFF);
          }

          goto LABEL_182;
        }

        if (v93 == 1)
        {
          v94 = *(v205[3] + 8 * v89) + v92;
          v95 = v205[6];
          if (v94 < (v205[7] - v95) >> 4)
          {
            v96 = v212.__begin_[v89];
            v97 = *(v205[13] + 24 * v91);
            v98 = *(v95 + 16 * v94);
            xgboost::common::ColumnMatrix::GetColumn<unsigned char,true>(&v213, v203, *(*(a4 + 160) + 20 * v91 + 12) & 0x7FFFFFFF);
          }

          goto LABEL_182;
        }

        v109 = dmlc::LogMessageFatal::GetEntry(&v214);
        dmlc::LogMessageFatal::Entry::Init(v109, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/./updater_quantile_hist.h", 177);
        v110 = dmlc::LogMessageFatal::GetEntry(&v214);
        v111 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v110, "Check failed: false", 19);
        v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, ": ", 2);
        MEMORY[0x277C68E30](v112, *(v203 + 152));
        dmlc::LogMessageFatal::~LogMessageFatal(&v214);
        a1 = v205;
        if (++v87 == v193)
        {
          goto LABEL_110;
        }
      }

      v104 = *(v205[3] + 8 * v89) + v92;
      v105 = v205[6];
      if (v104 < (v205[7] - v105) >> 4)
      {
        v106 = v212.__begin_[v89];
        v107 = *(v205[13] + 24 * v91);
        v108 = *(v105 + 16 * v104);
        xgboost::common::ColumnMatrix::GetColumn<unsigned int,true>(&v213, v203, *(*(a4 + 160) + 20 * v91 + 12) & 0x7FFFFFFF);
      }

LABEL_182:
      std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::__throw_out_of_range[abi:ne200100]();
    }

LABEL_110:
    dmlc::OMPException::Rethrow(&v215);
    std::mutex::~mutex(&v216);
    std::exception_ptr::~exception_ptr(&v215);
    xgboost::common::PartitionBuilder<2048ul>::CalculateRowOffsets(a1);
    v215.__ptr_ = 0;
    v216.__m_.__sig = 850045863;
    memset(v216.__m_.__opaque, 0, sizeof(v216.__m_.__opaque));
    if (v209[1] != v209[0])
    {
      v113 = 0;
      if (((v209[1] - v209[0]) >> 4) <= 1)
      {
        v114 = 1;
      }

      else
      {
        v114 = (v209[1] - v209[0]) >> 4;
      }

      do
      {
        v115 = xgboost::common::BlockedSpace2d::GetFirstDimension(v209, v113);
        v116 = xgboost::common::BlockedSpace2d::GetRange(v209, v113);
        xgboost::common::PartitionBuilder<2048ul>::MergeToArray(a1, v115, v116, *(a1[13] + 24 * *(*v204 + 88 * v115)));
        ++v113;
      }

      while (v114 != v113);
    }
  }

  else
  {
    memset(&v212, 0, sizeof(v212));
    xgboost::tree::HistRowPartitioner::FindSplitConditions(v204, a4, v206, &v212);
    *__p = 0u;
    v211 = 0u;
    *v209 = 0u;
    if (v9 == v10)
    {
      v44 = 0;
    }

    else
    {
      v37 = 0;
      do
      {
        v38 = *(a1[13] + 24 * *(*v204 + 88 * v37) + 8) - *(a1[13] + 24 * *(*v204 + 88 * v37));
        v39 = v38 >> 3;
        if ((v38 & 0x3FF8) != 0)
        {
          v40 = ((v38 >> 3) >> 11) + 1;
        }

        else
        {
          v40 = (v38 >> 3) >> 11;
        }

        if (v40)
        {
          v41 = 0;
          do
          {
            v42 = v41 + 2048;
            if (v39 >= v41 + 2048)
            {
              v43 = v41 + 2048;
            }

            else
            {
              v43 = v39;
            }

            xgboost::common::BlockedSpace2d::AddBlock(v209, v37, v41, v43);
            v41 = v42;
            --v40;
          }

          while (v40);
        }

        ++v37;
      }

      while (v37 != v12);
      v44 = (v209[1] - v209[0]) >> 4;
    }

    std::vector<std::pair<double,double>>::resize(a1, v12);
    std::vector<unsigned long>::resize(a1 + 3, v12 + 1);
    v151 = a1[3];
    *v151 = 0;
    if (v12 + 1 >= 2)
    {
      v152 = 0;
      v153 = *v204;
      v154 = a1[13];
      v155 = v151 + 1;
      do
      {
        v156 = *v153;
        v153 += 22;
        v157 = *(v154 + 24 * v156 + 8) - *(v154 + 24 * v156);
        v152 += (v157 >> 3) >> 11;
        if ((v157 & 0x3FF8) != 0)
        {
          ++v152;
        }

        *v155++ = v152;
        --v12;
      }

      while (v12);
    }

    if (a1[9] < v44)
    {
      std::vector<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::resize((a1 + 6), v44);
      a1[9] = v44;
    }

    v158 = *(v206 + 19);
    v208 = (v206 + 152);
    if (a1[16] != v158)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(a1 + 16, v208);
    }

    v215.__ptr_ = 0;
    v216.__m_.__sig = 850045863;
    memset(v216.__m_.__opaque, 0, sizeof(v216.__m_.__opaque));
    if (v209[1] != v209[0])
    {
      v159 = 0;
      v160 = (v209[1] - v209[0]) >> 4;
      if (v160 <= 1)
      {
        v160 = 1;
      }

      v194 = v160;
      while (1)
      {
        v201 = v159;
        v161 = xgboost::common::BlockedSpace2d::GetFirstDimension(v209, v159);
        v162 = xgboost::common::BlockedSpace2d::GetRange(v209, v201);
        v163 = *(*v204 + 88 * v161);
        xgboost::common::PartitionBuilder<2048ul>::AllocateForTask(v205, *(v205[3] + 8 * v161) + (v162 >> 11));
        v164 = v162 >> 11;
        v165 = *(v203 + 152);
        if (v165 == 4)
        {
          break;
        }

        if (v165 == 2)
        {
          v171 = *(v205[3] + 8 * v161) + v164;
          v172 = v205[6];
          if (v171 < (v205[7] - v172) >> 4)
          {
            v173 = v212.__begin_[v161];
            v174 = *(v205[13] + 24 * v163);
            v175 = *(v172 + 16 * v171);
            xgboost::common::ColumnMatrix::GetColumn<unsigned short,false>(&v213, v203, *(*(a4 + 160) + 20 * v163 + 12) & 0x7FFFFFFF);
          }

          goto LABEL_184;
        }

        if (v165 == 1)
        {
          v166 = *(v205[3] + 8 * v161) + v164;
          v167 = v205[6];
          if (v166 < (v205[7] - v167) >> 4)
          {
            v168 = v212.__begin_[v161];
            v169 = *(v205[13] + 24 * v163);
            v170 = *(v167 + 16 * v166);
            xgboost::common::ColumnMatrix::GetColumn<unsigned char,false>(&v213, v203, *(*(a4 + 160) + 20 * v163 + 12) & 0x7FFFFFFF);
          }

          goto LABEL_184;
        }

        v181 = dmlc::LogMessageFatal::GetEntry(&v214);
        dmlc::LogMessageFatal::Entry::Init(v181, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/./updater_quantile_hist.h", 177);
        v182 = dmlc::LogMessageFatal::GetEntry(&v214);
        v183 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v182, "Check failed: false", 19);
        v184 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v183, ": ", 2);
        MEMORY[0x277C68E30](v184, *(v203 + 152));
        dmlc::LogMessageFatal::~LogMessageFatal(&v214);
        a1 = v205;
        v159 = v201 + 1;
        if (v201 + 1 == v194)
        {
          goto LABEL_170;
        }
      }

      v176 = *(v205[3] + 8 * v161) + v164;
      v177 = v205[6];
      if (v176 < (v205[7] - v177) >> 4)
      {
        v178 = v212.__begin_[v161];
        v179 = *(v205[13] + 24 * v163);
        v180 = *(v177 + 16 * v176);
        xgboost::common::ColumnMatrix::GetColumn<unsigned int,false>(&v213, v203, *(*(a4 + 160) + 20 * v163 + 12) & 0x7FFFFFFF);
      }

LABEL_184:
      std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::__throw_out_of_range[abi:ne200100]();
    }

LABEL_170:
    dmlc::OMPException::Rethrow(&v215);
    std::mutex::~mutex(&v216);
    std::exception_ptr::~exception_ptr(&v215);
    xgboost::common::PartitionBuilder<2048ul>::CalculateRowOffsets(a1);
    v215.__ptr_ = 0;
    v216.__m_.__sig = 850045863;
    memset(v216.__m_.__opaque, 0, sizeof(v216.__m_.__opaque));
    if (v209[1] != v209[0])
    {
      v185 = 0;
      if (((v209[1] - v209[0]) >> 4) <= 1)
      {
        v186 = 1;
      }

      else
      {
        v186 = (v209[1] - v209[0]) >> 4;
      }

      do
      {
        v187 = xgboost::common::BlockedSpace2d::GetFirstDimension(v209, v185);
        v188 = xgboost::common::BlockedSpace2d::GetRange(v209, v185);
        xgboost::common::PartitionBuilder<2048ul>::MergeToArray(a1, v187, v188, *(a1[13] + 24 * *(*v204 + 88 * v187)));
        ++v185;
      }

      while (v186 != v185);
    }
  }

  dmlc::OMPException::Rethrow(&v215);
  std::mutex::~mutex(&v216);
  std::exception_ptr::~exception_ptr(&v215);
  xgboost::tree::HistRowPartitioner::AddSplitsToRowSet(a1, v204, a4);
  if (__p[1])
  {
    *&v211 = __p[1];
    operator delete(__p[1]);
  }

  if (v209[0])
  {
    v209[1] = v209[0];
    operator delete(v209[0]);
  }

  if (v212.__begin_)
  {
    v212.__end_ = v212.__begin_;
    operator delete(v212.__begin_);
  }

  v189 = *MEMORY[0x277D85DE8];
}

void sub_274DBEE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  xgboost::common::Index::~Index(&a25);
  if (__p)
  {
    a33 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::tree::QuantileHistMaker::Builder<double>::Builder(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  _ZNSt3__115allocate_sharedB8ne200100IN7xgboost6common13ColumnSamplerENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_274DBFC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<xgboost::common::Monitor>::~unique_ptr[abi:ne200100]((v15 + 128));
  std::unique_ptr<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>>::~unique_ptr[abi:ne200100]((v16 + 72));
  std::vector<xgboost::tree::ApproxRowPartitioner>::__destroy_vector::operator()[abi:ne200100](&a15);
  std::unique_ptr<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>>::reset[abi:ne200100]((v16 + 24), 0);
  v18 = *v16;
  if (*v16)
  {
    *(v15 + 40) = v18;
    operator delete(v18);
  }

  v19 = *(v15 + 24);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

void xgboost::tree::QuantileHistMaker::Builder<double>::Builder()
{
  xgboost::tree::QuantileHistMaker::Builder<double>::Builder();
}

{
    ;
  }
}

void xgboost::tree::QuantileHistMaker::Builder<double>::UpdateTree(void *a1, char ***a2)
{
  v4 = a1[16];
  std::string::basic_string[abi:ne200100]<0>(&__p, "UpdateTree");
  xgboost::common::Monitor::Start();
  if (v8 < 0)
  {
    operator delete(__p);
  }

  v5 = *a2;
  if (*a1 == 1)
  {
    v6 = *a2;
  }

  else
  {
    std::vector<xgboost::detail::GradientPairInternal<float>>::resize(a1 + 4, (v5[1] - *v5) >> 3);
    if (a1 + 4 != v5)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__assign_with_size[abi:ne200100]<xgboost::detail::GradientPairInternal<float>*,xgboost::detail::GradientPairInternal<float>*>(a1 + 4, *v5, v5[1], (v5[1] - *v5) >> 3);
    }
  }

  xgboost::tree::QuantileHistMaker::Builder<double>::InitData();
}

void sub_274DBFE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::QuantileHistMaker::Builder<double>::InitData(void *a1, uint64_t a2)
{
  v3 = a1[16];
  std::string::basic_string[abi:ne200100]<0>(&__p, "InitData");
  xgboost::common::Monitor::Start();
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  (**a2)(a2);
  v18 = 0;
  v5 = a1[8];
  for (i = a1[9]; i != v5; std::allocator_traits<std::allocator<xgboost::tree::ApproxRowPartitioner>>::destroy[abi:ne200100]<xgboost::tree::ApproxRowPartitioner,0>(i))
  {
    i -= 136;
  }

  a1[9] = v5;
  v6 = a1[1];
  v7 = *(v6 + 20);
  v8 = *(v6 + 128);
  LODWORD(__p) = -1;
  HIDWORD(__p) = v7;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = v8;
  (*(*a2 + 104))(&v16);
  __p = v16;
  v12 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::GHistIndexMatrix>::BatchIterator(&v10, 0);
}

void sub_274DC0320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  v30 = __p;
  __p = 0;
  if (v30)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&__p, v30);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::QuantileHistMaker::Builder<double>::ExpandTree(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 128);
  std::string::basic_string[abi:ne200100]<0>(__p, "ExpandTree");
  xgboost::common::Monitor::Start();
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }

  xgboost::tree::Driver<xgboost::tree::CPUExpandEntry>::Driver(v5, *(*(a1 + 8) + 24));
  xgboost::tree::QuantileHistMaker::Builder<double>::InitRoot();
}

void sub_274DC0A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  __p = &a35;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](&__p);
  xgboost::tree::Driver<xgboost::tree::CPUExpandEntry>::~Driver(v46 - 160);
  _Unwind_Resume(a1);
}

uint64_t xgboost::tree::QuantileHistMaker::Builder<double>::UpdatePredictionCache(void *a1, uint64_t a2, uint64_t *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a1[12];
  if (!v3 || (v3 == a2 ? (v6 = a1[11] == 0) : (v6 = 1), v6))
  {
    result = 0;
  }

  else
  {
    v9 = a1[16];
    std::string::basic_string[abi:ne200100]<0>(&v60, "UpdatePredictionCache");
    xgboost::common::Monitor::Start();
    if (v61.__m_.__opaque[7] < 0)
    {
      operator delete(v60.__ptr_);
    }

    v58[0] = a3[5];
    v10 = (*(*a2 + 24))(a2);
    if (v58[0] != *v10)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long long>(v58, v10);
    }

    v51 = a1[7];
    v52 = a1[1];
    v53 = a1[11];
    v11 = *a3;
    v12 = a3[2];
    v13 = a3[4];
    v14 = *(a3 + 12);
    v58[0] = a3[5];
    LODWORD(v54[0]) = 0;
    if (!v58[0])
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(v58, v54);
    }

    if (!v53)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v60);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/./hist/evaluate_splits.h", 387);
      v47 = dmlc::LogMessageFatal::GetEntry(&v60);
      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Check failed: p_last_tree", 25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v60);
    }

    xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((v51 + 152), v58);
    LODWORD(v54[0]) = v14;
    v59.i32[0] = -1;
    if (v14 != -1)
    {
      dmlc::LogCheckFormat<int,int>(v54, &v59);
    }

    v57 = 0xCCCCCCCCCCCCCCCDLL * ((*(v53 + 168) - *(v53 + 160)) >> 2);
    v16 = a1[8];
    v15 = a1[9];
    v49 = a1;
    v50 = v15;
    while (v16 != v15)
    {
      v54[0] = (0xAAAAAAAAAAAAAAABLL * ((*(v16 + 112) - *(v16 + 104)) >> 3));
      if (v54[0] != v57)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(v54, &v57);
      }

      v17 = *(v16 + 104);
      v18 = *(v16 + 112);
      *v54 = 0u;
      *__p = 0u;
      v56 = 0u;
      v19 = v18 - v17;
      if (v19)
      {
        v20 = 0;
        v21 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 3);
        do
        {
          v22 = *(*(v16 + 104) + 24 * v20 + 8) - *(*(v16 + 104) + 24 * v20);
          v23 = v22 >> 3;
          if ((v22 & 0x1FF8) != 0)
          {
            v24 = ((v22 >> 3) >> 10) + 1;
          }

          else
          {
            v24 = (v22 >> 3) >> 10;
          }

          if (v24)
          {
            v25 = 0;
            do
            {
              v26 = v25 + 1024;
              if (v23 >= v25 + 1024)
              {
                v27 = v25 + 1024;
              }

              else
              {
                v27 = v23;
              }

              xgboost::common::BlockedSpace2d::AddBlock(v54, v20, v25, v27);
              v25 = v26;
              --v24;
            }

            while (v24);
          }

          ++v20;
        }

        while (v20 != v21);
        v60.__ptr_ = 0;
        v61.__m_.__sig = 850045863;
        memset(v61.__m_.__opaque, 0, sizeof(v61.__m_.__opaque));
        if (v54[1] != v54[0])
        {
          v28 = 0;
          if (((v54[1] - v54[0]) >> 4) <= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = (v54[1] - v54[0]) >> 4;
          }

          do
          {
            FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(v54, v28);
            Range = xgboost::common::BlockedSpace2d::GetRange(v54, v28);
            v34 = *(v53 + 160) + 20 * FirstDimension;
            if (*(v34 + 12) != -1 && *(v34 + 4) == -1)
            {
              v35 = Range;
              v36 = v32;
              v37 = *(v16 + 104);
              v59 = *(*(v51 + 296) + 24 * FirstDimension);
              v38 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v58, FirstDimension, v52, v59.i64, v59, v33);
              if (v35 < v36)
              {
                v39 = *(v37 + 24 * FirstDimension);
                v40 = v38 * v52[1];
                v41 = v39 + 8 * v36;
                v42 = (v39 + 8 * v35);
                do
                {
                  v43 = *v42 * v11;
                  if (v43 >= v12)
                  {
                    __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
                  }

                  *(v13 + 4 * v43) = v40 + *(v13 + 4 * v43);
                  ++v42;
                }

                while (v42 < v41);
              }
            }

            ++v28;
          }

          while (v28 != v29);
        }
      }

      else
      {
        v60.__ptr_ = 0;
        v61.__m_.__sig = 850045863;
        memset(v61.__m_.__opaque, 0, sizeof(v61.__m_.__opaque));
      }

      dmlc::OMPException::Rethrow(&v60);
      std::mutex::~mutex(&v61);
      std::exception_ptr::~exception_ptr(&v60);
      if (__p[1])
      {
        *&v56 = __p[1];
        operator delete(__p[1]);
      }

      if (v54[0])
      {
        v54[1] = v54[0];
        operator delete(v54[0]);
      }

      v16 += 136;
      v15 = v50;
    }

    v44 = v49[16];
    std::string::basic_string[abi:ne200100]<0>(&v60, "UpdatePredictionCache");
    xgboost::common::Monitor::Stop();
    if (v61.__m_.__opaque[7] < 0)
    {
      operator delete(v60.__ptr_);
    }

    result = 1;
  }

  v45 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_274DC132C()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  xgboost::common::Index::~Index(&v1);
  JUMPOUT(0x274DC1434);
}

void sub_274DC1338()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  xgboost::common::Index::~Index(&v1);
  JUMPOUT(0x274DC1434);
}

void sub_274DC13DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274DC13E8);
}

void sub_274DC1400(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_274DC1410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    JUMPOUT(0x274DC1430);
  }

  _Unwind_Resume(a1);
}

void xgboost::tree::QuantileHistMaker::Builder<double>::InitSampling(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 128);
  std::string::basic_string[abi:ne200100]<0>(&__p, "InitSampling");
  xgboost::common::Monitor::Start();
  if (v20.__m_.__opaque[7] < 0)
  {
    operator delete(__p);
  }

  v7 = (*(*a2 + 24))(a2);
  v8 = dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get();
  v9 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v8);
  v10 = *v7;
  v11 = *(*(a1 + 8) + 48);
  __p = 0;
  v20.__m_.__sig = 850045863;
  memset(v20.__m_.__opaque, 0, sizeof(v20.__m_.__opaque));
  if (v10)
  {
    v12 = v11;
    if (v9 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v9;
    }

    v14 = (*a3 + 4);
    do
    {
      if (*v14 < 0.0 || (v13 = (16807 * v13) & 0x7FFFFFFFFFFFFFFFLL, vcvtd_n_f64_u64(v13 - 1, 0x3FuLL) >= v12))
      {
        *(v14 - 1) = 0.0;
        *v14 = 0.0;
      }

      v14 += 2;
      --v10;
    }

    while (v10);
  }

  dmlc::OMPException::Rethrow(&__p);
  v15 = *(a1 + 128);
  std::string::basic_string[abi:ne200100]<0>(&v17, "InitSampling");
  xgboost::common::Monitor::Stop();
  if (v18 < 0)
  {
    operator delete(v17);
  }

  std::mutex::~mutex(&v20);
  std::exception_ptr::~exception_ptr(&__p);
  v16 = *MEMORY[0x277D85DE8];
}

void sub_274DC15C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::exception_ptr a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::~mutex((v21 + 8));
  std::exception_ptr::~exception_ptr(&a16);
  _Unwind_Resume(a1);
}

void xgboost::tree::QuantileHistMaker::Builder<double>::InitRoot(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 160);
  v6 = *v5;
  if (*v5 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      ++v7;
      v6 = v5[5 * (v6 & 0x7FFFFFFF)];
    }

    while (v6 != -1);
  }

  *a4 = 0;
  *(a4 + 1) = v7;
  a4[1] = 0;
  *(a4 + 4) = 0;
  a4[3] = 0;
  a4[4] = 0;
  a4[5] = 0;
  *(a4 + 48) = 0;
  *(a4 + 7) = 0u;
  *(a4 + 9) = 0u;
  v8 = a4[1];
  v21 = *a4;
  v22 = v8;
  LODWORD(v23) = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v9 = *(a4 + 4);
  v27 = *(a4 + 3);
  v28 = v9;
  v29 = a4[10];
  v19 = 0;
  v18 = 0uLL;
  std::vector<xgboost::tree::CPUExpandEntry>::__init_with_size[abi:ne200100]<xgboost::tree::CPUExpandEntry const*,xgboost::tree::CPUExpandEntry const*>(&v18, &v21, v30, 1uLL);
  xgboost::tree::ConstructHistSpace<std::vector<xgboost::tree::HistRowPartitioner>>(&v20, (a1 + 64), &v18);
  *&v17 = &v18;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  v10 = *(a1 + 8);
  v11 = *(v10 + 20);
  v12 = *(v10 + 128);
  LODWORD(v21) = -1;
  HIDWORD(v21) = v11;
  v22 = 0;
  v23 = 0;
  LOBYTE(v24) = 0;
  v25 = v12;
  (*(*a2 + 104))(&v17);
  v16 = v17;
  if (*(&v17 + 1))
  {
    atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::GHistIndexMatrix>::BatchIterator(&v15, 0);
}

void sub_274DC1E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34)
{
  xgboost::common::Index::~Index(&a34);
  v35 = *a10;
  if (*a10)
  {
    *(a11 + 32) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void xgboost::tree::QuantileHistMaker::Builder<double>::BuildHistogram(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a4 + 1;
  std::vector<xgboost::tree::CPUExpandEntry>::vector[abi:ne200100](v43, 0x2E8BA2E8BA2E8BA3 * ((a4[1] - *a4) >> 3));
  v31 = a2;
  std::vector<xgboost::tree::CPUExpandEntry>::vector[abi:ne200100](v42, 0x2E8BA2E8BA2E8BA3 * ((*v7 - *a4) >> 3));
  v8 = *a4;
  v32 = a4[1];
  if (*a4 != v32)
  {
    v9 = 0;
    do
    {
      v10 = *(a3 + 160);
      v11 = v10 + 20 * *v8;
      v12 = *(v11 + 4);
      LODWORD(v11) = *(v11 + 8);
      v13 = v8[10];
      v14 = v8[8];
      if (v13 >= v14)
      {
        v15 = v11;
      }

      else
      {
        v15 = v12;
      }

      if (v13 >= v14)
      {
        v11 = v12;
      }

      else
      {
        v11 = v11;
      }

      v16 = *(v10 + 20 * v11);
      if (v16 == -1)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        do
        {
          v16 = *(v10 + 20 * (v16 & 0x7FFFFFFF));
          v17 += 0x100000000;
        }

        while (v16 != -1);
      }

      memset(v44 + 7, 0, 32);
      v18 = &v43[0][11 * v9];
      *v18 = v17 | v11;
      v18[1] = 0;
      *(v18 + 4) = 0;
      v20 = v18 + 3;
      v19 = v18[3];
      if (v19)
      {
        v18[4] = v19;
        operator delete(v19);
        *v20 = 0;
        v18[4] = 0;
        v18[5] = 0;
      }

      *v20 = 0;
      v18[4] = 0;
      *(v18 + 48) = 0;
      v18[5] = 0;
      *(v18 + 49) = v44[0];
      *(v18 + 65) = v44[1];
      v18[10] = *(&v44[1] + 15);
      v21 = *(a3 + 160);
      v22 = *(v21 + 20 * v15);
      if (v22 == -1)
      {
        v23 = 0;
      }

      else
      {
        v23 = 0;
        do
        {
          v22 = *(v21 + 20 * (v22 & 0x7FFFFFFF));
          v23 += 0x100000000;
        }

        while (v22 != -1);
      }

      v24 = v23 | v15;
      memset(v44 + 7, 0, 32);
      v25 = v42[0] + 88 * v9;
      *v25 = v24;
      *(v25 + 8) = 0;
      *(v25 + 16) = 0;
      v27 = (v25 + 24);
      v26 = *(v25 + 24);
      if (v26)
      {
        *(v25 + 32) = v26;
        operator delete(v26);
        *v27 = 0;
        *(v25 + 32) = 0;
        *(v25 + 40) = 0;
      }

      *v27 = 0;
      *(v25 + 32) = 0;
      *(v25 + 48) = 0;
      *(v25 + 40) = 0;
      *(v25 + 49) = v44[0];
      *(v25 + 65) = v44[1];
      *(v25 + 80) = *(&v44[1] + 15);
      ++v9;
      v8 += 11;
    }

    while (v8 != v32);
  }

  xgboost::tree::ConstructHistSpace<std::vector<xgboost::tree::HistRowPartitioner>>(v44, (a1 + 64), v43);
  v28 = *(a1 + 8);
  v29 = *(v28 + 20);
  v30 = *(v28 + 128);
  LODWORD(v35) = -1;
  HIDWORD(v35) = v29;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = v30;
  (*(*v31 + 104))(&v40);
  v35 = v40;
  v36 = v41;
  if (v41)
  {
    atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::GHistIndexMatrix>::BatchIterator(&v34, 0);
}

void sub_274DC2490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, char a29)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  xgboost::common::Index::~Index((v29 - 144));
  *(v29 - 144) = &a29;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100]((v29 - 144));
  *(v29 - 144) = v29 - 168;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100]((v29 - 144));
  _Unwind_Resume(a1);
}

void xgboost::tree::QuantileHistMaker::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::tree::TrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>((a1 + 24), a2, v5);
  v6 = v5;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
  xgboost::XGBoostParameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>((a1 + 16), a2, v4);
  v6 = v4;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
}

uint64_t xgboost::tree::QuantileHistMaker::Update(uint64_t result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = *(result + 28);
  *(result + 28) = v4 / (a4[1] - *a4);
  if (*(result + 17) == 1)
  {
    if (!*(result + 160))
    {
      operator new();
    }
  }

  else if (!*(result + 168))
  {
    operator new();
  }

  if (*a4 != a4[1])
  {
    v5 = **a4;
    if (*(result + 17) == 1)
    {
      v6 = *(result + 160);
      xgboost::tree::QuantileHistMaker::Builder<float>::UpdateTree();
    }

    v7 = *(result + 168);
    xgboost::tree::QuantileHistMaker::Builder<double>::UpdateTree();
  }

  *(result + 28) = v4;
  return result;
}

uint64_t *std::unique_ptr<xgboost::tree::QuantileHistMaker::Builder<float>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<xgboost::common::Monitor>::~unique_ptr[abi:ne200100]((v2 + 128));
    std::unique_ptr<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>>::~unique_ptr[abi:ne200100]((v2 + 104));
    v5 = (v2 + 64);
    std::vector<xgboost::tree::ApproxRowPartitioner>::__destroy_vector::operator()[abi:ne200100](&v5);
    std::unique_ptr<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>>::reset[abi:ne200100]((v2 + 56), 0);
    v3 = *(v2 + 32);
    if (v3)
    {
      *(v2 + 40) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 24);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    JUMPOUT(0x277C69180);
  }

  return result;
}

uint64_t xgboost::tree::QuantileHistMaker::UpdatePredictionCache(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 17) == 1 && *(a1 + 160))
  {
    v9 = *a3;
    v10 = *(a3 + 2);
    v11 = *(a3 + 3);
    v12 = a3[2];
    v13 = *(a3 + 12);
    xgboost::tree::QuantileHistMaker::Builder<float>::UpdatePredictionCache();
  }

  result = *(a1 + 168);
  if (result)
  {
    v4 = *a3;
    v5 = *(a3 + 2);
    v6 = *(a3 + 3);
    v7 = a3[2];
    v8 = *(a3 + 12);
    xgboost::tree::QuantileHistMaker::Builder<double>::UpdatePredictionCache();
  }

  return result;
}

void xgboost::tree::HistRowPartitioner::FindSplitConditions(uint64_t *a1, uint64_t a2, uint64_t a3, std::vector<int> *this)
{
  std::vector<int>::resize(this, 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3));
  v8 = *a1;
  if (a1[1] != *a1)
  {
    v9 = 0;
    do
    {
      v10 = *(a2 + 160) + 20 * *(v8 + 88 * v9);
      v11 = *(v10 + 12) & 0x7FFFFFFF;
      v12 = *(v10 + 16);
      v13 = **(a3 + 128);
      v14 = *(v13 + 4 * v11);
      v17 = *(v13 + 4 * (v11 + 1));
      v16 = 0x7FFFFFFF;
      if (v17 > 0x7FFFFFFE)
      {
        dmlc::LogCheckFormat<unsigned int,unsigned int>(&v17, &v16);
      }

      if (v14 >= v17)
      {
        v15 = -1;
      }

      else
      {
        v15 = -1;
        do
        {
          if (v12 == *(**(a3 + 120) + 4 * v14))
          {
            v15 = v14;
          }

          ++v14;
        }

        while (v17 != v14);
      }

      this->__begin_[v9++] = v15;
      v8 = *a1;
    }

    while (v9 < 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3));
  }
}

void sub_274DC2A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistRowPartitioner::AddSplitsToRowSet(void *a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    v8 = 0;
    v9 = 0x2E8BA2E8BA2E8BA3 * (v4 >> 3);
    v10 = 1;
    do
    {
      v11 = *(*a2 + 88 * v8);
      v12 = (*a1 + 16 * (v10 - 1));
      v13 = *v12;
      v14 = v12[1];
      v15 = *(a3 + 160) + 20 * v11;
      v16 = *(v15 + 4);
      v19 = *(v15 + 8);
      v20 = v16 + 1;
      if (v16 + 1 != v19)
      {
        dmlc::LogCheckFormat<int,int>(&v20, &v19);
      }

      v17 = *(a3 + 160) + 20 * v11;
      xgboost::common::RowSetCollection::AddSplit((a1 + 10), v11, *(v17 + 4), *(v17 + 8), v13, v14);
      v8 = v10;
    }

    while (v9 > v10++);
  }
}

void sub_274DC2C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11)
{
  v12 = a9;
  a9 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a9, v12);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::QuantileHistMaker::~QuantileHistMaker(xgboost::tree::QuantileHistMaker *this)
{
  *this = &unk_2883E4AB8;
  std::unique_ptr<xgboost::tree::QuantileHistMaker::Builder<float>>::reset[abi:ne200100](this + 21, 0);
  std::unique_ptr<xgboost::tree::QuantileHistMaker::Builder<float>>::reset[abi:ne200100](this + 20, 0);
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_2883E4AB8;
  std::unique_ptr<xgboost::tree::QuantileHistMaker::Builder<float>>::reset[abi:ne200100](this + 21, 0);
  std::unique_ptr<xgboost::tree::QuantileHistMaker::Builder<float>>::reset[abi:ne200100](this + 20, 0);
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::tree::QuantileHistMaker::LoadConfig(xgboost::tree::QuantileHistMaker *this, char ***a2)
{
  v3 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "train_param");
  v4 = std::map<std::string,xgboost::Json>::at(v3 + 16, __p);
  xgboost::FromJson<xgboost::tree::TrainParam>(v4, (this + 24), v10);
  v6[0] = v10;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v6);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "cpu_hist_train_param");
  v5 = std::map<std::string,xgboost::Json>::at(v3 + 16, __p);
  xgboost::FromJson<xgboost::tree::CPUHistMakerTrainParam>(v5, (this + 16), v9);
  v6[0] = v9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v6);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274DC2E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v21, v22) + 4) >= 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/./updater_quantile_hist.h");
      xgboost::ConsoleLogger::ConsoleLogger(&a18, &__p, 248, 1);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a18, "Attempted to load internal configuration for a model file that was generated ", 77);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "by a previous version of XGBoost. A likely cause for this warning is that the model ", 84);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "was saved with saveRDS() in R or pickle.dump() in Python. We strongly ADVISE AGAINST ", 85);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "using saveRDS() or pickle.dump() so that the model remains accessible in current and ", 85);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "upcoming XGBoost releases. Please use xgb.save() instead to preserve models for the ", 84);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "long term. For more details and explanation, see ", 49);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "https://xgboost.readthedocs.io/en/latest/tutorials/saving_model.html", 68);
      xgboost::ConsoleLogger::~ConsoleLogger(&a18);
      if (a17 < 0)
      {
        operator delete(__p);
      }
    }

    a18 = 0;
    a19 = 0;
    a20 = 0;
    xgboost::XGBoostParameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>((v20 + 16), &a18, &a9);
    __p = &a9;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
    __p = &a18;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
    __cxa_end_catch();
    JUMPOUT(0x274DC2E20);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::QuantileHistMaker::SaveConfig(xgboost::tree::QuantileHistMaker *this, xgboost::Json *a2)
{
  xgboost::ToJson<xgboost::tree::TrainParam>((this + 24), v4);
  std::string::basic_string[abi:ne200100]<0>(__p, "train_param");
  (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=();
}

void xgboost::common::ColumnMatrix::GetColumn<unsigned char,true>(void *a1, uint64_t *a2, unsigned int a3)
{
  v9 = 1;
  if (*(a2 + 38) != 1)
  {
    dmlc::LogCheckFormat<unsigned long,xgboost::common::BinTypeSize>(&v10, &v9, a2 + 38);
  }

  v3 = a2[12];
  v4 = *(v3 + 8 * a3);
  v5 = *(v3 + 8 * (a3 + 1));
  v6 = *a2;
  if (v5 == v4 || v6 != 0)
  {
    v8 = v6 + v4 * *(a2 + 38);
    *a1 = 0;
    if (*(a2[6] + a3))
    {
      operator new();
    }

    LOBYTE(v9) = 1;
    if (*(a2 + 156))
    {
      operator new();
    }

    dmlc::LogCheckFormat<BOOL,BOOL>(&v9, a2 + 156);
  }

  std::terminate();
}

void *xgboost::RegTree::NodeCats(xgboost::RegTree *this, void *a2, int a3)
{
  v3 = a2[32];
  v4 = a2[35];
  v5 = a2[36] - v4;
  v7[0] = (a2[33] - v3) >> 2;
  v7[1] = v3;
  if (a3 >= (v5 >> 4))
  {
    std::terminate();
  }

  return xgboost::common::Span<float,18446744073709551615ul>::subspan(v7, *(v4 + 16 * a3), *(v4 + 16 * a3 + 8), this);
}

void dmlc::LogCheckFormat<unsigned long,xgboost::common::BinTypeSize>(uint64_t a1, void *a2, unsigned int *a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " (", 2);
  v6 = MEMORY[0x277C68E50](v5, *a2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " vs. ", 5);
  v8 = MEMORY[0x277C68E30](v7, *a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
  operator new();
}

void sub_274DC36BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x277C69180](v2, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t xgboost::common::DenseColumn<unsigned char,true>::GetBinIdx(uint64_t a1, unint64_t a2)
{
  if ((*(**(a1 + 40) + (((*(a1 + 48) + a2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*(a1 + 48) + a2)))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 16) <= a2)
  {
    std::terminate();
  }

  return *(a1 + 32) + *(*(a1 + 24) + a2);
}

uint64_t xgboost::common::SparseColumn<unsigned char>::GetBinIdx(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = *a3;
  if (*a3 >= v3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 48);
  while (1)
  {
    v6 = *(v5 + 8 * v4);
    if (v6 >= a2)
    {
      break;
    }

    *a3 = ++v4;
    if (v3 == v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v6 != a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 16) <= v4)
  {
    std::terminate();
  }

  return *(a1 + 32) + *(*(a1 + 24) + v4);
}

void xgboost::common::ColumnMatrix::GetColumn<unsigned short,true>(void *a1, uint64_t *a2, unsigned int a3)
{
  v9 = 2;
  if (*(a2 + 38) != 2)
  {
    dmlc::LogCheckFormat<unsigned long,xgboost::common::BinTypeSize>(&v10, &v9, a2 + 38);
  }

  v3 = a2[12];
  v4 = *(v3 + 8 * a3);
  v5 = *(v3 + 8 * (a3 + 1));
  v6 = *a2;
  if (v5 == v4 || v6 != 0)
  {
    v8 = v6 + v4 * *(a2 + 38);
    *a1 = 0;
    if (*(a2[6] + a3))
    {
      operator new();
    }

    LOBYTE(v9) = 1;
    if (*(a2 + 156))
    {
      operator new();
    }

    dmlc::LogCheckFormat<BOOL,BOOL>(&v9, a2 + 156);
  }

  std::terminate();
}

uint64_t xgboost::common::DenseColumn<unsigned short,true>::GetBinIdx(uint64_t a1, unint64_t a2)
{
  if ((*(**(a1 + 40) + (((*(a1 + 48) + a2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*(a1 + 48) + a2)))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 16) <= a2)
  {
    std::terminate();
  }

  return *(a1 + 32) + *(*(a1 + 24) + 2 * a2);
}

uint64_t xgboost::common::SparseColumn<unsigned short>::GetBinIdx(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = *a3;
  if (*a3 >= v3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 48);
  while (1)
  {
    v6 = *(v5 + 8 * v4);
    if (v6 >= a2)
    {
      break;
    }

    *a3 = ++v4;
    if (v3 == v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v6 != a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 16) <= v4)
  {
    std::terminate();
  }

  return *(a1 + 32) + *(*(a1 + 24) + 2 * v4);
}

void xgboost::common::ColumnMatrix::GetColumn<unsigned int,true>(void *a1, uint64_t *a2, unsigned int a3)
{
  v9 = 4;
  if (*(a2 + 38) != 4)
  {
    dmlc::LogCheckFormat<unsigned long,xgboost::common::BinTypeSize>(&v10, &v9, a2 + 38);
  }

  v3 = a2[12];
  v4 = *(v3 + 8 * a3);
  v5 = *(v3 + 8 * (a3 + 1));
  v6 = *a2;
  if (v5 == v4 || v6 != 0)
  {
    v8 = v6 + v4 * *(a2 + 38);
    *a1 = 0;
    if (*(a2[6] + a3))
    {
      operator new();
    }

    LOBYTE(v9) = 1;
    if (*(a2 + 156))
    {
      operator new();
    }

    dmlc::LogCheckFormat<BOOL,BOOL>(&v9, a2 + 156);
  }

  std::terminate();
}

uint64_t xgboost::common::DenseColumn<unsigned int,true>::GetBinIdx(uint64_t a1, unint64_t a2)
{
  if ((*(**(a1 + 40) + (((*(a1 + 48) + a2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*(a1 + 48) + a2)))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 16) <= a2)
  {
    std::terminate();
  }

  return (*(*(a1 + 24) + 4 * a2) + *(a1 + 32));
}

uint64_t xgboost::common::SparseColumn<unsigned int>::GetBinIdx(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = *a3;
  if (*a3 >= v3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 48);
  while (1)
  {
    v6 = *(v5 + 8 * v4);
    if (v6 >= a2)
    {
      break;
    }

    *a3 = ++v4;
    if (v3 == v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v6 != a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 16) <= v4)
  {
    std::terminate();
  }

  return (*(*(a1 + 24) + 4 * v4) + *(a1 + 32));
}

void xgboost::common::ColumnMatrix::GetColumn<unsigned char,false>(void *a1, uint64_t *a2, unsigned int a3)
{
  v9 = 1;
  if (*(a2 + 38) != 1)
  {
    dmlc::LogCheckFormat<unsigned long,xgboost::common::BinTypeSize>(&v10, &v9, a2 + 38);
  }

  v3 = a2[12];
  v4 = *(v3 + 8 * a3);
  v5 = *(v3 + 8 * (a3 + 1));
  v6 = *a2;
  if (v5 == v4 || v6 != 0)
  {
    v8 = v6 + v4 * *(a2 + 38);
    *a1 = 0;
    if (*(a2[6] + a3))
    {
      operator new();
    }

    LOBYTE(v9) = 0;
    if (*(a2 + 156))
    {
      dmlc::LogCheckFormat<BOOL,BOOL>(&v9, a2 + 156);
    }

    operator new();
  }

  std::terminate();
}

void xgboost::common::ColumnMatrix::GetColumn<unsigned short,false>(void *a1, uint64_t *a2, unsigned int a3)
{
  v9 = 2;
  if (*(a2 + 38) != 2)
  {
    dmlc::LogCheckFormat<unsigned long,xgboost::common::BinTypeSize>(&v10, &v9, a2 + 38);
  }

  v3 = a2[12];
  v4 = *(v3 + 8 * a3);
  v5 = *(v3 + 8 * (a3 + 1));
  v6 = *a2;
  if (v5 == v4 || v6 != 0)
  {
    v8 = v6 + v4 * *(a2 + 38);
    *a1 = 0;
    if (*(a2[6] + a3))
    {
      operator new();
    }

    LOBYTE(v9) = 0;
    if (*(a2 + 156))
    {
      dmlc::LogCheckFormat<BOOL,BOOL>(&v9, a2 + 156);
    }

    operator new();
  }

  std::terminate();
}

void xgboost::common::ColumnMatrix::GetColumn<unsigned int,false>(void *a1, uint64_t *a2, unsigned int a3)
{
  v9 = 4;
  if (*(a2 + 38) != 4)
  {
    dmlc::LogCheckFormat<unsigned long,xgboost::common::BinTypeSize>(&v10, &v9, a2 + 38);
  }

  v3 = a2[12];
  v4 = *(v3 + 8 * a3);
  v5 = *(v3 + 8 * (a3 + 1));
  v6 = *a2;
  if (v5 == v4 || v6 != 0)
  {
    v8 = v6 + v4 * *(a2 + 38);
    *a1 = 0;
    if (*(a2[6] + a3))
    {
      operator new();
    }

    LOBYTE(v9) = 0;
    if (*(a2 + 156))
    {
      dmlc::LogCheckFormat<BOOL,BOOL>(&v9, a2 + 156);
    }

    operator new();
  }

  std::terminate();
}

void *std::vector<xgboost::detail::GradientPairInternal<float>>::__assign_with_size[abi:ne200100]<xgboost::detail::GradientPairInternal<float>*,xgboost::detail::GradientPairInternal<float>*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<xgboost::detail::GradientPairInternal<float>>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t std::vector<xgboost::tree::HistRowPartitioner>::__emplace_back_slow_path<unsigned long,unsigned long const&,int>(uint64_t *a1, unint64_t *a2, uint64_t *a3, int *a4)
{
  v4 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v7 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v7 = v5;
  }

  v22 = a1;
  if (v7)
  {
    if (v7 <= 0x1E1E1E1E1E1E1E1)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v18 = 0;
  v19 = 136 * v4;
  v20 = 136 * v4;
  v21 = 0;
  xgboost::tree::HistRowPartitioner::HistRowPartitioner((136 * v4), *a2, *a3, *a4);
  v8 = 136 * v4 + 136;
  v20 = v8;
  v9 = *a1;
  v10 = a1[1];
  v11 = v19 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = (v19 + *a1 - v10);
    v13 = *a1;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      *v12 = *v13;
      v12[2] = *(v13 + 16);
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v12[3] = 0;
      v12[4] = 0;
      v12[5] = 0;
      *(v12 + 3) = *(v13 + 24);
      v12[5] = *(v13 + 40);
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      v12[6] = 0;
      v12[7] = 0;
      v12[8] = 0;
      *(v12 + 3) = *(v13 + 48);
      v14 = *(v13 + 72);
      v12[8] = *(v13 + 64);
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      *(v13 + 48) = 0;
      v12[11] = 0;
      v12[12] = 0;
      v12[9] = v14;
      v12[10] = 0;
      *(v12 + 5) = *(v13 + 80);
      v12[12] = *(v13 + 96);
      *(v13 + 80) = 0;
      *(v13 + 88) = 0;
      *(v13 + 96) = 0;
      v12[13] = 0;
      v12[14] = 0;
      v12[15] = 0;
      *(v12 + 13) = *(v13 + 104);
      v15 = *(v13 + 128);
      v12[15] = *(v13 + 120);
      *(v13 + 104) = 0;
      *(v13 + 112) = 0;
      *(v13 + 120) = 0;
      v12[16] = v15;
      v13 += 136;
      v12 += 17;
    }

    while (v13 != v10);
    do
    {
      std::allocator_traits<std::allocator<xgboost::tree::ApproxRowPartitioner>>::destroy[abi:ne200100]<xgboost::tree::ApproxRowPartitioner,0>(v9);
      v9 += 136;
    }

    while (v9 != v10);
    v9 = *a1;
    v8 = v20;
  }

  *a1 = v11;
  a1[1] = v8;
  v16 = a1[2];
  a1[2] = v21;
  v20 = v9;
  v21 = v16;
  v18 = v9;
  v19 = v9;
  std::__split_buffer<xgboost::tree::ApproxRowPartitioner>::~__split_buffer(&v18);
  return v8;
}

void sub_274DC4D34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<xgboost::tree::ApproxRowPartitioner>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

xgboost::tree::HistRowPartitioner *xgboost::tree::HistRowPartitioner::HistRowPartitioner(xgboost::tree::HistRowPartitioner *this, unint64_t a2, uint64_t a3, int a4)
{
  v22 = *MEMORY[0x277D85DE8];
  *(this + 5) = 0u;
  v8 = (this + 80);
  *(this + 16) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v20.__ptr_ = 0;
  v21.__m_.__sig = 850045863;
  memset(v21.__m_.__opaque, 0, sizeof(v21.__m_.__opaque));
  std::vector<unsigned long>::resize(this + 10, a2);
  if (a2 % a4)
  {
    v9 = a2 / a4 + 1;
  }

  else
  {
    v9 = a2 / a4;
  }

  if (a2 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    v11 = (v10 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v12 = vdupq_n_s64(v10 - 1);
    v13 = xmmword_274E1F3B0;
    v14 = (*v8 + 8);
    v15 = vdupq_n_s64(2uLL);
    v16 = a3;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v12, v13));
      if (v17.i8[0])
      {
        *(v14 - 1) = v16;
      }

      if (v17.i8[4])
      {
        *v14 = v16 + 1;
      }

      v13 = vaddq_s64(v13, v15);
      v14 += 2;
      v16 += 2;
      v11 -= 2;
    }

    while (v11);
  }

  xgboost::common::RowSetCollection::Init(v8);
  *(this + 16) = a3;
  std::mutex::~mutex(&v21);
  std::exception_ptr::~exception_ptr(&v20);
  v18 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_274DC4EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::mutex::~mutex((v11 + 8));
  std::exception_ptr::~exception_ptr(&a9);
  xgboost::common::Index::~Index(v10);
  xgboost::common::PartitionBuilder<2048ul>::~PartitionBuilder(v9);
  _Unwind_Resume(a1);
}

void xgboost::Learner::~Learner(xgboost::Learner *this)
{
  *this = &unk_2883E4DD0;
  *(this + 1) = &unk_2883E4ED8;
  *(this + 2) = &unk_2883E4F08;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }
}

uint64_t xgboost::LearnerModelParam::LearnerModelParam(uint64_t a1, _DWORD *a2, __int16 a3, float a4)
{
  *a1 = a4;
  v5 = a2[1];
  *(a1 + 12) = a3;
  v6 = a2[2];
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = a2[7];
  if (v7 <= v8)
  {
    v9 = a2[7];
  }

  else
  {
    v9 = v7;
  }

  *(a1 + 4) = v5;
  *(a1 + 8) = v9;
  if (v6 >= 2 && v8 >= 2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v19);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 188);
    v13 = dmlc::LogMessageFatal::GetEntry(&v19);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Check failed: n_classes <= 1 || n_targets <= 1", 46);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ": ", 2);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Multi-class multi-output is not yet supported. n_classes:", 57);
    v17 = MEMORY[0x277C68E30](v16, v7);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", n_targets:", 12);
    MEMORY[0x277C68E30](v18, v8);
    dmlc::LogMessageFatal::~LogMessageFatal(&v19);
  }

  return a1;
}

{
  return xgboost::LearnerModelParam::LearnerModelParam(a1, a2, a3, a4);
}

double xgboost::GenericParameter::GenericParameter(xgboost::GenericParameter *this)
{
  *this = 0;
  *(this + 1) = -1;
  *(this + 1) = 0;
  *(this + 16) = 0;
  result = NAN;
  *(this + 20) = 0xFFFFFFFF00000000;
  *(this + 14) = 0;
  return result;
}

{
  *this = 0;
  *(this + 1) = -1;
  *(this + 1) = 0;
  *(this + 16) = 0;
  result = NAN;
  *(this + 20) = 0xFFFFFFFF00000000;
  *(this + 14) = 0;
  return result;
}

void xgboost::GenericParameter::ConfigureGpuId(xgboost::GenericParameter *this)
{
  v10 = *MEMORY[0x277D85DE8];
  std::to_string(&v3, -1);
  std::string::basic_string[abi:ne200100]<0>(v7, "gpu_id");
  __p = v3;
  memset(&v3, 0, sizeof(v3));
  memset(v4, 0, sizeof(v4));
  std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*>(v4, v7, &v10, 1uLL);
  xgboost::XGBoostParameter<xgboost::GenericParameter>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v5, this, v4);
  v6 = v5;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = v4;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void sub_274DC53E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a22);
  std::pair<std::string,std::string>::~pair(&a23);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::XGBoostParameter<xgboost::GenericParameter>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(xgboost::GenericParameter *a1, _BYTE *a2, uint64_t *a3)
{
  if (*a2 == 1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    xgboost::GenericParameter::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6BF8, a2, *a3, a3[1], 0, a1, 0);
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    xgboost::GenericParameter::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6BF8, a2, *a3, a3[1], a1, 0);
    *a2 = 1;
  }
}

void sub_274DC54D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_274DC5584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__destroy_vector::operator()[abi:ne200100](&a12);
  MEMORY[0x277C69180](v13, v12);
  _Unwind_Resume(a1);
}

void xgboost::LearnerImpl::LearnerImpl(unint64_t a1, uint64_t *a2)
{
  memset(v3, 0, sizeof(v3));
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__init_with_size[abi:ne200100]<std::shared_ptr<xgboost::DMatrix>*,std::shared_ptr<xgboost::DMatrix>*>(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  xgboost::LearnerIO::LearnerIO(a1, v3);
}

void xgboost::LearnerIO::LearnerIO(unint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__init_with_size[abi:ne200100]<std::shared_ptr<xgboost::DMatrix>*,std::shared_ptr<xgboost::DMatrix>*>(&v9, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 49) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 68) = -1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0xFFFFFFFF00000000;
  *(a1 + 92) = 0;
  *a1 = &unk_2883E52E8;
  *(a1 + 8) = &unk_2883E5408;
  *(a1 + 16) = &unk_2883E5438;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  xgboost::common::Monitor::Monitor((a1 + 264));
  *(a1 + 428) = 0u;
  *(a1 + 444) = 0u;
  *(a1 + 396) = 0u;
  *(a1 + 412) = 0u;
  *(a1 + 364) = 0u;
  *(a1 + 380) = 0u;
  *(a1 + 332) = 0u;
  *(a1 + 348) = 0u;
  *(a1 + 460) = 0x3F00000000000000;
  *(a1 + 328) = 1056964608;
  *(a1 + 348) = 1;
  *(a1 + 352) = 0x100000006;
  *(a1 + 476) = 0;
  *(a1 + 468) = 0;
  *(a1 + 480) = 0;
  *(a1 + 484) = 0;
  *(a1 + 488) = 0;
  *(a1 + 560) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  std::string::basic_string[abi:ne200100]<0>(&__str, "Learner");
  std::string::operator=((a1 + 264), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v3 = dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::PredictionContainer>>::Get();
  v13 = a1;
  v12[0] = &v13;
  v4 = std::__tree<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::__map_value_compare<xgboost::Learner const*,std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::less<xgboost::Learner const*>,true>,std::allocator<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>>>::__emplace_unique_key_args<xgboost::Learner const*,std::piecewise_construct_t const&,std::tuple<xgboost::Learner const*&&>,std::tuple<>>(v3, a1);
  v6 = v9;
  v5 = v10;
  if (v9 != v10)
  {
    v7 = v4;
    do
    {
      v8 = v6[1];
      v12[0] = *v6;
      v12[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      xgboost::PredictionContainer::Cache(v7 + 5, v12, -1);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v6 += 2;
    }

    while (v6 != v5);
  }

  __str.__r_.__value_.__r.__words[0] = &v9;
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__destroy_vector::operator()[abi:ne200100](&__str);
  *a1 = &unk_2883E5158;
  *(a1 + 8) = &unk_2883E5288;
  *(a1 + 16) = &unk_2883E52B8;
  std::string::basic_string[abi:ne200100]<0>(&__str, "num_round");
  *(a1 + 576) = 0u;
  *(a1 + 568) = a1 + 576;
  operator new();
}

void sub_274DC5A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  operator delete(v24);
  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(v23, *v25);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  xgboost::LearnerConfiguration::~LearnerConfiguration(v22);
  _Unwind_Resume(a1);
}

void xgboost::LearnerIO::~LearnerIO(xgboost::LearnerIO *this)
{
  *this = &unk_2883E5158;
  *(this + 1) = &unk_2883E5288;
  *(this + 2) = &unk_2883E52B8;
  if (*(this + 615) < 0)
  {
    operator delete(*(this + 74));
  }

  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(this + 568, *(this + 72));

  xgboost::LearnerConfiguration::~LearnerConfiguration(this);
}

void xgboost::LearnerImpl::~LearnerImpl(xgboost::LearnerImpl *this)
{
  xgboost::LearnerImpl::~LearnerImpl(this);
}

{
  *this = &unk_2883E4F80;
  *(this + 1) = &unk_2883E50B0;
  *(this + 2) = &unk_2883E50E0;
  v2 = dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::XGBAPIThreadLocalEntry>>::Get();
  v4 = v2 + 1;
  v3 = v2[1];
  if (v3)
  {
    v5 = v2 + 1;
    v6 = v2[1];
    do
    {
      v7 = v6[4];
      v8 = v7 >= this;
      v9 = v7 < this;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= this)
    {
      v10 = v2 + 1;
      v11 = v2[1];
      do
      {
        v12 = *(v11 + 32);
        v8 = v12 >= this;
        v13 = v12 < this;
        if (v8)
        {
          v10 = v11;
        }

        v11 = *(v11 + 8 * v13);
      }

      while (v11);
      if (v10 != v4 && v10[4] <= this)
      {
        v14 = v10[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          v16 = v10;
          do
          {
            v15 = v16[2];
            v17 = *v15 == v16;
            v16 = v15;
          }

          while (!v17);
        }

        if (*v2 == v10)
        {
          *v2 = v15;
        }

        --v2[2];
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v10);
        xgboost::XGBAPIThreadLocalEntry::~XGBAPIThreadLocalEntry((v10 + 5));
      }
    }
  }

  std::__hash_table<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::__unordered_map_hasher<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::hash<xgboost::DMatrix *>,std::equal_to<xgboost::DMatrix *>,true>,std::__unordered_map_equal<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::equal_to<xgboost::DMatrix *>,std::hash<xgboost::DMatrix *>,true>,std::allocator<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>>>::~__hash_table(this + 624);
  xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::~HostDeviceVector();
}

void xgboost::LearnerIO::LoadModel(xgboost::LearnerIO *this, char ***a2)
{
  v76[29] = *MEMORY[0x277D85DE8];
  if (*(*a2 + 3) != 3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v74);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 746);
    v63 = dmlc::LogMessageFatal::GetEntry(&v74);
    v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Check failed: IsA<Object>(in)", 29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v74);
  }

  xgboost::Version::Load(a2, a2);
  v6 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v4, v5);
  if (v8 == 1 && v7 <= 5 && *(v6 + 4) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc");
    xgboost::ConsoleLogger::ConsoleLogger(&v74, &__p, 749, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "Found JSON model saved before XGBoost 1.6, please save the model using current version again. The support for old JSON model will be discontinued in XGBoost 2.3.", 161);
    xgboost::ConsoleLogger::~ConsoleLogger(&v74);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v74, "learner");
  v9 = (*(**a2 + 3))(*a2, &v74);
  v10 = xgboost::Cast<xgboost::JsonObject,xgboost::Value>(*v9);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v67, "learner_model_param");
  v11 = std::map<std::string,xgboost::Json>::at((v10 + 16), v67);
  v12 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v11);
  *&v74.__r_.__value_.__r.__words[1] = 0uLL;
  v74.__r_.__value_.__r.__words[0] = &v74.__r_.__value_.__l.__size_;
  std::string::basic_string[abi:ne200100]<0>(&__p, "num_feature");
  v13 = std::map<std::string,xgboost::Json>::at((v12 + 16), &__p.__r_.__value_.__l.__data_);
  v14 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v13);
  std::string::basic_string[abi:ne200100]<0>(&p_p, "num_feature");
  v73 = &p_p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v74, &p_p);
  std::string::operator=((v15 + 56), (v14 + 16));
  if (SHIBYTE(v71) < 0)
  {
    operator delete(p_p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "num_class");
  v16 = std::map<std::string,xgboost::Json>::at((v12 + 16), &__p.__r_.__value_.__l.__data_);
  v17 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v16);
  std::string::basic_string[abi:ne200100]<0>(&p_p, "num_class");
  v73 = &p_p;
  v18 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v74, &p_p);
  std::string::operator=((v18 + 56), (v17 + 16));
  if (SHIBYTE(v71) < 0)
  {
    operator delete(p_p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "num_target");
  v19 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>((v12 + 16), &__p.__r_.__value_.__l.__data_);
  v20 = v19;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v12 + 24 != v20)
  {
    v21 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v20[7]);
    std::string::basic_string[abi:ne200100]<0>(&__p, "num_target");
    p_p = &__p;
    v22 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v74, &__p.__r_.__value_.__l.__data_);
    v19 = std::string::operator=((v22 + 56), (v21 + 16));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  xgboost::LearnerModelParamLegacy::__MANAGER__(v19);
  dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6B68, this + 328, v74.__r_.__value_.__l.__data_, &v74.__r_.__value_.__l.__size_, 0, 2);
  std::string::basic_string[abi:ne200100]<0>(&p_p, "base_score");
  v23 = std::map<std::string,xgboost::Json>::at((v12 + 16), &p_p);
  v24 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v23);
  if (v24[39] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v24 + 2), *(v24 + 3));
  }

  else
  {
    __p = *(v24 + 16);
  }

  if (SHIBYTE(v71) < 0)
  {
    operator delete(p_p);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &__p;
  }

  else
  {
    v26 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v27 = LODWORD(__p.__r_.__value_.__r.__words[1]);
  }

  xgboost::detail::FromCharFloatImpl(v26, v27, this + 82, v25);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v74, v74.__r_.__value_.__l.__size_);
  if (v68 < 0)
  {
    operator delete(v67[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v74, "objective");
  v28 = std::map<std::string,xgboost::Json>::at((v10 + 16), &v74.__r_.__value_.__l.__data_);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v74, "name");
  v29 = (*(**v28 + 24))(*v28, &v74);
  v30 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v29);
  if (v30[39] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v30 + 2), *(v30 + 3));
  }

  else
  {
    __p = *(v30 + 16);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[10],std::string&,0>(&v74, &__p);
  p_p = 0;
  v70 = 0;
  v71 = 0;
  std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*>(&p_p, &v74, v76, 1uLL);
  xgboost::XGBoostParameter<xgboost::LearnerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v66, this + 480, &p_p);
  v67[0] = v66;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v67);
  v67[0] = &p_p;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v67);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  v31 = xgboost::ObjFunction::Create(&__p, this + 64);
  v32 = *(this + 3);
  *(this + 3) = v31;
  if (v32)
  {
    (*(*v32 + 8))(v32);
    v31 = *(this + 3);
  }

  (*(*v31 + 16))(v31, v28);
  std::string::basic_string[abi:ne200100]<0>(&v74, "gradient_booster");
  v33 = std::map<std::string,xgboost::Json>::at((v10 + 16), &v74.__r_.__value_.__l.__data_);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v74, "name");
  v34 = (*(**v33 + 24))(*v33, &v74);
  v35 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v34);
  std::string::operator=(&__p, (v35 + 16));
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v74, "booster");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v75 = __p;
  }

  p_p = 0;
  v70 = 0;
  v71 = 0;
  std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*>(&p_p, &v74, v76, 1uLL);
  xgboost::XGBoostParameter<xgboost::LearnerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v65, this + 480, &p_p);
  v67[0] = v65;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v67);
  v67[0] = &p_p;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v67);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  xgboost::GradientBooster::Create(this + 496, this + 64, this + 464);
  v37 = *(this + 4);
  *(this + 4) = v36;
  if (v37)
  {
    (*(*v37 + 8))(v37);
    v36 = *(this + 4);
  }

  (*(*v36 + 16))(v36, v33);
  std::string::basic_string[abi:ne200100]<0>(&v74, "attributes");
  v38 = std::map<std::string,xgboost::Json>::at((v10 + 16), &v74.__r_.__value_.__l.__data_);
  v39 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v38);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 192, *(this + 25));
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = this + 200;
  v40 = v39[2];
  if (v40 != v39 + 3)
  {
    do
    {
      v41 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v40[7]);
      v74.__r_.__value_.__r.__words[0] = (v40 + 4);
      v42 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 192, v40 + 4);
      std::string::operator=((v42 + 56), (v41 + 16));
      v43 = v40[1];
      if (v43)
      {
        do
        {
          v44 = v43;
          v43 = *v43;
        }

        while (v43);
      }

      else
      {
        do
        {
          v44 = v40[2];
          v45 = *v44 == v40;
          v40 = v44;
        }

        while (!v45);
      }

      v40 = v44;
    }

    while (v44 != v39 + 3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v74, "feature_names");
  v46 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>((v10 + 16), &v74.__r_.__value_.__l.__data_);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  v47 = v10 + 24;
  if (v10 + 24 != v46)
  {
    v48 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*(v46 + 56));
    std::vector<std::string>::resize(this + 9, (*(v48 + 3) - *(v48 + 2)) >> 3);
    v50 = *(v48 + 2);
    v49 = *(v48 + 3);
    if (v50 != v49)
    {
      v51 = *(this + 27);
      do
      {
        v52 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v50);
        if (v52[39] < 0)
        {
          std::string::__init_copy_ctor_external(&v74, *(v52 + 2), *(v52 + 3));
        }

        else
        {
          v74 = *(v52 + 16);
        }

        if (*(v51 + 23) < 0)
        {
          operator delete(*v51);
        }

        v53 = *&v74.__r_.__value_.__l.__data_;
        *(v51 + 16) = *(&v74.__r_.__value_.__l + 2);
        *v51 = v53;
        v51 += 24;
        ++v50;
      }

      while (v50 != v49);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v74, "feature_types");
  v54 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>((v10 + 16), &v74.__r_.__value_.__l.__data_);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (v47 != v54)
  {
    v55 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*(v54 + 56));
    std::vector<std::string>::resize(this + 10, (*(v55 + 3) - *(v55 + 2)) >> 3);
    v57 = *(v55 + 2);
    v56 = *(v55 + 3);
    if (v57 != v56)
    {
      v58 = *(this + 30);
      do
      {
        v59 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v57);
        if (v59[39] < 0)
        {
          std::string::__init_copy_ctor_external(&v74, *(v59 + 2), *(v59 + 3));
        }

        else
        {
          v74 = *(v59 + 16);
        }

        if (*(v58 + 23) < 0)
        {
          operator delete(*v58);
        }

        v60 = *&v74.__r_.__value_.__l.__data_;
        *(v58 + 16) = *(&v74.__r_.__value_.__l + 2);
        *v58 = v60;
        v58 += 24;
        ++v57;
      }

      while (v57 != v56);
    }
  }

  atomic_store(1u, this + 160);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v61 = *MEMORY[0x277D85DE8];
}

void xgboost::LearnerIO::SaveModel(xgboost::LearnerIO *this, xgboost::Json *a2)
{
  v3 = atomic_load(this + 160);
  if (v3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 797);
    v5 = dmlc::LogMessageFatal::GetEntry(&v8);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: !this->need_configuration_", 40);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Call Configure before saving model.", 35);
    dmlc::LogMessageFatal::~LogMessageFatal(&v8);
  }

  xgboost::Version::Save(a2, a2);
}

void xgboost::LearnerConfiguration::Configure(xgboost::LearnerConfiguration *this)
{
  v1 = this + 160;
  v2 = atomic_load(this + 160);
  if ((v2 & 1) == 0)
  {
    return;
  }

  v3 = this;
  std::mutex::lock((this + 96));
  v4 = atomic_load(v1);
  if ((v4 & 1) == 0)
  {
    goto LABEL_202;
  }

  v132 = v3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "Configure");
  xgboost::common::Monitor::Start();
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  v137 = *(v3 + 480);
  v138 = *(v3 + 121);
  v139 = *(v3 + 488);
  v5 = (v3 + 496);
  if (*(v3 + 519) < 0)
  {
    std::string::__init_copy_ctor_external(&v140, *(v3 + 62), *(v3 + 63));
  }

  else
  {
    *&v140.__r_.__value_.__l.__data_ = *v5;
    v140.__r_.__value_.__r.__words[2] = *(v3 + 64);
  }

  v6 = (v3 + 520);
  if (*(v3 + 543) < 0)
  {
    std::string::__init_copy_ctor_external(&v141, *(v3 + 65), *(v3 + 66));
  }

  else
  {
    *&v141.__r_.__value_.__l.__data_ = *v6;
    v141.__r_.__value_.__r.__words[2] = *(v3 + 67);
  }

  v7 = (v3 + 168);
  v130 = (v3 + 176);
  std::vector<std::pair<std::string,std::string>>::vector[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,0>(&v136, *(v3 + 21), v3 + 22);
  xgboost::XGBoostParameter<xgboost::LearnerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v135, v3 + 480, &v136);
  __p.__begin_ = v135;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v8 = *(v3 + 82);
  memset(v134, 0, sizeof(v134));
  xgboost::LearnerModelParamLegacy::__MANAGER__(v9);
  dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6B68, v3 + 328, v136.__begin_, v136.__end_, 0, v134, 0);
  __p.__begin_ = v134;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v10 = *(v3 + 64);
  v11 = *(v132 + 9);
  v131 = (v132 + 64);
  xgboost::XGBoostParameter<xgboost::GenericParameter>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v133, v132 + 64, &v136);
  __p.__begin_ = v133;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v129 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v12, v13);
  xgboost::XGBoostParameter<xgboost::GlobalConfiguration>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v129, &v136, &__p);
  v142.__r_.__value_.__r.__words[0] = &__p;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v142);
  if (!*(v132 + 121))
  {
    Engine = rabit::engine::GetEngine(v14);
    if ((*(*Engine + 80))(Engine))
    {
      *(v132 + 121) = 2;
    }
  }

  if ((v10 & 1) == 0 || *(v132 + 9) != v11)
  {
    v16 = dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get();
    v17 = *(v132 + 18);
    *v16 = v17;
    for (i = 1; i != 624; ++i)
    {
      v17 = i + 1812433253 * (v17 ^ (v17 >> 30));
      *(v16 + 4 * i) = v17;
    }

    *(v16 + 2496) = 0;
  }

  v19 = (v132 + 332);
  if (!*(v132 + 83))
  {
    LODWORD(v147) = 0;
    v20 = (*(*v132 + 248))(v132);
    xgboost::PredictionContainer::ClearExpiredEntries(v20);
    for (j = v20[2]; j; j = *j)
    {
      if (!j[2])
      {
        Entry = dmlc::LogMessageFatal::GetEntry(&__p);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 638);
        v29 = dmlc::LogMessageFatal::GetEntry(&__p);
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Check failed: matrix.first", 26);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&__p);
      }

      v23 = j[6];
      if (!v23 || *(v23 + 8) == -1)
      {
        v25 = dmlc::LogMessageFatal::GetEntry(&__p);
        dmlc::LogMessageFatal::Entry::Init(v25, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 639);
        v26 = dmlc::LogMessageFatal::GetEntry(&__p);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Check failed: !matrix.second.ref.expired()", 42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&__p);
      }

      v21 = (**j[2])(j[2]);
      __p.__begin_ = v21[1];
      v146 = 0xFFFFFFFFLL;
      if (__p.__begin_ >> 32)
      {
        dmlc::LogCheckFormat<unsigned long long,unsigned long long>(&__p, &v146);
      }

      begin = __p.__begin_;
      if (v147 > LODWORD(__p.__begin_))
      {
        begin = v147;
      }

      LODWORD(v147) = begin;
    }

    v31 = rabit::engine::GetEngine(v21);
    (*(*v31 + 8))(v31, &v147, 4, 1, rabit::op::Reducer<rabit::op::Max,unsigned int>, 0, 0);
    v32 = *v19;
    if (v147 <= *v19)
    {
      LODWORD(v142.__r_.__value_.__l.__data_) = 0;
      if (!v32)
      {
        dmlc::LogCheckFormat<unsigned int,int>(v19, &v142);
      }
    }

    else
    {
      *v19 = v147;
    }
  }

  xgboost::common::ToString<unsigned int>(&__p, v19);
  std::string::basic_string[abi:ne200100]<0>(&v142, "num_feature");
  v146 = &v142;
  v33 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v7, &v142.__r_.__value_.__l.__data_);
  v34 = v33;
  if (*(v33 + 79) < 0)
  {
    operator delete(*(v33 + 56));
  }

  *(v34 + 56) = __p;
  HIBYTE(__p.__end_cap_.__value_) = 0;
  LOBYTE(__p.__begin_) = 0;
  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }
  }

  xgboost::common::ToString<int>(&__p, v132 + 84);
  std::string::basic_string[abi:ne200100]<0>(&v142, "num_class");
  v146 = &v142;
  v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v7, &v142.__r_.__value_.__l.__data_);
  v36 = v35;
  if (*(v35 + 79) < 0)
  {
    operator delete(*(v35 + 56));
  }

  *(v36 + 56) = __p;
  HIBYTE(__p.__end_cap_.__value_) = 0;
  LOBYTE(__p.__begin_) = 0;
  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }
  }

  std::vector<std::pair<std::string,std::string>>::vector[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,0>(&__p, *v7, v130);
  std::vector<std::pair<std::string,std::string>>::__vdeallocate(&v136);
  v136 = __p;
  memset(&__p, 0, sizeof(__p));
  v142.__r_.__value_.__r.__words[0] = &__p;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v142);
  std::string::basic_string[abi:ne200100]<0>(&__p, "num_class");
  if (v130 == std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v7, &__p.__begin_))
  {
    v39 = 0;
    goto LABEL_68;
  }

  std::string::basic_string[abi:ne200100]<0>(&v142, "num_class");
  v37 = std::map<std::string,xgboost::Json>::at(v7, &v142.__r_.__value_.__l.__data_);
  v38 = *(v37 + 23);
  if (v38 < 0)
  {
    if (*(v37 + 8) != 1)
    {
      goto LABEL_54;
    }

    v37 = *v37;
  }

  else if (v38 != 1)
  {
    goto LABEL_54;
  }

  if (*v37 == 48)
  {
    v39 = 0;
    goto LABEL_66;
  }

LABEL_54:
  v40 = *(v132 + 543);
  if (v40 < 0)
  {
    if (*(v132 + 66) != 14)
    {
LABEL_65:
      v39 = 1;
      goto LABEL_66;
    }

    v41 = *v6;
  }

  else
  {
    v41 = (v132 + 520);
    if (v40 != 14)
    {
      goto LABEL_65;
    }
  }

  v42 = *v41;
  v43 = *(v41 + 6);
  v39 = v42 != 0x6F733A69746C756DLL || v43 != 0x626F727074666F73;
LABEL_66:
  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
  }

LABEL_68:
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
    if (!v39)
    {
      goto LABEL_87;
    }
  }

  else if (!v39)
  {
    goto LABEL_87;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "num_class");
  v142.__r_.__value_.__r.__words[0] = &__p;
  v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v7, &__p.__begin_);
  std::string::basic_string[abi:ne200100]<0>(&v142, "num_output_group");
  v146 = &v142;
  v46 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v7, &v142.__r_.__value_.__l.__data_);
  std::string::operator=((v46 + 56), (v45 + 56));
  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "num_class");
  v142.__r_.__value_.__r.__words[0] = &__p;
  v47 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v7, &__p.__begin_);
  v48 = (v47 + 56);
  if (*(v47 + 79) < 0)
  {
    v48 = *v48;
  }

  if (atoi(v48) < 2)
  {
    v49 = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v142, "objective");
    v49 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__count_unique<std::string>(v7, &v142.__r_.__value_.__l.__data_) == 0;
    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v142.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
    if (!v49)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (v49)
  {
LABEL_86:
    MEMORY[0x277C68BE0](v6, "multi:softmax");
  }

LABEL_87:
  std::string::basic_string[abi:ne200100]<0>(&__p, "max_delta_step");
  if (v130 != std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v7, &__p.__begin_))
  {
    v50 = 0;
    goto LABEL_104;
  }

  std::string::basic_string[abi:ne200100]<0>(&v142, "objective");
  if (v130 == std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v7, &v142.__r_.__value_.__l.__data_))
  {
    goto LABEL_101;
  }

  v51 = *(v132 + 543);
  if (v51 < 0)
  {
    if (*(v132 + 66) != 13)
    {
LABEL_101:
      v50 = 0;
      goto LABEL_102;
    }

    v52 = *v6;
  }

  else
  {
    v52 = (v132 + 520);
    if (v51 != 13)
    {
      goto LABEL_101;
    }
  }

  v53 = *v52;
  v54 = *(v52 + 5);
  v50 = v53 == 0x6F703A746E756F63 && v54 == 0x6E6F7373696F703ALL;
LABEL_102:
  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
  }

LABEL_104:
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
    if (!v50)
    {
      goto LABEL_110;
    }

LABEL_108:
    std::string::basic_string[abi:ne200100]<0>(&__p, "max_delta_step");
    v142.__r_.__value_.__r.__words[0] = &__p;
    v56 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v7, &__p.__begin_);
    MEMORY[0x277C68BE0](v56 + 56, "0.7");
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }

    goto LABEL_110;
  }

  if (v50)
  {
    goto LABEL_108;
  }

LABEL_110:
  if (!*(v132 + 3))
  {
    goto LABEL_124;
  }

  v57 = *(v132 + 543);
  if (v57 >= 0)
  {
    v58 = *(v132 + 543);
  }

  else
  {
    v58 = *(v132 + 66);
  }

  size = HIBYTE(v141.__r_.__value_.__r.__words[2]);
  if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v141.__r_.__value_.__l.__size_;
  }

  if (v58 != size || (v57 >= 0 ? (v60 = v132 + 520) : (v60 = *v6), (v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v61 = &v141) : (v61 = v141.__r_.__value_.__r.__words[0]), memcmp(v60, v61, v58)))
  {
LABEL_124:
    v62 = xgboost::ObjFunction::Create(v6, v131);
    v63 = *(v132 + 3);
    *(v132 + 3) = v62;
    if (v63)
    {
      (*(*v63 + 8))(v63);
    }
  }

  std::vector<std::pair<std::string,std::string>>::vector[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,0>(&__p, *v7, v130);
  std::vector<std::pair<std::string,std::string>>::__vdeallocate(&v136);
  v136 = __p;
  memset(&__p, 0, sizeof(__p));
  v142.__r_.__value_.__r.__words[0] = &__p;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v142);
  (*(**(v132 + 3) + 32))(*(v132 + 3), &v136);
  v64 = v132;
  if (!*(v132 + 3))
  {
    v119 = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(v119, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 711);
    v120 = dmlc::LogMessageFatal::GetEntry(&__p);
    v121 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v120, "Check failed: this->obj_", 24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v121, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    v64 = v132;
  }

  v65 = (*(*v64 + 248))(v64);
  xgboost::PredictionContainer::ClearExpiredEntries(v65);
  v66 = v65[2];
  if (v66)
  {
    v67 = 1;
    do
    {
      v68 = *(v132 + 3);
      v69 = (***(*&v66 + 16))(*(*&v66 + 16));
      v70 = (*(*v68 + 88))(v68, v69);
      if (v67 == 1)
      {
        v67 = v70;
      }

      else if (v70 != 1 && v67 != v70)
      {
        v72 = dmlc::LogMessageFatal::GetEntry(&__p);
        dmlc::LogMessageFatal::Entry::Init(v72, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 719);
        v73 = dmlc::LogMessageFatal::GetEntry(&__p);
        v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "Check failed: n_targets == t || 1 == t", 38);
        v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, ": ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, "Inconsistent labels.", 20);
        dmlc::LogMessageFatal::~LogMessageFatal(&__p);
      }

      v66 = **&v66;
    }

    while (v66);
  }

  else
  {
    v67 = 1;
  }

  v76 = v132;
  v77 = *(v132 + 89);
  if (v77 == 1)
  {
    *(v132 + 89) = v67;
  }

  else if (v67 != 1 && v67 != v77)
  {
    v122 = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(v122, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 723);
    v123 = dmlc::LogMessageFatal::GetEntry(&__p);
    v124 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v123, "Check failed: n_targets == 1 || n_targets == mparam_.num_target", 63);
    v125 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v124, ": ", 2);
    v126 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v125, "Inconsistent configuration of num_target.  Configuration result from input data:", 80);
    v127 = MEMORY[0x277C68E50](v126, v67);
    v128 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v127, ", configuration from parameter:", 31);
    MEMORY[0x277C68E30](v128, *(v132 + 89));
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    v76 = v132;
  }

  v79 = (*(**(v76 + 3) + 80))(*(v76 + 3));
  v80 = (v132 + 464);
  v81.n128_u32[0] = *(v132 + 82);
  if (!*(v132 + 117) || v81.n128_f32[0] != v8)
  {
    v82 = (*(**(v132 + 3) + 72))(*(v132 + 3), v81);
    xgboost::LearnerModelParam::LearnerModelParam(&__p, v132 + 82, v79, v82);
    *v80 = __p.__begin_;
    *(v132 + 470) = *(&__p.__begin_ + 6);
  }

  v83 = *(v132 + 4);
  if (!v83)
  {
    goto LABEL_164;
  }

  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v84 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v84 = v140.__r_.__value_.__l.__size_;
  }

  v85 = *(v132 + 519);
  v86 = v85;
  if ((v85 & 0x80u) != 0)
  {
    v85 = *(v132 + 63);
  }

  if (v84 != v85 || ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v87 = &v140) : (v87 = v140.__r_.__value_.__r.__words[0]), (v88 = *v5, v86 >= 0) ? (v89 = v5) : (v89 = *v5), memcmp(v87, v89, v84)))
  {
LABEL_164:
    xgboost::GradientBooster::Create(v5, v131, v80);
    v83 = v90;
    v91 = *(v132 + 4);
    *(v132 + 4) = v83;
    if (v91)
    {
      (*(*v91 + 8))(v91);
      v83 = *(v132 + 4);
    }
  }

  (*(*v83 + 32))(v83, &v136);
  (*(**(v132 + 4) + 152))(*(v132 + 4));
  xgboost::GenericParameter::ConfigureGpuId(v131);
  v92 = *(v132 + 68);
  v93 = *(v132 + 69);
  if (v92 == v93)
  {
    goto LABEL_191;
  }

  v94 = (v132 + 40);
  do
  {
    v96 = *(v132 + 5);
    v95 = *(v132 + 6);
    while (v96 != v95)
    {
      v97 = (*(**v96 + 48))();
      v98 = strlen(v97);
      v99 = v98;
      v100 = *(v92 + 23);
      if (v100 < 0)
      {
        if (v98 != *(v92 + 8))
        {
          goto LABEL_177;
        }

        if (v98 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v101 = *v92;
      }

      else
      {
        v101 = v92;
        if (v99 != v100)
        {
          goto LABEL_177;
        }
      }

      if (!memcmp(v101, v97, v99))
      {
        goto LABEL_190;
      }

LABEL_177:
      v96 += 8;
    }

    v102 = xgboost::Metric::Create(v92, v131);
    v103 = v102;
    v105 = *(v132 + 6);
    v104 = *(v132 + 7);
    if (v105 >= v104)
    {
      v108 = *v94;
      v109 = v105 - *v94;
      v110 = (v109 >> 3) + 1;
      if (v110 >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v111 = v104 - v108;
      if (v111 >> 2 > v110)
      {
        v110 = v111 >> 2;
      }

      if (v111 >= 0x7FFFFFFFFFFFFFF8)
      {
        v112 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v112 = v110;
      }

      v145 = v132 + 40;
      if (v112)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<xgboost::Metric>>>(v112);
      }

      v107 = v132;
      v113 = (8 * (v109 >> 3));
      *v113 = v103;
      v106 = v113 + 1;
      memcpy(0, v108, v109);
      v114 = *(v132 + 5);
      *(v132 + 5) = 0;
      *(v132 + 6) = v106;
      v115 = *(v132 + 7);
      *(v132 + 7) = 0;
      __p.__end_cap_.__value_ = v114;
      v144 = v115;
      __p.__end_ = v114;
      __p.__begin_ = v114;
      std::__split_buffer<std::unique_ptr<xgboost::Metric>>::~__split_buffer(&__p);
    }

    else
    {
      *v105 = v102;
      v106 = v105 + 1;
      v107 = v132;
    }

    *(v107 + 6) = v106;
    *(v107 + 86) = 1;
LABEL_190:
    v92 += 24;
  }

  while (v92 != v93);
LABEL_191:
  v116 = *(v132 + 5);
  for (k = *(v132 + 6); v116 != k; ++v116)
  {
    (*(**v116 + 32))(*v116, &v136);
  }

  v118 = v132;
  atomic_store(0, v132 + 160);
  if (*(v118 + 93) == 1)
  {
    __p.__end_ = 0x300000000;
    v145 = 0;
    v144 = 0;
    __p.__begin_ = &unk_2883E6E50;
    __p.__end_cap_.__value_ = &v144;
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "Configure");
  xgboost::common::Monitor::Stop();
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  __p.__begin_ = &v136;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v141.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v140.__r_.__value_.__l.__data_);
  }

  v3 = v132;
LABEL_202:
  std::mutex::unlock((v3 + 96));
}

void sub_274DC9458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&STACK[0x230]);
  *(v31 - 216) = &a27;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100]((v31 - 216));
  xgboost::LearnerTrainParam::~LearnerTrainParam(&a31);
  std::mutex::unlock((a17 + 96));
  _Unwind_Resume(a1);
}

void xgboost::LearnerImpl::UpdateOneIter(uint64_t a1, uint64_t a2, void *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "UpdateOneIter");
  xgboost::common::Monitor::Start();
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 32))(a1);
  if (*(a1 + 80) == 1)
  {
    v6 = dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get();
    v7 = a2 - *(a1 + 72) + (*(a1 + 72) << 7);
    *v6 = v7;
    for (i = 1; i != 624; ++i)
    {
      v7 = i + 1812433253 * (v7 ^ (v7 >> 30));
      *(v6 + 4 * i) = v7;
    }

    *(v6 + 2496) = 0;
  }

  xgboost::LearnerImpl::CheckDataSplitMode(a1);
  xgboost::LearnerImpl::ValidateDMatrix(a1, *a3, 1);
  v9 = (*(*a1 + 248))(a1);
  v10 = a3[1];
  v18[0] = *a3;
  v18[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = xgboost::PredictionContainer::Cache(v9, v18, *(a1 + 88));
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "PredictRaw");
  xgboost::common::Monitor::Start();
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  xgboost::LearnerImpl::PredictRaw(a1, *a3, v11, 1, 0, 0);
  std::string::basic_string[abi:ne200100]<0>(&v16, "Predictions");
  if (v17 < 0)
  {
    operator delete(v16);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "PredictRaw");
  xgboost::common::Monitor::Stop();
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "GetGradient");
  xgboost::common::Monitor::Start();
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *(a1 + 24);
  v13 = (***a3)();
  (*(*v12 + 40))(v12, v11, v13, a2, a1 + 616);
  std::string::basic_string[abi:ne200100]<0>(__p, "GetGradient");
  xgboost::common::Monitor::Stop();
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v14, "Gradients");
  if (v15 < 0)
  {
    operator delete(v14);
  }

  (*(**(a1 + 32) + 80))(*(a1 + 32), *a3, a1 + 616, v11);
  std::string::basic_string[abi:ne200100]<0>(__p, "UpdateOneIter");
  xgboost::common::Monitor::Stop();
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274DC9C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::LearnerImpl::BoostOneIter(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "BoostOneIter");
  xgboost::common::Monitor::Start();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 32))(a1);
  if (*(a1 + 80) == 1)
  {
    v8 = dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get();
    v9 = a2 - *(a1 + 72) + (*(a1 + 72) << 7);
    *v8 = v9;
    for (i = 1; i != 624; ++i)
    {
      v9 = i + 1812433253 * (v9 ^ (v9 >> 30));
      *(v8 + 4 * i) = v9;
    }

    *(v8 + 2496) = 0;
  }

  xgboost::LearnerImpl::CheckDataSplitMode(a1);
  xgboost::LearnerImpl::ValidateDMatrix(a1, *a3, 1);
  v11 = (*(*a1 + 248))(a1);
  v12 = v11;
  v13 = *(a3 + 8);
  v17[0] = *a3;
  v17[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  xgboost::PredictionContainer::Cache(v11, v17, *(a1 + 88));
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(a1 + 32);
  v15 = *a3;
  v16 = xgboost::PredictionContainer::Entry(v12, v15);
  (*(*v14 + 80))(v14, v15, a4, v16);
  std::string::basic_string[abi:ne200100]<0>(__p, "BoostOneIter");
  xgboost::common::Monitor::Stop();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274DC9E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::LearnerImpl::EvalOneIter(int8x8_t *a1, uint64_t a2, __int128 **a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EvalOneIter");
  xgboost::common::Monitor::Start();
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 32))(a1);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v69);
  *(&v71[0].__locale_ + *(v69 - 24)) = 17;
  LOBYTE(__p[0]) = 91;
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, __p, 1);
  v6 = MEMORY[0x277C68E20](v5, a2);
  LOBYTE(__p[0]) = 93;
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, __p, 1);
  *(v7 + *(*v7 - 24) + 8) |= 4u;
  v8 = &a1[5];
  if (*&a1[6] == *&a1[5] && (a1[61].i8[0] & 1) == 0)
  {
    v9 = a1[67].i8[7];
    if (v9 < 0)
    {
      if (*&a1[66] != 15)
      {
LABEL_48:
        v35 = (*(**&a1[3] + 48))(*&a1[3]);
        std::string::basic_string[abi:ne200100]<0>(v74, v35);
        v36 = xgboost::Metric::Create(v74, &a1[8]);
        v37 = v36;
        v39 = a1[6];
        v38 = a1[7];
        if (v39 >= v38)
        {
          v41 = *v8;
          v42 = v39 - *v8;
          v43 = (v42 >> 3) + 1;
          if (v43 >> 61)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v44 = v38 - v41;
          if (v44 >> 2 > v43)
          {
            v43 = v44 >> 2;
          }

          if (v44 >= 0x7FFFFFFFFFFFFFF8)
          {
            v45 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v45 = v43;
          }

          v79 = a1 + 5;
          if (v45)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<xgboost::Metric>>>(v45);
          }

          v46 = (8 * (v42 >> 3));
          *v46 = v37;
          v40 = v46 + 1;
          memcpy(0, v41, v42);
          v47 = a1[5];
          a1[5] = 0;
          a1[6] = v40;
          v48 = a1[7];
          a1[7] = 0;
          v77 = v47;
          v78 = v48;
          __p[0] = v47;
          __p[1] = v47;
          std::__split_buffer<std::unique_ptr<xgboost::Metric>>::~__split_buffer(__p);
        }

        else
        {
          *v39 = v36;
          v40 = v39 + 1;
        }

        a1[6] = v40;
        if (v75 < 0)
        {
          operator delete(v74[0]);
          v40 = a1[6];
        }

        v49 = *(v40 - 1);
        std::vector<std::pair<std::string,std::string>>::vector[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,0>(__p, *&a1[21], &a1[22]);
        (*(*v49 + 32))(v49, __p);
        v74[0] = __p;
        std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v74);
        goto LABEL_62;
      }

      v10 = a1[65];
    }

    else
    {
      v10 = a1 + 65;
      if (v9 != 15)
      {
        goto LABEL_48;
      }
    }

    v11 = *v10;
    v12 = *(v10 + 7);
    if (*&v11 == 0x6C3A7972616E6962 && v12 == 0x7761727469676F6CLL)
    {
      std::string::basic_string[abi:ne200100]<0>(v67, "auc");
      std::string::basic_string[abi:ne200100]<0>(v65, "logloss");
      std::string::basic_string[abi:ne200100]<0>(v63, "1.4.0");
      if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v14, v15) + 4) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v74, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc");
        xgboost::ConsoleLogger::ConsoleLogger(__p, v74, 1205, 1);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Starting in XGBoost ", 20);
        v17 = (v64 & 0x80u) == 0 ? v63 : v63[0];
        v18 = (v64 & 0x80u) == 0 ? v64 : v63[1];
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", the default evaluation metric ", 32);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "used with the objective '", 25);
        v22 = a1[67].i8[7];
        v23 = v22 >= 0 ? &a1[65] : *&a1[65];
        v24 = v22 >= 0 ? a1[67].u8[7] : *&a1[66];
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "' was changed from '", 20);
        v27 = (v68 & 0x80u) == 0 ? v67 : v67[0];
        v28 = (v68 & 0x80u) == 0 ? v68 : v67[1];
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "' to '", 6);
        v31 = (v66 & 0x80u) == 0 ? v65 : v65[0];
        v32 = (v66 & 0x80u) == 0 ? v66 : v65[1];
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "'. Explicitly set eval_metric if you'd ", 39);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "like to restore the old behavior.", 33);
        xgboost::ConsoleLogger::~ConsoleLogger(__p);
        if (v75 < 0)
        {
          operator delete(v74[0]);
        }
      }

      if (v64 < 0)
      {
        operator delete(v63[0]);
      }

      if (v66 < 0)
      {
        operator delete(v65[0]);
      }

      if (v68 < 0)
      {
        operator delete(v67[0]);
      }
    }

    goto LABEL_48;
  }

LABEL_62:
  v58 = (*(*a1 + 248))(a1);
  v50 = *a3;
  if (a3[1] != *a3)
  {
    v51 = *v50;
    v52 = *(v50 + 1);
    if (v52)
    {
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v60 = v51;
    v62 = v51;
    v53 = xgboost::PredictionContainer::Cache(v58, &v62, a1[11].i32[0]);
    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    xgboost::LearnerImpl::ValidateDMatrix(a1, v60, 0);
    xgboost::LearnerImpl::PredictRaw(a1, v60, v53, 0, 0, 0);
    v61 = v60;
    if (v52)
    {
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v54 = xgboost::PredictionContainer::Cache(a1 + 78, &v61, a1[11].i32[0]);
    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    v56 = (*(*v53 + 8) - **v53) >> 2;
    LODWORD(__p[0]) = 0;
    std::vector<float>::resize(*v54, v56, __p, v55);
    xgboost::HostDeviceVector<float>::Copy();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "EvalOneIter");
  xgboost::common::Monitor::Stop();
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v69 = *MEMORY[0x277D82828];
  *(&v69 + *(v69 - 24)) = *(MEMORY[0x277D82828] + 24);
  v70 = MEMORY[0x277D82878] + 16;
  if (v72 < 0)
  {
    operator delete(v71[7].__locale_);
  }

  v70 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v71);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v73);
}

void sub_274DCA734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a73 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  std::ostringstream::~ostringstream(&a39);
  _Unwind_Resume(a1);
}

uint64_t xgboost::LearnerImpl::Predict(void **a1, xgboost::DMatrix **a2, uint64_t a3, void **a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v18 = a9 + a8 + a11;
  ((*a1)[4])(a1);
  v27 = 1;
  v28 = v18;
  if (v18 > 1)
  {
    dmlc::LogCheckFormat<int,int>(&v28, &v27);
  }

  if (a9)
  {
    return (*(*a1[4] + 120))(a1[4], *a2, a4, a5, a6, a10, 0, 0);
  }

  if (a11)
  {
    return (*(*a1[4] + 128))(a1[4], *a2, a4, a5, a6, a10);
  }

  if (!a8)
  {
    v20 = ((*a1)[31])(a1);
    v21 = a2[1];
    v25[0] = *a2;
    v25[1] = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = xgboost::PredictionContainer::Cache(v20, v25, *(a1 + 22));
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    xgboost::LearnerImpl::PredictRaw(a1, *a2, v22, a7, a5, a6);
    v23 = (*(*v22 + 8) - **v22) >> 2;
    LODWORD(v26) = 0;
    std::vector<float>::resize(*a4, v23, &v26, v24);
    xgboost::HostDeviceVector<float>::Copy();
  }

  return (*(*a1[4] + 112))(a1[4], *a2, a4, a5, a6, a10);
}

void sub_274DCAB80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::LearnerImpl::InplacePredict(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, float a8)
{
  (*(*a1 + 32))(a1);
  v16 = (*(*a1 + 224))(a1) + 144;
  v17 = *(a1 + 32);
  v18 = a3[1];
  v23 = *a3;
  v24 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v17 + 96))(v17, a2, &v23, v16, a6, a7, a8);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a4 != 1)
  {
    if (a4)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v22);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 1298);
      v20 = dmlc::LogMessageFatal::GetEntry(&v22);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Unsupported prediction type:", 28);
      MEMORY[0x277C68E20](v21, a4);
      dmlc::LogMessageFatal::~LogMessageFatal(&v22);
    }

    else
    {
      (*(**(a1 + 24) + 56))(*(a1 + 24), v16);
    }
  }

  *a5 = v16;
}

uint64_t xgboost::LearnerImpl::CalcFeatureScore(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  (*(*a1 + 32))(a1);
  v10 = a1[4];
  v11 = a3[1];
  v13[0] = *a3;
  v13[1] = v11;
  return (*(*v10 + 144))(v10, a2, v13, a4, a5);
}

uint64_t xgboost::LearnerImpl::BoostedRounds(xgboost::LearnerImpl *this)
{
  if (!*(this + 4))
  {
    return 0;
  }

  v2 = atomic_load(this + 160);
  if (v2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 1272);
    v5 = dmlc::LogMessageFatal::GetEntry(&v7);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: !this->need_configuration_", 40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
  }

  return (*(**(this + 4) + 72))(*(this + 4));
}

uint64_t xgboost::LearnerImpl::Groups(xgboost::LearnerImpl *this)
{
  v2 = atomic_load(this + 160);
  if (v2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 1276);
    v5 = dmlc::LogMessageFatal::GetEntry(&v7);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: !this->need_configuration_", 40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
  }

  return *(this + 118);
}

void xgboost::LearnerIO::LoadModel(xgboost::LearnerIO *this, void **a2)
{
  v3 = this;
  memset(&__n, 0, sizeof(__n));
  xgboost::XGBoostParameter<xgboost::GenericParameter>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v110, this + 64, &__n);
  v107[0] = v110;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v107);
  v107[0] = &__n;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v107);
  memset(&__n, 0, sizeof(__n));
  xgboost::LearnerTrainParam::__MANAGER__(v4);
  dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6BB0, v3 + 480, __n.__r_.__value_.__l.__data_, __n.__r_.__value_.__l.__size_, 0, 2);
  v107[0] = &__n;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v107);
  v107[0] = &unk_2883E1748;
  v107[1] = a2;
  v108 = 0u;
  v109 = 0u;
  memset(&__dst, 0, sizeof(__dst));
  std::string::resize(&__dst, 4uLL, 0);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  v6 = xgboost::common::PeekableInStream::PeekRead(v107, p_dst, 4uLL);
  v7 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (v6 != 4)
  {
    goto LABEL_20;
  }

  if ((*(&__dst.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (__dst.__r_.__value_.__l.__size_ == 4)
    {
      v8 = __dst.__r_.__value_.__r.__words[0];
LABEL_10:
      if (LODWORD(v8->__r_.__value_.__l.__data_) == 875983714)
      {
        dmlc::LogCheckFormat<std::string,char [5]>(&__dst, "bs64");
      }
    }
  }

  else if (HIBYTE(__dst.__r_.__value_.__r.__words[2]) == 4)
  {
    v8 = &__dst;
    goto LABEL_10;
  }

  v7 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((*(&__dst.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (__dst.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_20;
    }

    v9 = __dst.__r_.__value_.__r.__words[0];
    if (*__dst.__r_.__value_.__l.__data_ != 1718511970)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (HIBYTE(__dst.__r_.__value_.__r.__words[2]) != 4 || LODWORD(__dst.__r_.__value_.__l.__data_) != 1718511970)
    {
      goto LABEL_20;
    }

    v9 = &__dst;
  }

  v103 = xgboost::common::PeekableInStream::Read(v107, v9, 4uLL);
  LODWORD(v102.__r_.__value_.__l.__data_) = 4;
  if (v103 != 4)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v103, &v102);
  }

  v7 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
LABEL_20:
  v10 = v7 < 0;
  v11 = &__dst;
  if (v10)
  {
    v11 = __dst.__r_.__value_.__r.__words[0];
  }

  if (v11->__r_.__value_.__s.__data_[0] == 123)
  {
    xgboost::common::ReadAll(&__n, a2, v107);
    operator new();
  }

  v97 = (v3 + 328);
  v103 = (*v107[0])(v107);
  v102.__r_.__value_.__r.__words[0] = 136;
  if (v103 != 136)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v103, &v102);
  }

  if (!*(v3 + 89))
  {
    *(v3 + 89) = 1;
  }

  __n.__r_.__value_.__r.__words[0] = 0;
  v12 = (v3 + 520);
  if ((*v107[0])(v107, &__n, 8) != 8)
  {
    goto LABEL_197;
  }

  v13 = __n.__r_.__value_.__r.__words[0];
  std::string::resize((v3 + 520), __n.__r_.__value_.__r.__words[0], 0);
  if (__n.__r_.__value_.__r.__words[0])
  {
    v14 = v3 + 520;
    if (*(v3 + 543) < 0)
    {
      v14 = *v12;
    }

    if ((*v107[0])(v107, v14, v13) != v13)
    {
LABEL_197:
      Entry = dmlc::LogMessageFatal::GetEntry(&__n);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 874);
      v88 = dmlc::LogMessageFatal::GetEntry(&__n);
      v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "Check failed: fi->Read(&tparam_.objective)", 42);
      v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v90, "BoostLearner: wrong model format", 32);
      dmlc::LogMessageFatal::~LogMessageFatal(&__n);
    }
  }

  __n.__r_.__value_.__r.__words[0] = 0;
  if ((*v107[0])(v107, &__n, 8) != 8)
  {
    goto LABEL_198;
  }

  v15 = __n.__r_.__value_.__r.__words[0];
  std::string::resize((v3 + 496), __n.__r_.__value_.__r.__words[0], 0);
  if (__n.__r_.__value_.__r.__words[0])
  {
    v16 = v3 + 496;
    if (*(v3 + 519) < 0)
    {
      v16 = *(v3 + 62);
    }

    if ((*v107[0])(v107, v16, v15) != v15)
    {
LABEL_198:
      v91 = dmlc::LogMessageFatal::GetEntry(&__n);
      dmlc::LogMessageFatal::Entry::Init(v91, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 875);
      v92 = dmlc::LogMessageFatal::GetEntry(&__n);
      v93 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, "Check failed: fi->Read(&tparam_.booster)", 40);
      v94 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, "BoostLearner: wrong model format", 32);
      dmlc::LogMessageFatal::~LogMessageFatal(&__n);
    }
  }

  v17 = xgboost::ObjFunction::Create(v3 + 65, v3 + 64);
  v18 = *(v3 + 3);
  *(v3 + 3) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v96 = (v3 + 464);
  xgboost::GradientBooster::Create(v3 + 496, v3 + 64, v3 + 464);
  v20 = *(v3 + 4);
  *(v3 + 4) = v19;
  if (v20)
  {
    (*(*v20 + 8))(v20);
    v19 = *(v3 + 4);
  }

  (*(*v19 + 40))(v19, v107);
  if (!*(v3 + 85))
  {
    goto LABEL_129;
  }

  v95 = (v3 + 520);
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v111[0] = 0;
  if ((*v107[0])(v107, v111, 8) != 8)
  {
    goto LABEL_84;
  }

  v21 = v111[0];
  v22 = v104;
  v23 = 0xAAAAAAAAAAAAAAABLL * ((v104 - v103) >> 4);
  v24 = v111[0] - v23;
  if (v111[0] > v23)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v105 - v104) >> 4) < v24)
    {
      if (v111[0] <= 0x555555555555555uLL)
      {
        v25 = 0x5555555555555556 * ((v105 - v103) >> 4);
        if (v25 <= v111[0])
        {
          v25 = v111[0];
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v105 - v103) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v26 = 0x555555555555555;
        }

        else
        {
          v26 = v25;
        }

        v101 = &v103;
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(&v103, v26);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    bzero(v104, 48 * ((48 * v24 - 48) / 0x30) + 48);
    v104 = &v22[6 * ((48 * v24 - 48) / 0x30) + 6];
    if (v104 == v103)
    {
      v28 = 0;
    }

    else
    {
      v28 = v103;
    }

    goto LABEL_67;
  }

  if (v111[0] >= v23)
  {
    v27 = v104;
  }

  else
  {
    v27 = &v103[6 * v111[0]];
    while (v22 != v27)
    {
      v22 -= 6;
      std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](&v103, v22);
    }

    v104 = v27;
  }

  if (v27 == v103)
  {
    v28 = 0;
  }

  else
  {
    v28 = v103;
  }

  if (v21)
  {
LABEL_67:
    v29 = v21 - 1;
    do
    {
      __n.__r_.__value_.__r.__words[0] = 0;
      if ((*v107[0])(v107, &__n, 8) != 8)
      {
        break;
      }

      v30 = __n.__r_.__value_.__r.__words[0];
      std::string::resize(v28, __n.__r_.__value_.__r.__words[0], 0);
      if (__n.__r_.__value_.__r.__words[0])
      {
        v31 = v28;
        if (*(v28 + 23) < 0)
        {
          v31 = *v28;
        }

        if ((*v107[0])(v107, v31, v30) != v30)
        {
          break;
        }
      }

      __n.__r_.__value_.__r.__words[0] = 0;
      if ((*v107[0])(v107, &__n, 8) != 8)
      {
        break;
      }

      v32 = v28 + 3;
      v33 = __n.__r_.__value_.__r.__words[0];
      std::string::resize(v28 + 1, __n.__r_.__value_.__r.__words[0], 0);
      if (__n.__r_.__value_.__r.__words[0])
      {
        if (*(v28 + 47) < 0)
        {
          v32 = *v32;
        }

        v34 = (*v107[0])(v107, v32, v33) == v33;
      }

      else
      {
        v34 = 1;
      }

      v35 = v29-- != 0;
      v36 = v35;
      if (!v34)
      {
        break;
      }

      v28 += 6;
    }

    while (v36);
  }

LABEL_84:
  v37 = v103;
  v38 = v104;
  if (v103 == v104)
  {
    goto LABEL_125;
  }

  v98 = v3;
  v99 = (v3 + 576);
  do
  {
    std::string::basic_string[abi:ne200100]<0>(&__n, "SAVED_PARAM_");
    v39 = *(v37 + 23);
    if (v39 < 0)
    {
      v40 = *v37;
      v39 = v37[1];
    }

    else
    {
      v40 = v37;
    }

    v41 = HIBYTE(__n.__r_.__value_.__r.__words[2]);
    if ((__n.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_n = &__n;
    }

    else
    {
      p_n = __n.__r_.__value_.__r.__words[0];
    }

    if ((__n.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__n.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __n.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
LABEL_105:
      std::string::basic_string(&v102, v37, size, 0xFFFFFFFFFFFFFFFFLL, v111);
      v51 = *v99;
      if (*v99)
      {
        v52 = v99;
        do
        {
          v53 = std::less<std::string>::operator()[abi:ne200100](v3 + 568, v51 + 4, &v102.__r_.__value_.__l.__data_);
          v54 = v53;
          if (!v53)
          {
            v52 = v51;
          }

          v51 = v51[v54];
        }

        while (v51);
        if (v52 != v99 && !std::less<std::string>::operator()[abi:ne200100](v3 + 568, &v102.__r_.__value_.__l.__data_, v52 + 4))
        {
          v111[0] = &v102;
          v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3 + 168, &v102.__r_.__value_.__l.__data_);
          std::string::operator=((v55 + 56), v37 + 1);
        }
      }

      if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v102.__r_.__value_.__l.__data_);
      }

      v41 = HIBYTE(__n.__r_.__value_.__r.__words[2]);
LABEL_119:
      if ((v41 & 0x80) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_120;
    }

    if (v39 < size)
    {
      goto LABEL_119;
    }

    v44 = v38;
    v45 = &v40[v39];
    v46 = p_n->__r_.__value_.__s.__data_[0];
    v47 = v40;
    do
    {
      v48 = v39 - size;
      if (v48 == -1)
      {
        break;
      }

      v49 = memchr(v47, v46, v48 + 1);
      if (!v49)
      {
        break;
      }

      v50 = v49;
      if (!memcmp(v49, p_n, size))
      {
        if (v50 != v45)
        {
          v38 = v44;
          v3 = v98;
          if (v50 != v40)
          {
            goto LABEL_119;
          }

          goto LABEL_105;
        }

        break;
      }

      v47 = v50 + 1;
      v39 = v45 - (v50 + 1);
    }

    while (v39 >= size);
    v38 = v44;
    v3 = v98;
    if ((v41 & 0x80) == 0)
    {
      goto LABEL_121;
    }

LABEL_120:
    operator delete(__n.__r_.__value_.__l.__data_);
LABEL_121:
    v37 += 6;
  }

  while (v37 != v38);
  v37 = v103;
  v38 = v104;
LABEL_125:
  std::map<std::string,std::string>::map[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string> *>>(&__n, v37, v38);
  v56 = v3 + 200;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v3 + 192, *(v3 + 25));
  v57 = __n.__r_.__value_.__l.__size_;
  *(v3 + 24) = __n.__r_.__value_.__r.__words[0];
  *(v3 + 25) = v57;
  v58 = __n.__r_.__value_.__r.__words[2];
  *(v3 + 26) = *(&__n.__r_.__value_.__l + 2);
  if (v58)
  {
    v57[2] = v56;
    __n.__r_.__value_.__r.__words[0] = &__n.__r_.__value_.__l.__size_;
    *&__n.__r_.__value_.__r.__words[1] = 0uLL;
    v57 = 0;
  }

  else
  {
    *(v3 + 24) = v56;
  }

  v12 = v95;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&__n, v57);
  __n.__r_.__value_.__r.__words[0] = &v103;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__n);
LABEL_129:
  std::string::basic_string[abi:ne200100]<0>(&__n, "count_poisson_max_delta_step");
  v59 = v12;
  v60 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v3 + 192, &__n.__r_.__value_.__l.__data_);
  v61 = v3 + 200;
  if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__n.__r_.__value_.__l.__data_);
  }

  if (v61 != v60)
  {
    std::string::basic_string[abi:ne200100]<0>(&__n, "count_poisson_max_delta_step");
    v62 = std::map<std::string,xgboost::Json>::at(v3 + 192, &__n.__r_.__value_.__l.__data_);
    std::string::basic_string[abi:ne200100]<0>(&v103, "max_delta_step");
    v102.__r_.__value_.__r.__words[0] = &v103;
    v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3 + 168, &v103);
    std::string::operator=((v63 + 56), v62);
    if (SHIBYTE(v105) < 0)
    {
      operator delete(v103);
    }

    if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__n.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__n, "count_poisson_max_delta_step");
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__erase_unique<std::string>(v3 + 24, &__n.__r_.__value_.__l.__data_);
    if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__n.__r_.__value_.__l.__data_);
    }
  }

  if (!*(v3 + 87))
  {
    std::string::basic_string[abi:ne200100]<0>(&__n, "multi:");
    v64 = HIBYTE(__n.__r_.__value_.__r.__words[2]);
    if ((__n.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = &__n;
    }

    else
    {
      v65 = __n.__r_.__value_.__r.__words[0];
    }

    if ((__n.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = HIBYTE(__n.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v66 = __n.__r_.__value_.__l.__size_;
    }

    if (*(v3 + 543) < 0)
    {
      v67 = *v59;
    }

    else
    {
      v67 = v59;
    }

    if (memcmp(v65, v67, v66))
    {
      xgboost::HostDeviceVector<float>::HostDeviceVector();
    }

    if (v64 < 0)
    {
      operator delete(__n.__r_.__value_.__l.__data_);
    }
  }

  v68 = (*(**(v3 + 3) + 72))(*(v3 + 3), *(v3 + 82));
  v69 = (*(**(v3 + 3) + 80))(*(v3 + 3));
  xgboost::LearnerModelParam::LearnerModelParam(&__n, v97, v69, v68);
  *v96 = __n.__r_.__value_.__r.__words[0];
  *(v96 + 6) = *(__n.__r_.__value_.__r.__words + 6);
  std::string::basic_string[abi:ne200100]<0>(&__n, "objective");
  v70 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v3 + 192, &__n.__r_.__value_.__l.__data_);
  if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__n.__r_.__value_.__l.__data_);
  }

  if (v61 != v70)
  {
    std::string::basic_string[abi:ne200100]<0>(&v103, "objective");
    v71 = std::map<std::string,xgboost::Json>::at(v3 + 192, &v103);
    if (*(v71 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__n, *v71, *(v71 + 8));
    }

    else
    {
      v72 = *v71;
      __n.__r_.__value_.__r.__words[2] = *(v71 + 16);
      *&__n.__r_.__value_.__l.__data_ = v72;
    }

    if (SHIBYTE(v105) < 0)
    {
      operator delete(v103);
    }

    xgboost::Json::Load();
  }

  std::string::basic_string[abi:ne200100]<0>(&__n, "metrics");
  v73 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v3 + 192, &__n.__r_.__value_.__l.__data_);
  v76 = v73;
  if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__n.__r_.__value_.__l.__data_);
  }

  if (v61 != v76)
  {
    std::string::basic_string[abi:ne200100]<0>(&v103, "metrics");
    v77 = std::map<std::string,xgboost::Json>::at(v3 + 192, &v103);
    if (*(v77 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__n, *v77, *(v77 + 8));
    }

    else
    {
      v78 = *v77;
      __n.__r_.__value_.__r.__words[2] = *(v77 + 16);
      *&__n.__r_.__value_.__l.__data_ = v78;
    }

    if (SHIBYTE(v105) < 0)
    {
      operator delete(v103);
    }

    xgboost::common::Split(&__n, 0x3Bu, &v103);
    std::string::basic_string[abi:ne200100]<0>(&v102, "metrics");
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__erase_unique<std::string>(v3 + 24, &v102.__r_.__value_.__l.__data_);
    if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v102.__r_.__value_.__l.__data_);
    }

    v79 = v103;
    for (i = v104; v79 != i; v79 += 3)
    {
      (*(*v3 + 128))(v3, &xgboost::LearnerConfiguration::kEvalMetric, v79);
    }

    v102.__r_.__value_.__r.__words[0] = &v103;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v102);
    if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__n.__r_.__value_.__l.__data_);
    }
  }

  if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v74, v75) + 4) > 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v103, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc");
    xgboost::ConsoleLogger::ConsoleLogger(&__n, &v103, 940, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__n, "Loading model from XGBoost < 1.0.0, consider saving it again for improved compatibility", 87);
    xgboost::ConsoleLogger::~ConsoleLogger(&__n);
    if (SHIBYTE(v105) < 0)
    {
      operator delete(v103);
    }
  }

  *(v3 + 348) = 0x600000001;
  xgboost::common::ToString<int>(&__n, v3 + 84);
  std::string::basic_string[abi:ne200100]<0>(&v103, "num_class");
  v102.__r_.__value_.__r.__words[0] = &v103;
  v81 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3 + 168, &v103);
  v82 = v81;
  if (*(v81 + 79) < 0)
  {
    operator delete(*(v81 + 56));
  }

  *(v82 + 56) = __n;
  *(&__n.__r_.__value_.__s + 23) = 0;
  __n.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v105) < 0)
  {
    operator delete(v103);
    if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__n.__r_.__value_.__l.__data_);
    }
  }

  xgboost::common::ToString<unsigned int>(&__n, v3 + 83);
  std::string::basic_string[abi:ne200100]<0>(&v103, "num_feature");
  v102.__r_.__value_.__r.__words[0] = &v103;
  v83 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3 + 168, &v103);
  v84 = v83;
  if (*(v83 + 79) < 0)
  {
    operator delete(*(v83 + 56));
  }

  *(v84 + 56) = __n;
  *(&__n.__r_.__value_.__s + 23) = 0;
  __n.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v105) < 0)
  {
    operator delete(v103);
    if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__n.__r_.__value_.__l.__data_);
    }
  }

  xgboost::LearnerTrainParam::__MANAGER__(v83);
  dmlc::parameter::ParamManager::GetDict(&stru_280AF6BB0, &__n);
  std::map<std::string,std::string>::map[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string> *>>(&v103, __n.__r_.__value_.__l.__data_, __n.__r_.__value_.__l.__size_);
  v102.__r_.__value_.__r.__words[0] = &__n;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v102);
  v85 = std::map<std::string,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v3 + 168, v103, &v104);
  if (!*(v3 + 121))
  {
    Engine = rabit::engine::GetEngine(v85);
    if ((*(*Engine + 80))(Engine))
    {
      *(v3 + 121) = 2;
    }
  }

  atomic_store(1u, v3 + 160);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v103, v104);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v107[0] = &unk_2883E1748;
  if (SHIBYTE(v109) < 0)
  {
    operator delete(*(&v108 + 1));
  }
}

void sub_274DCC5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (*(v57 - 201) < 0)
  {
    operator delete(*(v57 - 224));
  }

  *(v57 - 200) = a12;
  if (*(v57 - 153) < 0)
  {
    operator delete(*(v57 - 176));
  }

  _Unwind_Resume(exception_object);
}

void xgboost::LearnerIO::SaveModel(uint64_t a1)
{
  v17 = *(a1 + 456);
  v1 = *(a1 + 440);
  v15 = *(a1 + 424);
  v16 = v1;
  v2 = *(a1 + 376);
  v11 = *(a1 + 360);
  v12 = v2;
  v3 = *(a1 + 408);
  v13 = *(a1 + 392);
  v14 = v3;
  v4 = *(a1 + 344);
  v9 = *(a1 + 328);
  v10 = v4;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  HIDWORD(v9) = 1;
  memset(&v5, 0, 24);
  v18.__first_ = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
  v5.__begin_ = 0x300000000;
  v5.__end_cap_.__value_ = 0;
  v5.__end_cap_.__value_ = 0;
  v5.__first_ = &unk_2883E6E50;
  v5.__end_ = &v5.__end_cap_;
  operator new();
}

void sub_274DCD364(_Unwind_Exception *__p, uint64_t a2, int a3, __int16 a4, char a5, char a6, std::__split_buffer<std::pair<std::string, std::string>> *a7, uint64_t a8, char *__pa, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer((v48 - 136));
  if (SHIBYTE(a11) < 0)
  {
    operator delete(__pa);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12);
  __pa = &a48;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__pa);
  _Unwind_Resume(__p);
}

uint64_t xgboost::LearnerConfiguration::SetParams(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      result = (*(*v4 + 128))(v4, v2, v2 + 24);
      v2 += 48;
    }

    while (v2 != v3);
  }

  return result;
}

std::string *xgboost::LearnerConfiguration::SetParam(uint64_t a1, uint64_t a2, const void **a3)
{
  atomic_store(1u, (a1 + 160));
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = *(&xgboost::LearnerConfiguration::kEvalMetric + 1);
  if (byte_280AF7597 >= 0)
  {
    v8 = byte_280AF7597;
  }

  if (v7 == v8 && (v6 >= 0 ? (v9 = a2) : (v9 = *a2), byte_280AF7597 >= 0 ? (v10 = &xgboost::LearnerConfiguration::kEvalMetric) : (v10 = xgboost::LearnerConfiguration::kEvalMetric), result = memcmp(v9, v10, v7), !result))
  {
    v13 = *(a1 + 544);
    v14 = *(a1 + 552);
    if (v13 != v14)
    {
      v15 = *(a3 + 23);
      if (v15 >= 0)
      {
        v16 = *(a3 + 23);
      }

      else
      {
        v16 = a3[1];
      }

      if (v15 >= 0)
      {
        v17 = a3;
      }

      else
      {
        v17 = *a3;
      }

      while (1)
      {
        v18 = *(v13 + 23);
        v19 = v18;
        if ((v18 & 0x80u) != 0)
        {
          v18 = *(v13 + 8);
        }

        if (v18 == v16)
        {
          v20 = v19 >= 0 ? v13 : *v13;
          result = memcmp(v20, v17, v16);
          if (!result)
          {
            break;
          }
        }

        v13 += 24;
        if (v13 == v14)
        {
          goto LABEL_33;
        }
      }
    }

    if (v13 == v14)
    {
LABEL_33:
      v21 = a1 + 544;
      if (v14 >= *(a1 + 560))
      {
        result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v21, a3);
      }

      else
      {
        std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(v21, a3);
        result = v14 + 1;
      }

      *(a1 + 552) = result;
    }
  }

  else
  {
    v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 168, a2);
    return std::string::operator=((v12 + 56), a3);
  }

  return result;
}

std::string *xgboost::LearnerConfiguration::SetAttr(uint64_t a1, const void **a2, const std::string *a3)
{
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 192, a2);
  result = std::string::operator=((v5 + 56), a3);
  *(a1 + 340) = 1;
  return result;
}

uint64_t xgboost::LearnerConfiguration::GetAttr(uint64_t a1, const void **a2, std::string *a3)
{
  v3 = a1 + 200;
  v4 = *(a1 + 200);
  if (!v4)
  {
    return 0;
  }

  v7 = a1 + 200;
  do
  {
    v8 = std::less<std::string>::operator()[abi:ne200100](v3 - 8, (v4 + 32), a2);
    if (v8)
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    if (!v8)
    {
      v7 = v4;
    }

    v4 = *(v4 + v9);
  }

  while (v4);
  if (v7 == v3 || std::less<std::string>::operator()[abi:ne200100](v3 - 8, a2, (v7 + 32)))
  {
    return 0;
  }

  std::string::operator=(a3, (v7 + 56));
  return 1;
}

BOOL xgboost::LearnerConfiguration::DelAttr(uint64_t a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a1 + 192, a2);
  if ((a1 + 200) != v3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer((a1 + 192), v3);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v3 + 4));
    operator delete(v3);
  }

  return a1 + 200 != v3;
}

void xgboost::LearnerConfiguration::GetAttrNames(xgboost::LearnerConfiguration *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 24);
  v3 = this + 200;
  if (v2 != (this + 200))
  {
    v5 = 0;
    do
    {
      if (v5 >= a2[2])
      {
        v5 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a2, v2 + 2);
      }

      else
      {
        std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a2, v2 + 2);
        ++v5;
      }

      a2[1] = v5;
      v6 = *(v2 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v2 + 2);
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }
}

void sub_274DCD918(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::LearnerConfiguration::SetFeatureNames(std::vector<std::string> *a1, std::string **a2)
{
  v2 = a1 + 9;
  if (v2 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }
}

void xgboost::LearnerConfiguration::GetFeatureNames(std::vector<std::string> *a1, std::vector<std::string> *a2)
{
  if (&a1[9] != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a2, a1[9].__begin_, a1[9].__end_, 0xAAAAAAAAAAAAAAABLL * ((a1[9].__end_ - a1[9].__begin_) >> 3));
  }
}

void xgboost::LearnerConfiguration::SetFeatureTypes(std::vector<std::string> *a1, std::string **a2)
{
  v2 = a1 + 10;
  if (v2 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }
}

void xgboost::LearnerConfiguration::GetFeatureTypes(std::vector<std::string> *a1, std::vector<std::string> *a2)
{
  if (&a1[10] != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a2, a1[10].__begin_, a1[10].__end_, 0xAAAAAAAAAAAAAAABLL * ((a1[10].__end_ - a1[10].__begin_) >> 3));
  }
}

void xgboost::LearnerImpl::Slice(xgboost::LearnerImpl *this, int a2, int a3, int a4, BOOL *a5)
{
  (*(*this + 32))(this);
  LODWORD(v7) = 0;
  if (*(this + 117))
  {
    LODWORD(v7) = a2;
    v8 = 0;
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    dmlc::LogCheckFormat<int,int>(&v7, &v8);
  }

  dmlc::LogCheckFormat<unsigned int,int>(this + 117, &v7);
}

void sub_274DCE128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, atomic_uint *a26)
{
  if (a26)
  {
    if (atomic_fetch_add_explicit(a26 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a26 + 8))(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void xgboost::LearnerImpl::DumpModel(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 32))(a1);
  v8 = a1[4];
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  (*(*v8 + 136))(v8, a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_274DCE380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *xgboost::LearnerImpl::GetThreadLocal(xgboost::LearnerImpl *this)
{
  v2 = *(dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::XGBAPIThreadLocalEntry>>::Get() + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= this)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= this)
    {
      return v3 + 5;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_274DCE4D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *xgboost::LearnerConfiguration::GetPredictionCache(xgboost::LearnerConfiguration *this)
{
  v2 = dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::PredictionContainer>>::Get();
  v4[0] = this;
  v4[1] = v4;
  return std::__tree<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::__map_value_compare<xgboost::Learner const*,std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::less<xgboost::Learner const*>,true>,std::allocator<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>>>::__emplace_unique_key_args<xgboost::Learner const*,std::piecewise_construct_t const&,std::tuple<xgboost::Learner const*&&>,std::tuple<>>(v2, this) + 5;
}

void xgboost::LearnerConfiguration::LoadConfig(xgboost::LearnerConfiguration *this, char ***a2)
{
  if (*(*a2 + 3) != 3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 409);
    v66 = dmlc::LogMessageFatal::GetEntry(&__p);
    v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "Check failed: IsA<Object>(in)", 29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
  }

  xgboost::Version::Load(a2, a2);
  std::string::basic_string[abi:ne200100]<0>(&__p, "learner");
  v4 = (*(**a2 + 3))(*a2, &__p);
  v5 = xgboost::Cast<xgboost::JsonObject,xgboost::Value>(*v4);
  if (SHIBYTE(v76) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(v78, "learner_train_param");
  v6 = std::map<std::string,xgboost::Json>::at(v5 + 16, v78);
  v7 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v6);
  v75 = 0;
  v76 = 0;
  __p = &v75;
  v8 = *(v7 + 2);
  v9 = (v7 + 24);
  if (v8 != (v7 + 24))
  {
    do
    {
      v10 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v8[7]);
      v83 = v8 + 4;
      v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__p, v8 + 4);
      v7 = std::string::operator=((v11 + 56), (v10 + 16));
      v12 = v8[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v8[2];
          v14 = *v13 == v8;
          v8 = v13;
        }

        while (!v14);
      }

      v8 = v13;
    }

    while (v13 != v9);
  }

  if (*(this + 480) == 1)
  {
    v80 = 0;
    v81 = 0;
    v82 = 0;
    xgboost::LearnerTrainParam::__MANAGER__(v7);
    dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6BB0, this + 480, __p, &v75, 0, &v80, 0);
  }

  else
  {
    v80 = 0;
    v81 = 0;
    v82 = 0;
    xgboost::LearnerTrainParam::__MANAGER__(v7);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6BB0, this + 480, __p, &v75, &v80, 0);
    *(this + 480) = 1;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&__p, v75);
  __p = &v80;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v79 < 0)
  {
    operator delete(v78[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "gradient_booster");
  v15 = std::map<std::string,xgboost::Json>::at(v5 + 16, &__p);
  if (SHIBYTE(v76) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "objective");
  v16 = std::map<std::string,xgboost::Json>::at(v5 + 16, &__p);
  if (SHIBYTE(v76) < 0)
  {
    operator delete(__p);
  }

  v17 = *(this + 3);
  if (!v17)
  {
    v17 = xgboost::ObjFunction::Create(this + 65, this + 64);
    v18 = *(this + 3);
    *(this + 3) = v17;
    if (v18)
    {
      (*(*v18 + 8))(v18);
      v17 = *(this + 3);
    }
  }

  (*(*v17 + 16))(v17, v16);
  *(this + 238) = (*(**(this + 3) + 80))(*(this + 3));
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  v19 = (*(**v15 + 24))(*v15, &__p);
  v20 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v19);
  std::string::operator=((this + 496), (v20 + 16));
  if (SHIBYTE(v76) < 0)
  {
    operator delete(__p);
  }

  v21 = *(this + 4);
  if (!v21)
  {
    xgboost::GradientBooster::Create(this + 496, this + 64, this + 464);
    v22 = *(this + 4);
    *(this + 4) = v21;
    if (v22)
    {
      (*(*v22 + 8))(v22);
      v21 = *(this + 4);
    }
  }

  (*(*(v21 + 8) + 16))();
  std::string::basic_string[abi:ne200100]<0>(&__p, "metrics");
  v23 = std::map<std::string,xgboost::Json>::at(v5 + 16, &__p);
  if (SHIBYTE(v76) < 0)
  {
    operator delete(__p);
  }

  v24 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v23);
  v25 = v24[2];
  v69 = v24[3];
  v26 = (v69 - v25) >> 3;
  v27 = (this + 544);
  std::vector<std::string>::resize((this + 544), v26);
  v30 = *(this + 5);
  v31 = *(this + 6);
  v32 = (this + 40);
  v33 = (v31 - v30) >> 3;
  v68 = v5;
  if (v26 <= v33)
  {
    v39 = v69;
    if (v26 < v33)
    {
      v40 = (v30 + v69 - v25);
      while (v31 != v40)
      {
        v42 = *--v31;
        v41 = v42;
        *v31 = 0;
        if (v42)
        {
          (*(*v41 + 8))(v41);
        }
      }

      *(this + 6) = v40;
    }
  }

  else
  {
    v34 = v26 - v33;
    v35 = *(this + 7);
    if (v34 > (v35 - v31) >> 3)
    {
      if (!(v26 >> 61))
      {
        v36 = v35 - v30;
        v37 = v36 >> 2;
        if (v36 >> 2 <= v26)
        {
          v37 = (v69 - v25) >> 3;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF8)
        {
          v38 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        v77 = this + 40;
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<xgboost::Metric>>>(v38);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    bzero(v31, 8 * v34);
    *(this + 6) = &v31[v34];
    v39 = v69;
  }

  if (v39 != v25)
  {
    if (v26 <= 1)
    {
      v43 = 1;
    }

    else
    {
      v43 = (v69 - v25) >> 3;
    }

    v70 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v28, v29);
    v44 = 0;
    do
    {
      v45 = *(*(*(**v23 + 4))(*v23, v44) + 12);
      if (v45)
      {
        v46 = (*(**v23 + 4))(*v23, v44);
        std::string::basic_string[abi:ne200100]<0>(&__p, "name");
        v47 = (*(**v46 + 24))(*v46, &__p);
        v48 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v47);
        std::string::operator=((*v27 + 24 * v44), (v48 + 16));
        if (SHIBYTE(v76) < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        if (*(v70 + 4) >= 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v78, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc");
          xgboost::ConsoleLogger::ConsoleLogger(&__p, v78, 438, 1);
          for (i = 0; i != 381; ++i)
          {
            v50 = aIfYouAreLoadin[i];
            std::ostream::put();
          }

          xgboost::ConsoleLogger::~ConsoleLogger(&__p);
          if (v79 < 0)
          {
            operator delete(v78[0]);
          }
        }

        v51 = (*(**v23 + 4))(*v23, v44);
        v52 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v51);
        std::string::operator=((*v27 + 24 * v44), (v52 + 16));
      }

      v53 = xgboost::Metric::Create(*v27 + 24 * v44, this + 64);
      v54 = *(*v32 + 8 * v44);
      *(*v32 + 8 * v44) = v53;
      if (v54)
      {
        (*(*v54 + 8))(v54);
      }

      if (v45)
      {
        v55 = *(*v32 + 8 * v44);
        v56 = (*(**v23 + 4))(*v23, v44);
        (*(*v55 + 16))(v55, v56);
      }

      ++v44;
    }

    while (v44 != v43);
  }

  std::string::basic_string[abi:ne200100]<0>(v78, "generic_param");
  v57 = std::map<std::string,xgboost::Json>::at(v68 + 16, v78);
  v58 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v57);
  v75 = 0;
  v76 = 0;
  __p = &v75;
  v59 = *(v58 + 2);
  v60 = (v58 + 24);
  if (v59 != (v58 + 24))
  {
    do
    {
      v61 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v59[7]);
      v83 = v59 + 4;
      v62 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__p, v59 + 4);
      v58 = std::string::operator=((v62 + 56), (v61 + 16));
      v63 = v59[1];
      if (v63)
      {
        do
        {
          v64 = v63;
          v63 = *v63;
        }

        while (v63);
      }

      else
      {
        do
        {
          v64 = v59[2];
          v14 = *v64 == v59;
          v59 = v64;
        }

        while (!v14);
      }

      v59 = v64;
    }

    while (v64 != v60);
  }

  if (*(this + 64) == 1)
  {
    v71 = 0;
    v72 = 0;
    v73 = 0;
    xgboost::GenericParameter::__MANAGER__(v58);
    dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6BF8, this + 64, __p, &v75, 0, &v71, 0);
  }

  else
  {
    v71 = 0;
    v72 = 0;
    v73 = 0;
    xgboost::GenericParameter::__MANAGER__(v58);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6BF8, this + 64, __p, &v75, &v71, 0);
    *(this + 64) = 1;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&__p, v75);
  __p = &v71;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v79 < 0)
  {
    operator delete(v78[0]);
  }

  xgboost::GenericParameter::ConfigureGpuId((this + 64));
  atomic_store(1u, this + 160);
}

void sub_274DCEEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

void xgboost::LearnerConfiguration::SaveConfig(xgboost::LearnerConfiguration *this, xgboost::Json *a2)
{
  v3 = atomic_load(this + 160);
  if (v3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 457);
    v5 = dmlc::LogMessageFatal::GetEntry(&v8);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: !this->need_configuration_", 40);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Call Configure before saving model.", 35);
    dmlc::LogMessageFatal::~LogMessageFatal(&v8);
  }

  xgboost::Version::Save(a2, a2);
}

void xgboost::LearnerIO::Save()
{
  v1 = 0x300000000;
  v3 = 0uLL;
  v0 = &unk_2883E6E50;
  v2 = &v3;
  operator new();
}

void sub_274DD0068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (atomic_fetch_add_explicit(v23 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v23 + 8))(v23);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::LearnerIO::Load(xgboost::LearnerIO *this, char **a2)
{
  v32[0] = &unk_2883E1748;
  v32[1] = a2;
  v33 = 0u;
  v34 = 0u;
  xgboost::common::PeekableInStream::PeekRead(v32, &v31, 2uLL);
  if (v31 == 123)
  {
    xgboost::common::ReadAll(&v30, a2, v32);
    operator new();
  }

  memset(&v30, 0, sizeof(v30));
  v4 = *(this + 615);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(this + 75);
  }

  std::string::resize(&v30, v4, 0);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v30;
  }

  else
  {
    v5 = v30.__r_.__value_.__r.__words[0];
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v30.__r_.__value_.__l.__size_;
  }

  v7 = xgboost::common::PeekableInStream::Read(v32, v5, size);
  __p[0] = v7;
  v8 = *(this + 615);
  if (v8 < 0)
  {
    v8 = *(this + 75);
  }

  __dst = v8;
  if (v7 != v8)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(__p, &__dst);
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v30.__r_.__value_.__l.__size_;
  }

  v10 = *(this + 615);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(this + 75);
  }

  if (v9 != v10 || ((v12 = (this + 592), (v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v13 = &v30) : (v13 = v30.__r_.__value_.__r.__words[0]), (v14 = *v12, v11 >= 0) ? (v15 = this + 592) : (v15 = *v12), memcmp(v13, v15, v9)))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v26);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 1059);
    v19 = dmlc::LogMessageFatal::GetEntry(v26);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Check failed: header == serialisation_header_", 45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ": ", 2);
    for (i = 0; i != 381; ++i)
    {
      v22 = aIfYouAreLoadin[i];
      std::ostream::put();
    }

    dmlc::LogMessageFatal::~LogMessageFatal(v26);
  }

  __dst = -1;
  v23 = 8;
  __p[0] = xgboost::common::PeekableInStream::Read(v32, &__dst, 8uLL);
  if (__p[0] != 8)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(__p, &v23);
  }

  LODWORD(__p[0]) = 0;
  if (__dst >= 1)
  {
    v16 = __dst;
    xgboost::common::FixedSizeStream::FixedSizeStream(v26, v32);
    *__p = v27;
    v25 = v28;
    HIBYTE(v28) = 0;
    LOBYTE(v27) = 0;
    xgboost::common::FixedSizeStream::~FixedSizeStream(v26);
    if (v25 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    v26[0] = &unk_2883E11A8;
    v26[1] = v17;
    v26[2] = v16;
    v26[3] = 0;
    (*(*this + 104))(this, v26);
    xgboost::Json::Load();
  }

  dmlc::LogCheckFormat<long long,int>(&__dst, __p);
}

void sub_274DD0AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v23 - 105) < 0)
  {
    operator delete(*(v23 - 128));
  }

  *(v23 - 96) = v22;
  if (*(v23 - 49) < 0)
  {
    operator delete(*(v23 - 72));
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toxgboost::LearnerImpl::~LearnerImpl(xgboost::LearnerImpl *this)
{
  xgboost::LearnerImpl::~LearnerImpl((this - 8));
}

{
  xgboost::LearnerImpl::~LearnerImpl((this - 8));
}

{
  xgboost::LearnerImpl::~LearnerImpl((this - 16));
}

{
  xgboost::LearnerImpl::~LearnerImpl((this - 16));
}

void xgboost::LearnerConfiguration::~LearnerConfiguration(xgboost::LearnerConfiguration *this)
{
  *this = &unk_2883E52E8;
  *(this + 1) = &unk_2883E5408;
  *(this + 2) = &unk_2883E5438;
  v2 = dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::PredictionContainer>>::Get();
  v4 = v2 + 1;
  v3 = v2[1];
  if (v3)
  {
    v5 = v2 + 1;
    v6 = v2[1];
    do
    {
      v7 = v6[4];
      v8 = v7 >= this;
      v9 = v7 < this;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= this)
    {
      v10 = v2 + 1;
      v11 = v2[1];
      do
      {
        v12 = *(v11 + 32);
        v8 = v12 >= this;
        v13 = v12 < this;
        if (v8)
        {
          v10 = v11;
        }

        v11 = *(v11 + 8 * v13);
      }

      while (v11);
      if (v10 != v4 && v10[4] <= this)
      {
        v14 = v10[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          v16 = v10;
          do
          {
            v15 = v16[2];
            v17 = *v15 == v16;
            v16 = v15;
          }

          while (!v17);
        }

        if (*v2 == v10)
        {
          *v2 = v15;
        }

        --v2[2];
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v10);
        std::__hash_table<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::__unordered_map_hasher<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::hash<xgboost::DMatrix *>,std::equal_to<xgboost::DMatrix *>,true>,std::__unordered_map_equal<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::equal_to<xgboost::DMatrix *>,std::hash<xgboost::DMatrix *>,true>,std::allocator<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>>>::~__hash_table((v10 + 5));
        operator delete(v10);
      }
    }
  }

  v18 = (this + 544);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
  if (*(this + 543) < 0)
  {
    operator delete(*(this + 65));
  }

  if (*(this + 519) < 0)
  {
    operator delete(*(this + 62));
  }

  xgboost::common::Monitor::~Monitor(this + 33);
  v18 = (this + 240);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = (this + 216);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 192, *(this + 25));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 168, *(this + 22));
  std::mutex::~mutex((this + 96));
  xgboost::Learner::~Learner(this);
}

uint64_t dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::PredictionContainer>>::Get()
{
  {
    v2 = dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::PredictionContainer>>::Get(void)::inst(&dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::PredictionContainer>>::Get(void)::inst);
    v2[2] = 0;
    v2[1] = 0;
    *v2 = v2 + 1;
    _tlv_atexit(std::map<xgboost::Learner const*,xgboost::PredictionContainer>::~map[abi:ne200100], v2);
  }

  return dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::PredictionContainer>>::Get(void)::inst(&dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::PredictionContainer>>::Get(void)::inst);
}

void xgboost::LearnerTrainParam::~LearnerTrainParam(void **this)
{
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void std::__tree<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::__map_value_compare<xgboost::Learner const*,std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::less<xgboost::Learner const*>,true>,std::allocator<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::__map_value_compare<xgboost::Learner const*,std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::less<xgboost::Learner const*>,true>,std::allocator<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>>>::destroy(*a1);
    std::__tree<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::__map_value_compare<xgboost::Learner const*,std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::less<xgboost::Learner const*>,true>,std::allocator<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>>>::destroy(a1[1]);
    std::__hash_table<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::__unordered_map_hasher<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::hash<xgboost::DMatrix *>,std::equal_to<xgboost::DMatrix *>,true>,std::__unordered_map_equal<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::equal_to<xgboost::DMatrix *>,std::hash<xgboost::DMatrix *>,true>,std::allocator<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>>>::~__hash_table((a1 + 5));

    operator delete(a1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::__unordered_map_hasher<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::hash<xgboost::DMatrix *>,std::equal_to<xgboost::DMatrix *>,true>,std::__unordered_map_equal<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::equal_to<xgboost::DMatrix *>,std::hash<xgboost::DMatrix *>,true>,std::allocator<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *v2;
    std::__destroy_at[abi:ne200100]<std::pair<xgboost::DMatrix * const,xgboost::PredictionCacheEntry>,0>((v2 + 2));
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__tree<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::__map_value_compare<xgboost::Learner const*,std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::less<xgboost::Learner const*>,true>,std::allocator<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>>>::__emplace_unique_key_args<xgboost::Learner const*,std::piecewise_construct_t const&,std::tuple<xgboost::Learner const*&&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::XGBAPIThreadLocalEntry>>::Get()
{
  {
    v2 = dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::XGBAPIThreadLocalEntry>>::Get(void)::inst(&dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::XGBAPIThreadLocalEntry>>::Get(void)::inst);
    v2[2] = 0;
    v2[1] = 0;
    *v2 = v2 + 1;
    _tlv_atexit(std::map<xgboost::Learner const*,xgboost::XGBAPIThreadLocalEntry>::~map[abi:ne200100], v2);
  }

  return dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::XGBAPIThreadLocalEntry>>::Get(void)::inst(&dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::XGBAPIThreadLocalEntry>>::Get(void)::inst);
}

void xgboost::XGBoostParameter<xgboost::LearnerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(xgboost::LearnerTrainParam *a1, _BYTE *a2, uint64_t *a3)
{
  if (*a2 == 1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    xgboost::LearnerTrainParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6BB0, a2, *a3, a3[1], 0, a1, 0);
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    xgboost::LearnerTrainParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6BB0, a2, *a3, a3[1], a1, 0);
    *a2 = 1;
  }
}

void sub_274DD15BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *xgboost::Cast<xgboost::JsonObject,xgboost::Value>(char **a1)
{
  if (*(a1 + 3) == 3)
  {
    v2 = **a1;
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v27);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/json.h", 79);
    v5 = dmlc::LogMessageFatal::GetEntry(&v27);
    xgboost::Value::TypeStr(a1, &v22);
    v6 = std::string::insert(&v22, 0, "Invalid cast, from ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v23, " to ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v17[1] = 0x300000000;
    v19[0] = 0;
    v19[1] = 0;
    v17[0] = &unk_2883E6E50;
    v18 = v19;
    xgboost::Value::TypeStr(v17, __p);
    if ((v21 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v21 & 0x80u) == 0)
    {
      v11 = v21;
    }

    else
    {
      v11 = __p[1];
    }

    v12 = std::string::append(&v24, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v26 = v12->__r_.__value_.__r.__words[2];
    v25 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v26 >= 0)
    {
      v14 = &v25;
    }

    else
    {
      v14 = v25;
    }

    if (v26 >= 0)
    {
      v15 = HIBYTE(v26);
    }

    else
    {
      v15 = *(&v25 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v14, v15);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    v17[0] = &unk_2883E6E50;
    std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(&v18, v19[0]);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v27);
    v16 = **a1;
  }
}

void sub_274DD185C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v32 + 16, a13);
  if (*(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  dmlc::LogMessageFatal::~LogMessageFatal((v33 - 49));
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[10],std::string&,0>(std::string *a1, __int128 *a2)
{
  std::string::basic_string[abi:ne200100]<0>(a1, "objective");
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    a1[1].__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void sub_274DD1A28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::LearnerModelParamLegacy::ToJson(xgboost::LearnerModelParamLegacy *this, float *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v14 = 0x300000000;
  v16[0] = 0;
  v16[1] = 0;
  v13 = &unk_2883E6E50;
  v15 = v16;
  v2 = xgboost::detail::ToCharsFloatImpl(__src, *a2, a2);
  if (v2 >= 16)
  {
    v3 = 16;
  }

  else
  {
    v3 = v2;
  }

  if (v2 >= 16)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v10);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 110);
    v5 = dmlc::LogMessageFatal::GetEntry(v10);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: ret.ec == std::errc()", 35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(v10);
  }

  std::string::basic_string[abi:ne200100](__dst, __src, v3);
  v10[0] = &unk_2883E6F38;
  v10[1] = 0;
  *v11 = *__dst;
  v12 = v9;
  __dst[0] = 0;
  __dst[1] = 0;
  v9 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "base_score");
  v16[4] = __p;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v15, __p);
  xgboost::Json::operator=();
}

void sub_274DD2024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char *a32)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a21);
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v32 + 16, a32);
  _Unwind_Resume(a1);
}

void std::vector<xgboost::Json>::__emplace_back_slow_path<std::string const&>(void *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 61))
  {
    v5 = a1[2] - *a1;
    if (v5 >> 2 > v3)
    {
      v3 = v5 >> 2;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      v6 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v3;
    }

    v8 = a1;
    if (v6)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::parameter::FieldAccessEntry *>>(a1, v6);
    }

    v7 = (8 * v2);
    std::allocator<xgboost::Json>::construct[abi:ne200100]<xgboost::Json,std::string const&>(8 * v2, a2);
  }

  std::vector<xgboost::Json>::__throw_length_error[abi:ne200100]();
}