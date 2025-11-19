void sub_271484AC8(__int128 *a1, const char *a2, const char *a3)
{
  v7 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v5, *a1, *(a1 + 1));
  }

  else
  {
    v5 = *a1;
    v6 = *(a1 + 2);
  }

  v7 = 1;
  v8 = &v5;
  v9 = a2;
  v10 = &v5;
  v11 = a2;
  v12 = a2;
  sub_271136F58(&v10, &v5);
  v8 = a3;
  v9 = a3 + 24;
  v10 = (a3 + 32);
  v11 = a3 + 56;
  v12 = a3 + 64;
  v13 = a3 + 88;
  v15 = &v5;
  v16 = "{";
  v17 = &v5;
  v18 = "{";
  v19 = "{";
  if (v7 != -1)
  {
    v20 = &v15;
    (*(&off_2881319B8 + v7))(&v20, &v5);
    LOBYTE(v15) = 1;
    v16 = &v5;
    v17 = &v14;
    sub_271484D28(&v8, &v15);
  }

  sub_2711308D4();
}

void sub_271484D28(const char **a1, uint64_t a2)
{
  v4 = *a1;
  if ((*a2 & 1) == 0)
  {
    v11 = *(a2 + 8);
    v12 = ",";
    v13 = v11;
    v14 = ",";
    v15 = ",";
    v5 = *(v11 + 24);
    if (v5 == -1)
    {
      goto LABEL_9;
    }

    v10.__r_.__value_.__r.__words[0] = &v11;
    (*(&off_2881319B8 + v5))(&v10);
  }

  *a2 = 0;
  v11 = *(a2 + 8);
  v12 = v4;
  v13 = v11;
  v14 = v4;
  v15 = v4;
  v6 = *(v11 + 24);
  if (v6 != -1)
  {
    v10.__r_.__value_.__r.__words[0] = &v11;
    (off_2881319A0[v6])(&v10);
    v7 = a1[1];
    if (*a2)
    {
      goto LABEL_8;
    }

    v11 = *(a2 + 8);
    v12 = ",";
    v13 = v11;
    v14 = ",";
    v15 = ",";
    v8 = *(v11 + 24);
    if (v8 != -1)
    {
      v10.__r_.__value_.__r.__words[0] = &v11;
      (*(&off_2881319B8 + v8))(&v10);
LABEL_8:
      *a2 = 0;
      v9 = *(a2 + 8);
      sub_2714850B0();
    }
  }

LABEL_9:
  sub_2711308D4();
}

void sub_271485094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2714852B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2714852FC(uint64_t a1)
{
  *a1 = &unk_288131F40;
  sub_271134CBC(a1 + 144);
  *(a1 + 8) = &unk_288131F88;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
    if ((*(a1 + 103) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 71) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 48));
      if ((*(a1 + 39) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 103) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 80));
  if (*(a1 + 71) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((*(a1 + 39) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_9:
  operator delete(*(a1 + 16));
  return a1;
}

void sub_2714853C8(__int128 *a1, uint64_t a2)
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
  sub_2714855F8();
}

void sub_271485568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271485580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271485594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714855A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714855BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714855D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2714855E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27148588C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_280878CD0);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_2714859E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271485B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271485BA8()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_271485DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
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

__n128 sub_271485E94(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288131F40;
  *(a1 + 8) = &unk_288131F88;
  v2 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v3;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v4;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  v5 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v5;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0;
  v6 = *(a2 + 128);
  *(a1 + 144) = 0;
  *(a1 + 128) = v6;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    v7 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v7;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 144) = 0;
    *(a1 + 168) = 1;
  }

  result = *(a2 + 176);
  v9 = *(a2 + 192);
  *(a1 + 200) = 0;
  *(a1 + 192) = v9;
  *(a1 + 176) = result;
  *(a1 + 224) = 0;
  if (*(a2 + 224) == 1)
  {
    result = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = result;
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    *(a2 + 200) = 0;
    *(a1 + 224) = 1;
    *(a1 + 240) = 0;
    v10 = (a1 + 240);
    *(a1 + 288) = 0;
    if (*(a2 + 288) != 1)
    {
LABEL_5:
      *(a1 + 304) = 0;
      *(a1 + 328) = 0;
      if (*(a2 + 328) != 1)
      {
        return result;
      }

LABEL_9:
      *(a1 + 304) = 0;
      *(a1 + 312) = 0;
      *(a1 + 320) = 0;
      result = *(a2 + 304);
      *(a1 + 304) = result;
      *(a1 + 320) = *(a2 + 320);
      *(a2 + 304) = 0;
      *(a2 + 312) = 0;
      *(a2 + 320) = 0;
      *(a1 + 328) = 1;
      return result;
    }
  }

  else
  {
    *(a1 + 240) = 0;
    v10 = (a1 + 240);
    *(a1 + 288) = 0;
    if (*(a2 + 288) != 1)
    {
      goto LABEL_5;
    }
  }

  _X2 = 0;
  _X3 = 0;
  result = *(a2 + 240);
  v10[1].n128_u64[0] = *(a2 + 256);
  *v10 = result;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 240) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *(a1 + 272) = _X2;
  *(a1 + 280) = 0;
  *(a1 + 288) = 1;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  if (*(a2 + 328) == 1)
  {
    goto LABEL_9;
  }

  return result;
}

BOOL sub_271486088(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0(a1 + 16, &v34);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v34);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v34);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_271399EB0(a2 + 16, &v19);
  }

  else if (v5 == 1)
  {
    sub_2713DA430(a2 + 16, &v19);
  }

  else
  {
    if (v5)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a2 + 16, &v19);
  }

  if (v34 != v19)
  {
    goto LABEL_18;
  }

  if (v35 != v20)
  {
    goto LABEL_18;
  }

  v18[0] = &v36;
  v18[1] = &v39;
  v18[2] = &v40;
  v18[3] = &v43;
  v18[4] = &v46;
  v17[0] = &v21;
  v17[1] = &v24;
  v17[2] = &v25;
  v17[3] = &v28;
  v17[4] = &__p;
  if (sub_2714FBB90(v18, v17))
  {
    v6 = sub_271486438((a1 + 200), (a2 + 200));
    if (v33 != 1)
    {
      goto LABEL_32;
    }
  }

  else
  {
LABEL_18:
    v6 = 0;
    if (v33 != 1)
    {
      goto LABEL_32;
    }
  }

  v7 = __p;
  if (__p)
  {
    v8 = v32;
    v9 = __p;
    if (v32 == __p)
    {
LABEL_31:
      v32 = v7;
      operator delete(v9);
      goto LABEL_32;
    }

    while (1)
    {
      v10 = v8;
      if (*(v8 - 16) == 1 && *(v8 - 41) < 0)
      {
        operator delete(*(v8 - 8));
        v8 -= 12;
        if (*(v10 - 72) == 1)
        {
LABEL_26:
          if (*(v10 - 73) < 0)
          {
            operator delete(*v8);
          }
        }
      }

      else
      {
        v8 -= 12;
        if (*(v10 - 72) == 1)
        {
          goto LABEL_26;
        }
      }

      if (v8 == v7)
      {
        v9 = __p;
        goto LABEL_31;
      }
    }
  }

LABEL_32:
  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (v48 == 1)
  {
    v11 = v46;
    if (v46)
    {
      v12 = v47;
      v13 = v46;
      if (v47 == v46)
      {
LABEL_54:
        v47 = v11;
        operator delete(v13);
        goto LABEL_55;
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
LABEL_49:
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
            goto LABEL_49;
          }
        }

        if (v12 == v11)
        {
          v13 = v46;
          goto LABEL_54;
        }
      }
    }
  }

LABEL_55:
  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_2714863FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

BOOL sub_271486438(void *a1, void *a2)
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

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3) || *(v7 + 24) != *(v6 + 24))
  {
    return 0;
  }

  v9 = *(v7 + 55);
  if (v9 >= 0)
  {
    v10 = *(v7 + 55);
  }

  else
  {
    v10 = v7[5];
  }

  v11 = *(v6 + 55);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = v6[5];
  }

  if (v10 != v11)
  {
    return 0;
  }

  v13 = v6 + 4;
  v14 = v9 >= 0 ? v7 + 4 : v7[4];
  v15 = *v13;
  v16 = v12 >= 0 ? v6 + 4 : *v13;
  if (memcmp(v14, v16, v10) || *(v7 + 14) != *(v6 + 14))
  {
    return 0;
  }

  v17 = *(v7 + 87);
  if (v17 >= 0)
  {
    v18 = *(v7 + 87);
  }

  else
  {
    v18 = v7[9];
  }

  v19 = *(v6 + 87);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = v6[9];
  }

  if (v18 != v19)
  {
    return 0;
  }

  v21 = v6 + 8;
  v22 = v17 >= 0 ? v7 + 8 : v7[8];
  v23 = *v21;
  v24 = v20 >= 0 ? v6 + 8 : *v21;
  if (memcmp(v22, v24, v18))
  {
    return 0;
  }

  v25 = *(v7 + 111);
  if (v25 >= 0)
  {
    v26 = *(v7 + 111);
  }

  else
  {
    v26 = v7[12];
  }

  v27 = *(v6 + 111);
  v28 = v27;
  if ((v27 & 0x80u) != 0)
  {
    v27 = v6[12];
  }

  if (v26 != v27)
  {
    return 0;
  }

  v29 = (v6 + 11);
  if (v25 >= 0)
  {
    v30 = v7 + 11;
  }

  else
  {
    v30 = v7[11];
  }

  v31 = *v29;
  if (v28 >= 0)
  {
    v32 = v6 + 11;
  }

  else
  {
    v32 = *v29;
  }

  return memcmp(v30, v32, v26) == 0;
}

void sub_2714865F8(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v6)
  {
    sub_271486B04(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v8)
  {
    sub_2714873C8(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v10)
    {
      sub_271487804(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v12)
    {
      sub_271487F64(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v14)
      {
        sub_271488270(&v16, v14);
      }

      else
      {
        sub_2714867C4(&v15, a1);
      }
    }
  }
}

void sub_2714867C4(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v11 = 4;
    (*(*a2 + 104))(a2, &v11);
    v10 = v11;
    if (v9 < 1)
    {
      sub_2713DFA84(a2, v3 + 16, v11);
      goto LABEL_17;
    }

    if (v9 == 2)
    {
      v11 = 3;
      (*(*a2 + 104))(a2, &v11);
    }

    (*(*a2 + 16))(a2);
    sub_2713DFA84(a2, v3 + 16, v10);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v11 = 5;
    (*(*a2 + 104))(a2, &v11);
    v8 = v11;
    if (v7 < 1)
    {
      sub_2713DF128(a2, v3 + 16, v11);
      goto LABEL_17;
    }

    if (v7 == 2)
    {
      v11 = 3;
      (*(*a2 + 104))(a2, &v11);
    }

    (*(*a2 + 16))(a2);
    sub_2713DF128(a2, v3 + 16, v8);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = a2[2];
    v11 = 6;
    (*(*a2 + 104))(a2, &v11);
    v6 = v11;
    if (v5 < 1)
    {
      sub_2713B9F84(a2, v3 + 16, v11);
      goto LABEL_17;
    }

    if (v5 == 2)
    {
      v11 = 3;
      (*(*a2 + 104))(a2, &v11);
    }

    (*(*a2 + 16))(a2);
    sub_2713B9F84(a2, v3 + 16, v6);
  }

  (*(*a2 + 24))(a2);
LABEL_17:
  v11 = 1;
  (*(*a2 + 104))(a2, &v11);
  sub_271488660(a2, (v3 + 200));
}

void sub_271486B04(uint64_t *a1, uint64_t a2)
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

