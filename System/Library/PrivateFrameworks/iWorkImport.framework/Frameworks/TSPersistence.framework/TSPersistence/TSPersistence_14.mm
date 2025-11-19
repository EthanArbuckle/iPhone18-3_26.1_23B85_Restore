void sub_276B2890C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_276B28F14(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B289D4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_276B28F14(v3, v2);
  _Unwind_Resume(a1);
}

unint64_t sub_276B289F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_276B28A30(&v5, a2, v3);
}

unint64_t sub_276B28A30(uint64_t a1, uint64_t *a2, unint64_t a3)
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
      return sub_276B28DDC(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_276B28D30(a2, a3);
  }

  else
  {
    return sub_276B28C38(a2, a3);
  }
}

unint64_t sub_276B28C38(_DWORD *a1, unint64_t a2)
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

unint64_t sub_276B28D30(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_276B28DDC(void *a1, uint64_t a2)
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

BOOL sub_276B28E9C(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_276B28F14(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_276B28F78(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    sub_2769ABE6C();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t sub_276B2917C(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    sub_2769BB184(result);

    JUMPOUT(0x277C9F670);
  }

  return result;
}

void sub_276B291C8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_2769ABE6C();
}

uint64_t *sub_276B29210(void *a1, char **a2)
{
  result = sub_276B29248(a1, a2);
  if (result)
  {
    sub_276A1F638(a1, result);
    return 1;
  }

  return result;
}

void *sub_276B29248(void *a1, char **a2)
{
  v4 = a2[1];
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = *a2;
    v7 = &(*a2)[v4];
    do
    {
      v8 = *v6++;
      v5 = 5 * v5 + v8;
    }

    while (v6 < v7);
  }

  v9 = a1[1];
  if (!*&v9)
  {
    return 0;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v5;
    if (v5 >= *&v9)
    {
      v12 = v5 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v5;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v15 == v5)
      {
        if (sub_276B26450(a1, (v14 + 2), a2))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v9)
          {
            v15 %= *&v9;
          }
        }

        else
        {
          v15 &= *&v9 - 1;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

uint64_t sub_276B29370(uint64_t **a1, unint64_t *a2)
{
  v3 = sub_276B265AC(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_276A9A398(a1, v3);
  operator delete(v4);
  return 1;
}

void sub_276B293C4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_2769BA860();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_276B294D8(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
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

void sub_276B294D8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2769ABE6C();
}

void sub_276B29520(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v11 = v4 + 16 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        v4 += 16;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_2769BA860();
    }

    v8 = v6 >> 4;
    v9 = v5 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      sub_276B2963C(a1, v10);
    }

    v12 = 16 * v8;
    v13 = 16 * v8 + 16 * a2;
    v14 = v12;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 0;
      v14 += 16;
    }

    while (v14 != v13);
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void sub_276B2963C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_2769ABE6C();
}

void sub_276B29684(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_2769BA860();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      sub_276A73310(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    sub_276B297A8(v14);
  }
}

uint64_t sub_276B297A8(uint64_t a1)
{
  sub_276B297E0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_276B297E0(uint64_t a1, void *a2)
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
      sub_276B28408(result, v5);
      result = *(a1 + 16);
    }
  }

  return result;
}

void sub_276B29830(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_2769BA860();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      sub_276A73310(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    sub_276B29954(v14);
  }
}

uint64_t sub_276B29954(uint64_t a1)
{
  sub_276B2998C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_276B2998C(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_276B29A00(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_2769BA860();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      sub_276A73310(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    sub_276B29B24(v14);
  }
}

uint64_t sub_276B29B24(uint64_t a1)
{
  sub_276B29B5C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_276B29B5C(uint64_t result, void *a2)
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
        result = MEMORY[0x277C9F670](result, 0x1000C4000313F17);
        v2 = *(v4 + 16);
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_276B29BCC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_2769BA860();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      sub_276A73310(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    sub_276B29CF0(v14);
  }
}

uint64_t *sub_276B29CF0(uint64_t *a1)
{
  sub_276B29D28(a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

google::protobuf::FileDescriptorTables *sub_276B29D28(google::protobuf::FileDescriptorTables *result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 2);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 4);
    *(v3 + 2) = v4 - 8;
    result = sub_276B28688(v5, (v4 - 8));
  }

  return result;
}

void sub_276B29D70(uint64_t a1, unint64_t a2)
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
      sub_2769BA860();
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
      sub_276B29EDC(a1, v9);
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
    sub_276B29F34(v18);
  }
}

void sub_276B29EDC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2769ABE6C();
}

uint64_t sub_276B29F34(uint64_t a1)
{
  sub_276B29F6C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_276B29F6C(uint64_t a1, uint64_t a2)
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

void sub_276B29FCC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_276B28258(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_276B2A028(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2769DD7D8();
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

void sub_276B2A0B4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2769ABE6C();
}

void *sub_276B2A0FC(void *a1, char **a2)
{
  v4 = a2[1];
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = *a2;
    v7 = &(*a2)[v4];
    do
    {
      v8 = *v6++;
      v5 = 5 * v5 + v8;
    }

    while (v6 < v7);
  }

  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_23;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v5;
    if (v5 >= *&v9)
    {
      v12 = v5 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v5;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v5)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_23;
    }

LABEL_22:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  if (!sub_276B26450(a1, (v14 + 2), a2))
  {
    goto LABEL_22;
  }

  return v14;
}

void *sub_276B2A374(void *a1, char **a2)
{
  v4 = a2[1];
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = *a2;
    v7 = &(*a2)[v4];
    do
    {
      v8 = *v6++;
      v5 = 5 * v5 + v8;
    }

    while (v6 < v7);
  }

  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_23;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v5;
    if (v5 >= *&v9)
    {
      v12 = v5 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v5;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v5)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_23;
    }

LABEL_22:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  if (!sub_276B26450(a1, (v14 + 2), a2))
  {
    goto LABEL_22;
  }

  return v14;
}

