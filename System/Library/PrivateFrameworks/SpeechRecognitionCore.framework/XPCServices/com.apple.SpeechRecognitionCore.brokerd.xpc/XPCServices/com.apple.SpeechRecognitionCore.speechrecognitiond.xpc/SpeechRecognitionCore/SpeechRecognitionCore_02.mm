unint64_t sub_10002BAA4(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 24))(&v20);
  result = sub_10002B59C();
  v21 = v20;
  HIDWORD(v20) = *result;
  if (*&v20 != *(&v20 + 1))
  {
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * a2) != *(v7 + 4 * a2))
  {
    goto LABEL_16;
  }

  v8 = 0;
  v9 = *(a1 + 80);
  v10 = **(a1 + 16);
  v11 = (*(v9 + 8) - 4);
  v12 = v11;
  do
  {
    v13 = *v12--;
    v8 |= *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
  }

  while (v13 != a2);
  v14 = *a1;
  v15 = **(a1 + 72);
  while (1)
  {
    v16 = *v11;
    if (v14)
    {
      *(*v14 + 4 * v16) = *(a1 + 48);
    }

    result = v16 >> 6;
    v17 = 1 << v16;
    if ((v8 & 1) == 0)
    {
      break;
    }

    *(v10 + 8 * result) |= v17;
    *(v15 + 8 * result) &= ~v17;
    if (v16 == a2)
    {
      *(v9 + 8) = v11;
      goto LABEL_15;
    }

LABEL_13:
    --v11;
  }

  *(v15 + 8 * result) &= ~v17;
  if (v16 != a2)
  {
    goto LABEL_13;
  }

  *(v9 + 8) = v11;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_15:
  ++*(a1 + 48);
LABEL_16:
  if (a3 != -1)
  {
    v18 = **(a1 + 16);
    if ((*(v18 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2))
    {
      *(v18 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v19 = *(v7 + 4 * a2);
    if (v19 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v19;
    }
  }

  return result;
}

uint64_t sub_10002BCAC(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 12);
  v4 = *(**(a1 + 56) + 4 * v3);
  v5 = **(a1 + 64);
  if (v4 < *(v5 + 4 * a2))
  {
    *(v5 + 4 * a2) = v4;
  }

  v6 = **(a1 + 16);
  if ((*(v6 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
  {
    *(v6 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = *(a1 + 24);
  v8 = *v7 & 0xFFFFFFF3FFFFFFFFLL | 0x400000000;
  *v7 = v8;
  if (v3 == *(a1 + 40))
  {
    *v7 = v8 & 0xFFFFFFC7FFFFFFFFLL | 0x1000000000;
  }

  return 1;
}

uint64_t sub_10002BD40(void **a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 12);
  v4 = *a1[7];
  v5 = *(v4 + 4 * v3);
  if (v5 >= *(v4 + 4 * a2))
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
  }

  else
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
    if ((*(*a1[9] + 8 * v6) & v7) != 0)
    {
      v8 = *a1[8];
      if (v5 < *(v8 + 4 * a2))
      {
        *(v8 + 4 * a2) = v5;
      }
    }
  }

  v9 = *a1[2];
  if ((*(v9 + 8 * v6) & v7) != 0)
  {
    *(v9 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  return 1;
}

void *sub_10002BDE0(void *a1)
{
  *a1 = off_100101040;
  a1[1] = off_100101068;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_10002BE48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }
}

void sub_10002BEA4(uint64_t a1, void **a2)
{
  if (a2)
  {
    if (*a2)
    {
      operator delete(*a2);
    }

    operator delete();
  }
}

void sub_10002BEFC(void *a1)
{
  *a1 = off_100101040;
  a1[1] = off_100101068;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_10002BF8C(void *a1)
{
  *a1 = off_100101040;
  a1[1] = off_100101068;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_10002BFF4(void *a1)
{
  *a1 = off_100101040;
  a1[1] = off_100101068;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_10002C07C(void *a1, uint64_t a2)
{
  *a1 = off_100101068;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *sub_10002C134(void *a1)
{
  *a1 = off_100101068;
  sub_10002C1E4(a1 + 3);
  return a1;
}

void sub_10002C178(void *a1)
{
  *a1 = off_100101068;
  sub_10002C1E4(a1 + 3);

  operator delete();
}

void sub_10002C1E4(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = v2[1];
      sub_10002C244(a1, v2);
      v2 = v5;
    }
  }
}

void sub_10002C244(int a1, void *__p)
{
  v2 = __p[2];
  __p[2] = 0;
  if (v2)
  {
    operator delete[]();
  }

  operator delete(__p);
}

void sub_10002C298(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      sub_100017658();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void *sub_10002C3DC(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_10002C464(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_10002C464(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10002C638(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10007257C(a1, &v10);
}

void sub_10002C5EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10002C638(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100016D60();
}

uint64_t sub_10002C680(void *a1, uint64_t a2)
{
  v3 = 56 * a2;
  v4 = a1[1];
  if (224 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

void sub_10002C79C(const void **a1, _DWORD *a2)
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
      sub_100017658();
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
      sub_10002C924(a1, v12);
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

uint64_t sub_10002C87C(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_100017658();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = sub_10002C96C(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void sub_10002C924(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_100016D60();
}

uint64_t sub_10002C96C(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_10002CA28(&v2, a2);
    }

    sub_100017658();
  }

  return result;
}

void sub_10002CA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002CA28(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_10001A1CC(a1, v2);
  }

  sub_100017658();
}

void sub_10002CA6C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_10002CAFC(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_10002CAFC(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

uint64_t sub_10002CBCC(void *a1, int a2)
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

uint64_t sub_10002CC3C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_100025838(a1);
}

void *sub_10002CCE8(void *a1)
{
  v4 = a1[10];
  v2 = a1 + 10;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_10002BE48(v2, v3);
  }

  v5 = a1[9];
  a1[9] = 0;
  if (v5)
  {
    sub_10002BEA4((a1 + 9), v5);
  }

  v6 = a1[8];
  a1[8] = 0;
  if (v6)
  {
    sub_10002BE48((a1 + 8), v6);
  }

  v7 = a1[7];
  a1[7] = 0;
  if (v7)
  {
    sub_10002BE48((a1 + 7), v7);
  }

  return a1;
}

uint64_t sub_10002CD58(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = sub_10002D384();
    std::string::operator=((a7 + 32), v13);
    *(a7 + 56) = a4;
    *(a7 + 64) = a6;
    if ((*(*a1 + 96))(a1))
    {
      v14 = a3[25];
    }

    else
    {
      v14 = 0;
    }

    v15 = (*(*a1 + 104))(a1);
    if (a3[26])
    {
      v16 = v14 | 2;
    }

    else
    {
      v16 = v14;
    }

    if (!v15)
    {
      v16 = v14;
    }

    if (a3[27])
    {
      v16 |= 4u;
    }

    *(a7 + 60) = v16;
    sub_1000C8644(a7);
  }

  if ((*(*a1 + 96))(a1) && a3[25] == 1)
  {
    v17 = (*(*a1 + 96))(a1);
    (*(*v17 + 144))(v17, a2);
  }

  result = (*(*a1 + 104))(a1);
  if (result && a3[26] == 1)
  {
    v19 = *(*(*(*a1 + 104))(a1) + 144);

    return v19();
  }

  return result;
}

uint64_t sub_10002CF84(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  std::ostream::sentry::sentry();
  v16 = a2 + *(*a2 - 24);
  if ((v16[32] & 5) == 0)
  {
    v17 = *(v16 + 5);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    __p = 0u;
    v28 = 0u;
    v35 = a8;
    (*(*v17 + 40))(v26);
    if (v26[16] == -1)
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }
  }

  std::ostream::sentry::~sentry();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    sub_1000113AC(&__p, "ERROR");
    sub_10002B1D4(v26, &__p);
    v18 = sub_10002AE44(&std::cerr, "Fst::UpdateFstHeader: Write failed: ", 36);
    v19 = *(a3 + 23);
    if (v19 >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    if (v19 >= 0)
    {
      v21 = *(a3 + 23);
    }

    else
    {
      v21 = *(a3 + 8);
    }
  }

  else
  {
    sub_10002CD58(a1, a2, a3, a4, a5, a6, a7);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      sub_1000113AC(&__p, "ERROR");
      sub_10002B1D4(v26, &__p);
      v18 = sub_10002AE44(&std::cerr, "Fst::UpdateFstHeader: Write failed: ", 36);
      v22 = *(a3 + 23);
      if (v22 >= 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = *a3;
      }

      if (v22 >= 0)
      {
        v21 = *(a3 + 23);
      }

      else
      {
        v21 = *(a3 + 8);
      }
    }

    else
    {
      std::ostream::sentry::sentry();
      v23 = a2 + *(*a2 - 24);
      if ((v23[32] & 5) == 0)
      {
        (*(**(v23 + 5) + 32))(&__p);
        if (v35 == -1)
        {
          std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
        }
      }

      std::ostream::sentry::~sentry();
      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        return 1;
      }

      sub_1000113AC(&__p, "ERROR");
      sub_10002B1D4(v26, &__p);
      v18 = sub_10002AE44(&std::cerr, "Fst::UpdateFstHeader: Write failed: ", 36);
      v24 = *(a3 + 23);
      if (v24 >= 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = *a3;
      }

      if (v24 >= 0)
      {
        v21 = *(a3 + 23);
      }

      else
      {
        v21 = *(a3 + 8);
      }
    }
  }

  sub_10002AE44(v18, v20, v21);
  sub_10002B280(v26);
  if (SBYTE7(v28) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

uint64_t sub_10002D384()
{
  if ((atomic_load_explicit(&qword_10010D728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10010D728))
  {
    operator new();
  }

  return qword_10010D720;
}

uint64_t sub_10002D484()
{
  if ((atomic_load_explicit(&qword_10010D738, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10010D738))
  {
    operator new();
  }

  return qword_10010D730;
}

void sub_10002D548(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_10002D598(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    sub_10002D9AC(__p, a2);
    if ((v29[*(__p[0] - 3)] & 5) != 0)
    {
      sub_1000113AC(v16, "ERROR");
      sub_10002B1D4(&v22, v16);
      v5 = sub_10002AE44(&std::cerr, "Fst::Write: Can't open file: ", 29);
      v6 = *(a2 + 23);
      if (v6 >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      if (v6 >= 0)
      {
        v8 = *(a2 + 23);
      }

      else
      {
        v8 = *(a2 + 8);
      }

      goto LABEL_31;
    }

    v10 = byte_10010E8AD;
    if (*(a2 + 23) < 0)
    {
      sub_1000732A4(v16, *a2, *(a2 + 8));
    }

    else
    {
      *v16 = *a2;
      v17 = *(a2 + 16);
    }

    v18 = 257;
    v19 = 1;
    v20 = v10;
    v21 = 0;
    v12 = (*(*a1 + 80))(a1, __p, v16);
    v13 = v12;
    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
      if (v13)
      {
        goto LABEL_23;
      }
    }

    else if (v12)
    {
LABEL_23:
      v11 = 1;
LABEL_34:
      std::filebuf::~filebuf();
      std::ostream::~ostream();
      std::ios::~ios();
      return v11;
    }

    sub_1000113AC(v16, "ERROR");
    sub_10002B1D4(&v22, v16);
    v5 = sub_10002AE44(&std::cerr, "Fst::Write failed: ", 19);
    v14 = *(a2 + 23);
    if (v14 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v14 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

LABEL_31:
    sub_10002AE44(v5, v7, v8);
    sub_10002B280(&v22);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }

    v11 = 0;
    goto LABEL_34;
  }

  sub_1000113AC(v16, "standard output");
  v9 = byte_10010E8AD;
  if (SHIBYTE(v17) < 0)
  {
    sub_1000732A4(__p, v16[0], v16[1]);
  }

  else
  {
    *__p = *v16;
    v24 = v17;
  }

  v25 = 257;
  v26 = 1;
  v27 = v9;
  v28 = 0;
  v11 = (*(*a1 + 80))(a1, &std::cout, __p);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  return v11;
}

void sub_10002D910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_10002D9AC(void (__cdecl ***a1)(std::ofstream *__hidden this), uint64_t *a2))(std::ofstream *__hidden this)
{
  a1[58] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 1);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_10002DB40(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10002DB78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::ostream::~ostream();
}

void *sub_10002DCAC(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100101408;
  sub_100073348((a1 + 3), a2);
  return a1;
}

void sub_10002DD28(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100101408;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10002DDA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (*(*a2 + 16))(a2);
  }

  else
  {
    v3 = 0;
  }

  result = *(a1 + 40);
  *(a1 + 40) = v3;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

uint64_t sub_10002DE44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (*(*a2 + 16))(a2);
  }

  else
  {
    v3 = 0;
  }

  result = *(a1 + 48);
  *(a1 + 48) = v3;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

uint64_t sub_10002DFF4(void *a1)
{
  *a1 = off_100101470;
  v3 = a1 + 7;
  v2 = a1[7];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      sub_10002E5F4(v2[v4++]);
      v2 = a1[7];
    }

    while (v4 < (a1[8] - v2) >> 3);
  }

  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  return sub_10002E148(a1);
}

void sub_10002E084(void *a1)
{
  sub_10002DFF4(a1);

  operator delete();
}

void sub_10002E0D4(void *a1)
{
  sub_10002DFF4(a1);

  operator delete();
}

void sub_10002E110(uint64_t a1)
{
  sub_10002E148(a1);

  operator delete();
}

uint64_t sub_10002E148(uint64_t a1)
{
  *a1 = off_1001014A0;
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void *sub_10002E1F8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_100017670(result, a2);
    }

    sub_100017658();
  }

  return result;
}

void *sub_10002E298(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_10002E3F0(result, a2);
    }

    sub_100017658();
  }

  return result;
}

void sub_10002E338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10002E370(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 8) = *(v2 + 8);
      *(v5 + 12) = *(v2 + 12);
      v2 += 16;
      v5 += 16;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void sub_10002E3F0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100016D60();
}

uint64_t sub_10002E438(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[1];
  }

  if (!a2[1])
  {
    ++a1[2];
  }

  return sub_10002E468(a1 + 3, a2);
}

uint64_t sub_10002E468(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10002E4C0(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 12) = *(a2 + 12);
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_10002E4C0(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_100017658();
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

  v15 = a1;
  if (v7)
  {
    sub_10002E3F0(a1, v7);
  }

  v8 = 16 * v2;
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 12) = *(a2 + 12);
  v13 = 16 * v2 + 16;
  sub_10002E370(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_10002E5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002E5F4(void *__p)
{
  if (__p)
  {
    v2 = __p[3];
    if (v2)
    {
      __p[4] = v2;
      operator delete(v2);
    }

    operator delete(__p);
  }
}

uint64_t sub_10002E640(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1 || *(v1 + 8))
  {
    sub_10002E6B8();
  }

  return result;
}

void *sub_10002E724(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100101408;
  sub_100073348((a1 + 3), a2);
  return a1;
}

float sub_10002E780(void *a1, int a2, float *a3)
{
  v9 = **(a1[7] + 8 * a2);
  v6 = (*(*a1 + 16))(a1);
  v7 = sub_100073A04(v6, &v9, a3);
  result = *a3;
  **(a1[7] + 8 * a2) = *a3;
  a1[1] = a1[1] & 4 | v7;
  return result;
}

uint64_t sub_10002E818(void *a1, int a2, float *a3)
{
  v6 = *(*(a1[7] + 8 * a2) + 32);
  if (v6 == *(*(a1[7] + 8 * a2) + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 16);
  }

  v8 = (*(*a1 + 16))(a1);
  a1[1] = a1[1] & 4 | sub_1000738DC(v8, a2, a3, v7);
  v9 = *(a1[7] + 8 * a2);

  return sub_10002E438(v9, a3);
}

void sub_10002E8C0(uint64_t a1, char **a2)
{
  v4 = (a1 + 56);
  sub_10002EB78(__p, (*(a1 + 64) - *(a1 + 56)) >> 3);
  v5 = *a2;
  v6 = a2[1] - *a2;
  if (v6)
  {
    v7 = v6 >> 2;
    v8 = __p[0];
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v9 = *v5;
      v5 += 4;
      v8[v9] = -1;
      --v7;
    }

    while (v7);
  }

  v10 = *(a1 + 56);
  if (*(a1 + 64) == v10)
  {
    v13 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (*(__p[0] + v11) == -1)
      {
        sub_10002E5F4(*(v10 + 8 * v11));
      }

      else
      {
        *(__p[0] + v11) = v12;
        if (v11 != v12)
        {
          *(v10 + 8 * v12) = *(v10 + 8 * v11);
        }

        ++v12;
      }

      ++v11;
      v10 = *(a1 + 56);
    }

    while (v11 < (*(a1 + 64) - v10) >> 3);
    v13 = v12;
  }

  sub_10002EAF4(v4, v13);
  v14 = *(a1 + 56);
  if (*(a1 + 64) != v14)
  {
    v15 = 0;
    do
    {
      v16 = *(v14 + 8 * v15);
      v17 = *(v16 + 24);
      v18 = *(v16 + 32);
      v19 = *(v16 + 8);
      v21 = v18 - v17;
      v20 = v18 == v17;
      if (v18 == v17)
      {
        v22 = 0;
      }

      else
      {
        v22 = *(v16 + 24);
      }

      if (v20)
      {
        v24 = 0;
        v31 = v21 >> 4;
        v32 = *(v16 + 16);
        v33 = *(v16 + 8);
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v25 = (v22 + 12);
        do
        {
          v26 = *(__p[0] + *v25);
          if (v26 == -1)
          {
            v28 = *(v25 - 3);
            v29.i64[0] = v28;
            v29.i64[1] = HIDWORD(v28);
            v19 = vaddq_s64(v19, vceqzq_s64(v29));
          }

          else
          {
            *v25 = v26;
            if (v23 != v24)
            {
              v27 = v22 + 16 * v24;
              *v27 = *(v25 - 3);
              *(v27 + 8) = *(v25 - 1);
              *(v27 + 12) = v26;
              v14 = *v4;
            }

            ++v24;
          }

          v16 = *(v14 + 8 * v15);
          ++v23;
          v30 = *(v16 + 32) - *(v16 + 24);
          v25 += 4;
        }

        while (v23 < v30 >> 4);
        v31 = v30 >> 4;
        v32 = v19.i64[1];
        v33 = v19.i64[0];
      }

      sub_10002EB24(v16, v31 - v24);
      v14 = *(a1 + 56);
      v34 = *(a1 + 64);
      v35 = *(v14 + 8 * v15);
      *(v35 + 8) = v33;
      *(v35 + 16) = v32;
      ++v15;
    }

    while (v15 < (v34 - v14) >> 3);
  }

  v36 = *(a1 + 80);
  if (v36 == -1)
  {
    v37 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v37 = __p[0];
    *(a1 + 80) = *(__p[0] + v36);
  }

  __p[1] = v37;
  operator delete(v37);
}

void sub_10002EAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002EAF4(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_10002ECC8(a1, a2 - v2);
  }
}

void *sub_10002EB24(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result[4];
    v3 = -16 * a2;
    v4 = (v2 - 16);
    v5 = (v2 - 16);
    do
    {
      v6 = *v5;
      v5 -= 4;
      if (!v6)
      {
        --result[1];
      }

      if (!v4[1])
      {
        --result[2];
      }

      v4 = v5;
      --a2;
    }

    while (a2);
    result[4] = v2 + v3;
  }

  return result;
}

void *sub_10002EB78(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10002EC8C(result, a2);
  }

  return result;
}

void sub_10002EC70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002EC8C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_10002C924(a1, a2);
  }

  sub_100017658();
}

void sub_10002ECC8(uint64_t a1, unint64_t a2)
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
      sub_100017658();
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
      sub_100017670(a1, v9);
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