void sub_271487038(uint64_t a1)
{
  v1 = *a1;
  sub_271487264(&v16, *(a1 + 8));
  sub_27182B1E4(v1);
  if (*(v1 + 88) != 1 || *(v1 + 80) != 7 || ((v2 = *(v1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v26 = 6;
    v27 = v18;
    v6 = sub_2718289B0(v1);
    v7 = *v6;
    *v6 = 6;
    v26 = v7;
    v8 = v6[1];
    v6[1] = v27;
    v27 = v8;
    sub_2715CC40C(&v27, v7);
  }

  sub_27182B1E4(v1);
  if (*(v1 + 88) == 1 && *(v1 + 80) == 7 && ((v9 = *(v1 + 72), v10 = *v9, v11 = *(v9 + 3), v10 == *"version") ? (v12 = v11 == *"sion") : (v12 = 0), v12))
  {
    *(v1 + 96) = v21;
    *(v1 + 100) = 1;
    *(v1 + 88) = 0;
  }

  else
  {
    v26 = 6;
    v27 = v21;
    v13 = sub_2718289B0(v1);
    v14 = *v13;
    *v13 = 6;
    v26 = v14;
    v15 = v13[1];
    v13[1] = v27;
    v27 = v15;
    sub_2715CC40C(&v27, v14);
  }

  sub_27182B1E4(v1);
  sub_27182B1E4(v1);
  if (v25 < 0)
  {
    operator delete(__p);
    if ((v23 & 0x80000000) == 0)
    {
LABEL_17:
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v22);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v17 & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(v16);
    return;
  }

LABEL_22:
  operator delete(v19);
  if (v17 < 0)
  {
    goto LABEL_23;
  }
}

void sub_27148722C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CC40C((v9 + 8), 6);
  sub_2713B1398(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271487264(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_271127178(a1, *a2, *(a2 + 1));
    *(a1 + 24) = *(a2 + 24);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a1 + 24) = *(a2 + 24);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  sub_271127178((a1 + 32), *(a2 + 4), *(a2 + 5));
LABEL_6:
  *(a1 + 56) = *(a2 + 14);
  if (*(a2 + 87) < 0)
  {
    sub_271127178((a1 + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v6 = a2[4];
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    sub_271127178((a1 + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 13);
    *(a1 + 88) = v7;
  }

  return a1;
}

void sub_271487354(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
    if ((*(v1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 32));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_2714873C8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = a2[3];
    if (*(v7 + 40) == 1)
    {
      v17[0] = (v7 + 16);
      sub_2718460EC(v17, 4u);
    }

    else
    {
      sub_27184636C(v17, (v7 + 8));
    }

    sub_271840ADC(a2[3]);
    sub_2713DC010(a2, v3 + 16, 4u);
  }

  else if (v4 == 1)
  {
    v6 = a2[3];
    if (*(v6 + 40) == 1)
    {
      v17[0] = (v6 + 16);
      sub_2718460EC(v17, 5u);
    }

    else
    {
      sub_27184636C(v17, (v6 + 8));
    }

    sub_271840ADC(a2[3]);
    sub_2713DBEE0(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = a2[3];
    if (*(v5 + 40) == 1)
    {
      v17[0] = (v5 + 16);
      sub_2718460EC(v17, 6u);
    }

    else
    {
      sub_27184636C(v17, (v5 + 8));
    }

    sub_271840ADC(a2[3]);
    sub_2713B5730(a2, v3 + 16, 6u);
  }

  v8 = a2[3];
  v9 = *(*(v8 + 88) - 8);
  sub_2718404E0((v8 + 48), *(v8 + 16) - v9 - 9);
  v10 = *(v8 + 48);
  if (v10)
  {
    memmove((*(v8 + 24) + v9), *(v8 + 56), v10);
  }

  *(v8 + 48) = 0;
  v11 = *(v8 + 80);
  v12 = *(v8 + 88) - 8;
  *(v8 + 88) = v12;
  if (v11 == v12)
  {
    v13 = *v8;
    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    std::ostream::write();
    if (*(v8 + 40) == 1)
    {
      free(*(v8 + 24));
      *(v8 + 40) = 0;
    }
  }

  v16 = a2[3];
  if (*(v16 + 40) == 1)
  {
    v17[0] = (v16 + 16);
    sub_2718460EC(v17, 1u);
  }

  else
  {
    sub_27184636C(v17, (v16 + 8));
  }

  v18 = 1;
  v17[0] = a2;
  v17[1] = (v3 + 200);
  v17[2] = &v18;
  sub_2714875DC(v17);
}

void sub_2714875DC(uint64_t *a1)
{
  v1 = *a1;
  sub_271487264(v9, a1[1]);
  v2 = *(v1 + 24);
  if (*(v2 + 40) == 1)
  {
    v19 = (v2 + 16);
    sub_271847238(&v19, v9);
  }

  else
  {
    sub_271847654((v2 + 8), v9);
  }

  v3 = *(v1 + 24);
  if (*(v3 + 40) == 1)
  {
    v19 = (v3 + 16);
    sub_2718454CC(&v19, v11);
  }

  else
  {
    if (v11[0] < 0)
    {
      LOBYTE(v19) = -52;
      BYTE1(v19) = v11[0];
    }

    else
    {
      LOBYTE(v19) = v11[0];
    }

    v4 = *(v3 + 8);
    std::ostream::write();
  }

  v5 = *(v1 + 24);
  if (*(v5 + 40) == 1)
  {
    v19 = (v5 + 16);
    sub_271847238(&v19, v12);
  }

  else
  {
    sub_271847654((v5 + 8), v12);
  }

  v6 = *(v1 + 24);
  if (*(v6 + 40) == 1)
  {
    v19 = (v6 + 16);
    sub_2718460EC(&v19, v14);
  }

  else
  {
    sub_27184636C(&v19, (v6 + 8));
  }

  v7 = *(v1 + 24);
  if (*(v7 + 40) == 1)
  {
    v19 = (v7 + 16);
    sub_271847238(&v19, v15);
  }

  else
  {
    sub_271847654((v7 + 8), v15);
  }

  v8 = *(v1 + 24);
  if (*(v8 + 40) == 1)
  {
    v19 = (v8 + 16);
    sub_271847238(&v19, __p);
  }

  else
  {
    sub_271847654((v8 + 8), __p);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_24:
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_29;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v15[0]);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_25:
    if ((v10 & 0x80000000) == 0)
    {
      return;
    }

LABEL_30:
    operator delete(v9[0]);
    return;
  }

LABEL_29:
  operator delete(v12[0]);
  if (v10 < 0)
  {
    goto LABEL_30;
  }
}

void sub_2714877F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713B1398(va);
  _Unwind_Resume(a1);
}

void sub_271487804(uint64_t *a1, uint64_t a2)
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

void sub_271487D38(uint64_t a1)
{
  v1 = *a1;
  sub_271487264(&v16, *(a1 + 8));
  sub_271829354(v1);
  if (*(v1 + 88) != 1 || *(v1 + 80) != 7 || ((v2 = *(v1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v26 = 6;
    v27 = v18;
    v6 = sub_27182815C(v1);
    v7 = *v6;
    *v6 = 6;
    v26 = v7;
    v8 = v6[1];
    v6[1] = v27;
    v27 = v8;
    sub_2715CA870(&v27, v7);
  }

  sub_271829354(v1);
  if (*(v1 + 88) == 1 && *(v1 + 80) == 7 && ((v9 = *(v1 + 72), v10 = *v9, v11 = *(v9 + 3), v10 == *"version") ? (v12 = v11 == *"sion") : (v12 = 0), v12))
  {
    *(v1 + 96) = v21;
    *(v1 + 100) = 1;
    *(v1 + 88) = 0;
  }

  else
  {
    v26 = 6;
    v27 = v21;
    v13 = sub_27182815C(v1);
    v14 = *v13;
    *v13 = 6;
    v26 = v14;
    v15 = v13[1];
    v13[1] = v27;
    v27 = v15;
    sub_2715CA870(&v27, v14);
  }

  sub_271829354(v1);
  sub_271829354(v1);
  if (v25 < 0)
  {
    operator delete(__p);
    if ((v23 & 0x80000000) == 0)
    {
LABEL_17:
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v22);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v17 & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(v16);
    return;
  }

LABEL_22:
  operator delete(v19);
  if (v17 < 0)
  {
    goto LABEL_23;
  }
}

void sub_271487F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CA870((v9 + 8), 6);
  sub_2713B1398(&a9);
  _Unwind_Resume(a1);
}

void sub_271487F64(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v12 = *(a2 + 24);
      LOBYTE(v13[0]) = *(a2 + 32);
      sub_271120E64(v12, v13, 1);
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
        LOBYTE(v13[0]) = *(a2 + 32);
        sub_271120E64(v5, v13, 1);
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
      LOBYTE(v13[0]) = *(a2 + 32);
      sub_271120E64(v8, v13, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      LOBYTE(v13[0]) = *(a2 + 32);
      sub_271120E64(v7, v13, 1);
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
  LOBYTE(v13[0]) = v6;
  sub_271120E64(v9, v13, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    LOBYTE(v13[0]) = *(a2 + 32);
    sub_271120E64(v11, v13, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 1);
  ++*(a2 + 40);
  v14 = 1;
  v13[0] = a2;
  v13[1] = v3 + 200;
  v13[2] = &v14;
  sub_271488144(v13);
}

void sub_271488144(uint64_t a1)
{
  v1 = *a1;
  sub_271487264(v3, *(a1 + 8));
  sub_271839128(v1, v3);
  sub_2718388F8(v1, v5);
  sub_271839128(v1, &v6);
  if (*(v1 + 40))
  {
    v2 = *(v1 + 24);
    v13 = *(v1 + 32);
    sub_271120E64(v2, &v13, 1);
  }

  MEMORY[0x2743BE7F0](*(v1 + 24), v8);
  ++*(v1 + 40);
  sub_271839128(v1, &v9);
  sub_271839128(v1, &__p);
  if (v12 < 0)
  {
    operator delete(__p);
    if ((v10 & 0x80000000) == 0)
    {
LABEL_5:
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v9);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(v3[0]);
    return;
  }

LABEL_10:
  operator delete(v6);
  if (v4 < 0)
  {
    goto LABEL_11;
  }
}

void sub_27148825C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713B1398(va);
  _Unwind_Resume(a1);
}

void sub_271488270(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    LODWORD(v9[0]) = 4;
    sub_27173318C(a2 + 24, *(a2 + 32), v9, v9 + 4, 4uLL);
    v7 = v9[0];
    sub_2717312C0(a2);
    sub_2713DEB74(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    LODWORD(v9[0]) = 5;
    sub_27173318C(a2 + 24, *(a2 + 32), v9, v9 + 4, 4uLL);
    v6 = v9[0];
    sub_2717312C0(a2);
    sub_2713DEA44(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    LODWORD(v9[0]) = 6;
    sub_27173318C(a2 + 24, *(a2 + 32), v9, v9 + 4, 4uLL);
    v5 = v9[0];
    sub_2717312C0(a2);
    sub_2713B93E0(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  LODWORD(v9[0]) = 1;
  sub_27173318C(a2 + 24, *(a2 + 32), v9, v9 + 4, 4uLL);
  v10 = v9[0];
  v9[0] = a2;
  v9[1] = v3 + 200;
  v9[2] = &v10;
  sub_2714883F8(v9);
}

void sub_2714883F8(uint64_t *a1)
{
  v1 = *a1;
  sub_271487264(&v14, a1[1]);
  v2 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v2 = v15;
  }

  __src = v2;
  sub_27173318C(v1 + 24, *(v1 + 32), &__src, &v31, 8uLL);
  if ((v16 & 0x80u) == 0)
  {
    v3 = &v14;
  }

  else
  {
    v3 = v14;
  }

  if ((v16 & 0x80u) == 0)
  {
    v4 = v16;
  }

  else
  {
    v4 = v15;
  }

  sub_27173318C(v1 + 24, *(v1 + 32), v3, &v3[v4], v4);
  sub_27173318C(v1 + 24, *(v1 + 32), &v17, v18, 1uLL);
  v5 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v5 = v20;
  }

  __src = v5;
  sub_27173318C(v1 + 24, *(v1 + 32), &__src, &v31, 8uLL);
  if ((v21 & 0x80u) == 0)
  {
    v6 = &v19;
  }

  else
  {
    v6 = v19;
  }

  if ((v21 & 0x80u) == 0)
  {
    v7 = v21;
  }

  else
  {
    v7 = v20;
  }

  sub_27173318C(v1 + 24, *(v1 + 32), v6, &v6[v7], v7);
  sub_27173318C(v1 + 24, *(v1 + 32), v22, v23, 4uLL);
  v8 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v8 = v25;
  }

  __src = v8;
  sub_27173318C(v1 + 24, *(v1 + 32), &__src, &v31, 8uLL);
  if ((v26 & 0x80u) == 0)
  {
    v9 = &v24;
  }

  else
  {
    v9 = v24;
  }

  if ((v26 & 0x80u) == 0)
  {
    v10 = v26;
  }

  else
  {
    v10 = v25;
  }

  sub_27173318C(v1 + 24, *(v1 + 32), v9, &v9[v10], v10);
  v11 = v29;
  if ((v29 & 0x80u) != 0)
  {
    v11 = v28;
  }

  __src = v11;
  sub_27173318C(v1 + 24, *(v1 + 32), &__src, &v31, 8uLL);
  if ((v29 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v29 & 0x80u) == 0)
  {
    v13 = v29;
  }

  else
  {
    v13 = v28;
  }

  sub_27173318C(v1 + 24, *(v1 + 32), p_p, &p_p[v13], v13);
  if (v29 < 0)
  {
    operator delete(__p);
    if ((v26 & 0x80000000) == 0)
    {
LABEL_35:
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }
  }

  else if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v24);
  if ((v21 & 0x80000000) == 0)
  {
LABEL_36:
    if ((v16 & 0x80000000) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(v14);
    return;
  }

LABEL_40:
  operator delete(v19);
  if (v16 < 0)
  {
    goto LABEL_41;
  }
}

void sub_27148864C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713B1398(va);
  _Unwind_Resume(a1);
}

void sub_271488660(uint64_t a1, __int128 *a2)
{
  sub_271487264(v3, a2);
  (*(*a1 + 144))(a1, v3);
  (*(*a1 + 80))(a1, &v5);
  (*(*a1 + 144))(a1, &v6);
  (*(*a1 + 104))(a1, &v8);
  (*(*a1 + 144))(a1, &v9);
  (*(*a1 + 144))(a1, &__p);
  if (v12 < 0)
  {
    operator delete(__p);
    if ((v10 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v9);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v4 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v3[0]);
    return;
  }

LABEL_8:
  operator delete(v6);
  if (v4 < 0)
  {
    goto LABEL_9;
  }
}

void sub_271488820(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v6)
  {
    sub_271488F7C(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v8)
  {
    sub_271489598(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
    if (v10)
    {
      sub_2714899F0(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
    if (v12)
    {
      sub_27148A00C(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
      if (v14)
      {
        sub_27148A698(&v16, v14);
      }

      else
      {
        sub_2714889EC(&v15, a1);
      }
    }
  }
}

uint64_t sub_2714889EC(uint64_t *a1, void **a2)
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

  LODWORD(v23[0]) = 1;
  (*(*a2 + 13))(a2, v23);
  (*(*a2 + 18))(a2, v3 + 200);
  (*(*a2 + 10))(a2, v3 + 224);
  (*(*a2 + 18))(a2, v3 + 232);
  (*(*a2 + 13))(a2, v3 + 256);
  (*(*a2 + 18))(a2, v3 + 264);
  result = (*(*a2 + 18))(a2, v3 + 288);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_271488F7C(uint64_t *a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, &v20);
    sub_2713B2524(v33, &v20);
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
    if (v31 == v30)
    {
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
        operator delete(v21);
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

  sub_271399EB0(v3 + 16, &v20);
  sub_2713B2524(v33, &v20);
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

void sub_271489564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271489598(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
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
  if (v30 != v29)
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
  LODWORD(v20[0]) = 6;
  sub_27183FB7C(*(a2 + 48), v20);
  sub_2713BF6F4(v20, a2, v3 + 16, v20[0]);
  LODWORD(v20[0]) = 1;
  sub_27183FB7C(*(a2 + 48), v20);
  sub_2718403E0(*(a2 + 48), (v3 + 200));
  sub_27183F824(*(a2 + 48), (v3 + 224));
  sub_2718403E0(*(a2 + 48), (v3 + 232));
  sub_27183FB7C(*(a2 + 48), (v3 + 256));
  sub_2718403E0(*(a2 + 48), (v3 + 264));
  sub_2718403E0(*(a2 + 48), (v3 + 288));
  v19 = *MEMORY[0x277D85DE8];
}

void sub_2714899F0(uint64_t *a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_2713DA430(v3 + 16, &v20);
    sub_2713B2524(v33, &v20);
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
    if (v31 == v30)
    {
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
        operator delete(v21);
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

  sub_271399EB0(v3 + 16, &v20);
  sub_2713B2524(v33, &v20);
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

void sub_271489FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27148A00C(uint64_t *a1, uint64_t a2)
{
  v53 = *MEMORY[0x277D85DE8];
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

    sub_271399EB0(v3 + 16, v27);
    sub_2713B2524(v40, v27);
    sub_2713E031C(v3 + 16, v40);
    if (v52 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v51;
        v11 = __p;
        if (v51 != __p)
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

        v51 = v9;
        operator delete(v11);
      }
    }

    if (v49 == 1 && v48 < 0)
    {
      operator delete(v47);
    }

    if (v46 == 1 && v45 < 0)
    {
      operator delete(v44);
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v39 != 1)
    {
      goto LABEL_66;
    }

    v13 = v37;
    if (!v37)
    {
      goto LABEL_66;
    }

    v17 = v38;
    v15 = v37;
    if (v38 == v37)
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
        v15 = v37;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v27);
  sub_2713B2524(v40, v27);
  sub_2713E031C(v3 + 16, v40);
  if (v52 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v51;
      v7 = __p;
      if (v51 != __p)
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

      v51 = v5;
      operator delete(v7);
    }
  }

  if (v49 == 1 && v48 < 0)
  {
    operator delete(v47);
  }

  if (v46 == 1 && v45 < 0)
  {
    operator delete(v44);
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v39 != 1)
  {
    goto LABEL_66;
  }

  v13 = v37;
  if (!v37)
  {
    goto LABEL_66;
  }

  v14 = v38;
  v15 = v37;
  if (v38 != v37)
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
  v38 = v13;
  operator delete(v15);
LABEL_66:
  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v33 == 1 && v32 < 0)
  {
    operator delete(v31);
  }

  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  LODWORD(v27[0]) = 6;
  sub_27183A9AC(a2, v27);
  if (LODWORD(v27[0]) >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = v27[0];
  }

  if (LODWORD(v27[0]) > 2)
  {
    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, v27);
      if (SHIBYTE(v28) < 0)
      {
        if (v27[1] == 1 && *(a2 + 72) == *v27[0])
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v28) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v28) == 1 && *(a2 + 72) == LOBYTE(v27[0]))
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v28) < 0)
      {
LABEL_93:
        operator delete(v27[0]);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  sub_2713C30AC(v27, a2, v3 + 16, v19);
LABEL_95:
  LODWORD(v27[0]) = 1;
  sub_27183A9AC(a2, v27);
  ++*(a2 + 80);
  if (*(a2 + 128) == 1 && *(a2 + 131) == 1)
  {
    *(a2 + 132) = 1;
  }

  else
  {
    sub_27183D78C(a2, v27);
    if (*(v3 + 223) < 0)
    {
      operator delete(*(v3 + 200));
    }

    *(v3 + 200) = *v27;
    *(v3 + 216) = v28;
    ++*(a2 + 104);
  }

  sub_271839D90(a2, (v3 + 224));
  ++*(a2 + 80);
  if (*(a2 + 128) == 1 && *(a2 + 131) == 1)
  {
    *(a2 + 132) = 1;
  }

  else
  {
    sub_27183D78C(a2, v27);
    if (*(v3 + 255) < 0)
    {
      operator delete(*(v3 + 232));
    }

    *(v3 + 232) = *v27;
    *(v3 + 248) = v28;
    ++*(a2 + 104);
  }

  sub_27183A9AC(a2, (v3 + 256));
  v21 = *(a2 + 80);
  *(a2 + 80) = v21 + 1;
  if (*(a2 + 128) == 1 && *(a2 + 131) == 1)
  {
    *(a2 + 132) = 1;
    v22 = v3 + 288;
    *(a2 + 80) = v21 + 2;
  }

  else
  {
    sub_27183D78C(a2, v27);
    v23 = (v3 + 264);
    if (*(v3 + 287) < 0)
    {
      operator delete(*v23);
    }

    *v23 = *v27;
    *(v3 + 280) = v28;
    ++*(a2 + 104);
    v24 = *(a2 + 128);
    v22 = v3 + 288;
    ++*(a2 + 80);
    if ((v24 & 1) == 0)
    {
      goto LABEL_115;
    }
  }

  if (*(a2 + 131) == 1)
  {
    *(a2 + 132) = 1;
    goto LABEL_118;
  }

LABEL_115:
  sub_27183D78C(a2, v27);
  if (*(v3 + 311) < 0)
  {
    operator delete(*v22);
  }

  v25 = *v27;
  *(v22 + 16) = v28;
  *v22 = v25;
  ++*(a2 + 104);
LABEL_118:
  v26 = *MEMORY[0x277D85DE8];
}

void sub_27148A698(uint64_t *a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
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

    sub_271399EB0(v3 + 16, v26);
    sub_2713B2524(v39, v26);
    sub_2713E031C(v3 + 16, v39);
    if (v51 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v50;
        v11 = __p;
        if (v50 != __p)
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

        v50 = v9;
        operator delete(v11);
      }
    }

    if (v48 == 1 && v47 < 0)
    {
      operator delete(v46);
    }

    if (v45 == 1 && v44 < 0)
    {
      operator delete(v43);
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v38 != 1)
    {
      goto LABEL_66;
    }

    v13 = v36;
    if (!v36)
    {
      goto LABEL_66;
    }

    v17 = v37;
    v15 = v36;
    if (v37 == v36)
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
        v15 = v36;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v26);
  sub_2713B2524(v39, v26);
  sub_2713E031C(v3 + 16, v39);
  if (v51 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v50;
      v7 = __p;
      if (v50 != __p)
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

      v50 = v5;
      operator delete(v7);
    }
  }

  if (v48 == 1 && v47 < 0)
  {
    operator delete(v46);
  }

  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v38 != 1)
  {
    goto LABEL_66;
  }

  v13 = v36;
  if (!v36)
  {
    goto LABEL_66;
  }

  v14 = v37;
  v15 = v36;
  if (v37 != v36)
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
  v37 = v13;
  operator delete(v15);
LABEL_66:
  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v32 == 1 && v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  sub_2713C49D0(v26, a2, v3 + 16);
  v19 = a2[6];
  v20 = a2[7];
  v21 = v20 >= v19;
  v22 = v20 - v19;
  if (!v21)
  {
    v22 = 0;
  }

  if (v22 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v23 = *(a2[3] + v19);
  a2[6] = v19 + 4;
  v39[0] = v23;
  v26[0] = a2;
  v26[1] = v3 + 200;
  v27 = v39;
  sub_27148AB08(v26);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_27148AB08(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2717318E8(*a1, v2);
  v3 = v1[6];
  if (v1[7] <= v3)
  {
    goto LABEL_8;
  }

  *(v2 + 24) = *(v1[3] + v3);
  ++v1[6];
  sub_2717318E8(v1, v2 + 32);
  v4 = v1[6];
  v5 = v1[7];
  v6 = v5 >= v4;
  v7 = v5 - v4;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 3)
  {
LABEL_8:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  *(v2 + 56) = *(v1[3] + v4);
  v1[6] += 4;
  sub_2717318E8(v1, v2 + 64);

  return sub_2717318E8(v1, v2 + 88);
}

BOOL sub_27148AC30(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0(a1 + 16, &v34);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v34);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v34);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_271399EB0(a2 + 16, &v19);
  }

  else if (v5 == 1)
  {
    sub_2713DA430(a2 + 16, &v19);
  }

  else
  {
    if (v5)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a2 + 16, &v19);
  }

  if (v34 != v19)
  {
    goto LABEL_18;
  }

  if (v35 != v20)
  {
    goto LABEL_18;
  }

  v18[0] = &v36;
  v18[1] = &v39;
  v18[2] = &v40;
  v18[3] = &v43;
  v18[4] = &v46;
  v17[0] = &v21;
  v17[1] = &v24;
  v17[2] = &v25;
  v17[3] = &v28;
  v17[4] = &__p;
  if (sub_2714FBB90(v18, v17))
  {
    v6 = sub_27153ED84(a1 + 200, a2 + 200);
    if (v33 != 1)
    {
      goto LABEL_32;
    }
  }

  else
  {
LABEL_18:
    v6 = 0;
    if (v33 != 1)
    {
      goto LABEL_32;
    }
  }

  v7 = __p;
  if (__p)
  {
    v8 = v32;
    v9 = __p;
    if (v32 == __p)
    {
LABEL_31:
      v32 = v7;
      operator delete(v9);
      goto LABEL_32;
    }

    while (1)
    {
      v10 = v8;
      if (*(v8 - 16) == 1 && *(v8 - 41) < 0)
      {
        operator delete(*(v8 - 8));
        v8 -= 12;
        if (*(v10 - 72) == 1)
        {
LABEL_26:
          if (*(v10 - 73) < 0)
          {
            operator delete(*v8);
          }
        }
      }

      else
      {
        v8 -= 12;
        if (*(v10 - 72) == 1)
        {
          goto LABEL_26;
        }
      }

      if (v8 == v7)
      {
        v9 = __p;
        goto LABEL_31;
      }
    }
  }

LABEL_32:
  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (v48 == 1)
  {
    v11 = v46;
    if (v46)
    {
      v12 = v47;
      v13 = v46;
      if (v47 == v46)
      {
LABEL_54:
        v47 = v11;
        operator delete(v13);
        goto LABEL_55;
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
LABEL_49:
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
            goto LABEL_49;
          }
        }

        if (v12 == v11)
        {
          v13 = v46;
          goto LABEL_54;
        }
      }
    }
  }

