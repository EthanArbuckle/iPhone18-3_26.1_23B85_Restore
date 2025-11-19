void *sub_29A10E224(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x666666666666667)
  {
    sub_29A00C8B8();
  }

  return operator new(40 * a2);
}

uint64_t sub_29A10E26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 40;
    }
  }

  return sub_29A10E330(v9);
}

uint64_t sub_29A10E330(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A10E368(a1);
  }

  return a1;
}

void sub_29A10E368(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 40);
      v3 -= 40;
      v4 = v5;
      if (v5)
      {
        *(v1 - 32) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t sub_29A10E3B8(uint64_t a1)
{
  sub_29A10E3F0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A10E3F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 40);
    *(a1 + 16) = v2 - 40;
    if (v5)
    {
      *(v2 - 32) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }
}

uint64_t sub_29A10E450(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A10E224(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[40 * v2];
  v15 = v7;
  v16 = v8;
  *(&v17 + 1) = &v7[40 * v6];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = *a2;
  *(v8 + 2) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v8 + 24) = *(a2 + 24);
  *&v17 = v8 + 40;
  v9 = a1[1];
  v10 = &v8[*a1 - v9];
  sub_29A10E26C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A10E3B8(&v15);
  return v14;
}

void sub_29A10E584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A10E3B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A10E598(uint64_t a1, unint64_t a2, float a3, float a4)
{
  v13 = a2;
  v7 = sub_29A10A6B8(a1, &v13);
  sub_29A10E73C(v7 + 1, v13);
  v8 = *(a1 + 8);
  if (v8 == *(a1 + 16))
  {
    v8 = sub_29A10E704();
  }

  v9 = v13;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  if (v9 >= 0x666666666666667)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "The map exceeds its maximum bucket count.");
    exception->__vftable = (MEMORY[0x29EDC95D8] + 16);
    __cxa_throw(exception, off_29F294A20, MEMORY[0x29EDC9348]);
  }

  if (v9)
  {
    *(*(a1 + 16) - 34) = 1;
  }

  v10 = fminf(fmaxf(a4, 0.2), 0.95);
  *(a1 + 64) = fminf(fmaxf(a3, 0.0), 0.15);
  *(a1 + 68) = v10;
  *(a1 + 56) = (v10 * v9);
  return a1;
}

void sub_29A10E6DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A108030(va);
  _Unwind_Resume(a1);
}

void *sub_29A10E704()
{
  if ((atomic_load_explicit(&qword_2A14F6280, memory_order_acquire) & 1) == 0)
  {
    sub_29B28DEEC();
  }

  return &unk_2A14F6258;
}

void *sub_29A10E73C(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A10E7C8(a1, a2);
    v4 = a1[1];
    v5 = v4 + 40 * a2;
    do
    {
      *v4 = 0;
      *(v4 + 4) = -1;
      *(v4 + 6) = 0;
      v4 += 40;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

char *sub_29A10E7C8(void *a1, unint64_t a2)
{
  if (a2 >= 0x666666666666667)
  {
    sub_29A00C9A4();
  }

  result = sub_29A10E224(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[40 * v4];
  return result;
}

uint64_t sub_29A10E814(uint64_t *a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v7 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = *a1;
  v11 = a1[4];
  v12 = v9 & *a1;
  result = v11 + 40 * v12;
  if (*(result + 4) < 0)
  {
    v14 = 0;
LABEL_7:
    while (sub_29A10E9CC(a1, v14))
    {
      v15 = a1[4];
      v12 = v9 & *a1;
      if (*(v15 + 40 * v12 + 4) < 0)
      {
        v14 = 0;
      }

      else
      {
        LOWORD(v14) = 0;
        do
        {
          v14 = (v14 + 1);
          v12 = (v12 + 1) & *a1;
        }

        while (v14 <= *(v15 + 40 * v12 + 4));
      }
    }

    v16 = a1[4] + 40 * v12;
    if (*(v16 + 4) == -1)
    {
      *(v16 + 8) = **a4;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      *v16 = v9;
      *(v16 + 4) = v14;
    }

    else
    {
      sub_29A10EAA0(a1, v12, v14, v9, a3, a4);
    }

    ++a1[6];
    return a1[4] + 40 * v12;
  }

  else
  {
    LOWORD(v14) = 0;
    while (*(result + 8) != *a2)
    {
      v14 = (v14 + 1);
      v12 = (v12 + 1) & v10;
      result = v11 + 40 * v12;
      if (v14 > *(result + 4))
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_29A10E9CC(uint64_t a1, int a2)
{
  if (a2 > 0x2000 || (*(a1 + 72) & 1) != 0 || (v3 = *(a1 + 48), v3 >= *(a1 + 56)))
  {
    v7 = sub_29A10A428(a1);
    sub_29A10EAE4(a1, v7);
    *(a1 + 72) = 0;
    return 1;
  }

  if (*(a1 + 73) == 1)
  {
    *(a1 + 73) = 0;
    v4 = *(a1 + 64);
    if (v4 != 0.0)
    {
      v5 = *(a1 + 40);
      v6 = v5 ? v3 / v5 : 0.0;
      if (v6 < v4)
      {
        v9 = *(a1 + 68);
        v10 = vcvtps_u32_f32((v3 + 1) / v9);
        v11 = vcvtps_u32_f32(v3 / v9);
        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        sub_29A10EAE4(a1, v12);
        return 1;
      }
    }
  }

  return 0;
}

void sub_29A10EAA0(uint64_t *a1, uint64_t a2, __int16 a3, int a4, uint64_t a5, uint64_t **a6)
{
  v6 = **a6;
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_29A10ECD0(a1, a2, a3, a4, &v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_29A10EAE4(uint64_t a1, unint64_t a2)
{
  sub_29A10E598(&v9, a2, *(a1 + 64), *(a1 + 68));
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    v5 = v10[4];
    v6 = v3 + 1;
    do
    {
      if (*(v6 - 2) != -1)
      {
        if (v5 > 0x100000000)
        {
          v8 = 0x9DDFEA08EB382D69 * ((8 * (*v6 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*v6));
          v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(*v6) ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(*v6) ^ (v8 >> 47) ^ v8)) >> 47));
        }

        else
        {
          v7 = *(v6 - 2);
        }

        sub_29A10EC1C(&v9, v9 & v7, 0, v7, v6);
      }

      v6 += 5;
    }

    while (v6 - 1 != v4);
  }

  v10[5] = *(a1 + 48);
  sub_29A10A4B4(&v9, a1);
  v11 = v10;
  sub_29A108030(&v11);
}

void sub_29A10EBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 72) = &a11;
  sub_29A108030((v11 - 72));
  _Unwind_Resume(a1);
}

__n128 sub_29A10EC1C(void *a1, uint64_t a2, __int16 a3, int a4, void *a5)
{
  while (1)
  {
    v5 = a1[4] + 40 * a2;
    v6 = *(v5 + 4);
    if (v6 >= a3)
    {
      goto LABEL_4;
    }

    v7 = *a5;
    if (v6 == -1)
    {
      break;
    }

    *a5 = *(v5 + 8);
    *(v5 + 8) = v7;
    v8 = a5[1];
    a5[1] = *(v5 + 16);
    *(v5 + 16) = v8;
    v9 = a5[2];
    a5[2] = *(v5 + 24);
    *(v5 + 24) = v9;
    v10 = a5[3];
    a5[3] = *(v5 + 32);
    *(v5 + 32) = v10;
    *(v5 + 4) = a3;
    LODWORD(v10) = *v5;
    *v5 = a4;
    a3 = v6;
    a4 = v10;
LABEL_4:
    ++a3;
    a2 = *a1 & (a2 + 1);
  }

  *(v5 + 8) = v7;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  result = *(a5 + 1);
  *(v5 + 16) = result;
  *(v5 + 32) = a5[3];
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = 0;
  *v5 = a4;
  *(v5 + 4) = a3;
  return result;
}

__n128 sub_29A10ECD0(uint64_t *a1, uint64_t a2, __int16 a3, int a4, void *a5)
{
  v5 = a1[4] + 40 * a2;
  v6 = *a5;
  *a5 = *(v5 + 8);
  *(v5 + 8) = v6;
  v7 = a5[1];
  a5[1] = *(v5 + 16);
  *(v5 + 16) = v7;
  v8 = a5[2];
  a5[2] = *(v5 + 24);
  *(v5 + 24) = v8;
  v9 = a5[3];
  a5[3] = *(v5 + 32);
  *(v5 + 32) = v9;
  v10 = *(v5 + 4);
  *(v5 + 4) = a3;
  v11 = *v5;
  *v5 = a4;
  v12 = *a1;
  v13 = (a2 + 1) & *a1;
  v14 = v10 + 1;
  v15 = a1[4];
  v16 = (v15 + 40 * v13);
  v17 = &v16->n128_u16[2];
  for (i = v16->n128_u16[2]; i != 0xFFFF; i = v16->n128_u16[2])
  {
    if (v14 <= i)
    {
      i = v14;
    }

    else
    {
      if (v14 > 0x2000)
      {
        *(a1 + 72) = 1;
      }

      v19 = *a5;
      *a5 = v16->n128_u64[1];
      v16->n128_u64[1] = v19;
      v20 = a5[1];
      a5[1] = v16[1].n128_u64[0];
      v16[1].n128_u64[0] = v20;
      v21 = a5[2];
      a5[2] = v16[1].n128_u64[1];
      v16[1].n128_u64[1] = v21;
      v22 = a5[3];
      a5[3] = v16[2].n128_u64[0];
      v16[2].n128_u64[0] = v22;
      *v17 = v14;
      v23 = v16->n128_u32[0];
      v16->n128_u32[0] = v11;
      v15 = a1[4];
      v11 = v23;
    }

    v13 = (v13 + 1) & v12;
    v14 = i + 1;
    v16 = (v15 + 40 * v13);
    v17 = &v16->n128_u16[2];
  }

  v16->n128_u64[1] = *a5;
  v16[1].n128_u64[0] = 0;
  v16[1].n128_u64[1] = 0;
  v16[2].n128_u64[0] = 0;
  result = *(a5 + 1);
  v16[1] = result;
  v16[2].n128_u64[0] = a5[3];
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = 0;
  v16->n128_u32[0] = v11;
  v16->n128_u16[2] = v14;
  return result;
}

uint64_t sub_29A10EE9C(void *a1, void *a2, uint64_t a3)
{
  v3 = a1[4];
  v4 = *a1 & a3;
  v5 = v3 + 40 * v4;
  if (*(v5 + 4) < 0)
  {
    return v3 + 40 * a1[5];
  }

  LOWORD(v6) = 0;
  while (*(v5 + 8) != *a2)
  {
    v6 = (v6 + 1);
    v4 = (v4 + 1) & *a1;
    v5 = v3 + 40 * v4;
    if (v6 > *(v5 + 4))
    {
      return v3 + 40 * a1[5];
    }
  }

  return v5;
}

void *sub_29A10EF44(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29A10EFA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A10EFC0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *(a4 + 16) = *(v4 + 2);
      *a4 = v5;
      v6 = *(v4 + 24);
      *(a4 + 40) = *(v4 + 5);
      *(a4 + 24) = v6;
      *(v4 + 4) = 0;
      *(v4 + 5) = 0;
      *(v4 + 3) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = v4[3];
      *(a4 + 64) = *(v4 + 8);
      *(v4 + 6) = 0;
      *(v4 + 7) = 0;
      *(v4 + 8) = 0;
      v4 = (v4 + 72);
      a4 += 72;
    }

    while (v4 != a3);
    v11 = a4;
    v9 = 1;
    if (a2 != a3)
    {
      std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode,0>();
    }
  }

  return sub_29A10C68C(v8);
}

uint64_t sub_29A10F0BC(uint64_t a1)
{
  sub_29A10F0F4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A10F0F4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    *(result + 16) = v2 - 72;
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode,0>();
  }

  return result;
}

uint64_t sub_29A10F13C(uint64_t *a1, uint64_t a2, __int128 **a3, __int128 *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0x8E38E38E38E38E39 * ((v9 - v10) >> 3)) < a5)
    {
      v11 = *a1;
      v12 = a5 - 0x71C71C71C71C71C7 * ((v10 - *a1) >> 3);
      if (v12 <= 0x38E38E38E38E38ELL)
      {
        v13 = a2 - v11;
        v14 = 0x8E38E38E38E38E39 * ((v9 - v11) >> 3);
        if (2 * v14 > v12)
        {
          v12 = 2 * v14;
        }

        if (v14 >= 0x1C71C71C71C71C7)
        {
          v15 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v15 = v12;
        }

        v16 = 0x8E38E38E38E38E39 * (v13 >> 3);
        v22[4] = a1;
        if (v15)
        {
          v17 = sub_29A09C03C(a1, v15);
        }

        else
        {
          v17 = 0;
        }

        v22[0] = v17;
        v22[2] = &v17[72 * v16];
        v22[3] = &v17[72 * v15];
        std::allocator<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode,pxrInternal__aapl__pxrReserved__::TfMallocTag::CallTree::PathNode&>();
      }

      sub_29A00C9A4();
    }

    v18 = v10 - a2;
    if ((0x8E38E38E38E38E39 * ((v10 - a2) >> 3)) >= a5)
    {
      v20 = 9 * a5;
      sub_29A10F348(a1, a2, a1[1], a2 + 72 * a5);
      v19 = &a3[v20];
      goto LABEL_15;
    }

    a1[1] = sub_29A10C564(a1, (a3 + v18), a4, a1[1]);
    if (v18 >= 1)
    {
      sub_29A10F348(a1, a2, v10, a2 + 72 * a5);
      v19 = (a3 + v18);
LABEL_15:
      sub_29A10C874(v22, a3, v19, a2);
    }
  }

  return a2;
}

uint64_t sub_29A10F348(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      v11 = *(v9 + 24);
      *(v8 + 40) = *(v9 + 40);
      *(v8 + 24) = v11;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 48) = *(v9 + 48);
      *(v8 + 64) = *(v9 + 64);
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      v9 += 72;
      v8 += 72;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_29A10F4AC(&v13, a2, v7, v6);
}

