void sub_2714B45F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a10);
  _Unwind_Resume(a1);
}

void sub_2714B4620(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713B2190(va);
  _Unwind_Resume(a1);
}

void sub_2714B4634(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8) - *a2) >> 5;
  if (*(a1 + 40))
  {
    v5 = *(a1 + 24);
    v12 = *(a1 + 32);
    sub_271120E64(v5, &v12, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v4);
  ++*(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (v7 != *a2)
  {
    do
    {
      sub_271839128(a1, v6);
      v8 = *(v6 + 24);
      if (*(a1 + 40))
      {
        v9 = *(a1 + 24);
        v13 = *(a1 + 32);
        sub_271120E64(v9, &v13, 1);
      }

      MEMORY[0x2743BE7E0](*(a1 + 24), v8);
      ++*(a1 + 40);
      v6 += 32;
    }

    while (v6 != v7);
  }

  if (*(a2 + 48) == 1)
  {
    v11 = 1;
    sub_2718388F8(a1, &v11);
    sub_271839128(a1, a2 + 24);
  }

  else
  {
    v10 = 0;
    sub_2718388F8(a1, &v10);
  }
}

void sub_2714B4768(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    __src = 4;
    sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
    v7 = __src;
    sub_2717312C0(a2);
    sub_2713DEB74(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    __src = 5;
    sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
    v6 = __src;
    sub_2717312C0(a2);
    sub_2713DEA44(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    __src = 6;
    sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
    v5 = __src;
    sub_2717312C0(a2);
    sub_2713B93E0(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  __src = 1;
  sub_27173318C(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
  sub_2717312C0(a2);
  sub_2714B491C(a2, v3 + 200);
  v9 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v9 + 10) = *(a2 + 32) - v9 - 18;
  *(a2 + 56) -= 8;
}

void sub_2714B491C(uint64_t a1, uint64_t a2)
{
  sub_2714B1860(&v8, a2);
  LOBYTE(__p) = 0;
  v12 = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178(&__p, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      __p = *(a2 + 24);
      v11 = *(a2 + 40);
    }

    v12 = 1;
  }

  sub_2714B4A5C(a1, &v8);
  if (v12 == 1 && SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  v4 = v8;
  if (v8)
  {
    v5 = v9;
    v6 = v8;
    if (v9 != v8)
    {
      do
      {
        v7 = *(v5 - 9);
        v5 -= 4;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v8;
    }

    v9 = v4;
    operator delete(v6);
  }
}

void sub_2714B4A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a10);
  _Unwind_Resume(a1);
}

void sub_2714B4A48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713B2190(va);
  _Unwind_Resume(a1);
}

char *sub_2714B4A5C(uint64_t a1, uint64_t *a2)
{
  v18 = (a2[1] - *a2) >> 5;
  sub_27173318C(a1 + 24, *(a1 + 32), &v18, &__src, 8uLL);
  v4 = *a2;
  v5 = a2[1];
  if (v5 != *a2)
  {
    do
    {
      v6 = *(v4 + 23);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(v4 + 8);
      }

      __src = v6;
      sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v20, 8uLL);
      v7 = *(v4 + 23);
      if (v7 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = *v4;
      }

      if (v7 >= 0)
      {
        v9 = *(v4 + 23);
      }

      else
      {
        v9 = *(v4 + 8);
      }

      sub_27173318C(a1 + 24, *(a1 + 32), v8, &v8[v9], v9);
      LODWORD(__src) = *(v4 + 24);
      sub_27173318C(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
      v4 += 32;
    }

    while (v4 != v5);
  }

  if (*(a2 + 48) == 1)
  {
    LOBYTE(__src) = 1;
    sub_27173318C(a1 + 24, *(a1 + 32), &__src, &__src + 1, 1uLL);
    v10 = *(a2 + 47);
    if ((v10 & 0x80u) != 0)
    {
      v10 = a2[4];
    }

    __src = v10;
    sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v20, 8uLL);
    v11 = *(a2 + 47);
    if (v11 >= 0)
    {
      p_src = a2 + 3;
    }

    else
    {
      p_src = a2[3];
    }

    if (v11 >= 0)
    {
      v13 = *(a2 + 47);
    }

    else
    {
      v13 = a2[4];
    }

    v14 = *(a1 + 32);
    v15 = a1 + 24;
    v16 = p_src + v13;
  }

  else
  {
    LOBYTE(__src) = 0;
    v14 = *(a1 + 32);
    v15 = a1 + 24;
    p_src = &__src;
    v16 = &__src + 1;
    v13 = 1;
  }

  return sub_27173318C(v15, v14, p_src, v16, v13);
}

void sub_2714B4C08(uint64_t a1, uint64_t a2)
{
  sub_2714B1860(&v8, a2);
  LOBYTE(__p) = 0;
  v12 = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178(&__p, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      __p = *(a2 + 24);
      v11 = *(a2 + 40);
    }

    v12 = 1;
  }

  sub_2714B4D48(a1, &v8);
  if (v12 == 1 && SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  v4 = v8;
  if (v8)
  {
    v5 = v9;
    v6 = v8;
    if (v9 != v8)
    {
      do
      {
        v7 = *(v5 - 9);
        v5 -= 4;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v8;
    }

    v9 = v4;
    operator delete(v6);
  }
}

void sub_2714B4D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a10);
  _Unwind_Resume(a1);
}

