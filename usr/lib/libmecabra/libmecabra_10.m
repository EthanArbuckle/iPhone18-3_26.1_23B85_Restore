void sub_29921E95C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_29921E9C0(a1, a2);
  }

  sub_29921E9A8();
}

void sub_29921E9C0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_29921EA18(uint64_t a1)
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

  return a1;
}

void sub_29921EA5C(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_29921EAA4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29921EB1C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29921EB70(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29921EB70(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_29921EBC0(void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29921EC68(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29921ECBC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_29921ECBC(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 16))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_29921ED28(uint64_t a1)
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

uint64_t sub_29921ED74(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_29921EDFC(result, a4);
  }

  return result;
}

void sub_29921EDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29920E060(&a9);
  _Unwind_Resume(a1);
}

void sub_29921EDFC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_29920DDE0(a1, a2);
  }

  sub_299212A8C();
}

void *sub_29921EE48(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_2991D82D0(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29921EEFC(v8);
  return v4;
}

uint64_t sub_29921EEFC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29921EF34(a1);
  }

  return a1;
}

void sub_29921EF34(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_29921EF84(uint64_t a1)
{
  if (*a1)
  {
    sub_29921EB70(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t sub_29921F05C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F651E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29921F0A8(uint64_t a1)
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

uint64_t sub_29921F128(uint64_t a1)
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

BOOL sub_29921F230(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = (*(**a2 + 112))();
  return v4 > (*(*v3 + 112))(v3);
}

uint64_t sub_29921F2AC(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F65378))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29921F374(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F65208;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL sub_29921F3AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    return 0;
  }

  sub_299251274(*a2, v3, __p);
  if (v14 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  sub_29939F698(*v5, v15);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v16;
  v7 = v15;
  v8 = v15[0];
  if ((v16 & 0x80u) == 0)
  {
    v9 = v16;
  }

  else
  {
    v7 = v15[0];
    v9 = v15[1];
  }

  __p[0] = v7;
  __p[1] = v9;
  v10 = sub_2992FE1C4(__p, a1 + 16);
  v11 = v9 > *(a1 + 24) && v10;
  if ((v6 & 0x80) != 0)
  {
    operator delete(v8);
  }

  return v11;
}

void sub_29921F478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29921F494(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F65268))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29921F570(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F652E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29921F5D4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, const void **a4@<X8>)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    __p = 0;
    v57 = 0;
    v58 = 0;
    if ((0xCCCCCCCCCCCCCCCDLL * ((a3[2] - a3[1]) >> 3)) >= *(v4 + 32) - 1)
    {
      v8 = *(v4 + 32) - 1;
    }

    else
    {
      v8 = 0xCCCCCCCCCCCCCCCDLL * ((a3[2] - a3[1]) >> 3);
    }

    sub_2992141C0(&__p, dword_299401FD0);
    if (v8)
    {
      v9 = 0;
      for (i = 0; i != v8; ++i)
      {
        v11 = *(a3[10] + 8 * i);
        v12 = a3[4];
        v13 = a3[1];
        if (v11 >= (a3[5] - v12) >> 1)
        {
          v14 = 0;
          v15 = 0;
        }

        else
        {
          v14 = (v12 + 2 * v11);
          if (v12)
          {
            v15 = *(v13 + v9 + 24);
          }

          else
          {
            v15 = 0;
          }
        }

        LODWORD(__src) = sub_2993F5A44(*(a1 + 8), v14, v15, *(v13 + v9));
        sub_2992141C0(&__p, &__src);
        v9 += 40;
      }
    }

    v16 = sub_2993F62C8(*(a1 + 8), __p, (v57 - __p) >> 2);
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v17 = *(a2 + 48);
    v51 = *(a2 + 56);
    if (v17 != v51)
    {
      v18 = v16;
      do
      {
        v19 = *v17;
        if ((*(**v17 + 408))(*v17) == 1)
        {
          break;
        }

        __src = 0;
        v54 = 0;
        v55 = 0;
        sub_29920DED0(&__src, __p, v57, (v57 - __p) >> 2);
        for (j = 0; j < (*(**v17 + 48))(); ++j)
        {
          v21 = sub_2992C71F4(v19, j);
          v23 = v22;
          v24 = sub_2992C77D8(v19, j);
          v26 = v25;
          v27 = (*(*v19 + 560))(v19, j);
          v28 = sub_2993F5E08(*(a1 + 8), v21, v23, v24, v26, *v27);
          v29 = v54;
          if (v54 >= v55)
          {
            v31 = __src;
            v32 = v54 - __src;
            v33 = (v54 - __src) >> 2;
            v34 = v33 + 1;
            if ((v33 + 1) >> 62)
            {
              sub_299212A8C();
            }

            v35 = v55 - __src;
            if ((v55 - __src) >> 1 > v34)
            {
              v34 = v35 >> 1;
            }

            if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v36 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v34;
            }

            if (v36)
            {
              sub_2992F86B0(&__src, v36);
            }

            *(4 * v33) = v28;
            v30 = 4 * v33 + 4;
            memcpy(0, v31, v32);
            v37 = __src;
            __src = 0;
            v54 = v30;
            v55 = 0;
            if (v37)
            {
              operator delete(v37);
            }
          }

          else
          {
            *v54 = v28;
            v30 = (v29 + 4);
          }

          v54 = v30;
        }

        v38 = sub_2993F62C8(*(a1 + 8), __src, (v54 - __src) >> 2) - v18;
        v39 = a4;
        v41 = a4[1];
        v40 = a4[2];
        if (v41 >= v40)
        {
          v43 = *a4;
          v44 = v41 - *a4;
          v45 = v44 >> 3;
          v46 = (v44 >> 3) + 1;
          if (v46 >> 61)
          {
            sub_299212A8C();
          }

          v47 = v40 - v43;
          if (v47 >> 2 > v46)
          {
            v46 = v47 >> 2;
          }

          v48 = v47 >= 0x7FFFFFFFFFFFFFF8;
          v49 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v48)
          {
            v49 = v46;
          }

          if (v49)
          {
            sub_299236FB8(a4, v49);
          }

          v39 = a4;
          *(8 * v45) = v38;
          v42 = 8 * v45 + 8;
          memcpy(0, v43, v44);
          v50 = *a4;
          *a4 = 0;
          a4[1] = v42;
          a4[2] = 0;
          if (v50)
          {
            operator delete(v50);
            v39 = a4;
          }
        }

        else
        {
          *v41 = v38;
          v42 = (v41 + 1);
        }

        v39[1] = v42;
        if (__src)
        {
          v54 = __src;
          operator delete(__src);
        }

        ++v17;
      }

      while (v17 != v51);
    }

    if (__p)
    {
      v57 = __p;
      operator delete(__p);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

void sub_29921F9F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29921FA70(uint64_t *a1)
{
  a1[4] = a1[3];
  sub_29921FB44(a1 + 6);
  a1[11] = a1[10];
  a1[14] = a1[13];
  v2 = (*(*a1 + 56))(a1);
  result = sub_2992D5CFC(v2);
  if (result)
  {
    v4 = (*(*a1 + 56))(a1);
    sub_2992D5D58(v4, 0, 0);
    v5 = (*(*a1 + 56))(a1);
    result = sub_2992D5EA8(v5);
  }

  a1[9] = 0;
  return result;
}

void sub_29921FB44(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 32);
      v4 -= 32;
      v5 = v6;
      if (v6)
      {
        *(v2 - 24) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_29921FB9C(void *a1, void *a2)
{
  (*(*a1 + 16))(a1);
  __src = 0;
  v24 = 0;
  v25 = 0;
  v4 = (a2[1] - *a2) >> 1;
  v5 = v4 + 1;
  v6 = a1[1];
  if (v6)
  {
    v6 = *(v6 + 32);
    if (v5 <= v6)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (v4 == -1)
    {
      goto LABEL_6;
    }
  }

  v7 = v5 - v6;
LABEL_6:
  if (v7 < v4)
  {
    v8 = 0;
    do
    {
      v9 = *(*a2 + 2 * v7) + 1000;
      if (v8 >= v25)
      {
        v10 = __src;
        v11 = v8 - __src;
        v12 = (v8 - __src) >> 2;
        v13 = v12 + 1;
        if ((v12 + 1) >> 62)
        {
          sub_299212A8C();
        }

        v14 = v25 - __src;
        if ((v25 - __src) >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          sub_2992F86B0(&__src, v15);
        }

        v16 = (v8 - __src) >> 2;
        v17 = (4 * v12);
        v18 = (4 * v12 - 4 * v16);
        *v17 = v9;
        v8 = v17 + 1;
        memcpy(v18, v10, v11);
        v19 = __src;
        __src = v18;
        v24 = v8;
        v25 = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v8++ = v9;
      }

      v24 = v8;
      ++v7;
    }

    while (v4 != v7);
    v20 = __src;
    if (__src != v8)
    {
      v21 = (*(*a1 + 56))(a1);
      if (sub_2992D5CFC(v21))
      {
        v22 = (*(*a1 + 56))(a1);
        sub_2992D5D58(v22, __src, (v24 - __src) >> 2);
      }

      v20 = __src;
    }

    if (v20)
    {
      v24 = v20;
      operator delete(v20);
    }
  }
}

void sub_29921FDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29921FDC8(uint64_t *a1, uint64_t a2, int a3)
{
  v52[3] = *MEMORY[0x29EDCA608];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v43 = 0;
  v39[0] = MEMORY[0x29EDCA5F8];
  v39[1] = 0x40000000;
  v39[2] = sub_29922038C;
  v39[3] = &unk_29EF0D7C0;
  v39[4] = &v40;
  sub_2992FE63C(a2, v39);
  byte_2A145FE38[v41[3]] = 0;
  if ((*(*a1 + 72))(a1, byte_2A145FE38) == -1)
  {
    v6 = a1[17];
    if (v6 && *v6 == 1)
    {
      v7 = sub_29927BE08(v6, a2, byte_2A145FE38, 2uLL);
    }

    else
    {
      v7 = sub_299324E84(a1[16], a2, byte_2A145FE38, 2uLL);
    }

    v41[3] = v7;
    byte_2A145FE38[v7] = 0;
  }

  v8 = *(a2 + 8);
  if (v8 == *(a2 + 16) || (v9 = *v8) == 0)
  {
    if (v41[3])
    {
      LOBYTE(v9) = byte_2A145FE38[0];
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  v10 = (*(*a1 + 72))(a1, byte_2A145FE38);
  if (v10 != -1)
  {
    (*(*a1 + 48))(a1, byte_2A145FE38, v41[3], v10);
    v11 = (*(*a1 + 72))(a1, byte_2A145FE38);
    if (v11 != -1)
    {
      v13 = a1[4];
      v12 = a1[5];
      if (v13 >= v12)
      {
        v15 = a1[3];
        v16 = v13 - v15;
        v17 = (v13 - v15) >> 2;
        v18 = v17 + 1;
        if ((v17 + 1) >> 62)
        {
          sub_299212A8C();
        }

        v19 = v12 - v15;
        if (v19 >> 1 > v18)
        {
          v18 = v19 >> 1;
        }

        v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
        v21 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v20)
        {
          v21 = v18;
        }

        if (v21)
        {
          sub_2992F86B0((a1 + 3), v21);
        }

        v22 = (v13 - v15) >> 2;
        v23 = (4 * v17);
        v24 = (4 * v17 - 4 * v22);
        *v23 = v11;
        v14 = v23 + 1;
        memcpy(v24, v15, v16);
        v25 = a1[3];
        a1[3] = v24;
        a1[4] = v14;
        a1[5] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v13 = v11;
        v14 = v13 + 4;
      }

      a1[4] = v14;
      sub_2993C3BE8((a1 + 10), a2, v9);
      (*(*a1 + 88))(a1, a2);
    }
  }

  if (a3)
  {
    sub_29921FB44(a1 + 6);
    v26 = (*(*a1 + 56))(a1);
    if (sub_2992D5CFC(v26) && a1[3] != a1[4])
    {
      a1[9] = 0;
      v47 = 0;
      v48 = &v47;
      v49 = 0x4002000000;
      v50 = sub_299220D04;
      v51 = sub_299220D28;
      memset(v52, 0, 24);
      memset(v45, 0, sizeof(v45));
      v27 = (*(*a1 + 56))(a1);
      v28 = a1[3];
      v29 = (a1[4] - v28) >> 2;
      v44[0] = MEMORY[0x29EDCA5F8];
      v44[1] = 0x40000000;
      v44[2] = sub_299220D54;
      v44[3] = &unk_29EF0D810;
      v44[4] = &v47;
      v44[5] = a1;
      v44[6] = 10;
      sub_2992D5FE0(v27, v28, v29, v44);
      (*(*a1 + 80))(a1, v48 + 5);
      v46 = v45;
      sub_29920E060(&v46);
      _Block_object_dispose(&v47, 8);
      v45[0] = v52;
      sub_299223404(v45);
    }

    (*(*a1 + 64))(a1);
    v30 = sub_29930AF10();
    if (*v30 == 1 && (v30[9] & 0x40) != 0)
    {
      v31 = sub_29930AF10();
      sub_29930B514(v31, 0x4000u, "Nbest: \n", v32, v33, v34, v35, v36, v38);
      v47 = &unk_2A1F65450;
      v48 = a1;
      v50 = &v47;
      sub_29922199C(a1, 0xAuLL, &v47);
      sub_299223AD0(&v47);
    }
  }

  _Block_object_dispose(&v40, 8);
  v37 = *MEMORY[0x29EDCA608];
}

void sub_29922032C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_299223AD0(&a30);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29922038C(uint64_t a1, UChar32 c, _BYTE *a3)
{
  result = u_charType(c);
  if (c != 32 && result != 15)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 24);
    *(v7 + 24) = v8 + 1;
    byte_2A145FE38[v8] = c;
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 2)
  {
    *a3 = 1;
  }

  return result;
}

BOOL sub_299220410(uint64_t a1, unsigned __int16 **a2, double a3)
{
  v6 = sub_299235724(1u);
  if ((atomic_load_explicit(&qword_2A145FE48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FE48))
  {
    *&qword_2A145FE40 = v6[7];
    __cxa_guard_release(&qword_2A145FE48);
  }

  if ((atomic_load_explicit(&qword_2A145FE58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FE58))
  {
    *&qword_2A145FE50 = v6[8];
    __cxa_guard_release(&qword_2A145FE58);
  }

  if ((atomic_load_explicit(&qword_2A145FE68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FE68))
  {
    *&qword_2A145FE60 = v6[4];
    __cxa_guard_release(&qword_2A145FE68);
  }

  if (*a2 == a2[1])
  {
    return 1;
  }

  if (*&qword_2A145FE40 >= a3)
  {
    v7 = *&qword_2A145FE60;
    v8 = *&qword_2A145FE60;
  }

  else
  {
    v7 = v6[5];
    if (*&qword_2A145FE50 <= a3)
    {
      v8 = v6[6];
    }

    else
    {
      v7 = *&qword_2A145FE60 + (a3 - *&qword_2A145FE40) * ((v7 - *&qword_2A145FE60) / (*&qword_2A145FE50 - *&qword_2A145FE40));
      v8 = *&qword_2A145FE60 + (a3 - *&qword_2A145FE40) * ((v6[6] - *&qword_2A145FE60) / (*&qword_2A145FE50 - *&qword_2A145FE40));
    }
  }

  v10 = *(a1 + 80);
  v9 = *(a1 + 88);
  if (v9 != v10)
  {
    v11 = *(v10 + 34);
    if (v11)
    {
      v12 = *(&off_29EF13DA0)[2 * **a2];
      if (v12 != v11)
      {
        if (sub_299220740(v11, v12, *(a1 + 128), *(a1 + 136)) > v7)
        {
          return 1;
        }

        v10 = *(a1 + 80);
        v9 = *(a1 + 88);
      }
    }
  }

  if (v9 != v10)
  {
    v13 = *(v9 - 6);
    if (v13)
    {
      v14 = strlen((&off_29EF13DA0)[2 * *(a2[1] - 1)]);
      if (v14)
      {
        v15 = (&off_29EF13DA0)[2 * *(a2[1] - 1)][v14 - 1];
        if (v15 != v13 && sub_299220740(v13, v15, *(a1 + 128), *(a1 + 136)) > v8)
        {
          return 1;
        }
      }
    }
  }

  v17 = *a2;
  v16 = a2[1];
  if (v17 == v16)
  {
    v20 = 0.0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0.0;
    do
    {
      v21 = &(&off_29EF13DA0)[2 * *v17];
      v22 = *v21;
      v23 = v21[1];
      if (v19)
      {
        v20 = v20 + sub_299220740(*v22, v19[v18 - 1], *(a1 + 128), *(a1 + 136));
      }

      v24 = *(a1 + 136);
      if (v24 && *v24 == 1)
      {
        v29 = v22;
        v30 = v23;
        v31 = 0;
        v25 = sub_29921C940(&v29, v24);
      }

      else
      {
        v29 = v22;
        v30 = v23;
        v31 = 0;
        v25 = sub_29921C83C(&v29, *(a1 + 128));
      }

      v20 = v20 + v25;
      ++v17;
      v18 = v22;
      v19 = v23;
    }

    while (v17 != v16);
  }

  v27 = vabdd_f64(a3, v20);
  v28 = v20 * v6[3];
  if (v28 < v8)
  {
    v28 = v8;
  }

  return v27 > v28;
}

double sub_299220740(int a1, int a2, uint64_t a3, _BYTE *a4)
{
  if (a4 && *a4 == 1)
  {
    return sub_29927BDA0(a4, a1, a2);
  }

  if (a3 && *(a3 + 96) == 1)
  {
    return sub_299324E1C(a3, a1, a2);
  }

  return flt_299400E50[26 * a1 - 2619 + a2];
}

void sub_2992207A4(void *a1, uint64_t *a2, char a3, double a4)
{
  v8 = sub_29930AF10();
  v9 = *a2;
  if (a2[1] != *a2)
  {
    v10 = 0;
    v11 = 0;
    v12 = *v8 & ((*(v8 + 1) & 0x4000) != 0);
    v13 = a1 + 6;
    v14 = 0.0;
    v70 = v12;
    while (1)
    {
      v15 = (v9 + 32 * v11);
      v16 = *(v15 + 1);
      if (*v15 == v16)
      {
        goto LABEL_54;
      }

      sub_2991A650C(__p, (v16 - *v15) >> 2);
      v18 = *v15;
      v17 = *(v15 + 1);
      if (v17 != *v15)
      {
        v19 = (v17 - *v15) >> 2;
        v20 = __p[0];
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v21 = *v15;
        do
        {
          v22 = *v21++;
          *v20++ = v22;
          --v19;
        }

        while (v19);
      }

      if (a3)
      {
        if ((*(*a1 + 40))(a1, __p, v11, a4))
        {
          if (v12)
          {
            v23 = sub_29921CA44(__p);
            v75 = v23;
            v24 = sub_29930AF10();
            sub_299277A90(v23, &v72);
            v25 = v72;
            v66 = *(v15 + 3);
            sub_29930B514(v24, 0x4000u, "Filtered by distance: %s, %.4f\n", v26, v27, v28, v29, v30, v72);
            v12 = v70;
            if (v25)
            {
              MEMORY[0x29C29BF70](v25, 0x1000C8077774924);
            }

            if (v23)
            {
              CFRelease(v23);
            }
          }

LABEL_25:
          v41 = 4;
          goto LABEL_51;
        }

        v18 = *v15;
        v17 = *(v15 + 1);
      }

      v31 = a1[7];
      v32 = (v17 - v18) >> 2;
      if (a1[6] == v31)
      {
        break;
      }

      if (v32 < v10)
      {
        if (!v12)
        {
          goto LABEL_25;
        }

        v33 = sub_29921CA44(__p);
        v75 = v33;
        v34 = sub_29930AF10();
        sub_299277A90(v33, &v72);
        v35 = v72;
        v69 = (*(v15 + 1) - *v15) >> 2;
        v67 = *(v15 + 3);
        sub_29930B514(v34, 0x4000u, "Filtered by syllable count: %s, %.4f, syllableCount = %ld, bestSyllableCount = %ld\n", v36, v37, v38, v39, v40, v72);
        if (v35)
        {
          MEMORY[0x29C29BF70](v35, 0x1000C8077774924);
        }

        if (v33)
        {
          CFRelease(v33);
        }

        v41 = 4;
        goto LABEL_34;
      }

      v42 = v15[3];
      if (v42 >= v14 - *(sub_299235724(1u) + 4))
      {
        v31 = a1[7];
        goto LABEL_36;
      }

      if (v12)
      {
        v43 = sub_29921CA44(__p);
        v75 = v43;
        v44 = sub_29930AF10();
        sub_299277A90(v43, &v72);
        v45 = v72;
        v68 = *(v15 + 3);
        sub_29930B514(v44, 0x4000u, "Filtered by score margin: %s, score = %.4f, bestcore = %.4f\n", v46, v47, v48, v49, v50, v72);
        if (v45)
        {
          MEMORY[0x29C29BF70](v45, 0x1000C8077774924);
        }

        if (v43)
        {
          CFRelease(v43);
        }

        v41 = 2;
LABEL_34:
        v12 = v70;
        goto LABEL_51;
      }

      v41 = 2;
LABEL_51:
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if ((v41 | 4) != 4)
      {
        return;
      }

LABEL_54:
      ++v11;
      v9 = *a2;
      if (v11 >= (a2[1] - *a2) >> 5)
      {
        return;
      }
    }

    v14 = v15[3];
    v10 = v32;
LABEL_36:
    v51 = a1[8];
    if (a1[9] <= ((__p[1] - __p[0]) >> 1))
    {
      v52 = (__p[1] - __p[0]) >> 1;
    }

    else
    {
      v52 = a1[9];
    }

    a1[9] = v52;
    if (v31 >= v51)
    {
      v55 = (v31 - *v13) >> 5;
      v56 = v55 + 1;
      if ((v55 + 1) >> 59)
      {
        sub_299212A8C();
      }

      v57 = v51 - *v13;
      if (v57 >> 4 > v56)
      {
        v56 = v57 >> 4;
      }

      if (v57 >= 0x7FFFFFFFFFFFFFE0)
      {
        v58 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v58 = v56;
      }

      v78 = a1 + 6;
      if (v58)
      {
        sub_299221EAC((a1 + 6), v58);
      }

      v59 = (32 * v55);
      v75 = 0;
      v76 = v59;
      *(&v77 + 1) = 0;
      v60 = *(v15 + 3);
      v59->isa = 0;
      v59->info = 0;
      v59->data = 0;
      *&v59->isa = *__p;
      v59->data = v74;
      __p[0] = 0;
      __p[1] = 0;
      v74 = 0;
      v59->length = v60;
      *&v77 = 32 * v55 + 32;
      v61 = a1[6];
      v62 = a1[7];
      v63 = 32 * v55 + v61 - v62;
      sub_299221EF4((a1 + 6), v61, v62, (&v59->isa + v61 - v62));
      v64 = a1[6];
      a1[6] = v63;
      v65 = a1[8];
      v71 = v77;
      *(a1 + 7) = v77;
      *&v77 = v64;
      *(&v77 + 1) = v65;
      v75 = v64;
      v76 = v64;
      sub_299222040(&v75);
      v54 = v71;
    }

    else
    {
      v53 = *(v15 + 3);
      *v31 = 0;
      v31[1] = 0;
      v31[2] = 0;
      *v31 = *__p;
      v31[2] = v74;
      __p[0] = 0;
      __p[1] = 0;
      v74 = 0;
      v31[3] = v53;
      v54 = v31 + 4;
    }

    v41 = 0;
    a1[7] = v54;
    goto LABEL_51;
  }
}

void sub_299220C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, const void *a23)
{
  if (v23)
  {
    MEMORY[0x29C29BF70](v23, 0x1000C8077774924);
  }

  sub_299219AB4(&a23, 0);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void **sub_299220CCC(void **a1)
{
  v3 = a1;
  sub_29920E060(&v3);
  return a1;
}

__n128 sub_299220D04(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_299220D54(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = a1[5];
  v7 = *(a1[4] + 8);
  v9 = v7[6];
  v8 = v7[7];
  if (v9 >= v8)
  {
    v11 = v7[5];
    v12 = (v9 - v11) >> 5;
    v13 = v12 + 1;
    if ((v12 + 1) >> 59)
    {
      sub_299212A8C();
    }

    v14 = v8 - v11;
    if (v14 >> 4 > v13)
    {
      v13 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (!(v15 >> 59))
      {
        operator new();
      }

      sub_29919600C();
    }

    v16 = (v9 - v11) >> 5;
    v17 = (32 * v12);
    *v17 = 0u;
    v17[1] = 0u;
    v10 = 32 * v12 + 32;
    v18 = &v17[-2 * v16];
    if (v11 != v9)
    {
      v19 = &v17[-2 * v16];
      v20 = v11;
      do
      {
        *v19 = *v20;
        *(v19 + 2) = *(v20 + 2);
        *v20 = 0;
        *(v20 + 1) = 0;
        *(v20 + 2) = 0;
        *(v19 + 3) = *(v20 + 3);
        v20 += 32;
        v19 += 2;
      }

      while (v20 != v9);
      do
      {
        v21 = *v11;
        if (*v11)
        {
          *(v11 + 1) = v21;
          operator delete(v21);
        }

        v11 += 32;
      }

      while (v11 != v9);
      v11 = v7[5];
    }

    v7[5] = v18;
    v7[6] = v10;
    v7[7] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v9 = 0u;
    *(v9 + 1) = 0u;
    v10 = (v9 + 32);
  }

  v7[6] = v10;
  v22 = *(*(a1[4] + 8) + 48);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2000000000;
  v27[3] = v22 - 32;
  v23 = (*(*v6 + 56))(v6);
  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 0x40000000;
  v26[2] = sub_299220FFC;
  v26[3] = &unk_29EF0D7E8;
  v26[4] = v27;
  sub_2992D6138(v23, a2, v26);
  v24 = (*(*v6 + 56))(v6);
  sub_2992D6254(v24, a2);
  *(v22 - 8) = logf(v25);
  if (a1[6] <= ((*(*(a1[4] + 8) + 48) - *(*(a1[4] + 8) + 40)) >> 5))
  {
    *a3 = 1;
  }

  _Block_object_dispose(v27, 8);
}

void sub_299220FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_299220FFC(uint64_t a1, int a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  if (v5 >= v4)
  {
    v7 = *v3;
    v8 = v5 - *v3;
    v9 = v8 >> 2;
    v10 = (v8 >> 2) + 1;
    if (v10 >> 62)
    {
      sub_299212A8C();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      sub_2992F86B0(*(*(*(a1 + 32) + 8) + 24), v13);
    }

    *(4 * v9) = a2;
    v6 = 4 * v9 + 4;
    memcpy(0, v7, v8);
    v14 = *v3;
    *v3 = 0;
    *(v3 + 8) = v6;
    *(v3 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(v3 + 8) = v6;
}

void sub_2992210E4(void *a1, uint64_t *a2)
{
  v76[1] = *MEMORY[0x29EDCA608];
  v5 = a1[10];
  v4 = a1[11];
  if (v4 == v5)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = *(v4 - 16) - *(v5 + 24);
  }

  sub_2992207A4(a1, a2, 1, v6);
  v7 = a1[6];
  v8 = a1[7];
  v67 = a1 + 6;
  if (v7 == v8)
  {
    sub_2992207A4(a1, a2, 0, v6);
    v7 = a1[6];
    v8 = a1[7];
  }

  if (v7 != v8)
  {
    v10 = *v7;
    v9 = v7[1];
    if ((v9 - *v7) <= 4)
    {
      memset(&v72, 0, sizeof(v72));
      if (v10 != v9)
      {
        do
        {
          v11 = &(&off_29EF13DA0)[2 * *v10];
          v12 = v11[1];
          if (v12 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_2991A11B0();
          }

          v13 = *v11;
          if (v12 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v70) = v11[1];
          if (v12)
          {
            memmove(&__dst, v13, v12);
          }

          *(&__dst + v12) = 0;
          if (v70 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          if (v70 >= 0)
          {
            v15 = HIBYTE(v70);
          }

          else
          {
            v15 = *(&__dst + 1);
          }

          std::string::append(&v72, p_dst, v15);
          if (SHIBYTE(v70) < 0)
          {
            operator delete(__dst);
          }

          ++v10;
        }

        while (v10 != v9);
        v16 = (v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v72.__r_.__value_.__r.__words[2]) : v72.__r_.__value_.__l.__size_;
        if (v16)
        {
          v17 = 0;
          v66 = 0;
          v18 = *(a1[6] + 24) + -1.0;
          v19 = 1;
          while (1)
          {
            v20 = a1[2];
            v21 = **v20;
            if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v22 = &v72;
            }

            else
            {
              v22 = v72.__r_.__value_.__r.__words[0];
            }

            if (v19 && v21)
            {
              v23 = 0;
              do
              {
                v21 = sub_2993B2448(v20, v21, v22->__r_.__value_.__s.__data_[v23++]);
                if (v21)
                {
                  v24 = v23 >= v19;
                }

                else
                {
                  v24 = 1;
                }
              }

              while (!v24);
            }

            if (!v21 || (v21[4] & 2) == 0)
            {
              goto LABEL_71;
            }

            LOWORD(v68) = v21[1];
            v70 = 0;
            __dst = 0uLL;
            sub_2992220D8(&__dst, &v68, &v68 + 2, 1);
            if (v16 <= v19)
            {
              break;
            }

            v25 = a1[2];
            v26 = **v25;
            if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = &v72;
            }

            else
            {
              v27 = v72.__r_.__value_.__r.__words[0];
            }

            if (v26)
            {
              v28 = v27 + v17;
              v29 = 1;
              do
              {
                v30 = sub_2993B2448(v25, v26, v28[v29]);
                v26 = v30;
                if (v30)
                {
                  v31 = v29 >= v16 - v19;
                }

                else
                {
                  v31 = 1;
                }

                ++v29;
              }

              while (!v31);
              if (v30 && (v30[4] & 2) != 0)
              {
                v32 = *(&__dst + 1);
                if (*(&__dst + 1) >= v70)
                {
                  v39 = __dst;
                  v40 = *(&__dst + 1) - __dst;
                  v41 = (*(&__dst + 1) - __dst) >> 1;
                  if (v41 <= -2)
                  {
                    sub_299212A8C();
                  }

                  if (v70 - __dst <= (v41 + 1))
                  {
                    v42 = v41 + 1;
                  }

                  else
                  {
                    v42 = v70 - __dst;
                  }

                  v43 = 0x7FFFFFFFFFFFFFFFLL;
                  if ((v70 - __dst) < 0x7FFFFFFFFFFFFFFELL)
                  {
                    v43 = v42;
                  }

                  if (v43)
                  {
                    sub_299212A48(&__dst, v43);
                  }

                  *(2 * v41) = v30[1];
                  v33 = 2 * v41 + 2;
                  memcpy(0, v39, v40);
                  v44 = __dst;
                  *&__dst = 0;
                  *(&__dst + 1) = v33;
                  v70 = 0;
                  if (v44)
                  {
                    operator delete(v44);
                  }
                }

                else
                {
                  **(&__dst + 1) = v30[1];
                  v33 = v32 + 2;
                }

                *(&__dst + 1) = v33;
LABEL_58:
                v35 = a1[6];
                v34 = a1[7];
                v36 = __dst;
                v37 = v33 - __dst;
                while (v35 != v34)
                {
                  if (*(v35 + 8) - *v35 == v37 && !memcmp(*v35, v36, v37))
                  {
                    goto LABEL_69;
                  }

                  v35 += 32;
                }

                if ((v37 >> 1) > a1[9])
                {
                  a1[9] = v37 >> 1;
                }

                v68 = v18;
                if (v34 >= a1[8])
                {
                  v38 = sub_29922214C(v67, &__dst, &v68);
                }

                else
                {
                  *v34 = 0;
                  *(v34 + 8) = 0;
                  *(v34 + 16) = 0;
                  *v34 = __dst;
                  *(v34 + 16) = v70;
                  __dst = 0uLL;
                  v70 = 0;
                  *(v34 + 24) = v18;
                  v38 = v34 + 32;
                }

                a1[7] = v38;
                v66 = 1;
              }
            }

LABEL_69:
            if (__dst)
            {
              *(&__dst + 1) = __dst;
              operator delete(__dst);
            }

LABEL_71:
            ++v19;
            ++v17;
            if (v19 > v16)
            {
              if (v66)
              {
                v45 = a1[6];
                v46 = a1[7];
                v47 = 126 - 2 * __clz((v46 - v45) >> 5);
                if (v46 == v45)
                {
                  v48 = 0;
                }

                else
                {
                  v48 = v47;
                }

                sub_299222278(v45, v46, v48, 1);
              }

              goto LABEL_89;
            }
          }

          v33 = *(&__dst + 1);
          goto LABEL_58;
        }
      }

LABEL_89:
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }
    }
  }

  if ((atomic_load_explicit(&qword_2A145FE70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FE70))
  {
    LODWORD(v72.__r_.__value_.__l.__data_) = 27984296;
    WORD2(v72.__r_.__value_.__r.__words[0]) = 428;
    sub_2992235B8(qword_2A145FE98, &v72, 3);
    __cxa_atexit(sub_299220CC8, qword_2A145FE98, &dword_29918C000);
    __cxa_guard_release(&qword_2A145FE70);
  }

  if ((atomic_load_explicit(&qword_2A145FE78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FE78))
  {
    v71 = 163;
    memset(&v72, 0, sizeof(v72));
    sub_2992220D8(&v72, &v71, &v72, 1);
    LODWORD(__dst) = 29425826;
    memset(v73, 0, sizeof(v73));
    sub_2992220D8(v73, &__dst, &__dst + 4, 2);
    LODWORD(v68) = 29425830;
    v75[0] = 0;
    v75[1] = 0;
    v74 = 0;
    sub_2992220D8(&v74, &v68, &v68 + 4, 2);
    qword_2A145FE80 = 0;
    *algn_2A145FE88 = 0;
    qword_2A145FE90 = 0;
    sub_299223290(&qword_2A145FE80, &v72, v76, 3uLL);
    for (i = 0; i != -9; i -= 3)
    {
      v65 = v75[i - 1];
      if (v65)
      {
        v75[i] = v65;
        operator delete(v65);
      }
    }

    __cxa_atexit(sub_299220CCC, &qword_2A145FE80, &dword_29918C000);
    __cxa_guard_release(&qword_2A145FE78);
  }

  v49 = a1[6];
  if (v49 != a1[7] && *(v49 + 8) - *v49 == 2)
  {
    if (sub_299223864(qword_2A145FE98, *v49))
    {
      v50 = qword_2A145FE80;
      v51 = *algn_2A145FE88;
      if (qword_2A145FE80 != *algn_2A145FE88)
      {
        v52 = 0;
        v53 = *(*v67 + 24) + -1.5;
        do
        {
          memset(&v72, 0, sizeof(v72));
          sub_299215EC0(&v72, *v50, v50[1], (v50[1] - *v50) >> 1);
          v55 = a1[6];
          v54 = a1[7];
          v56 = v72.__r_.__value_.__r.__words[0];
          v57 = v72.__r_.__value_.__l.__size_ - v72.__r_.__value_.__r.__words[0];
          while (v55 != v54)
          {
            if (*(v55 + 8) - *v55 == v57 && !memcmp(*v55, v56, v57))
            {
              goto LABEL_109;
            }

            v55 += 32;
          }

          if ((v57 >> 1) > a1[9])
          {
            a1[9] = v57 >> 1;
          }

          *&__dst = v53;
          if (v54 >= a1[8])
          {
            v58 = sub_29922214C(v67, &v72, &__dst);
            v56 = v72.__r_.__value_.__r.__words[0];
          }

          else
          {
            v56 = 0;
            *v54 = 0;
            *(v54 + 8) = 0;
            *(v54 + 16) = 0;
            *v54 = v72;
            memset(&v72, 0, sizeof(v72));
            *(v54 + 24) = v53;
            v58 = v54 + 32;
          }

          a1[7] = v58;
          v52 = 1;
LABEL_109:
          if (v56)
          {
            v72.__r_.__value_.__l.__size_ = v56;
            operator delete(v56);
          }

          v50 += 3;
        }

        while (v50 != v51);
        if (v52)
        {
          v59 = a1[6];
          v60 = a1[7];
          v61 = 126 - 2 * __clz((v60 - v59) >> 5);
          if (v60 == v59)
          {
            v62 = 0;
          }

          else
          {
            v62 = v61;
          }

          sub_299222278(v59, v60, v62, 1);
        }
      }
    }
  }

  v63 = *MEMORY[0x29EDCA608];
}

void sub_2992218A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = &a30;
  v32 = -72;
  while (1)
  {
    v33 = *(v31 - 1);
    if (v33)
    {
      *v31 = v33;
      operator delete(v33);
    }

    v31 -= 3;
    v32 += 24;
    if (!v32)
    {
      __cxa_guard_abort(&qword_2A145FE78);
      _Unwind_Resume(a1);
    }
  }
}

void sub_29922199C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3 != v4)
  {
    v7 = 1;
    do
    {
      v8 = sub_29921CA44(v3);
      sub_299221A4C(a3, 0, v8, *(v3 + 24));
      if (v8)
      {
        CFRelease(v8);
      }

      if (v7 > a2)
      {
        break;
      }

      v3 += 32;
      ++v7;
    }

    while (v3 != v4);
  }
}

void sub_299221A34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_299221A4C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = a2;
  v7 = a3;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_2991A2240();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

void sub_299221AB0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v6 = (a1 + 48);
  if (v7 != v8)
  {
    v9 = (v7 - v8) >> 5;
    do
    {
      v10 = v9 >> 1;
      v11 = &v8[4 * (v9 >> 1)];
      v12 = *(v11 + 3);
      v13 = v11 + 4;
      v9 += ~(v9 >> 1);
      if (v12 > *(a2 + 24))
      {
        v8 = v13;
      }

      else
      {
        v9 = v10;
      }
    }

    while (v9);
    v7 = v8;
  }

  sub_299221B48(v6, v7, a2);
  v14 = *(a1 + 56);
  if (a3 <= (v14 - *(a1 + 48)) >> 5)
  {
    v16 = v14 - 32;
    v15 = *(v14 - 32);
    if (v15)
    {
      *(v14 - 24) = v15;
      operator delete(v15);
    }

    *(a1 + 56) = v16;
  }
}

uint64_t *sub_299221B48(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v15 = *a1;
    v16 = ((v7 - *a1) >> 5) + 1;
    if (v16 >> 59)
    {
      sub_299212A8C();
    }

    v17 = a2 - v15;
    v18 = v6 - v15;
    if (v18 >> 4 > v16)
    {
      v16 = v18 >> 4;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFE0)
    {
      v19 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v16;
    }

    v20 = v17 >> 5;
    v33 = a1;
    if (v19)
    {
      sub_299221EAC(a1, v19);
    }

    v21 = (32 * v20);
    v30 = 0;
    v31 = 32 * v20;
    v32 = (32 * v20);
    if (!v20)
    {
      if (v17 < 1)
      {
        if (v15 == v4)
        {
          v22 = 1;
        }

        else
        {
          v22 = v17 >> 4;
        }

        v34 = a1;
        sub_299221EAC(a1, v22);
      }

      v21 = (v21 - (((v17 >> 1) + 16) & 0xFFFFFFFFFFFFFFE0));
      v31 = v21;
      *&v32 = v21;
    }

    *v21 = 0;
    v21[1] = 0;
    v21[2] = 0;
    sub_299215EC0(v21, *a3, a3[1], (a3[1] - *a3) >> 1);
    v21[3] = a3[3];
    v23 = v31;
    *&v32 = v32 + 32;
    sub_299221EF4(a1, v4, a1[1], v32);
    v24 = *a1;
    v25 = v31;
    *&v32 = v32 + a1[1] - v4;
    a1[1] = v4;
    v26 = (v25 + v24 - v4);
    sub_299221EF4(a1, v24, v4, v26);
    v27 = *a1;
    *a1 = v26;
    v28 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v27;
    *(&v32 + 1) = v28;
    v30 = v27;
    v31 = v27;
    sub_299222040(&v30);
    return v23;
  }

  else if (a2 == v7)
  {
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
    sub_299215EC0(v7, *a3, a3[1], (a3[1] - *a3) >> 1);
    v7[3] = a3[3];
    a1[1] = v7 + 4;
  }

  else
  {
    v8 = v7 - 4;
    v9 = a1[1];
    if (v7 >= 0x20)
    {
      v9 = v7 + 4;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      *v7 = *v8;
      v7[2] = *(v7 - 2);
      *v8 = 0;
      *(v7 - 3) = 0;
      *(v7 - 2) = 0;
      v7[3] = *(v7 - 1);
    }

    a1[1] = v9;
    if (v7 != a2 + 4)
    {
      v10 = 0;
      v11 = a2 - v7 + 32;
      do
      {
        sub_29922323C(&v7[v10 / 8 - 4], &v7[v10 / 8 - 8]);
        v7[v10 / 8 - 1] = v7[v10 / 8 - 5];
        v10 -= 32;
      }

      while (v11 != v10);
      v9 = a1[1];
    }

    v12 = v9 <= a3 || v4 > a3;
    v13 = 4;
    if (v12)
    {
      v13 = 0;
    }

    v14 = &a3[v13];
    if (v4 != &a3[v13])
    {
      sub_299223494(v4, *v14, v14[1], (v14[1] - *v14) >> 1);
    }

    v4[3] = v14[3];
  }

  return v4;
}

void sub_299221EAC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_299221EF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      a4[3] = *(v6 + 24);
      v6 += 32;
      a4 += 4;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    do
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }

    while (v5 != a3);
  }

  return sub_299221FB8(v9);
}

