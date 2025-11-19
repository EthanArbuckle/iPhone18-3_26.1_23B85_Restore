void *sub_22EEA2CC0(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_22EEA2EF4(void ***a1)
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
        v4 -= 112;
        sub_22EEA3454(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_22EEA2F7C(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *(v4 + 16) = *(a2 + 2);
  *v4 = v5;
  result = sub_22EEA31C8(v4 + 24, a2 + 24);
  v7 = a2[4];
  *(v4 + 80) = *(a2 + 10);
  *(v4 + 64) = v7;
  if (*(a2 + 111) < 0)
  {
    result = sub_22EEA3240((v4 + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v8 = *(a2 + 88);
    *(v4 + 104) = *(a2 + 13);
    *(v4 + 88) = v8;
  }

  *(a1 + 8) = v4 + 112;
  return result;
}

void sub_22EEA3008(_Unwind_Exception *a1)
{
  sub_22EE9EB68(v2 + 24);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

uint64_t sub_22EEA3028(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_22EEA32E4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_22EEA32FC(a1, v6);
  }

  v7 = 112 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  sub_22EEA31C8(v7 + 24, a2 + 24);
  v9 = a2[4];
  *(v7 + 80) = *(a2 + 10);
  *(v7 + 64) = v9;
  if (*(a2 + 111) < 0)
  {
    sub_22EEA3240((v7 + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v10 = *(a2 + 88);
    *(v7 + 104) = *(a2 + 13);
    *(v7 + 88) = v10;
  }

  *&v19 = v19 + 112;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  sub_22EEA3358(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_22EEA3524(&v17);
  return v16;
}

void sub_22EEA31A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_22EE9EB68(v4 + 24);
  sub_22EEA3524(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22EEA31C8(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_22EE9F1DC(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_22EEA2A94(a1, i + 2);
  }

  return a1;
}

void *sub_22EEA3240(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_22EEA215C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_22EEA32FC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_22EE9F1A8();
}

uint64_t sub_22EEA3358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v17 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  v15 = 0;
  if (a2 == a3)
  {
    v15 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 24;
    do
    {
      v9 = *(v8 - 24);
      *(v4 + 16) = *(v8 - 8);
      *v4 = v9;
      sub_22EEA09D4(v4 + 24, v8);
      v10 = *(v8 + 40);
      *(v4 + 80) = *(v8 + 56);
      *(v4 + 64) = v10;
      v11 = *(v8 + 64);
      *(v4 + 104) = *(v8 + 80);
      *(v4 + 88) = v11;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 64) = 0;
      v4 = v17 + 112;
      v17 += 112;
      v12 = v8 + 88;
      v8 += 112;
    }

    while (v12 != a3);
    v15 = 1;
    while (v6 != a3)
    {
      sub_22EEA3454(a1, v6);
      v6 += 112;
    }
  }

  return sub_22EEA3498(v14);
}

uint64_t sub_22EEA3454(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 111) < 0)
  {
    operator delete(*(a2 + 88));
  }

  return sub_22EE9EB68(a2 + 24);
}

uint64_t sub_22EEA3498(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_22EEA34D0(a1);
  }

  return a1;
}

uint64_t *sub_22EEA34D0(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 112;
      result = sub_22EEA3454(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **sub_22EEA3524(void **a1)
{
  sub_22EEA3558(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_22EEA3558(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 32);
      *(v3 + 16) = v1 - 112;
      result = sub_22EEA3454(v4, v1 - 112);
      v1 = *(v3 + 16);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_22EEA35A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_22EEA3720(a1);
    if (a4 <= 0x249249249249249)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4)) >= 0x124924924924924)
      {
        v10 = 0x249249249249249;
      }

      else
      {
        v10 = v9;
      }

      sub_22EEA378C(a1, v10);
    }

    sub_22EEA32E4();
  }

  v11 = *(a1 + 8) - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v11 >> 4) >= a4)
  {
    result = sub_22EEA38E0(&v17, a2, a3, v8);
    v14 = v13;
    v15 = *(a1 + 8);
    if (v15 != v13)
    {
      do
      {
        v15 -= 112;
        result = sub_22EEA3454(a1, v15);
      }

      while (v15 != v14);
    }

    *(a1 + 8) = v14;
  }

  else
  {
    sub_22EEA38E0(&v16, a2, a2 + v11, v8);
    result = sub_22EEA37DC(a1, a2 + v11, a3, *(a1 + 8));
    *(a1 + 8) = result;
  }

  return result;
}

void sub_22EEA3720(void **a1)
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
        v3 -= 112;
        sub_22EEA3454(a1, v3);
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

void sub_22EEA378C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_22EEA32FC(a1, a2);
  }

  sub_22EEA32E4();
}

uint64_t sub_22EEA37DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 88);
    do
    {
      v7 = *(v6 - 88);
      *(v4 + 16) = *(v6 - 9);
      *v4 = v7;
      sub_22EEA31C8(v4 + 24, (v6 - 4));
      v8 = v6 - 88;
      v9 = *(v6 - 24);
      *(v4 + 80) = *(v6 - 1);
      *(v4 + 64) = v9;
      if (*(v6 + 23) < 0)
      {
        sub_22EEA3240((v4 + 88), *v6, *(v6 + 1));
      }

      else
      {
        v10 = *v6;
        *(v4 + 104) = *(v6 + 2);
        *(v4 + 88) = v10;
      }

      v4 = v15 + 112;
      v15 += 112;
      v6 += 7;
    }

    while (v8 + 112 != a3);
  }

  v13 = 1;
  sub_22EEA3498(v12);
  return v4;
}

void sub_22EEA38BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22EE9EB68(v9 + 24);
  sub_22EEA3498(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_22EEA38E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a2 + 56;
  do
  {
    v7 = v6 - 56;
    v8 = *(v6 - 56);
    *(a4 + 16) = *(v6 - 40);
    *a4 = v8;
    if (a4 != v6 - 56)
    {
      *(a4 + 56) = *v6;
      sub_22EEA1924((a4 + 24), *(v6 - 16), 0);
    }

    v9 = *(v6 + 8);
    *(a4 + 80) = *(v6 + 24);
    *(a4 + 64) = v9;
    std::string::operator=((a4 + 88), (v6 + 32));
    a4 += 112;
    v6 += 112;
  }

  while (v7 + 112 != v5);
  return v5;
}