void sub_2714B4D34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713B2190(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714B4D48(uint64_t a1, uint64_t *a2)
{
  v7 = (a2[1] - *a2) >> 5;
  (*(*a1 + 120))(a1, &v7);
  v4 = *a2;
  v5 = a2[1];
  if (v5 != *a2)
  {
    do
    {
      (*(*a1 + 144))(a1, v4);
      v8 = *(v4 + 24);
      (*(*a1 + 56))(a1, &v8);
      v4 += 32;
    }

    while (v4 != v5);
  }

  if (*(a2 + 48) == 1)
  {
    v10 = 1;
    (*(*a1 + 80))(a1, &v10);
    return (*(*a1 + 144))(a1, a2 + 3);
  }

  else
  {
    v9 = 0;
    return (*(*a1 + 80))(a1, &v9);
  }
}

void sub_2714B4ED8(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v6)
  {
    sub_2714B5510(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v8)
  {
    sub_2714B60D8(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
    if (v10)
    {
      sub_2714B6750(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
    if (v12)
    {
      sub_2714B71A8(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
      if (v14)
      {
        sub_2714B7978(&v16, v14);
      }

      else
      {
        sub_2714B50A4(&v15, a1);
      }
    }
  }
}

void sub_2714B50A4(uint64_t *a1, void **a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0(v3 + 16, v22);
    sub_2713B2524(v34, v22);
    sub_2713E031C(v3 + 16, v34);
    if (v46 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v45;
        v11 = __p;
        if (v45 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v45 = v9;
        operator delete(v11);
      }
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v33 != 1)
    {
      goto LABEL_66;
    }

    v13 = v31;
    if (!v31)
    {
      goto LABEL_66;
    }

    v17 = v32;
    v15 = v31;
    if (v32 == v31)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v31;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v22);
  sub_2713B2524(v34, v22);
  sub_2713E031C(v3 + 16, v34);
  if (v46 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v45;
      v7 = __p;
      if (v45 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v45 = v5;
      operator delete(v7);
    }
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v33 != 1)
  {
    goto LABEL_66;
  }

  v13 = v31;
  if (!v31)
  {
    goto LABEL_66;
  }

  v14 = v32;
  v15 = v31;
  if (v32 != v31)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v32 = v13;
  operator delete(v15);
LABEL_66:
  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (v24 == 1 && v23 < 0)
  {
    operator delete(v22[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  v19 = *a2;
  v22[0] = a2[1];
  v20 = v22[0];
  v34[0] = 6;
  v19[13](a2, v34);
  if (v20 < 1)
  {
    if (v34[0] < 3)
    {
      sub_2713C66D4(v34, a2, v3 + 16, v34[0]);
    }

    else
    {
      sub_2713C68E0(a2, v3 + 16, v34[0]);
    }
  }

  else
  {
    sub_2713C62C8(v22, a2, v3 + 16, v34[0]);
  }

  v22[0] = a2[1];
  sub_2714B7FDC(v22, a2, v3 + 200);
  v21 = *MEMORY[0x277D85DE8];
}

void sub_2714B5510(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713BB450(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_2714B59E8(uint64_t a1, void ***a2)
{
  sub_2714B2E00(a2, &__p);
  v4 = *(a1 + 104);
  *(a1 + 88) = "logger_enable_state_changes";
  *(a1 + 96) = 27;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_2714B5B58(a1, __p.i64);
  sub_2714B3078(&__p, &v14);
  v5 = *a2;
  if (*a2)
  {
    v6 = a2[1];
    v7 = *a2;
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 9);
        v6 -= 4;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *a2;
    }

    a2[1] = v5;
    operator delete(v7);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v14;
  v9 = __p.i64[0];
  a2[2] = v15;
  if (v9)
  {
    v10 = __p.i64[1];
    v11 = v9;
    if (__p.i64[1] != v9)
    {
      do
      {
        v12 = *(v10 - 9);
        v10 -= 4;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p.i64[0];
    }

    __p.i64[1] = v9;
    operator delete(v11);
  }

  v13 = *(a1 + 104);
  *(a1 + 88) = "target_context";
  *(a1 + 96) = 14;
  if ((v13 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_2713BBFEC(a1, (a2 + 3));
}

void sub_2714B5B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714B5B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714B5B58(uint64_t a1, uint64_t *a2)
{
  v20[0] = *(a1 + 32);
  v4 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v20);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v5 = *(a1 + 32);
  v6 = *v5;
  if (v6 == 2)
  {
    v7 = (*(*(v5 + 1) + 8) - **(v5 + 1)) >> 4;
  }

  else if (v6 == 1)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(v5 + 1) + 8) - **(v5 + 1)) >> 3);
  }

  else
  {
    if (!*v5)
    {
      v7 = 0;
      v8 = (a2 + 1);
      v9 = a2[1];
      v10 = *a2;
      v11 = (v9 - *a2) >> 5;
      goto LABEL_13;
    }

    v7 = 1;
  }

  v8 = (a2 + 1);
  v9 = a2[1];
  v10 = *a2;
  v11 = (v9 - *a2) >> 5;
  if (v7 > v11)
  {
    sub_2714B5DB4(a2, v7 - v11);
    v13 = a2;
    v12 = *a2;
    if (v12 == v13[1])
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_13:
  if (v11 <= v7)
  {
    v12 = *a2;
    if (v12 == v9)
    {
      goto LABEL_24;
    }

LABEL_19:
    v16 = *(a1 + 32);
    v20[0] = v12;
    v20[1] = v12 + 24;
    v21 = v16;
    v17 = sub_27182D6C4(a1);
    ++*(a1 + 112);
    *(a1 + 32) = v17;
    sub_27182D194(a1 + 40, &v21);
    sub_2717313F0(a1 + 64, (a1 + 112));
    *(a1 + 112) = 0;
    if (*(a1 + 104) == 1)
    {
      *(a1 + 104) = 0;
    }

    v21 = a1;
    sub_2714B5F10(v20, &v21);
  }

  v14 = (v10 + 32 * v7);
  while (v9 != v14)
  {
    v15 = *(v9 - 9);
    v9 -= 4;
    if (v15 < 0)
    {
      operator delete(*v9);
    }
  }

  *v8 = v14;
  v12 = *a2;
  if (v12 != v14)
  {
    goto LABEL_19;
  }

LABEL_24:
  v18 = *(a1 + 48);
  v19 = *(a1 + 72);
  *(a1 + 32) = *(v18 - 8);
  *(a1 + 112) = *(v19 - 8);
  *(a1 + 48) = v18 - 8;
  *(a1 + 72) = v19 - 8;
}

void sub_2714B5DB4(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v3) >> 5)
  {
    if (a2)
    {
      v9 = 32 * a2;
      v10 = v3 + 32 * a2;
      do
      {
        *v3 = 0;
        *(v3 + 8) = 0;
        *(v3 + 24) = 0;
        *(v3 + 16) = 0;
        v3 += 32;
        v9 -= 32;
      }

      while (v9);
      v3 = v10;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = (v3 - *a1) >> 5;
    v6 = v5 + a2;
    if ((v5 + a2) >> 59)
    {
      sub_271135560();
    }

    v7 = v4 - *a1;
    if (v7 >> 4 > v6)
    {
      v6 = v7 >> 4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFE0)
    {
      v8 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 59))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v11 = 32 * v5;
    v12 = 32 * a2;
    v13 = 32 * v5 + 32 * a2;
    v14 = 32 * v5;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 24) = 0;
      *(v14 + 16) = 0;
      v14 += 32;
      v12 -= 32;
    }

    while (v12);
    v15 = *a1;
    v16 = *(a1 + 8) - *a1;
    v17 = v11 - v16;
    memcpy((v11 - v16), *a1, v16);
    *a1 = v17;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_2714B5F10(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = sub_27182D6C4(*a2);
  ++*(v5 + 112);
  v14 = 0;
  v13 = 0uLL;
  sub_2715D6E6C(v6, &v13);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  v7 = v13;
  *(v4 + 16) = v14;
  *v4 = v7;
  v8 = a1[1];
  v9 = *a2;
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  v10 = sub_27182D6C4(v9);
  ++v9[14];
  v14 = 0;
  v13 = 0uLL;
  sub_2715D6E6C(v10, &v13);
  v12 = v14;
  *__p = v13;
  operator new();
}

void sub_2714B6054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = v22;
  a17 = 0;
  sub_27184D728(&a17, v23);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2714B60D8(uint64_t *a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0(v3 + 16, v21);
    sub_2713B2524(v33, v21);
    sub_2713E031C(v3 + 16, v33);
    if (v45 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v44;
        v11 = __p;
        if (v44 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v44 = v9;
        operator delete(v11);
      }
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (v32 != 1)
    {
      goto LABEL_66;
    }

    v13 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

    v17 = v31;
    v15 = v30;
    if (v31 == v30)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v30;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v21);
  sub_2713B2524(v33, v21);
  sub_2713E031C(v3 + 16, v33);
  if (v45 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v44;
      v7 = __p;
      if (v44 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v44 = v5;
      operator delete(v7);
    }
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v32 != 1)
  {
    goto LABEL_66;
  }

  v13 = v30;
  if (!v30)
  {
    goto LABEL_66;
  }

  v14 = v31;
  v15 = v30;
  if (v31 != v30)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v31 = v13;
  operator delete(v15);
LABEL_66:
  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  LODWORD(v21[0]) = 6;
  sub_27183FB7C(*(a2 + 48), v21);
  sub_2713BF6F4(v21, a2, v3 + 16, v21[0]);
  LODWORD(v21[0]) = 1;
  sub_27183FB7C(*(a2 + 48), v21);
  result = sub_2714B64FC(v21, a2, v3 + 200);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2714B64FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  sub_27183FF6C(*(a2 + 48), &v9);
  *&v8 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v8 + 1) = v9;
  sub_2713BF82C(a2 + 24, &v8);
  sub_2714B6654(a2, a3);
  LOBYTE(v8) = 0;
  sub_27183F824(*(a2 + 48), &v8);
  if (v8)
  {
    if ((*(a3 + 48) & 1) == 0)
    {
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 1;
    }

    sub_2718403E0(*(a2 + 48), (a3 + 24));
  }

  else if (*(a3 + 48))
  {
    if (*(a3 + 47) < 0)
    {
      operator delete(*(a3 + 24));
    }

    *(a3 + 48) = 0;
  }

  v5 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v7 = *(v5 - 16) - result + *(v5 - 8);
  if (v7)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v7);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_2714B6654(uint64_t a1, void *a2)
{
  v10 = (a2[1] - *a2) >> 5;
  sub_27183FF6C(*(a1 + 48), &v10);
  v4 = a2[1];
  v5 = (v4 - *a2) >> 5;
  if (v10 > v5)
  {
    sub_2714B5DB4(a2, v10 - v5);
    v8 = a2;
    i = *a2;
    v7 = v8[1];
    if (v7 == i)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v10 >= v5)
  {
    v7 = a2[1];
    i = *a2;
    if (v4 == i)
    {
      return;
    }

    goto LABEL_12;
  }

  v7 = *a2 + 32 * v10;
  while (v4 != v7)
  {
    v9 = *(v4 - 9);
    v4 -= 4;
    if (v9 < 0)
    {
      operator delete(*v4);
    }
  }

  a2[1] = v7;
  for (i = *a2; i != v7; i += 32)
  {
LABEL_12:
    sub_2718403E0(*(a1 + 48), i);
    v11 = 0;
    sub_27183FACC(*(a1 + 48), &v11);
    *(i + 24) = v11;
  }
}

void sub_2714B6750(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713C0E9C(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_2714B6C28(uint64_t a1, void ***a2)
{
  sub_2714B2E00(a2, &__p);
  v4 = *(a1 + 104);
  *(a1 + 88) = "logger_enable_state_changes";
  *(a1 + 96) = 27;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_2714B6D98(a1, __p.i64);
  sub_2714B3078(&__p, &v14);
  v5 = *a2;
  if (*a2)
  {
    v6 = a2[1];
    v7 = *a2;
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 9);
        v6 -= 4;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *a2;
    }

    a2[1] = v5;
    operator delete(v7);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v14;
  v9 = __p.i64[0];
  a2[2] = v15;
  if (v9)
  {
    v10 = __p.i64[1];
    v11 = v9;
    if (__p.i64[1] != v9)
    {
      do
      {
        v12 = *(v10 - 9);
        v10 -= 4;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p.i64[0];
    }

    __p.i64[1] = v9;
    operator delete(v11);
  }

  v13 = *(a1 + 104);
  *(a1 + 88) = "target_context";
  *(a1 + 96) = 14;
  if ((v13 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  sub_2713C1708(a1, (a2 + 3));
}

void sub_2714B6D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714B6D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2711BEA2C(va);
  _Unwind_Resume(a1);
}

void sub_2714B6D98(uint64_t a1, uint64_t *a2)
{
  v20[0] = *(a1 + 32);
  v4 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_27182D194(a1 + 40, v20);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v5 = *(a1 + 32);
  v6 = *v5;
  if (v6 == 2)
  {
    v7 = (*(*(v5 + 1) + 8) - **(v5 + 1)) >> 4;
  }

  else if (v6 == 1)
  {
    v7 = *(*(v5 + 1) + 16);
  }

  else
  {
    if (!*v5)
    {
      v7 = 0;
      v8 = (a2 + 1);
      v9 = a2[1];
      v10 = *a2;
      v11 = (v9 - *a2) >> 5;
      goto LABEL_13;
    }

    v7 = 1;
  }

  v8 = (a2 + 1);
  v9 = a2[1];
  v10 = *a2;
  v11 = (v9 - *a2) >> 5;
  if (v7 > v11)
  {
    sub_2714B5DB4(a2, v7 - v11);
    v13 = a2;
    v12 = *a2;
    if (v12 == v13[1])
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_13:
  if (v11 <= v7)
  {
    v12 = *a2;
    if (v12 == v9)
    {
      goto LABEL_24;
    }

LABEL_19:
    v16 = *(a1 + 32);
    v20[0] = v12;
    v20[1] = v12 + 24;
    v21 = v16;
    v17 = sub_27182D2AC(a1);
    ++*(a1 + 112);
    *(a1 + 32) = v17;
    sub_27182D194(a1 + 40, &v21);
    sub_2717313F0(a1 + 64, (a1 + 112));
    *(a1 + 112) = 0;
    if (*(a1 + 104) == 1)
    {
      *(a1 + 104) = 0;
    }

    v21 = a1;
    sub_2714B6FE0(v20, &v21);
  }

  v14 = (v10 + 32 * v7);
  while (v9 != v14)
  {
    v15 = *(v9 - 9);
    v9 -= 4;
    if (v15 < 0)
    {
      operator delete(*v9);
    }
  }

  *v8 = v14;
  v12 = *a2;
  if (v12 != v14)
  {
    goto LABEL_19;
  }

LABEL_24:
  v18 = *(a1 + 48);
  v19 = *(a1 + 72);
  *(a1 + 32) = *(v18 - 8);
  *(a1 + 112) = *(v19 - 8);
  *(a1 + 48) = v18 - 8;
  *(a1 + 72) = v19 - 8;
}

void sub_2714B6FE0(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = sub_27182D2AC(*a2);
  ++*(v5 + 112);
  v14 = 0;
  v13 = 0uLL;
  sub_2715D666C(v6, &v13);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  v7 = v13;
  *(v4 + 16) = v14;
  *v4 = v7;
  v8 = a1[1];
  v9 = *a2;
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  v10 = sub_27182D2AC(v9);
  ++v9[14];
  v14 = 0;
  v13 = 0uLL;
  sub_2715D666C(v10, &v13);
  v12 = v14;
  *__p = v13;
  operator new();
}

void sub_2714B7124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = v22;
  a17 = 0;
  sub_27184D728(&a17, v23);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714B71A8(uint64_t *a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0(v3 + 16, v22);
    sub_2713B2524(v35, v22);
    sub_2713E031C(v3 + 16, v35);
    if (v47 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v46;
        v11 = __p;
        if (v46 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v46 = v9;
        operator delete(v11);
      }
    }

    if (v44 == 1 && v43 < 0)
    {
      operator delete(v42);
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v34 != 1)
    {
      goto LABEL_66;
    }

    v13 = v32;
    if (!v32)
    {
      goto LABEL_66;
    }

    v17 = v33;
    v15 = v32;
    if (v33 == v32)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v32;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v22);
  sub_2713B2524(v35, v22);
  sub_2713E031C(v3 + 16, v35);
  if (v47 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v46;
      v7 = __p;
      if (v46 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v46 = v5;
      operator delete(v7);
    }
  }

  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v34 != 1)
  {
    goto LABEL_66;
  }

  v13 = v32;
  if (!v32)
  {
    goto LABEL_66;
  }

  v14 = v33;
  v15 = v32;
  if (v33 != v32)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v33 = v13;
  operator delete(v15);
LABEL_66:
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  LODWORD(v22[0]) = 6;
  sub_27183A9AC(a2, v22);
  if (LODWORD(v22[0]) >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = v22[0];
  }

  if (LODWORD(v22[0]) > 2)
  {
    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, v22);
      if (SHIBYTE(v23) < 0)
      {
        if (v22[1] == 1 && *(a2 + 72) == *v22[0])
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v23) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v23) == 1 && *(a2 + 72) == LOBYTE(v22[0]))
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v23) < 0)
      {
LABEL_93:
        operator delete(v22[0]);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  sub_2713C30AC(v22, a2, v3 + 16, v19);
LABEL_95:
  sub_2714B7678(v22, a2, v3 + 200);
  v21 = *MEMORY[0x277D85DE8];
}

void sub_2714B7678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(__p[0]) = 1;
  sub_27183A9AC(a2, __p);
  sub_2714B781C(a2, a3);
  v6 = 0;
  sub_271839D90(a2, &v6);
  if (v6)
  {
    if ((*(a3 + 48) & 1) == 0)
    {
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 1;
    }

    ++*(a2 + 80);
    if (*(a2 + 128) == 1 && *(a2 + 131) == 1)
    {
      *(a2 + 132) = 1;
    }

    else
    {
      sub_27183D78C(a2, __p);
      if (*(a3 + 47) < 0)
      {
        operator delete(*(a3 + 24));
      }

      *(a3 + 24) = *__p;
      *(a3 + 40) = v8;
      ++*(a2 + 104);
    }
  }

  else if (*(a3 + 48))
  {
    if (*(a3 + 47) < 0)
    {
      operator delete(*(a3 + 24));
    }

    *(a3 + 48) = 0;
  }

  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a2, __p);
    if (SHIBYTE(v8) < 0)
    {
      if (__p[1] == 1 && *(a2 + 72) == *__p[0])
      {
LABEL_23:
        v5 = 0;
        if (SHIBYTE(v8) < 0)
        {
          goto LABEL_26;
        }

        goto LABEL_14;
      }
    }

    else if (SHIBYTE(v8) == 1 && *(a2 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_23;
    }

    v5 = 1;
    if (SHIBYTE(v8) < 0)
    {
LABEL_26:
      operator delete(__p[0]);
    }

LABEL_14:
    if ((v5 & 1) == 0)
    {
      return;
    }
  }
}

void sub_2714B781C(uint64_t a1, void *a2)
{
  v11 = (a2[1] - *a2) >> 5;
  sub_27183B6AC(a1, &v11);
  v4 = a2[1];
  v5 = (v4 - *a2) >> 5;
  if (v11 > v5)
  {
    sub_2714B5DB4(a2, v11 - v5);
    v8 = a2;
    i = *a2;
    v7 = v8[1];
    if (v7 == i)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v11 >= v5)
  {
    v7 = a2[1];
    i = *a2;
    if (v4 == i)
    {
      return;
    }

    goto LABEL_17;
  }

  v7 = *a2 + 32 * v11;
  while (v4 != v7)
  {
    v9 = *(v4 - 9);
    v4 -= 4;
    if (v9 < 0)
    {
      operator delete(*v4);
    }
  }

  a2[1] = v7;
  for (i = *a2; i != v7; i += 32)
  {
LABEL_17:
    ++*(a1 + 80);
    if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
    {
      *(a1 + 132) = 1;
    }

    else
    {
      sub_27183D78C(a1, &v12);
      if (*(i + 23) < 0)
      {
        operator delete(*i);
      }

      v10 = v12;
      *(i + 16) = v13;
      *i = v10;
      ++*(a1 + 104);
    }

    LODWORD(v12) = 0;
    sub_27183A66C(a1, &v12);
    *(i + 24) = v12;
  }
}

void *sub_2714B7978(uint64_t *a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0(v3 + 16, v21);
    sub_2713B2524(v33, v21);
    sub_2713E031C(v3 + 16, v33);
    if (v45 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v44;
        v11 = __p;
        if (v44 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v44 = v9;
        operator delete(v11);
      }
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (v32 != 1)
    {
      goto LABEL_66;
    }

    v13 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

    v17 = v31;
    v15 = v30;
    if (v31 == v30)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v30;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v21);
  sub_2713B2524(v33, v21);
  sub_2713E031C(v3 + 16, v33);
  if (v45 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v44;
      v7 = __p;
      if (v44 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v44 = v5;
      operator delete(v7);
    }
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v32 != 1)
  {
    goto LABEL_66;
  }

  v13 = v30;
  if (!v30)
  {
    goto LABEL_66;
  }

  v14 = v31;
  v15 = v30;
  if (v31 != v30)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v31 = v13;
  operator delete(v15);
LABEL_66:
  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  sub_2713C49D0(v21, a2, v3 + 16);
  result = sub_2714B7D68(v21, a2, (v3 + 200));
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2714B7D68(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  a2[6] = v3 + 4;
  sub_27173170C(a2);
  sub_2714B7E58(a2, a3);
  v13[0] = "target_context";
  v13[1] = 14;
  v13[2] = a3 + 3;
  result = sub_2713C4ED8(a2, v13);
  v10 = a2[12];
  v11 = a2[9];
  a2[6] = *(v10 - 8) + *(v11 - 8) + 8;
  a2[9] = v11 - 8;
  a2[12] = v10 - 8;
  return result;
}

void sub_2714B7E58(void *a1, uint64_t *a2)
{
  v3 = a1[6];
  v2 = a1[7];
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    goto LABEL_20;
  }

  v8 = *a2;
  v9 = a2[1];
  v10 = v9 - *a2;
  v11 = *(a1[3] + v3);
  a1[6] = v3 + 8;
  if (v11 > v10 >> 5)
  {
    sub_2714B5DB4(a2, v11 - (v10 >> 5));
    v14 = a2;
    v12 = *a2;
    v13 = v14[1];
    if (v13 != v12)
    {
      goto LABEL_15;
    }

    return;
  }

  if (v11 < v10 >> 5)
  {
    v13 = (v8 + 32 * v11);
    while (v9 != v13)
    {
      v15 = *(v9 - 9);
      v9 -= 4;
      if (v15 < 0)
      {
        operator delete(*v9);
      }
    }

    a2[1] = v13;
    v12 = *a2;
    if (v13 == v12)
    {
      return;
    }

    while (1)
    {
LABEL_15:
      sub_2717318E8(a1, v12);
      v16 = a1[6];
      v17 = a1[7];
      v4 = v17 >= v16;
      v18 = v17 - v16;
      if (!v4)
      {
        v18 = 0;
      }

      if (v18 <= 3)
      {
        break;
      }

      v19 = *(a1[3] + v16);
      a1[6] = v16 + 4;
      *(v12 + 24) = v19;
      v12 += 32;
      if (v12 == v13)
      {
        return;
      }
    }

LABEL_20:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v13 = v9;
  v12 = *a2;
  if (v9 != *a2)
  {
    goto LABEL_15;
  }
}

void sub_2714B7FDC(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = 1;
  (*(*a2 + 104))(a2, &v6);
  if (*a1 < 1)
  {
    sub_2714B8344(a2, a3);
    v7 = 0;
    (*(*a2 + 80))(a2, &v7);
    if (v7)
    {
      if ((*(a3 + 48) & 1) == 0)
      {
        *(a3 + 24) = 0;
        *(a3 + 32) = 0;
        *(a3 + 40) = 0;
        *(a3 + 48) = 1;
      }

      (*(*a2 + 144))(a2, a3 + 24);
    }

    else if (*(a3 + 48))
    {
      if (*(a3 + 47) < 0)
      {
        operator delete(*(a3 + 24));
      }

      *(a3 + 48) = 0;
    }
  }

  else
  {
    sub_2714B8130(a1, a2, a3);
  }
}

void sub_2714B8130(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    v8 = 1;
    (*(*a2 + 104))(a2, &v8);
    if (v8 >= 2)
    {
      v7 = v8;
      if ((atomic_load_explicit(&qword_2808789D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808789D0))
      {
        sub_2718519B4("cv3d::kit::viz::UpdateEnabledLoggersSample]", 0x2AuLL, &stru_2808789B8);
        __cxa_guard_release(&qword_2808789D0);
        sub_271847D5C(&stru_2808789B8, v7, 1u);
      }

      sub_271847D5C(&stru_2808789B8, v7, 1u);
    }

    v5 = *a1;
  }

  if (v5 > 0)
  {
    (*(*a2 + 16))(a2);
  }

  sub_2714B8344(a2, a3);
  v9 = 0;
  (*(*a2 + 80))(a2, &v9);
  if (v9)
  {
    if ((*(a3 + 48) & 1) == 0)
    {
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 1;
    }

    (*(*a2 + 144))(a2, a3 + 24);
  }

  else if (*(a3 + 48))
  {
    if (*(a3 + 47) < 0)
    {
      operator delete(*(a3 + 24));
    }

    *(a3 + 48) = 0;
  }

  if (v5 >= 1)
  {
    (*(*a2 + 24))(a2);
  }
}

void sub_2714B8344(uint64_t a1, void *a2)
{
  v10 = (a2[1] - *a2) >> 5;
  (*(*a1 + 120))(a1, &v10);
  v4 = a2[1];
  v5 = (v4 - *a2) >> 5;
  if (v10 > v5)
  {
    sub_2714B5DB4(a2, v10 - v5);
    v8 = a2;
    i = *a2;
    v7 = v8[1];
    if (v7 == i)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v10 >= v5)
  {
    v7 = a2[1];
    i = *a2;
    if (v4 == i)
    {
      return;
    }

    goto LABEL_12;
  }

  v7 = *a2 + 32 * v10;
  while (v4 != v7)
  {
    v9 = *(v4 - 9);
    v4 -= 4;
    if (v9 < 0)
    {
      operator delete(*v4);
    }
  }

  a2[1] = v7;
  for (i = *a2; i != v7; i += 32)
  {
LABEL_12:
    (*(*a1 + 144))(a1, i);
    v11 = 0;
    (*(*a1 + 56))(a1, &v11);
    *(i + 24) = v11;
  }
}

void *sub_2714B8710(void *a1)
{
  *a1 = &unk_288131C18;
  sub_271134CBC((a1 + 10));
  return a1;
}

void sub_2714B8754(void *a1)
{
  *a1 = &unk_288131C18;
  sub_271134CBC((a1 + 10));

  JUMPOUT(0x2743BF050);
}

void sub_2714B87C8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878A30, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878A30))
    {
      sub_2714B99D4();
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_2711C1280(&xmmword_280878A18, "{", __p, ",");
}