void *sub_10002EE38(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100101408;
  sub_10002EE94((a1 + 3));
  return a1;
}

uint64_t sub_10002EE94(uint64_t a1)
{
  *a1 = off_1001014A0;
  *(a1 + 8) = 0;
  sub_1000113AC((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = -1;
  *a1 = off_100101440;
  sub_1000113AC(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x956A5A950003;
  return a1;
}

void sub_10002EF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10002DFF4(v15);
  _Unwind_Resume(a1);
}

void sub_10002EF8C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 64) != v2)
  {
    v3 = 0;
    do
    {
      sub_10002E5F4(*(v2 + 8 * v3++));
      v2 = *(a1 + 56);
    }

    while (v3 < (*(a1 + 64) - v2) >> 3);
  }

  *(a1 + 64) = v2;
  *(a1 + 80) = -1;
}

int *sub_10002F064(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) + 24) + 16 * *(a1 + 24);
  v5 = *v4;
  v6 = *(v4 + 4);
  if (*v4 != v6)
  {
    **(a1 + 16) &= ~0x20000uLL;
  }

  if (v5)
  {
    if (!v6)
    {
      v7 = *(a1 + 16);
      v8 = *v7;
LABEL_8:
      *v7 = v8 & 0xFFFFFFFFFBFFFFFFLL;
    }
  }

  else
  {
    v7 = *(a1 + 16);
    v9 = *v7;
    *v7 &= ~0x1000000uLL;
    if (!v6)
    {
      v8 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      *v7 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      goto LABEL_8;
    }
  }

  if (*(v4 + 8) != *sub_10002B59C() && *(v4 + 8) != *sub_10002B564())
  {
    **(a1 + 16) &= ~0x100000000uLL;
  }

  sub_10002F248(*(a1 + 8), a2, *(a1 + 24));
  v10 = *a2;
  v11 = *(a2 + 4);
  if (*a2 != v11)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v10)
  {
    if (!v11)
    {
      v12 = *(a1 + 16);
      v13 = *v12;
LABEL_19:
      *v12 = v13 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
    }
  }

  else
  {
    v12 = *(a1 + 16);
    v14 = *v12 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
    *v12 = v14;
    if (!v11)
    {
      v13 = v14 & 0xFFFFFFFFFD3FFFFFLL | 0x400000;
      *v12 = v13;
      goto LABEL_19;
    }
  }

  result = sub_10002B59C();
  if (*(a2 + 8) != *result)
  {
    result = sub_10002B564();
    if (*(a2 + 8) != *result)
    {
      **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFCFFFFFFFFLL | &_mh_execute_header;
    }
  }

  **(a1 + 16) &= 0x30FC30007uLL;
  return result;
}

float sub_10002F248(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3] + 16 * a3;
  if (!*v3)
  {
    --a1[1];
  }

  if (!*(v3 + 4))
  {
    --a1[2];
  }

  if (!*a2)
  {
    ++a1[1];
  }

  if (!*(a2 + 4))
  {
    ++a1[2];
  }

  *v3 = *a2;
  result = *(a2 + 8);
  *(v3 + 8) = result;
  *(v3 + 12) = *(a2 + 12);
  return result;
}

void sub_10002F2BC(void ***a1)
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
        v6 = v4 - 40;
        v7 = (v4 - 24);
        sub_100016FD4(&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t sub_10002F338(uint64_t *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    sub_100017658();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v5;
  }

  v20 = a1;
  if (v8)
  {
    sub_10002F494(a1, v8);
  }

  v9 = 40 * v4;
  v17 = 0;
  v18 = v9;
  *(&v19 + 1) = 0;
  v10 = *a3;
  *v9 = *a2;
  *(v9 + 8) = v10;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 16) = 0;
  *(v9 + 16) = *a4;
  *(v9 + 32) = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *&v19 = 40 * v4 + 40;
  v11 = a1[1];
  v12 = 40 * v4 + *a1 - v11;
  sub_10002F4EC(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_10002F640(&v17);
  return v16;
}

void sub_10002F480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002F640(va);
  _Unwind_Resume(a1);
}

void sub_10002F494(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100016D60();
}

uint64_t sub_10002F4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    while (v5 != a3)
    {
      v12 = (v5 + 16);
      sub_100016FD4(&v12);
      v5 += 40;
    }
  }

  return sub_10002F5B0(v8);
}

uint64_t sub_10002F5B0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10002F5E8(a1);
  }

  return a1;
}

void sub_10002F5E8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 40;
      v4 = (v1 - 24);
      sub_100016FD4(&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **sub_10002F640(void **a1)
{
  sub_10002F674(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10002F674(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    v4 = (i - 24);
    sub_100016FD4(&v4);
  }
}

void speechrecognitiond_peer_is_alive(int a1, RDPeer *a2)
{
  v11 = a2;
  v3 = qword_10010E4A8;
  if (!qword_10010E4A8)
  {
    goto LABEL_9;
  }

  v4 = &qword_10010E4A8;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == &qword_10010E4A8 || v4[4] > a2)
  {
LABEL_9:
    sub_10002FC40(&qword_10010E4A0, &v11);
  }

  if ((byte_10010E4C0 & 1) == 0)
  {
    byte_10010E4C0 = 1;
    v8 = os_transaction_create();
    v9 = qword_10010E4B8;
    qword_10010E4B8 = v8;

    v10 = RXOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v13 = a1;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PeerConnection: peer(%d) is first peer alive", buf, 8u);
    }
  }
}

void speechrecognitiond_peer_is_dead(int a1, RDPeer *a2)
{
  v4 = a2;
  sub_10002FD0C(&qword_10010E4A0, &v4);
  if (!qword_10010E4B0 && byte_10010E4C0 == 1)
  {
    byte_10010E4C0 = 0;
    v3 = RXOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v6 = a1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PeerConnection: peer(%d) was last peer alive", buf, 8u);
    }
  }
}

void speechrecognitiond_intialize_queue(void)
{
  object = dispatch_workloop_create_inactive("RDMainWorkloop");
  dispatch_workloop_set_scheduler_priority();
  dispatch_set_qos_class_fallback();
  dispatch_activate(object);
  v0 = dispatch_queue_attr_make_initially_inactive(0);
  v1 = dispatch_queue_create("RDMainQueue", v0);

  dispatch_set_target_queue(v1, object);
  dispatch_set_qos_class_floor(v1, QOS_CLASS_USER_INTERACTIVE, 0);
  dispatch_activate(v1);
  v2 = gRDServerQueue;
  gRDServerQueue = v1;
}

uint64_t speechrecognitiond_peer_client_update(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = xpc_unwrap_uint64s_in_object(v4);
  v6 = (*(*a2 + 32))(a2, v5);

  return v6;
}

id speechrecognitiond_peer_legacy_msg_handler(NSDictionary *a1, int a2, RDPeer *a3)
{
  v4 = a1;
  if (!v4)
  {
    v6 = RXOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "null cfEvent in speechrecognitiond_peer_legacy_msg_handler", buf, 2u);
    }

    goto LABEL_14;
  }

  v5 = _CFXPCCreateXPCObjectFromCFObject();
  v6 = xpc_unwrap_uint64s_in_object(v5);

  if (!v6)
  {
    v9 = RXOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = 0;
      v10 = "PeerConnection: null event in speechrecognitiond_peer_legacy_msg_handler";
      v11 = &v14;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!a3)
  {
    v9 = RXOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v10 = "PeerConnection: null peerContext in speechrecognitiond_peer_legacy_msg_handler";
      v11 = &v13;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (xpc_dictionary_get_int64(v6, kRDKeyMessage) == 102)
  {
    empty = xpc_dictionary_create_empty();
    (*(*a3 + 40))(a3, v6, empty);
    v8 = _CFXPCCreateCFObjectFromXPCObject();

    goto LABEL_15;
  }

LABEL_14:
  v8 = 0;
LABEL_15:

  return v8;
}

void *sub_10002FC40(uint64_t a1, unint64_t *a2)
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

uint64_t sub_10002FD0C(uint64_t **a1, unint64_t *a2)
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

  sub_10002FD90(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *sub_10002FD90(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_10002FE04(v6, a2);
  return v3;
}

uint64_t *sub_10002FE04(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void sub_100030184()
{
  v0 = objc_autoreleasePoolPush();
  qword_10010E4B0 = 0;
  qword_10010E4A8 = 0;
  qword_10010E4A0 = &qword_10010E4A8;
  __cxa_atexit(sub_10002F6CC, &qword_10010E4A0, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

CFIndex RXDebugFlagsUpdate()
{
  dword_10010E4C8 = CFPreferencesGetAppIntegerValue(@"RXDebugFlag", @"com.apple.SpeechRecognitionCore.speechrecognitiond", 0);
  byte_10010E4CC = CFPreferencesGetAppBooleanValue(@"RXVeryVerbose", @"com.apple.SpeechRecognitionCore.speechrecognitiond", 0) != 0;
  byte_10010E4CD = CFPreferencesGetAppIntegerValue(@"RXDebugAutomationMode", @"com.apple.SpeechRecognitionCore.speechrecognitiond", 0);
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"RXDebugAutomationSimulateOpenMic", @"com.apple.SpeechRecognitionCore.speechrecognitiond", &keyExistsAndHasValidFormat))
  {
    v0 = 1;
  }

  else
  {
    v0 = keyExistsAndHasValidFormat == 0;
  }

  v1 = v0;
  byte_10010D740 = v1;
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"RXRecognitionResetTimeInSec", @"com.apple.SpeechRecognitionCore.speechrecognitiond", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppIntegerValue;
  }

  else
  {
    v3 = 5;
  }

  byte_10010D741 = v3;
  result = CFPreferencesGetAppIntegerValue(@"RXDebugAutomationSaveKeywordsAudio", @"com.apple.SpeechRecognitionCore.speechrecognitiond", 0);
  byte_10010E4CE = result != 0;
  return result;
}

void __RXAbort(int a1, uint64_t a2, uint64_t a3, uint64_t a4, CFStringRef format, ...)
{
  va_start(va, format);
  v9 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  v10 = v9;
  if (a4)
  {
  }

  else
  {
    v11 = CFStringCreateWithFormat(0, 0, @"%s:%u: %@\n", a2, a3, v9);
  }

  v12 = v11;
  if (v10)
  {
    CFRelease(v10);
  }

  ExternalRepresentation = CFStringCreateExternalRepresentation(0, v12, 0x8000100u, 0);
  if (v12)
  {
    CFRelease(v12);
  }

  if (ExternalRepresentation)
  {
    BytePtr = CFDataGetBytePtr(ExternalRepresentation);
    Length = CFDataGetLength(ExternalRepresentation);
    write(1, BytePtr, Length);
    CFRelease(ExternalRepresentation);
  }

  if (a1)
  {
    abort();
  }
}

id RXSignpostLog()
{
  if (qword_10010E4D8 != -1)
  {
    sub_1000C91E4();
  }

  v1 = qword_10010E4D0;

  return v1;
}

void sub_1000304F4(id a1)
{
  qword_10010E4D0 = os_log_create("com.apple.SpeechRecognitionCore", "SRCSignposts");

  _objc_release_x1();
}

id RXOSLog()
{
  if (qword_10010E4E8 != -1)
  {
    sub_1000C91F8();
  }

  v1 = qword_10010E4E0;

  return v1;
}

void sub_10003057C(id a1)
{
  qword_10010E4E0 = os_log_create("com.apple.SpeechRecognitionCore", "SRCLogs");

  _objc_release_x1();
}

uint64_t xpc_unwrap2_uint64(void *a1)
{
  v1 = a1;
  bytes_ptr = xpc_data_get_bytes_ptr(v1);
  if (xpc_data_get_length(v1) == 16)
  {
    v3 = bytes_ptr[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id xpc_wrap_uint64s_in_object(void *a1)
{
  v1 = a1;
  if (xpc_get_type(v1) == &_xpc_type_dictionary)
  {
    bytes = 0;
    p_bytes = &bytes;
    v9 = 0x3032000000;
    v10 = sub_1000308EC;
    v11 = sub_1000308FC;
    v12 = xpc_copy(v1);
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_100030904;
    applier[3] = &unk_1000FEEE8;
    applier[4] = &bytes;
    xpc_dictionary_apply(v1, applier);
    v3 = p_bytes[5];
    _Block_object_dispose(&bytes, 8);
  }

  else if (xpc_get_type(v1) == &_xpc_type_array)
  {
    bytes = 0;
    p_bytes = &bytes;
    v9 = 0x3032000000;
    v10 = sub_1000308EC;
    v11 = sub_1000308FC;
    v12 = xpc_copy(v1);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100030970;
    v5[3] = &unk_1000FEF10;
    v5[4] = &bytes;
    xpc_array_apply(v1, v5);
    v3 = p_bytes[5];
    _Block_object_dispose(&bytes, 8);
  }

  else
  {
    if (xpc_get_type(v1) == &_xpc_type_uint64)
    {
      bytes = 0xDAC2C32E4DF4864CLL;
      p_bytes = xpc_uint64_get_value(v1);
      v2 = xpc_data_create(&bytes, 0x10uLL);
    }

    else
    {
      v2 = xpc_copy(v1);
    }

    v3 = v2;
  }

  return v3;
}

void sub_100030894(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 72), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1000308EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100030904(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = xpc_wrap_uint64s_in_object(a3);
  xpc_dictionary_set_value(v4, a2, v5);

  return 1;
}

uint64_t sub_100030970(uint64_t a1, size_t a2, uint64_t a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = xpc_wrap_uint64s_in_object(a3);
  xpc_array_set_value(v4, a2, v5);

  return 1;
}

id xpc_unwrap_uint64s_in_object(void *a1)
{
  v1 = a1;
  if (xpc_get_type(v1) == &_xpc_type_dictionary)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_1000308EC;
    v12 = sub_1000308FC;
    v13 = xpc_copy(v1);
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_100030C2C;
    applier[3] = &unk_1000FEEE8;
    applier[4] = &v8;
    xpc_dictionary_apply(v1, applier);
LABEL_10:
    v4 = v9[5];
    _Block_object_dispose(&v8, 8);

    goto LABEL_11;
  }

  if (xpc_get_type(v1) == &_xpc_type_array)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_1000308EC;
    v12 = sub_1000308FC;
    v13 = xpc_copy(v1);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100030C98;
    v6[3] = &unk_1000FEF10;
    v6[4] = &v8;
    xpc_array_apply(v1, v6);
    goto LABEL_10;
  }

  if (xpc_get_type(v1) == &_xpc_type_data && xpc_data_get_length(v1) == 16)
  {
    v2 = xpc_unwrap2_uint64(v1);
    v3 = xpc_uint64_create(v2);
  }

  else
  {
    v3 = xpc_copy(v1);
  }

  v4 = v3;
LABEL_11:

  return v4;
}

void sub_100030BF4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100030C2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = xpc_unwrap_uint64s_in_object(a3);
  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), a2, v5);

  return 1;
}

uint64_t sub_100030C98(uint64_t a1, size_t a2, uint64_t a3)
{
  v5 = xpc_unwrap_uint64s_in_object(a3);
  xpc_array_set_value(*(*(*(a1 + 32) + 8) + 40), a2, v5);

  return 1;
}

uint64_t RDQSREngine::Instantiate(RDQSREngine *this, const __CFString *a2)
{
  if (!RDQSREngine::sInstance)
  {
    operator new();
  }

  return 1;
}

uint64_t RDQSREngine::StartASREngine(uint64_t this)
{
  v1 = *(this + 192);
  if (v1)
  {
    v2 = this;
    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorSystemDefault, 0, v1);
    v4 = CFStringCreateMutableCopy(kCFAllocatorSystemDefault, 0, *(v2 + 192));
    CFStringAppend(MutableCopy, @"mini.json");
    CFStringAppend(v4, @"etiquette.json");
    if (sub_100031A10(MutableCopy))
    {
      v5 = CFLocaleCreate(0, *(v2 + 152));
      v6 = RDASRWSpeechRecognizerCreate(MutableCopy, 1, v5);
      *(v2 + 16) = v6;
      RDASRWSpeechRecognizerSetDetectUtterances(v6, 1);
      RDASRWSpeechRecognizerSetHighPriority(*(v2 + 16), 1);
      v7 = RXLocalesSupportingSpellingMode();
      if (v7)
      {
        v9 = v7;
        v14.length = CFArrayGetCount(v7);
        v14.location = 0;
        *(v2 + 440) = CFArrayContainsValue(v9, v14, *(v2 + 152)) != 0;
        CFRelease(v9);
      }

      v10 = RDLanguageAssets::CopyInstalledAssetSupportedTasksForLanguage(*(v2 + 152), v8);
      if (v10)
      {
        v11 = v10;
        v15.length = CFArrayGetCount(v10);
        v15.location = 0;
        *(v2 + 441) = CFArrayContainsValue(v11, v15, @"SpellCC") != 0;
        CFRelease(v11);
      }

      operator new();
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (*(v2 + 16))
    {
      *(v2 + 10) = RXIsAudioDonationSupported();
      *(v2 + 8) = 10;
      v12 = CFPreferencesCopyAppValue(@"SpeechDonationConfig", @"com.apple.SpeechRecognitionCore.speechrecognitiond");
      if (v12)
      {
        Value = CFDictionaryGetValue(v12, @"SpeechDonationSamplingPercent");
        if (Value)
        {
          *(v2 + 8) = CFStringGetIntValue(Value);
        }
      }

      operator new();
    }

    sub_1000C920C();
  }

  return this;
}

void RDQSREngine::RDQSREngine(RDQSREngine *this, const __CFString *a2)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 48) = 1;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 40) = 22863;
  *(this + 82) = 0;
  *(this + 43) = 256;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 136) = 0;
  *(this + 18) = 0;
  *(this + 19) = a2;
  *(this + 20) = 0;
  *(this + 23) = 0;
  operator new();
}

void sub_100031910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  v16 = *(v12 + 208);
  *(v12 + 208) = 0;
  if (v16)
  {
    sub_100037824(v12 + 208, v16);
  }

  v17 = *(v13 + 176);
  *(v13 + 176) = 0;
  if (v17)
  {
    sub_100037824(v13 + 176, v17);
  }

  sub_100037618(v14, 0);
  v18 = *a12;
  if (*a12)
  {
    *(v12 + 120) = v18;
    operator delete(v18);
  }

  sub_1000375CC((v12 + 32), 0);
  sub_1000375CC(v13, 0);
  _Unwind_Resume(a1);
}

BOOL sub_100031A10(__CFString *a1)
{
  RDString::RDString(__p, a1, 0);
  if (v7 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  v2 = access(v1, 4);
  if (v2)
  {
    v3 = RXOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = __p;
      if (v7 < 0)
      {
        v4 = __p[0];
      }

      *buf = 136315138;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unable to acess %s!!!", buf, 0xCu);
    }
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 == 0;
}

void sub_100031B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RDQSREngine::BuildCombinedGrammar(RDQSREngine *this, char a2)
{
  *(this + 86) = 1;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100034398;
  v2[3] = &unk_1000FEFA0;
  v2[4] = this;
  v3 = a2;
  dispatch_async(gRDServerQueue, v2);
}

uint64_t sub_100031BBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  v4[0] = off_1000FF040;
  v4[1] = v1;
  v4[3] = v4;
  RDUserProfile::updateUserProfileWithPersonalData(v2, 1, v4);
  return sub_1000377A4(v4);
}

void sub_100031C4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000377A4(va);
  _Unwind_Resume(a1);
}

