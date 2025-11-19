void sub_2713DFA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if ((a19 & 1) != 0 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713DFA84(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_2713DB358(v10, a2);
  sub_2713DFBB4(a1, v10, a3);
  if (v22 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
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

      v21 = v5;
      operator delete(v7);
    }
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2713DFB9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2713DFBB4(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  sub_2713BA8E0(&v7, a1, a2 + 8);
  if (*(a2 + 48) == 1)
  {
    v9 = 1;
    (*(*a1 + 80))(a1, &v9);
    result = (*(*a1 + 144))(a1, a2 + 24);
    if (a3 < 4)
    {
      return result;
    }
  }

  else
  {
    v8 = 0;
    result = (*(*a1 + 80))(a1, &v8);
    if (a3 < 4)
    {
      return result;
    }
  }

  if (*(a2 + 72) == 1)
  {
    v11 = 1;
    (*(*a1 + 80))(a1, &v11);
    return sub_2713BA8E0(&v12, a1, a2 + 56);
  }

  else
  {
    v10 = 0;
    return (*(*a1 + 80))(a1, &v10);
  }
}

void sub_2713DFD48(_BYTE *a1, uint64_t a2)
{
  v5[0] = *a2;
  v5[8] = *(a2 + 8);
  v7 = 0;
  v8 = 0;
  __p = 0;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  sub_2713E01B4(a1, v5);
  sub_2713DFE20(v5[0], v5, a1);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_2713DFE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2713DFE20(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        LOWORD(v5) = *sub_271835268(a2 + 8);
        return (*(*a3 + 48))(a3, &v5);
      }

      else
      {
        LODWORD(v5) = *sub_271835358(a2 + 8);
        return (*(*a3 + 56))(a3, &v5);
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          v5 = *sub_271835448(a2 + 8);
          return (*(*a3 + 72))(a3, &v5);
        case 11:
          LODWORD(v5) = *sub_271835538(a2 + 8);
          return (*(*a3 + 128))(a3, &v5);
        case 12:
          v5 = *sub_271835628(a2 + 8);
          return (*(*a3 + 136))(a3, &v5);
        default:
          goto LABEL_23;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_23;
      }

      LOWORD(v5) = *sub_271834EA8(a2 + 8);
      return (*(*a3 + 96))(a3, &v5);
    }

    else
    {
      LOBYTE(v5) = *sub_271834C28(a2 + 8);
      return (*(*a3 + 80))(a3, &v5);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        LODWORD(v5) = *sub_271834F98(a2 + 8);
        return (*(*a3 + 104))(a3, &v5);
      case 3:
        v5 = *sub_271835088(a2 + 8);
        return (*(*a3 + 120))(a3, &v5);
      case 5:
        LOBYTE(v5) = *sub_271835178(a2 + 8);
        return (*(*a3 + 88))(a3, &v5);
      default:
LABEL_23:

        sub_27183428C(a1);
    }
  }
}

uint64_t sub_2713E01B4(_BYTE *a1, _BYTE *a2)
{
  if ((a1[12] & 2) != 0)
  {
    v4 = 0;
    sub_2711E6DB4();
  }

  v3[0] = *a2;
  return (*(*a1 + 80))(a1, v3);
}

void sub_2713E02D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E02F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713E0308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2713E031C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 176);
  if (v3 != -1)
  {
    if (!v3)
    {
      sub_2713BCEE8(a1, a2);
      return a1;
    }

    v5 = a2;
    (off_288131910[v3])(&v14, a1);
    a2 = v5;
  }

  *(a1 + 176) = -1;
  v6 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 8) = v6;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v7 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v7;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    *(a1 + 48) = 1;
  }

  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  *(a1 + 80) = 0;
  *(a1 + 72) = v9;
  *(a1 + 56) = v8;
  *(a1 + 104) = 0;
  if (*(a2 + 104) != 1)
  {
    *(a1 + 112) = 0;
    v10 = a1 + 112;
    *(a1 + 136) = 0;
    if (*(a2 + 136) != 1)
    {
      goto LABEL_9;
    }

LABEL_13:
    v13 = *(a2 + 112);
    *(v10 + 16) = *(a2 + 128);
    *v10 = v13;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    *(a1 + 136) = 1;
    *(a1 + 144) = 0;
    v11 = (a1 + 144);
    *(a1 + 168) = 0;
    if (*(a2 + 168) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v12;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  v10 = a1 + 112;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    goto LABEL_13;
  }

LABEL_9:
  *(a1 + 144) = 0;
  v11 = (a1 + 144);
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
LABEL_10:
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 0;
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a1 + 168) = 1;
  }

LABEL_11:
  *(a1 + 176) = 0;
  return a1;
}

void sub_2713E04D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = *(a2 + 32);
  v5 = sub_27182D6C4(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v5;
  sub_27182D194(a2 + 40, v7);
  sub_2717313F0(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8 = 2;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_27182EB6C(a2, &v8);
  if (v8 >= 2)
  {
    v6 = *(a2 + 104);
    *(a2 + 88) = "value_type";
    *(a2 + 96) = 10;
    if ((v6 & 1) == 0)
    {
      *(a2 + 104) = 1;
    }

    v7[0] = a3;
    sub_2713E0CC8(a2);
  }

  sub_2713E0600();
}

void sub_2713E0600()
{
  v0 = 7;
  v1 = 7;
  operator new();
}

void sub_2713E0760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E0780(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        LODWORD(v16) = 0;
        v6 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v6 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_27182EAD4(a2, &v16);
        operator new();
      }

      LOWORD(v16) = 0;
      v8 = *(a2 + 104);
      *(a2 + 88) = "number";
      *(a2 + 96) = 6;
      if ((v8 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_27182E9A4(a2, &v16);
      operator new();
    }

    switch(a1)
    {
      case 8:
        v10 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v10 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        v11 = sub_27182D6C4(a2);
        ++*(a2 + 112);
        v16 = 0;
        sub_2715D6A90(v11, &v16);
        operator new();
      case 11:
        v14 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v14 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        v15 = sub_27182D6C4(a2);
        ++*(a2 + 112);
        sub_271833EE4(v15);
        operator new();
      case 12:
        v16 = 0;
        v4 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v4 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_27182EC04(a2, &v16);
        operator new();
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v16) = 0;
      v7 = *(a2 + 104);
      *(a2 + 88) = "number";
      *(a2 + 96) = 6;
      if ((v7 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_27182E90C(a2, &v16);
      operator new();
    }

    if (a1 == 1)
    {
      LOWORD(v16) = 0;
      v5 = *(a2 + 104);
      *(a2 + 88) = "number";
      *(a2 + 96) = 6;
      if ((v5 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_27182EA3C(a2, &v16);
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        LODWORD(v16) = 0;
        v9 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v9 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_27182EB6C(a2, &v16);
        operator new();
      case 3:
        v12 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v12 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        v13 = sub_27182D6C4(a2);
        ++*(a2 + 112);
        v16 = 0;
        sub_2715D693C(v13, &v16);
        operator new();
      case 5:
        LOBYTE(v16) = 0;
        v3 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v3 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_27182E874(a2, &v16);
        operator new();
    }
  }

  sub_27183428C(a1);
}

void sub_2713E0CC8(void *a1)
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

void sub_2713E0DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void sub_2713E0E4C(uint64_t a1, uint64_t a2, _BYTE *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    v8 = 0;
    sub_27183FF6C(*(a2 + 48), &v8);
    *&v7 = (*(*(a2 + 16) + 32))(a2 + 16);
    *(&v7 + 1) = v8;
    sub_2713BF82C(a2 + 24, &v7);
    LOBYTE(v7) = 0;
    sub_27183F824(*(a2 + 48), &v7);
    v6 = v7;
    *a3 = v7;
    sub_2713E10EC(v6, a2);
  }

  sub_2713E0F8C();
}

void sub_2713E10CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E10EC(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        LODWORD(v2) = 0;
        sub_27183FACC(*(a2 + 48), &v2);
        operator new();
      }

      LOWORD(v2) = 0;
      sub_27183F920(*(a2 + 48), &v2);
      operator new();
    }

    switch(a1)
    {
      case 8:
        v2 = 0;
        sub_27183FE6C(*(a2 + 48), &v2);
        operator new();
      case 11:
        LODWORD(v2) = 0;
        sub_271840060(*(a2 + 48), &v2);
        operator new();
      case 12:
        v2 = 0;
        sub_2718401A8(*(a2 + 48), &v2);
        operator new();
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v2) = 0;
      sub_27183F824(*(a2 + 48), &v2);
      operator new();
    }

    if (a1 == 1)
    {
      LOWORD(v2) = 0;
      sub_27183F9D0(*(a2 + 48), &v2);
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        LODWORD(v2) = 0;
        sub_27183FB7C(*(a2 + 48), &v2);
        operator new();
      case 3:
        v2 = 0;
        sub_27183FF6C(*(a2 + 48), &v2);
        operator new();
      case 5:
        LOBYTE(v2) = 0;
        sub_27183F774(*(a2 + 48), &v2);
        operator new();
    }
  }

  sub_27183428C(a1);
}

void sub_2713E14B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = *(a2 + 32);
  v5 = sub_27182D2AC(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v5;
  sub_27182D194(a2 + 40, v7);
  sub_2717313F0(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8 = 2;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_27182DBE0(a2, &v8);
  if (v8 >= 2)
  {
    v6 = *(a2 + 104);
    *(a2 + 88) = "value_type";
    *(a2 + 96) = 10;
    if ((v6 & 1) == 0)
    {
      *(a2 + 104) = 1;
    }

    v7[0] = a3;
    sub_2713E1CA0(a2);
  }

  sub_2713E15D8();
}

void sub_2713E15D8()
{
  v0 = 7;
  v1 = 7;
  operator new();
}

void sub_2713E1738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E1758(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        LODWORD(v16) = 0;
        v6 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v6 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_27182DB48(a2, &v16);
        operator new();
      }

      LOWORD(v16) = 0;
      v8 = *(a2 + 104);
      *(a2 + 88) = "number";
      *(a2 + 96) = 6;
      if ((v8 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_27182DA18(a2, &v16);
      operator new();
    }

    switch(a1)
    {
      case 8:
        v10 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v10 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        v11 = sub_27182D2AC(a2);
        ++*(a2 + 112);
        v16 = 0;
        sub_2715D6290(v11, &v16);
        operator new();
      case 11:
        v14 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v14 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        v15 = sub_27182D2AC(a2);
        ++*(a2 + 112);
        sub_2718338E8(v15);
        operator new();
      case 12:
        v16 = 0;
        v4 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v4 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_27182DC78(a2, &v16);
        operator new();
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v16) = 0;
      v7 = *(a2 + 104);
      *(a2 + 88) = "number";
      *(a2 + 96) = 6;
      if ((v7 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_27182D980(a2, &v16);
      operator new();
    }

    if (a1 == 1)
    {
      LOWORD(v16) = 0;
      v5 = *(a2 + 104);
      *(a2 + 88) = "number";
      *(a2 + 96) = 6;
      if ((v5 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_27182DAB0(a2, &v16);
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        LODWORD(v16) = 0;
        v9 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v9 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_27182DBE0(a2, &v16);
        operator new();
      case 3:
        v12 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v12 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        v13 = sub_27182D2AC(a2);
        ++*(a2 + 112);
        v16 = 0;
        sub_2715D613C(v13, &v16);
        operator new();
      case 5:
        LOBYTE(v16) = 0;
        v3 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v3 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_27182D8E8(a2, &v16);
        operator new();
    }
  }

  sub_27183428C(a1);
}

void sub_2713E1CA0(void *a1)
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

void sub_2713E1D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void sub_2713E1F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E1F84(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        LODWORD(v2) = 0;
        sub_27183A66C(a2, &v2);
        operator new();
      }

      LOWORD(v2) = 0;
      sub_271839FEC(a2, &v2);
      operator new();
    }

    switch(a1)
    {
      case 8:
        v2 = 0;
        sub_27183B36C(a2, &v2);
        operator new();
      case 11:
        LODWORD(v2) = 0;
        sub_27183BD60(a2, &v2);
        operator new();
      case 12:
        v2 = 0;
        sub_27183C0A0(a2, &v2);
        operator new();
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v2) = 0;
      sub_271839D90(a2, &v2);
      operator new();
    }

    if (a1 == 1)
    {
      LOWORD(v2) = 0;
      sub_27183A32C(a2, &v2);
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        LODWORD(v2) = 0;
        sub_27183A9AC(a2, &v2);
        operator new();
      case 3:
        v2 = 0;
        sub_27183B6AC(a2, &v2);
        operator new();
      case 5:
        LOBYTE(v2) = 0;
        sub_271839B34(a2, &v2);
        operator new();
    }
  }

  sub_27183428C(a1);
}

