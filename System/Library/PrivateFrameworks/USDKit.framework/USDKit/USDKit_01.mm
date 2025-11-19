void sub_27031BF9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27031C044(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

BOOL sub_27031C060(pxrInternal__aapl__pxrReserved__::VtValue *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (sub_270326E8C(a1))
  {
    *a2 = *sub_270326EC4(a1);
    v4 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827A8], v6))
    {
      v10 = 0;
      v11 = 0;
      v7 = sub_270326F58(a1);
      sub_270313C14(&v10, v7);
      v4 = v11 != 0;
      if (v11)
      {
        *a2 = *sub_270326EC4(&v10);
      }

      sub_270311D34(&v10);
    }

    else
    {
      v4 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_27031C13C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27031C1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

BOOL sub_27031C204(pxrInternal__aapl__pxrReserved__::VtValue *a1, _OWORD *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (sub_270327058(a1))
  {
    *a2 = *sub_270327090(a1);
    v4 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040138, v6))
    {
      v10 = 0;
      v11 = 0;
      v7 = sub_270327124(a1);
      sub_270313C14(&v10, v7);
      v4 = v11 != 0;
      if (v11)
      {
        *a2 = *sub_270327090(&v10);
      }

      sub_270311D34(&v10);
    }

    else
    {
      v4 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_27031C2E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27031C3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

BOOL sub_27031C3C0(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (sub_2703271B0(a1))
  {
    v4 = sub_2703271E8(a1);
    v5 = *(v4 + 16);
    *a2 = *v4;
    *(a2 + 16) = v5;
    v6 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040148, v8))
    {
      v14 = 0;
      v15 = 0;
      v9 = sub_27032727C(a1);
      sub_270313C14(&v14, v9);
      v6 = v15 != 0;
      if (v15)
      {
        v10 = sub_2703271E8(&v14);
        v11 = *v10;
        *(a2 + 16) = *(v10 + 16);
        *a2 = v11;
      }

      sub_270311D34(&v14);
    }

    else
    {
      v6 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_27031C4AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27031C570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

BOOL sub_27031C58C(pxrInternal__aapl__pxrReserved__::VtValue *a1, _OWORD *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (sub_270327308(a1))
  {
    v4 = sub_270327340(a1);
    v5 = v4[1];
    *a2 = *v4;
    a2[1] = v5;
    v6 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040158, v8))
    {
      v14 = 0;
      v15 = 0;
      v9 = sub_2703273D4(a1);
      sub_270313C14(&v14, v9);
      v6 = v15 != 0;
      if (v15)
      {
        v10 = sub_270327340(&v14);
        v11 = v10[1];
        *a2 = *v10;
        a2[1] = v11;
      }

      sub_270311D34(&v14);
    }

    else
    {
      v6 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_27031C668(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27031C82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

BOOL sub_27031C848(pxrInternal__aapl__pxrReserved__::VtValue *a1, _OWORD *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (sub_270327460(a1))
  {
    *a2 = *sub_270327498(a1);
    v4 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_28803FE30, v6))
    {
      v10 = 0;
      v11 = 0;
      v7 = sub_27032752C(a1);
      sub_270313C14(&v10, v7);
      v4 = v11 != 0;
      if (v11)
      {
        *a2 = *sub_270327498(&v10);
      }

      sub_270311D34(&v10);
    }

    else
    {
      v4 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_27031C924(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27031CA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_27031CAA4(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (sub_2703275B8(a1))
  {
    v4 = sub_27032763C(a1);
    sub_27032787C(a2, v4);
    sub_2703278D4(a2 + 4, v4 + 1);
    v5 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040168, v7))
    {
      v12 = 0;
      v13 = 0;
      v8 = sub_2703276D0(a1);
      sub_270313C14(&v12, v8);
      v5 = v13 != 0;
      if (v13)
      {
        v9 = sub_27032763C(&v12);
        sub_27032787C(a2, v9);
        sub_2703278D4(a2 + 4, v9 + 1);
      }

      sub_270311D34(&v12);
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_27031CBB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27031CBCC(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return sub_2703143D8(a1);
}

BOOL sub_27031CD68(pxrInternal__aapl__pxrReserved__::VtValue *a1, std::string *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (sub_270325FDC(a1))
  {
    v4 = sub_27031AFE8(a1);
    std::string::operator=(a2, v4);
    std::string::operator=(a2 + 1, v4 + 1);
    v5 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_2880400F8, v7))
    {
      v12 = 0;
      v13 = 0;
      v8 = sub_270327920(a1);
      sub_270313C14(&v12, v8);
      v5 = v13 != 0;
      if (v13)
      {
        v9 = sub_27031AFE8(&v12);
        std::string::operator=(a2, v9);
        std::string::operator=(a2 + 1, v9 + 1);
      }

      sub_270311D34(&v12);
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_27031CE90(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_27031D034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_27031CE90(&a18);
  _Unwind_Resume(a1);
}

void sub_27031D188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

BOOL sub_27031D1DC(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (sub_2703279AC(a1))
  {
    v4 = sub_2703279E4(a1);
    sub_27030E0C8(a2, v4);
    v5 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040178, v7))
    {
      v12 = 0;
      v13 = 0;
      v8 = sub_270327A78(a1);
      sub_270313C14(&v12, v8);
      v5 = v13 != 0;
      if (v13)
      {
        v9 = sub_2703279E4(&v12);
        sub_27030E0C8(a2, v9);
      }

      sub_270311D34(&v12);
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_27031D3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

BOOL sub_27031D430(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (sub_270327BC0(a1))
  {
    v4 = sub_270327BF8(a1);
    sub_270327C8C(a2, v4);
    v5 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040190, v7))
    {
      v12 = 0;
      v13 = 0;
      v8 = sub_270327D40(a1);
      sub_270313C14(&v12, v8);
      v5 = v13 != 0;
      if (v13)
      {
        v9 = sub_270327BF8(&v12);
        sub_270327C8C(a2, v9);
      }

      sub_270311D34(&v12);
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_27031D610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

BOOL sub_27031D650(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (sub_270327E88(a1))
  {
    v4 = sub_270327EC0(a1);
    sub_270327F54(a2, v4);
    v5 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_2880401A8, v7))
    {
      v12 = 0;
      v13 = 0;
      v8 = sub_270328008(a1);
      sub_270313C14(&v12, v8);
      v5 = v13 != 0;
      if (v13)
      {
        v9 = sub_270327EC0(&v12);
        sub_270327F54(a2, v9);
      }

      sub_270311D34(&v12);
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_27031D854(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 59)
    {
      goto LABEL_6;
    }

    if ((v2 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, &stru_2880401C0))
    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return *this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

uint64_t sub_27031DA6C(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 60)
    {
      goto LABEL_6;
    }

    if ((v2 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, &stru_2880401D8))
    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return *this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

uint64_t sub_27031DE50(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7VtArrayINS_12SdfAssetPathEEE" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      goto LABEL_6;
    }

    if ((v2 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2880401F0))
    {
      v2 = *(a1 + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return *a1;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

void sub_27031E020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

BOOL sub_27031E074(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (sub_27032845C(a1))
  {
    v4 = sub_270328494(a1);
    sub_270328528(a2, v4);
    v5 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040208, v7))
    {
      v12 = 0;
      v13 = 0;
      v8 = sub_2703285DC(a1);
      sub_270313C14(&v12, v8);
      v5 = v13 != 0;
      if (v13)
      {
        v9 = sub_270328494(&v12);
        sub_270328528(a2, v9);
      }

      sub_270311D34(&v12);
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_27031E254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

BOOL sub_27031E294(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (sub_270328724(a1))
  {
    v4 = sub_270316D54(a1);
    sub_27032875C(a2, v4);
    v5 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_28803FFF0, v7))
    {
      v12 = 0;
      v13 = 0;
      v8 = sub_270328810(a1);
      sub_270313C14(&v12, v8);
      v5 = v13 != 0;
      if (v13)
      {
        v9 = sub_270316D54(&v12);
        sub_27032875C(a2, v9);
      }

      sub_270311D34(&v12);
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_27031E480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

BOOL sub_27031E4C0(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (sub_270311C98(a1))
  {
    v4 = sub_27030E788(a1);
    sub_270328978(a2, v4);
    v5 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_28803FBC0, v7))
    {
      v12 = 0;
      v13 = 0;
      v8 = sub_27030E654(a1);
      sub_270313C14(&v12, v8);
      v5 = v13 != 0;
      if (v13)
      {
        v9 = sub_27030E788(&v12);
        sub_270328978(a2, v9);
      }

      sub_270311D34(&v12);
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_27031E6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

BOOL sub_27031E6E0(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (sub_270328A2C(a1))
  {
    v4 = sub_270328A64(a1);
    sub_270328AF8(a2, v4);
    v5 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_2880400C0, v7))
    {
      v12 = 0;
      v13 = 0;
      v8 = sub_270328BAC(a1);
      sub_270313C14(&v12, v8);
      v5 = v13 != 0;
      if (v13)
      {
        v9 = sub_270328A64(&v12);
        sub_270328AF8(a2, v9);
      }

      sub_270311D34(&v12);
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_27031E910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

BOOL sub_27031E950(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (sub_270328CF4(a1))
  {
    v4 = sub_270328D2C(a1);
    sub_270328DC0(a2, v4);
    v5 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040220, v7))
    {
      v12 = 0;
      v13 = 0;
      v8 = sub_270328E74(a1);
      sub_270313C14(&v12, v8);
      v5 = v13 != 0;
      if (v13)
      {
        v9 = sub_270328D2C(&v12);
        sub_270328DC0(a2, v9);
      }

      sub_270311D34(&v12);
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_27031EB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

BOOL sub_27031EBA4(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (sub_270329094(a1))
  {
    v4 = sub_2703290CC(a1);
    sub_270329160(a2, v4);
    v5 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040238, v7))
    {
      v12 = 0;
      v13 = 0;
      v8 = sub_270329214(a1);
      sub_270313C14(&v12, v8);
      v5 = v13 != 0;
      if (v13)
      {
        v9 = sub_2703290CC(&v12);
        sub_270329160(a2, v9);
      }

      sub_270311D34(&v12);
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_27031ED84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

BOOL sub_27031EDC4(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (sub_27032935C(a1))
  {
    v4 = sub_270329394(a1);
    sub_270329428(a2, v4);
    v5 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040250, v7))
    {
      v12 = 0;
      v13 = 0;
      v8 = sub_2703294DC(a1);
      sub_270313C14(&v12, v8);
      v5 = v13 != 0;
      if (v13)
      {
        v9 = sub_270329394(&v12);
        sub_270329428(a2, v9);
      }

      sub_270311D34(&v12);
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_27031EFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

BOOL sub_27031EFF8(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (sub_2703296FC(a1))
  {
    v4 = sub_270329734(a1);
    sub_2703297C8(a2, v4);
    v5 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040268, v7))
    {
      v12 = 0;
      v13 = 0;
      v8 = sub_27032987C(a1);
      sub_270313C14(&v12, v8);
      v5 = v13 != 0;
      if (v13)
      {
        v9 = sub_270329734(&v12);
        sub_2703297C8(a2, v9);
      }

      sub_270311D34(&v12);
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_27031F1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

BOOL sub_27031F230(pxrInternal__aapl__pxrReserved__::VtValue *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (sub_270329AA4(a1))
  {
    v4 = sub_270329ADC(a1);
    sub_270329B70(a2, v4);
    v5 = 1;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040280, v7))
    {
      v12 = 0;
      v13 = 0;
      v8 = sub_270329C24(a1);
      sub_270313C14(&v12, v8);
      v5 = v13 != 0;
      if (v13)
      {
        v9 = sub_270329ADC(&v12);
        sub_270329B70(a2, v9);
      }

      sub_270311D34(&v12);
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_27031F464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_27031F8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_270311D34(&a24);
  sub_27031CE90(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27031FA0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27031FA94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27031FB1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27031FBA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27031FDB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_270311D34(v16 - 40);
  sub_27031CE90(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27031FEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_270311D34(v17 - 40);
  sub_27031CE90(&a16);

  _Unwind_Resume(a1);
}

void sub_27031FFAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270320034(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270320100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_2703201C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27032024C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270320310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_2703203E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_2703204B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_270320680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_270311D34(va);
  _Unwind_Resume(a1);
}

void sub_27032075C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270320868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

uint64_t sub_2703208AC(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_2703118DC(a1);
  v6 = &v5;
  sub_27032C3DC(a1, a2, &v6);
  return a1;
}

void sub_2703209E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

uint64_t sub_270320A2C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_2703118DC(a1);
  v6 = &v5;
  sub_27032CAE0(a1, a2, &v6);
  return a1;
}

void sub_270320F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_270321124(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  sub_27032D084(a1);
  v7 = __p;
  sub_27032D110(a1, a2, &v7);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_270321194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_27032D288(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_2703211BC(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_27032DA14(a1);
  v6 = &v5;
  sub_27032DA9C(a1, a2, &v6);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_270321230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_27032DCBC(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_270321260(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  sub_27032E200(a1);
  v6 = &v5;
  sub_27032E288(a1, a2, &v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v5);
  return a1;
}

void sub_2703212F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27031CBCC(&a9);
  sub_27032E41C(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_270321314(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v5);
  sub_27032E9BC(a1);
  v9 = v5;
  sub_27032EA5C(a1, a2, &v9);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  return a1;
}

void sub_270321534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_270321760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2703218B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

uint64_t sub_2703218F4(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = 0;
  sub_2703118DC(a1);
  v7 = &v6;
  sub_27032F3D8(a1, a2, &v7, v4);
  return a1;
}

void sub_270321A48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

uint64_t sub_270321A90(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_2703118DC(a1);
  v6 = &v5;
  sub_27032FC70(a1, a2, &v6);
  return a1;
}

void sub_270321BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270321D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270321E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

uint64_t sub_270321E6C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_2703118DC(a1);
  v6 = &v5;
  sub_2703301D4(a1, a2, &v6);
  return a1;
}

void sub_270321FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

uint64_t sub_270322008(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5[0] = 0;
  v5[1] = 0;
  sub_2703118DC(a1);
  v6 = v5;
  sub_2703308B4(a1, a2, &v6);
  return a1;
}

void sub_270322168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

uint64_t sub_2703221B0(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  memset(v5, 0, sizeof(v5));
  sub_2703118DC(a1);
  v6 = v5;
  sub_270330E18(a1, a2, &v6);
  return a1;
}

void sub_270322310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

uint64_t sub_270322358(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  memset(v5, 0, sizeof(v5));
  sub_2703118DC(a1);
  v6 = v5;
  sub_270331408(a1, a2, &v6);
  return a1;
}

void sub_2703224F4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

uint64_t sub_27032253C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  memset(v5, 0, sizeof(v5));
  sub_2703118DC(a1);
  v6 = v5;
  sub_2703319B8(a1, a2, &v6);
  return a1;
}

void sub_270322E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_27031CE90(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27032300C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_27031CE90(&a9);

  _Unwind_Resume(a1);
}

void sub_270323C48(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_270323DA4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_270323F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_2703240E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_27030E880(a1);
  }

  _Unwind_Resume(a1);
}

void sub_270324300(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_27030E880(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27032457C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_270324718(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27032488C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270324A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270324B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270324CF4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_27030E880(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_270324E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270324FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270325184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270325388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27030E880(exception_object);
}

void sub_270325494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_270311D34(va);

  _Unwind_Resume(a1);
}

uint64_t sub_2703254C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 == 0) == (v3 == 0);
  }

  if (v2 == v3)
  {
    return (*((v2 & 0xFFFFFFFFFFFFFFF8) + 64))();
  }

  return MEMORY[0x282207D88]();
}

uint64_t sub_27032558C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

_DWORD *sub_2703256DC(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    atomic_fetch_add_explicit((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::GetPtr() + 8), 1u, memory_order_relaxed);
  }

  return a1;
}

_DWORD *sub_270325728(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::GetPtr();
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::VtValue *sub_270325768(pxrInternal__aapl__pxrReserved__::VtValue *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
  if (strcmp((*(Typeid + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(a2 + 1) & 0x7FFFFFFFFFFFFFFFLL)))
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v8, a2, a1, v5);
    sub_270312D2C(a1, v8);
    sub_270311D34(v8);
  }

  v6 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_270325804(uint64_t a1, int *a2)
{
  v4 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
  sub_2703143D8(&v4);
  return a1;
}

uint64_t sub_27032585C(uint64_t a1, int *a2)
{
  v4 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return a1;
}

_DWORD *sub_2703258B8(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
  return a1;
}

_DWORD *sub_2703258F4(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
  return a1;
}

uint64_t sub_270325930(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2703259B8(result, a4);
  }

  return result;
}

void sub_270325998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_270325B58(&a9);
  _Unwind_Resume(a1);
}

void sub_2703259B8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_2703106C4(a1, a2);
  }

  sub_27030E894();
}

_DWORD *sub_2703259F4(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
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
      sub_2703256DC(v4, v6);
      sub_270325728(v4 + 1, v6 + 1);
      v6 += 2;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_270325A8C(v8);
  return v4;
}

uint64_t sub_270325A8C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_270325AC4(a1);
  }

  return a1;
}

uint64_t *sub_270325AC4(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 8;
      result = sub_270325B18(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_270325B18(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return sub_2703143D8(a2);
}

void sub_270325B58(void ***a1)
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
        v4 -= 8;
        sub_270325B18(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_270325BE0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 13)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2880400E8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270325C18(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270325BE0(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

void *sub_270325CAC(void *result, void *a2)
{
  if (a2 != result)
  {
    if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((*result & 7) != 0)
    {
      atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *result = *a2;
  }

  return result;
}

std::type_info *sub_270325D00(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270325BE0(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_2880400E8, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

void *sub_270325DE4(void *result)
{
  if (result)
  {
    if ((*result & 7) != 0)
    {
      atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_270325E18(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x27439F340](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_270325ED4(a1);
  return a1;
}

void sub_270325EAC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_270325ED4(uint64_t a1)
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

uint64_t sub_270325FDC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12SdfAssetPathE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2880400F8);
}

uint64_t sub_27032612C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 47) < 0)
    {
      operator delete(*(result + 24));
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

void **sub_2703261F4(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    sub_270325B58(&v2);
    return MEMORY[0x27439F3D0](v1, 0x20C40960023A9);
  }

  return result;
}

uint64_t sub_270326248(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__11SdfTimeCodeE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_288040118);
}

uint64_t sub_2703262CC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270326248(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *sub_270326360(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270326248(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_288040118, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_270326444(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_270326460(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D82798]);
}

uint64_t sub_270326494(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270326460(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *sub_270326528(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270326460(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, MEMORY[0x277D82798], v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_27032660C(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_270326628(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 5)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827C0]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270326660(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270326628(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *sub_2703266F4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270326628(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, MEMORY[0x277D827C0], v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2703267D8(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_2703267F4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 6)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827C8]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27032682C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_2703267F4(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *sub_2703268C0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_2703267F4(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, MEMORY[0x277D827C8], v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2703269A4(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_2703269C0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 10)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827B0]);
  }

  else
  {
    return 0;
  }
}

std::type_info *sub_2703269F8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_2703269C0(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, MEMORY[0x277D827B0], v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_270326A84(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 69)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_288040128);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270326ABC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270326A84(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *sub_270326B50(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270326A84(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_288040128, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_270326BDC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 67)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2880400D8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270326C14(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270326BDC(a1))
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

std::type_info *sub_270326CA8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270326BDC(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_2880400D8, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_270326D34(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 76)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_28803FEF8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270326D6C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270326D34(a1))
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

std::type_info *sub_270326E00(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270326D34(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_28803FEF8, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_270326E8C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 9)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827A8]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270326EC4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270326E8C(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *sub_270326F58(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270326E8C(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, MEMORY[0x277D827A8], v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_27032703C(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_270327058(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 72)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_288040138);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270327090(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270327058(a1))
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

std::type_info *sub_270327124(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270327058(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_288040138, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2703271B0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 71)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_288040148);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2703271E8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_2703271B0(a1))
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

std::type_info *sub_27032727C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_2703271B0(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_288040148, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_270327308(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 70)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_288040158);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270327340(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270327308(a1))
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

std::type_info *sub_2703273D4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270327308(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_288040158, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_270327460(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 88)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_28803FE30);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270327498(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270327460(a1))
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

std::type_info *sub_27032752C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270327460(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_28803FE30, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2703275B8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7SdfPathE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_288040168);
}

uint64_t sub_27032763C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_2703275B8(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *sub_2703276D0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_2703275B8(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_288040168, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_270327818(uint64_t result)
{
  if (result)
  {
    v1 = result;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(v1);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_27032787C(uint64_t a1, _DWORD *a2)
{
  if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator==() & 1) == 0)
  {
    sub_2703256DC(&v5, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
    sub_2703143D8(&v5);
  }

  return a1;
}

uint64_t sub_2703278D4(uint64_t a1, _DWORD *a2)
{
  sub_270325728(&v4, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return a1;
}

std::type_info *sub_270327920(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270325FDC(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_2880400F8, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2703279AC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 52)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_288040178);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2703279E4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_2703279AC(a1))
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

std::type_info *sub_270327A78(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_2703279AC(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_288040178, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_270327B64(uint64_t result)
{
  if (result)
  {
    sub_270310E24(result);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_270327BC0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 53)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_288040190);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270327BF8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270327BC0(a1))
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

uint64_t sub_270327C8C(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_270310E24(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_270310E24(&v8);
  }

  return a1;
}

std::type_info *sub_270327D40(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270327BC0(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_288040190, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_270327E2C(uint64_t result)
{
  if (result)
  {
    sub_270310E24(result);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_270327E88(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 41)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2880401A8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270327EC0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270327E88(a1))
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

uint64_t sub_270327F54(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_270310E24(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_270310E24(&v8);
  }

  return a1;
}

std::type_info *sub_270328008(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270327E88(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_2880401A8, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2703280F4(uint64_t result)
{
  if (result)
  {
    sub_270310E24(result);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

void sub_270328150(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_27036C4FC();
    }
  }
}

void *sub_270328194(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_270310F28(v6);
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
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

void *sub_270328288(void *result)
{
  if (result)
  {
    sub_27032D288(result);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_270328344(uint64_t result)
{
  if (result)
  {
    sub_27032DCBC(result);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

void *sub_270328400(void *result)
{
  if (result)
  {
    sub_27032EC14(result);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_27032845C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 57)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_288040208);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270328494(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_27032845C(a1))
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

uint64_t sub_270328528(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_270310E24(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_270310E24(&v8);
  }

  return a1;
}

std::type_info *sub_2703285DC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_27032845C(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_288040208, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2703286C8(uint64_t result)
{
  if (result)
  {
    sub_270310E24(result);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_270328724(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 22)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_28803FFF0);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27032875C(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_270310E24(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_270310E24(&v8);
  }

  return a1;
}

std::type_info *sub_270328810(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270328724(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_28803FFF0, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_27032889C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_27036C564();
    }
  }
}

void *sub_2703288E0(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_270310F28(v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
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

uint64_t sub_270328978(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_270310E24(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_270310E24(&v8);
  }

  return a1;
}

uint64_t sub_270328A2C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 20)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2880400C0);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270328A64(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270328A2C(a1))
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

uint64_t sub_270328AF8(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_270310E24(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_270310E24(&v8);
  }

  return a1;
}

std::type_info *sub_270328BAC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270328A2C(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_2880400C0, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_270328C98(uint64_t result)
{
  if (result)
  {
    sub_270310E24(result);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_270328CF4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 29)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_288040220);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270328D2C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270328CF4(a1))
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

uint64_t sub_270328DC0(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_270310E24(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_270310E24(&v8);
  }

  return a1;
}

std::type_info *sub_270328E74(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270328CF4(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_288040220, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_270328F60(uint64_t result)
{
  if (result)
  {
    sub_270310E24(result);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

void sub_270328FBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_27036C5D4();
    }
  }
}

void *sub_270329000(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_270310F28(v6);
  if (HIBYTE(a2))
  {
    v3 = -1;
  }

  else
  {
    v3 = (a2 << 7) | 0x10;
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

uint64_t sub_270329094(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 56)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_288040238);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2703290CC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270329094(a1))
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

uint64_t sub_270329160(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_270310E24(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_270310E24(&v8);
  }

  return a1;
}

std::type_info *sub_270329214(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270329094(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_288040238, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_270329300(uint64_t result)
{
  if (result)
  {
    sub_270310E24(result);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_27032935C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 25)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_288040250);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270329394(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_27032935C(a1))
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

uint64_t sub_270329428(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_270310E24(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_270310E24(&v8);
  }

  return a1;
}

std::type_info *sub_2703294DC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_27032935C(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_288040250, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2703295C8(uint64_t result)
{
  if (result)
  {
    sub_270310E24(result);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

void sub_270329624(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_27036C660();
    }
  }
}

void *sub_270329668(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_270310F28(v6);
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
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

uint64_t sub_2703296FC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 24)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_288040268);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270329734(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_2703296FC(a1))
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

uint64_t sub_2703297C8(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_270310E24(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_270310E24(&v8);
  }

  return a1;
}

std::type_info *sub_27032987C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_2703296FC(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_288040268, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_270329968(uint64_t result)
{
  if (result)
  {
    sub_270310E24(result);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

void sub_2703299C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_27036C6C8();
    }
  }
}

void *sub_270329A08(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_270310F28(v6);
  if (a2 > 0x555555555555554)
  {
    v3 = -1;
  }

  else
  {
    v3 = 24 * a2 + 16;
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

uint64_t sub_270329AA4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 23)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_288040280);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270329ADC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_270329AA4(a1))
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

uint64_t sub_270329B70(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_270310E24(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_270310E24(&v8);
  }

  return a1;
}

std::type_info *sub_270329C24(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_270329AA4(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_288040280, v1, v2);
    v1 = sub_270312D2C(v1, v5);
    sub_270311D34(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_270329D10(uint64_t result)
{
  if (result)
  {
    sub_270310E24(result);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

void sub_270329D6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_27036C748();
    }
  }
}

void *sub_270329DB0(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_270310F28(v6);
  if (a2 >> 58)
  {
    v3 = -1;
  }

  else
  {
    v3 = (32 * a2) | 0x10;
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

uint64_t *sub_270329E44(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void *sub_270329E74(void *result)
{
  if ((*result & 7) != 0)
  {
    atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void *sub_270329E90(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

atomic_uint **sub_270329FB4@<X0>(atomic_uint **result@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *result;
  *a2 = *result;
  a2[1] = (&off_288040298 + 1);
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v3;
    }
  }

  return result;
}

void sub_270329FE8(uint64_t a1, char **a2)
{
  sub_2703122D4(&__p, *a2);
  *(a1 + 8) = &off_288040350;
  sub_27032A3F8();
}

void sub_27032A044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_27032A060(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_27032A080(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_27032A200(result);
}

unint64_t sub_27032A098(uint64_t *a1)
{
  v1 = *a1;
  v6[0] = 0;
  v6[1] = 0;
  v2 = *(v1 + 23);
  if (v2 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 23);
  }

  else
  {
    v4 = *(v1 + 8);
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(v6, v3);
  return bswap64(0x9E3779B97F4A7C55 * v6[0]);
}

void *sub_27032A11C(uint64_t **a1, void *a2)
{
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = **a1;
  }

  if (v3 >= 0)
  {
    v5 = *(*a1 + 23);
  }

  else
  {
    v5 = (*a1)[1];
  }

  return sub_2703180A8(a2, v4, v5);
}

void sub_27032A1E8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_288040350;
  sub_27032A3F8();
}

uint64_t *sub_27032A200(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

BOOL sub_27032A27C(void *a1, void *a2)
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

uint64_t sub_27032A2F0(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_27032A358();
  }

  return *a1;
}

_DWORD *sub_27032A498(_DWORD *a1, _DWORD *a2)
{
  sub_2703256DC(a2, a1);

  return sub_270325728(a2 + 1, a1 + 1);
}

uint64_t sub_27032A4E0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return sub_2703143D8(a1);
}

uint64_t sub_27032A520(_DWORD *a1, _DWORD *a2)
{
  sub_2703258B8(a2, a1);
  sub_2703258F4(a2 + 1, a1 + 1);

  return sub_27032A4E0(a1);
}

_DWORD *sub_27032A684@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_288040418 + 1;
  v3 = sub_2703256DC(a2, a1) + 1;

  return sub_270325728(v3, a1 + 1);
}

uint64_t *sub_27032A6D8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 48), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_27032A6F8(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_27032A84C(result);
}

unint64_t sub_27032A710(const char **a1)
{
  v1 = *a1;
  v3[0] = 0;
  v3[1] = 0;
  sub_27032A8D8(v3, v1, (v1 + 24));
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3[0]));
}

void sub_27032A834(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2880404D0;
  sub_27032ABA0();
}

uint64_t *sub_27032A84C(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 48), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

uint64_t sub_27032A8D8(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, const char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, a2);
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  return pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, v7);
}

BOOL sub_27032A944(void *a1, void *a2)
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

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v9 = *(v7 + 47);
  if (v9 >= 0)
  {
    v10 = *(v7 + 47);
  }

  else
  {
    v10 = v7[4];
  }

  v11 = *(v6 + 47);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = v6[4];
  }

  if (v10 != v11)
  {
    return 0;
  }

  v15 = v7[3];
  v14 = v7 + 3;
  v13 = v15;
  if (v9 >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v13;
  }

  v19 = v6[3];
  v18 = v6 + 3;
  v17 = v19;
  if (v12 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v17;
  }

  return memcmp(v16, v20, v10) == 0;
}

uint64_t sub_27032AA20(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 48));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_27032AA88();
  }

  return *a1;
}

char *sub_27032AB04(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_2703129A8(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_2703129A8(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  atomic_store(0, __dst + 12);
  return __dst;
}

void sub_27032AB84(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_27032AC40(double *a1)
{
  v1 = 0x9E3779B97F4A7C55 * *a1;
  if (*a1 == 0.0)
  {
    v1 = 0;
  }

  return bswap64(v1);
}

void *sub_27032AD4C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_288040588 + 1;
  return result;
}

_BYTE *sub_27032AE80@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_288040643;
  *a2 = *result;
  return result;
}

_DWORD *sub_27032AFC4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2880406FB;
  *a2 = *result;
  return result;
}

_DWORD *sub_27032B108@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_2880407B3;
  *a2 = *result;
  return result;
}

unint64_t sub_27032B148(float *a1)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_2703149C8(v2, a1, a1 + 1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2[0]));
}

void *sub_27032B284@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_288040868 + 3;
  return result;
}

uint64_t *sub_27032B29C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_27032B2B8(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 16), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x27439F3D0);
  }

  return result;
}

void *sub_27032B2F0(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_27032B308(float **a1)
{
  v1 = *a1;
  v3[0] = 0;
  v3[1] = 0;
  sub_270319BD4(v3, v1, v1 + 1, v1 + 2, v1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3[0]));
}

BOOL sub_27032B364(float **a1, float **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2] && v2[3] == v3[3];
}

void sub_27032B4C4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_288040920 + 2;
  operator new();
}

double sub_27032B52C(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_27032B53C(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_27032B550(double *a1)
{
  v1 = *a1;
  if (*a1 == 0.0)
  {
    v1 = 0.0;
  }

  return bswap64(0x9E3779B97F4A7C55 * *&v1);
}

double sub_27032B658@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  a2[1] = &unk_2880409DB;
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t *sub_27032B674(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_27032B690(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 16), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x27439F3D0);
  }

  return result;
}

void *sub_27032B6C8(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_27032B6E0(double **a1)
{
  v1 = *a1;
  v3[0] = 0;
  v3[1] = 0;
  sub_270315808(v3, v1, v1 + 1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3[0]));
}

void sub_27032B834(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_288040A90 + 2;
  operator new();
}

uint64_t sub_27032B89C(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 16));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t *sub_27032B94C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_27032B968(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 24), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x27439F3D0);
  }

  return result;
}

void *sub_27032B9A0(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_27032B9B8(double **a1)
{
  v1 = *a1;
  v3[0] = 0;
  v3[1] = 0;
  sub_2703157C0(v3, v1, v1 + 1, v1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3[0]));
}

BOOL sub_27032BA10(double **a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2];
}

void sub_27032BB50(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_288040B48 + 2;
  operator new();
}

uint64_t sub_27032BBC0(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 24));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t *sub_27032BC78(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 32), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_27032BC94(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 32), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x27439F3D0);
  }

  return result;
}

void *sub_27032BCCC(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_27032BCE4(double **a1)
{
  v1 = *a1;
  v3[0] = 0;
  v3[1] = 0;
  sub_270315774(v3, v1, v1 + 1, v1 + 2, v1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3[0]));
}

BOOL sub_27032BD40(double **a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2] && v2[3] == v3[3];
}

void sub_27032BEA0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_288040C00 + 2;
  operator new();
}

uint64_t sub_27032BF08(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 32));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t *sub_27032BFB8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_27032BFD8(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_27032C17C(result);
}

unint64_t sub_27032BFF0(uint64_t *a1)
{
  v1 = *a1;
  v3[1] = 1;
  v3[0] = *v1;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(v3, *(v1 + 32));
  return bswap64(0x9E3779B97F4A7C55 * v3[0]);
}

uint64_t sub_27032C070(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_27032C164(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_288040CB8;
  sub_27032C360();
}

uint64_t *sub_27032C17C(uint64_t *result)
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

uint64_t sub_27032C1F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && sub_27031885C(a1, a2) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  result = sub_27031885C(a1, a2);
  if (result)
  {
    return memcmp(*(a1 + 32), *(a2 + 32), 4 * *a1) == 0;
  }

  return result;
}

uint64_t sub_27032C27C(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_27032C2E4();
  }

  return *a1;
}

void sub_27032C3DC(unint64_t *a1, unint64_t a2, int **a3)
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
          if (v3 >= a2)
          {
            v13 = a1[4];
          }

          else
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_27032C748(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *(v10 + v11) = *(v9 + v11);
                  v11 += 4;
                }

                while (4 * v3 != v11);
              }
            }

            v12 = 0;
            v13 = v7;
            v14 = **a3;
            v15 = (4 * a2 - 4 * v3 - 4) >> 2;
            v16 = vdupq_n_s64(v15);
            v17 = (v15 + 4) & 0x7FFFFFFFFFFFFFFCLL;
            v18 = v7 + v3 + 2;
            do
            {
              v19 = vdupq_n_s64(v12);
              v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_270370ED0)));
              if (vuzp1_s16(v20, *v16.i8).u8[0])
              {
                *(v18 - 2) = v14;
              }

              if (vuzp1_s16(v20, *&v16).i8[2])
              {
                *(v18 - 1) = v14;
              }

              if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_270370EC0)))).i32[1])
              {
                *v18 = v14;
                v18[1] = v14;
              }

              v12 += 4;
              v18 += 4;
            }

            while (v17 != v12);
          }

LABEL_51:
          if (v13 != a1[4])
          {
            sub_270310E24(a1);
            a1[4] = v13;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a1;
      }

      v30 = sub_27032C748(a1, a2);
      v13 = v30;
      if (v3)
      {
        v31 = 4 * v29;
        v32 = v30;
        do
        {
          v33 = *v7;
          v7 = (v7 + 4);
          *v32 = v33;
          v32 = (v32 + 4);
          v31 -= 4;
        }

        while (v31);
      }

      if (v3 < a2)
      {
        v34 = 0;
        v35 = **a3;
        v36 = (4 * a2 - 4 * v3 - 4) >> 2;
        v37 = vdupq_n_s64(v36);
        v38 = (v36 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v39 = v30 + v3 + 2;
        do
        {
          v40 = vdupq_n_s64(v34);
          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_270370ED0)));
          if (vuzp1_s16(v41, 2).u8[0])
          {
            *(v39 - 2) = v35;
          }

          if (vuzp1_s16(v41, 2).i8[2])
          {
            *(v39 - 1) = v35;
          }

          if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_270370EC0)))).i32[1])
          {
            *v39 = v35;
            v39[1] = v35;
          }

          v34 += 4;
          v39 += 4;
        }

        while (v38 != v34);
      }

      goto LABEL_51;
    }

    if (4 * a2 / a2 == 4)
    {
      v13 = sub_27032C748(a1, a2);
      v21 = 0;
      v22 = **a3;
      v23 = (4 * a2 - 4) >> 2;
      v24 = vdupq_n_s64(v23);
      v25 = (v23 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v26 = v13 + 1;
      do
      {
        v27 = vdupq_n_s64(v21);
        v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_270370ED0)));
        if (vuzp1_s16(v28, *v24.i8).u8[0])
        {
          *(v26 - 2) = v22;
        }

        if (vuzp1_s16(v28, *&v24).i8[2])
        {
          *(v26 - 1) = v22;
        }

        if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_270370EC0)))).i32[1])
        {
          *v26 = v22;
          v26[1] = v22;
        }

        v21 += 4;
        v26 += 4;
      }

      while (v25 != v21);
      goto LABEL_51;
    }
  }

  sub_2703118DC(a1);
}