uint64_t sub_29A10F3F0(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  sub_29A10EFC0(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  sub_29A10EFC0(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_29A10F4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      v10 = *(a3 + v7 - 72);
      *(v9 - 56) = *(a3 + v7 - 56);
      *(v9 - 72) = v10;
      v11 = (a4 + v7 - 48);
      if (*(a4 + v7 - 25) < 0)
      {
        operator delete(*v11);
      }

      v12 = *(v8 - 48);
      *(a4 + v7 - 32) = *(v8 - 32);
      *v11 = v12;
      *(v8 - 25) = 0;
      *(v8 - 48) = 0;
      sub_29A10C428((v9 - 24));
      *(v9 - 24) = *(v8 - 24);
      *(v9 - 8) = *(v8 - 8);
      *(v8 - 24) = 0;
      *(v8 - 16) = 0;
      *(v8 - 8) = 0;
      v7 -= 72;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t sub_29A10F578(uint64_t a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_29A00C9A4();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    v7 = sub_29A09C03C(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = (v7 + 72 * v2);
  v17 = v7;
  v18 = v8;
  *(&v19 + 1) = v7 + 72 * v6;
  v9 = *a2;
  *(v8 + 2) = *(a2 + 2);
  *v8 = v9;
  v10 = *(a2 + 24);
  *(v8 + 5) = *(a2 + 5);
  *(v8 + 24) = v10;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  *(v8 + 6) = 0;
  *(v8 + 7) = 0;
  *(v8 + 8) = 0;
  v8[3] = a2[3];
  *(v8 + 8) = *(a2 + 8);
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *&v19 = v8 + 72;
  v11 = *(a1 + 8);
  v12 = v8 + *a1 - v11;
  sub_29A10EFC0(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A10F0BC(&v17);
  return v16;
}

void sub_29A10F6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A10F0BC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A10F6F8(uint64_t a1, char *a2, char *a3)
{
  v4 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
  if (v4)
  {
    v6 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(a2, 0);
    *a1 = v6;
    *(a1 + 8) = 2 * (v6 != 0);
    if (v6)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin(a3, v6);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t *sub_29A10F76C(uint64_t *result, uint64_t *a2)
{
  v2 = 0;
  v12 = *result;
  v3 = *a2;
  __dmb(0xBu);
  *result = v3;
  v4 = v12;
  __dmb(0xBu);
  *a2 = v4;
  v13 = result[65];
  v5 = a2[65];
  __dmb(0xBu);
  result[65] = v5;
  v6 = v13;
  __dmb(0xBu);
  a2[65] = v6;
  v7 = result[68];
  result[68] = a2[68];
  a2[68] = v7;
  v8 = result[71];
  result[71] = a2[71];
  a2[71] = v8;
  v9 = a2 + 2;
  v10 = result + 2;
  do
  {
    v11 = v10[v2];
    v10[v2] = v9[v2];
    v9[v2++] = v11;
  }

  while (v2 != 63);
  return result;
}

void sub_29A10F800(uint64_t a1)
{
  v1 = *(a1 + 8);
  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>();
}

void sub_29A10F854(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v2)
    {
      v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v3 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v3 = v2;
    }

    v10 = a1;
    if (v3)
    {
      v4 = sub_29A012C48(a1, v3);
    }

    else
    {
      v4 = 0;
    }

    v5 = &v4[24 * v1];
    v6 = v4;
    v7 = v5;
    v8 = v5;
    v9 = &v4[24 * v3];
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>();
  }

  sub_29A00C9A4();
}

void sub_29A10F970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0C2DF8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A10F984(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 3);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return sub_29A10FA40(v9);
}

uint64_t sub_29A10FA40(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A10CC3C(a1);
  }

  return a1;
}

void *sub_29A10FA78(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_29A008D14(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = *(a2 + 3);
  v3[1] = v4 + 32;
  return result;
}

uint64_t sub_29A10FAE8(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v22 = a1;
  if (v7)
  {
    v8 = sub_29A10CB10(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[2 * v2];
  v19 = v8;
  v20 = v9;
  *&v21 = v9;
  *(&v21 + 1) = &v8[2 * v7];
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v9, *a2, *(a2 + 1));
    v11 = v20;
    v12 = v21;
  }

  else
  {
    v10 = *a2;
    *(v9 + 2) = *(a2 + 2);
    *v9 = v10;
    v11 = v9;
    v12 = v9;
  }

  *(v9 + 3) = *(a2 + 3);
  *&v21 = v12 + 2;
  v13 = *(a1 + 8);
  v14 = v11 + *a1 - v13;
  sub_29A10F984(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v21;
  *(a1 + 8) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_29A10CC84(&v19);
  return v18;
}

void sub_29A10FC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A10CC84(va);
  _Unwind_Resume(a1);
}

void sub_29A10FC24(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = *(a1 + 40);
  v8 = v7 + *(a1 + 32);
  if (v6 == v8)
  {
    sub_29A10FCAC(a1);
    v5 = *(a1 + 8);
    v7 = *(a1 + 40);
    v8 = *(a1 + 32) + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  *(a1 + 40) = v7 + 1;
}

void sub_29A10FCAC(void **a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x200;
  v4 = v2 - 512;
  if (v3)
  {
    a1[4] = v4;
    goto LABEL_4;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = v6 - a1[1];
  v9 = v7 - *a1;
  if (v8 < v9)
  {
    if (v7 != v6)
    {
      *&v20 = operator new(0x1000uLL);
      sub_29A0D6614(a1, &v20);
      return;
    }

    *&v20 = operator new(0x1000uLL);
    sub_29A0D671C(a1, &v20);
LABEL_4:
    v5 = a1[1];
    *&v20 = *v5;
    a1[1] = v5 + 1;
    sub_29A0D6614(a1, &v20);
    return;
  }

  if (v7 == *a1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 >> 2;
  }

  v22 = a1;
  *&v20 = sub_29A00C9BC(a1, v10);
  *(&v20 + 1) = v20 + v8;
  *&v21 = v20 + v8;
  *(&v21 + 1) = v20 + 8 * v11;
  v19 = operator new(0x1000uLL);
  sub_29A0D6828(&v20, &v19);
  v12 = a1[2];
  for (i = -7 - v12; ; i += 8)
  {
    v14 = a1[1];
    if (v12 == v14)
    {
      break;
    }

    sub_29A0D6930(&v20, --v12);
  }

  v15 = *a1;
  v16 = v20;
  v17 = v21;
  *&v20 = *a1;
  *(&v20 + 1) = v14;
  v18 = *(a1 + 1);
  *a1 = v16;
  *(a1 + 1) = v17;
  v21 = v18;
  if (v12 != v18)
  {
    *&v21 = v18 + (-(v18 + i) & 0xFFFFFFFFFFFFFFF8);
  }

  if (v15)
  {
    operator delete(v15);
  }
}

void sub_29A10FE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A10FE60(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(a1 + 40) = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v7 = *(a1 + 16);
      v4 = (*(a1 + 8) + 8);
      *(a1 + 8) = v4;
      v6 = (v7 - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 256;
    goto LABEL_7;
  }

  if (v6 == 2)
  {
    v8 = 512;
LABEL_7:
    *(a1 + 32) = v8;
  }

  sub_29A10FF08(a1);
  result = sub_29A11013C(a1, a2);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_29A10FF08(void **a1)
{
  if (a1[5])
  {
    sub_29A10FF8C(a1, 0);
    sub_29A10FFEC(a1, 0);
  }

  else
  {
    v3 = a1[1];
    for (i = a1[2]; i != v3; a1[2] = i)
    {
      operator delete(*(i - 8));
      v3 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
  }

  sub_29A11005C(a1);
}

uint64_t sub_29A10FF8C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

uint64_t sub_29A10FFEC(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
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

void sub_29A11005C(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 == v3)
    {
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v6 = sub_29A00C9BC(a1, (v1 - v3) >> 3);
      v2 = *a1;
      v4 = a1[3] - *a1;
    }

    if (v7 < v4 >> 3)
    {
      v8 = a1[1];
      v9 = a1[2] - v8;
      if (v9)
      {
        v10 = v6;
        do
        {
          v11 = *v8++;
          *v10++ = v11;
          v9 -= 8;
        }

        while (v9);
        v8 = a1[1];
        v12 = a1[2];
        v2 = *a1;
      }

      else
      {
        v12 = a1[1];
      }

      *a1 = v6;
      a1[1] = v6;
      a1[2] = v6 + v12 - v8;
      a1[3] = &v6[v7];
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_29A11013C(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_29A11005C(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

void sub_29A1101BC(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 4) = -1;
  *(a2 + 6) = 1;
}

uint64_t sub_29A1101D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = v2;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 4;
  return result;
}

void pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::_BeginDelivery(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_instance);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_BeginDelivery(v7, a2, a3, a4, a5, a6, a7);
}

void *pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::_EndDelivery(uint64_t a1, uint64_t *a2, char *a3)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_CreateInstance();
  }

  return pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_EndDelivery(v3, a2, a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::_WaitUntilNotSending(pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase *this)
{
  v1 = (this + 36);
  do
  {
    result = sched_yield();
  }

  while (atomic_load_explicit(v1, memory_order_acquire) != 0x80000000);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::InsertProbe(void *a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_CreateInstance();
  }

  return pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_InsertProbe(v2, a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfNotice::RemoveProbe(uint64_t a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_CreateInstance();
  }

  return pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_RemoveProbe(v2, a1);
}

void *pxrInternal__aapl__pxrReserved__::TfNotice::_Register@<X0>(pxrInternal__aapl__pxrReserved__::TfNotice *this@<X0>, char **a2@<X8>)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_CreateInstance();
  }

  return pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_Register(v4, this, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_Send(pxrInternal__aapl__pxrReserved__::TfNotice *this, const std::type_info *a2, uint64_t a3, const std::type_info *a4)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v10 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(*(*this - 8), a2);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_instance);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_CreateInstance();
  }

  return pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_Send(v8, this, &v10, a2, a3, a4);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_SendWithType(pxrInternal__aapl__pxrReserved__::TfNotice *this, const pxrInternal__aapl__pxrReserved__::TfType *a2, const pxrInternal__aapl__pxrReserved__::TfWeakBase *a3, uint64_t a4, const std::type_info *a5)
{
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_CreateInstance();
  }

  return pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_Send(v6, this, a2, a3, a4, a5);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::SendWithWeakBase(pxrInternal__aapl__pxrReserved__::TfNotice *this, const std::type_info *a2, uint64_t a3, const std::type_info *a4)
{
  if (!a2)
  {
    a4 = MEMORY[0x29EDC9500];
  }

  return pxrInternal__aapl__pxrReserved__::TfNotice::_Send(this, a2, a3, a4);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::Revoke(uint64_t a1)
{
  v2 = sub_29A110918(a1);
  if (v2)
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_instance);
    if (!v3)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_Revoke(v3, a1);
  }

  return v2;
}

atomic_uint *pxrInternal__aapl__pxrReserved__::TfNotice::Revoke(uint64_t *a1, uint64_t a2, char *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v8 = v4;
  v9 = v5;
  if (v4 != v5)
  {
    do
    {
      v6 = sub_29A110660(&v8, v4, a3);
      pxrInternal__aapl__pxrReserved__::TfNotice::Revoke(v6);
      sub_29A1106E0(&v8);
    }

    while (v8 != v9);
    v4 = *a1;
  }

  return sub_29A110958(a1, v4);
}

uint64_t sub_29A110660(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::TfNotice::Key>>::operator*() [T = std::vector<pxrInternal__aapl__pxrReserved__::TfNotice::Key>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A1106E0(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::TfNotice::Key>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::TfNotice::Key>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::RevokeAndWait(uint64_t a1)
{
  v2 = sub_29A110918(a1);
  if (v2)
  {
    v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_instance);
    if (!v3)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_Revoke(v3, a1);
  }

  return v2;
}

atomic_uint *pxrInternal__aapl__pxrReserved__::TfNotice::RevokeAndWait(uint64_t *a1, uint64_t a2, char *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v8 = v4;
  v9 = v5;
  if (v4 != v5)
  {
    do
    {
      v6 = sub_29A110660(&v8, v4, a3);
      pxrInternal__aapl__pxrReserved__::TfNotice::RevokeAndWait(v6);
      sub_29A1106E0(&v8);
    }

    while (v8 != v9);
    v4 = *a1;
  }

  return sub_29A110958(a1, v4);
}

void pxrInternal__aapl__pxrReserved__::TfNotice::_VerifyFailedCast(std::type_info *this, const std::type_info *a2, const pxrInternal__aapl__pxrReserved__::TfNotice *a3, const pxrInternal__aapl__pxrReserved__::TfNotice *a4)
{
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_VerifyFailedCast(v5, this, a2, a3);
}

pxrInternal__aapl__pxrReserved__::TfNotice::Block *pxrInternal__aapl__pxrReserved__::TfNotice::Block::Block(pxrInternal__aapl__pxrReserved__::TfNotice::Block *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_IncrementBlockCount(v2);
  return this;
}

void pxrInternal__aapl__pxrReserved__::TfNotice::Block::~Block(pxrInternal__aapl__pxrReserved__::TfNotice::Block *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_instance);
  if (!v1)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry::_DecrementBlockCount(v1);
}

uint64_t sub_29A110918(uint64_t a1)
{
  v2 = sub_29B28CC2C(a1);
  if (v3 & 1 | v2)
  {
    sub_29A0EA964(a1);
  }

  return 0;
}

atomic_uint *sub_29A110958(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (result != a2)
  {
    result = sub_29B28DF58(result, a2);
  }

  *(a1 + 8) = a2;
  return result;
}

void pxrInternal__aapl__pxrReserved__::TfRealPath(std::string *this@<X0>, int a2@<W1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  v22 = *MEMORY[0x29EDCA608];
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (a3)
  {
    v7 = a3;
    v8 = (a3 + 23);
    v9 = (a3 + 8);
    if (*(a3 + 23) < 0)
    {
      **a3 = 0;
      *(a3 + 8) = 0;
    }

    else
    {
      *a3 = 0;
      *(a3 + 23) = 0;
    }
  }

  else
  {
    v7 = &v18;
    v9 = &v19;
    v8 = &v20 + 7;
  }

  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&this->__r_.__value_.__s + 23))
    {
      memset(&v17, 0, sizeof(v17));
      __p = *this;
      goto LABEL_11;
    }

LABEL_15:
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_39;
  }

  size = this->__r_.__value_.__l.__size_;
  if (!size)
  {
    goto LABEL_15;
  }

  memset(&v17, 0, sizeof(v17));
  sub_29A008D14(&__p, this->__r_.__value_.__l.__data_, size);
LABEL_11:
  if (!a2)
  {
    goto LABEL_22;
  }

  LongestAccessiblePrefix = pxrInternal__aapl__pxrReserved__::TfFindLongestAccessiblePrefix(this, v7);
  if ((*v8 & 0x8000000000000000) == 0)
  {
    if (!*v8)
    {
      goto LABEL_17;
    }

LABEL_34:
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_35;
  }

  if (*v9)
  {
    goto LABEL_34;
  }

LABEL_17:
  std::string::basic_string(&__dst, this, 0, LongestAccessiblePrefix, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = __dst;
  sub_29A111440(&__dst, this, LongestAccessiblePrefix);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  v17 = __dst;
LABEL_22:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
      goto LABEL_27;
    }
  }

  else if (*(&__p.__r_.__value_.__s + 23))
  {
    p_p = &__p;
LABEL_27:
    if (realpath_DARWIN_EXTSN(p_p, &__dst))
    {
      std::operator+<char>();
      pxrInternal__aapl__pxrReserved__::ArchAbsPath(v14, a4);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }

      goto LABEL_35;
    }

    v13 = __error();
    pxrInternal__aapl__pxrReserved__::ArchStrerror(*v13, v14);
    if (*v8 < 0)
    {
      operator delete(*v7);
    }

    *v7 = *v14;
    v7[2] = v15;
    goto LABEL_34;
  }

  pxrInternal__aapl__pxrReserved__::ArchAbsPath(&v17, a4);
LABEL_35:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

LABEL_39:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v18);
  }
}

void sub_29A110C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

std::string::size_type pxrInternal__aapl__pxrReserved__::TfFindLongestAccessiblePrefix(std::string *this, uint64_t a2)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v5 = this;
  }

  else
  {
    v5 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v6 = 0;
    while (v5->__r_.__value_.__s.__data_[v6] == 47)
    {
      if (size == ++v6)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v6 = -1;
  }

  while (1)
  {
    v18 = std::string::find(this, 47, v6);
    if (v18 == -1)
    {
      break;
    }

    sub_29A018094(&v19, &v18);
    v6 = v18 + 1;
  }

  v7 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v7 & 0x80u) != 0)
  {
    v7 = this->__r_.__value_.__l.__size_;
  }

  v18 = v7;
  sub_29A018094(&v19, &v18);
  v8 = v19;
  v9 = v20;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(&__p, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *&this->__r_.__value_.__l.__data_;
    v16 = this->__r_.__value_.__r.__words[2];
  }

  v17 = a2;
  if (v9 != v8)
  {
    v10 = (v9 - v8) >> 3;
    do
    {
      v11 = &v8[8 * (v10 >> 1)];
      v12 = (sub_29A110E7C)(&__p, *v11, -1, v17);
      if (v12)
      {
        v10 += ~(v10 >> 1);
      }

      else
      {
        v10 >>= 1;
      }

      if (v12)
      {
        v8 = v11 + 1;
      }
    }

    while (v10);
    v9 = v8;
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (v19 == v9)
  {
    v13 = 0;
  }

  else if (v20 == v9)
  {
    v13 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v13 & 0x8000000000000000) != 0)
    {
      v13 = this->__r_.__value_.__l.__size_;
    }
  }

  else
  {
    v13 = *(v9 - 1);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  return v13;
}

void sub_29A110E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A110E7C(std::string *a1, std::string::size_type a2, std::string::size_type __n, uint64_t a4)
{
  if (a2 == __n)
  {
    return 0;
  }

  if (a2 == -1)
  {
    return !sub_29A1112AC(a1, __n, a4);
  }

  if (__n != -1)
  {
    return a2 < __n;
  }

  return sub_29A1112AC(a1, a2, a4);
}

void pxrInternal__aapl__pxrReserved__::TfGetExtension(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A153F040, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    sub_29B28DFD0();
    a1 = v6;
  }

  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfGetBaseName(a1, &__p);
    pxrInternal__aapl__pxrReserved__::TfStringGetBeforeSuffix(&__p, 46, &v7);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      size = v7.__r_.__value_.__l.__size_;
      operator delete(v7.__r_.__value_.__l.__data_);
      if (size)
      {
        goto LABEL_8;
      }
    }

    else if (*(&v7.__r_.__value_.__s + 23))
    {
LABEL_8:
      pxrInternal__aapl__pxrReserved__::TfStringGetSuffix(&__p, 46, a2);
LABEL_18:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return;
    }

    if (byte_2A153F05F < 0)
    {
      sub_29A008D14(a2, xmmword_2A153F048, *(&xmmword_2A153F048 + 1));
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = xmmword_2A153F048;
      a2->__r_.__value_.__r.__words[2] = unk_2A153F058;
    }

    goto LABEL_18;
  }

  if (byte_2A153F05F < 0)
  {
    v5 = xmmword_2A153F048;

    sub_29A008D14(a2, v5, *(&v5 + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = xmmword_2A153F048;
    a2->__r_.__value_.__r.__words[2] = unk_2A153F058;
  }
}

void sub_29A111030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfReadLink(char *a1@<X0>, void *a2@<X8>)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::ArchReadLink(a1, a2);
}

BOOL pxrInternal__aapl__pxrReserved__::TfIsRelativePath(unsigned __int8 *a1)
{
  if ((a1[23] & 0x80000000) == 0)
  {
    if (!a1[23])
    {
      return 1;
    }

    return *a1 != 47;
  }

  if (*(a1 + 1))
  {
    a1 = *a1;
    return *a1 != 47;
  }

  return 1;
}

void pxrInternal__aapl__pxrReserved__::TfGlob(const char **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (v5 == a1[1])
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    if (v5[23] < 0)
    {
      v5 = *v5;
    }

    glob(v5, a2 & 0xFFFFFFFE, 0, &v17);
    v7 = *a1;
    if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) >= 2)
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = &v7[v8];
        v11 = (v10 + 3);
        if (*(v10 + 47) < 0)
        {
          v11 = *v11;
        }

        glob(v11, a2 | 1, 0, &v17);
        ++v9;
        v7 = *a1;
        v8 += 24;
      }

      while (v9 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    gl_pathc = v17.gl_pathc;
    if (v17.gl_pathc)
    {
      v13 = 0;
      do
      {
        v14 = v17.gl_pathv[v13];
        if (v14)
        {
          sub_29A008E78(__p, v14);
          sub_29A091654(a3, __p);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }

          gl_pathc = v17.gl_pathc;
        }

        ++v13;
      }

      while (v13 < gl_pathc);
    }

    globfree(&v17);
  }
}

void pxrInternal__aapl__pxrReserved__::TfGlob(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  if (v4)
  {
    sub_29A111510(v6, 1uLL, a1);
    pxrInternal__aapl__pxrReserved__::TfGlob(v6, a2, a3);
    v7 = v6;
    sub_29A012C90(&v7);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_29A111294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A1112AC(std::string *__str, std::string::size_type __n, uint64_t a3)
{
  std::string::basic_string(&v10, __str, 0, __n, &v9);
  *__error() = 0;
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (pxrInternal__aapl__pxrReserved__::TfPathExists(&v10, 0))
  {
    if (pxrInternal__aapl__pxrReserved__::TfIsLink(&v10) && !pxrInternal__aapl__pxrReserved__::TfPathExists(&v10, 1))
    {
      v7.n128_f64[0] = sub_29A1113C0(a3);
      v8 = *(a3 + 23);
      if (v8 < 0)
      {
        v8 = *(a3 + 8);
      }

      if (!v8)
      {
        MEMORY[0x29C2C1A60](a3, "encountered dangling symbolic link", v7);
      }
    }

    else
    {
      sub_29A1113C0(a3);
    }

    v4 = *(a3 + 23);
    if (v4 < 0)
    {
      v4 = *(a3 + 8);
    }

    v5 = v4 == 0;
  }

  else
  {
    sub_29A1113C0(a3);
    v5 = 0;
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_29A1113A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_29A1113C0(uint64_t a1)
{
  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
      return result;
    }
  }

  else if (*(a1 + 23))
  {
    return result;
  }

  if (*__error())
  {
    pxrInternal__aapl__pxrReserved__::ArchStrerror(&v3);
  }

  else
  {
    v3 = 0uLL;
    v4 = 0;
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

void *sub_29A111440(void *__dst, uint64_t *a2, unint64_t a3)
{
  v4 = a2;
  v6 = *(a2 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = a2[1];
    if (v6 < a3)
    {
      goto LABEL_16;
    }

    v4 = *a2;
  }

  else if (v6 < a3)
  {
LABEL_16:
    sub_29A0F26CC();
  }

  v7 = v6 - a3;
  if (v6 - a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_29A008DA8();
  }

  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v7 | 7) + 1;
    }

    v8 = operator new(v9);
    __dst[1] = v7;
    __dst[2] = v9 | 0x8000000000000000;
    *__dst = v8;
  }

  else
  {
    *(__dst + 23) = v7;
    v8 = __dst;
    if (v6 == a3)
    {
      goto LABEL_15;
    }
  }

  memmove(v8, v4 + a3, v7);
LABEL_15:
  *(v8 + v7) = 0;
  return __dst;
}

void *sub_29A111510(void *a1, unint64_t a2, __int128 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A012BFC(a1, a2);
    v6 = a1[1];
    v7 = 3 * a2;
    v8 = v6 + 24 * a2;
    v9 = 8 * v7;
    do
    {
      if (*(a3 + 23) < 0)
      {
        sub_29A008D14(v6, *a3, *(a3 + 1));
      }

      else
      {
        v10 = *a3;
        *(v6 + 16) = *(a3 + 2);
        *v6 = v10;
      }

      v6 += 24;
      v9 -= 24;
    }

    while (v9);
    a1[1] = v8;
  }

  return a1;
}

