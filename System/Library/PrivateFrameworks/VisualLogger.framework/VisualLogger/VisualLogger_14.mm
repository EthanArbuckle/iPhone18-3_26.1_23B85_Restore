void sub_2712392B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2712392E4(std::string *a1, unsigned __int8 *a2, std::string *a3)
{
  v7 = 0;
  v10 = v6;
  v11 = a1;
  v12 = v6;
  v13 = a1;
  v14 = a1;
  v8.__r_.__value_.__r.__words[0] = &v10;
  sub_2711E76D0(&v8);
  std::to_string(&v8, *a2);
  v10 = v6;
  v11 = &v8;
  v12 = v6;
  v13 = &v8;
  v14 = &v8;
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v9 = &v10;
  (off_28812EE30[v7])(&v9, v6);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  v10 = v6;
  v11 = a3;
  v12 = v6;
  v13 = a3;
  v14 = a3;
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v8.__r_.__value_.__r.__words[0] = &v10;
  (*(&off_28812EE48 + v7))(&v8, v6);
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v10 = &v8;
  result = (off_28812EE60[v7])(&v10, v6);
  if (v7 != -1)
  {
    return (off_28812EE00[v7])(&v10, v6);
  }

  return result;
}

void sub_27123944C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27123946C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x27123945CLL);
}

BOOL sub_271239490(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v10 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  v6 = sub_27123ADBC(a1, &__dst);
  if (v10 < 0)
  {
    v7 = v6;
    operator delete(__dst);
    v6 = v7;
  }

  return a1 + 8 != v6;
}

void sub_271239580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27123959C(char *__s@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v35 = __s;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  BYTE7(v25) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
  }

  *(&__dst + v7) = 0;
  v8 = sub_27123ADBC(a2, &__dst);
  if (SBYTE7(v25) < 0)
  {
    v9 = v8;
    operator delete(__dst);
    v8 = v9;
    if ((a2 + 8) != v9)
    {
      goto LABEL_9;
    }
  }

  else if ((a2 + 8) != v8)
  {
LABEL_9:
    *a3 = *(v8 + 56);
    *(a3 + 120) = 1;
    return;
  }

  v37 = 0;
  v38 = v36;
  v39 = "key '";
  v40 = v36;
  v41 = "key '";
  v42 = "key '";
  v43 = &v38;
  sub_2711E7C90(&v43);
  if (v35)
  {
    v38 = v36;
    v39 = &v35;
    v40 = v36;
    v41 = &v35;
    v42 = &v35;
    if (v37 != -1)
    {
      v43 = &v38;
      (off_28812EE78[v37])(&v43, v36);
      goto LABEL_16;
    }

LABEL_46:
    sub_2711308D4();
  }

  v38 = v36;
  v39 = "nullptr";
  v40 = v36;
  v41 = "nullptr";
  v42 = "nullptr";
  if (v37 == -1)
  {
    goto LABEL_46;
  }

  v43 = &v38;
  (*(&off_28812EE18 + v37))(&v43, v36);
LABEL_16:
  v38 = v36;
  v39 = "' not contained in enable-states";
  v40 = v36;
  v41 = "' not contained in enable-states";
  v42 = "' not contained in enable-states";
  if (v37 == -1)
  {
    sub_2711308D4();
  }

  v43 = &v38;
  (*(&off_28812EE90 + v37))(&v43, v36);
  if (v37 == -1)
  {
    sub_2711308D4();
  }

  v38 = &v43;
  (off_28812EE60[v37])(v13, &v38, v36);
  if (v37 != -1)
  {
    (off_28812EE00[v37])(&v38, v36);
  }

  if (SHIBYTE(v14) < 0)
  {
    sub_271127178(v15, v13[0], v13[1]);
  }

  else
  {
    *v15 = *v13;
    v16 = v14;
  }

  v17 = 1;
  LOBYTE(v18) = 0;
  v22 = 0;
  v23 = 1;
  sub_27112D480(0x16u, v15, &__dst);
  *a3 = __dst;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v34 == 1)
  {
    *(a3 + 40) = 0;
    v10 = v27;
    if (v27 == 1)
    {
      *(a3 + 16) = v25;
      *(a3 + 32) = v26;
      v26 = 0;
      v25 = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v11 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v33 & 1) == 0)
      {
LABEL_26:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v10)
        {
          goto LABEL_33;
        }

LABEL_31:
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }

        goto LABEL_33;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v11 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v33 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v12 = v30;
    *(v11 + 16) = v29;
    *v11 = v28;
    v28 = 0uLL;
    *(a3 + 72) = v12;
    *(a3 + 80) = v31;
    *(a3 + 96) = v32;
    v29 = 0;
    v31 = 0uLL;
    v32 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (v10)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *(a3 + 120) = 0;
  }