uint64_t sub_299221FB8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_299221FF0(a1);
  }

  return a1;
}

void sub_299221FF0(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 32);
      v3 -= 32;
      v4 = v5;
      if (v5)
      {
        *(v1 - 24) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t sub_299222040(uint64_t a1)
{
  sub_299222078(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_299222078(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

uint64_t sub_2992220D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_2991A6584(result, a4);
  }

  return result;
}

void sub_299222130(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29922214C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_299212A8C();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v20 = a1;
  if (v8)
  {
    sub_299221EAC(a1, v8);
  }

  v9 = (32 * v3);
  v17 = 0;
  v18 = v9;
  *(&v19 + 1) = 0;
  v10 = *a3;
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  *v9 = *a2;
  v9[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v9[3] = v10;
  *&v19 = 32 * v3 + 32;
  v11 = a1[1];
  v12 = (32 * v3 + *a1 - v11);
  sub_299221EF4(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_299222040(&v17);
  return v16;
}

void sub_299222264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_299222040(va);
  _Unwind_Resume(a1);
}

void sub_299222278(__n128 *a1, __n128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a1;
LABEL_2:
  v9 = v8;
  while (1)
  {
    v10 = (a2 - v9) >> 5;
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      break;
    }

    switch(v10)
    {
      case 3uLL:
        v67 = v9[3].n128_f64[1];
        v68 = a2[-1].n128_f64[1];
        if (v67 <= v9[1].n128_f64[1])
        {
          if (v68 <= v67)
          {
            return;
          }

          v65 = &v9[2];
          v66 = a2 - 2;
          goto LABEL_186;
        }

        if (v68 <= v67)
        {
          sub_299222DB4(v9, v9 + 2);
          if (a2[-1].n128_f64[1] <= v9[3].n128_f64[1])
          {
            return;
          }

          v64 = &v9[2];
        }

        else
        {
          v64 = v9;
        }

        v63 = a2 - 2;
LABEL_201:

        sub_299222DB4(v64, v63);
        return;
      case 4uLL:

        sub_299222E34(v9, v9 + 2, v9 + 4, a2 - 2);
        return;
      case 5uLL:
        sub_299222E34(v9, v9 + 2, v9 + 4, v9 + 6);
        if (a2[-1].n128_f64[1] <= v9[7].n128_f64[1])
        {
          return;
        }

        sub_299222DB4(&v9[6], a2 - 2);
        if (v9[7].n128_f64[1] <= v9[5].n128_f64[1])
        {
          return;
        }

        sub_299222DB4(&v9[4], v9 + 6);
        if (v9[5].n128_f64[1] <= v9[3].n128_f64[1])
        {
          return;
        }

        v65 = &v9[2];
        v66 = v9 + 4;
LABEL_186:
        sub_299222DB4(v65, v66);
        if (v9[3].n128_f64[1] <= v9[1].n128_f64[1])
        {
          return;
        }

        v63 = v9 + 2;
        v64 = v9;
        goto LABEL_201;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v69 = v9 + 2;
      v71 = v9 == a2 || v69 == a2;
      if (a4)
      {
        if (!v71)
        {
          v72 = 0;
          v73 = v9;
          do
          {
            v74 = v69;
            v75 = v73[3].n128_f64[1];
            if (v75 > v73[1].n128_f64[1])
            {
              v125 = *v69;
              v76 = v73[3].n128_u64[0];
              v69->n128_u64[0] = 0;
              v69->n128_u64[1] = 0;
              v77 = v72;
              v69[1].n128_u64[0] = 0;
              while (1)
              {
                v78 = (v9->n128_f64 + v77);
                sub_29922323C(&v9[2] + v77, (v9 + v77));
                *(&v9[3].n128_u64[1] + v77) = *(&v9[1].n128_u64[1] + v77);
                if (!v77)
                {
                  break;
                }

                v77 -= 32;
                if (v75 <= *(v78 - 1))
                {
                  v79 = &v9[2] + v77;
                  goto LABEL_137;
                }
              }

              v79 = v9;
LABEL_137:
              v80 = *v79;
              if (*v79)
              {
                *(v79 + 8) = v80;
                operator delete(v80);
              }

              *v79 = v125;
              *(v79 + 16) = v76;
              *(v79 + 24) = v75;
            }

            v69 = v74 + 2;
            v72 += 32;
            v73 = v74;
          }

          while (&v74[2] != a2);
        }
      }

      else if (!v71)
      {
        v114 = &v9[3].n128_f64[1];
        do
        {
          v115 = v69;
          v116 = v9[3].n128_f64[1];
          if (v116 > v9[1].n128_f64[1])
          {
            v128 = *v69;
            v117 = v9[3].n128_u64[0];
            v69->n128_u64[0] = 0;
            v69->n128_u64[1] = 0;
            v118 = v114;
            v69[1].n128_u64[0] = 0;
            do
            {
              v119 = v118;
              sub_29922323C((v118 - 3), (v118 - 7));
              v120 = *(v118 - 4);
              v118 -= 4;
              *v119 = v120;
            }

            while (v116 > *(v119 - 8));
            v121 = *(v118 - 3);
            if (v121)
            {
              *(v118 - 2) = v121;
              operator delete(v121);
            }

            *(v118 - 3) = v128;
            *(v118 - 1) = v117;
            *v118 = v116;
          }

          v69 = v115 + 2;
          v114 += 4;
          v9 = v115;
        }

        while (&v115[2] != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return;
      }

      v81 = v11 >> 1;
      v82 = v11 >> 1;
      do
      {
        v83 = v82;
        if (v81 >= v82)
        {
          v84 = (2 * v82) | 1;
          v85 = &v9[2 * v84];
          if (2 * v83 + 2 < v10 && v85[1].n128_f64[1] > v85[3].n128_f64[1])
          {
            v85 += 2;
            v84 = 2 * v83 + 2;
          }

          v86 = &v9[2 * v83];
          v87 = v86[1].n128_f64[1];
          if (v85[1].n128_f64[1] <= v87)
          {
            v126 = *v86;
            v88 = v86[1].n128_u64[0];
            v86->n128_u64[1] = 0;
            v86[1].n128_u64[0] = 0;
            v86->n128_u64[0] = 0;
            do
            {
              v89 = v86;
              v86 = v85;
              sub_29922323C(v89, v85);
              *(v89 + 24) = v86[1].n128_u64[1];
              if (v81 < v84)
              {
                break;
              }

              v90 = 2 * v84;
              v84 = (2 * v84) | 1;
              v85 = &v9[2 * v84];
              v91 = v90 + 2;
              if (v91 < v10 && v85[1].n128_f64[1] > v85[3].n128_f64[1])
              {
                v85 += 2;
                v84 = v91;
              }
            }

            while (v85[1].n128_f64[1] <= v87);
            v92 = v86->n128_u64[0];
            if (v86->n128_u64[0])
            {
              v86->n128_u64[1] = v92;
              operator delete(v92);
            }

            *v86 = v126;
            v86[1].n128_u64[0] = v88;
            v86[1].n128_f64[1] = v87;
          }
        }

        v82 = v83 - 1;
      }

      while (v83);
      while (2)
      {
        if (v10 >= 2)
        {
          v93 = 0;
          v94 = v9->n128_u64[0];
          v95 = v9->n128_u64[1];
          v96 = v9[1].n128_u64[0];
          v9->n128_u64[1] = 0;
          v9[1].n128_u64[0] = 0;
          v9->n128_u64[0] = 0;
          v97 = v9;
          v98 = v9[1].n128_f64[1];
          do
          {
            v99 = (v97 + 32 * v93);
            v100 = v99 + 2;
            if (2 * v93 + 2 >= v10)
            {
              v93 = (2 * v93) | 1;
            }

            else
            {
              v101 = v99[3].n128_f64[1];
              v102 = v99[5].n128_f64[1];
              v103 = v99 + 4;
              if (v101 <= v102)
              {
                v93 = (2 * v93) | 1;
              }

              else
              {
                v100 = v103;
                v93 = 2 * v93 + 2;
              }
            }

            sub_29922323C(v97, v100);
            *(v97 + 24) = v100[1].n128_u64[1];
            v97 = v100;
          }

          while (v93 <= ((v10 - 2) >> 1));
          if (v100 == &a2[-2])
          {
            v113 = v100->n128_u64[0];
            if (v100->n128_u64[0])
            {
              v100->n128_u64[1] = v113;
              operator delete(v113);
            }

            v100->n128_u64[0] = v94;
            v100->n128_u64[1] = v95;
            v100[1].n128_u64[0] = v96;
LABEL_181:
            v100[1].n128_f64[1] = v98;
          }

          else
          {
            sub_29922323C(v100, a2 - 2);
            v100[1].n128_u64[1] = a2[-1].n128_u64[1];
            v104 = a2[-2].n128_u64[0];
            if (v104)
            {
              a2[-2].n128_u64[1] = v104;
              operator delete(v104);
            }

            a2[-2].n128_u64[0] = v94;
            a2[-2].n128_u64[1] = v95;
            a2[-1].n128_u64[0] = v96;
            a2[-1].n128_f64[1] = v98;
            v105 = (&v100[2] - v9) >> 5;
            v106 = v105 < 2;
            v107 = v105 - 2;
            if (!v106)
            {
              v108 = v107 >> 1;
              v109 = &v9[2 * (v107 >> 1)];
              v98 = v100[1].n128_f64[1];
              if (v109[1].n128_f64[1] > v98)
              {
                v127 = *v100;
                v110 = v100[1].n128_u64[0];
                v100->n128_u64[1] = 0;
                v100[1].n128_u64[0] = 0;
                v100->n128_u64[0] = 0;
                do
                {
                  v111 = v100;
                  v100 = v109;
                  sub_29922323C(v111, v109);
                  *(v111 + 24) = v100[1].n128_u64[1];
                  if (!v108)
                  {
                    break;
                  }

                  v108 = (v108 - 1) >> 1;
                  v109 = &v9[2 * v108];
                }

                while (v109[1].n128_f64[1] > v98);
                v112 = v100->n128_u64[0];
                if (v100->n128_u64[0])
                {
                  v100->n128_u64[1] = v112;
                  operator delete(v112);
                }

                *v100 = v127;
                v100[1].n128_u64[0] = v110;
                goto LABEL_181;
              }
            }
          }
        }

        a2 -= 2;
        v106 = v10-- > 2;
        if (!v106)
        {
          return;
        }

        continue;
      }
    }

    v12 = &v9[2 * (v10 >> 1)];
    v13 = a2[-1].n128_f64[1];
    if (v10 < 0x81)
    {
      v17 = v9[1].n128_f64[1];
      if (v17 <= v12[1].n128_f64[1])
      {
        if (v13 <= v17)
        {
          goto LABEL_61;
        }

        sub_299222DB4(v9, a2 - 2);
        if (v9[1].n128_f64[1] <= v12[1].n128_f64[1])
        {
          goto LABEL_61;
        }

        v18 = &v9[2 * (v10 >> 1)];
        v19 = v9;
      }

      else
      {
        v18 = &v9[2 * (v10 >> 1)];
        if (v13 <= v17)
        {
          sub_299222DB4(v18, v9);
          if (a2[-1].n128_f64[1] <= v9[1].n128_f64[1])
          {
            goto LABEL_61;
          }

          v18 = v9;
        }

        v19 = a2 - 2;
      }

      sub_299222DB4(v18, v19);
      goto LABEL_61;
    }

    v14 = v12[1].n128_f64[1];
    if (v14 > v9[1].n128_f64[1])
    {
      v15 = v9;
      if (v13 <= v14)
      {
        sub_299222DB4(v9, &v9[2 * (v10 >> 1)]);
        if (a2[-1].n128_f64[1] <= v12[1].n128_f64[1])
        {
          goto LABEL_27;
        }

        v15 = &v9[2 * (v10 >> 1)];
      }

      v16 = a2 - 2;
      goto LABEL_26;
    }

    if (v13 > v14)
    {
      sub_299222DB4(&v9[2 * (v10 >> 1)], a2 - 2);
      if (v12[1].n128_f64[1] > v9[1].n128_f64[1])
      {
        v15 = v9;
        v16 = &v9[2 * (v10 >> 1)];
LABEL_26:
        sub_299222DB4(v15, v16);
      }
    }

LABEL_27:
    v20 = v12[-1].n128_f64[1];
    v21 = a2[-3].n128_f64[1];
    if (v20 > v9[3].n128_f64[1])
    {
      v22 = &v9[2];
      if (v21 <= v20)
      {
        sub_299222DB4(v22, v12 - 2);
        if (a2[-3].n128_f64[1] <= v12[-1].n128_f64[1])
        {
          goto LABEL_40;
        }

        v22 = &v12[-2];
      }

      v23 = a2 - 4;
      goto LABEL_39;
    }

    if (v21 > v20)
    {
      sub_299222DB4(&v12[-2], a2 - 4);
      if (v12[-1].n128_f64[1] > v9[3].n128_f64[1])
      {
        v22 = &v9[2];
        v23 = v12 - 2;
LABEL_39:
        sub_299222DB4(v22, v23);
      }
    }

LABEL_40:
    v24 = v12[3].n128_f64[1];
    v25 = a2[-5].n128_f64[1];
    if (v24 > v9[5].n128_f64[1])
    {
      v26 = &v9[4];
      if (v25 <= v24)
      {
        sub_299222DB4(v26, v12 + 2);
        if (a2[-5].n128_f64[1] <= v12[3].n128_f64[1])
        {
          goto LABEL_49;
        }

        v26 = &v12[2];
      }

      v27 = a2 - 6;
      goto LABEL_48;
    }

    if (v25 > v24)
    {
      sub_299222DB4(&v12[2], a2 - 6);
      if (v12[3].n128_f64[1] > v9[5].n128_f64[1])
      {
        v26 = &v9[4];
        v27 = v12 + 2;
LABEL_48:
        sub_299222DB4(v26, v27);
      }
    }

LABEL_49:
    v28 = v12[1].n128_f64[1];
    v29 = v12[3].n128_f64[1];
    if (v28 <= v12[-1].n128_f64[1])
    {
      if (v29 <= v28)
      {
        goto LABEL_58;
      }

      sub_299222DB4(v12, v12 + 2);
      if (v12[1].n128_f64[1] <= v12[-1].n128_f64[1])
      {
        goto LABEL_58;
      }

      v31 = &v12[-2];
      v30 = &v9[2 * (v10 >> 1)];
      goto LABEL_57;
    }

    if (v29 > v28)
    {
      v30 = v12 + 2;
      v31 = &v12[-2];
LABEL_57:
      sub_299222DB4(v31, v30);
      goto LABEL_58;
    }

    sub_299222DB4(&v12[-2], v12);
    if (v12[3].n128_f64[1] > v12[1].n128_f64[1])
    {
      v30 = v12 + 2;
      v31 = &v9[2 * (v10 >> 1)];
      goto LABEL_57;
    }

LABEL_58:
    v122 = *v9;
    v32 = v9[1].n128_u64[0];
    v9->n128_u64[1] = 0;
    v9[1].n128_u64[0] = 0;
    v9->n128_u64[0] = 0;
    v33 = v9[1].n128_u64[1];
    sub_29922323C(v9, v12);
    v9[1].n128_u64[1] = v12[1].n128_u64[1];
    v34 = v12->n128_u64[0];
    if (v12->n128_u64[0])
    {
      v12->n128_u64[1] = v34;
      operator delete(v34);
    }

    *v12 = v122;
    v12[1].n128_u64[0] = v32;
    v9 = v8;
    v12[1].n128_u64[1] = v33;
LABEL_61:
    --a3;
    if (a4)
    {
      v35 = v9[1].n128_f64[1];
    }

    else
    {
      v35 = v9[1].n128_f64[1];
      if (v9[-1].n128_f64[1] <= v35)
      {
        v124 = *v9;
        v51 = v9[1].n128_u64[0];
        v9->n128_u64[1] = 0;
        v9[1].n128_u64[0] = 0;
        v9->n128_u64[0] = 0;
        if (v35 <= a2[-1].n128_f64[1])
        {
          v54 = v9 + 2;
          do
          {
            a1 = v54;
            if (v54 >= a2)
            {
              break;
            }

            v55 = v54[1].n128_f64[1];
            v54 += 2;
          }

          while (v35 <= v55);
        }

        else
        {
          v52 = v9;
          do
          {
            a1 = v52 + 2;
            v53 = v52[3].n128_f64[1];
            v52 += 2;
          }

          while (v35 <= v53);
        }

        v56 = a2;
        if (a1 < a2)
        {
          v57 = a2;
          do
          {
            v56 = v57 - 2;
            v58 = v57[-1].n128_f64[1];
            v57 -= 2;
          }

          while (v35 > v58);
        }

        while (a1 < v56)
        {
          sub_299222DB4(a1, v56);
          do
          {
            v59 = a1[3].n128_f64[1];
            a1 += 2;
          }

          while (v35 <= v59);
          do
          {
            v60 = v56[-1].n128_f64[1];
            v56 -= 2;
          }

          while (v35 > v60);
        }

        v61 = &a1[-2];
        if (&a1[-2] != v9)
        {
          sub_29922323C(v9, a1 - 2);
          v9[1].n128_u64[1] = a1[-1].n128_u64[1];
        }

        v62 = *v61;
        if (*v61)
        {
          a1[-2].n128_u64[1] = v62;
          operator delete(v62);
        }

        a4 = 0;
        a1[-2] = v124;
        a1[-1].n128_u64[0] = v51;
        a1[-1].n128_f64[1] = v35;
        goto LABEL_1;
      }
    }

    v36 = 0;
    v123 = *v9;
    v37 = v9[1].n128_u64[0];
    v9->n128_u64[1] = 0;
    v9[1].n128_u64[0] = 0;
    v9->n128_u64[0] = 0;
    do
    {
      v38 = v9[v36 + 3].n128_f64[1];
      v36 += 2;
    }

    while (v38 > v35);
    v39 = &v9[v36];
    v40 = a2;
    if (v36 == 2)
    {
      v43 = a2;
      while (v39 < v43)
      {
        v41 = v43 - 2;
        v44 = v43[-1].n128_f64[1];
        v43 -= 2;
        if (v44 > v35)
        {
          goto LABEL_74;
        }
      }

      v41 = v43;
    }

    else
    {
      do
      {
        v41 = v40 - 2;
        v42 = v40[-1].n128_f64[1];
        v40 -= 2;
      }

      while (v42 <= v35);
    }

LABEL_74:
    a1 = v39;
    if (v39 < v41)
    {
      v45 = v41;
      do
      {
        sub_299222DB4(a1, v45);
        do
        {
          v46 = a1[3].n128_f64[1];
          a1 += 2;
        }

        while (v46 > v35);
        do
        {
          v47 = v45[-1].n128_f64[1];
          v45 -= 2;
        }

        while (v47 <= v35);
      }

      while (a1 < v45);
    }

    v48 = &a1[-2];
    if (&a1[-2] != v9)
    {
      sub_29922323C(v9, a1 - 2);
      v9[1].n128_u64[1] = a1[-1].n128_u64[1];
    }

    v49 = *v48;
    if (*v48)
    {
      a1[-2].n128_u64[1] = v49;
      operator delete(v49);
    }

    a1[-2] = v123;
    a1[-1].n128_u64[0] = v37;
    a1[-1].n128_f64[1] = v35;
    if (v39 < v41)
    {
      goto LABEL_89;
    }

    v50 = sub_299222F4C(v9, a1 - 2);
    if (!sub_299222F4C(a1, a2))
    {
      v8 = a1;
      if (v50)
      {
        goto LABEL_2;
      }

LABEL_89:
      sub_299222278(v9, &a1[-2], a3, a4 & 1);
      a4 = 0;
      goto LABEL_1;
    }

    a2 = a1 - 2;
    if (v50)
    {
      return;
    }
  }

  if (v10 < 2)
  {
    return;
  }

  if (v10 != 2)
  {
    goto LABEL_10;
  }

  if (a2[-1].n128_f64[1] > v9[1].n128_f64[1])
  {
    v63 = a2 - 2;
    v64 = v8;
    goto LABEL_201;
  }
}

__n128 sub_299222DB4(uint64_t a1, __n128 *a2)
{
  v8 = *a1;
  v4 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v5 = *(a1 + 24);
  sub_29922323C(a1, a2);
  *(a1 + 24) = a2[1].n128_u64[1];
  v6 = a2->n128_u64[0];
  if (a2->n128_u64[0])
  {
    a2->n128_u64[1] = v6;
    operator delete(v6);
  }

  result = v8;
  *a2 = v8;
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u64[1] = v5;
  return result;
}

double sub_299222E34(uint64_t a1, __n128 *a2, __n128 *a3, __n128 *a4)
{
  v7 = a1;
  v8 = a2[1].n128_f64[1];
  v9 = a3[1].n128_f64[1];
  if (v8 <= *(a1 + 24))
  {
    if (v9 > v8)
    {
      sub_299222DB4(a2, a3);
      if (a2[1].n128_f64[1] > *(v7 + 24))
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 > v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      sub_299222DB4(a1, v10);
      goto LABEL_10;
    }

    sub_299222DB4(a1, a2);
    if (a3[1].n128_f64[1] > a2[1].n128_f64[1])
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  result = a4[1].n128_f64[1];
  if (result > a3[1].n128_f64[1])
  {
    sub_299222DB4(a3, a4);
    result = a3[1].n128_f64[1];
    if (result > a2[1].n128_f64[1])
    {
      sub_299222DB4(a2, a3);
      result = a2[1].n128_f64[1];
      if (result > *(v7 + 24))
      {

        *&result = sub_299222DB4(v7, a2).n128_u64[0];
      }
    }
  }

  return result;
}

BOOL sub_299222F4C(__n128 *a1, __n128 *a2)
{
  v3 = a1;
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = a1[3].n128_f64[1];
        v9 = a2[-1].n128_f64[1];
        if (v8 > a1[1].n128_f64[1])
        {
          if (v9 <= v8)
          {
            sub_299222DB4(a1, a1 + 2);
            if (a2[-1].n128_f64[1] <= v3[3].n128_f64[1])
            {
              return 1;
            }

            a1 = v3 + 2;
          }

          v5 = a2 - 2;
          goto LABEL_31;
        }

        if (v9 <= v8)
        {
          return 1;
        }

        v6 = &a1[2];
        v7 = a2 - 2;
        break;
      case 4:
        sub_299222E34(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      case 5:
        sub_299222E34(a1, a1 + 2, a1 + 4, a1 + 6);
        if (a2[-1].n128_f64[1] <= v3[7].n128_f64[1])
        {
          return 1;
        }

        sub_299222DB4(&v3[6], a2 - 2);
        if (v3[7].n128_f64[1] <= v3[5].n128_f64[1])
        {
          return 1;
        }

        sub_299222DB4(&v3[4], v3 + 6);
        if (v3[5].n128_f64[1] <= v3[3].n128_f64[1])
        {
          return 1;
        }

        v6 = &v3[2];
        v7 = v3 + 4;
        break;
      default:
        goto LABEL_16;
    }

    sub_299222DB4(v6, v7);
    if (v3[3].n128_f64[1] > v3[1].n128_f64[1])
    {
      v5 = v3 + 2;
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (a2[-1].n128_f64[1] > a1[1].n128_f64[1])
    {
      v5 = a2 - 2;
LABEL_24:
      a1 = v3;
LABEL_31:
      sub_299222DB4(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 4;
  v11 = a1[3].n128_f64[1];
  v12 = a1[5].n128_f64[1];
  if (v11 > a1[1].n128_f64[1])
  {
    if (v12 <= v11)
    {
      sub_299222DB4(a1, a1 + 2);
      if (v3[5].n128_f64[1] <= v3[3].n128_f64[1])
      {
        goto LABEL_36;
      }

      a1 = v3 + 2;
    }

    v13 = v3 + 4;
    goto LABEL_35;
  }

  if (v12 > v11)
  {
    sub_299222DB4(&a1[2], a1 + 4);
    if (v3[3].n128_f64[1] > v3[1].n128_f64[1])
    {
      v13 = v3 + 2;
      a1 = v3;
LABEL_35:
      sub_299222DB4(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 6;
  if (&v3[6] == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = v14[1].n128_f64[1];
    if (v17 > v10[1].n128_f64[1])
    {
      v24 = *v14;
      v18 = v14[1].n128_u64[0];
      v14->n128_u64[1] = 0;
      v14[1].n128_u64[0] = 0;
      v19 = v15;
      v14->n128_u64[0] = 0;
      while (1)
      {
        v20 = (v3->n128_f64 + v19);
        sub_29922323C(&v3[6] + v19, (v3 + v19 + 64));
        *(&v3[7].n128_u64[1] + v19) = *(&v3[5].n128_u64[1] + v19);
        if (v19 == -64)
        {
          break;
        }

        v19 -= 32;
        if (v17 <= v20[7])
        {
          v21 = &v3[6] + v19;
          goto LABEL_44;
        }
      }

      v21 = v3;
LABEL_44:
      v22 = *v21;
      if (*v21)
      {
        *(v21 + 8) = v22;
        operator delete(v22);
      }

      *v21 = v24;
      *(v21 + 16) = v18;
      *(v21 + 24) = v17;
      if (++v16 == 8)
      {
        return &v14[2] == a2;
      }
    }

    v10 = v14;
    v15 += 32;
    v14 += 2;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

__n128 sub_29922323C(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_299223290(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_29921EDFC(result, a4);
  }

  return result;
}

void sub_2992232F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29920E060(&a9);
  _Unwind_Resume(a1);
}

void *sub_299223318(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_299215EC0(v4, *v6, v6[1], (v6[1] - *v6) >> 1);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_2992233CC(v8);
  return v4;
}

uint64_t sub_2992233CC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29921EF34(a1);
  }

  return a1;
}

void sub_299223404(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 4);
        v6 -= 32;
        v7 = v8;
        if (v8)
        {
          *(v4 - 3) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_299223494(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2991A6584(v6, v10);
    }

    sub_299212A8C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
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

uint64_t sub_2992235B8(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 2 * a3;
    do
    {
      sub_299223630(a1, a2++);
      v5 -= 2;
    }

    while (v5);
  }

  return a1;
}

uint64_t **sub_299223630(void *a1, unsigned __int16 *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t **sub_299223864(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 8) == v3)
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
  }

  return result;
}

uint64_t sub_29922398C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F65450;
  a2[1] = v2;
  return result;
}

uint64_t sub_2992239B8(uint64_t a1, uint64_t a2, const __CFString **a3, uint64_t *a4)
{
  v4 = *a3;
  v5 = *a4;
  v6 = sub_29930AF10();
  sub_299277A90(v4, &v14);
  v7 = v14;
  result = sub_29930B514(v6, 0x4000u, "%s, %.4f\n", v8, v9, v10, v11, v12, v14);
  if (v7)
  {

    JUMPOUT(0x29C29BF70);
  }

  return result;
}

void sub_299223A5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299223A84(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F654C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299223AD0(uint64_t a1)
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

BOOL sub_299223B50(void *a1, const char *a2)
{
  if (qword_2A145FEC0 != -1)
  {
    dispatch_once(&qword_2A145FEC0, &unk_2A1F654D0);
  }

  return objc_msgSend_rangeOfCharacterFromSet_options_(a1, a2, qword_2A145FEC8, 0) != 0x7FFFFFFFFFFFFFFFLL;
}

id sub_299223BB8(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x29EDBA040], a2, @"⺮丨丬丶丷丿乀乁乚乛亅亠亻冂冖冫凵刂勹匕匚卩囗夂夊宀尢屮巛廴廾彐彑彡彳忄扌攴攵氵灬爫爿牜犭疒癶礻纟罒肀艸艹虍衤襾覀讠豸辶钅阝飠饣⺬");
  objc_msgSend_addCharactersInRange_(v2, v3, 11904, 342);
  result = v2;
  qword_2A145FEC8 = result;
  return result;
}

uint64_t sub_299223C04(uint64_t a1, unsigned int a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v4 = objc_alloc(MEMORY[0x29EDBA0F8]);

  return objc_msgSend_initWithBytes_length_encoding_(v4, v5, a1, a2, 4);
}

void sub_299223C68(uint64_t a1)
{
  *a1 = &unk_2A1F65500;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  operator new();
}

void sub_299223DD4(_Unwind_Exception *a1)
{
  sub_299223ED0((v1 + 56));
  sub_299219AB4((v1 + 24), 0);
  sub_299219AB4((v1 + 16), 0);
  sub_299224148(v2, 0);
  _Unwind_Resume(a1);
}

void sub_299223E58(uint64_t a1, const __CFURL *a2, const __CFArray *a3)
{
  v5 = sub_2992432B4(*MEMORY[0x29EDB8ED8], a2, 0);
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = &unk_2A1F836E8;
    }

    sub_299243598(v5, v7);
  }

  sub_299224148((a1 + 8), v6);
}

id ***sub_299223ED0(id ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2993F6678(v2);
    MEMORY[0x29C29BFB0](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t sub_299223F18(uint64_t a1)
{
  *a1 = &unk_2A1F65500;
  sub_299219AB4((a1 + 16), 0);
  sub_299219AB4((a1 + 24), 0);
  objc_msgSend_removeAllObjects(*(a1 + 40), v2, v3);

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 288);
  if (v5)
  {
    sub_2991A893C(v5);
  }

  sub_2993B8B28(a1 + 72);
  sub_299223ED0((a1 + 56));
  sub_299219AB4((a1 + 24), 0);
  sub_299219AB4((a1 + 16), 0);
  sub_299224148((a1 + 8), 0);
  return a1;
}

void sub_299223FD4(void *a1, uint64_t a2, const __CFString *a3)
{
  v5 = (*(*a1 + 232))(a1);
  sub_2992EEF40(a3, v5, (a1[4] & 0x2000000) != 0);
  operator new();
}

uint64_t sub_2992240FC(uint64_t a1)
{
  sub_299219AB4((a1 + 16), 0);
  sub_299219AB4((a1 + 24), 0);
  v4 = *(a1 + 40);

  return objc_msgSend_removeAllObjects(v4, v2, v3);
}

void sub_299224148(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_299224180(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 && *(a1[33] + 4) <= 7u)
  {
    sub_2993245EC(a4);
  }

  a1[34] = a4;
  v8 = *(*a1 + 16);

  return v8(a1, a2, a3, 0, 0, 0, 0);
}

uint64_t sub_299224220(const void **a1, const __CFString *a2, const void *a3, uint64_t a4, const __CFArray *a5)
{
  (*(*a1 + 33))(a1);
  a1[4] = a3;
  v10 = (*(*a1 + 36))(a1);
  if (v10)
  {
    *(v10 + 96) = (a3 & 0x80) == 0;
    sub_29932CA50(v10, 1);
  }

  if (CFStringCompare(a2, kMecabraAnalysisStringForFacemark[0], 0))
  {
    v11 = (*(*a1 + 38))(a1, a2);
    if (a2)
    {
      v12 = (a1 + 3);
      if ((*(*a1 + 39))(a1))
      {
        v14 = *v12;
        if (*v12 && CFStringHasPrefix(v11, v14))
        {
          Length = CFStringGetLength(*v12);
        }

        else
        {
          objc_msgSend_reset(**a1[7], v14, v13);
          Length = 0;
        }

        while (Length < CFStringGetLength(v11))
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(v11, Length);
          if (a5 && Length < CFArrayGetCount(a5))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a5, Length);
            objc_msgSend_addInputCharacter_geometryModel_geometryData_(**a1[7], v21, CharacterAtIndex, a4, ValueAtIndex);
          }

          else
          {
            objc_msgSend_addInputCharacter_geometryModel_geometryData_(**a1[7], v18, CharacterAtIndex, a4, 0);
          }

          ++Length;
        }
      }

      sub_299219AB4(a1 + 3, v11);
      Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], a2);
    }

    else
    {
      sub_299219AB4(a1 + 3, v11);
      Copy = 0;
    }

    sub_299219AB4(a1 + 2, Copy);
    return a1[1] && a1[2] != 0;
  }

  else
  {

    return sub_2992244A8(a1);
  }
}