void sub_2714B88C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714B88E4(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.net");
  *(a1 + 24) = 5;
}

void *sub_2714B8960(void *a1)
{
  *a1 = &unk_288131C18;
  sub_271134CBC((a1 + 10));
  return a1;
}

void sub_2714B89A4(void *a1)
{
  *a1 = &unk_288131C18;
  sub_271134CBC((a1 + 10));

  JUMPOUT(0x2743BF050);
}

void sub_2714B8A08()
{
  if ((atomic_load_explicit(&qword_280878A10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878A10))
    {
      sub_2714B9740();
    }
  }

  sub_2714B91F4(&xmmword_2808789F8, "{");
}

void sub_2714B8ABC(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

BOOL sub_2714B8AFC(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288132918, &unk_288131C80, 0);
  if (v5)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    v6 = *(a1 + 48);
    v7 = v6 == *(v5 + 48);
    if (v6 != *(v5 + 48) || v6 == 0)
    {
      return v7;
    }

    if (*(a1 + 8) == v5[1])
    {
      v10 = *(a1 + 24);
      v11 = *(v5 + 24);
      if (v10 != v11 || v10 == 0)
      {
        if (v10 != v11)
        {
          return 0;
        }

LABEL_19:
        v13 = *(a1 + 40);
        v7 = v13 == *(v5 + 40);
        if (v13 == *(v5 + 40) && *(a1 + 40))
        {
          return *(a1 + 32) == v5[4];
        }

        return v7;
      }

      if (*(a1 + 16) == v5[2])
      {
        goto LABEL_19;
      }
    }
  }

  return 0;
}

uint64_t sub_2714B8C3C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808789F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808789F0))
  {
    sub_2718519B4("cv3d::kit::viz::UpdateSyncConfiguration]", 0x27uLL, &xmmword_2808789D8);
    __cxa_guard_release(&qword_2808789F0);
  }

  return sub_2714B8CF0(&xmmword_2808789D8, "{", a1 + 8, "}");
}

uint64_t sub_2714B8CF0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v9, *a1, *(a1 + 1));
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 2);
  }

  v11 = 1;
  v12 = &v9;
  v13 = a2;
  v14 = &v9;
  v15 = a2;
  v16 = a2;
  sub_271136F58(&v14, &v9);
  sub_2714B8E9C(&v8, &v9, a3);
  v12 = &v9;
  v13 = a4;
  v14 = &v9;
  v15 = a4;
  v16 = a4;
  if (v11 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (*(&off_2881319B8 + v11))(&v17, &v9);
  if (v11 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v17;
  result = (off_288131958[v11])(&v12, &v9);
  if (v11 != -1)
  {
    return (off_288131940[v11])(&v12, &v9);
  }

  return result;
}

void sub_2714B8E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B8E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B8E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B8E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B8E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714B8E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = "{";
  v11 = a2;
  v12 = "{";
  v13 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_7;
  }

  v14 = &v9;
  (*(&off_2881319B8 + v3))(&v14);
  if (*(a3 + 40) == 1)
  {
    sub_2714B8FA8();
  }

  v9 = a2;
  v10 = "nullopt";
  v11 = a2;
  v12 = "nullopt";
  v13 = "nullopt";
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    goto LABEL_7;
  }

  v14 = &v9;
  (*(&off_2881319D0 + v6))(&v14, a2);
  v9 = a2;
  v10 = "}";
  v11 = a2;
  v12 = "}";
  v13 = "}";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
LABEL_7:
    sub_2711308D4();
  }

  v14 = &v9;
  return (*(&off_2881319B8 + v7))(&v14, a2);
}

void sub_2714B91B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714B91F4(__int128 *a1, uint64_t a2)
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
  sub_2714B9424();
}

void sub_2714B9394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B93AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B93C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B93D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B93E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B93FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B9410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714B96B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_2808789F0);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_2714B9814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714B9994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714B99D4()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_2714B9C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
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

BOOL sub_2714B9D68(uint64_t a1, uint64_t a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0(a1 + 16, &v40);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v40);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v40);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_271399EB0(a2 + 16, &v25);
  }

  else if (v5 == 1)
  {
    sub_2713DA430(a2 + 16, &v25);
  }

  else
  {
    if (v5)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a2 + 16, &v25);
  }

  if (v40 != v25)
  {
    goto LABEL_22;
  }

  if (v41 != v26)
  {
    goto LABEL_22;
  }

  v24[0] = &v42;
  v24[1] = &v45;
  v24[2] = &v46;
  v24[3] = &v49;
  v24[4] = &v52;
  v23[0] = &v27;
  v23[1] = &v30;
  v23[2] = &v31;
  v23[3] = &v34;
  v23[4] = &__p;
  if (!sub_2714FBB90(v24, v23))
  {
    goto LABEL_22;
  }

  v6 = *(a2 + 248);
  v7 = *(a1 + 248);
  v8 = v7 == v6;
  if (v7 == v6 && *(a1 + 248))
  {
    if (*(a1 + 208) != *(a2 + 208))
    {
LABEL_22:
      v8 = 0;
      goto LABEL_23;
    }

    v9 = *(a1 + 224);
    v10 = *(a2 + 224);
    if (v9 == v10 && *(a1 + 224))
    {
      if (*(a1 + 216) != *(a2 + 216))
      {
        goto LABEL_22;
      }
    }

    else if (v9 != v10)
    {
      goto LABEL_22;
    }

    v21 = *(a2 + 240);
    v22 = *(a1 + 240);
    v8 = v22 == v21;
    if (v22 == v21 && *(a1 + 240))
    {
      v8 = *(a1 + 232) == *(a2 + 232);
    }
  }

LABEL_23:
  if (v39 == 1)
  {
    v11 = __p;
    if (__p)
    {
      v12 = v38;
      v13 = __p;
      if (v38 == __p)
      {
LABEL_36:
        v38 = v11;
        operator delete(v13);
        goto LABEL_37;
      }

      while (1)
      {
        v14 = v12;
        if (*(v12 - 16) == 1 && *(v12 - 41) < 0)
        {
          operator delete(*(v12 - 8));
          v12 -= 12;
          if (*(v14 - 72) == 1)
          {
LABEL_31:
            if (*(v14 - 73) < 0)
            {
              operator delete(*v12);
            }
          }
        }

        else
        {
          v12 -= 12;
          if (*(v14 - 72) == 1)
          {
            goto LABEL_31;
          }
        }

        if (v12 == v11)
        {
          v13 = __p;
          goto LABEL_36;
        }
      }
    }
  }

LABEL_37:
  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v33 == 1 && v32 < 0)
  {
    operator delete(v31);
  }

  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (v54 == 1)
  {
    v15 = v52;
    if (v52)
    {
      v16 = v53;
      v17 = v52;
      if (v53 == v52)
      {
LABEL_59:
        v53 = v15;
        operator delete(v17);
        goto LABEL_60;
      }

      while (1)
      {
        v18 = v16;
        if (*(v16 - 16) == 1 && *(v16 - 41) < 0)
        {
          operator delete(*(v16 - 8));
          v16 -= 12;
          if (*(v18 - 72) == 1)
          {
LABEL_54:
            if (*(v18 - 73) < 0)
            {
              operator delete(*v16);
            }
          }
        }

        else
        {
          v16 -= 12;
          if (*(v18 - 72) == 1)
          {
            goto LABEL_54;
          }
        }

        if (v16 == v15)
        {
          v17 = v52;
          goto LABEL_59;
        }
      }
    }
  }

LABEL_60:
  if (v51 == 1 && v50 < 0)
  {
    operator delete(v49);
  }

  if (v48 == 1 && v47 < 0)
  {
    operator delete(v46);
  }

  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_2714BA13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

void sub_2714BA178(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v6)
  {
    sub_2714BA730(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v8)
  {
    sub_2714BB368(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v10)
    {
      sub_2714BB7BC(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v12)
    {
      sub_2714BC3F4(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v14)
      {
        sub_2714BC748(&v16, v14);
      }

      else
      {
        sub_2714BA344(&v15, a1);
      }
    }
  }
}

uint64_t sub_2714BA344(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v13 = 4;
    (*(*a2 + 104))(a2, &v13);
    v10 = v13;
    if (v9 >= 1)
    {
      if (v9 == 2)
      {
        v13 = 3;
        (*(*a2 + 104))(a2, &v13);
      }

      (*(*a2 + 16))(a2);
      sub_2713DFA84(a2, v3 + 16, v10);
      goto LABEL_16;
    }

    sub_2713DFA84(a2, v3 + 16, v13);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v13 = 5;
    (*(*a2 + 104))(a2, &v13);
    v8 = v13;
    if (v7 >= 1)
    {
      if (v7 == 2)
      {
        v13 = 3;
        (*(*a2 + 104))(a2, &v13);
      }

      (*(*a2 + 16))(a2);
      sub_2713DF128(a2, v3 + 16, v8);
      goto LABEL_16;
    }

    sub_2713DF128(a2, v3 + 16, v13);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = a2[2];
    v13 = 6;
    (*(*a2 + 104))(a2, &v13);
    v6 = v13;
    if (v5 >= 1)
    {
      if (v5 == 2)
      {
        v13 = 3;
        (*(*a2 + 104))(a2, &v13);
      }

      (*(*a2 + 16))(a2);
      sub_2713B9F84(a2, v3 + 16, v6);
LABEL_16:
      (*(*a2 + 24))(a2);
      goto LABEL_17;
    }

    sub_2713B9F84(a2, v3 + 16, v13);
  }

LABEL_17:
  v11 = a2[2];
  v13 = 1;
  (*(*a2 + 104))(a2, &v13);
  if (v11 < 1)
  {
    return sub_2714BCA54(a2, v3 + 200);
  }

  if (v11 == 2)
  {
    v13 = 1;
    (*(*a2 + 104))(a2, &v13);
  }

  (*(*a2 + 16))(a2);
  sub_2714BCA54(a2, v3 + 200);
  return (*(*a2 + 24))(a2);
}