void *sub_27032C748(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_270310F28(v6);
  if (a2 > 0x1FFFFFFFFFFFFFFBLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 4 * a2 + 16;
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

void sub_27032C7E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_27036C7B8();
    }
  }
}

uint64_t *sub_27032C824(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_27032C844(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_27032C9E8(result);
}

unint64_t sub_27032C85C(uint64_t *a1)
{
  v1 = *a1;
  v3[1] = 1;
  v3[0] = *v1;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(v3, *(v1 + 32));
  return bswap64(0x9E3779B97F4A7C55 * v3[0]);
}

uint64_t sub_27032C8DC(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_27032C9D0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_288040D70;
  sub_27032C360();
}

uint64_t *sub_27032C9E8(uint64_t *result)
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

uint64_t sub_27032CA60(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_27032C2E4();
  }

  return *a1;
}

void sub_27032CAC8(void *a1)
{
  v1 = **a1;
  *a1 += 4;
  JUMPOUT(0x27439F2F0);
}

void sub_27032CAE0(unint64_t *a1, unint64_t a2, _OWORD **a3)
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
              v10 = sub_270328194(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *&v10[v11] = *(v9 + v11 * 8);
                  v11 += 2;
                }

                while (2 * v3 != v11);
              }
            }

            v12 = *a3;
            v13 = 2 * v3;
            do
            {
              *&v7[v13] = *v12;
              v13 += 2;
            }

            while (2 * a2 != v13);
          }

          v14 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a1;
      }

      v20 = sub_270328194(a1, a2);
      v14 = v20;
      if (v3)
      {
        v21 = 16 * v19;
        v22 = v20;
        do
        {
          v23 = *v7;
          v7 += 2;
          *v22 = v23;
          v22 += 2;
          v21 -= 16;
        }

        while (v21);
      }

      if (v3 < a2)
      {
        v24 = *a3;
        v25 = 2 * v3;
        do
        {
          *&v20[v25] = *v24;
          v25 += 2;
        }

        while (2 * a2 != v25);
      }

      goto LABEL_31;
    }

    v15 = 16 * a2;
    if (16 * a2 / a2 == 16)
    {
      v16 = sub_270328194(a1, a2);
      v14 = v16;
      v17 = 0;
      v18 = *a3;
      do
      {
        *&v16[v17 / 8] = *v18;
        v17 += 16;
      }

      while (v15 != v17);
LABEL_31:
      if (v14 != a1[4])
      {
        sub_270310E24(a1);
        a1[4] = v14;
      }

      *a1 = a2;
      return;
    }
  }

  sub_2703118DC(a1);
}