uint64_t sub_2992244A8(void *a1)
{
  v2 = a1[34];
  if (v2 && sub_299225D3C(v2, kMecabraContextOptionPrivateMode) == *MEMORY[0x29EDB8F00])
  {
    return 0;
  }

  v3 = a1[35];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = sub_299225084;
  v5[3] = &unk_29EF0D878;
  v5[4] = a1;
  sub_2993BD8CC(v3, v5);
  a1[6] = 0;
  return 1;
}

uint64_t sub_299224560(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_count(*(a1 + 40), a2, a3))
  {
    v6 = *(a1 + 48);
  }

  else
  {
    v7 = *(a1 + 16);
    if (v7 && CFStringGetLength(v7) >= 1)
    {
      v8 = objc_autoreleasePoolPush();
      (*(*a1 + 248))(a1);
      if ((*(*a1 + 312))(a1))
      {
        (*(*a1 + 256))(a1);
      }

      objc_autoreleasePoolPop(v8);
    }

    v6 = 0;
    *(a1 + 48) = 0;
  }

  if (v6 == objc_msgSend_count(*(a1 + 40), v4, v5))
  {
    return 0;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *(a1 + 48) = v12 + 1;

  return objc_msgSend_objectAtIndex_(v11, v9, v12);
}

uint64_t sub_299224694(void *a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v14[129] = *MEMORY[0x29EDCA608];
  result = a1[1];
  if (result)
  {
    result = sub_299243500(result, a2, a3);
    if (result)
    {
      memset(v14, 0, 512);
      v12 = 0;
      result = (*(**(a1[1] + 16) + 72))(*(a1[1] + 16), *(a1[1] + 40), 128, v14, v13);
      if (result >= 1)
      {
        v9 = result;
LABEL_5:
        v10 = 0;
        while (1)
        {
          result = (*(*a1 + 328))(a1, a2, a3, v14[v10], v13[v10], &v12, a4);
          if (v12 == 1)
          {
            break;
          }

          if (v9 == ++v10)
          {
            result = (*(**(a1[1] + 16) + 72))(*(a1[1] + 16), *(a1[1] + 40), 128, v14, v13);
            v9 = result;
            if (result >= 1)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29922486C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = *MEMORY[0x29EDCA608];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_29924388C(a1[1], a4, a5, &v21, &v18);
  v12 = sub_299223C04(v23, v20);
  v13 = 0;
  if (v18 > 3u)
  {
    if (v18 == 4)
    {
      v13 = *v21;
    }

    else if (v18 == 8)
    {
      v13 = *v21;
    }
  }

  else if (v18 == 1)
  {
    v13 = *v21;
  }

  else if (v18 == 2)
  {
    v13 = *v21;
  }

  v14 = 0;
  if (v19 > 3u)
  {
    if (v19 == 4 || v19 == 8)
    {
      v14 = *v22;
    }
  }

  else if (v19 == 1)
  {
    v14 = *v22;
  }

  else if (v19 == 2)
  {
    v14 = *v22;
  }

  v17 = v12;
  v15 = (*(*a1 + 272))(a1, a2, a3);
  (*(a7 + 16))(a7, v17, v13, (v14 != 0) & ~v15, a6);
  v16 = *MEMORY[0x29EDCA608];
}

BOOL sub_299224A30(uint64_t a1, void *a2)
{
  v3 = sub_2992793F8();
  if (MecabraCandidateIsEmojiCandidate(a2, v4, v5))
  {
    return 0;
  }

  Surface = MecabraCandidateGetSurface(a2, v6, v7);
  if (objc_msgSend_rangeOfCharacterFromSet_(Surface, v9, v3) != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (!MecabraCandidateGetDictionaryReading(a2, v10, v11))
  {
    return 1;
  }

  DictionaryReading = MecabraCandidateGetDictionaryReading(a2, v12, v13);
  return objc_msgSend_rangeOfCharacterFromSet_(DictionaryReading, v15, v3) == 0x7FFFFFFFFFFFFFFFLL;
}

void sub_299224AB8(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 16) && *(a1 + 24))
  {
    v4 = objc_msgSend_prefixes(***(a1 + 56), a2, a3);
    sub_2993F66CC(v4, v5, v6, &v10);
    v7 = v10;
    v8 = v11;
    if (v10 != v11)
    {
      do
      {
        Length = CFStringGetLength(v7[2]);
        if (Length >= CFStringGetLength(*(a1 + 16)))
        {
          operator new();
        }

        v7 += 9;
      }

      while (v7 != v8);
      v7 = v10;
    }

    if (v7)
    {
      v11 = v7;
      operator delete(v7);
    }
  }
}

void sub_299224BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_299224C3C(void *result, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, int a6)
{
  if (result[2])
  {
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = sub_299224CCC;
    v6[3] = &unk_29EF0D858;
    v7 = a6;
    v6[6] = result;
    v6[7] = a5;
    v6[8] = a2;
    v6[4] = a3;
    v6[5] = a4;
    return sub_299224694(result, a3, a4, v6);
  }

  return result;
}

uint64_t sub_299224CCC(uint64_t result, const __CFString *a2)
{
  if (a2)
  {
    v2 = *(result + 48);
    v3 = *(v2 + 16);
    sub_299223FD4(v2, (*(v2 + 32) >> 13) & 0x1000u | *(result + 72), a2);
  }

  return result;
}

id sub_299225130(void *a1, const __CFString *a2)
{
  v10 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v4 = a1[34];
  if (!v4 || sub_299225D3C(v4, kMecabraContextOptionPrivateMode) != *MEMORY[0x29EDB8F00])
  {
    v5 = (*(*a1 + 288))(a1);
    if (v5)
    {
      if (*(v5 + 8) && a1[2])
      {
        if ((atomic_load_explicit(&qword_2A145FED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FED0))
        {
          __cxa_atexit(sub_2992256A4, &qword_2A145FED8, &dword_29918C000);
          __cxa_guard_release(&qword_2A145FED0);
        }

        v6 = qword_2A145FED8;
        if (qword_2A145FEE0 != qword_2A145FED8)
        {
          v7 = qword_2A145FEE0 - 32;
          do
          {
            sub_299227884(v7, *(v7 + 8));
            v8 = v7 == v6;
            v7 -= 32;
          }

          while (!v8);
        }

        qword_2A145FEE0 = v6;
        sub_299276A84(a2);
      }
    }
  }

  return v10;
}

void sub_299225620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    MEMORY[0x29C29BF70](a24, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

void **sub_2992256A4(void **a1)
{
  v3 = a1;
  sub_299225D98(&v3);
  return a1;
}

void sub_2992256DC(uint64_t a1, uint64_t a2, int a3)
{
  sub_299228338(&v9, a2);
  v12 = a3;
  v4 = qword_2A145FEE0;
  if (qword_2A145FEE0 >= *algn_2A145FEE8)
  {
    v8 = sub_299225E28(&qword_2A145FED8, &v9);
  }

  else
  {
    v5 = v11;
    *qword_2A145FEE0 = v9;
    v6 = v10;
    *(v4 + 8) = v10;
    *(v4 + 16) = v5;
    v7 = v4 + 8;
    if (v5)
    {
      v6[2] = v7;
      v9 = &v10;
      v10 = 0;
      v11 = 0;
    }

    else
    {
      *v4 = v7;
    }

    *(v4 + 24) = a3;
    v8 = v4 + 32;
  }

  qword_2A145FEE0 = v8;
  sub_299227884(&v9, v10);
}

uint64_t sub_2992257A4(uint64_t a1, uint64_t a2)
{
  if (sub_299225D3C(a2, kMecabraContextOptionPrivateMode) == *MEMORY[0x29EDB8F00])
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a2 + 32));
  v5 = Count - 1;
  if (Count < 1)
  {
    return 1;
  }

  v6 = 0;
  do
  {
    v7 = sub_299324314(a2, v6);
    result = (*(*a1 + 56))(a1, v7, v6 < v5);
    if (result)
    {
      v9 = v5 == v6;
    }

    else
    {
      v9 = 1;
    }

    ++v6;
  }

  while (!v9);
  return result;
}

uint64_t sub_29922586C(void *a1, void *a2, uint64_t a3)
{
  v6 = a1[34];
  if (v6 && sub_299225D3C(v6, kMecabraContextOptionPrivateMode) == *MEMORY[0x29EDB8F00])
  {
    return 0;
  }

  if (a2)
  {
    v7 = a1[4];
    v8 = objc_msgSend_rawCandidate(a2, a2, a3);
    if ((*(*v8 + 72))(v8) == 7)
    {
      if ((v7 & 0x80) == 0)
      {
        v11 = a1[35];
        v12 = objc_msgSend_surface(a2, v9, v10);

        return sub_2993BD670(v11, v12, 0);
      }

      return 0;
    }
  }

  v14 = (*(*a1 + 288))(a1);
  if ((*(*a1 + 280))(a1))
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    return 0;
  }

  if (!(*(*a1 + 336))(a1, a2))
  {
    return 0;
  }

  if (sub_2992878A0(a2, v16, v17))
  {
    v20 = objc_msgSend_rawCandidate(a2, v18, v19);
    if (((*(*v20 + 104))(v20) & 0x1000) != 0)
    {
      return 0;
    }
  }

  v21 = *(*v14 + 56);

  return v21(v14, a2, a3, 1);
}

uint64_t sub_299225A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1 + 288))(a1);
  if (result)
  {
    result = (*(*result + 104))(result, a2, a3);
    if (result)
    {
      (*(*a1 + 264))(a1);
      return 1;
    }
  }

  return result;
}