LABEL_55:
  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_27148AFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

void sub_27148AFE0(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v6)
  {
    sub_27148B5F4(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v8)
  {
    sub_27148C6AC(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v10)
    {
      sub_27148D670(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v12)
    {
      sub_27148E374(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v14)
      {
        sub_27148EA08(&v16, v14);
      }

      else
      {
        sub_27148B1AC(&v15, a1);
      }
    }
  }
}

void sub_27148B1AC(uint64_t *a1, _DWORD *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v16[0] = 4;
    (*(*a2 + 104))(a2, v16);
    v10 = v16[0];
    if (v9 < 1)
    {
      sub_2713DFA84(a2, v3 + 16, v16[0]);
    }

    else
    {
      if (v9 == 2)
      {
        v16[0] = 3;
        (*(*a2 + 104))(a2, v16);
      }

      (*(*a2 + 16))(a2);
      sub_2713DFA84(a2, v3 + 16, v10);
      (*(*a2 + 24))(a2);
    }
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v16[0] = 5;
    (*(*a2 + 104))(a2, v16);
    v8 = v16[0];
    if (v7 < 1)
    {
      sub_2713DF128(a2, v3 + 16, v16[0]);
    }

    else
    {
      if (v7 == 2)
      {
        v16[0] = 3;
        (*(*a2 + 104))(a2, v16);
      }

      (*(*a2 + 16))(a2);
      sub_2713DF128(a2, v3 + 16, v8);
      (*(*a2 + 24))(a2);
    }
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    v5 = a2[2];
    v16[0] = 6;
    (*(*a2 + 104))(a2, v16);
    v6 = v16[0];
    if (v5 < 1)
    {
      sub_2713B9F84(a2, v3 + 16, v16[0]);
    }

    else
    {
      if (v5 == 2)
      {
        v16[0] = 3;
        (*(*a2 + 104))(a2, v16);
      }

      (*(*a2 + 16))(a2);
      sub_2713B9F84(a2, v3 + 16, v6);
      (*(*a2 + 24))(a2);
    }
  }

  v11 = *a2;
  v13 = *(a2 + 1);
  v16[0] = 1;
  (*(v11 + 104))(a2, v16);
  v15 = v16[0];
  v14[0] = a2;
  v14[1] = v3 + 200;
  v14[2] = &v13;
  v14[3] = &v15;
  if (v13 < 1)
  {
    sub_27148BEB8(v16, v3 + 200);
    sub_27148F198(a2, v16);
    if (v22 == 1 && v21 < 0)
    {
      operator delete(__p);
    }

    if (v19 == 1 && v18 < 0)
    {
      operator delete(v17);
    }
  }

  else
  {
    sub_27148EFC0(v14);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_27148B5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2713B14A4(va);
  _Unwind_Resume(a1);
}

void sub_27148B5F4(uint64_t *a1, uint64_t a2)
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

void sub_27148B9F8(uint64_t a1, uint64_t a2)
{
  v11[22] = *MEMORY[0x277D85DE8];
  if (**(a1 + 40) <= 1u)
  {
    v3 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v3 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v4 = *(a2 + 16);
  sub_27182791C(a1 + 48, (a1 + 40));
  v5 = sub_2718289B0(a1);
  *(a1 + 40) = v5;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, *"version" == 1936876918) ? (v6 = *"sion" == 1852795251) : (v6 = 0), v6))
  {
    *(a1 + 96) = 1;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v10[0] = 6;
    v11[0] = 1;
    v7 = sub_2718289B0(a1);
    v8 = *v7;
    *v7 = 6;
    v10[0] = v8;
    v9 = v7[1];
    v7[1] = v11[0];
    v11[0] = v9;
    sub_2715CC40C(v11, v8);
  }

  sub_27148BEB8(v10, v4);
  sub_27148BBEC(a1);
}

