void sub_275CF0CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
    if ((v35 & 1) == 0)
    {
LABEL_10:
      if (*(v36 - 49) < 0)
      {
        operator delete(*(v36 - 72));
      }

      if (*(v33 + 23) < 0)
      {
        operator delete(*v33);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v34);
  goto LABEL_10;
}

void *sub_275CF0E30(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_275CF0E3C(uint64_t a1)
{
  result = *(a1 + 23);
  if (result < 0)
  {
    return *(a1 + 8);
  }

  return result;
}

uint64_t sub_275CF0E54@<X0>(__int32 *a1@<X1>, const void **a2@<X0>, void **a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = wcslen(a1);
  result = sub_275CF2B7C(a3, v6 + v7);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a3, v9, 4 * v6);
  }

  if (v7)
  {
    result = memmove(a3 + 4 * v6, a1, 4 * v7);
  }

  *(a3 + v6 + v7) = 0;
  return result;
}

void *sub_275CF0F10(void *result)
{
  *result = &unk_2884CC6C8;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

BOOL sub_275CF0F3C(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    v1 = *(a1 + 8);
  }

  return v1 == 0;
}

void *sub_275CF0F54(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

void *sub_275CF0F84(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2884CC268;
  result[1] = v2;
  return result;
}

BOOL sub_275CF0FE0(const __int32 *a1, const __int32 *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 1;
  }

  if (!v3)
  {
    return 0;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  return wmemcmp(a1, a2, v3) != 0;
}

uint64_t sub_275CF107C(uint64_t *a1)
{
  v1 = *a1;
  *a1 += 8;
  return v1;
}

void blahtex::Parser::ParseTextField(blahtex::MacroProcessor **this)
{
  blahtex::MacroProcessor::SkipWhitespace(*this);
  blahtex::MacroProcessor::Get(*this, &v11);
  TextTokenCode = blahtex::Parser::GetTextTokenCode(v3, &v11);
  if (TextTokenCode != 4)
  {
    if (TextTokenCode == 26)
    {
      operator new();
    }

    if (!TextTokenCode)
    {
      exception = __cxa_allocate_exception(0x30uLL);
      sub_275CDAE0C(__p, dword_275D16F80);
      sub_275CDAE0C(v9, &dword_275D16B38);
      sub_275CDAE0C(v8, &dword_275D16B38);
      sub_275CDAE0C(v7, &dword_275D16B38);
      sub_275CE39CC(exception, __p, v9, v8, v7);
      __cxa_throw(exception, &unk_2884CB710, sub_275CDAEAC);
    }

    v6 = __cxa_allocate_exception(0x30uLL);
    sub_275CDAE0C(__p, dword_275D16FD8);
    sub_275CDAE0C(v9, &dword_275D16B38);
    sub_275CDAE0C(v8, &dword_275D16B38);
    sub_275CE39CC(v6, __p, &v11, v9, v8);
    __cxa_throw(v6, &unk_2884CB710, sub_275CDAEAC);
  }

  operator new();
}

void sub_275CF13C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
    if ((v33 & 1) == 0)
    {
LABEL_12:
      if (*(v34 - 49) < 0)
      {
        operator delete(*(v34 - 72));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v32);
  goto LABEL_12;
}

void *sub_275CF1590(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2884CC2B8;
  result[1] = v2;
  return result;
}

void *sub_275CF15B8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2884CC308;
  result[1] = v2;
  return result;
}

