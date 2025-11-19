std::locale *sub_10001CC18(std::locale *a1)
{
  a1->__locale_ = off_1000FE7B8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_1000FE6F8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_10001CCA4(std::locale *a1)
{
  a1->__locale_ = off_1000FE7B8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_1000FE6F8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_10001CD50(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

uint64_t sub_10001CE64(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = off_1000FE800;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *sub_10001CEF4(std::locale *a1)
{
  a1->__locale_ = off_1000FE800;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_100016EC0(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_1000FE6F8;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_10001CF90(std::locale *a1)
{
  a1->__locale_ = off_1000FE800;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_100016EC0(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_1000FE6F8;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}

void sub_10001D04C(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0uLL;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  v20 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v21 = 0;
  *&v22 = v5;
  *(&v22 + 1) = v5;
  v23 = 0;
  sub_10001D5F8(&__p, v4, &v22);
  v24 = v6;
  v25 = v6;
  v26 = 0;
  v27 = v22;
  v28 = v23;
  v30 = v6;
  v29 = 1;
  v7 = *(a2 + 88) & 0xFFF;
  v8 = *(a2 + 16);
  if (v8 == *(a2 + 8))
  {
    v9 = *(a2 + 92);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 84) == sub_10001D248(a1 + 16, v8, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v9))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v10 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v10 = __p;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v20 - __p) >> 3);
  if (v11 < 2)
  {
LABEL_10:
    if (!v10)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = *(a1 + 80);
  v13 = *(a2 + 32);
  v14 = 2;
  v15 = 1;
  do
  {
    v16 = &v10[24 * v15];
    v17 = v13 + 24 * v12;
    *v17 = *v16;
    *(v17 + 16) = v16[16];
    v15 = v14;
    ++v12;
  }

  while (v11 > v14++);
LABEL_11:
  v20 = v10;
  operator delete(v10);
}

void sub_10001D1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10001D1D4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5)
{
  *(a1 + 24) = a4;
  v8 = (a1 + 24);
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  result = sub_10001D5F8(a1, a2, (a1 + 24));
  *(a1 + 48) = a3;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = *v8;
  *(a1 + 88) = *(a1 + 40);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = a3;
  }

  *(a1 + 96) = 1;
  return result;
}

uint64_t sub_10001D248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  *&v40 = a3;
  *(&v40 + 1) = a3;
  v41 = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  sub_10001D800(&v42, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v43;
  *(v43 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  sub_10001D8DC((v13 - 64), *(a1 + 28), &v40);
  sub_10001D918((v43 - 40), *(a1 + 32));
  v14 = v43;
  *(v43 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      sub_10001D948();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          sub_10001E104(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          sub_10001E184(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          sub_10001D800(&v42, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          sub_10001D9A0();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v43;
    ++v15;
    if (v42 == v43)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v43 - 96;
    sub_10001DCC0(&v42, (v43 - 96));
    v43 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v42;
  sub_10001E234(v36);
  return v24;
}

void sub_10001D5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  sub_10001D898(&a11);
  a11 = v16 - 112;
  sub_10001E234(&a11);
  _Unwind_Resume(a1);
}

char *sub_10001D5F8(char **a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      sub_10001D75C(a1, v9);
    }

    sub_100017658();
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = *(a3 + 16);
    v15 = result;
    do
    {
      *v15 = v13;
      v15[16] = v14;
      v15 += 24;
      --v12;
    }

    while (v12);
  }

  if (a2 <= v11)
  {
    a1[1] = &result[24 * a2];
  }

  else
  {
    v16 = &v10[24 * (a2 - v11)];
    v17 = 24 * a2 - 8 * ((v10 - result) >> 3);
    do
    {
      v18 = *a3;
      *(v10 + 2) = *(a3 + 2);
      *v10 = v18;
      v10 += 24;
      v17 -= 24;
    }

    while (v17);
    a1[1] = v16;
  }

  return result;
}

void sub_10001D75C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_10001D7A8(a1, a2);
  }

  sub_100017658();
}

void sub_10001D7A8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100016D60();
}

uint64_t sub_10001D800(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_10001D9F8(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void *sub_10001D898(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_10001D8DC(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    sub_10001DE20(a1, v5, a3);
  }

  else if (!v4)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_10001D918(void *a1, unint64_t a2)
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
    sub_10001DFA8(a1, a2 - v2);
  }
}

void sub_10001D948()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_complexity);
}

void sub_10001D9A0()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_unknown);
}

uint64_t sub_10001D9F8(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_100017658();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_10001DB70(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = *(a1 + 8);
  v11 = 96 * v2 + *a1 - v10;
  sub_10001DBC8(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_10001DDA4(&v16);
  return v15;
}

void sub_10001DB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10001DDA4(va);
  _Unwind_Resume(a1);
}

void sub_10001DB70(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100016D60();
}

uint64_t sub_10001DBC8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 1);
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v7 + 2);
      *(a4 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v7 + 7);
      *(a4 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v9 = v7[10];
      *(a4 + 85) = *(v7 + 85);
      *(a4 + 80) = v9;
      v7 += 12;
      a4 += 96;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      sub_10001DCC0(a1, v5);
      v5 += 12;
    }
  }

  return sub_10001DD18(v11);
}

void sub_10001DCC0(uint64_t a1, void *a2)
{
  v3 = a2[7];
  if (v3)
  {
    a2[8] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

uint64_t sub_10001DD18(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10001DD50(a1);
  }

  return a1;
}

void sub_10001DD50(uint64_t *a1)
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
      v3 -= 12;
      sub_10001DCC0(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_10001DDA4(void **a1)
{
  sub_10001DDD8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10001DDD8(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 96;
    sub_10001DCC0(v4, (i - 96));
  }
}

void sub_10001DE20(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[1];
  v6 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 24 * a2;
      v12 = 24 * a2;
      do
      {
        v13 = *a3;
        *(v5 + 16) = *(a3 + 2);
        *v5 = v13;
        v5 += 24;
        v12 -= 24;
      }

      while (v12);
      v5 = v11;
    }

    a1[1] = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100017658();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
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

    if (v10)
    {
      sub_10001D7A8(a1, v10);
    }

    v14 = 24 * a2;
    v15 = 24 * v7;
    do
    {
      v16 = *a3;
      *(v15 + 16) = *(a3 + 2);
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    v17 = *a1;
    v18 = a1[1];
    v19 = 24 * v7 + *a1 - v18;
    if (v18 != *a1)
    {
      v20 = 24 * v7 + *a1 - v18;
      do
      {
        v21 = *v17;
        *(v20 + 16) = v17[2];
        *v20 = v21;
        v20 += 24;
        v17 += 3;
      }

      while (v17 != v18);
      v17 = *a1;
    }

    *a1 = v19;
    a1[1] = 24 * v7 + 24 * a2;
    a1[2] = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void sub_10001DFA8(uint64_t a1, unint64_t a2)
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
      sub_100017658();
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
      sub_10001E0BC(a1, v9);
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

void sub_10001E0BC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100016D60();
}

uint64_t sub_10001E104(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10001D75C(result, a4);
  }

  return result;
}

void sub_10001E168(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10001E184(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10001E1F8(result, a4);
  }

  return result;
}

void sub_10001E1DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001E1F8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_10001E0BC(a1, a2);
  }

  sub_100017658();
}

void sub_10001E234(void ***a1)
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
        v4 -= 12;
        sub_10001DCC0(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned __int8 *sub_10001E2BC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      sub_10001E748();
    }

    v7 = sub_10001E7A0(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = sub_10001E858(a1, v3 + 1, a3), v7 == v5))
    {
      v9 = sub_10001E928(a1, v3 + 1, a3, 0);
      if (v9 != v5)
      {
        return v9;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

_BYTE *sub_10001E364(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      v3 = a2[1] == 94;
      sub_10001FA04();
    }

    sub_100020C18();
  }

  return a2;
}

uint64_t sub_10001E480(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_10001E508(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

void sub_10001E588()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_badrepeat);
}

unsigned __int8 *sub_10001E5E0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x7800000080004F1) == 0;
    if (v4 && (v3 - 123) >= 3)
    {
      sub_10001EC18(a1);
    }
  }

  return a2;
}

void *sub_10001E650(void *a1)
{
  *a1 = off_1000FE6F8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10001E6BC(void *a1)
{
  *a1 = off_1000FE6F8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void sub_10001E748()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_escape);
}

unsigned __int8 *sub_10001E7A0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 48)
    {
      sub_10001EC18(a1);
    }

    if ((v4 - 49) <= 8)
    {
      v5 = (v4 - 48);
      v6 = a2 + 1;
      if (v6 == a3)
      {
        goto LABEL_10;
      }

      do
      {
        v7 = *v6;
        if ((v7 - 48) > 9)
        {
          break;
        }

        if (v5 >= 0x19999999)
        {
          goto LABEL_13;
        }

        v5 = v7 + 10 * v5 - 48;
        ++v6;
      }

      while (v6 != a3);
      if (v5)
      {
LABEL_10:
        if (v5 <= *(a1 + 28))
        {
          sub_10001EDB0(a1);
        }
      }

LABEL_13:
      sub_10001ED58();
    }
  }

  return a2;
}

unsigned __int8 *sub_10001E858(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x63)
  {
    if (v3 == 119)
    {
      goto LABEL_11;
    }

    if (v3 == 115)
    {
LABEL_12:
      sub_10001FA04();
    }

    if (v3 != 100)
    {
      return a2;
    }

LABEL_10:
    sub_10001FA04();
  }

  switch(v3)
  {
    case 'D':
      goto LABEL_10;
    case 'S':
      goto LABEL_12;
    case 'W':
LABEL_11:
      sub_10001FA04();
  }

  return a2;
}

unsigned __int8 *sub_10001E928(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 > 0x71u)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (!this)
        {
          goto LABEL_67;
        }

        v8 = this;
        v9 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_62;
        }

        if (!this)
        {
          goto LABEL_67;
        }

        v8 = this;
        v9 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_69;
        }

        v10 = a2[1];
        if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
        {
          goto LABEL_69;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_69;
        }

        v11 = *v4;
        v12 = -48;
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
        {
          v11 |= 0x20u;
          if ((v11 - 97) >= 6)
          {
            goto LABEL_69;
          }

          v12 = -87;
        }

        v6 = 16 * (v12 + v11);
LABEL_39:
        if (v4 + 1 == a3)
        {
          goto LABEL_69;
        }

        v13 = v4[1];
        v14 = -48;
        if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
        {
          v13 |= 0x20u;
          if ((v13 - 97) >= 6)
          {
            goto LABEL_69;
          }

          v14 = -87;
        }

        if (v4 + 2 != a3)
        {
          v15 = v4[2];
          v16 = -48;
          if ((v15 & 0xF8) == 0x30 || (v15 & 0xFE) == 0x38)
          {
            goto LABEL_49;
          }

          v15 |= 0x20u;
          if ((v15 - 97) < 6)
          {
            v16 = -87;
LABEL_49:
            if (!this)
            {
              sub_10001EC18(a1);
            }

            std::string::operator=(this, v16 + v15 + 16 * (v14 + v6 + v13));
            v4 += 3;
            return v4;
          }
        }

LABEL_69:
        sub_10001E748();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_39;
        }

LABEL_62:
        if ((v5 & 0x80) == 0 && (*(*(*(a1 + 8) + 16) + 4 * v5) & 0x500) != 0)
        {
          goto LABEL_69;
        }

        v9 = *a2;
        if (this)
        {
          v8 = this;
          goto LABEL_66;
        }

LABEL_67:
        sub_10001EC18(a1);
      }

      if (!this)
      {
        goto LABEL_67;
      }

      v8 = this;
      v9 = 11;
    }

LABEL_66:
    std::string::operator=(v8, v9);
    return ++v4;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!this)
      {
        goto LABEL_67;
      }

      v8 = this;
      v9 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_62;
      }

      if (!this)
      {
        goto LABEL_67;
      }

      v8 = this;
      v9 = 10;
    }

    goto LABEL_66;
  }

  if (v5 == 48)
  {
    if (!this)
    {
      goto LABEL_67;
    }

    v8 = this;
    v9 = 0;
    goto LABEL_66;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_69;
    }

    goto LABEL_62;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_69;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_69;
  }

  if (!this)
  {
    sub_10001EC18(a1);
  }

  std::string::operator=(this, v7 & 0x1F);
  v4 += 2;
  return v4;
}

void sub_10001EC18(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_10001ED58()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_backref);
}

