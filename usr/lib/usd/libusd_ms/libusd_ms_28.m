void sub_29A14F360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A017C0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A14F374(uint64_t *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[16 * v2];
  *&v17 = v16;
  *(&v17 + 1) = &v8[16 * v7];
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(v16, *a2);
  *&v17 = v16 + 16;
  v9 = a1[1];
  v10 = (v16 + *a1 - v9);
  sub_29A14D1EC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A017C0C(&v15);
  return v14;
}

void sub_29A14F470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A017C0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A14F484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = a4;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a3;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (!a2)
  {
    v5 = operator new(0x18uLL);
    *v5 = 0x10000;
    v6 = operator new(1uLL);
    v7 = malloc(0x38uLL);
    v5[1] = v6;
    v5[2] = v7;
    v7[4] = 0;
    *v7 = v7 + 4;
    v7[1] = v6;
    v7[5] = 0;
    v7[6] = 0;
    *(v7 + 24) = 1;
    v7[2] = 1;
    *(a1 + 24) = v5;
    *(a1 + 32) = v5;
  }

  return a1;
}

void sub_29A14F530(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_29A14A0C0(v1);
  _Unwind_Resume(a1);
}

void *sub_29A14F554(void *a1)
{
  if (a1[4])
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  sub_29A14F598(a1);
  sub_29A14A0C0((a1 + 5));
  return a1;
}

void sub_29A14F598(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = sub_29A14F5CC(v1);

    operator delete(v2);
  }
}

uint64_t sub_29A14F5CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3 < 2)
    {
      sub_29A14F63C(a1);
      v4 = *(a1 + 16);
      v5 = *(v4 + 8);
      if (*(v4 + 24) == 1)
      {
        free(v4);
      }

      if (v5)
      {
        operator delete(v5);
      }
    }

    else
    {
      *(v2 + 16) = v3 - 1;
    }
  }

  return a1;
}

void *sub_29A14F63C(uint64_t a1)
{
  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    result = *i;
    v4 = *(*i + 16);
    if (!v4)
    {
      break;
    }

    *i = v4;
    free(result);
  }

  result[1] = 0;
  return result;
}

__n128 sub_29A14F680(int *a1, __int128 *a2, __n128 *a3, uint64_t a4)
{
  v7 = *a1;
  v8 = a1[1];
  if (*a1 >= v8)
  {
    if (v8)
    {
      v9 = v8 + ((v8 + 1) >> 1);
    }

    else
    {
      v9 = 16;
    }

    if (v8 < v9)
    {
      *(a1 + 1) = sub_29A14F744(a4, *(a1 + 1), 48 * v8, 48 * v9);
      a1[1] = v9;
      v7 = *a1;
    }
  }

  v10 = *(a1 + 1) + 48 * v7;
  v11 = *a2;
  *(v10 + 16) = *(a2 + 2);
  *v10 = v11;
  *(a2 + 11) = 0;
  result = *a3;
  *(v10 + 40) = a3[1].n128_u64[0];
  *(v10 + 24) = result;
  a3[1].n128_u16[3] = 0;
  ++*a1;
  return result;
}

char *sub_29A14F744(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a2;
      v5 = (a3 + 7) & 0xFFFFFFFFFFFFFFF8;
      v6 = (a4 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v6 <= v5)
      {
        return v4;
      }

      v7 = **(a1 + 16);
      v8 = v7[1];
      if (v7 + v8 - v5 + 24 == v4)
      {
        v9 = v8 + v6 - v5;
        if (v9 <= *v7)
        {
          v7[1] = v9;
          return v4;
        }
      }

      v10 = sub_29A14F81C(a1, v6);
      if (v10)
      {
        if (v5)
        {

          return memcpy(v10, v4, v5);
        }

        return v10;
      }
    }

    return 0;
  }

  return sub_29A14F81C(a1, a4);
}

uint64_t sub_29A14F81C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = **(a1 + 16);
  v5 = v4[1];
  v6 = v5 + v3;
  if (v5 + v3 <= *v4)
  {
LABEL_3:
    result = v4 + v5 + 24;
    v4[1] = v6;
    return result;
  }

  if (*a1 <= v3)
  {
    v8 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = *a1;
  }

  if (sub_29A14F8AC(a1, v8))
  {
    v4 = **(a1 + 16);
    v5 = v4[1];
    v6 = v5 + v3;
    goto LABEL_3;
  }

  return 0;
}

size_t sub_29A14F8AC(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    v4 = operator new(1uLL);
    *(a1 + 8) = v4;
    *(*(a1 + 16) + 8) = v4;
  }

  result = a2 + 24;
  if (a2 != -24)
  {
    result = malloc(result);
    if (result)
    {
      *result = a2;
      *(result + 8) = 0;
      v6 = *(a1 + 16);
      *(result + 16) = *v6;
      *v6 = result;
      return 1;
    }
  }

  return result;
}

int *sub_29A14F914(int *a1, __int128 *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1 >= v6)
  {
    if (v6)
    {
      v7 = v6 + ((v6 + 1) >> 1);
    }

    else
    {
      v7 = 16;
    }

    if (v6 < v7)
    {
      *(a1 + 1) = sub_29A14F744(a3, *(a1 + 1), 24 * v6, 24 * v7);
      a1[1] = v7;
      v5 = *a1;
    }
  }

  v8 = *(a1 + 1);
  *a1 = v5 + 1;
  v9 = v8 + 24 * v5;
  v10 = *a2;
  *(v9 + 16) = *(a2 + 2);
  *v9 = v10;
  *(a2 + 11) = 0;
  return a1;
}

void *sub_29A14F9C0(_WORD *__dst, uint64_t a2, uint64_t a3)
{
  v4 = __dst;
  if (*(a2 + 8) > 0x15u)
  {
    __dst[11] = 3077;
    v5 = *(a2 + 8);
    *__dst = v5;
    v6 = sub_29A14F81C(a3, (v5 + 1));
    v4[1] = v6;
    v4 = v6;
  }

  else
  {
    __dst[11] = 7173;
    *(__dst + 21) = 21 - *(a2 + 8);
  }

  result = memcpy(v4, *a2, *(a2 + 8));
  *(v4 + *(a2 + 8)) = 0;
  return result;
}

uint64_t sub_29A14FA48(uint64_t a1)
{
  sub_29A14FE8C(a1);
  v2 = *(a1 + 32);
  if (*(a1 + 40) - v2 <= 15)
  {
    sub_29A14B3D0((a1 + 8), 1);
    v2 = *(a1 + 32);
  }

  *(a1 + 32) = v2 + 16;
  *v2 = 0;
  *(v2 + 8) = 0;

  return sub_29A1502E4(a1);
}

uint64_t sub_29A14FAB8(void **a1)
{
  v2 = a1[4];
  v3 = *(v2 - 2);
  a1[4] = v2 - 2;
  if (v3)
  {
    v4 = *a1;
    v5 = (*a1)[3];
    if (((*a1)[4] - v5) <= 0)
    {
      sub_29A14D7E8(*a1, 1);
      v5 = *(v4 + 24);
    }

    *(v4 + 24) = v5 + 1;
    *v5 = 10;
    sub_29A150168(a1);
  }

  sub_29A15033C(a1);
  return 1;
}

uint64_t sub_29A14FB34(uint64_t a1)
{
  sub_29A14FE8C(a1);
  v2 = *(a1 + 32);
  if (*(a1 + 40) - v2 <= 15)
  {
    sub_29A14B3D0((a1 + 8), 1);
    v2 = *(a1 + 32);
  }

  *(a1 + 32) = v2 + 16;
  *v2 = 0;
  *(v2 + 8) = 1;

  return sub_29A150394(a1);
}

uint64_t sub_29A14FBA8(void **a1)
{
  v2 = a1[4];
  v3 = *(v2 - 2);
  a1[4] = v2 - 2;
  if (v3 && (*(a1 + 68) & 1) == 0)
  {
    v4 = *a1;
    v5 = (*a1)[3];
    if (((*a1)[4] - v5) <= 0)
    {
      sub_29A14D7E8(*a1, 1);
      v5 = *(v4 + 24);
    }

    *(v4 + 24) = v5 + 1;
    *v5 = 10;
    sub_29A150168(a1);
  }

  sub_29A1503EC(a1);
  return 1;
}

uint64_t sub_29A14FC2C(_BYTE *a1, unsigned int a2)
{
  sub_29A14FE8C(a1);
  v4 = *a1;
  v5 = *(*a1 + 24);
  if ((*(*a1 + 32) - v5) <= 10)
  {
    sub_29A14D7E8(*a1, 11);
    v5 = *(v4 + 24);
  }

  *(v4 + 24) = v5 + 11;
  if ((a2 & 0x80000000) != 0)
  {
    *v5 = 45;
    v6 = v5 + 1;
    a2 = -a2;
  }

  else
  {
    v6 = v5;
  }

  *(*a1 + 24) = *(*a1 + 24) + sub_29A14A678(a2, v6) - v5 - 11;
  return 1;
}

uint64_t sub_29A14FCD0(_BYTE *a1, unsigned int a2)
{
  sub_29A14FE8C(a1);
  v4 = *a1;
  v5 = *(*a1 + 24);
  if ((*(*a1 + 32) - v5) <= 9)
  {
    sub_29A14D7E8(*a1, 10);
    v5 = *(v4 + 24);
  }

  *(v4 + 24) = v5 + 10;
  *(*a1 + 24) = *(*a1 + 24) + sub_29A14A678(a2, v5) - v5 - 10;
  return 1;
}

uint64_t sub_29A14FD5C(_BYTE *a1, unint64_t a2)
{
  sub_29A14FE8C(a1);
  v4 = *a1;
  v5 = *(*a1 + 24);
  if ((*(*a1 + 32) - v5) <= 20)
  {
    sub_29A14D7E8(*a1, 21);
    v5 = *(v4 + 24);
  }

  *(v4 + 24) = v5 + 21;
  if ((a2 & 0x8000000000000000) != 0)
  {
    *v5 = 45;
    v6 = v5 + 1;
    a2 = -a2;
  }

  else
  {
    v6 = v5;
  }

  *(*a1 + 24) = *(*a1 + 24) + sub_29A14AB20(a2, v6) - v5 - 21;
  return 1;
}

uint64_t sub_29A14FE00(_BYTE *a1, unint64_t a2)
{
  sub_29A14FE8C(a1);
  v4 = *a1;
  v5 = *(*a1 + 24);
  if ((*(*a1 + 32) - v5) <= 19)
  {
    sub_29A14D7E8(*a1, 20);
    v5 = *(v4 + 24);
  }

  *(v4 + 24) = v5 + 20;
  *(*a1 + 24) = *(*a1 + 24) + sub_29A14AB20(a2, v5) - v5 - 20;
  return 1;
}

_BYTE *sub_29A14FE8C(_BYTE *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2 == *(result + 3))
  {
    result[60] = 1;
    return result;
  }

  v3 = *(v2 - 16);
  if (*(v2 - 8) == 1)
  {
    if (v3)
    {
      v4 = *result;
      v5 = *(*result + 24);
      if ((*(*result + 32) - v5) <= 0)
      {
        v17 = *result;
        result = sub_29A14D7E8(v4, 1);
        v4 = v17;
        v5 = v17[3];
      }

      v4[3] = v5 + 1;
      *v5 = 44;
      if (v1[68])
      {
        v6 = *v1;
        v7 = *(*v1 + 24);
        if ((*(*v1 + 32) - v7) <= 0)
        {
          v19 = *v1;
          result = sub_29A14D7E8(v6, 1);
          v6 = v19;
          v7 = v19[3];
        }

        v6[3] = v7 + 1;
        *v7 = 32;
      }
    }

    if (v1[68])
    {
      goto LABEL_30;
    }

    v8 = *v1;
    v9 = *(*v1 + 24);
    if ((*(*v1 + 32) - v9) <= 0)
    {
      v18 = *v1;
      sub_29A14D7E8(v8, 1);
      v8 = v18;
      v9 = v18[3];
    }

    v8[3] = v9 + 1;
    *v9 = 10;
    goto LABEL_29;
  }

  if (!v3)
  {
    goto LABEL_20;
  }

  v10 = *result;
  v11 = *(*result + 24);
  if ((v3 & 1) == 0)
  {
    if ((*(*result + 32) - v11) <= 0)
    {
      v20 = *result;
      result = sub_29A14D7E8(v10, 1);
      v10 = v20;
      v11 = v20[3];
    }

    v10[3] = v11 + 1;
    *v11 = 44;
LABEL_20:
    v12 = *v1;
    v13 = *(*v1 + 24);
    if ((*(*v1 + 32) - v13) <= 0)
    {
      v16 = *v1;
      result = sub_29A14D7E8(v12, 1);
      v12 = v16;
      v13 = v16[3];
    }

    v12[3] = v13 + 1;
    v14 = 10;
    goto LABEL_28;
  }

  if ((*(*result + 32) - v11) <= 0)
  {
    v21 = *result;
    result = sub_29A14D7E8(v10, 1);
    v10 = v21;
    v11 = v21[3];
  }

  v10[3] = v11 + 1;
  *v11 = 58;
  v15 = *v1;
  v13 = *(*v1 + 24);
  if ((*(*v1 + 32) - v13) <= 0)
  {
    v22 = *v1;
    result = sub_29A14D7E8(v15, 1);
    v15 = v22;
    v13 = v22[3];
  }

  v15[3] = v13 + 1;
  v14 = 32;
LABEL_28:
  *v13 = v14;
  if ((*(v2 - 16) & 1) == 0)
  {
LABEL_29:
    result = sub_29A150168(v1);
  }

LABEL_30:
  ++*(v2 - 16);
  return result;
}

uint64_t sub_29A1500C8(uint64_t a1)
{
  v2 = *a1;
  v3 = v2[3];
  if ((v2[4] - v3) <= 3)
  {
    sub_29A14D7E8(v2, 4);
    v2 = *a1;
    v3 = *(*a1 + 24);
  }

  v2[3] = v3 + 1;
  *v3 = 110;
  v4 = *(*a1 + 24);
  *(*a1 + 24) = v4 + 1;
  *v4 = 117;
  v5 = *(*a1 + 24);
  *(*a1 + 24) = v5 + 1;
  *v5 = 108;
  v6 = *(*a1 + 24);
  *(*a1 + 24) = v6 + 1;
  *v6 = 108;
  return 1;
}

void *sub_29A150168(uint64_t a1)
{
  v1 = ((*(a1 + 32) - *(a1 + 24)) >> 4) * *(a1 + 64);
  v2 = *a1;
  v3 = *(a1 + 61);
  v4 = *(*a1 + 24);
  if (v2[4] - v4 < v1)
  {
    sub_29A14D7E8(v2, v1);
    v4 = v2[3];
  }

  v2[3] = &v4[v1];

  return memset(v4, v3, v1);
}

uint64_t sub_29A1501EC(uint64_t a1, int a2)
{
  v3 = *a1;
  v4 = v3[3];
  v5 = v3[4] - v4;
  if (a2)
  {
    if (v5 <= 3)
    {
      sub_29A14D7E8(v3, 4);
      v3 = *a1;
      v4 = *(*a1 + 24);
    }

    v3[3] = v4 + 1;
    *v4 = 116;
    v6 = 117;
    v7 = 114;
  }

  else
  {
    if (v5 <= 4)
    {
      sub_29A14D7E8(v3, 5);
      v3 = *a1;
      v4 = *(*a1 + 24);
    }

    v3[3] = v4 + 1;
    *v4 = 102;
    v8 = *(*a1 + 24);
    *(*a1 + 24) = v8 + 1;
    *v8 = 97;
    v6 = 115;
    v7 = 108;
  }

  v9 = *(*a1 + 24);
  *(*a1 + 24) = v9 + 1;
  *v9 = v7;
  v10 = *(*a1 + 24);
  *(*a1 + 24) = v10 + 1;
  *v10 = v6;
  v11 = *(*a1 + 24);
  *(*a1 + 24) = v11 + 1;
  *v11 = 101;
  return 1;
}

uint64_t sub_29A1502E4(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  if (((*a1)[4] - v2) <= 0)
  {
    sub_29A14D7E8(*a1, 1);
    v2 = *(v1 + 24);
  }

  *(v1 + 24) = v2 + 1;
  *v2 = 123;
  return 1;
}

uint64_t sub_29A15033C(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  if (((*a1)[4] - v2) <= 0)
  {
    sub_29A14D7E8(*a1, 1);
    v2 = *(v1 + 24);
  }

  *(v1 + 24) = v2 + 1;
  *v2 = 125;
  return 1;
}

uint64_t sub_29A150394(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  if (((*a1)[4] - v2) <= 0)
  {
    sub_29A14D7E8(*a1, 1);
    v2 = *(v1 + 24);
  }

  *(v1 + 24) = v2 + 1;
  *v2 = 91;
  return 1;
}

uint64_t sub_29A1503EC(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  if (((*a1)[4] - v2) <= 0)
  {
    sub_29A14D7E8(*a1, 1);
    v2 = *(v1 + 24);
  }

  *(v1 + 24) = v2 + 1;
  *v2 = 93;
  return 1;
}

uint64_t sub_29A150444(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *a1;
  v7 = 6 * a3 + 2;
  v8 = v6[3];
  if (v6[4] - v8 < v7)
  {
    sub_29A14D7E8(v6, v7);
    v6 = *a1;
    v8 = *(*a1 + 24);
  }

  v6[3] = v8 + 1;
  *v8 = 34;
  if (a3)
  {
    v9 = 0;
    do
    {
      v10 = *(a2 + v9);
      v11 = a0123456789abcd_1[v10 + 16];
      v12 = *(*a1 + 24);
      *(*a1 + 24) = v12 + 1;
      if (v11)
      {
        sub_29B28F760(v12, a1, v11, v10);
      }

      else
      {
        *v12 = v10;
      }

      ++v9;
    }

    while (v9 < a3);
  }

  v13 = *(*a1 + 24);
  *(*a1 + 24) = v13 + 1;
  *v13 = 34;
  return 1;
}

void sub_29A150524(int a1, uint64_t *__p)
{
  if (__p)
  {
    v3 = *__p;
    *__p = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    operator delete(__p);
  }
}

void sub_29A150590(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = a3 - *(a1 + 8);
  *(a2 + 48) = 3;
  *(a2 + 56) = v3;
}

void pxrInternal__aapl__pxrReserved__::JsFindValue(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (!v5)
  {
    v11[0] = "js/utils.cpp";
    v11[1] = "JsFindValue";
    v11[2] = 23;
    v11[3] = "JsOptionalValue pxrInternal__aapl__pxrReserved__::JsFindValue(const JsObject &, const std::string &, const JsOptionalValue &)";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Key is empty");
    *a4 = 0;
    *(a4 + 16) = 0;
    return;
  }

  v8 = sub_29A01BCCC(a1, a2);
  if (a1 + 8 == v8)
  {
    *a4 = 0;
    *(a4 + 16) = 0;
    if (*(a3 + 16) != 1)
    {
      return;
    }

    v10 = *a3;
    v9 = a3[1];
  }

  else
  {
    v10 = *(v8 + 56);
    v9 = *(v8 + 64);
  }

  *a4 = v10;
  *(a4 + 8) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a4 + 16) = 1;
}

void *pxrInternal__aapl__pxrReserved__::JsValue::JsValue(pxrInternal__aapl__pxrReserved__::JsValue *this)
{
  v2 = operator new(0x28uLL);
  v2[6] = 6;
  v2[8] = 6;

  return sub_29A152044(this, v2);
}

{
  v2 = operator new(0x28uLL);
  v2[6] = 6;
  v2[8] = 6;

  return sub_29A152044(this, v2);
}