char *sub_275CF1600(char *result)
{
  if ((result[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

uint64_t *sub_275CF1620(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t sub_275CF168C(uint64_t a1, __int128 *a2)
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
  return a1;
}

void sub_275CF1EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (*(v34 - 81) < 0)
  {
    operator delete(*(v34 - 104));
    if ((v32 & 1) == 0)
    {
LABEL_12:
      (*(*v31 + 8))(v31);
      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v33);
  goto LABEL_12;
}

void *sub_275CF21A8(void *a1, __int128 *a2)
{
  *a1 = &unk_2884CC678;
  v3 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_275CD96C4(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
  }

  return a1;
}

uint64_t sub_275CF2210(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t *a4, char a5)
{
  *a1 = &unk_2884CC178;
  v9 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_275CD96C4(v9, *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    *(v9 + 16) = *(a2 + 2);
    *v9 = v10;
  }

  v11 = *a3;
  *a3 = 0;
  *(a1 + 32) = v11;
  v12 = *a4;
  *a4 = 0;
  *(a1 + 40) = v12;
  *(a1 + 48) = a5;
  return a1;
}

uint64_t sub_275CF22A8(uint64_t a1, __int128 *a2, uint64_t *a3, char a4)
{
  *a1 = &unk_2884CC3F8;
  v7 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_275CD96C4(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  v9 = *a3;
  *a3 = 0;
  *(a1 + 32) = v9;
  *(a1 + 40) = a4;
  return a1;
}

void *sub_275CF2330(void *a1, __int128 *a2, uint64_t *a3)
{
  *a1 = &unk_2884CC448;
  v5 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_275CD96C4(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5[2] = *(a2 + 2);
    *v5 = v6;
  }

  v7 = *a3;
  *a3 = 0;
  a1[4] = v7;
  return a1;
}

uint64_t sub_275CF23A8(uint64_t a1, uint64_t *a2, __int128 *a3, __int128 *a4)
{
  v6 = *a2;
  *a2 = 0;
  *a1 = &unk_2884CC3A8;
  *(a1 + 8) = v6;
  if (*(a3 + 23) < 0)
  {
    sub_275CD96C4((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v7;
  }

  if (*(a4 + 23) < 0)
  {
    sub_275CD96C4((a1 + 40), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 56) = *(a4 + 2);
    *(a1 + 40) = v8;
  }

  return a1;
}

void sub_275CF2444(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_275CF2498(void *a1, __int128 *a2)
{
  *a1 = &unk_2884CC1C8;
  v3 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_275CD96C4(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
  }

  return a1;
}

uint64_t sub_275CF2500(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *a1 = &unk_2884CC218;
  if (*(a2 + 23) < 0)
  {
    sub_275CD96C4((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_275CD96C4((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v6;
  }

  return a1;
}

void sub_275CF25A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_275CF25C0(void *a1, __int128 *a2, uint64_t *a3)
{
  *a1 = &unk_2884CC358;
  v5 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_275CD96C4(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5[2] = *(a2 + 2);
    *v5 = v6;
  }

  v7 = *a3;
  *a3 = 0;
  a1[4] = v7;
  return a1;
}

uint64_t sub_275CF2638(uint64_t a1, __int128 *a2)
{
  sub_275CDAE0C(__p, dword_275D170B4);
  *a1 = &unk_2884CC7A8;
  if (SHIBYTE(v8) < 0)
  {
    sub_275CD96C4((a1 + 8), __p[0], __p[1]);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 8) = *__p;
    *(a1 + 24) = v8;
  }

  *a1 = &unk_2884CC800;
  v4 = (a1 + 32);
  if (*(a2 + 23) < 0)
  {
    sub_275CD96C4(v4, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *v4 = v5;
  }

  return a1;
}

void sub_275CF2720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *v15 = v17;
  if (*(v15 + 31) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_275CF2754(void *a1, __int128 *a2)
{
  *a1 = &unk_2884CC7A8;
  v3 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_275CD96C4(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
  }

  return a1;
}

void *sub_275CF27BC(void *a1, __int128 *a2, uint64_t *a3)
{
  *a1 = &unk_2884CC128;
  v5 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_275CD96C4(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5[2] = *(a2 + 2);
    *v5 = v6;
  }

  v7 = *a3;
  *a3 = 0;
  a1[4] = v7;
  return a1;
}

uint64_t sub_275CF2834(uint64_t a1, __int128 *a2)
{
  sub_275CDAE0C(__p, dword_275D170B4);
  *a1 = &unk_2884CC858;
  if (SHIBYTE(v8) < 0)
  {
    sub_275CD96C4((a1 + 8), __p[0], __p[1]);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 8) = *__p;
    *(a1 + 24) = v8;
  }

  *a1 = &unk_2884CC8B0;
  v4 = (a1 + 32);
  if (*(a2 + 23) < 0)
  {
    sub_275CD96C4(v4, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *v4 = v5;
  }

  return a1;
}

void sub_275CF291C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *v15 = v17;
  if (*(v15 + 31) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CF2950(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a2 != a3)
  {
    sub_275CF29C8();
  }

  return result;
}

void sub_275CF2A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_275CEA29C(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CF2B60(_Unwind_Exception *a1)
{
  *v2 = 0;
  sub_275CEA29C(v3, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_275CF2B7C(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x3FFFFFFFFFFFFFF8)
  {
    sub_275C8EE7C();
  }

  if (a2 > 4)
  {
    if ((a2 | 1) == 5)
    {
      v2 = 7;
    }

    else
    {
      v2 = (a2 | 1) + 1;
    }

    if (!(v2 >> 62))
    {
      operator new();
    }

    sub_275C8D86C();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void *blahtex::DelimiterTable(blahtex *this)
{
  if ((atomic_load_explicit(&qword_280A38E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38E60))
  {
    sub_275CE4E8C(&unk_280A38E38, &off_27A688AD0, &off_27A688F90);
    __cxa_guard_release(&qword_280A38E60);
  }

  return &unk_280A38E38;
}

uint64_t blahtex::ParseTree::MathCommand1Arg::BuildLayoutTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = (a1 + 8);
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v7 = *(a1 + 16);
  if (v7 == 5)
  {
    if (!wmemcmp(*v6, dword_275D1DA28, 5uLL))
    {
      operator new();
    }

    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_2;
    }

    v7 = *(a1 + 16);
  }

  if (v7 == 8)
  {
    if (!wmemcmp(*v6, dword_275D1DA40, 8uLL))
    {
      operator new();
    }

    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_2;
    }
  }

  v8 = *(a1 + 16);
  if (v8 == 7)
  {
    if (!wmemcmp(*v6, dword_275D1DA64, 7uLL))
    {
      operator new();
    }

    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_2;
    }

    v8 = *(a1 + 16);
  }

  if (v8 == 11)
  {
    if (!wmemcmp(*v6, dword_275D1DA84, 0xBuLL))
    {
      goto LABEL_40;
    }

    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_2;
    }
  }

  v9 = *(a1 + 16);
  if (v9 == 12)
  {
    if (wmemcmp(*v6, dword_275D1DAB4, 0xCuLL))
    {
      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_2;
      }

      v9 = *(a1 + 16);
      goto LABEL_24;
    }

LABEL_40:
    *__p = *a2;
    v27 = *(a2 + 16);
    v14 = *(a2 + 16);
    if (v14 <= 3)
    {
      LODWORD(v27) = dword_275D1F4B0[v14];
    }

    operator new();
  }

LABEL_24:
  if (v9 == 10 && !wmemcmp(*v6, dword_275D1DAFC, 0xAuLL))
  {
LABEL_3:
    operator new();
  }

LABEL_2:
  if (sub_275CE84A8(v6, dword_275D1DB28))
  {
    goto LABEL_3;
  }

  if (sub_275CE84A8(v6, dword_275D1DB68))
  {
    operator new();
  }

  if (sub_275CE84A8(v6, dword_275D1DBA0) || sub_275CE84A8(v6, dword_275D1DBD8))
  {
    *__p = *a2;
    v27 = *(a2 + 16);
    LODWORD(__p[0]) = 1;
    (*(**(a1 + 32) + 16))(*(a1 + 32), __p);
    *(*a3 + 12) = 1;
    result = sub_275CE84A8(v6, dword_275D1DBA0);
    if (result)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    *(*a3 + 16) = v11;
  }

  else
  {
    if ((atomic_load_explicit(&qword_280A38E90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38E90))
    {
      sub_275CF8988(qword_280A38E68, &off_27A688F90, &off_27A689050);
      __cxa_guard_release(&qword_280A38E90);
    }

    v12 = *(a1 + 31);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v13 = *(a1 + 8);
      v12 = *(a1 + 16);
    }

    else
    {
      v13 = v6;
    }

    __p[0] = v13;
    __p[1] = v12;
    v15 = sub_275CE4AE0(qword_280A38E68, __p);
    if (v15)
    {
      v16 = v15;
      result = (*(**(a1 + 32) + 16))(*(a1 + 32), a2);
      v17 = *(v16 + 8);
      v18 = *a3;
      *(*a3 + 12) = v17;
      if (v17 == 1)
      {
        *(v18 + 16) = 0;
      }
    }

    else
    {
      if ((atomic_load_explicit(&qword_280A38EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38EC0))
      {
        sub_275CF8988(qword_280A38E98, &off_27A689050, &off_27A689110);
        __cxa_guard_release(&qword_280A38EC0);
      }

      v19 = *(a1 + 31);
      if ((v19 & 0x8000000000000000) != 0)
      {
        v20 = *(a1 + 8);
        v19 = *(a1 + 16);
      }

      else
      {
        v20 = v6;
      }

      __p[0] = v20;
      __p[1] = v19;
      v21 = sub_275CE4AE0(qword_280A38E98, __p);
      if (v21)
      {
        *__p = *a2;
        v27 = *(a2 + 16);
        LODWORD(__p[0]) = *(v21 + 8);
      }

      else
      {
        if (!sub_275CE84A8(v6, dword_275D1DE7C))
        {
          if ((atomic_load_explicit(&qword_280A38EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38EF0))
          {
            sub_275CF8C60(qword_280A38EC8, &off_27A689110, &off_27A6894A8);
            __cxa_guard_release(&qword_280A38EF0);
          }

          v22 = *(a1 + 31);
          if ((v22 & 0x8000000000000000) != 0)
          {
            v23 = *(a1 + 8);
            v22 = *(a1 + 16);
          }

          else
          {
            v23 = v6;
          }

          __p[0] = v23;
          __p[1] = v22;
          if (sub_275CE4AE0(qword_280A38EC8, __p))
          {
            (*(**(a1 + 32) + 16))(&v25);
            operator new();
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "Unexpected command in MathCommand1Arg::BuildLayoutTree");
          __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
        }

        *__p = *a2;
        v27 = *(a2 + 16);
        BYTE4(__p[0]) = 1;
        LODWORD(__p[0]) = 0;
      }

      return (*(**(a1 + 32) + 16))(*(a1 + 32), __p);
    }
  }

  return result;
}

void sub_275CF4158()
{
  MEMORY[0x277C8CFC0](v2, 0x10A1C40454616E8);
  if (v0)
  {
    (*(*v0 + 8))(v0);
  }

  if (v1)
  {
    JUMPOUT(0x275CF41ACLL);
  }

  JUMPOUT(0x275CF4150);
}

void blahtex::ParseTree::MathCommand2Args::BuildLayoutTree(uint64_t a1, __int128 *a2)
{
  sub_275CDAE0C(v17, &dword_275D1DAE8);
  sub_275CDAE0C(v16, &dword_275D1DAE8);
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  if (*(a1 + 16) == 5)
  {
    if (!wmemcmp(*(a1 + 8), dword_275D1E2D4, 5uLL))
    {
      goto LABEL_5;
    }

    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_2;
    }

    if (*(a1 + 16) == 5)
    {
      if (!wmemcmp(*(a1 + 8), dword_275D1E2EC, 5uLL))
      {
        goto LABEL_5;
      }

      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_2;
      }
    }
  }

  v7 = *(a1 + 16);
  if (v7 != 5)
  {
    goto LABEL_26;
  }

  if (wmemcmp(*(a1 + 8), dword_275D1E304, 5uLL))
  {
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_2;
    }

    v7 = *(a1 + 16);
LABEL_26:
    if (v7 == 6)
    {
      if (!wmemcmp(*(a1 + 8), dword_275D1E31C, 6uLL))
      {
        goto LABEL_55;
      }

      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_2;
      }
    }

    v8 = *(a1 + 16);
    if (v8 != 7)
    {
LABEL_33:
      if (v8 == 6 && !wmemcmp(*(a1 + 8), dword_275D1E358, 6uLL))
      {
        MEMORY[0x277C8CD90](v17, &unk_275D1E374);
        v4 = &unk_275D1E37C;
        goto LABEL_4;
      }

LABEL_2:
      if (sub_275CE84A8((a1 + 8), dword_275D1E384))
      {
        MEMORY[0x277C8CD90](v17, &unk_275D1E3A0);
        v4 = &unk_275D1E3A8;
LABEL_4:
        MEMORY[0x277C8CD90](v16, v4);
        goto LABEL_5;
      }

      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      v9 = *(a1 + 16);
      if (v9 == 13)
      {
        if (!wmemcmp(*(a1 + 8), dword_275D1E3B0, 0xDuLL))
        {
          v15 = *(a2 + 2);
          v14 = *a2;
          LODWORD(v15) = 3;
          operator new();
        }

        if ((*(a1 + 31) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        v9 = *(a1 + 16);
      }

      if (v9 == 6)
      {
        if (!wmemcmp(*(a1 + 8), dword_275D1E3E8, 6uLL))
        {
          v15 = *(a2 + 2);
          v14 = *a2;
          LODWORD(v15) = 1;
          operator new();
        }

        if ((*(a1 + 31) & 0x80000000) == 0)
        {
LABEL_9:
          if (!sub_275CE84A8((a1 + 8), dword_275D1E4CC))
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(exception, "Unexpected command in MathCommand2Args::BuildLayoutTree");
            __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
          }

LABEL_10:
          v14 = *a2;
          v15 = *(a2 + 2);
          v6 = *(a2 + 4);
          if (v6 <= 3)
          {
            LODWORD(v15) = dword_275D1F4B0[v6];
          }

          if (*(a1 + 31) < 0 && *(a1 + 16) == 8)
          {
            wmemcmp(*(a1 + 8), dword_275D1E4A8, 8uLL);
          }

          (*(**(a1 + 32) + 16))(&v13);
          (*(**(a1 + 40) + 16))(&v13);
          operator new();
        }
      }

      v10 = *(a1 + 16);
      if (v10 == 19)
      {
        if (!wmemcmp(*(a1 + 8), dword_275D1E404, 0x13uLL))
        {
          goto LABEL_58;
        }

        if ((*(a1 + 31) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        v10 = *(a1 + 16);
      }

      if (v10 != 20)
      {
LABEL_50:
        if (*(a1 + 16) == 8 && !wmemcmp(*(a1 + 8), dword_275D1E4A8, 8uLL))
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if (wmemcmp(*(a1 + 8), dword_275D1E454, 0x14uLL))
      {
        if (*(a1 + 31) < 0)
        {
          goto LABEL_50;
        }

        goto LABEL_9;
      }

LABEL_58:
      v14 = *a2;
      v15 = *(a2 + 2);
      v11 = *(a2 + 4);
      if (v11 <= 3)
      {
        LODWORD(v15) = dword_275D1F4B0[v11];
      }

      operator new();
    }

    if (wmemcmp(*(a1 + 8), dword_275D1E338, 7uLL))
    {
      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_2;
      }

      v8 = *(a1 + 16);
      goto LABEL_33;
    }

LABEL_55:
    MEMORY[0x277C8CD90](v17, &unk_275D1DB80);
    v4 = &unk_275D1DB98;
    goto LABEL_4;
  }

LABEL_5:
  v14 = *a2;
  v15 = *(a2 + 2);
  v5 = *(a2 + 4);
  if (v5 <= 2)
  {
    LODWORD(v15) = v5 + 1;
  }

  operator new();
}

void sub_275CF4CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    sub_275D020C4();
  }

  (*(*v12 + 8))(v12);
  MEMORY[0x277C8CFC0](v11, 0x10A1C40454616E8);
  if (*(v13 - 105) < 0)
  {
    operator delete(*(v13 - 128));
  }

  if (*(v13 - 81) < 0)
  {
    operator delete(*(v13 - 104));
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathScripts::BuildLayoutTree(void *a1, __int128 *a2)
{
  v4 = a1[1];
  if (v4)
  {
    (*(*v4 + 16))(&v9);
  }

  v9 = *a2;
  v10 = *(a2 + 2);
  v5 = *(a2 + 4);
  if (v5 <= 3)
  {
    LODWORD(v10) = dword_275D1F4B0[v5];
  }

  v6 = a1[2];
  if (v6)
  {
    (*(*v6 + 16))(&v8);
  }

  v7 = a1[3];
  if (v7)
  {
    (*(*v7 + 16))(&v8);
  }

  operator new();
}

void sub_275CF50B4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t blahtex::ParseTree::MathLimits::BuildLayoutTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 32) + 16))(*(a1 + 32));
  if (*(*a2 + 12) != 1)
  {
    v8 = a1;
    exception = __cxa_allocate_exception(0x30uLL);
    sub_275CDAE0C(&v12, dword_275D1E4F4);
    sub_275CDAE0C(v11, &dword_275D1DAE8);
    sub_275CDAE0C(v10, &dword_275D1DAE8);
    sub_275CE39CC(exception, &v12, v8 + 8, v11, v10);
    __cxa_throw(exception, &unk_2884CB710, sub_275CDAEAC);
  }

  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 16);
  if (v4 == 7)
  {
    result = wmemcmp(*(a1 + 8), dword_275D1E534, 7uLL);
    if (!result)
    {
      v6 = 1;
      goto LABEL_15;
    }

    if ((*(a1 + 31) & 0x80000000) == 0)
    {
LABEL_16:
      v7 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v7, "Unexpected command in MathLimits::BuildLayoutTree.");
      __cxa_throw(v7, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
    }

    v4 = *(a1 + 16);
  }

  if (v4 == 9)
  {
    result = wmemcmp(*(a1 + 8), dword_275D1E554, 9uLL);
    if (!result)
    {
      v6 = 2;
      goto LABEL_15;
    }

    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  if (*(a1 + 16) != 14)
  {
    goto LABEL_16;
  }

  result = wmemcmp(*(a1 + 8), dword_275D1E57C, 0xEuLL);
  if (result)
  {
    goto LABEL_16;
  }

  v6 = 0;
LABEL_15:
  *(*a2 + 16) = v6;
  return result;
}

void sub_275CF5304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      v31 = *v27;
      *v27 = 0;
      if (v31)
      {
        (*(*v31 + 8))(v31);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

uint64_t blahtex::ParseTree::MathGroup::BuildLayoutTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  *(*a2 + 12) = 0;
  return result;
}

uint64_t blahtex::ParseTree::MathPhantom::BuildLayoutTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  *(*a2 + 12) = 0;
  return result;
}

uint64_t blahtex::ParseTree::MathCancel::BuildLayoutTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  *(*a2 + 12) = 0;
  return result;
}

void sub_275CF5724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a10)
  {
    sub_275D020C4();
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  MEMORY[0x277C8CFC0](v26, 0x10B3C40EF56973ALL);
  _Unwind_Resume(a1);
}

void sub_275CF5920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x277C8CFC0](v18, v17);
  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathBig::BuildLayoutTree(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280A38F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38F20))
  {
    sub_275CF9194(qword_280A38EF8, &off_27A6894A8, &off_27A689688);
    __cxa_guard_release(&qword_280A38F20);
  }

  v2 = *(a1 + 31);
  if (v2 < 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  else
  {
    v3 = a1 + 8;
  }

  v5[0] = v3;
  v5[1] = v2;
  if (sub_275CE4AE0(qword_280A38EF8, v5))
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Unknown command in MathBig::BuildLayoutTree");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void blahtex::ParseTree::MathTableRow::BuildLayoutTree()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Arrived unexpectedly in MathTableRow::BuildLayoutTree");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void *sub_275CF5E68(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_275CF946C(result, a2);
    }

    sub_275C8D77C();
  }

  return result;
}

uint64_t sub_275CF5F24(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_275C8D77C();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      sub_275CF946C(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_275CF94C4(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

uint64_t blahtex::ParseTree::MathEnvironment::BuildLayoutTree@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_280A38F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38F50))
  {
    sub_275CF955C(qword_280A38F28, &off_27A689688, &off_27A689988);
    __cxa_guard_release(&qword_280A38F50);
  }

  v6 = (a1 + 8);
  v7 = *(a1 + 31);
  if (v7 < 0)
  {
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
  }

  else
  {
    v8 = a1 + 8;
  }

  *&v24 = v8;
  *(&v24 + 1) = v7;
  v9 = sub_275CE4AE0(qword_280A38F28, &v24);
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unexpected environment name in MathEnvironment::BuildLayoutTree");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v10 = v9;
  v24 = *a2;
  v25 = *(a2 + 2);
  LODWORD(v24) = 0;
  BYTE4(v24) = *(a2 + 4);
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  v11 = *(a1 + 16);
  if (v11 == 11)
  {
    if (!wmemcmp(*v6, dword_275D1E864, 0xBuLL))
    {
      goto LABEL_64;
    }

    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    v11 = *(a1 + 16);
  }

  if (v11 != 8)
  {
    goto LABEL_18;
  }

  if (!wmemcmp(*v6, dword_275D1E894, 8uLL))
  {
LABEL_64:
    LODWORD(v25) = 2;
    goto LABEL_32;
  }

  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_18:
  v12 = *(a1 + 16);
  if (v12 == 7)
  {
    if (!wmemcmp(*v6, dword_275D1E81C, 7uLL))
    {
      goto LABEL_31;
    }

    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    v12 = *(a1 + 16);
  }

  if (v12 == 5)
  {
    if (!wmemcmp(*v6, dword_275D1E8B8, 5uLL))
    {
      goto LABEL_31;
    }

    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  v13 = *(a1 + 16);
  if (v13 == 6)
  {
    if (wmemcmp(*v6, dword_275D1E8D0, 6uLL))
    {
      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      v13 = *(a1 + 16);
      goto LABEL_29;
    }

LABEL_31:
    LODWORD(v25) = 0;
    goto LABEL_32;
  }

LABEL_29:
  if (v13 == 5 && !wmemcmp(*v6, dword_275D1E8EC, 5uLL))
  {
    goto LABEL_31;
  }

LABEL_7:
  if (sub_275CE84A8((a1 + 8), dword_275D1E904) || sub_275CE84A8((a1 + 8), dword_275D1E924) || sub_275CE84A8((a1 + 8), dword_275D1E83C))
  {
    goto LABEL_31;
  }

  LODWORD(v25) = 1;
LABEL_32:
  (*(**(a1 + 32) + 16))(&lpsrc);
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v21, "Unexpected node type in MathEnvironment::BuildLayoutTree");
    __cxa_throw(v21, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v15 = v14;
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

  if (*(a1 + 16) == 8 && !wmemcmp(*v6, dword_275D1E894, 8uLL))
  {
    v15[13] = 1;
  }

  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

  v18 = *(a1 + 16);
  if (v18 == 7)
  {
    result = wmemcmp(*v6, dword_275D1E81C, 7uLL);
    if (!result)
    {
      goto LABEL_65;
    }

    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    v18 = *(a1 + 16);
  }

  if (v18 == 5)
  {
    result = wmemcmp(*v6, dword_275D1E8B8, 5uLL);
    if (!result)
    {
      goto LABEL_65;
    }

    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }
  }

  v19 = *(a1 + 16);
  if (v19 == 6)
  {
    result = wmemcmp(*v6, dword_275D1E8D0, 6uLL);
    if (!result)
    {
      goto LABEL_65;
    }

    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    v19 = *(a1 + 16);
  }

  if (v19 == 5)
  {
    result = wmemcmp(*v6, dword_275D1E8EC, 5uLL);
    if (result)
    {
      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_57;
    }

LABEL_65:
    v17 = 2;
    goto LABEL_66;
  }

LABEL_57:
  v20 = *(a1 + 16);
  if (v20 == 7)
  {
    result = wmemcmp(*v6, dword_275D1E904, 7uLL);
    if (!result)
    {
      goto LABEL_40;
    }

    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    v20 = *(a1 + 16);
  }

  if (v20 == 8)
  {
    result = wmemcmp(*v6, dword_275D1E924, 8uLL);
    if (!result)
    {
      goto LABEL_40;
    }
  }

LABEL_39:
  result = sub_275CE84A8((a1 + 8), dword_275D1E83C);
  if (result)
  {
LABEL_40:
    v17 = 3;
LABEL_66:
    v15[12] = v17;
    goto LABEL_67;
  }

  result = sub_275CE84A8((a1 + 8), dword_275D1E804);
  if (result)
  {
    v17 = 0;
    goto LABEL_66;
  }

LABEL_67:
  if (v10[5] || v10[7])
  {
    operator new();
  }

  *a3 = lpsrc;
  return result;
}

uint64_t blahtex::ParseTree::EnterTextMode::BuildLayoutTree(uint64_t a1, __int128 *a2)
{
  if ((atomic_load_explicit(&qword_280A38F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38F80))
  {
    sub_275CF9834(qword_280A38F58, &off_27A689988, &off_27A689A90);
    __cxa_guard_release(&qword_280A38F80);
  }

  v4 = (a1 + 8);
  v5 = *(a1 + 31);
  if (v5 < 0)
  {
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
  }

  else
  {
    v6 = a1 + 8;
  }

  *&v10 = v6;
  *(&v10 + 1) = v5;
  v7 = sub_275CF9B0C(qword_280A38F58, &v10);
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unexpected command in EnterTextMode::BuildLayoutTree");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  DWORD2(v10) = *(v7 + 8);
  WORD6(v10) = *(v7 + 18);
  if (*(a1 + 31) < 0 && *(a1 + 16) == 5 && (!wmemcmp(*v4, dword_275D1E960, 5uLL) || *(a1 + 31) < 0 && *(a1 + 16) == 5 && !wmemcmp(*v4, dword_275D1E948, 5uLL)))
  {
    LODWORD(v11) = 1;
  }

  return (*(**(a1 + 32) + 16))(*(a1 + 32), &v10);
}

void sub_275CF6C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_275D020C4();
  }

  (*(*v10 + 8))(v10);
  _Unwind_Resume(a1);
}

void blahtex::ParseTree::TextSymbol::BuildLayoutTree(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280A38FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38FB0))
  {
    sub_275CE4E8C(qword_280A38F88, &off_27A689A90, &off_27A689DD0);
    __cxa_guard_release(&qword_280A38FB0);
  }

  v2 = *(a1 + 31);
  if (v2 < 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  else
  {
    v3 = a1 + 8;
  }

  __dst[0] = v3;
  __dst[1] = v2;
  if (sub_275CF9B0C(qword_280A38F88, __dst))
  {
    operator new();
  }

  operator new();
}