LABEL_33:
  if (v23 == 1)
  {
    if (v22 == 1)
    {
      if (v21 < 0)
      {
        operator delete(__p);
      }

      if (v19 < 0)
      {
        operator delete(v18);
      }
    }

    if (v17 == 1 && SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_2712399D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271239A64(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  if (*(a1 + 16) > a2)
  {
    v4 = *a1;
    if (a2 < 0)
    {
      do
      {
        v11 = *v4;
        if (*v4)
        {
          do
          {
            v5 = v11;
            v11 = v11[1];
          }

          while (v11);
        }

        else
        {
          do
          {
            v5 = v4[2];
            v9 = *v5 == v4;
            v4 = v5;
          }

          while (v9);
        }

        v4 = v5;
      }

      while (!__CFADD__(a2++, 1));
    }

    else if (a2)
    {
      do
      {
        v8 = v4[1];
        if (v8)
        {
          do
          {
            v5 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v5 = v4[2];
            v9 = *v5 == v4;
            v4 = v5;
          }

          while (!v9);
        }

        v4 = v5;
      }

      while (a2-- > 1);
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 + 4;
    if (*(v5 + 55) < 0)
    {
      v6 = *v6;
    }

    *a3 = v6;
    *(a3 + 120) = 1;
    return;
  }

  v15 = *(a1 + 16);
  sub_271239D40(v16, &v38, &v15);
  if (SHIBYTE(v17) < 0)
  {
    sub_271127178(v18, v16[0], v16[1]);
  }

  else
  {
    *v18 = *v16;
    v19 = v17;
  }

  v20 = 1;
  LOBYTE(v21) = 0;
  v25 = 0;
  v26 = 1;
  sub_27112D480(0x11u, v18, &v27);
  *a3 = v27;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v37 == 1)
  {
    *(a3 + 40) = 0;
    v12 = v30;
    if (v30 == 1)
    {
      *(a3 + 16) = __p;
      *(a3 + 32) = v29;
      v29 = 0;
      __p = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v13 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v36 & 1) == 0)
      {
LABEL_28:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v12)
        {
          goto LABEL_35;
        }

LABEL_33:
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_35;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v13 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v36 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v14 = v33;
    *(v13 + 16) = v32;
    *v13 = v31;
    v31 = 0uLL;
    *(a3 + 72) = v14;
    *(a3 + 80) = v34;
    *(a3 + 96) = v35;
    v32 = 0;
    v34 = 0uLL;
    v35 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
    *(a3 + 120) = 0;
  }

LABEL_35:
  if (v26 == 1)
  {
    if (v25 == 1)
    {
      if (v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }
    }

    if (v20 == 1 && SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
    }
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_271239D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271239D40(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v7 = 0;
  v10 = v6;
  v11 = "given index is ";
  v12 = v6;
  v13 = "given index is ";
  v14 = "given index is ";
  v8.__r_.__value_.__r.__words[0] = &v10;
  sub_27123B448(&v8);
  std::to_string(&v8, *a2);
  v10 = v6;
  v11 = &v8;
  v12 = v6;
  v13 = &v8;
  v14 = &v8;
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v9 = &v10;
  (off_28812EE30[v7])(&v9, v6);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  v10 = v6;
  v11 = " but enable-states only contain ";
  v12 = v6;
  v13 = " but enable-states only contain ";
  v14 = " but enable-states only contain ";
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v8.__r_.__value_.__r.__words[0] = &v10;
  (*(&off_28812EE90 + v7))(&v8, v6);
  std::to_string(&v8, *a3);
  v10 = v6;
  v11 = &v8;
  v12 = v6;
  v13 = &v8;
  v14 = &v8;
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v9 = &v10;
  (off_28812EE30[v7])(&v9, v6);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  v10 = v6;
  v11 = " entries";
  v12 = v6;
  v13 = " entries";
  v14 = " entries";
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v8.__r_.__value_.__r.__words[0] = &v10;
  (off_28812EEA8[v7])(&v8, v6);
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v10 = &v8;
  result = (off_28812EE60[v7])(&v10, v6);
  if (v7 != -1)
  {
    return (off_28812EE00[v7])(&v10, v6);
  }

  return result;
}

void sub_271239FB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  if (*(a1 + 16) > a2)
  {
    v4 = *a1;
    if (a2 < 0)
    {
      do
      {
        v10 = *v4;
        if (*v4)
        {
          do
          {
            v5 = v10;
            v10 = v10[1];
          }

          while (v10);
        }

        else
        {
          do
          {
            v5 = v4[2];
            v8 = *v5 == v4;
            v4 = v5;
          }

          while (v8);
        }

        v4 = v5;
      }

      while (!__CFADD__(a2++, 1));
    }

    else if (a2)
    {
      do
      {
        v7 = v4[1];
        if (v7)
        {
          do
          {
            v5 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v5 = v4[2];
            v8 = *v5 == v4;
            v4 = v5;
          }

          while (!v8);
        }

        v4 = v5;
      }

      while (a2-- > 1);
    }

    else
    {
      v5 = *a1;
    }

    *a3 = *(v5 + 56);
    *(a3 + 120) = 1;
    return;
  }

  v14 = *(a1 + 16);
  sub_271239D40(v15, &v37, &v14);
  if (SHIBYTE(v16) < 0)
  {
    sub_271127178(v17, v15[0], v15[1]);
  }

  else
  {
    *v17 = *v15;
    v18 = v16;
  }

  v19 = 1;
  LOBYTE(v20) = 0;
  v24 = 0;
  v25 = 1;
  sub_27112D480(0x11u, v17, &v26);
  *a3 = v26;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v36 == 1)
  {
    *(a3 + 40) = 0;
    v11 = v29;
    if (v29 == 1)
    {
      *(a3 + 16) = __p;
      *(a3 + 32) = v28;
      v28 = 0;
      __p = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v12 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v35 & 1) == 0)
      {
LABEL_26:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v11)
        {
          goto LABEL_33;
        }

LABEL_31:
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_33;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v12 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v35 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v13 = v32;
    *(v12 + 16) = v31;
    *v12 = v30;
    v30 = 0uLL;
    *(a3 + 72) = v13;
    *(a3 + 80) = v33;
    *(a3 + 96) = v34;
    v31 = 0;
    v33 = 0uLL;
    v34 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *(a3 + 120) = 0;
  }

LABEL_33:
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

    if (v19 == 1 && SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_27123A254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27123A280(char *__s@<X1>, uint64_t a2@<X0>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 2)
  {
    sub_271239198(a3, v18);
    *a4 = *v18;
    *(a4 + 16) = 0;
    *(a4 + 112) = 0;
    if (v28 == 1)
    {
      *(a4 + 40) = 0;
      v10 = v21;
      if (v21 == 1)
      {
        *(a4 + 16) = __p;
        *(a4 + 32) = v20;
        v20 = 0;
        __p = 0uLL;
        goto LABEL_10;
      }

LABEL_11:
      *(a4 + 48) = 0;
      *(a4 + 104) = 0;
      if (v27)
      {
        v11 = v24;
        *(a4 + 64) = v23;
        *(a4 + 48) = v22;
        v22 = 0uLL;
        *(a4 + 72) = v11;
        *(a4 + 80) = v25;
        *(a4 + 96) = v26;
        v23 = 0;
        v25 = 0uLL;
        v26 = 0;
        *(a4 + 104) = 1;
      }

      *(a4 + 112) = 1;
      *(a4 + 120) = 0;
      if (v10)
      {
        if (SHIBYTE(v20) < 0)
        {
          operator delete(__p);
        }
      }

      return;
    }

LABEL_16:
    *(a4 + 120) = 0;
    return;
  }

  v8 = strlen(__s);
  v9 = v8;
  if (!a3 && !v8)
  {
    sub_27123BF10(v18);
    *a4 = *v18;
    *(a4 + 16) = 0;
    *(a4 + 112) = 0;
    if (v28 == 1)
    {
      *(a4 + 40) = 0;
      v10 = v21;
      if (v21 == 1)
      {
        *(a4 + 16) = __p;
        *(a4 + 32) = v20;
        v20 = 0;
        __p = 0uLL;
LABEL_10:
        *(a4 + 40) = 1;
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    goto LABEL_16;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v17) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
  }

  *(&__dst + v9) = 0;
  *v18 = __dst;
  *&__p = v17;
  BYTE8(__p) = a3;
  v12 = sub_27123BAFC(a2, v18);
  if (SBYTE7(__p) < 0)
  {
    v14 = v12;
    v15 = v13;
    operator delete(v18[0]);
    v13 = v15;
    v12 = v14;
  }

  if ((v13 & 1) == 0)
  {
    *(v12 + 56) = a3;
  }

  *(a4 + 120) = 1;
}

void sub_27123A4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_27123A508(uint64_t **a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v14 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  v6 = sub_27123ADBC(a1, &__dst);
  if (v14 < 0)
  {
    operator delete(__dst);
  }

  if (a1 + 1 != v6)
  {
    v7 = v6[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      v9 = v6;
      do
      {
        v8 = v9[2];
        v10 = *v8 == v9;
        v9 = v8;
      }

      while (!v10);
    }

    if (*a1 == v6)
    {
      *a1 = v8;
    }

    v11 = a1[1];
    a1[2] = (a1[2] - 1);
    sub_271128F64(v11, v6);
    if (*(v6 + 55) < 0)
    {
      operator delete(v6[4]);
    }

    operator delete(v6);
  }

  return a1 + 1 != v6;
}

void sub_27123A664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_27123A690(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_27123A790(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

_BYTE *sub_27123A790(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_27123A92C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void *sub_27123A940(uint64_t a1, void **a2, void *a3)
{
  v3 = *a2;
  if (*a3 != a3 + 1)
  {
    sub_271120E64(v3, "{", 1);
    v6 = *a3;
    sub_271120E64(*a2, "{", 1);
    v7 = *(v6 + 55);
    if (v7 >= 0)
    {
      v8 = (v6 + 4);
    }

    else
    {
      v8 = v6[4];
    }

    if (v7 >= 0)
    {
      v9 = *(v6 + 55);
    }

    else
    {
      v9 = v6[5];
    }

    sub_271120E64(*a2, v8, v9);
    sub_271120E64(*a2, ",", 1);
    sub_27123AB44();
  }

  return sub_271120E64(v3, "{}", 2);
}

void sub_27123AD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_27123ADBC(uint64_t a1, const void **a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = (a1 + 8);
  do
  {
    while (1)
    {
      v8 = *(v3 + 55);
      v9 = v8 >= 0 ? v3 + 4 : v3[4];
      v10 = v8 >= 0 ? *(v3 + 55) : v3[5];
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, v5, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_23;
      }

LABEL_9:
      v3 = v3[1];
      if (!v3)
      {
        goto LABEL_24;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v7 = v3;
    v3 = *v3;
  }

  while (v3);
LABEL_24:
  if (v7 == v2)
  {
    return v2;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v5, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return v7;
    }

    return v2;
  }

  else
  {
    if (v6 < v15)
    {
      return v2;
    }

    return v7;
  }
}

void sub_27123AEDC(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_28812EE00[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_27123B0A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27123B0F8(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_27123B338(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

size_t sub_27123B354(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812EE00[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

size_t sub_27123B448(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812EE00[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

_BYTE *sub_27123B54C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_27123B94C(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_27123B64C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812EE00[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_27123B740(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_28812EE00[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_27123B900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_27123B94C(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_27123BAE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void *sub_27123BAFC(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void sub_27123BC74(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  switch(*a1)
  {
    case 0u:
      goto LABEL_24;
    case 2u:
      v3 = 14;
      goto LABEL_24;
    case 3u:
      v3 = 4;
      goto LABEL_24;
    case 5u:
      v3 = 15;
      goto LABEL_24;
    case 6u:
      v3 = 16;
      goto LABEL_24;
    case 7u:
      v3 = 31;
      goto LABEL_24;
    case 9u:
      v3 = 19;
      goto LABEL_24;
    case 0xAu:
      v3 = 20;
      goto LABEL_24;
    case 0xBu:
      v3 = 21;
LABEL_24:
      v4 = (a1 + 16);
      if (!a1[112])
      {
        v4 = &unk_2718BB850;
      }

      LOBYTE(v14[0]) = 0;
      v22 = 0;
      if (v4[24] == 1)
      {
        if (v4[23] < 0)
        {
          sub_271127178(v14, *v4, *(v4 + 1));
        }

        else
        {
          *v14 = *v4;
          v15 = *(v4 + 2);
        }

        v16 = 1;
        LOBYTE(v17) = 0;
        v21 = 0;
        v22 = 1;
      }

      sub_271130394(a2, v3, v14);
      if (v22 == 1)
      {
        if (v21 == 1)
        {
          if (v20 < 0)
          {
            operator delete(v19);
          }

          if (v18 < 0)
          {
            operator delete(v17);
          }
        }

        if (v16 == 1 && SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      break;
    default:
      sub_271847E00(a1, &v5);
      if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_271127178(&v6, v5.__r_.__value_.__l.__data_, v5.__r_.__value_.__l.__size_);
      }

      else
      {
        v6 = v5;
      }

      v7 = 1;
      LOBYTE(v8) = 0;
      v12 = 0;
      v13 = 1;
      sub_271130394(a2, 5u, &v6);
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

        if (v7 == 1 && SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v6.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v5.__r_.__value_.__l.__data_);
      }

      break;
  }
}

void sub_27123BED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27123BF10(uint64_t a1@<X8>)
{
  sub_27123BFD8(__p, "Invalid VZEnableState 'VZEnableStateInherit'");
  sub_27112D480(0x1Eu, __p, a1);
  if (v10 == 1)
  {
    if (v9 != 1)
    {
      goto LABEL_5;
    }

    if (v8 < 0)
    {
      operator delete(v7);
      if ((v6 & 0x80000000) == 0)
      {
LABEL_5:
        if (v4 != 1)
        {
          return;
        }

        goto LABEL_6;
      }
    }

    else if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v5);
    if (v4 != 1)
    {
      return;
    }

LABEL_6:
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_27123BFC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27123BFD8(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v9) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
    *(&__dst + v5) = 0;
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v6 = __dst;
    sub_271127178(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 88) = 0;
    operator delete(v6);
    goto LABEL_9;
  }

  LOBYTE(__dst) = 0;
  if (SHIBYTE(v9) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v9;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 88) = 0;
LABEL_9:
  *(a1 + 96) = 1;
  return a1;
}

uint64_t sub_27123C114(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  *a1 = &unk_2881186E0;
  *(a1 + 8) = *a2;
  sub_2717BAF84(a2, &v12);
  *(a1 + 24) = &unk_288112D98;
  *(a1 + 32) = v13[0];
  *(a1 + 44) = *(v13 + 12);
  v5 = v15;
  *(a1 + 64) = v14;
  *(a1 + 72) = v5;
  *(a1 + 80) = v16;
  *(a1 + 88) = v17;
  *(a1 + 104) = 1;
  if (*(a1 + 12))
  {
    v6 = *(a1 + 8) == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
  }

  v12 = v5;
  *&v13[0] = v7;
  *(&v13[0] + 1) = v8;
  if (HIDWORD(v7) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_14:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_15;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_16;
      }
    }

    do
    {
      (*v9)(*(v9 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v9 += 16;
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_14;
    }

LABEL_16:
    abort();
  }

LABEL_15:
  sub_271253768(a3, &v12);
  return a1;
}

uint64_t sub_27123C34C(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 104);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 40);
  if (!v2 || (v2(*(a1 + 32), *(a1 + 24)), LODWORD(v2) = *(a1 + 104), v2 != -1))
  {
LABEL_6:
    (off_28812EEC0[v2])(&v4, a1 + 24);
  }

LABEL_7:
  *(a1 + 104) = -1;
  return a1;
}

uint64_t sub_27123C3D0(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 104);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 40);
  if (!v2 || (v2(*(a1 + 32), *(a1 + 24)), LODWORD(v2) = *(a1 + 104), v2 != -1))
  {
LABEL_6:
    (off_28812EEC0[v2])(&v4, a1 + 24);
  }

LABEL_7:
  *(a1 + 104) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C406B89191FLL);
}

void sub_27123C53C(_Unwind_Exception *a1)
{
  sub_271253374(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

_DWORD *sub_27123C55C(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CC20, 0);
  if (!result)
  {
    (*(v4 + 9))(v20, lpsrc, 1);
    v9 = *(v20[0] + 2);
    v21 = *v20[0];
    v22 = v9;
    v20[0] = 0;
    MEMORY[0x2743BF050]();
    v10 = *(a1 + 104);
    if (v10)
    {
      if (v10 != 1)
      {
        sub_2711308D4();
      }

      v11 = 72;
    }

    else
    {
      v11 = 24;
    }

    v12 = *(a1 + v11);
    if (*(a1 + 12))
    {
      v13 = *(a1 + 8) == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    if (v13)
    {
      v14 = 0;
    }

    v20[0] = v12;
    v20[1] = v14;
    v20[2] = v15;
    if (HIDWORD(v14) * HIDWORD(v15) != -1)
    {
      return sub_271253768(&v21, v20);
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v16 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_25:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return sub_271253768(&v21, v20);
      }
    }

    else
    {
      v16 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_28;
      }
    }

    do
    {
      v19 = *v16;
      v18 = *(v16 + 8);
      v16 += 16;
      v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v16 != v17);
    if (byte_28087C430)
    {
      goto LABEL_25;
    }

LABEL_28:
    abort();
  }

  *(a1 + 8) = *(result + 2);
  v7 = *(a1 + 104);
  v8 = result[26];
  if (v7 != -1)
  {
    if (v8 == -1)
    {
      result = (off_28812EEC0[v7])(&v21, a1 + 24);
      *(a1 + 104) = -1;
      return result;
    }

LABEL_10:
    *&v21 = a1 + 24;
    return (off_28812F640[v8])(&v21);
  }

  if (v8 != -1)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_27123C80C(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (!v1)
  {
    return *(a1 + 24);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 72);
}

void sub_27123C844(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 104);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 72;
      }

      else
      {
        v8 = 24;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 12))
      {
        v10 = *(a1 + 8) == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        HIDWORD(v11) = 0;
      }

      else
      {
        v11 = *(a1 + 8);
      }

      if (HIDWORD(v11) * HIDWORD(*(a1 + 16)) != -1)
      {
LABEL_29:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_28:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_29;
        }
      }

      else
      {
        v12 = qword_28087C408;
        v13 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_30;
        }
      }

      do
      {
        v15 = *v12;
        v14 = *(v12 + 8);
        v12 += 16;
        v15(v14, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v12 != v13);
      if (byte_28087C430)
      {
        goto LABEL_28;
      }

LABEL_30:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_30;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_30;
  }

  goto LABEL_9;
}

void sub_27123CACC(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 104);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 72;
      }

      else
      {
        v8 = 24;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 12))
      {
        v10 = *(a1 + 8) == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        HIDWORD(v11) = 0;
      }

      else
      {
        v11 = *(a1 + 8);
      }

      if (HIDWORD(v11) * HIDWORD(*(a1 + 16)) != -1)
      {
LABEL_29:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_28:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_29;
        }
      }

      else
      {
        v12 = qword_28087C408;
        v13 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_30;
        }
      }

      do
      {
        v15 = *v12;
        v14 = *(v12 + 8);
        v12 += 16;
        v15(v14, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v12 != v13);
      if (byte_28087C430)
      {
        goto LABEL_28;
      }

LABEL_30:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_30;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_30;
  }

  goto LABEL_9;
}

uint64_t sub_27123CD58(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  *a1 = &unk_288118160;
  *(a1 + 8) = *a2;
  sub_2717BB1BC(a2, &v12);
  *(a1 + 24) = &unk_288112818;
  *(a1 + 32) = v13[0];
  *(a1 + 44) = *(v13 + 12);
  v5 = v15;
  *(a1 + 64) = v14;
  *(a1 + 72) = v5;
  *(a1 + 80) = v16;
  *(a1 + 88) = v17;
  *(a1 + 104) = 1;
  if (*(a1 + 12))
  {
    v6 = *(a1 + 8) == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
  }

  v12 = v5;
  *&v13[0] = v7;
  *(&v13[0] + 1) = v8;
  if (HIDWORD(v7) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_14:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_15;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_16;
      }
    }

    do
    {
      (*v9)(*(v9 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v9 += 16;
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_14;
    }

LABEL_16:
    abort();
  }

LABEL_15:
  sub_271254000(a3, &v12);
  return a1;
}

uint64_t sub_27123CF90(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 104);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 40);
  if (!v2 || (v2(*(a1 + 32), *(a1 + 24)), LODWORD(v2) = *(a1 + 104), v2 != -1))
  {
LABEL_6:
    (off_28812EEE0[v2])(&v4, a1 + 24);
  }

LABEL_7:
  *(a1 + 104) = -1;
  return a1;
}

uint64_t sub_27123D014(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 104);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 40);
  if (!v2 || (v2(*(a1 + 32), *(a1 + 24)), LODWORD(v2) = *(a1 + 104), v2 != -1))
  {
LABEL_6:
    (off_28812EEE0[v2])(&v4, a1 + 24);
  }

LABEL_7:
  *(a1 + 104) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C406B89191FLL);
}

