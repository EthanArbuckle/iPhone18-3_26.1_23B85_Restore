void sub_271382408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27137CD90(va);
  sub_2713836BC((v9 - 144));
  _Unwind_Resume(a1);
}

uint64_t sub_271382478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v69 = 0;
  v70 = 0;
  v71 = 0;
  *v66 = 0;
  memset(&v66[8], 0, 32);
  v67 = 0u;
  memset(v68, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_69:
    v50 = 0;
    v51 = v68[0];
    if (!v68[0])
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  *&v64 = a3;
  *(&v64 + 1) = a3;
  v65 = 0;
  *v61 = 0;
  memset(&v61[8], 0, 48);
  *__p = 0uLL;
  memset(v63, 0, 21);
  v70 = sub_27137CF08(&v69, v61);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v61[32])
  {
    *&v61[40] = *&v61[32];
    operator delete(*&v61[32]);
  }

  v13 = v70;
  *(v70 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v14 = *(v13 - 8);
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 7) = v14 + 24 * v15;
    }
  }

  else
  {
    sub_27137D234(v13 - 8, v15 - v16, &v64);
    v13 = v70;
  }

  v17 = *(v13 - 5);
  v18 = *(a1 + 32);
  v19 = (*(v13 - 4) - v17) >> 4;
  v58 = a4;
  if (v18 <= v19)
  {
    if (v18 < v19)
    {
      *(v13 - 4) = v17 + 16 * v18;
    }
  }

  else
  {
    sub_27137D400(v13 - 40, v18 - v19);
    v13 = v70;
  }

  v20 = 0;
  v60 = 0;
  v21 = 0;
  *(v13 - 2) = v6;
  v59 = a3;
  v22 = a3 - a2;
  *(v13 - 2) = a5;
  *(v13 - 4) = a6;
  do
  {
    v23 = (++v21 & 0xFFF) != 0 || (v21 >> 12) < v22;
    if (!v23)
    {
      sub_27137CDD4();
    }

    v25 = v13 - 1;
    v24 = *(v13 - 2);
    v26 = v13 - 6;
    if (v24)
    {
      (*(*v24 + 16))(v24, v13 - 6);
    }

    v27 = *v26;
    if (*v26 <= -994)
    {
      if ((v27 + 995) < 2)
      {
        goto LABEL_16;
      }

      if (v27 != -1000)
      {
LABEL_84:
        sub_27137CE2C();
      }

      v28 = *(v13 - 10);
      if ((a5 & 0x20) != 0 && v28 == a2 || (a5 & 0x1000) != 0 && v28 != v59)
      {
LABEL_34:
        v29 = v70;
        v30 = *(v70 - 5);
        if (v30)
        {
          *(v70 - 4) = v30;
          operator delete(v30);
        }

        v31 = *(v29 - 8);
        if (v31)
        {
          *(v29 - 7) = v31;
          operator delete(v31);
        }

        v70 = v29 - 6;
        goto LABEL_16;
      }

      v35 = v28 - *(v13 - 11);
      if ((v60 & (v20 >= v35)) == 0)
      {
        v36 = *v26;
        *&v66[16] = *(v13 - 5);
        *v66 = v36;
        if (v66 != v26)
        {
          sub_271383734(&v66[32], *(v13 - 8), *(v13 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - *(v13 - 8)) >> 3));
          sub_27138394C(v68, *(v13 - 5), *(v13 - 4), (*(v13 - 4) - *(v13 - 5)) >> 4);
        }

        v37 = *v25;
        *(&v68[3] + 5) = *(v13 - 11);
        v68[3] = v37;
        v20 = v35;
      }

      v38 = v70;
      if (v20 == v22)
      {
        v39 = v69;
        while (v38 != v39)
        {
          v40 = *(v38 - 5);
          if (v40)
          {
            *(v38 - 4) = v40;
            operator delete(v40);
          }

          v41 = *(v38 - 8);
          if (v41)
          {
            *(v38 - 7) = v41;
            operator delete(v41);
          }

          v38 -= 6;
        }

        v70 = v39;
        v60 = 1;
        v20 = v22;
      }

      else
      {
        v42 = *(v70 - 5);
        if (v42)
        {
          *(v70 - 4) = v42;
          operator delete(v42);
        }

        v43 = *(v38 - 8);
        if (v43)
        {
          *(v38 - 7) = v43;
          operator delete(v43);
        }

        v70 = v38 - 6;
        v60 = 1;
      }
    }

    else
    {
      switch(v27)
      {
        case -993:
          goto LABEL_34;
        case -992:
          sub_27137D554(v61, v13 - 6);
          (*(**v25 + 24))(*v25, 1, v13 - 6);
          (*(*v63[1] + 24))(v63[1], 0, v61);
          v32 = v70;
          if (v70 >= v71)
          {
            v70 = sub_27137CF08(&v69, v61);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          else
          {
            v33 = *&v61[16];
            *v70 = *v61;
            v32[1] = v33;
            *(v32 + 6) = 0;
            *(v32 + 7) = 0;
            *(v32 + 4) = 0;
            *(v32 + 5) = 0;
            v32[2] = *&v61[32];
            *(v32 + 6) = *&v61[48];
            *&v61[32] = 0;
            *&v61[40] = 0;
            *(v32 + 8) = 0;
            *(v32 + 9) = 0;
            *(v32 + 56) = *__p;
            *(v32 + 9) = v63[0];
            *&v61[48] = 0;
            __p[0] = 0;
            __p[1] = 0;
            v63[0] = 0;
            v34 = v63[1];
            *(v32 + 85) = *(&v63[1] + 5);
            *(v32 + 10) = v34;
            v70 = v32 + 6;
          }

          if (*&v61[32])
          {
            *&v61[40] = *&v61[32];
            operator delete(*&v61[32]);
          }

          break;
        case -991:
          break;
        default:
          goto LABEL_84;
      }
    }

LABEL_16:
    v13 = v70;
  }

  while (v69 != v70);
  if ((v60 & 1) == 0)
  {
    goto LABEL_69;
  }

  v44 = *v58;
  *v44 = a2;
  *(v44 + 8) = a2 + v20;
  *(v44 + 16) = 1;
  if (v67 != *&v66[32])
  {
    v45 = 0xAAAAAAAAAAAAAAABLL * ((v67 - *&v66[32]) >> 3);
    v46 = (*&v66[32] + 16);
    v47 = 1;
    do
    {
      v48 = v44 + 24 * v47;
      *v48 = *(v46 - 1);
      v49 = *v46;
      v46 += 24;
      *(v48 + 16) = v49;
      v23 = v45 > v47++;
    }

    while (v23);
  }

  v50 = 1;
  v51 = v68[0];
  if (v68[0])
  {
LABEL_70:
    v68[1] = v51;
    operator delete(v51);
  }

LABEL_71:
  if (*&v66[32])
  {
    *&v67 = *&v66[32];
    operator delete(*&v66[32]);
  }

  v52 = v69;
  if (v69)
  {
    v53 = v70;
    v54 = v69;
    if (v70 != v69)
    {
      do
      {
        v55 = *(v53 - 5);
        if (v55)
        {
          *(v53 - 4) = v55;
          operator delete(v55);
        }

        v56 = *(v53 - 8);
        if (v56)
        {
          *(v53 - 7) = v56;
          operator delete(v56);
        }

        v53 -= 6;
      }

      while (v53 != v52);
      v54 = v69;
    }

    v70 = v52;
    operator delete(v54);
  }

  return v50;
}

void sub_271382A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_27137CD90(&a27);
  sub_27137CE84((v27 - 120));
  _Unwind_Resume(a1);
}

void sub_271382A80(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v11 = 0;
  }

  else
  {
    v4 = a1[4];
    v5 = &v2[v4 / 0x2A];
    v6 = *v5 + 96 * (v4 % 0x2A);
    v7 = v2[(a1[5] + v4) / 0x2A] + 96 * ((a1[5] + v4) % 0x2A);
    if (v6 != v7)
    {
      do
      {
        v8 = *(v6 + 7);
        if (v8)
        {
          *(v6 + 8) = v8;
          operator delete(v8);
        }

        v9 = *(v6 + 4);
        if (v9)
        {
          *(v6 + 5) = v9;
          operator delete(v9);
        }

        v6 += 96;
        if (v6 - *v5 == 4032)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
        }
      }

      while (v6 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }

    a1[5] = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v12 = a1[2];
        v2 = (a1[1] + 8);
        a1[1] = v2;
        v11 = (v12 - v2) >> 3;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v13 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      return;
    }

    v13 = 42;
  }

  a1[4] = v13;
}

void *sub_271382BE0(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_2711270EC();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_271382FA0(a1, &v11);
}

void sub_271382F48(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_271382FA0(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **sub_27138312C(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

const void **sub_2713832C4(uint64_t a1)
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

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_2711270EC();
  }

  *(a1 + 32) = v5 + 42;
  v11 = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_27138312C(a1, &v11);
}

void sub_271383680(_Unwind_Exception *a1)
{
  operator delete(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void **sub_2713836BC(void **a1)
{
  sub_271382A80(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_BYTE *sub_271383734(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v4 = a2;
  v6 = *(a1 + 16);
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
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

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_27137CD78();
  }

  v12 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v4 != a3)
    {
      *result = *v4;
      result[16] = *(v4 + 16);
      v4 = (v4 + 24);
      result += 24;
    }

    *(a1 + 8) = result;
  }

  else
  {
    if (v12 != result)
    {
      v13 = (a2 + v12 - result);
      do
      {
        *result = *v4;
        result[16] = *(v4 + 16);
        v4 = (v4 + 24);
        result += 24;
      }

      while (v4 != v13);
      v4 = v13;
    }

    if (v4 == a3)
    {
      *(a1 + 8) = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v4;
        *(v12 + 16) = *(v4 + 2);
        *v12 = v15;
        v12 += 24;
        v4 = (v4 + 24);
        v14 += 24;
      }

      while (v4 != a3);
      *(a1 + 8) = v14;
    }
  }

  return result;
}

_OWORD *sub_27138394C(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2;
  v6 = *(a1 + 16);
  result = *a1;
  if (a4 > (v6 - result) >> 4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v30 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v10 = 0xFFFFFFFFFFFFFFFLL;
      if (!v30)
      {
        v10 = v9;
      }

      if (!(v10 >> 60))
      {
        operator new();
      }
    }

    sub_27137CD78();
  }

  v11 = *(a1 + 8);
  if (a4 > (v11 - result) >> 4)
  {
    if (v11 == result)
    {
      goto LABEL_17;
    }

    v12 = v11 - result - 16;
    if (v12 < 0xF0 || ((v26 = v12 & 0xFFFFFFFFFFFFFFF0 | 8, v27 = result + v26, v28 = a2 + v26, v29 = (v12 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < a2 + v29) ? (v30 = a2 + 8 >= result + v29) : (v30 = 1), v30 ? (v31 = 0) : (v31 = 1), v27 > a2 ? (v32 = result >= v28) : (v32 = 1), !v32 || (v31 & 1) != 0))
    {
      v13 = result;
      v14 = a2;
    }

    else
    {
      v33 = (v12 >> 4) + 1;
      v34 = v33 & 0x1FFFFFFFFFFFFFFCLL;
      v13 = &result[v34];
      v14 = (a2 + v34 * 16);
      v35 = (a2 + 32);
      v36 = result + 2;
      v37 = v33 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v39 = *(v35 - 2);
        v38 = *(v35 - 1);
        v41 = *v35;
        v40 = v35[1];
        v35 += 4;
        *(v36 - 2) = v39;
        *(v36 - 1) = v38;
        *v36 = v41;
        v36[1] = v40;
        v36 += 4;
        v37 -= 4;
      }

      while (v37);
      if (v33 == (v33 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_16;
      }
    }

    do
    {
      v15 = *v14;
      v16 = v14[1];
      v14 += 2;
      *v13 = v15;
      v13[1] = v16;
      v13 += 2;
    }

    while (v14 != (a2 + v11 - result));
LABEL_16:
    v4 = a2 + v11 - result;
LABEL_17:
    if (v4 != a3)
    {
      v17 = a3 - v4 - 16;
      if (v17 < 0xF0 || ((v42 = v17 & 0xFFFFFFFFFFFFFFF0 | 8, v43 = v11 + v42, v44 = v4 + v42, v45 = (v17 & 0xFFFFFFFFFFFFFFF0) + 16, (v11 + 1) < v4 + v45) ? (v46 = v4 + 8 >= v11 + v45) : (v46 = 1), v46 ? (v47 = 0) : (v47 = 1), v4 < v43 ? (v48 = v11 >= v44) : (v48 = 1), !v48 || (v47 & 1) != 0))
      {
        v18 = v4;
        v19 = v11;
      }

      else
      {
        v49 = (v17 >> 4) + 1;
        v50 = 2 * (v49 & 0x1FFFFFFFFFFFFFFCLL);
        v18 = (v4 + v50 * 8);
        v19 = &v11[v50];
        v51 = v11 + 4;
        v52 = (v4 + 32);
        v53 = v49 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v55 = *(v52 - 2);
          v54 = *(v52 - 1);
          v57 = *v52;
          v56 = v52[1];
          v52 += 4;
          *(v51 - 2) = v55;
          *(v51 - 1) = v54;
          *v51 = v57;
          v51[1] = v56;
          v51 += 4;
          v53 -= 4;
        }

        while (v53);
        if (v49 == (v49 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_21;
        }
      }

      do
      {
        v20 = *v18;
        v21 = v18[1];
        v18 += 2;
        *v19 = v20;
        v19[1] = v21;
        v19 += 2;
      }

      while (v18 != a3);
LABEL_21:
      *(a1 + 8) = v19;
      return result;
    }

    goto LABEL_28;
  }

  if (a2 == a3)
  {
    *(a1 + 8) = result;
    return result;
  }

  v22 = a3 - a2 - 16;
  if (v22 < 0xF0 || ((v58 = v22 & 0xFFFFFFFFFFFFFFF0 | 8, v59 = result + v58, v60 = a2 + v58, v61 = (v22 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < a2 + v61) ? (v62 = a2 + 8 >= result + v61) : (v62 = 1), v62 ? (v63 = 0) : (v63 = 1), v59 > a2 ? (v64 = result >= v60) : (v64 = 1), !v64 || (v63 & 1) != 0))
  {
    v11 = result;
    v23 = a2;
  }

  else
  {
    v65 = (v22 >> 4) + 1;
    v66 = v65 & 0x1FFFFFFFFFFFFFFCLL;
    v11 = &result[v66];
    v23 = (a2 + v66 * 16);
    v67 = (a2 + 32);
    v68 = result + 2;
    v69 = v65 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      v71 = *(v67 - 2);
      v70 = *(v67 - 1);
      v73 = *v67;
      v72 = v67[1];
      v67 += 4;
      *(v68 - 2) = v71;
      *(v68 - 1) = v70;
      *v68 = v73;
      v68[1] = v72;
      v68 += 4;
      v69 -= 4;
    }

    while (v69);
    if (v65 == (v65 & 0x1FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_28;
    }
  }

  do
  {
    v24 = *v23;
    v25 = v23[1];
    v23 += 2;
    *v11 = v24;
    v11[1] = v25;
    v11 += 2;
  }

  while (v23 != a3);
LABEL_28:
  *(a1 + 8) = v11;
  return result;
}

void sub_271383CEC(uint64_t *a1)
{
  std::mutex::lock((a1 + 3));
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v4 = *(*(*v2 + 8) + 8);
      (*(*v4 + 24))(v4);
      v2 += 8;
    }

    while (v2 != v3);
  }

  std::mutex::unlock((a1 + 3));
}