double pxrInternal__aapl__pxrReserved__::TfPatternMatcher::TfPatternMatcher(pxrInternal__aapl__pxrReserved__::TfPatternMatcher *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *(this + 32) = 1;
  *(this + 10) = 0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *(this + 32) = 1;
  *(this + 10) = 0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfPatternMatcher::TfPatternMatcher(uint64_t a1, __int128 *a2, char a3, char a4)
{
  *a1 = a3;
  *(a1 + 1) = a4;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::TfPatternMatcher::~TfPatternMatcher(void **this)
{
  pxrInternal__aapl__pxrReserved__::ArchRegex::~ArchRegex((this + 5));
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void *pxrInternal__aapl__pxrReserved__::TfPatternMatcher::GetInvalidReason@<X0>(pxrInternal__aapl__pxrReserved__::TfPatternMatcher *this@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::TfPatternMatcher::_Compile(this);

  return pxrInternal__aapl__pxrReserved__::ArchRegex::GetError(this + 5, a2);
}

void pxrInternal__aapl__pxrReserved__::TfPatternMatcher::_Compile(pxrInternal__aapl__pxrReserved__::TfPatternMatcher *this)
{
  if (*(this + 32) == 1)
  {
    v5[8] = v1;
    v5[9] = v2;
    *(this + 32) = 0;
    if (*(this + 1))
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    pxrInternal__aapl__pxrReserved__::ArchRegex::ArchRegex(v5, this + 8, v4 | *this ^ 1u);
    sub_29A111980(this + 40, v5);
    pxrInternal__aapl__pxrReserved__::ArchRegex::~ArchRegex(v5);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::TfPatternMatcher::IsValid(pxrInternal__aapl__pxrReserved__::TfPatternMatcher *this)
{
  pxrInternal__aapl__pxrReserved__::TfPatternMatcher::_Compile(this);

  return pxrInternal__aapl__pxrReserved__::ArchRegex::operator BOOL(this + 40);
}

const regex_t *pxrInternal__aapl__pxrReserved__::TfPatternMatcher::Match(pxrInternal__aapl__pxrReserved__::TfPatternMatcher *a1, const char *a2, uint64_t a3)
{
  pxrInternal__aapl__pxrReserved__::TfPatternMatcher::_Compile(a1);
  if (pxrInternal__aapl__pxrReserved__::ArchRegex::operator BOOL(a1 + 40))
  {
    if (a3)
    {
      if (*(a3 + 23) < 0)
      {
        **a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }
    }

    return pxrInternal__aapl__pxrReserved__::ArchRegex::Match(a1 + 40, a2);
  }

  else
  {
    if (a3)
    {
      pxrInternal__aapl__pxrReserved__::ArchRegex::GetError(a1 + 5, &v7);
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = v7;
      *(a3 + 16) = v8;
    }

    return 0;
  }
}

unsigned __int8 *pxrInternal__aapl__pxrReserved__::TfPatternMatcher::SetIsCaseSensitive(unsigned __int8 *this, int a2)
{
  if (*this != a2)
  {
    this[32] = 1;
    *this = a2;
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfPatternMatcher::SetIsGlobPattern(uint64_t this, int a2)
{
  if (*(this + 1) != a2)
  {
    *(this + 32) = 1;
    *(this + 1) = a2;
  }

  return this;
}

std::string *pxrInternal__aapl__pxrReserved__::TfPatternMatcher::SetPattern(uint64_t a1, std::string *__str)
{
  v4 = (a1 + 8);
  v5 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v5 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v7 = *(a1 + 31);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 16);
  }

  if (size != v7 || (v5 >= 0 ? (v9 = __str) : (v9 = __str->__r_.__value_.__r.__words[0]), v8 >= 0 ? (v10 = v4) : (v10 = v4->__r_.__value_.__r.__words[0]), result = memcmp(v9, v10, size), result))
  {
    *(a1 + 32) = 1;

    return std::string::operator=(v4, __str);
  }

  return result;
}

uint64_t sub_29A111980(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  v6 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v7 = *(a1 + 40);
  *(a1 + 32) = v6;
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  return a1;
}

__n128 pxrInternal__aapl__pxrReserved__::TfRefBase::SetUniqueChangedListener(__n128 *a1, uint64_t a2, char *a3)
{
  if (pxrInternal__aapl__pxrReserved__::TfRefBase::_uniqueChangedListener)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&pxrInternal__aapl__pxrReserved__::TfRefBase::_uniqueChangedListener + 1) == 0;
  }

  if (!v3 || off_2A1788B68 != 0)
  {
    v6[0] = "tf/refBase.cpp";
    v6[1] = "SetUniqueChangedListener";
    v6[2] = 27;
    v6[3] = "static void pxrInternal__aapl__pxrReserved__::TfRefBase::SetUniqueChangedListener(UniqueChangedListener)";
    v7 = 0;
    v8 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v6, "Setting an already set UniqueChangedListener", a3);
  }

  result = *a1;
  off_2A1788B68 = a1[1].n128_u64[0];
  *&pxrInternal__aapl__pxrReserved__::TfRefBase::_uniqueChangedListener = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_AddRefMaybeLocked(uint64_t this, const pxrInternal__aapl__pxrReserved__::TfRefBase *a2)
{
  v2 = this;
  if (a2 == -1)
  {
LABEL_5:
    pxrInternal__aapl__pxrReserved__::TfRefBase::_uniqueChangedListener();
    if (atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_relaxed) == -1)
    {
      (*(&pxrInternal__aapl__pxrReserved__::TfRefBase::_uniqueChangedListener + 1))(v2, 0);
    }

    v4 = off_2A1788B68;

    return v4();
  }

  else
  {
    v3 = a2;
    while (1)
    {
      atomic_compare_exchange_strong_explicit((this + 8), &v3, a2 - 1, memory_order_relaxed, memory_order_relaxed);
      if (v3 == a2)
      {
        break;
      }

      LODWORD(a2) = v3;
      if (v3 == -1)
      {
        goto LABEL_5;
      }
    }
  }

  return this;
}

BOOL pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_RemoveRefMaybeLocked(atomic_uint *this, const pxrInternal__aapl__pxrReserved__::TfRefBase *a2)
{
  if (a2 == -2)
  {
LABEL_5:
    v5 = pxrInternal__aapl__pxrReserved__::TfRefBase::_uniqueChangedListener();
    add_explicit = atomic_fetch_add_explicit(this + 2, 1u, memory_order_release);
    if (add_explicit == -2)
    {
      v5 = (*(&pxrInternal__aapl__pxrReserved__::TfRefBase::_uniqueChangedListener + 1))(this, 1);
    }

    off_2A1788B68(v5);
  }

  else
  {
    add_explicit = a2;
    v4 = a2;
    while (1)
    {
      atomic_compare_exchange_strong_explicit(this + 2, &v4, add_explicit + 1, memory_order_release, memory_order_relaxed);
      if (v4 == add_explicit)
      {
        break;
      }

      add_explicit = v4;
      if (v4 == -2)
      {
        goto LABEL_5;
      }
    }
  }

  return add_explicit == -1;
}

BOOL pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::AddRefIfNonzero(pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *this, const pxrInternal__aapl__pxrReserved__::TfRefBase *a2)
{
  v3 = atomic_load(this + 2);
  if (v3 >= 1)
  {
    v4 = v3;
    while (1)
    {
      atomic_compare_exchange_strong(this + 2, &v4, v3 + 1);
      if (v4 == v3)
      {
        return 1;
      }

      v3 = v4;
      if (v4 <= 0)
      {
        if ((v4 & 0x80000000) == 0)
        {
          return 0;
        }

        goto LABEL_9;
      }
    }
  }

  v4 = v3;
  if ((v3 & 0x80000000) == 0)
  {
    return 0;
  }

LABEL_9:
  if (v4 != -1)
  {
    v6 = v4 - 1;
    v7 = v4;
    while (1)
    {
      atomic_compare_exchange_strong(this + 2, &v7, v6);
      if (v7 == v4)
      {
        return 1;
      }

      v4 = v7;
      v6 = v7 - 1;
      if ((v7 - 1) >= 0xFFFFFFFE)
      {
        if (!v7)
        {
          return 0;
        }

        break;
      }
    }
  }

  v8 = pxrInternal__aapl__pxrReserved__::TfRefBase::_uniqueChangedListener();
  v9 = -1;
  v10 = -1;
  while (1)
  {
    atomic_compare_exchange_strong(this + 2, &v10, v9 - 1);
    v5 = v10 == v9;
    if (v10 == v9)
    {
      break;
    }

    v9 = v10;
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  if (v9 == -1)
  {
    v8 = (*(&pxrInternal__aapl__pxrReserved__::TfRefBase::_uniqueChangedListener + 1))(this, 0);
  }

LABEL_21:
  off_2A1788B68(v8);
  return v5;
}

void pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError(uint64_t a1, pxrInternal__aapl__pxrReserved__ *this)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v9 = 4;
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled(this, v5);
  if (v6 >= 0)
  {
    v4 = v5;
  }

  else
  {
    v4 = v5[0];
  }

  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v7, "attempted member lookup on NULL %s", v3, v4);
}

void sub_29A111D58(uint64_t a1, std::string *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::string::~string(&a10);
  v16 = pxrInternal__aapl__pxrReserved__::ArchAbort(1, v15);
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(v16);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRefPtrTracker>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRefPtrTracker>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRefPtrTracker>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRefPtrTracker>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B43B9C6 & 0x7FFFFFFFFFFFFFFFLL), &v11);
  v2 = std::string::insert(&v11, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v15 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v12, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v11);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRefPtrTracker>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::TfRefPtrTracker*> &)::isInitializing, 1u))
  {
    while (!atomic_load(a1))
    {
      sched_yield();
    }
  }

  else
  {
    if (!atomic_load(a1))
    {
      v6 = operator new(0xA0uLL);
      *v6 = 0;
      *(v6 + 1) = 850045863;
      *(v6 + 1) = 0u;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *(v6 + 8) = 0;
      *(v6 + 9) = 20;
      *(v6 + 5) = 0u;
      *(v6 + 6) = 0u;
      *(v6 + 28) = 1065353216;
      *(v6 + 120) = 0u;
      *(v6 + 136) = 0u;
      *(v6 + 38) = 1065353216;
      v8 = atomic_load(a1);
      if (v8)
      {
        if (v6 != v8)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRefPtrTracker>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::TfRefPtrTracker]";
          v17 = 0;
          v18 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "race detected setting singleton instance", v7);
        }
      }

      else if (atomic_exchange(a1, v6))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v15 = 90;
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRefPtrTracker>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::TfRefPtrTracker]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v7, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRefPtrTracker>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::TfRefPtrTracker*> &)::isInitializing);
  }

  v9 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v9;
}

void sub_29A111F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRefPtrTracker>::SetInstanceConstructed(unint64_t result)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRefPtrTracker>::_instance, result))
  {
    v6 = v2;
    v7 = v1;
    v8 = v3;
    v9 = v4;
    v5 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/instantiateSingleton.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/instantiateSingleton.h", v5, 0x2F);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRefPtrTracker>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRefPtrTracker>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRefPtrTracker>::_instance, &v1, 0);
    if (v1 == i)
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtrTracker::~TfRefPtrTracker(i);

      operator delete(v2);
      return;
    }

    sched_yield();
  }
}

double pxrInternal__aapl__pxrReserved__::TfRefPtrTracker::TfRefPtrTracker(pxrInternal__aapl__pxrReserved__::TfRefPtrTracker *this)
{
  *this = 0;
  *(this + 1) = 850045863;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 9) = 20;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  return result;
}

{
  *this = 0;
  *(this + 1) = 850045863;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 9) = 20;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  return result;
}

void pxrInternal__aapl__pxrReserved__::TfRefPtrTracker::~TfRefPtrTracker(pxrInternal__aapl__pxrReserved__::TfRefPtrTracker *this)
{
  sub_29A0FEDE8(this + 120);
  sub_29A0EB570(this + 80);
  std::mutex::~mutex((this + 8));

  sub_29A0F6078(this, v2);
}

void pxrInternal__aapl__pxrReserved__::TfRefPtrTracker::_Watch(pxrInternal__aapl__pxrReserved__::TfRefPtrTracker *this, const pxrInternal__aapl__pxrReserved__::TfRefBase *a2)
{
  std::mutex::lock((this + 8));
  v4 = a2;
  sub_29A11319C(this + 80, &v4, &v4);
  std::mutex::unlock((this + 8));
}

void pxrInternal__aapl__pxrReserved__::TfRefPtrTracker::_Unwatch(pxrInternal__aapl__pxrReserved__::TfRefPtrTracker *this, const pxrInternal__aapl__pxrReserved__::TfRefBase *a2)
{
  v3 = a2;
  std::mutex::lock((this + 8));
  sub_29A1133D0(this + 10, &v3);
  std::mutex::unlock((this + 8));
}

void pxrInternal__aapl__pxrReserved__::TfRefPtrTracker::_AddTrace(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = a3;
  v11 = a2;
  std::mutex::lock((a1 + 8));
  v6 = sub_29A0EB63C((a1 + 120), &v11);
  if (v6)
  {
    v7 = sub_29A0EB63C((a1 + 80), v6 + 6);
    if (v7)
    {
      --v7[3];
    }
  }

  v8 = sub_29A0EB63C((a1 + 80), &v10);
  if (v8)
  {
    ++v8[3];
    v12 = &v11;
    v9 = sub_29A11344C(a1 + 120, &v11, &unk_29B4D6118, &v12);
    pxrInternal__aapl__pxrReserved__::ArchGetStackFrames(*(a1 + 72), 2, v9 + 3);
    *(v9 + 6) = v10;
    *(v9 + 14) = a4;
  }

  else if (v6)
  {
    sub_29A1136B0((a1 + 120), v6);
  }

  std::mutex::unlock((a1 + 8));
}

void pxrInternal__aapl__pxrReserved__::TfRefPtrTracker::_RemoveTraces(pxrInternal__aapl__pxrReserved__::TfRefPtrTracker *this, const void *a2)
{
  v5 = a2;
  std::mutex::lock((this + 8));
  v3 = sub_29A0EB63C(this + 15, &v5);
  if (v3)
  {
    v4 = sub_29A0EB63C(this + 10, v3 + 6);
    if (v4)
    {
      --v4[3];
    }

    sub_29A1136B0(this + 15, v3);
  }

  std::mutex::unlock((this + 8));
}

void pxrInternal__aapl__pxrReserved__::TfRefPtrTracker::GetWatchedCounts(pxrInternal__aapl__pxrReserved__::TfRefPtrTracker *this@<X0>, uint64_t a2@<X8>)
{
  std::mutex::lock((this + 8));
  sub_29A1136FC(a2, this + 80);

  std::mutex::unlock((this + 8));
}

void pxrInternal__aapl__pxrReserved__::TfRefPtrTracker::GetAllTraces(pxrInternal__aapl__pxrReserved__::TfRefPtrTracker *this@<X0>, uint64_t a2@<X8>)
{
  std::mutex::lock((this + 8));
  sub_29A113774(a2, this + 120);

  std::mutex::unlock((this + 8));
}

uint64_t pxrInternal__aapl__pxrReserved__::TfRefPtrTracker::ReportAllWatchedCounts(uint64_t a1, void *a2)
{
  v4 = sub_29A00911C(a2, "TfRefPtrTracker watched counts:", 31);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(__p, MEMORY[0x29EDC93D0]);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  result = std::ostream::flush();
  v23 = *(a1 + 96);
  v24 = 0;
  if (v23)
  {
    v7 = MEMORY[0x29EDC93D0];
    do
    {
      v8 = sub_29A00911C(a2, "  ", 2);
      v9 = sub_29A112778(&v23);
      v10 = MEMORY[0x29C2C1E80](v8, *(*v9 + 16));
      v11 = sub_29A00911C(v10, ": ", 2);
      v12 = sub_29A112778(&v23);
      v13 = MEMORY[0x29C2C1F00](v11, *(*v12 + 24));
      v14 = sub_29A00911C(v13, " (type ", 7);
      v15 = sub_29A112778(&v23);
      sub_29A1127A0(*(*v15 + 16), __p);
      if ((v22 & 0x80u) == 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v17 = v22;
      }

      else
      {
        v17 = __p[1];
      }

      v18 = sub_29A00911C(v14, v16, v17);
      v19 = sub_29A00911C(v18, ")", 1);
      std::ios_base::getloc((v19 + *(*v19 - 24)));
      v20 = std::locale::use_facet(&v25, v7);
      (v20->__vftable[2].~facet_0)(v20, 10);
      std::locale::~locale(&v25);
      std::ostream::put();
      std::ostream::flush();
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      result = sub_29A1127D4(&v23);
    }

    while (v23 != v24);
  }

  return result;
}

void *sub_29A112778(void *result)
{
  if (*result == result[1])
  {
    sub_29B28E048();
  }

  return result;
}

void sub_29A1127A0(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL), a2);
  }

  else
  {
    sub_29A008E78(a2, "<unknown>");
  }
}

uint64_t sub_29A1127D4(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::TfHashMap<const pxrInternal__aapl__pxrReserved__::TfRefBase *, unsigned long, pxrInternal__aapl__pxrReserved__::TfHash>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::TfHashMap<const pxrInternal__aapl__pxrReserved__::TfRefBase *, unsigned long, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
    v4 = 0;
    v5 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v3, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::TfRefPtrTracker::ReportAllTraces(uint64_t a1, void *a2)
{
  v3 = sub_29A00911C(a2, "TfRefPtrTracker traces:", 23);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v21, MEMORY[0x29EDC93D0]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v21);
  std::ostream::put();
  std::ostream::flush();
  std::mutex::lock((a1 + 8));
  v21.__locale_ = *(a1 + 136);
  v22 = 0;
  v5 = MEMORY[0x29EDC93D0];
  while (v21.__locale_ != v22)
  {
    v6 = *sub_29A112BEC(&v21);
    v7 = sub_29A00911C(a2, "  Owner: ", 9);
    v8 = sub_29A112BEC(&v21);
    v9 = MEMORY[0x29C2C1E80](v7, *(*v8 + 16));
    v10 = sub_29A00911C(v9, " ", 1);
    v11 = strlen(off_29F295390[*(v6 + 56)]);
    v12 = sub_29A00911C(v10, off_29F295390[*(v6 + 56)], v11);
    v13 = sub_29A00911C(v12, " ", 1);
    v14 = MEMORY[0x29C2C1E80](v13, *(v6 + 48));
    v15 = sub_29A00911C(v14, ":", 1);
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v16 = std::locale::use_facet(&v23, v5);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    v17 = sub_29A00911C(a2, "==============================================================", 62);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v23, v5);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    pxrInternal__aapl__pxrReserved__::ArchPrintStackFrames(a2, (v6 + 24), 0);
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v19 = std::locale::use_facet(&v23, v5);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    sub_29A112C14(&v21);
  }

  std::mutex::unlock((a1 + 8));
}

void *sub_29A112BEC(void *result)
{
  if (*result == result[1])
  {
    sub_29B28E0A0();
  }

  return result;
}

uint64_t sub_29A112C14(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::TfHashMap<const void *, pxrInternal__aapl__pxrReserved__::TfRefPtrTracker::Trace, pxrInternal__aapl__pxrReserved__::TfHash>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::TfHashMap<const void *, pxrInternal__aapl__pxrReserved__::TfRefPtrTracker::Trace, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
    v4 = 0;
    v5 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v3, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::TfRefPtrTracker::ReportTracesForWatched(uint64_t a1, void *a2, void *a3)
{
  v36 = a3;
  std::mutex::lock((a1 + 8));
  v32 = a1;
  if (sub_29A113AE0((a1 + 80), &v36))
  {
    v5 = sub_29A00911C(a2, "TfRefPtrTracker traces for ", 27);
    v6 = MEMORY[0x29C2C1E80](v5, v36);
    v7 = sub_29A00911C(v6, " (type ", 7);
    sub_29A1127A0(v36, &__p);
    if ((v35 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v35 & 0x80u) == 0)
    {
      v9 = v35;
    }

    else
    {
      v9 = v34;
    }

    v10 = sub_29A00911C(v7, p_p, v9);
    v11 = sub_29A00911C(v10, ")", 1);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&v37, MEMORY[0x29EDC93D0]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v37);
    std::ostream::put();
    std::ostream::flush();
    if (v35 < 0)
    {
      operator delete(__p);
    }

    __p = *(a1 + 136);
    v34 = 0;
    v13 = MEMORY[0x29EDC93D0];
    while (__p != v34)
    {
      v14 = sub_29A112BEC(&__p);
      v15 = *v14;
      if (*(*v14 + 48) == v36)
      {
        v16 = sub_29A00911C(a2, "  Owner: ", 9);
        v17 = sub_29A112BEC(&__p);
        v18 = MEMORY[0x29C2C1E80](v16, *(*v17 + 16));
        v19 = sub_29A00911C(v18, " ", 1);
        v20 = strlen(off_29F295390[*(v15 + 56)]);
        v21 = sub_29A00911C(v19, off_29F295390[*(v15 + 56)], v20);
        v22 = sub_29A00911C(v21, ":", 1);
        std::ios_base::getloc((v22 + *(*v22 - 24)));
        v23 = std::locale::use_facet(&v37, v13);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(&v37);
        std::ostream::put();
        std::ostream::flush();
        v24 = sub_29A00911C(a2, "==============================================================", 62);
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v25 = std::locale::use_facet(&v37, v13);
        (v25->__vftable[2].~facet_0)(v25, 10);
        std::locale::~locale(&v37);
        std::ostream::put();
        std::ostream::flush();
        pxrInternal__aapl__pxrReserved__::ArchPrintStackFrames(a2, (v15 + 24), 0);
        std::ios_base::getloc((a2 + *(*a2 - 24)));
        v26 = std::locale::use_facet(&v37, v13);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(&v37);
        std::ostream::put();
        std::ostream::flush();
      }

      sub_29A112C14(&__p);
    }

    v27 = "==============================================================";
    v28 = 62;
  }

  else
  {
    v29 = sub_29A00911C(a2, "TfRefPtrTracker traces for ", 27);
    a2 = MEMORY[0x29C2C1E80](v29, v36);
    v27 = ":  not watched";
    v28 = 14;
  }

  v30 = sub_29A00911C(a2, v27, v28);
  std::ios_base::getloc((v30 + *(*v30 - 24)));
  v31 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
  (v31->__vftable[2].~facet_0)(v31, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  std::mutex::unlock((v32 + 8));
}

void *sub_29A11319C(uint64_t a1, void *a2, _OWORD *a3)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = v6;
      if (v6 >= v7)
      {
        v3 = v6 % v7;
      }
    }

    else
    {
      v3 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v11 == v6)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
          {
            if (v11 >= v7)
            {
              v11 %= v7;
            }
          }

          else
          {
            v11 &= v7 - 1;
          }

          if (v11 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v6;
  *(i + 1) = *a3;
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v3);
  if (v19)
  {
    *i = *v19;
LABEL_38:
    *v19 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v18 + 8 * v3) = a1 + 16;
  if (*i)
  {
    v20 = *(*i + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v20 >= v7)
      {
        v20 %= v7;
      }
    }

    else
    {
      v20 &= v7 - 1;
    }

    v19 = (*a1 + 8 * v20);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

uint64_t *sub_29A1133D0(void *a1, void *a2)
{
  result = sub_29A0EB63C(a1, a2);
  if (result)
  {
    sub_29A113408(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_29A113408(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

char *sub_29A11344C(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v7 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v4 = v7;
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }
    }

    else
    {
      v4 = v7 & (v8 - 1);
    }

    v10 = *(*a1 + 8 * v4);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = *(v11 + 1);
          if (v12 == v7)
          {
            if (*(v11 + 2) == *a2)
            {
              return v11;
            }
          }

          else
          {
            if (v9.u32[0] > 1uLL)
            {
              if (v12 >= v8)
              {
                v12 %= v8;
              }
            }

            else
            {
              v12 &= v8 - 1;
            }

            if (v12 != v4)
            {
              break;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v11 = operator new(0x40uLL);
  *v11 = 0;
  *(v11 + 1) = v7;
  *(v11 + 2) = **a4;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  *(v11 + 7) = 0;
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v8 || (v14 * v8) < v13)
  {
    v15 = 1;
    if (v8 >= 3)
    {
      v15 = (v8 & (v8 - 1)) != 0;
    }

    v16 = v15 | (2 * v8);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_29A019AA0(a1, v18);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }

      else
      {
        v4 = v7;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }
  }

  v19 = *a1;
  v20 = *(*a1 + 8 * v4);
  if (v20)
  {
    *v11 = *v20;
LABEL_38:
    *v20 = v11;
    goto LABEL_39;
  }

  *v11 = *(a1 + 16);
  *(a1 + 16) = v11;
  *(v19 + 8 * v4) = a1 + 16;
  if (*v11)
  {
    v21 = *(*v11 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v21 >= v8)
      {
        v21 %= v8;
      }
    }

    else
    {
      v21 &= v8 - 1;
    }

    v20 = (*a1 + 8 * v21);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return v11;
}

uint64_t sub_29A1136B0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_29A0FF604(&v6, v3);
  }

  return v2;
}

