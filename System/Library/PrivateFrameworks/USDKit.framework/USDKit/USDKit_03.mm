void sub_270354360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270354640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_2703546D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270354774(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27035480C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_2703548E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_2703549CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270354AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270354B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270354C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270354D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270354D58(uint64_t a1, const void *a2, unint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  __dst = 0;
  memset(v5, 0, sizeof(v5));
  sub_27030E054(v5, a3);
  sub_270310DE0(v5);
  memcpy(__dst, a2, 4 * a3);
  v7 = &off_288040CB8;
  sub_27032C360();
}

void sub_270354E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270354EAC(uint64_t a1, const void *a2, unint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  __dst = 0;
  memset(v5, 0, sizeof(v5));
  sub_2703208AC(v5, a3);
  sub_27032C7E0(v5);
  memcpy(__dst, a2, 4 * a3);
  v7 = &off_288040D70;
  sub_27032C360();
}

void sub_270354F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270355000(uint64_t a1, const void *a2, unint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  __dst = 0;
  memset(v5, 0, sizeof(v5));
  sub_270320A2C(v5, a3);
  sub_270328150(v5);
  memcpy(__dst, a2, 16 * a3);
  v7 = off_288040E28;
  sub_270318A3C();
}

void sub_2703550D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270355268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2703552C4(pxrInternal__aapl__pxrReserved__::VtValue *a1, _DWORD *a2)
{
  v3 = sub_27031D854(a1);
  v4 = *(v3 + 16);
  v34 = *v3;
  v35 = v4;
  v5 = *(v3 + 32);
  v36 = v5;
  if (v5)
  {
    v6 = (v5 - 1);
    if (*(&v35 + 1))
    {
      v6 = *(&v35 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  if (*a2 == 3)
  {
    *__p = 0uLL;
    v33 = 0uLL;
    sub_270340D70(a2, __p);
    TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(__p);
    v7 = MEMORY[0x277D86578];
    if (!atomic_load(MEMORY[0x277D86578]))
    {
      sub_270318AF4(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      pxrInternal__aapl__pxrReserved__::UsdAttribute::Set();
    }

    else
    {
      if (!atomic_load(v7))
      {
        sub_270318AF4(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        *v25 = 0u;
        memset(v26, 0, sizeof(v26));
        sub_2703211BC(v25, v34);
        if (v34)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          do
          {
            sub_27032D564(&v34);
            MEMORY[0x27439E620](&v28, v36 + v14);
            sub_27032DE68(v25);
            v17 = (*&v26[16] + v15);
            if ((*&v26[16] + v15) == &v28)
            {
              if ((v28 & 7) != 0)
              {
                atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }

            else
            {
              if ((*v17 & 7) != 0)
              {
                atomic_fetch_add_explicit((*v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              *v17 = v28;
            }

            ++v16;
            v15 += 8;
            v14 += 24;
          }

          while (v34 > v16);
        }

        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>();
      }

      if (!atomic_load(v7))
      {
        sub_270318AF4(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        v30 = 0;
        v28 = 0u;
        v29 = 0u;
        sub_270321314(&v28, v34);
        if (v34)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          do
          {
            sub_27032D564(&v34);
            MEMORY[0x27439E030](v25, v36 + v19);
            sub_27032EFE8(&v28);
            v22 = v30 + v20;
            if (*(v30 + v20 + 23) < 0)
            {
              operator delete(*v22);
            }

            v23 = *v25;
            *(v22 + 16) = *v26;
            *v22 = v23;
            v26[7] = 0;
            LOBYTE(v25[0]) = 0;
            if (*(v22 + 47) < 0)
            {
              operator delete(*(v22 + 24));
            }

            v24 = *&v26[8];
            *(v22 + 40) = v27;
            *(v22 + 24) = v24;
            HIBYTE(v27) = 0;
            v26[8] = 0;
            if ((v26[7] & 0x80000000) != 0)
            {
              operator delete(v25[0]);
            }

            ++v21;
            v20 += 48;
            v19 += 24;
          }

          while (v34 > v21);
        }

        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>();
      }
    }

    if ((BYTE8(v33) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v33 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v33);
    v12 = __p[1];
    if (__p[1])
    {
LABEL_52:
      sub_270314574(v12);
    }
  }

  else
  {
    *v25 = 0uLL;
    *v26 = 0uLL;
    sub_27034D19C(a2, v25);
    if (sub_27033E778(v25))
    {
      v28 = 0uLL;
      *&v29 = 0;
      sub_27032D564(&v34);
      v9 = v36;
      sub_27032D564(&v34);
      for (i = (v36 + 24 * v34); v9 != i; v9 = (v9 + 24))
      {
        __p[1] = 0;
        *&v33 = 0;
        __p[0] = 0;
        if (*(v9 + 23) < 0)
        {
          sub_2703129A8(__p, *v9, *(v9 + 1));
        }

        else
        {
          v11 = *v9;
          *&v33 = *(v9 + 2);
          *__p = v11;
        }

        MEMORY[0x27439E5E0](&TypeName, __p);
        sub_27034CD7C(&v28, &TypeName);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&TypeName);
        if (SBYTE7(v33) < 0)
        {
          operator delete(__p[0]);
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdRelationship::SetTargets();
      __p[0] = &v28;
      sub_270325B58(__p);
    }

    if ((v26[8] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v26[8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(v26);
    v12 = v25[1];
    if (v25[1])
    {
      goto LABEL_52;
    }
  }

  sub_27032D288(&v34);
}

void sub_270355720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_27032EC14(&a15);
  sub_270340E50(&__p);
  sub_27032D288((v26 - 112));
  _Unwind_Resume(a1);
}

void sub_270355960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_270355B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_270355D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_270355DEC(uint64_t a1, const void *a2, unint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  __dst = 0;
  memset(v5, 0, sizeof(v5));
  sub_2703218F4(v5, a3);
  sub_27032F7DC(v5);
  memcpy(__dst, a2, 4 * a3);
  v7 = &off_2880411D8;
  sub_27032FBF4();
}

void sub_270355EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270355F40(uint64_t a1, const void *a2, unint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  __dst = 0;
  memset(v5, 0, sizeof(v5));
  sub_270321A90(v5, a3);
  sub_27032889C(v5);
  memcpy(__dst, a2, 8 * a3);
  v7 = off_288041290;
  sub_270318A3C();
}

void sub_270356018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270356094(uint64_t a1, __int128 *a2, unint64_t a3)
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_270317438(v8, a3);
  if (v3)
  {
    v5 = 0;
    do
    {
      v7 = *a2;
      sub_27031951C(v8);
      v6 = v9 + v5;
      *v6 = v7;
      *(v6 + 8) = DWORD2(v7);
      ++a2;
      v5 += 12;
      --v3;
    }

    while (v3);
  }

  v10 = &off_28803FF38;
  sub_270318A3C();
}

void sub_270356190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270356210(uint64_t a1, const void *a2, unint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  __dst = 0;
  memset(v5, 0, sizeof(v5));
  sub_2703173C4(v5, a3);
  sub_270319444(v5);
  memcpy(__dst, a2, 16 * a3);
  v7 = &off_288040008;
  sub_270318A3C();
}

void sub_2703562E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270356364(uint64_t a1, const void *a2, unint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  __dst = 0;
  memset(v5, 0, sizeof(v5));
  sub_2703586DC(v5, a3);
  sub_2703589F0(v5);
  memcpy(__dst, a2, a3 << 6);
  v7 = off_288041950;
  sub_270318A3C();
}

void sub_27035643C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_2703564B8(uint64_t a1, const void *a2, unint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  __dst = 0;
  memset(v5, 0, sizeof(v5));
  sub_270321E6C(v5, a3);
  sub_270330518(v5);
  memcpy(__dst, a2, 8 * a3);
  v7 = &off_288041348;
  sub_27032FBF4();
}

void sub_270356590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_27035660C(uint64_t a1, const void *a2, unint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  __dst = 0;
  memset(v5, 0, sizeof(v5));
  sub_270322008(v5, a3);
  sub_270329624(v5);
  memcpy(__dst, a2, 16 * a3);
  v7 = off_288041400;
  sub_270318A3C();
}

void sub_2703566E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270356760(uint64_t a1, __int128 *a2, unint64_t a3)
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_2703221B0(v9, a3);
  if (v3)
  {
    v5 = 0;
    do
    {
      v7 = *a2;
      v8 = a2[1];
      sub_2703299C4(v9);
      v6 = v10 + v5;
      *v6 = v7;
      *(v6 + 16) = v8;
      a2 += 2;
      v5 += 24;
      --v3;
    }

    while (v3);
  }

  v11 = off_2880414B8;
  sub_270318A3C();
}

void sub_27035685C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_2703568DC(uint64_t a1, const void *a2, unint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  __dst = 0;
  memset(v5, 0, sizeof(v5));
  sub_270322358(v5, a3);
  sub_270329D6C(v5);
  memcpy(__dst, a2, 32 * a3);
  v7 = off_288041570;
  sub_270318A3C();
}

void sub_2703569B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270356A30(uint64_t a1, const void *a2, unint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  __dst = 0;
  memset(v5, 0, sizeof(v5));
  sub_27032253C(v5, a3);
  sub_270328FBC(v5);
  memcpy(__dst, a2, a3 << 7);
  v7 = off_288041628;
  sub_270318A3C();
}

void sub_270356B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270356D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  a25 = &a18;
  sub_270325B58(&a25);
  sub_27034D220(&a21);

  _Unwind_Resume(a1);
}

void sub_270356E98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  *(v3 - 24) = va;
  sub_270325B58((v3 - 24));
  sub_27034D220(va1);

  _Unwind_Resume(a1);
}

void sub_27035705C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_270311D34(v16 - 64);
  sub_27031CE90(&a9);
  sub_270340E50(&a15);

  _Unwind_Resume(a1);
}

void sub_270357234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_270311D34(v16 - 48);
  sub_27031CE90(&a9);
  sub_270340E50(&a15);

  _Unwind_Resume(a1);
}

void sub_2703574B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2703577D8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_270314574(v3);
  }

  return a1;
}

uint64_t sub_270357834(uint64_t a1, unsigned int *a2, void *a3, unsigned int *a4, void *a5)
{
  v5 = *a2;
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_270357870(a1, a3, a4, a5);
}

uint64_t sub_270357870(uint64_t a1, void *a2, unsigned int *a3, void *a4)
{
  v4 = bswap64(0x9E3779B97F4A7C55 * *a2);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_2703578C0(a1, a3, a4);
}

uint64_t sub_2703578C0(uint64_t a1, unsigned int *a2, void *a3)
{
  result = sub_270357918(a1, a2);
  v6 = *a3 & 0xFFFFFFFFFFFFFFF8;
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return result;
}

uint64_t sub_270357918(uint64_t result, unsigned int *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*(result + 8))
  {
    v3 += (*result + v3 + (*result + v3) * (*result + v3)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = v2 + ((v3 + v2 + (v3 + v2) * (v3 + v2)) >> 1);
  return result;
}

uint64_t sub_270357954(uint64_t a1, _DWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_27030E894();
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

  v17 = a1;
  if (v7)
  {
    sub_2703106C4(a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  sub_2703258B8((8 * v2), a2);
  sub_2703258F4((8 * v2 + 4), a2 + 1);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  sub_270357A6C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_270357B34(&v14);
  return v13;
}

void sub_270357A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270357B34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_270357A6C(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      sub_2703258B8(v4, v8);
      sub_2703258F4(v4 + 1, v8 + 1);
      v8 += 2;
      v4 = v13 + 2;
      v13 += 2;
    }

    while (v8 != a3);
    LOBYTE(v11) = 1;
    while (v6 != a3)
    {
      sub_270325B18(a1, v6);
      v6 += 8;
    }
  }

  return sub_270325A8C(v10);
}

void **sub_270357B34(void **a1)
{
  sub_270357B68(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_270357B68(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 32);
      *(v3 + 16) = v1 - 8;
      result = sub_270325B18(v4, v1 - 8);
      v1 = *(v3 + 16);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t *sub_270357BB0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_270357BD0(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_270357D9C(result);
}

BOOL sub_270357C10(uint64_t **a1, uint64_t ***a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = **a2;
  if (v2 - v3 != (*a2)[1] - v4)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *v4++;
    result = *(v5 - 8) == v6;
    v8 = *(v5 - 8) != v6 || v5 == v2;
    v5 += 8;
  }

  while (!v8);
  return result;
}

BOOL sub_270357C6C(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *a2;
  if (v2 - v3 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *v4++;
    result = *(v5 - 8) == v6;
    v8 = *(v5 - 8) != v6 || v5 == v2;
    v5 += 8;
  }

  while (!v8);
  return result;
}

void sub_270357D84(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_288041880;
  sub_270357F6C();
}

uint64_t *sub_270357D9C(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    if (atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = v1;
      sub_270325B58(&v2);
      return MEMORY[0x27439F3D0](v1, 0x1020C4055CCDE27);
    }
  }

  return result;
}

unint64_t sub_270357E04(uint64_t a1, char **a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3 >> 3;
    do
    {
      v7 = *v2;
      if (v5)
      {
        v7 += (v4 + v7 + (v4 + v7) * (v4 + v7)) >> 1;
      }

      v4 = *(v2 + 1) + ((v7 + *(v2 + 1) + (v7 + *(v2 + 1)) * (v7 + *(v2 + 1))) >> 1);
      v2 += 8;
      v5 = 1;
      --v6;
    }

    while (v6);
    v8 = 0x9E3779B97F4A7C55 * v4;
  }

  else
  {
    v8 = 0;
  }

  return bswap64(v8);
}

uint64_t sub_270357E74(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_270357EDC();
  }

  return *a1;
}

uint64_t sub_270357FFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  result = sub_2703580B0(a1);
  v5 = *(result + 32);
  *(result + 32) = 0;
  *(a2 + 32) = v5;
  v6 = *(result + 16);
  v7 = *result;
  v8 = *(a2 + 16);
  *result = *a2;
  *(result + 16) = v8;
  *a2 = v7;
  *(a2 + 16) = v6;
  v9 = *(result + 24);
  *(result + 24) = 0;
  *(a2 + 24) = v9;
  v10 = a1[1];
  if (v10 && (a1[1] & 3) != 3)
  {
    result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
  }

  a1[1] = 0;
  return result;
}

uint64_t sub_2703580B0(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_27036D220(v2, a1);
  }

  return sub_270330838(a1);
}

std::type_info *sub_2703580EC@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_270313C14(a2, a1);
  return sub_270327A78(a2);
}

std::type_info *sub_270358138@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_270313C14(a2, a1);
  return sub_270327D40(a2);
}

std::type_info *sub_270358184@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_270313C14(a2, a1);
  return sub_270328008(a2);
}

std::type_info *sub_2703581D0@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_270313C14(a2, a1);
  return sub_2703285DC(a2);
}

std::type_info *sub_27035821C@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_270313C14(a2, a1);
  return sub_270328810(a2);
}

std::type_info *sub_270358268@<X0>(void *a1@<X0>, std::type_info *a2@<X8>)
{
  a2->__vftable = 0;
  a2->__type_name = 0;
  sub_270313C14(a2, a1);
  return sub_27030E654(a2);
}

std::type_info *sub_2703582B4@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_270313C14(a2, a1);
  return sub_270328BAC(a2);
}

uint64_t sub_270358300(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 26)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_288041938);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270358338(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270358300(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *sub_2703583CC@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_270313C14(a2, a1);
  return sub_2703584D4(a2);
}

uint64_t sub_270358478(uint64_t result)
{
  if (result)
  {
    sub_270310E24(result);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

std::type_info *sub_2703584D4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270358300(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_288041938, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

std::type_info *sub_270358560@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_270313C14(a2, a1);
  return sub_270329214(a2);
}

std::type_info *sub_2703585AC@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_270313C14(a2, a1);
  return sub_2703294DC(a2);
}

std::type_info *sub_2703585F8@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_270313C14(a2, a1);
  return sub_27032987C(a2);
}

std::type_info *sub_270358644@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_270313C14(a2, a1);
  return sub_270329C24(a2);
}

std::type_info *sub_270358690@<X0>(void *a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_270313C14(a2, a1);
  return sub_270328E74(a2);
}

uint64_t sub_2703586DC(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  memset(v5, 0, sizeof(v5));
  sub_2703118DC(a1);
  v6 = v5;
  sub_270358754(a1, a2, &v6);
  return a1;
}

void sub_270358754(unint64_t *a1, unint64_t a2, __int128 **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_27035895C(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = &v10[v11 / 8];
                  v13 = *(v9 + v11);
                  v14 = *(v9 + v11 + 16);
                  v15 = *(v9 + v11 + 48);
                  *(v12 + 2) = *(v9 + v11 + 32);
                  *(v12 + 3) = v15;
                  *v12 = v13;
                  *(v12 + 1) = v14;
                  v11 += 64;
                }

                while (v3 << 6 != v11);
              }
            }

            v16 = *a3;
            v17 = v3 << 6;
            do
            {
              v18 = (v7 + v17);
              v19 = *v16;
              v20 = v16[1];
              v21 = v16[3];
              v18[2] = v16[2];
              v18[3] = v21;
              *v18 = v19;
              v18[1] = v20;
              v17 += 64;
            }

            while (a2 << 6 != v17);
          }

          v22 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v31 = a2;
      }

      else
      {
        v31 = *a1;
      }

      v32 = sub_27035895C(a1, a2);
      v22 = v32;
      if (v3)
      {
        v33 = v31 << 6;
        v34 = v32;
        do
        {
          v35 = *v7;
          v36 = *(v7 + 1);
          v37 = *(v7 + 3);
          *(v34 + 2) = *(v7 + 2);
          *(v34 + 3) = v37;
          *v34 = v35;
          *(v34 + 1) = v36;
          v34 += 8;
          v7 += 8;
          v33 -= 64;
        }

        while (v33);
      }

      if (v3 < a2)
      {
        v38 = *a3;
        v39 = v3 << 6;
        do
        {
          v40 = (v32 + v39);
          v41 = *v38;
          v42 = v38[1];
          v43 = v38[3];
          v40[2] = v38[2];
          v40[3] = v43;
          *v40 = v41;
          v40[1] = v42;
          v39 += 64;
        }

        while (a2 << 6 != v39);
      }

      goto LABEL_31;
    }

    v23 = a2 << 6;
    if ((a2 << 6) / a2 == 64)
    {
      v24 = sub_27035895C(a1, a2);
      v22 = v24;
      v25 = 0;
      v26 = *a3;
      do
      {
        v27 = &v24[v25 / 8];
        v28 = *v26;
        v29 = v26[1];
        v30 = v26[3];
        *(v27 + 2) = v26[2];
        *(v27 + 3) = v30;
        *v27 = v28;
        *(v27 + 1) = v29;
        v25 += 64;
      }

      while (v23 != v25);
LABEL_31:
      if (v22 != a1[4])
      {
        sub_270310E24(a1);
        a1[4] = v22;
      }

      *a1 = a2;
      return;
    }
  }

  sub_2703118DC(a1);
}

void *sub_27035895C(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_270310F28(v6);
  if (a2 >> 57)
  {
    v3 = -1;
  }

  else
  {
    v3 = (a2 << 6) | 0x10;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void sub_2703589F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_27036D2A0();
    }
  }
}