void sub_27123D180(_Unwind_Exception *a1)
{
  sub_271253BF4(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

char *sub_27123D1A0(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CB18, 0);
  if (!result)
  {
    (*(v4 + 9))(v20, lpsrc, 2);
    v9 = *(v20[0] + 2);
    v21 = *v20[0];
    v22 = v9;
    v20[0] = 0;
    MEMORY[0x2743BF050]();
    v10 = *(a1 + 104);
    if (v10)
    {
      if (v10 != 1)
      {
        sub_2711308D4();
      }

      v11 = 72;
    }

    else
    {
      v11 = 24;
    }

    v12 = *(a1 + v11);
    if (*(a1 + 12))
    {
      v13 = *(a1 + 8) == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    if (v13)
    {
      v14 = 0;
    }

    v20[0] = v12;
    v20[1] = v14;
    v20[2] = v15;
    if (HIDWORD(v14) * HIDWORD(v15) != -1)
    {
      return sub_271254000(&v21, v20);
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v16 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_25:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return sub_271254000(&v21, v20);
      }
    }

    else
    {
      v16 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_28;
      }
    }

    do
    {
      v19 = *v16;
      v18 = *(v16 + 8);
      v16 += 16;
      v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v16 != v17);
    if (byte_28087C430)
    {
      goto LABEL_25;
    }

LABEL_28:
    abort();
  }

  *(a1 + 8) = *(result + 8);
  v7 = *(a1 + 104);
  v8 = *(result + 26);
  if (v7 != -1)
  {
    if (v8 == -1)
    {
      result = (off_28812EEE0[v7])(&v21, a1 + 24);
      *(a1 + 104) = -1;
      return result;
    }

LABEL_10:
    *&v21 = a1 + 24;
    return (off_28812F650[v8])(&v21);
  }

  if (v8 != -1)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_27123D450(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (!v1)
  {
    return *(a1 + 24);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 72);
}

void sub_27123D488(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 104);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 72;
      }

      else
      {
        v8 = 24;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 12))
      {
        v10 = *(a1 + 8) == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        HIDWORD(v11) = 0;
      }

      else
      {
        v11 = *(a1 + 8);
      }

      if (HIDWORD(v11) * HIDWORD(*(a1 + 16)) != -1)
      {
LABEL_29:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_28:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_29;
        }
      }

      else
      {
        v12 = qword_28087C408;
        v13 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_30;
        }
      }

      do
      {
        v15 = *v12;
        v14 = *(v12 + 8);
        v12 += 16;
        v15(v14, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v12 != v13);
      if (byte_28087C430)
      {
        goto LABEL_28;
      }

LABEL_30:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_30;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_30;
  }

  goto LABEL_9;
}