void sub_2713E234C(uint64_t a1, void *a2, _BYTE *a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 > 3)
  {
    v8 = *(a2[3] + v3);
    a2[6] = v3 + 4;
    if (v8 <= 1)
    {
      sub_2713E2494();
    }

    sub_27173170C(a2);
    v10 = a2[6];
    if (a2[7] > v10)
    {
      v11 = *(a2[3] + v10);
      a2[6] = v10 + 1;
      *a3 = v11;
      sub_2713E2664(v11, a2, a3);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E2494()
{
  v0 = 7;
  v1 = 7;
  operator new();
}

void sub_2713E2634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  __cxa_free_exception(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713E2664(int a1, void *a2, uint64_t a3)
{
  v17[0] = a2;
  v17[1] = a3;
  if (a1 > 5)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          sub_2713E2D14(v17);
        case 11:
          sub_2713E2E04(v17);
        case 12:
          sub_2713E2EF4(v17);
      }

      goto LABEL_31;
    }

    if (a1 != 6)
    {
      sub_2713E2C24(v17);
    }

    v12 = a2[6];
    v13 = a2[7];
    v7 = v13 >= v12;
    v14 = v13 - v12;
    if (!v7)
    {
      v14 = 0;
    }

    if (v14 > 1)
    {
      v15 = *(a2[3] + v12);
      a2[6] = v12 + 2;
      operator new();
    }
  }

  else
  {
    if (a1 > 1)
    {
      switch(a1)
      {
        case 2:
          sub_2713E2A44(v17);
        case 3:
          sub_2713E2B34(v17);
        case 5:
          v3 = a2[6];
          if (a2[7] > v3)
          {
            v4 = *(a2[3] + v3);
            a2[6] = v3 + 1;
            operator new();
          }

          goto LABEL_34;
      }

LABEL_31:

      sub_27183428C(a1);
    }

    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_31;
      }

      v5 = a2[6];
      v6 = a2[7];
      v7 = v6 >= v5;
      v8 = v6 - v5;
      if (!v7)
      {
        v8 = 0;
      }

      if (v8 > 1)
      {
        v9 = *(a2[3] + v5);
        a2[6] = v5 + 2;
        operator new();
      }
    }

    else
    {
      v10 = a2[6];
      if (a2[7] > v10)
      {
        v11 = *(a2[3] + v10);
        a2[6] = v10 + 1;
        operator new();
      }
    }
  }

LABEL_34:
  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E2A44(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 3)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 4;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E2B34(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 8;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E2C24(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 3)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 4;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E2D14(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 8;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E2E04(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 3)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 4;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E2EF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 8;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E2FE4(int a1, void *a2, uint64_t a3)
{
  v17[0] = a2;
  v17[1] = a3;
  if (a1 > 5)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          sub_2713E3694(v17);
        case 11:
          sub_2713E3784(v17);
        case 12:
          sub_2713E3874(v17);
      }

      goto LABEL_31;
    }

    if (a1 != 6)
    {
      sub_2713E35A4(v17);
    }

    v12 = a2[6];
    v13 = a2[7];
    v7 = v13 >= v12;
    v14 = v13 - v12;
    if (!v7)
    {
      v14 = 0;
    }

    if (v14 > 1)
    {
      v15 = *(a2[3] + v12);
      a2[6] = v12 + 2;
      operator new();
    }
  }

  else
  {
    if (a1 > 1)
    {
      switch(a1)
      {
        case 2:
          sub_2713E33C4(v17);
        case 3:
          sub_2713E34B4(v17);
        case 5:
          v3 = a2[6];
          if (a2[7] > v3)
          {
            v4 = *(a2[3] + v3);
            a2[6] = v3 + 1;
            operator new();
          }

          goto LABEL_34;
      }

LABEL_31:

      sub_27183428C(a1);
    }

    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_31;
      }

      v5 = a2[6];
      v6 = a2[7];
      v7 = v6 >= v5;
      v8 = v6 - v5;
      if (!v7)
      {
        v8 = 0;
      }

      if (v8 > 1)
      {
        v9 = *(a2[3] + v5);
        a2[6] = v5 + 2;
        operator new();
      }
    }

    else
    {
      v10 = a2[6];
      if (a2[7] > v10)
      {
        v11 = *(a2[3] + v10);
        a2[6] = v10 + 1;
        operator new();
      }
    }
  }

LABEL_34:
  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E33C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 3)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 4;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E34B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 8;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E35A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 3)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 4;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E3694(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 8;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E3784(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 3)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 4;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E3874(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 8;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713E3964(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  LODWORD(v7) = 2;
  (*(v5 + 104))(a2, &v7);
  if (v6 >= 1)
  {
    sub_2713E3A4C(&v6, a2, a3, v7);
  }

  if (v7 >= 2)
  {
    v7 = a3;
    sub_2713E42BC(a2, &v7);
    sub_2713E3DB4(*a3, a2);
  }

  sub_2713E3C54();
}

void sub_2713E3A4C(int *a1, _BYTE *a2, _BYTE *a3, unsigned int a4)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_10;
    }

    v7 = a4;
    v8 = a3;
    v12 = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_280878AB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878AB0))
      {
        sub_2718519B4("cv3d::kit::commonio::NumberSample]", 0x21uLL, &stru_280878A98);
        __cxa_guard_release(&qword_280878AB0);
        sub_271847D5C(&stru_280878A98, v11, 2u);
      }

      sub_271847D5C(&stru_280878A98, v11, 2u);
    }

    v5 = *a1;
    a3 = v8;
    a4 = v7;
  }

  if (a4 >= 2 && v5 >= 1)
  {
    v9 = a3;
    (*(*a2 + 16))(a2);
    v13 = v9;
    sub_2713E42BC(a2, &v13);
    sub_2713E3DB4(*v9, a2);
  }

  if (a4 > 1)
  {
    v13 = a3;
    v10 = a3;
    sub_2713E42BC(a2, &v13);
    sub_2713E3DB4(*v10, a2);
  }

LABEL_10:
  sub_2713E3C54();
}

void sub_2713E3C54()
{
  v0 = 7;
  v1 = 7;
  operator new();
}

void sub_2713E3D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E3DB4(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        LODWORD(v2) = 0;
        (*(*a2 + 56))(a2, &v2);
        operator new();
      }

      LOWORD(v2) = 0;
      (*(*a2 + 48))(a2, &v2);
      operator new();
    }

    switch(a1)
    {
      case 8:
        v2 = 0;
        (*(*a2 + 72))(a2, &v2);
        operator new();
      case 11:
        LODWORD(v2) = 0;
        (*(*a2 + 128))(a2, &v2);
        operator new();
      case 12:
        v2 = 0;
        (*(*a2 + 136))(a2, &v2);
        operator new();
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v2) = 0;
      (*(*a2 + 80))(a2, &v2);
      operator new();
    }

    if (a1 == 1)
    {
      LOWORD(v2) = 0;
      (*(*a2 + 96))(a2, &v2);
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        LODWORD(v2) = 0;
        (*(*a2 + 104))(a2, &v2);
        operator new();
      case 3:
        v2 = 0;
        (*(*a2 + 120))(a2, &v2);
        operator new();
      case 5:
        LOBYTE(v2) = 0;
        (*(*a2 + 88))(a2, &v2);
        operator new();
    }
  }

  sub_27183428C(a1);
}

uint64_t sub_2713E42BC(_BYTE *a1, _BYTE **a2)
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

void sub_2713E43E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_27184D728(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2713E4434(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5[25] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *a4;
  sub_27113523C(v5, a4 + 1);
  operator new();
}

void sub_2713E4874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 8))(v9);
  sub_2713E48D8(&a9);
  _Unwind_Resume(a1);
}

void *sub_2713E48D8(void *a1)
{
  *a1 = &unk_28812E7F0;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812E838;
  v3 = a1[3];
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

void sub_2713E4998(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v2 = *(a2 + 3);
  v4 = *(a2 + 2);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = "value_type";
  v6[1] = 10;
  v6[2] = &v3;
  sub_2713DB624(a1, v6);
}

void sub_2713E4B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CC40C((v9 + 8), 6);
  sub_2713AF0E4(&a9);
  _Unwind_Resume(a1);
}

void sub_2713E4B5C(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 5)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        sub_271759D80((a2 + 16), 0);
        v21 = *(a2 + 16);
        v22 = *(v21 + 40);
        v23 = *(v21 + 48);
        if (**(a3 + 40) <= 1u)
        {
          v24 = *(a3 + 88);
          *(a3 + 72) = "numbers";
          *(a3 + 80) = 7;
          if ((v24 & 1) == 0)
          {
            *(a3 + 88) = 1;
          }
        }

        v45 = v22;
        v46 = v23;
        sub_271828DE4(a3, &v45);
      }

      if (a1 == 1)
      {
        sub_271759D80((a2 + 16), 1);
        v13 = *(a2 + 16);
        v14 = *(v13 + 40);
        v15 = *(v13 + 48) >> 1;
        if (**(a3 + 40) <= 1u)
        {
          v16 = *(a3 + 88);
          *(a3 + 72) = "numbers";
          *(a3 + 80) = 7;
          if ((v16 & 1) == 0)
          {
            *(a3 + 88) = 1;
          }
        }

        v45 = v14;
        v46 = v15;
        sub_27182B768(a3, &v45);
      }
    }

    else
    {
      switch(a1)
      {
        case 2:
          sub_271759D80((a2 + 16), 2);
          v29 = *(a2 + 16);
          v30 = *(v29 + 40);
          v31 = *(v29 + 48) >> 2;
          if (**(a3 + 40) <= 1u)
          {
            v32 = *(a3 + 88);
            *(a3 + 72) = "numbers";
            *(a3 + 80) = 7;
            if ((v32 & 1) == 0)
            {
              *(a3 + 88) = 1;
            }
          }

          v45 = v30;
          v46 = v31;
          sub_27182BA78(a3, &v45);
        case 3:
          sub_271759D80((a2 + 16), 3);
          v37 = *(a2 + 16);
          v38 = *(v37 + 40);
          v39 = *(v37 + 48) >> 3;
          if (**(a3 + 40) <= 1u)
          {
            v40 = *(a3 + 88);
            *(a3 + 72) = "numbers";
            *(a3 + 80) = 7;
            if ((v40 & 1) == 0)
            {
              *(a3 + 88) = 1;
            }
          }

          v45 = v38;
          v46 = v39;
          sub_27182C098(a3, &v45);
        case 5:
          sub_271759D80((a2 + 16), 5);
          v5 = *(a2 + 16);
          v6 = *(v5 + 40);
          v7 = *(v5 + 48);
          if (**(a3 + 40) <= 1u)
          {
            v8 = *(a3 + 88);
            *(a3 + 72) = "numbers";
            *(a3 + 80) = 7;
            if ((v8 & 1) == 0)
            {
              *(a3 + 88) = 1;
            }
          }

          v45 = v6;
          v46 = v7;
          sub_27182B474(a3, &v45);
      }
    }