void sub_27148BBEC(uint64_t a1)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = "src_to_dst";
    *(a1 + 80) = 10;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182791C(a1 + 48, (a1 + 40));
  v3 = sub_2718289B0(a1);
  *(a1 + 40) = v3;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v3 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v4 = *(a1 + 72), v5 = *v4, v6 = *(v4 + 3), v5 == *"version") ? (v7 = v6 == *"sion") : (v7 = 0), v7))
  {
    *(a1 + 96) = 1;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v11 = 1;
    v8 = sub_2718289B0(a1);
    v9 = *v8;
    *v8 = 6;
    v10 = v8[1];
    v8[1] = v11;
    v11 = v10;
    sub_2715CC40C(&v11, v9);
  }

  sub_27148BFFC(a1);
}

uint64_t sub_27148BEB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  v5 = *(a2 + 88);
  v6 = *(a2 + 104);
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 40);
  *(a1 + 120) = 0;
  *(a1 + 8) = v7;
  *(a1 + 24) = v8;
  *(a1 + 88) = v5;
  *(a1 + 104) = v6;
  *(a1 + 56) = v3;
  *(a1 + 72) = v4;
  *(a1 + 40) = v9;
  *(a1 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    if (*(a2 + 143) < 0)
    {
      v11 = a2;
      sub_271127178((a1 + 120), *(a2 + 120), *(a2 + 128));
      a2 = v11;
    }

    else
    {
      v10 = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 120) = v10;
    }

    *(a1 + 144) = 1;
  }

  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    if (*(a2 + 175) < 0)
    {
      sub_271127178((a1 + 152), *(a2 + 152), *(a2 + 160));
    }

    else
    {
      v12 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v12;
    }

    *(a1 + 176) = 1;
  }

  return a1;
}

void sub_27148BFB0(_Unwind_Exception *exception_object)
{
  if (v1[176] == 1 && v1[175] < 0)
  {
    operator delete(*v3);
  }

  if (v1[144] == 1 && v1[143] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_27148BFFC(uint64_t a1)
{
  if (**(a1 + 40) <= 1u)
  {
    v1 = *(a1 + 88);
    *(a1 + 72) = "se3_type";
    *(a1 + 80) = 8;
    if ((v1 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v2 = 0;
  sub_27148C43C();
}

void sub_27148C3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27148C414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27148C428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27148C668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27148C6AC(uint64_t *a1, uint64_t a2)
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

  sub_27148C878(&v16, a2, v3 + 200);
}

void sub_27148C878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 24);
  if (*(v5 + 40) == 1)
  {
    v15[0] = (v5 + 16);
    sub_2718460EC(v15, 1u);
  }

  else
  {
    sub_27184636C(v15, (v5 + 8));
  }

  sub_271840ADC(*(a2 + 24));
  sub_27148BEB8(v15, a3);
  sub_27148C9F0(a2, v15);
  if (v20 == 1 && v19 < 0)
  {
    operator delete(__p);
  }

  if (v17 == 1 && v16 < 0)
  {
    operator delete(v15[15]);
  }

  v6 = *(a2 + 24);
  v7 = *(v6[11] - 8);
  sub_2718404E0(v6 + 6, v6[2] - v7 - 9);
  v8 = v6[6];
  if (v8)
  {
    memmove((v6[3] + v7), v6[7], v8);
  }

  v6[6] = 0;
  v9 = v6[10];
  v10 = v6[11] - 8;
  v6[11] = v10;
  if (v9 == v10)
  {
    v11 = *v6;
    v13 = v6[2];
    v12 = v6[3];
    std::ostream::write();
    if (*(v6 + 40) == 1)
    {
      free(v6[3]);
      *(v6 + 40) = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t *sub_27148C9F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v25 = (v4 + 16);
    sub_2718460EC(&v25, 1u);
  }

  else
  {
    sub_27184636C(&v25, (v4 + 8));
  }

  sub_271840ADC(*(a1 + 24));
  sub_27148CCE0(a1, (a2 + 8));
  v5 = *(a1 + 24);
  v6 = *(v5[11] - 8);
  sub_2718404E0(v5 + 6, v5[2] - v6 - 9);
  v7 = v5[6];
  if (v7)
  {
    memmove((v5[3] + v6), v5[7], v7);
  }

  v5[6] = 0;
  v8 = v5[10];
  v9 = v5[11] - 8;
  v5[11] = v9;
  if (v8 == v9)
  {
    v10 = *v5;
    v12 = v5[2];
    v11 = v5[3];
    std::ostream::write();
    if (*(v5 + 40) == 1)
    {
      free(v5[3]);
      *(v5 + 40) = 0;
    }
  }

  if (*(a2 + 144) == 1)
  {
    v24 = 1;
    v13 = *(a1 + 24);
    if (*(v13 + 40) == 1)
    {
      v25 = (v13 + 16);
      sub_2718454CC(&v25, &v24);
      v14 = *(a1 + 24);
      if (*(v14 + 40) != 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      LOBYTE(v25) = 1;
      v16 = *(v13 + 8);
      std::ostream::write();
      v14 = *(a1 + 24);
      if (*(v14 + 40) != 1)
      {
LABEL_12:
        sub_271847654((v14 + 8), (a2 + 120));
        if (*(a2 + 176) == 1)
        {
          goto LABEL_22;
        }

LABEL_19:
        v24 = 0;
        v17 = *(a1 + 24);
        if (*(v17 + 40) == 1)
        {
          v25 = (v17 + 16);
          return sub_2718454CC(&v25, &v24);
        }

        else
        {
          LOBYTE(v25) = 0;
          v22 = *(v17 + 8);
          return std::ostream::write();
        }
      }
    }

    v25 = (v14 + 16);
    sub_271847238(&v25, (a2 + 120));
    if (*(a2 + 176) != 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v24 = 0;
    v15 = *(a1 + 24);
    if (*(v15 + 40) == 1)
    {
      v25 = (v15 + 16);
      sub_2718454CC(&v25, &v24);
      if (*(a2 + 176) == 1)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    LOBYTE(v25) = 0;
    v19 = *(v15 + 8);
    std::ostream::write();
    if (*(a2 + 176) != 1)
    {
      goto LABEL_19;
    }
  }

LABEL_22:
  v24 = 1;
  v20 = *(a1 + 24);
  if (*(v20 + 40) == 1)
  {
    v25 = (v20 + 16);
    sub_2718454CC(&v25, &v24);
    v21 = *(a1 + 24);
    if (*(v21 + 40) != 1)
    {
      return sub_271847654((v21 + 8), (a2 + 152));
    }
  }

  else
  {
    LOBYTE(v25) = 1;
    v23 = *(v20 + 8);
    std::ostream::write();
    v21 = *(a1 + 24);
    if (*(v21 + 40) != 1)
    {
      return sub_271847654((v21 + 8), (a2 + 152));
    }
  }

  v25 = (v21 + 16);
  return sub_271847238(&v25, (a2 + 152));
}

uint64_t sub_27148CCE0(uint64_t a1, char *a2)
{
  v99 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v97 = *a2;
  v5 = *(a1 + 24);
  if (*(v5 + 40) == 1)
  {
    *v98 = v5 + 16;
    result = sub_2718454CC(v98, &v97);
  }

  else
  {
    if (v4 < 0)
    {
      v98[0] = -52;
      v98[1] = v4;
    }

    else
    {
      v98[0] = v4;
    }

    v7 = *(v5 + 8);
    result = std::ostream::write();
  }

  v8 = *a2;
  if (v8 > 3)
  {
    if (v8 == 4)
    {
      if (*(a2 + 26))
      {
        sub_2711308D4();
      }

      v12 = *(a1 + 24);
      if (*(v12 + 40) == 1)
      {
        *v98 = v12 + 16;
        sub_271846EFC(&v97, v98, a2 + 2);
        sub_271846EFC(&v97, v98, a2 + 3);
        sub_271846EFC(&v97, v98, a2 + 4);
        sub_271846EFC(&v97, v98, a2 + 5);
      }

      else
      {
        v38 = *(v12 + 8);
        v37 = (v12 + 8);
        v39 = *(a2 + 2);
        v98[0] = -54;
        *&v98[1] = bswap32(v39);
        std::ostream::write();
        v40 = *(a2 + 3);
        v98[0] = -54;
        *&v98[1] = bswap32(v40);
        v41 = *v37;
        std::ostream::write();
        v42 = *(a2 + 4);
        v98[0] = -54;
        *&v98[1] = bswap32(v42);
        v43 = *v37;
        std::ostream::write();
        v44 = *(a2 + 5);
        v98[0] = -54;
        *&v98[1] = bswap32(v44);
        v45 = *v37;
        std::ostream::write();
      }

      v46 = *(a1 + 24);
      if (*(v46 + 40) == 1)
      {
        *v98 = v46 + 16;
        sub_271846EFC(&v97, v98, a2 + 6);
        sub_271846EFC(&v97, v98, a2 + 7);
        sub_271846EFC(&v97, v98, a2 + 8);
        sub_271846EFC(&v97, v98, a2 + 9);
      }

      else
      {
        v70 = *(v46 + 8);
        v69 = (v46 + 8);
        v71 = *(a2 + 6);
        v98[0] = -54;
        *&v98[1] = bswap32(v71);
        std::ostream::write();
        v72 = *(a2 + 7);
        v98[0] = -54;
        *&v98[1] = bswap32(v72);
        v73 = *v69;
        std::ostream::write();
        v74 = *(a2 + 8);
        v98[0] = -54;
        *&v98[1] = bswap32(v74);
        v75 = *v69;
        std::ostream::write();
        v76 = *(a2 + 9);
        v98[0] = -54;
        *&v98[1] = bswap32(v76);
        v77 = *v69;
        std::ostream::write();
      }

      v78 = *(a1 + 24);
      if (*(v78 + 40) == 1)
      {
        *v98 = v78 + 16;
        sub_271846EFC(&v97, v98, a2 + 10);
        sub_271846EFC(&v97, v98, a2 + 11);
        sub_271846EFC(&v97, v98, a2 + 12);
        result = sub_271846EFC(&v97, v98, a2 + 13);
      }

      else
      {
        v88 = *(v78 + 8);
        v87 = (v78 + 8);
        v89 = *(a2 + 10);
        v98[0] = -54;
        *&v98[1] = bswap32(v89);
        std::ostream::write();
        v90 = *(a2 + 11);
        v98[0] = -54;
        *&v98[1] = bswap32(v90);
        v91 = *v87;
        std::ostream::write();
        v92 = *(a2 + 12);
        v98[0] = -54;
        *&v98[1] = bswap32(v92);
        v93 = *v87;
        std::ostream::write();
        v94 = *(a2 + 13);
        v98[0] = -54;
        *&v98[1] = bswap32(v94);
        v95 = *v87;
        result = std::ostream::write();
      }
    }

    else if (v8 == 5)
    {
      if (*(a2 + 26) != 1)
      {
        sub_2711308D4();
      }

      v10 = *(a1 + 24);
      if (*(v10 + 40) == 1)
      {
        *v98 = v10 + 16;
        sub_271846FE4(&v97, v98, a2 + 1);
        sub_271846FE4(&v97, v98, a2 + 2);
        sub_271846FE4(&v97, v98, a2 + 3);
        sub_271846FE4(&v97, v98, a2 + 4);
      }

      else
      {
        *&v98[1] = bswap64(*(a2 + 1));
        v21 = *(v10 + 8);
        v20 = (v10 + 8);
        v98[0] = -53;
        std::ostream::write();
        v22 = *(a2 + 2);
        v98[0] = -53;
        *&v98[1] = bswap64(v22);
        v23 = *v20;
        std::ostream::write();
        v24 = *(a2 + 3);
        v98[0] = -53;
        *&v98[1] = bswap64(v24);
        v25 = *v20;
        std::ostream::write();
        v26 = *(a2 + 4);
        v98[0] = -53;
        *&v98[1] = bswap64(v26);
        v27 = *v20;
        std::ostream::write();
      }

      v28 = *(a1 + 24);
      if (*(v28 + 40) == 1)
      {
        *v98 = v28 + 16;
        sub_271846FE4(&v97, v98, a2 + 5);
        sub_271846FE4(&v97, v98, a2 + 6);
        sub_271846FE4(&v97, v98, a2 + 7);
        sub_271846FE4(&v97, v98, a2 + 8);
      }

      else
      {
        *&v98[1] = bswap64(*(a2 + 5));
        v61 = *(v28 + 8);
        v60 = (v28 + 8);
        v98[0] = -53;
        std::ostream::write();
        v62 = *(a2 + 6);
        v98[0] = -53;
        *&v98[1] = bswap64(v62);
        v63 = *v60;
        std::ostream::write();
        v64 = *(a2 + 7);
        v98[0] = -53;
        *&v98[1] = bswap64(v64);
        v65 = *v60;
        std::ostream::write();
        v66 = *(a2 + 8);
        v98[0] = -53;
        *&v98[1] = bswap64(v66);
        v67 = *v60;
        std::ostream::write();
      }

      v68 = *(a1 + 24);
      if (*(v68 + 40) == 1)
      {
        *v98 = v68 + 16;
        sub_271846FE4(&v97, v98, a2 + 9);
        sub_271846FE4(&v97, v98, a2 + 10);
        sub_271846FE4(&v97, v98, a2 + 11);
        result = sub_271846FE4(&v97, v98, a2 + 12);
      }

      else
      {
        *&v98[1] = bswap64(*(a2 + 9));
        v80 = *(v68 + 8);
        v79 = (v68 + 8);
        v98[0] = -53;
        std::ostream::write();
        v81 = *(a2 + 10);
        v98[0] = -53;
        *&v98[1] = bswap64(v81);
        v82 = *v79;
        std::ostream::write();
        v83 = *(a2 + 11);
        v98[0] = -53;
        *&v98[1] = bswap64(v83);
        v84 = *v79;
        std::ostream::write();
        v85 = *(a2 + 12);
        v98[0] = -53;
        *&v98[1] = bswap64(v85);
        v86 = *v79;
        result = std::ostream::write();
      }
    }
  }

  else if (v8 == 1)
  {
    if (*(a2 + 26) != 2)
    {
      sub_2711308D4();
    }

    v11 = *(a1 + 24);
    if (*(v11 + 40) == 1)
    {
      *v98 = v11 + 16;
      sub_271846EFC(&v97, v98, a2 + 2);
      sub_271846EFC(&v97, v98, a2 + 3);
      sub_271846EFC(&v97, v98, a2 + 4);
    }

    else
    {
      v30 = *(v11 + 8);
      v29 = (v11 + 8);
      v31 = *(a2 + 2);
      v98[0] = -54;
      *&v98[1] = bswap32(v31);
      std::ostream::write();
      v32 = *(a2 + 3);
      v98[0] = -54;
      *&v98[1] = bswap32(v32);
      v33 = *v29;
      std::ostream::write();
      v34 = *(a2 + 4);
      v98[0] = -54;
      *&v98[1] = bswap32(v34);
      v35 = *v29;
      std::ostream::write();
    }

    v36 = *(a1 + 24);
    if (*(v36 + 40) == 1)
    {
      *v98 = v36 + 16;
      sub_271846EFC(&v97, v98, a2 + 5);
      sub_271846EFC(&v97, v98, a2 + 6);
      result = sub_271846EFC(&v97, v98, a2 + 7);
    }

    else
    {
      v54 = *(v36 + 8);
      v53 = (v36 + 8);
      v55 = *(a2 + 5);
      v98[0] = -54;
      *&v98[1] = bswap32(v55);
      std::ostream::write();
      v56 = *(a2 + 6);
      v98[0] = -54;
      *&v98[1] = bswap32(v56);
      v57 = *v53;
      std::ostream::write();
      v58 = *(a2 + 7);
      v98[0] = -54;
      *&v98[1] = bswap32(v58);
      v59 = *v53;
      result = std::ostream::write();
    }
  }

  else if (v8 == 2)
  {
    if (*(a2 + 26) != 3)
    {
      sub_2711308D4();
    }

    v9 = *(a1 + 24);
    if (*(v9 + 40) == 1)
    {
      *v98 = v9 + 16;
      sub_271846FE4(&v97, v98, a2 + 1);
      sub_271846FE4(&v97, v98, a2 + 2);
      sub_271846FE4(&v97, v98, a2 + 3);
    }

    else
    {
      *&v98[1] = bswap64(*(a2 + 1));
      v14 = *(v9 + 8);
      v13 = (v9 + 8);
      v98[0] = -53;
      std::ostream::write();
      v15 = *(a2 + 2);
      v98[0] = -53;
      *&v98[1] = bswap64(v15);
      v16 = *v13;
      std::ostream::write();
      v17 = *(a2 + 3);
      v98[0] = -53;
      *&v98[1] = bswap64(v17);
      v18 = *v13;
      std::ostream::write();
    }

    v19 = *(a1 + 24);
    if (*(v19 + 40) == 1)
    {
      *v98 = v19 + 16;
      sub_271846FE4(&v97, v98, a2 + 4);
      sub_271846FE4(&v97, v98, a2 + 5);
      result = sub_271846FE4(&v97, v98, a2 + 6);
    }

    else
    {
      *&v98[1] = bswap64(*(a2 + 4));
      v48 = *(v19 + 8);
      v47 = (v19 + 8);
      v98[0] = -53;
      std::ostream::write();
      v49 = *(a2 + 5);
      v98[0] = -53;
      *&v98[1] = bswap64(v49);
      v50 = *v47;
      std::ostream::write();
      v51 = *(a2 + 6);
      v98[0] = -53;
      *&v98[1] = bswap64(v51);
      v52 = *v47;
      result = std::ostream::write();
    }
  }

  v96 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27148D670(uint64_t *a1, uint64_t a2)
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

void sub_27148DA74(uint64_t a1, uint64_t a2)
{
  v11[22] = *MEMORY[0x277D85DE8];
  if (**(a1 + 40) <= 1u)
  {
    v3 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v3 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v4 = *(a2 + 16);
  sub_2715DF0F0(a1 + 48, (a1 + 40));
  v5 = sub_27182815C(a1);
  *(a1 + 40) = v5;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, *"version" == 1936876918) ? (v6 = *"sion" == 1852795251) : (v6 = 0), v6))
  {
    *(a1 + 96) = 1;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v10[0] = 6;
    v11[0] = 1;
    v7 = sub_27182815C(a1);
    v8 = *v7;
    *v7 = 6;
    v10[0] = v8;
    v9 = v7[1];
    v7[1] = v11[0];
    v11[0] = v9;
    sub_2715CA870(v11, v8);
  }

  sub_27148BEB8(v10, v4);
  sub_27148DC68(a1);
}

void sub_27148DC68(uint64_t a1)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = "src_to_dst";
    *(a1 + 80) = 10;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_2715DF0F0(a1 + 48, (a1 + 40));
  v3 = sub_27182815C(a1);
  *(a1 + 40) = v3;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v3 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v4 = *(a1 + 72), v5 = *v4, v6 = *(v4 + 3), v5 == *"version") ? (v7 = v6 == *"sion") : (v7 = 0), v7))
  {
    *(a1 + 96) = 1;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v11 = 1;
    v8 = sub_27182815C(a1);
    v9 = *v8;
    *v8 = 6;
    v10 = v8[1];
    v8[1] = v11;
    v11 = v10;
    sub_2715CA870(&v11, v9);
  }

  sub_27148DF34(a1);
}

void sub_27148DF34(uint64_t a1)
{
  if (**(a1 + 40) <= 1u)
  {
    v1 = *(a1 + 88);
    *(a1 + 72) = "se3_type";
    *(a1 + 80) = 8;
    if ((v1 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v2 = 0;
  sub_27148C43C();
}

void sub_27148E330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27148E34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27148E360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void *sub_27148E374(uint64_t *a1, uint64_t a2)
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
  return sub_27148E510(&v12, a2, v3 + 200);
}

void *sub_27148E510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40))
  {
    v5 = *(a2 + 24);
    v11[0] = *(a2 + 32);
    sub_271120E64(v5, v11, 1);
  }

  MEMORY[0x2743BE7F0](*(a2 + 24), 1);
  ++*(a2 + 40);
  sub_27148BEB8(v11, a3);
  sub_27148E650(a2, v11);
  if (v17 == 1 && v16 < 0)
  {
    operator delete(__p);
  }

  if (v14 == 1 && v13 < 0)
  {
    operator delete(v12);
  }

  v6 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v7 = *(a2 + 24);
    v11[0] = *(a2 + 32);
    sub_271120E64(v7, v11, 1);
  }

  v8 = *(a2 + 24);
  v11[0] = v6;
  result = sub_271120E64(v8, v11, 1);
  ++*(a2 + 40);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27148E650(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v13 = *(a1 + 32);
    sub_271120E64(v4, &v13, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), 1);
  ++*(a1 + 40);
  sub_27148E7A4(a1, a2 + 8);
  v5 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v6 = *(a1 + 24);
    v14 = *(a1 + 32);
    sub_271120E64(v6, &v14, 1);
  }

  v7 = *(a1 + 24);
  v15 = v5;
  sub_271120E64(v7, &v15, 1);
  ++*(a1 + 40);
  if (a2[144] == 1)
  {
    v10 = 1;
    sub_2718388F8(a1, &v10);
    sub_271839128(a1, (a2 + 120));
    v8 = a2[176];
    if (v8 != 1)
    {
LABEL_7:
      v11 = 0;
      sub_2718388F8(a1, &v11);
      return;
    }
  }

  else
  {
    v9 = 0;
    sub_2718388F8(a1, &v9);
    v8 = a2[176];
    if (v8 != 1)
    {
      goto LABEL_7;
    }
  }

  v12 = v8;
  sub_2718388F8(a1, &v12);
  sub_271839128(a1, (a2 + 152));
}