void sub_2714BA730(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_27182791C(a2 + 48, v5);
        v7 = sub_2718289B0(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_2718289B0(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_2715CC40C(&v26, v10);
        }

        sub_2713B29CC(a2, v3 + 16);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_27182791C(a2 + 48, v12);
    v14 = sub_2718289B0(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_2718289B0(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_2715CC40C(&v26, v17);
    }

    sub_2713DA6CC(a2, v3 + 16);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_27182791C(a2 + 48, v19);
  v21 = sub_2718289B0(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_2718289B0(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_2715CC40C(&v26, v24);
  }

  sub_2713DAF34(a2, v3 + 16);
}

void sub_2714BAB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  sub_27182791C(a2 + 48, (a2 + 40));
  v5 = sub_2718289B0(a2);
  *(a2 + 40) = v5;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, v6 = *(a2 + 72), v7 = *v6, v8 = *(v6 + 3), v7 == *"version") ? (v9 = v8 == *"sion") : (v9 = 0), v9))
  {
    *(a2 + 96) = 1;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    LOBYTE(v22[0]) = 6;
    *(&v22[0] + 1) = 1;
    v10 = sub_2718289B0(a2);
    v11 = *v10;
    *v10 = 6;
    LOBYTE(v22[0]) = v11;
    v12 = v10[1];
    v10[1] = *(&v22[0] + 1);
    *(&v22[0] + 1) = v12;
    sub_2715CC40C(v22 + 1, v11);
    v5 = *(a2 + 40);
  }

  v13 = *(a3 + 16);
  v22[0] = *a3;
  v22[1] = v13;
  v22[2] = *(a3 + 32);
  v23 = *(a3 + 48);
  if (*v5 <= 1u)
  {
    v14 = *(a2 + 88);
    *(a2 + 72) = "initial_sync_command";
    *(a2 + 80) = 20;
    if ((v14 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  if (v23)
  {
    v20 = *(a2 + 8);
    sub_2714BAD98(&v20, a2, v22 + 8);
  }

  else
  {
    LOBYTE(v20) = 0;
    v21 = 0;
    v15 = sub_2718289B0(a2);
    v16 = *v15;
    *v15 = 0;
    LOBYTE(v20) = v16;
    v17 = v15[1];
    v15[1] = v21;
    v21 = v17;
    sub_2715CC40C(&v21, v16);
  }

  v18 = *(a2 + 56);
  *(a2 + 40) = *(v18 - 8);
  *(a2 + 56) = v18 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2714BAD98(int *a1, uint64_t a2, uint64_t a3)
{
  sub_27182791C(a2 + 48, (a2 + 40));
  v6 = sub_2718289B0(a2);
  *(a2 + 40) = v6;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v6 >= 2u)
  {
    v7 = (a2 + 80);
    v9 = a2 + 72;
  }

  else
  {
    *(a2 + 72) = "version";
    *(a2 + 80) = 7;
    v7 = (a2 + 80);
    *(a2 + 88) = 1;
    v9 = a2 + 72;
    v8 = *(a2 + 72);
    v10 = *v8;
    v11 = *(v8 + 3);
    if (v10 == *"version" && v11 == *"sion")
    {
      *(a2 + 96) = 1;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
      v13 = *a1;
      if (*a1 < 1)
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    }
  }

  LOBYTE(v24[0]) = 6;
  *(&v24[0] + 1) = 1;
  v14 = sub_2718289B0(a2);
  v15 = *v14;
  *v14 = 6;
  LOBYTE(v24[0]) = v15;
  v16 = v14[1];
  v14[1] = *(&v24[0] + 1);
  *(&v24[0] + 1) = v16;
  sub_2715CC40C(v24 + 1, v15);
  v13 = *a1;
  if (*a1 < 1)
  {
    goto LABEL_24;
  }

LABEL_13:
  if (v13 != 2)
  {
    goto LABEL_24;
  }

  v17 = *(a2 + 88);
  if (**(a2 + 40) <= 1u)
  {
    *v9 = "min_version";
    *v7 = 11;
    if ((v17 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }

    goto LABEL_23;
  }

  if ((*(a2 + 88) & 1) == 0 || *v7 != 7 || (**v9 == *"version" ? (v18 = *(*v9 + 3) == *"sion") : (v18 = 0), !v18))
  {
LABEL_23:
    LOBYTE(v24[0]) = 6;
    *(&v24[0] + 1) = 1;
    v19 = sub_2718289B0(a2);
    v20 = *v19;
    *v19 = 6;
    LOBYTE(v24[0]) = v20;
    v21 = v19[1];
    v19[1] = *(&v24[0] + 1);
    *(&v24[0] + 1) = v21;
    sub_2715CC40C(v24 + 1, v20);
    goto LABEL_24;
  }

  *(a2 + 96) = 1;
  *(a2 + 100) = 1;
  *(a2 + 88) = 0;
LABEL_24:
  v22 = *(a3 + 16);
  v24[0] = *a3;
  v24[1] = v22;
  v25 = *(a3 + 32);
  sub_2714BB010(a2, v24);
  v23 = *(a2 + 56);
  *(a2 + 40) = *(v23 - 8);
  *(a2 + 56) = v23 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }
}

void sub_2714BB010(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (*v4 <= 1u)
  {
    *(a1 + 72) = "sync_command_id";
    v5 = a1 + 72;
    v7 = (a1 + 88);
    v6 = *(a1 + 88);
    *(a1 + 80) = 15;
    v8 = (a1 + 80);
    if ((v6 & 1) == 0)
    {
      *v7 = 1;
    }

    goto LABEL_10;
  }

  v7 = (a1 + 88);
  v5 = a1 + 72;
  v8 = (a1 + 80);
  if ((*(a1 + 88) & 1) == 0 || *(a1 + 80) != 7 || (**v5 == *"version" ? (v9 = *(*v5 + 3) == *"sion") : (v9 = 0), !v9))
  {
LABEL_10:
    v25 = *a2;
    v10 = sub_2718289B0(a1);
    v11 = *v10;
    *v10 = 6;
    v12 = v10[1];
    v10[1] = v25;
    v25 = v12;
    sub_2715CC40C(&v25, v11);
    v4 = *(a1 + 40);
  }

  if (*v4 <= 1u)
  {
    v13 = *v7;
    *v5 = "proceed_n";
    *v8 = 9;
    if ((v13 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    v25 = 0;
    v15 = sub_2718289B0(a1);
    v16 = *v15;
    *v15 = 0;
    goto LABEL_23;
  }

  if (*v7 != 1 || *v8 != 7 || (**v5 == *"version" ? (v14 = *(*v5 + 3) == *"sion") : (v14 = 0), !v14))
  {
    v25 = *(a2 + 8);
    v15 = sub_2718289B0(a1);
    v16 = *v15;
    *v15 = 6;
LABEL_23:
    v17 = v15[1];
    v15[1] = v25;
    v25 = v17;
    sub_2715CC40C(&v25, v16);
  }

  if (**(a1 + 40) <= 1u)
  {
    v18 = *v7;
    *v5 = "proceed_until";
    *v8 = 13;
    if ((v18 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    v25 = 0;
    v23 = sub_2718289B0(a1);
    v21 = *v23;
    *v23 = 0;
    v24 = v23[1];
    v23[1] = v25;
    v25 = v24;
    goto LABEL_36;
  }

  if (*v7 != 1 || *v8 != 7 || (**v5 == *"version" ? (v19 = *(*v5 + 3) == *"sion") : (v19 = 0), !v19))
  {
    v25 = *(a2 + 24);
    v20 = sub_2718289B0(a1);
    v21 = *v20;
    *v20 = 6;
    v22 = v20[1];
    v20[1] = v25;
    v25 = v22;
LABEL_36:
    sub_2715CC40C(&v25, v21);
  }
}

void sub_2714BB368(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = *(a2 + 24);
    if (*(v7 + 40) == 1)
    {
      v16 = (v7 + 16);
      sub_2718460EC(&v16, 4u);
    }

    else
    {
      sub_27184636C(&v16, (v7 + 8));
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DC010(a2, v3 + 16, 4u);
  }

  else if (v4 == 1)
  {
    v6 = *(a2 + 24);
    if (*(v6 + 40) == 1)
    {
      v16 = (v6 + 16);
      sub_2718460EC(&v16, 5u);
    }

    else
    {
      sub_27184636C(&v16, (v6 + 8));
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713DBEE0(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = *(a2 + 24);
    if (*(v5 + 40) == 1)
    {
      v16 = (v5 + 16);
      sub_2718460EC(&v16, 6u);
    }

    else
    {
      sub_27184636C(&v16, (v5 + 8));
    }

    sub_271840ADC(*(a2 + 24));
    sub_2713B5730(a2, v3 + 16, 6u);
  }

  v8 = *(a2 + 24);
  v9 = *(v8[11] - 8);
  sub_2718404E0(v8 + 6, v8[2] - v9 - 9);
  v10 = v8[6];
  if (v10)
  {
    memmove((v8[3] + v9), v8[7], v10);
  }

  v8[6] = 0;
  v11 = v8[10];
  v12 = v8[11] - 8;
  v8[11] = v12;
  if (v11 == v12)
  {
    v13 = *v8;
    v15 = v8[2];
    v14 = v8[3];
    std::ostream::write();
    if (*(v8 + 40) == 1)
    {
      free(v8[3]);
      *(v8 + 40) = 0;
    }
  }

  sub_2714BB534(&v16, a2, v3 + 200);
}

void sub_2714BB534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 24);
  if (*(v5 + 40) == 1)
  {
    *&v31[0] = v5 + 16;
    sub_2718460EC(v31, 1u);
  }

  else
  {
    sub_27184636C(v31, (v5 + 8));
  }

  sub_271840ADC(*(a2 + 24));
  v6 = *(a3 + 16);
  v31[0] = *a3;
  v31[1] = v6;
  v31[2] = *(a3 + 32);
  v32 = *(a3 + 48);
  if (v32)
  {
    v29 = 1;
    v7 = *(a2 + 24);
    if (*(v7 + 40) == 1)
    {
      v30 = (v7 + 16);
      sub_2718454CC(&v30, &v29);
    }

    else
    {
      LOBYTE(v30) = 1;
      v9 = *(v7 + 8);
      std::ostream::write();
    }

    v10 = *(a2 + 24);
    if (*(v10 + 40) == 1)
    {
      v30 = (v10 + 16);
      sub_2718460EC(&v30, 1u);
    }

    else
    {
      sub_27184636C(&v30, (v10 + 8));
    }

    sub_271840ADC(*(a2 + 24));
    sub_271496D74(a2, v31 + 8);
    v12 = *(a2 + 24);
    v13 = *(v12[11] - 8);
    sub_2718404E0(v12 + 6, v12[2] - v13 - 9);
    v14 = v12[6];
    if (v14)
    {
      memmove((v12[3] + v13), v12[7], v14);
    }

    v12[6] = 0;
    v15 = v12[10];
    v16 = v12[11] - 8;
    v12[11] = v16;
    if (v15 == v16)
    {
      v17 = *v12;
      v19 = v12[2];
      v18 = v12[3];
      std::ostream::write();
      if (*(v12 + 40) == 1)
      {
        free(v12[3]);
        *(v12 + 40) = 0;
      }
    }
  }

  else
  {
    v29 = 0;
    v8 = *(a2 + 24);
    if (*(v8 + 40) == 1)
    {
      v30 = (v8 + 16);
      sub_2718454CC(&v30, &v29);
    }

    else
    {
      LOBYTE(v30) = 0;
      v11 = *(v8 + 8);
      std::ostream::write();
    }
  }

  v20 = *(a2 + 24);
  v21 = *(v20[11] - 8);
  sub_2718404E0(v20 + 6, v20[2] - v21 - 9);
  v22 = v20[6];
  if (v22)
  {
    memmove((v20[3] + v21), v20[7], v22);
  }

  v20[6] = 0;
  v23 = v20[10];
  v24 = v20[11] - 8;
  v20[11] = v24;
  if (v23 == v24)
  {
    v25 = *v20;
    v27 = v20[2];
    v26 = v20[3];
    std::ostream::write();
    if (*(v20 + 40) == 1)
    {
      free(v20[3]);
      *(v20 + 40) = 0;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_2714BB7BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_2715DF0F0(a2 + 48, v5);
        v7 = sub_27182815C(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_27182815C(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_2715CA870(&v26, v10);
        }

        sub_2713B6988(a2, v3 + 16);
      }

      sub_2711308D4();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_2715DF0F0(a2 + 48, v12);
    v14 = sub_27182815C(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_27182815C(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_2715CA870(&v26, v17);
    }

    sub_2713DCA04(a2, v3 + 16);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_2715DF0F0(a2 + 48, v19);
  v21 = sub_27182815C(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_27182815C(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_2715CA870(&v26, v24);
  }

  sub_2713DD090(a2, v3 + 16);
}

void sub_2714BBC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  sub_2715DF0F0(a2 + 48, (a2 + 40));
  v5 = sub_27182815C(a2);
  *(a2 + 40) = v5;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, v6 = *(a2 + 72), v7 = *v6, v8 = *(v6 + 3), v7 == *"version") ? (v9 = v8 == *"sion") : (v9 = 0), v9))
  {
    *(a2 + 96) = 1;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    LOBYTE(v22[0]) = 6;
    *(&v22[0] + 1) = 1;
    v10 = sub_27182815C(a2);
    v11 = *v10;
    *v10 = 6;
    LOBYTE(v22[0]) = v11;
    v12 = v10[1];
    v10[1] = *(&v22[0] + 1);
    *(&v22[0] + 1) = v12;
    sub_2715CA870(v22 + 1, v11);
    v5 = *(a2 + 40);
  }

  v13 = *(a3 + 16);
  v22[0] = *a3;
  v22[1] = v13;
  v22[2] = *(a3 + 32);
  v23 = *(a3 + 48);
  if (*v5 <= 1u)
  {
    v14 = *(a2 + 88);
    *(a2 + 72) = "initial_sync_command";
    *(a2 + 80) = 20;
    if ((v14 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  if (v23)
  {
    v20 = *(a2 + 8);
    sub_2714BBE24(&v20, a2, v22 + 8);
  }

  else
  {
    LOBYTE(v20) = 0;
    v21 = 0;
    v15 = sub_27182815C(a2);
    v16 = *v15;
    *v15 = 0;
    LOBYTE(v20) = v16;
    v17 = v15[1];
    v15[1] = v21;
    v21 = v17;
    sub_2715CA870(&v21, v16);
  }

  v18 = *(a2 + 56);
  *(a2 + 40) = *(v18 - 8);
  *(a2 + 56) = v18 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2714BBE24(int *a1, uint64_t a2, uint64_t a3)
{
  sub_2715DF0F0(a2 + 48, (a2 + 40));
  v6 = sub_27182815C(a2);
  *(a2 + 40) = v6;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v6 >= 2u)
  {
    v7 = (a2 + 80);
    v9 = a2 + 72;
  }

  else
  {
    *(a2 + 72) = "version";
    *(a2 + 80) = 7;
    v7 = (a2 + 80);
    *(a2 + 88) = 1;
    v9 = a2 + 72;
    v8 = *(a2 + 72);
    v10 = *v8;
    v11 = *(v8 + 3);
    if (v10 == *"version" && v11 == *"sion")
    {
      *(a2 + 96) = 1;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
      v13 = *a1;
      if (*a1 < 1)
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    }
  }

  LOBYTE(v24[0]) = 6;
  *(&v24[0] + 1) = 1;
  v14 = sub_27182815C(a2);
  v15 = *v14;
  *v14 = 6;
  LOBYTE(v24[0]) = v15;
  v16 = v14[1];
  v14[1] = *(&v24[0] + 1);
  *(&v24[0] + 1) = v16;
  sub_2715CA870(v24 + 1, v15);
  v13 = *a1;
  if (*a1 < 1)
  {
    goto LABEL_24;
  }

LABEL_13:
  if (v13 != 2)
  {
    goto LABEL_24;
  }

  v17 = *(a2 + 88);
  if (**(a2 + 40) <= 1u)
  {
    *v9 = "min_version";
    *v7 = 11;
    if ((v17 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }

    goto LABEL_23;
  }

  if ((*(a2 + 88) & 1) == 0 || *v7 != 7 || (**v9 == *"version" ? (v18 = *(*v9 + 3) == *"sion") : (v18 = 0), !v18))
  {
LABEL_23:
    LOBYTE(v24[0]) = 6;
    *(&v24[0] + 1) = 1;
    v19 = sub_27182815C(a2);
    v20 = *v19;
    *v19 = 6;
    LOBYTE(v24[0]) = v20;
    v21 = v19[1];
    v19[1] = *(&v24[0] + 1);
    *(&v24[0] + 1) = v21;
    sub_2715CA870(v24 + 1, v20);
    goto LABEL_24;
  }

  *(a2 + 96) = 1;
  *(a2 + 100) = 1;
  *(a2 + 88) = 0;
LABEL_24:
  v22 = *(a3 + 16);
  v24[0] = *a3;
  v24[1] = v22;
  v25 = *(a3 + 32);
  sub_2714BC09C(a2, v24);
  v23 = *(a2 + 56);
  *(a2 + 40) = *(v23 - 8);
  *(a2 + 56) = v23 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }
}

void sub_2714BC09C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (*v4 <= 1u)
  {
    *(a1 + 72) = "sync_command_id";
    v5 = a1 + 72;
    v7 = (a1 + 88);
    v6 = *(a1 + 88);
    *(a1 + 80) = 15;
    v8 = (a1 + 80);
    if ((v6 & 1) == 0)
    {
      *v7 = 1;
    }

    goto LABEL_10;
  }

  v7 = (a1 + 88);
  v5 = a1 + 72;
  v8 = (a1 + 80);
  if ((*(a1 + 88) & 1) == 0 || *(a1 + 80) != 7 || (**v5 == *"version" ? (v9 = *(*v5 + 3) == *"sion") : (v9 = 0), !v9))
  {
LABEL_10:
    v25 = *a2;
    v10 = sub_27182815C(a1);
    v11 = *v10;
    *v10 = 6;
    v12 = v10[1];
    v10[1] = v25;
    v25 = v12;
    sub_2715CA870(&v25, v11);
    v4 = *(a1 + 40);
  }

  if (*v4 <= 1u)
  {
    v13 = *v7;
    *v5 = "proceed_n";
    *v8 = 9;
    if ((v13 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    v25 = 0;
    v15 = sub_27182815C(a1);
    v16 = *v15;
    *v15 = 0;
    goto LABEL_23;
  }

  if (*v7 != 1 || *v8 != 7 || (**v5 == *"version" ? (v14 = *(*v5 + 3) == *"sion") : (v14 = 0), !v14))
  {
    v25 = *(a2 + 8);
    v15 = sub_27182815C(a1);
    v16 = *v15;
    *v15 = 6;
LABEL_23:
    v17 = v15[1];
    v15[1] = v25;
    v25 = v17;
    sub_2715CA870(&v25, v16);
  }

  if (**(a1 + 40) <= 1u)
  {
    v18 = *v7;
    *v5 = "proceed_until";
    *v8 = 13;
    if ((v18 & 1) == 0)
    {
      *v7 = 1;
    }
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    v25 = 0;
    v23 = sub_27182815C(a1);
    v21 = *v23;
    *v23 = 0;
    v24 = v23[1];
    v23[1] = v25;
    v25 = v24;
    goto LABEL_36;
  }

  if (*v7 != 1 || *v8 != 7 || (**v5 == *"version" ? (v19 = *(*v5 + 3) == *"sion") : (v19 = 0), !v19))
  {
    v25 = *(a2 + 24);
    v20 = sub_27182815C(a1);
    v21 = *v20;
    *v20 = 6;
    v22 = v20[1];
    v20[1] = v25;
    v25 = v22;
LABEL_36:
    sub_2715CA870(&v25, v21);
  }
}

void *sub_2714BC3F4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v11 = *(a2 + 24);
      v15 = *(a2 + 32);
      sub_271120E64(v11, &v15, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 4);
    ++*(a2 + 40);
    sub_2713DE40C(a2, v3 + 16, 4u);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (v4)
      {
        sub_2711308D4();
      }

      if (*(a2 + 40))
      {
        v5 = *(a2 + 24);
        v13 = *(a2 + 32);
        sub_271120E64(v5, &v13, 1);
      }

      MEMORY[0x2743BE7F0](*(a2 + 24), 6);
      ++*(a2 + 40);
      sub_2713B8244(a2, v3 + 16, 6u);
      v6 = *(a2 + 34);
      if (!*(a2 + 40))
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = *(a2 + 24);
      v16 = *(a2 + 32);
      sub_271120E64(v8, &v16, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      v14 = *(a2 + 32);
      sub_271120E64(v7, &v14, 1);
    }

    MEMORY[0x2743BE7F0](*(a2 + 24), 5);
    ++*(a2 + 40);
    sub_2713DDE60(a2, v3 + 16, 5u);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v9 = *(a2 + 24);
  v17 = v6;
  sub_271120E64(v9, &v17, 1);
  ++*(a2 + 40);
  return sub_2714BC590(&v12, a2, v3 + 200);
}

void *sub_2714BC590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40))
  {
    v5 = *(a2 + 24);
    LOBYTE(v18[0]) = *(a2 + 32);
    sub_271120E64(v5, v18, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 1);
  ++*(a2 + 40);
  v6 = *(a3 + 16);
  v18[0] = *a3;
  v18[1] = v6;
  v18[2] = *(a3 + 32);
  v19 = *(a3 + 48);
  if ((v19 & 1) == 0)
  {
    v17 = 0;
    sub_2718388F8(a2, &v17);
    v12 = *(a2 + 34);
    if (!*(a2 + 40))
    {
      goto LABEL_12;
    }

LABEL_11:
    v13 = *(a2 + 24);
    LOBYTE(v18[0]) = *(a2 + 32);
    sub_271120E64(v13, v18, 1);
    goto LABEL_12;
  }

  v17 = 1;
  sub_2718388F8(a2, &v17);
  if (*(a2 + 40))
  {
    v7 = *(a2 + 24);
    v17 = *(a2 + 32);
    sub_271120E64(v7, &v17, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 1);
  ++*(a2 + 40);
  sub_2714985FC(a2, v18 + 8);
  v8 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v9 = *(a2 + 24);
    v17 = *(a2 + 32);
    sub_271120E64(v9, &v17, 1);
  }

  v10 = *(a2 + 24);
  v17 = v8;
  sub_271120E64(v10, &v17, 1);
  v11 = *(a2 + 40) + 1;
  *(a2 + 40) = v11;
  v12 = *(a2 + 34);
  if (v11)
  {
    goto LABEL_11;
  }

LABEL_12:
  v14 = *(a2 + 24);
  LOBYTE(v18[0]) = v12;
  result = sub_271120E64(v14, v18, 1);
  ++*(a2 + 40);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_2714BC748(uint64_t *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    LODWORD(v12[0]) = 4;
    sub_27173318C(a2 + 24, *(a2 + 32), v12, v12 + 4, 4uLL);
    v7 = v12[0];
    sub_2717312C0(a2);
    sub_2713DEB74(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    LODWORD(v12[0]) = 5;
    sub_27173318C(a2 + 24, *(a2 + 32), v12, v12 + 4, 4uLL);
    v6 = v12[0];
    sub_2717312C0(a2);
    sub_2713DEA44(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    LODWORD(v12[0]) = 6;
    sub_27173318C(a2 + 24, *(a2 + 32), v12, v12 + 4, 4uLL);
    v5 = v12[0];
    sub_2717312C0(a2);
    sub_2713B93E0(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  LODWORD(v12[0]) = 1;
  sub_27173318C(a2 + 24, *(a2 + 32), v12, v12 + 4, 4uLL);
  sub_2717312C0(a2);
  v9 = *(v3 + 216);
  v12[0] = *(v3 + 200);
  v12[1] = v9;
  v12[2] = *(v3 + 232);
  v13 = *(v3 + 248);
  result = sub_2714BC958(a2, v12);
  *(*(*(a2 + 56) - 8) + *(a2 + 24) + 10) = *(a2 + 32) - (*(*(a2 + 56) - 8) + *(a2 + 24)) - 18;
  *(a2 + 56) -= 8;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_2714BC958(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    __src = 1;
    sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v8, 1uLL);
    v8 = 1;
    sub_27173318C(a1 + 24, *(a1 + 32), &v8, &v9, 4uLL);
    sub_2717312C0(a1);
    result = sub_271498BD8(a1, (a2 + 8));
    v5 = *(*(a1 + 56) - 8) + *(a1 + 24);
    *(v5 + 10) = *(a1 + 32) - v5 - 18;
    *(a1 + 56) -= 8;
  }

  else
  {
    v6 = 0;
    return sub_27173318C(a1 + 24, *(a1 + 32), &v6, &__src, 1uLL);
  }

  return result;
}

uint64_t sub_2714BCA54(_DWORD *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v3;
  v10[2] = *(a2 + 32);
  v11 = *(a2 + 48);
  if (v11)
  {
    LOBYTE(v9) = 1;
    (*(*a1 + 80))(a1, &v9);
    v4 = a1[2];
    v9 = 1;
    (*(*a1 + 104))(a1, &v9);
    if (v4 < 1)
    {
      result = sub_271499040(a1, v10 + 8);
      v8 = *MEMORY[0x277D85DE8];
    }

    else
    {
      if (v4 == 2)
      {
        v9 = 1;
        (*(*a1 + 104))(a1, &v9);
      }

      (*(*a1 + 16))(a1);
      sub_271499040(a1, v10 + 8);
      result = (*(*a1 + 24))(a1);
      v6 = *MEMORY[0x277D85DE8];
    }
  }

  else
  {
    LOBYTE(v9) = 0;
    result = (*(*a1 + 80))(a1, &v9);
    v7 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_2714BCC54(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v6)
  {
    sub_2714BD280(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v8)
  {
    sub_2714BDA28(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
    if (v10)
    {
      sub_2714BDFB0(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
    if (v12)
    {
      sub_2714BE758(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
      if (v14)
      {
        sub_2714BEE28(&v16, v14);
      }

      else
      {
        sub_2714BCE20(&v15, a1);
      }
    }
  }
}

void *sub_2714BCE20(uint64_t *a1, void **a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0(v3 + 16, v23);
    sub_2713B2524(v35, v23);
    sub_2713E031C(v3 + 16, v35);
    if (v47 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v46;
        v11 = __p;
        if (v46 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v46 = v9;
        operator delete(v11);
      }
    }

    if (v44 == 1 && v43 < 0)
    {
      operator delete(v42);
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v34 != 1)
    {
      goto LABEL_66;
    }

    v13 = v32;
    if (!v32)
    {
      goto LABEL_66;
    }

    v17 = v33;
    v15 = v32;
    if (v33 == v32)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v32;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v23);
  sub_2713B2524(v35, v23);
  sub_2713E031C(v3 + 16, v35);
  if (v47 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v46;
      v7 = __p;
      if (v46 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v46 = v5;
      operator delete(v7);
    }
  }

  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v34 != 1)
  {
    goto LABEL_66;
  }

  v13 = v32;
  if (!v32)
  {
    goto LABEL_66;
  }

  v14 = v33;
  v15 = v32;
  if (v33 != v32)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v33 = v13;
  operator delete(v15);
LABEL_66:
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  v19 = *a2;
  v23[0] = a2[1];
  v20 = v23[0];
  v35[0] = 6;
  v19[13](a2, v35);
  if (v20 < 1)
  {
    if (v35[0] < 3)
    {
      sub_2713C66D4(v35, a2, v3 + 16, v35[0]);
    }

    else
    {
      sub_2713C68E0(a2, v3 + 16, v35[0]);
    }
  }

  else
  {
    sub_2713C62C8(v23, a2, v3 + 16, v35[0]);
  }

  result = sub_2714BF3D4(a2, v3 + 200);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2714BD280(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713BB450(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_2714BD6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v10 = *(a2 + 32);
  v5 = sub_27182D6C4(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v5;
  sub_27182D194(a2 + 40, &v10);
  sub_2717313F0(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  *&v10 = "version";
  *(&v10 + 1) = 7;
  LODWORD(v11) = 1;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_27182EB6C(a2, &v11);
  v6 = *(a2 + 104);
  *(a2 + 88) = "initial_sync_command";
  *(a2 + 96) = 20;
  if ((v6 & 1) == 0)
  {
    *(a2 + 104) = 1;
  }

  if (*sub_27182D6C4(a2))
  {
    *&v10 = 0;
    BYTE8(v10) = 0;
    LOBYTE(v11) = 0;
    BYTE8(v11) = 0;
    LOBYTE(v12) = 0;
    sub_2714BD804(&v13, a2, &v10);
    v7 = v11;
    *(a3 + 8) = v10;
    *(a3 + 24) = v7;
    *(a3 + 40) = v12;
    *(a3 + 48) = 1;
  }

  else
  {
    ++*(a2 + 112);
    if (*(a3 + 48) == 1)
    {
      *(a3 + 48) = 0;
    }
  }

  v8 = *(a2 + 48);
  *(a2 + 32) = *(v8 - 8);
  v9 = *(a2 + 72);
  *(a2 + 112) = *(v9 - 8);
  *(a2 + 48) = v8 - 8;
  *(a2 + 72) = v9 - 8;
}

void sub_2714BD804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 32);
  v10 = *(a2 + 8);
  v5 = v10;
  v11[0] = v6;
  v7 = sub_27182D6C4(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v7;
  sub_27182D194(a2 + 40, v11);
  sub_2717313F0(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  v11[0] = "version";
  v11[1] = 7;
  v12 = 1;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_27182EB6C(a2, &v12);
  if (v5 < 1)
  {
    sub_27149A3AC(a2, a3);
  }

  else
  {
    sub_2714BD904(&v10, a2, a3);
  }

  v8 = *(a2 + 48);
  *(a2 + 32) = *(v8 - 8);
  v9 = *(a2 + 72);
  *(a2 + 112) = *(v9 - 8);
  *(a2 + 48) = v8 - 8;
  *(a2 + 72) = v9 - 8;
}

void sub_2714BD904(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == 2)
  {
    v7 = 1;
    v5 = *(a2 + 104);
    *(a2 + 88) = "min_version";
    *(a2 + 96) = 11;
    if ((v5 & 1) == 0)
    {
      *(a2 + 104) = 1;
    }

    sub_27182EB6C(a2, &v7);
    if (v7 >= 2)
    {
      v6 = v7;
      if ((atomic_load_explicit(&qword_280878870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878870))
      {
        sub_2718519B4("cv3d::kit::viz::SyncCommandSample]", 0x21uLL, &stru_280878858);
        __cxa_guard_release(&qword_280878870);
        sub_271847D5C(&stru_280878858, v6, 1u);
      }

      sub_271847D5C(&stru_280878858, v6, 1u);
    }
  }

  sub_27149A3AC(a2, a3);
}

uint64_t sub_2714BDA28(uint64_t *a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0(v3 + 16, v21);
    sub_2713B2524(v33, v21);
    sub_2713E031C(v3 + 16, v33);
    if (v45 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v44;
        v11 = __p;
        if (v44 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v44 = v9;
        operator delete(v11);
      }
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (v32 != 1)
    {
      goto LABEL_66;
    }

    v13 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

    v17 = v31;
    v15 = v30;
    if (v31 == v30)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v30;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v21);
  sub_2713B2524(v33, v21);
  sub_2713E031C(v3 + 16, v33);
  if (v45 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v44;
      v7 = __p;
      if (v44 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v44 = v5;
      operator delete(v7);
    }
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v32 != 1)
  {
    goto LABEL_66;
  }

  v13 = v30;
  if (!v30)
  {
    goto LABEL_66;
  }

  v14 = v31;
  v15 = v30;
  if (v31 != v30)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v31 = v13;
  operator delete(v15);
LABEL_66:
  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  LODWORD(v21[0]) = 6;
  sub_27183FB7C(*(a2 + 48), v21);
  sub_2713BF6F4(v21, a2, v3 + 16, v21[0]);
  LODWORD(v21[0]) = 1;
  sub_27183FB7C(*(a2 + 48), v21);
  result = sub_2714BDE4C(v21, a2, v3 + 200);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2714BDE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  sub_27183FF6C(*(a2 + 48), &v9);
  *&v8 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v8 + 1) = v9;
  sub_2713BF82C(a2 + 24, &v8);
  LOBYTE(v9) = 0;
  sub_27183F824(*(a2 + 48), &v9);
  if (v9)
  {
    if ((*(a3 + 48) & 1) == 0)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 1;
    }

    LODWORD(v8) = 1;
    sub_27183FB7C(*(a2 + 48), &v8);
    sub_27149AD88(&v8, a2, a3 + 8);
  }

  else if (*(a3 + 48))
  {
    *(a3 + 48) = 0;
  }

  v5 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v7 = *(v5 - 16) - result + *(v5 - 8);
  if (v7)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v7);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_2714BDFB0(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, v20);
    sub_2713B2524(v32, v20);
    sub_2713E031C(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_2711308D4();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_2713C0E9C(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_2711308D4();
  }

  sub_271399EB0(v3 + 16, v20);
  sub_2713B2524(v32, v20);
  sub_2713E031C(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_2714BE3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v10 = *(a2 + 32);
  v5 = sub_27182D2AC(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v5;
  sub_27182D194(a2 + 40, &v10);
  sub_2717313F0(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  *&v10 = "version";
  *(&v10 + 1) = 7;
  LODWORD(v11) = 1;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_27182DBE0(a2, &v11);
  v6 = *(a2 + 104);
  *(a2 + 88) = "initial_sync_command";
  *(a2 + 96) = 20;
  if ((v6 & 1) == 0)
  {
    *(a2 + 104) = 1;
  }

  if (*sub_27182D2AC(a2))
  {
    *&v10 = 0;
    BYTE8(v10) = 0;
    LOBYTE(v11) = 0;
    BYTE8(v11) = 0;
    LOBYTE(v12) = 0;
    sub_2714BE534(&v13, a2, &v10);
    v7 = v11;
    *(a3 + 8) = v10;
    *(a3 + 24) = v7;
    *(a3 + 40) = v12;
    *(a3 + 48) = 1;
  }

  else
  {
    ++*(a2 + 112);
    if (*(a3 + 48) == 1)
    {
      *(a3 + 48) = 0;
    }
  }

  v8 = *(a2 + 48);
  *(a2 + 32) = *(v8 - 8);
  v9 = *(a2 + 72);
  *(a2 + 112) = *(v9 - 8);
  *(a2 + 48) = v8 - 8;
  *(a2 + 72) = v9 - 8;
}

void sub_2714BE534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 32);
  v10 = *(a2 + 8);
  v5 = v10;
  v11[0] = v6;
  v7 = sub_27182D2AC(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v7;
  sub_27182D194(a2 + 40, v11);
  sub_2717313F0(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  v11[0] = "version";
  v11[1] = 7;
  v12 = 1;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_27182DBE0(a2, &v12);
  if (v5 < 1)
  {
    sub_27149B894(a2, a3);
  }

  else
  {
    sub_2714BE634(&v10, a2, a3);
  }

  v8 = *(a2 + 48);
  *(a2 + 32) = *(v8 - 8);
  v9 = *(a2 + 72);
  *(a2 + 112) = *(v9 - 8);
  *(a2 + 48) = v8 - 8;
  *(a2 + 72) = v9 - 8;
}

void sub_2714BE634(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == 2)
  {
    v7 = 1;
    v5 = *(a2 + 104);
    *(a2 + 88) = "min_version";
    *(a2 + 96) = 11;
    if ((v5 & 1) == 0)
    {
      *(a2 + 104) = 1;
    }

    sub_27182DBE0(a2, &v7);
    if (v7 >= 2)
    {
      v6 = v7;
      if ((atomic_load_explicit(&qword_280878870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878870))
      {
        sub_2718519B4("cv3d::kit::viz::SyncCommandSample]", 0x21uLL, &stru_280878858);
        __cxa_guard_release(&qword_280878870);
        sub_271847D5C(&stru_280878858, v6, 1u);
      }

      sub_271847D5C(&stru_280878858, v6, 1u);
    }
  }

  sub_27149B894(a2, a3);
}

void sub_2714BE758(uint64_t *a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0(v3 + 16, v22);
    sub_2713B2524(v35, v22);
    sub_2713E031C(v3 + 16, v35);
    if (v47 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v46;
        v11 = __p;
        if (v46 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v46 = v9;
        operator delete(v11);
      }
    }

    if (v44 == 1 && v43 < 0)
    {
      operator delete(v42);
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v34 != 1)
    {
      goto LABEL_66;
    }

    v13 = v32;
    if (!v32)
    {
      goto LABEL_66;
    }

    v17 = v33;
    v15 = v32;
    if (v33 == v32)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v32;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v22);
  sub_2713B2524(v35, v22);
  sub_2713E031C(v3 + 16, v35);
  if (v47 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v46;
      v7 = __p;
      if (v46 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v46 = v5;
      operator delete(v7);
    }
  }

  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v34 != 1)
  {
    goto LABEL_66;
  }

  v13 = v32;
  if (!v32)
  {
    goto LABEL_66;
  }

  v14 = v33;
  v15 = v32;
  if (v33 != v32)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v33 = v13;
  operator delete(v15);
LABEL_66:
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 == 1 && v24 < 0)
  {
    operator delete(v23);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  LODWORD(v22[0]) = 6;
  sub_27183A9AC(a2, v22);
  if (LODWORD(v22[0]) >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = v22[0];
  }

  if (LODWORD(v22[0]) > 2)
  {
    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, v22);
      if (SHIBYTE(v23) < 0)
      {
        if (v22[1] == 1 && *(a2 + 72) == *v22[0])
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v23) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v23) == 1 && *(a2 + 72) == LOBYTE(v22[0]))
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v23) < 0)
      {
LABEL_93:
        operator delete(v22[0]);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  sub_2713C30AC(v22, a2, v3 + 16, v19);
LABEL_95:
  sub_2714BEC28(v22, a2, v3 + 200);
  v21 = *MEMORY[0x277D85DE8];
}

void sub_2714BEC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(__p) = 1;
  sub_27183A9AC(a2, &__p);
  v7 = 0;
  sub_271839D90(a2, &v7);
  if (v7)
  {
    if ((*(a3 + 48) & 1) == 0)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 1;
    }

    LODWORD(__p) = 1;
    sub_27183A9AC(a2, &__p);
    sub_27149C34C(a2, a3 + 8);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_21;
      }

      sub_27183D78C(a2, &__p);
      if (v10 < 0)
      {
        if (v9 == 1 && *(a2 + 72) == *__p)
        {
LABEL_14:
          v5 = 0;
          if (v10 < 0)
          {
            goto LABEL_17;
          }

          goto LABEL_5;
        }
      }

      else if (v10 == 1 && *(a2 + 72) == __p)
      {
        goto LABEL_14;
      }

      v5 = 1;
      if (v10 < 0)
      {
LABEL_17:
        operator delete(__p);
      }

LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  if (*(a3 + 48))
  {
    *(a3 + 48) = 0;
  }

LABEL_21:
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a2, &__p);
    if (v10 < 0)
    {
      if (v9 == 1 && *(a2 + 72) == *__p)
      {
LABEL_29:
        v6 = 0;
        if (v10 < 0)
        {
          goto LABEL_32;
        }

        goto LABEL_20;
      }
    }

    else if (v10 == 1 && *(a2 + 72) == __p)
    {
      goto LABEL_29;
    }

    v6 = 1;
    if (v10 < 0)
    {
LABEL_32:
      operator delete(__p);
    }

LABEL_20:
    if ((v6 & 1) == 0)
    {
      return;
    }
  }
}

void *sub_2714BEE28(uint64_t *a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_2711308D4();
    }

    sub_271399EB0(v3 + 16, v21);
    sub_2713B2524(v33, v21);
    sub_2713E031C(v3 + 16, v33);
    if (v45 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v44;
        v11 = __p;
        if (v44 != __p)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = __p;
        }

        v44 = v9;
        operator delete(v11);
      }
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (v32 != 1)
    {
      goto LABEL_66;
    }

    v13 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

    v17 = v31;
    v15 = v30;
    if (v31 == v30)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v18 = v17;
      if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
      {
        operator delete(*(v17 - 8));
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
LABEL_60:
          if (*(v18 - 73) < 0)
          {
            operator delete(*v17);
          }
        }
      }

      else
      {
        v17 -= 12;
        if (*(v18 - 72) == 1)
        {
          goto LABEL_60;
        }
      }

      if (v17 == v13)
      {
LABEL_64:
        v15 = v30;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v21);
  sub_2713B2524(v33, v21);
  sub_2713E031C(v3 + 16, v33);
  if (v45 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v44;
      v7 = __p;
      if (v44 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v44 = v5;
      operator delete(v7);
    }
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v32 != 1)
  {
    goto LABEL_66;
  }

  v13 = v30;
  if (!v30)
  {
    goto LABEL_66;
  }

  v14 = v31;
  v15 = v30;
  if (v31 != v30)
  {
    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_65:
  v31 = v13;
  operator delete(v15);
LABEL_66:
  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  sub_2713C49D0(v21, a2, v3 + 16);
  result = sub_2714BF218(v21, a2, v3 + 200);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2714BF218(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v9 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  sub_27173170C(a2);
  result = sub_2714BF2F4(a2, a3);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void *sub_2714BF2F4(void *result, uint64_t a2)
{
  v2 = result[6];
  if (result[7] <= v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v3 = *(result[3] + v2);
  result[6] = v2 + 1;
  if (v3)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 1;
    }

    return sub_27149CBFC(&v5, result, (a2 + 8));
  }

  else if (*(a2 + 48))
  {
    *(a2 + 48) = 0;
  }

  return result;
}

void *sub_2714BF3D4(void *a1, uint64_t a2)
{
  v4 = *a1;
  v6 = a1[1];
  v7 = 1;
  (*(v4 + 104))(a1, &v7);
  if (v6 >= 1)
  {
    sub_2714BF500(&v6, a1, a2);
    return a1;
  }

  v8 = 0;
  (*(*a1 + 80))(a1, &v8);
  if (v8)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 1;
    }

    sub_27149D40C(&v9, a1, a2 + 8);
    return a1;
  }

  else
  {
    if (!*(a2 + 48))
    {
      return a1;
    }

    *(a2 + 48) = 0;
    return a1;
  }
}

uint64_t sub_2714BF500(int *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    v9 = 1;
    (*(*a2 + 104))(a2, &v9);
    if (v9 >= 2)
    {
      v8 = v9;
      if ((atomic_load_explicit(&qword_280878A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878A50))
      {
        sub_2718519B4("cv3d::kit::viz::UpdateSyncConfigurationSample]", 0x2DuLL, &stru_280878A38);
        __cxa_guard_release(&qword_280878A50);
        sub_271847D5C(&stru_280878A38, v8, 1u);
      }

      sub_271847D5C(&stru_280878A38, v8, 1u);
    }

    v5 = *a1;
  }

  if (v5 > 0)
  {
    (*(*a2 + 16))(a2);
  }

  v10 = 0;
  result = (*(*a2 + 80))(a2, &v10);
  if (v10)
  {
    if ((*(a3 + 48) & 1) == 0)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 1;
    }

    result = sub_27149D40C(&v11, a2, a3 + 8);
  }

  else if (*(a3 + 48))
  {
    *(a3 + 48) = 0;
  }

  if (v5 >= 1)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void *sub_2714BF6EC(void *a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 >= 0xE)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/DataType.cpp", 43, "idx < static_cast<uint32_t>(DataType::End)", 0x2AuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "idx < static_cast<uint32_t>(DataType::End)", 42, "", 0);
        a1 = v3;
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_28087C408;
      v5 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "idx < static_cast<uint32_t>(DataType::End)", 42, "", 0);
    }

    while (v4 != v5);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = &(&off_279E2F608)[2 * v2];
  v9 = *v8;
  v10 = v8[1];

  return sub_271120E64(a1, v9, v10);
}

uint64_t sub_2714BF83C(uint64_t a1, void *a2, void *a3, __int128 *a4, void *a5)
{
  v10 = sub_271121384(a1, 1);
  *v10 = &unk_28810ABE0;
  v11 = a2[1];
  v10[2] = *a2;
  v10[3] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 24) == 1)
  {
    if (*(a4 + 23) < 0)
    {
      sub_271127178((a1 + 48), *a4, *(a4 + 1));
    }

    else
    {
      v13 = *a4;
      *(a1 + 64) = *(a4 + 2);
      *(a1 + 48) = v13;
    }
  }

  else
  {
    *(a1 + 71) = 4;
    strcpy((a1 + 48), "logs");
  }

  if (!*a5)
  {
    operator new();
  }

  v14 = a5[1];
  *(a1 + 72) = *a5;
  *(a1 + 80) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_2714BF9C0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 40);
  if (!v4)
  {
    sub_27112F828(v2);
    nullsub_1(v1);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v4);
  sub_27112F828(v2);
  nullsub_1(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2714BFA28(uint64_t a1)
{
  *a1 = &unk_28810ABE0;
  v2 = *(a1 + 80);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (*(a1 + 71) < 0)
  {
LABEL_4:
    operator delete(*(a1 + 48));
  }

LABEL_5:
  v3 = *(a1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 24);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = a1;
  }

  else
  {
    v5 = a1;
  }

  return nullsub_1(v5);
}

void sub_2714BFB54(uint64_t a1)
{
  sub_2714BFA28(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714BFB8C(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v40 = v5;
    if (v5)
    {
      if (*(a1 + 32))
      {
        v6 = *a2;
        v7 = strlen(*a2);
        if (v7 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_271120DA8();
        }

        v8 = v7;
        if (v7 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v30) = v7;
        if (v7)
        {
          memmove(&__dst, v6, v7);
        }

        *(&__dst + v8) = 0;
        v31 = *(a2 + 24);
        v9 = *(a2 + 32);
        v10 = strlen(v9);
        if (v10 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_271120DA8();
        }

        v11 = v10;
        if (v10 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v33) = v10;
        if (v10)
        {
          memmove(v32, v9, v10);
        }

        *(v32 + v11) = 0;
        v34 = *(a2 + 40) & ~(*(a2 + 40) >> 31);
        v12 = *(a2 + 48);
        v13 = strlen(v12);
        if (v13 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_271120DA8();
        }

        v14 = v13;
        if (v13 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v36) = v13;
        if (v13)
        {
          memmove(v35, v12, v13);
          *(v35 + v14) = 0;
          v15 = *(a2 + 56);
          v16 = *(v15 + 120);
          if ((v16 & 0x10) == 0)
          {
LABEL_20:
            if ((v16 & 8) == 0)
            {
              HIBYTE(v38) = 0;
              LOBYTE(v37[0]) = 0;
              v17 = *(a1 + 16);
              v18 = *(a1 + 71);
              if (v18 < 0)
              {
                goto LABEL_31;
              }

LABEL_34:
              v23 = a1 + 48;
LABEL_35:
              v24 = (*(*v17 + 48))(v17, v23, v18);
              v25 = *(*(*v24 + 56))(v24);
              v51 = (*(**(a1 + 72) + 16))(*(a1 + 72));
              v52 = v26;
              LOBYTE(v53) = 0;
              v54 = 0;
              v55 = 0;
              v56 = 0;
              LOBYTE(v57) = 0;
              v58 = 0;
              LOBYTE(v59) = 0;
              v60 = 0;
              LOBYTE(__p) = 0;
              v62 = 0;
              v41 = __dst;
              v42 = v30;
              __dst = 0uLL;
              v30 = 0;
              v45 = v33;
              LODWORD(v43) = v31;
              v44 = *v32;
              v32[0] = 0;
              v32[1] = 0;
              v33 = 0;
              v46 = v34;
              v48 = v36;
              v47 = *v35;
              v35[0] = 0;
              v35[1] = 0;
              v36 = 0;
              v50 = v38;
              v49 = *v37;
              v37[0] = 0;
              v37[1] = 0;
              v38 = 0;
              operator new();
            }

            v21 = *(v15 + 40);
            v22 = *(v15 + 56) - v21;
            if (v22 > 0x7FFFFFFFFFFFFFF7)
            {
LABEL_37:
              sub_271120DA8();
            }

LABEL_28:
            if (v22 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v38) = v22;
            if (v22)
            {
              memmove(v37, v21, v22);
              *(v37 + v22) = 0;
              v17 = *(a1 + 16);
              v18 = *(a1 + 71);
              if ((v18 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              LOBYTE(v37[0]) = 0;
              v17 = *(a1 + 16);
              v18 = *(a1 + 71);
              if ((v18 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }
            }

LABEL_31:
            v23 = *(a1 + 48);
            v18 = *(a1 + 56);
            goto LABEL_35;
          }
        }

        else
        {
          LOBYTE(v35[0]) = 0;
          v15 = *(a2 + 56);
          v16 = *(v15 + 120);
          if ((v16 & 0x10) == 0)
          {
            goto LABEL_20;
          }
        }

        v19 = *(v15 + 112);
        v20 = *(v15 + 72);
        if (v19 < v20)
        {
          *(v15 + 112) = v20;
          v19 = v20;
        }

        v21 = *(v15 + 64);
        v22 = v19 - v21;
        if (v19 - v21 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_37;
        }

        goto LABEL_28;
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v27 = v5;
        (v5->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v27);
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_2714C06C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (*(v49 + 72) == 1 && *(v49 + 71) < 0)
  {
    operator delete(*v51);
  }

  if (*(v49 + 47) < 0)
  {
    operator delete(*v50);
  }

  std::__shared_weak_count::~__shared_weak_count(v49);
  operator delete(v54);
  sub_2714FBE4C(&a28);
  sub_2714FBE4C(&a9);
  sub_271134CBC(v52 + 16);
  sub_2713B1398(&a12);
  sub_27112F828(&a26);
  _Unwind_Resume(a1);
}

void sub_2714C07C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_2713B1398(&a12);
  sub_27112F828(&a35);
  _Unwind_Resume(a1);
}

void sub_2714C08A0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288131FD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714C08F4(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 32);
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

void sub_2714C09B4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288132020;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714C0A08(uint64_t a1)
{
  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 48));
    a1 = v2;
    if ((*(v2 + 47) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 47) & 0x80000000) == 0)
  {
    return;
  }

  v3 = *(a1 + 24);

  operator delete(v3);
}

void sub_2714C0A98(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105EB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2714C0AF4(uint64_t a1)
{
  *a1 = &unk_288131F88;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 63) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 40));
      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 72));
  if (*(a1 + 63) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_9:
  operator delete(*(a1 + 8));
  return a1;
}

uint64_t sub_2714C0B9C(uint64_t a1)
{
  while (1)
  {
    v3 = *(a1 + 96);
    v2 = *(a1 + 104);
    if (v3 == v2)
    {
      break;
    }

    sub_2714C0C90(a1, *(v2 - 2));
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
    v3 = *(a1 + 96);
  }

  if (v3)
  {
    v5 = *(a1 + 104);
    v6 = v3;
    if (v5 != v3)
    {
      do
      {
        v7 = *(v5 - 1);
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v5 -= 16;
      }

      while (v5 != v3);
      v6 = *(a1 + 96);
    }

    *(a1 + 104) = v3;
    operator delete(v6);
  }

  std::mutex::~mutex((a1 + 32));
  v8 = *(a1 + 24);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return a1;
}

uint64_t sub_2714C0C90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 96);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 16;
      if (v5 == v4)
      {
        return 0;
      }
    }
  }

  if (v5 == v4)
  {
    return 0;
  }

  (*(*a2 + 32))(a2, a1);
  v6 = *(a1 + 104);
  if (v5 + 16 != v6)
  {
    do
    {
      v7 = v5;
      v8 = *(v5 + 16);
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      v9 = *(v5 + 8);
      *v5 = v8;
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v5 += 16;
    }

    while (v7 + 32 != v6);
    v6 = *(a1 + 104);
  }

  for (; v6 != v5; v6 -= 16)
  {
    v11 = *(v6 - 8);
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

  *(a1 + 104) = v5;
  return 1;
}

