BOOL sub_2714F5B38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (v2)
  {
    if (v3 == 1)
    {
      if (v2 != 1)
      {
        sub_2711308D4();
      }

      v4 = *(a1 + 31);
      if (v4 >= 0)
      {
        v5 = *(a1 + 31);
      }

      else
      {
        v5 = *(a1 + 16);
      }

      v6 = *(a2 + 31);
      v7 = v6;
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(a2 + 16);
      }

      if (v5 == v6)
      {
        v10 = *(a1 + 8);
        v8 = (a1 + 8);
        v9 = v10;
        if (v4 < 0)
        {
          v8 = v9;
        }

        v13 = *(a2 + 8);
        v11 = (a2 + 8);
        v12 = v13;
        if (v7 < 0)
        {
          v11 = v12;
        }

        return memcmp(v8, v11, v5) == 0;
      }
    }

    return 0;
  }

  if (v3)
  {
    return 0;
  }

  v15 = *(a1 + 32);
  if (v15 == *(a2 + 32) && v15 != 0)
  {
    v17 = *(a1 + 31);
    if (v17 >= 0)
    {
      v5 = *(a1 + 31);
    }

    else
    {
      v5 = *(a1 + 16);
    }

    v18 = *(a2 + 31);
    v19 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(a2 + 16);
    }

    if (v5 == v18)
    {
      v20 = (a2 + 8);
      if (v17 >= 0)
      {
        v8 = (a1 + 8);
      }

      else
      {
        v8 = *(a1 + 8);
      }

      v21 = *v20;
      if (v19 >= 0)
      {
        v11 = (a2 + 8);
      }

      else
      {
        v11 = *v20;
      }

      return memcmp(v8, v11, v5) == 0;
    }

    return 0;
  }

  return v15 == *(a2 + 32);
}

void *sub_2714F5C58(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    if (v3 == 1)
    {
      v10 = 0;
      sub_2714F63DC();
    }

    sub_2711308D4();
  }

  sub_2714F5D90((a2 + 8));
  if ((v9 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = __p[1];
  }

  result = sub_271120E64(a1, v4, v5);
  if (v9 < 0)
  {
    v7 = result;
    operator delete(__p[0]);
    return v7;
  }

  return result;
}

void sub_2714F5D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714F5D90(__int128 *a1)
{
  v5 = 0;
  if (*(a1 + 24) == 1)
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

    v1 = 1;
    v5 = 1;
  }

  else
  {
    v6[0] = &v3;
    v6[1] = "nullopt";
    v6[2] = &v3;
    v6[3] = "nullopt";
    v6[4] = "nullopt";
    v7 = v6;
    sub_2711316E8(&v7);
    v1 = v5;
    if (v5 == -1)
    {
      sub_2711308D4();
    }
  }

  v6[0] = &v7;
  result = (off_288132810[v1])(v6, &v3);
  if (v5 != -1)
  {
    return (off_2881327F8[v5])(v6, &v3);
  }

  return result;
}

uint64_t sub_2714F5EBC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (*(a2 + 48) == 1)
  {
    operator new();
  }

  v6[0] = v3;
  v6[1] = "nullopt";
  v6[2] = v3;
  v6[3] = "nullopt";
  v6[4] = "nullopt";
  __dst = v6;
  sub_2711316E8(&__dst);
  if (v4 == -1)
  {
    sub_2711308D4();
  }

  v6[0] = &__dst;
  result = (off_288132810[v4])(v6, v3);
  if (v4 != -1)
  {
    return (off_2881327F8[v4])(v6, v3);
  }

  return result;
}

void sub_2714F6144(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x2743BF050](v2, 0x10B2C40EED050F3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714F6174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  sub_271130878(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_2714F61D8(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (*(a2 + 96) == 1)
  {
    sub_27139DEA8();
  }

  v5[0] = v3;
  v5[1] = "nullopt";
  v5[2] = v3;
  v5[3] = "nullopt";
  v5[4] = "nullopt";
  v6 = v5;
  sub_2711316E8(&v6);
  if (v4 == -1)
  {
    sub_2711308D4();
  }

  v5[0] = &v6;
  result = (off_288132810[v4])(v5, v3);
  if (v4 != -1)
  {
    return (off_2881327F8[v4])(v5, v3);
  }

  return result;
}

uint64_t sub_2714F62D8(uint64_t result)
{
  if (*(result + 72) == 1)
  {
    if (*(result + 56) == 1 && *(result + 55) < 0)
    {
      v1 = result;
      operator delete(*(result + 32));
      result = v1;
    }

    if (*(result + 24) == 1 && *(result + 23) < 0)
    {
      v2 = result;
      operator delete(*result);
      return v2;
    }
  }

  return result;
}

uint64_t sub_2714F6354(uint64_t result)
{
  if (*(result + 56) == 1 && *(result + 55) < 0)
  {
    v1 = result;
    operator delete(*(result + 32));
    result = v1;
    if (*(v1 + 24) != 1)
    {
      return result;
    }
  }

  else if (*(result + 24) != 1)
  {
    return result;
  }

  if (*(result + 23) < 0)
  {
    v2 = result;
    operator delete(*result);
    return v2;
  }

  return result;
}

void sub_2714F65A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (!v11)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(&a10, v11);
  _Unwind_Resume(exception_object);
}

_BYTE *sub_2714F65D8(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2714F68E4(a2, v3);
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

void sub_2714F66D8(uint64_t *a1, uint64_t a2)
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
    (off_2881327F8[v9])(&v12, v2);
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

void sub_2714F6898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2714F68E4(uint64_t a1, const char *a2)
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

void sub_2714F6A80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2714F6A94(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    v2 = result;
    sub_271135440(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
    result = v2;
    *(v2 + 24) = 1;
  }

  return result;
}

BOOL sub_2714F6B10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    if (*(a2 + 24) == 1)
    {
      if (v3 == 1)
      {
        sub_2714F5D90(a2);
        if ((v22 & 0x80u) == 0)
        {
          v5 = &v20;
        }

        else
        {
          v5 = v20;
        }

        if ((v22 & 0x80u) == 0)
        {
          v6 = v22;
        }

        else
        {
          v6 = v21;
        }

        v7 = *(a1 + 31);
        if ((v7 & 0x8000000000000000) != 0)
        {
          v8 = *(a1 + 8);
          v7 = *(a1 + 16);
        }

        else
        {
          v8 = (a1 + 8);
        }

        sub_27184C050(v5, v6, v8, v7, 0);
      }

      sub_2711308D4();
    }

    return 0;
  }

  sub_2714F5D90((a1 + 8));
  sub_2714F5D90(a2);
  v9 = v22;
  if ((v22 & 0x80u) == 0)
  {
    v10 = v22;
  }

  else
  {
    v10 = v21;
  }

  v11 = v19;
  v12 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v11 = __p[1];
  }

  if (v10 != v11)
  {
    result = 0;
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if ((v22 & 0x80u) == 0)
  {
    v13 = &v20;
  }

  else
  {
    v13 = v20;
  }

  if ((v19 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  result = memcmp(v13, v14, v10) == 0;
  if (v12 < 0)
  {
LABEL_29:
    v16 = result;
    operator delete(__p[0]);
    result = v16;
    v9 = v22;
  }

LABEL_30:
  if ((v9 & 0x80) != 0)
  {
    v17 = result;
    operator delete(v20);
    return v17;
  }

  return result;
}

void sub_2714F6C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F6EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F6EEC(void *a1, uint64_t a2)
{
  v48[5] = *MEMORY[0x277D85DE8];
  v4 = sub_271120E64(a1, "{", 1);
  sub_271120E64(v4, "Device: ", 8);
  if (*(a2 + 200) == 1)
  {
    v5 = sub_271120E64(a1, "{", 1);
    v6 = sub_271120E64(v5, "Name: ", 6);
    v7 = *(a2 + 79);
    if (v7 >= 0)
    {
      v8 = a2 + 56;
    }

    else
    {
      v8 = *(a2 + 56);
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 79);
    }

    else
    {
      v9 = *(a2 + 64);
    }

    v10 = sub_271120E64(v6, v8, v9);
    v11 = sub_271120E64(v10, ", ", 2);
    v12 = sub_271120E64(v11, "Product: ", 9);
    v13 = *(a2 + 103);
    if (v13 >= 0)
    {
      v14 = a2 + 80;
    }

    else
    {
      v14 = *(a2 + 80);
    }

    if (v13 >= 0)
    {
      v15 = *(a2 + 103);
    }

    else
    {
      v15 = *(a2 + 88);
    }

    v16 = sub_271120E64(v12, v14, v15);
    v17 = sub_271120E64(v16, ", ", 2);
    v18 = sub_271120E64(v17, "SN: ", 4);
    v19 = *(a2 + 151);
    if (v19 >= 0)
    {
      v20 = a2 + 128;
    }

    else
    {
      v20 = *(a2 + 128);
    }

    if (v19 >= 0)
    {
      v21 = *(a2 + 151);
    }

    else
    {
      v21 = *(a2 + 136);
    }

    v22 = sub_271120E64(v18, v20, v21);
    v23 = sub_271120E64(v22, ", ", 2);
    v24 = sub_271120E64(v23, "OS: ", 4);
    v25 = *(a2 + 199);
    if (v25 >= 0)
    {
      v26 = a2 + 176;
    }

    else
    {
      v26 = *(a2 + 176);
    }

    if (v25 >= 0)
    {
      v27 = *(a2 + 199);
    }

    else
    {
      v27 = *(a2 + 184);
    }

    v28 = sub_271120E64(v24, v26, v27);
    v29 = sub_271120E64(v28, " (", 2);
    v30 = *(a2 + 175);
    if (v30 >= 0)
    {
      v31 = a2 + 152;
    }

    else
    {
      v31 = *(a2 + 152);
    }

    if (v30 >= 0)
    {
      v32 = *(a2 + 175);
    }

    else
    {
      v32 = *(a2 + 160);
    }

    v33 = sub_271120E64(v29, v31, v32);
    v34 = ")}";
    v35 = 2;
  }

  else
  {
    v34 = "not available";
    v33 = a1;
    v35 = 13;
  }

  sub_271120E64(v33, v34, v35);
  v36 = sub_271120E64(a1, ", ", 2);
  sub_271120E64(v36, "Process: ", 9);
  if (*(a2 + 48) == 1)
  {
    v37 = *(a2 + 47);
    if (v37 >= 0)
    {
      v38 = a2 + 24;
    }

    else
    {
      v38 = *(a2 + 24);
    }

    if (v37 >= 0)
    {
      v39 = *(a2 + 47);
    }

    else
    {
      v39 = *(a2 + 32);
    }

    v40 = sub_271120E64(a1, v38, v39);
    sub_271120E64(v40, " ", 1);
  }

  v41 = sub_271120E64(a1, "(", 1);
  v42 = MEMORY[0x2743BE7E0](v41, *(a2 + 16));
  v43 = sub_271120E64(v42, "), ", 3);
  v44 = sub_271120E64(v43, "UUID: ", 6);
  sub_2718179D4(a2, v48);
  v45 = sub_271120E64(v44, v48, 36);
  v46 = sub_271120E64(v45, ", ", 2);
  sub_271120E64(v46, "Protocol: ", 10);
  v47 = 0;
  operator new();
}

void sub_2714F746C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F750C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = a19;
  a19 = 0;
  if (v20)
  {
    sub_27184D728(&a19, v20);
  }

  sub_271130878(&a12);
  _Unwind_Resume(a1);
}