void *sub_271383D8C(void *a1, int a2)
{
  v4 = sub_271121384(a1, 0) + 16;
  if (a2)
  {
    operator new();
  }

  *a1 = &unk_288116B40;
  a1[2] = &unk_288116B70;
  a1[3] = 0;
  a1[4] = 0;
  v5 = a1 + 4;
  a1[5] = 0;
  if (a2)
  {
    std::mutex::lock(&stru_2808786F8);
    if (!qword_28087B7C8 || (v6 = std::__shared_weak_count::lock(qword_28087B7C8)) == 0 || (v7 = qword_28087B7C0, v8 = v6, !qword_28087B7C0))
    {
      operator new();
    }

    std::mutex::unlock(&stru_2808786F8);
    v9 = a1[5];
    a1[4] = v7;
    a1[5] = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *v5;
    v11 = (*v5 + 24);
    std::mutex::lock(v11);
    v13 = *(v10 + 8);
    v12 = *(v10 + 16);
    if (v13 >= v12)
    {
      v15 = *v10;
      v16 = v13 - *v10;
      v17 = (v16 >> 3) + 1;
      if (v17 >> 61)
      {
        sub_271135560();
      }

      v18 = v12 - v15;
      if (v18 >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (!(v19 >> 61))
        {
          operator new();
        }

        sub_2711270EC();
      }

      v20 = (8 * (v16 >> 3));
      *v20 = v4;
      v14 = v20 + 1;
      memcpy(0, v15, v16);
      *v10 = 0;
      *(v10 + 8) = v14;
      *(v10 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v13 = v4;
      v14 = v13 + 1;
    }

    *(v10 + 8) = v14;
    std::mutex::unlock(v11);
  }

  return a1;
}

void sub_27138434C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::mutex::unlock(&stru_2808797F8);
  std::mutex::~mutex(v7);
  v10 = *v4;
  if (*v4)
  {
    v6[1].__shared_owners_ = v10;
    operator delete(v10);
  }

  std::__shared_weak_count::~__shared_weak_count(v6);
  operator delete(v11);
  sub_27112F828(va);
  std::mutex::unlock(&stru_2808786F8);
  sub_27112F828(v5);
  sub_27137B3EC(v8);
  nullsub_1(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_2713844E8(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::mutex::lock((v2 + 24));
    v4 = *v2;
    v3 = *(v2 + 8);
    if (*v2 != v3)
    {
      v5 = a1 + 2;
      while (*v4 != v5)
      {
        if (++v4 == v3)
        {
          goto LABEL_15;
        }
      }

      if (v4 != v3)
      {
        for (i = v4 + 1; i != v3; ++i)
        {
          if (*i != v5)
          {
            *v4++ = *i;
          }
        }
      }
    }

    if (v4 != v3)
    {
      *(v2 + 8) = v4;
    }

LABEL_15:
    std::mutex::unlock((v2 + 24));
  }

  v7 = a1[5];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[3];
  a1[2] = &unk_288116B20;
  a1[3] = 0;
  if (v8)
  {
    *v8 = &unk_2881166A0;
    v9 = v8[1];
    if (v9)
    {
      v8[1] = 0;
      (*(*v9 + 8))(v9);
      v10 = v8[1];
      v8[1] = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    MEMORY[0x2743BF050](v8, 0xA1C40BD48D6D6);
  }

  return nullsub_1(a1);
}

void sub_2713846D8(void *a1)
{
  sub_2713844E8(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271384710(uint64_t a1)
{
  sub_2713844E8((a1 - 16));

  JUMPOUT(0x2743BF050);
}

void *sub_27138475C(void *a1)
{
  *a1 = &unk_2881166A0;
  v2 = a1[1];
  if (v2)
  {
    a1[1] = 0;
    (*(*v2 + 8))(v2);
    v3 = a1[1];
    a1[1] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return a1;
}

void sub_2713847FC(void *a1)
{
  *a1 = &unk_2881166A0;
  v2 = a1[1];
  if (v2)
  {
    a1[1] = 0;
    (*(*v2 + 8))(v2);
    v3 = a1[1];
    a1[1] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  JUMPOUT(0x2743BF050);
}

void **sub_2713848BC(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_271385B10(v3 - 4);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_271384918(uint64_t a1)
{
  __lk.__m_ = (a1 + 40);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 40));
  if (*(a1 + 39) < 0)
  {
    sub_271127178(__p, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *__p = *(a1 + 16);
    v30 = *(a1 + 32);
  }

  sub_2718088F0(__p, 0);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  while (1)
  {
    v2 = atomic_load((a1 + 156));
    v3 = *(a1 + 144);
    if (v2)
    {
      if (!v3)
      {
        if (__lk.__owns_)
        {
          std::mutex::unlock(__lk.__m_);
        }

        return;
      }

LABEL_14:
      *(a1 + 157) = 1;
      goto LABEL_19;
    }

    if (v3)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v4 = atomic_load((a1 + 156));
      if (v4)
      {
        break;
      }

      std::condition_variable::wait((a1 + 160), &__lk);
      if (*(a1 + 144))
      {
        goto LABEL_14;
      }
    }

    v5 = *(a1 + 144);
    *(a1 + 157) = 1;
    if (v5)
    {
      break;
    }

LABEL_7:
    *(a1 + 157) = 0;
    std::condition_variable::notify_all((a1 + 256));
  }

  while (1)
  {
LABEL_19:
    v6 = *(a1 + 104) + 32 * *(a1 + 128);
    LOBYTE(v25) = 0;
    v26 = 0;
    if (*(v6 + 8) == 1)
    {
      v7 = *v6;
      *v6 = 0;
      v25 = v7;
      v26 = 1;
    }

    LOBYTE(v27.__state_) = 0;
    v28 = 0;
    if (*(v6 + 24) == 1)
    {
      v27.__state_ = *(v6 + 16);
      *(v6 + 16) = 0;
      v28 = 1;
    }

    v32 = 0u;
    v33 = 0u;
    sub_271385C10(v6, &v32);
    if (BYTE8(v33) == 1)
    {
      MEMORY[0x2743BEE30](&v33);
    }

    if (BYTE8(v32) == 1)
    {
      v8 = v32;
      *&v32 = 0;
      if (v8)
      {
        v9 = *(v8 + 32);
        if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
          v10 = *(v8 + 16);
          if (v10)
          {
LABEL_30:
            if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v10->__on_zero_shared)(v10);
              std::__shared_weak_count::__release_weak(v10);
            }
          }
        }

        else
        {
          v10 = *(v8 + 16);
          if (v10)
          {
            goto LABEL_30;
          }
        }

        MEMORY[0x2743BF050](v8, 0x10F0C40B62ED6C6);
      }
    }

    v11 = (*(a1 + 112) - *(a1 + 104)) >> 5;
    v12 = *(a1 + 128) + 1;
    if (v12 < v11)
    {
      v11 = 0;
    }

    *(a1 + 128) = v12 - v11;
    --*(a1 + 144);
    std::condition_variable::notify_all((a1 + 208));
    if (!__lk.__owns_)
    {
      break;
    }

    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v26 != 1)
    {
      goto LABEL_64;
    }

    if (v25)
    {
      if ((atomic_load_explicit(&qword_2808777D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808777D0))
      {
        sub_27112FBC0(&qword_2808777B0);
        __cxa_guard_release(&qword_2808777D0);
      }

      if (byte_2808777C7 >= 0)
      {
        v13 = &qword_2808777B0;
      }

      else
      {
        v13 = qword_2808777B0;
      }

      if (byte_2808777C7 >= 0)
      {
        v14 = byte_2808777C7;
      }

      else
      {
        v14 = unk_2808777B8;
      }

      object = os_log_create(v13, *(v25 + 40));
      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      v36 = v14;
      if (v14)
      {
        memmove(&v35, v13, v14);
      }

      *(&v35 + v14) = 0;
      v37 = 1;
      v15 = *(v25 + 48);
      if (v15 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

      v16 = *(v25 + 40);
      if (v15 >= 0x17)
      {
        operator new();
      }

      v39 = *(v25 + 48);
      if (v15)
      {
        memmove(&v38, v16, v15);
        *(&v38 + v15) = 0;
        v40 = 1;
        v17 = object;
        if (v39 < 0)
        {
          goto LABEL_77;
        }
      }

      else
      {
        LOBYTE(v38) = 0;
        v40 = 1;
        v17 = object;
        if ((v39 & 0x80000000) == 0)
        {
          goto LABEL_56;
        }

LABEL_77:
        operator delete(v38);
      }

LABEL_56:
      if (v37 == 1 && v36 < 0)
      {
        operator delete(v35);
      }

      if (v17)
      {
        os_release(v17);
      }

      v18 = *v25;
      v19 = *(v25 + 56);
      os_log_pack_send();
    }

    if (v28 == 1)
    {
      std::promise<void>::set_value(&v27);
    }

LABEL_64:
    if (!__lk.__m_)
    {
      v23 = 1;
      v24 = "unique_lock::lock: references null mutex";
      goto LABEL_90;
    }

    if (__lk.__owns_)
    {
      v23 = 11;
      v24 = "unique_lock::lock: already locked";
      goto LABEL_90;
    }

    std::mutex::lock(__lk.__m_);
    __lk.__owns_ = 1;
    if (v28 == 1)
    {
      MEMORY[0x2743BEE30](&v27);
    }

    if (v26 == 1)
    {
      v20 = v25;
      v25 = 0;
      if (v20)
      {
        v21 = *(v20 + 32);
        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
          v22 = *(v20 + 16);
          if (v22)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v22 = *(v20 + 16);
          if (v22)
          {
LABEL_73:
            if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v22->__on_zero_shared)(v22);
              std::__shared_weak_count::__release_weak(v22);
            }
          }
        }

        MEMORY[0x2743BF050](v20, 0x10F0C40B62ED6C6);
      }
    }

    if (!*(a1 + 144))
    {
      goto LABEL_7;
    }
  }

  v23 = 1;
  v24 = "unique_lock::unlock: not locked";
LABEL_90:
  std::__throw_system_error(v23, v24);
  __break(1u);
}

void sub_271384FC0(uint64_t a1)
{
  sub_271385E90(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271384FF8(uint64_t a1)
{
  result = a1 + 16;
  if (*(a1 + 39) < 0)
  {
    return *result;
  }

  return result;
}

void sub_271385014(uint64_t a1)
{
  v2.__m_ = (a1 + 40);
  v2.__owns_ = 1;
  std::mutex::lock((a1 + 40));
  while ((*(a1 + 157) & 1) != 0 || *(a1 + 144))
  {
    std::condition_variable::wait((a1 + 256), &v2);
  }

  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

void sub_271385084(uint64_t a1, uint64_t *a2)
{
  __lk.__m_ = (a1 + 40);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 40));
  if (*(a1 + 144) == (*(a1 + 112) - *(a1 + 104)) >> 5)
  {
    sub_27138600C(a1, &__lk);
  }

  std::promise<void>::promise(&v13);
  std::promise<void>::get_future(&v13);
  v4 = (*(a1 + 104) + 32 * *(a1 + 136));
  state = v13.__state_;
  v13.__state_ = 0;
  v16 = 1;
  v6 = *a2;
  *a2 = 0;
  v17 = v6;
  v18 = 1;
  v19 = state;
  v15 = 0;
  v20 = 1;
  sub_271385C10(v4, &v17);
  sub_271385B10(&v17);
  MEMORY[0x2743BEE30](&v15);
  v7 = (*(a1 + 112) - *(a1 + 104)) >> 5;
  v8 = *(a1 + 144);
  v9 = *(a1 + 136) + 1;
  if (v9 >= v7)
  {
    v10 = (*(a1 + 112) - *(a1 + 104)) >> 5;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 136) = v9 - v10;
  if (v8 == v7)
  {
    v11 = *(a1 + 128) + 1;
    if (v11 < v7)
    {
      v7 = 0;
    }

    *(a1 + 128) = v11 - v7;
  }

  else
  {
    *(a1 + 144) = v8 + 1;
  }

  std::condition_variable::notify_all((a1 + 160));
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    std::__assoc_sub_state::wait(v12);
    std::future<void>::~future(&v12);
    MEMORY[0x2743BEE30](&v13);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    __break(1u);
  }
}

void sub_2713851F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::mutex *a11, char a12)
{
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_27138523C(uint64_t a1, uint64_t *a2)
{
  v13.__m_ = (a1 + 40);
  v13.__owns_ = 1;
  std::mutex::lock((a1 + 40));
  v4 = *(a1 + 104);
  if (*(a1 + 144) == (*(a1 + 112) - v4) >> 5)
  {
    sub_27138600C(a1, &v13);
    v4 = *(a1 + 104);
  }

  v5 = *a2;
  v6 = (v4 + 32 * *(a1 + 136));
  *a2 = 0;
  v14 = v5;
  v15 = 1;
  v16 = 0;
  v17 = 0;
  sub_271385C10(v6, &v14);
  sub_271385B10(&v14);
  v7 = *(a1 + 144);
  v8 = *(a1 + 112);
  v9 = (v8 - *(a1 + 104)) >> 5;
  v10 = *(a1 + 136) + 1;
  if (v10 >= v9)
  {
    v11 = (v8 - *(a1 + 104)) >> 5;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 136) = v10 - v11;
  if (v7 != v9)
  {
    *(a1 + 144) = v7 + 1;
    std::condition_variable::notify_all((a1 + 160));
    if (!v13.__owns_)
    {
      return;
    }

    goto LABEL_12;
  }

  v12 = *(a1 + 128) + 1;
  if (v12 < v7)
  {
    v7 = 0;
  }

  *(a1 + 128) = v12 - v7;
  std::condition_variable::notify_all((a1 + 160));
  if (v13.__owns_)
  {
LABEL_12:
    std::mutex::unlock(v13.__m_);
  }
}

void sub_271385358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_271385378(uint64_t a1, uint64_t *a2)
{
  v12.__m_ = (a1 + 40);
  v12.__owns_ = 1;
  std::mutex::lock((a1 + 40));
  v4 = *(a1 + 104);
  if (*(a1 + 144) == (*(a1 + 112) - v4) >> 5)
  {
    sub_27138600C(a1, &v12);
    v4 = *(a1 + 104);
  }

  v5 = (v4 + 32 * *(a1 + 136));
  v6 = *a2;
  v13 = a2[1];
  v14 = 1;
  v15 = v6;
  *a2 = 0;
  a2[1] = 0;
  v16 = 1;
  sub_271385C10(v5, &v13);
  sub_271385B10(&v13);
  v7 = (*(a1 + 112) - *(a1 + 104)) >> 5;
  v8 = *(a1 + 144);
  v9 = *(a1 + 136) + 1;
  if (v9 >= v7)
  {
    v10 = (*(a1 + 112) - *(a1 + 104)) >> 5;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 136) = v9 - v10;
  if (v8 != v7)
  {
    *(a1 + 144) = v8 + 1;
    std::condition_variable::notify_all((a1 + 160));
    if (!v12.__owns_)
    {
      return;
    }

    goto LABEL_12;
  }

  v11 = *(a1 + 128) + 1;
  if (v11 < v7)
  {
    v7 = 0;
  }

  *(a1 + 128) = v11 - v7;
  std::condition_variable::notify_all((a1 + 160));
  if (v12.__owns_)
  {
LABEL_12:
    std::mutex::unlock(v12.__m_);
  }
}

void sub_271385494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713854BC(uint64_t a1)
{
  sub_271385E90(a1 - 8);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713854F8(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sub_271385514(uint64_t a1)
{
  v2.__m_ = (a1 + 32);
  v2.__owns_ = 1;
  std::mutex::lock((a1 + 32));
  while ((*(a1 + 149) & 1) != 0 || *(a1 + 136))
  {
    std::condition_variable::wait((a1 + 248), &v2);
  }

  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

void sub_271385584(uint64_t a1, uint64_t *a2)
{
  __lk.__m_ = (a1 + 32);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 32));
  if (*(a1 + 136) == (*(a1 + 104) - *(a1 + 96)) >> 5)
  {
    sub_27138600C(a1 - 8, &__lk);
  }

  std::promise<void>::promise(&v13);
  std::promise<void>::get_future(&v13);
  v4 = (*(a1 + 96) + 32 * *(a1 + 128));
  state = v13.__state_;
  v13.__state_ = 0;
  v16 = 1;
  v6 = *a2;
  *a2 = 0;
  v17 = v6;
  v18 = 1;
  v19 = state;
  v15 = 0;
  v20 = 1;
  sub_271385C10(v4, &v17);
  sub_271385B10(&v17);
  MEMORY[0x2743BEE30](&v15);
  v7 = (*(a1 + 104) - *(a1 + 96)) >> 5;
  v8 = *(a1 + 136);
  v9 = *(a1 + 128) + 1;
  if (v9 >= v7)
  {
    v10 = (*(a1 + 104) - *(a1 + 96)) >> 5;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 128) = v9 - v10;
  if (v8 == v7)
  {
    v11 = *(a1 + 120) + 1;
    if (v11 < v7)
    {
      v7 = 0;
    }

    *(a1 + 120) = v11 - v7;
  }

  else
  {
    *(a1 + 136) = v8 + 1;
  }

  std::condition_variable::notify_all((a1 + 152));
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    std::__assoc_sub_state::wait(v12);
    std::future<void>::~future(&v12);
    MEMORY[0x2743BEE30](&v13);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    __break(1u);
  }
}

void sub_2713856F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::mutex *a11, char a12)
{
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_27138573C(uint64_t a1, uint64_t *a2)
{
  v13.__m_ = (a1 + 32);
  v13.__owns_ = 1;
  std::mutex::lock((a1 + 32));
  v4 = *(a1 + 96);
  if (*(a1 + 136) == (*(a1 + 104) - v4) >> 5)
  {
    sub_27138600C(a1 - 8, &v13);
    v4 = *(a1 + 96);
  }

  v5 = *a2;
  v6 = (v4 + 32 * *(a1 + 128));
  *a2 = 0;
  v14 = v5;
  v15 = 1;
  v16 = 0;
  v17 = 0;
  sub_271385C10(v6, &v14);
  sub_271385B10(&v14);
  v7 = *(a1 + 136);
  v8 = *(a1 + 104);
  v9 = (v8 - *(a1 + 96)) >> 5;
  v10 = *(a1 + 128) + 1;
  if (v10 >= v9)
  {
    v11 = (v8 - *(a1 + 96)) >> 5;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 128) = v10 - v11;
  if (v7 != v9)
  {
    *(a1 + 136) = v7 + 1;
    std::condition_variable::notify_all((a1 + 152));
    if (!v13.__owns_)
    {
      return;
    }

    goto LABEL_12;
  }

  v12 = *(a1 + 120) + 1;
  if (v12 < v7)
  {
    v7 = 0;
  }

  *(a1 + 120) = v12 - v7;
  std::condition_variable::notify_all((a1 + 152));
  if (v13.__owns_)
  {
LABEL_12:
    std::mutex::unlock(v13.__m_);
  }
}

void sub_271385858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_271385878(uint64_t a1, uint64_t *a2)
{
  v12.__m_ = (a1 + 32);
  v12.__owns_ = 1;
  std::mutex::lock((a1 + 32));
  v4 = *(a1 + 96);
  if (*(a1 + 136) == (*(a1 + 104) - v4) >> 5)
  {
    sub_27138600C(a1 - 8, &v12);
    v4 = *(a1 + 96);
  }

  v5 = (v4 + 32 * *(a1 + 128));
  v6 = *a2;
  v13 = a2[1];
  v14 = 1;
  v15 = v6;
  *a2 = 0;
  a2[1] = 0;
  v16 = 1;
  sub_271385C10(v5, &v13);
  sub_271385B10(&v13);
  v7 = (*(a1 + 104) - *(a1 + 96)) >> 5;
  v8 = *(a1 + 136);
  v9 = *(a1 + 128) + 1;
  if (v9 >= v7)
  {
    v10 = (*(a1 + 104) - *(a1 + 96)) >> 5;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 128) = v9 - v10;
  if (v8 != v7)
  {
    *(a1 + 136) = v8 + 1;
    std::condition_variable::notify_all((a1 + 152));
    if (!v12.__owns_)
    {
      return;
    }

    goto LABEL_12;
  }

  v11 = *(a1 + 120) + 1;
  if (v11 < v7)
  {
    v7 = 0;
  }

  *(a1 + 120) = v11 - v7;
  std::condition_variable::notify_all((a1 + 152));
  if (v12.__owns_)
  {
LABEL_12:
    std::mutex::unlock(v12.__m_);
  }
}

void sub_271385994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2713859B4(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  (*(a1 + 8))(*(a1 + 16));
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    v5 = MEMORY[0x2743BE900]();
    MEMORY[0x2743BF050](v5, 0x20C4093837F09);
  }

  MEMORY[0x2743BF050](a1, 0xA0C40A8488062);
  return 0;
}

void sub_271385A3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271385A50(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_271385A50(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      v4 = MEMORY[0x2743BE900]();
      MEMORY[0x2743BF050](v4, 0x20C4093837F09);
    }

    MEMORY[0x2743BF050](v1, 0xA0C40A8488062);
    return v2;
  }

  return result;
}

void *sub_271385ABC(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x2743BE900]();
    MEMORY[0x2743BF050](v4, 0x20C4093837F09);
    return v3;
  }

  return v1;
}

uint64_t *sub_271385B10(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    MEMORY[0x2743BEE30](a1 + 2);
  }

  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      v3 = *(v2 + 32);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }

      v4 = *(v2 + 16);
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }

      MEMORY[0x2743BF050](v2, 0x10F0C40B62ED6C6);
    }
  }

  return a1;
}

uint64_t *sub_271385C10(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    if (!*(a1 + 8))
    {
      v14 = *a2;
      *a2 = 0;
      *a1 = v14;
      *(a1 + 8) = 1;
      v8 = *(a1 + 24);
      if (v8 == *(a2 + 24))
      {
        goto LABEL_23;
      }

      goto LABEL_27;
    }

    v9 = *a1;
    *a1 = 0;
    if (v9)
    {
      v10 = *(v9 + 32);
      if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }

      v11 = *(v9 + 16);
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      MEMORY[0x2743BF050](v9, 0x10F0C40B62ED6C6);
    }

    *(a1 + 8) = 0;
LABEL_22:
    v8 = *(a1 + 24);
    if (v8 == *(a2 + 24))
    {
      goto LABEL_23;
    }

LABEL_27:
    if (v8)
    {
      MEMORY[0x2743BEE30](a1 + 2);
      *(a1 + 24) = 0;
    }

    else
    {
      a1[2] = a2[2];
      a2[2] = 0;
      *(a1 + 24) = 1;
    }

    return a1;
  }

  if (!*(a1 + 8))
  {
    goto LABEL_22;
  }

  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = *(v5 + 32);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(v5 + 16);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  MEMORY[0x2743BF050](v5, 0x10F0C40B62ED6C6);
  v8 = *(a1 + 24);
  if (v8 != *(a2 + 24))
  {
    goto LABEL_27;
  }