void sub_27148E7A4(uint64_t a1, unsigned __int8 *a2)
{
  v6 = *a2;
  sub_2718388F8(a1, &v6);
  v4 = *a2;
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      if (!*(a2 + 26))
      {
        sub_271838C54(a1, a2 + 2);
        sub_271838C54(a1, a2 + 3);
        sub_271838C54(a1, a2 + 4);
        sub_271838C54(a1, a2 + 5);
        sub_271838C54(a1, a2 + 6);
        sub_271838C54(a1, a2 + 7);
        sub_271838C54(a1, a2 + 8);
        sub_271838C54(a1, a2 + 9);
        sub_271838C54(a1, a2 + 10);
        sub_271838C54(a1, a2 + 11);
        sub_271838C54(a1, a2 + 12);
        sub_271838C54(a1, a2 + 13);
        return;
      }
    }

    else
    {
      if (v4 != 5)
      {
        return;
      }

      if (*(a2 + 26) == 1)
      {
        sub_271838EC0(a1, a2 + 1);
        sub_271838EC0(a1, a2 + 2);
        sub_271838EC0(a1, a2 + 3);
        sub_271838EC0(a1, a2 + 4);
        sub_271838EC0(a1, a2 + 5);
        sub_271838EC0(a1, a2 + 6);
        sub_271838EC0(a1, a2 + 7);
        sub_271838EC0(a1, a2 + 8);
        sub_271838EC0(a1, a2 + 9);
        sub_271838EC0(a1, a2 + 10);
        sub_271838EC0(a1, a2 + 11);
        v5 = (a2 + 96);
        goto LABEL_10;
      }
    }

    goto LABEL_16;
  }

  if (v4 == 1)
  {
    if (*(a2 + 26) == 2)
    {
      sub_271838C54(a1, a2 + 2);
      sub_271838C54(a1, a2 + 3);
      sub_271838C54(a1, a2 + 4);
      sub_271838C54(a1, a2 + 5);
      sub_271838C54(a1, a2 + 6);
      sub_271838C54(a1, a2 + 7);
      return;
    }

    goto LABEL_16;
  }

  if (v4 != 2)
  {
    return;
  }

  if (*(a2 + 26) != 3)
  {
LABEL_16:
    sub_2711308D4();
  }

  sub_271838EC0(a1, a2 + 1);
  sub_271838EC0(a1, a2 + 2);
  sub_271838EC0(a1, a2 + 3);
  sub_271838EC0(a1, a2 + 4);
  sub_271838EC0(a1, a2 + 5);
  v5 = (a2 + 48);
LABEL_10:
  sub_271838EC0(a1, v5);
}

void sub_27148EA08(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v11 = 4;
    sub_27173318C(a2 + 24, *(a2 + 32), &v11, v12, 4uLL);
    v7 = v11;
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

    v9 = 6;
    sub_27173318C(a2 + 24, *(a2 + 32), &v9, &__src, 4uLL);
    v5 = v9;
    sub_2717312C0(a2);
    sub_2713B93E0(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  sub_27148EB58(&v13, a2, v3 + 200);
}

void sub_27148EB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = 1;
  sub_27173318C(a2 + 24, *(a2 + 32), &v6, v7, 4uLL);
  sub_2717312C0(a2);
  sub_27148BEB8(&v6, a3);
  sub_27148EC7C(a2, &v6);
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8);
  }

  *(*(*(a2 + 56) - 8) + *(a2 + 24) + 10) = *(a2 + 32) - (*(*(a2 + 56) - 8) + *(a2 + 24)) - 18;
  *(a2 + 56) -= 8;
  v5 = *MEMORY[0x277D85DE8];
}

char *sub_27148EC7C(uint64_t a1, uint64_t a2)
{
  LODWORD(__src) = 1;
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
  sub_2717312C0(a1);
  sub_27148EE80(a1, (a2 + 8));
  v4 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v4 + 10) = *(a1 + 32) - v4 - 18;
  *(a1 + 56) -= 8;
  if (*(a2 + 144) == 1)
  {
    LOBYTE(__src) = 1;
    sub_27173318C(a1 + 24, *(a1 + 32), &__src, &__src + 1, 1uLL);
    v5 = *(a2 + 143);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 128);
    }

    __src = v5;
    sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v18, 8uLL);
    v6 = *(a2 + 143);
    if (v6 >= 0)
    {
      v7 = (a2 + 120);
    }

    else
    {
      v7 = *(a2 + 120);
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 143);
    }

    else
    {
      v8 = *(a2 + 128);
    }

    sub_27173318C(a1 + 24, *(a1 + 32), v7, &v7[v8], v8);
    if (*(a2 + 176) != 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    LOBYTE(__src) = 0;
    sub_27173318C(a1 + 24, *(a1 + 32), &__src, &__src + 1, 1uLL);
    if (*(a2 + 176) != 1)
    {
LABEL_11:
      LOBYTE(__src) = 0;
      v9 = *(a1 + 32);
      v10 = a1 + 24;
      p_src = &__src;
      v12 = &__src + 1;
      v13 = 1;
      return sub_27173318C(v10, v9, p_src, v12, v13);
    }
  }

  LOBYTE(__src) = 1;
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &__src + 1, 1uLL);
  v14 = *(a2 + 175);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 160);
  }

  __src = v14;
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v18, 8uLL);
  v15 = *(a2 + 175);
  if (v15 >= 0)
  {
    p_src = (a2 + 152);
  }

  else
  {
    p_src = *(a2 + 152);
  }

  if (v15 >= 0)
  {
    v13 = *(a2 + 175);
  }

  else
  {
    v13 = *(a2 + 160);
  }

  v9 = *(a1 + 32);
  v10 = a1 + 24;
  v12 = p_src + v13;
  return sub_27173318C(v10, v9, p_src, v12, v13);
}