uint64_t *sub_27032CCA8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_27032CCC8(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_27032CEB0(result);
}

unint64_t sub_27032CCE0(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v4 = v2 + 16;
      v8 = *(v2 + 12);
      v9[0] = 0;
      v9[1] = 0;
      sub_270314EB4(v9, &v8, v2);
      v5 = bswap64(0x9E3779B97F4A7C55 * v9[0]);
      v1 = v5 + ((v5 + v1 + (v5 + v1) * (v5 + v1)) >> 1);
      v2 = v4;
    }

    while (v3);
    v6 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v6 = 0;
  }

  return bswap64(v6);
}

uint64_t sub_27032CDA4(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_27032CE98(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = off_288040E28;
  sub_270318A3C();
}

uint64_t *sub_27032CEB0(uint64_t *result)
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

BOOL sub_27032CF28(void *a1, uint64_t a2)
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

  if (!*a1)
  {
    return 1;
  }

  v5 = (a1[4] + 8);
  v6 = 16 * *a1;
  for (i = (*(a2 + 32) + 8); v5[1] == i[1] && *(v5 - 2) == *(i - 2) && *(v5 - 1) == *(i - 1) && *v5 == *i; i += 4)
  {
    v5 += 4;
    v6 -= 16;
    if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_27032D004(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_2703189A8();
  }

  return *a1;
}

uint64_t sub_27032D06C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 16;
  return MEMORY[0x282206CB0](a2, v3);
}