void sub_2714F776C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2714F77C8@<Q0>(uint64_t a1@<X0>, char a2@<W1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  if ((atomic_load_explicit(&qword_28087C400, memory_order_acquire) & 1) == 0)
  {
    v13 = a1;
    v10 = a2;
    v11 = __cxa_guard_acquire(&qword_28087C400);
    a2 = v10;
    v12 = v11;
    a1 = v13;
    if (v12)
    {
      v14 = &unk_288116A60;
      sub_271816484(xmmword_28087C370, &v14);
      __cxa_guard_release(&qword_28087C400);
      a1 = v13;
      a2 = v10;
    }
  }

  if (a2)
  {
    *a4 = *(*(*a1 + 24))(a1);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  v6 = sub_27112B054();
  v7 = *v6;
  *(a4 + 24) = 0;
  *(a4 + 16) = v7;
  *(a4 + 48) = 0;
  if (*(v6 + 32) == 1)
  {
    if (*(v6 + 31) < 0)
    {
      sub_271127178((a4 + 24), *(v6 + 1), *(v6 + 2));
    }

    else
    {
      v8 = *(v6 + 2);
      *(a4 + 40) = *(v6 + 3);
      *(a4 + 24) = v8;
    }

    *(a4 + 48) = 1;
  }

  sub_2711B0ED4(a4 + 56, xmmword_28087C370);
  *(a4 + 200) = 1;
  result = *a3;
  *(a4 + 208) = *a3;
  *(a4 + 224) = a3[1].n128_u64[0];
  return result;
}

void sub_2714F7948(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2714F7974@<Q0>(uint64_t a1@<X0>, char a2@<W1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  if ((atomic_load_explicit(&qword_28087C400, memory_order_acquire) & 1) == 0)
  {
    v13 = a1;
    v10 = a2;
    v11 = __cxa_guard_acquire(&qword_28087C400);
    a2 = v10;
    v12 = v11;
    a1 = v13;
    if (v12)
    {
      v14 = &unk_288116A60;
      sub_271816484(xmmword_28087C370, &v14);
      __cxa_guard_release(&qword_28087C400);
      a1 = v13;
      a2 = v10;
    }
  }

  if (a2)
  {
    *a4 = *(*(*a1 + 16))(a1);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  v6 = sub_27112B054();
  v7 = *v6;
  *(a4 + 24) = 0;
  *(a4 + 16) = v7;
  *(a4 + 48) = 0;
  if (*(v6 + 32) == 1)
  {
    if (*(v6 + 31) < 0)
    {
      sub_271127178((a4 + 24), *(v6 + 1), *(v6 + 2));
    }

    else
    {
      v8 = *(v6 + 2);
      *(a4 + 40) = *(v6 + 3);
      *(a4 + 24) = v8;
    }

    *(a4 + 48) = 1;
  }

  sub_2711B0ED4(a4 + 56, xmmword_28087C370);
  *(a4 + 200) = 1;
  result = *a3;
  *(a4 + 208) = *a3;
  *(a4 + 224) = a3[1].n128_u64[0];
  return result;
}

void sub_2714F7AF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F7B20(void *a1, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 40);
    sub_271120E64(a1, "Sync{", 5);
    if (v3)
    {
      *(a2 + 48);
      if (*(a2 + 40) == 1)
      {
        sub_2714F8FDC();
      }
    }

    else
    {
      *(a2 + 48);
      if (!*(a2 + 40))
      {
        sub_2714F8FDC();
      }
    }

    sub_2711308D4();
  }

  sub_271120E64(a1, "Sync{", 5);
  *(a2 + 40);
  *(a2 + 48);
  sub_2714F8FDC();
}

uint64_t sub_2714F839C(uint64_t result)
{
  v1 = *(result + 8);
  *(result + 8) = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_2714F83F8(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

void *sub_2714F8470(void *a1, uint64_t a2)
{
  v7[0] = a2;
  v7[1] = a2 + 8;
  v7[2] = a2 + 24;
  v12 = 0;
  v13 = v11;
  v14 = "{";
  v15 = v11;
  v16 = "{";
  v17 = "{";
  v18 = &v13;
  sub_271136E64(&v18);
  LOBYTE(v13) = 1;
  v14 = v11;
  v15 = &v10;
  sub_2714F9258(v7, &v13);
  v13 = v11;
  v14 = "}";
  v15 = v11;
  v16 = "}";
  v17 = "}";
  if (v12 == -1)
  {
    sub_2711308D4();
  }

  v18 = &v13;
  (*(&off_2881328A0 + v12))(&v18, v11);
  if (v12 == -1)
  {
    sub_2711308D4();
  }

  v13 = &v18;
  (off_288132858[v12])(__p, &v13, v11);
  if (v12 != -1)
  {
    (off_288132840[v12])(&v13, v11);
  }

  if ((v9 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = v9;
  }

  else
  {
    v4 = __p[1];
  }

  result = sub_271120E64(a1, v3, v4);
  if (v9 < 0)
  {
    v6 = result;
    operator delete(__p[0]);
    return v6;
  }

  return result;
}

void sub_2714F85EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F8608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714F861C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714F8630(std::mutex *a1@<X0>, uint64_t a2@<X8>)
{
  std::mutex::lock(a1 + 1);
  sig = a1[2].__m_.__sig;
  v6 = *a1[2].__m_.__opaque;
  if (sig == v6)
  {
    v8 = 0;
    LOBYTE(v7) = 0;
    std::mutex::unlock(a1 + 1);
    if (a1->__m_.__opaque[8] != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v7 = *(v6 - 40);
  if (*(v6 - 24) == 1)
  {
    v9 = *(v6 - 32);
    a1->__m_.__opaque[8] = *(v6 - 24);
    *a1->__m_.__opaque = v9;
    if (*(v6 - 8) != 1)
    {
LABEL_4:
      if (a1->__m_.__opaque[8])
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if (*(v6 - 8) != 1)
  {
    goto LABEL_4;
  }

  v10 = *(v6 - 16);
  a1->__m_.__opaque[24] = *(v6 - 8);
  *&a1->__m_.__opaque[16] = v10;
  if (a1->__m_.__opaque[8])
  {
LABEL_11:
    *&a1->__m_.__opaque[32] = *(v6 - 40);
    a1->__m_.__opaque[40] = 1;
    goto LABEL_13;
  }

LABEL_10:
  if (a1->__m_.__opaque[24])
  {
    goto LABEL_11;
  }

  LOBYTE(a1->__m_.__sig) = 2;
LABEL_13:
  v2 = v7 >> 8;
  *a1[2].__m_.__opaque = sig;
  v8 = 1;
  std::mutex::unlock(a1 + 1);
  if (a1->__m_.__opaque[8] != 1)
  {
    goto LABEL_18;
  }

LABEL_14:
  v11 = *a1->__m_.__opaque;
  if (v11)
  {
    *a1->__m_.__opaque = v11 - 1;
    LOBYTE(a1->__m_.__sig) = 3;
  }

  else
  {
    LOBYTE(a1->__m_.__sig) = 1;
    a1->__m_.__opaque[0] = 0;
    a1->__m_.__opaque[8] = 0;
    if ((v8 & 1) == 0)
    {
      v7 = *&a1->__m_.__opaque[32];
      v2 = v7 >> 8;
      v8 = a1->__m_.__opaque[40];
    }
  }

LABEL_18:
  if (a1->__m_.__opaque[24] != 1)
  {
    sig_low = LOBYTE(a1->__m_.__sig);
    v12 = *&a1->__m_.__opaque[48];
    if (sig_low != 1)
    {
      goto LABEL_22;
    }

LABEL_25:
    a1->__m_.__opaque[32] = 0;
    a1->__m_.__opaque[40] = 0;
    *a2 = 1;
    goto LABEL_26;
  }

  v12 = *&a1->__m_.__opaque[48];
  if (*&a1->__m_.__opaque[16] <= v12)
  {
    LOBYTE(a1->__m_.__sig) = 1;
    a1->__m_.__opaque[16] = 0;
    a1->__m_.__opaque[24] = 0;
    if ((v8 & 1) == 0)
    {
      v7 = *&a1->__m_.__opaque[32];
      v2 = v7 >> 8;
      v8 = a1->__m_.__opaque[40];
    }

    goto LABEL_25;
  }

  LOBYTE(sig_low) = 3;
  LOBYTE(a1->__m_.__sig) = 3;
LABEL_22:
  *a2 = sig_low;
  *&a1->__m_.__opaque[48] = v12 + 1;
LABEL_26:
  *(a2 + 8) = v12;
  *(a2 + 16) = v7 | (v2 << 8);
  *(a2 + 24) = v8;
}

uint64_t sub_2714F87F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v22.__m_ = (a1 + 64);
  v22.__owns_ = 1;
  std::mutex::lock((a1 + 64));
  if ((a4 & 1) == 0)
  {
    if (*(a1 + 128) == *(a1 + 136))
    {
      do
      {
        v18 = *(a2 + 24);
        if (!v18)
        {
          sub_27112AFFC();
        }

        v19 = (*(*v18 + 48))(v18);
        if (v19)
        {
          break;
        }

        std::condition_variable::wait((a1 + 152), &v22);
      }

      while (*(a1 + 128) == *(a1 + 136));
      v17 = v19 ^ 1u;
      if (!v22.__owns_)
      {
        return v17;
      }
    }

    else
    {
      v17 = 1;
      if (!v22.__owns_)
      {
        return v17;
      }
    }

LABEL_32:
    std::mutex::unlock(v22.__m_);
    return v17;
  }

  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + a3;
  do
  {
    v10 = *(a1 + 128);
    v11 = *(a1 + 136);
    v12 = v10 != v11;
    if (v10 != v11)
    {
      goto LABEL_31;
    }

    v13 = *(a2 + 24);
    if (!v13)
    {
      goto LABEL_37;
    }

    if ((*(*v13 + 48))(v13))
    {
      goto LABEL_31;
    }

    if (v8.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      break;
    }

    v14.__d_.__rep_ = v8.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v14.__d_.__rep_ < 1)
    {
      continue;
    }

    std::chrono::steady_clock::now();
    v15.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v15.__d_.__rep_)
    {
      v16 = 0;
LABEL_20:
      v9.__d_.__rep_ = v16 + v14.__d_.__rep_;
      goto LABEL_4;
    }

    if (v15.__d_.__rep_ < 1)
    {
      if (v15.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v9.__d_.__rep_ = v14.__d_.__rep_ + 0x8000000000000000;
        goto LABEL_4;
      }

LABEL_19:
      v16 = 1000 * v15.__d_.__rep_;
      if (1000 * v15.__d_.__rep_ <= (v14.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_20;
      }

      goto LABEL_3;
    }

    if (v15.__d_.__rep_ <= 0x20C49BA5E353F7)
    {
      goto LABEL_19;
    }

    v16 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v14.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_20;
    }

LABEL_3:
    v9.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_4:
    std::condition_variable::__do_timed_wait((a1 + 152), &v22, v9);
    std::chrono::steady_clock::now();
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v8.__d_.__rep_);
  if (*(a1 + 128) != *(a1 + 136))
  {
    v12 = 1;
LABEL_31:
    v17 = v12;
    if (!v22.__owns_)
    {
      return v17;
    }

    goto LABEL_32;
  }

  v21 = *(a2 + 24);
  if (!v21)
  {
LABEL_37:
    sub_27112AFFC();
  }

  (*(*v21 + 48))(v21);
  v17 = 0;
  if (v22.__owns_)
  {
    goto LABEL_32;
  }

  return v17;
}

void sub_2714F8A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F8A98(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v10 = v9 + 1;
  if (v9 + 1 > 0x666666666666666)
  {
    sub_2714F8FC4();
  }

  v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x333333333333333)
  {
    v12 = 0x666666666666666;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x666666666666666)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v13 = 8 * ((v3 - *a1) >> 3);
  v14 = a2[1];
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a2 + 4);
  v7 = 40 * v9 + 40;
  v15 = 40 * v9 - (v3 - v8);
  memcpy((v13 - (v3 - v8)), v8, v3 - v8);
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(a1 + 8) = v7;
}

BOOL sub_2714F8C34(void *a1, void *a2)
{
  if (**a1 != **a2 || *(*a1 + 8) != *(*a2 + 8))
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (*v3 != *v4)
  {
    return 0;
  }

  v5 = *(v3 + 32);
  v6 = *(v4 + 32);
  if (v5 != v6 || v5 == 0)
  {
    if (v5 != v6)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(v3 + 31);
    if (v8 >= 0)
    {
      v9 = *(v3 + 31);
    }

    else
    {
      v9 = *(v3 + 16);
    }

    v10 = *(v4 + 31);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(v4 + 16);
    }

    if (v9 != v10)
    {
      return 0;
    }

    v12 = (v4 + 8);
    v15 = *(v3 + 8);
    v14 = (v3 + 8);
    v13 = v15;
    if (v8 >= 0)
    {
      v13 = v14;
    }

    v16 = *v12;
    if (v11 >= 0)
    {
      v16 = v12;
    }

    v17 = a1;
    v18 = a2;
    v19 = memcmp(v13, v16, v9);
    a2 = v18;
    v20 = v19;
    a1 = v17;
    if (v20)
    {
      return 0;
    }
  }

  v21 = a1[2];
  v22 = a2[2];
  v23 = *(v21 + 144);
  v24 = *(v22 + 144);
  if (v23 != v24 || v23 == 0)
  {
    if (v23 == v24)
    {
      goto LABEL_31;
    }

    return 0;
  }

  v35 = *(v21 + 23);
  if (v35 >= 0)
  {
    v36 = *(v21 + 23);
  }

  else
  {
    v36 = *(v21 + 8);
  }

  v37 = *(v22 + 23);
  v38 = v37;
  if ((v37 & 0x80u) != 0)
  {
    v37 = v22[1];
  }

  if (v36 != v37)
  {
    return 0;
  }

  v39 = a1;
  v40 = a2;
  v41 = v35 >= 0 ? a1[2] : *v21;
  v42 = *v22;
  v43 = (v38 >= 0 ? a2[2] : *v22);
  if (memcmp(v41, v43, v36))
  {
    return 0;
  }

  v44 = *(v21 + 47);
  if (v44 >= 0)
  {
    v45 = *(v21 + 47);
  }

  else
  {
    v45 = *(v21 + 32);
  }

  v46 = *(v22 + 47);
  v47 = v46;
  if ((v46 & 0x80u) != 0)
  {
    v46 = v22[4];
  }

  if (v45 != v46)
  {
    return 0;
  }

  v48 = v44 >= 0 ? (v21 + 24) : *(v21 + 24);
  v49 = v47 >= 0 ? v22 + 3 : v22[3];
  if (memcmp(v48, v49, v45))
  {
    return 0;
  }

  v50 = *(v21 + 71);
  if (v50 >= 0)
  {
    v51 = *(v21 + 71);
  }

  else
  {
    v51 = *(v21 + 56);
  }

  v52 = *(v22 + 71);
  v53 = v52;
  if ((v52 & 0x80u) != 0)
  {
    v52 = v22[7];
  }

  if (v51 != v52)
  {
    return 0;
  }

  v54 = v50 >= 0 ? (v21 + 48) : *(v21 + 48);
  v55 = v53 >= 0 ? v22 + 6 : v22[6];
  if (memcmp(v54, v55, v51))
  {
    return 0;
  }

  v56 = *(v21 + 95);
  if (v56 >= 0)
  {
    v57 = *(v21 + 95);
  }

  else
  {
    v57 = *(v21 + 80);
  }

  v58 = *(v22 + 95);
  v59 = v58;
  if ((v58 & 0x80u) != 0)
  {
    v58 = v22[10];
  }

  if (v57 != v58)
  {
    return 0;
  }

  v60 = v56 >= 0 ? (v21 + 72) : *(v21 + 72);
  v61 = v59 >= 0 ? v22 + 9 : v22[9];
  if (memcmp(v60, v61, v57))
  {
    return 0;
  }

  v62 = *(v21 + 119);
  if (v62 >= 0)
  {
    v63 = *(v21 + 119);
  }

  else
  {
    v63 = *(v21 + 104);
  }

  v64 = *(v22 + 119);
  v65 = v64;
  if ((v64 & 0x80u) != 0)
  {
    v64 = v22[13];
  }

  if (v63 != v64)
  {
    return 0;
  }

  v66 = v62 >= 0 ? (v21 + 96) : *(v21 + 96);
  v67 = v65 >= 0 ? v22 + 12 : v22[12];
  if (memcmp(v66, v67, v63))
  {
    return 0;
  }

  v68 = *(v21 + 143);
  if (v68 >= 0)
  {
    v69 = *(v21 + 143);
  }

  else
  {
    v69 = *(v21 + 128);
  }

  v70 = *(v22 + 143);
  v71 = v70;
  if ((v70 & 0x80u) != 0)
  {
    v70 = v22[16];
  }

  if (v69 != v70)
  {
    return 0;
  }

  v74 = *(v21 + 120);
  v73 = v21 + 120;
  v72 = v74;
  v75 = (v68 >= 0 ? v73 : v72);
  v78 = v22[15];
  v77 = v22 + 15;
  v76 = v78;
  v79 = v71 >= 0 ? v77 : v76;
  v80 = memcmp(v75, v79, v69);
  a2 = v40;
  a1 = v39;
  if (v80)
  {
    return 0;
  }

LABEL_31:
  v26 = a1[3];
  v27 = a2[3];
  v81 = *(v26 + 8);
  if (*v26 != *v27 || *(v26 + 8) != *(v27 + 8))
  {
    return 0;
  }

  v29 = *(v26 + 12);
  v30 = *(v26 + 20);
  v31 = *(v27 + 12);
  v32 = *(v27 + 20);
  return v29 == v31 && v30 == v32;
}

void sub_2714F9214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F9258(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if ((*a2 & 1) == 0)
  {
    v13 = *(a2 + 8);
    v14 = ",";
    v15 = v13;
    v16 = ",";
    v17 = ",";
    v5 = *(v13 + 24);
    if (v5 == -1)
    {
      goto LABEL_15;
    }

    v12.__r_.__value_.__r.__words[0] = &v13;
    (*(&off_2881328A0 + v5))(&v12);
  }

  *a2 = 0;
  v6 = *(a2 + 8);
  std::to_string(&v12, *v4);
  v13 = v6;
  v14 = &v12;
  v15 = v6;
  v16 = &v12;
  v17 = &v12;
  v7 = *(v6 + 24);
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v18 = &v13;
  (off_288132828[v7])(&v18, v6);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    v8 = *(a1 + 8);
    if (*a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = *(a1 + 8);
    if (*a2)
    {
      goto LABEL_11;
    }
  }

  v13 = *(a2 + 8);
  v14 = ",";
  v15 = v13;
  v16 = ",";
  v17 = ",";
  v9 = *(v13 + 24);
  if (v9 == -1)
  {
    goto LABEL_15;
  }

  v12.__r_.__value_.__r.__words[0] = &v13;
  (*(&off_2881328A0 + v9))(&v12);
LABEL_11:
  *a2 = 0;
  sub_2714F9430(*(a2 + 8), *v8, *(v8 + 8));
  v10 = *(a1 + 16);
  if ((*a2 & 1) == 0)
  {
    v13 = *(a2 + 8);
    v14 = ",";
    v15 = v13;
    v16 = ",";
    v17 = ",";
    v11 = *(v13 + 24);
    if (v11 != -1)
    {
      v12.__r_.__value_.__r.__words[0] = &v13;
      (*(&off_2881328A0 + v11))(&v12);
      goto LABEL_14;
    }

LABEL_15:
    sub_2711308D4();
  }

LABEL_14:
  *a2 = 0;
  sub_2714F9430(*(a2 + 8), *v10, *(v10 + 8));
}

void sub_2714F9414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714F9430(uint64_t a1, unint64_t __val, char a3)
{
  if (a3)
  {
    std::to_string(&v6, __val);
    v8 = a1;
    v9 = &v6;
    v10 = a1;
    v11 = &v6;
    v12 = &v6;
    v4 = *(a1 + 24);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v7 = &v8;
    (off_288132828[v4])(&v7, a1);
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = a1;
    v9 = "nullopt";
    v10 = a1;
    v11 = "nullopt";
    v12 = "nullopt";
    v5 = *(a1 + 24);
    if (v5 == -1)
    {
      sub_2711308D4();
    }

    v6.__r_.__value_.__r.__words[0] = &v8;
    (*(&off_288132888 + v5))(&v6, a1);
  }
}

void sub_2714F9520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2714F953C(uint64_t *a1, _BYTE *a2)
{
  if ((atomic_load_explicit(&qword_28087B8B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B8B8))
  {
    sub_2714FAB48(&off_279E2F7D8, qword_279E2F7F0);
    __cxa_guard_release(&qword_28087B8B8);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_2714A56E0(a1, &v12);
  v4 = sub_27123ADBC(&qword_28087B8C0, &v12);
  if (v4 == &qword_28087B8C8)
  {
    v5 = HIBYTE(v14);
    if (SHIBYTE(v14) < 0)
    {
      if (v13 != 4 || *v12 != 1701736270)
      {
LABEL_15:
        __cxa_allocate_exception(0x10uLL);
        std::operator+<char>();
        v8 = std::string::append(&v10, "', expected ", 0xCuLL);
        v9 = *&v8->__r_.__value_.__l.__data_;
        v11.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
        *&v11.__r_.__value_.__l.__data_ = v9;
        v8->__r_.__value_.__l.__size_ = 0;
        v8->__r_.__value_.__r.__words[2] = 0;
        v8->__r_.__value_.__r.__words[0] = 0;
        sub_2714F984C();
      }
    }

    else if (SHIBYTE(v14) != 4 || v12 != 1701736270)
    {
      goto LABEL_15;
    }

    *a2 = 0;
    if (v5 < 0)
    {
      goto LABEL_12;
    }

    return a1;
  }

  v6 = HIBYTE(v14);
  *a2 = *(v4 + 56);
  if ((v6 & 0x80) == 0)
  {
    return a1;
  }

LABEL_12:
  operator delete(v12);
  return a1;
}

void sub_2714F9770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(a28);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_4:
    if (a20 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_5:
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
LABEL_12:
      if (*(v35 - 33) < 0)
      {
        operator delete(*(v35 - 56));
      }

      _Unwind_Resume(a1);
    }

LABEL_11:
    __cxa_free_exception(v33);
    goto LABEL_12;
  }

LABEL_10:
  if (!v34)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_2714F984C()
{
  v0[6] = 0;
  v2[0] = v0;
  v2[1] = "{";
  v2[2] = v0;
  v3 = "{";
  v4 = "{";
  *&v1 = v2;
  sub_271136E64(&v1);
  LODWORD(v3) = 0;
  sub_2714FAEB0();
}

void sub_2714F9B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_271130878(&a22);
  sub_271130878(&a9);
  _Unwind_Resume(a1);
}

char *sub_2714F9B88@<X0>(char *__src@<X0>, size_t __len@<X1>, uint64_t a3@<X8>)
{
  if (!__len)
  {
    HIBYTE(v50) = 0;
LABEL_16:
    *(&v49 + __len) = 0;
    *(a3 + 16) = v50;
    *a3 = v49;
    *(a3 + 24) = 0;
    *(a3 + 48) = 0;
    v10 = *(a3 + 23);
    v11 = *a3;
    if (v10 >= 0)
    {
      v11 = a3;
    }

    if (v10 < 0)
    {
      v10 = *(a3 + 8);
    }

    if (!v10)
    {
      return __src;
    }

    v12 = v11;
    if (v10 < 8)
    {
LABEL_83:
      v21 = &v11[v10];
      do
      {
        if (*v12 == 58)
        {
          *v12 = 95;
        }

        ++v12;
      }

      while (v12 != v21);
      return __src;
    }

    if (v10 < 0x10)
    {
      v13 = 0;
      goto LABEL_24;
    }

    v13 = v10 & 0xFFFFFFFFFFFFFFF0;
    v17 = v11 + 7;
    v18.i64[0] = 0x3A3A3A3A3A3A3A3ALL;
    v18.i64[1] = 0x3A3A3A3A3A3A3A3ALL;
    v19 = v10 & 0xFFFFFFFFFFFFFFF0;
    while (1)
    {
      v20 = vceqq_s8(*(v17 - 7), v18);
      if (v20.i8[0])
      {
        *(v17 - 7) = 95;
        if ((v20.i8[1] & 1) == 0)
        {
LABEL_49:
          if ((v20.i8[2] & 1) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_66;
        }
      }

      else if ((v20.i8[1] & 1) == 0)
      {
        goto LABEL_49;
      }

      *(v17 - 6) = 95;
      if ((v20.i8[2] & 1) == 0)
      {
LABEL_50:
        if ((v20.i8[3] & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_67;
      }

LABEL_66:
      *(v17 - 5) = 95;
      if ((v20.i8[3] & 1) == 0)
      {
LABEL_51:
        if ((v20.i8[4] & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_68;
      }

LABEL_67:
      *(v17 - 4) = 95;
      if ((v20.i8[4] & 1) == 0)
      {
LABEL_52:
        if ((v20.i8[5] & 1) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_69;
      }

LABEL_68:
      *(v17 - 3) = 95;
      if ((v20.i8[5] & 1) == 0)
      {
LABEL_53:
        if ((v20.i8[6] & 1) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_70;
      }

LABEL_69:
      *(v17 - 2) = 95;
      if ((v20.i8[6] & 1) == 0)
      {
LABEL_54:
        if ((v20.i8[7] & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_71;
      }

LABEL_70:
      *(v17 - 1) = 95;
      if ((v20.i8[7] & 1) == 0)
      {
LABEL_55:
        if ((v20.i8[8] & 1) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_72;
      }

LABEL_71:
      *v17 = 95;
      if ((v20.i8[8] & 1) == 0)
      {
LABEL_56:
        if ((v20.i8[9] & 1) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_73;
      }

LABEL_72:
      v17[1] = 95;
      if ((v20.i8[9] & 1) == 0)
      {
LABEL_57:
        if ((v20.i8[10] & 1) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_74;
      }

LABEL_73:
      v17[2] = 95;
      if ((v20.i8[10] & 1) == 0)
      {
LABEL_58:
        if ((v20.i8[11] & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_75;
      }

LABEL_74:
      v17[3] = 95;
      if ((v20.i8[11] & 1) == 0)
      {
LABEL_59:
        if ((v20.i8[12] & 1) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_76;
      }

LABEL_75:
      v17[4] = 95;
      if ((v20.i8[12] & 1) == 0)
      {
LABEL_60:
        if ((v20.i8[13] & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_77;
      }

LABEL_76:
      v17[5] = 95;
      if ((v20.i8[13] & 1) == 0)
      {
LABEL_61:
        if ((v20.i8[14] & 1) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_78;
      }

LABEL_77:
      v17[6] = 95;
      if ((v20.i8[14] & 1) == 0)
      {
LABEL_62:
        if (v20.i8[15])
        {
          goto LABEL_79;
        }

        goto LABEL_46;
      }

LABEL_78:
      v17[7] = 95;
      if (v20.i8[15])
      {
LABEL_79:
        v17[8] = 95;
      }

LABEL_46:
      v17 += 16;
      v19 -= 16;
      if (!v19)
      {
        if (v10 == v13)
        {
          return __src;
        }

        if ((v10 & 8) == 0)
        {
          v12 = &v11[v13];
          goto LABEL_83;
        }

LABEL_24:
        v12 = &v11[v10 & 0xFFFFFFFFFFFFFFF8];
        v14 = v13 - (v10 & 0xFFFFFFFFFFFFFFF8);
        v15 = &v11[v13 + 3];
        while (2)
        {
          v16 = vceq_s8(*(v15 - 3), 0x3A3A3A3A3A3A3A3ALL);
          if (v16.i8[0])
          {
            *(v15 - 3) = 95;
            if (v16.i8[1])
            {
              goto LABEL_36;
            }

LABEL_28:
            if ((v16.i8[2] & 1) == 0)
            {
              goto LABEL_29;
            }

LABEL_37:
            *(v15 - 1) = 95;
            if (v16.i8[3])
            {
              goto LABEL_38;
            }

LABEL_30:
            if ((v16.i8[4] & 1) == 0)
            {
              goto LABEL_31;
            }

LABEL_39:
            v15[1] = 95;
            if (v16.i8[5])
            {
              goto LABEL_40;
            }

LABEL_32:
            if ((v16.i8[6] & 1) == 0)
            {
              goto LABEL_33;
            }

LABEL_41:
            v15[3] = 95;
            if (v16.i8[7])
            {
LABEL_42:
              v15[4] = 95;
            }
          }

          else
          {
            if ((v16.i8[1] & 1) == 0)
            {
              goto LABEL_28;
            }

LABEL_36:
            *(v15 - 2) = 95;
            if (v16.i8[2])
            {
              goto LABEL_37;
            }

LABEL_29:
            if ((v16.i8[3] & 1) == 0)
            {
              goto LABEL_30;
            }

LABEL_38:
            *v15 = 95;
            if (v16.i8[4])
            {
              goto LABEL_39;
            }

LABEL_31:
            if ((v16.i8[5] & 1) == 0)
            {
              goto LABEL_32;
            }

LABEL_40:
            v15[2] = 95;
            if (v16.i8[6])
            {
              goto LABEL_41;
            }

LABEL_33:
            if (v16.i8[7])
            {
              goto LABEL_42;
            }
          }

          v15 += 8;
          v14 += 8;
          if (!v14)
          {
            if (v10 == (v10 & 0xFFFFFFFFFFFFFFF8))
            {
              return __src;
            }

            goto LABEL_83;
          }

          continue;
        }
      }
    }
  }

  v5 = __src;
  v6 = 0;
  do
  {
    if (!(__len + v6))
    {
      goto LABEL_11;
    }

    v7 = __src[__len - 1 + v6--];
  }

  while (v7 != 58);
  v8 = __len + v6;
  if (__len + v6 == -1)
  {
LABEL_11:
    if (__len > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_246;
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v50) = __len;
    __src = memmove(&v49, __src, __len);
    goto LABEL_16;
  }

  if (v8)
  {
    if (__len <= v8)
    {
      sub_2711280A8("string_view::substr");
    }

    if (~v6 < __len)
    {
      v22 = ~v6;
    }

    else
    {
      v22 = __len;
    }

    if (v22 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v22 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v55) = v22;
      if (v6 != -1)
      {
        memmove(&v54, &__src[__len + 1 + v6], v22);
      }

      *(&v54 + v22) = 0;
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

      if (v8 >= 0x17)
      {
        operator new();
      }

      v53 = v8;
      __src = memmove(&v51, v5, __len + v6);
      v52[__len - 8 + v6] = 0;
      v30 = *v52;
      *(a3 + 24) = v51;
      *(a3 + 32) = v30;
      *(a3 + 39) = *&v52[7];
      LOBYTE(v30) = v53;
      v31 = v55;
      *a3 = v54;
      *(a3 + 16) = v31;
      *(a3 + 47) = v30;
      *(a3 + 48) = 1;
      v32 = *(a3 + 23);
      v33 = *a3;
      if (v32 >= 0)
      {
        v33 = a3;
      }

      if (v32 < 0)
      {
        v32 = *(a3 + 8);
      }

      if (!v32)
      {
        return __src;
      }

      v34 = v33;
      if (v32 < 8)
      {
LABEL_242:
        v48 = &v33[v32];
        do
        {
          if (*v34 == 58)
          {
            *v34 = 95;
          }

          ++v34;
        }

        while (v34 != v48);
        return __src;
      }

      if (v32 < 0x10)
      {
        v35 = 0;
        goto LABEL_138;
      }

      v35 = v32 & 0xFFFFFFFFFFFFFFF0;
      v44 = v33 + 7;
      v45.i64[0] = 0x3A3A3A3A3A3A3A3ALL;
      v45.i64[1] = 0x3A3A3A3A3A3A3A3ALL;
      v46 = v32 & 0xFFFFFFFFFFFFFFF0;
      while (1)
      {
        v47 = vceqq_s8(*(v44 - 7), v45);
        if (v47.i8[0])
        {
          *(v44 - 7) = 95;
          if ((v47.i8[1] & 1) == 0)
          {
LABEL_207:
            if ((v47.i8[2] & 1) == 0)
            {
              goto LABEL_208;
            }

            goto LABEL_224;
          }
        }

        else if ((v47.i8[1] & 1) == 0)
        {
          goto LABEL_207;
        }

        *(v44 - 6) = 95;
        if ((v47.i8[2] & 1) == 0)
        {
LABEL_208:
          if ((v47.i8[3] & 1) == 0)
          {
            goto LABEL_209;
          }

          goto LABEL_225;
        }

LABEL_224:
        *(v44 - 5) = 95;
        if ((v47.i8[3] & 1) == 0)
        {
LABEL_209:
          if ((v47.i8[4] & 1) == 0)
          {
            goto LABEL_210;
          }

          goto LABEL_226;
        }

LABEL_225:
        *(v44 - 4) = 95;
        if ((v47.i8[4] & 1) == 0)
        {
LABEL_210:
          if ((v47.i8[5] & 1) == 0)
          {
            goto LABEL_211;
          }

          goto LABEL_227;
        }

LABEL_226:
        *(v44 - 3) = 95;
        if ((v47.i8[5] & 1) == 0)
        {
LABEL_211:
          if ((v47.i8[6] & 1) == 0)
          {
            goto LABEL_212;
          }

          goto LABEL_228;
        }

LABEL_227:
        *(v44 - 2) = 95;
        if ((v47.i8[6] & 1) == 0)
        {
LABEL_212:
          if ((v47.i8[7] & 1) == 0)
          {
            goto LABEL_213;
          }

          goto LABEL_229;
        }

LABEL_228:
        *(v44 - 1) = 95;
        if ((v47.i8[7] & 1) == 0)
        {
LABEL_213:
          if ((v47.i8[8] & 1) == 0)
          {
            goto LABEL_214;
          }

          goto LABEL_230;
        }

LABEL_229:
        *v44 = 95;
        if ((v47.i8[8] & 1) == 0)
        {
LABEL_214:
          if ((v47.i8[9] & 1) == 0)
          {
            goto LABEL_215;
          }

          goto LABEL_231;
        }

LABEL_230:
        v44[1] = 95;
        if ((v47.i8[9] & 1) == 0)
        {
LABEL_215:
          if ((v47.i8[10] & 1) == 0)
          {
            goto LABEL_216;
          }

          goto LABEL_232;
        }

LABEL_231:
        v44[2] = 95;
        if ((v47.i8[10] & 1) == 0)
        {
LABEL_216:
          if ((v47.i8[11] & 1) == 0)
          {
            goto LABEL_217;
          }

          goto LABEL_233;
        }

LABEL_232:
        v44[3] = 95;
        if ((v47.i8[11] & 1) == 0)
        {
LABEL_217:
          if ((v47.i8[12] & 1) == 0)
          {
            goto LABEL_218;
          }

          goto LABEL_234;
        }

LABEL_233:
        v44[4] = 95;
        if ((v47.i8[12] & 1) == 0)
        {
LABEL_218:
          if ((v47.i8[13] & 1) == 0)
          {
            goto LABEL_219;
          }

          goto LABEL_235;
        }

LABEL_234:
        v44[5] = 95;
        if ((v47.i8[13] & 1) == 0)
        {
LABEL_219:
          if ((v47.i8[14] & 1) == 0)
          {
            goto LABEL_220;
          }

          goto LABEL_236;
        }

LABEL_235:
        v44[6] = 95;
        if ((v47.i8[14] & 1) == 0)
        {
LABEL_220:
          if (v47.i8[15])
          {
            goto LABEL_237;
          }

          goto LABEL_204;
        }

LABEL_236:
        v44[7] = 95;
        if (v47.i8[15])
        {
LABEL_237:
          v44[8] = 95;
        }

LABEL_204:
        v44 += 16;
        v46 -= 16;
        if (!v46)
        {
          if (v32 == v35)
          {
            return __src;
          }

          if ((v32 & 8) == 0)
          {
            v34 = &v33[v35];
            goto LABEL_242;
          }

LABEL_138:
          v34 = &v33[v32 & 0xFFFFFFFFFFFFFFF8];
          v36 = v35 - (v32 & 0xFFFFFFFFFFFFFFF8);
          v37 = &v33[v35 + 3];
          while (2)
          {
            v38 = vceq_s8(*(v37 - 3), 0x3A3A3A3A3A3A3A3ALL);
            if (v38.i8[0])
            {
              *(v37 - 3) = 95;
              if (v38.i8[1])
              {
                goto LABEL_150;
              }

LABEL_142:
              if ((v38.i8[2] & 1) == 0)
              {
                goto LABEL_143;
              }

LABEL_151:
              *(v37 - 1) = 95;
              if (v38.i8[3])
              {
                goto LABEL_152;
              }

LABEL_144:
              if ((v38.i8[4] & 1) == 0)
              {
                goto LABEL_145;
              }

LABEL_153:
              v37[1] = 95;
              if (v38.i8[5])
              {
                goto LABEL_154;
              }

LABEL_146:
              if ((v38.i8[6] & 1) == 0)
              {
                goto LABEL_147;
              }

LABEL_155:
              v37[3] = 95;
              if (v38.i8[7])
              {
LABEL_156:
                v37[4] = 95;
              }
            }

            else
            {
              if ((v38.i8[1] & 1) == 0)
              {
                goto LABEL_142;
              }

LABEL_150:
              *(v37 - 2) = 95;
              if (v38.i8[2])
              {
                goto LABEL_151;
              }

LABEL_143:
              if ((v38.i8[3] & 1) == 0)
              {
                goto LABEL_144;
              }

LABEL_152:
              *v37 = 95;
              if (v38.i8[4])
              {
                goto LABEL_153;
              }

LABEL_145:
              if ((v38.i8[5] & 1) == 0)
              {
                goto LABEL_146;
              }

LABEL_154:
              v37[2] = 95;
              if (v38.i8[6])
              {
                goto LABEL_155;
              }

LABEL_147:
              if (v38.i8[7])
              {
                goto LABEL_156;
              }
            }

            v37 += 8;
            v36 += 8;
            if (!v36)
            {
              if (v32 == (v32 & 0xFFFFFFFFFFFFFFF8))
              {
                return __src;
              }

              goto LABEL_242;
            }

            continue;
          }
        }
      }
    }

LABEL_246:
    sub_271120DA8();
  }

  v9 = __len - 1;
  if (__len - 1 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_246;
  }

  if (__len >= 0x18)
  {
    operator new();
  }

  HIBYTE(v57) = __len - 1;
  if (__len != 1)
  {
    __src = memmove(&__dst, __src + 1, v9);
  }

  *(&__dst + v9) = 0;
  *(a3 + 16) = v57;
  *a3 = __dst;
  *(a3 + 24) = 0;
  *(a3 + 48) = 0;
  v23 = *(a3 + 23);
  v24 = *a3;
  if (v23 >= 0)
  {
    v24 = a3;
  }

  if (v23 < 0)
  {
    v23 = *(a3 + 8);
  }

  if (!v23)
  {
    return __src;
  }

  v25 = v24;
  if (v23 < 8)
  {
    goto LABEL_199;
  }

  if (v23 < 0x10)
  {
    v26 = 0;
    goto LABEL_105;
  }

  v26 = v23 & 0xFFFFFFFFFFFFFFF0;
  v39 = v24 + 7;
  v40.i64[0] = 0x3A3A3A3A3A3A3A3ALL;
  v40.i64[1] = 0x3A3A3A3A3A3A3A3ALL;
  v41 = v23 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v42 = vceqq_s8(*(v39 - 7), v40);
    if (v42.i8[0])
    {
      *(v39 - 7) = 95;
      if ((v42.i8[1] & 1) == 0)
      {
LABEL_165:
        if ((v42.i8[2] & 1) == 0)
        {
          goto LABEL_166;
        }

        goto LABEL_182;
      }
    }

    else if ((v42.i8[1] & 1) == 0)
    {
      goto LABEL_165;
    }

    *(v39 - 6) = 95;
    if ((v42.i8[2] & 1) == 0)
    {
LABEL_166:
      if ((v42.i8[3] & 1) == 0)
      {
        goto LABEL_167;
      }

      goto LABEL_183;
    }

LABEL_182:
    *(v39 - 5) = 95;
    if ((v42.i8[3] & 1) == 0)
    {
LABEL_167:
      if ((v42.i8[4] & 1) == 0)
      {
        goto LABEL_168;
      }

      goto LABEL_184;
    }

LABEL_183:
    *(v39 - 4) = 95;
    if ((v42.i8[4] & 1) == 0)
    {
LABEL_168:
      if ((v42.i8[5] & 1) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_185;
    }

LABEL_184:
    *(v39 - 3) = 95;
    if ((v42.i8[5] & 1) == 0)
    {
LABEL_169:
      if ((v42.i8[6] & 1) == 0)
      {
        goto LABEL_170;
      }

      goto LABEL_186;
    }

LABEL_185:
    *(v39 - 2) = 95;
    if ((v42.i8[6] & 1) == 0)
    {
LABEL_170:
      if ((v42.i8[7] & 1) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_187;
    }

LABEL_186:
    *(v39 - 1) = 95;
    if ((v42.i8[7] & 1) == 0)
    {
LABEL_171:
      if ((v42.i8[8] & 1) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_188;
    }

LABEL_187:
    *v39 = 95;
    if ((v42.i8[8] & 1) == 0)
    {
LABEL_172:
      if ((v42.i8[9] & 1) == 0)
      {
        goto LABEL_173;
      }

      goto LABEL_189;
    }

LABEL_188:
    v39[1] = 95;
    if ((v42.i8[9] & 1) == 0)
    {
LABEL_173:
      if ((v42.i8[10] & 1) == 0)
      {
        goto LABEL_174;
      }

      goto LABEL_190;
    }

LABEL_189:
    v39[2] = 95;
    if ((v42.i8[10] & 1) == 0)
    {
LABEL_174:
      if ((v42.i8[11] & 1) == 0)
      {
        goto LABEL_175;
      }

      goto LABEL_191;
    }

LABEL_190:
    v39[3] = 95;
    if ((v42.i8[11] & 1) == 0)
    {
LABEL_175:
      if ((v42.i8[12] & 1) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_192;
    }

LABEL_191:
    v39[4] = 95;
    if ((v42.i8[12] & 1) == 0)
    {
LABEL_176:
      if ((v42.i8[13] & 1) == 0)
      {
        goto LABEL_177;
      }

      goto LABEL_193;
    }

LABEL_192:
    v39[5] = 95;
    if ((v42.i8[13] & 1) == 0)
    {
LABEL_177:
      if (v42.i8[14])
      {
        goto LABEL_194;
      }

      goto LABEL_178;
    }

LABEL_193:
    v39[6] = 95;
    if (v42.i8[14])
    {
LABEL_194:
      v39[7] = 95;
      if ((v42.i8[15] & 1) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_195;
    }

LABEL_178:
    if ((v42.i8[15] & 1) == 0)
    {
      goto LABEL_162;
    }

LABEL_195:
    v39[8] = 95;
LABEL_162:
    v39 += 16;
    v41 -= 16;
  }

  while (v41);
  if (v23 == v26)
  {
    return __src;
  }

  if ((v23 & 8) == 0)
  {
    v25 = &v24[v26];
    goto LABEL_199;
  }

LABEL_105:
  v25 = &v24[v23 & 0xFFFFFFFFFFFFFFF8];
  v27 = v26 - (v23 & 0xFFFFFFFFFFFFFFF8);
  v28 = &v24[v26 + 3];
  while (2)
  {
    v29 = vceq_s8(*(v28 - 3), 0x3A3A3A3A3A3A3A3ALL);
    if (v29.i8[0])
    {
      *(v28 - 3) = 95;
      if (v29.i8[1])
      {
        goto LABEL_117;
      }

LABEL_109:
      if ((v29.i8[2] & 1) == 0)
      {
        goto LABEL_110;
      }

LABEL_118:
      *(v28 - 1) = 95;
      if (v29.i8[3])
      {
        goto LABEL_119;
      }

LABEL_111:
      if ((v29.i8[4] & 1) == 0)
      {
        goto LABEL_112;
      }

LABEL_120:
      v28[1] = 95;
      if (v29.i8[5])
      {
        goto LABEL_121;
      }

LABEL_113:
      if ((v29.i8[6] & 1) == 0)
      {
        goto LABEL_114;
      }

LABEL_122:
      v28[3] = 95;
      if (v29.i8[7])
      {
LABEL_123:
        v28[4] = 95;
      }
    }

    else
    {
      if ((v29.i8[1] & 1) == 0)
      {
        goto LABEL_109;
      }

LABEL_117:
      *(v28 - 2) = 95;
      if (v29.i8[2])
      {
        goto LABEL_118;
      }

LABEL_110:
      if ((v29.i8[3] & 1) == 0)
      {
        goto LABEL_111;
      }

LABEL_119:
      *v28 = 95;
      if (v29.i8[4])
      {
        goto LABEL_120;
      }

LABEL_112:
      if ((v29.i8[5] & 1) == 0)
      {
        goto LABEL_113;
      }

LABEL_121:
      v28[2] = 95;
      if (v29.i8[6])
      {
        goto LABEL_122;
      }

LABEL_114:
      if (v29.i8[7])
      {
        goto LABEL_123;
      }
    }

    v28 += 8;
    v27 += 8;
    if (v27)
    {
      continue;
    }

    break;
  }

  if (v23 == (v23 & 0xFFFFFFFFFFFFFFF8))
  {
    return __src;
  }

LABEL_199:
  v43 = &v24[v23];
  do
  {
    if (*v25 == 58)
    {
      *v25 = 95;
    }

    ++v25;
  }

  while (v25 != v43);
  return __src;
}

void sub_2714FA6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714FA6D0(uint64_t a1, const void *a2, size_t __len, char a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  HIBYTE(v9) = __len;
  if (__len)
  {
    memmove(&v8, a2, __len);
  }

  *(&v8 + __len) = 0;
  *__p = v8;
  v13 = v9;
  v14 = a4;
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  sub_2711B1344(&v10, v11, __p);
  (*(*a1 + 32))(a1, &v10);
  sub_271167834(&v10, v11[0]);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2714FA834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_271167834(&a12, a13);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2714FA860(uint64_t a1, const void ***a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      sub_2711B1344(&v8, v9, v4 + 4);
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v3);
  }

  (*(*a1 + 32))(a1, &v8);
  sub_271167834(&v8, v9[0]);
}

uint64_t sub_2714FA968(uint64_t a1, char *a2, size_t a3)
{
  result = (*(*a1 + 56))();
  if ((v9 & 1) == 0)
  {
    if (a3)
    {
      v10 = a3;
      do
      {
        if (!v10)
        {
          goto LABEL_7;
        }

        v11 = a2[--v10];
      }

      while (v11 != 46);
      if (v10 == -1)
      {
LABEL_7:
        v7 = 0;
        v8 = 256;
        *&v16[7] = 256;
        LOBYTE(__p[0]) = 0;
        goto LABEL_18;
      }

      if (a3 >= v10)
      {
        a3 = v10;
      }

      if (a3 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_271120DA8();
      }

      if (a3 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v18) = a3;
      if (v10)
      {
        memmove(&__dst, a2, a3);
      }

      *(&__dst + a3) = 0;
      *__p = __dst;
      *v16 = v18;
      v16[8] = 1;
      v7 = HIBYTE(v18);
      v8 = *(&__dst + 1);
    }

    else
    {
      LOBYTE(__p[0]) = 0;
      v16[8] = 0;
    }

LABEL_18:
    if ((v7 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v7 & 0x80u) == 0)
    {
      v13 = v7;
    }

    else
    {
      v13 = v8;
    }

    result = (*(*a1 + 64))(a1, v12, v13);
    if (v16[8] == 1 && (v16[7] & 0x80000000) != 0)
    {
      v14 = result;
      operator delete(__p[0]);
      return v14;
    }
  }

  return result;
}

void sub_2714FAB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2714FAB48(void *result, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  qword_28087B8D0 = 0;
  qword_28087B8C8 = 0;
  qword_28087B8C0 = &qword_28087B8C8;
  v4 = a2[2];
  if (*result != *a2 || result[2] != a2[2])
  {
    sub_2714FAEB0();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2714FAE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  sub_271167834(&qword_28087B8C0, qword_28087B8C8);
  _Unwind_Resume(a1);
}

void sub_2714FAE88(_Unwind_Exception *a1)
{
  if (v1 < 0)
  {
    operator delete(v2);
  }

  sub_271167834(&qword_28087B8C0, qword_28087B8C8);
  _Unwind_Resume(a1);
}

void sub_2714FB088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (!v11)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(&a10, v11);
  _Unwind_Resume(exception_object);
}

unint64_t sub_2714FB0B0(uint64_t a1)
{
  _X20 = 0;
  _X21 = 0;
  __asm { CASPAL          X20, X21, X20, X21, [X8] }

  _X22 = std::stoll(a1, 0, 10);
  std::to_string(&v21, _X22);
  v10 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  v12 = *(a1 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a1 + 8);
  }

  if (size != v12)
  {
    v16 = 0;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (v16)
    {
      goto LABEL_19;
    }

LABEL_23:
    LOBYTE(_X22) = 0;
    return _X20 & 0xFFFFFFFFFFFFFF00 | _X22;
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v21;
  }

  else
  {
    v14 = v21.__r_.__value_.__r.__words[0];
  }

  if (v13 >= 0)
  {
    v15 = a1;
  }

  else
  {
    v15 = *a1;
  }

  v16 = memcmp(v14, v15, size) == 0;
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  operator delete(v21.__r_.__value_.__l.__data_);
  if (!v16)
  {
    goto LABEL_23;
  }

LABEL_19:
  v17 = *(a1 + 32);
  do
  {
    _X3 = *(a1 + 40);
    __asm { CASPAL          X2, X3, X22, X23, [X8] }

    _ZF = _X2 == v17;
    v17 = _X2;
  }

  while (!_ZF);
  _X20 = _X22;
  return _X20 & 0xFFFFFFFFFFFFFF00 | _X22;
}

BOOL sub_2714FB228(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void sub_2714FB29C(_BYTE *__src@<X0>, uint64_t __len@<X1>, uint64_t a3@<X8>)
{
  v47[2] = *MEMORY[0x277D85DE8];
  if (!__len)
  {
    *a3 = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 80) = 0;
    goto LABEL_111;
  }

  v7 = 0;
  v8 = __len;
  while (__src[v7] != 35)
  {
    if (__len == ++v7)
    {
      v9 = 0;
      LOBYTE(v10) = 0;
      goto LABEL_16;
    }
  }

  LOBYTE(v10) = 0;
  v9 = 0;
  if (__len != v7 && v7 != -1)
  {
    v11 = __len >= v7 ? v7 : __len;
    v8 = __len >= v11 ? v11 : __len;
    v9 = ~v7;
    v10 = 1;
    if (!v11)
    {
      v13 = 0;
      v14 = v9 + __len;
      if (__len < v9 + __len)
      {
        v14 = __len;
      }

      v15 = __len - v14;
      v16 = v14;
      if (__len >= v14)
      {
        goto LABEL_24;
      }

      goto LABEL_115;
    }
  }

LABEL_16:
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v41) = v8;
  memmove(&__dst, __src, v8);
  *(&__dst + v8) = 0;
  v13 = __dst;
  v47[0] = v41;
  *(v47 + 7) = *(&v41 + 7);
  v3 = HIBYTE(v41);
  __dst = 0;
  v41 = 0uLL;
  if (v10)
  {
    v10 = 0;
    v14 = v9 + __len;
    if (__len < v9 + __len)
    {
      v14 = __len;
    }

    v15 = __len - v14;
    v16 = v14;
    if (__len >= __len - v14)
    {
LABEL_24:
      if (v16 >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = v16;
      }

      if (v17 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

      if (v17 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v39) = v17;
      if (v17)
      {
        memmove(&v38, &__src[v15], v17);
      }

      *(&v38 + v17) = 0;
      v18 = v38;
      v45[0] = v39;
      *(v45 + 7) = *(&v39 + 7);
      v12 = HIBYTE(v39);
      v39 = 0uLL;
      v38 = 0;
      v46[0] = v45[0];
      *(v46 + 7) = *(v45 + 7);
      v45[0] = 0;
      *(v45 + 7) = 0;
      if (v10)
      {
        *a3 = 0;
        *(a3 + 24) = 0;
        v20 = (v3 & 0x80u) != 0;
        *(a3 + 32) = 0;
        *(a3 + 80) = 0;
        v21 = 1;
        goto LABEL_106;
      }

      v19 = 1;
      goto LABEL_37;
    }

LABEL_115:
    sub_2711280A8("string_view::substr");
  }

  v18 = 0;
  v19 = 0;
LABEL_37:
  *&v43[7] = *(v47 + 7);
  v42 = v13;
  *v43 = v47[0];
  v44 = v3;
  v47[0] = 0;
  *(v47 + 7) = 0;
  if ((v3 & 0x80u) == 0)
  {
    v22 = &v42;
  }

  else
  {
    v22 = v13;
  }

  v23 = *v43;
  if ((v3 & 0x80u) == 0)
  {
    v23 = v3;
  }

  if (!v23)
  {
    goto LABEL_104;
  }

  v24 = v22;
  if (v23 < 8)
  {
LABEL_118:
    v37 = v22 + v23;
    do
    {
      if (*v24 == 35)
      {
        *v24 = 95;
      }

      ++v24;
    }

    while (v24 != v37);
    goto LABEL_103;
  }

  if (v23 < 0x10)
  {
    v25 = 0;
    goto LABEL_46;
  }

  v25 = v23 & 0xFFFFFFFFFFFFFFF0;
  v29 = v22 + 7;
  v30.i64[0] = 0x2323232323232323;
  v30.i64[1] = 0x2323232323232323;
  v31 = v23 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v32 = vceqq_s8(*(v29 - 7), v30);
    if (v32.i8[0])
    {
      *(v29 - 7) = 95;
      if ((v32.i8[1] & 1) == 0)
      {
LABEL_71:
        if ((v32.i8[2] & 1) == 0)
        {
          goto LABEL_72;
        }

        goto LABEL_88;
      }
    }

    else if ((v32.i8[1] & 1) == 0)
    {
      goto LABEL_71;
    }

    *(v29 - 6) = 95;
    if ((v32.i8[2] & 1) == 0)
    {
LABEL_72:
      if ((v32.i8[3] & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_89;
    }

LABEL_88:
    *(v29 - 5) = 95;
    if ((v32.i8[3] & 1) == 0)
    {
LABEL_73:
      if ((v32.i8[4] & 1) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_90;
    }

LABEL_89:
    *(v29 - 4) = 95;
    if ((v32.i8[4] & 1) == 0)
    {
LABEL_74:
      if ((v32.i8[5] & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_91;
    }

LABEL_90:
    *(v29 - 3) = 95;
    if ((v32.i8[5] & 1) == 0)
    {
LABEL_75:
      if ((v32.i8[6] & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_92;
    }

LABEL_91:
    *(v29 - 2) = 95;
    if ((v32.i8[6] & 1) == 0)
    {
LABEL_76:
      if ((v32.i8[7] & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_93;
    }

LABEL_92:
    *(v29 - 1) = 95;
    if ((v32.i8[7] & 1) == 0)
    {
LABEL_77:
      if ((v32.i8[8] & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_94;
    }

LABEL_93:
    *v29 = 95;
    if ((v32.i8[8] & 1) == 0)
    {
LABEL_78:
      if ((v32.i8[9] & 1) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_95;
    }

LABEL_94:
    v29[1] = 95;
    if ((v32.i8[9] & 1) == 0)
    {
LABEL_79:
      if ((v32.i8[10] & 1) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_96;
    }

LABEL_95:
    v29[2] = 95;
    if ((v32.i8[10] & 1) == 0)
    {
LABEL_80:
      if ((v32.i8[11] & 1) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_97;
    }

LABEL_96:
    v29[3] = 95;
    if ((v32.i8[11] & 1) == 0)
    {
LABEL_81:
      if ((v32.i8[12] & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_98;
    }

LABEL_97:
    v29[4] = 95;
    if ((v32.i8[12] & 1) == 0)
    {
LABEL_82:
      if ((v32.i8[13] & 1) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_99;
    }

LABEL_98:
    v29[5] = 95;
    if ((v32.i8[13] & 1) == 0)
    {
LABEL_83:
      if (v32.i8[14])
      {
        goto LABEL_100;
      }

      goto LABEL_84;
    }

LABEL_99:
    v29[6] = 95;
    if (v32.i8[14])
    {
LABEL_100:
      v29[7] = 95;
      if ((v32.i8[15] & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_101;
    }

LABEL_84:
    if ((v32.i8[15] & 1) == 0)
    {
      goto LABEL_68;
    }

LABEL_101:
    v29[8] = 95;
LABEL_68:
    v29 += 16;
    v31 -= 16;
  }

  while (v31);
  if (v23 == v25)
  {
    goto LABEL_103;
  }

  if ((v23 & 8) == 0)
  {
    v24 = v22 + v25;
    goto LABEL_118;
  }

LABEL_46:
  v24 = v22 + (v23 & 0xFFFFFFFFFFFFFFF8);
  v26 = v25 - (v23 & 0xFFFFFFFFFFFFFFF8);
  v27 = v22 + v25 + 3;
  while (2)
  {
    v28 = vceq_s8(*(v27 - 3), 0x2323232323232323);
    if (v28.i8[0])
    {
      *(v27 - 3) = 95;
      if (v28.i8[1])
      {
        goto LABEL_58;
      }

LABEL_50:
      if ((v28.i8[2] & 1) == 0)
      {
        goto LABEL_51;
      }

LABEL_59:
      *(v27 - 1) = 95;
      if (v28.i8[3])
      {
        goto LABEL_60;
      }

LABEL_52:
      if ((v28.i8[4] & 1) == 0)
      {
        goto LABEL_53;
      }

LABEL_61:
      v27[1] = 95;
      if (v28.i8[5])
      {
        goto LABEL_62;
      }

LABEL_54:
      if ((v28.i8[6] & 1) == 0)
      {
        goto LABEL_55;
      }

LABEL_63:
      v27[3] = 95;
      if (v28.i8[7])
      {
LABEL_64:
        v27[4] = 95;
      }
    }

    else
    {
      if ((v28.i8[1] & 1) == 0)
      {
        goto LABEL_50;
      }

LABEL_58:
      *(v27 - 2) = 95;
      if (v28.i8[2])
      {
        goto LABEL_59;
      }

LABEL_51:
      if ((v28.i8[3] & 1) == 0)
      {
        goto LABEL_52;
      }

LABEL_60:
      *v27 = 95;
      if (v28.i8[4])
      {
        goto LABEL_61;
      }

LABEL_53:
      if ((v28.i8[5] & 1) == 0)
      {
        goto LABEL_54;
      }

LABEL_62:
      v27[2] = 95;
      if (v28.i8[6])
      {
        goto LABEL_63;
      }

LABEL_55:
      if (v28.i8[7])
      {
        goto LABEL_64;
      }
    }

    v27 += 8;
    v26 += 8;
    if (v26)
    {
      continue;
    }

    break;
  }

  if (v23 != (v23 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_118;
  }

LABEL_103:
  v13 = v42;
  v3 = v44;
LABEL_104:
  v33 = *v43;
  v34 = *&v43[7];
  *a3 = v13;
  *(a3 + 8) = v33;
  *(a3 + 15) = v34;
  *(a3 + 23) = v3;
  *(a3 + 24) = 1;
  *(a3 + 32) = 0;
  *(a3 + 80) = 0;
  if (v19)
  {
    v13 = 0;
    v20 = 0;
    v21 = 0;
LABEL_106:
    v35 = v46[0];
    *(a3 + 32) = v18;
    *(a3 + 40) = v35;
    *(a3 + 47) = *(v46 + 7);
    *(a3 + 55) = v12;
    v46[0] = 0;
    *(v46 + 7) = 0;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *(a3 + 80) = 1;
    if ((v21 & 1) == 0)
    {
      if (v20)
      {
        operator delete(v13);
      }

      goto LABEL_109;
    }
  }

  else
  {
LABEL_109:
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__dst);
    }
  }

LABEL_111:
  v36 = *MEMORY[0x277D85DE8];
}

void sub_2714FB8B8(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0 && v3 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2714FB8D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2 != v3 || v2 == 0)
  {
    if (v2 == v3)
    {
      goto LABEL_21;
    }

    return 0;
  }

  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v7 = *(a2 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v6 != v7)
  {
    return 0;
  }

  v9 = v5 >= 0 ? a1 : *a1;
  v10 = v8 >= 0 ? a2 : *a2;
  v11 = a1;
  v12 = a2;
  v13 = memcmp(v9, v10, v6);
  a2 = v12;
  v14 = v13;
  a1 = v11;
  if (v14)
  {
    return 0;
  }

LABEL_21:
  v15 = *(a1 + 80);
  if (v15 != *(a2 + 80) || v15 == 0)
  {
    return v15 == *(a2 + 80);
  }

  v18 = *(a1 + 55);
  if (v18 >= 0)
  {
    v19 = *(a1 + 55);
  }

  else
  {
    v19 = *(a1 + 40);
  }

  v20 = *(a2 + 55);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a2 + 40);
  }

  if (v19 != v20)
  {
    return 0;
  }

  v22 = (a2 + 32);
  if (v18 >= 0)
  {
    v23 = (a1 + 32);
  }

  else
  {
    v23 = *(a1 + 32);
  }

  v24 = *v22;
  if (v21 >= 0)
  {
    v25 = (a2 + 32);
  }

  else
  {
    v25 = *v22;
  }

  return memcmp(v23, v25, v19) == 0;
}

void sub_2714FBA10(void *a1)
{
  v1 = a1;
  sub_271120E64(a1, "{", 1);
  sub_2711DC2EC();
}

BOOL sub_2714FBB90(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 24);
  v5 = *(*a2 + 24);
  if (v4 != v5 || v4 == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(v2 + 23);
    if (v8 >= 0)
    {
      v9 = *(v2 + 23);
    }

    else
    {
      v9 = v2[1];
    }

    v10 = *(v3 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = v3[1];
    }

    if (v9 != v10)
    {
      return 0;
    }

    if (v8 < 0)
    {
      v2 = *v2;
    }

    if (v11 < 0)
    {
      v3 = *v3;
    }

    v12 = a1;
    v13 = a2;
    v14 = memcmp(v2, v3, v9);
    a2 = v13;
    v15 = v14;
    a1 = v12;
    if (v15)
    {
      return 0;
    }
  }

  v16 = a1[1];
  v17 = a2[1];
  v18 = *(v16 + 16);
  v19 = *(v17 + 16);
  if (v18 != v19 || v18 == 0)
  {
    if (v18 != v19)
    {
      return 0;
    }
  }

  else if (*v16 != *v17 || *(v16 + 8) != *(v17 + 8))
  {
    return 0;
  }

  v21 = a1[2];
  v22 = a2[2];
  v23 = *(v21 + 24);
  v24 = *(v22 + 24);
  if (v23 != v24 || v23 == 0)
  {
    if (v23 != v24)
    {
      return 0;
    }
  }

  else
  {
    v26 = *(v21 + 23);
    if (v26 >= 0)
    {
      v27 = *(v21 + 23);
    }

    else
    {
      v27 = v21[1];
    }

    v28 = *(v22 + 23);
    v29 = v28;
    if ((v28 & 0x80u) != 0)
    {
      v28 = v22[1];
    }

    if (v27 != v28)
    {
      return 0;
    }

    if (v26 < 0)
    {
      v21 = *v21;
    }

    if (v29 < 0)
    {
      v22 = *v22;
    }

    v30 = a1;
    v31 = a2;
    v32 = memcmp(v21, v22, v27);
    a2 = v31;
    v33 = v32;
    a1 = v30;
    if (v33)
    {
      return 0;
    }
  }

  v34 = a1[3];
  v35 = a2[3];
  v36 = *(v34 + 48);
  v37 = *(v35 + 48);
  if (v36 != v37 || v36 == 0)
  {
    if (v36 != v37)
    {
      return 0;
    }
  }

  else
  {
    v39 = *(v34 + 23);
    if (v39 >= 0)
    {
      v40 = *(v34 + 23);
    }

    else
    {
      v40 = v34[1];
    }

    v41 = *(v35 + 23);
    v42 = v41;
    if ((v41 & 0x80u) != 0)
    {
      v41 = v35[1];
    }

    if (v40 != v41)
    {
      return 0;
    }

    if (v39 < 0)
    {
      v34 = *v34;
    }

    if (v42 < 0)
    {
      v35 = *v35;
    }

    v43 = a1;
    v44 = a2;
    v45 = memcmp(v34, v35, v40);
    a2 = v44;
    v46 = v45;
    a1 = v43;
    if (v46)
    {
      return 0;
    }
  }

  v47 = a1[4];
  v48 = a2[4];
  v49 = *(v48 + 24);
  v50 = *(v47 + 24);
  result = v50 == v49;
  if (v50 != v49 || !*(v47 + 24))
  {
    return result;
  }

  v51 = *v47;
  v52 = *(v47 + 8);
  v53 = *v48;
  if (v52 - *v47 != *(v48 + 8) - *v48)
  {
    return 0;
  }

  if (v51 == v52)
  {
    return 1;
  }

  do
  {
    result = sub_2714FB8D4(v51, v53);
    if (!result)
    {
      break;
    }

    v51 += 96;
    v53 += 96;
  }

  while (v51 != v52);
  return result;
}

uint64_t sub_2714FBE4C(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_2714FBEC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2714FBF50(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/IData.cpp", 216, "data_", 5uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "data_", 5, "", 0);
        return *(v3 + 8);
      }
    }

    else
    {
      v4 = qword_28087C408;
      v5 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_10;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "data_", 5, "", 0);
    }

    while (v4 != v5);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_10:
    abort();
  }

  return result;
}

uint64_t sub_2714FC08C(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v7 = a2[1];
    v6 = a2[2];
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = a2[1];
    v6 = a2[2];
    if (v5)
    {
LABEL_4:
      if (v6 && (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        if (v7)
        {
LABEL_7:
          v8 = (*(*a1 + 16))(a1);
          v9 = (*(*a2 + 16))(a2);
          result = (*(*v8 + 16))(v8, v9);
          if (!result)
          {
            return result;
          }

          v11 = a1[1];
          if (v11)
          {
            goto LABEL_24;
          }

          sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/IData.cpp", 216, "data_", 5uLL, "", 0, sub_271852CA8);
          if (byte_28087C430 == 1)
          {
            if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
            {
LABEL_23:
              qword_28087C420(*algn_28087C428, "data_", 5, "", 0);
              v11 = a1[1];
LABEL_24:
              v16 = (*(*v11 + 24))(v11);
              v17 = a2[1];
              if (v17)
              {
LABEL_33:
                v22 = (*(*v17 + 24))(v17);
                if (*v16 == *v22 && *(v16 + 8) == *(v22 + 8))
                {
                  v24[0] = v16 + 16;
                  v24[1] = v16 + 48;
                  v24[2] = v16 + 72;
                  v24[3] = v16 + 112;
                  v24[4] = v16 + 176;
                  v23[0] = v22 + 16;
                  v23[1] = v22 + 48;
                  v23[2] = v22 + 72;
                  v23[3] = v22 + 112;
                  v23[4] = v22 + 176;
                  return sub_2714FBB90(v24, v23);
                }

                return 0;
              }

              sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/IData.cpp", 216, "data_", 5uLL, "", 0, sub_271852CA8);
              if (byte_28087C430 == 1)
              {
                if (byte_28087C438 != 1 || (v18 = qword_28087C408, v19 = qword_28087C410, qword_28087C408 == qword_28087C410))
                {
LABEL_32:
                  qword_28087C420(*algn_28087C428, "data_", 5, "", 0);
                  v17 = a2[1];
                  goto LABEL_33;
                }
              }

              else
              {
                v18 = qword_28087C408;
                v19 = qword_28087C410;
                if (qword_28087C408 == qword_28087C410)
                {
                  goto LABEL_38;
                }
              }

              do
              {
                v21 = *v18;
                v20 = *(v18 + 8);
                v18 += 16;
                v21(v20, "data_", 5, "", 0);
              }

              while (v18 != v19);
              if (byte_28087C430)
              {
                goto LABEL_32;
              }

LABEL_38:
              abort();
            }
          }

          else
          {
            v12 = qword_28087C408;
            v13 = qword_28087C410;
            if (qword_28087C408 == qword_28087C410)
            {
              goto LABEL_38;
            }
          }

          do
          {
            v15 = *v12;
            v14 = *(v12 + 8);
            v12 += 16;
            v15(v14, "data_", 5, "", 0);
          }

          while (v12 != v13);
          if ((byte_28087C430 & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_23;
        }
      }

      else if (v7)
      {
        goto LABEL_7;
      }

      return 0;
    }
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  return v7 == 0;
}

uint64_t sub_2714FC508(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/IData.cpp", 216, "data_", 5uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "data_", 5, "", 0);
        v2 = *(v3 + 8);
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
      v7(v6, "data_", 5, "", 0);
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
  v8 = *(*v2 + 24);

  return v8();
}

uint64_t sub_2714FC660(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/IData.cpp", 216, "data_", 5uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "data_", 5, "", 0);
        v2 = *(v3 + 8);
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
      v7(v6, "data_", 5, "", 0);
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
  v8 = *(*v2 + 16);

  return v8();
}

void sub_2714FC7B8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *&v16 = v2;
  *(&v16 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    HIBYTE(v14) = 0;
    LOBYTE(__p[0]) = 0;
    if (!v3)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v11 = *(a1 + 8);
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 32))(&v19);
  v6 = std::string::insert(&v19, 0, ",", 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v3 = *(&v16 + 1);
  if (*(&v16 + 1))
  {
LABEL_14:
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

LABEL_16:
  if ((atomic_load_explicit(qword_28087B8E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_28087B8E8))
  {
    sub_27112B400(&xmmword_28087B920, "viz::SharedData");
    __cxa_guard_release(qword_28087B8E8);
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v8;
  v18 = -1;
  if (byte_28087B937 < 0)
  {
    sub_271127178(&v16, xmmword_28087B920, *(&xmmword_28087B920 + 1));
  }

  else
  {
    v16 = xmmword_28087B920;
    v17 = unk_28087B930;
  }

  v18 = 1;
  v19.__r_.__value_.__r.__words[0] = &v16;
  v19.__r_.__value_.__l.__size_ = "{";
  v19.__r_.__value_.__r.__words[2] = &v16;
  v20 = "{";
  v21 = "{";
  sub_271136F58(&v19.__r_.__value_.__r.__words[2], &v16);
  sub_271136C48(&v15, &v16, &v10);
  v19.__r_.__value_.__r.__words[0] = &v16;
  v19.__r_.__value_.__l.__size_ = __p;
  v19.__r_.__value_.__r.__words[2] = &v16;
  v20 = __p;
  v21 = __p;
  if (v18 == -1)
  {
    sub_2711308D4();
  }

  v22 = &v19;
  (off_288132958[v18])(&v22, &v16);
  v19.__r_.__value_.__r.__words[0] = &v16;
  v19.__r_.__value_.__l.__size_ = "}";
  v19.__r_.__value_.__r.__words[2] = &v16;
  v20 = "}";
  v21 = "}";
  if (v18 == -1)
  {
    sub_2711308D4();
  }

  v22 = &v19;
  (*(&off_288132970 + v18))(&v22, &v16);
  if (v18 == -1)
  {
    sub_2711308D4();
  }

  v19.__r_.__value_.__r.__words[0] = &v22;
  (off_288132940[v18])(&v19, &v16);
  if (v18 != -1)
  {
    (off_288132928[v18])(&v19, &v16);
  }

  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return;
    }

LABEL_32:
    operator delete(__p[0]);
    return;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_32;
  }
}

void sub_2714FCB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  __cxa_guard_abort(qword_28087B8E8);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2714FCC00(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/IData.cpp", 216, "data_", 5uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "data_", 5, "", 0);
        v2 = *(v3 + 8);
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
      v7(v6, "data_", 5, "", 0);
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
  v8 = *(*v2 + 40);

  return v8();
}

uint64_t sub_2714FCD68(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/IData.cpp", 216, "data_", 5uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "data_", 5, "", 0);
        v2 = *(v3 + 8);
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
      v7(v6, "data_", 5, "", 0);
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
  v8 = *(*v2 + 48);

  return v8();
}

void *sub_2714FCED0(uint64_t a1, void **a2, uint64_t a3)
{
  if (*(a3 + 48) == 1)
  {
    operator new();
  }

  v3 = *a2;

  return sub_271120E64(v3, "nullopt", 7);
}

void sub_2714FD0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714FD158(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2714FD190(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_2714FD1C0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d3kit3viz5IDataEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d3kit3viz5IDataEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d3kit3viz5IDataEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d3kit3viz5IDataEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_2714FD220(void *a1)
{
  *a1 = &unk_28812ECD0;
  sub_271134CBC((a1 + 12));
  result = a1;
  a1[1] = &unk_28812ED18;
  a1[2] = &unk_2881147D8;
  v3 = a1[4];
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

  return result;
}

void sub_2714FD300(void *a1)
{
  *a1 = &unk_28812ECD0;
  sub_271134CBC((a1 + 12));
  a1[1] = &unk_28812ED18;
  a1[2] = &unk_2881147D8;
  v2 = a1[4];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2714FD3F4(uint64_t *a1, uint64_t a2, void *__src, size_t __len)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v8 = __len;
  if (__len)
  {
    memmove(&v7, __src, __len);
    *(&v7 + __len) = 0;
    v6 = *a1;
    if (*a1)
    {
LABEL_5:
      LOBYTE(__p[0]) = 0;
      LOBYTE(v11) = 0;
      if (*(v6 + 264) == 1)
      {
        if (*(v6 + 263) < 0)
        {
          sub_271127178(__p, *(v6 + 240), *(v6 + 248));
        }

        else
        {
          *__p = *(v6 + 240);
          v10 = *(v6 + 256);
        }

        LOBYTE(v11) = 1;
      }

LABEL_13:
      operator new();
    }
  }

  else
  {
    LOBYTE(v7) = 0;
    v6 = *a1;
    if (*a1)
    {
      goto LABEL_5;
    }
  }

  LOBYTE(__p[0]) = 0;
  LOBYTE(v11) = 0;
  goto LABEL_13;
}

void sub_2714FDB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2714FDC3C(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_10;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = v2[4];
      if (v4[4] < v8)
      {
LABEL_10:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }

        if (!*v9)
        {
LABEL_21:
          operator new();
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_21;
        }

        while (1)
        {
          while (1)
          {
            v10 = v3;
            v11 = v3[4];
            if (v11 <= v8)
            {
              break;
            }

            v3 = *v10;
            if (!*v10)
            {
              goto LABEL_21;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v3 = v10[1];
          if (!v3)
          {
            goto LABEL_21;
          }
        }
      }

      v12 = v2[1];
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
          v13 = v2[2];
          v7 = *v13 == v2;
          v2 = v13;
        }

        while (!v7);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
}

void sub_2714FDDEC(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 80);
  v3 = (v1 + 88);
  *__p = 0u;
  v52 = 0;
  v53 = 0;
  if (v2 == v3)
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_66;
  }

  v4 = 0;
  v5 = v2;
  do
  {
    v6 = v4;
    v7 = v5[1];
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
      do
      {
        v8 = v5[2];
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    ++v4;
    v5 = v8;
  }

  while (v8 != v3);
  v10 = v6 + 2;
  v11 = (v6 + 2) >> 9;
  if ((v10 & 0x1FF) != 0)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    operator new();
  }

  v14 = 0;
  v13 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v4 + (-MEMORY[0] >> 3);
  if (v18 < 1)
  {
    v19 = -8 * ((511 - v18) >> 9);
    v20 = *v19 + 8 * (~(511 - v18) & 0x1FF);
    if (!v20)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v19 = 8 * (v18 >> 9);
    v20 = *v19 + 8 * (v18 & 0x1FF);
    if (!v20)
    {
      goto LABEL_66;
    }
  }

  do
  {
    v21 = v20;
    if (v17 != v19)
    {
      v21 = *v17 + 4096;
    }

    if (v15 == v21)
    {
      v21 = v15;
    }

    else
    {
      v22 = v15;
      do
      {
        *v22++ = v2[4];
        v23 = v2[1];
        v24 = v2;
        if (v23)
        {
          do
          {
            v2 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v2 = v24[2];
            v9 = *v2 == v24;
            v24 = v2;
          }

          while (!v9);
        }
      }

      while (v22 != v21);
    }

    v16 += (v21 - v15) >> 3;
    if (v17 == v19)
    {
      break;
    }

    v25 = v17[1];
    ++v17;
    v15 = v25;
  }

  while (v25 != v20);
  v55 = v16;
  if (v16)
  {
    do
    {
      v26 = *(v14 + ((v12 >> 6) & 0x3FFFFFFFFFFFFF8));
      v27 = *(v26 + 8 * (v12 & 0x1FF));
      if (!**(v27 + 32))
      {
        v30 = *(v27 + 40);
        v31 = atomic_load(*(a1 + 40));
        atomic_exchange(v30, v31);
        v32 = *(*(v26 + 8 * (v12 & 0x1FF)) + 48);
        v33 = *(v32 + 80);
        v34 = (v32 + 88);
        v14 = __p[1];
        v16 = v55;
        v12 = v53;
        if (v33 != (v32 + 88))
        {
          v35 = v52;
          do
          {
            if (v35 == v14)
            {
              v36 = 0;
            }

            else
            {
              v36 = ((v35 - v14) << 6) - 1;
            }

            v37 = v12 + v16;
            if (v36 == v12 + v16)
            {
              if (v12 < 0x200)
              {
                operator new();
              }

              v54 = v12 - 512;
              v40 = *v14;
              v38 = (v14 + 1);
              v39 = v40;
              __p[1] = v38;
              if (!v35)
              {
                if (!v38)
                {
                  operator new();
                }

                v41 = ((v38 >> 3) + 1 + (((v38 >> 3) + 1) >> 63)) >> 1;
                v42 = (v38 - 8 * v41);
                if (v35 != v38)
                {
                  memmove((v38 - 8 * v41), v38, &v35[-v38]);
                }

                v35 = &v35[v42 - v38];
                __p[1] = v42;
              }

              *v35 = v39;
              v52 = v35 + 8;
              v14 = __p[1];
              v35 += 8;
              v16 = v55;
              v12 = v54;
              v37 = v54 + v55;
            }

            (*(v14 + ((v37 >> 6) & 0x3FFFFFFFFFFFFF8)))[v37 & 0x1FF] = v33[4];
            v55 = ++v16;
            v43 = v33[1];
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
                v44 = v33[2];
                v9 = *v44 == v33;
                v33 = v44;
              }

              while (!v9);
            }

            v33 = v44;
          }

          while (v44 != v34);
        }
      }

      --v16;
      v28 = v12 + 1;
      v53 = v12 + 1;
      v55 = v16;
      if (v12 + 1 >= 0x400)
      {
        v29 = *v14++;
        operator delete(v29);
        v28 = v12 - 511;
        __p[1] = v14;
        v53 = v12 - 511;
      }

      v12 = v28;
    }

    while (v16);
    v13 = v52;
    if (((v52 - v14) >> 3) >= 3)
    {
      v13 = v52;
      v45 = v52 - v14 - 8;
      do
      {
        v46 = *v14++;
        operator delete(v46);
        v47 = v45 >> 3;
        v45 -= 8;
      }

      while (v47 > 2);
    }
  }

LABEL_66:
  if (v14 != v13)
  {
    v48 = v14;
    do
    {
      v49 = *v48++;
      operator delete(v49);
    }

    while (v48 != v13);
  }
}

void sub_2714FE9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (a13 == a12)
  {
    v14 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void sub_2714FE9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
    operator delete(v13);
    if (a13 == a12)
    {
LABEL_3:
      v15 = a11;
      if (!a11)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (a13 == a12)
  {
    goto LABEL_3;
  }

  v15 = a11;
  if (!a11)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v15);
  _Unwind_Resume(a1);
}

void sub_2714FEA9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  operator delete(v11);
  sub_2715040D4(&a11);
  _Unwind_Resume(a1);
}

void sub_2714FEAD8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v6 = (*a1 + 72);
    std::__shared_mutex_base::lock(v6);
    v7 = *(a2 + 32);
    if (!*v7)
    {
      operator new();
    }

    if (*v7 != a3)
    {
      *v7 = a3;
      v8 = *a1;
      v9 = *(*a1 + 8);
      std::mutex::lock(v9);
      v10 = *(v8 + 16);
      v11 = (v8 + 24);
      if (v10 != v11)
      {
        do
        {
          v12 = *(a2 + 31);
          if (v12 >= 0)
          {
            v13 = a2 + 8;
          }

          else
          {
            v13 = *(a2 + 8);
          }

          if (v12 >= 0)
          {
            v14 = *(a2 + 31);
          }

          else
          {
            v14 = *(a2 + 16);
          }

          (*(*v10[4] + 16))(v10[4], v13, v14, a3);
          v15 = v10[1];
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = v10[2];
              v17 = *v16 == v10;
              v10 = v16;
            }

            while (!v17);
          }

          v10 = v16;
        }

        while (v16 != v11);
      }

      std::mutex::unlock(v9);
    }

    goto LABEL_25;
  }

  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    if (*(a2 + 31))
    {
      goto LABEL_21;
    }

LABEL_27:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot set root context to inherit its enable-state");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (!*(a2 + 16))
  {
    goto LABEL_27;
  }

LABEL_21:
  v6 = (*a1 + 72);
  std::__shared_mutex_base::lock(v6);
  if (**(a2 + 32))
  {
    v18 = *(a2 + 40);
    v19 = atomic_load(*(a1[9] + 40));
    atomic_exchange(v18, v19);
    sub_2714FDDEC(a2);
    operator new();
  }

LABEL_25:
  std::__shared_mutex_base::unlock(v6);
}

void sub_2714FEEE8(uint64_t a1, const void *a2, size_t __len)
{
  *a1 = &unk_28810C310;
  if (__len < 0x7FFFFFFFFFFFFFF8)
  {
    if (__len < 0x17)
    {
      *(a1 + 31) = __len;
      v4 = (a1 + 8);
      if (__len)
      {
        memmove(v4, a2, __len);
      }

      *(v4 + __len) = 0;
      operator new();
    }

    operator new();
  }

  sub_271120DA8();
}

void sub_2714FF018(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v4)
  {
    MEMORY[0x2743BF050](v4, 0x1000C4077774924);
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2714FF074(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    sub_2715032B0(v2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    MEMORY[0x2743BF050](v3, 0x80C40B8603338);
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {
    MEMORY[0x2743BF050](v4, 0x1000C4077774924);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_2714FF108(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    sub_2715032B0(v2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    MEMORY[0x2743BF050](v3, 0x80C40B8603338);
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {
    MEMORY[0x2743BF050](v4, 0x1000C4077774924);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2714FF1E0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = (**(a1 + 48) + 72);
  std::__shared_mutex_base::lock_shared(v6);
  v7 = &a2[a3];
  v8 = 0;
  if (a3)
  {
    while (a2[v8] != 46)
    {
      if (a3 == ++v8)
      {
        v8 = a3;
        break;
      }
    }
  }

  v9 = 0;
  v15[0] = a2;
  v15[1] = &a2[a3];
  v15[2] = a2;
  v15[3] = a2;
  v15[4] = v8;
  v16 = 46;
  v17 = &unk_271897860;
  v18 = &unk_271897860;
  v19 = &unk_271897860;
  v20 = &unk_271897860;
  v21 = 0;
  v22 = 0;
  if (a3 && a2 != &unk_271897860)
  {
    v9 = 0;
    do
    {
      ++v9;
      v10 = &a2[v8];
      if (v10 == v7)
      {
        break;
      }

      a2 = v10 + 1;
      if (v10 + 1 == v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        while (a2[v8] != 46)
        {
          if (v7 - a2 == ++v8)
          {
            v8 = v7 - a2;
            break;
          }
        }
      }
    }

    while (a2 != &unk_271897860);
  }

  v23 = v9;
  v13 = a1;
  v14 = 0;
  sub_2715033A4(a1, v15, 0, &v13);
  v11 = v13;
  std::__shared_mutex_base::unlock_shared(v6);
  return v11;
}

void sub_2714FF334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715041A0(va);
  _Unwind_Resume(a1);
}

void *sub_2714FF348(uint64_t a1, char *a2, size_t a3)
{
  std::__shared_mutex_base::lock((a1 + 72));
  v6 = sub_2714FF4F4(a1, a2, a3);
  std::__shared_mutex_base::unlock((a1 + 72));
  return v6;
}

unint64_t sub_2714FF3C0(uint64_t a1, const void *a2, size_t a3)
{
  std::__shared_mutex_base::lock((a1 + 72));
  v6 = *(a1 + 56);
  if (!v6)
  {
    goto LABEL_32;
  }

  v7 = (a1 + 56);
  do
  {
    while (1)
    {
      v8 = *(v6 + 55);
      v9 = v8 >= 0 ? v6 + 4 : v6[4];
      v10 = v8 >= 0 ? *(v6 + 55) : v6[5];
      v11 = v10 >= a3 ? a3 : v10;
      v12 = memcmp(a2, v9, v11);
      if (v12)
      {
        break;
      }

      if (a3 <= v10)
      {
        goto LABEL_17;
      }

LABEL_3:
      v6 = v6[1];
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    v7 = v6;
    v6 = *v6;
  }

  while (v6);
LABEL_18:
  if (v7 == (a1 + 56))
  {
    goto LABEL_32;
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

  if (v15 >= a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(a2, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_32:
    v20 = 0;
    v19 = 0;
  }

  else
  {
    if (a3 < v15)
    {
      goto LABEL_32;
    }

LABEL_30:
    v18 = v7[7];
    v19 = v18 & 0xFFFFFFFFFFFFFF00;
    v20 = v18;
  }

  std::__shared_mutex_base::unlock((a1 + 72));
  return v19 | v20;
}

void *sub_2714FF4F4(uint64_t a1, char *a2, size_t a3)
{
  v5 = &a2[a3];
  v6 = 0;
  if (a3)
  {
    while (a2[v6] != 46)
    {
      if (a3 == ++v6)
      {
        v6 = a3;
        break;
      }
    }
  }

  v7 = 0;
  v8 = *(a1 + 40);
  v38[0] = a2;
  v38[1] = &a2[a3];
  v38[2] = a2;
  v38[3] = a2;
  v38[4] = v6;
  v39 = 46;
  v40 = &unk_271897860;
  v41 = &unk_271897860;
  v42 = &unk_271897860;
  v43 = &unk_271897860;
  v44 = 0;
  v45 = 0;
  if (a3 && a2 != &unk_271897860)
  {
    v7 = 0;
    v9 = a2;
    do
    {
      ++v7;
      v10 = &v9[v6];
      if (v10 == v5)
      {
        break;
      }

      v9 = v10 + 1;
      if (v10 + 1 == v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0;
        while (v9[v6] != 46)
        {
          if (v5 - v9 == ++v6)
          {
            v6 = v5 - v9;
            break;
          }
        }
      }
    }

    while (v9 != &unk_271897860);
  }

  v46 = v7;
  v36 = v8;
  LOBYTE(v37[0]) = 0;
  sub_2715033A4(v8, v38, 0, &v36);
  if ((v37[0] & 1) == 0)
  {
    v11 = v36[6];
    v37[0] = 0;
    v37[1] = 0;
    v36 = v37;
    v12 = *(v11 + 80);
    v35 = v11;
    v13 = (v11 + 88);
    if (v12 == (v11 + 88))
    {
LABEL_62:
      operator new();
    }

LABEL_21:
    v15 = v12[4];
    v16 = *(v15 + 31);
    if ((v16 & 0x8000000000000000) != 0)
    {
      v17 = *(v15 + 8);
      v16 = *(v15 + 16);
      if (v16 <= a3)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = (v15 + 8);
      if (v16 <= a3)
      {
        goto LABEL_27;
      }
    }

    if (a3)
    {
      if (v16 < a3)
      {
        goto LABEL_27;
      }

      v21 = &v17[v16];
      v22 = *a2;
      v23 = v16;
      v24 = v17;
      while (1)
      {
        v25 = v23 - a3;
        if (v25 == -1)
        {
          goto LABEL_27;
        }

        v26 = memchr(v24, v22, v25 + 1);
        if (!v26)
        {
          goto LABEL_27;
        }

        v27 = v26;
        if (!memcmp(v26, a2, a3))
        {
          break;
        }

        v24 = v27 + 1;
        v23 = v21 - (v27 + 1);
        if (v23 < a3)
        {
          goto LABEL_27;
        }
      }

      if (v27 == v21 || v17 != v27 || v16 <= a3 + 1 || v17[a3] != 46)
      {
        goto LABEL_27;
      }

      v28 = a3;
      while (v17[v28 + 1] == 46)
      {
        if (v16 - 1 == ++v28)
        {
          goto LABEL_27;
        }
      }

      if (v28 == -2)
      {
LABEL_27:
        v18 = v12[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v12[2];
            v20 = *v19 == v12;
            v12 = v19;
          }

          while (!v20);
        }

        goto LABEL_20;
      }
    }

    for (i = v37[0]; ; i = *v30)
    {
      if (!i)
      {
LABEL_54:
        operator new();
      }

      while (1)
      {
        v30 = i;
        v31 = i[4];
        if (v15 < v31)
        {
          break;
        }

        if (v31 >= v15)
        {
          v32 = v12[1];
          v33 = v12;
          if (v32)
          {
            do
            {
              v19 = v32;
              v32 = *v32;
            }

            while (v32);
          }

          else
          {
            do
            {
              v19 = v33[2];
              v20 = *v19 == v33;
              v33 = v19;
            }

            while (!v20);
          }

          if (v35[10] == v12)
          {
            v35[10] = v19;
          }

          v14 = v35[11];
          --v35[12];
          sub_271128F64(v14, v12);
          operator delete(v12);
LABEL_20:
          v12 = v19;
          if (v19 == v13)
          {
            goto LABEL_62;
          }

          goto LABEL_21;
        }

        i = v30[1];
        if (!i)
        {
          goto LABEL_54;
        }
      }
    }
  }

  return v36;
}

uint64_t sub_2714FFE88(uint64_t a1, unint64_t a2)
{
  std::__shared_mutex_base::lock((a1 + 72));
  v21 = *(a1 + 8);
  v22 = a1;
  std::mutex::lock(v21);
  v24[0] = 0;
  v24[1] = 0;
  v3 = *(a1 + 48);
  v23 = v24;
  if (v3 != (a1 + 56))
  {
    do
    {
      v12 = *(v3[7] + 32);
      if (v12)
      {
        v13 = *v12;
        operator new();
      }

      v14 = v3[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v3[2];
          v16 = *v15 == v3;
          v3 = v15;
        }

        while (!v16);
      }

      v3 = v15;
    }

    while (v15 != (a1 + 56));
  }

  v5 = a1 + 24;
  v4 = *(v22 + 24);
  if (!v4)
  {
LABEL_24:
    operator new();
  }

  v6 = v22 + 24;
  v7 = *(v22 + 24);
  do
  {
    v8 = *(v7 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v6 = v7;
    }

    v7 = *(v7 + 8 * v10);
  }

  while (v7);
  if (v6 == v5 || *(v6 + 32) > a2)
  {
    while (1)
    {
      while (1)
      {
        v17 = v4;
        v18 = v4[4];
        if (v18 <= a2)
        {
          break;
        }

        v4 = *v17;
        if (!*v17)
        {
          goto LABEL_24;
        }
      }

      if (v18 >= a2)
      {
        break;
      }

      v4 = v17[1];
      if (!v4)
      {
        goto LABEL_24;
      }
    }

    (*(*a2 + 32))(a2, &v23);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  sub_271167834(&v23, v24[0]);
  std::mutex::unlock(v21);
  std::__shared_mutex_base::unlock((v22 + 72));
  return v11;
}

uint64_t sub_271500210(void *a1, unint64_t a2)
{
  v4 = a1[1];
  std::mutex::lock(v4);
  v6 = a1 + 3;
  v5 = a1[3];
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = a1 + 3;
  v8 = a1[3];
  do
  {
    v9 = v8[4];
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v7 = v8;
    }

    v8 = v8[v11];
  }

  while (v8);
  if (v7 != v6 && v7[4] <= a2)
  {
    v14 = a1 + 3;
    v15 = a1[3];
    do
    {
      v16 = v15[4];
      v10 = v16 >= a2;
      v17 = v16 < a2;
      if (v10)
      {
        v14 = v15;
      }

      v15 = v15[v17];
    }

    while (v15);
    if (v14 != v6 && v14[4] <= a2)
    {
      v18 = v14[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        v20 = v14;
        do
        {
          v19 = v20[2];
          v21 = *v19 == v20;
          v20 = v19;
        }

        while (!v21);
      }

      if (a1[2] == v14)
      {
        a1[2] = v19;
      }

      --a1[4];
      sub_271128F64(v5, v14);
      operator delete(v14);
    }

    v12 = 1;
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  std::mutex::unlock(v4);
  return v12;
}

void sub_271500330(uint64_t a1, void *a2)
{
  v26 = 0;
  LOBYTE(__p[0]) = 0;
  v4 = sub_27123ADBC(a2, __p);
  if (v26 < 0)
  {
    v6 = v4;
    operator delete(__p[0]);
    v5 = a2 + 1;
    if (a2 + 1 == v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = a2 + 1;
    if (a2 + 1 == v4)
    {
      goto LABEL_8;
    }
  }

  v26 = 0;
  LOBYTE(__p[0]) = 0;
  v7 = sub_27123ADBC(a2, __p);
  if (v26 < 0)
  {
    v8 = v7;
    operator delete(__p[0]);
    v7 = v8;
  }

  if (!*(v7 + 56))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Cannot set root context to inherit its enable-state");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

LABEL_8:
  std::__shared_mutex_base::lock((a1 + 72));
  v9 = *a2;
  if (*a2 != v5)
  {
    do
    {
      v10 = *(v9 + 55);
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = v9[4];
        v10 = v9[5];
      }

      else
      {
        v11 = (v9 + 4);
      }

      v12 = sub_2714FF4F4(a1, v11, v10);
      v13 = *(v9 + 56);
      v14 = v12[4];
      if (*(v9 + 56))
      {
        if (!*v14)
        {
          operator new();
        }

        if (*v14 != v13)
        {
          *v14 = v13;
        }
      }

      else if (*v14)
      {
        v15 = v12[5];
        v16 = atomic_load(*(*(v12[6] + 72) + 40));
        atomic_exchange(v15, v16);
        sub_2714FDDEC(v12);
        operator new();
      }

      v17 = v9[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v9[2];
          v19 = *v18 == v9;
          v9 = v18;
        }

        while (!v19);
      }

      v9 = v18;
    }

    while (v18 != v5);
  }

  v20 = *(a1 + 8);
  std::mutex::lock(v20);
  v21 = *(a1 + 16);
  if (v21 != (a1 + 24))
  {
    do
    {
      (*(*v21[4] + 24))(v21[4], a2);
      v22 = v21[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v21[2];
          v19 = *v23 == v21;
          v21 = v23;
        }

        while (!v19);
      }

      v21 = v23;
    }

    while (v23 != (a1 + 24));
  }

  std::mutex::unlock(v20);
  std::__shared_mutex_base::unlock((a1 + 72));
}

void sub_27150063C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27150068C(void *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810B138;
  operator new();
}

void sub_271500E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  sub_271503B14(&a19);
  v27 = *(a15 + 8);
  *(a15 + 8) = 0;
  if (!v27)
  {
    _Unwind_Resume(a1);
  }

  (*(*v27 + 8))(v27);
  _Unwind_Resume(a1);
}

void *sub_271501004(void *result)
{
  v1 = result[1];
  *result = &unk_28810B138;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_271501078(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_28810B138;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271501108(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v4 = a1;
    v5 = a2;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 747, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v3 = *(v4 + 8);
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "p_", 2, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:

  return sub_2714FFE88(v3, a2);
}

uint64_t sub_271501250(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v4 = a1;
    v5 = a2;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 747, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v3 = *(v4 + 8);
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "p_", 2, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:

  return sub_271500210(v3, a2);
}

uint64_t sub_271501398(uint64_t a1, const void *a2, size_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  if (v6)
  {
    std::__shared_mutex_base::lock((v6 + 72));
    v7 = *(a1 + 8);
    if (v7)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_12;
    }

    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_63;
    }
  }

  do
  {
    v13 = *v10;
    v12 = *(v10 + 8);
    v10 += 16;
    v13(v12, "p_", 2, "", 0);
  }

  while (v10 != v11);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_12:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v6 = *(a1 + 8);
  std::__shared_mutex_base::lock((v6 + 72));
  v7 = *(a1 + 8);
  if (v7)
  {
LABEL_3:
    v8 = (v7 + 56);
    v9 = *(v7 + 56);
    if (!v9)
    {
      goto LABEL_49;
    }

    goto LABEL_21;
  }

LABEL_13:
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v14 = qword_28087C408;
    v15 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_63;
    }

    do
    {
LABEL_18:
      (*v14)(*(v14 + 8), "p_", 2, "", 0);
      v14 += 16;
    }

    while (v14 != v15);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_20;
  }

  if (byte_28087C438 == 1)
  {
    v14 = qword_28087C408;
    v15 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v7 = *(a1 + 8);
  v8 = (v7 + 56);
  v9 = *(v7 + 56);
  if (!v9)
  {
    goto LABEL_49;
  }

LABEL_21:
  v16 = v8;
  do
  {
    while (1)
    {
      v17 = *(v9 + 55);
      v18 = v17 >= 0 ? v9 + 4 : v9[4];
      v19 = v17 >= 0 ? *(v9 + 55) : v9[5];
      v20 = v19 >= a3 ? a3 : v19;
      v21 = memcmp(a2, v18, v20);
      if (v21)
      {
        break;
      }

      if (a3 <= v19)
      {
        goto LABEL_36;
      }

LABEL_22:
      v9 = v9[1];
      if (!v9)
      {
        goto LABEL_37;
      }
    }

    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_36:
    v16 = v9;
    v9 = *v9;
  }

  while (v9);
LABEL_37:
  if (v16 == v8)
  {
    goto LABEL_49;
  }

  v22 = *(v16 + 55);
  if (v22 >= 0)
  {
    v23 = v16 + 4;
  }

  else
  {
    v23 = v16[4];
  }

  if (v22 >= 0)
  {
    v24 = *(v16 + 55);
  }

  else
  {
    v24 = v16[5];
  }

  if (v24 >= a3)
  {
    v25 = a3;
  }

  else
  {
    v25 = v24;
  }

  v26 = memcmp(a2, v23, v25);
  if (!v26)
  {
    if (a3 >= v24)
    {
      goto LABEL_50;
    }

LABEL_49:
    v16 = v8;
    goto LABEL_50;
  }

  if (v26 < 0)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (!v7)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_58;
      }

      v27 = qword_28087C408;
      v28 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_58;
      }

      do
      {
LABEL_56:
        (*v27)(*(v27 + 8), "p_", 2, "", 0);
        v27 += 16;
      }

      while (v27 != v28);
      if (byte_28087C430)
      {
LABEL_58:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v7 = *(a1 + 8);
        goto LABEL_59;
      }
    }

    else
    {
      v27 = qword_28087C408;
      v28 = qword_28087C410;
      if (qword_28087C408 != qword_28087C410)
      {
        goto LABEL_56;
      }
    }

LABEL_63:
    abort();
  }

LABEL_59:
  if (v16 == (v7 + 56))
  {
    v35[0] = "Context with name ";
    v35[1] = 18;
    v35[2] = a2;
    v35[3] = a3;
    v35[4] = " not found";
    v35[5] = 10;
    sub_271131230(v35, &v36, 0, 0, &v34);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v34;
    }

    else
    {
      v32 = v34.__r_.__value_.__r.__words[0];
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v34.__r_.__value_.__l.__size_;
    }

    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 645, "", 0, v32, size, sub_271852CA8);
    std::string::~string(&v34);
    abort();
  }

  v29 = v16[7];
  std::__shared_mutex_base::unlock((v6 + 72));
  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

void sub_271501884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_mutex_base::unlock((v14 + 72));
  _Unwind_Resume(a1);
}

void *sub_2715018D8(uint64_t a1, char *a2, size_t a3)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 747, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_11;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "p_", 2, "", 0);
    }

    while (v7 != v8);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

LABEL_10:
  std::__shared_mutex_base::lock((v5 + 72));
  v11 = sub_2714FF4F4(v5, a2, a3);
  std::__shared_mutex_base::unlock((v5 + 72));
  return v11;
}

unint64_t sub_271501A54(uint64_t a1, const void *a2, size_t a3)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    v5 = a1;
    v6 = a2;
    v7 = a3;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v8 = qword_28087C408, v9 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v4 = *(v5 + 8);
        a3 = v7;
        a2 = v6;
        goto LABEL_10;
      }
    }

    else
    {
      v8 = qword_28087C408;
      v9 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "p_", 2, "", 0);
    }

    while (v8 != v9);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:

  return sub_2714FF3C0(v4, a2, a3);
}

BOOL sub_271501BA4(uint64_t a1, void *__s1, size_t a3)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    v8 = *(v5 + 56);
    v6 = (v5 + 56);
    v7 = v8;
    if (!v8)
    {
LABEL_40:
      v16 = v6;
      return v16 != v6;
    }

    goto LABEL_12;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_11;
    }

    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_44;
    }
  }

  do
  {
    v13 = *v10;
    v12 = *(v10 + 8);
    v10 += 16;
    v13(v12, "p_", 2, "", 0);
  }

  while (v10 != v11);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_44:
    abort();
  }

LABEL_11:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  v14 = *(a1 + 8);
  v15 = *(v14 + 56);
  v6 = (v14 + 56);
  v7 = v15;
  if (!v15)
  {
    goto LABEL_40;
  }

LABEL_12:
  v16 = v6;
  do
  {
    while (1)
    {
      v17 = *(v7 + 55);
      v18 = v17 >= 0 ? v7 + 4 : v7[4];
      v19 = v17 >= 0 ? *(v7 + 55) : v7[5];
      v20 = v19 >= a3 ? a3 : v19;
      v21 = memcmp(__s1, v18, v20);
      if (v21)
      {
        break;
      }

      if (a3 <= v19)
      {
        goto LABEL_27;
      }

LABEL_13:
      v7 = v7[1];
      if (!v7)
      {
        goto LABEL_28;
      }
    }

    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_27:
    v16 = v7;
    v7 = *v7;
  }

  while (v7);
LABEL_28:
  if (v16 == v6)
  {
    goto LABEL_40;
  }

  v22 = *(v16 + 55);
  if (v22 >= 0)
  {
    v23 = v16 + 4;
  }

  else
  {
    v23 = v16[4];
  }

  if (v22 >= 0)
  {
    v24 = *(v16 + 55);
  }

  else
  {
    v24 = v16[5];
  }

  if (v24 >= a3)
  {
    v25 = a3;
  }

  else
  {
    v25 = v24;
  }

  v26 = memcmp(__s1, v23, v25);
  if (!v26)
  {
    if (a3 >= v24)
    {
      return v16 != v6;
    }

    goto LABEL_40;
  }

  if (v26 < 0)
  {
    goto LABEL_40;
  }

  return v16 != v6;
}

void sub_271501DA8(uint64_t a1, char *a2, size_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  if (!v7)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 747, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v9 = qword_28087C408, v10 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v7 = *(a1 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "p_", 2, "", 0);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  std::__shared_mutex_base::lock((v7 + 72));
  v13 = sub_2714FF4F4(v7, a2, a3);
  std::__shared_mutex_base::unlock((v7 + 72));
  v14 = v13[6];

  sub_2714FEAD8(v14, v13, a4);
}

void sub_271501F48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v4 = a1;
    v5 = a2;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 747, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v3 = *(v4 + 8);
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "p_", 2, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:

  sub_271500330(v3, a2);
}

uint64_t sub_271502090(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return v1 + 240;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (byte_28087C438 == 1)
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_8:
        v7 = *v4;
        v6 = *(v4 + 8);
        v4 += 16;
        v7(v6, "p_", 2, "", 0);
      }

      while (v4 != v5);
      if (byte_28087C430)
      {
        goto LABEL_10;
      }

LABEL_11:
      abort();
    }
  }

LABEL_10:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  return *(a1 + 8) + 240;
}

void sub_2715021D0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
LABEL_10:
    std::__shared_mutex_base::lock((v2 + 72));
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 747, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
      v2 = *(a1 + 8);
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
    v6(v5, "p_", 2, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271502874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  sub_271167834(&a9, a10);
  std::__shared_mutex_base::unlock((v10 + 72));
  _Unwind_Resume(a1);
}

void sub_2715028B8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v4 = *(a1 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v5 = qword_28087C408;
      v6 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_46;
      }
    }

    do
    {
      v8 = *v5;
      v7 = *(v5 + 8);
      v5 += 16;
      v8(v7, "p_", 2, "", 0);
    }

    while (v5 != v6);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_46:
    abort();
  }

LABEL_10:
  v29 = v4;
  std::__shared_mutex_base::lock((v4 + 72));
  a2[1] = 0;
  v9 = (a2 + 1);
  a2[2] = 0;
  *a2 = a2 + 1;
  v10 = *(a1 + 8);
  v11 = *(v10 + 48);
  v30 = (v10 + 56);
  if (v11 != (v10 + 56))
  {
    do
    {
      v31 = **(v11[7] + 32);
      v12 = *v9;
      if (!*v9)
      {
LABEL_39:
        operator new();
      }

      v13 = *(v11 + 55);
      if (v13 >= 0)
      {
        v14 = v11 + 4;
      }

      else
      {
        v14 = v11[4];
      }

      if (v13 >= 0)
      {
        v15 = *(v11 + 55);
      }

      else
      {
        v15 = v11[5];
      }

      while (1)
      {
        while (1)
        {
          v16 = v12;
          v19 = v12[4];
          v17 = v12 + 4;
          v18 = v19;
          v20 = *(v17 + 23);
          v21 = v20 >= 0 ? v17 : v18;
          v22 = v20 >= 0 ? *(v17 + 23) : v17[1];
          v23 = v22 >= v15 ? v15 : v22;
          v24 = memcmp(v14, v21, v23);
          if (v24)
          {
            break;
          }

          if (v15 >= v22)
          {
            goto LABEL_34;
          }

LABEL_20:
          v12 = *v16;
          if (!*v16)
          {
            goto LABEL_39;
          }
        }

        if (v24 < 0)
        {
          goto LABEL_20;
        }

LABEL_34:
        v25 = memcmp(v21, v14, v23);
        if (v25)
        {
          if ((v25 & 0x80000000) == 0)
          {
            break;
          }

          goto LABEL_38;
        }

        if (v22 >= v15)
        {
          break;
        }

LABEL_38:
        v12 = v16[1];
        if (!v12)
        {
          goto LABEL_39;
        }
      }

      *(v16 + 56) = v31;
      v26 = v11[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v11[2];
          v28 = *v27 == v11;
          v11 = v27;
        }

        while (!v28);
      }

      v11 = v27;
    }

    while (v27 != v30);
  }

  std::__shared_mutex_base::unlock((v29 + 72));
}

void sub_271502BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2711B17FC(va);
  sub_271167834(v4, *(v4 + 8));
  std::__shared_mutex_base::unlock((a2 + 72));
  _Unwind_Resume(a1);
}

uint64_t sub_271502C1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 40);
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (byte_28087C438 == 1)
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_8:
        v7 = *v4;
        v6 = *(v4 + 8);
        v4 += 16;
        v7(v6, "p_", 2, "", 0);
      }

      while (v4 != v5);
      if (byte_28087C430)
      {
        goto LABEL_10;
      }

LABEL_11:
      abort();
    }
  }

