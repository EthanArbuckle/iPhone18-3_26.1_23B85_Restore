double sub_2713551C4(float **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v15 = 0;
  sub_2711CDE78(&v12, v14, v4);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_288130B70[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288130B28[v15])(&v17, v14);
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v12;
  *(v5 + 16) = v13;
  *v5 = v6;
  v7 = *a1;
  v8 = *a2;
  v15 = 0;
  sub_2711CDE78(&v12, v14, v7 + 1);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_288130B70[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288130B28[v15])(&v17, v14);
  }

  if (*(v8 + 47) < 0)
  {
    operator delete(*(v8 + 24));
  }

  *(v8 + 24) = v12;
  *(v8 + 40) = v13;
  v9 = *a1;
  v10 = *a2;
  v15 = 0;
  sub_2711CDE78(&v12, v14, v9 + 2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_288130B70[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288130B28[v15])(&v17, v14);
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  result = *&v12;
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  return result;
}

void sub_2713553B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713553C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713553D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713553EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271355400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271355414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_271355428(_BYTE *result, uint64_t a2)
{
  v3 = result;
  v4 = (result + 8);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  if (v7 >= 1)
  {
    v8 = &v6[v7];
    v9 = v7;
    result = v6;
    do
    {
      result = memchr(result, 46, v9);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v8)
        {
          break;
        }

        v10 = result - v6;
        v11 = v3;
        if (result - v6 != -1)
        {
          v12 = **v3;
          if (v12 <= v10)
          {
            v12 = (result - v6);
          }

          **v3 = v12;
          v13 = *(a2 + 23);
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(a2 + 8);
          }

          v7 = v13 + ~v10;
          v11 = v4;
        }

        goto LABEL_21;
      }

      ++result;
      v9 = v8 - result;
    }

    while (v8 - result >= 1);
  }

  v11 = v3;
LABEL_21:
  v14 = *v11;
  v15 = *v14;
  if (*v14 <= v7)
  {
    v15 = v7;
  }

  *v14 = v15;
  v16 = *(a2 + 47);
  if (v16 >= 0)
  {
    v17 = (a2 + 24);
  }

  else
  {
    v17 = *(a2 + 24);
  }

  v18 = *(a2 + 32);
  if (v16 >= 0)
  {
    v19 = *(a2 + 47);
  }

  else
  {
    v19 = *(a2 + 32);
  }

  if (v19 >= 1)
  {
    v20 = &v17[v19];
    v21 = v19;
    result = v17;
    do
    {
      result = memchr(result, 46, v21);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v20)
        {
          break;
        }

        v22 = result - v17;
        v23 = v3;
        if (result - v17 != -1)
        {
          v24 = **v3;
          if (v24 <= v22)
          {
            v24 = (result - v17);
          }

          **v3 = v24;
          v25 = *(a2 + 47);
          if ((v25 & 0x80u) != 0)
          {
            v25 = *(a2 + 32);
          }

          v19 = v25 + ~v22;
          v23 = v4;
        }

        goto LABEL_43;
      }

      ++result;
      v21 = v20 - result;
    }

    while (v20 - result >= 1);
  }

  v23 = v3;
LABEL_43:
  v26 = *v23;
  v27 = *v26;
  if (*v26 <= v19)
  {
    v27 = v19;
  }

  *v26 = v27;
  v28 = *(a2 + 71);
  if (v28 >= 0)
  {
    v29 = (a2 + 48);
  }

  else
  {
    v29 = *(a2 + 48);
  }

  v30 = *(a2 + 56);
  if (v28 >= 0)
  {
    v31 = *(a2 + 71);
  }

  else
  {
    v31 = *(a2 + 56);
  }

  if (v31 >= 1)
  {
    v32 = &v29[v31];
    v33 = v31;
    result = v29;
    do
    {
      result = memchr(result, 46, v33);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v32)
        {
          break;
        }

        v34 = result - v29;
        if (result - v29 == -1)
        {
          break;
        }

        v35 = **v3;
        if (v35 <= v34)
        {
          v35 = (result - v29);
        }

        **v3 = v35;
        v36 = *(a2 + 71);
        if ((v36 & 0x80u) != 0)
        {
          v36 = *(a2 + 56);
        }

        v31 = v36 + ~v34;
        goto LABEL_65;
      }

      ++result;
      v33 = v32 - result;
    }

    while (v32 - result >= 1);
  }

  v4 = v3;
LABEL_65:
  v37 = **v4;
  if (v37 <= v31)
  {
    v37 = v31;
  }

  **v4 = v37;
  return result;
}

void sub_2713556A8(uint64_t a1, void *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a4 > a5)
  {
    v7 = 4 * a4;
    v13 = *a3;
    ++*(&v13 + v7);
    sub_271120E64(a2, "[", 1);
    std::to_string(&v14, a4);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    sub_271120E64(a2, v8, size);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    sub_271120E64(a2, "d-slice #", 9);
    std::to_string(&v14, *(a3 + v7));
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v14;
    }

    else
    {
      v10 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v11 = v14.__r_.__value_.__l.__size_;
    }

    sub_271120E64(a2, v10, v11);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    sub_271120E64(a2, ": ", 2);
    sub_271355864();
  }
}

void sub_271355844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271355AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271355B68(void ****a1, uint64_t *a2)
{
  v4 = *a1;
  sub_2717FA20C(***a1, *a2, *(**a1)[1], *((**a1)[1] + 8));
  v6 = v4[1];
  v5 = v4[2];
  v7 = v6[4];
  v8 = *v6;
  v9 = v6[1];
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == *(v9 + 1))
    {
      goto LABEL_6;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = strlen(*(*v6[2] + 8 * v12));
  sub_271120E64(v5, *(*v6[2] + 8 * v12), v13);
  sub_2713556A8(v7, v5, *v6, v12, *v6[3]);
LABEL_6:
  v14 = *a1;
  sub_2717FA20C(***a1, *a2 + 24, *(**a1)[1], *((**a1)[1] + 8));
  v16 = v14[1];
  v15 = v14[2];
  v17 = v16[4];
  v18 = *v16;
  v19 = v16[1];
  v20 = **v16 + 1;
  **v16 = v20;
  if (v20 == *v19)
  {
    v21 = *(v18 + 1) + 1;
    *v18 = 0;
    *(v18 + 1) = v21;
    if (v21 == *(v19 + 1))
    {
      goto LABEL_11;
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  v23 = strlen(*(*v16[2] + 8 * v22));
  sub_271120E64(v15, *(*v16[2] + 8 * v22), v23);
  sub_2713556A8(v17, v15, *v16, v22, *v16[3]);
LABEL_11:
  v24 = *a1;
  sub_2717FA20C(**v24, *a2 + 48, *(*v24)[1], *((*v24)[1] + 8));
  v26 = v24[1];
  v25 = v24[2];
  v27 = v26[4];
  v28 = *v26;
  v29 = v26[1];
  v30 = **v26 + 1;
  **v26 = v30;
  if (v30 == *v29)
  {
    v31 = *(v28 + 1) + 1;
    *v28 = 0;
    *(v28 + 1) = v31;
    if (v31 == *(v29 + 1))
    {
      return;
    }

    v32 = 1;
  }

  else
  {
    v32 = 0;
  }

  v33 = strlen(*(*v26[2] + 8 * v32));
  sub_271120E64(v25, *(*v26[2] + 8 * v32), v33);
  v34 = *v26;
  v35 = *v26[3];

  sub_2713556A8(v27, v25, v34, v32, v35);
}

void sub_271355DBC(uint64_t a1, unsigned int __val)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v15 = 0;
  std::to_string(&v16, __val);
  __p[0] = v16;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      return;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = strlen(*(**(v6 + 16) + 8 * v12));
  sub_271120E64(v5, *(**(v6 + 16) + 8 * v12), v13);
  sub_2713556A8(v7, v5, *v6, v12, **(v6 + 24));
}

void sub_271355EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713560C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_271356124(const void **result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    result[1] = &v5[12 * (12 * a2 / 0xC)];
  }

  else
  {
    v6 = *result;
    v7 = v5 - *result;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
    v9 = v8 + v2;
    if (v8 + v2 > 0x1555555555555555)
    {
      sub_271135560();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = v2;
      LODWORD(v25) = v11;
      v13 = *(result + 7);
      if (v13 == -1)
      {
        sub_2711308D4();
      }

      v23 = &v25;
      v14 = (off_288130BE8[v13])(&v23, result + 3);
      v11 = v15;
      v6 = *v3;
      v7 = v3[1] - *v3;
      v2 = v12;
    }

    else
    {
      v14 = 0;
    }

    v16 = v14 + 12 * v8;
    v17 = v14 + 12 * v11;
    v18 = v16 + 12 * (12 * v2 / 0xC);
    v19 = v16 - v7;
    result = memcpy((v16 - v7), v6, v7);
    v20 = *v3;
    *v3 = v19;
    v3[1] = v18;
    v21 = v3[2];
    v3[2] = v17;
    if (v20)
    {
      v23 = v20;
      v24 = -1431655765 * ((v21 - v20) >> 2);
      v22 = *(v3 + 7);
      if (v22 == -1)
      {
        sub_2711308D4();
      }

      v25 = &v23;
      return (off_288130BF8[v22])(&v25, v3 + 3);
    }
  }

  return result;
}

vm_address_t sub_27135632C(unsigned int **a1)
{
  v1 = (((12 * **a1 + 4095) & 0x1FFFFFF000) * 0x1555555555555556uLL) >> 64;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 12 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t sub_2713563DC(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, 12 * *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

_DWORD *sub_271356458(_DWORD *result, char **a2)
{
  if (result[4] == 1 && *(a2 + 4) == 1)
  {
    v10 = result[5];
    v11 = *(a2 + 5);
    v12 = result[2];
    if (v10 == v11 && v10 == v12)
    {
      v25 = result[3] * v10;
      if (!v25)
      {
        return result;
      }

      v24 = 4 * v25;
      v26 = *a2;
      v23 = *result;
      v22 = v26;
    }

    else
    {
      v14 = result[3];
      if (v12)
      {
        v15 = v14 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        return result;
      }

      v16 = *result;
      v17 = *a2;
      v18 = 4 * v12;
      v19 = v14 - 1;
      if (v14 != 1)
      {
        v20 = 4 * v10;
        v21 = 4 * v11;
        do
        {
          memmove(v17, v16, v18);
          v16 += v20;
          v17 += v21;
          --v19;
        }

        while (v19);
      }

      v22 = v17;
      v23 = v16;
      v24 = v18;
    }

    return memmove(v22, v23, v24);
  }

  v3 = result[3];
  if (result[2])
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *result;
    v6 = *a2;
    v7 = v3 - 1;
    if (v7)
    {
      v8 = 4 * result[5];
      v9 = 4 * *(a2 + 5);
      do
      {
        *v6 = *v5;
        v6[1] = v5[1];
        v6[2] = v5[2];
        v5 = (v5 + v8);
        v6 = (v6 + v9);
        --v7;
      }

      while (v7);
    }

    *v6 = *v5;
    v6[1] = v5[1];
    v6[2] = v5[2];
  }

  return result;
}

const void **sub_2713565E0(const void **result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    result[1] = &v5[12 * (12 * a2 / 0xC)];
  }

  else
  {
    v6 = *result;
    v7 = v5 - *result;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
    v9 = v8 + v2;
    if (v8 + v2 > 0x1555555555555555)
    {
      sub_271135560();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = v2;
      LODWORD(v25) = v11;
      v13 = *(result + 7);
      if (v13 == -1)
      {
        sub_2711308D4();
      }

      v23 = &v25;
      v14 = (off_288130C08[v13])(&v23, result + 3);
      v11 = v15;
      v6 = *v3;
      v7 = v3[1] - *v3;
      v2 = v12;
    }

    else
    {
      v14 = 0;
    }

    v16 = v14 + 12 * v8;
    v17 = v14 + 12 * v11;
    v18 = v16 + 12 * (12 * v2 / 0xC);
    v19 = v16 - v7;
    result = memcpy((v16 - v7), v6, v7);
    v20 = *v3;
    *v3 = v19;
    v3[1] = v18;
    v21 = v3[2];
    v3[2] = v17;
    if (v20)
    {
      v23 = v20;
      v24 = -1431655765 * ((v21 - v20) >> 2);
      v22 = *(v3 + 7);
      if (v22 == -1)
      {
        sub_2711308D4();
      }

      v25 = &v23;
      return (off_288130C18[v22])(&v25, v3 + 3);
    }
  }

  return result;
}