uint64_t blahtex::ParseTree::TextPhantom::BuildLayoutTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  *(*a2 + 12) = 0;
  return result;
}

uint64_t blahtex::ParseTree::TextCancel::BuildLayoutTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  *(*a2 + 12) = 0;
  return result;
}

uint64_t blahtex::ParseTree::TextCommand1Arg::BuildLayoutTree(uint64_t a1, __int128 *a2)
{
  v9 = *a2;
  v10 = *(a2 + 2);
  if (*(a1 + 31) < 0)
  {
    if (*(a1 + 16) == 7)
    {
      if (!wmemcmp(*(a1 + 8), dword_275D1E990, 7uLL))
      {
        DWORD2(v9) = 0;
        goto LABEL_34;
      }

      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_2;
      }

      if (*(a1 + 16) == 7)
      {
        if (!wmemcmp(*(a1 + 8), dword_275D1EA28, 7uLL))
        {
          v5 = 2;
          goto LABEL_31;
        }

        if ((*(a1 + 31) & 0x80000000) == 0)
        {
          goto LABEL_2;
        }
      }
    }

    if (*(a1 + 16) != 7)
    {
      goto LABEL_22;
    }

    if (wmemcmp(*(a1 + 8), dword_275D1EA08, 7uLL))
    {
      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_2;
      }

      if (*(a1 + 16) == 7)
      {
        if (!wmemcmp(*(a1 + 8), dword_275D1E9E8, 7uLL))
        {
          v6 = 1;
          goto LABEL_33;
        }

        if ((*(a1 + 31) & 0x80000000) == 0)
        {
          goto LABEL_2;
        }
      }

LABEL_22:
      v4 = *(a1 + 16);
      if (v4 != 5)
      {
        goto LABEL_26;
      }

      if (wmemcmp(*(a1 + 8), dword_275D1E9D0, 5uLL))
      {
        if ((*(a1 + 31) & 0x80000000) == 0)
        {
          goto LABEL_2;
        }

        v4 = *(a1 + 16);
LABEL_26:
        if (v4 == 7 && !wmemcmp(*(a1 + 8), dword_275D1E9B0, 7uLL))
        {
          BYTE12(v9) = 1;
          goto LABEL_34;
        }

        goto LABEL_2;
      }

      v6 = BYTE13(v9) ^ 1;
LABEL_33:
      BYTE13(v9) = v6;
      goto LABEL_34;
    }

    v5 = 1;
LABEL_31:
    DWORD2(v9) = v5;
    goto LABEL_34;
  }

LABEL_2:
  if (!sub_275CE84A8((a1 + 8), dword_275D1E978) && !sub_275CE84A8((a1 + 8), dword_275D1E960) && !sub_275CE84A8((a1 + 8), dword_275D1E948) && !sub_275CE84A8((a1 + 8), dword_275D1EA48) && !sub_275CE84A8((a1 + 8), dword_275D1EA5C) && !sub_275CE84A8((a1 + 8), dword_275D1DA40) && !sub_275CE84A8((a1 + 8), dword_275D1DA64))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unexpected command in TextCommand1Arg::BuildLayoutTree");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

LABEL_34:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return (*(**(a1 + 32) + 16))(*(a1 + 32), &v9);
  }

  v8 = *(a1 + 16);
  if (v8 != 8)
  {
    goto LABEL_40;
  }

  if (!wmemcmp(*(a1 + 8), dword_275D1DA40, 8uLL))
  {
    operator new();
  }

  if (*(a1 + 31) < 0)
  {
    v8 = *(a1 + 16);
LABEL_40:
    if (v8 == 7 && !wmemcmp(*(a1 + 8), dword_275D1DA64, 7uLL))
    {
      operator new();
    }
  }

  return (*(**(a1 + 32) + 16))(*(a1 + 32), &v9);
}