uint64_t *sub_270358A34(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_270358A54(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_270358C80(result);
}

unint64_t sub_270358A6C(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7[0] = 0;
      v7[1] = 0;
      sub_270358CF8(v7, v2, v2 + 1, v2 + 2, v2 + 3, v2 + 4, v2 + 5, v2 + 6, v2 + 7, v2 + 8, v2 + 9, v2 + 10, v2 + 11, v2 + 12, v2 + 13, v2 + 14, v2 + 15);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 16;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_270358B74(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_270358C68(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = off_288041950;
  sub_270318A3C();
}

uint64_t *sub_270358C80(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_270310E24(v1);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_270358CF8(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11, float *a12, float *a13, float *a14, float *a15, float *a16, float *a17)
{
  v17 = *a2;
  if (*a2 == 0.0)
  {
    v17 = 0.0;
  }

  v18 = LODWORD(v17);
  if (*(a1 + 8))
  {
    v18 = ((*a1 + LODWORD(v17) + (*a1 + LODWORD(v17)) * (*a1 + LODWORD(v17))) >> 1) + LODWORD(v17);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v18;
  return sub_270358D7C(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_270358D7C(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11, float *a12, float *a13, float *a14, float *a15, float *a16)
{
  v16 = *a2;
  if (*a2 == 0.0)
  {
    v16 = 0.0;
  }

  v17 = LODWORD(v16);
  if (*(a1 + 8))
  {
    v17 = ((*a1 + LODWORD(v16) + (*a1 + LODWORD(v16)) * (*a1 + LODWORD(v16))) >> 1) + LODWORD(v16);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v17;
  return sub_270358DFC(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_270358DFC(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11, float *a12, float *a13, float *a14, float *a15)
{
  v15 = *a2;
  if (*a2 == 0.0)
  {
    v15 = 0.0;
  }

  v16 = LODWORD(v15);
  if (*(a1 + 8))
  {
    v16 = ((*a1 + LODWORD(v15) + (*a1 + LODWORD(v15)) * (*a1 + LODWORD(v15))) >> 1) + LODWORD(v15);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v16;
  return sub_270358E78(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_270358E78(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11, float *a12, float *a13, float *a14)
{
  v14 = *a2;
  if (*a2 == 0.0)
  {
    v14 = 0.0;
  }

  v15 = LODWORD(v14);
  if (*(a1 + 8))
  {
    v15 = ((*a1 + LODWORD(v14) + (*a1 + LODWORD(v14)) * (*a1 + LODWORD(v14))) >> 1) + LODWORD(v14);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v15;
  return sub_270358EF0(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_270358EF0(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11, float *a12, float *a13)
{
  v13 = *a2;
  if (*a2 == 0.0)
  {
    v13 = 0.0;
  }

  v14 = LODWORD(v13);
  if (*(a1 + 8))
  {
    v14 = ((*a1 + LODWORD(v13) + (*a1 + LODWORD(v13)) * (*a1 + LODWORD(v13))) >> 1) + LODWORD(v13);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v14;
  return sub_270358F64(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_270358F64(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11, float *a12)
{
  v12 = *a2;
  if (*a2 == 0.0)
  {
    v12 = 0.0;
  }

  v13 = LODWORD(v12);
  if (*(a1 + 8))
  {
    v13 = ((*a1 + LODWORD(v12) + (*a1 + LODWORD(v12)) * (*a1 + LODWORD(v12))) >> 1) + LODWORD(v12);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v13;
  return sub_270358FD4(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_270358FD4(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11)
{
  v11 = *a2;
  if (*a2 == 0.0)
  {
    v11 = 0.0;
  }

  v12 = LODWORD(v11);
  if (*(a1 + 8))
  {
    v12 = ((*a1 + LODWORD(v11) + (*a1 + LODWORD(v11)) * (*a1 + LODWORD(v11))) >> 1) + LODWORD(v11);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v12;
  return sub_270359040(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_270359040(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10)
{
  v10 = *a2;
  if (*a2 == 0.0)
  {
    v10 = 0.0;
  }

  v11 = LODWORD(v10);
  if (*(a1 + 8))
  {
    v11 = ((*a1 + LODWORD(v10) + (*a1 + LODWORD(v10)) * (*a1 + LODWORD(v10))) >> 1) + LODWORD(v10);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v11;
  return sub_2703590A8(a1, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_2703590A8(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9)
{
  v9 = *a2;
  if (*a2 == 0.0)
  {
    v9 = 0.0;
  }

  v10 = LODWORD(v9);
  if (*(a1 + 8))
  {
    v10 = ((*a1 + LODWORD(v9) + (*a1 + LODWORD(v9)) * (*a1 + LODWORD(v9))) >> 1) + LODWORD(v9);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v10;
  return sub_27035910C(a1, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_27035910C(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8)
{
  v8 = *a2;
  if (*a2 == 0.0)
  {
    v8 = 0.0;
  }

  v9 = LODWORD(v8);
  if (*(a1 + 8))
  {
    v9 = ((*a1 + LODWORD(v8) + (*a1 + LODWORD(v8)) * (*a1 + LODWORD(v8))) >> 1) + LODWORD(v8);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v9;
  return sub_270359168(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_270359168(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7)
{
  v7 = *a2;
  if (*a2 == 0.0)
  {
    v7 = 0.0;
  }

  v8 = LODWORD(v7);
  if (*(a1 + 8))
  {
    v8 = ((*a1 + LODWORD(v7) + (*a1 + LODWORD(v7)) * (*a1 + LODWORD(v7))) >> 1) + LODWORD(v7);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  return sub_2703591C0(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_2703591C0(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6)
{
  v6 = *a2;
  if (*a2 == 0.0)
  {
    v6 = 0.0;
  }

  v7 = LODWORD(v6);
  if (*(a1 + 8))
  {
    v7 = ((*a1 + LODWORD(v6) + (*a1 + LODWORD(v6)) * (*a1 + LODWORD(v6))) >> 1) + LODWORD(v6);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return sub_270319BD4(a1, a3, a4, a5, a6);
}

uint64_t sub_270359214(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_27031885C(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_27031885C(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = (v5 << 6) - 64;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator==();
    if (!result)
    {
      break;
    }

    v6 += 64;
    v7 += 64;
    v9 = v8;
    v8 -= 64;
  }

  while (v9);
  return result;
}

uint64_t sub_2703592C4(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_2703189A8();
  }

  return *a1;
}

uint64_t sub_270359344(uint64_t a1, float a2)
{
  v338 = *MEMORY[0x277D85DE8];
  v4 = (**a1)(a1);
  v5 = cos(((a2 * 3.1416) / 180.0));
  v6 = *a1;
  if (!**a1 || !v6[1] || !v6[2] || !v6[3] || !v6[4] || v4 < 1)
  {
    goto LABEL_354;
  }

  v7 = 0;
  v8 = 0;
  v9 = v5;
  v302 = v9;
  do
  {
    v10 = (*(*a1 + 8))(a1, v8);
    if (v10 == 4)
    {
      v7 += 2;
    }

    else if (v10 == 3)
    {
      ++v7;
    }

    v8 = (v8 + 1);
  }

  while (v4 != v8);
  if (v7 < 1)
  {
    goto LABEL_354;
  }

  v11 = malloc_type_malloc(12 * v7, 0x100004052888210uLL);
  v12 = malloc_type_malloc(88 * v7, 0x1020040F04E29DEuLL);
  v311 = v12;
  if (v11 && v12)
  {
    v301 = v4;
    v303 = v7;
    v312 = v11;
    v315 = 12 * v7;
    if ((**a1)(a1) < 1)
    {
      v14 = 0;
      v18 = v311;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = v11 + 8;
      v18 = v311;
      v321 = v17;
      do
      {
        v19 = (*(*a1 + 8))(a1, v15);
        if ((v19 - 5) >= 0xFFFFFFFE)
        {
          v20 = v19;
          v21 = &v18[22 * v16];
          v21[18] = v15;
          v21[20] = v14;
          if (v19 == 3)
          {
            *(v21 + 42) = 256;
            *(v21 + 86) = 2;
            v22 = 3 * v16;
            v23 = &v312[3 * v16];
            *v23 = v13;
            v23[1] = v13 + 1;
            v24 = v13 + 2;
            v25 = 1;
          }

          else
          {
            v26 = &v18[22 * v16 + 22];
            *(v26 + 18) = v15;
            v27 = v26;
            *(v26 + 20) = v14;
            v28 = 2;
            *&v332 = 0;
            (*(*a1 + 32))(a1, &v332, (v13 >> 2), 0);
            v29 = v332;
            *&v332 = 0;
            (*(*a1 + 32))(a1, &v332, (v13 >> 2), 1);
            v30 = v332;
            *&v332 = 0;
            (*(*a1 + 32))(a1, &v332, (v13 >> 2), 2);
            v31 = v332;
            *&v332 = 0;
            (*(*a1 + 32))(a1, &v332, (v13 >> 2), 3);
            v32 = ((*(&v31 + 1) - *(&v29 + 1)) * (*(&v31 + 1) - *(&v29 + 1))) + ((*&v31 - *&v29) * (*&v31 - *&v29));
            v33 = ((*(&v332 + 1) - *(&v30 + 1)) * (*(&v332 + 1) - *(&v30 + 1))) + ((*&v332 - *&v30) * (*&v332 - *&v30));
            if (v32 < v33)
            {
              goto LABEL_22;
            }

            if (v33 < v32)
            {
              goto LABEL_25;
            }

            DWORD2(v332) = 0;
            *&v332 = 0;
            (*(*a1 + 16))(a1, &v332, (v13 >> 2), 0);
            v37 = *(&v332 + 1);
            v318 = *&v332;
            v38 = *(&v332 + 2);
            DWORD2(v332) = 0;
            *&v332 = 0;
            (*(*a1 + 16))(a1, &v332, (v13 >> 2), 1);
            v39 = v332;
            v40 = *(&v332 + 2);
            DWORD2(v332) = 0;
            *&v332 = 0;
            (*(*a1 + 16))(a1, &v332, (v13 >> 2), 2);
            v41 = v332;
            v42 = *(&v332 + 2);
            DWORD2(v332) = 0;
            *&v332 = 0;
            (*(*a1 + 16))(a1, &v332, (v13 >> 2), 3);
            if (((((*(&v332 + 1) - *(&v39 + 1)) * (*(&v332 + 1) - *(&v39 + 1))) + ((*&v332 - *&v39) * (*&v332 - *&v39))) + ((*(&v332 + 2) - v40) * (*(&v332 + 2) - v40))) >= ((((*(&v41 + 1) - v37) * (*(&v41 + 1) - v37)) + ((*&v41 - v318) * (*&v41 - v318))) + ((v42 - v38) * (v42 - v38))))
            {
LABEL_22:
              v34 = 0;
              v35 = v13;
              v36 = (4 * v15) | 2;
            }

            else
            {
LABEL_25:
              v35 = (4 * v15) | 1;
              v36 = v13 + 3;
              v34 = 1;
              v28 = 3;
            }

            v24 = (4 * v15) | 3;
            *(v21 + 42) = 256;
            *(v21 + 86) = v28;
            v43 = &v312[3 * v16];
            *v43 = v13;
            v43[1] = v13 + 1;
            v43[2] = v36;
            v27[84] = v34;
            *(v27 + 85) = 770;
            v22 = 3 * (v16 + 1);
            v44 = &v312[v22];
            *v44 = v35;
            v44[1] = v13 + 2;
            v25 = 2;
            v7 = v303;
            v17 = v321;
            v18 = v311;
          }

          *&v17[4 * v22] = v24;
          v16 += v25;
          if (v16 > v7)
          {
            sub_27036D31C();
          }

          v14 += v20;
        }

        v15 = (v15 + 1);
        v13 += 4;
      }

      while (v15 < (**a1)(a1));
    }

    v46 = (v7 + 3) & 0xFFFFFFFC;
    v307 = v7;
    v47 = vdupq_n_s64(v7 - 1);
    v48 = xmmword_270370EC0;
    v49 = xmmword_270370ED0;
    v50 = v18 + 63;
    v51 = vdupq_n_s64(4uLL);
    v52 = v312;
    do
    {
      v53 = vmovn_s64(vcgeq_u64(v47, v49));
      if (vuzp1_s16(v53, *v47.i8).u8[0])
      {
        *(v50 - 44) = 0;
      }

      if (vuzp1_s16(v53, *&v47).i8[2])
      {
        *(v50 - 22) = 0;
      }

      if (vuzp1_s16(*&v47, vmovn_s64(vcgeq_u64(v47, *&v48))).i32[1])
      {
        *v50 = 0;
        v50[22] = 0;
      }

      v48 = vaddq_s64(v48, v51);
      v49 = vaddq_s64(v49, v51);
      v50 += 88;
      v46 -= 4;
    }

    while (v46);
    DWORD2(v332) = 0;
    *&v332 = 0;
    (*(*a1 + 16))(a1, &v332, 0, 0);
    v54 = *(&v332 + 1);
    v55 = *&v332;
    LODWORD(v56) = 3 * v7;
    if (v56 <= 2)
    {
      v57 = 2;
    }

    else
    {
      v57 = v56;
    }

    v58 = *(&v332 + 2);
    v59 = 4 * v57;
    v60 = 4;
    v61 = *(&v332 + 2);
    v62 = *(&v332 + 1);
    v63 = *&v332;
    do
    {
      v64 = v312[v60 / 4];
      DWORD2(v332) = 0;
      *&v332 = 0;
      (*(*a1 + 16))(a1, &v332, (v64 >> 2), v64 & 3);
      if (v63 < *&v332)
      {
        v65 = *&v332;
      }

      else
      {
        v65 = v63;
      }

      if (v55 > *&v332)
      {
        v55 = *&v332;
      }

      else
      {
        v63 = v65;
      }

      if (v62 < *(&v332 + 1))
      {
        v66 = *(&v332 + 1);
      }

      else
      {
        v66 = v62;
      }

      if (v54 > *(&v332 + 1))
      {
        v54 = *(&v332 + 1);
      }

      else
      {
        v62 = v66;
      }

      if (v58 <= *(&v332 + 2))
      {
        if (v61 < *(&v332 + 2))
        {
          v61 = *(&v332 + 2);
        }
      }

      else
      {
        v58 = *(&v332 + 2);
      }

      v60 += 4;
    }

    while (v59 != v60);
    v306 = v14;
    v67 = v63 - v55;
    v68 = v61 - v58;
    v69 = (v62 - v54) > (v61 - v58) && (v62 - v54) > (v63 - v55);
    v70 = v68 <= v67;
    if (v68 > v67)
    {
      v71 = v58;
    }

    else
    {
      v71 = v55;
    }

    if (v70)
    {
      v72 = v63;
    }

    else
    {
      v72 = v61;
    }

    v73 = v70;
    if (v69)
    {
      v74 = v54;
    }

    else
    {
      v74 = v71;
    }

    if (v69)
    {
      v75 = v62;
    }

    else
    {
      v75 = v72;
    }

    if (v69)
    {
      v76 = 0;
    }

    else
    {
      v76 = v73;
    }

    v77 = malloc_type_malloc(v315, 0x100004052888210uLL);
    v78 = malloc_type_malloc(0x2000uLL, 0x100004052888210uLL);
    v79 = malloc_type_malloc(0x2000uLL, 0x100004052888210uLL);
    v80 = malloc_type_malloc(0x2000uLL, 0x100004052888210uLL);
    v81 = v80;
    if (v77 && v78 && v79 && v80)
    {
      v308 = v77;
      v305 = v79;
      bzero(v78, 0x2000uLL);
      bzero(v81, 0x2000uLL);
      v82 = 0;
      if (v56 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = v56;
      }

      v309 = v78;
      do
      {
        v83 = v312[v82];
        DWORD2(v332) = 0;
        *&v332 = 0;
        (*(*a1 + 16))(a1, &v332, (v83 >> 2), v83 & 3);
        v84 = &v332 + 1;
        if (!v69)
        {
          v84 = &v332 + 2;
        }

        if (v76)
        {
          v84 = &v332;
        }

        v85 = sub_27035C04C(v74, v75, *v84);
        ++v78[v85];
        ++v82;
      }

      while (v56 != v82);
      v86 = 0;
      v87 = 0;
      *v305 = 0;
      do
      {
        v87 += v78[v86];
        v305[++v86] = v87;
      }

      while (v86 != 2047);
      for (i = 0; i != v56; ++i)
      {
        v89 = v312[i];
        DWORD2(v332) = 0;
        *&v332 = 0;
        (*(*a1 + 16))(a1, &v332, (v89 >> 2), v89 & 3);
        v90 = &v332 + 1;
        if (!v69)
        {
          v90 = &v332 + 2;
        }

        v91 = v78;
        if (v76)
        {
          v90 = &v332;
        }

        v92 = sub_27035C04C(v74, v75, *v90);
        v93 = v81[v92];
        if (v93 >= v78[v92])
        {
          sub_27036D348();
        }

        *&v77[4 * v305[v92] + 4 * v93] = i;
        ++v81[v92];
      }

      for (j = 0; j != 2048; ++j)
      {
        if (v81[j] != v78[j])
        {
          sub_27036D374();
        }
      }

      free(v81);
      v95 = *v78;
      for (k = 1; k != 2048; ++k)
      {
        if (v95 <= v78[k])
        {
          v95 = v78[k];
        }
      }

      v97 = 0;
      v304 = malloc_type_malloc(16 * v95, 0x1000040451B5BE8uLL);
      do
      {
        v98 = v91[v97];
        if (v98 >= 2)
        {
          v99 = &v308[4 * v305[v97]];
          if (v304)
          {
            v100 = v304 + 3;
            v101 = v91[v97];
            do
            {
              v102 = *v99;
              v99 += 4;
              v103 = v312[v102];
              DWORD2(v332) = 0;
              *&v332 = 0;
              (*(*a1 + 16))(a1, &v332, (v103 >> 2), v103 & 3);
              v104 = DWORD2(v332);
              *(v100 - 3) = v332;
              *(v100 - 1) = v104;
              *v100 = v102;
              v100 += 4;
              --v101;
            }

            while (v101);
            sub_27035C070(v312, v304, a1, 0, (v98 - 1));
          }

          else
          {
            for (m = 0; m != v98; ++m)
            {
              v106 = *&v99[4 * m];
              v107 = v312[v106];
              DWORD2(v332) = 0;
              *&v332 = 0;
              (*(*a1 + 16))(a1, &v332, (v107 >> 2), v107 & 3);
              v108 = v332;
              v328 = *(&v332 + 2);
              DWORD2(v332) = 0;
              *&v332 = 0;
              (*(*a1 + 24))(a1, &v332, (v107 >> 2), v107 & 3);
              v325 = *&v332;
              v319 = *(&v332 + 2);
              v322 = *(&v332 + 1);
              *&v332 = 0;
              (*(*a1 + 32))(a1, &v332, (v107 >> 2), v107 & 3);
              if (m)
              {
                v109 = 0;
                v313 = *(&v332 + 1);
                v316 = *&v332;
                while (1)
                {
                  v110 = *&v99[4 * v109];
                  v111 = v312[v110];
                  DWORD2(v332) = 0;
                  *&v332 = 0;
                  (*(*a1 + 16))(a1, &v332, (v111 >> 2), v111 & 3);
                  v112 = v332;
                  v113 = *(&v332 + 2);
                  DWORD2(v332) = 0;
                  *&v332 = 0;
                  (*(*a1 + 24))(a1, &v332, (v111 >> 2), v111 & 3);
                  v114 = v332;
                  v115 = *(&v332 + 2);
                  *&v332 = 0;
                  (*(*a1 + 32))(a1, &v332, (v111 >> 2), v111 & 3);
                  if (*&v108 == *&v112 && *(&v108 + 1) == *(&v112 + 1) && v328 == v113 && v325 == *&v114 && v322 == *(&v114 + 1) && v319 == v115 && v316 == *&v332 && v313 == *(&v332 + 1))
                  {
                    break;
                  }

                  if (m == ++v109)
                  {
                    goto LABEL_135;
                  }
                }

                v312[v106] = v312[v110];
              }

LABEL_135:
              ;
            }
          }
        }

        ++v97;
        v91 = v309;
      }

      while (v97 != 2048);
      if (v304)
      {
        free(v304);
      }

      free(v308);
      free(v309);
      free(v305);
      v52 = v312;
    }

    else
    {
      if (v77)
      {
        free(v77);
      }

      if (v78)
      {
        free(v78);
      }

      if (v79)
      {
        free(v79);
      }

      if (v81)
      {
        free(v81);
      }

      v116 = 0;
      v117 = 1;
      do
      {
        v118 = 0;
        v310 = v116;
        v119 = &v52[3 * v116];
        do
        {
          v120 = v119[v118];
          DWORD2(v332) = 0;
          *&v332 = 0;
          (*(*a1 + 16))(a1, &v332, (v120 >> 2), v120 & 3);
          v121 = v332;
          v329 = *(&v332 + 2);
          DWORD2(v332) = 0;
          *&v332 = 0;
          (*(*a1 + 24))(a1, &v332, (v120 >> 2), v120 & 3);
          v326 = *&v332;
          v320 = *(&v332 + 2);
          v323 = *(&v332 + 1);
          *&v332 = 0;
          (*(*a1 + 32))(a1, &v332, (v120 >> 2), v120 & 3);
          v122 = 0;
          v314 = *(&v332 + 1);
          v317 = *&v332;
          v123 = v312;
LABEL_151:
          v124 = 0;
          while (1)
          {
            v125 = v123[v124];
            DWORD2(v332) = 0;
            *&v332 = 0;
            (*(*a1 + 16))(a1, &v332, (v125 >> 2), v125 & 3);
            v126 = v332;
            v127 = *(&v332 + 2);
            DWORD2(v332) = 0;
            *&v332 = 0;
            (*(*a1 + 24))(a1, &v332, (v125 >> 2), v125 & 3);
            v128 = v332;
            v129 = *(&v332 + 2);
            *&v332 = 0;
            (*(*a1 + 32))(a1, &v332, (v125 >> 2), v125 & 3);
            if (*&v121 == *&v126 && *(&v121 + 1) == *(&v126 + 1) && v329 == v127 && v326 == *&v128 && v323 == *(&v128 + 1) && v320 == v129 && v317 == *&v332 && v314 == *(&v332 + 1))
            {
              break;
            }

            if (++v124 == 3)
            {
              ++v122;
              v123 += 3;
              if (v122 == v117)
              {
                sub_27036D424();
              }

              goto LABEL_151;
            }
          }

          v119[v118++] = -1;
        }

        while (v118 != 3);
        v116 = v310 + 1;
        ++v117;
        v52 = v312;
      }

      while (v310 + 1 != v307);
    }

    v130 = 0;
    v131 = v52 + 2;
    v132 = 19;
    v133 = v307;
    do
    {
      v134 = *(v131 - 2);
      v135 = *(v131 - 1);
      v136 = *v131;
      DWORD2(v332) = 0;
      *&v332 = 0;
      (*(*a1 + 16))(a1, &v332, (v134 >> 2), v134 & 3);
      v137 = v332;
      v138 = *(&v332 + 2);
      DWORD2(v332) = 0;
      *&v332 = 0;
      (*(*a1 + 16))(a1, &v332, (v135 >> 2), v135 & 3);
      v139 = v332;
      v140 = *(&v332 + 2);
      DWORD2(v332) = 0;
      *&v332 = 0;
      (*(*a1 + 16))(a1, &v332, (v136 >> 2), v136 & 3);
      if (*&v137 == *&v139 && *(&v137 + 1) == *(&v139 + 1) && v138 == v140 || *&v137 == *&v332 && *(&v137 + 1) == *(&v332 + 1) && v138 == *(&v332 + 2) || *&v139 == *&v332 && *(&v139 + 1) == *(&v332 + 1) && v140 == *(&v332 + 2))
      {
        v311[v132] |= 1u;
        ++v130;
      }

      v131 += 3;
      v132 += 22;
      --v133;
    }

    while (v133);
    v141 = (v303 - v130);
    v142 = v311;
    if (v303 != 1)
    {
      v143 = 0;
      do
      {
        v144 = &v311[22 * v143];
        if (v144[18] == v144[40])
        {
          v145 = v144[19];
          v146 = v144[41];
          if ((v146 ^ v145))
          {
            v144[19] = v145 | 2;
            v144[41] = v146 | 2;
          }

          v143 += 2;
        }

        else
        {
          ++v143;
        }
      }

      while (v143 < v303 - 1);
    }

    if (v141 < 1)
    {
      if (v303 != v130)
      {
        sub_27036D3A0();
      }
    }

    else
    {
      v147 = 0;
      LODWORD(v148) = 1;
      v149 = v52;
      do
      {
        v150 = &v311[22 * v147];
        if (v150[19])
        {
          if (v148 >= v303)
          {
            if (v148 > v147)
            {
LABEL_361:
              sub_27036D3F8();
            }

LABEL_362:
            sub_27036D3CC();
          }

          do
          {
            v152 = v311[22 * v148 + 19] & 1;
            v148 = v152 + v148;
            if (v152)
            {
              v153 = v148 < v303;
            }

            else
            {
              v153 = 0;
            }
          }

          while (v153);
          if (v147 >= v148)
          {
            goto LABEL_362;
          }

          if (v152)
          {
            goto LABEL_361;
          }

          v154 = 0;
          v151 = v148 + 1;
          v155 = &v52[3 * v148];
          do
          {
            v156 = v149[v154];
            v149[v154] = v155[v154];
            v155[v154++] = v156;
          }

          while (v154 != 3);
          v334 = *(v150 + 2);
          v335 = *(v150 + 3);
          v336 = *(v150 + 4);
          v337 = *(v150 + 10);
          v332 = *v150;
          v333 = *(v150 + 1);
          v157 = &v311[22 * v148];
          v158 = *(v157 + 1);
          *v150 = *v157;
          *(v150 + 1) = v158;
          v160 = *(v157 + 3);
          v159 = *(v157 + 4);
          v161 = *(v157 + 2);
          *(v150 + 10) = *(v157 + 10);
          *(v150 + 3) = v160;
          *(v150 + 4) = v159;
          *(v150 + 2) = v161;
          *v157 = v332;
          *(v157 + 10) = v337;
          *(v157 + 4) = v336;
          *(v157 + 3) = v335;
          *(v157 + 2) = v334;
          *(v157 + 1) = v333;
        }

        else if (v148 <= v147 + 2)
        {
          v151 = v147 + 2;
        }

        else
        {
          v151 = v148;
        }

        ++v147;
        v149 += 3;
        LODWORD(v148) = v151;
      }

      while (v147 != v141);
      v162 = v311 + 19;
      v163 = (v303 - v130);
      do
      {
        *(v162 - 19) = -1;
        *(v162 - 17) = -1;
        *(v162 - 15) = 0;
        *(v162 - 11) = 0;
        *(v162 - 13) = 0;
        *v162 |= 4u;
        *(v162 - 9) = 0uLL;
        *(v162 - 5) = 0uLL;
        v162 += 22;
        --v163;
      }

      while (v163);
      v164 = 0;
      v165 = v52 + 2;
      do
      {
        v166 = *(v165 - 2);
        DWORD2(v332) = 0;
        *&v332 = 0;
        (*(*a1 + 16))(a1, &v332, (v166 >> 2), v166 & 3);
        v330 = *(&v332 + 2);
        v167 = v332;
        v168 = *(v165 - 1);
        DWORD2(v332) = 0;
        *&v332 = 0;
        (*(*a1 + 16))(a1, &v332, (v168 >> 2), v168 & 3);
        v327 = v332;
        v324 = *(&v332 + 2);
        v169 = *v165;
        DWORD2(v332) = 0;
        *&v332 = 0;
        (*(*a1 + 16))(a1, &v332, (v169 >> 2), v169 & 3);
        v170 = v332;
        v171 = *(&v332 + 2);
        v172 = *(v165 - 2);
        *&v332 = 0;
        (*(*a1 + 32))(a1, &v332, (v172 >> 2), v172 & 3);
        v173 = v332;
        v174 = *(v165 - 1);
        *&v332 = 0;
        (*(*a1 + 32))(a1, &v332, (v174 >> 2), v174 & 3);
        v175 = v332;
        v176 = *v165;
        *&v332 = 0;
        (*(*a1 + 32))(a1, &v332, (v176 >> 2), v176 & 3);
        v177 = *&v175 - *&v173;
        v178 = *(&v175 + 1) - *(&v173 + 1);
        v179 = *&v332 - *&v173;
        v180 = *(&v332 + 1) - *(&v173 + 1);
        v181 = ((*&v175 - *&v173) * (*(&v332 + 1) - *(&v173 + 1))) - ((*(&v175 + 1) - *(&v173 + 1)) * (*&v332 - *&v173));
        v182 = v311[v164 + 19] | (8 * (v181 > 0.0));
        v311[v164 + 19] = v182;
        v183 = fabsf(v181);
        if (v183 > 1.1755e-38)
        {
          v184 = vsub_f32(v327, v167);
          v185 = vsub_f32(v170, v167);
          v186 = vsub_f32(vmul_n_f32(v184, v180), vmul_n_f32(v185, v178));
          v187 = ((v324 - v330) * v180) - ((v171 - v330) * v178);
          v188 = sqrtf((COERCE_FLOAT(vmul_f32(v186, v186).i32[1]) + (v186.f32[0] * v186.f32[0])) + (v187 * v187));
          v189 = 1.0;
          if ((v182 & 8) == 0)
          {
            v189 = -1.0;
          }

          if (fabsf(v188) > 1.1755e-38)
          {
            v190 = &v311[v164];
            v190[5] = vmul_n_f32(v186, v189 / v188);
            v190[6].f32[0] = v187 * (v189 / v188);
          }

          v191 = (v171 - v330) * v177;
          v192 = vsub_f32(vmul_n_f32(v185, v177), vmul_n_f32(v184, v179));
          v193 = v191 - ((v324 - v330) * v179);
          v194 = sqrtf((COERCE_FLOAT(vmul_f32(v192, v192).i32[1]) + (v192.f32[0] * v192.f32[0])) + (v193 * v193));
          if (fabsf(v194) > 1.1755e-38)
          {
            v195 = &v311[v164];
            *(v195 + 13) = vmul_n_f32(v192, v189 / v194);
            *(v195 + 15) = v193 * (v189 / v194);
          }

          v196 = v188 / v183;
          v197 = &v311[v164];
          v198 = v194 / v183;
          v197[16] = v196;
          v197[17] = v198;
          v199 = fabsf(v198);
          if (fabsf(v196) > 1.1755e-38 && v199 > 1.1755e-38)
          {
            v311[v164 + 19] = v182 & 0xFFFFFFFB;
          }
        }

        v165 += 3;
        v164 += 22;
      }

      while (22 * v141 != v164);
      if (v141 != 1)
      {
        v201 = 0;
        do
        {
          v202 = v201;
          v203 = &v311[22 * v201];
          v204 = v202 + 1;
          if (v203[18] == v203[40])
          {
            v205 = v203[19];
            v206 = v203[41];
            if (((v205 | v206) & 1) == 0 && ((v206 ^ v205) & 8) != 0)
            {
              if ((v206 & 4) != 0 || (sub_27035C5BC(a1, &v52[3 * v202]), v208 = v207, sub_27035C5BC(a1, &v52[3 * v204]), v208 >= v209))
              {
                v210 = v202;
              }

              else
              {
                v210 = v202 + 1;
                v204 = v202;
              }

              v211 = &v311[22 * v204];
              v212 = v211[19] & 0xFFFFFFF7;
              v211[19] = v212;
              v211[19] = v311[22 * v210 + 19] & 8 | v212;
            }

            LODWORD(v204) = v202 + 2;
          }

          v201 = v204;
        }

        while (v204 < v141 - 1);
      }
    }

    v213 = malloc_type_malloc(36 * v141, 0x10000403E1C8BA9uLL);
    v214 = (3 * v141);
    if (v213)
    {
      v215 = v213;
      if (v141 <= 0)
      {
        sub_27035C6BC(v213, 0, (v214 - 1), 0, 0x26065CAu);
      }

      else
      {
        v216 = 0;
        v217 = v213 + 8;
        v218 = v52;
        do
        {
          v219 = 0;
          v220 = v217;
          do
          {
            v221 = v218[v219];
            if (v219 == 2)
            {
              v222 = 0;
            }

            else
            {
              v222 = v219 + 1;
            }

            v223 = v219 + 1;
            v224 = v52[3 * v216 + v222];
            if (v221 >= v224)
            {
              v225 = v52[3 * v216 + v222];
            }

            else
            {
              v225 = v221;
            }

            if (v221 > v224)
            {
              v224 = v221;
            }

            *(v220 - 2) = v225;
            *(v220 - 1) = v224;
            *v220 = v216;
            v220 += 3;
            v219 = v223;
          }

          while (v223 != 3);
          ++v216;
          v218 += 3;
          v217 += 9;
        }

        while (v216 != v141);
        sub_27035C6BC(v213, 0, (v214 - 1), 0, 0x26065CAu);
        v226 = 0;
        v227 = 0;
        v228 = v214 - 1;
        v229 = 3;
        do
        {
          if (v215[3 * v227] != v215[v229])
          {
            sub_27035C6BC(v215, v227, v226, 1, 0x26065CAu);
            v227 = v226 + 1;
            v142 = v311;
          }

          ++v226;
          v229 += 3;
        }

        while (v228 != v226);
        v230 = 0;
        v231 = 0;
        v232 = v215 + 4;
        do
        {
          v233 = &v215[3 * v231];
          if (*v233 != *(v232 - 1) || v233[1] != *v232)
          {
            sub_27035C6BC(v215, v231, v230, 2, 0x26065CAu);
            v231 = v230 + 1;
            v142 = v311;
          }

          ++v230;
          v232 += 3;
        }

        while (v228 != v230);
        v234 = 0;
        do
        {
          v235 = &v215[3 * v234];
          v236 = *v235;
          v237 = v235[1];
          v238 = v235[2];
          v239 = &v312[3 * v238];
          v240 = *v239;
          v242 = v239 + 1;
          v241 = v239[1];
          if (*v239 == v236 || v240 == v237)
          {
            if (v241 == v236 || v241 == v237)
            {
              v245 = 0;
            }

            else
            {
              v240 = v239[2];
              v245 = 2;
              v242 = &v312[3 * v238];
            }
          }

          else
          {
            v242 = v239 + 2;
            v240 = v239[1];
            v245 = 1;
          }

          v246 = &v142[22 * v238];
          ++v234;
          if (*&v246[4 * v245] == -1 && v234 < v214)
          {
            v248 = &v215[3 * v234];
            if (v236 == *v248 && v237 == v248[1])
            {
              v249 = *v242;
              v250 = v234;
              v251 = v234;
              do
              {
                v252 = v215[3 * v250 + 2];
                v253 = &v312[3 * v252];
                v254 = *v253;
                v255 = v253 + 1;
                v256 = v253[1];
                if (*v253 == v236 || v254 == v237)
                {
                  if (v256 == v236 || v256 == v237)
                  {
                    v259 = 0;
                  }

                  else
                  {
                    v254 = v253[2];
                    v259 = 2;
                    v255 = &v312[3 * v252];
                  }
                }

                else
                {
                  v255 = v253 + 2;
                  v259 = 1;
                  v254 = v253[1];
                }

                if (v240 == *v255 && ((v260 = v142[22 * v252 + v259], v249 == v254) ? (v261 = v260 == -1) : (v261 = 0), v261))
                {
                  v263 = 0;
                  v262 = 1;
                }

                else
                {
                  v262 = 0;
                  ++v251;
                  v263 = 1;
                }

                v264 = &v215[3 * v251];
                if (v251 >= v214 || v236 != *v264)
                {
                  break;
                }

                v250 = v251;
                v265 = v263 ^ 1;
                if (v237 != v264[1])
                {
                  v265 = 1;
                }
              }

              while ((v265 & 1) == 0);
              if (v262)
              {
                v266 = v264[2];
                *&v246[4 * v245] = v266;
                v142[22 * v266 + v259] = v238;
              }
            }
          }
        }

        while (v234 != v214);
      }

      free(v215);
    }

    else if (v141 >= 1)
    {
      for (n = 0; n != v141; ++n)
      {
        v268 = 0;
        v269 = &v311[22 * n];
        v270 = &v52[3 * n];
        do
        {
          if (v269[v268] == -1)
          {
            v272 = 0;
            v271 = v268 + 1;
            v273 = (v268 + 1);
            if (v268 == 2)
            {
              v273 = 0;
            }

            v274 = v270[v273];
            v275 = v52;
            v276 = v311;
            while (n == v272)
            {
LABEL_317:
              ++v272;
              v276 += 22;
              v275 += 3;
              if (v272 == v141)
              {
                goto LABEL_320;
              }
            }

            v277 = 0;
            while (1)
            {
              v278 = v277 < 2 ? v277 + 1 : 0;
              if (v270[v268] == v52[3 * v272 + v278] && v274 == v275[v277])
              {
                break;
              }

              if (++v277 == 3)
              {
                goto LABEL_317;
              }
            }

            v269[v268] = v272;
            v276[v277] = n;
          }

          else
          {
            v271 = v268 + 1;
          }

LABEL_320:
          v268 = v271;
        }

        while (v271 != 3);
      }
    }

    v279 = malloc_type_malloc(24 * v214, 0x101004035137979uLL);
    v280 = malloc_type_malloc(12 * v141, 0x100004052888210uLL);
    v281 = v280;
    if (v279 && v280)
    {
      v282 = sub_27035ADCC(v142, v279, v280, v312, v141);
      v283 = malloc_type_malloc(40 * v306, 0x10000400A747E1EuLL);
      if (v283)
      {
        v284 = v283;
        bzero(v283, 40 * v306);
        if (v306 >= 1)
        {
          v285 = v306;
          v286 = (v284 + 16);
          do
          {
            *(v286 - 1) = xmmword_270371940;
            *v286 = xmmword_270371950;
            v286 = (v286 + 40);
            --v285;
          }

          while (v285);
        }

        v287 = sub_27035AFC0(v284, v142, v279, v282, v312, a1, v302);
        free(v279);
        free(v281);
        if (v287)
        {
          v288 = v284;
          sub_27035BDA8(v284, v142, v312, a1, v141, v303);
          free(v142);
          free(v312);
          v289 = v301;
          v290 = 0;
          v291 = 0;
          do
          {
            v292 = (*(*a1 + 8))(a1, v290);
            if ((v292 - 3) <= 1)
            {
              v294 = v292;
              v295 = 0;
              v296 = v288 + 40 * v291 + 20;
              do
              {
                *&v332 = *(v296 - 20);
                DWORD2(v332) = *(v296 - 12);
                v331[0] = *(v296 - 4);
                v331[1] = *v296;
                v331[2] = *(v296 + 4);
                v297 = *a1;
                v298 = *(*a1 + 48);
                if (v298)
                {
                  v298(a1, &v332, v331, *(v296 + 16), v290, v295, *(v296 - 8), *(v296 + 8));
                  v297 = *a1;
                }

                v299 = *(v297 + 40);
                if (v299)
                {
                  if (*(v296 + 16) == 1)
                  {
                    v293.n128_f32[0] = 1.0;
                  }

                  else
                  {
                    v293.n128_f32[0] = -1.0;
                  }

                  v299(a1, &v332, v290, v295, v293);
                }

                v295 = (v295 + 1);
                v296 += 40;
              }

              while (v294 != v295);
              v291 += v295;
              v289 = v301;
            }

            v290 = (v290 + 1);
          }

          while (v290 != v289);
          free(v288);
          result = 1;
          goto LABEL_355;
        }

        free(v142);
        free(v312);
        result = v284;
      }

      else
      {
        free(v312);
        free(v142);
        free(v279);
        result = v281;
      }
    }

    else
    {
      if (v279)
      {
        free(v279);
      }

      if (v281)
      {
        free(v281);
      }

      free(v312);
      result = v142;
    }

    goto LABEL_353;
  }

  if (v11)
  {
    free(v11);
  }

  result = v311;
  if (v311)
  {
LABEL_353:
    free(result);
LABEL_354:
    result = 0;
  }

LABEL_355:
  v300 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27035ADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 < 1)
  {
    return 0;
  }

  v5 = a4;
  v6 = a1;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = a1;
  v32 = a4;
  v11 = 3 * a5;
  v27 = a5;
  v28 = 3 * a5;
  do
  {
    v12 = 0;
    v13 = v6 + 88 * v7;
    do
    {
      v14 = *(v13 + 76);
      if ((v14 & 4) == 0)
      {
        v15 = v10 + 8 * v12;
        if (!*(v15 + 16))
        {
          if (v8 >= v11)
          {
            sub_27036D450();
          }

          v16 = *(v32 + 4 * v12);
          v17 = a2 + 24 * v8;
          *(v15 + 16) = v17;
          *(v17 + 16) = v16;
          *(v17 + 20) = (v14 >> 3) & 1;
          *v17 = 0;
          *(v17 + 8) = a3 + 4 * v9;
          v18 = *(v15 + 16);
          v19 = v7;
          *(*(v18 + 8) + 4 * (*v18)++) = v7;
          v20 = *(v10 + 4 * v12);
          v21 = (*(v13 + 76) >> 3) & 1;
          v22 = v12 - 1;
          if (!v12)
          {
            v22 = 2;
          }

          v23 = *(v13 + 4 * v22);
          if ((v20 & 0x80000000) == 0)
          {
            v24 = sub_27035C878(v5, a1, *(v10 + 4 * v12), v18);
            v6 = a1;
            if (!v24 && v21 == ((*(a1 + 88 * v20 + 76) >> 3) & 1))
            {
              sub_27036D4D4();
            }

            v18 = *(v15 + 16);
            v5 = a4;
          }

          if ((v23 & 0x80000000) == 0)
          {
            v25 = sub_27035C878(v5, a1, v23, v18);
            v6 = a1;
            if (!v25 && v21 == ((*(a1 + 88 * v23 + 76) >> 3) & 1))
            {
              sub_27036D4A8();
            }

            v18 = *(v15 + 16);
            v5 = a4;
          }

          v9 += *v18;
          v11 = v28;
          if (v9 > v28)
          {
            sub_27036D47C();
          }

          v7 = v19;
          v8 = (v8 + 1);
        }
      }

      ++v12;
    }

    while (v12 != 3);
    ++v7;
    v32 += 12;
    v10 += 88;
  }

  while (v7 != v27);
  return v8;
}

uint64_t sub_27035AFC0(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6, float a7)
{
  v258 = *MEMORY[0x277D85DE8];
  if (a4 < 1)
  {
    goto LABEL_189;
  }

  v8 = a3;
  v11 = 0;
  v12 = a4;
  v227 = a4;
  v13 = a3;
  do
  {
    v15 = *v13;
    v13 += 6;
    v14 = v15;
    if (v11 <= v15)
    {
      v11 = v14;
    }

    --v12;
  }

  while (v12);
  if (v11)
  {
    v16 = 4 * v11;
    v17 = malloc_type_malloc(40 * v11, 0x10000400A747E1EuLL);
    v18 = malloc_type_malloc(16 * v11, 0x101004082113244uLL);
    v19 = malloc_type_malloc(v16, 0x100004052888210uLL);
    v20 = v19;
    if (v17)
    {
      _ZF = v18 == 0;
    }

    else
    {
      _ZF = 1;
    }

    v22 = _ZF || v19 == 0;
    v232 = v18;
    if (!v22)
    {
      v24 = 0;
      v228 = v18 + 1;
      v229 = v17;
      v25 = 1.0;
      v237 = a7;
      v236 = a2;
      v225 = v8;
      v230 = a1;
      while (1)
      {
        v226 = v24;
        v26 = &v8[6 * v24];
        if (*v26 < 1)
        {
          goto LABEL_187;
        }

        v27 = 0;
        v28 = 0;
        v235 = &v8[6 * v24];
        do
        {
          v29 = *(*(v26 + 1) + 4 * v27);
          v30 = a2 + 88 * v29;
          if (*(v30 + 16) == v26)
          {
            v31 = 0;
          }

          else if (*(v30 + 24) == v26)
          {
            v31 = 1;
          }

          else
          {
            if (*(v30 + 32) != v26)
            {
              sub_27036D500();
            }

            v31 = 2;
          }

          v32 = *(a5 + 4 * (v31 + 3 * v29));
          if (v32 != v26[4])
          {
            sub_27036D52C();
          }

          v233 = v27;
          v239 = v28;
          v257 = 0.0;
          v256 = 0;
          (*(*a6 + 24))(a6, &v256, (v32 >> 2), v32 & 3);
          v33 = v256;
          v34 = v257;
          v35 = *(v30 + 40);
          v36 = *(v30 + 44);
          v37 = *(v30 + 48);
          v38 = ((v256.f32[1] * v36) + (v256.f32[0] * v35)) + (v257 * v37);
          v39 = v256.f32[0] * v38;
          v40 = v256.f32[1] * v38;
          v41 = v257 * v38;
          v42 = v35 - (v256.f32[0] * v38);
          v43 = v36 - v40;
          v44 = v37 - v41;
          v45 = vabds_f32(v36, v40);
          v46 = vabds_f32(v37, v41);
          if (vabds_f32(v35, v39) > 1.1755e-38 || v45 > 1.1755e-38 || v46 > 1.1755e-38)
          {
            v49 = v25 / sqrtf(((v43 * v43) + (v42 * v42)) + (v44 * v44));
            v42 = v42 * v49;
            v43 = v43 * v49;
            v44 = v44 * v49;
          }

          v50 = *(v30 + 52);
          v51 = *(v30 + 56);
          v52 = *(v30 + 60);
          v53 = ((v256.f32[1] * v51) + (v256.f32[0] * v50)) + (v257 * v52);
          v54 = v50 - (v256.f32[0] * v53);
          v55 = v51 - (v256.f32[1] * v53);
          v56 = v52 - (v257 * v53);
          v57 = fabsf(v55);
          v58 = fabsf(v56);
          v60 = fabsf(v54) <= 1.1755e-38 && v57 <= 1.1755e-38 && v58 <= 1.1755e-38;
          v61 = v239;
          if (!v60)
          {
            v62 = v25 / sqrtf(((v55 * v55) + (v54 * v54)) + (v56 * v56));
            v54 = v54 * v62;
            v55 = v55 * v62;
            v56 = v56 * v62;
          }

          v234 = v31;
          v63 = *v26;
          v240 = a2 + 88 * v29;
          if (*v26 < 1)
          {
            v65 = 0;
            v100 = v232;
          }

          else
          {
            v64 = 0;
            v65 = 0;
            v66 = *(v30 + 72);
            v67 = *(v26 + 1);
            do
            {
              v68 = *(v67 + 4 * v64);
              v69 = a2 + 88 * v68;
              v70 = *(v69 + 40);
              v71 = *(v69 + 44);
              v72 = *(v69 + 48);
              v73 = ((v33.f32[1] * v71) + (v33.f32[0] * v70)) + (v34 * v72);
              v74 = v33.f32[0] * v73;
              v75 = v33.f32[1] * v73;
              v76 = v34 * v73;
              v77 = v70 - (v33.f32[0] * v73);
              v78 = v71 - v75;
              v79 = v72 - v76;
              v80 = vabds_f32(v71, v75);
              v81 = vabds_f32(v72, v76);
              if (vabds_f32(v70, v74) > 1.1755e-38 || v80 > 1.1755e-38 || v81 > 1.1755e-38)
              {
                v84 = v25 / sqrtf(((v78 * v78) + (v77 * v77)) + (v79 * v79));
                v77 = v77 * v84;
                v78 = v78 * v84;
                v79 = v79 * v84;
              }

              v85 = *(v69 + 52);
              v86 = *(v69 + 56);
              v87 = *(v69 + 60);
              v88 = ((v33.f32[1] * v86) + (v33.f32[0] * v85)) + (v34 * v87);
              v89 = v34 * v88;
              v90 = v85 - (v33.f32[0] * v88);
              v91 = v86 - (v33.f32[1] * v88);
              v92 = v87 - v89;
              v93 = fabsf(v91);
              v94 = fabsf(v87 - v89);
              if (fabsf(v90) > 1.1755e-38 || v93 > 1.1755e-38 || v94 > 1.1755e-38)
              {
                v97 = v25 / sqrtf(((v91 * v91) + (v90 * v90)) + (v92 * v92));
                v90 = v90 * v97;
                v91 = v91 * v97;
                v92 = v92 * v97;
              }

              v98 = *(v69 + 72);
              if (v29 == v68 && v66 != v98)
              {
                sub_27036D558();
              }

              if (((*(v30 + 76) | *(v69 + 76)) & 4) != 0 || v66 == v98 || ((((v43 * v78) + (v42 * v77)) + (v44 * v79)) > a7 ? (v99 = (((v55 * v91) + (v54 * v90)) + (v56 * v92)) <= a7) : (v99 = 1), !v99))
              {
                v20[v65] = v68;
                v63 = *v26;
                ++v65;
              }

              ++v64;
            }

            while (v64 < v63);
            v100 = v232;
            if (v65 > 1)
            {
              sub_27035C9D8(v20, 0, v65 - 1, 0x26065CAu);
            }

            v61 = v239;
          }

          if (v61 < 1)
          {
            v101 = 0;
LABEL_92:
            if (v101 != v61)
            {
              sub_27036D584();
            }

            v107 = malloc_type_malloc(4 * v65, 0x100004052888210uLL);
            v231 = v107;
            if (v107)
            {
              v108 = &v100[2 * v239];
              *v108 = v65;
              *(v108 + 1) = v107;
              memcpy(v107, v20, 4 * v65);
              *&v112 = 0;
              if (v65 < 1)
              {
                v118 = 0.0;
                v117 = 0.0;
                LODWORD(v109) = 0;
                LODWORD(v110) = 0;
                v115 = 0.0;
                *&v111 = 0;
                v119 = a2 + 88 * v29;
              }

              else
              {
                v113 = v235[4];
                v114 = v65;
                v115 = 0.0;
                v116 = v20;
                *&v110 = 0;
                *&v109 = 0;
                v117 = 0.0;
                v118 = 0.0;
                *&v111 = 0;
                v119 = v240;
                v238 = v113;
                do
                {
                  v121 = *v116++;
                  v120 = v121;
                  v122 = a2 + 88 * v121;
                  if ((*(v122 + 76) & 4) == 0)
                  {
                    v123 = 3 * v120;
                    v124 = (a5 + 12 * v120);
                    v125 = *v124;
                    v253 = v112;
                    v252 = v118;
                    v251 = v109;
                    v250 = v117;
                    v248 = v111;
                    v249 = v110;
                    v247 = v115;
                    v246 = v116;
                    if (*v124 == v113)
                    {
                      v126 = 0;
                      v127 = 1;
                    }

                    else if (v124[1] == v113)
                    {
                      v127 = 1;
                      v126 = 1;
                    }

                    else
                    {
                      if (v124[2] != v113)
                      {
                        sub_27036D5B0();
                      }

                      v127 = 0;
                      v126 = 2;
                    }

                    v128 = *(a5 + 4 * (v126 + v123));
                    v257 = 0.0;
                    v256 = 0;
                    (*(*a6 + 24))(a6, &v256, (v128 >> 2), v128 & 3);
                    v129 = v257;
                    v130 = v256.i32[0];
                    v131 = *(v122 + 40);
                    v132 = *(v122 + 48);
                    v133 = (COERCE_FLOAT(vmul_f32(v256, v131).i32[1]) + (v256.f32[0] * v131.f32[0])) + (v257 * v132);
                    v134 = vsub_f32(v131, vmul_n_f32(v256, v133));
                    v135 = v132 - (v257 * v133);
                    if (fabsf(v134.f32[0]) > 1.1755e-38 || (v136 = vmvn_s8(vcgt_f32(vabs_f32(__PAIR64__(v134.u32[1], LODWORD(v135))), 0x80000000800000)), (v136.i8[4] & 1) == 0) || (v136.i8[0] & 1) == 0)
                    {
                      v137 = v25 / sqrtf((COERCE_FLOAT(vmul_f32(v134, v134).i32[1]) + (v134.f32[0] * v134.f32[0])) + (v135 * v135));
                      v134 = vmul_n_f32(v134, v137);
                      v135 = v135 * v137;
                    }

                    v244 = v135;
                    v245 = v134;
                    v138 = *(v122 + 60);
                    v139 = *(v122 + 52);
                    v140 = (COERCE_FLOAT(vmul_f32(v256, v139).i32[1]) + (v256.f32[0] * v139.f32[0])) + (v257 * v138);
                    v141 = vsub_f32(v139, vmul_n_f32(v256, v140));
                    v142 = v138 - (v257 * v140);
                    if (fabsf(v141.f32[0]) > 1.1755e-38 || (v143 = vmvn_s8(vcgt_f32(vabs_f32(__PAIR64__(v141.u32[1], LODWORD(v142))), 0x80000000800000)), (v143.i8[4] & 1) == 0) || (v143.i8[0] & 1) == 0)
                    {
                      v144 = v25 / sqrtf((COERCE_FLOAT(vmul_f32(v141, v141).i32[1]) + (v141.f32[0] * v141.f32[0])) + (v142 * v142));
                      v141 = vmul_n_f32(v141, v144);
                      v142 = v142 * v144;
                    }

                    v241 = v142;
                    v242 = v141;
                    v113 = v238;
                    if (v127)
                    {
                      v145 = v126 + 1;
                    }

                    else
                    {
                      v145 = 0;
                    }

                    v146 = *(a5 + 4 * (v145 + v123));
                    v147 = *(a5 + 4 * (v126 + v123));
                    v148 = v126 - 1;
                    if (v125 == v238)
                    {
                      v148 = 2;
                    }

                    v149 = *(a5 + 4 * (v148 + v123));
                    v150 = v256.f32[1];
                    v257 = 0.0;
                    v256 = 0;
                    v151 = a6;
                    v243 = *&v130;
                    (*(*a6 + 16))(a6, &v256, (v149 >> 2), v149 & 3);
                    v152 = v256;
                    v153 = v257;
                    v257 = 0.0;
                    v256 = 0;
                    (*(*v151 + 16))(v151, &v256, (v147 >> 2), v147 & 3);
                    v154 = v256;
                    v155 = v257;
                    v257 = 0.0;
                    v256 = 0;
                    (*(*v151 + 16))(v151, &v256, (v146 >> 2), v146 & 3);
                    v156 = ((v150 * (v152.f32[1] - v154.f32[1])) + (v243 * (v152.f32[0] - v154.f32[0]))) + (v129 * (v153 - v155));
                    v157 = v243 * v156;
                    v158 = v150 * v156;
                    v159 = v129 * v156;
                    v160 = (v152.f32[0] - v154.f32[0]) - (v243 * v156);
                    v161 = (v152.f32[1] - v154.f32[1]) - v158;
                    v162 = (v153 - v155) - v159;
                    v163 = vabds_f32(v152.f32[1] - v154.f32[1], v158);
                    v164 = vabds_f32(v153 - v155, v159);
                    if (vabds_f32(v152.f32[0] - v154.f32[0], v157) <= 1.1755e-38 && v163 <= 1.1755e-38 && v164 <= 1.1755e-38)
                    {
                      a2 = v236;
                      v25 = 1.0;
                    }

                    else
                    {
                      v25 = 1.0;
                      v167 = 1.0 / sqrtf(((v161 * v161) + (v160 * v160)) + (v162 * v162));
                      v160 = v160 * v167;
                      v161 = v161 * v167;
                      v162 = v162 * v167;
                      a2 = v236;
                    }

                    v119 = v240;
                    v168 = ((v150 * (v256.f32[1] - v154.f32[1])) + (v243 * (v256.f32[0] - v154.f32[0]))) + (v129 * (v257 - v155));
                    v169 = v243 * v168;
                    v170 = v150 * v168;
                    v171 = v129 * v168;
                    v172 = (v256.f32[0] - v154.f32[0]) - (v243 * v168);
                    v173 = (v256.f32[1] - v154.f32[1]) - v170;
                    v174 = (v257 - v155) - v171;
                    v175 = vabds_f32(v256.f32[1] - v154.f32[1], v170);
                    v176 = vabds_f32(v257 - v155, v171);
                    if (vabds_f32(v256.f32[0] - v154.f32[0], v169) > 1.1755e-38 || v175 > 1.1755e-38 || v176 > 1.1755e-38)
                    {
                      v179 = v25 / sqrtf(((v173 * v173) + (v172 * v172)) + (v174 * v174));
                      v172 = v172 * v179;
                      v173 = v173 * v179;
                      v174 = v174 * v179;
                    }

                    a7 = v237;
                    v180 = ((v161 * v173) + (v160 * v172)) + (v162 * v174);
                    v181 = -1.0;
                    if (v180 >= -1.0)
                    {
                      v181 = v180;
                    }

                    if (v180 <= v25)
                    {
                      v182 = v181;
                    }

                    else
                    {
                      v182 = v25;
                    }

                    v183 = acos(v182);
                    *(&v112 + 1) = *(&v253 + 1);
                    *&v112 = vadd_f32(*&v253, vmul_n_f32(v245, v183));
                    *(&v111 + 1) = *(&v248 + 1);
                    v110 = v249;
                    *&v110 = *&v249 + (v244 * v183);
                    *&v111 = vadd_f32(*&v248, vmul_n_f32(v242, v183));
                    v109 = v251;
                    *&v109 = *&v251 + (v241 * v183);
                    v117 = v250 + (v183 * *(v122 + 64));
                    v118 = v252 + (v183 * *(v122 + 68));
                    v115 = v247 + v183;
                    v116 = v246;
                  }

                  --v114;
                }

                while (v114);
              }

              if (fabsf(*&v112) > 1.1755e-38 || (v188 = vmvn_s8(vcgt_f32(vabs_f32(__PAIR64__(DWORD1(v112), v110)), 0x80000000800000)), (v188.i8[4] & 1) == 0) || (v188.i8[0] & 1) == 0)
              {
                v189 = v25 / sqrtf((COERCE_FLOAT(vmul_f32(*&v112, *&v112).i32[1]) + (*&v112 * *&v112)) + (*&v110 * *&v110));
                *&v112 = vmul_n_f32(*&v112, v189);
                *&v110 = *&v110 * v189;
              }

              v17 = v229;
              a1 = v230;
              v184 = v234;
              if (fabsf(*&v111) > 1.1755e-38 || (v190 = vmvn_s8(vcgt_f32(vabs_f32(__PAIR64__(DWORD1(v111), v109)), 0x80000000800000)), (v190.i8[4] & 1) == 0) || (v190.i8[0] & 1) == 0)
              {
                v191 = v25 / sqrtf((COERCE_FLOAT(vmul_f32(*&v111, *&v111).i32[1]) + (*&v111 * *&v111)) + (*&v109 * *&v109));
                *&v111 = vmul_n_f32(*&v111, v191);
                *&v109 = *&v109 * v191;
              }

              if (v115 > 0.0)
              {
                v117 = v117 / v115;
                v118 = v118 / v115;
              }

              v192 = &v229[40 * v239];
              *v192 = v112;
              *(v192 + 2) = v110;
              *(v192 + 3) = v117;
              *(v192 + 2) = v111;
              *(v192 + 6) = v109;
              *(v192 + 7) = v118;
              *(v192 + 4) = 0;
              ++v239;
            }

            else
            {
              if (v239 >= 1)
              {
                v185 = v239;
                v186 = v228;
                do
                {
                  v187 = *v186;
                  v186 += 2;
                  free(v187);
                  --v185;
                }

                while (v185);
              }

              free(v232);
              free(v20);
              free(v17);
              v119 = v240;
              v184 = v234;
            }

            if (!v231)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v101 = 0;
            while (1)
            {
              v102 = &v100[2 * v101];
              if (v65 == *v102)
              {
                if (v65 < 1)
                {
                  break;
                }

                v103 = 0;
                v104 = *(v102 + 1);
                do
                {
                  v105 = v20[v103] == *(v104 + 4 * v103);
                }

                while (v20[v103] == *(v104 + 4 * v103) && ++v103 < v65);
                if (v105)
                {
                  break;
                }
              }

              if (++v101 >= v61)
              {
                goto LABEL_92;
              }
            }

            v119 = a2 + 88 * v29;
            v184 = v234;
          }

          v193 = a1 + 40 * (*(v119 + 80) + *(v119 + v184 + 84));
          v194 = *(v193 + 32);
          if (v194 > 1)
          {
            sub_27036D634();
          }

          if (((*(v119 + 76) >> 3) & 1) != v235[5])
          {
            sub_27036D5DC();
          }

          if (v194 == 1)
          {
            v195 = &v17[40 * v101];
            v196 = *(v193 + 12);
            v197 = *(v195 + 3);
            v198 = *(v193 + 28);
            v199 = *(v195 + 7);
            if (v196 == v197)
            {
              v200 = *v193;
              v201 = *v195;
              v26 = v235;
              v28 = v239;
              v202 = v233;
              if (v198 != v199 || v200 != v201 || (_D3 = *(v193 + 4), v204 = vmvn_s8(vceq_f32(_D3, *(v195 + 4))), (v204.i8[0] & 1) != 0) || (v204.i8[4] & 1) != 0 || (v205 = *(v193 + 16), v206 = vmvn_s8(vceq_f32(v205, *(v195 + 16))), (v206.i8[0] & 1) != 0) || (v206.i8[4] & 1) != 0 || (v207 = *(v193 + 24), v207 != *(v195 + 6)))
              {
LABEL_174:
                v200 = v201 + v200;
                _D3 = vadd_f32(*(v193 + 4), *(v195 + 4));
                if (fabsf(v200) > 1.1755e-38 || (v211 = vmvn_s8(vcgt_f32(vabs_f32(_D3), 0x80000000800000)), (v211.i8[0] & 1) == 0) || (v211.i8[4] & 1) == 0)
                {
                  _S7 = _D3.i32[1];
                  __asm { FMLA            S6, S7, V3.S[1] }

                  v217 = v25 / sqrtf(_S6);
                  v200 = v200 * v217;
                  _D3 = vmul_n_f32(_D3, v217);
                }

                v196 = (v196 + v197) * 0.5;
                v198 = (v198 + v199) * 0.5;
                v205 = vadd_f32(*(v193 + 16), *(v195 + 16));
                v207 = *(v193 + 24) + *(v195 + 6);
                if (fabsf(v205.f32[0]) > 1.1755e-38 || (v218.i32[1] = v205.i32[1], v218.f32[0] = *(v193 + 24) + *(v195 + 6), v219 = vmvn_s8(vcgt_f32(vabs_f32(v218), 0x80000000800000)), (v219.i8[4] & 1) == 0) || (v219.i8[0] & 1) == 0)
                {
                  v220 = v25 / sqrtf((COERCE_FLOAT(vmul_f32(v205, v205).i32[1]) + (v205.f32[0] * v205.f32[0])) + (v207 * v207));
                  v205 = vmul_n_f32(v205, v220);
                  v207 = v207 * v220;
                }
              }

              *v193 = v200;
              *(v193 + 4) = _D3;
              *(v193 + 12) = v196;
              *(v193 + 16) = v205;
              *(v193 + 24) = v207;
              *(v193 + 28) = v198;
              *(v193 + 32) = 2;
              goto LABEL_183;
            }

            v200 = *v193;
            v201 = *v195;
            v26 = v235;
            v28 = v239;
            v202 = v233;
            goto LABEL_174;
          }

          if (v194)
          {
            sub_27036D608();
          }

          v208 = &v17[40 * v101];
          v209 = *v208;
          v210 = *(v208 + 1);
          *(v193 + 32) = *(v208 + 4);
          *v193 = v209;
          *(v193 + 16) = v210;
          *(v193 + 32) = 1;
          v26 = v235;
          v28 = v239;
          v202 = v233;
LABEL_183:
          *(v193 + 36) = v26[5];
          v27 = v202 + 1;
        }

        while (v27 < *v26);
        if (v28 >= 1)
        {
          v221 = v28;
          v222 = v228;
          do
          {
            v223 = *v222;
            v222 += 2;
            free(v223);
            --v221;
          }

          while (v221);
        }

LABEL_187:
        v24 = v226 + 1;
        v8 = v225;
        if (v226 + 1 == v227)
        {
          free(v232);
          free(v20);
          free(v17);
          goto LABEL_189;
        }
      }
    }

    if (v17)
    {
      free(v17);
    }

    if (v18)
    {
      free(v18);
    }

    if (v20)
    {
      free(v20);
    }

LABEL_21:
    result = 0;
  }

  else
  {
LABEL_189:
    result = 1;
  }

  v224 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27035BDA8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = result;
  v49 = *MEMORY[0x277D85DE8];
  if (a5 < a6)
  {
    v8 = a5;
    v9 = a6;
    do
    {
      v10 = a2 + 88 * v8;
      if ((*(v10 + 76) & 2) == 0)
      {
        v11 = 0;
        result = a3 + 12 * v8;
        do
        {
          if (a5 >= 1)
          {
            v12 = 0;
            v13 = *(result + 4 * v11);
            do
            {
              v14 = *(a3 + 4 * v12);
            }

            while (v13 != v14 && ++v12 < 3 * a5);
            if (v13 == v14)
            {
              v16 = v7 + 40 * (*(a2 + 88 * (v12 / 3) + 80) + *(a2 + 88 * (v12 / 3) + v12 % 3 + 84));
              v17 = *v16;
              v18 = *(v16 + 16);
              v19 = *(v16 + 32);
              v20 = v7 + 40 * (*(v10 + 80) + *(v10 + 84 + v11));
              *(v20 + 32) = v19;
              *v20 = v17;
              *(v20 + 16) = v18;
            }
          }

          ++v11;
        }

        while (v11 != 3);
      }

      ++v8;
    }

    while (v8 != v9);
  }

  if (a5 >= 1)
  {
    v21 = 0;
    v22 = (a2 + 84);
    v23 = a5;
    v45 = a5;
    v46 = a2;
    do
    {
      v24 = a2 + 88 * v21;
      if ((*(v24 + 76) & 2) != 0)
      {
        v25 = (1 << *(v24 + 85)) | (1 << *(v24 + 84)) | (1 << *(v24 + 86));
        if ((v25 & 8) != 0)
        {
          v26 = 0;
        }

        else
        {
          v26 = 3;
        }

        if ((v25 & 4) == 0)
        {
          v26 = 2;
        }

        if ((v25 & 2) != 0)
        {
          v27 = v26;
        }

        else
        {
          v27 = 1;
        }

        v28 = *(v24 + 72);
        if (v28 < 0)
        {
          sub_27036D68C();
        }

        v48 = 0.0;
        v47 = 0;
        v29 = ((4 * v28) >> 2);
        (*(*a4 + 16))(a4, &v47, v29, v27);
        v30 = v47;
        v31 = -1;
        v32 = v22;
        v33 = v48;
        while (1)
        {
          v35 = *v32++;
          v34 = v35;
          if (v35 >= 4)
          {
            sub_27036D68C();
          }

          v48 = 0.0;
          v47 = 0;
          result = (*(*a4 + 16))(a4, &v47, v29, v34);
          v36 = *&v47 == *&v30 && *(&v47 + 1) == *(&v30 + 1);
          if (v36 && v48 == v33)
          {
            break;
          }

          if (++v31 >= 2)
          {
            sub_27036D660();
          }
        }

        v38 = *(v24 + 80);
        v39 = v38 + v27;
        v40 = v7 + 40 * (v38 + v34);
        v41 = *v40;
        v42 = *(v40 + 16);
        v43 = v7 + 40 * v39;
        *(v43 + 32) = *(v40 + 32);
        *v43 = v41;
        *(v43 + 16) = v42;
        v23 = v45;
        a2 = v46;
      }

      ++v21;
      v22 += 88;
    }

    while (v21 != v23);
  }

  v44 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27035C04C(float a1, float a2, float a3)
{
  v3 = vcvts_n_s32_f32((a3 - a1) / (a2 - a1), 0xBuLL);
  v4 = v3 & ~(v3 >> 31);
  if (v4 >= 2047)
  {
    return 2047;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_27035C070(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  while (2)
  {
    v5 = a5;
    v6 = a4;
    v7 = a3;
    v8 = a2;
    v54 = result;
    v67 = *MEMORY[0x277D85DE8];
    v9 = a2 + 16 * a4;
    *v66 = *v9;
    v10 = a4;
    *&v66[8] = *(v9 + 8);
    *v65 = *v66;
    *&v65[8] = *&v66[8];
    if (a4 >= a5)
    {
      goto LABEL_10;
    }

    v11 = a2 + 16 * a4 + 16;
    v12 = a4;
    do
    {
      v13 = 0;
      v14 = 0;
      ++v12;
      v15 = v65;
      do
      {
        v16 = *(v11 + v13);
        if (*&v66[v13] <= v16)
        {
          v17 = v15;
          if (*v15 >= v16)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v17 = &v66[4 * v14];
        }

        *v17 = v16;
LABEL_8:
        ++v14;
        ++v15;
        v13 += 4;
      }

      while (v13 != 12);
      v11 += 16;
    }

    while (v12 != a5);
LABEL_10:
    v18 = vsub_f32(*&v65[4], *&v66[4]);
    if (v18.f32[0] <= (*v65 - *v66) || v18.f32[0] <= v18.f32[1])
    {
      if (v18.f32[1] <= (*v65 - *v66))
      {
        v22 = 0;
        v21 = v66;
        v20 = v65;
      }

      else
      {
        v20 = &v65[8];
        v21 = &v66[8];
        v22 = 2;
      }
    }

    else
    {
      v20 = &v65[4];
      v21 = &v66[4];
      v22 = 1;
    }

    v23 = (*v20 + *v21) * 0.5;
    if (v23 < *v20 && v23 > *v21)
    {
      if (a4 >= a5)
      {
        sub_27036D6B8();
      }

      v38 = a2 + 4 * v22;
      LODWORD(v39) = a4;
      while (1)
      {
        if (v39 < a4 || v39 > v5)
        {
          sub_27036D794();
        }

        v40 = *(v38 + 16 * v39);
        if (v40 >= v23)
        {
          v39 = v39;
        }

        else
        {
          v39 = (v39 + 1);
        }

        if (v40 >= v23 || v39 >= a5)
        {
          if (v39 < a5)
          {
            do
            {
              if (a5 < a4 || a5 > v5)
              {
                sub_27036D73C();
              }

              v42 = *(v38 + 16 * a5);
              LODWORD(a5) = a5 - (v42 >= v23);
            }

            while (v42 >= v23 && v39 < a5);
            v45 = v42 < v23 && v40 >= v23;
            if (v39 >= a5 && v45)
            {
              sub_27036D710();
            }

            if (v45)
            {
              v64 = *(a2 + 16 * v39);
              if (v39 >= a5)
              {
                sub_27036D6E4();
              }

              *(a2 + 16 * v39) = *(a2 + 16 * a5);
              *(a2 + 16 * a5) = v64;
              v39 = (v39 + 1);
              LODWORD(a5) = a5 - 1;
            }
          }

          if (v39 >= a5)
          {
            break;
          }
        }
      }

      if (v39 != a5 && v39 != a5 + 1)
      {
        sub_27036D768();
      }

      if (v39 == a5)
      {
        v47 = *(a2 + 16 * v39 + 4 * v22);
        LODWORD(a5) = v39 - (v47 >= v23);
        if (v47 >= v23)
        {
          v48 = v39;
        }

        else
        {
          v48 = (v39 + 1);
        }

        v39 = v48;
      }

      if (a5 > a4)
      {
        result = sub_27035C070(result, a2, a3, a4);
      }

      if (v39 < v5)
      {
        v49 = *MEMORY[0x277D85DE8];
        result = v54;
        a2 = v8;
        a3 = v7;
        a4 = v39;
        a5 = v5;

        continue;
      }
    }

    else if (a4 <= a5)
    {
      v25 = a5 + 1;
      v26 = a4;
      v52 = a4;
      v51 = a5 + 1;
      do
      {
        v53 = *(v8 + 16 * v26 + 12);
        v27 = *(v54 + 4 * v53);
        DWORD2(v64) = 0;
        *&v64 = 0;
        (*(*v7 + 16))(v7, &v64, (v27 >> 2), v27 & 3);
        v57 = v64;
        v61 = DWORD2(v64);
        DWORD2(v64) = 0;
        *&v64 = 0;
        (*(*v7 + 24))(v7, &v64, (v27 >> 2), v27 & 3);
        v59 = v64;
        v55 = *(&v64 + 4);
        *&v64 = 0;
        result = (*(*v7 + 32))(v7, &v64, (v27 >> 2), v27 & 3);
        if (v26 > v10)
        {
          v28.i64[0] = v57;
          v28.i64[1] = __PAIR64__(v59, v61);
          v29.i64[0] = v55;
          v29.i64[1] = v64;
          v30 = v6;
          v56 = v29;
          v58 = v28;
          do
          {
            v31 = *(v8 + 16 * v30 + 12);
            v32 = *(v54 + 4 * v31);
            DWORD2(v64) = 0;
            *&v64 = 0;
            v33 = (*(*v7 + 16))(v7, &v64, (v32 >> 2), v32 & 3);
            v33.n128_u64[0] = v64;
            v33.n128_u32[2] = DWORD2(v64);
            v62 = v33;
            DWORD2(v64) = 0;
            *&v64 = 0;
            (*(*v7 + 24))(v7, &v64, (v32 >> 2), v32 & 3);
            v60 = *(&v64 + 4);
            v34 = v62;
            v34.n128_u32[3] = v64;
            v63 = v34;
            *&v64 = 0;
            result = (*(*v7 + 32))(v7, &v64, (v32 >> 2), v32 & 3);
            v35.i64[0] = v60;
            v35.i64[1] = v64;
            v36 = vuzp1q_s16(vceqq_f32(v58, v63), vceqq_f32(v56, v35));
            v37 = vaddvq_s16(vandq_s8(v36, xmmword_270371960));
            v30 += (vminv_u8(vmovn_s16(v36)) & 1) == 0;
          }

          while (v26 > v30 && v37 != 255);
          v10 = v52;
          v25 = v51;
          if (v37 == 255)
          {
            *(v54 + 4 * v53) = *(v54 + 4 * v31);
          }
        }

        ++v26;
      }

      while (v25 != v26);
    }

    break;
  }

  v50 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27035C5BC(uint64_t a1, int *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v9[0] = 0;
  (*(*a1 + 32))(a1, v9, (v4 >> 2), v4 & 3);
  v5 = a2[1];
  v9[0] = 0;
  (*(*a1 + 32))(a1, v9, (v5 >> 2), v5 & 3);
  v6 = a2[2];
  v9[0] = 0;
  result = (*(*a1 + 32))(a1, v9, (v6 >> 2), v6 & 3);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27035C6BC(uint64_t result, int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  while (a3 - a2 >= 1)
  {
    v5 = a4;
    v6 = a3;
    v7 = result;
    if (a3 - a2 == 1)
    {
      v8 = result + 12 * a2;
      v9 = result + 12 * a3;
      if (*(v8 + 4 * a4) > *(v9 + 4 * a4))
      {
        v10 = *v8;
        v11 = *(v8 + 8);
        v12 = *(v9 + 8);
        *v8 = *v9;
        *(v8 + 8) = v12;
        *v9 = v10;
        *(v9 + 8) = v11;
      }

      return result;
    }

    v13 = a5 + __ROR4__(a5, -a5) + 3;
    v14 = *(result + 12 * (v13 % (a3 - a2 + 1) + a2) + 4 * a4);
    v15 = a2;
    do
    {
      v16 = v15 - 1;
      v17 = result + 12 * v15;
      do
      {
        v18 = *(v17 + 4 * a4);
        ++v16;
        ++v15;
        v17 += 12;
      }

      while (v18 < v14);
      v19 = v17 - 12;
      v20 = a3 + 1;
      v21 = result + 12 * a3;
      do
      {
        v22 = *(v21 + 4 * a4);
        --v20;
        LODWORD(a3) = a3 - 1;
        v21 -= 12;
      }

      while (v22 > v14);
      if (v16 <= v20)
      {
        v23 = *v19;
        v25 = *(v19 + 8);
        v24 = *(v21 + 20);
        *v19 = *(v21 + 12);
        *(v19 + 8) = v24;
        *(v21 + 12) = v23;
        *(v21 + 20) = v25;
      }

      else
      {
        --v15;
        LODWORD(a3) = a3 + 1;
      }
    }

    while (v15 <= a3);
    if (a3 > a2)
    {
      result = sub_27035C6BC(result);
    }

    if (v15 >= v6)
    {
      return result;
    }

    result = v7;
    a2 = v15;
    a3 = v6;
    a4 = v5;
    a5 = v13;
  }

  return result;
}

uint64_t sub_27035C878(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  LOBYTE(v8) = 0;
  while (1)
  {
    v9 = v8;
    v10 = *(a4 + 16);
    v11 = (a1 + 12 * a3);
    v12 = *v11;
    if (*v11 == v10)
    {
      v13 = 0;
    }

    else if (v11[1] == v10)
    {
      v13 = 1;
    }

    else
    {
      if (v11[2] != v10)
      {
        sub_27036D7C0();
      }

      v13 = 2;
    }

    v14 = a2 + 88 * a3;
    v15 = (v14 + 16);
    v16 = *(v14 + 16 + 8 * v13);
    if (v16 == a4)
    {
      break;
    }

    if (v16)
    {
      goto LABEL_23;
    }

    v17 = *(v14 + 76);
    if ((v17 & 4) != 0 && !*v15 && !*(v14 + 24) && !*(v14 + 32))
    {
      v17 = v17 & 0xFFFFFFF7 | (8 * (*(a4 + 20) != 0));
      *(v14 + 76) = v17;
    }

    if (((v17 >> 3) & 1) != *(a4 + 20))
    {
LABEL_23:
      v8 = 0;
      goto LABEL_25;
    }

    *(*(a4 + 8) + 4 * (*a4)++) = a3;
    v15[v13] = a4;
    v18 = *(v14 + 4 * v13);
    v19 = v13 - 1;
    if (v12 == v10)
    {
      v20 = 2;
    }

    else
    {
      v20 = v19;
    }

    a3 = *(v14 + 4 * v20);
    if ((v18 & 0x80000000) == 0)
    {
      sub_27035C878(a1, a2);
    }

    v8 = 1;
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_25;
    }
  }

  v8 = 1;
LABEL_25:
  if (v9)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_27035C9D8(uint64_t result, int a2, int a3, unsigned int a4)
{
  v6 = result;
  do
  {
    if (a3 - a2 <= -2)
    {
      sub_27036D7EC();
    }

    a4 += __ROR4__(a4, -a4) + 3;
    v7 = *(v6 + 4 * (a4 % (a3 - a2 + 1) + a2));
    v8 = a2;
    LODWORD(v9) = a3;
    do
    {
      v10 = v8;
      do
      {
        v11 = *(v6 + 4 * v10++);
      }

      while (v11 < v7);
      v8 = v10 - 1;
      v9 = v9;
      do
      {
        v12 = *(v6 + 4 * v9--);
      }

      while (v12 > v7);
      if (v10 - 1 <= v9 + 1)
      {
        *(v6 + 4 * v10 - 4) = v12;
        *(v6 + 4 * v9 + 4) = v11;
        v8 = v10;
      }

      else
      {
        LODWORD(v9) = v9 + 1;
      }
    }

    while (v8 <= v9);
    if (v9 > a2)
    {
      result = sub_27035C9D8(v6);
    }

    a2 = v8;
  }

  while (v8 < a3);
  return result;
}

void sub_27035CAC4()
{
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(v0);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(v0);
  dword_2807CE588 = *MEMORY[0x277D86590];
}

void sub_27035D178(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  va_copy(va2, va1);
  v18 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  sub_27033B284(va);
  MEMORY[0x27439E0D0](va1);
  sub_270310E24(va2);
  MEMORY[0x27439E250](v7 - 104);

  _Unwind_Resume(a1);
}

void sub_27035D45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  MEMORY[0x27439E250](va);
  _Unwind_Resume(a1);
}

void sub_27035D724(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v14 = *(v12 - 88);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x27439E250](va);

  _Unwind_Resume(a1);
}

void sub_27035D9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_27033B624(&a9);
  sub_270340E50(&a13);
  MEMORY[0x27439E0D0](v13 - 56);
  _Unwind_Resume(a1);
}

void sub_27035DBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_27033B624(&a9);
  sub_270340E50(&a13);
  MEMORY[0x27439E0D0](v13 - 56);
  _Unwind_Resume(a1);
}

void sub_27035DD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_270340E50(va);
  MEMORY[0x27439E0D0](v3 - 40);
  _Unwind_Resume(a1);
}

void sub_27035E06C(_Unwind_Exception *a1)
{
  sub_27033B284(v2 - 80);

  _Unwind_Resume(a1);
}

void sub_27035E70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  sub_27033F310(v25 - 176, *(v25 - 168));

  _Unwind_Resume(a1);
}

void sub_27035EA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_27035EE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_270311D34(va1);
  sub_270311D34(va);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a4 & 7) != 0)
  {
    atomic_fetch_add_explicit((a4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_27035F238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);

  _Unwind_Resume(a1);
}

void sub_27035F4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);

  _Unwind_Resume(a1);
}

void sub_27035F738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_270311D34(va);
  sub_270311D34(va1);

  _Unwind_Resume(a1);
}

void sub_27035F9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_27035FA3C(&a18);

  _Unwind_Resume(a1);
}

uint64_t sub_27035FA3C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_270314574(v3);
  }

  return a1;
}

void sub_27035FC5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_27035FA3C(&a18);

  _Unwind_Resume(a1);
}

void sub_27035FE94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_27035FA3C(&a13);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2703600A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_270360144(&a15);

  _Unwind_Resume(a1);
}

uint64_t sub_2703600D8(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_270314574(v3);
  }

  return a1;
}

uint64_t sub_270360144(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_270314574(v3);
  }

  return a1;
}

void sub_2703603D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_2703600D8(&a25);

  _Unwind_Resume(a1);
}

void sub_2703605B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_270360144(&a16);

  _Unwind_Resume(a1);
}

void sub_270360748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_270360144(&__p);

  _Unwind_Resume(a1);
}

void sub_2703609B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_2703600D8(&a20);

  _Unwind_Resume(a1);
}

void sub_270360CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_2703600D8(&a25);

  _Unwind_Resume(a1);
}

void sub_270360F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27036121C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  sub_2703600D8(&a23);

  _Unwind_Resume(a1);
}

void sub_270361414(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27033B284(va);
  MEMORY[0x27439E290](v2 - 40);
  _Unwind_Resume(a1);
}

void sub_2703615A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27033B284(va);
  MEMORY[0x27439E200](v2 - 40);
  _Unwind_Resume(a1);
}

void sub_270361738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27033B284(&a9);
  sub_27033B284(v9 - 48);
  _Unwind_Resume(a1);
}

void sub_270361994(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27033B624(va);
  sub_2703653D8(va1);

  _Unwind_Resume(a1);
}

void sub_270361CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = &a14;
  sub_270366B44(&a17);
  _Unwind_Resume(a1);
}

void sub_270361F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_27033B624(&a9);
  sub_27033B624(&a13);
  v16 = *(v14 - 56);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_2703621D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  *(v7 - 40) = v6;
  sub_270325B58((v7 - 40));
  sub_27036544C(va);
  sub_27033B624(va1);
  v9 = *(v7 - 48);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_270362340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    sub_270347BF8(a2, (a1 + 8), &v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    return sub_2703143D8(&v5);
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    *(a2 + 24) = 0;
  }

  return result;
}

void sub_2703623F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27031CBCC(va);
  _Unwind_Resume(a1);
}

void sub_270362468(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  JUMPOUT(0x27439EA70);
}

void sub_270362568(uint64_t a1)
{
  v2 = atomic_load(MEMORY[0x277D86540]);
  if (v2)
  {
    sub_2703654A8(a1, (v2 + 320));
  }

  sub_27033E930();
}

id sub_270362600(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, void *a2, pxrInternal__aapl__pxrReserved__ *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v7 = a2;
  MEMORY[0x27439E610](&v46, "rel");
  v9 = v46 ^ *a3;
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v9 < 8)
  {
    v46 = 0u;
    v47 = 0u;
    v21 = v7;
    v25 = objc_msgSend_UTF8String(v21, v22, v23, v24);
    MEMORY[0x27439E610](&v49, v25);
    pxrInternal__aapl__pxrReserved__::UsdPrim::CreateRelationship(a1, &v49);
    LODWORD(v46) = v41;
    *(&v46 + 1) = v42;
    v42 = 0;
    LODWORD(v47) = v43;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
    DWORD1(v47) = v44;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
    *(&v47 + 1) = v45;
    v45 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v43);
    if ((v49 & 7) != 0)
    {
      atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (sub_27033E778(&v46))
    {
      v26 = [USKProperty alloc];
      v30 = v46;
      v31 = *(&v46 + 1);
      if (*(&v46 + 1))
      {
        atomic_fetch_add_explicit((*(&v46 + 1) + 48), 1uLL, memory_order_relaxed);
      }

      sub_2703256DC(&v32, &v47);
      sub_270325728(&v33, &v47 + 1);
      v34 = *(&v47 + 1);
      if ((BYTE8(v47) & 7) != 0 && (atomic_fetch_add_explicit((*(&v47 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v34 &= 0xFFFFFFFFFFFFFFF8;
      }

      v20 = objc_msgSend_initWithUsdProperty_(v26, v27, &v30, v28);
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(&v32);
      if (v31)
      {
        sub_270314574(v31);
      }
    }

    else
    {
      v20 = 0;
    }

    if ((BYTE8(v47) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v47 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  }

  else
  {
    v10 = atomic_load(off_279E01258);
    if (!v10)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
    }

    v49 = 0;
    TypeForValueTypeName = pxrInternal__aapl__pxrReserved__::SdfGetTypeForValueTypeName(a3, v8);
    Type = 0;
    v49 = TypeForValueTypeName;
    Type = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v10, &v49, a4);
    v46 = 0u;
    v47 = 0u;
    v12 = v7;
    v16 = objc_msgSend_UTF8String(v12, v13, v14, v15);
    MEMORY[0x27439E610](&v40, v16);
    pxrInternal__aapl__pxrReserved__::UsdPrim::CreateAttribute();
    LODWORD(v46) = v41;
    *(&v46 + 1) = v42;
    v42 = 0;
    LODWORD(v47) = v43;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
    DWORD1(v47) = v44;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
    *(&v47 + 1) = v45;
    v45 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v43);
    if (v42)
    {
      sub_270314574(v42);
    }

    if ((v40 & 7) != 0)
    {
      atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (sub_27033E778(&v46))
    {
      v17 = [USKProperty alloc];
      v35 = v46;
      v36 = *(&v46 + 1);
      if (*(&v46 + 1))
      {
        atomic_fetch_add_explicit((*(&v46 + 1) + 48), 1uLL, memory_order_relaxed);
      }

      sub_2703256DC(&v37, &v47);
      sub_270325728(&v38, &v47 + 1);
      v39 = *(&v47 + 1);
      if ((BYTE8(v47) & 7) != 0 && (atomic_fetch_add_explicit((*(&v47 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v39 &= 0xFFFFFFFFFFFFFFF8;
      }

      v20 = objc_msgSend_initWithUsdProperty_(v17, v18, &v35, v19);
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(&v37);
      if (v36)
      {
        sub_270314574(v36);
      }
    }

    else
    {
      v20 = 0;
    }

    if ((BYTE8(v47) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v47 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  }

  sub_2703143D8(&v47);
  if (*(&v46 + 1))
  {
    sub_270314574(*(&v46 + 1));
  }

  return v20;
}

void sub_2703630E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27033B624(va);
  sub_27033B624(v12 - 128);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v12 - 96));
  v14 = *(v12 - 88);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_270363214(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  explicit = atomic_load_explicit((*(v2 + 24) + 56), memory_order_acquire);
  if (explicit)
  {
    return explicit;
  }

  return MEMORY[0x2822074D8]();
}

pxrInternal__aapl__pxrReserved__::SdfSpec *sub_270363278(pxrInternal__aapl__pxrReserved__::SdfSpec *a1)
{
  v1 = a1;
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    v7[0] = "sdf/declareHandles.h";
    v7[1] = "operator->";
    v7[2] = 80;
    v7[3] = "SpecType *pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>::operator->() const [T = pxrInternal__aapl__pxrReserved__::SdfPropertySpec]";
    v8 = 0;
    v9 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled(__p, ("N32pxrInternal__aapl__pxrReserved__15SdfPropertySpecE" & 0x7FFFFFFFFFFFFFFFLL), v2);
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v7, "Dereferenced an invalid %s", v4);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return v1;
}

void sub_270363330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27036351C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_27033B284(va);

  _Unwind_Resume(a1);
}

void sub_2703636E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27031CBCC(va);
  _Unwind_Resume(a1);
}

void sub_27036391C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_270366B44(va);
  sub_270366AC4(va1);
  _Unwind_Resume(a1);
}

void sub_270363A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_270363BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_270363F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_27033B284(&a9);
  sub_27033B284(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_270363F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v7 = 0;
  v8 = v4;
  sub_2703256DC(&v7, (a1 + 16));
  sub_270325728(&v7 + 1, (a1 + 20));
  sub_270365820(&v8, &v7);
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  sub_270347BF8(a2, &v6, &v7);
  if (v6)
  {
    sub_270314574(v6);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return sub_2703143D8(&v7);
}

void sub_270364008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_270314574(a3);
  }

  sub_27031CBCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2703643D4(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(a1 + 8);
  return a1;
}

void sub_2703644C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2703644EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2703644EC(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(a1 + 48);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(a1 + 8);
  return a1;
}

void sub_2703645F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2703644EC(va);
  _Unwind_Resume(a1);
}

void sub_2703647D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27033B284(va);
  sub_2703643D4(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_2703649F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_2703256DC(&v7, a1 + 4);
  sub_270325728(&v8, a1 + 5);
  v5 = *(a1 + 12);
  *a2 = v4;
  *(a2 + 8) = a1;
  sub_2703256DC((a2 + 16), &v7);
  sub_270325728((a2 + 20), &v8);
  *(a2 + 24) = v5;
  *(a2 + 28) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return sub_2703143D8(&v7);
}

uint64_t sub_270364A88(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(a1 + 16);
  return a1;
}

void sub_270364B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270364B94(va);

  _Unwind_Resume(a1);
}

uint64_t sub_270364B94(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(a1 + 16);
  return a1;
}

void sub_270364C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270364B94(va);
  _Unwind_Resume(a1);
}

void sub_270364D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270364B94(va);

  _Unwind_Resume(a1);
}

void sub_270364DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270364B94(va);
  _Unwind_Resume(a1);
}

void sub_270365020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27033B284(va);
  sub_270364A88(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27036534C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 > 2)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      sub_270312A4C(v5);
    }
  }

  else
  {
    *(a1 + 32) = v2 - 1;
    if (v2)
    {
      v3 = a1;
      do
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(v3 + 8);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(v3);
        v3 += 16;
        v4 = *(a1 + 32);
        *(a1 + 32) = v4 - 1;
      }

      while (v4);
    }
  }

  return a1;
}

void *sub_2703653D8(void *a1)
{
  v2 = a1[4];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = a1[3];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8((a1 + 2));
  v4 = a1[1];
  if (v4)
  {
    sub_270314574(v4);
  }

  return a1;
}

uint64_t sub_27036544C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_270314574(v3);
  }

  return a1;
}

void sub_2703654A8(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  v3 = *v2;
  pxrInternal__aapl__pxrReserved__::UsdStage::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
}

uint64_t sub_270365548(uint64_t a1, uint64_t a2)
{
  v3 = **(a1 + 8);
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = (*(a2 + 8) & 3) == 3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
  }

  *(a2 + 8) = &off_288041A60 + 3;
  *a2 = v3;
  return 1;
}

uint64_t sub_2703655AC(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = *(a2 + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = a2;
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12SdfSpecifierE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    goto LABEL_7;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(v3, &stru_288041A08);
  if (result)
  {
    v2 = *(v3 + 1);
LABEL_7:
    if ((v2 & 4) != 0)
    {
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
    }

    return *v3 == **(a1 + 8);
  }

  return result;
}

_DWORD *sub_270365770@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_288041A60 + 3;
  *a2 = *result;
  return result;
}

void *sub_27036578C(unsigned int *a1, void *a2)
{
  v3 = *a1;
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName();
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

  v6 = sub_2703180A8(a2, v4, v5);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_270365804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::Usd_PrimData *sub_270365820(pxrInternal__aapl__pxrReserved__::Usd_PrimData **a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  *a1 = pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetParent(*a1);
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v8, a2);
    sub_270325804(a2, v8);
    sub_27032585C(a2 + 4, v8 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    result = sub_2703143D8(v8);
    v5 = *a1;
    if (*a1)
    {
      if ((*(v5 + 57) & 0x10) != 0)
      {
        result = pxrInternal__aapl__pxrReserved__::SdfPath::IsRootPrimPath((v5 + 16));
        if (result)
        {
          result = pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetPrimDataAtPathOrInPrototype(*a1, a2);
          *a1 = result;
          if (!result)
          {
            v8[0] = "usd/primData.h";
            v8[1] = "Usd_MoveToParent";
            v8[2] = 508;
            v8[3] = "void pxrInternal__aapl__pxrReserved__::Usd_MoveToParent(PrimDataPtr &, SdfPath &) [PrimDataPtr = const pxrInternal__aapl__pxrReserved__::Usd_PrimData *]";
            v9 = 0;
            Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
            pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("No prim at <%s>", v7, Text);
            result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper();
            if (!result)
            {
              return result;
            }

            result = *a1;
          }

          if (*(result + 2) == *a2)
          {
            v8[0] = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
            sub_270325804(a2, v8);
            sub_27032585C(a2 + 4, v8 + 1);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            return sub_2703143D8(v8);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_270365998@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 8);
  v21 = 0;
  v22 = v6;
  sub_2703256DC(&v21, (a1 + 16));
  sub_270325728(&v21 + 1, (a1 + 20));
  if (!sub_270365B90(&v22, &v21, 0, a2))
  {
    v22 = 0;
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    sub_270325804(&v21, &v20);
    sub_27032585C(&v21 + 4, &v20 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v20);
  }

  sub_270366108(&v15, &v22, &v21, a2);
  v20 = 0;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  sub_270366108(&v10, &v20, &v9, a2);
  *a3 = v15;
  sub_2703256DC((a3 + 8), &v16);
  sub_270325728((a3 + 12), &v17);
  *(a3 + 16) = v18;
  v7 = v10;
  *(a3 + 32) = v19;
  *(a3 + 40) = v7;
  sub_2703256DC((a3 + 48), &v11);
  sub_270325728((a3 + 52), &v12);
  *(a3 + 56) = v13;
  *(a3 + 72) = v14;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v11);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return sub_2703143D8(&v21);
}

void sub_270365B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_27031CBCC(&a9);
  sub_2703643D4(&a15);
  sub_27031CBCC(v15 - 64);
  _Unwind_Resume(a1);
}

BOOL sub_270365B90(pxrInternal__aapl__pxrReserved__::Usd_PrimData **a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::Usd_PrimData *a3, uint64_t *a4)
{
  v8 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  if (*(*a1 + 57))
  {
    v9 = *(pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetPrototype(*a1) + 32);
    if (v9)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v9 = *(*a1 + 4);
  if (!v9)
  {
    return 0;
  }

  if (!v8)
  {
    v10 = 0;
    goto LABEL_10;
  }

LABEL_6:
  v11 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  v12 = *a1 + 16;
  if (v11)
  {
    v13 = a2;
  }

  else
  {
    v13 = (*a1 + 16);
  }

  NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v9 + 16));
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v16, v13, NameToken);
  sub_270325804(a2, &v16);
  sub_27032585C(a2 + 4, &v16 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v16);
  v10 = 1;
LABEL_10:
  *a1 = v9;
  return sub_270365FB8(a4, a1, v10) || !sub_270365CB8(a1, a2, a3, a4);
}

BOOL sub_270365CB8(pxrInternal__aapl__pxrReserved__::Usd_PrimData **a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::Usd_PrimData *a3, uint64_t *a4)
{
  v8 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  v9 = *(*a1 + 5);
  if ((v9 & 7) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFF8;
  }

  v28 = v10;
  if (v10)
  {
    v11 = v10 == a3;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = v8;
    do
    {
      v13 = sub_270365FB8(a4, &v28, v12);
      v10 = v28;
      if (v13)
      {
        break;
      }

      *a1 = v28;
      v14 = *(v10 + 40);
      v10 = (v14 & 7) != 0 ? 0 : v14 & 0xFFFFFFFFFFFFFFF8;
      v28 = v10;
    }

    while (v10 && v10 != a3);
  }

  if (!v10)
  {
    v16 = *(*a1 + 5);
    if ((v16 & 7) != 0)
    {
      v10 = v16 & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v10 = 0;
    }
  }

  *a1 = v10;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    if (*a1 == a3)
    {
      v25[0] = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      sub_270325804(a2, v25);
      sub_27032585C(a2 + 4, v25 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
LABEL_32:
      v19 = v25;
LABEL_34:
      sub_2703143D8(v19);
      goto LABEL_35;
    }

    if (*a1 == v28)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v27, a2);
      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((*a1 + 16));
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(v25, &v27, NameToken);
      sub_270325804(a2, v25);
      sub_27032585C(a2 + 4, v25 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(v25);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      v19 = &v27;
      goto LABEL_34;
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v25, a2);
    sub_270325804(a2, v25);
    sub_27032585C(a2 + 4, v25 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(v25);
    v17 = *a1;
    if (!*a1 || (*(v17 + 57) & 0x10) == 0 || !pxrInternal__aapl__pxrReserved__::SdfPath::IsRootPrimPath((v17 + 16)))
    {
      goto LABEL_35;
    }

    PrimDataAtPathOrInPrototype = pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetPrimDataAtPathOrInPrototype(*a1, a2);
    *a1 = PrimDataAtPathOrInPrototype;
    if (PrimDataAtPathOrInPrototype)
    {
LABEL_29:
      if (*(PrimDataAtPathOrInPrototype + 2) != *a2)
      {
        goto LABEL_35;
      }

      v25[0] = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      sub_270325804(a2, v25);
      sub_27032585C(a2 + 4, v25 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      goto LABEL_32;
    }

    v25[0] = "usd/primData.h";
    v25[1] = "Usd_MoveToNextSiblingOrParent";
    v25[2] = 557;
    v25[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_MoveToNextSiblingOrParent(PrimDataPtr &, SdfPath &, PrimDataPtr, const Usd_PrimFlagsPredicate &) [PrimDataPtr = const pxrInternal__aapl__pxrReserved__::Usd_PrimData *]";
    v26 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("No prim at <%s>", v24, Text);
    if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper())
    {
      PrimDataAtPathOrInPrototype = *a1;
      goto LABEL_29;
    }
  }

LABEL_35:
  if (v28)
  {
    v21 = 1;
  }

  else
  {
    v21 = *a1 == 0;
  }

  return !v21;
}

void sub_270365F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27031CBCC(va);
  _Unwind_Resume(a1);
}

BOOL sub_270365FB8(uint64_t *a1, uint64_t a2, int a3)
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  v4 = *(*a2 + 56) & 0xFFFFFFFFFFFFDFFFLL | v3;
  v5 = *a1;
  v6 = a1[1];
  v9 = *a1 & v4;
  v8 = v6 & v5;
  return *(a1 + 16) != sub_27036603C(&v9, 0, &v9, 0xFu, &v8);
}

uint64_t sub_27036603C(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5)
{
  v5 = a4 - a2 + 8 * (a3 - a1);
  if (v5 >= 1)
  {
    if (a2)
    {
      if (v5 >= (64 - a2))
      {
        v6 = 64 - a2;
      }

      else
      {
        v6 = a4 - a2 + 8 * (a3 - a1);
      }

      if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v6)) & (-1 << a2) & (*a1 ^ *a5)) != 0)
      {
        return 0;
      }

      v5 -= v6;
      ++a5;
      ++a1;
    }

    if (v5 >= 64)
    {
      while (*a5 == *a1)
      {
        v7 = v5 - 64;
        ++a1;
        ++a5;
        v8 = v5 <= 127;
        v5 -= 64;
        if (v8)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

    v7 = v5;
LABEL_14:
    if (v7 >= 1 && (*a1 ^ *a5) << -v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_270366108(uint64_t a1, void *a2, _DWORD *a3, __int128 *a4)
{
  *a1 = *a2;
  sub_2703256DC((a1 + 8), a3);
  sub_270325728((a1 + 12), a3 + 1);
  v7 = *a4;
  *(a1 + 32) = *(a4 + 2);
  *(a1 + 16) = v7;
  if (*a1 && !sub_2703661A0((a1 + 16), a1))
  {
    sub_2703661EC(a1);
  }

  return a1;
}

BOOL sub_2703661A0(uint64_t *a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();

  return sub_270365FB8(a1, a2, v4);
}

uint64_t sub_2703661EC(uint64_t a1)
{
  result = sub_270365CB8(a1, (a1 + 8), 0, (a1 + 16));
  if (result)
  {
    *a1 = 0;
    v3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    sub_270325804(a1 + 8, &v3);
    sub_27032585C(a1 + 12, &v3 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    return sub_2703143D8(&v3);
  }

  return result;
}

uint64_t sub_270366284(uint64_t a1, uint64_t a2)
{
  result = sub_27036603C(a1, 0, a1, 0xFu, a2);
  if (result)
  {
    result = sub_27036603C((a1 + 8), 0, a1 + 8, 0xFu, (a2 + 8));
    if (result)
    {
      return *(a1 + 16) == *(a2 + 16);
    }
  }

  return result;
}

uint64_t sub_2703662FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_270347BF8(a2, &v6, (a1 + 8));
  result = v6;
  if (v6)
  {
    return sub_270314574(v6);
  }

  return result;
}

void sub_270366358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_270314574(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_270366370(uint64_t a1)
{
  *a1 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_2703663D8(uint64_t a1, uint64_t a2, void *a3)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = *(v6 + 40) & 7;
  v8 = *(v6 + 40) & 0xFFFFFFFFFFFFFFF8;
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    goto LABEL_21;
  }

  if (!v7 || v8 == 0)
  {
LABEL_20:
    v8 = 0;
    goto LABEL_21;
  }

  while (1)
  {
    v11 = *(v8 + 40);
    v8 = v11 & 0xFFFFFFFFFFFFFFF8;
    if ((v11 & 7) == 0 && v8 != 0)
    {
      break;
    }

    if (v8)
    {
      v13 = (v11 & 7) == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  sub_2703664A4(a1, v6, v8, (a2 + 16), a3);
  return a1;
}

uint64_t sub_2703664A4(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, void *a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  sub_27032787C(a1 + 16, a4);
  sub_2703278D4(a1 + 20, a4 + 1);
  v8 = *a5;
  v9 = a5[1];
  if (*a1)
  {
    v10 = a5[2];
    if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v8 & 0x2000) != 0 || (v9 & 0x2000) == 0))
    {
      v8 |= 0x2000uLL;
      v9 &= ~0x2000uLL;
    }
  }

  else
  {
    LOBYTE(v10) = *(a5 + 16);
  }

  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 52) = 0;
  *(a1 + 48) = 0;
  v12 = 0u;
  v13 = 0u;
  sub_2703649F0(a1, &v12);
  if (v12 != *(a1 + 8) && !sub_2703661A0((a1 + 24), &v12))
  {
    BYTE12(v13) = 1;
    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(&v12);
    sub_2703665D0(a1, &v12);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return sub_2703143D8(&v13);
}

uint64_t sub_2703665D0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 29) == 1)
  {
    sub_27036DA04(v5);
  }

  *a1 = *a2;
  sub_27032787C(a1 + 16, (a2 + 16));
  result = sub_2703278D4(a1 + 20, (a2 + 20));
  *(a1 + 48) = *(a2 + 24);
  return result;
}

uint64_t sub_2703666F8(uint64_t a1)
{
  v40 = (a1 + 304);
  sub_270348044(&v40);
  v2 = *(a1 + 296);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 288);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 280);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 272);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 264);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 256);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 248);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 240);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 232);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 224);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 216);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(a1 + 208);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(a1 + 200);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(a1 + 192);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(a1 + 184);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(a1 + 176);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(a1 + 168);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(a1 + 160);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(a1 + 152);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(a1 + 144);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(a1 + 136);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(a1 + 128);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(a1 + 120);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(a1 + 112);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(a1 + 104);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(a1 + 96);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(a1 + 88);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(a1 + 80);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(a1 + 72);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(a1 + 64);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(a1 + 56);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(a1 + 48);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(a1 + 40);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(a1 + 32);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(a1 + 24);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(a1 + 16);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(a1 + 8);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t sub_270366AC4(uint64_t a1)
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