uint64_t sub_276B2A5F4(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_276B2A690(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_276B2A690(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 2);
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 10);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t sub_276B2A6F8(uint64_t a1, int *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_2769BA860();
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

  v17 = a1;
  if (v6)
  {
    sub_276B29EDC(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  v15 = 24 * v2;
  v16 = 0;
  sub_276B2A818((24 * v2), *a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy((v14 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_276B29F34(&v13);
  return v7;
}

void sub_276B2A804(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276B29F34(va);
  _Unwind_Resume(a1);
}

void *sub_276B2A818(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_276B2A88C(result, a2);
  }

  return result;
}

void sub_276B2A870(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B2A88C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2769BA860();
}

std::string *sub_276B2A8DC(std::string *result, std::string *a2, std::string::value_type *__s, std::string *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if (result != a2)
  {
    v7 = result;
    v8 = 0;
    do
    {
      if (v8)
      {
        std::string::append(this, __s);
      }

      data = v7->__r_.__value_.__l.__data_;
      v7 = (v7 + 4);
      v11[0] = v12;
      v11[1] = google::protobuf::FastInt32ToBufferLeft(data, v12, __s) - v12;
      result = google::protobuf::StrAppend(this, v11);
      v8 -= 4;
    }

    while (v7 != a2);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

const void **sub_276B2A9A0(void *a1, const void **a2)
{
  v4 = sub_276B289F0(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_276B28E9C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

const void **sub_276B2AC30(void *a1, const void **a2)
{
  v4 = sub_276B289F0(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_276B28E9C(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_276B2AD2C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_276B2AD2C(a1, *a2);
    sub_276B2AD2C(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_276B2AD90(uint64_t a1, const void **a2)
{
  v2 = *sub_276B27B1C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

char **google::protobuf::internal::OnShutdownDelete<google::protobuf::DescriptorPool>(google::protobuf::DescriptorPool *)::{lambda(void const*)#1}::__invoke(char **result)
{
  if (result)
  {
    google::protobuf::DescriptorPool::~DescriptorPool(result);

    JUMPOUT(0x277C9F670);
  }

  return result;
}

void *sub_276B2AE7C(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
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
      if (v5 == v10)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
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

void *sub_276B2AF68(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
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
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
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
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

const void **sub_276B2B1CC(void *a1, const void **a2)
{
  v4 = sub_276B289F0(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (sub_276B28E9C(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

const void **sub_276B2B2C8(void *a1, const void **a2)
{
  v4 = sub_276B289F0(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_276B28E9C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_276B2B540(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_2769ABE6C();
}

uint64_t sub_276B2B588(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_276B2B620(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_276B2B620(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *sub_276B2B7C8(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
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
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_276B2B894(std::string **a1, const std::string **a2, __int128 **a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_276B2BA20(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_276B2BA60(a1, v10);
    }

    sub_2769BA860();
  }

  v11 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v14 = *v6++;
        std::string::operator=(v8++, v14);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v12 = &a2[0xAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3)];
    if (v11 != v8)
    {
      do
      {
        v13 = *v6++;
        std::string::operator=(v8++, v13);
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    a1[1] = sub_276B2BAAC(a1, v12, a3, v11);
  }
}

void sub_276B2BA20(uint64_t a1)
{
  if (*a1)
  {
    sub_276B2740C(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_276B2BA60(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_276B275D0(a1, a2);
  }

  sub_2769BA860();
}

char *sub_276B2BAAC(uint64_t a1, __int128 **a2, __int128 **a3, char *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      if (*(*v6 + 23) < 0)
      {
        sub_276A07B90(v4, *v7, *(v7 + 1));
        v4 = v13;
      }

      else
      {
        v8 = *v7;
        *(v4 + 2) = *(v7 + 2);
        *v4 = v8;
      }

      ++v6;
      v4 += 24;
      v13 = v4;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_276B2BB70(v10);
  return v4;
}

uint64_t sub_276B2BB70(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_276B2BBA8(a1);
  }

  return a1;
}

void sub_276B2BBA8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_276B2BBF0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_276B2BC6C(result, a4);
  }

  return result;
}

void sub_276B2BC50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B2BC6C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_276B2B540(a1, a2);
  }

  sub_2769BA860();
}

const void **sub_276B2BCA8(void *a1, const void **a2)
{
  v4 = sub_276B289F0(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_276B2BF08();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_276B28E9C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_276B2BEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_276B28F14(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B2BFA4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_276B28F14(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_276B2BFC0(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_276A9A398(a1, v4);
  operator delete(v4);
  return 1;
}

void sub_276B2C17C(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0x2E8BA2E8BA2E8BA3 * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if ((v8 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      sub_2769BA860();
    }

    v10 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x1745D1745D1745DLL)
    {
      v11 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      sub_2769ABE6C();
    }

    v12 = 88 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 24);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v12 + 24) = v13;
    *(v12 + 40) = *(a2 + 5);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(v12 + 48) = a2[3];
    *(v12 + 64) = *(a2 + 8);
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    *(v12 + 72) = *(a2 + 72);
    v14 = *a1;
    v15 = a1[1];
    v16 = v12 + *a1 - v15;
    if (*a1 != v15)
    {
      v17 = *a1;
      v18 = v12 + *a1 - v15;
      do
      {
        v19 = *v17;
        *(v18 + 16) = *(v17 + 2);
        *v18 = v19;
        *(v17 + 1) = 0;
        *(v17 + 2) = 0;
        *v17 = 0;
        v20 = *(v17 + 24);
        *(v18 + 40) = *(v17 + 5);
        *(v18 + 24) = v20;
        *(v17 + 4) = 0;
        *(v17 + 5) = 0;
        *(v17 + 3) = 0;
        *(v18 + 56) = 0;
        *(v18 + 64) = 0;
        *(v18 + 48) = *(v17 + 3);
        *(v18 + 64) = *(v17 + 8);
        *(v17 + 6) = 0;
        *(v17 + 7) = 0;
        *(v17 + 8) = 0;
        *(v18 + 72) = *(v17 + 72);
        v17 += 88;
        v18 += 88;
      }

      while (v17 != v15);
      do
      {
        sub_276B2C518(v14);
        v14 += 88;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    v7 = v12 + 88;
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 48) = a2[3];
    *(v3 + 64) = *(a2 + 8);
    *(a2 + 6) = 0;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(v3 + 72) = *(a2 + 72);
    v7 = v3 + 88;
  }

  a1[1] = v7;
}

char *sub_276B2C3D8(char *__dst, __int128 *a2, __int128 *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (*(a2 + 23) < 0)
  {
    sub_276A07B90(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v11;
  }

  if (*(a3 + 23) < 0)
  {
    sub_276A07B90(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v12 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v12;
  }

  *(__dst + 6) = 0;
  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  sub_276B2BBF0((__dst + 48), *a4, a4[1], (a4[1] - *a4) >> 2);
  *(__dst + 9) = a5;
  *(__dst + 10) = a6;
  return __dst;
}

void sub_276B2C490(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276B2C4C4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_276B2C518(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void *sub_276B2C580(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_276A07B90(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_276B2C5E0(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_2769BA860();
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

  v21 = a1;
  if (v6)
  {
    sub_276B275D0(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_276A07B90(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_276B27628(&v17);
  return v11;
}

void sub_276B2C70C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276B27628(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B2C720(uint64_t a1, const void **a2)
{
  result = *sub_276B27B1C(a1, &v3, a2);
  if (!result)
  {
    sub_276B2C7A0();
  }

  return result;
}

void sub_276B2C834(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_276B27C24(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_276B2D60C(uint64_t a1, const void **a2)
{
  v2 = *sub_276B27B1C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_276B2D6B0(uint64_t a1, const void **a2)
{
  result = *sub_276B27B1C(a1, &v3, a2);
  if (!result)
  {
    sub_276B2D748();
  }

  return result;
}

void sub_276B2D7E4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_276B27C24(v3, v2);
  _Unwind_Resume(a1);
}

void sub_276B2E8B0(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_276B2E8B0(a1, *a2);
    sub_276B2E8B0(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t *sub_276B2E914(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_276B2E9EC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276B2E9EC(a1, *a2);
    sub_276B2E9EC(a1, a2[1]);
    sub_276B2EA48((a2 + 4));

    operator delete(a2);
  }
}

void sub_276B2EA48(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void sub_276B2EAA0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276B2EAA0(a1, *a2);
    sub_276B2EAA0(a1, a2[1]);
    v4 = a2[4];
    if (v4)
    {
      a2[5] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_276B2EB04(uint64_t a1, int **a2)
{
  result = *sub_276B2EB9C(a1, &v3, a2);
  if (!result)
  {
    sub_276B2EC5C();
  }

  return result;
}

void *sub_276B2EB9C(uint64_t a1, void *a2, int **a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = a3[1];
    do
    {
      while (1)
      {
        v7 = v4;
        v8 = v4[4];
        v9 = v7[5];
        if (v8 != v9)
        {
          break;
        }

LABEL_12:
        if (*a3 != v6)
        {
          v15 = (*a3 + 1);
          while (v8 != v9)
          {
            v16 = *v8;
            v17 = *(v15 - 4);
            if (*v8 < v17)
            {
              break;
            }

            ++v8;
            v18 = v17 < v16 || v15 == v6;
            v15 += 4;
            if (v18)
            {
              goto LABEL_27;
            }
          }

          result = v7 + 1;
          v4 = v7[1];
          if (v4)
          {
            continue;
          }
        }

        goto LABEL_27;
      }

      v10 = v8 + 1;
      v11 = *a3;
      while (v11 != v6)
      {
        v12 = *v11;
        v13 = *(v10 - 1);
        if (*v11 < v13)
        {
          break;
        }

        ++v11;
        if (v13 < v12 || v10++ == v9)
        {
          goto LABEL_12;
        }
      }

      v4 = *v7;
      result = v7;
    }

    while (*v7);
  }

  else
  {
    v7 = result;
  }

LABEL_27:
  *a2 = v7;
  return result;
}

void sub_276B2ECE8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_276B2ED04(v3, v2);
  _Unwind_Resume(a1);
}

void sub_276B2ED04(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      __p[5] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_276B2ED68(uint64_t a1, int **a2)
{
  v2 = *sub_276B2EB9C(a1, &v4, a2);
  if (!v2)
  {
    sub_276B2EE10();
  }

  return v2;
}

uint64_t sub_276B2EEA4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_276B2EA48(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_276B2EEF0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_276B2BC6C(v6, v10);
    }

    sub_2769BA860();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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

void sub_276B2F01C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          google::protobuf::SourceCodeInfo_Location::~SourceCodeInfo_Location(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void *sub_276B2F0A0(uint64_t a1, int **a2)
{
  v3 = (a1 + 8);
  result = sub_276B2F120(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 != result)
  {
    v6 = result[4];
    v5 = result[5];
    if (v6 == v5)
    {
      return result;
    }

    v7 = *a2;
    v8 = v6 + 4;
    while (v7 != a2[1])
    {
      v9 = *v7;
      v10 = *(v8 - 4);
      if (*v7 < v10)
      {
        break;
      }

      ++v7;
      v11 = v10 < v9 || v8 == v5;
      v8 += 4;
      if (v11)
      {
        return result;
      }
    }
  }

  return v3;
}

void *sub_276B2F120(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = a4;
  if (a3)
  {
    v5 = a2[1];
    do
    {
      if (*a2 == v5)
      {
LABEL_12:
        result = a3;
      }

      else
      {
        v6 = a3[4];
        v7 = *a2 + 4;
        while (v6 != a3[5])
        {
          v8 = *v6;
          v9 = *(v7 - 4);
          if (*v6 < v9)
          {
            break;
          }

          ++v6;
          v10 = v9 < v8 || v7 == v5;
          v7 += 4;
          if (v10)
          {
            goto LABEL_12;
          }
        }

        ++a3;
      }

      a3 = *a3;
    }

    while (a3);
  }

  return result;
}

std::string *sub_276B2F184(std::string *result, std::string **a2, const google::protobuf::SourceCodeInfo_Location **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276B2F234(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = v9->__words[0];
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceCodeInfo_Location>(v18);
      result = sub_276B2F234(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

float google::protobuf::io::SafeDoubleToFloat(google::protobuf::io *this, double a2)
{
  if (a2 <= 3.40282347e38)
  {
    if (a2 >= -3.40282347e38)
    {
      return a2;
    }

    if (a2 >= -3.40282357e38)
    {
      return -3.4028e38;
    }

    else
    {
      return -INFINITY;
    }
  }

  else if (a2 <= 3.40282357e38)
  {
    return 3.4028e38;
  }

  else
  {
    return INFINITY;
  }
}

void sub_276B2F2E4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::DescriptorProto::DescriptorProto(&google::protobuf::_DescriptorProto_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_DescriptorProto_default_instance_, v4);
}

void sub_276B2F354(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  *&v5 = 0;
  unk_2812FDBC8 = v5;
  google::protobuf::_DescriptorProto_ExtensionRange_default_instance_[0] = &unk_2885C62B0;
  if (atomic_load_explicit(scc_info_DescriptorProto_ExtensionRange_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DescriptorProto_ExtensionRange_google_2fprotobuf_2fdescriptor_2eproto);
  }

  qword_2812FDBD8 = 0;
  unk_2812FDBE0 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, google::protobuf::_DescriptorProto_ExtensionRange_default_instance_, v4);
}

void sub_276B2F404(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  qword_2812FDBF0 = 0;
  unk_2812FDBF8 = 0;
  google::protobuf::_DescriptorProto_ReservedRange_default_instance_ = &unk_2885C6360;
  qword_2812FDC00 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_DescriptorProto_ReservedRange_default_instance_, v4);
}

void sub_276B2F480(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::EnumDescriptorProto::EnumDescriptorProto(&google::protobuf::_EnumDescriptorProto_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_EnumDescriptorProto_default_instance_, v4);
}

void sub_276B2F4F0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  qword_2812FDDC8 = 0;
  unk_2812FDDD0 = 0;
  google::protobuf::_EnumDescriptorProto_EnumReservedRange_default_instance_ = &unk_2885C66D0;
  qword_2812FDDD8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_EnumDescriptorProto_EnumReservedRange_default_instance_, v4);
}

void sub_276B2F56C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::EnumOptions::EnumOptions(&google::protobuf::_EnumOptions_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_EnumOptions_default_instance_, v4);
}

void sub_276B2F5DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::EnumValueDescriptorProto::EnumValueDescriptorProto(&google::protobuf::_EnumValueDescriptorProto_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_EnumValueDescriptorProto_default_instance_, v4);
}

void sub_276B2F64C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::EnumValueOptions::EnumValueOptions(&google::protobuf::_EnumValueOptions_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_EnumValueOptions_default_instance_, v4);
}

void sub_276B2F6BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::ExtensionRangeOptions::ExtensionRangeOptions(&google::protobuf::_ExtensionRangeOptions_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_ExtensionRangeOptions_default_instance_, v4);
}

void sub_276B2F72C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::FieldDescriptorProto::FieldDescriptorProto(&google::protobuf::_FieldDescriptorProto_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_FieldDescriptorProto_default_instance_, v4);
}

void sub_276B2F79C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::FieldOptions::FieldOptions(&google::protobuf::_FieldOptions_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_FieldOptions_default_instance_, v4);
}

void sub_276B2F80C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::FileDescriptorProto::FileDescriptorProto(&google::protobuf::_FileDescriptorProto_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_FileDescriptorProto_default_instance_, v4);
}

void sub_276B2F87C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::FileDescriptorSet::FileDescriptorSet(&google::protobuf::_FileDescriptorSet_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_FileDescriptorSet_default_instance_, v4);
}

void sub_276B2F8EC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::FileOptions::FileOptions(&google::protobuf::_FileOptions_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_FileOptions_default_instance_, v4);
}

void sub_276B2F95C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::GeneratedCodeInfo::GeneratedCodeInfo(&google::protobuf::_GeneratedCodeInfo_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_GeneratedCodeInfo_default_instance_, v4);
}

void sub_276B2F9CC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::GeneratedCodeInfo_Annotation::GeneratedCodeInfo_Annotation(&google::protobuf::_GeneratedCodeInfo_Annotation_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_GeneratedCodeInfo_Annotation_default_instance_, v4);
}

void sub_276B2FA3C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::MessageOptions::MessageOptions(&google::protobuf::_MessageOptions_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_MessageOptions_default_instance_, v4);
}

void sub_276B2FAAC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::MethodDescriptorProto::MethodDescriptorProto(&google::protobuf::_MethodDescriptorProto_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_MethodDescriptorProto_default_instance_, v4);
}

void sub_276B2FB1C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::MethodOptions::MethodOptions(&google::protobuf::_MethodOptions_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_MethodOptions_default_instance_, v4);
}

void sub_276B2FB8C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::OneofDescriptorProto::OneofDescriptorProto(&google::protobuf::_OneofDescriptorProto_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_OneofDescriptorProto_default_instance_, v4);
}

void sub_276B2FBFC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::OneofOptions::OneofOptions(&google::protobuf::_OneofOptions_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_OneofOptions_default_instance_, v4);
}

void sub_276B2FC6C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::ServiceDescriptorProto::ServiceDescriptorProto(&google::protobuf::_ServiceDescriptorProto_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_ServiceDescriptorProto_default_instance_, v4);
}

void sub_276B2FCDC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::ServiceOptions::ServiceOptions(&google::protobuf::_ServiceOptions_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_ServiceOptions_default_instance_, v4);
}

void sub_276B2FD4C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::SourceCodeInfo::SourceCodeInfo(&google::protobuf::_SourceCodeInfo_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_SourceCodeInfo_default_instance_, v4);
}

void sub_276B2FDBC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::SourceCodeInfo_Location::SourceCodeInfo_Location(&google::protobuf::_SourceCodeInfo_Location_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_SourceCodeInfo_Location_default_instance_, v4);
}

void sub_276B2FE2C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::UninterpretedOption::UninterpretedOption(&google::protobuf::_UninterpretedOption_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_UninterpretedOption_default_instance_, v4);
}

void sub_276B2FE9C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.pb.cc", a4);
  google::protobuf::UninterpretedOption_NamePart::UninterpretedOption_NamePart(&google::protobuf::_UninterpretedOption_NamePart_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &google::protobuf::_UninterpretedOption_NamePart_default_instance_, v4);
}

google::protobuf::FileDescriptorSet *google::protobuf::FileDescriptorSet::FileDescriptorSet(google::protobuf::FileDescriptorSet *this, Arena *a2)
{
  *this = &unk_2885C6150;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_FileDescriptorSet_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FileDescriptorSet_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return this;
}

google::protobuf::FileDescriptorSet *google::protobuf::FileDescriptorSet::FileDescriptorSet(google::protobuf::FileDescriptorSet *this, const google::protobuf::FileDescriptorSet *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C6150;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    sub_276B4A50C(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 10) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

void google::protobuf::FileDescriptorSet::~FileDescriptorSet(google::protobuf::FileDescriptorSet *this)
{
  sub_2769DEC8C(this + 1);
  sub_276B4A488(this + 2);
}

{
  google::protobuf::FileDescriptorSet::~FileDescriptorSet(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::FileDescriptorSet::default_instance(google::protobuf::FileDescriptorSet *this)
{
  if (atomic_load_explicit(scc_info_FileDescriptorSet_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FileDescriptorSet_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_FileDescriptorSet_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::FileDescriptorSet::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      this = google::protobuf::FileDescriptorProto::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_2769F6424(v5);
  }

  return this;
}

google::protobuf::internal *google::protobuf::FileDescriptorSet::_InternalParse(google::protobuf::FileDescriptorSet *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v23 = a2;
  if ((sub_2769F6104(a3, &v23, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = (v23 + 1);
      v7 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v8 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v21;
LABEL_6:
      if (v7 == 10)
      {
        v12 = (v6 - 1);
        while (1)
        {
          v13 = (v12 + 1);
          v23 = (v12 + 1);
          v14 = *(this + 4);
          if (!v14)
          {
            break;
          }

          v19 = *(this + 6);
          v15 = *v14;
          if (v19 < *v14)
          {
            *(this + 6) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
            goto LABEL_23;
          }

          if (v15 == *(this + 7))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v14 = v15 + 1;
          v16 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FileDescriptorProto>(*(this + 2));
          v17 = *(this + 6);
          v18 = *(this + 4) + 8 * v17;
          *(this + 6) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v23;
LABEL_23:
          v12 = sub_276BD708C(a3, v16, v13);
          v23 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_14;
          }
        }

        v15 = *(this + 7);
LABEL_19:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v15 + 1);
        v14 = *(this + 4);
        v15 = *v14;
        goto LABEL_20;
      }

      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        a3[10].i32[0] = v7 - 1;
        return v23;
      }

      v10 = *(this + 1);
      if (v10)
      {
        v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v11 = sub_2769F617C(this + 1);
        v6 = v23;
      }

      v23 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6, a3, v5);
      if (!v23)
      {
        return 0;
      }

LABEL_14:
      if (sub_2769F6104(a3, &v23, a3[11].i32[1]))
      {
        return v23;
      }
    }

    v6 = (v23 + 2);
LABEL_5:
    v23 = v6;
    goto LABEL_6;
  }

  return v23;
}

const google::protobuf::UnknownFieldSet *google::protobuf::FileDescriptorSet::_InternalSerialize(google::protobuf::FileDescriptorSet *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = google::protobuf::FileDescriptorProto::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *google::protobuf::FileDescriptorSet::ByteSizeLong(google::protobuf::FileDescriptorSet *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 6);
  v6 = *(this + 4);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      v10 = google::protobuf::FileDescriptorProto::ByteSizeLong(v9, a2, a3, a4);
      v5 = (v5 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6));
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 10, a4);
  }

  else
  {
    *(this + 10) = v5;
    return v5;
  }
}

void google::protobuf::FileDescriptorSet::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::FileDescriptorSet::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::FileDescriptorSet::MergeFrom(google::protobuf::Arena **this, const google::protobuf::FileDescriptorSet *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 2), v5);
    sub_276B4A50C(this + 2, v7, (v6 + 8), v5, *this[4] - *(this + 6));
    v8 = *(this + 6) + v5;
    *(this + 6) = v8;
    v9 = this[4];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void google::protobuf::FileDescriptorSet::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::FileDescriptorSet::Clear(this);

    google::protobuf::FileDescriptorSet::MergeFrom(this, a2);
  }
}

void google::protobuf::FileDescriptorSet::CopyFrom(google::protobuf::FileDescriptorSet *this, const google::protobuf::FileDescriptorSet *a2)
{
  if (a2 != this)
  {
    google::protobuf::FileDescriptorSet::Clear(this);

    google::protobuf::FileDescriptorSet::MergeFrom(this, a2);
  }
}

BOOL google::protobuf::FileDescriptorSet::IsInitialized(google::protobuf::FileDescriptorSet *this)
{
  v2 = *(this + 6);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = google::protobuf::FileDescriptorProto::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 google::protobuf::FileDescriptorSet::InternalSwap(google::protobuf::FileDescriptorSet *this, google::protobuf::FileDescriptorSet *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t google::protobuf::FileDescriptorSet::GetMetadata(google::protobuf::FileDescriptorSet *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = *off_2812FC738;
  v2 = off_2812FC738[1];
  return result;
}

google::protobuf::FileDescriptorProto *google::protobuf::FileDescriptorProto::FileDescriptorProto(google::protobuf::FileDescriptorProto *this, Arena *a2)
{
  *this = &unk_2885C6200;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 9) = a2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = a2;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = a2;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 21) = a2;
  *(this + 19) = a2;
  *(this + 20) = 0;
  if (atomic_load_explicit(scc_info_FileDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FileDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 22) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 23) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

void sub_276B30A90(_Unwind_Exception *a1)
{
  if (*(v4 + 164) >= 1)
  {
    sub_276BD2A14(v8);
  }

  sub_276BD2BF8(v9, v7);
  sub_276B4A7F4(v6);
  sub_276B4A770(v5);
  sub_276B4A6EC(v3);
  sub_276B4A668(v2);
  sub_276B4A5CC(v1);
  _Unwind_Resume(a1);
}

google::protobuf::FileDescriptorProto *google::protobuf::FileDescriptorProto::FileDescriptorProto(google::protobuf::FileDescriptorProto *this, const google::protobuf::FileDescriptorProto *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C6200;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 8));
    sub_276B4A878(this + 1, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_276B4A924(this + 6, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = *(this + 8);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72), *(a2 + 20));
    sub_276B4A9E4(this + 9, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
    v18 = *(this + 20) + v15;
    *(this + 20) = v18;
    v19 = *(this + 11);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v20 = *(a2 + 26);
  if (v20)
  {
    v21 = *(a2 + 14);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 96), *(a2 + 26));
    sub_276B4AAA4(this + 12, v22, (v21 + 8), v20, **(this + 14) - *(this + 26));
    v23 = *(this + 26) + v20;
    *(this + 26) = v23;
    v24 = *(this + 14);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  v25 = *(a2 + 32);
  if (v25)
  {
    v26 = *(a2 + 17);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 120), *(a2 + 32));
    sub_276B4AB64(this + 15, v27, (v26 + 8), v25, **(this + 17) - *(this + 32));
    v28 = *(this + 32) + v25;
    *(this + 32) = v28;
    v29 = *(this + 17);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  *(this + 18) = 0;
  *(this + 19) = 0;
  if (*(a2 + 36))
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  *(this + 20) = 0;
  *(this + 21) = 0;
  if (*(a2 + 40))
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  v30 = *(a2 + 1);
  if (v30)
  {
    sub_2769F63D8(v4, ((v30 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 22) = &google::protobuf::internal::fixed_address_empty_string;
  v31 = *(a2 + 4);
  if (v31)
  {
    v32 = *v4;
    if (*v4)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 22, (*(a2 + 22) & 0xFFFFFFFFFFFFFFFELL), v32);
    v31 = *(a2 + 4);
  }

  *(this + 23) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v31 & 2) != 0)
  {
    v33 = *v4;
    if (*v4)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 23, (*(a2 + 23) & 0xFFFFFFFFFFFFFFFELL), v33);
    v31 = *(a2 + 4);
  }

  *(this + 24) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v31 & 4) != 0)
  {
    v34 = *v4;
    if (*v4)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 24, (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v34);
    v31 = *(a2 + 4);
  }

  if ((v31 & 8) != 0)
  {
    operator new();
  }

  *(this + 25) = 0;
  if ((v31 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 26) = 0;
  return this;
}

void sub_276B30F0C(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v5, 0x10A1C40290C9B23);
  if (*(v1 + 164) >= 1)
  {
    v8 = *(v1 + 168);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  if (*(v1 + 148) >= 1)
  {
    v11 = *(v1 + 152);
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    if (!v13)
    {
      operator delete(v12);
    }
  }

  sub_276B4A7F4(v6);
  sub_276B4A770(v4);
  sub_276B4A6EC(v3);
  sub_276B4A668(v2);
  sub_276B4A5CC((v1 + 24));
  _Unwind_Resume(a1);
}

void google::protobuf::FileDescriptorProto::~FileDescriptorProto(google::protobuf::FileDescriptorProto *this)
{
  sub_276B310A0(this);
  sub_2769DEC8C(this + 1);
  if (*(this + 41) >= 1)
  {
    v2 = *(this + 21);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  if (*(this + 37) >= 1)
  {
    v5 = *(this + 19);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  sub_276B4A7F4(this + 15);
  sub_276B4A770(this + 12);
  sub_276B4A6EC(this + 9);
  sub_276B4A668(this + 6);
  sub_276B4A5CC(this + 3);
}

{
  google::protobuf::FileDescriptorProto::~FileDescriptorProto(this);

  JUMPOUT(0x277C9F670);
}

google::protobuf::SourceCodeInfo *sub_276B310A0(google::protobuf::SourceCodeInfo *result)
{
  v1 = result;
  v2 = *(result + 22);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  v3 = *(v1 + 23);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    result = MEMORY[0x277C9F670](v3, 0x1012C40EC159624);
  }

  v4 = *(v1 + 24);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C9F670](v4, 0x1012C40EC159624);
  }

  if (v1 != &google::protobuf::_FileDescriptorProto_default_instance_)
  {
    v5 = *(v1 + 25);
    if (v5)
    {
      google::protobuf::FileOptions::~FileOptions(v5);
      MEMORY[0x277C9F670]();
    }

    result = *(v1 + 26);
    if (result)
    {
      google::protobuf::SourceCodeInfo::~SourceCodeInfo(result);

      JUMPOUT(0x277C9F670);
    }
  }

  return result;
}

void *google::protobuf::FileDescriptorProto::default_instance(google::protobuf::FileDescriptorProto *this)
{
  if (atomic_load_explicit(scc_info_FileDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FileDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_FileDescriptorProto_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::FileDescriptorProto::Clear(google::protobuf::FileDescriptorProto *this)
{
  result = google::protobuf::RepeatedPtrField<std::string>::Clear(this + 24);
  v3 = *(this + 14);
  if (v3 >= 1)
  {
    v4 = (*(this + 8) + 8);
    do
    {
      v5 = *v4++;
      result = google::protobuf::DescriptorProto::Clear(v5);
      --v3;
    }

    while (v3);
    *(this + 14) = 0;
  }

  v6 = *(this + 20);
  if (v6 >= 1)
  {
    v7 = (*(this + 11) + 8);
    do
    {
      v8 = *v7++;
      result = google::protobuf::EnumDescriptorProto::Clear(v8);
      --v6;
    }

    while (v6);
    *(this + 20) = 0;
  }

  v9 = *(this + 26);
  if (v9 >= 1)
  {
    v10 = (*(this + 14) + 8);
    do
    {
      v11 = *v10++;
      result = google::protobuf::ServiceDescriptorProto::Clear(v11);
      --v9;
    }

    while (v9);
    *(this + 26) = 0;
  }

  v12 = *(this + 32);
  if (v12 >= 1)
  {
    v13 = (*(this + 17) + 8);
    do
    {
      v14 = *v13++;
      result = google::protobuf::FieldDescriptorProto::Clear(v14);
      --v12;
    }

    while (v12);
    *(this + 32) = 0;
  }

  *(this + 36) = 0;
  *(this + 40) = 0;
  v15 = *(this + 4);
  if ((v15 & 0x1F) == 0)
  {
    goto LABEL_24;
  }

  if ((v15 & 1) == 0)
  {
    if ((v15 & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_32:
    v19 = *(this + 23) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v19 + 23) < 0)
    {
      **v19 = 0;
      *(v19 + 8) = 0;
      if ((v15 & 4) != 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *v19 = 0;
      *(v19 + 23) = 0;
      if ((v15 & 4) != 0)
      {
        goto LABEL_36;
      }
    }

LABEL_21:
    if ((v15 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

  v18 = *(this + 22) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v18 + 23) < 0)
  {
    **v18 = 0;
    *(v18 + 8) = 0;
    if ((v15 & 2) != 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    *v18 = 0;
    *(v18 + 23) = 0;
    if ((v15 & 2) != 0)
    {
      goto LABEL_32;
    }
  }

LABEL_20:
  if ((v15 & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_36:
  v20 = *(this + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v20 + 23) < 0)
  {
    **v20 = 0;
    *(v20 + 8) = 0;
    if ((v15 & 8) != 0)
    {
      goto LABEL_40;
    }

LABEL_22:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  *v20 = 0;
  *(v20 + 23) = 0;
  if ((v15 & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_40:
  result = google::protobuf::FileOptions::Clear(*(this + 25));
  if ((v15 & 0x10) != 0)
  {
LABEL_23:
    result = google::protobuf::SourceCodeInfo::Clear(*(this + 26));
  }

LABEL_24:
  v17 = *(this + 8);
  v16 = this + 8;
  *(v16 + 2) = 0;
  if (v17)
  {

    return sub_2769F6424(v16);
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::FileOptions::Clear(google::protobuf::FileOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v3 = *(this + 14);
  if (v3 >= 1)
  {
    v4 = (*(this + 8) + 8);
    do
    {
      v5 = *v4++;
      result = google::protobuf::UninterpretedOption::Clear(v5);
      --v3;
    }

    while (v3);
    *(this + 14) = 0;
  }

  v6 = *(this + 10);
  if (v6)
  {
    if ((v6 & 1) == 0)
    {
      if ((v6 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_19:
      v8 = *(this + 10) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v6 & 4) != 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v6 & 4) != 0)
        {
          goto LABEL_23;
        }
      }

LABEL_9:
      if ((v6 & 8) == 0)
      {
        goto LABEL_10;
      }

LABEL_27:
      v10 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_31;
        }
      }

LABEL_11:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_12;
      }

LABEL_35:
      v12 = *(this + 14) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v12 + 23) < 0)
      {
        **v12 = 0;
        *(v12 + 8) = 0;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        *v12 = 0;
        *(v12 + 23) = 0;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_39;
        }
      }

LABEL_13:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_46;
      }

LABEL_43:
      v14 = *(this + 16) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v14 + 23) < 0)
      {
        **v14 = 0;
        *(v14 + 8) = 0;
      }

      else
      {
        *v14 = 0;
        *(v14 + 23) = 0;
      }

      goto LABEL_46;
    }

    v7 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v9 = *(this + 11) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v6 & 8) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v6 & 8) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_31:
    v11 = *(this + 13) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_12:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_13;
    }

LABEL_39:
    v13 = *(this + 15) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 23) < 0)
    {
      **v13 = 0;
      *(v13 + 8) = 0;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      *v13 = 0;
      *(v13 + 23) = 0;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_43;
  }

LABEL_46:
  if ((v6 & 0x300) == 0)
  {
    goto LABEL_56;
  }

  if ((v6 & 0x100) != 0)
  {
    v15 = *(this + 17) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v15 + 23) < 0)
    {
      **v15 = 0;
      *(v15 + 8) = 0;
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_51;
    }

    *v15 = 0;
    *(v15 + 23) = 0;
  }

  if ((v6 & 0x200) == 0)
  {
    goto LABEL_56;
  }

LABEL_51:
  v16 = *(this + 18) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v16 + 23) < 0)
  {
    **v16 = 0;
    *(v16 + 8) = 0;
  }

  else
  {
    *v16 = 0;
    *(v16 + 23) = 0;
  }