void sub_27032D084(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      sub_27032D288(a1);
    }

    else if (*a1)
    {
      v4 = a1[4];
      v5 = 24 * *a1;
      do
      {
        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        v4 += 24;
        v5 -= 24;
      }

      while (v5);
    }

    *a1 = 0;
  }
}

void sub_27032D110(uint64_t *a1, unint64_t a2, __int128 **a3)
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
          if (v3 >= a2)
          {
            v12 = v7 + 3 * a2;
            v13 = 24 * v3 - 24 * a2;
            do
            {
              if (*(v12 + 23) < 0)
              {
                operator delete(*v12);
              }

              v12 += 3;
              v13 -= 24;
            }

            while (v13);
            goto LABEL_25;
          }

          v9 = a1[4];
          if (*(v9 - 1) < a2)
          {
            v7 = sub_27032D48C(a1, v9, a2, *a1);
          }

LABEL_19:
          v10 = v7 + 24 * v3;
          goto LABEL_20;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a1;
      }

      v7 = sub_27032D48C(a1, v7, a2, v11);
      if (v3 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = sub_27032D32C(a1, a2);
      v10 = v7;
LABEL_20:
      sub_27032D3C8(a3, v10, v7 + 24 * a2);
LABEL_25:
      if (v7 != a1[4])
      {
        sub_27032D288(a1);
        a1[4] = v7;
      }

      *a1 = a2;
      return;
    }
  }

  sub_27032D084(a1);
}