void sub_270366B44(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_270366B98(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_270366B98(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = v4 - 12;
    do
    {
      v6 = *(v5 + 4);
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(v5 - 4);
      result = *(v5 - 12);
      if (result)
      {
        result = sub_270314574(result);
      }

      v7 = v5 - 20;
      v5 -= 32;
    }

    while (v7 != a2);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_270366C20(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  v3 = *v2;
  return pxrInternal__aapl__pxrReserved__::UsdStage::_GetStrongestResolvedMetadata();
}

uint64_t sub_270366CCC(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  *(a1 + 24) = 0;
  if (sub_270325BE0(a2))
  {
    v4 = *(v2 + 1);
    if ((v4 & 4) != 0)
    {
      v2 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    sub_270325CAC(*(a1 + 8), v2);
    return 1;
  }

  else
  {
    result = sub_270366D54(v2);
    if (result)
    {
      result = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t sub_270366D54(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__13SdfValueBlockE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_288041B60);
}

uint64_t sub_270366DD8(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    sub_270366EF4(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_270366F34(a1, v11);
    }

    sub_27030E894();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 5)
  {
    sub_27036712C(&v16, a2, a3, v8);
    return sub_270366B98(a1, v14);
  }

  else
  {
    sub_27036712C(&v15, a2, a2 + v12, v8);
    result = sub_270366F70(a1, a2 + v12, a3, a1[1]);
    a1[1] = result;
  }

  return result;
}

void sub_270366EF4(uint64_t *a1)
{
  if (*a1)
  {
    sub_270366B98(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_270366F34(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_2703671DC(a1, a2);
  }

  sub_27030E894();
}

uint64_t sub_270366F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 16;
    do
    {
      v7 = v6 - 16;
      *v4 = *(v6 - 16);
      v8 = *(v6 - 8);
      *(v4 + 8) = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 48), 1uLL, memory_order_relaxed);
      }

      sub_2703256DC((v4 + 16), v6);
      sub_270325728((v4 + 20), (v6 + 4));
      v9 = *(v6 + 8);
      *(v4 + 24) = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *(v4 + 24) &= 0xFFFFFFFFFFFFFFF8;
      }

      v4 = v14 + 32;
      v14 += 32;
      v6 += 32;
    }

    while (v7 + 32 != a3);
  }

  LOBYTE(v12) = 1;
  sub_270367064(v11);
  return v4;
}

uint64_t sub_270367064(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2703670B0(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_2703670B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3 - 12;
    do
    {
      v7 = *(v6 + 4);
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(v6 - 4);
      v8 = *(v6 - 12);
      if (v8)
      {
        sub_270314574(v8);
      }

      v9 = v6 - 20;
      v6 -= 32;
    }

    while (v9 != a5);
  }
}

uint64_t sub_27036712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    v7 = *(v5 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 48), 1uLL, memory_order_relaxed);
    }

    v8 = *(a4 + 8);
    if (v8)
    {
      sub_270314574(v8);
    }

    *(a4 + 8) = v7;
    sub_27032787C(a4 + 16, (v5 + 16));
    sub_2703278D4(a4 + 20, (v5 + 20));
    sub_270325CAC((a4 + 24), (v5 + 24));
    a4 += 32;
    v5 += 32;
  }

  while (v5 != v6);
  return v6;
}