LABEL_23:
  if (v8)
  {
    v12 = a2[2];
    a2[2] = 0;
    v15 = a1[2];
    a1[2] = v12;
    MEMORY[0x2743BEE30](&v15);
  }

  return a1;
}

uint64_t sub_271385E90(uint64_t a1)
{
  *a1 = &unk_288116580;
  *(a1 + 8) = &unk_2881165C8;
  v2 = (a1 + 40);
  std::mutex::lock((a1 + 40));
  atomic_store(1u, (a1 + 156));
  std::condition_variable::notify_all((a1 + 160));
  std::mutex::unlock(v2);
  v7.__m_ = v2;
  v7.__owns_ = 1;
  std::mutex::lock(v2);
  while ((*(a1 + 157) & 1) != 0 || *(a1 + 144))
  {
    std::condition_variable::wait((a1 + 256), &v7);
  }

  if (v7.__owns_)
  {
    std::mutex::unlock(v7.__m_);
  }

  std::thread::join((a1 + 304));
  if (*(a1 + 312) == 1)
  {
    std::thread::~thread((a1 + 304));
  }

  std::condition_variable::~condition_variable((a1 + 256));
  std::condition_variable::~condition_variable((a1 + 208));
  std::condition_variable::~condition_variable((a1 + 160));
  v3 = *(a1 + 104);
  if (v3)
  {
    v4 = *(a1 + 112);
    v5 = *(a1 + 104);
    if (v4 != v3)
    {
      do
      {
        v4 = sub_271385B10(v4 - 4);
      }

      while (v4 != v3);
      v5 = *(a1 + 104);
    }

    *(a1 + 112) = v3;
    operator delete(v5);
  }

  std::mutex::~mutex(v2);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_27138600C(uint64_t a1, std::unique_lock<std::mutex> *__lk)
{
  v3 = *(a1 + 152);
  switch(v3)
  {
    case 2:
      v18 = 0u;
      v19 = 0u;
      sub_271385C10((*(a1 + 104) + 32 * *(a1 + 128)), &v18);
      sub_271385B10(&v18);
      v9 = (*(a1 + 112) - *(a1 + 104)) >> 5;
      v10 = *(a1 + 128) + 1;
      if (v10 < v9)
      {
        v9 = 0;
      }

      *(a1 + 128) = v10 - v9;
      --*(a1 + 144);
      break;
    case 1:
      while (*(a1 + 144) == (*(a1 + 112) - *(a1 + 104)) >> 5)
      {
        std::condition_variable::wait((a1 + 208), __lk);
      }

      break;
    case 0:
      v5 = *(a1 + 104);
      v4 = *(a1 + 112);
      v6 = *(a1 + 144);
      *&v19 = 0;
      v18 = 0uLL;
      v22 = &v18;
      v23 = 0;
      v7 = v4 - v5;
      if (v7)
      {
        if (!((v7 >> 4) >> 59))
        {
          operator new();
        }

        sub_271135560();
      }

      v11 = 0;
      v12 = 0;
      v13 = 0;
      v20 = 0;
      v21 = 0;
      *(&v19 + 1) = 0;
      v14 = *(a1 + 104);
      if (v14)
      {
        v15 = *(a1 + 112);
        v16 = v14;
        if (v15 != v14)
        {
          do
          {
            v15 = sub_271385B10(v15 - 4);
          }

          while (v15 != v14);
          v16 = *(a1 + 104);
        }

        *(a1 + 112) = v14;
        operator delete(v16);
        v12 = *(&v18 + 1);
        v13 = v18;
        v7 = v20;
        v11 = v21;
      }

      *(a1 + 104) = v13;
      *(a1 + 112) = v12;
      v17 = *(&v19 + 1);
      *(a1 + 120) = v19;
      *(a1 + 128) = v17;
      *(a1 + 136) = v7;
      *(a1 + 144) = v11;
      break;
  }
}

void sub_27138630C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271386320(va);
  _Unwind_Resume(a1);
}

void ***sub_271386320(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_271385B10(v4 - 4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_2713863B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106E38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27138640C(uint64_t a1)
{
  std::mutex::lock(&stru_2808797F8);
  v3 = qword_28087C408;
  v2 = qword_28087C410;
  if (qword_28087C408 != qword_28087C410)
  {
    while (*v3 != sub_271383CEC)
    {
      v3 += 2;
      if (v3 == qword_28087C410)
      {
        goto LABEL_14;
      }
    }

    if (v3 != qword_28087C410)
    {
      v4 = v3 + 2;
      if (v3 + 2 != qword_28087C410)
      {
        do
        {
          if (*v4 != sub_271383CEC)
          {
            *v3 = *v4;
            v3 += 2;
          }

          ++v4;
        }

        while (v4 != v2);
        v2 = qword_28087C410;
      }
    }
  }

  if (v3 != v2)
  {
    qword_28087C410 = v3;
  }

LABEL_14:
  std::mutex::unlock(&stru_2808797F8);
  std::mutex::~mutex((a1 + 48));
  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;

    operator delete(v5);
  }
}

void sub_2713865E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *a17, uint64_t a18)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  MEMORY[0x2743BF050](v19, v18);
  _Unwind_Resume(a1);
}

uint64_t sub_271386624(uint64_t a1, uint64_t a2)
{
  v17[0] = a1;
  v17[1] = a2;
  v16[0] = &unk_288131218;
  v16[1] = v17;
  sub_27184A384(v16, v5);
  if ((v15 & 1) == 0)
  {
    if (*(a1 + 88) != 1)
    {
      goto LABEL_5;
    }

    v3 = *(a1 + 80);
    if (!v3)
    {
      sub_27112AFFC();
    }

    (*(*v3 + 48))(v3, v5);
    if ((v15 & 1) == 0)
    {
LABEL_5:
      if (v14 == 1)
      {
        if (v13 == 1)
        {
          if (v12 < 0)
          {
            operator delete(__p);
          }

          if (v10 < 0)
          {
            operator delete(v9);
          }
        }

        if (v8 == 1 && v7 < 0)
        {
          operator delete(v6);
        }
      }
    }
  }

  return a1;
}

void sub_271386740(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810AC10;
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v10 = v9;
      v4 = a3;
      (*(*v3 + 24))(v3, v9);
      a3 = v4;
    }

    else
    {
      v10 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v6[0] = 0;
  v8 = 0;
  if (*(a3 + 32) == 1)
  {
    v5 = *(a3 + 24);
    if (v5)
    {
      if (v5 == a3)
      {
        v7 = v6;
        (*(*v5 + 24))(v5, v6);
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
  }

  operator new();
}

void sub_271386D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271386DB4(void *result)
{
  *result = &unk_28810AC10;
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

void sub_271386E48(void *a1)
{
  *a1 = &unk_28810AC10;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271386F1C(uint64_t a1)
{
  *a1 = &unk_28810AC48;
  std::mutex::~mutex((a1 + 104));
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 88) != 1)
  {
LABEL_7:
    v4 = *(a1 + 48);
    if (v4 != a1 + 24)
    {
      goto LABEL_8;
    }

LABEL_14:
    (*(*v4 + 32))(v4);
    v5 = *(a1 + 16);
    if (!v5)
    {
      return a1;
    }

    goto LABEL_11;
  }

  v3 = *(a1 + 80);
  if (v3 != a1 + 56)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    goto LABEL_7;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 48);
  if (v4 == a1 + 24)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
LABEL_11:
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_27138707C(uint64_t a1)
{
  *a1 = &unk_28810AC48;
  std::mutex::~mutex((a1 + 104));
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 88) == 1)
  {
    v3 = *(a1 + 80);
    if (v3 == a1 + 56)
    {
      (*(*v3 + 32))(v3);
      v4 = *(a1 + 48);
      if (v4 != a1 + 24)
      {
LABEL_8:
        if (v4)
        {
          (*(*v4 + 40))(v4);
        }

        v5 = *(a1 + 16);
        if (v5)
        {
          goto LABEL_11;
        }

        goto LABEL_12;
      }

LABEL_16:
      (*(*v4 + 32))(v4);
      v5 = *(a1 + 16);
      if (v5)
      {
LABEL_11:
        std::__shared_weak_count::__release_weak(v5);
      }

LABEL_12:

      JUMPOUT(0x2743BF050);
    }

    if (v3)
    {
      (*(*v3 + 40))(v3);
    }
  }

  v4 = *(a1 + 48);
  if (v4 != a1 + 24)
  {
    goto LABEL_8;
  }

  goto LABEL_16;
}

uint64_t sub_27138721C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(*v2 + 48);
  if (!v3)
  {
    sub_27112AFFC();
  }

  v4 = v2[1];
  v5 = *(*v3 + 48);

  return v5();
}

void sub_271387290(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106310;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271389224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60, char a61)
{
  __cxa_guard_abort(&qword_28087B7E0);
  sub_27112F828(&a51);
  _Unwind_Resume(a1);
}

void sub_2713893AC()
{
  MEMORY[0x28223BE20]();
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(&v1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  for (i = 0; i != 2496; i += 4)
  {
    *&v4[i] = MEMORY[0x2743BE880](&v1);
  }

  memcpy(__dst, v4, sizeof(__dst));
  sub_271393544(__dst);
}

void sub_27138950C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, std::random_device a11, std::random_device a12, int a13, char a14)
{
  sub_271816C9C(&STACK[0x9D8]);
  std::random_device::~random_device(&a11);
  _Unwind_Resume(a1);
}

void sub_271389540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271389570(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v8[0]) = 0;
  v16 = 0;
  if (*(a2 + 96) == 1)
  {
    sub_27112F6CC(v8, a2);
    v16 = 1;
  }

  sub_271390244(&v17, a1, v8);
  *a3 = v17;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v27 == 1)
  {
    *(a3 + 40) = 0;
    v5 = v20;
    if (v20 == 1)
    {
      *(a3 + 16) = __p;
      *(a3 + 32) = v19;
      v19 = 0;
      __p = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
LABEL_6:
        *(a3 + 112) = 1;
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
        goto LABEL_6;
      }
    }

    v7 = v23;
    *(v6 + 16) = v22;
    *v6 = v21;
    v21 = 0uLL;
    *(a3 + 72) = v7;
    *(a3 + 80) = v24;
    *(a3 + 96) = v25;
    v22 = 0;
    v24 = 0uLL;
    v25 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_12:
  if (v16 != 1)
  {
    return;
  }

  if (v15 != 1)
  {
    goto LABEL_16;
  }

  if (v14 < 0)
  {
    operator delete(v13);
    if (v12 < 0)
    {
      goto LABEL_21;
    }

LABEL_16:
    if (v10 != 1)
    {
      return;
    }

    goto LABEL_17;
  }

  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  operator delete(v11);
  if (v10 != 1)
  {
    return;
  }

LABEL_17:
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_27138975C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v18 = 9;
  LOBYTE(v19) = 0;
  v29 = 0;
  LOBYTE(v16) = 0;
  v17[16] = 0;
  *&v17[24] = 0;
  v15 = 1;
  while (1)
  {
    if (*(a2 + 896) == 2)
    {
      sub_2714F8630((a2 + 904), &v34);
      v16 = v34;
      *v17 = v35;
      if (v17[16])
      {
        goto LABEL_9;
      }

LABEL_8:
      v17[16] = 1;
      goto LABEL_9;
    }

    LOBYTE(v16) = 0;
    *(&v16 + 1) = 0;
    *v17 = 0;
    v17[8] = 1;
    if ((v17[16] & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_9:
    if (*(a2 + 440) != 1)
    {
      goto LABEL_19;
    }

    v30 = v16;
    v31 = *v17;
    v32 = 1;
    v33 = 1;
    sub_27152A6FC((a2 + 152), &v30, &v34);
    if (v45)
    {
      goto LABEL_19;
    }

    sub_27138A894(&v18, &v34);
    v15 = 0;
    if ((v45 & 1) != 0 || v44 != 1)
    {
      goto LABEL_19;
    }

    if (v43 != 1)
    {
LABEL_16:
      if (v37 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(v41);
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }
    }

    else if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    operator delete(v38);
    if (v37 != 1)
    {
      goto LABEL_19;
    }

LABEL_17:
    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }

LABEL_19:
    if (*(a2 + 144) != 1)
    {
      goto LABEL_29;
    }

    *&v30 = a2;
    *(&v30 + 1) = &v16;
    *&v31 = &v18;
    *(&v31 + 1) = &v15;
    v46[0] = &unk_288116808;
    v46[1] = &v30;
    sub_27184A384(v46, &v34);
    if (v45)
    {
      goto LABEL_29;
    }

    sub_27138A894(&v18, &v34);
    if ((v45 & 1) != 0 || v44 != 1)
    {
      goto LABEL_29;
    }

    if (v43 == 1)
    {
      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41);
        if (SHIBYTE(v39) < 0)
        {
LABEL_37:
          operator delete(v38);
          if (v37 != 1)
          {
            goto LABEL_29;
          }

          goto LABEL_27;
        }
      }

      else if (SHIBYTE(v39) < 0)
      {
        goto LABEL_37;
      }
    }

    if (v37 != 1)
    {
      goto LABEL_29;
    }

LABEL_27:
    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }

LABEL_29:
    if (v16 != 1)
    {
      break;
    }

    v47[0] = &unk_288107838;
    v47[1] = a2;
    v48 = v47;
    v7 = sub_2714F87F8(a2 + 904, v47, a3, a4);
    if (v48 == v47)
    {
      (*(*v48 + 32))(v48);
    }

    else if (v48)
    {
      (*(*v48 + 40))(v48);
    }

    *&v17[24] = v7 ^ 1;
    v15 = v7;
    if ((v7 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  v15 = 0;
LABEL_40:
  if (v29)
  {
    if (*(a2 + 112) == 1)
    {
      v8 = *(a2 + 104);
      if (!v8)
      {
        sub_27112AFFC();
      }

      (*(*v8 + 48))(v8, &v19);
    }

    v34 = v19;
    LOBYTE(v35) = 0;
    v44 = 0;
    if (v28 == 1)
    {
      sub_27112F6CC(&v35, &v20);
      v44 = 1;
      *a1 = v34;
      *(a1 + 16) = 0;
      *(a1 + 40) = 0;
      v9 = v37;
      if (v37 == 1)
      {
        *(a1 + 16) = v35;
        *(a1 + 32) = v36;
        v36 = 0;
        v35 = 0uLL;
        *(a1 + 40) = 1;
        *(a1 + 48) = 0;
        v10 = a1 + 48;
        *(a1 + 104) = 0;
        if (v43)
        {
          goto LABEL_52;
        }

LABEL_47:
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (v9)
        {
LABEL_53:
          if (SHIBYTE(v36) < 0)
          {
            operator delete(v35);
          }
        }
      }

      else
      {
        *(a1 + 48) = 0;
        v10 = a1 + 48;
        *(a1 + 104) = 0;
        if ((v43 & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_52:
        v12 = v40;
        *(v10 + 16) = v39;
        *v10 = v38;
        v39 = 0;
        v38 = 0uLL;
        *(a1 + 72) = v12;
        *(a1 + 80) = v41;
        *(a1 + 96) = v42;
        v41 = 0uLL;
        v42 = 0;
        *(a1 + 104) = 1;
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (v9)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      *a1 = v19;
      *(a1 + 16) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
    }

    if ((v29 & 1) != 0 && v28 == 1)
    {
      if (v27 == 1)
      {
        if (v26 < 0)
        {
          operator delete(v25);
        }

        if (v24 < 0)
        {
          operator delete(__p);
        }
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20);
      }
    }
  }

  else
  {
    v11 = *v17;
    *a1 = v16;
    *(a1 + 16) = v11;
    *(a1 + 28) = *&v17[12];
    *(a1 + 120) = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_271389C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27112D66C(v10 + 16);
  sub_27138AE34(va);
  _Unwind_Resume(a1);
}

void sub_271389CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27138AE34(va);
  _Unwind_Resume(a1);
}

void sub_271389CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_27112E024(&a43);
  sub_27138AE34(&a18);
  _Unwind_Resume(a1);
}

void sub_271389CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27138AE34(va);
  _Unwind_Resume(a1);
}

void sub_271389CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27139272C(v10 - 136);
  sub_27138AE34(va);
  _Unwind_Resume(a1);
}

void sub_271389D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27138AE34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271389D20(uint64_t result)
{
  if (*(result + 120))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_288108EC0;
    __cxa_throw(exception, &unk_28811C2D8, std::exception::~exception);
  }

  return result;
}

uint64_t sub_271389D78(uint64_t a1)
{
  *a1 = &unk_28810A778;
  *(a1 + 8) = &unk_28810A7E0;
  v2 = a1 + 16;
  *(a1 + 16) = &unk_28810A818;
  v3 = *(a1 + 1176);
  *(a1 + 1168) = 0u;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = *(a1 + 1120);
    v5 = v4[4];
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *(a1 + 1120);
    v5 = v4[4];
    if (v5)
    {
LABEL_4:
      std::mutex::lock(v5);
      v7 = v4[5];
      v6 = v4[6];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::mutex::unlock(v5);
      goto LABEL_10;
    }
  }

  v7 = v4[5];
  v6 = v4[6];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_10:
  sub_271501250(v7, v2);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (*(a1 + 144) != 1)
    {
      goto LABEL_17;
    }
  }

  else if (*(a1 + 144) != 1)
  {
    goto LABEL_17;
  }

  v8 = *(a1 + 136);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  *(a1 + 144) = 0;
LABEL_17:
  if (*(a1 + 440) == 1)
  {
    sub_27152A9FC(a1 + 152, 2, &v21);
    if ((v31 & 1) == 0 && v30 == 1)
    {
      if (v29 == 1)
      {
        if (v28 < 0)
        {
          operator delete(__p);
        }

        if (v26 < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }
    }
  }

  v9 = *(a1 + 1176);
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (*(a1 + 1160) != 1)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (*(a1 + 1160) == 1)
  {
LABEL_31:
    sub_27137803C(a1 + 1144);
  }

LABEL_32:
  v10 = *(a1 + 1120);
  *(a1 + 1120) = 0;
  if (v10)
  {
    sub_27138F798(v10);
  }

  if (*(a1 + 1104) == 1)
  {
    std::condition_variable::~condition_variable((a1 + 1056));
    v11 = *(a1 + 1032);
    if (v11)
    {
      *(a1 + 1040) = v11;
      operator delete(v11);
    }

    std::mutex::~mutex((a1 + 968));
  }

  std::condition_variable::~condition_variable((a1 + 848));
  std::mutex::~mutex((a1 + 784));
  if (*(a1 + 720) != 1)
  {
LABEL_42:
    if (*(a1 + 680) != 1)
    {
      goto LABEL_43;
    }

    goto LABEL_51;
  }

  v12 = *(a1 + 712);
  if (v12 != a1 + 688)
  {
    if (v12)
    {
      (*(*v12 + 40))(v12);
    }

    goto LABEL_42;
  }

  (*(*v12 + 32))(v12);
  if (*(a1 + 680) != 1)
  {
LABEL_43:
    if (*(a1 + 440) != 1)
    {
      goto LABEL_44;
    }

    goto LABEL_52;
  }

LABEL_51:
  sub_2711B039C(a1 + 448);
  if (*(a1 + 440) != 1)
  {
LABEL_44:
    if (*(a1 + 144) != 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

LABEL_52:
  v13 = *(a1 + 432);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(a1 + 416);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *(a1 + 400);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  sub_2711B039C(a1 + 160);
  if (*(a1 + 144) == 1)
  {
LABEL_60:
    v16 = *(a1 + 136);
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }

LABEL_63:
  if (*(a1 + 112) == 1)
  {
    v17 = *(a1 + 104);
    if (v17 == a1 + 80)
    {
      (*(*v17 + 32))(v17);
      if (*(a1 + 72) != 1)
      {
        goto LABEL_74;
      }

      goto LABEL_68;
    }

    if (v17)
    {
      (*(*v17 + 40))(v17);
    }
  }

  if (*(a1 + 72) != 1)
  {
    goto LABEL_74;
  }

LABEL_68:
  v18 = *(a1 + 64);
  if (v18 == a1 + 40)
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))(v18);
  }

