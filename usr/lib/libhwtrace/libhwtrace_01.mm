void sub_298AE84C0(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    __n = 2;
  }

  else if ((__n & (__n - 1)) != 0)
  {
    v2 = a1;
    __n = std::__next_prime(__n);
    a1 = v2;
  }

  v3 = *(a1 + 8);
  if (__n > *&v3)
  {
    goto LABEL_6;
  }

  if (__n >= *&v3)
  {
    return;
  }

  v4 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
  if (*&v3 < 3uLL || (v5 = vcnt_s8(v3), v5.i16[0] = vaddlv_u8(v5), v5.u32[0] > 1uLL))
  {
    v7 = a1;
    v8 = __n;
    prime = std::__next_prime(v4);
    a1 = v7;
    if (v8 <= prime)
    {
      __n = prime;
    }

    else
    {
      __n = v8;
    }

    if (__n >= *&v3)
    {
      return;
    }

LABEL_6:

    sub_298AE8270(a1, __n);
    return;
  }

  v6 = 1 << -__clz(v4 - 1);
  if (v4 >= 2)
  {
    v4 = v6;
  }

  if (__n <= v4)
  {
    __n = v4;
  }

  if (__n < *&v3)
  {
    goto LABEL_6;
  }
}

void *sub_298AE85CC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_15;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] <= 1uLL)
  {
    v5 = (*&v3 - 1) & v2;
    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_15:
    operator new();
  }

  v5 = *a2;
  if (v2 >= *&v3)
  {
    v5 = v2 % *&v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_6:
  result = *v6;
  if (!*v6)
  {
    goto LABEL_15;
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (result[2] == v2)
        {
          return result;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_15;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_15;
    }

LABEL_10:
    result = *result;
    if (!result)
    {
      goto LABEL_15;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_298AE88F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_298AE893C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_298AE89BC(uint64_t a1)
{
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v2)
  {
    v3 = sub_298AE8A50(v2);
    MEMORY[0x29C2945F0](v3, 0x1020C4095A5CCACLL);
  }

  v6 = (a1 + 32);
  sub_298AE8BC8(&v6);
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void *sub_298AE8A50(void *a1)
{
  v2 = a1[10];
  a1[10] = 0;
  if (v2)
  {
    IOServiceClose(*(v2 + 4));
    MEMORY[0x29C2945F0](v2, 0x1000C40CE7E837CLL);
  }

  v3 = a1[6];
  if (v3)
  {
    v4 = a1[7];
    v5 = a1[6];
    if (v4 != v3)
    {
      do
      {
        while (1)
        {
          v6 = *(v4 - 32);
          if (v6)
          {
            *(v4 - 24) = v6;
            operator delete(v6);
          }

          if (*(v4 - 33) < 0)
          {
            break;
          }

          v4 -= 64;
          if (v4 == v3)
          {
            goto LABEL_11;
          }
        }

        operator delete(*(v4 - 56));
        v4 -= 64;
      }

      while (v4 != v3);
LABEL_11:
      v5 = a1[6];
    }

    a1[7] = v3;
    operator delete(v5);
  }

  v7 = a1[3];
  if (!v7)
  {
    return a1;
  }

  v8 = a1[4];
  v9 = a1[3];
  if (v8 == v7)
  {
    goto LABEL_30;
  }

  do
  {
    while (1)
    {
      v10 = *(v8 - 3);
      if (v10)
      {
        v11 = *(v8 - 2);
        v12 = *(v8 - 3);
        if (v11 != v10)
        {
          do
          {
            v13 = *(v11 - 3);
            if (v13)
            {
              *(v11 - 2) = v13;
              operator delete(v13);
            }

            v11 -= 80;
          }

          while (v11 != v10);
          v12 = *(v8 - 3);
        }

        *(v8 - 2) = v10;
        operator delete(v12);
      }

      if (*(v8 - 97) < 0)
      {
        break;
      }

      v14 = v8 - 23;
      if (*(v8 - 161) < 0)
      {
        goto LABEL_28;
      }

LABEL_25:
      v8 = v14;
      if (v14 == v7)
      {
        goto LABEL_29;
      }
    }

    operator delete(*(v8 - 15));
    v14 = v8 - 23;
    if ((*(v8 - 161) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_28:
    operator delete(*v14);
    v8 = v14;
  }

  while (v14 != v7);
LABEL_29:
  v9 = a1[3];
LABEL_30:
  a1[4] = v7;
  operator delete(v9);
  return a1;
}

void sub_298AE8BC8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_298AE8C1C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_298AE8C1C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  while (v2 != a2)
  {
    v7 = *--v2;
    v6 = v7;
    *v2 = 0;
    if (v7)
    {
      v3 = result;
      v4 = a2;
      v5 = sub_298AE8CA8(v6);
      MEMORY[0x29C2945F0](v5, 0x10F0C400F06D526);
      result = v3;
      a2 = v4;
    }
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_298AE8CA8(uint64_t a1)
{
  v4 = (a1 + 176);
  sub_298AE8D1C(&v4);
  v4 = (a1 + 144);
  sub_298AE8DE8(&v4);
  v4 = (a1 + 112);
  sub_298AE8FE0(&v4);
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  sub_298AE90A0(a1 + 32);
  return a1;
}

void sub_298AE8D1C(uint64_t *a1)
{
  v2 = **a1;
  if (v2)
  {
    sub_298AE8D6C(*a1, v2);
    v4 = **a1;

    operator delete(v4);
  }
}

uint64_t sub_298AE8D6C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  while (v2 != a2)
  {
    v4 = *--v2;
    v3 = v4;
    *v2 = 0;
    if (v4)
    {
      v5 = result;
      v6 = a2;
      (*(*v3 + 8))(v3);
      result = v5;
      a2 = v6;
    }
  }

  *(result + 8) = a2;
  return result;
}

void sub_298AE8DE8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_298AE8E3C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_298AE8E3C(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    v3 = v2 - 1;
    do
    {
      v4 = *v3;
      *v3 = 0;
      if (v4)
      {
        v6 = result;
        v7 = a2;
        sub_298AE8EB8(v3, v4);
        result = v6;
        a2 = v7;
      }
    }

    while (v3-- != a2);
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_298AE8EB8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = (a2 + 24);
    sub_298AE8F10(&v4);
    return MEMORY[0x29C2945F0](a2, 0x1060C405E3B83C8);
  }

  return result;
}

void sub_298AE8F10(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_298AE8F64(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_298AE8F64(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  while (v2 != a2)
  {
    v4 = *--v2;
    v3 = v4;
    *v2 = 0;
    if (v4)
    {
      v5 = result;
      v6 = a2;
      MEMORY[0x29C2945F0](v3, 0x1060C408A10481FLL);
      result = v5;
      a2 = v6;
    }
  }

  *(result + 8) = a2;
  return result;
}

void sub_298AE8FE0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_298AE9034(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_298AE9034(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = *--v3;
      result = v4;
      *v3 = 0;
      if (v4)
      {
        result = MEMORY[0x29C2945F0](result, 0x1000C4075806E5BLL);
      }
    }

    while (v3 != v2);
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_298AE90A0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *(result + 32) = v1;
    v3 = result;
    operator delete(v1);
    result = v3;
  }

  v2 = *result;
  if (*result)
  {
    *(result + 8) = v2;
    v4 = result;
    operator delete(v2);
    return v4;
  }

  return result;
}

void *sub_298AE90FC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_11;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] <= 1uLL)
  {
    v8 = v5 & (*&v6 - 1);
  }

  else
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (result = *v9) == 0)
  {
LABEL_11:
    operator new();
  }

  if (v7.u32[0] >= 2uLL)
  {
    while (1)
    {
      v11 = result[1];
      if (v11 == v5)
      {
        if (result[2] == v2)
        {
          return result;
        }
      }

      else
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }

        if (v11 != v8)
        {
          goto LABEL_11;
        }
      }

      result = *result;
      if (!result)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
    v12 = result[1];
    if (v12 == v5)
    {
      break;
    }

    if ((v12 & (*&v6 - 1)) != v8)
    {
      goto LABEL_11;
    }

LABEL_20:
    result = *result;
    if (!result)
    {
      goto LABEL_11;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_298AE9468(uint64_t a1)
{
  sub_298AE94BC((a1 + 88));
  std::mutex::~mutex((a1 + 24));

  JUMPOUT(0x29C2945F0);
}

void *sub_298AE94BC(void *a1)
{
  sub_298AE94F0(a1);
  MEMORY[0x29C2945E0](*a1, 8);
  return a1;
}

uint64_t sub_298AE94F0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = *v3;
        *v3 = 0;
        if (result)
        {
          v4 = sub_298AE9578(result);
          result = MEMORY[0x29C2945F0](v4, 0x10B1C40E98BF481);
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

void *sub_298AE9578(void *a1)
{
  sub_298AE95D0((a1 + 8));
  sub_298AE9670((a1 + 8));
  MEMORY[0x29C2945E0](a1[5], 8);
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_298AE95D0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 72);
  if (v2)
  {
    v9 = *(result + 64);
    v10 = 16 * v2;
    do
    {
      v11 = *v9;
      v9 += 2;
      result = MEMORY[0x29C2945E0](v11, 8);
      v10 -= 16;
    }

    while (v10);
  }

  *(v1 + 72) = 0;
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 80) = 0;
    v4 = *(v1 + 16);
    v5 = *v4 + 4096;
    *v1 = *v4;
    *(v1 + 8) = v5;
    if (v3 != 1)
    {
      v6 = v4 + 1;
      v7 = 8 * v3 - 8;
      do
      {
        v8 = *v6++;
        result = MEMORY[0x29C2945E0](v8, 8);
        v7 -= 8;
      }

      while (v7);
    }

    *(v1 + 24) = 1;
  }

  return result;
}

uint64_t sub_298AE9670(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      MEMORY[0x29C2945E0](v5, 8);
      v4 -= 8;
    }

    while (v4);
  }

  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  if (v7)
  {
    v10 = 16 * v7;
    do
    {
      v11 = v6 + 2;
      MEMORY[0x29C2945E0](*v6, 8);
      v6 = v11;
      v10 -= 16;
    }

    while (v10);
    v6 = *(a1 + 64);
  }

  if (v6 != (a1 + 80))
  {
    free(v6);
  }

  v8 = *(a1 + 16);
  if (v8 != (a1 + 32))
  {
    free(v8);
  }

  return a1;
}