void sub_27032D288(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_27036BEC0(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 24 * *a1;
        do
        {
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          v5 += 24;
          v6 -= 24;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void *sub_27032D32C(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_270310F28(v6);
  if (a2 > 0x555555555555554)
  {
    v3 = -1;
  }

  else
  {
    v3 = 24 * a2 + 16;
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

__int128 **sub_27032D3C8(__int128 **result, char *__dst, char *a3)
{
  if (__dst != a3)
  {
    v4 = 0;
    v5 = *result;
    v6 = __dst;
    do
    {
      if (*(v5 + 23) < 0)
      {
        result = sub_2703129A8(v6, *v5, *(v5 + 1));
      }

      else
      {
        v7 = *v5;
        *(v6 + 2) = *(v5 + 2);
        *v6 = v7;
      }

      v6 += 24;
      v4 -= 24;
    }

    while (v6 != a3);
  }

  return result;
}

void sub_27032D448(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      v1 += 24;
      v3 -= 24;
    }

    while (v3);
  }

  __cxa_rethrow();
}

void *sub_27032D48C(uint64_t a1, __int128 *a2, unint64_t a3, uint64_t a4)
{
  v6 = sub_27032D32C(a1, a3);
  v7 = v6;
  if (a4)
  {
    v8 = 0;
    v9 = -24 * a4;
    v10 = v6;
    do
    {
      if (*(a2 + 23) < 0)
      {
        sub_2703129A8(v10, *a2, *(a2 + 1));
      }

      else
      {
        v11 = *a2;
        v10[2] = *(a2 + 2);
        *v10 = v11;
      }

      a2 = (a2 + 24);
      v10 += 3;
      v8 -= 24;
    }

    while (v9 != v8);
  }

  return v7;
}

void sub_27032D520(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      v1 += 24;
      v3 -= 24;
    }

    while (v3);
  }

  __cxa_rethrow();
}

void sub_27032D564(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_27036C828();
    }
  }
}

uint64_t *sub_27032D5A8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_27032D5C8(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_27032D768(result);
}

unint64_t sub_27032D5E0(uint64_t *a1)
{
  v1 = *a1;
  v3[1] = 1;
  v3[0] = *v1;
  sub_27032D7E0(v3, *(v1 + 32), v3[0]);
  return bswap64(0x9E3779B97F4A7C55 * v3[0]);
}

uint64_t sub_27032D65C(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_27032D750(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_288040EE0;
  sub_270318A3C();
}

uint64_t *sub_27032D768(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_27032D288(v1);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::Tf_HashState *sub_27032D7E0(pxrInternal__aapl__pxrReserved__::Tf_HashState *this, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = this;
    do
    {
      --v3;
      v5 = a2 + 3;
      v6 = a2[1];
      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      this = pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(v4, a2);
      a2 = v5;
    }

    while (v3);
  }

  return this;
}

BOOL sub_27032D844(uint64_t *a1, uint64_t a2)
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
  v8 = 24 * v5 - 24;
  do
  {
    result = sub_27032D904(&v10, v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 3;
    v7 += 3;
    v9 = v8;
    v8 -= 24;
  }

  while (v9);
  return result;
}

BOOL sub_27032D904(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

uint64_t sub_27032D97C(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_2703189A8();
  }

  return *a1;
}

void *sub_27032D9E4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  *a1 += 24;
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

  return sub_2703180A8(a2, v5, v6);
}

void sub_27032DA14(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      sub_27032DCBC(a1);
    }

    else if (*a1)
    {
      v4 = a1[4];
      v5 = 8 * *a1;
      do
      {
        if ((*v4 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        ++v4;
        v5 -= 8;
      }

      while (v5);
    }

    *a1 = 0;
  }
}

void sub_27032DA9C(uint64_t *a1, unint64_t a2, uint64_t **a3)
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
          if (v3 >= a2)
          {
            v23 = a2;
            do
            {
              v24 = v7[v23];
              if ((v24 & 7) != 0)
              {
                atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              ++v23;
            }

            while (v3 != v23);
          }

          else
          {
            v9 = a1[4];
            if (*(v9 - 1) < a2)
            {
              v7 = sub_27032DDF4(a1, v9, a2, *a1);
            }

            v10 = *a3;
            v11 = v3;
            do
            {
              v12 = *v10;
              v7[v11] = *v10;
              if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                v7[v11] &= 0xFFFFFFFFFFFFFFF8;
              }

              ++v11;
            }

            while (a2 != v11);
          }

LABEL_40:
          if (v7 != a1[4])
          {
            sub_27032DCBC(a1);
            a1[4] = v7;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a1;
      }

      v19 = sub_27032DDF4(a1, v7, a2, v18);
      v7 = v19;
      if (v3 < a2)
      {
        v20 = *a3;
        v21 = v3;
        do
        {
          v22 = *v20;
          v19[v21] = *v20;
          if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v19[v21] &= 0xFFFFFFFFFFFFFFF8;
          }

          ++v21;
        }

        while (a2 != v21);
      }

      goto LABEL_40;
    }

    v13 = 8 * a2;
    if (8 * a2 / a2 == 8)
    {
      v14 = sub_27032DD5C(a1, a2);
      v7 = v14;
      v15 = 0;
      v16 = *a3;
      do
      {
        v17 = *v16;
        v14[v15 / 8] = *v16;
        if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v14[v15 / 8] &= 0xFFFFFFFFFFFFFFF8;
        }

        v15 += 8;
      }

      while (v13 != v15);
      goto LABEL_40;
    }
  }

  sub_27032DA14(a1);
}

void sub_27032DCBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = a1 + 24;
    if (*(a1 + 24))
    {
      sub_27036BEC0(*(a1 + 24), v2);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v3 = *(a1 + 32);
      if (*a1)
      {
        v4 = 8 * *a1;
        do
        {
          if ((*v3 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          ++v3;
          v4 -= 8;
        }

        while (v4);
        v3 = *(a1 + 32);
      }

      operator delete(v3 - 2);
    }

    *v2 = 0;
    *(v2 + 8) = 0;
  }
}

void *sub_27032DD5C(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_270310F28(v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
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

uint64_t *sub_27032DDF4(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  result = sub_27032DD5C(a1, a3);
  if (a4)
  {
    v7 = 8 * a4;
    v8 = result;
    do
    {
      v9 = *a2;
      *v8 = *a2;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v8 &= 0xFFFFFFFFFFFFFFF8;
      }

      ++a2;
      ++v8;
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

void sub_27032DE68(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_27036C874();
    }
  }
}

uint64_t *sub_27032DEAC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_27032DECC(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_27032E060(result);
}

unint64_t sub_27032DEE4(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      v4 = *v2++;
      v1 = (v4 & 0xFFFFFFFFFFFFFFF8) + (((v4 & 0xFFFFFFFFFFFFFFF8) + v1 + ((v4 & 0xFFFFFFFFFFFFFFF8) + v1) * ((v4 & 0xFFFFFFFFFFFFFFF8) + v1)) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

uint64_t sub_27032DF54(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_27032E048(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = off_288040F98;
  sub_270318A3C();
}

uint64_t *sub_27032E060(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_27032DCBC(v1);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

BOOL sub_27032E0D8(void *a1, uint64_t a2)
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

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 8 * *a1 - 8;
  do
  {
    v9 = *v5++;
    v8 = v9;
    v10 = *v6++;
    v11 = v10 ^ v8;
    result = v11 < 8;
    v12 = v11 > 7 || v7 == 0;
    v7 -= 8;
  }

  while (!v12);
  return result;
}

uint64_t sub_27032E180(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_2703189A8();
  }

  return *a1;
}

uint64_t sub_27032E1E8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 8;
  return MEMORY[0x282206D28](a2, v3);
}

void sub_27032E200(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      sub_27032E41C(a1);
    }

    else if (*a1)
    {
      v4 = a1[4];
      v5 = 8 * *a1;
      do
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(v4);
        v4 += 8;
        v5 -= 8;
      }

      while (v5);
    }

    *a1 = 0;
  }
}

void sub_27032E288(unint64_t *a1, unint64_t a2, _DWORD *a3)
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
          if (v3 >= a2)
          {
            v13 = &v7[a2];
            v14 = 8 * v3 - 8 * a2;
            do
            {
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_2703143D8(v13);
              v13 += 8;
              v14 -= 8;
            }

            while (v14);
LABEL_23:
            if (v7 != a1[4])
            {
              sub_27032E41C(a1);
              a1[4] = v7;
            }

            *a1 = a2;
            return;
          }

          v9 = a1[4];
          if (*(v9 - 1) < a2)
          {
            v7 = sub_27032E4BC(a1, a2);
            sub_27032E5B4(v9, &v9[2 * v3], v7);
          }

          goto LABEL_19;
        }

        v7 = a1[4];
      }

      v11 = v7;
      if (v3 >= a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a1;
      }

      v7 = sub_27032E4BC(a1, a2);
      sub_27032E5B4(v11, &v11[2 * v12], v7);
      if (v3 >= a2)
      {
        goto LABEL_23;
      }