void sub_2703671DC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_27030E994();
}

void sub_270367224(uint64_t a1, unint64_t *a2, unsigned int *a3)
{
  v3 = a3;
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  sub_27030E054(&v69, *a3);
  v6 = MEMORY[0x27439E610](&v68, "constant");
  v7 = (a1 + 72);
  v8 = v68 ^ *(a1 + 72);
  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v8 > 7)
  {
    v10 = MEMORY[0x27439E610](v6, "vertex");
    v11 = v68 ^ *v7;
    if ((v68 & 7) != 0)
    {
      atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v11 > 7)
    {
      v14 = MEMORY[0x27439E610](v10, "uniform");
      v15 = v68 ^ *v7;
      if ((v68 & 7) != 0)
      {
        atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v15 <= 7)
      {
        v16 = *a2;
        if (*(a1 + 16))
        {
          if (v16)
          {
            v17 = 0;
            LODWORD(i) = 0;
            do
            {
              v19 = 0;
              for (i = i; ; ++i)
              {
                sub_270310DE0(a2);
                if (v19 >= *(a2[4] + 4 * v17))
                {
                  break;
                }

                sub_270310DE0(a1 + 16);
                v20 = *(*(a1 + 48) + 4 * v17);
                sub_270310DE0(&v69);
                *(v71 + 4 * i) = v20;
                ++v19;
              }

              ++v17;
            }

            while (*a2 > v17);
          }
        }

        else if (v16)
        {
          v32 = 0;
          LODWORD(j) = 0;
          do
          {
            v34 = 0;
            for (j = j; ; ++j)
            {
              sub_270310DE0(a2);
              if (v34 >= *(a2[4] + 4 * v32))
              {
                break;
              }

              sub_270310DE0(&v69);
              *(v71 + 4 * j) = v32;
              ++v34;
            }

            ++v32;
          }

          while (*a2 > v32);
        }

        goto LABEL_33;
      }

      MEMORY[0x27439E610](v14, "faceVarying");
      v21 = v68 ^ *v7;
      if ((v68 & 7) != 0)
      {
        atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v21 > 7)
      {
        v30 = *(a1 + 56) & 0xFFFFFFFFFFFFFFF8;
        if (v30)
        {
          v31 = (v30 + 16);
          if (*(v30 + 39) < 0)
          {
            v31 = *v31;
          }
        }

        else
        {
          v31 = "";
        }

        v38 = *v7 & 0xFFFFFFFFFFFFFFF8;
        if (v38)
        {
          v39 = (v38 + 16);
          if (*(v38 + 39) < 0)
          {
            v39 = *v39;
          }
        }

        else
        {
          v39 = "";
        }

        NSLog(&cfstr_WarningMeshAtt.isa, v31, v39);
        goto LABEL_65;
      }

      if (!*(a1 + 16))
      {
        if (*v3)
        {
          v37 = 0;
          do
          {
            sub_270310DE0(&v69);
            *(v71 + 4 * v37) = v37;
            ++v37;
          }

          while (*v3 > v37);
        }

        goto LABEL_33;
      }

      v3 = a1 + 16;
    }

    else if (*(a1 + 16))
    {
      if (*v3)
      {
        v12 = 0;
        do
        {
          sub_270310DE0(v3);
          v13 = *(*(v3 + 32) + 4 * v12);
          sub_270310DE0(a1 + 16);
          LODWORD(v13) = *(*(a1 + 48) + 4 * v13);
          sub_270310DE0(&v69);
          *(v71 + 4 * v12++) = v13;
        }

        while (*v3 > v12);
      }

      goto LABEL_33;
    }

    sub_27030E0C8(&v69, v3);
  }

  else if (*v3)
  {
    v9 = 0;
    do
    {
      sub_270310DE0(&v69);
      *(v71 + 4 * v9++) = 0;
    }

    while (*v3 > v9);
  }