__n128 sub_298AE9798(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1B8F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_298AE97D8(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if ((*a1 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = *(a1 + 8);
    if (os_signpost_enabled(v3))
    {
      v4 = *(**(a1 + 16) + 8);
      v7 = *(v4 + 72);
      v5 = v4 + 72;
      v6 = v7;
      if (*(v5 + 23) < 0)
      {
        v5 = v6;
      }

      v9 = 136315138;
      v10 = v5;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v3, OS_SIGNPOST_INTERVAL_END, v1, "Trace::SystemState", "system=%s", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298AE98B0(uint64_t a1, uint64_t a2)
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

uint64_t sub_298AE9948(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = a1;
    (*(*v2 + 48))(v2);
    a1 = v4;
  }

  return sub_298AE893C(a1);
}

uint64_t sub_298AE99B0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_298AE99FC(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t sub_298AE99FC(uint64_t a1)
{
  v2 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_298AE90A0(a1 + 96);
  v3 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v3)
  {
    v5 = sub_298AE9AC0(v3);
    MEMORY[0x29C2945F0](v5, 0x10A0C40616DDAE8);
  }

  sub_298AE9B00(a1 + 64, *(a1 + 72));
  v6 = (a1 + 40);
  sub_298AE9B58(&v6);
  v6 = (a1 + 16);
  sub_298AEA774(&v6);
  sub_298AE6830((a1 + 8));
  return a1;
}

uint64_t sub_298AE9AC0(uint64_t a1)
{
  sub_298AE9B00(a1 + 40, *(a1 + 48));

  return sub_298AE88F0(a1);
}

void sub_298AE9B00(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_298AE9B00(a1, *a2);
    sub_298AE9B00(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_298AE9B58(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_298AE9BAC(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_298AE9BAC(uint64_t result, uint64_t a2)
{
  for (i = *(result + 8); i != a2; i -= 64)
  {
    v6 = *(i - 8);
    *(i - 8) = 0;
    if (v6)
    {
      v3 = result;
      v4 = a2;
      v5 = sub_298AE9C3C(v6);
      MEMORY[0x29C2945F0](v5, 0x1020C404CDF6F5DLL);
      result = v3;
      a2 = v4;
    }
  }

  *(result + 8) = a2;
  return result;
}

void *sub_298AE9C3C(void *a1)
{
  sub_298AE9C88(a1 + 53);
  sub_298AE9DC0(a1 + 40);
  sub_298AE9FEC(a1 + 27);
  sub_298AEA128(a1 + 14);
  sub_298AEA548(a1 + 1);
  return a1;
}

void *sub_298AE9C88(void *a1)
{
  sub_298AE9CBC(a1);
  MEMORY[0x29C2945E0](*a1, 8);
  return a1;
}

void *sub_298AE9CBC(void *result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = 16 * v1;
    result = (*result + 8);
    do
    {
      if (*(result - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        result = sub_298AE9D14(result);
      }

      result += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

void *sub_298AE9D14(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    for (i = 16376; i != -8; i -= 8)
    {
      v4 = *(v1 + i);
      *(v1 + i) = 0;
      if (v4)
      {
        if (*v4 != v4 + 2)
        {
          free(*v4);
        }

        MEMORY[0x29C2945F0](v4, 0x1080C40ABB4582ELL);
      }
    }

    MEMORY[0x29C2945F0](v1, 0x20C40B44FAD86);
    return v2;
  }

  return result;
}

uint64_t sub_298AE9DC0(void *a1)
{
  v1 = a1[12];
  a1[12] = 0;
  if (v1)
  {
    v10 = a1;
    MEMORY[0x29C2945F0](v1, 0x1020C400B1EFBD8);
    a1 = v10;
  }

  v2 = a1[11];
  a1[11] = 0;
  if (v2)
  {
    v11 = a1;
    MEMORY[0x29C2945F0](v2, 0x1020C400B1EFBD8);
    a1 = v11;
  }

  v3 = a1[10];
  a1[10] = 0;
  if (v3)
  {
    v12 = a1;
    MEMORY[0x29C2945F0](v3, 0x1020C400B1EFBD8);
    a1 = v12;
  }

  v4 = a1[9];
  a1[9] = 0;
  if (v4)
  {
    v13 = a1;
    MEMORY[0x29C2945F0](v4, 0x1020C400B1EFBD8);
    a1 = v13;
  }

  v5 = a1[8];
  a1[8] = 0;
  if (v5)
  {
    v14 = a1;
    MEMORY[0x29C2945F0](v5, 0x1020C400B1EFBD8);
    a1 = v14;
  }

  v6 = a1[7];
  a1[7] = 0;
  if (v6)
  {
    v15 = a1;
    MEMORY[0x29C2945F0](v6, 0x1020C400B1EFBD8);
    a1 = v15;
  }

  v7 = a1[6];
  a1[6] = 0;
  if (v7)
  {
    v16 = a1;
    MEMORY[0x29C2945F0](v7, 0x1020C400B1EFBD8);
    a1 = v16;
  }

  v8 = a1[5];
  a1[5] = 0;
  if (v8)
  {
    v17 = a1;
    MEMORY[0x29C2945F0](v8, 0x1020C400B1EFBD8);
    a1 = v17;
  }

  return sub_298AE9F6C(a1);
}

uint64_t sub_298AE9F6C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_298AE9FEC(void *a1)
{
  v2 = a1[12];
  a1[12] = 0;
  if (v2)
  {
    MEMORY[0x29C2945F0](v2, 0x1000C401449E693);
  }

  v3 = a1[11];
  a1[11] = 0;
  if (v3)
  {
    MEMORY[0x29C2945F0](v3, 0x1000C401449E693);
  }

  v4 = a1[10];
  a1[10] = 0;
  if (v4)
  {
    MEMORY[0x29C2945F0](v4, 0x1000C401449E693);
  }

  v5 = a1[9];
  a1[9] = 0;
  if (v5)
  {
    MEMORY[0x29C2945F0](v5, 0x1000C401449E693);
  }

  v6 = a1[8];
  a1[8] = 0;
  if (v6)
  {
    MEMORY[0x29C2945F0](v6, 0x1000C401449E693);
  }

  v7 = a1[7];
  a1[7] = 0;
  if (v7)
  {
    MEMORY[0x29C2945F0](v7, 0x1000C401449E693);
  }

  v8 = a1[6];
  a1[6] = 0;
  if (v8)
  {
    MEMORY[0x29C2945F0](v8, 0x1000C401449E693);
  }

  v9 = a1[5];
  a1[5] = 0;
  if (v9)
  {
    MEMORY[0x29C2945F0](v9, 0x1000C401449E693);
  }

  v10 = a1[3];
  if (v10 == a1)
  {
    (*(*v10 + 32))(v10);
    return a1;
  }

  else
  {
    if (v10)
    {
      (*(*v10 + 40))(v10);
    }

    return a1;
  }
}

void *sub_298AEA128(void *a1)
{
  v2 = a1[12];
  a1[12] = 0;
  if (v2)
  {
    v12 = sub_298AEA2E8(v2);
    MEMORY[0x29C2945F0](v12, 0x10E0C40D21384F6);
  }

  v3 = a1[11];
  a1[11] = 0;
  if (v3)
  {
    v13 = sub_298AEA2E8(v3);
    MEMORY[0x29C2945F0](v13, 0x10E0C40D21384F6);
  }

  v4 = a1[10];
  a1[10] = 0;
  if (v4)
  {
    v14 = sub_298AEA2E8(v4);
    MEMORY[0x29C2945F0](v14, 0x10E0C40D21384F6);
  }

  v5 = a1[9];
  a1[9] = 0;
  if (v5)
  {
    v15 = sub_298AEA2E8(v5);
    MEMORY[0x29C2945F0](v15, 0x10E0C40D21384F6);
  }

  v6 = a1[8];
  a1[8] = 0;
  if (v6)
  {
    v16 = sub_298AEA2E8(v6);
    MEMORY[0x29C2945F0](v16, 0x10E0C40D21384F6);
  }

  v7 = a1[7];
  a1[7] = 0;
  if (v7)
  {
    v17 = sub_298AEA2E8(v7);
    MEMORY[0x29C2945F0](v17, 0x10E0C40D21384F6);
  }

  v8 = a1[6];
  a1[6] = 0;
  if (v8)
  {
    v18 = sub_298AEA2E8(v8);
    MEMORY[0x29C2945F0](v18, 0x10E0C40D21384F6);
  }

  v9 = a1[5];
  a1[5] = 0;
  if (v9)
  {
    v19 = sub_298AEA2E8(v9);
    MEMORY[0x29C2945F0](v19, 0x10E0C40D21384F6);
  }

  v10 = a1[3];
  if (v10 == a1)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  return a1;
}

void *sub_298AEA2E8(void *a1)
{
  v2 = a1[89];
  a1[89] = 0;
  if (v2)
  {
    sub_298AE9468(v2);
  }

  v3 = a1[86];
  if (v3)
  {
    v4 = *v3;
    operator delete(v3);
    if (v4)
    {
      do
      {
        v17 = *v4;
        operator delete(v4);
        v4 = v17;
      }

      while (v17);
    }
  }

  v5 = a1[84];
  a1[84] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[82];
  a1[82] = 0;
  if (v6)
  {
    sub_298AEA480((a1 + 82), v6);
  }

  v7 = a1[79];
  a1[79] = 0;
  if (v7)
  {
    sub_298AEA480((a1 + 79), v7);
  }

  v8 = a1[76];
  a1[76] = 0;
  if (v8)
  {
    sub_298AEA480((a1 + 76), v8);
  }

  v9 = a1[73];
  a1[73] = 0;
  if (v9)
  {
    sub_298AEA480((a1 + 73), v9);
  }

  v10 = a1[70];
  a1[70] = 0;
  if (v10)
  {
    sub_298AEA480((a1 + 70), v10);
  }

  v11 = a1[67];
  a1[67] = 0;
  if (v11)
  {
    sub_298AEA480((a1 + 67), v11);
  }

  v12 = a1[64];
  a1[64] = 0;
  if (v12)
  {
    sub_298AEA480((a1 + 64), v12);
  }

  v13 = a1[61];
  a1[61] = 0;
  if (v13)
  {
    sub_298AEA480((a1 + 61), v13);
  }

  v14 = a1[54];
  a1[54] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = a1[43];
  a1[43] = 0;
  if (v15)
  {
    MEMORY[0x29C2945F0](v15, 0x1020C40A2194CFDLL);
  }

  return a1;
}

void sub_298AEA480(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2 + 155768;
    v3 = a2 + 131128;
    MEMORY[0x29C2945E0](*(a2 + 155808), 8);
    v4 = *(v2 + 16);
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = *v2;
    *v2 = 0;
    if (v6)
    {
      operator delete(v6);
    }

    v7 = *(v3 + 16);
    if (v7)
    {
      do
      {
        v8 = *v7;
        operator delete(v7);
        v7 = v8;
      }

      while (v8);
    }

    v9 = *v3;
    *v3 = 0;
    if (v9)
    {
      operator delete(v9);
    }

    JUMPOUT(0x29C2945F0);
  }
}

uint64_t sub_298AEA548(void *a1)
{
  v1 = a1[12];
  a1[12] = 0;
  if (v1)
  {
    v10 = a1;
    (*(*v1 + 8))(v1);
    a1 = v10;
  }

  v2 = a1[11];
  a1[11] = 0;
  if (v2)
  {
    v11 = a1;
    (*(*v2 + 8))(v2);
    a1 = v11;
  }

  v3 = a1[10];
  a1[10] = 0;
  if (v3)
  {
    v12 = a1;
    (*(*v3 + 8))(v3);
    a1 = v12;
  }

  v4 = a1[9];
  a1[9] = 0;
  if (v4)
  {
    v13 = a1;
    (*(*v4 + 8))(v4);
    a1 = v13;
  }

  v5 = a1[8];
  a1[8] = 0;
  if (v5)
  {
    v14 = a1;
    (*(*v5 + 8))(v5);
    a1 = v14;
  }

  v6 = a1[7];
  a1[7] = 0;
  if (v6)
  {
    v15 = a1;
    (*(*v6 + 8))(v6);
    a1 = v15;
  }

  v7 = a1[6];
  a1[6] = 0;
  if (v7)
  {
    v16 = a1;
    (*(*v7 + 8))(v7);
    a1 = v16;
  }

  v8 = a1[5];
  a1[5] = 0;
  if (v8)
  {
    v17 = a1;
    (*(*v8 + 8))(v8);
    a1 = v17;
  }

  return sub_298AE9F6C(a1);
}

void sub_298AEA774(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_298AEA7C8(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_298AEA7C8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  while (v2 != a2)
  {
    v4 = *--v2;
    v3 = v4;
    *v2 = 0;
    if (v4)
    {
      v5 = result;
      v6 = a2;
      (*(*v3 + 8))(v3);
      result = v5;
      a2 = v6;
    }
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_298AEA844(uint64_t a1)
{
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  std::mutex::~mutex((a1 + 112));
  std::mutex::~mutex((a1 + 16));
  return a1;
}

void *sub_298AEA88C(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_298ADDDA0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    sub_298AEA980(v4);
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  sub_298C094FC(v5, a2);
  v6 = v5 + 3;
  v7 = *a1;
  v8 = *(a1 + 8) - *a1;
  v9 = v5 - v8;
  memcpy(v9, *a1, v8);
  *a1 = v9;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_298AEA980(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {

    operator new();
  }

  sub_298ADDDA0();
}

__n128 sub_298AEAA40(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1B938;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_298AEAA7C(os_signpost_id_t a1, os_log_t log)
{
  if (a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v2;
    v8 = v3;
    if (os_signpost_enabled(log))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, log, OS_SIGNPOST_INTERVAL_END, a1, "Trace::load", &unk_298EC00B5, v6, 2u);
    }
  }
}

uint64_t *sub_298AEAAF8(uint64_t *result)
{
  if ((result[1] & 1) == 0)
  {
    return sub_298AE6830(result);
  }

  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

uint64_t sub_298AEAB60(uint64_t a1)
{
  sub_298BF26BC(a1 + 816);
  sub_298AEABBC(a1 + 776);
  MEMORY[0x29C2945E0](*(a1 + 752), 8);
  sub_298AEAC50(a1 + 720);
  sub_298AEB000(a1 + 656, *(a1 + 664));
  sub_298AEB078(a1 + 8);
  return a1;
}

uint64_t sub_298AEABBC(uint64_t a1)
{
  sub_298AEABF8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_298AEABF8(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        v4 = v2;
        operator delete(v2[2]);
        v2 = v4;
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_298AEAC50(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 8 * v3;
      do
      {
        v6 = *(*a1 + v4);
        if (v6 != -8 && v6 != 0)
        {
          v8 = *(v6 + 8);
          *(v6 + 8) = 0;
          if (v8)
          {
            v9 = v8[3];
            v8[3] = 0;
            if (v9)
            {
              v13 = v8;
              (*(*v9 + 8))(v9);
              v8 = v13;
            }

            v10 = v8[2];
            v8[2] = 0;
            if (v10)
            {
              v14 = v8;
              (*(*v10 + 8))(v10);
              v8 = v14;
            }

            v11 = v8[1];
            v8[1] = 0;
            if (v11)
            {
              v12 = sub_298AEAF14(v11);
              MEMORY[0x29C2945F0](v12, 0x1070C401CED0764);
            }

            MEMORY[0x29C2945F0]();
          }

          MEMORY[0x29C2945E0](v6, 8);
        }

        v4 += 8;
      }

      while (v5 != v4);
    }
  }

  free(*a1);
  return a1;
}

void *sub_298AEADB8(void *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v4 = result[3];
    result[3] = 0;
    if (v4)
    {
      v7 = result;
      (*(*v4 + 8))(v4);
      result = v7;
    }

    v5 = result[2];
    result[2] = 0;
    if (v5)
    {
      v8 = result;
      (*(*v5 + 8))(v5);
      result = v8;
    }

    v6 = result[1];
    result[1] = 0;
    if (v6)
    {
      v9 = sub_298AEAF14(v6);
      MEMORY[0x29C2945F0](v9, 0x1070C401CED0764);
    }

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

void *sub_298AEAEBC(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v4 = v1;
    v5 = sub_298AEAF14(v2);
    MEMORY[0x29C2945F0](v5, 0x1070C401CED0764);
    return v4;
  }

  return v1;
}

void *sub_298AEAF14(void *result)
{
  v1 = result[1];
  result[1] = 0;
  if (v1)
  {
    v3 = result;
    sub_298AEAF94((result + 1), v1);
    result = v3;
  }

  v2 = *result;
  *result = 0;
  if (v2)
  {
    v4 = result;
    (*(*v2 + 16))(v2);
    return v4;
  }

  return result;
}

void sub_298AEAF94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 40);
    *(a2 + 40) = 0;
    if (v2)
    {
      MEMORY[0x29C2945C0](v2, 0x1000C8077774924);
    }

    JUMPOUT(0x29C2945F0);
  }
}

void sub_298AEB000(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_298AEB000(a1, *a2);
    sub_298AEB000(a1, a2[1]);
    v4 = a2[5];
    a2[5] = 0;
    if (v4)
    {
      v5 = sub_298AEB078(v4);
      MEMORY[0x29C2945F0](v5, 0x10B0C40D0DCDF36);
    }

    operator delete(a2);
  }
}

uint64_t sub_298AEB078(uint64_t a1)
{
  if (*(a1 + 632) == 1)
  {
    sub_298AEB154(a1 + 592);
  }

  v2 = *(a1 + 584);
  *(a1 + 584) = 0;
  if (v2)
  {
    v3 = sub_298AEB1D4(v2);
    MEMORY[0x29C2945F0](v3, 0x1020C40F7ECFFB9);
  }

  v4 = *(a1 + 560);
  if (v4)
  {
    *(a1 + 568) = v4;
    operator delete(v4);
  }

  v7 = (a1 + 536);
  sub_298AEB2A4(&v7);
  sub_298AEB35C((a1 + 512));
  sub_298AEB3FC(a1 + 472);
  v7 = (a1 + 448);
  sub_298AEB4C8(&v7);
  v5 = *(a1 + 424);
  if (v5)
  {
    *(a1 + 432) = v5;
    operator delete(v5);
  }

  v7 = (a1 + 400);
  sub_298AEB644(&v7);
  sub_298AEB71C(a1 + 64);
  sub_298AEB7B0(a1 + 8);
  return a1;
}

uint64_t sub_298AEB154(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        while (1)
        {
          v5 = *(v3 - 57);
          v3 -= 10;
          if (v5 < 0)
          {
            break;
          }

          if (v3 == v2)
          {
            goto LABEL_7;
          }
        }

        operator delete(*v3);
      }

      while (v3 != v2);
LABEL_7:
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  sub_298AEAEBC((a1 + 8));
  return a1;
}

uint64_t sub_298AEB1D4(uint64_t a1)
{
  std::mutex::~mutex((a1 + 152));
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = *(a1 + 136);
    v4 = *(a1 + 128);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          MEMORY[0x29C2945C0](v5, 0x1000C8077774924);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 128);
    }

    *(a1 + 136) = v2;
    operator delete(v4);
  }

  MEMORY[0x29C2945E0](*(a1 + 104), 8);
  std::mutex::~mutex((a1 + 40));
  MEMORY[0x29C2945E0](*(a1 + 16), 8);
  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    sub_298C3D890(v7);
    MEMORY[0x29C2945F0]();
  }

  return a1;
}

void sub_298AEB2A4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_298AEB2F8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_298AEB2F8(void *result)
{
  v1 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    do
    {
      if (*(v2 - 17) < 0)
      {
        v3 = result;
        operator delete(*(v2 - 40));
        result = v3;
      }

      v2 -= 56;
    }

    while (v2 != v1);
  }

  result[1] = v1;
  return result;
}

unsigned int *sub_298AEB35C(unsigned int *a1)
{
  sub_298AEB390(a1);
  MEMORY[0x29C2945E0](*a1, 8);
  return a1;
}

void sub_298AEB390(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = 32 * v1;
    v3 = (*a1 + 16);
    do
    {
      if ((*(v3 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *(v3 - 1);
        if (v4)
        {
          *v3 = v4;
          operator delete(v4);
        }
      }

      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }
}

uint64_t sub_298AEB3FC(uint64_t a1)
{
  sub_298AEB438(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_298AEB438(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_298AEB47C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

std::mutex *sub_298AEB47C(uint64_t a1)
{
  result = *(a1 + 8);
  *(a1 + 8) = 0;
  if (result)
  {
    std::mutex::~mutex(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

void sub_298AEB4C8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 176;
        sub_298AEB558(v1, v3);
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;

    operator delete(v4);
  }
}

void sub_298AEB558(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 168);
  *(a2 + 168) = 0;
  if (v3)
  {
    MEMORY[0x29C2945C0](v3, 0x1000C8077774924);
  }

  v4 = *(a2 + 160);
  *(a2 + 160) = 0;
  if (v4)
  {
    sub_298AEB5EC(a2 + 160, v4);
  }

  if (*(a2 + 127) < 0)
  {
    operator delete(*(a2 + 104));
  }

  if (*(a2 + 31) < 0)
  {
    v5 = *(a2 + 8);

    operator delete(v5);
  }
}

void sub_298AEB5EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_298AE9B00(a2, *(a2 + 8));

    JUMPOUT(0x29C2945F0);
  }
}

void sub_298AEB644(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_298AEB698(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_298AEB698(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  while (v2 != a2)
  {
    v4 = *--v2;
    v3 = v4;
    *v2 = 0;
    if (v4)
    {
      v7 = result;
      v5 = v2;
      v6 = a2;
      (*(*v3 + 8))(v3);
      v2 = v5;
      a2 = v6;
      result = v7;
    }
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_298AEB71C(uint64_t a1)
{
  if (*(a1 + 296))
  {
    sub_298ADDE08(a1 + 104, sub_298ADE160, 0);
    *(a1 + 296) = 0;
    *(a1 + 264) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
  }

  *(a1 + 300) = 0;
  *a1 = 0;
  sub_298AE9670(a1 + 8);
  return a1;
}

uint64_t sub_298AEB7B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  sub_298AE9B00(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t sub_298AEB7F8(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = *result;
    *result = 0;
    if (!v1)
    {
      return result;
    }

    v2 = result;
    (*(*v1 + 8))(v1);
  }

  else
  {
    v2 = result;
    sub_298AE99B0(result, 0);
  }

  return v2;
}

__n128 sub_298AEB8E4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1B980;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_298AEB924(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if ((*a1 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = *(a1 + 8);
    if (os_signpost_enabled(v3))
    {
      v4 = *(**(a1 + 16) + 8);
      v7 = *(v4 + 72);
      v5 = v4 + 72;
      v6 = v7;
      if (*(v5 + 23) < 0)
      {
        v5 = v6;
      }

      v9 = 136315138;
      v10 = v5;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v3, OS_SIGNPOST_INTERVAL_END, v1, "Trace::decode", "system=%s", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t *sub_298AEB9FC(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_298AEBA48(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t *sub_298AEBA48(uint64_t *a1)
{
  sub_298AE7C28((a1 + 21));
  sub_298AE88F0((a1 + 14));
  v5 = a1 + 11;
  sub_298AE8D1C(&v5);
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  sub_298AEBAD0((a1 + 2));
  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    sub_298AE9468(v3);
  }

  sub_298AE99B0(a1, 0);
  return a1;
}

uint64_t sub_298AEBAD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        v5 = v2;
        v6 = sub_298AEA844(v4);
        MEMORY[0x29C2945F0](v6, 0x1072C404FB9E85FLL);
        v2 = v5;
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return a1;
}

void *sub_298AEBB68(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_15;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] <= 1uLL)
  {
    v7 = (*&v5 - 1) & v4;
  }

  else
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_15:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] <= 1uLL)
    {
      v10 &= *&v5 - 1;
    }

    else if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_15;
    }

LABEL_14:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_14;
  }

  return v9;
}

void sub_298AEBDC8(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    __n = 2;
  }

  else if ((__n & (__n - 1)) != 0)
  {
    v3 = a1;
    __n = std::__next_prime(__n);
    a1 = v3;
  }

  v2 = *(a1 + 8);
  if (__n > *&v2)
  {
    goto LABEL_4;
  }

  if (__n < *&v2)
  {
    v4 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v2 < 3uLL || (v5 = vcnt_s8(v2), v5.i16[0] = vaddlv_u8(v5), v5.u32[0] > 1uLL))
    {
      v7 = a1;
      v8 = __n;
      prime = std::__next_prime(v4);
      __n = v8;
      v4 = prime;
      a1 = v7;
    }

    else
    {
      v6 = 1 << -__clz(v4 - 1);
      if (v4 >= 2)
      {
        v4 = v6;
      }
    }

    if (__n <= v4)
    {
      __n = v4;
    }

    if (__n < *&v2)
    {
LABEL_4:

      sub_298AE8270(a1, __n);
    }
  }
}

uint64_t sub_298AEBEC8(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_298AEB9FC(v1 + 3, 0);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *sub_298AEBF18(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] <= 1uLL)
  {
    v7 = (*&v2 - 1) & v5;
  }

  else
  {
    v7 = v5 < *&v2 ? v5 : v5 % *&v2;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] <= 1uLL)
        {
          v10 &= *&v2 - 1;
        }

        else if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }

        if (v10 != v7)
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

uint64_t *sub_298AEC0D4(uint64_t *a1)
{
  v2 = (a1 + 1);
  **a1 = 0;
  sub_298AEC12C((a1 + 11));
  sub_298AEC1B4((a1 + 6));
  sub_298AEC1B4(v2);

  return sub_298AE71CC(a1);
}

uint64_t sub_298AEC12C(uint64_t a1)
{
  sub_298AEC168(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t **sub_298AEC168(uint64_t **result)
{
  if (result)
  {
    do
    {
      v1 = *result;
      v2 = result;
      sub_298AEB9FC(result + 3, 0);
      operator delete(v2);
      result = v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_298AEC1B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *v2;
    operator delete(v2);
    if (v3)
    {
      v4 = *v3;
      operator delete(v3);
      if (v4)
      {
        v5 = *v4;
        operator delete(v4);
        if (v5)
        {
          v6 = *v5;
          operator delete(v5);
          if (v6)
          {
            v7 = *v6;
            operator delete(v6);
            if (v7)
            {
              v8 = *v7;
              operator delete(v7);
              if (v8)
              {
                v9 = *v8;
                operator delete(v8);
                if (v9)
                {
                  do
                  {
                    v10 = *v9;
                    operator delete(v9);
                    v9 = v10;
                  }

                  while (v10);
                }
              }
            }
          }
        }
      }
    }
  }

  v11 = *a1;
  *a1 = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return a1;
}

uint64_t *sub_298AEC278(uint64_t *result)
{
  v1 = *(result + 8);
  v2 = *result;
  *result = 0;
  if (v1)
  {
    if (!v2)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v2)
  {
LABEL_3:
    v3 = result;
    (*(*v2 + 8))(v2);
    return v3;
  }

  return result;
}

uint64_t sub_298AEC30C(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_298C207BC(*(a2 + 8), &v5);
  if (v5 != v6)
  {
    v3 = *v5;
    operator new();
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_298AEC410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v4 = *(a3 + 96);
  v5 = (*(a3 + 104) - v4) >> 3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_298BC2978(a1 + 32, v4, v5);
  *(a1 + 144) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 1;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  if (*(a1 + 24))
  {
    v6 = **(a1 + 16);
    operator new();
  }

  return a1;
}

void sub_298AEC6A0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock((a1 + 80));
  if (!*(a1 + 144) && (*(***(a1 + 16) + 16))(**(a1 + 16)) != 1)
  {
    v6 = *(*a1 + 8);
    v7 = **v6;
    v8 = *v7;
    v9 = (*v7)[12];
    if (v9)
    {
      v10 = 0x9DDFEA08EB382D69 * ((8 * (*(*a1 + 8) & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*(*a1 + 8)));
      v11 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v10 >> 47) ^ v10);
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = vcnt_s8(v9);
      v13.i16[0] = vaddlv_u8(v13);
      if (v13.u32[0] <= 1uLL)
      {
        v14 = v12 & (*&v9 - 1);
      }

      else
      {
        v14 = v12;
        if (v12 >= *&v9)
        {
          v14 = v12 % *&v9;
        }
      }

      v15 = *(*&v8[11] + 8 * v14);
      if (v15)
      {
        v16 = *v15;
        if (v16)
        {
          if (v13.u32[0] >= 2uLL)
          {
            while (1)
            {
              v19 = v16[1];
              if (v12 == v19)
              {
                if (v16[2] == v6)
                {
LABEL_25:
                  sub_298BB33B0(*(a1 + 16), (*(a1 + 24) - *(a1 + 16)) >> 3, *(v16[3] + 8), a2);
                }
              }

              else
              {
                if (v19 >= *&v9)
                {
                  v19 %= *&v9;
                }

                if (v19 != v14)
                {
                  goto LABEL_24;
                }
              }

              v16 = *v16;
              if (!v16)
              {
                goto LABEL_24;
              }
            }
          }

          v17 = *&v9 - 1;
          do
          {
            v18 = v16[1];
            if (v12 == v18)
            {
              if (v16[2] == v6)
              {
                goto LABEL_25;
              }
            }

            else if ((v18 & v17) != v14)
            {
              break;
            }

            v16 = *v16;
          }

          while (v16);
        }
      }
    }

LABEL_24:
    abort();
  }

  v20 = *(a1 + 16);
  v21 = (*(a1 + 24) - v20) >> 3;
  v22 = *(a1 + 144);
  *a3 = v20;
  *(a3 + 8) = v21;
  *(a3 + 16) = v22;
  *(a3 + 24) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = a3 + 144;
  *(a3 + 136) = 0x600000000;
  std::mutex::unlock((a1 + 80));
}

void *sub_298AEC92C(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = result;
    sub_298AEF6D0((v3 + 88));
    v5 = *(v3 + 56);
    if (v5 != (v3 + 72))
    {
      free(v5);
    }

    MEMORY[0x29C2945F0](v3, 0x10A0C405B6220C9);
    return v4;
  }

  return result;
}

void sub_298AEC9A0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock((a1 + 40));
  v6 = *(a1 + 104);
  if (!v6)
  {
    v7 = *(*a1 + 8);
    v8 = **v7;
    v9 = *v8;
    v10 = (*v8)[12];
    if (v10)
    {
      v11 = 0x9DDFEA08EB382D69 * ((8 * (*(*a1 + 8) & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*(*a1 + 8)));
      v12 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ (v11 >> 47) ^ v11);
      v13 = 0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47));
      v14 = vcnt_s8(v10);
      v14.i16[0] = vaddlv_u8(v14);
      if (v14.u32[0] <= 1uLL)
      {
        v15 = v13 & (*&v10 - 1);
      }

      else
      {
        v15 = v13;
        if (v13 >= *&v10)
        {
          v15 = v13 % *&v10;
        }
      }

      v16 = *(*&v9[11] + 8 * v15);
      if (v16)
      {
        v17 = *v16;
        if (v17)
        {
          if (v14.u32[0] < 2uLL)
          {
            v18 = *&v10 - 1;
            while (1)
            {
              v20 = v17[1];
              if (v13 == v20)
              {
                if (v17[2] == v7)
                {
                  goto LABEL_22;
                }
              }

              else if ((v20 & v18) != v15)
              {
                goto LABEL_17;
              }

              v17 = *v17;
              if (!v17)
              {
                goto LABEL_17;
              }
            }
          }

          do
          {
            v19 = v17[1];
            if (v13 == v19)
            {
              if (v17[2] == v7)
              {
LABEL_22:
                sub_298BB33B0(*(a1 + 16), (*(a1 + 24) - *(a1 + 16)) >> 3, *(v17[3] + 8), a2);
              }
            }

            else
            {
              if (v19 >= *&v10)
              {
                v19 %= *&v10;
              }

              if (v19 != v15)
              {
                break;
              }
            }

            v17 = *v17;
          }

          while (v17);
        }
      }
    }

LABEL_17:
    abort();
  }

  v21 = *(a1 + 16);
  v22 = (*(a1 + 24) - v21) >> 3;
  *a3 = v21;
  *(a3 + 8) = v22;
  *(a3 + 16) = v6;
  *(a3 + 24) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = a3 + 144;
  *(a3 + 136) = 0x600000000;
  std::mutex::unlock((a1 + 40));
}

void sub_298AECBC4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v4[0] = a2;
  v3 = *sub_298C16B60(v2 + 456, v4);
  if (!v3)
  {
    operator new();
  }

  sub_298C16358(v4, v3);
  operator new();
}

uint64_t sub_298AECDDC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v25 = a3;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_2A1F1B9C8;
  *(a1 + 40) = a6;
  *(a1 + 48) = 850045863;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = a6;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 208) = 1065353216;
  *(a1 + 216) = 1;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1065353216;
  *(a1 + 288) = a5;
  v10 = sub_298C17B1C(*(a2 + 8), a3);
  if (v10)
  {
    v11 = *(v10 + 23);
    v12 = *v10;
    if (v11 >= 0)
    {
      v12 = v10;
    }

    if (v11 < 0)
    {
      v11 = *(v10 + 8);
    }

    *(a1 + 24) = v12;
    *(a1 + 32) = v11;
  }

  v22 = 0;
  __dst = 0;
  v24 = 0;
  v13 = *sub_298AED67C((a5 + 15), &v25);
  v14 = sub_298AED67C((a5 + 15), &v25);
  sub_298AED100(&v22, v13, v14 + 1);
  sub_298AEFCA8(&v22, __dst, *(a4 + 24), (*(a4 + 24) + 8 * *(a4 + 32)), *(a4 + 32));
  v16 = v22;
  v15 = __dst;
  std::__sort<std::__less<unsigned long long,unsigned long long> &,unsigned long long *>();
  v17 = sub_298AF00A4(v16, v15);
  if (v17 != v15)
  {
    v15 = v17;
  }

  if (v16 != v15)
  {
    v18 = *v16;
    v21[2] = a1;
    v21[3] = v18;
    v21[0] = a3;
    v21[1] = v18;
    v26 = v21;
    sub_298AF012C(a5, a3, v18);
    sub_298AED76C();
  }

  v19 = sub_298AED67C((a5 + 12), &v25);
  if (*v19 != v19 + 1)
  {
    v26 = *(*v19 + 32);
    v21[0] = a1;
    sub_298AEDE30((a5 + 7), &v26);
    sub_298AEDD90();
  }

  if (v16)
  {
    operator delete(v16);
  }

  return a1;
}