uint64_t sub_299225B3C(uint64_t a1)
{
  result = (*(*a1 + 288))(a1);
  if (result)
  {
    v2 = *(*result + 96);

    return v2();
  }

  return result;
}

void sub_299225BCC(uint64_t a1, const __CFString *a2)
{
  v6 = sub_299225130(a1, a2);
  if (objc_msgSend_count(v6, v3, v4))
  {
    objc_msgSend_addObjectsFromArray_(*(a1 + 40), v5, v6);
  }
}

uint64_t sub_299225C28(uint64_t **a1)
{
  v2 = ((*a1)[36])(a1);
  if (v2)
  {
    v3 = (*(*v2 + 88))(v2);
  }

  else
  {
    v3 = 1;
  }

  return v3 & sub_2993BDA28(a1[35]);
}

const void *sub_299225D3C(uint64_t a1, const void *a2)
{
  v3 = *(a1 + 56);
  if (!v3 || !CFDictionaryContainsKey(v3, a2))
  {
    return 0;
  }

  v5 = *(a1 + 56);

  return CFDictionaryGetValue(v5, a2);
}

void sub_299225D98(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      do
      {
        sub_299227884(v6, *(v6 + 8));
        v7 = v6 == v2;
        v6 -= 32;
      }

      while (!v7);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_299225E28(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_299212A8C();
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

  v22 = a1;
  if (v7)
  {
    sub_299225F68(a1, v7);
  }

  v8 = (32 * v2);
  v19 = 0;
  v20 = v8;
  *v8 = *a2;
  v9 = (a2 + 8);
  v10 = *(a2 + 8);
  *(&v21 + 1) = 0;
  *(32 * v2 + 8) = v10;
  v11 = 32 * v2 + 8;
  v12 = *(a2 + 16);
  v8[2] = v12;
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

  *(32 * v2 + 0x18) = *(a2 + 24);
  *&v21 = v8 + 4;
  v13 = a1[1];
  v14 = v8 + *a1 - v13;
  sub_299225FB0(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_299226120(&v19);
  return v18;
}

void sub_299225F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_299226120(va);
  _Unwind_Resume(a1);
}

void sub_299225F68(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_299225FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      *(a4 + v6 + 24) = *(a2 + v6 + 24);
      v6 += 32;
    }

    while (a2 + v6 != a3);
    v16 = a4 + v6;
    v14 = 1;
    do
    {
      sub_299227884(v5, *(v5 + 8));
      v5 += 32;
    }

    while (v5 != a3);
  }

  return sub_299226098(v13);
}