uint64_t sub_29A1136FC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29A11319C(a1, i + 2, i + 1);
  }

  return a1;
}

uint64_t sub_29A113774(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29A1137EC(a1, i + 2, i + 2);
  }

  return a1;
}

void *sub_29A1137EC(void *a1, void *a2, void *a3)
{
  v4 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (result = *v8) == 0)
  {
LABEL_18:
    sub_29A113A30(a1, v4, a3, v11);
  }

  while (1)
  {
    v10 = result[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != *a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_29A113A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0FF604(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A113A30(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x40uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v8[2] = *a3;
  v8[4] = 0;
  v8[5] = 0;
  v8[3] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>();
}

void sub_29A113AC4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A0FF604(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_29A113AE0(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v3;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = v3 & (*&v2 - 1);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRegTest>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRegTest>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRegTest>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRegTest>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B43B9FCLL & 0x7FFFFFFFFFFFFFFFLL), &v11);
  v2 = std::string::insert(&v11, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v15 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v12, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v11);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRegTest>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::TfRegTest*> &)::isInitializing, 1u))
  {
    while (!atomic_load(a1))
    {
      sched_yield();
    }
  }

  else
  {
    if (!atomic_load(a1))
    {
      v8 = operator new(0x50uLL);
      *v8 = 0u;
      v8[1] = 0u;
      *(v8 + 8) = 1065353216;
      *(v8 + 40) = 0u;
      *(v8 + 56) = 0u;
      *(v8 + 18) = 1065353216;
      v10 = atomic_load(a1);
      if (v10)
      {
        if (v8 != v10)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRegTest>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::TfRegTest]";
          v17 = 0;
          v18 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "race detected setting singleton instance", v9);
        }
      }

      else if (atomic_exchange(a1, v8))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v15 = 90;
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRegTest>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::TfRegTest]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v9, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRegTest>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::TfRegTest*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v6;
}

void sub_29A113DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRegTest>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRegTest>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRegTest>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::TfRegTest]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRegTest>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRegTest>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRegTest>::_instance, &v1, 0);
    if (v1 == i)
    {
      sub_29A0EB4E8(i + 40);
      v2 = sub_29A0EB4E8(i);

      operator delete(v2);
      return;
    }

    sched_yield();
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::TfRegTest::GetInstance(pxrInternal__aapl__pxrReserved__::TfRegTest *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRegTest>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfRegTest>::_CreateInstance();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfRegTest::Register(pxrInternal__aapl__pxrReserved__::TfRegTest *this, char *a2, BOOL (*a3)(void))
{
  sub_29A008E78(__p, a2);
  v8 = __p;
  sub_29A0FBDAC(this, __p, &unk_29B4D6118, &v8)[5] = a3;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_29A113FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfRegTest::Register(pxrInternal__aapl__pxrReserved__::TfRegTest *this, char *a2, BOOL (*a3)(int, char **))
{
  sub_29A008E78(__p, a2);
  v8 = __p;
  sub_29A0FBDAC(this + 40, __p, &unk_29B4D6118, &v8)[5] = a3;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_29A11403C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfRegTest::_PrintTestNames(pxrInternal__aapl__pxrReserved__::TfRegTest *this)
{
  v2 = MEMORY[0x29EDC93C0];
  sub_29A00911C(MEMORY[0x29EDC93C0], "Valid tests are:", 16);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_29A0925E4(&v13, *(this + 8) + *(this + 3));
  if (*(this + 2))
  {
    sub_29A070BA0(&v13);
  }

  if (*(this + 7))
  {
    sub_29A070BA0(&v13);
  }

  v3 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v14 - v13));
  if (v14 == v13)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  sub_29AA89D34(v13, v14, &v16, v4, 1);
  v5 = v13;
  v6 = v14;
  if (v13 != v14)
  {
    v7 = MEMORY[0x29EDC93C0];
    do
    {
      v8 = sub_29A00911C(v7, "\n    ", 5);
      v9 = *(v5 + 23);
      if (v9 >= 0)
      {
        v10 = v5;
      }

      else
      {
        v10 = *v5;
      }

      if (v9 >= 0)
      {
        v11 = *(v5 + 23);
      }

      else
      {
        v11 = v5[1];
      }

      sub_29A00911C(v8, v10, v11);
      v5 += 3;
    }

    while (v5 != v6);
  }

  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v12 = std::locale::use_facet(&v16, MEMORY[0x29EDC93D0]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v16);
  std::ostream::put();
  std::ostream::flush();
  v16.__locale_ = &v13;
  sub_29A012C90(&v16);
}

void sub_29A11421C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, std::locale a14)
{
  std::locale::~locale(&a14);
  a13 = &a10;
  sub_29A012C90(&a13);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfRegTest::_Main(pxrInternal__aapl__pxrReserved__::TfRegTest *this, int a2, char **a3)
{
  sub_29A008E78(&v39, *a3);
  if (a2 <= 1)
  {
    v6 = sub_29A00911C(MEMORY[0x29EDC93C0], "Usage: ", 7);
    if ((v41 & 0x80u) == 0)
    {
      v7 = &v39;
    }

    else
    {
      v7 = v39;
    }

    if ((v41 & 0x80u) == 0)
    {
      v8 = v41;
    }

    else
    {
      v8 = v40;
    }

    v9 = sub_29A00911C(v6, v7, v8);
    sub_29A00911C(v9, " testName [args]\n", 17);
    pxrInternal__aapl__pxrReserved__::TfRegTest::_PrintTestNames(this);
    v10 = 2;
    goto LABEL_43;
  }

  v12 = a3[1];
  v11 = a3 + 1;
  sub_29A008E78(&__p, v12);
  if (sub_29A0FC520(this, &__p))
  {
    if (a2 == 2)
    {
      pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(v35);
      v42.__locale_ = &__p;
      v13 = sub_29A0FBDAC(this, &__p, &unk_29B4D6118, &v42);
      v14 = (v13[5])();
      v15 = sub_29A1145B8(v35, v14);
LABEL_14:
      v10 = v15;
      pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(v35);
      goto LABEL_41;
    }

    if ((v41 & 0x80u) == 0)
    {
      v18 = &v39;
    }

    else
    {
      v18 = v39;
    }

    if ((v41 & 0x80u) == 0)
    {
      v19 = v41;
    }

    else
    {
      v19 = v40;
    }

    v20 = sub_29A00911C(MEMORY[0x29EDC93C0], v18, v19);
    v21 = sub_29A00911C(v20, ": test function '", 17);
    if ((v38 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v38 & 0x80u) == 0)
    {
      v23 = v38;
    }

    else
    {
      v23 = v37;
    }

    v24 = sub_29A00911C(v21, p_p, v23);
    v25 = sub_29A00911C(v24, "' takes no arguments.", 21);
    std::ios_base::getloc((v25 + *(*v25 - 24)));
    v26 = std::locale::use_facet(&v42, MEMORY[0x29EDC93D0]);
    (v26->__vftable[2].~facet_0)(v26, 10);
    std::locale::~locale(&v42);
    std::ostream::put();
    std::ostream::flush();
    v10 = 2;
  }

  else
  {
    if (sub_29A0FC520(this + 5, &__p))
    {
      pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(v35);
      v42.__locale_ = &__p;
      v16 = sub_29A0FBDAC(this + 40, &__p, &unk_29B4D6118, &v42);
      v17 = (v16[5])((a2 - 1), v11);
      v15 = sub_29A1145B8(v35, v17);
      goto LABEL_14;
    }

    if ((v41 & 0x80u) == 0)
    {
      v27 = &v39;
    }

    else
    {
      v27 = v39;
    }

    if ((v41 & 0x80u) == 0)
    {
      v28 = v41;
    }

    else
    {
      v28 = v40;
    }

    v29 = sub_29A00911C(MEMORY[0x29EDC93C0], v27, v28);
    v30 = sub_29A00911C(v29, ": unknown test function ", 24);
    if ((v38 & 0x80u) == 0)
    {
      v31 = &__p;
    }

    else
    {
      v31 = __p;
    }

    if ((v38 & 0x80u) == 0)
    {
      v32 = v38;
    }

    else
    {
      v32 = v37;
    }

    v33 = sub_29A00911C(v30, v31, v32);
    sub_29A00911C(v33, ".\n", 2);
    pxrInternal__aapl__pxrReserved__::TfRegTest::_PrintTestNames(this);
    v10 = 3;
  }

LABEL_41:
  if (v38 < 0)
  {
    operator delete(__p);
  }

LABEL_43:
  if (v41 < 0)
  {
    operator delete(v39);
  }

  return v10;
}

void sub_29A11454C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

uint64_t sub_29A1145B8(pxrInternal__aapl__pxrReserved__::TfErrorMark *this, int a2)
{
  if (!a2)
  {
    return 1;
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v4 = *this;
  v5 = atomic_load((v3 + 144));
  if (v4 >= v5 || pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(this, v3))
  {
    return 0;
  }

  v8 = sub_29A0FE7E0(this, 0);
  v6 = 100;
  if (v8 != sub_29A11477C())
  {
    v9 = MEMORY[0x29EDC93C0];
    do
    {
      v10 = sub_29A00911C(v9, "*** Error in ", 13);
      sub_29A008E78(__p, v8[2]);
      if ((v22 & 0x80u) == 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v12 = v22;
      }

      else
      {
        v12 = __p[1];
      }

      v13 = sub_29A00911C(v10, v11, v12);
      v14 = sub_29A00911C(v13, "@line ", 6);
      v15 = MEMORY[0x29C2C1F00](v14, v8[4]);
      v16 = sub_29A00911C(v15, "\n    ", 5);
      v17 = *(v8 + 79);
      if (v17 >= 0)
      {
        v18 = (v8 + 7);
      }

      else
      {
        v18 = v8[7];
      }

      if (v17 >= 0)
      {
        v19 = *(v8 + 79);
      }

      else
      {
        v19 = v8[8];
      }

      v20 = sub_29A00911C(v16, v18, v19);
      sub_29A00911C(v20, "\n", 1);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = v8[1];
      v6 = (v6 + 1);
    }

    while (v8 != sub_29A11477C());
  }

  return v6;
}

void sub_29A114760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A11477C()
{
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v2 = 0;
  return sub_29A0ED084((v0 + 152), &v2);
}

__n128 sub_29A1147C4(const void **a1, const void **a2, const void **a3, __int128 *a4, uint64_t a5)
{
  v10 = sub_29A00AFCC(a5, a2, a1);
  v11 = sub_29A00AFCC(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1[2];
      v13 = *a1;
      v14 = a3[2];
      *a1 = *a3;
      a1[2] = v14;
LABEL_9:
      *a3 = v13;
      a3[2] = v12;
      goto LABEL_10;
    }

    v21 = a1[2];
    v22 = *a1;
    v23 = a2[2];
    *a1 = *a2;
    a1[2] = v23;
    *a2 = v22;
    a2[2] = v21;
    if (sub_29A00AFCC(a5, a3, a2))
    {
      v12 = a2[2];
      v13 = *a2;
      v24 = a3[2];
      *a2 = *a3;
      a2[2] = v24;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v15 = a2[2];
    v16 = *a2;
    v17 = a3[2];
    *a2 = *a3;
    a2[2] = v17;
    *a3 = v16;
    a3[2] = v15;
    if (sub_29A00AFCC(a5, a2, a1))
    {
      v18 = a1[2];
      v19 = *a1;
      v20 = a2[2];
      *a1 = *a2;
      a1[2] = v20;
      *a2 = v19;
      a2[2] = v18;
    }
  }

LABEL_10:
  if (sub_29A00AFCC(a5, a4, a3))
  {
    v26 = a3[2];
    v27 = *a3;
    v28 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v28;
    *a4 = v27;
    *(a4 + 2) = v26;
    if (sub_29A00AFCC(a5, a3, a2))
    {
      v29 = a2[2];
      v30 = *a2;
      v31 = a3[2];
      *a2 = *a3;
      a2[2] = v31;
      *a3 = v30;
      a3[2] = v29;
      if (sub_29A00AFCC(a5, a2, a1))
      {
        v32 = a1[2];
        result = *a1;
        v33 = a2[2];
        *a1 = *a2;
        a1[2] = v33;
        *a2 = result;
        a2[2] = v32;
      }
    }
  }

  return result;
}

void sub_29A1149A4(uint64_t a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v18 = v3;
    v19 = v4;
    v7 = (a1 + 24);
    if ((a1 + 24) != a2)
    {
      v9 = 0;
      v10 = a1;
      do
      {
        v11 = v10;
        v10 = v7;
        if (sub_29A00AFCC(a3, v7, v11))
        {
          v16 = *v10;
          v17 = v10[2];
          v10[1] = 0;
          v10[2] = 0;
          *v10 = 0;
          v12 = v9;
          do
          {
            v13 = a1 + v12;
            if (*(a1 + v12 + 47) < 0)
            {
              operator delete(*(v13 + 24));
            }

            *(v13 + 24) = *v13;
            *(v13 + 40) = *(v13 + 16);
            *(v13 + 23) = 0;
            *v13 = 0;
            if (!v12)
            {
              v15 = a1;
              goto LABEL_13;
            }

            v12 -= 24;
          }

          while (sub_29A00AFCC(a3, &v16, (v12 + a1)));
          v14 = *(a1 + v12 + 47);
          v15 = a1 + v12 + 24;
          if (v14 < 0)
          {
            operator delete(*v15);
          }

LABEL_13:
          *v15 = v16;
          *(v15 + 16) = v17;
        }

        v7 = v10 + 3;
        v9 += 24;
      }

      while (v10 + 3 != a2);
    }
  }
}

void sub_29A114AC8(const void **a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v15 = v3;
    v16 = v4;
    v6 = a1;
    v7 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v9 = a1 - 3;
      do
      {
        v10 = v6;
        v6 = v7;
        if (sub_29A00AFCC(a3, v7, v10))
        {
          v13 = *v6;
          v14 = v6[2];
          v6[1] = 0;
          v6[2] = 0;
          *v6 = 0;
          v11 = v9;
          do
          {
            if (*(v11 + 71) < 0)
            {
              operator delete(v11[6]);
            }

            *(v11 + 3) = *(v11 + 3);
            v11[8] = v11[5];
            *(v11 + 47) = 0;
            *(v11 + 24) = 0;
            v12 = sub_29A00AFCC(a3, &v13, v11);
            v11 -= 3;
          }

          while (v12);
          if (*(v11 + 71) < 0)
          {
            operator delete(v11[6]);
          }

          *(v11 + 3) = v13;
          v11[8] = v14;
        }

        v7 = v6 + 3;
        v9 += 3;
      }

      while (v6 + 3 != a2);
    }
  }
}

const void **sub_29A114BC8(const void **a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v16 = *a1;
  v17 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (sub_29A00AFCC(a3, &v16, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 += 3;
    }

    while (!sub_29A00AFCC(a3, &v16, v6));
  }

  else
  {
    v7 = a1 + 3;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = sub_29A00AFCC(a3, &v16, v7);
      v7 = v6 + 3;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 24;
    }

    while (sub_29A00AFCC(a3, &v16, v4));
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = v6[2];
    v18 = v9;
    v10 = *v4;
    v6[2] = *(v4 + 16);
    *v6 = v10;
    v11 = v18;
    *(v4 + 16) = v19;
    *v4 = v11;
    do
    {
      v6 += 3;
    }

    while (!sub_29A00AFCC(a3, &v16, v6));
    do
    {
      v4 -= 24;
    }

    while (sub_29A00AFCC(a3, &v16, v4));
  }

  v12 = (v6 - 3);
  if (v6 - 3 == a1)
  {
    if (*(v6 - 1) < 0)
    {
      operator delete(*v12);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v12;
    a1[2] = *(v6 - 1);
    *a1 = v13;
    *(v6 - 1) = 0;
    *(v6 - 24) = 0;
  }

  v14 = v16;
  *(v6 - 1) = v17;
  *v12 = v14;
  return v6;
}

unint64_t sub_29A114D5C(__int128 *a1, const void **a2, uint64_t a3)
{
  v6 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  do
  {
    v6 += 24;
  }

  while (sub_29A00AFCC(a3, (a1 + v6), &v17));
  v7 = a1 + v6;
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 3;
    }

    while (!sub_29A00AFCC(a3, a2, &v17));
  }

  else
  {
    do
    {
      a2 -= 3;
    }

    while (!sub_29A00AFCC(a3, a2, &v17));
  }

  v8 = a1 + v6;
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v19 = *v8;
      v10 = v19;
      v20 = *(v8 + 16);
      v11 = v20;
      v12 = v9[2];
      *v8 = *v9;
      *(v8 + 16) = v12;
      v9[2] = v11;
      *v9 = v10;
      do
      {
        v8 += 24;
      }

      while (sub_29A00AFCC(a3, v8, &v17));
      do
      {
        v9 -= 3;
      }

      while (!sub_29A00AFCC(a3, v9, &v17));
    }

    while (v8 < v9);
  }

  v13 = (v8 - 24);
  if ((v8 - 24) == a1)
  {
    if (*(v8 - 1) < 0)
    {
      operator delete(*v13);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v14 = *v13;
    *(a1 + 2) = *(v8 - 8);
    *a1 = v14;
    *(v8 - 1) = 0;
    *(v8 - 24) = 0;
  }

  v15 = v17;
  *(v8 - 8) = v18;
  *v13 = v15;
  return v8 - 24;
}