LABEL_53:

    sub_27183428C(a1);
  }

  if (a1 <= 7)
  {
    if (a1 != 6)
    {
      sub_271759D80((a2 + 16), 7);
      v17 = *(a2 + 16);
      v18 = *(v17 + 40);
      v19 = *(v17 + 48) >> 2;
      if (**(a3 + 40) <= 1u)
      {
        v20 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v20 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v18;
      v46 = v19;
      sub_27182B8F0(a3, &v45);
    }

    sub_271759D80((a2 + 16), 6);
    v25 = *(a2 + 16);
    v26 = *(v25 + 40);
    v27 = *(v25 + 48) >> 1;
    if (**(a3 + 40) <= 1u)
    {
      v28 = *(a3 + 88);
      *(a3 + 72) = "numbers";
      *(a3 + 80) = 7;
      if ((v28 & 1) == 0)
      {
        *(a3 + 88) = 1;
      }
    }

    v45 = v26;
    v46 = v27;
    sub_27182B5E0(a3, &v45);
  }

  switch(a1)
  {
    case 8:
      sub_271759D80((a2 + 16), 8);
      v33 = *(a2 + 16);
      v34 = *(v33 + 40);
      v35 = *(v33 + 48) >> 3;
      if (**(a3 + 40) <= 1u)
      {
        v36 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v36 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v34;
      v46 = v35;
      sub_27182BF10(a3, &v45);
    case 11:
      sub_271759D80((a2 + 16), 11);
      v41 = *(a2 + 16);
      v42 = *(v41 + 40);
      v43 = *(v41 + 48) >> 2;
      if (**(a3 + 40) <= 1u)
      {
        v44 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v44 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v42;
      v46 = v43;
      sub_27182C644(a3, &v45);
      break;
    case 12:
      sub_271759D80((a2 + 16), 12);
      v9 = *(a2 + 16);
      v10 = *(v9 + 40);
      v11 = *(v9 + 48) >> 3;
      if (**(a3 + 40) <= 1u)
      {
        v12 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v12 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v10;
      v46 = v11;
      sub_27182CAA4(a3, &v45);
      break;
    default:
      goto LABEL_53;
  }
}

void sub_2713E5004(uint64_t a1, __int128 *a2)
{
  v8 = *a2;
  v3 = *(a2 + 3);
  v9 = *(a2 + 2);
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v8;
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v12 = (v4 + 16);
    sub_2718454CC(&v12, &v11);
  }

  else
  {
    if (v8 < 0)
    {
      LOBYTE(v12) = -52;
      BYTE1(v12) = v8;
    }

    else
    {
      LOBYTE(v12) = v8;
    }

    v5 = *(v4 + 8);
    std::ostream::write();
  }

  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    v12 = (v6 + 16);
    sub_271846AEC(&v12, *(&v8 + 1));
  }

  else
  {
    sub_271846E00((v6 + 8));
  }

  sub_2713E5164(v8, &v8, a1);
  v7 = v10;
  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

uint64_t sub_2713E5164(int a1, uint64_t a2, uint64_t a3)
{
  v90 = *MEMORY[0x277D85DE8];
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        result = sub_271759D80((a2 + 16), 6);
        v30 = *(a2 + 16);
        v32 = *(v30 + 40);
        v31 = *(v30 + 48);
        v33 = v31 >> 1;
        v34 = *(a3 + 24);
        if (*(v34 + 40) == 1)
        {
          *&v89 = v34 + 16;
          if (v31 >= 2)
          {
            v35 = 2 * v33;
            do
            {
              v36 = *v32++;
              result = sub_27184561C(&v89, v36);
              v35 -= 2;
            }

            while (v35);
          }
        }

        else if (v31 >= 2)
        {
          v70 = 2 * v33;
          do
          {
            v71 = *v32++;
            result = sub_2718458EC((v34 + 8));
            v70 -= 2;
          }

          while (v70);
        }
      }

      else
      {
        result = sub_271759D80((a2 + 16), 7);
        v19 = *(a2 + 16);
        v21 = *(v19 + 40);
        v20 = *(v19 + 48);
        v22 = v20 >> 2;
        v23 = *(a3 + 24);
        if (*(v23 + 40) == 1)
        {
          *&v89 = v23 + 16;
          if (v20 >= 4)
          {
            v24 = 4 * v22;
            do
            {
              v25 = *v21++;
              result = sub_271845BC4(&v89, v25);
              v24 -= 4;
            }

            while (v24);
          }
        }

        else if (v20 >= 4)
        {
          v65 = 4 * v22;
          do
          {
            v66 = *v21++;
            result = sub_271845FEC((v23 + 8));
            v65 -= 4;
          }

          while (v65);
        }
      }

      goto LABEL_99;
    }

    switch(a1)
    {
      case 8:
        result = sub_271759D80((a2 + 16), 8);
        v44 = *(a2 + 16);
        v46 = *(v44 + 40);
        v45 = *(v44 + 48);
        v47 = v45 >> 3;
        v48 = *(a3 + 24);
        if (*(v48 + 40) == 1)
        {
          *&v89 = v48 + 16;
          if (v45 >= 8)
          {
            v49 = 8 * v47;
            do
            {
              v50 = *v46++;
              result = sub_271846460(&v89, v50);
              v49 -= 8;
            }

            while (v49);
          }
        }

        else if (v45 >= 8)
        {
          v74 = 8 * v47;
          do
          {
            v75 = *v46++;
            result = sub_2718469A8((v48 + 8), v75);
            v74 -= 8;
          }

          while (v74);
        }

        goto LABEL_99;
      case 11:
        result = sub_271759D80((a2 + 16), 11);
        v58 = *(a2 + 16);
        v60 = *(v58 + 40);
        v59 = *(v58 + 48);
        v61 = v59 >> 2;
        v62 = *(a3 + 24);
        if (*(v62 + 40) == 1)
        {
          *&v89 = v62 + 16;
          if (v59 >= 4)
          {
            v63 = 4 * v61;
            do
            {
              result = sub_271846EFC(&v88, &v89, v60++);
              v63 -= 4;
            }

            while (v63);
          }
        }

        else if (v59 >= 4)
        {
          v84 = 4 * v61;
          do
          {
            v85 = *v60++;
            LOBYTE(v89) = -54;
            *(&v89 + 1) = bswap32(v85);
            v86 = *(v62 + 8);
            result = std::ostream::write();
            v84 -= 4;
          }

          while (v84);
        }

        goto LABEL_99;
      case 12:
        result = sub_271759D80((a2 + 16), 12);
        v10 = *(a2 + 16);
        v12 = *(v10 + 40);
        v11 = *(v10 + 48);
        v13 = v11 >> 3;
        v14 = *(a3 + 24);
        if (*(v14 + 40) == 1)
        {
          *&v89 = v14 + 16;
          if (v11 >= 8)
          {
            v15 = 8 * v13;
            do
            {
              result = sub_271846FE4(&v88, &v89, v12++);
              v15 -= 8;
            }

            while (v15);
          }
        }

        else if (v11 >= 8)
        {
          v79 = 8 * v13;
          do
          {
            v80 = *v12++;
            LOBYTE(v89) = -53;
            *(&v89 + 1) = bswap64(v80);
            v81 = *(v14 + 8);
            result = std::ostream::write();
            v79 -= 8;
          }

          while (v79);
        }

        goto LABEL_99;
    }

    goto LABEL_57;
  }

  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        result = sub_271759D80((a2 + 16), 2);
        v37 = *(a2 + 16);
        v39 = *(v37 + 40);
        v38 = *(v37 + 48);
        v40 = v38 >> 2;
        v41 = *(a3 + 24);
        if (*(v41 + 40) == 1)
        {
          *&v89 = v41 + 16;
          if (v38 >= 4)
          {
            v42 = 4 * v40;
            do
            {
              v43 = *v39++;
              result = sub_2718460EC(&v89, v43);
              v42 -= 4;
            }

            while (v42);
          }
        }

        else if (v38 >= 4)
        {
          v72 = 4 * v40;
          do
          {
            v73 = *v39++;
            result = sub_27184636C(&v89, (v41 + 8));
            v72 -= 4;
          }

          while (v72);
        }

        goto LABEL_99;
      case 3:
        result = sub_271759D80((a2 + 16), 3);
        v51 = *(a2 + 16);
        v53 = *(v51 + 40);
        v52 = *(v51 + 48);
        v54 = v52 >> 3;
        v55 = *(a3 + 24);
        if (*(v55 + 40) == 1)
        {
          *&v89 = v55 + 16;
          if (v52 >= 8)
          {
            v56 = 8 * v54;
            do
            {
              v57 = *v53++;
              result = sub_271846AEC(&v89, v57);
              v56 -= 8;
            }

            while (v56);
          }
        }

        else if (v52 >= 8)
        {
          v82 = 8 * v54;
          do
          {
            v83 = *v53++;
            result = sub_271846E00((v55 + 8));
            v82 -= 8;
          }

          while (v82);
        }

        goto LABEL_99;
      case 5:
        result = sub_271759D80((a2 + 16), 5);
        v6 = *(a2 + 16);
        v7 = *(v6 + 40);
        v8 = *(v6 + 48);
        v9 = *(a3 + 24);
        if (*(v9 + 40) == 1)
        {
          for (*&v89 = v9 + 16; v8; --v8)
          {
            result = sub_271845378(&v89, v7++);
          }
        }

        else
        {
          for (; v8; --v8)
          {
            while (1)
            {
              v77 = *v7;
              if (v77 <= -33)
              {
                break;
              }

              LOBYTE(v89) = *v7;
              v76 = *(v9 + 8);
              result = std::ostream::write();
              ++v7;
              if (!--v8)
              {
                goto LABEL_99;
              }
            }

            LOBYTE(v89) = -48;
            BYTE1(v89) = v77;
            v78 = *(v9 + 8);
            result = std::ostream::write();
            ++v7;
          }
        }

        goto LABEL_99;
    }

LABEL_57:
    v64 = *MEMORY[0x277D85DE8];

    sub_27183428C(a1);
  }

  if (a1)
  {
    if (a1 == 1)
    {
      sub_271759D80((a2 + 16), 1);
      v16 = *(a2 + 16);
      v17 = *(v16 + 40);
      v18 = *(v16 + 48) >> 1;
      *&v89 = v17;
      *(&v89 + 1) = v18;
      result = sub_27183F518(a3, &v89);
      goto LABEL_99;
    }

    goto LABEL_57;
  }

  result = sub_271759D80((a2 + 16), 0);
  v26 = *(a2 + 16);
  v27 = *(v26 + 40);
  v28 = *(v26 + 48);
  v29 = *(a3 + 24);
  if (*(v29 + 40) == 1)
  {
    for (*&v89 = v29 + 16; v28; --v28)
    {
      result = sub_2718454CC(&v89, v27++);
    }
  }

  else
  {
    for (; v28; --v28)
    {
      while (1)
      {
        v68 = *v27;
        if ((v68 & 0x80000000) == 0)
        {
          break;
        }

        LOBYTE(v89) = -52;
        BYTE1(v89) = v68;
        v67 = *(v29 + 8);
        result = std::ostream::write();
        ++v27;
        if (!--v28)
        {
          goto LABEL_99;
        }
      }

      LOBYTE(v89) = *v27;
      v69 = *(v29 + 8);
      result = std::ostream::write();
      ++v27;
    }
  }

LABEL_99:
  v87 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2713E576C(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v2 = *(a2 + 3);
  v4 = *(a2 + 2);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = "value_type";
  v6[1] = 10;
  v6[2] = &v3;
  sub_2713DD5A4(a1, v6);
}

void sub_2713E58FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CA870((v9 + 8), 6);
  sub_2713AF0E4(&a9);
  _Unwind_Resume(a1);
}

void sub_2713E5930(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 5)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        sub_271759D80((a2 + 16), 0);
        v21 = *(a2 + 16);
        v22 = *(v21 + 40);
        v23 = *(v21 + 48);
        if (**(a3 + 40) <= 1u)
        {
          v24 = *(a3 + 88);
          *(a3 + 72) = "numbers";
          *(a3 + 80) = 7;
          if ((v24 & 1) == 0)
          {
            *(a3 + 88) = 1;
          }
        }

        v45 = v22;
        v46 = v23;
        sub_271828638(a3, &v45);
      }

      if (a1 == 1)
      {
        sub_271759D80((a2 + 16), 1);
        v13 = *(a2 + 16);
        v14 = *(v13 + 40);
        v15 = *(v13 + 48) >> 1;
        if (**(a3 + 40) <= 1u)
        {
          v16 = *(a3 + 88);
          *(a3 + 72) = "numbers";
          *(a3 + 80) = 7;
          if ((v16 & 1) == 0)
          {
            *(a3 + 88) = 1;
          }
        }

        v45 = v14;
        v46 = v15;
        sub_27182976C(a3, &v45);
      }
    }

    else
    {
      switch(a1)
      {
        case 2:
          sub_271759D80((a2 + 16), 2);
          v29 = *(a2 + 16);
          v30 = *(v29 + 40);
          v31 = *(v29 + 48) >> 2;
          if (**(a3 + 40) <= 1u)
          {
            v32 = *(a3 + 88);
            *(a3 + 72) = "numbers";
            *(a3 + 80) = 7;
            if ((v32 & 1) == 0)
            {
              *(a3 + 88) = 1;
            }
          }

          v45 = v30;
          v46 = v31;
          sub_271829A7C(a3, &v45);
        case 3:
          sub_271759D80((a2 + 16), 3);
          v37 = *(a2 + 16);
          v38 = *(v37 + 40);
          v39 = *(v37 + 48) >> 3;
          if (**(a3 + 40) <= 1u)
          {
            v40 = *(a3 + 88);
            *(a3 + 72) = "numbers";
            *(a3 + 80) = 7;
            if ((v40 & 1) == 0)
            {
              *(a3 + 88) = 1;
            }
          }

          v45 = v38;
          v46 = v39;
          sub_271829D8C(a3, &v45);
        case 5:
          sub_271759D80((a2 + 16), 5);
          v5 = *(a2 + 16);
          v6 = *(v5 + 40);
          v7 = *(v5 + 48);
          if (**(a3 + 40) <= 1u)
          {
            v8 = *(a3 + 88);
            *(a3 + 72) = "numbers";
            *(a3 + 80) = 7;
            if ((v8 & 1) == 0)
            {
              *(a3 + 88) = 1;
            }
          }

          v45 = v6;
          v46 = v7;
          sub_271829478(a3, &v45);
      }
    }