LABEL_74:
  v19 = *(a1 + 32);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  return a1;
}

void sub_27138A310(uint64_t a1)
{
  sub_271389D78(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27138A348(uint64_t a1)
{
  sub_271389D78(a1 - 8);

  JUMPOUT(0x2743BF050);
}

void sub_27138A384(uint64_t a1)
{
  sub_271389D78(a1 - 16);

  JUMPOUT(0x2743BF050);
}

void sub_27138A3D0(uint64_t a1@<X0>, const void ****a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 9;
  LOBYTE(v11) = 0;
  v21 = 0;
  if (*(a1 + 440) == 1)
  {
    sub_27152A3FC(a1 + 152, a2, &v25);
    if ((v36 & 1) == 0)
    {
      sub_27138A894(&v10, &v25);
      if ((v36 & 1) == 0 && v35 == 1)
      {
        if (v34 == 1)
        {
          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v30) < 0)
          {
            operator delete(v29[0]);
          }
        }

        if (v28 == 1 && SHIBYTE(v27) < 0)
        {
          operator delete(v26);
        }
      }
    }
  }

  if (*(a1 + 720) == 1)
  {
    v22 = a1;
    v23 = a2;
    v24 = &v10;
    v37 = &unk_288116858;
    v38 = &v22;
    sub_27184A384(&v37, &v25);
    if ((v36 & 1) == 0)
    {
      sub_27138A894(&v10, &v25);
      if ((v36 & 1) == 0 && v35 == 1)
      {
        if (v34 == 1)
        {
          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v30) < 0)
          {
            operator delete(v29[0]);
          }
        }

        if (v28 == 1 && SHIBYTE(v27) < 0)
        {
          operator delete(v26);
        }
      }
    }
  }

  if (*(a1 + 144) == 1)
  {
    v22 = a1;
    v23 = a2;
    v24 = &v10;
    v37 = &unk_288116830;
    v38 = &v22;
    sub_27184A384(&v37, &v25);
    if ((v36 & 1) == 0)
    {
      sub_27138A894(&v10, &v25);
      if ((v36 & 1) == 0 && v35 == 1)
      {
        if (v34 == 1)
        {
          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v30) < 0)
          {
            operator delete(v29[0]);
          }
        }

        if (v28 == 1 && SHIBYTE(v27) < 0)
        {
          operator delete(v26);
        }
      }
    }
  }

  if (v21 != 1)
  {
    *(a3 + 120) = 1;
    return;
  }

  if (*(a1 + 112) == 1)
  {
    v6 = *(a1 + 104);
    if (!v6)
    {
      sub_27112AFFC();
    }

    (*(*v6 + 48))(v6, &v11);
  }

  v25 = v11;
  LOBYTE(v26) = 0;
  v35 = 0;
  if (v20 == 1)
  {
    sub_27112F6CC(&v26, &v12);
    v35 = 1;
    *a3 = v25;
    *(a3 + 16) = 0;
    *(a3 + 40) = 0;
    v7 = v28;
    if (v28 == 1)
    {
      *(a3 + 16) = v26;
      *(a3 + 32) = v27;
      v27 = 0;
      v26 = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v8 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v34 & 1) == 0)
      {
LABEL_44:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v7)
        {
          goto LABEL_53;
        }

LABEL_51:
        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26);
        }

        goto LABEL_53;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v8 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v34 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v9 = v31;
    *(v8 + 16) = v30;
    *v8 = *v29;
    v29[0] = 0;
    v29[1] = 0;
    *(a3 + 72) = v9;
    *(a3 + 80) = *__p;
    *(a3 + 96) = v33;
    v30 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v33 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (v7)
    {
      goto LABEL_51;
    }
  }

  else
  {
    *a3 = v11;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    *(a3 + 120) = 0;
  }

LABEL_53:
  if ((v21 & 1) != 0 && v20 == 1)
  {
    if (v19 == 1)
    {
      if (v18 < 0)
      {
        operator delete(v17);
      }

      if (v16 < 0)
      {
        operator delete(v15);
      }
    }

    if (v14 == 1 && v13 < 0)
    {
      operator delete(v12);
    }
  }
}

void sub_27138A804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112D66C(v9 + 16);
  sub_27138AE34(&a9);
  _Unwind_Resume(a1);
}

void sub_27138A820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_27112E024(&a29);
  sub_27138AE34(&a9);
  _Unwind_Resume(a1);
}

void sub_27138A894(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128))
  {
    goto LABEL_30;
  }

  v4 = *a1;
  LOBYTE(v16) = 0;
  v24 = 0;
  sub_271390244(&v25, v4, &v16);
  if ((*(a1 + 128) & 1) == 0)
  {
    *(a1 + 8) = v25;
    *(a1 + 24) = 0;
    *(a1 + 120) = 0;
    if (v35 != 1)
    {
      *(a1 + 128) = 1;
      goto LABEL_21;
    }

    *(a1 + 48) = 0;
    if (v28 == 1)
    {
      *(a1 + 24) = v26;
      *(a1 + 40) = v27;
      v27 = 0;
      v26 = 0uLL;
      *(a1 + 48) = 1;
      *(a1 + 56) = 0;
      v5 = a1 + 56;
      *(a1 + 112) = 0;
      v6 = v34;
      if (v34 != 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(a1 + 56) = 0;
      v5 = a1 + 56;
      *(a1 + 112) = 0;
      v6 = v34;
      if (v34 != 1)
      {
LABEL_9:
        *(a1 + 120) = 1;
        *(a1 + 128) = 1;
        if (!v6)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }
    }

    v7 = v31;
    *(v5 + 16) = v30;
    *v5 = *v29;
    v29[0] = 0;
    v29[1] = 0;
    *(a1 + 80) = v7;
    *(a1 + 88) = *__p;
    *(a1 + 104) = v33;
    v30 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v33 = 0;
    *(a1 + 112) = 1;
    *(a1 + 120) = 1;
    *(a1 + 128) = 1;
    if (!v6)
    {
LABEL_18:
      if (v28 == 1 && SHIBYTE(v27) < 0)
      {
        operator delete(v26);
      }

      goto LABEL_21;
    }

LABEL_14:
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }

    goto LABEL_18;
  }

  sub_27112F274(a1 + 8, &v25);
  if (v35)
  {
    if ((v34 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_21:
  if (v24 == 1)
  {
    if (v23 == 1)
    {
      if (v22 < 0)
      {
        operator delete(v21);
      }

      if (v20 < 0)
      {
        operator delete(v19);
      }
    }

    if (v18 == 1 && v17 < 0)
    {
      operator delete(v16);
    }
  }

LABEL_30:
  if (*(a2 + 8) != *(a1 + 16) || *a2 != *(a1 + 8))
  {
    sub_271847E00(a2, &v15);
    sub_271849064((a1 + 8), &v15, &v25);
    if (*(a1 + 128))
    {
      sub_27112F274(a1 + 8, &v25);
      if ((v35 & 1) == 0)
      {
        goto LABEL_57;
      }

      if ((v34 & 1) == 0)
      {
        goto LABEL_54;
      }

LABEL_52:
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
        if ((SHIBYTE(v30) & 0x80000000) == 0)
        {
          goto LABEL_54;
        }

LABEL_61:
        operator delete(v29[0]);
        if (v28 == 1)
        {
LABEL_55:
          if (SHIBYTE(v27) < 0)
          {
            operator delete(v26);
          }
        }

LABEL_57:
        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v15.__r_.__value_.__l.__data_);
        }

        return;
      }

      operator delete(__p[0]);
      if (SHIBYTE(v30) < 0)
      {
        goto LABEL_61;
      }

LABEL_54:
      if (v28 == 1)
      {
        goto LABEL_55;
      }

      goto LABEL_57;
    }

    *(a1 + 8) = v25;
    *(a1 + 24) = 0;
    *(a1 + 120) = 0;
    if (v35 != 1)
    {
      *(a1 + 128) = 1;
      goto LABEL_57;
    }

    *(a1 + 48) = 0;
    if (v28 == 1)
    {
      *(a1 + 24) = v26;
      *(a1 + 40) = v27;
      v27 = 0;
      v26 = 0uLL;
      *(a1 + 48) = 1;
      *(a1 + 56) = 0;
      v9 = a1 + 56;
      *(a1 + 112) = 0;
      v10 = v34;
      if (v34 != 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      *(a1 + 56) = 0;
      v9 = a1 + 56;
      *(a1 + 112) = 0;
      v10 = v34;
      if (v34 != 1)
      {
LABEL_47:
        *(a1 + 120) = 1;
        *(a1 + 128) = 1;
        if (!v10)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }
    }

    v11 = v31;
    *(v9 + 16) = v30;
    *v9 = *v29;
    v29[0] = 0;
    v29[1] = 0;
    *(a1 + 80) = v11;
    *(a1 + 88) = *__p;
    *(a1 + 104) = v33;
    v30 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v33 = 0;
    *(a1 + 112) = 1;
    *(a1 + 120) = 1;
    *(a1 + 128) = 1;
    if (!v10)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (*(a2 + 112))
  {
    v8 = (a2 + 16);
  }

  else
  {
    v8 = &unk_2718BB850;
  }

  if (*(v8 + 24) == 1)
  {
    sub_271849064((a1 + 8), v8, &v25);
    if (*(a1 + 128))
    {
      sub_27112F274(a1 + 8, &v25);
      if ((v35 & 1) == 0)
      {
        return;
      }

      if ((v34 & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_71;
    }

    *(a1 + 8) = v25;
    *(a1 + 24) = 0;
    *(a1 + 120) = 0;
    if (v35 != 1)
    {
      *(a1 + 128) = 1;
      return;
    }

    *(a1 + 48) = 0;
    if (v28 == 1)
    {
      *(a1 + 24) = v26;
      *(a1 + 40) = v27;
      v27 = 0;
      v26 = 0uLL;
      *(a1 + 48) = 1;
      *(a1 + 56) = 0;
      v12 = a1 + 56;
      *(a1 + 112) = 0;
      v13 = v34;
      if (v34 != 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      *(a1 + 56) = 0;
      v12 = a1 + 56;
      *(a1 + 112) = 0;
      v13 = v34;
      if (v34 != 1)
      {
LABEL_66:
        *(a1 + 120) = 1;
        *(a1 + 128) = 1;
        if (!v13)
        {
LABEL_75:
          if (v28 == 1 && SHIBYTE(v27) < 0)
          {
            operator delete(v26);
          }

          return;
        }

LABEL_71:
        if (SHIBYTE(v33) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v30) < 0)
        {
          operator delete(v29[0]);
        }

        goto LABEL_75;
      }
    }

    v14 = v31;
    *(v12 + 16) = v30;
    *v12 = *v29;
    v29[0] = 0;
    v29[1] = 0;
    *(a1 + 80) = v14;
    *(a1 + 88) = *__p;
    *(a1 + 104) = v33;
    v30 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v33 = 0;
    *(a1 + 112) = 1;
    *(a1 + 120) = 1;
    *(a1 + 128) = 1;
    if (!v13)
    {
      goto LABEL_75;
    }

    goto LABEL_71;
  }
}

void sub_27138AE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_27138AE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27138AE34(uint64_t result)
{
  if (*(result + 128) == 1 && *(result + 120) == 1)
  {
    if (*(result + 112) == 1)
    {
      if (*(result + 111) < 0)
      {
        v1 = result;
        operator delete(*(result + 88));
        result = v1;
      }

      if (*(result + 79) < 0)
      {
        v2 = result;
        operator delete(*(result + 56));
        result = v2;
      }
    }

    if (*(result + 48) == 1 && *(result + 47) < 0)
    {
      v3 = result;
      operator delete(*(result + 24));
      return v3;
    }
  }

  return result;
}

void sub_27138AED8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 896))
  {
    if ((*(a1 + 1104) & 1) == 0)
    {
      *a2 = 0;
      *(a2 + 32) = 0;
      goto LABEL_11;
    }

    sub_27138975C(&v21, a1, 0, 0);
    if (v32)
    {
      v3 = __p;
      *a2 = v21;
      *(a2 + 16) = v3;
      *(a2 + 32) = v23;
LABEL_11:
      *(a2 + 120) = 1;
      return;
    }

    v10 = v21;
    LOBYTE(v11) = 0;
    v20 = 0;
    if (v31 == 1)
    {
      sub_27112F6CC(&v11, &__p);
      v20 = 1;
      *a2 = v10;
      *(a2 + 16) = 0;
      *(a2 + 40) = 0;
      v6 = v13;
      if (v13 == 1)
      {
        *(a2 + 16) = v11;
        *(a2 + 32) = v12;
        v12 = 0;
        v11 = 0uLL;
        *(a2 + 40) = 1;
        *(a2 + 48) = 0;
        v7 = a2 + 48;
        *(a2 + 104) = 0;
        if ((v19 & 1) == 0)
        {
LABEL_17:
          *(a2 + 112) = 1;
          *(a2 + 120) = 0;
          if (!v6)
          {
            goto LABEL_37;
          }

LABEL_35:
          if (SHIBYTE(v12) < 0)
          {
            operator delete(v11);
          }

          goto LABEL_37;
        }
      }

      else
      {
        *(a2 + 48) = 0;
        v7 = a2 + 48;
        *(a2 + 104) = 0;
        if ((v19 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v9 = v16;
      *(v7 + 16) = v15;
      *v7 = v14;
      v14 = 0uLL;
      *(a2 + 72) = v9;
      *(a2 + 80) = v17;
      *(a2 + 96) = v18;
      v15 = 0;
      v17 = 0uLL;
      v18 = 0;
      *(a2 + 104) = 1;
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      if (v6)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *a2 = v21;
      *(a2 + 16) = 0;
      *(a2 + 112) = 0;
      *(a2 + 120) = 0;
    }

LABEL_37:
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(__p);
      }
    }

    return;
  }

  LOBYTE(v33) = 0;
  v41 = 0;
  sub_271389570(0xBu, &v33, &v21);
  *a2 = v21;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v31 != 1)
  {
    *(a2 + 120) = 0;
    goto LABEL_23;
  }

  *(a2 + 40) = 0;
  v4 = v24;
  if (v24 != 1)
  {
    *(a2 + 48) = 0;
    v5 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v30 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v8 = v27;
    *(v5 + 16) = v26;
    *v5 = v25;
    v25 = 0uLL;
    *(a2 + 72) = v8;
    *(a2 + 80) = v28;
    *(a2 + 96) = v29;
    v26 = 0;
    v28 = 0uLL;
    v29 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (!v4)
    {
      goto LABEL_23;
    }

LABEL_21:
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_23;
  }

  *(a2 + 16) = __p;
  *(a2 + 32) = v23;
  v23 = 0;
  __p = 0uLL;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  v5 = a2 + 48;
  *(a2 + 104) = 0;
  if (v30)
  {
    goto LABEL_20;
  }

LABEL_8:
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  if (v4)
  {
    goto LABEL_21;
  }

LABEL_23:
  if (v41 == 1)
  {
    if (v40 == 1)
    {
      if (v39 < 0)
      {
        operator delete(v38);
      }

      if (v37 < 0)
      {
        operator delete(v36);
      }
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }
  }
}

void sub_27138B268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27112D66C(v16 + 16);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_27138B298(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 896))
  {
    if (*(a1 + 1104))
    {

      sub_27138975C(a3, a1, a2, 1);
    }

    else
    {
      *a3 = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 120) = 1;
    }

    return;
  }

  LOBYTE(v7) = 0;
  v15 = 0;
  sub_271389570(0xBu, &v7, &v16);
  *a3 = v16;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v26 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_18;
  }

  *(a3 + 40) = 0;
  v4 = v19;
  if (v19 != 1)
  {
    *(a3 + 48) = 0;
    v5 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v6 = v22;
    *(v5 + 16) = v21;
    *v5 = v20;
    v20 = 0uLL;
    *(a3 + 72) = v6;
    *(a3 + 80) = v23;
    *(a3 + 96) = v24;
    v21 = 0;
    v23 = 0uLL;
    v24 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v4)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_18;
  }

  *(a3 + 16) = __p;
  *(a3 + 32) = v18;
  v18 = 0;
  __p = 0uLL;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  v5 = a3 + 48;
  *(a3 + 104) = 0;
  if (v25)
  {
    goto LABEL_15;
  }

LABEL_9:
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (v4)
  {
    goto LABEL_16;
  }

LABEL_18:
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
}