BOOL sub_29A114EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 24;
        v16 = sub_29A00AFCC(a3, (a1 + 24), a1);
        v17 = sub_29A00AFCC(a3, v7, (a1 + 24));
        if (v16)
        {
          if (!v17)
          {
            v35 = *(a1 + 16);
            v36 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v36;
            *(a1 + 40) = v35;
            if (!sub_29A00AFCC(a3, v7, (a1 + 24)))
            {
              return 1;
            }

            v18 = *(a1 + 40);
            v19 = *(a1 + 24);
            v37 = *(v7 + 16);
            *(a1 + 24) = *v7;
            *(a1 + 40) = v37;
            goto LABEL_16;
          }

LABEL_15:
          v18 = *(a1 + 16);
          v19 = *a1;
          v20 = *(v7 + 16);
          *a1 = *v7;
          *(a1 + 16) = v20;
LABEL_16:
          *v7 = v19;
          *(v7 + 16) = v18;
          return 1;
        }

        if (!v17)
        {
          return 1;
        }

        v26 = *(a1 + 40);
        v27 = *(a1 + 24);
        v28 = *(v7 + 16);
        *(a1 + 24) = *v7;
        *(a1 + 40) = v28;
        *v7 = v27;
        *(v7 + 16) = v26;
        break;
      case 4:
        sub_29A1147C4(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        v8 = a2 - 24;
        sub_29A1147C4(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        if (!sub_29A00AFCC(a3, v8, (a1 + 72)))
        {
          return 1;
        }

        v9 = *(a1 + 88);
        v10 = *(a1 + 72);
        v11 = *(v8 + 16);
        *(a1 + 72) = *v8;
        *(a1 + 88) = v11;
        *v8 = v10;
        *(v8 + 16) = v9;
        if (!sub_29A00AFCC(a3, (a1 + 72), (a1 + 48)))
        {
          return 1;
        }

        v12 = *(a1 + 64);
        v13 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v13;
        *(a1 + 88) = v12;
        if (!sub_29A00AFCC(a3, (a1 + 48), (a1 + 24)))
        {
          return 1;
        }

        v14 = *(a1 + 40);
        v15 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v15;
        *(a1 + 64) = v14;
        break;
      default:
        goto LABEL_17;
    }

    if (sub_29A00AFCC(a3, (a1 + 24), a1))
    {
      v29 = *(a1 + 16);
      v30 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v30;
      *(a1 + 40) = v29;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 24;
    if (!sub_29A00AFCC(a3, (a2 - 24), a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v21 = (a1 + 48);
  v22 = sub_29A00AFCC(a3, (a1 + 24), a1);
  v23 = sub_29A00AFCC(a3, (a1 + 48), (a1 + 24));
  if (v22)
  {
    if (v23)
    {
      v24 = *(a1 + 16);
      v25 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (!sub_29A00AFCC(a3, (a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v25;
    *(a1 + 64) = v24;
  }

  else if (v23)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v32;
    *(a1 + 64) = v31;
    if (sub_29A00AFCC(a3, (a1 + 24), a1))
    {
      v33 = *(a1 + 16);
      v34 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v34;
      *(a1 + 40) = v33;
    }
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    if (sub_29A00AFCC(a3, v40, v21))
    {
      v49 = *v40;
      v50 = *(v40 + 16);
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
      *v40 = 0;
      v43 = v41;
      do
      {
        v44 = a1 + v43;
        if (*(a1 + v43 + 95) < 0)
        {
          operator delete(*(v44 + 72));
        }

        *(v44 + 72) = *(v44 + 48);
        *(v44 + 88) = *(v44 + 64);
        *(v44 + 71) = 0;
        *(v44 + 48) = 0;
        if (v43 == -48)
        {
          v47 = a1;
          goto LABEL_44;
        }

        v45 = sub_29A00AFCC(a3, &v49, (a1 + v43 + 24));
        v43 -= 24;
      }

      while (v45);
      v46 = *(a1 + v43 + 95);
      v47 = a1 + v43 + 72;
      if (v46 < 0)
      {
        operator delete(*v47);
      }

LABEL_44:
      *v47 = v49;
      *(v47 + 16) = v50;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v21 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

__int128 *sub_29A115368(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        sub_29A1155A0(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (sub_29A00AFCC(a4, v13, a1))
        {
          v14 = *(v13 + 2);
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          *(v13 + 2) = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          sub_29A1155A0(a1, a4, v9, a1);
        }

        v13 = (v13 + 24);
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = a2 - 24;
      do
      {
        v19 = *a1;
        *v27 = *(a1 + 8);
        *&v27[7] = *(a1 + 15);
        v20 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v21 = sub_29A11573C(a1, a4, v17);
        v22 = v21;
        v23 = *(v21 + 23);
        if (v18 == v21)
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          *v22 = v19;
          *(v22 + 1) = *v27;
          *(v22 + 15) = *&v27[7];
          *(v22 + 23) = v20;
        }

        else
        {
          if (v23 < 0)
          {
            operator delete(*v21);
          }

          v24 = *v18;
          *(v22 + 2) = *(v18 + 16);
          *v22 = v24;
          *v18 = v19;
          *(v18 + 8) = *v27;
          *(v18 + 15) = *&v27[7];
          *(v18 + 23) = v20;
          sub_29A115814(a1, v22 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v22 - a1 + 24) >> 3));
        }

        v18 -= 24;
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

void sub_29A115588(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A1155A0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 24 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && sub_29A00AFCC(a2, (a1 + 24 * v12), (v13 + 24)))
      {
        v13 += 24;
        v12 = v14;
      }

      if (!sub_29A00AFCC(a2, v13, v7))
      {
        v20 = *v7;
        v21 = v7[1].n128_u64[0];
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        while (1)
        {
          v16 = v13;
          if (v7[1].n128_i8[7] < 0)
          {
            operator delete(v7->n128_u64[0]);
          }

          v17 = *v13;
          v7[1].n128_u64[0] = *(v13 + 16);
          *v7 = v17;
          *(v13 + 23) = 0;
          *v13 = 0;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = a1 + 24 * v18;
          v19 = 2 * v12 + 2;
          if (v19 < a3 && sub_29A00AFCC(a2, (a1 + 24 * v18), (v13 + 24)))
          {
            v13 += 24;
            v18 = v19;
          }

          v7 = v16;
          v12 = v18;
          if (sub_29A00AFCC(a2, v13, &v20))
          {
            if (v16[1].n128_i8[7] < 0)
            {
              operator delete(v16->n128_u64[0]);
            }

            break;
          }
        }

        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

__int128 *sub_29A11573C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 24 * v6;
    v9 = (v8 + 24);
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = (v8 + 48);
      if (sub_29A00AFCC(a2, (v8 + 24), (v8 + 48)))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v13;
    *(v9 + 23) = 0;
    *v9 = 0;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

double sub_29A115814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v16 = v4;
    v17 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = (a1 + 24 * v8);
    v10 = (a2 - 24);
    if (sub_29A00AFCC(a3, v9, (a2 - 24)))
    {
      v14 = *v10;
      v15 = *(v10 + 2);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      while (1)
      {
        v12 = v9;
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        v13 = *v9;
        *(v10 + 2) = *(v9 + 2);
        *v10 = v13;
        *(v9 + 23) = 0;
        *v9 = 0;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 24 * v8);
        v10 = v12;
        if (!sub_29A00AFCC(a3, v9, &v14))
        {
          if (*(v12 + 23) < 0)
          {
            operator delete(*v12);
          }

          break;
        }
      }

      result = *&v14;
      *v12 = v14;
      *(v12 + 2) = v15;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfRegistryManager::GetInstance(pxrInternal__aapl__pxrReserved__::TfRegistryManager *this)
{
  if ((atomic_load_explicit(&qword_2A153F070, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153F070))
  {
    qword_2A153F068 = operator new(1uLL);
    __cxa_guard_release(&qword_2A153F070);
  }

  return qword_2A153F068;
}

BOOL pxrInternal__aapl__pxrReserved__::TfRegistryManager::AddFunctionForUnload(uint64_t a1, uint64_t a2)
{
  v3 = sub_29A115A5C();
  std::recursive_mutex::lock(v3);
  v9 = 0;
  v4 = sub_29A0ED084((v3 + 240), &v9);
  v5 = *v4;
  if (*v4)
  {
    v6 = sub_29A117008(*v4, 0, 0, a2);
    v7 = *v5;
    *v6 = *v5;
    v6[1] = v5;
    *(v7 + 8) = v6;
    *v5 = v6;
    ++v5[2];
  }

  std::recursive_mutex::unlock(v3);
  return v5 != 0;
}

unint64_t sub_29A115A5C()
{
  v0 = atomic_load(&qword_2A153F060);
  if (!v0)
  {
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled(("N32pxrInternal__aapl__pxrReserved__12_GLOBAL__N_122Tf_RegistryManagerImplE" & 0x7FFFFFFFFFFFFFFFLL), &v12);
    v1 = std::string::insert(&v12, 0, "Create Singleton ");
    v2 = *&v1->__r_.__value_.__l.__data_;
    v16 = v1->__r_.__value_.__r.__words[2];
    *__p = v2;
    v1->__r_.__value_.__l.__size_ = 0;
    v1->__r_.__value_.__r.__words[2] = 0;
    v1->__r_.__value_.__r.__words[0] = 0;
    sub_29A0EC164(&v13, "Tf", "TfSingleton::_CreateInstance", __p);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v12);
    if (atomic_exchange(byte_2A153F079, 1u))
    {
      while (!atomic_load(&qword_2A153F060))
      {
        sched_yield();
      }
    }

    else
    {
      if (!atomic_load(&qword_2A153F060))
      {
        v6 = operator new(0x1B0uLL);
        MEMORY[0x29C2C2050]();
        v6[9] = 0;
        v6[8] = v6 + 9;
        v6[10] = 0;
        v6[12] = 0;
        v6[11] = v6 + 12;
        v6[13] = 0;
        v6[14] = v6 + 14;
        v6[15] = v6 + 14;
        *(v6 + 8) = 0u;
        *(v6 + 9) = 0u;
        v6[20] = 0;
        *(v6 + 42) = 1065353216;
        *(v6 + 11) = 0u;
        *(v6 + 12) = 0u;
        *(v6 + 52) = 1065353216;
        v6[27] = v6 + 27;
        v6[28] = v6 + 27;
        v6[29] = 0;
        sub_29A1167C8(v6 + 30);
        v6[42] = &unk_2A203F6D8;
        __dmb(0xBu);
        v6[43] = 0;
        __dmb(0xBu);
        v6[44] = 0;
        v6[42] = &unk_2A2040320;
        v7 = tbb::internal::allocate_via_handler_v3(8);
        *v7 = &unk_2A2040380;
        v6[45] = v7;
        v6[51] = 0;
        v6[52] = 0;
        v6[53] = 0;
        v6[49] = 0;
        v6[48] = 0;
        v6[50] = v6 + 51;
        v6[47] = sub_29A116BDC;
        if (atomic_exchange(&qword_2A153F060, v6))
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "SetInstanceConstructed";
          v16 = 54;
          v17 = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Tf_RegistryManagerImpl>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Tf_RegistryManagerImpl]";
          v18 = 0;
          v19 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", v8);
        }

        if (sub_29A0F20E0(0))
        {
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("TfRegistryManager: initialized\n", v9, v10);
        }

        v11 = atomic_load(&qword_2A153F060);
        if (v11)
        {
          if (v6 != v11)
          {
            __p[0] = "tf/instantiateSingleton.h";
            __p[1] = "_CreateInstance";
            v16 = 86;
            v17 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Tf_RegistryManagerImpl>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Tf_RegistryManagerImpl]";
            v18 = 0;
            v19 = 4;
            pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "race detected setting singleton instance", v10);
          }
        }

        else if (atomic_exchange(&qword_2A153F060, v6))
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v16 = 90;
          v17 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Tf_RegistryManagerImpl>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Tf_RegistryManagerImpl]";
          v18 = 0;
          v19 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v10, "instance.exchange(newInst) == nullptr");
        }
      }

      atomic_store(0, byte_2A153F079);
    }

    v0 = atomic_load(&qword_2A153F060);
    pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v12);
    if (v13)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v14, v13);
    }
  }

  return v0;
}

void sub_29A115D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfRegistryManager::_SubscribeTo(pxrInternal__aapl__pxrReserved__::TfRegistryManager *this, const std::type_info *a2)
{
  v3 = sub_29A115A5C();
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((a2->__type_name & 0x7FFFFFFFFFFFFFFFLL), __p);
  std::recursive_mutex::lock(v3);
  sub_29A117100(v3);
  sub_29A095658((v3 + 88), __p, __p);
  if (v4)
  {
    v5 = sub_29A1179F4(v3 + 112, 0, 0, __p);
    v6 = *(v3 + 112);
    *v5 = v6;
    v5[1] = v3 + 112;
    *(v6 + 8) = v5;
    *(v3 + 112) = v5;
    ++*(v3 + 128);
    sub_29A117278(v3, __p);
  }

  std::recursive_mutex::unlock(v3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A115F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::recursive_mutex::unlock(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfRegistryManager::_UnsubscribeFrom(pxrInternal__aapl__pxrReserved__::TfRegistryManager *this, const std::type_info *a2)
{
  v3 = sub_29A115A5C();
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((a2->__type_name & 0x7FFFFFFFFFFFFFFFLL), __p);
  std::recursive_mutex::lock(v3);
  if (sub_29A0DD010((v3 + 88), __p))
  {
    sub_29A117D28(v3 + 112, __p);
  }

  std::recursive_mutex::unlock(v3);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A115FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::Tf_RegistryInit *pxrInternal__aapl__pxrReserved__::Tf_RegistryInit::Tf_RegistryInit(const char **this, const char *a2)
{
  *this = a2;
  if (atomic_load(&qword_2A153F060))
  {
    v4 = sub_29A115A5C();
    v6 = *this;
    if (!*this || !*v6)
    {
      sub_29B28E0F8(v14, &v13, v5);
    }

    v7 = v4;
    v14[0] = 0;
    v8 = sub_29A0ED084((v4 + 336), v14);
    v9 = (v8 + 8);
    v10 = strlen(v6);
    v11 = *(v8 + 31);
    if (v11 < 0)
    {
      if (v10 != *(v8 + 16))
      {
        return this;
      }

      if (v10 == -1)
      {
        sub_29A0F26CC();
      }

      v9 = *v9;
    }

    else if (v10 != v11)
    {
      return this;
    }

    if (!memcmp(v9, v6, v10))
    {
      std::recursive_mutex::lock(v7);
      sub_29A117100(v7);
      std::recursive_mutex::unlock(v7);
    }
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::Tf_RegistryInit::~Tf_RegistryInit(char **this)
{
  if (atomic_load(&qword_2A153F060))
  {
    v3 = sub_29A115A5C();
    v4 = *this;
    if ((pxrInternal__aapl__pxrReserved__::Tf_DlCloseIsActive(v3) & 1) != 0 || byte_2A153F078 == 1)
    {
      std::recursive_mutex::lock(v3);
      if (sub_29A0F20E0(0))
      {
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("TfRegistryManager: unloading '%s'\n", v5, v6, v4);
      }

      if (!v4 || !*v4)
      {
        v20 = "tf/registryManager.cpp";
        v21 = "_UnloadNoLock";
        v22 = 501;
        v23 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Tf_RegistryManagerImpl::_UnloadNoLock(const char *)";
        v24 = 0;
        *v25 = v16;
        *&v25[3] = *(&v16 + 3);
        v26 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(&v20, "Failed axiom: ' %s '", v6, "libraryName && libraryName[0]");
      }

      v19 = sub_29A117EFC(v3, v4);
      v7 = sub_29A11802C((v3 + 176), &v19);
      v8 = v7;
      if (v7)
      {
        v16 = &v16;
        v17 = &v16;
        v18 = 0;
        sub_29A1180F8((v7 + 3), &v16);
        if (v8[5])
        {
          v20 = "tf/registryManager.cpp";
          v21 = "_UnloadNoLock";
          v22 = 510;
          v23 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Tf_RegistryManagerImpl::_UnloadNoLock(const char *)";
          v24 = 0;
          v26 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(&v20, "Failed axiom: ' %s '", v9, "i->second.empty()");
        }

        for (i = v17; i != &v16; i = i[1])
        {
          v11 = i[5];
          if (!v11)
          {
            sub_29A0DDCB0();
          }

          (*(*v11 + 48))(v11);
        }

        sub_29A116E18(&v16);
      }

      for (j = *(v3 + 152); j; j = *j)
      {
        v13 = j[6];
        if (v13 != j + 5)
        {
          do
          {
            v14 = v13[1];
            if (v13[3] == v19)
            {
              v15 = *v13;
              *(v15 + 8) = v14;
              *v14 = v15;
              --j[7];
              operator delete(v13);
            }

            v13 = v14;
          }

          while (v14 != j + 5);
        }
      }

      std::recursive_mutex::unlock(v3);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_RegistryInit::Add(pxrInternal__aapl__pxrReserved__::Tf_RegistryInit *this, const char *a2, void (*a3)(void *, void *), const char *a4)
{
  v9 = sub_29A115A5C();
  if ((!this || !*this) && (sub_29B28E15C(v26, v7, v8) & 1) == 0 || (!a3 || !*a3) && (sub_29B28E1C4(v25, this, v8) & 1) == 0)
  {
    return;
  }

  LOBYTE(__p[0]) = 0;
  v10 = sub_29A0ED084((v9 + 336), __p);
  v11 = (v10 + 8);
  v12 = strlen(this);
  v13 = v12;
  v14 = *(v10 + 31);
  if (v14 < 0)
  {
    if (v12 != *(v10 + 16))
    {
LABEL_12:
      std::recursive_mutex::lock(v9);
      sub_29A117100(v9);
      std::recursive_mutex::unlock(v9);
      goto LABEL_13;
    }

    if (v12 == -1)
    {
      sub_29A0F26CC();
    }

    v15 = *v11;
  }

  else
  {
    v15 = (v10 + 8);
    if (v13 != v14)
    {
      goto LABEL_12;
    }
  }

  if (memcmp(v15, this, v13))
  {
    goto LABEL_12;
  }

LABEL_13:
  if (!*v10)
  {
    if (sub_29A0F20E0(0))
    {
      sub_29A008E78(__p, this);
      pxrInternal__aapl__pxrReserved__::ArchGetAddressInfo(a2, __p, 0, 0, 0);
      v18 = v28 >= 0 ? __p : __p[0];
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("TfRegistryManager: Library %s\n", v16, v17, v18);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }
    }

    MEMORY[0x29C2C1A60](v11, this);
    std::recursive_mutex::lock(v9);
    *v10 = sub_29A117EFC(v9, this);
    std::recursive_mutex::unlock(v9);
    if (!*v10)
    {
      sub_29B28E238(__p, v19, v20);
    }
  }

  sub_29A008E78(__p, a3);
  v21 = sub_29A117510(v10 + 32, __p);
  v22 = *v10;
  v23 = operator new(0x20uLL);
  v23[2] = a2;
  v23[3] = v22;
  v23[1] = v21;
  v24 = *v21;
  *v23 = *v21;
  v24[1] = v23;
  *v21 = v23;
  v21[2] = v21[2] + 1;
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A1165BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A1165FC(void *a1)
{
  *a1 = &unk_2A2040320;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29A0EBE40(a1);
  v3 = a1[8];
  v5 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 5), sub_29A116BFC);
  v6 = a1[6];
  if (v5 > v6)
  {
    v7 = v3 - 1;
    do
    {
      v8 = v7[v5];
      v7[v5] = 0;
      if (v8 >= 0x40)
      {
        tbb::internal::NFS_Free(v8, v4);
      }

      --v5;
    }

    while (v5 > v6);
    v5 = v6;
  }

  v9 = *v3;
  if (*v3 >= 0x40)
  {
    for (; v5; --v5)
    {
      v3[v5 - 1] = 0;
    }

    tbb::internal::NFS_Free(v9, v4);
  }

  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 5), v4);
  *a1 = &unk_2A203F6D8;
  return a1;
}

uint64_t *sub_29A11672C(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

uint64_t sub_29A11678C(uint64_t a1)
{
  sub_29A116E8C(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void *sub_29A1167C8(void *a1)
{
  *a1 = &unk_2A203F6D8;
  __dmb(0xBu);
  a1[1] = 0;
  __dmb(0xBu);
  a1[2] = 0;
  *a1 = &unk_2A2040228;
  v2 = tbb::internal::allocate_via_handler_v3(8);
  *v2 = &unk_2A2040288;
  a1[3] = v2;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[7] = 0;
  a1[6] = 0;
  a1[8] = a1 + 9;
  a1[5] = sub_29A116A20;
  return a1;
}

uint64_t sub_29A116894(uint64_t a1)
{
  v2 = tbb::internal::concurrent_vector_base_v3::internal_grow_by((a1 + 40), 1uLL, 0x80, tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::list<std::function<void ()(void)>> *>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::list<std::function<void ()(void)>> *>,128ul>>>::initialize_array, 0);
  v3 = sub_29A0EC0EC(v2);
  v4 = *(a1 + 64);
  __dmb(0xBu);
  v5 = *(v4 + 8 * v3) + ((v2 - ((1 << v3) & 0x1FFFFFFFFFFFFFELL)) << 7);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5);
  *(v5 + 8) = 1;
  return v5;
}

void sub_29A116958(void *a1)
{
  v1 = sub_29A116C70(a1);

  operator delete(v1);
}

void *sub_29A116980()
{
  result = tbb::internal::allocate_via_handler_v3(8);
  *result = &unk_2A2040288;
  return result;
}

uint64_t sub_29A1169B8(uint64_t a1)
{
  (*(*a1 + 16))(a1);

  return tbb::internal::deallocate_via_handler_v3(a1, v2);
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::list<std::function<void ()(void)>> *>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::list<std::function<void ()(void)>> *>,128ul>>>::initialize_array(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    bzero(a1, a3 << 7);
  }
}

uint64_t sub_29A116A40(uint64_t a1)
{
  v2 = tbb::internal::concurrent_vector_base_v3::internal_grow_by((a1 + 40), 1uLL, 0x80, sub_29A116BEC, 0);
  v3 = sub_29A0EC0EC(v2);
  v4 = *(a1 + 64);
  __dmb(0xBu);
  v5 = *(v4 + 8 * v3) + ((v2 - ((1 << v3) & 0x1FFFFFFFFFFFFFELL)) << 7);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5);
  *(v5 + 72) = 1;
  return v5;
}

void sub_29A116B04(void *a1)
{
  v1 = sub_29A1165FC(a1);

  operator delete(v1);
}

void *sub_29A116B2C()
{
  result = tbb::internal::allocate_via_handler_v3(8);
  *result = &unk_2A2040380;
  return result;
}

uint64_t sub_29A116B64(uint64_t a1)
{
  (*(*a1 + 16))(a1);

  return tbb::internal::deallocate_via_handler_v3(a1, v2);
}

double sub_29A116BC4(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 64) = 1065353216;
  return result;
}

void sub_29A116BEC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    bzero(a1, a3 << 7);
  }
}

void sub_29A116BFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = (a1 + (a2 << 7) - 56);
    do
    {
      if (*v3 == 1)
      {
        sub_29A116E8C(*(v3 - 3));
        v4 = *(v3 - 5);
        *(v3 - 5) = 0;
        if (v4)
        {
          operator delete(v4);
        }

        if (*(v3 - 41) < 0)
        {
          operator delete(*(v3 - 8));
        }

        *v3 = 0;
      }

      v3 -= 128;
      --v2;
    }

    while (v2);
  }
}

void *sub_29A116C70(void *a1)
{
  *a1 = &unk_2A2040228;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29A0EBE40(a1);
  sub_29A116D0C(a1 + 4);
  *a1 = &unk_2A203F6D8;
  return a1;
}

unint64_t *sub_29A116D0C(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::list<std::function<void ()(void)>> *>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::list<std::function<void ()(void)>> *>,128ul>>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

uint64_t tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::list<std::function<void ()(void)>> *>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::list<std::function<void ()(void)>> *>,128ul>>>::destroy_array(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = (result + (a2 << 7) - 120);
    do
    {
      if (*v2 == 1)
      {
        *v2 = 0;
      }

      v2 -= 128;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t sub_29A116D98(uint64_t a1)
{
  sub_29A116DD4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A116DD4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A116E18(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A116E18(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_29A0FC854((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_29A116E8C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      sub_29A116ED0((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_29A116ED0(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = (a1 + 24);
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 24) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(a1 + 40) = 0;
    if (v3 != (a1 + 24))
    {
      do
      {
        v6 = v3[1];
        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  if (*(a1 + 23) < 0)
  {
    v7 = *a1;

    operator delete(v7);
  }
}

void sub_29A116F64(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = *(v2 + 8);
      sub_29A116FC4(a1, v2);
      v2 = v5;
    }
  }
}

void sub_29A116FC4(int a1, void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void *sub_29A117008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = operator new(0x30uLL);
  *v7 = a2;
  v7[1] = a3;
  sub_29A117068((v7 + 2), a4);
  return v7;
}

uint64_t sub_29A117068(uint64_t a1, uint64_t a2)
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

void sub_29A117100(uint64_t a1)
{
  v15 = 0;
  if (*sub_29A0ED084((a1 + 336), &v15))
  {
    v16 = 0;
    v2 = sub_29A0ED084((a1 + 336), &v16);
    v3 = *(v2 + 48);
    if (v3)
    {
      LOBYTE(v4) = 0;
      do
      {
        if (v4)
        {
          v4 = 1;
        }

        else if (v3[7])
        {
          v4 = sub_29A00AF58(a1 + 88, v3 + 2) != 0;
        }

        else
        {
          v4 = 0;
        }

        v5 = sub_29A117510(a1 + 136, (v3 + 2));
        v6 = v3[7];
        if (v6)
        {
          v8 = v3[5];
          v7 = v3[6];
          v9 = v8[1];
          v10 = *v7;
          *(v10 + 8) = v9;
          *v9 = v10;
          v11 = *v5;
          v11[1] = v7;
          *v7 = v11;
          *v5 = v8;
          v8[1] = v5;
          v5[2] = &v6[v5[2]];
          v3[7] = 0;
        }

        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      v4 = 0;
    }

    *v2 = 0;
    if (*(v2 + 31) < 0)
    {
      **(v2 + 8) = 0;
      *(v2 + 16) = 0;
    }

    else
    {
      *(v2 + 8) = 0;
      *(v2 + 31) = 0;
    }

    if (*(v2 + 56))
    {
      sub_29A116E8C(*(v2 + 48));
      *(v2 + 48) = 0;
      v12 = *(v2 + 40);
      if (v12)
      {
        for (i = 0; i != v12; ++i)
        {
          *(*(v2 + 32) + 8 * i) = 0;
        }
      }

      *(v2 + 56) = 0;
    }

    if (v4)
    {
      for (j = *(a1 + 120); j != a1 + 112; j = *(j + 8))
      {
        sub_29A117278(a1, (j + 16));
      }
    }
  }
}

void sub_29A117278(uint64_t a1, char *a2)
{
  v2 = a2;
  *&v34 = 0;
  BYTE8(v34) = 0;
  v4 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v5 = a2[23];
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v34, a2, v5);
  v6 = *(a1 + 144);
  if (v6)
  {
    v7 = bswap64(0x9E3779B97F4A7C55 * v34);
    v8 = vcnt_s8(v6);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.u32[0];
    if (v8.u32[0] > 1uLL)
    {
      v10 = v7;
      if (v7 >= *&v6)
      {
        v10 = v7 % *&v6;
      }
    }

    else
    {
      v10 = (*&v6 - 1) & v7;
    }

    v11 = *(*(a1 + 136) + 8 * v10);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v7)
        {
          if (sub_29A0EC4B8(a1 + 136, i + 2, v2))
          {
            if (sub_29A0F20E0(0))
            {
              if (v2[23] >= 0)
              {
                v20 = v2;
              }

              else
              {
                v20 = *v2;
              }

              pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("TfRegistryManager: running %zd functions for %s\n", v18, v19, i[7], v20);
            }

            v21 = i[7];
            if (v21)
            {
              v22 = *(a1 + 224);
              v24 = i[5];
              v23 = i[6];
              v25 = v24[1];
              v26 = *v23;
              *(v26 + 8) = v25;
              *v25 = v26;
              v27 = *v22;
              *(v27 + 8) = v23;
              *v23 = v27;
              *v22 = v24;
              v24[1] = v22;
              *(a1 + 232) += v21;
              i[7] = 0;
            }

            for (j = *(a1 + 232); j; j = *(a1 + 232))
            {
              v29 = *(a1 + 224);
              v34 = v29[1];
              v31 = *v29;
              v30 = *(v29 + 1);
              *(v31 + 8) = v30;
              *v30 = v31;
              *(a1 + 232) = j - 1;
              operator delete(v29);
              LOBYTE(v35) = 0;
              v32 = *sub_29A0ED084((a1 + 240), &v35);
              v35 = &v34 + 1;
              v33 = sub_29A117A74(a1 + 176, &v34 + 1, &unk_29B4D6118, &v35) + 3;
              LOBYTE(v35) = 0;
              *sub_29A0ED084((a1 + 240), &v35) = v33;
              std::recursive_mutex::unlock(a1);
              (v34)(0, 0);
              std::recursive_mutex::lock(a1);
              LOBYTE(v35) = 0;
              *sub_29A0ED084((a1 + 240), &v35) = v32;
            }

            return;
          }
        }

        else
        {
          if (v9 > 1)
          {
            if (v13 >= *&v6)
            {
              v13 %= *&v6;
            }
          }

          else
          {
            v13 &= *&v6 - 1;
          }

          if (v13 != v10)
          {
            break;
          }
        }
      }
    }
  }

  if (sub_29A0F20E0(0))
  {
    if (v2[23] >= 0)
    {
      v16 = v2;
    }

    else
    {
      v16 = *v2;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("TfRegistryManager: no functions to run for %s\n", v14, v15, v16);
  }
}

const void **sub_29A117510(uint64_t a1, pxrInternal__aapl__pxrReserved__ *a2)
{
  v3 = a2;
  v40 = 0;
  LOBYTE(v41) = 0;
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v40, a2, v6);
  v7 = bswap64(0x9E3779B97F4A7C55 * v40);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v2 = v7;
      if (v7 >= v8)
      {
        v2 = v7 % v8;
      }
    }

    else
    {
      v2 = (v8 - 1) & v7;
    }

    v11 = *(*a1 + 8 * v2);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v7)
        {
          if (sub_29A0EC4B8(a1, i + 2, v3))
          {
            return i + 5;
          }
        }

        else
        {
          if (v10 > 1)
          {
            if (v13 >= v8)
            {
              v13 %= v8;
            }
          }

          else
          {
            v13 &= v8 - 1;
          }

          if (v13 != v2)
          {
            break;
          }
        }
      }
    }
  }

  v14 = operator new(0x40uLL);
  v15 = v14;
  v40 = v14;
  v41 = a1;
  v42 = 0;
  *v14 = 0;
  v14[1] = v7;
  if (*(v3 + 23) < 0)
  {
    sub_29A008D14(v14 + 16, *v3, *(v3 + 1));
  }

  else
  {
    *(v14 + 1) = *v3;
    v14[4] = *(v3 + 2);
  }

  v15[5] = v15 + 5;
  v15[6] = v15 + 5;
  v15[7] = 0;
  LOBYTE(v42) = 1;
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v8 || (v17 * v8) < v16)
  {
    v18 = 1;
    if (v8 >= 3)
    {
      v18 = (v8 & (v8 - 1)) != 0;
    }

    v19 = v18 | (2 * v8);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      prime = v20;
    }

    else
    {
      prime = v19;
    }

    if (*&prime == 1)
    {
      prime = 2;
    }

    else if ((*&prime & (*&prime - 1)) != 0)
    {
      prime = std::__next_prime(*&prime);
    }

    v8 = *(a1 + 8);
    if (*&prime > v8)
    {
      goto LABEL_36;
    }

    if (*&prime < v8)
    {
      v28 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v8 < 3 || (v29 = vcnt_s8(v8), v29.i16[0] = vaddlv_u8(v29), v29.u32[0] > 1uLL))
      {
        v28 = std::__next_prime(v28);
      }

      else
      {
        v30 = 1 << -__clz(v28 - 1);
        if (v28 >= 2)
        {
          v28 = v30;
        }
      }

      if (*&prime <= v28)
      {
        prime = v28;
      }

      if (*&prime >= v8)
      {
        v8 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
LABEL_36:
          if (*&prime >> 61)
          {
            sub_29A00C8B8();
          }

          v22 = operator new(8 * *&prime);
          v23 = *a1;
          *a1 = v22;
          if (v23)
          {
            operator delete(v23);
          }

          v24 = 0;
          *(a1 + 8) = prime;
          do
          {
            *(*a1 + 8 * v24++) = 0;
          }

          while (*&prime != v24);
          v25 = *(a1 + 16);
          if (v25)
          {
            v26 = v25[1];
            v27 = vcnt_s8(prime);
            v27.i16[0] = vaddlv_u8(v27);
            if (v27.u32[0] > 1uLL)
            {
              if (v26 >= *&prime)
              {
                v26 %= *&prime;
              }
            }

            else
            {
              v26 &= *&prime - 1;
            }

            *(*a1 + 8 * v26) = a1 + 16;
            v31 = *v25;
            if (*v25)
            {
              do
              {
                v32 = v31[1];
                if (v27.u32[0] > 1uLL)
                {
                  if (v32 >= *&prime)
                  {
                    v32 %= *&prime;
                  }
                }

                else
                {
                  v32 &= *&prime - 1;
                }

                if (v32 != v26)
                {
                  v33 = *a1;
                  if (!*(*a1 + 8 * v32))
                  {
                    v33[v32] = v25;
                    goto LABEL_61;
                  }

                  *v25 = *v31;
                  *v31 = *v33[v32];
                  *v33[v32] = v31;
                  v31 = v25;
                }

                v32 = v26;
LABEL_61:
                v25 = v31;
                v31 = *v31;
                v26 = v32;
              }

              while (v31);
            }
          }

          v8 = prime;
          goto LABEL_65;
        }

        v39 = *a1;
        *a1 = 0;
        if (v39)
        {
          operator delete(v39);
        }

        v8 = 0;
        *(a1 + 8) = 0;
      }
    }