void sub_298AED100(uint64_t *a1, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = 0;
    v4 = 0;
    v5 = -8;
    v6 = 8;
    v7 = a2;
    do
    {
      v8 = v4;
      v9 = v6;
      v10 = v5;
      v11 = v3;
      v12 = v7[1];
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
          v13 = v7[2];
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      ++v4;
      v6 -= 8;
      v5 -= 8;
      v3 = v11 - 8;
      v7 = v13;
    }

    while (v13 != a3);
    v15 = a1[1];
    v16 = a1[2];
    if (v8 >= (v16 - v15) >> 3)
    {
      v38 = *a1;
      v39 = v4 + ((v15 - *a1) >> 3);
      if (v39 >> 61)
      {
        sub_298ADDDA0();
      }

      if ((v16 - v38) >> 2 > v39)
      {
        v39 = (v16 - v38) >> 2;
      }

      if ((v16 - v38) >= 0x7FFFFFFFFFFFFFF8)
      {
        v40 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v40 = v39;
      }

      if (v40)
      {
        if (!(v40 >> 61))
        {
          operator new();
        }

        sub_298ADDDA0();
      }

      v45 = 8 * (-v38 >> 3);
      v46 = (v45 + 8 * v4);
      v47 = v45;
      do
      {
        *v47 = a2[4];
        v47 += 8;
        v48 = a2[1];
        if (v48)
        {
          do
          {
            v49 = v48;
            v48 = *v48;
          }

          while (v48);
        }

        else
        {
          do
          {
            v49 = a2[2];
            v14 = *v49 == a2;
            a2 = v49;
          }

          while (!v14);
        }

        a2 = v49;
      }

      while (v47 != v46);
      v50 = a1[1];
      memcpy(v46, 0, v50);
      v52 = &v46[v50];
      a1[1] = 0;
      v53 = *a1;
      v54 = (v45 + *a1);
      memcpy(v54, *a1, -*a1);
      *a1 = v54;
      a1[1] = v52;
      a1[2] = 0;
      if (v53)
      {

        operator delete(v53);
      }
    }

    else
    {
      v17 = v15 >> 3;
      if (v15 >> 3 <= v8)
      {
        if (v17 < 0)
        {
          v59 = v15 >> 3;
          v60 = a2;
          do
          {
            v61 = *v60;
            if (*v60)
            {
              do
              {
                v44 = v61;
                v61 = v61[1];
              }

              while (v61);
            }

            else
            {
              do
              {
                v44 = v60[2];
                v14 = *v44 == v60;
                v60 = v44;
              }

              while (v14);
            }

            v60 = v44;
            v31 = __CFADD__(v59++, 1);
          }

          while (!v31);
        }

        else if (v15)
        {
          v41 = v15 >> 3;
          v42 = a2;
          do
          {
            v43 = v42[1];
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
                v44 = v42[2];
                v14 = *v44 == v42;
                v42 = v44;
              }

              while (!v14);
            }

            v42 = v44;
            v22 = v41-- <= 1;
          }

          while (!v22);
        }

        else
        {
          v44 = a2;
        }

        if (v44 == a3)
        {
          v62 = a1[1];
        }

        else
        {
          v79 = v44;
          v62 = a1[1];
          do
          {
            *v62 = v79[4];
            v80 = v79[1];
            if (v80)
            {
              do
              {
                v81 = v80;
                v80 = *v80;
              }

              while (v80);
            }

            else
            {
              do
              {
                v81 = v79[2];
                v14 = *v81 == v79;
                v79 = v81;
              }

              while (!v14);
            }

            ++v62;
            v79 = v81;
          }

          while (v81 != a3);
        }

        a1[1] = v62;
        if (v17 >= 1)
        {
          v63 = 8 * v4;
          v64 = &v62[-v4];
          if (v64 >= v15)
          {
            v69 = v62;
          }

          else
          {
            v65 = &v62[-v8];
            if (v15 > v65)
            {
              v65 = v15;
            }

            v66 = v65 - v62 + 8 * v8 + 7;
            v67 = v66 >= 0x18 && v63 > 0x1F;
            v68 = &v62[-v4];
            v69 = v62;
            if (!v67)
            {
              goto LABEL_121;
            }

            v70 = (v66 >> 3) + 1;
            v71 = v70 & 0x3FFFFFFFFFFFFFFCLL;
            v68 = (v64 + v71 * 8);
            v69 = &v62[v71];
            v72 = v62 + v11;
            if (v15 > v62 + v11)
            {
              v72 = v15;
            }

            v73 = (((v72 - v62 - v11 + 7) >> 3) + 1) & 0x3FFFFFFFFFFFFFFCLL;
            v74 = v62 + 2;
            v75 = (v62 + v10);
            do
            {
              v76 = *v75;
              v77 = v75[1];
              v75 += 2;
              *(v74 - 1) = v76;
              *v74 = v77;
              v74 += 2;
              v73 -= 4;
            }

            while (v73);
            if (v70 != (v70 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_121:
              do
              {
                v78 = *v68++;
                *v69++ = v78;
              }

              while (v68 < v15);
            }
          }

          a1[1] = v69;
          if (v62 != v63)
          {
            v82 = (8 * v4);
            v83 = a2;
            memmove(v82, 0, v64);
            a2 = v83;
          }

          if (v44 != a2)
          {
            v84 = 0;
            do
            {
              *v84 = a2[4];
              v85 = a2[1];
              if (v85)
              {
                do
                {
                  v86 = v85;
                  v85 = *v85;
                }

                while (v85);
              }

              else
              {
                do
                {
                  v86 = a2[2];
                  v14 = *v86 == a2;
                  a2 = v86;
                }

                while (!v14);
              }

              ++v84;
              a2 = v86;
            }

            while (v86 != v44);
          }
        }
      }

      else
      {
        v18 = 8 * v4;
        v19 = v15 - 8 * v4;
        if (v19 >= v15)
        {
          v24 = a1[1];
        }

        else
        {
          v20 = -8 * v8;
          if (v15 - 8 * v8 < v15)
          {
            v20 = 0;
          }

          v21 = v20 + 8 * v8 + 7;
          v22 = v21 >= 0x18 && v18 > 0x1F;
          v23 = (v15 - 8 * v4);
          v24 = a1[1];
          if (!v22)
          {
            goto LABEL_122;
          }

          v25 = (v21 >> 3) + 1;
          v26 = 8 * (v25 & 0x3FFFFFFFFFFFFFFCLL);
          v23 = (v19 + v26);
          v24 = (v15 + v26);
          v27 = (v15 + 16);
          v28 = (v15 + v9);
          v29 = (v15 + v10);
          v30 = v15 + v11;
          v31 = v15 >= v30;
          v32 = v15 - v30;
          if (!v31)
          {
            v32 = 0;
          }

          v33 = (((v32 + 7) >> 3) + 1) & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v34 = *v29;
            v29 += 2;
            v35 = v34;
            v36 = *v28;
            v28 += 2;
            *(v27 - 1) = v35;
            *v27 = v36;
            v27 += 2;
            v33 -= 4;
          }

          while (v33);
          if (v25 != (v25 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_122:
            do
            {
              v37 = *v23++;
              *v24++ = v37;
            }

            while (v23 < v15);
          }
        }

        a1[1] = v24;
        if (v15 != v18)
        {
          v55 = a2;
          memmove((8 * v4), 0, v19);
          a2 = v55;
        }

        MEMORY[0] = a2[4];
        if (v8)
        {
          v56 = 0;
          do
          {
            v57 = a2[1];
            if (v57)
            {
              do
              {
                v58 = v57;
                v57 = *v57;
              }

              while (v57);
            }

            else
            {
              do
              {
                v58 = a2[2];
                v14 = *v58 == a2;
                a2 = v58;
              }

              while (!v14);
            }

            *(v56 + 8) = v58[4];
            v56 += 8;
            a2 = v58;
            v22 = v4-- <= 2;
          }

          while (!v22);
        }
      }
    }
  }
}

void *sub_298AED67C(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= v3)
    {
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_298AEDD38(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v4 = v1;
    v5 = sub_298AF0830(v2);
    MEMORY[0x29C2945F0](v5, 0x10E0C40352473CALL);
    return v4;
  }

  return v1;
}

uint64_t sub_298AEDE30(uint64_t a1, uint64_t *a2)
{
  v25 = *a2;
  v26 = 0;
  sub_298AF0E28(a1, &v25, &v26, &v23);
  v4 = v23;
  if (v24)
  {
    v5 = *(a1 + 24);
    v19 = *a2;
    __p = 0;
    v21 = 0;
    v22 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = *(a1 + 32);
    v7 = &v19;
    if (v6 >= *(a1 + 36))
    {
      if (v5 <= &v19 && v5 + 32 * v6 > &v19)
      {
        v14 = &v19 - v5;
        sub_298AF123C(a1 + 24, v6 + 1);
        v5 = *(a1 + 24);
        v7 = &v14[v5];
      }

      else
      {
        sub_298AF123C(a1 + 24, v6 + 1);
        v5 = *(a1 + 24);
        v7 = &v19;
      }
    }

    v8 = (v5 + 32 * *(a1 + 32));
    *v8 = *v7;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = 0;
    *(v8 + 1) = *(v7 + 8);
    v8[3] = *(v7 + 3);
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    ++*(a1 + 32);
    v9 = __p;
    if (__p)
    {
      v12 = v21;
      v13 = __p;
      if (v21 != __p)
      {
        do
        {
          v16 = *--v12;
          v15 = v16;
          *v12 = 0;
          if (v16)
          {
            v17 = v12;
            (*(*v15 + 8))(v15);
            v12 = v17;
          }
        }

        while (v12 != v9);
        v13 = __p;
      }

      v21 = v9;
      operator delete(v13);
    }

    sub_298AF0458(v18);
    v10 = *(a1 + 32) - 1;
    *(v4 + 8) = v10;
  }

  else
  {
    v10 = *(v23 + 8);
  }

  return *(a1 + 24) + 32 * v10 + 8;
}

void *sub_298AEDFE8(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 104);
    *(v1 + 104) = 0;
    if (v3)
    {
      sub_298AEF6D0((v3 + 88));
      v4 = *(v3 + 56);
      if (v4 != (v3 + 72))
      {
        free(v4);
      }

      MEMORY[0x29C2945F0](v3, 0x10A0C405B6220C9);
    }

    std::mutex::~mutex((v1 + 40));
    sub_298AF0458((v1 + 16));
    MEMORY[0x29C2945F0](v1, 0x1060C40A8AC5033);
    return v2;
  }

  return result;
}

uint64_t sub_298AEE090(int8x8_t *a1, unint64_t a2)
{
  v2 = a1[3];
  if (!*&v2 || ((v3 = 0x9DDFEA08EB382D69 * (((((a2 >> 3) & 0x3FFFFFF) << 6) | 8) ^ HIDWORD(a2)), v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3)) >> 47)), v5 = vcnt_s8(v2), v5.i16[0] = vaddlv_u8(v5), v5.u32[0] <= 1uLL) ? (v6 = (*&v2 - 1) & v4) : v4 < *&v2 ? (v6 = v4) : (v6 = v4 % *&v2), (v7 = *(*&a1[2] + 8 * v6)) == 0 || (v8 = *v7) == 0))
  {
LABEL_15:
    abort();
  }

  if (v5.u32[0] < 2uLL)
  {
    v9 = *&v2 - 1;
    while (1)
    {
      v11 = v8[1];
      if (v4 == v11)
      {
        if (v8[2] == a2)
        {
          return v8[3];
        }
      }

      else if ((v11 & v9) != v6)
      {
        goto LABEL_15;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v10 = v8[1];
    if (v4 == v10)
    {
      break;
    }

    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }

    if (v10 != v6)
    {
      goto LABEL_15;
    }

LABEL_10:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  if (v8[2] != a2)
  {
    goto LABEL_10;
  }

  return v8[3];
}

uint64_t hwtrace_topology_systems(uint64_t result, void *a2, uint64_t *a3)
{
  v3 = *(result + 16);
  *a2 = v3;
  *(result + 8) = 0;
  *a3 = (*(result + 24) - v3) >> 3;
  return result;
}

uint64_t hwtrace_system_name(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = *(v1 + 72);
  v2 = v1 + 72;
  v3 = v4;
  if (*(v2 + 23) >= 0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t hwtrace_system_did_wrap(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = 8 * v1 - 8;
  do
  {
    v4 = *v2++;
    result = *(v4 + 96);
    if (result)
    {
      break;
    }

    v6 = v3;
    v3 -= 8;
  }

  while (v6);
  return result;
}

char *hwtrace_system_stats(uint64_t a1)
{
  v31[20] = *MEMORY[0x29EDCA608];
  v29 = a1;
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = *(a1 + 16);
    v5 = 8 * v1;
    do
    {
      v7 = *v4++;
      v6 = v7;
      v2 += *(v7 + 144);
      v3 += *(v7 + 152);
      v5 -= 8;
    }

    while (v5);
    v8 = *(v6 + 136);
  }

  else
  {
    v8 = 0;
    v3 = 0;
    v2 = 0;
  }

  v27 = v3;
  v28 = v2;
  v25 = 0;
  v26 = v8;
  *__s1 = 0;
  v24 = 0;
  v15 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 1;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v14 = &unk_2A1F1E040;
  v22 = __s1;
  sub_298ADDDB0(&v14);
  v30[0] = v31;
  v30[1] = 0x1000000000;
  v31[16] = 0;
  v31[17] = 0;
  v31[18] = &v14;
  v31[19] = 2;
  sub_298AEF5BC(v30);
  v13[0] = &v29;
  v13[1] = v30;
  v13[2] = &v28;
  v13[3] = &v27;
  v13[4] = &v26;
  sub_298B89BA0(v30);
  sub_298AF17F4(v13);
  sub_298B89C2C(v30);
  if (v30[0] != v31)
  {
    free(v30[0]);
  }

  sub_298B9AE14(&v14);
  if (SHIBYTE(v25) < 0)
  {
    v11 = *__s1;
    v12 = strdup(*__s1);
    operator delete(v11);
    result = v12;
  }

  else
  {
    result = strdup(__s1);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t hwtrace_system_clusters(uint64_t result, void *a2, uint64_t *a3)
{
  v3 = *(result + 144);
  *a2 = v3;
  *(result + 136) = 0;
  *a3 = (*(result + 152) - v3) >> 3;
  return result;
}

uint64_t hwtrace_cluster_type(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 32);
  if (v1 - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t hwtrace_cluster_cores(uint64_t result, void *a2, uint64_t *a3)
{
  v3 = *(result + 24);
  *a2 = v3;
  *(result + 16) = 0;
  *a3 = (*(result + 32) - v3) >> 3;
  return result;
}

uint64_t hwtrace_system_tasks(uint64_t ***a1, uint64_t *a2, void *a3)
{
  result = sub_298AE6918(***a1, a1);
  *a2 = result;
  *a3 = v6;
  return result;
}

uint64_t hwtrace_task_threads(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 16))(a1);
  *(v6 + 144) = 0;
  *a2 = *(v6 + 152);
  result = (*(*a1 + 16))(a1);
  *(result + 144) = 0;
  *a3 = (*(result + 160) - *(result + 152)) >> 3;
  return result;
}

uint64_t hwtrace_task_async_tasks(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 16))(a1);
  *(v6 + 216) = 0;
  *a2 = *(v6 + 224);
  result = (*(*a1 + 16))(a1);
  *(result + 216) = 0;
  *a3 = (*(result + 232) - *(result + 224)) >> 3;
  return result;
}

uint64_t hwtrace_task_segment(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v7 = (*(*a1 + 16))(a1);
  v8 = *(v7 + 8);
  v9 = **v8;
  v10 = *v9;
  v11 = (*v9)[12];
  if (!*&v11)
  {
    goto LABEL_16;
  }

  v12 = v7;
  v13 = 0x9DDFEA08EB382D69 * ((8 * (*(v7 + 8) & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*(v7 + 8)));
  v14 = 0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v13 >> 47) ^ v13);
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
  v16 = vcnt_s8(v11);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] <= 1uLL)
  {
    v17 = v15 & (*&v11 - 1);
  }

  else
  {
    v17 = v15;
    if (v15 >= *&v11)
    {
      v17 = v15 % *&v11;
    }
  }

  v18 = *(*&v10[11] + 8 * v17);
  if (!v18 || (v19 = *v18) == 0)
  {
LABEL_16:
    abort();
  }

  if (v16.u32[0] < 2uLL)
  {
    v20 = *&v11 - 1;
    while (1)
    {
      v22 = v19[1];
      if (v15 == v22)
      {
        if (v19[2] == v8)
        {
          goto LABEL_21;
        }
      }

      else if ((v22 & v20) != v17)
      {
        goto LABEL_16;
      }

      v19 = *v19;
      if (!v19)
      {
        goto LABEL_16;
      }
    }
  }

  while (1)
  {
    v21 = v19[1];
    if (v15 == v21)
    {
      break;
    }

    if (v21 >= *&v11)
    {
      v21 %= *&v11;
    }

    if (v21 != v17)
    {
      goto LABEL_16;
    }

LABEL_11:
    v19 = *v19;
    if (!v19)
    {
      goto LABEL_16;
    }
  }

  if (v19[2] != v8)
  {
    goto LABEL_11;
  }