LABEL_33:
  v22 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    sub_270318AF4(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_39;
  }

  if (!atomic_load(v22))
  {
    sub_270318AF4(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
LABEL_39:
    v65 = v69;
    v66 = v70;
    v67 = v71;
    if (v71)
    {
      v25 = (v71 - 16);
      if (*(&v66 + 1))
      {
        v25 = *(&v66 + 1);
      }

      atomic_fetch_add_explicit(v25, 1uLL, memory_order_relaxed);
    }

    sub_270367AA0(&v65, *(a1 + 80), a1);
    sub_270310E24(&v65);
LABEL_58:
    MEMORY[0x27439E610](&v68, "vertex");
    if (&v68 == v7)
    {
      if ((v68 & 7) != 0)
      {
        atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v7 = v68;
    }

    sub_2703118DC((a1 + 16));
    goto LABEL_65;
  }

  if (!atomic_load(v22))
  {
    sub_270318AF4(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_53;
  }

  if (!atomic_load(v22))
  {
    sub_270318AF4(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_53;
  }

  if (!atomic_load(v22))
  {
    sub_270318AF4(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
LABEL_53:
    v62 = v69;
    v63 = v70;
    v64 = v71;
    if (v71)
    {
      v29 = (v71 - 16);
      if (*(&v63 + 1))
      {
        v29 = *(&v63 + 1);
      }

      atomic_fetch_add_explicit(v29, 1uLL, memory_order_relaxed);
    }

    sub_270367C0C(&v62, *(a1 + 80), a1);
    sub_270310E24(&v62);
    goto LABEL_58;
  }

  if (!atomic_load(v22))
  {
    sub_270318AF4(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    v59 = v69;
    v60 = v70;
    v61 = v71;
    if (v71)
    {
      v36 = (v71 - 16);
      if (*(&v60 + 1))
      {
        v36 = *(&v60 + 1);
      }

      atomic_fetch_add_explicit(v36, 1uLL, memory_order_relaxed);
    }

    sub_270367D94(&v59, *(a1 + 80), a1);
    sub_270310E24(&v59);
    goto LABEL_58;
  }

  if (!atomic_load(v22))
  {
    sub_270318AF4(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    v56 = v69;
    v57 = v70;
    v58 = v71;
    if (v71)
    {
      v41 = (v71 - 16);
      if (*(&v57 + 1))
      {
        v41 = *(&v57 + 1);
      }

      atomic_fetch_add_explicit(v41, 1uLL, memory_order_relaxed);
    }

    sub_270367EF8(&v56, *(a1 + 80), a1);
    sub_270310E24(&v56);
    goto LABEL_58;
  }

  if (!atomic_load(v22))
  {
    sub_270318AF4(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    v53 = v69;
    v54 = v70;
    v55 = v71;
    if (v71)
    {
      v43 = (v71 - 16);
      if (*(&v54 + 1))
      {
        v43 = *(&v54 + 1);
      }

      atomic_fetch_add_explicit(v43, 1uLL, memory_order_relaxed);
    }

    sub_270368068(&v53, *(a1 + 80), a1);
    sub_270310E24(&v53);
    goto LABEL_58;
  }

  if (!atomic_load(v22))
  {
    sub_270318AF4(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    v50 = v69;
    v51 = v70;
    v52 = v71;
    if (v71)
    {
      v45 = (v71 - 16);
      if (*(&v51 + 1))
      {
        v45 = *(&v51 + 1);
      }

      atomic_fetch_add_explicit(v45, 1uLL, memory_order_relaxed);
    }

    sub_2703681D4(&v50, *(a1 + 80), a1);
    sub_270310E24(&v50);
    goto LABEL_58;
  }

  v46 = *(a1 + 56) & 0xFFFFFFFFFFFFFFF8;
  if (v46)
  {
    v47 = (v46 + 16);
    if (*(v46 + 39) < 0)
    {
      v47 = *v47;
    }
  }

  else
  {
    v47 = "";
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v68, (a1 + 64));
  v48 = v68 & 0xFFFFFFFFFFFFFFF8;
  if ((v68 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v49 = (v48 + 16);
    if (*(v48 + 39) < 0)
    {
      v49 = *v49;
    }
  }

  else
  {
    v49 = "";
  }

  NSLog(&cfstr_WarningMeshAtt_0.isa, v47, v49);
  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

LABEL_65:
  sub_270310E24(&v69);
}

void sub_2703679A8(_Unwind_Exception *a1)
{
  v3 = *(v1 - 136);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_270310E24(v1 - 128);
  _Unwind_Resume(a1);
}

void sub_270367AA0(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_270321A90(v20, (*a1 * a2));
  v6 = sub_270316D54(a3);
  v7 = *(v6 + 16);
  v17 = *v6;
  v18 = v7;
  v8 = *(v6 + 32);
  v19 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v18 + 1))
    {
      v9 = *(&v18 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  v10 = *a1;
  if (*a1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (a2)
      {
        v13 = 0;
        v14 = 8 * v12;
        do
        {
          sub_270310DE0(a1);
          v15 = *(*(a1 + 32) + 4 * v11);
          sub_27032889C(&v17);
          v16 = v19;
          sub_27032889C(v20);
          *(v21 + v14) = *(v16 + 8 * v15 * a2 + 8 * v13++);
          v14 += 8;
          ++v12;
        }

        while (a2 != v13);
        v10 = *a1;
      }

      ++v11;
    }

    while (v10 > v11);
  }

  sub_27036B0BC(a3, v20);
  sub_270310E24(&v17);
  sub_270310E24(v20);
}

void sub_270367BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_270310E24(&a9);
  sub_270310E24(&a15);
  _Unwind_Resume(a1);
}

void sub_270367C0C(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_270317438(v25, (*a1 * a2));
  v6 = sub_27030E788(a3);
  v21 = a3;
  v7 = *(v6 + 16);
  v22 = *v6;
  v23 = v7;
  v8 = *(v6 + 32);
  v24 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v23 + 1))
    {
      v9 = *(&v23 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  v10 = *a1;
  if (*a1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (a2)
      {
        v13 = 0;
        v14 = 12 * v12;
        v15 = a2;
        do
        {
          sub_270310DE0(a1);
          v16 = *(*(a1 + 32) + 4 * v11);
          sub_27031951C(&v22);
          v17 = v24;
          sub_27031951C(v25);
          v18 = (v17 + 12 * v16 * a2 + v13);
          v19 = v26 + v14;
          v20 = *v18;
          *(v19 + 8) = *(v18 + 2);
          *v19 = v20;
          v14 += 12;
          ++v12;
          v13 += 12;
          --v15;
        }

        while (v15);
        v10 = *a1;
      }

      ++v11;
    }

    while (v10 > v11);
  }

  sub_270316334(v21, v25);
  sub_270310E24(&v22);
  sub_270310E24(v25);
}

void sub_270367D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_270310E24(va);
  sub_270310E24(va1);
  _Unwind_Resume(a1);
}

void sub_270367D94(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_27030E054(v19, (*a1 * a2));
  v6 = sub_2703279E4(a3);
  v7 = *(v6 + 16);
  v16 = *v6;
  v17 = v7;
  v8 = *(v6 + 32);
  v18 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v17 + 1))
    {
      v9 = *(&v17 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  v10 = *a1;
  if (*a1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (a2)
      {
        v13 = 0;
        v14 = 4 * v12;
        do
        {
          sub_270310DE0(a1);
          v15 = *(*(a1 + 32) + 4 * v11);
          sub_270310DE0(&v16);
          LODWORD(v15) = *(v18 + 4 * v15 * a2 + 4 * v13);
          sub_270310DE0(v19);
          *(v20 + v14) = v15;
          ++v13;
          v14 += 4;
          ++v12;
        }

        while (a2 != v13);
        v10 = *a1;
      }

      ++v11;
    }

    while (v10 > v11);
  }

  sub_27036B284(a3, v19);
  sub_270310E24(&v16);
  sub_270310E24(v19);
}

void sub_270367EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_270310E24(&a9);
  sub_270310E24(&a15);
  _Unwind_Resume(a1);
}

void sub_270367EF8(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  sub_2703173C4(v21, (*a1 * a2));
  v6 = sub_270328A64(a3);
  v7 = *(v6 + 16);
  v18 = *v6;
  v19 = v7;
  v8 = *(v6 + 32);
  v20 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v19 + 1))
    {
      v9 = *(&v19 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  v10 = *a1;
  if (*a1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (a2)
      {
        v13 = 0;
        v14 = 16 * v12;
        v15 = a2;
        do
        {
          sub_270310DE0(a1);
          v16 = *(*(a1 + 32) + 4 * v11);
          sub_270319444(&v18);
          v17 = v20;
          sub_270319444(v21);
          *(v22 + v14) = *(v17 + 16 * v16 * a2 + v13);
          v14 += 16;
          ++v12;
          v13 += 16;
          --v15;
        }

        while (v15);
        v10 = *a1;
      }

      ++v11;
    }

    while (v10 > v11);
  }

  sub_27036B410(a3, v21);
  sub_270310E24(&v18);
  sub_270310E24(v21);
}

void sub_270368038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_270310E24(&a9);
  sub_270310E24(&a15);
  _Unwind_Resume(a1);
}

void sub_270368068(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_2703218F4(v20, (*a1 * a2));
  v6 = sub_270328494(a3);
  v7 = *(v6 + 16);
  v17 = *v6;
  v18 = v7;
  v8 = *(v6 + 32);
  v19 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v18 + 1))
    {
      v9 = *(&v18 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  v10 = *a1;
  if (*a1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (a2)
      {
        v13 = 0;
        v14 = 4 * v12;
        do
        {
          sub_270310DE0(a1);
          v15 = *(*(a1 + 32) + 4 * v11);
          sub_27032F7DC(&v17);
          v16 = *(v19 + 4 * v15 * a2 + 4 * v13);
          sub_27032F7DC(v20);
          *(v21 + v14) = v16;
          ++v13;
          v14 += 4;
          ++v12;
        }

        while (a2 != v13);
        v10 = *a1;
      }

      ++v11;
    }

    while (v10 > v11);
  }

  sub_27036B5D8(a3, v20);
  sub_270310E24(&v17);
  sub_270310E24(v20);
}