void sub_27123D710(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 104);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 72;
      }

      else
      {
        v8 = 24;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 12))
      {
        v10 = *(a1 + 8) == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        HIDWORD(v11) = 0;
      }

      else
      {
        v11 = *(a1 + 8);
      }

      if (HIDWORD(v11) * HIDWORD(*(a1 + 16)) != -1)
      {
LABEL_29:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_28:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_29;
        }
      }

      else
      {
        v12 = qword_28087C408;
        v13 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_30;
        }
      }

      do
      {
        v15 = *v12;
        v14 = *(v12 + 8);
        v12 += 16;
        v15(v14, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v12 != v13);
      if (byte_28087C430)
      {
        goto LABEL_28;
      }

LABEL_30:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_30;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_30;
  }

  goto LABEL_9;
}

__int16 sub_27123D99C@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = v2 == 1 && v3 == 1;
  if (v4)
  {
    v22 = *(a1 + 20);
    v23 = *(a2 + 20);
    v24 = *(a1 + 8);
    if (v22 != v23 || v22 != v24)
    {
      v26 = *(a1 + 12);
      if (v24)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        return v63;
      }

      v28 = *a1;
      v29 = *a2;
      if (v26 == 1)
      {
LABEL_25:
        v30 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v30 < 3 || (v29 - v28) < 0x20)
        {
          v40 = v29;
          v41 = v28;
          goto LABEL_83;
        }

        v31 = v30 + 1;
        if (v30 >= 0xF)
        {
          v32 = v31 & 0xFFFFFFFFFFFFFFF0;
          v74 = (v28 + 8);
          v75 = v29 + 8;
          v76 = v31 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v63 = *(v74 - 1);
            v77 = *v74;
            *(v75 - 1) = v63;
            *v75 = v77;
            v74 += 2;
            v75 += 2;
            v76 -= 16;
          }

          while (v76);
          if (v31 == v32)
          {
            return v63;
          }

          if ((v31 & 0xC) == 0)
          {
            v41 = &v28[v32];
            v40 = &v29[v32];
            goto LABEL_83;
          }
        }

        else
        {
          v32 = 0;
        }

        v78 = v31 & 0xFFFFFFFFFFFFFFFCLL;
        v40 = &v29[v78];
        v41 = &v28[v78];
        v79 = &v28[v32];
        v80 = &v29[v32];
        v81 = v32 - (v31 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v82 = *v79++;
          LOWORD(v63) = v82;
          *v80 = v82;
          v80 += 4;
          v81 += 4;
        }

        while (v81);
        if (v31 == (v31 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return v63;
        }

LABEL_83:
        v85 = &v28[v24];
        do
        {
          v86 = *v41++;
          LOWORD(v63) = v86;
          *v40++ = v86;
        }

        while (v41 != v85);
        return v63;
      }

      v42 = 0;
      v43 = v26 - 2;
      v44 = (v24 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      v45 = v44 + 1;
      v46 = v29 >= &v28[v24 + v22 * v43] || v28 >= &v29[v24 + v23 * v43];
      v47 = v45 & 0xFFFFFFFFFFFFFFF0;
      v48 = v45 & 0xFFFFFFFFFFFFFFFCLL;
      v49 = v45 & 0xFFFFFFFFFFFFFFFCLL;
      v50 = !v46;
      v51 = 2 * v22;
      v52 = 2 * v23;
      while (1)
      {
        v53 = v29;
        v54 = v28;
        if (!((v44 < 3) | v50 & 1))
        {
          if (v44 < 0xF)
          {
            v55 = 0;
LABEL_50:
            v53 = &v29[v49];
            v54 = &v28[v49];
            v60 = v55;
            v61 = v55 - v48;
            do
            {
              *&v29[v60] = *&v28[v60];
              v60 += 4;
              v61 += 4;
            }

            while (v61);
            if (v45 == v48)
            {
              goto LABEL_42;
            }

            goto LABEL_55;
          }

          v56 = 0;
          v57 = v45 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v58 = &v29[v56];
            v59 = *&v28[v56 + 8];
            *v58 = *&v28[v56];
            *(v58 + 1) = v59;
            v56 += 16;
            v57 -= 16;
          }

          while (v57);
          if (v45 == (v45 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_42;
          }

          v55 = v45 & 0xFFFFFFFFFFFFFFF0;
          if ((v45 & 0xC) != 0)
          {
            goto LABEL_50;
          }

          v54 = &v28[v47];
          v53 = &v29[v47];
        }

        do
        {
LABEL_55:
          v62 = *v54++;
          *v53++ = v62;
        }

        while (v54 != &v28[v24]);
LABEL_42:
        v28 = (v28 + v51);
        v29 = (v29 + v52);
        v4 = v42++ == v43;
        if (v4)
        {
          goto LABEL_25;
        }
      }
    }

    v33 = (*(a1 + 12) * v22);
    if (!v33)
    {
      return v63;
    }

    v34 = *a1;
    v35 = *a2;
    v36 = (v33 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    if (v36 < 3)
    {
      v37 = *a1;
      goto LABEL_79;
    }

    v37 = *a1;
    if ((v35 - v34) < 0x20)
    {
      goto LABEL_79;
    }

    v38 = v36 + 1;
    if (v36 >= 0xF)
    {
      v39 = v38 & 0xFFFFFFFFFFFFFFF0;
      v64 = (v34 + 8);
      v65 = v35 + 8;
      v66 = v38 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v63 = *(v64 - 1);
        v67 = *v64;
        *(v65 - 1) = v63;
        *v65 = v67;
        v64 += 2;
        v65 += 2;
        v66 -= 16;
      }

      while (v66);
      if (v38 == v39)
      {
        return v63;
      }

      if ((v38 & 0xC) == 0)
      {
        v37 = &v34[v39];
        v35 += v39;
        goto LABEL_79;
      }
    }

    else
    {
      v39 = 0;
    }

    v68 = v38 & 0xFFFFFFFFFFFFFFFCLL;
    v69 = &v35[v68];
    v37 = &v34[v68];
    v70 = &v34[v39];
    v71 = &v35[v39];
    v72 = v39 - (v38 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v73 = *v70++;
      LOWORD(v63) = v73;
      *v71 = v73;
      v71 += 4;
      v72 += 4;
    }

    while (v72);
    v35 = v69;
    if (v38 == (v38 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v63;
    }

LABEL_79:
    v83 = &v34[v33];
    do
    {
      v84 = *v37++;
      LOWORD(v63) = v84;
      *v35++ = v84;
    }

    while (v37 != v83);
    return v63;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v5 - 1;
    v9 = *a1;
    v10 = *a2;
    v11 = 2 * v2;
    v12 = 2 * v3;
    v13 = v6 - 1;
    if (v13)
    {
      v14 = *(a2 + 20);
      v15 = *(a1 + 20);
      if (v8)
      {
        v16 = 0;
        v17 = 2 * v15;
        v18 = 2 * v14;
        do
        {
          v19 = v10;
          v20 = v9;
          v21 = v8;
          do
          {
            *v19 = *v20;
            v20 = (v20 + v11);
            v19 = (v19 + v12);
            --v21;
          }

          while (v21);
          *v19 = *v20;
          v9 = (v9 + v17);
          v10 = (v10 + v18);
          ++v16;
        }

        while (v16 != v13);
        goto LABEL_59;
      }

      do
      {
        *v10 = *v9;
        v9 += v15;
        v10 += v14;
        --v13;
      }

      while (v13);
    }

    if (!v8)
    {
LABEL_60:
      LOWORD(v63) = *v9;
      *v10 = *v9;
      return v63;
    }

    do
    {
LABEL_59:
      *v10 = *v9;
      v9 = (v9 + v11);
      v10 = (v10 + v12);
      --v8;
    }

    while (v8);
    goto LABEL_60;
  }

  return v63;
}