LABEL_65:
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v2 = v7 % v8;
      }

      else
      {
        v2 = v7;
      }
    }

    else
    {
      v2 = (v8 - 1) & v7;
    }
  }

  v34 = *a1;
  v35 = *(*a1 + 8 * v2);
  if (v35)
  {
    i = v40;
    *v40 = *v35;
    *v35 = i;
  }

  else
  {
    v36 = v40;
    *v40 = *(a1 + 16);
    *(a1 + 16) = v36;
    v34[v2] = a1 + 16;
    i = v40;
    if (*v40)
    {
      v37 = *(*v40 + 1);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v37 >= v8)
        {
          v37 %= v8;
        }
      }

      else
      {
        v37 &= v8 - 1;
      }

      *(*a1 + 8 * v37) = v40;
      i = v40;
    }
  }

  v40 = 0;
  ++*(a1 + 24);
  sub_29A1179A8(&v40);
  return i + 5;
}

void sub_29A117990(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1179A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1179A8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A116ED0(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_29A1179F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = operator new(0x28uLL);
  v8 = v7;
  *v7 = a2;
  v7[1] = a3;
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14(v7 + 16, *a4, *(a4 + 8));
  }

  else
  {
    *(v7 + 1) = *a4;
    v7[4] = *(a4 + 16);
  }

  return v8;
}

void *sub_29A117A74(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v7 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v4 = v7;
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }

    v10 = *(*a1 + 8 * v4);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == v7)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= v8)
            {
              v12 %= v8;
            }
          }

          else
          {
            v12 &= v8 - 1;
          }

          if (v12 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x30uLL);
  *i = 0;
  i[1] = v7;
  i[2] = **a4;
  i[3] = i + 3;
  i[4] = i + 3;
  i[5] = 0;
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v8 || (v14 * v8) < v13)
  {
    v15 = 1;
    if (v8 >= 3)
    {
      v15 = (v8 & (v8 - 1)) != 0;
    }

    v16 = v15 | (2 * v8);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_29A019AA0(a1, v18);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }

      else
      {
        v4 = v7;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }
  }

  v19 = *a1;
  v20 = *(*a1 + 8 * v4);
  if (v20)
  {
    *i = *v20;
LABEL_38:
    *v20 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v19 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v21 = *(*i + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v21 >= v8)
      {
        v21 %= v8;
      }
    }

    else
    {
      v21 &= v8 - 1;
    }

    v20 = (*a1 + 8 * v21);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void sub_29A117CB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A117CCC(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A117CCC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A116E18(v2 + 3);
    }

    operator delete(v2);
  }
}

void sub_29A117D28(uint64_t a1, const void **a2)
{
  v16[0] = v16;
  v16[1] = v16;
  v16[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v5 = *(v2 + 39);
      if (v5 >= 0)
      {
        v6 = *(v2 + 39);
      }

      else
      {
        v6 = *(v2 + 24);
      }

      v7 = *(a2 + 23);
      v8 = v7;
      if (v7 < 0)
      {
        v7 = a2[1];
      }

      if (v6 == v7 && (v5 >= 0 ? (v9 = (v2 + 16)) : (v9 = *(v2 + 16)), v8 >= 0 ? (v10 = a2) : (v10 = *a2), !memcmp(v9, v10, v6)))
      {
        for (i = *(v2 + 8); ; i = *(i + 8))
        {
          if (i == a1)
          {
            v15 = 1;
            goto LABEL_31;
          }

          v12 = *(i + 39);
          v13 = v12;
          if ((v12 & 0x80u) != 0)
          {
            v12 = *(i + 24);
          }

          if (v12 != v6)
          {
            break;
          }

          v14 = v13 >= 0 ? (i + 16) : *(i + 16);
          if (memcmp(v14, v10, v6))
          {
            break;
          }
        }

        v15 = 0;
LABEL_31:
        sub_29A117E88(v16, v16, a1, v2, i);
        if (v15)
        {
          goto LABEL_17;
        }
      }

      else
      {
        i = v2;
      }

      i = *(i + 8);
LABEL_17:
      v2 = i;
    }

    while (i != a1);
  }

  sub_29A116F64(v16);
}