void sub_10001EDB0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_10001EEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_1000FE890;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_10001EF6C(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  v1->__locale_ = off_1000FE6F8;
  locale = v1[1].__locale_;
  if (locale)
  {
    sub_1000C90AC(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *sub_10001EFAC(std::locale *a1)
{
  a1->__locale_ = off_1000FE890;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_1000FE6F8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_10001F038(std::locale *a1)
{
  a1->__locale_ = off_1000FE890;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_1000FE6F8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_10001F0E4(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_10001F178(std::locale *a1)
{
  a1->__locale_ = off_1000FE8D8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_1000FE6F8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_10001F204(std::locale *a1)
{
  a1->__locale_ = off_1000FE8D8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_1000FE6F8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_10001F2B0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void *sub_10001F2F8(void *a1)
{
  *a1 = off_1000FE6F8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10001F364(void *a1)
{
  *a1 = off_1000FE6F8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_10001F3F0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *sub_10001F438(std::locale *a1)
{
  a1->__locale_ = off_1000FE968;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_1000FE6F8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_10001F4C4(std::locale *a1)
{
  a1->__locale_ = off_1000FE968;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_1000FE6F8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_10001F570(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      v8 = *(v3 + 8) != *v3;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v9 = 0;
      while (1)
      {
        v10 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v9));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v9));
        if (v10 != result)
        {
          break;
        }

        if (v4 == ++v9)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *sub_10001F68C(std::locale *a1)
{
  a1->__locale_ = off_1000FE9B0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_1000FE6F8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_10001F718(std::locale *a1)
{
  a1->__locale_ = off_1000FE9B0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_1000FE6F8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_10001F7C4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = *(a2 + 16);
      v8 = v4;
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v7++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void *sub_10001F850(void *a1)
{
  *a1 = off_1000FE6F8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10001F8BC(void *a1)
{
  *a1 = off_1000FE6F8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

unsigned int *sub_10001F948(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_10001ED58();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void sub_10001FA98(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    sub_100020B28(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_100020B28(a1 + 40, &v7);
}

uint64_t sub_10001FB34(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = off_1000FEA40;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_10001FC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  sub_100020578(&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  sub_100019DA8(&a10);
  v15 = v10[8].__locale_;
  if (v15)
  {
    v10[9].__locale_ = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v10[6].__locale_ = v16;
    operator delete(v16);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v11;
  v17 = v10[1].__locale_;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(a1);
}

void sub_10001FD10(std::locale *a1)
{
  sub_10002061C(a1);

  operator delete();
}

void sub_10001FD48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v35 = 0;
    v36 = *(a1 + 168);
    goto LABEL_80;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_57;
  }

  v111 = *v4;
  v6 = v4[1];
  v112 = v4[1];
  if (*(a1 + 169) == 1)
  {
    v111 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v112 = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  sub_1000207BC(a1 + 16, &v111, &v113, &__p);
  if ((v110 & 0x80000000) == 0)
  {
    if (v110)
    {
      goto LABEL_8;
    }

LABEL_57:
    v36 = 0;
    v35 = 1;
    goto LABEL_58;
  }

  v37 = v109;
  operator delete(__p);
  if (!v37)
  {
    goto LABEL_57;
  }

LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    v10 = (v7 + 1);
    while (v111 != *(v10 - 1) || v112 != *v10)
    {
      v10 += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_215;
  }

LABEL_17:
  if (*(a1 + 170) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    p_p = &__p;
    sub_100020704(a1 + 16, &v111, &v113);
    v13 = *(a1 + 88);
    v14 = v110;
    v15 = *(a1 + 96) - v13;
    if (v15)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v105 = v110;
      if (v110 >= 0)
      {
        v17 = v110;
      }

      else
      {
        v17 = v109;
      }

      if (v110 < 0)
      {
        p_p = __p;
      }

      v18 = v16 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v19 = (v13 + 47);
      v20 = 1;
      v21 = 1;
      while (1)
      {
        v22 = *(v19 - 24);
        if (v22 >= 0)
        {
          v23 = *(v19 - 24);
        }

        else
        {
          v23 = *(v19 - 39);
        }

        if (v22 >= 0)
        {
          v24 = (v19 - 47);
        }

        else
        {
          v24 = *(v19 - 47);
        }

        if (v23 >= v17)
        {
          v25 = v17;
        }

        else
        {
          v25 = v23;
        }

        v26 = memcmp(p_p, v24, v25);
        v27 = v17 >= v23;
        if (v26)
        {
          v27 = v26 >= 0;
        }

        if (v27)
        {
          v28 = *v19;
          if (v28 >= 0)
          {
            v29 = *v19;
          }

          else
          {
            v29 = *(v19 - 15);
          }

          if (v28 >= 0)
          {
            v30 = (v19 - 23);
          }

          else
          {
            v30 = *(v19 - 23);
          }

          if (v17 >= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = v17;
          }

          v32 = memcmp(v30, p_p, v31);
          v33 = v29 >= v17;
          if (v32)
          {
            v33 = v32 >= 0;
          }

          if (v33)
          {
            break;
          }
        }

        v21 = v20++ < v16;
        v19 += 48;
        if (!--v18)
        {
          v34 = 0;
          goto LABEL_164;
        }
      }

      v34 = 5;
LABEL_164:
      v14 = v105;
    }

    else
    {
      v21 = 0;
      v34 = 0;
    }

    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v21)
    {
      v85 = 1;
      goto LABEL_195;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    v85 = 0;
    goto LABEL_197;
  }

  sub_100020A18(a1 + 16, &v111, &v113, &__p);
  v86 = *(a1 + 136);
  v87 = v110;
  v88 = *(a1 + 144) - v86;
  if (v88)
  {
    v89 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
    if (v110 >= 0)
    {
      v90 = v110;
    }

    else
    {
      v90 = v109;
    }

    if (v110 >= 0)
    {
      v91 = &__p;
    }

    else
    {
      v91 = __p;
    }

    if (v89 <= 1)
    {
      v92 = 1;
    }

    else
    {
      v92 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
    }

    v93 = 1;
    v94 = 1;
    while (1)
    {
      v95 = *(v86 + 23);
      v96 = v95;
      if ((v95 & 0x80u) != 0)
      {
        v95 = *(v86 + 8);
      }

      if (v90 == v95)
      {
        v97 = v96 >= 0 ? v86 : *v86;
        if (!memcmp(v91, v97, v90))
        {
          break;
        }
      }

      v94 = v93++ < v89;
      v86 += 24;
      if (!--v92)
      {
        goto LABEL_192;
      }
    }

    v85 = 1;
    v34 = 5;
    if (v87 < 0)
    {
LABEL_193:
      operator delete(__p);
    }
  }

  else
  {
    v94 = 0;
LABEL_192:
    v34 = 0;
    v85 = 0;
    if (v87 < 0)
    {
      goto LABEL_193;
    }
  }

  if (!v94)
  {
LABEL_197:
    if (v111 < 0)
    {
      v101 = *(a1 + 164);
    }

    else
    {
      v98 = *(a1 + 160);
      v99 = *(*(a1 + 24) + 16);
      v100 = *(v99 + 4 * v111);
      if (((v100 & v98) != 0 || v111 == 95 && (v98 & 0x80) != 0) && (v112 & 0x8000000000000000) == 0 && ((*(v99 + 4 * v112) & v98) != 0 || (v98 & 0x80) != 0 && v112 == 95))
      {
        goto LABEL_215;
      }

      v101 = *(a1 + 164);
      if ((v100 & v101) != 0 || v111 == 95 && (v101 & 0x80) != 0)
      {
LABEL_214:
        v36 = v85;
LABEL_216:
        v35 = 2;
        goto LABEL_80;
      }
    }

    if ((v112 & 0x8000000000000000) == 0)
    {
      if ((*(*(*(a1 + 24) + 16) + 4 * v112) & v101) == 0)
      {
        v36 = 1;
        if (v112 != 95 || (v101 & 0x80) == 0)
        {
          goto LABEL_216;
        }
      }

      goto LABEL_214;
    }

LABEL_215:
    v36 = 1;
    goto LABEL_216;
  }

LABEL_195:
  v35 = 2;
  v36 = v85;
  if (v34)
  {
    goto LABEL_80;
  }

LABEL_58:
  v38 = **(a2 + 16);
  v111 = **(a2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v38) = (*(**(a1 + 24) + 40))(*(a1 + 24), v38);
    v111 = v38;
  }

  v39 = *(a1 + 40);
  v40 = *(a1 + 48) - v39;
  if (v40)
  {
    if (v40 <= 1)
    {
      v40 = 1;
    }

    do
    {
      v41 = *v39++;
      if (v41 == v38)
      {
        goto LABEL_79;
      }
    }

    while (--v40);
  }

  v42 = *(a1 + 164);
  if (v42 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v38 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v38) & v42) == 0)
    {
      v43 = (v38 == 95) & (v42 >> 7);
    }

    else
    {
      LOBYTE(v43) = 1;
    }

    v44 = *(a1 + 72);
    v45 = memchr(*(a1 + 64), v38, v44 - *(a1 + 64));
    v46 = !v45 || v45 == v44;
    v47 = !v46;
    if ((v43 & 1) == 0 && !v47)
    {
LABEL_79:
      v36 = 1;
      goto LABEL_80;
    }
  }

  v50 = *(a1 + 88);
  v51 = *(a1 + 96);
  if (v50 != v51)
  {
    if (*(a1 + 170) == 1)
    {
      sub_100020704(a1 + 16, &v111, &v112);
      v50 = *(a1 + 88);
      v51 = *(a1 + 96);
    }

    else
    {
      v110 = 1;
      LOWORD(__p) = v38;
    }

    v52 = v51 - v50;
    if (v52)
    {
      v103 = v110;
      v106 = v35;
      v102 = v36;
      v53 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 4);
      if (v110 >= 0)
      {
        v54 = v110;
      }

      else
      {
        v54 = v109;
      }

      if (v110 >= 0)
      {
        v55 = &__p;
      }

      else
      {
        v55 = __p;
      }

      if (v53 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 4);
      }

      v57 = (v50 + 47);
      v58 = 1;
      v59 = 1;
      while (1)
      {
        v60 = *(v57 - 24);
        if (v60 >= 0)
        {
          v61 = *(v57 - 24);
        }

        else
        {
          v61 = *(v57 - 39);
        }

        if (v60 >= 0)
        {
          v62 = (v57 - 47);
        }

        else
        {
          v62 = *(v57 - 47);
        }

        if (v61 >= v54)
        {
          v63 = v54;
        }

        else
        {
          v63 = v61;
        }

        v64 = memcmp(v55, v62, v63);
        v65 = v54 >= v61;
        if (v64)
        {
          v65 = v64 >= 0;
        }

        if (v65)
        {
          v66 = *v57;
          if (v66 >= 0)
          {
            v67 = *v57;
          }

          else
          {
            v67 = *(v57 - 15);
          }

          if (v66 >= 0)
          {
            v68 = (v57 - 23);
          }

          else
          {
            v68 = *(v57 - 23);
          }

          if (v54 >= v67)
          {
            v69 = v67;
          }

          else
          {
            v69 = v54;
          }

          v70 = memcmp(v68, v55, v69);
          v71 = v67 >= v54;
          if (v70)
          {
            v71 = v70 >= 0;
          }

          if (v71)
          {
            break;
          }
        }

        v59 = v58++ < v53;
        v57 += 48;
        if (!--v56)
        {
          v36 = v102;
          goto LABEL_128;
        }
      }

      v36 = 1;
LABEL_128:
      v35 = v106;
      if ((v103 & 0x80) == 0)
      {
LABEL_130:
        if (v59)
        {
          goto LABEL_80;
        }

        goto LABEL_131;
      }
    }

    else
    {
      v59 = 0;
      if ((v110 & 0x80) == 0)
      {
        goto LABEL_130;
      }
    }

    operator delete(__p);
    goto LABEL_130;
  }

LABEL_131:
  if (*(a1 + 136) == *(a1 + 144))
  {
    goto LABEL_157;
  }

  v72 = &__p;
  sub_100020A18(a1 + 16, &v111, &v112, &__p);
  v73 = *(a1 + 136);
  v74 = *(a1 + 144) - v73;
  if (!v74)
  {
    v79 = 0;
    if ((v110 & 0x80) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_155;
  }

  v104 = v110;
  v107 = v35;
  v75 = 0xAAAAAAAAAAAAAAABLL * (v74 >> 3);
  if (v110 >= 0)
  {
    v76 = v110;
  }

  else
  {
    v76 = v109;
  }

  if (v110 < 0)
  {
    v72 = __p;
  }

  if (v75 <= 1)
  {
    v77 = 1;
  }

  else
  {
    v77 = 0xAAAAAAAAAAAAAAABLL * (v74 >> 3);
  }

  v78 = 1;
  v79 = 1;
  while (1)
  {
    v80 = *(v73 + 23);
    v81 = v80;
    if ((v80 & 0x80u) != 0)
    {
      v80 = *(v73 + 8);
    }

    if (v76 == v80)
    {
      v82 = v81 >= 0 ? v73 : *v73;
      if (!memcmp(v72, v82, v76))
      {
        break;
      }
    }

    v79 = v78++ < v75;
    v73 += 24;
    if (!--v77)
    {
      goto LABEL_154;
    }
  }

  v36 = 1;
LABEL_154:
  v35 = v107;
  if (v104 < 0)
  {
LABEL_155:
    operator delete(__p);
  }

LABEL_156:
  if (v79)
  {
    goto LABEL_80;
  }

LABEL_157:
  v83 = *(a1 + 160);
  if ((v111 & 0x8000000000000000) == 0 && (*(*(*(a1 + 24) + 16) + 4 * v111) & v83) != 0)
  {
    goto LABEL_79;
  }

  v84 = (v83 >> 7) & 1;
  if (v111 != 95)
  {
    LOBYTE(v84) = 0;
  }

  v36 |= v84;
LABEL_80:
  if (*(a1 + 168) == (v36 & 1))
  {
    v48 = 0;
    v49 = -993;
  }

  else
  {
    *(a2 + 16) += v35;
    v48 = *(a1 + 8);
    v49 = -995;
  }

  *a2 = v49;
  *(a2 + 80) = v48;
}

void sub_100020578(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000205CC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000205CC(void ***a1)
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

std::locale *sub_10002061C(std::locale *a1)
{
  a1->__locale_ = off_1000FEA40;
  v7 = a1 + 17;
  sub_100020578(&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  sub_100019DA8(&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_1000FE6F8;
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_100020704(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_100020968(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000207A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000207BC(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_100020968(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_100020934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100020968(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100016CB8();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void sub_100020A18(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_100020968(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100020B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100020B28(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_100017658();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_100020C18()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_brack);
}

unsigned __int8 *sub_100020C70(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return v4;
  }

  v6 = a4;
  memset(&v25, 0, sizeof(v25));
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_9:
    v11 = *(a1 + 24) & 0x1F0;
    goto LABEL_10;
  }

  v9 = a2[1];
  if (v9 != 46)
  {
    if (v9 == 58)
    {
      v10 = sub_1000211E0(a1, a2 + 2, a3, a4);
      goto LABEL_34;
    }

    if (v9 == 61)
    {
      v10 = sub_100021024(a1, a2 + 2, a3, a4);
LABEL_34:
      v6 = v10;
      v18 = 0;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v19 = sub_100021274(a1, a2 + 2, a3, &v25);
  v4 = v19;
  v11 = *(a1 + 24) & 0x1F0;
  size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v13 = v19;
  if (!size)
  {
LABEL_10:
    if ((v11 | 0x40) == 0x40)
    {
      v12 = *v4;
      if (v12 == 92)
      {
        if (v11)
        {
          v13 = sub_100021474(a1, v4 + 1, a3, &v25);
        }

        else
        {
          v13 = sub_10002133C(a1, v4 + 1, a3, &v25, v6);
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v12) = *v4;
    }

    std::string::operator=(&v25, v12);
    v13 = v4 + 1;
  }

LABEL_16:
  if (v13 == a3 || (v14 = *v13, v14 == 93) || (v16 = v13 + 1, v13 + 1 == a3) || v14 != 45 || *v16 == 93)
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v25.__r_.__value_.__l.__size_)
      {
        if (v25.__r_.__value_.__l.__size_ != 1)
        {
          v15 = v25.__r_.__value_.__r.__words[0];
LABEL_40:
          sub_100021A50(v6, v15->__r_.__value_.__s.__data_[0], v15->__r_.__value_.__s.__data_[1]);
          goto LABEL_41;
        }

        v15 = v25.__r_.__value_.__r.__words[0];
        goto LABEL_25;
      }
    }

    else if (*(&v25.__r_.__value_.__s + 23))
    {
      v15 = &v25;
      if (HIBYTE(v25.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_40;
      }

LABEL_25:
      sub_10001FA98(v6, v15->__r_.__value_.__s.__data_[0]);
    }

LABEL_41:
    v18 = 1;
    v4 = v13;
    goto LABEL_42;
  }

  memset(&v24, 0, sizeof(v24));
  v4 = v13 + 2;
  if (v13 + 2 != a3 && *v16 == 91 && *v4 == 46)
  {
    v17 = sub_100021274(a1, v13 + 3, a3, &v24);
LABEL_55:
    v4 = v17;
    goto LABEL_56;
  }

  if ((v11 | 0x40) == 0x40)
  {
    LODWORD(v16) = *v16;
    if (v16 == 92)
    {
      if (v11)
      {
        v17 = sub_100021474(a1, v13 + 2, a3, &v24);
      }

      else
      {
        v17 = sub_10002133C(a1, v13 + 2, a3, &v24, v6);
      }

      goto LABEL_55;
    }
  }

  else
  {
    LOBYTE(v16) = *v16;
  }

  std::string::operator=(&v24, v16);
LABEL_56:
  v23 = v25;
  memset(&v25, 0, sizeof(v25));
  __p = v24;
  memset(&v24, 0, sizeof(v24));
  sub_100021650(v6, &v23, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v18 = 1;
LABEL_42:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v18)
  {
    return v4;
  }

  return v6;
}

void sub_100020FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100021024(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_32;
  }

  v7 = a2;
  for (i = a2; ; v7 = i)
  {
    v9 = *i++;
    if (v9 == 61 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_32;
    }

    --v4;
  }

  if (v7 == a3)
  {
LABEL_32:
    sub_100020C18();
  }

  sub_1000207BC(a1, a2, v7, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_13;
    }

LABEL_33:
    sub_100021B2C();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  v11 = v19;
LABEL_13:
  sub_100020A18(a1, v11, &v11[v10], __p);
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    sub_100021B84((a4 + 136), __p);
  }

  else
  {
    v13 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v13 = v20;
    }

    if (v13 == 2)
    {
      v15 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v15 = v19;
      }

      sub_100021A50(a4, *v15, v15[1]);
    }

    else
    {
      if (v13 != 1)
      {
        sub_100021B2C();
      }

      v14 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v14 = v19;
      }

      sub_10001FA98(a4, *v14);
    }
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  return v7 + 2;
}

void sub_1000211A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1000211E0(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_10;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 58 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_10:
    sub_100020C18();
  }

  v9 = sub_100021EA8(a1, a2, v6, *(a1 + 24) & 1);
  if (!v9)
  {
    sub_100021E50();
  }

  *(a4 + 160) |= v9;
  return v6 + 2;
}

_BYTE *sub_100021274(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    sub_100020C18();
  }

  sub_1000207BC(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    sub_100021B2C();
  }

  return v6 + 2;
}

unsigned __int8 *sub_10002133C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_10001E748();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          goto LABEL_25;
        }

        *(a5 + 160) |= 0x500u;
        sub_10001FA98(a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        v9 = this;
        v10 = 8;
LABEL_19:
        std::string::operator=(v9, v10);
        return a2 + 1;
      }

      if (v6 != 100)
      {
        goto LABEL_25;
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (*a2)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_21:
        *(a5 + 164) = v7;
        return a2 + 1;
      }

      goto LABEL_25;
    }

    v9 = this;
    v10 = 0;
    goto LABEL_19;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_21;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    sub_100021F7C(a5, 95);
    return a2 + 1;
  }

LABEL_25:

  return sub_10001E928(a1, a2, a3, this);
}

unsigned __int8 *sub_100021474(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_43:
    sub_10001E748();
  }

  v5 = *a2;
  if (v5 <= 0x65u)
  {
    if (v5 <= 0x5Bu)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_32;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          v5 = 7;
          goto LABEL_31;
        }

        goto LABEL_40;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v5 = 8;
LABEL_31:
          std::string::operator=(v6, v5);
          return a2 + 1;
        }

        goto LABEL_40;
      }

      goto LABEL_32;
    }

    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  if (v5 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v5 = 12;
        goto LABEL_31;
      }

      goto LABEL_40;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v5 = 10;
        goto LABEL_31;
      }

      goto LABEL_40;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          v6 = this;
          v5 = 13;
          goto LABEL_31;
        }

        goto LABEL_40;
      case 't':
        if (this)
        {
          v6 = this;
          v5 = 9;
          goto LABEL_31;
        }

        goto LABEL_40;
      case 'v':
        if (this)
        {
          v6 = this;
          v5 = 11;
          goto LABEL_31;
        }

LABEL_40:
        sub_10001EC18(a1);
    }
  }

LABEL_32:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_43;
  }

  v7 = v5 - 48;
  v9 = a2 + 1;
  if (a2 + 1 != a3 && (*v9 & 0xF8) == 0x30)
  {
    v7 = *v9 + 8 * v7 - 48;
    v9 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v8 = *v9 + 8 * v7 - 48;
      if ((*v9 & 0xF8) == 0x30)
      {
        v9 = a2 + 3;
        v7 = v8;
      }
    }
  }

  if (!this)
  {
    sub_10001EC18(a1);
  }

  std::string::operator=(this, v7);
  return v9;
}