LABEL_21:
  v23 = v19[3];
  v24 = *(*v23 + 8);
  std::mutex::lock((v7 + 48));
  if (sub_298BDA86C(v24, a3, a2, (v12 + 112)))
  {
    std::generic_category();
    v32[0] = "lib_topology.cpp";
    v32[2] = ":";
    v33 = 771;
    v31 = 3;
    LODWORD(__p) = 3420465;
    v34[0] = v32;
    v34[2] = &__p;
    v35 = 1026;
    v36[0] = v34;
    v36[2] = ": ";
    v37 = 770;
    v38[0] = v36;
    v38[2] = "section lookup failed";
    v39 = 770;
    sub_298B996A4(v38, &v40);
    operator new();
  }

  v26 = (v12 + 48);
  v27 = v25;
  std::mutex::unlock(v26);
  v28 = sub_298AEE090(v23, v27);
  result = 0;
  *a4 = v28;
  return result;
}

uint64_t hwtrace_task_segments_iter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = *MEMORY[0x29EDCA608];
  v5 = (*(*a1 + 16))(a1);
  v47 = 0;
  if (a2)
  {
    v46[0] = &unk_2A1F1BA18;
    v46[1] = a2;
    v47 = v46;
  }

  v6 = *(v5 + 8);
  v7 = **v6;
  v8 = *v7;
  v9 = (*v7)[12];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = 0x9DDFEA08EB382D69 * ((8 * (*(v5 + 8) & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*(v5 + 8)));
  v11 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v10 >> 47) ^ v10);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
  v13 = vcnt_s8(v9);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] <= 1uLL)
  {
    v14 = v12 & (*&v9 - 1);
  }

  else
  {
    v14 = v12;
    if (v12 >= *&v9)
    {
      v14 = v12 % *&v9;
    }
  }

  v15 = *(*&v8[11] + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_18:
    abort();
  }

  v17 = *(v5 + 16);
  if (v13.u32[0] < 2uLL)
  {
    v18 = *&v9 - 1;
    while (1)
    {
      v20 = v16[1];
      if (v12 == v20)
      {
        if (v16[2] == v6)
        {
          goto LABEL_23;
        }
      }

      else if ((v20 & v18) != v14)
      {
        goto LABEL_18;
      }

      v16 = *v16;
      if (!v16)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    v19 = v16[1];
    if (v12 == v19)
    {
      break;
    }

    if (v19 >= *&v9)
    {
      v19 %= *&v9;
    }

    if (v19 != v14)
    {
      goto LABEL_18;
    }

LABEL_13:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_18;
    }
  }

  if (v16[2] != v6)
  {
    goto LABEL_13;
  }

LABEL_23:
  v21 = v16[3];
  v22 = *(*v21 + 8);
  v23 = v22[83];
  if (!v23)
  {
    goto LABEL_31;
  }

  v24 = v22 + 83;
  do
  {
    v25 = v23[4];
    v26 = v25 >= v17;
    v27 = v25 < v17;
    if (v26)
    {
      v24 = v23;
    }

    v23 = v23[v27];
  }

  while (v23);
  if (v24 != v22 + 83 && v24[4] <= v17)
  {
    v28 = v24[5];
    v29 = v28[56];
    v30 = v28[57];
    if (v29 == v30)
    {
      goto LABEL_32;
    }
  }

  else
  {
LABEL_31:
    v28 = v22 + 1;
    v29 = v22[57];
    v30 = v22[58];
    if (v29 == v30)
    {
      goto LABEL_32;
    }
  }

LABEL_34:
  while (2)
  {
    v31 = v21[3];
    if (!*&v31)
    {
      goto LABEL_18;
    }

    v32 = 0x9DDFEA08EB382D69 * (((((v29 >> 3) & 0x3FFFFFF) << 6) | 8) ^ HIDWORD(v29));
    v33 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(v29) ^ (v32 >> 47) ^ v32)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v29) ^ (v32 >> 47) ^ v32)) >> 47));
    v34 = vcnt_s8(v31);
    v34.i16[0] = vaddlv_u8(v34);
    if (v34.u32[0] <= 1uLL)
    {
      v35 = v33 & (*&v31 - 1);
    }

    else
    {
      v35 = v33 < *&v31 ? v33 : v33 % *&v31;
    }

    v36 = *(v21[2] + 8 * v35);
    if (!v36)
    {
      goto LABEL_18;
    }

    v37 = *v36;
    if (!v37)
    {
      goto LABEL_18;
    }

    if (v34.u32[0] < 2uLL)
    {
      v38 = *&v31 - 1;
      while (1)
      {
        v40 = v37[1];
        if (v33 == v40)
        {
          if (v37[2] == v29)
          {
            goto LABEL_53;
          }
        }

        else if ((v40 & v38) != v35)
        {
          goto LABEL_18;
        }

        v37 = *v37;
        if (!v37)
        {
          goto LABEL_18;
        }
      }
    }

    while (2)
    {
      v39 = v37[1];
      if (v33 != v39)
      {
        if (v39 >= *&v31)
        {
          v39 %= *&v31;
        }

        if (v39 != v35)
        {
          goto LABEL_18;
        }

        goto LABEL_43;
      }

      if (v37[2] != v29)
      {
LABEL_43:
        v37 = *v37;
        if (!v37)
        {
          goto LABEL_18;
        }

        continue;
      }

      break;
    }

LABEL_53:
    v41 = v37[3];
    v44 = a3;
    v45 = v41;
    if (!v47)
    {
      sub_298AE761C();
    }

    (*(*v47 + 48))(v47, &v45, &v44);
    v29 += 176;
    if (v29 != v30)
    {
      continue;
    }

    break;
  }

