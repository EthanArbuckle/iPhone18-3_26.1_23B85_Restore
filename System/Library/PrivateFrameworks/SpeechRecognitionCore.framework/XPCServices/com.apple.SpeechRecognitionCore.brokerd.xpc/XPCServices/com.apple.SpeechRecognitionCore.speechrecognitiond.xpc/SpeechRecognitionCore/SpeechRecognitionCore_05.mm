void sub_100078398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100078424(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1000784C4(a1, a2);
  }

  else
  {
    sub_100078464(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100078464(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_100019D20(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_1000784C4(uint64_t a1, uint64_t *a2)
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

  v18 = a1;
  if (v6)
  {
    sub_100017DF0(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_100019D20(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_100019EAC(&v14);
  return v8;
}

void sub_1000785EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100019EAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100078600(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    sub_100017658();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    sub_100019B2C(a1, v7);
  }

  v13 = 0;
  v14 = 48 * v3;
  v15 = 48 * v3;
  v16 = 0;
  sub_100016E28((48 * v3), a2, a3);
  v8 = *(a1 + 8) - *a1;
  v9 = (48 * v3 - v8);
  memcpy(v9, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = 48 * v3 + 48;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_100019E30(&v13);
  return 48 * v3 + 48;
}

void sub_100078714(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100019E30(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100078794(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_100101638;
  sub_100078870((a1 + 24), a2);
  return a1;
}

void sub_100078810(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100101638;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

char *sub_100078870(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000732A4(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v3;
  }

  *(__dst + 3) = 0;
  *(__dst + 4) = 0;
  sub_1000C44EC(__dst + 40);
  *(__dst + 14) = 0;
  *(__dst + 15) = 0;
  *(__dst + 19) = 0;
  *(__dst + 18) = 0;
  *(__dst + 16) = 0;
  *(__dst + 17) = __dst + 144;
  __dst[160] = 0;
  *(__dst + 168) = 0u;
  *(__dst + 184) = 0u;
  *(__dst + 200) = 0u;
  *(__dst + 27) = 850045863;
  *(__dst + 14) = 0u;
  *(__dst + 15) = 0u;
  *(__dst + 16) = 0u;
  *(__dst + 34) = 0;
  return __dst;
}

void sub_10007890C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100078928(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void sub_100078A30(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_1000113AC(v16, "");
  sub_1000113AC(__p, "");
  sub_100078B24(a1, a2, a3, v16, a4, a5, a6, __p, a7);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_100078AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_100078B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = a1;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  if (a2 && a3)
  {
    v16 = *(a4 + 23);
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a4 + 8);
    }

    if (v16)
    {
      v17 = (*(*a3 + 80))(a3, a4);
      if (v17 == -1)
      {
        if (dword_10010E8A8 >= 1)
        {
          sub_1000113AC(&__p, "INFO");
          sub_10002B1D4(v69, &__p);
          v19 = sub_10002AE44(&std::cerr, "Input symbol '", 14);
          v20 = *(a4 + 23);
          v21 = v20 >= 0 ? a4 : *a4;
          v22 = v20 >= 0 ? *(a4 + 23) : *(a4 + 8);
          v23 = sub_10002AE44(v19, v21, v22);
          sub_10002AE44(v23, "' missing from target symbol table", 34);
          sub_10002B280(v69);
          if (SHIBYTE(v73) < 0)
          {
            operator delete(__p);
          }
        }

        v17 = -1;
        v18 = 1;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      v17 = -1;
    }

    v24 = (*(*a2 + 120))(a2);
    v25 = (*(*a2 + 64))(a2, 0);
    v61 = a5;
    v62 = a8;
    if (v24)
    {
      v26 = v25;
      v27 = v17;
      v64 = v17;
      v28 = 1;
      v29 = v24;
      do
      {
        (*(*a2 + 72))(&__p, a2, v26);
        (*(*a2 + 72))(v69, a2, v26);
        v30 = (*(*a3 + 80))(a3, v69);
        if (v70 < 0)
        {
          operator delete(v69[0]);
        }

        v31 = v64;
        if (v30 == -1)
        {
          v32 = v27 == -1;
        }

        else
        {
          v31 = v30;
          v32 = 0;
        }

        if (v32)
        {
          if (dword_10010E8A8 >= 1)
          {
            sub_1000113AC(v69, "INFO");
            sub_10002B1D4(v67, v69);
            sub_10002AE44(&std::cerr, "Input symbol ID ", 16);
            v33 = std::ostream::operator<<();
            v34 = sub_10002AE44(v33, " symbol '", 9);
            v35 = v73 >= 0 ? &__p : __p;
            v36 = v73 >= 0 ? HIBYTE(v73) : v72;
            v37 = sub_10002AE44(v34, v35, v36);
            sub_10002AE44(v37, "' missing from target symbol table", 34);
            sub_10002B280(v67);
            if (v70 < 0)
            {
              operator delete(v69[0]);
            }
          }

          ++v18;
          v31 = -1;
        }

        v69[0] = __PAIR64__(v31, v26);
        sub_100013E6C(&v74, v69);
        if (SHIBYTE(v73) < 0)
        {
          operator delete(__p);
        }

        if (v28 < v24)
        {
          v26 = (*(*a2 + 64))(a2, v28);
        }

        ++v28;
        --v29;
      }

      while (v29);
    }

    a8 = v62;
    v11 = a1;
    if (v18)
    {
      sub_1000113AC(&__p, "WARNING");
      sub_10002B1D4(v69, &__p);
      sub_10002AE44(&std::cerr, "Target symbol table missing: ", 29);
      v38 = std::ostream::operator<<();
      sub_10002AE44(v38, " input symbols", 14);
      sub_10002B280(v69);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(__p);
        if (!v61)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    if (v61)
    {
LABEL_46:
      (*(*a1 + 256))(a1, a3);
    }
  }

LABEL_47:
  __p = 0;
  v72 = 0;
  v73 = 0;
  if (a6 && a7)
  {
    v39 = *(a8 + 23);
    if ((v39 & 0x80u) != 0)
    {
      v39 = *(a8 + 8);
    }

    if (v39)
    {
      v40 = (*(*a7 + 80))(a7, a8);
      if (v40 == -1)
      {
        if (dword_10010E8A8 >= 1)
        {
          sub_1000113AC(v69, "INFO");
          sub_10002B1D4(v67, v69);
          v42 = sub_10002AE44(&std::cerr, "Output symbol '", 15);
          v43 = *(a8 + 23);
          v44 = v43 >= 0 ? a8 : *a8;
          v45 = v43 >= 0 ? *(a8 + 23) : *(a8 + 8);
          v46 = sub_10002AE44(v42, v44, v45);
          sub_10002AE44(v46, "' missing from target symbol table", 34);
          sub_10002B280(v67);
          if (v70 < 0)
          {
            operator delete(v69[0]);
          }
        }

        v40 = -1;
        v41 = 1;
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
      v40 = -1;
    }

    v47 = (*(*a6 + 120))(a6);
    v48 = (*(*a6 + 64))(a6, 0);
    if (v47)
    {
      v49 = v48;
      v50 = 1;
      v51 = v47;
      do
      {
        (*(*a6 + 72))(v69, a6, v49);
        (*(*a6 + 72))(v67, a6, v49);
        v52 = (*(*a7 + 80))(a7, v67);
        if (v68 < 0)
        {
          operator delete(v67[0]);
        }

        if (v52 == -1)
        {
          v53 = v40;
        }

        else
        {
          v53 = v52;
        }

        if (v52 == -1 && v40 == -1)
        {
          if (dword_10010E8A8 >= 1)
          {
            sub_1000113AC(v67, "INFO");
            sub_10002B1D4(&v66, v67);
            sub_10002AE44(&std::cerr, "Output symbol ID ", 17);
            v55 = std::ostream::operator<<();
            v56 = sub_10002AE44(v55, " symbol '", 9);
            v57 = (v70 & 0x80u) == 0 ? v69 : v69[0];
            v58 = (v70 & 0x80u) == 0 ? v70 : v69[1];
            v59 = sub_10002AE44(v56, v57, v58);
            sub_10002AE44(v59, "' missing from target symbol table", 34);
            sub_10002B280(&v66);
            if (v68 < 0)
            {
              operator delete(v67[0]);
            }
          }

          ++v41;
          v53 = -1;
        }

        v67[0] = __PAIR64__(v53, v49);
        sub_100013E6C(&__p, v67);
        if (v70 < 0)
        {
          operator delete(v69[0]);
        }

        if (v50 < v47)
        {
          v49 = (*(*a6 + 64))(a6, v50);
        }

        ++v50;
        --v51;
      }

      while (v51);
    }

    v11 = a1;
    if (v41)
    {
      sub_1000113AC(v69, "WARNING");
      sub_10002B1D4(v67, v69);
      sub_10002AE44(&std::cerr, "Target symbol table missing: ", 29);
      v60 = std::ostream::operator<<();
      sub_10002AE44(v60, " output symbols", 15);
      sub_10002B280(v67);
      if (v70 < 0)
      {
        operator delete(v69[0]);
      }
    }

    if (a9)
    {
      (*(*a1 + 264))(a1, a7);
    }
  }

  sub_1000794C8(v11, &v74, &__p);
  if (__p)
  {
    v72 = __p;
    operator delete(__p);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }
}

void sub_10007939C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  v37 = *(v35 - 104);
  if (v37)
  {
    *(v35 - 96) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000794C8(uint64_t a1, int **a2, int **a3)
{
  v6 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
  sub_100079AB0(v26, *a2, a2[1]);
  sub_100079AB0(v25, *a3, a3[1]);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  (*(*a1 + 112))(a1, &v22);
  while (1)
  {
    if (!v22)
    {
      if (v24 >= v23)
      {
        goto LABEL_39;
      }

LABEL_7:
      v7 = v24;
      goto LABEL_8;
    }

    if ((*(*v22 + 16))(v22))
    {
      break;
    }

    if (!v22)
    {
      goto LABEL_7;
    }

    v7 = (*(*v22 + 24))();
LABEL_8:
    (*(*a1 + 272))(a1, v7, &v21);
    while (((*(*v21 + 16))(v21) & 1) == 0)
    {
      v8 = (*(*v21 + 24))(v21);
      v18 = *v8;
      v19 = *(v8 + 8);
      v20 = *(v8 + 12);
      v9 = sub_100072A48(v26, &v18);
      if (v9)
      {
        if (*(v9 + 5) == -1)
        {
          if (byte_10010E280 == 1)
          {
            sub_1000113AC(__p, "FATAL");
          }

          else
          {
            sub_1000113AC(__p, "ERROR");
          }

          sub_10002B1D4(&v17, __p);
          sub_10002AE44(&std::cerr, "Input symbol ID ", 16);
          v11 = std::ostream::operator<<();
          sub_10002AE44(v11, " missing from target vocabulary", 31);
          goto LABEL_30;
        }

        LODWORD(v18) = *(v9 + 5);
      }

      v10 = sub_100072A48(v25, &v18 + 1);
      if (v10)
      {
        if (*(v10 + 5) == -1)
        {
          if (byte_10010E280 == 1)
          {
            sub_1000113AC(__p, "FATAL");
          }

          else
          {
            sub_1000113AC(__p, "ERROR");
          }

          sub_10002B1D4(&v17, __p);
          sub_10002AE44(&std::cerr, "Output symbol id ", 17);
          v12 = std::ostream::operator<<();
          sub_10002AE44(v12, " missing from target vocabulary", 31);
LABEL_30:
          sub_10002B280(&v17);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }

          (*(*a1 + 168))(a1, 4, 4);
          if (v21)
          {
            (*(*v21 + 8))(v21);
          }

          if (v22)
          {
            (*(*v22 + 8))(v22);
          }

          goto LABEL_36;
        }

        HIDWORD(v18) = *(v10 + 5);
      }

      (*(*v21 + 80))(v21, &v18);
      (*(*v21 + 32))(v21);
    }

    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    if (v22)
    {
      (*(*v22 + 32))(v22);
    }

    else
    {
      ++v24;
    }
  }

  if (v22)
  {
    (*(*v22 + 8))();
  }

LABEL_39:
  v14 = sub_1000C8CA0(v6);
  (*(*a1 + 168))(a1, v14, 0xFFFFFFFF0007);
LABEL_36:
  sub_10001A12C(v25);
  return sub_10001A12C(v26);
}

void sub_1000799C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_10001A12C(&a25);
  sub_10001A12C(v25 - 72);
  _Unwind_Resume(a1);
}

uint64_t sub_100079AB0(uint64_t a1, int *a2, int *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_100079B2C(a1, v5);
      v5 += 2;
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t *sub_100079B2C(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_100079D58(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 16))(a1);
  if (result == -1)
  {
    return result;
  }

  v5 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
  v6 = (*(**a2 + 16))();
  (*(*a1 + 152))(a1, v6);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  (*(*a1 + 112))(a1, &v11);
  while (1)
  {
    if (!v11)
    {
      if (v13 >= v12)
      {
        return (*(*a1 + 168))(a1, v5 & 0xFFFF0FFF0007 | (((v5 >> 16) & 1) << 28) | 0x40000000, 0xFFFFFFFF0007);
      }

LABEL_8:
      v7 = v13;
      goto LABEL_9;
    }

    if ((*(*v11 + 16))(v11))
    {
      break;
    }

    if (!v11)
    {
      goto LABEL_8;
    }

    v7 = (*(*v11 + 24))();
LABEL_9:
    sub_10007A0D4(a2, v7);
    (*(*a1 + 216))(a1, v7);
    for (i = a2[5]; ; a2[5] = i)
    {
      v9 = a2[2];
      if (i >= (a2[3] - v9) >> 4)
      {
        break;
      }

      (*(*a1 + 184))(a1, v7, v9 + 16 * i);
      i = a2[5] + 1;
    }

    (*(**a2 + 24))(v10);
    (*(*a1 + 160))(a1, v7, v10);
    if (v11)
    {
      (*(*v11 + 32))(v11);
    }

    else
    {
      ++v13;
    }
  }

  if (v11)
  {
    (*(*v11 + 8))();
  }

  return (*(*a1 + 168))(a1, v5 & 0xFFFF0FFF0007 | (((v5 >> 16) & 1) << 28) | 0x40000000, 0xFFFFFFFF0007);
}

void sub_10007A094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10007A0D4(uint64_t *a1, uint64_t a2)
{
  a1[5] = 0;
  v4 = a1 + 2;
  a1[3] = a1[2];
  v5 = (*(**a1 + 32))(*a1);
  sub_10002E298(v4, v5);
  v6 = *a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  (*(*v6 + 120))(v6, a2, &v13);
  while (1)
  {
    if (!v13)
    {
      if (v15 >= v14)
      {
        goto LABEL_13;
      }

LABEL_7:
      v8 = *(&v13 + 1) + 16 * v15;
      goto LABEL_8;
    }

    if ((*(*v13 + 16))(v13))
    {
      break;
    }

    if (!v13)
    {
      goto LABEL_7;
    }

    v8 = (*(*v13 + 24))();
LABEL_8:
    sub_10002E468(v4, v8);
    if (v13)
    {
      (*(*v13 + 32))(v13);
    }

    else
    {
      ++v15;
    }
  }

  if (v13)
  {
    (*(*v13 + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (*(&v14 + 1))
  {
    --**(&v14 + 1);
  }

LABEL_15:
  v9 = a1[2];
  v10 = a1[3];
  v11 = 126 - 2 * __clz((v10 - v9) >> 4);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  sub_10007A2E4(v9, v10, &v13, v12, 1, v7);
}

void sub_10007A2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    sub_1000B9778(a9);
  }

  else
  {
    sub_1000B9760(&a9);
  }

  _Unwind_Resume(a1);
}

void sub_10007A2E4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, float a6)
{
LABEL_1:
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        if (*(a2 - 3) < *(v10 + 1))
        {
          v102 = *v10;
          v103 = *(v10 + 2);
          v104 = *(v10 + 3);
          *v10 = *(a2 - 2);
          *(v10 + 2) = *(a2 - 2);
          *(v10 + 3) = *(a2 - 1);
          *(a2 - 2) = v102;
          *(a2 - 2) = v103;
          *(a2 - 1) = v104;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      sub_10007AD50(v10, v10 + 2, v10 + 4, a2 - 2, a6);
      return;
    }

    if (v13 == 5)
    {
      sub_10007AD50(v10, v10 + 2, v10 + 4, v10 + 6, a6);
      if (*(a2 - 3) < *(v10 + 13))
      {
        v87 = v10[6];
        v88 = *(v10 + 14);
        v89 = *(v10 + 15);
        v10[6] = *(a2 - 2);
        *(v10 + 14) = *(a2 - 2);
        *(v10 + 15) = *(a2 - 1);
        *(a2 - 2) = v87;
        *(a2 - 2) = v88;
        *(a2 - 1) = v89;
        if (*(v10 + 13) < *(v10 + 9))
        {
          v90 = v10[4];
          v91 = *(v10 + 10);
          v92 = *(v10 + 11);
          v93 = v10[6];
          v10[4] = v93;
          v94 = *(v10 + 14);
          *(v10 + 10) = v94;
          v95 = *(v10 + 15);
          *(v10 + 11) = v95;
          v10[6] = v90;
          *(v10 + 14) = v91;
          *(v10 + 15) = v92;
          if (*(v10 + 5) > SHIDWORD(v93))
          {
            v96 = v10[2];
            v97 = *(v10 + 6);
            v98 = *(v10 + 7);
            v10[2] = v93;
            *(v10 + 6) = v94;
            *(v10 + 7) = v95;
            v10[4] = v96;
            *(v10 + 10) = v97;
            *(v10 + 11) = v98;
            if (*(v10 + 1) > SHIDWORD(v93))
            {
              v99 = *v10;
              v100 = *(v10 + 2);
              v101 = *(v10 + 3);
              *v10 = v93;
              *(v10 + 2) = v94;
              *(v10 + 3) = v95;
              v10[2] = v99;
              *(v10 + 6) = v100;
              *(v10 + 7) = v101;
            }
          }
        }
      }

      return;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        sub_10007AF48(v10, a2);
      }

      else
      {

        sub_10007AFF0(v10, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        sub_10007B73C(v10, a2, a2, a3);
      }

      return;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = *(a2 - 3);
    if (v13 >= 0x81)
    {
      v16 = *(v14 + 1);
      if (v16 >= *(v10 + 1))
      {
        if (v15 < v16)
        {
          v24 = *v14;
          v25 = *(v14 + 2);
          v26 = *(v14 + 3);
          *v14 = *(a2 - 2);
          *(v14 + 2) = *(a2 - 2);
          *(v14 + 3) = *(a2 - 1);
          *(a2 - 2) = v24;
          *(a2 - 2) = v25;
          *(a2 - 1) = v26;
          if (*(v14 + 1) < *(v10 + 1))
          {
            v27 = *v10;
            v28 = *(v10 + 2);
            v29 = *(v10 + 3);
            *v10 = *v14;
            *(v10 + 2) = *(v14 + 2);
            *(v10 + 3) = *(v14 + 3);
            *v14 = v27;
            *(v14 + 2) = v28;
            *(v14 + 3) = v29;
          }
        }
      }

      else
      {
        v17 = *v10;
        v18 = *(v10 + 2);
        v19 = *(v10 + 3);
        if (v15 < v16)
        {
          *v10 = *(a2 - 2);
          *(v10 + 2) = *(a2 - 2);
          *(v10 + 3) = *(a2 - 1);
          goto LABEL_28;
        }

        *v10 = *v14;
        *(v10 + 2) = *(v14 + 2);
        *(v10 + 3) = *(v14 + 3);
        *v14 = v17;
        *(v14 + 2) = v18;
        *(v14 + 3) = v19;
        if (*(a2 - 3) < SHIDWORD(v17))
        {
          *v14 = *(a2 - 2);
          *(v14 + 2) = *(a2 - 2);
          *(v14 + 3) = *(a2 - 1);
LABEL_28:
          *(a2 - 2) = v17;
          *(a2 - 2) = v18;
          *(a2 - 1) = v19;
        }
      }

      v36 = v14 - 2;
      v37 = *(v14 - 3);
      v38 = *(a2 - 7);
      if (v37 >= *(v10 + 5))
      {
        if (v38 < v37)
        {
          v42 = *v36;
          v43 = *(v14 - 2);
          v44 = *(v14 - 1);
          *v36 = *(a2 - 4);
          *(v14 - 2) = *(a2 - 6);
          *(v14 - 1) = *(a2 - 5);
          *(a2 - 4) = v42;
          *(a2 - 6) = v43;
          *(a2 - 5) = v44;
          if (*(v14 - 3) < *(v10 + 5))
          {
            v45 = v10[2];
            v46 = *(v10 + 6);
            v47 = *(v10 + 7);
            v10[2] = *v36;
            *(v10 + 6) = *(v14 - 2);
            *(v10 + 7) = *(v14 - 1);
            *v36 = v45;
            *(v14 - 2) = v46;
            *(v14 - 1) = v47;
          }
        }
      }

      else
      {
        v39 = v10[2];
        v40 = *(v10 + 6);
        v41 = *(v10 + 7);
        if (v38 < v37)
        {
          v10[2] = *(a2 - 4);
          *(v10 + 6) = *(a2 - 6);
          *(v10 + 7) = *(a2 - 5);
          goto LABEL_42;
        }

        v10[2] = *v36;
        *(v10 + 6) = *(v14 - 2);
        *(v10 + 7) = *(v14 - 1);
        *v36 = v39;
        *(v14 - 2) = v40;
        *(v14 - 1) = v41;
        if (*(a2 - 7) < SHIDWORD(v39))
        {
          *v36 = *(a2 - 4);
          *(v14 - 2) = *(a2 - 6);
          *(v14 - 1) = *(a2 - 5);
LABEL_42:
          *(a2 - 4) = v39;
          *(a2 - 6) = v40;
          *(a2 - 5) = v41;
        }
      }

      v48 = v14 + 2;
      v49 = *(v14 + 5);
      v50 = *(a2 - 11);
      if (v49 >= *(v10 + 9))
      {
        if (v50 < v49)
        {
          v54 = *v48;
          v55 = *(v14 + 6);
          v56 = *(v14 + 7);
          *v48 = *(a2 - 6);
          *(v14 + 6) = *(a2 - 10);
          *(v14 + 7) = *(a2 - 9);
          *(a2 - 6) = v54;
          *(a2 - 10) = v55;
          *(a2 - 9) = v56;
          if (*(v14 + 5) < *(v10 + 9))
          {
            v57 = v10[4];
            v58 = *(v10 + 10);
            v59 = *(v10 + 11);
            v10[4] = *v48;
            *(v10 + 10) = *(v14 + 6);
            *(v10 + 11) = *(v14 + 7);
            *v48 = v57;
            *(v14 + 6) = v58;
            *(v14 + 7) = v59;
          }
        }
      }

      else
      {
        v51 = v10[4];
        v52 = *(v10 + 10);
        v53 = *(v10 + 11);
        if (v50 < v49)
        {
          v10[4] = *(a2 - 6);
          *(v10 + 10) = *(a2 - 10);
          *(v10 + 11) = *(a2 - 9);
          goto LABEL_51;
        }

        v10[4] = *v48;
        *(v10 + 10) = *(v14 + 6);
        *(v10 + 11) = *(v14 + 7);
        *v48 = v51;
        *(v14 + 6) = v52;
        *(v14 + 7) = v53;
        if (*(a2 - 11) < SHIDWORD(v51))
        {
          *v48 = *(a2 - 6);
          *(v14 + 6) = *(a2 - 10);
          *(v14 + 7) = *(a2 - 9);
LABEL_51:
          *(a2 - 6) = v51;
          *(a2 - 10) = v52;
          *(a2 - 9) = v53;
        }
      }

      v60 = *(v14 + 1);
      v61 = *(v14 - 3);
      v62 = *(v14 + 5);
      if (v60 >= v61)
      {
        v63 = *v14;
        if (v62 < v60)
        {
          v66 = *(v14 + 2);
          v67 = *(v14 + 3);
          v68 = *v48;
          *v14 = *v48;
          v69 = *(v14 + 6);
          *(v14 + 2) = v69;
          v70 = *(v14 + 7);
          *(v14 + 3) = v70;
          *v48 = v63;
          *(v14 + 6) = v66;
          *(v14 + 7) = v67;
          if (v61 <= SHIDWORD(v68))
          {
            v63 = v68;
          }

          else
          {
            v63 = *v36;
            v71 = *(v14 - 2);
            v72 = *(v14 - 1);
            *v36 = v68;
            *(v14 - 2) = v69;
            *(v14 - 1) = v70;
            *v14 = v63;
            *(v14 + 2) = v71;
            *(v14 + 3) = v72;
          }
        }
      }

      else
      {
        v63 = *v36;
        v64 = *(v14 - 2);
        v65 = *(v14 - 1);
        if (v62 >= v60)
        {
          *v36 = *v14;
          *(v14 - 2) = *(v14 + 2);
          *(v14 - 1) = *(v14 + 3);
          *v14 = v63;
          *(v14 + 2) = v64;
          *(v14 + 3) = v65;
          if (v62 < SHIDWORD(v63))
          {
            v73 = *v48;
            *v14 = *v48;
            *(v14 + 2) = *(v14 + 6);
            *(v14 + 3) = *(v14 + 7);
            *v48 = v63;
            *(v14 + 6) = v64;
            *(v14 + 7) = v65;
            v63 = v73;
          }
        }

        else
        {
          *v36 = *v48;
          *(v14 - 2) = *(v14 + 6);
          *(v14 - 1) = *(v14 + 7);
          *v48 = v63;
          *(v14 + 6) = v64;
          *(v14 + 7) = v65;
          v63 = *v14;
        }
      }

      v74 = *v10;
      v75 = *(v10 + 2);
      v76 = *(v10 + 3);
      *v10 = v63;
      *(v10 + 2) = *(v14 + 2);
      *(v10 + 3) = *(v14 + 3);
      *v14 = v74;
      *(v14 + 2) = v75;
      *(v14 + 3) = v76;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v20 = *(v10 + 1);
    if (v20 < *(v14 + 1))
    {
      v21 = *v14;
      v22 = *(v14 + 2);
      v23 = *(v14 + 3);
      if (v15 < v20)
      {
        *v14 = *(a2 - 2);
        *(v14 + 2) = *(a2 - 2);
        *(v14 + 3) = *(a2 - 1);
        goto LABEL_37;
      }

      *v14 = *v10;
      *(v14 + 2) = *(v10 + 2);
      *(v14 + 3) = *(v10 + 3);
      *v10 = v21;
      *(v10 + 2) = v22;
      *(v10 + 3) = v23;
      if (*(a2 - 3) < SHIDWORD(v21))
      {
        *v10 = *(a2 - 2);
        *(v10 + 2) = *(a2 - 2);
        *(v10 + 3) = *(a2 - 1);
LABEL_37:
        *(a2 - 2) = v21;
        *(a2 - 2) = v22;
        *(a2 - 1) = v23;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v15 >= v20)
    {
      goto LABEL_38;
    }

    v30 = *v10;
    v31 = *(v10 + 2);
    v32 = *(v10 + 3);
    *v10 = *(a2 - 2);
    *(v10 + 2) = *(a2 - 2);
    *(v10 + 3) = *(a2 - 1);
    *(a2 - 2) = v30;
    *(a2 - 2) = v31;
    *(a2 - 1) = v32;
    if (*(v10 + 1) >= *(v14 + 1))
    {
      goto LABEL_38;
    }

    v33 = *v14;
    v34 = *(v14 + 2);
    v35 = *(v14 + 3);
    *v14 = *v10;
    *(v14 + 2) = *(v10 + 2);
    *(v14 + 3) = *(v10 + 3);
    *v10 = v33;
    *(v10 + 2) = v34;
    *(v10 + 3) = v35;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (*(v10 - 3) >= *(v10 + 1))
    {
      v10 = sub_10007B07C(v10, a2);
      goto LABEL_68;
    }

LABEL_63:
    v77 = sub_10007B18C(v10, a2);
    if ((v79 & 1) == 0)
    {
      goto LABEL_66;
    }

    v80 = sub_10007B2A0(v10, v77, v78);
    v10 = v77 + 2;
    if (sub_10007B2A0((v77 + 2), a2, v81))
    {
      a4 = -v12;
      a2 = v77;
      if (v80)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v80)
    {
LABEL_66:
      sub_10007A2E4(a1, v77, a3, -v12, a5 & 1);
      v10 = v77 + 2;
LABEL_68:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  v82 = *(v10 + 5);
  v83 = *(a2 - 3);
  if (v82 >= *(v10 + 1))
  {
    if (v83 < v82)
    {
      v105 = v10[2];
      v106 = *(v10 + 6);
      v107 = *(v10 + 7);
      v10[2] = *(a2 - 2);
      *(v10 + 6) = *(a2 - 2);
      *(v10 + 7) = *(a2 - 1);
      *(a2 - 2) = v105;
      *(a2 - 2) = v106;
      *(a2 - 1) = v107;
      if (*(v10 + 5) < *(v10 + 1))
      {
        v108 = *v10;
        v109 = *(v10 + 2);
        v110 = *(v10 + 3);
        *v10 = v10[2];
        *(v10 + 2) = *(v10 + 6);
        *(v10 + 3) = *(v10 + 7);
        v10[2] = v108;
        *(v10 + 6) = v109;
        *(v10 + 7) = v110;
      }
    }
  }

  else
  {
    v84 = *v10;
    v85 = *(v10 + 2);
    v86 = *(v10 + 3);
    if (v83 >= v82)
    {
      *v10 = v10[2];
      *(v10 + 2) = *(v10 + 6);
      *(v10 + 3) = *(v10 + 7);
      v10[2] = v84;
      *(v10 + 6) = v85;
      *(v10 + 7) = v86;
      if (*(a2 - 3) >= SHIDWORD(v84))
      {
        return;
      }

      v10[2] = *(a2 - 2);
      *(v10 + 6) = *(a2 - 2);
      *(v10 + 7) = *(a2 - 1);
    }

    else
    {
      *v10 = *(a2 - 2);
      *(v10 + 2) = *(a2 - 2);
      *(v10 + 3) = *(a2 - 1);
    }

    *(a2 - 2) = v84;
    *(a2 - 2) = v85;
    *(a2 - 1) = v86;
  }
}

float sub_10007AD50(float *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, float result)
{
  v5 = *(a2 + 1);
  LODWORD(v6) = *(a3 + 1);
  if (v5 >= *(a1 + 1))
  {
    if (v6 < v5)
    {
      v9 = *a2;
      result = *(a2 + 2);
      v10 = *(a2 + 3);
      *a2 = *a3;
      *(a2 + 2) = *(a3 + 2);
      *(a2 + 3) = *(a3 + 3);
      *a3 = v9;
      *(a3 + 2) = result;
      *(a3 + 3) = v10;
      if (*(a2 + 1) >= *(a1 + 1))
      {
        v6 = HIDWORD(v9);
      }

      else
      {
        v11 = *a1;
        result = a1[2];
        v12 = *(a1 + 3);
        *a1 = *a2;
        a1[2] = *(a2 + 2);
        a1[3] = *(a2 + 3);
        *a2 = v11;
        *(a2 + 2) = result;
        *(a2 + 3) = v12;
        LODWORD(v6) = *(a3 + 1);
      }
    }
  }

  else
  {
    v7 = *a1;
    result = a1[2];
    v8 = *(a1 + 3);
    if (v6 >= v5)
    {
      *a1 = *a2;
      a1[2] = *(a2 + 2);
      a1[3] = *(a2 + 3);
      *a2 = v7;
      *(a2 + 2) = result;
      *(a2 + 3) = v8;
      LODWORD(v6) = *(a3 + 1);
      if (v6 < SHIDWORD(v7))
      {
        *a2 = *a3;
        *(a2 + 2) = *(a3 + 2);
        *(a2 + 3) = *(a3 + 3);
        *a3 = v7;
        *(a3 + 2) = result;
        *(a3 + 3) = v8;
        v6 = HIDWORD(v7);
      }
    }

    else
    {
      *a1 = *a3;
      a1[2] = *(a3 + 2);
      a1[3] = *(a3 + 3);
      *a3 = v7;
      *(a3 + 2) = result;
      *(a3 + 3) = v8;
      v6 = HIDWORD(v7);
    }
  }

  if (*(a4 + 1) < v6)
  {
    v13 = *a3;
    result = *(a3 + 2);
    v14 = *(a3 + 3);
    *a3 = *a4;
    *(a3 + 2) = *(a4 + 2);
    *(a3 + 3) = *(a4 + 3);
    *a4 = v13;
    *(a4 + 2) = result;
    *(a4 + 3) = v14;
    if (*(a3 + 1) < *(a2 + 1))
    {
      v15 = *a2;
      result = *(a2 + 2);
      v16 = *(a2 + 3);
      *a2 = *a3;
      *(a2 + 2) = *(a3 + 2);
      *(a2 + 3) = *(a3 + 3);
      *a3 = v15;
      *(a3 + 2) = result;
      *(a3 + 3) = v16;
      if (*(a2 + 1) < *(a1 + 1))
      {
        v17 = *a1;
        result = a1[2];
        v18 = *(a1 + 3);
        *a1 = *a2;
        a1[2] = *(a2 + 2);
        a1[3] = *(a2 + 3);
        *a2 = v17;
        *(a2 + 2) = result;
        *(a2 + 3) = v18;
      }
    }
  }

  return result;
}

uint64_t sub_10007AF48(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v2 = (result + 16);
    if ((result + 16) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        if (v4[5] < v4[1])
        {
          v6 = *v2;
          v7 = v4[6];
          v8 = v4[7];
          v9 = HIDWORD(*v5);
          v10 = v3;
          while (1)
          {
            v11 = result + v10;
            *(v11 + 16) = *(result + v10);
            *(v11 + 24) = *(result + v10 + 8);
            *(v11 + 28) = *(result + v10 + 12);
            if (!v10)
            {
              break;
            }

            v10 -= 16;
            if (*(v11 - 12) <= v9)
            {
              v12 = result + v10 + 16;
              goto LABEL_10;
            }
          }

          v12 = result;
LABEL_10:
          *v12 = v6;
          *(v12 + 8) = v7;
          *(v12 + 12) = v8;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

_DWORD *sub_10007AFF0(_DWORD *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    if (result + 4 != a2)
    {
      v3 = result + 7;
      do
      {
        v4 = v2;
        if (result[5] < result[1])
        {
          v5 = *v2;
          v6 = result[6];
          v7 = result[7];
          v8 = HIDWORD(*v4);
          v9 = v3;
          do
          {
            v10 = v9;
            *(v9 - 3) = *(v9 - 7);
            *(v9 - 1) = *(v9 - 5);
            v11 = *(v9 - 4);
            v9 -= 4;
            *v10 = v11;
          }

          while (*(v10 - 10) > v8);
          *(v9 - 3) = v5;
          *(v9 - 1) = v6;
          *v9 = v7;
        }

        v2 = v4 + 2;
        v3 += 4;
        result = v4;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

uint64_t *sub_10007B07C(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = HIDWORD(*a1);
  if (*(a2 - 12) <= v3)
  {
    v7 = a1 + 2;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = *(v7 + 1);
      v7 += 2;
    }

    while (v8 <= v3);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4 + 2;
      v6 = *(v4 + 5);
      v4 += 2;
    }

    while (v6 <= v3);
  }

  if (v5 >= a2)
  {
    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 16;
      v10 = *(a2 - 12);
      a2 -= 16;
    }

    while (v10 > v3);
  }

  v11 = *(a1 + 2);
  v12 = *(a1 + 3);
  while (v5 < v9)
  {
    v13 = *v5;
    v14 = *(v5 + 2);
    v15 = *(v5 + 3);
    *v5 = *v9;
    *(v5 + 2) = *(v9 + 8);
    *(v5 + 3) = *(v9 + 12);
    *v9 = v13;
    *(v9 + 8) = v14;
    *(v9 + 12) = v15;
    do
    {
      v16 = *(v5 + 5);
      v5 += 2;
    }

    while (v16 <= v3);
    do
    {
      v17 = *(v9 - 12);
      v9 -= 16;
    }

    while (v17 > v3);
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 2);
    *(a1 + 2) = *(v5 - 2);
    *(a1 + 3) = *(v5 - 1);
  }

  *(v5 - 2) = v2;
  *(v5 - 2) = v11;
  *(v5 - 1) = v12;
  return v5;
}

uint64_t *sub_10007B18C(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = HIDWORD(*a1);
  do
  {
    v7 = HIDWORD(a1[v2 + 2]);
    v2 += 2;
  }

  while (v7 < v6);
  v8 = &a1[v2];
  if (v2 == 2)
  {
    while (v8 < a2)
    {
      v9 = a2 - 16;
      v11 = *(a2 - 12);
      a2 -= 16;
      if (v11 < v6)
      {
        goto LABEL_9;
      }
    }

    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 16;
      v10 = *(a2 - 12);
      a2 -= 16;
    }

    while (v10 >= v6);
  }

LABEL_9:
  v12 = v8;
  if (v8 < v9)
  {
    v13 = v9;
    do
    {
      v14 = *v12;
      v15 = *(v12 + 2);
      v16 = *(v12 + 3);
      *v12 = *v13;
      *(v12 + 2) = *(v13 + 8);
      *(v12 + 3) = *(v13 + 12);
      *v13 = v14;
      *(v13 + 8) = v15;
      *(v13 + 12) = v16;
      do
      {
        v17 = *(v12 + 5);
        v12 += 2;
      }

      while (v17 < v6);
      do
      {
        v18 = *(v13 - 12);
        v13 -= 16;
      }

      while (v18 >= v6);
    }

    while (v12 < v13);
  }

  if (v12 - 2 != a1)
  {
    *a1 = *(v12 - 2);
    *(a1 + 2) = *(v12 - 2);
    *(a1 + 3) = *(v12 - 1);
  }

  *(v12 - 2) = v3;
  *(v12 - 2) = v4;
  *(v12 - 1) = v5;
  return v12 - 2;
}

BOOL sub_10007B2A0(uint64_t a1, uint64_t a2, float a3)
{
  v5 = (a2 - a1) >> 4;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v24 = *(a1 + 20);
      v25 = *(a2 - 12);
      if (v24 >= *(a1 + 4))
      {
        if (v25 < v24)
        {
          v35 = *(a1 + 16);
          v36 = *(a1 + 24);
          v37 = *(a1 + 28);
          *(a1 + 16) = *(a2 - 16);
          *(a1 + 24) = *(a2 - 8);
          *(a1 + 28) = *(a2 - 4);
          *(a2 - 16) = v35;
          *(a2 - 8) = v36;
          *(a2 - 4) = v37;
          if (*(a1 + 20) < *(a1 + 4))
          {
            v38 = *a1;
            v39 = *(a1 + 8);
            v40 = *(a1 + 12);
            *a1 = *(a1 + 16);
            *(a1 + 8) = *(a1 + 24);
            *(a1 + 12) = *(a1 + 28);
            *(a1 + 16) = v38;
            *(a1 + 24) = v39;
            result = 1;
            *(a1 + 28) = v40;
            return result;
          }
        }

        return 1;
      }

      v26 = *a1;
      v27 = *(a1 + 8);
      v28 = *(a1 + 12);
      if (v25 >= v24)
      {
        *a1 = *(a1 + 16);
        *(a1 + 8) = *(a1 + 24);
        *(a1 + 12) = *(a1 + 28);
        *(a1 + 16) = v26;
        *(a1 + 24) = v27;
        *(a1 + 28) = v28;
        if (*(a2 - 12) >= SHIDWORD(v26))
        {
          return 1;
        }

        *(a1 + 16) = *(a2 - 16);
        *(a1 + 24) = *(a2 - 8);
        *(a1 + 28) = *(a2 - 4);
      }

      else
      {
        *a1 = *(a2 - 16);
        *(a1 + 8) = *(a2 - 8);
        *(a1 + 12) = *(a2 - 4);
      }

      *(a2 - 16) = v26;
      *(a2 - 8) = v27;
      *(a2 - 4) = v28;
      return 1;
    }

    if (v5 != 4)
    {
      if (v5 == 5)
      {
        sub_10007AD50(a1, (a1 + 16), (a1 + 32), (a1 + 48), a3);
        if (*(a2 - 12) < *(a1 + 52))
        {
          v9 = *(a1 + 48);
          v10 = *(a1 + 56);
          v11 = *(a1 + 60);
          *(a1 + 48) = *(a2 - 16);
          *(a1 + 56) = *(a2 - 8);
          *(a1 + 60) = *(a2 - 4);
          *(a2 - 16) = v9;
          *(a2 - 8) = v10;
          *(a2 - 4) = v11;
          if (*(a1 + 52) < *(a1 + 36))
          {
            v12 = *(a1 + 32);
            v13 = *(a1 + 40);
            v14 = *(a1 + 44);
            v15 = *(a1 + 48);
            *(a1 + 32) = v15;
            v16 = *(a1 + 56);
            *(a1 + 40) = v16;
            v17 = *(a1 + 60);
            *(a1 + 44) = v17;
            *(a1 + 48) = v12;
            *(a1 + 56) = v13;
            *(a1 + 60) = v14;
            if (*(a1 + 20) > SHIDWORD(v15))
            {
              v18 = *(a1 + 16);
              v19 = *(a1 + 24);
              v20 = *(a1 + 28);
              *(a1 + 16) = v15;
              *(a1 + 24) = v16;
              *(a1 + 28) = v17;
              *(a1 + 32) = v18;
              *(a1 + 40) = v19;
              *(a1 + 44) = v20;
              if (*(a1 + 4) > SHIDWORD(v15))
              {
                v21 = *a1;
                v22 = *(a1 + 8);
                v23 = *(a1 + 12);
                *a1 = v15;
                *(a1 + 8) = v16;
                *(a1 + 12) = v17;
                *(a1 + 16) = v21;
                *(a1 + 24) = v22;
                *(a1 + 28) = v23;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_10007AD50(a1, (a1 + 16), (a1 + 32), (a2 - 16), a3);
    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    if (*(a2 - 12) < *(a1 + 4))
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      v8 = *(a1 + 12);
      *a1 = *(a2 - 16);
      *(a1 + 8) = *(a2 - 8);
      *(a1 + 12) = *(a2 - 4);
      *(a2 - 16) = v6;
      *(a2 - 8) = v7;
      *(a2 - 4) = v8;
    }

    return 1;
  }

LABEL_17:
  v29 = *(a1 + 20);
  v30 = *(a1 + 4);
  v31 = *(a1 + 36);
  if (v29 >= v30)
  {
    if (v31 < v29)
    {
      v42 = *(a1 + 16);
      v43 = *(a1 + 24);
      v44 = *(a1 + 28);
      v45 = *(a1 + 32);
      *(a1 + 16) = v45;
      v46 = *(a1 + 40);
      *(a1 + 24) = v46;
      v47 = *(a1 + 44);
      *(a1 + 28) = v47;
      *(a1 + 32) = v42;
      *(a1 + 40) = v43;
      *(a1 + 44) = v44;
      if (v30 > SHIDWORD(v45))
      {
        v48 = *a1;
        v49 = *(a1 + 8);
        v50 = *(a1 + 12);
        *a1 = v45;
        *(a1 + 8) = v46;
        *(a1 + 12) = v47;
        *(a1 + 16) = v48;
        *(a1 + 24) = v49;
        *(a1 + 28) = v50;
      }
    }
  }

  else
  {
    v32 = *a1;
    v33 = *(a1 + 8);
    v34 = *(a1 + 12);
    if (v31 >= v29)
    {
      *a1 = *(a1 + 16);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 12) = *(a1 + 28);
      *(a1 + 16) = v32;
      *(a1 + 24) = v33;
      *(a1 + 28) = v34;
      if (v31 >= SHIDWORD(v32))
      {
        goto LABEL_33;
      }

      *(a1 + 16) = *(a1 + 32);
      *(a1 + 24) = *(a1 + 40);
      *(a1 + 28) = *(a1 + 44);
    }

    else
    {
      *a1 = *(a1 + 32);
      *(a1 + 8) = *(a1 + 40);
      *(a1 + 12) = *(a1 + 44);
    }

    *(a1 + 32) = v32;
    *(a1 + 40) = v33;
    *(a1 + 44) = v34;
  }

LABEL_33:
  v51 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v52 = 0;
  v53 = 0;
  v54 = a1 + 32;
  while (1)
  {
    if (*(v51 + 4) < *(v54 + 4))
    {
      v55 = *v51;
      v56 = *(v51 + 8);
      v57 = *(v51 + 12);
      v58 = HIDWORD(*v51);
      v59 = v52;
      while (1)
      {
        v60 = a1 + v59;
        *(v60 + 48) = *(a1 + v59 + 32);
        *(v60 + 56) = *(a1 + v59 + 40);
        *(v60 + 60) = *(a1 + v59 + 44);
        if (v59 == -32)
        {
          break;
        }

        v59 -= 16;
        if (*(v60 + 20) <= v58)
        {
          v61 = a1 + v59 + 48;
          goto LABEL_41;
        }
      }

      v61 = a1;
LABEL_41:
      *v61 = v55;
      *(v61 + 8) = v56;
      *(v61 + 12) = v57;
      if (++v53 == 8)
      {
        return v51 + 16 == a2;
      }
    }

    v54 = v51;
    v52 += 16;
    v51 += 16;
    if (v51 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_10007B73C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        sub_10007B8D4(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (*(v12 + 1) < *(a1 + 4))
        {
          v13 = *v12;
          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          *v12 = *a1;
          *(v12 + 2) = *(a1 + 8);
          *(v12 + 3) = *(a1 + 12);
          *a1 = v13;
          *(a1 + 8) = v14;
          *(a1 + 12) = v15;
          sub_10007B8D4(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 2;
      do
      {
        v17 = *a1;
        v18 = *(a1 + 8);
        v19 = *(a1 + 12);
        v20 = sub_10007B9B8(a1, a4, v8);
        if (v16 == v20)
        {
          *v20 = v17;
          *(v20 + 8) = v18;
          *(v20 + 12) = v19;
        }

        else
        {
          *v20 = *v16;
          *(v20 + 8) = *(v16 + 2);
          *(v20 + 12) = *(v16 + 3);
          *v16 = v17;
          *(v16 + 2) = v18;
          *(v16 + 3) = v19;
          sub_10007BA34(a1, v20 + 16, a4, (v20 + 16 - a1) >> 4);
        }

        v16 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_10007B8D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 1);
        v11 = *(v8 + 5);
        v8 += 2 * (v10 < v11);
        if (v10 < v11)
        {
          v7 = v9;
        }
      }

      if (*(v8 + 1) >= *(a4 + 1))
      {
        v12 = *a4;
        v13 = *(a4 + 2);
        v14 = *(a4 + 3);
        v15 = HIDWORD(*a4);
        do
        {
          v16 = a4;
          a4 = v8;
          *v16 = *v8;
          *(v16 + 2) = *(v8 + 2);
          *(v16 + 3) = *(v8 + 3);
          if (v5 < v7)
          {
            break;
          }

          v17 = (2 * v7) | 1;
          v8 = (result + 16 * v17);
          v18 = 2 * v7 + 2;
          if (v18 < a3)
          {
            v19 = *(v8 + 1);
            v20 = *(v8 + 5);
            v8 += 2 * (v19 < v20);
            if (v19 < v20)
            {
              v17 = v18;
            }
          }

          v7 = v17;
        }

        while (*(v8 + 1) >= v15);
        *a4 = v12;
        *(a4 + 2) = v13;
        *(a4 + 3) = v14;
      }
    }
  }

  return result;
}

uint64_t sub_10007B9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1 + 16 * v3;
    v5 = v4 + 16;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v7 = *(v4 + 20);
      v8 = *(v4 + 36);
      v9 = v4 + 32;
      if (v7 >= v8)
      {
        v3 = v6;
      }

      else
      {
        v5 = v9;
      }
    }

    *a1 = *v5;
    *(a1 + 8) = *(v5 + 8);
    *(a1 + 12) = *(v5 + 12);
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t sub_10007BA34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    if (*(v5 + 4) < *(a2 - 12))
    {
      v8 = *(a2 - 16);
      v6 = a2 - 16;
      v7 = v8;
      v9 = *(v6 + 8);
      v10 = *(v6 + 12);
      v11 = HIDWORD(v8);
      do
      {
        v12 = v6;
        v6 = v5;
        *v12 = *v5;
        *(v12 + 8) = *(v5 + 8);
        *(v12 + 12) = *(v5 + 12);
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
      }

      while (*(v5 + 4) < v11);
      *v6 = v7;
      *(v6 + 8) = v9;
      *(v6 + 12) = v10;
    }
  }

  return result;
}

uint64_t sub_10007BAB0(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 16))(a1);
  if (result == -1)
  {
    return result;
  }

  v5 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
  v6 = (*(**a2 + 16))();
  (*(*a1 + 152))(a1, v6);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  (*(*a1 + 112))(a1, &v11);
  while (1)
  {
    if (!v11)
    {
      if (v13 >= v12)
      {
        return (*(*a1 + 168))(a1, v5 & 0xFFFF0FFF0007 | (((v5 >> 16) & 1) << 30) | 0x10000000, 0xFFFFFFFF0007);
      }

LABEL_8:
      v7 = v13;
      goto LABEL_9;
    }

    if ((*(*v11 + 16))(v11))
    {
      break;
    }

    if (!v11)
    {
      goto LABEL_8;
    }

    v7 = (*(*v11 + 24))();
LABEL_9:
    sub_10007BE2C(a2, v7);
    (*(*a1 + 216))(a1, v7);
    for (i = a2[5]; ; a2[5] = i)
    {
      v9 = a2[2];
      if (i >= (a2[3] - v9) >> 4)
      {
        break;
      }

      (*(*a1 + 184))(a1, v7, v9 + 16 * i);
      i = a2[5] + 1;
    }

    (*(**a2 + 24))(v10);
    (*(*a1 + 160))(a1, v7, v10);
    if (v11)
    {
      (*(*v11 + 32))(v11);
    }

    else
    {
      ++v13;
    }
  }

  if (v11)
  {
    (*(*v11 + 8))();
  }

  return (*(*a1 + 168))(a1, v5 & 0xFFFF0FFF0007 | (((v5 >> 16) & 1) << 30) | 0x10000000, 0xFFFFFFFF0007);
}

void sub_10007BDEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10007BE2C(uint64_t *a1, uint64_t a2)
{
  a1[5] = 0;
  v4 = a1 + 2;
  a1[3] = a1[2];
  v5 = (*(**a1 + 32))(*a1);
  sub_10002E298(v4, v5);
  v6 = *a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  (*(*v6 + 120))(v6, a2, &v13);
  while (1)
  {
    if (!v13)
    {
      if (v15 >= v14)
      {
        goto LABEL_13;
      }

LABEL_7:
      v8 = *(&v13 + 1) + 16 * v15;
      goto LABEL_8;
    }

    if ((*(*v13 + 16))(v13))
    {
      break;
    }

    if (!v13)
    {
      goto LABEL_7;
    }

    v8 = (*(*v13 + 24))();
LABEL_8:
    sub_10002E468(v4, v8);
    if (v13)
    {
      (*(*v13 + 32))(v13);
    }

    else
    {
      ++v15;
    }
  }

  if (v13)
  {
    (*(*v13 + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (*(&v14 + 1))
  {
    --**(&v14 + 1);
  }

LABEL_15:
  v9 = a1[2];
  v10 = a1[3];
  v11 = 126 - 2 * __clz((v10 - v9) >> 4);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  sub_10007C03C(v9, v10, &v13, v12, 1, v7);
}

void sub_10007C018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    sub_1000B9778(a9);
  }

  else
  {
    sub_1000B9760(&a9);
  }

  _Unwind_Resume(a1);
}

void sub_10007C03C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, float a6)
{
LABEL_1:
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        if (*(a2 - 4) < *v10)
        {
          v104 = *v10;
          v105 = *(v10 + 2);
          v106 = *(v10 + 3);
          *v10 = *(a2 - 2);
          *(v10 + 2) = *(a2 - 2);
          *(v10 + 3) = *(a2 - 1);
          *(a2 - 2) = v104;
          *(a2 - 2) = v105;
          *(a2 - 1) = v106;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      sub_10007CA88(v10, v10 + 4, v10 + 8, (a2 - 2), a6);
      return;
    }

    if (v13 == 5)
    {
      sub_10007CA88(v10, v10 + 4, v10 + 8, (v10 + 6), a6);
      if (*(a2 - 4) < *(v10 + 12))
      {
        v89 = v10[6];
        v90 = *(v10 + 14);
        v91 = *(v10 + 15);
        v10[6] = *(a2 - 2);
        *(v10 + 14) = *(a2 - 2);
        *(v10 + 15) = *(a2 - 1);
        *(a2 - 2) = v89;
        *(a2 - 2) = v90;
        *(a2 - 1) = v91;
        if (*(v10 + 12) < *(v10 + 8))
        {
          v92 = v10[4];
          v93 = *(v10 + 10);
          v94 = *(v10 + 11);
          v95 = v10[6];
          v10[4] = v95;
          v96 = *(v10 + 14);
          *(v10 + 10) = v96;
          v97 = *(v10 + 15);
          *(v10 + 11) = v97;
          v10[6] = v92;
          *(v10 + 14) = v93;
          *(v10 + 15) = v94;
          if (*(v10 + 4) > v95)
          {
            v98 = v10[2];
            v99 = *(v10 + 6);
            v100 = *(v10 + 7);
            v10[2] = v95;
            *(v10 + 6) = v96;
            *(v10 + 7) = v97;
            v10[4] = v98;
            *(v10 + 10) = v99;
            *(v10 + 11) = v100;
            if (*v10 > v95)
            {
              v101 = *v10;
              v102 = *(v10 + 2);
              v103 = *(v10 + 3);
              *v10 = v95;
              *(v10 + 2) = v96;
              *(v10 + 3) = v97;
              v10[2] = v101;
              *(v10 + 6) = v102;
              *(v10 + 7) = v103;
            }
          }
        }
      }

      return;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        sub_10007CC64(v10, a2);
      }

      else
      {

        sub_10007CD08(v10, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        sub_10007D3F8(v10, a2, a2, a3);
      }

      return;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = v14;
    v16 = *(a2 - 4);
    if (v13 >= 0x81)
    {
      v17 = *v14;
      if (*v14 >= *v10)
      {
        if (v16 < v17)
        {
          v25 = *v14;
          v26 = v14[2];
          v27 = v14[3];
          *v14 = *(a2 - 2);
          v14[2] = *(a2 - 2);
          v14[3] = *(a2 - 1);
          *(a2 - 2) = v25;
          *(a2 - 2) = v26;
          *(a2 - 1) = v27;
          if (*v14 < *v10)
          {
            v28 = *v10;
            v29 = *(v10 + 2);
            v30 = *(v10 + 3);
            *v10 = *v14;
            *(v10 + 2) = v14[2];
            *(v10 + 3) = v14[3];
            *v14 = v28;
            v14[2] = v29;
            v14[3] = v30;
          }
        }
      }

      else
      {
        v18 = *v10;
        v19 = *(v10 + 2);
        v20 = *(v10 + 3);
        if (v16 < v17)
        {
          *v10 = *(a2 - 2);
          *(v10 + 2) = *(a2 - 2);
          *(v10 + 3) = *(a2 - 1);
          goto LABEL_28;
        }

        *v10 = *v14;
        *(v10 + 2) = v14[2];
        *(v10 + 3) = v14[3];
        *v14 = v18;
        v14[2] = v19;
        v14[3] = v20;
        if (*(a2 - 4) < v18)
        {
          *v14 = *(a2 - 2);
          v14[2] = *(a2 - 2);
          v14[3] = *(a2 - 1);
LABEL_28:
          *(a2 - 2) = v18;
          *(a2 - 2) = v19;
          *(a2 - 1) = v20;
        }
      }

      v37 = v14 - 4;
      v38 = *(v14 - 4);
      v39 = *(a2 - 8);
      if (v38 >= *(v10 + 4))
      {
        if (v39 < v38)
        {
          v43 = *v37;
          v44 = *(v14 - 2);
          v45 = *(v14 - 1);
          *v37 = *(a2 - 4);
          *(v14 - 2) = *(a2 - 6);
          *(v14 - 1) = *(a2 - 5);
          *(a2 - 4) = v43;
          *(a2 - 6) = v44;
          *(a2 - 5) = v45;
          if (*v37 < *(v10 + 4))
          {
            v46 = v10[2];
            v47 = *(v10 + 6);
            v48 = *(v10 + 7);
            v10[2] = *v37;
            *(v10 + 6) = *(v14 - 2);
            *(v10 + 7) = *(v14 - 1);
            *v37 = v46;
            *(v14 - 2) = v47;
            *(v14 - 1) = v48;
          }
        }
      }

      else
      {
        v40 = v10[2];
        v41 = *(v10 + 6);
        v42 = *(v10 + 7);
        if (v39 < v38)
        {
          v10[2] = *(a2 - 4);
          *(v10 + 6) = *(a2 - 6);
          *(v10 + 7) = *(a2 - 5);
          goto LABEL_42;
        }

        v10[2] = *v37;
        *(v10 + 6) = *(v14 - 2);
        *(v10 + 7) = *(v14 - 1);
        *v37 = v40;
        *(v14 - 2) = v41;
        *(v14 - 1) = v42;
        if (*(a2 - 8) < v40)
        {
          *v37 = *(a2 - 4);
          *(v14 - 2) = *(a2 - 6);
          *(v14 - 1) = *(a2 - 5);
LABEL_42:
          *(a2 - 4) = v40;
          *(a2 - 6) = v41;
          *(a2 - 5) = v42;
        }
      }

      v51 = v14[4];
      v49 = v14 + 4;
      v50 = v51;
      v52 = *(a2 - 12);
      if (v51 >= *(v10 + 8))
      {
        if (v52 < v50)
        {
          v56 = *v49;
          v57 = v49[2];
          v58 = v49[3];
          *v49 = *(a2 - 6);
          v49[2] = *(a2 - 10);
          v49[3] = *(a2 - 9);
          *(a2 - 6) = v56;
          *(a2 - 10) = v57;
          *(a2 - 9) = v58;
          if (*v49 < *(v10 + 8))
          {
            v59 = v10[4];
            v60 = *(v10 + 10);
            v61 = *(v10 + 11);
            v10[4] = *v49;
            *(v10 + 10) = v49[2];
            *(v10 + 11) = v49[3];
            *v49 = v59;
            v49[2] = v60;
            v49[3] = v61;
          }
        }
      }

      else
      {
        v53 = v10[4];
        v54 = *(v10 + 10);
        v55 = *(v10 + 11);
        if (v52 < v50)
        {
          v10[4] = *(a2 - 6);
          *(v10 + 10) = *(a2 - 10);
          *(v10 + 11) = *(a2 - 9);
          goto LABEL_51;
        }

        v10[4] = *v49;
        *(v10 + 10) = v49[2];
        *(v10 + 11) = v49[3];
        *v49 = v53;
        v49[2] = v54;
        v49[3] = v55;
        if (*(a2 - 12) < v53)
        {
          *v49 = *(a2 - 6);
          v49[2] = *(a2 - 10);
          v49[3] = *(a2 - 9);
LABEL_51:
          *(a2 - 6) = v53;
          *(a2 - 10) = v54;
          *(a2 - 9) = v55;
        }
      }

      v62 = *v15;
      v63 = *v37;
      v64 = *v49;
      if (*v15 >= *v37)
      {
        v65 = *v15;
        if (v64 < v62)
        {
          v68 = v15[2];
          v69 = v15[3];
          v70 = *v49;
          *v15 = *v49;
          v71 = v49[2];
          v15[2] = v71;
          v72 = v49[3];
          v15[3] = v72;
          *v49 = v65;
          v49[2] = v68;
          v49[3] = v69;
          if (v63 <= v70)
          {
            v65 = v70;
          }

          else
          {
            v65 = *v37;
            v73 = v37[2];
            v74 = v37[3];
            *v37 = v70;
            v37[2] = v71;
            v37[3] = v72;
            *v15 = v65;
            v15[2] = v73;
            v15[3] = v74;
          }
        }
      }

      else
      {
        v65 = *v37;
        v66 = v37[2];
        v67 = v37[3];
        if (v64 >= v62)
        {
          *v37 = *v15;
          v37[2] = v15[2];
          v37[3] = v15[3];
          *v15 = v65;
          v15[2] = v66;
          v15[3] = v67;
          if (v64 < v65)
          {
            v75 = *v49;
            *v15 = *v49;
            v15[2] = v49[2];
            v15[3] = v49[3];
            *v49 = v65;
            v49[2] = v66;
            v49[3] = v67;
            v65 = v75;
          }
        }

        else
        {
          *v37 = *v49;
          v37[2] = v49[2];
          v37[3] = v49[3];
          *v49 = v65;
          v49[2] = v66;
          v49[3] = v67;
          v65 = *v15;
        }
      }

      v76 = *v10;
      v77 = *(v10 + 2);
      v78 = *(v10 + 3);
      *v10 = v65;
      *(v10 + 2) = v15[2];
      *(v10 + 3) = v15[3];
      *v15 = v76;
      v15[2] = v77;
      v15[3] = v78;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v21 = *v10;
    if (*v10 < *v14)
    {
      v22 = *v14;
      v23 = v14[2];
      v24 = v14[3];
      if (v16 < SLODWORD(v21))
      {
        *v15 = *(a2 - 2);
        v15[2] = *(a2 - 2);
        v15[3] = *(a2 - 1);
        goto LABEL_37;
      }

      *v15 = *v10;
      v15[2] = *(v10 + 2);
      v15[3] = *(v10 + 3);
      *v10 = v22;
      *(v10 + 2) = v23;
      *(v10 + 3) = v24;
      if (*(a2 - 4) < v22)
      {
        *v10 = *(a2 - 2);
        *(v10 + 2) = *(a2 - 2);
        *(v10 + 3) = *(a2 - 1);
LABEL_37:
        *(a2 - 2) = v22;
        *(a2 - 2) = v23;
        *(a2 - 1) = v24;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v16 >= SLODWORD(v21))
    {
      goto LABEL_38;
    }

    v31 = *v10;
    v32 = *(v10 + 2);
    v33 = *(v10 + 3);
    *v10 = *(a2 - 2);
    *(v10 + 2) = *(a2 - 2);
    *(v10 + 3) = *(a2 - 1);
    *(a2 - 2) = v31;
    *(a2 - 2) = v32;
    *(a2 - 1) = v33;
    if (*v10 >= *v15)
    {
      goto LABEL_38;
    }

    v34 = *v15;
    v35 = v15[2];
    v36 = v15[3];
    *v15 = *v10;
    v15[2] = *(v10 + 2);
    v15[3] = *(v10 + 3);
    *v10 = v34;
    *(v10 + 2) = v35;
    *(v10 + 3) = v36;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (*(v10 - 4) >= *v10)
    {
      v10 = sub_10007CD90(v10, a2);
      goto LABEL_68;
    }

LABEL_63:
    v79 = sub_10007CE7C(v10, a2);
    if ((v81 & 1) == 0)
    {
      goto LABEL_66;
    }

    v82 = sub_10007CF70(v10, v79, v80);
    v10 = v79 + 2;
    if (sub_10007CF70((v79 + 2), a2, v83))
    {
      a4 = -v12;
      a2 = v79;
      if (v82)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v82)
    {
LABEL_66:
      sub_10007C03C(a1, v79, a3, -v12, a5 & 1);
      v10 = v79 + 2;
LABEL_68:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  v84 = *(v10 + 4);
  v85 = *(a2 - 4);
  if (v84 >= *v10)
  {
    if (v85 < v84)
    {
      v107 = v10[2];
      v108 = *(v10 + 6);
      v109 = *(v10 + 7);
      v10[2] = *(a2 - 2);
      *(v10 + 6) = *(a2 - 2);
      *(v10 + 7) = *(a2 - 1);
      *(a2 - 2) = v107;
      *(a2 - 2) = v108;
      *(a2 - 1) = v109;
      if (*(v10 + 4) < *v10)
      {
        v110 = *v10;
        v111 = *(v10 + 2);
        v112 = *(v10 + 3);
        *v10 = v10[2];
        *(v10 + 2) = *(v10 + 6);
        *(v10 + 3) = *(v10 + 7);
        v10[2] = v110;
        *(v10 + 6) = v111;
        *(v10 + 7) = v112;
      }
    }
  }

  else
  {
    v86 = *v10;
    v87 = *(v10 + 2);
    v88 = *(v10 + 3);
    if (v85 >= v84)
    {
      *v10 = v10[2];
      *(v10 + 2) = *(v10 + 6);
      *(v10 + 3) = *(v10 + 7);
      v10[2] = v86;
      *(v10 + 6) = v87;
      *(v10 + 7) = v88;
      if (*(a2 - 4) >= v86)
      {
        return;
      }

      v10[2] = *(a2 - 2);
      *(v10 + 6) = *(a2 - 2);
      *(v10 + 7) = *(a2 - 1);
    }

    else
    {
      *v10 = *(a2 - 2);
      *(v10 + 2) = *(a2 - 2);
      *(v10 + 3) = *(a2 - 1);
    }

    *(a2 - 2) = v86;
    *(a2 - 2) = v87;
    *(a2 - 1) = v88;
  }
}

float sub_10007CA88(float *a1, float *a2, float *a3, uint64_t a4, float result)
{
  v5 = *a2;
  *&v6 = *a3;
  if (*a2 >= *a1)
  {
    if (v6 < v5)
    {
      v6 = *a2;
      result = a2[2];
      v9 = *(a2 + 3);
      *a2 = *a3;
      a2[2] = a3[2];
      a2[3] = a3[3];
      *a3 = v6;
      a3[2] = result;
      *(a3 + 3) = v9;
      if (*a2 < *a1)
      {
        v6 = *a1;
        result = a1[2];
        v10 = *(a1 + 3);
        *a1 = *a2;
        a1[2] = a2[2];
        a1[3] = a2[3];
        *a2 = v6;
        a2[2] = result;
        *(a2 + 3) = v10;
        *&v6 = *a3;
      }
    }
  }

  else
  {
    v7 = *a1;
    result = a1[2];
    v8 = *(a1 + 3);
    if (v6 < v5)
    {
      *a1 = *a3;
      a1[2] = a3[2];
      a1[3] = a3[3];
LABEL_9:
      *a3 = v7;
      a3[2] = result;
      *(a3 + 3) = v8;
      LODWORD(v6) = v7;
      goto LABEL_10;
    }

    *a1 = *a2;
    a1[2] = a2[2];
    a1[3] = a2[3];
    *a2 = v7;
    a2[2] = result;
    *(a2 + 3) = v8;
    *&v6 = *a3;
    if (*a3 < v7)
    {
      *a2 = *a3;
      a2[2] = a3[2];
      a2[3] = a3[3];
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < v6)
  {
    v11 = *a3;
    result = a3[2];
    v12 = *(a3 + 3);
    *a3 = *a4;
    a3[2] = *(a4 + 8);
    a3[3] = *(a4 + 12);
    *a4 = v11;
    *(a4 + 8) = result;
    *(a4 + 12) = v12;
    if (*a3 < *a2)
    {
      v13 = *a2;
      result = a2[2];
      v14 = *(a2 + 3);
      *a2 = *a3;
      a2[2] = a3[2];
      a2[3] = a3[3];
      *a3 = v13;
      a3[2] = result;
      *(a3 + 3) = v14;
      if (*a2 < *a1)
      {
        v15 = *a1;
        result = a1[2];
        v16 = *(a1 + 3);
        *a1 = *a2;
        a1[2] = a2[2];
        a1[3] = a2[3];
        *a2 = v15;
        a2[2] = result;
        *(a2 + 3) = v16;
      }
    }
  }

  return result;
}

uint64_t sub_10007CC64(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v2 = (result + 16);
    if ((result + 16) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        if (v4[4] < *v4)
        {
          v6 = *v2;
          v7 = v4[6];
          v8 = v3;
          v9 = v4[7];
          while (1)
          {
            v10 = result + v8;
            *(v10 + 16) = *(result + v8);
            *(v10 + 24) = *(result + v8 + 8);
            *(v10 + 28) = *(result + v8 + 12);
            if (!v8)
            {
              break;
            }

            v8 -= 16;
            if (*(v10 - 16) <= v6)
            {
              v11 = result + v8 + 16;
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v6;
          *(v11 + 8) = v7;
          *(v11 + 12) = v9;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

_DWORD *sub_10007CD08(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    if (result + 4 != a2)
    {
      v3 = result + 7;
      do
      {
        v4 = v2;
        if (result[4] < *result)
        {
          v5 = *v2;
          v6 = result[6];
          v7 = v3;
          v8 = result[7];
          do
          {
            v9 = v7;
            *(v7 - 3) = *(v7 - 7);
            *(v7 - 1) = *(v7 - 5);
            v10 = *(v7 - 4);
            v7 -= 4;
            *v9 = v10;
          }

          while (*(v9 - 11) > v5);
          *(v7 - 3) = v5;
          *(v7 - 1) = v6;
          *v7 = v8;
        }

        v2 = v4 + 2;
        v3 += 4;
        result = v4;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

_DWORD *sub_10007CD90(_DWORD *a1, unint64_t a2)
{
  v2 = *a1;
  if (*(a2 - 16) <= *a1)
  {
    v5 = a1 + 4;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 4;
    }

    while (*v3 <= v2);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[4];
      v3 += 4;
    }

    while (v4 <= v2);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 16);
      a2 -= 16;
    }

    while (v6 > v2);
  }

  v7 = a1[2];
  v8 = a1[3];
  while (v3 < a2)
  {
    v9 = *v3;
    v10 = v3[2];
    v11 = v3[3];
    *v3 = *a2;
    v3[2] = *(a2 + 8);
    v3[3] = *(a2 + 12);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 12) = v11;
    do
    {
      v12 = v3[4];
      v3 += 4;
    }

    while (v12 <= v2);
    do
    {
      v13 = *(a2 - 16);
      a2 -= 16;
    }

    while (v13 > v2);
  }

  if (v3 - 4 != a1)
  {
    *a1 = *(v3 - 2);
    a1[2] = *(v3 - 2);
    a1[3] = *(v3 - 1);
  }

  *(v3 - 2) = v2;
  *(v3 - 2) = v7;
  *(v3 - 1) = v8;
  return v3;
}

uint64_t *sub_10007CE7C(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  do
  {
    v6 = a1[v2 + 2];
    v2 += 2;
  }

  while (v6 < v3);
  v7 = &a1[v2];
  if (v2 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v9 = *(a2 - 16);
      a2 -= 16;
    }

    while (v9 >= v3);
  }

  else
  {
    do
    {
      v8 = *(a2 - 16);
      a2 -= 16;
    }

    while (v8 >= v3);
  }

  v10 = &a1[v2];
  if (v7 < a2)
  {
    v11 = a2;
    do
    {
      v12 = *v10;
      v13 = *(v10 + 2);
      v14 = *(v10 + 3);
      *v10 = *v11;
      *(v10 + 2) = *(v11 + 8);
      *(v10 + 3) = *(v11 + 12);
      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 12) = v14;
      do
      {
        v15 = *(v10 + 4);
        v10 += 2;
      }

      while (v15 < v3);
      do
      {
        v16 = *(v11 - 16);
        v11 -= 16;
      }

      while (v16 >= v3);
    }

    while (v10 < v11);
  }

  if (v10 - 2 != a1)
  {
    *a1 = *(v10 - 2);
    *(a1 + 2) = *(v10 - 2);
    *(a1 + 3) = *(v10 - 1);
  }

  *(v10 - 2) = v3;
  *(v10 - 2) = v4;
  *(v10 - 1) = v5;
  return v10 - 2;
}

BOOL sub_10007CF70(uint64_t a1, _DWORD *a2, float a3)
{
  v5 = (a2 - a1) >> 4;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v24 = *(a1 + 16);
      v25 = *(a2 - 4);
      if (v24 >= *a1)
      {
        if (v25 < v24)
        {
          v36 = *(a1 + 16);
          v37 = *(a1 + 24);
          v38 = *(a1 + 28);
          *(a1 + 16) = *(a2 - 2);
          *(a1 + 24) = *(a2 - 2);
          *(a1 + 28) = *(a2 - 1);
          *(a2 - 2) = v36;
          *(a2 - 2) = v37;
          *(a2 - 1) = v38;
          if (*(a1 + 16) < *a1)
          {
            v39 = *a1;
            v40 = *(a1 + 8);
            v41 = *(a1 + 12);
            *a1 = *(a1 + 16);
            *(a1 + 8) = *(a1 + 24);
            *(a1 + 12) = *(a1 + 28);
            *(a1 + 16) = v39;
            *(a1 + 24) = v40;
            result = 1;
            *(a1 + 28) = v41;
            return result;
          }
        }

        return 1;
      }

      v26 = *a1;
      v27 = *(a1 + 8);
      v28 = *(a1 + 12);
      if (v25 >= v24)
      {
        *a1 = *(a1 + 16);
        *(a1 + 8) = *(a1 + 24);
        *(a1 + 12) = *(a1 + 28);
        *(a1 + 16) = v26;
        *(a1 + 24) = v27;
        *(a1 + 28) = v28;
        if (*(a2 - 4) >= v26)
        {
          return 1;
        }

        *(a1 + 16) = *(a2 - 2);
        *(a1 + 24) = *(a2 - 2);
        *(a1 + 28) = *(a2 - 1);
      }

      else
      {
        *a1 = *(a2 - 2);
        *(a1 + 8) = *(a2 - 2);
        *(a1 + 12) = *(a2 - 1);
      }

      *(a2 - 2) = v26;
      *(a2 - 2) = v27;
      *(a2 - 1) = v28;
      return 1;
    }

    if (v5 != 4)
    {
      if (v5 == 5)
      {
        sub_10007CA88(a1, (a1 + 16), (a1 + 32), a1 + 48, a3);
        if (*(a2 - 4) < *(a1 + 48))
        {
          v9 = *(a1 + 48);
          v10 = *(a1 + 56);
          v11 = *(a1 + 60);
          *(a1 + 48) = *(a2 - 2);
          *(a1 + 56) = *(a2 - 2);
          *(a1 + 60) = *(a2 - 1);
          *(a2 - 2) = v9;
          *(a2 - 2) = v10;
          *(a2 - 1) = v11;
          if (*(a1 + 48) < *(a1 + 32))
          {
            v12 = *(a1 + 32);
            v13 = *(a1 + 40);
            v14 = *(a1 + 44);
            v15 = *(a1 + 48);
            *(a1 + 32) = v15;
            v16 = *(a1 + 56);
            *(a1 + 40) = v16;
            v17 = *(a1 + 60);
            *(a1 + 44) = v17;
            *(a1 + 48) = v12;
            *(a1 + 56) = v13;
            *(a1 + 60) = v14;
            if (*(a1 + 16) > v15)
            {
              v18 = *(a1 + 16);
              v19 = *(a1 + 24);
              v20 = *(a1 + 28);
              *(a1 + 16) = v15;
              *(a1 + 24) = v16;
              *(a1 + 28) = v17;
              *(a1 + 32) = v18;
              *(a1 + 40) = v19;
              *(a1 + 44) = v20;
              if (*a1 > v15)
              {
                v21 = *a1;
                v22 = *(a1 + 8);
                v23 = *(a1 + 12);
                *a1 = v15;
                *(a1 + 8) = v16;
                *(a1 + 12) = v17;
                *(a1 + 16) = v21;
                *(a1 + 24) = v22;
                *(a1 + 28) = v23;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_10007CA88(a1, (a1 + 16), (a1 + 32), (a2 - 4), a3);
    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    if (*(a2 - 4) < *a1)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      v8 = *(a1 + 12);
      *a1 = *(a2 - 2);
      *(a1 + 8) = *(a2 - 2);
      *(a1 + 12) = *(a2 - 1);
      *(a2 - 2) = v6;
      *(a2 - 2) = v7;
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v29 = (a1 + 32);
  v30 = *(a1 + 32);
  v31 = *(a1 + 16);
  v32 = *a1;
  if (v31 >= *a1)
  {
    if (v30 < v31)
    {
      v43 = *(a1 + 16);
      v44 = *(a1 + 24);
      v45 = *(a1 + 28);
      v46 = *(a1 + 32);
      *(a1 + 16) = v46;
      v47 = *(a1 + 40);
      *(a1 + 24) = v47;
      v48 = *(a1 + 44);
      *(a1 + 28) = v48;
      *(a1 + 32) = v43;
      *(a1 + 40) = v44;
      *(a1 + 44) = v45;
      if (SLODWORD(v32) > v46)
      {
        v49 = *a1;
        v50 = *(a1 + 8);
        v51 = *(a1 + 12);
        *a1 = v46;
        *(a1 + 8) = v47;
        *(a1 + 12) = v48;
        *(a1 + 16) = v49;
        *(a1 + 24) = v50;
        *(a1 + 28) = v51;
      }
    }
  }

  else
  {
    v33 = *a1;
    v34 = *(a1 + 8);
    v35 = *(a1 + 12);
    if (v30 >= v31)
    {
      *a1 = *(a1 + 16);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 12) = *(a1 + 28);
      *(a1 + 16) = v33;
      *(a1 + 24) = v34;
      *(a1 + 28) = v35;
      if (v30 >= v33)
      {
        goto LABEL_33;
      }

      *(a1 + 16) = *(a1 + 32);
      *(a1 + 24) = *(a1 + 40);
      *(a1 + 28) = *(a1 + 44);
    }

    else
    {
      *a1 = *(a1 + 32);
      *(a1 + 8) = *(a1 + 40);
      *(a1 + 12) = *(a1 + 44);
    }

    *(a1 + 32) = v33;
    *(a1 + 40) = v34;
    *(a1 + 44) = v35;
  }

LABEL_33:
  v52 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v53 = 0;
  v54 = 0;
  while (1)
  {
    if (*v52 < *v29)
    {
      v55 = *v52;
      v56 = v52[2];
      v57 = v53;
      v58 = v52[3];
      while (1)
      {
        v59 = a1 + v57;
        *(v59 + 48) = *(a1 + v57 + 32);
        *(v59 + 56) = *(a1 + v57 + 40);
        *(v59 + 60) = *(a1 + v57 + 44);
        if (v57 == -32)
        {
          break;
        }

        v57 -= 16;
        if (*(v59 + 16) <= v55)
        {
          v60 = a1 + v57 + 48;
          goto LABEL_41;
        }
      }

      v60 = a1;
LABEL_41:
      *v60 = v55;
      *(v60 + 8) = v56;
      *(v60 + 12) = v58;
      if (++v54 == 8)
      {
        return v52 + 4 == a2;
      }
    }

    v29 = v52;
    v53 += 16;
    v52 += 4;
    if (v52 == a2)
    {
      return 1;
    }
  }
}

int *sub_10007D3F8(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        sub_10007D590(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (*v12 < *a1)
        {
          v13 = *v12;
          v14 = v12[2];
          v15 = v12[3];
          *v12 = *a1;
          v12[2] = a1[2];
          v12[3] = a1[3];
          *a1 = v13;
          a1[2] = v14;
          a1[3] = v15;
          sub_10007D590(a1, a4, v8, a1);
        }

        v12 += 4;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 4;
      do
      {
        v17 = *a1;
        v18 = a1[2];
        v19 = a1[3];
        v20 = sub_10007D680(a1, a4, v8);
        if (v16 == v20)
        {
          *v20 = v17;
          *(v20 + 8) = v18;
          *(v20 + 12) = v19;
        }

        else
        {
          *v20 = *v16;
          *(v20 + 8) = v16[2];
          *(v20 + 12) = v16[3];
          *v16 = v17;
          v16[2] = v18;
          v16[3] = v19;
          sub_10007D6F8(a1, v20 + 16, a4, (v20 + 16 - a1) >> 4);
        }

        v16 -= 4;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_10007D590(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v6 + 2 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[4];
        if (*v8 <= v11)
        {
          v10 = v8[4];
        }

        if (*v8 < v11)
        {
          v8 += 4;
          v7 = v9;
        }
      }

      if (v10 >= *a4)
      {
        v12 = *a4;
        v13 = a4[2];
        v14 = a4[3];
        do
        {
          v15 = a4;
          a4 = v8;
          *v15 = *v8;
          v15[2] = v8[2];
          v15[3] = v8[3];
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = (result + 16 * v16);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v17 = *v8;
            v7 = v16;
          }

          else
          {
            v17 = *v8;
            v18 = v8[4];
            if (*v8 <= v18)
            {
              v17 = v8[4];
            }

            if (*v8 >= v18)
            {
              v7 = v16;
            }

            else
            {
              v8 += 4;
            }
          }
        }

        while (v17 >= v12);
        *a4 = v12;
        a4[2] = v13;
        a4[3] = v14;
      }
    }
  }

  return result;
}

uint64_t sub_10007D680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1 + 16 * v3;
    v5 = v4 + 16;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v8 = *(v4 + 32);
      v7 = v4 + 32;
      if (*(v7 - 16) >= v8)
      {
        v3 = v6;
      }

      else
      {
        v5 = v7;
      }
    }

    *a1 = *v5;
    *(a1 + 8) = *(v5 + 8);
    *(a1 + 12) = *(v5 + 12);
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t sub_10007D6F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = result + 16 * (v4 >> 1);
    v7 = a2 - 16;
    if (*v6 < *(a2 - 16))
    {
      v8 = *(a2 - 16);
      v9 = *(a2 - 8);
      v10 = *(a2 - 4);
      do
      {
        v11 = v7;
        v7 = v6;
        *v11 = *v6;
        *(v11 + 8) = *(v6 + 8);
        *(v11 + 12) = *(v6 + 12);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = result + 16 * v5;
      }

      while (*v6 < v8);
      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 12) = v10;
    }
  }

  return result;
}

uint64_t sub_10007D958(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  *a1 = off_1001019D0;
  if (!a6)
  {
    operator new();
  }

  *(a1 + 8) = a6;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *(a1 + 48) = 0;
  *(a1 + 52) = -1;
  *(a1 + 56) = 0;
  if (a3 == 3)
  {
    if (byte_10010E280 == 1)
    {
      sub_1000113AC(__p, "FATAL");
    }

    else
    {
      sub_1000113AC(__p, "ERROR");
    }

    sub_10002B1D4(&v17, __p);
    sub_10002AE44(&std::cerr, "RhoMatcher: Bad match type", 26);
    sub_10002B280(&v17);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 16) = 4;
    *(a1 + 48) = 1;
  }

  if (!a4)
  {
    if (byte_10010E280 == 1)
    {
      sub_1000113AC(v12, "FATAL");
    }

    else
    {
      sub_1000113AC(v12, "ERROR");
    }

    sub_10002B1D4(&v14, v12);
    sub_10002AE44(&std::cerr, "RhoMatcher: 0 cannot be used as rho_label", 41);
    sub_10002B280(&v14);
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    *(a1 + 20) = -1;
    *(a1 + 48) = 1;
  }

  if (a5 == 1)
  {
    v10 = 1;
  }

  else
  {
    if (a5)
    {
      *(a1 + 24) = 0;
      return a1;
    }

    v10 = (*(*a2 + 56))(a2, 0x10000, 1) != 0;
  }

  *(a1 + 24) = v10;
  return a1;
}

void sub_10007DBA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v30 = *(v28 + 8);
  *(v28 + 8) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10007DCFC(void *a1)
{
  *a1 = off_100101688;
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  *a1 = off_1001019D0;
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_10007DDB4(void *a1)
{
  *a1 = off_100101688;
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  *a1 = off_1001019D0;
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}

uint64_t sub_10007DF48(uint64_t result, uint64_t a2)
{
  if (*(result + 52) != a2)
  {
    v2 = result;
    *(result + 52) = a2;
    result = sub_100080998(*(result + 8), a2);
    *(v2 + 56) = *(v2 + 20) != -1;
  }

  return result;
}

uint64_t sub_10007DF94(uint64_t a1, int a2)
{
  v3 = *(a1 + 20);
  if (v3 != a2 || v3 == -1)
  {
    result = sub_100080A28(*(a1 + 8), a2);
    if (result)
    {
      *(a1 + 28) = -1;
    }

    else
    {
      if ((a2 - 1) > 0xFFFFFFFD)
      {
        return result;
      }

      if ((*(a1 + 56) & 1) == 0)
      {
        return result;
      }

      result = sub_100080A28(*(a1 + 8), *(a1 + 20));
      *(a1 + 56) = result;
      if (!result)
      {
        return result;
      }

      *(a1 + 28) = a2;
    }

    return 1;
  }

  if (byte_10010E280 == 1)
  {
    sub_1000113AC(__p, "FATAL");
  }

  else
  {
    sub_1000113AC(__p, "ERROR");
  }

  sub_10002B1D4(&v9, __p);
  sub_10002AE44(&std::cerr, "RhoMatcher::Find: bad label (rho)", 33);
  sub_10002B280(&v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  result = 0;
  *(a1 + 48) = 1;
  return result;
}

void sub_10007E0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10007E0F0(uint64_t a1)
{
  v2 = *(a1 + 28);
  result = sub_100080B80(*(a1 + 8));
  v4 = result;
  if (v2 != -1)
  {
    v5 = *result;
    *(a1 + 32) = *result;
    result = (a1 + 32);
    *(a1 + 40) = *(v4 + 2);
    *(a1 + 44) = *(v4 + 3);
    if (*(a1 + 24) != 1)
    {
      v7 = *(a1 + 28);
      if (*(a1 + 16) == 1)
      {
        *result = v7;
        return result;
      }

      goto LABEL_10;
    }

    v6 = *(a1 + 20);
    if (v6 == v5)
    {
      *(a1 + 32) = *(a1 + 28);
    }

    if (v6 == HIDWORD(v5))
    {
      v7 = *(a1 + 28);
LABEL_10:
      *(a1 + 36) = v7;
    }
  }

  return result;
}

uint64_t sub_10007E1CC(uint64_t a1)
{
  result = (*(**(a1 + 8) + 80))(*(a1 + 8));
  if (*(a1 + 48))
  {
    result |= 4uLL;
  }

  v3 = *(a1 + 16);
  if (v3 != 4)
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 24) == 1;
      v5 = result & 0xFFFFEFFF3FFAFFFFLL;
      v6 = 0xFFFFEFFF0FF3FFFFLL;
LABEL_8:
      v7 = result & v6;
      if (v4)
      {
        return v7;
      }

      else
      {
        return v5;
      }
    }

    if (v3 == 1)
    {
      v4 = *(a1 + 24) == 1;
      v5 = result & 0xFFFFEFFFCFEEFFFFLL;
      v6 = 0xFFFFEFFF0FCFFFFFLL;
      goto LABEL_8;
    }

    if (byte_10010E280 == 1)
    {
      sub_1000113AC(__p, "FATAL");
    }

    else
    {
      sub_1000113AC(__p, "ERROR");
    }

    sub_10002B1D4(&v11, __p);
    sub_10002AE44(&std::cerr, "RhoMatcher: Bad match type: ", 28);
    v8 = *(a1 + 16);
    std::ostream::operator<<();
    sub_10002B280(&v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_10007E320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007E358(uint64_t a1)
{
  if (*(a1 + 20) != -1 && *(a1 + 16) != 4)
  {
    return (*(**(a1 + 8) + 88))(*(a1 + 8)) | 1;
  }

  v2 = *(**(a1 + 8) + 88);

  return v2();
}

uint64_t sub_10007E3F0(uint64_t a1, uint64_t a2)
{
  *(a1 + 52) = a2;
  sub_100080998(*(a1 + 8), a2);
  v4 = sub_100080A28(*(a1 + 8), *(a1 + 20));
  *(a1 + 56) = v4;
  if (v4)
  {
    return -1;
  }

  v6 = *(a1 + 8);

  return sub_100080EC8(v6, a2);
}

uint64_t sub_10007E45C(uint64_t a1, uint64_t a2, int a3, int a4, char a5, int a6, uint64_t a7)
{
  *a1 = off_100101748;
  if (!a7)
  {
    operator new();
  }

  *(a1 + 8) = a7;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *(a1 + 48) = -1;
  *(a1 + 56) = a5;
  *(a1 + 57) = 0;
  if (a3 == 3)
  {
    if (byte_10010E280 == 1)
    {
      sub_1000113AC(__p, "FATAL");
    }

    else
    {
      sub_1000113AC(__p, "ERROR");
    }

    sub_10002B1D4(&v14, __p);
    sub_10002AE44(&std::cerr, "PhiMatcher: Bad match type", 26);
    sub_10002B280(&v14);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 16) = 4;
    *(a1 + 57) = 1;
  }

  if (a6 == 1)
  {
    v10 = 1;
  }

  else
  {
    if (a6)
    {
      *(a1 + 24) = 0;
      return a1;
    }

    v10 = (*(*a2 + 56))(a2, 0x10000, 1) != 0;
  }

  *(a1 + 24) = v10;
  return a1;
}

void sub_10007E610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v20 = *(v18 + 8);
  *(v18 + 8) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10007E694(void *a1)
{
  v2 = a1[1];
  *a1 = off_100101748;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10007E700(void *a1)
{
  v2 = a1[1];
  *a1 = off_100101748;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete();
}

uint64_t sub_10007E828(uint64_t result, uint64_t a2)
{
  if (*(result + 48) != a2)
  {
    v2 = a2;
    v3 = result;
    result = sub_10007F754(*(result + 8), a2);
    *(v3 + 48) = v2;
    *(v3 + 25) = *(v3 + 20) != -1;
  }

  return result;
}

uint64_t sub_10007E878(uint64_t a1, int a2)
{
  if (*(a1 + 20) == a2 && (a2 + 1) >= 2)
  {
    if (byte_10010E280 == 1)
    {
      sub_1000113AC(v23, "FATAL");
    }

    else
    {
      sub_1000113AC(v23, "ERROR");
    }

    sub_10002B1D4(__p, v23);
    sub_10002AE44(&std::cerr, "PhiMatcher::Find: bad label (phi): ", 35);
    v18 = *(a1 + 20);
    std::ostream::operator<<();
    sub_10002B280(__p);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    v6 = 0;
    *(a1 + 57) = 1;
    return v6;
  }

  sub_10007F754(*(a1 + 8), *(a1 + 48));
  *(a1 + 28) = -1;
  *(a1 + 52) = *sub_10002B564();
  if (*(a1 + 20))
  {
    goto LABEL_6;
  }

  if (a2 == -1)
  {
    return 0;
  }

  if (!a2)
  {
    if ((sub_10007F940(*(a1 + 8), -1) & 1) == 0)
    {
      v15 = *(a1 + 8);
      v16 = 0;
      goto LABEL_38;
    }

    *(a1 + 28) = 0;
    return 1;
  }

LABEL_6:
  if (a2 - 1) <= 0xFFFFFFFD && (*(a1 + 25))
  {
    LODWORD(v5) = *(a1 + 48);
    v6 = 1;
    if ((sub_10007F940(*(a1 + 8), a2) & 1) == 0)
    {
      while (1)
      {
        if (*(a1 + 20))
        {
          v7 = *(a1 + 20);
        }

        else
        {
          v7 = -1;
        }

        v6 = sub_10007F940(*(a1 + 8), v7);
        if (!v6)
        {
          return v6;
        }

        if (*(a1 + 56) == 1 && *(sub_10007FCBC(*(a1 + 8)) + 12) == v5)
        {
          *(a1 + 28) = a2;
          return 1;
        }

        v8 = sub_10007FCBC(*(a1 + 8));
        v9 = *(a1 + 52);
        if (v9 == -INFINITY || (v10 = *(v8 + 8), v10 >= -INFINITY) && v10 <= -INFINITY)
        {
          v11 = *sub_1000777A0();
        }

        else
        {
          v12 = v10 == INFINITY || v9 == INFINITY;
          v11 = v9 + v10;
          if (v12)
          {
            v11 = INFINITY;
          }
        }

        *(a1 + 52) = v11;
        v5 = *(sub_10007FCBC(*(a1 + 8)) + 12);
        sub_10007FD7C(*(a1 + 8));
        if (!sub_10007FBD0(*(a1 + 8)))
        {
          break;
        }

LABEL_35:
        sub_10007F754(*(a1 + 8), v5);
        if (sub_10007F940(*(a1 + 8), a2))
        {
          return v6;
        }
      }

      v13 = byte_10010E280;
      if (byte_10010E280 == 1)
      {
        sub_1000113AC(v23, "FATAL");
        sub_10002B1D4(&v22, v23);
      }

      else
      {
        sub_1000113AC(__p, "ERROR");
        sub_10002B1D4(&v21, __p);
      }

      sub_10002AE44(&std::cerr, "PhiMatcher: Phi non-determinism not supported", 45);
      if (v13)
      {
        sub_10002B280(&v22);
        if (v24 < 0)
        {
          v14 = v23[0];
LABEL_33:
          operator delete(v14);
        }
      }

      else
      {
        sub_10002B280(&v21);
        if (v20 < 0)
        {
          v14 = __p[0];
          goto LABEL_33;
        }
      }

      *(a1 + 57) = 1;
      goto LABEL_35;
    }

    return v6;
  }

  v15 = *(a1 + 8);
  v16 = a2;
LABEL_38:

  return sub_10007F940(v15, v16);
}

void sub_10007EBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007EC3C(uint64_t a1)
{
  v2 = *(a1 + 28);
  if (v2 != -1)
  {
    if (v2)
    {
LABEL_3:
      v3 = sub_10007FCBC(*(a1 + 8));
      *(a1 + 32) = *v3;
      v4 = (a1 + 32);
      v5 = *(v3 + 8);
      *(a1 + 40) = v5;
      *(a1 + 44) = *(v3 + 12);
      v6 = *(a1 + 52);
      if (v6 == -INFINITY || v5 >= -INFINITY && v5 <= -INFINITY)
      {
        v7 = *sub_1000777A0();
      }

      else
      {
        v10 = v5 == INFINITY || v6 == INFINITY;
        v7 = v6 + v5;
        if (v10)
        {
          v7 = INFINITY;
        }
      }

      *(a1 + 40) = v7;
      v11 = *(a1 + 28);
      if (v11 == -1)
      {
        return v4;
      }

      if (*(a1 + 24) == 1)
      {
        v12 = *(a1 + 20);
        if (*(a1 + 32) == v12)
        {
          *v4 = v11;
        }

        if (*(a1 + 36) != v12)
        {
          return v4;
        }
      }

      else if (*(a1 + 16) == 1)
      {
        *v4 = v11;
        return v4;
      }

      *(a1 + 36) = v11;
      return v4;
    }

LABEL_26:
    v13 = *sub_10002B564();
    *(a1 + 32) = 0xFFFFFFFFLL;
    v14 = (a1 + 32);
    v15 = v14[4];
    v4 = v14;
    v14[2] = v13;
    v14[3] = v15;
    if (*(v14 - 4) == 2)
    {
      *v14 = 0xFFFFFFFF00000000;
    }

    return v4;
  }

  if (*(a1 + 52) != *sub_10002B564())
  {
    if (*(a1 + 28))
    {
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  v8 = *(a1 + 8);

  return sub_10007FCBC(v8);
}

uint64_t sub_10007EDF8(uint64_t a1)
{
  result = (*(**(a1 + 8) + 80))(*(a1 + 8));
  if (*(a1 + 57))
  {
    result |= 4uLL;
  }

  v3 = *(a1 + 16);
  if (v3 != 4)
  {
    if (v3 == 2)
    {
      if (*(a1 + 20))
      {
        v5 = result;
      }

      else
      {
        v5 = result | 0x8800000;
      }

      v6 = *(a1 + 24) == 1;
      v7 = v5 & 0xFFFFEFFF0FFAFFFFLL;
      v4 = 0xFFFFEFFF0FF3FFFFLL;
      goto LABEL_14;
    }

    if (v3 == 1)
    {
      v4 = 0xFFFFEFFF0FCFFFFFLL;
      if (*(a1 + 20))
      {
        v5 = result;
      }

      else
      {
        v5 = result | 0x2800000;
      }

      v6 = *(a1 + 24) == 1;
      v7 = v5 & 0xFFFFEFFF0FEEFFFFLL;
LABEL_14:
      v8 = v5 & v4;
      if (v6)
      {
        return v8;
      }

      else
      {
        return v7;
      }
    }

    if (byte_10010E280 == 1)
    {
      sub_1000113AC(__p, "FATAL");
    }

    else
    {
      sub_1000113AC(__p, "ERROR");
    }

    sub_10002B1D4(&v12, __p);
    sub_10002AE44(&std::cerr, "PhiMatcher: Bad match type: ", 28);
    v9 = *(a1 + 16);
    std::ostream::operator<<();
    sub_10002B280(&v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_10007EF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007EFA4(uint64_t a1)
{
  if (*(a1 + 20) != -1 && *(a1 + 16) != 4)
  {
    return (*(**(a1 + 8) + 88))(*(a1 + 8)) | 1;
  }

  v2 = *(**(a1 + 8) + 88);

  return v2();
}

int *sub_10007F030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a3@<X8>)
{
  v6 = (*(**(a1 + 8) + 72))(*(a1 + 8));
  result = (*(*v6 + 24))(&v19 + 4);
  if (*(a1 + 20) == -1)
  {
    v8 = *(&v19 + 1);
  }

  else
  {
    result = sub_10002B59C();
    v8 = *(&v19 + 1);
    LODWORD(v21) = HIDWORD(v19);
    v20 = *result;
    if (*(&v19 + 1) == v20)
    {
      HIDWORD(v19) = *sub_10002B564();
      while (1)
      {
        sub_10007F754(*(a1 + 8), a2);
        v9 = (*(**(a1 + 8) + 72))(*(a1 + 8));
        (*(*v9 + 24))(&v19);
        v10 = sub_10002B59C();
        LODWORD(v21) = v19;
        v20 = *v10;
        v11.n128_u32[0] = v19;
        if (*&v19 != v20)
        {
          break;
        }

        v12 = *(a1 + 20) ? *(a1 + 20) : -1;
        if (!sub_10007F940(*(a1 + 8), v12))
        {
          break;
        }

        v13 = sub_10007FCBC(*(a1 + 8));
        if (*(&v19 + 1) == -INFINITY || (v14 = *(v13 + 8), v14 >= -INFINITY) && v14 <= -INFINITY)
        {
          v15 = *sub_1000777A0();
        }

        else
        {
          v16 = v14 == INFINITY || *(&v19 + 1) == INFINITY;
          v15 = *(&v19 + 1) + v14;
          if (v16)
          {
            v15 = INFINITY;
          }
        }

        *(&v19 + 1) = v15;
        if (a2 == *(sub_10007FCBC(*(a1 + 8)) + 12))
        {
          result = sub_10002B59C();
          goto LABEL_26;
        }

        a2 = *(sub_10007FCBC(*(a1 + 8)) + 12);
      }

      v17 = (*(**(a1 + 8) + 72))(*(a1 + 8), v11);
      result = (*(*v17 + 24))(&v21);
      if (*(&v19 + 1) == -INFINITY || *&v21 >= -INFINITY && *&v21 <= -INFINITY)
      {
        result = sub_1000777A0();
LABEL_26:
        v8 = *result;
        goto LABEL_32;
      }

      v18 = *&v21 == INFINITY || *(&v19 + 1) == INFINITY;
      v8 = *(&v19 + 1) + *&v21;
      if (v18)
      {
        v8 = INFINITY;
      }
    }
  }

LABEL_32:
  *a3 = v8;
  return result;
}

uint64_t sub_10007F2D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 20);
  v4 = *(a1 + 8);
  if (v3 != -1)
  {
    sub_10007F754(v4, a2);
    if (*(a1 + 20))
    {
      v5 = *(a1 + 20);
    }

    else
    {
      v5 = -1;
    }

    if (sub_10007F940(*(a1 + 8), v5))
    {
      return -1;
    }

    v4 = *(a1 + 8);
  }

  v7 = *(*(*(*v4 + 72))(v4) + 32);

  return v7();
}

uint64_t sub_10007F39C(uint64_t a1)
{
  v1 = *(*(*(*a1 + 72))(a1) + 24);

  return v1();
}

void sub_10007F4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1001017E0;
  v5 = (*(**(a2 + 16) + 72))(*(a2 + 16), a3);
  *(a1 + 8) = v5;
  *(a1 + 16) = v5;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = -1;
  *(a1 + 56) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 88) = off_1001018D0;
  sub_1000800D0((a1 + 96), 1);
}

void sub_10007F5D8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    sub_1000C9124(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10007F5F8(void *a1)
{
  sub_100080238(a1);

  operator delete();
}

uint64_t sub_10007F6A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 == 4)
  {
    return 4;
  }

  if (v2 == 1)
  {
    v6 = 0x10000000;
  }

  else
  {
    v6 = 0x40000000;
  }

  v7 = *(a1 + 16);
  if (v2 == 1)
  {
    v8 = 805306368;
  }

  else
  {
    v8 = 3221225472;
  }

  v9 = (*(*v7 + 56))(v7, v8, a2);
  if ((v9 & v6) != 0)
  {
    return *(a1 + 40);
  }

  v10 = 0x80000000;
  if (v2 == 1)
  {
    v10 = 0x20000000;
  }

  if ((v9 & v10) != 0)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_10007F754(uint64_t result, uint64_t a2)
{
  if (*(result + 24) != a2)
  {
    v3 = result;
    *(result + 24) = a2;
    if (*(result + 40) == 4)
    {
      if (byte_10010E280 == 1)
      {
        sub_1000113AC(__p, "FATAL");
      }

      else
      {
        sub_1000113AC(__p, "ERROR");
      }

      sub_10002B1D4(&v8, __p);
      sub_10002AE44(&std::cerr, "SortedMatcher: Bad match type", 29);
      sub_10002B280(&v8);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }

      *(v3 + 82) = 1;
    }

    sub_100080300(*(v3 + 32), v3 + 88);
    v4 = *(v3 + 144);
    if (v4)
    {
      *(v3 + 144) = v4[5];
    }

    else
    {
      v4 = sub_10008037C((v3 + 96), 1);
      v4[5] = 0;
    }

    v5 = *(v3 + 16);
    v4[4] = 0;
    *v4 = 0u;
    *(v4 + 1) = 0u;
    (*(*v5 + 120))(v5, a2, v4);
    *(v3 + 32) = v4;
    if (*v4)
    {
      (*(**v4 + 72))(*v4, 16, 16);
    }

    result = (*(**(v3 + 16) + 32))(*(v3 + 16), a2);
    *(v3 + 56) = result;
    *(v3 + 76) = a2;
  }

  return result;
}

void sub_10007F908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007F940(uint64_t a1, int a2)
{
  *(a1 + 81) = 1;
  if (*(a1 + 82) == 1)
  {
    LOBYTE(v3) = 0;
    *(a1 + 80) = 0;
    *(a1 + 48) = -1;
    return v3 & 1;
  }

  *(a1 + 80) = a2 == 0;
  if (a2 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  *(a1 + 48) = v4;
  v5 = **(a1 + 32);
  if (v5)
  {
    if (*(a1 + 40) == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    (*(*v5 + 72))(v5, v6, 15);
    v4 = *(a1 + 48);
  }

  if (v4 >= *(a1 + 44))
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = v9 + ((v8 - v9) >> 1);
        v11 = *(a1 + 32);
        if (*v11)
        {
          (*(**v11 + 56))(*v11, v9 + ((v8 - v9) >> 1));
        }

        else
        {
          v11[4] = v10;
        }

        if (sub_100080494(a1) < *(a1 + 48))
        {
          v9 = v10 + 1;
        }

        else
        {
          v8 = v9 + ((v8 - v9) >> 1);
        }
      }

      while (v9 < v8);
    }

    else
    {
      v9 = 0;
    }

    v17 = *(a1 + 32);
    if (*v17)
    {
      (*(**v17 + 56))(*v17, v9);
    }

    else
    {
      v17[4] = v9;
    }

    if (v9 < *(a1 + 56) && sub_100080494(a1) == *(a1 + 48))
    {
      LOBYTE(v3) = 1;
      return v3 & 1;
    }

LABEL_45:
    LOBYTE(v3) = *(a1 + 80);
    return v3 & 1;
  }

  v7 = *(a1 + 32);
  if (*v7)
  {
    (*(**v7 + 48))(*v7);
  }

  else
  {
    v7[4] = 0;
  }

  while (1)
  {
    v13 = *(a1 + 32);
    if (*v13)
    {
      if ((*(**v13 + 16))(*v13))
      {
        goto LABEL_45;
      }
    }

    else if (v13[4] >= v13[2])
    {
      goto LABEL_45;
    }

    v14 = sub_100080494(a1);
    v15 = *(a1 + 48);
    v16 = v14 == v15;
    v3 = 2 * (v14 > v15);
    if (v16)
    {
      v3 = 1;
    }

    if (v3)
    {
      break;
    }

    v12 = *(a1 + 32);
    if (*v12)
    {
      (*(**v12 + 32))(*v12);
    }

    else
    {
      ++v12[4];
    }
  }

  if (v3 != 1)
  {
    goto LABEL_45;
  }

  return v3 & 1;
}

BOOL sub_10007FBD0(uint64_t a1)
{
  if (*(a1 + 80))
  {
    return 0;
  }

  v3 = *(a1 + 32);
  if (*v3)
  {
    if ((*(**v3 + 16))(*v3))
    {
      return 1;
    }
  }

  else if (v3[4] >= v3[2])
  {
    return 1;
  }

  if (*(a1 + 81) != 1)
  {
    return 0;
  }

  v4 = **(a1 + 32);
  if (v4)
  {
    if (*(a1 + 40) == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    (*(*v4 + 72))(v4, v5, 15);
  }

  return sub_100080494(a1) != *(a1 + 48);
}

uint64_t sub_10007FCBC(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    return a1 + 64;
  }

  v3 = *(a1 + 32);
  if (!*v3)
  {
    return v3[1] + 16 * v3[4];
  }

  (*(**v3 + 72))(*v3, 15, 15);
  v3 = *(a1 + 32);
  if (!*v3)
  {
    return v3[1] + 16 * v3[4];
  }

  v4 = *(**v3 + 24);

  return v4();
}

uint64_t sub_10007FD7C(uint64_t result)
{
  if (*(result + 80) == 1)
  {
    *(result + 80) = 0;
  }

  else
  {
    v1 = *(result + 32);
    result = *v1;
    if (*v1)
    {
      return (*(*result + 32))();
    }

    else
    {
      ++v1[4];
    }
  }

  return result;
}

uint64_t sub_10007FDD8(uint64_t a1, uint64_t a2)
{
  v2 = 4;
  if (!*(a1 + 82))
  {
    v2 = 0;
  }

  return v2 | a2;
}

uint64_t sub_10007FDF0(uint64_t a1)
{
  v1 = *(*(*(*a1 + 72))(a1) + 24);

  return v1();
}

uint64_t sub_10007FE70(uint64_t a1)
{
  v1 = *(*(*(*a1 + 72))(a1) + 32);

  return v1();
}

void *sub_10007FEE8(void *a1)
{
  *a1 = off_1001018D0;
  a1[1] = off_1001018F8;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_10007FF50(void *a1)
{
  *a1 = off_1001018D0;
  a1[1] = off_1001018F8;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_10007FFE0(void *a1)
{
  *a1 = off_1001018D0;
  a1[1] = off_1001018F8;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100080048(void *a1)
{
  *a1 = off_1001018D0;
  a1[1] = off_1001018F8;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_1000800D0(void *a1, uint64_t a2)
{
  *a1 = off_1001018F8;
  a1[1] = 48 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *sub_100080188(void *a1)
{
  *a1 = off_1001018F8;
  sub_10002C1E4(a1 + 3);
  return a1;
}

void sub_1000801CC(void *a1)
{
  *a1 = off_1001018F8;
  sub_10002C1E4(a1 + 3);

  operator delete();
}

void *sub_100080238(void *a1)
{
  *a1 = off_1001017E0;
  sub_100080300(a1[4], (a1 + 11));
  a1[11] = off_1001018D0;
  a1[12] = off_1001018F8;
  sub_10002C1E4(a1 + 15);
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_100080300(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = *result;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    else
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        --*v4;
      }
    }

    *(v3 + 40) = *(a2 + 56);
    *(a2 + 56) = v3;
  }

  return result;
}

uint64_t sub_10008037C(void *a1, uint64_t a2)
{
  v3 = 48 * a2;
  v4 = a1[1];
  if (192 * a2 > v4)
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

uint64_t sub_100080494(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*v2)
  {
    v3 = (*(**v2 + 24))(*v2);
  }

  else
  {
    v3 = v2[1] + 16 * v2[4];
  }

  return *(v3 + 4 * (*(a1 + 40) != 1));
}

uint64_t sub_100080504(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  *a1 = off_100101938;
  if (!a6)
  {
    operator new();
  }

  *(a1 + 8) = a6;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *(a1 + 52) = 0;
  *(a1 + 56) = -1;
  if (a3 == 3)
  {
    if (byte_10010E280 == 1)
    {
      sub_1000113AC(__p, "FATAL");
    }

    else
    {
      sub_1000113AC(__p, "ERROR");
    }

    sub_10002B1D4(&v17, __p);
    sub_10002AE44(&std::cerr, "SigmaMatcher: Bad match type", 28);
    sub_10002B280(&v17);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 16) = 4;
    *(a1 + 52) = 1;
  }

  if (!a4)
  {
    if (byte_10010E280 == 1)
    {
      sub_1000113AC(v12, "FATAL");
    }

    else
    {
      sub_1000113AC(v12, "ERROR");
    }

    sub_10002B1D4(&v14, v12);
    sub_10002AE44(&std::cerr, "SigmaMatcher: 0 cannot be used as sigma_label", 45);
    sub_10002B280(&v14);
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    *(a1 + 20) = -1;
    *(a1 + 52) = 1;
  }

  if (a5 == 1)
  {
    v10 = 1;
  }

  else
  {
    if (a5)
    {
      *(a1 + 24) = 0;
      return a1;
    }

    v10 = (*(*a2 + 56))(a2, 0x10000, 1) != 0;
  }

  *(a1 + 24) = v10;
  return a1;
}

void sub_100080750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v30 = *(v28 + 8);
  *(v28 + 8) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100080804(void *a1)
{
  v2 = a1[1];
  *a1 = off_100101938;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100080870(void *a1)
{
  v2 = a1[1];
  *a1 = off_100101938;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete();
}

uint64_t sub_100080998(uint64_t result, uint64_t a2)
{
  if (*(result + 56) != a2)
  {
    v2 = a2;
    v3 = result;
    *(result + 56) = a2;
    v4 = *(result + 8);
    if (*(v4 + 48) != a2)
    {
      sub_10007F754(*(v4 + 8), a2);
      *(v4 + 48) = v2;
      *(v4 + 25) = *(v4 + 20) != -1;
    }

    v5 = *(v3 + 20);
    if (v5 == -1)
    {
      result = 0;
    }

    else
    {
      result = sub_10007E878(*(v3 + 8), v5);
    }

    *(v3 + 25) = result;
  }

  return result;
}

uint64_t sub_100080A28(uint64_t a1, int a2)
{
  *(a1 + 48) = a2;
  v3 = *(a1 + 20);
  if (v3 != a2 || v3 == -1)
  {
    result = sub_10007E878(*(a1 + 8), a2);
    if (result)
    {
      *(a1 + 28) = -1;
    }

    else
    {
      if ((a2 - 1) > 0xFFFFFFFD)
      {
        return result;
      }

      if ((*(a1 + 25) & 1) == 0)
      {
        return result;
      }

      result = sub_10007E878(*(a1 + 8), *(a1 + 20));
      if (!result)
      {
        return result;
      }

      *(a1 + 28) = a2;
    }

    return 1;
  }

  if (byte_10010E280 == 1)
  {
    sub_1000113AC(__p, "FATAL");
  }

  else
  {
    sub_1000113AC(__p, "ERROR");
  }

  sub_10002B1D4(&v9, __p);
  sub_10002AE44(&std::cerr, "SigmaMatcher::Find: bad label (sigma)", 37);
  sub_10002B280(&v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  result = 0;
  *(a1 + 52) = 1;
  return result;
}

void sub_100080B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100080B80(uint64_t a1)
{
  v2 = *(a1 + 28);
  result = sub_10007EC3C(*(a1 + 8));
  v4 = result;
  if (v2 != -1)
  {
    v5 = *result;
    *(a1 + 32) = *result;
    result = (a1 + 32);
    *(a1 + 40) = *(v4 + 2);
    *(a1 + 44) = *(v4 + 3);
    if (*(a1 + 24) != 1)
    {
      v7 = *(a1 + 28);
      if (*(a1 + 16) == 1)
      {
        *result = v7;
        return result;
      }

      goto LABEL_10;
    }

    v6 = *(a1 + 20);
    if (v6 == v5)
    {
      *(a1 + 32) = *(a1 + 28);
    }

    if (v6 == HIDWORD(v5))
    {
      v7 = *(a1 + 28);
LABEL_10:
      *(a1 + 36) = v7;
    }
  }

  return result;
}

uint64_t sub_100080C2C(uint64_t a1)
{
  sub_10007FD7C(*(*(a1 + 8) + 8));
  result = sub_10007FBD0(*(*(a1 + 8) + 8));
  if (result && *(a1 + 25) == 1 && *(a1 + 28) == -1 && *(a1 + 48) >= 1)
  {
    result = sub_10007E878(*(a1 + 8), *(a1 + 20));
    *(a1 + 28) = *(a1 + 48);
  }

  return result;
}

uint64_t sub_100080CC8(uint64_t a1)
{
  result = (*(**(a1 + 8) + 80))(*(a1 + 8));
  if (*(a1 + 52))
  {
    result |= 4uLL;
  }

  v3 = *(a1 + 16);
  if (v3 != 4)
  {
    if (*(a1 + 24) == 1)
    {
      v4 = -4030464001;
      return result & (v4 & 0xFFFF0000FFFFFFFFLL | 0xEFFF00000000);
    }

    if (v3 == 2)
    {
      v4 = -3225223169;
      return result & (v4 & 0xFFFF0000FFFFFFFFLL | 0xEFFF00000000);
    }

    if (v3 == 1)
    {
      v4 = -809304065;
      return result & (v4 & 0xFFFF0000FFFFFFFFLL | 0xEFFF00000000);
    }

    if (byte_10010E280 == 1)
    {
      sub_1000113AC(__p, "FATAL");
    }

    else
    {
      sub_1000113AC(__p, "ERROR");
    }

    sub_10002B1D4(&v8, __p);
    sub_10002AE44(&std::cerr, "SigmaMatcher: Bad match type: ", 30);
    v5 = *(a1 + 16);
    std::ostream::operator<<();
    sub_10002B280(&v8);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_100080DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100080E34(uint64_t a1)
{
  if (*(a1 + 20) != -1 && *(a1 + 16) != 4)
  {
    return (*(**(a1 + 8) + 88))(*(a1 + 8)) | 1;
  }

  v2 = *(**(a1 + 8) + 88);

  return v2();
}

uint64_t sub_100080EC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != -1)
  {
    sub_100080998(a1, a2);
    if (*(a1 + 25))
    {
      return -1;
    }
  }

  v5 = *(a1 + 8);

  return sub_10007F2D4(v5, a2);
}

void *sub_100080FF4(void *a1)
{
  v2 = a1[1];
  *a1 = off_1001019D0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100081060(void *a1)
{
  v2 = a1[1];
  *a1 = off_1001019D0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete();
}

void sub_100081224(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = off_1001017E0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0;
  *(a1 + 40) = a3;
  *(a1 + 44) = a4;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0;
  v5 = *sub_10002B564();
  *(a1 + 64) = 0xFFFFFFFFLL;
  *(a1 + 72) = v5;
  *(a1 + 76) = -1;
  *(a1 + 82) = 0;
  *(a1 + 88) = off_1001018D0;
  sub_1000800D0((a1 + 96), 1);
}

void sub_1000813BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v18[11] = v19;
  v18[12] = off_1001018F8;
  sub_10002C1E4(v18 + 15);
  v21 = v18[1];
  v18[1] = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  _Unwind_Resume(a1);
}

void sub_100081454(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  v4 = *(a3 + 1);
  v5 = *(a3 + 1);
  v6 = *(a3 + 2);
  sub_100081800();
}

void *sub_1000814C8(void *a1)
{
  *a1 = off_100102DE8;
  v2 = a1[2];
  if (v2)
  {
    sub_100016EC0(v2);
  }

  return a1;
}

void sub_100081514(void *a1)
{
  *a1 = off_100102DE8;
  v1 = a1[2];
  if (v1)
  {
    sub_100016EC0(v1);
  }

  operator delete();
}

uint64_t sub_1000815A8(uint64_t a1, uint64_t a2, int a3)
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

void *sub_100081884(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100101B18;
  sub_10008197C((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_100081900(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100101B18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10008197C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *sub_10008288C(a1, a4) = off_100101B68;
  v8 = *(a4 + 48);
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(*v9.n128_u64[0] + 72))(v9.n128_u64[0], v9);
  *(a1 + 168) = (*(**(a1 + 152) + 72))(*(a1 + 152));
  v10 = *(a4 + 56);
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  *(a1 + 184) = *(a4 + 64) & 1;
  sub_1000113AC(&__str, "compose");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v11 = (*(*a3 + 96))(a3);
  v12 = (*(*a2 + 104))(a2);
  if (!sub_1000C6724(v11, v12, 1))
  {
    if (byte_10010E280 == 1)
    {
      sub_1000113AC(&__str, "FATAL");
    }

    else
    {
      sub_1000113AC(&__str, "ERROR");
    }

    sub_10002B1D4(&v25, &__str);
    v13 = sub_10002AE44(&std::cerr, "ComposeFst: Output symbol table of 1st argument ", 48);
    sub_10002AE44(v13, "does not match input symbol table of 2nd argument", 49);
    sub_10002B280(&v25);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    *(a1 + 8) |= 4uLL;
  }

  v14 = (*(**(a1 + 160) + 96))(*(a1 + 160));
  sub_10002DDA4(a1, v14);
  v15 = (*(**(a1 + 168) + 104))(*(a1 + 168));
  sub_10002DE44(a1, v15);
  sub_100081ECC(a1);
  if (dword_10010E8A8 >= 2)
  {
    sub_1000113AC(__p, "INFO");
    sub_10002B1D4(&v24, __p);
    sub_10002AE44(&std::cerr, "ComposeFstImpl: Match type: ", 28);
    v16 = *(a1 + 188);
    std::ostream::operator<<();
    sub_10002B280(&v24);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a1 + 188) == 4)
  {
    *(a1 + 8) |= 4uLL;
  }

  v17 = (*(*a2 + 56))(a2, 0xFFFFFFFF0007, 0);
  v18 = (*(*a3 + 56))(a3, 0xFFFFFFFF0007, 0);
  v19 = (*(**(a1 + 144) + 80))(*(a1 + 144), v17);
  v20 = (*(**(a1 + 152) + 80))(*(a1 + 152), v18);
  *(a1 + 8) = *(a1 + 8) & 0xFFFF00000000FFFFLL | sub_1000C89DC(v19, v20) & 0xFFFFFFFF0004;
  return a1;
}

void sub_100081DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_10008228C(v26);
  sub_100088030(v25);
  _Unwind_Resume(a1);
}

void sub_100081ECC(uint64_t a1)
{
  if (((*(**(a1 + 144) + 88))(*(a1 + 144)) & 1) != 0 && (*(**(a1 + 144) + 24))(*(a1 + 144), 1) != 2)
  {
    if (byte_10010E280 == 1)
    {
      sub_1000113AC(__p, "FATAL");
    }

    else
    {
      sub_1000113AC(__p, "ERROR");
    }

    sub_10002B1D4(&v14, __p);
    v9 = sub_10002AE44(&std::cerr, "ComposeFst: 1st argument cannot perform required matching ", 58);
    sub_10002AE44(v9, "(sort?).", 8);
  }

  else if (((*(**(a1 + 152) + 88))(*(a1 + 152)) & 1) != 0 && (*(**(a1 + 152) + 24))(*(a1 + 152), 1) != 1)
  {
    if (byte_10010E280 == 1)
    {
      sub_1000113AC(__p, "FATAL");
    }

    else
    {
      sub_1000113AC(__p, "ERROR");
    }

    sub_10002B1D4(&v14, __p);
    v10 = sub_10002AE44(&std::cerr, "ComposeFst: 2nd argument cannot perform required matching ", 58);
    sub_10002AE44(v10, "(sort?).", 8);
  }

  else
  {
    v2 = (*(**(a1 + 144) + 24))(*(a1 + 144), 0);
    v3 = (*(**(a1 + 152) + 24))(*(a1 + 152), 0);
    if (v3 == 1 && v2 == 2)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v6 = v2 == 2;
    if (v2 == 2)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }

    if (v6 || v3 == 1)
    {
      goto LABEL_36;
    }

    if ((*(**(a1 + 144) + 24))(*(a1 + 144), 1) == 2)
    {
      v7 = 2;
      goto LABEL_36;
    }

    v7 = 1;
    if ((*(**(a1 + 152) + 24))(*(a1 + 152), 1) == 1)
    {
      goto LABEL_36;
    }

    if (byte_10010E280 == 1)
    {
      sub_1000113AC(__p, "FATAL");
    }

    else
    {
      sub_1000113AC(__p, "ERROR");
    }

    sub_10002B1D4(&v14, __p);
    v11 = sub_10002AE44(&std::cerr, "ComposeFst: 1st argument cannot match on output labels ", 55);
    sub_10002AE44(v11, "and 2nd argument cannot match on input labels (sort?).", 54);
  }

  sub_10002B280(&v14);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = 4;
LABEL_36:
  *(a1 + 188) = v7;
}

void sub_100082234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_10008228C(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[1];
    v1[1] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    operator delete();
  }

  return result;
}

void sub_100082338(uint64_t a1)
{
  sub_10008B170(a1);

  operator delete();
}

uint64_t sub_10008239C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 56))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 56))(*(a1 + 168), 4, 0) || ((*(**(a1 + 144) + 80))(*(a1 + 144), 0) & 4) != 0 || ((*(**(a1 + 152) + 80))(*(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void sub_10008250C(void *a1, int a2)
{
  v4 = (*(a1[22] + 104) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v16 = *(v4 + 8);
  sub_10008D650(v7, v5, v6, &v16);
  if (sub_10008D780(a1, v5, v6))
  {
    v9 = a1[20];
    v8 = a1[21];
    v10 = a1[19];
    v11 = a1;
    v12 = a2;
    v13 = v6;
    v14 = v5;
    v15 = 1;
  }

  else
  {
    v8 = a1[20];
    v9 = a1[21];
    v10 = a1[18];
    v11 = a1;
    v12 = a2;
    v13 = v5;
    v14 = v6;
    v15 = 0;
  }

  sub_10008D8D4(v11, v12, v8, v13, v9, v14, v10, v15);
}

uint64_t sub_1000825C4(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(**(a1 + 144) + 24))(*(a1 + 144), 0) == a3 && (*(**(a1 + 152) + 24))(*(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_1000826AC(void **a1)
{
  result = (*(*a1[20] + 16))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    result = (*(*a1[21] + 16))(a1[21]);
    if (result != -1)
    {
      v4 = __PAIR64__(result, v3);
      v5 = 0;
      return sub_10008DE2C(a1[22], &v4, 1);
    }
  }

  return result;
}

int *sub_100082750@<X0>(void *a1@<X0>, int a2@<W1>, float *a3@<X8>)
{
  v5 = (*(a1[22] + 104) + 12 * a2);
  v6 = *v5;
  sub_10007F030(*(*(a1[18] + 8) + 8), v6, &v13);
  result = sub_10002B59C();
  v8 = v13;
  v15 = v13;
  v14 = *result;
  if (v13 != v14)
  {
    v9 = v5[1];
    sub_10007F030(*(*(a1[19] + 8) + 8), v9, &v12);
    result = sub_10002B59C();
    v8 = v12;
    v15 = v12;
    v14 = *result;
    if (v12 != v14)
    {
      v10 = a1[17];
      LOBYTE(v15) = *(v5 + 8);
      result = sub_10008D650(v10, v6, v9, &v15);
      if (v13 == -INFINITY || v12 >= -INFINITY && v12 <= -INFINITY)
      {
        result = sub_1000777A0();
        v8 = *result;
      }

      else
      {
        v11 = v12 == INFINITY || v13 == INFINITY;
        v8 = v13 + v12;
        if (v11)
        {
          v8 = INFINITY;
        }
      }
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10008288C(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001014A0;
  *(a1 + 8) = 0;
  sub_1000113AC((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = off_100101C60;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xFFFFFFFF00000000;
  *(a1 + 104) = *a2;
  v4 = *(a2 + 16);
  *(a1 + 112) = *(a2 + 8);
  *(a1 + 56) = 0;
  *(a1 + 60) = 0xFFFFFFFFLL;
  if (!v4)
  {
    operator new();
  }

  *(a1 + 120) = v4;
  *(a1 + 128) = 0;
  *(a1 + 129) = *(a2 + 24) & 1;
  return a1;
}

void sub_100082A28(uint64_t a1)
{
  sub_100088030(a1);

  operator delete();
}

void sub_100082A60(uint64_t a1, _BYTE *a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 32;
  *(a1 + 40) = a1 + 32;
  *(a1 + 48) = 0;
  operator new();
}

void sub_100082B50(_Unwind_Exception *a1)
{
  sub_100087F08(v1 + 10);
  sub_100087F08(v1 + 9);
  sub_100086140(v2);
  sub_100087F08(v1 + 7);
  v5 = *v3;
  if (*v3)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void *sub_100082BA4(void *a1)
{
  v2 = a1[1];
  if (a1[2] != v2)
  {
    v3 = 0;
    do
    {
      sub_100082C0C(*(v2 + 8 * v3++), a1 + 9);
      v2 = a1[1];
    }

    while (v3 < (a1[2] - v2) >> 3);
  }

  a1[2] = v2;

  return sub_100086140(a1 + 4);
}

uint64_t sub_100082C0C(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    v4 = (result + 24);
    sub_100082C6C(&v4);
    sub_100087F08((v3 + 48));
    result = sub_100084EB0(*a2);
    *(v3 + 64) = *(result + 56);
    *(result + 56) = v3;
  }

  return result;
}

void sub_100082C6C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    sub_100082CA8(v1 + 3, v2, (v1[2] - v2) >> 4);
  }
}

void sub_100082CA8(uint64_t *a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = sub_1000834A0(*a1);
    if (!__p)
    {
      return;
    }

    __p[4] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v4 = sub_100082DC8(*a1);
    if (!__p)
    {
      return;
    }

    __p[2] = *(v4 + 56);
LABEL_22:
    *(v4 + 56) = __p;
    return;
  }

  if (a3 <= 4)
  {
    v4 = sub_1000838F8(*a1);
    if (!__p)
    {
      return;
    }

    __p[8] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 8)
  {
    v4 = sub_100083D50(*a1);
    if (!__p)
    {
      return;
    }

    __p[16] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x10)
  {
    v4 = sub_1000841A8(*a1);
    if (!__p)
    {
      return;
    }

    __p[32] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x20)
  {
    v4 = sub_100084600(*a1);
    if (!__p)
    {
      return;
    }

    __p[64] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x40)
  {
    v4 = sub_100084A58(*a1);
    if (!__p)
    {
      return;
    }

    __p[128] = *(v4 + 56);
    goto LABEL_22;
  }

  operator delete(__p);
}

uint64_t sub_100082DC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x80)
  {
    sub_100082ED0((a1 + 16), 0x11uLL);
    v1 = *v2;
  }

  if (!*(v1 + 128))
  {
    operator new();
  }

  return *(v1 + 128);
}

void sub_100082ED0(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_100082F80(a1, v5);
  }
}

void sub_100082F80(uint64_t a1, unint64_t a2)
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
      sub_100017658();
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
      sub_100017670(a1, v10);
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
    sub_1000830A4(v14);
  }
}

uint64_t sub_1000830A4(uint64_t a1)
{
  sub_1000830DC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1000830DC(void *result, void *a2)
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

void *sub_100083150(void *a1)
{
  *a1 = off_100101CE8;
  a1[1] = off_100101D10;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000831B8(void *a1)
{
  *a1 = off_100101CE8;
  a1[1] = off_100101D10;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_100083248(void *a1)
{
  *a1 = off_100101CE8;
  a1[1] = off_100101D10;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000832B0(void *a1)
{
  *a1 = off_100101CE8;
  a1[1] = off_100101D10;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_100083338(void *a1, uint64_t a2)
{
  *a1 = off_100101D10;
  a1[1] = 24 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *sub_1000833F0(void *a1)
{
  *a1 = off_100101D10;
  sub_10002C1E4(a1 + 3);
  return a1;
}

void sub_100083434(void *a1)
{
  *a1 = off_100101D10;
  sub_10002C1E4(a1 + 3);

  operator delete();
}

uint64_t sub_1000834A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x100)
  {
    sub_100082ED0((a1 + 16), 0x21uLL);
    v1 = *v2;
  }

  if (!*(v1 + 256))
  {
    operator new();
  }

  return *(v1 + 256);
}

void *sub_1000835A8(void *a1)
{
  *a1 = off_100101DA8;
  a1[1] = off_100101DD0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100083610(void *a1)
{
  *a1 = off_100101DA8;
  a1[1] = off_100101DD0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_1000836A0(void *a1)
{
  *a1 = off_100101DA8;
  a1[1] = off_100101DD0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100083708(void *a1)
{
  *a1 = off_100101DA8;
  a1[1] = off_100101DD0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_100083790(void *a1, uint64_t a2)
{
  *a1 = off_100101DD0;
  a1[1] = 40 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *sub_100083848(void *a1)
{
  *a1 = off_100101DD0;
  sub_10002C1E4(a1 + 3);
  return a1;
}

void sub_10008388C(void *a1)
{
  *a1 = off_100101DD0;
  sub_10002C1E4(a1 + 3);

  operator delete();
}

uint64_t sub_1000838F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x200)
  {
    sub_100082ED0((a1 + 16), 0x41uLL);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

void *sub_100083A00(void *a1)
{
  *a1 = off_100101E68;
  a1[1] = off_100101E90;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100083A68(void *a1)
{
  *a1 = off_100101E68;
  a1[1] = off_100101E90;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_100083AF8(void *a1)
{
  *a1 = off_100101E68;
  a1[1] = off_100101E90;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100083B60(void *a1)
{
  *a1 = off_100101E68;
  a1[1] = off_100101E90;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_100083BE8(void *a1, uint64_t a2)
{
  *a1 = off_100101E90;
  a1[1] = 72 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *sub_100083CA0(void *a1)
{
  *a1 = off_100101E90;
  sub_10002C1E4(a1 + 3);
  return a1;
}

void sub_100083CE4(void *a1)
{
  *a1 = off_100101E90;
  sub_10002C1E4(a1 + 3);

  operator delete();
}

uint64_t sub_100083D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x400)
  {
    sub_100082ED0((a1 + 16), 0x81uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

void *sub_100083E58(void *a1)
{
  *a1 = off_100101F28;
  a1[1] = off_100101F50;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100083EC0(void *a1)
{
  *a1 = off_100101F28;
  a1[1] = off_100101F50;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_100083F50(void *a1)
{
  *a1 = off_100101F28;
  a1[1] = off_100101F50;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100083FB8(void *a1)
{
  *a1 = off_100101F28;
  a1[1] = off_100101F50;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_100084040(void *a1, uint64_t a2)
{
  *a1 = off_100101F50;
  a1[1] = 136 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *sub_1000840F8(void *a1)
{
  *a1 = off_100101F50;
  sub_10002C1E4(a1 + 3);
  return a1;
}

void sub_10008413C(void *a1)
{
  *a1 = off_100101F50;
  sub_10002C1E4(a1 + 3);

  operator delete();
}

uint64_t sub_1000841A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x800)
  {
    sub_100082ED0((a1 + 16), 0x101uLL);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

void *sub_1000842B0(void *a1)
{
  *a1 = off_100101FE8;
  a1[1] = off_100102010;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100084318(void *a1)
{
  *a1 = off_100101FE8;
  a1[1] = off_100102010;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_1000843A8(void *a1)
{
  *a1 = off_100101FE8;
  a1[1] = off_100102010;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100084410(void *a1)
{
  *a1 = off_100101FE8;
  a1[1] = off_100102010;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_100084498(void *a1, uint64_t a2)
{
  *a1 = off_100102010;
  a1[1] = 264 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *sub_100084550(void *a1)
{
  *a1 = off_100102010;
  sub_10002C1E4(a1 + 3);
  return a1;
}

void sub_100084594(void *a1)
{
  *a1 = off_100102010;
  sub_10002C1E4(a1 + 3);

  operator delete();
}

uint64_t sub_100084600(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x1000)
  {
    sub_100082ED0((a1 + 16), 0x201uLL);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

void *sub_100084708(void *a1)
{
  *a1 = off_1001020A8;
  a1[1] = off_1001020D0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100084770(void *a1)
{
  *a1 = off_1001020A8;
  a1[1] = off_1001020D0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_100084800(void *a1)
{
  *a1 = off_1001020A8;
  a1[1] = off_1001020D0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100084868(void *a1)
{
  *a1 = off_1001020A8;
  a1[1] = off_1001020D0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_1000848F0(void *a1, uint64_t a2)
{
  *a1 = off_1001020D0;
  a1[1] = 520 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *sub_1000849A8(void *a1)
{
  *a1 = off_1001020D0;
  sub_10002C1E4(a1 + 3);
  return a1;
}

void sub_1000849EC(void *a1)
{
  *a1 = off_1001020D0;
  sub_10002C1E4(a1 + 3);

  operator delete();
}

uint64_t sub_100084A58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x2000)
  {
    sub_100082ED0((a1 + 16), 0x401uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x2000))
  {
    operator new();
  }

  return *(v1 + 0x2000);
}

void *sub_100084B60(void *a1)
{
  *a1 = off_100102168;
  a1[1] = off_100102190;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100084BC8(void *a1)
{
  *a1 = off_100102168;
  a1[1] = off_100102190;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_100084C58(void *a1)
{
  *a1 = off_100102168;
  a1[1] = off_100102190;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100084CC0(void *a1)
{
  *a1 = off_100102168;
  a1[1] = off_100102190;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_100084D48(void *a1, uint64_t a2)
{
  *a1 = off_100102190;
  a1[1] = 1032 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *sub_100084E00(void *a1)
{
  *a1 = off_100102190;
  sub_10002C1E4(a1 + 3);
  return a1;
}

void sub_100084E44(void *a1)
{
  *a1 = off_100102190;
  sub_10002C1E4(a1 + 3);

  operator delete();
}

uint64_t sub_100084EB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x200)
  {
    sub_100082ED0((a1 + 16), 0x41uLL);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

void *sub_100084FB8(void *a1)
{
  *a1 = off_100101E68;
  a1[1] = off_100101E90;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100085020(void *a1)
{
  *a1 = off_100101E68;
  a1[1] = off_100101E90;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_1000850A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x400)
  {
    sub_100082ED0((a1 + 16), 0x81uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

void *sub_1000851B0(void *a1)
{
  *a1 = off_100101F28;
  a1[1] = off_100101F50;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100085218(void *a1)
{
  *a1 = off_100101F28;
  a1[1] = off_100101F50;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_1000852A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x800)
  {
    sub_100082ED0((a1 + 16), 0x101uLL);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

void *sub_1000853A8(void *a1)
{
  *a1 = off_100101FE8;
  a1[1] = off_100102010;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100085410(void *a1)
{
  *a1 = off_100101FE8;
  a1[1] = off_100102010;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_100085498(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x1000)
  {
    sub_100082ED0((a1 + 16), 0x201uLL);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

void *sub_1000855A0(void *a1)
{
  *a1 = off_1001020A8;
  a1[1] = off_1001020D0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100085608(void *a1)
{
  *a1 = off_1001020A8;
  a1[1] = off_1001020D0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_100085690(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x2000)
  {
    sub_100082ED0((a1 + 16), 0x401uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x2000))
  {
    operator new();
  }

  return *(v1 + 0x2000);
}

void *sub_100085798(void *a1)
{
  *a1 = off_100102168;
  a1[1] = off_100102190;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100085800(void *a1)
{
  *a1 = off_100102168;
  a1[1] = off_100102190;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_100085888(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x4000)
  {
    sub_100082ED0((a1 + 16), 0x801uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x4000))
  {
    operator new();
  }

  return *(v1 + 0x4000);
}

void *sub_100085990(void *a1)
{
  *a1 = off_100102368;
  a1[1] = off_100102390;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000859F8(void *a1)
{
  *a1 = off_100102368;
  a1[1] = off_100102390;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_100085A88(void *a1)
{
  *a1 = off_100102368;
  a1[1] = off_100102390;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100085AF0(void *a1)
{
  *a1 = off_100102368;
  a1[1] = off_100102390;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_100085B78(void *a1, uint64_t a2)
{
  *a1 = off_100102390;
  a1[1] = 2056 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *sub_100085C30(void *a1)
{
  *a1 = off_100102390;
  sub_10002C1E4(a1 + 3);
  return a1;
}

void sub_100085C74(void *a1)
{
  *a1 = off_100102390;
  sub_10002C1E4(a1 + 3);

  operator delete();
}

uint64_t sub_100085CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x8000)
  {
    sub_100082ED0((a1 + 16), 0x1001uLL);
    v1 = *v2;
  }

  if (!*(v1 + 0x8000))
  {
    operator new();
  }

  return *(v1 + 0x8000);
}

void *sub_100085DF0(void *a1)
{
  *a1 = off_100102428;
  a1[1] = off_100102450;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100085E58(void *a1)
{
  *a1 = off_100102428;
  a1[1] = off_100102450;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_100085EE8(void *a1)
{
  *a1 = off_100102428;
  a1[1] = off_100102450;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100085F50(void *a1)
{
  *a1 = off_100102428;
  a1[1] = off_100102450;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_100085FD8(void *a1, uint64_t a2)
{
  *a1 = off_100102450;
  a1[1] = 4104 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *sub_100086090(void *a1)
{
  *a1 = off_100102450;
  sub_10002C1E4(a1 + 3);
  return a1;
}

void sub_1000860D4(void *a1)
{
  *a1 = off_100102450;
  sub_10002C1E4(a1 + 3);

  operator delete();
}

void *sub_100086140(void *result)
{
  if (result[2])
  {
    v1 = result;
    v2 = result[1];
    v3 = *(*result + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    result[2] = 0;
    while (v2 != v1)
    {
      v5 = v2[1];
      result = sub_1000861A0(v1, v2);
      v2 = v5;
    }
  }

  return result;
}

uint64_t sub_1000861A0(uint64_t a1, uint64_t a2)
{
  result = sub_1000862FC(*(a1 + 24));
  if (a2)
  {
    *(a2 + 24) = *(result + 56);
    *(result + 56) = a2;
  }

  return result;
}

void sub_1000861DC(uint64_t *a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = sub_100086750(*a1);
    if (!__p)
    {
      return;
    }

    __p[6] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v4 = sub_1000862FC(*a1);
    if (!__p)
    {
      return;
    }

    __p[3] = *(v4 + 56);
LABEL_22:
    *(v4 + 56) = __p;
    return;
  }

  if (a3 <= 4)
  {
    v4 = sub_100086948(*a1);
    if (!__p)
    {
      return;
    }

    __p[12] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 8)
  {
    v4 = sub_100086DA0(*a1);
    if (!__p)
    {
      return;
    }

    __p[24] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x10)
  {
    v4 = sub_1000871F8(*a1);
    if (!__p)
    {
      return;
    }

    __p[48] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x20)
  {
    v4 = sub_100087650(*a1);
    if (!__p)
    {
      return;
    }

    __p[96] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x40)
  {
    v4 = sub_100087AAC(*a1);
    if (!__p)
    {
      return;
    }

    __p[192] = *(v4 + 56);
    goto LABEL_22;
  }

  operator delete(__p);
}

uint64_t sub_1000862FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0xC7)
  {
    sub_100082ED0((a1 + 16), 0x19uLL);
    v1 = *v2;
  }

  if (!*(v1 + 192))
  {
    operator new();
  }

  return *(v1 + 192);
}

void *sub_100086404(void *a1)
{
  *a1 = off_1001024E8;
  a1[1] = off_100102510;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_10008646C(void *a1)
{
  *a1 = off_1001024E8;
  a1[1] = off_100102510;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_1000864FC(void *a1)
{
  *a1 = off_1001024E8;
  a1[1] = off_100102510;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100086564(void *a1)
{
  *a1 = off_1001024E8;
  a1[1] = off_100102510;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_1000865EC(void *a1, uint64_t a2)
{
  *a1 = off_100102510;
  a1[1] = 32 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *sub_1000866A0(void *a1)
{
  *a1 = off_100102510;
  sub_10002C1E4(a1 + 3);
  return a1;
}

void sub_1000866E4(void *a1)
{
  *a1 = off_100102510;
  sub_10002C1E4(a1 + 3);

  operator delete();
}

uint64_t sub_100086750(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x187)
  {
    sub_100082ED0((a1 + 16), 0x31uLL);
    v1 = *v2;
  }

  if (!*(v1 + 384))
  {
    operator new();
  }

  return *(v1 + 384);
}

void *sub_100086858(void *a1)
{
  *a1 = off_100101040;
  a1[1] = off_100101068;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000868C0(void *a1)
{
  *a1 = off_100101040;
  a1[1] = off_100101068;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_100086948(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x307)
  {
    sub_100082ED0((a1 + 16), 0x61uLL);
    v1 = *v2;
  }

  if (!*(v1 + 768))
  {
    operator new();
  }

  return *(v1 + 768);
}

void *sub_100086A50(void *a1)
{
  *a1 = off_1001025E8;
  a1[1] = off_100102610;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100086AB8(void *a1)
{
  *a1 = off_1001025E8;
  a1[1] = off_100102610;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_100086B48(void *a1)
{
  *a1 = off_1001025E8;
  a1[1] = off_100102610;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100086BB0(void *a1)
{
  *a1 = off_1001025E8;
  a1[1] = off_100102610;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_100086C38(void *a1, uint64_t a2)
{
  *a1 = off_100102610;
  a1[1] = 104 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *sub_100086CF0(void *a1)
{
  *a1 = off_100102610;
  sub_10002C1E4(a1 + 3);
  return a1;
}

void sub_100086D34(void *a1)
{
  *a1 = off_100102610;
  sub_10002C1E4(a1 + 3);

  operator delete();
}

uint64_t sub_100086DA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x607)
  {
    sub_100082ED0((a1 + 16), 0xC1uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1536))
  {
    operator new();
  }

  return *(v1 + 1536);
}

void *sub_100086EA8(void *a1)
{
  *a1 = off_1001026A8;
  a1[1] = off_1001026D0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100086F10(void *a1)
{
  *a1 = off_1001026A8;
  a1[1] = off_1001026D0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_100086FA0(void *a1)
{
  *a1 = off_1001026A8;
  a1[1] = off_1001026D0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100087008(void *a1)
{
  *a1 = off_1001026A8;
  a1[1] = off_1001026D0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_100087090(void *a1, uint64_t a2)
{
  *a1 = off_1001026D0;
  a1[1] = 200 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *sub_100087148(void *a1)
{
  *a1 = off_1001026D0;
  sub_10002C1E4(a1 + 3);
  return a1;
}

void sub_10008718C(void *a1)
{
  *a1 = off_1001026D0;
  sub_10002C1E4(a1 + 3);

  operator delete();
}

uint64_t sub_1000871F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0xC07)
  {
    sub_100082ED0((a1 + 16), 0x181uLL);
    v1 = *v2;
  }

  if (!*(v1 + 3072))
  {
    operator new();
  }

  return *(v1 + 3072);
}

void *sub_100087300(void *a1)
{
  *a1 = off_100102768;
  a1[1] = off_100102790;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100087368(void *a1)
{
  *a1 = off_100102768;
  a1[1] = off_100102790;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_1000873F8(void *a1)
{
  *a1 = off_100102768;
  a1[1] = off_100102790;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100087460(void *a1)
{
  *a1 = off_100102768;
  a1[1] = off_100102790;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_1000874E8(void *a1, uint64_t a2)
{
  *a1 = off_100102790;
  a1[1] = 392 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *sub_1000875A0(void *a1)
{
  *a1 = off_100102790;
  sub_10002C1E4(a1 + 3);
  return a1;
}

void sub_1000875E4(void *a1)
{
  *a1 = off_100102790;
  sub_10002C1E4(a1 + 3);

  operator delete();
}

uint64_t sub_100087650(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0x300)
  {
    sub_100082ED0((a1 + 16), 0x301uLL);
    v1 = *v2;
  }

  if (!*(v1 + 6144))
  {
    operator new();
  }

  return *(v1 + 6144);
}

void *sub_10008775C(void *a1)
{
  *a1 = off_100102828;
  a1[1] = off_100102850;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000877C4(void *a1)
{
  *a1 = off_100102828;
  a1[1] = off_100102850;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_100087854(void *a1)
{
  *a1 = off_100102828;
  a1[1] = off_100102850;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000878BC(void *a1)
{
  *a1 = off_100102828;
  a1[1] = off_100102850;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_100087944(void *a1, uint64_t a2)
{
  *a1 = off_100102850;
  a1[1] = 776 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *sub_1000879FC(void *a1)
{
  *a1 = off_100102850;
  sub_10002C1E4(a1 + 3);
  return a1;
}

void sub_100087A40(void *a1)
{
  *a1 = off_100102850;
  sub_10002C1E4(a1 + 3);

  operator delete();
}

uint64_t sub_100087AAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0x600)
  {
    sub_100082ED0((a1 + 16), 0x601uLL);
    v1 = *v2;
  }

  if (!*(v1 + 12288))
  {
    operator new();
  }

  return *(v1 + 12288);
}

void *sub_100087BB8(void *a1)
{
  *a1 = off_1001028E8;
  a1[1] = off_100102910;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100087C20(void *a1)
{
  *a1 = off_1001028E8;
  a1[1] = off_100102910;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_100087CB0(void *a1)
{
  *a1 = off_1001028E8;
  a1[1] = off_100102910;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100087D18(void *a1)
{
  *a1 = off_1001028E8;
  a1[1] = off_100102910;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_100087DA0(void *a1, uint64_t a2)
{
  *a1 = off_100102910;
  a1[1] = 1544 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *sub_100087E58(void *a1)
{
  *a1 = off_100102910;
  sub_10002C1E4(a1 + 3);
  return a1;
}

void sub_100087E9C(void *a1)
{
  *a1 = off_100102910;
  sub_10002C1E4(a1 + 3);

  operator delete();
}

uint64_t *sub_100087F08(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 8) - 1;
  *(*result + 8) = v2;
  if (!v2)
  {
    v3 = (v1 + 16);
    sub_100087F70(&v3);
    operator delete();
  }

  return result;
}

void sub_100087F70(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100087FC4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_100087FC4(void *result)
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

uint64_t sub_100088030(uint64_t a1)
{
  *a1 = off_100101C60;
  if (*(a1 + 129) == 1)
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      sub_1000880B8(v2);
      operator delete();
    }
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    operator delete(v3);
  }

  return sub_10002E148(a1);
}

uint64_t *sub_1000880B8(uint64_t *a1)
{
  sub_100082BA4(a1);
  sub_100087F08(a1 + 10);
  sub_100087F08(a1 + 9);
  sub_100086140(a1 + 4);
  sub_100087F08(a1 + 7);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100088114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    operator new();
  }

  *a1 = a4;
  if (!a5)
  {
    operator new();
  }

  *(a1 + 8) = a5;
  *(a1 + 16) = (*(*a4 + 72))(a4);
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

void sub_10008829C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  *a1 = a3;
  if (!a4)
  {
    operator new();
  }

  a1[1] = a4;
  a1[2] = a1;
  a1[3] = a1;
  sub_100088480();
}

void sub_100088344(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000883B0(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      v2 = result[1] - *result;
      sub_10008B118(result, a2);
    }

    sub_100017658();
  }

  return result;
}

uint64_t sub_100088580(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1000885C0(a1 + 8, v2);
  }

  sub_100087F08((a1 + 16));
  return a1;
}

void sub_1000885E0(uint64_t *a1, void *__p, unint64_t a3)
{
  if (a3 == 2)
  {
    v4 = sub_100088B54(*a1);
    if (!__p)
    {
      return;
    }

    __p[2] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    v4 = sub_100088700(*a1);
    if (!__p)
    {
      return;
    }

    __p[1] = *(v4 + 56);
LABEL_22:
    *(v4 + 56) = __p;
    return;
  }

  if (a3 <= 4)
  {
    v4 = sub_100088D4C(*a1);
    if (!__p)
    {
      return;
    }

    __p[4] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 8)
  {
    v4 = sub_100088F44(*a1);
    if (!__p)
    {
      return;
    }

    __p[8] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x10)
  {
    v4 = sub_10008913C(*a1);
    if (!__p)
    {
      return;
    }

    __p[16] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x20)
  {
    v4 = sub_100089334(*a1);
    if (!__p)
    {
      return;
    }

    __p[32] = *(v4 + 56);
    goto LABEL_22;
  }

  if (a3 <= 0x40)
  {
    v4 = sub_10008952C(*a1);
    if (!__p)
    {
      return;
    }

    __p[64] = *(v4 + 56);
    goto LABEL_22;
  }

  operator delete(__p);
}

uint64_t sub_100088700(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x40)
  {
    sub_100082ED0((a1 + 16), 9uLL);
    v1 = *v2;
  }

  if (!*(v1 + 64))
  {
    operator new();
  }

  return *(v1 + 64);
}

void *sub_100088808(void *a1)
{
  *a1 = off_1001029A8;
  a1[1] = off_1001029D0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100088870(void *a1)
{
  *a1 = off_1001029A8;
  a1[1] = off_1001029D0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void *sub_100088900(void *a1)
{
  *a1 = off_1001029A8;
  a1[1] = off_1001029D0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100088968(void *a1)
{
  *a1 = off_1001029A8;
  a1[1] = off_1001029D0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_1000889F0(void *a1, uint64_t a2)
{
  *a1 = off_1001029D0;
  a1[1] = 16 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *sub_100088AA4(void *a1)
{
  *a1 = off_1001029D0;
  sub_10002C1E4(a1 + 3);
  return a1;
}

void sub_100088AE8(void *a1)
{
  *a1 = off_1001029D0;
  sub_10002C1E4(a1 + 3);

  operator delete();
}

uint64_t sub_100088B54(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x80)
  {
    sub_100082ED0((a1 + 16), 0x11uLL);
    v1 = *v2;
  }

  if (!*(v1 + 128))
  {
    operator new();
  }

  return *(v1 + 128);
}

void *sub_100088C5C(void *a1)
{
  *a1 = off_100101CE8;
  a1[1] = off_100101D10;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100088CC4(void *a1)
{
  *a1 = off_100101CE8;
  a1[1] = off_100101D10;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_100088D4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x100)
  {
    sub_100082ED0((a1 + 16), 0x21uLL);
    v1 = *v2;
  }

  if (!*(v1 + 256))
  {
    operator new();
  }

  return *(v1 + 256);
}

void *sub_100088E54(void *a1)
{
  *a1 = off_100101DA8;
  a1[1] = off_100101DD0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_100088EBC(void *a1)
{
  *a1 = off_100101DA8;
  a1[1] = off_100101DD0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_100088F44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x200)
  {
    sub_100082ED0((a1 + 16), 0x41uLL);
    v1 = *v2;
  }

  if (!*(v1 + 512))
  {
    operator new();
  }

  return *(v1 + 512);
}

void *sub_10008904C(void *a1)
{
  *a1 = off_100101E68;
  a1[1] = off_100101E90;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000890B4(void *a1)
{
  *a1 = off_100101E68;
  a1[1] = off_100101E90;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_10008913C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x400)
  {
    sub_100082ED0((a1 + 16), 0x81uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1024))
  {
    operator new();
  }

  return *(v1 + 1024);
}

void *sub_100089244(void *a1)
{
  *a1 = off_100101F28;
  a1[1] = off_100101F50;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000892AC(void *a1)
{
  *a1 = off_100101F28;
  a1[1] = off_100101F50;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_100089334(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x800)
  {
    sub_100082ED0((a1 + 16), 0x101uLL);
    v1 = *v2;
  }

  if (!*(v1 + 2048))
  {
    operator new();
  }

  return *(v1 + 2048);
}

void *sub_10008943C(void *a1)
{
  *a1 = off_100101FE8;
  a1[1] = off_100102010;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000894A4(void *a1)
{
  *a1 = off_100101FE8;
  a1[1] = off_100102010;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_10008952C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x1000)
  {
    sub_100082ED0((a1 + 16), 0x201uLL);
    v1 = *v2;
  }

  if (!*(v1 + 4096))
  {
    operator new();
  }

  return *(v1 + 4096);
}

void *sub_100089634(void *a1)
{
  *a1 = off_1001020A8;
  a1[1] = off_1001020D0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_10008969C(void *a1)
{
  *a1 = off_1001020A8;
  a1[1] = off_1001020D0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_100089724(uint64_t a1, size_t __n)
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
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 40) / *(a1 + 56));
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
LABEL_6:

      sub_100089814(a1, prime);
    }
  }
}

void sub_100089814(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = sub_100089964((a1 + 16), a2);
    v5 = *a1;
    *a1 = v4;
    if (v5)
    {
      sub_1000885C0(a1 + 8, v5);
    }

    v6 = 0;
    *(a1 + 8) = a2;
    do
    {
      *(*a1 + 8 * v6++) = 0;
    }

    while (a2 != v6);
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = v7[1];
      v9 = vcnt_s8(a2);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        if (v8 >= a2)
        {
          v8 %= a2;
        }
      }

      else
      {
        v8 &= a2 - 1;
      }

      *(*a1 + 8 * v8) = a1 + 24;
      v11 = *v7;
      if (*v7)
      {
        do
        {
          v12 = v11[1];
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= a2)
            {
              v12 %= a2;
            }
          }

          else
          {
            v12 &= a2 - 1;
          }

          if (v12 != v8)
          {
            v13 = *a1;
            if (!*(*a1 + 8 * v12))
            {
              v13[v12] = v7;
              goto LABEL_23;
            }

            *v7 = *v11;
            *v11 = *v13[v12];
            *v13[v12] = v11;
            v11 = v7;
          }

          v12 = v8;
LABEL_23:
          v7 = v11;
          v11 = *v11;
          v8 = v12;
        }

        while (v11);
      }
    }
  }

  else
  {
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      sub_1000885C0(a1 + 8, v10);
    }

    *(a1 + 8) = 0;
  }
}

void *sub_100089964(uint64_t *a1, unint64_t a2)
{
  if (a2 == 2)
  {
    v2 = sub_100088B54(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_100089C48((v2 + 8), 1);
      result[2] = 0;
      return result;
    }

    v4 = result[2];
  }

  else if (a2 == 1)
  {
    v2 = sub_100088700(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_100089B38((v2 + 8), 1);
      result[1] = 0;
      return result;
    }

    v4 = result[1];
  }

  else if (a2 > 4)
  {
    if (a2 > 8)
    {
      if (a2 > 0x10)
      {
        if (a2 > 0x20)
        {
          if (a2 > 0x40)
          {
            if (!(a2 >> 61))
            {

              operator new();
            }

            sub_100016D60();
          }

          v2 = sub_10008952C(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = sub_10008A1C0((v2 + 8), 1);
            result[64] = 0;
            return result;
          }

          v4 = result[64];
        }

        else
        {
          v2 = sub_100089334(*a1);
          result = *(v2 + 56);
          if (!result)
          {
            result = sub_10008A0A8((v2 + 8), 1);
            result[32] = 0;
            return result;
          }

          v4 = result[32];
        }
      }

      else
      {
        v2 = sub_10008913C(*a1);
        result = *(v2 + 56);
        if (!result)
        {
          result = sub_100089F90((v2 + 8), 1);
          result[16] = 0;
          return result;
        }

        v4 = result[16];
      }
    }

    else
    {
      v2 = sub_100088F44(*a1);
      result = *(v2 + 56);
      if (!result)
      {
        result = sub_100089E78((v2 + 8), 1);
        result[8] = 0;
        return result;
      }

      v4 = result[8];
    }
  }

  else
  {
    v2 = sub_100088D4C(*a1);
    result = *(v2 + 56);
    if (!result)
    {
      result = sub_100089D60((v2 + 8), 1);
      result[4] = 0;
      return result;
    }

    v4 = result[4];
  }

  *(v2 + 56) = v4;
  return result;
}

uint64_t sub_100089B38(void *a1, uint64_t a2)
{
  v3 = 16 * a2;
  v4 = a1[1];
  if (v4 < a2 << 6)
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

uint64_t sub_100089C48(void *a1, uint64_t a2)
{
  v3 = 24 * a2;
  v4 = a1[1];
  if (96 * a2 > v4)
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

uint64_t sub_100089D60(void *a1, uint64_t a2)
{
  v3 = 40 * a2;
  v4 = a1[1];
  if (160 * a2 > v4)
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

uint64_t sub_100089E78(void *a1, uint64_t a2)
{
  v3 = 72 * a2;
  v4 = a1[1];
  if (288 * a2 > v4)
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

uint64_t sub_100089F90(void *a1, uint64_t a2)
{
  v3 = 136 * a2;
  v4 = a1[1];
  if (544 * a2 > v4)
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

uint64_t sub_10008A0A8(void *a1, uint64_t a2)
{
  v3 = 264 * a2;
  v4 = a1[1];
  if (1056 * a2 > v4)
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

uint64_t sub_10008A1C0(void *a1, uint64_t a2)
{
  v3 = 520 * a2;
  v4 = a1[1];
  if (2080 * a2 > v4)
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

uint64_t sub_10008A2D8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = sub_10008A348(*(a1 + 32));
      v2[3] = *(v4 + 56);
      *(v4 + 56) = v2;
      v2 = v3;
    }

    while (v3);
  }

  sub_100087F08((a1 + 32));

  return sub_100088580(a1);
}

uint64_t sub_10008A348(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0xC7)
  {
    sub_100082ED0((a1 + 16), 0x19uLL);
    v1 = *v2;
  }

  if (!*(v1 + 192))
  {
    operator new();
  }

  return *(v1 + 192);
}

void *sub_10008A450(void *a1)
{
  *a1 = off_1001024E8;
  a1[1] = off_100102510;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_10008A4B8(void *a1)
{
  *a1 = off_1001024E8;
  a1[1] = off_100102510;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_10008A540(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x187)
  {
    sub_100082ED0((a1 + 16), 0x31uLL);
    v1 = *v2;
  }

  if (!*(v1 + 384))
  {
    operator new();
  }

  return *(v1 + 384);
}

void *sub_10008A648(void *a1)
{
  *a1 = off_100101040;
  a1[1] = off_100101068;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_10008A6B0(void *a1)
{
  *a1 = off_100101040;
  a1[1] = off_100101068;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_10008A738(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x307)
  {
    sub_100082ED0((a1 + 16), 0x61uLL);
    v1 = *v2;
  }

  if (!*(v1 + 768))
  {
    operator new();
  }

  return *(v1 + 768);
}

void *sub_10008A840(void *a1)
{
  *a1 = off_1001025E8;
  a1[1] = off_100102610;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_10008A8A8(void *a1)
{
  *a1 = off_1001025E8;
  a1[1] = off_100102610;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_10008A930(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0x607)
  {
    sub_100082ED0((a1 + 16), 0xC1uLL);
    v1 = *v2;
  }

  if (!*(v1 + 1536))
  {
    operator new();
  }

  return *(v1 + 1536);
}

void *sub_10008AA38(void *a1)
{
  *a1 = off_1001026A8;
  a1[1] = off_1001026D0;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_10008AAA0(void *a1)
{
  *a1 = off_1001026A8;
  a1[1] = off_1001026D0;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_10008AB28(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) <= 0xC07)
  {
    sub_100082ED0((a1 + 16), 0x181uLL);
    v1 = *v2;
  }

  if (!*(v1 + 3072))
  {
    operator new();
  }

  return *(v1 + 3072);
}

void *sub_10008AC30(void *a1)
{
  *a1 = off_100102768;
  a1[1] = off_100102790;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_10008AC98(void *a1)
{
  *a1 = off_100102768;
  a1[1] = off_100102790;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_10008AD20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0x300)
  {
    sub_100082ED0((a1 + 16), 0x301uLL);
    v1 = *v2;
  }

  if (!*(v1 + 6144))
  {
    operator new();
  }

  return *(v1 + 6144);
}

void *sub_10008AE2C(void *a1)
{
  *a1 = off_100102828;
  a1[1] = off_100102850;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_10008AE94(void *a1)
{
  *a1 = off_100102828;
  a1[1] = off_100102850;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

uint64_t sub_10008AF1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  if ((*(a1 + 24) - v1) >> 3 <= 0x600)
  {
    sub_100082ED0((a1 + 16), 0x601uLL);
    v1 = *v2;
  }

  if (!*(v1 + 12288))
  {
    operator new();
  }

  return *(v1 + 12288);
}

void *sub_10008B028(void *a1)
{
  *a1 = off_1001028E8;
  a1[1] = off_100102910;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_10008B090(void *a1)
{
  *a1 = off_1001028E8;
  a1[1] = off_100102910;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_10008B118(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_100016D60();
}