void sub_100021650(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = v4[23];
        v8 = v7 < 0 ? *(v4 + 1) : v4[23];
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 40))(*(a1 + 24), v9[i]);
        v11 = v4;
        if (v4[23] < 0)
        {
          v11 = *v4;
        }

        v11[i] = v10;
      }

      for (j = 0; ; ++j)
      {
        v20 = v3[23];
        v21 = v20 < 0 ? *(v3 + 1) : v3[23];
        if (j >= v21)
        {
          break;
        }

        v22 = v3;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = *v3;
        }

        v23 = (*(**(a1 + 24) + 40))(*(a1 + 24), v22[j]);
        v24 = v3;
        if (v3[23] < 0)
        {
          v24 = *v3;
        }

        v24[j] = v23;
      }
    }

    else
    {
      for (k = 0; ; ++k)
      {
        v15 = a2[23];
        v16 = v15 < 0 ? *(a2 + 1) : a2[23];
        if (k >= v16)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        v18 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *a2;
        }

        v18[k] = v17[k];
      }

      for (m = 0; ; ++m)
      {
        v26 = a3[23];
        v27 = v26 < 0 ? *(a3 + 1) : a3[23];
        if (m >= v27)
        {
          break;
        }

        v28 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v28 = *a3;
        }

        v29 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v29 = *a3;
        }

        v29[m] = v28[m];
      }
    }

    v30 = v4[23];
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = *(v31 + 1);
    }

    sub_100020704(a1 + 16, v4, &v4[v30]);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    sub_100020704(a1 + 16, v3, &v3[v32]);
    *v45 = v43;
    v46 = v44;
    *__p = *v41;
    v48 = v42;
    sub_100022018((a1 + 88), v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }

  else
  {
    v12 = a2[23];
    if (v12 < 0)
    {
      v13 = *(a2 + 1);
    }

    else
    {
      v13 = a2[23];
    }

    if (v13 != 1)
    {
      goto LABEL_74;
    }

    v34 = a3[23];
    if (v34 < 0)
    {
      v34 = *(a3 + 1);
    }

    if (v34 != 1)
    {
LABEL_74:
      sub_100022178();
    }

    if (*(a1 + 169) == 1)
    {
      v35 = a2;
      if ((v12 & 0x80000000) != 0)
      {
        v35 = *a2;
      }

      v36 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v35);
      v37 = v4;
      if (v4[23] < 0)
      {
        v37 = *v4;
      }

      *v37 = v36;
      v38 = v3;
      if (v3[23] < 0)
      {
        v38 = *v3;
      }

      v39 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v38);
      v40 = v3;
      if (v3[23] < 0)
      {
        v40 = *v3;
      }

      *v40 = v39;
    }

    *v45 = *v4;
    v46 = *(v4 + 2);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    *__p = *v3;
    v48 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    sub_100022018((a1 + 88), v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }
}

void sub_100021A50(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  sub_1000221D0(v6, v7);
}

void sub_100021B2C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_collate);
}