LABEL_32:
  while (1)
  {
    v28 = *v28;
    if (!v28)
    {
      break;
    }

    v29 = v28[56];
    v30 = v28[57];
    if (v29 != v30)
    {
      goto LABEL_34;
    }
  }

  result = v47;
  if (v47 == v46)
  {
    result = (*(*v47 + 32))(v47);
  }

  else if (v47)
  {
    result = (*(*v47 + 40))();
  }

  v43 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t hwtrace_segment_name(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = *(v1 + 104);
  v2 = v1 + 104;
  v3 = v4;
  if (*(v2 + 23) >= 0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t hwtrace_segment_module_name(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = *(v1 + 8);
  v2 = v1 + 8;
  v3 = v4;
  if (*(v2 + 23) >= 0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

char *hwtrace_segment_symbol(uint64_t a1, unint64_t a2)
{
  v2 = *a1;
  v3 = ***a1;
  v4 = *v3;
  v5 = (*v3)[12];
  if (!*&v5)
  {
    goto LABEL_16;
  }

  v8 = 0x9DDFEA08EB382D69 * ((8 * (*a1 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a1));
  v9 = 0x9DDFEA08EB382D69 * ((v2 >> 32) ^ (v8 >> 47) ^ v8);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v11 = vcnt_s8(v5);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] <= 1uLL)
  {
    v12 = v10 & (*&v5 - 1);
  }

  else
  {
    v12 = v10;
    if (v10 >= *&v5)
    {
      v12 = v10 % *&v5;
    }
  }

  v13 = *(*&v4[11] + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_16:
    abort();
  }

  if (v11.u32[0] < 2uLL)
  {
    v15 = *&v5 - 1;
    while (1)
    {
      v17 = v14[1];
      if (v10 == v17)
      {
        if (v14[2] == v2)
        {
          goto LABEL_21;
        }
      }

      else if ((v17 & v15) != v12)
      {
        goto LABEL_16;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_16;
      }
    }
  }

  while (1)
  {
    v16 = v14[1];
    if (v10 == v16)
    {
      break;
    }

    if (v16 >= *&v5)
    {
      v16 %= *&v5;
    }

    if (v16 != v12)
    {
      goto LABEL_16;
    }

LABEL_11:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_16;
    }
  }

  if (v14[2] != v2)
  {
    goto LABEL_11;
  }

LABEL_21:
  v18 = *(v14[3] + 8);
  std::mutex::lock((a1 + 16));
  if (*(a1 + 88) > a2 || *(a1 + 96) <= a2)
  {
    v22 = *(a1 + 80);
    if (!v22)
    {
LABEL_66:
      v20 = 0;
      goto LABEL_27;
    }

    while (2)
    {
      std::mutex::lock((v18 + 24));
      v56 = v22;
      v24 = *(v18 + 104);
      if (!v24)
      {
        v25 = 0;
        goto LABEL_36;
      }

      v43 = *(v18 + 88);
      v44 = (v24 - 1) & ((v22 >> 4) ^ (v22 >> 9));
      v25 = (v43 + 16 * v44);
      v45 = *v25;
      if (v22 != *v25)
      {
        v48 = 0;
        v49 = 1;
        while (v45 != -4096)
        {
          if (v48)
          {
            v50 = 0;
          }

          else
          {
            v50 = v45 == -8192;
          }

          if (v50)
          {
            v48 = v25;
          }

          v51 = v44 + v49++;
          v44 = v51 & (v24 - 1);
          v25 = (v43 + 16 * v44);
          v45 = *v25;
          if (v22 == *v25)
          {
            goto LABEL_41;
          }
        }

        if (v48)
        {
          v25 = v48;
        }

LABEL_36:
        v26 = *(v18 + 96);
        if (4 * v26 + 4 >= 3 * v24)
        {
          v24 *= 2;
        }

        else if (v24 + ~v26 - *(v18 + 100) > v24 >> 3)
        {
          ++*(v18 + 96);
          if (*v25 != -4096)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        }

        sub_298BF9578(v18 + 88, v24);
        v57 = 0;
        sub_298BF942C((v18 + 88), &v56, &v57);
        v25 = v57;
        ++*(v18 + 96);
        if (*v25 != -4096)
        {
LABEL_39:
          --*(v18 + 100);
        }

LABEL_40:
        *v25 = v56;
        v25[1] = 0;
      }

LABEL_41:
      v27 = v25[1];
      if (!v27)
      {
        sub_298BD5914();
      }

      std::mutex::unlock((v18 + 24));
      v28 = *(v27 + 16);
      v29 = *(v27 + 24);
      if (v29 == v28)
      {
        goto LABEL_32;
      }

      v30 = v29 - v28;
      v31 = v30 >> 1;
      v32 = &v28[v30 >> 1];
      v34 = *v32;
      v33 = v32 + 1;
      v35 = v30 + ~(v30 >> 1);
      v36 = v34 > a2;
      if (v34 <= a2)
      {
        v37 = v33;
      }

      else
      {
        v37 = *(v27 + 16);
      }

      if (v36)
      {
        v38 = v31;
      }

      else
      {
        v38 = v35;
      }

      while (v38)
      {
        v52 = v38 >> 1;
        v53 = &v37[v38 >> 1];
        v55 = *v53;
        v54 = v53 + 1;
        v38 += ~(v38 >> 1);
        if (v55 > a2)
        {
          v38 = v52;
        }

        else
        {
          v37 = v54;
        }
      }

      if (v37 == v28)
      {
        goto LABEL_32;
      }

      v39 = *(v37 - 1);
      *(a1 + 88) = v39;
      if (v37 == v29)
      {
        *(a1 + 96) = -1;
        v40 = *(v27 + 40);
        v41 = *(v27 + 56);
        if (v41)
        {
          goto LABEL_53;
        }

LABEL_30:
        v23 = v41;
      }

      else
      {
        *(a1 + 96) = *v37;
        v40 = *(v27 + 40);
        v41 = *(v27 + 56);
        if (!v41)
        {
          goto LABEL_30;
        }

LABEL_53:
        v23 = (v41 - 1) & (37 * v39);
        v42 = *(v40 + 16 * v23);
        if (v39 != v42)
        {
          v46 = 1;
          while (v42 != -1)
          {
            v47 = v23 + v46++;
            v23 = v47 & (v41 - 1);
            v42 = *(v40 + 16 * v23);
            if (v39 == v42)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_30;
        }
      }

LABEL_31:
      v20 = *(v40 + 16 * v23 + 8);
      *(a1 + 104) = v20;
      if (!v20)
      {
LABEL_32:
        v22 = *v22;
      }

      else
      {
        if (v20 != "<missing>")
        {
          goto LABEL_27;
        }

        v22 = *v22;
        if (!v22)
        {
          v20 = "<missing>";
          goto LABEL_27;
        }

        *(a1 + 96) = 0;
      }

      if (!v22)
      {
        goto LABEL_66;
      }

      continue;
    }
  }

  v20 = *(a1 + 104);
LABEL_27:
  std::mutex::unlock((a1 + 16));
  return v20;
}

void *hwtrace_segment_disasm(uint64_t a1, unint64_t a2)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = ***a1;
  v4 = *v3;
  v5 = (*v3)[12];
  if (!*&v5)
  {
    goto LABEL_16;
  }

  v8 = 0x9DDFEA08EB382D69 * ((8 * (*a1 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a1));
  v9 = 0x9DDFEA08EB382D69 * ((v2 >> 32) ^ (v8 >> 47) ^ v8);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v11 = vcnt_s8(v5);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] <= 1uLL)
  {
    v12 = v10 & (*&v5 - 1);
  }

  else
  {
    v12 = v10;
    if (v10 >= *&v5)
    {
      v12 = v10 % *&v5;
    }
  }

  v13 = *(*&v4[11] + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_16:
    abort();
  }

  if (v11.u32[0] < 2uLL)
  {
    v15 = *&v5 - 1;
    while (1)
    {
      v17 = v14[1];
      if (v10 == v17)
      {
        if (v14[2] == v2)
        {
          goto LABEL_21;
        }
      }

      else if ((v17 & v15) != v12)
      {
        goto LABEL_16;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_16;
      }
    }
  }

  while (1)
  {
    v16 = v14[1];
    if (v10 == v16)
    {
      break;
    }

    if (v16 >= *&v5)
    {
      v16 %= *&v5;
    }

    if (v16 != v12)
    {
      goto LABEL_16;
    }

LABEL_11:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_16;
    }
  }

  if (v14[2] != v2)
  {
    goto LABEL_11;
  }

LABEL_21:
  v18 = *(*v14[3] + 8);
  v36[0] = 0;
  v36[1] = 0;
  v37 = v39;
  v38 = 0xA00000000;
  v39[20] = 0;
  v40 = 0;
  std::mutex::lock((a1 + 112));
  if (sub_298BDA9EC(v18, *(*(a1 + 8) + 144), a2, (a1 + 176)) || !(*(**(v18 + 816) + 24))(*(v18 + 816), v36, *(*(a1 + 200) + 48) + a2 - *(a1 + 184), 4, a2))
  {
    v19 = 0;
    std::mutex::unlock((a1 + 112));
    v22 = v37;
    if (v37 == v39)
    {
      goto LABEL_35;
    }

LABEL_34:
    free(v22);
    goto LABEL_35;
  }

  v19 = (a1 + 208);
  MEMORY[0x29C294300](a1 + 208, "");
  v26 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 1;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v25 = &unk_2A1F1E040;
  v33 = a1 + 208;
  sub_298ADDDB0(&v25);
  (*(**(v18 + 816) + 32))(__p);
  if ((v35 & 0x80u) == 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if ((v35 & 0x80u) == 0)
  {
    v21 = v35;
  }

  else
  {
    v21 = __p[1];
  }

  sub_298B9BCEC(&v25, v20, v21);
  if (v35 < 0)
  {
    operator delete(__p[0]);
    if (*(a1 + 231) < 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if ((*(a1 + 231) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_37:
    v19 = *v19;
  }

LABEL_31:
  sub_298B9AE14(&v25);
  std::mutex::unlock((a1 + 112));
  v22 = v37;
  if (v37 != v39)
  {
    goto LABEL_34;
  }

LABEL_35:
  v23 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t hwtrace_section_name(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = *(v1 + 8);
  v2 = v1 + 8;
  v3 = v4;
  if (*(v2 + 23) >= 0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_298AEF564(uint64_t a1)
{
  sub_298AF1BC4(a1);

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298AEF5BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= *(a1 + 12))
  {
    return sub_298AEF5F0(a1);
  }

  *(*a1 + 8 * v1) = 0;
  v2 = *(a1 + 8) + 1;
  *(a1 + 8) = v2;
  return *a1 + 8 * v2 - 8;
}

uint64_t sub_298AEF5F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= *(a1 + 12))
  {
    v4 = a1;
    sub_298B90A44(a1, (a1 + 16), v1 + 1, 8);
    a1 = v4;
    LODWORD(v1) = *(v4 + 8);
  }

  *(*a1 + 8 * v1) = 0;
  v2 = *(a1 + 8) + 1;
  *(a1 + 8) = v2;
  return *a1 + 8 * v2 - 8;
}

uint64_t *sub_298AEF658(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_298AEF6D0(v1 + 88);
    v2 = *(v1 + 56);
    if (v2 != (v1 + 72))
    {
      free(v2);
    }

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

void **sub_298AEF6D0(void **result)
{
  v1 = *result;
  v2 = *(result + 2);
  if (v2)
  {
    v4 = result;
    v5 = &v1[v2 - 1];
    v6 = -8 * v2;
    do
    {
      sub_298AEF658(v5--);
      v6 += 8;
    }

    while (v6);
    result = v4;
    v1 = *v4;
  }

  if (v1 != result + 2)
  {
    v3 = result;
    free(v1);
    return v3;
  }

  return result;
}

void *sub_298AEF750(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = (v3 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_298ADDDA0();
  }

  v6 = *(a1 + 16) - v2;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v12[4] = a1;
  if (v7)
  {
    sub_298AEF838(v7);
  }

  v8 = (8 * (v3 >> 3));
  v9 = *a2;
  *a2 = 0;
  *v8++ = v9;
  memcpy(0, v2, v3);
  *a1 = 0;
  *(a1 + 8) = v8;
  v10 = *(a1 + 16);
  *(a1 + 16) = 0;
  v12[2] = v2;
  v12[3] = v10;
  v12[0] = v2;
  v12[1] = v2;
  sub_298AEF874(v12);
  return v8;
}

void sub_298AEF838(unint64_t a1)
{
  if (!(a1 >> 61))
  {

    operator new();
  }

  sub_298ADDDA0();
}

uint64_t sub_298AEF874(uint64_t a1)
{
  sub_298AEF8AC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_298AEF8AC(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      *(v4 + 16) = v2;
      *v2 = 0;
      if (v5)
      {
        v6 = sub_298AE8CA8(result);
        result = MEMORY[0x29C2945F0](v6, 0x10F0C400F06D526);
        v2 = *(v4 + 16);
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *sub_298AEF928(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_298AE8CA8(v2);
    MEMORY[0x29C2945F0](v4, 0x10F0C400F06D526);
    return v3;
  }

  return v1;
}

void *sub_298AEF97C(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = (v3 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_298ADDDA0();
  }

  v6 = *(a1 + 16) - v2;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v12[4] = a1;
  if (v7)
  {
    sub_298AEF838(v7);
  }

  v8 = (8 * (v3 >> 3));
  v9 = *a2;
  *a2 = 0;
  *v8++ = v9;
  memcpy(0, v2, v3);
  *a1 = 0;
  *(a1 + 8) = v8;
  v10 = *(a1 + 16);
  *(a1 + 16) = 0;
  v12[2] = v2;
  v12[3] = v10;
  v12[0] = v2;
  v12[1] = v2;
  sub_298AEFA64(v12);
  return v8;
}

uint64_t sub_298AEFA64(uint64_t a1)
{
  sub_298AEFAA4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_298AEFAA4(uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v6 = *--result;
    v5 = v6;
    *(a1 + 16) = result;
    *result = 0;
    if (v6)
    {
      sub_298AE8EB8(result, v5);
      result = *(a1 + 16);
    }
  }

  return result;
}

uint64_t *sub_298AEFAFC(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v12 = v3[1];
        if (!v12 || (v16 = *(v12 + 24), v7 = (v12 + 24), v16 == 1))
        {
          if (*v2 == a2)
          {
            v13 = a2[2];
          }

          else
          {
            v13 = v2[1];
            v18 = *v13;
            v2[1] = *v13;
            v19 = v2;
            if (v18)
            {
              v18[2] = v2;
              v3 = v2[2];
              v19 = *v3;
            }

            v13[2] = v3;
            v3[v19 != v2] = v13;
            *v13 = v2;
            v2[2] = v13;
            v3 = v13[2];
            v4 = *v3;
          }

          *(v13 + 24) = 1;
          *(v3 + 24) = 0;
          v14 = *(v4 + 8);
          *v3 = v14;
          if (v14)
          {
            *(v14 + 16) = v3;
          }

          v15 = v3[2];
          *(v4 + 16) = v15;
          v15[*v15 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v8 = *v2;
          if (*v2 == a2)
          {
            v17 = v8[1];
            *v2 = v17;
            if (v17)
            {
              *(v17 + 16) = v2;
              v3 = v2[2];
            }

            v8[2] = v3;
            v3[*v3 != v2] = v8;
            v8[1] = v2;
            v2[2] = v8;
            v3 = v8[2];
          }

          else
          {
            v8 = a2[2];
          }

          *(v8 + 24) = 1;
          *(v3 + 24) = 0;
          v9 = v3[1];
          v10 = *v9;
          v3[1] = *v9;
          if (v10)
          {
            *(v10 + 16) = v3;
          }

          v11 = v3[2];
          v9[2] = v11;
          v11[*v11 != v3] = v9;
          *v9 = v3;
          v3[2] = v9;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_298AEFCA8(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a5 > (v7 - v8) >> 3)
  {
    v9 = *a1;
    v10 = a5 + ((v8 - *a1) >> 3);
    if (v10 >> 61)
    {
      sub_298ADDDA0();
    }

    v11 = __dst - v9;
    v12 = v7 - v9;
    if (v12 >> 2 > v10)
    {
      v10 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v10;
    }

    if (v13)
    {
      if (!(v13 >> 61))
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v38 = (8 * (v11 >> 3));
    v39 = 8 * a5;
    memcpy(v38, __src, 8 * a5);
    v40 = &v38[v39];
    v41 = v8 - __dst;
    memcpy(v40, __dst, v41);
    *(a1 + 8) = __dst;
    memcpy(0, v9, v11);
    *a1 = 0;
    *(a1 + 8) = &v40[v41];
    *(a1 + 16) = 0;
    if (v9)
    {

      operator delete(v9);
    }

    return;
  }

  v14 = v8 - __dst;
  v15 = (v8 - __dst) >> 3;
  if (v15 >= a5)
  {
    v14 = 8 * a5;
    v25 = &__dst[8 * a5];
    v26 = (v8 - 8 * a5);
    if (v26 >= v8)
    {
      v30 = *(a1 + 8);
    }

    else
    {
      v27 = v26 + 1;
      if (v8 > (v26 + 1))
      {
        v27 = *(a1 + 8);
      }

      v28 = v27 + v14 + ~v8;
      v29 = v28 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v30 = *(a1 + 8);
      if (v29)
      {
        goto LABEL_67;
      }

      v31 = (v28 >> 3) + 1;
      v32 = 8 * (v31 & 0x3FFFFFFFFFFFFFFCLL);
      v26 = (v26 + v32);
      v30 = (v8 + v32);
      v33 = (v8 + 16);
      v34 = (v8 + 16 - v14);
      v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v36 = *v34;
        *(v33 - 1) = *(v34 - 1);
        *v33 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 4;
      }

      while (v35);
      if (v31 != (v31 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_67:
        do
        {
          v37 = *v26++;
          *v30++ = v37;
        }

        while (v26 < v8);
      }
    }

    *(a1 + 8) = v30;
    if (v8 != v25)
    {
      v42 = __src;
      memmove(v25, __dst, v8 - v25);
      __src = v42;
    }

    goto LABEL_59;
  }

  v16 = &__src[v14];
  if (&__src[v14] == a4)
  {
    v18 = *(a1 + 8);
  }

  else
  {
    v17 = &__dst[a4] - __src - v8 - 8;
    if (v17 < 0x18)
    {
      v18 = *(a1 + 8);
    }

    else
    {
      v18 = *(a1 + 8);
      if ((__dst - __src) >= 0x20)
      {
        v19 = (v17 >> 3) + 1;
        v20 = 8 * (v19 & 0x3FFFFFFFFFFFFFFCLL);
        v16 += v20;
        v18 = v8 + v20;
        v21 = (v8 + 16);
        v22 = &__src[v8 + 16 - __dst];
        v23 = v19 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v24 = *v22;
          *(v21 - 1) = *(v22 - 1);
          *v21 = v24;
          v21 += 2;
          v22 += 32;
          v23 -= 4;
        }

        while (v23);
        if (v19 == (v19 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_42;
        }
      }
    }

    do
    {
      v43 = *v16;
      v16 += 8;
      *v18 = v43;
      v18 += 8;
    }

    while (v16 != a4);
  }

LABEL_42:
  *(a1 + 8) = v18;
  if (v15 >= 1)
  {
    v44 = a5;
    v45 = &__dst[8 * a5];
    v46 = (v18 - 8 * a5);
    if (v46 >= v8)
    {
      v50 = v18;
    }

    else
    {
      v47 = v46 + 1;
      if (v8 > (v46 + 1))
      {
        v47 = v8;
      }

      v48 = &v47[v44] + ~v18;
      v49 = v48 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v50 = v18;
      if (v49)
      {
        goto LABEL_68;
      }

      v51 = (v48 >> 3) + 1;
      v52 = 8 * (v51 & 0x3FFFFFFFFFFFFFFCLL);
      v46 = (v46 + v52);
      v50 = (v18 + v52);
      v53 = (v18 + 16);
      v54 = (v18 + 16 - v44 * 8);
      v55 = v51 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v56 = *v54;
        *(v53 - 1) = *(v54 - 1);
        *v53 = v56;
        v53 += 2;
        v54 += 2;
        v55 -= 4;
      }

      while (v55);
      if (v51 != (v51 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_68:
        do
        {
          v57 = *v46++;
          *v50++ = v57;
        }

        while (v46 < v8);
      }
    }

    *(a1 + 8) = v50;
    if (v18 != v45)
    {
      v58 = __src;
      memmove(v45, __dst, v18 - v45);
      __src = v58;
    }

    if (v8 != __dst)
    {
LABEL_59:

      memmove(__dst, __src, v14);
    }
  }
}

uint64_t *sub_298AF00A4(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v2 = a1 + 1;
    while (v2 != a2)
    {
      v3 = *(v2 - 1);
      v4 = *v2++;
      if (v3 == v4)
      {
        v5 = v2 - 2;
        if (v5 == a2)
        {
          return a2;
        }

        v7 = v5 + 2;
        if (v5 + 2 != a2)
        {
          v8 = *v5;
          do
          {
            v9 = v8;
            v8 = *v7;
            if (v9 != *v7)
            {
              v5[1] = v8;
              ++v5;
            }

            ++v7;
          }

          while (v7 != a2);
        }

        return v5 + 1;
      }
    }
  }

  return a2;
}

void *sub_298AF012C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[5] ^ a1[4];
  v4 = v3;
  v5 = a1[1];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] <= 1uLL)
  {
    v7 = (v5 - 1) & v3;
    v8 = *(*a1 + 8 * v7);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_18:
    operator new();
  }

  v7 = v3;
  if (v3 >= v5)
  {
    v7 = v3 % v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_6:
  result = *v8;
  if (!*v8)
  {
    goto LABEL_18;
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = result[1];
      if (v13 == v4)
      {
        if (result[2] == a2 && result[3] == a3)
        {
          return result;
        }
      }

      else if ((v13 & (v5 - 1)) != v7)
      {
        goto LABEL_18;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    v11 = result[1];
    if (v11 == v4)
    {
      break;
    }

    if (v11 >= v5)
    {
      v11 %= v5;
    }

    if (v11 != v7)
    {
      goto LABEL_18;
    }

LABEL_13:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != a2 || result[3] != a3)
  {
    goto LABEL_13;
  }

  return result;
}

void *sub_298AF0458(void *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result[1];
    v3 = *result;
    if (v2 != v1)
    {
      do
      {
        v6 = *--v2;
        v5 = v6;
        *v2 = 0;
        if (v6)
        {
          v8 = v2;
          v9 = result;
          v7 = v1;
          (*(*v5 + 8))(v5);
          v2 = v8;
          result = v9;
          v1 = v7;
        }
      }

      while (v2 != v1);
      v3 = *result;
    }

    result[1] = v1;
    v4 = result;
    operator delete(v3);
    return v4;
  }

  return result;
}

void *sub_298AF0508(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_15;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] <= 1uLL)
  {
    v5 = (*&v3 - 1) & v2;
    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_15:
    operator new();
  }

  v5 = *a2;
  if (v2 >= *&v3)
  {
    v5 = v2 % *&v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_6:
  result = *v6;
  if (!*v6)
  {
    goto LABEL_15;
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (result[2] == v2)
        {
          return result;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_15;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_15;
    }

LABEL_10:
    result = *result;
    if (!result)
    {
      goto LABEL_15;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_298AF0830(uint64_t a1)
{
  v2 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v2)
  {
    sub_298AEF6D0((v2 + 88));
    v13 = *(v2 + 56);
    if (v13 != (v2 + 72))
    {
      free(v13);
    }

    MEMORY[0x29C2945F0](v2, 0x10A0C405B6220C9);
  }

  std::mutex::~mutex((a1 + 80));
  v3 = *(a1 + 56);
  if (v3)
  {
    do
    {
      v4 = *v3;
      v5 = v3[5];
      if (v5)
      {
        do
        {
          v6 = *v5;
          operator delete(v5);
          v5 = v6;
        }

        while (v6);
      }

      v7 = v3[3];
      v3[3] = 0;
      if (v7)
      {
        operator delete(v7);
      }

      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v8 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v11 = *(a1 + 24);
    v12 = *(a1 + 16);
    if (v11 != v9)
    {
      do
      {
        v15 = *--v11;
        v14 = v15;
        *v11 = 0;
        if (v15)
        {
          (*(*v14 + 8))(v14);
        }
      }

      while (v11 != v9);
      v12 = *(a1 + 16);
    }

    *(a1 + 24) = v9;
    operator delete(v12);
  }

  return a1;
}

void *sub_298AF096C(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_24;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] <= 1uLL)
  {
    v4 = (*&v2 - 1) & a2;
  }

  else
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (result = *v5) == 0)
  {
LABEL_24:
    operator new();
  }

  if (v3.u32[0] >= 2uLL)
  {
    while (1)
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v7 >= *&v2)
        {
          v7 %= *&v2;
        }

        if (v7 != v4)
        {
          goto LABEL_24;
        }
      }

      result = *result;
      if (!result)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
    v8 = result;
    v9 = result[1];
    if (v9 != a2)
    {
      if ((v9 & (*&v2 - 1)) != v4)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    if (result[2] == a2)
    {
      return result;
    }

LABEL_21:
    result = *result;
    if (!*v8)
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_298AF0C78(uint64_t result, unint64_t a2)
{
  if (a2)
  {
    sub_298AEF838(a2);
  }

  v2 = *result;
  *result = 0;
  if (v2)
  {
    v3 = result;
    operator delete(v2);
    result = v3;
  }

  *(result + 8) = 0;
  return result;
}

uint64_t sub_298AF0DDC(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    sub_298AF0830(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t sub_298AF0E28@<X0>(uint64_t result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (v5)
  {
    v6 = *result;
    v7 = v5 - 1;
    v8 = (37 * *a2) & (v5 - 1);
    v9 = *result + 16 * v8;
    v10 = *v9;
    if (*a2 == *v9)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_4;
    }

    v13 = 0;
    v14 = 1;
    while (v10 != -1)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -2;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = v6 + 16 * (v16 & v7);
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }
  }

  else
  {
    v9 = 0;
  }

  v21 = v9;
  v12 = *(result + 8);
  if (4 * v12 + 4 >= 3 * v5)
  {
    v5 *= 2;
    goto LABEL_17;
  }

  if (v5 + ~v12 - *(result + 12) <= v5 >> 3)
  {
LABEL_17:
    v20 = result;
    v18 = a4;
    v19 = a2;
    v17 = a3;
    sub_298AF101C(result, v5);
    sub_298AF0F80(v20, v19, &v21);
    a4 = v18;
    a2 = v19;
    a3 = v17;
    result = v20;
    v9 = v21;
    v12 = *(v20 + 8);
  }

  *(result + 8) = v12 + 1;
  if (*v9 != -1)
  {
    --*(result + 12);
  }

  *v9 = *a2;
  *(v9 + 8) = *a3;
  v6 = *result;
  v5 = *(result + 16);
  v11 = 1;
LABEL_4:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

uint64_t sub_298AF0F80(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
      return result;
    }

    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -1)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -2;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v4 + 16 * (v13 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *sub_298AF101C(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    sub_298AF112C(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x29C2945E0);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (v10 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v14 = result;
LABEL_13:
      v17 = &result[2 * v10];
      do
      {
        *v14 = -1;
        v14 += 2;
      }

      while (v14 != v17);
      return result;
    }

    v12 = v11 + 1;
    v13 = (v11 + 1) & 0x1FFFFFFFFFFFFFFELL;
    v14 = &result[2 * v13];
    v15 = result + 2;
    v16 = v13;
    do
    {
      *(v15 - 2) = -1;
      *v15 = -1;
      v15 += 4;
      v16 -= 2;
    }

    while (v16);
    if (v12 != v13)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t sub_298AF112C(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = (v4 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (!v5)
    {
      v8 = *result;
LABEL_6:
      v11 = &v3[2 * v4];
      do
      {
        *v8 = -1;
        v8 += 2;
      }

      while (v8 != v11);
      goto LABEL_8;
    }

    v6 = v5 + 1;
    v7 = (v5 + 1) & 0x1FFFFFFFFFFFFFFELL;
    v8 = &v3[2 * v7];
    v9 = v3 + 2;
    v10 = v7;
    do
    {
      *(v9 - 2) = -1;
      *v9 = -1;
      v9 += 4;
      v10 -= 2;
    }

    while (v10);
    if (v6 != v7)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  while (a2 != a3)
  {
    v13 = *a2;
    if (*a2 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = *(result + 16) - 1;
      v15 = v14 & (37 * v13);
      v12 = &v3[2 * v15];
      v16 = *v12;
      if (v13 != *v12)
      {
        v17 = 0;
        v18 = 1;
        while (v16 != -1)
        {
          if (v17)
          {
            v19 = 0;
          }

          else
          {
            v19 = v16 == -2;
          }

          if (v19)
          {
            v17 = v12;
          }

          v20 = v15 + v18++;
          v15 = v20 & v14;
          v12 = &v3[2 * (v20 & v14)];
          v16 = *v12;
          if (v13 == *v12)
          {
            goto LABEL_13;
          }
        }

        if (v17)
        {
          v12 = v17;
        }
      }

LABEL_13:
      *v12 = v13;
      *(v12 + 2) = *(a2 + 2);
      ++*(result + 8);
    }

    a2 += 2;
  }

  return result;
}

void sub_298AF123C(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = sub_298B90848(a1, (a1 + 16), a2, 32, &v6);
  sub_298AF12B4(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

uint64_t sub_298AF12B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *result;
    v4 = *result + 32 * v2;
    do
    {
      *a2 = *v3;
      a2[1] = 0;
      a2[2] = 0;
      a2[3] = 0;
      *(a2 + 1) = *(v3 + 8);
      a2[3] = *(v3 + 24);
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      a2 += 4;
      v3 += 32;
    }

    while (v3 != v4);
    v5 = *(result + 8);
    if (v5)
    {
      v6 = -32 * v5;
      result = *result + 32 * v5 - 32;
      do
      {
        result = sub_298AE798C(result) - 32;
        v6 += 32;
      }

      while (v6);
    }
  }

  return result;
}

void *sub_298AF1344(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_15;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] <= 1uLL)
  {
    v4 = (*&v2 - 1) & a2;
    v5 = *(*a1 + 8 * v4);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_15:
    operator new();
  }

  v4 = a2;
  if (*&v2 <= a2)
  {
    v4 = a2 % *&v2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_6:
  result = *v5;
  if (!*v5)
  {
    goto LABEL_15;
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v8 = result[1];
      if (v8 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else if ((v8 & (*&v2 - 1)) != v4)
      {
        goto LABEL_15;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      break;
    }

    if (v7 >= *&v2)
    {
      v7 %= *&v2;
    }

    if (v7 != v4)
    {
      goto LABEL_15;
    }

LABEL_10:
    result = *result;
    if (!result)
    {
      goto LABEL_15;
    }
  }

  if (result[2] != a2)
  {
    goto LABEL_10;
  }

  return result;
}

void sub_298AF17F4(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(**a1 + 8);
  if (*(v2 + 296) == 1)
  {
    v3 = *(a1 + 8);
    v4 = *(v2 + 256);
    v14 = 3;
    __p[0] = v4;
    sub_298B89CC0(v3, "NumGaps", 7uLL);
    sub_298B891F0(v3, &v14);
    --*(v3 + 8);
    if (v14 == 8)
    {
      sub_298B8A314(__p);
    }

    else if (v14 == 7)
    {
      sub_298B8A370(__p);
    }

    else if (v14 == 6 && v16 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = *(a1 + 8);
    v6 = *(v2 + 264);
    v14 = 3;
    __p[0] = v6;
    sub_298B89CC0(v5, "NumExcessGaps", 0xDuLL);
    sub_298B891F0(v5, &v14);
    --*(v5 + 8);
    if (v14 == 8)
    {
      sub_298B8A314(__p);
    }

    else if (v14 == 7)
    {
      sub_298B8A370(__p);
    }

    else if (v14 == 6 && v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = *(a1 + 8);
  v8 = **(a1 + 16);
  v14 = 3;
  __p[0] = v8;
  sub_298B89CC0(v7, "NumLostTraceBytes", 0x11uLL);
  sub_298B891F0(v7, &v14);
  --*(v7 + 8);
  if (v14 == 8)
  {
    sub_298B8A314(__p);
  }

  else if (v14 == 7)
  {
    sub_298B8A370(__p);
  }

  else if (v14 == 6 && v16 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *(a1 + 8);
  v10 = **(a1 + 24);
  v14 = 3;
  __p[0] = v10;
  sub_298B89CC0(v9, "NumStreamedTraceBytes", 0x15uLL);
  sub_298B891F0(v9, &v14);
  --*(v9 + 8);
  if (v14 == 8)
  {
    sub_298B8A314(__p);
  }

  else if (v14 == 7)
  {
    sub_298B8A370(__p);
  }

  else if (v14 == 6 && v16 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *(a1 + 8);
  v12 = **(a1 + 32);
  v14 = 3;
  __p[0] = v12;
  sub_298B89CC0(v11, "StreamingChunkSize", 0x12uLL);
  sub_298B891F0(v11, &v14);
  --*(v11 + 8);
  if (v14 == 8)
  {
    sub_298B8A314(__p);
  }

  else if (v14 == 7)
  {
    sub_298B8A370(__p);
  }

  else if (v14 == 6 && v16 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298AF1B88(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F1BA18;
  a2[1] = v2;
  return result;
}

uint64_t sub_298AF1BC4(uint64_t a1)
{
  *a1 = &unk_2A1F1B9C8;
  v2 = (a1 + 48);
  sub_298AE88F0(a1 + 248);
  v4 = (a1 + 224);
  sub_298AF1C48(&v4);
  sub_298AE88F0(a1 + 176);
  v4 = (a1 + 152);
  sub_298AF1CCC(&v4);
  std::mutex::~mutex(v2);
  return a1;
}

void sub_298AF1C48(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_298AEDFE8(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_298AF1CCC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        sub_298AF0DDC(--v3);
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;

    operator delete(v4);
  }
}

void *sub_298AF1D58(void *result)
{
  if (*result)
  {
    v1 = result;
    (*(**result + 8))(*result);
    return v1;
  }

  return result;
}

uint64_t sub_298AF1DB0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 88);
  v4 = *(a2 + 2);
  if (v4 >= *(v3[41] + 8))
  {
    goto LABEL_41;
  }

  v6 = *(a2 + 6);
  v7 = v3[3];
  if (v7 > v4)
  {
    v8 = v3[8];
    if (v8 <= v4)
    {
      v7 = v4 - v8 + 1;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_6;
  }

  if (v3[4] + v7 <= v4)
  {
    v22 = v3[8];
    v7 = *(a2 + 2);
LABEL_6:
    v10 = v3[5];
    v9 = v3 + 5;
    v9[1] = v10;
    v11 = *(v9 - 3);
    (*(**(v9 - 4) + 32))(*(v9 - 4), v7);
    v12 = *v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9[1] - *v9) >> 2);
    *(v9 - 2) = v7;
    *(v9 - 1) = v13;
    goto LABEL_7;
  }

  v12 = v3[5];
LABEL_7:
  if (v6 < (*(v12 + 12 * (v4 - v7)) >> 47))
  {
    if (*(a1 + 16) != *a2)
    {
      *(a1 + 184) = *(**a2 + 40);
      *(a1 + 208) = 0;
    }

    v14 = *a2;
    v15 = a2[1];
    v16 = a2[2];
    *(a1 + 64) = *(a2 + 6);
    *(a1 + 32) = v15;
    *(a1 + 48) = v16;
    *(a1 + 16) = v14;
    v17 = *(a1 + 88);
    v18 = *(a1 + 32);
    v19 = *(v17 + 24);
    if (v19 <= v18)
    {
      if (*(v17 + 32) + v19 > v18)
      {
        v21 = *(v17 + 40);
        goto LABEL_21;
      }

      v20 = *(v17 + 64);
      v19 = *(a1 + 32);
    }

    else
    {
      v20 = *(v17 + 64);
      if (v20 <= v18)
      {
        v19 = v18 - v20 + 1;
      }

      else
      {
        v19 = 0;
      }
    }

    *(v17 + 48) = *(v17 + 40);
    (*(**(v17 + 8) + 32))(*(v17 + 8), v19, v20, v17 + 40, *(v17 + 16));
    v21 = *(v17 + 40);
    v23 = 0xAAAAAAAAAAAAAAABLL * ((*(v17 + 48) - v21) >> 2);
    *(v17 + 24) = v19;
    *(v17 + 32) = v23;
LABEL_21:
    v24 = (v21 + 12 * (v18 - v19));
    v25 = *v24;
    v26 = *(v24 + 2);
    v27 = *(a1 + 48);
    v28 = *(v17 + 88);
    if (v28 <= v27)
    {
      if (*(v17 + 96) + v28 > v27)
      {
        v30 = *(v17 + 104);
        goto LABEL_29;
      }

      v29 = *(v17 + 128);
      v28 = *(a1 + 48);
    }

    else
    {
      v29 = *(v17 + 128);
      if (v29 <= v27)
      {
        v28 = v27 - v29 + 1;
      }

      else
      {
        v28 = 0;
      }
    }

    v32 = *(v17 + 104);
    v31 = (v17 + 104);
    v31[1] = v32;
    (*(**(v31 - 4) + 40))(*(v31 - 4), v28, v29, v31, *(v31 - 3));
    v30 = *v31;
    v33 = 0xAAAAAAAAAAAAAAABLL * ((v31[1] - *v31) >> 3);
    *(v31 - 2) = v28;
    *(v31 - 1) = v33;
LABEL_29:
    v34 = (v30 + 24 * (v27 - v28));
    v48 = *v34;
    v49 = *(v34 + 2);
    v35 = *(a1 + 32) + 1;
    v36 = *(a1 + 88);
    v37 = v36[41];
    if (v35 == *(v37 + 8))
    {
      v43 = 1;
      goto LABEL_39;
    }

    v38 = *(a1 + 56);
    v39 = v38 + 1;
    if ((v38 + 1) >= *(v37 + 24))
    {
      v43 = 0;
      goto LABEL_39;
    }

    v40 = v36[19];
    if (v40 <= v39)
    {
      if (v36[20] + v40 > v39)
      {
LABEL_38:
        v43 = *(v36[21] + 56 * (v39 - v40) + 24) == v35;
LABEL_39:
        *&v47[4] = v48;
        *&v47[20] = v49;
        *(a1 + 136) = v25;
        *(a1 + 144) = v26;
        *(a1 + 148) = *v47;
        *(a1 + 160) = *&v47[12];
        *(a1 + 176) = v43;
        return 1;
      }

      v41 = v36[24];
      v42 = v38 + 1;
    }

    else
    {
      v41 = v36[24];
      if (v41 <= v39)
      {
        v42 = v38 - v41 + 2;
      }

      else
      {
        v42 = 0;
      }
    }

    sub_298C0EAF8(v36 + 17, v42, v41);
    v40 = v36[19];
    goto LABEL_38;
  }

LABEL_41:
  v45 = ******(a1 + 24);
  *&v48 = *(a1 + 24);
  v46 = sub_298AE90FC((v45 + 8), &v48)[3];
  *(a1 + 72) = v46;
  sub_298C09510((a1 + 80), v46);
  return 0;
}

uint64_t sub_298AF21AC(uint64_t *****a1)
{
  v1 = *****a1;
  v3[0] = a1;
  v3[2] = v3;
  return sub_298AE90FC((v1 + 8), v3)[3];
}

__n128 sub_298AF2208(__n128 *a1, void *a2)
{
  v4 = a2[11];
  v5 = a2[4];
  v6 = *(v4 + 24);
  if (v6 > v5)
  {
    v7 = *(v4 + 64);
    if (v7 <= v5)
    {
      v6 = v5 - v7 + 1;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_5;
  }

  if (*(v4 + 32) + v6 <= v5)
  {
    v33 = *(v4 + 64);
    v6 = a2[4];
LABEL_5:
    *(v4 + 48) = *(v4 + 40);
    v8 = *(v4 + 16);
    (*(**(v4 + 8) + 32))(*(v4 + 8), v6);
    v9 = *(v4 + 40);
    v10 = 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 48) - v9) >> 2);
    *(v4 + 24) = v6;
    *(v4 + 32) = v10;
    goto LABEL_6;
  }

  v9 = *(v4 + 40);
LABEL_6:
  v11 = v9 + 12 * (v5 - v6);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = a2[6];
  v15 = *(v4 + 88);
  if (v15 > v14)
  {
    v16 = *(v4 + 128);
    if (v16 <= v14)
    {
      v15 = v14 - v16 + 1;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_10;
  }

  if (*(v4 + 96) + v15 <= v14)
  {
    v34 = *(v4 + 128);
    v15 = a2[6];
LABEL_10:
    v18 = *(v4 + 104);
    v17 = (v4 + 104);
    v17[1] = v18;
    v19 = *(v17 - 3);
    (*(**(v17 - 4) + 40))(*(v17 - 4), v15);
    v20 = *v17;
    v21 = 0xAAAAAAAAAAAAAAABLL * ((v17[1] - *v17) >> 3);
    *(v17 - 2) = v15;
    *(v17 - 1) = v21;
    goto LABEL_11;
  }

  v20 = *(v4 + 104);
LABEL_11:
  v22 = (v20 + 24 * (v14 - v15));
  v35 = *v22;
  v36 = v22[1].n128_u64[0];
  v23 = a2[4] + 1;
  v24 = a2[11];
  v25 = v24[41];
  if (v23 == *(v25 + 8))
  {
    v31 = 1;
    goto LABEL_19;
  }

  v26 = a2[7];
  v27 = v26 + 1;
  if ((v26 + 1) >= *(v25 + 24))
  {
    v31 = 0;
    goto LABEL_19;
  }

  v28 = v24[19];
  if (v28 <= v27)
  {
    if (v24[20] + v28 > v27)
    {
      goto LABEL_18;
    }

    v29 = v24[24];
    v30 = v26 + 1;
  }

  else
  {
    v29 = v24[24];
    if (v29 <= v27)
    {
      v30 = v26 - v29 + 2;
    }

    else
    {
      v30 = 0;
    }
  }

  sub_298C0EAF8(v24 + 17, v30, v29);
  v28 = v24[19];
LABEL_18:
  v31 = *(v24[21] + 56 * (v27 - v28) + 24) == v23;
LABEL_19:
  a1->n128_u64[0] = v12;
  a1->n128_u32[2] = v13;
  result = v35;
  a1[1] = v35;
  a1[2].n128_u64[0] = v36;
  a1[2].n128_u8[8] = v31;
  return result;
}

uint64_t sub_298AF2474(uint64_t a1, int a2, _BYTE *a3)
{
  if (a2 != 1)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = v3[12];
  if (!*&v4)
  {
    goto LABEL_17;
  }

  v5 = ***(a1 + 24);
  v6 = 0x9DDFEA08EB382D69 * ((8 * (v5 & 0x1FFFFFFF) + 8) ^ HIDWORD(v5));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = vcnt_s8(v4);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] <= 1uLL)
  {
    v10 = v8 & (*&v4 - 1);
  }

  else
  {
    v10 = v8;
    if (v8 >= *&v4)
    {
      v10 = v8 % *&v4;
    }
  }

  v11 = *(*&v3[11] + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_17:
    abort();
  }

  if (v9.u32[0] < 2uLL)
  {
    v13 = *&v4 - 1;
    while (1)
    {
      v15 = v12[1];
      if (v8 == v15)
      {
        if (v12[2] == v5)
        {
          goto LABEL_22;
        }
      }

      else if ((v15 & v13) != v10)
      {
        goto LABEL_17;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_17;
      }
    }
  }

  while (1)
  {
    v14 = v12[1];
    if (v8 == v14)
    {
      break;
    }

    if (v14 >= *&v4)
    {
      v14 %= *&v4;
    }

    if (v14 != v10)
    {
      goto LABEL_17;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  if (v12[2] != v5)
  {
    goto LABEL_12;
  }

LABEL_22:
  v16 = *(*v12[3] + 8);
  v17 = *(a1 + 168);
  v18 = *(a1 + 136);
  v19 = (v18 << 17) >> 15;
  v20 = v19 + (4 * *(a1 + 40));
  v21 = *(a1 + 208);
  if (v21 && *(v21 + 18) <= v17 && *(v21 + 19) > v17 && *(a1 + 192) <= v20 && *(a1 + 200) > v20)
  {
    goto LABEL_30;
  }

  if (*(v16 + 1) != 1)
  {
    return 0;
  }

  v25 = *(a1 + 184);
  if (!v25)
  {
    return 0;
  }

  while (1)
  {
    v35 = v25[56];
    v36 = v25[57];
    if (v35 != v36)
    {
      v37 = 0x2E8BA2E8BA2E8BA3 * ((v36 - v35) >> 4);
      v38 = v37 >> 1;
      v39 = &v35[176 * (v37 >> 1)];
      v40 = *(v39 + 9);
      v41 = v39 + 176;
      v42 = v37 + ~(v37 >> 1);
      if (v40 <= v20)
      {
        v43 = v41;
      }

      else
      {
        v43 = v25[56];
      }

      if (v40 <= v20)
      {
        v44 = v42;
      }

      else
      {
        v44 = v38;
      }

      while (v44)
      {
        v48 = v44 >> 1;
        v49 = &v43[176 * (v44 >> 1)];
        v50 = *(v49 + 9);
        v51 = v49 + 176;
        v44 += ~(v44 >> 1);
        if (v50 > v20)
        {
          v44 = v48;
        }

        else
        {
          v43 = v51;
        }
      }

      if (v43 != v35)
      {
        break;
      }
    }

LABEL_49:
    v25 = *v25;
    if (!v25)
    {
      return 0;
    }
  }

  v21 = v43 - 176;
  while (1)
  {
    if (*(v21 + 18) <= v17 && *(v21 + 19) > v17)
    {
      v45 = *(v21 + 9);
      if (v45 <= v20)
      {
        v46 = *(v21 + 8) + v45;
        if (v46 > v20)
        {
          break;
        }
      }
    }

    if (*(v21 + 9) <= v20)
    {
      v47 = v35 == v21;
      v21 -= 176;
      if (!v47)
      {
        continue;
      }
    }

    goto LABEL_49;
  }

  *(a1 + 192) = v45;
  *(a1 + 200) = v46;
  *(a1 + 208) = v21;
LABEL_30:
  v23 = *(v21 + 20);
  if (!v23)
  {
    return 0;
  }

  v28 = *(v23 + 8);
  v26 = v23 + 8;
  v27 = v28;
  if (!v28)
  {
    return 0;
  }

  v29 = v26;
  do
  {
    v30 = *(v27 + 32);
    v31 = v30 >= v19;
    v32 = v30 < v19;
    if (v31)
    {
      v29 = v27;
    }

    v27 = *(v27 + 8 * v32);
  }

  while (v27);
  if (v29 == v26)
  {
    return 0;
  }

  v33 = *(v29 + 32);
  if (v19 > v33 || v19 + 4 * (v18 >> 47) <= v33)
  {
    return 0;
  }

  v34 = *(v29 + 40);
  result = 1;
  if (!v34)
  {
    goto LABEL_47;
  }

  if (v34 == 1)
  {
    LOBYTE(result) = -1;
LABEL_47:
    *a3 = result;
    return 1;
  }

  return result;
}

uint64_t sub_298AF2784(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 8);
  v3 = v2[12];
  if (!*&v3)
  {
    goto LABEL_16;
  }

  v4 = ***(a1 + 24);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = vcnt_s8(v3);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] <= 1uLL)
  {
    v9 = v7 & (*&v3 - 1);
  }

  else
  {
    v9 = v7;
    if (v7 >= *&v3)
    {
      v9 = v7 % *&v3;
    }
  }

  v10 = *(*&v2[11] + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_16:
    abort();
  }

  if (v8.u32[0] >= 2uLL)
  {
    while (1)
    {
      v12 = v11[1];
      if (v7 == v12)
      {
        if (v11[2] == v4)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v12 >= *&v3)
        {
          v12 %= *&v3;
        }

        if (v12 != v9)
        {
          goto LABEL_16;
        }
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_16;
      }
    }
  }

  v13 = *&v3 - 1;
  while (1)
  {
    v14 = v11[1];
    if (v7 != v14)
    {
      if ((v14 & v13) != v9)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }

    if (v11[2] == v4)
    {
      break;
    }

LABEL_22:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_16;
    }
  }

LABEL_24:
  v15 = *(a1 + 168);
  v16 = *(a1 + 136);
  v17 = (4 * *(a1 + 40)) + ((v16 << 17) >> 15);
  v18 = *(a1 + 208);
  if (v18 && *(v18 + 18) <= v15 && *(v18 + 19) > v15 && *(a1 + 192) <= v17 && *(a1 + 200) > v17)
  {
    goto LABEL_32;
  }

  if (*(*(*v11[3] + 8) + 1) != 1)
  {
    return 0;
  }

  v22 = *(a1 + 184);
  if (!v22)
  {
    return 0;
  }

  while (1)
  {
    v23 = v22[56];
    v24 = v22[57];
    if (v23 != v24)
    {
      v25 = 0x2E8BA2E8BA2E8BA3 * ((v24 - v23) >> 4);
      v26 = v22[56];
      do
      {
        v27 = v25 >> 1;
        v28 = &v26[176 * (v25 >> 1)];
        v29 = *(v28 + 9);
        v30 = v28 + 176;
        v25 += ~(v25 >> 1);
        if (v29 > v17)
        {
          v25 = v27;
        }

        else
        {
          v26 = v30;
        }
      }

      while (v25);
      if (v26 != v23)
      {
        break;
      }
    }

LABEL_52:
    v22 = *v22;
    if (!v22)
    {
      return 0;
    }
  }

  v18 = v26 - 176;
  while (1)
  {
    if (*(v18 + 18) <= v15 && *(v18 + 19) > v15)
    {
      v31 = *(v18 + 9);
      if (v31 <= v17)
      {
        v32 = *(v18 + 8) + v31;
        if (v32 > v17)
        {
          break;
        }
      }
    }

    if (*(v18 + 9) <= v17)
    {
      v33 = v23 == v18;
      v18 -= 176;
      if (!v33)
      {
        continue;
      }
    }

    goto LABEL_52;
  }

  *(a1 + 192) = v31;
  *(a1 + 200) = v32;
  *(a1 + 208) = v18;
LABEL_32:
  v20 = *(v18 + 20);
  if (!v20)
  {
    return 0;
  }

  v36 = *(v20 + 8);
  v34 = v20 + 8;
  v35 = v36;
  if (!v36)
  {
    return 0;
  }

  v37 = (v16 << 17) >> 15;
  v38 = v34;
  do
  {
    v39 = *(v35 + 32);
    v40 = v39 >= v37;
    v41 = v39 < v37;
    if (v40)
    {
      v38 = v35;
    }

    v35 = *(v35 + 8 * v41);
  }

  while (v35);
  if (v38 == v34)
  {
    return 0;
  }

  v42 = *(v38 + 32);
  if (v37 > v42 || v37 + 4 * (v16 >> 47) <= v42)
  {
    return 0;
  }

  v43 = *(v38 + 40);
  result = 1;
  if (!v43)
  {
    goto LABEL_67;
  }

  if (v43 == 1)
  {
    LOBYTE(result) = -1;
LABEL_67:
    *a2 = result;
    return 1;
  }

  return result;
}

void hwtrace_cursor_init_from_thread(void *a1)
{
  *v23 = 0u;
  *__p = 0u;
  v22 = 0u;
  v25 = 1065353216;
  v1 = a1[2];
  if (a1[3] == v1)
  {
    std::generic_category();
    v39[0] = "lib_cursor.cpp";
    v39[2] = ":";
    v40 = 771;
    v31 = 3;
    LODWORD(v30[0]) = 3553075;
    v41[0] = v39;
    v41[2] = v30;
    v42 = 1026;
    v43[0] = v41;
    v43[2] = ": ";
    v44 = 770;
    v37[0] = "Invalid cursor";
    v38 = 259;
    sub_298ADC860(v43, v37, v45);
    sub_298B996A4(v45, v35);
    operator new();
  }

  v3 = ****(*a1 + 8);
  v4 = *v1;
  v5 = sub_298C09510(&v22, **(*v1 + 8));
  v45[0] = **(v4 + 8);
  v26.n128_u64[0] = v45;
  v6 = sub_298AF4504((v3 + 48), v45[0])[3];
  v7 = *(v4 + 176);
  v8 = *(v4 + 144);
  v9 = *(v5 + 88);
  if (v9 <= v8)
  {
    if (*(v5 + 96) + v9 > v8)
    {
      v12 = *(v5 + 104);
      goto LABEL_7;
    }

    v21 = *(v5 + 128);
    v9 = *(v4 + 144);
  }

  else
  {
    v10 = *(v5 + 128);
    if (v10 <= v8)
    {
      v9 = v8 - v10 + 1;
    }

    else
    {
      v9 = 0;
    }
  }

  *(v5 + 112) = *(v5 + 104);
  v11 = *(v5 + 80);
  (*(**(v5 + 72) + 40))(*(v5 + 72), v9);
  v12 = *(v5 + 104);
  v13 = 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 112) - v12) >> 3);
  *(v5 + 88) = v9;
  *(v5 + 96) = v13;
LABEL_7:
  v14 = *(v12 + 24 * (v8 - v9) + 8);
  do
  {
    if (++v8 >= *(*(v5 + 328) + 16))
    {
      break;
    }

    v26 = 0uLL;
    v27 = 0;
    v45[0] = v8;
    v45[1] = v5;
    sub_298C09708(v45, &v26);
  }

  while (v14 == v26.n128_u64[1]);
  v15 = *(v4 + 16);
  v16 = *****v6;
  v45[0] = v6;
  v26.n128_u64[0] = v45;
  v17 = sub_298AE90FC((v16 + 8), v45);
  v18 = sub_298C09510(&v22, v17[3]);
  if (v7 < *(*(v18 + 328) + 8))
  {
    v26.n128_u64[0] = v7;
    v26.n128_u64[1] = v18;
    if (sub_298C09638(v26.n128_u64) >> 47)
    {
      v20 = (a1[3] - a1[2]) >> 3;
      operator new();
    }
  }

  v19 = std::generic_category();
  v39[0] = "lib_cursor.cpp";
  v40 = 259;
  v37[0] = ":";
  v38 = 259;
  sub_298ADC860(v39, v37, v41);
  v34 = 3;
  LODWORD(v33) = 3749683;
  v36 = 260;
  v35[0] = &v33;
  sub_298ADC860(v41, v35, v43);
  v30[0] = ": ";
  v32 = 259;
  sub_298ADC860(v43, v30, v45);
  v28 = "Invalid cursor";
  v29 = 259;
  sub_298ADC860(v45, &v28, &v26);
  sub_298ADDCA4(45, v19, &v26);
}

void hwtrace_cursor_init_from_core(unint64_t **a1)
{
  v2 = *****a1;
  memset(v38, 0, sizeof(v38));
  v39 = 1065353216;
  v25[0] = a1;
  v17 = v25;
  v3 = sub_298AE90FC(&v2[1], v25)[3];
  v4 = sub_298C09510(v38, v3);
  if (!*(*(v3 + 96) + 24))
  {
    v5 = std::generic_category();
    v34[0] = "lib_cursor.cpp";
    v35 = 259;
    v32[0] = ":";
    v33 = 259;
    sub_298ADC860(v34, v32, v36);
    v13 = 3;
    LODWORD(__p[0]) = 3748146;
    v31 = 260;
    v30[0] = __p;
    sub_298ADC860(v36, v30, v37);
    v28[0] = ": ";
    v29 = 259;
    sub_298ADC860(v37, v28, v25);
    v26[0] = "No decodable context on this core";
    v27 = 259;
    sub_298ADC860(v25, v26, &v17);
    sub_298ADDCA4(45, v5, &v17);
  }

  v6 = v4;
  v17 = 0;
  v18 = v4;
  sub_298C097E4(&v17, v25);
  v7 = sub_298AE6950(v2, **a1, v25[0], v25[1]);
  v8 = sub_298AF446C(v6, 0);
  v17 = v7;
  v18 = a1;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  v23 = 0;
  v21 = v8;
  v24 = 1;
  if (*(*(v6 + 328) + 8))
  {
    v37[0] = 0;
    v37[1] = v6;
    if (sub_298C09638(v37) >> 47)
    {
      sub_298AF7BEC();
    }
  }

  v9 = std::generic_category();
  v30[0] = "lib_cursor.cpp";
  v31 = 259;
  v28[0] = ":";
  v29 = 259;
  sub_298ADC860(v30, v28, v32);
  v16 = 3;
  LODWORD(v15) = 3682866;
  v27 = 260;
  v26[0] = &v15;
  sub_298ADC860(v32, v26, v34);
  __p[0] = ": ";
  v14 = 259;
  sub_298ADC860(v34, __p, v36);
  v10 = "Invalid cursor";
  v11 = 259;
  sub_298ADC860(v36, &v10, v37);
  sub_298ADDCA4(45, v9, v37);
}

void hwtrace_cursor_init_from_async_task(void *a1)
{
  *v26 = 0u;
  *__p = 0u;
  v25 = 0u;
  v28 = 1065353216;
  v2 = a1[2];
  if (a1[3] == v2)
  {
    goto LABEL_25;
  }

  v3 = *a1;
  v4 = ****(*a1 + 8);
  v5 = *v2;
  v6 = sub_298C09510(&v25, **(*v2 + 8));
  v7 = *(v5 + 32);
  v8 = (*(*v3 + 16))(v3);
  v9 = *(v8 + 184);
  if (!*&v9)
  {
    goto LABEL_25;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] <= 1uLL)
  {
    v11 = (*&v9 - 1) & v7;
  }

  else
  {
    v11 = *&v9 > v7 ? v7 : v7 % *&v9;
  }

  v12 = *(*(v8 + 176) + 8 * v11);
  if (!v12)
  {
    goto LABEL_25;
  }

  v13 = *v12;
  if (!v13)
  {
    goto LABEL_25;
  }

  if (v10.u32[0] < 2uLL)
  {
    v14 = *&v9 - 1;
    while (1)
    {
      v16 = v13[1];
      if (v16 == v7)
      {
        if (v13[2] == v7)
        {
          goto LABEL_22;
        }
      }

      else if ((v16 & v14) != v11)
      {
        goto LABEL_25;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v15 = v13[1];
    if (v15 == v7)
    {
      if (v13[2] == v7)
      {
LABEL_22:
        if (v13[3])
        {
          v44[0] = **(v5 + 8);
          v29[0] = v44;
          v17 = sub_298AF4504((v4 + 48), v44[0])[3];
          v18 = *(v5 + 176);
          sub_298AF446C(v6, *(v5 + 144));
          v19 = *(v5 + 16);
          v20 = sub_298AF21AC(v17);
          v21 = sub_298C09510(&v25, v20);
          if (*(*(v21 + 328) + 8) > v18)
          {
            v29[0] = v18;
            v29[1] = v21;
            if (sub_298C09638(v29) >> 47)
            {
              v24 = (a1[3] - a1[2]) >> 3;
              operator new();
            }
          }

          v22 = std::generic_category();
          v40[0] = "lib_cursor.cpp";
          v41 = 259;
          v38[0] = ":";
          v39 = 259;
          sub_298ADC860(v40, v38, v42);
          v35 = 3;
          v34[0] = 3749683;
          v37 = 260;
          v36[0] = v34;
          sub_298ADC860(v42, v36, v43);
          v32[0] = ": ";
          v33 = 259;
          sub_298ADC860(v43, v32, v44);
          v30[0] = "Invalid cursor";
          v31 = 259;
          sub_298ADC860(v44, v30, v29);
          sub_298ADDCA4(45, v22, v29);
        }

LABEL_25:
        v23 = std::generic_category();
        v40[0] = "lib_cursor.cpp";
        v41 = 259;
        v38[0] = ":";
        v39 = 259;
        sub_298ADC860(v40, v38, v42);
        v35 = 3;
        v34[0] = 3553075;
        v37 = 260;
        v36[0] = v34;
        sub_298ADC860(v42, v36, v43);
        v32[0] = ": ";
        v33 = 259;
        sub_298ADC860(v43, v32, v44);
        v30[0] = "Invalid cursor";
        v31 = 259;
        sub_298ADC860(v44, v30, v29);
        sub_298ADDCA4(45, v23, v29);
      }
    }

    else
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }

      if (v15 != v11)
      {
        goto LABEL_25;
      }
    }

    v13 = *v13;
    if (!v13)
    {
      goto LABEL_25;
    }
  }
}

uint64_t hwtrace_cursor_deinit(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t hwtrace_cursor_next_pc(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40) + 1;
  v4 = *(a1 + 64);
  v6 = *(a1 + 16);
  v7 = v2;
  v8 = v3;
  v9 = *(a1 + 48);
  v10 = v4;
  if (sub_298AF1DB0(a1, &v6))
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 32))(a1) - 1;
  }
}

uint64_t hwtrace_cursor_prev_pc(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40) - 1;
  v4 = *(a1 + 64);
  v9 = *(a1 + 16);
  v10 = v2;
  v11 = v3;
  v12 = *(a1 + 48);
  v13 = v4;
  if (sub_298AF1DB0(a1, &v9))
  {
    return 0;
  }

  if (!(*(*a1 + 24))(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 32);
  v7 = (*(a1 + 136) >> 47) - 1;
  v8 = *(a1 + 64);
  v9 = *(a1 + 16);
  v10 = v6;
  v11 = v7;
  v12 = *(a1 + 48);
  v13 = v8;
  return sub_298AF1DB0(a1, &v9) - 1;
}

uint64_t hwtrace_cursor_segment(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  v4 = v3[12];
  if (!*&v4)
  {
    goto LABEL_27;
  }

  v5 = ***(a1 + 24);
  v6 = 0x9DDFEA08EB382D69 * ((8 * (v5 & 0x1FFFFFFF) + 8) ^ HIDWORD(v5));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = vcnt_s8(v4);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] <= 1uLL)
  {
    v10 = v8 & (*&v4 - 1);
  }

  else
  {
    v10 = v8;
    if (v8 >= *&v4)
    {
      v10 = v8 % *&v4;
    }
  }

  v11 = *(*&v3[11] + 8 * v10);
  if (!v11)
  {
    goto LABEL_27;
  }

  v12 = *v11;
  if (!v12)
  {
    goto LABEL_27;
  }

  if (v9.u32[0] < 2uLL)
  {
    v13 = *&v4 - 1;
    while (1)
    {
      v15 = v12[1];
      if (v8 == v15)
      {
        if (v12[2] == v5)
        {
          goto LABEL_21;
        }
      }

      else if ((v15 & v13) != v10)
      {
        goto LABEL_27;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_27;
      }
    }
  }

  while (1)
  {
    v14 = v12[1];
    if (v8 == v14)
    {
      break;
    }

    if (v14 >= *&v4)
    {
      v14 %= *&v4;
    }

    if (v14 != v10)
    {
      goto LABEL_27;
    }

LABEL_11:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_27;
    }
  }

  if (v12[2] != v5)
  {
    goto LABEL_11;
  }