uint64_t sub_27123DD9C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = &unk_288117BE0;
  *(a1 + 8) = *a2;
  sub_2717BB40C(a2, &v14);
  *(a1 + 24) = &unk_288112298;
  *(a1 + 32) = v15[0];
  *(a1 + 44) = *(v15 + 12);
  *(a1 + 64) = v16;
  *(a1 + 80) = v17;
  v16 = 0uLL;
  *(a1 + 88) = v18;
  *(a1 + 104) = 1;
  sub_27179E364(&v14);
  v5 = *(a1 + 104);
  if (v5)
  {
    if (v5 != 1)
    {
      sub_2711308D4();
    }

    v6 = 72;
  }

  else
  {
    v6 = 24;
  }

  v7 = *(a1 + v6);
  if (*(a1 + 12))
  {
    v8 = *(a1 + 8) == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v8)
  {
    v9 = 0;
  }

  v14 = v7;
  *&v15[0] = v9;
  *(&v15[0] + 1) = v10;
  if (HIDWORD(v9) * HIDWORD(v10) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_19;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    do
    {
      (*v11)(*(v11 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v11 += 16;
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_21:
    abort();
  }

LABEL_19:
  sub_27123D99C(a3, &v14);
  return a1;
}

uint64_t sub_27123E008(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 104);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 40);
  if (!v2 || (v2(*(a1 + 32), *(a1 + 24)), LODWORD(v2) = *(a1 + 104), v2 != -1))
  {
LABEL_6:
    (off_28812EF00[v2])(&v4, a1 + 24);
  }

LABEL_7:
  *(a1 + 104) = -1;
  return a1;
}

uint64_t sub_27123E08C(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 104);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 40);
  if (!v2 || (v2(*(a1 + 32), *(a1 + 24)), LODWORD(v2) = *(a1 + 104), v2 != -1))
  {
LABEL_6:
    (off_28812EF00[v2])(&v4, a1 + 24);
  }

LABEL_7:
  *(a1 + 104) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C406B89191FLL);
}

void sub_27123E1F8(_Unwind_Exception *a1)
{
  sub_2712544B4(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

double sub_27123E218(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CA10, 0);
  if (!v6)
  {
    (*(v4 + 9))(v22, lpsrc, 3);
    v10 = *(v22[0] + 16);
    v23 = *v22[0];
    v24 = v10;
    v22[0] = 0;
    MEMORY[0x2743BF050]();
    v11 = *(a1 + 104);
    if (v11)
    {
      if (v11 != 1)
      {
        sub_2711308D4();
      }

      v12 = 72;
    }

    else
    {
      v12 = 24;
    }

    v13 = *(a1 + v12);
    if (*(a1 + 12))
    {
      v14 = *(a1 + 8) == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = *(a1 + 8);
    v16 = *(a1 + 16);
    if (v14)
    {
      v15 = 0;
    }

    v22[0] = v13;
    v22[1] = v15;
    v22[2] = v16;
    if (HIDWORD(v15) * HIDWORD(v16) != -1)
    {
      goto LABEL_26;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v18 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_25:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_26:
        *&v7 = sub_27123D99C(&v23, v22);
        return *&v7;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v18 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_28;
      }
    }

    do
    {
      v20 = *v17;
      v19 = *(v17 + 8);
      v17 += 16;
      v20(v19, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v17 != v18);
    if (byte_28087C430)
    {
      goto LABEL_25;
    }

LABEL_28:
    abort();
  }

  v7 = *(v6 + 8);
  *(a1 + 8) = v7;
  v8 = *(a1 + 104);
  v9 = *(v6 + 26);
  if (v8 == -1)
  {
    if (v9 == -1)
    {
      return *&v7;
    }
  }

  else if (v9 == -1)
  {
    (off_28812EF00[v8])(&v23, a1 + 24);
    *(a1 + 104) = -1;
    return *&v7;
  }

  *&v23 = a1 + 24;
  (off_28812F660[v9])(&v23);
  return *&v7;
}

uint64_t sub_27123E4C8(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (!v1)
  {
    return *(a1 + 24);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 72);
}

void sub_27123E500(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 104);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 72;
      }

      else
      {
        v8 = 24;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 12))
      {
        v10 = *(a1 + 8) == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        HIDWORD(v11) = 0;
      }

      else
      {
        v11 = *(a1 + 8);
      }

      if (HIDWORD(v11) * HIDWORD(*(a1 + 16)) != -1)
      {
LABEL_29:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_28:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_29;
        }
      }

      else
      {
        v12 = qword_28087C408;
        v13 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_30;
        }
      }

      do
      {
        v15 = *v12;
        v14 = *(v12 + 8);
        v12 += 16;
        v15(v14, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v12 != v13);
      if (byte_28087C430)
      {
        goto LABEL_28;
      }

LABEL_30:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_30;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_30;
  }

  goto LABEL_9;
}