void sub_2714C0E38(uint64_t a1)
{
  sub_2714C0B9C(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714C0E70(uint64_t a1)
{
  sub_2714C0B9C(a1 - 8);

  JUMPOUT(0x2743BF050);
}

void sub_2714C10E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a9);
  sub_27112F828(&a11);
  sub_27112F828(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_2714C110C(void *a1, void *a2)
{
  v5 = a1[12];
  v4 = a1[13];
  if (v5 != v4)
  {
    v6 = a1[12];
    while (*v6 != *a2)
    {
      v6 += 16;
      if (v6 == v4)
      {
        goto LABEL_8;
      }
    }

    if (v6 != v4)
    {
      return 0;
    }
  }

LABEL_8:
  v8 = a1[14];
  if (v4 >= v8)
  {
    v11 = (v4 - v5) >> 4;
    v12 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      sub_27134B450();
    }

    v13 = v8 - v5;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 60))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v18 = 16 * v11;
    v19 = *a2;
    *(16 * v11) = *a2;
    if (*(&v19 + 1))
    {
      atomic_fetch_add_explicit((*(&v19 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v10 = (v18 + 16);
    v15 = a1[12];
    v16 = a1[13] - v15;
    v17 = v18 - v16;
    memcpy((v18 - v16), v15, v16);
    a1[12] = v17;
    a1[13] = v10;
    a1[14] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v9 = a2[1];
    *v4 = *a2;
    *(v4 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v4 + 16;
  }

  a1[13] = v10;
  (*(**a2 + 24))(*a2, a1);
  return 1;
}

void sub_2714C12C4(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::mutex::lock((a1 + 32));
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  if (v5 != v4)
  {
    if (((v5 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_27134B450();
  }

  std::mutex::unlock((a1 + 32));
}

void sub_2714C139C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_2711B5360(&a9);
  std::mutex::unlock((v9 + 32));
  _Unwind_Resume(a1);
}

uint64_t sub_2714C13B8(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 32));
  v4 = *a2;
  v5 = a2[1];
  v8[0] = v4;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = sub_2714C110C(a1, v8);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  std::mutex::unlock((a1 + 32));
  return v6;
}

void sub_2714C146C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(&a9);
  std::mutex::unlock((v9 + 32));
  _Unwind_Resume(a1);
}

std::__shared_weak_count *sub_2714C1488@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 128);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(a1 + 120);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

std::__shared_weak_count *sub_2714C14D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  result = *(a1 + 128);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    a2[1] = result;
    if (result)
    {
      *a2 = *(a1 + 120);
    }
  }

  return result;
}