LABEL_56:
  if ((v6 & 0xFC00) != 0)
  {
    *(this + 78) = 0;
    *(this + 38) = 0;
  }

  if ((v6 & 0xF0000) != 0)
  {
    *(this + 79) = 0;
    *(this + 40) = 1;
    *(this + 164) = 1;
  }

  v18 = *(this + 8);
  v17 = this + 8;
  *(v17 + 8) = 0;
  if (v18)
  {

    return sub_2769F6424(v17);
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::SourceCodeInfo::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      this = google::protobuf::SourceCodeInfo_Location::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_2769F6424(v5);
  }

  return this;
}

google::protobuf::internal *google::protobuf::FileDescriptorProto::_InternalParse(google::protobuf::FileDescriptorProto *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v78 = a2;
  for (i = a3[11].i32[1]; ; i = a3[11].i32[1])
  {
    if (sub_2769F6104(a3, &v78, i))
    {
      return v78;
    }

    v8 = (v78 + 1);
    v9 = *v78;
    if ((*v78 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v10 = v9 + (*v8 << 7);
    v9 = v10 - 128;
    if ((*v8 & 0x80000000) == 0)
    {
      v8 = (v78 + 2);
LABEL_6:
      v78 = v8;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v78, (v10 - 128));
    v78 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v8 = TagFallback;
    v9 = v35;
LABEL_7:
    v11 = v9 >> 3;
    if (v9 >> 3 <= 6)
    {
      break;
    }

    if (v9 >> 3 > 9)
    {
      if (v11 == 10)
      {
        if (v9 == 80)
        {
          v52 = v8 - 1;
          while (1)
          {
            v78 = (v52 + 1);
            v53 = v52[1];
            if (v53 < 0)
            {
              v54 = (v52[2] << 7) + v53;
              LODWORD(v53) = v54 - 128;
              if (v52[2] < 0)
              {
                v52 = google::protobuf::internal::VarintParseSlow64((v52 + 1), (v54 - 128));
                LODWORD(v53) = v55;
              }

              else
              {
                v52 += 3;
              }
            }

            else
            {
              v52 += 2;
            }

            v78 = v52;
            v56 = *(this + 36);
            if (v56 == *(this + 37))
            {
              google::protobuf::RepeatedField<int>::Reserve();
            }

            *(*(this + 19) + 4 * v56) = v53;
            *(this + 36) = v56 + 1;
            if (!v52)
            {
              return 0;
            }

            if (*a3 <= v52 || *v52 != 80)
            {
              goto LABEL_160;
            }
          }
        }

        if (v9 != 82)
        {
          goto LABEL_152;
        }

        v73 = (this + 144);
      }

      else
      {
        if (v11 != 11)
        {
          if (v11 == 12 && v9 == 98)
          {
            *(this + 4) |= 4u;
            v32 = *(this + 1);
            if (v32)
            {
              v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
            }

            v33 = (this + 192);
            goto LABEL_113;
          }

          goto LABEL_152;
        }

        if (v9 == 88)
        {
          v68 = v8 - 1;
          while (1)
          {
            v78 = (v68 + 1);
            v69 = v68[1];
            if (v69 < 0)
            {
              v70 = (v68[2] << 7) + v69;
              LODWORD(v69) = v70 - 128;
              if (v68[2] < 0)
              {
                v68 = google::protobuf::internal::VarintParseSlow64((v68 + 1), (v70 - 128));
                LODWORD(v69) = v71;
              }

              else
              {
                v68 += 3;
              }
            }

            else
            {
              v68 += 2;
            }

            v78 = v68;
            v72 = *(this + 40);
            if (v72 == *(this + 41))
            {
              google::protobuf::RepeatedField<int>::Reserve();
            }

            *(*(this + 21) + 4 * v72) = v69;
            *(this + 40) = v72 + 1;
            if (!v68)
            {
              return 0;
            }

            if (*a3 <= v68 || *v68 != 88)
            {
              goto LABEL_160;
            }
          }
        }

        if (v9 != 90)
        {
          goto LABEL_152;
        }

        v73 = (this + 160);
      }

      v23 = google::protobuf::internal::PackedInt32Parser(v73, v8, a3, v6);
      goto LABEL_159;
    }

    if (v11 == 7)
    {
      if (v9 != 58)
      {
        goto LABEL_152;
      }

      v36 = (v8 - 1);
LABEL_70:
      v37 = (v36 + 1);
      v78 = (v36 + 1);
      v38 = *(this + 17);
      if (!v38)
      {
        v39 = *(this + 33);
        goto LABEL_72;
      }

      v43 = *(this + 32);
      v39 = *v38;
      if (v43 >= *v38)
      {
        if (v39 == *(this + 33))
        {
LABEL_72:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 30, v39 + 1);
          v38 = *(this + 17);
          v39 = *v38;
        }

        *v38 = v39 + 1;
        v40 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FieldDescriptorProto>(*(this + 15));
        v41 = *(this + 32);
        v42 = *(this + 17) + 8 * v41;
        *(this + 32) = v41 + 1;
        *(v42 + 8) = v40;
        v37 = v78;
      }

      else
      {
        *(this + 32) = v43 + 1;
        v40 = *&v38[2 * v43 + 2];
      }

      v36 = sub_276BD73CC(a3, v40, v37);
      v78 = v36;
      if (!v36)
      {
        return 0;
      }

      if (*a3 <= v36 || *v36 != 58)
      {
        continue;
      }

      goto LABEL_70;
    }

    if (v11 == 8)
    {
      if (v9 != 66)
      {
        goto LABEL_152;
      }

      *(this + 4) |= 8u;
      v58 = *(this + 25);
      if (!v58)
      {
        v59 = *(this + 1);
        if (v59)
        {
          v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
        }

        v58 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FileOptions>(v59);
        *(this + 25) = v58;
        v8 = v78;
      }

      v23 = sub_276BD749C(a3, v58, v8);
    }

    else
    {
      if (v11 != 9 || v9 != 74)
      {
        goto LABEL_152;
      }

      *(this + 4) |= 0x10u;
      v21 = *(this + 26);
      if (!v21)
      {
        v22 = *(this + 1);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceCodeInfo>(v22);
        *(this + 26) = v21;
        v8 = v78;
      }

      v23 = sub_276BD756C(a3, v21, v8);
    }

LABEL_159:
    v78 = v23;
    if (!v23)
    {
      return 0;
    }

LABEL_160:
    ;
  }

  if (v9 >> 3 > 3)
  {
    if (v11 != 4)
    {
      if (v11 != 5)
      {
        if (v11 != 6 || v9 != 50)
        {
          goto LABEL_152;
        }

        v24 = (v8 - 1);
        while (1)
        {
          v25 = (v24 + 1);
          v78 = (v24 + 1);
          v26 = *(this + 14);
          if (!v26)
          {
            break;
          }

          v31 = *(this + 26);
          v27 = *v26;
          if (v31 < *v26)
          {
            *(this + 26) = v31 + 1;
            v28 = *&v26[2 * v31 + 2];
            goto LABEL_49;
          }

          if (v27 == *(this + 27))
          {
            goto LABEL_45;
          }

LABEL_46:
          *v26 = v27 + 1;
          v28 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::ServiceDescriptorProto>(*(this + 12));
          v29 = *(this + 26);
          v30 = *(this + 14) + 8 * v29;
          *(this + 26) = v29 + 1;
          *(v30 + 8) = v28;
          v25 = v78;
LABEL_49:
          v24 = sub_276BD72FC(a3, v28, v25);
          v78 = v24;
          if (!v24)
          {
            return 0;
          }

          if (*a3 <= v24 || *v24 != 50)
          {
            goto LABEL_160;
          }
        }

        v27 = *(this + 27);
LABEL_45:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 24, v27 + 1);
        v26 = *(this + 14);
        v27 = *v26;
        goto LABEL_46;
      }

      if (v9 != 42)
      {
        goto LABEL_152;
      }

      v60 = (v8 - 1);
      while (1)
      {
        v61 = (v60 + 1);
        v78 = (v60 + 1);
        v62 = *(this + 11);
        if (!v62)
        {
          break;
        }

        v67 = *(this + 20);
        v63 = *v62;
        if (v67 < *v62)
        {
          *(this + 20) = v67 + 1;
          v64 = *&v62[2 * v67 + 2];
          goto LABEL_128;
        }

        if (v63 == *(this + 21))
        {
          goto LABEL_124;
        }

LABEL_125:
        *v62 = v63 + 1;
        v64 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumDescriptorProto>(*(this + 9));
        v65 = *(this + 20);
        v66 = *(this + 11) + 8 * v65;
        *(this + 20) = v65 + 1;
        *(v66 + 8) = v64;
        v61 = v78;
LABEL_128:
        v60 = sub_276BD722C(a3, v64, v61);
        v78 = v60;
        if (!v60)
        {
          return 0;
        }

        if (*a3 <= v60 || *v60 != 42)
        {
          goto LABEL_160;
        }
      }

      v63 = *(this + 21);
LABEL_124:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 18, v63 + 1);
      v62 = *(this + 11);
      v63 = *v62;
      goto LABEL_125;
    }

    if (v9 != 34)
    {
      goto LABEL_152;
    }

    v44 = (v8 - 1);
    while (1)
    {
      v45 = (v44 + 1);
      v78 = (v44 + 1);
      v46 = *(this + 8);
      if (!v46)
      {
        break;
      }

      v51 = *(this + 14);
      v47 = *v46;
      if (v51 < *v46)
      {
        *(this + 14) = v51 + 1;
        v48 = *&v46[2 * v51 + 2];
        goto LABEL_90;
      }

      if (v47 == *(this + 15))
      {
        goto LABEL_86;
      }

LABEL_87:
      *v46 = v47 + 1;
      v48 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto>(*(this + 6));
      v49 = *(this + 14);
      v50 = *(this + 8) + 8 * v49;
      *(this + 14) = v49 + 1;
      *(v50 + 8) = v48;
      v45 = v78;
LABEL_90:
      v44 = sub_276BD715C(a3, v48, v45);
      v78 = v44;
      if (!v44)
      {
        return 0;
      }

      if (*a3 <= v44 || *v44 != 34)
      {
        goto LABEL_160;
      }
    }

    v47 = *(this + 15);
LABEL_86:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v47 + 1);
    v46 = *(this + 8);
    v47 = *v46;
    goto LABEL_87;
  }

  if (v11 == 1)
  {
    if (v9 == 10)
    {
      *(this + 4) |= 1u;
      v32 = *(this + 1);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = (this + 176);
      goto LABEL_113;
    }
  }

  else
  {
    if (v11 != 2)
    {
      if (v11 != 3 || v9 != 26)
      {
        goto LABEL_152;
      }

      v13 = v8 - 1;
      while (1)
      {
        v14 = (v13 + 1);
        v78 = (v13 + 1);
        v15 = *(this + 5);
        if (!v15)
        {
          break;
        }

        v16 = *(this + 8);
        v17 = *v15;
        if (v16 >= *v15)
        {
          if (v17 == *(this + 9))
          {
LABEL_22:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v17 + 1);
            v15 = *(this + 5);
            v17 = *v15;
          }

          *v15 = v17 + 1;
          v18 = sub_2769C64F4(*(this + 3));
          v19 = *(this + 8);
          v20 = *(this + 5) + 8 * v19;
          *(this + 8) = v19 + 1;
          *(v20 + 8) = v18;
          v14 = v78;
          goto LABEL_24;
        }

        *(this + 8) = v16 + 1;
        v18 = *&v15[2 * v16 + 2];
LABEL_24:
        v13 = google::protobuf::internal::InlineGreedyStringParser(v18, v14, a3);
        v78 = v13;
        if (!v13)
        {
          return 0;
        }

        if (*a3 <= v13 || *v13 != 26)
        {
          goto LABEL_160;
        }
      }

      v17 = *(this + 9);
      goto LABEL_22;
    }

    if (v9 == 18)
    {
      *(this + 4) |= 2u;
      v32 = *(this + 1);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = (this + 184);
LABEL_113:
      v57 = google::protobuf::internal::ArenaStringPtr::Mutable(v33, v32);
      v23 = google::protobuf::internal::InlineGreedyStringParser(v57, v78, a3);
      goto LABEL_159;
    }
  }