void sub_27123E788(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 104);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 72;
      }

      else
      {
        v8 = 24;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 12))
      {
        v10 = *(a1 + 8) == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        HIDWORD(v11) = 0;
      }

      else
      {
        v11 = *(a1 + 8);
      }

      if (HIDWORD(v11) * HIDWORD(*(a1 + 16)) != -1)
      {
LABEL_29:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_28:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_29;
        }
      }

      else
      {
        v12 = qword_28087C408;
        v13 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_30;
        }
      }

      do
      {
        v15 = *v12;
        v14 = *(v12 + 8);
        v12 += 16;
        v15(v14, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v12 != v13);
      if (byte_28087C430)
      {
        goto LABEL_28;
      }

LABEL_30:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_30;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_30;
  }

  goto LABEL_9;
}

uint64_t sub_27123EA14(uint64_t a1, uint64_t *a2, char **a3)
{
  *a1 = &unk_288117AE0;
  *(a1 + 8) = *a2;
  sub_2717BB6BC(a2, &v12);
  *(a1 + 24) = &unk_288112198;
  *(a1 + 32) = v13[0];
  *(a1 + 44) = *(v13 + 12);
  v5 = v15;
  *(a1 + 64) = v14;
  *(a1 + 72) = v5;
  *(a1 + 80) = v16;
  *(a1 + 88) = v17;
  *(a1 + 104) = 1;
  if (*(a1 + 12))
  {
    v6 = *(a1 + 8) == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
  }

  v12 = v5;
  *&v13[0] = v7;
  *(&v13[0] + 1) = v8;
  if (HIDWORD(v7) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_14:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_15;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_16;
      }
    }

    do
    {
      (*v9)(*(v9 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v9 += 16;
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_14;
    }

LABEL_16:
    abort();
  }

LABEL_15:
  sub_27125505C(a3, &v12);
  return a1;
}

uint64_t sub_27123EC4C(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 104);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 40);
  if (!v2 || (v2(*(a1 + 32), *(a1 + 24)), LODWORD(v2) = *(a1 + 104), v2 != -1))
  {
LABEL_6:
    (off_28812EF20[v2])(&v4, a1 + 24);
  }

LABEL_7:
  *(a1 + 104) = -1;
  return a1;
}

uint64_t sub_27123ECD0(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 104);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 40);
  if (!v2 || (v2(*(a1 + 32), *(a1 + 24)), LODWORD(v2) = *(a1 + 104), v2 != -1))
  {
LABEL_6:
    (off_28812EF20[v2])(&v4, a1 + 24);
  }

LABEL_7:
  *(a1 + 104) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C406B89191FLL);
}

void sub_27123EE3C(_Unwind_Exception *a1)
{
  sub_271254C50(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

float sub_27123EE5C(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812C9E0, 0);
  if (!v6)
  {
    (*(v4 + 9))(v22, lpsrc, 4);
    v10 = *(v22[0] + 2);
    v23 = *v22[0];
    v24 = v10;
    v22[0] = 0;
    MEMORY[0x2743BF050]();
    v11 = *(a1 + 104);
    if (v11)
    {
      if (v11 != 1)
      {
        sub_2711308D4();
      }

      v12 = 72;
    }

    else
    {
      v12 = 24;
    }

    v13 = *(a1 + v12);
    if (*(a1 + 12))
    {
      v14 = *(a1 + 8) == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = *(a1 + 8);
    v16 = *(a1 + 16);
    if (v14)
    {
      v15 = 0;
    }

    v22[0] = v13;
    v22[1] = v15;
    v22[2] = v16;
    if (HIDWORD(v15) * HIDWORD(v16) != -1)
    {
      goto LABEL_26;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v18 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_25:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_26:
        *&v7 = sub_27125505C(&v23, v22);
        return *&v7;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v18 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_28;
      }
    }

    do
    {
      v20 = *v17;
      v19 = *(v17 + 8);
      v17 += 16;
      v20(v19, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v17 != v18);
    if (byte_28087C430)
    {
      goto LABEL_25;
    }

LABEL_28:
    abort();
  }

  v7 = *(v6 + 8);
  *(a1 + 8) = v7;
  v8 = *(a1 + 104);
  v9 = *(v6 + 26);
  if (v8 == -1)
  {
    if (v9 == -1)
    {
      return *&v7;
    }
  }

  else if (v9 == -1)
  {
    (off_28812EF20[v8])(&v23, a1 + 24);
    *(a1 + 104) = -1;
    return *&v7;
  }

  *&v23 = a1 + 24;
  (off_28812F670[v9])(&v23);
  return *&v7;
}

uint64_t sub_27123F10C(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (!v1)
  {
    return *(a1 + 24);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 72);
}

void sub_27123F144(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 104);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 72;
      }

      else
      {
        v8 = 24;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 12))
      {
        v10 = *(a1 + 8) == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        HIDWORD(v11) = 0;
      }

      else
      {
        v11 = *(a1 + 8);
      }

      if (HIDWORD(v11) * HIDWORD(*(a1 + 16)) != -1)
      {
LABEL_29:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_28:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_29;
        }
      }

      else
      {
        v12 = qword_28087C408;
        v13 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_30;
        }
      }

      do
      {
        v15 = *v12;
        v14 = *(v12 + 8);
        v12 += 16;
        v15(v14, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v12 != v13);
      if (byte_28087C430)
      {
        goto LABEL_28;
      }

LABEL_30:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_30;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_30;
  }

  goto LABEL_9;
}

void sub_27123F3CC(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 104);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 72;
      }

      else
      {
        v8 = 24;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 12))
      {
        v10 = *(a1 + 8) == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        HIDWORD(v11) = 0;
      }

      else
      {
        v11 = *(a1 + 8);
      }

      if (HIDWORD(v11) * HIDWORD(*(a1 + 16)) != -1)
      {
LABEL_29:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_28:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_29;
        }
      }

      else
      {
        v12 = qword_28087C408;
        v13 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_30;
        }
      }

      do
      {
        v15 = *v12;
        v14 = *(v12 + 8);
        v12 += 16;
        v15(v14, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v12 != v13);
      if (byte_28087C430)
      {
        goto LABEL_28;
      }

LABEL_30:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_30;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_30;
  }

  goto LABEL_9;
}

uint64_t sub_27123F658(uint64_t result, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 160);
  if (v2)
  {
    if (v2 != 1)
    {
      sub_2711308D4();
    }

    v3 = 120;
  }

  else
  {
    v3 = 48;
  }

  v4 = *(a2 + v3);
  if (*(a2 + 16))
  {
    v5 = *(a2 + 12) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5 || *(a2 + 8) == 0;
  v7 = *(a2 + 12);
  if (v6)
  {
    v7 = 0;
  }

  LODWORD(v17) = 2;
  DWORD1(v17) = v7;
  v8 = v17;
  LODWORD(v17) = 1;
  *(&v17 + 4) = *(a2 + 24);
  *result = v4;
  *(result + 8) = v8;
  *(result + 16) = HIDWORD(v7);
  *(result + 20) = v17;
  *(result + 28) = DWORD2(v17);
  *(result + 32) = v7;
  *(result + 40) = *(&v17 + 4);
  if (DWORD2(v17) * HIDWORD(v7) != -1)
  {
    v9 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  if (byte_28087C438 == 1)
  {
    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_20:
        v13 = *v10;
        v12 = *(v10 + 8);
        v10 += 16;
        v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v10 != v11);
      if (byte_28087C430)
      {
        goto LABEL_22;
      }

LABEL_26:
      abort();
    }
  }

LABEL_22:
  v15 = qword_28087C420;
  v14 = *algn_28087C428;
  v16 = *MEMORY[0x277D85DE8];

  return v15(v14, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
}