std::__shared_weak_count *sub_2714C151C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 24);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(a1 + 16);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

uint64_t sub_2714C156C(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 32));
  v4 = *(a1 + 96);
  for (i = *(a1 + 104); v4 != i; v4 += 2)
  {
    (*(**v4 + 16))(*v4, a2);
  }

  std::mutex::unlock((a1 + 32));
  return a1 + 8;
}

uint64_t sub_2714C1604(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  v4 = *(a1 + 88);
  for (i = *(a1 + 96); v4 != i; v4 += 2)
  {
    (*(**v4 + 16))(*v4, a2);
  }

  std::mutex::unlock((a1 + 24));
  return a1;
}

uint64_t sub_2714C169C(uint64_t result)
{
  v1 = *(result + 24);
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

void sub_2714C1714(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_2714C1790(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714C181C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2714C18AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  std::mutex::lock((v4 + 32));
  v5 = *(v4 + 96);
  for (i = *(v4 + 104); v5 != i; v5 += 2)
  {
    (*(**v5 + 16))(*v5, a2);
  }

  std::mutex::unlock((v4 + 32));
  return a1 + 8;
}

uint64_t sub_2714C1950(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  std::mutex::lock((v4 + 32));
  v5 = *(v4 + 96);
  for (i = *(v4 + 104); v5 != i; v5 += 2)
  {
    (*(**v5 + 16))(*v5, a2);
  }

  std::mutex::unlock((v4 + 32));
  return a1;
}

std::__shared_weak_count *sub_2714C19F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = *(v3 + 128);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(v3 + 120);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

std::__shared_weak_count *sub_2714C1A44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = 0;
  a2[1] = 0;
  result = *(v2 + 128);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    a2[1] = result;
    if (result)
    {
      *a2 = *(v2 + 120);
    }
  }

  return result;
}