void RDQSREngine::LoadCustomVocabulary(RDQSREngine *this, int a2)
{
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"PhoneticVocabularyMode", @"com.apple.SpeechRecognitionCore.Vocabulary", 0);
  v2 = [VCLog logForCategory:@"vocabulary"];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349312;
    *&buf[4] = AppIntegerValue;
    *&buf[12] = 1026;
    *&buf[14] = a2;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "RDQSREngine::LoadCustomVocabulary ### phoneticVocabularyMode: %{public}ld, firstTime: %{public}d", buf, 0x12u);
  }

  v3 = CFPreferencesCopyAppValue(@"CACVocabularyEntries", @"com.apple.SpeechRecognitionCore.Vocabulary");
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 == CFArrayGetTypeID())
    {
      if ((a2 & 1) == 0)
      {
        RDUserProfile::removeAllWords(*(this + 3));
      }

      MutableCopy = CFStringCreateMutableCopy(0, 0, *(this + 19));
      v51.length = CFStringGetLength(MutableCopy);
      v51.location = 0;
      CFStringFindAndReplace(MutableCopy, @"-", @"_", v51, 0);
      v7 = [VCLog logForCategory:@"vocabulary"];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        Count = CFArrayGetCount(v4);
        *buf = 134349314;
        *&buf[4] = Count;
        *&buf[12] = 2114;
        *&buf[14] = MutableCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "RDQSREngine::LoadCustomVocabulary vocabEntries all locales count: %{public}ld, normalizedLocaleID: %{public}@", buf, 0x16u);
      }

      if (CFArrayGetCount(v4) < 1)
      {
        v40 = 0;
      }

      else
      {
        v40 = 0;
        v10 = 0;
        *&v9 = 141558275;
        v35 = v9;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v10);
          v12 = ValueAtIndex;
          if (ValueAtIndex)
          {
            value = 0;
            if (!CFDictionaryGetValueIfPresent(ValueAtIndex, @"IsDeleted", &value) || !value || !CFBooleanGetValue(value))
            {
              v13 = CFDictionaryGetValue(v12, @"LocaleIdentifier");
              if (v13)
              {
                v14 = v13;
              }

              else
              {
                v14 = @"en_US";
              }

              v15 = CFStringCreateMutableCopy(0, 0, v14);
              v52.length = CFStringGetLength(v15);
              v52.location = 0;
              CFStringFindAndReplace(v15, @"-", @"_", v52, 0);
              if (CFStringCompare(MutableCopy, v15, 0) == kCFCompareEqualTo)
              {
                appendedString = CFDictionaryGetValue(v12, @"Text");
                v16 = CFDictionaryGetValue(v12, @"TextIPAs");
                Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                if (v16)
                {
                  v18 = CFArrayGetCount(v16);
                  if (v18 >= 1)
                  {
                    for (i = 0; i != v18; ++i)
                    {
                      CFArrayGetValueAtIndex(v16, i);
                      v20 = SRSSCopyNvasrFromIPA();
                      if (CFStringCompare(v20, &stru_100105420, 0))
                      {
                        v21 = [VCLog logForCategory:@"vocabulary"];
                        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                        {
                          v22 = CFArrayGetValueAtIndex(v16, i);
                          *buf = 141559299;
                          *&buf[4] = 1752392040;
                          *&buf[12] = 2113;
                          *&buf[14] = appendedString;
                          *&buf[22] = 2160;
                          v45 = 1752392040;
                          *v46 = 2113;
                          *&v46[2] = v22;
                          v47 = 2160;
                          v48 = 1752392040;
                          v49 = 2113;
                          v50 = v20;
                          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "RDQSREngine::LoadCustomVocabulary [DEBUG] text: %{private, mask.hash}@, textIPA: %{private, mask.hash}@, prons: %{private, mask.hash}@", buf, 0x3Eu);
                        }

                        CFArrayAppendValue(Mutable, v20);
                      }

                      if (v20)
                      {
                        CFRelease(v20);
                      }
                    }
                  }
                }

                if (appendedString)
                {
                  if (CFArrayGetCount(Mutable) > 0 && AppIntegerValue < 2)
                  {
                    v23 = CFStringCreateMutable(0, 0);
                    CFStringAppend(v23, appendedString);
                    CFStringAppend(v23, @"±");
                    v24 = [VCLog logForCategory:@"vocabulary"];
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 141558787;
                      *&buf[4] = 1752392040;
                      *&buf[12] = 2113;
                      *&buf[14] = v23;
                      *&buf[22] = 2160;
                      v45 = 1752392040;
                      *v46 = 2113;
                      *&v46[2] = Mutable;
                      _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "RDQSREngine::LoadCustomVocabulary [DEBUG] addToProfile textWithSpecialChar: %{private, mask.hash}@, pronsArray: %{private, mask.hash}@", buf, 0x2Au);
                    }

                    RDUserProfile::addPhraseAndPronsToUserProfile(*(this + 3), v23, Mutable, kRDProfileNonTerminalUnknown[0], kRDProfileWordTagUnknownFirst);
                    if (v23)
                    {
                      CFRelease(v23);
                    }
                  }

                  if ((AppIntegerValue & 0xFFFFFFFFFFFFFFFDLL) == 0)
                  {
                    v25 = CFArrayCreate(0, 0, 0, &kCFTypeArrayCallBacks);
                    v26 = [VCLog logForCategory:@"vocabulary"];
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = v35;
                      *&buf[4] = 1752392040;
                      *&buf[12] = 2113;
                      *&buf[14] = appendedString;
                      _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "RDQSREngine::LoadCustomVocabulary [DEBUG] addToProfile text: %{private, mask.hash}@, emptyPronsArray", buf, 0x16u);
                    }

                    RDUserProfile::addPhraseAndPronsToUserProfile(*(this + 3), appendedString, v25, kRDProfileNonTerminalUnknown[0], kRDProfileWordTagUnknownFirst);
                    if (v25)
                    {
                      CFRelease(v25);
                    }
                  }
                }

                if (Mutable)
                {
                  CFRelease(Mutable);
                }

                ++v40;
              }

              CFRelease(v15);
            }
          }

          ++v10;
        }

        while (v10 < CFArrayGetCount(v4) && v40 < 1000);
      }

      v28 = [VCLog logForCategory:@"vocabulary", v35];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        *&buf[4] = v40;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "RDQSREngine::LoadCustomVocabulary vocabEntries ingested count: %{public}ld", buf, 0xCu);
      }

      CFRelease(MutableCopy);
    }

    CFRelease(v4);
  }

  else
  {
    v27 = [VCLog logForCategory:@"vocabulary"];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "RDQSREngine::LoadCustomVocabulary: prefValue is NULL.", buf, 2u);
    }
  }

  v29 = RDUserProfile::copyDataProfile(*(this + 3));
  v30 = v29;
  v31 = v4 == 0;
  if (!v29)
  {
    v31 = 1;
  }

  if (!v31)
  {
    if (a2)
    {
      v32 = [VCLog logForCategory:@"vocabulary"];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "RDQSREngine::LoadCustomVocabulary: RDASRWSpeechRecognizerSetUserProfileData", buf, 2u);
      }

      RDASRWSpeechRecognizerSetUserProfileData(*(this + 2), v30);
    }

    else
    {
      *(this + 86) = 1;
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100034398;
      v45 = &unk_1000FEFA0;
      *v46 = this;
      v46[8] = 1;
      dispatch_async(gRDServerQueue, buf);
      v34 = dispatch_time(0, 5000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000371A4;
      block[3] = &unk_1000FEFA0;
      block[4] = this;
      v42 = 0;
      dispatch_after(v34, gRDServerQueue, block);
    }

    goto LABEL_67;
  }

  if (v29)
  {
LABEL_67:
    CFRelease(v30);
    return;
  }

  v33 = [VCLog logForCategory:@"vocabulary"];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    sub_1000C9268(v33);
  }
}

void sub_100032584(uint64_t a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2020000000;
  v3[3] = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037440;
  block[3] = &unk_1000FF010;
  block[4] = v3;
  dispatch_async(gRDServerQueue, block);
  _Block_object_dispose(v3, 8);
}

void RDQSREngine::UpdateUserProfileCache(RDUserProfile **this)
{
  RDUserProfile::writeUserProfileToCache(this[3]);
  v2 = CFPreferencesCopyAppValue(@"SaveProfileAsJSON", @"com.apple.SpeechRecognitionCore.speechrecognitiond");
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v3);
      CFRelease(v3);
      if (Value)
      {
        v6 = this[3];

        RDUserProfile::writeOutUserDataToJson(v6);
      }
    }

    else
    {

      CFRelease(v3);
    }
  }
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep RDQSREngine::RestartASREngine(CFTypeRef *this, const __CFString *a2)
{
  CFRelease(this[2]);
  this[2] = 0;
  *(this + 82) = 0;
  v4 = RXOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Restarting ASR Engine(%{public}@)", &v6, 0xCu);
  }

  RDQSREngine::StartASREngine(this);
  return RDQSREngine::ResetRecognition(this);
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep RDQSREngine::ResetRecognition(RDQSREngine *this)
{
  pthread_mutex_lock((this + 272));
  v2 = *(this + 33);
  v3 = RXOSLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting recognition system....", buf, 2u);
    }

    v5 = *(this + 28);
    if (v5)
    {
      CFRelease(v5);
      *(this + 28) = 0;
    }

    v6 = *(this + 31);
    if (v6)
    {
      CFRelease(v6);
      *(this + 31) = 0;
    }

    RDASRWSpeechRecognitionAudioBufferCancelRecognition(*(this + 33));
    CFRelease(*(this + 33));
    v7 = RXOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AudioBuffer released after recognition cancellation", v10, 2u);
    }

    *(this + 33) = 0;
  }

  else
  {
    if (v4)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AudioBuffer was Nil", v9, 2u);
    }
  }

  pthread_mutex_unlock((this + 272));
  RDQSREngine::SetupRecognition(this);
  result = rd_time_util::now().__d_.__rep_;
  *(this + 51) = result;
  return result;
}

void RDQSREngine::UseAudioSource(RDQSREngine *this, RDQSRSoundSource *a2)
{
  v4 = *(this + 5);
  if (v4)
  {
    (*(*v4 + 48))(v4);
    *(this + 5) = a2;
    if (a2 && (*(this + 48) & 1) == 0)
    {

      RDQSREngine::SetMicState(this, 1, "New Audio file");
    }
  }

  else
  {
    *(this + 5) = a2;
    if (a2 && *(this + 83) == 1)
    {
      RDQSREngine::EAREngine_SetMicState(this, 0);
      v5 = RXOSLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Mic is finally ON", v6, 2u);
      }
    }
  }
}

void RDQSREngine::EAREngine_SetMicState(uint64_t a1, int a2)
{
  if (!*(a1 + 40))
  {
    v4 = RXOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v5 = "Set the sound source first before setting EAREngine_MicState";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v5, buf, 2u);
    }

LABEL_26:

    return;
  }

  if (a2 != 1)
  {
    if (!a2)
    {
      pthread_mutex_lock((a1 + 272));
      if (!*(a1 + 264))
      {
        v3 = RXOSLog();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Creating Audio buffer", buf, 2u);
        }

        RDQSREngine::SetupRecognition(a1);
        *(a1 + 408) = rd_time_util::now();
      }

      pthread_mutex_unlock((a1 + 272));
      (***(a1 + 40))(*(a1 + 40));
      return;
    }

    v4 = RXOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v5 = "Unknown EAR Mic state";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  pthread_mutex_lock((a1 + 272));
  if (*(a1 + 264))
  {
    v6 = RXOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ending Audio buffer", buf, 2u);
    }

    v7 = *(a1 + 224);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 224) = 0;
    }

    v8 = *(a1 + 248);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 248) = 0;
    }

    RDASRWSpeechRecognitionAudioBufferEndAudio(*(a1 + 264));
    CFRelease(*(a1 + 264));
    v9 = RXOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "AudioBuffer released after mic went off", buf, 2u);
    }

    *(a1 + 264) = 0;
  }

  pthread_mutex_unlock((a1 + 272));
  (*(**(a1 + 40) + 8))(*(a1 + 40));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033F34;
  block[3] = &unk_1000FDCD8;
  block[4] = a1;
  if (qword_10010E4F8 != -1)
  {
    dispatch_once(&qword_10010E4F8, block);
  }
}

void RDQSREngine::SetMicState(RDQSREngine *this, int a2, const char *a3)
{
  if (a2 && *(this + 84) == 1 && *(this + 83) == 1)
  {
    RDQSREngine::SetMicState(this, 0, "Deferred toggle");
  }

  *(this + 84) = 0;
  v6 = *(this + 83);
  if (v6 != a2)
  {
    if (*(this + 5))
    {
      RDQSREngine::EAREngine_SetMicState(this, a2 ^ 1);
    }

    *(this + 83) = a2;
  }

  v7 = RXOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v6 == a2)
    {
      v8 = "was already";
    }

    else if (*(this + 5))
    {
      v8 = "is now";
    }

    else
    {
      v8 = "eventually will be";
    }

    v9 = "OFF";
    v10 = 136315650;
    v11 = a3;
    v12 = 2080;
    if (a2)
    {
      v9 = "ON";
    }

    v13 = v8;
    v14 = 2080;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Mic [%s] %s %s\n", &v10, 0x20u);
  }
}

uint64_t RDQSREngine::UseLiveAudio(uint64_t this, RDAudioObject *a2, void (*a3)(RDQSRSoundSource *, const __int16 *, uint64_t))
{
  if (!*(this + 40))
  {
    *(this + 48) = 1;
    RDQSRSoundSource::CreateLiveSource(a2, RDQSREngine::RequestSamplesCallback, a3);
  }

  return this;
}

uint64_t RDQSREngine::UseMixedAudio(uint64_t this, void (*a2)(RDQSRSoundSource *))
{
  if (!*(this + 40))
  {
    *(this + 48) = 1;
    RDQSRSoundSource::CreateMixedSource(RDQSREngine::RequestSamplesCallback, RDQSREngine::EndOfAudioCallback, a2);
  }

  return this;
}

void RDQSREngine::UseCannedAudio(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 48) = 0;
  RDQSRSoundSource::CreateCannedSource(v3);
}

uint64_t RDQSREngine::EndOfAudio(RDQSREngine *this, RDQSRSoundSource *a2)
{
  result = pthread_mutex_lock((this + 272));
  if (*(this + 33))
  {
    if (RXAutomationModeResult() || RXAutomationModeSynthesis() || RXAutomationModeFileName())
    {
      v4 = RXOSLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ending audio", buf, 2u);
      }

      RDASRWSpeechRecognitionAudioBufferEndAudio(*(this + 33));
      if (*(this + 216) == 1)
      {
        if (RXAutomationModeSynthesis() || RXAutomationModeFileName())
        {
          v5 = RXAutomationSimulateOpenMic();
          if ((v5 & 1) == 0)
          {
            v6 = RDQSRAudioFileLogger::audioFileLoggerQueue(v5);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000331AC;
            block[3] = &unk_1000FDCD8;
            block[4] = this;
            dispatch_async(v6, block);
          }
        }

        RDQSREngine::logAudioSamples(this, 0, 0);
        v8 = RDQSRAudioFileLogger::audioFileLoggerQueue(v7);
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_1000332D8;
        v9[3] = &unk_1000FDCD8;
        v9[4] = this;
        dispatch_async(v8, v9);
      }
    }

    return pthread_mutex_unlock((this + 272));
  }

  return result;
}

void RDQSREngine::logAudioSamples(RDQSREngine *this, const __int16 *a2, uint64_t a3)
{
  v6 = sub_100037890(&v13, a3);
  if (a3)
  {
    v6 = memmove(v13, a2, 2 * a3);
  }

  v7 = RDQSRAudioFileLogger::audioFileLoggerQueue(v6);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3321888768;
  v8[2] = sub_10003355C;
  v8[3] = &unk_1000FEF30;
  v8[4] = this;
  __p = 0;
  v10 = 0;
  v11 = 0;
  sub_10003798C(&__p, v13, v14, (v14 - v13) >> 1);
  v12 = a3;
  dispatch_async(v7, v8);

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }
}