uint64_t sub_100021B84(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100021C24(a1, a2);
  }

  else
  {
    sub_100021BC4(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_100021BC4(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_1000732A4(result[1], *a2, *(a2 + 1));
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

uint64_t sub_100021C24(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100017658();
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
    sub_100021D64(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1000732A4(v7, *a2, *(a2 + 1));
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
  sub_100021DBC(&v17);
  return v11;
}

void sub_100021D50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100021DBC(va);
  _Unwind_Resume(a1);
}

void sub_100021D64(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100016D60();
}

uint64_t sub_100021DBC(uint64_t a1)
{
  sub_100021DF4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100021DF4(uint64_t a1, void **a2)
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

void sub_100021E50()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_ctype);
}

uint64_t sub_100021EA8(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  sub_100020968(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v7, v7 + v6);
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  classname = std::__get_classname(v8, a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return classname;
}

void sub_100021F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100021F7C(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 64;
    v4 = &v6;
LABEL_5:
    sub_100020B28(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 64;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_100020B28(a1 + 64, &v7);
}

void **sub_100022018(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_100017658();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = result;
    if (v12)
    {
      sub_100019B2C(result, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = 48 * v9 + 48;
    v16 = result[1] - *result;
    v17 = v13 - v16;
    memcpy((v13 - v16), *result, v16);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v8;
    v19 = v3[2];
    v3[2] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = sub_100019E30(v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 2) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 5) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = (v4 + 48);
  }

  v3[1] = v8;
  return result;
}

void sub_100022178()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_range);
}

void sub_1000221D0(uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 1;
    if (v7 <= -2)
    {
      sub_100017658();
    }

    v8 = v4 - *a1;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1000222A0(a1, v10);
    }

    v11 = (2 * v7);
    *v11 = *a2;
    v6 = 2 * v7 + 2;
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

void sub_1000222A0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_100016D60();
}

void *sub_1000222E4(void *a1)
{
  *a1 = off_1000FE6F8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100022350(void *a1)
{
  *a1 = off_1000FE6F8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1000223DC(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_10002240C(void *a1)
{
  *a1 = off_1000FE6F8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100022478(void *a1)
{
  *a1 = off_1000FE6F8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_100022504(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned __int8 *sub_1000226CC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((v4 & 0xF8) == 0x30 || (v4 & 0xFE) == 0x38)
    {
      v5 = v4 - 48;
      *a4 = v5;
      if (++a2 != a3)
      {
        do
        {
          v6 = *a2;
          if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
          {
            break;
          }

          if (v5 >= 214748364)
          {
            sub_100022768();
          }

          v5 = v6 + 10 * v5 - 48;
          *a4 = v5;
          ++a2;
        }

        while (a2 != a3);
      }
    }
  }

  return a2;
}

void sub_100022768()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_badbrace);
}

void sub_1000227C0()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_brace);
}

void sub_10002281C(void *a1)
{
  sub_100022970(a1);

  operator delete();
}

unsigned int *sub_100022854(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return sub_100022A24(result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *sub_100022904(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return sub_100022A24(result, a3);
  }

  return result;
}

void sub_100022938(void *a1)
{
  sub_100022970(a1);

  operator delete();
}

void *sub_100022970(void *a1)
{
  *a1 = off_1000FEB78;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_1000FE6F8;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unsigned int *sub_100022A24(unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_100022A8C(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_100022AA4(void *a1)
{
  sub_100022970(a1);

  operator delete();
}

uint64_t sub_100022AE8(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_100022B24(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_100022B38()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_empty);
}

unsigned __int8 *sub_100022B90(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_100022C2C(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v9 = (*(a1 + 28) + 1);

  return sub_100022D30(a1, v8, a3);
}

_BYTE *sub_100022C2C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v6 = sub_100022EF4(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3 && v6 + 1 != a3 && *v6 == 92)
  {
    v8 = v6[1];
    if (v8 == 40)
    {
      v9 = v6 + 2;
      sub_10001E480(a1);
      v10 = *(a1 + 28);
      do
      {
        v11 = v9;
        v12 = sub_100022B90(a1, v9, a3);
        v9 = v12;
      }

      while (v12 != v11);
      if (v11 == a3 || v12 + 1 == a3 || *v12 != 92 || v12[1] != 41)
      {
        sub_10001C914();
      }

      v7 = v12 + 2;
      sub_10001E508(a1);
    }

    else
    {
      v13 = sub_1000231E8(a1, v8);
      v14 = 2;
      if (!v13)
      {
        v14 = 0;
      }

      v7 += v14;
    }
  }

  return v7;
}

unsigned __int8 *sub_100022D30(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 42)
    {
      sub_10002253C();
    }

    if (a2 + 1 != a3 && v4 == 92 && a2[1] == 123)
    {
      v7 = a2 + 2;
      v13 = 0;
      v8 = sub_1000226CC(a1, a2 + 2, a3, &v13);
      if (v8 == v7)
      {
        goto LABEL_24;
      }

      if (v8 != a3)
      {
        v9 = v8 + 1;
        v10 = *v8;
        if (v10 == 44)
        {
          v12 = -1;
          v11 = sub_1000226CC(a1, v9, a3, &v12);
          if (v11 != a3 && v11 + 1 != a3 && *v11 == 92 && v11[1] == 125)
          {
            if (v12 == -1 || v12 >= v13)
            {
              sub_10002253C();
            }

LABEL_24:
            sub_100022768();
          }
        }

        else if (v9 != a3 && v10 == 92 && *v9 == 125)
        {
          sub_10002253C();
        }
      }

      sub_1000227C0();
    }
  }

  return a2;
}

_BYTE *sub_100022EF4(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3)
  {
    v6 = *a2;
    if ((a2 + 1 != a3 || v6 != 36) && ((v6 - 46) > 0x2E || ((1 << (v6 - 46)) & 0x600000000001) == 0))
    {
      sub_10001EC18(a1);
    }

    v8 = sub_100023038(a1, a2, a3);
    v9 = v8;
    if (v8 == a2)
    {
      if (*v8 == 46)
      {
        operator new();
      }

      goto LABEL_12;
    }

    return v9;
  }

  v9 = sub_100023038(a1, a2, a3);
  if (v9 != a2)
  {
    return v9;
  }

LABEL_12:

  return sub_10001E364(a1, a2, a3);
}

_BYTE *sub_100023038(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v3 = a2[1];
    if ((v3 - 36) <= 0x3A && ((1 << (v3 - 36)) & 0x580000000000441) != 0)
    {
      sub_10001EC18(a1);
    }
  }

  return a2;
}

void *sub_1000230B0(void *a1)
{
  *a1 = off_1000FE6F8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10002311C(void *a1)
{
  *a1 = off_1000FE6F8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1000231A8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_1000231E8(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_10001EDB0(a1);
    }

    sub_10001ED58();
  }

  return 0;
}

unsigned __int8 *sub_100023248(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_1000232A8(a1, a2, a3);
  if (v6 == a2)
  {
    sub_100022B38();
  }

  do
  {
    v7 = v6;
    v6 = sub_1000232A8(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *sub_1000232A8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_1000233EC(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        sub_10001C75C();
      case '(':
        sub_10001E480(a1);
        v11 = *(a1 + 28);
        ++*(a1 + 36);
        v12 = sub_10001B6A0(a1, v9 + 1, a3);
        if (v12 == a3 || (v13 = v12, *v12 != 41))
        {
          sub_10001C914();
        }

        sub_10001E508(a1);
        --*(a1 + 36);
        v9 = v13 + 1;
        break;
      case '^':
        sub_10001C6D8();
    }
  }

  if (v9 == a2)
  {
    return v9;
  }

  v14 = (*(a1 + 28) + 1);

  return sub_10001C3D4(a1, v9, a3);
}

unsigned __int8 *sub_1000233EC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_1000234E0(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = sub_10002356C(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return sub_10001E364(a1, a2, a3);
}

unsigned __int8 *sub_1000234E0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    v4 = (v3 - 36);
    if (v4 > 0x3A)
    {
      goto LABEL_8;
    }

    if (((1 << (v3 - 36)) & 0x5800000080004D1) != 0)
    {
      return a2;
    }

    if (v4 == 5)
    {
      if (*(a1 + 36))
      {
        return a2;
      }
    }

    else
    {
LABEL_8:
      if ((v3 - 123) < 2)
      {
        return a2;
      }
    }

    sub_10001EC18(a1);
  }

  return a2;
}

unsigned __int8 *sub_10002356C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a2 + 1;
  if (v3 + 1 == a3 || *v3 != 92)
  {
    return v3;
  }

  v5 = *v4;
  v6 = (v5 - 36) > 0x3A || ((1 << (v5 - 36)) & 0x5800000080004F1) == 0;
  if (!v6 || (v5 - 123) < 3)
  {
    sub_10001EC18(a1);
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v8 = sub_1000231E8(a1, v5);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    v3 += v9;
    return v3;
  }

  return sub_100021474(a1, v4, a3, 0);
}

std::string *sub_100023644(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6)
{
  v6 = a6;
  v9 = a2;
  sub_100023CE0(v29, a2, a3, a4, a6);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  *__p = 0u;
  memset(v20, 0, sizeof(v20));
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  if (sub_100023800(v29, v17))
  {
    if ((v6 & 0x200) == 0)
    {
      while (v9 != a3)
      {
        std::string::push_back(a1, *v9++);
      }
    }
  }

  else
  {
    v11 = strlen(a5);
    v12 = 0;
    v13 = 0;
    while (!sub_100023800(v29, v17))
    {
      if ((v6 & 0x200) == 0)
      {
        v14 = v30[6];
        v15 = v30[7];
        while (v14 != v15)
        {
          std::string::push_back(a1, *v14++);
        }
      }

      a1 = sub_10002389C(v30, a1, a5, &a5[v11], v6);
      v13 = v30[9];
      v12 = v30[10];
      if ((v6 & 0x400) != 0)
      {
        break;
      }

      sub_100023AFC(v29);
    }

    if ((v6 & 0x200) == 0)
    {
      while (v13 != v12)
      {
        std::string::push_back(a1, *v13++);
      }
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  return a1;
}

void sub_1000237C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100023800(uint64_t a1, uint64_t a2)
{
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v9 = a2 + 32;
  v7 = *(a2 + 32);
  v8 = *(v9 + 8);
  v10 = v8 == v7 && v5 == v4;
  if (v5 != v4 && v8 != v7)
  {
    return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && sub_100025CF0(v4, v7) == 0;
  }

  return v10;
}

std::string *sub_10002389C(std::string::value_type ***a1, std::string *this, unsigned __int8 *a3, unsigned __int8 *a4, __int16 a5)
{
  v6 = a3;
  if ((a5 & 0x100) != 0)
  {
    if (a3 == a4)
    {
      return this;
    }

    while (1)
    {
      v29 = *v6;
      if (v29 == 92)
      {
        v33 = v6 + 1;
        if (v6 + 1 != a4)
        {
          v29 = *v33;
          v34 = v29 - 48;
          if ((v29 - 48) <= 9)
          {
            v35 = &(*a1)[3 * (v29 - 48)];
            if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v34)
            {
              v35 = (a1 + 3);
            }

            v36 = *v35;
            v37 = *(v35 + 8);
            while (v36 != v37)
            {
              v38 = *v36++;
              std::string::push_back(this, v38);
            }

            goto LABEL_54;
          }

          ++v6;
        }
      }

      else if (v29 == 38)
      {
        v30 = **a1;
        v31 = (*a1)[1];
        while (v30 != v31)
        {
          v32 = *v30++;
          std::string::push_back(this, v32);
        }

        goto LABEL_53;
      }

      std::string::push_back(this, v29);
LABEL_53:
      v33 = v6;
LABEL_54:
      v6 = v33 + 1;
      if (v33 + 1 == a4)
      {
        return this;
      }
    }
  }

  if (a3 != a4)
  {
    do
    {
      v9 = *v6;
      v10 = v6 + 1;
      if (v9 == 36 && v10 != a4)
      {
        v9 = *v10;
        if (v9 > 0x26)
        {
          if (v9 == 39)
          {
            v26 = a1[9];
            v27 = a1[10];
            while (v26 != v27)
            {
              v28 = *v26++;
              std::string::push_back(this, v28);
            }

            goto LABEL_10;
          }

          if (v9 == 96)
          {
            v15 = a1[6];
            v16 = a1[7];
            while (v15 != v16)
            {
              v17 = *v15++;
              std::string::push_back(this, v17);
            }

            goto LABEL_10;
          }
        }

        else
        {
          if (v9 == 36)
          {
            goto LABEL_9;
          }

          if (v9 == 38)
          {
            v12 = **a1;
            v13 = (*a1)[1];
            while (v12 != v13)
            {
              v14 = *v12++;
              std::string::push_back(this, v14);
            }

            goto LABEL_10;
          }
        }

        LODWORD(v18) = v9 - 48;
        if (v18 <= 9)
        {
          v18 = v18;
          if (v6 + 2 != a4)
          {
            v19 = v6[2];
            v20 = v19 - 48;
            v21 = v19 + 10 * v18 - 48;
            if (v20 > 9)
            {
              v10 = v6 + 1;
            }

            else
            {
              v18 = v21;
              v10 = v6 + 2;
            }
          }

          if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v18)
          {
            v22 = (a1 + 3);
          }

          else
          {
            v22 = &(*a1)[3 * v18];
          }

          v23 = *v22;
          v24 = *(v22 + 8);
          while (v23 != v24)
          {
            v25 = *v23++;
            std::string::push_back(this, v25);
          }

          goto LABEL_10;
        }

        LOBYTE(v9) = 36;
      }

      v10 = v6;
LABEL_9:
      std::string::push_back(this, v9);
LABEL_10:
      v6 = v10 + 1;
    }

    while (v10 + 1 != a4);
  }

  return this;
}

uint64_t sub_100023AFC(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(v3 - 8);
  v5 = v4 | 0x800;
  *(v3 - 8) = v4 | 0x800;
  if (*(v3 + 8) == v2)
  {
    v6 = (v3 + 24);
  }

  else
  {
    v6 = v2;
  }

  v7 = v6[1];
  if (*v6 != v7)
  {
    v8 = v6[1];
LABEL_6:
    *(a1 + 24) = v5 | 0x80;
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    *__p = 0u;
    memset(v17, 0, sizeof(v17));
    v11 = sub_100023DE4(v9, v8, v10, __p, v5 | 0x80u);
    sub_100023FB0(v3, v8, v10, __p, (v5 & 0x800) != 0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v11)
    {
      *(a1 + 80) = v7;
      *(a1 + 96) = *(a1 + 88) != v7;
      return a1;
    }

    v2 = *v3;
    goto LABEL_16;
  }

  v12 = *(a1 + 8);
  if (v12 == v7)
  {
LABEL_16:
    if (v2)
    {
      *(a1 + 40) = v2;
      operator delete(v2);
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
    }

    *(a1 + 128) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 25) = 0u;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 136) = 0;
    return a1;
  }

  v13 = *(a1 + 16);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  *__p = 0u;
  memset(v17, 0, sizeof(v17));
  v14 = sub_100023DE4(v13, v7, v12, __p, v4 | 0x860u);
  sub_100023FB0(v3, v7, v12, __p, 1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if ((v14 & 1) == 0)
  {
    v8 = v7 + 1;
    v5 = *(a1 + 24);
    goto LABEL_6;
  }

  return a1;
}

void sub_100023CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100023CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0u;
  v9 = a1 + 32;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 57) = 0u;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  *__p = 0u;
  memset(v12, 0, sizeof(v12));
  sub_100023DE4(a4, a2, a3, __p, a5);
  sub_100023FB0(v9, a2, a3, __p, (v5 & 0x800) != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void sub_100023DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v10 + 40) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100023DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  sub_10001D1D4(a4, *(a1 + 28) + 1, a2, a3, (v9 & 0x800) >> 11);
  if (sub_100024134(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
  {
    if (*(a4 + 8) == *a4)
    {
      v10 = (a4 + 24);
    }

    else
    {
      v10 = *a4;
    }

LABEL_19:
    v16 = *v10;
    *(a4 + 56) = *v10;
    *(a4 + 64) = *(a4 + 48) != v16;
    v17 = v10[1];
    *(a4 + 72) = v17;
    *(a4 + 88) = v17 != *(a4 + 80);
    return 1;
  }

  if (a2 != a3 && (v9 & 0x40) == 0)
  {
    v11 = a2 + 1;
    if (v11 != a3)
    {
      v12 = (a4 + 24);
      do
      {
        sub_10001D5F8(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
        v13 = sub_100024134(a1, v11, a3, a4, v9 | 0x80u, 0);
        v15 = *a4;
        v14 = *(a4 + 8);
        if (v13)
        {
          goto LABEL_16;
        }

        sub_10001D5F8(a4, 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3), (a4 + 24));
      }

      while (++v11 != a3);
    }

    v12 = (a4 + 24);
    sub_10001D5F8(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
    if (sub_100024134(a1, v11, a3, a4, v9 | 0x80u, 0))
    {
      v15 = *a4;
      v14 = *(a4 + 8);
LABEL_16:
      if (v14 == v15)
      {
        v10 = v12;
      }

      else
      {
        v10 = v15;
      }

      goto LABEL_19;
    }
  }

  result = 0;
  *(a4 + 8) = *a4;
  return result;
}

void sub_100023FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  sub_100025B38(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  v11 = *a1;
  if (*(a1 + 8) == *a1)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      *(v11 + v12) = v14 + *v19;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12);
      }

      *(*a1 + v12 + 8) = v14 + v20[1];
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12);
      }

      v22 = *(v21 + 16);
      v11 = *a1;
      v23 = *(a1 + 8);
      *(*a1 + v12 + 16) = v22;
      ++v13;
      v12 += 24;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v11) >> 3));
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v24 = v14 + a4[6];
  *(a1 + 48) = v24;
  *(a1 + 56) = v14 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  *(a1 + 72) = v14 + a4[9];
  *(a1 + 80) = v14 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = v24;
  }

  *(a1 + 96) = *(a4 + 96);
}