LABEL_19:
      v10 = &v7[v3];
      goto LABEL_20;
    }

    if (8 * a2 / a2 == 8)
    {
      v7 = sub_27032E4BC(a1, a2);
      v10 = v7;
LABEL_20:
      sub_27032E554(a3, v10, &v7[a2]);
      goto LABEL_23;
    }
  }

  sub_27032E200(a1);
}

void sub_27032E41C(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_27036BEC0(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 8 * *a1;
        do
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_2703143D8(v5);
          v5 += 8;
          v6 -= 8;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void *sub_27032E4BC(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_270310F28(v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
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

_DWORD *sub_27032E554(_DWORD *result, _DWORD *a2, _DWORD *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = *result;
    do
    {
      sub_2703256DC(v4, v5);
      result = sub_270325728(v4 + 1, v5 + 1);
      v4 += 2;
    }

    while (v4 != a3);
  }

  return result;
}

_DWORD *sub_27032E5B4(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_2703256DC(a3, v5);
      sub_270325728(a3 + 1, v5 + 1);
      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_27032E618(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_27036C8C0();
    }
  }
}

uint64_t *sub_27032E65C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_27032E67C(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_27032E7CC(result);
}

uint64_t sub_27032E6C0(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_27032E7B4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_288041050;
  sub_270318A3C();
}

uint64_t *sub_27032E7CC(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_27032E41C(v1);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

unint64_t sub_27032E844(unint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = (a1[4] + 4);
    v3 = *a1;
    do
    {
      v4 = *(v2 - 1);
      v5 = v1 + v4 + (v1 + v4) * (v1 + v4);
      v1 = *v2 + ((v4 + *v2 + (v5 >> 1) + (v4 + *v2 + (v5 >> 1)) * (v4 + *v2 + (v5 >> 1))) >> 1);
      v2 += 2;
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

BOOL sub_27032E89C(void *a1, uint64_t a2)
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

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 8 * *a1 - 8;
  do
  {
    v9 = *v5++;
    v8 = v9;
    v10 = *v6++;
    result = v8 == v10;
    v11 = v8 != v10 || v7 == 0;
    v7 -= 8;
  }

  while (!v11);
  return result;
}

uint64_t sub_27032E93C(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_2703189A8();
  }

  return *a1;
}

uint64_t sub_27032E9A4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 8;
  return MEMORY[0x282206D20](a2, v3);
}

void sub_27032E9BC(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      sub_27032EC14(a1);
    }

    else if (*a1)
    {
      v4 = 48 * *a1;
      v5 = (a1[4] + 23);
      do
      {
        if (v5[24] < 0)
        {
          operator delete(*(v5 + 1));
        }

        if (*v5 < 0)
        {
          operator delete(*(v5 - 23));
        }

        v5 += 48;
        v4 -= 48;
      }

      while (v4);
    }

    *a1 = 0;
  }
}

void sub_27032EA5C(unint64_t *a1, unint64_t a2, __int128 **a3)
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
          if (v3 >= a2)
          {
            v13 = 48 * v3 - 48 * a2;
            v14 = &v7[6 * a2 + 2] + 7;
            do
            {
              if (v14[24] < 0)
              {
                operator delete(*(v14 + 1));
              }

              if (*v14 < 0)
              {
                operator delete(*(v14 - 23));
              }

              v14 += 48;
              v13 -= 48;
            }

            while (v13);
            goto LABEL_27;
          }

          v9 = a1[4];
          if (*(v9 - 8) < a2)
          {
            v7 = sub_27032ECCC(a1, a2);
            sub_27032EED0(v9, v9 + 48 * v3, v7);
          }

LABEL_19:
          v10 = &v7[6 * v3];
          goto LABEL_20;
        }

        v7 = a1[4];
      }

      v11 = v7;
      if (v3 >= a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a1;
      }

      v7 = sub_27032ECCC(a1, a2);
      sub_27032EED0(v11, v11 + 48 * v12, v7);
      if (v3 >= a2)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (a2 <= 0x555555555555555)
    {
      v10 = sub_27032ECCC(a1, a2);
      v7 = v10;
LABEL_20:
      sub_27032ED68(v10, &v7[6 * a2], *a3);
LABEL_27:
      if (v7 != a1[4])
      {
        sub_27032EC14(a1);
        a1[4] = v7;
      }

      *a1 = a2;
      return;
    }
  }

  sub_27032E9BC(a1);
}

void sub_27032EC14(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = (a1 + 3);
    v3 = a1[3];
    if (v3)
    {
      sub_27036BEC0(v3, v4);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 48 * *a1;
        v7 = (v5 + 23);
        do
        {
          if (v7[24] < 0)
          {
            operator delete(*(v7 + 1));
          }

          if (*v7 < 0)
          {
            operator delete(*(v7 - 23));
          }

          v7 += 48;
          v6 -= 48;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void *sub_27032ECCC(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_270310F28(v6);
  if (a2 > 0x2AAAAAAAAAAAAAALL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 48 * a2 + 16;
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

char *sub_27032ED68(char *__dst, char *a2, __int128 *a3)
{
  if (__dst == a2)
  {
    return __dst;
  }

  v5 = 0;
  v6 = __dst;
  do
  {
    if (*(a3 + 23) < 0)
    {
      sub_2703129A8(v6, *a3, *(a3 + 1));
    }

    else
    {
      v7 = *a3;
      *(v6 + 2) = *(a3 + 2);
      *v6 = v7;
    }

    if (*(a3 + 47) < 0)
    {
      sub_2703129A8(v6 + 24, *(a3 + 3), *(a3 + 4));
    }

    else
    {
      v8 = *(a3 + 24);
      *(v6 + 5) = *(a3 + 5);
      *(v6 + 24) = v8;
    }

    v6 += 48;
    v5 -= 48;
  }

  while (v6 != a2);
  return v6;
}

void sub_27032EE1C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      sub_27032EE78(v1);
      v1 += 48;
      v3 -= 48;
    }

    while (v3);
  }

  __cxa_rethrow();
}

void sub_27032EE78(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_27032EED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = a2;
  v6 = 0;
  do
  {
    v7 = a3 + v6;
    v8 = (a1 + v6);
    if (*(a1 + v6 + 23) < 0)
    {
      sub_2703129A8(v7, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      *(v7 + 16) = *(v8 + 2);
      *v7 = v9;
    }

    v10 = a3 + v6;
    v11 = a1 + v6;
    if (*(a1 + v6 + 47) < 0)
    {
      sub_2703129A8((v10 + 24), *(v11 + 24), *(v11 + 32));
    }

    else
    {
      v12 = *(v11 + 24);
      *(v10 + 40) = *(v11 + 40);
      *(v10 + 24) = v12;
    }

    v6 += 48;
  }

  while (a1 + v6 != v5);
  return v5;
}

void sub_27032EF8C(void *a1)
{
  __cxa_begin_catch(a1);
  for (; v2; v2 -= 48)
  {
    sub_27032EE78(v1);
    v1 += 48;
  }

  __cxa_rethrow();
}

void sub_27032EFE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_27036C924();
    }
  }
}

uint64_t *sub_27032F02C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_27032F04C(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_27032F22C(result);
}

unint64_t sub_27032F064(unint64_t **a1)
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
      sub_27032A8D8(v7, v2, (v2 + 24));
      v4 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 48;
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

uint64_t sub_27032F120(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_27032F214(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = off_288041120;
  sub_270318A3C();
}

uint64_t *sub_27032F22C(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_27032EC14(v1);

    JUMPOUT(0x27439F3D0);
  }

  return result;
}

BOOL sub_27032F2A4(uint64_t *a1, uint64_t a2)
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
  v8 = 48 * v5 - 48;
  do
  {
    result = sub_27032A944(v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 6;
    v7 += 6;
    v9 = v8;
    v8 -= 48;
  }

  while (v9);
  return result;
}

uint64_t sub_27032F358(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_2703189A8();
  }

  return *a1;
}

uint64_t sub_27032F3C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 48;
  return MEMORY[0x282206C80](a2, v3);
}

void sub_27032F3D8(unint64_t *a1, unint64_t a2, __int32 **a3, int16x4_t a4)
{
  v4 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v8 = a1[4];
    if (v8)
    {
      if (!a1[3])
      {
        v9 = atomic_load(v8 - 2);
        if (v9 == 1)
        {
          if (v4 >= a2)
          {
            v14 = a1[4];
          }

          else
          {
            v10 = a1[4];
            if (*(v10 - 8) < a2)
            {
              v11 = sub_27032F744(a1, a2);
              v8 = v11;
              if (v4)
              {
                v12 = 0;
                do
                {
                  *(v11 + v12) = *(v10 + v12);
                  v12 += 4;
                }

                while (4 * v4 != v12);
              }
            }

            v13 = 0;
            v14 = v8;
            a4.i32[0] = **a3;
            v15 = (4 * a2 - 4 * v4 - 4) >> 2;
            v16 = vdupq_n_s64(v15);
            v17 = (v15 + 4) & 0x7FFFFFFFFFFFFFFCLL;
            v18 = v8 + v4 + 2;
            do
            {
              v19 = vdupq_n_s64(v13);
              v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_270370ED0)));
              if (vuzp1_s16(v20, a4).u8[0])
              {
                *(v18 - 2) = a4.i32[0];
              }

              if (vuzp1_s16(v20, a4).i8[2])
              {
                *(v18 - 1) = a4.i32[0];
              }

              if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_270370EC0)))).i32[1])
              {
                *v18 = a4.i32[0];
                v18[1] = a4.i32[0];
              }

              v13 += 4;
              v18 += 4;
            }

            while (v17 != v13);
          }