LABEL_53:

    sub_27183428C(a1);
  }

  if (a1 <= 7)
  {
    if (a1 != 6)
    {
      sub_271759D80((a2 + 16), 7);
      v17 = *(a2 + 16);
      v18 = *(v17 + 40);
      v19 = *(v17 + 48) >> 2;
      if (**(a3 + 40) <= 1u)
      {
        v20 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v20 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v18;
      v46 = v19;
      sub_2718298F4(a3, &v45);
    }

    sub_271759D80((a2 + 16), 6);
    v25 = *(a2 + 16);
    v26 = *(v25 + 40);
    v27 = *(v25 + 48) >> 1;
    if (**(a3 + 40) <= 1u)
    {
      v28 = *(a3 + 88);
      *(a3 + 72) = "numbers";
      *(a3 + 80) = 7;
      if ((v28 & 1) == 0)
      {
        *(a3 + 88) = 1;
      }
    }

    v45 = v26;
    v46 = v27;
    sub_2718295E4(a3, &v45);
  }

  switch(a1)
  {
    case 8:
      sub_271759D80((a2 + 16), 8);
      v33 = *(a2 + 16);
      v34 = *(v33 + 40);
      v35 = *(v33 + 48) >> 3;
      if (**(a3 + 40) <= 1u)
      {
        v36 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v36 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v34;
      v46 = v35;
      sub_271829C04(a3, &v45);
    case 11:
      sub_271759D80((a2 + 16), 11);
      v41 = *(a2 + 16);
      v42 = *(v41 + 40);
      v43 = *(v41 + 48) >> 2;
      if (**(a3 + 40) <= 1u)
      {
        v44 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v44 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v42;
      v46 = v43;
      sub_27182A338(a3, &v45);
      break;
    case 12:
      sub_271759D80((a2 + 16), 12);
      v9 = *(a2 + 16);
      v10 = *(v9 + 40);
      v11 = *(v9 + 48) >> 3;
      if (**(a3 + 40) <= 1u)
      {
        v12 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v12 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v10;
      v46 = v11;
      sub_27182A798(a3, &v45);
      break;
    default:
      goto LABEL_53;
  }
}

void sub_2713E5DD8(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v3 = *(a2 + 3);
  v7 = *(a2 + 2);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v6;
  sub_2718388F8(a1, &v9);
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v9 = *(a1 + 32);
    sub_271120E64(v4, &v9, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), *(&v6 + 1));
  ++*(a1 + 40);
  sub_2713E5EE8(v6, &v6, a1);
  v5 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_2713E5EE8(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_271759D80((a2 + 16), 6);
        v31 = *(a2 + 16);
        v32 = *(v31 + 48);
        if (v32 >= 2)
        {
          v33 = *(v31 + 40);
          v34 = v32 >> 1;
          v35 = *(a3 + 40);
          v36 = 2 * v34;
          do
          {
            if (v35)
            {
              v38 = *(a3 + 24);
              v70 = *(a3 + 32);
              sub_271120E64(v38, &v70, 1);
            }

            v37 = *v33++;
            MEMORY[0x2743BE820](*(a3 + 24), v37);
            v35 = *(a3 + 40) + 1;
            *(a3 + 40) = v35;
            v36 -= 2;
          }

          while (v36);
        }
      }

      else
      {
        sub_271759D80((a2 + 16), 7);
        v20 = *(a2 + 16);
        v21 = *(v20 + 48);
        if (v21 >= 4)
        {
          v22 = *(v20 + 40);
          v23 = v21 >> 2;
          v24 = *(a3 + 40);
          v25 = 4 * v23;
          do
          {
            if (v24)
            {
              v27 = *(a3 + 24);
              v71 = *(a3 + 32);
              sub_271120E64(v27, &v71, 1);
            }

            v26 = *v22++;
            MEMORY[0x2743BE7E0](*(a3 + 24), v26);
            v24 = *(a3 + 40) + 1;
            *(a3 + 40) = v24;
            v25 -= 4;
          }

          while (v25);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_271759D80((a2 + 16), 8);
          v47 = *(a2 + 16);
          v48 = *(v47 + 48);
          if (v48 >= 8)
          {
            v49 = *(v47 + 40);
            v50 = v48 >> 3;
            v51 = *(a3 + 40);
            v52 = 8 * v50;
            do
            {
              if (v51)
              {
                v54 = *(a3 + 24);
                v72 = *(a3 + 32);
                sub_271120E64(v54, &v72, 1);
              }

              v53 = *v49++;
              MEMORY[0x2743BE840](*(a3 + 24), v53);
              v51 = *(a3 + 40) + 1;
              *(a3 + 40) = v51;
              v52 -= 8;
            }

            while (v52);
          }

          break;
        case 11:
          sub_271759D80((a2 + 16), 11);
          v63 = *(a2 + 16);
          v64 = *(v63 + 48);
          if (v64 >= 4)
          {
            v65 = *(v63 + 40);
            v66 = 4 * (v64 >> 2);
            do
            {
              sub_271838C54(a3, v65++);
              v66 -= 4;
            }

            while (v66);
          }

          break;
        case 12:
          sub_271759D80((a2 + 16), 12);
          v8 = *(a2 + 16);
          v9 = *(v8 + 48);
          if (v9 >= 8)
          {
            v10 = *(v8 + 40);
            v11 = 8 * (v9 >> 3);
            do
            {
              sub_271838EC0(a3, v10++);
              v11 -= 8;
            }

            while (v11);
          }

          break;
        default:
          goto LABEL_59;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_59;
      }

      sub_271759D80((a2 + 16), 1);
      v12 = *(a2 + 16);
      v13 = *(v12 + 48);
      if (v13 >= 2)
      {
        v14 = *(v12 + 40);
        v15 = v13 >> 1;
        v16 = *(a3 + 40);
        v17 = 2 * v15;
        do
        {
          if (v16)
          {
            v19 = *(a3 + 24);
            v67 = *(a3 + 32);
            sub_271120E64(v19, &v67, 1);
          }

          v18 = *v14++;
          MEMORY[0x2743BE830](*(a3 + 24), v18);
          v16 = *(a3 + 40) + 1;
          *(a3 + 40) = v16;
          v17 -= 2;
        }

        while (v17);
      }
    }

    else
    {
      sub_271759D80((a2 + 16), 0);
      v28 = *(a2 + 16);
      v29 = *(v28 + 48);
      if (v29)
      {
        v30 = *(v28 + 40);
        do
        {
          sub_2718388F8(a3, v30++);
          --v29;
        }

        while (v29);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271759D80((a2 + 16), 2);
        v39 = *(a2 + 16);
        v40 = *(v39 + 48);
        if (v40 >= 4)
        {
          v41 = *(v39 + 40);
          v42 = v40 >> 2;
          v43 = *(a3 + 40);
          v44 = 4 * v42;
          do
          {
            if (v43)
            {
              v46 = *(a3 + 24);
              v68 = *(a3 + 32);
              sub_271120E64(v46, &v68, 1);
            }

            v45 = *v41++;
            MEMORY[0x2743BE7F0](*(a3 + 24), v45);
            v43 = *(a3 + 40) + 1;
            *(a3 + 40) = v43;
            v44 -= 4;
          }

          while (v44);
        }

        break;
      case 3:
        sub_271759D80((a2 + 16), 3);
        v55 = *(a2 + 16);
        v56 = *(v55 + 48);
        if (v56 >= 8)
        {
          v57 = *(v55 + 40);
          v58 = v56 >> 3;
          v59 = *(a3 + 40);
          v60 = 8 * v58;
          do
          {
            if (v59)
            {
              v62 = *(a3 + 24);
              v69 = *(a3 + 32);
              sub_271120E64(v62, &v69, 1);
            }

            v61 = *v57++;
            MEMORY[0x2743BE850](*(a3 + 24), v61);
            v59 = *(a3 + 40) + 1;
            *(a3 + 40) = v59;
            v60 -= 8;
          }

          while (v60);
        }

        break;
      case 5:
        sub_271759D80((a2 + 16), 5);
        v5 = *(a2 + 16);
        v6 = *(v5 + 48);
        if (v6)
        {
          v7 = *(v5 + 40);
          do
          {
            sub_271838810(a3, v7++);
            --v6;
          }

          while (v6);
        }

        return;
      default:
LABEL_59:

        sub_27183428C(a1);
    }
  }
}

void sub_2713E6338(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __src = v5;
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v9, 1uLL);
  sub_27173318C(a1 + 24, *(a1 + 32), &v5 + 8, &v6, 8uLL);
  sub_2713E643C(v5, &v5, a1);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

char *sub_2713E643C(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          v7 = (a2 + 16);
          v8 = 8;
          break;
        case 11:
          v11 = (a2 + 16);
          v12 = 11;
          goto LABEL_26;
        case 12:
          v7 = (a2 + 16);
          v8 = 12;
          break;
        default:
          goto LABEL_30;
      }

LABEL_24:
      sub_271759D80(v7, v8);
      v17 = *(a2 + 16);
      v14 = *(v17 + 40);
      v15 = *(v17 + 48) & 0xFFFFFFFFFFFFFFF8;
      goto LABEL_27;
    }

    if (a1 != 6)
    {
      v11 = (a2 + 16);
      v12 = 7;
      goto LABEL_26;
    }

    v9 = (a2 + 16);
    v10 = 6;
LABEL_20:
    sub_271759D80(v9, v10);
    v16 = *(a2 + 16);
    v14 = *(v16 + 40);
    v15 = *(v16 + 48) & 0xFFFFFFFFFFFFFFFELL;
    goto LABEL_27;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      v5 = (a2 + 16);
      v6 = 0;
      goto LABEL_18;
    }

    if (a1 != 1)
    {
LABEL_30:

      sub_27183428C(a1);
    }

    v9 = (a2 + 16);
    v10 = 1;
    goto LABEL_20;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      if (a1 == 5)
      {
        v5 = (a2 + 16);
        v6 = 5;
LABEL_18:
        sub_271759D80(v5, v6);
        v13 = *(a2 + 16);
        v14 = *(v13 + 40);
        v15 = *(v13 + 48);
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    v7 = (a2 + 16);
    v8 = 3;
    goto LABEL_24;
  }

  v11 = (a2 + 16);
  v12 = 2;
LABEL_26:
  sub_271759D80(v11, v12);
  v18 = *(a2 + 16);
  v14 = *(v18 + 40);
  v15 = *(v18 + 48) & 0xFFFFFFFFFFFFFFFCLL;
LABEL_27:
  v19 = *(a3 + 32);

  return sub_27173318C(a3 + 24, v19, v14, &v14[v15], v15);
}