uint64_t sub_275CF73CC(uint64_t a1)
{
  *a1 = &unk_2884CC128;
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_275CF744C(uint64_t a1)
{
  *a1 = &unk_2884CC128;
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CF74EC(uint64_t a1)
{
  *a1 = &unk_2884CC178;
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_275CF759C(uint64_t a1)
{
  *a1 = &unk_2884CC178;
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CF766C(uint64_t a1)
{
  *a1 = &unk_2884CC1C8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_275CF76BC(uint64_t a1)
{
  *a1 = &unk_2884CC1C8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CF772C(uint64_t a1)
{
  *a1 = &unk_2884CC218;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_275CF778C(uint64_t a1)
{
  *a1 = &unk_2884CC218;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x277C8CFC0);
}

void *sub_275CF780C(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2884CC268;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_275CF7878(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2884CC268;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C8CFC0);
}

void *sub_275CF7904(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2884CC2B8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_275CF7970(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2884CC2B8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C8CFC0);
}

void *sub_275CF79FC(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2884CC308;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_275CF7A68(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2884CC308;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CF7AF4(uint64_t a1)
{
  *a1 = &unk_2884CC358;
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_275CF7B74(uint64_t a1)
{
  *a1 = &unk_2884CC358;
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CF7C14(uint64_t a1)
{
  *a1 = &unk_2884CC3A8;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_275CF7CA4(uint64_t a1)
{
  *a1 = &unk_2884CC3A8;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CF7D54(uint64_t a1)
{
  *a1 = &unk_2884CC3F8;
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_275CF7DD4(uint64_t a1)
{
  *a1 = &unk_2884CC3F8;
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CF7E74(uint64_t a1)
{
  *a1 = &unk_2884CC448;
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_275CF7EF4(uint64_t a1)
{
  *a1 = &unk_2884CC448;
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x277C8CFC0);
}

void *sub_275CF7F94(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2884CC498;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_275CF8000(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2884CC498;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C8CFC0);
}

void *sub_275CF808C(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2884CC4E8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_275CF80F8(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2884CC4E8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C8CFC0);
}

void *sub_275CF8184(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2884CC538;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_275CF81F0(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2884CC538;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CF827C(uint64_t a1)
{
  *a1 = &unk_2884CC588;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_275CF82CC(uint64_t a1)
{
  *a1 = &unk_2884CC588;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CF833C(uint64_t a1)
{
  *a1 = &unk_2884CC5D8;
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_275CF83BC(uint64_t a1)
{
  *a1 = &unk_2884CC5D8;
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x277C8CFC0);
}

void *sub_275CF845C(void *a1)
{
  *a1 = &unk_2884CC628;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_275CF852C(void *a1)
{
  *a1 = &unk_2884CC628;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CF861C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, int a6, int a7, int a8, int a9, int a10)
{
  v14 = sub_275CF8748(a1, a5, a6, a7, a8, a9, a10);
  *v14 = &unk_2884CBDA0;
  *(v14 + 52) = a2;
  v15 = *(a3 + 8);
  if (v15 >= 0x3FFFFFFFFFFFFFF8)
  {
    sub_275C8EE7C();
  }

  v16 = (a1 + 56);
  v17 = *a3;
  if (v15 >= 5)
  {
    if ((v15 | 1) == 5)
    {
      v18 = 7;
    }

    else
    {
      v18 = (v15 | 1) + 1;
    }

    sub_275C8DFE0(a1 + 56, v18);
  }

  *(a1 + 79) = v15;
  if (v15)
  {
    memmove(v16, v17, 4 * v15);
  }

  *(v16 + v15) = 0;
  *(a1 + 80) = a4;
  return a1;
}

void sub_275CF8710(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2884CC090;
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CF8748(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  *(a1 + 8) = a4;
  *(a1 + 12) = a5;
  *(a1 + 16) = a6;
  *(a1 + 20) = a7;
  *a1 = &unk_2884CC090;
  v7 = *(a2 + 8);
  if (v7 >= 0x3FFFFFFFFFFFFFF8)
  {
    sub_275C8EE7C();
  }

  v10 = (a1 + 24);
  v11 = *a2;
  if (v7 >= 5)
  {
    if ((v7 | 1) == 5)
    {
      v12 = 7;
    }

    else
    {
      v12 = (v7 | 1) + 1;
    }

    sub_275C8DFE0(a1 + 24, v12);
  }

  *(a1 + 47) = v7;
  if (v7)
  {
    memmove(v10, v11, 4 * v7);
  }

  *(v10 + v7) = 0;
  *(a1 + 48) = a3;
  return a1;
}

uint64_t sub_275CF8814(uint64_t a1, int a2, int a3, __int128 *a4, __int128 *a5, uint64_t *a6)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = 7;
  *(a1 + 20) = a3;
  *a1 = &unk_2884CBE98;
  if (*(a4 + 23) < 0)
  {
    sub_275CD96C4((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v9;
  }

  if (*(a5 + 23) < 0)
  {
    sub_275CD96C4((a1 + 48), *a5, *(a5 + 1));
  }

  else
  {
    v10 = *a5;
    *(a1 + 64) = *(a5 + 2);
    *(a1 + 48) = v10;
  }

  v11 = *a6;
  *a6 = 0;
  *(a1 + 72) = v11;
  return a1;
}

void sub_275CF88D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_275CF88F0(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x3FFFFFFFFFFFFFF8)
  {
    sub_275C8EE7C();
  }

  v4 = *a2;
  if (v2 >= 5)
  {
    if ((v2 | 1) == 5)
    {
      v6 = 7;
    }

    else
    {
      v6 = (v2 | 1) + 1;
    }

    sub_275C8DFE0(__dst, v6);
  }

  __dst[23] = v2;
  if (v2)
  {
    memmove(__dst, v4, 4 * v2);
  }

  *&__dst[4 * v2] = 0;
  return __dst;
}

uint64_t sub_275CF8988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_275CF8A04(a1, v5);
      v5 += 24;
    }

    while (v5 != a3);
  }

  return a1;
}

void *sub_275CF8A04(void *a1, uint64_t a2)
{
  v4 = sub_275CE4020(a1, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_275CE404C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_275CF8C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_275CF8CDC(a1, v5);
      v5 += 40;
    }

    while (v5 != a3);
  }

  return a1;
}

void *sub_275CF8CDC(void *a1, uint64_t a2)
{
  v4 = sub_275CE4020(a1, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_275CE404C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void *sub_275CF8F38(void *a1, uint64_t a2)
{
  v4 = sub_275CE4020(a1, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_275CE404C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_275CF9194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_275CF9210(a1, v5);
      v5 += 40;
    }

    while (v5 != a3);
  }

  return a1;
}

void *sub_275CF9210(void *a1, uint64_t a2)
{
  v4 = sub_275CE4020(a1, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_275CE404C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_275CF946C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_275C8D86C();
}

uint64_t sub_275CF94C4(uint64_t a1)
{
  sub_275CF94FC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_275CF94FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t sub_275CF955C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_275CF95D8(a1, v5);
      v5 += 48;
    }

    while (v5 != a3);
  }

  return a1;
}

void *sub_275CF95D8(void *a1, uint64_t a2)
{
  v4 = sub_275CE4020(a1, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_275CE404C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_275CF9834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_275CF98B0(a1, v5);
      v5 += 24;
    }

    while (v5 != a3);
  }

  return a1;
}

void *sub_275CF98B0(void *a1, uint64_t a2)
{
  v4 = sub_275CE4020(a1, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_275CE404C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void *sub_275CF9B0C(void *a1, uint64_t a2)
{
  v4 = sub_275CE4020(a1, *a2, *(a2 + 8));
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (sub_275CE404C(a1, v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void blahtex::ParseTree::MathSymbol::BuildLayoutTree(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 31);
  if ((v5 & 0x80000000) == 0)
  {
    if (v5 != 1)
    {
      goto LABEL_34;
    }

    v6 = *a2;
    v38 = *a2;
    LODWORD(v7) = *v4;
    if (*v4 <= 64)
    {
LABEL_21:
      v15 = *v4;
      if (v7 < 48)
      {
        goto LABEL_34;
      }

LABEL_27:
      if (v15 <= 0x39)
      {
        v9 = 1;
        v10 = 1;
        if (v6)
        {
          goto LABEL_12;
        }

        goto LABEL_29;
      }

LABEL_31:
      if (v5 < 0)
      {
        LODWORD(v7) = **v4;
      }

LABEL_33:
      if (v7 >= 128)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Unexpected non-ASCII character in MathSymbol::BuildLayoutTree");
        goto LABEL_98;
      }

LABEL_34:
      if ((atomic_load_explicit(&qword_280A38FE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38FE0))
      {
        sub_275CF8988(qword_280A38FB8, &off_27A68E2E0, &off_27A68E5C8);
        __cxa_guard_release(&qword_280A38FE0);
      }

      v16 = *(a1 + 31);
      if ((v16 & 0x8000000000000000) != 0)
      {
        v17 = *(a1 + 8);
        v16 = *(a1 + 16);
      }

      else
      {
        v17 = v4;
      }

      __p[0] = v17;
      __p[1] = v16;
      if (sub_275CE4AE0(qword_280A38FB8, __p))
      {
        operator new();
      }

      if ((atomic_load_explicit(&qword_280A39010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A39010))
      {
        sub_275CF8988(qword_280A38FE8, &off_27A68E5C8, &off_27A68E6D0);
        __cxa_guard_release(&qword_280A39010);
      }

      v18 = *(a1 + 31);
      if ((v18 & 0x8000000000000000) != 0)
      {
        v19 = *(a1 + 8);
        v18 = *(a1 + 16);
      }

      else
      {
        v19 = v4;
      }

      __p[0] = v19;
      __p[1] = v18;
      if (sub_275CE4AE0(qword_280A38FE8, __p))
      {
        v38 = *a2;
        if (v38 > 5)
        {
          switch(v38)
          {
            case 6:
              v32 = __cxa_allocate_exception(0x30uLL);
              sub_275CDAE0C(__p, dword_275D1F4C0);
              sub_275CDAE0C(&v36, dword_275D1F558);
              sub_275CDAE0C(v35, &dword_275D1F554);
              sub_275CE39CC(v32, __p, v4, &v36, v35);
              __cxa_throw(v32, &unk_2884CB710, sub_275CDAEAC);
            case 8:
              v33 = __cxa_allocate_exception(0x30uLL);
              sub_275CDAE0C(__p, dword_275D1F4C0);
              sub_275CDAE0C(&v36, dword_275D1F564);
              sub_275CDAE0C(v35, &dword_275D1F554);
              sub_275CE39CC(v33, __p, v4, &v36, v35);
              __cxa_throw(v33, &unk_2884CB710, sub_275CDAEAC);
            case 7:
              v34 = __cxa_allocate_exception(0x30uLL);
              sub_275CDAE0C(__p, dword_275D1F4C0);
              sub_275CDAE0C(&v36, dword_275D1F544);
              sub_275CDAE0C(v35, &dword_275D1F554);
              sub_275CE39CC(v34, __p, v4, &v36, v35);
              __cxa_throw(v34, &unk_2884CB710, sub_275CDAEAC);
          }
        }

        else if (!v38)
        {
          LODWORD(v38) = 1;
        }

        operator new();
      }

      if ((atomic_load_explicit(&qword_280A39040, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A39040))
      {
        sub_275CF8988(qword_280A39018, &off_27A68E6D0, &off_27A68E7C0);
        __cxa_guard_release(&qword_280A39040);
      }

      v20 = *(a1 + 31);
      if ((v20 & 0x8000000000000000) != 0)
      {
        v21 = *(a1 + 8);
        v20 = *(a1 + 16);
      }

      else
      {
        v21 = v4;
      }

      __p[0] = v21;
      __p[1] = v20;
      if (sub_275CE4AE0(qword_280A39018, __p))
      {
        operator new();
      }

      if ((atomic_load_explicit(&qword_280A39070, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A39070))
      {
        sub_275CFB47C(qword_280A39048, &off_27A689DD0, (&off_27A689DD0 + 2210));
        __cxa_guard_release(&qword_280A39070);
      }

      v22 = *(a1 + 31);
      if ((v22 & 0x8000000000000000) != 0)
      {
        v23 = *(a1 + 8);
        v22 = *(a1 + 16);
      }

      else
      {
        v23 = v4;
      }

      __p[0] = v23;
      __p[1] = v22;
      if (sub_275CE4AE0(qword_280A39048, __p))
      {
        operator new();
      }

      if ((atomic_load_explicit(&qword_280A390A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A390A0))
      {
        sub_275CFB754(qword_280A39078, &off_27A68E7C0, &off_27A68F1E0);
        __cxa_guard_release(&qword_280A390A0);
      }

      v24 = *(a1 + 31);
      if ((v24 & 0x8000000000000000) != 0)
      {
        v25 = *(a1 + 8);
        v24 = *(a1 + 16);
      }

      else
      {
        v25 = v4;
      }

      __p[0] = v25;
      __p[1] = v24;
      v26 = sub_275CE4AE0(qword_280A39078, __p);
      if (v26)
      {
        v35[0] = *a2;
        if (*(v26 + 32))
        {
          v27 = 3;
        }

        else
        {
          v27 = 1;
        }

        LODWORD(v35[0]) = v27;
        operator new();
      }

      v28 = *(a1 + 31);
      if (v28 < 0)
      {
        if (*(a1 + 16) != 4)
        {
LABEL_79:
          if (sub_275CE84A8(v4, dword_275D1F594))
          {
            operator new();
          }

          if (sub_275CE84A8(v4, dword_275D1F5B0))
          {
            operator new();
          }

          if (sub_275CE84A8(v4, dword_275D1F5D4))
          {
            operator new();
          }

          if (sub_275CE84A8(v4, dword_275D1F5FC))
          {
            operator new();
          }

          if (sub_275CE84A8(v4, dword_275D1F610) || sub_275CE84A8(v4, dword_275D1F63C) || sub_275CE84A8(v4, dword_275D1F66C) || sub_275CE84A8(v4, dword_275D1F698))
          {
            operator new();
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "Unexpected command in MathSymbol::BuildLayoutTree");
LABEL_98:
          __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
        }

        v29 = *v4;
      }

      else
      {
        v29 = v4;
        if (v28 != 4)
        {
          goto LABEL_79;
        }
      }

      if (!wmemcmp(v29, dword_275D1F578, 4uLL))
      {
        operator new();
      }

      goto LABEL_79;
    }

    if (v7 >= 0x5B)
    {
      if (v7 >= 97)
      {
        if (v7 >= 0x7B)
        {
          goto LABEL_33;
        }

LABEL_24:
        v10 = 3;
        v9 = 1;
        if (!v6)
        {
          goto LABEL_29;
        }

LABEL_12:
        v11 = v9 ^ 1;
        if (v6 == 7)
        {
          v12 = v11;
        }

        else
        {
          v12 = 1;
        }

        if ((v12 & 1) == 0)
        {
          v31 = __cxa_allocate_exception(0x30uLL);
          sub_275CDAE0C(__p, dword_275D1F4C0);
          sub_275CDAE0C(&v36, dword_275D1F544);
          sub_275CDAE0C(v35, &dword_275D1F554);
          sub_275CE39CC(v31, __p, v4, &v36, v35);
          __cxa_throw(v31, &unk_2884CB710, sub_275CDAEAC);
        }

        if (v6 == 6)
        {
          v13 = v11;
        }

        else
        {
          v13 = 1;
        }

        if ((v13 & 1) == 0)
        {
          v14 = __cxa_allocate_exception(0x30uLL);
          sub_275CDAE0C(__p, dword_275D1F4C0);
          sub_275CDAE0C(&v36, dword_275D1F558);
          sub_275CDAE0C(v35, &dword_275D1F554);
          sub_275CE39CC(v14, __p, v4, &v36, v35);
          __cxa_throw(v14, &unk_2884CB710, sub_275CDAEAC);
        }

LABEL_30:
        operator new();
      }

      goto LABEL_21;
    }

LABEL_11:
    v9 = 0;
    v10 = 3;
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_29:
    LODWORD(v38) = v10;
    goto LABEL_30;
  }

  if (*(a1 + 16) != 1)
  {
    goto LABEL_34;
  }

  v6 = *a2;
  v38 = *a2;
  v8 = **v4;
  if (v8 >= 65)
  {
    if (v8 < 0x5B)
    {
      goto LABEL_11;
    }

    if ((v8 - 97) < 0x1A)
    {
      goto LABEL_24;
    }
  }

  v7 = *v4;
  v15 = **v4;
  if (v15 <= 47)
  {
    goto LABEL_31;
  }

  goto LABEL_27;
}

uint64_t sub_275CFB3BC(uint64_t a1)
{
  *a1 = &unk_2884CC678;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_275CFB40C(uint64_t a1)
{
  *a1 = &unk_2884CC678;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CFB47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_275CFB4F8(a1, v5);
      v5 += 40;
    }

    while (v5 != a3);
  }

  return a1;
}

void *sub_275CFB4F8(void *a1, uint64_t a2)
{
  v4 = sub_275CE4020(a1, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_275CE404C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_275CFB754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_275CFB7D0(a1, v5);
      v5 += 48;
    }

    while (v5 != a3);
  }

  return a1;
}

void *sub_275CFB7D0(void *a1, uint64_t a2)
{
  v4 = sub_275CE4020(a1, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_275CE404C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t blahtex::lookupColour(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (!v1)
  {
    return 0x10000000;
  }

  if ((atomic_load_explicit(&qword_280A390D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A390D0))
  {
    sub_275D0134C(qword_280A390A8, &off_27A690488, &unk_27A690BA8);
    __cxa_guard_release(&qword_280A390D0);
  }

  v3 = sub_275D01688(qword_280A390A8, a1);
  if (v3)
  {
    return *(v3 + 10);
  }

  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    v6 = *(a1 + 8);
    if (v6 != 6)
    {
LABEL_21:
      if (v6 == 3)
      {
        v11 = 0;
        LODWORD(result) = 0;
        if (v5 >= 0)
        {
          v12 = a1;
        }

        else
        {
          v12 = *a1;
        }

        do
        {
          v13 = *(v12 + v11);
          v14 = v13 - 48;
          if ((v13 - 48) >= 0xA)
          {
            if ((v13 - 65) > 5)
            {
              if ((v13 - 103) < 0xFFFFFFFA)
              {
                return 0x10000000;
              }

              v14 = v13 - 87;
            }

            else
            {
              v14 = v13 - 55;
            }
          }

          v11 += 4;
          result = (17 * v14 + (result << 8));
        }

        while (v11 != 12);
        return result;
      }

      return 0x10000000;
    }
  }

  else if (v5 != 6)
  {
    v6 = *(a1 + 23);
    goto LABEL_21;
  }

  v7 = 0;
  LODWORD(result) = 0;
  if (v5 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  do
  {
    v9 = *(v8 + v7);
    v10 = v9 - 48;
    if ((v9 - 48) >= 0xA)
    {
      if ((v9 - 65) > 5)
      {
        if ((v9 - 103) < 0xFFFFFFFA)
        {
          return 0x10000000;
        }

        v10 = v9 - 87;
      }

      else
      {
        v10 = v9 - 55;
      }
    }

    v7 += 4;
    result = (v10 + 16 * result);
  }

  while (v7 != 24);
  return result;
}

uint64_t blahtex::TexMathFont::GetMathmlApproximation(blahtex::TexMathFont *this)
{
  v1 = *this - 1;
  if (v1 >= 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unexpected TexMathFont data");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v2 = &unk_275D29B4C;
  if (*(this + 4))
  {
    v2 = &unk_275D29B2C;
  }

  return v2[v1];
}

uint64_t blahtex::TexTextFont::GetMathmlApproximation(blahtex::TexTextFont *this)
{
  v1 = *this;
  if (*this == 2)
  {
    return 13;
  }

  if (v1 == 1)
  {
    v2 = *(this + 4);
    if (*(this + 5))
    {
      v3 = 11;
    }

    else
    {
      v3 = 9;
    }

    if (*(this + 5))
    {
      v4 = 12;
    }

    else
    {
      v4 = 10;
    }
  }

  else
  {
    if (v1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Unexpected TexTextFont data");
      __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
    }

    v2 = *(this + 4);
    if (*(this + 5))
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    if (*(this + 5))
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }
  }

  if (v2 == 1)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

void blahtex::ParseTree::MathList::~MathList(blahtex::ParseTree::MathList *this)
{
  *this = &unk_2884CC6C8;
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v3 != v2)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
        v2 = *(this + 2);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(this + 1);
  }

  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  blahtex::ParseTree::MathList::~MathList(this);

  JUMPOUT(0x277C8CFC0);
}

void blahtex::ParseTree::MathTableRow::~MathTableRow(blahtex::ParseTree::MathTableRow *this)
{
  *this = &unk_2884CC700;
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v3 != v2)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
        v2 = *(this + 2);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(this + 1);
  }

  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  blahtex::ParseTree::MathTableRow::~MathTableRow(this);

  JUMPOUT(0x277C8CFC0);
}

void blahtex::ParseTree::MathTable::~MathTable(blahtex::ParseTree::MathTable *this)
{
  *this = &unk_2884CC738;
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v3 != v2)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
        v2 = *(this + 2);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(this + 1);
  }

  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  blahtex::ParseTree::MathTable::~MathTable(this);

  JUMPOUT(0x277C8CFC0);
}

void blahtex::ParseTree::TextList::~TextList(blahtex::ParseTree::TextList *this)
{
  *this = &unk_2884CC770;
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v3 != v2)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
        v2 = *(this + 2);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(this + 1);
  }

  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  blahtex::ParseTree::TextList::~TextList(this);

  JUMPOUT(0x277C8CFC0);
}

void *blahtex::ParseTree::MathStateChange::Apply(uint64_t a1, _DWORD *a2)
{
  if ((atomic_load_explicit(&qword_280A39100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A39100))
  {
    sub_275D0134C(qword_280A390D8, &off_27A68F1E0, &off_27A68F240);
    __cxa_guard_release(&qword_280A39100);
  }

  result = sub_275D01688(qword_280A390D8, a1 + 8);
  if (result)
  {
    a2[4] = *(result + 10);
  }

  else
  {
    if ((atomic_load_explicit(&qword_280A39130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A39130))
    {
      sub_275D0134C(qword_280A39108, &off_27A68F240, &off_27A68F2D0);
      __cxa_guard_release(&qword_280A39130);
    }

    result = sub_275D01688(qword_280A39108, a1 + 8);
    if (!result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Unexpected command in MathStateChange::Apply");
      __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
    }

    *a2 = *(result + 10);
  }

  return result;
}

void *blahtex::ParseTree::TextStateChange::Apply(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280A39160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A39160))
  {
    sub_275CF9834(qword_280A39138, &off_27A68F2D0, &off_27A68F348);
    __cxa_guard_release(&qword_280A39160);
  }

  v4 = *(a1 + 31);
  if (v4 < 0)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
  }

  else
  {
    v5 = a1 + 8;
  }

  v9[0] = v5;
  v9[1] = v4;
  result = sub_275CF9B0C(qword_280A39138, v9);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unexpected command in TextStateChange::Apply");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v7 = *(result + 8);
  *(a2 + 12) = *(result + 18);
  *(a2 + 8) = v7;
  return result;
}

uint64_t blahtex::ParseTree::MathColour::Apply(uint64_t a1, uint64_t a2)
{
  result = blahtex::lookupColour(a1 + 32);
  if (result == 0x10000000)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Cannot find colour name in MathColour::Apply");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  *(a2 + 20) = result;
  return result;
}

uint64_t blahtex::ParseTree::TextColour::Apply(uint64_t a1, uint64_t a2)
{
  result = blahtex::lookupColour(a1 + 32);
  if (result == 0x10000000)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Cannot find colour name in TextColour::Apply");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  *(a2 + 20) = result;
  return result;
}

void *blahtex::ParseTree::MathSymbol::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1 + 8;
  blahtex::LatexFeatures::Update(a3, a1 + 8);
  v6 = sub_275CE4604(a2, &unk_275D25414, 1);
  v7 = *(a1 + 31);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 31);
  }

  else
  {
    v9 = *(a1 + 16);
  }

  return sub_275CE4604(v6, v8, v9);
}

const __int32 *blahtex::LatexFeatures::Update(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280A391B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A391B0))
  {
    sub_275CE3D50(qword_280A39188, &off_27A68F378, &off_27A68F638);
    __cxa_guard_release(&qword_280A391B0);
  }

  if ((atomic_load_explicit(&qword_280A391E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A391E0))
  {
    sub_275CE3D50(qword_280A391B8, &off_27A68F638, &off_27A690488);
    __cxa_guard_release(&qword_280A391E0);
  }

  v4 = *(a2 + 23);
  result = *a2;
  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (*v6 == 92)
  {
    if (v4 < 0)
    {
      if (*(a2 + 8) != 4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = a2;
      if (v4 != 4)
      {
        goto LABEL_13;
      }
    }

    result = wmemcmp(result, dword_275D25A04, 4uLL);
    if (!result)
    {
      *(a1 + 3) = 1;
      *(a1 + 5) = 1;
    }

LABEL_13:
    v7 = *(a2 + 23);
    if (v7 < 0)
    {
      if (*(a2 + 8) != 4)
      {
        goto LABEL_20;
      }

      result = *a2;
    }

    else
    {
      result = a2;
      if (v7 != 4)
      {
        goto LABEL_20;
      }
    }

    result = wmemcmp(result, dword_275D25A18, 4uLL);
    if (!result)
    {
      *(a1 + 6) = 257;
    }

LABEL_20:
    if ((*(a1 + 1) & 1) != 0 || (*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    if (*(a2 + 8) == 7)
    {
      result = wmemcmp(*a2, dword_275D28EDC, 7uLL);
      if (!result)
      {
LABEL_29:
        *(a1 + 1) = 1;
LABEL_30:
        if ((*a1 & 1) == 0)
        {
          v9 = *(a2 + 23);
          if ((v9 & 0x80u) == 0)
          {
            v10 = a2;
          }

          else
          {
            v10 = *a2;
          }

          if ((v9 & 0x80u) != 0)
          {
            v9 = *(a2 + 8);
          }

          v13 = v10;
          v14 = v9;
          result = sub_275CE4AE0(qword_280A39188, &v13);
          if (result)
          {
            *a1 = 1;
          }
        }

        if ((*(a1 + 2) & 1) == 0)
        {
          v11 = *(a2 + 23);
          if ((v11 & 0x80u) == 0)
          {
            v12 = a2;
          }

          else
          {
            v12 = *a2;
          }

          if ((v11 & 0x80u) != 0)
          {
            v11 = *(a2 + 8);
          }

          v13 = v12;
          v14 = v11;
          result = sub_275CE4AE0(qword_280A391B8, &v13);
          if (result)
          {
            *(a1 + 2) = 1;
          }
        }

        return result;
      }

      v8 = *(a2 + 23) < 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      goto LABEL_30;
    }

    if (*(a2 + 8) != 9)
    {
      goto LABEL_30;
    }

    result = wmemcmp(*a2, dword_275D28EFC, 9uLL);
    if (result)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  return result;
}

void *blahtex::ParseTree::MathCommand1Arg::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 8;
  blahtex::LatexFeatures::Update(a3, a1 + 8);
  v9 = *(a1 + 31);
  if (v9 >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(a1 + 8);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 31);
  }

  else
  {
    v11 = *(a1 + 16);
  }

  v12 = sub_275CE4604(a2, v10, v11);
  sub_275CE4604(v12, &unk_275D2541C, 1);
  (*(**(a1 + 32) + 24))(*(a1 + 32), a2, a3, a4);

  return sub_275CE4604(a2, &unk_275D25424, 1);
}

void *blahtex::ParseTree::MathStateChange::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1 + 8;
  blahtex::LatexFeatures::Update(a3, a1 + 8);
  v6 = *(a1 + 31);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 31);
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v9 = sub_275CE4604(a2, v7, v8);

  return sub_275CE4604(v9, &unk_275D25414, 1);
}

void *blahtex::ParseTree::MathColour::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3)
{
  *(a3 + 4) = 1;
  v4 = sub_275CE4604(a2, &unk_275D2542C, 7);
  v7 = *(a1 + 32);
  v6 = a1 + 32;
  v5 = v7;
  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = *(v6 + 8);
  }

  v11 = sub_275CE4604(v4, v9, v10);

  return sub_275CE4604(v11, &unk_275D25424, 1);
}

void *blahtex::ParseTree::MathCommand2Args::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + 8);
  blahtex::LatexFeatures::Update(a3, a1 + 8);
  if (*(a1 + 48) == 1)
  {
    sub_275CE4604(a2, &unk_275D2541C, 1);
    (*(**(a1 + 32) + 24))(*(a1 + 32), a2, a3, a4);
    v9 = sub_275CE4604(a2, &unk_275D25424, 1);
    v10 = *(a1 + 31);
    if (v10 >= 0)
    {
      v11 = v8;
    }

    else
    {
      v11 = *(a1 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(a1 + 31);
    }

    else
    {
      v12 = *(a1 + 16);
    }

    v13 = sub_275CE4604(v9, v11, v12);
    v14 = &unk_275D2541C;
    v15 = 1;
    goto LABEL_20;
  }

  v16 = *(a1 + 31);
  if ((v16 & 0x80000000) == 0 || *(a1 + 16) != 13)
  {
LABEL_13:
    if ((v16 & 0x80u) == 0)
    {
      v17 = v8;
    }

    else
    {
      v17 = *(a1 + 8);
    }

    if ((v16 & 0x80u) == 0)
    {
      v18 = v16;
    }

    else
    {
      v18 = *(a1 + 16);
    }

    v19 = sub_275CE4604(a2, v17, v18);
    sub_275CE4604(v19, &unk_275D2541C, 1);
    (*(**(a1 + 32) + 24))(*(a1 + 32), a2, a3, a4);
    v14 = &unk_275D254B4;
    v13 = a2;
    v15 = 2;
    goto LABEL_20;
  }

  if (wmemcmp(*v8, dword_275D2544C, 0xDuLL))
  {
    LOBYTE(v16) = *(a1 + 31);
    goto LABEL_13;
  }

  sub_275CE4604(a2, &unk_275D25484, 7);
  (*(**(a1 + 32) + 24))(*(a1 + 32), a2, a3, a4);
  v14 = &unk_275D254A4;
  v13 = a2;
  v15 = 3;
LABEL_20:
  sub_275CE4604(v13, v14, v15);
  (*(**(a1 + 40) + 24))(*(a1 + 40), a2, a3, a4);

  return sub_275CE4604(a2, &unk_275D25424, 1);
}

void *blahtex::ParseTree::MathGroup::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_275CE4604(a2, &unk_275D2541C, 1);
  (*(**(a1 + 8) + 24))(*(a1 + 8), a2, a3, a4);

  return sub_275CE4604(a2, &unk_275D25424, 1);
}

void *blahtex::ParseTree::MathPhantom::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_275CE4604(a2, &unk_275D254C0, 9);
  (*(**(a1 + 8) + 24))(*(a1 + 8), a2, a3, a4);

  return sub_275CE4604(a2, &unk_275D25424, 1);
}

void *blahtex::ParseTree::MathCancel::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_275CE4604(a2, &unk_275D254E8, 8);
  (*(**(a1 + 8) + 24))(*(a1 + 8), a2, a3, a4);

  return sub_275CE4604(a2, &unk_275D25424, 1);
}

uint64_t blahtex::ParseTree::MathList::GetPurifiedTex(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 != *(result + 16))
  {
    v8 = result;
    do
    {
      v9 = *v4++;
      result = (*(*v9 + 24))(v9, a2, a3, a4);
    }

    while (v4 != *(v8 + 16));
  }

  return result;
}

void *blahtex::ParseTree::MathScripts::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 24))(result, a2, a3, a4);
  }

  if (*(a1 + 16))
  {
    sub_275CE4604(a2, &unk_275D2550C, 2);
    (*(**(a1 + 16) + 24))(*(a1 + 16), a2, a3, a4);
    result = sub_275CE4604(a2, &unk_275D25424, 1);
  }

  if (*(a1 + 24))
  {
    sub_275CE4604(a2, &unk_275D25518, 2);
    (*(**(a1 + 24) + 24))(*(a1 + 24), a2, a3, a4);

    return sub_275CE4604(a2, &unk_275D25424, 1);
  }

  return result;
}

void *blahtex::ParseTree::MathLimits::GetPurifiedTex(uint64_t a1, void *a2)
{
  (*(**(a1 + 32) + 24))(*(a1 + 32));
  v6 = *(a1 + 8);
  v5 = a1 + 8;
  v4 = v6;
  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  return sub_275CE4604(a2, v8, v9);
}

void *blahtex::ParseTree::MathDelimited::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 16;
  blahtex::LatexFeatures::Update(a3, a1 + 16);
  blahtex::LatexFeatures::Update(a3, a1 + 40);
  v9 = sub_275CE4604(a2, &unk_275D25524, 5);
  v10 = *(a1 + 39);
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(a1 + 16);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 39);
  }

  else
  {
    v12 = *(a1 + 24);
  }

  sub_275CE4604(v9, v11, v12);
  (*(**(a1 + 8) + 24))(*(a1 + 8), a2, a3, a4);
  v13 = sub_275CE4604(a2, &unk_275D2553C, 6);
  v14 = *(a1 + 63);
  if (v14 >= 0)
  {
    v15 = a1 + 40;
  }

  else
  {
    v15 = *(a1 + 40);
  }

  if (v14 >= 0)
  {
    v16 = *(a1 + 63);
  }

  else
  {
    v16 = *(a1 + 48);
  }

  return sub_275CE4604(v13, v15, v16);
}