void sub_27138B4B0(_BYTE *__p, void *a2)
{
  v9 = __p;
  v51 = *MEMORY[0x277D85DE8];
  v22 = 9;
  LOBYTE(v23) = 0;
  v33 = 0;
  v10 = a2 + 1;
  v11 = a2[1];
  v19 = *a2;
  v20 = v11;
  if (a2[2])
  {
    *(v11 + 16) = &v20;
    *a2 = v10;
    *v10 = 0;
    a2[2] = 0;
    if (__p[440] != 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v19 = &v20;
    if (__p[440] != 1)
    {
      goto LABEL_16;
    }
  }

  sub_27152ACFC((__p + 152), &v19, &v35);
  if ((v47 & 1) == 0)
  {
    sub_27138A894(&v22, &v35);
    if ((v47 & 1) == 0 && v46 == 1)
    {
      if (v45 == 1)
      {
        if (SHIBYTE(v44) < 0)
        {
          operator delete(__pa);
        }

        if (SHIBYTE(v41) < 0)
        {
          operator delete(v39);
        }
      }

      if (v38 == 1 && SHIBYTE(v37) < 0)
      {
        operator delete(v36[0]);
      }
    }
  }

LABEL_16:
  if (v9[144] == 1)
  {
    v34[0] = v9;
    v34[1] = &v19;
    v34[2] = &v22;
    v48[0] = &unk_2881168A8;
    v48[1] = v34;
    sub_27184A384(v48, &v35);
    if ((v47 & 1) == 0)
    {
      sub_27138A894(&v22, &v35);
      if ((v47 & 1) == 0 && v46 == 1)
      {
        if (v45 == 1)
        {
          if (SHIBYTE(v44) < 0)
          {
            operator delete(__pa);
          }

          if (SHIBYTE(v41) < 0)
          {
            operator delete(v39);
          }
        }

        if (v38 == 1 && SHIBYTE(v37) < 0)
        {
          operator delete(v36[0]);
        }
      }
    }
  }

  if (v9[112] != 1)
  {
    goto LABEL_59;
  }

  v12 = *(v9 + 13);
  if (!v12)
  {
LABEL_32:
    v50 = v12;
    v13 = v33;
    if (v33 == 1)
    {
      goto LABEL_33;
    }

    goto LABEL_40;
  }

  if (v12 != v9 + 80)
  {
    v12 = (*(*v12 + 16))(v12);
    goto LABEL_32;
  }

  v50 = v49;
  (*(*v12 + 24))(v12, v49);
  v12 = v50;
  v13 = v33;
  if (v33 == 1)
  {
LABEL_33:
    if (!v12)
    {
      sub_27112AFFC();
    }

    (*(*v12 + 48))(v12, &v23);
    v35 = v23;
    LOBYTE(v36[0]) = 0;
    v46 = 0;
    v4 = v32;
    if (v32 != 1)
    {
      v9 = 0;
      goto LABEL_50;
    }

    sub_27112F6CC(v36, &v24);
    v46 = 1;
    v14 = v38;
    if (v38 == 1)
    {
      v9 = v36[0];
      v6 = HIBYTE(v37);
      v36[0] = 0;
      v36[1] = 0;
      v37 = 0;
      v5 = v45;
      if (v45 != 1)
      {
LABEL_37:
        v2 = 0;
LABEL_47:
        if (v38 && SHIBYTE(v37) < 0)
        {
          operator delete(v36[0]);
          v14 = 1;
        }

LABEL_50:
        v15 = v8 < 0;
        v16 = v7 < 0;
        v17 = v14 & (v6 < 0);
        v12 = v50;
        if (v50 == v49)
        {
LABEL_51:
          (*(*v12 + 32))(v12);
          if ((v4 & v13) != 1)
          {
            goto LABEL_59;
          }

          goto LABEL_52;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v9 = 0;
      v5 = v45;
      if (v45 != 1)
      {
        goto LABEL_37;
      }
    }

    v2 = v39;
    v7 = HIBYTE(v41);
    v39 = 0;
    v40 = 0;
    v3 = __pa;
    v8 = HIBYTE(v44);
    v41 = 0;
    __pa = 0;
    v43 = 0;
    v44 = 0;
    goto LABEL_47;
  }

LABEL_40:
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (v12 == v49)
  {
    goto LABEL_51;
  }

LABEL_41:
  if (v12)
  {
    (*(*v12 + 40))(v12);
  }

  if ((v4 & v13) == 1)
  {
LABEL_52:
    if (v5)
    {
      if (v15)
      {
        operator delete(v3);
      }

      if (v16)
      {
        operator delete(v2);
      }
    }

    if (v17)
    {
      operator delete(v9);
    }
  }

LABEL_59:
  sub_271167834(&v19, v20);
  if (v33 == 1 && v32 == 1)
  {
    if (v31 == 1)
    {
      if (v30 < 0)
      {
        operator delete(v29);
      }

      if (v28 < 0)
      {
        operator delete(v27);
      }
    }

    if (v26 == 1 && v25 < 0)
    {
      operator delete(v24);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_27138B990(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, char *);
  v8 = va_arg(va1, void);
  sub_27112D66C(v2 + 16);
  sub_2711D6748(v3 - 120);
  sub_271167834(va, v7);
  sub_27138AE34(va1);
  _Unwind_Resume(a1);
}

void sub_27138B9F4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  v212 = 0;
  v213 = 0;
  v214 = 0;
  v6 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
LABEL_417:
    if (*(v3 + 72) != 1 || v212 == v213 || (*&v215 = v3, *(&v215 + 1) = &v212, v180.__r_.__value_.__r.__words[0] = &unk_288116880, v180.__r_.__value_.__l.__size_ = &v215, sub_27184A384(&v180, &__p), (v200 & 1) != 0))
    {
      *(a3 + 120) = 1;
      goto LABEL_421;
    }

    sub_271847E00(&__p, &v180);
    if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(&v181, v180.__r_.__value_.__l.__data_, v180.__r_.__value_.__l.__size_);
    }

    else
    {
      v181 = v180;
    }

    v182 = 1;
    LOBYTE(v183) = 0;
    v187 = 0;
    v188 = 1;
    sub_271389570(8u, &v181, &v215);
    *a3 = v215;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    if (v225 == 1)
    {
      *(a3 + 40) = 0;
      v171 = v218;
      if (v218 == 1)
      {
        *(a3 + 16) = v216;
        *(a3 + 32) = v217;
        v217 = 0;
        v216 = 0uLL;
        *(a3 + 40) = 1;
        *(a3 + 48) = 0;
        v172 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v224 & 1) == 0)
        {
          goto LABEL_456;
        }
      }

      else
      {
        *(a3 + 48) = 0;
        v172 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v224 & 1) == 0)
        {
LABEL_456:
          *(a3 + 112) = 1;
          *(a3 + 120) = 0;
          if (!v171)
          {
            goto LABEL_463;
          }

LABEL_461:
          if (SHIBYTE(v217) < 0)
          {
            operator delete(v216);
          }

          goto LABEL_463;
        }
      }

      v173 = v221;
      *(v172 + 16) = v220;
      *v172 = v219;
      v219 = 0uLL;
      *(a3 + 72) = v173;
      *(a3 + 80) = v222;
      *(a3 + 96) = v223;
      v220 = 0;
      v222 = 0uLL;
      v223 = 0;
      *(a3 + 104) = 1;
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (v171)
      {
        goto LABEL_461;
      }
    }

    else
    {
      *(a3 + 120) = 0;
    }