void sub_1000332B0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 56);
  if (v4)
  {
    *(v2 - 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t RDQSREngine::RequestSamples(RDQSREngine *this, RDQSRSoundSource *a2, char *a3, uint64_t a4)
{
  pthread_mutex_lock((this + 272));
  if (*(this + 33))
  {
    pthread_mutex_lock((this + 336));
    RDQSRCircularBuffer<short>::write(*(this + 26), a3, a4);
    pthread_mutex_unlock((this + 336));
    if (*(this + 232) == 1 && *(this + 28))
    {
      if ((rd_time_util::durationInMilliSec(*(this + 30)) / 1000.0) < 8)
      {
        if (*(this + 233))
        {
          RDASRWSpeechRecognitionAudioBufferAddAudioSamples(*(this + 33), a3, a4);
        }
      }

      else
      {
        *(this + 233) = 0;
      }

      RDQSRCircularBuffer<short>::write(*(this + 25), a3, a4);
      RDKeywordSpotterAddAudioSamples(*(this + 28), a3, a4);
    }

    else if (*(this + 256) == 1 && (v7 = *(this + 31)) != 0)
    {
      if (*(this + 257) == 1)
      {
        RDASRWSpeechRecognitionAudioBufferAddAudioSamples(*(this + 33), a3, a4);
        v7 = *(this + 31);
      }

      RDOSDAddAudioSamples(v7, a3, a4);
      RDQSRCircularBuffer<short>::write(*(this + 25), a3, a4);
    }

    else
    {
      RDASRWSpeechRecognitionAudioBufferAddAudioSamples(*(this + 33), a3, a4);
    }

    if (*(this + 216) == 1)
    {
      if ((RXAutomationSimulateOpenMic() & 1) == 0)
      {
        *(this + 85) = 1;
      }

      RDQSREngine::logAudioSamples(this, a3, a4);
    }
  }

  else
  {
    v8 = RXOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AudioBuffer is nil.", v10, 2u);
    }
  }

  return pthread_mutex_unlock((this + 272));
}

void *sub_10003355C(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v3 = *(v2 + 32);
  if ((atomic_load_explicit(&qword_10010E510, memory_order_acquire) & 1) == 0)
  {
    sub_1000C92AC();
  }

  if (*(v3 + 85) == 1)
  {
    if (!qword_10010E508)
    {
      RDQSRAudioFileLogger::createCacheURLWithFilename(@"srcLogAudioFile.wav", v1);
      *(v3 + 217) = 1;
      operator new();
    }

    if (!word_10010E4F0)
    {
      RDQSRAudioFileLogger::addSamples(qword_10010E508, *(v2 + 40), *(v2 + 64));
    }
  }

  else
  {
    if (qword_10010E508)
    {
      v4 = word_10010E4F0 == 0;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      sub_100037940(&qword_10010E508, 0);
    }
  }

  return RDQSRCircularBuffer<short>::write(*(v3 + 200), *(v2 + 40), *(v2 + 64));
}

uint64_t sub_100033744(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return sub_10003798C(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 1);
}

void sub_100033760(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void RDQSREngine::removeLogAudioFile(RDQSREngine *this)
{
  if (*(this + 217) == 1)
  {
    v2 = RDQSRAudioFileLogger::audioFileLoggerQueue(this);
    dispatch_sync(v2, &stru_1000FEF60);
  }
}

void sub_1000337D0(id a1)
{
  CacheURLWithFilename = RDQSRAudioFileLogger::createCacheURLWithFilename(@"srcLogAudioFile.wav", v1);
  RDURL::RDURL(__p, CacheURLWithFilename, 1);
  if (v5 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  removefile(v3, 0, 2u);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100033840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RDQSREngine::AddPeer(uint64_t result, uint64_t a2)
{
  ++*(result + 56);
  *(a2 + 168) = *(result + 144);
  *(result + 144) = a2;
  return result;
}

void *RDQSREngine::RemovePeer(void *result, uint64_t a2)
{
  v3 = result;
  v4 = result[7] - 1;
  result[7] = v4;
  if (!v4)
  {
    result = result[5];
    if (result)
    {
      result = (*(*result + 48))(result);
      v3[5] = 0;
      *(v3 + 83) = 0;
    }
  }

  v7 = v3[18];
  v6 = v3 + 18;
  v5 = v7;
  if (v7)
  {
    if (v5 == a2)
    {
LABEL_9:
      *v6 = *(a2 + 168);
    }

    else
    {
      while (1)
      {
        v8 = v5;
        v5 = *(v5 + 168);
        if (!v5)
        {
          break;
        }

        if (v5 == a2)
        {
          v6 = (v8 + 168);
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

BOOL RDQSREngine::PeerExists(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 144);
  do
  {
    v3 = *v2;
    v2 = (*v2 + 168);
  }

  while (v3 != a2 && v3 != 0);
  return v3 != 0;
}

uint64_t RDQSREngine::AddGrammar(void *a1, uint64_t a2)
{
  v6 = a1[14];
  v4 = (a1 + 14);
  v5 = v6;
  v7 = *(v4 - 32);
  *(v4 - 32) = v7 + 1;
  v8 = *(v4 + 8);
  v9 = v8 - v6;
  if (*(v4 - 48) >= ((v8 - v6) >> 4))
  {
    v11 = v9 >> 4;
    v13 = a1[16];
    if (v8 >= v13)
    {
      v15 = v11 + 1;
      if ((v11 + 1) >> 60)
      {
        sub_100017658();
      }

      v16 = v13 - v5;
      if (v16 >> 3 > v15)
      {
        v15 = v16 >> 3;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF0)
      {
        v17 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        sub_100037A08(v4, v17);
      }

      v18 = 16 * v11;
      *v18 = a2;
      *(v18 + 8) = 256;
      *(v18 + 10) = v7;
      *(v18 + 12) = 0;
      v14 = 16 * v11 + 16;
      v19 = a1[14];
      v20 = a1[15] - v19;
      v21 = (16 * v11 - v20);
      memcpy(v21, v19, v20);
      v22 = a1[14];
      a1[14] = v21;
      a1[15] = v14;
      a1[16] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v8 = a2;
      *(v8 + 8) = 256;
      *(v8 + 10) = v7;
      *(v8 + 12) = 0;
      v14 = v8 + 16;
    }

    a1[15] = v14;
  }

  else
  {
    v10 = v5 - 8;
    v11 = -1;
    do
    {
      v12 = *(v10 + 8);
      ++v11;
      v10 += 16;
    }

    while (v12);
    *(v10 - 8) = a2;
    *v10 = 256;
    *(v10 + 2) = v7;
    *(v10 + 4) = 0;
  }

  ++a1[8];
  return v11 | (v7 << 16);
}

void RDQSREngine::RecognizeText(RDQSREngine *this, CFTypeRef cf)
{
  CFRetain(cf);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100033B7C;
  v4[3] = &unk_1000FEF80;
  v4[4] = this;
  v4[5] = cf;
  dispatch_async(gRDServerQueue, v4);
}

void RDQSREngine::DidRecognizeFinalResultString(RDQSREngine *this, const __CFString *a2)
{
  v3 = *(this + 23);
  v4 = *(this + 19);
  v5 = *(this + 20);
  RDQSRResultMatcher::Create();
}

void sub_100033C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 32))(a10);
  }

  _Unwind_Resume(exception_object);
}

id RDQSREngine::SetupRecognition(RDQSREngine *this)
{
  v11[0] = this;
  v11[1] = RDQSREngine::DisposeContextCallback;
  v11[2] = RDQSREngine::DidRecognizePartialResultsCallback;
  v11[3] = RDQSREngine::DidFinishRecognitionWithErrorCallback;
  v11[5] = RDQSREngine::DidRecognizeFinalResultsCallback;
  v11[4] = RDQSREngine::DidGetUtteranceBoundaryCallback;
  v11[6] = RDQSREngine::DidProcessAudioDurationCallback;
  if (*(this + 440) == 1 && *(this + 441) == 1 && (v2 = *(this + 18)) != 0)
  {
    v3 = @"DictationCC";
    while (*(v2 + 206) != 1)
    {
      v2 = *(v2 + 168);
      if (!v2)
      {
        goto LABEL_9;
      }
    }

    v3 = @"SpellCC";
  }

  else
  {
    v3 = @"DictationCC";
  }

LABEL_9:
  *(this + 54) = v3;
  if (*(this + 232) == 1)
  {
    *(this + 233) = 0;
    *buf = this;
    v9 = RDQSREngine::KeywordSpottedCallback;
    v10 = RDQSREngine::KeywordSpotterDidStopCallback;
    __chkstk_darwin(this);
    v7[0] = @"wake_up w EY k <w> uh p <w>";
    v7[1] = @"show_siri sh OH <w> s EE r ee <w>";
    v7[2] = @"open_siri OH p un <w> s EE r ee <w>";
    v7[3] = @"start_listening s t AH r t <w> l IH s un ih ng <w>";
    v4 = CFArrayCreate(kCFAllocatorDefault, v7, 4, &kCFTypeArrayCallBacks);
    *(this + 28) = RDKeywordSpotterInit(v4, buf);
  }

  else if (*(this + 256) == 1)
  {
    *buf = this;
    v9 = RDQSREngine::SpeechStartedCallback;
    v10 = RDQSREngine::SpeechEndedCallback;
    *(this + 31) = RDOSDInit(buf);
  }

  result = RDASRWSpeechRecognizerCreateRecognitionBuffer(*(this + 2), *(this + 19), *(this + 54), 16000, v11);
  *(this + 33) = result;
  *(this + 87) = 1;
  if (!result)
  {
    v6 = RXOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Could not initialize audio buffer", buf, 2u);
    }

    sub_1000352B0(@"Could not initialize audio buffer");
  }

  return result;
}

void RDQSREngine::RemoveGrammar(RDQSREngine *this, unsigned __int16 a2)
{
  v2 = *(this + 14) + 16 * a2;
  *v2 = 0;
  if (__PAIR64__(*(v2 + 9), *(v2 + 8)) == 0x100000001)
  {
    v3 = *(this + 9) - 1;
    *(this + 9) = v3;
    if (!v3)
    {
      RDQSREngine::SetMicState(this, 0, "Last live grammar removed");
    }
  }
}

RDQSREngine *RDQSREngine::GrammarIsLive(RDQSREngine *this, unsigned __int16 a2, int a3)
{
  v3 = *(this + 14) + 16 * a2;
  if (*(v3 + 8) != a3)
  {
    *(v3 + 8) = a3;
    if (*(v3 + 9) == 1)
    {
      v4 = *(this + 9);
      if (a3)
      {
        *(this + 9) = v4 + 1;
        if (!v4)
        {
          v5 = "First grammar went live";
          v6 = 1;
          return RDQSREngine::SetMicState(this, v6, v5);
        }
      }

      else
      {
        v7 = v4 - 1;
        *(this + 9) = v7;
        if (!v7)
        {
          v5 = "Last grammar went dead";
          v6 = 0;
          return RDQSREngine::SetMicState(this, v6, v5);
        }
      }
    }
  }

  return this;
}

void RDQSREngine::CanListen(RDQSREngine *this, RDQSRPeer *a2, char a3)
{
  v5 = *(this + 14);
  v6 = *(this + 15);
  if (a3)
  {
    if (v6 != v5)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(v5 + v7);
        if (v9)
        {
          if (*(v9 + 24) == a2)
          {
            v10 = v5 + v7;
            if ((*(v5 + v7 + 9) & 1) == 0)
            {
              *(v10 + 9) = 1;
              if (*(v10 + 8) == 1)
              {
                v11 = *(this + 9);
                *(this + 9) = v11 + 1;
                if (!v11)
                {
                  RDQSREngine::SetMicState(this, 1, "First grammar is listening");
                  v5 = *(this + 14);
                  v6 = *(this + 15);
                }
              }
            }
          }
        }

        ++v8;
        v7 += 16;
      }

      while (v8 < (v6 - v5) >> 4);
    }
  }

  else
  {
    v12 = v6 - v5;
    if (v6 != v5)
    {
      v13 = 0;
      v14 = 0;
      v15 = v12 >> 4;
      if (v15 <= 1)
      {
        v15 = 1;
      }

      v16 = -v15;
      v17 = v5 + 9;
LABEL_16:
      v18 = (v17 + 16 * v13++);
      do
      {
        v19 = *(v18 - 9);
        if (v19)
        {
          if (*(v19 + 24) == a2 && *v18 == 1)
          {
            *v18 = 0;
            if (*(v18 - 1))
            {
              --*(this + 9);
              v14 = 1;
              if (v16 + v13)
              {
                goto LABEL_16;
              }

              goto LABEL_26;
            }
          }
        }

        ++v13;
        v18 += 16;
      }

      while (v16 + v13 != 1);
      if ((v14 & 1) == 0)
      {
        return;
      }

LABEL_26:
      *(this + 84) = 1;
      v20 = *(this + 5);
      if (v20)
      {
        v21 = *(*v20 + 16);

        v21();
      }
    }
  }
}

void RDQSREngine::FilterProfanity(RDQSREngine *this, int a2)
{
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100034318;
    block[3] = &unk_1000FDCD8;
    block[4] = this;
    if (qword_10010E500 != -1)
    {
      dispatch_once(&qword_10010E500, block);
    }

    v3 = *(this + 53);
    if (!v3)
    {
      v4 = RXOSLog();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *v9 = 0;
      v5 = "Error in filtering profanity";
      v7 = v4;
      v8 = OS_LOG_TYPE_ERROR;
      goto LABEL_10;
    }

    RDASRWSpeechRecognizerSetRecognitionReplacements(*(this + 2), v3);
    v4 = RXOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      v5 = "Successfully filtering profanity";
LABEL_9:
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, v8, v5, v9, 2u);
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    RDASRWSpeechRecognizerSetRecognitionReplacements(*(this + 2), Mutable);
    CFRelease(Mutable);
    v4 = RXOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      v5 = "No profanity filter set";
      goto LABEL_9;
    }
  }

LABEL_11:
}

void sub_100034318(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 416);
  if (v2)
  {
    *(v1 + 424) = RDQSRReplacementDictationaryWithEtiquettes(v2);
  }

  else
  {
    v3 = RXOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error in reading etiquettes file", v4, 2u);
    }
  }
}

void sub_100034398(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 82) == 1 && *(v1 + 86) == 1)
  {
    *(v1 + 86) = 0;
    *(v1 + 176) = 1;
    sub_1000113AC(&v27, "");
    v3 = *(v1 + 112);
    if (*(v1 + 120) != v3)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(v3 + v4);
        if (v6 && *(v6 + 32) && *(v3 + v4 + 8) == 1 && *(v3 + v4 + 9) == 1)
        {
          v7 = *(v1 + 176);
          if (v7 <= *(v6 + 56))
          {
            v7 = *(v6 + 56);
          }

          *(v1 + 176) = v7;
          if ((*(a1 + 40) & 1) != 0 || *(v6 + 48) == 1)
          {
            v8 = RXSignpostLog();
            if (os_signpost_enabled(v8))
            {
              LOWORD(buf.__r_.__value_.__l.__data_) = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Grammar", "Building Grammar", &buf, 2u);
            }

            v9 = RXOSLog();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = *(*(v3 + v4) + 16);
              LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
              *(buf.__r_.__value_.__r.__words + 4) = v10;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Building Grammar %zu", &buf, 0xCu);
            }

            v11 = *(v3 + v4);
            v12 = *(v1 + 160);
            operator new();
          }

          v13 = *(v6 + 64);
          if (v13)
          {
            string = xpc_dictionary_get_string(v13, kRDKeyCategoryID);
            v15 = RXOSLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
              *(buf.__r_.__value_.__r.__words + 4) = string;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Building Grammar for category %s", &buf, 0xCu);
            }

            sub_1000113AC(&buf, string);
            if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v27.__r_.__value_.__l.__size_;
            }

            if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v17 = &v27;
            }

            else
            {
              v17 = v27.__r_.__value_.__r.__words[0];
            }

            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v18 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v18 = buf.__r_.__value_.__l.__size_;
            }

            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_buf = &buf;
            }

            else
            {
              p_buf = buf.__r_.__value_.__r.__words[0];
            }

            if (v18 >= size)
            {
              v20 = size;
            }

            else
            {
              v20 = v18;
            }

            v21 = memcmp(v17, p_buf, v20);
            if (v18 != size || v21)
            {
              std::string::operator=(&v27, &buf);
              v22 = *(v3 + v4);
              v23 = *(v22 + 24);
              v24 = *(v1 + 160);
              RDQSRGrammarBuilder::buildCategoryFst(*(v22 + 64));
            }

            v25 = *(v3 + v4);
            v26 = *(v25 + 64);
            *(v25 + 64) = 0;

            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }
        }

        ++v5;
        v3 = *(v1 + 112);
        v4 += 16;
      }

      while (v5 < (*(v1 + 120) - v3) >> 4);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }
}

void sub_100034A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  a20 = &a22;
  sub_10002F2BC(&a20);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void RDQSREngine::AddTemplatesToUserProfile(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v20 = 0;
    do
    {
      if (*v2 == kRDProfileNonTerminalInline[0])
      {
        v4 = *(a1 + 32);
        RDUserProfile::removeAllWords(v4);
        LOBYTE(v20) = 1;
      }

      else
      {
        v4 = *(a1 + 24);
        BYTE4(v20) = 1;
      }

      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      while (v6 != v5)
      {
        Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        v8 = *v6;
        v9 = v6[1];
        while (v8 != v9)
        {
          v10 = v8;
          if (*(v8 + 23) < 0)
          {
            v10 = *v8;
          }

          v11 = CFStringCreateWithCString(0, v10, 0x8000100u);
          if (v11)
          {
            v12 = v11;
            CFArrayAppendValue(Mutable, v11);
            CFRelease(v12);
          }

          v8 += 48;
        }

        if (Mutable)
        {
          RDUserProfile::addPhraseToUserProfile(v4, Mutable, *v2, *(v2 + 8));
          CFRelease(Mutable);
        }

        v6 += 3;
      }

      v2 += 40;
    }

    while (v2 != v3);
    if (*a2 != a2[1])
    {
      if ((v20 & 0x100000000) != 0)
      {
        v13 = RDUserProfile::copyDataProfile(*(a1 + 24));
        if (v13)
        {
          v14 = v13;
          v15 = RXOSLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updating AOT LME", buf, 2u);
          }

          RDASRWSpeechRecognizerUpdateUserProfileData(*(a1 + 16), v14);
          CFRelease(v14);
        }
      }

      if (v20)
      {
        v16 = RDUserProfile::copyDataProfile(*(a1 + 32));
        if (v16)
        {
          v17 = v16;
          v18 = RXOSLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v22 = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updating Inline LME", v22, 2u);
          }

          RDASRWSpeechRecognizerUpdateJitProfileData(*(a1 + 16), v17);
          CFRelease(v17);
        }
      }
    }
  }
}

void RDQSREngine::DidRecognizePartialResultsCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = gRDServerQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100034E60;
  v6[3] = &unk_1000FEFC8;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_async(v4, v6);
}

void RDQSREngine::DidRecognizePartialResults(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_os_feature_enabled_impl())
  {
    if (*(a1 + 87) == 1)
    {
      RDQSREngine::BeginUtt(a1);
      *(a1 + 87) = 0;
    }

    v4 = *(a1 + 152);
    [v3 tokenSausage];
    objc_claimAutoreleasedReturnValue();
    [v3 nBestResults];
    objc_claimAutoreleasedReturnValue();
    [v3 firstBestResult];
    objc_claimAutoreleasedReturnValue();
    v5 = *(a1 + 176);
    v6 = *(a1 + 184);
    v7 = *(a1 + 160);
    v8 = *(a1 + 432);
    RDQSRResultMatcher::Create();
  }
}

void sub_100035080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 32))(a10);
  }

  _Unwind_Resume(a1);
}

void RDQSREngine::DidFinishRecognitionWithErrorCallback(RDQSREngine *this, CFErrorRef err, __CFError *a3)
{
  if (err)
  {
    Domain = CFErrorGetDomain(err);
    if (Domain)
    {
      v6 = Domain;
      if (CFStringCompare(Domain, @"EARErrorDomain", 0) == kCFCompareEqualTo && !CFErrorGetCode(err))
      {
        v7 = RXOSLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "EAR recognition failed with error that can cause a hang", buf, 2u);
        }

        sub_1000352B0(@"EAR recognition failed with error that can cause a hang");
      }

      if (CFStringCompare(v6, @"SpeechAPIErrorDomain", 0) == kCFCompareEqualTo && !CFErrorGetCode(err))
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100035330;
        block[3] = &unk_1000FDCD8;
        block[4] = this;
        dispatch_async(gRDServerQueue, block);
      }
    }

    CFRetain(err);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100035340;
  v8[3] = &unk_1000FEF80;
  v8[4] = this;
  v8[5] = err;
  dispatch_async(gRDServerQueue, v8);
}

void sub_1000352B0(uint64_t a1)
{
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Terminating to restart EAR (%{public}@)", &v3, 0xCu);
  }

  exit(0);
}

void RDQSREngine::DidFinishRecognitionWithError(RDQSREngine *this, CFStringRef cf)
{
  if (cf)
  {
    cf = CFCopyDescription(cf);
  }

  RDString::RDString(__p, cf, 1);
  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = __p;
    if (v7 < 0)
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DidFinishRecognitionWithError: %s\n", buf, 0xCu);
  }

  *(this + 87) = 1;
  if ((*(this + 48) & 1) == 0)
  {
    for (i = *(this + 18); i; i = *(i + 21))
    {
      RDQSRPeer::ReachedEndofAudioFile(i);
    }
  }

  RDQSREngine::EndUtt(this);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100035460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RDQSREngine::DidGetUtteranceBoundaryCallback(RDQSREngine *this, void *a2, uint64_t a3, uint64_t a4)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003550C;
  v4[3] = &unk_1000FEFE8;
  v4[4] = this;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
  dispatch_async(gRDServerQueue, v4);
}

__n128 sub_10003550C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  result = *(a1 + 40);
  *(v1 + 88) = result;
  *(v1 + 104) = v2;
  return result;
}

void RDQSREngine::DidRecognizeFinalResultsCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = RXOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Got the result", buf, 2u);
  }

  v5 = RXSignpostLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Got the result", "", buf, 2u);
  }

  v6 = gRDServerQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003567C;
  v8[3] = &unk_1000FEFC8;
  v9 = v3;
  v10 = a1;
  v7 = v3;
  dispatch_async(v6, v8);
}

void RDQSREngine::DidRecognizeFinalResults(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 232) == 1)
  {
    *(a1 + 233) = 0;
  }

  if (RXAutomationModeResult() || RXAutomationModeSynthesis() || RXAutomationModeFileName())
  {
    RDQSREngine::ResetRecognition(a1);
  }

  v4 = *(a1 + 152);
  [v3 tokenSausage];
  objc_claimAutoreleasedReturnValue();
  [v3 nBestResults];
  objc_claimAutoreleasedReturnValue();
  [v3 firstBestResult];
  objc_claimAutoreleasedReturnValue();
  v5 = *(a1 + 176);
  v6 = *(a1 + 184);
  v7 = *(a1 + 160);
  v8 = *(a1 + 432);
  RDQSRResultMatcher::Create();
}

void sub_1000357B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1000C9324(a10);
  }

  _Unwind_Resume(a1);
}