void sub_29A117E74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A116F64(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A117E88(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

uint64_t sub_29A117EFC(uint64_t a1, char *a2)
{
  sub_29A008E78(__p, a2);
  v7 = __p;
  v3 = sub_29A117F90((a1 + 64), __p, &unk_29B4D6118, &v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  result = *(v3 + 7);
  if (!result)
  {
    result = *(a1 + 80);
    *(v3 + 7) = result;
  }

  return result;
}

void sub_29A117F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_29A117F90(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_29A00B0D0(a1, &v12, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x40uLL);
    v9 = *a4;
    v10 = *(*a4 + 2);
    v7[2] = **a4;
    *(v7 + 6) = v10;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    *(v7 + 7) = 0;
    sub_29A00B204(a1, v12, v8, v7);
  }

  return v7;
}

void *sub_29A11802C(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = bswap64(0x9E3779B97F4A7C55 * *a2);
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v3;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

__int128 *sub_29A1180F8(__int128 *result, uint64_t *a2)
{
  v2 = *(result + 2);
  *(result + 2) = a2[2];
  a2[2] = v2;
  v3 = *result;
  *result = *a2;
  *a2 = v3;
  if (*(result + 2))
  {
    **(result + 1) = result;
    v4 = *result;
  }

  else
  {
    *result = result;
    v4 = result;
  }

  *(v4 + 1) = result;
  if (a2[2])
  {
    *a2[1] = a2;
    v5 = *a2;
  }

  else
  {
    *a2 = a2;
    v5 = a2;
  }

  v5[1] = a2;
  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::~TfSafeOutputFile(void **this)
{
  pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::Close(this);
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::Close(pxrInternal__aapl__pxrReserved__::TfSafeOutputFile *this)
{
  v2 = *this;
  if (v2)
  {
    fclose(v2);
    *this = 0;
    if ((*(this + 55) & 0x8000000000000000) != 0)
    {
      if (!*(this + 5))
      {
        return;
      }
    }

    else if (!*(this + 55))
    {
      return;
    }

    __p[0] = 0;
    __p[1] = 0;
    v6 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_AtomicRenameFileOver((this + 32), (this + 8), __p))
    {
      v3[0] = "tf/safeOutputFile.cpp";
      v3[1] = "Close";
      v3[2] = 69;
      v3[3] = "void pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::Close()";
      v4 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 3, __p);
    }

    if (*(this + 55) < 0)
    {
      **(this + 4) = 0;
      *(this + 5) = 0;
    }

    else
    {
      *(this + 32) = 0;
      *(this + 55) = 0;
    }

    if (*(this + 31) < 0)
    {
      **(this + 1) = 0;
      *(this + 2) = 0;
    }

    else
    {
      *(this + 8) = 0;
      *(this + 31) = 0;
    }

    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A1182AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::IsOpenForUpdate(pxrInternal__aapl__pxrReserved__::TfSafeOutputFile *this)
{
  if (!*this)
  {
    return 0;
  }

  v1 = *(this + 55);
  if (v1 < 0)
  {
    v1 = *(this + 5);
  }

  return v1 == 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::ReleaseUpdatedFile(pxrInternal__aapl__pxrReserved__::TfSafeOutputFile *this)
{
  result = *this;
  if (!result)
  {
    goto LABEL_6;
  }

  if ((*(this + 55) & 0x80000000) == 0)
  {
    if (!*(this + 55))
    {
      *this = 0;
      *(this + 32) = 0;
      *(this + 55) = 0;
      goto LABEL_8;
    }

LABEL_6:
    v7 = v1;
    v8 = v2;
    v5[0] = "tf/safeOutputFile.cpp";
    v5[1] = "ReleaseUpdatedFile";
    v5[2] = 43;
    v5[3] = "FILE *pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::ReleaseUpdatedFile()";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Invalid output file (failed to open, or opened for replace)");
    return 0;
  }

  if (*(this + 5))
  {
    goto LABEL_6;
  }

  *this = 0;
  **(this + 4) = 0;
  *(this + 5) = 0;
LABEL_8:
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::Discard(pxrInternal__aapl__pxrReserved__::TfSafeOutputFile *this)
{
  if (!*this)
  {
    goto LABEL_4;
  }

  if ((*(this + 55) & 0x8000000000000000) != 0)
  {
    if (*(this + 5))
    {
      goto LABEL_4;
    }

LABEL_11:
    __p[0] = "tf/safeOutputFile.cpp";
    __p[1] = "Discard";
    v4 = 81;
    v5 = "void pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::Discard()";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Invalid output file (failed to open, or opened for update)");
    return;
  }

  if (!*(this + 55))
  {
    goto LABEL_11;
  }

LABEL_4:
  *__p = *(this + 2);
  v4 = *(this + 6);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::Close(this);
  v1 = HIBYTE(v4);
  v2 = HIBYTE(v4);
  if (v4 < 0)
  {
    v1 = __p[1];
  }

  if (v1)
  {
    pxrInternal__aapl__pxrReserved__::TfDeleteFile(__p);
    v2 = HIBYTE(v4);
  }

  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A118488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::Update(std::string *__str@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  std::string::operator=((a2 + 8), __str);
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = __str;
  }

  else
  {
    v4 = __str->__r_.__value_.__r.__words[0];
  }

  v5 = pxrInternal__aapl__pxrReserved__::ArchOpenFile(v4, "rb+");
  if (v5)
  {
    *a2 = v5;
  }

  else
  {
    v7[0] = "tf/safeOutputFile.cpp";
    v7[1] = "Update";
    v7[2] = 104;
    v7[3] = "static TfSafeOutputFile pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::Update(const std::string &)";
    v8 = 0;
    if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = __str;
    }

    else
    {
      v6 = __str->__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 3, "Unable to open file '%s' for writing", v6);
  }
}

void pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::Replace(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  if (*(a1 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a1, *(a1 + 8));
  }

  else
  {
    __dst = *a1;
  }

  v3 = pxrInternal__aapl__pxrReserved__::Tf_CreateSiblingTempFile(&__dst, (a2 + 8), (a2 + 32), v15);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v3 == -1)
  {
    v9 = "tf/safeOutputFile.cpp";
    v10 = "Replace";
    v11 = 121;
    v12 = "static TfSafeOutputFile pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::Replace(const std::string &)";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 3, v15);
  }

  else
  {
    v4 = fdopen(v3, "wb");
    *a2 = v4;
    if (!v4)
    {
      v9 = "tf/safeOutputFile.cpp";
      v10 = "Replace";
      v11 = 129;
      v12 = "static TfSafeOutputFile pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::Replace(const std::string &)";
      v13 = 0;
      v5 = __error();
      pxrInternal__aapl__pxrReserved__::ArchStrerror(*v5, __p);
      v6 = v8 >= 0 ? __p : __p[0];
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v9, 3, "Unable to obtain writable FILE pointer: %s", v6);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_29A1186F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 - 17) < 0)
  {
    operator delete(*(v17 - 40));
  }

  pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::~TfSafeOutputFile(v16);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  *(a1 + 32) = v4;
  v5 = *a3;
  v6 = a3[1];
  *(a1 + 72) = *(a3 + 4);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  v7 = off_2A1B71A30();
  v8 = *v7;
  if (!*v7)
  {
    v12 = v7;
    if ((*off_2A1B71A60() & 1) == 0)
    {
      sub_29A11972C();
      sub_29B28E290();
    }

    v8 = off_2A1B71A48(&off_2A1B71A48);
    *v12 = v8;
  }

  v9 = *v8;
  *(a1 + 80) = v8;
  *(a1 + 88) = v9;
  sub_29A0EB5BC(&v13, (v8 + 1));
  *v8 = a1;
  v10 = v13;
  if (v13)
  {
    __dmb(0xBu);
    *v10 = 0;
  }

  return a1;
}

void sub_29A118830(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_29B28E2DC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(uint64_t *a1, __int128 *a2, __int128 *a3)
{
  v4 = *a2;
  a1[2] = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = 1;
  v5 = a1;
  if (*(a1 + 23) < 0)
  {
    v5 = *a1;
  }

  a1[4] = v5;
  v6 = *a3;
  v7 = a3[1];
  a1[9] = *(a3 + 4);
  *(a1 + 7) = v7;
  *(a1 + 5) = v6;
  v8 = off_2A1B71A30();
  v9 = *v8;
  if (!*v8)
  {
    v13 = v8;
    if ((*off_2A1B71A60() & 1) == 0)
    {
      sub_29A11972C();
      sub_29B28E290();
    }

    v9 = off_2A1B71A48(&off_2A1B71A48);
    *v13 = v9;
  }

  v10 = *v9;
  a1[10] = v9;
  a1[11] = v10;
  sub_29A0EB5BC(&v14, (v9 + 1));
  *v9 = a1;
  v11 = v14;
  if (v14)
  {
    __dmb(0xBu);
    *v11 = 0;
  }

  return a1;
}

void sub_29A118954(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfScopeDescription::TfScopeDescription(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  v4 = *a3;
  v5 = a3[1];
  *(a1 + 72) = *(a3 + 4);
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  v6 = off_2A1B71A30();
  v7 = *v6;
  if (!*v6)
  {
    v11 = v6;
    if ((*off_2A1B71A60() & 1) == 0)
    {
      sub_29A11972C();
      sub_29B28E290();
    }

    v7 = off_2A1B71A48(&off_2A1B71A48);
    *v11 = v7;
  }

  v8 = *v7;
  *(a1 + 80) = v7;
  *(a1 + 88) = v8;
  sub_29A0EB5BC(&v12, (v7 + 1));
  *v7 = a1;
  v9 = v12;
  if (v12)
  {
    __dmb(0xBu);
    *v9 = 0;
  }

  return a1;
}

void sub_29A118A58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_29B28E2DC(v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(pxrInternal__aapl__pxrReserved__::TfScopeDescription *this, uint64_t a2, char *a3)
{
  v3 = *(this + 10);
  if (*v3 != this)
  {
    v6[0] = "tf/scopeDescription.cpp";
    v6[1] = "_Pop";
    v6[2] = 322;
    v6[3] = "void pxrInternal__aapl__pxrReserved__::TfScopeDescription::_Pop() const";
    v7 = 0;
    v8 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(v6, "Failed axiom: ' %s '", a3, "stack.head == this");
  }

  sub_29A0EB5BC(v6, (v3 + 1));
  *v3 = *(this + 11);
  v5 = v6[0];
  if (v6[0])
  {
    __dmb(0xBu);
    *v5 = 0;
  }

  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void pxrInternal__aapl__pxrReserved__::TfScopeDescription::SetDescription(uint64_t a1, uint64_t *a2)
{
  sub_29A0EB5BC(&v6, *(a1 + 80) + 8);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  *(a1 + 32) = v4;
  v5 = v6;
  if (v6)
  {
    __dmb(0xBu);
    *v5 = 0;
  }

  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfScopeDescription::SetDescription(uint64_t a1, __int128 *a2)
{
  sub_29A0EB5BC(&v7, *(a1 + 80) + 8);
  result = sub_29A118C50(a1, a2);
  v5 = a1;
  if (*(a1 + 23) < 0)
  {
    v5 = *a1;
  }

  *(a1 + 32) = v5;
  v6 = v7;
  if (v7)
  {
    __dmb(0xBu);
    *v6 = 0;
  }

  return result;
}

void sub_29A118C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A118C50(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::TfScopeDescription::SetDescription(pxrInternal__aapl__pxrReserved__::TfScopeDescription *this, const char *a2)
{
  sub_29A0EB5BC(&v5, *(this + 10) + 8);
  *(this + 4) = a2;
  v4 = v5;
  if (v5)
  {
    __dmb(0xBu);
    *v4 = 0;
  }

  if (*(this + 24) == 1)
  {
    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *(this + 24) = 0;
  }
}

double pxrInternal__aapl__pxrReserved__::TfGetCurrentScopeDescriptionStack@<D0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, unint64_t *a2@<X8>)
{
  MainThreadId = pxrInternal__aapl__pxrReserved__::ArchGetMainThreadId(this);

  *&result = sub_29A118D78(MainThreadId, a2).n128_u64[0];
  return result;
}

__n128 sub_29A118D78@<Q0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = sub_29A119B80();
  sub_29A119BB8(v4);
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (v6 != v7)
  {
    while (*v6 != a1)
    {
      v6 += 5;
      if (v6 == v7)
      {
        goto LABEL_15;
      }
    }
  }

  if (v6 != v7)
  {
    v8 = v6[4];
    if (v8)
    {
      sub_29A0EB5BC(&v22, (v8 + 1));
      v9 = *v8;
      if (*v8)
      {
        v10 = a2[1];
        do
        {
          v11 = *(v9 + 32);
          v21 = v11;
          if (v10 >= a2[2])
          {
            v10 = sub_29A119C28(a2, &v21);
          }

          else
          {
            sub_29A008E78(v10, v11);
            v10 += 3;
          }

          a2[1] = v10;
          v9 = *(v9 + 88);
        }

        while (v9);
      }

      v12 = v22;
      if (v22)
      {
        __dmb(0xBu);
        *v12 = 0;
      }
    }
  }

LABEL_15:
  __dmb(0xBu);
  *v4 = 0;
  v13 = *a2;
  v14 = a2[1];
  v15 = v14 - 24;
  if (*a2 != v14 && v15 > v13)
  {
    v17 = v13 + 24;
    do
    {
      v18 = *(v17 - 8);
      result = *(v17 - 24);
      v19 = *(v15 + 16);
      *(v17 - 24) = *v15;
      *(v17 - 8) = v19;
      *v15 = result;
      *(v15 + 16) = v18;
      v15 -= 24;
      v20 = v17 >= v15;
      v17 += 24;
    }

    while (!v20);
  }

  return result;
}

void sub_29A118EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __dmb(0xBu);
  *v3 = 0;
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

double pxrInternal__aapl__pxrReserved__::TfGetThisThreadScopeDescriptionStack@<D0>(unint64_t *a1@<X8>)
{
  v3 = pthread_self();

  *&result = sub_29A118D78(v3, a1).n128_u64[0];
  return result;
}

void *pxrInternal__aapl__pxrReserved__::Tf_ScopeDescriptionStackReportLock::Tf_ScopeDescriptionStackReportLock(pxrInternal__aapl__pxrReserved__::Tf_ScopeDescriptionStackReportLock *this, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v91 = *MEMORY[0x29EDCA608];
  sub_29A119BB8(&byte_2A153F080);
  v4 = sub_29A119B80();
  v88 = 0;
  v89 = 0;
  v5 = sub_29A119D48(&v88, v4);
  if (v5)
  {
    v83 = v3;
    memset(v90, 0, 512);
    v8 = v4 + 8;
    v7 = *(v4 + 8);
    v6 = *(v8 + 8);
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3);
    if (v9 >= 0x400)
    {
      v9 = 1024;
    }

    v84 = v9;
    if (v6 != v7)
    {
      v10 = (v9 + 1) & 0xFFE;
      v11 = vdupq_n_s64(v84 - 1);
      v12 = xmmword_29B430070;
      v13 = v90 + 1;
      v14 = vdupq_n_s64(2uLL);
      v15 = v7;
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v11, v12));
        if (v16.i8[0])
        {
          *(v13 - 1) = v15;
        }

        if (v16.i8[4])
        {
          *v13 = v15 + 40;
        }

        v12 = vaddq_s64(v12, v14);
        v13 += 2;
        v15 += 80;
        v10 -= 2;
      }

      while (v10);
    }

    MainThreadId = pxrInternal__aapl__pxrReserved__::ArchGetMainThreadId(v5);
    v17 = 126 - 2 * __clz(v84);
    if (v6 == v7)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    sub_29A119E74(v90, v90 + v84, &MainThreadId, v18, 1);
    if (v6 != v7)
    {
      v19 = 0;
      v20 = 0x1FFFFFu;
      v21 = byte_2A153F081;
      do
      {
        v85 = v19;
        MainThreadId = 0;
        v22 = *(v90 + v19);
        v87 = 0;
        v23 = sub_29A119D48(&MainThreadId, v22[4] + 8);
        if ((v23 & 1) == 0)
        {
          v24 = 69;
          v25 = 1u;
          while (v21 != &byte_2A153F081[v20])
          {
            *v21++ = v24;
            v24 = aErrorCannotWri[v25++];
            if (v25 == 57)
            {
              goto LABEL_22;
            }
          }

          v21 = &byte_2A153F081[v20];
LABEL_22:
          *v21 = 0;
          v26 = v22 + 1;
          if (*(v22 + 31) < 0)
          {
            v26 = *v26;
          }

          v27 = *v26;
          if (*v26)
          {
            v28 = v26 + 1;
            while (v21 != &byte_2A153F081[v20])
            {
              *v21++ = v27;
              v29 = *v28++;
              v27 = v29;
              if (!v29)
              {
                goto LABEL_30;
              }
            }

            v21 = &byte_2A153F081[v20];
          }

LABEL_30:
          *v21 = 0;
          v30 = 32;
          v31 = 1u;
          while (v21 != &byte_2A153F081[v20])
          {
            *v21++ = v30;
            v30 = aFailedToAcquir[v31++];
            if (v31 == 35)
            {
              goto LABEL_35;
            }
          }

          v21 = &byte_2A153F081[v20];
LABEL_35:
          *v21 = 0;
        }

        if (*v22[4])
        {
          v32 = 84;
          v33 = 1u;
          while (v21 != &byte_2A153F081[v20])
          {
            *v21++ = v32;
            v32 = aThread[v33++];
            if (v33 == 8)
            {
              goto LABEL_43;
            }
          }

          v21 = &byte_2A153F081[v20];
LABEL_43:
          *v21 = 0;
          v35 = v22 + 1;
          if (*(v22 + 31) < 0)
          {
            v35 = *v35;
          }

          v36 = *v35;
          if (*v35)
          {
            v37 = v35 + 1;
            while (v21 != &byte_2A153F081[v20])
            {
              *v21++ = v36;
              v38 = *v37++;
              v36 = v38;
              if (!v38)
              {
                goto LABEL_51;
              }
            }

            v21 = &byte_2A153F081[v20];
          }

LABEL_51:
          *v21 = 0;
          v39 = *v22;
          if (pxrInternal__aapl__pxrReserved__::ArchGetMainThreadId(v23) == v39)
          {
            v40 = 32;
            v41 = 1u;
            v34 = v85;
            while (v21 != &byte_2A153F081[v20])
            {
              *v21++ = v40;
              v40 = aMain[v41++];
              if (v41 == 8)
              {
                goto LABEL_58;
              }
            }

            v21 = &byte_2A153F081[v20];
LABEL_58:
            *v21 = 0;
          }

          else
          {
            v34 = v85;
          }

          v42 = 32;
          v43 = 1u;
          while (v21 != &byte_2A153F081[v20])
          {
            *v21++ = v42;
            v42 = aScopeDescripti[v43++];
            if (v43 == 21)
            {
              goto LABEL_64;
            }
          }

          v21 = &byte_2A153F081[v20];
LABEL_64:
          *v21 = 0;
          v44 = *v22[4];
          if (v44)
          {
            v45 = 1;
            while (2)
            {
              if (v21 == &byte_2A153F081[v20])
              {
                v46 = &byte_2A153F081[v20];
                byte_2A153F081[v20] = 0;
              }

              else
              {
                *v21 = 35;
                v46 = &byte_2A153F081[v20];
                if (v21 + 1 != &byte_2A153F081[v20])
                {
                  v47 = 0;
                  v48 = v45;
                  do
                  {
                    v49 = &v21[v47 + 2];
                    v21[++v47] = (v48 % 0xA) | 0x30;
                    if (v48 < 0xA)
                    {
                      break;
                    }

                    v48 /= 0xAuLL;
                  }

                  while (v49 != &byte_2A153F081[v20]);
                  v50 = &v21[v47];
                  if (v47 >= 2)
                  {
                    v51 = v21 + 2;
                    v52 = &v21[v47];
                    do
                    {
                      v53 = *(v51 - 1);
                      *(v51 - 1) = *v52;
                      *v52-- = v53;
                      v54 = v51++ >= v52;
                    }

                    while (!v54);
                  }

                  v46 = &byte_2A153F081[v20];
                  v50[1] = 0;
                  if (v49 != &byte_2A153F081[v20])
                  {
                    v46 = &v21[v47 + 2];
                    v50[1] = 32;
                  }
                }
              }

              *v46 = 0;
              v55 = v44[4];
              v56 = *v55;
              if (*v55)
              {
                v57 = v55 + 1;
                while (v46 != &byte_2A153F081[v20])
                {
                  *v46++ = v56;
                  v58 = *v57++;
                  v56 = v58;
                  if (!v58)
                  {
                    goto LABEL_84;
                  }
                }

                v46 = &byte_2A153F081[v20];
              }

LABEL_84:
              *v46 = 0;
              if (!v44[5] || !v44[6])
              {
                goto LABEL_122;
              }

              v59 = 32;
              v60 = 1u;
              while (v46 != &byte_2A153F081[v20])
              {
                *v46++ = v59;
                v59 = aFrom[v60++];
                if (v60 == 8)
                {
                  goto LABEL_91;
                }
              }

              v46 = &byte_2A153F081[v20];
LABEL_91:
              *v46 = 0;
              v61 = v44[6];
              v62 = *v61;
              if (*v61)
              {
                v63 = v61 + 1;
                while (v46 != &byte_2A153F081[v20])
                {
                  *v46++ = v62;
                  v64 = *v63++;
                  v62 = v64;
                  if (!v64)
                  {
                    goto LABEL_97;
                  }
                }

                v46 = &byte_2A153F081[v20];
              }

LABEL_97:
              v65 = 0;
              *v46 = 0;
              v66 = 32;
              while (v46 != &byte_2A153F081[v20])
              {
                *v46++ = v66;
                v66 = aIn[++v65];
                if (v65 == 4)
                {
                  goto LABEL_102;
                }
              }

              v46 = &byte_2A153F081[v20];
LABEL_102:
              *v46 = 0;
              v67 = v44[5];
              v68 = *v67;
              if (*v67)
              {
                v69 = v67 + 1;
                while (v46 != &byte_2A153F081[v20])
                {
                  *v46++ = v68;
                  v70 = *v69++;
                  v68 = v70;
                  if (!v70)
                  {
                    goto LABEL_106;
                  }
                }

                byte_2A153F081[v20] = 0;
LABEL_118:
                v46 = &byte_2A153F081[v20];
                byte_2A153F081[v20] = 0;
              }

              else
              {
LABEL_106:
                *v46 = 0;
                if (v46 == &byte_2A153F081[v20])
                {
                  goto LABEL_118;
                }

                *v46 = 35;
                if (v46 + 1 == &byte_2A153F081[v20])
                {
                  v46 = &byte_2A153F081[v20];
                }

                else
                {
                  v71 = 0;
                  v72 = v44[7];
                  do
                  {
                    v73 = &v46[v71 + 2];
                    v46[++v71] = (v72 % 0xA) | 0x30;
                    if (v72 < 0xA)
                    {
                      break;
                    }

                    v72 /= 0xAuLL;
                  }

                  while (v73 != &byte_2A153F081[v20]);
                  v74 = &v46[v71];
                  if (v71 >= 2)
                  {
                    v75 = v46 + 2;
                    v76 = &v46[v71];
                    do
                    {
                      v77 = *(v75 - 1);
                      *(v75 - 1) = *v76;
                      *v76-- = v77;
                      v54 = v75++ >= v76;
                    }

                    while (!v54);
                  }

                  v74[1] = 0;
                  if (v73 == &byte_2A153F081[v20])
                  {
                    v46 = &byte_2A153F081[v20];
                  }

                  else
                  {
                    v46 += v71 + 2;
                    v74[1] = 41;
                  }
                }
              }

              *v46 = 0;
LABEL_122:
              v21 = &byte_2A153F081[v20];
              if (v46 != &byte_2A153F081[v20])
              {
                *v46 = 10;
                v21 = v46 + 1;
              }

              ++v45;
              *v21 = 0;
              v44 = v44[11];
              if (!v44)
              {
                break;
              }

              continue;
            }
          }

          if (v21 == &byte_2A153F081[v20])
          {
            v21 = &byte_2A153F081[v20];
          }

          else
          {
            *v21++ = 10;
          }

          *v21 = 0;
        }

        else
        {
          v34 = v85;
        }

        v78 = MainThreadId;
        if (MainThreadId)
        {
          __dmb(0xBu);
          *v78 = 0;
        }

        v19 = v34 + 1;
      }

      while (v19 != v84);
    }

    v3 = v83;
  }

  else
  {
    v79 = 0;
    v80 = 69;
    do
    {
      byte_2A153F081[v79] = v80;
      v80 = aErrorCannotGen[++v79];
    }

    while (v79 != 99);
    byte_2A153F0E4 = 0;
  }

  v81 = v88;
  if (v88)
  {
    __dmb(0xBu);
    *v81 = 0;
  }

  *v3 = byte_2A153F081;
  return v3;
}

void sub_29A1196DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _BYTE *a15)
{
  if (a15)
  {
    __dmb(0xBu);
    *a15 = 0;
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Tf_ScopeDescriptionStackReportLock::~Tf_ScopeDescriptionStackReportLock(pxrInternal__aapl__pxrReserved__::Tf_ScopeDescriptionStackReportLock *this)
{
  __dmb(0xBu);
  byte_2A153F080 = 0;
}

{
  __dmb(0xBu);
  byte_2A153F080 = 0;
}

void sub_29A11972C()
{
  v0 = off_2A1B71A48;
  v1 = off_2A1B71A48(&off_2A1B71A48);
  *v1 = 0;
  *(v1 + 8) = 0;
  v2 = sub_29A119B80();
  v3 = pthread_self();
  v23 = v3;
  sub_29A0EB5BC(&v22, v2);
  v18 = v3;
  sub_29A0F7DDC(&v23);
  v21 = v0(&off_2A1B71A48);
  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4)
  {
    v7 = v2[1];
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v7) >> 3) + 1;
    if (v8 > 0x666666666666666)
    {
      sub_29A00C9A4();
    }

    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v7) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x333333333333333)
    {
      v10 = 0x666666666666666;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 > 0x666666666666666)
      {
        sub_29A00C8B8();
      }

      v11 = operator new(40 * v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[8 * ((v5 - v7) >> 3)];
    *v12 = v18;
    *(v12 + 8) = *__p;
    *(v12 + 3) = v20;
    *(v12 + 4) = v0(&off_2A1B71A48);
    v13 = &v12[-(v5 - v7)];
    if (v7 != v5)
    {
      v14 = &v12[-(v5 - v7)];
      v15 = v7;
      do
      {
        *v14 = *v15;
        v16 = *(v15 + 8);
        *(v14 + 3) = *(v15 + 24);
        *(v14 + 8) = v16;
        *(v15 + 16) = 0;
        *(v15 + 24) = 0;
        *(v15 + 8) = 0;
        *(v14 + 4) = *(v15 + 32);
        v15 += 40;
        v14 += 40;
      }

      while (v15 != v5);
      do
      {
        if (*(v7 + 31) < 0)
        {
          operator delete(*(v7 + 8));
        }

        v7 += 40;
      }

      while (v7 != v5);
      v7 = v2[1];
    }

    v6 = v12 + 40;
    v2[1] = v13;
    v2[2] = v12 + 40;
    v2[3] = &v11[40 * v10];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v3;
    *(v5 + 24) = v20;
    *(v5 + 8) = *__p;
    *(v5 + 32) = v21;
    v6 = (v5 + 40);
  }

  v2[2] = v6;
  v17 = v22;
  if (v22)
  {
    __dmb(0xBu);
    *v17 = 0;
  }
}