uint64_t sub_100024134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    return sub_10001D248(a1, a2, a3, a4, a5, a6);
  }

  if (*(a1 + 28))
  {
    return sub_1000246A4(a1, a2, a3, a4, a5, a6);
  }

  return sub_100024154(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100024154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_70;
  }

  *v55 = 0;
  memset(&v55[8], 0, 32);
  v56 = 0uLL;
  *__p = 0uLL;
  memset(v58, 0, 21);
  sub_100024B90(&v59, v55);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v55[32])
  {
    *&v56 = *&v55[32];
    operator delete(*&v55[32]);
  }

  v51 = a4;
  v13 = v59.i64[1];
  v14 = *(&v61 + 1) + v61 - 1;
  v15 = v14 / 0x2A;
  v16 = *(v59.i64[1] + 8 * (v14 / 0x2A));
  v17 = 3 * (v14 % 0x2A);
  v18 = v16 + 32 * v17;
  *v18 = 0;
  *(v18 + 8) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 16) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 24) = a3;
  sub_10001D918((*(v13 + 8 * v15) + 32 * v17 + 56), *(a1 + 32));
  v54 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *(&v61 + 1);
  v22 = v59.i64[1];
  v23 = *(&v61 + 1) + v61 - 1;
  v24 = v23 / 0x2A;
  v25 = 3 * (v23 % 0x2A);
  *(*(v59.i64[1] + 8 * v24) + 32 * v25 + 80) = v6;
  v52 = a3;
  v53 = a2;
  v26 = a3 - a2;
  v27 = *(v22 + 8 * v24) + 32 * v25;
  *(v27 + 88) = a5;
  *(v27 + 92) = a6;
  do
  {
    if ((++v19 & 0xFFF) == 0 && (v19 >> 12) >= v26)
    {
      sub_10001D948();
    }

    v29 = *(v59.i64[1] + 8 * ((v21 + v61 - 1) / 0x2AuLL)) + 96 * ((v21 + v61 - 1) % 0x2AuLL);
    v30 = *(v29 + 80);
    if (v30)
    {
      (*(*v30 + 16))(v30, v29);
    }

    v31 = *v29;
    if (*v29 <= -995)
    {
      if (v31 != -1000)
      {
        if (v31 == -999)
        {
          goto LABEL_52;
        }

        if (v31 != -995)
        {
          goto LABEL_72;
        }

        sub_100024D1C(&v59, v29);
        goto LABEL_51;
      }

      v32 = *(v29 + 16);
      v34 = (a5 & 0x1000) == 0 || v32 == v52;
      v35 = v32 != v53 || (a5 & 0x20) == 0;
      if (!v35 || !v34)
      {
        goto LABEL_51;
      }

      v36 = v32 - *(v29 + 8);
      if (v20 <= v36)
      {
        v37 = v36;
      }

      else
      {
        v37 = v20;
      }

      if (v54)
      {
        v20 = v37;
      }

      else
      {
        v20 = v36;
      }

      if (v20 != v26)
      {
        sub_100024C94(&v59);
        v54 = 1;
        goto LABEL_52;
      }

      v38 = v59.i64[1];
      v39 = v60;
      if (v60 == v59.i64[1])
      {
        v39 = v59.i64[1];
      }

      else
      {
        v40 = (v59.i64[1] + 8 * (v61 / 0x2A));
        v41 = (*v40 + 96 * (v61 % 0x2A));
        v42 = *(v59.i64[1] + 8 * ((*(&v61 + 1) + v61) / 0x2AuLL)) + 96 * ((*(&v61 + 1) + v61) % 0x2AuLL);
        if (v41 != v42)
        {
          do
          {
            sub_10001DCC0(&v59, v41);
            v41 += 12;
            if ((v41 - *v40) == 4032)
            {
              v43 = v40[1];
              ++v40;
              v41 = v43;
            }
          }

          while (v41 != v42);
          v38 = v59.i64[1];
          v39 = v60;
        }
      }

      *(&v61 + 1) = 0;
      v46 = (v39 - v38) >> 3;
      if (v46 >= 3)
      {
        do
        {
          operator delete(*v38);
          v38 = (v59.i64[1] + 8);
          v59.i64[1] = v38;
          v46 = (v60 - v38) >> 3;
        }

        while (v46 > 2);
      }

      if (v46 == 1)
      {
        v47 = 21;
      }

      else
      {
        if (v46 != 2)
        {
LABEL_67:
          v54 = 1;
          v20 = v26;
          goto LABEL_52;
        }

        v47 = 42;
      }

      *&v61 = v47;
      goto LABEL_67;
    }

    if (v31 <= -993)
    {
      if (v31 == -994)
      {
        goto LABEL_52;
      }

      if (v31 != -993)
      {
        goto LABEL_72;
      }

LABEL_51:
      sub_100024C94(&v59);
      goto LABEL_52;
    }

    if (v31 == -992)
    {
      v44 = *(v29 + 16);
      *v55 = *v29;
      *&v55[16] = v44;
      v56 = 0uLL;
      *&v55[32] = 0;
      sub_10001E104(&v55[32], *(v29 + 32), *(v29 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 40) - *(v29 + 32)) >> 3));
      __p[0] = 0;
      __p[1] = 0;
      v58[0] = 0;
      sub_10001E184(__p, *(v29 + 56), *(v29 + 64), (*(v29 + 64) - *(v29 + 56)) >> 4);
      v45 = *(v29 + 80);
      *(&v58[1] + 5) = *(v29 + 85);
      v58[1] = v45;
      (*(**(v29 + 80) + 24))(*(v29 + 80), 1, v29);
      (*(*v58[1] + 24))(v58[1], 0, v55);
      sub_100024B90(&v59, v55);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*&v55[32])
      {
        *&v56 = *&v55[32];
        operator delete(*&v55[32]);
      }
    }

    else if (v31 != -991)
    {
LABEL_72:
      sub_10001D9A0();
    }

LABEL_52:
    v21 = *(&v61 + 1);
  }

  while (*(&v61 + 1));
  if ((v54 & 1) == 0)
  {
LABEL_70:
    v49 = 0;
    goto LABEL_71;
  }

  v48 = *v51;
  *v48 = v53;
  *(v48 + 8) = v53 + v20;
  v49 = 1;
  *(v48 + 16) = 1;
LABEL_71:
  sub_1000256D4(&v59);
  return v49;
}

uint64_t sub_1000246A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v53 = 0;
  v54 = 0;
  v55 = 0;
  *v50 = 0;
  memset(&v50[8], 0, 32);
  v51 = 0u;
  memset(v52, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_47;
  }

  *&v48 = a3;
  *(&v48 + 1) = a3;
  v49 = 0;
  *v44 = 0;
  memset(&v44[8], 0, 32);
  v45 = 0uLL;
  *__p = 0uLL;
  memset(v47, 0, 21);
  sub_10001D800(&v53, v44);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v44[32])
  {
    *&v45 = *&v44[32];
    operator delete(*&v44[32]);
  }

  v43 = a4;
  v13 = v54;
  *(v54 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  sub_10001D8DC(v13 - 8, *(a1 + 28), &v48);
  sub_10001D918(v54 - 5, *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v54;
  *(v54 - 2) = v6;
  v18 = a3 - a2;
  *(v17 - 2) = a5;
  *(v17 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v18;
    if (!v19)
    {
      sub_10001D948();
    }

    v21 = v17 - 2;
    v20 = *(v17 - 2);
    v22 = v17 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v17 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_33;
        case -992:
          v32 = *(v17 - 5);
          *v44 = *v22;
          *&v44[16] = v32;
          v45 = 0uLL;
          *&v44[32] = 0;
          sub_10001E104(&v44[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v47[0] = 0;
          sub_10001E184(__p, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
          v33 = *v21;
          *(&v47[1] + 5) = *(v17 - 11);
          v47[1] = v33;
          (*(**v21 + 24))(*v21, 1, v17 - 12);
          (*(*v47[1] + 24))(v47[1], 0, v44);
          sub_10001D800(&v53, v44);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v44[32])
          {
            *&v45 = *&v44[32];
            operator delete(*&v44[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_53:
          sub_10001D9A0();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_38;
      }

      if (v23 != -1000)
      {
        goto LABEL_53;
      }

      v24 = *(v17 - 10);
      if ((a5 & 0x20) != 0 && v24 == a2 || (a5 & 0x1000) != 0 && v24 != a3)
      {
LABEL_33:
        v31 = v54 - 12;
        sub_10001DCC0(&v53, v54 - 12);
        v54 = v31;
        goto LABEL_38;
      }

      v25 = v15;
      v26 = v24 - *(v17 - 11);
      if ((v25 & (v14 >= v26)) == 0)
      {
        v27 = *(v17 - 5);
        *v50 = *v22;
        *&v50[16] = v27;
        if (v50 != v22)
        {
          sub_100025888(&v50[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          sub_100025A14(v52, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
        }

        v28 = *v21;
        *(&v52[3] + 5) = *(v17 - 11);
        v52[3] = v28;
        v14 = v26;
      }

      v29 = v54;
      if (v14 == v18)
      {
        v30 = v53;
        while (v29 != v30)
        {
          v29 -= 12;
          sub_10001DCC0(&v53, v29);
        }

        v54 = v30;
        v15 = 1;
        v14 = a3 - a2;
      }

      else
      {
        v34 = v54 - 12;
        sub_10001DCC0(&v53, v54 - 12);
        v54 = v34;
        v15 = 1;
      }
    }

LABEL_38:
    v17 = v54;
  }

  while (v53 != v54);
  if ((v15 & 1) == 0)
  {
LABEL_47:
    v41 = 0;
    goto LABEL_48;
  }

  v35 = *v43;
  *v35 = a2;
  *(v35 + 8) = a2 + v14;
  *(v35 + 16) = 1;
  if (v51 != *&v50[32])
  {
    v36 = 0xAAAAAAAAAAAAAAABLL * ((v51 - *&v50[32]) >> 3);
    v37 = (*&v50[32] + 16);
    v38 = 1;
    do
    {
      v39 = v35 + 24 * v38;
      *v39 = *(v37 - 1);
      v40 = *v37;
      v37 += 24;
      *(v39 + 16) = v40;
      v19 = v36 > v38++;
    }

    while (v19);
  }

  v41 = 1;
LABEL_48:
  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  if (*&v50[32])
  {
    *&v51 = *&v50[32];
    operator delete(*&v50[32]);
  }

  *v50 = &v53;
  sub_10001E234(v50);
  return v41;
}

void sub_100024B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_10001D898(&a11);
  sub_10001D898(&a27);
  a27 = v27 - 120;
  sub_10001E234(&a27);
  _Unwind_Resume(a1);
}

__n128 sub_100024B90(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 42 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_100024E10(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x2A)) + 96 * (v8 % 0x2A);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0;
  *(v9 + 32) = *(a2 + 32);
  *(v9 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  result = *(a2 + 56);
  *(v9 + 56) = result;
  *(v9 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v12 = *(a2 + 80);
  *(v9 + 85) = *(a2 + 85);
  *(v9 + 80) = v12;
  ++*(a1 + 40);
  return result;
}

uint64_t sub_100024C94(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_10001DCC0(a1, (*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  --a1[5];

  return sub_10002540C(a1, 1);
}

int64x2_t sub_100024D1C(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_100025484(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x2A));
  v7 = *v6 + 96 * (v4 % 0x2A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4032;
  }

  v8 = *(a2 + 16);
  *(v7 - 96) = *a2;
  *(v7 - 80) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 64) = 0;
  *(v7 - 64) = *(a2 + 32);
  *(v7 - 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 40) = *(a2 + 56);
  *(v7 - 24) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 - 11) = *(a2 + 85);
  *(v7 - 16) = v9;
  result = vaddq_s64(a1[2], xmmword_1000D0900);
  a1[2] = result;
  return result;
}

void *sub_100024E10(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
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
    sub_100017670(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100024FE4(a1, &v10);
}

void sub_100024F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100024FE4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_100017670(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1000250EC(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_100017670(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_1000251F8(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_100017670(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_100025300(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_100017670(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t sub_10002540C(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
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

const void **sub_100025484(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x2A)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_100017670(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_1000250EC(a1, v11);
}

void sub_100025688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000256D4(void *a1)
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
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        sub_10001DCC0(a1, v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_100025838(a1);
}

uint64_t sub_100025838(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

_BYTE *sub_100025888(void *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_10001D75C(a1, v11);
    }

    sub_100017658();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      result[16] = *(v5 + 16);
      v5 += 24;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        result[16] = *(v5 + 16);
        v5 += 24;
        result += 24;
      }

      while (v5 != v13);
    }

    if (v13 == a3)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13;
        *(v12 + 16) = *(v13 + 2);
        *v12 = v15;
        v12 += 24;
        v13 = (v13 + 24);
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

char *sub_100025A14(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_10001E1F8(a1, v10);
    }

    sub_100017658();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      v18 = v5[1];
      v5 += 2;
      *result = v17;
      *(result + 1) = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        v13 = *v5;
        v14 = v5[1];
        v5 += 2;
        *result = v13;
        *(result + 1) = v14;
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v12++;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void sub_100025B38(uint64_t *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_100025B74(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_100025B74(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100017658();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
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

    if (v9)
    {
      sub_10001D7A8(a1, v9);
    }

    v12 = 24 * a2;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = 24 * v6 + *a1 - v15;
    if (v15 != *a1)
    {
      v17 = 24 * v6 + *a1 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 16) = v14[2];
        *v17 = v18;
        v17 += 24;
        v14 += 3;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = 24 * v6 + 24 * a2;
    a1[2] = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t sub_100025CF0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    sub_100020968(&__p, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    sub_100020968(&v15, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v17);
    v5 = v15;
    v4 = v16;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v6 = HIBYTE(v20);
  if (v20 >= 0)
  {
    v7 = HIBYTE(v20);
  }

  else
  {
    v7 = v19;
  }

  if (v20 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v3 & 0x80u) == 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = &v15;
  }

  else
  {
    v10 = v5;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(p_p, v10, v11);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_24;
  }

  operator delete(__p);
LABEL_24:
  v13 = v9 < v7;
  if (v7 < v9)
  {
    v13 = -1;
  }

  if (v12)
  {
    return v12;
  }

  else
  {
    return v13;
  }
}

void sub_100025E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100025E28(void ***a1)
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
        v3 -= 3;
        v5 = v3;
        sub_100017D7C(&v5);
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

uint64_t sub_100025E9C(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(&std::mutex::~mutex, a2, a3);
}

NSObject *RDQSRReplacementDictationaryWithEtiquettes(__CFString *a1)
{
  v1 = a1;
  v15 = 0;
  v2 = [NSData dataWithContentsOfFile:v1 options:0 error:&v15];
  v3 = v15;
  if (v2)
  {
    v14 = v3;
    v4 = [NSJSONSerialization JSONObjectWithData:v2 options:0 error:&v14];
    v5 = v14;

    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v17 = 1;
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_10002620C;
        v11[3] = &unk_1000FECC0;
        v12 = v1;
        v13 = buf;
        [v4 enumerateKeysAndObjectsUsingBlock:v11];
        if (*(*&buf[8] + 24))
        {
          v6 = v4;
        }

        else
        {
          v6 = 0;
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_17;
      }

      v7 = RXOSLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = objc_opt_class();
        *buf = 138412546;
        *&buf[4] = v1;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        v9 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ is wrong type: %@", buf, 0x16u);
      }
    }

    else
    {
      v7 = RXOSLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = v1;
        *&buf[12] = 2112;
        *&buf[14] = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not parse %@: %@", buf, 0x16u);
      }
    }

    v6 = 0;
LABEL_17:
    v3 = v5;
    goto LABEL_18;
  }

  v4 = RXOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    *&buf[4] = v1;
    *&buf[12] = 2112;
    *&buf[14] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not read %@: %@", buf, 0x16u);
  }

  v6 = 0;
LABEL_18:

  return v6;
}

void sub_10002620C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = RXOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 138412802;
      v12 = v10;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ contains bogus key/value pair: %@ => %@", &v11, 0x20u);
    }

    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

CFMutableStringRef RDLanguageAssets::createLanguageFromLocaleID(CFStringRef theString, const __CFString *a2)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  v4.length = CFStringGetLength(MutableCopy);
  v4.location = 0;
  CFStringFindAndReplace(MutableCopy, @"_", @"-", v4, 0);
  return MutableCopy;
}

CFMutableStringRef RDLanguageAssets::createLocaleIDFromLanguage(CFStringRef theString, const __CFString *a2)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  v4.length = CFStringGetLength(MutableCopy);
  v4.location = 0;
  CFStringFindAndReplace(MutableCopy, @"-", @"_", v4, 0);
  return MutableCopy;
}

id sub_100026418()
{
  if (qword_10010E498 != -1)
  {
    sub_1000C90D0();
  }

  v1 = qword_10010E490;

  return v1;
}

id RDLanguageAssets::InstallAndCopyQuasarModelPathForLanguage(const __CFString *this, const __CFString *a2)
{
  LocaleIDFromLanguage = RDLanguageAssets::createLocaleIDFromLanguage(this, a2);
  v4 = RXGetAssetFallbackLocaleIdentifier();
  CFRelease(LocaleIDFromLanguage);
  v5 = sub_100026418();
  v6 = v5;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = this;
  }

  v13 = 0;
  v8 = [v5 copyInstalledQuasarModelPathForLanguage:v7 error:&v13];
  v9 = v13;

  v10 = RXOSLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v15 = this;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "InstallAndCopyQuasarModelPathForLanguage language=%@ resultPath=%@", buf, 0x16u);
  }

  if (v9)
  {
    v11 = RXOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "InstallAndCopyQuasarModelPathForLanguage failed with: %@", buf, 0xCu);
    }
  }

  return v8;
}

id RDLanguageAssets::CopyInstalledAssetSupportedTasksForLanguage(const __CFString *this, const __CFString *a2)
{
  LocaleIDFromLanguage = RDLanguageAssets::createLocaleIDFromLanguage(this, a2);
  v3 = RXGetAssetFallbackLocaleIdentifier();
  if (v3)
  {
    v5 = CFRetain(v3);
    if (LocaleIDFromLanguage)
    {
      CFRelease(LocaleIDFromLanguage);
    }
  }

  else
  {
    v5 = LocaleIDFromLanguage;
  }

  LanguageFromLocaleID = RDLanguageAssets::createLanguageFromLocaleID(v5, v4);
  v7 = sub_100026418();
  v13 = 0;
  v8 = [v7 copyInstalledAssetSupportedTasksForLangaugeWithError:LanguageFromLocaleID error:&v13];
  v9 = v13;

  if (v9)
  {
    v10 = RXOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CopyAssetSupportedTasks failed with: %@", buf, 0xCu);
    }
  }

  if (LanguageFromLocaleID)
  {
    CFRelease(LanguageFromLocaleID);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v11 = RXOSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "RDLanguageAssets: supportedTasks:%@", buf, 0xCu);
  }

  return v8;
}

void sub_1000267A4(id a1)
{
  v1 = RXOSLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Using RDAssetManager2", v4, 2u);
  }

  v2 = +[RDAssetManager2 sharedInstance];
  v3 = qword_10010E490;
  qword_10010E490 = v2;
}

void RDQSRGrammarFst::Build(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  uint64 = xpc_dictionary_get_uint64(v3, kRDKeyObjectID);
  operator new();
}

void sub_100026F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a2)
  {
    (*(*a2 + 8))(a2);
  }

  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  if (a4)
  {
    (*(*a4 + 8))(a4);
  }

  if (a5)
  {
    (*(*a5 + 8))(a5);
  }

  sub_100027CE4(va);

  _Unwind_Resume(a1);
}