char *sub_27148EE80(uint64_t a1, unsigned __int8 *a2)
{
  __src = *a2;
  result = sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v10, 1uLL);
  v5 = *a2;
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      if (*(a2 + 26))
      {
        goto LABEL_17;
      }

      v6 = 40;
      v8 = 24;
      v7 = 16;
    }

    else
    {
      if (v5 != 5)
      {
        return result;
      }

      if (*(a2 + 26) != 1)
      {
        goto LABEL_17;
      }

      v6 = 72;
      v8 = 40;
      v7 = 32;
    }

    sub_27173318C(a1 + 24, *(a1 + 32), a2 + 8, &a2[v7 + 8], v7);
    goto LABEL_15;
  }

  if (v5 == 1)
  {
    if (*(a2 + 26) == 2)
    {
      v6 = 20;
      v7 = 12;
      v8 = 8;
      goto LABEL_15;
    }

LABEL_17:
    sub_2711308D4();
  }

  if (v5 != 2)
  {
    return result;
  }

  if (*(a2 + 26) != 3)
  {
    goto LABEL_17;
  }

  v6 = 32;
  v7 = 24;
  v8 = 8;
LABEL_15:
  sub_27173318C(a1 + 24, *(a1 + 32), &a2[v8], &a2[v8 + v7], v7);
  return sub_27173318C(a1 + 24, *(a1 + 32), &a2[v6], &a2[v6 + v7], v7);
}

void sub_27148EFC0(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = **(a1 + 24);
  v5 = *v3;
  if (*v3 == 2)
  {
    *v7 = 1;
    (*(*v1 + 104))(v1, v7);
    v5 = *v3;
  }

  if (v5 <= 0)
  {
    sub_27148BEB8(v7, v2);
    sub_27148F198(v1, v7);
    if (v13 == 1 && v12 < 0)
    {
      operator delete(__p);
    }

    if (v10 == 1 && v9 < 0)
    {
      operator delete(v8);
    }
  }

  else
  {
    (*(*v1 + 16))(v1);
    sub_27148BEB8(v7, v2);
    sub_27148F198(v1, v7);
    if (v13 == 1 && v12 < 0)
    {
      operator delete(__p);
    }

    if (v10 == 1 && v9 < 0)
    {
      operator delete(v8);
    }

    (*(*v1 + 24))(v1);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t sub_27148F198(_DWORD *a1, unsigned __int8 *a2)
{
  v4 = a1[2];
  v8 = 1;
  (*(*a1 + 104))(a1, &v8);
  if (v4 < 1)
  {
    sub_27148F414(a1, a2 + 8);
    v5 = a2[144];
    if (v5 == 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = 0;
    (*(*a1 + 80))(a1, &v9);
    v6 = a2[176];
    if (v6 != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v13 = 1;
    (*(*a1 + 104))(a1, &v13);
  }

  (*(*a1 + 16))(a1);
  sub_27148F414(a1, a2 + 8);
  (*(*a1 + 24))(a1);
  v5 = a2[144];
  if (v5 != 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v10 = v5;
  (*(*a1 + 80))(a1, &v10);
  (*(*a1 + 144))(a1, a2 + 120);
  v6 = a2[176];
  if (v6 != 1)
  {
LABEL_6:
    v11 = 0;
    return (*(*a1 + 80))(a1, &v11);
  }

LABEL_9:
  v12 = v6;
  (*(*a1 + 80))(a1, &v12);
  return (*(*a1 + 144))(a1, a2 + 152);
}

uint64_t sub_27148F414(_BYTE *a1, unsigned __int8 *a2)
{
  result = sub_27148F720(a1, a2);
  v5 = *a2;
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      if (*(a2 + 26))
      {
        goto LABEL_19;
      }

      v9 = a2 + 8;
      return sub_27148F888(a1, &v9);
    }

    else if (v5 == 5)
    {
      if (*(a2 + 26) != 1)
      {
        goto LABEL_19;
      }

      v9 = a2 + 8;
      return sub_27148FAC4(a1, &v9);
    }
  }

  else
  {
    if (v5 == 1)
    {
      if (*(a2 + 26) == 2)
      {
        (*(*a1 + 128))(a1, a2 + 8);
        (*(*a1 + 128))(a1, a2 + 12);
        (*(*a1 + 128))(a1, a2 + 16);
        (*(*a1 + 128))(a1, a2 + 20);
        (*(*a1 + 128))(a1, a2 + 24);
        v6 = *(*a1 + 128);
        v7 = a2 + 28;
        v8 = a1;

        return v6(v8, v7);
      }

LABEL_19:
      sub_2711308D4();
    }

    if (v5 == 2)
    {
      if (*(a2 + 26) == 3)
      {
        (*(*a1 + 136))(a1, a2 + 8);
        (*(*a1 + 136))(a1, a2 + 16);
        (*(*a1 + 136))(a1, a2 + 24);
        (*(*a1 + 136))(a1, a2 + 32);
        (*(*a1 + 136))(a1, a2 + 40);
        v6 = *(*a1 + 136);
        v7 = a2 + 48;
        v8 = a1;

        return v6(v8, v7);
      }

      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_27148F720(_BYTE *a1, _BYTE *a2)
{
  if ((a1[12] & 2) != 0)
  {
    v4 = 0;
    sub_27148C43C();
  }

  v3[0] = *a2;
  return (*(*a1 + 80))(a1, v3);
}

void sub_27148F844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27148F860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27148F874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27148F888(uint64_t a1, void *a2)
{
  v3 = *a2;
  (*(*a1 + 128))(a1, *a2);
  (*(*a1 + 128))(a1, v3 + 4);
  (*(*a1 + 128))(a1, v3 + 8);
  (*(*a1 + 128))(a1, v3 + 12);
  (*(*a1 + 128))(a1, v3 + 16);
  (*(*a1 + 128))(a1, v3 + 20);
  (*(*a1 + 128))(a1, v3 + 24);
  (*(*a1 + 128))(a1, v3 + 28);
  (*(*a1 + 128))(a1, v3 + 32);
  (*(*a1 + 128))(a1, v3 + 36);
  (*(*a1 + 128))(a1, v3 + 40);
  v4 = *(*a1 + 128);

  return v4(a1, v3 + 44);
}

uint64_t sub_27148FAC4(uint64_t a1, void *a2)
{
  v3 = *a2;
  (*(*a1 + 136))(a1, *a2);
  (*(*a1 + 136))(a1, v3 + 8);
  (*(*a1 + 136))(a1, v3 + 16);
  (*(*a1 + 136))(a1, v3 + 24);
  (*(*a1 + 136))(a1, v3 + 32);
  (*(*a1 + 136))(a1, v3 + 40);
  (*(*a1 + 136))(a1, v3 + 48);
  (*(*a1 + 136))(a1, v3 + 56);
  (*(*a1 + 136))(a1, v3 + 64);
  (*(*a1 + 136))(a1, v3 + 72);
  (*(*a1 + 136))(a1, v3 + 80);
  v4 = *(*a1 + 136);

  return v4(a1, v3 + 88);
}

void sub_27148FD00(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v6)
  {
    sub_271490388(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v8)
  {
    sub_271490F70(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
    if (v10)
    {
      sub_2714919B4(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
    if (v12)
    {
      sub_27149259C(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
      if (v14)
      {
        sub_27149308C(&v16, v14);
      }

      else
      {
        sub_27148FECC(&v15, a1);
      }
    }
  }
}

void sub_27148FECC(uint64_t *a1, void **a2)
{
  v49 = *MEMORY[0x277D85DE8];
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

    sub_271399EB0(v3 + 16, v24);
    sub_2713B2524(v36, v24);
    sub_2713E031C(v3 + 16, v36);
    if (v48 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v47;
        v11 = __p;
        if (v47 != __p)
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

        v47 = v9;
        operator delete(v11);
      }
    }

    if (v45 == 1 && v44 < 0)
    {
      operator delete(v43);
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v35 != 1)
    {
      goto LABEL_66;
    }

    v13 = v33;
    if (!v33)
    {
      goto LABEL_66;
    }

    v17 = v34;
    v15 = v33;
    if (v34 == v33)
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
        v15 = v33;
        goto LABEL_65;
      }
    }
  }

  sub_2713DA430(v3 + 16, v24);
  sub_2713B2524(v36, v24);
  sub_2713E031C(v3 + 16, v36);
  if (v48 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v47;
      v7 = __p;
      if (v47 != __p)
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

      v47 = v5;
      operator delete(v7);
    }
  }

  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v35 != 1)
  {
    goto LABEL_66;
  }

  v13 = v33;
  if (!v33)
  {
    goto LABEL_66;
  }

  v14 = v34;
  v15 = v33;
  if (v34 != v33)
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
  v34 = v13;
  operator delete(v15);
LABEL_66:
  if (v32 == 1 && v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24[2]);
  }

  if (*(v3 + 192))
  {
    sub_2711308D4();
  }

LABEL_76:
  v19 = *a2;
  v24[0] = a2[1];
  v20 = v24[0];
  v36[0] = 6;
  v19[13](a2, v36);
  if (v20 < 1)
  {
    if (v36[0] < 3)
    {
      sub_2713C66D4(v36, a2, v3 + 16, v36[0]);
    }

    else
    {
      sub_2713C68E0(a2, v3 + 16, v36[0]);
    }
  }

  else
  {
    sub_2713C62C8(v24, a2, v3 + 16, v36[0]);
  }

  v21 = *a2;
  v24[0] = a2[1];
  v22 = v24[0];
  v36[0] = 1;
  v21[13](a2, v36);
  if (v22 < 1)
  {
    sub_271493E6C(a2, v3 + 200);
  }

  else
  {
    sub_271493CC4(v24, a2, v3 + 200);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_271490388(uint64_t *a1, uint64_t a2)
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

void sub_271490860(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "src_to_dst";
  *(a1 + 96) = 10;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v6[0] = *(a1 + 32);
  v5 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v6);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v6[0] = "version";
  v6[1] = 7;
  v7 = 1;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, &v7);
  sub_2714909B8(a1, a2 + 8);
}

void sub_2714909B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  *(a1 + 88) = "se3_type";
  *(a1 + 96) = 8;
  if ((v2 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v3 = a2;
  sub_271490DEC(a1);
}

void sub_271490DEC(void *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v2 = sub_27182D6C4(a1);
  ++a1[14];
  v6 = 0;
  v5 = 0uLL;
  sub_2715D6E6C(v2, &v5);
  v4 = v6;
  *__p = v5;
  operator new();
}

void sub_271490EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_271490F70(uint64_t *a1, uint64_t a2)
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
  result = sub_271491394(v21, a2, v3 + 200);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_271491394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  sub_27183FF6C(*(a2 + 48), &v9);
  *&v8 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v8 + 1) = v9;
  sub_2713BF82C(a2 + 24, &v8);
  sub_2714914A0(a2, a3);
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

void sub_2714914A0(uint64_t a1, uint64_t a2)
{
  v5 = 1;
  sub_27183FB7C(*(a1 + 48), &v5);
  sub_2714915C4(&v4, a1, a2 + 8);
  v6 = 0;
  sub_27183F824(*(a1 + 48), &v6);
  if (v6)
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      *(a2 + 120) = 0;
      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      *(a2 + 144) = 1;
    }

    sub_2718403E0(*(a1 + 48), (a2 + 120));
  }

  else if (*(a2 + 144))
  {
    if (*(a2 + 143) < 0)
    {
      operator delete(*(a2 + 120));
    }

    *(a2 + 144) = 0;
  }

  v7 = 0;
  sub_27183F824(*(a1 + 48), &v7);
  if (v7)
  {
    if ((*(a2 + 176) & 1) == 0)
    {
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
      *(a2 + 168) = 0;
      *(a2 + 176) = 1;
    }

    sub_2718403E0(*(a1 + 48), (a2 + 152));
  }

  else if (*(a2 + 176))
  {
    if (*(a2 + 175) < 0)
    {
      operator delete(*(a2 + 152));
    }

    *(a2 + 176) = 0;
  }
}

uint64_t sub_2714915C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  sub_27183FF6C(*(a2 + 48), &v9);
  *&v8 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v8 + 1) = v9;
  sub_2713BF82C(a2 + 24, &v8);
  sub_2714916D0(a2, a3);
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