uint64_t sub_299226098(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2992260D0(a1);
  }

  return a1;
}

void sub_2992260D0(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = v1 - 32;
    do
    {
      sub_299227884(v3, *(v3 + 8));
      v4 = v3 == v2;
      v3 -= 32;
    }

    while (!v4);
  }
}

void **sub_299226120(void **a1)
{
  sub_299226154(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_299226154(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    sub_299227884(i - 32, *(i - 24));
  }
}

void sub_29922619C(uint64_t a1, void *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
LABEL_1:
  v8 = (a2 - 4);
  v65 = (a2 - 1);
  v66 = (a2 - 12);
  v67 = (a2 - 8);
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
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        if ((*a3)((a2 - 4), v9))
        {
          sub_2992277C0(v9, (a2 - 4));
          v61 = *(v9 + 24);
          *(v9 + 24) = *(a2 - 2);
          *(a2 - 2) = v61;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      v56 = (*a3)(v9 + 32, v9);
      v57 = (*a3)((a2 - 4), v9 + 32);
      if (v56)
      {
        if (v57)
        {
          v58 = (v9 + 24);
          v59 = v9;
        }

        else
        {
          sub_2992277C0(v9, v9 + 32);
          v58 = (v9 + 56);
          v63 = *(v9 + 24);
          *(v9 + 24) = *(v9 + 56);
          *(v9 + 56) = v63;
          if (!(*a3)(v8, v9 + 32))
          {
            return;
          }

          v59 = (v9 + 32);
        }

        sub_2992277C0(v59, v8);
      }

      else
      {
        if (!v57)
        {
          return;
        }

        sub_2992277C0((v9 + 32), (a2 - 4));
        v62 = *(v9 + 56);
        v65 = (v9 + 56);
        *(v9 + 56) = *(a2 - 2);
        *(a2 - 2) = v62;
        if (!(*a3)(v9 + 32, v9))
        {
          return;
        }

        sub_2992277C0(v9, v9 + 32);
        v58 = (v9 + 24);
      }

      v64 = *v58;
      *v58 = *v65;
      *v65 = v64;
      return;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {

      sub_299226BBC(v9, v9 + 32, v9 + 64, v9 + 96, (a2 - 4), a3);
      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        sub_299226CC8(v9, a2, a3);
      }

      else
      {

        sub_299226E4C(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        sub_299227934(v9, a2, a2, a3);
      }

      return;
    }

    v13 = v9 + 32 * (v12 >> 1);
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(v9 + 32 * (v12 >> 1), v9);
      v16 = (*a3)((a2 - 4), v13);
      if (v15)
      {
        if (v16)
        {
          v17 = (a1 + 24);
          v18 = a1;
          goto LABEL_27;
        }

        sub_2992277C0(a1, v13);
        v17 = (v13 + 24);
        v27 = *(a1 + 24);
        *(a1 + 24) = *(v13 + 24);
        *(v13 + 24) = v27;
        if ((*a3)((a2 - 4), v13))
        {
          v18 = v13;
LABEL_27:
          sub_2992277C0(v18, (a2 - 4));
          v24 = (a2 - 1);
LABEL_28:
          v28 = *v17;
          *v17 = *v24;
          *v24 = v28;
        }
      }

      else if (v16)
      {
        sub_2992277C0(v13, (a2 - 4));
        v24 = (v13 + 24);
        v23 = *(v13 + 24);
        *(v13 + 24) = *(a2 - 2);
        *(a2 - 2) = v23;
        if ((*a3)(v13, a1))
        {
          sub_2992277C0(a1, v13);
          v17 = (a1 + 24);
          goto LABEL_28;
        }
      }

      v29 = (*a3)(v13 - 32, a1 + 32);
      v30 = (*a3)(v67, v13 - 32);
      if (v29)
      {
        v31 = (a1 + 56);
        if (v30)
        {
          sub_2992277C0((a1 + 32), v67);
          goto LABEL_40;
        }

        sub_2992277C0((a1 + 32), v13 - 32);
        v35 = *v31;
        *v31 = *(v13 - 8);
        *(v13 - 8) = v35;
        if ((*a3)(v67, v13 - 32))
        {
          sub_2992277C0((v13 - 32), v67);
          v31 = (v13 - 8);
LABEL_40:
          v33 = (a2 - 5);
LABEL_41:
          v36 = *v31;
          *v31 = *v33;
          *v33 = v36;
        }
      }

      else if (v30)
      {
        sub_2992277C0((v13 - 32), v67);
        v33 = (v13 - 8);
        v32 = *(v13 - 8);
        *(v13 - 8) = *(a2 - 10);
        *(a2 - 10) = v32;
        if ((*a3)(v13 - 32, a1 + 32))
        {
          sub_2992277C0((a1 + 32), v13 - 32);
          v31 = (a1 + 56);
          goto LABEL_41;
        }
      }

      v37 = (*a3)(v13 + 32, a1 + 64);
      v38 = (*a3)(v66, v13 + 32);
      if (v37)
      {
        v39 = (a1 + 88);
        if (v38)
        {
          sub_2992277C0((a1 + 64), v66);
          goto LABEL_50;
        }

        sub_2992277C0((a1 + 64), v13 + 32);
        v42 = *v39;
        *v39 = *(v13 + 56);
        *(v13 + 56) = v42;
        if ((*a3)(v66, v13 + 32))
        {
          sub_2992277C0((v13 + 32), v66);
          v39 = (v13 + 56);
LABEL_50:
          v41 = (a2 - 9);
LABEL_51:
          v43 = *v39;
          *v39 = *v41;
          *v41 = v43;
        }
      }

      else if (v38)
      {
        sub_2992277C0((v13 + 32), v66);
        v41 = (v13 + 56);
        v40 = *(v13 + 56);
        *(v13 + 56) = *(a2 - 18);
        *(a2 - 18) = v40;
        if ((*a3)(v13 + 32, a1 + 64))
        {
          sub_2992277C0((a1 + 64), v13 + 32);
          v39 = (a1 + 88);
          goto LABEL_51;
        }
      }

      v44 = (*a3)(v13, v13 - 32);
      v45 = (*a3)(v13 + 32, v13);
      if (v44)
      {
        if (v45)
        {
          v46 = (v13 - 8);
          v47 = (v13 - 32);
          goto LABEL_60;
        }

        sub_2992277C0((v13 - 32), v13);
        v46 = (v13 + 24);
        v50 = *(v13 - 8);
        *(v13 - 8) = *(v13 + 24);
        *(v13 + 24) = v50;
        if ((*a3)(v13 + 32, v13))
        {
          v47 = v13;
LABEL_60:
          sub_2992277C0(v47, v13 + 32);
          v49 = (v13 + 56);
LABEL_61:
          v51 = *v46;
          *v46 = *v49;
          *v49 = v51;
        }
      }

      else if (v45)
      {
        sub_2992277C0(v13, v13 + 32);
        v49 = (v13 + 24);
        v48 = *(v13 + 24);
        *(v13 + 24) = *(v13 + 56);
        *(v13 + 56) = v48;
        if ((*a3)(v13, v13 - 32))
        {
          sub_2992277C0((v13 - 32), v13);
          v46 = (v13 - 8);
          goto LABEL_61;
        }
      }

      sub_2992277C0(a1, v13);
      v21 = (a1 + 24);
      v26 = (v13 + 24);
LABEL_63:
      v52 = *v21;
      *v21 = *v26;
      *v26 = v52;
      goto LABEL_64;
    }

    v19 = v14(v9, v9 + 32 * (v12 >> 1));
    v20 = (*a3)((a2 - 4), v9);
    if (v19)
    {
      if (v20)
      {
        v21 = (v13 + 24);
        v22 = v13;
LABEL_37:
        sub_2992277C0(v22, (a2 - 4));
        v26 = (a2 - 1);
        goto LABEL_63;
      }

      sub_2992277C0(v13, v9);
      v21 = (v9 + 24);
      v34 = *(v13 + 24);
      *(v13 + 24) = *(v9 + 24);
      *(v9 + 24) = v34;
      if ((*a3)((a2 - 4), v9))
      {
        v22 = v9;
        goto LABEL_37;
      }
    }

    else if (v20)
    {
      sub_2992277C0(v9, (a2 - 4));
      v26 = (v9 + 24);
      v25 = *(v9 + 24);
      *(v9 + 24) = *(a2 - 2);
      *(a2 - 2) = v25;
      if ((*a3)(v9, v13))
      {
        sub_2992277C0(v13, v9);
        v21 = (v13 + 24);
        goto LABEL_63;
      }
    }

LABEL_64:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 32, a1) & 1) == 0)
    {
      v9 = sub_299226FB0(a1, a2, a3);
      goto LABEL_71;
    }

    v53 = sub_2992271A8(a1, a2, a3);
    if ((v54 & 1) == 0)
    {
      goto LABEL_69;
    }

    v55 = sub_2992273A8(a1, v53, a3);
    v9 = v53 + 32;
    if (sub_2992273A8(v53 + 32, a2, a3))
    {
      a4 = -v11;
      a2 = v53;
      if (v55)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if ((v55 & 1) == 0)
    {
LABEL_69:
      sub_29922619C(a1, v53, a3, -v11, a5 & 1);
      v9 = v53 + 32;
LABEL_71:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  sub_299226A0C(v9, v9 + 32, v9 + 64, (a2 - 4), a3);
}

uint64_t *sub_299226A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(uint64_t, uint64_t))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = (a1 + 24);
      v13 = a1;
LABEL_9:
      sub_2992277C0(v13, a3);
      v15 = (a3 + 24);
      goto LABEL_10;
    }

    sub_2992277C0(a1, a2);
    v12 = (a2 + 24);
    v16 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = v16;
    if ((*a5)(a3, a2))
    {
      v13 = a2;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    sub_2992277C0(a2, a3);
    v15 = (a2 + 24);
    v14 = *(a2 + 24);
    *(a2 + 24) = *(a3 + 24);
    *(a3 + 24) = v14;
    if ((*a5)(a2, a1))
    {
      sub_2992277C0(a1, a2);
      v12 = (a1 + 24);
LABEL_10:
      v17 = *v12;
      *v12 = *v15;
      *v15 = v17;
    }
  }

  result = (*a5)(a4, a3);
  if (result)
  {
    sub_2992277C0(a3, a4);
    v19 = *(a3 + 24);
    *(a3 + 24) = *(a4 + 24);
    *(a4 + 24) = v19;
    result = (*a5)(a3, a2);
    if (result)
    {
      sub_2992277C0(a2, a3);
      v20 = *(a2 + 24);
      *(a2 + 24) = *(a3 + 24);
      *(a3 + 24) = v20;
      result = (*a5)(a2, a1);
      if (result)
      {
        result = sub_2992277C0(a1, a2);
        v21 = *(a1 + 24);
        *(a1 + 24) = *(a2 + 24);
        *(a2 + 24) = v21;
      }
    }
  }

  return result;
}

uint64_t *sub_299226BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(uint64_t, uint64_t))
{
  sub_299226A0C(a1, a2, a3, a4, a6);
  result = (*a6)(a5, a4);
  if (result)
  {
    sub_2992277C0(a4, a5);
    v13 = *(a4 + 24);
    *(a4 + 24) = *(a5 + 24);
    *(a5 + 24) = v13;
    result = (*a6)(a4, a3);
    if (result)
    {
      sub_2992277C0(a3, a4);
      v14 = *(a3 + 24);
      *(a3 + 24) = *(a4 + 24);
      *(a4 + 24) = v14;
      result = (*a6)(a3, a2);
      if (result)
      {
        sub_2992277C0(a2, a3);
        v15 = *(a2 + 24);
        *(a2 + 24) = *(a3 + 24);
        *(a3 + 24) = v15;
        result = (*a6)(a2, a1);
        if (result)
        {
          result = sub_2992277C0(a1, a2);
          v16 = *(a1 + 24);
          *(a1 + 24) = *(a2 + 24);
          *(a2 + 24) = v16;
        }
      }
    }
  }

  return result;
}

void sub_299226CC8(uint64_t a1, void *a2, uint64_t (**a3)(void **, uint64_t))
{
  if (a1 != a2)
  {
    v5 = (a1 + 32);
    if ((a1 + 32) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if ((*a3)(v5, v8))
        {
          v10 = v8 + 5;
          v11 = v8[5];
          v19 = *v9;
          v20 = v11;
          v21 = v8[6];
          if (v21)
          {
            v11[2] = &v20;
            *v9 = v10;
            *v10 = 0;
            v8[6] = 0;
          }

          else
          {
            v19 = &v20;
          }

          v22 = *(v8 + 14);
          v12 = v7;
          while (1)
          {
            v13 = a1 + v12;
            sub_299227818(a1 + v12 + 32, (a1 + v12));
            *(a1 + v12 + 56) = *(a1 + v12 + 24);
            if (!v12)
            {
              break;
            }

            v12 -= 32;
            if (((*a3)(&v19, v13 - 32) & 1) == 0)
            {
              v14 = a1 + v12 + 32;
              goto LABEL_13;
            }
          }

          v14 = a1;
LABEL_13:
          v15 = v14 + 8;
          sub_299227884(v14, *(v14 + 8));
          v16 = v20;
          *v14 = v19;
          *(v14 + 8) = v16;
          v17 = v21;
          *(v14 + 16) = v21;
          if (v17)
          {
            v18 = 0;
            v16[2] = v15;
            v19 = &v20;
            v20 = 0;
            v21 = 0;
          }

          else
          {
            *v14 = v15;
            v18 = v20;
          }

          *(v14 + 24) = v22;
          sub_299227884(&v19, v18);
        }

        v5 = v9 + 4;
        v7 += 32;
        v8 = v9;
      }

      while (v9 + 4 != a2);
    }
  }
}

void sub_299226E4C(uint64_t a1, void *a2, uint64_t (**a3)(void **, uint64_t))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = (a1 + 32);
    if ((a1 + 32) != a2)
    {
      v7 = (a1 + 56);
      do
      {
        v8 = v5;
        if ((*a3)(v5, v4))
        {
          v9 = v4 + 5;
          v10 = v4[5];
          v17 = *v8;
          v18 = v10;
          v19 = v4[6];
          if (v19)
          {
            v10[2] = &v18;
            *v8 = v9;
            *v9 = 0;
            v4[6] = 0;
          }

          else
          {
            v17 = &v18;
          }

          v20 = *(v4 + 14);
          v11 = v7;
          do
          {
            sub_299227818((v11 - 6), v11 - 7);
            *v11 = *(v11 - 8);
            v12 = (*a3)(&v17, (v11 - 22));
            v11 -= 8;
          }

          while ((v12 & 1) != 0);
          v13 = v11 - 4;
          sub_299227884((v11 - 6), *(v11 - 2));
          v14 = v18;
          *(v11 - 3) = v17;
          *(v11 - 2) = v14;
          v15 = v19;
          *(v11 - 1) = v19;
          if (v15)
          {
            v16 = 0;
            v14[2] = v13;
            v17 = &v18;
            v18 = 0;
            v19 = 0;
          }

          else
          {
            *(v11 - 3) = v13;
            v16 = v18;
          }

          *v11 = v20;
          sub_299227884(&v17, v16);
        }

        v5 = v8 + 4;
        v7 += 8;
        v4 = v8;
      }

      while (v8 + 4 != a2);
    }
  }
}