LABEL_10:
  qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
  return *(*(a1 + 8) + 40);
}

void sub_271502D84(uint64_t a1)
{
  sub_271503F04(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271502DBC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v5 = a2;
    v6 = a3;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/NamedContext.cpp", 742, "p_", 2uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_9:
        qword_28087C420(*algn_28087C428, "p_", 2, "", 0);
        v3 = *(a1 + 8);
        a3 = v6;
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "p_", 2, "", 0);
    }

    while (v7 != v8);
    if (byte_28087C430)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v11 = *(v3 + 40);

  return sub_2714FF1E0(v11, a2, a3);
}

void *sub_271502F0C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((*(v1 + 23) & 0x80000000) == 0)
    {
LABEL_6:
      MEMORY[0x2743BF050](v1, 0x1012C4045E9F9B4);
      return v2;
    }

    operator delete(*v1);
    goto LABEL_6;
  }

  return result;
}

void *sub_271502F8C(void *result, void *a2)
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

const void **sub_271503118(const void **result, void *a2)
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

void sub_2715032B0(uint64_t a1)
{
  sub_2714D9770(*(a1 + 88));
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v2;
    operator delete(v4);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v6 = *(a1 + 16);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715033A4(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
LABEL_1:
  v35 = a1;
  v36 = a4;
  v34 = *(a1 + 48);
  v5 = v34[6];
  v4 = v34[7];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3);
  v7 = a2[12];
  v31 = v7;
  v32 = a3;
  if (v7 >= v6)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3);
  }

  v30 = v7;
  v8 = v7 - a3;
  v9 = v6 - a3;
  if (v6 < a3)
  {
    v9 = 0;
  }

  if (v6 < v9)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3);
  }

  v10 = (v5 + 24 * (v6 - v9));
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v10) >> 3);
  if (v11 >= v8)
  {
    v11 = v8;
  }

  v12 = &v10[3 * v11];
  v33 = a2;
  sub_271503668(v37, a2, a3, v8);
  v13 = v38;
  v14 = v39;
  v15 = v40;
  v16 = v41;
  v17 = v42;
  v18 = v43;
  v19 = v44;
  v20 = v45;