void sub_2713E65AC(_BYTE *a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2713E01B4(a1, &v5);
  (*(*a1 + 120))(a1, &v5 + 8);
  sub_2713E66AC(v5, &v5, a1);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

unsigned __int8 **sub_2713E66AC(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        result = sub_271759D80((a2 + 16), 6);
        v24 = *(a2 + 16);
        v25 = *(v24 + 48);
        if (v25 >= 2)
        {
          v26 = *(v24 + 40);
          v27 = 2 * (v25 >> 1);
          do
          {
            result = (*(*a3 + 48))(a3, v26);
            v26 += 2;
            v27 -= 2;
          }

          while (v27);
        }
      }

      else
      {
        result = sub_271759D80((a2 + 16), 7);
        v17 = *(a2 + 16);
        v18 = *(v17 + 48);
        if (v18 >= 4)
        {
          v19 = *(v17 + 40);
          v20 = 4 * (v18 >> 2);
          do
          {
            result = (*(*a3 + 56))(a3, v19);
            v19 += 4;
            v20 -= 4;
          }

          while (v20);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          result = sub_271759D80((a2 + 16), 8);
          v32 = *(a2 + 16);
          v33 = *(v32 + 48);
          if (v33 >= 8)
          {
            v34 = *(v32 + 40);
            v35 = 8 * (v33 >> 3);
            do
            {
              result = (*(*a3 + 72))(a3, v34);
              v34 += 8;
              v35 -= 8;
            }

            while (v35);
          }

          break;
        case 11:
          result = sub_271759D80((a2 + 16), 11);
          v40 = *(a2 + 16);
          v41 = *(v40 + 48);
          if (v41 >= 4)
          {
            v42 = *(v40 + 40);
            v43 = 4 * (v41 >> 2);
            do
            {
              result = (*(*a3 + 128))(a3, v42);
              v42 += 4;
              v43 -= 4;
            }

            while (v43);
          }

          break;
        case 12:
          result = sub_271759D80((a2 + 16), 12);
          v9 = *(a2 + 16);
          v10 = *(v9 + 48);
          if (v10 >= 8)
          {
            v11 = *(v9 + 40);
            v12 = 8 * (v10 >> 3);
            do
            {
              result = (*(*a3 + 136))(a3, v11);
              v11 += 8;
              v12 -= 8;
            }

            while (v12);
          }

          break;
        default:
          goto LABEL_53;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_53;
      }

      result = sub_271759D80((a2 + 16), 1);
      v13 = *(a2 + 16);
      v14 = *(v13 + 48);
      if (v14 >= 2)
      {
        v15 = *(v13 + 40);
        v16 = 2 * (v14 >> 1);
        do
        {
          result = (*(*a3 + 96))(a3, v15);
          v15 += 2;
          v16 -= 2;
        }

        while (v16);
      }
    }

    else
    {
      result = sub_271759D80((a2 + 16), 0);
      v21 = *(a2 + 16);
      v22 = *(v21 + 48);
      if (v22)
      {
        v23 = *(v21 + 40);
        do
        {
          result = (*(*a3 + 80))(a3, v23++);
          --v22;
        }

        while (v22);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        result = sub_271759D80((a2 + 16), 2);
        v28 = *(a2 + 16);
        v29 = *(v28 + 48);
        if (v29 >= 4)
        {
          v30 = *(v28 + 40);
          v31 = 4 * (v29 >> 2);
          do
          {
            result = (*(*a3 + 104))(a3, v30);
            v30 += 4;
            v31 -= 4;
          }

          while (v31);
        }

        break;
      case 3:
        result = sub_271759D80((a2 + 16), 3);
        v36 = *(a2 + 16);
        v37 = *(v36 + 48);
        if (v37 >= 8)
        {
          v38 = *(v36 + 40);
          v39 = 8 * (v37 >> 3);
          do
          {
            result = (*(*a3 + 120))(a3, v38);
            v38 += 8;
            v39 -= 8;
          }

          while (v39);
        }

        break;
      case 5:
        result = sub_271759D80((a2 + 16), 5);
        v6 = *(a2 + 16);
        v7 = *(v6 + 48);
        if (v7)
        {
          v8 = *(v6 + 40);
          do
          {
            result = (*(*a3 + 88))(a3, v8++);
            --v7;
          }

          while (v7);
        }

        return result;
      default:
LABEL_53:

        sub_27183428C(a1);
    }
  }

  return result;
}

void sub_2713E6B28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v7[0] = *(a1 + 32);
  v5 = sub_27182D6C4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v7);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182EB6C(a1, &v8);
  if (v8 >= 2)
  {
    v6 = *(a1 + 104);
    *(a1 + 88) = "value_type";
    *(a1 + 96) = 10;
    if ((v6 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v7[0] = v4;
    sub_2713E0CC8(a1);
  }

  sub_2713E6CB0();
}

void sub_2713E6CB0()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_271758DF0();
}

void sub_2713E6E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E6E80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_2713E6E94(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713E792C(v3);
      }

      sub_2713E77B4(v3);
    }

    switch(a1)
    {
      case 8:
        sub_2713E7AA8(v3);
      case 11:
        sub_2713E7C70(v3);
      case 12:
        sub_2713E7DEC(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713E7018(v3);
    }

    if (a1 == 1)
    {
      sub_2713E7188(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713E7300(v3);
      case 3:
        sub_2713E747C(v3);
      case 5:
        sub_2713E7644(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2713E7018(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182D810(v4, &v5);
  sub_27175862C();
}

void sub_2713E7160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E7188(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182F018(v4, &v5);
  sub_271758B58();
}

void sub_2713E72D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E7300(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182F1C8(v4, &v5);
  sub_271759088();
}

void sub_2713E7454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E747C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  v6 = 0uLL;
  v7 = 0;
  sub_271831430(v4, &v6);
  v5 = v6;
  if (*(&v6 + 1) != v6)
  {
    memmove(0, v6, *(&v6 + 1) - v6);
  }

  if (v5)
  {
    *(&v6 + 1) = v5;
    operator delete(v5);
  }

  sub_2717595B8();
}

void sub_2713E75F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_2713E7644(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182EDD8(v4, &v5);
  sub_271758398();
}

void sub_2713E778C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E77B4(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182EEF8(v4, &v5);
  sub_2717588C0();
}

void sub_2713E7904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E792C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182F0F0(v4, &v5);
  sub_271758DF0();
}

void sub_2713E7A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E7AA8(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  v6 = 0uLL;
  v7 = 0;
  sub_271831164(v4, &v6);
  v5 = v6;
  if (*(&v6 + 1) != v6)
  {
    memmove(0, v6, *(&v6 + 1) - v6);
  }

  if (v5)
  {
    *(&v6 + 1) = v5;
    operator delete(v5);
  }

  sub_271759320();
}

void sub_2713E7C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_2713E7C70(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182F4D4(v4, &v5);
  sub_271759850();
}

void sub_2713E7DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E7DEC(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182F5F0(v4, &v5);
  sub_271759AE8();
}

void sub_2713E7F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E7F68(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713E8A00(v3);
      }

      sub_2713E8888(v3);
    }

    switch(a1)
    {
      case 8:
        sub_2713E8B7C(v3);
      case 11:
        sub_2713E8D44(v3);
      case 12:
        sub_2713E8EC0(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713E80EC(v3);
    }

    if (a1 == 1)
    {
      sub_2713E825C(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713E83D4(v3);
      case 3:
        sub_2713E8550(v3);
      case 5:
        sub_2713E8718(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2713E80EC(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182D810(v4, &v5);
  sub_27175862C();
}

void sub_2713E8234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E825C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182F018(v4, &v5);
  sub_271758B58();
}

void sub_2713E83AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E83D4(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182F1C8(v4, &v5);
  sub_271759088();
}

void sub_2713E8528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E8550(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  v6 = 0uLL;
  v7 = 0;
  sub_271831430(v4, &v6);
  v5 = v6;
  if (*(&v6 + 1) != v6)
  {
    memmove(0, v6, *(&v6 + 1) - v6);
  }

  if (v5)
  {
    *(&v6 + 1) = v5;
    operator delete(v5);
  }

  sub_2717595B8();
}

void sub_2713E86C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_2713E8718(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182EDD8(v4, &v5);
  sub_271758398();
}

void sub_2713E8860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E8888(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182EEF8(v4, &v5);
  sub_2717588C0();
}

void sub_2713E89D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E8A00(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182F0F0(v4, &v5);
  sub_271758DF0();
}

void sub_2713E8B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E8B7C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  v6 = 0uLL;
  v7 = 0;
  sub_271831164(v4, &v6);
  v5 = v6;
  if (*(&v6 + 1) != v6)
  {
    memmove(0, v6, *(&v6 + 1) - v6);
  }

  if (v5)
  {
    *(&v6 + 1) = v5;
    operator delete(v5);
  }

  sub_271759320();
}

void sub_2713E8CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_2713E8D44(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182F4D4(v4, &v5);
  sub_271759850();
}

void sub_2713E8E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E8EC0(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D6C4(v2);
  ++*(v2 + 112);
  sub_27182F5F0(v4, &v5);
  sub_271759AE8();
}

void sub_2713E9014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E903C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    v7 = 0;
    sub_27183FF6C(*(a2 + 48), &v7);
    *&v6 = (*(*(a2 + 16) + 32))(a2 + 16);
    *(&v6 + 1) = v7;
    sub_2713BF82C(a2 + 24, &v6);
    LOBYTE(v6) = 0;
    sub_27183F824(*(a2 + 48), &v6);
    *a3 = v6;
    sub_27183FF6C(*(a2 + 48), a3 + 1);
    sub_2713E9324(*a3, a3, a2);
  }

  sub_2713E918C();
}

void sub_2713E918C()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_271758DF0();
}