LABEL_463:
    if (v188 == 1)
    {
      if (v187 == 1)
      {
        if (v186 < 0)
        {
          operator delete(v185);
        }

        if (v184 < 0)
        {
          operator delete(v183);
        }
      }

      if (v182 == 1 && SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v181.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v180.__r_.__value_.__l.__data_);
    }

    if ((v200 & 1) == 0 && v199 == 1)
    {
      if (v198 == 1)
      {
        if (SHIBYTE(v197) < 0)
        {
          operator delete(v196);
        }

        if (SHIBYTE(v194) < 0)
        {
          operator delete(v193);
        }
      }

      if (v192 == 1 && SHIBYTE(v191) < 0)
      {
        operator delete(v190);
      }
    }

    goto LABEL_421;
  }

  v176 = (a1 + 728);
  v177 = a2[1];
  while (1)
  {
    sub_2714FCC00(v6);
    v8 = BYTE7(v190);
    if (SBYTE7(v190) < 0)
    {
      v8 = *(&__p + 1);
    }

    if (v8 == 8)
    {
      p_p = __p;
      if ((SBYTE7(v190) & 0x80u) == 0)
      {
        p_p = &__p;
      }

      v10 = *"cv3d.net" == *p_p;
      if ((SBYTE7(v190) & 0x80000000) == 0)
      {
LABEL_12:
        if (!v10)
        {
          goto LABEL_35;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v10 = 0;
      if ((SBYTE7(v190) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    operator delete(__p);
    if (!v10)
    {
LABEL_35:
      v21 = v213;
      if (v213 < v214)
      {
        goto LABEL_36;
      }

      goto LABEL_3;
    }

LABEL_13:
    sub_2714FCC00(v6);
    *&__p = 0x74656E2E64337663;
    v11 = BYTE7(v216);
    if (SBYTE7(v216) < 0)
    {
      v11 = *(&v215 + 1);
    }

    if (v11 == 8)
    {
      v12 = v215;
      if ((SBYTE7(v216) & 0x80u) == 0)
      {
        v12 = &v215;
      }

      if (*v12 == __p)
      {
        v13 = DWORD2(v216) == 2;
        if ((SBYTE7(v216) & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_48:
        operator delete(v215);
        if (v13)
        {
          goto LABEL_21;
        }

LABEL_49:
        sub_2714FCC00(v6);
        *&__p = 0x74656E2E64337663;
        v25 = BYTE7(v216);
        if (SBYTE7(v216) < 0)
        {
          v25 = *(&v215 + 1);
        }

        if (v25 != 8)
        {
          goto LABEL_55;
        }

        v26 = v215;
        if ((SBYTE7(v216) & 0x80u) == 0)
        {
          v26 = &v215;
        }

        if (*v26 == __p)
        {
          v27 = DWORD2(v216) == 5;
          if ((SBYTE7(v216) & 0x80000000) == 0)
          {
LABEL_56:
            if (v27)
            {
              goto LABEL_57;
            }

            goto LABEL_75;
          }
        }

        else
        {
LABEL_55:
          v27 = 0;
          if ((SBYTE7(v216) & 0x80000000) == 0)
          {
            goto LABEL_56;
          }
        }

        operator delete(v215);
        if (!v27)
        {
LABEL_75:
          sub_2714FCC00(v6);
          *&__p = 0x74656E2E64337663;
          v33 = BYTE7(v216);
          if (SBYTE7(v216) < 0)
          {
            v33 = *(&v215 + 1);
          }

          if (v33 != 8)
          {
            goto LABEL_81;
          }

          v34 = v215;
          if ((SBYTE7(v216) & 0x80u) == 0)
          {
            v34 = &v215;
          }

          if (*v34 == __p)
          {
            v35 = DWORD2(v216) == 3;
            if ((SBYTE7(v216) & 0x80000000) == 0)
            {
LABEL_82:
              if (v35)
              {
                goto LABEL_83;
              }

LABEL_112:
              sub_2714FCC00(v6);
              *&__p = 0x74656E2E64337663;
              v49 = BYTE7(v216);
              if (SBYTE7(v216) < 0)
              {
                v49 = *(&v215 + 1);
              }

              if (v49 != 8)
              {
                goto LABEL_118;
              }

              v50 = v215;
              if ((SBYTE7(v216) & 0x80u) == 0)
              {
                v50 = &v215;
              }

              if (*v50 == __p)
              {
                v51 = DWORD2(v216) == 4;
                if ((SBYTE7(v216) & 0x80000000) == 0)
                {
LABEL_119:
                  if (v51)
                  {
                    goto LABEL_120;
                  }

LABEL_176:
                  v21 = v213;
                  if (v213 < v214)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_3;
                }
              }

              else
              {
LABEL_118:
                v51 = 0;
                if ((SBYTE7(v216) & 0x80000000) == 0)
                {
                  goto LABEL_119;
                }
              }

              operator delete(v215);
              if (!v51)
              {
                goto LABEL_176;
              }

LABEL_120:
              v52 = *(v6 + 8);
              v53 = *(v6 + 16);
              if (v53)
              {
                atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v52)
              {
                v54 = **v52;
              }

              if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v53->__on_zero_shared)(v53);
                std::__shared_weak_count::__release_weak(v53);
              }

              v56 = *(v6 + 8);
              v55 = *(v6 + 16);
              if (v55)
              {
                atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v201 = v56;
              v202 = v55;
              if (*(v56 + 64) == 1)
              {
                v57 = (v56 + 40);
                v58 = *(v3 + 1168);
                if (v58)
                {
                  v59 = *(v58 + 71);
                  if (v59 >= 0)
                  {
                    v60 = *(v58 + 71);
                  }

                  else
                  {
                    v60 = *(v58 + 56);
                  }

                  v61 = *(v56 + 63);
                  v62 = v61;
                  if ((v61 & 0x80u) != 0)
                  {
                    v61 = *(v56 + 48);
                  }

                  if (v60 != v61 || ((v65 = *(v58 + 48), v63 = (v58 + 48), v64 = v65, v59 >= 0) ? (v66 = v63) : (v66 = v64), (v67 = *v57, v62 >= 0) ? (v68 = (v56 + 40)) : (v68 = *v57), memcmp(v66, v68, v60)))
                  {
                    sub_2711CC04C(&v215, "Received a different target destination context during 'update enabled loggers' command. Retargeting of visualized textual log messages is not yet implemented. Command ignored.");
                    LOBYTE(v223) = 1;
                    sub_2711CBE94(&__p, 0x16u, &v215);
                    if (*(v3 + 112) == 1)
                    {
                      v69 = *(v3 + 104);
                      if (!v69)
                      {
                        sub_27112AFFC();
                      }

                      (*(*v69 + 48))(v69, &__p);
                    }

                    if (v199 == 1)
                    {
                      if (v198 == 1)
                      {
                        if (SHIBYTE(v197) < 0)
                        {
                          operator delete(v196);
                        }

                        if (SHIBYTE(v194) < 0)
                        {
                          operator delete(v193);
                        }
                      }

                      if (v192 == 1 && SHIBYTE(v191) < 0)
                      {
                        operator delete(v190);
                      }
                    }

                    if (v223 == 1)
                    {
                      if (BYTE8(v222) == 1)
                      {
                        if (SBYTE7(v222) < 0)
                        {
                          operator delete(v220);
                        }

                        if (SBYTE7(v219) < 0)
                        {
                          operator delete(v217);
                        }
                      }

                      if (BYTE8(v216) == 1 && SBYTE7(v216) < 0)
                      {
                        operator delete(v215);
                      }
                    }
                  }

                  goto LABEL_210;
                }

                v70 = *(v3 + 1120);
                v71 = v70[4];
                if (v71)
                {
                  std::mutex::lock(v70[4]);
                  __p = 0uLL;
                  v72 = v70[1];
                  if (!v72 || (*(&__p + 1) = std::__shared_weak_count::lock(v72)) == 0)
                  {
                    std::mutex::unlock(v71);
                    goto LABEL_193;
                  }

                  *&__p = *v70;
                  v73 = __p;
                  std::mutex::unlock(v71);
                  if (!v73)
                  {
LABEL_193:
                    v78 = *(v3 + 32);
                    if (v78)
                    {
                      v79 = *(v3 + 24);
                      atomic_fetch_add_explicit(&v78->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                      v80 = std::__shared_weak_count::lock(v78);
                      v81 = v80;
                      if (v80)
                      {
                        atomic_fetch_add_explicit(&v80->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                        std::__shared_weak_count::__release_weak(v78);
                        if (!atomic_fetch_add(v81 + 1, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (*(*v81 + 16))(v81);
                          v77 = v81;
LABEL_197:
                          std::__shared_weak_count::__release_weak(v77);
                        }
                      }

                      else
                      {
                        std::__shared_weak_count::__release_weak(v78);
                      }
                    }

                    goto LABEL_200;
                  }
                }

                else
                {
                  __p = 0uLL;
                  v74 = v70[1];
                  if (!v74)
                  {
                    goto LABEL_193;
                  }

                  *(&__p + 1) = std::__shared_weak_count::lock(v74);
                  if (!*(&__p + 1))
                  {
                    goto LABEL_193;
                  }

                  v73 = *v70;
                  *&__p = v73;
                  if (!v73)
                  {
                    goto LABEL_193;
                  }
                }

                (*(*v73 + 112))(&v215, v73);
                v75 = *(&v215 + 1);
                v215 = 0uLL;
                if (v75)
                {
                  atomic_fetch_add_explicit(&v75->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v75->__on_zero_shared)(v75);
                    std::__shared_weak_count::__release_weak(v75);
                  }
                }

                v76 = *(&v215 + 1);
                if (*(&v215 + 1) && !atomic_fetch_add((*(&v215 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v76->__on_zero_shared)(v76);
                  v77 = v76;
                  goto LABEL_197;
                }

LABEL_200:
                v82 = *(&__p + 1);
                if (*(&__p + 1) && !atomic_fetch_add((*(&__p + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v82->__on_zero_shared)(v82);
                  std::__shared_weak_count::__release_weak(v82);
                }

                v83 = *(v3 + 1120);
                v84 = *(v83 + 32);
                if (v84)
                {
                  std::mutex::lock(*(v83 + 32));
                  v85 = *(v83 + 48);
                  v226 = *(v83 + 40);
                  v227 = v85;
                  if (v85)
                  {
                    atomic_fetch_add_explicit((v85 + 8), 1uLL, memory_order_relaxed);
                  }

                  std::mutex::unlock(v84);
                }

                else
                {
                  v86 = *(v83 + 48);
                  v226 = *(v83 + 40);
                  v227 = v86;
                  if (v86)
                  {
                    atomic_fetch_add_explicit((v86 + 8), 1uLL, memory_order_relaxed);
                  }
                }

                operator new();
              }

LABEL_210:
              v87 = v3;
              v88 = *(v3 + 1168);
              v89 = *(v87 + 1176);
              v228 = v88;
              v229 = v89;
              if (v89)
              {
                atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v90 = *(v56 + 16);
              v178 = *(v56 + 24);
              v175 = v89;
              if (v90 != v178)
              {
                v174 = a3;
                while (1)
                {
                  if ((*(a1 + 1160) & 1) == 0)
                  {
                    sub_2713782EC(&__p);
                    v91 = __p;
                    if (*(a1 + 1160) == 1)
                    {
                      v92 = *(&__p + 1);
                      __p = 0uLL;
                      *(a1 + 1144) = v91;
                      v93 = *(a1 + 1152);
                      *(a1 + 1152) = v92;
                      if (v93 && !atomic_fetch_add(&v93->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v93->__on_zero_shared)(v93);
                        std::__shared_weak_count::__release_weak(v93);
                      }
                    }

                    else
                    {
                      *(a1 + 1144) = __p;
                      __p = 0uLL;
                      *(a1 + 1160) = 1;
                    }

                    sub_27137803C(&__p);
                  }

                  v94 = sub_27137B15C();
                  v95 = *(v94 + 31);
                  if (v95 >= 0)
                  {
                    v96 = *(v94 + 31);
                  }

                  else
                  {
                    v96 = *(v94 + 16);
                  }

                  v97 = *(v90 + 23);
                  v98 = v97;
                  if ((v97 & 0x80u) != 0)
                  {
                    v97 = *(v90 + 8);
                  }

                  if (v96 != v97)
                  {
                    goto LABEL_235;
                  }

                  v101 = *(v94 + 8);
                  v99 = (v94 + 8);
                  v100 = v101;
                  if (v95 < 0)
                  {
                    v99 = v100;
                  }

                  v102 = *v90;
                  v103 = v98 >= 0 ? v90 : *v90;
                  if (!memcmp(v99, v103, v96))
                  {
                    v114 = 1;
                  }

                  else
                  {
LABEL_235:
                    v104 = sub_27137B258();
                    v105 = *(v104 + 31);
                    if (v105 >= 0)
                    {
                      v106 = *(v104 + 31);
                    }

                    else
                    {
                      v106 = *(v104 + 16);
                    }

                    v107 = *(v90 + 23);
                    v108 = v107;
                    if ((v107 & 0x80u) != 0)
                    {
                      v107 = *(v90 + 8);
                    }

                    if (v106 == v107)
                    {
                      v111 = *(v104 + 8);
                      v109 = (v104 + 8);
                      v110 = v111;
                      if (v105 < 0)
                      {
                        v109 = v110;
                      }

                      v112 = *v90;
                      if (v108 >= 0)
                      {
                        v113 = v90;
                      }

                      else
                      {
                        v113 = *v90;
                      }

                      v114 = memcmp(v109, v113, v106) == 0;
                    }

                    else
                    {
                      v114 = 0;
                    }
                  }

                  v115 = sub_27137B15C();
                  v116 = (v115 + 8);
                  v117 = *(v115 + 31);
                  v118 = *(v115 + 16);
                  if ((v117 & 0x80u) == 0)
                  {
                    v119 = *(v115 + 31);
                  }

                  else
                  {
                    v119 = *(v115 + 16);
                  }

                  v120 = *(v90 + 23);
                  v121 = *v90;
                  if (v120 >= 0)
                  {
                    v122 = *(v90 + 23);
                  }

                  else
                  {
                    v122 = *(v90 + 8);
                  }

                  if (v119 == v122)
                  {
                    if ((v117 & 0x80u) == 0)
                    {
                      v123 = (v115 + 8);
                    }

                    else
                    {
                      v123 = *v116;
                    }

                    if (v120 >= 0)
                    {
                      v124 = v90;
                    }

                    else
                    {
                      v124 = *v90;
                    }

                    if (!memcmp(v123, v124, v119))
                    {
                      goto LABEL_326;
                    }

                    if ((v117 & 0x80) == 0)
                    {
LABEL_264:
                      v125 = v117;
                      if (v122 >= v117)
                      {
                        v126 = v117;
                      }

                      else
                      {
                        v126 = v122;
                      }

                      if (v122 < v126)
                      {
                        v126 = v122;
                      }

                      if (v126 != v117)
                      {
                        goto LABEL_282;
                      }

                      goto LABEL_281;
                    }
                  }

                  else
                  {
                    if (v120 >= 0)
                    {
                      v124 = v90;
                    }

                    else
                    {
                      v124 = *v90;
                    }

                    if ((v117 & 0x80) == 0)
                    {
                      goto LABEL_264;
                    }
                  }

                  v116 = *v116;
                  v125 = v118;
                  if (v122 >= v118)
                  {
                    v127 = v118;
                  }

                  else
                  {
                    v127 = v122;
                  }

                  if (v122 < v127)
                  {
                    v127 = v122;
                  }

                  if (v127 != v118)
                  {
                    goto LABEL_282;
                  }

LABEL_281:
                  if (memcmp(v124, v116, v125))
                  {
                    goto LABEL_282;
                  }

                  if ((v117 & 0x80) != 0)
                  {
                    if (v122 <= v118)
                    {
                      goto LABEL_282;
                    }
                  }

                  else
                  {
                    v118 = v117;
                    if (v122 <= v117)
                    {
                      goto LABEL_282;
                    }
                  }

                  if (v120 >= 0)
                  {
                    v141 = v90;
                  }

                  else
                  {
                    v141 = v121;
                  }

                  if (*(v141 + v118) != 46)
                  {
LABEL_282:
                    v128 = sub_27137B258();
                    v129 = (v128 + 8);
                    v130 = *(v128 + 31);
                    v131 = *(v128 + 16);
                    if ((v130 & 0x80u) == 0)
                    {
                      v132 = *(v128 + 31);
                    }

                    else
                    {
                      v132 = *(v128 + 16);
                    }

                    v133 = *(v90 + 23);
                    v134 = *v90;
                    if (v133 >= 0)
                    {
                      v135 = *(v90 + 23);
                    }

                    else
                    {
                      v135 = *(v90 + 8);
                    }

                    if (v132 == v135)
                    {
                      if ((v130 & 0x80u) == 0)
                      {
                        v136 = (v128 + 8);
                      }

                      else
                      {
                        v136 = *v129;
                      }

                      if (v133 >= 0)
                      {
                        v137 = v90;
                      }

                      else
                      {
                        v137 = *v90;
                      }

                      if (!memcmp(v136, v137, v132))
                      {
                        goto LABEL_339;
                      }

                      if ((v130 & 0x80) == 0)
                      {
LABEL_297:
                        v138 = v130;
                        if (v135 >= v130)
                        {
                          v139 = v130;
                        }

                        else
                        {
                          v139 = v135;
                        }

                        if (v135 < v139)
                        {
                          v139 = v135;
                        }

                        if (v139 != v130)
                        {
                          goto LABEL_215;
                        }

LABEL_314:
                        if (memcmp(v137, v129, v138))
                        {
                          goto LABEL_215;
                        }

                        if ((v130 & 0x80) != 0)
                        {
                          if (v135 <= v131)
                          {
                            goto LABEL_215;
                          }
                        }

                        else
                        {
                          v131 = v130;
                          if (v135 <= v130)
                          {
                            goto LABEL_215;
                          }
                        }

                        if (v133 >= 0)
                        {
                          v149 = v90;
                        }

                        else
                        {
                          v149 = v134;
                        }

                        if (*(v149 + v131) != 46)
                        {
                          goto LABEL_215;
                        }

LABEL_339:
                        v142 = 1;
                        v143 = *(v90 + 24);
                        if (v114)
                        {
LABEL_327:
                          if (v143 <= 1)
                          {
                            v144 = *(a1 + 1144);
                            if (v142)
                            {
                              sub_2713799AC(v144);
                            }

                            else
                            {
                              sub_271379D60(v144);
                            }

                            goto LABEL_215;
                          }

                          v145 = v143 - 2;
                          if (v145 >= 6)
                          {
                            goto LABEL_484;
                          }

                          v146 = v145 + 0x100000001;
                          v147 = *(a1 + 1144);
                          v148 = *v147;
                          if (!v142)
                          {
                            goto LABEL_332;
                          }

LABEL_356:
                          if (*(v148 + 28) != 2)
                          {
                            sub_2713796C4(v147, 6);
                            v147 = *(a1 + 1144);
                          }

                          if (sub_271379F64(v147, v90, v146))
                          {
                            goto LABEL_215;
                          }

                          sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/Client.cpp", 703, "ret == elog::APILogging::Available()", 0x24uLL, "", 0, sub_271852CA8);
                          if (byte_28087C430 == 1)
                          {
                            if (byte_28087C438 != 1 || (v151 = qword_28087C408, v152 = qword_28087C410, qword_28087C408 == qword_28087C410))
                            {
LABEL_366:
                              qword_28087C420(*algn_28087C428, "ret == elog::APILogging::Available()", 36, "", 0);
                              goto LABEL_215;
                            }
                          }

                          else
                          {
                            v151 = qword_28087C408;
                            v152 = qword_28087C410;
                            if (qword_28087C408 == qword_28087C410)
                            {
                              goto LABEL_485;
                            }
                          }

                          do
                          {
                            (*v151)(*(v151 + 8), "ret == elog::APILogging::Available()", 36, "", 0);
                            v151 += 16;
                          }

                          while (v151 != v152);
                          if ((byte_28087C430 & 1) == 0)
                          {
                            goto LABEL_485;
                          }

                          goto LABEL_366;
                        }

                        goto LABEL_340;
                      }
                    }

                    else
                    {
                      if (v133 >= 0)
                      {
                        v137 = v90;
                      }

                      else
                      {
                        v137 = *v90;
                      }

                      if ((v130 & 0x80) == 0)
                      {
                        goto LABEL_297;
                      }
                    }

                    v129 = *v129;
                    v138 = v131;
                    if (v135 >= v131)
                    {
                      v140 = v131;
                    }

                    else
                    {
                      v140 = v135;
                    }

                    if (v135 < v140)
                    {
                      v140 = v135;
                    }

                    if (v140 != v131)
                    {
                      goto LABEL_215;
                    }

                    goto LABEL_314;
                  }

LABEL_326:
                  v142 = 0;
                  v143 = *(v90 + 24);
                  if (v114)
                  {
                    goto LABEL_327;
                  }

LABEL_340:
                  if (v143 > 3)
                  {
                    if (v143 > 5)
                    {
                      if (v143 == 6)
                      {
                        v146 = 0x100000005;
                        v147 = *(a1 + 1144);
                        v148 = *v147;
                        if (!v142)
                        {
                          goto LABEL_332;
                        }
                      }

                      else
                      {
                        v146 = 0x100000006;
                        if (v143 != 7)
                        {
LABEL_484:
                          sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/Client.cpp", 665, "", 0, "invalid argument", 0x10uLL, sub_271852CA8);
LABEL_485:
                          abort();
                        }

                        v147 = *(a1 + 1144);
                        v148 = *v147;
                        if (!v142)
                        {
LABEL_332:
                          if (*(v148 + 29) != 2)
                          {
                            sub_271379AC4(v147);
                          }

                          goto LABEL_215;
                        }
                      }
                    }

                    else if (v143 == 4)
                    {
                      v146 = 0x100000003;
                      v147 = *(a1 + 1144);
                      v148 = *v147;
                      if (!v142)
                      {
                        goto LABEL_332;
                      }
                    }

                    else
                    {
                      v146 = 0x100000004;
                      v147 = *(a1 + 1144);
                      v148 = *v147;
                      if (!v142)
                      {
                        goto LABEL_332;
                      }
                    }

                    goto LABEL_356;
                  }

                  if (v143 > 1)
                  {
                    if (v143 == 2)
                    {
                      v146 = 0x100000001;
                      v147 = *(a1 + 1144);
                      v148 = *v147;
                      if (!v142)
                      {
                        goto LABEL_332;
                      }
                    }

                    else
                    {
                      v146 = 0x100000002;
                      v147 = *(a1 + 1144);
                      v148 = *v147;
                      if (!v142)
                      {
                        goto LABEL_332;
                      }
                    }

                    goto LABEL_356;
                  }

                  if (v143)
                  {
                    if (v143 != 1)
                    {
                      goto LABEL_484;
                    }

                    if (!v142)
                    {
                      goto LABEL_215;
                    }

                    v150 = 0;
LABEL_368:
                    sub_271379F64(*(a1 + 1144), v90, v150);
                    goto LABEL_215;
                  }

                  v150 = 0x100000006;
                  if (v142)
                  {
                    goto LABEL_368;
                  }

LABEL_215:
                  v90 += 32;
                  if (v90 == v178)
                  {
                    v88 = v228;
                    a3 = v174;
                    v5 = v177;
                    break;
                  }
                }
              }

              if (*(a1 + 1160) != 1 || !v88)
              {
LABEL_411:
                if (v175 && !atomic_fetch_add(&v175->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v175->__on_zero_shared)(v175);
                  std::__shared_weak_count::__release_weak(v175);
                }

                v163 = v202;
                v3 = a1;
                if (v202 && !atomic_fetch_add(&v202->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v163->__on_zero_shared)(v163);
                  std::__shared_weak_count::__release_weak(v163);
                }

                goto LABEL_5;
              }

              v153 = *(a1 + 1144);
              if (*(*v153 + 28) == 2)
              {
                sub_27137A278(v153, &__p);
                v154 = __p;
                if (__p == *(&__p + 1))
                {
                  if (__p)
                  {
                    *(&__p + 1) = __p;
                    operator delete(__p);
                  }
                }

                else
                {
                  v155 = *(&__p + 1);
                  v156 = __p;
                  v157 = __p;
                  while (*v157 != v88)
                  {
                    v157 += 2;
                    v156 += 16;
                    if (v157 == *(&__p + 1))
                    {
                      v156 = *(&__p + 1);
                      break;
                    }
                  }

                  if (__p)
                  {
                    do
                    {
                      v159 = *(v155 - 8);
                      if (v159 && !atomic_fetch_add(&v159->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v159->__on_zero_shared)(v159);
                        std::__shared_weak_count::__release_weak(v159);
                      }

                      v155 -= 16;
                    }

                    while (v155 != v154);
                    *(&__p + 1) = v154;
                    operator delete(__p);
                    v158 = v156 == *(&v154 + 1);
                    v5 = v177;
                    if (!v158)
                    {
                      goto LABEL_405;
                    }

                    v88 = v228;
                  }

                  else
                  {
                    v158 = v156 == *(&__p + 1);
                    v5 = v177;
                    if (!v158)
                    {
                      goto LABEL_405;
                    }
                  }
                }

                v160 = v229;
                v180.__r_.__value_.__r.__words[0] = v88;
                v180.__r_.__value_.__l.__size_ = v229;
                if (v229)
                {
                  atomic_fetch_add_explicit((v229 + 8), 1uLL, memory_order_relaxed);
                  v161 = *(a1 + 1144);
                  *(&__p + 1) = v160;
                  atomic_fetch_add_explicit(&v160->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                else
                {
                  v161 = *(a1 + 1144);
                  *(&__p + 1) = 0;
                }

                *&__p = v88;
                sub_27137A184(v161, &__p);
                if (v160 && !atomic_fetch_add(&v160->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v160->__on_zero_shared)(v160);
                  std::__shared_weak_count::__release_weak(v160);
                }

                if (v180.__r_.__value_.__l.__size_ && !atomic_fetch_add((v180.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (*(*v180.__r_.__value_.__l.__size_ + 16))(v180.__r_.__value_.__l.__size_);
                  std::__shared_weak_count::__release_weak(v180.__r_.__value_.__l.__size_);
                }
              }

LABEL_405:
              if (*(**(a1 + 1144) + 116) == 2)
              {
                v162 = v229;
                if (v229)
                {
                  atomic_fetch_add_explicit((v229 + 8), 1uLL, memory_order_relaxed);
                  atomic_fetch_add_explicit(&v162->__shared_owners_, 1uLL, memory_order_relaxed);
                  if (!atomic_fetch_add(&v162->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v162->__on_zero_shared)(v162);
                    std::__shared_weak_count::__release_weak(v162);
                  }

                  if (!atomic_fetch_add(&v162->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v162->__on_zero_shared)(v162);
                    std::__shared_weak_count::__release_weak(v162);
                  }
                }
              }

              goto LABEL_411;
            }
          }

          else
          {
LABEL_81:
            v35 = 0;
            if ((SBYTE7(v216) & 0x80000000) == 0)
            {
              goto LABEL_82;
            }
          }

          operator delete(v215);
          if (!v35)
          {
            goto LABEL_112;
          }

LABEL_83:
          v36 = *(v6 + 8);
          v37 = *(v6 + 16);
          if (v37)
          {
            atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v36)
          {
            v38 = **v36;
          }

          if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v37->__on_zero_shared)(v37);
            std::__shared_weak_count::__release_weak(v37);
          }

          v39 = *(v6 + 8);
          v40 = *(v6 + 16);
          if (v40)
          {
            atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
          }

          v180.__r_.__value_.__r.__words[0] = v39;
          v180.__r_.__value_.__l.__size_ = v40;
          if (*(v3 + 1112))
          {
            (*(*v3 + 24))(v3);
            sub_2714C43EC();
          }

          v43 = *(v3 + 1120);
          v44 = *(v43 + 32);
          if (v44)
          {
            std::mutex::lock(*(v43 + 32));
            v45 = *(v43 + 40);
            v46 = *(v43 + 48);
            *&__p = v45;
            *(&__p + 1) = v46;
            if (v46)
            {
              atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::mutex::unlock(v44);
          }

          else
          {
            v45 = *(v43 + 40);
            v46 = *(v43 + 48);
            *&__p = v45;
            *(&__p + 1) = v46;
            if (v46)
            {
              atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          v5 = v177;
          sub_271501F48(v45, (v39 + 16));
          if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v46->__on_zero_shared)(v46);
            std::__shared_weak_count::__release_weak(v46);
          }

          size = v180.__r_.__value_.__l.__size_;
          if (!v180.__r_.__value_.__l.__size_)
          {
            goto LABEL_5;
          }

LABEL_171:
          if (!atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (size->__on_zero_shared)(size);
            std::__shared_weak_count::__release_weak(size);
          }

          goto LABEL_5;
        }

LABEL_57:
        v28 = *(v6 + 8);
        v29 = *(v6 + 16);
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v28)
        {
          v30 = **v28;
          v31 = __dynamic_cast(v28, &unk_28811D1B0, &unk_28811DBA0, 0) != 0;
          if (!v29)
          {
            goto LABEL_96;
          }
        }

        else
        {
          v31 = 0;
          if (!v29)
          {
            goto LABEL_96;
          }
        }

        if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
          if (v31)
          {
            goto LABEL_97;
          }

          goto LABEL_105;
        }

LABEL_96:
        if (v31)
        {
LABEL_97:
          v41 = *(v6 + 8);
          size = *(v6 + 16);
          if (size)
          {
            atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *&__p = v41;
          *(&__p + 1) = size;
LABEL_106:
          std::mutex::lock((v3 + 784));
          if ((*(v3 + 776) & 1) == 0)
          {
            v176[1] = 0u;
            v176[2] = 0u;
            *v176 = 0u;
            *(v3 + 776) = 1;
          }

          v47 = v41[1];
          v48 = v41[2];
          *(v176 + 25) = *(v41 + 41);
          *v176 = v47;
          v176[1] = v48;
          std::condition_variable::notify_all((v3 + 848));
          std::mutex::unlock((v3 + 784));
          if (!size)
          {
            goto LABEL_5;
          }

          goto LABEL_171;
        }

LABEL_105:
        size = 0;
        v41 = 0;
        __p = 0uLL;
        goto LABEL_106;
      }
    }

    v13 = 0;
    if (SBYTE7(v216) < 0)
    {
      goto LABEL_48;
    }

LABEL_20:
    if (!v13)
    {
      goto LABEL_49;
    }

LABEL_21:
    v14 = *(v6 + 8);
    v15 = *(v6 + 16);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v14)
    {
      v16 = **v14;
    }

    if (!v15 || atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v17 = *(v6 + 8);
      v18 = *(v6 + 16);
      if (!v18)
      {
        goto LABEL_29;
      }

LABEL_28:
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_29;
    }

    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    v17 = *(v6 + 8);
    v18 = *(v6 + 16);
    if (v18)
    {
      goto LABEL_28;
    }

LABEL_29:
    *&v215 = v17;
    *(&v215 + 1) = v18;
    if (*(v17 + 64) == 1)
    {
      if (*(v17 + 56))
      {
        v19 = 0;
        v20 = 1;
        if (!v18)
        {
          goto LABEL_69;
        }

LABEL_67:
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        goto LABEL_69;
      }

      if (*(v3 + 1104) == 1)
      {
        v32 = *(v17 + 32);
        __p = *(v17 + 16);
        v190 = v32;
        v191 = *(v17 + 48);
        std::mutex::lock((v3 + 968));
        sub_2714F8A98(v3 + 1032, &__p);
        std::condition_variable::notify_all((v3 + 1056));
        std::mutex::unlock((v3 + 968));
      }

      v20 = 0;
      v19 = 1;
      if (v18)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (*(v3 + 440) == 1)
      {
        v23 = *(v3 + 424);
        v24 = *(v3 + 432);
        *&__p = v23;
        *(&__p + 1) = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::mutex::lock((v23 + 8));
        ++*v23;
        std::condition_variable::notify_all((v23 + 72));
        std::mutex::unlock((v23 + 8));
        if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v24->__on_zero_shared)(v24);
          std::__shared_weak_count::__release_weak(v24);
        }
      }

      v19 = 0;
      v20 = 0;
      if (v18)
      {
        goto LABEL_67;
      }
    }

LABEL_69:
    if (v20)
    {
      break;
    }

    v5 = v177;
    if (v19)
    {
      goto LABEL_5;
    }

    v21 = v213;
    if (v213 < v214)
    {
LABEL_36:
      *v21 = off_28810C940;
      v21[1] = *(v6 + 8);
      v22 = *(v6 + 16);
      v21[2] = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = v21 + 3;
      goto LABEL_4;
    }

LABEL_3:
    v7 = sub_2713927B8(&v212, v6);
LABEL_4:
    v213 = v7;
LABEL_5:
    v6 += 24;
    if (v6 == v5)
    {
      goto LABEL_417;
    }
  }

  sub_2711CC04C(v203, "Client received invalid sync command from server.");
  v211 = 1;
  sub_271389570(8u, v203, &__p);
  *a3 = __p;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v199 == 1)
  {
    *(a3 + 40) = 0;
    v168 = v192;
    if (v192 == 1)
    {
      *(a3 + 16) = v190;
      *(a3 + 32) = v191;
      v191 = 0;
      v190 = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v169 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v198 & 1) == 0)
      {
        goto LABEL_436;
      }

LABEL_440:
      v170 = v195;
      *(v169 + 16) = v194;
      *v169 = v193;
      v193 = 0uLL;
      *(a3 + 72) = v170;
      *(a3 + 80) = v196;
      *(a3 + 96) = v197;
      v194 = 0;
      v196 = 0uLL;
      v197 = 0;
      *(a3 + 104) = 1;
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (v168)
      {
        goto LABEL_441;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v169 = a3 + 48;
      *(a3 + 104) = 0;
      if (v198)
      {
        goto LABEL_440;
      }

LABEL_436:
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (v168)
      {
LABEL_441:
        if (SHIBYTE(v191) < 0)
        {
          operator delete(v190);
        }
      }
    }
  }

  else
  {
    *(a3 + 120) = 0;
  }

  if (v211 == 1)
  {
    if (v210 == 1)
    {
      if (v209 < 0)
      {
        operator delete(v208);
      }

      if (v207 < 0)
      {
        operator delete(v206);
      }
    }

    if (v205 == 1 && v204 < 0)
    {
      operator delete(v203[0]);
    }
  }

LABEL_421:
  v164 = v212;
  if (v212)
  {
    v165 = v213;
    v166 = v212;
    if (v213 != v212)
    {
      do
      {
        v167 = *(v165 - 1);
        if (v167)
        {
          if (!atomic_fetch_add(&v167->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v167->__on_zero_shared)(v167);
            std::__shared_weak_count::__release_weak(v167);
          }
        }

        v165 -= 3;
      }

      while (v165 != v164);
      v166 = v212;
    }

    v213 = v164;
    operator delete(v166);
  }
}

void sub_27138D8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a39 == 1 && a38 < 0)
  {
    operator delete(__p);
  }

  if (v68)
  {
    std::__shared_weak_count::__release_weak(v68);
  }

  sub_27112F828(v70 - 248);
  std::__shared_weak_count::~__shared_weak_count(v69);
  operator delete(v72);
  sub_27112F828(v70 - 128);
  if (v68)
  {
    std::__shared_weak_count::__release_weak(v68);
    sub_27112F828(&a53);
    sub_271392A1C(&a68);
    _Unwind_Resume(a1);
  }

  sub_27112F828(&a53);
  sub_271392A1C(&a68);
  _Unwind_Resume(a1);
}

uint64_t sub_27138DC40(uint64_t a1)
{
  (*(*a1 + 32))(v3);
  if ((v12 & 1) == 0 && v11 == 1)
  {
    if (v10 == 1)
    {
      if (v9 < 0)
      {
        operator delete(__p);
      }

      if (v7 < 0)
      {
        operator delete(v6);
      }
    }

    if (v5 == 1 && v4 < 0)
    {
      operator delete(v3[2]);
    }
  }

  return a1 + 8;
}

uint64_t sub_27138DCF0(uint64_t a1)
{
  (*(*(a1 - 8) + 32))(v3);
  if ((v12 & 1) == 0 && v11 == 1)
  {
    if (v10 == 1)
    {
      if (v9 < 0)
      {
        operator delete(__p);
      }

      if (v7 < 0)
      {
        operator delete(v6);
      }
    }

    if (v5 == 1 && v4 < 0)
    {
      operator delete(v3[2]);
    }
  }

  return a1;
}

void sub_27138DDA0(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 24))(&v12, a2);
  if (!v12)
  {
    goto LABEL_23;
  }

  v3 = *(a1 + 1120);
  v4 = v3[4];
  if (v4)
  {
    std::mutex::lock(v3[4]);
    v5 = v3[1];
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = *v3;
        std::mutex::unlock(v4);
        if (!v7)
        {
          goto LABEL_10;
        }

        goto LABEL_21;
      }

      std::mutex::unlock(v4);
    }

    else
    {
      v6 = 0;
      std::mutex::unlock(v4);
    }

    goto LABEL_10;
  }

  v8 = v3[1];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v6 = v9;
      if (*v3)
      {
LABEL_21:
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        goto LABEL_23;
      }

LABEL_10:
      v10 = *(a1 + 1112);
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        if (v10)
        {
          goto LABEL_23;
        }
      }

      else if (v10)
      {
        goto LABEL_23;
      }

LABEL_20:
      sub_2714C40D4();
    }
  }

  if ((*(a1 + 1112) & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_23:
  v11 = v13;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_27138E600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, char *a28)
{
  sub_271167834(&a27, a28);
  sub_27112F828(&a12);
  std::mutex::unlock(v28);
  sub_27112F828(&a10);
  sub_27112F828(v29 - 112);
  _Unwind_Resume(a1);
}

void sub_27138E694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(va);
  sub_27112F828(v2 - 112);
  _Unwind_Resume(a1);
}

uint64_t sub_27138E6CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 40);
  if (*(a1 + 40) == 1)
  {
    if (!*(a2 + 40))
    {
      return v2 & 1;
    }

    v3 = *(a1 + 23);
    if (v3 >= 0)
    {
      v4 = *(a1 + 23);
    }

    else
    {
      v4 = a1[1];
    }

    v5 = *(a2 + 23);
    v6 = v5;
    if ((v5 & 0x80u) != 0)
    {
      v5 = a2[1];
    }

    if (v4 != v5)
    {
      return 0;
    }

    v7 = a1;
    if (v3 < 0)
    {
      a1 = *a1;
    }

    v8 = *a2;
    v9 = a2;
    if (v6 < 0)
    {
      a2 = *a2;
    }

    v10 = memcmp(a1, a2, v4);
    v2 = 0;
    if (v10)
    {
      return v2 & 1;
    }

    if (*(v7 + 12) != *(v9 + 12))
    {
      return v2 & 1;
    }

    a1 = v7;
    a2 = v9;
    if (*(v7 + 8) != *(v9 + 8))
    {
      return v2 & 1;
    }
  }

  else if (a2[5])
  {
    return 0;
  }

  v12 = *(a1 + 48) == *(a2 + 48) && *(a1 + 50) == *(a2 + 50);
  if (!v12 || *(a1 + 64) != *(a2 + 64) || *(a1 + 64) && a1[7] != a2[7])
  {
    return 0;
  }

  v13 = *(a1 + 128);
  v14 = *(a2 + 128);
  if (v13 != v14 || !*(a1 + 128) || (v13 = *(a1 + 120), v14 = *(a2 + 120), v13 != v14) || !*(a1 + 120))
  {
    if (v13 == v14)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (a1[14] != a2[14])
  {
    return 0;
  }

LABEL_34:
  if (a1[13])
  {
    return 0;
  }

  return (*(a2 + 104) ^ 1) & 1;
}