void sub_2703681A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_270310E24(&a9);
  sub_270310E24(&a15);
  _Unwind_Resume(a1);
}

void sub_2703681D4(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_2703208AC(v19, (*a1 * a2));
  v6 = sub_270327BF8(a3);
  v7 = *(v6 + 16);
  v16 = *v6;
  v17 = v7;
  v8 = *(v6 + 32);
  v18 = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(&v17 + 1))
    {
      v9 = *(&v17 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  v10 = *a1;
  if (*a1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (a2)
      {
        v13 = 0;
        v14 = 4 * v12;
        do
        {
          sub_270310DE0(a1);
          v15 = *(*(a1 + 32) + 4 * v11);
          sub_27032C7E0(&v16);
          LODWORD(v15) = *(v18 + 4 * v15 * a2 + 4 * v13);
          sub_27032C7E0(v19);
          *(v20 + v14) = v15;
          ++v13;
          v14 += 4;
          ++v12;
        }

        while (a2 != v13);
        v10 = *a1;
      }

      ++v11;
    }

    while (v10 > v11);
  }

  sub_27036B7A0(a3, v19);
  sub_270310E24(&v16);
  sub_270310E24(v19);
}

void sub_270368308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_270310E24(&a9);
  sub_270310E24(&a15);
  _Unwind_Resume(a1);
}