void *blahtex::ParseTree::MathMiddle::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1 + 8;
  blahtex::LatexFeatures::Update(a3, a1 + 8);
  v6 = sub_275CE4604(a2, &unk_275D25558, 7);
  v7 = *(a1 + 31);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 31);
  }

  else
  {
    v9 = *(a1 + 16);
  }

  return sub_275CE4604(v6, v8, v9);
}

void *blahtex::ParseTree::MathBig::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a1 + 8;
  blahtex::LatexFeatures::Update(a3, a1 + 8);
  blahtex::LatexFeatures::Update(a3, a1 + 32);
  v7 = *(a1 + 31);
  if (v7 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 31);
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = sub_275CE4604(a2, v8, v9);
  v11 = *(a1 + 55);
  if (v11 >= 0)
  {
    v12 = a1 + 32;
  }

  else
  {
    v12 = *(a1 + 32);
  }

  if (v11 >= 0)
  {
    v13 = *(a1 + 55);
  }

  else
  {
    v13 = *(a1 + 40);
  }

  return sub_275CE4604(v10, v12, v13);
}

uint64_t blahtex::ParseTree::MathTableRow::GetPurifiedTex(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 != *(result + 16))
  {
    v8 = result;
    do
    {
      if (v4 != *(v8 + 8))
      {
        sub_275CE4604(a2, &unk_275D25578, 2);
      }

      v9 = *v4++;
      result = (*(*v9 + 24))(v9, a2, a3, a4);
    }

    while (v4 != *(v8 + 16));
  }

  return result;
}