LABEL_51:
          if (v14 != a1[4])
          {
            sub_270310E24(a1);
            a1[4] = v14;
          }

          *a1 = a2;
          return;
        }

        v8 = a1[4];
      }

      if (v4 >= a2)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a1;
      }

      v30 = sub_27032F744(a1, a2);
      v14 = v30;
      if (v4)
      {
        v32 = 4 * v29;
        v33 = v30;
        do
        {
          v34 = *v8;
          v8 = (v8 + 4);
          *v33 = v34;
          v33 = (v33 + 4);
          v32 -= 4;
        }

        while (v32);
      }

      if (v4 < a2)
      {
        v35 = 0;
        v31.i32[0] = **a3;
        v36 = (4 * a2 - 4 * v4 - 4) >> 2;
        v37 = vdupq_n_s64(v36);
        v38 = (v36 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v39 = v30 + v4 + 2;
        do
        {
          v40 = vdupq_n_s64(v35);
          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_270370ED0)));
          if (vuzp1_s16(v41, v31).u8[0])
          {
            *(v39 - 2) = v31.i32[0];
          }

          if (vuzp1_s16(v41, v31).i8[2])
          {
            *(v39 - 1) = v31.i32[0];
          }

          if (vuzp1_s16(v31, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_270370EC0)))).i32[1])
          {
            *v39 = v31.i32[0];
            v39[1] = v31.i32[0];
          }

          v35 += 4;
          v39 += 4;
        }

        while (v38 != v35);
      }

      goto LABEL_51;
    }

    if (4 * a2 / a2 == 4)
    {
      v14 = sub_27032F744(a1, a2);
      v21 = 0;
      v22.i32[0] = **a3;
      v23 = (4 * a2 - 4) >> 2;
      v24 = vdupq_n_s64(v23);
      v25 = (v23 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v26 = v14 + 1;
      do
      {
        v27 = vdupq_n_s64(v21);
        v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_270370ED0)));
        if (vuzp1_s16(v28, v22).u8[0])
        {
          *(v26 - 2) = v22.i32[0];
        }

        if (vuzp1_s16(v28, v22).i8[2])
        {
          *(v26 - 1) = v22.i32[0];
        }

        if (vuzp1_s16(v22, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_270370EC0)))).i32[1])
        {
          *v26 = v22.i32[0];
          v26[1] = v22.i32[0];
        }

        v21 += 4;
        v26 += 4;
      }

      while (v25 != v21);
      goto LABEL_51;
    }
  }

  sub_2703118DC(a1);
}

void *sub_27032F744(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_270310F28(v6);
  if (a2 > 0x1FFFFFFFFFFFFFFBLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 4 * a2 + 16;
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

void sub_27032F7DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_27036C98C();
    }
  }
}

uint64_t *sub_27032F820(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_27032F840(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_27032F990(result);
}

uint64_t sub_27032F884(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_27032F978(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2880411D8;
  sub_27032FBF4();
}

uint64_t *sub_27032F990(uint64_t *result)
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

unint64_t sub_27032FA08(unint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    do
    {
      v4 = *v2++;
      v5 = v4;
      if (v4 == 0.0)
      {
        v5 = 0.0;
      }

      v1 = LODWORD(v5) + ((v1 + LODWORD(v5) + (v1 + LODWORD(v5)) * (v1 + LODWORD(v5))) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

BOOL sub_27032FA5C(void *a1, uint64_t a2)
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

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 4 * *a1 - 4;
  do
  {
    v8 = *v5++;
    v9 = v8;
    v10 = *v6++;
    result = v9 == v10;
    v11 = v9 != v10 || v7 == 0;
    v7 -= 4;
  }

  while (!v11);
  return result;
}

uint64_t sub_27032FAFC(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_27032FB64();
  }

  return *a1;
}

void sub_27032FC70(unint64_t *a1, unint64_t a2, uint64_t **a3)
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
              v10 = sub_2703288E0(a1, a2);
              v7 = v10;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  v10[i] = *(v9 + i * 8);
                }
              }
            }

            v12 = *a3;
            v13 = v3;
            do
            {
              v7[v13++] = *v12;
            }

            while (a2 != v13);
          }

          v14 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a1;
      }

      v20 = sub_2703288E0(a1, a2);
      v14 = v20;
      if (v3)
      {
        v21 = 8 * v19;
        v22 = v20;
        do
        {
          v23 = *v7++;
          *v22++ = v23;
          v21 -= 8;
        }

        while (v21);
      }

      if (v3 < a2)
      {
        v24 = *a3;
        v25 = v3;
        do
        {
          v20[v25++] = *v24;
        }

        while (a2 != v25);
      }

      goto LABEL_31;
    }

    v15 = 8 * a2;
    if (8 * a2 / a2 == 8)
    {
      v16 = sub_2703288E0(a1, a2);
      v14 = v16;
      v17 = 0;
      v18 = *a3;
      do
      {
        v16[v17 / 8] = *v18;
        v17 += 8;
      }

      while (v15 != v17);
LABEL_31:
      if (v14 != a1[4])
      {
        sub_270310E24(a1);
        a1[4] = v14;
      }

      *a1 = a2;
      return;
    }
  }

  sub_2703118DC(a1);
}

uint64_t *sub_27032FE38(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_27032FE58(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_270330038(result);
}

unint64_t sub_27032FE70(unint64_t **a1)
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
      sub_2703149C8(v7, v2, v2 + 1);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 2;
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

uint64_t sub_27032FF2C(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_270330020(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = off_288041290;
  sub_270318A3C();
}

uint64_t *sub_270330038(uint64_t *result)
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

BOOL sub_2703300B0(void *a1, uint64_t a2)
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

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[2 * *a1];
  v7 = *(a2 + 32);
  do
  {
    v8 = *v5;
    v9 = v5[1];
    v5 += 2;
    v10 = *v7;
    v11 = v7[1];
    v7 += 2;
    result = v9 == v11 && v8 == v10;
  }

  while (result && v5 != v6);
  return result;
}

uint64_t sub_270330154(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_2703189A8();
  }

  return *a1;
}

uint64_t sub_2703301BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 8;
  return MEMORY[0x282206CC8](a2, v3);
}

void sub_2703301D4(unint64_t *a1, unint64_t a2, uint64_t **a3)
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
              v10 = sub_270330480(a1, a2);
              v7 = v10;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  v10[i] = *(v9 + i * 8);
                }
              }
            }

            v12 = 0;
            v13 = **a3;
            v14 = (8 * a2 - 8 * v3 - 8) >> 3;
            v15 = (v14 + 2) & 0x3FFFFFFFFFFFFFFELL;
            v16 = vdupq_n_s64(v14);
            v17 = &v7[v3 + 1];
            do
            {
              v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_270370ED0)));
              if (v18.i8[0])
              {
                *(v17 - 1) = v13;
              }

              if (v18.i8[4])
              {
                *v17 = v13;
              }

              v12 += 2;
              v17 += 2;
            }

            while (v15 != v12);
          }

          v19 = v7;
LABEL_43:
          if (v19 != a1[4])
          {
            sub_270310E24(a1);
            a1[4] = v19;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v26 = a2;
      }

      else
      {
        v26 = *a1;
      }

      v27 = sub_270330480(a1, a2);
      v19 = v27;
      if (v3)
      {
        v28 = 8 * v26;
        v29 = v27;
        do
        {
          v30 = *v7++;
          *v29++ = v30;
          v28 -= 8;
        }

        while (v28);
      }

      if (v3 < a2)
      {
        v31 = 0;
        v32 = **a3;
        v33 = (8 * a2 - 8 * v3 - 8) >> 3;
        v34 = (v33 + 2) & 0x3FFFFFFFFFFFFFFELL;
        v35 = vdupq_n_s64(v33);
        v36 = &v27[v3 + 1];
        do
        {
          v37 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(vdupq_n_s64(v31), xmmword_270370ED0)));
          if (v37.i8[0])
          {
            *(v36 - 1) = v32;
          }

          if (v37.i8[4])
          {
            *v36 = v32;
          }

          v31 += 2;
          v36 += 2;
        }

        while (v34 != v31);
      }

      goto LABEL_43;
    }

    if (8 * a2 / a2 == 8)
    {
      v20 = sub_270330480(a1, a2);
      v19 = v20;
      v21 = 0;
      v22 = **a3;
      v23 = (8 * a2 - 8) >> 3;
      v24 = vdupq_n_s64(v23);
      do
      {
        v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v21), xmmword_270370ED0)));
        if (v25.i8[0])
        {
          v20[v21] = v22;
        }

        if (v25.i8[4])
        {
          v20[v21 + 1] = v22;
        }

        v21 += 2;
      }

      while (((v23 + 2) & 0x3FFFFFFFFFFFFFFELL) != v21);
      goto LABEL_43;
    }
  }

  sub_2703118DC(a1);
}

void *sub_270330480(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_270310F28(v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
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

void sub_270330518(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_27036C9FC();
    }
  }
}

uint64_t *sub_27033055C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_27033057C(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_2703306CC(result);
}

uint64_t sub_2703305C0(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_2703306B4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_288041348;
  sub_27032FBF4();
}

uint64_t *sub_2703306CC(uint64_t *result)
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

unint64_t sub_270330744(unint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    do
    {
      v4 = *v2++;
      v5 = v4;
      if (v4 == 0.0)
      {
        v5 = 0.0;
      }

      v1 = *&v5 + ((v1 + *&v5 + (v1 + *&v5) * (v1 + *&v5)) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

BOOL sub_270330798(void *a1, uint64_t a2)
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

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 8 * *a1 - 8;
  do
  {
    v8 = *v5++;
    v9 = v8;
    v10 = *v6++;
    result = v9 == v10;
    v11 = v9 != v10 || v7 == 0;
    v7 -= 8;
  }

  while (!v11);
  return result;
}

uint64_t sub_270330838(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_27032FB64();
  }

  return *a1;
}

void sub_2703308B4(unint64_t *a1, unint64_t a2, _OWORD **a3)
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
              v10 = sub_270329668(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *&v10[v11] = *(v9 + v11 * 8);
                  v11 += 2;
                }

                while (2 * v3 != v11);
              }
            }

            v12 = *a3;
            v13 = 2 * v3;
            do
            {
              *&v7[v13] = *v12;
              v13 += 2;
            }

            while (2 * a2 != v13);
          }

          v14 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a1;
      }

      v20 = sub_270329668(a1, a2);
      v14 = v20;
      if (v3)
      {
        v21 = 16 * v19;
        v22 = v20;
        do
        {
          v23 = *v7;
          v7 += 2;
          *v22 = v23;
          v22 += 2;
          v21 -= 16;
        }

        while (v21);
      }

      if (v3 < a2)
      {
        v24 = *a3;
        v25 = 2 * v3;
        do
        {
          *&v20[v25] = *v24;
          v25 += 2;
        }

        while (2 * a2 != v25);
      }

      goto LABEL_31;
    }

    v15 = 16 * a2;
    if (16 * a2 / a2 == 16)
    {
      v16 = sub_270329668(a1, a2);
      v14 = v16;
      v17 = 0;
      v18 = *a3;
      do
      {
        *&v16[v17 / 8] = *v18;
        v17 += 16;
      }

      while (v15 != v17);
LABEL_31:
      if (v14 != a1[4])
      {
        sub_270310E24(a1);
        a1[4] = v14;
      }

      *a1 = a2;
      return;
    }
  }

  sub_2703118DC(a1);
}