LABEL_21:
  v16 = v12[3];
  v17 = *(a1 + 168);
  v18 = *(a1 + 208);
  if (!v18 || *(v18 + 144) > v17 || *(v18 + 152) <= v17 || *(a1 + 192) > a2 || *(a1 + 200) <= a2)
  {
    if (*(*(*v16 + 8) + 1) != 1 || (v20 = *(a1 + 184)) == 0)
    {
LABEL_75:
      std::generic_category();
      v51[0] = "lib_cursor.cpp";
      v51[2] = ":";
      v52 = 771;
      v50 = 3;
      LODWORD(__p) = 3486769;
      v53[0] = v51;
      v53[2] = &__p;
      v54 = 1026;
      v55[0] = v53;
      v55[2] = ": ";
      v56 = 770;
      v57[0] = v55;
      v57[2] = "segment lookup failed";
      v58 = 770;
      sub_298B996A4(v57, &v59);
      operator new();
    }

    while (1)
    {
      v33 = v20[56];
      v32 = v20[57];
      if (v33 != v32)
      {
        v34 = 0x2E8BA2E8BA2E8BA3 * ((v32 - v33) >> 4);
        v35 = v34 >> 1;
        v36 = v33 + 176 * (v34 >> 1);
        v37 = *(v36 + 72);
        v38 = v36 + 176;
        v39 = v34 + ~(v34 >> 1);
        if (v37 <= a2)
        {
          v40 = v38;
        }

        else
        {
          v40 = v20[56];
        }

        if (v37 <= a2)
        {
          v41 = v39;
        }

        else
        {
          v41 = v35;
        }

        while (v41)
        {
          v45 = v41 >> 1;
          v46 = v40 + 176 * (v41 >> 1);
          v47 = *(v46 + 72);
          v48 = v46 + 176;
          v41 += ~(v41 >> 1);
          if (v47 > a2)
          {
            v41 = v45;
          }

          else
          {
            v40 = v48;
          }
        }

        if (v40 != v33)
        {
          break;
        }
      }

LABEL_55:
      v20 = *v20;
      if (!v20)
      {
        goto LABEL_75;
      }
    }

    v18 = v40 - 176;
    while (1)
    {
      if (*(v18 + 144) <= v17 && *(v18 + 152) > v17)
      {
        v42 = *(v18 + 72);
        if (v42 <= a2)
        {
          v43 = *(v18 + 64) + v42;
          if (v43 > a2)
          {
            break;
          }
        }
      }

      if (*(v18 + 72) <= a2)
      {
        v44 = v33 == v18;
        v18 -= 176;
        if (!v44)
        {
          continue;
        }
      }

      goto LABEL_55;
    }

    *(a1 + 192) = v42;
    *(a1 + 200) = v43;
    *(a1 + 208) = v18;
  }

  v19 = v16[3];
  if (!*&v19)
  {
    goto LABEL_27;
  }

  v21 = 0x9DDFEA08EB382D69 * ((8 * (v18 & 0x1FFFFFFF) + 8) ^ HIDWORD(v18));
  v22 = 0x9DDFEA08EB382D69 * (HIDWORD(v18) ^ (v21 >> 47) ^ v21);
  v23 = 0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47));
  v24 = vcnt_s8(v19);
  v24.i16[0] = vaddlv_u8(v24);
  if (v24.u32[0] > 1uLL)
  {
    v25 = v23 < *&v19 ? 0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47)) : v23 % *&v19;
  }

  else
  {
    v25 = v23 & (*&v19 - 1);
  }

  v26 = *(v16[2] + 8 * v25);
  if (!v26 || (v27 = *v26) == 0)
  {
LABEL_27:
    abort();
  }

  if (v24.u32[0] >= 2uLL)
  {
    while (1)
    {
      v28 = v27[1];
      if (v23 == v28)
      {
        if (v27[2] == v18)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v28 >= *&v19)
        {
          v28 %= *&v19;
        }

        if (v28 != v25)
        {
          goto LABEL_27;
        }
      }

      v27 = *v27;
      if (!v27)
      {
        goto LABEL_27;
      }
    }
  }

  v29 = *&v19 - 1;
  while (1)
  {
    v30 = v27[1];
    if (v23 != v30)
    {
      if ((v30 & v29) != v25)
      {
        goto LABEL_27;
      }

      goto LABEL_51;
    }

    if (v27[2] == v18)
    {
      break;
    }

LABEL_51:
    v27 = *v27;
    if (!v27)
    {
      goto LABEL_27;
    }
  }