unint64_t sub_299226FB0(uint64_t a1, unint64_t a2, uint64_t (**a3)(void **, unint64_t))
{
  v4 = a2;
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  v17 = *a1;
  v18 = v7;
  v19 = *(a1 + 16);
  if (v19)
  {
    v7[2] = &v18;
    *a1 = v6;
    *v6 = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    v17 = &v18;
  }

  v20 = *(a1 + 24);
  if ((*a3)(&v17, a2 - 32))
  {
    v8 = a1;
    do
    {
      v8 += 32;
    }

    while (((*a3)(&v17, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 32;
    do
    {
      v8 = v9;
      if (v9 >= v4)
      {
        break;
      }

      v10 = (*a3)(&v17, v9);
      v9 = v8 + 32;
    }

    while (!v10);
  }

  if (v8 < v4)
  {
    do
    {
      v4 -= 32;
    }

    while (((*a3)(&v17, v4) & 1) != 0);
  }

  while (v8 < v4)
  {
    sub_2992277C0(v8, v4);
    v11 = *(v8 + 24);
    *(v8 + 24) = *(v4 + 24);
    *(v4 + 24) = v11;
    do
    {
      v8 += 32;
    }

    while (!(*a3)(&v17, v8));
    do
    {
      v4 -= 32;
    }

    while (((*a3)(&v17, v4) & 1) != 0);
  }

  if (v8 - 32 != a1)
  {
    sub_299227818(a1, (v8 - 32));
    *(a1 + 24) = *(v8 - 8);
  }

  v12 = v8 - 24;
  sub_299227884(v8 - 32, *(v8 - 24));
  v13 = v19;
  *(v8 - 32) = v17;
  v14 = v18;
  *(v8 - 24) = v18;
  *(v8 - 16) = v13;
  if (v13)
  {
    v15 = 0;
    v14[2] = v12;
    v17 = &v18;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    *(v8 - 32) = v12;
    v15 = v18;
  }

  *(v8 - 8) = v20;
  sub_299227884(&v17, v15);
  return v8;
}

unint64_t sub_2992271A8(uint64_t a1, unint64_t a2, uint64_t (**a3)(uint64_t, void **))
{
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  v19 = *a1;
  v20 = v7;
  v21 = *(a1 + 16);
  if (v21)
  {
    v7[2] = &v20;
    *a1 = v6;
    *v6 = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    v19 = &v20;
  }

  v8 = 0;
  v22 = *(a1 + 24);
  do
  {
    v9 = (*a3)(a1 + v8 + 32, &v19);
    v8 += 32;
  }

  while ((v9 & 1) != 0);
  v10 = a1 + v8;
  if (v8 == 32)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      a2 -= 32;
    }

    while (((*a3)(a2, &v19) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 32;
    }

    while (!(*a3)(a2, &v19));
  }

  v11 = a1 + v8;
  if (v10 < a2)
  {
    v12 = a2;
    do
    {
      sub_2992277C0(v11, v12);
      v13 = *(v11 + 24);
      *(v11 + 24) = *(v12 + 24);
      *(v12 + 24) = v13;
      do
      {
        v11 += 32;
      }

      while (((*a3)(v11, &v19) & 1) != 0);
      do
      {
        v12 -= 32;
      }

      while (!(*a3)(v12, &v19));
    }

    while (v11 < v12);
  }

  if (v11 - 32 != a1)
  {
    sub_299227818(a1, (v11 - 32));
    *(a1 + 24) = *(v11 - 8);
  }

  v14 = v11 - 24;
  sub_299227884(v11 - 32, *(v11 - 24));
  v15 = v21;
  *(v11 - 32) = v19;
  v16 = v20;
  *(v11 - 24) = v20;
  *(v11 - 16) = v15;
  if (v15)
  {
    v17 = 0;
    v16[2] = v14;
    v19 = &v20;
    v20 = 0;
    v21 = 0;
  }

  else
  {
    *(v11 - 32) = v14;
    v17 = v20;
  }

  *(v11 - 8) = v22;
  sub_299227884(&v19, v17);
  return v11 - 32;
}

uint64_t sub_2992273A8(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = (a2 - a1) >> 5;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v8 = (*a3)(a1 + 32, a1);
        v9 = (*a3)(a2 - 32, a1 + 32);
        if (v8)
        {
          if (v9)
          {
            v10 = (a1 + 24);
            v11 = a1;
          }

          else
          {
            sub_2992277C0(a1, a1 + 32);
            v10 = (a1 + 56);
            v21 = *(a1 + 24);
            *(a1 + 24) = *(a1 + 56);
            *(a1 + 56) = v21;
            if (!(*a3)(a2 - 32, a1 + 32))
            {
              return 1;
            }

            v11 = (a1 + 32);
          }

          sub_2992277C0(v11, a2 - 32);
          v18 = (a2 - 8);
        }

        else
        {
          if (!v9)
          {
            return 1;
          }

          sub_2992277C0((a1 + 32), a2 - 32);
          v18 = (a1 + 56);
          v17 = *(a1 + 56);
          *(a1 + 56) = *(a2 - 8);
          *(a2 - 8) = v17;
          if (!(*a3)(a1 + 32, a1))
          {
            return 1;
          }

          sub_2992277C0(a1, a1 + 32);
          v10 = (a1 + 24);
        }

        v22 = *v10;
        *v10 = *v18;
        *v18 = v22;
        return 1;
      case 4:
        sub_299226A0C(a1, a1 + 32, a1 + 64, a2 - 32, a3);
        return 1;
      case 5:
        sub_299226BBC(a1, a1 + 32, a1 + 64, a1 + 96, a2 - 32, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      if ((*a3)(a2 - 32, a1))
      {
        sub_2992277C0(a1, a2 - 32);
        v7 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 8);
        *(a2 - 8) = v7;
      }

      return 1;
    }
  }

  v12 = a1 + 64;
  v13 = (*a3)(a1 + 32, a1);
  v14 = (*a3)(a1 + 64, a1 + 32);
  if (v13)
  {
    if (v14)
    {
      v15 = (a1 + 24);
      v16 = a1;
    }

    else
    {
      sub_2992277C0(a1, a1 + 32);
      v15 = (a1 + 56);
      v23 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 56);
      *(a1 + 56) = v23;
      if (!(*a3)(a1 + 64, a1 + 32))
      {
        goto LABEL_31;
      }

      v16 = (a1 + 32);
    }

    sub_2992277C0(v16, a1 + 64);
    v20 = (a1 + 88);
    goto LABEL_30;
  }

  if (v14)
  {
    sub_2992277C0((a1 + 32), a1 + 64);
    v20 = (a1 + 56);
    v19 = *(a1 + 56);
    *(a1 + 56) = *(a1 + 88);
    *(a1 + 88) = v19;
    if ((*a3)(a1 + 32, a1))
    {
      sub_2992277C0(a1, a1 + 32);
      v15 = (a1 + 24);
LABEL_30:
      v24 = *v15;
      *v15 = *v20;
      *v20 = v24;
    }
  }

LABEL_31:
  v25 = a1 + 96;
  if (a1 + 96 != a2)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      if ((*a3)(v25, v12))
      {
        v28 = (v25 + 8);
        v29 = *(v25 + 8);
        v38 = *v25;
        v39 = v29;
        v40 = *(v25 + 16);
        if (v40)
        {
          v29[2] = &v39;
          *v25 = v28;
          *v28 = 0;
          *(v25 + 16) = 0;
        }

        else
        {
          v38 = &v39;
        }

        v41 = *(v25 + 24);
        v30 = v26;
        while (1)
        {
          v31 = a1 + v30;
          sub_299227818(a1 + v30 + 96, (a1 + v30 + 64));
          *(a1 + v30 + 120) = *(a1 + v30 + 88);
          if (v30 == -64)
          {
            break;
          }

          v30 -= 32;
          if (((*a3)(&v38, v31 + 32) & 1) == 0)
          {
            v32 = a1 + v30 + 96;
            goto LABEL_42;
          }
        }

        v32 = a1;
LABEL_42:
        v33 = v32 + 8;
        sub_299227884(v32, *(v32 + 8));
        v34 = v39;
        *v32 = v38;
        *(v32 + 8) = v34;
        v35 = v40;
        *(v32 + 16) = v40;
        if (v35)
        {
          v34[2] = v33;
          v38 = &v39;
          v39 = 0;
          v40 = 0;
        }

        else
        {
          *v32 = v33;
        }

        *(v32 + 24) = v41;
        if (++v27 == 8)
        {
          v36 = v25 + 32 == a2;
          sub_299227884(&v38, v39);
          return v36;
        }

        sub_299227884(&v38, v39);
      }

      v12 = v25;
      v26 += 32;
      v25 += 32;
    }

    while (v25 != a2);
  }

  return 1;
}

uint64_t *sub_2992277C0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = result + 1;
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

void sub_299227818(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  sub_299227884(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void sub_299227884(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_299227884(a1, *a2);
    sub_299227884(a1, a2[1]);
    sub_2992278E0((a2 + 4));

    operator delete(a2);
  }
}

void sub_2992278E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_2991A893C(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t sub_299227934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = a1 + 32 * v9;
      do
      {
        sub_299227A54(a1, a4, v8, v11);
        v11 -= 32;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if ((*a4)(v12, a1))
        {
          sub_2992277C0(v12, a1);
          v13 = *(v12 + 24);
          *(v12 + 24) = *(a1 + 24);
          *(a1 + 24) = v13;
          sub_299227A54(a1, a4, v8, a1);
        }

        v12 += 32;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        sub_299227C38(a1, v6, a4, v8);
        v6 -= 32;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void sub_299227A54(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 5)
    {
      v10 = (a4 - a1) >> 4;
      v11 = v10 + 1;
      v12 = a1 + 32 * (v10 + 1);
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(v12, v12 + 32))
      {
        v12 += 32;
        v11 = v13;
      }

      if (((*a2)(v12, v5) & 1) == 0)
      {
        v14 = (v5 + 8);
        v15 = *(v5 + 8);
        v22 = *v5;
        v23 = v15;
        v24 = *(v5 + 16);
        if (v24)
        {
          v15[2] = &v23;
          *v5 = v14;
          *v14 = 0;
          *(v5 + 16) = 0;
        }

        else
        {
          v22 = &v23;
        }

        v25 = *(v5 + 24);
        do
        {
          v16 = v12;
          sub_299227818(v5, v12);
          *(v5 + 24) = *(v12 + 24);
          if (v7 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = a1 + 32 * v17;
          v11 = 2 * v11 + 2;
          if (v11 >= a3)
          {
            v11 = v17;
          }

          else if ((*a2)(a1 + 32 * v17, v12 + 32))
          {
            v12 += 32;
          }

          else
          {
            v11 = v17;
          }

          v5 = v16;
        }

        while (!(*a2)(v12, &v22));
        v18 = v16 + 8;
        sub_299227884(v16, *(v16 + 8));
        v19 = v24;
        *v16 = v22;
        v20 = v23;
        *(v16 + 8) = v23;
        *(v16 + 16) = v19;
        if (v19)
        {
          v21 = 0;
          v20[2] = v18;
          v22 = &v23;
          v23 = 0;
          v24 = 0;
        }

        else
        {
          *v16 = v18;
          v21 = v23;
        }

        *(v16 + 24) = v25;
        sub_299227884(&v22, v21);
      }
    }
  }
}

void sub_299227C38(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = (a1 + 8);
    v8 = *(a1 + 8);
    v19 = *a1;
    v20 = v8;
    v21 = *(a1 + 16);
    if (v21)
    {
      v8[2] = &v20;
      *a1 = v7;
      *v7 = 0;
      *(a1 + 16) = 0;
    }

    else
    {
      v19 = &v20;
    }

    v22 = *(a1 + 24);
    v9 = sub_299227DC8(a1, a3, a4);
    v10 = v9;
    if (v9 == a2 - 32)
    {
      v16 = (v9 + 8);
      sub_299227884(v9, *(v9 + 8));
      v17 = v21;
      *v10 = v19;
      v18 = v20;
      *v16 = v20;
      *(v10 + 16) = v17;
      if (v17)
      {
        v18[2] = v16;
        v19 = &v20;
        v20 = 0;
        v21 = 0;
      }

      else
      {
        *v10 = v16;
      }

      *(v10 + 24) = v22;
    }

    else
    {
      sub_299227818(v9, (a2 - 32));
      v12 = a2 - 24;
      v11 = *(a2 - 24);
      *(v10 + 24) = *(a2 - 8);
      v13 = v10 + 32;
      sub_299227884(a2 - 32, v11);
      v14 = v20;
      *(a2 - 32) = v19;
      *(a2 - 24) = v14;
      v15 = v21;
      *(a2 - 16) = v21;
      if (v15)
      {
        v14[2] = v12;
        v19 = &v20;
        v20 = 0;
        v21 = 0;
      }

      else
      {
        *(a2 - 32) = v12;
      }

      *(a2 - 8) = v22;
      sub_299227E80(a1, v13, a3, (v13 - a1) >> 5);
    }

    sub_299227884(&v19, v20);
  }
}

uint64_t sub_299227DC8(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 32 * v6;
    v9 = v8 + 32;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 64;
      if ((*a2)(v8 + 32, v8 + 64))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    sub_299227818(a1, v9);
    *(a1 + 24) = *(v9 + 24);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

void sub_299227E80(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = a1 + 32 * (v4 >> 1);
    v10 = a2 - 32;
    if ((*a3)(v9, a2 - 32))
    {
      v11 = (a2 - 24);
      v12 = *(a2 - 24);
      v17 = *(a2 - 32);
      v18 = v12;
      v19 = *(a2 - 16);
      if (v19)
      {
        v12[2] = &v18;
        *v10 = v11;
        *v11 = 0;
        *(a2 - 16) = 0;
      }

      else
      {
        v17 = &v18;
      }

      v20 = *(a2 - 8);
      do
      {
        v13 = v9;
        sub_299227818(v10, v9);
        *(v10 + 24) = *(v9 + 24);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = a1 + 32 * v8;
        v10 = v13;
      }

      while (((*a3)(v9, &v17) & 1) != 0);
      v14 = v13 + 8;
      sub_299227884(v13, *(v13 + 8));
      v15 = v18;
      *v13 = v17;
      *(v13 + 8) = v15;
      v16 = v19;
      *(v13 + 16) = v19;
      if (v16)
      {
        v15[2] = v14;
        v17 = &v18;
        v18 = 0;
        v19 = 0;
        v15 = 0;
      }

      else
      {
        *v13 = v14;
      }

      *(v13 + 24) = v20;
      sub_299227884(&v17, v15);
    }
  }
}

uint64_t sub_299227FD8(uint64_t a1, uint64_t **a2)
{
  v2 = *sub_29922806C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_29922806C(uint64_t a1, void *a2, uint64_t **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v7 = v4;
        v8 = *a3;
        v9 = v4[4];
        v10 = (*(**a3 + 112))(*a3);
        v11 = (*(*v9 + 112))(v9);
        v12 = *v8;
        if (v10 == v11)
        {
          break;
        }

        v22 = (*(v12 + 112))(v8);
        if (v22 >= (*(*v9 + 112))(v9))
        {
          goto LABEL_4;
        }

LABEL_8:
        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_14;
        }
      }

      v13 = (*(v12 + 24))(v8);
      v14 = (*(*v9 + 24))(v9);
      if (CFStringCompare(v13, v14, 0) < 0)
      {
        goto LABEL_8;
      }

LABEL_4:
      v15 = v7[4];
      v16 = *a3;
      v17 = (*(*v15 + 112))(v15);
      v18 = (*(*v16 + 112))(v16);
      v19 = *v15;
      if (v17 == v18)
      {
        v20 = (*(v19 + 24))(v15);
        v21 = (*(*v16 + 24))(v16);
        if ((CFStringCompare(v20, v21, 0) & 0x8000000000000000) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v23 = (*(v19 + 112))(v15);
        if (v23 >= (*(*v16 + 112))(v16))
        {
          goto LABEL_14;
        }
      }

      v5 = v7 + 1;
      v4 = v7[1];
      if (!v4)
      {
        goto LABEL_14;
      }
    }
  }

  v7 = (a1 + 8);
LABEL_14:
  *a2 = v7;
  return v5;
}