void sub_270368338(uint64_t a1, unsigned int a2)
{
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v3 = sub_27030E054(&v45, a2);
  sub_270310DE0(v3);
  v4 = v47;
  sub_270310DE0(&v45);
  v5 = &v47[4 * v45] - v4;
  if (v5 >= 1)
  {
    bzero(v4, v5);
  }

  v6 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    sub_270318AF4(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    goto LABEL_9;
  }

  if (!atomic_load(v6))
  {
    sub_270318AF4(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
LABEL_9:
    v42 = v45;
    v43 = v46;
    v44 = v47;
    if (v47)
    {
      v9 = (v47 - 16);
      if (*(&v43 + 1))
      {
        v9 = *(&v43 + 1);
      }

      atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
    }

    sub_270367AA0(&v42, *(a1 + 80), a1);
    sub_270310E24(&v42);
  }

  else
  {
    if (!atomic_load(v6))
    {
      sub_270318AF4(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_23;
    }

    if (!atomic_load(v6))
    {
      sub_270318AF4(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_23;
    }

    if (!atomic_load(v6))
    {
      sub_270318AF4(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
LABEL_23:
      v39 = v45;
      v40 = v46;
      v41 = v47;
      if (v47)
      {
        v13 = (v47 - 16);
        if (*(&v40 + 1))
        {
          v13 = *(&v40 + 1);
        }

        atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
      }

      sub_270367C0C(&v39, *(a1 + 80), a1);
      sub_270310E24(&v39);
    }

    else
    {
      if (!atomic_load(v6))
      {
        sub_270318AF4(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        v36 = v45;
        v37 = v46;
        v38 = v47;
        if (v47)
        {
          v15 = (v47 - 16);
          if (*(&v37 + 1))
          {
            v15 = *(&v37 + 1);
          }

          atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
        }

        sub_270367D94(&v36, *(a1 + 80), a1);
        sub_270310E24(&v36);
      }

      else
      {
        if (!atomic_load(v6))
        {
          sub_270318AF4(MEMORY[0x277D86578]);
        }

        if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
        {
          v33 = v45;
          v34 = v46;
          v35 = v47;
          if (v47)
          {
            v17 = (v47 - 16);
            if (*(&v34 + 1))
            {
              v17 = *(&v34 + 1);
            }

            atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
          }

          sub_270367EF8(&v33, *(a1 + 80), a1);
          sub_270310E24(&v33);
        }

        else
        {
          if (!atomic_load(v6))
          {
            sub_270318AF4(MEMORY[0x277D86578]);
          }

          if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
          {
            v30 = v45;
            v31 = v46;
            v32 = v47;
            if (v47)
            {
              v19 = (v47 - 16);
              if (*(&v31 + 1))
              {
                v19 = *(&v31 + 1);
              }

              atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
            }

            sub_270368068(&v30, *(a1 + 80), a1);
            sub_270310E24(&v30);
          }

          else
          {
            if (!atomic_load(v6))
            {
              sub_270318AF4(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
              v27 = v45;
              v28 = v46;
              v29 = v47;
              if (v47)
              {
                v21 = (v47 - 16);
                if (*(&v28 + 1))
                {
                  v21 = *(&v28 + 1);
                }

                atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
              }

              sub_2703681D4(&v27, *(a1 + 80), a1);
              sub_270310E24(&v27);
            }

            else
            {
              v22 = *(a1 + 56) & 0xFFFFFFFFFFFFFFF8;
              if (v22)
              {
                v23 = (v22 + 16);
                if (*(v22 + 39) < 0)
                {
                  v23 = *v23;
                }
              }

              else
              {
                v23 = "";
              }

              pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v26, (a1 + 64));
              v24 = v26 & 0xFFFFFFFFFFFFFFF8;
              if ((v26 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v25 = (v24 + 16);
                if (*(v24 + 39) < 0)
                {
                  v25 = *v25;
                }
              }

              else
              {
                v25 = "";
              }

              NSLog(&cfstr_WarningMeshAtt_0.isa, v23, v25);
              if ((v26 & 7) != 0)
              {
                atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }
          }
        }
      }
    }
  }

  sub_270310E24(&v45);
}

void sub_270368784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_270310E24(v12 - 80);
  _Unwind_Resume(a1);
}

void sub_270368854(unint64_t *a1, uint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v10 = 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3);
  v59 = 0;
  *&v56 = &v59;
  sub_27031192C(a1, v10, &v56);
  sub_270368DC4(a5, a4);
  v11 = *a2;
  if (a2[1] != *a2)
  {
    v12 = 0;
    v54 = -1;
    v55 = a5;
    do
    {
      v13 = v11 + 88 * v12;
      MEMORY[0x27439E610](&v56, "vertex");
      v14 = *(v13 + 72);
      v15 = v56;
      if ((v56 & 7) != 0)
      {
        atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v15 ^ v14;
      v17 = *a2;
      if (v16 > 7)
      {
        v23 = v17 + 88 * v12;
        MEMORY[0x27439E610](&v56, "uniform");
        v24 = *(v23 + 72);
        v25 = v56;
        if ((v56 & 7) != 0)
        {
          atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v26 = v25 ^ v24;
        v27 = *a2;
        if (v26 > 7)
        {
          v34 = v27 + 88 * v12;
          MEMORY[0x27439E610](&v56, "constant");
          v35 = *(v34 + 72);
          v36 = v56;
          if ((v56 & 7) != 0)
          {
            atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v36 ^ v35) >= 8)
          {
            v37 = *a2 + 88 * v12;
            MEMORY[0x27439E610](&v56, "faceVarying");
            v38 = *(v37 + 72);
            v39 = v56;
            if ((v56 & 7) != 0)
            {
              atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v40 = v39 ^ v38;
            v41 = *a2;
            if (v40 > 7)
            {
              v49 = v41 + 88 * v12;
              v50 = *(v49 + 56) & 0xFFFFFFFFFFFFFFF8;
              if (v50)
              {
                v51 = (v50 + 16);
                if (*(v50 + 39) < 0)
                {
                  v51 = *v51;
                }
              }

              else
              {
                v51 = "";
              }

              v52 = *(v49 + 72) & 0xFFFFFFFFFFFFFFF8;
              if (v52)
              {
                v53 = (v52 + 16);
                if (*(v52 + 39) < 0)
                {
                  v53 = *v53;
                }
              }

              else
              {
                v53 = "";
              }

              NSLog(&cfstr_WarningMeshAtt.isa, v51, v53);
            }

            else
            {
              if (!*(v41 + 88 * v12 + 16))
              {
                sub_27036DA50();
              }

              v42 = -858993459 * ((a5[1] - *a5) >> 3);
              sub_270310DE0(a1);
              *(a1[4] + 4 * v12) = v42;
              sub_270368DC4(a5, *a2 + 88 * v12 + 16);
            }
          }
        }

        else if (*(v27 + 88 * v12 + 16))
        {
          v58 = 0;
          v56 = 0u;
          v57 = 0u;
          sub_27030E054(&v56, *a4);
          if (*a3)
          {
            v28 = 0;
            LODWORD(i) = 0;
            do
            {
              v30 = 0;
              for (i = i; ; ++i)
              {
                sub_270310DE0(a3);
                if (v30 >= *(a3[4] + 4 * v28))
                {
                  break;
                }

                v31 = *a2 + 88 * v12;
                sub_270310DE0(v31 + 16);
                LODWORD(v31) = *(*(v31 + 48) + 4 * v28);
                sub_270310DE0(&v56);
                *(v58 + 4 * i) = v31;
                ++v30;
              }

              ++v28;
            }

            while (*a3 > v28);
          }

          a5 = v55;
          v33 = *v55;
          v32 = v55[1];
          sub_270310DE0(a1);
          *(a1[4] + 4 * v12) = -858993459 * ((v32 - v33) >> 3);
          sub_270368DC4(v55, &v56);
          sub_270310E24(&v56);
        }

        else
        {
          v43 = v54;
          if (v54 == -1)
          {
            v58 = 0;
            v56 = 0u;
            v57 = 0u;
            sub_27030E054(&v56, *a4);
            if (*a3)
            {
              v44 = 0;
              LODWORD(j) = 0;
              do
              {
                v46 = 0;
                for (j = j; ; ++j)
                {
                  sub_270310DE0(a3);
                  if (v46 >= *(a3[4] + 4 * v44))
                  {
                    break;
                  }

                  sub_270310DE0(&v56);
                  *(v58 + 4 * j) = v44;
                  ++v46;
                }

                ++v44;
              }

              while (*a3 > v44);
            }

            sub_270368DC4(v55, &v56);
            v48 = *v55;
            v47 = v55[1];
            sub_270310E24(&v56);
            v43 = -1 - 858993459 * ((v47 - v48) >> 3);
          }

          sub_270310DE0(a1);
          v54 = v43;
          *(a1[4] + 4 * v12) = v43;
          a5 = v55;
        }
      }

      else if (*(v17 + 88 * v12 + 16))
      {
        v58 = 0;
        v56 = 0u;
        v57 = 0u;
        sub_27030E054(&v56, *a4);
        if (*a4)
        {
          v18 = 0;
          do
          {
            sub_270310DE0(a4);
            v19 = *(a4[4] + 4 * v18);
            v20 = *a2 + 88 * v12;
            sub_270310DE0(v20 + 16);
            LODWORD(v20) = *(*(v20 + 48) + 4 * v19);
            sub_270310DE0(&v56);
            *(v58 + 4 * v18) = v20;
            v22 = *v55;
            v21 = v55[1];
            sub_270310DE0(a1);
            *(a1[4] + 4 * v12) = -858993459 * ((v21 - v22) >> 3);
            ++v18;
          }

          while (*a4 > v18);
        }

        a5 = v55;
        sub_270368DC4(v55, &v56);
        sub_270310E24(&v56);
      }

      else
      {
        sub_270310DE0(a1);
        *(a1[4] + 4 * v12) = 0;
      }

      ++v12;
      v11 = *a2;
    }

    while (0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3) > v12);
  }
}

void sub_270368D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_270310E24(va);
  _Unwind_Resume(a1);
}

uint64_t sub_270368DC4(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_27036B968(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    v5 = *(a2 + 32);
    *(v3 + 32) = v5;
    if (v5)
    {
      v6 = (v5 - 16);
      if (*(v3 + 24))
      {
        v6 = *(v3 + 24);
      }

      atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
    }

    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

void sub_270368E30(unint64_t *a1, unint64_t *a2, int *a3, uint64_t **a4, unint64_t a5, int *a6)
{
  v6 = a5;
  v10 = 0xCCCCCCCCCCCCCCCDLL * (a4[1] - *a4);
  v11 = **a4;
  v67 = v10;
  LODWORD(v73[0]) = 0;
  *&v75[0] = v73;
  sub_27031192C(a2, v10 * a5, v75);
  sub_270310DE0(a1);
  v12 = a1[4];
  sub_270310DE0(a1);
  v13 = a1[4] + 4 * *a1 - v12;
  if (v13 >= 1)
  {
    memset(v12, 255, v13);
  }

  sub_270310DE0(a2);
  v14 = a2[4];
  sub_270310DE0(a2);
  v15 = a2[4] + 4 * *a2 - v14;
  if (v15 >= 1)
  {
    memset(v14, 255, v15);
  }

  v76 = 0;
  memset(v75, 0, sizeof(v75));
  sub_27030E054(v75, v10);
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  sub_27030E054(v73, v10);
  v16 = v10 + 1;
  v72 = 0;
  memset(v71, 0, sizeof(v71));
  sub_27030E054(v71, (v10 + 1));
  v17 = v11 << 32;
  *a6 = 0;
  if (v11 << 32)
  {
    v66 = a1;
    v18 = 0;
    v65 = v10 << 32;
    v19 = v11;
    v20 = v10 - 1;
    if (v67 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v67;
    }

    if (v11 <= 1)
    {
      v19 = 1;
    }

    v63 = v19;
    v59 = v6;
    v60 = v16;
    v58 = 4 * v16;
    do
    {
      if (v65)
      {
        v22 = 0;
        v23 = 4;
        do
        {
          v24 = *((*a4)[v23] + 4 * v18);
          sub_270310DE0(v75);
          v76[v22++] = v24;
          v23 += 5;
        }

        while (v21 != v22);
      }

      sub_270310DE0(v75);
      v25 = *v76;
      sub_270310DE0(v66);
      v26 = v25;
      *(*(v66 + 32) + 4 * v18) = -1;
      if (v65)
      {
        v27 = 0;
        v28 = 4 * v67 * v25;
        do
        {
          sub_270310DE0(a2);
          v29 = *(a2[4] + v28);
          sub_270310DE0(v73);
          *(v74 + 4 * v27++) = v29;
          v28 += 4;
        }

        while (v21 != v27);
      }

      sub_270310DE0(v73);
      v64 = *(v74 + 4 * v20);
      sub_270310DE0(a2);
      v30 = v67 * v25;
      if (*(a2[4] + 4 * v30) == -1)
      {
        if (v65)
        {
          for (i = 0; i != v21; ++i)
          {
            if (v20 == i)
            {
              sub_270310DE0(a2);
              v42 = -1;
              v43 = v20;
            }

            else
            {
              sub_270310DE0(v75);
              v42 = v76[i + 1];
              sub_270310DE0(a2);
              v43 = i;
            }

            *(a2[4] + 4 * v30 + 4 * v43) = v42;
          }
        }

        sub_270310DE0(v66);
        *(*(v66 + 32) + 4 * v18) = v26;
        ++*a6;
      }

      else
      {
        v31 = 0;
        do
        {
          if (v20 == v31)
          {
            sub_270310DE0(v66);
            *(*(v66 + 32) + 4 * v18) = v26;
            goto LABEL_52;
          }

          sub_270310DE0(v75);
          v32 = v76[v31 + 1];
          sub_270310DE0(v73);
          v33 = *(v74 + 4 * v31++);
        }

        while (v32 == v33);
        v34 = v64;
        if (v64 < 0)
        {
          v62 = -1;
        }

        else
        {
          while (1)
          {
            v62 = v34;
            if (v60)
            {
              v35 = 0;
              v36 = v58 * v62;
              v37 = v60;
              do
              {
                sub_270310DE0(a3);
                v38 = *(*(a3 + 4) + v36);
                sub_270310DE0(v71);
                *(v72 + v35) = v38;
                v36 += 4;
                v35 += 4;
                --v37;
              }

              while (v37);
            }

            sub_270310DE0(v71);
            if (v67 < 2)
            {
              break;
            }

            v34 = *(v72 + 4 * v67);
            v39 = 1;
            while (1)
            {
              sub_270310DE0(v75);
              v40 = v76[v39];
              sub_270310DE0(v71);
              if (v40 != *(v72 + 4 * v39))
              {
                break;
              }

              if (v67 == ++v39)
              {
                goto LABEL_43;
              }
            }

            if (v34 < 0)
            {
              goto LABEL_44;
            }
          }

          v62 = v64;
LABEL_43:
          sub_270310DE0(v66);
          *(*(v66 + 32) + 4 * v18) = v62 + v59;
        }

LABEL_44:
        sub_270310DE0(v66);
        if (*(*(v66 + 32) + 4 * v18) == -1)
        {
          v44 = *a3;
          if (v64 < 0)
          {
            sub_270310DE0(a2);
            v46 = a2[4] + 4 * v30 + 4 * v67;
            v45 = v60;
          }

          else
          {
            sub_270310DE0(a3);
            v45 = v60;
            v46 = *(a3 + 4) + 4 * (v45 + v45 * v62);
          }

          v47 = v44 / v45;
          *(v46 - 4) = v44 / v45;
          sub_270310DE0(v66);
          *(*(v66 + 32) + 4 * v18) = v47 + v59;
          if (v65)
          {
            v48 = 0;
            v49 = v21;
            do
            {
              sub_270310DE0(v75);
              sub_270311E40(a3, &v76[v48++]);
              --v49;
            }

            while (v49);
          }

          LODWORD(v69[0]) = -1;
          sub_27036BCA4(a3, v69);
        }
      }

LABEL_52:
      ++v18;
    }

    while (v18 != v63);
    v17 = *a6;
    v6 = v59;
    a1 = v66;
  }

  if (v17 != v6)
  {
    v70 = 0;
    memset(v69, 0, sizeof(v69));
    sub_27030E054(v69, v6);
    if (v6)
    {
      v50 = 0;
      v51 = 0;
      v52 = 0;
      do
      {
        sub_270310DE0(a2);
        if (*(a2[4] + v50) != -1)
        {
          sub_270310DE0(v69);
          *(v70 + 4 * v51) = v52++;
        }

        ++v51;
        v50 += 4 * v67;
      }

      while (v6 != v51);
    }

    if (*a1)
    {
      v53 = 0;
      do
      {
        sub_270310DE0(a1);
        v54 = *(a1[4] + 4 * v53);
        if (v54 >= v6)
        {
          sub_270310DE0(a1);
          v56 = *(a1[4] + 4 * v53);
          v57 = *a6;
          sub_270310DE0(a1);
          *(a1[4] + 4 * v53) = v56 - v6 + v57;
        }

        else
        {
          sub_270310DE0(v69);
          v55 = *(v70 + 4 * v54);
          sub_270310DE0(a1);
          *(a1[4] + 4 * v53) = v55;
        }

        ++v53;
      }

      while (*a1 > v53);
    }

    sub_270310E24(v69);
  }

  sub_270310E24(v71);
  sub_270310E24(v73);
  sub_270310E24(v75);
}

void sub_2703694B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_270310E24(&a27);
  sub_270310E24(v27 - 176);
  sub_270310E24(v27 - 128);
  _Unwind_Resume(a1);
}

void sub_270369550(uint64_t a1, int a2, int a3, unsigned int a4, unint64_t a5, __int128 *a6, __int128 *a7)
{
  MEMORY[0x27439E610](&v102, "constant");
  v14 = v102 ^ *(a1 + 72);
  if ((v102 & 7) != 0)
  {
    atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v14 > 7)
  {
    v15 = MEMORY[0x277D86578];
    if (!atomic_load(MEMORY[0x277D86578]))
    {
      sub_270318AF4(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      goto LABEL_11;
    }

    if (!atomic_load(v15))
    {
      sub_270318AF4(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
LABEL_11:
      v18 = a6[1];
      v99 = *a6;
      v100 = v18;
      v19 = *(a6 + 4);
      v101 = v19;
      if (v19)
      {
        v20 = (v19 - 16);
        if (*(&v100 + 1))
        {
          v20 = *(&v100 + 1);
        }

        atomic_fetch_add_explicit(v20, 1uLL, memory_order_relaxed);
      }

      v21 = a7[1];
      v96 = *a7;
      v97 = v21;
      v22 = *(a7 + 4);
      v98 = v22;
      if (v22)
      {
        v23 = (v22 - 16);
        if (*(&v97 + 1))
        {
          v23 = *(&v97 + 1);
        }

        atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
      }

      sub_270369CB0(&v99, &v96, a3, a4, a2, a5, a1, *(a1 + 80));
      sub_270310E24(&v96);
      sub_270310E24(&v99);
    }

    else
    {
      if (!atomic_load(v15))
      {
        sub_270318AF4(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        goto LABEL_32;
      }

      if (!atomic_load(v15))
      {
        sub_270318AF4(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        goto LABEL_32;
      }

      if (!atomic_load(v15))
      {
        sub_270318AF4(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
        goto LABEL_32;
      }

      if (!atomic_load(v15))
      {
        sub_270318AF4(MEMORY[0x277D86578]);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
      {
LABEL_32:
        v28 = a6[1];
        v93 = *a6;
        v94 = v28;
        v29 = *(a6 + 4);
        v95 = v29;
        if (v29)
        {
          v30 = (v29 - 16);
          if (*(&v94 + 1))
          {
            v30 = *(&v94 + 1);
          }

          atomic_fetch_add_explicit(v30, 1uLL, memory_order_relaxed);
        }

        v31 = a7[1];
        v90 = *a7;
        v91 = v31;
        v32 = *(a7 + 4);
        v92 = v32;
        if (v32)
        {
          v33 = (v32 - 16);
          if (*(&v91 + 1))
          {
            v33 = *(&v91 + 1);
          }

          atomic_fetch_add_explicit(v33, 1uLL, memory_order_relaxed);
        }

        sub_270369F38(&v93, &v90, a3, a4, a2, a5, a1, *(a1 + 80));
        sub_270310E24(&v90);
        sub_270310E24(&v93);
      }

      else
      {
        if (!atomic_load(v15))
        {
          sub_270318AF4(MEMORY[0x277D86578]);
        }

        if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
        {
          v35 = a6[1];
          v87 = *a6;
          v88 = v35;
          v36 = *(a6 + 4);
          v89 = v36;
          if (v36)
          {
            v37 = (v36 - 16);
            if (*(&v88 + 1))
            {
              v37 = *(&v88 + 1);
            }

            atomic_fetch_add_explicit(v37, 1uLL, memory_order_relaxed);
          }

          v38 = a7[1];
          v84 = *a7;
          v85 = v38;
          v39 = *(a7 + 4);
          v86 = v39;
          if (v39)
          {
            v40 = (v39 - 16);
            if (*(&v85 + 1))
            {
              v40 = *(&v85 + 1);
            }

            atomic_fetch_add_explicit(v40, 1uLL, memory_order_relaxed);
          }

          sub_27036A1EC(&v87, &v84, a3, a4, a2, a5, a1, *(a1 + 80));
          sub_270310E24(&v84);
          sub_270310E24(&v87);
        }

        else
        {
          if (!atomic_load(v15))
          {
            sub_270318AF4(MEMORY[0x277D86578]);
          }

          if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
          {
            v42 = a6[1];
            v81 = *a6;
            v82 = v42;
            v43 = *(a6 + 4);
            v83 = v43;
            if (v43)
            {
              v44 = (v43 - 16);
              if (*(&v82 + 1))
              {
                v44 = *(&v82 + 1);
              }

              atomic_fetch_add_explicit(v44, 1uLL, memory_order_relaxed);
            }

            v45 = a7[1];
            v78 = *a7;
            v79 = v45;
            v46 = *(a7 + 4);
            v80 = v46;
            if (v46)
            {
              v47 = (v46 - 16);
              if (*(&v79 + 1))
              {
                v47 = *(&v79 + 1);
              }

              atomic_fetch_add_explicit(v47, 1uLL, memory_order_relaxed);
            }

            sub_27036A474(&v81, &v78, a3, a4, a2, a5, a1, *(a1 + 80));
            sub_270310E24(&v78);
            sub_270310E24(&v81);
          }

          else
          {
            if (!atomic_load(v15))
            {
              sub_270318AF4(MEMORY[0x277D86578]);
            }

            if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
            {
              v49 = a6[1];
              v75 = *a6;
              v76 = v49;
              v50 = *(a6 + 4);
              v77 = v50;
              if (v50)
              {
                v51 = (v50 - 16);
                if (*(&v76 + 1))
                {
                  v51 = *(&v76 + 1);
                }

                atomic_fetch_add_explicit(v51, 1uLL, memory_order_relaxed);
              }

              v52 = a7[1];
              v72 = *a7;
              v73 = v52;
              v53 = *(a7 + 4);
              v74 = v53;
              if (v53)
              {
                v54 = (v53 - 16);
                if (*(&v73 + 1))
                {
                  v54 = *(&v73 + 1);
                }

                atomic_fetch_add_explicit(v54, 1uLL, memory_order_relaxed);
              }

              sub_27036A6FC(&v75, &v72, a3, a4, a2, a5, a1, *(a1 + 80));
              sub_270310E24(&v72);
              sub_270310E24(&v75);
            }

            else
            {
              if (!atomic_load(v15))
              {
                sub_270318AF4(MEMORY[0x277D86578]);
              }

              if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
              {
                v56 = a6[1];
                v69 = *a6;
                v70 = v56;
                v57 = *(a6 + 4);
                v71 = v57;
                if (v57)
                {
                  v58 = (v57 - 16);
                  if (*(&v70 + 1))
                  {
                    v58 = *(&v70 + 1);
                  }

                  atomic_fetch_add_explicit(v58, 1uLL, memory_order_relaxed);
                }

                v59 = a7[1];
                v66 = *a7;
                v67 = v59;
                v60 = *(a7 + 4);
                v68 = v60;
                if (v60)
                {
                  v61 = (v60 - 16);
                  if (*(&v67 + 1))
                  {
                    v61 = *(&v67 + 1);
                  }

                  atomic_fetch_add_explicit(v61, 1uLL, memory_order_relaxed);
                }

                sub_27036A988(&v69, &v66, a3, a4, a2, a5, a1, *(a1 + 80));
                sub_270310E24(&v66);
                sub_270310E24(&v69);
              }

              else
              {
                v62 = *(a1 + 56) & 0xFFFFFFFFFFFFFFF8;
                if (v62)
                {
                  v63 = (v62 + 16);
                  if (*(v62 + 39) < 0)
                  {
                    v63 = *v63;
                  }
                }

                else
                {
                  v63 = "";
                }

                pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v102, (a1 + 64));
                v64 = v102 & 0xFFFFFFFFFFFFFFF8;
                if ((v102 & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v65 = (v64 + 16);
                  if (*(v64 + 39) < 0)
                  {
                    v65 = *v65;
                  }
                }

                else
                {
                  v65 = "";
                }

                NSLog(&cfstr_WarningMeshAtt_1.isa, v63, v65);
                if ((v102 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_270368338(a1, a4);
  }
}

void sub_270369BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  v60 = *(v59 - 88);
  if ((v60 & 7) != 0)
  {
    atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void sub_270369CB0(unint64_t *a1, void *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, int a8)
{
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  sub_270321A90(v37, (a4 * a8));
  v32 = a7;
  v13 = sub_270316D54(a7);
  v14 = *(v13 + 16);
  v34 = *v13;
  v35 = v14;
  v15 = *(v13 + 32);
  v36 = v15;
  if (v15)
  {
    v16 = (v15 - 16);
    if (*(&v35 + 1))
    {
      v16 = *(&v35 + 1);
    }

    atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
  }

  if (*a1 >= a6)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      sub_270310DE0(a1);
      if (*(a1[4] + 4 * v17 * a6) != -1)
      {
        if (a5)
        {
          sub_270310DE0(a1);
          v19 = *(a1[4] + 4 * v17 * a6 + 4 * a5 - 4);
        }

        else
        {
          v19 = v17;
        }

        if (a8 >= 1)
        {
          v20 = 8 * v18 * a8;
          v21 = 8 * v19 * a8;
          v22 = a8;
          do
          {
            sub_27032889C(&v34);
            v23 = v36;
            sub_27032889C(v37);
            *(v38 + v20) = *(v23 + v21);
            v20 += 8;
            v21 += 8;
            --v22;
          }

          while (v22);
        }

        ++v18;
      }

      ++v17;
    }

    while (*a1 / a6 > v17);
  }

  v24 = a6 + 1;
  if (a6 + 1 <= *a2)
  {
    v25 = 0;
    v26 = 8 * a8 * a3;
    do
    {
      sub_270310DE0(a2);
      if (a8 >= 1)
      {
        v27 = a8;
        v28 = 8 * *(a2[4] + 4 * v25 * v24 + 4 * a5) * a8;
        v29 = v26;
        do
        {
          sub_27032889C(&v34);
          v30 = v36;
          sub_27032889C(v37);
          *(v38 + v29) = *(v30 + v28);
          v29 += 8;
          v28 += 8;
          --v27;
        }

        while (v27);
      }

      ++v25;
      v26 += 8 * a8;
    }

    while (*a2 / v24 > v25);
  }

  sub_27036B0BC(v32, v37);
  sub_270310E24(&v34);
  sub_270310E24(v37);
}

void sub_270369EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_270310E24(va);
  sub_270310E24(va1);
  _Unwind_Resume(a1);
}

void sub_270369F38(unint64_t *a1, void *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, int a8)
{
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  sub_270317438(v42, (a4 * a8));
  v37 = a7;
  v13 = sub_27030E788(a7);
  v14 = *(v13 + 16);
  v39 = *v13;
  v40 = v14;
  v15 = *(v13 + 32);
  v41 = v15;
  if (v15)
  {
    v16 = (v15 - 16);
    if (*(&v40 + 1))
    {
      v16 = *(&v40 + 1);
    }

    atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
  }

  if (*a1 >= a6)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      sub_270310DE0(a1);
      if (*(a1[4] + 4 * v17 * a6) != -1)
      {
        if (a5)
        {
          sub_270310DE0(a1);
          v19 = *(a1[4] + 4 * v17 * a6 + 4 * a5 - 4);
        }

        else
        {
          v19 = v17;
        }

        if (a8 >= 1)
        {
          v20 = 12 * v18 * a8;
          v21 = 12 * v19 * a8;
          v22 = a8;
          do
          {
            sub_27031951C(&v39);
            v23 = v41;
            sub_27031951C(v42);
            v24 = v43 + v20;
            v25 = *(v23 + v21);
            *(v24 + 8) = *(v23 + v21 + 8);
            *v24 = v25;
            v20 += 12;
            v21 += 12;
            --v22;
          }

          while (v22);
        }

        ++v18;
      }

      ++v17;
    }

    while (*a1 / a6 > v17);
  }

  v26 = a6 + 1;
  if (a6 + 1 <= *a2)
  {
    v27 = 0;
    v28 = 12 * a8;
    v29 = v28 * a3;
    do
    {
      sub_270310DE0(a2);
      if (a8 >= 1)
      {
        v30 = a8;
        v31 = 12 * *(a2[4] + 4 * v27 * v26 + 4 * a5) * a8;
        v32 = v29;
        do
        {
          sub_27031951C(&v39);
          v33 = v41;
          sub_27031951C(v42);
          v34 = v43 + v32;
          v35 = *(v33 + v31);
          *(v34 + 8) = *(v33 + v31 + 8);
          *v34 = v35;
          v32 += 12;
          v31 += 12;
          --v30;
        }

        while (v30);
      }

      ++v27;
      v29 += v28;
    }

    while (*a2 / v26 > v27);
  }

  sub_270316334(v37, v42);
  sub_270310E24(&v39);
  sub_270310E24(v42);
}

void sub_27036A1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_270310E24(va);
  sub_270310E24(va1);
  _Unwind_Resume(a1);
}

void sub_27036A1EC(unint64_t *a1, void *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, int a8)
{
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  sub_27030E054(v37, (a4 * a8));
  v32 = a7;
  v13 = sub_2703279E4(a7);
  v14 = *(v13 + 16);
  v34 = *v13;
  v35 = v14;
  v15 = *(v13 + 32);
  v36 = v15;
  if (v15)
  {
    v16 = (v15 - 16);
    if (*(&v35 + 1))
    {
      v16 = *(&v35 + 1);
    }

    atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
  }

  if (*a1 >= a6)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      sub_270310DE0(a1);
      if (*(a1[4] + 4 * v17 * a6) != -1)
      {
        if (a5)
        {
          sub_270310DE0(a1);
          v19 = *(a1[4] + 4 * v17 * a6 + 4 * a5 - 4);
        }

        else
        {
          v19 = v17;
        }

        if (a8 >= 1)
        {
          v20 = 4 * v18 * a8;
          v21 = 4 * v19 * a8;
          v22 = a8;
          do
          {
            sub_270310DE0(&v34);
            v23 = *(v36 + v21);
            sub_270310DE0(v37);
            *(v38 + v20) = v23;
            v20 += 4;
            v21 += 4;
            --v22;
          }

          while (v22);
        }

        ++v18;
      }

      ++v17;
    }

    while (*a1 / a6 > v17);
  }

  v24 = a6 + 1;
  if (a6 + 1 <= *a2)
  {
    v25 = 0;
    v26 = 4 * a8 * a3;
    do
    {
      sub_270310DE0(a2);
      if (a8 >= 1)
      {
        v27 = a8;
        v28 = 4 * *(a2[4] + 4 * v25 * v24 + 4 * a5) * a8;
        v29 = v26;
        do
        {
          sub_270310DE0(&v34);
          v30 = *(v36 + v28);
          sub_270310DE0(v37);
          *(v38 + v29) = v30;
          v29 += 4;
          v28 += 4;
          --v27;
        }

        while (v27);
      }

      ++v25;
      v26 += 4 * a8;
    }

    while (*a2 / v24 > v25);
  }

  sub_27036B284(v32, v37);
  sub_270310E24(&v34);
  sub_270310E24(v37);
}

void sub_27036A434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_270310E24(va);
  sub_270310E24(va1);
  _Unwind_Resume(a1);
}

void sub_27036A474(unint64_t *a1, void *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, int a8)
{
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  sub_2703173C4(v37, (a4 * a8));
  v32 = a7;
  v13 = sub_270328A64(a7);
  v14 = *(v13 + 16);
  v34 = *v13;
  v35 = v14;
  v15 = *(v13 + 32);
  v36 = v15;
  if (v15)
  {
    v16 = (v15 - 16);
    if (*(&v35 + 1))
    {
      v16 = *(&v35 + 1);
    }

    atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
  }

  if (*a1 >= a6)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      sub_270310DE0(a1);
      if (*(a1[4] + 4 * v17 * a6) != -1)
      {
        if (a5)
        {
          sub_270310DE0(a1);
          v19 = *(a1[4] + 4 * v17 * a6 + 4 * a5 - 4);
        }

        else
        {
          v19 = v17;
        }

        if (a8 >= 1)
        {
          v20 = 16 * v18 * a8;
          v21 = 16 * v19 * a8;
          v22 = a8;
          do
          {
            sub_270319444(&v34);
            v23 = v36;
            sub_270319444(v37);
            *(v38 + v20) = *(v23 + v21);
            v20 += 16;
            v21 += 16;
            --v22;
          }

          while (v22);
        }

        ++v18;
      }

      ++v17;
    }

    while (*a1 / a6 > v17);
  }

  v24 = a6 + 1;
  if (a6 + 1 <= *a2)
  {
    v25 = 0;
    v26 = 16 * a8 * a3;
    do
    {
      sub_270310DE0(a2);
      if (a8 >= 1)
      {
        v27 = a8;
        v28 = 16 * *(a2[4] + 4 * v25 * v24 + 4 * a5) * a8;
        v29 = v26;
        do
        {
          sub_270319444(&v34);
          v30 = v36;
          sub_270319444(v37);
          *(v38 + v29) = *(v30 + v28);
          v29 += 16;
          v28 += 16;
          --v27;
        }

        while (v27);
      }

      ++v25;
      v26 += 16 * a8;
    }

    while (*a2 / v24 > v25);
  }

  sub_27036B410(v32, v37);
  sub_270310E24(&v34);
  sub_270310E24(v37);
}

void sub_27036A6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_270310E24(va);
  sub_270310E24(va1);
  _Unwind_Resume(a1);
}

void sub_27036A6FC(unint64_t *a1, void *a2, int a3, int a4, int a5, unint64_t a6, pxrInternal__aapl__pxrReserved__::VtValue *a7, int a8)
{
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  sub_2703218F4(v37, (a4 * a8));
  v32 = a7;
  v14 = sub_270328494(a7);
  v15 = *(v14 + 16);
  v34 = *v14;
  v35 = v15;
  v16 = *(v14 + 32);
  v36 = v16;
  if (v16)
  {
    v17 = (v16 - 16);
    if (*(&v35 + 1))
    {
      v17 = *(&v35 + 1);
    }

    atomic_fetch_add_explicit(v17, 1uLL, memory_order_relaxed);
  }

  if (*a1 >= a6)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      sub_270310DE0(a1);
      if (*(a1[4] + 4 * v18 * a6) != -1)
      {
        if (a5)
        {
          sub_270310DE0(a1);
          v20 = *(a1[4] + 4 * v18 * a6 + 4 * a5 - 4);
        }

        else
        {
          v20 = v18;
        }

        if (a8 >= 1)
        {
          v21 = 4 * v19 * a8;
          v22 = 4 * v20 * a8;
          v23 = a8;
          do
          {
            sub_27032F7DC(&v34);
            v24 = *(v36 + v22);
            sub_27032F7DC(v37);
            *(v38 + v21) = v24;
            v21 += 4;
            v22 += 4;
            --v23;
          }

          while (v23);
        }

        ++v19;
      }

      ++v18;
    }

    while (*a1 / a6 > v18);
  }

  v25 = a6 + 1;
  if (a6 + 1 <= *a2)
  {
    v26 = 0;
    v27 = 4 * a8 * a3;
    do
    {
      sub_270310DE0(a2);
      if (a8 >= 1)
      {
        v28 = 4 * *(a2[4] + 4 * v26 * v25 + 4 * a5) * a8;
        v29 = a8;
        v30 = v27;
        do
        {
          sub_27032F7DC(&v34);
          v31 = *(v36 + v28);
          sub_27032F7DC(v37);
          *(v38 + v30) = v31;
          v30 += 4;
          v28 += 4;
          --v29;
        }

        while (v29);
      }

      ++v26;
      v27 += 4 * a8;
    }

    while (*a2 / v25 > v26);
  }

  sub_27036B5D8(v32, v37);
  sub_270310E24(&v34);
  sub_270310E24(v37);
}