void sub_10000CCF4(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10000CD1C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10000455C();
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

    v20[4] = a1;
    if (v9)
    {
      v10 = sub_10000CE88(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v12 = &v10[24 * v6];
    v13 = &v10[24 * v9];
    v14 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v12, v14);
    v15 = &v12[v14];
    v16 = *(a1 + 8) - *a1;
    v17 = &v12[-v16];
    memcpy(&v12[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v15;
    v19 = *(a1 + 16);
    *(a1 + 16) = v13;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    sub_10000CED0(v20);
  }
}

void *sub_10000CE88(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    sub_100003FE8();
  }

  return operator new(24 * a2);
}

uint64_t sub_10000CED0(uint64_t a1)
{
  sub_10000CF08(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10000CF08(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_10000CF64(uint64_t a1, const std::string *a2, int a3)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  sub_100004454(a1);
  return a1;
}

void sub_10000D010(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_10000D038(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t sub_10000D188(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

char *sub_10000D250(char *__dst, __int128 *a2, __int128 *a3, __int128 *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100003EAC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v7;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100003EAC(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v8;
  }

  if (*(a4 + 23) < 0)
  {
    sub_100003EAC(__dst + 48, *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(__dst + 8) = *(a4 + 2);
    *(__dst + 3) = v9;
  }

  sub_100005C7C(__dst + 9, &unk_100013366);
  v10 = nanf(&unk_100013366);
  *(__dst + 24) = v10;
  *(__dst + 25) = v10;
  *(__dst + 26) = v10;
  return __dst;
}

void sub_10000D324(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000D370(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_10000D3A0(a1, a2 - v2);
  }
}

void sub_10000D3A0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_10000455C();
    }

    v9 = v7 >> 2;
    v10 = v4 - v6;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      v12 = sub_100005174(a1, v11);
      v6 = *a1;
      v7 = *(a1 + 8) - *a1;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[4 * v9];
    v14 = &v12[4 * v11];
    bzero(v13, 4 * a2);
    memcpy(&v13[-4 * (v7 >> 2)], v6, v7);
    v15 = *a1;
    *a1 = &v13[-4 * (v7 >> 2)];
    *(a1 + 8) = &v13[4 * a2];
    *(a1 + 16) = v14;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void *sub_10000D4D0(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_100003EAC(result[1], *a2, *(a2 + 1));
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

char *sub_10000D530(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10000455C();
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

  v22 = a1;
  if (v6)
  {
    v7 = sub_10000CE88(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v18 = v7;
  v19 = v8;
  v9 = &v7[24 * v6];
  v20 = v8;
  v21 = v9;
  if (*(a2 + 23) < 0)
  {
    sub_100003EAC(v8, *a2, *(a2 + 1));
    v8 = v19;
    v11 = v20;
    v9 = v21;
  }

  else
  {
    v10 = *a2;
    *(v8 + 2) = *(a2 + 2);
    *v8 = v10;
    v11 = &v7[24 * v2];
  }

  v12 = v11 + 24;
  v13 = *(a1 + 8) - *a1;
  v14 = &v8[-v13];
  memcpy(&v8[-v13], *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = v9;
  v20 = v15;
  v21 = v16;
  v18 = v15;
  v19 = v15;
  sub_10000CED0(&v18);
  return v12;
}

void sub_10000D65C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000CED0(va);
  _Unwind_Resume(a1);
}

void sub_10000D670(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10000D670(a1, *a2);
    sub_10000D670(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_10000D6D4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10000D728(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10000D728(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_10000D778(void ***a1)
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
        v4 -= 48;
        sub_10000D800(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10000D800(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  v3 = *(a2 + 8);

  sub_10000C898(a2, v3);
}

uint64_t sub_10000D848(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_10000D8D8(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_10000D8D8(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

BOOL sub_10000D8D8(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t sub_10000D944(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_10000455C();
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

  v23 = a1;
  if (v6)
  {
    v7 = sub_10000DAB4(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[48 * v2];
  v20 = v7;
  v21 = v8;
  *v8 = *a2;
  v9 = (a2 + 8);
  v10 = *(a2 + 8);
  *(&v22 + 1) = &v7[48 * v6];
  *(v8 + 1) = v10;
  v11 = v8 + 8;
  v12 = *(a2 + 16);
  *(v8 + 2) = v12;
  if (v12)
  {
    *(v10 + 16) = v11;
    *a2 = v9;
    *v9 = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *v8 = v11;
  }

  v13 = *(a2 + 24);
  *(v8 + 5) = *(a2 + 40);
  *(v8 + 24) = v13;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *&v22 = v8 + 48;
  v14 = a1[1];
  v15 = &v8[*a1 - v14];
  sub_10000DAFC(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  sub_10000DC84(&v20);
  return v19;
}

void sub_10000DAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10000DC84(va);
  _Unwind_Resume(a1);
}

void *sub_10000DAB4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    sub_100003FE8();
  }

  return operator new(48 * a2);
}

uint64_t sub_10000DAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v20 = a4;
  v17[0] = a1;
  v17[1] = &v19;
  v17[2] = &v20;
  if (a2 == a3)
  {
    v18 = 1;
  }

  else
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      *v8 = *(a2 + v7);
      v9 = (a2 + v7 + 8);
      v10 = *v9;
      v8[1] = *v9;
      v11 = a4 + v7 + 8;
      v12 = *(a2 + v7 + 16);
      *(a4 + v7 + 16) = v12;
      if (v12)
      {
        *(v10 + 16) = v11;
        *(a2 + v7) = v9;
        *v9 = 0;
        *(a2 + v7 + 16) = 0;
      }

      else
      {
        *(a4 + v7) = v11;
      }

      v13 = a4 + v7;
      v14 = (a2 + v7);
      v15 = *(a2 + v7 + 24);
      *(v13 + 40) = *(a2 + v7 + 40);
      *(v13 + 24) = v15;
      v14[4] = 0;
      v14[5] = 0;
      v14[3] = 0;
      v7 += 48;
    }

    while (a2 + v7 != a3);
    v20 = a4 + v7;
    v18 = 1;
    while (v5 != a3)
    {
      sub_10000D800(a1, v5);
      v5 += 48;
    }
  }

  return sub_10000DBF8(v17);
}

uint64_t sub_10000DBF8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10000DC30(a1);
  }

  return a1;
}

void sub_10000DC30(uint64_t *a1)
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
      v3 -= 48;
      sub_10000D800(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_10000DC84(void **a1)
{
  sub_10000DCB8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10000DCB8(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    sub_10000D800(v4, i - 48);
  }
}

uint64_t *sub_10000DD00(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_10000DD98(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_10000DE34(a1, a4, &v8);
    sub_10000DEDC(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

uint64_t sub_10000DD98(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_10000D8D8(a1, a3, (v4 + 32)))
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

      if (!sub_10000D8D8(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

_BYTE *sub_10000DE34@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x40uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_100003EAC(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(result + 6) = *(v8 + 2);
    *(result + 2) = v9;
  }

  *(v7 + 14) = 0;
  *(a3 + 16) = 1;
  return result;
}

void sub_10000DEC0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10000E0D0(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_10000DEDC(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_10000DF34(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_10000DF34(uint64_t *result, uint64_t *a2)
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
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
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

void sub_10000E0D0(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_10000E134(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_10000DD98(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_10000E1CC(a1, a4, &v8);
    sub_10000DEDC(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

_BYTE *sub_10000E1CC@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x40uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_100003EAC(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(result + 6) = *(v8 + 2);
    *(result + 2) = v9;
  }

  *(v7 + 7) = 0;
  *(a3 + 16) = 1;
  return result;
}

void sub_10000E258(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10000E0D0(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10000E274(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_10000455C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v16 = a1;
  if (v7)
  {
    v8 = sub_10000575C(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[8 * v2];
  __p = v8;
  v13 = v9;
  *v9 = *a2;
  v14 = v9 + 8;
  v15 = &v8[8 * v7];
  sub_10000E390(a1, &__p);
  v10 = *(a1 + 8);
  if (v14 != v13)
  {
    v14 += (v13 - v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_10000E358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_10000E390(uint64_t **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

uint64_t **sub_10000E3FC(uint64_t **a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = *(v6 + 8);
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x98uLL);
    *(v11 + 8) = **a4;
    *(v11 + 132) = 0u;
    *(v11 + 120) = 0u;
    *(v11 + 104) = 0u;
    *(v11 + 88) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 40) = 0u;
    sub_10000DEDC(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

void sub_10000E4DC(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10000E518(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

void sub_10000E518(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v11 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      sub_10000455C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v17 = a1;
    if (v9)
    {
      v10 = sub_100004574(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    __p = v10;
    v14 = &v10[12 * v6];
    v16 = &v10[12 * v9];
    v12 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v14, v12);
    v15 = &v14[v12];
    sub_100004EE8(a1, &__p);
    if (v15 != v14)
    {
      v15 = &v14[(v15 - v14 - 12) % 0xCuLL];
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_10000E6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000E6F4(void *a1, unint64_t a2)
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
    sub_10000E7FC(a1, a2 - v2);
  }
}

void sub_10000E724(uint64_t a1, unint64_t a2)
{
  if (a2 > (*(a1 + 16) - *a1) >> 3)
  {
    if (a2 >> 61)
    {
      sub_10000455C();
    }

    v3 = *(a1 + 8) - *a1;
    v9 = a1;
    __p = sub_10000575C(a1, a2);
    v6 = __p + v3;
    v7 = __p + v3;
    v8 = __p + 8 * v4;
    sub_10000E390(a1, &__p);
    if (v7 != v6)
    {
      v7 += (v6 - v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_10000E7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000E7FC(uint64_t a1, unint64_t a2)
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
      sub_10000455C();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v16 = a1;
    if (v10)
    {
      v11 = sub_10000575C(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    __p = v11;
    v13 = &v11[8 * v8];
    v15 = &v11[8 * v10];
    bzero(v13, 8 * a2);
    v14 = &v13[8 * a2];
    sub_10000E390(a1, &__p);
    if (v14 != v13)
    {
      v14 += (v13 - v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_10000E90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fileFormatUtils::makeValidIdentifier(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  memset(&v16, 0, sizeof(v16));
  v3 = *(a1 + 23);
  v4 = a1[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a1 + 23);
  }

  if (v4)
  {
    v6 = 0;
    v7 = v3 >> 63;
    do
    {
      if (v7)
      {
        v8 = *a1;
      }

      else
      {
        v8 = a1;
      }

      v9 = *(v8 + v6);
      if (v9 < 0)
      {
        v10 = __maskrune(v9, 0x500uLL);
      }

      else
      {
        v10 = _DefaultRuneLocale.__runetype[v9] & 0x500;
      }

      if (v10)
      {
        if (*(a1 + 23) >= 0)
        {
          v11 = a1;
        }

        else
        {
          v11 = *a1;
        }

        std::string::push_back(&v16, *(v11 + v6));
      }

      else
      {
        std::string::append(&v16, "_");
      }

      ++v6;
      v12 = *(a1 + 23);
      v7 = v12 >> 63;
      if ((v12 & 0x80000000) != 0)
      {
        v12 = a1[1];
      }
    }

    while (v6 < v12);
    v13 = v16.__r_.__value_.__r.__words[0];
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v16;
    }

    v14 = v13->__r_.__value_.__s.__data_[0];
    if ((v14 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v14] & 0x400) != 0)
    {
      std::operator+<char>();
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      v16 = v15;
    }

    *a2 = v16;
  }

  else
  {
    sub_100005C7C(a2, "defaultIdentifier");
  }
}

void sub_10000EAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fileFormatUtils::fixExponent(std::string *a1)
{
  sub_100005C7C(&v57, "+e");
  sub_100005C7C(&__p, "e+");
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (size >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1->__r_.__value_.__r.__words[0];
  }

  if (size < 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if ((v59 & 0x80u) == 0)
  {
    v4 = &v57;
  }

  else
  {
    v4 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v5 = v59;
  }

  else
  {
    v5 = v58;
  }

  if (v5)
  {
    if (size >= v5)
    {
      v6 = &size[v3];
      v7 = *v4;
      v8 = v3;
      do
      {
        v9 = &size[-v5];
        if (v9 == -1)
        {
          break;
        }

        v10 = memchr(v8, v7, (v9 + 1));
        if (!v10)
        {
          break;
        }

        v11 = v10;
        if (!memcmp(v10, v4, v5))
        {
          if (v11 != v6)
          {
            v12 = &v11[-v3];
            if (&v11[-v3] != -1)
            {
              goto LABEL_21;
            }
          }

          break;
        }

        v8 = v11 + 1;
        size = (v6 - (v11 + 1));
      }

      while (size >= v5);
    }
  }

  else
  {
    v12 = 0;
LABEL_21:
    if ((v56 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v56 & 0x80u) == 0)
    {
      v14 = v56;
    }

    else
    {
      v14 = v55;
    }

    std::string::replace(a1, v12, v5, p_p, v14);
  }

  if (v56 < 0)
  {
    operator delete(__p);
  }

  if (v59 < 0)
  {
    operator delete(v57);
  }

  sub_100005C7C(&v57, "+E");
  sub_100005C7C(&__p, "e+");
  v15 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v15 >= 0)
  {
    v16 = a1;
  }

  else
  {
    v16 = a1->__r_.__value_.__r.__words[0];
  }

  if (v15 < 0)
  {
    v15 = a1->__r_.__value_.__l.__size_;
  }

  if ((v59 & 0x80u) == 0)
  {
    v17 = &v57;
  }

  else
  {
    v17 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v18 = v59;
  }

  else
  {
    v18 = v58;
  }

  if (v18)
  {
    if (v15 >= v18)
    {
      v19 = &v15[v16];
      v20 = *v17;
      v21 = v16;
      do
      {
        v22 = &v15[-v18];
        if (v22 == -1)
        {
          break;
        }

        v23 = memchr(v21, v20, (v22 + 1));
        if (!v23)
        {
          break;
        }

        v24 = v23;
        if (!memcmp(v23, v17, v18))
        {
          if (v24 != v19)
          {
            v25 = &v24[-v16];
            if (&v24[-v16] != -1)
            {
              goto LABEL_52;
            }
          }

          break;
        }

        v21 = v24 + 1;
        v15 = (v19 - (v24 + 1));
      }

      while (v15 >= v18);
    }
  }

  else
  {
    v25 = 0;
LABEL_52:
    if ((v56 & 0x80u) == 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p;
    }

    if ((v56 & 0x80u) == 0)
    {
      v27 = v56;
    }

    else
    {
      v27 = v55;
    }

    std::string::replace(a1, v25, v18, v26, v27);
  }

  if (v56 < 0)
  {
    operator delete(__p);
  }

  if (v59 < 0)
  {
    operator delete(v57);
  }

  sub_100005C7C(&v57, "-e");
  sub_100005C7C(&__p, "e-");
  v28 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v28 >= 0)
  {
    v29 = a1;
  }

  else
  {
    v29 = a1->__r_.__value_.__r.__words[0];
  }

  if (v28 < 0)
  {
    v28 = a1->__r_.__value_.__l.__size_;
  }

  if ((v59 & 0x80u) == 0)
  {
    v30 = &v57;
  }

  else
  {
    v30 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v31 = v59;
  }

  else
  {
    v31 = v58;
  }

  if (v31)
  {
    if (v28 >= v31)
    {
      v32 = &v28[v29];
      v33 = *v30;
      v34 = v29;
      do
      {
        v35 = &v28[-v31];
        if (v35 == -1)
        {
          break;
        }

        v36 = memchr(v34, v33, (v35 + 1));
        if (!v36)
        {
          break;
        }

        v37 = v36;
        if (!memcmp(v36, v30, v31))
        {
          if (v37 != v32)
          {
            v38 = &v37[-v29];
            if (&v37[-v29] != -1)
            {
              goto LABEL_83;
            }
          }

          break;
        }

        v34 = v37 + 1;
        v28 = (v32 - (v37 + 1));
      }

      while (v28 >= v31);
    }
  }

  else
  {
    v38 = 0;
LABEL_83:
    if ((v56 & 0x80u) == 0)
    {
      v39 = &__p;
    }

    else
    {
      v39 = __p;
    }

    if ((v56 & 0x80u) == 0)
    {
      v40 = v56;
    }

    else
    {
      v40 = v55;
    }

    std::string::replace(a1, v38, v31, v39, v40);
  }

  if (v56 < 0)
  {
    operator delete(__p);
  }

  if (v59 < 0)
  {
    operator delete(v57);
  }

  sub_100005C7C(&v57, "-E");
  sub_100005C7C(&__p, "e-");
  v41 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v41 >= 0)
  {
    v42 = a1;
  }

  else
  {
    v42 = a1->__r_.__value_.__r.__words[0];
  }

  if (v41 < 0)
  {
    v41 = a1->__r_.__value_.__l.__size_;
  }

  if ((v59 & 0x80u) == 0)
  {
    v43 = &v57;
  }

  else
  {
    v43 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v44 = v59;
  }

  else
  {
    v44 = v58;
  }

  if (v44)
  {
    if (v41 >= v44)
    {
      v45 = &v41[v42];
      v46 = *v43;
      v47 = v42;
      do
      {
        v48 = &v41[-v44];
        if (v48 == -1)
        {
          break;
        }

        v49 = memchr(v47, v46, (v48 + 1));
        if (!v49)
        {
          break;
        }

        v50 = v49;
        if (!memcmp(v49, v43, v44))
        {
          if (v50 != v45)
          {
            v51 = &v50[-v42];
            if (&v50[-v42] != -1)
            {
              goto LABEL_114;
            }
          }

          break;
        }

        v47 = v50 + 1;
        v41 = (v45 - (v50 + 1));
      }

      while (v41 >= v44);
    }
  }

  else
  {
    v51 = 0;
LABEL_114:
    if ((v56 & 0x80u) == 0)
    {
      v52 = &__p;
    }

    else
    {
      v52 = __p;
    }

    if ((v56 & 0x80u) == 0)
    {
      v53 = v56;
    }

    else
    {
      v53 = v55;
    }

    std::string::replace(a1, v51, v44, v52, v53);
  }

  if (v56 < 0)
  {
    operator delete(__p);
  }

  if (v59 < 0)
  {
    operator delete(v57);
  }
}

void sub_10000EF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

float fileFormatUtils::getFloat(uint64_t *a1)
{
  memset(&__p, 0, sizeof(__p));
  sub_100002080(a1, &__p);
  fileFormatUtils::fixExponent(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v2 = strtod(p_p, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_10000F01C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fileFormatUtils::Asset::getPath(fileFormatUtils::Asset *this@<X0>, std::string *a2@<X8>)
{
  sub_100005C7C(&v11, "/");
  v6 = *(this + 1);
  v5 = this + 8;
  v4 = v6;
  v7 = v5[23];
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    v9 = v5[23];
  }

  else
  {
    v9 = *(v5 + 1);
  }

  v10 = std::string::append(&v11, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_10000F0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fileFormatUtils::Asset::getMaterialsPath(fileFormatUtils::Asset *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 55) < 0)
  {
    if (*(this + 5))
    {
      goto LABEL_11;
    }
  }

  else if (*(this + 55))
  {
LABEL_9:
    *a2 = *(this + 2);
    *(a2 + 16) = *(this + 6);
    return;
  }

  fileFormatUtils::Asset::getPath(this, &__p);
  v4 = std::string::append(&__p, "/Materials");
  v5 = v4->__r_.__value_.__r.__words[0];
  v9[0] = v4->__r_.__value_.__l.__size_;
  *(v9 + 7) = *(&v4->__r_.__value_.__r.__words[1] + 7);
  v6 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v7 = v9[0];
  *(this + 4) = v5;
  *(this + 5) = v7;
  *(this + 47) = *(v9 + 7);
  *(this + 55) = v6;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((*(this + 55) & 0x80) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_11:
  sub_100003EAC(a2, *(this + 4), *(this + 5));
}

void sub_10000F1EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fileFormatUtils::Asset::getGeomPath(fileFormatUtils::Asset *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 79) < 0)
  {
    if (*(this + 8))
    {
      goto LABEL_11;
    }
  }

  else if (*(this + 79))
  {
LABEL_9:
    *a2 = *(this + 56);
    *(a2 + 16) = *(this + 9);
    return;
  }

  fileFormatUtils::Asset::getPath(this, &__p);
  v4 = std::string::append(&__p, "/Geom");
  v5 = v4->__r_.__value_.__r.__words[0];
  v9[0] = v4->__r_.__value_.__l.__size_;
  *(v9 + 7) = *(&v4->__r_.__value_.__r.__words[1] + 7);
  v6 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  v7 = v9[0];
  *(this + 7) = v5;
  *(this + 8) = v7;
  *(this + 71) = *(v9 + 7);
  *(this + 79) = v6;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((*(this + 79) & 0x80) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_11:
  sub_100003EAC(a2, *(this + 7), *(this + 8));
}

void sub_10000F320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fileFormatUtils::Asset::initStage(fileFormatUtils::Asset *this)
{
  v2 = operator new(0x68uLL);
  sub_100006C58(v2);
  *this = v2;
  std::string::operator=((v2 + 64), (this + 8));
  return *this;
}

serialize::Mat *fileFormatUtils::Material::makeSerializeMaterial(fileFormatUtils::Material *this, fileFormatUtils::Asset *a2)
{
  fileFormatUtils::Asset::getMaterialsPath(a2, &v16);
  v4 = std::string::append(&v16, "/");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = *(this + 47);
  if (v6 >= 0)
  {
    v7 = this + 24;
  }

  else
  {
    v7 = *(this + 3);
  }

  if (v6 >= 0)
  {
    v8 = *(this + 47);
  }

  else
  {
    v8 = *(this + 4);
  }

  v9 = std::string::append(&v17, v7, v8);
  v10 = v9->__r_.__value_.__r.__words[0];
  size = v9->__r_.__value_.__l.__size_;
  v18[0] = v9->__r_.__value_.__r.__words[2];
  *(v18 + 3) = *(&v9->__r_.__value_.__r.__words[2] + 3);
  v12 = SHIBYTE(v9->__r_.__value_.__r.__words[2]);
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v13 = operator new(0x40uLL);
  v14 = v13;
  *v13 = off_1000145D0;
  *(v13 + 2) = 6;
  if (v12 < 0)
  {
    sub_100003EAC(v13 + 16, v10, size);
  }

  else
  {
    *(v13 + 2) = v10;
    *(v13 + 3) = size;
    *(v13 + 8) = v18[0];
    *(v13 + 35) = *(v18 + 3);
    v13[39] = v12;
  }

  *(v14 + 5) = 0;
  *(v14 + 6) = 0;
  *(v14 + 7) = 0;
  *v14 = &off_100014730;
  fileFormatUtils::Material::updateSerializeMaterial(this, v14, *a2);
  serialize::Prim::addChild(*a2, v14);
  if (v12 < 0)
  {
    operator delete(v10);
  }

  return v14;
}

void sub_10000F524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  operator delete(v22);
  operator delete(v21);
  _Unwind_Resume(a1);
}

void fileFormatUtils::Material::updateSerializeMaterial(uint64_t **this, serialize::Mat *a2, serialize::Stage *a3)
{
  fileFormatUtils::Material::_makeTextureShaderNames(this);
  for (i = 0; i != 7; ++i)
  {
    fileFormatUtils::Material::_addMapToSerializeMaterial(this, i, a2);
  }
}

void fileFormatUtils::Material::_makeTextureShaderNames(uint64_t **this)
{
  v2 = 0;
  v3 = this + 1;
  do
  {
    v48 = v2;
    v4 = *v3;
    if (*v3)
    {
      v5 = v3;
      do
      {
        if (*(v4 + 32) >= v2)
        {
          v5 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v2));
      }

      while (v4);
      if (v5 != v3 && *(v5 + 8) <= v2)
      {
        __str.__r_.__value_.__r.__words[0] = &v48;
        v6 = sub_10000E3FC(this, &v48, &std::piecewise_construct, &__str);
        v7 = v6;
        if (*(v6 + 87) < 0)
        {
          if (!v6[9])
          {
            goto LABEL_9;
          }
        }

        else if (!*(v6 + 87))
        {
          goto LABEL_9;
        }

        if (*(v6 + 135) < 0)
        {
          if (v6[15])
          {
            goto LABEL_9;
          }
        }

        else if (*(v6 + 135))
        {
          goto LABEL_9;
        }

        v8 = (v6 + 5);
        sub_10000FC90(v48, &__str);
        v44 = 0;
        v45 = 0;
        v46 = 0;
        __p.__r_.__value_.__r.__words[0] = (v7 + 5);
        sub_100008440(&v44, &__p);
        if (!v48 || (v9 = (v7 + 8), v10 = v2, v2 > 5))
        {
LABEL_86:
          v38 = v44;
          v39 = v45;
          if (v44 != v45)
          {
            do
            {
              std::string::operator=(*v38++ + 3, &__str);
            }

            while (v38 != v39);
            v38 = v44;
          }

          if (v38)
          {
            v45 = v38;
            operator delete(v38);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          goto LABEL_9;
        }

        while (1)
        {
          v11 = v10 + 1;
          v43 = v10 + 1;
          v12 = *v3;
          if (!*v3)
          {
            goto LABEL_80;
          }

          v13 = v3;
          do
          {
            if (*(v12 + 32) > v10)
            {
              v13 = v12;
            }

            v12 = *(v12 + 8 * (*(v12 + 32) <= v10));
          }

          while (v12);
          if (v13 == v3 || *(v13 + 8) > v11)
          {
            goto LABEL_80;
          }

          __p.__r_.__value_.__r.__words[0] = &v43;
          v14 = sub_10000E3FC(this, &v43, &std::piecewise_construct, &__p);
          v15 = v14;
          v16 = *(v14 + 87);
          if (v16 < 0)
          {
            v17 = v14[9];
            if (v17)
            {
              goto LABEL_32;
            }
          }

          else if (*(v14 + 87))
          {
            v17 = v14[9];
LABEL_32:
            if (v16 >= 0)
            {
              v18 = *(v14 + 87);
            }

            else
            {
              v18 = v17;
            }

            v19 = *(v7 + 87);
            v20 = v19;
            if (v19 < 0)
            {
              v19 = v7[9];
            }

            if (v18 == v19)
            {
              v21 = v16 >= 0 ? v14 + 8 : v14[8];
              v22 = *v9;
              v23 = v20 >= 0 ? v7 + 8 : *v9;
              if (!memcmp(v21, v23, v18))
              {
                v40 = (v15 + 5);
                v24 = *(v7 + 34);
                v25 = *(v15 + 34);
                v26 = *(v7 + 63);
                v27 = v26 < 0 ? v7[6] : *(v7 + 63);
                if (v27 != 1)
                {
                  goto LABEL_66;
                }

                v28 = *(v15 + 63);
                v29 = v28 < 0 ? v15[6] : *(v15 + 63);
                if (v29 != 1)
                {
                  goto LABEL_66;
                }

                if (v26 >= 0)
                {
                  v30 = *(v7 + 63);
                }

                else
                {
                  v30 = v7[6];
                }

                v31 = v15[6];
                if (v28 >= 0)
                {
                  v31 = *(v15 + 63);
                }

                if (v30 != v31 || (v26 >= 0 ? (v32 = v7 + 5) : (v32 = *v8), (v33 = *v40, v28 >= 0) ? (v34 = v15 + 5) : (v34 = *v40), memcmp(v32, v34, v30) || v24 == v25 && *(v7 + 35) == *(v15 + 35) && *(v7 + 36) == *(v15 + 36)))
                {
LABEL_66:
                  sub_10000FC90(v43, &v41);
                  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v35.__i_ = &v41;
                  }

                  else
                  {
                    v35.__i_ = v41.__r_.__value_.__r.__words[0];
                  }

                  std::string::insert(&v41, v35, 95);
                  __p = v41;
                  memset(&v41, 0, sizeof(v41));
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    p_p = &__p;
                  }

                  else
                  {
                    p_p = __p.__r_.__value_.__r.__words[0];
                  }

                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = __p.__r_.__value_.__l.__size_;
                  }

                  std::string::append(&__str, p_p, size);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v41.__r_.__value_.__l.__data_);
                  }

                  __p.__r_.__value_.__r.__words[0] = (v15 + 5);
                  sub_100008440(&v44, &__p);
                }
              }
            }
          }

LABEL_80:
          v10 = v11;
          if (v11 == 6)
          {
            goto LABEL_86;
          }
        }
      }
    }

LABEL_9:
    ++v2;
  }

  while (v2 != 7);
}

void sub_10000F99C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void fileFormatUtils::Material::_addMapToSerializeMaterial(uint64_t a1, int a2, uint64_t a3)
{
  v22 = a2;
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = a1 + 8;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v5 != a1 + 8 && *(v5 + 32) <= a2)
    {
      v19 = &v22;
      v6 = sub_10000E3FC(a1, &v22, &std::piecewise_construct, &v19);
      sub_100010158(v22, &v19);
      v9 = v6 + 63;
      v8 = *(v6 + 63);
      if ((v8 & 0x8000000000000000) != 0)
      {
        v8 = v6[6];
      }

      v10 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v10 = v20;
      }

      if (v8 == v10)
      {
        v11 = (v6 + 5);
      }

      else
      {
        v11 = &v19;
      }

      if (v8 != v10)
      {
        v9 = &v21;
      }

      if (*v9 < 0)
      {
        if (v8 == v10)
        {
          v12 = (v6 + 6);
        }

        else
        {
          v12 = &v20;
        }

        v7 = sub_100003EAC(&__str, v11->__r_.__value_.__l.__data_, *v12);
      }

      else
      {
        __str = *v11;
      }

      if (*(v6 + 87) < 0)
      {
        if (v6[9])
        {
LABEL_25:
          if (*(a3 + 39) < 0)
          {
            v7 = sub_100003EAC(__p, *(a3 + 16), *(a3 + 24));
          }

          else
          {
            *__p = *(a3 + 16);
            v17 = *(a3 + 32);
          }

          Shader = fileFormatUtils::Material::_makeShader(v7, __p, (v6 + 5), v22, &__str);
          serialize::Prim::addChild(a3, Shader);
          if (SHIBYTE(v17) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_32;
        }
      }

      else if (*(v6 + 87))
      {
        goto LABEL_25;
      }

      v13 = operator new(0x68uLL);
      sub_100006D50(v13, v22);
      v14 = v6[17];
      *(v13 + 19) = *(v6 + 36);
      *(v13 + 68) = v14;
      std::string::operator=((v13 + 80), &__str);
      serialize::Prim::addChild(a3, v13);
LABEL_32:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v21 < 0)
      {
        operator delete(v19);
      }
    }
  }
}

void sub_10000FBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

BOOL fileFormatUtils::Material::hasInput(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v5 == v2 || *(v5 + 32) > a2)
  {
LABEL_8:
    v5 = v2;
  }

  return v5 != v2;
}

void sub_10000FC90(int a1@<W0>, uint64_t a2@<X8>)
{
  sub_100005C7C(v6, "normal");
  sub_100005C7C(v7, "diffuseColor");
  sub_100005C7C(v8, "opacity");
  sub_100005C7C(v9, "emissiveColor");
  sub_100005C7C(v10, "occlusion");
  sub_100005C7C(v11, "metallic");
  sub_100005C7C(v12, "roughness");
  v4 = &v6[3 * a1];
  if (*(v4 + 23) < 0)
  {
    sub_100003EAC(a2, *v4, v4[1]);
  }

  else
  {
    *a2 = *v4;
    *(a2 + 16) = v4[2];
  }

  for (i = 0; i != -21; i -= 3)
  {
    if (SHIBYTE(v12[i + 2]) < 0)
    {
      operator delete(v12[i]);
    }
  }
}

void sub_10000FDE0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  v33 = &a32;
  v34 = -168;
  v35 = &a32;
  while (1)
  {
    v36 = *v35;
    v35 -= 24;
    if (v36 < 0)
    {
      operator delete(*(v33 - 23));
    }

    v33 = v35;
    v34 += 24;
    if (!v34)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

char *fileFormatUtils::Material::_makeShader(uint64_t a1, const void **a2, uint64_t a3, int a4, const std::string *a5)
{
  v9 = operator new(0xB0uLL);
  if (*(a2 + 23) >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  v11 = &v31;
  sub_1000051AC(&v31, v10 + 1);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v31.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    memmove(v11, v12, v10);
  }

  *(&v11->__r_.__value_.__l.__data_ + v10) = 47;
  v13 = *(a3 + 95);
  if (v13 >= 0)
  {
    v14 = (a3 + 72);
  }

  else
  {
    v14 = *(a3 + 72);
  }

  if (v13 >= 0)
  {
    v15 = *(a3 + 95);
  }

  else
  {
    v15 = *(a3 + 80);
  }

  v16 = std::string::append(&v31, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v32, "_texture");
  v19 = *&v18->__r_.__value_.__l.__data_;
  v34 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  sub_100006E44(v9, a4, __p);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
    if (a4)
    {
LABEL_23:
      v20 = *(a3 + 96);
      if (SHIBYTE(a5->__r_.__value_.__r.__words[2]) < 0)
      {
        if (a5->__r_.__value_.__l.__size_ == 3 && *a5->__r_.__value_.__l.__data_ == 26482 && *(a5->__r_.__value_.__r.__words[0] + 2) == 98)
        {
LABEL_51:
          *(v9 + 17) = v20;
          v20 = *(a3 + 104);
          *(v9 + 18) = *(a3 + 100);
          goto LABEL_52;
        }

        if (a5->__r_.__value_.__l.__size_ == 1 && *a5->__r_.__value_.__l.__data_ == 103)
        {
          goto LABEL_47;
        }

        if (a5->__r_.__value_.__l.__size_ == 1 && *a5->__r_.__value_.__l.__data_ == 98)
        {
          goto LABEL_52;
        }

        if (a5->__r_.__value_.__l.__size_ != 1)
        {
LABEL_50:
          v27 = 68;
          goto LABEL_53;
        }

        v29 = *a5->__r_.__value_.__l.__data_;
      }

      else
      {
        v21 = HIBYTE(a5->__r_.__value_.__r.__words[2]);
        if (v21 != 1)
        {
          if (v21 != 3)
          {
            goto LABEL_50;
          }

          if (LOWORD(a5->__r_.__value_.__l.__data_) != 26482 || a5->__r_.__value_.__s.__data_[2] != 98)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        v29 = a5->__r_.__value_.__s.__data_[0];
        if (v29 == 98)
        {
LABEL_52:
          v27 = 76;
          goto LABEL_53;
        }

        if (v29 == 103)
        {
LABEL_47:
          v27 = 72;
          goto LABEL_53;
        }
      }

      if (v29 == 97)
      {
        v27 = 80;
        goto LABEL_53;
      }

      goto LABEL_50;
    }
  }

  else if (a4)
  {
    goto LABEL_23;
  }

  *&_Q0 = 0x4000000040000000;
  *(&_Q0 + 1) = 0x4000000040000000;
  *(v9 + 68) = _Q0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(v9 + 84) = _Q0;
  *(v9 + 23) = -1082130432;
  v20 = -1.0;
  v27 = 96;
LABEL_53:
  *&v9[v27] = v20;
  std::string::operator=((v9 + 104), (a3 + 24));
  std::string::operator=((v9 + 128), a5);
  return v9;
}

void sub_1000100FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  operator delete(v28);
  _Unwind_Resume(a1);
}

void sub_100010158(int a1@<W0>, uint64_t a2@<X8>)
{
  sub_100005C7C(v6, "rgb");
  sub_100005C7C(v7, "rgb");
  sub_100005C7C(v8, "a");
  sub_100005C7C(v9, "rgb");
  sub_100005C7C(v10, "r");
  sub_100005C7C(v11, "r");
  sub_100005C7C(v12, "r");
  v4 = &v6[3 * a1];
  if (*(v4 + 23) < 0)
  {
    sub_100003EAC(a2, *v4, v4[1]);
  }

  else
  {
    *a2 = *v4;
    *(a2 + 16) = v4[2];
  }

  for (i = 0; i != -21; i -= 3)
  {
    if (SHIBYTE(v12[i + 2]) < 0)
    {
      operator delete(v12[i]);
    }
  }
}

void sub_1000102A8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  v33 = &a32;
  v34 = -168;
  v35 = &a32;
  while (1)
  {
    v36 = *v35;
    v35 -= 24;
    if (v36 < 0)
    {
      operator delete(*(v33 - 23));
    }

    v33 = v35;
    v34 += 24;
    if (!v34)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void serialize::Prim::~Prim(serialize::Prim *this)
{
  *this = off_1000145D0;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  serialize::Prim::~Prim(this);

  operator delete(v1);
}

uint64_t serialize::Prim::release(serialize::Prim *this)
{
  v2 = *(this + 5);
  v3 = *(this + 6);
  if (v2 == v3)
  {
    goto LABEL_4;
  }

  do
  {
    v4 = *v2++;
    result = (*(*v4 + 16))(v4);
  }

  while (v2 != v3);
  if (this)
  {
LABEL_4:
    v6 = *(*this + 8);

    return v6(this);
  }

  return result;
}

void serialize::Prim::serialize(serialize::Prim *this, serialize::Serializer *a2)
{
  serialize::Serializer::sync(a2, "type", this + 2);
  serialize::Serializer::sync(a2, "path", (this + 16));

  serialize::Serializer::sync(a2, "children", this + 40);
}

void serialize::Prim::addChild(serialize::Prim *this, serialize::Prim *a2)
{
  v5 = *(this + 6);
  v4 = *(this + 7);
  if (v5 >= v4)
  {
    v7 = *(this + 5);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_10000455C();
    }

    v9 = v4 - v7;
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

    if (v11)
    {
      v12 = sub_10000575C(this + 40, v11);
    }

    else
    {
      v12 = 0;
    }

    v14 = &v12[8 * v11];
    v13 = &v12[8 * v8];
    *v13 = a2;
    v6 = v13 + 8;
    v15 = *(this + 5);
    v16 = *(this + 6) - v15;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], v15, v16);
    v18 = *(this + 5);
    *(this + 5) = v17;
    *(this + 6) = v6;
    *(this + 7) = v14;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 1;
  }

  *(this + 6) = v6;
}

void serialize::Stage::serialize(serialize::Stage *this, serialize::Serializer *a2)
{
  serialize::Prim::serialize(this, a2);
  serialize::Serializer::sync(a2, "defaultPrim", (this + 64));
  serialize::Serializer::sync(a2, "metersPerUnit", this + 22);
  serialize::Serializer::sync(a2, "startTimeCode", this + 23);
  serialize::Serializer::sync(a2, "endTimeCode", this + 24);

  serialize::Serializer::sync(a2, "timeCodesPerSecond", this + 25);
}

void serialize::PointCloud::serialize(serialize::PointCloud *this, serialize::Serializer *a2)
{
  serialize::Prim::serialize(this, a2);
  serialize::Serializer::sync(a2, "vertices", this + 64);
  serialize::Serializer::sync(a2, "colors", this + 88);

  serialize::Serializer::sync(a2, "materialPath", (this + 112));
}

void serialize::Mesh::serialize(serialize::Mesh *this, serialize::Serializer *a2)
{
  serialize::Prim::serialize(this, a2);
  serialize::Serializer::sync(a2, "faceVertexCounts", this + 8);
  serialize::Serializer::sync(a2, "indices", this + 11);
  serialize::Serializer::sync(a2, "uvIndices", this + 14);
  serialize::Serializer::sync(a2, "normalIndices", this + 17);
  serialize::Serializer::sync(a2, "vertices", this + 160);
  serialize::Serializer::sync(a2, "normals", this + 184);
  serialize::Serializer::sync(a2, "colors", this + 208);
  serialize::Serializer::sync(a2, "uvs", this + 232);
  serialize::Serializer::sync(a2, "normalInterpolation", this + 64);
  serialize::Serializer::sync(a2, "colorInterpolation", this + 65);
  serialize::Serializer::sync(a2, "uvInterpolation", this + 66);

  serialize::Serializer::sync(a2, "materialPath", (this + 272));
}

void serialize::Subset::serialize(serialize::Subset *this, serialize::Serializer *a2)
{
  serialize::Prim::serialize(this, a2);
  serialize::Serializer::sync(a2, "faces", this + 8);
  serialize::Serializer::sync(a2, "name", (this + 88));

  serialize::Serializer::sync(a2, "materialPath", (this + 112));
}

void serialize::MapInput::serialize(serialize::MapInput *this, serialize::Serializer *a2)
{
  serialize::Prim::serialize(this, a2);
  serialize::Serializer::sync(a2, "inputName", this + 16);
  serialize::Serializer::sync(a2, "value", this + 17);

  serialize::Serializer::sync(a2, "channels", (this + 80));
}

void serialize::Shader::serialize(serialize::Shader *this, serialize::Serializer *a2)
{
  serialize::Prim::serialize(this, a2);
  serialize::Serializer::sync(a2, "inputName", this + 16);
  serialize::Serializer::sync(a2, "scale", this + 17);
  serialize::Serializer::sync(a2, "bias", this + 21);
  serialize::Serializer::sync(a2, "file", (this + 104));
  serialize::Serializer::sync(a2, "channels", (this + 128));

  serialize::Serializer::sync(a2, "texCoordSet", (this + 152));
}

void sub_10001093C(void **this)
{
  *this = off_100014610;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  serialize::Prim::~Prim(this);
}

void sub_10001099C(void **this)
{
  *this = off_100014610;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  serialize::Prim::~Prim(this);

  operator delete(v2);
}

void sub_100010A00(void **this)
{
  *this = off_100014658;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  v2 = this[11];
  if (v2)
  {
    this[12] = v2;
    operator delete(v2);
  }

  v3 = this[8];
  if (v3)
  {
    this[9] = v3;
    operator delete(v3);
  }

  serialize::Prim::~Prim(this);
}

void sub_100010A80(void **this)
{
  *this = off_100014658;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  v2 = this[11];
  if (v2)
  {
    this[12] = v2;
    operator delete(v2);
  }

  v3 = this[8];
  if (v3)
  {
    this[9] = v3;
    operator delete(v3);
  }

  serialize::Prim::~Prim(this);

  operator delete(v4);
}

void sub_100010B08(void **a1)
{
  sub_100010E28(a1);

  operator delete(v1);
}

void sub_100010B30(void **this)
{
  *this = off_1000146E8;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  v2 = this[8];
  if (v2)
  {
    this[9] = v2;
    operator delete(v2);
  }

  serialize::Prim::~Prim(this);
}

void sub_100010BB0(void **this)
{
  *this = off_1000146E8;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  v2 = this[8];
  if (v2)
  {
    this[9] = v2;
    operator delete(v2);
  }

  serialize::Prim::~Prim(this);

  operator delete(v3);
}

void sub_100010C38(serialize::Prim *a1)
{
  serialize::Prim::~Prim(a1);

  operator delete(v1);
}

void sub_100010C60(void **this)
{
  *this = off_100014778;
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  serialize::Prim::~Prim(this);
}

void sub_100010CC0(void **this)
{
  *this = off_100014778;
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  serialize::Prim::~Prim(this);

  operator delete(v2);
}

void sub_100010D24(void **this)
{
  *this = off_1000147C0;
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  serialize::Prim::~Prim(this);
}

void sub_100010DA4(void **this)
{
  *this = off_1000147C0;
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  serialize::Prim::~Prim(this);

  operator delete(v2);
}

void sub_100010E28(void **this)
{
  *this = &off_1000146A0;
  if (*(this + 295) < 0)
  {
    operator delete(this[34]);
  }

  v2 = this[29];
  if (v2)
  {
    this[30] = v2;
    operator delete(v2);
  }

  v3 = this[26];
  if (v3)
  {
    this[27] = v3;
    operator delete(v3);
  }

  v4 = this[23];
  if (v4)
  {
    this[24] = v4;
    operator delete(v4);
  }

  v5 = this[20];
  if (v5)
  {
    this[21] = v5;
    operator delete(v5);
  }

  v6 = this[17];
  if (v6)
  {
    this[18] = v6;
    operator delete(v6);
  }

  v7 = this[14];
  if (v7)
  {
    this[15] = v7;
    operator delete(v7);
  }

  v8 = this[11];
  if (v8)
  {
    this[12] = v8;
    operator delete(v8);
  }

  v9 = this[8];
  if (v9)
  {
    this[9] = v9;
    operator delete(v9);
  }

  serialize::Prim::~Prim(this);
}

void sub_100010F28(void *a1)
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100010FD8;
  handler[3] = &unk_100014800;
  v1 = a1;
  v3 = v1;
  xpc_connection_set_event_handler(v1, handler);
  xpc_connection_resume(v1);
}

void sub_100010FD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = xpc_dictionary_get_remote_connection(v5);
  reply = xpc_dictionary_create_reply(v5);
  if (xpc_get_type(v5) != &_xpc_type_dictionary)
  {
    if (v6 && reply)
    {
      xpc_dictionary_set_string(reply, "error", "Wrong XPC message");
      xpc_connection_send_message(v6, reply);
    }

    goto LABEL_68;
  }

  v8 = xpc_dictionary_get_string(v5, "filename");
  if (!v8)
  {
    xpc_dictionary_set_string(reply, "error", "Filename was not specified");
    xpc_connection_send_message(v6, reply);
    goto LABEL_68;
  }

  v9 = v6;
  v34[0] = v9;
  memset(&v34[1], 0, 24);
  v10 = strlen(v8);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100003F40();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    p_dst = operator new(v13);
    __dst.__r_.__value_.__l.__size_ = v11;
    __dst.__r_.__value_.__r.__words[2] = v13 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v10;
    p_dst = &__dst;
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  memmove(p_dst, v8, v11);
LABEL_16:
  p_dst->__r_.__value_.__s.__data_[v11] = 0;
  *string = 0;
  v31 = 0;
  v32 = 0;
  v14 = xpc_dictionary_get_string(v5, "extensionToken");
  XpcSandbox::consumeExtension(v34, v14);
  memset(&__p, 0, sizeof(__p));
  memset(&v48, 0, sizeof(v48));
  v15 = std::string::rfind(&__dst, 47, 0xFFFFFFFFFFFFFFFFLL);
  v16 = std::string::rfind(&__dst, 46, 0xFFFFFFFFFFFFFFFFLL);
  if (v15 != -1)
  {
    v17 = v16;
    if (v16 != -1)
    {
      std::string::basic_string(&v51, &__dst, v15 + 1, v16 - (v15 + 1), v35);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v51;
      std::string::basic_string(&v51, &__dst, v17 + 1, 0xFFFFFFFFFFFFFFFFLL, v35);
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      v48 = v51;
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = (&v48 + HIBYTE(v48.__r_.__value_.__r.__words[2]));
      }

      else
      {
        v18 = (v48.__r_.__value_.__r.__words[0] + v48.__r_.__value_.__l.__size_);
      }

      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v48;
      }

      else
      {
        v19 = v48.__r_.__value_.__r.__words[0];
      }

      while (v19 != v18)
      {
        v19->__r_.__value_.__s.__data_[0] = __tolower(v19->__r_.__value_.__s.__data_[0]);
        v19 = (v19 + 1);
      }
    }
  }

  sub_10000A4E4(&v51);
  if (!v52)
  {
    goto LABEL_55;
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v48.__r_.__value_.__l.__size_ == 3)
    {
      v22 = v48.__r_.__value_.__r.__words[0];
      if (*v48.__r_.__value_.__l.__data_ != 25199 || *(v48.__r_.__value_.__r.__words[0] + 2) != 106)
      {
        if (*v48.__r_.__value_.__l.__data_ != 29811 || *(v48.__r_.__value_.__r.__words[0] + 2) != 108)
        {
          goto LABEL_51;
        }

LABEL_70:
        StlConverter::StlConverter(v35, &v51, &__p);
        Stage = StlConverter::makeStage(v35);
        StlConverter::~StlConverter(v35);
        goto LABEL_56;
      }

LABEL_69:
      ObjConverter::ObjConverter(v35, &v51, &__p, &__dst, v34);
      Stage = ObjConverter::makeStage(v35);
      ObjConverter::~ObjConverter(v35);
      goto LABEL_56;
    }

LABEL_55:
    Stage = 0;
    goto LABEL_56;
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) != 3)
  {
    goto LABEL_55;
  }

  if (LOWORD(v48.__r_.__value_.__l.__data_) == 25199 && v48.__r_.__value_.__s.__data_[2] == 106)
  {
    goto LABEL_69;
  }

  if (LOWORD(v48.__r_.__value_.__l.__data_) == 29811 && v48.__r_.__value_.__s.__data_[2] == 108)
  {
    goto LABEL_70;
  }

  v22 = &v48;
LABEL_51:
  data_low = LOWORD(v22->__r_.__value_.__l.__data_);
  v26 = v22->__r_.__value_.__s.__data_[2];
  if (data_low != 27760 || v26 != 121)
  {
    goto LABEL_55;
  }

  PlyConverter::PlyConverter(v35, &v51, &__p);
  Stage = PlyConverter::makeStage(v35);
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v37 < 0)
  {
    operator delete(v36);
  }

  v50 = v35;
  sub_1000042B8(&v50);
LABEL_56:
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (Stage)
    {
      goto LABEL_60;
    }

LABEL_62:
    xpc_dictionary_set_string(reply, "error", "Can't load file.");
    goto LABEL_63;
  }

  if (!Stage)
  {
    goto LABEL_62;
  }

LABEL_60:
  serialize::Serializer::Serializer(&v51);
  v29 = serialize::Serializer::save(&v51, Stage);
  (*(*Stage + 16))(Stage);
  xpc_dictionary_set_value(reply, "object", v29);
  xpc_dictionary_set_string(reply, "error", string);

LABEL_63:
  xpc_connection_send_message(v9, reply);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(*string);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  XpcSandbox::~XpcSandbox(v34);
LABEL_68:
}

void sub_100011628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100011750(&a26);
  std::ios::~ios();
  if (a72 < 0)
  {
    operator delete(__p);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  XpcSandbox::~XpcSandbox(&a22);

  _Unwind_Resume(a1);
}

uint64_t sub_100011750(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    *(a1 + 128) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    *(a1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    *(a1 + 56) = v6;
    operator delete(v6);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v8 = a1;
  sub_1000042B8(&v8);
  return a1;
}

void sub_1000117E8(void **a1, void **a2, void **a3, uint64_t a4)
{
  v7 = *a1;
  if (v7)
  {
    *(a4 + 96) = v7;
    operator delete(v7);
  }

  v8 = *a2;
  if (*a2)
  {
    *(a4 + 64) = v8;
    operator delete(v8);
  }

  v9 = *a3;
  if (*a3)
  {
    *(a4 + 40) = v9;
    operator delete(v9);
  }

  v10 = *a4;
  if (*a4)
  {
    *(a4 + 8) = v10;

    operator delete(v10);
  }
}

uint64_t std::istream::seekg()
{
  return std::istream::seekg();
}

{
  return std::istream::seekg();
}

uint64_t std::istream::operator>>()
{
  return std::istream::operator>>();
}

{
  return std::istream::operator>>();
}

{
  return std::istream::operator>>();
}

{
  return std::istream::operator>>();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}