void sub_29A119974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, _BYTE *a17)
{
  if (a17)
  {
    __dmb(0xBu);
    *a17 = 0;
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1199AC(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = sub_29A119B80();
  sub_29A0EB5BC(&v15, v2);
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  if (v4 != v5)
  {
    while (v4[4] != a1)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_4;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_4:
    *&v16 = "tf/scopeDescription.cpp";
    *(&v16 + 1) = "Remove";
    v17 = 126;
    v18 = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_StackRegistry::Remove(_Stack *)";
    v19 = 0;
    v20[0] = *v14;
    *(v20 + 3) = *&v14[3];
    *(&v20[1] + 3) = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(&v16, "Failed axiom: ' %s '", v3, "it != _stacks.end()");
  }

  v6 = *v4;
  v7 = v4[1];
  *(&v16 + 7) = *(v4 + 23);
  *&v16 = v4[2];
  v8 = *(v4 + 31);
  v4[2] = 0;
  v4[3] = 0;
  v4[1] = 0;
  v9 = v4[4];
  *v4 = *(v5 - 5);
  v10 = *(v5 - 2);
  v4[3] = *(v5 - 2);
  *(v4 + 1) = v10;
  *(v5 - 9) = 0;
  *(v5 - 32) = 0;
  v4[4] = *(v5 - 1);
  *(v5 - 5) = v6;
  if (*(v5 - 9) < 0)
  {
    operator delete(*(v5 - 4));
  }

  *(v5 - 4) = v7;
  *(v5 - 3) = v16;
  *(v5 - 17) = *(&v16 + 7);
  *(v5 - 9) = v8;
  *(v5 - 1) = v9;
  v11 = *(v2 + 16);
  if (*(v11 - 9) < 0)
  {
    operator delete(*(v11 - 32));
  }

  *(v2 + 16) = v11 - 40;
  v12 = v15;
  if (v15)
  {
    __dmb(0xBu);
    *v12 = 0;
  }

  return a1;
}

void sub_29A119B5C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

uint64_t sub_29A119B80()
{
  if ((atomic_load_explicit(&qword_2A173F090, memory_order_acquire) & 1) == 0)
  {
    sub_29B28E308();
  }

  return qword_2A173F088;
}

uint64_t sub_29A119BB8(uint64_t result)
{
  v1 = (result & 0xFFFFFFFFFFFFFFFCLL);
  v2 = 1 << (8 * (result & 3));
  v3 = ~(255 << (8 * (result & 3)));
LABEL_2:
  v4 = *v1 & v3;
  while (1)
  {
    v5 = v4;
    atomic_compare_exchange_strong(v1, &v5, v4 | v2);
    if (v5 == v4)
    {
      return result;
    }

    if (*v1 != v4)
    {
      result = sched_yield();
      goto LABEL_2;
    }
  }
}

void *sub_29A119C28(uint64_t a1, char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[24 * v2];
  v16 = v15;
  v17 = &v7[24 * v6];
  sub_29A008E78(v15, *a2);
  v8 = v15 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29A01FF14(&v14);
  return v8;
}

void sub_29A119D34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A119D48(void *a1, uint64_t a2)
{
  if (sub_29A119DE4(a1, a2))
  {
    return 1;
  }

  rep = std::chrono::steady_clock::now().__d_.__rep_;
  do
  {
    sched_yield();
    v4 = sub_29A119DE4(a1, a2);
  }

  while (!v4 && (std::chrono::steady_clock::now().__d_.__rep_ - rep) / 1000000 < 10);
  return v4;
}

BOOL sub_29A119DE4(void *a1, uint64_t a2)
{
  v4 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v5 = 255 << (8 * (a2 & 3));
  v6 = 1 << (8 * (a2 & 3));
LABEL_2:
  v7 = *v4 & ~v5;
  while (1)
  {
    v8 = v7;
    atomic_compare_exchange_strong(v4, &v8, v7 | v6);
    result = v8 == v7;
    if (v8 == v7)
    {
      break;
    }

    if (*v4 != v7)
    {
      if ((*v4 & v5) != 0)
      {
        return result;
      }

      sched_yield();
      goto LABEL_2;
    }
  }

  *a1 = a2;
  return result;
}

unint64_t sub_29A119E74(unint64_t result, unint64_t **a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  j = v9;
  while (1)
  {
    v9 = j;
    v11 = a2 - j;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          return sub_29A11AB9C(j, j + 1, a2 - 1, a3);
        case 4:
          result = sub_29A11AB9C(j, j + 1, j + 2, a3);
          v79 = *(a2 - 1);
          v80 = j[2];
          v81 = *v79;
          v82 = *v80;
          if (*v80 != *v79)
          {
            if (*a3 == v81 || *a3 != v82 && ((v83 = v82 != 0, v84 = v81 < v82, v81) ? (v85 = v84) : (v85 = v83), v85))
            {
              j[2] = v79;
              *(a2 - 1) = v80;
              v87 = j[1];
              v86 = j[2];
              v88 = *v86;
              v89 = *v87;
              if (*v87 != *v86)
              {
                if (*a3 == v88 || *a3 != v89 && ((v90 = v89 != 0, v91 = v88 < v89, v88) ? (v92 = v91) : (v92 = v90), v92))
                {
                  j[1] = v86;
                  j[2] = v87;
                  v93 = *j;
                  v94 = *v86;
                  v95 = **j;
                  if (v95 != *v86)
                  {
                    if (*a3 == v94 || *a3 != v95 && ((v96 = v95 != 0, v97 = v94 < v95, v94) ? (v98 = v97) : (v98 = v96), v98))
                    {
                      *j = v86;
                      j[1] = v93;
                    }
                  }
                }
              }
            }
          }

          return result;
        case 5:

          return sub_29A11AD2C(j, j + 1, j + 2, j + 3, a2 - 1, a3);
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v72 = *(a2 - 1);
        v73 = *j;
        v74 = *v72;
        v75 = **j;
        if (v75 != *v72)
        {
          if (*a3 == v74 || *a3 != v75 && ((v76 = v75 != 0, v77 = v74 < v75, v74) ? (v78 = v77) : (v78 = v76), v78))
          {
            *j = v72;
            *(a2 - 1) = v73;
          }
        }

        return result;
      }
    }

    if (v11 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (j == a2)
      {
        return result;
      }

      v119 = (v11 - 2) >> 1;
      v120 = v119;
      do
      {
        v121 = v120;
        if (v119 >= v120)
        {
          v122 = (2 * v120) | 1;
          v123 = &j[v122];
          if (2 * v121 + 2 < v11)
          {
            v124 = **v123;
            v125 = *v123[1];
            if (v125 != v124)
            {
              if (*a3 == v124 || *a3 != v125 && ((v126 = v125 != 0, v127 = v124 < v125, v124) ? (v128 = v127) : (v128 = v126), v128))
              {
                ++v123;
                v122 = 2 * v121 + 2;
              }
            }
          }

          v129 = j[v121];
          v130 = **v123;
          v131 = *v129;
          if (*v129 == v130 || *a3 != v130 && (*a3 == v131 || ((v132 = v131 != 0, v133 = v130 < v131, v130) ? (v134 = v133) : (v134 = v132), !v134)))
          {
            j[v121] = *v123;
            while (1)
            {
              if (v119 < v122)
              {
                goto LABEL_246;
              }

              v135 = v123;
              v136 = 2 * v122;
              v122 = (2 * v122) | 1;
              v123 = &j[v122];
              v137 = v136 + 2;
              if (v137 < v11)
              {
                v138 = **v123;
                result = *v123[1];
                if (result != v138)
                {
                  if (*a3 == v138 || *a3 != result && ((v139 = result != 0, result = v138 < result, v138) ? (v140 = result) : (v140 = v139), v140 == 1))
                  {
                    ++v123;
                    v122 = v137;
                  }
                }
              }

              v141 = **v123;
              v142 = *v129;
              if (*v129 != v141)
              {
                result = *a3;
                if (*a3 == v141)
                {
                  break;
                }

                if (result != v142)
                {
                  result = v142 != 0;
                  v143 = v141 < v142;
                  v144 = v141 ? v143 : result;
                  if (v144)
                  {
                    break;
                  }
                }
              }

              *v135 = *v123;
            }

            v123 = v135;
LABEL_246:
            *v123 = v129;
          }
        }

        v120 = v121 - 1;
      }

      while (v121);
      while (1)
      {
        v154 = 0;
        v155 = *j;
        v147 = j;
        do
        {
          v156 = v147;
          v157 = &v147[v154];
          v147 = v157 + 1;
          v158 = 2 * v154;
          v154 = (2 * v154) | 1;
          v159 = v158 + 2;
          if (v159 < v11)
          {
            v161 = v157[2];
            v160 = v157 + 2;
            v162 = **(v160 - 1);
            v163 = *v161;
            if (*v161 != v162)
            {
              result = *a3;
              if (*a3 == v162 || result != v163 && ((result = v163 != 0, v164 = v162 < v163, v162) ? (v165 = v164) : (v165 = result), v165 == 1))
              {
                v147 = v160;
                v154 = v159;
              }
            }
          }

          *v156 = *v147;
        }

        while (v154 <= ((v11 - 2) >> 1));
        if (v147 != --a2)
        {
          *v147 = *a2;
          *a2 = v155;
          v166 = (v147 - j + 8) >> 3;
          v167 = v166 - 2;
          if (v166 < 2)
          {
            goto LABEL_281;
          }

          v146 = v167 >> 1;
          v153 = &j[v167 >> 1];
          v155 = *v147;
          v168 = **v153;
          v169 = **v147;
          if (v169 == v168)
          {
            goto LABEL_281;
          }

          if (*a3 != v168)
          {
            if (*a3 == v169)
            {
              goto LABEL_281;
            }

            v170 = v169 != 0;
            v171 = v168 < v169;
            if (!(v168 ? v171 : v170))
            {
              goto LABEL_281;
            }
          }

          *v147 = *v153;
          if (v167 >= 2)
          {
            while (1)
            {
              v145 = v146 - 1;
              v146 = (v146 - 1) >> 1;
              v147 = &j[v146];
              v148 = **v147;
              v149 = *v155;
              if (*v155 == v148)
              {
                break;
              }

              if (*a3 != v148)
              {
                if (*a3 == v149)
                {
                  break;
                }

                v150 = v149 != 0;
                v151 = v148 < v149;
                if (!(v148 ? v151 : v150))
                {
                  break;
                }
              }

              *v153 = *v147;
              v153 = &j[v146];
              if (v145 <= 1)
              {
                goto LABEL_280;
              }
            }
          }

          v147 = v153;
        }

LABEL_280:
        *v147 = v155;
LABEL_281:
        if (v11-- <= 2)
        {
          return result;
        }
      }
    }

    v12 = v11 >> 1;
    v13 = &j[v11 >> 1];
    if (v11 < 0x81)
    {
      result = sub_29A11AB9C(&v9[v11 >> 1], v9, a2 - 1, a3);
    }

    else
    {
      sub_29A11AB9C(v9, &v9[v11 >> 1], a2 - 1, a3);
      sub_29A11AB9C(v9 + 1, v13 - 1, a2 - 2, a3);
      sub_29A11AB9C(v9 + 2, &v9[v12 + 1], a2 - 3, a3);
      result = sub_29A11AB9C(v13 - 1, v13, &v9[v12 + 1], a3);
      v14 = *v9;
      *v9 = *v13;
      *v13 = v14;
    }

    --a4;
    v15 = *v9;
    v16 = **v9;
    if ((a5 & 1) != 0 || (v17 = **(v9 - 1), v16 != v17) && (*a3 == v17 || *a3 != v16 && (v17 ? (v18 = v17 < v16) : (v18 = v16 != 0), v18)))
    {
      v19 = v9 + 1;
      v20 = v9[1];
      v21 = *v20;
      if (v16 == *v20)
      {
LABEL_43:
        if (v19 < a2)
        {
          v29 = *a3;
          for (i = a2 - 1; ; --i)
          {
            v30 = **i;
            if (v16 == v30)
            {
              goto LABEL_54;
            }

            if (v29 == v30)
            {
              goto LABEL_57;
            }

            if (v29 == v16)
            {
LABEL_54:
              if (v19 >= i)
              {
                goto LABEL_57;
              }
            }

            else
            {
              if (v30)
              {
                v31 = v30 >= v16;
              }

              else
              {
                v31 = v16 == 0;
              }

              if (v19 >= i || !v31)
              {
                goto LABEL_57;
              }
            }
          }
        }

        i = a2;
      }

      else
      {
        v22 = 0;
        v23 = *a3;
        while (1)
        {
          if (v23 != v21)
          {
            if (v23 == v16)
            {
              break;
            }

            if (!(v21 ? v21 < v16 : v16 != 0))
            {
              break;
            }
          }

          v25 = v19[1];
          ++v19;
          v20 = v25;
          v21 = *v25;
          v22 -= 8;
          if (v16 == *v25)
          {
            goto LABEL_34;
          }
        }

        if (!v22)
        {
          goto LABEL_43;
        }

LABEL_34:
        for (i = a2 - 1; ; --i)
        {
          v27 = **i;
          if (v16 != v27)
          {
            if (v23 == v27)
            {
              break;
            }

            if (v23 != v16 && (v27 ? v27 < v16 : v16 != 0))
            {
              break;
            }
          }
        }
      }

LABEL_57:
      j = v19;
      if (v19 < i)
      {
        v32 = *i;
        j = v19;
        v33 = i;
        do
        {
          *j = v32;
          *v33 = v20;
          v34 = *v15;
          v35 = j[1];
          ++j;
          v20 = v35;
          v36 = *v35;
          v37 = *a3;
          while (v34 != v36)
          {
            if (v37 != v36)
            {
              if (v37 == v34)
              {
                break;
              }

              if (!(v36 ? v36 < v34 : v34 != 0))
              {
                break;
              }
            }

            v39 = j[1];
            ++j;
            v20 = v39;
            v36 = *v39;
          }

          do
          {
            do
            {
              v40 = *--v33;
              v32 = v40;
              v41 = *v40;
            }

            while (v34 == *v40);
            if (v37 == v41)
            {
              break;
            }
          }

          while (v37 == v34 || !(v41 ? v41 < v34 : v34 != 0));
        }

        while (j < v33);
      }

      v43 = j - 1;
      if (j - 1 != v9)
      {
        *v9 = *v43;
      }

      *v43 = v15;
      if (v19 < i)
      {
LABEL_81:
        result = sub_29A119E74(v9, j - 1, a3, a4, a5 & 1);
        a5 = 0;
      }

      else
      {
        v44 = sub_29A11AFC4(v9, j - 1, a3);
        result = sub_29A11AFC4(j, a2, a3);
        if (result)
        {
          a2 = j - 1;
          if (v44)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v44)
        {
          goto LABEL_81;
        }
      }
    }

    else
    {
      v45 = **(a2 - 1);
      if (v45 == v16)
      {
        goto LABEL_96;
      }

      v46 = *a3;
      if (*a3 == v16)
      {
        goto LABEL_88;
      }

      if (v46 == v45)
      {
        goto LABEL_96;
      }

      v47 = v45 != 0;
      if (v16)
      {
        v47 = v16 < v45;
      }

      if (!v47)
      {
LABEL_96:
        j = v9 + 1;
        if (v9 + 1 < a2)
        {
          v51 = *a3;
          do
          {
            v52 = **j;
            if (v52 != v16)
            {
              if (v51 == v16)
              {
                break;
              }

              if (v51 != v52)
              {
                v53 = v52 != 0;
                v54 = v16 < v52;
                if (!v16)
                {
                  v54 = v53;
                }

                if (v54)
                {
                  break;
                }
              }
            }

            ++j;
          }

          while (j < a2);
        }
      }

      else
      {
LABEL_88:
        for (j = v9 + 1; ; ++j)
        {
          v48 = **j;
          if (v48 != v16)
          {
            if (v46 == v16)
            {
              break;
            }

            if (v46 != v48)
            {
              v49 = v48 != 0;
              v50 = v16 < v48;
              if (!v16)
              {
                v50 = v49;
              }

              if (v50)
              {
                break;
              }
            }
          }
        }
      }

      if (j < a2)
      {
        v55 = a2 - 1;
      }

      else
      {
        v55 = a2;
      }

      if (v45 != v16 && j < a2)
      {
        v56 = *a3;
        v55 = a2 - 1;
        do
        {
          if (v56 != v16)
          {
            if (v56 == v45)
            {
              break;
            }

            v57 = v45 != 0;
            v58 = v16 < v45;
            if (!v16)
            {
              v58 = v57;
            }

            if (!v58)
            {
              break;
            }
          }

          v59 = *--v55;
          v45 = *v59;
        }

        while (*v59 != v16);
      }

      if (j < v55)
      {
        v60 = *j;
        v61 = *v55;
        do
        {
          *j++ = v61;
          *v55 = v60;
          v62 = *v15;
          v63 = *a3;
          while (1)
          {
            v60 = *j;
            v64 = **j;
            if (v64 != v62)
            {
              if (v63 == v62)
              {
                break;
              }

              if (v63 != v64)
              {
                v65 = v64 != 0;
                v66 = v62 < v64;
                if (!v62)
                {
                  v66 = v65;
                }

                if (v66)
                {
                  break;
                }
              }
            }

            ++j;
          }

          while (1)
          {
            v67 = *--v55;
            v61 = v67;
            v68 = *v67;
            if (*v67 == v62)
            {
              break;
            }

            if (v63 != v62)
            {
              if (v63 == v68)
              {
                break;
              }

              v69 = v68 != 0;
              v70 = v62 < v68;
              if (!v62)
              {
                v70 = v69;
              }

              if (!v70)
              {
                break;
              }
            }
          }
        }

        while (j < v55);
      }

      v71 = j - 1;
      if (j - 1 != v9)
      {
        *v9 = *v71;
      }

      a5 = 0;
      *v71 = v15;
    }
  }

  v99 = j + 1;
  v101 = j == a2 || v99 == a2;
  if ((a5 & 1) == 0)
  {
    if (!v101)
    {
      do
      {
        v174 = *v99;
        v175 = **v99;
        v176 = **v9;
        if (v176 != v175)
        {
          if (*a3 == v175 || *a3 != v176 && ((v177 = v176 != 0, v178 = v175 < v176, v175) ? (v179 = v178) : (v179 = v177), v179))
          {
            *v99 = *v9;
            v180 = *(v9 - 1);
            v181 = *v174;
            v182 = *v180;
            v183 = v9;
            if (*v180 != *v174)
            {
              v183 = v9;
              do
              {
                if (*a3 != v181)
                {
                  if (*a3 == v182)
                  {
                    break;
                  }

                  v184 = v182 != 0;
                  v185 = v181 < v182;
                  if (!(v181 ? v185 : v184))
                  {
                    break;
                  }
                }

                *v183 = v180;
                v180 = *(v183 - 2);
                v181 = *v174;
                v182 = *v180;
                --v183;
              }

              while (*v180 != *v174);
            }

            *v183 = v174;
          }
        }

        ++v99;
        ++v9;
      }

      while (v99 != a2);
    }

    return result;
  }

  if (v101)
  {
    return result;
  }

  v102 = 0;
  v103 = j;
  while (2)
  {
    v104 = v103;
    v103 = v99;
    v105 = v104[1];
    v106 = *v105;
    v107 = **v104;
    if (v107 == *v105)
    {
      goto LABEL_205;
    }

    if (*a3 != v106)
    {
      if (*a3 == v107)
      {
        goto LABEL_205;
      }

      v108 = v107 != 0;
      v109 = v106 < v107;
      if (!(v106 ? v109 : v108))
      {
        goto LABEL_205;
      }
    }

    v104[1] = *v104;
    v111 = j;
    if (v104 == j)
    {
      goto LABEL_204;
    }

    v112 = v102;
    while (2)
    {
      v113 = *(j + v112 - 8);
      v114 = *v105;
      v115 = *v113;
      if (*v113 == *v105)
      {
LABEL_202:
        v111 = v104;
        goto LABEL_204;
      }

      if (*a3 == v114)
      {
LABEL_200:
        --v104;
        *(j + v112) = v113;
        v112 -= 8;
        if (!v112)
        {
          v111 = j;
          goto LABEL_204;
        }

        continue;
      }

      break;
    }

    if (*a3 != v115)
    {
      v116 = v115 != 0;
      v117 = v114 < v115;
      if (v114)
      {
        v118 = v117;
      }

      else
      {
        v118 = v116;
      }

      if (!v118)
      {
        goto LABEL_202;
      }

      goto LABEL_200;
    }

    v111 = (j + v112);
LABEL_204:
    *v111 = v105;
LABEL_205:
    v99 = v103 + 1;
    v102 += 8;
    if (v103 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}