uint64_t *sub_270330A7C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_270330A9C(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_270330C7C(result);
}

unint64_t sub_270330AB4(unint64_t **a1)
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
      sub_270315808(v7, v2, v2 + 1);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 2;
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

uint64_t sub_270330B70(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_270330C64(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = off_288041400;
  sub_270318A3C();
}

uint64_t *sub_270330C7C(uint64_t *result)
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

BOOL sub_270330CF4(void *a1, uint64_t a2)
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

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[2 * *a1];
  v7 = *(a2 + 32);
  do
  {
    v8 = *v5;
    v9 = v5[1];
    v5 += 2;
    v10 = *v7;
    v11 = v7[1];
    v7 += 2;
    result = v9 == v11 && v8 == v10;
  }

  while (result && v5 != v6);
  return result;
}

uint64_t sub_270330D98(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_2703189A8();
  }

  return *a1;
}

uint64_t sub_270330E00(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 16;
  return MEMORY[0x282206CC0](a2, v3);
}

void sub_270330E18(unint64_t *a1, unint64_t a2, __int128 **a3)
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
              v10 = sub_270329A08(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = &v10[v11];
                  v13 = *(v9 + v11 * 8);
                  v12[2] = *(v9 + v11 * 8 + 16);
                  *v12 = v13;
                  v11 += 3;
                }

                while (3 * v3 != v11);
              }
            }

            v14 = *a3;
            v15 = 3 * v3;
            do
            {
              v16 = &v7[v15];
              v17 = *v14;
              v16[2] = *(v14 + 2);
              *v16 = v17;
              v15 += 3;
            }

            while (3 * a2 != v15);
          }

          v18 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a1;
      }

      v25 = sub_270329A08(a1, a2);
      v18 = v25;
      if (v3)
      {
        v26 = 24 * v24;
        v27 = v25;
        do
        {
          v28 = *v7;
          v27[2] = v7[2];
          *v27 = v28;
          v27 += 3;
          v7 += 3;
          v26 -= 24;
        }

        while (v26);
      }

      if (v3 < a2)
      {
        v29 = *a3;
        v30 = 3 * v3;
        do
        {
          v31 = &v25[v30];
          v32 = *v29;
          v31[2] = *(v29 + 2);
          *v31 = v32;
          v30 += 3;
        }

        while (3 * a2 != v30);
      }

      goto LABEL_31;
    }

    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v19 = sub_270329A08(a1, a2);
      v18 = v19;
      v20 = 0;
      v21 = *a3;
      do
      {
        v22 = &v19[v20];
        v23 = *v21;
        v22[2] = *(v21 + 2);
        *v22 = v23;
        v20 += 3;
      }

      while (3 * a2 != v20);
LABEL_31:
      if (v18 != a1[4])
      {
        sub_270310E24(a1);
        a1[4] = v18;
      }

      *a1 = a2;
      return;
    }
  }

  sub_2703118DC(a1);
}

uint64_t *sub_270331044(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_270331064(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_270331248(result);
}

unint64_t sub_27033107C(unint64_t **a1)
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
      sub_2703157C0(v7, v2, v2 + 1, v2 + 2);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 3;
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

uint64_t sub_27033113C(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_270331230(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = off_2880414B8;
  sub_270318A3C();
}

uint64_t *sub_270331248(uint64_t *result)
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

BOOL sub_2703312C0(void *a1, uint64_t a2)
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

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[3 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2]; i += 3)
  {
    v5 += 3;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_270331388(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_2703189A8();
  }

  return *a1;
}

uint64_t sub_2703313F0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 24;
  return MEMORY[0x282206CE0](a2, v3);
}

void sub_270331408(unint64_t *a1, unint64_t a2, _OWORD **a3)
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
              v10 = sub_270329DB0(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = &v10[v11];
                  v13 = *(v9 + v11 * 8 + 16);
                  *v12 = *(v9 + v11 * 8);
                  *(v12 + 1) = v13;
                  v11 += 4;
                }

                while (4 * v3 != v11);
              }
            }

            v14 = *a3;
            v15 = 4 * v3;
            do
            {
              v16 = &v7[v15];
              v17 = v14[1];
              *v16 = *v14;
              *(v16 + 1) = v17;
              v15 += 4;
            }

            while (4 * a2 != v15);
          }

          v18 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v25 = a2;
      }

      else
      {
        v25 = *a1;
      }

      v26 = sub_270329DB0(a1, a2);
      v18 = v26;
      if (v3)
      {
        v27 = 32 * v25;
        v28 = v26;
        do
        {
          v29 = *v7;
          v30 = *(v7 + 1);
          v7 += 4;
          *v28 = v29;
          *(v28 + 1) = v30;
          v28 += 4;
          v27 -= 32;
        }

        while (v27);
      }

      if (v3 < a2)
      {
        v31 = *a3;
        v32 = 4 * v3;
        do
        {
          v33 = &v26[v32];
          v34 = v31[1];
          *v33 = *v31;
          *(v33 + 1) = v34;
          v32 += 4;
        }

        while (4 * a2 != v32);
      }

      goto LABEL_31;
    }

    v19 = 32 * a2;
    if (32 * a2 / a2 == 32)
    {
      v20 = sub_270329DB0(a1, a2);
      v18 = v20;
      v21 = 0;
      v22 = *a3;
      do
      {
        v23 = &v20[v21 / 8];
        v24 = v22[1];
        *v23 = *v22;
        *(v23 + 1) = v24;
        v21 += 32;
      }

      while (v19 != v21);
LABEL_31:
      if (v18 != a1[4])
      {
        sub_270310E24(a1);
        a1[4] = v18;
      }

      *a1 = a2;
      return;
    }
  }

  sub_2703118DC(a1);
}

uint64_t *sub_2703315E4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_270331604(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_2703317EC(result);
}

unint64_t sub_27033161C(unint64_t **a1)
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
      sub_270315774(v7, v2, v2 + 1, v2 + 2, v2 + 3);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 4;
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

uint64_t sub_2703316E0(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_2703317D4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = off_288041570;
  sub_270318A3C();
}

uint64_t *sub_2703317EC(uint64_t *result)
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

BOOL sub_270331864(void *a1, uint64_t a2)
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

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[4 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2] && v5[3] == i[3]; i += 4)
  {
    v5 += 4;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_270331938(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_2703189A8();
  }

  return *a1;
}

uint64_t sub_2703319A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 32;
  return MEMORY[0x282206D00](a2, v3);
}

void sub_2703319B8(unint64_t *a1, unint64_t a2, __int128 **a3)
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
              v10 = sub_270329000(a1, a2);
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
                  v16 = *(v9 + v11 + 64);
                  v17 = *(v9 + v11 + 80);
                  v18 = *(v9 + v11 + 112);
                  *(v12 + 6) = *(v9 + v11 + 96);
                  *(v12 + 7) = v18;
                  *(v12 + 4) = v16;
                  *(v12 + 5) = v17;
                  v11 += 128;
                }

                while (v3 << 7 != v11);
              }
            }

            v19 = *a3;
            v20 = v3 << 7;
            do
            {
              v21 = (v7 + v20);
              v22 = *v19;
              v23 = v19[1];
              v24 = v19[3];
              v21[2] = v19[2];
              v21[3] = v24;
              *v21 = v22;
              v21[1] = v23;
              v25 = v19[4];
              v26 = v19[5];
              v27 = v19[7];
              v21[6] = v19[6];
              v21[7] = v27;
              v21[4] = v25;
              v21[5] = v26;
              v20 += 128;
            }

            while (a2 << 7 != v20);
          }

          v28 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v40 = a2;
      }

      else
      {
        v40 = *a1;
      }

      v41 = sub_270329000(a1, a2);
      v28 = v41;
      if (v3)
      {
        v42 = v40 << 7;
        v43 = v41;
        do
        {
          v44 = *v7;
          v45 = *(v7 + 1);
          v46 = *(v7 + 3);
          *(v43 + 2) = *(v7 + 2);
          *(v43 + 3) = v46;
          *v43 = v44;
          *(v43 + 1) = v45;
          v47 = *(v7 + 4);
          v48 = *(v7 + 5);
          v49 = *(v7 + 7);
          *(v43 + 6) = *(v7 + 6);
          *(v43 + 7) = v49;
          *(v43 + 4) = v47;
          *(v43 + 5) = v48;
          v7 += 16;
          v43 += 16;
          v42 -= 128;
        }

        while (v42);
      }

      if (v3 < a2)
      {
        v50 = *a3;
        v51 = v3 << 7;
        do
        {
          v52 = (v41 + v51);
          v53 = *v50;
          v54 = v50[1];
          v55 = v50[3];
          v52[2] = v50[2];
          v52[3] = v55;
          *v52 = v53;
          v52[1] = v54;
          v56 = v50[4];
          v57 = v50[5];
          v58 = v50[7];
          v52[6] = v50[6];
          v52[7] = v58;
          v52[4] = v56;
          v52[5] = v57;
          v51 += 128;
        }

        while (a2 << 7 != v51);
      }

      goto LABEL_31;
    }

    v29 = a2 << 7;
    if ((a2 << 7) / a2 == 128)
    {
      v30 = sub_270329000(a1, a2);
      v28 = v30;
      v31 = 0;
      v32 = *a3;
      do
      {
        v33 = &v30[v31 / 8];
        v34 = *v32;
        v35 = v32[1];
        v36 = v32[3];
        *(v33 + 2) = v32[2];
        *(v33 + 3) = v36;
        *v33 = v34;
        *(v33 + 1) = v35;
        v37 = v32[4];
        v38 = v32[5];
        v39 = v32[7];
        *(v33 + 6) = v32[6];
        *(v33 + 7) = v39;
        *(v33 + 4) = v37;
        *(v33 + 5) = v38;
        v31 += 128;
      }

      while (v29 != v31);
LABEL_31:
      if (v28 != a1[4])
      {
        sub_270310E24(a1);
        a1[4] = v28;
      }

      *a1 = a2;
      return;
    }
  }

  sub_2703118DC(a1);
}

uint64_t *sub_270331C14(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}