void sub_27138E844(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810A6E0;
  a1[1] = &unk_28810A740;
  v13[0] = 0;
  v15 = 0;
  if (*(a3 + 32) == 1)
  {
    v4 = *(a3 + 24);
    if (v4)
    {
      if (v4 == a3)
      {
        v14 = v13;
        v5 = a2;
        v6 = a4;
        (*(*v4 + 24))(v4, v13);
        a4 = v6;
        a2 = v5;
      }

      else
      {
        v14 = *(a3 + 24);
        *(a3 + 24) = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = 1;
  }

  v10[0] = 0;
  v12 = 0;
  if (*(a4 + 32) == 1)
  {
    v7 = *(a4 + 24);
    if (v7)
    {
      if (v7 == a4)
      {
        v11 = v10;
        v8 = a2;
        (*(*v7 + 24))(v7, v10);
        a2 = v8;
      }

      else
      {
        v11 = *(a4 + 24);
        *(a4 + 24) = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = 1;
  }

  if (*(a2 + 64) == 1)
  {
    v9 = *(*(a2 + 56) + 8);
  }

  sub_27138730C();
}

void sub_27138EB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27138EB80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810A6E0;
  a1[1] = &unk_28810A740;
  v13[0] = 0;
  v15 = 0;
  if (*(a3 + 32) == 1)
  {
    v4 = *(a3 + 24);
    if (v4)
    {
      if (v4 == a3)
      {
        v14 = v13;
        v5 = a2;
        v6 = a4;
        (*(*v4 + 24))(v4, v13);
        a4 = v6;
        a2 = v5;
      }

      else
      {
        v14 = *(a3 + 24);
        *(a3 + 24) = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = 1;
  }

  v10[0] = 0;
  v12 = 0;
  if (*(a4 + 32) == 1)
  {
    v7 = *(a4 + 24);
    if (v7)
    {
      if (v7 == a4)
      {
        v11 = v10;
        v8 = a2;
        (*(*v7 + 24))(v7, v10);
        a2 = v8;
      }

      else
      {
        v11 = *(a4 + 24);
        *(a4 + 24) = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = 1;
  }

  if (*(a2 + 64) == 1)
  {
    v9 = *(*(a2 + 56) + 8);
  }

  sub_27138730C();
}

void sub_27138EE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_27138EEB0(void *result)
{
  *result = &unk_28810A6E0;
  v1 = result[3];
  result[1] = &unk_28810A740;
  result[2] = 0;
  result[3] = 0;
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      result = v2;
    }

    v3 = result[3];
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
  }

  return result;
}

void sub_27138EFB8(void *a1)
{
  *(a1 - 1) = &unk_28810A6E0;
  v1 = a1[2];
  *a1 = &unk_28810A740;
  a1[1] = 0;
  a1[2] = 0;
  if (v1)
  {
    if (atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = a1[2];
      if (!v2)
      {
        return;
      }
    }

    else
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      v2 = a1[2];
      if (!v2)
      {
        return;
      }
    }

    if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);

      std::__shared_weak_count::__release_weak(v2);
    }
  }
}

void sub_27138F0CC(void *a1)
{
  *a1 = &unk_28810A6E0;
  v1 = a1[3];
  a1[1] = &unk_28810A740;
  a1[2] = 0;
  a1[3] = 0;
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = a1;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      a1 = v2;
    }

    v3 = a1[3];
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  JUMPOUT(0x2743BF050);
}

void sub_27138F1E8(void *a1)
{
  *(a1 - 1) = &unk_28810A6E0;
  v1 = a1[2];
  *a1 = &unk_28810A740;
  a1[1] = 0;
  a1[2] = 0;
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = a1;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      a1 = v2;
    }

    v3 = a1[2];
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27138F3B4(uint64_t a1)
{
  (*(**(a1 + 16) + 32))(v3);
  if ((v12 & 1) == 0 && v11 == 1)
  {
    if (v10 == 1)
    {
      if (v9 < 0)
      {
        operator delete(__p);
      }

      if (v7 < 0)
      {
        operator delete(v6);
      }
    }

    if (v5 == 1 && v4 < 0)
    {
      operator delete(v3[2]);
    }
  }

  return a1 + 8;
}

uint64_t sub_27138F468(uint64_t a1)
{
  (*(**(a1 + 8) + 32))(v3);
  if ((v12 & 1) == 0 && v11 == 1)
  {
    if (v10 == 1)
    {
      if (v9 < 0)
      {
        operator delete(__p);
      }

      if (v7 < 0)
      {
        operator delete(v6);
      }
    }

    if (v5 == 1 && v4 < 0)
    {
      operator delete(v3[2]);
    }
  }

  return a1;
}

void *sub_27138F534(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = sub_271120E64(a1, "Client<", 7);
  v18 = a2;
  v24 = 0;
  sub_271136C48(&v22, v23, &v18);
  if (v24 == -1)
  {
    sub_2711308D4();
  }

  v22 = &v21;
  (off_2881312E0[v24])(__p, &v22, v23);
  if (v24 != -1)
  {
    (off_288131298[v24])(&v22, v23);
  }

  if ((v20 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v5 = v20;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_271120E64(v3, v4, v5);
  v7 = sub_271120E64(v6, ">{", 2);
  v8 = *(a2 + 16);
  v9 = (*(*v8 + 24))(v8);
  sub_2718179D4(v9, v23);
  v10 = sub_271120E64(v7, v23, 36);
  v11 = sub_271120E64(v10, ", tcp/ip ", 9);
  if (v8[144])
  {
    v12 = "enabled";
  }

  else
  {
    v12 = "disabled";
  }

  if (v8[144])
  {
    v13 = 7;
  }

  else
  {
    v13 = 8;
  }

  v14 = sub_271120E64(v11, v12, v13);
  result = sub_271120E64(v14, "}", 1);
  if (v20 < 0)
  {
    v16 = result;
    operator delete(__p[0]);
    result = v16;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27138F6F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::mutex **sub_27138F744(std::mutex **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    std::mutex::~mutex(v2);
    MEMORY[0x2743BF050]();
    return v3;
  }

  return v1;
}

void sub_27138F798(void *a1)
{
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    std::mutex::~mutex(v3);
    MEMORY[0x2743BF050]();
  }

  v4 = a1[3];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27138F8B4(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v2 = v1[1];
  v3 = *(v2 + 8);
  v5 = *(v2 + 7);
  v6 = v2[16];
  v4 = **v1;
  v13[0] = &unk_288108AC8;
  v13[1] = v4;
  v13[3] = v13;
  v14 = 1;
  v11 = 0;
  v12 = 0;
  v9 = v4;
  v10 = 1;
  v8 = v3;
  v7 = &unk_28810C118;
  operator new();
}

void sub_27138FB48(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  sub_2711D66B0(v2 - 80);
  _Unwind_Resume(a1);
}

uint64_t sub_27138FBEC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288108AC8;
  a2[1] = v2;
  return result;
}

void sub_27138FC18(uint64_t a1, uint64_t *a2)
{
  sub_27138B9F4(*(a1 + 8), a2, &v3);
  if ((v13 & 1) == 0 && v12 == 1)
  {
    if (v11 == 1)
    {
      if (v10 < 0)
      {
        operator delete(__p);
      }

      if (v8 < 0)
      {
        operator delete(v7);
      }
    }

    if (v6 == 1 && v5 < 0)
    {
      v2 = v4;

      operator delete(v2);
    }
  }
}

uint64_t sub_27138FCB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3kit3viz6Client4Impl15CommandReceiverE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3kit3viz6Client4Impl15CommandReceiverE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3kit3viz6Client4Impl15CommandReceiverE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit3viz6Client4Impl15CommandReceiverE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_27138FD2C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    sub_27112F6CC(a1 + 16, (a2 + 16));
    *(a1 + 112) = 1;
  }

  return a1;
}

__n128 sub_27138FD98(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  if (*(a1 + 48) != *(a2 + 48))
  {
    if (!*(a1 + 48))
    {
      v8 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v8;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 24) = 0;
      *(a1 + 48) = 1;
      v5 = *(a1 + 200);
      if (v5 == *(a2 + 200))
      {
        goto LABEL_12;
      }

LABEL_15:
      if (v5)
      {
        v9 = a1;
        sub_27139007C(a1 + 56);
        a1 = v9;
      }

      else
      {
        v10 = *(a2 + 56);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 56) = v10;
        *(a2 + 64) = 0;
        *(a2 + 72) = 0;
        *(a2 + 56) = 0;
        v11 = *(a2 + 80);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 80) = v11;
        *(a2 + 88) = 0;
        *(a2 + 96) = 0;
        *(a2 + 80) = 0;
        v12 = *(a2 + 104);
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 104) = v12;
        *(a2 + 112) = 0;
        *(a2 + 120) = 0;
        *(a2 + 104) = 0;
        v13 = *(a2 + 128);
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 128) = v13;
        *(a2 + 128) = 0;
        *(a2 + 136) = 0;
        *(a2 + 144) = 0;
        v14 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v14;
        *(a2 + 152) = 0;
        *(a2 + 160) = 0;
        *(a2 + 168) = 0;
        v15 = *(a2 + 176);
        *(a1 + 192) = *(a2 + 192);
        *(a1 + 176) = v15;
        *(a2 + 176) = 0;
        *(a2 + 184) = 0;
        *(a2 + 192) = 0;
        *(a1 + 200) = 1;
      }

      goto LABEL_18;
    }

    if (*(a1 + 47) < 0)
    {
      v6 = a1;
      operator delete(*(a1 + 24));
      a1 = v6;
    }

    *(a1 + 48) = 0;
LABEL_11:
    v5 = *(a1 + 200);
    if (v5 == *(a2 + 200))
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if (!*(a1 + 48))
  {
    goto LABEL_11;
  }

  if (*(a1 + 47) < 0)
  {
    v3 = a1;
    operator delete(*(a1 + 24));
    a1 = v3;
  }

  v4 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v4;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  v5 = *(a1 + 200);
  if (v5 != *(a2 + 200))
  {
    goto LABEL_15;
  }

LABEL_12:
  if (v5)
  {
    v7 = a1;
    sub_27138FF64(a1 + 56, (a2 + 56));
    a1 = v7;
  }

LABEL_18:
  result = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = result;
  return result;
}

uint64_t sub_27138FF64(uint64_t a1, __int128 *a2)
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
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v9;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  return a1;
}

void sub_27139007C(uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
      if ((*(a1 + 119) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(a1 + 95) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a1 + 96));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 71) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

LABEL_12:
    operator delete(*(a1 + 72));
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
LABEL_6:
      if ((*(a1 + 47) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

LABEL_13:
    operator delete(*(a1 + 48));
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
LABEL_8:
        *(a1 + 144) = 0;
        return;
      }

LABEL_15:
      operator delete(*a1);
      goto LABEL_8;
    }

LABEL_14:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }
}

uint64_t sub_27139013C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 24) = 0;
  *(a1 + 16) = v4;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178((a1 + 24), *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
    }

    *(a1 + 48) = 1;
  }

  *(a1 + 56) = 0;
  *(a1 + 200) = 0;
  if (*(a2 + 200) == 1)
  {
    sub_2711B0ED4(a1 + 56, (a2 + 56));
    *(a1 + 200) = 1;
  }

  v6 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = v6;
  return a1;
}

void sub_271390200(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271390244(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = result;
  v4 = a2;
  LOBYTE(v6[0]) = 0;
  v15 = 0;
  if (*(a3 + 96) != 1)
  {
    *result = a2;
    *(result + 8) = &off_288132228;
    *(result + 16) = 0;
    *(result + 112) = 0;
    return result;
  }

  sub_27112F6CC(v6, a3);
  v15 = 1;
  *v3 = v4;
  *(v3 + 8) = &off_288132228;
  *(v3 + 16) = 0;
  *(v3 + 112) = 0;
  *(v3 + 40) = 0;
  if (v8 == 1)
  {
    *(v3 + 16) = *v6;
    *(v3 + 32) = v7;
    v6[1] = 0;
    v7 = 0;
    v6[0] = 0;
    *(v3 + 40) = 1;
  }

  *(v3 + 48) = 0;
  *(v3 + 104) = 0;
  if (v14)
  {
    v5 = v11;
    *(v3 + 64) = v10;
    *(v3 + 48) = *v9;
    v9[0] = 0;
    v9[1] = 0;
    *(v3 + 72) = v5;
    *(v3 + 80) = *__p;
    *(v3 + 96) = v13;
    __p[1] = 0;
    v13 = 0;
    v10 = 0;
    __p[0] = 0;
    *(v3 + 104) = 1;
    *(v3 + 112) = 1;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v10) & 0x80000000) == 0)
      {
LABEL_7:
        if (v8 != 1)
        {
          return v3;
        }

        goto LABEL_14;
      }
    }

    else if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    operator delete(v9[0]);
    if (v8 != 1)
    {
      return v3;
    }
  }

  else
  {
    *(v3 + 112) = 1;
    if (v8 != 1)
    {
      return v3;
    }
  }