LABEL_10:
  while (1)
  {
    if (v10 == v12)
    {
      v21 = v20 == v18 && v15 == v13;
      if (v21 || v14 == v19)
      {
        break;
      }
    }

    v22 = *(v10 + 23);
    if (v22 < 0)
    {
      v23 = *v10;
      if (v16 != v10[1])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v23 = v10;
      if (v16 != v22)
      {
        goto LABEL_27;
      }
    }

    if (memcmp(v14, v23, v16))
    {
LABEL_27:
      a4 = v36;
      if (*v36 != v35)
      {
        return 0;
      }

      v25 = v34[9];
      if (!v25)
      {
        return 1;
      }

      *v36 = v25;
      a1 = v34[9];
      a3 = v32;
      a2 = v33;
LABEL_31:

      goto LABEL_1;
    }

    v10 += 3;
    v15 = &v14[v16];
    v14 = v15;
    v16 = 0;
    if (v15 != v13)
    {
      v16 = 0;
      v14 = v15 + 1;
      if (v15 + 1 != v13)
      {
        v16 = 0;
        while (v14[v16] != v17)
        {
          if (v13 - v14 == ++v16)
          {
            v16 = v13 - v14;
            goto LABEL_10;
          }
        }
      }
    }
  }

  if (v31 > v6)
  {
    *v36 = v35;
    v26 = v34[10];
    if (v26 != v34 + 11)
    {
      do
      {
        if (0xAAAAAAAAAAAAAAABLL * ((*(*(v26[4] + 48) + 56) - *(*(v26[4] + 48) + 48)) >> 3) <= v33[12] && (sub_2715033A4() & 1) != 0)
        {
          break;
        }

        v27 = v26[1];
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = v26[2];
            v21 = *v28 == v26;
            v26 = v28;
          }

          while (!v21);
        }

        v26 = v28;
      }

      while (v28 != v34 + 11);
    }

    return 1;
  }

  a4 = v36;
  if (v6 > v31)
  {
    v29 = v34[9];
    if (v29)
    {
      *v36 = v29;
      a1 = v34[9];
      a2 = v33;
      a3 = v30;
      goto LABEL_31;
    }

    return 1;
  }

  *v36 = v35;
  result = 1;
  *(v36 + 8) = 1;
  return result;
}