void sub_2714916D0(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  sub_27183F824(*(a1 + 48), &v15);
  v4 = v15;
  *a2 = v15;
  if (v4 <= 3)
  {
    if (v4 != 1)
    {
      if (v4 != 2)
      {
        return;
      }

      if (*(a2 + 104) != 3)
      {
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 104) = 3;
      }

      v5 = *(a1 + 48);
      sub_2718401A8(v5, (a2 + 8));
      sub_2718401A8(v5, (a2 + 16));
      sub_2718401A8(v5, (a2 + 24));
      v6 = *(a1 + 48);
      sub_2718401A8(v6, (a2 + 32));
      sub_2718401A8(v6, (a2 + 40));
      v7 = (a2 + 48);
      goto LABEL_12;
    }

    if (*(a2 + 104) != 2)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 104) = 2;
    }

    v10 = *(a1 + 48);
    sub_271840060(v10, (a2 + 8));
    sub_271840060(v10, (a2 + 12));
    sub_271840060(v10, (a2 + 16));
    v11 = *(a1 + 48);
    sub_271840060(v11, (a2 + 20));
    sub_271840060(v11, (a2 + 24));
    v12 = (a2 + 28);
LABEL_20:
    sub_271840060(v11, v12);
    return;
  }

  if (v4 == 4)
  {
    if (*(a2 + 104))
    {
      *(a2 + 40) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 8) = 0u;
      *(a2 + 104) = 0;
    }

    v13 = *(a1 + 48);
    sub_271840060(v13, (a2 + 8));
    sub_271840060(v13, (a2 + 12));
    sub_271840060(v13, (a2 + 16));
    sub_271840060(v13, (a2 + 20));
    v14 = *(a1 + 48);
    sub_271840060(v14, (a2 + 24));
    sub_271840060(v14, (a2 + 28));
    sub_271840060(v14, (a2 + 32));
    sub_271840060(v14, (a2 + 36));
    v11 = *(a1 + 48);
    sub_271840060(v11, (a2 + 40));
    sub_271840060(v11, (a2 + 44));
    sub_271840060(v11, (a2 + 48));
    v12 = (a2 + 52);
    goto LABEL_20;
  }

  if (v4 != 5)
  {
    return;
  }

  if (*(a2 + 104) != 1)
  {
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 104) = 1;
  }

  v8 = *(a1 + 48);
  sub_2718401A8(v8, (a2 + 8));
  sub_2718401A8(v8, (a2 + 16));
  sub_2718401A8(v8, (a2 + 24));
  sub_2718401A8(v8, (a2 + 32));
  v9 = *(a1 + 48);
  sub_2718401A8(v9, (a2 + 40));
  sub_2718401A8(v9, (a2 + 48));
  sub_2718401A8(v9, (a2 + 56));
  sub_2718401A8(v9, (a2 + 64));
  v6 = *(a1 + 48);
  sub_2718401A8(v6, (a2 + 72));
  sub_2718401A8(v6, (a2 + 80));
  sub_2718401A8(v6, (a2 + 88));
  v7 = (a2 + 96);
LABEL_12:
  sub_2718401A8(v6, v7);
}

void sub_2714919B4(uint64_t *a1, uint64_t a2)
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

void sub_271491E8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "src_to_dst";
  *(a1 + 96) = 10;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v6[0] = *(a1 + 32);
  v5 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v6);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v6[0] = "version";
  v6[1] = 7;
  v7 = 1;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182DBE0(a1, &v7);
  sub_271491FE4(a1, a2 + 8);
}

void sub_271491FE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  *(a1 + 88) = "se3_type";
  *(a1 + 96) = 8;
  if ((v2 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v3 = a2;
  sub_271492418(a1);
}

void sub_271492418(void *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v2 = sub_27182D2AC(a1);
  ++a1[14];
  v6 = 0;
  v5 = 0uLL;
  sub_2715D666C(v2, &v5);
  v4 = v6;
  *__p = v5;
  operator new();
}

void sub_271492508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_27184D728(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_27149259C(uint64_t *a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_2713DA430(v3 + 16, &v23);
      sub_2713B2524(v37, &v23);
      sub_2713E031C(v3 + 16, v37);
      if (v49 == 1)
      {
        v5 = __p;
        if (__p)
        {
          v6 = v48;
          v7 = __p;
          if (v48 != __p)
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

          v48 = v5;
          operator delete(v7);
        }
      }

      if (v46 == 1 && v45 < 0)
      {
        operator delete(v44);
      }

      if (v43 == 1 && v42 < 0)
      {
        operator delete(v41);
      }

      if (v40 == 1 && v39 < 0)
      {
        operator delete(v38);
      }

      if (v36 != 1)
      {
        goto LABEL_66;
      }

      v13 = v34;
      if (!v34)
      {
        goto LABEL_66;
      }

      v14 = v35;
      v15 = v34;
      if (v35 == v34)
      {
LABEL_65:
        v35 = v13;
        operator delete(v15);
LABEL_66:
        if (v33 == 1 && v32 < 0)
        {
          operator delete(v31);
        }

        if (v30 == 1 && v29 < 0)
        {
          operator delete(v28);
        }

        if (v27 == 1 && v26 < 0)
        {
          operator delete(v25);
        }

        if (*(v3 + 192))
        {
          sub_2711308D4();
        }

        goto LABEL_76;
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

    sub_271399EB0(v3 + 16, &v23);
    sub_2713B2524(v37, &v23);
    sub_2713E031C(v3 + 16, v37);
    if (v49 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v48;
        v11 = __p;
        if (v48 != __p)
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

        v48 = v9;
        operator delete(v11);
      }
    }

    if (v46 == 1 && v45 < 0)
    {
      operator delete(v44);
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v36 != 1)
    {
      goto LABEL_66;
    }

    v13 = v34;
    if (!v34)
    {
      goto LABEL_66;
    }

    v17 = v35;
    v15 = v34;
    if (v35 == v34)
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
        v15 = v34;
        goto LABEL_65;
      }
    }
  }

LABEL_76:
  LODWORD(v23) = 6;
  sub_27183A9AC(a2, &v23);
  if (v23 >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = v23;
  }

  if (v23 > 2)
  {
    sub_2713C32B8(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_27183D78C(a2, &v23);
      if (SHIBYTE(v25) < 0)
      {
        if (v24 == 1 && *(a2 + 72) == *v23)
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v25) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v25) == 1 && *(a2 + 72) == v23)
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v25) < 0)
      {
LABEL_93:
        operator delete(v23);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  sub_2713C30AC(&v23, a2, v3 + 16, v19);
LABEL_95:
  LODWORD(v23) = 1;
  sub_27183A9AC(a2, &v23);
  sub_271492B30(a2, v3 + 200);
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a2, &v23);
    if (SHIBYTE(v25) < 0)
    {
      if (v24 == 1 && *(a2 + 72) == *v23)
      {
LABEL_105:
        v21 = 0;
        if (SHIBYTE(v25) < 0)
        {
          goto LABEL_108;
        }

        goto LABEL_96;
      }
    }

    else if (SHIBYTE(v25) == 1 && *(a2 + 72) == v23)
    {
      goto LABEL_105;
    }

    v21 = 1;
    if (SHIBYTE(v25) < 0)
    {
LABEL_108:
      operator delete(v23);
    }

LABEL_96:
    if ((v21 & 1) == 0)
    {
      break;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_271492B30(uint64_t a1, uint64_t a2)
{
  LODWORD(__p[0]) = 1;
  sub_27183A9AC(a1, __p);
  sub_271492DCC(a1, a2 + 8);
  while ((*(a1 + 131) & 1) == 0 && (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) == 0)
  {
    sub_27183D78C(a1, __p);
    if (SHIBYTE(v7) < 0)
    {
      if (__p[1] == 1 && *(a1 + 72) == *__p[0])
      {
LABEL_11:
        v4 = 0;
        if (SHIBYTE(v7) < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_2;
      }
    }

    else if (SHIBYTE(v7) == 1 && *(a1 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_11;
    }

    v4 = 1;
    if (SHIBYTE(v7) < 0)
    {
LABEL_14:
      operator delete(__p[0]);
    }

LABEL_2:
    if ((v4 & 1) == 0)
    {
      break;
    }
  }

  v5 = 0;
  sub_271839D90(a1, &v5);
  if (v5)
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      *(a2 + 120) = 0;
      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      *(a2 + 144) = 1;
    }

    ++*(a1 + 80);
    if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
    {
      *(a1 + 132) = 1;
    }

    else
    {
      sub_27183D78C(a1, __p);
      if (*(a2 + 143) < 0)
      {
        operator delete(*(a2 + 120));
      }

      *(a2 + 120) = *__p;
      *(a2 + 136) = v7;
      ++*(a1 + 104);
    }
  }

  else if (*(a2 + 144))
  {
    if (*(a2 + 143) < 0)
    {
      operator delete(*(a2 + 120));
    }

    *(a2 + 144) = 0;
  }

  v5 = 0;
  sub_271839D90(a1, &v5);
  if (v5)
  {
    if ((*(a2 + 176) & 1) == 0)
    {
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
      *(a2 + 168) = 0;
      *(a2 + 176) = 1;
    }

    ++*(a1 + 80);
    if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
    {
      *(a1 + 132) = 1;
    }

    else
    {
      sub_27183D78C(a1, __p);
      if (*(a2 + 175) < 0)
      {
        operator delete(*(a2 + 152));
      }

      *(a2 + 152) = *__p;
      *(a2 + 168) = v7;
      ++*(a1 + 104);
    }
  }

  else if (*(a2 + 176))
  {
    if (*(a2 + 175) < 0)
    {
      operator delete(*(a2 + 152));
    }

    *(a2 + 176) = 0;
  }
}

void sub_271492DCC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  sub_271839D90(a1, &v6);
  v4 = v6;
  *a2 = v6;
  if (v4 > 3)
  {
    if (v4 != 4)
    {
      if (v4 != 5)
      {
        return;
      }

      if (*(a2 + 104) != 1)
      {
        *(a2 + 88) = 0u;
        *(a2 + 72) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 104) = 1;
      }

      sub_27183C0A0(a1, (a2 + 8));
      sub_27183C0A0(a1, (a2 + 16));
      sub_27183C0A0(a1, (a2 + 24));
      sub_27183C0A0(a1, (a2 + 32));
      sub_27183C0A0(a1, (a2 + 40));
      sub_27183C0A0(a1, (a2 + 48));
      sub_27183C0A0(a1, (a2 + 56));
      sub_27183C0A0(a1, (a2 + 64));
      sub_27183C0A0(a1, (a2 + 72));
      sub_27183C0A0(a1, (a2 + 80));
      sub_27183C0A0(a1, (a2 + 88));
      v5 = (a2 + 96);
      goto LABEL_12;
    }

    if (*(a2 + 104))
    {
      *(a2 + 40) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 8) = 0u;
      *(a2 + 104) = 0;
    }

    sub_27183BD60(a1, (a2 + 8));
    sub_27183BD60(a1, (a2 + 12));
    sub_27183BD60(a1, (a2 + 16));
    sub_27183BD60(a1, (a2 + 20));
    sub_27183BD60(a1, (a2 + 24));
    sub_27183BD60(a1, (a2 + 28));
    sub_27183BD60(a1, (a2 + 32));
    sub_27183BD60(a1, (a2 + 36));
    sub_27183BD60(a1, (a2 + 40));
    sub_27183BD60(a1, (a2 + 44));
    sub_27183BD60(a1, (a2 + 48));
    sub_27183BD60(a1, (a2 + 52));
  }

  else
  {
    if (v4 != 1)
    {
      if (v4 != 2)
      {
        return;
      }

      if (*(a2 + 104) != 3)
      {
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 104) = 3;
      }

      sub_27183C0A0(a1, (a2 + 8));
      sub_27183C0A0(a1, (a2 + 16));
      sub_27183C0A0(a1, (a2 + 24));
      sub_27183C0A0(a1, (a2 + 32));
      sub_27183C0A0(a1, (a2 + 40));
      v5 = (a2 + 48);
LABEL_12:
      sub_27183C0A0(a1, v5);
      return;
    }

    if (*(a2 + 104) != 2)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 104) = 2;
    }

    sub_27183BD60(a1, (a2 + 8));
    sub_27183BD60(a1, (a2 + 12));
    sub_27183BD60(a1, (a2 + 16));
    sub_27183BD60(a1, (a2 + 20));
    sub_27183BD60(a1, (a2 + 24));
    sub_27183BD60(a1, (a2 + 28));
  }
}

void *sub_27149308C(uint64_t *a1, void *a2)
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
  result = sub_27149347C(v21, a2, v3 + 200);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_27149347C(uint64_t a1, void *a2, uint64_t a3)
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
  sub_271493598(&v13, a2, a3 + 8);
  v13 = "src";
  v14 = 3;
  v15 = a3 + 120;
  sub_2713C4ED8(a2, &v13);
  v13 = "dst";
  v14 = 3;
  v15 = a3 + 152;
  result = sub_2713C4ED8(a2, &v13);
  v10 = a2[12];
  v11 = a2[9];
  a2[6] = *(v10 - 8) + *(v11 - 8) + 8;
  a2[9] = v11 - 8;
  a2[12] = v10 - 8;
  return result;
}

void sub_271493598(uint64_t a1, void *a2, uint64_t a3)
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
  sub_271493674(a2, a3);
  v10 = a2[12];
  v11 = a2[9];
  a2[6] = *(v10 - 8) + *(v11 - 8) + 8;
  a2[9] = v11 - 8;
  a2[12] = v10 - 8;
}

double sub_271493674(void *a1, uint64_t a2)
{
  v2 = a1[6];
  if (a1[7] <= v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v3 = *(a1[3] + v2);
  a1[6] = v2 + 1;
  *a2 = v3;
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      if (*(a2 + 104))
      {
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 104) = 0;
      }

      v6 = a2 + 8;

      *&result = sub_271493A30(a1, v6).n128_u64[0];
    }

    else if (v3 == 5)
    {
      if (*(a2 + 104) != 1)
      {
        *(a2 + 88) = 0u;
        *(a2 + 72) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 104) = 1;
      }

      v5 = (a2 + 8);

      *&result = sub_271493B74(a1, v5).n128_u64[0];
    }
  }

  else if (v3 == 1)
  {

    sub_2714937E8(a1, a2);
  }

  else if (v3 == 2)
  {

    *&result = sub_271493908(a1, a2).n128_u64[0];
  }

  return result;
}