LABEL_152:
  if (v9)
  {
    v74 = (v9 & 7) == 4;
  }

  else
  {
    v74 = 1;
  }

  if (!v74)
  {
    v75 = *(this + 1);
    if (v75)
    {
      v76 = ((v75 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v76 = sub_2769F617C(this + 1);
      v8 = v78;
    }

    v23 = google::protobuf::internal::UnknownFieldParse(v9, v76, v8, a3, v7);
    goto LABEL_159;
  }

  a3[10].i32[0] = v9 - 1;
  return v78;
}

const google::protobuf::UnknownFieldSet *google::protobuf::FileDescriptorProto::_InternalSerialize(google::protobuf::FileDescriptorProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2769E1AB4(a3, 1, (*(this + 22) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_2769E1AB4(a3, 2, (*(this + 23) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v7 = *(this + 8);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v4 = sub_276B32608(a3, 3, *(*(this + 5) + v8), v4);
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  v9 = *(this + 14);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v11 = *(*(this + 8) + 8 * i + 8);
      *v4 = 34;
      v12 = *(v11 + 5);
      if (v12 > 0x7F)
      {
        v4[1] = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = v4 + 3;
          do
          {
            *(v13 - 1) = v14 | 0x80;
            v15 = v14 >> 7;
            ++v13;
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
          *(v13 - 1) = v15;
        }

        else
        {
          v4[2] = v14;
          v13 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v12;
        v13 = v4 + 2;
      }

      v4 = google::protobuf::DescriptorProto::_InternalSerialize(v11, v13, a3);
    }
  }

  v17 = *(this + 20);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v19 = *(*(this + 11) + 8 * j + 8);
      *v4 = 42;
      v20 = *(v19 + 5);
      if (v20 > 0x7F)
      {
        v4[1] = v20 | 0x80;
        v22 = v20 >> 7;
        if (v20 >> 14)
        {
          v21 = v4 + 3;
          do
          {
            *(v21 - 1) = v22 | 0x80;
            v23 = v22 >> 7;
            ++v21;
            v24 = v22 >> 14;
            v22 >>= 7;
          }

          while (v24);
          *(v21 - 1) = v23;
        }

        else
        {
          v4[2] = v22;
          v21 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v20;
        v21 = v4 + 2;
      }

      v4 = google::protobuf::EnumDescriptorProto::_InternalSerialize(v19, v21, a3);
    }
  }

  v25 = *(this + 26);
  if (v25)
  {
    for (k = 0; k != v25; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v27 = *(*(this + 14) + 8 * k + 8);
      *v4 = 50;
      v28 = *(v27 + 5);
      if (v28 > 0x7F)
      {
        v4[1] = v28 | 0x80;
        v30 = v28 >> 7;
        if (v28 >> 14)
        {
          v29 = v4 + 3;
          do
          {
            *(v29 - 1) = v30 | 0x80;
            v31 = v30 >> 7;
            ++v29;
            v32 = v30 >> 14;
            v30 >>= 7;
          }

          while (v32);
          *(v29 - 1) = v31;
        }

        else
        {
          v4[2] = v30;
          v29 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v28;
        v29 = v4 + 2;
      }

      v4 = google::protobuf::ServiceDescriptorProto::_InternalSerialize(v27, v29, a3);
    }
  }

  v33 = *(this + 32);
  if (v33)
  {
    for (m = 0; m != v33; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v35 = *(*(this + 17) + 8 * m + 8);
      *v4 = 58;
      v36 = *(v35 + 5);
      if (v36 > 0x7F)
      {
        v4[1] = v36 | 0x80;
        v38 = v36 >> 7;
        if (v36 >> 14)
        {
          v37 = v4 + 3;
          do
          {
            *(v37 - 1) = v38 | 0x80;
            v39 = v38 >> 7;
            ++v37;
            v40 = v38 >> 14;
            v38 >>= 7;
          }

          while (v40);
          *(v37 - 1) = v39;
        }

        else
        {
          v4[2] = v38;
          v37 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v36;
        v37 = v4 + 2;
      }

      v4 = google::protobuf::FieldDescriptorProto::_InternalSerialize(v35, v37, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v41 = *(this + 25);
    *v4 = 66;
    v42 = *(v41 + 11);
    if (v42 > 0x7F)
    {
      v4[1] = v42 | 0x80;
      v44 = v42 >> 7;
      if (v42 >> 14)
      {
        v43 = v4 + 3;
        do
        {
          *(v43 - 1) = v44 | 0x80;
          v45 = v44 >> 7;
          ++v43;
          v46 = v44 >> 14;
          v44 >>= 7;
        }

        while (v46);
        *(v43 - 1) = v45;
      }

      else
      {
        v4[2] = v44;
        v43 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v42;
      v43 = v4 + 2;
    }

    v4 = google::protobuf::FileOptions::_InternalSerialize(v41, v43, a3);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v47 = *(this + 26);
    *v4 = 74;
    v48 = *(v47 + 10);
    if (v48 > 0x7F)
    {
      v4[1] = v48 | 0x80;
      v50 = v48 >> 7;
      if (v48 >> 14)
      {
        v49 = v4 + 3;
        do
        {
          *(v49 - 1) = v50 | 0x80;
          v51 = v50 >> 7;
          ++v49;
          v52 = v50 >> 14;
          v50 >>= 7;
        }

        while (v52);
        *(v49 - 1) = v51;
      }

      else
      {
        v4[2] = v50;
        v49 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v48;
      v49 = v4 + 2;
    }

    v4 = google::protobuf::SourceCodeInfo::_InternalSerialize(v47, v49, a3, v4);
  }

  v53 = *(this + 36);
  if (v53 >= 1)
  {
    for (n = 0; n != v53; ++n)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v55 = *(*(this + 19) + 4 * n);
      *v4 = 80;
      if (v55 > 0x7F)
      {
        v4[1] = v55 | 0x80;
        v56 = v55 >> 7;
        if (v55 >> 14)
        {
          v4 += 3;
          do
          {
            *(v4 - 1) = v56 | 0x80;
            v57 = v56 >> 7;
            ++v4;
            v58 = v56 >> 14;
            v56 >>= 7;
          }

          while (v58);
          *(v4 - 1) = v57;
        }

        else
        {
          v4[2] = v56;
          v4 += 3;
        }
      }

      else
      {
        v4[1] = v55;
        v4 += 2;
      }
    }
  }

  v59 = *(this + 40);
  if (v59 >= 1)
  {
    for (ii = 0; ii != v59; ++ii)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v61 = *(*(this + 21) + 4 * ii);
      *v4 = 88;
      if (v61 > 0x7F)
      {
        v4[1] = v61 | 0x80;
        v62 = v61 >> 7;
        if (v61 >> 14)
        {
          v4 += 3;
          do
          {
            *(v4 - 1) = v62 | 0x80;
            v63 = v62 >> 7;
            ++v4;
            v64 = v62 >> 14;
            v62 >>= 7;
          }

          while (v64);
          *(v4 - 1) = v63;
        }

        else
        {
          v4[2] = v62;
          v4 += 3;
        }
      }

      else
      {
        v4[1] = v61;
        v4 += 2;
      }
    }
  }

  if ((v6 & 4) != 0)
  {
    v4 = sub_2769E1AB4(a3, 12, (*(this + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v65 = *(this + 1);
  if ((v65 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v65 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

unsigned __int8 *sub_276B32608(google::protobuf::io::EpsCopyOutputStream *a1, int a2, uint64_t a3, unsigned __int8 *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = *(a3 + 8), v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = (v7 + 1);
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return &v14[v4];
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a1, a2, a3, a4);
}

const InternalMetadata *google::protobuf::FileDescriptorProto::ByteSizeLong(google::protobuf::FileDescriptorProto *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 8);
  if (v5 < 1)
  {
    v7 = *(this + 8);
  }

  else
  {
    v6 = (*(this + 5) + 8);
    v7 = *(this + 8);
    do
    {
      v8 = *v6++;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v7 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      --v5;
    }

    while (v5);
  }

  v11 = *(this + 14);
  v12 = v7 + v11;
  v13 = *(this + 8);
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 8 * v11;
    do
    {
      v16 = *v14++;
      v17 = google::protobuf::DescriptorProto::ByteSizeLong(v16, a2, a3, a4);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(this + 20);
  v19 = v12 + v18;
  v20 = *(this + 11);
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = 8 * v18;
    do
    {
      v23 = *v21++;
      v24 = google::protobuf::EnumDescriptorProto::ByteSizeLong(v23, a2, a3, a4);
      v19 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      v22 -= 8;
    }

    while (v22);
  }

  v25 = *(this + 26);
  v26 = v19 + v25;
  v27 = *(this + 14);
  if (v27)
  {
    v28 = (v27 + 8);
  }

  else
  {
    v28 = 0;
  }

  if (v25)
  {
    v29 = 8 * v25;
    do
    {
      v30 = *v28++;
      v31 = google::protobuf::ServiceDescriptorProto::ByteSizeLong(v30, a2, a3, a4);
      v26 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6);
      v29 -= 8;
    }

    while (v29);
  }

  v32 = *(this + 32);
  v33 = v26 + v32;
  v34 = *(this + 17);
  if (v34)
  {
    v35 = (v34 + 8);
  }

  else
  {
    v35 = 0;
  }

  if (v32)
  {
    v36 = 8 * v32;
    do
    {
      v37 = *v35++;
      v38 = google::protobuf::FieldDescriptorProto::ByteSizeLong(v37, a2, a3, a4);
      v33 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6);
      v36 -= 8;
    }

    while (v36);
  }

  v39 = google::protobuf::internal::WireFormatLite::Int32Size(this + 36);
  v40 = *(this + 36);
  v44 = (v39 + v40 + google::protobuf::internal::WireFormatLite::Int32Size(this + 40) + *(this + 40) + v33);
  v45 = *(this + 4);
  if ((v45 & 0x1F) == 0)
  {
    goto LABEL_39;
  }

  if (v45)
  {
    v48 = *(this + 22) & 0xFFFFFFFFFFFFFFFELL;
    v49 = *(v48 + 23);
    v50 = *(v48 + 8);
    if ((v49 & 0x80u) == 0)
    {
      v50 = v49;
    }

    v44 = (v44 + v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v45 & 2) == 0)
    {
LABEL_35:
      if ((v45 & 4) == 0)
      {
        goto LABEL_36;
      }

LABEL_47:
      v54 = *(this + 24) & 0xFFFFFFFFFFFFFFFELL;
      v55 = *(v54 + 23);
      v56 = *(v54 + 8);
      if ((v55 & 0x80u) == 0)
      {
        v56 = v55;
      }

      v44 = (v44 + v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 1);
      if ((v45 & 8) == 0)
      {
LABEL_37:
        if ((v45 & 0x10) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      goto LABEL_50;
    }
  }

  else if ((v45 & 2) == 0)
  {
    goto LABEL_35;
  }

  v51 = *(this + 23) & 0xFFFFFFFFFFFFFFFELL;
  v52 = *(v51 + 23);
  v53 = *(v51 + 8);
  if ((v52 & 0x80u) == 0)
  {
    v53 = v52;
  }

  v44 = (v44 + v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v45 & 4) != 0)
  {
    goto LABEL_47;
  }

LABEL_36:
  if ((v45 & 8) == 0)
  {
    goto LABEL_37;
  }

LABEL_50:
  v57 = google::protobuf::FileOptions::ByteSizeLong(*(this + 25));
  v44 = (&v57->ptr_ + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + v44 + 1);
  if ((v45 & 0x10) != 0)
  {
LABEL_38:
    v46 = google::protobuf::SourceCodeInfo::ByteSizeLong(*(this + 26), v41, v42, v43);
    v44 = (&v46->ptr_ + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + v44 + 1);
  }

LABEL_39:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v44, this + 5, v43);
  }

  else
  {
    *(this + 5) = v44;
    return v44;
  }
}

void google::protobuf::FileDescriptorProto::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::FileDescriptorProto::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::FileDescriptorProto::MergeFrom(google::protobuf::Arena **this, const google::protobuf::FileDescriptorProto *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 3), *(a2 + 8));
    sub_276B4A878(this + 1, v7, (v6 + 8), v5, *this[5] - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = this[5];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 6), *(a2 + 14));
    sub_276B4A924(this + 6, v12, (v11 + 8), v10, *this[8] - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = this[8];
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 9), *(a2 + 20));
    sub_276B4A9E4(this + 9, v17, (v16 + 8), v15, *this[11] - *(this + 20));
    v18 = *(this + 20) + v15;
    *(this + 20) = v18;
    v19 = this[11];
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 26);
  if (v20)
  {
    v21 = *(a2 + 14);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 12), *(a2 + 26));
    sub_276B4AAA4(this + 12, v22, (v21 + 8), v20, *this[14] - *(this + 26));
    v23 = *(this + 26) + v20;
    *(this + 26) = v23;
    v24 = this[14];
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 32);
  if (v25)
  {
    v26 = *(a2 + 17);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 15), *(a2 + 32));
    sub_276B4AB64(this + 15, v27, (v26 + 8), v25, *this[17] - *(this + 32));
    v28 = *(this + 32) + v25;
    *(this + 32) = v28;
    v29 = this[17];
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  if (*(a2 + 36))
  {
    v30 = *(this + 36);
    google::protobuf::RepeatedField<int>::Reserve();
  }

  if (*(a2 + 40))
  {
    v31 = *(this + 40);
    google::protobuf::RepeatedField<int>::Reserve();
  }

  v32 = *(a2 + 4);
  if ((v32 & 0x1F) == 0)
  {
    return;
  }

  if (v32)
  {
    v33 = *(a2 + 22);
    *(this + 4) |= 1u;
    v34 = this[1];
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 22, (v33 & 0xFFFFFFFFFFFFFFFELL), v34);
    if ((v32 & 2) == 0)
    {
LABEL_25:
      if ((v32 & 4) == 0)
      {
        goto LABEL_26;
      }

LABEL_35:
      v37 = *(a2 + 24);
      *(this + 4) |= 4u;
      v38 = this[1];
      if (v38)
      {
        v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(this + 24, (v37 & 0xFFFFFFFFFFFFFFFELL), v38);
      if ((v32 & 8) == 0)
      {
LABEL_27:
        if ((v32 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_46;
      }

      goto LABEL_38;
    }
  }

  else if ((v32 & 2) == 0)
  {
    goto LABEL_25;
  }

  v35 = *(a2 + 23);
  *(this + 4) |= 2u;
  v36 = this[1];
  if (v36)
  {
    v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 23, (v35 & 0xFFFFFFFFFFFFFFFELL), v36);
  if ((v32 & 4) != 0)
  {
    goto LABEL_35;
  }

LABEL_26:
  if ((v32 & 8) == 0)
  {
    goto LABEL_27;
  }

LABEL_38:
  *(this + 4) |= 8u;
  v39 = this[25];
  if (!v39)
  {
    v40 = this[1];
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FileOptions>(v40);
    this[25] = v39;
  }

  if (*(a2 + 25))
  {
    v41 = *(a2 + 25);
  }

  else
  {
    v41 = &google::protobuf::_FileOptions_default_instance_;
  }

  google::protobuf::FileOptions::MergeFrom(v39, v41);
  if ((v32 & 0x10) != 0)
  {
LABEL_46:
    *(this + 4) |= 0x10u;
    v42 = this[26];
    if (!v42)
    {
      v43 = this[1];
      if (v43)
      {
        v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
      }

      v42 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceCodeInfo>(v43);
      this[26] = v42;
    }

    if (*(a2 + 26))
    {
      v44 = *(a2 + 26);
    }

    else
    {
      v44 = &google::protobuf::_SourceCodeInfo_default_instance_;
    }

    google::protobuf::SourceCodeInfo::MergeFrom(v42, v44);
  }
}

void google::protobuf::FileOptions::MergeFrom(google::protobuf::Arena **this, const google::protobuf::FileOptions *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 2), (a2 + 16));
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 14);
  if (v5)
  {
    v6 = *(a2 + 8);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 6), *(a2 + 14));
    sub_276B4AFF0(this + 6, v7, (v6 + 8), v5, *this[8] - *(this + 14));
    v8 = *(this + 14) + v5;
    *(this + 14) = v8;
    v9 = this[8];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 10);
  if (!v10)
  {
    goto LABEL_40;
  }

  if (v10)
  {
    v11 = *(a2 + 9);
    *(this + 10) |= 1u;
    v12 = this[1];
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 9, (v11 & 0xFFFFFFFFFFFFFFFELL), v12);
    if ((v10 & 2) == 0)
    {
LABEL_9:
      if ((v10 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_9;
  }

  v13 = *(a2 + 10);
  *(this + 10) |= 2u;
  v14 = this[1];
  if (v14)
  {
    v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 10, (v13 & 0xFFFFFFFFFFFFFFFELL), v14);
  if ((v10 & 4) == 0)
  {
LABEL_10:
    if ((v10 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_22:
  v15 = *(a2 + 11);
  *(this + 10) |= 4u;
  v16 = this[1];
  if (v16)
  {
    v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 11, (v15 & 0xFFFFFFFFFFFFFFFELL), v16);
  if ((v10 & 8) == 0)
  {
LABEL_11:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_25:
  v17 = *(a2 + 12);
  *(this + 10) |= 8u;
  v18 = this[1];
  if (v18)
  {
    v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 12, (v17 & 0xFFFFFFFFFFFFFFFELL), v18);
  if ((v10 & 0x10) == 0)
  {
LABEL_12:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_31:
    v21 = *(a2 + 14);
    *(this + 10) |= 0x20u;
    v22 = this[1];
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 14, (v21 & 0xFFFFFFFFFFFFFFFELL), v22);
    if ((v10 & 0x40) == 0)
    {
LABEL_14:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    goto LABEL_34;
  }

LABEL_28:
  v19 = *(a2 + 13);
  *(this + 10) |= 0x10u;
  v20 = this[1];
  if (v20)
  {
    v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 13, (v19 & 0xFFFFFFFFFFFFFFFELL), v20);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_13:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_34:
  v23 = *(a2 + 15);
  *(this + 10) |= 0x40u;
  v24 = this[1];
  if (v24)
  {
    v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 15, (v23 & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v10 & 0x80) != 0)
  {
LABEL_37:
    v25 = *(a2 + 16);
    *(this + 10) |= 0x80u;
    v26 = this[1];
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 16, (v25 & 0xFFFFFFFFFFFFFFFELL), v26);
  }

LABEL_40:
  if ((v10 & 0xFF00) == 0)
  {
    goto LABEL_51;
  }

  if ((v10 & 0x100) != 0)
  {
    v27 = *(a2 + 17);
    *(this + 10) |= 0x100u;
    v28 = this[1];
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 17, (v27 & 0xFFFFFFFFFFFFFFFELL), v28);
    if ((v10 & 0x200) == 0)
    {
LABEL_43:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_65;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_43;
  }

  v29 = *(a2 + 18);
  *(this + 10) |= 0x200u;
  v30 = this[1];
  if (v30)
  {
    v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 18, (v29 & 0xFFFFFFFFFFFFFFFELL), v30);
  if ((v10 & 0x400) == 0)
  {
LABEL_44:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(this + 152) = *(a2 + 152);
  if ((v10 & 0x800) == 0)
  {
LABEL_45:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(this + 153) = *(a2 + 153);
  if ((v10 & 0x1000) == 0)
  {
LABEL_46:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(this + 154) = *(a2 + 154);
  if ((v10 & 0x2000) == 0)
  {
LABEL_47:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_48;
    }

LABEL_69:
    *(this + 156) = *(a2 + 156);
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_68:
  *(this + 155) = *(a2 + 155);
  if ((v10 & 0x4000) != 0)
  {
    goto LABEL_69;
  }

LABEL_48:
  if ((v10 & 0x8000) != 0)
  {
LABEL_49:
    *(this + 157) = *(a2 + 157);
  }

LABEL_50:
  *(this + 10) |= v10;
LABEL_51:
  if ((v10 & 0xF0000) == 0)
  {
    return;
  }

  if ((v10 & 0x10000) != 0)
  {
    *(this + 158) = *(a2 + 158);
    if ((v10 & 0x20000) == 0)
    {
LABEL_54:
      if ((v10 & 0x40000) == 0)
      {
        goto LABEL_55;
      }

LABEL_73:
      *(this + 40) = *(a2 + 40);
      if ((v10 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }
  }

  else if ((v10 & 0x20000) == 0)
  {
    goto LABEL_54;
  }

  *(this + 159) = *(a2 + 159);
  if ((v10 & 0x40000) != 0)
  {
    goto LABEL_73;
  }

LABEL_55:
  if ((v10 & 0x80000) != 0)
  {
LABEL_56:
    *(this + 164) = *(a2 + 164);
  }

LABEL_57:
  *(this + 10) |= v10;
}

std::string *google::protobuf::SourceCodeInfo::MergeFrom(std::string *this, const google::protobuf::SourceCodeInfo *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(&this->__r_.__value_.__l.__size_, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v3->__r_.__value_.__r.__words[2], v5);
    this = sub_276B2F184(&v3->__r_.__value_.__r.__words[2], v7, (v6 + 8), v5, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
    v8 = LODWORD(v3[1].__r_.__value_.__l.__data_) + v5;
    LODWORD(v3[1].__r_.__value_.__l.__data_) = v8;
    size = v3[1].__r_.__value_.__l.__size_;
    if (*size < v8)
    {
      *size = v8;
    }
  }

  return this;
}

void google::protobuf::FileDescriptorProto::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::FileDescriptorProto::Clear(this);

    google::protobuf::FileDescriptorProto::MergeFrom(this, a2);
  }
}

void google::protobuf::FileDescriptorProto::CopyFrom(google::protobuf::FileDescriptorProto *this, const google::protobuf::FileDescriptorProto *a2)
{
  if (a2 != this)
  {
    google::protobuf::FileDescriptorProto::Clear(this);

    google::protobuf::FileDescriptorProto::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::FileDescriptorProto::IsInitialized(google::protobuf::FileDescriptorProto *this)
{
  v2 = *(this + 14);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = google::protobuf::DescriptorProto::IsInitialized(*(*(this + 8) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(this + 20);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = google::protobuf::EnumDescriptorProto::IsInitialized(*(*(this + 11) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(this + 26);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = google::protobuf::ServiceDescriptorProto::IsInitialized(*(*(this + 14) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(this + 32);
  while (v11 >= 1)
  {
    v12 = v11 - 1;
    v13 = google::protobuf::FieldDescriptorProto::IsInitialized(*(*(this + 17) + 8 * v11));
    v11 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 8) == 0)
  {
    return 1;
  }

  v15 = *(this + 25);
  result = google::protobuf::internal::ExtensionSet::IsInitialized((v15 + 16));
  if (result)
  {
    result = sub_276B378A8(v15 + 48);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_276B33534(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = google::protobuf::DescriptorProto::IsInitialized(*(*(a1 + 16) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

uint64_t google::protobuf::FileOptions::IsInitialized(google::protobuf::FileOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {

    return sub_276B378A8(this + 48);
  }

  return result;
}

__n128 google::protobuf::FileDescriptorProto::InternalSwap(google::protobuf::FileDescriptorProto *this, google::protobuf::FileDescriptorProto *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v7 = *(this + 7);
  v8 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  v9 = *(this + 10);
  v10 = *(this + 11);
  *(this + 5) = *(a2 + 5);
  *(a2 + 10) = v9;
  *(a2 + 11) = v10;
  v11 = *(this + 13);
  v12 = *(this + 14);
  *(this + 104) = *(a2 + 104);
  *(a2 + 13) = v11;
  *(a2 + 14) = v12;
  v13 = *(this + 16);
  v14 = *(this + 17);
  *(this + 8) = *(a2 + 8);
  *(a2 + 16) = v13;
  *(a2 + 17) = v14;
  v15 = *(this + 18);
  v16 = *(this + 19);
  *(this + 9) = *(a2 + 9);
  *(a2 + 18) = v15;
  *(a2 + 19) = v16;
  v17 = *(this + 20);
  v18 = *(this + 21);
  *(this + 10) = *(a2 + 10);
  *(a2 + 20) = v17;
  *(a2 + 21) = v18;
  v19 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v19;
  v20 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v20;
  v21 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v21;
  v22 = *(this + 25);
  v23 = *(this + 26);
  result = *(a2 + 200);
  *(this + 200) = result;
  *(a2 + 25) = v22;
  *(a2 + 26) = v23;
  return result;
}

uint64_t google::protobuf::FileDescriptorProto::GetMetadata(google::protobuf::FileDescriptorProto *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[2];
  v2 = off_2812FC738[3];
  return result;
}

google::protobuf::DescriptorProto_ExtensionRange *google::protobuf::DescriptorProto_ExtensionRange::DescriptorProto_ExtensionRange(google::protobuf::DescriptorProto_ExtensionRange *this, Arena *a2)
{
  *this = &unk_2885C62B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DescriptorProto_ExtensionRange_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DescriptorProto_ExtensionRange_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2885C62B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DescriptorProto_ExtensionRange_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DescriptorProto_ExtensionRange_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

google::protobuf::DescriptorProto_ExtensionRange *google::protobuf::DescriptorProto_ExtensionRange::DescriptorProto_ExtensionRange(google::protobuf::DescriptorProto_ExtensionRange *this, const google::protobuf::DescriptorProto_ExtensionRange *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C62B0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2769F63D8(v4, ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8));
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 4) = *(a2 + 4);
  return this;
}

void google::protobuf::DescriptorProto_ExtensionRange::~DescriptorProto_ExtensionRange(google::protobuf::DescriptorProto_ExtensionRange *this)
{
  if (this != google::protobuf::_DescriptorProto_ExtensionRange_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      google::protobuf::ExtensionRangeOptions::~ExtensionRangeOptions(v2);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C(this + 1);
}

{
  google::protobuf::DescriptorProto_ExtensionRange::~DescriptorProto_ExtensionRange(this);

  JUMPOUT(0x277C9F670);
}

uint64_t *google::protobuf::DescriptorProto_ExtensionRange::default_instance(google::protobuf::DescriptorProto_ExtensionRange *this)
{
  if (atomic_load_explicit(scc_info_DescriptorProto_ExtensionRange_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DescriptorProto_ExtensionRange_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return google::protobuf::_DescriptorProto_ExtensionRange_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::DescriptorProto_ExtensionRange::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = google::protobuf::ExtensionRangeOptions::Clear(*(this + 3));
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 32) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2769F6424(v3);
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::ExtensionRangeOptions::Clear(google::protobuf::ExtensionRangeOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v3 = *(this + 12);
  if (v3 >= 1)
  {
    v4 = (*(this + 7) + 8);
    do
    {
      v5 = *v4++;
      result = google::protobuf::UninterpretedOption::Clear(v5);
      --v3;
    }

    while (v3);
    *(this + 12) = 0;
  }

  v7 = *(this + 8);
  v6 = (this + 8);
  if (v7)
  {

    return sub_2769F6424(v6);
  }

  return result;
}

google::protobuf::internal *google::protobuf::DescriptorProto_ExtensionRange::_InternalParse(google::protobuf::DescriptorProto_ExtensionRange *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v31 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v31, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v31 + 1);
      v9 = *v31;
      if ((*v31 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v10 - 128));
      v31 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_47;
      }

      v8 = TagFallback;
      v9 = v26;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 == 26)
        {
          *(this + 4) |= 1u;
          v20 = *(this + 3);
          if (!v20)
          {
            v21 = *(this + 1);
            if (v21)
            {
              v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
            }

            v20 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::ExtensionRangeOptions>(v21);
            *(this + 3) = v20;
            v8 = v31;
          }

          v16 = sub_276BD763C(a3, v20, v8);
        }

        else
        {
LABEL_13:
          if (v9)
          {
            v13 = (v9 & 7) == 4;
          }

          else
          {
            v13 = 1;
          }

          if (v13)
          {
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v14 = *(this + 1);
          if (v14)
          {
            v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v15 = sub_2769F617C(this + 1);
            v8 = v31;
          }

          v16 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8, a3, v5);
        }

        v31 = v16;
        if (!v16)
        {
          goto LABEL_47;
        }

        goto LABEL_37;
      }

      if (v11 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_13;
        }

        v6 |= 4u;
        v18 = (v8 + 1);
        LODWORD(v17) = *v8;
        if ((v17 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        v19 = *v18;
        v17 = v17 + (v19 << 7) - 128;
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (v8 + 2);
LABEL_24:
          v31 = v18;
          *(this + 9) = v17;
          goto LABEL_37;
        }

        v27 = google::protobuf::internal::VarintParseSlow64(v8, v17);
        v31 = v27;
        *(this + 9) = v28;
        if (!v27)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v11 != 1 || v9 != 8)
        {
          goto LABEL_13;
        }

        v6 |= 2u;
        v23 = (v8 + 1);
        LODWORD(v22) = *v8;
        if ((v22 & 0x80) == 0)
        {
          goto LABEL_36;
        }

        v24 = *v23;
        v22 = v22 + (v24 << 7) - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v23 = (v8 + 2);
LABEL_36:
          v31 = v23;
          *(this + 8) = v22;
          goto LABEL_37;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v8, v22);
        v31 = v29;
        *(this + 8) = v30;
        if (!v29)
        {
LABEL_47:
          v31 = 0;
          goto LABEL_2;
        }
      }

LABEL_37:
      if (sub_2769F6104(a3, &v31, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v31 + 2);
LABEL_6:
    v31 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v31;
}

const google::protobuf::UnknownFieldSet *google::protobuf::DescriptorProto_ExtensionRange::_InternalSerialize(google::protobuf::DescriptorProto_ExtensionRange *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 8);
    *a2 = 8;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v12 = v10 >> 7;
      if (v10 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v12 | 0x80;
          v17 = v12 >> 7;
          ++a2;
          v18 = v12 >> 14;
          v12 >>= 7;
        }

        while (v18);
        *(a2 - 1) = v17;
        if ((v6 & 4) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        a2[2] = v12;
        a2 += 3;
        if ((v6 & 4) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      a2[1] = v10;
      a2 += 2;
      if ((v6 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_3:
    if ((v6 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_4;
  }

  if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 9);
  *a2 = 16;
  if (v19 > 0x7F)
  {
    a2[1] = v19 | 0x80;
    v20 = v19 >> 7;
    if (v19 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v20 | 0x80;
        v21 = v20 >> 7;
        ++a2;
        v22 = v20 >> 14;
        v20 >>= 7;
      }

      while (v22);
      *(a2 - 1) = v21;
      if ((v6 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      a2[2] = v20;
      a2 += 3;
      if ((v6 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    a2[1] = v19;
    a2 += 2;
    if ((v6 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 3);
  *a2 = 26;
  v8 = *(v7 + 16);
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v11 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = a2 + 3;
      do
      {
        *(v9 - 1) = v11 | 0x80;
        v13 = v11 >> 7;
        ++v9;
        v14 = v11 >> 14;
        v11 >>= 7;
      }

      while (v14);
      *(v9 - 1) = v13;
    }

    else
    {
      a2[2] = v11;
      v9 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v8;
    v9 = a2 + 2;
  }

  a2 = google::protobuf::ExtensionRangeOptions::_InternalSerialize(v7, v9, a3);
LABEL_22:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *google::protobuf::DescriptorProto_ExtensionRange::ByteSizeLong(google::protobuf::DescriptorProto_ExtensionRange *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 4);
  if ((v5 & 7) == 0)
  {
    v6 = 0;
    goto LABEL_16;
  }

  if (v5)
  {
    v7 = google::protobuf::ExtensionRangeOptions::ByteSizeLong(*(this + 3));
    v6 = (&v7->ptr_ + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v5 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
    if ((v5 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v8 = *(this + 8);
  if (v8 < 0)
  {
    v9 = 11;
  }

  else
  {
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v6 = (v6 + v9);
LABEL_11:
  if ((v5 & 4) != 0)
  {
    v10 = *(this + 9);
    if (v10 < 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v6 = (v6 + v11);
  }

LABEL_16:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v6, this + 5, a4);
  }

  else
  {
    *(this + 5) = v6;
    return v6;
  }
}

void google::protobuf::DescriptorProto_ExtensionRange::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::DescriptorProto_ExtensionRange::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::DescriptorProto_ExtensionRange::MergeFrom(google::protobuf::Arena **this, const google::protobuf::DescriptorProto_ExtensionRange *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = this[3];
      if (!v6)
      {
        v7 = this[1];
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::ExtensionRangeOptions>(v7);
        this[3] = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &google::protobuf::_ExtensionRangeOptions_default_instance_;
      }

      google::protobuf::ExtensionRangeOptions::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(this + 4) |= v5;
          return;
        }

LABEL_7:
        *(this + 9) = *(a2 + 9);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 8) = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }
}

void google::protobuf::ExtensionRangeOptions::MergeFrom(google::protobuf::Arena **this, const google::protobuf::ExtensionRangeOptions *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 2), (a2 + 16));
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *(a2 + 7);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 5), v5);
    sub_276B4AFF0(this + 5, v7, (v6 + 8), v5, *this[7] - *(this + 12));
    v8 = *(this + 12) + v5;
    *(this + 12) = v8;
    v9 = this[7];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void google::protobuf::DescriptorProto_ExtensionRange::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::DescriptorProto_ExtensionRange::Clear(this);

    google::protobuf::DescriptorProto_ExtensionRange::MergeFrom(this, a2);
  }
}

void google::protobuf::DescriptorProto_ExtensionRange::CopyFrom(google::protobuf::DescriptorProto_ExtensionRange *this, const google::protobuf::DescriptorProto_ExtensionRange *a2)
{
  if (a2 != this)
  {
    google::protobuf::DescriptorProto_ExtensionRange::Clear(this);

    google::protobuf::DescriptorProto_ExtensionRange::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::DescriptorProto_ExtensionRange::IsInitialized(google::protobuf::DescriptorProto_ExtensionRange *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  v2 = *(this + 3);
  result = google::protobuf::internal::ExtensionSet::IsInitialized((v2 + 16));
  if (result)
  {
    result = sub_276B378A8(v2 + 40);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t google::protobuf::ExtensionRangeOptions::IsInitialized(google::protobuf::ExtensionRangeOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {

    return sub_276B378A8(this + 40);
  }

  return result;
}

__n128 google::protobuf::DescriptorProto_ExtensionRange::InternalSwap(google::protobuf::DescriptorProto_ExtensionRange *this, google::protobuf::DescriptorProto_ExtensionRange *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t google::protobuf::DescriptorProto_ExtensionRange::GetMetadata(google::protobuf::DescriptorProto_ExtensionRange *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[4];
  v2 = off_2812FC738[5];
  return result;
}

void *google::protobuf::DescriptorProto_ReservedRange::DescriptorProto_ReservedRange(void *this, Arena *a2)
{
  *this = &unk_2885C6360;
  this[1] = a2;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_2885C6360;
  this[1] = a2;
  this[2] = 0;
  this[3] = 0;
  return this;
}

google::protobuf::DescriptorProto_ReservedRange *google::protobuf::DescriptorProto_ReservedRange::DescriptorProto_ReservedRange(google::protobuf::DescriptorProto_ReservedRange *this, const google::protobuf::DescriptorProto_ReservedRange *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C6360;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2769F63D8(v4, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void google::protobuf::DescriptorProto_ReservedRange::~DescriptorProto_ReservedRange(google::protobuf::DescriptorProto_ReservedRange *this)
{
  sub_2769DEC8C(this + 1);
}

{
  sub_2769DEC8C(this + 1);
}

{
  sub_2769DEC8C(this + 1);

  JUMPOUT(0x277C9F670);
}

uint64_t *google::protobuf::DescriptorProto_ReservedRange::default_instance(google::protobuf::DescriptorProto_ReservedRange *this)
{
  if (atomic_load_explicit(scc_info_DescriptorProto_ReservedRange_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DescriptorProto_ReservedRange_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_DescriptorProto_ReservedRange_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::DescriptorProto_ReservedRange::Clear(google::protobuf::DescriptorProto_ReservedRange *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *google::protobuf::DescriptorProto_ReservedRange::_InternalParse(google::protobuf::DescriptorProto_ReservedRange *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v27 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v27, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v27 + 1);
      v9 = *v27;
      if ((*v27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v10 - 128));
      v27 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_39;
      }

      v8 = TagFallback;
      v9 = v22;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_12;
        }

        v6 |= 2u;
        v16 = (v8 + 1);
        LODWORD(v15) = *v8;
        if ((v15 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        v17 = *v16;
        v15 = v15 + (v17 << 7) - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v8 + 2);
LABEL_24:
          v27 = v16;
          *(this + 7) = v15;
          goto LABEL_29;
        }

        v23 = google::protobuf::internal::VarintParseSlow64(v8, v15);
        v27 = v23;
        *(this + 7) = v24;
        if (!v23)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v9 >> 3 != 1 || v9 != 8)
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(this + 1);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_2769F617C(this + 1);
            v8 = v27;
          }

          v27 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8, a3, v5);
          if (!v27)
          {
LABEL_39:
            v27 = 0;
            goto LABEL_2;
          }

          goto LABEL_29;
        }

        v6 |= 1u;
        v19 = (v8 + 1);
        LODWORD(v18) = *v8;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_28;
        }

        v20 = *v19;
        v18 = v18 + (v20 << 7) - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v8 + 2);
LABEL_28:
          v27 = v19;
          *(this + 6) = v18;
          goto LABEL_29;
        }

        v25 = google::protobuf::internal::VarintParseSlow64(v8, v18);
        v27 = v25;
        *(this + 6) = v26;
        if (!v25)
        {
          goto LABEL_39;
        }
      }

LABEL_29:
      if (sub_2769F6104(a3, &v27, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v27 + 2);
LABEL_6:
    v27 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v27;
}

const google::protobuf::UnknownFieldSet *google::protobuf::DescriptorProto_ReservedRange::_InternalSerialize(google::protobuf::DescriptorProto_ReservedRange *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v11 = v8 >> 7;
        ++a2;
        v12 = v8 >> 14;
        v8 >>= 7;
      }

      while (v12);
      *(a2 - 1) = v11;
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 7);
  *a2 = 16;
  if (v9 > 0x7F)
  {
    a2[1] = v9 | 0x80;
    v10 = v9 >> 7;
    if (v9 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v13 = v10 >> 7;
        ++a2;
        v14 = v10 >> 14;
        v10 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v9;
    a2 += 2;
  }

LABEL_23:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t google::protobuf::DescriptorProto_ReservedRange::ByteSizeLong(google::protobuf::DescriptorProto_ReservedRange *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v4 = *(this + 4);
  if ((v4 & 3) == 0)
  {
    v5 = 0;
    goto LABEL_14;
  }

  if (v4)
  {
    v6 = *(this + 6);
    if (v6 < 0)
    {
      v5 = 11;
      if ((v4 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v4 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v5 = 0;
    if ((v4 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v7 = *(this + 7);
  if (v7 < 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v5 += v8;
LABEL_14:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5, a4);
  }

  *(this + 5) = v5;
  return v5;
}

void google::protobuf::DescriptorProto_ReservedRange::MergeFrom(google::protobuf::DescriptorProto_ReservedRange *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::DescriptorProto_ReservedRange::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *google::protobuf::DescriptorProto_ReservedRange::MergeFrom(void *this, const google::protobuf::DescriptorProto_ReservedRange *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v3[6] = *(a2 + 6);
    }

    if ((v5 & 2) != 0)
    {
      v3[7] = *(a2 + 7);
    }

    v3[4] |= v5;
  }

  return this;
}

void google::protobuf::DescriptorProto_ReservedRange::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::DescriptorProto_ReservedRange::Clear(this);

    google::protobuf::DescriptorProto_ReservedRange::MergeFrom(this, a2);
  }
}

google::protobuf::DescriptorProto_ReservedRange *google::protobuf::DescriptorProto_ReservedRange::CopyFrom(google::protobuf::DescriptorProto_ReservedRange *this, const google::protobuf::DescriptorProto_ReservedRange *a2)
{
  if (a2 != this)
  {
    v4 = this;
    google::protobuf::DescriptorProto_ReservedRange::Clear(this);

    return google::protobuf::DescriptorProto_ReservedRange::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *google::protobuf::DescriptorProto_ReservedRange::InternalSwap(google::protobuf::DescriptorProto_ReservedRange *this, google::protobuf::Arena **a2)
{
  result = sub_2769DF630(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = a2[3];
  a2[3] = v6;
  return result;
}

uint64_t google::protobuf::DescriptorProto_ReservedRange::GetMetadata(google::protobuf::DescriptorProto_ReservedRange *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[6];
  v2 = off_2812FC738[7];
  return result;
}

google::protobuf::DescriptorProto *google::protobuf::DescriptorProto::DescriptorProto(google::protobuf::DescriptorProto *this, Arena *a2)
{
  *this = &unk_2885C6410;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = a2;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = a2;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 24) = a2;
  *(this + 18) = a2;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = a2;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  if (atomic_load_explicit(scc_info_DescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 27) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 28) = 0;
  return this;
}

void sub_276B34CC0(_Unwind_Exception *a1)
{
  sub_276B4A5CC(v8);
  sub_276A43438(v7);
  sub_276B4ACA8(v6);
  sub_276B4A7F4(v5);
  sub_276B4AC24(v4);
  sub_276B4A6EC(v3);
  sub_276B4A668(v2);
  sub_276B4A7F4(v1);
  _Unwind_Resume(a1);
}

google::protobuf::DescriptorProto *google::protobuf::DescriptorProto::DescriptorProto(google::protobuf::DescriptorProto *this, const google::protobuf::DescriptorProto *a2)
{
  *(this + 1) = 0;
  v48 = (this + 8);
  *this = &unk_2885C6410;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 5);
    v6 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 8));
    sub_276B4AB64(this + 3, v6, (v5 + 8), v4, **(this + 5) - *(this + 8));
    v7 = *(this + 8) + v4;
    *(this + 8) = v7;
    v8 = *(this + 5);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v9 = *(a2 + 14);
  if (v9)
  {
    v10 = *(a2 + 8);
    v11 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_276B4A924(this + 6, v11, (v10 + 8), v9, **(this + 8) - *(this + 14));
    v12 = *(this + 14) + v9;
    *(this + 14) = v12;
    v13 = *(this + 8);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v14 = *(a2 + 20);
  if (v14)
  {
    v15 = *(a2 + 11);
    v16 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72), v14);
    sub_276B4A9E4(this + 9, v16, (v15 + 8), v14, **(this + 11) - *(this + 20));
    v17 = *(this + 20) + v14;
    *(this + 20) = v17;
    v18 = *(this + 11);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v19 = *(a2 + 26);
  if (v19)
  {
    v20 = *(a2 + 14);
    v21 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 96), *(a2 + 26));
    sub_276B4AD2C(this + 12, v21, (v20 + 8), v19, **(this + 14) - *(this + 26));
    v22 = *(this + 26) + v19;
    *(this + 26) = v22;
    v23 = *(this + 14);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  v24 = *(a2 + 32);
  if (v24)
  {
    v25 = *(a2 + 17);
    v26 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 120), *(a2 + 32));
    sub_276B4AB64(this + 15, v26, (v25 + 8), v24, **(this + 17) - *(this + 32));
    v27 = *(this + 32) + v24;
    *(this + 32) = v27;
    v28 = *(this + 17);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  v29 = *(a2 + 38);
  if (v29)
  {
    v30 = *(a2 + 20);
    v31 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 144), *(a2 + 38));
    sub_276B4ADEC(this + 18, v31, (v30 + 8), v29, **(this + 20) - *(this + 38));
    v32 = *(this + 38) + v29;
    *(this + 38) = v32;
    v33 = *(this + 20);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  v34 = *(a2 + 44);
  if (v34)
  {
    v35 = *(a2 + 23);
    v36 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 168), *(a2 + 44));
    sub_276B4AEAC(this + 21, v36, (v35 + 8), v34, **(this + 23) - *(this + 44));
    v37 = *(this + 44) + v34;
    *(this + 44) = v37;
    v38 = *(this + 23);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  v39 = *(a2 + 50);
  if (v39)
  {
    v40 = *(a2 + 26);
    v41 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 192), *(a2 + 50));
    sub_276B4A878(this + 8, v41, (v40 + 8), v39, **(this + 26) - *(this + 50));
    v42 = *(this + 50) + v39;
    *(this + 50) = v42;
    v43 = *(this + 26);
    if (*v43 < v42)
    {
      *v43 = v42;
    }
  }

  v44 = *(a2 + 1);
  if (v44)
  {
    sub_2769F63D8(v48, ((v44 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 27) = &google::protobuf::internal::fixed_address_empty_string;
  v45 = *(a2 + 4);
  if (v45)
  {
    v46 = *v48;
    if (*v48)
    {
      v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 27, (*(a2 + 27) & 0xFFFFFFFFFFFFFFFELL), v46);
    v45 = *(a2 + 4);
  }

  if ((v45 & 2) != 0)
  {
    operator new();
  }

  *(this + 28) = 0;
  return this;
}

void sub_276B35184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  MEMORY[0x277C9F670](v11, 0x10A1C40813C779CLL);
  sub_276B4A5CC(v16);
  sub_276A43438(v15);
  sub_276B4ACA8(v14);
  sub_276B4A7F4(v13);
  sub_276B4AC24(v12);
  sub_276B4A6EC(v10);
  sub_276B4A668(a9);
  sub_276B4A7F4((v9 + 24));
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorProto::~DescriptorProto(google::protobuf::DescriptorProto *this)
{
  v2 = *(this + 27);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  if (this != &google::protobuf::_DescriptorProto_default_instance_)
  {
    v3 = *(this + 28);
    if (v3)
    {
      google::protobuf::MessageOptions::~MessageOptions(v3);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C(this + 1);
  sub_276B4A5CC(this + 24);
  sub_276A43438(this + 21);
  sub_276B4ACA8(this + 18);
  sub_276B4A7F4(this + 15);
  sub_276B4AC24(this + 12);
  sub_276B4A6EC(this + 9);
  sub_276B4A668(this + 48);
  sub_276B4A7F4(this + 3);
}

{
  google::protobuf::DescriptorProto::~DescriptorProto(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::DescriptorProto::default_instance(google::protobuf::DescriptorProto *this)
{
  if (atomic_load_explicit(scc_info_DescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_DescriptorProto_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::DescriptorProto::Clear(google::protobuf::DescriptorProto *this)
{
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      google::protobuf::FieldDescriptorProto::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 8) = 0;
  }

  v5 = *(this + 14);
  if (v5 >= 1)
  {
    v6 = (*(this + 8) + 8);
    do
    {
      v7 = *v6++;
      google::protobuf::DescriptorProto::Clear(v7);
      --v5;
    }

    while (v5);
    *(this + 14) = 0;
  }

  v8 = *(this + 20);
  if (v8 >= 1)
  {
    v9 = (*(this + 11) + 8);
    do
    {
      v10 = *v9++;
      google::protobuf::EnumDescriptorProto::Clear(v10);
      --v8;
    }

    while (v8);
    *(this + 20) = 0;
  }

  v11 = *(this + 26);
  if (v11 >= 1)
  {
    v12 = (*(this + 14) + 8);
    do
    {
      v13 = *v12++;
      google::protobuf::DescriptorProto_ExtensionRange::Clear(v13);
      --v11;
    }

    while (v11);
    *(this + 26) = 0;
  }

  v14 = *(this + 32);
  if (v14 >= 1)
  {
    v15 = (*(this + 17) + 8);
    do
    {
      v16 = *v15++;
      google::protobuf::FieldDescriptorProto::Clear(v16);
      --v14;
    }

    while (v14);
    *(this + 32) = 0;
  }

  v17 = *(this + 38);
  if (v17 >= 1)
  {
    v18 = (*(this + 20) + 8);
    do
    {
      v19 = *v18++;
      google::protobuf::OneofDescriptorProto::Clear(v19);
      --v17;
    }

    while (v17);
    *(this + 38) = 0;
  }

  v20 = *(this + 44);
  if (v20 >= 1)
  {
    v21 = (*(this + 23) + 8);
    do
    {
      v22 = *v21++;
      google::protobuf::DescriptorProto_ReservedRange::Clear(v22);
      --v20;
    }

    while (v20);
    *(this + 44) = 0;
  }

  result = google::protobuf::RepeatedPtrField<std::string>::Clear(this + 192);
  v24 = *(this + 4);
  if ((v24 & 3) != 0)
  {
    if ((v24 & 1) == 0)
    {
      goto LABEL_33;
    }

    v25 = *(this + 27) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v25 + 23) & 0x80000000) == 0)
    {
      *v25 = 0;
      *(v25 + 23) = 0;
LABEL_33:
      if ((v24 & 2) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    **v25 = 0;
    *(v25 + 8) = 0;
    if ((v24 & 2) != 0)
    {
LABEL_34:
      result = google::protobuf::MessageOptions::Clear(*(this + 28));
    }
  }

LABEL_35:
  v27 = *(this + 8);
  v26 = this + 8;
  *(v26 + 2) = 0;
  if (v27)
  {

    return sub_2769F6424(v26);
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::MessageOptions::Clear(google::protobuf::MessageOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v3 = *(this + 14);
  if (v3 >= 1)
  {
    v4 = (*(this + 8) + 8);
    do
    {
      v5 = *v4++;
      result = google::protobuf::UninterpretedOption::Clear(v5);
      --v3;
    }

    while (v3);
    *(this + 14) = 0;
  }

  v7 = *(this + 8);
  v6 = this + 8;
  *(v6 + 16) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_2769F6424(v6);
  }

  return result;
}

google::protobuf::internal *google::protobuf::DescriptorProto::_InternalParse(google::protobuf::DescriptorProto *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v87 = a2;
  for (i = a3[11].i32[1]; ; i = a3[11].i32[1])
  {
    if (sub_2769F6104(a3, &v87, i))
    {
      return v87;
    }

    v7 = (v87 + 1);
    v8 = *v87;
    if ((*v87 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v87 + 2);
LABEL_6:
      v87 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v87, (v9 - 128));
    v87 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v40;
LABEL_7:
    v10 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v8 >> 3 > 7)
    {
      if (v10 != 8)
      {
        if (v10 != 9)
        {
          if (v10 != 10 || v8 != 82)
          {
            goto LABEL_146;
          }

          v19 = v7 - 1;
LABEL_32:
          v20 = (v19 + 1);
          v87 = (v19 + 1);
          v21 = *(this + 26);
          if (v21)
          {
            v22 = *(this + 50);
            v23 = *v21;
            if (v22 < *v21)
            {
              *(this + 50) = v22 + 1;
              v24 = *&v21[2 * v22 + 2];
              goto LABEL_39;
            }

            if (v23 == *(this + 51))
            {
LABEL_37:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 48, v23 + 1);
              v21 = *(this + 26);
              v23 = *v21;
            }

            *v21 = v23 + 1;
            v24 = sub_2769C64F4(*(this + 24));
            v25 = *(this + 50);
            v26 = *(this + 26) + 8 * v25;
            *(this + 50) = v25 + 1;
            *(v26 + 8) = v24;
            v20 = v87;
LABEL_39:
            v19 = google::protobuf::internal::InlineGreedyStringParser(v24, v20, a3);
            v87 = v19;
            if (!v19)
            {
              return 0;
            }

            if (*a3 <= v19 || *v19 != 82)
            {
              continue;
            }

            goto LABEL_32;
          }

          v23 = *(this + 51);
          goto LABEL_37;
        }

        if (v8 != 74)
        {
          goto LABEL_146;
        }

        v75 = (v7 - 1);
LABEL_134:
        v76 = (v75 + 1);
        v87 = (v75 + 1);
        v77 = *(this + 23);
        if (!v77)
        {
          v78 = *(this + 45);
          goto LABEL_136;
        }

        v82 = *(this + 44);
        v78 = *v77;
        if (v82 >= *v77)
        {
          if (v78 == *(this + 45))
          {
LABEL_136:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 42, v78 + 1);
            v77 = *(this + 23);
            v78 = *v77;
          }

          *v77 = v78 + 1;
          v79 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto_ReservedRange>(*(this + 21));
          v80 = *(this + 44);
          v81 = *(this + 23) + 8 * v80;
          *(this + 44) = v80 + 1;
          *(v81 + 8) = v79;
          v76 = v87;
        }

        else
        {
          *(this + 44) = v82 + 1;
          v79 = *&v77[2 * v82 + 2];
        }

        v75 = sub_276BD797C(a3, v79, v76);
        v87 = v75;
        if (!v75)
        {
          return 0;
        }

        if (*a3 <= v75 || *v75 != 74)
        {
          continue;
        }

        goto LABEL_134;
      }

      if (v8 != 66)
      {
        goto LABEL_146;
      }

      v59 = (v7 - 1);
LABEL_106:
      v60 = (v59 + 1);
      v87 = (v59 + 1);
      v61 = *(this + 20);
      if (!v61)
      {
        v62 = *(this + 39);
        goto LABEL_108;
      }

      v66 = *(this + 38);
      v62 = *v61;
      if (v66 >= *v61)
      {
        if (v62 == *(this + 39))
        {
LABEL_108:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 36, v62 + 1);
          v61 = *(this + 20);
          v62 = *v61;
        }

        *v61 = v62 + 1;
        v63 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::OneofDescriptorProto>(*(this + 18));
        v64 = *(this + 38);
        v65 = *(this + 20) + 8 * v64;
        *(this + 38) = v64 + 1;
        *(v65 + 8) = v63;
        v60 = v87;
      }

      else
      {
        *(this + 38) = v66 + 1;
        v63 = *&v61[2 * v66 + 2];
      }

      v59 = sub_276BD78AC(a3, v63, v60);
      v87 = v59;
      if (!v59)
      {
        return 0;
      }

      if (*a3 <= v59 || *v59 != 66)
      {
        continue;
      }

      goto LABEL_106;
    }

    if (v10 == 6)
    {
      if (v8 != 50)
      {
        goto LABEL_146;
      }

      v43 = (v7 - 1);
LABEL_78:
      v44 = (v43 + 1);
      v87 = (v43 + 1);
      v45 = *(this + 17);
      if (!v45)
      {
        v46 = *(this + 33);
        goto LABEL_80;
      }

      v50 = *(this + 32);
      v46 = *v45;
      if (v50 >= *v45)
      {
        if (v46 == *(this + 33))
        {
LABEL_80:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 30, v46 + 1);
          v45 = *(this + 17);
          v46 = *v45;
        }

        *v45 = v46 + 1;
        v47 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FieldDescriptorProto>(*(this + 15));
        v48 = *(this + 32);
        v49 = *(this + 17) + 8 * v48;
        *(this + 32) = v48 + 1;
        *(v49 + 8) = v47;
        v44 = v87;
      }

      else
      {
        *(this + 32) = v50 + 1;
        v47 = *&v45[2 * v50 + 2];
      }

      v43 = sub_276BD73CC(a3, v47, v44);
      v87 = v43;
      if (!v43)
      {
        return 0;
      }

      if (*a3 <= v43 || *v43 != 50)
      {
        continue;
      }

      goto LABEL_78;
    }

    if (v10 != 7 || v8 != 58)
    {
      goto LABEL_146;
    }

    *(this + 4) |= 2u;
    v36 = *(this + 28);
    if (!v36)
    {
      v37 = *(this + 1);
      if (v37)
      {
        v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
      }

      v36 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::MessageOptions>(v37);
      *(this + 28) = v36;
      v7 = v87;
    }

    v38 = sub_276BD77DC(a3, v36, v7);
LABEL_153:
    v87 = v38;
    if (!v38)
    {
      return 0;
    }

LABEL_154:
    ;
  }

  if (v8 >> 3 <= 2)
  {
    if (v10 != 1)
    {
      if (v10 != 2 || v8 != 18)
      {
        goto LABEL_146;
      }

      v28 = (v7 - 1);
      while (2)
      {
        v29 = (v28 + 1);
        v87 = (v28 + 1);
        v30 = *(this + 5);
        if (!v30)
        {
          v31 = *(this + 9);
          goto LABEL_52;
        }

        v35 = *(this + 8);
        v31 = *v30;
        if (v35 >= *v30)
        {
          if (v31 == *(this + 9))
          {
LABEL_52:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v31 + 1);
            v30 = *(this + 5);
            v31 = *v30;
          }

          *v30 = v31 + 1;
          v32 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FieldDescriptorProto>(*(this + 3));
          v33 = *(this + 8);
          v34 = *(this + 5) + 8 * v33;
          *(this + 8) = v33 + 1;
          *(v34 + 8) = v32;
          v29 = v87;
        }

        else
        {
          *(this + 8) = v35 + 1;
          v32 = *&v30[2 * v35 + 2];
        }

        v28 = sub_276BD73CC(a3, v32, v29);
        v87 = v28;
        if (!v28)
        {
          return 0;
        }

        if (*a3 <= v28 || *v28 != 18)
        {
          goto LABEL_154;
        }

        continue;
      }
    }

    if (v8 != 10)
    {
      goto LABEL_146;
    }

    *(this + 4) |= 1u;
    v41 = *(this + 1);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 27, v41);
    v38 = google::protobuf::internal::InlineGreedyStringParser(v42, v87, a3);
    goto LABEL_153;
  }

  if (v10 == 3)
  {
    if (v8 != 26)
    {
      goto LABEL_146;
    }

    v51 = v7 - 1;
    while (1)
    {
      v52 = (v51 + 1);
      v87 = (v51 + 1);
      v53 = *(this + 8);
      if (!v53)
      {
        break;
      }

      v58 = *(this + 14);
      v54 = *v53;
      if (v58 < *v53)
      {
        *(this + 14) = v58 + 1;
        v55 = *&v53[2 * v58 + 2];
        goto LABEL_98;
      }

      if (v54 == *(this + 15))
      {
        goto LABEL_94;
      }

LABEL_95:
      *v53 = v54 + 1;
      v55 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto>(*(this + 6));
      v56 = *(this + 14);
      v57 = *(this + 8) + 8 * v56;
      *(this + 14) = v56 + 1;
      *(v57 + 8) = v55;
      v52 = v87;
LABEL_98:
      v51 = sub_276BD715C(a3, v55, v52);
      v87 = v51;
      if (!v51)
      {
        return 0;
      }

      if (*a3 <= v51 || *v51 != 26)
      {
        goto LABEL_154;
      }
    }

    v54 = *(this + 15);
LABEL_94:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v54 + 1);
    v53 = *(this + 8);
    v54 = *v53;
    goto LABEL_95;
  }

  if (v10 == 4)
  {
    if (v8 != 34)
    {
      goto LABEL_146;
    }

    v67 = (v7 - 1);
    while (1)
    {
      v68 = (v67 + 1);
      v87 = (v67 + 1);
      v69 = *(this + 11);
      if (!v69)
      {
        break;
      }

      v74 = *(this + 20);
      v70 = *v69;
      if (v74 < *v69)
      {
        *(this + 20) = v74 + 1;
        v71 = *&v69[2 * v74 + 2];
        goto LABEL_126;
      }

      if (v70 == *(this + 21))
      {
        goto LABEL_122;
      }

LABEL_123:
      *v69 = v70 + 1;
      v71 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumDescriptorProto>(*(this + 9));
      v72 = *(this + 20);
      v73 = *(this + 11) + 8 * v72;
      *(this + 20) = v72 + 1;
      *(v73 + 8) = v71;
      v68 = v87;
LABEL_126:
      v67 = sub_276BD722C(a3, v71, v68);
      v87 = v67;
      if (!v67)
      {
        return 0;
      }

      if (*a3 <= v67 || *v67 != 34)
      {
        goto LABEL_154;
      }
    }

    v70 = *(this + 21);
LABEL_122:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 18, v70 + 1);
    v69 = *(this + 11);
    v70 = *v69;
    goto LABEL_123;
  }

  if (v10 == 5 && v8 == 42)
  {
    v11 = (v7 - 1);
    while (1)
    {
      v12 = (v11 + 1);
      v87 = (v11 + 1);
      v13 = *(this + 14);
      if (!v13)
      {
        break;
      }

      v18 = *(this + 26);
      v14 = *v13;
      if (v18 < *v13)
      {
        *(this + 26) = v18 + 1;
        v15 = *&v13[2 * v18 + 2];
        goto LABEL_20;
      }

      if (v14 == *(this + 27))
      {
        goto LABEL_16;
      }

LABEL_17:
      *v13 = v14 + 1;
      v15 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto_ExtensionRange>(*(this + 12));
      v16 = *(this + 26);
      v17 = *(this + 14) + 8 * v16;
      *(this + 26) = v16 + 1;
      *(v17 + 8) = v15;
      v12 = v87;
LABEL_20:
      v11 = sub_276BD770C(a3, v15, v12);
      v87 = v11;
      if (!v11)
      {
        return 0;
      }

      if (*a3 <= v11 || *v11 != 42)
      {
        goto LABEL_154;
      }
    }

    v14 = *(this + 27);
LABEL_16:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 24, v14 + 1);
    v13 = *(this + 14);
    v14 = *v13;
    goto LABEL_17;
  }

LABEL_146:
  if (v8)
  {
    v83 = (v8 & 7) == 4;
  }

  else
  {
    v83 = 1;
  }

  if (!v83)
  {
    v84 = *(this + 1);
    if (v84)
    {
      v85 = ((v84 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v85 = sub_2769F617C(this + 1);
      v7 = v87;
    }

    v38 = google::protobuf::internal::UnknownFieldParse(v8, v85, v7, a3, v6);
    goto LABEL_153;
  }

  a3[10].i32[0] = v8 - 1;
  return v87;
}

const google::protobuf::UnknownFieldSet *google::protobuf::DescriptorProto::_InternalSerialize(google::protobuf::DescriptorProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2769E1AB4(a3, 1, (*(this + 27) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v7 = *(this + 8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = *(*(this + 5) + 8 * i + 8);
      *v4 = 18;
      v10 = *(v9 + 5);
      if (v10 > 0x7F)
      {
        v4[1] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 3;
          do
          {
            *(v11 - 1) = v12 | 0x80;
            v13 = v12 >> 7;
            ++v11;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
          *(v11 - 1) = v13;
        }

        else
        {
          v4[2] = v12;
          v11 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v10;
        v11 = v4 + 2;
      }

      v4 = google::protobuf::FieldDescriptorProto::_InternalSerialize(v9, v11, a3);
    }
  }

  v15 = *(this + 14);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v17 = *(*(this + 8) + 8 * j + 8);
      *v4 = 26;
      v18 = *(v17 + 5);
      if (v18 > 0x7F)
      {
        v4[1] = v18 | 0x80;
        v20 = v18 >> 7;
        if (v18 >> 14)
        {
          v19 = v4 + 3;
          do
          {
            *(v19 - 1) = v20 | 0x80;
            v21 = v20 >> 7;
            ++v19;
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
          *(v19 - 1) = v21;
        }

        else
        {
          v4[2] = v20;
          v19 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v18;
        v19 = v4 + 2;
      }

      v4 = google::protobuf::DescriptorProto::_InternalSerialize(v17, v19, a3);
    }
  }

  v23 = *(this + 20);
  if (v23)
  {
    for (k = 0; k != v23; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v25 = *(*(this + 11) + 8 * k + 8);
      *v4 = 34;
      v26 = *(v25 + 5);
      if (v26 > 0x7F)
      {
        v4[1] = v26 | 0x80;
        v28 = v26 >> 7;
        if (v26 >> 14)
        {
          v27 = v4 + 3;
          do
          {
            *(v27 - 1) = v28 | 0x80;
            v29 = v28 >> 7;
            ++v27;
            v30 = v28 >> 14;
            v28 >>= 7;
          }

          while (v30);
          *(v27 - 1) = v29;
        }

        else
        {
          v4[2] = v28;
          v27 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v26;
        v27 = v4 + 2;
      }

      v4 = google::protobuf::EnumDescriptorProto::_InternalSerialize(v25, v27, a3);
    }
  }

  v31 = *(this + 26);
  if (v31)
  {
    for (m = 0; m != v31; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v33 = *(*(this + 14) + 8 * m + 8);
      *v4 = 42;
      v34 = *(v33 + 5);
      if (v34 > 0x7F)
      {
        v4[1] = v34 | 0x80;
        v36 = v34 >> 7;
        if (v34 >> 14)
        {
          v35 = v4 + 3;
          do
          {
            *(v35 - 1) = v36 | 0x80;
            v37 = v36 >> 7;
            ++v35;
            v38 = v36 >> 14;
            v36 >>= 7;
          }

          while (v38);
          *(v35 - 1) = v37;
        }

        else
        {
          v4[2] = v36;
          v35 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v34;
        v35 = v4 + 2;
      }

      v4 = google::protobuf::DescriptorProto_ExtensionRange::_InternalSerialize(v33, v35, a3, v4);
    }
  }

  v39 = *(this + 32);
  if (v39)
  {
    for (n = 0; n != v39; ++n)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v41 = *(*(this + 17) + 8 * n + 8);
      *v4 = 50;
      v42 = *(v41 + 5);
      if (v42 > 0x7F)
      {
        v4[1] = v42 | 0x80;
        v44 = v42 >> 7;
        if (v42 >> 14)
        {
          v43 = v4 + 3;
          do
          {
            *(v43 - 1) = v44 | 0x80;
            v45 = v44 >> 7;
            ++v43;
            v46 = v44 >> 14;
            v44 >>= 7;
          }

          while (v46);
          *(v43 - 1) = v45;
        }

        else
        {
          v4[2] = v44;
          v43 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v42;
        v43 = v4 + 2;
      }

      v4 = google::protobuf::FieldDescriptorProto::_InternalSerialize(v41, v43, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v47 = *(this + 28);
    *v4 = 58;
    v48 = *(v47 + 11);
    if (v48 > 0x7F)
    {
      v4[1] = v48 | 0x80;
      v50 = v48 >> 7;
      if (v48 >> 14)
      {
        v49 = v4 + 3;
        do
        {
          *(v49 - 1) = v50 | 0x80;
          v51 = v50 >> 7;
          ++v49;
          v52 = v50 >> 14;
          v50 >>= 7;
        }

        while (v52);
        *(v49 - 1) = v51;
      }

      else
      {
        v4[2] = v50;
        v49 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v48;
      v49 = v4 + 2;
    }

    v4 = google::protobuf::MessageOptions::_InternalSerialize(v47, v49, a3);
  }

  v53 = *(this + 38);
  if (v53)
  {
    for (ii = 0; ii != v53; ++ii)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v55 = *(*(this + 20) + 8 * ii + 8);
      *v4 = 66;
      v56 = *(v55 + 5);
      if (v56 > 0x7F)
      {
        v4[1] = v56 | 0x80;
        v58 = v56 >> 7;
        if (v56 >> 14)
        {
          v57 = v4 + 3;
          do
          {
            *(v57 - 1) = v58 | 0x80;
            v59 = v58 >> 7;
            ++v57;
            v60 = v58 >> 14;
            v58 >>= 7;
          }

          while (v60);
          *(v57 - 1) = v59;
        }

        else
        {
          v4[2] = v58;
          v57 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v56;
        v57 = v4 + 2;
      }

      v4 = google::protobuf::OneofDescriptorProto::_InternalSerialize(v55, v57, a3);
    }
  }

  v61 = *(this + 44);
  if (v61)
  {
    for (jj = 0; jj != v61; ++jj)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v63 = *(*(this + 23) + 8 * jj + 8);
      *v4 = 74;
      v64 = *(v63 + 5);
      if (v64 > 0x7F)
      {
        v4[1] = v64 | 0x80;
        v66 = v64 >> 7;
        if (v64 >> 14)
        {
          v65 = v4 + 3;
          do
          {
            *(v65 - 1) = v66 | 0x80;
            v67 = v66 >> 7;
            ++v65;
            v68 = v66 >> 14;
            v66 >>= 7;
          }

          while (v68);
          *(v65 - 1) = v67;
        }

        else
        {
          v4[2] = v66;
          v65 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v64;
        v65 = v4 + 2;
      }

      v4 = google::protobuf::DescriptorProto_ReservedRange::_InternalSerialize(v63, v65, a3, v4);
    }
  }

  v69 = *(this + 50);
  if (v69 >= 1)
  {
    v70 = 8;
    do
    {
      v4 = sub_276B32608(a3, 10, *(*(this + 26) + v70), v4);
      v70 += 8;
      --v69;
    }

    while (v69);
  }

  v71 = *(this + 1);
  if ((v71 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v71 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}