void RDQSRGrammarFst::Build(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __val = a2;
  v5 = *(a1 + 48);
  *buf = &__val;
  v6 = sub_100018774(v5, &__val)[5];
  v7 = v6;
  if (v6)
  {
    int64 = xpc_dictionary_get_int64(v6, kRDKeyObjectType);
    *buf = &__val;
    v9 = sub_100029B80(a1 + 56, &__val);
    v49 = *(v9 + 10);
    v48 = *(v9 + 11);
    if ((int64 - 10) >= 2)
    {
      if (int64 == 12)
      {
        string = xpc_dictionary_get_string(v7, kRDKeyText);
        sub_1000113AC(buf, string);
        v17 = HIBYTE(v55);
        v18 = HIBYTE(v55);
        if (v55 < 0)
        {
          v17 = *&buf[8];
        }

        if (v17)
        {
          sub_1000B98F8(*(a1 + 40), buf, &v53);
          std::to_string(&v52, __val);
          sub_100075844(a3, v49, v48, &v53, &v52, 0.0);
          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
          }

          sub_1000C327C(a1 + 88, &v53.__r_.__value_.__l.__data_);
          if (RXLogServerGrammar() && RXVeryVerbose())
          {
            v19 = RXOSLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = &v53;
              if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v20 = v53.__r_.__value_.__r.__words[0];
              }

              LODWORD(v52.__r_.__value_.__l.__data_) = 136315138;
              *(v52.__r_.__value_.__r.__words + 4) = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Grammar: Word -> %s", &v52, 0xCu);
            }
          }

          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          v18 = HIBYTE(v55);
        }

        if (v18 < 0)
        {
          operator delete(*buf);
        }
      }

      else if (int64 == 13)
      {
        v10 = *(a1 + 184);
        *(a1 + 184) = v10 + 1;
        std::to_string(&v53, v10);
        v11 = std::string::insert(&v53, 0, "$$ADLIB");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v55 = v11->__r_.__value_.__r.__words[2];
        *buf = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }

        RDQSRGrammarFst::addAdlibFstWithLabel();
      }

      goto LABEL_84;
    }

    v14 = xpc_dictionary_get_value(v7, kRDKeyChildren);
    xarray = v14;
    if (v14)
    {
      count = xpc_array_get_count(v14);
    }

    else
    {
      count = 0;
    }

    if (xpc_dictionary_get_string(v7, kRDKeyCategoryID))
    {
      v52.__r_.__value_.__r.__words[0] = xpc_dictionary_get_string(v7, kRDKeyCategoryID);
      v21 = sub_1000113AC(buf, v52.__r_.__value_.__l.__data_);
      doesSupportCategory = rd_userprofile_util::doesSupportCategory(v21);
      v23 = doesSupportCategory;
      if (SHIBYTE(v55) < 0)
      {
        operator delete(*buf);
        if (v23)
        {
          goto LABEL_34;
        }
      }

      else if (doesSupportCategory)
      {
LABEL_34:
        v24 = a3;
        v25 = *(a1 + 8);
        v26 = *(a1 + 16);
        if (v25 == v26)
        {
LABEL_44:
          if (RXLogServerGrammar() && RXVeryVerbose())
          {
            v31 = RXOSLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = v52.__r_.__value_.__r.__words[0];
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Grammar: Building CategoryID -> %s", buf, 0xCu);
            }
          }

          operator new();
        }

        v27 = v52.__r_.__value_.__r.__words[0];
        v28 = strlen(v52.__r_.__value_.__l.__data_);
        while (1)
        {
          v29 = *(v25 + 23);
          if (v29 < 0)
          {
            if (v28 != v25[1])
            {
              goto LABEL_43;
            }

            if (v28 == -1)
            {
              sub_100016F2C();
            }

            v30 = *v25;
          }

          else
          {
            v30 = v25;
            if (v28 != v29)
            {
              goto LABEL_43;
            }
          }

          if (!memcmp(v30, v27, v28))
          {
            if (RXLogServerGrammar() && RXVeryVerbose())
            {
              v45 = RXOSLog();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = v52.__r_.__value_.__r.__words[0];
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Grammar: CategoryID -> %s", buf, 0xCu);
              }
            }

            sub_1000113AC(buf, v52.__r_.__value_.__l.__data_);
            sub_1000113AC(&v53, v52.__r_.__value_.__l.__data_);
            sub_100075844(v24, v49, v48, buf, &v53, 0.0);
            if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v53.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v55) < 0)
            {
              operator delete(*buf);
            }

            goto LABEL_96;
          }

LABEL_43:
          v25 += 4;
          if (v25 == v26)
          {
            goto LABEL_44;
          }
        }
      }
    }

    if (RXLogServerGrammar() && RXVeryVerbose() && xpc_dictionary_get_string(v7, kRDKeyCommandID))
    {
      v32 = xpc_dictionary_get_string(v7, kRDKeyCommandID);
      sub_1000113AC(buf, v32);
      v33 = RXOSLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = buf;
        if (v55 < 0)
        {
          v34 = *buf;
        }

        LODWORD(v53.__r_.__value_.__l.__data_) = 136315138;
        *(v53.__r_.__value_.__r.__words + 4) = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Grammar: CommandID -> %s", &v53, 0xCu);
      }

      if (SHIBYTE(v55) < 0)
      {
        operator delete(*buf);
      }
    }

    v47 = count;
    if (!count)
    {
      if (*(a1 + 189) == 1)
      {
        RDQSRGrammarFst::addBogusFst(a1);
      }

      sub_1000113AC(buf, off_10010D6F0[0]);
      sub_1000113AC(&v53, off_10010D6F0[0]);
      sub_100075844(a3, v49, v48, buf, &v53, 0.0);
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v55) < 0)
      {
        operator delete(*buf);
      }
    }

    v35 = count;
    if (!count)
    {
LABEL_83:

LABEL_84:
      if ((xpc_dictionary_get_uint64(v7, kRDKeyOptions) & 4) != 0)
      {
        if (*(a1 + 188) == 1)
        {
          RDQSRGrammarFst::addOptionalFst(a1);
        }

        sub_1000113AC(buf, off_10010D6F8);
        sub_1000113AC(&v53, off_10010D6F8);
        sub_100075844(a3, v49, v48, buf, &v53, 0.0);
        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v55) < 0)
        {
          operator delete(*buf);
        }
      }

      goto LABEL_96;
    }

    v36 = 0;
    v46 = v7;
    while (1)
    {
      v53.__r_.__value_.__r.__words[0] = xpc_array_get_uint64(xarray, v36);
      v37 = *(a1 + 48);
      *buf = &v53;
      v38 = sub_100018774(v37, &v53)[5];
      if (v38)
      {
        break;
      }

LABEL_82:

      ++v36;
      if (!--v35)
      {
        goto LABEL_83;
      }
    }

    if (int64 == 11)
    {
      if (!v36)
      {
        if (v47 != 1)
        {
          v44 = *(a1 + 80);
          *(a1 + 80) = v44 + 1;
          *buf = &v53;
          v39 = sub_100029B80(a1 + 56, &v53);
          v40 = v49 | (v44 << 32);
          goto LABEL_80;
        }

        goto LABEL_72;
      }

      if (v35 == 1)
      {
        v52.__r_.__value_.__r.__words[0] = xpc_array_get_uint64(xarray, v47 - 1 - 1);
        *buf = &v52;
        v41 = *(sub_100029B80(a1 + 56, &v52) + 11);
        *buf = &v53;
        v39 = sub_100029B80(a1 + 56, &v53);
        v40 = (v48 << 32) | v41;
        goto LABEL_80;
      }

      v52.__r_.__value_.__r.__words[0] = xpc_array_get_uint64(xarray, v36 - 1);
      *buf = &v52;
      v42 = *(sub_100029B80(a1 + 56, &v52) + 11);
      v43 = *(a1 + 80);
      *(a1 + 80) = v43 + 1;
      *buf = &v53;
      sub_100029B80(a1 + 56, &v53)[5] = v42 | (v43 << 32);
      v7 = v46;
    }

    else if (int64 == 10)
    {
LABEL_72:
      *buf = &v53;
      v39 = sub_100029B80(a1 + 56, &v53);
      v40 = v49 | (v48 << 32);
LABEL_80:
      v39[5] = v40;
    }

    RDQSRGrammarFst::Build(a1, v53.__r_.__value_.__r.__words[0], a3);
    goto LABEL_82;
  }

  v13 = RXOSLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = __val;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "NULL LM Object for id %llu", buf, 0xCu);
  }