uint64_t sub_271503668(uint64_t result, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = a2[1];
  v6 = a2[2];
  v8 = a2[3];
  v7 = a2[4];
  v9 = *(a2 + 40);
  v11 = a2[7];
  v10 = a2[8];
  v12 = a2[9];
  v13 = v12 == v11;
  if (v8 == v5 && v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    if (v6 != v10)
    {
      v4 = 0;
      v15 = a2[2];
      v16 = a2[4];
      do
      {
        v15 += v16;
        if (v15 == v5)
        {
          v16 = 0;
          ++v4;
          if (v12 == v11)
          {
            break;
          }
        }

        else if (++v15 == v5)
        {
          v16 = 0;
          ++v4;
        }

        else
        {
          v17 = 0;
          v16 = v5 - v15;
          while (*(v15 + v17) != v9)
          {
            if (v16 == ++v17)
            {
              ++v4;
              goto LABEL_14;
            }
          }

          v16 = v17;
          ++v4;
        }

LABEL_14:
        ;
      }

      while (v15 != v10);
      v14 = 0;
      v18 = a2[4];
      v19 = a2[2];
      do
      {
        v19 += v18;
        if (v19 == v5)
        {
          v18 = 0;
          ++v14;
          if (v12 == v11)
          {
            break;
          }
        }

        else if (++v19 == v5)
        {
          v18 = 0;
          ++v14;
        }

        else
        {
          v20 = 0;
          v18 = v5 - v19;
          while (*(v19 + v20) != v9)
          {
            if (v18 == ++v20)
            {
              ++v14;
              goto LABEL_26;
            }
          }

          v18 = v20;
          ++v14;
        }

LABEL_26:
        ;
      }

      while (v19 != v10);
    }
  }

  v21 = v4 >= a3;
  v22 = v4 - a3;
  if (!v21)
  {
    v22 = 0;
  }

  if (v14 < v22)
  {
    v22 = v14;
  }

  v23 = v14 - v22;
  if (v23 >= 1)
  {
    do
    {
      v8 = v6 + v7;
      if (v6 + v7 == v5)
      {
        v7 = 0;
        v6 = v8;
      }

      else
      {
        v6 = v8 + 1;
        if (v8 + 1 == v5)
        {
          v7 = 0;
        }

        else
        {
          v7 = 0;
          while (*(v6 + v7) != v9)
          {
            if (v5 - v6 == ++v7)
            {
              v7 = v5 - v6;
              break;
            }
          }
        }
      }

      v34 = v23-- > 1;
    }

    while (v34);
  }

  v24 = 0;
  v25 = v12 == v11 && v8 == v5;
  if (!v25 && v6 != v10)
  {
    v24 = 0;
    v26 = v7;
    v27 = v6;
    do
    {
      v27 += v26;
      if (v27 == v5)
      {
        v26 = 0;
        ++v24;
        if (v13)
        {
          break;
        }
      }

      else if (++v27 == v5)
      {
        v26 = 0;
        ++v24;
      }

      else
      {
        v28 = 0;
        v26 = v5 - v27;
        while (*(v27 + v28) != v9)
        {
          if (v26 == ++v28)
          {
            ++v24;
            goto LABEL_50;
          }
        }

        v26 = v28;
        ++v24;
      }

LABEL_50:
      ;
    }

    while (v27 != v10);
  }

  if (v24 >= a4)
  {
    v29 = a4;
  }

  else
  {
    v29 = v24;
  }

  v30 = *a2;
  v31 = v6;
  v32 = v8;
  v33 = v7;
  if (v29 >= 1)
  {
    v31 = v6;
    v33 = v7;
    do
    {
      v32 = v31 + v33;
      if (v31 + v33 == v5)
      {
        v33 = 0;
        v31 = v32;
      }

      else
      {
        v31 = v32 + 1;
        if (v32 + 1 == v5)
        {
          v33 = 0;
        }

        else
        {
          v33 = 0;
          while (*(v31 + v33) != v9)
          {
            if (v5 - v31 == ++v33)
            {
              v33 = v5 - v31;
              break;
            }
          }
        }
      }

      v34 = v29-- > 1;
    }

    while (v34);
  }

  v35 = 0;
  v36 = v8 == v5;
  *result = v30;
  *(result + 8) = v5;
  *(result + 16) = v6;
  *(result + 24) = v8;
  *(result + 32) = v7;
  *(result + 40) = v9;
  v37 = *(a2 + 41);
  *(result + 41) = v37;
  v38 = *(a2 + 11);
  *(result + 44) = v38;
  *(result + 48) = v30;
  *(result + 56) = v5;
  *(result + 64) = v31;
  *(result + 72) = v32;
  *(result + 80) = v33;
  *(result + 88) = v9;
  *(result + 92) = v38;
  v39 = v32 == v5 && v36;
  *(result + 89) = v37;
  if (!v39 && v6 != v31)
  {
    v35 = 0;
    do
    {
      v6 += v7;
      if (v6 == v5)
      {
        v7 = 0;
        ++v35;
        if (v32 == v5)
        {
          break;
        }
      }

      else if (++v6 == v5)
      {
        v7 = 0;
        ++v35;
      }

      else
      {
        v40 = 0;
        v7 = v5 - v6;
        while (*(v6 + v40) != v9)
        {
          if (v7 == ++v40)
          {
            ++v35;
            goto LABEL_92;
          }
        }

        v7 = v40;
        ++v35;
      }

LABEL_92:
      ;
    }

    while (v6 != v31);
  }

  *(result + 96) = v35;
  return result;
}