uint64_t blahtex::ParseTree::MathTable::GetPurifiedTex(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 != *(result + 16))
  {
    v8 = result;
    do
    {
      if (v4 != *(v8 + 8))
      {
        sub_275CE4604(a2, &unk_275D25584, 3);
      }

      v9 = *v4++;
      result = (*(*v9 + 24))(v9, a2, a3, a4);
    }

    while (v4 != *(v8 + 16));
  }

  return result;
}

void blahtex::ParseTree::MathEnvironment::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x277D85DE8];
  memset(&__p, 0, sizeof(__p));
  v19 = 0;
  v20 = 0uLL;
  if (*(a1 + 40) == 1)
  {
    sub_275CEB680(&unk_275D25594, (a1 + 8), &v18.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v18;
    blahtex::LatexFeatures::Update(a3, &__p);
    std::wstring::append(&__p, dword_275D2541C);
    MEMORY[0x277C8CD90](&v19, dword_275D25424);
  }

  else
  {
    sub_275CEB680(dword_275D2559C, (a1 + 8), &v18.__r_.__value_.__l.__data_);
    v8 = std::wstring::append(&v18, dword_275D25424);
    v9 = v8->__r_.__value_.__r.__words[0];
    v22[0] = v8->__r_.__value_.__l.__size_;
    *(v22 + 7) = *(&v8->__r_.__value_.__r.__words[1] + 7);
    v10 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v9;
    __p.__r_.__value_.__l.__size_ = v22[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v22 + 7);
    *(&__p.__r_.__value_.__s + 23) = v10;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    blahtex::LatexFeatures::Update(a3, &__p);
    sub_275CEB680(dword_275D255BC, (a1 + 8), &v18.__r_.__value_.__l.__data_);
    v11 = std::wstring::append(&v18, dword_275D25424);
    v12 = v11->__r_.__value_.__r.__words[0];
    v22[0] = v11->__r_.__value_.__l.__size_;
    *(v22 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
    v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19);
    }

    v19 = v12;
    *&v20 = v22[0];
    *(&v20 + 7) = *(v22 + 7);
    HIBYTE(v20) = v13;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_275CE4604(a2, p_p, size);
  (*(**(a1 + 32) + 24))(*(a1 + 32), a2, a3, a4);
  if (v20 >= 0)
  {
    v16 = &v19;
  }

  else
  {
    v16 = v19;
  }

  if (v20 >= 0)
  {
    v17 = HIBYTE(v20);
  }

  else
  {
    v17 = v20;
  }

  sub_275CE4604(a2, v16, v17);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_275CFD514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t blahtex::ParseTree::TextList::GetPurifiedTex(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 != *(result + 16))
  {
    v8 = result;
    do
    {
      v9 = *v4++;
      result = (*(*v9 + 24))(v9, a2, a3, a4);
    }

    while (v4 != *(v8 + 16));
  }

  return result;
}

void *blahtex::ParseTree::TextGroup::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_275CE4604(a2, dword_275D2541C, 1);
  (*(**(a1 + 8) + 24))(*(a1 + 8), a2, a3, a4);

  return sub_275CE4604(a2, dword_275D25424, 1);
}

void *blahtex::ParseTree::TextPhantom::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_275CE4604(a2, &unk_275D254C0, 9);
  (*(**(a1 + 8) + 24))(*(a1 + 8), a2, a3, a4);

  return sub_275CE4604(a2, dword_275D25424, 1);
}

void *blahtex::ParseTree::TextCancel::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_275CE4604(a2, &unk_275D254E8, 8);
  (*(**(a1 + 8) + 24))(*(a1 + 8), a2, a3, a4);

  return sub_275CE4604(a2, dword_275D25424, 1);
}

uint64_t blahtex::ParseTree::FormatCodePoint@<X0>(blahtex::ParseTree *this@<X0>, uint64_t a2@<X8>)
{
  sub_275CD9D50(&v11);
  v4 = sub_275CE4604(&v11, &unk_275D255D4, 2);
  v5 = *v4;
  v6 = *v4;
  *(v4 + *(*v4 - 24) + 8) = *(v4 + *(*v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  v7 = (v4 + *(v6 - 24));
  if (v7[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v7);
    v8 = std::locale::use_facet(&v16, MEMORY[0x277D82688]);
    v9 = (v8->__vftable[3].__on_zero_shared)(v8, 32);
    std::locale::~locale(&v16);
    v7[1].__fmtflags_ = v9;
    v5 = *v4;
  }

  v7[1].__fmtflags_ = 48;
  *(v4 + *(v5 - 24) + 8) |= 0x4000u;
  *(v4 + *(v5 - 24) + 24) = 8;
  MEMORY[0x277C8CEE0](v4, this);
  sub_275CDA92C(&v12, a2);
  v11 = &unk_2884CBA50;
  v15 = &unk_2884CBA78;
  v12 = &unk_2884CBB20;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v13);
  std::wostream::~wostream();
  return MEMORY[0x277C8CF80](&v15);
}

void sub_275CFDA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_275CD9EE0(&a9, &off_2884CBA88);
  MEMORY[0x277C8CF80](&a23);
  _Unwind_Resume(a1);
}

void *blahtex::ParseTree::TextSymbol::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  if ((atomic_load_explicit(&qword_280A39180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A39180))
  {
    sub_275D01784(&qword_280A39168, dword_275D255E0, dword_275D25928);
    __cxa_guard_release(&qword_280A39180);
  }

  v8 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    if (*(a1 + 16) > 1uLL || (v10 = **v8, v10 <= 127))
    {
      if (*(a1 + 16) != 1)
      {
        goto LABEL_14;
      }

      v11 = *v8;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = *(a1 + 31);
    if (v9 > 1)
    {
      goto LABEL_14;
    }

    v10 = *v8;
    if (v10 < 128)
    {
      v11 = (a1 + 8);
      if (v9 != 1)
      {
LABEL_14:
        if (!a4)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

LABEL_11:
      v12 = wmemcmp(v11, &unk_275D25414, 1uLL);
      if (!a4 || !v12)
      {
LABEL_15:
        blahtex::LatexFeatures::Update(a3, a1 + 8);
        v14 = *(a1 + 31);
        if (v14 >= 0)
        {
          v15 = (a1 + 8);
        }

        else
        {
          v15 = *(a1 + 8);
        }

        if (v14 >= 0)
        {
          v16 = *(a1 + 31);
        }

        else
        {
          v16 = *(a1 + 16);
        }

        v17 = a2;
        return sub_275CE4604(v17, v15, v16);
      }

LABEL_13:
      exception = __cxa_allocate_exception(0x30uLL);
      sub_275CDAE0C(&v29, dword_275D25928);
      sub_275CF88F0(__dst, (&off_27A68F348 + 2 * a4));
      sub_275CDAE0C(v27, &dword_275D25970);
      sub_275CE39CC(exception, &v29, a1 + 8, __dst, v27);
      __cxa_throw(exception, &unk_2884CB710, sub_275CDAEAC);
    }
  }

  for (i = qword_280A39170; i; i = *i)
  {
    v19 = *(i + 28);
    if (v10 >= v19)
    {
      if (v19 >= v10)
      {
        if (a4)
        {
          v25 = __cxa_allocate_exception(0x30uLL);
          sub_275CDAE0C(&v29, dword_275D25928);
          blahtex::ParseTree::FormatCodePoint(v10, __dst);
          sub_275CF88F0(v27, (&off_27A68F348 + 2 * a4));
          sub_275CDAE0C(v26, &dword_275D25970);
          sub_275CE39CC(v25, &v29, __dst, v27, v26);
          __cxa_throw(v25, &unk_2884CB710, sub_275CDAEAC);
        }

        *(a3 + 3) = 1;
LABEL_39:
        v20 = sub_275CE4604(a2, &unk_275D25974, 9);
        v17 = MEMORY[0x277C8CEE0](v20, v10);
        v15 = dword_275D25424;
        goto LABEL_40;
      }

      i += 8;
    }
  }

  if ((v10 - 1024) <= 0x5F)
  {
    if (a4 != 1)
    {
      v23 = __cxa_allocate_exception(0x30uLL);
      sub_275CDAE0C(&v29, dword_275D2599C);
      blahtex::ParseTree::FormatCodePoint(v10, __dst);
      sub_275CF88F0(v27, (&off_27A68F348 + 2 * a4));
      sub_275CDAE0C(v26, dword_275D25A04);
      sub_275CE39CC(v23, &v29, __dst, v27, v26);
      __cxa_throw(v23, &unk_2884CB710, sub_275CDAEAC);
    }

    *(a3 + 3) = 1;
    *(a3 + 5) = 1;
    goto LABEL_39;
  }

  if ((v10 - 12352) >= 0xC0 && (v10 - 13312) >> 10 >= 0x1B && (v10 - 63744) > 0x1E0)
  {
    v22 = __cxa_allocate_exception(0x30uLL);
    sub_275CDAE0C(&v29, dword_275D25A2C);
    blahtex::ParseTree::FormatCodePoint(v10, __dst);
    sub_275CDAE0C(v27, &dword_275D25970);
    sub_275CDAE0C(v26, &dword_275D25970);
    sub_275CE39CC(v22, &v29, __dst, v27, v26);
    __cxa_throw(v22, &unk_2884CB710, sub_275CDAEAC);
  }

  if (a4 != 2)
  {
    v24 = __cxa_allocate_exception(0x30uLL);
    sub_275CDAE0C(&v29, dword_275D2599C);
    blahtex::ParseTree::FormatCodePoint(v10, __dst);
    sub_275CF88F0(v27, (&off_27A68F348 + 2 * a4));
    sub_275CDAE0C(v26, dword_275D25A18);
    sub_275CE39CC(v24, &v29, __dst, v27, v26);
    __cxa_throw(v24, &unk_2884CB710, sub_275CDAEAC);
  }

  *(a3 + 6) = 257;
  if (*(a1 + 31) < 0)
  {
    v8 = *v8;
  }

  LODWORD(v29) = *v8;
  v15 = &v29;
  v17 = a2;
LABEL_40:
  v16 = 1;
  return sub_275CE4604(v17, v15, v16);
}

void *blahtex::ParseTree::TextStateChange::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1 + 8;
  blahtex::LatexFeatures::Update(a3, a1 + 8);
  v6 = *(a1 + 31);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 31);
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v9 = sub_275CE4604(a2, v7, v8);

  return sub_275CE4604(v9, &unk_275D25A90, 2);
}

void *blahtex::ParseTree::TextColour::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3)
{
  *(a3 + 4) = 1;
  v4 = sub_275CE4604(a2, &unk_275D2542C, 7);
  v7 = *(a1 + 32);
  v6 = a1 + 32;
  v5 = v7;
  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = *(v6 + 8);
  }

  v11 = sub_275CE4604(v4, v9, v10);

  return sub_275CE4604(v11, dword_275D25424, 1);
}

uint64_t blahtex::ParseTree::HandleFontEncodingCommand(uint64_t result, int *a2)
{
  v3 = result;
  if (*(result + 23) < 0)
  {
    if (*(result + 8) != 4)
    {
      goto LABEL_11;
    }

    result = *result;
LABEL_6:
    result = wmemcmp(result, dword_275D25A04, 4uLL);
    if (!result)
    {
      v5 = 1;
      goto LABEL_16;
    }

    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      v4 = *(v3 + 23);
      goto LABEL_9;
    }

LABEL_11:
    if (*(v3 + 8) != 4)
    {
      return result;
    }

    v3 = *v3;
    goto LABEL_13;
  }

  v4 = *(result + 23);
  if (v4 == 4)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (v4 != 4)
  {
    return result;
  }

LABEL_13:
  result = wmemcmp(v3, dword_275D25A18, 4uLL);
  if (result)
  {
    return result;
  }

  v5 = 2;