LABEL_96:
}

void **sub_100027CE4(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100029A9C(v2);
    operator delete();
  }

  return a1;
}

void sub_100027F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22)
{
  if (a16)
  {
    sub_1000C90EC(a16);
  }

  sub_100027CE4(&a22);
  _Unwind_Resume(a1);
}

void RDQSRCategoryFst::Build(uint64_t a1, void *a2)
{
  v2 = a2;
  uint64 = xpc_dictionary_get_uint64(v2, kRDKeyObjectID);
  operator new();
}

void sub_100028170(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100027CE4(va);

  _Unwind_Resume(a1);
}

uint64_t **sub_1000281D0(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10001A178((v1 + 3), v1[4]);
    v2 = *v1;
    *v1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete();
  }

  return result;
}

void sub_1000283F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    (*(*__p + 8))(__p);
  }

  sub_100027CE4((v21 - 40));
  _Unwind_Resume(a1);
}

void sub_100028648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    (*(*__p + 8))(__p);
  }

  sub_100027CE4((v21 - 40));
  _Unwind_Resume(a1);
}

void RDQSRCategoryFst::Build(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __val = a2;
  v5 = *(a1 + 16);
  *&buf = &__val;
  v6 = sub_100018774(v5, &__val)[5];
  v7 = v6;
  if (v6)
  {
    int64 = xpc_dictionary_get_int64(v6, kRDKeyObjectType);
    *&buf = &__val;
    v9 = sub_100029B80(a1 + 24, &__val);
    *v36 = *(v9 + 10);
    v35 = *(v9 + 11);
    if ((int64 - 10) >= 2)
    {
      if (int64 == 12)
      {
        string = xpc_dictionary_get_string(v7, kRDKeyText);
        sub_1000113AC(&buf, string);
        v16 = v42;
        v17 = v42;
        if ((v42 & 0x80u) != 0)
        {
          v16 = *(&buf + 1);
        }

        if (v16)
        {
          sub_1000B98F8(*(a1 + 8), &buf, __p);
          v18 = v38;
          if ((v38 & 0x80u) != 0)
          {
            v18 = __p[1];
          }

          if (v18)
          {
            std::to_string(&v40, __val);
            sub_100075844(a3, v36[0], v35, __p, &v40, 0.0);
            if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v40.__r_.__value_.__l.__data_);
            }
          }

          if (RXLogServerGrammar() && RXVeryVerbose())
          {
            v19 = RXOSLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = __p;
              if ((v38 & 0x80u) != 0)
              {
                v20 = __p[0];
              }

              LODWORD(v40.__r_.__value_.__l.__data_) = 136315138;
              *(v40.__r_.__value_.__r.__words + 4) = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Category: Word -> %s", &v40, 0xCu);
            }
          }

          if (v38 < 0)
          {
            operator delete(__p[0]);
          }

          v17 = v42;
        }

        if ((v17 & 0x80) != 0)
        {
          operator delete(buf);
        }
      }

      else if (int64 == 13)
      {
        v10 = RXOSLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Grammar: Adlibs can't be a part of category in LM", &buf, 2u);
        }
      }

      goto LABEL_58;
    }

    v12 = xpc_dictionary_get_value(v7, kRDKeyChildren);
    v13 = v12;
    if (v12)
    {
      count = xpc_array_get_count(v12);
      v33 = count;
      if (count)
      {
LABEL_40:
        v21 = count;
        if (!count)
        {
LABEL_57:

LABEL_58:
          if ((xpc_dictionary_get_uint64(v7, kRDKeyOptions) & 4) != 0)
          {
            sub_1000113AC(&buf, "<eps>");
            sub_1000113AC(__p, "<eps>");
            sub_100075844(a3, v36[0], v35, &buf, __p, 0.0);
            if (v38 < 0)
            {
              operator delete(__p[0]);
            }

            if (v42 < 0)
            {
              operator delete(buf);
            }
          }

          goto LABEL_63;
        }

        v22 = 0;
        v31 = v7;
        v32 = v33 - 1;
        v34 = a3;
        while (1)
        {
          __p[0] = xpc_array_get_uint64(v13, v22);
          v23 = *(a1 + 16);
          *&buf = __p;
          v24 = sub_100018774(v23, __p)[5];
          if (v24)
          {
            break;
          }

LABEL_56:

          if (v21 == ++v22)
          {
            goto LABEL_57;
          }
        }

        if (int64 != 11)
        {
          if (int64 != 10)
          {
LABEL_55:
            RDQSRCategoryFst::Build(a1, __p[0], a3);
            goto LABEL_56;
          }

LABEL_45:
          *&buf = __p;
          sub_100029B80(a1 + 24, __p)[5] = v36[0] | (v35 << 32);
          goto LABEL_55;
        }

        if (v22)
        {
          if (v32 != v22)
          {
            v40.__r_.__value_.__r.__words[0] = xpc_array_get_uint64(v13, v22 - 1);
            *&buf = &v40;
            v28 = *(sub_100029B80(a1 + 24, &v40) + 11);
            v29 = *(a1 + 48);
            *(a1 + 48) = v29 + 1;
            *&buf = __p;
            sub_100029B80(a1 + 24, __p)[5] = v28 | (v29 << 32);
            v7 = v31;
LABEL_54:
            a3 = v34;
            goto LABEL_55;
          }

          v40.__r_.__value_.__r.__words[0] = xpc_array_get_uint64(v13, v32 - 1);
          *&buf = &v40;
          v25 = *(sub_100029B80(a1 + 24, &v40) + 11);
          *&buf = __p;
          v26 = sub_100029B80(a1 + 24, __p);
          v27 = (v35 << 32) | v25;
        }

        else
        {
          if (v33 == 1)
          {
            goto LABEL_45;
          }

          v30 = *(a1 + 48);
          *(a1 + 48) = v30 + 1;
          *&buf = __p;
          v26 = sub_100029B80(a1 + 24, __p);
          v27 = *v36 | (v30 << 32);
        }

        v26[5] = v27;
        goto LABEL_54;
      }
    }

    else
    {
      count = 0;
    }

    sub_1000113AC(&buf, "<eps>");
    sub_1000113AC(__p, "<eps>");
    sub_100075844(a3, v36[0], v35, &buf, __p, 0.0);
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    if (v42 < 0)
    {
      operator delete(buf);
    }

    v33 = 0;
    goto LABEL_40;
  }

  v11 = RXOSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = __val;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "NULL LM Object for id %llu", &buf, 0xCu);
  }

LABEL_63:
}

void sub_100028D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (*(v32 - 105) < 0)
  {
    operator delete(*(v32 - 128));
  }

  _Unwind_Resume(a1);
}

uint64_t **sub_100029050(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v3 = (v1 + 20);
    sub_10002A0F4(&v3);
    sub_100017598((v1 + 17), v1[18]);
    sub_100017598((v1 + 14), v1[15]);
    sub_100017598((v1 + 11), v1[12]);
    sub_10001A178((v1 + 7), v1[8]);
    v3 = (v1 + 1);
    sub_10002A0F4(&v3);
    v2 = *v1;
    *v1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete();
  }

  return result;
}

void sub_1000291C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000281D0(va);

  _Unwind_Resume(a1);
}

void sub_1000293B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1000C9124(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000293D0(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_100016F2C();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t RDQSRGrammarBuilder::grammarFST(RDQSRGrammarBuilder *this)
{
  if (*(this + 56) != 1)
  {
    return *(this + 2);
  }

  if (RXLogPerformance())
  {
    v2.__d_.__rep_ = rd_time_util::now().__d_.__rep_;
  }

  else
  {
    v2.__d_.__rep_ = 0;
  }

  v3 = *(this + 3);
  if (v3 && !sub_10007754C(v3))
  {
    if (*(this + 4) != *(this + 5))
    {
      sub_100076488(*(this + 3), this + 4);
    }

    v8 = *(this + 2);
    *(this + 2) = *(this + 3);
    *(this + 3) = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    *(this + 56) = 0;
    if (RXLogPerformance())
    {
      v6 = rd_time_util::durationInMilliSec(v2.__d_.__rep_);
      v7 = RXOSLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 134217984;
        *&v9[4] = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Re-building grammar - %f", v9, 0xCu);
      }
    }

    return *(this + 2);
  }

  v4 = RXOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Empty FST, try calling BuildGrammar first", v9, 2u);
  }

  return 0;
}

void RDQSRGrammarBuilder::grammarProfile(RDQSRGrammarBuilder *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 4);
  for (i = *(this + 5); v2 != i; v2 += 4)
  {
    if (rd_userprofile_util::doesSupportProfile(v2))
    {
      sub_100078064(v2[3], &v9);
      v11 = rd_userprofile_util::nonTerminalForProfile(v2);
      v5 = rd_userprofile_util::wordTagForProfile(v2);
      v8 = v5;
      v6 = a2[1];
      if (v6 >= a2[2])
      {
        v7 = sub_10002F338(a2, &v11, &v8, &v9);
      }

      else
      {
        *v6 = v11;
        *(v6 + 8) = v5;
        *(v6 + 16) = v9;
        *(v6 + 32) = v10;
        v9 = 0uLL;
        v10 = 0;
        v7 = v6 + 40;
      }

      a2[1] = v7;
      v11 = &v9;
      sub_100016FD4(&v11);
    }
  }
}

void sub_100029710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002F2BC(va);
  _Unwind_Resume(a1);
}

void RDQSRGrammarBuilder::categoryProfile(char *__s@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_1000113AC(__p, __s);
  doesSupportProfile = rd_userprofile_util::doesSupportProfile(__p);
  v7 = doesSupportProfile;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
    if (!v7)
    {
      return;
    }
  }

  else if (!doesSupportProfile)
  {
    return;
  }

  sub_100078064(a2, __p);
  sub_1000113AC(v13, __s);
  v8 = rd_userprofile_util::nonTerminalForProfile(v13);
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  v15 = v8;
  sub_1000113AC(v13, __s);
  v9 = rd_userprofile_util::wordTagForProfile(v13);
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  v12 = v9;
  v10 = a3[1];
  if (v10 >= a3[2])
  {
    v11 = sub_10002F338(a3, &v15, &v12, __p);
  }

  else
  {
    *v10 = v8;
    *(v10 + 8) = v9;
    *(v10 + 16) = *__p;
    *(v10 + 32) = v17;
    __p[0] = 0;
    __p[1] = 0;
    v17 = 0;
    v11 = v10 + 40;
  }

  a3[1] = v11;
  v13[0] = __p;
  sub_100016FD4(v13);
}

void sub_100029878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __p = &a18;
  sub_100016FD4(&__p);
  sub_10002F2BC(&a18);
  _Unwind_Resume(a1);
}

void RDQSRGrammarBuilder::fullGrammarProfile(RDQSRGrammarBuilder *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(this + 57) == 1)
  {
    v3 = RXOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "3rd party grammar contains adlibs, so not adding them to profile", buf, 2u);
    }
  }

  else if (RDQSRGrammarBuilder::grammarFST(this))
  {
    sub_1000777D8(300, buf);
    sub_1000113AC(__p, "BuiltInLM.CustomCommand");
    v4 = rd_userprofile_util::nonTerminalForProfile(__p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = v4;
    sub_1000113AC(__p, "BuiltInLM.CustomCommand");
    v5 = rd_userprofile_util::wordTagForProfile(__p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = v5;
    v6 = a2[1];
    if (v6 >= a2[2])
    {
      v7 = sub_10002F338(a2, &v11, &v8, buf);
    }

    else
    {
      *v6 = v4;
      *(v6 + 8) = v5;
      *(v6 + 16) = *buf;
      *(v6 + 32) = v13;
      memset(buf, 0, sizeof(buf));
      v13 = 0;
      v7 = v6 + 40;
    }

    a2[1] = v7;
    __p[0] = buf;
    sub_100016FD4(__p);
  }
}

void sub_100029A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18)
{
  __p = &a18;
  sub_100016FD4(&__p);
  sub_10002F2BC(&a18);
  _Unwind_Resume(a1);
}