void RDQSREngine::DidProcessAudioDurationCallback(RDQSREngine *this, void *a2, double a3)
{
  if (!RXAutomationModeResult() && !RXAutomationModeSynthesis() && !RXAutomationModeFileName())
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000358B0;
    v5[3] = &unk_1000FEF80;
    v5[4] = this;
    *&v5[5] = a3;
    dispatch_async(gRDServerQueue, v5);
  }
}

void RDQSREngine::DidProcessAudioDuration(RDQSREngine *this, double a2)
{
  v4 = rd_time_util::durationInMilliSec(*(this + 51));
  LOBYTE(v5) = *(this + 137);
  if ((v4 / 1000) - a2 > v5)
  {
    if ((*(this + 136) | 2) != 3)
    {
      RDQSREngine::ResetRecognition(this);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.SpeechRecognitionCore.RecognitionReset", 0, 0, 0);
  }
}

void RDQSREngine::BeginUtt(RDQSREngine *this)
{
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BeginUtt\n", v4, 2u);
  }

  *(this + 85) = 1;
  *(this + 21) = dispatch_time(0, 0);
  for (i = *(this + 18); i; i = *(i + 21))
  {
    RDQSRPeer::BeginUtt(i);
  }
}

uint64_t RDQSREngine::PartialResultMightMatch(uint64_t a1, uint64_t a2)
{
  v4 = RXSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Result", "Started Result processing", buf, 2u);
  }

  __p = 0;
  v21 = 0;
  v22 = 0;
  memset(v19, 0, sizeof(v19));
  v5 = *(a1 + 112);
  v6 = *(a1 + 120);
  while (v5 != v6)
  {
    v7 = *v5;
    if (*v5 && v7[2].i64[0] && v7[2].i64[1] && *(v5 + 8) == 1 && *(v5 + 9) == 1)
    {
      sub_100036D44(&__p, v5);
      v8 = (*v5)[1].i64[1] + 88;
      v9 = (*v5)[3].i16[1];
      v10 = (*v5)[3].i8[4];
      v14 = (*v5)[2];
      v11 = v14.i64[0];
      *buf = vextq_s8(v14, v14, 8uLL);
      v16 = v8;
      v17 = v9;
      v18 = v10;
      sub_100036E18(v19, buf);
    }

    v5 += 2;
  }

  v12 = (*(*a2 + 8))(a2, v19);
  *buf = v19;
  sub_100037ACC(buf);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_100035BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  a11 = &a15;
  sub_100037ACC(&a11);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void RDQSREngine::MatchResult(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = RXSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Result", "Started Result processing", buf, 2u);
  }

  __p = 0;
  v47 = 0;
  v48 = 0;
  memset(v45, 0, sizeof(v45));
  v7 = *(a1 + 112);
  for (i = *(a1 + 120); v7 != i; v7 += 2)
  {
    v9 = *v7;
    if (*v7)
    {
      v10 = v9[1].i64[1];
      if (!v10)
      {
        goto LABEL_12;
      }

      v11 = RDQSRPeer::CopyCommandsInGrammar(v10, v9[2].i64[0]);
      v12 = RXOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(v7 + 8);
        v14 = *(v7 + 9);
        v15 = (*v7)->i64[0];
        v16 = (*v7)[1].i64[0];
        *buf = 67110146;
        *&buf[4] = v13;
        buf[8] = 0;
        buf[9] = 4;
        *&buf[10] = v14;
        *&buf[14] = 2048;
        v51 = v15;
        v52 = 2048;
        v53 = v16;
        v54 = 2112;
        v55 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Match Result:: isLive = %d isActive = %d lmid = %llu grammarID = %zu Commands = %@", buf, 0x2Cu);
      }

      CFRelease(v11);
      v9 = *v7;
      if (*v7)
      {
LABEL_12:
        if (v9[2].i64[0] && v9[2].i64[1] && *(v7 + 8) == 1 && *(v7 + 9) == 1)
        {
          sub_100036D44(&__p, v7);
          v17 = (*v7)[1].i64[1] + 88;
          v18 = (*v7)[3].i16[1];
          v19 = (*v7)[3].i8[4];
          v44 = (*v7)[2];
          v20 = v44.i64[0];
          *buf = vextq_s8(v44, v44, 8uLL);
          v51 = v17;
          v52 = v18;
          LOBYTE(v53) = v19;
          sub_100036E18(v45, buf);
        }
      }
    }
  }

  (**a2)(buf, a2, v45);
  v21 = 126 - 2 * __clz((*&buf[8] - *buf) >> 4);
  if (*&buf[8] == *buf)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  sub_100037D84(*buf, *&buf[8], v22, 1);
  v23 = *buf;
  if (*buf != *&buf[8])
  {
    v24 = 0;
    while (1)
    {
      GrammarIndex = RDQSRResultObject::getGrammarIndex(v23);
      v26 = RDQSRResultObject::getResultModel(v23);
      v27 = v26 == 0;

      if (v27)
      {
        if (GrammarIndex != -1)
        {
          v30 = GrammarIndex;
          v31 = *(__p + GrammarIndex);
LABEL_30:
          RDQSRPeer::ServerResponse(*(v31 + 24), 0, v31, v5);
          v34 = RXOSLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *v49 = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Even with the winner, we have no response - sending null to client\n", v49, 2u);
          }

          v29 = 0;
LABEL_33:
          v35 = __p + 8 * v30;
          v36 = v47 - (v35 + 8);
          if (v47 != v35 + 8)
          {
            memmove(__p + 8 * v30, v35 + 8, v47 - (v35 + 8));
          }

          v47 = &v35[v36];
          goto LABEL_36;
        }

        v29 = 0;
      }

      else
      {
        v28 = RDQSRResultObject::getResultModel(v23);
        v29 = v28;
        if (GrammarIndex != -1)
        {
          v30 = GrammarIndex;
          v31 = *(__p + GrammarIndex);
          if (!v28)
          {
            goto LABEL_30;
          }

          [v5 setUtteranceID:*(a1 + 168)];
          RDQSRPeer::EndPhrase(*(v31 + 24), 0, v31, v29, v5);
          v32 = RXOSLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = *(v31 + 16);
            *v49 = 134217984;
            *&v49[4] = v33;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Sending message to client %zu", v49, 0xCu);
          }

          if (([v5 isPartialResult] & 1) == 0)
          {
            *(a1 + 448) = (*(*a2 + 16))(a2);
          }

          v24 = 1;
          goto LABEL_33;
        }
      }

LABEL_36:

      v23 = (v23 + 16);
      if (v23 == *&buf[8])
      {
        goto LABEL_40;
      }
    }
  }

  v24 = 0;
LABEL_40:
  if (([v5 isPartialResult] & 1) == 0)
  {
    v37 = __p;
    v38 = v47;
    if (__p != v47)
    {
      do
      {
        v39 = *v37;
        RDQSRPeer::ServerResponse(*(*v37 + 24), 0, *v37, v5);
        v40 = RXOSLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = *(v39 + 16);
          *v49 = 134217984;
          *&v49[4] = v41;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Sending null to client %zu", v49, 0xCu);
        }

        ++v37;
      }

      while (v37 != v38);
    }

    v42 = RXSignpostLog();
    if (os_signpost_enabled(v42))
    {
      *v49 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Result", "Done Result processing", v49, 2u);
    }

    if (v24)
    {
      if (RDQSREngine::ShouldDonateSpeech(a1))
      {
        RDQSREngine::DonateSpeech(a1);
      }
    }

    else
    {
      v43 = RXOSLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "EndPhrase did not match any grammars\n", v49, 2u);
      }
    }

    *(a1 + 87) = 1;
    RDQSREngine::EndUtt(a1);
  }

  *v49 = buf;
  sub_1000186EC(v49);
  *buf = v45;
  sub_100037ACC(buf);
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }
}

void sub_100036210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char **a19, uint64_t a20, char *a21, uint64_t a22)
{
  a19 = &a21;
  sub_1000186EC(&a19);
  a21 = &a13;
  sub_100037ACC(&a21);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void RDQSREngine::EndUtt(RDQSREngine *this)
{
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 9);
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "EndUtt (%u live)\n", v6, 8u);
  }

  pthread_mutex_lock((this + 272));
  v4 = *(this + 33);
  if (v4)
  {
    RDASRWSpeechRecognitionAudioBufferNewUtteranceBegins(v4);
  }

  pthread_mutex_unlock((this + 272));
  *(this + 85) = 0;
  for (i = *(this + 18); i; i = *(i + 21))
  {
    RDQSRPeer::EndUtt(i);
  }

  if (*(this + 84))
  {
    RDQSREngine::SetMicState(this, 0, "Deferred off");
  }
}

void RDQSREngine::SpeechStartedCallback(RDQSREngine *this, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036430;
  block[3] = &unk_1000FDCD8;
  block[4] = this;
  dispatch_async(gRDServerQueue, block);
}

uint64_t RDQSREngine::SpeechStarted(RDQSREngine *this)
{
  v1 = __chkstk_darwin(this);
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "speech started", v6, 2u);
  }

  *(v1 + 408) = rd_time_util::now();
  pthread_mutex_lock((v1 + 272));
  do
  {
    v3 = RDQSRCircularBuffer<short>::read(*(v1 + 200), 0x800uLL, v6);
    v4 = *(v1 + 264);
    if (v4)
    {
      RDASRWSpeechRecognitionAudioBufferAddAudioSamples(v4, v6, v3);
    }
  }

  while (v3 > 0x7FF);
  result = pthread_mutex_unlock((v1 + 272));
  *(v1 + 257) = 1;
  return result;
}

void RDQSREngine::SpeechEndedCallback(RDQSREngine *this, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000365C0;
  block[3] = &unk_1000FDCD8;
  block[4] = this;
  dispatch_async(gRDServerQueue, block);
}

void RDQSREngine::SpeechEnded(RDQSREngine *this)
{
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "speech ended", v3, 2u);
  }

  *(this + 257) = 0;
}

void RDQSREngine::KeywordSpottedCallback(RDQSREngine *this, void *a2, const __CFString *a3, double a4)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000366B8;
  block[3] = &unk_1000FDE58;
  block[4] = this;
  block[5] = a2;
  *&block[6] = a4;
  dispatch_async(gRDServerQueue, block);
}

uint64_t RDQSREngine::KeywordSpotted(RDQSREngine *this, const __CFString *a2, double a3)
{
  v3 = __chkstk_darwin(this);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v9 = RXOSLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v7;
    v15 = 2048;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "keyword spotted == %@, cost=%f", &v13, 0x16u);
  }

  CFRelease(v7);
  *(v8 + 240) = rd_time_util::now();
  pthread_mutex_lock((v8 + 272));
  do
  {
    v10 = RDQSRCircularBuffer<short>::read(*(v8 + 200), 0x800uLL, &v13);
    v11 = *(v8 + 264);
    if (v11)
    {
      RDASRWSpeechRecognitionAudioBufferAddAudioSamples(v11, &v13, v10);
    }
  }

  while (v10 > 0x7FF);
  result = pthread_mutex_unlock((v8 + 272));
  *(v8 + 233) = 1;
  return result;
}

void RDQSREngine::KeywordSpotterDidStopCallback(RDQSREngine *this, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036880;
  block[3] = &unk_1000FDCD8;
  block[4] = this;
  dispatch_async(gRDServerQueue, block);
}

void RDQSREngine::KeywordSpotterDidStop(RDQSREngine *this)
{
  v1 = RXOSLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "keyword spotter stopped", v2, 2u);
  }
}

void RDQSREngine::SetResetRecognitionMode(RDQSREngine *this, unsigned __int8 a2)
{
  v4 = *(this + 136);
  *(this + 256) = 0;
  *(this + 232) = 0;
  *(this + 136) = a2;
  v5 = RXOSLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2 <= 1u)
  {
    if (!a2)
    {
      if (v6)
      {
        LOWORD(v13[0]) = 0;
        v7 = "Setting recognition reset mode to default...";
        goto LABEL_20;
      }

LABEL_21:

      goto LABEL_22;
    }

    if (a2 == 1)
    {
      if (v6)
      {
        LOWORD(v13[0]) = 0;
        v7 = "Setting recognition reset mode to dictation...";
LABEL_20:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, v13, 2u);
        goto LABEL_21;
      }

      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (a2 == 2)
  {
    if (v6)
    {
      LOWORD(v13[0]) = 0;
      v7 = "Setting recognition reset mode to commands...";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (a2 != 3)
  {
LABEL_13:
    if (v6)
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Incorrect reset mode..Switching to default", v13, 2u);
    }

    *(this + 136) = 0;
    goto LABEL_22;
  }

  if (v6)
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting recognition reset mode to sleep...", v13, 2u);
  }

  if (RXIsKeywordSpotterEnabled() && (v8 = *(this + 19), RXIsLocaleSupportingKeywordSpotter()))
  {
    *(this + 232) = 1;
  }

  else if (RXIsSpeechDetectorEnabled())
  {
    v12 = *(this + 19);
    if (RXIsLocaleSupportingOndeviceSpeechDetection())
    {
      *(this + 256) = 1;
    }
  }

LABEL_22:
  if (RXIsKeywordSpotterEnabled() && (v9 = *(this + 19), RXIsLocaleSupportingKeywordSpotter()) || RXIsSpeechDetectorEnabled() && (v10 = *(this + 19), RXIsLocaleSupportingOndeviceSpeechDetection()))
  {
    v11 = *(this + 136);
    if (v4 != v11 && (v4 == 3 || v11 == 3))
    {
      RDQSREngine::ResetRecognition(this);
    }
  }

  *(this + 86) = 1;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100034398;
  v13[3] = &unk_1000FEFA0;
  v13[4] = this;
  v14 = 0;
  dispatch_async(gRDServerQueue, v13);
}

void RDQSREngine::SaveUserProfileToFile(void **this, const char *__s)
{
  if (*__s)
  {
    v4 = strlen(__s);
    v5 = &v18 - ((__chkstk_darwin(v4) + 115) & 0xFFFFFFFFFFFFFFF0);
    bzero(v5, v4 + 100);
    v6 = strncpy(v5, __s, v4);
    strcpy(&v5[strlen(v6)], "EngineUserProfile");
    v7 = RDASRWSpeechRecognizerCopyUserProfileData(this[2]);
    if (v7)
    {
      v8 = v7;
      v9 = fopen(v5, "w");
      BytePtr = CFDataGetBytePtr(v8);
      Length = CFDataGetLength(v8);
      fwrite(BytePtr, 1uLL, Length, v9);
      fclose(v9);
      CFRelease(v8);
    }

    __chkstk_darwin(v7);
    bzero(&v18 - ((v4 + 115) & 0xFFFFFFFFFFFFFFF0), v4 + 100);
    v12 = strncpy(&v18 - ((v4 + 115) & 0xFFFFFFFFFFFFFFF0), __s, v4);
    strcpy(&v18 + strlen(v12) - ((v4 + 115) & 0xFFFFFFFFFFFFFFF0), "EngineJitProfile");
    v13 = RDASRWSpeechRecognizerCopyJitProfileData(this[2]);
    if (v13)
    {
      v14 = v13;
      v15 = fopen(&v18 - ((v4 + 115) & 0xFFFFFFFFFFFFFFF0), "w");
      v16 = CFDataGetBytePtr(v14);
      v17 = CFDataGetLength(v14);
      fwrite(v16, 1uLL, v17, v15);
      fclose(v15);
      CFRelease(v14);
    }
  }
}

void sub_100036D44(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100017658();
    }

    v8 = v4 - *a1;
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

    if (v10)
    {
      sub_100017670(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_100036E18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100037B54(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(a2 + 8) = 0;
    *v3 = v4;
    v5 = *(a2 + 16);
    *(v3 + 23) = *(a2 + 23);
    *(v3 + 16) = v5;
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

void RDQSREngine::DonateSpeech(RDQSREngine *this)
{
  if (*(this + 10) == 1 && RXIsAudioDonationOptedIn())
  {
    *this = RDSpeechDonationInit(@"VoiceControl", @"somethingunique", *(this + 19), *(this + 54));
  }

  pthread_mutex_lock((this + 336));
  v2 = *(this + 12) - *(this + 11);
  v3 = RDQSRCircularBuffer<short>::totalFramesWritten(*(this + 26));
  v4 = v3 - *(this + 13);
  v5 = RXOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(this + 11);
    v7 = *(this + 12);
    v8 = *(this + 13);
    *buf = 134219264;
    v19 = v6;
    v20 = 2048;
    v21 = v7;
    v22 = 2048;
    v23 = v2;
    v24 = 2048;
    v25 = v8;
    v26 = 2048;
    v27 = v3;
    v28 = 2048;
    v29 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SpeechDonation: Start Sample Number = %lld, end Sample number = %lld, samples in the utterance = %lld, totalSamplesSentToASR = %lld,  totalSamplesWritten = %zu, sample overwritten by next utterance = %zu", buf, 0x3Eu);
  }

  if (v4 >> 7 < 0x271)
  {
    v10 = 80000;
    if (v2 < 80000)
    {
      v10 = v2;
    }

    if (v10 >= 80000 - v4)
    {
      v11 = 80000 - v4;
    }

    else
    {
      v11 = v10;
    }

    v12 = RDQSRCircularBuffer<short>::seekBack(*(this + 26), v11 + v4 + *(this + 13) - *(this + 12));
    __chkstk_darwin(v12);
    v14 = &buf[-v13];
    v15 = RDQSRCircularBuffer<short>::read(*(this + 26), v11, &buf[-v13]);
    v16 = RXOSLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SpeechDonation: Samples donated = %zu", buf, 0xCu);
    }

    v17 = *this;
    if (*this)
    {
      RDspeechDonationAddAudioSamples(v17, v14, v11);
      v17 = *this;
    }

    RDspeechDonationDonateAudioForTranscription(v17, *(this + 56), *(this + 216));
  }

  else
  {
    v9 = RXOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SpeechDonation: donation utterance has been overwritten in the circular buffer, don't donate", buf, 2u);
    }
  }

  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  pthread_mutex_unlock((this + 336));
  if (*this)
  {
    CFRelease(*this);
    *this = 0;
  }
}

uint64_t sub_1000371A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  v3 = *(a1 + 40);
  v5[0] = off_1000FF0D0;
  v5[1] = v1;
  LOBYTE(v6[0]) = v3;
  v6[1] = v5;
  memset(v6 + 1, 0, 7);
  RDUserProfile::updateUserProfileWithPersonalData(v2, 1, v5);
  return sub_1000377A4(v5);
}

void sub_100037244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000377A4(va);
  _Unwind_Resume(a1);
}

void RDQSREngine::AddOtherContextData(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = RXOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Adding other context", buf, 2u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = sub_1000C0D88(*(a1 + 160), *(*(&v11 + 1) + 8 * v8));
        if (v9)
        {
          RDUserProfile::addWordCombinations(*(a1 + 32), v9, kRDProfileNonTerminalInline[0], kRDProfileWordTagJustInTime[0]);
          CFRelease(v9);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = RDUserProfile::copyDataProfile(*(a1 + 32));
  if (v10)
  {
    RDASRWSpeechRecognizerUpdateJitProfileData(*(a1 + 16), v10);
    CFRelease(v10);
  }
}

void sub_100037440(uint64_t a1)
{
  v2 = [VCLog logForCategory:@"vocabulary"];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 32) + 8) + 24);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "RDASREngine::CustomVocabularyChanged() engine: %p", &v4, 0xCu);
  }

  RDQSREngine::LoadCustomVocabulary(*(*(*(a1 + 32) + 8) + 24), 0);
}

uint64_t *sub_100037514(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v5 = (v2 + 32);
    sub_10002A0F4(&v5);
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator delete();
  }

  return result;
}

id **sub_1000375CC(id ***a1, id **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    RDUserProfile::~RDUserProfile(result);

    operator delete();
  }

  return result;
}