LABEL_16:
  if (*a2)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    sub_275CDAE0C(&v10, dword_275D25A9C);
    sub_275CDAE0C(v9, &dword_275D25970);
    sub_275CDAE0C(v8, &dword_275D25970);
    sub_275CDAE0C(v7, &dword_275D25970);
    sub_275CE39CC(exception, &v10, v9, v8, v7);
    __cxa_throw(exception, &unk_2884CB710, sub_275CDAEAC);
  }

  *a2 = v5;
  return result;
}

void sub_275CFE2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v28 - 33) < 0)
  {
    operator delete(*(v28 - 56));
    if ((v27 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v26);
  goto LABEL_12;
}

void *blahtex::ParseTree::TextCommand1Arg::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v13 = a4;
  v7 = a1 + 8;
  blahtex::LatexFeatures::Update(a3, a1 + 8);
  blahtex::ParseTree::HandleFontEncodingCommand(v7, &v13);
  v8 = *(a1 + 31);
  if (v8 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(a1 + 8);
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 31);
  }

  else
  {
    v10 = *(a1 + 16);
  }

  v11 = sub_275CE4604(a2, v9, v10);
  sub_275CE4604(v11, dword_275D2541C, 1);
  (*(**(a1 + 32) + 24))(*(a1 + 32), a2, a3, v13);

  return sub_275CE4604(a2, dword_275D25424, 1);
}

void *blahtex::ParseTree::EnterTextMode::GetPurifiedTex(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v13 = a4;
  v7 = a1 + 8;
  blahtex::LatexFeatures::Update(a3, a1 + 8);
  blahtex::ParseTree::HandleFontEncodingCommand(v7, &v13);
  v8 = *(a1 + 31);
  if (v8 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(a1 + 8);
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 31);
  }

  else
  {
    v10 = *(a1 + 16);
  }

  v11 = sub_275CE4604(a2, v9, v10);
  sub_275CE4604(v11, dword_275D2541C, 1);
  (*(**(a1 + 32) + 24))(*(a1 + 32), a2, a3, v13);

  return sub_275CE4604(a2, dword_275D25424, 1);
}

void blahtex::ParseTree::MathSymbol::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v19 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_275CE4604(a2, v5, v6);
  v8 = sub_275CE4604(v7, &unk_275D25B08, 12);
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  v9 = v11;
  v12 = *(v10 + 23);
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 8);
  }

  v15 = sub_275CE4604(v8, v13, v14);
  v16 = sub_275CE4604(v15, &unk_275D25B3C, 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v20, MEMORY[0x277D82688]);
  (v17->__vftable[3].__on_zero_shared)(v17, 10);
  std::locale::~locale(&v20);
  std::wostream::put();
  std::wostream::flush();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_275CFE664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::MathCommand1Arg::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v18 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D25B44, 17);
  v10 = *(a1 + 31);
  if (v10 >= 0)
  {
    v11 = a1 + 8;
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 31);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = sub_275CE4604(v9, v11, v12);
  v14 = sub_275CE4604(v13, &unk_275D25B3C, 1);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v19, MEMORY[0x277D82688]);
  (v15->__vftable[3].__on_zero_shared)(v15, 10);
  std::locale::~locale(&v19);
  std::wostream::put();
  std::wostream::flush();
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 32) + 32))(*(a1 + 32), a2, (a3 + 1));
}

void sub_275CFE808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::MathCommand2Args::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v18 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D25B8C, 18);
  v10 = *(a1 + 31);
  if (v10 >= 0)
  {
    v11 = a1 + 8;
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 31);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = sub_275CE4604(v9, v11, v12);
  v14 = sub_275CE4604(v13, &unk_275D25B3C, 1);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v19, MEMORY[0x277D82688]);
  (v15->__vftable[3].__on_zero_shared)(v15, 10);
  std::locale::~locale(&v19);
  std::wostream::put();
  std::wostream::flush();
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  (*(**(a1 + 32) + 32))(*(a1 + 32), a2, (a3 + 1));
  return (*(**(a1 + 40) + 32))(*(a1 + 40), a2, (a3 + 1));
}

void sub_275CFE9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::MathGroup::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v13 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D25BD8, 9);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v14, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v14);
  std::wostream::put();
  std::wostream::flush();
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 8) + 32))(*(a1 + 8), a2, (a3 + 1));
}

void sub_275CFEB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::MathPhantom::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v13 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D25C00, 11);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v14, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v14);
  std::wostream::put();
  std::wostream::flush();
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 8) + 32))(*(a1 + 8), a2, (a3 + 1));
}

void sub_275CFECBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::MathCancel::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v13 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D25C30, 10);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v14, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v14);
  std::wostream::put();
  std::wostream::flush();
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 8) + 32))(*(a1 + 8), a2, (a3 + 1));
}

void sub_275CFEE2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathList::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v14 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v7 = v14;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D25C5C, 8);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v15, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v15);
  std::wostream::put();
  std::wostream::flush();
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  for (i = *(a1 + 8); i != *(a1 + 16); ++i)
  {
    v12 = *i;
    (*(*v12 + 32))(v12, a2, (a3 + 1));
  }
}

void sub_275CFEFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathScripts::Print(void **a1, void *a2, int a3)
{
  v6 = 2 * a3;
  sub_275CDCC60(&__p, 2 * a3, 32);
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
    v8 = v29;
  }

  else
  {
    v8 = v28;
  }

  v9 = sub_275CE4604(a2, p_p, v8);
  v10 = sub_275CE4604(v9, &unk_275D25C80, 11);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v30, MEMORY[0x277D82688]);
  (v11->__vftable[3].__on_zero_shared)(v11, 10);
  std::locale::~locale(&v30);
  std::wostream::put();
  std::wostream::flush();
  if (v29 < 0)
  {
    operator delete(__p);
  }

  if (a1[1])
  {
    sub_275CDCC60(&__p, v6 + 2, 32);
    if ((v29 & 0x80u) == 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = __p;
    }

    if ((v29 & 0x80u) == 0)
    {
      v13 = v29;
    }

    else
    {
      v13 = v28;
    }

    v14 = sub_275CE4604(a2, v12, v13);
    v15 = sub_275CE4604(v14, &unk_275D25CB0, 4);
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v16 = std::locale::use_facet(&v30, MEMORY[0x277D82688]);
    (v16->__vftable[3].__on_zero_shared)(v16, 10);
    std::locale::~locale(&v30);
    std::wostream::put();
    std::wostream::flush();
    if (v29 < 0)
    {
      operator delete(__p);
    }

    (*(*a1[1] + 32))(a1[1], a2, (a3 + 2));
  }

  if (a1[2])
  {
    sub_275CDCC60(&__p, v6 + 2, 32);
    if ((v29 & 0x80u) == 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p;
    }

    if ((v29 & 0x80u) == 0)
    {
      v18 = v29;
    }

    else
    {
      v18 = v28;
    }

    v19 = sub_275CE4604(a2, v17, v18);
    v20 = sub_275CE4604(v19, &unk_275D25CC4, 5);
    std::ios_base::getloc((v20 + *(*v20 - 24)));
    v21 = std::locale::use_facet(&v30, MEMORY[0x277D82688]);
    (v21->__vftable[3].__on_zero_shared)(v21, 10);
    std::locale::~locale(&v30);
    std::wostream::put();
    std::wostream::flush();
    if (v29 < 0)
    {
      operator delete(__p);
    }

    (*(*a1[2] + 32))(a1[2], a2, (a3 + 2));
  }

  if (a1[3])
  {
    sub_275CDCC60(&__p, v6 + 2, 32);
    if ((v29 & 0x80u) == 0)
    {
      v22 = &__p;
    }

    else
    {
      v22 = __p;
    }

    if ((v29 & 0x80u) == 0)
    {
      v23 = v29;
    }

    else
    {
      v23 = v28;
    }

    v24 = sub_275CE4604(a2, v22, v23);
    v25 = sub_275CE4604(v24, &unk_275D25CDC, 5);
    std::ios_base::getloc((v25 + *(*v25 - 24)));
    v26 = std::locale::use_facet(&v30, MEMORY[0x277D82688]);
    (v26->__vftable[3].__on_zero_shared)(v26, 10);
    std::locale::~locale(&v30);
    std::wostream::put();
    std::wostream::flush();
    if (v29 < 0)
    {
      operator delete(__p);
    }

    (*(*a1[3] + 32))(a1[3], a2, (a3 + 2));
  }
}

void sub_275CFF414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::MathLimits::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v18 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D25CF4, 12);
  v10 = *(a1 + 31);
  if (v10 >= 0)
  {
    v11 = a1 + 8;
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 31);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = sub_275CE4604(v9, v11, v12);
  v14 = sub_275CE4604(v13, &unk_275D25B3C, 1);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v19, MEMORY[0x277D82688]);
  (v15->__vftable[3].__on_zero_shared)(v15, 10);
  std::locale::~locale(&v19);
  std::wostream::put();
  std::wostream::flush();
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 32) + 32))(*(a1 + 32), a2, (a3 + 1));
}

void sub_275CFF5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathStateChange::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v19 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_275CE4604(a2, v5, v6);
  v8 = sub_275CE4604(v7, &unk_275D25D28, 17);
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  v9 = v11;
  v12 = *(v10 + 23);
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 8);
  }

  v15 = sub_275CE4604(v8, v13, v14);
  v16 = sub_275CE4604(v15, &unk_275D25B3C, 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v20, MEMORY[0x277D82688]);
  (v17->__vftable[3].__on_zero_shared)(v17, 10);
  std::locale::~locale(&v20);
  std::wostream::put();
  std::wostream::flush();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_275CFF734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathColour::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v19 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_275CE4604(a2, v5, v6);
  v8 = sub_275CE4604(v7, &unk_275D25D70, 12);
  v11 = *(a1 + 32);
  v10 = a1 + 32;
  v9 = v11;
  v12 = *(v10 + 23);
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 8);
  }

  v15 = sub_275CE4604(v8, v13, v14);
  v16 = sub_275CE4604(v15, &unk_275D25B3C, 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v20, MEMORY[0x277D82688]);
  (v17->__vftable[3].__on_zero_shared)(v17, 10);
  std::locale::~locale(&v20);
  std::wostream::put();
  std::wostream::flush();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_275CFF898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::MathDelimited::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v23 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v7 = v23;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D25DA4, 15);
  v10 = *(a1 + 39);
  if (v10 >= 0)
  {
    v11 = a1 + 16;
  }

  else
  {
    v11 = *(a1 + 16);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 39);
  }

  else
  {
    v12 = *(a1 + 24);
  }

  v13 = sub_275CE4604(v9, v11, v12);
  v14 = sub_275CE4604(v13, &unk_275D25DE4, 3);
  v15 = *(a1 + 63);
  if (v15 >= 0)
  {
    v16 = a1 + 40;
  }

  else
  {
    v16 = *(a1 + 40);
  }

  if (v15 >= 0)
  {
    v17 = *(a1 + 63);
  }

  else
  {
    v17 = *(a1 + 48);
  }

  v18 = sub_275CE4604(v14, v16, v17);
  v19 = sub_275CE4604(v18, &unk_275D25B3C, 1);
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v24, MEMORY[0x277D82688]);
  (v20->__vftable[3].__on_zero_shared)(v20, 10);
  std::locale::~locale(&v24);
  std::wostream::put();
  std::wostream::flush();
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 8) + 32))(*(a1 + 8), a2, (a3 + 1));
}

void sub_275CFFA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathMiddle::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v19 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_275CE4604(a2, v5, v6);
  v8 = sub_275CE4604(v7, &unk_275D25DF4, 12);
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  v9 = v11;
  v12 = *(v10 + 23);
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 8);
  }

  v15 = sub_275CE4604(v8, v13, v14);
  v16 = sub_275CE4604(v15, &unk_275D25B3C, 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v20, MEMORY[0x277D82688]);
  (v17->__vftable[3].__on_zero_shared)(v17, 10);
  std::locale::~locale(&v20);
  std::wostream::put();
  std::wostream::flush();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_275CFFBD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathBig::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v24 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v6 = v24;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_275CE4604(a2, v5, v6);
  v8 = sub_275CE4604(v7, &unk_275D25E28, 9);
  v9 = *(a1 + 31);
  if (v9 >= 0)
  {
    v10 = a1 + 8;
  }

  else
  {
    v10 = *(a1 + 8);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 31);
  }

  else
  {
    v11 = *(a1 + 16);
  }

  v12 = sub_275CE4604(v8, v10, v11);
  v13 = sub_275CE4604(v12, &unk_275D25DE4, 3);
  v16 = *(a1 + 32);
  v15 = a1 + 32;
  v14 = v16;
  v17 = *(v15 + 23);
  if (v17 >= 0)
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  if (v17 >= 0)
  {
    v19 = *(v15 + 23);
  }

  else
  {
    v19 = *(v15 + 8);
  }

  v20 = sub_275CE4604(v13, v18, v19);
  v21 = sub_275CE4604(v20, &unk_275D25B3C, 1);
  std::ios_base::getloc((v21 + *(*v21 - 24)));
  v22 = std::locale::use_facet(&v25, MEMORY[0x277D82688]);
  (v22->__vftable[3].__on_zero_shared)(v22, 10);
  std::locale::~locale(&v25);
  std::wostream::put();
  std::wostream::flush();
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_275CFFD6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathTableRow::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v14 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v7 = v14;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D25E50, 12);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v15, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v15);
  std::wostream::put();
  std::wostream::flush();
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  for (i = *(a1 + 8); i != *(a1 + 16); ++i)
  {
    v12 = *i;
    (*(*v12 + 32))(v12, a2, (a3 + 1));
  }
}