LABEL_53:
  result = 0;
  *a3 = v27[3];
  return result;
}

uint64_t hwtrace_cursor_callstack(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(*a1 + 56))(a1);
  *a2 = result;
  *a3 = v6;
  return result;
}

uint64_t hwtrace_range_terminator(uint64_t a1)
{
  if (((*(a1 + 8) >> 22) & 0xFu) - 1 < 9)
  {
    return (((*(a1 + 8) >> 22) & 0xF) - 1) + 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_298AF4294(_BYTE *__dst, _BYTE *a2, _BYTE *a3)
{
  v3 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  if (v3 > 0x16)
  {
    operator new();
  }

  __dst[23] = v3;
  if (a3 != a2)
  {
    memmove(__dst, a2, v3);
  }

  __dst[v3] = 0;
  return __dst;
}

uint64_t sub_298AF4350(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[3];
    v2[3] = 0;
    if (v4)
    {
      v11 = v2;
      (*(*v4 + 8))(v4);
      v2 = v11;
    }

    operator delete(v2);
    if (v3)
    {
      v5 = *v3;
      v6 = v3[3];
      v3[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v3);
      if (v5)
      {
        do
        {
          v7 = *v5;
          v8 = v5[3];
          v5[3] = 0;
          if (v8)
          {
            (*(*v8 + 8))(v8);
          }

          operator delete(v5);
          v5 = v7;
        }

        while (v7);
      }
    }
  }

  v9 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

unint64_t sub_298AF446C(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v9 = 0uLL;
  v10 = 0;
  v7.n128_u64[0] = a2;
  v7.n128_u64[1] = a1;
  sub_298C09708(v7.n128_u64, &v9);
  v4 = v9.n128_u64[1];
  do
  {
    result = v2++;
    if (v2 >= *(*(a1 + 328) + 16))
    {
      break;
    }

    v7 = 0uLL;
    v8 = 0;
    v11[0] = v2;
    v11[1] = a1;
    v6 = result;
    sub_298C09708(v11, &v7);
    result = v6;
  }

  while (v4 == v7.n128_u64[1]);
  return result;
}

void *sub_298AF4504(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_21;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] <= 1uLL)
  {
    v7 = (*&v5 - 1) & v4;
  }

  else
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (result = *v8) == 0)
  {
LABEL_21:
    operator new();
  }

  if (v6.u32[0] >= 2uLL)
  {
    while (1)
    {
      v10 = result[1];
      if (v10 == v4)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v10 >= *&v5)
        {
          v10 %= *&v5;
        }

        if (v10 != v7)
        {
          goto LABEL_21;
        }
      }

      result = *result;
      if (!result)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v11 = result[1];
    if (v11 == v4)
    {
      break;
    }

    if ((v11 & (*&v5 - 1)) != v7)
    {
      goto LABEL_21;
    }