void *sub_299228338(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_299228390(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_299228390(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_299228418(v5, (v5 + 1), v4 + 4);
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

void *sub_299228418(void *a1, uint64_t a2, void **a3)
{
  v3 = *sub_2992284AC(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    sub_299228640();
  }

  return v3;
}

void **sub_2992284AC(void *a1, uint64_t a2, void ***a3, uint64_t *a4, void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (sub_29920B9DC(a5, (a2 + 32)) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((sub_29920B9DC(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((sub_29920B9DC((a2 + 32), a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = (a2 + 8);
  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = *(a2 + 8);
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((sub_29920B9DC(a5, v15 + 4) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return sub_299228704(a1, a3, a5);
}

uint64_t sub_2992286B8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2992278E0(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_299228704(uint64_t a1, void *a2, void **a3)
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
        if ((sub_29920B9DC(a3, (v4 + 32)) & 0x80) == 0)
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

      if ((sub_29920B9DC(v7 + 4, a3) & 0x80) == 0)
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

void *sub_29922878C(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_2991A110C(__dst, *a2, *(a2 + 1));
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

BOOL sub_2992287F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1 + 2;
  v8 = a1[2];
  v9[8] = 0;
  v9[9] = 0;
  if (v8)
  {
    a1[3] = v8;
    operator delete(v8);
  }

  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  if (a2)
  {
    v10 = a2;
    do
    {
      v11 = v10;
      v10 = *(v10 + 8);
    }

    while (v10);
    sub_299228950(v9 + 4);
    *v12 = v11;
    v12[1] = 0;
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a4;
    a1[1] = a3;
    v14 = a1[3];
    v13 = a1[4];
    if (v14 >= v13)
    {
      v16 = (v14 - *v9) >> 3;
      if ((v16 + 1) >> 61)
      {
        sub_299228D30();
      }

      v17 = v13 - *v9;
      v18 = v17 >> 2;
      if (v17 >> 2 <= (v16 + 1))
      {
        v18 = v16 + 1;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v18;
      }

      if (v19)
      {
        sub_29920B86C(v9, v19);
      }

      v20 = (8 * v16);
      *v20 = v12;
      v15 = 8 * v16 + 8;
      v21 = a1[2];
      v22 = a1[3] - v21;
      v23 = v20 - v22;
      memcpy(v20 - v22, v21, v22);
      v24 = a1[2];
      a1[2] = v23;
      a1[3] = v15;
      a1[4] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v12;
      v15 = (v14 + 1);
    }

    a1[3] = v15;
    sub_299228D48(a1[2], v15, &v26, (v15 - a1[2]) >> 3);
  }

  return a2 != 0;
}

double sub_299228950(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[4];
  if (v3 == v2)
  {
    v3 = 0;
    ++v1;
    a1[4] = 0;
    a1[5] = v1;
  }

  v4 = a1[1];
  if (v1 == (a1[2] - v4) >> 3)
  {
    is_mul_ok(v2, 0x28uLL);
    operator new[]();
  }

  v5 = *(v4 + 8 * v1);
  a1[4] = v3 + 1;
  v6 = v5 + 40 * v3;
  *(v6 + 32) = 0;
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  return result;
}

uint64_t sub_299228AA8(void *a1)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1 + 2;
  if (v3 == v4)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *v3;
    v8 = (v4 - v3) >> 3;
    if (v8 >= 2)
    {
      v9 = 0;
      v10 = v3;
      do
      {
        v11 = &v10[v9 + 1];
        v12 = (2 * v9) | 1;
        v13 = 2 * v9 + 2;
        if (v13 < v8)
        {
          v14 = *(*v11 + 16);
          v15 = *(v11[1] + 16);
          v11 += v14 > v15;
          if (v14 > v15)
          {
            v12 = v13;
          }
        }

        *v10 = *v11;
        v10 = v11;
        v9 = v12;
      }

      while (v12 <= ((v8 - 2) >> 1));
      v16 = (v4 - 8);
      if (v16 == v11)
      {
        *v11 = v7;
      }

      else
      {
        *v11 = *v16;
        *v16 = v7;
        sub_299228D48(v3, (v11 + 1), &v41, v11 + 1 - v3);
      }
    }

    v4 = a1[3] - 8;
    a1[3] = v4;
    result = *v7;
    v18 = v7[1];
    if (*(*v7 + 109) == 2)
    {
      break;
    }

    if (v18 && (v19 = *(v18 + 32), v20 = a1[1], v19 <= v20))
    {
      if (v19 == v20)
      {
        goto LABEL_36;
      }

      if (v6 > 15)
      {
        return 0;
      }

      ++v6;
    }

    else
    {
      v21 = *(result + 40);
      if (v21)
      {
        do
        {
          sub_299228950(a1 + 6);
          v23 = *v21;
          v24 = v7[4] - *(*v21 + 88);
          v25 = *(v21 + 4);
          v22[3] = v7[3] + v25;
          v26 = *(v23 + 96) + v25 + v7[3];
          v22[1] = v7;
          v22[2] = v26;
          *v22 = v23;
          v22[4] = v24;
          v28 = a1[3];
          v27 = a1[4];
          if (v28 >= v27)
          {
            v30 = (v28 - *v5) >> 3;
            if ((v30 + 1) >> 61)
            {
              sub_299228D30();
            }

            v31 = v27 - *v5;
            v32 = v31 >> 2;
            if (v31 >> 2 <= (v30 + 1))
            {
              v32 = v30 + 1;
            }

            if (v31 >= 0x7FFFFFFFFFFFFFF8)
            {
              v33 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v32;
            }

            if (v33)
            {
              sub_29920B86C(v5, v33);
            }

            v34 = (8 * v30);
            *v34 = v22;
            v29 = 8 * v30 + 8;
            v35 = a1[2];
            v36 = a1[3] - v35;
            v37 = v34 - v36;
            memcpy(v34 - v36, v35, v36);
            v38 = a1[2];
            a1[2] = v37;
            a1[3] = v29;
            a1[4] = 0;
            if (v38)
            {
              operator delete(v38);
            }
          }

          else
          {
            *v28 = v22;
            v29 = (v28 + 1);
          }

          a1[3] = v29;
          sub_299228D48(a1[2], v29, &v42, (v29 - a1[2]) >> 3);
          v21 = v21[1];
        }

        while (v21);
        v4 = a1[3];
      }
    }

    v3 = *v5;
    if (*v5 == v4)
    {
      return 0;
    }
  }

  if (!v18)
  {
    return result;
  }

LABEL_36:
  v39 = *v7;
  do
  {
    v40 = *v18;
    v39[1] = *v18;
    *v40 = v39;
    v18 = *(v18 + 8);
    v39 = v40;
  }

  while (v18);
  return result;
}

uint64_t sub_299228D48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = *v5;
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = *(v9 + 16);
    if (*(*v5 + 16) > v10)
    {
      do
      {
        v11 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = *v5;
        v7 = v11;
      }

      while (*(*v5 + 16) > v10);
      *v11 = v8;
    }
  }

  return result;
}

uint64_t *sub_299228DA4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  a1[4] = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  if (a3)
  {
    v5 = 0;
    v6 = 8 * a3;
    do
    {
      v7 = *a2;
      v8 = a1[2];
      if (v5 >= v8)
      {
        v9 = *a1;
        v10 = v5 - *a1;
        v11 = v10 >> 3;
        v12 = (v10 >> 3) + 1;
        if (v12 >> 61)
        {
          sub_299212A8C();
        }

        v13 = v8 - v9;
        if (v13 >> 2 > v12)
        {
          v12 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          if (!(v14 >> 61))
          {
            operator new();
          }

          sub_29919600C();
        }

        *(8 * v11) = v7;
        v5 = (8 * v11 + 8);
        memcpy(0, v9, v10);
        *a1 = 0;
        a1[1] = v5;
        a1[2] = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v5++ = v7;
      }

      a1[1] = v5;
      ++a2;
      v6 -= 8;
    }

    while (v6);
    v15 = *a1;
  }

  else
  {
    v15 = 0;
  }

  a1[3] = v15;
  return a1;
}

void sub_299228EF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_299229054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299228F44(uint64_t result)
{
  v2 = *result;
  v1 = *(result + 8);
  *(result + 24) = *result;
  *(result + 32) = 0;
  if (v2 != v1)
  {
    v3 = result;
    do
    {
      v4 = *v2++;
      result = (*(*v4 + 24))(v4);
    }

    while (v2 != *(v3 + 8));
  }

  return result;
}

void *sub_299228FA8(void *a1, int a2)
{
  v2 = a1[3];
  if (v2 == a1[1])
  {
    return 0;
  }

  while (1)
  {
    v5 = (*(**v2 + 16))();
    if (v5)
    {
      break;
    }

    v2 = a1[3] + 8;
    a1[3] = v2;
    if (v2 == a1[1])
    {
      return 0;
    }
  }

  v8 = v5;
  if (a2)
  {
    v10 = objc_msgSend_rawCandidate(v5, v6, v7);
    v11 = a1[4];
    *(v10 + 8) = v11;
    a1[4] = v11 + 1;
  }

  return v8;
}

void sub_299229054(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2992290A8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_2992290A8(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_299229114(int a1, __CFDictionary *a2, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F72C30, 0);
  if (result)
  {
    v6 = result;
    result = sub_299377154(result);
    if (result)
    {
      result = (*(*v6 + 224))(v6);
      if (result)
      {
        result = (*(*v6 + 232))(v6);
        if (result)
        {
          v7 = (*(*v6 + 232))(v6);
          Length = CFStringGetLength(v7);
          v9 = (*(*v6 + 224))(v6);
          valuePtr = Length - CFStringGetLength(v9);
          v10 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
          CFDictionaryAddValue(a2, @"phraseLearningCandidateKeystrokeSavings", v10);
          if (v10)
          {
            CFRelease(v10);
          }

          return 1;
        }
      }
    }
  }

  return result;
}

void sub_2992292D8(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

BOOL sub_299229368(uint64_t a1, const __CFArray *a2)
{
  v65 = *MEMORY[0x29EDCA608];
  v4 = sub_2993652F8(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      Count = CFArrayGetCount(a2);
    }

    else
    {
      Count = 0;
    }

    *buf = 134217984;
    *&buf[4] = Count;
    _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[JADM::setAdditionalConversionDictionaries] #dictionary:%ld", buf, 0xCu);
  }

  v6 = *a1;
  for (i = *(a1 + 8); i != v6; sub_299219AB4(i, 0))
  {
    --i;
  }

  v7 = (a1 + 24);
  v8 = *(a1 + 24);
  *(a1 + 8) = v6;
  for (j = *(a1 + 32); j != v8; sub_299219AB4(j, 0))
  {
    --j;
  }

  *(a1 + 32) = v8;
  if (!a2)
  {
    goto LABEL_84;
  }

  v60 = 0;
  v61 = 0;
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x29EDB9030]);
  cf[1] = Mutable;
  v11 = CFArrayGetCount(a2);
  if (v11 < 1)
  {
    goto LABEL_73;
  }

  v12 = 0;
  for (k = 0; k != v11; ++k)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, k);
    cf[0] = 0;
    v15 = CFGetTypeID(ValueAtIndex);
    if (v15 == CFURLGetTypeID())
    {
      v16 = CFURLCopyFileSystemPath(ValueAtIndex, kCFURLPOSIXPathStyle);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      cf[0] = v16;
      if (!v16)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v17 = CFGetTypeID(ValueAtIndex);
      if (v17 == CFStringGetTypeID())
      {
        sub_299229BC0(cf, ValueAtIndex);
      }

      v16 = cf[0];
      if (!cf[0])
      {
        goto LABEL_20;
      }
    }

    if (CFSetContainsValue(Mutable, v16))
    {
      goto LABEL_20;
    }

    CFSetAddValue(Mutable, cf[0]);
    v18 = sub_2993652F8(9u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      *&buf[4] = k + 1;
      *&buf[12] = 2112;
      *&buf[14] = cf[0];
      _os_log_debug_impl(&dword_29918C000, v18, OS_LOG_TYPE_DEBUG, "[JADM::setAdditionalConversionDictionaries] - %ld: %@", buf, 0x16u);
    }

    v19 = cf[0];
    if (cf[0])
    {
      if (CFStringHasSuffix(cf[0], @".dic"))
      {
        if (CFStringFind(v19, @"Siri", 0).location == -1)
        {
          v25 = sub_2993652F8(9u);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *&buf[4] = cf[0];
            _os_log_debug_impl(&dword_29918C000, v25, OS_LOG_TYPE_DEBUG, "[JADM::setAdditionalConversionDictionaries] adding dictionary %@", buf, 0xCu);
          }

          v27 = *(a1 + 8);
          v26 = *(a1 + 16);
          if (v27 >= v26)
          {
            v35 = (v27 - *a1) >> 3;
            if ((v35 + 1) >> 61)
            {
LABEL_89:
              sub_299212A8C();
            }

            v36 = v26 - *a1;
            v37 = v36 >> 2;
            if (v36 >> 2 <= (v35 + 1))
            {
              v37 = v35 + 1;
            }

            if (v36 >= 0x7FFFFFFFFFFFFFF8)
            {
              v38 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v38 = v37;
            }

            v64 = a1;
            if (v38)
            {
              sub_299229E2C(a1, v38);
            }

            *buf = 0;
            *&buf[8] = 8 * v35;
            v63 = 0;
            v45 = cf[0];
            cf[0] = 0;
            **&buf[8] = v45;
            *&buf[16] = 8 * v35 + 8;
            sub_299229D74(a1, buf);
            v29 = *(a1 + 8);
            sub_299229E74(buf);
          }

          else
          {
            v28 = cf[0];
            cf[0] = 0;
            *v27 = v28;
            v29 = v27 + 1;
            *(a1 + 8) = v29;
          }

          *(a1 + 8) = v29;
          goto LABEL_20;
        }

        v21 = *(a1 + 32);
        v20 = *(a1 + 40);
        if (v21 >= v20)
        {
          v30 = (v21 - *v7) >> 3;
          if ((v30 + 1) >> 61)
          {
            goto LABEL_89;
          }

          v31 = v20 - *v7;
          v32 = v31 >> 2;
          if (v31 >> 2 <= (v30 + 1))
          {
            v32 = v30 + 1;
          }

          if (v31 >= 0x7FFFFFFFFFFFFFF8)
          {
            v33 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v32;
          }

          v64 = a1 + 24;
          if (v33)
          {
            sub_299229E2C(a1 + 24, v33);
          }

          *buf = 0;
          *&buf[8] = 8 * v30;
          v63 = 0;
          v39 = cf[0];
          cf[0] = 0;
          **&buf[8] = v39;
          *&buf[16] = 8 * v30 + 8;
          sub_299229D74(a1 + 24, buf);
          v23 = *(a1 + 32);
          sub_299229E74(buf);
        }

        else
        {
          v22 = cf[0];
          cf[0] = 0;
          *v21 = v22;
          v23 = v21 + 1;
          *(a1 + 32) = v23;
        }

        *(a1 + 32) = v23;
        v40 = sub_2993652F8(9u);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = cf[0];
          v41 = v40;
          v42 = "[JADM::setAdditionalConversionDictionaries] adding Siri dictionary %@";
          v43 = 12;
LABEL_60:
          _os_log_debug_impl(&dword_29918C000, v41, OS_LOG_TYPE_DEBUG, v42, buf, v43);
        }
      }

      else
      {
        if (CFStringHasSuffix(v19, @"/zip_code-ja.dat"))
        {
          v24 = cf[0];
          cf[0] = 0;
          if (v12)
          {
            CFRelease(v12);
          }

          v61 = v24;
          v12 = v24;
          goto LABEL_20;
        }

        if (CFStringHasSuffix(v19, @"blocklist.dat"))
        {
          v34 = cf[0];
          cf[0] = 0;
          sub_299219AB4((a1 + 56), v34);
          goto LABEL_20;
        }

        if (CFStringFind(v19, @"ja.rnnlm", 0).length > 0)
        {
          v44 = CFURLCreateWithFileSystemPath(0, cf[0], kCFURLPOSIXPathStyle, 1u);
          if (v60)
          {
            CFRelease(v60);
          }

          v60 = v44;
          goto LABEL_20;
        }

        if (CFStringFind(v19, off_2A145E388, 0).length > 0)
        {
          v46 = CFURLCreateWithFileSystemPath(0, cf[0], kCFURLPOSIXPathStyle, 1u);
          sub_29920FE30((a1 + 72), v46);
          v47 = sub_2993652F8(9u);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            v48 = CFURLGetString(*(a1 + 72));
            *buf = 136315394;
            *&buf[4] = "setAdditionalConversionDictionaries";
            *&buf[12] = 2112;
            *&buf[14] = v48;
            v41 = v47;
            v42 = "[JADM::%s] setting Siri language model path to: %@";
            v43 = 22;
            goto LABEL_60;
          }
        }
      }

LABEL_20:
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      continue;
    }
  }

  if (v12)
  {
    v61 = 0;
    sub_299219AB4((a1 + 48), v12);
    v49 = sub_2993652F8(9u);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      v58 = *(a1 + 48);
      *buf = 138412290;
      *&buf[4] = v58;
      _os_log_debug_impl(&dword_29918C000, v49, OS_LOG_TYPE_DEBUG, "[JADM::setAdditionalConversionDictionaries] setting zip code dictionary path to: %@", buf, 0xCu);
    }
  }

LABEL_73:
  if (*(a1 + 56))
  {
    v50 = sub_2993652F8(9u);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v56 = *(a1 + 56);
      *buf = 136315394;
      *&buf[4] = "setAdditionalConversionDictionaries";
      *&buf[12] = 2112;
      *&buf[14] = v56;
      _os_log_debug_impl(&dword_29918C000, v50, OS_LOG_TYPE_DEBUG, "[JADM::%s] setting blocklist path to: %@", buf, 0x16u);
    }
  }

  v51 = v60;
  if (v60)
  {
    v60 = 0;
    sub_29920FE30((a1 + 64), v51);
    v52 = sub_2993652F8(9u);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      v57 = CFURLGetString(*(a1 + 64));
      *buf = 136315394;
      *&buf[4] = "setAdditionalConversionDictionaries";
      *&buf[12] = 2112;
      *&buf[14] = v57;
      _os_log_debug_impl(&dword_29918C000, v52, OS_LOG_TYPE_DEBUG, "[JADM::%s] setting language model path to: %@", buf, 0x16u);
    }
  }

  if (*(a1 + 72) || *(a1 + 24) != *(a1 + 32))
  {
    *(a1 + 81) = 1;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_84:
  result = a2 != 0;
  v54 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299229B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v12 = va_arg(va3, const void *);
  sub_299219AB4(va, 0);
  sub_299229EC8(va1, 0);
  sub_29920FE30(va2, 0);
  sub_299219AB4(va3, 0);
  _Unwind_Resume(a1);
}

void sub_299229BC0(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    sub_299219AB4(a1, cf);
  }
}

BOOL sub_299229C20(uint64_t a1, int a2, CFArrayRef theArray)
{
  *(a1 + 80) = 0;
  if (a2 != 2)
  {
    return 0;
  }

  *(a1 + 81) = 0;
  if (theArray && CFArrayGetCount(theArray) && (ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0), v6 = CFGetTypeID(ValueAtIndex), v6 == CFURLGetTypeID()))
  {
    v7 = sub_29936CDE8(theArray);
    v8 = sub_299229D00(a1, v7);
    if (v7)
    {
      CFRelease(v7);
    }

    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    result = sub_299229D00(a1, theArray);
    if (!result)
    {
      return result;
    }
  }

  result = 1;
  *(a1 + 80) = 1;
  return result;
}