void sub_275CFFEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::MathTable::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v14 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v7 = v14;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D25E84, 9);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v15, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v15);
  std::wostream::put();
  std::wostream::flush();
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  for (i = *(a1 + 8); i != *(a1 + 16); ++i)
  {
    v12 = *i;
    (*(*v12 + 32))(v12, a2, (a3 + 1));
  }
}

void sub_275D00074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::MathEnvironment::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v17 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v7 = v17;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D25EAC, 17);
  v10 = *(a1 + 31);
  if (v10 >= 0)
  {
    v11 = a1 + 8;
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 31);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = sub_275CE4604(v9, v11, v12);
  sub_275CE4604(v13, &unk_275D25B3C, 1);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 40) == 1)
  {
    sub_275CE9618(a2, " (short)");
  }

  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v14 = std::locale::use_facet(__p, MEMORY[0x277D82688]);
  (v14->__vftable[3].__on_zero_shared)(v14, 10);
  std::locale::~locale(__p);
  std::wostream::put();
  std::wostream::flush();
  return (*(**(a1 + 32) + 32))(*(a1 + 32), a2, (a3 + 1));
}

uint64_t blahtex::ParseTree::EnterTextMode::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v18 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D25EF4, 15);
  v10 = *(a1 + 31);
  if (v10 >= 0)
  {
    v11 = a1 + 8;
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 31);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = sub_275CE4604(v9, v11, v12);
  v14 = sub_275CE4604(v13, &unk_275D25B3C, 1);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v19, MEMORY[0x277D82688]);
  (v15->__vftable[3].__on_zero_shared)(v15, 10);
  std::locale::~locale(&v19);
  std::wostream::put();
  std::wostream::flush();
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 32) + 32))(*(a1 + 32), a2, (a3 + 1));
}

void sub_275D003CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::TextList::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v14 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v7 = v14;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D25F34, 8);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v15, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v15);
  std::wostream::put();
  std::wostream::flush();
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  for (i = *(a1 + 8); i != *(a1 + 16); ++i)
  {
    v12 = *i;
    (*(*v12 + 32))(v12, a2, (a3 + 1));
  }
}

void sub_275D00550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::TextSymbol::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v19 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_275CE4604(a2, v5, v6);
  v8 = sub_275CE4604(v7, &unk_275D25F58, 12);
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  v9 = v11;
  v12 = *(v10 + 23);
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 8);
  }

  v15 = sub_275CE4604(v8, v13, v14);
  v16 = sub_275CE4604(v15, &unk_275D25B3C, 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v20, MEMORY[0x277D82688]);
  (v17->__vftable[3].__on_zero_shared)(v17, 10);
  std::locale::~locale(&v20);
  std::wostream::put();
  std::wostream::flush();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_275D006B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::TextCommand1Arg::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v18 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D25F8C, 17);
  v10 = *(a1 + 31);
  if (v10 >= 0)
  {
    v11 = a1 + 8;
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 31);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = sub_275CE4604(v9, v11, v12);
  v14 = sub_275CE4604(v13, &unk_275D25B3C, 1);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v19, MEMORY[0x277D82688]);
  (v15->__vftable[3].__on_zero_shared)(v15, 10);
  std::locale::~locale(&v19);
  std::wostream::put();
  std::wostream::flush();
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 32) + 32))(*(a1 + 32), a2, (a3 + 1));
}

void sub_275D00858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::TextStateChange::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v19 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_275CE4604(a2, v5, v6);
  v8 = sub_275CE4604(v7, &unk_275D25FD4, 17);
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  v9 = v11;
  v12 = *(v10 + 23);
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 8);
  }

  v15 = sub_275CE4604(v8, v13, v14);
  v16 = sub_275CE4604(v15, &unk_275D25B3C, 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v20, MEMORY[0x277D82688]);
  (v17->__vftable[3].__on_zero_shared)(v17, 10);
  std::locale::~locale(&v20);
  std::wostream::put();
  std::wostream::flush();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_275D009BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void blahtex::ParseTree::TextColour::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v19 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v6 = v19;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_275CE4604(a2, v5, v6);
  v8 = sub_275CE4604(v7, &unk_275D2601C, 12);
  v11 = *(a1 + 32);
  v10 = a1 + 32;
  v9 = v11;
  v12 = *(v10 + 23);
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 8);
  }

  v15 = sub_275CE4604(v8, v13, v14);
  v16 = sub_275CE4604(v15, &unk_275D25B3C, 1);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v20, MEMORY[0x277D82688]);
  (v17->__vftable[3].__on_zero_shared)(v17, 10);
  std::locale::~locale(&v20);
  std::wostream::put();
  std::wostream::flush();
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_275D00B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::TextGroup::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v13 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D26050, 9);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v14, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v14);
  std::wostream::put();
  std::wostream::flush();
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 8) + 32))(*(a1 + 8), a2, (a3 + 1));
}

void sub_275D00C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::TextPhantom::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v13 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D26078, 11);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v14, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v14);
  std::wostream::put();
  std::wostream::flush();
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 8) + 32))(*(a1 + 8), a2, (a3 + 1));
}

void sub_275D00E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t blahtex::ParseTree::TextCancel::Print(uint64_t a1, void *a2, int a3)
{
  sub_275CDCC60(__p, 2 * a3, 32);
  if ((v13 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_275CE4604(a2, v6, v7);
  v9 = sub_275CE4604(v8, &unk_275D260A8, 10);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v14, MEMORY[0x277D82688]);
  (v10->__vftable[3].__on_zero_shared)(v10, 10);
  std::locale::~locale(&v14);
  std::wostream::put();
  std::wostream::flush();
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**(a1 + 8) + 32))(*(a1 + 8), a2, (a3 + 1));
}

void sub_275D00F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275D00F9C(uint64_t a1)
{
  *a1 = &unk_2884CC7A8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_275D00FEC(uint64_t a1)
{
  *a1 = &unk_2884CC7A8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275D0105C(uint64_t a1)
{
  *a1 = &unk_2884CC800;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *a1 = &unk_2884CC7A8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_275D010D8(uint64_t a1)
{
  *a1 = &unk_2884CC800;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *a1 = &unk_2884CC7A8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275D01174(uint64_t a1)
{
  *a1 = &unk_2884CC858;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_275D011C4(uint64_t a1)
{
  *a1 = &unk_2884CC858;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275D01234(uint64_t a1)
{
  *a1 = &unk_2884CC8B0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *a1 = &unk_2884CC858;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_275D012B0(uint64_t a1)
{
  *a1 = &unk_2884CC8B0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *a1 = &unk_2884CC858;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275D0134C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a2 != a3)
  {
    sub_275D013C4();
  }

  return result;
}

void sub_275D0142C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_275CEA29C(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_275D01450(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = sub_275CE78D8(a1, (a2 + 2));
  v2[1] = v4;
  v5 = sub_275D014B4(a1, v4, (v2 + 2));
  if (v5)
  {
    return v5;
  }

  sub_275CEA1E8(a1, v2);
  return v2;
}

void *sub_275D014B4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11[1];
          if (v12 == a2)
          {
            if (sub_275D01600(a1, (v11 + 2), a3))
            {
              return v11;
            }
          }

          else
          {
            if (v8 > 1)
            {
              if (v12 >= v4)
              {
                v12 %= v4;
              }
            }

            else
            {
              v12 &= v4 - 1;
            }

            if (v12 != v9)
            {
              break;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_275CA0844(a1, v18);
  }

  return 0;
}

BOOL sub_275D01600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 8);
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v4 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  return wmemcmp(v8, v7, v3) == 0;
}

void *sub_275D01688(void *a1, uint64_t a2)
{
  v4 = sub_275CE78D8(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (sub_275D01600(a1, (v11 + 2), a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *sub_275D01784(void *a1, int *a2, int *a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_275C8E7D8(a1, v4, v6++);
    }

    while (v6 != a3);
  }

  return a1;
}

void *blahtex::UnicodeNameTable(blahtex *this)
{
  if ((atomic_load_explicit(&qword_280A39210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A39210))
  {
    sub_275D01C68(&unk_280A391E8, &unk_27A690BA8, &unk_27A690BA8 + 5290);
    __cxa_guard_release(&qword_280A39210);
  }

  return &unk_280A391E8;
}

uint64_t blahtex::XmlEncode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_275CD9D50(&v26);
  v7 = *(a1 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = a1[1];
  }

  if (v7)
  {
    if (v8 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    while (1)
    {
      v10 = *v9;
      if (*v9 == 62)
      {
        break;
      }

      if (v10 == 60)
      {
        v11 = &unk_275D29B84;
LABEL_13:
        v12 = 4;
        goto LABEL_14;
      }

      if (v10 == 38)
      {
        v11 = &unk_275D29B6C;
        v12 = 5;
LABEL_14:
        v6 = sub_275CE4604(&v26, v11, v12);
        goto LABEL_15;
      }

      if (v10 <= 127)
      {
        goto LABEL_23;
      }

      blahtex::UnicodeNameTable(v6);
      v6 = sub_275CD9A0C(qword_280A391E8, v9);
      v15 = v6;
      if (!v6)
      {
        if (*(a2 + 4) != 1)
        {
          v21 = sub_275CE4604(&v26, &unk_275D29BAC, 3);
          *(v21 + *(*v21 - 24) + 8) = *(v21 + *(*v21 - 24) + 8) & 0xFFFFFFB5 | 8;
          v22 = MEMORY[0x277C8CEE0]();
          v6 = sub_275CE4604(v22, &unk_275D29BBC, 1);
          goto LABEL_15;
        }

        goto LABEL_23;
      }

      v16 = *a2;
      if ((*(a2 + 5) & 1) == 0)
      {
        v17 = v16 <= 2 ? 2 : *a2;
        if (*(v9 + 1))
        {
          v16 = v17;
        }
      }

      if (v16 <= 1)
      {
        if (v16)
        {
          if (v16 != 1)
          {
            goto LABEL_15;
          }

          goto LABEL_45;
        }

LABEL_23:
        v31[0] = *v9;
        v6 = sub_275CE4604(&v26, v31, 1);
        goto LABEL_15;
      }

      if (v16 == 2)
      {
        goto LABEL_42;
      }

      if (v16 == 3)
      {
        v18 = v6 + 6;
        if (v6[6])
        {
          v19 = sub_275CE4604(&v26, &unk_275D29BC4, 1);
          v20 = v15 + 5;
          goto LABEL_44;
        }

LABEL_42:
        if (v6[4])
        {
          v19 = sub_275CE4604(&v26, &unk_275D29BC4, 1);
          v20 = v15 + 3;
          v18 = v15 + 4;
LABEL_44:
          v23 = sub_275CE4604(v19, *v20, *v18);
LABEL_46:
          v6 = sub_275CE4604(v23, &unk_275D29BBC, 1);
          goto LABEL_15;
        }

LABEL_45:
        v24 = sub_275CE4604(&v26, &unk_275D29BAC, 3);
        *(v24 + *(*v24 - 24) + 8) = *(v24 + *(*v24 - 24) + 8) & 0xFFFFFFB5 | 8;
        v23 = MEMORY[0x277C8CEE0]();
        goto LABEL_46;
      }

LABEL_15:
      v9 = (v9 + 4);
      v13 = *(a1 + 23);
      if ((v13 & 0x80u) == 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = *a1;
      }

      if ((v13 & 0x80u) != 0)
      {
        v13 = a1[1];
      }

      if (v9 == (v14 + 4 * v13))
      {
        goto LABEL_48;
      }
    }

    v11 = &unk_275D29B98;
    goto LABEL_13;
  }

LABEL_48:
  sub_275CDA92C(&v27, a3);
  v26 = &unk_2884CBA50;
  v30 = &unk_2884CBA78;
  v27 = &unk_2884CBB20;
  if (v29 < 0)
  {
    operator delete(v28[7].__locale_);
  }

  v27 = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v28);
  std::wostream::~wostream();
  return MEMORY[0x277C8CF80](&v30);
}

void sub_275D01C30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_275CD9EE0(va, &off_2884CBA88);
  MEMORY[0x277C8CF80](va1);
  _Unwind_Resume(a1);
}

uint64_t sub_275D01C68(uint64_t a1, int *a2, int *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_275D01CE4(a1, v5);
      v5 += 10;
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t *sub_275D01CE4(void *a1, int *a2)
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

void sub_275D01F48(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 40) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 16) = v6;

    operator delete(v6);
  }
}

void sub_275D0201C()
{
  if (__cxa_guard_acquire(&qword_280A38D98))
  {
    qword_280A38DA8 = 0;
    unk_280A38DB0 = 0;
    qword_280A38DB8 = 0;
    __cxa_guard_release(&qword_280A38D98);
  }
}

void sub_275D0205C()
{
  if (__cxa_guard_acquire(&qword_280A38DA0))
  {
    qword_280A38DC0 = 0;
    unk_280A38DC8 = 0;
    qword_280A38DD0 = 0;
    __cxa_guard_release(&qword_280A38DA0);
  }
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTFontGetBoundingRectsForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count)
{
  MEMORY[0x282114780](font, *&orientation, glyphs, boundingRects, count);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  MEMORY[0x282114928](line, context);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2821F7830]();
}

{
  return MEMORY[0x2821F7838]();
}

{
  return MEMORY[0x2821F7850]();
}

{
  return MEMORY[0x2821F7858]();
}

uint64_t std::wostream::operator<<()
{
  return MEMORY[0x2821F7970]();
}

{
  return MEMORY[0x2821F7978]();
}

{
  return MEMORY[0x2821F7980]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}