void sub_2713E92F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E9310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_2713E9324(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713E9D38(v3);
      }

      sub_2713E9BC8(v3);
    }

    switch(a1)
    {
      case 8:
        sub_2713E9EAC(v3);
      case 11:
        sub_2713EA020(v3);
      case 12:
        sub_2713EA194(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713E94A8(v3);
    }

    if (a1 == 1)
    {
      sub_2713E960C(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713E977C(v3);
      case 3:
        sub_2713E98F0(v3);
      case 5:
        sub_2713E9A64(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2713E94A8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_2713E95E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E960C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_2713E9754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E977C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_2713E98C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E98F0(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_2713E9A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E9A64(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_2713E9BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E9BC8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_2713E9D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E9D38(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_2713E9E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713E9EAC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_2713E9FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EA020(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_2713EA16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EA194(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_2713EA2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EA308(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713EAD1C(v3);
      }

      sub_2713EABAC(v3);
    }

    switch(a1)
    {
      case 8:
        sub_2713EAE90(v3);
      case 11:
        sub_2713EB004(v3);
      case 12:
        sub_2713EB178(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713EA48C(v3);
    }

    if (a1 == 1)
    {
      sub_2713EA5F0(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713EA760(v3);
      case 3:
        sub_2713EA8D4(v3);
      case 5:
        sub_2713EAA48(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2713EA48C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_2713EA5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EA5F0(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_2713EA738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EA760(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_2713EA8AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EA8D4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_2713EAA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EAA48(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_2713EAB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EABAC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_2713EACF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EAD1C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_2713EAE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EAE90(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_2713EAFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EB004(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_2713EB150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EB178(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_2713EB2C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EB2EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v7[0] = *(a1 + 32);
  v5 = sub_27182D2AC(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_27182D194(a1 + 40, v7);
  sub_2717313F0(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_27182DBE0(a1, &v8);
  if (v8 >= 2)
  {
    v6 = *(a1 + 104);
    *(a1 + 88) = "value_type";
    *(a1 + 96) = 10;
    if ((v6 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v7[0] = v4;
    sub_2713E1CA0(a1);
  }

  sub_2713EB474();
}

void sub_2713EB474()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_271758DF0();
}

void sub_2713EB628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EB644(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_2713EB658(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713EC0F0(v3);
      }

      sub_2713EBF78(v3);
    }

    switch(a1)
    {
      case 8:
        sub_2713EC26C(v3);
      case 11:
        sub_2713EC434(v3);
      case 12:
        sub_2713EC5B0(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713EB7DC(v3);
    }

    if (a1 == 1)
    {
      sub_2713EB94C(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713EBAC4(v3);
      case 3:
        sub_2713EBC40(v3);
      case 5:
        sub_2713EBE08(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2713EB7DC(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  sub_27182D3F8(v4, &v5);
  sub_27175862C();
}

void sub_2713EB924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EB94C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  sub_27182DFB4(v4, &v5);
  sub_271758B58();
}

void sub_2713EBA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EBAC4(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  sub_27182E164(v4, &v5);
  sub_271759088();
}

void sub_2713EBC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EBC40(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  v6 = 0uLL;
  v7 = 0;
  sub_27182FFA0(v4, &v6);
  v5 = v6;
  if (*(&v6 + 1) != v6)
  {
    memmove(0, v6, *(&v6 + 1) - v6);
  }

  if (v5)
  {
    *(&v6 + 1) = v5;
    operator delete(v5);
  }

  sub_2717595B8();
}

void sub_2713EBDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_2713EBE08(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  sub_27182DD74(v4, &v5);
  sub_271758398();
}

void sub_2713EBF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EBF78(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  sub_27182DE94(v4, &v5);
  sub_2717588C0();
}

void sub_2713EC0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EC0F0(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  sub_27182E08C(v4, &v5);
  sub_271758DF0();
}

void sub_2713EC244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EC26C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  v6 = 0uLL;
  v7 = 0;
  sub_27182FA80(v4, &v6);
  v5 = v6;
  if (*(&v6 + 1) != v6)
  {
    memmove(0, v6, *(&v6 + 1) - v6);
  }

  if (v5)
  {
    *(&v6 + 1) = v5;
    operator delete(v5);
  }

  sub_271759320();
}

void sub_2713EC3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_2713EC434(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  sub_27182E498(v4, &v5);
  sub_271759850();
}

void sub_2713EC588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EC5B0(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  sub_27182E5DC(v4, &v5);
  sub_271759AE8();
}

void sub_2713EC704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EC72C(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713ED1C4(v3);
      }

      sub_2713ED04C(v3);
    }

    switch(a1)
    {
      case 8:
        sub_2713ED340(v3);
      case 11:
        sub_2713ED508(v3);
      case 12:
        sub_2713ED684(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713EC8B0(v3);
    }

    if (a1 == 1)
    {
      sub_2713ECA20(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713ECB98(v3);
      case 3:
        sub_2713ECD14(v3);
      case 5:
        sub_2713ECEDC(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2713EC8B0(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  sub_27182D3F8(v4, &v5);
  sub_27175862C();
}

void sub_2713EC9F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713ECA20(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  sub_27182DFB4(v4, &v5);
  sub_271758B58();
}

void sub_2713ECB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713ECB98(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  sub_27182E164(v4, &v5);
  sub_271759088();
}

void sub_2713ECCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713ECD14(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  v6 = 0uLL;
  v7 = 0;
  sub_27182FFA0(v4, &v6);
  v5 = v6;
  if (*(&v6 + 1) != v6)
  {
    memmove(0, v6, *(&v6 + 1) - v6);
  }

  if (v5)
  {
    *(&v6 + 1) = v5;
    operator delete(v5);
  }

  sub_2717595B8();
}

void sub_2713ECE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_2713ECEDC(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  sub_27182DD74(v4, &v5);
  sub_271758398();
}

void sub_2713ED024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713ED04C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  sub_27182DE94(v4, &v5);
  sub_2717588C0();
}

void sub_2713ED19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713ED1C4(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  sub_27182E08C(v4, &v5);
  sub_271758DF0();
}

void sub_2713ED318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713ED340(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  v6 = 0uLL;
  v7 = 0;
  sub_27182FA80(v4, &v6);
  v5 = v6;
  if (*(&v6 + 1) != v6)
  {
    memmove(0, v6, *(&v6 + 1) - v6);
  }

  if (v5)
  {
    *(&v6 + 1) = v5;
    operator delete(v5);
  }

  sub_271759320();
}

void sub_2713ED4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_2713ED508(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  sub_27182E498(v4, &v5);
  sub_271759850();
}

void sub_2713ED65C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713ED684(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 88) = "numbers";
  *(v2 + 96) = 7;
  if ((v3 & 1) == 0)
  {
    *(v2 + 104) = 1;
  }

  v5 = 0uLL;
  v4 = sub_27182D2AC(v2);
  ++*(v2 + 112);
  sub_27182E5DC(v4, &v5);
  sub_271759AE8();
}

void sub_2713ED7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713ED800(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  LODWORD(__p) = 2;
  sub_27183A9AC(a2, &__p);
  if (__p > 1)
  {
    LOBYTE(__p) = 0;
    sub_271839D90(a2, &__p);
    *a3 = __p;
    sub_27183B6AC(a2, a3 + 1);
    sub_2713EDAD0(*a3, a3, a2);
  }

  sub_2713ED938();
}

void sub_2713ED938()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_271758DF0();
}

void sub_2713EDAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EDABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_2713EDAD0(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713EE4CC(v3);
      }

      sub_2713EE360(v3);
    }

    switch(a1)
    {
      case 8:
        sub_2713EE63C(v3);
      case 11:
        sub_2713EE7AC(v3);
      case 12:
        sub_2713EE91C(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713EDC54(v3);
    }

    if (a1 == 1)
    {
      sub_2713EDDB4(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713EDF20(v3);
      case 3:
        sub_2713EE090(v3);
      case 5:
        sub_2713EE200(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2713EDC54(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_2713EDD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EDDB4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_2713EDEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EDF20(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_2713EE068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EE090(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_2713EE1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EE200(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_2713EE338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EE360(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_2713EE4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EE4CC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_2713EE614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EE63C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_2713EE784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EE7AC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_2713EE8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EE91C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_2713EEA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EEA8C(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713EF488(v3);
      }

      sub_2713EF31C(v3);
    }

    switch(a1)
    {
      case 8:
        sub_2713EF5F8(v3);
      case 11:
        sub_2713EF768(v3);
      case 12:
        sub_2713EF8D8(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713EEC10(v3);
    }

    if (a1 == 1)
    {
      sub_2713EED70(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713EEEDC(v3);
      case 3:
        sub_2713EF04C(v3);
      case 5:
        sub_2713EF1BC(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2713EEC10(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_2713EED48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EED70(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_2713EEEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EEEDC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_2713EF024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EF04C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_2713EF194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EF1BC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_2713EF2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EF31C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_2713EF460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EF488(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_2713EF5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EF5F8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_2713EF740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EF768(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_2713EF8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EF8D8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_2713EFA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EFA48(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 > 3)
  {
    v7 = *(a2[3] + v3);
    a2[6] = v3 + 4;
    if (v7 > 1)
    {
      sub_27173170C(a2);
      sub_2713EFCB8(a2, a3);
    }

    sub_2713EFB40();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713EFB40()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_271758DF0();
}

void sub_2713EFC88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_2713EFC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713EFCB8(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  if (v3 > v2)
  {
    v5 = a1[3];
    v6 = *(v5 + v2);
    v7 = v2 + 1;
    a1[6] = v7;
    *a2 = v6;
    v8 = v3 >= v7;
    v9 = v3 - v7;
    if (!v8)
    {
      v9 = 0;
    }

    if (v9 > 7)
    {
      *(a2 + 8) = *(v5 + v7);
      a1[6] += 8;

      sub_2713EFDA8(v6, a2, a1);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713EFDA8(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713F0A0C(v3);
      }

      sub_2713F083C(v3);
    }

    switch(a1)
    {
      case 8:
        sub_2713F0BE0(v3);
      case 11:
        sub_2713F0DB4(v3);
      case 12:
        sub_2713F0F88(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713EFF2C(v3);
    }

    if (a1 == 1)
    {
      sub_2713F00F8(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713F02C8(v3);
      case 3:
        sub_2713F049C(v3);
      case 5:
        sub_2713F0670(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2713EFF2C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_27175862C();
}

void sub_2713F00C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F00F8(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758B58();
}

void sub_2713F0290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F02C8(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759088();
}

void sub_2713F0464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F049C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_2717595B8();
}

void sub_2713F0638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F0670(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758398();
}

void sub_2713F0804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F083C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_2717588C0();
}

void sub_2713F09D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F0A0C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758DF0();
}

void sub_2713F0BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F0BE0(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759320();
}

void sub_2713F0D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F0DB4(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759850();
}

void sub_2713F0F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F0F88(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759AE8();
}

void sub_2713F1124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F115C(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  if (v3 > v2)
  {
    v5 = a1[3];
    v6 = *(v5 + v2);
    v7 = v2 + 1;
    a1[6] = v7;
    *a2 = v6;
    v8 = v3 >= v7;
    v9 = v3 - v7;
    if (!v8)
    {
      v9 = 0;
    }

    if (v9 > 7)
    {
      *(a2 + 8) = *(v5 + v7);
      a1[6] += 8;

      sub_2713F124C(v6, a2, a1);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_271128104(exception, "Not enough data to read");
  __cxa_throw(exception, off_279E2F400, MEMORY[0x277D825F8]);
}

void sub_2713F124C(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713F1EB0(v3);
      }

      sub_2713F1CE0(v3);
    }

    switch(a1)
    {
      case 8:
        sub_2713F2084(v3);
      case 11:
        sub_2713F2258(v3);
      case 12:
        sub_2713F242C(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713F13D0(v3);
    }

    if (a1 == 1)
    {
      sub_2713F159C(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713F176C(v3);
      case 3:
        sub_2713F1940(v3);
      case 5:
        sub_2713F1B14(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2713F13D0(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_27175862C();
}

void sub_2713F1564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F159C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758B58();
}

void sub_2713F1734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F176C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759088();
}

void sub_2713F1908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F1940(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_2717595B8();
}

void sub_2713F1ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F1B14(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758398();
}

void sub_2713F1CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F1CE0(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_2717588C0();
}

void sub_2713F1E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F1EB0(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271758DF0();
}

void sub_2713F204C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F2084(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759320();
}

void sub_2713F2220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F2258(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759850();
}

void sub_2713F23F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F242C(void *a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_271759AE8();
}

void sub_2713F25C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F2600(int *a1, _BYTE *a2, _BYTE *a3)
{
  v6 = 2;
  (*(*a2 + 104))(a2, &v6);
  if (*a1 >= 1)
  {
    sub_2713F2718(a1, a2, a3, v6);
  }

  if (v6 >= 2)
  {
    v7 = a3;
    sub_2713E42BC(a2, &v7);
    (*(*a2 + 120))(a2, a3 + 8);
    sub_2713F2AD0(*a3, a3, a2);
  }

  sub_2713F291C();
}

void sub_2713F2718(int *a1, _BYTE *a2, _BYTE *a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_15;
    }

    v8 = a4;
    v12 = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_280878AD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878AD0))
      {
        sub_2718519B4("cv3d::kit::conio::NumbersSample]", 0x1FuLL, &stru_280878AB8);
        __cxa_guard_release(&qword_280878AD0);
        sub_271847D5C(&stru_280878AB8, v11, 2u);
      }

      sub_271847D5C(&stru_280878AB8, v11, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 > 1 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    goto LABEL_14;
  }

  if (a4 >= 2)
  {
LABEL_14:
    v13 = a3;
    sub_2713E42BC(a2, &v13);
    (*(*a2 + 120))(a2, a3 + 8);
    sub_2713F2AD0(*a3, a3, a2);
  }

LABEL_15:
  sub_2713F291C();
}

void sub_2713F291C()
{
  v0 = 7;
  v1 = 0;
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_271758DF0();
}

void sub_2713F2AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F2ABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713AF0E4(va);
  _Unwind_Resume(a1);
}

void sub_2713F2AD0(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713F34C4(v3);
      }

      sub_2713F335C(v3);
    }

    switch(a1)
    {
      case 8:
        sub_2713F3630(v3);
      case 11:
        sub_2713F379C(v3);
      case 12:
        sub_2713F3908(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713F2C54(v3);
    }

    if (a1 == 1)
    {
      sub_2713F2DB8(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713F2F20(v3);
      case 3:
        sub_2713F308C(v3);
      case 5:
        sub_2713F31F8(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2713F2C54(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_2713F2D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F2DB8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_2713F2EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F2F20(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_2713F3064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F308C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_2713F31D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F31F8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_2713F3334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F335C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_2713F349C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F34C4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_2713F3608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F3630(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_2713F3774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F379C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_2713F38E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F3908(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_2713F3A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F3A74(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_2713F4468(v3);
      }

      sub_2713F4300(v3);
    }

    switch(a1)
    {
      case 8:
        sub_2713F45D4(v3);
      case 11:
        sub_2713F4740(v3);
      case 12:
        sub_2713F48AC(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2713F3BF8(v3);
    }

    if (a1 == 1)
    {
      sub_2713F3D5C(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_2713F3EC4(v3);
      case 3:
        sub_2713F4030(v3);
      case 5:
        sub_2713F419C(v3);
    }
  }

  sub_27183428C(a1);
}

void sub_2713F3BF8(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711BE688();
  }

  sub_27175862C();
}

void sub_2713F3D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F3D5C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758B58();
}

void sub_2713F3E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F3EC4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759088();
}

void sub_2713F4008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F4030(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717595B8();
}

void sub_2713F4174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F419C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758398();
}

void sub_2713F42D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F4300(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_2717588C0();
}

void sub_2713F4440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F4468(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271758DF0();
}

void sub_2713F45AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F45D4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759320();
}

void sub_2713F4718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F4740(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759850();
}

void sub_2713F4884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F48AC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_2711EB2F8();
  }

  sub_271759AE8();
}

void sub_2713F49F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713F4A18(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5[25] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *a4;
  sub_27113523C(v5, a4 + 1);
  operator new();
}

void sub_2713F4E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 8))(v9);
  sub_2713F4EBC(&a9);
  _Unwind_Resume(a1);
}

void *sub_2713F4EBC(void *a1)
{
  *a1 = &unk_28812E898;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812E8E0;
  v3 = a1[3];
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

void sub_2713F4F7C(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v2 = *(a2 + 3);
  v4 = *(a2 + 2);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = "value_type";
  v6[1] = 10;
  v6[2] = &v3;
  sub_2713DB624(a1, v6);
}

void sub_2713F51A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CC40C((v9 + 8), 6);
  sub_2713AF0E4(&a9);
  _Unwind_Resume(a1);
}

void sub_2713F51D8(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_271759D80((a2 + 16), 6);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_27182B5E0(a3, &v9);
        }
      }

      else
      {
        sub_271759D80((a2 + 16), 7);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_27182B8F0(a3, &v9);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_271759D80((a2 + 16), 8);
          if (*(a2 + 8))
          {
            v9 = *(*(a2 + 16) + 40);
            v10 = 2;
            sub_27182BF10(a3, &v9);
          }

          break;
        case 11:
          sub_271759D80((a2 + 16), 11);
          v7 = *(a2 + 8);
          if (v7)
          {
            v8 = *(*(a2 + 16) + 40);
            do
            {
              v9 = v8;
              v10 = 2;
              sub_27182C644(a3, &v9);
              v8 += 2;
              --v7;
            }

            while (v7);
          }

          break;
        case 12:
          sub_271759D80((a2 + 16), 12);
          v5 = *(a2 + 8);
          if (v5)
          {
            v6 = *(*(a2 + 16) + 40);
            do
            {
              v9 = v6;
              v10 = 2;
              sub_27182CAA4(a3, &v9);
              v6 += 4;
              --v5;
            }

            while (v5);
          }

          break;
        default:
          goto LABEL_37;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_37;
      }

      sub_271759D80((a2 + 16), 1);
      if (*(a2 + 8))
      {
        v9 = *(*(a2 + 16) + 40);
        v10 = 2;
        sub_27182B768(a3, &v9);
      }
    }

    else
    {
      sub_271759D80((a2 + 16), 0);
      if (*(a2 + 8))
      {
        v9 = *(*(a2 + 16) + 40);
        v10 = 2;
        sub_271828DE4(a3, &v9);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271759D80((a2 + 16), 2);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_27182BA78(a3, &v9);
        }

        break;
      case 3:
        sub_271759D80((a2 + 16), 3);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_27182C098(a3, &v9);
        }

        break;
      case 5:
        sub_271759D80((a2 + 16), 5);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_27182B474(a3, &v9);
        }

        return;
      default:
LABEL_37:

        sub_27183428C(a1);
    }
  }
}

void sub_2713F5510(uint64_t *a1, __int128 *a2)
{
  v8 = *a2;
  v3 = *(a2 + 3);
  v9 = *(a2 + 2);
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(v12) = v8;
  v4 = a1[3];
  if (*(v4 + 40) == 1)
  {
    v11[0] = (v4 + 16);
    sub_2718454CC(v11, &v12);
  }

  else
  {
    if (v8 < 0)
    {
      LOBYTE(v11[0]) = -52;
      BYTE1(v11[0]) = v8;
    }

    else
    {
      LOBYTE(v11[0]) = v8;
    }

    v5 = *(v4 + 8);
    std::ostream::write();
  }

  v6 = a1[3];
  if (*(v6 + 40) == 1)
  {
    v11[0] = (v6 + 16);
    sub_271846AEC(v11, *(&v8 + 1));
  }

  else
  {
    sub_271846E00((v6 + 8));
  }

  v12 = xmmword_279E2F5A0;
  v11[0] = &v8;
  v11[1] = a1;
  v11[2] = &v12;
  sub_2713F568C(v8, v11);
  v7 = v10;
  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

uint64_t sub_2713F568C(int a1, void *a2)
{
  v99 = *MEMORY[0x277D85DE8];
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        v34 = *a2;
        result = sub_271759D80((*a2 + 16), 6);
        v35 = *(v34 + 16);
        v37 = *(v35 + 40);
        v36 = *(v35 + 48);
        v38 = v36 >> 1;
        v39 = *(a2[1] + 24);
        if (*(v39 + 40) == 1)
        {
          *&v98 = v39 + 16;
          if (v36 >= 2)
          {
            v40 = 2 * v38;
            do
            {
              v41 = *v37++;
              result = sub_27184561C(&v98, v41);
              v40 -= 2;
            }

            while (v40);
          }
        }

        else if (v36 >= 2)
        {
          v79 = 2 * v38;
          do
          {
            v80 = *v37++;
            result = sub_2718458EC((v39 + 8));
            v79 -= 2;
          }

          while (v79);
        }
      }

      else
      {
        v21 = *a2;
        result = sub_271759D80((*a2 + 16), 7);
        v22 = *(v21 + 16);
        v24 = *(v22 + 40);
        v23 = *(v22 + 48);
        v25 = v23 >> 2;
        v26 = *(a2[1] + 24);
        if (*(v26 + 40) == 1)
        {
          *&v98 = v26 + 16;
          if (v23 >= 4)
          {
            v27 = 4 * v25;
            do
            {
              v28 = *v24++;
              result = sub_271845BC4(&v98, v28);
              v27 -= 4;
            }

            while (v27);
          }
        }

        else if (v23 >= 4)
        {
          v74 = 4 * v25;
          do
          {
            v75 = *v24++;
            result = sub_271845FEC((v26 + 8));
            v74 -= 4;
          }

          while (v74);
        }
      }

      goto LABEL_99;
    }

    switch(a1)
    {
      case 8:
        v50 = *a2;
        result = sub_271759D80((*a2 + 16), 8);
        v51 = *(v50 + 16);
        v53 = *(v51 + 40);
        v52 = *(v51 + 48);
        v54 = v52 >> 3;
        v55 = *(a2[1] + 24);
        if (*(v55 + 40) == 1)
        {
          *&v98 = v55 + 16;
          if (v52 >= 8)
          {
            v56 = 8 * v54;
            do
            {
              v57 = *v53++;
              result = sub_271846460(&v98, v57);
              v56 -= 8;
            }

            while (v56);
          }
        }

        else if (v52 >= 8)
        {
          v83 = 8 * v54;
          do
          {
            v84 = *v53++;
            result = sub_2718469A8((v55 + 8), v84);
            v83 -= 8;
          }

          while (v83);
        }

        goto LABEL_99;
      case 11:
        v66 = *a2;
        result = sub_271759D80((*a2 + 16), 11);
        v67 = *(v66 + 16);
        v69 = *(v67 + 40);
        v68 = *(v67 + 48);
        v70 = v68 >> 2;
        v71 = *(a2[1] + 24);
        if (*(v71 + 40) == 1)
        {
          *&v98 = v71 + 16;
          if (v68 >= 4)
          {
            v72 = 4 * v70;
            do
            {
              result = sub_271846EFC(&v97, &v98, v69++);
              v72 -= 4;
            }

            while (v72);
          }
        }

        else if (v68 >= 4)
        {
          v93 = 4 * v70;
          do
          {
            v94 = *v69++;
            LOBYTE(v98) = -54;
            *(&v98 + 1) = bswap32(v94);
            v95 = *(v71 + 8);
            result = std::ostream::write();
            v93 -= 4;
          }

          while (v93);
        }

        goto LABEL_99;
      case 12:
        v9 = *a2;
        result = sub_271759D80((*a2 + 16), 12);
        v10 = *(v9 + 16);
        v12 = *(v10 + 40);
        v11 = *(v10 + 48);
        v13 = v11 >> 3;
        v14 = *(a2[1] + 24);
        if (*(v14 + 40) == 1)
        {
          *&v98 = v14 + 16;
          if (v11 >= 8)
          {
            v15 = 8 * v13;
            do
            {
              result = sub_271846FE4(&v97, &v98, v12++);
              v15 -= 8;
            }

            while (v15);
          }
        }

        else if (v11 >= 8)
        {
          v88 = 8 * v13;
          do
          {
            v89 = *v12++;
            LOBYTE(v98) = -53;
            *(&v98 + 1) = bswap64(v89);
            v90 = *(v14 + 8);
            result = std::ostream::write();
            v88 -= 8;
          }

          while (v88);
        }

        goto LABEL_99;
    }

    goto LABEL_57;
  }

  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        v42 = *a2;
        result = sub_271759D80((*a2 + 16), 2);
        v43 = *(v42 + 16);
        v45 = *(v43 + 40);
        v44 = *(v43 + 48);
        v46 = v44 >> 2;
        v47 = *(a2[1] + 24);
        if (*(v47 + 40) == 1)
        {
          *&v98 = v47 + 16;
          if (v44 >= 4)
          {
            v48 = 4 * v46;
            do
            {
              v49 = *v45++;
              result = sub_2718460EC(&v98, v49);
              v48 -= 4;
            }

            while (v48);
          }
        }

        else if (v44 >= 4)
        {
          v81 = 4 * v46;
          do
          {
            v82 = *v45++;
            result = sub_27184636C(&v98, (v47 + 8));
            v81 -= 4;
          }

          while (v81);
        }

        goto LABEL_99;
      case 3:
        v58 = *a2;
        result = sub_271759D80((*a2 + 16), 3);
        v59 = *(v58 + 16);
        v61 = *(v59 + 40);
        v60 = *(v59 + 48);
        v62 = v60 >> 3;
        v63 = *(a2[1] + 24);
        if (*(v63 + 40) == 1)
        {
          *&v98 = v63 + 16;
          if (v60 >= 8)
          {
            v64 = 8 * v62;
            do
            {
              v65 = *v61++;
              result = sub_271846AEC(&v98, v65);
              v64 -= 8;
            }

            while (v64);
          }
        }

        else if (v60 >= 8)
        {
          v91 = 8 * v62;
          do
          {
            v92 = *v61++;
            result = sub_271846E00((v63 + 8));
            v91 -= 8;
          }

          while (v91);
        }

        goto LABEL_99;
      case 5:
        v3 = *a2;
        result = sub_271759D80((*a2 + 16), 5);
        v5 = *(v3 + 16);
        v6 = *(v5 + 40);
        v7 = *(v5 + 48);
        v8 = *(a2[1] + 24);
        if (*(v8 + 40) == 1)
        {
          for (*&v98 = v8 + 16; v7; --v7)
          {
            result = sub_271845378(&v98, v6++);
          }
        }

        else
        {
          for (; v7; --v7)
          {
            while (1)
            {
              v86 = *v6;
              if (v86 <= -33)
              {
                break;
              }

              LOBYTE(v98) = *v6;
              v85 = *(v8 + 8);
              result = std::ostream::write();
              ++v6;
              if (!--v7)
              {
                goto LABEL_99;
              }
            }

            LOBYTE(v98) = -48;
            BYTE1(v98) = v86;
            v87 = *(v8 + 8);
            result = std::ostream::write();
            ++v6;
          }
        }

        goto LABEL_99;
    }

LABEL_57:
    v73 = *MEMORY[0x277D85DE8];

    sub_27183428C(a1);
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v16 = *a2;
      sub_271759D80((*a2 + 16), 1);
      v17 = *(v16 + 16);
      v18 = *(v17 + 40);
      v19 = *(v17 + 48) >> 1;
      v20 = a2[1];
      *&v98 = v18;
      *(&v98 + 1) = v19;
      result = sub_27183F518(v20, &v98);
      goto LABEL_99;
    }

    goto LABEL_57;
  }

  v29 = *a2;
  result = sub_271759D80((*a2 + 16), 0);
  v30 = *(v29 + 16);
  v31 = *(v30 + 40);
  v32 = *(v30 + 48);
  v33 = *(a2[1] + 24);
  if (*(v33 + 40) == 1)
  {
    for (*&v98 = v33 + 16; v32; --v32)
    {
      result = sub_2718454CC(&v98, v31++);
    }
  }

  else
  {
    for (; v32; --v32)
    {
      while (1)
      {
        v77 = *v31;
        if ((v77 & 0x80000000) == 0)
        {
          break;
        }

        LOBYTE(v98) = -52;
        BYTE1(v98) = v77;
        v76 = *(v33 + 8);
        result = std::ostream::write();
        ++v31;
        if (!--v32)
        {
          goto LABEL_99;
        }
      }

      LOBYTE(v98) = *v31;
      v78 = *(v33 + 8);
      result = std::ostream::write();
      ++v31;
    }
  }

LABEL_99:
  v96 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2713F5CDC(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v2 = *(a2 + 3);
  v4 = *(a2 + 2);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = "value_type";
  v6[1] = 10;
  v6[2] = &v3;
  sub_2713DD5A4(a1, v6);
}

void sub_2713F5F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CA870((v9 + 8), 6);
  sub_2713AF0E4(&a9);
  _Unwind_Resume(a1);
}

void sub_2713F5F38(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_271759D80((a2 + 16), 6);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_2718295E4(a3, &v9);
        }
      }

      else
      {
        sub_271759D80((a2 + 16), 7);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_2718298F4(a3, &v9);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_271759D80((a2 + 16), 8);
          if (*(a2 + 8))
          {
            v9 = *(*(a2 + 16) + 40);
            v10 = 2;
            sub_271829C04(a3, &v9);
          }

          break;
        case 11:
          sub_271759D80((a2 + 16), 11);
          v7 = *(a2 + 8);
          if (v7)
          {
            v8 = *(*(a2 + 16) + 40);
            do
            {
              v9 = v8;
              v10 = 2;
              sub_27182A338(a3, &v9);
              v8 += 2;
              --v7;
            }

            while (v7);
          }

          break;
        case 12:
          sub_271759D80((a2 + 16), 12);
          v5 = *(a2 + 8);
          if (v5)
          {
            v6 = *(*(a2 + 16) + 40);
            do
            {
              v9 = v6;
              v10 = 2;
              sub_27182A798(a3, &v9);
              v6 += 4;
              --v5;
            }

            while (v5);
          }

          break;
        default:
          goto LABEL_37;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_37;
      }

      sub_271759D80((a2 + 16), 1);
      if (*(a2 + 8))
      {
        v9 = *(*(a2 + 16) + 40);
        v10 = 2;
        sub_27182976C(a3, &v9);
      }
    }

    else
    {
      sub_271759D80((a2 + 16), 0);
      if (*(a2 + 8))
      {
        v9 = *(*(a2 + 16) + 40);
        v10 = 2;
        sub_271828638(a3, &v9);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_271759D80((a2 + 16), 2);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_271829A7C(a3, &v9);
        }

        break;
      case 3:
        sub_271759D80((a2 + 16), 3);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_271829D8C(a3, &v9);
        }

        break;
      case 5:
        sub_271759D80((a2 + 16), 5);
        if (*(a2 + 8))
        {
          v9 = *(*(a2 + 16) + 40);
          v10 = 2;
          sub_271829478(a3, &v9);
        }

        return;
      default:
LABEL_37:

        sub_27183428C(a1);
    }
  }
}

void sub_2713F6270(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v3 = *(a2 + 3);
  v7 = *(a2 + 2);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(v9[0]) = v6;
  sub_2718388F8(a1, v9);
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    LOBYTE(v9[0]) = *(a1 + 32);
    sub_271120E64(v4, v9, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), *(&v6 + 1));
  ++*(a1 + 40);
  v10 = xmmword_279E2F5A0;
  v9[0] = &v6;
  v9[1] = a1;
  v9[2] = &v10;
  sub_2713F639C(v6, v9);
  v5 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_2713F639C(int a1, void *a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        v39 = *a2;
        sub_271759D80((*a2 + 16), 6);
        v40 = *(v39 + 16);
        v41 = *(v40 + 48);
        if (v41 >= 2)
        {
          v42 = *(v40 + 40);
          v43 = v41 >> 1;
          v44 = a2[1];
          v45 = *(v44 + 40);
          v46 = 2 * v43;
          do
          {
            if (v45)
            {
              v48 = *(v44 + 24);
              v88 = *(v44 + 32);
              sub_271120E64(v48, &v88, 1);
            }

            v47 = *v42++;
            MEMORY[0x2743BE820](*(v44 + 24), v47);
            v45 = *(v44 + 40) + 1;
            *(v44 + 40) = v45;
            v46 -= 2;
          }

          while (v46);
        }
      }

      else
      {
        v24 = *a2;
        sub_271759D80((*a2 + 16), 7);
        v25 = *(v24 + 16);
        v26 = *(v25 + 48);
        if (v26 >= 4)
        {
          v27 = *(v25 + 40);
          v28 = v26 >> 2;
          v29 = a2[1];
          v30 = *(v29 + 40);
          v31 = 4 * v28;
          do
          {
            if (v30)
            {
              v33 = *(v29 + 24);
              v89 = *(v29 + 32);
              sub_271120E64(v33, &v89, 1);
            }

            v32 = *v27++;
            MEMORY[0x2743BE7E0](*(v29 + 24), v32);
            v30 = *(v29 + 40) + 1;
            *(v29 + 40) = v30;
            v31 -= 4;
          }

          while (v31);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          v59 = *a2;
          sub_271759D80((*a2 + 16), 8);
          v60 = *(v59 + 16);
          v61 = *(v60 + 48);
          if (v61 >= 8)
          {
            v62 = *(v60 + 40);
            v63 = v61 >> 3;
            v64 = a2[1];
            v65 = *(v64 + 40);
            v66 = 8 * v63;
            do
            {
              if (v65)
              {
                v68 = *(v64 + 24);
                v90 = *(v64 + 32);
                sub_271120E64(v68, &v90, 1);
              }

              v67 = *v62++;
              MEMORY[0x2743BE840](*(v64 + 24), v67);
              v65 = *(v64 + 40) + 1;
              *(v64 + 40) = v65;
              v66 -= 8;
            }

            while (v66);
          }

          break;
        case 11:
          v79 = *a2;
          sub_271759D80((*a2 + 16), 11);
          v80 = *(v79 + 16);
          v81 = *(v80 + 48);
          if (v81 >= 4)
          {
            v82 = *(v80 + 40);
            v83 = a2[1];
            v84 = 4 * (v81 >> 2);
            do
            {
              sub_271838C54(v83, v82++);
              v84 -= 4;
            }

            while (v84);
          }

          break;
        case 12:
          v8 = *a2;
          sub_271759D80((*a2 + 16), 12);
          v9 = *(v8 + 16);
          v10 = *(v9 + 48);
          if (v10 >= 8)
          {
            v11 = *(v9 + 40);
            v12 = a2[1];
            v13 = 8 * (v10 >> 3);
            do
            {
              sub_271838EC0(v12, v11++);
              v13 -= 8;
            }

            while (v13);
          }

          break;
        default:
          goto LABEL_59;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_59;
      }

      v14 = *a2;
      sub_271759D80((*a2 + 16), 1);
      v15 = *(v14 + 16);
      v16 = *(v15 + 48);
      if (v16 >= 2)
      {
        v17 = *(v15 + 40);
        v18 = v16 >> 1;
        v19 = a2[1];
        v20 = *(v19 + 40);
        v21 = 2 * v18;
        do
        {
          if (v20)
          {
            v23 = *(v19 + 24);
            v85 = *(v19 + 32);
            sub_271120E64(v23, &v85, 1);
          }

          v22 = *v17++;
          MEMORY[0x2743BE830](*(v19 + 24), v22);
          v20 = *(v19 + 40) + 1;
          *(v19 + 40) = v20;
          v21 -= 2;
        }

        while (v21);
      }
    }

    else
    {
      v34 = *a2;
      sub_271759D80((*a2 + 16), 0);
      v35 = *(v34 + 16);
      v36 = *(v35 + 48);
      if (v36)
      {
        v37 = *(v35 + 40);
        v38 = a2[1];
        do
        {
          sub_2718388F8(v38, v37++);
          --v36;
        }

        while (v36);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v49 = *a2;
        sub_271759D80((*a2 + 16), 2);
        v50 = *(v49 + 16);
        v51 = *(v50 + 48);
        if (v51 >= 4)
        {
          v52 = *(v50 + 40);
          v53 = v51 >> 2;
          v54 = a2[1];
          v55 = *(v54 + 40);
          v56 = 4 * v53;
          do
          {
            if (v55)
            {
              v58 = *(v54 + 24);
              v86 = *(v54 + 32);
              sub_271120E64(v58, &v86, 1);
            }

            v57 = *v52++;
            MEMORY[0x2743BE7F0](*(v54 + 24), v57);
            v55 = *(v54 + 40) + 1;
            *(v54 + 40) = v55;
            v56 -= 4;
          }

          while (v56);
        }

        break;
      case 3:
        v69 = *a2;
        sub_271759D80((*a2 + 16), 3);
        v70 = *(v69 + 16);
        v71 = *(v70 + 48);
        if (v71 >= 8)
        {
          v72 = *(v70 + 40);
          v73 = v71 >> 3;
          v74 = a2[1];
          v75 = *(v74 + 40);
          v76 = 8 * v73;
          do
          {
            if (v75)
            {
              v78 = *(v74 + 24);
              v87 = *(v74 + 32);
              sub_271120E64(v78, &v87, 1);
            }

            v77 = *v72++;
            MEMORY[0x2743BE850](*(v74 + 24), v77);
            v75 = *(v74 + 40) + 1;
            *(v74 + 40) = v75;
            v76 -= 8;
          }

          while (v76);
        }

        break;
      case 5:
        v3 = *a2;
        sub_271759D80((*a2 + 16), 5);
        v4 = *(v3 + 16);
        v5 = *(v4 + 48);
        if (v5)
        {
          v6 = *(v4 + 40);
          v7 = a2[1];
          do
          {
            sub_271838810(v7, v6++);
            --v5;
          }

          while (v5);
        }

        return;
      default:
LABEL_59:

        sub_27183428C(a1);
    }
  }
}

void sub_2713F6838(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(__src[0]) = v5;
  sub_27173318C(a1 + 24, *(a1 + 32), __src, __src + 1, 1uLL);
  sub_27173318C(a1 + 24, *(a1 + 32), &v5 + 8, &v6, 8uLL);
  v9 = xmmword_279E2F5A0;
  __src[0] = &v5;
  __src[1] = a1;
  __src[2] = &v9;
  sub_2713F6954(v5, __src);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

char *sub_2713F6954(int a1, void *a2)
{
  if (a1 > 5)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          v6 = *a2;
          v7 = (*a2 + 16);
          v8 = 8;
          break;
        case 11:
          v12 = *a2;
          v13 = (*a2 + 16);
          v14 = 11;
          goto LABEL_26;
        case 12:
          v6 = *a2;
          v7 = (*a2 + 16);
          v8 = 12;
          break;
        default:
          goto LABEL_30;
      }

LABEL_24:
      sub_271759D80(v7, v8);
      v19 = *(v6 + 16);
      v16 = *(v19 + 40);
      v17 = *(v19 + 48) & 0xFFFFFFFFFFFFFFF8;
      goto LABEL_27;
    }

    if (a1 != 6)
    {
      v12 = *a2;
      v13 = (*a2 + 16);
      v14 = 7;
      goto LABEL_26;
    }

    v9 = *a2;
    v10 = (*a2 + 16);
    v11 = 6;
LABEL_20:
    sub_271759D80(v10, v11);
    v18 = *(v9 + 16);
    v16 = *(v18 + 40);
    v17 = *(v18 + 48) & 0xFFFFFFFFFFFFFFFELL;
    goto LABEL_27;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      v3 = *a2;
      v4 = (*a2 + 16);
      v5 = 0;
      goto LABEL_18;
    }

    if (a1 != 1)
    {
LABEL_30:

      sub_27183428C(a1);
    }

    v9 = *a2;
    v10 = (*a2 + 16);
    v11 = 1;
    goto LABEL_20;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      if (a1 == 5)
      {
        v3 = *a2;
        v4 = (*a2 + 16);
        v5 = 5;
LABEL_18:
        sub_271759D80(v4, v5);
        v15 = *(v3 + 16);
        v16 = *(v15 + 40);
        v17 = *(v15 + 48);
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    v6 = *a2;
    v7 = (*a2 + 16);
    v8 = 3;
    goto LABEL_24;
  }

  v12 = *a2;
  v13 = (*a2 + 16);
  v14 = 2;
LABEL_26:
  sub_271759D80(v13, v14);
  v20 = *(v12 + 16);
  v16 = *(v20 + 40);
  v17 = *(v20 + 48) & 0xFFFFFFFFFFFFFFFCLL;
LABEL_27:
  v21 = a2[1];
  v22 = *(v21 + 32);

  return sub_27173318C(v21 + 24, v22, v16, &v16[v17], v17);
}