vm_address_t sub_2713567E8(unsigned int **a1)
{
  v1 = (((12 * **a1 + 4095) & 0x1FFFFFF000) * 0x1555555555555556uLL) >> 64;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 12 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t sub_271356898(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, 12 * *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

_BYTE *sub_271356924(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_271356D24(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_271356A24(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288130B28[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_271356B18(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_288130B28[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_271356CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_271356D24(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_271356EC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271356ED4(uint64_t a1, const char *a2)
{
  v5 = 0;
  v6 = v4;
  v7 = "Mesh has both vertex and face ";
  v8 = v4;
  v9 = "Mesh has both vertex and face ";
  v10 = "Mesh has both vertex and face ";
  v11 = &v6;
  sub_2711FE8BC(&v11);
  if (*a2)
  {
    v6 = v4;
    v7 = a2;
    v8 = v4;
    v9 = a2;
    v10 = a2;
    if (v5 != -1)
    {
      v11 = &v6;
      (off_288130BB8[v5])(&v11, v4);
      goto LABEL_6;
    }

LABEL_11:
    sub_2711308D4();
  }

  v6 = v4;
  v7 = "nullptr";
  v8 = v4;
  v9 = "nullptr";
  v10 = "nullptr";
  if (v5 == -1)
  {
    goto LABEL_11;
  }

  v11 = &v6;
  (*(&off_288130BA0 + v5))(&v11, v4);
LABEL_6:
  v6 = v4;
  v7 = " but may only have one of the two";
  v8 = v4;
  v9 = " but may only have one of the two";
  v10 = " but may only have one of the two";
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v11 = &v6;
  (off_288130C70[v5])(&v11, v4);
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v6 = &v11;
  result = (off_288130B70[v5])(&v6, v4);
  if (v5 != -1)
  {
    return (off_288130B28[v5])(&v6, v4);
  }

  return result;
}

_BYTE *sub_2713570D0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2713573DC(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

void sub_2713571D0(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_288130B28[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_271357390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2713573DC(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_271357578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_271357590(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_288130B28[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_271357754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713577AC(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_2713579EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

size_t sub_271357A08(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288130B28[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_271357AFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v19 = a3;
  v20 = a2;
  v22 = 0;
  v25 = v21;
  v26 = "Mesh has ";
  v27 = v21;
  v28 = "Mesh has ";
  v29 = "Mesh has ";
  v23.__r_.__value_.__r.__words[0] = &v25;
  sub_2711E8810(&v23);
  std::to_string(&v23, a4);
  v25 = v21;
  v26 = &v23;
  v27 = v21;
  v28 = &v23;
  v29 = &v23;
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v24 = &v25;
  (off_288130B58[v22])(&v24, v21);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v25 = v21;
  v26 = " ";
  v27 = v21;
  v28 = " ";
  v29 = " ";
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130B40 + v22))(&v23, v21);
  if (v19)
  {
    v25 = v21;
    v26 = &v19;
    v27 = v21;
    v28 = &v19;
    v29 = &v19;
    if (v22 != -1)
    {
      v23.__r_.__value_.__r.__words[0] = &v25;
      (off_288130BB8[v22])(&v23, v21);
      goto LABEL_10;
    }

LABEL_42:
    sub_2711308D4();
  }

  v25 = v21;
  v26 = "nullptr";
  v27 = v21;
  v28 = "nullptr";
  v29 = "nullptr";
  if (v22 == -1)
  {
    goto LABEL_42;
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130BA0 + v22))(&v23, v21);
LABEL_10:
  v25 = v21;
  v26 = " which does not match the ";
  v27 = v21;
  v28 = " which does not match the ";
  v29 = " which does not match the ";
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130C88 + v22))(&v23, v21);
  std::to_string(&v23, a5);
  v25 = v21;
  v26 = &v23;
  v27 = v21;
  v28 = &v23;
  v29 = &v23;
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v24 = &v25;
  (off_288130B58[v22])(&v24, v21);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v25 = v21;
  v26 = " ";
  v27 = v21;
  v28 = " ";
  v29 = " ";
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130B40 + v22))(&v23, v21);
  if (v20)
  {
    v25 = v21;
    v26 = &v20;
    v27 = v21;
    v28 = &v20;
    v29 = &v20;
    if (v22 != -1)
    {
      v23.__r_.__value_.__r.__words[0] = &v25;
      (off_288130BB8[v22])(&v23, v21);
      goto LABEL_20;
    }

LABEL_46:
    sub_2711308D4();
  }

  v25 = v21;
  v26 = "nullptr";
  v27 = v21;
  v28 = "nullptr";
  v29 = "nullptr";
  if (v22 == -1)
  {
    goto LABEL_46;
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130BA0 + v22))(&v23, v21);
LABEL_20:
  v25 = v21;
  v26 = " they correspond to";
  v27 = v21;
  v28 = " they correspond to";
  v29 = " they correspond to";
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130CA0 + v22))(&v23, v21);
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v25 = &v23;
  (off_288130B70[v22])(v8, &v25, v21);
  if (v22 != -1)
  {
    (off_288130B28[v22])(&v25, v21);
  }

  if (SHIBYTE(v9) < 0)
  {
    sub_271127178(__p, v8[0], v8[1]);
  }

  else
  {
    *__p = *v8;
    v11 = v9;
  }

  v12 = 1;
  LOBYTE(v13) = 0;
  v17 = 0;
  v18 = 1;
  sub_27112D480(0x20u, __p, a1);
  if (v18 == 1)
  {
    if (v17 != 1)
    {
      goto LABEL_31;
    }

    if (v16 < 0)
    {
      operator delete(v15);
      if ((v14 & 0x80000000) == 0)
      {
LABEL_31:
        if (v12 != 1)
        {
          goto LABEL_34;
        }

LABEL_32:
        if (SHIBYTE(v11) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_34;
      }
    }

    else if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    operator delete(v13);
    if (v12 != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_34:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_271357FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271358034(uint64_t a1, uint64_t a2, std::string *a3, unint64_t a4, unint64_t a5)
{
  v20 = a2;
  v22 = 0;
  v25 = v21;
  v26 = "Mesh has ";
  v27 = v21;
  v28 = "Mesh has ";
  v29 = "Mesh has ";
  v23.__r_.__value_.__r.__words[0] = &v25;
  sub_2711E8810(&v23);
  std::to_string(&v23, a4);
  v25 = v21;
  v26 = &v23;
  v27 = v21;
  v28 = &v23;
  v29 = &v23;
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v24 = &v25;
  (off_288130B58[v22])(&v24, v21);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v25 = v21;
  v26 = " ";
  v27 = v21;
  v28 = " ";
  v29 = " ";
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130B40 + v22))(&v23, v21);
  v25 = v21;
  v26 = a3;
  v27 = v21;
  v28 = a3;
  v29 = a3;
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (off_288130CD0[v22])(&v23, v21);
  v25 = v21;
  v26 = " which does not match the ";
  v27 = v21;
  v28 = " which does not match the ";
  v29 = " which does not match the ";
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130C88 + v22))(&v23, v21);
  std::to_string(&v23, a5);
  v25 = v21;
  v26 = &v23;
  v27 = v21;
  v28 = &v23;
  v29 = &v23;
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v24 = &v25;
  (off_288130B58[v22])(&v24, v21);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v25 = v21;
  v26 = " ";
  v27 = v21;
  v28 = " ";
  v29 = " ";
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130B40 + v22))(&v23, v21);
  if (v20)
  {
    v25 = v21;
    v26 = &v20;
    v27 = v21;
    v28 = &v20;
    v29 = &v20;
    if (v22 != -1)
    {
      v23.__r_.__value_.__r.__words[0] = &v25;
      (off_288130BB8[v22])(&v23, v21);
      goto LABEL_16;
    }

LABEL_42:
    sub_2711308D4();
  }

  v25 = v21;
  v26 = "nullptr";
  v27 = v21;
  v28 = "nullptr";
  v29 = "nullptr";
  if (v22 == -1)
  {
    goto LABEL_42;
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130BA0 + v22))(&v23, v21);
LABEL_16:
  v25 = v21;
  v26 = " they correspond to";
  v27 = v21;
  v28 = " they correspond to";
  v29 = " they correspond to";
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130CA0 + v22))(&v23, v21);
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v25 = &v23;
  (off_288130B70[v22])(v9, &v25, v21);
  if (v22 != -1)
  {
    (off_288130B28[v22])(&v25, v21);
  }

  if (SHIBYTE(v10) < 0)
  {
    sub_271127178(__p, v9[0], v9[1]);
  }

  else
  {
    *__p = *v9;
    v12 = v10;
  }

  v13 = 1;
  LOBYTE(v14) = 0;
  v18 = 0;
  v19 = 1;
  sub_27112D480(0x20u, __p, a1);
  if (v19 == 1)
  {
    if (v18 != 1)
    {
      goto LABEL_27;
    }

    if (v17 < 0)
    {
      operator delete(v16);
      if ((v15 & 0x80000000) == 0)
      {
LABEL_27:
        if (v13 != 1)
        {
          goto LABEL_30;
        }

LABEL_28:
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_30;
      }
    }

    else if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    operator delete(v14);
    if (v13 != 1)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_30:
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_271358494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_271358524(uint64_t a1, uint64_t ***a2, uint64_t a3)
{
  if (*a3)
  {
    v5 = ***a2;
    v11 = *a3;
    sub_271358848();
  }

  v6 = *(a3 + 8);
  v7 = sub_27134B650(a3);
  v8 = a2[1];
  result = *v8;
  v10 = v8[1] - *v8;
  if (v7 > v10)
  {
    sub_271358BDC(a2[1], v7 - v10);
    result = *a2[1];
LABEL_8:
    result = memmove(result, v6, v7);
    goto LABEL_9;
  }

  if (v7 < v10)
  {
    v8[1] = &result[v7];
  }

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(a1 + 120) = 1;
  return result;
}

void sub_2713587EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  _Unwind_Resume(exception_object);
}

void sub_271358848()
{
  v0[6] = 0;
  v1[0] = v0;
  v1[1] = "'";
  v1[2] = v0;
  v1[3] = "'";
  v1[4] = "'";
  v2 = v1;
  sub_271136E64(&v2);
  sub_271354944();
}

void sub_2713589B4(uint64_t a1, const char *a2)
{
  v4 = 0;
  v5 = v3;
  v6 = "Mesh ";
  v7 = v3;
  v8 = "Mesh ";
  v9 = "Mesh ";
  v10 = &v5;
  sub_2711E7C90(&v10);
  v5 = v3;
  v6 = a2;
  v7 = v3;
  v8 = a2;
  v9 = a2;
  if (v4 != -1)
  {
    v10 = &v5;
    (off_288130CD0[v4])(&v10, v3);
    v5 = v3;
    v6 = " have unsupported value type '";
    v7 = v3;
    v8 = " have unsupported value type '";
    v9 = " have unsupported value type '";
    if (v4 != -1)
    {
      v10 = &v5;
      (*(&off_288130C58 + v4))(&v10, v3);
      sub_2711E6DB4();
    }

    sub_2711308D4();
  }

  sub_2711308D4();
}

void sub_271358B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271358B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271358B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271358BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271358BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271358BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

char *sub_271358BDC(uint64_t a1, size_t a2)
{
  v5 = a1 + 8;
  result = *(a1 + 8);
  v4 = *(v5 + 8);
  if (v4 - result >= a2)
  {
    if (a2)
    {
      v15 = &result[a2];
      bzero(result, a2);
      result = v15;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v6 = &result[-*a1];
    v7 = &v6[a2];
    if (&v6[a2] < 0)
    {
      sub_271135560();
    }

    v8 = v4 - *a1;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    v9 = v8 >= 0x3FFFFFFFFFFFFFFFLL;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v9)
    {
      v10 = v7;
    }

    if (v10)
    {
      LODWORD(v26) = v10;
      v11 = *(a1 + 28);
      if (v11 == -1)
      {
        sub_2711308D4();
      }

      v12 = a2;
      v24 = &v26;
      v13 = (off_288130CE8[v11])(&v24, a1 + 24);
      v10 = v14;
      a2 = v12;
    }

    else
    {
      v13 = 0;
    }

    v16 = &v6[v13];
    v17 = v13 + v10;
    v18 = &v16[a2];
    bzero(v16, a2);
    v19 = *(a1 + 8);
    v20 = &v16[*a1 - v19];
    result = memcpy(v20, *a1, v19 - *a1);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v18;
    v22 = *(a1 + 16);
    *(a1 + 16) = v17;
    if (v21)
    {
      v24 = v21;
      v25 = v22 - v21;
      v23 = *(a1 + 28);
      if (v23 == -1)
      {
        sub_2711308D4();
      }

      v26 = &v24;
      return (off_288130CF8[v23])(&v26, a1 + 24);
    }
  }

  return result;
}

vm_address_t sub_271358D88(unsigned int **a1)
{
  v1 = **a1 + 4095;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, v1 & 0x1FFFFF000, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t sub_271358E18(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

char *sub_271358E8C(uint64_t a1, uint64_t ***a2, uint64_t a3)
{
  if (*a3 != 11)
  {
    v10 = ***a2;
    v11 = *a3;
    sub_271358848();
  }

  v5 = *(a3 + 8);
  v6 = sub_27134B650(a3);
  v7 = a2[1];
  result = *v7;
  v9 = (v7[1] - *v7) >> 2;
  if (v6 > v9)
  {
    sub_2713591A4(a2[1], v6 - v9);
    result = *a2[1];
LABEL_8:
    result = memmove(result, v5, 4 * v6);
    goto LABEL_9;
  }

  if (v6 < v9)
  {
    v7[1] = &result[4 * v6];
  }

  if (v6)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(a1 + 120) = 1;
  return result;
}

void sub_271359148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  _Unwind_Resume(exception_object);
}

void sub_2713591A4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v17 = 4 * a2;
      bzero(*(a1 + 8), 4 * a2);
      v4 += v17;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = v6 >> 2;
    v8 = (v6 >> 2) + a2;
    if (v8 >> 62)
    {
      sub_271135560();
    }

    v9 = v3 - v5;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    v10 = v9 >= 0x7FFFFFFFFFFFFFFCLL;
    v11 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v10)
    {
      v11 = v8;
    }

    if (v11)
    {
      LODWORD(v28) = v11;
      v12 = *(a1 + 28);
      if (v12 == -1)
      {
        sub_2711308D4();
      }

      v13 = a2;
      v26 = &v28;
      v14 = (off_288130D08[v12])(&v26, a1 + 24);
      v11 = v15;
      v5 = *a1;
      v6 = *(a1 + 8) - *a1;
      v16 = v6 >> 2;
      a2 = v13;
    }

    else
    {
      v14 = 0;
      v16 = v6 >> 2;
    }

    v18 = (v14 + 4 * v7);
    v19 = 4 * a2;
    v20 = v14 + 4 * v11;
    bzero(v18, 4 * a2);
    v21 = &v18[v19];
    v22 = &v18[-4 * v16];
    memcpy(v22, v5, v6);
    v23 = *a1;
    *a1 = v22;
    *(a1 + 8) = v21;
    v24 = *(a1 + 16);
    *(a1 + 16) = v20;
    if (v23)
    {
      v26 = v23;
      v27 = (v24 - v23) >> 2;
      v25 = *(a1 + 28);
      if (v25 == -1)
      {
        sub_2711308D4();
      }

      v28 = &v26;
      (off_288130D18[v25])(&v28, a1 + 24);
    }
  }
}

vm_address_t sub_271359378(unsigned int **a1)
{
  v1 = (**a1 + 1023) & 0x1FFFFFC00;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 4 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t sub_27135940C(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, 4 * *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

uint64_t sub_271359484(uint64_t a1, unsigned __int16 *a2)
{
  v5 = 0;
  v8 = v4;
  v9 = "Mesh has labels of unsupported type '";
  v10 = v4;
  v11 = "Mesh has labels of unsupported type '";
  v12 = "Mesh has labels of unsupported type '";
  v6.__r_.__value_.__r.__words[0] = &v8;
  sub_271359634(&v6);
  std::to_string(&v6, *a2);
  v8 = v4;
  v9 = &v6;
  v10 = v4;
  v11 = &v6;
  v12 = &v6;
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v7 = &v8;
  (off_288130B58[v5])(&v7, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  v8 = v4;
  v9 = "'";
  v10 = v4;
  v11 = "'";
  v12 = "'";
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v6.__r_.__value_.__r.__words[0] = &v8;
  (*(&off_288130B40 + v5))(&v6, v4);
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v8 = &v6;
  result = (off_288130B70[v5])(&v8, v4);
  if (v5 != -1)
  {
    return (off_288130B28[v5])(&v8, v4);
  }

  return result;
}

void sub_2713595F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271359610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x271359600);
}

size_t sub_271359634(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288130B28[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

uint64_t *sub_271359728(uint64_t *a1)
{
  v2 = a1[40];
  if (v2)
  {
    a1[41] = v2;
    v3 = (a1[42] - v2) >> 2;
    v33 = v2;
    v34 = v3;
    v4 = *(a1 + 87);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130D18[v4])(&v35, a1 + 43);
  }

  v5 = a1[35];
  if (v5)
  {
    a1[36] = v5;
    v6 = *(a1 + 74) - v5;
    v33 = v5;
    v34 = v6;
    v7 = *(a1 + 77);
    if (v7 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130CF8[v7])(&v35, a1 + 38);
  }

  v8 = a1[30];
  if (v8)
  {
    a1[31] = v8;
    v9 = *(a1 + 64) - v8;
    v33 = v8;
    v34 = v9;
    v10 = *(a1 + 67);
    if (v10 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130CF8[v10])(&v35, a1 + 33);
  }

  v11 = a1[26];
  if (v11)
  {
    a1[27] = v11;
    v12 = -1431655765 * ((a1[28] - v11) >> 2);
    v33 = v11;
    v34 = v12;
    v13 = *(a1 + 59);
    if (v13 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130C18[v13])(&v35, a1 + 29);
  }

  v14 = a1[22];
  if (v14)
  {
    a1[23] = v14;
    v15 = (a1[24] - v14) >> 3;
    v33 = v14;
    v34 = v15;
    v16 = *(a1 + 51);
    if (v16 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130D28[v16])(&v35, a1 + 25);
  }

  v17 = a1[18];
  if (v17)
  {
    a1[19] = v17;
    v18 = (a1[20] - v17) >> 3;
    v33 = v17;
    v34 = v18;
    v19 = *(a1 + 43);
    if (v19 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130D38[v19])(&v35, a1 + 21);
  }

  v20 = a1[14];
  if (v20)
  {
    a1[15] = v20;
    v21 = -1431655765 * ((a1[16] - v20) >> 2);
    v33 = v20;
    v34 = v21;
    v22 = *(a1 + 35);
    if (v22 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130C18[v22])(&v35, a1 + 17);
  }

  v23 = a1[9];
  if (v23)
  {
    a1[10] = v23;
    v24 = -1431655765 * ((a1[11] - v23) >> 2);
    v33 = v23;
    v34 = v24;
    v25 = *(a1 + 25);
    if (v25 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130BF8[v25])(&v35, a1 + 12);
  }

  v26 = a1[4];
  if (v26)
  {
    a1[5] = v26;
    v27 = -1431655765 * ((a1[6] - v26) >> 2);
    v33 = v26;
    v34 = v27;
    v28 = *(a1 + 15);
    if (v28 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130BF8[v28])(&v35, a1 + 7);
  }

  v29 = *a1;
  if (*a1)
  {
    a1[1] = v29;
    v30 = -1431655765 * ((a1[2] - v29) >> 2);
    v33 = v29;
    v34 = v30;
    v31 = *(a1 + 7);
    if (v31 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130BF8[v31])(&v35, a1 + 3);
  }

  return a1;
}

uint64_t sub_271359AE4(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, 8 * *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

uint64_t sub_271359B68(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, 8 * *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

void *sub_271359E50(void *a1)
{
  *a1 = &unk_288130D88;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_288130DD0;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271359F10(void *a1)
{
  *a1 = &unk_288130D88;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_288130DD0;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_271359FF4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878690, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878690))
    {
      sub_27135B268();
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_2711C1280(&xmmword_280878678, "{", __p, ",");
}

void sub_27135A0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27135A110(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 7;
}

void *sub_27135A18C(void *result)
{
  *result = &unk_288130DD0;
  v1 = result[2];
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

  return result;
}

void *sub_27135A220(void *a1)
{
  *a1 = &unk_288130D88;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_288130DD0;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27135A2E0(void *a1)
{
  *a1 = &unk_288130D88;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_288130DD0;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27135A3B4()
{
  if ((atomic_load_explicit(&qword_280878670, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878670))
    {
      sub_27135AFD4();
    }
  }

  sub_27135AA88(&xmmword_280878658, "{");
}

void sub_27135A468(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_27135A494(void *a1)
{
  *a1 = &unk_288130DD0;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27135A53C(float ***a1, float ***lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_288130DF0, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {

      return sub_27153FB34(a1 + 1, (result + 8));
    }
  }

  return result;
}

void sub_27135A5DC()
{
  if ((atomic_load_explicit(&qword_280878650, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878650))
  {
    sub_2718519B4("cv3d::kit::viz::TriMesh]", 0x17uLL, &xmmword_280878638);
    __cxa_guard_release(&qword_280878650);
  }

  sub_27135A690(&xmmword_280878638, "{");
}

void sub_27135A690(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_27135A83C();
}

void sub_27135A7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135A7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135A800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135A814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135A828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135AA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27135AA88(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_27135ACB8();
}

void sub_27135AC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135AC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135AC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135AC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135AC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135AC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135ACA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135AF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_280878650);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_27135B0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27135B228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27135B268()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_27135B4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27137F4D0(&a10);
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a43 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_27135B554(unsigned __int16 *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v40 = a2;
  if (a1)
  {
    v17[0] = 0;
    v17[1] = 0;
    if (a2 > 5)
    {
      if (a2 <= 7)
      {
        if (a2 == 6)
        {
          if ((a1 & 1) == 0)
          {
            v12 = *a1;
            operator new();
          }
        }

        else if ((a1 & 3) == 0)
        {
          v9 = *a1;
          operator new();
        }
      }

      else
      {
        switch(a2)
        {
          case 8:
            if ((a1 & 7) == 0)
            {
              v14 = *a1;
              operator new();
            }

            break;
          case 11:
            if ((a1 & 3) == 0)
            {
              v16 = *a1;
              operator new();
            }

            break;
          case 12:
            if ((a1 & 7) == 0)
            {
              v5 = *a1;
              operator new();
            }

            break;
          default:
            goto LABEL_59;
        }
      }
    }

    else if (a2 <= 1)
    {
      if (!a2)
      {
        v11 = *a1;
        operator new();
      }

      if (a2 != 1)
      {
LABEL_59:
        sub_27183428C(a2);
      }

      if ((a1 & 1) == 0)
      {
        v8 = *a1;
        operator new();
      }
    }

    else
    {
      switch(a2)
      {
        case 2:
          if ((a1 & 3) == 0)
          {
            v13 = *a1;
            operator new();
          }

          break;
        case 3:
          if ((a1 & 7) == 0)
          {
            v15 = *a1;
            operator new();
          }

          break;
        case 5:
          v4 = *a1;
          operator new();
        default:
          goto LABEL_59;
      }
    }

    v42 = 0;
    v43 = v41;
    v44 = "data pointer is not aligned with given value type ";
    v45 = v41;
    v46 = "data pointer is not aligned with given value type ";
    v47 = "data pointer is not aligned with given value type ";
    v48 = &v43;
    sub_2711F7FCC(&v48);
    sub_2711E6DB4();
  }

  v42 = 0;
  v43 = v41;
  v44 = "data pointer is null";
  v45 = v41;
  v46 = "data pointer is null";
  v47 = "data pointer is null";
  v17[0] = &v43;
  sub_2711E7110(v17);
  if (v42 == -1)
  {
    sub_2711308D4();
  }

  v43 = v17;
  (off_288130E88[v42])(v18, &v43, v41);
  if (v42 != -1)
  {
    (off_288130E70[v42])(&v43, v41);
  }

  if (SHIBYTE(v19) < 0)
  {
    sub_271127178(&v20, v18[0], v18[1]);
  }

  else
  {
    v20 = *v18;
    v21 = v19;
  }

  v22 = 1;
  LOBYTE(v23) = 0;
  v27 = 0;
  v28 = 1;
  sub_27112D480(0xAu, &v20, &v29);
  *a3 = v29;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v39 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_37;
  }

  *(a3 + 40) = 0;
  v6 = v32;
  if (v32 == 1)
  {
    *(a3 + 16) = v30;
    *(a3 + 32) = v31;
    v31 = 0;
    v30 = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v7 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v38 & 1) == 0)
    {
LABEL_23:
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v6)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }
  }

  else
  {
    *(a3 + 48) = 0;
    v7 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v38 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v10 = v35;
  *(v7 + 16) = v34;
  *v7 = v33;
  v33 = 0uLL;
  *(a3 + 72) = v10;
  *(a3 + 80) = v36;
  *(a3 + 96) = v37;
  v34 = 0;
  v36 = 0uLL;
  v37 = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v6)
  {
    goto LABEL_37;
  }

LABEL_35:
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

LABEL_37:
  if (v28 == 1)
  {
    if (v27 == 1)
    {
      if (v26 < 0)
      {
        operator delete(__p);
      }

      if (v24 < 0)
      {
        operator delete(v23);
      }
    }

    if (v22 == 1 && SHIBYTE(v21) < 0)
    {
      operator delete(v20);
    }
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_27135BF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  operator delete(v30);
  sub_27112F828(&a22);
  _Unwind_Resume(a1);
}

void sub_27135C06C(char **a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (*(a2 + 400) == 1)
  {
    if (*(a2 + 16) == 1)
    {
      v4 = *a2;
      v5 = *(a2 + 8);
      if (*(a2 + 56) != 1)
      {
LABEL_14:
        *&v25 = v4;
        BYTE8(v25) = v5;
        sub_27113523C(v26, (a2 + 32));
        sub_27135D80C(&v41, v2, &v25);
        v41 = &unk_28812E6D0;
        operator new();
      }
    }

    else
    {
      v41 = &unk_28810A440;
      v4 = sub_271815924();
      v5 = 2;
      if (*(a2 + 56) != 1)
      {
        goto LABEL_14;
      }
    }

    sub_2711DAE40((a2 + 32), 1000000000);
    goto LABEL_14;
  }

  LOBYTE(v13) = 0;
  LOBYTE(v14) = 0;
  LOBYTE(v15) = 0;
  v16 = 0;
  v17 = v13;
  v18 = v14;
  LOBYTE(v19) = 0;
  v20 = 0;
  LOBYTE(v21) = 0;
  v22 = 0;
  LOBYTE(v23) = 0;
  v24 = 0;
  sub_27113523C(&v42, &v15);
  *&v25 = sub_271815924();
  BYTE8(v25) = 2;
  LOBYTE(v26[0]) = 0;
  v27 = 0;
  if (v44 == 1)
  {
    *v26 = v42;
    v26[2] = v43;
    v43 = 0;
    v42 = 0uLL;
    v27 = 1;
  }

  v28 = v45;
  v29 = v46;
  LOBYTE(v30) = 0;
  v32 = 0;
  if (v49 == 1)
  {
    v30 = v47;
    v31 = v48;
    v48 = 0;
    v47 = 0uLL;
    v32 = 1;
    LOBYTE(v33) = 0;
    v37 = 0;
    if (v52 != 1)
    {
LABEL_9:
      LOBYTE(v38) = 0;
      v40 = 0;
      if ((v55 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else
  {
    LOBYTE(v33) = 0;
    v37 = 0;
    if (v52 != 1)
    {
      goto LABEL_9;
    }
  }

  _X0 = 0;
  _X1 = 0;
  v34 = v51;
  v33 = v50;
  v51 = 0;
  v50 = 0uLL;
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v35 = _X0;
  v36 = 0;
  v37 = 1;
  LOBYTE(v38) = 0;
  v40 = 0;
  if ((v55 & 1) == 0)
  {
LABEL_10:
    if (v52 != 1)
    {
      goto LABEL_20;
    }

LABEL_18:
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

LABEL_20:
    if (v49 == 1 && SHIBYTE(v48) < 0)
    {
      operator delete(v47);
    }

    if (v44 == 1 && SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    sub_27135D80C(&v41, v2, &v25);
    v41 = &unk_28812E6D0;
    operator new();
  }

LABEL_17:
  v38 = v53;
  v39 = v54;
  v54 = 0;
  v53 = 0uLL;
  v40 = 1;
  if (v52 != 1)
  {
    goto LABEL_20;
  }

  goto LABEL_18;
}

void sub_27135CE1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27135CFB0(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 440);
  v3 = *(a1 + 448);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v4 = **v2;
    v5 = __dynamic_cast(v2, &unk_28811D1B0, &unk_28812E720, 0) != 0;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (v5)
    {
LABEL_9:
      v7 = *(a1 + 440);
      v6 = *(a1 + 448);
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
        v12 = v7;
        v13 = v6;
        if (v7)
        {
          atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
          goto LABEL_19;
        }
      }

      else
      {
        v12 = *(a1 + 440);
        v13 = 0;
        if (v7)
        {
LABEL_19:
          operator new();
        }
      }

LABEL_14:
      v14 = *"cv3d.viz";
      v15 = 0x800000000000000;
      v16 = 8;
      sub_2711BE814(&v11, &v14, 1uLL);
      if (*(a1 + 23) < 0)
      {
        sub_271127178(v8, *a1, *(a1 + 8));
      }

      else
      {
        *v8 = *a1;
        v9 = *(a1 + 16);
      }

      v10 = *(a1 + 24);
      operator new();
    }

LABEL_13:
    v12 = 0;
    v13 = 0;
    goto LABEL_14;
  }

LABEL_8:
  if (v5)
  {
    goto LABEL_9;
  }

  goto LABEL_13;
}

void sub_27135D4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void **a25)
{
  sub_2711BEA2C(&a25);
  if (*(v25 - 89) < 0)
  {
    operator delete(*(v25 - 112));
  }

  sub_27112F828(v25 - 128);
  _Unwind_Resume(a1);
}

void sub_27135D570(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288130E30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27135D5C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

void sub_27135D7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27135D80C(uint64_t a1, char *a2, _OWORD *a3)
{
  *a1 = &unk_28812E748;
  *(a1 + 8) = &unk_28812E790;
  v4 = *a2;
  *(a1 + 24) = 0;
  *(a1 + 16) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  *(a1 + 48) = *a3;
  sub_27113523C(a1 + 64, a3 + 1);
  return a1;
}

void sub_27135D900(_Unwind_Exception *exception_object)
{
  *v4 = v2;
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_27135D928(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v30 = a2;
  if (a1)
  {
    if (a3 > 5)
    {
      if (a3 <= 7)
      {
        if (a3 != 6)
        {
          v31 = a1;
          v32 = a2;
          sub_2711EB7CC(&v31);
        }

        v31 = a1;
        v32 = a2;
        sub_2711EB698(&v31);
      }

      switch(a3)
      {
        case 8:
          v31 = a1;
          v32 = a2;
          sub_2711EB900(&v31);
        case 11:
          v31 = a1;
          v32 = a2;
          sub_2711EBA34(&v31);
        case 12:
          v31 = a1;
          v32 = a2;
          sub_2711EBB68(&v31);
      }
    }

    else if (a3 <= 1)
    {
      if (!a3)
      {
        v31 = a1;
        v32 = a2;
        sub_2711E8CC0(&v31);
      }

      if (a3 == 1)
      {
        v31 = a1;
        v32 = a2;
        sub_2711EB1C4(&v31);
      }
    }

    else
    {
      switch(a3)
      {
        case 2:
          v31 = a1;
          v32 = a2;
          sub_2711EB310(&v31);
        case 3:
          v31 = a1;
          v32 = a2;
          sub_2711EB444(&v31);
        case 5:
          v31 = a1;
          v32 = a2;
          sub_2711EB578(&v31);
      }
    }

    sub_27183428C(a3);
  }

  if (!a2)
  {
    operator new();
  }

  sub_2711BD50C("data pointer is null but num_values is ", &v30);
  if (SHIBYTE(v9) < 0)
  {
    sub_271127178(v10, v8[0], v8[1]);
  }

  else
  {
    *v10 = *v8;
    v11 = v9;
  }

  v12 = 1;
  LOBYTE(v13) = 0;
  v17 = 0;
  v18 = 1;
  sub_27112D480(0xAu, v10, __p);
  *a4 = *__p;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v29 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_34;
  }

  *(a4 + 40) = 0;
  v5 = v22;
  if (v22 == 1)
  {
    *(a4 + 16) = v20;
    *(a4 + 32) = v21;
    v21 = 0;
    v20 = 0uLL;
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
LABEL_27:
      *(a4 + 112) = 1;
      *(a4 + 120) = 0;
      if (!v5)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

  else
  {
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v7 = v25;
  *(v6 + 16) = v24;
  *v6 = v23;
  v23 = 0uLL;
  *(a4 + 72) = v7;
  *(a4 + 80) = v26;
  *(a4 + 96) = v27;
  v24 = 0;
  v26 = 0uLL;
  v27 = 0;
  *(a4 + 104) = 1;
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_32:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

LABEL_34:
  if (v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(v15);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_27135DF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27135DF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27135DFB8()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_271758DF0();
}

void sub_27135EC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27135ECE4(_Unwind_Exception *a1)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    *(v1 - 112) = v3;
    operator delete(v3);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x27135ECDCLL);
}

void sub_27135ED00(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 440);
  v3 = *(a1 + 448);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v4 = **v2;
    v5 = __dynamic_cast(v2, &unk_28811D1B0, &unk_28811DC18, 0) != 0;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (v5)
    {
LABEL_9:
      v7 = *(a1 + 440);
      v6 = *(a1 + 448);
      if (v6)
      {
        v8 = v6 + 1;
        atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
        v47 = v7;
        v48 = v6;
        if (v7)
        {
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          v42 = 0uLL;
          v49[0] = v7;
          v49[1] = v6;
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          goto LABEL_20;
        }
      }

      else
      {
        v47 = *(a1 + 440);
        v48 = 0;
        if (v7)
        {
          v42 = 0uLL;
          v49[0] = v7;
          v49[1] = 0;
LABEL_20:
          v9 = v7 + 2;
          v10 = v7[2];
          v50 = &v42;
          v11 = *v10;
          if (v11 > 5)
          {
            if (v11 <= 7)
            {
              if (v11 != 6)
              {
                sub_271759D80(v9, 7);
                v21 = v7[2];
                v22 = *(v21 + 5);
                v23 = *(v21 + 6);
                v53 = v7;
                __p = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v52 = sub_27135FE34;
                operator new();
              }

              sub_271759D80(v9, 6);
              v27 = v7[2];
              v28 = *(v27 + 5);
              v29 = *(v27 + 6);
              v53 = v7;
              __p = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v52 = sub_27135FE34;
              operator new();
            }

            switch(v11)
            {
              case 8:
                sub_271759D80(v9, 8);
                v33 = v7[2];
                v34 = *(v33 + 5);
                v35 = *(v33 + 6);
                v53 = v7;
                __p = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v52 = sub_27135FE34;
                operator new();
              case 11:
                sub_271759D80(v9, 11);
                v39 = v7[2];
                v40 = *(v39 + 5);
                v41 = *(v39 + 6);
                v53 = v7;
                __p = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v52 = sub_27135FE34;
                operator new();
              case 12:
                sub_271759D80(v9, 12);
                v15 = v7[2];
                v16 = *(v15 + 5);
                v17 = *(v15 + 6);
                v53 = v7;
                __p = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v52 = sub_27135FE34;
                operator new();
            }
          }

          else
          {
            if (v11 <= 1)
            {
              if (v11)
              {
                sub_271759D80(v9, 1);
                v18 = v7[2];
                v19 = *(v18 + 5);
                v20 = *(v18 + 6);
                v53 = v7;
                __p = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v52 = sub_27135FE34;
                operator new();
              }

              sub_271759D80(v9, 0);
              v24 = v7[2];
              v25 = *(v24 + 5);
              v26 = *(v24 + 6);
              v53 = v7;
              __p = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v52 = sub_27135FE34;
              operator new();
            }

            switch(v11)
            {
              case 2:
                sub_271759D80(v9, 2);
                v30 = v7[2];
                v31 = *(v30 + 5);
                v32 = *(v30 + 6);
                v53 = v7;
                __p = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v52 = sub_27135FE34;
                operator new();
              case 3:
                sub_271759D80(v9, 3);
                v36 = v7[2];
                v37 = *(v36 + 5);
                v38 = *(v36 + 6);
                v53 = v7;
                __p = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v52 = sub_27135FE34;
                operator new();
              case 5:
                sub_271759D80(v9, 5);
                v12 = v7[2];
                v13 = *(v12 + 5);
                v14 = *(v12 + 6);
                v53 = v7;
                __p = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v52 = sub_27135FE34;
                operator new();
            }
          }

          sub_27183428C(v11);
        }
      }

LABEL_14:
      *v49 = *"cv3d.viz";
      v50 = 0x800000000000000;
      v51 = 2;
      sub_2711BE814(&v46, v49, 1uLL);
      if (*(a1 + 23) < 0)
      {
        sub_271127178(v43, *a1, *(a1 + 8));
      }

      else
      {
        *v43 = *a1;
        v44 = *(a1 + 16);
      }

      v45 = *(a1 + 24);
      operator new();
    }

LABEL_13:
    v47 = 0;
    v48 = 0;
    goto LABEL_14;
  }

LABEL_8:
  if (v5)
  {
    goto LABEL_9;
  }

  goto LABEL_13;
}

void sub_27135FC14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27135FD60(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27135FDB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *sub_27135FE34(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27135FE34;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27135FE34;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B7B8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con7NumbersENS3_7PackageELj2EvEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con7NumbersENS3_7PackageELj2EvEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con7NumbersENS3_7PackageELj2EvEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con7NumbersENS3_7PackageELj2EvEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188C13C)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_27135FFD8(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27135FFD8;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27135FFD8;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B818;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3con7NumbersEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3con7NumbersEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3con7NumbersEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3con7NumbersEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188C170)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_27136034C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713603A8(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v30 = a2;
  if (a1)
  {
    if (a3 > 5)
    {
      if (a3 <= 7)
      {
        if (a3 != 6)
        {
          v31 = a1;
          v32 = 2 * a2;
          sub_2711EB7CC(&v31);
        }

        v31 = a1;
        v32 = 2 * a2;
        sub_2711EB698(&v31);
      }

      switch(a3)
      {
        case 8:
          v31 = a1;
          v32 = 2 * a2;
          sub_2711EB900(&v31);
        case 11:
          v31 = a1;
          v32 = 2 * a2;
          sub_2711EBA34(&v31);
        case 12:
          v31 = a1;
          v32 = 2 * a2;
          sub_2711EBB68(&v31);
      }
    }

    else if (a3 <= 1)
    {
      if (!a3)
      {
        v31 = a1;
        v32 = 2 * a2;
        sub_2711E8CC0(&v31);
      }

      if (a3 == 1)
      {
        v31 = a1;
        v32 = 2 * a2;
        sub_2711EB1C4(&v31);
      }
    }

    else
    {
      switch(a3)
      {
        case 2:
          v31 = a1;
          v32 = 2 * a2;
          sub_2711EB310(&v31);
        case 3:
          v31 = a1;
          v32 = 2 * a2;
          sub_2711EB444(&v31);
        case 5:
          v31 = a1;
          v32 = 2 * a2;
          sub_2711EB578(&v31);
      }
    }

    sub_27183428C(a3);
  }

  if (!a2)
  {
    operator new();
  }

  sub_2711BD50C("data pointer is null but num_points is ", &v30);
  if (SHIBYTE(v9) < 0)
  {
    sub_271127178(v10, v8[0], v8[1]);
  }

  else
  {
    *v10 = *v8;
    v11 = v9;
  }

  v12 = 1;
  LOBYTE(v13) = 0;
  v17 = 0;
  v18 = 1;
  sub_27112D480(0xAu, v10, __p);
  *a4 = *__p;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v29 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_34;
  }

  *(a4 + 40) = 0;
  v5 = v22;
  if (v22 == 1)
  {
    *(a4 + 16) = v20;
    *(a4 + 32) = v21;
    v21 = 0;
    v20 = 0uLL;
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
LABEL_27:
      *(a4 + 112) = 1;
      *(a4 + 120) = 0;
      if (!v5)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

  else
  {
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v7 = v25;
  *(v6 + 16) = v24;
  *v6 = v23;
  v23 = 0uLL;
  *(a4 + 72) = v7;
  *(a4 + 80) = v26;
  *(a4 + 96) = v27;
  v24 = 0;
  v26 = 0uLL;
  v27 = 0;
  *(a4 + 104) = 1;
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_32:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

LABEL_34:
  if (v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(v15);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_271360DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(v9 - 48);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271360E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271360E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271360ECC(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v30 = a2;
  if (a1)
  {
    if (a3 > 5)
    {
      if (a3 <= 7)
      {
        if (a3 != 6)
        {
          v31 = a1;
          v32 = 3 * a2;
          sub_2711EB7CC(&v31);
        }

        v31 = a1;
        v32 = 3 * a2;
        sub_2711EB698(&v31);
      }

      switch(a3)
      {
        case 8:
          v31 = a1;
          v32 = 3 * a2;
          sub_2711EB900(&v31);
        case 11:
          v31 = a1;
          v32 = 3 * a2;
          sub_2711EBA34(&v31);
        case 12:
          v31 = a1;
          v32 = 3 * a2;
          sub_2711EBB68(&v31);
      }
    }

    else if (a3 <= 1)
    {
      if (!a3)
      {
        v31 = a1;
        v32 = 3 * a2;
        sub_2711E8CC0(&v31);
      }

      if (a3 == 1)
      {
        v31 = a1;
        v32 = 3 * a2;
        sub_2711EB1C4(&v31);
      }
    }

    else
    {
      switch(a3)
      {
        case 2:
          v31 = a1;
          v32 = 3 * a2;
          sub_2711EB310(&v31);
        case 3:
          v31 = a1;
          v32 = 3 * a2;
          sub_2711EB444(&v31);
        case 5:
          v31 = a1;
          v32 = 3 * a2;
          sub_2711EB578(&v31);
      }
    }

    sub_27183428C(a3);
  }

  if (!a2)
  {
    operator new();
  }

  sub_2711BD50C("data pointer is null but num_points is ", &v30);
  if (SHIBYTE(v9) < 0)
  {
    sub_271127178(v10, v8[0], v8[1]);
  }

  else
  {
    *v10 = *v8;
    v11 = v9;
  }

  v12 = 1;
  LOBYTE(v13) = 0;
  v17 = 0;
  v18 = 1;
  sub_27112D480(0xAu, v10, __p);
  *a4 = *__p;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v29 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_34;
  }

  *(a4 + 40) = 0;
  v5 = v22;
  if (v22 == 1)
  {
    *(a4 + 16) = v20;
    *(a4 + 32) = v21;
    v21 = 0;
    v20 = 0uLL;
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
LABEL_27:
      *(a4 + 112) = 1;
      *(a4 + 120) = 0;
      if (!v5)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

  else
  {
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v7 = v25;
  *(v6 + 16) = v24;
  *v6 = v23;
  v23 = 0uLL;
  *(a4 + 72) = v7;
  *(a4 + 80) = v26;
  *(a4 + 96) = v27;
  v24 = 0;
  v26 = 0uLL;
  v27 = 0;
  *(a4 + 104) = 1;
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_32:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

LABEL_34:
  if (v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(v15);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_271361910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(v9 - 48);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271361950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271361990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713619F0()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0uLL;
  v1 = 0;
  sub_27175B3E8();
}

void sub_2713625D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271362694(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x27136268CLL);
}

void sub_2713626B0()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 0uLL;
  v1 = 0;
  sub_27175B98C();
}

void sub_271363308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713633CC(_Unwind_Exception *a1)
{
  v3 = *(v1 - 96);
  if (v3)
  {
    *(v1 - 88) = v3;
    operator delete(v3);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2713633C4);
}

void sub_2713633E8(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 440);
  v3 = *(a1 + 448);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v4 = **v2;
    v5 = __dynamic_cast(v2, &unk_28811D1B0, &unk_28811DC48, 0) != 0;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (v5)
    {
LABEL_9:
      v7 = *(a1 + 440);
      v6 = *(a1 + 448);
      if (v6)
      {
        v8 = v6 + 1;
        atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
        v42 = v7;
        v43 = v6;
        if (v7)
        {
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          v32 = 0uLL;
          v44[0] = v7;
          v44[1] = v6;
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          goto LABEL_20;
        }
      }

      else
      {
        v42 = *(a1 + 440);
        v43 = 0;
        if (v7)
        {
          v32 = 0uLL;
          v44[0] = v7;
          v44[1] = 0;
LABEL_20:
          v9 = v7 + 2;
          v10 = v7[2];
          v45 = &v32;
          v11 = *v10;
          if (v11 > 5)
          {
            if (v11 <= 7)
            {
              if (v11 != 6)
              {
                sub_271759D80(v9, 7);
                v18 = v7[2];
                if (*(v18 + 6) >= 8uLL)
                {
                  v19 = *(v18 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_271366078;
                operator new();
              }

              sub_271759D80(v9, 6);
              v22 = v7[2];
              if (*(v22 + 6) >= 4uLL)
              {
                v23 = *(v22 + 5);
              }

              v48 = v7;
              v49 = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v47 = sub_271366078;
              operator new();
            }

            switch(v11)
            {
              case 8:
                sub_271759D80(v9, 8);
                v26 = v7[2];
                if (*(v26 + 6) >= 0x10uLL)
                {
                  v27 = *(v26 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_271366078;
                operator new();
              case 11:
                sub_271759D80(v9, 11);
                v30 = v7[2];
                if (*(v30 + 6) >= 8uLL)
                {
                  v31 = *(v30 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_271366078;
                operator new();
              case 12:
                sub_271759D80(v9, 12);
                v14 = v7[2];
                if (*(v14 + 6) >= 0x10uLL)
                {
                  v15 = *(v14 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_271366078;
                operator new();
            }
          }

          else
          {
            if (v11 <= 1)
            {
              if (v11)
              {
                sub_271759D80(v9, 1);
                v16 = v7[2];
                if (*(v16 + 6) >= 4uLL)
                {
                  v17 = *(v16 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_271366078;
                operator new();
              }

              sub_271759D80(v9, 0);
              v20 = v7[2];
              if (*(v20 + 6) >= 2uLL)
              {
                v21 = *(v20 + 5);
              }

              v48 = v7;
              v49 = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v47 = sub_271366078;
              operator new();
            }

            switch(v11)
            {
              case 2:
                sub_271759D80(v9, 2);
                v24 = v7[2];
                if (*(v24 + 6) >= 8uLL)
                {
                  v25 = *(v24 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_271366078;
                operator new();
              case 3:
                sub_271759D80(v9, 3);
                v28 = v7[2];
                if (*(v28 + 6) >= 0x10uLL)
                {
                  v29 = *(v28 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_271366078;
                operator new();
              case 5:
                sub_271759D80(v9, 5);
                v12 = v7[2];
                if (*(v12 + 6) >= 2uLL)
                {
                  v13 = *(v12 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_271366078;
                operator new();
            }
          }

          sub_27183428C(v11);
        }
      }

LABEL_14:
      *v44 = *"cv3d.viz";
      v45 = 0x800000000000000;
      v46 = 3;
      sub_2711BE814(&v41, v44, 1uLL);
      if (*(a1 + 23) < 0)
      {
        sub_271127178(v38, *a1, *(a1 + 8));
      }

      else
      {
        *v38 = *a1;
        v39 = *(a1 + 16);
      }

      v40 = *(a1 + 24);
      LODWORD(v32) = 2;
      sub_27136484C(v33, &v32);
      *__p = *v33;
      v36 = v34;
      v33[1] = 0;
      v34 = 0;
      v33[0] = 0;
      v37 = 1;
      sub_271369E70(&v41, v38, __p);
    }

LABEL_13:
    v42 = 0;
    v43 = 0;
    goto LABEL_14;
  }

LABEL_8:
  if (v5)
  {
    goto LABEL_9;
  }

  goto LABEL_13;
}

void sub_2713646DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27136484C(uint64_t a1, unsigned int *a2)
{
  v5 = 0;
  v7 = v4;
  v8 = "cannot return data as VZPoints";
  v9 = v4;
  v10 = "cannot return data as VZPoints";
  v11 = "cannot return data as VZPoints";
  v6.__r_.__value_.__r.__words[0] = &v7;
  sub_2711FE8BC(&v6);
  std::to_string(&v6, *a2);
  v7 = v4;
  v8 = &v6;
  v9 = v4;
  v10 = &v6;
  v11 = &v6;
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v7;
  (off_288130EB8[v5])(&v12, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v7 = &v6;
  result = (off_288130ED0[v5])(&v7, v4);
  if (v5 != -1)
  {
    return (off_288130EA0[v5])(&v7, v4);
  }

  return result;
}

void sub_27136496C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271364988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x271364978);
}

void sub_2713649AC(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 440);
  v3 = *(a1 + 448);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v4 = **v2;
    v5 = __dynamic_cast(v2, &unk_28811D1B0, &unk_28811DC30, 0) != 0;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (v5)
    {
LABEL_9:
      v7 = *(a1 + 440);
      v6 = *(a1 + 448);
      if (v6)
      {
        v8 = v6 + 1;
        atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
        v42 = v7;
        v43 = v6;
        if (v7)
        {
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          v32 = 0uLL;
          v44[0] = v7;
          v44[1] = v6;
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          goto LABEL_20;
        }
      }

      else
      {
        v42 = *(a1 + 440);
        v43 = 0;
        if (v7)
        {
          v32 = 0uLL;
          v44[0] = v7;
          v44[1] = 0;
LABEL_20:
          v9 = v7 + 2;
          v10 = v7[2];
          v45 = &v32;
          v11 = *v10;
          if (v11 > 5)
          {
            if (v11 <= 7)
            {
              if (v11 != 6)
              {
                sub_271759D80(v9, 7);
                v18 = v7[2];
                if (*(v18 + 6) >= 0xCuLL)
                {
                  v19 = *(v18 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_2713663C0;
                operator new();
              }

              sub_271759D80(v9, 6);
              v22 = v7[2];
              if (*(v22 + 6) >= 6uLL)
              {
                v23 = *(v22 + 5);
              }

              v48 = v7;
              v49 = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v47 = sub_2713663C0;
              operator new();
            }

            switch(v11)
            {
              case 8:
                sub_271759D80(v9, 8);
                v26 = v7[2];
                if (*(v26 + 6) >= 0x18uLL)
                {
                  v27 = *(v26 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_2713663C0;
                operator new();
              case 11:
                sub_271759D80(v9, 11);
                v30 = v7[2];
                if (*(v30 + 6) >= 0xCuLL)
                {
                  v31 = *(v30 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_2713663C0;
                operator new();
              case 12:
                sub_271759D80(v9, 12);
                v14 = v7[2];
                if (*(v14 + 6) >= 0x18uLL)
                {
                  v15 = *(v14 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_2713663C0;
                operator new();
            }
          }

          else
          {
            if (v11 <= 1)
            {
              if (v11)
              {
                sub_271759D80(v9, 1);
                v16 = v7[2];
                if (*(v16 + 6) >= 6uLL)
                {
                  v17 = *(v16 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_2713663C0;
                operator new();
              }

              sub_271759D80(v9, 0);
              v20 = v7[2];
              if (*(v20 + 6) >= 3uLL)
              {
                v21 = *(v20 + 5);
              }

              v48 = v7;
              v49 = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v47 = sub_2713663C0;
              operator new();
            }

            switch(v11)
            {
              case 2:
                sub_271759D80(v9, 2);
                v24 = v7[2];
                if (*(v24 + 6) >= 0xCuLL)
                {
                  v25 = *(v24 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_2713663C0;
                operator new();
              case 3:
                sub_271759D80(v9, 3);
                v28 = v7[2];
                if (*(v28 + 6) >= 0x18uLL)
                {
                  v29 = *(v28 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_2713663C0;
                operator new();
              case 5:
                sub_271759D80(v9, 5);
                v12 = v7[2];
                if (*(v12 + 6) >= 3uLL)
                {
                  v13 = *(v12 + 5);
                }

                v48 = v7;
                v49 = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v47 = sub_2713663C0;
                operator new();
            }
          }

          sub_27183428C(v11);
        }
      }

LABEL_14:
      *v44 = *"cv3d.viz";
      v45 = 0x800000000000000;
      v46 = 4;
      sub_2711BE814(&v41, v44, 1uLL);
      if (*(a1 + 23) < 0)
      {
        sub_271127178(v38, *a1, *(a1 + 8));
      }

      else
      {
        *v38 = *a1;
        v39 = *(a1 + 16);
      }

      v40 = *(a1 + 24);
      LODWORD(v32) = 3;
      sub_27136484C(v33, &v32);
      *__p = *v33;
      v36 = v34;
      v33[1] = 0;
      v34 = 0;
      v33[0] = 0;
      v37 = 1;
      sub_271369E70(&v41, v38, __p);
    }

LABEL_13:
    v42 = 0;
    v43 = 0;
    goto LABEL_14;
  }

LABEL_8:
  if (v5)
  {
    goto LABEL_9;
  }

  goto LABEL_13;
}

void sub_271365D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271365EB0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271365F04(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_271365FA4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881068F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271365FF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *sub_271366078(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_271366078;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_271366078;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B7D8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con6PointsILj2EEENS3_7PackageELj3EvEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con6PointsILj2EEENS3_7PackageELj3EvEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con6PointsILj2EEENS3_7PackageELj3EvEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con6PointsILj2EEENS3_7PackageELj3EvEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188C274)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_27136621C(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27136621C;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27136621C;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B838;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3con6PointsILj2EEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3con6PointsILj2EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3con6PointsILj2EEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3con6PointsILj2EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188C2AC)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_2713663C0(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_2713663C0;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_2713663C0;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B7C8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con6PointsILj3EEENS3_7PackageELj4EvEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con6PointsILj3EEENS3_7PackageELj4EvEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con6PointsILj3EEENS3_7PackageELj4EvEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con6PointsILj3EEENS3_7PackageELj4EvEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188C310)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_271366564(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_271366564;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_271366564;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B828;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3con6PointsILj3EEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3con6PointsILj3EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3con6PointsILj3EEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3con6PointsILj3EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188C348)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_271366938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271366BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271366C20(__int128 *a1, char a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) != 0 && *(a1 + 8) == 1)
  {
    v5 = *(a1 + 2);
    v4 = *a1;
    LOBYTE(v6[0]) = 0;
    v8 = 0;
    if (*(a3 + 32) == 1)
    {
      v3 = *(a3 + 24);
      if (v3)
      {
        if (v3 == a3)
        {
          v7 = v6;
          (*(*v3 + 24))(v3, v6);
        }

        else
        {
          v7 = *(a3 + 24);
          *(a3 + 24) = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = 1;
      LOBYTE(v10) = 0;
      v12 = 0;
      if (v7)
      {
        if (v7 == v6)
        {
          v11 = &v10;
          (*(*v7 + 3))();
        }

        else
        {
          v11 = v7;
          v7 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = 1;
    }

    else
    {
      LOBYTE(v10) = 0;
      v12 = 0;
    }

    v9 = 0;
    operator new();
  }

  v10 = &unk_288132EF0;
  operator new();
}

void sub_271367374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713674D8(uint64_t a1, __int128 *a2, char a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v9 = 0;
  if (*(a4 + 32) == 1)
  {
    v5 = *(a4 + 24);
    if (v5)
    {
      if (v5 == a4)
      {
        v8 = v7;
        v6 = a2;
        (*(*v5 + 24))(v5, v7);
        a2 = v6;
      }

      else
      {
        v8 = *(a4 + 24);
        *(a4 + 24) = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = 1;
  }

  sub_271366C20(a2, a3, v7);
}

void sub_271367640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271367664(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(**(*a1 + 8) + 48))(v9);
  v3 = v10;
  v4 = v11;
  v13 = &unk_288131488;
  v14 = v10;
  v15 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = v14;
    v4 = v15;
  }

  *a2 = &unk_288131488;
  a2[1] = v3;
  a2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = v14;
    v5 = v15;
  }

  else
  {
    v5 = 0;
  }

  a2[3] = &unk_28812D848;
  a2[4] = &unk_288131488;
  a2[5] = v3;
  a2[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = v15;
    *a2 = &unk_288130A18;
    a2[3] = &unk_288130A38;
    v13 = &unk_288131488;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    *a2 = &unk_288130A18;
    a2[3] = &unk_288130A38;
    v13 = &unk_288131488;
  }

  v9[0] = &unk_288132DC8;
  v7 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v9[1] = &unk_288131488;
  v8 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_271367938(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(**(*a1 + 8) + 56))(v9);
  v3 = v10;
  v4 = v11;
  v13 = &unk_288131488;
  v14 = v10;
  v15 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = v14;
    v4 = v15;
  }

  *a2 = &unk_288131488;
  a2[1] = v3;
  a2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = v14;
    v5 = v15;
  }

  else
  {
    v5 = 0;
  }

  a2[3] = &unk_28812D848;
  a2[4] = &unk_288131488;
  a2[5] = v3;
  a2[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = v15;
    *a2 = &unk_288130A18;
    a2[3] = &unk_288130A38;
    v13 = &unk_288131488;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    *a2 = &unk_288130A18;
    a2[3] = &unk_288130A38;
    v13 = &unk_288131488;
  }

  v9[0] = &unk_288132DC8;
  v7 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v9[1] = &unk_288131488;
  v8 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_271367C0C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0;
  sub_271368C80();
}

void sub_271367CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271367D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271367D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271367D38(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_271367E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_27112F828(&a9);
  sub_27112F828(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_271367EA0(uint64_t result)
{
  *result = &unk_288130EF8;
  if (*(result + 40) == 1)
  {
    v1 = *(result + 32);
    if (v1 == result + 8)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 32));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 32));
    }

    return v2;
  }

  return result;
}

void sub_271367F58(uint64_t a1)
{
  *a1 = &unk_288130EF8;
  if (*(a1 + 40) == 1)
  {
    v1 = *(a1 + 32);
    if (v1 == a1 + 8)
    {
      (*(*v1 + 32))(*(a1 + 32));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 32));
    }
  }

  JUMPOUT(0x2743BF050);
}

void sub_271368130(_Unwind_Exception *a1)
{
  sub_271144524(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_27136814C(uint64_t result, uint64_t a2)
{
  *a2 = &unk_288130EF8;
  *(a2 + 8) = 0;
  *(a2 + 40) = 0;
  if (*(result + 40) == 1)
  {
    v2 = *(result + 32);
    if (v2)
    {
      if (v2 == result + 8)
      {
        *(a2 + 32) = a2 + 8;
        v4 = a2;
        result = (*(**(result + 32) + 24))(*(result + 32), a2 + 8);
        a2 = v4;
        goto LABEL_8;
      }

      v3 = a2;
      result = (*(*v2 + 16))(*(result + 32));
      a2 = v3;
    }

    else
    {
      result = 0;
    }

    *(a2 + 32) = result;
LABEL_8:
    *(a2 + 40) = 1;
  }

  return result;
}

uint64_t sub_271368244(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = result + 8;
    result = *(result + 32);
    if (result == v1)
    {
      return (*(*result + 32))();
    }

    else if (result)
    {
      return (*(*result + 40))();
    }
  }

  return result;
}

void sub_2713682B0(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = *(a1 + 32);
    if (v1 == a1 + 8)
    {
      v2 = a1;
      (*(*v1 + 32))(*(a1 + 32));
    }

    else
    {
      if (!v1)
      {
        goto LABEL_7;
      }

      v2 = a1;
      (*(*v1 + 40))(*(a1 + 32));
    }

    a1 = v2;
  }

LABEL_7:

  operator delete(a1);
}

uint64_t sub_27136835C(uint64_t result, uint64_t **a2, __int128 *a3)
{
  if (*(result + 40) == 1)
  {
    v7 = *a3;
    LOBYTE(v8) = 0;
    v9 = 0;
    if (*(a3 + 112) == 1)
    {
      sub_27112F6CC(&v8, a3 + 1);
      v9 = 1;
    }

    sub_27123BC74(&v7, v10);
    sub_2714FCC00((a2 + 2));
    v4 = **a2;
    v12 = 0;
    v16 = v11;
    v17 = "while recording data of type ";
    v18 = v11;
    v19 = "while recording data of type ";
    v20 = "while recording data of type ";
    v13[0] = &v16;
    sub_2712390A4(v13);
    v13[0] = &v5;
    v13[1] = &v6;
    v16 = v11;
    v17 = "{";
    v18 = v11;
    v19 = "{";
    v20 = "{";
    if (v12 != -1)
    {
      v15 = &v16;
      (*(&off_288130FE0 + v12))(&v15, v11);
      LOBYTE(v16) = 1;
      v17 = v11;
      v18 = &v14;
      sub_2712B32E4(v13, &v16);
      v16 = v11;
      v17 = "}";
      v18 = v11;
      v19 = "}";
      v20 = "}";
      if (v12 != -1)
      {
        v15 = &v16;
        (*(&off_288130FE0 + v12))(&v15, v11);
        v16 = v11;
        v17 = " to context ";
        v18 = v11;
        v19 = " to context ";
        v20 = " to context ";
        if (v12 != -1)
        {
          v13[0] = &v16;
          (*(&off_288131010 + v12))(v13, v11);
          sub_27136892C();
        }

        sub_2711308D4();
      }
    }

    sub_2711308D4();
  }

  return result;
}

void sub_271368724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_27112D71C(&a38);
  sub_27112D71C(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_2713687C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d2vl13visual_logger14SharedRecorder12ForwardErrorE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d2vl13visual_logger14SharedRecorder12ForwardErrorE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d2vl13visual_logger14SharedRecorder12ForwardErrorE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d2vl13visual_logger14SharedRecorder12ForwardErrorE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_271368858(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288130F88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2713688AC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_271368B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271368BD8(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = *(v2 + 16);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    MEMORY[0x2743BF050](v2, 0xA1C409BE6959DLL);
    return v3;
  }

  return v1;
}

void sub_271368ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(exception_object);
}

_UNKNOWN **sub_271368F48()
{
  if (atomic_load_explicit(&qword_28087B738, memory_order_acquire))
  {
    return &off_2815984B0;
  }

  if (__cxa_guard_acquire(&qword_28087B738))
  {
    __cxa_atexit(std::error_category::~error_category, &off_2815984B0, &dword_27111A000);
    __cxa_guard_release(&qword_28087B738);
  }

  return &off_2815984B0;
}

__n128 sub_271368FD4@<Q0>(int a1@<W1>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 0:
      *(a2 + 23) = 8;
      strcpy(a2, "no error");
      return result;
    case 1:
      *(a2 + 23) = 13;
      strcpy(a2, "unknown error");
      return result;
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
    case 5:
      *(a2 + 23) = 9;
      strcpy(a2, "I/O error");
      return result;
    case 10:
      *(a2 + 23) = 16;
      v7 = "invalid argument";
      goto LABEL_32;
    case 11:
      operator new();
    case 12:
      operator new();
    case 13:
      operator new();
    case 14:
      *(a2 + 23) = 16;
      v7 = "filesystem error";
LABEL_32:
      result = *v7;
      *a2 = *v7;
      *(a2 + 16) = 0;
      return result;
    case 15:
      *(a2 + 23) = 17;
      *(a2 + 16) = 112;
      v3 = "invalid timestamp";
      goto LABEL_11;
    case 16:
      v5 = "inconsistent timestamp";
      goto LABEL_36;
    case 17:
      *(a2 + 23) = 18;
      *(a2 + 16) = 25959;
      v8 = "index out of range";
      goto LABEL_42;
    case 18:
      operator new();
    case 19:
      operator new();
    case 20:
      operator new();
    case 21:
      *(a2 + 23) = 19;
      *(a2 + 15) = 1635017060;
      v4 = "failed to load data";
      goto LABEL_39;
    case 22:
      *(a2 + 23) = 11;
      strcpy(a2, "invalid key");
      return result;
    case 30:
      operator new();
    case 31:
      v5 = "data export queue full";
LABEL_36:
      *(a2 + 23) = 22;
      result = *v5;
      *a2 = *v5;
      *(a2 + 14) = *(v5 + 14);
      *(a2 + 22) = 0;
      return result;
    case 32:
      *(a2 + 23) = 17;
      *(a2 + 16) = 104;
      v3 = "inconsistent mesh";
LABEL_11:
      result = *v3;
      *a2 = *v3;
      *(a2 + 17) = 0;
      return result;
    case 33:
      operator new();
    case 35:
      operator new();
    case 36:
      operator new();
    case 37:
      *(a2 + 23) = 19;
      *(a2 + 15) = 1701999980;
      v4 = "client send failure";
      goto LABEL_39;
    case 38:
      *(a2 + 23) = 19;
      *(a2 + 15) = 1701999980;
      v4 = "server send failure";
LABEL_39:
      result = *v4;
      *a2 = *v4;
      *(a2 + 19) = 0;
      break;
    case 39:
      operator new();
    case 40:
      operator new();
    case 41:
      operator new();
    case 42:
      operator new();
    case 43:
      operator new();
    case 44:
      operator new();
    case 45:
      *(a2 + 23) = 15;
      strcpy(a2, "invalid peer ID");
      break;
    case 46:
      operator new();
    default:
      *(a2 + 23) = 18;
      *(a2 + 16) = 25956;
      v8 = "unknown error code";
LABEL_42:
      result = *v8;
      *a2 = *v8;
      *(a2 + 18) = 0;
      break;
  }

  return result;
}

BOOL sub_27136987C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087B740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B740))
  {
    sub_271368F48();
    v6 = (*(off_2815984B0 + 2))();
    sub_27112B400(&qword_28087B748, v6);
    __cxa_atexit(MEMORY[0x277D82640], &qword_28087B748, &dword_27111A000);
    __cxa_guard_release(&qword_28087B740);
  }

  v2 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v3 = strlen(v2);
  if ((byte_28087B75F & 0x8000000000000000) != 0)
  {
    if (v3 == qword_28087B750)
    {
      if (v3 == -1)
      {
        sub_271127FEC();
      }

      if (!memcmp(qword_28087B748, v2, v3))
      {
        return *a1 == 31 || *a1 == 41;
      }
    }

    return 0;
  }

  if (v3 != byte_28087B75F || memcmp(&qword_28087B748, v2, v3))
  {
    return 0;
  }

  return *a1 == 31 || *a1 == 41;
}

void sub_271369A00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(__p[0]) = 0;
  v11 = 0;
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      v2 = a2;
      sub_271127178(__p, *a1, *(a1 + 8));
      a2 = v2;
    }

    else
    {
      *__p = *a1;
      v4 = *(a1 + 16);
    }

    v5 = 1;
    LOBYTE(v6) = 0;
    v10 = 0;
    v11 = 1;
  }

  sub_27112D480(1u, __p, a2);
  if (v11 == 1)
  {
    if (v10 != 1)
    {
      goto LABEL_10;
    }

    if (v9 < 0)
    {
      operator delete(v8);
      if ((v7 & 0x80000000) == 0)
      {
LABEL_10:
        if (v5 != 1)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    else if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v6);
    if (v5 != 1)
    {
      return;
    }

LABEL_11:
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_271369B1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(__p[0]) = 0;
  v11 = 0;
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      v2 = a2;
      sub_271127178(__p, *a1, *(a1 + 8));
      a2 = v2;
    }

    else
    {
      *__p = *a1;
      v4 = *(a1 + 16);
    }

    v5 = 1;
    LOBYTE(v6) = 0;
    v10 = 0;
    v11 = 1;
  }

  sub_27112D480(0xBu, __p, a2);
  if (v11 == 1)
  {
    if (v10 != 1)
    {
      goto LABEL_10;
    }

    if (v9 < 0)
    {
      operator delete(v8);
      if ((v7 & 0x80000000) == 0)
      {
LABEL_10:
        if (v5 != 1)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    else if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v6);
    if (v5 != 1)
    {
      return;
    }

LABEL_11:
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_271369C38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(__p[0]) = 0;
  v11 = 0;
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      v2 = a2;
      sub_271127178(__p, *a1, *(a1 + 8));
      a2 = v2;
    }

    else
    {
      *__p = *a1;
      v4 = *(a1 + 16);
    }

    v5 = 1;
    LOBYTE(v6) = 0;
    v10 = 0;
    v11 = 1;
  }

  sub_27112D480(4u, __p, a2);
  if (v11 == 1)
  {
    if (v10 != 1)
    {
      goto LABEL_10;
    }

    if (v9 < 0)
    {
      operator delete(v8);
      if ((v7 & 0x80000000) == 0)
      {
LABEL_10:
        if (v5 != 1)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    else if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v6);
    if (v5 != 1)
    {
      return;
    }

LABEL_11:
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_271369D54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(__p[0]) = 0;
  v11 = 0;
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      v2 = a2;
      sub_271127178(__p, *a1, *(a1 + 8));
      a2 = v2;
    }

    else
    {
      *__p = *a1;
      v4 = *(a1 + 16);
    }

    v5 = 1;
    LOBYTE(v6) = 0;
    v10 = 0;
    v11 = 1;
  }

  sub_27112D480(0xAu, __p, a2);
  if (v11 == 1)
  {
    if (v10 != 1)
    {
      goto LABEL_10;
    }

    if (v9 < 0)
    {
      operator delete(v8);
      if ((v7 & 0x80000000) == 0)
      {
LABEL_10:
        if (v5 != 1)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    else if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v6);
    if (v5 != 1)
    {
      return;
    }

LABEL_11:
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_271369E70(__int128 **a1, uint64_t a2, uint64_t a3)
{
  sub_2711218C8(v12);
  if (*(a3 + 24) == 1)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    if (v5 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = *(a3 + 8);
    }

    v8 = sub_271120E64(&v13, v6, v7);
    sub_271120E64(v8, ", ", 2);
  }

  v11 = v12;
  sub_271120E64(&v13, "required data id = ", 19);
  if (a1[1] - *a1 == 32)
  {
    sub_27136A3CC(&v11);
  }

  sub_271120E64(&v13, "any of {", 8);
  v9 = *a1;
  if (*a1 != a1[1])
  {
    if (*(v9 + 23) < 0)
    {
      sub_271127178(&__dst, *v9, *(v9 + 1));
    }

    else
    {
      v10 = *v9;
      v15 = *(v9 + 2);
      __dst = v10;
    }

    v16 = *(v9 + 6);
    sub_27136A3CC(&v11);
  }

  sub_271120E64(&v13, "}", 1);
  sub_271120E64(&v13, ", actual data id = ", 19);
  sub_27136A3CC(&v11);
}

void sub_27136A34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
  }

  sub_2711DC948(&a24, MEMORY[0x277D82818]);
  MEMORY[0x2743BEF20](&a40);
  _Unwind_Resume(a1);
}

void sub_27136A7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136A868(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(__p[0]) = 0;
  v11 = 0;
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      v2 = a2;
      sub_271127178(__p, *a1, *(a1 + 8));
      a2 = v2;
    }

    else
    {
      *__p = *a1;
      v4 = *(a1 + 16);
    }

    v5 = 1;
    LOBYTE(v6) = 0;
    v10 = 0;
    v11 = 1;
  }

  sub_27112D480(0xEu, __p, a2);
  if (v11 == 1)
  {
    if (v10 != 1)
    {
      goto LABEL_10;
    }

    if (v9 < 0)
    {
      operator delete(v8);
      if ((v7 & 0x80000000) == 0)
      {
LABEL_10:
        if (v5 != 1)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    else if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v6);
    if (v5 != 1)
    {
      return;
    }

LABEL_11:
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_27136AAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136AAD4(const char **a1, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = 0;
  if (*a1)
  {
    sub_271131BB4(v3, a1);
  }

  else
  {
    v6 = v3;
    v7 = "nullptr";
    v8 = v3;
    v9 = "nullptr";
    v10 = "nullptr";
    __dst = &v6;
    sub_2711316E8(&__dst);
  }

  v6 = v3;
  v7 = a2;
  v8 = v3;
  v9 = a2;
  v10 = a2;
  if (v4 != -1)
  {
    __dst = &v6;
    (*(&off_288131058 + v4))(&__dst, v3);
    operator new();
  }

  sub_2711308D4();
}

void sub_27136AE20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136AE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16 = a16;
  a16 = 0;
  if (v16)
  {
    sub_27184D728(&a16, v16);
  }

  JUMPOUT(0x27136AE7CLL);
}

void sub_27136AEA8(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27136AEE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *a2;
  v5 = *(a2 + 2);
  operator new();
}

void sub_27136AF74(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v4 = *a1;
  v5 = *a2;
  operator new();
}

void sub_27136B014(int a1@<W0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>, __int128 a5@<Q1>, __int128 a6@<Q2>, __n128 _Q3@<Q3>)
{
  if (!a1)
  {
    LODWORD(v12) = *a2;
    DWORD1(v12) = a2[4];
    *(&v12 + 1) = a2[8];
    LODWORD(a5) = a2[1];
    DWORD1(a5) = a2[5];
    DWORD2(a5) = a2[9];
    LODWORD(a6) = a2[2];
    DWORD1(a6) = a2[6];
    DWORD2(a6) = a2[10];
    __asm { FMOV            V3.4S, #1.0 }

    _Q3.n128_u32[0] = a2[3];
    _Q3.n128_u32[1] = a2[7];
    _Q3.n128_u32[2] = a2[11];
    v46 = v12;
    v47 = a5;
    v48 = a6;
    v49 = _Q3;
    if (a3 <= 1)
    {
      goto LABEL_4;
    }

LABEL_7:
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        sub_27153B100(&v35, &v46);
      }

      operator new();
    }

    operator new();
  }

  if (a1 != 1)
  {
    v46 = xmmword_27188C570;
    v47 = unk_27188C580;
    v48 = xmmword_27188C590;
    v49 = unk_27188C5A0;
    operator new();
  }

  a5 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 9);
  _Q3.n128_u32[0] = a2[11];
  v10.n128_u32[3] = 0;
  v10.n128_u32[0] = HIDWORD(*a2);
  HIDWORD(a5) = 0;
  *(v10.n128_u64 + 4) = *(a2 + 2);
  *&v11 = *(a2 + 3);
  *(&v11 + 1) = a2[8];
  v47 = v10;
  v48 = v11;
  v46 = a5;
  v49.n128_u64[0] = v9;
  v49.n128_u64[1] = _Q3.n128_u32[0] | 0x3F80000000000000;
  if (a3 > 1)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_27153743C(&v46, &unk_271897988, &v35, *&a5, _Q3.n128_f64[0]);
  if (v45)
  {
    sub_2715391C4();
  }

  v17 = __p;
  if (!v44)
  {
    v17 = &unk_2718BB850;
  }

  LOBYTE(v21[0]) = 0;
  v23 = 0;
  if (v44 && (v38 & 1) != 0)
  {
    if (v37 < 0)
    {
      sub_271127178(v21, *v17, __p[1]);
    }

    else
    {
      *v21 = *v17;
      v22 = v17[2];
    }

    v23 = 1;
  }

  sub_271369D54(v21, &v24);
  *a4 = v24;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v34 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_32;
  }

  *(a4 + 40) = 0;
  v18 = v27;
  if (v27 != 1)
  {
    *(a4 + 48) = 0;
    v19 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v33 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_29:
    v20 = v30;
    *(v19 + 16) = v29;
    *v19 = v28;
    v28 = 0uLL;
    *(a4 + 72) = v20;
    *(a4 + 80) = v31;
    *(a4 + 96) = v32;
    v29 = 0;
    v31 = 0uLL;
    v32 = 0;
    *(a4 + 104) = 1;
    *(a4 + 112) = 1;
    *(a4 + 120) = 0;
    if (!v18)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  *(a4 + 16) = v25;
  *(a4 + 32) = v26;
  v26 = 0;
  v25 = 0uLL;
  *(a4 + 40) = 1;
  *(a4 + 48) = 0;
  v19 = a4 + 48;
  *(a4 + 104) = 0;
  if (v33)
  {
    goto LABEL_29;
  }

LABEL_25:
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v18)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
  }

LABEL_32:
  if (v23 == 1 && SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if ((v45 & 1) == 0 && v44 == 1)
  {
    if (v43 == 1)
    {
      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41[0]);
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39[0]);
      }
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_27136B6C0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
    sub_271120E50(a1);
  }

  sub_271120E50(a1);
}

void sub_27136B6F4(int a1@<W0>, int64x2_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>, __n128 a5@<Q4>, __n128 a6@<Q5>, __n128 a7@<Q6>)
{
  if (!a1)
  {
    *&v15 = a2->i64[0];
    *&v16 = a2->i64[1];
    *&v17 = a2[1].i64[0];
    *&v18 = a2[1].i64[1];
    *(&v15 + 1) = a2[2].i64[0];
    *(&v16 + 1) = a2[2].i64[1];
    a5.n128_u64[0] = a2[4].u64[0];
    a6.n128_u64[0] = a2[4].u64[1];
    *(&v17 + 1) = a2[3].i64[0];
    *(&v18 + 1) = a2[3].i64[1];
    a7.n128_u64[0] = a2[5].u64[0];
    __asm { FMOV            V7.2D, #1.0 }

    *&_Q7 = a2[5].i64[1];
    v53 = v15;
    v54 = a5;
    v55 = v16;
    v56 = a6;
    v57 = v17;
    v58 = a7;
    v59 = v18;
    v60 = _Q7;
    if (a3 <= 1)
    {
      goto LABEL_4;
    }

LABEL_7:
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        sub_27153B49C(&v42, &v53);
      }

      operator new();
    }

    operator new();
  }

  if (a1 != 1)
  {
    v57 = xmmword_27188C5F0;
    v58 = unk_27188C600;
    v59 = xmmword_27188C610;
    v60 = unk_27188C620;
    v53 = xmmword_27188C5B0;
    v54 = unk_27188C5C0;
    v55 = xmmword_27188C5D0;
    v56 = unk_27188C5E0;
    operator new();
  }

  v8 = *a2;
  v9 = a2[5].i64[1];
  v10 = *(&a2[4] + 8);
  v11 = a2[1].i64[0];
  v12 = vdupq_laneq_s64(a2[1], 1);
  v13 = a2[2].i64[1];
  v14 = vzip1q_s64(v12, a2[2]);
  v12.i64[0] = a2[4].i64[0];
  v57 = a2[3];
  v58 = v12;
  v53 = v8;
  v54 = v11;
  v55 = v14;
  v56 = v13;
  v59 = v10;
  *&v60 = v9;
  *(&v60 + 1) = 0x3FF0000000000000;
  if (a3 > 1)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_2715382F4(&v53, dbl_271897998, &v42);
  if (v52)
  {
    sub_27153A014();
  }

  v24 = __p;
  if (!v51)
  {
    v24 = &unk_2718BB850;
  }

  LOBYTE(v28[0]) = 0;
  v30 = 0;
  if (v51 && (v45 & 1) != 0)
  {
    if (v44 < 0)
    {
      sub_271127178(v28, *v24, __p[1]);
    }

    else
    {
      *v28 = *v24;
      v29 = v24[2];
    }

    v30 = 1;
  }

  sub_271369D54(v28, &v31);
  *a4 = v31;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v41 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_32;
  }

  *(a4 + 40) = 0;
  v25 = v34;
  if (v34 != 1)
  {
    *(a4 + 48) = 0;
    v26 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v40 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_29:
    v27 = v37;
    *(v26 + 16) = v36;
    *v26 = v35;
    v35 = 0uLL;
    *(a4 + 72) = v27;
    *(a4 + 80) = v38;
    *(a4 + 96) = v39;
    v36 = 0;
    v38 = 0uLL;
    v39 = 0;
    *(a4 + 104) = 1;
    *(a4 + 112) = 1;
    *(a4 + 120) = 0;
    if (!v25)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  *(a4 + 16) = v32;
  *(a4 + 32) = v33;
  v33 = 0;
  v32 = 0uLL;
  *(a4 + 40) = 1;
  *(a4 + 48) = 0;
  v26 = a4 + 48;
  *(a4 + 104) = 0;
  if (v40)
  {
    goto LABEL_29;
  }

LABEL_25:
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v25)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

LABEL_32:
  if (v30 == 1 && SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  if ((v52 & 1) == 0 && v51 == 1)
  {
    if (v50 == 1)
    {
      if (SHIBYTE(v49) < 0)
      {
        operator delete(v48[0]);
      }

      if (SHIBYTE(v47) < 0)
      {
        operator delete(v46[0]);
      }
    }

    if (v45 == 1 && v44 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_27136BDB8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
    sub_271120E50(a1);
  }

  sub_271120E50(a1);
}

void sub_27136BDEC(uint64_t *a1@<X0>, int a2@<W1>, int32x4_t *a3@<X2>, uint64_t a4@<X8>, double a5@<D3>)
{
  if (!a2)
  {
    if (a3)
    {
      sub_27153BE9C(a1, &v20, a5);
      v13.i64[0] = vzip1q_s32(v20, *__p).u64[0];
      v13.i64[1] = __PAIR64__(v23.u32[0], v22.u32[0]);
      v14.i64[0] = vtrn2q_s32(v20, *__p).u64[0];
      v14.i64[1] = __PAIR64__(v23.u32[1], v22.u32[1]);
      v15.i64[0] = vzip2q_s32(v20, *__p).u64[0];
      v15.i64[1] = __PAIR64__(v23.u32[2], v22.u32[2]);
      v16.i64[0] = vuzp2q_s32(vuzp2q_s32(v20, *__p), v20).u64[0];
      v16.i64[1] = __PAIR64__(v23.u32[3], v22.u32[3]);
      *a3 = v13;
      a3[1] = v14;
      a3[2] = v15;
      a3[3] = v16;
    }

    goto LABEL_10;
  }

  if (a2 != 1)
  {
    operator new();
  }

  v7 = *a1;
  v8 = *(*a1 + 136);
  if (v8 == 5 || (v8 & 0xFE) != 4)
  {
    sub_27153BE9C(a1, &v20, a5);
    v10 = v20;
    v11 = *__p;
    v12 = v23;
    a3[2] = v22;
    a3[3] = v12;
    *a3 = v10;
    a3[1] = v11;
LABEL_10:
    *a4 = 0;
    goto LABEL_16;
  }

  if (*(v7 + 128))
  {
    sub_2711308D4();
  }

  if (a3)
  {
    v18 = *v7;
    v17 = *(v7 + 16);
    v19 = *(v7 + 48);
    a3[2] = *(v7 + 32);
    a3[3] = v19;
    *a3 = v18;
    a3[1] = v17;
  }

  *a4 = v7;
LABEL_16:
  *(a4 + 120) = 1;
}

void sub_27136C054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136C07C(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float64x2_t a5@<Q0>, float64x2_t a6@<Q5>)
{
  if (!a2)
  {
    if (a3)
    {
      sub_27153C318(a1, &v30, a5, a6);
      v16 = vzip1q_s64(v34, v36);
      *&v17 = vdupq_laneq_s64(v34, 1).u64[0];
      v18 = vzip2q_s64(v30, v32);
      *(&v17 + 1) = v36.i64[1];
      v19 = vzip1q_s64(*__p, v33);
      v20 = vzip1q_s64(v35, v37);
      v21 = vzip2q_s64(*__p, v33);
      *&v22 = vdupq_laneq_s64(v35, 1).u64[0];
      *(&v22 + 1) = v37.i64[1];
      *a3 = vzip1q_s64(v30, v32);
      *(a3 + 16) = v16;
      *(a3 + 32) = v18;
      *(a3 + 48) = v17;
      *(a3 + 64) = v19;
      *(a3 + 80) = v20;
      *(a3 + 96) = v21;
      *(a3 + 112) = v22;
    }

    goto LABEL_12;
  }

  if (a2 != 1)
  {
    operator new();
  }

  v8 = *a1;
  if (*(*a1 + 136) != 5)
  {
    sub_27153C318(a1, &v30, a5, a6);
    v23 = v30;
    v24 = *__p;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v29 = v37;
    *(a3 + 96) = v36;
    *(a3 + 112) = v29;
    *(a3 + 64) = v27;
    *(a3 + 80) = v28;
    *(a3 + 32) = v25;
    *(a3 + 48) = v26;
    *a3 = v23;
    *(a3 + 16) = v24;
LABEL_12:
    *a4 = 0;
    goto LABEL_13;
  }

  if (*(v8 + 128) != 1)
  {
    sub_2711308D4();
  }

  if (a3)
  {
    v10 = *v8;
    v9 = *(v8 + 16);
    v12 = *(v8 + 32);
    v11 = *(v8 + 48);
    v14 = *(v8 + 64);
    v13 = *(v8 + 80);
    v15 = *(v8 + 112);
    *(a3 + 96) = *(v8 + 96);
    *(a3 + 112) = v15;
    *(a3 + 64) = v14;
    *(a3 + 80) = v13;
    *(a3 + 32) = v12;
    *(a3 + 48) = v11;
    *a3 = v10;
    *(a3 + 16) = v9;
  }

  *a4 = v8;
LABEL_13:
  *(a4 + 120) = 1;
}

void sub_27136C304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136C32C(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D3>)
{
  if (a2)
  {
    if (a2 != 1)
    {
      operator new();
    }

    if (a3)
    {
      sub_27153BE9C(a1, &v14, a5);
      v7 = v14;
      v8 = *__p;
      v9 = v17;
      v10 = v18;
      *(a3 + 8) = v15;
      *a3 = v7;
      *(a3 + 20) = DWORD2(v8);
      *(a3 + 32) = DWORD2(v9);
      *(a3 + 12) = v8;
      *(a3 + 24) = v9;
      *(a3 + 44) = DWORD2(v10);
      *(a3 + 36) = v10;
    }
  }

  else if (a3)
  {
    sub_27153BE9C(a1, &v14, a5);
    *&v11 = __PAIR64__(__p[0], v14.u32[0]);
    LODWORD(v12) = vdupq_lane_s32(v14, 1).u32[0];
    *(&v11 + 1) = __PAIR64__(v18, v17);
    DWORD1(v12) = HIDWORD(__p[0]);
    *(&v12 + 1) = __PAIR64__(DWORD1(v18), DWORD1(v17));
    *&v13 = __PAIR64__(__p[1], v15);
    *(&v13 + 1) = __PAIR64__(DWORD2(v18), DWORD2(v17));
    *(a3 + 16) = v12;
    *(a3 + 32) = v13;
    *a3 = v11;
  }

  *(a4 + 120) = 1;
}

void sub_27136C5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136C5CC(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float64x2_t a5@<Q0>, float64x2_t a6@<Q5>)
{
  if (a2)
  {
    if (a2 != 1)
    {
      operator new();
    }

    if (a3)
    {
      sub_27153C318(a1, &v21, a5, a6);
      v8 = v21;
      v9 = v23;
      v10 = v24;
      v11 = v25;
      v12 = v26;
      v13 = v27;
      v14 = v28;
      *(a3 + 16) = __p;
      *a3 = v8;
      *(a3 + 40) = v10;
      *(a3 + 24) = v9;
      *(a3 + 64) = v12;
      *(a3 + 48) = v11;
      *(a3 + 88) = v14;
      *(a3 + 72) = v13;
    }
  }

  else if (a3)
  {
    sub_27153C318(a1, &v21, a5, a6);
    *&v16 = *(&v21 + 1);
    *&v15 = v21;
    *(&v15 + 1) = v23;
    *&v18 = *(&v25 + 1);
    *&v17 = v25;
    *&v19 = __p;
    *(&v17 + 1) = v27;
    *(&v16 + 1) = *(&v23 + 1);
    *&v20 = v26;
    *(&v18 + 1) = *(&v27 + 1);
    *(&v19 + 1) = v24;
    *(&v20 + 1) = v28;
    *(a3 + 64) = v19;
    *(a3 + 80) = v20;
    *(a3 + 32) = v16;
    *(a3 + 48) = v18;
    *a3 = v15;
    *(a3 + 16) = v17;
  }

  *(a4 + 120) = 1;
}

void sub_27136C83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27136C864(uint64_t a1)
{
  LOBYTE(v8) = 0;
  v9 = 0;
  v10 = 1;
  if ((atomic_load_explicit(&qword_28087B760, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B760))
  {
    v7 = sub_27139B104(1);
    sub_27136FD58(v7);
    __cxa_atexit(sub_271233D2C, &qword_28087B780, &dword_27111A000);
    __cxa_guard_release(&qword_28087B760);
  }

  __p = 0;
  v12 = 0;
  v13 = 0;
  p_p = &__p;
  v17 = 0;
  if (qword_28087B788 != qword_28087B780)
  {
    if (((qword_28087B788 - qword_28087B780) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  v14 = 1;
  v15 = 0;
  sub_27136CA7C(a1, &v8);
  if (v14 == 1)
  {
    v2 = __p;
    if (__p)
    {
      v3 = v12;
      v4 = __p;
      if (v12 != __p)
      {
        do
        {
          v5 = *(v3 - 1);
          if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }

          v3 -= 16;
        }

        while (v3 != v2);
        v4 = __p;
      }

      v12 = v2;
      operator delete(v4);
    }
  }

  return a1;
}

void sub_27136CA54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2711B0820(va);
  _Unwind_Resume(a1);
}

void sub_27136CA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2711B5360(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27136CA7C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  *(result + 16) = 0;
  *(result + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    v3 = a2[2];
    v4 = a2[3];
    if (v4 != v3)
    {
      if (((v4 - v3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_271135560();
    }

    *(result + 40) = 1;
  }

  *(result + 48) = *(a2 + 12);
  *(result + 56) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 128) = 0;
  return result;
}

void sub_27136CB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_2711B5360(&a9);
  sub_2711B08E0(v9);
  _Unwind_Resume(a1);
}

void sub_27136CBA0(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *(a1 + 12) = a2;
  if (a2 < 3)
  {
    *(a3 + 120) = 1;
    return;
  }

  v7 = a2;
  sub_2711D3B40("invalid VZServerSyncType ", &v7);
  if (SHIBYTE(v9) < 0)
  {
    sub_271127178(v10, v8[0], v8[1]);
  }

  else
  {
    *v10 = *v8;
    v11 = v9;
  }

  v12 = 1;
  LOBYTE(v13) = 0;
  v17 = 0;
  v18 = 1;
  sub_27112D480(0xAu, v10, &v19);
  *a3 = v19;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v29 == 1)
  {
    *(a3 + 40) = 0;
    v4 = v22;
    if (v22 == 1)
    {
      *(a3 + 16) = v20;
      *(a3 + 32) = v21;
      v21 = 0;
      v20 = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v5 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v28 & 1) == 0)
      {
LABEL_10:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v4)
        {
          goto LABEL_17;
        }

LABEL_15:
        if (SHIBYTE(v21) < 0)
        {
          operator delete(v20);
        }

        goto LABEL_17;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v5 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v28 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v6 = v25;
    *(v5 + 16) = v24;
    *v5 = v23;
    v24 = 0;
    v23 = 0uLL;
    *(a3 + 72) = v6;
    *(a3 + 80) = v26;
    *(a3 + 96) = v27;
    v26 = 0uLL;
    v27 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *(a3 + 120) = 0;
  }

LABEL_17:
  if (v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(__p);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_27136CDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27136CDE4(uint64_t a1, uint64_t a2)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = (a1 + 56);
  if (*(a1 + 88) == 1)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      if (v4 == a2)
      {
        v11 = v10;
        (*(*v4 + 24))(v4, v10);
      }

      else
      {
        v11 = (*(*v4 + 16))(v4);
      }
    }

    else
    {
      v11 = 0;
    }

    if (v3 != v10)
    {
      v6 = v11;
      v7 = *(a1 + 80);
      if (v11 == v10)
      {
        if (v7 != v3)
        {
          (*(*v11 + 24))();
          (*(*v11 + 32))(v11);
          v11 = *(a1 + 80);
          v8 = v11;
          *(a1 + 80) = v3;
          result = v8;
          if (v8 == v10)
          {
            goto LABEL_26;
          }

          goto LABEL_23;
        }

        (*(*v11 + 24))();
        (*(*v11 + 32))(v11);
        v11 = 0;
        (*(**(a1 + 80) + 24))(*(a1 + 80), v10);
        (*(**(a1 + 80) + 32))(*(a1 + 80));
        *(a1 + 80) = 0;
        v11 = v10;
        (*(v12[0] + 24))(v12, v3);
        (*(v12[0] + 32))(v12);
        *(a1 + 80) = v3;
        result = v11;
        if (v11 != v10)
        {
LABEL_23:
          if (result)
          {
            result = (*(*result + 40))(result);
          }

          goto LABEL_27;
        }

LABEL_26:
        result = (*(*result + 32))(result);
        goto LABEL_27;
      }

      if (v7 != v3)
      {
        v11 = *(a1 + 80);
        *(a1 + 80) = v6;
        result = v7;
        if (v7 == v10)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      (*(*v7 + 24))(*(a1 + 80), v10);
      (*(**(a1 + 80) + 32))(*(a1 + 80));
      *(a1 + 80) = v11;
      v11 = v10;
    }

    result = v11;
    if (v11 != v10)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  result = *(a2 + 24);
  if (result)
  {
    if (result == a2)
    {
      *(a1 + 80) = v3;
      result = (*(**(a2 + 24) + 24))(*(a2 + 24), v3);
    }

    else
    {
      result = (*(*result + 16))(result);
      *(a1 + 80) = result;
    }
  }

  else
  {
    *(a1 + 80) = 0;
  }

  *(a1 + 88) = 1;
LABEL_27:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27136D1E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_271120E50(a1);
}

uint64_t sub_27136D1EC(uint64_t a1, uint64_t a2)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = (a1 + 96);
  if (*(a1 + 128) == 1)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      if (v4 == a2)
      {
        v11 = v10;
        (*(*v4 + 24))(v4, v10);
      }

      else
      {
        v11 = (*(*v4 + 16))(v4);
      }
    }

    else
    {
      v11 = 0;
    }

    if (v3 != v10)
    {
      v6 = v11;
      v7 = *(a1 + 120);
      if (v11 == v10)
      {
        if (v7 != v3)
        {
          (*(*v11 + 24))();
          (*(*v11 + 32))(v11);
          v11 = *(a1 + 120);
          v8 = v11;
          *(a1 + 120) = v3;
          result = v8;
          if (v8 == v10)
          {
            goto LABEL_26;
          }

          goto LABEL_23;
        }

        (*(*v11 + 24))();
        (*(*v11 + 32))(v11);
        v11 = 0;
        (*(**(a1 + 120) + 24))(*(a1 + 120), v10);
        (*(**(a1 + 120) + 32))(*(a1 + 120));
        *(a1 + 120) = 0;
        v11 = v10;
        (*(v12[0] + 24))(v12, v3);
        (*(v12[0] + 32))(v12);
        *(a1 + 120) = v3;
        result = v11;
        if (v11 != v10)
        {
LABEL_23:
          if (result)
          {
            result = (*(*result + 40))(result);
          }

          goto LABEL_27;
        }

LABEL_26:
        result = (*(*result + 32))(result);
        goto LABEL_27;
      }

      if (v7 != v3)
      {
        v11 = *(a1 + 120);
        *(a1 + 120) = v6;
        result = v7;
        if (v7 == v10)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      (*(*v7 + 24))(*(a1 + 120), v10);
      (*(**(a1 + 120) + 32))(*(a1 + 120));
      *(a1 + 120) = v11;
      v11 = v10;
    }

    result = v11;
    if (v11 != v10)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  result = *(a2 + 24);
  if (result)
  {
    if (result == a2)
    {
      *(a1 + 120) = v3;
      result = (*(**(a2 + 24) + 24))(*(a2 + 24), v3);
    }

    else
    {
      result = (*(*result + 16))(result);
      *(a1 + 120) = result;
    }
  }

  else
  {
    *(a1 + 120) = 0;
  }

  *(a1 + 128) = 1;
LABEL_27:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27136D5E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_271120E50(a1);
}

void sub_27136D5F4(void *a1, unsigned __int16 *a2)
{
  v5 = a1;
  sub_271120E64(a1, "{", 1);
  v4[0] = a2;
  v4[1] = a2 + 28;
  v4[2] = a2 + 48;
  sub_271120E64(a1, "{", 1);
  v7[0] = 1;
  v8 = &v5;
  v9 = &v6;
  sub_271372F74(v4, v7);
}

void sub_27136D710(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 16) + 16))(v27);
  if (v36 == 1)
  {
    *(a2 + 120) = 1;
    return;
  }

  sub_2711D40C8(v27, &v6);
  v16 = v6;
  LOBYTE(__p) = 0;
  v26 = 0;
  if (v15 == 1)
  {
    sub_27112F6CC(&__p, &v7);
    v26 = 1;
    *a2 = v16;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    v3 = v19;
    if (v19 == 1)
    {
      *(a2 + 16) = __p;
      *(a2 + 32) = v18;
      v18 = 0;
      __p = 0uLL;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      v4 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v25 & 1) == 0)
      {
LABEL_7:
        *(a2 + 112) = 1;
        *(a2 + 120) = 0;
        if (!v3)
        {
          goto LABEL_14;
        }

LABEL_12:
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_14;
      }
    }

    else
    {
      *(a2 + 48) = 0;
      v4 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v25 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v5 = v22;
    *(v4 + 16) = v21;
    *v4 = v20;
    v20 = 0uLL;
    *(a2 + 72) = v5;
    *(a2 + 80) = v23;
    *(a2 + 96) = v24;
    v21 = 0;
    v23 = 0uLL;
    v24 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *a2 = v6;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

LABEL_14:
  if (v15 == 1)
  {
    if (v14 == 1)
    {
      if (v13 < 0)
      {
        operator delete(v12);
      }

      if (v11 < 0)
      {
        operator delete(v10);
      }
    }

    if (v9 == 1 && v8 < 0)
    {
      operator delete(v7);
    }
  }

  if ((v36 & 1) == 0 && v35 == 1)
  {
    if (v34 == 1)
    {
      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (v31 < 0)
      {
        operator delete(v30);
      }
    }

    if (v29 == 1 && v28 < 0)
    {
      operator delete(v27[2]);
    }
  }
}

void sub_27136D974(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(v2 + 16);
  sub_27112D71C(va);
  sub_27112E024(v3 - 160);
  _Unwind_Resume(a1);
}

void sub_27136D9AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 16) + 24))(v27);
  if (v36 == 1)
  {
    *(a2 + 120) = 1;
    return;
  }

  sub_2711D40C8(v27, &v6);
  v16 = v6;
  LOBYTE(__p) = 0;
  v26 = 0;
  if (v15 == 1)
  {
    sub_27112F6CC(&__p, &v7);
    v26 = 1;
    *a2 = v16;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    v3 = v19;
    if (v19 == 1)
    {
      *(a2 + 16) = __p;
      *(a2 + 32) = v18;
      v18 = 0;
      __p = 0uLL;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      v4 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v25 & 1) == 0)
      {
LABEL_7:
        *(a2 + 112) = 1;
        *(a2 + 120) = 0;
        if (!v3)
        {
          goto LABEL_14;
        }

LABEL_12:
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_14;
      }
    }

    else
    {
      *(a2 + 48) = 0;
      v4 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v25 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v5 = v22;
    *(v4 + 16) = v21;
    *v4 = v20;
    v20 = 0uLL;
    *(a2 + 72) = v5;
    *(a2 + 80) = v23;
    *(a2 + 96) = v24;
    v21 = 0;
    v23 = 0uLL;
    v24 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *a2 = v6;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

LABEL_14:
  if (v15 == 1)
  {
    if (v14 == 1)
    {
      if (v13 < 0)
      {
        operator delete(v12);
      }

      if (v11 < 0)
      {
        operator delete(v10);
      }
    }

    if (v9 == 1 && v8 < 0)
    {
      operator delete(v7);
    }
  }

  if ((v36 & 1) == 0 && v35 == 1)
  {
    if (v34 == 1)
    {
      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (v31 < 0)
      {
        operator delete(v30);
      }
    }

    if (v29 == 1 && v28 < 0)
    {
      operator delete(v27[2]);
    }
  }
}

void sub_27136DC10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(v2 + 16);
  sub_27112D71C(va);
  sub_27112E024(v3 - 160);
  _Unwind_Resume(a1);
}

void sub_27136DC48(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  v5 = 0;
  v6 = 0;
  v3 = 0;
  v4 = 0;
  v7 = &unk_28810BD10;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v2 = &unk_28810C368;
  operator new();
}

void sub_27136E074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_27136E0E4(void *a1, uint64_t *a2)
{
  v3 = sub_271120E64(a1, "SyncControl{server: ", 20);
  v9 = *a2;
  v13 = 0;
  sub_271136C48(&v15, v12, &v9);
  if (v13 == -1)
  {
    sub_2711308D4();
  }

  v15 = &v14;
  (off_2881310E8[v13])(__p, &v15, v12);
  if (v13 != -1)
  {
    (off_2881310B8[v13])(&v15, v12);
  }

  if ((v11 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_271120E64(v3, v4, v5);
  result = sub_271120E64(v6, "}", 1);
  if (v11 < 0)
  {
    v8 = result;
    operator delete(__p[0]);
    return v8;
  }

  return result;
}

void sub_27136E1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27136E210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27136E22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27136E240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28[0] = a2;
  v28[1] = a1;
  v28[2] = a3;
  LOBYTE(v63) = 0;
  v74 = 0;
  v62[0] = &unk_288116998;
  v62[1] = &v63;
  v62[2] = v28;
  sub_27184A384(v62, &v51);
  if (v61 != 1)
  {
    v40 = v51;
    LOBYTE(__p) = 0;
    v50 = 0;
    if (v60 == 1)
    {
      sub_27112F6CC(&__p, &v52);
      v50 = 1;
      v29 = v40;
      LOBYTE(v30) = 0;
      BYTE8(v31) = 0;
      if (v43 == 1)
      {
        v30 = __p;
        *&v31 = v42;
        v42 = 0;
        __p = 0uLL;
        BYTE8(v31) = 1;
        LOBYTE(v32) = 0;
        v37 = 0;
        if ((v49 & 1) == 0)
        {
LABEL_8:
          v38 = 1;
          v39 = 0;
          if (!v43)
          {
            goto LABEL_21;
          }

LABEL_19:
          if (SHIBYTE(v42) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_21;
        }
      }

      else
      {
        LOBYTE(v32) = 0;
        v37 = 0;
        if ((v49 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v33 = v45;
      v32 = v44;
      v44 = 0uLL;
      v34 = v46;
      v35 = v47;
      v36 = v48;
      v45 = 0;
      v47 = 0uLL;
      v48 = 0;
      v37 = 1;
      v38 = 1;
      v39 = 0;
      if (v43)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v29 = v51;
      LOBYTE(v30) = 0;
      v38 = 0;
      v39 = 0;
    }

LABEL_21:
    if ((v61 & 1) == 0 && v60 == 1)
    {
      if (v59 == 1)
      {
        if (v58 < 0)
        {
          operator delete(v57);
        }

        if (v56 < 0)
        {
          operator delete(v55);
        }
      }

      if (v54 == 1 && v53 < 0)
      {
        operator delete(v52);
      }
    }

    goto LABEL_31;
  }

  v39 = v73;
  if (v73 == 1)
  {
    v29 = v63;
    v63 = 0uLL;
    LOBYTE(v30) = 0;
    LOBYTE(v32) = 0;
    if (v66 != 1)
    {
      goto LABEL_31;
    }

    v5 = &v32;
    v6 = v64;
    v64 = 0uLL;
    v30 = v6;
    v31 = v65;
  }

  else
  {
    v29 = v63;
    LOBYTE(v30) = 0;
    v38 = 0;
    if (v72 != 1)
    {
      goto LABEL_31;
    }

    v5 = &v38;
    BYTE8(v31) = 0;
    if (BYTE8(v65) == 1)
    {
      v30 = v64;
      *&v31 = v65;
      *&v65 = 0;
      v64 = 0uLL;
      BYTE8(v31) = 1;
    }

    LOBYTE(v32) = 0;
    v37 = 0;
    if (v71 == 1)
    {
      v33 = v67;
      v32 = v66;
      v66 = 0uLL;
      v34 = v68;
      v35 = v69;
      v36 = v70;
      v67 = 0;
      v69 = 0uLL;
      v70 = 0;
      v37 = 1;
    }
  }

  *v5 = 1;
LABEL_31:
  if (v74 == 1)
  {
    sub_2711B5C44(&v63);
  }

  v7 = v39;
  if (v39)
  {
    goto LABEL_34;
  }

  if ((atomic_load_explicit(&qword_28087B768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B768))
  {
    v17 = std::generic_category();
    qword_28087B770 = 22;
    qword_28087B778 = v17;
    __cxa_guard_release(&qword_28087B768);
  }

  v7 = v39;
  if (v39 == 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_288108EC0;
    __cxa_throw(exception, &unk_28811C2D8, std::exception::~exception);
  }

  if (*(&v29 + 1) != qword_28087B778 || v29 != qword_28087B770)
  {
LABEL_34:
    *a4 = 0;
    *(a4 + 120) = v7;
    if (v7)
    {
      *a4 = v29;
      v29 = 0uLL;
      *(a4 + 16) = 0;
      *(a4 + 48) = 0;
      v8 = (a4 + 48);
      if (v32 != 1)
      {
        return sub_2711B5C44(&v29);
      }

      v9 = v30;
      v10 = v31;
      v30 = 0uLL;
      *(a4 + 16) = v9;
      *(a4 + 32) = v10;
    }

    else
    {
      v13 = v29;
      *(a4 + 16) = 0;
      *a4 = v13;
      *(a4 + 112) = 0;
      v8 = (a4 + 112);
      if (v38 != 1)
      {
        return sub_2711B5C44(&v29);
      }

      *(a4 + 40) = 0;
      if (BYTE8(v31) == 1)
      {
        *(a4 + 16) = v30;
        *(a4 + 32) = v31;
        *&v31 = 0;
        v30 = 0uLL;
        *(a4 + 40) = 1;
      }

      *(a4 + 48) = 0;
      *(a4 + 104) = 0;
      if (v37 == 1)
      {
        v14 = v34;
        *(a4 + 64) = v33;
        *(a4 + 48) = v32;
        v32 = 0uLL;
        *(a4 + 72) = v14;
        *(a4 + 80) = v35;
        *(a4 + 96) = v36;
        v33 = 0;
        v35 = 0uLL;
        v36 = 0;
        *(a4 + 104) = 1;
      }
    }

    *v8 = 1;
    return sub_2711B5C44(&v29);
  }

  LOBYTE(v19[0]) = 0;
  v27 = 0;
  if (v38 == 1)
  {
    sub_27112F6CC(v19, &v30);
    v27 = 1;
  }

  sub_27112D480(0xAu, v19, &v63);
  *a4 = v63;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v72 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_59;
  }

  *(a4 + 40) = 0;
  v11 = BYTE8(v65);
  if (BYTE8(v65) != 1)
  {
    *(a4 + 48) = 0;
    v12 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v71 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_56:
    v15 = v68;
    *(v12 + 16) = v67;
    *v12 = v66;
    v66 = 0uLL;
    *(a4 + 72) = v15;
    *(a4 + 80) = v69;
    *(a4 + 96) = v70;
    v67 = 0;
    v69 = 0uLL;
    v70 = 0;
    *(a4 + 104) = 1;
    *(a4 + 112) = 1;
    *(a4 + 120) = 0;
    if (!v11)
    {
      goto LABEL_59;
    }

LABEL_57:
    if (SBYTE7(v65) < 0)
    {
      operator delete(v64);
    }

    goto LABEL_59;
  }

  *(a4 + 16) = v64;
  *(a4 + 32) = v65;
  *&v65 = 0;
  v64 = 0uLL;
  *(a4 + 40) = 1;
  *(a4 + 48) = 0;
  v12 = a4 + 48;
  *(a4 + 104) = 0;
  if (v71)
  {
    goto LABEL_56;
  }

LABEL_46:
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (v11)
  {
    goto LABEL_57;
  }

LABEL_59:
  if (v27 == 1)
  {
    if (v26 == 1)
    {
      if (v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 < 0)
      {
        operator delete(v22);
      }
    }

    if (v21 == 1 && v20 < 0)
    {
      operator delete(v19[0]);
    }
  }

  return sub_2711B5C44(&v29);
}

void sub_27136E894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_27112D66C(&a9);
  sub_2711B5C44(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_27136E900@<X0>(char *__s@<X2>, uint64_t *a2@<X0>, unsigned __int8 *a3@<X1>, _BYTE *a4@<X8>)
{
  v6 = *a2;
  if (__s)
  {
    v8 = strlen(__s);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    v13 = v8;
    if (v8)
    {
      memcpy(&__dst, __s, v8);
    }

    *(&__dst + v9) = 0;
  }

  else
  {
    v13 = 0;
    LOBYTE(__dst) = 0;
  }

  result = sub_27152F1A4(*(v6 + 8), a3, &__dst);
  if (v13 < 0)
  {
    v11 = result;
    operator delete(__dst);
    result = v11;
    if ((v11 & 0x100) == 0)
    {
LABEL_12:
      sub_27136A984(a3, "client");
    }
  }

  else if ((result & 0x100) == 0)
  {
    goto LABEL_12;
  }

  *a4 = result;
  a4[120] = 1;
  return result;
}

void sub_27136EB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27136EB44@<X0>(char *__s@<X2>, uint64_t *a2@<X0>, unsigned __int8 *a3@<X1>, _BYTE *a4@<X8>)
{
  v6 = *a2;
  if (__s)
  {
    v8 = strlen(__s);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    v13 = v8;
    if (v8)
    {
      memcpy(&__dst, __s, v8);
    }

    *(&__dst + v9) = 0;
  }

  else
  {
    v13 = 0;
    LOBYTE(__dst) = 0;
  }

  result = sub_27152F34C(*(v6 + 8), a3, &__dst);
  if (v13 < 0)
  {
    v11 = result;
    operator delete(__dst);
    result = v11;
    if ((v11 & 0x100) == 0)
    {
LABEL_12:
      sub_27136A984(a3, "client");
    }
  }

  else if ((result & 0x100) == 0)
  {
    goto LABEL_12;
  }

  *a4 = result;
  a4[120] = 1;
  return result;
}