CFTypeRef *sub_100037618(CFTypeRef **a1, CFTypeRef *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1000B98C8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1000376D4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1000FF040;
  a2[1] = v2;
  return result;
}

void sub_100037700(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = *(a1 + 8);
    v4 = *(v3 + 16);
    v5 = RDUserProfile::copyDataProfile(*(v3 + 24));
    RDASRWSpeechRecognizerUpdateUserProfileData(v4, v5);

    RDQSREngine::UpdateUserProfileCache(v3);
  }
}

uint64_t sub_100037758(uint64_t a1, uint64_t a2)
{
  if (sub_1000179F4(a2, &off_1000FF0B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000377A4(uint64_t a1)
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

void sub_100037824(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (*a2)
    {
      operator delete[]();
    }

    *a2 = 0;

    operator delete();
  }
}

void *sub_100037890(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100037908(result, a2);
  }

  return result;
}

void sub_1000378EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100037908(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_1000222A0(a1, a2);
  }

  sub_100017658();
}

RDQSRAudioFileLogger *sub_100037940(RDQSRAudioFileLogger **a1, RDQSRAudioFileLogger *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    RDQSRAudioFileLogger::~RDQSRAudioFileLogger(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10003798C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100037908(result, a4);
  }

  return result;
}

void sub_1000379EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100037A08(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100016D60();
}

void sub_100037A50(void **a1)
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
        v5 = v3 - 40;
        v6 = (v3 - 24);
        sub_100016FD4(&v6);
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100037ACC(void ***a1)
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
        v6 = v4 - 4;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_100037B54(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_100017658();
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

  v20 = a1;
  if (v7)
  {
    sub_100037C70(a1, v7);
  }

  v8 = 32 * v2;
  v17 = 0;
  v18 = 32 * v2;
  *(&v19 + 1) = 0;
  v9 = *a2;
  *(a2 + 1) = 0;
  *v8 = v9;
  v10 = *(a2 + 2);
  *(v8 + 23) = *(a2 + 23);
  *(v8 + 16) = v10;
  *&v19 = 32 * v2 + 32;
  v11 = *(a1 + 8);
  v12 = 32 * v2 + *a1 - v11;
  sub_100037CB8(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_100037D30(&v17);
  return v16;
}

void sub_100037C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100037D30(va);
  _Unwind_Resume(a1);
}

void sub_100037C70(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100016D60();
}

void sub_100037CB8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v6 + 1) = 0;
      *a4 = v7;
      v8 = *(v6 + 2);
      *(a4 + 23) = *(v6 + 23);
      *(a4 + 16) = v8;
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    while (v5 != a3)
    {

      v5 += 4;
    }
  }
}

uint64_t sub_100037D30(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100037D84(RDQSRResultObject *a1, RDQSRResultObject *a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = a1;
  v86 = a2;
  v87 = a1;
  while (1)
  {
    v8 = (v6 - v7) >> 4;
    v9 = v8 - 2;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:
          v86 = (v6 - 16);
          sub_100038750(v7, v7 + 2, (v6 - 16));
          return;
        case 4:
          v86 = (v6 - 16);
          sub_100038844(v7, (v7 + 2), (v7 + 4), v6 - 16);
          return;
        case 5:
          v86 = (v6 - 16);
          sub_100038904(v7, (v7 + 2), (v7 + 4), (v7 + 6), v6 - 16);
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v86 = (v6 - 16);
        GrammarIndex = RDQSRResultObject::getGrammarIndex((v6 - 16));
        v40 = RDQSRResultObject::getGrammarIndex(v7);
        if (GrammarIndex > v40)
        {
          sub_1000386E4(&v87, &v86);
        }

        return;
      }
    }

    if (v8 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v7 != v6)
      {
        v85 = v6;
        v52 = v9 >> 1;
        v53 = v9 >> 1;
        do
        {
          v54 = v53;
          if (v52 >= v53)
          {
            v55 = (2 * v53) | 1;
            v56 = &v7[2 * v55];
            if (2 * v53 + 2 < v8)
            {
              v57 = RDQSRResultObject::getGrammarIndex(&v7[2 * v55]);
              if (v57 > RDQSRResultObject::getGrammarIndex((v56 + 16)))
              {
                v56 += 16;
                v55 = 2 * v54 + 2;
              }
            }

            v58 = &v7[2 * v54];
            v59 = RDQSRResultObject::getGrammarIndex(v56);
            if (v59 <= RDQSRResultObject::getGrammarIndex(v58))
            {
              RDQSRResultObject::RDQSRResultObject(v90, &v7[2 * v54]);
              do
              {
                v60 = v56;
                RDQSRResultObject::operator=(v58, v56);
                if (v52 < v55)
                {
                  break;
                }

                v61 = (2 * v55) | 1;
                v56 = &v7[2 * v61];
                v55 = 2 * v55 + 2;
                if (v55 >= v8)
                {
                  v55 = v61;
                }

                else
                {
                  v62 = RDQSRResultObject::getGrammarIndex(&v7[2 * v61]);
                  if (v62 <= RDQSRResultObject::getGrammarIndex((v56 + 16)))
                  {
                    v55 = v61;
                  }

                  else
                  {
                    v56 += 16;
                  }
                }

                v63 = RDQSRResultObject::getGrammarIndex(v56);
                v58 = v60;
              }

              while (v63 <= RDQSRResultObject::getGrammarIndex(v90));
              RDQSRResultObject::operator=(v60, v90);
              RDQSRResultObject::~RDQSRResultObject(v90);
            }
          }

          v53 = v54 - 1;
        }

        while (v54);
        v64 = v85;
        do
        {
          v65 = v64;
          RDQSRResultObject::RDQSRResultObject(v88, v7);
          v66 = 0;
          v67 = v7;
          do
          {
            v68 = v67 + 16 * v66;
            v69 = (v68 + 16);
            v70 = 2 * v66;
            v66 = (2 * v66) | 1;
            v71 = v70 + 2;
            if (v70 + 2 < v8)
            {
              v72 = RDQSRResultObject::getGrammarIndex((v68 + 16));
              v73 = (v68 + 32);
              if (v72 > RDQSRResultObject::getGrammarIndex(v73))
              {
                v69 = v73;
                v66 = v71;
              }
            }

            RDQSRResultObject::operator=(v67, v69);
            v67 = v69;
          }

          while (v66 <= ((v8 - 2) >> 1));
          v64 = (v65 - 16);
          if (v69 == (v65 - 16))
          {
            RDQSRResultObject::operator=(v69, v88);
          }

          else
          {
            RDQSRResultObject::operator=(v69, v65 - 16);
            RDQSRResultObject::operator=(v65 - 16, v88);
            v74 = (v69 - v7 + 16) >> 4;
            v75 = v74 < 2;
            v76 = v74 - 2;
            if (!v75)
            {
              v77 = v76 >> 1;
              v78 = &v7[2 * (v76 >> 1)];
              v79 = RDQSRResultObject::getGrammarIndex(v78);
              if (v79 > RDQSRResultObject::getGrammarIndex(v69))
              {
                RDQSRResultObject::RDQSRResultObject(v90, v69);
                do
                {
                  v80 = v78;
                  RDQSRResultObject::operator=(v69, v78);
                  if (!v77)
                  {
                    break;
                  }

                  v77 = (v77 - 1) >> 1;
                  v78 = &v7[2 * v77];
                  v81 = RDQSRResultObject::getGrammarIndex(v78);
                  v69 = v80;
                }

                while (v81 > RDQSRResultObject::getGrammarIndex(v90));
                RDQSRResultObject::operator=(v80, v90);
                RDQSRResultObject::~RDQSRResultObject(v90);
              }
            }
          }

          RDQSRResultObject::~RDQSRResultObject(v88);
          v75 = v8-- <= 2;
        }

        while (!v75);
      }

      return;
    }

    v10 = (v6 - 16);
    if (v8 < 0x81)
    {
      sub_100038750(&v7[2 * (v8 >> 1)], v7, v10);
      v11 = v87;
    }

    else
    {
      sub_100038750(v7, &v7[2 * (v8 >> 1)], v10);
      v11 = v87;
      v12 = (v87 + 16 * (v8 >> 1));
      sub_100038750(v87 + 2, v12 - 2, (v86 - 32));
      sub_100038750(v87 + 4, v12 + 2, (v86 - 48));
      sub_100038750(v12 - 2, v12, (v12 + 2));
      RDQSRResultObject::RDQSRResultObject(v90, v87);
      RDQSRResultObject::operator=(v87, v12);
      RDQSRResultObject::operator=(v12, v90);
      RDQSRResultObject::~RDQSRResultObject(v90);
    }

    --a3;
    if (a4)
    {
      v13 = v86;
    }

    else
    {
      v14 = RDQSRResultObject::getGrammarIndex((v11 - 2));
      v13 = v86;
      if (v14 <= RDQSRResultObject::getGrammarIndex(v11))
      {
        v88[0] = v11;
        v89 = v86;
        RDQSRResultObject::RDQSRResultObject(v90, v11);
        v26 = RDQSRResultObject::getGrammarIndex(v90);
        if (v26 <= RDQSRResultObject::getGrammarIndex((v86 - 16)))
        {
          v29 = v11 + 2;
          do
          {
            v27 = v29;
            v88[0] = v29;
            if (v29 >= v89)
            {
              break;
            }

            v30 = RDQSRResultObject::getGrammarIndex(v90);
            v31 = RDQSRResultObject::getGrammarIndex(v27);
            v29 = (v27 + 16);
          }

          while (v30 <= v31);
        }

        else
        {
          v27 = v11;
          do
          {
            v27 = (v27 + 16);
            v88[0] = v27;
            v28 = RDQSRResultObject::getGrammarIndex(v90);
          }

          while (v28 <= RDQSRResultObject::getGrammarIndex(v27));
        }

        v32 = v89;
        if (v27 < v89)
        {
          do
          {
            v32 = (v32 - 16);
            v89 = v32;
            v33 = RDQSRResultObject::getGrammarIndex(v90);
          }

          while (v33 > RDQSRResultObject::getGrammarIndex(v32));
          v27 = v88[0];
        }

        if (v27 < v32)
        {
          do
          {
            sub_1000386E4(v88, &v89);
            do
            {
              v88[0] += 2;
              v34 = v88[0];
              v35 = RDQSRResultObject::getGrammarIndex(v90);
            }

            while (v35 <= RDQSRResultObject::getGrammarIndex(v34));
            do
            {
              v89 -= 2;
              v36 = v89;
              v37 = RDQSRResultObject::getGrammarIndex(v90);
            }

            while (v37 > RDQSRResultObject::getGrammarIndex(v36));
            v27 = v88[0];
          }

          while (v88[0] < v89);
        }

        v38 = v27 - 16;
        if (v38 != v11)
        {
          RDQSRResultObject::operator=(v11, v38);
        }

        RDQSRResultObject::operator=(v38, v90);
        v7 = v88[0];
        RDQSRResultObject::~RDQSRResultObject(v90);
        goto LABEL_58;
      }
    }

    v89 = v13;
    RDQSRResultObject::RDQSRResultObject(v90, v11);
    v15 = 0;
    do
    {
      v88[0] = &v11[v15 + 2];
      v16 = RDQSRResultObject::getGrammarIndex(v88[0]);
      v15 += 2;
    }

    while (v16 > RDQSRResultObject::getGrammarIndex(v90));
    v17 = v89;
    if (v15 == 2)
    {
      v20 = v11 + 2;
      do
      {
        if (v20 >= v17)
        {
          break;
        }

        v17 = (v17 - 16);
        v89 = v17;
        v21 = RDQSRResultObject::getGrammarIndex(v17);
      }

      while (v21 <= RDQSRResultObject::getGrammarIndex(v90));
    }

    else
    {
      v18 = (v89 - 2);
      do
      {
        v89 = v18;
        v19 = RDQSRResultObject::getGrammarIndex(v18);
        v18 = (v18 - 16);
      }

      while (v19 <= RDQSRResultObject::getGrammarIndex(v90));
      v20 = v88[0];
    }

    v22 = v89;
    v7 = v20;
    if (v20 < v89)
    {
      do
      {
        sub_1000386E4(v88, &v89);
        do
        {
          v88[0] += 2;
          v23 = RDQSRResultObject::getGrammarIndex(v88[0]);
        }

        while (v23 > RDQSRResultObject::getGrammarIndex(v90));
        do
        {
          v89 -= 2;
          v24 = RDQSRResultObject::getGrammarIndex(v89);
        }

        while (v24 <= RDQSRResultObject::getGrammarIndex(v90));
        v7 = v88[0];
      }

      while (v88[0] < v89);
    }

    if (v7 - 2 != v11)
    {
      RDQSRResultObject::operator=(v11, (v7 - 2));
    }

    RDQSRResultObject::operator=((v7 - 2), v90);
    RDQSRResultObject::~RDQSRResultObject(v90);
    if (v20 < v22)
    {
      goto LABEL_34;
    }

    v25 = sub_1000389FC(v87, (v7 - 2));
    if (!sub_1000389FC(v7, v86))
    {
      if (v25)
      {
        goto LABEL_59;
      }

LABEL_34:
      sub_100037D84(v87, v7 - 2, a3, a4 & 1);
LABEL_58:
      a4 = 0;
LABEL_59:
      v87 = v7;
      goto LABEL_60;
    }

    if (v25)
    {
      return;
    }

    v86 = (v7 - 2);
    v7 = v87;
LABEL_60:
    v6 = v86;
  }

  v41 = (v7 + 2);
  v43 = v7 == v6 || v41 == v6;
  if (a4)
  {
    if (!v43)
    {
      v44 = 0;
      v45 = v7;
      do
      {
        v46 = v45;
        v45 = v41;
        v47 = RDQSRResultObject::getGrammarIndex(v41);
        if (v47 > RDQSRResultObject::getGrammarIndex(v46))
        {
          RDQSRResultObject::RDQSRResultObject(v90, v45);
          v48 = v44;
          while (1)
          {
            RDQSRResultObject::operator=(v7 + v48 + 16, v7 + v48);
            if (!v48)
            {
              break;
            }

            v49 = RDQSRResultObject::getGrammarIndex(v90);
            v50 = RDQSRResultObject::getGrammarIndex((v7 + v48 - 16));
            v48 -= 16;
            if (v49 <= v50)
            {
              v51 = v7 + v48 + 16;
              goto LABEL_81;
            }
          }

          v51 = v7;
LABEL_81:
          RDQSRResultObject::operator=(v51, v90);
          RDQSRResultObject::~RDQSRResultObject(v90);
        }

        v41 = (v45 + 2);
        v44 += 16;
      }

      while (v45 + 2 != v6);
    }
  }

  else if (!v43)
  {
    do
    {
      v82 = v41;
      v83 = RDQSRResultObject::getGrammarIndex(v41);
      if (v83 > RDQSRResultObject::getGrammarIndex(v7))
      {
        RDQSRResultObject::RDQSRResultObject(v90, v82);
        do
        {
          RDQSRResultObject::operator=((v7 + 2), v7);
          v84 = RDQSRResultObject::getGrammarIndex(v90);
          v7 -= 2;
        }

        while (v84 > RDQSRResultObject::getGrammarIndex(v7));
        RDQSRResultObject::operator=((v7 + 2), v90);
        RDQSRResultObject::~RDQSRResultObject(v90);
      }

      v41 = (v82 + 2);
      v7 = v82;
    }

    while (v82 + 2 != v6);
  }
}

void sub_100038658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, id);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  RDQSRResultObject::~RDQSRResultObject(va1);
  RDQSRResultObject::~RDQSRResultObject(va);
  _Unwind_Resume(a1);
}

void sub_1000386E4(id **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  RDQSRResultObject::RDQSRResultObject(v4, *a1);
  RDQSRResultObject::operator=(v2, v3);
  RDQSRResultObject::operator=(v3, v4);
  RDQSRResultObject::~RDQSRResultObject(v4);
}

void sub_100038750(id *a1, id *this, RDQSRResultObject *a3)
{
  v5 = a1;
  v16 = this;
  v17 = a1;
  v15 = a3;
  GrammarIndex = RDQSRResultObject::getGrammarIndex(this);
  LODWORD(v5) = RDQSRResultObject::getGrammarIndex(v5);
  v7 = RDQSRResultObject::getGrammarIndex(a3);
  v8 = RDQSRResultObject::getGrammarIndex(this);
  if (GrammarIndex > v5)
  {
    if (v7 <= v8)
    {
      sub_1000386E4(&v17, &v16);
      v13 = v16;
      v14 = RDQSRResultObject::getGrammarIndex(v15);
      if (v14 <= RDQSRResultObject::getGrammarIndex(v13))
      {
        return;
      }

      v9 = &v16;
    }

    else
    {
      v9 = &v17;
    }

    v12 = &v15;
    goto LABEL_10;
  }

  if (v7 > v8)
  {
    sub_1000386E4(&v16, &v15);
    v10 = v17;
    v11 = RDQSRResultObject::getGrammarIndex(v16);
    if (v11 > RDQSRResultObject::getGrammarIndex(v10))
    {
      v9 = &v17;
      v12 = &v16;
LABEL_10:
      sub_1000386E4(v9, v12);
    }
  }
}

void sub_100038844(id *a1, RDQSRResultObject *a2, RDQSRResultObject *a3, uint64_t a4)
{
  v4 = a4;
  v12 = a2;
  v13 = a1;
  v10 = a4;
  v11 = a3;
  sub_100038750(a1, a2, a3);
  LODWORD(v4) = RDQSRResultObject::getGrammarIndex(v4);
  if (v4 > RDQSRResultObject::getGrammarIndex(a3))
  {
    sub_1000386E4(&v11, &v10);
    GrammarIndex = RDQSRResultObject::getGrammarIndex(v11);
    if (GrammarIndex > RDQSRResultObject::getGrammarIndex(a2))
    {
      sub_1000386E4(&v12, &v11);
      v9 = RDQSRResultObject::getGrammarIndex(v12);
      if (v9 > RDQSRResultObject::getGrammarIndex(a1))
      {
        sub_1000386E4(&v13, &v12);
      }
    }
  }
}

void sub_100038904(id *a1, RDQSRResultObject *a2, RDQSRResultObject *a3, RDQSRResultObject *a4, uint64_t a5)
{
  v5 = a5;
  v16 = a2;
  v17 = a1;
  v14 = a4;
  v15 = a3;
  v13 = a5;
  sub_100038844(a1, a2, a3, a4);
  LODWORD(v5) = RDQSRResultObject::getGrammarIndex(v5);
  if (v5 > RDQSRResultObject::getGrammarIndex(a4))
  {
    sub_1000386E4(&v14, &v13);
    GrammarIndex = RDQSRResultObject::getGrammarIndex(v14);
    if (GrammarIndex > RDQSRResultObject::getGrammarIndex(a3))
    {
      sub_1000386E4(&v15, &v14);
      v11 = RDQSRResultObject::getGrammarIndex(v15);
      if (v11 > RDQSRResultObject::getGrammarIndex(a2))
      {
        sub_1000386E4(&v16, &v15);
        v12 = RDQSRResultObject::getGrammarIndex(v16);
        if (v12 > RDQSRResultObject::getGrammarIndex(a1))
        {
          sub_1000386E4(&v17, &v16);
        }
      }
    }
  }
}