std::__shared_weak_count *sub_2714C1A88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = *(v3 + 24);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(v3 + 16);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

void sub_2714C1AF8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881321E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2714C1B58(char a1@<W1>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 0:
      *(a2 + 23) = 8;
      strcpy(a2, "no error");
      return;
    case 1:
      *(a2 + 23) = 13;
      strcpy(a2, "unknown error");
      return;
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      *(a2 + 23) = 15;
      strcpy(a2, "data is invalid");
      return;
    case 5:
      *(a2 + 23) = 20;
      *(a2 + 16) = 1684630625;
      v3 = "timestamp is invalid";
      goto LABEL_12;
    case 6:
      operator new();
    case 7:
      operator new();
    case 8:
      operator new();
    case 9:
      operator new();
    case 10:
      operator new();
    case 11:
      *(a2 + 23) = 19;
      strcpy(a2, "failed to load data");
      return;
    case 12:
      *(a2 + 23) = 20;
      *(a2 + 16) = 1701999980;
      v3 = "sequence i/o failure";
LABEL_12:
      *a2 = *v3;
      *(a2 + 20) = 0;
      break;
    case 13:
      operator new();
    default:
      *(a2 + 23) = 18;
      strcpy(a2, "unknown error code");
      break;
  }
}

__n128 sub_2714C1F58@<Q0>(int a1@<W1>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 0:
      *(a2 + 23) = 8;
      strcpy(a2, "no error");
      return result;
    case 1:
      *(a2 + 23) = 13;
      strcpy(a2, "unknown error");
      return result;
    case 2:
      operator new();
    case 3:
      *(a2 + 23) = 19;
      *(a2 + 15) = 1701999980;
      v4 = "server send failure";
      goto LABEL_11;
    case 4:
      operator new();
    case 5:
      operator new();
    case 6:
      operator new();
    case 7:
      operator new();
    case 8:
      operator new();
    case 9:
      *(a2 + 23) = 19;
      *(a2 + 15) = 1701999980;
      v4 = "client send failure";
      goto LABEL_11;
    case 10:
      operator new();
    case 11:
      operator new();
    case 12:
      *(a2 + 23) = 7;
      strcpy(a2, "timeout");
      return result;
    case 13:
      *(a2 + 23) = 15;
      strcpy(a2, "invalid peer ID");
      return result;
    case 14:
      *(a2 + 23) = 18;
      *(a2 + 16) = 25701;
      v3 = "client is outdated";
      goto LABEL_20;
    case 15:
      *(a2 + 23) = 19;
      *(a2 + 15) = 1702196083;
      v4 = "configuration issue";
LABEL_11:
      result = *v4;
      *a2 = *v4;
      *(a2 + 19) = 0;
      break;
    default:
      *(a2 + 23) = 18;
      *(a2 + 16) = 25956;
      v3 = "unknown error code";
LABEL_20:
      result = *v3;
      *a2 = *v3;
      *(a2 + 18) = 0;
      break;
  }

  return result;
}