void *pxrInternal__aapl__pxrReserved__::JsValue::JsValue(void *a1, const void ***a2)
{
  v4 = operator new(0x28uLL);
  sub_29A15195C(&v7, a2);
  v5 = v7;
  v7 = 0;
  *v4 = v5;
  v4[6] = 0;
  sub_29A151B00(&v7, 0);
  v4[8] = 0;
  return sub_29A152044(a1, v4);
}

void *pxrInternal__aapl__pxrReserved__::JsValue::JsValue(void *a1, void *a2)
{
  v4 = operator new(0x28uLL);
  sub_29A151B54(&v7, a2);
  v5 = v7;
  v7 = 0;
  *v4 = v5;
  v4[6] = 0;
  sub_29A151B00(&v7, 0);
  v4[8] = 0;
  return sub_29A152044(a1, v4);
}

void *pxrInternal__aapl__pxrReserved__::JsValue::JsValue(void *a1, void **a2)
{
  v4 = operator new(0x28uLL);
  sub_29A151BC0(&v7, a2);
  v5 = v7;
  v7 = 0;
  *v4 = v5;
  v4[6] = 1;
  sub_29A151CB4(&v7, 0);
  v4[8] = 1;
  return sub_29A152044(a1, v4);
}

void *pxrInternal__aapl__pxrReserved__::JsValue::JsValue(void *a1, uint64_t a2)
{
  v4 = operator new(0x28uLL);
  sub_29A151CF8(v4, a2);

  return sub_29A152044(a1, v4);
}

{
  v4 = operator new(0x28uLL);
  v5 = v4;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v4, *a2, *(a2 + 8));
  }

  else
  {
    *v4 = *a2;
    v4[2] = *(a2 + 16);
  }

  *(v5 + 24) = 2;
  *(v5 + 32) = 2;

  return sub_29A152044(a1, v5);
}

{
  v4 = operator new(0x28uLL);
  *v4 = *a2;
  v4[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v4 + 6) = 2;
  *(v4 + 8) = 2;

  return sub_29A152044(a1, v4);
}

{
  v4 = operator new(0x28uLL);
  *v4 = *a2;
  v4[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v4 + 6) = 2;
  *(v4 + 8) = 2;

  return sub_29A152044(a1, v4);
}

void *pxrInternal__aapl__pxrReserved__::JsValue::JsValue(pxrInternal__aapl__pxrReserved__::JsValue *this, char *a2)
{
  v4 = operator new(0x28uLL);
  sub_29A008E78(&v6, a2);
  *v4 = v6;
  v4[2] = v7;
  *(v4 + 6) = 2;
  *(v4 + 8) = 2;
  return sub_29A152044(this, v4);
}

void *pxrInternal__aapl__pxrReserved__::JsValue::JsValue(pxrInternal__aapl__pxrReserved__::JsValue *this, char a2)
{
  v4 = operator new(0x28uLL);
  *v4 = a2;
  v4[6] = 3;
  v4[8] = 3;

  return sub_29A152044(this, v4);
}

{
  v4 = operator new(0x28uLL);
  *v4 = a2;
  v4[6] = 3;
  v4[8] = 3;

  return sub_29A152044(this, v4);
}

void *pxrInternal__aapl__pxrReserved__::JsValue::JsValue(pxrInternal__aapl__pxrReserved__::JsValue *this, int a2)
{
  v4 = operator new(0x28uLL);
  *v4 = a2;
  v4[6] = 4;
  v4[8] = 4;

  return sub_29A152044(this, v4);
}

{
  v4 = operator new(0x28uLL);
  *v4 = a2;
  v4[6] = 4;
  v4[8] = 4;

  return sub_29A152044(this, v4);
}

void *pxrInternal__aapl__pxrReserved__::JsValue::JsValue(pxrInternal__aapl__pxrReserved__::JsValue *this, uint64_t a2)
{
  v4 = operator new(0x28uLL);
  *v4 = a2;
  v4[6] = 4;
  v4[8] = 4;

  return sub_29A152044(this, v4);
}

{
  v4 = operator new(0x28uLL);
  *v4 = a2;
  v4[6] = 4;
  v4[8] = 4;

  return sub_29A152044(this, v4);
}

{
  v4 = operator new(0x28uLL);
  *v4 = a2;
  v4[6] = 7;
  v4[8] = 4;

  return sub_29A152044(this, v4);
}

{
  v4 = operator new(0x28uLL);
  *v4 = a2;
  v4[6] = 7;
  v4[8] = 4;

  return sub_29A152044(this, v4);
}

void *pxrInternal__aapl__pxrReserved__::JsValue::JsValue(pxrInternal__aapl__pxrReserved__::JsValue *this, double a2)
{
  v4 = operator new(0x28uLL);
  *v4 = a2;
  *(v4 + 6) = 5;
  *(v4 + 8) = 5;

  return sub_29A152044(this, v4);
}

{
  v4 = operator new(0x28uLL);
  *v4 = a2;
  *(v4 + 6) = 5;
  *(v4 + 8) = 5;

  return sub_29A152044(this, v4);
}