void *sub_22EEA398C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_22EEA3BF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22EEA3C0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22EEA3C0C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_22EE9EB68(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

const unsigned __int8 *sub_22EEA3C58(void *a1, const unsigned __int8 *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  uuid_copy(dst, a2);
  v4 = (*dst + 8) ^ *dst;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = (*dst + 8) ^ *dst;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = *(v10 + 1);
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (uuid_compare(v10 + 16, a2))
  {
    goto LABEL_17;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_22EEA3EF4(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v48 = a2;
  v49 = result;
LABEL_2:
  v9 = 1 - a4;
  v47 = a5;
  while (1)
  {
    v10 = v7 - v8;
    v11 = 0x6DB6DB6DB6DB6DB7 * (v7 - v8);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v42 = *a3;
        v48 = v7 - 7;
        result = (v42)();
        if (result)
        {
          v43 = &v49;
          v44 = &v48;
          return sub_22EE9FB18(v43, v44);
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v48 = v7 - 7;
      return sub_22EEA45B4(v8, v8 + 7, v8 + 14, v7 - 7, a3);
    }

    if (v11 == 5)
    {
      v48 = v7 - 7;
      v53 = v8 + 7;
      v54 = v8;
      v51 = v8 + 21;
      v52 = v8 + 14;
      v50 = v7 - 7;
      sub_22EEA45B4(v8, v8 + 7, v8 + 14, v8 + 21, a3);
      result = (*a3)(v7 - 7, v8 + 21);
      if (result)
      {
        sub_22EE9FB18(&v51, &v50);
        result = (*a3)(v51, v8 + 14);
        if (result)
        {
          sub_22EE9FB18(&v52, &v51);
          result = (*a3)(v52, v8 + 7);
          if (result)
          {
            sub_22EE9FB18(&v53, &v52);
            result = (*a3)(v53, v8);
            goto LABEL_92;
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v10 <= 2687)
    {
      if (a5)
      {
        return sub_22EEA46F4(v8, v7, a3);
      }

      else
      {
        return sub_22EEA4904(v8, v7, a3);
      }
    }

    if (v9 == 1)
    {
      if (v8 != v7)
      {
        return sub_22EEA5494(v8, v7, v7, a3);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = &v8[7 * (v11 >> 1)];
    v14 = v7 - 7;
    if (v10 < 0x3801)
    {
      v53 = v8;
      v54 = &v8[7 * (v11 >> 1)];
      v52 = v14;
      v18 = (*a3)(v8, v54);
      v19 = (*a3)(v14, v8);
      if (v18)
      {
        if (v19)
        {
          v20 = &v54;
          goto LABEL_37;
        }

        sub_22EE9FB18(&v54, &v53);
        if ((*a3)(v52, v53))
        {
          v20 = &v53;
LABEL_37:
          v22 = &v52;
LABEL_38:
          sub_22EE9FB18(v20, v22);
        }
      }

      else if (v19)
      {
        sub_22EE9FB18(&v53, &v52);
        if ((*a3)(v53, v54))
        {
          v20 = &v54;
          v22 = &v53;
          goto LABEL_38;
        }
      }

      if (a5)
      {
        goto LABEL_40;
      }

      goto LABEL_65;
    }

    v53 = &v8[7 * (v11 >> 1)];
    v54 = v8;
    v52 = v14;
    v15 = (*a3)(v53, v8);
    v16 = (*a3)(v14, v13);
    if (v15)
    {
      if (v16)
      {
        v17 = &v54;
      }

      else
      {
        sub_22EE9FB18(&v54, &v53);
        if (!(*a3)(v52, v53))
        {
          goto LABEL_29;
        }

        v17 = &v53;
      }

      v21 = &v52;
      goto LABEL_28;
    }

    if (v16)
    {
      sub_22EE9FB18(&v53, &v52);
      if ((*a3)(v53, v54))
      {
        v17 = &v54;
        v21 = &v53;
LABEL_28:
        sub_22EE9FB18(v17, v21);
      }
    }

LABEL_29:
    v23 = &v49[7 * v12 - 7];
    v53 = v23;
    v54 = v49 + 7;
    v52 = v48 - 14;
    v24 = (*a3)(v23);
    v25 = (*a3)(v48 - 14, v23);
    if (v24)
    {
      if (v25)
      {
        v26 = &v54;
      }

      else
      {
        sub_22EE9FB18(&v54, &v53);
        if (!(*a3)(v52, v53))
        {
          goto LABEL_45;
        }

        v26 = &v53;
      }

      v27 = &v52;
      goto LABEL_44;
    }

    if (v25)
    {
      sub_22EE9FB18(&v53, &v52);
      if ((*a3)(v53, v54))
      {
        v26 = &v54;
        v27 = &v53;
LABEL_44:
        sub_22EE9FB18(v26, v27);
      }
    }

LABEL_45:
    v28 = &v49[7 * v12 + 7];
    v53 = v28;
    v54 = v49 + 14;
    v52 = v48 - 21;
    v29 = (*a3)(v28);
    v30 = (*a3)(v48 - 21, v28);
    if (v29)
    {
      if (v30)
      {
        sub_22EE9FB18(&v54, &v52);
        goto LABEL_54;
      }

      sub_22EE9FB18(&v54, &v53);
      if ((*a3)(v52, v53))
      {
        v31 = &v53;
        v32 = &v52;
        goto LABEL_53;
      }
    }

    else if (v30)
    {
      sub_22EE9FB18(&v53, &v52);
      if ((*a3)(v53, v54))
      {
        v31 = &v54;
        v32 = &v53;
LABEL_53:
        sub_22EE9FB18(v31, v32);
      }
    }

LABEL_54:
    v33 = &v49[7 * v12];
    v34 = &v49[7 * v12 + 7];
    v53 = v33;
    v54 = &v49[7 * v12 - 7];
    v52 = v34;
    v35 = (*a3)(v33);
    v36 = (*a3)(v34, v33);
    if (v35)
    {
      a5 = v47;
      if (v36)
      {
        v37 = &v54;
      }

      else
      {
        sub_22EE9FB18(&v54, &v53);
        if (!(*a3)(v52, v53))
        {
          goto LABEL_64;
        }

        v37 = &v53;
      }

      v38 = &v52;
      goto LABEL_63;
    }

    a5 = v47;
    if (v36)
    {
      sub_22EE9FB18(&v53, &v52);
      if ((*a3)(v53, v54))
      {
        v37 = &v54;
        v38 = &v53;
LABEL_63:
        sub_22EE9FB18(v37, v38);
      }
    }

LABEL_64:
    v54 = &v49[7 * v12];
    sub_22EE9FB18(&v49, &v54);
    if (a5)
    {
LABEL_40:
      v7 = v48;
      goto LABEL_66;
    }

LABEL_65:
    v7 = v48;
    if (((*a3)(v49 - 7) & 1) == 0)
    {
      result = sub_22EEA4AF4(v49, v48, a3);
      v8 = result;
      goto LABEL_75;
    }

LABEL_66:
    v39 = sub_22EEA4D88(v49, v7, a3);
    if ((v40 & 1) == 0)
    {
      goto LABEL_73;
    }

    v41 = sub_22EEA5018(v49, v39, a3);
    v8 = v39 + 7;
    result = sub_22EEA5018(v39 + 7, v7, a3);
    if (result)
    {
      if (v41)
      {
        return result;
      }

      v48 = v39;
      v8 = v49;
      v7 = v39;
    }

    else
    {
      if (!v41)
      {
LABEL_73:
        result = sub_22EEA3EF4(v49, v39, a3, -v9, a5 & 1);
        v8 = v39 + 7;
LABEL_75:
        a5 = 0;
        v49 = v8;
        a4 = -v9;
        goto LABEL_2;
      }

      v49 = v39 + 7;
    }

    ++v9;
  }

  v45 = v8 + 7;
  v48 = v7 - 7;
  v53 = v8 + 7;
  v54 = v8;
  v52 = v7 - 7;
  v46 = (*a3)(v8 + 7, v8);
  result = (*a3)(v7 - 7, v45);
  if (v46)
  {
    if (result)
    {
      v43 = &v54;
    }

    else
    {
      sub_22EE9FB18(&v54, &v53);
      result = (*a3)(v52, v53);
      if (!result)
      {
        return result;
      }

      v43 = &v53;
    }

    v44 = &v52;
    return sub_22EE9FB18(v43, v44);
  }

  if (result)
  {
    sub_22EE9FB18(&v53, &v52);
    result = (*a3)(v53, v54);
LABEL_92:
    if (result)
    {
      v43 = &v54;
      v44 = &v53;
      return sub_22EE9FB18(v43, v44);
    }
  }

  return result;
}

uint64_t sub_22EEA45B4(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t (**a5)(__int128 *, __int128 *))
{
  v17 = a2;
  v18 = a1;
  v15 = a4;
  v16 = a3;
  v20 = a2;
  v21 = a1;
  v19 = a3;
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = &v21;
LABEL_9:
      v13 = &v19;
      goto LABEL_10;
    }

    sub_22EE9FB18(&v21, &v20);
    if ((*a5)(v19, v20))
    {
      v12 = &v20;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    sub_22EE9FB18(&v20, &v19);
    if ((*a5)(v20, v21))
    {
      v12 = &v21;
      v13 = &v20;
LABEL_10:
      sub_22EE9FB18(v12, v13);
    }
  }

  result = (*a5)(a4, a3);
  if (result)
  {
    sub_22EE9FB18(&v16, &v15);
    result = (*a5)(v16, a2);
    if (result)
    {
      sub_22EE9FB18(&v17, &v16);
      result = (*a5)(v17, a1);
      if (result)
      {
        return sub_22EE9FB18(&v18, &v17);
      }
    }
  }

  return result;
}

uint64_t sub_22EEA46F4(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v24 = *MEMORY[0x277D85DE8];
  if (result != a2)
  {
    v4 = result;
    v5 = result + 112;
    if (result + 112 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v5;
        result = (*a3)(v5, v8);
        if (result)
        {
          v17 = *v9;
          v18 = *(v9 + 16);
          sub_22EEA09D4(v19, (v8 + 136));
          v20 = *(v8 + 176);
          v21 = *(v8 + 192);
          v22 = *(v8 + 200);
          v23 = *(v8 + 216);
          *(v8 + 200) = 0;
          *(v8 + 208) = 0;
          v10 = v7;
          *(v8 + 216) = 0;
          while (1)
          {
            v11 = v10;
            v12 = v4 + v10;
            *(v12 + 112) = *(v4 + v10);
            *(v12 + 128) = *(v4 + v10 + 16);
            sub_22EEA0A44(v4 + v10 + 136, (v4 + v10 + 24));
            *(v12 + 176) = *(v12 + 64);
            *(v12 + 192) = *(v12 + 80);
            if (*(v12 + 223) < 0)
            {
              operator delete(*(v12 + 200));
            }

            *(v12 + 200) = *(v12 + 88);
            *(v12 + 216) = *(v12 + 104);
            *(v12 + 111) = 0;
            *(v12 + 88) = 0;
            if (!v11)
            {
              break;
            }

            v13 = (*a3)(&v17, v4 + v11 - 112);
            v10 = v11 - 112;
            if ((v13 & 1) == 0)
            {
              v14 = v4 + v11;
              goto LABEL_12;
            }
          }

          v14 = v4;
LABEL_12:
          *v14 = v17;
          *(v14 + 16) = v18;
          v15 = v4 + v11;
          sub_22EEA0A44(v15 + 24, v19);
          *(v15 + 80) = v21;
          *(v15 + 64) = v20;
          if (*(v14 + 111) < 0)
          {
            operator delete(*(v15 + 88));
          }

          *(v15 + 88) = v22;
          *(v15 + 104) = v23;
          HIBYTE(v23) = 0;
          LOBYTE(v22) = 0;
          result = sub_22EE9EB68(v19);
        }

        v5 = v9 + 112;
        v7 += 112;
        v8 = v9;
      }

      while (v9 + 112 != a2);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EEA4904(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v21 = *MEMORY[0x277D85DE8];
  if (result != a2)
  {
    v4 = result;
    v5 = result + 112;
    if (result + 112 != a2)
    {
      v7 = (result + 223);
      do
      {
        v8 = v5;
        result = (*a3)(v5, v4);
        if (result)
        {
          v14 = *v8;
          v15 = *(v8 + 16);
          sub_22EEA09D4(v16, (v4 + 136));
          v17 = *(v4 + 176);
          v18 = *(v4 + 192);
          v19 = *(v4 + 200);
          v20 = *(v4 + 216);
          *(v4 + 200) = 0;
          *(v4 + 208) = 0;
          v9 = v7;
          *(v4 + 216) = 0;
          do
          {
            *(v9 - 111) = *(v9 - 223);
            *(v9 - 95) = *(v9 - 207);
            sub_22EEA0A44((v9 - 87), (v9 - 199));
            *(v9 - 47) = *(v9 - 159);
            *(v9 - 31) = *(v9 - 143);
            v10 = (v9 - 23);
            if (*v9 < 0)
            {
              operator delete(*v10);
            }

            *v10 = *(v9 - 135);
            *(v9 - 7) = *(v9 - 119);
            *(v9 - 112) = 0;
            *(v9 - 135) = 0;
            v11 = (*a3)(&v14, (v9 - 335));
            v9 -= 112;
          }

          while ((v11 & 1) != 0);
          *(v9 - 111) = v14;
          *(v9 - 95) = v15;
          sub_22EEA0A44((v9 - 87), v16);
          *(v9 - 47) = v17;
          *(v9 - 31) = v18;
          v12 = (v9 - 23);
          if (*v9 < 0)
          {
            operator delete(*v12);
          }

          *v12 = v19;
          *(v9 - 7) = v20;
          HIBYTE(v20) = 0;
          LOBYTE(v19) = 0;
          result = sub_22EE9EB68(v16);
        }

        v5 = v8 + 112;
        v7 += 112;
        v4 = v8;
      }

      while (v8 + 112 != a2);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

__int128 *sub_22EEA4AF4(uint64_t a1, __int128 *a2, unsigned int (**a3)(__int128 *))
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = a2;
  v22 = a1;
  v23 = *a1;
  v24 = *(a1 + 16);
  sub_22EEA09D4(v25, (a1 + 24));
  v26 = *(a1 + 64);
  v27 = *(a1 + 80);
  v28 = *(a1 + 88);
  v29 = *(a1 + 104);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if ((*a3)(&v23, a2 - 7))
  {
    v6 = a1;
    do
    {
      v6 += 7;
      v22 = v6;
    }

    while (((*a3)(&v23, v6) & 1) == 0);
  }

  else
  {
    v7 = (a1 + 112);
    do
    {
      v6 = v7;
      v22 = v7;
      if (v7 >= v21)
      {
        break;
      }

      v8 = (*a3)(&v23, v7);
      v7 = v6 + 7;
    }

    while (!v8);
  }

  v9 = v21;
  if (v6 < v21)
  {
    do
    {
      v9 -= 7;
      v21 = v9;
    }

    while (((*a3)(&v23, v9) & 1) != 0);
    v6 = v22;
  }

  if (v6 < v9)
  {
    do
    {
      sub_22EE9FB18(&v22, &v21);
      do
      {
        v22 += 7;
      }

      while (!(*a3)(&v23));
      do
      {
        v21 -= 7;
      }

      while (((*a3)(&v23) & 1) != 0);
      v6 = v22;
    }

    while (v22 < v21);
  }

  v10 = v6 - 7;
  if (v6 - 7 != a1)
  {
    v11 = *v10;
    *(a1 + 16) = *(v6 - 12);
    *a1 = v11;
    sub_22EEA0A44(a1 + 24, v6 - 11);
    v12 = *(v6 - 3);
    *(a1 + 80) = *(v6 - 4);
    *(a1 + 64) = v12;
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    v13 = *(v6 - 24);
    *(a1 + 104) = *(v6 - 1);
    *(a1 + 88) = v13;
    *(v6 - 1) = 0;
    *(v6 - 24) = 0;
  }

  v14 = v23;
  *(v6 - 12) = v24;
  *v10 = v14;
  sub_22EEA0A44(v6 - 88, v25);
  v15 = v26;
  *(v6 - 4) = v27;
  *(v6 - 3) = v15;
  v16 = v6 - 3;
  if (*(v6 - 1) < 0)
  {
    operator delete(*v16);
  }

  v17 = v28;
  *(v6 - 1) = v29;
  *v16 = v17;
  HIBYTE(v29) = 0;
  LOBYTE(v28) = 0;
  v18 = v22;
  sub_22EE9EB68(v25);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_22EEA4D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22EE9CB2C(va);
  _Unwind_Resume(a1);
}

__int128 *sub_22EEA4D88(uint64_t a1, __int128 *a2, uint64_t (**a3)(void))
{
  v31 = *MEMORY[0x277D85DE8];
  v22 = a2;
  v24 = *a1;
  v25 = *(a1 + 16);
  sub_22EEA09D4(v26, (a1 + 24));
  v5 = 0;
  v27 = *(a1 + 64);
  v28 = *(a1 + 80);
  v29 = *(a1 + 88);
  v30 = *(a1 + 104);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  do
  {
    v23 = (a1 + v5 + 112);
    v5 += 112;
  }

  while (((*a3)() & 1) != 0);
  v6 = v22;
  if (v5 == 112)
  {
    v9 = (a1 + 112);
    do
    {
      if (v9 >= v6)
      {
        break;
      }

      v10 = *a3;
      v6 -= 7;
      v22 = v6;
    }

    while (((v10)(v6, &v24) & 1) == 0);
  }

  else
  {
    v7 = v22 - 7;
    do
    {
      v22 = v7;
      v8 = (*a3)(v7, &v24);
      v7 -= 7;
    }

    while (!v8);
    v9 = v23;
  }

  v11 = v9;
  if (v9 < v22)
  {
    do
    {
      sub_22EE9FB18(&v23, &v22);
      do
      {
        v23 += 7;
      }

      while (((*a3)() & 1) != 0);
      do
      {
        v22 -= 7;
      }

      while (!(*a3)());
      v11 = v23;
    }

    while (v23 < v22);
  }

  v12 = v11 - 7;
  if (v11 - 7 != a1)
  {
    v13 = *v12;
    *(a1 + 16) = *(v11 - 12);
    *a1 = v13;
    sub_22EEA0A44(a1 + 24, v11 - 11);
    v14 = *(v11 - 3);
    *(a1 + 80) = *(v11 - 4);
    *(a1 + 64) = v14;
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    v15 = *(v11 - 24);
    *(a1 + 104) = *(v11 - 1);
    *(a1 + 88) = v15;
    *(v11 - 1) = 0;
    *(v11 - 24) = 0;
  }

  v16 = v24;
  *(v11 - 12) = v25;
  *v12 = v16;
  sub_22EEA0A44(v11 - 88, v26);
  v17 = v27;
  *(v11 - 4) = v28;
  *(v11 - 3) = v17;
  v18 = v11 - 3;
  if (*(v11 - 1) < 0)
  {
    operator delete(*v18);
  }

  v19 = v29;
  *(v11 - 1) = v30;
  *v18 = v19;
  HIBYTE(v30) = 0;
  LOBYTE(v29) = 0;
  sub_22EE9EB68(v26);
  v20 = *MEMORY[0x277D85DE8];
  return v11 - 7;
}

void sub_22EEA4FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22EE9CB2C(va);
  _Unwind_Resume(a1);
}

BOOL sub_22EEA5018(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v43 = *MEMORY[0x277D85DE8];
  v30 = a2;
  v31 = a1;
  v6 = 0x6DB6DB6DB6DB6DB7 * (a2 - a1);
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      goto LABEL_48;
    }

    if (v6 == 2)
    {
      v7 = *a3;
      v30 = a2 - 7;
      if ((v7)(a2 - 7))
      {
        v8 = &v31;
        v9 = &v30;
LABEL_30:
        sub_22EE9FB18(v8, v9);
        goto LABEL_48;
      }

      goto LABEL_48;
    }

LABEL_16:
    v16 = a1 + 14;
    v35 = a1 + 7;
    *&v36 = a1;
    v34 = a1 + 14;
    v17 = (*a3)(a1 + 7, a1);
    v18 = (*a3)(a1 + 14, a1 + 7);
    if (v17)
    {
      if (v18)
      {
        v19 = &v36;
      }

      else
      {
        sub_22EE9FB18(&v36, &v35);
        if (!(*a3)(v34, v35))
        {
          goto LABEL_35;
        }

        v19 = &v35;
      }

      v20 = &v34;
    }

    else
    {
      if (!v18 || (sub_22EE9FB18(&v35, &v34), !(*a3)(v35, v36)))
      {
LABEL_35:
        v21 = a1 + 21;
        if (v21 != a2)
        {
          v22 = 0;
          while (1)
          {
            if ((*a3)(v21, v16))
            {
              v36 = *v21;
              v37 = *(v21 + 2);
              sub_22EEA09D4(v38, v21 + 3);
              v39 = v21[4];
              v40 = *(v21 + 10);
              v41 = *(v21 + 88);
              v42 = *(v21 + 13);
              *(v21 + 11) = 0;
              *(v21 + 12) = 0;
              *(v21 + 13) = 0;
              do
              {
                v23 = v16;
                v16[7] = *v16;
                *(v16 + 16) = *(v16 + 2);
                sub_22EEA0A44(v16 + 136, v16 + 3);
                v16[11] = v16[4];
                *(v16 + 24) = *(v16 + 10);
                if (*(v16 + 223) < 0)
                {
                  operator delete(*(v16 + 25));
                }

                *(v16 + 200) = *(v16 + 88);
                *(v16 + 27) = *(v16 + 13);
                *(v16 + 111) = 0;
                *(v16 + 88) = 0;
                if (v16 == v31)
                {
                  break;
                }

                v16 -= 7;
              }

              while (((*a3)(&v36, v23 - 7) & 1) != 0);
              v24 = v36;
              *(v23 + 2) = v37;
              *v23 = v24;
              sub_22EEA0A44(v23 + 24, v38);
              v25 = v39;
              *(v23 + 10) = v40;
              v23[4] = v25;
              if (*(v23 + 111) < 0)
              {
                operator delete(*(v23 + 11));
              }

              v26 = v41;
              *(v23 + 13) = v42;
              *(v23 + 88) = v26;
              HIBYTE(v42) = 0;
              LOBYTE(v41) = 0;
              if (++v22 == 8)
              {
                v27 = v21 + 7 == v30;
                sub_22EE9EB68(v38);
                goto LABEL_49;
              }

              sub_22EE9EB68(v38);
            }

            v16 = v21;
            v21 += 7;
            if (v21 == v30)
            {
              goto LABEL_48;
            }
          }
        }

        goto LABEL_48;
      }

      v19 = &v36;
      v20 = &v35;
    }

    sub_22EE9FB18(v19, v20);
    goto LABEL_35;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      sub_22EEA45B4(a1, a1 + 7, a1 + 14, a2 - 7, a3);
      goto LABEL_48;
    }

    if (v6 != 5)
    {
      goto LABEL_16;
    }

    v35 = a1 + 7;
    *&v36 = a1;
    v10 = a2 - 7;
    v33 = a1 + 21;
    v34 = a1 + 14;
    v32 = a2 - 7;
    sub_22EEA45B4(a1, a1 + 7, a1 + 14, a1 + 21, a3);
    if (!(*a3)(v10, a1 + 21))
    {
      goto LABEL_48;
    }

    sub_22EE9FB18(&v33, &v32);
    if (!(*a3)(v33, a1 + 14))
    {
      goto LABEL_48;
    }

    sub_22EE9FB18(&v34, &v33);
    if (!(*a3)(v34, a1 + 7))
    {
      goto LABEL_48;
    }

    sub_22EE9FB18(&v35, &v34);
    v11 = (*a3)(v35, a1);
    goto LABEL_22;
  }

  v12 = a1 + 7;
  v13 = a2 - 7;
  v35 = a1 + 7;
  *&v36 = a1;
  v34 = a2 - 7;
  v14 = (*a3)(a1 + 7, a1);
  v15 = (*a3)(v13, v12);
  if (v14)
  {
    if (v15)
    {
      v8 = &v36;
    }

    else
    {
      sub_22EE9FB18(&v36, &v35);
      if (!(*a3)(v34, v35))
      {
        goto LABEL_48;
      }

      v8 = &v35;
    }

    v9 = &v34;
    goto LABEL_30;
  }

  if (v15)
  {
    sub_22EE9FB18(&v35, &v34);
    v11 = (*a3)(v35, v36);
LABEL_22:
    if (v11)
    {
      v8 = &v36;
      v9 = &v35;
      goto LABEL_30;
    }
  }

LABEL_48:
  v27 = 1;
LABEL_49:
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

__int128 *sub_22EEA5494(__int128 *a1, __int128 *a2, __int128 *a3, unsigned int (**a4)(uint64_t, uint64_t))
{
  v18 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0x6DB6DB6DB6DB6DB7 * (a2 - a1);
    if (a2 - a1 >= 113)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[7 * v10];
      do
      {
        sub_22EEA55EC(v7, a4, v9, v12);
        v12 -= 7;
        --v11;
      }

      while (v11);
    }

    v17 = v6;
    v13 = v6;
    if (v6 != a3)
    {
      do
      {
        if ((*a4)(v13, v18))
        {
          sub_22EE9FB18(&v17, &v18);
          sub_22EEA55EC(v18, a4, v9, v18);
        }

        v13 = v17 + 7;
        v17 = v13;
      }

      while (v13 != a3);
      v7 = v18;
      v8 = v6 - v18;
    }

    if (v8 >= 113)
    {
      v14 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 4);
      do
      {
        sub_22EEA586C(v7, v6, a4, v14);
        v6 -= 7;
      }

      while (v14-- > 2);
      return v17;
    }

    return v13;
  }

  return a3;
}

uint64_t sub_22EEA55EC(uint64_t result, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3, __int128 *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= 0x6DB6DB6DB6DB6DB7 * ((a4 - result) >> 4))
    {
      v10 = (0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 4)) | 1;
      v11 = result + 112 * v10;
      v12 = 0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 4) + 2;
      if (v12 < a3 && (*a2)(result + 112 * v10, v11 + 112))
      {
        v11 += 112;
        v10 = v12;
      }

      result = (*a2)(v11, v5);
      if ((result & 1) == 0)
      {
        v22 = *v5;
        v23 = *(v5 + 2);
        sub_22EEA09D4(v24, v5 + 3);
        v25 = v5[4];
        v26 = *(v5 + 10);
        v27 = *(v5 + 88);
        v28 = *(v5 + 13);
        *(v5 + 11) = 0;
        *(v5 + 12) = 0;
        *(v5 + 13) = 0;
        do
        {
          v13 = v11;
          v14 = *v11;
          *(v5 + 2) = *(v11 + 16);
          *v5 = v14;
          sub_22EEA0A44(v5 + 24, (v11 + 24));
          v15 = *(v11 + 64);
          *(v5 + 10) = *(v11 + 80);
          v5[4] = v15;
          if (*(v5 + 111) < 0)
          {
            operator delete(*(v5 + 11));
          }

          v16 = *(v11 + 88);
          *(v5 + 13) = *(v11 + 104);
          *(v5 + 88) = v16;
          *(v11 + 111) = 0;
          *(v11 + 88) = 0;
          if (v7 < v10)
          {
            break;
          }

          v17 = (2 * v10) | 1;
          v11 = v6 + 112 * v17;
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v17;
          }

          else if ((*a2)(v6 + 112 * v17, v11 + 112))
          {
            v11 += 112;
          }

          else
          {
            v10 = v17;
          }

          v5 = v13;
        }

        while (!(*a2)(v11, &v22));
        v18 = v22;
        *(v13 + 16) = v23;
        *v13 = v18;
        sub_22EEA0A44(v13 + 24, v24);
        v19 = v25;
        *(v13 + 80) = v26;
        *(v13 + 64) = v19;
        if (*(v13 + 111) < 0)
        {
          operator delete(*(v13 + 88));
        }

        v20 = v27;
        *(v13 + 104) = v28;
        *(v13 + 88) = v20;
        HIBYTE(v28) = 0;
        LOBYTE(v27) = 0;
        result = sub_22EE9EB68(v24);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EEA586C(uint64_t result, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a4 >= 2)
  {
    v7 = result;
    v19 = *result;
    v20 = *(result + 16);
    sub_22EEA09D4(v21, (result + 24));
    v22 = *(v7 + 64);
    v23 = *(v7 + 80);
    *__p = *(v7 + 88);
    v25 = *(v7 + 104);
    *(v7 + 88) = 0;
    *(v7 + 96) = 0;
    *(v7 + 104) = 0;
    v8 = sub_22EEA5AC4(v7, a3, a4);
    v9 = v8;
    v10 = (a2 - 112);
    if (v8 == (a2 - 112))
    {
      *(v8 + 2) = v20;
      *v8 = v19;
      sub_22EEA0A44(v8 + 24, v21);
      v16 = v22;
      *(v9 + 10) = v23;
      v9[4] = v16;
      if (*(v9 + 111) < 0)
      {
        operator delete(*(v9 + 11));
      }

      v17 = *__p;
      *(v9 + 13) = v25;
      *(v9 + 88) = v17;
      HIBYTE(v25) = 0;
      LOBYTE(__p[0]) = 0;
    }

    else
    {
      v11 = *v10;
      *(v8 + 2) = *(a2 - 96);
      *v8 = v11;
      sub_22EEA0A44(v8 + 24, (a2 - 88));
      v12 = *(a2 - 48);
      *(v9 + 10) = *(a2 - 32);
      v9[4] = v12;
      if (*(v9 + 111) < 0)
      {
        operator delete(*(v9 + 11));
      }

      v13 = (a2 - 24);
      v14 = *(a2 - 24);
      *(v9 + 13) = *(a2 - 8);
      *(v9 + 88) = v14;
      *(a2 - 1) = 0;
      *(a2 - 24) = 0;
      v15 = (v9 + 7);
      *v10 = v19;
      *(a2 - 96) = v20;
      sub_22EEA0A44(a2 - 88, v21);
      *(a2 - 48) = v22;
      *(a2 - 32) = v23;
      if (*(a2 - 1) < 0)
      {
        operator delete(*v13);
      }

      *v13 = *__p;
      *(a2 - 8) = v25;
      HIBYTE(v25) = 0;
      LOBYTE(__p[0]) = 0;
      sub_22EEA5BC8(v7, v15, a3, 0x6DB6DB6DB6DB6DB7 * ((v15 - v7) >> 4));
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }

    result = sub_22EE9EB68(v21);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

__int128 *sub_22EEA5AC4(__int128 *a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[7 * v6];
    v9 = v8 + 7;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = v8 + 14;
      if ((*a2)((v8 + 7), (v8 + 14)))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    v13 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v13;
    sub_22EEA0A44(a1 + 24, v9 + 3);
    v14 = v9[4];
    *(a1 + 10) = *(v9 + 10);
    a1[4] = v14;
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 11));
    }

    v15 = *(v9 + 88);
    *(a1 + 13) = *(v9 + 13);
    *(a1 + 88) = v15;
    *(v9 + 111) = 0;
    *(v9 + 88) = 0;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t sub_22EEA5BC8(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = result;
    v8 = v4 >> 1;
    v9 = result + 112 * (v4 >> 1);
    v10 = (a2 - 112);
    result = (*a3)(v9, a2 - 112);
    if (result)
    {
      v16 = *v10;
      v17 = *(v10 + 2);
      sub_22EEA09D4(v18, (a2 - 88));
      v19 = *(a2 - 48);
      v20 = *(a2 - 32);
      v21 = *(a2 - 24);
      v22 = *(a2 - 8);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      do
      {
        v11 = v9;
        v12 = *v9;
        *(v10 + 2) = *(v9 + 16);
        *v10 = v12;
        sub_22EEA0A44(v10 + 24, (v9 + 24));
        v13 = *(v9 + 64);
        *(v10 + 10) = *(v9 + 80);
        v10[4] = v13;
        if (*(v10 + 111) < 0)
        {
          operator delete(*(v10 + 11));
        }

        v14 = *(v9 + 88);
        *(v10 + 13) = *(v9 + 104);
        *(v10 + 88) = v14;
        *(v9 + 111) = 0;
        *(v9 + 88) = 0;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = v7 + 112 * v8;
        v10 = v11;
      }

      while (((*a3)(v9, &v16) & 1) != 0);
      *v11 = v16;
      *(v11 + 16) = v17;
      sub_22EEA0A44(v11 + 24, v18);
      *(v11 + 64) = v19;
      *(v11 + 80) = v20;
      if (*(v11 + 111) < 0)
      {
        operator delete(*(v11 + 88));
      }

      *(v11 + 88) = v21;
      *(v11 + 104) = v22;
      HIBYTE(v22) = 0;
      LOBYTE(v21) = 0;
      result = sub_22EE9EB68(v18);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22EEA5DA4()
{
  sub_22EE858C8();
  v6 = *MEMORY[0x277D85DE8];
  archive_errno();
  sub_22EE863C0();
  sub_22EE8638C();
  sub_22EE863B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA5E30()
{
  sub_22EE858C8();
  v6 = *MEMORY[0x277D85DE8];
  archive_errno();
  sub_22EE863C0();
  sub_22EE8638C();
  sub_22EE863B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA5EBC()
{
  sub_22EE858C8();
  v6 = *MEMORY[0x277D85DE8];
  archive_errno();
  sub_22EE863C0();
  sub_22EE8638C();
  sub_22EE863B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA5F48()
{
  sub_22EE858C8();
  v6 = *MEMORY[0x277D85DE8];
  archive_errno();
  sub_22EE863C0();
  sub_22EE8638C();
  sub_22EE863B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA5FD4()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA6058()
{
  sub_22EE858C8();
  v6 = *MEMORY[0x277D85DE8];
  archive_errno();
  sub_22EE863C0();
  sub_22EE8638C();
  sub_22EE863B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA60E4()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA6168()
{
  sub_22EE858C8();
  v6 = *MEMORY[0x277D85DE8];
  archive_errno();
  sub_22EE863C0();
  sub_22EE8638C();
  sub_22EE863B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA61F4(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_22EE81000, a2, OS_LOG_TYPE_ERROR, "Error creating compressed file (archive_write_free): %i", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22EEA626C()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA62F0()
{
  v6 = *MEMORY[0x277D85DE8];
  archive_errno();
  sub_22EE863C0();
  sub_22EE863B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA63A0()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA6424()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA64A8()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA659C()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_22EEA65B8(uint64_t *a1)
{
  sub_22EE8A70C(a1, *MEMORY[0x277D85DE8]);
  sub_22EE8A700();
  sub_22EE858D8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA6628(uint64_t *a1)
{
  sub_22EE8A70C(a1, *MEMORY[0x277D85DE8]);
  sub_22EE8A700();
  sub_22EE858D8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA6698()
{
  sub_22EE85894();
  sub_22EE8A6F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA66D4(uint64_t *a1)
{
  sub_22EE8A70C(a1, *MEMORY[0x277D85DE8]);
  sub_22EE8A700();
  sub_22EE858D8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA6788()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE8A6E8();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA6808()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE8A6E8();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA68CC()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE8A6E8();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA6950()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE8A6E8();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA69D4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_22EE81000, log, OS_LOG_TYPE_ERROR, "Keyboards are not of Class type NSString!", buf, 2u);
}

void sub_22EEA6A14()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA6A50()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858A0();
  sub_22EE8A6F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA6AC0()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA6AFC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858A0();
  sub_22EE8A6F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA6B6C()
{
  sub_22EE85894();
  sub_22EE8A6F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA6BA8()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA6C30()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA6CB8()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA6D40()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA6DC8(uint64_t *a1)
{
  sub_22EE8A70C(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 24);
  v4 = *(*v3 + 24);
  sub_22EE8A700();
  v9 = 2048;
  v10 = v5;
  _os_log_debug_impl(&dword_22EE81000, v6, OS_LOG_TYPE_DEBUG, "native shared cache has %llu/%llu pages resident", v8, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_22EEA6E58()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA6E94(mach_error_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  mach_error_string(*a1);
  sub_22EE8A6B8();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA6F28()
{
  v6 = *MEMORY[0x277D85DE8];
  mach_error_string(0);
  sub_22EE8A6B8();
  sub_22EE863B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA6FE0()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858A0();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA7050()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA7100()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA713C()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  sub_22EE858A0();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA71C8()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22EE858A0();
  sub_22EE8A6C8(&dword_22EE81000, v0, v1, "Unable to serialize tailspin metadata dictionary to plist (%@) - %@");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22EEA723C()
{
  sub_22EE8A718();
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE8A6A0();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA72C0()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_22EE8A6B8();
  sub_22EE863B0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_22EEA7358()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_22EE858A0();
  WORD2(v4) = 2048;
  HIWORD(v4) = v0;
  sub_22EE8A6C8(&dword_22EE81000, v0, v1, "FileExtent: 0 contigbytes fcntl() at offset %lld out of %lld", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22EEA73CC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858A0();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA743C()
{
  sub_22EE8A718();
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE8A6A0();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA74C0()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE8A6B8();
  sub_22EE8A6F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA7540()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  sub_22EE858A0();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA75C8()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_22EE858A0();
  sub_22EE8A6C8(&dword_22EE81000, v0, v1, "Unable to serialize dictionary to plist (%@) - %@");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22EEA763C()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA7678()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA76B4()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA7728()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA779C()
{
  sub_22EE85894();
  sub_22EE8A6F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA77D8()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA7814()
{
  sub_22EE8A718();
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE8A6A0();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA7898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_22EE8A860(504, "MAX_CHUNK_SIZE 0x%x isn't a page multiple 0x%lx", a3, a4, a5, a6, a7, a8, 0);
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_22EEA78D0()
{
  sub_22EE8A718();
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE8A6A0();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA7954()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPMPowerMitigationsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"tailspin_write.m" lineNumber:60 description:{@"Unable to find class %s", "PMPowerMitigations"}];

  __break(1u);
}

void sub_22EEA79D0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *LowPowerModeLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"tailspin_write.m" lineNumber:58 description:{@"%s", *a1}];

  __break(1u);
}

void sub_22EEA7B34()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v2[0] = 67109120;
  v2[1] = v0;
  _os_log_fault_impl(&dword_22EE81000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Failed to get productType from MobileGestalt: %{darwin.errno}d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

void sub_22EEA7BBC()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v2[0] = 67109120;
  v2[1] = v0;
  _os_log_fault_impl(&dword_22EE81000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Failed to get current device from MobileGestalt: %{darwin.errno}d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

void sub_22EEA7C44()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA7CC4()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA7D44()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA7DC4()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE93D8C();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA7E34()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE93D8C();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA7EA4()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA7EE0(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 68289026;
  v3[1] = 16;
  v4 = 2098;
  v5 = a1;
  _os_log_debug_impl(&dword_22EE81000, a2, OS_LOG_TYPE_DEBUG, "Started new CPUTrace session %{public, uuid_t}.16P", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_22EEA7F68()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA7FE8()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA8024()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA8060()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA809C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA811C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE93D8C();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA818C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE93D8C();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA81FC()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA8238(int *a1, _DWORD *a2)
{
  v2 = *a1;
  *a2 = 67109120;
  a2[1] = v2;
  sub_22EE93DB8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_22EEA8280()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA82BC(int *a1, _DWORD *a2)
{
  v2 = *a1;
  *a2 = 67109120;
  a2[1] = v2;
  sub_22EE93DB8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_22EEA8304(int *a1, _DWORD *a2)
{
  v2 = *a1;
  *a2 = 67109120;
  a2[1] = v2;
  sub_22EE93DB8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_22EEA834C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA83CC()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA84A4()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA8524()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE93D8C();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA8594()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE93D8C();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA8604(uint8_t *buf, NSObject *a2, double a3)
{
  *buf = 134217984;
  *(buf + 4) = a3;
  _os_log_debug_impl(&dword_22EE81000, a2, OS_LOG_TYPE_DEBUG, "Done parsing in %.2fs", buf, 0xCu);
}

void sub_22EEA8670()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE93D8C();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA86E0(void *a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_22EE81000, log, OS_LOG_TYPE_ERROR, "Main binary %{public}@ not found in target process [%d]", buf, 0x12u);
}

void sub_22EEA8748()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE93D8C();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA87B8(uint64_t a1, uint64_t a2)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  sub_22EE93DB8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_22EEA87FC(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *(*a2 + 40);
  sub_22EE93DB8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_22EEA88C0()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE93D8C();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA8930(uint8_t *buf, int *a2, uint64_t *a3, os_log_t log)
{
  v4 = (a2 - *a2);
  if (*v4 > 0xAu && (v5 = v4[5]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = -1;
  }

  *buf = 134217984;
  *a3 = v6;
  _os_log_debug_impl(&dword_22EE81000, log, OS_LOG_TYPE_DEBUG, "No macho for symbol owner at %#llx", buf, 0xCu);
}

void sub_22EEA89A4()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE93D8C();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA8A14()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE93D8C();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA8A84(uint64_t a1, int *a2, uint8_t *buf, os_log_t log)
{
  v4 = *a2;
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v4;
  _os_log_error_impl(&dword_22EE81000, log, OS_LOG_TYPE_ERROR, "Unable to fstat %{public}@'s saved tailspin file: %{errno}d", buf, 0x12u);
}

void sub_22EEA8AE0(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = *(a1 + 60);
  sub_22EE93DB8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA8B78()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA8C0C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE93D8C();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA8C7C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA8CFC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE93D8C();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA8D6C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE93D8C();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA8DDC()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA8E4C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE93D8C();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA8EBC()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA8EF8(unsigned int *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  sub_22EE93D98();
  sub_22EE93DC4(&dword_22EE81000, v2, v3, "[%d] %s, throwing out cache", v5, v6);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_22EEA8F74(unsigned int *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  sub_22EE93D98();
  sub_22EE93DC4(&dword_22EE81000, v2, v3, "[%d] %s, but no cache to throw out", v5, v6);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_22EEA8FF0()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA9074(int *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = *__error();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA910C(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  xpc_dictionary_get_string(a1, *MEMORY[0x277D86400]);
  sub_22EE858A0();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA9198()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA91D4()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA9224()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA9260()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA929C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA9310()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void soft_hwtrace_live_recording_session_deinit(hwtrace_live_recording_session_t)"];
  [v0 handleFailureInFunction:v1 file:@"AppleHWTrace_SoftLinking.h" lineNumber:41 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_22EEA9388()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_error_t soft_hwtrace_live_recording_init_from_session(hwtrace_live_recording_session_t, hwtrace_live_recording_t *)"}];
  [v0 handleFailureInFunction:v1 file:@"AppleHWTrace_SoftLinking.h" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_22EEA9400()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA9474()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"hwtrace_error_t soft_hwtrace_live_recording_session_init(const char *, hwtrace_live_recording_session_t *)"}];
  [v0 handleFailureInFunction:v1 file:@"AppleHWTrace_SoftLinking.h" lineNumber:39 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_22EEA94EC()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA9528()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA95A8()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void soft_hwtrace_live_recording_deinit(hwtrace_live_recording_t)"];
  [v0 handleFailureInFunction:v1 file:@"AppleHWTrace_SoftLinking.h" lineNumber:47 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_22EEA9620()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA96A0()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA9714()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hwtrace_error_t soft_hwtrace_live_recording_pause(hwtrace_live_recording_t)"];
  [v0 handleFailureInFunction:v1 file:@"AppleHWTrace_SoftLinking.h" lineNumber:49 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_22EEA9828()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA98AC(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  [v1 UTF8String];
  sub_22EE858A0();
  sub_22EE863B0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22EEA9940()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA99C4()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858A0();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA9A34(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 count];
  sub_22EE858A0();
  sub_22EE97A7C(&dword_22EE81000, v1, v2, "Found %lu active trial experiments", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_22EEA9AB0()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858A0();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA9B20(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 count];
  sub_22EE858A0();
  sub_22EE97A7C(&dword_22EE81000, v1, v2, "Found %lu active trial rollouts", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_22EEA9B9C()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA9C24()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_22EE858A0();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_22EEA9C94()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA9CD0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*(*a1 + 8) + 24);
  sub_22EE85888();
  sub_22EE858D8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_22EEA9D74()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  sub_22EE85888();
  sub_22EE863B0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_22EEA9DF8()
{
  sub_22EE85894();
  sub_22EE858D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22EEA9E34(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *libhwtrace_privateLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AppleHWTrace_SoftLinking.h" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void sub_22EEA9EB4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getTRIAllocationStatusClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"libtailspin_client.m" lineNumber:38 description:{@"Unable to find class %s", "TRIAllocationStatus"}];

  __break(1u);
}

void sub_22EEA9F30(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *TrialLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"libtailspin_client.m" lineNumber:37 description:{@"%s", *a1}];

  __break(1u);
}

void sub_22EEAA034(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 136315394;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_22EE81000, log, OS_LOG_TYPE_ERROR, "Failed to parse dscsym data for shared cache %s: %d", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_22EEAA0D8(uint64_t a1, int *a2, uint8_t *buf, os_log_t log)
{
  v4 = *a2;
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v4;
  _os_log_error_impl(&dword_22EE81000, log, OS_LOG_TYPE_ERROR, "Unable to save symbols for binary %s: %{errno}d", buf, 0x12u);
}

void sub_22EEAA134(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 88);
  v3 = a1 + 88;
  v4 = v5;
  if (*(v3 + 23) >= 0)
  {
    v4 = v3;
  }

  v7 = 134218242;
  v8 = a2;
  v9 = 2080;
  v10 = v4;
  _os_log_debug_impl(&dword_22EE81000, log, OS_LOG_TYPE_DEBUG, "Address %#llx is in binary %s", &v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}