void *sub_100029A9C(void *a1)
{
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void *sub_100029B80(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100029C50(uint64_t a1, char **a2, uint64_t *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_100017658();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v22 = a1;
  if (v9)
  {
    sub_100029D60(a1, v9);
  }

  v18 = 0;
  v19 = 32 * v3;
  v20 = 32 * v3;
  v21 = 0;
  v10 = sub_1000113AC((32 * v3), *a2);
  v11 = *a3;
  *a3 = 0;
  *(v10 + 3) = v11;
  v12 = v20 + 32;
  v13 = *(a1 + 8) - *a1;
  v14 = v19 - v13;
  memcpy((v19 - v13), *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = v21;
  v20 = v15;
  v21 = v16;
  v18 = v15;
  v19 = v15;
  sub_100029DA8(&v18);
  return v12;
}

void sub_100029D4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100029DA8(va);
  _Unwind_Resume(a1);
}

void sub_100029D60(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100016D60();
}

void **sub_100029DA8(void **a1)
{
  sub_100029DDC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100029DDC(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 32;
    sub_100029E24(v4, i - 32);
  }
}

void sub_100029E24(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a2 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

uint64_t sub_100029E9C(uint64_t a1, const void **a2)
{
  v2 = *sub_1000C32FC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_100029F40(void *result, __int128 *a2, uint64_t *a3)
{
  v4 = result;
  v5 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_1000732A4(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
  }

  v7 = *a3;
  *a3 = 0;
  *(v5 + 24) = v7;
  v4[1] = v5 + 32;
  return result;
}

uint64_t sub_100029FB8(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_100017658();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v26 = a1;
  if (v9)
  {
    sub_100029D60(a1, v9);
  }

  v10 = 32 * v3;
  v22 = 0;
  v23 = v10;
  v11 = 0;
  v24 = v10;
  v25 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1000732A4(v10, *a2, *(a2 + 1));
    v13 = v23;
    v14 = v24;
    v11 = v25;
  }

  else
  {
    v12 = *a2;
    *(v10 + 16) = *(a2 + 2);
    *v10 = v12;
    v13 = v10;
    v14 = v10;
  }

  v15 = *a3;
  *a3 = 0;
  *(v10 + 24) = v15;
  v16 = v14 + 32;
  v17 = *(a1 + 8) - *a1;
  v18 = v13 - v17;
  memcpy((v13 - v17), *a1, v17);
  v19 = *a1;
  *a1 = v18;
  *(a1 + 8) = v16;
  v20 = *(a1 + 16);
  *(a1 + 16) = v11;
  v24 = v19;
  v25 = v20;
  v22 = v19;
  v23 = v19;
  sub_100029DA8(&v22);
  return v16;
}

void sub_10002A0E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100029DA8(va);
  _Unwind_Resume(a1);
}

void sub_10002A0F4(void ***a1)
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
        v4 -= 32;
        sub_100029E24(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10002A17C(void **a1)
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
        v3 -= 32;
        sub_100029E24(a1, v3);
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

void *sub_10002A1E8(void *a1)
{
  *a1 = off_100100EF0;
  v2 = a1[2];
  if (v2)
  {
    sub_100016EC0(v2);
  }

  return a1;
}

void sub_10002A234(void *a1)
{
  *a1 = off_100100EF0;
  v1 = a1[2];
  if (v1)
  {
    sub_100016EC0(v1);
  }

  operator delete();
}

float sub_10002A2AC@<S0>(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  v3 = *(*(*(a1 + 8) + 56) + 8 * a2);
  result = *v3;
  *a3 = *v3;
  return result;
}

uint64_t sub_10002A308(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = sub_100070F78(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 24);

    return v7();
  }
}

uint64_t sub_10002A470(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 64) - *(v2 + 56)) >> 3;
  return result;
}

uint64_t sub_10002A48C(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 56) + 8 * a2) + 24);
  v4 = *v5;
  v6 = (v5[1] - *v5) >> 4;
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t sub_10002A4CC(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    sub_10002DC40();
  }

  return result;
}

unint64_t sub_10002A53C(uint64_t a1, int a2)
{
  sub_10002E640(a1);
  v4 = *(a1 + 8);
  *(v4 + 80) = a2;
  result = (*(*v4 + 16))(v4);
  *(v4 + 8) = result & 0xCCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

float sub_10002A5BC(uint64_t a1, int a2, int *a3)
{
  sub_10002E640(a1);
  v6 = *(a1 + 8);
  v8 = *a3;
  return sub_10002E780(v6, a2, &v8);
}

uint64_t sub_10002A610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 24))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = sub_10002E640(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

void sub_10002A6A4(uint64_t a1)
{
  sub_10002E640(a1);
  v2 = *(a1 + 8);
  sub_10002DEE4();
}

uint64_t sub_10002A724(uint64_t a1, int a2, float *a3)
{
  sub_10002E640(a1);
  v6 = *(a1 + 8);

  return sub_10002E818(v6, a2, a3);
}

uint64_t sub_10002A774(uint64_t a1, char **a2)
{
  sub_10002E640(a1);
  v4 = *(a1 + 8);
  sub_10002E8C0(v4, a2);
  result = (*(*v4 + 16))(v4);
  v4[1] = v4[1] & 4 | result & 0x806A5A950007;
  return result;
}

uint64_t sub_10002A7F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1 || *(v1 + 8))
  {
    v2 = *(a1 + 8);
    v4 = *(v2 + 40);
    v3 = *(v2 + 48);
    sub_10002EDDC();
  }

  v5 = *(a1 + 8);
  sub_10002EF8C(v5);
  result = (*(*v5 + 16))(v5);
  v5[1] = (*(v5 + 2) | result) & 4 | 0x956A5A950003;
  return result;
}

uint64_t sub_10002A8E8(uint64_t a1, int a2, uint64_t a3)
{
  sub_10002E640(a1);
  v6 = *(a1 + 8);
  sub_10002EB24(*(v6[7] + 8 * a2), a3);
  result = (*(*v6 + 16))(v6);
  v6[1] = v6[1] & 4 | result & 0x8A6A5A950007;
  return result;
}

uint64_t sub_10002A978(uint64_t a1, int a2)
{
  sub_10002E640(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[7] + 8 * a2);
  v5[1] = 0;
  v5[2] = 0;
  v5[4] = v5[3];
  result = (*(*v4 + 16))(v4);
  v4[1] = v4[1] & 4 | result & 0x8A6A5A950007;
  return result;
}

void *sub_10002AA00(uint64_t a1, int a2)
{
  sub_10002E640(a1);
  v4 = (*(a1 + 8) + 56);

  return sub_10002E1F8(v4, a2);
}

void *sub_10002AA44(uint64_t a1, int a2, unint64_t a3)
{
  sub_10002E640(a1);
  v6 = (*(*(*(a1 + 8) + 56) + 8 * a2) + 24);

  return sub_10002E298(v6, a3);
}

uint64_t sub_10002AAF4(uint64_t a1, uint64_t a2)
{
  sub_10002E640(a1);
  v4 = *(a1 + 8);

  return sub_10002DDA4(v4, a2);
}

uint64_t sub_10002AB34(uint64_t a1, uint64_t a2)
{
  sub_10002E640(a1);
  v4 = *(a1 + 8);

  return sub_10002DE44(v4, a2);
}

uint64_t sub_10002AC24(uint64_t a1)
{
  sub_1000113AC(__p, "ERROR");
  sub_10002B1D4(&v11, __p);
  v2 = sub_10002AE44(&std::cerr, "Fst::Write: No write stream method for ", 39);
  v3 = (*(*a1 + 64))(a1);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  v7 = sub_10002AE44(v2, v5, v6);
  sub_10002AE44(v7, " FST type", 9);
  sub_10002B280(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_10002ACF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002AD24(uint64_t a1)
{
  sub_1000113AC(__p, "ERROR");
  sub_10002B1D4(&v11, __p);
  v2 = sub_10002AE44(&std::cerr, "Fst::Write: No write filename method for ", 41);
  v3 = (*(*a1 + 64))(a1);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  v7 = sub_10002AE44(v2, v5, v6);
  sub_10002AE44(v7, " FST type", 9);
  sub_10002B280(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_10002ADF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10002AE44(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_10002AFEC(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_10002AF84(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x10002AF64);
}

uint64_t sub_10002AFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100016CB8();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_10002B1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL *sub_10002B1D4(BOOL *a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    if (*(a2 + 8) != 5)
    {
LABEL_12:
      v8 = 0;
      goto LABEL_13;
    }

    v4 = *a2;
  }

  else
  {
    v4 = a2;
    if (v3 != 5)
    {
      goto LABEL_12;
    }
  }

  v5 = *v4;
  v6 = *(v4 + 4);
  v8 = v5 == 1096040774 && v6 == 76;
LABEL_13:
  *a1 = v8;
  v9 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v10 = v9;
  }

  v11 = sub_10002AE44(&std::cerr, a2, v10);
  sub_10002AE44(v11, ": ", 2);
  return a1;
}

_BYTE *sub_10002B280(_BYTE *a1)
{
  std::ios_base::getloc((&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0));
  v2 = std::locale::use_facet(&v4, &std::ctype<char>::id);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  if (*a1 == 1)
  {
    exit(1);
  }

  return a1;
}

BOOL sub_10002B368(unint64_t a1, unint64_t a2)
{
  v2 = (((2 * a2) & 0xAAAAAAAA0000 | a2 & 0xFFFFFFFF0000 | (a2 >> 1) & 0x555555550000) & ((a1 >> 1) & 0x555555550000 | (2 * a1) & 0xAAAAAAAA0000 | a1) | 7) & (a2 ^ a1);
  if (v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      if ((v6 & v2) != 0)
      {
        sub_1000113AC(__p, "ERROR");
        sub_10002B1D4(&v20, __p);
        v7 = sub_10002AE44(&std::cerr, "CompatProperties: Mismatch: ", 28);
        v8 = strlen(off_10010E2A0[v5]);
        v9 = sub_10002AE44(v7, off_10010E2A0[v5], v8);
        v10 = sub_10002AE44(v9, ": props1 = ", 11);
        if ((v6 & a1) != 0)
        {
          v11 = "true";
        }

        else
        {
          v11 = "false";
        }

        if ((v6 & a1) != 0)
        {
          v12 = 4;
        }

        else
        {
          v12 = 5;
        }

        v13 = sub_10002AE44(v10, v11, v12);
        v14 = sub_10002AE44(v13, ", props2 = ", 11);
        if ((v6 & a2) != 0)
        {
          v15 = "true";
        }

        else
        {
          v15 = "false";
        }

        if ((v6 & a2) != 0)
        {
          v16 = 4;
        }

        else
        {
          v16 = 5;
        }

        sub_10002AE44(v14, v15, v16);
        sub_10002B280(&v20);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v6 *= 2;
      ++v5;
    }

    while (v5 != 64);
  }

  return v2 == 0;
}

void sub_10002B4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10002B518(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10001A12C(result);

    operator delete();
  }

  return result;
}

int *sub_10002B564()
{
  if ((atomic_load_explicit(&qword_10010D708, memory_order_acquire) & 1) == 0)
  {
    sub_1000C9148();
  }

  return &dword_10010D700;
}

int *sub_10002B59C()
{
  if ((atomic_load_explicit(&qword_10010D718, memory_order_acquire) & 1) == 0)
  {
    sub_1000C9194();
  }

  return &dword_10010D710;
}

void sub_10002B5D4(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *(*a1 + 8) = **a1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a1 + 52) = 0;
    **(a1 + 24) = **(a1 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a1 + 32) = a2;
    v5 = (*(*a2 + 16))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

void sub_10002B788(uint64_t a1)
{
  if (*a1)
  {
    v2 = **a1;
    v3 = *(*a1 + 8) - v2;
    if (v3)
    {
      v4 = v3 >> 2;
      if (v4 <= 1)
      {
        v4 = 1;
      }

      do
      {
        *v2 = *(a1 + 48) + ~*v2;
        ++v2;
        --v4;
      }

      while (v4);
    }
  }

  if (*(a1 + 52) == 1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      if (*v5)
      {
        operator delete(*v5);
      }

      operator delete();
    }
  }

  v6 = a1 + 56;
  v7 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v7)
  {
    sub_10002BE48(v6, v7);
  }

  v8 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v8)
  {
    sub_10002BE48(a1 + 64, v8);
  }

  v9 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v9)
  {
    sub_10002BEA4(a1 + 72, v9);
  }

  v12 = *(a1 + 80);
  v11 = (a1 + 80);
  v10 = v12;
  *v11 = 0;
  if (v12)
  {

    sub_10002BE48(v11, v10);
  }
}

uint64_t sub_10002B884(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 80);
  v8 = *(v6 + 8);
  v7 = *(v6 + 16);
  if (v8 >= v7)
  {
    v10 = *v6;
    v11 = v8 - *v6;
    v12 = v11 >> 2;
    v13 = (v11 >> 2) + 1;
    if (v13 >> 62)
    {
      sub_100017658();
    }

    v14 = v7 - v10;
    if (v14 >> 1 > v13)
    {
      v13 = v14 >> 1;
    }

    v15 = v14 >= 0x7FFFFFFFFFFFFFFCLL;
    v16 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v15)
    {
      v16 = v13;
    }

    if (v16)
    {
      sub_10002C924(*(a1 + 80), v16);
    }

    *(4 * v12) = a2;
    v9 = 4 * v12 + 4;
    memcpy(0, v10, v11);
    v17 = *v6;
    *v6 = 0;
    *(v6 + 8) = v9;
    *(v6 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v8 = a2;
    v9 = (v8 + 1);
  }

  *(v6 + 8) = v9;
  for (i = **(a1 + 56); a2 >= ((*(*(a1 + 56) + 8) - i) >> 2); i = **(a1 + 56))
  {
    v19 = *a1;
    if (*a1)
    {
      v36 = -1;
      sub_10002C79C(v19, &v36);
    }

    v20 = *(a1 + 8);
    if (v20)
    {
      v35 = 0;
      sub_10002C87C(v20, &v35);
    }

    v21 = *(a1 + 16);
    v34 = 0;
    sub_10002C87C(v21, &v34);
    v22 = *(a1 + 56);
    v33 = -1;
    sub_10002C79C(v22, &v33);
    v23 = *(a1 + 64);
    v32 = -1;
    sub_10002C79C(v23, &v32);
    v24 = *(a1 + 72);
    v31 = 0;
    sub_10002C87C(v24, &v31);
  }

  v25 = *(a1 + 44);
  *(i + 4 * a2) = v25;
  v26 = *(a1 + 72);
  *(**(a1 + 64) + 4 * a2) = v25;
  v27 = a2 >> 6;
  v28 = 1 << a2;
  *(*v26 + 8 * v27) |= 1 << a2;
  v29 = *(a1 + 8);
  if (*(a1 + 40) == a3)
  {
    if (v29)
    {
      *(*v29 + 8 * v27) |= v28;
    }
  }

  else
  {
    if (v29)
    {
      *(*v29 + 8 * v27) &= ~v28;
    }

    **(a1 + 24) = **(a1 + 24) & 0xFFFFFCFFFFFFFFFFLL | 0x20000000000;
  }

  ++*(a1 + 44);
  return 1;
}