unint64_t pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(unint64_t **this)
{
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  v2 = *this;
  LODWORD(v5[0]) = 0;
  if (sub_29A150FD8(v2 + 8, v5, __p))
  {
    if (*(*this + 6))
    {
      sub_29A151D68();
    }

    v3 = **this;
  }

  else
  {
    v5[0] = "js/value.cpp";
    v5[1] = "GetJsObject";
    v5[2] = 244;
    v5[3] = "const JsObject &pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject() const";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, __p);
    v3 = atomic_load(&qword_2A173F208);
    if (!v3)
    {
      v3 = sub_29A15220C(&qword_2A173F208);
    }
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_29A150FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A150FD8(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (a3 && v3 != v4)
  {
    sub_29A1517F4(a2, v16);
    v7 = v17;
    v8 = v16[0];
    sub_29A1517F4(a1, __p);
    if (v7 >= 0)
    {
      v11 = v16;
    }

    else
    {
      v11 = v8;
    }

    if (v15 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Attempt to get %s from value holding %s", v9, v10, v11, v12);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v18;
    *(a3 + 16) = v19;
    HIBYTE(v19) = 0;
    LOBYTE(v18) = 0;
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }
  }

  return v3 == v4;
}

void sub_29A1510D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

unint64_t pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(unint64_t **this)
{
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  v2 = *this;
  LODWORD(v5[0]) = 1;
  if (sub_29A150FD8(v2 + 8, v5, __p))
  {
    if (*(*this + 6) != 1)
    {
      sub_29A151D68();
    }

    v3 = **this;
  }

  else
  {
    v5[0] = "js/value.cpp";
    v5[1] = "GetJsArray";
    v5[2] = 258;
    v5[3] = "const JsArray &pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray() const";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, __p);
    v3 = atomic_load(&qword_2A173F210);
    if (!v3)
    {
      v3 = sub_29A152278(&qword_2A173F210);
    }
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_29A1511E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t pxrInternal__aapl__pxrReserved__::JsValue::GetString(pxrInternal__aapl__pxrReserved__::JsValue *this)
{
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  v2 = *this;
  LODWORD(v5[0]) = 2;
  if (sub_29A150FD8((v2 + 32), v5, __p))
  {
    v3 = *this;
    if (*(v3 + 24) != 2)
    {
      sub_29A151D68();
    }
  }

  else
  {
    v5[0] = "js/value.cpp";
    v5[1] = "GetString";
    v5[2] = 272;
    v5[3] = "const std::string &pxrInternal__aapl__pxrReserved__::JsValue::GetString() const";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, __p);
    v3 = atomic_load(&qword_2A173F218);
    if (!v3)
    {
      v3 = sub_29A1522E4(&qword_2A173F218);
    }
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_29A1512E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::JsValue::GetBool(unsigned int **this)
{
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  v2 = *this;
  LODWORD(v5[0]) = 3;
  if (sub_29A150FD8(v2 + 8, v5, __p))
  {
    if ((*this)[6] != 3)
    {
      sub_29A151D68();
    }

    v3 = **this;
  }

  else
  {
    v5[0] = "js/value.cpp";
    v5[1] = "GetBool";
    v5[2] = 284;
    v5[3] = "BOOL pxrInternal__aapl__pxrReserved__::JsValue::GetBool() const";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, __p);
    v3 = 0;
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v3 & 1;
}

void sub_29A1513C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::JsValue::GetInt(uint64_t **this)
{
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  v2 = *this;
  LODWORD(v5[0]) = 4;
  if (sub_29A150FD8(v2 + 8, v5, __p))
  {
    Int64 = pxrInternal__aapl__pxrReserved__::JsValue::GetInt64(this);
  }

  else
  {
    v5[0] = "js/value.cpp";
    v5[1] = "GetInt";
    v5[2] = 296;
    v5[3] = "int pxrInternal__aapl__pxrReserved__::JsValue::GetInt() const";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, __p);
    Int64 = 0;
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return Int64;
}

void sub_29A15149C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::JsValue::GetInt64(uint64_t **this)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  v2 = *this;
  LODWORD(v6[0]) = 4;
  if (sub_29A150FD8(v2 + 8, v6, __p))
  {
    v3 = *(*this + 6);
    if (v3 == 4)
    {
      UInt64 = **this;
    }

    else
    {
      if (v3 != 7)
      {
        sub_29A151D68();
      }

      UInt64 = pxrInternal__aapl__pxrReserved__::JsValue::GetUInt64(this);
    }
  }

  else
  {
    v6[0] = "js/value.cpp";
    v6[1] = "GetInt64";
    v6[2] = 308;
    v6[3] = "int64_t pxrInternal__aapl__pxrReserved__::JsValue::GetInt64() const";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, __p);
    UInt64 = 0;
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return UInt64;
}

void sub_29A151598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::JsValue::GetUInt64(uint64_t **this)
{
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  v2 = *this;
  LODWORD(v5[0]) = 4;
  if (sub_29A150FD8(v2 + 8, v5, __p))
  {
    if (*(*this + 6) == 7)
    {
      Int64 = **this;
    }

    else
    {
      Int64 = pxrInternal__aapl__pxrReserved__::JsValue::GetInt64(this);
    }
  }

  else
  {
    v5[0] = "js/value.cpp";
    v5[1] = "GetUInt64";
    v5[2] = 323;
    v5[3] = "uint64_t pxrInternal__aapl__pxrReserved__::JsValue::GetUInt64() const";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, __p);
    Int64 = 0;
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return Int64;
}

void sub_29A151698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double pxrInternal__aapl__pxrReserved__::JsValue::GetReal(uint64_t **this)
{
  v2 = *this;
  v3 = *this;
  v5 = *(v3 + 8);
  v4 = (v3 + 4);
  if (v5 == 4)
  {
    if (*(v2 + 6) == 7)
    {
      return pxrInternal__aapl__pxrReserved__::JsValue::GetUInt64(this);
    }

    else
    {
      return pxrInternal__aapl__pxrReserved__::JsValue::GetInt64(this);
    }
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v11 = 0;
    LODWORD(v8[0]) = 5;
    if (sub_29A150FD8(v4, v8, __p))
    {
      if (*(*this + 6) != 5)
      {
        sub_29A151D68();
      }

      v6 = **this;
    }

    else
    {
      v8[0] = "js/value.cpp";
      v8[1] = "GetReal";
      v8[2] = 344;
      v8[3] = "double pxrInternal__aapl__pxrReserved__::JsValue::GetReal() const";
      v9 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, __p);
      v6 = 0.0;
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v6;
}

void sub_29A1517B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A1517F4@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  if (v4 > 6)
  {
    v5 = "unknown";
  }

  else
  {
    v5 = off_29F295430[v4];
  }

  return sub_29A008E78(a2, v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::JsValue::operator==(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 32) != *(*a2 + 32))
  {
    return 0;
  }

  v4 = *(*a1 + 24);
  v5 = *(*a2 + 24);
  result = v5 == v4;
  if (v4 != -1 && v5 == v4)
  {
    v9[1] = v2;
    v9[2] = v3;
    v9[0] = &v8;
    return (off_2A2040BF0[v4])(v9);
  }

  return result;
}

uint64_t **sub_29A15195C(uint64_t **a1, const void ***a2)
{
  v4 = operator new(0x18uLL);
  sub_29A1519B8(v4, a2);
  *a1 = v4;
  return a1;
}

uint64_t *sub_29A1519B8(uint64_t *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29A151A10(a1, *a2, a2 + 1);
  return a1;
}

uint64_t *sub_29A151A10(uint64_t *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29AA7EEFC(v5, (v5 + 1), v4 + 4, v4 + 2);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_29A151A98(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 4);
  __dst[3] = *(a2 + 3);
  __dst[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return __dst;
}

void sub_29A151B00(void ***a1, void **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29A09932C(v2, v2[1]);

    operator delete(v2);
  }
}

void *sub_29A151B54(void *a1, void *a2)
{
  v4 = operator new(0x18uLL);
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = *a2;
  v4[1] = v6;
  v7 = v4 + 1;
  v8 = a2[2];
  v4[2] = v8;
  if (v8)
  {
    *(v6 + 16) = v7;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *v4 = v7;
  }

  *a1 = v4;
  return a1;
}

void *sub_29A151BC0(void *a1, void **a2)
{
  v4 = operator new(0x18uLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  sub_29A151C2C(v4, *a2, a2[1], (a2[1] - *a2) >> 4);
  *a1 = v4;
  return a1;
}

void *sub_29A151C2C(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29A14E180(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A151C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void sub_29A151CB4(void ***a1, void **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2;
    sub_29A0176E4(&v3);
    operator delete(v2);
  }
}

uint64_t sub_29A151CF8(uint64_t a1, uint64_t a2)
{
  v4 = operator new(0x18uLL);
  *v4 = *a2;
  v4[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = 0;
  *a1 = v4;
  *(a1 + 24) = 1;
  sub_29A151CB4(&v6, 0);
  *(a1 + 32) = 1;
  return a1;
}

void sub_29A151D68()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

uint64_t sub_29A151E4C(uint64_t a1, void **a2)
{
  v2 = *a1;
  if (*(*a1 + 16) != (*a2)[2])
  {
    return 0;
  }

  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  if (v5 == v3)
  {
    return 1;
  }

  v6 = **a2;
  do
  {
    result = sub_29A151F2C(&v13, (v4 + 4), (v6 + 4));
    if (!result)
    {
      break;
    }

    v8 = v4[1];
    v9 = v4;
    if (v8)
    {
      do
      {
        v4 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v4 = v9[2];
        v10 = *v4 == v9;
        v9 = v4;
      }

      while (!v10);
    }

    v11 = v6[1];
    if (v11)
    {
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        v12 = v6[2];
        v10 = *v12 == v6;
        v6 = v12;
      }

      while (!v10);
    }

    v6 = v12;
  }

  while (v4 != v3);
  return result;
}

uint64_t sub_29A151F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = *(a3 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v9 = v4 >= 0 ? a2 : *a2;
  v10 = v7 >= 0 ? a3 : *a3;
  if (memcmp(v9, v10, v5))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::JsValue::operator==(a2 + 24, a3 + 24);
}

uint64_t sub_29A151FC8(uint64_t **a1, uint64_t **a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = **a2;
  if (v3 - v2 != (*a2)[1] - v4)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = pxrInternal__aapl__pxrReserved__::JsValue::operator==(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 16;
    v4 += 16;
  }

  while (v2 != v3);
  return result;
}

void *sub_29A152044(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2040C40;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A15209C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A152174(v1);
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1520C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A1520E8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_29A152174(*(a1 + 24));

    operator delete(v1);
  }
}

uint64_t sub_29A152134(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2040CD0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A152174(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_2A2040C80[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void sub_29A1521E4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

unint64_t sub_29A15220C(atomic_ullong *a1)
{
  v2 = operator new(0x18uLL);
  v3 = v2;
  v4 = 0;
  v2[2] = 0;
  v2[1] = 0;
  *v2 = v2 + 1;
  atomic_compare_exchange_strong(a1, &v4, v2);
  if (v4)
  {
    sub_29A09932C(v2, v2[1]);
    operator delete(v3);
    return atomic_load(a1);
  }

  return v3;
}

unint64_t sub_29A152278(atomic_ullong *a1)
{
  v2 = operator new(0x18uLL);
  v3 = v2;
  v4 = 0;
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  atomic_compare_exchange_strong(a1, &v4, v2);
  if (v4)
  {
    v6 = v2;
    sub_29A0176E4(&v6);
    operator delete(v3);
    return atomic_load(a1);
  }

  return v3;
}

unint64_t sub_29A1522E4(atomic_ullong *a1)
{
  v2 = operator new(0x18uLL);
  v3 = v2;
  v4 = 0;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = 0;
  atomic_compare_exchange_strong(a1, &v4, v2);
  if (v4)
  {
    if (v2[23] < 0)
    {
      operator delete(*v2);
    }

    operator delete(v3);
    return atomic_load(a1);
  }

  return v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::Trace_AggregateTreeBuilder::_CreateAggregateNodes(pxrInternal__aapl__pxrReserved__::Trace_AggregateTreeBuilder *this)
{
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  sub_29A153658(&__p, (*(this + 1) + 24));
  sub_29A153700(v9, &__p);
  sub_29B28F9E0(&__p);
  v2 = sub_29A152A58(this + 2);
  v3 = *(sub_29A152AD8((v2 + 24)) + 56);
  v4 = sub_29A152A58(this + 2);
  if (v3 != *(sub_29A152AD8((v4 + 24)) + 48))
  {
    v8 = *(v3 - 8);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceEventNode>::_AddRef();
  }

  pxrInternal__aapl__pxrReserved__::TraceThreadId::TraceThreadId(&__p);
  if (v7 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }

  if (*(&v11 + 1))
  {
    __p.n128_u64[0] = *(*(*(&v10[0] + 1) + (((*(&v11 + 1) + v11 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (BYTE8(v11) + v11 - 1));
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceEventNode>::_AddRef();
  }

  sub_29A153394(v9);
  return sub_29A153500(v10);
}

void sub_29A152780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_29A153394(va);
  sub_29A153500(va1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Trace_AggregateTreeBuilder::_ProcessCounters(pxrInternal__aapl__pxrReserved__::TraceCollection::Visitor *a1, pxrInternal__aapl__pxrReserved__::TraceCollection **a2)
{
  pxrInternal__aapl__pxrReserved__::TraceCollection::Iterate(a2, a1);
  sub_29A153658(v3, (*(a1 + 1) + 24));
  sub_29A152A08(v3);
}

void sub_29A15293C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B28D068(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Trace_AggregateTreeBuilder::Trace_AggregateTreeBuilder(void *a1, uint64_t a2, void *a3)
{
  *a1 = &unk_2A2040CF8;
  a1[1] = a2;
  a1[2] = *a3;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceEventTree>::_AddRef();
}

void sub_29A152A08(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B28FA30();
}

uint64_t sub_29A152A58(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

uint64_t sub_29A152AD8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Trace_AggregateTreeBuilder::OnEvent(pxrInternal__aapl__pxrReserved__::Trace_AggregateTreeBuilder *this, const pxrInternal__aapl__pxrReserved__::TraceThreadId *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TraceEvent *a4)
{
  result = pxrInternal__aapl__pxrReserved__::TraceEvent::GetType(a4);
  if ((result - 5) <= 1)
  {

    return pxrInternal__aapl__pxrReserved__::Trace_AggregateTreeBuilder::_OnCounterEvent(this, a2, a3, a4);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Trace_AggregateTreeBuilder::_OnCounterEvent(pxrInternal__aapl__pxrReserved__::Trace_AggregateTreeBuilder *this, const pxrInternal__aapl__pxrReserved__::TraceThreadId *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TraceEvent *a4)
{
  result = pxrInternal__aapl__pxrReserved__::TraceEvent::GetType(a4);
  if (result == 6)
  {
    v8 = 0;
    goto LABEL_5;
  }

  if (result == 5)
  {
    v8 = 1;
LABEL_5:
    v9 = *(this + 1);
    v10 = *a3;
    if ((*a3 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 &= 0xFFFFFFFFFFFFFFF8;
    }

    v16 = v10;
    v17 = 0;
    v11 = sub_29A153E60(v9 + 56, &v16, &v16);
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    CounterValue = pxrInternal__aapl__pxrReserved__::TraceEvent::GetCounterValue(a4);
    if (v8)
    {
      CounterValue = CounterValue + v11[3];
    }

    v11[3] = CounterValue;
    v13 = *(this + 1);
    v14 = *a3;
    if ((*a3 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 &= 0xFFFFFFFFFFFFFFF8;
    }

    v15 = *(v13 + 136);
    v16 = v14;
    LODWORD(v17) = v15;
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,int> const&>();
  }

  return result;
}

void sub_29A152DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Trace_AggregateTreeBuilder::_FindAggregateNode@<X0>(pxrInternal__aapl__pxrReserved__::Trace_AggregateTreeBuilder *this@<X0>, void *a2@<X8>)
{
  v4 = sub_29A152A58(this + 2);
  v5 = sub_29A152AD8((v4 + 24));
  result = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v12);
  v7 = *(v5 + 48);
  v8 = *(v5 + 56);
  if (v7 != v8)
  {
    while (1)
    {
      result = sub_29A152AD8(v7);
      v9 = *(result + 16);
      if ((v9 & 7) != 0)
      {
        if ((atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v9 &= 0xFFFFFFFFFFFFFFF8;
        }

        v10 = v12;
        if ((v9 & 7) != 0)
        {
          atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v10 = v12;
      }

      if ((v9 ^ v10) < 8)
      {
        break;
      }

      if (++v7 == v8)
      {
        v7 = v8;
        break;
      }
    }

    v8 = *(v5 + 56);
  }

  if (v7 != v8)
  {
    v11 = *v7;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceEventNode>::_AddRef();
  }

  *a2 = 0;
  a2[1] = 0;
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A1530FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, char a16)
{
  a13 = &a16;
  sub_29A124AB0(&a13);
  sub_29A1536D0();
}

void *sub_29A153214(void *result, void *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_29A00C9A4();
    }

    v8 = v4 - *result;
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

    v13[4] = result;
    if (v10)
    {
      v11 = sub_29A00C9BC(result, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[8 * v7];
    v13[0] = v11;
    v13[1] = v12;
    v13[3] = &v11[8 * v10];
    *v12 = *a2;
    *a2 = 0;
    v13[2] = v12 + 8;
    sub_29A15412C(v3, v13);
    v6 = *(v3 + 8);
    result = sub_29A1541C0(v13);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
    *a2 = 0;
    result[1] = v6;
  }

  *(v3 + 8) = v6;
  return result;
}

void sub_29A1532F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1541C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A153394(void *a1)
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
    v6 = &v2[v5 >> 8];
    v7 = *v6 + 16 * v5;
    v8 = *(v2 + (((a1[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 8);
        if (v9 && atomic_fetch_add_explicit(v9 + 2, 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v9 + 8))(v9);
        }

        v7 += 16;
        if (v7 - *v6 == 4096)
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
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 128;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_19;
    }

    v12 = 256;
  }

  a1[4] = v12;
LABEL_19:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_29A0D6E48(a1);
}

uint64_t sub_29A153500(void *a1)
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
    if (v2[a1[4] >> 8] + 16 * a1[4] != *(v2 + (((a1[5] + a1[4]) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + a1[4]))
    {
      sub_29A1536D0();
    }
  }

  *v4 = 0;
  v5 = v3 - v2;
  if (v5 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v5 = v3 - v2;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v6 = 128;
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_13;
    }

    v6 = 256;
  }

  a1[4] = v6;
LABEL_13:
  while (v2 != v3)
  {
    v7 = *v2++;
    operator delete(v7);
  }

  return sub_29A0D6E48(a1);
}

uint64_t *sub_29A153658(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_29A0ECFD4((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_29B28D0B0(v4, &v6);
    }
  }

  return a1;
}

void sub_29A1536B8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28D068(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_29A153700(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = *(a1 + 40) + *(a1 + 32);
  if (v6 == v7)
  {
    sub_29A153790(a1);
    v5 = *(a1 + 8);
    v7 = *(a1 + 40) + *(a1 + 32);
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  ++*(a1 + 40);
  return result;
}

void sub_29A153790(void **a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x100;
  v4 = v2 - 256;
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

void sub_29A1538F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29A153944(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = *(a1 + 40) + *(a1 + 32);
  if (v6 == v7)
  {
    sub_29A1539D8(a1);
    v5 = *(a1 + 8);
    v7 = *(a1 + 40) + *(a1 + 32);
  }

  v8 = (*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7);
  v9 = a2[1];
  *v8 = *a2;
  *a2 = 0;
  v8[1] = v9;
  ++*(a1 + 40);
}

void sub_29A1539D8(void **a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x100;
  v4 = v2 - 256;
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

void sub_29A153B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A153BF4(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x100)
  {
    a2 = 1;
  }

  if (v5 < 0x200)
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

uint64_t *sub_29A153C64(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v6 = sub_29A153CF4(a1, &v11, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    v9 = *a4;
    v7[4] = **a4;
    *v9 = 0;
    v7[5] = 0;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

void *sub_29A153CF4(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_29A153D90(a1, a3, v4 + 4))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_29A153D90(a1, v8 + 4, a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t sub_29A153D90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    return !v6;
  }

  else
  {
    if (v3 == v4)
    {
      return 0;
    }

    v8 = v3 & 0xFFFFFFFFFFFFFFF8;
    v9 = v4 & 0xFFFFFFFFFFFFFFF8;
    v10 = *(v8 + 8);
    v11 = *(v9 + 8);
    if (v10 < v11)
    {
      return 1;
    }

    if (v10 != v11)
    {
      return 0;
    }

    else
    {
      v14 = *(v9 + 16);
      v12 = v9 + 16;
      v13 = v14;
      v15 = *(v12 + 23);
      v18 = *(v8 + 16);
      v16 = v8 + 16;
      v17 = v18;
      v19 = *(v16 + 23);
      if (v19 >= 0)
      {
        v20 = *(v16 + 23);
      }

      else
      {
        v20 = *(v16 + 8);
      }

      if (v19 >= 0)
      {
        v21 = v16;
      }

      else
      {
        v21 = v17;
      }

      if (v15 >= 0)
      {
        v22 = *(v12 + 23);
      }

      else
      {
        v22 = *(v12 + 8);
      }

      if (v15 >= 0)
      {
        v23 = v12;
      }

      else
      {
        v23 = v13;
      }

      if (v22 >= v20)
      {
        v24 = v20;
      }

      else
      {
        v24 = v22;
      }

      v25 = memcmp(v21, v23, v24);
      if (v25)
      {
        return v25 < 0;
      }

      else
      {
        return v20 < v22;
      }
    }
  }
}

double *sub_29A153E60(uint64_t a1, void *a2, double *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v3 = v5;
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }
    }

    else
    {
      v3 = v5 & (v6 - 1);
    }

    v8 = *(*a1 + 8 * v3);
    if (v8)
    {
      for (result = *v8; result; result = *result)
      {
        v10 = *(result + 1);
        if (v10 == v5)
        {
          if ((*(result + 2) ^ *a2) < 8)
          {
            return result;
          }
        }

        else
        {
          if (v7.u32[0] > 1uLL)
          {
            if (v10 >= v6)
            {
              v10 %= v6;
            }
          }

          else
          {
            v10 &= v6 - 1;
          }

          if (v10 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A1540A8(a1, v5, a3, &v21);
  v11 = (*(a1 + 24) + 1);
  v12 = *(a1 + 32);
  if (!v6 || (v12 * v6) < v11)
  {
    v13 = 1;
    if (v6 >= 3)
    {
      v13 = (v6 & (v6 - 1)) != 0;
    }

    v14 = v13 | (2 * v6);
    v15 = vcvtps_u32_f32(v11 / v12);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    sub_29A019AA0(a1, v16);
    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }

      else
      {
        v3 = v5;
      }
    }

    else
    {
      v3 = (v6 - 1) & v5;
    }
  }

  v17 = *a1;
  v18 = *(*a1 + 8 * v3);
  if (v18)
  {
    result = v21;
    *v21 = *v18;
    *v18 = result;
  }

  else
  {
    v19 = v21;
    *v21 = *(a1 + 16);
    *(a1 + 16) = v19;
    *(*&v17 + 8 * v3) = a1 + 16;
    result = v21;
    if (*v21)
    {
      v20 = *(*v21 + 8);
      if ((v6 & (v6 - 1)) != 0)
      {
        if (v20 >= v6)
        {
          v20 %= v6;
        }
      }

      else
      {
        v20 &= v6 - 1;
      }

      *(*a1 + 8 * v20) = v21;
      result = v21;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A154088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v11 = __p;
  __p = 0;
  if (v11)
  {
    sub_29B28FB14(&__p, v11);
  }

  _Unwind_Resume(exception_object);
}

double sub_29A1540A8@<D0>(double *a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, double **a4@<X8>)
{
  v8 = operator new(0x20uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0.0;
  *(v8 + 1) = a2;
  v9 = *a3;
  v8[2] = *a3;
  if ((LOBYTE(v9) & 7) != 0 && (atomic_fetch_add_explicit((*&v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(v8 + 2) &= 0xFFFFFFFFFFFFFFF8;
  }

  result = a3[1];
  v8[3] = result;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29A15412C(uint64_t result, void *a2)
{
  v3 = *result;
  v2 = *(result + 8);
  v4 = a2[1] + *result - v2;
  if (v2 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v2);
    do
    {
      *v6++ = *v5;
      *v5++ = 0;
    }

    while (v5 != v2);
    do
    {
      if ((*v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  *(result + 8) = v7;
  a2[1] = v7;
  v8 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v8;
  v9 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

uint64_t sub_29A1541C0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v5 = *(v3 - 8);
    v3 -= 8;
    v4 = v5;
    *(a1 + 16) = v3;
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      v3 = *(a1 + 16);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    operator delete(v6);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder *pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::Trace_EventTreeBuilder(pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder *this)
{
  *this = &unk_2A2040D70;
  sub_29A1542E4(this + 1);
  *(this + 3) = 0;
  *(this + 2) = this + 24;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 8) = 0;
  *(this + 7) = this + 64;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  *(this + 6) = &unk_2A2040DC0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 1065353216;
  return this;
}

void sub_29A1542E4(void *a1@<X8>)
{
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v4, "root");
  v2 = 0uLL;
  v3 = 0;
  sub_29A155480(&v4, 0, 0, 0, &v2, 0, a1);
  v5 = &v2;
  sub_29A155930(&v5);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29A15436C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v14 - 24) = v13;
  sub_29A155930((v14 - 24));
  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::OnEndCollection(pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder *this)
{
  v1 = (this + 24);
  sub_29A156214(this + 16, *(this + 3));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
  for (i = v1[19]; i; i = *i)
  {
    v3 = i[3];
    v4 = i[4];
    v5 = 126 - 2 * __clz((v4 - v3) >> 5);
    if (v4 == v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    sub_29A1562B8(v3, v4, &v7, v6, 1);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::OnBeginThread(uint64_t **this, const pxrInternal__aapl__pxrReserved__::TraceThreadId *a2)
{
  v13 = 0;
  v14 = a2;
  v4 = sub_29A158284(this + 2, a2, &unk_29B4D6118, &v14);
  sub_29A158580(v4 + 7);
  *(v4 + 7) = 0uLL;
  v4[9] = v13;
  v13 = 0;
  v12 = 0uLL;
  v15 = &v12;
  sub_29A158498(&v15);
  *&v12 = a2;
  v5 = sub_29A158284(this + 2, a2, &unk_29B4D6118, &v12);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v12);
  LODWORD(v15) = 0;
  LODWORD(v14) = 0;
  v11 = 0;
  v10 = 0;
  v9 = 1;
  v6 = v5[8];
  if (v6 >= v5[9])
  {
    result = sub_29A1585EC(v5 + 7, &v12, &v15, &v14, &v11, &v10, &v9);
  }

  else
  {
    v7 = v12;
    *v6 = v12;
    if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 256;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0u;
    result = v6 + 88;
    *(v6 + 72) = 0u;
  }

  v5[8] = result;
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29A154594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::OnEndThread(pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder *this, const pxrInternal__aapl__pxrReserved__::TraceThreadId *a2)
{
  result = sub_29A158A20(this + 16, a2);
  if ((this + 24) != result)
  {
    v4 = result[7];
    v5 = result[8];
    v10 = 0;
    if (v4 != v5)
    {
      pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_PendingEventNode::Close((v5 - 88), &v9);
      v6 = v9;
      v9 = 0;
      v10 = v6;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceEventNode>::_RemoveRef();
    }

    v7 = sub_29A152AD8(&v10);
    pxrInternal__aapl__pxrReserved__::TraceEventNode::SetBeginAndEndTimesFromChildren(v7);
    sub_29A152AD8(this + 1);
    v8 = v10;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceEventNode>::_AddRef();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_PendingEventNode::Close(pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_PendingEventNode *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 5);
  v5 = *(this + 6);
  v6 = (this + 40);
  v7 = (v5 - 8);
  if (v4 != v5 && v7 > v4)
  {
    v9 = v4 + 8;
    do
    {
      v10 = *(v9 - 8);
      *(v9 - 8) = *v7;
      *v7-- = v10;
      v11 = v9 >= v7;
      v9 += 8;
    }

    while (!v11);
  }

  v13 = *(this + 8);
  v12 = *(this + 9);
  v14 = (v12 - 3);
  if (v13 != v12 && v14 > v13)
  {
    do
    {
      sub_29A159AB4(v13, v14);
      v13 += 3;
      v14 -= 48;
    }

    while (v13 < v14);
  }

  sub_29A155480(this, *(this + 2), *(this + 2), *(this + 3), v6, *(this + 32), a2);
  v16 = *(this + 8);
  v17 = *(this + 9);
  if (v16 != v17)
  {
    v18 = (v16 + 16);
    do
    {
      v19 = sub_29A152AD8(a2);
      v20 = *(v18 - 1);
      v22 = v20;
      if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v22 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::TraceEventNode::AddAttribute(v19, &v22, v18);
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v18 + 32;
      v18 = (v18 + 48);
    }

    while (v21 != v17);
  }
}

void sub_29A1548B0(void *a1, void *a2)
{
  v2 = a1[1];
  if (v2 < a1[2])
  {
    *v2 = *a2;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceEventNode>::_AddRef();
  }

  sub_29A158AA4(a1, a2);
}

void pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::OnEvent(uint64_t **this, const pxrInternal__aapl__pxrReserved__::TraceThreadId *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TraceEvent *a4)
{
  Type = pxrInternal__aapl__pxrReserved__::TraceEvent::GetType(a4);
  if (Type <= 2)
  {
    if (Type == 1)
    {

      pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_OnBegin(this, a2, a3, a4);
    }

    else if (Type == 2)
    {

      pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_OnEnd(this, a2, a3, a4);
    }
  }

  else
  {
    switch(Type)
    {
      case 3:

        pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_OnTimespan(this, a2, a3, a4);
        break;
      case 4:

        pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_OnMarker(this, a2, a3, a4);
        break;
      case 7:

        pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_OnData(this, a2, a3, a4);
        break;
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_OnBegin(uint64_t **this, const pxrInternal__aapl__pxrReserved__::TraceThreadId *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TraceEvent *a4)
{
  v20 = a2;
  v6 = sub_29A158284(this + 2, a2, &unk_29B4D6118, &v20);
  v7 = v6;
  v8 = v6 + 7;
  v9 = v6[8];
  v10 = -1171354717 * ((v9 - v6[7]) >> 3) - 1;
  for (i = v9 - 88; (*(i + 33) & 1) == 0; i = v12 + 88 * v10)
  {
    v12 = *v8;
    if ((*a3 ^ *i) <= 7 || (0x2E8BA2E8BA2E8BA3 * ((v9 - v12) >> 3)) <= 1)
    {
      goto LABEL_8;
    }

    --v10;
  }

  v12 = *v8;
  if ((0x2E8BA2E8BA2E8BA3 * ((v9 - *v8) >> 3)) > 1)
  {
    pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_PopAndClose(v6, v8);
  }

LABEL_8:
  if (v9 == v12)
  {
    v13 = *a3;
    goto LABEL_12;
  }

  v13 = *a3;
  if ((*a3 ^ *i) > 7)
  {
LABEL_12:
    v15 = *(a4 + 2);
    v20 = v13;
    if ((v13 & 7) != 0)
    {
      v16 = (v13 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed) & 1) == 0)
      {
        v20 = v16;
      }
    }

    v21 = v15;
    v22 = 0;
    v23 = 0;
    v24 = 1;
    v17 = v6[8];
    v25 = *(v17 - 48);
    *(v17 - 48) = 0;
    v26 = *(v17 - 40);
    *(v17 - 40) = 0;
    v27 = *(v17 - 32);
    *(v17 - 32) = 0;
    v18 = v6[8];
    v28 = *(v18 - 24);
    *(v18 - 24) = 0;
    v29 = *(v18 - 16);
    *(v18 - 16) = 0;
    v30 = *(v18 - 8);
    *(v18 - 8) = 0;
    pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_PendingEventNode::Close(&v20, &v31);
    v19 = sub_29A152AD8(&v31);
    pxrInternal__aapl__pxrReserved__::TraceEventNode::SetBeginAndEndTimesFromChildren(v19);
    sub_29A1548B0((v7[8] - 48), &v31);
  }

  result = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a4);
  *(i + 16) = result;
  *(i + 32) = 257;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_OnEnd(uint64_t **this, const pxrInternal__aapl__pxrReserved__::TraceThreadId *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TraceEvent *a4)
{
  v18 = a2;
  v6 = sub_29A158284(this + 2, a2, &unk_29B4D6118, &v18);
  v7 = v6[8];
  if (*(v7 - 55) == 1)
  {
    TimeStamp = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a4);
    if (TimeStamp <= *(v7 - 72) && (0x2E8BA2E8BA2E8BA3 * ((v6[8] - v6[7]) >> 3)) >= 2)
    {
      pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_PopAndClose(TimeStamp, (v6 + 7));
    }
  }

  v9 = *(a4 + 2);
  v16 = 0;
  v17 = v9;
  v10 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a4);
  v18 = v10;
  v15 = 1;
  v14 = 0;
  v11 = v6[8];
  if (v11 >= v6[9])
  {
    result = sub_29A158CB0(v6 + 7, a3, &v17, &v16, &v18, &v15, &v14);
  }

  else
  {
    v12 = *a3;
    *v11 = *a3;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v11 &= 0xFFFFFFFFFFFFFFF8;
    }

    *(v11 + 8) = v9;
    *(v11 + 16) = 0;
    *(v11 + 24) = v10;
    *(v11 + 32) = 1;
    *(v11 + 40) = 0u;
    *(v11 + 56) = 0u;
    result = v11 + 88;
    *(v11 + 72) = 0u;
  }

  v6[8] = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_OnTimespan(uint64_t **this, const pxrInternal__aapl__pxrReserved__::TraceThreadId *a2, atomic_uint **a3, const pxrInternal__aapl__pxrReserved__::TraceEvent *a4)
{
  StartTimeStamp = pxrInternal__aapl__pxrReserved__::TraceEvent::GetStartTimeStamp(a4);
  EndTimeStamp = pxrInternal__aapl__pxrReserved__::TraceEvent::GetEndTimeStamp(a4);
  v10 = *(a4 + 2);
  v11 = *a3;
  v15 = v11;
  if ((v11 & 7) != 0)
  {
    v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v12;
    }
  }

  v16 = v10;
  v17 = StartTimeStamp;
  v18 = EndTimeStamp;
  v19 = 256;
  memset(v20, 0, sizeof(v20));
  v21 = a2;
  v13 = sub_29A158284(this + 2, a2, &unk_29B4D6118, &v21);
  v14 = v13[8];
  if ((StartTimeStamp < *(v14 - 72) || v18 > *(v14 - 64)) && (0x2E8BA2E8BA2E8BA3 * ((v14 - v13[7]) >> 3)) >= 2)
  {
    pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_PopAndClose(v13, (v13 + 7));
  }

  sub_29A155338(v13 + 7, &v15);
  v21 = (&v20[1] + 8);
  sub_29A1559B4(&v21);
  v21 = v20;
  sub_29A155930(&v21);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29A154F7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1552D4(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_OnMarker(pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder *this, const pxrInternal__aapl__pxrReserved__::TraceThreadId *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TraceEvent *a4)
{
  TimeStamp = a3;
  v6 = sub_29A159028(this + 160, a3, &unk_29B4D6118, &TimeStamp);
  TimeStamp = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a4);
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v13 = *(a2 + 2);
  }

  v7 = v6[4];
  if (v7 >= v6[5])
  {
    v9 = sub_29A159368(v6 + 3, &TimeStamp);
    v10 = SHIBYTE(v13);
    v6[4] = v9;
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *v7 = TimeStamp;
    v8 = __p;
    *(v7 + 24) = v13;
    *(v7 + 8) = v8;
    v6[4] = v7 + 32;
  }
}

void sub_29A15507C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_OnData(uint64_t **this, const pxrInternal__aapl__pxrReserved__::TraceThreadId *a2, atomic_uint **a3, const pxrInternal__aapl__pxrReserved__::TraceEvent *a4)
{
  v14 = a2;
  result = sub_29A158284(this + 2, a2, &unk_29B4D6118, &v14);
  v7 = result + 56;
  v8 = *(result + 64);
  if (*(result + 56) != v8)
  {
    v9 = result;
    TimeStamp = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a4);
    if (TimeStamp < *(v8 - 72) || (TimeStamp = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a4), TimeStamp > *(v8 - 64)))
    {
      if ((0x2E8BA2E8BA2E8BA3 * ((*(v9 + 64) - *(v9 + 56)) >> 3)) >= 2)
      {
        pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_PopAndClose(TimeStamp, v7);
      }
    }

    v11 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a4);
    v12 = *a3;
    v14 = v11;
    v15 = v12;
    if ((v12 & 7) != 0)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 = v13;
      }
    }

    pxrInternal__aapl__pxrReserved__::TraceEvent::GetData(a4, v16);
    sub_29A1553D4((v8 - 24), &v14);
    result = sub_29A155A70(v16);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_29A1551D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_29A155A70(v11 + 16);
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_PopAndClose(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_PendingEventNode::Close((*(a2 + 8) - 88), &v4);
  v3 = *(a2 + 8);
  sub_29A158520(a2, v3 - 88);
  *(a2 + 8) = v3 - 88;
  sub_29A1548B0((v3 - 136), &v4);
}

double pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::_PendingEventNode::_PendingEventNode(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v7 = *a2;
  *a1 = *a2;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 33) = a7;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

{
  v7 = *a2;
  *a1 = *a2;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 33) = a7;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

uint64_t sub_29A1552D4(uint64_t a1)
{
  v3 = (a1 + 64);
  sub_29A1559B4(&v3);
  v3 = (a1 + 40);
  sub_29A155930(&v3);
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t sub_29A155338(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A158E94(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *a2 = 0;
    v4 = *(a2 + 8);
    *(v3 + 18) = *(a2 + 18);
    *(v3 + 8) = v4;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 40) = 0;
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 80) = 0;
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 80) = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    result = v3 + 88;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29A1553D4(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A159658(a1, a2);
    v4 = result;
  }

  else
  {
    *v3 = *a2;
    v4 = v3 + 3;
    *(a2 + 8) = 0;
    result = sub_29A159790((v3 + 1), a2 + 16);
  }

  a1[1] = v4;
  return result;
}

void sub_29A155480(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __n128 *a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  v14 = operator new(0x68uLL);
  sub_29A155AF0(v14, a1, a2, a3, a4, a5, a6);
  *a7 = v14;
}

void pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::CreateTree(void *a1, pxrInternal__aapl__pxrReserved__::TraceCollection **a2)
{
  pxrInternal__aapl__pxrReserved__::TraceCollection::ReverseIterate(a2, a1);
  pxrInternal__aapl__pxrReserved__::TraceCounterAccumulator::Update((a1 + 6), a2);
  v4 = a1[1];
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceEventNode>::_AddRef();
}

void sub_29A15560C(uint64_t *a1)
{
  operator new(0x70uLL);
  v2 = *a1;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceEventNode>::_AddRef();
}

void sub_29A1556B4(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v1 = va_arg(va1, void);
  v3 = va_arg(va1, void);
  v4 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_29A1560C0(va);
  sub_29A155FF8(va1);
  sub_29A1536D0();
}

void sub_29A1556F0(pxrInternal__aapl__pxrReserved__::TraceCollection::Visitor *a1)
{
  *a1 = &unk_2A2041218;
  sub_29A155EF4(a1 + 72);
  sub_29A155FF8(a1 + 32);
  sub_29A155F80(a1 + 8, *(a1 + 2));

  pxrInternal__aapl__pxrReserved__::TraceCollection::Visitor::~Visitor(a1);
}

void sub_29A155758(pxrInternal__aapl__pxrReserved__::TraceCollection::Visitor *a1)
{
  *a1 = &unk_2A2041218;
  sub_29A155EF4(a1 + 72);
  sub_29A155FF8(a1 + 32);
  sub_29A155F80(a1 + 8, *(a1 + 2));
  pxrInternal__aapl__pxrReserved__::TraceCollection::Visitor::~Visitor(a1);

  operator delete(v2);
}

void sub_29A1557C4(uint64_t a1)
{
  *a1 = &unk_2A2040D70;
  sub_29A1560C0(a1 + 160);
  *(a1 + 48) = &unk_2A2041218;
  sub_29A155EF4(a1 + 120);
  sub_29A155FF8(a1 + 80);
  sub_29A155F80(a1 + 56, *(a1 + 64));
  pxrInternal__aapl__pxrReserved__::TraceCollection::Visitor::~Visitor((a1 + 48));
  sub_29A153364();
}

void sub_29A155878(uint64_t a1)
{
  *a1 = &unk_2A2040D70;
  sub_29A1560C0(a1 + 160);
  *(a1 + 48) = &unk_2A2041218;
  sub_29A155EF4(a1 + 120);
  sub_29A155FF8(a1 + 80);
  sub_29A155F80(a1 + 56, *(a1 + 64));
  pxrInternal__aapl__pxrReserved__::TraceCollection::Visitor::~Visitor((a1 + 48));
  sub_29A153364();
}

void sub_29A155930(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = **a1;
    if (v1[1] != v2)
    {
      sub_29A1536D0();
    }

    v1[1] = v2;

    operator delete(v3);
  }
}

void sub_29A1559B4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A155A08(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_29A155A08(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 48)
  {
    result = sub_29A155A70(i - 32);
    v5 = *(i - 40);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_29A155A70(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_2A2040E48[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void sub_29A155ACC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

__n128 sub_29A155AF0(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, __n128 *a6, char a7)
{
  *(a1 + 8) = 1;
  *a1 = &unk_2A2040E88;
  v7 = *a2;
  *(a1 + 16) = *a2;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  result = *a6;
  *(a1 + 48) = *a6;
  *(a1 + 64) = a6[1].n128_u64[0];
  a6->n128_u64[0] = 0;
  a6->n128_u64[1] = 0;
  a6[1].n128_u64[0] = 0;
  *(a1 + 72) = a7;
  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  return result;
}

void sub_29A155B80(uint64_t a1)
{
  *a1 = &unk_2A2040E88;
  sub_29A155C84(a1 + 80, *(a1 + 88));
  v3 = (a1 + 48);
  sub_29A155930(&v3);
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);
}

void sub_29A155C00(uint64_t a1)
{
  *a1 = &unk_2A2040E88;
  sub_29A155C84(a1 + 80, *(a1 + 88));
  v4 = (a1 + 48);
  sub_29A155930(&v4);
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);
  operator delete(v3);
}

void sub_29A155C84(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A155C84(a1, *a2);
    sub_29A155C84(a1, a2[1]);
    sub_29A155A70((a2 + 5));
    v4 = a2[4];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

uint64_t sub_29A155CF8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void sub_29A155D68(uint64_t a1, void *a2)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *a1 = &unk_2A2040EC0;
  *(a1 + 24) = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceEventNode>::_AddRef();
}

void sub_29A155DEC(_Unwind_Exception *a1, const void *a2)
{
  sub_29A0F6078(v3, a2);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(v2);
  _Unwind_Resume(a1);
}

void sub_29A155E08(void *a1)
{
  *a1 = &unk_2A2040EC0;
  sub_29A1560C0((a1 + 9));
  sub_29A155FF8((a1 + 4));
  sub_29A1536D0();
}

void sub_29A155E7C(void *a1)
{
  *a1 = &unk_2A2040EC0;
  sub_29A1560C0((a1 + 9));
  sub_29A155FF8((a1 + 4));
  sub_29A1536D0();
}

uint64_t sub_29A155EF4(uint64_t a1)
{
  sub_29A155F30(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A155F30(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[2];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A155F80(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A155F80(a1, *a2);
    sub_29A155F80(a1, a2[1]);
    sub_29A082B84((a2 + 5), a2[6]);
    v4 = a2[4];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

uint64_t sub_29A155FF8(uint64_t a1)
{
  sub_29A156034(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A156034(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A156078(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A156078(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t sub_29A1560C0(uint64_t a1)
{
  sub_29A1560FC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A1560FC(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v5 = (v2 + 24);
      sub_29A156170(&v5);
      v4 = *(v2 + 2);
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A156170(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A1561C4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29A1561C4(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void sub_29A156214(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A156214(a1, *a2);
    sub_29A156214(a1, a2[1]);
    sub_29A156270((a2 + 4));

    operator delete(a2);
  }
}

void sub_29A156270(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_29A158498(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_29A1562B8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 5;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        sub_29A1567E8(v9, v9 + 4, a2 - 4);
        return;
      case 4uLL:

        sub_29A156AD8(v9, (v9 + 4), (v9 + 8), (a2 - 4));
        return;
      case 5uLL:

        sub_29A156CF8(v9, (v9 + 4), (v9 + 8), (v9 + 12), a2 - 4);
        return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        sub_29A156FAC(v9, a2);
      }

      else
      {

        sub_29A157148(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        sub_29A157B28(v9, a2, a2, a3);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = &v9[4 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      sub_29A1567E8(&v9[4 * (v12 >> 1)], v9, a2 - 4);
      if (a5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_29A1567E8(v9, &v9[4 * (v12 >> 1)], a2 - 4);
      sub_29A1567E8(v9 + 4, v14 - 4, a2 - 8);
      sub_29A1567E8(v9 + 8, &v9[4 * v13 + 4], a2 - 12);
      sub_29A1567E8(v14 - 4, v14, &v9[4 * v13 + 4]);
      v15 = *v9;
      v16 = v9[1];
      *v9 = *v14;
      *v14 = v15;
      *(&v28 + 7) = *(v9 + 23);
      *&v28 = v9[2];
      v17 = *(v9 + 31);
      v9[2] = 0;
      v9[3] = 0;
      v9[1] = 0;
      v18 = *(v14 + 1);
      v9[3] = v14[3];
      *(v9 + 1) = v18;
      v14[1] = v16;
      *(v14 + 23) = *(&v28 + 7);
      v14[2] = v28;
      *(v14 + 31) = v17;
      if (a5)
      {
        goto LABEL_19;
      }
    }

    v19 = *(v9 - 4);
    if (v19 >= *v9 && (*v9 < v19 || !pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(v9 - 3, v9 + 1)))
    {
      v9 = sub_29A1572B8(v9, a2);
      goto LABEL_24;
    }

LABEL_19:
    v20 = sub_29A157568(v9, a2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_22;
    }

    v22 = sub_29A157818(v9, v20);
    v9 = (v20 + 4);
    if (sub_29A157818((v20 + 4), a2))
    {
      a4 = -v11;
      a2 = v20;
      if (v22)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v22)
    {
LABEL_22:
      sub_29A1562B8(a1, v20, a3, -v11, a5 & 1);
      v9 = (v20 + 4);
LABEL_24:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v12 < 2)
  {
    return;
  }

  if (v12 != 2)
  {
    goto LABEL_10;
  }

  v23 = *(a2 - 4);
  v24 = *v9;
  if (v23 < *v9)
  {
LABEL_28:
    *v9 = v23;
    *(a2 - 4) = v24;
    v25 = v9[1];
    *(&v29 + 7) = *(v9 + 23);
    *&v29 = v9[2];
    v26 = *(v9 + 31);
    v9[2] = 0;
    v9[3] = 0;
    v9[1] = 0;
    v27 = *(a2 - 3);
    v9[3] = *(a2 - 1);
    *(v9 + 1) = v27;
    *(a2 - 3) = v25;
    *(a2 - 2) = v29;
    *(a2 - 9) = *(&v29 + 7);
    *(a2 - 1) = v26;
    return;
  }

  if (v24 >= v23 && pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(a2 - 3, v9 + 1))
  {
    v24 = *v9;
    v23 = *(a2 - 4);
    goto LABEL_28;
  }
}

BOOL sub_29A1567E8(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v6 = *a2;
  if (*a2 < *a1 || *a1 >= v6 && (v12 = pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(a2 + 1, a1 + 1), v6 = *a2, v12))
  {
    v7 = *a3;
    if (*a3 < v6)
    {
LABEL_3:
      v8 = *a1;
      *a1 = v7;
      *a3 = v8;
      v9 = a1[1];
      *v29 = a1[2];
      *&v29[7] = *(a1 + 23);
      v10 = *(a1 + 31);
      a1[2] = 0;
      a1[3] = 0;
      a1[1] = 0;
      v11 = a3[3];
      *(a1 + 1) = *(a3 + 1);
      a1[3] = v11;
LABEL_22:
      *(a3 + 23) = *&v29[7];
      a3[1] = v9;
      a3[2] = *v29;
      *(a3 + 31) = v10;
      return 1;
    }

    if (v6 >= v7)
    {
      if (pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(a3 + 1, a2 + 1))
      {
        v7 = *a3;
        goto LABEL_3;
      }

      v6 = *a2;
    }

    v23 = *a1;
    *a1 = v6;
    *a2 = v23;
    v24 = a1[1];
    *&v32 = a1[2];
    *(&v32 + 7) = *(a1 + 23);
    LOBYTE(v23) = *(a1 + 31);
    a1[2] = 0;
    a1[3] = 0;
    a1[1] = 0;
    v25 = a2[3];
    *(a1 + 1) = *(a2 + 1);
    a1[3] = v25;
    a2[1] = v24;
    a2[2] = v32;
    *(a2 + 23) = *(&v32 + 7);
    *(a2 + 31) = v23;
    v26 = *a3;
    v27 = *a2;
    if (*a3 >= *a2)
    {
      if (v27 < v26 || !pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(a3 + 1, a2 + 1))
      {
        return 1;
      }

      v27 = *a2;
      v26 = *a3;
    }

    *a2 = v26;
    *a3 = v27;
    v9 = a2[1];
    *v29 = a2[2];
    *&v29[7] = *(a2 + 23);
    v10 = *(a2 + 31);
    a2[2] = 0;
    a2[3] = 0;
    a2[1] = 0;
    v28 = a3[3];
    *(a2 + 1) = *(a3 + 1);
    a2[3] = v28;
    goto LABEL_22;
  }

  v13 = *a3;
  if (*a3 < v6)
  {
LABEL_7:
    *a2 = v13;
    *a3 = v6;
    v14 = a2[1];
    *&v30 = a2[2];
    *(&v30 + 7) = *(a2 + 23);
    v15 = *(a2 + 31);
    a2[3] = 0;
    a2[2] = 0;
    a2[1] = 0;
    v16 = a3[3];
    *(a2 + 1) = *(a3 + 1);
    a2[3] = v16;
    *(a3 + 23) = *(&v30 + 7);
    a3[1] = v14;
    a3[2] = v30;
    *(a3 + 31) = v15;
    v17 = *a2;
    v18 = *a1;
    if (*a2 >= *a1)
    {
      if (v18 < v17 || !pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(a2 + 1, a1 + 1))
      {
        return 1;
      }

      v18 = *a1;
      v17 = *a2;
    }

    *a1 = v17;
    *a2 = v18;
    v19 = a1[1];
    *&v31 = a1[2];
    *(&v31 + 7) = *(a1 + 23);
    v20 = *(a1 + 31);
    a1[2] = 0;
    a1[3] = 0;
    a1[1] = 0;
    v21 = a2[3];
    *(a1 + 1) = *(a2 + 1);
    a1[3] = v21;
    a2[1] = v19;
    *(a2 + 23) = *(&v31 + 7);
    a2[2] = v31;
    *(a2 + 31) = v20;
    return 1;
  }

  if (v6 < v13)
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(a3 + 1, a2 + 1);
  if (result)
  {
    v6 = *a2;
    v13 = *a3;
    goto LABEL_7;
  }

  return result;
}

BOOL sub_29A156AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_29A1567E8(a1, a2, a3);
  v9 = *a4;
  v10 = *a3;
  if (*a4 >= *a3)
  {
    if (v10 < v9)
    {
      return result;
    }

    result = pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<((a4 + 8), (a3 + 8));
    if (!result)
    {
      return result;
    }

    v10 = *a3;
    v9 = *a4;
  }

  *a3 = v9;
  *a4 = v10;
  v11 = *(a3 + 8);
  *&v24 = *(a3 + 16);
  *(&v24 + 7) = *(a3 + 23);
  v12 = *(a3 + 31);
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  v13 = *(a4 + 24);
  *(a3 + 8) = *(a4 + 8);
  *(a3 + 24) = v13;
  *(a4 + 23) = *(&v24 + 7);
  *(a4 + 8) = v11;
  *(a4 + 16) = v24;
  *(a4 + 31) = v12;
  v14 = *a3;
  v15 = *a2;
  if (*a3 >= *a2)
  {
    if (v15 < v14)
    {
      return result;
    }

    result = pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<((a3 + 8), (a2 + 8));
    if (!result)
    {
      return result;
    }

    v15 = *a2;
    v14 = *a3;
  }

  *a2 = v14;
  *a3 = v15;
  v16 = *(a2 + 8);
  *&v25 = *(a2 + 16);
  *(&v25 + 7) = *(a2 + 23);
  v17 = *(a2 + 31);
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  v18 = *(a3 + 24);
  *(a2 + 8) = *(a3 + 8);
  *(a2 + 24) = v18;
  *(a3 + 8) = v16;
  *(a3 + 23) = *(&v25 + 7);
  *(a3 + 16) = v25;
  *(a3 + 31) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
LABEL_4:
    *a1 = v19;
    *a2 = v20;
    v21 = *(a1 + 8);
    *&v26 = *(a1 + 16);
    *(&v26 + 7) = *(a1 + 23);
    v22 = *(a1 + 31);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v23 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v23;
    *(a2 + 8) = v21;
    *(a2 + 23) = *(&v26 + 7);
    *(a2 + 16) = v26;
    *(a2 + 31) = v22;
    return result;
  }

  if (v20 >= v19)
  {
    result = pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<((a2 + 8), (a1 + 8));
    if (result)
    {
      v20 = *a1;
      v19 = *a2;
      goto LABEL_4;
    }
  }

  return result;
}

BOOL sub_29A156CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  result = sub_29A156AD8(a1, a2, a3, a4);
  v11 = *a5;
  v12 = *a4;
  if (*a5 >= *a4)
  {
    if (v12 < v11)
    {
      return result;
    }

    result = pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(a5 + 1, (a4 + 8));
    if (!result)
    {
      return result;
    }

    v12 = *a4;
    v11 = *a5;
  }

  *a4 = v11;
  *a5 = v12;
  v13 = *(a4 + 8);
  *&v31 = *(a4 + 16);
  *(&v31 + 7) = *(a4 + 23);
  v14 = *(a4 + 31);
  *(a4 + 24) = 0;
  *(a4 + 16) = 0;
  *(a4 + 8) = 0;
  v15 = a5[3];
  *(a4 + 8) = *(a5 + 1);
  *(a4 + 24) = v15;
  *(a5 + 23) = *(&v31 + 7);
  a5[1] = v13;
  a5[2] = v31;
  *(a5 + 31) = v14;
  v16 = *a4;
  v17 = *a3;
  if (*a4 >= *a3)
  {
    if (v17 < v16)
    {
      return result;
    }

    result = pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<((a4 + 8), (a3 + 8));
    if (!result)
    {
      return result;
    }

    v17 = *a3;
    v16 = *a4;
  }

  *a3 = v16;
  *a4 = v17;
  v18 = *(a3 + 8);
  *&v32 = *(a3 + 16);
  *(&v32 + 7) = *(a3 + 23);
  v19 = *(a3 + 31);
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  v20 = *(a4 + 24);
  *(a3 + 8) = *(a4 + 8);
  *(a3 + 24) = v20;
  *(a4 + 8) = v18;
  *(a4 + 23) = *(&v32 + 7);
  *(a4 + 16) = v32;
  *(a4 + 31) = v19;
  v21 = *a3;
  v22 = *a2;
  if (*a3 >= *a2)
  {
    if (v22 < v21)
    {
      return result;
    }

    result = pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<((a3 + 8), (a2 + 8));
    if (!result)
    {
      return result;
    }

    v22 = *a2;
    v21 = *a3;
  }

  *a2 = v21;
  *a3 = v22;
  v23 = *(a2 + 8);
  *&v33 = *(a2 + 16);
  *(&v33 + 7) = *(a2 + 23);
  v24 = *(a2 + 31);
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  v25 = *(a3 + 24);
  *(a2 + 8) = *(a3 + 8);
  *(a2 + 24) = v25;
  *(a3 + 8) = v23;
  *(a3 + 23) = *(&v33 + 7);
  *(a3 + 16) = v33;
  *(a3 + 31) = v24;
  v26 = *a2;
  v27 = *a1;
  if (*a2 < *a1)
  {
LABEL_5:
    *a1 = v26;
    *a2 = v27;
    v28 = *(a1 + 8);
    *&v34 = *(a1 + 16);
    *(&v34 + 7) = *(a1 + 23);
    v29 = *(a1 + 31);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v30 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v30;
    *(a2 + 8) = v28;
    *(a2 + 23) = *(&v34 + 7);
    *(a2 + 16) = v34;
    *(a2 + 31) = v29;
    return result;
  }

  if (v27 >= v26)
  {
    result = pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<((a2 + 8), (a1 + 8));
    if (result)
    {
      v27 = *a1;
      v26 = *a2;
      goto LABEL_5;
    }
  }

  return result;
}

void sub_29A156FAC(unint64_t *a1, unint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = a1 + 4;
    if (a1 + 4 != a2)
    {
      v5 = 0;
      v6 = a1;
      while (1)
      {
        v7 = v6;
        v6 = v4;
        v8 = v7[4];
        if (v8 < *v7)
        {
          goto LABEL_5;
        }

        if (*v7 >= v8 && pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(v7 + 5, v7 + 1))
        {
          break;
        }

LABEL_21:
        v4 = v6 + 4;
        v5 += 32;
        if (v6 + 4 == a2)
        {
          return;
        }
      }

      v8 = *v6;
LABEL_5:
      v14 = v8;
      v15 = *(v7 + 5);
      v16 = v7[7];
      v7[5] = 0;
      v7[6] = 0;
      v7[7] = 0;
      for (i = v5; ; i -= 32)
      {
        v10 = a1 + i;
        *(a1 + i + 32) = *(a1 + i);
        if (*(a1 + i + 63) < 0)
        {
          operator delete(*(v10 + 5));
        }

        *(v10 + 40) = *(v10 + 8);
        *(v10 + 7) = *(v10 + 3);
        v10[31] = 0;
        v10[8] = 0;
        if (!i)
        {
          *a1 = v14;
          goto LABEL_20;
        }

        v11 = *(a1 + i - 32);
        if (v14 >= v11)
        {
          if (v11 < v14)
          {
            *(a1 + i) = v14;
            goto LABEL_20;
          }

          if (!pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(&v15, (a1 + i - 24)))
          {
            break;
          }
        }
      }

      v12 = *(a1 + i + 31);
      *(a1 + i) = v14;
      if (v12 < 0)
      {
        operator delete(*(a1 + i + 8));
      }

LABEL_20:
      v13 = a1 + i;
      *(v13 + 8) = v15;
      *(v13 + 3) = v16;
      goto LABEL_21;
    }
  }
}

void sub_29A15712C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A157148(unint64_t *a1, unint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    v4 = a1 + 4;
    if (a1 + 4 != a2)
    {
      for (i = a1 + 63; ; i += 32)
      {
        v6 = v3;
        v3 = v4;
        v7 = v6[4];
        if (v7 < *v6)
        {
          goto LABEL_5;
        }

        if (*v6 >= v7 && pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(v6 + 5, v6 + 1))
        {
          break;
        }

LABEL_19:
        v4 = v3 + 4;
        if (v3 + 4 == a2)
        {
          return;
        }
      }

      v7 = *v3;
LABEL_5:
      v12 = v7;
      v13 = *(v6 + 5);
      v14 = v6[7];
      v6[5] = 0;
      v6[6] = 0;
      v6[7] = 0;
      for (j = i; ; j -= 32)
      {
        *(j - 31) = *(j - 63);
        v9 = (j - 23);
        if (*j < 0)
        {
          operator delete(*v9);
        }

        *v9 = *(j - 55);
        *(j - 7) = *(j - 39);
        *(j - 32) = 0;
        *(j - 55) = 0;
        v10 = *(j - 95);
        if (v12 >= v10)
        {
          if (v10 < v12)
          {
            *(j - 63) = v12;
            goto LABEL_18;
          }

          if (!pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(&v13, j - 87))
          {
            break;
          }
        }
      }

      v11 = *(j - 32);
      *(j - 63) = v12;
      if (v11 < 0)
      {
        operator delete(*(j - 55));
      }

LABEL_18:
      *(j - 55) = v13;
      *(j - 39) = v14;
      goto LABEL_19;
    }
  }
}

void sub_29A15729C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_29A1572B8(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v31 = *MEMORY[0x29EDCA608];
  v27 = *a1;
  v4 = *a1;
  v28 = *(a1 + 1);
  v29 = a1[3];
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  v5 = *(a2 - 32);
  if (v4 >= v5)
  {
    if (v5 < v4 || !pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(&v28, (a2 - 24)))
    {
        ;
      }

      goto LABEL_16;
    }

    v4 = v27;
  }

  i = a1;
  while (1)
  {
    v8 = i[4];
    i += 4;
    v7 = v8;
    if (v4 < v8)
    {
      break;
    }

    if (v7 >= v4)
    {
      if (pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(&v28, i + 1))
      {
        break;
      }

      v4 = v27;
    }
  }

LABEL_16:
  if (i < v2)
  {
    do
    {
      do
      {
        v10 = *(v2 - 32);
        v2 -= 32;
        v9 = v10;
      }

      while (v27 < v10);
    }

    while (v9 >= v27 && pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(&v28, (v2 + 8)));
  }

  while (i < v2)
  {
    v11 = *i;
    *i = *v2;
    *v2 = v11;
    v12 = i[1];
    v13 = i[2];
    *&v30[7] = *(i + 23);
    *v30 = v13;
    LOBYTE(v11) = *(i + 31);
    i[2] = 0;
    i[3] = 0;
    i[1] = 0;
    v14 = *(v2 + 24);
    *(i + 1) = *(v2 + 8);
    i[3] = v14;
    v15 = *v30;
    *(v2 + 8) = v12;
    *(v2 + 16) = v15;
    *(v2 + 23) = *&v30[7];
    *(v2 + 31) = v11;
    v17 = i[4];
    i += 4;
    v16 = v17;
    v18 = v27;
    while (v18 >= v16)
    {
      if (v16 >= v18)
      {
        if (pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(&v28, i + 1))
        {
          goto LABEL_27;
        }

        v18 = v27;
      }

      v19 = i[4];
      i += 4;
      v16 = v19;
    }

    do
    {
      do
      {
LABEL_27:
        v21 = *(v2 - 32);
        v2 -= 32;
        v20 = v21;
      }

      while (v27 < v21);
    }

    while (v20 >= v27 && pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(&v28, (v2 + 8)));
  }

  if (i - 4 == a1)
  {
    v24 = *(i - 1);
    *(i - 4) = v27;
    v22 = (i - 3);
    if (v24 < 0)
    {
      operator delete(*v22);
    }
  }

  else
  {
    *a1 = *(i - 4);
    if (*(a1 + 31) < 0)
    {
      operator delete(a1[1]);
    }

    v22 = (i - 3);
    v23 = *(i - 3);
    a1[3] = *(i - 1);
    *(a1 + 1) = v23;
    *(i - 1) = 0;
    *(i - 24) = 0;
    *(i - 4) = v27;
  }

  v25 = v28;
  v22[2] = v29;
  *v22 = v25;
  return i;
}

void sub_29A157538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A157568(uint64_t *a1, unint64_t a2)
{
  v37 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v33 = *a1;
  v34 = *(a1 + 1);
  v35 = a1[3];
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v5 = a1;
  while (1)
  {
    do
    {
      v7 = v5[4];
      v5 += 4;
      v6 = v7;
    }

    while (v7 < v4);
    if (v4 < v6 || !pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(v5 + 1, &v34))
    {
      break;
    }

    v4 = v33;
  }

  if (v5 - 4 == a1)
  {
LABEL_20:
    if (v5 < a2)
    {
      do
      {
        v13 = *(a2 - 32);
        a2 -= 32;
        v12 = v13;
        if (v13 < v33)
        {
          break;
        }

        if (v33 < v12)
        {
          goto LABEL_20;
        }

        v14 = pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<((a2 + 8), &v34);
        v15 = v5 >= a2 || v14;
      }

      while ((v15 & 1) == 0);
    }
  }

  else
  {
    v9 = *(a2 - 32);
    a2 -= 32;
    v8 = v9;
    v10 = v33;
    while (v8 >= v10)
    {
      if (v10 >= v8)
      {
        if (pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<((a2 + 8), &v34))
        {
          break;
        }

        v10 = v33;
      }

      v11 = *(a2 - 32);
      a2 -= 32;
      v8 = v11;
    }
  }

  v16 = v5;
  if (v5 < a2)
  {
    v17 = a2;
    do
    {
      v18 = *v16;
      *v16 = *v17;
      *v17 = v18;
      v19 = v16[1];
      v20 = v16[2];
      *&v36[7] = *(v16 + 23);
      *v36 = v20;
      LOBYTE(v18) = *(v16 + 31);
      v16[2] = 0;
      v16[3] = 0;
      v16[1] = 0;
      v21 = *(v17 + 24);
      *(v16 + 1) = *(v17 + 8);
      v16[3] = v21;
      v22 = *v36;
      *(v17 + 8) = v19;
      *(v17 + 16) = v22;
      *(v17 + 23) = *&v36[7];
      *(v17 + 31) = v18;
      while (1)
      {
        do
        {
          v24 = v16[4];
          v16 += 4;
          v23 = v24;
          v25 = v33;
        }

        while (v24 < v33);
        if (v33 < v23)
        {
          break;
        }

        if (!pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(v16 + 1, &v34))
        {
          goto LABEL_31;
        }
      }

      do
      {
LABEL_28:
        v27 = *(v17 - 32);
        v17 -= 32;
        v26 = v27;
        if (v27 < v25)
        {
          goto LABEL_32;
        }
      }

      while (v25 < v26);
      if (!pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<((v17 + 8), &v34))
      {
LABEL_31:
        v25 = v33;
        goto LABEL_28;
      }

LABEL_32:
      ;
    }

    while (v16 < v17);
  }

  if (v16 - 4 == a1)
  {
    v30 = *(v16 - 1);
    *(v16 - 4) = v33;
    v28 = v16 - 3;
    if (v30 < 0)
    {
      operator delete(*v28);
    }
  }

  else
  {
    *a1 = *(v16 - 4);
    if (*(a1 + 31) < 0)
    {
      operator delete(a1[1]);
    }

    v28 = v16 - 3;
    v29 = *(v16 - 3);
    a1[3] = *(v16 - 1);
    *(a1 + 1) = v29;
    *(v16 - 1) = 0;
    *(v16 - 24) = 0;
    *(v16 - 4) = v33;
  }

  v31 = v34;
  v28[2] = v35;
  *v28 = v31;
  return v16 - 4;
}

void sub_29A1577EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A157818(uint64_t a1, unint64_t *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_29A1567E8(a1, (a1 + 32), a2 - 4);
        return 1;
      case 4:
        sub_29A156AD8(a1, a1 + 32, a1 + 64, (a2 - 4));
        return 1;
      case 5:
        sub_29A156CF8(a1, a1 + 32, a1 + 64, a1 + 96, a2 - 4);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 4);
      v6 = *a1;
      if (v5 >= *a1)
      {
        if (v6 < v5 || !pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(a2 - 3, (a1 + 8)))
        {
          return 1;
        }

        v6 = *a1;
        v5 = *(a2 - 4);
      }

      *a1 = v5;
      *(a2 - 4) = v6;
      v7 = *(a1 + 8);
      v21[0] = *(a1 + 16);
      *(v21 + 7) = *(a1 + 23);
      v8 = *(a1 + 31);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      v9 = *(a2 - 1);
      *(a1 + 8) = *(a2 - 3);
      *(a1 + 24) = v9;
      *(a2 - 9) = *(v21 + 7);
      *(a2 - 3) = v7;
      *(a2 - 2) = v21[0];
      *(a2 - 1) = v8;
      return 1;
    }
  }

  v10 = (a1 + 64);
  sub_29A1567E8(a1, (a1 + 32), (a1 + 64));
  v11 = (a1 + 96);
  if ((a1 + 96) == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v11;
    if (*v11 < *v10)
    {
      break;
    }

    if (*v10 >= v14 && pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(v11 + 1, v10 + 1))
    {
      v14 = *v11;
      break;
    }

LABEL_30:
    v10 = v11;
    v12 += 32;
    v11 += 4;
    if (v11 == a2)
    {
      return 1;
    }
  }

  v21[0] = v14;
  *&v21[1] = *(v11 + 1);
  v22 = v11[3];
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0;
  for (i = v12; ; i -= 32)
  {
    v16 = a1 + i;
    *(a1 + i + 96) = *(a1 + i + 64);
    if (*(a1 + i + 127) < 0)
    {
      operator delete(*(v16 + 104));
    }

    *(v16 + 104) = *(v16 + 72);
    *(v16 + 120) = *(v16 + 88);
    *(v16 + 95) = 0;
    *(v16 + 72) = 0;
    if (i == -64)
    {
      *a1 = v21[0];
      goto LABEL_29;
    }

    v17 = *(a1 + i + 32);
    if (v21[0] >= v17)
    {
      if (v17 < v21[0])
      {
        *(a1 + i + 64) = v21[0];
        goto LABEL_29;
      }

      if (!pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(&v21[1], (a1 + i + 40)))
      {
        break;
      }
    }
  }

  v18 = *(a1 + i + 95);
  *(a1 + i + 64) = v21[0];
  if (v18 < 0)
  {
    operator delete(*(a1 + i + 72));
  }

LABEL_29:
  v19 = a1 + i;
  *(v19 + 72) = *&v21[1];
  *(v19 + 88) = v22;
  if (++v13 != 8)
  {
    goto LABEL_30;
  }

  return v11 + 4 == a2;
}

uint64_t sub_29A157B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 32 * v9);
      do
      {
        sub_29A157CCC(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    i = v6;
    if (v6 != a3)
    {
      for (i = v6; i != a3; i += 32)
      {
        v13 = *i;
        v14 = *a1;
        if (*i >= *a1)
        {
          if (v14 < v13 || !pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<((i + 8), (a1 + 8)))
          {
            continue;
          }

          v13 = *i;
          v14 = *a1;
        }

        *i = v14;
        *a1 = v13;
        v15 = *(i + 8);
        *&v20 = *(i + 16);
        *(&v20 + 7) = *(i + 23);
        v16 = *(i + 31);
        *(i + 16) = 0;
        *(i + 24) = 0;
        *(i + 8) = 0;
        v17 = *(a1 + 24);
        *(i + 8) = *(a1 + 8);
        *(i + 24) = v17;
        *(a1 + 23) = *(&v20 + 7);
        *(a1 + 8) = v15;
        *(a1 + 16) = v20;
        *(a1 + 31) = v16;
        sub_29A157CCC(a1, a4, v8, a1);
      }
    }

    if (v8 >= 2)
    {
      do
      {
        sub_29A157EE4(a1, v6, a4, v8);
        v6 -= 32;
      }

      while (v8-- > 2);
    }

    return i;
  }

  return a3;
}

__n128 sub_29A157CCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 5)
    {
      v9 = (a4 - a1) >> 4;
      v10 = v9 + 1;
      v11 = (a1 + 32 * (v9 + 1));
      v12 = v9 + 2;
      if (v9 + 2 < a3)
      {
        v13 = v11[4];
        if (*v11 < v13 || v13 >= *v11 && pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(v11 + 1, v11 + 5))
        {
          v11 += 4;
          v10 = v12;
        }
      }

      v15 = *v5;
      if (*v11 >= *v5)
      {
        if (v15 >= *v11)
        {
          if (pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(v11 + 1, v5 + 1))
          {
            return result;
          }

          v15 = *v5;
        }

        v23 = v15;
        v24 = *(v5 + 1);
        v25 = v5[3];
        v5[1] = 0;
        v5[2] = 0;
        v5[3] = 0;
        while (1)
        {
          v16 = v11;
          *v5 = *v11;
          if (*(v5 + 31) < 0)
          {
            operator delete(v5[1]);
          }

          v17 = *(v11 + 1);
          v5[3] = v11[3];
          *(v5 + 1) = v17;
          *(v11 + 31) = 0;
          *(v11 + 8) = 0;
          if (v7 < v10)
          {
            *v11 = v23;
            goto LABEL_28;
          }

          v18 = 2 * v10;
          v10 = (2 * v10) | 1;
          v11 = (a1 + 32 * v10);
          v19 = v18 + 2;
          if (v18 + 2 < a3)
          {
            v20 = v11[4];
            if (*v11 < v20 || v20 >= *v11 && pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(v11 + 1, v11 + 5))
            {
              v11 += 4;
              v10 = v19;
            }
          }

          v21 = v23;
          if (*v11 < v23)
          {
            break;
          }

          v5 = v16;
          if (v23 >= *v11)
          {
            v5 = v16;
            if (pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(v11 + 1, &v24))
            {
              v21 = v23;
              break;
            }
          }
        }

        v22 = *(v16 + 31);
        *v16 = v21;
        if (v22 < 0)
        {
          operator delete(v16[1]);
        }

LABEL_28:
        result = v24;
        v16[3] = v25;
        *(v16 + 1) = result;
      }
    }
  }

  return result;
}

void sub_29A157EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A157EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    *v13 = *(a1 + 16);
    *&v13[7] = *(a1 + 23);
    v9 = *(a1 + 31);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v10 = sub_29A158038(a1, a3, a4);
    v11 = v10;
    if (v10 == (a2 - 32))
    {
      *v10 = v8;
      if (*(v10 + 31) < 0)
      {
        operator delete(v10[1]);
      }

      v11[1] = v7;
      v11[2] = *v13;
      *(v11 + 23) = *&v13[7];
      *(v11 + 31) = v9;
    }

    else
    {
      *v10 = *(a2 - 32);
      if (*(v10 + 31) < 0)
      {
        operator delete(v10[1]);
      }

      v12 = *(a2 - 24);
      v11[3] = *(a2 - 8);
      *(v11 + 1) = v12;
      *(a2 - 32) = v8;
      *(a2 - 24) = v7;
      *(a2 - 16) = *v13;
      *(a2 - 9) = *&v13[7];
      *(a2 - 1) = v9;
      sub_29A158120(a1, (v11 + 4), a3, (v11 - a1 + 32) >> 5);
    }
  }
}

void sub_29A158020(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A158038(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[4 * v5];
    v8 = v7 + 4;
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v12 = v7 + 8;
      v11 = v7[8];
      v13 = v7[4];
      if (v13 < v11 || v11 >= v13 && pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(v7 + 5, v7 + 9))
      {
        v8 = v12;
        v5 = v10;
      }
    }

    *a1 = *v8;
    if (*(a1 + 31) < 0)
    {
      operator delete(a1[1]);
    }

    v14 = *(v8 + 1);
    a1[3] = v8[3];
    *(a1 + 1) = v14;
    *(v8 + 31) = 0;
    *(v8 + 8) = 0;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

double sub_29A158120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 32 * (v4 >> 1));
    v10 = (a2 - 32);
    v9 = *(a2 - 32);
    if (*v8 >= v9)
    {
      if (v9 < *v8 || !pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(v8 + 1, (a2 - 24)))
      {
        return result;
      }

      v9 = *v10;
    }

    v16 = v9;
    v17 = *(a2 - 24);
    v18 = *(a2 - 8);
    *(a2 - 24) = 0;
    *(a2 - 16) = 0;
    *(a2 - 8) = 0;
    while (1)
    {
      v11 = v8;
      *v10 = *v8;
      if (*(v10 + 31) < 0)
      {
        operator delete(v10[1]);
      }

      v12 = *(v8 + 1);
      v10[3] = v8[3];
      *(v10 + 1) = v12;
      *(v8 + 31) = 0;
      *(v8 + 8) = 0;
      if (!v7)
      {
        v13 = v16;
LABEL_16:
        *v11 = v13;
        goto LABEL_17;
      }

      v7 = (v7 - 1) >> 1;
      v8 = (a1 + 32 * v7);
      v13 = v16;
      v10 = v11;
      if (*v8 >= v16)
      {
        if (v16 < *v8)
        {
          goto LABEL_16;
        }

        v10 = v11;
        if (!pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(v8 + 1, &v17))
        {
          break;
        }
      }
    }

    v14 = *(v11 + 31);
    *v11 = v16;
    if (v14 < 0)
    {
      operator delete(v11[1]);
    }

LABEL_17:
    result = *&v17;
    *(v11 + 1) = v17;
    v11[3] = v18;
  }

  return result;
}

void sub_29A158268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A158284(uint64_t **a1, void *a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A15831C(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A1583A4(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29A15831C(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void *sub_29A1583A4@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x50uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    result[6] = *(v8 + 2);
    *(result + 2) = v9;
  }

  v7[7] = 0;
  v7[8] = 0;
  v7[9] = 0;
  *(a3 + 16) = 1;
  return result;
}

void sub_29A15843C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A156270(v2 + 32);
    }

    operator delete(v2);
  }
}

void sub_29A158498(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 88;
        sub_29A158520(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A158520(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 64);
  sub_29A1559B4(&v3);
  v3 = (a2 + 40);
  sub_29A155930(&v3);
  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void sub_29A158580(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 88;
        sub_29A158520(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_29A1585EC(uint64_t *a1, uint64_t *a2, int *a3, int *a4, int *a5, char *a6, char *a7)
{
  v7 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v8 = v7 + 1;
  if ((v7 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_29A00C9A4();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v8)
  {
    v8 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v16 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v16 = v8;
  }

  v27 = a1;
  if (v16)
  {
    v17 = sub_29A1587D0(a1, v16);
  }

  else
  {
    v17 = 0;
  }

  v24 = v17;
  v25 = &v17[88 * v7];
  *(&v26 + 1) = &v17[88 * v16];
  sub_29A15876C(a1, v25, a2, a3, a4, a5, a6, a7);
  *&v26 = v25 + 88;
  v18 = a1[1];
  v19 = &v25[*a1 - v18];
  sub_29A15881C(a1, *a1, v18, v19);
  v20 = *a1;
  *a1 = v19;
  v21 = a1[2];
  v23 = v26;
  *(a1 + 1) = v26;
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v24 = v20;
  v25 = v20;
  sub_29A1589A4(&v24);
  return v23;
}

void sub_29A158758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1589A4(va);
  _Unwind_Resume(a1);
}

double sub_29A15876C(uint64_t a1, uint64_t a2, uint64_t *a3, int *a4, int *a5, int *a6, char *a7, char *a8)
{
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v11 = *a7;
  v12 = *a8;
  v13 = *a3;
  *a2 = *a3;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 33) = v12;
  result = 0.0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  return result;
}

void *sub_29A1587D0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x2E8BA2E8BA2E8BBLL)
  {
    sub_29A00C8B8();
  }

  return operator new(88 * a2);
}

uint64_t sub_29A15881C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *v7 = 0;
      v8 = *(v7 + 8);
      *(a4 + 18) = *(v7 + 18);
      *(a4 + 8) = v8;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = 0;
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 56) = *(v7 + 56);
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 80) = *(v7 + 80);
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      v7 += 88;
      a4 += 88;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      sub_29A158520(a1, v5);
      v5 += 88;
    }
  }

  return sub_29A158918(v10);
}

uint64_t sub_29A158918(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A158950(a1);
  }

  return a1;
}

void sub_29A158950(uint64_t *a1)
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
      v3 -= 88;
      sub_29A158520(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29A1589A4(void **a1)
{
  sub_29A1589D8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A1589D8(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 88;
    sub_29A158520(v4, i - 88);
  }
}

uint64_t sub_29A158A20(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || pxrInternal__aapl__pxrReserved__::TraceThreadId::operator<(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void sub_29A158AA4(void *a1, void *a2)
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

    v11 = a1;
    if (v6)
    {
      v7 = sub_29A00C9BC(a1, v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = &v7[8 * v2];
    v10 = &v7[8 * v6];
    *v9 = *a2;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceEventNode>::_AddRef();
  }

  sub_29A00C9A4();
}

void sub_29A158BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A158C60(va);
  _Unwind_Resume(a1);
}

void sub_29A158BB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    *a4 = *a2;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceEventNode>::_AddRef();
  }
}

void sub_29A158C3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A1536D0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A158C60(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != *(a1 + 8))
  {
    *(a1 + 16) = v2 - 8;
    sub_29A1536D0();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A158CB0(uint64_t *a1, uint64_t *a2, int *a3, int *a4, uint64_t *a5, char *a6, char *a7)
{
  v7 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v8 = v7 + 1;
  if ((v7 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_29A00C9A4();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v8)
  {
    v8 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v16 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v16 = v8;
  }

  v27 = a1;
  if (v16)
  {
    v17 = sub_29A1587D0(a1, v16);
  }

  else
  {
    v17 = 0;
  }

  v24 = v17;
  v25 = &v17[88 * v7];
  *(&v26 + 1) = &v17[88 * v16];
  sub_29A158E30(a1, v25, a2, a3, a4, a5, a6, a7);
  *&v26 = v25 + 88;
  v18 = a1[1];
  v19 = &v25[*a1 - v18];
  sub_29A15881C(a1, *a1, v18, v19);
  v20 = *a1;
  *a1 = v19;
  v21 = a1[2];
  v23 = v26;
  *(a1 + 1) = v26;
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v24 = v20;
  v25 = v20;
  sub_29A1589A4(&v24);
  return v23;
}

void sub_29A158E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1589A4(va);
  _Unwind_Resume(a1);
}

double sub_29A158E30(uint64_t a1, uint64_t a2, uint64_t *a3, int *a4, int *a5, uint64_t *a6, char *a7, char *a8)
{
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v11 = *a7;
  v12 = *a8;
  v13 = *a3;
  *a2 = *a3;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 33) = v12;
  result = 0.0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  return result;
}

uint64_t sub_29A158E94(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_29A00C9A4();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A1587D0(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[88 * v2];
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = &v7[88 * v6];
  *v8 = *a2;
  *a2 = 0;
  v9 = *(a2 + 8);
  *(v8 + 18) = *(a2 + 18);
  *(v8 + 8) = v9;
  *(v8 + 6) = 0;
  *(v8 + 7) = 0;
  *(v8 + 5) = 0;
  *(v8 + 40) = *(a2 + 40);
  *(v8 + 7) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v8 + 8) = 0;
  *(v8 + 9) = 0;
  *(v8 + 10) = 0;
  *(v8 + 4) = *(a2 + 64);
  *(v8 + 10) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *&v18 = v8 + 88;
  v10 = a1[1];
  v11 = &v8[*a1 - v10];
  sub_29A15881C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A1589A4(&v16);
  return v15;
}

void sub_29A159014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1589A4(va);
  _Unwind_Resume(a1);
}

void *sub_29A159028(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
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

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A159274(a1, v6, a4, &v22);
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
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A159250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    sub_29A1592FC(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A159274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v9 = **a3;
  result[2] = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29A1592FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v4 = (a2 + 24);
    sub_29A156170(&v4);
    v3 = *(a2 + 16);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_29A159368(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
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

  v20 = a1;
  if (v7)
  {
    v8 = sub_29A10CB10(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[32 * v2];
  v17 = v8;
  v18 = v9;
  *(&v19 + 1) = &v8[32 * v7];
  *v9 = *a2;
  v10 = *(a2 + 8);
  *(v9 + 3) = *(a2 + 24);
  *(v9 + 8) = v10;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *&v19 = v9 + 32;
  v11 = a1[1];
  v12 = &v9[*a1 - v11];
  sub_29A159488(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A1595C4(&v17);
  return v16;
}

void sub_29A159474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A1595C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A159488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 32;
    }
  }

  return sub_29A159544(v9);
}

uint64_t sub_29A159544(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A15957C(a1);
  }

  return a1;
}

void sub_29A15957C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 32;
  }
}

uint64_t sub_29A1595C4(uint64_t a1)
{
  sub_29A1595FC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A1595FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_29A159658(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A08E058(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[48 * v2];
  v15 = v7;
  v16 = v8;
  *(&v17 + 1) = &v7[48 * v6];
  *v8 = *a2;
  *(a2 + 8) = 0;
  sub_29A159790((v8 + 16), a2 + 16);
  *&v17 = v8 + 48;
  v9 = a1[1];
  v10 = &v8[*a1 - v9];
  sub_29A159890(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A159A10(&v15);
  return v14;
}

void sub_29A15977C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A159A10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A159790(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  sub_29A1597C8(a1, a2);
  return a1;
}

uint64_t sub_29A1597C8(uint64_t a1, uint64_t a2)
{
  result = sub_29A155A70(a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2A2040F08[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

__n128 sub_29A159830(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

double sub_29A159880(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

uint64_t sub_29A159890(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v6 = a2 + 16;
    do
    {
      *a4 = *(v6 - 16);
      *(v6 - 8) = 0;
      sub_29A159790((a4 + 1), v6);
      a4 = v15 + 3;
      v15 += 3;
      v7 = v6 + 32;
      v6 += 48;
    }

    while (v7 != a3);
    v13 = 1;
    if (a2 != a3)
    {
      v8 = a2 + 16;
      do
      {
        sub_29A155A70(v8);
        v9 = *(v8 - 8);
        if ((v9 & 7) != 0)
        {
          atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v10 = v8 + 32;
        v8 += 48;
      }

      while (v10 != a3);
    }
  }

  return sub_29A159974(v12);
}

uint64_t sub_29A159974(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A1599AC(a1);
  }

  return a1;
}

uint64_t sub_29A1599AC(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 48)
  {
    result = sub_29A155A70(v3 - 32);
    v5 = *(v3 - 40);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

uint64_t sub_29A159A10(uint64_t a1)
{
  sub_29A159A48(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A159A48(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      *(v4 + 16) = v2 - 48;
      result = sub_29A155A70(v2 - 32);
      v5 = *(v2 - 40);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_29A159AB4(__int128 *a1, uint64_t a2)
{
  v7 = *a1;
  *(a1 + 1) = 0;
  sub_29A159790(v8, (a1 + 1));
  *a1 = *a2;
  if (a2 != a1)
  {
    v4 = *(a1 + 1);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 1) = *(a2 + 8);
    *(a2 + 8) = 0;
  }

  sub_29A159BB0((a1 + 1), a2 + 16);
  *a2 = v7;
  if (&v7 != a2)
  {
    v5 = *(a2 + 8);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a2 + 8) = *(&v7 + 1);
    *(&v7 + 1) = 0;
  }

  sub_29A159BB0(a2 + 16, v8);
  result = sub_29A155A70(v8);
  if ((BYTE8(v7) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v7 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t sub_29A159BB0(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(result + 24) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_29A155A70(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_2A2040F38[v4])(v6);
    }
  }

  return result;
}

uint64_t *sub_29A159C20(uint64_t *result)
{
  v1 = *result;
  if (*(*result + 24))
  {
    result = sub_29A155A70(*result);
    *(v1 + 24) = 0;
  }

  return result;
}

uint64_t *sub_29A159C5C(uint64_t *result, _BYTE *a2, _BYTE *a3)
{
  v4 = *result;
  if (*(*result + 24) == 2)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_29A155A70(*result);
    *v4 = *a3;
    *(v4 + 24) = 2;
  }

  return result;
}

uint64_t *sub_29A159CB0(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 24) == 3)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_29A155A70(*result);
    *v4 = *a3;
    *(v4 + 24) = 3;
  }

  return result;
}

uint64_t *sub_29A159D04(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 24) == 4)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_29A155A70(*result);
    *v4 = *a3;
    *(v4 + 24) = 4;
  }

  return result;
}

double sub_29A159D58(uint64_t *a1, void *a2, double *a3)
{
  v4 = *a1;
  if (*(*a1 + 24) == 5)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    sub_29A155A70(*a1);
    result = *a3;
    *v4 = *a3;
    *(v4 + 24) = 5;
  }

  return result;
}

__n128 sub_29A159DAC(__n128 *a1, uint64_t a2, __n128 *a3)
{
  if (a1[1].n128_u32[2] == 1)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *a3;
    *(a2 + 16) = a3[1].n128_u64[0];
    *a2 = result;
    a3[1].n128_u8[7] = 0;
    a3->n128_u8[0] = 0;
  }

  else
  {
    sub_29A155A70(a1);
    result = *a3;
    a1[1].n128_u64[0] = a3[1].n128_u64[0];
    *a1 = result;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    a1[1].n128_u32[2] = 1;
  }

  return result;
}

uint64_t sub_29A159E38(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29A159EB0(a1, i + 2, i + 2);
  }

  return a1;
}

void *sub_29A159EB0(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v3 = v5;
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }
    }

    else
    {
      v3 = v5 & (v6 - 1);
    }

    v8 = *(*a1 + 8 * v3);
    if (v8)
    {
      result = *v8;
      if (*v8)
      {
        do
        {
          v10 = result[1];
          if (v10 == v5)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v10 >= v6)
              {
                v10 %= v6;
              }
            }

            else
            {
              v10 &= v6 - 1;
            }

            if (v10 != v3)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A15A0F0(a1, v5, a3, &v21);
  v11 = (*(a1 + 24) + 1);
  v12 = *(a1 + 32);
  if (!v6 || (v12 * v6) < v11)
  {
    v13 = 1;
    if (v6 >= 3)
    {
      v13 = (v6 & (v6 - 1)) != 0;
    }

    v14 = v13 | (2 * v6);
    v15 = vcvtps_u32_f32(v11 / v12);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    sub_29A019AA0(a1, v16);
    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }

      else
      {
        v3 = v5;
      }
    }

    else
    {
      v3 = (v6 - 1) & v5;
    }
  }

  v17 = *a1;
  v18 = *(*a1 + 8 * v3);
  if (v18)
  {
    result = v21;
    *v21 = *v18;
    *v18 = result;
  }

  else
  {
    v19 = v21;
    *v21 = *(a1 + 16);
    *(a1 + 16) = v19;
    *(v17 + 8 * v3) = a1 + 16;
    result = v21;
    if (*v21)
    {
      v20 = *(*v21 + 8);
      if ((v6 & (v6 - 1)) != 0)
      {
        if (v20 >= v6)
        {
          v20 %= v6;
        }
      }

      else
      {
        v20 &= v6 - 1;
      }

      *(*a1 + 8 * v20) = v21;
      result = v21;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A15A0D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A15A260(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29A15A0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29A15A160((v8 + 2), a3);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29A15A160(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_29A15A1EC((a1 + 8), a2[1], a2[2], (a2[2] - a2[1]) >> 4);
  return a1;
}

char *sub_29A15A1EC(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A0D0518(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29A15A244(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A15A260(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A156078(v2 + 2);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A15A2BC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29A15A334(a1, i + 2, i + 2);
  }

  return a1;
}

void *sub_29A15A334(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v3 = v5;
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }
    }

    else
    {
      v3 = v5 & (v6 - 1);
    }

    v8 = *(*a1 + 8 * v3);
    if (v8)
    {
      result = *v8;
      if (*v8)
      {
        do
        {
          v10 = result[1];
          if (v10 == v5)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v10 >= v6)
              {
                v10 %= v6;
              }
            }

            else
            {
              v10 &= v6 - 1;
            }

            if (v10 != v3)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A15A580(a1, v5, a3, &v21);
  v11 = (*(a1 + 24) + 1);
  v12 = *(a1 + 32);
  if (!v6 || (v12 * v6) < v11)
  {
    v13 = 1;
    if (v6 >= 3)
    {
      v13 = (v6 & (v6 - 1)) != 0;
    }

    v14 = v13 | (2 * v6);
    v15 = vcvtps_u32_f32(v11 / v12);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    sub_29A019AA0(a1, v16);
    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }

      else
      {
        v3 = v5;
      }
    }

    else
    {
      v3 = (v6 - 1) & v5;
    }
  }

  v17 = *a1;
  v18 = *(*a1 + 8 * v3);
  if (v18)
  {
    result = v21;
    *v21 = *v18;
    *v18 = result;
  }

  else
  {
    v19 = v21;
    *v21 = *(a1 + 16);
    *(a1 + 16) = v19;
    *(v17 + 8 * v3) = a1 + 16;
    result = v21;
    if (*v21)
    {
      v20 = *(*v21 + 8);
      if ((v6 & (v6 - 1)) != 0)
      {
        if (v20 >= v6)
        {
          v20 %= v6;
        }
      }

      else
      {
        v20 &= v6 - 1;
      }

      *(*a1 + 8 * v20) = v21;
      result = v21;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A15A55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    sub_29A1592FC(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A15A580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29A15A608(v8 + 2, a3);
  *(a4 + 16) = 1;
  return result;
}

void sub_29A15A5EC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A1592FC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A15A608(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  sub_29A15A694(a1 + 1, a2[1], a2[2], (a2[2] - a2[1]) >> 5);
  return a1;
}

void *sub_29A15A694(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A15A71C(result, a4);
    result = sub_29A15A758(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A15A6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A156170(&a9);
  _Unwind_Resume(a1);
}

char *sub_29A15A71C(void *a1, unint64_t a2)
{
  if (a2 >> 59)
  {
    sub_29A00C9A4();
  }

  result = sub_29A10CB10(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[32 * v4];
  return result;
}

void *sub_29A15A758(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 1);
      v8 = v4 + 1;
      if (*(v6 + 23) < 0)
      {
        sub_29A008D14(v8, *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v9 = *v6;
        v4[3] = *(v6 + 2);
        *v8 = v9;
      }

      v4 += 4;
      v14 = v4;
      v6 += 2;
    }

    while (v7 + 32 != a3);
  }

  v12 = 1;
  sub_29A159544(v11);
  return v4;
}

void pxrInternal__aapl__pxrReserved__::_TraceEventFromJSON(pxrInternal__aapl__pxrReserved__::JsValue *a1, uint64_t a2)
{
  v71 = *MEMORY[0x29EDCA608];
  if (!pxrInternal__aapl__pxrReserved__::JsValue::IsObject(a1))
  {
    return;
  }

  JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(a1);
  sub_29A008E78(&__p, "key");
  v5 = sub_29A15B3B0(JsObject, &__p);
  if (SHIBYTE(v69) < 0)
  {
    operator delete(__p);
  }

  sub_29A008E78(&__p, "category");
  v66 = sub_29A15B48C(JsObject, &__p);
  v67 = v6;
  if (SHIBYTE(v69) < 0)
  {
    operator delete(__p);
  }

  sub_29A008E78(&__p, "type");
  v7 = sub_29A15B3B0(JsObject, &__p);
  if (SHIBYTE(v69) < 0)
  {
    operator delete(__p);
  }

  sub_29A008E78(&__p, "ts");
  *&v8 = COERCE_DOUBLE(sub_29A15B584(JsObject, &__p));
  v9 = *&v8;
  v11 = v10;
  if (SHIBYTE(v69) < 0)
  {
    operator delete(__p);
  }

  LOBYTE(v64) = 0;
  v65 = 0;
  if (v11)
  {
    v64 = pxrInternal__aapl__pxrReserved__::ArchSecondsToTicks(v8, v9 / 1000000.0);
    v65 = 1;
  }

  if (!v5 || v67 != 1 || !v7)
  {
    return;
  }

  if (*(v7 + 23) < 0)
  {
    v15 = *(v7 + 8);
    if (v15 <= 4)
    {
      if (v15 == 3)
      {
        if (**v7 == 28229 && *(*v7 + 2) == 100)
        {
          if ((v11 & 1) == 0)
          {
            return;
          }

          goto LABEL_85;
        }
      }

      else if (v15 == 4 && **v7 == 1635017028)
      {
        goto LABEL_57;
      }
    }

    else
    {
      switch(v15)
      {
        case 5:
          if (**v7 == 1768383810 && *(*v7 + 4) == 110)
          {
            if ((v11 & 1) == 0)
            {
              return;
            }

LABEL_75:
            LODWORD(v55) = 0;
            sub_29A15D298(&__p);
            v58 = sub_29A15CFCC(*(a2 + 40) + 16, &__p, &__p) + 2;
            sub_29A15B66C(a2 + 128, &v55, &v58, &v64, &v66);
            goto LABEL_112;
          }

          break;
        case 8:
          if (**v7 == 0x6E617073656D6954)
          {
LABEL_94:
            sub_29A008E78(&__p, "start");
            v31 = sub_29A15B48C(JsObject, &__p);
            v33 = v32;
            v58 = v31;
            LOBYTE(v59) = v32;
            if (SHIBYTE(v69) < 0)
            {
              operator delete(__p);
            }

            sub_29A008E78(&__p, "end");
            v34 = sub_29A15B48C(JsObject, &__p);
            v36 = v35;
            v55 = v34;
            LOBYTE(v56) = v35;
            if (SHIBYTE(v69) < 0)
            {
              operator delete(__p);
            }

            if ((v33 & 1) == 0 || (v36 & 1) == 0)
            {
              return;
            }

            v63 = 0;
            sub_29A15D298(&__p);
            v62 = sub_29A15CFCC(*(a2 + 40) + 16, &__p, &__p) + 2;
            sub_29A15B9B8(a2 + 128, &v63, &v62, &v58, &v55, &v66);
LABEL_112:
            if ((LOBYTE(v70) & 7) != 0)
            {
              atomic_fetch_add_explicit((*&v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            return;
          }

          break;
        case 12:
          v16 = *v7;
          if (**v7 == 0x447265746E756F43 && *(*v7 + 8) == 1635019877)
          {
            goto LABEL_115;
          }

          v18 = *v16;
          v19 = *(v16 + 2);
          if (v18 == 0x567265746E756F43 && v19 == 1702194273)
          {
            goto LABEL_43;
          }

          break;
      }
    }

    if (*(v7 + 8) != 4)
    {
      return;
    }

    v7 = *v7;
    goto LABEL_107;
  }

  v12 = *(v7 + 23);
  if (v12 <= 4)
  {
    if (v12 != 3)
    {
      if (v12 != 4)
      {
        return;
      }

      if (*v7 == 1635017028)
      {
LABEL_57:
        if ((v11 & 1) == 0)
        {
          return;
        }

        sub_29A008E78(&__p, "data");
        LOBYTE(v58) = 0;
        v60 = 0;
        pxrInternal__aapl__pxrReserved__::JsFindValue(JsObject, &__p, &v58, &v55);
        if (v60 == 1 && v59)
        {
          sub_29A014BEC(v59);
        }

        if (SHIBYTE(v69) < 0)
        {
          operator delete(__p);
        }

        if (v57 != 1)
        {
          goto LABEL_143;
        }

        if (pxrInternal__aapl__pxrReserved__::JsValue::IsBool(&v55))
        {
          sub_29A15D298(&v58);
          v24 = sub_29A15CFCC(*(a2 + 40) + 16, &v58, &v58);
          Bool = pxrInternal__aapl__pxrReserved__::JsValue::GetBool(&v55);
          *&__p = v24 + 2;
          DWORD2(__p) = v66;
          WORD6(__p) = 1537;
          v69 = mach_absolute_time();
          LOBYTE(v70) = Bool;
          if ((v61 & 7) != 0)
          {
            atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else if (pxrInternal__aapl__pxrReserved__::JsValue::IsReal(&v55))
        {
          sub_29A15D298(&v58);
          v45 = sub_29A15CFCC(*(a2 + 40) + 16, &v58, &v58);
          Real = pxrInternal__aapl__pxrReserved__::JsValue::GetReal(&v55);
          *&__p = v45 + 2;
          DWORD2(__p) = v66;
          WORD6(__p) = 1540;
          v69 = mach_absolute_time();
          v70 = Real;
          if ((v61 & 7) != 0)
          {
            atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else if (pxrInternal__aapl__pxrReserved__::JsValue::IsUInt64(&v55))
        {
          sub_29A15D298(&v58);
          v47 = sub_29A15CFCC(*(a2 + 40) + 16, &v58, &v58);
          UInt64 = pxrInternal__aapl__pxrReserved__::JsValue::GetUInt64(&v55);
          *&__p = v47 + 2;
          DWORD2(__p) = v66;
          WORD6(__p) = 1539;
          v69 = mach_absolute_time();
          v70 = *&UInt64;
          if ((v61 & 7) != 0)
          {
            atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else if (pxrInternal__aapl__pxrReserved__::JsValue::IsInt(&v55))
        {
          sub_29A15D298(&v58);
          v49 = sub_29A15CFCC(*(a2 + 40) + 16, &v58, &v58);
          Int64 = pxrInternal__aapl__pxrReserved__::JsValue::GetInt64(&v55);
          *&__p = v49 + 2;
          DWORD2(__p) = v66;
          WORD6(__p) = 1538;
          v69 = mach_absolute_time();
          v70 = *&Int64;
          if ((v61 & 7) != 0)
          {
            atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if (!pxrInternal__aapl__pxrReserved__::JsValue::IsString(&v55))
          {
LABEL_143:
            if (v57 == 1 && v56)
            {
              sub_29A014BEC(v56);
            }

            return;
          }

          sub_29A15D298(&v58);
          v51 = sub_29A15CFCC(*(a2 + 40) + 16, &v58, &v58);
          String = pxrInternal__aapl__pxrReserved__::JsValue::GetString(&v55);
          if (*(String + 23) >= 0)
          {
            v53 = String;
          }

          else
          {
            v53 = *String;
          }

          v54 = sub_29A15E408((a2 + 56), v53);
          *&__p = v51 + 2;
          DWORD2(__p) = v66;
          WORD6(__p) = 1792;
          v69 = mach_absolute_time();
          v70 = *&v54;
          if ((v61 & 7) != 0)
          {
            atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        v69 = v64;
        sub_29A15BAE0(a2 + 128, &__p);
        goto LABEL_143;
      }

LABEL_107:
      v38 = bswap32(*v7);
      v39 = v38 >= 0x4D61726B;
      v40 = v38 > 0x4D61726B;
      v41 = !v39;
      if (((v40 == v41) & v11) == 0)
      {
        return;
      }

      LODWORD(v55) = 0;
      sub_29A15D298(&__p);
      v58 = sub_29A15CFCC(*(a2 + 40) + 16, &__p, &__p) + 2;
      sub_29A15B89C(a2 + 128, &v55, &v58, &v64, &v66);
      goto LABEL_112;
    }

    v29 = *v7 == 28229 && *(v7 + 2) == 100;
    if ((v29 & v11 & 1) == 0)
    {
      return;
    }

LABEL_85:
    LODWORD(v55) = 0;
    sub_29A15D298(&__p);
    v58 = sub_29A15CFCC(*(a2 + 40) + 16, &__p, &__p) + 2;
    sub_29A15B780(a2 + 128, &v55, &v58, &v64, &v66);
    goto LABEL_112;
  }

  if (v12 == 5)
  {
    v27 = *v7 == 1768383810 && *(v7 + 4) == 110;
    if ((v27 & v11 & 1) == 0)
    {
      return;
    }

    goto LABEL_75;
  }

  if (v12 == 8)
  {
    if (*v7 != 0x6E617073656D6954)
    {
      return;
    }

    goto LABEL_94;
  }

  if (v12 != 12)
  {
    return;
  }

  if (*v7 != 0x447265746E756F43 || *(v7 + 8) != 1635019877)
  {
    if (*v7 != 0x567265746E756F43 || *(v7 + 8) != 1702194273)
    {
      return;
    }

LABEL_43:
    sub_29A008E78(&__p, "value");
    v21 = sub_29A15B584(JsObject, &__p);
    v23 = v22;
    if (SHIBYTE(v69) < 0)
    {
      operator delete(__p);
    }

    if (v65 == 1 && (v23 & 1) != 0)
    {
      sub_29A15D298(&v58);
      *&__p = sub_29A15CFCC(*(a2 + 40) + 16, &v58, &v58) + 2;
      DWORD2(__p) = v66;
      BYTE13(__p) = 5;
      v69 = mach_absolute_time();
      v70 = *&v21;
      if ((v61 & 7) != 0)
      {
        atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

LABEL_49:
      v69 = v64;
      sub_29A15BAE0(a2 + 128, &__p);
      return;
    }

    return;
  }

LABEL_115:
  sub_29A008E78(&__p, "value");
  v42 = sub_29A15B584(JsObject, &__p);
  v44 = v43;
  if (SHIBYTE(v69) < 0)
  {
    operator delete(__p);
  }

  if (v65 == 1 && (v44 & 1) != 0)
  {
    sub_29A15D298(&v58);
    *&__p = sub_29A15CFCC(*(a2 + 40) + 16, &v58, &v58) + 2;
    DWORD2(__p) = v66;
    BYTE13(__p) = 4;
    v69 = mach_absolute_time();
    v70 = *&v42;
    if ((v61 & 7) != 0)
    {
      atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    goto LABEL_49;
  }
}

void sub_29A15B298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28)
{
  if (a11 == 1)
  {
    if (a10)
    {
      sub_29A014BEC(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29A15B3B0(uint64_t a1, uint64_t a2)
{
  LOBYTE(v4) = 0;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::JsFindValue(a1, a2, &v4, v7);
  if (v9 == 1 && pxrInternal__aapl__pxrReserved__::JsValue::IsString(v7))
  {
    String = pxrInternal__aapl__pxrReserved__::JsValue::GetString(v7);
  }

  else
  {
    String = 0;
  }

  if (v9 == 1 && v8)
  {
    sub_29A014BEC(v8);
  }

  if (v6 == 1 && v5)
  {
    sub_29A014BEC(v5);
  }

  return String;
}

void sub_29A15B448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, std::__shared_weak_count *a13, char a14)
{
  if (a14 == 1 && a13)
  {
    sub_29A014BEC(a13);
  }

  if (a11 == 1)
  {
    if (a10)
    {
      sub_29A014BEC(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29A15B48C(uint64_t a1, uint64_t a2)
{
  LOBYTE(v6) = 0;
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::JsFindValue(a1, a2, &v6, &v9);
  if (v11 == 1 && pxrInternal__aapl__pxrReserved__::JsValue::IsUInt64(&v9))
  {
    UInt64 = pxrInternal__aapl__pxrReserved__::JsValue::GetUInt64(&v9);
    v3 = UInt64 & 0xFFFFFFFFFFFFFF00;
    v4 = UInt64;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v11 == 1 && v10)
  {
    sub_29A014BEC(v10);
  }

  if (v8 == 1 && v7)
  {
    sub_29A014BEC(v7);
  }

  return v3 | v4;
}

void sub_29A15B540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, std::__shared_weak_count *a13, char a14)
{
  if (a14 == 1 && a13)
  {
    sub_29A014BEC(a13);
  }

  if (a11 == 1)
  {
    if (a10)
    {
      sub_29A014BEC(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A15B584(uint64_t a1, uint64_t a2)
{
  LOBYTE(v4) = 0;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::JsFindValue(a1, a2, &v4, &v7);
  if (v9 == 1 && pxrInternal__aapl__pxrReserved__::JsValue::IsReal(&v7))
  {
    Real = pxrInternal__aapl__pxrReserved__::JsValue::GetReal(&v7);
  }

  else
  {
    Real = 0.0;
  }

  if (v9 == 1 && v8)
  {
    sub_29A014BEC(v8);
  }

  if (v6 == 1 && v5)
  {
    sub_29A014BEC(v5);
  }

  return *&Real;
}

void sub_29A15B628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, std::__shared_weak_count *a13, char a14)
{
  if (a14 == 1 && a13)
  {
    sub_29A014BEC(a13);
  }

  if (a11 == 1)
  {
    if (a10)
    {
      sub_29A014BEC(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A15B66C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v9 >= v10)
  {
    v14 = (v9 - *a1) >> 5;
    v15 = v14 + 1;
    if ((v14 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v16 = v10 - *a1;
    if (v16 >> 4 > v15)
    {
      v15 = v16 >> 4;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFE0)
    {
      v17 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      v18 = sub_29A10CB10(a1, v17);
    }

    else
    {
      v18 = 0;
    }

    v19 = &v18[32 * v14];
    v20 = &v18[32 * v17];
    v21 = *a4;
    v22 = *a5;
    *v19 = *a3;
    *(v19 + 2) = v22;
    v19[13] = 0;
    *(v19 + 2) = v21;
    v13 = v19 + 32;
    v23 = *(a1 + 8) - *a1;
    v24 = &v19[-v23];
    memcpy(&v19[-v23], *a1, v23);
    v25 = *a1;
    *a1 = v24;
    *(a1 + 8) = v13;
    *(a1 + 16) = v20;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    v11 = *a4;
    v12 = *a5;
    *v9 = *a3;
    *(v9 + 8) = v12;
    *(v9 + 13) = 0;
    *(v9 + 16) = v11;
    v13 = (v9 + 32);
  }

  *(a1 + 8) = v13;
  return v13 - 32;
}

char *sub_29A15B780(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v9 >= v10)
  {
    v14 = (v9 - *a1) >> 5;
    v15 = v14 + 1;
    if ((v14 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v16 = v10 - *a1;
    if (v16 >> 4 > v15)
    {
      v15 = v16 >> 4;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFE0)
    {
      v17 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      v18 = sub_29A10CB10(a1, v17);
    }

    else
    {
      v18 = 0;
    }

    v19 = &v18[32 * v14];
    v20 = &v18[32 * v17];
    v21 = *a4;
    v22 = *a5;
    *v19 = *a3;
    *(v19 + 2) = v22;
    v19[13] = 1;
    *(v19 + 2) = v21;
    v13 = v19 + 32;
    v23 = *(a1 + 8) - *a1;
    v24 = &v19[-v23];
    memcpy(&v19[-v23], *a1, v23);
    v25 = *a1;
    *a1 = v24;
    *(a1 + 8) = v13;
    *(a1 + 16) = v20;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    v11 = *a4;
    v12 = *a5;
    *v9 = *a3;
    *(v9 + 8) = v12;
    *(v9 + 13) = 1;
    *(v9 + 16) = v11;
    v13 = (v9 + 32);
  }

  *(a1 + 8) = v13;
  return v13 - 32;
}

char *sub_29A15B89C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v9 >= v10)
  {
    v14 = (v9 - *a1) >> 5;
    v15 = v14 + 1;
    if ((v14 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v16 = v10 - *a1;
    if (v16 >> 4 > v15)
    {
      v15 = v16 >> 4;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFE0)
    {
      v17 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      v18 = sub_29A10CB10(a1, v17);
    }

    else
    {
      v18 = 0;
    }

    v19 = &v18[32 * v14];
    v20 = &v18[32 * v17];
    v21 = *a4;
    v22 = *a5;
    *v19 = *a3;
    *(v19 + 2) = v22;
    v19[13] = 3;
    *(v19 + 2) = v21;
    v13 = v19 + 32;
    v23 = *(a1 + 8) - *a1;
    v24 = &v19[-v23];
    memcpy(&v19[-v23], *a1, v23);
    v25 = *a1;
    *a1 = v24;
    *(a1 + 8) = v13;
    *(a1 + 16) = v20;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    v11 = *a4;
    v12 = *a5;
    *v9 = *a3;
    *(v9 + 8) = v12;
    *(v9 + 13) = 3;
    *(v9 + 16) = v11;
    v13 = (v9 + 32);
  }

  *(a1 + 8) = v13;
  return v13 - 32;
}

char *sub_29A15B9B8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  if (v11 >= v12)
  {
    v17 = (v11 - *a1) >> 5;
    v18 = v17 + 1;
    if ((v17 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v19 = v12 - *a1;
    if (v19 >> 4 > v18)
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

    if (v20)
    {
      v21 = sub_29A10CB10(a1, v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[32 * v17];
    v23 = &v21[32 * v20];
    v24 = *a4;
    v25 = *a5;
    v26 = *a6;
    *v22 = *a3;
    *(v22 + 2) = v26;
    v22[13] = 2;
    *(v22 + 2) = v25;
    *(v22 + 3) = v24;
    v16 = v22 + 32;
    v27 = *(a1 + 8) - *a1;
    v28 = &v22[-v27];
    memcpy(&v22[-v27], *a1, v27);
    v29 = *a1;
    *a1 = v28;
    *(a1 + 8) = v16;
    *(a1 + 16) = v23;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    v13 = *a4;
    v14 = *a5;
    v15 = *a6;
    *v11 = *a3;
    *(v11 + 8) = v15;
    *(v11 + 13) = 2;
    *(v11 + 16) = v14;
    *(v11 + 24) = v13;
    v16 = (v11 + 32);
  }

  *(a1 + 8) = v16;
  return v16 - 32;
}

_OWORD *sub_29A15BAE0(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_29A00C9A4();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = sub_29A10CB10(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[32 * v8];
    v14 = &v12[32 * v11];
    v15 = a2[1];
    *v13 = *a2;
    *(v13 + 1) = v15;
    v7 = v13 + 32;
    v16 = *(a1 + 8) - *a1;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v7;
    *(a1 + 16) = v14;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = v4 + 2;
  }

  *(a1 + 8) = v7;
  return v7 - 2;
}

void sub_29A15BCA8(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A15F538(va);
  sub_29A153364();
}

void sub_29A15BCD8()
{
  v0 = operator new(0x70uLL);
  sub_29A1542E4(&v1);
  sub_29A15D2F8(v0, &v1);
}

void pxrInternal__aapl__pxrReserved__::Trace_JSONSerialization::CollectionFromJSON(pxrInternal__aapl__pxrReserved__::Trace_JSONSerialization *this@<X0>, uint64_t ***a2@<X8>)
{
  v5 = *(this + 1);
  __p = *this;
  *&v155 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  BYTE8(v155) = 1;
  v6 = sub_29A15CDA4(&__p);
  if (BYTE8(v155) == 1 && v155)
  {
    sub_29A014BEC(v155);
  }

  if (v6)
  {
    sub_29A008E78(&__p, "traceEvents");
    v7 = sub_29A15CDFC(v6, &__p);
    if (SHIBYTE(v155) < 0)
    {
      operator delete(__p);
    }

    sub_29A008E78(&__p, "libTraceData");
    v8 = sub_29A15CF10(v6, &__p);
    if (SHIBYTE(v155) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v9 = *(this + 1);
    __p = *this;
    *&v155 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    BYTE8(v155) = 1;
    v7 = sub_29A15CEB8(&__p);
    if (BYTE8(v155) == 1 && v155)
    {
      sub_29A014BEC(v155);
    }

    v8 = 0;
  }

  v147 = 0;
  v148 = 0;
  v146 = &v147;
  if (v7)
  {
    v145 = v8;
    v152 = 0;
    v153 = 0;
    __dst = &v152;
    v10 = *v7;
    v11 = v7[1];
    if (*v7 != v11)
    {
      while (1)
      {
        v12 = *(v10 + 8);
        __p = *v10;
        *&v155 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
        }

        BYTE8(v155) = 1;
        v13 = sub_29A15CDA4(&__p);
        if (BYTE8(v155) == 1 && v155)
        {
          sub_29A014BEC(v155);
        }

        if (!v13)
        {
          goto LABEL_133;
        }

        sub_29A008E78(&__p, "tid");
        v14 = sub_29A15B3B0(v13, &__p);
        v15 = v14;
        if (SHIBYTE(v155) < 0)
        {
          operator delete(__p);
          if (v15)
          {
            goto LABEL_46;
          }
        }

        else if (v14)
        {
          goto LABEL_46;
        }

        sub_29A008E78(&__p, "tid");
        v18 = sub_29A15B48C(v13, &__p);
        v19 = v16;
        if (SHIBYTE(v155) < 0)
        {
          operator delete(__p);
          if ((v19 & 1) == 0)
          {
LABEL_45:
            v15 = 0;
            goto LABEL_46;
          }
        }

        else if ((v16 & 1) == 0)
        {
          goto LABEL_45;
        }

        v20 = v152;
        if (!v152)
        {
          goto LABEL_39;
        }

        v21 = &v152;
        do
        {
          v22 = *(v20 + 4);
          v23 = v22 >= v18;
          v24 = v22 < v18;
          if (v23)
          {
            v21 = v20;
          }

          v20 = *&v20[8 * v24];
        }

        while (v20);
        if (v21 == &v152 || v18 < v21[4])
        {
LABEL_39:
          pxrInternal__aapl__pxrReserved__::TfStringPrintf("%lld", v16, v17, v18);
          __p = v18;
          v155 = *v149;
          v156 = v150;
          v149[0] = 0;
          v149[1] = 0;
          v150 = 0;
          v21 = sub_29A15D394(&__dst, &__p, &__p);
          if (SHIBYTE(v156) < 0)
          {
            operator delete(v155);
          }

          if (SHIBYTE(v150) < 0)
          {
            operator delete(v149[0]);
          }
        }

        v15 = v21 + 5;
LABEL_46:
        sub_29A008E78(&__p, "ts");
        v25 = sub_29A15B584(v13, &__p);
        v27 = v26;
        if (SHIBYTE(v155) < 0)
        {
          operator delete(__p);
        }

        v28 = *&v25;
        if (v27)
        {
          v29 = 1;
        }

        else
        {
          sub_29A008E78(&__p, "ts");
          v30 = sub_29A15B48C(v13, &__p);
          v29 = v31;
          if (SHIBYTE(v155) < 0)
          {
            operator delete(__p);
          }

          if (v29)
          {
            v28 = v30;
          }
        }

        sub_29A008E78(&__p, "name");
        v32 = sub_29A15B3B0(v13, &__p);
        if (SHIBYTE(v155) < 0)
        {
          operator delete(__p);
        }

        sub_29A008E78(&__p, "ph");
        v33 = sub_29A15B3B0(v13, &__p);
        if (SHIBYTE(v155) < 0)
        {
          operator delete(__p);
        }

        sub_29A008E78(&__p, "libTraceCatId");
        v34 = sub_29A15B48C(v13, &__p);
        v36 = v35;
        if (SHIBYTE(v155) < 0)
        {
          operator delete(__p);
          if (!v15)
          {
            goto LABEL_133;
          }
        }

        else if (!v15)
        {
          goto LABEL_133;
        }

        if ((v29 & (v32 != 0)) != 1 || !v33)
        {
          goto LABEL_133;
        }

        if (v36)
        {
          v37 = v34;
        }

        else
        {
          v37 = 0;
        }

        v38 = *(v33 + 23);
        if (v38 < 0)
        {
          if (v33[1] != 1)
          {
            goto LABEL_133;
          }

          v39 = **v33;
        }

        else
        {
          if (v38 != 1)
          {
            goto LABEL_133;
          }

          v39 = *v33;
        }

        if (v39 <= 72)
        {
          if (v39 == 66)
          {
            __p = v15;
            v57 = sub_29A15F5B8(&v146, v15, &unk_29B4D6118, &__p);
            sub_29A15D298(&__p);
            v58 = sub_29A15CFCC(v57[12] + 16, &__p, &__p);
            if ((v156 & 7) != 0)
            {
              atomic_fetch_add_explicit((v156 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            __p = v15;
            v42 = sub_29A15F5B8(&v146, v15, &unk_29B4D6118, &__p);
            v43 = pxrInternal__aapl__pxrReserved__::ArchSecondsToTicks(v42, v28 / 1000000.0);
            v59 = v58 + 2;
            v45 = v42[24];
            v60 = v42[25];
            if (v45 >= v60)
            {
              v67 = v42[23];
              v68 = (v45 - v67) >> 5;
              v69 = v68 + 1;
              if ((v68 + 1) >> 59)
              {
                sub_29A00C9A4();
              }

              v70 = v60 - v67;
              if (v70 >> 4 > v69)
              {
                v69 = v70 >> 4;
              }

              if (v70 >= 0x7FFFFFFFFFFFFFE0)
              {
                v71 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v71 = v69;
              }

              if (v71)
              {
                v72 = sub_29A10CB10((v42 + 23), v71);
              }

              else
              {
                v72 = 0;
              }

              v65 = &v72[32 * v68];
              v66 = &v72[32 * v71];
              *v65 = v59;
              *(v65 + 2) = v37;
              v65[13] = 0;
              goto LABEL_130;
            }

            *v45 = v59;
            *(v45 + 8) = v37;
            *(v45 + 13) = 0;
            goto LABEL_98;
          }

          if (v39 == 69)
          {
            __p = v15;
            v47 = sub_29A15F5B8(&v146, v15, &unk_29B4D6118, &__p);
            sub_29A15D298(&__p);
            v48 = sub_29A15CFCC(v47[12] + 16, &__p, &__p);
            if ((v156 & 7) != 0)
            {
              atomic_fetch_add_explicit((v156 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            __p = v15;
            v42 = sub_29A15F5B8(&v146, v15, &unk_29B4D6118, &__p);
            v43 = pxrInternal__aapl__pxrReserved__::ArchSecondsToTicks(v42, v28 / 1000000.0);
            v49 = v48 + 2;
            v45 = v42[24];
            v50 = v42[25];
            if (v45 >= v50)
            {
              v73 = v42[23];
              v74 = (v45 - v73) >> 5;
              v75 = v74 + 1;
              if ((v74 + 1) >> 59)
              {
                sub_29A00C9A4();
              }

              v76 = v50 - v73;
              if (v76 >> 4 > v75)
              {
                v75 = v76 >> 4;
              }

              if (v76 >= 0x7FFFFFFFFFFFFFE0)
              {
                v77 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v77 = v75;
              }

              if (v77)
              {
                v78 = sub_29A10CB10((v42 + 23), v77);
              }

              else
              {
                v78 = 0;
              }

              v65 = &v78[32 * v74];
              v66 = &v78[32 * v77];
              *v65 = v49;
              *(v65 + 2) = v37;
              v65[13] = 1;
              goto LABEL_130;
            }

            *v45 = v49;
            *(v45 + 8) = v37;
            *(v45 + 13) = 1;
LABEL_98:
            v61 = v45 + 32;
            *(v45 + 16) = v43;
            goto LABEL_132;
          }
        }

        else if (v39 == 73 || v39 == 82 || v39 == 105)
        {
          __p = v15;
          v40 = sub_29A15F5B8(&v146, v15, &unk_29B4D6118, &__p);
          sub_29A15D298(&__p);
          v41 = sub_29A15CFCC(v40[12] + 16, &__p, &__p);
          if ((v156 & 7) != 0)
          {
            atomic_fetch_add_explicit((v156 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          __p = v15;
          v42 = sub_29A15F5B8(&v146, v15, &unk_29B4D6118, &__p);
          v43 = pxrInternal__aapl__pxrReserved__::ArchSecondsToTicks(v42, v28 / 1000000.0);
          v44 = v41 + 2;
          v45 = v42[24];
          v46 = v42[25];
          if (v45 < v46)
          {
            *v45 = v44;
            *(v45 + 8) = v37;
            *(v45 + 13) = 3;
            goto LABEL_98;
          }

          v51 = v42[23];
          v52 = (v45 - v51) >> 5;
          v53 = v52 + 1;
          if ((v52 + 1) >> 59)
          {
            sub_29A00C9A4();
          }

          v54 = v46 - v51;
          if (v54 >> 4 > v53)
          {
            v53 = v54 >> 4;
          }

          if (v54 >= 0x7FFFFFFFFFFFFFE0)
          {
            v55 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v55 = v53;
          }

          if (v55)
          {
            v56 = sub_29A10CB10((v42 + 23), v55);
          }

          else
          {
            v56 = 0;
          }

          v65 = &v56[32 * v52];
          v66 = &v56[32 * v55];
          *v65 = v44;
          *(v65 + 2) = v37;
          v65[13] = 3;
LABEL_130:
          *(v65 + 2) = v43;
          v61 = (v65 + 32);
          v83 = v42[23];
          v84 = v42[24] - v83;
          v85 = &v65[-v84];
          memcpy(&v65[-v84], v83, v84);
          v86 = v42[23];
          v42[23] = v85;
          v42[24] = v61;
          v42[25] = v66;
          if (v86)
          {
            operator delete(v86);
          }

LABEL_132:
          v42[24] = v61;
          goto LABEL_133;
        }

        if (v39 == 88)
        {
          sub_29A008E78(&__p, "dur");
          v63 = sub_29A15B584(v13, &__p);
          v64 = v62;
          if (SHIBYTE(v155) < 0)
          {
            operator delete(__p);
            if (v64)
            {
              goto LABEL_142;
            }
          }

          else if (v62)
          {
            goto LABEL_142;
          }

          sub_29A008E78(&__p, "dur");
          v79 = sub_29A15B48C(v13, &__p);
          v81 = v80;
          if (SHIBYTE(v155) < 0)
          {
            operator delete(__p);
          }

          if (v81)
          {
            v82 = v79;
LABEL_143:
            __p = v15;
            v92 = sub_29A15F5B8(&v146, v15, &unk_29B4D6118, &__p);
            sub_29A15D298(&__p);
            v93 = sub_29A15CFCC(v92[12] + 16, &__p, &__p);
            if ((v156 & 7) != 0)
            {
              atomic_fetch_add_explicit((v156 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            __p = v15;
            v94 = sub_29A15F5B8(&v146, v15, &unk_29B4D6118, &__p);
            v95 = v28 / 1000000.0;
            v96 = pxrInternal__aapl__pxrReserved__::ArchSecondsToTicks(v94, v95);
            v97 = pxrInternal__aapl__pxrReserved__::ArchSecondsToTicks(v96, v95);
            v98 = v93 + 2;
            v99 = v97 + pxrInternal__aapl__pxrReserved__::ArchSecondsToTicks(v97, v82 / 1000000.0);
            v100 = v94[24];
            v101 = v94[25];
            if (v100 >= v101)
            {
              v103 = v94[23];
              v104 = (v100 - v103) >> 5;
              v105 = v104 + 1;
              if ((v104 + 1) >> 59)
              {
                sub_29A00C9A4();
              }

              v106 = v101 - v103;
              if (v106 >> 4 > v105)
              {
                v105 = v106 >> 4;
              }

              if (v106 >= 0x7FFFFFFFFFFFFFE0)
              {
                v107 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v107 = v105;
              }

              if (v107)
              {
                v108 = sub_29A10CB10((v94 + 23), v107);
              }

              else
              {
                v108 = 0;
              }

              v109 = &v108[32 * v104];
              v110 = &v108[32 * v107];
              *v109 = v98;
              *(v109 + 2) = v37;
              v109[13] = 2;
              *(v109 + 2) = v99;
              *(v109 + 3) = v96;
              v102 = (v109 + 32);
              v111 = v94[23];
              v112 = v94[24] - v111;
              v113 = &v109[-v112];
              memcpy(&v109[-v112], v111, v112);
              v114 = v94[23];
              v94[23] = v113;
              v94[24] = v102;
              v94[25] = v110;
              if (v114)
              {
                operator delete(v114);
              }
            }

            else
            {
              *v100 = v98;
              *(v100 + 8) = v37;
              *(v100 + 13) = 2;
              v102 = v100 + 32;
              *(v100 + 16) = v99;
              *(v100 + 24) = v96;
            }

            v94[24] = v102;
            goto LABEL_133;
          }

          sub_29A008E78(&__p, "tdur");
          v63 = sub_29A15B584(v13, &__p);
          v88 = v87;
          if (SHIBYTE(v155) < 0)
          {
            operator delete(__p);
          }

          sub_29A008E78(&__p, "tdur");
          v89 = sub_29A15B48C(v13, &__p);
          v91 = v90;
          if (SHIBYTE(v155) < 0)
          {
            operator delete(__p);
          }

          if (v91)
          {
            v82 = v89;
            goto LABEL_143;
          }

          if (v88)
          {
LABEL_142:
            v82 = *&v63;
            goto LABEL_143;
          }
        }

LABEL_133:
        v10 += 16;
        if (v10 == v11)
        {
          v115 = v152;
          goto LABEL_160;
        }
      }
    }

    v115 = 0;
LABEL_160:
    sub_29A15D468(&__dst, v115);
    v8 = v145;
  }

  if (v8)
  {
    sub_29A008E78(&__p, "threadEvents");
    v116 = sub_29A15CDFC(v8, &__p);
    v117 = v116;
    if (SHIBYTE(v155) < 0)
    {
      operator delete(__p);
      if (!v117)
      {
        goto LABEL_184;
      }
    }

    else if (!v116)
    {
      goto LABEL_184;
    }

    v118 = *v117;
    v119 = v117[1];
    if (*v117 == v119)
    {
      goto LABEL_184;
    }

    do
    {
      v120 = *(v118 + 8);
      __p = *v118;
      *&v155 = v120;
      if (v120)
      {
        atomic_fetch_add_explicit((v120 + 8), 1uLL, memory_order_relaxed);
      }

      BYTE8(v155) = 1;
      v121 = sub_29A15CDA4(&__p);
      if (BYTE8(v155) == 1 && v155)
      {
        sub_29A014BEC(v155);
      }

      if (!v121)
      {
        goto LABEL_183;
      }

      sub_29A008E78(&__p, "thread");
      v122 = sub_29A15B3B0(v121, &__p);
      if (SHIBYTE(v155) < 0)
      {
        operator delete(__p);
      }

      sub_29A008E78(&__p, "events");
      v123 = sub_29A15CDFC(v121, &__p);
      if (SHIBYTE(v155) < 0)
      {
        operator delete(__p);
        if (v122)
        {
LABEL_179:
          if (v123)
          {
            v124 = *v123;
            v125 = *(v123 + 8);
            while (v124 != v125)
            {
              __p = v122;
              v126 = sub_29A15F5B8(&v146, v122, &unk_29B4D6118, &__p);
              pxrInternal__aapl__pxrReserved__::_TraceEventFromJSON(v124, (v126 + 7));
              v124 = (v124 + 16);
            }
          }
        }
      }

      else if (v122)
      {
        goto LABEL_179;
      }

LABEL_183:
      v118 += 16;
    }

    while (v118 != v119);
  }

LABEL_184:
  if (v148)
  {
    sub_29A0ECEEC(&__p, "Trace", "TraceCollection");
    v127 = malloc(0x18uLL);
    if (__p)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v155, __p);
    }

    v127[2] = 0;
    v127[1] = 0;
    *v127 = (v127 + 1);
    *a2 = v127;
    v128 = v146;
    if (v146 != &v147)
    {
      do
      {
        v129 = *a2;
        pxrInternal__aapl__pxrReserved__::TraceThreadId::TraceThreadId(&__dst, v128 + 2);
        v131 = *(v128 + 9);
        if (v131)
        {
          v131 = *v131;
        }

        v132 = *(v128 + 8);
        if (v132)
        {
          v133 = v132 + 4;
        }

        else
        {
          v133 = 0;
        }

        if (v133 != v131)
        {
          __p = "trace/jsonSerialization.cpp";
          *&v155 = "_ConstructEventList";
          *(&v155 + 1) = 544;
          v156 = "std::unique_ptr<TraceEventList> pxrInternal__aapl__pxrReserved__::_ConstructEventList(EventListConstructionData &)";
          v157 = 0;
          v158 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(&__p, "Failed axiom: ' %s '", v130, "data.eventList.IsEmpty()");
        }

        v134 = *(v128 + 23);
        v135 = *(v128 + 24);
        v136 = 126 - 2 * __clz((v135 - v134) >> 5);
        if (v135 == v134)
        {
          v137 = 0;
        }

        else
        {
          v137 = v136;
        }

        sub_29A15D4CC(v134, v135, v137, 1);
        v138 = *(v128 + 23);
        v139 = *(v128 + 24);
        if (v138 != v139)
        {
          do
          {
            sub_29A15E300((v128 + 56), v138);
            v138 += 2;
          }

          while (v138 != v139);
          v138 = *(v128 + 23);
        }

        *(v128 + 24) = v138;
        v140 = operator new(0x80uLL);
        sub_29A15E358(v140, v128 + 56);
        v149[0] = v140;
        pxrInternal__aapl__pxrReserved__::TraceCollection::AddToCollection(v129, &__dst, v149);
        v141 = v149[0];
        v149[0] = 0;
        if (v141)
        {
          sub_29A15FA78(v149, v141);
        }

        if (SHIBYTE(v153) < 0)
        {
          operator delete(__dst);
        }

        v142 = *(v128 + 1);
        if (v142)
        {
          do
          {
            v143 = v142;
            v142 = *v142;
          }

          while (v142);
        }

        else
        {
          do
          {
            v143 = *(v128 + 2);
            v144 = *v143 == v128;
            v128 = v143;
          }

          while (!v144);
        }

        v128 = v143;
      }

      while (v143 != &v147);
    }
  }

  else
  {
    *a2 = 0;
  }

  sub_29A15FAC8(&v146, v147);
}