LABEL_14:
    result = *result;
    if (!result)
    {
      goto LABEL_21;
    }
  }

  if (result[2] != a2)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_298AF478C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *a4;
  v9 = a4[1];
  v39 = *(a4 + 1);
  v40 = *(a4 + 2);
  v41 = a4[6];
  *a1 = &unk_2A1F1BA60;
  *(a1 + 8) = *****v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  *(a1 + 64) = v41;
  *(a1 + 32) = v39;
  *(a1 + 48) = v40;
  v11 = *****v9;
  *&v42 = v9;
  v44[0] = &v42;
  v12 = sub_298AE90FC((v11 + 8), &v42)[3];
  *(a1 + 80) = 0u;
  *(a1 + 72) = v12;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1065353216;
  sub_298C09510((a1 + 80), *a5);
  v13 = *(a1 + 88);
  v14 = *(a1 + 32);
  v15 = *(v13 + 24);
  if (v15 <= v14)
  {
    if (*(v13 + 32) + v15 > v14)
    {
      v17 = *(v13 + 40);
      goto LABEL_9;
    }

    v16 = *(v13 + 64);
    v15 = *(a1 + 32);
  }

  else
  {
    v16 = *(v13 + 64);
    if (v16 <= v14)
    {
      v15 = v14 - v16 + 1;
    }

    else
    {
      v15 = 0;
    }
  }

  *(v13 + 48) = *(v13 + 40);
  (*(**(v13 + 8) + 32))(*(v13 + 8), v15, v16, v13 + 40, *(v13 + 16));
  v17 = *(v13 + 40);
  v18 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 + 48) - v17) >> 2);
  *(v13 + 24) = v15;
  *(v13 + 32) = v18;
LABEL_9:
  v19 = (v17 + 12 * (v14 - v15));
  v20 = *v19;
  v21 = *(v19 + 2);
  v22 = *(a1 + 48);
  v23 = *(v13 + 88);
  if (v23 <= v22)
  {
    if (*(v13 + 96) + v23 > v22)
    {
      v25 = *(v13 + 104);
      goto LABEL_17;
    }

    v24 = *(v13 + 128);
    v23 = *(a1 + 48);
  }

  else
  {
    v24 = *(v13 + 128);
    if (v24 <= v22)
    {
      v23 = v22 - v24 + 1;
    }

    else
    {
      v23 = 0;
    }
  }

  v27 = *(v13 + 104);
  v26 = (v13 + 104);
  v26[1] = v27;
  (*(**(v26 - 4) + 40))(*(v26 - 4), v23, v24, v26, *(v26 - 3));
  v25 = *v26;
  v28 = 0xAAAAAAAAAAAAAAABLL * ((v26[1] - *v26) >> 3);
  *(v26 - 2) = v23;
  *(v26 - 1) = v28;
LABEL_17:
  v29 = (v25 + 24 * (v22 - v23));
  v42 = *v29;
  v43 = *(v29 + 2);
  v30 = *(a1 + 32) + 1;
  v31 = *(a1 + 88);
  v32 = *(v31 + 328);
  if (v30 == *(v32 + 8))
  {
    v33 = 1;
  }

  else if ((*(a1 + 56) + 1) >= *(v32 + 24))
  {
    v33 = 0;
  }

  else
  {
    v45[0] = *(a1 + 56) + 1;
    v45[1] = v31;
    sub_298C097E4(v45, v44);
    v33 = v44[3] == v30;
  }

  *(a1 + 136) = v20;
  *(a1 + 144) = v21;
  *(a1 + 152) = v42;
  *(a1 + 168) = v43;
  *(a1 + 176) = v33;
  *(a1 + 184) = *(*v10 + 40);
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *a1 = &unk_2A1F1BAB0;
  *(a1 + 448) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 224) = a2;
  *(a1 + 232) = a3;
  *(a1 + 256) = 0;
  if (!(*(**a2 + 16))())
  {
    v34 = (*(***(a1 + 16) + 16))(**(a1 + 16));
    *(a1 + 240) = sub_298AF6584(*(v34 + 288), *(*(a1 + 224) + 8 * *(a1 + 216)));
    *(a1 + 248) = v35;
  }

  v36 = sub_298AF21AC(a4[1]);
  *(a1 + 72) = v36;
  sub_298C09510((a1 + 80), v36);
  return a1;
}

uint64_t sub_298AF4B68(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v6 = ******(a2 + 1);
  *a1 = &unk_2A1F1BA60;
  *(a1 + 8) = v6;
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  *(a1 + 64) = *(a2 + 6);
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 16) = v7;
  v10 = ******(a2 + 1);
  v12[0] = *(a2 + 1);
  v12[2] = v12;
  *(a1 + 72) = sub_298AE90FC((v10 + 8), v12)[3];
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 128) = 1065353216;
  sub_298C09510((a1 + 80), *a3);
  sub_298AF2208((a1 + 136), a1);
  *(a1 + 184) = *(**a2 + 40);
  *(a1 + 208) = 0;
  return a1;
}

uint64_t sub_298AF4C78(uint64_t a1)
{
  *a1 = &unk_2A1F1BAB0;
  if (*(a1 + 448) == 1)
  {
    sub_298AF679C(a1 + 256);
  }

  *a1 = &unk_2A1F1BA60;
  v2 = *(a1 + 112);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        v7 = v2;
        (*(*v4 + 8))(v4);
        v2 = v7;
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_298AF4D5C(uint64_t a1)
{
  *a1 = &unk_2A1F1BAB0;
  if (*(a1 + 448) == 1)
  {
    sub_298AF679C(a1 + 256);
  }

  *a1 = &unk_2A1F1BA60;
  v2 = *(a1 + 112);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[3];
    v2[3] = 0;
    if (v4)
    {
      v10 = v2;
      (*(*v4 + 8))(v4);
      v2 = v10;
    }

    operator delete(v2);
    if (v3)
    {
      v5 = *v3;
      v6 = v3[3];
      v3[3] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      operator delete(v3);
      if (v5)
      {
        do
        {
          v7 = *v5;
          v8 = v5[3];
          v5[3] = 0;
          if (v8)
          {
            (*(*v8 + 8))(v8);
          }

          operator delete(v5);
          v5 = v7;
        }

        while (v7);
      }
    }
  }

  v9 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298AF5014(uint64_t a1)
{
  v3 = *(a1 + 216);
  v2 = *(a1 + 224);
  v4 = *(v2 + 8 * v3);
  v5 = *(a1 + 32);
  if (*(v4 + 176) < v5)
  {
    v6 = v5 - 1;
    v7 = sub_298AF7530(*(**(v4 + 8) + 96), *(a1 + 88), *(a1 + 48), v5, v5 - 1);
    v8 = (*(*a1 + 72))(a1, 0);
    v9 = *(v4 + 16);
    v34 = *(a1 + 16);
    v35 = v6;
    v36 = 0;
    v37 = v7;
    v38 = v9;
LABEL_24:
    v39 = v8;
    return sub_298AF1DB0(a1, &v34);
  }

  if (v3)
  {
    v10 = v3 - 1;
    *(a1 + 216) = v10;
    v11 = *(v2 + 8 * v10);
    if (!(*(*v11 + 16))(v11))
    {
      v12 = (*(***(a1 + 16) + 16))(**(a1 + 16));
      *(a1 + 240) = sub_298AF6584(*(v12 + 288), *(*(a1 + 224) + 8 * *(a1 + 216)));
      *(a1 + 248) = v13;
    }

    v14 = v11[1];
    v15 = *v14;
    *(a1 + 72) = *v14;
    v16 = sub_298C09510((a1 + 80), v15);
    v17 = *(a1 + 8);
    v40 = *v11[1];
    *&v34 = &v40;
    *(&v32 + 1) = sub_298AF4504((v17 + 48), v40)[3];
    *&v32 = (*(*a1 + 64))(a1, v11, v16);
    v18 = *(*(v16 + 328) + 16);
    v33 = v11;
    v19 = 0;
    if (!v18)
    {
LABEL_20:
      if (v19)
      {
        v28 = v19 - 1;
      }

      else
      {
        v28 = 0;
      }

      v8 = (*(*a1 + 80))(a1, v33);
      v29 = v33[23] - 1;
      v30 = v33[2];
      v34 = v32;
      v35 = v29;
      v36 = 0;
      v37 = v28;
      v38 = v30;
      goto LABEL_24;
    }

    v20 = v11[23] - 1;
    v21 = *(v16 + 88);
    while (1)
    {
      v26 = (v18 >> 1) + v19;
      if (v21 > v26)
      {
        v22 = *(v16 + 128);
        if (v22 <= v26)
        {
          v21 = v26 - v22 + 1;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        if (*(v16 + 96) + v21 > v26)
        {
          v24 = *(v16 + 104);
          goto LABEL_12;
        }

        v27 = *(v16 + 128);
        v21 = (v18 >> 1) + v19;
      }

      *(v16 + 112) = *(v16 + 104);
      v23 = *(v16 + 80);
      (*(**(v16 + 72) + 40))(*(v16 + 72), v21);
      v24 = *(v16 + 104);
      v25 = 0xAAAAAAAAAAAAAAABLL * ((*(v16 + 112) - v24) >> 3);
      *(v16 + 88) = v21;
      *(v16 + 96) = v25;
LABEL_12:
      if (*(v24 + 24 * (v26 - v21) + 8) > v20)
      {
        v18 >>= 1;
      }

      else
      {
        v19 = v26 + 1;
        v18 += ~(v18 >> 1);
      }

      if (!v18)
      {
        goto LABEL_20;
      }
    }
  }

  return 0;
}

uint64_t sub_298AF5328(uint64_t a1)
{
  v3 = *(a1 + 216);
  v2 = *(a1 + 224);
  v4 = *(v2 + 8 * v3);
  v5 = *(a1 + 32);
  v6 = v5 + 1;
  if (*(v4 + 184) > (v5 + 1))
  {
    v7 = *(a1 + 48);
    v8 = *(**(v4 + 8) + 96);
    if (*(v8 + 8) <= v6)
    {
      goto LABEL_4;
    }

    v9 = v7 + 1;
    if (v7 + 1 >= *(v8 + 16))
    {
      goto LABEL_4;
    }

    v27 = *(a1 + 88);
    v28 = *(v27 + 88);
    if (v28 <= v9)
    {
      v32 = *(v27 + 96);
      if (v32 + v28 > v9)
      {
        v31 = *(v27 + 104);
LABEL_25:
        if (*(v31 + 24 * (v9 - v28) + 8) != v6)
        {
          goto LABEL_4;
        }

        if (v9 >= v28)
        {
          v63 = v28 + v32;
          v38 = v5 + 1;
          if (v63 > v9)
          {
LABEL_31:
            v39 = v7 + 2;
            if (v7 + 2 < *(*(v27 + 328) + 16))
            {
              memset(v89, 0, 24);
              *&v93 = v7 + 2;
              *(&v93 + 1) = v27;
              sub_298C09708(&v93, v89);
              v88 = *&v89[8];
              ++v7;
              while (v38 == v88)
              {
                v7 = v39++;
                if (v39 >= *(*(v27 + 328) + 16))
                {
                  break;
                }

                memset(v89, 0, 24);
                *&v93 = v39;
                *(&v93 + 1) = v27;
                sub_298C09708(&v93, v89);
                v88 = *&v89[8];
              }
            }

            else
            {
              ++v7;
            }

LABEL_4:
            v10 = (*(*a1 + 72))(a1, 1);
            v11 = *(a1 + 24);
            v12 = *(a1 + 88);
            if (v6 >= *(v12[41] + 8))
            {
LABEL_78:
              v86 = *****v11;
              *&v93 = v11;
              *v89 = &v93;
              v87 = sub_298AE90FC((v86 + 8), &v93)[3];
              *(a1 + 72) = v87;
              sub_298C09510((a1 + 80), v87);
              return 0;
            }

            v13 = v10;
            v14 = *(a1 + 16);
            v15 = *(v4 + 16);
            v16 = v12[3];
            if (v16 <= v6)
            {
              if (v12[4] + v16 > v6)
              {
                v21 = v12[5];
                goto LABEL_10;
              }

              v40 = v12[8];
              v16 = v5 + 1;
            }

            else
            {
              v17 = v12[8];
              if (v17 <= v6)
              {
                v16 = v5 - v17 + 2;
              }

              else
              {
                v16 = 0;
              }
            }

            v19 = v12[5];
            v18 = v12 + 5;
            v18[1] = v19;
            v20 = *(v18 - 3);
            (*(**(v18 - 4) + 32))(*(v18 - 4), v16);
            v21 = *v18;
            v22 = 0xAAAAAAAAAAAAAAABLL * ((v18[1] - *v18) >> 2);
            *(v18 - 2) = v16;
            *(v18 - 1) = v22;
LABEL_10:
            if (*(v21 + 12 * (v6 - v16)) >> 47)
            {
              if (*(a1 + 16) != v14)
              {
                *(a1 + 184) = *(*v14 + 40);
                *(a1 + 208) = 0;
              }

              *(a1 + 16) = v14;
              *(a1 + 24) = v11;
              *(a1 + 32) = v6;
              *(a1 + 40) = 0;
              *(a1 + 48) = v7;
              *(a1 + 56) = v15;
              *(a1 + 64) = v13;
              v23 = *(a1 + 88);
              v24 = *(v23 + 24);
              if (v24 <= v6)
              {
                if (*(v23 + 32) + v24 > v6)
                {
                  v26 = *(v23 + 40);
                  goto LABEL_37;
                }

                v25 = *(v23 + 64);
                v24 = v5 + 1;
              }

              else
              {
                v25 = *(v23 + 64);
                if (v25 <= v6)
                {
                  v24 = v5 - v25 + 2;
                }

                else
                {
                  v24 = 0;
                }
              }

              *(v23 + 48) = *(v23 + 40);
              (*(**(v23 + 8) + 32))(*(v23 + 8), v24, v25, v23 + 40, *(v23 + 16));
              v26 = *(v23 + 40);
              v41 = 0xAAAAAAAAAAAAAAABLL * ((*(v23 + 48) - v26) >> 2);
              *(v23 + 24) = v24;
              *(v23 + 32) = v41;
              v7 = *(a1 + 48);
LABEL_37:
              v42 = (v26 + 12 * (v6 - v24));
              v43 = *v42;
              v44 = *(v42 + 2);
              v45 = *(v23 + 88);
              if (v45 <= v7)
              {
                if (*(v23 + 96) + v45 > v7)
                {
                  v47 = *(v23 + 104);
                  goto LABEL_45;
                }

                v46 = *(v23 + 128);
                v45 = v7;
              }

              else
              {
                v46 = *(v23 + 128);
                if (v46 <= v7)
                {
                  v45 = v7 - v46 + 1;
                }

                else
                {
                  v45 = 0;
                }
              }

              v49 = *(v23 + 104);
              v48 = (v23 + 104);
              v48[1] = v49;
              (*(**(v48 - 4) + 40))(*(v48 - 4), v45, v46, v48, *(v48 - 3));
              v47 = *v48;
              v50 = 0xAAAAAAAAAAAAAAABLL * ((v48[1] - *v48) >> 3);
              *(v48 - 2) = v45;
              *(v48 - 1) = v50;
LABEL_45:
              v51 = (v47 + 24 * (v7 - v45));
              v93 = *v51;
              v94 = *(v51 + 2);
              v52 = *(a1 + 32) + 1;
              v53 = *(a1 + 88);
              v54 = v53[41];
              if (v52 == *(v54 + 8))
              {
                v60 = 1;
                goto LABEL_57;
              }

              v55 = *(a1 + 56);
              v56 = v55 + 1;
              if ((v55 + 1) >= *(v54 + 24))
              {
                v60 = 0;
                goto LABEL_57;
              }

              v57 = v53[19];
              if (v57 <= v56)
              {
                if (v53[20] + v57 > v56)
                {
LABEL_56:
                  v60 = *(v53[21] + 56 * (v56 - v57) + 24) == v52;
LABEL_57:
                  *&v89[4] = v93;
                  *&v89[20] = v94;
                  *(a1 + 136) = v43;
                  *(a1 + 144) = v44;
                  *(a1 + 148) = *v89;
                  *(a1 + 160) = *&v89[12];
                  *(a1 + 176) = v60;
                  return 1;
                }

                v58 = v53[24];
                v59 = v55 + 1;
              }

              else
              {
                v58 = v53[24];
                if (v58 <= v56)
                {
                  v59 = v55 - v58 + 2;
                }

                else
                {
                  v59 = 0;
                }
              }

              sub_298C0EAF8(v53 + 17, v59, v58);
              v57 = v53[19];
              goto LABEL_56;
            }

            v11 = *(a1 + 24);
            goto LABEL_78;
          }

          v64 = *(v27 + 128);
          v34 = v7 + 1;
        }

        else
        {
          v33 = *(v27 + 128);
          if (v33 <= v9)
          {
            v34 = v7 - v33 + 2;
          }

          else
          {
            v34 = 0;
          }
        }

        *(v27 + 112) = v31;
        v35 = *(v27 + 80);
        (*(**(v27 + 72) + 40))(*(v27 + 72), v34);
        v36 = *(v27 + 104);
        v37 = 0xAAAAAAAAAAAAAAABLL * ((*(v27 + 112) - v36) >> 3);
        *(v27 + 88) = v34;
        *(v27 + 96) = v37;
        v38 = *(v36 + 24 * (v9 - v34) + 8);
        goto LABEL_31;
      }

      v62 = *(v27 + 128);
      v28 = v7 + 1;
    }

    else
    {
      v29 = *(v27 + 128);
      if (v29 <= v9)
      {
        v28 = v7 - v29 + 2;
      }

      else
      {
        v28 = 0;
      }
    }

    *(v27 + 112) = *(v27 + 104);
    v30 = *(v27 + 80);
    (*(**(v27 + 72) + 40))(*(v27 + 72), v28);
    v31 = *(v27 + 104);
    v32 = 0xAAAAAAAAAAAAAAABLL * ((*(v27 + 112) - v31) >> 3);
    *(v27 + 88) = v28;
    *(v27 + 96) = v32;
    goto LABEL_25;
  }

  v65 = v3 + 1;
  if (v65 == *(a1 + 232))
  {
    return 0;
  }

  *(a1 + 216) = v65;
  v66 = *(v2 + 8 * v65);
  if (!(*(*v66 + 16))(v66))
  {
    v67 = (*(***(a1 + 16) + 16))(**(a1 + 16));
    *(a1 + 240) = sub_298AF6584(*(v67 + 288), *(*(a1 + 224) + 8 * *(a1 + 216)));
    *(a1 + 248) = v68;
  }

  v69 = v66[1];
  v70 = *v69;
  *(a1 + 72) = *v69;
  v71 = sub_298C09510((a1 + 80), v70);
  v72 = *(a1 + 8);
  *&v93 = *v66[1];
  *v89 = &v93;
  v73 = sub_298AF4504((v72 + 48), v93)[3];
  v74 = (*(*a1 + 64))(a1, v66, v71);
  v75 = v66[18];
  v76 = *(v71 + 88);
  if (v76 > v75)
  {
    v77 = *(v71 + 128);
    if (v77 <= v75)
    {
      v76 = v75 - v77 + 1;
    }

    else
    {
      v76 = 0;
    }

    goto LABEL_69;
  }

  if (*(v71 + 96) + v76 <= v75)
  {
    v85 = *(v71 + 128);
    v76 = v66[18];
LABEL_69:
    *(v71 + 112) = *(v71 + 104);
    v78 = *(v71 + 80);
    (*(**(v71 + 72) + 40))(*(v71 + 72), v76);
    v79 = *(v71 + 104);
    v80 = 0xAAAAAAAAAAAAAAABLL * ((*(v71 + 112) - v79) >> 3);
    *(v71 + 88) = v76;
    *(v71 + 96) = v80;
    goto LABEL_70;
  }

  v79 = *(v71 + 104);
LABEL_70:
  v81 = *(v79 + 24 * (v75 - v76) + 8);
  do
  {
    v82 = v75++;
    if (v75 >= *(*(v71 + 328) + 16))
    {
      break;
    }

    memset(v89, 0, 24);
    *&v93 = v75;
    *(&v93 + 1) = v71;
    sub_298C09708(&v93, v89);
  }

  while (v81 == *&v89[8]);
  v83 = v66[22];
  v84 = v66[2];
  *v89 = v74;
  *&v89[8] = v73;
  *&v89[16] = v83;
  *&v89[24] = 0;
  v90 = v82;
  v91 = v84;
  v92 = 0;
  return sub_298AF1DB0(a1, v89);
}