LABEL_14:
  if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    return v3;
  }

  operator delete(v6[0]);
  return v3;
}

void sub_2713903D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_271390404(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v2 = *v1;
  v8 = 0;
  LOWORD(__p) = 0;
  v10 = 0;
  v3 = v1[1];
  v4 = v3[1];
  v5[0] = *v3;
  v5[1] = v4;
  v6 = 1;
  v7 = 1;
  LOBYTE(v11) = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  LOBYTE(v15) = 0;
  v16 = 0;
  LOBYTE(v17) = 0;
  v18 = 0;
  LOBYTE(v19) = 0;
  v20 = 0;
  sub_2713907D0(v5, &v11);
}

void sub_271390780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_271396310(&a26);
  sub_2714FBE4C(&a16);
  sub_271134CBC(v26 - 256);
  sub_271181F68(&a19);
  _Unwind_Resume(a1);
}

void sub_2713907B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_271134CBC(v11 - 256);
  sub_271181F68(va);
  _Unwind_Resume(a1);
}

void sub_2713907D0(__int128 *a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  if (*(a2 + 24) == 1)
  {
    *v11 = *a2;
    v12 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v13 = 1;
  }

  v14 = *(a2 + 32);
  v15 = *(a2 + 48);
  LOBYTE(v16) = 0;
  v18 = 0;
  if (*(a2 + 80) == 1)
  {
    v16 = *(a2 + 56);
    v17 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v18 = 1;
    LOBYTE(v19) = 0;
    v23 = 0;
    if (*(a2 + 144) != 1)
    {
LABEL_5:
      LOBYTE(v24[0]) = 0;
      v26 = 0;
      if (*(a2 + 184) != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
    v23 = 0;
    if (*(a2 + 144) != 1)
    {
      goto LABEL_5;
    }
  }

  _X2 = 0;
  _X3 = 0;
  v20 = *(a2 + 112);
  v19 = *(a2 + 96);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v21 = _X2;
  v22 = 0;
  v23 = 1;
  LOBYTE(v24[0]) = 0;
  v26 = 0;
  if (*(a2 + 184) != 1)
  {
LABEL_7:
    sub_2711EAFA4(v11, v27);
    sub_271390E38(&v10, a1);
  }

LABEL_6:
  *v24 = *(a2 + 160);
  v25 = *(a2 + 176);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  v26 = 1;
  goto LABEL_7;
}

void sub_271390B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271134CBC(v3 + 16);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_271390B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_271390E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271390E38(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a2 + 6);
  operator new();
}

void *sub_271390FCC(void *a1)
{
  *a1 = &unk_2881313F8;
  sub_271134CBC((a1 + 12));
  return a1;
}

void sub_271391010(void *a1)
{
  *a1 = &unk_2881313F8;
  sub_271134CBC((a1 + 12));

  JUMPOUT(0x2743BF050);
}

void sub_271391084(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808787F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808787F0))
    {
      sub_271392200();
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_2711C1280(&xmmword_2808787D8, "{", __p, ",");
}

void sub_271391184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713911A0(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.net");
  *(a1 + 24) = 2;
}

void *sub_27139121C(void *a1)
{
  *a1 = &unk_2881313F8;
  sub_271134CBC((a1 + 12));
  return a1;
}

void sub_271391260(void *a1)
{
  *a1 = &unk_2881313F8;
  sub_271134CBC((a1 + 12));

  JUMPOUT(0x2743BF050);
}

void sub_2713912C4()
{
  if ((atomic_load_explicit(&qword_2808787D0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808787D0))
    {
      sub_271391F88();
    }
  }

  sub_271391A3C(&xmmword_2808787B8, "{");
}

void sub_271391378(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

uint64_t sub_2713913B8(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288132918, &unk_288131460, 0);
  if (!v5)
  {
    return 0;
  }

  if (a1 == lpsrc)
  {
    return 1;
  }

  v6 = *(a1 + 56);
  v7 = v6 == *(v5 + 56);
  if (v6 == *(v5 + 56) && v6 != 0)
  {
    v9 = *(a1 + 48);
    v10 = v5[12];
    v7 = v10 == v9;
    if (v9 != -1 && v10 == v9)
    {
      v13 = &v12;
      return (off_288131288[v9])(&v13, a1 + 8, v5 + 2);
    }
  }

  return v7;
}

void sub_2713914CC()
{
  if ((atomic_load_explicit(&qword_2808787B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808787B0))
  {
    sub_2718519B4("cv3d::kit::viz::Sync]", 0x14uLL, &xmmword_280878798);
    __cxa_guard_release(&qword_2808787B0);
  }

  sub_271391644(&xmmword_280878798, "{");
}

BOOL sub_271391580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 != *a3)
  {
    return 0;
  }

  v3 = *(a2 + 16);
  v4 = *(a3 + 16);
  if (v3 != v4 || v3 == 0)
  {
    if (v3 != v4)
    {
      return 0;
    }
  }

  else if (*(a2 + 8) != *(a3 + 8))
  {
    return 0;
  }

  v6 = *(a3 + 32);
  v7 = *(a2 + 32);
  result = v7 == v6;
  if (v7 == v6 && v7 != 0)
  {
    return *(a2 + 24) == *(a3 + 24);
  }

  return result;
}

BOOL sub_2713915F0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (*a2 != *a3 || *(a2 + 1) != *(a3 + 1))
  {
    return 0;
  }

  v3 = a3[24];
  v4 = a2[24];
  result = v4 == v3;
  if (v4 == v3 && v4 != 0)
  {
    return *(a2 + 2) == *(a3 + 2);
  }

  return result;
}

void sub_271391644(__int128 *a1, uint64_t a2)
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
  sub_2713917F0();
}

void sub_271391788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713917A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713917B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713917C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713917DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713919F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271391A3C(__int128 *a1, uint64_t a2)
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
  sub_271391C6C();
}

void sub_271391BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271391BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271391C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271391C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271391C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271391C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271391C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271391F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_2808787B0);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_27139205C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27139208C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 20;
  strcpy(&__p, "cv3d::kit::viz::Sync");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2711309E8(v9, v11, 1uLL);
  sub_271851AD8(a1, v9, a2);
  v4 = v9[0];
  if (v9[0])
  {
    v5 = v9[1];
    v6 = v9[0];
    if (v9[1] != v9[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v9[0];
    }

    v9[1] = v4;
    operator delete(v6);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2713921C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27137F4D0(va);
  if (*(v2 - 25) < 0)
  {
    operator delete(*(v2 - 48));
  }

  _Unwind_Resume(a1);
}

void sub_271392200()
{
  v2[12] = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  *(&__p.__r_.__value_.__s + 23) = 20;
  strcpy(&__p, "cv3d::kit::viz::Sync");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271392488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
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

uint64_t sub_2713925E0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288107838;
  a2[1] = v2;
  return result;
}

uint64_t sub_27139260C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 440) != 1)
  {
    goto LABEL_8;
  }

  v2 = *(v1 + 400);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = *(v1 + 392);
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v3;
    (v3->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_8:
    v5 = 1;
    return v5 & (*(v1 + 144) ^ 1u);
  }

  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_6:
  v5 = 0;
  return v5 & (*(v1 + 144) ^ 1u);
}

uint64_t sub_2713926B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN4cv3d3kit3viz6Client4Impl8SyncImplENSt3__18optionalINS4_6chrono8durationIxNS4_5ratioILl1ELl1000000000EEEEEEEENK3$_0clEvEUlvE0_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN4cv3d3kit3viz6Client4Impl8SyncImplENSt3__18optionalINS4_6chrono8durationIxNS4_5ratioILl1ELl1000000000EEEEEEEENK3$_0clEvEUlvE0_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN4cv3d3kit3viz6Client4Impl8SyncImplENSt3__18optionalINS4_6chrono8durationIxNS4_5ratioILl1ELl1000000000EEEEEEEENK3$_0clEvEUlvE0_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN4cv3d3kit3viz6Client4Impl8SyncImplENSt3__18optionalINS4_6chrono8durationIxNS4_5ratioILl1ELl1000000000EEEEEEEENK3$_0clEvEUlvE0_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_27139272C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void *sub_2713927B8(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((a1[1] - *a1) >> 3));
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  *v6 = off_28810C940;
  v6[1] = v8;
  v6[2] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *a1;
  v10 = a1[1];
  v11 = (v6 - (v10 - *a1));
  v12 = v6 + 3;
  if (v10 != *a1)
  {
    v13 = 24 * v2 - 8 * ((v10 - *a1) >> 3);
    v14 = *a1;
    v15 = v11;
    do
    {
      *v15 = off_28810C940;
      *(v15 + 8) = *(v14 + 1);
      v14[1] = 0;
      v14[2] = 0;
      v14 += 3;
      v15 += 24;
      v13 += 24;
    }

    while (v14 != v10);
    do
    {
      v16 = v9[2];
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v12;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v12;
}

uint64_t sub_2713929C8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(*v2 + 64);
  if (!v3)
  {
    sub_27112AFFC();
  }

  v4 = v2[1];
  v5 = *(*v3 + 48);

  return v5();
}

void **sub_271392A1C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 24;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_271392AD0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if ((*a2 & 1) == 0)
  {
    sub_271120E64(**(a2 + 8), ",", 1);
  }

  *a2 = 0;
  v5 = *(a2 + 8);
  if (*(v4 + 40) == 1)
  {
    sub_271120E64(*v5, "{", 1);
    operator new();
  }

  sub_271120E64(*v5, "nullopt", 7);
  v6 = a1[1];
  if ((*a2 & 1) == 0)
  {
    sub_271120E64(**(a2 + 8), ",", 1);
  }

  *a2 = 0;
  sub_271120E64(**(a2 + 8), "{", 1);
  operator new();
}

void sub_27139336C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27139342C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881064D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2713934C8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106150;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271393544(void *__src)
{
  v2 = *MEMORY[0x277D85DE8];
  memcpy(__dst, __src, sizeof(__dst));
  operator new();
}

void sub_271393754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  __cxa_free_exception(v12);
  sub_271816C9C(&a9);
  sub_271816C9C(&a12);
  _Unwind_Resume(a1);
}

void sub_271393778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271393794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_271816C9C(&a9);
  sub_271816C9C(&a12);
  _Unwind_Resume(a1);
}

int **sub_2713937B0(int **result, char *__b, char *a3)
{
  if (__b == a3)
  {
    return result;
  }

  v4 = result;
  v5 = a3 - __b;
  v6 = (a3 - __b) >> 2;
  v7 = v6 - 1;
  if (v6 >= 1)
  {
    memset(__b, 139, v5);
  }

  v9 = *v4;
  v8 = v4[1];
  v10 = v8 - *v4;
  v11 = v10 >> 2;
  v12 = 11;
  v13 = 7;
  v14 = 5;
  v15 = 3;
  if (v6 <= 6)
  {
    v15 = v7 >> 1;
  }

  if (v6 <= 0x26)
  {
    v14 = v15;
  }

  if (v6 <= 0x43)
  {
    v13 = v14;
  }

  if (v6 <= 0x26E)
  {
    v12 = v13;
  }

  v16 = v10 >> 2;
  v17 = (v6 - v12) >> 1;
  v18 = v17 + v12;
  v19 = v11 + 1;
  if (v11 + 1 > v6)
  {
    v20 = v11 + 1;
  }

  else
  {
    v20 = v6;
  }

  v21 = *&__b[4 * v17];
  v22 = 1664525 * (*__b ^ *&__b[v5 - 4] ^ v21 ^ ((*__b ^ *&__b[v5 - 4] ^ v21) >> 27));
  result = (v22 + v21);
  *&__b[4 * v17] = result;
  v23 = v22 + v16;
  *&__b[4 * v18] += v23;
  *__b = v23;
  v24 = v17 % v6;
  v25 = v18 % v6;
  if (v8 == v9)
  {
    v26 = 0;
    if (v6 <= v19)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v26 = 0;
    v27 = 2;
    if (v19 > 2)
    {
      v27 = v11 + 1;
    }

    v28 = v27 - 1;
    do
    {
      if (v26 + 1 == v6)
      {
        v26 = 0;
      }

      else
      {
        ++v26;
      }

      if (v7 + 1 == v6)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      if (v24 + 1 == v6)
      {
        v24 = 0;
      }

      else
      {
        ++v24;
      }

      if (v25 + 1 == v6)
      {
        v25 = 0;
      }

      else
      {
        ++v25;
      }

      v29 = *&__b[4 * v24];
      v30 = 1664525 * (*&__b[4 * v26] ^ *&__b[4 * v7] ^ v29 ^ ((*&__b[4 * v26] ^ *&__b[4 * v7] ^ v29) >> 27));
      *&__b[4 * v24] = v30 + v29;
      v31 = *v9++;
      v32 = v31 + v26 + v30;
      result = (v32 + *&__b[4 * v25]);
      *&__b[4 * v25] = result;
      *&__b[4 * v26] = v32;
      --v28;
    }

    while (v28);
    if (v6 <= v19)
    {
      goto LABEL_49;
    }
  }

  v33 = ~v11 + v20;
  do
  {
    if (v26 + 1 == v6)
    {
      v26 = 0;
    }

    else
    {
      ++v26;
    }

    if (v7 + 1 == v6)
    {
      v7 = 0;
    }

    else
    {
      ++v7;
    }

    if (v24 + 1 == v6)
    {
      v24 = 0;
    }

    else
    {
      ++v24;
    }

    if (v25 + 1 == v6)
    {
      v25 = 0;
    }

    else
    {
      ++v25;
    }

    v34 = *&__b[4 * v24];
    v35 = *&__b[4 * v26] ^ *&__b[4 * v7] ^ v34;
    v36 = 1664525 * (v35 ^ (v35 >> 27));
    *&__b[4 * v24] = v36 + v34;
    v37 = v36 + v26;
    *&__b[4 * v25] += v37;
    *&__b[4 * v26] = v37;
    --v33;
  }

  while (v33);
LABEL_49:
  if (v20 < v20 + v6)
  {
    v38 = v6;
    do
    {
      if (v26 + 1 == v6)
      {
        v26 = 0;
      }

      else
      {
        ++v26;
      }

      if (v7 + 1 == v6)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      if (v24 + 1 == v6)
      {
        v24 = 0;
      }

      else
      {
        ++v24;
      }

      if (v25 + 1 == v6)
      {
        v25 = 0;
      }

      else
      {
        ++v25;
      }

      v39 = *&__b[4 * v24];
      v40 = v39 + *&__b[4 * v26] + *&__b[4 * v7];
      v41 = 1566083941 * (v40 ^ (v40 >> 27));
      *&__b[4 * v24] = v41 ^ v39;
      v42 = v41 - v26;
      *&__b[4 * v25] ^= v42;
      *&__b[4 * v26] = v42;
      --v38;
    }

    while (v38);
  }

  return result;
}

void sub_271393A8C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106D58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271393AE0(uint64_t a1)
{
  v1 = *(a1 + 2544);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

unsigned int *sub_271393B60(unsigned int *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 2496);
  v4 = (v3 + 1) % 0x270uLL;
  v5 = *(*a2 + 4 * v4);
  v6 = v5 & 0x7FFFFFFE | *(*a2 + 4 * v3) & 0x80000000;
  if (v5)
  {
    v7 = -1727483681;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 ^ *(*a2 + 4 * ((v3 + 397) % 0x270uLL)) ^ (v6 >> 1);
  *(v2 + 4 * v3) = v8;
  v9 = ((v8 ^ (v8 >> 11)) << 7) & 0x9D2C5680 ^ v8 ^ (v8 >> 11);
  *result = (v9 << 15) & 0xEFC60000 ^ v9 ^ (((v9 << 15) & 0xEFC60000 ^ v9) >> 18);
  if (v4 == 623)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4 + 1;
  }

  v11 = *(v2 + 4 * v10);
  v12 = v11 & 0x7FFFFFFE | *(v2 + 4 * v4) & 0x80000000;
  if (v4 >= 0xE3)
  {
    v13 = -227;
  }

  else
  {
    v13 = 397;
  }

  v14 = *(v2 + 4 * (v13 + v4));
  if (v11)
  {
    v15 = -1727483681;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15 ^ v14 ^ (v12 >> 1);
  *(v2 + 4 * v4) = v16;
  v17 = ((v16 ^ (v16 >> 11)) << 7) & 0x9D2C5680 ^ v16 ^ (v16 >> 11);
  result[1] = (v17 << 15) & 0xEFC60000 ^ v17 ^ (((v17 << 15) & 0xEFC60000 ^ v17) >> 18);
  v18 = (v10 + 1) % 0x270;
  v19 = *(v2 + 4 * v18);
  if (v19)
  {
    v20 = -1727483681;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 ^ *(v2 + 4 * ((v10 + 397) % 0x270)) ^ ((v19 & 0x7FFFFFFE | *(v2 + 4 * v10) & 0x80000000) >> 1);
  *(v2 + 4 * v10) = v21;
  v22 = ((v21 ^ (v21 >> 11)) << 7) & 0x9D2C5680 ^ v21 ^ (v21 >> 11);
  result[2] = (v22 << 15) & 0xEFC60000 ^ v22 ^ (((v22 << 15) & 0xEFC60000 ^ v22) >> 18);
  if (v18 == 623)
  {
    v23 = 0;
  }

  else
  {
    v23 = v18 + 1;
  }

  v24 = *(v2 + 4 * v23);
  if (v18 >= 0xE3)
  {
    v25 = -227;
  }

  else
  {
    v25 = 397;
  }

  v26 = *(v2 + 4 * (v25 + v18));
  if (v24)
  {
    v27 = -1727483681;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27 ^ v26 ^ ((v24 & 0x7FFFFFFE | *(v2 + 4 * v18) & 0x80000000) >> 1);
  *(v2 + 4 * v18) = v28;
  v29 = ((v28 ^ (v28 >> 11)) << 7) & 0x9D2C5680 ^ v28 ^ (v28 >> 11);
  result[3] = (v29 << 15) & 0xEFC60000 ^ v29 ^ (((v29 << 15) & 0xEFC60000 ^ v29) >> 18);
  *(v2 + 2496) = v23;
  return result;
}

void sub_271393D58(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = v1[1];
  v4 = v3[1];
  v8 = *v3;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v3[3];
  v5 = v3[4];
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(v2 + 712);
  if (!v7)
  {
    sub_27112AFFC();
  }

  (*(*v7 + 48))(v11);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (v20)
    {
      return;
    }
  }

  else if (v20)
  {
    return;
  }

  sub_27138A894(v1[2], v11);
  if ((v20 & 1) == 0 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11[2]);
    }
  }
}

void sub_271393F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}