void *sub_2714937E8(void *result, uint64_t a2)
{
  if (*(a2 + 104) != 2)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 104) = 2;
  }

  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xB)
  {
    goto LABEL_10;
  }

  v6 = (result[3] + v2);
  v7 = *v6;
  *(a2 + 16) = *(v6 + 2);
  *(a2 + 8) = v7;
  v8 = result[7];
  v9 = result[6] + 12;
  result[6] = v9;
  v4 = v8 >= v9;
  v10 = v8 - v9;
  if (!v4)
  {
    v10 = 0;
  }

  if (v10 <= 0xB)
  {
LABEL_10:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v11 = result[3] + v9;
  v12 = *v11;
  *(a2 + 28) = *(v11 + 8);
  *(a2 + 20) = v12;
  result[6] += 12;
  return result;
}

__n128 sub_271493908(void *a1, uint64_t a2)
{
  if (*(a2 + 104) != 3)
  {
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 104) = 3;
  }

  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0x17)
  {
    goto LABEL_10;
  }

  v6 = (a1[3] + v2);
  v7 = *v6;
  *(a2 + 24) = *(v6 + 2);
  *(a2 + 8) = v7;
  v8 = a1[7];
  v9 = a1[6] + 24;
  a1[6] = v9;
  v4 = v8 >= v9;
  v10 = v8 - v9;
  if (!v4)
  {
    v10 = 0;
  }

  if (v10 <= 0x17)
  {
LABEL_10:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v11 = (a1[3] + v9);
  result = *v11;
  *(a2 + 48) = v11[1].n128_u64[0];
  *(a2 + 32) = result;
  a1[6] += 24;
  return result;
}

__n128 sub_271493A30(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xF)
  {
    goto LABEL_11;
  }

  *a2 = *(a1[3] + v2);
  v6 = a1[7];
  v7 = a1[6] + 16;
  a1[6] = v7;
  v4 = v6 >= v7;
  v8 = v6 - v7;
  if (!v4)
  {
    v8 = 0;
  }

  if (v8 <= 0xF)
  {
    goto LABEL_11;
  }

  *(a2 + 16) = *(a1[3] + v7);
  v9 = a1[7];
  v10 = a1[6] + 16;
  a1[6] = v10;
  v4 = v9 >= v10;
  v11 = v9 - v10;
  if (!v4)
  {
    v11 = 0;
  }

  if (v11 <= 0xF)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  result = *(a1[3] + v10);
  *(a2 + 32) = result;
  a1[6] += 16;
  return result;
}

__n128 sub_271493B74(void *a1, _OWORD *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0x1F)
  {
    goto LABEL_11;
  }

  v6 = (a1[3] + v2);
  v7 = v6[1];
  *a2 = *v6;
  a2[1] = v7;
  v8 = a1[7];
  v9 = a1[6] + 32;
  a1[6] = v9;
  v4 = v8 >= v9;
  v10 = v8 - v9;
  if (!v4)
  {
    v10 = 0;
  }

  if (v10 <= 0x1F)
  {
    goto LABEL_11;
  }

  v11 = (a1[3] + v9);
  v12 = v11[1];
  a2[2] = *v11;
  a2[3] = v12;
  v13 = a1[7];
  v14 = a1[6] + 32;
  a1[6] = v14;
  v4 = v13 >= v14;
  v15 = v13 - v14;
  if (!v4)
  {
    v15 = 0;
  }

  if (v15 <= 0x1F)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_271128104(exception, "Not enough data to read span");
    __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
  }

  v16 = a1[3] + v14;
  result = *v16;
  v18 = *(v16 + 16);
  a2[4] = *v16;
  a2[5] = v18;
  a1[6] += 32;
  return result;
}

void sub_271493CC4(int *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    v8 = 1;
    (*(*a2 + 104))(a2, &v8);
    if (v8 >= 2)
    {
      v7 = v8;
      if ((atomic_load_explicit(&qword_280878D30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878D30))
      {
        sub_2718519B4("cv3d::kit::viz::Transform3Sample]", 0x20uLL, &stru_280878D18);
        __cxa_guard_release(&qword_280878D30);
        sub_271847D5C(&stru_280878D18, v7, 1u);
      }

      sub_271847D5C(&stru_280878D18, v7, 1u);
    }

    v5 = *a1;
  }

  if (v5 <= 0)
  {
    sub_271493E6C(a2, a3);
  }

  else
  {
    (*(*a2 + 16))(a2);
    sub_271493E6C(a2, a3);
    (*(*a2 + 24))(a2);
  }
}

void sub_271493E6C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = 1;
  (*(v4 + 104))(a1, &v6);
  if (v5 < 1)
  {
    sub_271494204(a1, (a2 + 8));
  }

  else
  {
    sub_27149405C(&v5, a1, (a2 + 8));
  }

  v7 = 0;
  (*(*a1 + 80))(a1, &v7);
  if (v7)
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      *(a2 + 120) = 0;
      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      *(a2 + 144) = 1;
    }

    (*(*a1 + 144))(a1, a2 + 120);
  }

  else if (*(a2 + 144))
  {
    if (*(a2 + 143) < 0)
    {
      operator delete(*(a2 + 120));
    }

    *(a2 + 144) = 0;
  }

  v8 = 0;
  (*(*a1 + 80))(a1, &v8);
  if (v8)
  {
    if ((*(a2 + 176) & 1) == 0)
    {
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
      *(a2 + 168) = 0;
      *(a2 + 176) = 1;
    }

    (*(*a1 + 144))(a1, a2 + 152);
  }

  else if (*(a2 + 176))
  {
    if (*(a2 + 175) < 0)
    {
      operator delete(*(a2 + 152));
    }

    *(a2 + 176) = 0;
  }
}

uint64_t sub_27149405C(int *a1, _BYTE *a2, unsigned __int8 *a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    v9 = 1;
    (*(*a2 + 104))(a2, &v9);
    if (v9 >= 2)
    {
      v8 = v9;
      if ((atomic_load_explicit(&qword_280878D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878D50))
      {
        sub_2718519B4("cv3d::kit::viz::SE3Sample]", 0x19uLL, &stru_280878D38);
        __cxa_guard_release(&qword_280878D50);
        sub_271847D5C(&stru_280878D38, v8, 1u);
      }

      sub_271847D5C(&stru_280878D38, v8, 1u);
    }

    v5 = *a1;
  }

  if (v5 <= 0)
  {
    return sub_271494204(a2, a3);
  }

  (*(*a2 + 16))(a2);
  sub_271494204(a2, a3);
  return (*(*a2 + 24))(a2);
}

uint64_t sub_271494204(_BYTE *a1, unsigned __int8 *a2)
{
  v6 = a2;
  result = sub_27149454C(a1, &v6);
  v5 = *a2;
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      if (*(a2 + 26))
      {
        *(a2 + 24) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 26) = 0;
      }

      v6 = a2 + 8;
      return sub_2714946C4(a1, &v6);
    }

    else if (v5 == 5)
    {
      if (*(a2 + 26) != 1)
      {
        *(a2 + 72) = 0u;
        *(a2 + 88) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 26) = 1;
      }

      v6 = a2 + 8;
      return sub_271494900(a1, &v6);
    }
  }

  else if (v5 == 1)
  {
    if (*(a2 + 26) != 2)
    {
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *(a2 + 3) = 0;
      *(a2 + 26) = 2;
    }

    (*(*a1 + 128))(a1, a2 + 8);
    (*(*a1 + 128))(a1, a2 + 12);
    (*(*a1 + 128))(a1, a2 + 16);
    (*(*a1 + 128))(a1, a2 + 20);
    (*(*a1 + 128))(a1, a2 + 24);
    return (*(*a1 + 128))(a1, a2 + 28);
  }

  else if (v5 == 2)
  {
    if (*(a2 + 26) != 3)
    {
      *(a2 + 40) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 8) = 0u;
      *(a2 + 26) = 3;
    }

    (*(*a1 + 136))(a1, a2 + 8);
    (*(*a1 + 136))(a1, a2 + 16);
    (*(*a1 + 136))(a1, a2 + 24);
    (*(*a1 + 136))(a1, a2 + 32);
    (*(*a1 + 136))(a1, a2 + 40);
    return (*(*a1 + 136))(a1, a2 + 48);
  }

  return result;
}

uint64_t sub_27149454C(_BYTE *a1, _BYTE **a2)
{
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  LOBYTE(__p[0]) = 0;
  result = (*(*a1 + 80))(a1, __p);
  **a2 = __p[0];
  return result;
}

void sub_271494670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_27184D728(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2714946C4(uint64_t a1, void *a2)
{
  v3 = *a2;
  (*(*a1 + 128))(a1, *a2);
  (*(*a1 + 128))(a1, v3 + 4);
  (*(*a1 + 128))(a1, v3 + 8);
  (*(*a1 + 128))(a1, v3 + 12);
  (*(*a1 + 128))(a1, v3 + 16);
  (*(*a1 + 128))(a1, v3 + 20);
  (*(*a1 + 128))(a1, v3 + 24);
  (*(*a1 + 128))(a1, v3 + 28);
  (*(*a1 + 128))(a1, v3 + 32);
  (*(*a1 + 128))(a1, v3 + 36);
  (*(*a1 + 128))(a1, v3 + 40);
  v4 = *(*a1 + 128);

  return v4(a1, v3 + 44);
}

uint64_t sub_271494900(uint64_t a1, void *a2)
{
  v3 = *a2;
  (*(*a1 + 136))(a1, *a2);
  (*(*a1 + 136))(a1, v3 + 8);
  (*(*a1 + 136))(a1, v3 + 16);
  (*(*a1 + 136))(a1, v3 + 24);
  (*(*a1 + 136))(a1, v3 + 32);
  (*(*a1 + 136))(a1, v3 + 40);
  (*(*a1 + 136))(a1, v3 + 48);
  (*(*a1 + 136))(a1, v3 + 56);
  (*(*a1 + 136))(a1, v3 + 64);
  (*(*a1 + 136))(a1, v3 + 72);
  (*(*a1 + 136))(a1, v3 + 80);
  v4 = *(*a1 + 136);

  return v4(a1, v3 + 88);
}

uint64_t sub_271494DC0(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0(a1 + 16, &v38);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v38);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v38);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_271399EB0(a2 + 16, &v23);
  }

  else if (v5 == 1)
  {
    sub_2713DA430(a2 + 16, &v23);
  }

  else
  {
    if (v5)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a2 + 16, &v23);
  }

  if (v38 != v23 || v39 != v24)
  {
    goto LABEL_23;
  }

  v22[0] = &v40;
  v22[1] = &v43;
  v22[2] = &v44;
  v22[3] = &v47;
  v22[4] = &v50;
  v21[0] = &v25;
  v21[1] = &v28;
  v21[2] = &v29;
  v21[3] = &v32;
  v21[4] = &__p;
  if (!sub_2714FBB90(v22, v21))
  {
    v8 = 0;
    goto LABEL_26;
  }

  if (*(a1 + 200) != *(a2 + 200))
  {
LABEL_23:
    v8 = 0;
    if (v37 != 1)
    {
      goto LABEL_40;
    }

    goto LABEL_27;
  }

  v6 = *(a2 + 256);
  v7 = *(a1 + 256);
  v8 = v7 == v6;
  if (v7 != v6 || !*(a1 + 256) || (v9 = *(a1 + 248), v10 = *(a2 + 248), v8 = v10 == v9, v9 == -1) || v10 != v9)
  {
LABEL_26:
    if (v37 != 1)
    {
      goto LABEL_40;
    }

    goto LABEL_27;
  }

  v22[0] = v21;
  v8 = (off_288131AC0[v9])(v22, a1 + 208, a2 + 208);
  if (v37 != 1)
  {
    goto LABEL_40;
  }

LABEL_27:
  v11 = __p;
  if (__p)
  {
    v12 = v36;
    v13 = __p;
    if (v36 == __p)
    {
LABEL_39:
      v36 = v11;
      operator delete(v13);
      goto LABEL_40;
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
LABEL_34:
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
          goto LABEL_34;
        }
      }

      if (v12 == v11)
      {
        v13 = __p;
        goto LABEL_39;
      }
    }
  }

LABEL_40:
  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (v52 == 1)
  {
    v15 = v50;
    if (v50)
    {
      v16 = v51;
      v17 = v50;
      if (v51 == v50)
      {
LABEL_62:
        v51 = v15;
        operator delete(v17);
        goto LABEL_63;
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
LABEL_57:
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
            goto LABEL_57;
          }
        }

        if (v16 == v15)
        {
          v17 = v50;
          goto LABEL_62;
        }
      }
    }
  }

LABEL_63:
  if (v49 == 1 && v48 < 0)
  {
    operator delete(v47);
  }

  if (v46 == 1 && v45 < 0)
  {
    operator delete(v44);
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_2714951A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_271134CBC(v47);
  sub_271134CBC(&a47);
  _Unwind_Resume(a1);
}

BOOL sub_2714951E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

BOOL sub_271495254(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
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

void sub_2714952A8(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v6)
  {
    sub_271495890(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v8)
  {
    sub_27149689C(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v10)
    {
      sub_271497248(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v12)
    {
      sub_271498254(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v14)
      {
        sub_2714988A0(&v16, v14);
      }

      else
      {
        sub_271495474(&v15, a1);
      }
    }
  }
}