void sub_271503A70(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    sub_2715032B0(v2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    MEMORY[0x2743BF050](v3, 0x80C40B8603338);
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {
    MEMORY[0x2743BF050](v4, 0x1000C4077774924);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271503B14(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    v3 = *(v2 + 48);
    *(v2 + 48) = 0;
    if (v3)
    {
      sub_2715032B0(v3);
    }

    v4 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v4)
    {
      MEMORY[0x2743BF050](v4, 0x80C40B8603338);
    }

    v5 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v5)
    {
      MEMORY[0x2743BF050](v5, 0x1000C4077774924);
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    MEMORY[0x2743BF050](v2, 0x10B3C406DCED8F8);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_271503BDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  v4 = *(v3 + 80);
  v30 = (v3 + 88);
  if (v4 != (v3 + 88))
  {
    v5 = result;
    v29 = result;
    do
    {
      v6 = v4[4];
      v7 = **v5;
      v8 = v6[4];
      if (**v5)
      {
        if (!*v8)
        {
          operator new();
        }

        if (*v8 != v7)
        {
          *v8 = v7;
        }
      }

      else if (*v8)
      {
        v9 = v6[5];
        v10 = atomic_load(*(*(v6[6] + 72) + 40));
        atomic_exchange(v9, v10);
        sub_2714FDDEC(v6);
        operator new();
      }

      v11 = v4[4];
      v12 = *(v5[1] + 1);
      v32 = *v5;
      if (!v12)
      {
LABEL_37:
        operator new();
      }

      v13 = *(v11 + 31);
      if (v13 >= 0)
      {
        v14 = (v11 + 8);
      }

      else
      {
        v14 = *(v11 + 8);
      }

      if (v13 >= 0)
      {
        v15 = *(v11 + 31);
      }

      else
      {
        v15 = *(v11 + 16);
      }

      while (1)
      {
        while (1)
        {
          v16 = v12;
          v19 = v12[4];
          v17 = v12 + 4;
          v18 = v19;
          v20 = *(v17 + 23);
          v21 = v20 >= 0 ? v17 : v18;
          v22 = v20 >= 0 ? *(v17 + 23) : v17[1];
          v23 = v22 >= v15 ? v15 : v22;
          v24 = memcmp(v14, v21, v23);
          if (v24)
          {
            break;
          }

          if (v15 >= v22)
          {
            goto LABEL_32;
          }

LABEL_18:
          v12 = *v16;
          if (!*v16)
          {
            goto LABEL_37;
          }
        }

        if (v24 < 0)
        {
          goto LABEL_18;
        }

LABEL_32:
        v25 = memcmp(v21, v14, v23);
        if (v25)
        {
          if ((v25 & 0x80000000) == 0)
          {
            break;
          }

          goto LABEL_36;
        }

        if (v22 >= v15)
        {
          break;
        }

LABEL_36:
        v12 = v16[1];
        if (!v12)
        {
          goto LABEL_37;
        }
      }

      v5 = v29;
      result = sub_271503BDC(a3, v11, a3);
      v26 = v4[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v4[2];
          v28 = *v27 == v4;
          v4 = v27;
        }

        while (!v28);
      }

      v4 = v27;
    }

    while (v27 != v30);
  }

  return result;
}

void sub_271503EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2711B17FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271503F04(uint64_t a1)
{
  *a1 = &unk_28810B190;
  if (*(a1 + 264) == 1 && *(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  std::condition_variable::~condition_variable((a1 + 184));
  std::condition_variable::~condition_variable((a1 + 136));
  std::mutex::~mutex((a1 + 72));
  sub_2715042C0(*(a1 + 56));
  sub_2714D9770(*(a1 + 24));
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    std::mutex::~mutex(v2);
    MEMORY[0x2743BF050]();
  }

  return a1;
}

void sub_271503FB0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271503FE8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
LABEL_6:

        JUMPOUT(0x2743BF050);
      }
    }

    else if ((*(v1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*v1);
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_271504074(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d3kit3viz9ContextIDEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d3kit3viz9ContextIDEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d3kit3viz9ContextIDEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d3kit3viz9ContextIDEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2715040D4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2715041A0(uint64_t result)
{
  if (*(result + 8) == 1)
  {
    v1 = result;
    std::__shared_mutex_base::unlock_shared(*result);
    return v1;
  }

  return result;
}

uint64_t *sub_2715041E0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 56);
      *(v2 + 56) = 0;
      if (v3)
      {
        v4 = *(v3 + 48);
        *(v3 + 48) = 0;
        if (v4)
        {
          sub_2715032B0(v4);
        }

        v5 = *(v3 + 40);
        *(v3 + 40) = 0;
        if (v5)
        {
          MEMORY[0x2743BF050](v5, 0x80C40B8603338);
        }

        v6 = *(v3 + 32);
        *(v3 + 32) = 0;
        if (v6)
        {
          MEMORY[0x2743BF050](v6, 0x1000C4077774924);
        }

        if (*(v3 + 31) < 0)
        {
          operator delete(*(v3 + 8));
        }

        MEMORY[0x2743BF050](v3, 0x10B3C406DCED8F8);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2715042C0(char *a1)
{
  if (a1)
  {
    sub_2715042C0(*a1);
    sub_2715042C0(*(a1 + 1));
    v2 = *(a1 + 7);
    *(a1 + 7) = 0;
    if (v2)
    {
      v3 = *(v2 + 48);
      *(v2 + 48) = 0;
      if (v3)
      {
        sub_2715032B0(v3);
      }

      v4 = *(v2 + 40);
      *(v2 + 40) = 0;
      if (v4)
      {
        MEMORY[0x2743BF050](v4, 0x80C40B8603338);
      }

      v5 = *(v2 + 32);
      *(v2 + 32) = 0;
      if (v5)
      {
        MEMORY[0x2743BF050](v5, 0x1000C4077774924);
      }

      if (*(v2 + 31) < 0)
      {
        operator delete(*(v2 + 8));
      }

      MEMORY[0x2743BF050](v2, 0x10B3C406DCED8F8);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v6 = a1;
    }

    else
    {
      v6 = a1;
    }

    operator delete(v6);
  }
}

void sub_2715043C0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) == 1)
  {
    __lk.__m_ = (a1 + 184);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 184));
    if (*(a1 + 96) == 1)
    {
      v4 = atomic_load((a1 + 128));
      if ((*(a1 + 96) & 1) == 0)
      {
        sub_2711B0B74();
      }

      if (*(a1 + 88) <= v4)
      {
        v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        v6 = atomic_load((a1 + 128));
        if (*(a1 + 96) != 1)
        {
          goto LABEL_47;
        }

        if (*(a1 + 88) > v6)
        {
          goto LABEL_7;
        }

        rep = v5.__d_.__rep_;
        v12.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        std::chrono::steady_clock::now();
        v13.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        v14.__d_.__rep_ = 1000000000;
        if (v13.__d_.__rep_)
        {
          if (v13.__d_.__rep_ <= 0)
          {
            if (v13.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              v14.__d_.__rep_ = 1000 * v13.__d_.__rep_ + 1000000000;
            }

            else
            {
              v14.__d_.__rep_ = 0x800000003B9ACA00;
            }
          }

          else if (v13.__d_.__rep_ < 0x20C49BA5D411B8)
          {
            v14.__d_.__rep_ = 1000 * v13.__d_.__rep_ + 1000000000;
          }

          else
          {
            v14.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        std::condition_variable::__do_timed_wait((a1 + 136), &__lk, v14);
        std::chrono::steady_clock::now();
        v15 = atomic_load((a1 + 128));
        if (*(a1 + 96) != 1)
        {
LABEL_47:
          sub_2711B0B74();
        }

        v16 = v12.__d_.__rep_ - rep;
        while (*(a1 + 88) <= v15)
        {
          if (std::chrono::steady_clock::now().__d_.__rep_ - (v16 + rep) >= 500000000)
          {
            v16 = std::chrono::steady_clock::now().__d_.__rep_ - rep;
          }

          std::chrono::steady_clock::now();
          v18.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          v17.__d_.__rep_ = 1000000000;
          if (v18.__d_.__rep_)
          {
            if (v18.__d_.__rep_ < 1)
            {
              if (v18.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
              {
                v17.__d_.__rep_ = 1000 * v18.__d_.__rep_ + 1000000000;
              }

              else
              {
                v17.__d_.__rep_ = 0x800000003B9ACA00;
              }
            }

            else if (v18.__d_.__rep_ >= 0x20C49BA5D411B8)
            {
              v17.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17.__d_.__rep_ = 1000 * v18.__d_.__rep_ + 1000000000;
            }
          }

          std::condition_variable::__do_timed_wait((a1 + 136), &__lk, v17);
          std::chrono::steady_clock::now();
          v15 = atomic_load((a1 + 128));
          if ((*(a1 + 96) & 1) == 0)
          {
            goto LABEL_47;
          }
        }
      }
    }

LABEL_7:
    atomic_fetch_add((a1 + 128), 1u);
    (*(*(*(*(a1 + 120) + 72) + 88) + 16))();
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (*(a1 + 104) != 1)
    {
      goto LABEL_21;
    }

LABEL_12:
    sub_2714FCC00(a2 + 16);
    __lk.__m_ = 0x74656E2E64337663;
    v7 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v7 = __p[1];
    }

    if (v7 != 8)
    {
      goto LABEL_18;
    }

    v8 = __p[0];
    if ((v21 & 0x80u) == 0)
    {
      v8 = __p;
    }

    if (*v8 == __lk.__m_)
    {
      v9 = v22 == 2;
      if ((v21 & 0x80000000) == 0)
      {
LABEL_20:
        if (!v9)
        {
          return;
        }

        goto LABEL_21;
      }
    }

    else
    {
LABEL_18:
      v9 = 0;
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    operator delete(__p[0]);
    goto LABEL_20;
  }

  (*(*(*(*(a1 + 120) + 72) + 88) + 16))();
  if (*(a1 + 104) == 1)
  {
    goto LABEL_12;
  }

LABEL_21:
  v10 = *(*(*(a1 + 120) + 72) + 72);
  (*(*v10 + 64))(v10);
}