void sub_2714C2388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a4;
  sub_2714C24EC("ignoring data of timestamp ");
}

void sub_2714C24C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C24EC(uint64_t a1)
{
  v2 = 0;
  v3[0] = v1;
  v3[1] = a1;
  v3[2] = v1;
  v3[3] = a1;
  v3[4] = a1;
  v4 = v3;
  sub_27134B55C(&v4);
  sub_2714C4794();
}

void sub_2714C26C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C26DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C26F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C2704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C2718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C272C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C2740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C2754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C28A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C28CC(uint64_t a1)
{
  v2 = 0;
  v4[0] = v1;
  v4[1] = a1;
  v4[2] = v1;
  v4[3] = a1;
  v4[4] = a1;
  v3 = v4;
  sub_27134B55C(&v3);
  sub_2714C4794();
}

void sub_2714C2D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a26 < 0)
  {
    operator delete(__p);
    sub_271130878(&a11);
    _Unwind_Resume(a1);
  }

  sub_271130878(&a11);
  _Unwind_Resume(a1);
}

void sub_2714C2E18(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v34[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v27 = 0;
    v30 = v26;
    v31 = ", max queue size ";
    v32 = v26;
    v33 = ", max queue size ";
    v34[0] = ", max queue size ";
    v28.__r_.__value_.__r.__words[0] = &v30;
    sub_2712FAC1C(&v28);
    std::to_string(&v28, a2);
    v30 = v26;
    v31 = &v28;
    v32 = v26;
    v33 = &v28;
    v34[0] = &v28;
    if (v27 == -1)
    {
      sub_2711308D4();
    }

    v29 = &v30;
    (off_288132260[v27])(&v29, v26);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (v27 == -1)
    {
      sub_2711308D4();
    }

    v30 = &v28;
    (off_2881322C0[v27])(&v14, &v30, v26);
    if (v27 != -1)
    {
      (off_288132230[v27])(&v30, v26);
    }

    v7 = HIBYTE(v16);
    v9 = v14;
    v8 = v15;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  v10 = *(a1 + 23);
  if (v10 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 < 0)
  {
    v10 = *(a1 + 8);
  }

  v30 = v11;
  v31 = v10;
  if ((v7 & 0x80u) == 0)
  {
    v9 = &v14;
    v8 = v7;
  }

  v32 = v9;
  v33 = v8;
  sub_271131230(&v30, v34, 0, 0, &v17);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v17;
  }

  v19 = 1;
  LOBYTE(v20) = 0;
  v24 = 0;
  v25 = 1;
  sub_27139F524(7u, &__p, a4);
  if (v25 == 1)
  {
    if (v24 != 1)
    {
      goto LABEL_24;
    }

    if (v23 < 0)
    {
      operator delete(v22);
      if ((v21 & 0x80000000) == 0)
      {
LABEL_24:
        if (v19 != 1)
        {
          goto LABEL_27;
        }

LABEL_25:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_27;
      }
    }

    else if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    operator delete(v20);
    if (v19 != 1)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_27:
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }
  }

  else if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
LABEL_29:
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_2714C30E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C3154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (*(v29 - 105) < 0)
  {
    operator delete(*(v29 - 128));
    sub_271130878(&a29);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2714C3128);
}

void sub_2714C3178(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v18[0] = "Cannot save data as '";
  v18[1] = 21;
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v18[2] = v5;
  v18[3] = v4;
  v18[4] = "'. Reason: ";
  v18[5] = 11;
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  v18[6] = v7;
  v18[7] = v6;
  sub_271131230(v18, &v19, 0, 0, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__p, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v9;
  }

  v11 = 1;
  LOBYTE(v12) = 0;
  v16 = 0;
  v17 = 1;
  sub_27139F524(8u, &__p, a3);
  if (v17 == 1)
  {
    if (v16 != 1)
    {
      goto LABEL_18;
    }

    if (v15 < 0)
    {
      operator delete(v14);
      if ((v13 & 0x80000000) == 0)
      {
LABEL_18:
        if (v11 != 1)
        {
          goto LABEL_21;
        }

LABEL_19:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_21;
      }
    }

    else if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v12);
    if (v11 != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_21:
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2714C3308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C3340(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 23);
  if (v3 < 0)
  {
    v4 = a1[1];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = a1[1];
    if (*(a1 + 23))
    {
LABEL_3:
      v26 = "Package id '";
      v27 = 12;
      v5 = *a1;
      if (v3 < 0)
      {
        v3 = v4;
      }

      else
      {
        v5 = a1;
      }

      v28 = v5;
      v29 = v3;
      v31 = 222;
      sub_271131230(&v26, &v32, 0, 0, &v17);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_271127178(&v9, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
      }

      else
      {
        v9 = v17;
      }

      v10 = 1;
      LOBYTE(v11) = 0;
      v15 = 0;
      v16 = 1;
      sub_27139F524(9u, &v9, a2);
      if (v16 == 1)
      {
        if (v15 == 1)
        {
          if (v14 < 0)
          {
            operator delete(__p);
          }

          if (v12 < 0)
          {
            operator delete(v11);
          }
        }

        if (v10 == 1 && SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
        {
          v7 = v9.__r_.__value_.__r.__words[0];
LABEL_34:
          operator delete(v7);
          goto LABEL_35;
        }
      }

      goto LABEL_35;
    }
  }

  v26 = "Package id '";
  v27 = 12;
  v6 = *a1;
  if (v3 < 0)
  {
    v3 = v4;
  }

  else
  {
    v6 = a1;
  }

  v28 = v6;
  v29 = v3;
  v30 = "' encountered during loading is unrecognized. An empty package name indicates a serialization error (e.g. invalid data in the stream)";
  v31 = 133;
  sub_271131230(&v26, &v32, 0, 0, &v17);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v18, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    v18 = v17;
  }

  v19 = 1;
  LOBYTE(v20) = 0;
  v24 = 0;
  v25 = 1;
  sub_27139F524(9u, &v18, a2);
  if (v25 == 1)
  {
    if (v24 == 1)
    {
      if (v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 < 0)
      {
        operator delete(v20);
      }
    }

    if (v19 == 1 && SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = v18.__r_.__value_.__r.__words[0];
      goto LABEL_34;
    }
  }

LABEL_35:
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2714C359C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a27 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C35E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 24))
  {
    v26 = 0;
    v29 = v25;
    v30 = "Package '";
    v31 = v25;
    v32 = "Package '";
    v33 = "Package '";
    v27.__r_.__value_.__r.__words[0] = &v29;
    sub_2711E8810(&v27);
    v29 = v25;
    v30 = a1;
    v31 = v25;
    v32 = a1;
    v33 = a1;
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v27.__r_.__value_.__r.__words[0] = &v29;
    (off_2881322F0[v26])(&v27, v25);
    v29 = v25;
    v30 = "' data type id ";
    v31 = v25;
    v32 = "' data type id ";
    v33 = "' data type id ";
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v27.__r_.__value_.__r.__words[0] = &v29;
    (*(&off_288132308 + v26))(&v27, v25);
    std::to_string(&v27, *(a1 + 24));
    v29 = v25;
    v30 = &v27;
    v31 = v25;
    v32 = &v27;
    v33 = &v27;
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v28 = &v29;
    (off_288132260[v26])(&v28, v25);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v29 = v25;
    v30 = " encountered during loading is unrecognized. The loader's package version may be too old.";
    v31 = v25;
    v32 = " encountered during loading is unrecognized. The loader's package version may be too old.";
    v33 = " encountered during loading is unrecognized. The loader's package version may be too old.";
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v27.__r_.__value_.__r.__words[0] = &v29;
    (off_288132338[v26])(&v27, v25);
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v29 = &v27;
    (off_2881322C0[v26])(v14, &v29, v25);
    if (v26 != -1)
    {
      (off_288132230[v26])(&v29, v25);
    }

    if (SHIBYTE(v15) < 0)
    {
      sub_271127178(&v5, v14[0], v14[1]);
    }

    else
    {
      v5 = *v14;
      v6 = v15;
    }

    v7 = 1;
    LOBYTE(v8) = 0;
    v12 = 0;
    v13 = 1;
    sub_27139F524(0xAu, &v5, a2);
    if (v13 == 1)
    {
      if (v12 == 1)
      {
        if (v11 < 0)
        {
          operator delete(__p);
        }

        if (v9 < 0)
        {
          operator delete(v8);
        }
      }

      if (v7 == 1 && SHIBYTE(v6) < 0)
      {
        v4 = v5;
LABEL_44:
        operator delete(v4);
      }
    }
  }

  else
  {
    v26 = 0;
    v29 = v25;
    v30 = "Package '";
    v31 = v25;
    v32 = "Package '";
    v33 = "Package '";
    v27.__r_.__value_.__r.__words[0] = &v29;
    sub_2711E8810(&v27);
    v29 = v25;
    v30 = a1;
    v31 = v25;
    v32 = a1;
    v33 = a1;
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v27.__r_.__value_.__r.__words[0] = &v29;
    (off_2881322F0[v26])(&v27, v25);
    v29 = v25;
    v30 = "' data type id ";
    v31 = v25;
    v32 = "' data type id ";
    v33 = "' data type id ";
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v27.__r_.__value_.__r.__words[0] = &v29;
    (*(&off_288132308 + v26))(&v27, v25);
    std::to_string(&v27, *(a1 + 24));
    v29 = v25;
    v30 = &v27;
    v31 = v25;
    v32 = &v27;
    v33 = &v27;
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v28 = &v29;
    (off_288132260[v26])(&v28, v25);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v29 = v25;
    v30 = " encountered during loading is unrecognized. A data type ID of 0 indicates a serialization error (e.g. invalid data in the stream)";
    v31 = v25;
    v32 = " encountered during loading is unrecognized. A data type ID of 0 indicates a serialization error (e.g. invalid data in the stream)";
    v33 = " encountered during loading is unrecognized. A data type ID of 0 indicates a serialization error (e.g. invalid data in the stream)";
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v27.__r_.__value_.__r.__words[0] = &v29;
    (off_288132320[v26])(&v27, v25);
    if (v26 == -1)
    {
      sub_2711308D4();
    }

    v29 = &v27;
    (off_2881322C0[v26])(v14, &v29, v25);
    if (v26 != -1)
    {
      (off_288132230[v26])(&v29, v25);
    }

    if (SHIBYTE(v15) < 0)
    {
      sub_271127178(v16, v14[0], v14[1]);
    }

    else
    {
      *v16 = *v14;
      v17 = v15;
    }

    v18 = 1;
    LOBYTE(v19) = 0;
    v23 = 0;
    v24 = 1;
    sub_27139F524(0xAu, v16, a2);
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

      if (v18 == 1 && SHIBYTE(v17) < 0)
      {
        v4 = v16[0];
        goto LABEL_44;
      }
    }
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_2714C3B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714C3B68(_Unwind_Exception *a1)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
    sub_271130878(v1 - 136);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2714C3BA8);
}

void sub_2714C3BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    sub_2714C3F50(", reason: ", &v3);
  }

  sub_2714C3D88("Failed to send command(s) to client ");
}

void sub_2714C3D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(exception_object);
}

void sub_2714C3D88(uint64_t a1)
{
  v2 = 0;
  v3[0] = v1;
  v3[1] = a1;
  v3[2] = v1;
  v3[3] = a1;
  v3[4] = a1;
  v4 = v3;
  sub_2712CA36C(&v4);
  sub_2714C602C();
}

void sub_2714C3EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C3F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C3F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C3F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714C3F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714C3F50(const char *a1, const char *a2)
{
  v5 = 0;
  v6 = v4;
  v7 = a1;
  v8 = v4;
  v9 = a1;
  v10 = a1;
  v11 = &v6;
  sub_2712C4188(&v11);
  if (*a2)
  {
    v6 = v4;
    v7 = a2;
    v8 = v4;
    v9 = a2;
    v10 = a2;
    if (v5 != -1)
    {
      v11 = &v6;
      (off_288132350[v5])(&v11, v4);
      goto LABEL_6;
    }

LABEL_10:
    sub_2711308D4();
  }

  v6 = v4;
  v7 = "nullptr";
  v8 = v4;
  v9 = "nullptr";
  v10 = "nullptr";
  if (v5 == -1)
  {
    goto LABEL_10;
  }

  v11 = &v6;
  (*(&off_288132248 + v5))(&v11, v4);
LABEL_6:
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v6 = &v11;
  result = (off_2881322C0[v5])(&v6, v4);
  if (v5 != -1)
  {
    return (off_288132230[v5])(&v6, v4);
  }

  return result;
}