BOOL sub_1000389FC(id *a1, uint64_t a2)
{
  v15 = a2;
  v16 = a1;
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_100038750(a1, a1 + 2, (a2 - 16));
        return 1;
      case 4:
        sub_100038844(a1, (a1 + 2), (a1 + 4), a2 - 16);
        return 1;
      case 5:
        sub_100038904(a1, (a1 + 2), (a1 + 4), (a1 + 6), a2 - 16);
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
      v15 = (a2 - 16);
      GrammarIndex = RDQSRResultObject::getGrammarIndex((a2 - 16));
      if (GrammarIndex > RDQSRResultObject::getGrammarIndex(a1))
      {
        sub_1000386E4(&v16, &v15);
      }

      return 1;
    }
  }

  v6 = a1 + 4;
  sub_100038750(a1, a1 + 2, (a1 + 4));
  v7 = (a1 + 6);
  if (v7 != a2)
  {
    v8 = 0;
    do
    {
      v9 = RDQSRResultObject::getGrammarIndex(v7);
      if (v9 > RDQSRResultObject::getGrammarIndex(v6))
      {
        RDQSRResultObject::RDQSRResultObject(v14, v7);
        do
        {
          v10 = v6;
          RDQSRResultObject::operator=((v6 + 2), v6);
          if (v6 == v16)
          {
            break;
          }

          v11 = RDQSRResultObject::getGrammarIndex(v14);
          v6 -= 2;
        }

        while (v11 > RDQSRResultObject::getGrammarIndex((v10 - 16)));
        RDQSRResultObject::operator=(v10, v14);
        if (++v8 == 8)
        {
          v12 = (v7 + 16) == v15;
          RDQSRResultObject::~RDQSRResultObject(v14);
          return v12;
        }

        RDQSRResultObject::~RDQSRResultObject(v14);
      }

      v6 = v7;
      v7 = (v7 + 16);
    }

    while (v7 != v15);
  }

  return 1;
}

__n128 sub_100038C60(uint64_t a1, uint64_t a2)
{
  *a2 = off_1000FF0D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void sub_100038C98(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v9 = v2;
    v10 = v3;
    v4 = *(a1 + 8);
    v5 = [VCLog logForCategory:@"vocabulary"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "RDQSREngine::LoadCustomVocabulary: RDASRWSpeechRecognizerUpdateUserProfileData", v8, 2u);
    }

    v6 = *(v4 + 16);
    v7 = RDUserProfile::copyDataProfile(*(v4 + 24));
    RDASRWSpeechRecognizerUpdateUserProfileData(v6, v7);
    RDQSREngine::UpdateUserProfileCache(v4);
  }
}

uint64_t sub_100038D40(uint64_t a1, uint64_t a2)
{
  if (sub_1000179F4(a2, &off_1000FF130))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

CFStringRef RDCopyModelPath(void)
{
  v0 = CFCopySearchPathForDirectoriesInDomains();
  ValueAtIndex = CFArrayGetValueAtIndex(v0, 0);
  v2 = CFURLCopyFileSystemPath(ValueAtIndex, kCFURLPOSIXPathStyle);
  v3 = CFStringCreateWithFormat(0, 0, @"%@/Speech/Recognizers/SpeechRecognitionCoreLanguages", v2);
  CFRelease(v2);
  CFRelease(v0);
  return v3;
}

const __CFURL *RDCopyCacheURL(void)
{
  v0 = CFCopySearchPathForDirectoriesInDomains();
  ValueAtIndex = CFArrayGetValueAtIndex(v0, 0);
  v2 = CFURLCreateCopyAppendingPathComponent(0, ValueAtIndex, @"com.apple.SpeechRecognitionCore", 1u);
  CFRelease(v0);
  v3 = CFURLCopyPath(v2);
  if (v3)
  {
    v4 = v3;
    CFStringGetCString(v3, buffer, 2000, 0x8000100u);
    v5 = opendir(buffer);
    if (v5)
    {
      closedir(v5);
    }

    else if (mkdir(buffer, 0x1EDu))
    {
      v6 = RXOSLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        v9 = v2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error creating %@", &v8, 0xCu);
      }
    }

    CFRelease(v4);
  }

  return v2;
}

const __CFDictionary *RDCopyInfoDict(CFURLRef url)
{
  v1 = CFURLCreateCopyAppendingPathComponent(0, url, @"Info.plist", 0);

  return sub_100038F88(v1);
}

const __CFDictionary *sub_100038F88(CFURLRef fileURL)
{
  if (!fileURL)
  {
    return 0;
  }

  v2 = CFReadStreamCreateWithFile(0, fileURL);
  if (v2)
  {
    v3 = v2;
    CFReadStreamOpen(v2);
    v4 = CFPropertyListCreateWithStream(0, v3, 0, 0, 0, 0);
    v5 = v4;
    if (v4)
    {
      Value = CFDictionaryGetValue(v4, @"CFBundleShortVersionString");
      if (CFStringGetCharacterAtIndex(Value, 0) <= 0x31u)
      {
        CFRelease(v5);
        v5 = 0;
      }
    }

    CFReadStreamClose(v3);
    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(fileURL);
  return v5;
}

CFBooleanRef RDCopyCacheVersion(const __CFString *a1)
{
  v1 = sub_100039150(a1);
  if (v1)
  {
    v2 = v1;
    v3 = CFURLCreateCopyAppendingPathComponent(0, v1, @"Info.plist", 0);
    v4 = sub_100038F88(v3);
    if (v4)
    {
      v5 = v4;
      Value = CFDictionaryGetValue(v4, @"CFBundleShortVersionString");
      if (Value)
      {
        v7 = Value;
        CFRetain(Value);
        CFRelease(v5);
LABEL_15:
        CFRelease(v2);
        return v7;
      }

      CFRelease(v5);
    }

    RDURL::RDURL(__p, v2, 0);
    if (v11 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if (stat(v8, &v12))
    {
      v7 = 0;
    }

    else
    {
      v7 = kCFBooleanTrue;
    }

    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_15;
  }

  return 0;
}

void sub_100039134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFURLRef sub_100039150(const __CFString *a1)
{
  v1 = RDCopyBestNashvilleLocaleIdentifier(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = RDCopyCacheURL();
  if (v3)
  {
    v4 = v3;
    v5 = CFURLCreateCopyAppendingPathComponent(0, v3, @"Users", 1u);
    if (v5)
    {
      v6 = v5;
      v7 = CFURLCreateCopyAppendingPathComponent(0, v5, v2, 1u);
      CFRelease(v6);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v2);
  return v7;
}

void RDNukeCache(const __CFString *a1)
{
  if (a1)
  {
    v1 = sub_100039150(a1);
    if (!v1)
    {
      return;
    }

    RDURL::RDURL(__p, v1, 1);
    if (v5 >= 0)
    {
      v2 = __p;
    }

    else
    {
      v2 = __p[0];
    }
  }

  else
  {
    v3 = RDCopyCacheURL();
    if (!v3)
    {
      return;
    }

    RDURL::RDURL(__p, v3, 1);
    if (v5 >= 0)
    {
      v2 = __p;
    }

    else
    {
      v2 = __p[0];
    }
  }

  removefile(v2, 0, 1u);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000392A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000392CC(std::string *a1)
{
  v1 = a1;
  std::string::append(a1, "/Contents/Info.plist");
  v2 = v1;
  if (SHIBYTE(v1->__r_.__value_.__r.__words[2]) < 0)
  {
    v2 = v1->__r_.__value_.__r.__words[0];
  }

  if (stat(v2, &v9))
  {
    return 0;
  }

  if (SHIBYTE(v1->__r_.__value_.__r.__words[2]) < 0)
  {
    v1 = v1->__r_.__value_.__r.__words[0];
  }

  v4 = CFStringCreateWithCStringNoCopy(0, v1, 0x8000100u, kCFAllocatorNull);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFURLCreateWithFileSystemPath(0, v4, kCFURLPOSIXPathStyle, 0);
  v7 = sub_100038F88(v6);
  v3 = v7 != 0;
  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(v5);
  return v3;
}

CFStringRef RDCopyBestNashvilleLocaleIdentifier(CFStringRef theString)
{
  RDString::RDString(&v68, theString, 0);
  v69 = v68;
  memset(&v68, 0, sizeof(v68));
  v1 = RDCopyModelPath();
  if (!v1)
  {
    sub_1000113AC(&cStr, "");
    goto LABEL_169;
  }

  RDString::RDString(v82, v1, 1);
  std::string::push_back(v2, 47);
  sub_1000113AC(&v79, ".SpeechRecognition");
  sub_100039E84(v82, &v69.__r_.__value_.__l.__data_, &v77);
  if ((v81 & 0x80u) == 0)
  {
    v3 = &v79;
  }

  else
  {
    v3 = v79;
  }

  if ((v81 & 0x80u) == 0)
  {
    v4 = v81;
  }

  else
  {
    v4 = v80;
  }

  v5 = std::string::append(&v77, v3, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v78.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v78.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = sub_1000392CC(&v78);
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
    if (v7)
    {
      goto LABEL_58;
    }
  }

  else if (v7)
  {
    goto LABEL_58;
  }

  v8 = std::string::find(&v69, 46, 0);
  if (v8 != -1)
  {
    v9 = &v69 + HIBYTE(v69.__r_.__value_.__r.__words[2]);
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v69;
    }

    else
    {
      v9 = (v69.__r_.__value_.__r.__words[0] + v69.__r_.__value_.__l.__size_);
      v10 = v69.__r_.__value_.__r.__words[0];
    }

    std::string::erase(&v69, v8, v9 - (v10 + v8));
    sub_100039E84(v82, &v69.__r_.__value_.__l.__data_, &v76);
    if ((v81 & 0x80u) == 0)
    {
      v11 = &v79;
    }

    else
    {
      v11 = v79;
    }

    if ((v81 & 0x80u) == 0)
    {
      v12 = v81;
    }

    else
    {
      v12 = v80;
    }

    v13 = std::string::append(&v76, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v77.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v77.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = sub_1000392CC(&v77);
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
      if (v15)
      {
        goto LABEL_58;
      }
    }

    else if (v15)
    {
      goto LABEL_58;
    }
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v69;
  }

  else
  {
    v16 = v69.__r_.__value_.__r.__words[0];
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v69.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v18 = 0;
    v19 = v16;
    while (1)
    {
      v20 = v16->__r_.__value_.__s.__data_[v18];
      if (v20 == 45 || v20 == 95)
      {
        break;
      }

      v19 = (v19 + 1);
      if (size == ++v18)
      {
        goto LABEL_59;
      }
    }

    if (size != v18 && v18 != -1)
    {
      v21 = &v69 + HIBYTE(v69.__r_.__value_.__r.__words[2]);
      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = (v69.__r_.__value_.__r.__words[0] + v69.__r_.__value_.__l.__size_);
      }

      std::string::erase(&v69, v18, v21 - v19);
      sub_100039E84(v82, &v69.__r_.__value_.__l.__data_, &v75);
      if ((v81 & 0x80u) == 0)
      {
        v22 = &v79;
      }

      else
      {
        v22 = v79;
      }

      if ((v81 & 0x80u) == 0)
      {
        v23 = v81;
      }

      else
      {
        v23 = v80;
      }

      v24 = std::string::append(&v75, v22, v23);
      v25 = *&v24->__r_.__value_.__l.__data_;
      v76.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v76.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      v26 = sub_1000392CC(&v76);
      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      if (v26)
      {
LABEL_58:
        cStr = v69;
        memset(&v69, 0, sizeof(v69));
        goto LABEL_165;
      }
    }
  }

LABEL_59:
  sub_1000113AC(&v75, "");
  if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) != 2)
    {
      goto LABEL_75;
    }

    if (LOWORD(v69.__r_.__value_.__l.__data_) != 28261)
    {
      if (LOWORD(v69.__r_.__value_.__l.__data_) != 29286)
      {
        if (LOWORD(v69.__r_.__value_.__l.__data_) != 29541)
        {
          v27 = &v69;
          goto LABEL_69;
        }

LABEL_73:
        v28 = "es_US";
        goto LABEL_74;
      }

LABEL_72:
      v28 = "fr_FR";
      goto LABEL_74;
    }

LABEL_71:
    v28 = "en_US";
    goto LABEL_74;
  }

  if (v69.__r_.__value_.__l.__size_ != 2)
  {
    goto LABEL_75;
  }

  v27 = v69.__r_.__value_.__r.__words[0];
  switch(*v69.__r_.__value_.__l.__data_)
  {
    case 0x6E65:
      goto LABEL_71;
    case 0x7266:
      goto LABEL_72;
    case 0x7365:
      goto LABEL_73;
  }

LABEL_69:
  if (LOWORD(v27->__r_.__value_.__l.__data_) == 25956)
  {
    v28 = "de_DE";
LABEL_74:
    std::string::assign(&v75, v28);
  }

LABEL_75:
  v29 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = v75.__r_.__value_.__l.__size_;
  }

  if (v29)
  {
    sub_100039E84(v82, &v75.__r_.__value_.__l.__data_, &__s1);
    if ((v81 & 0x80u) == 0)
    {
      v30 = &v79;
    }

    else
    {
      v30 = v79;
    }

    if ((v81 & 0x80u) == 0)
    {
      v31 = v81;
    }

    else
    {
      v31 = v80;
    }

    v32 = std::string::append(&__s1, v30, v31);
    v33 = *&v32->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = sub_1000392CC(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
      if (v34)
      {
        goto LABEL_88;
      }
    }

    else if (v34)
    {
LABEL_88:
      cStr = v75;
      memset(&v75, 0, sizeof(v75));
      goto LABEL_163;
    }
  }

  if ((v83 & 0x80u) == 0)
  {
    v35 = v82;
  }

  else
  {
    v35 = v82[0];
  }

  v36 = opendir(v35);
  v37 = v36;
  if (!v36)
  {
LABEL_162:
    sub_1000113AC(&cStr, "");
    goto LABEL_163;
  }

  v67 = v36;
  while (1)
  {
    v38 = readdir(v37);
    if (!v38)
    {
      closedir(v37);
      goto LABEL_162;
    }

    sub_1000113AC(&__s1, v38->d_name);
    v39 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
    v40 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
    v42 = __s1.__r_.__value_.__l.__size_;
    v41 = __s1.__r_.__value_.__r.__words[0];
    if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s1 = &__s1;
    }

    else
    {
      p_s1 = __s1.__r_.__value_.__r.__words[0];
    }

    if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v39 = __s1.__r_.__value_.__l.__size_;
    }

    v44 = (v81 & 0x80u) == 0 ? &v79 : v79;
    v45 = (v81 & 0x80u) == 0 ? v81 : v80;
    if (!v45)
    {
      goto LABEL_140;
    }

    if (v39 >= v45)
    {
      v46 = p_s1 + v39;
      v47 = *v44;
      v48 = p_s1;
      while (1)
      {
        v49 = v39 - v45;
        if (v49 == -1)
        {
          goto LABEL_126;
        }

        v50 = memchr(v48, v47, v49 + 1);
        if (!v50)
        {
          goto LABEL_126;
        }

        v51 = v50;
        if (!memcmp(v50, v44, v45))
        {
          break;
        }

        v48 = (v51 + 1);
        v39 = v46 - (v51 + 1);
        if (v39 < v45)
        {
          goto LABEL_126;
        }
      }

      if (v51 == v46)
      {
LABEL_126:
        v37 = v67;
        goto LABEL_159;
      }

      v37 = v67;
      if (v51 - p_s1 != -1)
      {
LABEL_140:
        v52 = (v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v69.__r_.__value_.__r.__words[2]) : v69.__r_.__value_.__l.__size_;
        if ((v40 & 0x80000000) != 0)
        {
          if (v52 == -1)
          {
LABEL_186:
            sub_100016F2C();
          }

          v53 = v42 >= 2 ? 2 : v42;
        }

        else
        {
          if (v52 == -1)
          {
            goto LABEL_186;
          }

          v53 = v40 >= 2 ? 2 : v40;
          v41 = &__s1;
        }

        v54 = (v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v69 : v69.__r_.__value_.__r.__words[0];
        v55 = v53 >= v52 ? v52 : v53;
        if (!memcmp(v41, v54, v55) && v53 == v52)
        {
          break;
        }
      }
    }

LABEL_159:
    if ((v40 & 0x80) != 0)
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
    }
  }

  if ((v83 & 0x80u) == 0)
  {
    v57 = v83;
  }

  else
  {
    v57 = v82[1];
  }

  sub_10003A020(&v71, v57 + 1);
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v58 = &v71;
  }

  else
  {
    v58 = v71.__r_.__value_.__r.__words[0];
  }

  if (v57)
  {
    if ((v83 & 0x80u) == 0)
    {
      v59 = v82;
    }

    else
    {
      v59 = v82[0];
    }

    memmove(v58, v59, v57);
  }

  *(&v58->__r_.__value_.__l.__data_ + v57) = 47;
  v60 = std::string::append(&v71, v38->d_name);
  v61 = *&v60->__r_.__value_.__l.__data_;
  v72.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
  *&v72.__r_.__value_.__l.__data_ = v61;
  v60->__r_.__value_.__l.__size_ = 0;
  v60->__r_.__value_.__r.__words[2] = 0;
  v60->__r_.__value_.__r.__words[0] = 0;
  v62 = sub_1000392CC(&v72);
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (!v62)
  {
    LOBYTE(v40) = *(&__s1.__r_.__value_.__s + 23);
    goto LABEL_159;
  }

  closedir(v37);
  v66 = sub_100039F50(&__s1, &v79, 0);
  std::string::basic_string(&cStr, &__s1, 0, v66, &v71);
  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

LABEL_163:
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

LABEL_165:
  if (v81 < 0)
  {
    operator delete(v79);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

LABEL_169:
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(cStr.__r_.__value_.__r.__words[2]) < 0)
  {
    if (cStr.__r_.__value_.__l.__size_)
    {
      p_cStr = cStr.__r_.__value_.__r.__words[0];
LABEL_178:
      v64 = CFStringCreateWithCString(0, p_cStr, 0x8000100u);
      if ((SHIBYTE(cStr.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v64;
      }
    }

    else
    {
      v64 = 0;
    }

    operator delete(cStr.__r_.__value_.__l.__data_);
    return v64;
  }

  if (*(&cStr.__r_.__value_.__s + 23))
  {
    p_cStr = &cStr;
    goto LABEL_178;
  }

  return 0;
}

void sub_100039B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (*(v49 - 129) < 0)
  {
    operator delete(*(v49 - 152));
  }

  if (*(v49 - 105) < 0)
  {
    operator delete(*(v49 - 128));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void RDString::RDString(RDString *this, CFStringRef theString, int a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (theString)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
    if (CStringPtr)
    {
      std::string::assign(this, CStringPtr);
    }

    else
    {
      Length = CFStringGetLength(theString);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      std::string::resize(this, MaximumSizeForEncoding + 2, 0);
      v9 = this;
      if (*(this + 23) < 0)
      {
        v9 = *this;
      }

      CFStringGetCString(theString, v9, MaximumSizeForEncoding + 1, 0x8000100u);
      v10 = this;
      if (*(this + 23) < 0)
      {
        v10 = *this;
      }

      v11 = strlen(v10);
      std::string::resize(this, v11, 0);
    }

    if (a3)
    {
      CFRelease(theString);
    }
  }
}

void sub_100039DD8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void RDURL::RDURL(RDURL *this, CFURLRef anURL, int a3)
{
  if (anURL)
  {
    v6 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
    RDString::RDString(this, v6, 1);
    if (a3)
    {
      CFRelease(anURL);
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }
}

void sub_100039E68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100039E84@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_10003A020(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t sub_100039F50(uint64_t *a1, char *a2, unint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v3 = *a1;
    v4 = a1[1];
  }

  v5 = a2[23];
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
    v7 = a2[23];
  }

  else
  {
    v7 = *(a2 + 1);
  }

  v8 = v4 - a3;
  if (v4 < a3)
  {
    return -1;
  }

  if (v7)
  {
    v9 = (v3 + v4);
    if (v8 >= v7)
    {
      v12 = (v3 + a3);
      v13 = *v6;
      do
      {
        if (v8 - v7 == -1)
        {
          break;
        }

        v14 = memchr(v12, v13, v8 - v7 + 1);
        if (!v14)
        {
          break;
        }

        v10 = v14;
        if (!memcmp(v14, v6, v7))
        {
          goto LABEL_14;
        }

        v12 = v10 + 1;
        v8 = v9 - (v10 + 1);
      }

      while (v8 >= v7);
    }

    v10 = v9;
LABEL_14:
    if (v10 == v9)
    {
      return -1;
    }

    else
    {
      return &v10[-v3];
    }
  }

  return a3;
}

uint64_t sub_10003A020(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100016CB8();
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

void sub_10003A534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_10003A59C(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = RXOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Access to Contacts db not granted.", &v7, 2u);
    }
  }

  if (v4)
  {
    v6 = RXOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
    }
  }
}