void sub_299229CE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299229F00(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_299229D00(uint64_t a1, CFArrayRef theArray)
{
  if (theArray)
  {
    v3 = theArray;
    if (CFArrayGetCount(theArray) < 1)
    {
      theArray = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
      theArray = CFDictionaryGetValue(ValueAtIndex, kMecabraAssetDataFilePathsKey);
    }
  }

  return sub_299229368(a1, theArray);
}

void sub_299229D74(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v5);
    do
    {
      sub_299219AB4(v4++, 0);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

void sub_299229E2C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_299229E74(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_299219AB4((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_299229EC8(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_299229F00(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_299229F50(void *a1)
{
  *a1 = &unk_2A1F656F8;
  v2 = a1[37];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[38];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_299223F18(a1);
}

void sub_299229FFC(void *a1)
{
  sub_299229F50(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_29922A034(void *a1, const char *a2)
{
  v3 = a1[3];
  v105[0] = 0;
  v105[1] = 0;
  v103[1] = 0;
  v104 = v105;
  v102 = v103;
  v103[0] = 0;
  v101[0] = 0;
  v101[1] = 0;
  v99 = 0;
  v100 = v101;
  __src = 0;
  v98 = 0;
  v6 = objc_msgSend_rangeOfString_(v3, a2, @"z");
  v7 = a1[4];
  if ((v7 & 0x800) == 0 || objc_msgSend_length(v3, v4, v5) < 2)
  {
    v15 = @"IDXExactMatch";
    v14 = v3;
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_13;
    }

    if (objc_msgSend_hasPrefix_(v3, v4, @"zx"))
    {
      v15 = @"IDXExactMatch";
      v14 = v3;
      if (objc_msgSend_length(v3, v16, v17) < 3)
      {
        goto LABEL_13;
      }

      v18 = objc_msgSend_length(v3, v4, v5) - 2;
      v15 = @"IDXExactMatch";
      v14 = v3;
      if (objc_msgSend_rangeOfString_options_range_(v3, v19, @"z", 0, 2, v18) == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_13;
      }

      v15 = @"IDXWildcardMatch";
      v20 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_options_range_(v3, v4, @"z", @"?", 0, 2, v18);
    }

    else
    {
      v15 = @"IDXExactMatch";
      v14 = v3;
      if (objc_msgSend_length(v3, v16, v17) < 2)
      {
        goto LABEL_13;
      }

      v21 = objc_msgSend_length(v3, v4, v5);
      v15 = @"IDXWildcardMatch";
      v20 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_options_range_(v3, v22, @"z", @"?", 0, 0, v21);
    }

    v14 = v20;
    goto LABEL_13;
  }

  if (objc_msgSend_length(v3, v4, v5) > 2)
  {
    goto LABEL_142;
  }

  v9 = MEMORY[0x29EDBA0F8];
  v10 = objc_msgSend_substringToIndex_(v3, v8, 1);
  v12 = objc_msgSend_substringFromIndex_(v3, v11, 1);
  v14 = objc_msgSend_stringWithFormat_(v9, v13, @"%@*%@", v10, v12);
  v15 = @"IDXWildcardMatch";
LABEL_13:
  if (objc_msgSend_length(v3, v4, v5) == 1)
  {
    v25 = (*(*a1 + 232))(a1);
    v27 = objc_msgSend_substringWithRange_(v14, v26, 0, 1);
    InputKeyFromASCIIString = MecabraInputKeyPropertiesCreateInputKeyFromASCIIString(v25, v27);
    v30 = InputKeyFromASCIIString;
    if (InputKeyFromASCIIString && (objc_msgSend_isEqualToString_(InputKeyFromASCIIString, v29, @"重") & 1) == 0 && (objc_msgSend_isEqualToString_(v30, v31, @"難") & 1) == 0)
    {
      if ((a1[4] & 0x2000000) != 0)
      {
        v32 = 4096;
      }

      else
      {
        v32 = 1;
      }

      sub_299223FD4(a1, v32, v30);
    }
  }

  if (objc_msgSend_length(v14, v23, v24) >= 2)
  {
    v35 = 0;
    while (v35 < objc_msgSend_length(v14, v33, v34))
    {
      v37 = objc_msgSend_characterAtIndex_(v14, v36, v35++);
      if (v37 != 63)
      {
        goto LABEL_28;
      }
    }

    v14 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v14, v36, @"?", @"@");
  }

LABEL_28:
  if ((a1[4] & 2) == 0)
  {
    if ((v7 & 0x800) == 0 && v15 == @"IDXWildcardMatch")
    {
      v39 = (objc_msgSend_isEqualToString_(v3, v33, @"xzf") & 1) != 0 || (objc_msgSend_isEqualToString_(v3, v38, @"xzh") & 1) != 0 || objc_msgSend_isEqualToString_(v3, v38, @"xzr");
      v40 = objc_msgSend_stringByAppendingString_(v14, v38, @"*");
      sub_299224C3C(a1, &v104, v40, @"IDXWildcardMatch", &v100, 1);
      goto LABEL_38;
    }

    sub_299224C3C(a1, &v104, v14, @"IDXPrefixMatch", &v100, 1);
  }

  v39 = 0;
LABEL_38:
  if (v15 == @"IDXWildcardMatch")
  {
    v41 = &v104;
  }

  else
  {
    v41 = &v100;
  }

  if (v15 == @"IDXWildcardMatch")
  {
    v42 = &v100;
  }

  else
  {
    v42 = &v102;
  }

  sub_299224C3C(a1, v41, v14, v15, v42, 1);
  if (v39)
  {
    sub_299224C3C(a1, &v100, v3, @"IDXExactMatch", &v102, 1);
  }

  v43 = v100;
  if (v100 != v101)
  {
    v44 = 0;
    v45 = __src;
    v46 = v100;
    do
    {
      v47 = v44;
      v48 = v46[1];
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
          v49 = v46[2];
          v50 = *v49 == v46;
          v46 = v49;
        }

        while (!v50);
      }

      ++v44;
      v46 = v49;
    }

    while (v49 != v101);
    v51 = v98;
    v52 = (v98 - __src) >> 3;
    if (v47 >= (v99 - v98) >> 3)
    {
      v57 = v52 + v44;
      if ((v52 + v44) >> 61)
      {
        sub_299212A8C();
      }

      if ((v99 - __src) >> 2 > v57)
      {
        v57 = (v99 - __src) >> 2;
      }

      if ((v99 - __src) >= 0x7FFFFFFFFFFFFFF8)
      {
        v58 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v58 = v57;
      }

      if (v58)
      {
        sub_29920B86C(&__src, v58);
      }

      v63 = 8 * v44;
      v64 = 0;
      do
      {
        *v64++ = v43[4];
        v65 = v43[1];
        if (v65)
        {
          do
          {
            v66 = v65;
            v65 = *v65;
          }

          while (v65);
        }

        else
        {
          do
          {
            v66 = v43[2];
            v50 = *v66 == v43;
            v43 = v66;
          }

          while (!v50);
        }

        v43 = v66;
      }

      while (v64 != v63);
      memcpy(v63, v45, v98 - v45);
      v67 = (v63 + v98 - v45);
      v68 = v45 - __src;
      v69 = (__src - v45);
      memcpy(v69, __src, v68);
      v70 = __src;
      __src = v69;
      v98 = v67;
      v99 = 0;
      if (v70)
      {
        operator delete(v70);
      }
    }

    else if (v52 <= v47)
    {
      if (v52 < 0)
      {
        v71 = (v98 - __src) >> 3;
        v72 = v100;
        do
        {
          v73 = *v72;
          if (*v72)
          {
            do
            {
              v59 = v73;
              v73 = v73[1];
            }

            while (v73);
          }

          else
          {
            do
            {
              v59 = v72[2];
              v50 = *v59 == v72;
              v72 = v59;
            }

            while (v50);
          }

          v72 = v59;
        }

        while (!__CFADD__(v71++, 1));
      }

      else
      {
        v59 = v100;
      }

      if (v59 == v101)
      {
        v76 = v98;
      }

      else
      {
        v75 = v59;
        v76 = v98;
        do
        {
          *v76 = v75[4];
          v77 = v75[1];
          if (v77)
          {
            do
            {
              v78 = v77;
              v77 = *v77;
            }

            while (v77);
          }

          else
          {
            do
            {
              v78 = v75[2];
              v50 = *v78 == v75;
              v75 = v78;
            }

            while (!v50);
          }

          ++v76;
          v75 = v78;
        }

        while (v78 != v101);
      }

      v98 = v76;
      if (v52 >= 1)
      {
        v79 = &v45[v44];
        v80 = &v76[-v44];
        v81 = v76;
        while (v80 < v51)
        {
          v82 = *v80;
          v80 += 8;
          *v81++ = v82;
        }

        v98 = v81;
        if (v76 != v79)
        {
          memmove(&v45[v44], v45, v76 - v79);
        }

        if (v59 != v43)
        {
          do
          {
            *v45 = v43[4];
            v83 = v43[1];
            if (v83)
            {
              do
              {
                v84 = v83;
                v83 = *v83;
              }

              while (v83);
            }

            else
            {
              do
              {
                v84 = v43[2];
                v50 = *v84 == v43;
                v43 = v84;
              }

              while (!v50);
            }

            ++v45;
            v43 = v84;
          }

          while (v84 != v59);
        }
      }
    }

    else
    {
      v53 = __src + 8 * v44;
      v54 = &v98[-8 * v44];
      v55 = v98;
      while (v54 < v51)
      {
        v56 = *v54++;
        *v55++ = v56;
      }

      v98 = v55;
      if (v51 != v53)
      {
        memmove(&v45[v44], v45, v51 - v53);
      }

      *v45 = v43[4];
      if (v47)
      {
        do
        {
          v60 = v43[1];
          if (v60)
          {
            do
            {
              v61 = v60;
              v60 = *v60;
            }

            while (v60);
          }

          else
          {
            do
            {
              v61 = v43[2];
              v50 = *v61 == v43;
              v43 = v61;
            }

            while (!v50);
          }

          v45[1] = v61[4];
          ++v45;
          v43 = v61;
        }

        while (v44-- > 2);
      }
    }
  }

  if (v98 != __src)
  {
    sub_29922A990(a1[5], __src, v98, 0xFFFFFFFFFFFFFFFFLL);
  }

  sub_299225BCC(a1, a1[3]);
  if ((v7 & 0x800) != 0)
  {
    if (objc_msgSend_length(v14, v85, v86) == 1)
    {
      v88 = 200;
    }

    else
    {
      v88 = -1;
    }
  }

  else if ((objc_msgSend_hasPrefix_(v14, v85, @"z") & 1) != 0 || objc_msgSend_hasPrefix_(v14, v87, @"yyy"))
  {
    v88 = -1;
  }

  else
  {
    v88 = 50;
  }

  v89 = v104;
  if (v104 != v105)
  {
    v90 = 0;
    v91 = a1[5];
    do
    {
      v92 = v89[4];
      if (v90 >= v88)
      {
        if (v92)
        {
          (*(*v92 + 16))(v92);
        }
      }

      else
      {
        v93 = sub_29928A270(v92);
        objc_msgSend_addObject_(v91, v94, v93);
      }

      v95 = v89[1];
      if (v95)
      {
        do
        {
          v96 = v95;
          v95 = *v95;
        }

        while (v95);
      }

      else
      {
        do
        {
          v96 = v89[2];
          v50 = *v96 == v89;
          v89 = v96;
        }

        while (!v50);
      }

      ++v90;
      v89 = v96;
    }

    while (v96 != v105);
  }

  if (__src)
  {
    v98 = __src;
    operator delete(__src);
  }

LABEL_142:
  sub_29921B8CC(&v100, v101[0]);
  sub_29921B8CC(&v102, v103[0]);
  sub_29921B8CC(&v104, v105[0]);
}

void sub_29922A918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29921B8CC(&a16, a17);
  sub_29921B8CC(&a19, a20);
  sub_29921B8CC(&a22, a23);
  _Unwind_Resume(a1);
}

void sub_29922A990(void *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    do
    {
      v9 = *v6;
      if (v8 >= a4)
      {
        if (v9)
        {
          (*(*v9 + 16))(v9);
        }
      }

      else
      {
        v10 = sub_29928A270(v9);
        objc_msgSend_addObject_(a1, v11, v10);
      }

      ++v8;
      ++v6;
    }

    while (v6 != a3);
  }
}

void sub_29922AA54(int *a1)
{
  v1 = sub_299277300(*a1);
  if (v1 == 5)
  {
    v2 = sub_2993E02C0();
    v1 = sub_2993E0350(v2, 5);
  }

  v3 = sub_29936C2B8();
  v4 = sub_29936C350(v3, v1, off_2A145F738[0], off_2A145F6D0[0]);
  v5 = *(v4 + 23);
  if (v5 >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = v4[23];
  }

  else
  {
    v7 = *(v4 + 1);
  }

  CFURLCreateFromFileSystemRepresentation(0, v6, v7, 0);
  operator new();
}

void sub_29922AB74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x29C29BFB0](v2, 0x10E1C4091D39866);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29922ABAC(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (objc_msgSend_length(a2, a2, a3) < 2)
  {
    return 0;
  }

  result = objc_msgSend_isEqualToString_(a3, v6, @"IDXExactMatch");
  if (result)
  {
    return !sub_299223B50(a4, v8);
  }

  return result;
}

uint64_t sub_29922AC3C(uint64_t a1)
{
  if ((*(a1 + 33) & 8) != 0)
  {
    v1 = a1 + 304;
    if (!*(a1 + 304))
    {
      v2 = (*(*a1 + 232))(a1);
      sub_299277300(v2);
      operator new();
    }
  }

  else
  {
    v1 = a1 + 296;
  }

  return *v1;
}

void sub_29922AE7C(void *a1)
{
  if (*(a1[40] + 105) == 1)
  {
    v2 = sub_29936C2B8();
    v3 = (*(*a1 + 232))(a1);
    v4 = sub_299277300(v3);
    v5 = sub_29936C350(v2, v4, off_2A145F738[0], off_2A145F6D0[0]);
    v6 = *(v5 + 23);
    if (v6 >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = *v5;
    }

    if (v6 >= 0)
    {
      v8 = v5[23];
    }

    else
    {
      v8 = *(v5 + 1);
    }

    v9 = CFURLCreateFromFileSystemRepresentation(0, v7, v8, 0);
    if (v9)
    {
      sub_299223E58(a1, v9, 0);
    }

    (*(*a1 + 264))(a1);
    v10 = (*(*a1 + 232))(a1);
    v11 = sub_299277300(v10);
    sub_2993B9068((a1 + 9), v11);
    if (v9)
    {
      CFRelease(v9);
    }
  }
}

void sub_29922AFC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

void sub_29922AFE4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = a3[4];
  v5 = a3[5];
  v6 = *a3;
  v7 = a3[1];
  sub_29922B434();
}

void sub_29922B324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a16)
  {
    (*(*a16 + 16))(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29922B518(void *a1, uint64_t a2, unint64_t a3)
{
  v5[4] = *MEMORY[0x29EDCA608];
  v5[0] = &unk_2A1F65910;
  v5[3] = v5;
  sub_29939BB74(a3, a1);
  result = sub_29922C4C8(v5);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29922B5AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29922C4C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29922B5C0(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1461D40, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v4 = a2;
    v5 = __cxa_guard_acquire(&qword_2A1461D40);
    a2 = v4;
    v6 = v5;
    a1 = v7;
    if (v6)
    {
      qword_2A1461D28 = 3;
      *algn_2A1461D30 = xmmword_299402230;
      __cxa_guard_release(&qword_2A1461D40);
      a1 = v7;
      a2 = v4;
    }
  }

  v8[0] = &unk_2A1F65BD0;
  v8[3] = v8;
  sub_299398A70(a1, a2, &qword_2A1461D28, v8);
  result = sub_29922D9BC(v8);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29922B6B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29922D9BC(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_29922B6CC@<X0>(uint64_t a1@<X0>, char **a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = a2[1];
  if (v4 != a2[3] || !v4)
  {
    goto LABEL_13;
  }

  v6 = 0;
  v7 = *a2;
  v8 = a2[2];
  v9 = 2 * v4;
  v10 = MEMORY[0x29EDCA600];
  while (1)
  {
    v11 = *&v8[v6];
    if (v11 <= 0x7F)
    {
      break;
    }

    if (!__maskrune(v11, 0x8000uLL))
    {
      goto LABEL_10;
    }

LABEL_8:
    v7 += 2;
    v6 += 2;
    if (v9 == v6)
    {
      goto LABEL_13;
    }
  }

  if ((*(v10 + 4 * v11 + 60) & 0x8000) != 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (v6 && v9 != v6)
  {
    sub_29922B93C(a1, v7, &v4[-(v6 >> 1)]);
  }

LABEL_13:

  return sub_299217DF0(a3, byte_29945C656);
}

void sub_29922B904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29922BAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_29922C934(&a13);
  sub_29939B024(&a27);
  *(v27 - 88) = &unk_2A1F65C80;
  a27 = v27 - 80;
  sub_29922CB20(&a27);
  _Unwind_Resume(a1);
}

void sub_29922BB88(void *a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *MEMORY[0x29EDCA608];
  *a3 = &unk_2A1F768F0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0;
  sub_29939B410(a3, a1, a2);
}

uint64_t sub_29922BDD0(uint64_t a1)
{
  *a1 = &unk_2A1F65C80;
  v3 = (a1 + 8);
  sub_29922CB20(&v3);
  return a1;
}

uint64_t sub_29922BE28(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = 32;
  if (a5)
  {
    v6 = 40;
  }

  if (*(result + v6))
  {
    if (a6)
    {
      result = (*(*a2[7] + 24))(a2[7]);
      if (result)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v8 = a2[7];
        v14 = 0;
        operator new();
      }
    }

    else if (a2[1])
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v9 = *a2;
      v14 = 0;
      operator new();
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29922C0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  sub_29922D43C(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29922C13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = a3;
  v10 = a2;
  v8 = 1;
  v7 = a5;
  v6 = a4;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, &v10, &v9, &v8, &v7, &v6);
}

uint64_t sub_29922C1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 16);
  v7[0] = &unk_2A1F65B20;
  v7[1] = sub_29922C2C4;
  v7[3] = v7;
  v6[0] = &unk_2A1F65CF8;
  v6[1] = sub_2992AD148;
  v6[3] = v6;
  (*(*v3 + 16))(v3, a2, a3, v7, v6, 128);
  sub_29922D72C(v6);
  result = sub_29922D5B4(v7);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29922C2A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_29922D72C(va);
  sub_29922D5B4(va1);
  _Unwind_Resume(a1);
}

void *sub_29922C2E4(void *a1)
{
  *a1 = &unk_2A1F658E0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29922C354(void *a1)
{
  *a1 = &unk_2A1F658E0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29922C47C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F65980))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29922C4C8(uint64_t a1)
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

void sub_29922C548(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29922C59C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29922C59C(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 4);
      if (v4)
      {
        *(v3 - 3) = v4;
        operator delete(v4);
      }

      v5 = *(v3 - 7);
      if (v5)
      {
        *(v3 - 6) = v5;
        operator delete(v5);
      }

      v6 = v3 - 10;
      if (*(v3 - 57) < 0)
      {
        operator delete(*v6);
      }

      v3 -= 10;
    }

    while (v6 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_29922C614(uint64_t a1, void *__src, unint64_t a3)
{
  v6 = *(a1 + 23);
  if (v6 < 0)
  {
    v8 = *(a1 + 8);
    v7 = (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v7 = 10;
    v8 = *(a1 + 23);
  }

  if (v7 - v8 < a3)
  {
    sub_29922C6D8(a1, v7, a3 - v7 + v8);
  }

  if (a3)
  {
    v9 = a1;
    if ((v6 & 0x80000000) != 0)
    {
      v9 = *a1;
    }

    memmove((v9 + 2 * v8), __src, 2 * a3);
    v10 = v8 + a3;
    if (*(a1 + 23) < 0)
    {
      *(a1 + 8) = v10;
    }

    else
    {
      *(a1 + 23) = v10 & 0x7F;
    }

    *(v9 + 2 * v10) = 0;
  }

  return a1;
}

void sub_29922C6D8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (0x7FFFFFFFFFFFFFF6 - a2 >= a3)
  {
    if (*(a1 + 23) < 0)
    {
      v3 = *a1;
    }

    v4 = a3 + a2;
    if (a3 + a2 <= 2 * a2)
    {
      v4 = 2 * a2;
    }

    if ((v4 | 3) == 0xB)
    {
      v5 = 13;
    }

    else
    {
      v5 = (v4 | 3) + 1;
    }

    v6 = v4 >= 0xB;
    v7 = 11;
    if (v6)
    {
      v7 = v5;
    }

    if (a2 > 0x3FFFFFFFFFFFFFF2)
    {
      v8 = 0x7FFFFFFFFFFFFFF7;
    }

    else
    {
      v8 = v7;
    }

    sub_299212A48(a1, v8);
  }

  sub_299212A30();
}

uint64_t sub_29922C820(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_29920E024(result, a4);
  }

  return result;
}

void sub_29922C880(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29922C89C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0xA)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      if ((a3 | 3) == 0xB)
      {
        v3 = 13;
      }

      else
      {
        v3 = (a3 | 3) + 1;
      }

      sub_299212A48(__dst, v3);
    }

    sub_299212A30();
  }

  __dst[23] = a3;
  v4 = 2 * a3 + 2;

  return memmove(__dst, __src, v4);
}

uint64_t sub_29922C934(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29922C988(uint64_t a1)
{
  *a1 = &unk_2A1F65C80;
  v3 = (a1 + 8);
  sub_29922CB20(&v3);
  return MEMORY[0x29C29BFB0](a1, 0xA1C4030951706);
}

uint64_t sub_29922CA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(*(a1 + 8) + 24 * a2) + 40 * a3;
  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

uint64_t sub_29922CAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v5 = (*(*a1 + 48))(a1);
  return sub_29922CC38(a4, v5, v6, &v8);
}

void sub_29922CB20(void ***a1)
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
        v4 -= 3;
        v6 = v4;
        sub_29922CB94(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_29922CB94(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29922CBE8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29922CBE8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_29922CC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a2;
  v6[1] = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_2991A2240();
  }

  return (*(*v4 + 48))(v4, v6, a4);
}

__n128 sub_29922CD1C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F659A0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 42) = 0;
  *(a2 + 46) = 0;
  return result;
}

void sub_29922CD64(uint64_t a1, int *a2, const void **a3, unint64_t *a4, unint64_t *a5)
{
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = *a2;
  v26 = *a2;
  v11 = v8 >> 1;
  if (!v7)
  {
    v11 = 0;
  }

  v12 = *(a1 + 24);
  if (v12)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  v14 = v11 != v13 || memcmp(v7, (v12 + 2 * *(a1 + 8)), 2 * v11) != 0;
  sub_29939F698(v10, v24);
  v15 = v25;
  if ((v25 & 0x8000000000000000) != 0)
  {
    v15 = v24[1];
    operator delete(v24[0]);
  }

  if (*(a1 + 40) & 1 | (v15 >= v9) || !v14 && (*(a1 + 41) & 1) != 0)
  {
    v16 = 42;
    do
    {
      if (*v17 == v10)
      {
        goto LABEL_17;
      }

      v17 += 2;
      v16 -= 2;
    }

    while (v16);
    v17 = "";
LABEL_17:
    if (v17 == "")
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    v20 = a2[1];
    if (v19)
    {
      v21 = a2[1];
    }

    v22 = *(a1 + 16);
    v23 = *(a1 + 8);
    sub_29939B8FC();
  }
}

uint64_t sub_29922CEBC(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F65A00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29922CF08(uint64_t a1)
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

__n128 sub_29922D004(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F65A20;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_29922D03C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  v8 = *a2;
  if (sub_29922D1C4(*(a1 + 16), *a2))
  {
    v9 = *(a1 + 24);
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    if (v10 >= v11)
    {
      v13 = *v9;
      v14 = v10 - *v9;
      v15 = v14 >> 4;
      v16 = (v14 >> 4) + 1;
      if (v16 >> 60)
      {
        sub_299212A8C();
      }

      v17 = v11 - v13;
      if (v17 >> 3 > v16)
      {
        v16 = v17 >> 3;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF0)
      {
        v18 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (!(v18 >> 60))
        {
          operator new();
        }

        sub_29919600C();
      }

      v19 = 16 * v15;
      *v19 = v8;
      *(v19 + 4) = a2[1];
      *(v19 + 8) = v7;
      v12 = 16 * v15 + 16;
      memcpy(0, v13, v14);
      *v9 = 0;
      *(v9 + 8) = v12;
      *(v9 + 16) = 0;
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      *v10 = v8;
      *(v10 + 4) = a2[1];
      *(v10 + 8) = v7;
      v12 = v10 + 16;
    }

    *(v9 + 8) = v12;
  }
}