uint64_t sub_27123F884(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812EF40[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_27123F908(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812EF40[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_27123FA84(_Unwind_Exception *a1)
{
  sub_271255510(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

size_t *sub_27123FAA4(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812C9C8, 0);
  if (!result)
  {
    (*(v4 + 9))(v14, lpsrc, 5);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_27123F658(v14, a1);
    return sub_27129F754(v15, v14);
  }

  v7 = *(result + 1);
  v8 = *(result + 3);
  *(a1 + 40) = result[5];
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(result + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      result = (off_28812EF40[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return result;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    return (off_28812F680[v10])(v15);
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_27123FC24(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_27123FC5C(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
LABEL_10:
    sub_27123F658(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27123FDC8(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 5)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_2712400F8(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812EF60[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_27124017C(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812EF60[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_2712402F8(_Unwind_Exception *a1)
{
  sub_27125606C(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_271240318(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812C9B0, 0);
  if (!result)
  {
    (*(v4 + 9))(v14, lpsrc, 6);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_27123F658(v14, a1);
    return sub_2712A023C(v15, v14);
  }

  v7 = *(result + 1);
  v8 = *(result + 3);
  *(a1 + 40) = result[5];
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(result + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      result = (off_28812EF60[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return result;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    return (off_28812F690[v10])(v15);
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_271240498(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_2712404D0(uint64_t a1, int a2)
{
  if (a2 == 6)
  {
LABEL_10:
    sub_27123F658(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27124063C(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 6)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_27124096C(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812EF80[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_2712409F0(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812EF80[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_271240B6C(_Unwind_Exception *a1)
{
  sub_271256EB4(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_271240B8C(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812C998, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 7);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_27123F658(v14, a1);
    v16[0] = v15;
    v16[1] = v14;
    sub_2712A0BBC(v16);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812EF80[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F6A0[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_271240D14(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_271240D4C(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
LABEL_10:
    sub_27123F658(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271240EB8(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 7)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_2712411E8(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812EFA0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_27124126C(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812EFA0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_2712413E8(_Unwind_Exception *a1)
{
  sub_2712578C4(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_271241408(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812C980, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 8);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_27123F658(v14, a1);
    sub_2712A2500(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812EFA0[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F6B0[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_271241588(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_2712415C0(uint64_t a1, int a2)
{
  if (a2 == 8)
  {
LABEL_10:
    sub_27123F658(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27124172C(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 8)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_271241A5C(uint64_t result, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 160);
  if (v2)
  {
    if (v2 != 1)
    {
      sub_2711308D4();
    }

    v3 = 120;
  }

  else
  {
    v3 = 48;
  }

  v4 = *(a2 + v3);
  if (*(a2 + 16))
  {
    v5 = *(a2 + 12) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5 || *(a2 + 8) == 0;
  v7 = *(a2 + 12);
  if (v6)
  {
    v7 = 0;
  }

  LODWORD(v17) = 3;
  DWORD1(v17) = v7;
  v8 = v17;
  LODWORD(v17) = 1;
  *(&v17 + 4) = *(a2 + 24);
  *result = v4;
  *(result + 8) = v8;
  *(result + 16) = HIDWORD(v7);
  *(result + 20) = v17;
  *(result + 28) = DWORD2(v17);
  *(result + 32) = v7;
  *(result + 40) = *(&v17 + 4);
  if (DWORD2(v17) * HIDWORD(v7) != -1)
  {
    v9 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  if (byte_28087C438 == 1)
  {
    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_20:
        v13 = *v10;
        v12 = *(v10 + 8);
        v10 += 16;
        v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v10 != v11);
      if (byte_28087C430)
      {
        goto LABEL_22;
      }

LABEL_26:
      abort();
    }
  }

LABEL_22:
  v15 = qword_28087C420;
  v14 = *algn_28087C428;
  v16 = *MEMORY[0x277D85DE8];

  return v15(v14, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
}

uint64_t sub_271241C88(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812EFC0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_271241D0C(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812EFC0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_271241E88(_Unwind_Exception *a1)
{
  sub_27125870C(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_271241EA8(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812C968, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 9);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271241A5C(v14, a1);
    sub_2712A2E80(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812EFC0[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F6C0[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_271242028(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_271242060(uint64_t a1, int a2)
{
  if (a2 == 9)
  {
LABEL_10:
    sub_271241A5C(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_2712421CC(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 9)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_2712424FC(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812EFE0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_271242580(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812EFE0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_2712426FC(_Unwind_Exception *a1)
{
  sub_271258AD0(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_27124271C(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CD10, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 10);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271241A5C(v14, a1);
    sub_2712A3624(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812EFE0[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F6D0[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_27124289C(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_2712428D4(uint64_t a1, int a2)
{
  if (a2 == 10)
  {
LABEL_10:
    sub_271241A5C(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271242A40(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 10)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_271242D70(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F000[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_271242DF4(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F000[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_271242F70(_Unwind_Exception *a1)
{
  sub_271258E94(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_271242F90(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CCF8, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 11);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271241A5C(v14, a1);
    v16[0] = v15;
    v16[1] = v14;
    sub_2712A3E18(v16);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F000[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F6E0[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_271243118(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_271243150(uint64_t a1, int a2)
{
  if (a2 == 11)
  {
LABEL_10:
    sub_271241A5C(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_2712432BC(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 11)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_2712435EC(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F020[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_271243670(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F020[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_2712437EC(_Unwind_Exception *a1)
{
  sub_271259230(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_27124380C(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CCE0, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 12);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271241A5C(v14, a1);
    sub_2712A5814(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F020[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F6F0[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_27124398C(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_2712439C4(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
LABEL_10:
    sub_271241A5C(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271243B30(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 12)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_271243E60(uint64_t result, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 160);
  if (v2)
  {
    if (v2 != 1)
    {
      sub_2711308D4();
    }

    v3 = 120;
  }

  else
  {
    v3 = 48;
  }

  v4 = *(a2 + v3);
  if (*(a2 + 16))
  {
    v5 = *(a2 + 12) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5 || *(a2 + 8) == 0;
  v7 = *(a2 + 12);
  if (v6)
  {
    v7 = 0;
  }

  LODWORD(v17) = 4;
  DWORD1(v17) = v7;
  v8 = v17;
  LODWORD(v17) = 1;
  *(&v17 + 4) = *(a2 + 24);
  *result = v4;
  *(result + 8) = v8;
  *(result + 16) = HIDWORD(v7);
  *(result + 20) = v17;
  *(result + 28) = DWORD2(v17);
  *(result + 32) = v7;
  *(result + 40) = *(&v17 + 4);
  if (DWORD2(v17) * HIDWORD(v7) != -1)
  {
    v9 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  if (byte_28087C438 == 1)
  {
    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_20:
        v13 = *v10;
        v12 = *(v10 + 8);
        v10 += 16;
        v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v10 != v11);
      if (byte_28087C430)
      {
        goto LABEL_22;
      }

LABEL_26:
      abort();
    }
  }

LABEL_22:
  v15 = qword_28087C420;
  v14 = *algn_28087C428;
  v16 = *MEMORY[0x277D85DE8];

  return v15(v14, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
}

uint64_t sub_27124408C(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F040[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_271244110(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F040[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_27124428C(_Unwind_Exception *a1)
{
  sub_2712595F4(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_2712442AC(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CCC8, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 13);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    sub_2712A6008(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F040[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F700[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_27124442C(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_271244464(uint64_t a1, int a2)
{
  if (a2 == 13)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_2712445D0(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 13)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

void sub_271244900(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != 1 || *(a2 + 20) != 1)
  {
    v27 = 0;
    if (*(a1 + 8))
    {
      v5 = *(a1 + 12) == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && *(a1 + 16) != 0)
    {
      sub_2712A67FC(&v27, a1, a2);
    }

    return;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  if (v7 != *(a2 + 24) || v7 != v8)
  {
    v28 = *(a1 + 8);
    if (v8)
    {
      v10 = *(a1 + 12) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 && *(a1 + 16) != 0)
    {
      sub_2712566FC(&v28, a1, a2);
    }

    return;
  }

  v12 = *(a1 + 28);
  v13 = *(a2 + 28);
  v14 = *(a1 + 12);
  v15 = (v14 * v7);
  if (v12 == v13 && v12 == v15)
  {
    v26 = *(a1 + 16) * v12;
    if (!v26)
    {
      return;
    }

    v23 = 2 * v26;
    v24 = *a2;
    v25 = *a1;
    goto LABEL_40;
  }

  if (v7)
  {
    if (v14)
    {
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = *a1;
        v19 = *a2;
        v20 = v17 - 1;
        if (v17 != 1)
        {
          if (!v15)
          {
            return;
          }

          v21 = 2 * v12;
          v22 = 2 * v13;
          do
          {
            memmove(v19, v18, 2 * v15);
            v18 += v21;
            v19 += v22;
            --v20;
          }

          while (v20);
        }

        if (v15)
        {
          v23 = 2 * v15;
          v24 = v19;
          v25 = v18;
LABEL_40:

          memmove(v24, v25, v23);
        }
      }
    }
  }
}

uint64_t sub_271244A88(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F060[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_271244B0C(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F060[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_271244C88(_Unwind_Exception *a1)
{
  sub_2712599B8(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_271244CA8(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CCB0, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 14);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    sub_271244900(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F060[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F710[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_271244E28(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_271244E60(uint64_t a1, int a2)
{
  if (a2 == 14)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271244FCC(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 14)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_2712452FC(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F080[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_271245380(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F080[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_2712454FC(_Unwind_Exception *a1)
{
  sub_271259D7C(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_27124551C(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CC98, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 15);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    v16[0] = v15;
    v16[1] = v14;
    sub_2712A6EAC(v16);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F080[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F720[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_2712456A4(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_2712456DC(uint64_t a1, int a2)
{
  if (a2 == 15)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271245848(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 15)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

void sub_271245B78(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != 1 || *(a2 + 20) != 1)
  {
    v27 = 0;
    if (*(a1 + 8))
    {
      v5 = *(a1 + 12) == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && *(a1 + 16) != 0)
    {
      sub_2712A88F8(&v27, a1, a2);
    }

    return;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  if (v7 != *(a2 + 24) || v7 != v8)
  {
    v28 = *(a1 + 8);
    if (v8)
    {
      v10 = *(a1 + 12) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 && *(a1 + 16) != 0)
    {
      sub_271257F54(&v28, a1, a2);
    }

    return;
  }

  v12 = *(a1 + 28);
  v13 = *(a2 + 28);
  v14 = *(a1 + 12);
  v15 = (v14 * v7);
  if (v12 == v13 && v12 == v15)
  {
    v26 = *(a1 + 16) * v12;
    if (!v26)
    {
      return;
    }

    v23 = 4 * v26;
    v24 = *a2;
    v25 = *a1;
    goto LABEL_40;
  }

  if (v7)
  {
    if (v14)
    {
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = *a1;
        v19 = *a2;
        v20 = v17 - 1;
        if (v17 != 1)
        {
          if (!v15)
          {
            return;
          }

          v21 = 4 * v12;
          v22 = 4 * v13;
          do
          {
            memmove(v19, v18, 4 * v15);
            v18 += v21;
            v19 += v22;
            --v20;
          }

          while (v20);
        }

        if (v15)
        {
          v23 = 4 * v15;
          v24 = v19;
          v25 = v18;
LABEL_40:

          memmove(v24, v25, v23);
        }
      }
    }
  }
}

uint64_t sub_271245D00(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F0A0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_271245D84(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F0A0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_271245F00(_Unwind_Exception *a1)
{
  sub_27125A118(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_271245F20(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CC80, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 16);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271243E60(v14, a1);
    sub_271245B78(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F0A0[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F730[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_2712460A0(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_2712460D8(uint64_t a1, int a2)
{
  if (a2 == 16)
  {
LABEL_10:
    sub_271243E60(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271246244(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 16)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_271246574(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F0C0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_2712465F8(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F0C0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_271246774(_Unwind_Exception *a1)
{
  sub_27125A4DC(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_271246794(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CC68, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 17);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271241A5C(v14, a1);
    sub_2712A2E80(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F0C0[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F740[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_271246914(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_27124694C(uint64_t a1, int a2)
{
  if (a2 == 17)
  {
LABEL_10:
    sub_271241A5C(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271246AB8(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 17)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_271246DE8(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F0E0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_271246E6C(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F0E0[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_271246FE8(_Unwind_Exception *a1)
{
  sub_27125A8A0(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_271247008(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CC50, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 18);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271241A5C(v14, a1);
    sub_2712A3624(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F0E0[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F750[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_271247188(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_2712471C0(uint64_t a1, int a2)
{
  if (a2 == 18)
  {
LABEL_10:
    sub_271241A5C(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27124732C(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 18)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_27124765C(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F100[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_2712476E0(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F100[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_27124785C(_Unwind_Exception *a1)
{
  sub_27125AC64(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_27124787C(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CC38, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 19);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271241A5C(v14, a1);
    v16[0] = v15;
    v16[1] = v14;
    sub_2712A3E18(v16);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F100[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F760[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_271247A04(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_271247A3C(uint64_t a1, int a2)
{
  if (a2 == 19)
  {
LABEL_10:
    sub_271241A5C(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271247BA8(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 == 19)
  {
    goto LABEL_10;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 108, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
LABEL_10:
      v7 = *(a1 + 160);
      if (v7)
      {
        if (v7 != 1)
        {
          sub_2711308D4();
        }

        v8 = 120;
      }

      else
      {
        v8 = 48;
      }

      v9 = *(a1 + v8);
      if (*(a1 + 16))
      {
        v10 = *(a1 + 12) == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10 || *(a1 + 8) == 0;
      v12 = *(a1 + 12);
      if (v11)
      {
        HIDWORD(v12) = 0;
      }

      if (HIDWORD(*(a1 + 24)) * HIDWORD(v12) != -1)
      {
LABEL_31:
        operator new();
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = qword_28087C408;
        v14 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_32;
        }
      }

      do
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v13 += 16;
        v16(v15, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v13 != v14);
      if (byte_28087C430)
      {
        goto LABEL_30;
      }

LABEL_32:
      abort();
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_32;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_32;
  }

  goto LABEL_9;
}

uint64_t sub_271247ED8(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F120[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return a1;
}

uint64_t sub_271247F5C(uint64_t a1)
{
  LODWORD(v2) = *(a1 + 160);
  if (v2)
  {
    if (v2 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2 = *(a1 + 64);
  if (!v2 || (v2(*(a1 + 56), *(a1 + 48)), LODWORD(v2) = *(a1 + 160), v2 != -1))
  {
LABEL_6:
    (off_28812F120[v2])(&v4, a1 + 48);
  }

LABEL_7:
  *(a1 + 160) = -1;
  return MEMORY[0x2743BF050](a1, 0x1093C40699DA9F5);
}

void sub_2712480D8(_Unwind_Exception *a1)
{
  sub_27125B000(v3);
  MEMORY[0x2743BF050](v2, v1);
  _Unwind_Resume(a1);
}

void sub_2712480F8(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28812CC08, 0);
  if (!v6)
  {
    (*(v4 + 9))(v14, lpsrc, 20);
    v11 = v14[0];
    v13 = *(v14[0] + 16);
    v12 = *(v14[0] + 32);
    v15[0] = *v14[0];
    v15[1] = v13;
    v15[2] = v12;
    v14[0] = 0;
    MEMORY[0x2743BF050](v11);
    sub_271241A5C(v14, a1);
    sub_2712A5814(v15, v14);
    return;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 40) = *(v6 + 5);
  *(a1 + 24) = v8;
  *(a1 + 8) = v7;
  v9 = *(a1 + 160);
  v10 = *(v6 + 40);
  if (v9 != -1)
  {
    if (v10 == -1)
    {
      (off_28812F120[v9])(v15, a1 + 48);
      *(a1 + 160) = -1;
      return;
    }

LABEL_8:
    *&v15[0] = a1 + 48;
    (off_28812F770[v10])(v15);
    return;
  }

  if (v10 != -1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_271248278(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return *(a1 + 48);
  }

  if (v1 != 1)
  {
    sub_2711308D4();
  }

  return *(a1 + 120);
}

void sub_2712482B0(uint64_t a1, int a2)
{
  if (a2 == 20)
  {
LABEL_10:
    sub_271241A5C(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/VL/VisualLogger/src/ExternalBuffer.cpp", 102, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}