void sub_10003A698(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = a2;
  v5 = objc_autoreleasePoolPush();
  if ((*(*(a1 + 40) + 16))())
  {
    if (*(*(*(a1 + 48) + 8) + 24) < 0x3E8uLL)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = [v19 givenName];
      v8 = [v7 length];

      if (v8)
      {
        v9 = [v19 givenName];
        [v6 setValue:v9 forKey:@"\\contact-first"];
      }

      v10 = [v19 familyName];
      v11 = [v10 length];

      if (v11)
      {
        v12 = [v19 familyName];
        [v6 setValue:v12 forKey:@"\\contact-last"];
      }

      v13 = [v19 middleName];
      v14 = [v13 length];

      if (v14)
      {
        v15 = [v19 middleName];
        [v6 setValue:v15 forKey:@"\\contact-middle"];
      }

      v16 = [v19 nickname];
      v17 = [v16 length];

      if (v17)
      {
        v18 = [v19 nickname];
        [v6 setValue:v18 forKey:@"\\contact-nickname"];
      }

      if ([v6 count])
      {
        [*(a1 + 32) addObject:v6];
        ++*(*(*(a1 + 48) + 8) + 24);
      }

      ++*(*(*(a1 + 56) + 8) + 24);
    }

    else
    {
      *a3 = 1;
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_10003A8A8(uint64_t a1, void *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  if (a3 == 2)
  {
    context = v11;
    v37 = v10;
    v38 = v9;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v29 = v10;
    v30 = [v29 countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v41;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v41 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v40 + 1) + 8 * i);
          ++*(*(*(a1 + 48) + 8) + 24);
          v48 = @"\\contact-nickname";
          v49 = v34;
          v35 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1, context];
          if (*(*(*(a1 + 48) + 8) + 24) + *(*(*(a1 + 40) + 8) + 24) < 0x3E8uLL)
          {
            [*(a1 + 32) addObject:v35];
            ++*(*(*(a1 + 56) + 8) + 24);
          }

          else
          {
            *a5 = 1;
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v40 objects:v50 count:16];
      }

      while (v31);
    }

    goto LABEL_30;
  }

  if (a3 == 1)
  {
    context = v11;
    v37 = v10;
    v38 = v9;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v45;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v45 != v14)
          {
            objc_enumerationMutation(obj);
          }

          if (*(*(*(a1 + 48) + 8) + 24) + *(*(*(a1 + 40) + 8) + 24) < 0x3E8uLL)
          {
            v16 = *(*(&v44 + 1) + 8 * j);
            v17 = objc_alloc_init(NSPersonNameComponentsFormatter);
            v18 = [v17 personNameComponentsFromString:v16];
            v19 = objc_alloc_init(NSMutableDictionary);
            v20 = [v18 givenName];
            v21 = [v20 length];

            if (v21)
            {
              v22 = [v18 givenName];
              [v19 setValue:v22 forKey:@"\\contact-first"];
            }

            v23 = [v18 middleName];
            v24 = [v23 length];

            if (v24)
            {
              v25 = [v18 middleName];
              [v19 setValue:v25 forKey:@"\\contact-middle"];
            }

            v26 = [v18 familyName];
            v27 = [v26 length];

            if (v27)
            {
              v28 = [v18 familyName];
              [v19 setValue:v28 forKey:@"\\contact-last"];
            }

            ++*(*(*(a1 + 48) + 8) + 24);
            [*(a1 + 32) addObject:v19];
            ++*(*(*(a1 + 56) + 8) + 24);
          }

          else
          {
            *a5 = 1;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v13);
    }

LABEL_30:
    v10 = v37;

    v9 = v38;
    v11 = context;
  }

  objc_autoreleasePoolPop(v11);
}

void sub_10003B1F8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 _fetchContactsWithKeepGoing:v3];
  v4[2]();
}

uint64_t sub_10003B258(void *a1)
{
  v2 = a1[5];
  if ((*(a1[6] + 16))())
  {
    v3 = a1[4];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_10003B72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003B820(id a1)
{
  v1 = dispatch_queue_create("com.apple.embeddedspeech.FetchSerializer", 0);
  v2 = qword_10010E520;
  qword_10010E520 = v1;

  qword_10010E528 = objc_alloc_init(NSMutableSet);

  _objc_release_x1();
}

id sub_10003B87C(uint64_t a1)
{
  result = [qword_10010E528 containsObject:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v3 = qword_10010E528;
    v4 = *(a1 + 32);

    return [v3 addObject:v4];
  }

  return result;
}

void sub_10003B8E4(uint64_t a1)
{
  v1 = qword_10010E520;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B974;
  block[3] = &unk_1000FE108;
  v3 = *(a1 + 32);
  dispatch_async(v1, block);
}

id sub_10003B974(uint64_t a1)
{
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Marking fetch available for %@", &v5, 0xCu);
  }

  result = [qword_10010E528 containsObject:*(a1 + 32)];
  if (result)
  {
    return [qword_10010E528 removeObject:*(a1 + 32)];
  }

  return result;
}

void sub_10003BA3C(uint64_t a1)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
    v2 = RXOSLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Timed out waiting on %@", &v4, 0xCu);
    }

    dispatch_group_leave(*(a1 + 40));
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void sub_10003BB24(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003BC04;
  v5[3] = &unk_1000FF300;
  v2 = *(a1 + 56);
  v9 = *(a1 + 64);
  v3 = *(a1 + 32);
  v11 = *(a1 + 80);
  v4 = *(a1 + 72);
  v6 = v3;
  v10 = v4;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  (*(v2 + 16))(v2, v5);
}

void sub_10003BC04(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003BCC4;
  v3[3] = &unk_1000FF2D8;
  v7 = *(a1 + 72);
  v6 = *(a1 + 64);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  dispatch_async(v2, v3);
}

void sub_10003BCC4(uint64_t a1)
{
  v2 = +[NSProcessInfo processInfo];
  [v2 systemUptime];
  v4 = v3 - *(a1 + 56);

  v5 = *(*(*(a1 + 48) + 8) + 24);
  v6 = RXOSLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v10 = 134218242;
      v11 = v4 * 1000.0;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Fetch completed too late (%.2fsms) for %@", &v10, 0x16u);
    }
  }

  else
  {
    if (v7)
    {
      v9 = *(a1 + 32);
      v10 = 138412546;
      v11 = v9;
      v12 = 2048;
      v13 = v4 * 1000.0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Fetch completed for %@ in %.2fms", &v10, 0x16u);
    }

    dispatch_group_leave(*(a1 + 40));
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_10003BE3C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t RDSoundInputiOS::RDSoundInputiOS(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  RDSoundInput::RDSoundInput(a1, a2, 0, 0);
  *a1 = off_1000FF380;
  *(a1 + 32) = 0;
  v8 = (a1 + 32);
  *(a1 + 40) = 0;
  v9 = RXOSLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "RDSoundInputiOS::Init", v15, 2u);
  }

  *(a1 + 48) = 0;
  if (+[VCFeatureFlags inputAudioCoexistenceSupportEnabled])
  {
    *(a1 + 48) = 1;
    v10 = [[AVAudioFormat alloc] initWithStreamDescription:a3];
    v11 = [[_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist alloc] initWithExpectedFormat:v10 deliverSamples:v7];
    v12 = *(a1 + 40);
    *(a1 + 40) = v11;
  }

  else
  {
    v13 = [[RDSoundInputImpl alloc] initWithExpectedFormat:a3 deliverSamples:v7];
    v10 = *v8;
    *v8 = v13;
  }

  return a1;
}

void sub_10003C044(_Unwind_Exception *a1)
{
  v4 = v3;

  *v2 = off_1000FE020;
  RDAudioObject::~RDAudioObject((v2 + 8));

  _Unwind_Resume(a1);
}

id RDSoundInputiOS::StartRecording(RDSoundInputiOS *this)
{
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "RDSoundInputiOS::StartRecording", v5, 2u);
  }

  v3 = 32;
  if (*(this + 48))
  {
    v3 = 40;
  }

  return [*(this + v3) startRecording];
}

id RDSoundInputiOS::StopRecording(RDSoundInputiOS *this)
{
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "RDSoundInputiOS::StopRecording", v5, 2u);
  }

  v3 = 32;
  if (*(this + 48))
  {
    v3 = 40;
  }

  return [*(this + v3) stopRecording];
}

id RDSoundInputiOS::IsRecording(RDSoundInputiOS *this)
{
  v1 = 32;
  if (*(this + 48))
  {
    v1 = 40;
  }

  return [*(this + v1) isRecording];
}

void RDSoundInputiOS::~RDSoundInputiOS(id *this)
{
  *this = off_1000FF380;
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "RDSoundInputiOS::Dealloc", v5, 2u);
  }

  if (*(this + 48) == 1)
  {
    v3 = this + 5;
    [this[5] stopRecording];
  }

  else
  {
    v3 = this + 4;
    [this[4] stopRecording];
  }

  v4 = *v3;
  *v3 = 0;

  *this = off_1000FE020;
  RDAudioObject::~RDAudioObject((this + 1));
}

{
  RDSoundInputiOS::~RDSoundInputiOS(this);

  operator delete();
}

id **sub_10003C89C(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    operator delete();
  }

  return result;
}

void RDUserProfile::updateUserProfileWithPersonalData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == 1)
  {
    v3 = RXOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "preHeatUserProfile not allowed for inline mode", v6, 2u);
    }
  }

  else
  {
    v5 = **(a1 + 8);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3321888768;
    v7[2] = sub_10003CA2C;
    v7[3] = &unk_1000FF3C0;
    sub_10003CF2C(v8, a3);
    [v5 updateUserProfileWithPersonalData:a2 completion:v7];
    sub_1000377A4(v8);
  }
}

uint64_t sub_10003CA34(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100003B9C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void RDUserProfile::writeUserProfileToCache(RDUserProfile *this)
{
  if (*this == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = RXOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "writeUserProfileToCache not allowed for inline mode", v5, 2u);
    }
  }

  else
  {
    v4 = **(this + 1);

    [v4 writeUserProfileToCache];
  }
}

void RDUserProfile::addPhraseToUserProfile(RDUserProfile *this, const __CFArray *a2, const __CFString *a3, const __CFString *a4)
{
  if (!a2 && CFArrayGetCount(0) <= 0)
  {
    v9 = RXOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "addPhraseToUserProfile: Null phrase being added to profile. Ignoring..";
      v11 = buf;
      goto LABEL_12;
    }

LABEL_13:

    return;
  }

  if (!a3 || !a4)
  {
    v9 = RXOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
      v10 = "addPhraseToUserProfile: NULL NTString or WordTag when adding to profile. Ignoring..";
      v11 = &v12;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v8 = **(this + 1);

  [v8 addPhraseToUserProfileWithTemplateName:a3 wordTag:a4 phrase:a2];
}

void RDUserProfile::addPhraseAndPronsToUserProfile(RDUserProfile *this, const __CFString *a2, const __CFArray *a3, const __CFString *a4, const __CFString *a5)
{
  if (!a2)
  {
    v6 = RXOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v7 = "addPhraseToUserProfile: Null phrase being added to profile. Ignoring..";
      v8 = &v10;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    }

LABEL_12:

    return;
  }

  if (!a4 || !a5)
  {
    v6 = RXOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      v7 = "addPhraseToUserProfile: NULL NTString or WordTag when adding to profile. Ignoring..";
      v8 = &v9;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v5 = **(this + 1);

  [v5 addPhraseToUserProfileWithIPAprons:a4 wordTag:a5 phrase:a2 pronsArray:a3];
}

void RDUserProfile::addWordCombinations(id **this, const __CFArray *a2, const __CFString *a3, const __CFString *a4)
{
  if (!a2 && CFArrayGetCount(0) <= 0)
  {
    v11 = RXOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "addWordCombinations: Null phrase being added to profile. Ignoring..";
      v13 = buf;
      goto LABEL_17;
    }

LABEL_18:

    return;
  }

  if (!a3 || !a4)
  {
    v11 = RXOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 0;
      v12 = "addWordCombinations: NULL NTString or WordTag when adding to profile. Ignoring..";
      v13 = &v15;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v14 = a2;
  for (i = 1; i != 4; ++i)
  {
    for (j = 0; j < ([(__CFArray *)v14 count]- i + 1); ++j)
    {
      v10 = [(__CFArray *)v14 subarrayWithRange:j, i];
      [*this[1] addPhraseToUserProfileWithTemplateName:a3 wordTag:a4 phrase:v10];
    }
  }
}

void *RDUserProfile::copyDataProfile(id **this)
{
  v1 = [*this[1] dataProfile];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  return v2;
}

uint64_t sub_10003CF2C(uint64_t a1, uint64_t a2)
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

RDASRWrapper *RDASRWSpeechRecognizerCreate(uint64_t a1, int a2, uint64_t a3)
{
  v6 = objc_alloc_init(RDASRWrapper);
  if (RXIsSpeechSPIEnabled())
  {
    v7 = RDSAPICSpeechAnalyzerCreate(a3);
  }

  else
  {
    v7 = RDEARCSpeechRecognizerCreate(a1, a2);
  }

  [(RDASRWrapper *)v6 setRecognizer:v7];
  v8 = RXOSLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "ASRWrapper created recognizer", v10, 2u);
  }

  return v6;
}

id RDASRWSpeechRecognizerCreateRecognitionBuffer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  [v9 mapDelegate:a5];
  v10 = RXIsSpeechSPIEnabled();
  v11 = [v9 recognizer];
  v12 = [v9 recognitionDelegate];
  if (v10)
  {
    RecognitionBuffer = RDSAPICSpeechAnalyzerCreateRecognitionBuffer(v11, a2, a3, a4, v12);
  }

  else
  {
    RecognitionBuffer = RDEARCSpeechRecognizerCreateRecognitionBuffer(v11, a2, a3, a4, v12);
  }

  [v9 setRecognitionBuffer:RecognitionBuffer];
  v14 = RXOSLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "ASRWrapper created audio buffer", v17, 2u);
  }

  v15 = [v9 recognitionBuffer];
  return v15;
}

uint64_t RDASRWSpeechRecognitionAudioBufferNewUtteranceBegins(uint64_t a1)
{
  result = RXIsSpeechSPIEnabled();
  if (result)
  {

    return RDSAPICSpeechAnalyzerNewUtteranceBegins(a1);
  }

  return result;
}

id RDASRWSpeechRecognitionAudioBufferAddAudioSamples(void *a1, uint64_t a2, uint64_t a3)
{
  if (RXIsSpeechSPIEnabled())
  {

    return RDSAPICSpeechAnalyzerAddAudioSamples(a1, a2, a3);
  }

  else
  {

    return RDEARCSpeechRecognitionAudioBufferAddAudioSamples(a1, a2, a3);
  }
}

void RDASRWSpeechRecognitionAudioBufferEndAudio(uint64_t a1)
{
  if (RXIsSpeechSPIEnabled())
  {
    RDSAPICSpeechAnalyzerEndAudio(a1);
  }

  else
  {
    RDEARCSpeechRecognitionAudioBufferEndAudio(a1);
  }

  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "ASRWrapper end audio", v3, 2u);
  }
}

void RDASRWSpeechRecognitionAudioBufferCancelRecognition(uint64_t a1)
{
  if (RXIsSpeechSPIEnabled())
  {
    RDSAPICSpeechAnalyzerCancelRecognition(a1);
  }

  else
  {
    RDEARCSpeechRecognitionAudioBufferCancelRecognition(a1);
  }

  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "ASRWrapper cancel audio", v3, 2u);
  }
}

id RDASRWSpeechRecognizerSetDetectUtterances(void *a1, uint64_t a2)
{
  v4 = RXIsSpeechSPIEnabled();
  v5 = [a1 recognizer];
  if (v4)
  {

    return RDSAPICSpeechAnalyzerSetDetectUtterances(v5, a2);
  }

  else
  {

    return RDEARCSpeechRecognizerSetDetectUtterances(v5, a2);
  }
}

id RDASRWSpeechRecognizerSetHighPriority(void *a1, uint64_t a2)
{
  v4 = RXIsSpeechSPIEnabled();
  v5 = [a1 recognizer];
  if (v4)
  {

    return RDSAPICSpeechAnalyzerSetHighPriority(v5, a2);
  }

  else
  {

    return RDEARCSpeechRecognizerSetHighPriority(v5, a2);
  }
}

id RDASRWSpeechRecognizerUpdateUserProfileData(void *a1, uint64_t a2)
{
  v4 = RXIsSpeechSPIEnabled();
  v5 = [a1 recognizer];
  if (v4)
  {

    return RDSAPICSpeechAnalyzerUpdateUserProfileData(v5, a2);
  }

  else
  {

    return RDEARCSpeechRecognizerUpdateUserProfileData(v5, a2);
  }
}

CFTypeRef RDASRWSpeechRecognizerCopyUserProfileData(void *a1)
{
  v2 = RXIsSpeechSPIEnabled();
  v3 = [a1 recognizer];
  if (v2)
  {

    return RDSAPICSpeechAnalyzerCopyUserProfileData(v3);
  }

  else
  {

    return RDEARCSpeechRecognizerCopyUserProfileData(v3);
  }
}

id RDASRWSpeechRecognizerSetUserProfileData(void *a1, uint64_t a2)
{
  v4 = RXIsSpeechSPIEnabled();
  v5 = [a1 recognizer];
  if (v4)
  {

    return RDSAPICSpeechAnalyzerSetUserProfileData(v5, a2);
  }

  else
  {

    return RDEARCSpeechRecognizerSetUserProfileData(v5, a2);
  }
}

CFTypeRef RDASRWSpeechRecognizerCopyJitProfileData(void *a1)
{
  v2 = RXIsSpeechSPIEnabled();
  v3 = [a1 recognizer];
  if (v2)
  {

    return RDSAPICSpeechAnalyzerCopyJitProfileData(v3);
  }

  else
  {

    return RDEARCSpeechRecognizerCopyJitProfileData(v3);
  }
}

id RDASRWSpeechRecognizerUpdateJitProfileData(void *a1, uint64_t a2)
{
  v4 = RXIsSpeechSPIEnabled();
  v5 = [a1 recognizer];
  if (v4)
  {

    return RDSAPICSpeechAnalyzerUpdateJitProfileData(v5, a2);
  }

  else
  {

    return RDEARCSpeechRecognizerUpdateJitProfileData(v5, a2);
  }
}

id RDASRWSpeechRecognizerSetRecognitionReplacements(void *a1, const __CFDictionary *a2)
{
  if (RXIsSpeechSPIEnabled())
  {
    if (a2 && CFDictionaryGetCount(a2) >= 1)
    {
      v4 = [a1 recognizer];
      v5 = 1;
    }

    else
    {
      v4 = [a1 recognizer];
      v5 = 0;
    }

    return RDSAPICSpeechAnalyzerSetRecognitionReplacements(v4, v5);
  }

  else
  {
    v6 = [a1 recognizer];

    return RDEARCSpeechRecognizerSetRecognitionReplacements(v6, a2);
  }
}