void sub_2992F2EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_2992F3250(&a17);
  sub_299219AB4(&a10, 0);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__CFArray *MecabraCopyEmojiCharacterArrayForString(int a1, uint64_t a2)
{
  if (a1 == 1)
  {
    v2 = 11;
  }

  else
  {
    v2 = 12;
  }

  return sub_2992F2800(v2, 0, a2, 0);
}

const void **sub_2992F2F40(int a1, int a2, uint64_t a3)
{
  result = sub_2992F28F4(a1);
  if (result)
  {
    v6 = *result;
    if (a2 == 2)
    {
      v7 = 5;
    }

    else
    {
      v7 = 4;
    }

    if (a2 == 1)
    {
      v8 = 6;
    }

    else
    {
      v8 = v7;
    }

    return MEMORY[0x2A1C5FBB0](v6, v8, a3);
  }

  return result;
}

const void **sub_2992F2FA8(int a1, uint64_t a2)
{
  result = sub_2992F28F4(a1);
  if (result)
  {
    v4 = *result;

    return MEMORY[0x2A1C5FBA8](v4, a2);
  }

  return result;
}

const void **sub_2992F2FF4(int a1, uint64_t a2, uint64_t a3)
{
  result = sub_2992F28F4(a1);
  if (result)
  {
    v6 = *result;

    return MEMORY[0x2A1C5FBB8](v6, a2, a3);
  }

  return result;
}

const void **sub_2992F3048(int a1)
{
  result = sub_2992F28F4(a1);
  if (result)
  {
    v2 = *result;

    return MEMORY[0x2A1C5FBC0](v2);
  }

  return result;
}

uint64_t sub_2992F3080(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_2992F30E0((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_2992F30E0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 24) = 0;
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

const void **sub_2992F313C(const void **a1)
{
  v2 = sub_2991C0548(&xmmword_2A1460E18, a1);
  v3 = *(&xmmword_2A1460E18 + 1);
  if (!*(&xmmword_2A1460E18 + 1))
  {
    return 0;
  }

  v4 = v2;
  v5 = vcnt_s8(*(&xmmword_2A1460E18 + 8));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = v2;
    if (v2 >= *(&xmmword_2A1460E18 + 1))
    {
      v7 = v2 % *(&xmmword_2A1460E18 + 1);
    }
  }

  else
  {
    v7 = (*(&xmmword_2A1460E18 + 1) - 1) & v2;
  }

  v8 = *(xmmword_2A1460E18 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = i[1];
    if (v10 == v4)
    {
      if (sub_2991C09F4(&xmmword_2A1460E18, i + 2, a1))
      {
        return i;
      }
    }

    else
    {
      if (v6 > 1)
      {
        if (v10 >= v3)
        {
          v10 %= v3;
        }
      }

      else
      {
        v10 &= v3 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_2992F3250(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2992F30E0(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2992F329C(void *a1, unsigned int *a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  *a1 = *a2;
  v7 = sub_299277300(v6);
  if (v7 == 5)
  {
    v8 = sub_2993E02C0();
    v7 = sub_2993E0350(v8, 5);
  }

  sub_2993B7C78((a1 + 1), v7, *(a2 + 5), *(a2 + 6), *(a2 + 7), a3, *(a2 + 8), *(a2 + 9));
}

void sub_2992F3A38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992F578C(va);
  sub_2992F578C(va);
  v6 = v2[57];
  v2[57] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_2992F5670(v2 + 55, 0);
  sub_29934756C(v2 + 41);
  sub_29934756C(v3 + 2);
  sub_2992F3BF4(v4, 0);
  sub_2992F3BA8(v3, 0);
  sub_2992EAF08(v2 + 26);
  sub_2992EAF08(v2 + 25);
  sub_2993B8B28((v2 + 1));
  _Unwind_Resume(a1);
}

uint64_t sub_2992F3BA8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2992F8BD0(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2992F3BF4(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2992EAF50(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

BOOL sub_2992F3C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 2)
  {
    return 0;
  }

  LMVocabularyGetSharedVocabulary();
  return LMVocabularyContainsLemmaForCharacters() != 0;
}

uint64_t *sub_2992F3C90(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_29924AC3C(v2 + 8);
    MEMORY[0x29C29BFB0](v2, 0x10A1C400AA0B987);
  }

  return a1;
}

uint64_t sub_2992F3D54(uint64_t a1)
{
  v4 = (a1 + 488);
  sub_2992F578C(&v4);
  v4 = (a1 + 464);
  sub_2992F578C(&v4);
  v2 = *(a1 + 456);
  *(a1 + 456) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_2992F5670((a1 + 440), 0);
  sub_29934756C((a1 + 328));
  sub_29934756C((a1 + 232));
  sub_2992F3BF4((a1 + 224), 0);
  sub_2992F3BA8((a1 + 216), 0);
  sub_2992EAF08((a1 + 208));
  sub_2992EAF08((a1 + 200));
  sub_2993B8B28(a1 + 8);
  return a1;
}

void sub_2992F3E1C(uint64_t a1)
{
  v2 = *(a1 + 448);
  if (*(v2 + 105) == 1)
  {
    if (sub_2992F3E9C(a1))
    {
      return;
    }

    v2 = *(a1 + 448);
  }

  if (*(v2 + 104) == 1)
  {
    sub_2992F3F64(a1, 0);
    sub_2993B8CEC((a1 + 8));

    sub_2993B8F40(a1 + 8);
  }
}

uint64_t sub_2992F3E9C(int *a1)
{
  if (sub_299277300(*a1) == 5)
  {
    sub_2992F3F64(a1, 0);
    sub_2993B9068((a1 + 2), 5);
    sub_2992EAFC0();
  }

  return 0;
}

void sub_2992F3F64(uint64_t a1, int a2)
{
  sub_2993B8C0C((a1 + 8), a2);
  v3 = *(a1 + 216);
  if (v3)
  {
    *(v3 + 8) = 0;
    sub_2993EEE54(*(v3 + 16));
    sub_29931FE84(*(v3 + 48));
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    sub_2993EEE54(*(v4 + 16));
    sub_2993EEE54(*(v4 + 24));
    *(v4 + 40) = 0;
  }

  sub_2993EEE54(*(a1 + 344));
  sub_2993EEE54(*(a1 + 248));
  sub_2993EEE54(*(a1 + 208));
  v5 = *(a1 + 200);

  sub_2993EEE54(v5);
}

void sub_2992F3FF0(uint64_t a1)
{
  sub_2992F3F64(a1, 1);
  v2 = *(a1 + 216);
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {

      sub_299313050(v3);
    }
  }
}

void sub_2992F4044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v7 = sub_2992774EC(*(a1 + 8));
  v8 = CFStringCreateWithCString(0, v7, 0x8000100u);
  v10 = *a2;
  v9 = *(a2 + 8);
  while (v10 != v9)
  {
    (*(**v10 + 16))(*v10, Mutable, a3, 0);
    ++v10;
  }

  v11 = sub_299277514(*a1, *(a1 + 4));
  v12 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v11, 0x8000100u);
  sub_2992BBD18(*(a1 + 456), v8, v12, Mutable);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_2992F4184(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  sub_299219AB4(va, 0);
  sub_299219AB4(va1, 0);
  sub_299274AE8(va2, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992F41C8(uint64_t a1)
{
  if (*(a1 + 6) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 184);
  v3 = *(a1 + 8);
  if (*(v3 + 5) != 1 || (v4 = *(v3 + 40)) == 0)
  {
    v4 = *(v3 + 32);
  }

  return (*(*v2 + 16))(v2, v4);
}

BOOL sub_2992F4224(void *a1)
{
  v1 = a1[2];
  if (*(v1 + 5) != 1 || (v2 = *(v1 + 40)) == 0)
  {
    v2 = *(v1 + 32);
  }

  return *(v2 + 8) && **(a1[12] + 8) && *(a1[14] + 8) != 0;
}

BOOL sub_2992F4274(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = MEMORY[0x29EDB8F00];
  if (!a2)
  {
    goto LABEL_5;
  }

  if (*(*(a1 + 432) + 4) <= 7u)
  {
    sub_2993245EC(a2);
  }

  if (sub_299225D3C(a2, kMecabraContextOptionPrivateMode) == *v8)
  {
    v15 = *(a1 + 16);
    if (*(v15 + 5) != 1 || (v16 = *(v15 + 40)) == 0)
    {
      v16 = *(v15 + 32);
    }

    v17 = *(v16 + 8);
    v18 = *MEMORY[0x29EDC5730];
    v19 = *MEMORY[0x29EDB8EF8];
  }

  else
  {
LABEL_5:
    v9 = *(a1 + 16);
    if (*(v9 + 5) != 1 || (v10 = *(v9 + 40)) == 0)
    {
      v10 = *(v9 + 32);
    }

    v11 = *(v10 + 8);
    v12 = *MEMORY[0x29EDC5730];
    v13 = *v8;
    if (*(v10 + 40))
    {
      v14 = *v8;
    }

    else
    {
      v14 = *MEMORY[0x29EDB8EF8];
    }
  }

  LMLanguageModelSetParameterValue();
  result = sub_2992F4224(a1);
  if (result)
  {
    sub_2992F3F64(a1, 0);
    *(a1 + 4) = (a4 << 8) & 0x4000;
    *(a1 + 424) = a3;
    sub_2992B1E6C();
  }

  return result;
}

void sub_2992F4AA4(void *a1, uint64_t a2)
{
  if (a2)
  {
    sub_2992F4044(a1, (a1 + 61), a2);
    if (sub_2992F4224(a1))
    {

      sub_2992F3F64(a1, 0);
    }
  }
}

void sub_2992F4B04(int a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 144);
  if (v4)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3002000000;
    v24 = sub_2992F4E80;
    v25 = sub_2992F4E90;
    v6 = *MEMORY[0x29EDB8ED8];
    cf = CFStringCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v4);
    v7 = v22[5];
    if (v7)
    {
      CFStringTrimWhitespace(v7);
      v17 = 0;
      v18 = &v17;
      v19 = 0x2000000000;
      Length = CFStringGetLength(v22[5]);
      v8 = v18[3];
      if (v8)
      {
        if (a3)
        {
          v13 = 0;
          v14 = &v13;
          v15 = 0x2000000000;
          v16 = 0;
          v9 = v22[5];
          v12[0] = MEMORY[0x29EDCA5F8];
          v12[1] = 0x40000000;
          v12[2] = sub_2992F4E9C;
          v12[3] = &unk_29EF10D10;
          v12[4] = &v21;
          v12[5] = &v13;
          v12[6] = &v17;
          sub_29927708C(v9, 1, v12);
          v10.length = v18[3];
          if (v10.length >= 2 && v14[3] <= 4)
          {
            v10.location = 0;
            v11 = CFStringCreateWithSubstring(v6, v22[5], v10);
            sub_2992F4F7C(a1, v11);
          }

          _Block_object_dispose(&v13, 8);
        }

        else if (v8 >= 1)
        {
          sub_2992F4F7C(a1, v22[5]);
        }
      }

      _Block_object_dispose(&v17, 8);
    }

    _Block_object_dispose(&v21, 8);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void sub_2992F4DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, const void *);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  sub_299219AB4(va, 0);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  sub_29924A4BC((v9 + 40), 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992F4E80(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void sub_2992F4E9C(void *a1, CFRange range, _BYTE *a3)
{
  length = range.length;
  v7.location = range.location;
  v7.length = length;
  v6 = CFStringCreateWithSubstring(*MEMORY[0x29EDB8ED8], *(*(a1[4] + 8) + 40), v7);
  if (!CEMStringIsSingleEmoji() || *(*(a1[5] + 8) + 24) > 14)
  {
    *a3 = 1;
    if (!v6)
    {
      return;
    }

    goto LABEL_6;
  }

  *(*(a1[6] + 8) + 24) -= length;
  ++*(*(a1[5] + 8) + 24);
  if (v6)
  {
LABEL_6:
    CFRelease(v6);
  }
}

void sub_2992F4F64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

void sub_2992F4F7C(int a1, CFStringRef theString)
{
  if (theString)
  {
    CFStringGetLength(theString);
  }

  sub_299276B44();
}

void sub_2992F54C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, const void *a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*v25 + 16))(v25);
  (*(*v26 + 16))(v26);
  sub_299219AB4(&a25, 0);
  sub_299219AB4((v27 - 120), 0);
  sub_299229F00((v27 - 112), 0);
  sub_299219AB4((v27 - 104), 0);
  if (a10)
  {
    MEMORY[0x29C29BF70](a10, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2992F5670(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_29921B8CC(v2 + 24, *(v2 + 32));
    sub_29921B8CC(v2, *(v2 + 8));

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2992F56E0(uint64_t a1)
{
  sub_2992F5718(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_2992F5718(void *result, void *a2)
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

void sub_2992F578C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2992F57E0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_2992F57E0(void *result)
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

uint64_t sub_2992F58BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F6E8E0;
  a2[1] = v2;
  return result;
}

uint64_t sub_2992F58F4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E950))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992F59B0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F6E970;
  a2[1] = v2;
  return result;
}

uint64_t sub_2992F59E8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E9D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992F5A34(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(a1 + 16) = a4;
  if (a3)
  {
    v5 = a3 + 8;
    v6 = *(a3 + 8);
    *(a1 + 24) = a2;
    *(a1 + 32) = a3 + 24;
    v13 = 0;
    v7 = (*(*a2 + 32))(a2, &v13);
    v8 = v7;
    v9 = v13;
    v10 = (a1 + 8);
    if (v13 - 2 < 0)
    {
      if (2 - v13 < v6)
      {
        v6 = 2 - v13;
      }

      memcpy(&v10[-4 * v13 + -4 * v6], (v5 - 4 * v6), 4 * v6);
      memcpy(&v10[-4 * v9], v8, 4 * v9);
      v11 = v6 + v9;
    }

    else
    {
      *a1 = *(v7 + 4 * (v13 - 2));
      v11 = 2;
    }

    *v10 = v11;
  }

  else
  {
    *(a1 + 24) = a2;
    *(a1 + 32) = 0;
    *(a1 + 4) = 1;
    *(a1 + 8) = 1;
  }

  return a1;
}

double sub_2992F5B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = 0;
  v5 = (*(*a2 + 32))(a2, &v22);
  v6 = 0.0;
  if (v22 - 127 >= 0xFFFFFFFFFFFFFF82)
  {
    v7 = v5;
    v8 = *v5;
    v10 = *(a1 + 8);
    v9 = (a1 + 8);
    v11 = *(a3 + 8);
    LMLanguageModelConditionalProbability();
    v6 = -v12;
    v13 = v22;
    if (v22 >= 2)
    {
      v14 = *v9 != 0;
      if (*v9)
      {
        v15 = -1;
      }

      else
      {
        v15 = 0;
      }

      memcpy(&unk_2A1461F08, &v9[4 * v15], 4 * (*v9 != 0));
      memcpy(&unk_2A1461F08 + 4 * v14, v7, 4 * v13);
      v16 = &unk_2A1461F08 + 4 * v14 - 4;
      v17 = 1;
      do
      {
        v18 = v7[v17];
        v19 = *(a3 + 8);
        LMLanguageModelConditionalProbability();
        v6 = v6 - v20;
        ++v17;
        v16 += 4;
      }

      while (v17 < v22);
    }
  }

  return v6;
}

void *sub_2992F5C7C(void *result)
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

void *sub_2992F5CE8(void *result, int a2)
{
  v2 = result[1];
  if ((v2 - *result) >= 9)
  {
    v4 = result;
    result = (*(**(v2 - 8) + 56))(*(v2 - 8));
    if (result == a2)
    {
      v5 = v4[1];
      v7 = *(v5 - 8);
      v6 = (v5 - 8);
      result = v7;
      *v6 = 0;
      if (v7)
      {
        result = (*(*result + 8))(result);
      }

      v4[1] = v6;
    }
  }

  return result;
}

uint64_t sub_2992F5D88(void *a1, int a2, uint64_t a3)
{
  v6 = a1[1];
  if (*a1 == v6 || (*(**(v6 - 8) + 56))(*(v6 - 8)) != a2)
  {
    if (a2 == 1)
    {
      operator new();
    }

    if (!a2)
    {
      operator new();
    }
  }

  return (*(**(a1[1] - 8) + 16))(*(a1[1] - 8), a3);
}

uint64_t sub_2992F601C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (*a1 == v6 || (*(**(v6 - 8) + 56))(*(v6 - 8)) != a2)
  {
    if (a2 == 2)
    {
      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }
  }

  result = (*(**(*(a1 + 8) - 8) + 40))(*(*(a1 + 8) - 8), a3);
  *(a1 + 24) = 0;
  return result;
}

CFMutableStringRef sub_2992F62B0(uint64_t *a1, uint64_t *a2, const void **a3)
{
  if (*a2 == a2[1] || *a1 == a1[1])
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v7 = *a1;
  v8 = a1[1];
  if (*a1 != v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if ((*(**v7 + 56))() == 2)
      {
        v11 = *a2;
        v12 = a2[1];
        v13 = (v12 - *a2) >> 3;
        if (v9 < v13)
        {
          while (1)
          {
            v14 = *(v11 + 8 * v9);
            v15 = *(v14 + 8);
            if (v10 < v15)
            {
              break;
            }

LABEL_11:
            v10 = 0;
            if (++v9 == v13)
            {
              v9 = (v12 - *a2) >> 3;
              goto LABEL_36;
            }
          }

          v16 = (*(v14 + 32) + 4 * v10 + 3);
          while (1)
          {
            v17 = *v16;
            v16 += 4;
            if (v17)
            {
              break;
            }

            if (v15 == ++v10)
            {
              goto LABEL_11;
            }
          }
        }

        v24 = v10;
        if (v9 < v13)
        {
          while (1)
          {
            v25 = *(v11 + 8 * v9);
            if (v24 < v25[1])
            {
              break;
            }

LABEL_22:
            v24 = 0;
            v10 = 0;
            if (++v9 >= (v12 - v11) >> 3)
            {
              goto LABEL_36;
            }
          }

          v26 = v25[2];
          v27 = (v25[4] + 4 * v24 + 3);
          while (1)
          {
            v28 = *v27;
            v27 += 4;
            if ((v28 & 1) == 0)
            {
              break;
            }

            v29 = sub_2993A1488(*(v26 + 2 * v24), 0);
            CFStringAppend(Mutable, v29);
            ++v24;
            v11 = *a2;
            if (v24 >= *(*(*a2 + 8 * v9) + 8))
            {
              v12 = a2[1];
              goto LABEL_22;
            }
          }
        }

        v10 = v24;
      }

      else
      {
        if ((*(**v7 + 56))() == 1)
        {
          Length = CFStringGetLength(Mutable);
          v19 = (*(**v7 + 48))();
          v20 = CFStringGetLength(v19);
          v22 = a3[1];
          v21 = a3[2];
          if (v22 >= v21)
          {
            v30 = *a3;
            v31 = v22 - *a3;
            v32 = v31 >> 4;
            v33 = (v31 >> 4) + 1;
            if (v33 >> 60)
            {
              sub_299212A8C();
            }

            v34 = v21 - v30;
            if (v34 >> 3 > v33)
            {
              v33 = v34 >> 3;
            }

            v35 = v34 >= 0x7FFFFFFFFFFFFFF0;
            v36 = 0xFFFFFFFFFFFFFFFLL;
            if (!v35)
            {
              v36 = v33;
            }

            if (v36)
            {
              sub_29927F5A0(a3, v36);
            }

            v37 = (16 * v32);
            *v37 = Length;
            v37[1] = v20;
            v23 = 16 * v32 + 16;
            memcpy(0, v30, v31);
            v38 = *a3;
            *a3 = 0;
            a3[1] = v23;
            a3[2] = 0;
            if (v38)
            {
              operator delete(v38);
            }
          }

          else
          {
            *v22 = Length;
            v22[1] = v20;
            v23 = (v22 + 2);
          }

          a3[1] = v23;
        }

        v39 = (*(**v7 + 48))();
        CFStringAppend(Mutable, v39);
      }

LABEL_36:
      v7 += 8;
    }

    while (v7 != v8);
  }

  return Mutable;
}

__CFString *sub_2992F65C0(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if ((*(a2 + 40) & 0x300) != 0x100)
  {
    v7 = *MEMORY[0x29EDB8ED8];
    Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
    theString[1] = Mutable;
    v33 = *(a2 + 8);
    if (!v33 || !*(a2 + 48))
    {
      return Mutable;
    }

    v34 = *(a2 + 48);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v31 = *(a2 + 16);
    v32 = *(a2 + 32);
    v30 = *a2;
    alloc = v7;
    while (1)
    {
      v12 = (v32 + 4 * v9);
      if ((v12[3] & 3) == 0)
      {
        break;
      }

      theString[0] = 0;
      v13 = sub_2993A1488(*(v31 + 2 * v9), *a2);
      sub_299229BC0(theString, v13);
      v14 = theString[0];
      if (v30 == 1)
      {
        Length = CFStringGetLength(theString[0]);
        v16.length = *v12;
        v14 = theString[0];
        if (Length != v16.length)
        {
          v16.location = 0;
          v14 = CFStringCreateWithSubstring(v7, theString[0], v16);
          if (theString[0])
          {
            CFRelease(theString[0]);
          }

          theString[0] = v14;
        }
      }

      CFStringAppend(Mutable, v14);
      v17 = v12[1];
      if (theString[0])
      {
        CFRelease(theString[0]);
      }

      v34 -= v17;
      ++v9;
LABEL_18:
      if (v9 < v33)
      {
        a3 += v17;
        if (v34)
        {
          continue;
        }
      }

      return Mutable;
    }

    while (v10 < (a1[1] - *a1) >> 3)
    {
      v18 = (*(**(*a1 + 8 * v10) + 24))(*(*a1 + 8 * v10));
      v19 = a3 - v11;
      if (a3 < v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v18;
      }

      if ((v20 & 1) == 0 && a3 <= (*(**(*a1 + 8 * v10) + 32))(*(*a1 + 8 * v10)) + v11)
      {
        v21 = *(*a1 + 8 * v10);
        v22 = (*(*v21 + 32))(v21);
        if (v34 >= v22 - v19)
        {
          v17 = v22 - v19;
        }

        else
        {
          v17 = v34;
        }

        if ((*(*v21 + 48))(v21))
        {
          v23 = (*(*v21 + 48))(v21);
          if (v17 + v19 <= CFStringGetLength(v23))
          {
            v37.location = a3 - v11;
            v37.length = v17;
            v24 = CFStringCreateWithSubstring(alloc, v23, v37);
            theString[0] = v24;
            CFStringAppend(Mutable, v24);
            v25 = (*(**(*a1 + 8 * v10) + 32))(*(*a1 + 8 * v10));
            v26 = v34 - v17;
            v34 -= v17;
            if (v9 < v33 && v26)
            {
              v27 = (v32 + 3 + 4 * v9);
              while (1)
              {
                v28 = *v27;
                v27 += 4;
                if ((v28 & 3) != 0)
                {
                  break;
                }

                if (v33 == ++v9)
                {
                  v9 = v33;
                  break;
                }
              }
            }

            if (v24)
            {
              CFRelease(v24);
            }

            v11 += v25;
            ++v10;
            v7 = alloc;
            goto LABEL_18;
          }
        }

        break;
      }

      v11 += (*(**(*a1 + 8 * v10) + 32))(*(*a1 + 8 * v10));
      ++v10;
    }

    if (!Mutable)
    {
      return Mutable;
    }

    CFRelease(Mutable);
    return 0;
  }

  return sub_2993977E0(a2);
}

void sub_2992F69A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29924A4BC(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992F69F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (*a1 == v3 || (*(a1 + 24) & 1) != 0)
  {
    return 0;
  }

  v6 = 0;
  v7 = a2 + a3;
  v8 = *a1 + 8;
  do
  {
    v9 = (*(**(v8 - 8) + 32))(*(v8 - 8));
    v10 = (*(**(v8 - 8) + 24))(*(v8 - 8));
    if (a2 < v9 + v6)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v6 < v7)
    {
      result = v11;
    }

    else
    {
      result = 0;
    }

    if (result)
    {
      break;
    }

    v6 += v9;
    v12 = v8 == v3;
    v8 += 8;
  }

  while (!v12);
  return result;
}

uint64_t sub_2992F6ACC(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_2992F6B44(void *a1)
{
  *a1 = &unk_2A1F6E9F0;
  sub_2992F6C20((a1 + 1));
  return a1;
}

void sub_2992F6B88(void *a1)
{
  *a1 = &unk_2A1F6E9F0;
  sub_2992F6C20((a1 + 1));

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992F6C20(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  sub_299219AB4(a1, 0);
  return a1;
}

void sub_2992F6C60(uint64_t a1, __int16 a2)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v5 >= v4)
  {
    v7 = *(a1 + 8);
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 1;
    if (v9 <= -2)
    {
      sub_299212A8C();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_299212A48(a1 + 8, v13);
    }

    v14 = (v5 - v7) >> 1;
    v15 = (2 * v9);
    v16 = (2 * v9 - 2 * v14);
    *v15 = a2;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = *(a1 + 8);
    *(a1 + 8) = v16;
    *(a1 + 16) = v6;
    *(a1 + 24) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 2;
  }

  *(a1 + 16) = v6;
  v18 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], *(a1 + 8), (v6 - *(a1 + 8)) >> 1);

  sub_299219AB4(a1, v18);
}

void *sub_2992F6D70(void *a1)
{
  *a1 = &unk_2A1F6EA68;
  sub_2992F6C20((a1 + 2));
  return a1;
}

void sub_2992F6DB4(void *a1)
{
  *a1 = &unk_2A1F6EA68;
  sub_2992F6C20((a1 + 2));

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992F6E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2A1F66DC0;
  v7 = (*(*a2 + 112))(a2);
  v8 = (*(*a2 + 392))(a2);
  sub_29933BEB8(a1, &off_2A1F6EDC8);
  *(a1 + 20) = v7;
  *(a1 + 24) = 0;
  *(a1 + 32) = v8;
  *a1 = &unk_2A1F6EB48;
  *(a1 + 40) = &unk_2A1F6EDB0;
  v9 = (**(a2 + *(*a2 - 32)))(a2 + *(*a2 - 32));
  *(a1 + 72) = 0u;
  *(a1 + 48) = v9;
  *(a1 + 56) = 0u;
  *(a1 + 84) = 0u;
  v10 = (*(*a2 + 560))(a2);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_2992F85F8(a1 + 104, *v10, v10[1], (v10[1] - *v10) >> 2);
  v11 = *MEMORY[0x29EDB8ED8];
  theString = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v12 = (*(*a2 + 232))(a2);
  if (v12)
  {
    Mutable = CFStringCreateMutable(v11, 0);
  }

  else
  {
    Mutable = 0;
  }

  v14 = (*(*a2 + 24))(a2);
  CFStringAppend(theString, v14);
  if (Mutable)
  {
    CFStringAppend(Mutable, v12);
  }

  v15 = (*(*a2 + 24))(a2);
  CFStringGetLength(v15);
  if (a4)
  {
    operator new();
  }

  *(a1 + 56) = theString;
  *(a1 + 64) = Mutable;
  *(a1 + 96) = sub_299279FBC(theString);
  return a1;
}

void sub_2992F734C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  v15 = *(a9 + 32);
  if (v15)
  {
    *(v13 + 112) = v15;
    operator delete(v15);
  }

  a13 = a9;
  sub_2992F8740(&a13);
  v16 = *(v13 + 48);
  *(v13 + 48) = 0;
  if (v16)
  {
    (*(*v16 + 16))(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992F73F0(uint64_t a1)
{
  *a1 = &unk_2A1F6EB48;
  *(a1 + 40) = &unk_2A1F6EDB0;
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    *(a1 + 112) = v4;
    operator delete(v4);
  }

  v7 = (a1 + 72);
  sub_2992F8740(&v7);
  v5 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  return a1;
}

void sub_2992F74C8(uint64_t a1)
{
  sub_2992F73F0(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992F7500(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0 || (*(*a1 + 48))(a1) <= a2)
  {
    return 0;
  }

  v4 = (*(**(a1 + 48) + 48))(*(a1 + 48));
  if (a2 >= v4)
  {
    return *(*(a1 + 72) + 16 * (a2 - v4));
  }

  v5 = *(**(a1 + 48) + 120);

  return v5();
}

uint64_t sub_2992F75DC(uint64_t a1)
{
  v1 = (*(*a1 + 120))(a1);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t sub_2992F7648(uint64_t a1)
{
  result = (*(*a1 + 120))(a1);
  if (result)
  {
    v2 = *(*result + 16);

    return v2();
  }

  return result;
}

void sub_2992F76E8(void **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 - 1) > 1)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    (*(*a1[6] + 432))(&v10);
    v7 = 0;
    __dst = 0;
    v9 = 0;
    for (i = (*(*a1[6] + 48))(a1[6]); i < ((*a1)[6])(a1); ++i)
    {
      ((*a1)[53])(&__p, a1, i);
      sub_2992F87C8(&v7, __dst, __p, v13, (v13 - __p) >> 1);
      if (__p)
      {
        v13 = __p;
        operator delete(__p);
      }
    }

    sub_299218E20(a3, ((__dst - v7) >> 1) + ((v11 - v10) >> 1));
    sub_2992F87C8(a3, *(a3 + 8), v10, v11, (v11 - v10) >> 1);
    sub_2992F87C8(a3, *(a3 + 8), v7, __dst, (__dst - v7) >> 1);
    if (v7)
    {
      __dst = v7;
      operator delete(v7);
    }

    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }
  }

  else
  {
    v5 = *(*a1[6] + 432);

    v5();
  }
}

void sub_2992F78F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef sub_2992F7964(uint64_t a1)
{
  __src = 0;
  v28 = 0;
  v29 = 0;
  v2 = (*(*a1 + 48))(a1);
  v3 = v2;
  if (v2)
  {
    v4 = 0;
    v24 = v2;
    do
    {
      v5 = (*(*a1 + 120))(a1, v4);
      (*(*v5 + 56))(&v25);
      v6 = v25;
      if (v26 != v25)
      {
        v7 = 0;
        if (((v26 - v25) >> 1) <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = (v26 - v25) >> 1;
        }

        v9 = v28;
        do
        {
          v10 = *&v25[2 * v7] + 48;
          if (v9 >= v29)
          {
            v11 = __src;
            v12 = v9 - __src;
            v13 = (v9 - __src) >> 1;
            if (v13 <= -2)
            {
              sub_299212A8C();
            }

            if (v29 - __src <= v13 + 1)
            {
              v14 = v13 + 1;
            }

            else
            {
              v14 = v29 - __src;
            }

            if (v29 - __src >= 0x7FFFFFFFFFFFFFFELL)
            {
              v15 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v15 = v14;
            }

            if (v15)
            {
              sub_299212A48(&__src, v15);
            }

            v16 = (v9 - __src) >> 1;
            v17 = (2 * v13);
            v18 = (2 * v13 - 2 * v16);
            *v17 = v10;
            v9 = (v17 + 1);
            memcpy(v18, v11, v12);
            v19 = __src;
            __src = v18;
            v28 = v9;
            v29 = 0;
            if (v19)
            {
              operator delete(v19);
            }
          }

          else
          {
            *v9 = v10;
            v9 += 2;
          }

          v28 = v9;
          ++v7;
        }

        while (v8 != v7);
        v3 = v24;
        v6 = v25;
      }

      if (v6)
      {
        v26 = v6;
        operator delete(v6);
      }

      ++v4;
    }

    while (v4 != v3);
    v20 = __src;
    v21 = v28;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  v22 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], v20, (v21 - v20) >> 1);
  if (__src)
  {
    v28 = __src;
    operator delete(__src);
  }

  return v22;
}

void sub_2992F7B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFString *sub_2992F7BBC(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v3 = (*(*a1 + 48))(a1);
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = (*(*a1 + 120))(a1, i);
      v7 = (*(*v6 + 72))(v6);
      CFStringAppend(Mutable, v7);
      CFRelease(v7);
    }
  }

  return Mutable;
}

uint64_t sub_2992F7CF4(uint64_t a1)
{
  v1 = (*(*a1 + 104))(a1);
  if ((v1 & 2) != 0)
  {
    return 77;
  }

  if ((v1 & 8) != 0)
  {
    return 65;
  }

  if ((v1 & 0x10) != 0)
  {
    return 85;
  }

  if ((v1 & 4) != 0)
  {
    return 76;
  }

  return (v1 << 10 >> 31) & 0x59;
}

BOOL sub_2992F7DB4(uint64_t a1, char a2, char a3)
{
  v3 = 1;
  if ((a2 & 1) == 0 && (a3 & 1) == 0)
  {
    return ((*(*a1 + 104))(a1) & 0x40) == 0;
  }

  return v3;
}

BOOL sub_2992F7EBC(uint64_t a1)
{
  v1 = (*(*a1 + 560))(a1);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*v1 != v3)
  {
    while (*v2 != 1)
    {
      if (++v2 == v3)
      {
        v2 = *(v1 + 8);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void sub_2992F82C8(_Unwind_Exception *a1, uint64_t a2, void **a3, ...)
{
  va_start(va, a3);
  v5 = *a3;
  if (*a3)
  {
    *(v3 + 112) = v5;
    operator delete(v5);
  }

  sub_2992F8740(va);
  v6 = *(v3 + 48);
  *(v3 + 48) = 0;
  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  MEMORY[0x29C29BFB0](v3, 0x10E1C40E0ACAB4CLL);
  _Unwind_Resume(a1);
}

uint64_t sub_2992F85F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2992F8674(result, a4);
  }

  return result;
}

void sub_2992F8658(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992F8674(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_2992F86B0(a1, a2);
  }

  sub_299212A8C();
}

void sub_2992F86B0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_29919600C();
}

void sub_2992F86F8(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_29919600C();
}

void sub_2992F8740(void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          sub_2991A893C(v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

char *sub_2992F87C8(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 1)
  {
    v11 = *a1;
    if (a5 + ((v10 - *a1) >> 1) < 0)
    {
      sub_299212A8C();
    }

    v12 = __dst - v11;
    v13 = v9 - v11;
    if (v13 <= a5 + ((v10 - *a1) >> 1))
    {
      v14 = a5 + ((v10 - *a1) >> 1);
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    if (v15)
    {
      sub_299212A48(a1, v15);
    }

    v33 = 2 * v16;
    v34 = 2 * a5;
    v35 = (2 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 2;
    }

    while (v34);
    memcpy((v33 + 2 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 2 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (2 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 1;
  if (v18 >= a5)
  {
    v29 = &__dst[2 * a5];
    v30 = (v10 - 2 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[2 * a5], __dst, v10 - v29);
    }

    v28 = 2 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_30;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[2 * a5];
    v23 = v10 + v20;
    if (&v21[-2 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -2 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 2;
        v24 += 2;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[2 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_30:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void sub_2992F8A0C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F6F440;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2992F8A88(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  operator new();
}

uint64_t sub_2992F8BD0(uint64_t a1)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  *(v3 - 2) = 0;
  sub_2993EEE54(v2);
  sub_29931FE84(*(a1 + 48));
  v4 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v4)
  {
    MEMORY[0x29C29BFB0](v4, 0x60C4044C4A2DFLL);
  }

  v5 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v5)
  {
    MEMORY[0x29C29BFB0](v5, 0x60C4044C4A2DFLL);
  }

  sub_2992EAF08(v3);
  return a1;
}

void sub_2992F8CB0(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x29C29BFB0](v2, 0x1020C40CDA6F8E5);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2992F8C9CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992F8CFC(uint64_t a1, uint64_t a2, char a3)
{
  if (sub_2992F8E70(a1))
  {
    result = sub_2993B9184(**(a1 + 40));
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = **(a1 + 32);
    v8 = *(v7 + 24);
    if (!v8)
    {
      return 0;
    }

    sub_299210C88(*(v7 + 24));
    v9 = atomic_load((v8 + 40));
    if (v9 != 2 || !*v8)
    {
      return 0;
    }
  }

  result = 0;
  if ((a3 & 8) == 0 && (*(a2 + 128) & 1) == 0)
  {
    v10 = *(a2 + 144);
    if (!v10 || CFStringGetLength(v10) < 2 || CEMStringContainsEmoji())
    {
      return 0;
    }

    if ((a3 & 4) != 0)
    {
      v11 = *(*(*a1 + 88) + 8);
      sub_299276A84(v10);
    }

    return 1;
  }

  return result;
}

void sub_2992F8E48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992F8E70(int **a1)
{
  v1 = **a1;
  if (v1 == 2)
  {
    if (*(a1 + 56) == 1)
    {
      v2 = sub_2993B9184(*a1[5]) != 0;
      return v2 & 1;
    }

LABEL_6:
    v2 = 0;
    return v2 & 1;
  }

  if (v1 != 1)
  {
    goto LABEL_6;
  }

  v2 = *(a1 + 24);
  return v2 & 1;
}

void sub_2992F8ED4(uint64_t a1, uint64_t a2, int a3, char a4, _BYTE *a5)
{
  v87 = *MEMORY[0x29EDCA608];
  if (*(a2 + 240) != *(a2 + 232))
  {
    v9 = *(*a1 + 8);
    if (*(v9 + 5) != 1 || (v10 = *(v9 + 40)) == 0)
    {
      v10 = *(v9 + 32);
    }

    v11 = *(v10 + 8);
    LMLanguageModelCreatePredictionEnumerator();
    if (LMPredictionEnumeratorAdvance())
    {
      LODWORD(__src) = 0;
      if (LMPredictionEnumeratorGetPrediction() >= 1)
      {
        v12 = *(v10 + 8);
        if (LMLanguageModelTokenHasAttributes())
        {
          v13 = *(v10 + 8);
          if (LMLanguageModelCopyTokenAttributes())
          {
            v14 = *(a1 + 16);
            operator new();
          }
        }
      }
    }

    LMPredictionEnumeratorRelease();
  }

  if (*(a2 + 104) != 1)
  {
    if (sub_2992F8CFC(a1, a2, a3))
    {
      v78 = 10;
      v79 = (a3 & 4) != 0;
      v80 = a4 ^ 1;
      v29 = *(a2 + 144);
      if (sub_2992F8E70(a1))
      {
        sub_29931290C(*(a1 + 40), a5, &__src);
      }

      else
      {
        sub_29928005C(*(a1 + 32), a5, &__src);
      }

      if (__src != &v84)
      {
        v31 = *(a1 + 16);
        operator new();
      }

      sub_29928113C(&__src, v84);
      goto LABEL_68;
    }

    v30 = (a2 + 48);
    if (CFArrayGetCount(*(a2 + 96)) != (*(a2 + 56) - *(a2 + 48)) >> 2)
    {
      goto LABEL_68;
    }

    *(a1 + 8) = a3;
    v78 = 0;
    if (*(a2 + 128))
    {
      if ((a3 & 0x28) != 0)
      {
        v70 = 0;
      }

      else
      {
        v37 = *(*a1 + 8);
        if (*(v37 + 5) != 1 || (v38 = *(v37 + 40)) == 0)
        {
          v38 = *(v37 + 32);
        }

        if ((atomic_load_explicit(&qword_2A1460E48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460E48))
        {
          qword_2A1460E40 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberFloatType, &unk_2994149FC);
          __cxa_guard_release(&qword_2A1460E48);
        }

        v39 = *MEMORY[0x29EDC5770];
        v40 = *(v38 + 8);
        LMLanguageModelSetParameterValue();
        v70 = 1;
      }

      goto LABEL_54;
    }

    sub_299240D80(&v78, *(a2 + 96));
    v32 = *(a2 + 48);
    v33 = *(a2 + 56);
    v34 = *(*a1 + 8);
    if (*(v34 + 5) == 1 && (v35 = *(v34 + 40)) != 0)
    {
      v36 = *(v34 + 40);
      if (!sub_29937720C(v30))
      {
        goto LABEL_66;
      }
    }

    else
    {
      v35 = *(v34 + 32);
      if ((sub_29937720C(v30) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    if (sub_299377274(v30, v35))
    {
      v70 = 0;
LABEL_54:
      v41 = *(*a1 + 8);
      if (*(v41 + 5) != 1 || (v42 = *(v41 + 40)) == 0)
      {
        v42 = *(v41 + 32);
      }

      v71 = *(a1 + 8);
      sub_29938429C(v42);
      v43 = *(v42 + 8);
      LMLanguageModelCreatePredictionEnumerator();
      cf = 0;
      alloc = *MEMORY[0x29EDB8ED8];
      do
      {
        if (LMPredictionEnumeratorAdvance() != 1)
        {
          break;
        }

        v81 = 0;
        if (LMPredictionEnumeratorGetPrediction() < 1)
        {
          break;
        }

        v44 = *(v42 + 8);
      }

      while (LMLanguageModelTokenHasAttributes());
      if (v70)
      {
        if ((atomic_load_explicit(&qword_2A1460E58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460E58))
        {
          qword_2A1460E50 = CFNumberCreate(alloc, kCFNumberFloatType, &unk_299414A00);
          __cxa_guard_release(&qword_2A1460E58);
        }

        v45 = *MEMORY[0x29EDC5770];
        v46 = *(v42 + 8);
        LMLanguageModelSetParameterValue();
      }

      LMPredictionEnumeratorRelease();
      if (cf)
      {
        CFRelease(cf);
      }
    }

LABEL_66:
    if (v78)
    {
      CFRelease(v78);
    }

    goto LABEL_68;
  }

  v15 = *(a2 + 96);
  if (v15)
  {
    v16 = *(a2 + 48);
    v17 = (*(a2 + 56) - v16) >> 2;
    Count = CFArrayGetCount(*(a2 + 96));
    if (v17 == Count && Count != 0)
    {
      v20 = *(*a1 + 40);
      if (v20)
      {
        sub_299210C88(*(*a1 + 40));
        v21 = atomic_load(v20 + 10);
        if (v21 == 2)
        {
          v22 = *v20;
          if (*v20)
          {
            v23 = v17 - 1;
            if (v17 < 1)
            {
              if ((*(v16 + 4 * v23) - 1) >= 0x1F3)
              {
LABEL_70:
                v48 = *(v22 + 8);
                LMLanguageModelCreatePredictionEnumerator();
                if (v17 < 1)
                {
                  alloca = 0;
                }

                else
                {
                  alloca = CFArrayGetValueAtIndex(v15, v17 - 1);
                }

                if (LMPredictionEnumeratorAdvance())
                {
                  v49 = 0;
                  v76 = *MEMORY[0x29EDB8ED8];
                  do
                  {
                    v81 = 0;
                    Prediction = LMPredictionEnumeratorGetPrediction();
                    if (Prediction < 1)
                    {
                      break;
                    }

                    if (v86[0] >= 0x1F4u)
                    {
                      v77 = *(a2 + 105);
                      __src = 0;
                      v84 = 0;
                      v85 = 0;
                      v51 = *(*a1 + 40);
                      if (v51)
                      {
                        sub_299210C88(*(*a1 + 40));
                        v52 = atomic_load(v51 + 10);
                        if (v52 == 2)
                        {
                          v53 = *v51;
                          if (*v51)
                          {
                            v75 = v49;
                            v54 = 0;
                            Mutable = 0;
                            v78 = 0;
                            while (1)
                            {
                              if (v86[v54] < 0x1F4u)
                              {
                                goto LABEL_110;
                              }

                              v56 = (*(*v53 + 32))(v53);
                              if (v78)
                              {
                                CFRelease(v78);
                              }

                              v78 = v56;
                              if (!v56)
                              {
                                goto LABEL_110;
                              }

                              Length = CFStringGetLength(v56);
                              v58 = Length;
                              v59 = Prediction != 1;
                              if (Length != 1)
                              {
                                v59 = 0;
                              }

                              if (Length <= 1 && !v59)
                              {
LABEL_110:
                                if (!Mutable)
                                {
                                  v49 = v75;
                                  goto LABEL_118;
                                }

                                v49 = v75;
                                if (CFStringGetLength(Mutable) >= 2)
                                {
                                  cf = sub_29932010C(*(a1 + 48), alloca, Mutable, v77 ^ 1u);
                                  v69 = *(a1 + 16);
                                  operator new();
                                }

                                goto LABEL_117;
                              }

                              if (!Mutable)
                              {
                                Mutable = CFStringCreateMutable(v76, 0);
                              }

                              if (sub_2992FA27C(a1, v56))
                              {
                                break;
                              }

                              if (v54 || (v77 & 1) == 0)
                              {
                                CFStringAppend(Mutable, @" ");
                                ++v58;
                                v56 = v78;
                              }

                              CFStringAppend(Mutable, v56);
                              v61 = v84;
                              if (v84 >= v85)
                              {
                                v63 = __src;
                                v64 = v84 - __src;
                                v65 = (v84 - __src) >> 1;
                                if (v65 <= -2)
                                {
                                  sub_299212A8C();
                                }

                                if (v85 - __src <= v65 + 1)
                                {
                                  v66 = v65 + 1;
                                }

                                else
                                {
                                  v66 = v85 - __src;
                                }

                                v67 = 0x7FFFFFFFFFFFFFFFLL;
                                if (v85 - __src < 0x7FFFFFFFFFFFFFFELL)
                                {
                                  v67 = v66;
                                }

                                if (v67)
                                {
                                  sub_299212A48(&__src, v67);
                                }

                                *(2 * v65) = v58;
                                v62 = (2 * v65 + 2);
                                memcpy(0, v63, v64);
                                v68 = __src;
                                __src = 0;
                                v84 = v62;
                                v85 = 0;
                                if (v68)
                                {
                                  operator delete(v68);
                                }
                              }

                              else
                              {
                                *v84 = v58;
                                v62 = v61 + 2;
                              }

                              v84 = v62;
                              if (Prediction == ++v54)
                              {
                                goto LABEL_110;
                              }
                            }

                            v49 = v75;
                            if (!Mutable)
                            {
                              goto LABEL_118;
                            }

LABEL_117:
                            CFRelease(Mutable);
LABEL_118:
                            if (v78)
                            {
                              CFRelease(v78);
                            }
                          }
                        }
                      }
                    }
                  }

                  while ((LMPredictionEnumeratorAdvance() & 1) != 0);
                }

                LMPredictionEnumeratorRelease();
              }
            }

            else
            {
              v24 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v15, v24);
                if (sub_2992FA300(ValueAtIndex))
                {
                  break;
                }

                if (v17 == ++v24)
                {
                  if ((*(v16 + 4 * v23) - 1) < 0x1F3)
                  {
                    break;
                  }

                  v26 = v17;
                  while (1)
                  {
                    v27 = v26 - 1;
                    v28 = CFArrayGetValueAtIndex(v15, v26 - 1);
                    if (sub_2992FA27C(a1, v28))
                    {
                      break;
                    }

                    --v26;
                    if (v27 <= 0)
                    {
                      v26 = -1;
                      break;
                    }
                  }

                  if (v17 <= v26)
                  {
                    break;
                  }

                  goto LABEL_70;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_68:
  v47 = *MEMORY[0x29EDCA608];
}

void sub_2992FA0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, char a32, void *__p, uint64_t a34)
{
  __cxa_guard_abort(&qword_2A1460E48);
  sub_299229F00(&a29, 0);
  _Unwind_Resume(a1);
}

CFIndex sub_2992FA27C(uint64_t a1, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  result = CFStringGetLength(theString);
  if (result)
  {
    if (sub_2992FA300(theString))
    {
      return 1;
    }

    else
    {
      v5 = *(a1 + 48);

      return sub_29931FFC0(v5, theString);
    }
  }

  return result;
}

BOOL sub_2992FA300(const __CFString *a1)
{
  v2 = 1;
  if (CFStringCompare(a1, @"taiwan", 1uLL))
  {
    return CFStringCompare(a1, @"tibet", 1uLL) == kCFCompareEqualTo;
  }

  return v2;
}

void sub_2992FA358(uint64_t a1, const __CFURL *a2)
{
  *a1 = &unk_2A1F6F4A8;
  *(a1 + 8) = 0;
  sub_2992FA5C4((a1 + 16), a2, "", 0);
  sub_2992FA5C4((a1 + 24), a2, "logJointProb", 0xCuLL);
  sub_2992FA5C4((a1 + 32), a2, "logJointProb_batch32", 0x14uLL);
  *(a1 + 48) = 0;
  *(a1 + 40) = &unk_2A1F6F5E8;
  *(a1 + 64) = 0;
  *(a1 + 56) = 1;
  sub_299229F00((a1 + 48), 0);
  CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  operator new();
}

void sub_2992FA518(_Unwind_Exception *a1)
{
  sub_2992FD650((v1 + 24));
  sub_2992FD650((v1 + 16));
  v4 = *(v1 + 8);
  *v1 = v2;
  *(v1 + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_2992FA5C4(void *a1, CFURLRef url, _BYTE *a3, unint64_t a4)
{
  v54 = *MEMORY[0x29EDCA608];
  if (!url)
  {
    *a1 = 0;
    goto LABEL_70;
  }

  error = 0;
  if (!CFURLResourceIsReachable(url, &error))
  {
    v11 = CFErrorCopyDescription(error);
    v44.__r_.__value_.__r.__words[0] = v11;
    v12 = sub_2993652F8(7u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buffer = 138412290;
      *&buffer[4] = v11;
      _os_log_debug_impl(&dword_29918C000, v12, OS_LOG_TYPE_DEBUG, "Montreal assets are not reachable: %@", buffer, 0xCu);
    }

    CFRelease(error);
    *a1 = 0;
    if (v11)
    {
      CFRelease(v11);
    }

    goto LABEL_70;
  }

  if (CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024))
  {
    v8 = buffer;
  }

  else
  {
    v8 = &unk_29943AA03;
  }

  sub_2991C6CA8(__s, v8);
  v9 = v42;
  if ((v42 & 0x80000000) == 0)
  {
    if (v42)
    {
      v10 = __s;
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (!v41)
  {
LABEL_20:
    *a1 = 0;
    if (v9 < 0)
    {
LABEL_69:
      operator delete(*__s);
    }

LABEL_70:
    v38 = *MEMORY[0x29EDCA608];
    return;
  }

  v10 = *__s;
LABEL_16:
  v13 = strlen(v10);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v13;
  if (v13)
  {
    memmove(&__dst, v10, v13);
  }

  __dst.__r_.__value_.__s.__data_[v14] = 0;
  if (a4)
  {
    sub_2991D9388(&v44, a3, &a3[a4], a4);
    v15 = std::string::insert(&v44, 0, "#", 1uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v51 = v15->__r_.__value_.__r.__words[2];
    *buffer = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v51) >= 0)
    {
      v17 = buffer;
    }

    else
    {
      v17 = *buffer;
    }

    if (SHIBYTE(v51) >= 0)
    {
      v18 = HIBYTE(v51);
    }

    else
    {
      v18 = *&buffer[8];
    }

    std::string::append(&__dst, v17, v18);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(*buffer);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  v21 = CFURLCreateFromFileSystemRepresentation(0, p_dst, size, 0);
  keys = 0;
  v49 = 0;
  v44.__r_.__value_.__r.__words[0] = 0;
  v44.__r_.__value_.__l.__size_ = &v44;
  v44.__r_.__value_.__r.__words[2] = 0x2000000000;
  v22 = qword_2A1460E88;
  v45 = qword_2A1460E88;
  if (!qword_2A1460E88)
  {
    *buffer = MEMORY[0x29EDCA5F8];
    *&buffer[8] = 0x40000000;
    v51 = sub_2992FCDCC;
    v52 = &unk_29EF10D38;
    v53 = &v44;
    v23 = sub_2992FCE1C();
    v24 = dlsym(v23, "kMRLNeuralNetworkOptionModelURLKey");
    *(v53->__r_.__value_.__l.__size_ + 24) = v24;
    qword_2A1460E88 = *(v53->__r_.__value_.__l.__size_ + 24);
    v22 = *(v44.__r_.__value_.__l.__size_ + 24);
  }

  _Block_object_dispose(&v44, 8);
  if (v22)
  {
    keys = *v22;
    v44.__r_.__value_.__r.__words[0] = 0;
    v44.__r_.__value_.__l.__size_ = &v44;
    v44.__r_.__value_.__r.__words[2] = 0x2000000000;
    v25 = qword_2A1460E90;
    v45 = qword_2A1460E90;
    if (!qword_2A1460E90)
    {
      *buffer = MEMORY[0x29EDCA5F8];
      *&buffer[8] = 0x40000000;
      v51 = sub_2992FCFA0;
      v52 = &unk_29EF10D98;
      v53 = &v44;
      v26 = sub_2992FCE1C();
      v27 = dlsym(v26, "kMRLNeuralNetworkOptionModelTypeKey");
      *(v53->__r_.__value_.__l.__size_ + 24) = v27;
      qword_2A1460E90 = *(v53->__r_.__value_.__l.__size_ + 24);
      v25 = *(v44.__r_.__value_.__l.__size_ + 24);
    }

    _Block_object_dispose(&v44, 8);
    if (v25)
    {
      v49 = *v25;
      values = v21;
      v47 = 0;
      v44.__r_.__value_.__r.__words[0] = 0;
      v44.__r_.__value_.__l.__size_ = &v44;
      v44.__r_.__value_.__r.__words[2] = 0x2000000000;
      v28 = qword_2A1460E98;
      v45 = qword_2A1460E98;
      if (!qword_2A1460E98)
      {
        *buffer = MEMORY[0x29EDCA5F8];
        *&buffer[8] = 0x40000000;
        v51 = sub_2992FCFF0;
        v52 = &unk_29EF10DC0;
        v53 = &v44;
        v29 = sub_2992FCE1C();
        v30 = dlsym(v29, "kMRLNeuralNetworkModelTypeE5RT");
        *(v53->__r_.__value_.__l.__size_ + 24) = v30;
        qword_2A1460E98 = *(v53->__r_.__value_.__l.__size_ + 24);
        v28 = *(v44.__r_.__value_.__l.__size_ + 24);
      }

      _Block_object_dispose(&v44, 8);
      if (v28)
      {
        v47 = *v28;
        v31 = CFDictionaryCreate(0, &keys, &values, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        v44.__r_.__value_.__r.__words[0] = 0;
        v44.__r_.__value_.__l.__size_ = &v44;
        v44.__r_.__value_.__r.__words[2] = 0x2000000000;
        v32 = off_2A1460EA0;
        v45 = off_2A1460EA0;
        if (!off_2A1460EA0)
        {
          *buffer = MEMORY[0x29EDCA5F8];
          *&buffer[8] = 0x40000000;
          v51 = sub_2992FD040;
          v52 = &unk_29EF10DE8;
          v53 = &v44;
          v33 = sub_2992FCE1C();
          v34 = dlsym(v33, "MRLNeuralNetworkCreate");
          *(v53->__r_.__value_.__l.__size_ + 24) = v34;
          off_2A1460EA0 = *(v53->__r_.__value_.__l.__size_ + 24);
          v32 = *(v44.__r_.__value_.__l.__size_ + 24);
        }

        _Block_object_dispose(&v44, 8);
        if (v32)
        {
          v35 = v32(v31, &error);
          if (error)
          {
            v36 = CFErrorCopyDescription(error);
            v44.__r_.__value_.__r.__words[0] = v36;
            v37 = sub_2993652F8(7u);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              *buffer = 138412290;
              *&buffer[4] = v36;
              _os_log_debug_impl(&dword_29918C000, v37, OS_LOG_TYPE_DEBUG, "Montreal model creation by MRLNeuralNetworkCreate caught an error: %@", buffer, 0xCu);
            }

            CFRelease(error);
            *a1 = 0;
            if (v36)
            {
              CFRelease(v36);
            }

            if (v35)
            {
              CFRelease(v35);
            }

            if (!v31)
            {
LABEL_64:
              if (v21)
              {
                CFRelease(v21);
              }

              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
              }

              if ((v42 & 0x80) == 0)
              {
                goto LABEL_70;
              }

              goto LABEL_69;
            }
          }

          else
          {
            *a1 = v35;
            if (!v31)
            {
              goto LABEL_64;
            }
          }

          CFRelease(v31);
          goto LABEL_64;
        }
      }
    }
  }

  dlerror();
  abort_report_np();
  __break(1u);
}

void sub_2992FACAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992FADDC(uint64_t a1)
{
  *a1 = &unk_2A1F6F5E8;
  sub_299229F00((a1 + 8), 0);
  return a1;
}

void sub_2992FAE24(uint64_t a1, const __CFURL *a2, uint64_t *a3)
{
  *a1 = &unk_2A1F6F4A8;
  *(a1 + 8) = 0;
  sub_2992FA5C4((a1 + 16), a2, "", 0);
  sub_2992FA5C4((a1 + 24), a2, "logJointProb", 0xCuLL);
  sub_2992FA5C4((a1 + 32), a2, "logJointProb_batch32", 0x14uLL);
  *(a1 + 48) = 0;
  *(a1 + 40) = &unk_2A1F6F5E8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(a1 + 56) = 1;
  sub_299229F00((a1 + 48), 0);
  CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  operator new();
}

void sub_2992FB024(_Unwind_Exception *a1)
{
  sub_2992FD650((v1 + 24));
  sub_2992FD650((v1 + 16));
  v4 = *(v1 + 8);
  *v1 = v2;
  *(v1 + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

BOOL sub_2992FB0D0(void *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = a1[2];
  v3 = v2 != 0;
  if (!v2)
  {
    v4 = sub_2993652F8(3u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v9) = 0;
      _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[MontrealLanguageModel::isModelAvaiable] model for prediction isn't avaiable.", &v9, 2u);
    }
  }

  if (!a1[3])
  {
    v5 = sub_2993652F8(3u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315138;
      v10 = "logJointProb";
      _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "[MontrealLanguageModel::isModelAvaiable] model for joint probability isn't avaiable. Does the bundle contain function name '%s'?", &v9, 0xCu);
    }

    v3 = 0;
  }

  if (!a1[4])
  {
    v6 = sub_2993652F8(3u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315138;
      v10 = "logJointProb_batch32";
      _os_log_debug_impl(&dword_29918C000, v6, OS_LOG_TYPE_DEBUG, "[MontrealLanguageModel::isModelAvaiable] model for batched joint probability isn't avaiable. Does the bundle contain function name '%s'?", &v9, 0xCu);
    }

    v3 = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

void sub_2992FB24C(void *a1@<X0>, uint64_t **a2@<X1>, int a3@<W2>, float **a4@<X8>)
{
  if (0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2) - 33 <= 0xFFFFFFFFFFFFFFE3)
  {
    v7 = sub_2993652F8(3u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(cf[0]) = 0;
      _os_log_debug_impl(&dword_29918C000, v7, OS_LOG_TYPE_DEBUG, "[MontrealLanguageModel::jointProbabilitySingleInference]", cf, 2u);
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    operator new();
  }

  v8 = sub_2993652F8(3u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(cf[0]) = 0;
    _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "[MontrealLanguageModel::jointProbabilityBatchedInference]", cf, 2u);
  }

  v46 = *a2;
  v47 = a2[1];
  v9 = 0xAAAAAAAAAAAAAAABLL * (v47 - *a2);
  LODWORD(cf[0]) = 0;
  v45 = v9;
  sub_2991AAFC8(a4, v9);
  v10 = a1[6];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v52 = Mutable;
  if (v10 && CFArrayGetCount(v10))
  {
    for (i = 0; i < CFArrayGetCount(v10); ++i)
    {
      v13 = 32;
      do
      {
        v55.location = i;
        v55.length = 1;
        CFArrayAppendArray(Mutable, v10, v55);
        --v13;
      }

      while (v13);
    }
  }

  v14 = *a2;
  v15 = a2[1];
  if (*a2 == v15)
  {
    v20 = 0;
    v50 = 0;
    v51 = 0;
    v49 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      v18 = *v14;
      v17 = v14[1];
      v14 += 3;
      v19 = (v17 - v18) >> 2;
      if (v16 <= v19)
      {
        v16 = v19;
      }
    }

    while (v14 != v15);
    v53 = *(a1[1] + 48);
    v50 = 0;
    v51 = 0;
    v49 = 0;
    if (v16)
    {
      if (v16 <= 0xAAAAAAAAAAAAAAALL)
      {
        cf[4] = &v49;
        sub_2992FD2C4(v16);
      }

      sub_299212A8C();
    }

    v20 = 0;
  }

  v21 = 0;
  if (v45 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v45;
  }

  do
  {
    sub_2992FBC64(a1[4], @"input", 32, *(v20 + 24 * v21++));
    sub_2992FBC64(a1[4], @"label", 32, *(v49 + 24 * v21));
    sub_2992FBDA0(a1[4], v52);
    v23 = sub_2992FBF58(a1[4]);
    sub_2992FC26C(v52, v23);
    v24 = sub_2992FC070(a1[4]);
    if (v47 != v46)
    {
      v25 = *a4;
      v26 = *a2 + 1;
      v27 = v22;
      do
      {
        if (v21 < (*v26 - *(v26 - 1)) >> 2)
        {
          _H0 = *v24;
          __asm { FCVT            D0, H0 }

          *&_D0 = *v25 + _D0 * 0.434294482;
          *v25 = *&_D0;
        }

        ++v25;
        ++v24;
        v26 += 3;
        --v27;
      }

      while (v27);
    }

    v20 = v49;
  }

  while (v21 < 0xAAAAAAAAAAAAAAABLL * ((v50 - v49) >> 3) - 1);
  if (v47 != v46 && a3)
  {
    v34 = 0;
    if (v45 <= 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = v45;
    }

    do
    {
      v36 = a1[8];
      v37 = &(*a2)[3 * v34];
      v39 = *v37;
      v38 = v37[1];
      v40 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      v41 = (v38 - v39) >> 2;
      cf[0] = v40;
      v42 = v41 - 15;
      if (v41 < 0xF)
      {
        v42 = 0;
      }

      if (v42 < v41)
      {
        if (v41 >= 0xF)
        {
          v43 = 15;
        }

        else
        {
          v43 = (v38 - v39) >> 2;
        }

        v44 = v34 + 32 * v41 - 32 * v43;
        do
        {
          v56.location = v44;
          v56.length = 1;
          CFArrayAppendArray(v40, v52, v56);
          v44 += 32;
          --v43;
        }

        while (v43);
        v40 = cf[0];
      }

      if (v40)
      {
        CFArrayAppendValue(*(v36 + 8), v40);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }

      ++v34;
    }

    while (v34 != v35);
  }

  cf[0] = &v49;
  sub_2992FD380(cf);
  if (v52)
  {
    CFRelease(v52);
  }
}

void sub_2992FBA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, const void *a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_2992530BC(&a16, 0);
  v23 = *v21;
  if (*v21)
  {
    *(v21 + 8) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

void sub_2992FBB94(unsigned __int16 *a1, CFArrayRef theArray)
{
  if (theArray && CFArrayGetCount(theArray))
  {
    Count = CFArrayGetCount(theArray);
    v5 = *a1;
    if (Count <= v5)
    {
      MutableCopy = CFArrayCreateMutableCopy(0, Count, theArray);
      v7 = (a1 + 4);
    }

    else
    {
      Mutable = CFArrayCreateMutable(0, v5, MEMORY[0x29EDB9000]);
      v11.length = *a1;
      v11.location = Count - v11.length;
      CFArrayAppendArray(Mutable, theArray, v11);
      v7 = (a1 + 4);
      MutableCopy = Mutable;
    }

    sub_2992530BC(v7, MutableCopy);
  }

  else
  {
    v9 = *(a1 + 1);

    CFArrayRemoveAllValues(v9);
  }
}

uint64_t sub_2992FBC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v8 = off_2A1460E68;
  v15 = off_2A1460E68;
  if (!off_2A1460E68)
  {
    v9 = sub_2992FCE1C();
    v13[3] = dlsym(v9, "MRLNeuralNetworkSetInput");
    off_2A1460E68 = v13[3];
    v8 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v8)
  {
    dlerror();
    v11 = abort_report_np();
    _Block_object_dispose(&v12, 8);
    _Unwind_Resume(v11);
  }

  return v8(a1, a2, a3, 1, a4, 0);
}

uint64_t sub_2992FBDA0(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v4 = off_2A1460E70;
  v11 = off_2A1460E70;
  if (!off_2A1460E70)
  {
    v5 = sub_2992FCE1C();
    v9[3] = dlsym(v5, "MRLNeuralNetworkPredict");
    off_2A1460E70 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    dlerror();
    v7 = abort_report_np();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  return v4(a1, a2, 0);
}

void sub_2992FBEC0(unsigned __int16 *a1, CFArrayRef theArray)
{
  v4 = *(a1 + 1);
  if (v4)
  {
    while (CFArrayGetCount(v4) >= *a1)
    {
      CFArrayRemoveValueAtIndex(*(a1 + 1), 0);
      v4 = *(a1 + 1);
    }
  }

  if (CFArrayGetCount(theArray) != 1)
  {
    __assert_rtn("extendStates", "MontrealLanguageModel.cpp", 199, "CFArrayGetCount(other) == otherExpectedSize");
  }

  v5 = *(a1 + 1);

  sub_2992FC26C(v5, theArray);
}

uint64_t sub_2992FBF58(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v2 = off_2A1460E78;
  v9 = off_2A1460E78;
  if (!off_2A1460E78)
  {
    v3 = sub_2992FCE1C();
    v7[3] = dlsym(v3, "MRLNeuralNetworkCopyStates");
    off_2A1460E78 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v5 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(a1, 0);
}

uint64_t sub_2992FC070(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v2 = off_2A1460E80;
  v9 = off_2A1460E80;
  if (!off_2A1460E80)
  {
    v3 = sub_2992FCE1C();
    v7[3] = dlsym(v3, "MRLNeuralNetworkGetOutput");
    off_2A1460E80 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v5 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(a1, @"logits", 0);
}

void sub_2992FC190(void *a1, unsigned __int16 *a2)
{
  v3 = (a2 + 4);
  v2 = *(a2 + 1);
  if (v2)
  {
    *(a2 + 1) = 0;
    *a1 = v2;
    Mutable = CFArrayCreateMutable(0, *a2, MEMORY[0x29EDB9000]);

    sub_2992530BC(v3, Mutable);
  }

  else
  {
    *a1 = 0;
  }
}

uint64_t *sub_2992FC218(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_2992530BC((v2 + 8), 0);
    MEMORY[0x29C29BFB0](v2, 0x1020C400CC4F872);
  }

  return a1;
}

void sub_2992FC26C(__CFArray *a1, CFArrayRef theArray)
{
  v5.length = CFArrayGetCount(theArray);
  v5.location = 0;
  CFArrayAppendArray(a1, theArray, v5);

  CFRelease(theArray);
}

uint64_t sub_2992FC2C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  if (*a2 != *(a2 + 8))
  {
    v4 = *v3;
    if (*v3)
    {
      v5 = **v4;
      __dynamic_cast(v4, &unk_2A1F6F518, &unk_2A1F6F528, 0);
    }

    operator new();
  }

  return result;
}

void sub_2992FC84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  sub_2992530BC(&__p, 0);
  sub_2992FC218((v24 - 112));
  v26 = *v23;
  if (*v23)
  {
    *(v23 + 8) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void sub_2992FCB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  sub_2992FC218(&a11);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2992FCB60(uint64_t a1, CFIndex a2)
{
  v2 = *MEMORY[0x29EDB8ED8];
  ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 64) + 8), a2);
  CFArrayCreateCopy(v2, ValueAtIndex);
  operator new();
}

void sub_2992FCBE8(uint64_t a1)
{
  sub_2992FD554(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2992FCC20(void **a1)
{
  (*(*a1[1] + 24))(__p);
  ((*a1)[13])(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2992FCCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2992FCDCC(uint64_t a1)
{
  v2 = sub_2992FCE1C();
  result = dlsym(v2, "kMRLNeuralNetworkOptionModelURLKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460E88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2992FCE1C()
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!qword_2A1460E60)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 0x40000000;
    v4[3] = sub_2992FCF2C;
    v4[4] = &unk_29EF10D70;
    v4[5] = v4;
    v5 = xmmword_29EF10D58;
    v6 = 0;
    qword_2A1460E60 = _sl_dlopen();
    v1 = v4[0];
    v0 = qword_2A1460E60;
    if (qword_2A1460E60)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = qword_2A1460E60;
LABEL_5:
  v2 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t sub_2992FCF2C(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2A1460E60 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_2992FCFA0(uint64_t a1)
{
  v2 = sub_2992FCE1C();
  result = dlsym(v2, "kMRLNeuralNetworkOptionModelTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460E90 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992FCFF0(uint64_t a1)
{
  v2 = sub_2992FCE1C();
  result = dlsym(v2, "kMRLNeuralNetworkModelTypeE5RT");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460E98 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992FD040(uint64_t a1)
{
  v2 = sub_2992FCE1C();
  result = dlsym(v2, "MRLNeuralNetworkCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1460EA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2992FD090(uint64_t a1)
{
  *a1 = &unk_2A1F6F5E8;
  sub_299229F00((a1 + 8), 0);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2992FD184(uint64_t a1)
{
  v2 = sub_2992FCE1C();
  result = dlsym(v2, "MRLNeuralNetworkSetInput");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1460E68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992FD1D4(uint64_t a1)
{
  v2 = sub_2992FCE1C();
  result = dlsym(v2, "MRLNeuralNetworkPredict");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1460E70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992FD224(uint64_t a1)
{
  v2 = sub_2992FCE1C();
  result = dlsym(v2, "MRLNeuralNetworkCopyStates");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1460E78 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992FD274(uint64_t a1)
{
  v2 = sub_2992FCE1C();
  result = dlsym(v2, "MRLNeuralNetworkGetOutput");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1460E80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2992FD2C4(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2992FD31C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2992FD380(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_2992FD410(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2992F8674(result, a2);
  }

  return result;
}

void sub_2992FD46C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992FD488(uint64_t result, uint64_t *a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 2)
    {
      v5 = (a4 - result) >> 1;
      v6 = v5 | 1;
      v7 = (result + 4 * (v5 | 1));
      v8 = v5 + 2;
      v9 = *a2;
      if (v8 < a3 && *(v9 + 2 * *v7) > *(v9 + 2 * v7[1]))
      {
        ++v7;
        v6 = v8;
      }

      v10 = *v7;
      v11 = *a4;
      v12 = *(v9 + 2 * v11);
      if (*(v9 + 2 * v10) <= v12)
      {
        do
        {
          *a4 = v10;
          a4 = v7;
          if (v4 < v6)
          {
            break;
          }

          v13 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 4 * v6);
          v14 = v13 + 2;
          if (v14 < a3 && *(v9 + 2 * *v7) > *(v9 + 2 * v7[1]))
          {
            ++v7;
            v6 = v14;
          }

          v10 = *v7;
        }

        while (*(v9 + 2 * v10) <= v12);
        *a4 = v11;
      }
    }
  }

  return result;
}

uint64_t sub_2992FD554(uint64_t a1)
{
  *a1 = &unk_2A1F6F4A8;
  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(a1 + 40) = &unk_2A1F6F5E8;
  sub_299229F00((a1 + 48), 0);
  sub_2992FD650((a1 + 32));
  sub_2992FD650((a1 + 24));
  sub_2992FD650((a1 + 16));
  v3 = *(a1 + 8);
  *a1 = &unk_2A1F6F568;
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_2992FD650(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

uint64_t sub_2992FD684(uint64_t a1)
{
  *a1 = &unk_2A1F6F620;
  sub_2992530BC((a1 + 8), 0);
  return a1;
}

void sub_2992FD6CC(uint64_t a1)
{
  *a1 = &unk_2A1F6F620;
  sub_2992530BC((a1 + 8), 0);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992FD734@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2)
  {
    v3 = a2;
    v4 = result;
    while (1)
    {
      v6 = 0;
      v7 = 2 * v3;
      while (*&v4[2 * v6] == 12387)
      {
        ++v6;
        v7 -= 2;
        if (!v7)
        {
          v6 = ((v3 - 1) & 0x7FFFFFFFFFFFFFFFLL) + 1;
          break;
        }
      }

      if (v3 - 1 >= v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = v3 - 1;
      }

      v9 = sub_2992FD94C(*&v4[2 * v8]);
      v11 = v9;
      v12 = v10;
      if (v8)
      {
        if (v10)
        {
          v13 = 0;
          while (*v9 != word_299414AA2[v13])
          {
            if (++v13 == 6)
            {
              goto LABEL_17;
            }
          }
        }

        --v8;
        v11 = sub_2992FD94C(*&v4[2 * v8]);
        v12 = v14;
      }

LABEL_17:
      if (!v4)
      {
        break;
      }

      if (v3 - v8 < 2)
      {
        break;
      }

      v15 = &v4[2 * v8];
      if (!sub_2992FDA0C(*v15))
      {
        break;
      }

      if (!sub_2992FDA0C(*(v15 + 1)))
      {
        break;
      }

      v16 = byte_299414BA4[*v15 - 12353];
      if (v16 < 0)
      {
        break;
      }

      v17 = 0;
      v18 = -1;
      do
      {
        if (*(v15 + 1) == word_299414BF8[v17])
        {
          v18 = v17;
        }

        ++v17;
      }

      while (v17 != 9);
      if (v18 < 0)
      {
        break;
      }

      v19 = 9 * v16 + v18;
      if (v19 > 0xCE)
      {
        break;
      }

      v20 = *(&off_29EF111B8 + v19);
      if (!*v20)
      {
        break;
      }

      v21 = 0;
      do
      {
        v22 = &v20[2 * v21++];
      }

      while (*(v22 + 1));
      if (!v21)
      {
        break;
      }

      v23 = v8 + 2;
      if (v8)
      {
        goto LABEL_41;
      }

LABEL_42:
      result = sub_29922C614(a3, v20, v21);
      if (v4)
      {
        v4 += 2 * v23;
        v3 -= v23;
        if (v3)
        {
          continue;
        }
      }

      return result;
    }

    v23 = v8 + 1;
    if (v12)
    {
      v20 = v11;
    }

    else
    {
      v20 = v4;
    }

    if (v12 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v12;
    }

    if (!v8)
    {
      goto LABEL_42;
    }

    do
    {
LABEL_41:
      sub_2992174C4(a3, *v20);
      --v8;
    }

    while (v8);
    goto LABEL_42;
  }

  return result;
}

void sub_2992FD92C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2992FD94C(unsigned int a1)
{
  if (sub_2992FDA0C(a1))
  {
    result = *(&off_29EF10F18 + a1 - 12353);
    if (*result)
    {
      v3 = 0;
      do
      {
        v4 = &result[2 * v3++];
      }

      while (*(v4 + 1));
    }
  }

  else
  {
    v5 = 0;
    result = byte_29945C656;
    while (word_299414C0A[v5] != a1)
    {
      if (++v5 == 6)
      {
        return result;
      }
    }

    result = *(&off_29EF11830 + v5);
    if (*result)
    {
      v6 = 0;
      do
      {
        v7 = &result[2 * v6++];
      }

      while (*(v7 + 1));
    }
  }

  return result;
}

BOOL sub_2992FDA0C(unsigned int a1)
{
  if ((atomic_load_explicit(&qword_2A1460EB0, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    v3 = __cxa_guard_acquire(&qword_2A1460EB0);
    a1 = v4;
    if (v3)
    {
      word_2A1460EA8 = 12437;
      __cxa_guard_release(&qword_2A1460EB0);
      a1 = v4;
    }
  }

  return a1 > 0x3040 && a1 < word_2A1460EA8;
}

uint64_t sub_2992FDA94()
{
  if ((atomic_load_explicit(&qword_2A1462110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1462110))
  {
    operator new();
  }

  return qword_2A1462108;
}

uint64_t sub_2992FDB20(uint64_t a1)
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_2992FDBB8;
  block[3] = &unk_29EF10EA8;
  block[4] = a1;
  if (qword_2A1462118 != -1)
  {
    dispatch_once(&qword_2A1462118, block);
  }

  return a1;
}

void sub_2992FDBB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_299276360("/System/Library/PrivateFrameworks/EmojiFoundation.framework/EmojiFoundation");
  __path[1] = v2;
  if (v2)
  {
    v3 = v2;
    sub_299277A90(v2, __path);
    v4 = __path[0];
    v5 = dlopen(__path[0], 2);
    if (v4)
    {
      MEMORY[0x29C29BF70](v4, 0x1000C8077774924);
    }

    if (v5)
    {
      qword_2A1462120 = objc_getClass("EMFEmojiLocaleData");
      qword_2A1462128 = objc_getClass("EMFEmojiPreferencesService");
      qword_2A1462130 = objc_getClass("EMFEmojiToken");
    }

    *v1 = dispatch_group_create();
    CFRelease(v3);
  }

  else
  {
    *v1 = dispatch_group_create();
  }
}

void sub_2992FDC98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C8077774924);
  }

  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

void sub_2992FDCD8(NSObject **a1, unsigned int a2, uint64_t a3)
{
  if (qword_2A1462120)
  {
    v3 = qword_2A1462128 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && qword_2A1462130 != 0)
  {
    v7 = sub_2992EF2F4(a2);
    if (v7)
    {
      v9 = objc_msgSend_emojiLocaleDataWithLocaleIdentifier_(qword_2A1462120, v8, v7);
      v11 = objc_msgSend_emojiTokenWithString_localeData_(qword_2A1462130, v10, a3, v9);
      if (v11)
      {
        v13 = v11;
        v14 = objc_msgSend_sharedServiceWithMachName_(qword_2A1462128, v12, 0);
        v15 = *a1;
        v18 = objc_msgSend_dispatchQueue(v14, v16, v17);
        v19[0] = MEMORY[0x29EDCA5F8];
        v19[1] = 3221225472;
        v19[2] = sub_2992FDDDC;
        v19[3] = &unk_29EF10ED0;
        v19[4] = v14;
        v19[5] = v13;
        dispatch_group_async(v15, v18, v19);
      }
    }
  }
}

uint64_t sub_2992FDDDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_preferences(*(a1 + 32), a2, a3);
  objc_msgSend_didUseEmoji_(v4, v5, *(a1 + 40));
  v8 = objc_msgSend_preferences(*(a1 + 32), v6, v7);

  return MEMORY[0x2A1C70FE8](v8, sel_writeEmojiDefaults, v9);
}

uint64_t sub_2992FDE24(uint64_t a1, const char *a2)
{
  if (qword_2A1462120)
  {
    v2 = qword_2A1462128 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || qword_2A1462130 == 0)
  {
    return 0;
  }

  v5 = objc_msgSend_sharedServiceWithMachName_(qword_2A1462128, a2, 0);
  v7 = objc_msgSend_emojiTokenWithString_localeData_(qword_2A1462130, v6, a2, 0);
  if (!objc_msgSend_supportsSkinToneVariants(v7, v8, v9))
  {
    return 0;
  }

  v12 = objc_msgSend_preferences(v5, v10, v11);
  UsedVariantEmojiForEmoji = objc_msgSend_lastUsedVariantEmojiForEmoji_(v12, v13, v7);

  return objc_msgSend_string(UsedVariantEmojiForEmoji, v15, v16);
}

uint64_t sub_2992FDED0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result <= 5 && ((1 << result) & 0x34) != 0)
  {
    operator new();
  }

  *a2 = 0;
  return result;
}

void sub_2992FDFA0(int a1)
{
  v2 = sub_29936C2B8();
  if (a1 == 5)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (a1 == 13)
  {
    v4 = 5;
  }

  else
  {
    v4 = v3;
  }

  v5 = sub_29936C350(v2, v4, off_2A145F738[0], off_2A145F6B8[0]);
  if (*(v5 + 23) < 0)
  {
    v6 = *v5;
  }

  operator new();
}

uint64_t *sub_2992FE060()
{
  if ((atomic_load_explicit(&qword_2A1462148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1462148))
  {
    qword_2A1462138 = 0;
    unk_2A1462140 = 0;
    __cxa_guard_release(&qword_2A1462148);
  }

  return &qword_2A1462138;
}

uint64_t *sub_2992FE0BC()
{
  if ((atomic_load_explicit(&qword_2A1462160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1462160))
  {
    qword_2A1462150 = L"";
    *algn_2A1462158 = 0;
    __cxa_guard_release(&qword_2A1462160);
  }

  return &qword_2A1462150;
}

const void **sub_2992FE120@<X0>(const void **result@<X0>, _BYTE *a2@<X8>)
{
  v3 = 2 * result[1];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v4 = *result;
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    result = memmove(a2, v4, v3);
  }

  a2[v3] = 0;
  return result;
}

BOOL sub_2992FE1C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) < v2)
  {
    return 0;
  }

  v3 = *a1;
  return (!v2 || v3 != 0) && memcmp(v3, *a2, 2 * v2) == 0;
}

BOOL sub_2992FE218(uint64_t *a1, const void *a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 >= a3;
  v5 = v3 - a3;
  if (v4 && ((v6 = *a1, !a3) || v6))
  {
    return memcmp((v6 + 2 * v5), a2, 2 * a3) == 0;
  }

  else
  {
    return 0;
  }
}

void sub_2992FE264(void *a1, __int16 a2, double a3)
{
  v6 = a1[2];
  v5 = a1[3];
  if (v6 >= v5)
  {
    v9 = a1[1];
    v10 = v6 - v9;
    v11 = (v6 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      sub_2992EAC5C();
    }

    v13 = v5 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFF8;
    v15 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_2992EAC74((a1 + 1), v15);
    }

    v16 = v11;
    v17 = 8 * v11;
    *v17 = a2;
    v18 = a3;
    *(v17 + 4) = v18;
    v8 = 8 * v11 + 8;
    v19 = (v17 - 8 * v16);
    memcpy(v19, v9, v10);
    v20 = a1[1];
    a1[1] = v19;
    a1[2] = v8;
    a1[3] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v6 = a2;
    v7 = a3;
    *(v6 + 4) = v7;
    v8 = v6 + 8;
  }

  a1[2] = v8;
}

BOOL sub_2992FE360(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 8))(a1);
  if (v4 != (*(*a2 + 8))(a2))
  {
    return 0;
  }

  v5 = (**a1)(a1);
  return v5 == (**a2)(a2);
}

__CFString *sub_2992FE448(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v3 = (**a1)(a1);
  CFStringAppendFormat(Mutable, 0, @"{type:%d,%c,", v3, *(a1 + 32));
  v5 = *(a1 + 8);
  for (i = *(a1 + 16); v5 != i; i = *(a1 + 16))
  {
    v6 = *v5;
    v7 = *(v5 + 1);
    if (v5 == i - 4)
    {
      CFStringAppendFormat(Mutable, 0, @"%c:%.2f", v6, *(v5 + 1));
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"%c:%.2f,", v6, *(v5 + 1));
    }

    v5 += 4;
  }

  CFStringAppend(Mutable, @"}\n");
  return Mutable;
}

BOOL sub_2992FE548(uint64_t a1, char **a2)
{
  result = sub_2992FE360(a1, a2);
  if (result)
  {
    v5 = **a2;
    v6 = __dynamic_cast(a2, &unk_2A1F6F680, &unk_2A1F6F690, 0);
    if (!v6)
    {
      __cxa_bad_cast();
    }

    return vabdd_f64(v6[4], *(a1 + 32)) < 2.22044605e-16 && vabdd_f64(v6[5], *(a1 + 40)) < 2.22044605e-16 && vabdd_f64(v6[6], *(a1 + 48)) < 2.22044605e-16 && vabdd_f64(v6[7], *(a1 + 56)) < 2.22044605e-16 && *(v6 + 68) == *(a1 + 68);
  }

  return result;
}

uint64_t sub_2992FE63C(uint64_t result, uint64_t a2)
{
  v5 = 0;
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; v2 += 2)
  {
    result = (*(a2 + 16))(a2, *v2, &v5, v2[1]);
    if (v5)
    {
      break;
    }
  }

  return result;
}

uint64_t sub_2992FE6AC(uint64_t a1, char a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = sub_2992FE76C;
  v4[3] = &unk_29EF10EF8;
  v5 = a2;
  v4[4] = &v6;
  sub_2992FE63C(a1, v4);
  v2 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void sub_2992FE754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2992FE76C(uint64_t result, int a2, _BYTE *a3)
{
  if (a2 == *(result + 40))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

__CFString *sub_2992FE790(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v3 = (**a1)(a1);
  v4 = (*(*a1 + 8))(a1);
  CFStringAppendFormat(Mutable, 0, @"{type:%d,%c,%d,%.2f,%.2f,%.2f,%.2f,%d,", v3, v4, *(a1 + 64), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 68));
  v6 = *(a1 + 8);
  for (i = *(a1 + 16); v6 != i; i = *(a1 + 16))
  {
    v7 = *v6;
    v8 = *(v6 + 1);
    if (v6 == i - 4)
    {
      CFStringAppendFormat(Mutable, 0, @"%c:%.2f", v7, *(v6 + 1));
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"%c:%.2f,", v7, *(v6 + 1));
    }

    v6 += 4;
  }

  CFStringAppendFormat(Mutable, 0, @"}\n");
  return Mutable;
}

void sub_2992FE8DC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, float a5@<S0>, float a6@<S1>)
{
  v39[4] = *MEMORY[0x29EDCA608];
  v24 = 0;
  v25 = &v24;
  v26 = 0x4812000000;
  v27 = sub_2992FEB74;
  v28 = sub_2992FEB98;
  v29 = "";
  v31 = 0;
  v32 = 0;
  __p = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 3321888768;
  v35 = sub_2992FEBB0;
  v36 = &unk_2A1F6F730;
  v37 = v23;
  sub_2992FF104(v39, a3);
  v38 = &v24;
  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  v33 = 0;
  if (v12 != v11)
  {
    v13 = 0;
    v14 = 0.0;
    do
    {
      if ((v33 & 1) != 0 || v13 >= a2)
      {
        break;
      }

      v15 = v12[1];
      v16 = v15;
      if (v13)
      {
        v17 = v15 >= a6 && (v14 - v15) <= a5;
        v16 = v14;
        if (!v17)
        {
          break;
        }
      }

      (v35)(v34, *v12, &v33);
      ++v13;
      v12 += 2;
      v14 = v16;
    }

    while (v12 != v11);
  }

  v18 = v25;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v19 = v18[6];
  v20 = v18[7];
  v21 = v20 - v19;
  if (v20 != v19)
  {
    if (!((v21 >> 3) >> 61))
    {
      sub_2992EAC74(a4, v21 >> 3);
    }

    sub_2992EAC5C();
  }

  sub_2992E55A4(v39);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v24, 8);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  v22 = *MEMORY[0x29EDCA608];
}

void sub_2992FEB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a10, 8);
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2992FEB74(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2992FEB98(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2992FEBB0(uint64_t a1, __int16 a2, float a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24) || (sub_29922D1C4(a1 + 48, a2) & 1) == 0)
  {
    v6 = *(*(a1 + 40) + 8);
    v8 = v6[7];
    v7 = v6[8];
    if (v8 >= v7)
    {
      v10 = v6[6];
      v11 = v8 - v10;
      v12 = (v8 - v10) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        sub_2992EAC5C();
      }

      v14 = v7 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      v15 = v14 >= 0x7FFFFFFFFFFFFFF8;
      v16 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v15)
      {
        v16 = v13;
      }

      if (v16)
      {
        sub_2992EAC74((v6 + 6), v16);
      }

      v17 = v12;
      v18 = 8 * v12;
      *v18 = a2;
      *(v18 + 4) = a3;
      v9 = 8 * v12 + 8;
      v19 = (v18 - 8 * v17);
      memcpy(v19, v10, v11);
      v20 = v6[6];
      v6[6] = v19;
      v6[7] = v9;
      v6[8] = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v8 = a2;
      *(v8 + 4) = a3;
      v9 = v8 + 8;
    }

    v6[7] = v9;
  }

  ++*(*(*(a1 + 32) + 8) + 24);
}

CFStringRef sub_2992FECFC(uint64_t (***a1)(void))
{
  v1 = *MEMORY[0x29EDB8ED8];
  v2 = (**a1)(a1);
  return CFStringCreateWithFormat(v1, 0, @"type:%d;", v2);
}

void *sub_2992FED78(void *a1)
{
  *a1 = &unk_2A1F6F788;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2992FEDC8(void *a1)
{
  *a1 = &unk_2A1F6F788;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992FEE50(uint64_t a1)
{
  *a1 = &unk_2A1F6F7C8;
  v4 = (a1 + 32);
  sub_29920E060(&v4);
  *a1 = &unk_2A1F6F788;
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2992FEED4(uint64_t a1)
{
  *a1 = &unk_2A1F6F7C8;
  v4 = (a1 + 32);
  sub_29920E060(&v4);
  *a1 = &unk_2A1F6F788;
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return MEMORY[0x29C29BFB0](a1, 0xA1C40B41E38F6);
}

void *sub_2992FEF7C(void *a1)
{
  *a1 = &unk_2A1F6F788;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2992FEFCC(void *a1)
{
  *a1 = &unk_2A1F6F788;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

void *sub_2992FF044(void *a1)
{
  *a1 = &unk_2A1F6F788;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2992FF094(void *a1)
{
  *a1 = &unk_2A1F6F788;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992FF104(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_2992FF19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, char a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_299304F6C(a1, *a5, a5[1], 0xCCCCCCCCCCCCCCCDLL * ((a5[1] - *a5) >> 1));
  *(a1 + 136) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 168) = 1065353216;
  *(a1 + 176) = a6;
  *(a1 + 180) = a7;
  operator new();
}

void sub_2992FF4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, void **a16, void **a17)
{
  sub_29921ED28(a14);
  v19 = *(v17 + 96);
  if (v19)
  {
    *(v17 + 104) = v19;
    operator delete(v19);
  }

  v20 = *a15;
  if (*a15)
  {
    *(v17 + 80) = v20;
    operator delete(v20);
  }

  v21 = *a16;
  if (*a16)
  {
    *(v17 + 56) = v21;
    operator delete(v21);
  }

  v22 = *a17;
  if (*a17)
  {
    *(v17 + 32) = v22;
    operator delete(v22);
  }

  v23 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992FF534(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, int a5, int a6, int a7, int a8)
{
  v14 = sub_29925851C(a1, a2, a3);
  v14[3] = 0;
  v14[4] = 0;
  v14[5] = 0;
  sub_299305088((v14 + 3), *a4, a4[1], 0xD37A6F4DE9BD37A7 * ((a4[1] - *a4) >> 3));
  *(a1 + 52) = a6;
  *(a1 + 56) = a7;
  *(a1 + 60) = 0;
  *(a1 + 64) = a8;
  sub_2992FF608(a1, a5);
  return a1;
}

void sub_2992FF5D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29927255C(va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void sub_2992FF608(uint64_t a1, int a2)
{
  v17 = 0;
  v4 = sub_2992FFFE0(a1);
  if (v4)
  {
    v5 = a1;
    if (*(a1 + 23) < 0)
    {
      v5 = *a1;
    }

    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    if (v6 == v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      do
      {
        v8 += *(*(v6 + 104) - 10);
        v6 += 184;
      }

      while (v6 != v7);
    }

    v10 = v5 + 2 * v8;
    if (v5)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    v13[0] = v10;
    v13[1] = v11;
    sub_299216DAC(v13, &v17, 0, (*(a1 + 56) >> 30) & 1, &v14);
    v12 = v16;
    if ((v16 & 0x8000000000000000) != 0)
    {
      v12 = v15;
      operator delete(v14);
    }

    v9 = -10000 * (v12 - v17);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 48) = v9 + a2;
}

uint64_t sub_2992FF6E4(unsigned int *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = (a2 + 8);
  v7 = *(a2 + 87);
  if (v7 >= 0)
  {
    v8 = a2 + 8;
  }

  else
  {
    v8 = a2[8];
  }

  v9 = a2[9];
  if (v7 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = a2[9];
  }

  v11 = sub_29925851C(a1, v8, v10);
  *(v11 + 3) = 0;
  v63 = (v11 + 24);
  v64 = v11;
  *(v11 + 4) = 0;
  *(v11 + 5) = 0;
  *(v11 + 13) = *(a2 + 55);
  *(v11 + 14) = a3;
  v5[15] = (*(*a2 + 408))(a2);
  v5[16] = (*(*a2 + 96))(a2);
  v72 = a2;
  if ((atomic_load_explicit(&qword_2A1460EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460EC0))
  {
    sub_299255778(0);
    qword_2A1460EB8 = &qword_2A1461DC0;
    __cxa_guard_release(&qword_2A1460EC0);
    v5 = v64;
  }

  v65 = (*(*a2 + 304))(a2);
  v66 = (*(*a2 + 48))(a2);
  v12 = *(a2 + 87);
  v13 = a2[8];
  if (v12 >= 0)
  {
    v13 = v6;
  }

  if (v12 < 0)
  {
    v12 = a2[9];
  }

  v80 = v13;
  v81 = v12;
  v14 = (*(*a2 + 552))(a2);
  v16 = v15;
  v17 = (*(*a2 + 544))(a2);
  v19 = v18;
  v20 = sub_29921788C(&v80, v5[14]);
  v21 = sub_299217570(v14, v16);
  v22 = sub_299217570(v17, v19);
  v70 = v17;
  v71 = v14;
  if (v20 && v20 == v22 && v20 == v21 && (v5[14] & 0x20) != 0 && (*(*a2 + 96))(a2) != 71)
  {
    v62 = (*(*a2 + 408))(a2);
    v23 = v19;
    if (!v62)
    {
      v81 -= v20;
      v16 -= v20;
      v23 = v19 - v20;
    }
  }

  else
  {
    v23 = v19;
  }

  v78 = 0uLL;
  v79 = 0;
  __p = 0;
  v76 = 0;
  v77 = 0;
  if (v66)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = v81;
    do
    {
      v30 = (*v65 + 40 * v28);
      v31 = v30[15];
      v32 = v30[16];
      v73 = v23;
      v74 = v16;
      v68 = v26;
      v69 = v27;
      v33 = v23 - v27;
      v34 = v16 - v26;
      if (v30[13] >= (v81 - v25))
      {
        v35 = (v81 - v25);
      }

      else
      {
        v35 = v30[13];
      }

      if (v30[14] >= v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = v30[14];
      }

      if (v30[12] >= v33)
      {
        v37 = v33;
      }

      else
      {
        v37 = v30[12];
      }

      v67 = v25;
      if (v24 >= v77)
      {
        v38 = __p;
        v39 = v24 - __p;
        v40 = 0xCCCCCCCCCCCCCCCDLL * ((v24 - __p) >> 1);
        v41 = v40 + 1;
        if (v40 + 1 > 0x1999999999999999)
        {
          sub_299212A8C();
        }

        if (0x999999999999999ALL * ((v77 - __p) >> 1) > v41)
        {
          v41 = 0x999999999999999ALL * ((v77 - __p) >> 1);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v77 - __p) >> 1) >= 0xCCCCCCCCCCCCCCCLL)
        {
          v42 = 0x1999999999999999;
        }

        else
        {
          v42 = v41;
        }

        if (v42)
        {
          sub_299305034(v42);
        }

        v43 = 10 * v40;
        *v43 = v35;
        *(v43 + 2) = v36;
        *(v43 + 4) = v37;
        *(v43 + 6) = v31;
        *(v43 + 8) = v32;
        v24 = (10 * v40 + 10);
        v44 = (v43 - v39);
        memcpy((v43 - v39), v38, v39);
        __p = v44;
        v76 = v24;
        v77 = 0;
        if (v38)
        {
          operator delete(v38);
        }
      }

      else
      {
        *v24 = v35;
        *(v24 + 1) = v36;
        *(v24 + 2) = v37;
        *(v24 + 3) = v31;
        *(v24 + 4) = v32;
        v24 += 10;
      }

      v76 = v24;
      if (v28 == v66 - 1 || (v45 = qword_2A1460EB8, v46 = (*(*v72 + 352))(v72, v28), v47 = (*(*v72 + 344))(v72, v28 + 1), sub_299255970(v45, v46, v47)))
      {
        if (__p == v24)
        {
          v51 = 0.0;
        }

        else
        {
          v48 = 0;
          v49 = __p;
          do
          {
            v50 = *v49;
            v49 += 10;
            v48 += v50;
          }

          while (v49 != v24);
          v51 = v48;
        }

        v52 = v51 * (*(*v72 + 112))(v72) / v29;
        if (*(&v78 + 1) < v79)
        {
          v53 = *(v64 + 56);
          sub_2992FF19C(*(&v78 + 1), v80, v71, v70, &__p, v52, 0);
        }

        v54 = 0xD37A6F4DE9BD37A7 * ((*(&v78 + 1) - v78) >> 3) + 1;
        if (v54 <= 0x1642C8590B21642)
        {
          if (0xA6F4DE9BD37A6F4ELL * ((v79 - v78) >> 3) > v54)
          {
            v54 = 0xA6F4DE9BD37A6F4ELL * ((v79 - v78) >> 3);
          }

          if (0xD37A6F4DE9BD37A7 * ((v79 - v78) >> 3) >= 0xB21642C8590B21)
          {
            v55 = 0x1642C8590B21642;
          }

          else
          {
            v55 = v54;
          }

          v86 = &v78;
          if (v55)
          {
            sub_2993051A8(v55);
          }

          v82 = 0;
          v83 = 8 * ((*(&v78 + 1) - v78) >> 3);
          v84 = v83;
          v85 = 0;
          v56 = *(v64 + 56);
          sub_2992FF19C(v83, v80, v71, v70, &__p, v52, 0);
        }

        sub_299212A8C();
      }

      v25 = v67 + v35;
      v26 = v68 + v36;
      v27 = v69 + v37;
      ++v28;
      v23 = v73;
      v16 = v74;
    }

    while (v28 != v66);
  }

  v57 = *v63;
  if (*v63)
  {
    v58 = *(v64 + 32);
    v59 = *v63;
    if (v58 != v57)
    {
      do
      {
        v58 -= 184;
        sub_299305204(v58);
      }

      while (v58 != v57);
      v59 = *v63;
    }

    *(v64 + 32) = v57;
    operator delete(v59);
    *v63 = 0;
    v63[1] = 0;
    v63[2] = 0;
  }

  *(v64 + 24) = v78;
  *(v64 + 40) = v79;
  v79 = 0;
  v78 = 0uLL;
  v60 = (*(*v72 + 112))(v72);
  sub_2992FF608(v64, v60);
  if (__p)
  {
    operator delete(__p);
  }

  v82 = &v78;
  sub_29927255C(&v82);
  return v64;
}

void sub_2992FFF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  __cxa_guard_abort(&qword_2A1460EC0);
  a25 = a9;
  sub_29927255C(&a25);
  if (*(a10 + 23) < 0)
  {
    operator delete(*a10);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_2992FFFE0(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v3 += *(*(v1 + 104) - 10);
      v1 += 184;
    }

    while (v1 != v2);
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(a1 + 8);
    if (v4 > v3)
    {
      return v4 - v3;
    }
  }

  else if (v3 < v4)
  {
    return v4 - v3;
  }

  return 0;
}

double sub_29930003C(uint64_t a1, void *a2, unint64_t a3)
{
  sub_29925851C(&__dst, a2, a3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

uint64_t *sub_29930008C(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 24);
    sub_29927255C(&v3);
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    return MEMORY[0x29C29BFB0](v2, 0x1032C40CA71968DLL);
  }

  return result;
}

uint64_t sub_2993000F4(uint64_t a1)
{
  v18 = 0;
  v2 = a1;
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v5 += *(*(v3 + 104) - 10);
      v3 += 184;
    }

    while (v3 != v4);
  }

  v6 = v2 + 2 * v5;
  v7 = sub_2992FFFE0(a1);
  if (v2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v14[0] = v6;
  v14[1] = v8;
  sub_299216DAC(v14, &v18, 0, (*(a1 + 56) >> 30) & 1, &v15);
  v9 = *(a1 + 48);
  v10 = v17;
  v11 = v18;
  if ((v17 & 0x8000000000000000) != 0)
  {
    v10 = v16;
    operator delete(v15);
  }

  v12 = v10 - v11;
  if (v11 > 0)
  {
    ++v12;
  }

  return (v9 + 10000 * v12);
}

uint64_t sub_2993001C8(uint64_t *a1, uint64_t a2)
{
  v31[6] = *MEMORY[0x29EDCA608];
  sub_2991D7954(v15);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      sub_299305474(buf, v4);
      sub_299277B3C(v27, *(v30 - 3), &__p);
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

      v8 = sub_2991C0E9C(&v16, p_p, size);
      sub_2991C0E9C(v8, " ", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_29921ED28(v31);
      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }

      if (v27)
      {
        v28 = v27;
        operator delete(v27);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v4 += 184;
    }

    while (v4 != v5);
  }

  v9 = sub_2993652F8(8u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_29927989C(v15, &__p);
    v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *&buf[4] = "logSegments";
    *&buf[12] = 2080;
    *&buf[14] = a2;
    v22 = 2080;
    v23 = v13;
    _os_log_debug_impl(&dword_29918C000, v9, OS_LOG_TYPE_DEBUG, "[%s] %s: %s\n", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v15[0] = *MEMORY[0x29EDC9528];
  v10 = *(MEMORY[0x29EDC9528] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v16 = v10;
  v17 = MEMORY[0x29EDC9570] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  result = MEMORY[0x29C29BF00](&v20);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_299300538(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xD37A6F4DE9BD37A7 * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0x1642C8590B21642)
    {
      sub_299212A8C();
    }

    v8 = 0xD37A6F4DE9BD37A7 * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0xB21642C8590B21)
    {
      v10 = 0x1642C8590B21642;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      sub_2993051A8(v10);
    }

    v15 = 0;
    v16 = 184 * v7;
    v17 = 184 * v7;
    v18 = 0;
    sub_299305474(184 * v7, a2);
    v6 = 184 * v7 + 184;
    v11 = a1[1];
    v12 = v16 + *a1 - v11;
    sub_299305294(*a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    a1[1] = v6;
    v14 = a1[2];
    a1[2] = v18;
    v17 = v13;
    v18 = v14;
    v15 = v13;
    v16 = v13;
    result = sub_299305424(&v15);
  }

  else
  {
    result = sub_299305474(a1[1], a2);
    v6 = v4 + 184;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_299300678(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299305424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299300698(uint64_t a1)
{
  sub_29921ED28(a1 + 136);
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

void *sub_299300714(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    goto LABEL_15;
  }

  v3 = *(a3 + 24);
  v4 = (*(a3 + 32) - v3) >> 3;
  v5 = 0xD37A6F4DE9BD37A7 * v4 - 1;
  if (0xD37A6F4DE9BD37A7 * v4 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = (v3 + 104);
    do
    {
      v8 = *v7;
      v7 += 23;
      v6 += *(v8 - 10);
      --v5;
    }

    while (v5);
  }

  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = 0;
  if (v10 != v9 && v6 >= 1)
  {
    v13 = 1;
    do
    {
      v6 -= *(*(v9 + 104 + v11) - 10);
      v11 += 184;
      if (v13 >= 0xD37A6F4DE9BD37A7 * ((v10 - v9) >> 3))
      {
        break;
      }

      ++v13;
    }

    while (v6 > 0);
  }

  if (!v6)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    if (v11 + v9 != v10)
    {
      sub_299305154(result, 0xD37A6F4DE9BD37A7 * ((v10 - (v11 + v9)) >> 3));
    }
  }

  else
  {
LABEL_15:
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  return result;
}

void sub_299300834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29927255C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_299300854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (a1 == a2)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v5 = a1;
    do
    {
      sub_29925493C(&v26, *(v5 + 72), (*(v5 + 72) + 2 * *(*(v5 + 104) - 6)), &v23);
      v5 += 184;
    }

    while (v5 != a2);
    v6 = v23;
    v7 = v24;
  }

  v8 = v7 - v6;
  v9 = v8 >> 1;
  if (v6)
  {
    v10 = v8 >> 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a3 + 72);
  v12 = *(*(a3 + 104) - 6);
  if (!v11)
  {
    v12 = 0;
  }

  if (v10 < v12)
  {
    v12 = v10;
  }

  if (v12)
  {
    v13 = 0;
    while (v11[v13] == *&v6[2 * v13])
    {
      if (v12 == ++v13)
      {
        v13 = v12;
        break;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  if ((v9 * 0.6) < v13)
  {
    v14 = 0;
    v15 = 1;
    v16 = v13;
    do
    {
      v18 = *v11++;
      v17 = v18;
      if ((v18 - 12353) >= 0x56 && v17 != 12540 && v17 != 12316)
      {
        break;
      }

      v14 = v15++ >= v13;
      --v16;
    }

    while (v16);
    if (!v14)
    {
      v21 = 1;
      if (!v6)
      {
        return v21;
      }

      goto LABEL_32;
    }
  }

  v21 = 0;
  if (v6)
  {
LABEL_32:
    v24 = v6;
    operator delete(v6);
  }

  return v21;
}

void sub_2993009B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993009D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v54 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1460ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460ED0))
  {
    sub_299255778(0);
    qword_2A1460EC8 = &qword_2A1461DC0;
    __cxa_guard_release(&qword_2A1460ED0);
  }

  v46 = *(a2 + 8);
  *v47 = 0u;
  *v48 = 0u;
  v49 = 0u;
  *v50 = 0u;
  *theDict = 0u;
  v8 = *(a3 + 24);
  v9 = *(a3 + 32);
  if (v8 != v9)
  {
    do
    {
      v10 = *v8;
      if (v8[1] != *v8)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          sub_2992738F8(&v46, (v8[9] + 2 * *(v8[12] + v11 + 4)), *(v10 + v11 + 4), *(v10 + v11), (v8[6] + 2 * *(v8[12] + v11 + 2)), *(v10 + v11 + 2), *(v10 + v11 + 6), *(v10 + v11 + 8));
          ++v12;
          v10 = *v8;
          v11 += 10;
        }

        while (v12 < 0xCCCCCCCCCCCCCCCDLL * ((v8[1] - *v8) >> 1));
      }

      v8 += 23;
    }

    while (v8 != v9);
    v8 = *(a3 + 24);
    v9 = *(a3 + 32);
  }

  if (v8 == v9)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v13 = *(v9 - 22);
    if (*(v9 - 23) == v13)
    {
      v17 = 0;
    }

    else
    {
      v14 = *(v13 - 4);
      v17 = v14 == 1607 || v14 == 1612 || (v14 - 1609) < 2;
    }

    v18 = 0;
    do
    {
      v18 += *(v8[13] - 10);
      v8 += 23;
    }

    while (v8 != v9);
  }

  v19 = a4[1];
  sub_2993000F4(a3);
  v20 = v19 > v18;
  v21 = v19 - v18;
  if (v20)
  {
    v22 = *a4;
    v23 = *(*a4 + 2 * a4[1] - 2);
    if (v23 != 12289 && v23 != 65292)
    {
      v41 = 0;
      while (word_299414B9C[v41] != v23)
      {
        if (++v41 == 4)
        {
          if ((v23 - 12300) < 2 || (v23 - 65288) < 2)
          {
            break;
          }

          v17 = 0;
          if (v21)
          {
            goto LABEL_31;
          }

          goto LABEL_42;
        }
      }
    }

    --v21;
    v17 = 1;
    if (v21)
    {
LABEL_31:
      v25 = v22 + 2 * v18;
      if (v22)
      {
        v26 = v21;
      }

      else
      {
        v26 = 0;
      }

      v45[0] = v25;
      v45[1] = v26;
      sub_299216DAC(v45, 0, 0, (**a2 >> 30) & 1, __p);
      if ((v53 & 0x80u) == 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = *__p;
      }

      if ((v53 & 0x80u) == 0)
      {
        v28 = v53;
      }

      else
      {
        v28 = *&__p[8];
      }

      sub_2992738F8(&v46, v27, v28, v21, v27, v28, 0, 0);
      if (v53 < 0)
      {
        operator delete(*__p);
      }
    }

LABEL_42:
    if (v17)
    {
      v29 = *(*a4 + 2 * a4[1] - 2);
      if ((atomic_load_explicit(&qword_2A1460EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460EF0))
      {
        sub_299255778(0);
        qword_2A1460EE8 = &qword_2A1461DC0;
        __cxa_guard_release(&qword_2A1460EF0);
      }

      if (v29 == 12289 || v29 == 65292)
      {
        v43 = 587;
      }

      else
      {
        v42 = 0;
        v43 = 582;
        while (word_299414B9C[v42] != v29)
        {
          if (++v42 == 4)
          {
            v31 = 0;
            v43 = 585;
            if (v29 > 65287)
            {
              if (v29 == 65288)
              {
                break;
              }

              v44 = 65289;
            }

            else
            {
              if (v29 == 12300)
              {
                break;
              }

              v44 = 12301;
            }

            if (v29 == v44)
            {
              v43 = 584;
              break;
            }

            goto LABEL_51;
          }
        }
      }

      v31 = word_29940982A[v43];
LABEL_51:
      v17 = 1;
      v32 = (*a4 + 2 * a4[1] - 2);
      sub_2992738F8(&v46, v32, 1, 1, v32, 1, v31, v31);
    }
  }

  v33 = sub_2993652F8(8u);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    *__p = 136315394;
    *&__p[4] = "createCandidateFromAnalysis";
    *&__p[12] = 1024;
    *&__p[14] = v17;
    _os_log_debug_impl(&dword_29918C000, v33, OS_LOG_TYPE_DEBUG, "[%s] endingWithPunctuation:%d", __p, 0x12u);
  }

  v34 = kMecabraCandidateAttributeIsEndingWithPunctuation[0];
  if (v17)
  {
    v35 = MEMORY[0x29EDB8F00];
  }

  else
  {
    v35 = MEMORY[0x29EDB8EF8];
  }

  v36 = theDict[1];
  if (!theDict[1])
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    sub_299274AE8(&theDict[1], Mutable);
    v36 = theDict[1];
  }

  CFDictionarySetValue(v36, v34, *v35);
  v38 = *(a3 + 52);
  v39 = *(a3 + 64);
  *a1 = sub_299273A90(&v46);
  if (theDict[1])
  {
    CFRelease(theDict[1]);
  }

  theDict[1] = 0;
  if (v50[0])
  {
    v50[1] = v50[0];
    operator delete(v50[0]);
  }

  if (v48[1])
  {
    *&v49 = v48[1];
    operator delete(v48[1]);
  }

  if (v47[0])
  {
    v47[1] = v47[0];
    operator delete(v47[0]);
  }

  v40 = *MEMORY[0x29EDCA608];
}

void sub_299300EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  __cxa_guard_abort(&qword_2A1460EF0);
  sub_299273B40(&a12);
  _Unwind_Resume(a1);
}

void *sub_299300F70(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    result[1] = 1;
    (*(*result + 528))(result, 8, "candidate to be added to top", 1);

    return sub_2992ABB04(a1, a2, 0);
  }

  return result;
}

uint64_t sub_299301008(void *a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t a6)
{
  v116[25] = *MEMORY[0x29EDCA608];
  if (*(a3 + 48) == *(a3 + 56) || !*(a2 + 8))
  {
LABEL_46:
    v39 = 0;
    goto LABEL_47;
  }

  v7 = a3;
  v8 = sub_2993652F8(8u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = CFStringCreateWithCharacters(0, *a2, *(a2 + 8));
    __p = v9;
    v10 = sub_2993652F8(8u);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      if (!v9)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    *buf = 136315394;
    *&buf[4] = "stabilizeCandidates";
    v111 = 2112;
    *v112 = v9;
    _os_log_debug_impl(&dword_29918C000, v10, OS_LOG_TYPE_DEBUG, "[%s] raw analysis string: %@", buf, 0x16u);
    if (v9)
    {
LABEL_6:
      CFRelease(v9);
    }
  }

LABEL_7:
  if (*a4 == a4[1])
  {
    v11 = 0;
  }

  else
  {
    v11 = **a4;
  }

  v12 = *(a2 + 8);
  v96 = v7;
  if (v12 <= 1)
  {
    v13 = sub_2993652F8(8u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "updateBestAnalysis";
      _os_log_debug_impl(&dword_29918C000, v13, OS_LOG_TYPE_DEBUG, "[%s] reset best analysis for short input", buf, 0xCu);
    }

    v14 = a1;
    sub_29930008C(a1 + 2, 0);
    goto LABEL_32;
  }

  v15 = a1[2];
  v98 = v11;
  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = *a2;
  v17 = *(v15 + 23);
  if ((v17 & 0x8000000000000000) != 0)
  {
    v17 = *(v15 + 8);
    if (v17)
    {
      v18 = *v15;
      goto LABEL_20;
    }

LABEL_25:
    if (!a6)
    {
      if (v98)
      {
        v25 = (*(*v98 + 56))(v98);
        if (CFStringGetLength(v25) < *(a2 + 8))
        {
          v26 = sub_2993652F8(8u);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v95 = (*(*v98 + 24))(v98);
            *buf = 136315394;
            *&buf[4] = "updateBestAnalysis";
            v111 = 2112;
            *v112 = v95;
            _os_log_debug_impl(&dword_29918C000, v26, OS_LOG_TYPE_DEBUG, "[%s] updating best analysis from history: %@", buf, 0x16u);
          }

          v27 = *a1;
          operator new();
        }
      }

      v86 = sub_2993652F8(8u);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "updateBestAnalysis";
        _os_log_debug_impl(&dword_29918C000, v86, OS_LOG_TYPE_DEBUG, "[%s] updating best analysis from converted analysis string", buf, 0xCu);
      }

      v104[0] = 0;
      sub_299216DAC(a2, v104, 0, (**a1 >> 30) & 1, buf);
      operator new();
    }

    goto LABEL_26;
  }

  if (!*(v15 + 23))
  {
    goto LABEL_25;
  }

  v18 = a1[2];
LABEL_20:
  v19 = 0;
  v21 = *(v15 + 24);
  v20 = *(v15 + 32);
  v22 = v21;
  while (v17 > v12 || memcmp(v18, v16, 2 * v17))
  {
    if (0xD37A6F4DE9BD37A7 * ((v20 - v21) >> 3) == v19)
    {
      goto LABEL_25;
    }

    v23 = *(*(v22 + 104) - 10);
    v17 -= v23;
    v18 += 2 * v23;
    ++v19;
    v22 += 184;
  }

  if (a6 && v19)
  {
LABEL_26:
    v24 = *a1;
    operator new();
  }

  if (v19)
  {
    if (v22 != v20)
    {
      do
      {
        sub_29922323C(v21, v22);
        sub_29922323C(v21 + 24, (v22 + 24));
        sub_29922323C(v21 + 48, (v22 + 48));
        sub_29922323C(v21 + 72, (v22 + 72));
        sub_29922323C(v21 + 96, (v22 + 96));
        v87 = *(v22 + 120);
        *(v21 + 128) = *(v22 + 128);
        *(v21 + 120) = v87;
        sub_29927E3A0(v21 + 136, (v22 + 136));
        v88 = *(v22 + 176);
        *(v21 + 180) = *(v22 + 180);
        *(v21 + 176) = v88;
        v21 += 184;
        v22 += 184;
      }

      while (v22 != v20);
      v20 = *(v15 + 32);
    }

    v7 = v96;
    while (v20 != v21)
    {
      v20 -= 184;
      sub_299305204(v20);
    }

    *(v15 + 32) = v21;
    v15 = a1[2];
    v16 = *a2;
    v12 = *(a2 + 8);
  }

  else
  {
    v7 = v96;
  }

  sub_29930003C(v15, v16, v12);
  v91 = sub_2993652F8(8u);
  v14 = a1;
  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "updateBestAnalysis";
    v111 = 2048;
    *v112 = v19;
    _os_log_debug_impl(&dword_29918C000, v91, OS_LOG_TYPE_DEBUG, "[%s] updating best analysis from previous best analysis (segment gap: %zu)", buf, 0x16u);
  }

LABEL_32:
  v28 = *(a2 + 8);
  if ((**v14 & 0x20) == 0)
  {
    if (!v28)
    {
      goto LABEL_44;
    }

    v29 = 0;
    v30 = 1;
    v31 = *a2;
    v32 = *(a2 + 8);
    do
    {
      v33 = *v31++;
      v34 = (v33 + 191);
      v35 = v33 + 223;
      if (((v33 & 0xFFDF) - 65) >= 0x1Au && v34 >= 0x1A && v35 > 0x19u)
      {
        break;
      }

      v29 = v30++ >= v28;
      --v32;
    }

    while (v32);
    if (v29)
    {
LABEL_44:
      v38 = sub_2993652F8(8u);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "stabilizeCandidates";
        _os_log_debug_impl(&dword_29918C000, v38, OS_LOG_TYPE_DEBUG, "[%s] Temporary Roman mode ", buf, 0xCu);
      }

      goto LABEL_46;
    }
  }

  v42 = *(*a2 + 2 * v28 - 2);
  if (v42 != 12289 && v42 != 65292)
  {
    v85 = 0;
    while (word_299414B9C[v85] != v42)
    {
      if (++v85 == 4)
      {
        if ((v42 - 12300) < 2 || (v42 - 65288) < 2)
        {
          break;
        }

        goto LABEL_59;
      }
    }
  }

  v44 = a1[2];
  if (!v44 || (sub_2993009D0(buf, a1, v44, a2), (v45 = *buf) == 0))
  {
LABEL_59:
    v106 = 0;
    sub_299216DAC(a2, &v106, 0, (**a1 >> 30) & 1, v104);
    if ((v105 & 0x80u) == 0)
    {
      v49 = v105;
    }

    else
    {
      v49 = v104[1];
    }

    if ((v105 & 0x80u) == 0)
    {
      v50 = v104;
    }

    else
    {
      v50 = v104[0];
    }

    if (a6 && ((*(*a6 + 544))(a6), (v52 = v51) != 0))
    {
      (*(*a6 + 552))(a6);
      v97 = 0;
      if (!v49)
      {
        goto LABEL_100;
      }

      v54 = v53;
      if (v49 <= v53)
      {
        goto LABEL_100;
      }

      v55 = *(v96 + 48);
      v56 = *(v96 + 56);
      if (v55 != v56)
      {
        while (1)
        {
          if (((*(**v55 + 88))() & 1) == 0 && (*(**v55 + 408))(*v55) != 1)
          {
            v97 = *v55;
            v57 = (*(**v55 + 544))();
            v59 = v58;
            v60 = (*(*a6 + 544))(a6);
            if (v59 >= v61)
            {
              v62 = v57 || v61 == 0;
              if (v62 && !memcmp(v57, v60, 2 * v61))
              {
                v63 = *((*(*v97 + 544))(v97) + 2 * v52);
                v64 = (v63 - 12353) < 0x56 || v63 == 12540;
                if (!v64 && v63 != 12316)
                {
                  break;
                }

                v66 = *(v50 + v54);
                if ((v66 - 12353) >= 0x56 && v66 != 12540 && v66 != 12316)
                {
                  break;
                }

                if (v63 == v66)
                {
                  break;
                }
              }
            }
          }

          if (++v55 == v56)
          {
            goto LABEL_99;
          }
        }

LABEL_100:
        if (v106 < 1)
        {
          goto LABEL_110;
        }

        v70 = a1[2];
        if (!v70)
        {
          goto LABEL_110;
        }

        if (!a6 && v97)
        {
          v71 = sub_2993000F4(a1[2]);
          if ((v71 - (*(*v97 + 112))(v97)) > 4999)
          {
            goto LABEL_110;
          }

          v70 = a1[2];
        }

        sub_2993009D0(&__p, a1, v70, a2);
        v72 = __p;
        if (__p)
        {
          v73 = sub_2993652F8(8u);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
          {
            v92 = sub_2993000F4(a1[2]);
            v93 = v97;
            if (v97)
            {
              v93 = (*(*v97 + 112))(v97);
            }

            v94 = "enabled";
            *buf = 136315906;
            *&buf[4] = "stabilizeCandidates";
            v111 = 1024;
            *v112 = v92;
            if (!a6)
            {
              v94 = "disabled";
            }

            *&v112[4] = 1024;
            *&v112[6] = v93;
            *v113 = 2080;
            *&v113[2] = v94;
            _os_log_debug_impl(&dword_29918C000, v73, OS_LOG_TYPE_DEBUG, "[%s] there is incomplete romaji and best analysis(weight:%d) can be trusted over top candidate(weight:%d) when truncated input is %s", buf, 0x22u);
          }

          v103 = v72;
          sub_299300F70(v96, &v103);
          v74 = v103;
          v103 = 0;
          if (v74)
          {
            (*(*v74 + 16))(v74);
          }

          v39 = 1;
LABEL_157:
          if (v105 < 0)
          {
            operator delete(v104[0]);
          }

          goto LABEL_47;
        }

LABEL_110:
        v75 = sub_2993652F8(8u);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG) && *(a5 + 56) != *(a5 + 48))
        {
          v76 = 0;
          v77 = *MEMORY[0x29EDC9528];
          v78 = *(MEMORY[0x29EDC9528] + 64);
          v79 = *(MEMORY[0x29EDC9528] + 72);
          do
          {
            sub_2991D7954(buf);
            v80 = sub_2991C0E9C(&v112[2], "Last-bunsetsu candidate #", 25);
            v81 = v76 + 1;
            MEMORY[0x29C29BD60](v80, v76 + 1);
            v82 = *(*(a5 + 48) + 8 * v76);
            sub_29927989C(buf, &__p);
            if (v109 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            (*(*v82 + 528))(v82, 8, p_p, 1);
            if (v109 < 0)
            {
              operator delete(__p);
            }

            *buf = v77;
            *&buf[*(v77 - 24)] = v78;
            *&v112[2] = v79;
            *v113 = MEMORY[0x29EDC9570] + 16;
            if (v115 < 0)
            {
              operator delete(v114);
            }

            *v113 = MEMORY[0x29EDC9568] + 16;
            std::locale::~locale(&v113[8]);
            std::iostream::~basic_iostream();
            MEMORY[0x29C29BF00](v116);
            v76 = v81;
          }

          while (v81 < (*(a5 + 56) - *(a5 + 48)) >> 3);
        }

        if (v97)
        {
          (*(*v97 + 528))(v97, 8, "top candidate", 1);
          v84 = *a1;
          operator new();
        }

        v39 = 0;
        goto LABEL_157;
      }
    }

    else
    {
      v67 = sub_2992AB584(v7);
      if (v67 != -1)
      {
        v68 = *(*(v7 + 48) + 8 * v67);
        if (v68)
        {
          if ((*(*v68 + 88))(v68))
          {
            v69 = 0;
          }

          else
          {
            v69 = v68;
          }

          v97 = v69;
          goto LABEL_100;
        }
      }
    }

LABEL_99:
    v97 = 0;
    goto LABEL_100;
  }

  v46 = sub_29927363C((v7 + 8), buf);
  if (!v46 || (v47 = v46[3], v47 == -1) || (v48 = *(*(v7 + 48) + 8 * v47), (*(*v48 + 408))(v48)))
  {
    (*(*v45 + 16))(v45);
    goto LABEL_59;
  }

  v89 = sub_2993652F8(8u);
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "stabilizeCandidates";
    _os_log_debug_impl(&dword_29918C000, v89, OS_LOG_TYPE_DEBUG, "[%s] candidate has a punctuation, using best analysis", buf, 0xCu);
  }

  v107 = v45;
  sub_299300F70(v7, &v107);
  v90 = v107;
  v107 = 0;
  if (v90)
  {
    (*(*v90 + 16))(v90);
  }

  v39 = 1;
LABEL_47:
  v40 = *MEMORY[0x29EDCA608];
  return v39;
}

void sub_299304A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  __cxa_guard_abort(&qword_2A1460EE0);
  sub_299219AB4((v56 - 144), 0);
  if (a56 < 0)
  {
    operator delete(__p);
  }

  a34 = &a37;
  sub_29927255C(&a34);
  sub_29930008C(&a40, 0);
  sub_29930008C(&a41, 0);
  if (a48 < 0)
  {
    operator delete(a43);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299304F6C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_299304FE8(result, a4);
  }

  return result;
}

void sub_299304FCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_299304FE8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x199999999999999ALL)
  {
    sub_299305034(a2);
  }

  sub_299212A8C();
}

void sub_299305034(unint64_t a1)
{
  if (a1 < 0x199999999999999ALL)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_299305088(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_299305154(result, a4);
  }

  return result;
}

void sub_299305154(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    sub_2993051A8(a2);
  }

  sub_299212A8C();
}

void sub_2993051A8(unint64_t a1)
{
  if (a1 < 0x1642C8590B21643)
  {
    operator new();
  }

  sub_29919600C();
}

void sub_299305204(uint64_t a1)
{
  sub_29921ED28(a1 + 136);
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;

    operator delete(v6);
  }
}

void sub_299305294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = 0;
    do
    {
      v6 = a3 + v5;
      v7 = a1 + v5;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = *(a1 + v5);
      *(v6 + 16) = *(a1 + v5 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 24) = *(a1 + v5 + 24);
      *(v6 + 40) = *(a1 + v5 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 48) = *(a1 + v5 + 48);
      *(v6 + 64) = *(a1 + v5 + 64);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 72) = *(a1 + v5 + 72);
      *(v6 + 88) = *(a1 + v5 + 88);
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      *(v6 + 96) = *(a1 + v5 + 96);
      *(v6 + 112) = *(a1 + v5 + 112);
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      v8 = *(a1 + v5 + 120);
      *(v6 + 128) = *(a1 + v5 + 128);
      *(v6 + 120) = v8;
      v9 = *(a1 + v5 + 136);
      *(v7 + 136) = 0;
      *(v6 + 136) = v9;
      v10 = *(a1 + v5 + 152);
      *(v6 + 144) = *(a1 + v5 + 144);
      *(a1 + v5 + 144) = 0;
      *(a3 + v5 + 152) = v10;
      v11 = *(a1 + v5 + 160);
      *(v6 + 160) = v11;
      *(v6 + 168) = *(a1 + v5 + 168);
      if (v11)
      {
        v12 = *(v10 + 8);
        v13 = *(v6 + 144);
        if ((v13 & (v13 - 1)) != 0)
        {
          if (v12 >= v13)
          {
            v12 %= v13;
          }
        }

        else
        {
          v12 &= v13 - 1;
        }

        *(v9 + 8 * v12) = a3 + v5 + 152;
        *(a1 + v5 + 152) = 0;
        *(a1 + v5 + 160) = 0;
      }

      v14 = *(v7 + 176);
      *(v6 + 180) = *(v7 + 180);
      *(v6 + 176) = v14;
      v5 += 184;
    }

    while (a1 + v5 != a2);
    do
    {
      sub_299305204(v4);
      v4 += 184;
    }

    while (v4 != a2);
  }
}

uint64_t sub_299305424(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 184;
    sub_299305204(i - 184);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_299305474(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_299304F6C(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 1));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_299215EC0(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 1);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_299215EC0(a1 + 48, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 1);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_299215EC0(a1 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 1);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_299304F6C(a1 + 96, *(a2 + 96), *(a2 + 104), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 104) - *(a2 + 96)) >> 1));
  v4 = *(a2 + 120);
  v5 = *(a2 + 128);
  *(a1 + 136) = 0u;
  *(a1 + 128) = v5;
  *(a1 + 120) = v4;
  *(a1 + 152) = 0u;
  *(a1 + 168) = *(a2 + 168);
  sub_2992157F8(a1 + 136, *(a2 + 144));
  for (i = *(a2 + 152); i; i = *i)
  {
    v7 = i[2];
    v8 = *(a1 + 144);
    if (!*&v8)
    {
      goto LABEL_18;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = i[2];
      if (*&v8 <= v7)
      {
        v10 = v7 % *&v8;
      }
    }

    else
    {
      v10 = (*&v8 - 1) & v7;
    }

    v11 = *(*(a1 + 136) + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        break;
      }

      if (v9.u32[0] > 1uLL)
      {
        if (v13 >= *&v8)
        {
          v13 %= *&v8;
        }
      }

      else
      {
        v13 &= *&v8 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_18;
      }

LABEL_17:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    if (v12[2] != v7)
    {
      goto LABEL_17;
    }
  }

  v14 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v14;
  return a1;
}

void sub_2993057B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, void **a11, void **a12)
{
  sub_29921ED28(v13);
  v15 = *a9;
  if (*a9)
  {
    *(v12 + 104) = v15;
    operator delete(v15);
  }

  v16 = *a10;
  if (*a10)
  {
    *(v12 + 80) = v16;
    operator delete(v16);
  }

  v17 = *a11;
  if (*a11)
  {
    *(v12 + 56) = v17;
    operator delete(v17);
  }

  v18 = *a12;
  if (*a12)
  {
    *(v12 + 32) = v18;
    operator delete(v18);
  }

  v19 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void sub_2993058D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29927255C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2993058F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      sub_299305474(a3, v5);
      v5 += 184;
      a3 += 184;
      v6 -= 184;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_299305954(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 184;
    do
    {
      sub_299305204(v4);
      v4 -= 184;
      v2 += 184;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_299305A18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299305A34(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v5 = a1;
  v6 = 0;
  v7 = 0x7FFFFFFF;
  do
  {
    if ((*(**v5 + 408))(*v5) != 1)
    {
      v8 = (*(**v5 + 544))(*v5);
      v10 = v9;
      v11 = *(a3 + 72);
      v12 = v11 ? *(*(a3 + 104) - 6) : 0;
      if (v7 > (*(**v5 + 112))() && v10 >= v12)
      {
        if (v8)
        {
          v14 = 1;
        }

        else
        {
          v14 = v12 == 0;
        }

        if (v14 && !memcmp(v8, v11, 2 * v12))
        {
          v7 = (*(**v5 + 112))();
          v6 = *v5;
        }
      }
    }

    ++v5;
  }

  while (v5 != a2);
  return v6;
}

uint64_t sub_299305BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 88);
  *(a1 + 8) = a3;
  *(a1 + 16) = v5;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 136) = a4;
  *a1 = &unk_2A1F6F838;
  *(a1 + 144) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  sub_2992D6CE0((a1 + 200), a2);
  sub_29920D17C((a1 + 168), 0xAuLL);
  return a1;
}

void sub_299305C4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992D6CA8((v2 + 208), 0);
  v4 = *(v2 + 168);
  if (v4)
  {
    *(v2 + 176) = v4;
    operator delete(v4);
  }

  sub_2992B6C08(va);
  sub_2992B51FC(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_299305C90(uint64_t a1)
{
  sub_29921FB44((a1 + 144));
  *(a1 + 192) = 0;

  return sub_29921FA70(a1);
}

void sub_299305CD0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (a1 + 48);
  if (*(a1 + 48) != *(a1 + 56))
  {
    if (*(a2 + 64) == 1 || (v7 = *(a1 + 88), v7 != *(a1 + 80)) && *(v7 - 4) == 2)
    {
      sub_2993080E4((a1 + 144));
      *(a1 + 144) = *(a1 + 48);
      *(a1 + 160) = *(a1 + 64);
      v6[1] = 0;
      v6[2] = 0;
      *v6 = 0;
      *(a1 + 192) = 0;
      sub_29921FA70(a1);
    }
  }

  v8 = *(a1 + 32);
  if ((v8 - *(a1 + 24)) >= 5)
  {
    v9 = *(a1 + 80);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 88) - v9) >> 3) >= 2)
    {
      v10 = *(a1 + 192);
      if (v10)
      {
        if ((*(v9 + 8 * ((*(a1 + 88) - v9) >> 3) - 8) & 1) == 0)
        {
          *(v8 - 4) = v10;
        }
      }
    }
  }

  sub_29921FDC8(a1, a2, a3);
}

uint64_t sub_299305DC8()
{
  MEMORY[0x2A1C7C4A8]();
  v1 = v0;
  v412 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1460EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460EF8))
  {
    sub_2991C6CA8(__p, "gh");
    v13 = 1;
    sub_2991C6CA8(v14, "gy");
    v15 = 2;
    sub_2991C6CA8(v16, "gt");
    v17 = 3;
    sub_2991C6CA8(v18, "fg");
    v19 = 4;
    sub_2991C6CA8(v20, "ft");
    v21 = 5;
    sub_2991C6CA8(v22, "fr");
    v23 = 6;
    sub_2991C6CA8(v24, "dr");
    v25 = 7;
    sub_2991C6CA8(v26, "de");
    v27 = 8;
    sub_2991C6CA8(v28, "se");
    v29 = 9;
    sub_2991C6CA8(v30, "sw");
    v31 = 10;
    sub_2991C6CA8(v32, "aw");
    v33 = 11;
    sub_2991C6CA8(v34, "aq");
    v35 = 12;
    sub_2991C6CA8(v36, "ws");
    v37 = 13;
    sub_2991C6CA8(v38, "ed");
    v39 = 14;
    sub_2991C6CA8(v40, "rd");
    v41 = 15;
    sub_2991C6CA8(v42, "rf");
    v43 = 16;
    sub_2991C6CA8(v44, "tf");
    v45 = 17;
    sub_2991C6CA8(v46, "tg");
    v47 = 18;
    sub_2991C6CA8(v48, "yg");
    v49 = 19;
    sub_2991C6CA8(v50, "yh");
    v51 = 20;
    sub_2991C6CA8(v52, "yu");
    v53 = 21;
    sub_2991C6CA8(v54, "uh");
    v55 = 22;
    sub_2991C6CA8(v56, "uj");
    v57 = 23;
    sub_2991C6CA8(v58, "iu");
    v59 = 24;
    sub_2991C6CA8(v60, "ij");
    v61 = 25;
    sub_2991C6CA8(v62, "io");
    v63 = 26;
    sub_2991C6CA8(v64, "oi");
    v65 = 27;
    sub_2991C6CA8(v66, "ik");
    v67 = 28;
    sub_2991C6CA8(v68, "ju");
    v69 = 29;
    sub_2991C6CA8(v70, "hu");
    v71 = 30;
    sub_2991C6CA8(v72, "hy");
    v73 = 31;
    sub_2991C6CA8(v74, "gf");
    v75 = 32;
    sub_2991C6CA8(v76, "fd");
    v77 = 33;
    sub_2991C6CA8(v78, "df");
    v79 = 34;
    sub_2991C6CA8(v80, "ds");
    v81 = 35;
    sub_2991C6CA8(v82, "er");
    v83 = 36;
    sub_2991C6CA8(v84, "xc");
    v85 = 37;
    sub_2991C6CA8(v86, "ty");
    v87 = 38;
    sub_2991C6CA8(v88, "yt");
    v89 = 39;
    sub_2991C6CA8(v90, "uy");
    v91 = 40;
    sub_2991C6CA8(v92, "ui");
    v93 = 41;
    sub_2991C6CA8(v94, "tr");
    v95 = 42;
    sub_2991C6CA8(v96, "rt");
    v97 = 43;
    sub_2991C6CA8(v98, "re");
    v99 = 44;
    sub_2991C6CA8(v100, "ew");
    v101 = 45;
    sub_2991C6CA8(v102, "es");
    v103 = 46;
    sub_2991C6CA8(v104, "sd");
    v105 = 47;
    sub_2991C6CA8(v106, "xd");
    v107 = 48;
    sub_2991C6CA8(v108, "xz");
    v109 = 49;
    sub_2991C6CA8(v110, "cx");
    v111 = 50;
    sub_2991C6CA8(v112, "cf");
    v113 = 51;
    sub_2991C6CA8(v114, "fc");
    v115 = 52;
    sub_2991C6CA8(v116, "gv");
    v117 = 53;
    sub_2991C6CA8(v118, "hg");
    v119 = 54;
    sub_2991C6CA8(v120, "hj");
    v121 = 55;
    sub_2991C6CA8(v122, "jh");
    v123 = 56;
    sub_2991C6CA8(v124, "hb");
    v125 = 57;
    sub_2991C6CA8(v126, "bn");
    v127 = 58;
    sub_2991C6CA8(v128, "nb");
    v129 = 59;
    sub_2991C6CA8(v130, "bh");
    v131 = 60;
    sub_2991C6CA8(v132, "sa");
    v133 = 61;
    sub_2991C6CA8(v134, "as");
    v135 = 62;
    sub_2991C6CA8(v136, "vg");
    v137 = 63;
    sub_2991C6CA8(v138, "vb");
    v139 = 64;
    sub_2991C6CA8(v140, "we");
    v141 = 65;
    sub_2991C6CA8(v142, "sz");
    v143 = 66;
    sub_2991C6CA8(v144, "zs");
    v145 = 67;
    sub_2991C6CA8(v146, "cv");
    v147 = 68;
    sub_2991C6CA8(v148, "vc");
    v149 = 69;
    sub_2991C6CA8(v150, "bv");
    v151 = 70;
    sub_2991C6CA8(v152, "dx");
    v153 = 71;
    sub_2991C6CA8(v154, "op");
    v155 = 72;
    sub_2991C6CA8(v156, "lo");
    v157 = 73;
    sub_2991C6CA8(v158, "lk");
    v159 = 74;
    sub_2991C6CA8(v160, "kl");
    v161 = 75;
    sub_2991C6CA8(v162, "km");
    v163 = 76;
    sub_2991C6CA8(v164, "mn");
    v165 = 77;
    sub_2991C6CA8(v166, "nm");
    v167 = 78;
    sub_2991C6CA8(v168, "zx");
    v169 = 79;
    sub_2991C6CA8(v170, "ok");
    v171 = 80;
    sub_2991C6CA8(v172, "ko");
    v173 = 81;
    sub_2991C6CA8(v174, "kj");
    v175 = 82;
    sub_2991C6CA8(v176, "jk");
    v177 = 83;
    sub_2991C6CA8(v178, "jn");
    v179 = 84;
    sub_2991C6CA8(v180, "nj");
    v181 = 85;
    sub_2991C6CA8(v182, "az");
    v183 = 86;
    sub_2991C6CA8(v184, "ji");
    v185 = 87;
    sub_2991C6CA8(v186, "po");
    v187 = 88;
    sub_2991C6CA8(v188, "mk");
    v189 = 89;
    sub_2991C6CA8(v190, "wq");
    v191 = 90;
    sub_2991C6CA8(v192, "qw");
    v193 = 91;
    sub_2991C6CA8(v194, "ol");
    v195 = 92;
    sub_2991C6CA8(v196, "qa");
    v197 = 93;
    sub_2991C6CA8(v198, "ki");
    v199 = 94;
    sub_2991C6CA8(v200, "wa");
    v201 = 95;
    sub_2991C6CA8(v202, "za");
    v203 = 96;
    sub_2991C6CA8(v204, "lp");
    v205 = 97;
    sub_2991C6CA8(v206, "ml");
    v207 = 98;
    sub_2991C6CA8(v208, "lm");
    v209 = 99;
    sub_2991C6CA8(v210, "pl");
    v211 = 100;
    sub_2991C6CA8(v212, "GH");
    v213 = 101;
    sub_2991C6CA8(v214, "GY");
    v215 = 102;
    sub_2991C6CA8(v216, "GT");
    v217 = 103;
    sub_2991C6CA8(v218, "FG");
    v219 = 104;
    sub_2991C6CA8(v220, "FT");
    v221 = 105;
    sub_2991C6CA8(v222, "FR");
    v223 = 106;
    sub_2991C6CA8(v224, "DR");
    v225 = 107;
    sub_2991C6CA8(v226, "DE");
    v227 = 108;
    sub_2991C6CA8(v228, "SE");
    v229 = 109;
    sub_2991C6CA8(v230, "SW");
    v231 = 110;
    sub_2991C6CA8(v232, "AW");
    v233 = 111;
    sub_2991C6CA8(v234, "AQ");
    v235 = 112;
    sub_2991C6CA8(v236, "WS");
    v237 = 113;
    sub_2991C6CA8(v238, "ED");
    v239 = 114;
    sub_2991C6CA8(v240, "RD");
    v241 = 115;
    sub_2991C6CA8(v242, "RF");
    v243 = 116;
    sub_2991C6CA8(v244, "TF");
    v245 = 117;
    sub_2991C6CA8(v246, "TG");
    v247 = 118;
    sub_2991C6CA8(v248, "YG");
    v249 = 119;
    sub_2991C6CA8(v250, "YH");
    v251 = 120;
    sub_2991C6CA8(v252, "YU");
    v253 = 121;
    sub_2991C6CA8(v254, "UH");
    v255 = 122;
    sub_2991C6CA8(v256, "UJ");
    v257 = 123;
    sub_2991C6CA8(v258, "IU");
    v259 = 124;
    sub_2991C6CA8(v260, "IJ");
    v261 = 125;
    sub_2991C6CA8(v262, "IO");
    v263 = 126;
    sub_2991C6CA8(v264, "OI");
    v265 = 127;
    sub_2991C6CA8(v266, "IK");
    v267 = 128;
    sub_2991C6CA8(v268, "JU");
    v269 = 129;
    sub_2991C6CA8(v270, "HU");
    v271 = 130;
    sub_2991C6CA8(v272, "HY");
    v273 = 131;
    sub_2991C6CA8(v274, "GF");
    v275 = 132;
    sub_2991C6CA8(v276, "FD");
    v277 = 133;
    sub_2991C6CA8(v278, "DF");
    v279 = 134;
    sub_2991C6CA8(v280, "DS");
    v281 = 135;
    sub_2991C6CA8(v282, "ER");
    v283 = 136;
    sub_2991C6CA8(v284, "XC");
    v285 = 137;
    sub_2991C6CA8(v286, "TY");
    v287 = 138;
    sub_2991C6CA8(v288, "YT");
    v289 = 139;
    sub_2991C6CA8(v290, "UY");
    v291 = 140;
    sub_2991C6CA8(v292, "UI");
    v293 = 141;
    sub_2991C6CA8(v294, "TR");
    v295 = 142;
    sub_2991C6CA8(v296, "RT");
    v297 = 143;
    sub_2991C6CA8(v298, "RE");
    v299 = 144;
    sub_2991C6CA8(v300, "EW");
    v301 = 145;
    sub_2991C6CA8(v302, "ES");
    v303 = 146;
    sub_2991C6CA8(v304, "SD");
    v305 = 147;
    sub_2991C6CA8(v306, "XD");
    v307 = 148;
    sub_2991C6CA8(v308, "XZ");
    v309 = 149;
    sub_2991C6CA8(v310, "CX");
    v311 = 150;
    sub_2991C6CA8(v312, "CF");
    v313 = 151;
    sub_2991C6CA8(v314, "FC");
    v315 = 152;
    sub_2991C6CA8(v316, "GV");
    v317 = 153;
    sub_2991C6CA8(v318, "HG");
    v319 = 154;
    sub_2991C6CA8(v320, "HJ");
    v321 = 155;
    sub_2991C6CA8(v322, "JH");
    v323 = 156;
    sub_2991C6CA8(v324, "HB");
    v325 = 157;
    sub_2991C6CA8(v326, "BN");
    v327 = 158;
    sub_2991C6CA8(v328, "NB");
    v329 = 159;
    sub_2991C6CA8(v330, "BH");
    v331 = 160;
    sub_2991C6CA8(v332, "SA");
    v333 = 161;
    sub_2991C6CA8(v334, "AS");
    v335 = 162;
    sub_2991C6CA8(v336, "VG");
    v337 = 163;
    sub_2991C6CA8(v338, "VB");
    v339 = 164;
    sub_2991C6CA8(v340, "WE");
    v341 = 165;
    sub_2991C6CA8(v342, "SZ");
    v343 = 166;
    sub_2991C6CA8(v344, "ZS");
    v345 = 167;
    sub_2991C6CA8(v346, "CV");
    v347 = 168;
    sub_2991C6CA8(v348, "VC");
    v349 = 169;
    sub_2991C6CA8(v350, "BV");
    v351 = 170;
    sub_2991C6CA8(v352, "DX");
    v353 = 171;
    sub_2991C6CA8(v354, "OP");
    v355 = 172;
    sub_2991C6CA8(v356, "LO");
    v357 = 173;
    sub_2991C6CA8(v358, "LK");
    v359 = 174;
    sub_2991C6CA8(v360, "KL");
    v361 = 175;
    sub_2991C6CA8(v362, "KM");
    v363 = 176;
    sub_2991C6CA8(v364, "MN");
    v365 = 177;
    sub_2991C6CA8(v366, "NM");
    v367 = 178;
    sub_2991C6CA8(v368, "ZX");
    v369 = 179;
    sub_2991C6CA8(v370, "OK");
    v371 = 180;
    sub_2991C6CA8(v372, "KO");
    v373 = 181;
    sub_2991C6CA8(v374, "KJ");
    v375 = 182;
    sub_2991C6CA8(v376, "JK");
    v377 = 183;
    sub_2991C6CA8(v378, "JN");
    v379 = 184;
    sub_2991C6CA8(v380, "NJ");
    v381 = 185;
    sub_2991C6CA8(v382, "AZ");
    v383 = 186;
    sub_2991C6CA8(v384, "JI");
    v385 = 187;
    sub_2991C6CA8(v386, "PO");
    v387 = 188;
    sub_2991C6CA8(v388, "MK");
    v389 = 189;
    sub_2991C6CA8(v390, "WQ");
    v391 = 190;
    sub_2991C6CA8(v392, "QW");
    v393 = 191;
    sub_2991C6CA8(v394, "OL");
    v395 = 192;
    sub_2991C6CA8(v396, "QA");
    v397 = 193;
    sub_2991C6CA8(v398, "KI");
    v399 = 194;
    sub_2991C6CA8(v400, "WA");
    v401 = 195;
    sub_2991C6CA8(v402, "ZA");
    v403 = 196;
    sub_2991C6CA8(v404, "LP");
    v405 = 197;
    sub_2991C6CA8(v406, "ML");
    v407 = 198;
    sub_2991C6CA8(v408, "LM");
    v409 = 199;
    sub_2991C6CA8(v410, "PL");
    *&v411[1] = 200;
    sub_2992B6CC4(qword_2A1460F00, __p, 200);
    v7 = v411;
    v8 = -6400;
    v9 = v411;
    do
    {
      v10 = *v9;
      v9 -= 32;
      if (v10 < 0)
      {
        operator delete(*(v7 - 23));
      }

      v7 = v9;
      v8 += 32;
    }

    while (v8);
    __cxa_atexit(sub_2992B66A4, qword_2A1460F00, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460EF8);
  }

  sub_2991C6CA8(__p, v1);
  v2 = sub_29921517C(qword_2A1460F00, __p);
  v3 = v2;
  if ((v12 & 0x80000000) == 0)
  {
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = -1;
    goto LABEL_8;
  }

  operator delete(__p[0]);
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_2991C6CA8(__p, v1);
  v4 = *(sub_2992B705C(qword_2A1460F00, __p) + 10);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_8:
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_2993077F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v19 = (v17 + 6391);
  v20 = -6400;
  v21 = v19;
  while (1)
  {
    v22 = *v21;
    v21 -= 32;
    if (v22 < 0)
    {
      operator delete(*(v19 - 23));
    }

    v19 = v21;
    v20 += 32;
    if (!v20)
    {
      __cxa_guard_abort(&qword_2A1460EF8);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_299307BA4(uint64_t result, char *a2, uint64_t a3, int a4)
{
  *(result + 192) = a4;
  if (a3)
  {
    v4 = a3;
    do
    {
      result = __toupper(*a2);
      *a2++ = result;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_299307BE8(uint64_t a1)
{
  if (*(a1 + 144) != *(a1 + 152))
  {
    v2 = (a1 + 48);
    if (*(a1 + 48) != *(a1 + 56))
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        v4 = *(v3 + 32);
        if ((v4 - 10) >= 0xFFFFFFFFFFFFFFF8)
        {
          v54 = 0uLL;
          v55 = 0;
          sub_2993080E4(&v54);
          v54 = *(a1 + 48);
          v55 = *(a1 + 64);
          *v2 = 0u;
          v2[1] = 0u;
          v5 = *(a1 + 144);
          v43 = *(a1 + 152);
          if (v5 != v43)
          {
            v6 = v4 - 1;
            v42 = 1 - v4;
            do
            {
              v7 = *v5;
              v8 = v5[1];
              v9 = v8 - *v5;
              if (v9 >= v6)
              {
                if (v9 - v6 >= v9)
                {
                  v13 = 0;
                }

                else
                {
                  v14 = *(a1 + 168);
                  v15 = &v7[v9];
                  v16 = v42;
                  do
                  {
                    *v14++ = v15[v16] + 1000;
                    v17 = __CFADD__(v16++, 1);
                  }

                  while (!v17);
                  v13 = v6;
                }
              }

              else
              {
                v10 = *(a1 + 168);
                *v10 = 1;
                if (v7 == v8)
                {
                  v13 = 1;
                }

                else
                {
                  v11 = 1;
                  do
                  {
                    v12 = *v7++;
                    v13 = v11 + 1;
                    v10[v11++] = v12 + 1000;
                  }

                  while (v7 != v8);
                }
              }

              v45 = *(&v54 + 1);
              v18 = v54;
              if (v54 != *(&v54 + 1))
              {
                v44 = v5;
                do
                {
                  v19 = *(v5 + 3) + *(v18 + 24);
                  v20 = *(a1 + 56);
                  if ((v20 - *(a1 + 48)) < 0x140 || v19 > *(v20 - 8))
                  {
                    __dst[0] = 0;
                    __dst[1] = 0;
                    v53 = 0;
                    sub_299215EC0(__dst, *v5, v5[1], v5[1] - *v5);
                    sub_2992F87C8(__dst, __dst[1], *v18, *(v18 + 8), (*(v18 + 8) - *v18) >> 1);
                    sub_299250EF0(&__src, 1uLL);
                    v21 = 0;
                    do
                    {
                      if (v21 >= (*(v18 + 8) - *v18) >> 1)
                      {
                        break;
                      }

                      v22 = *(*v18 + 2 * v21) + 1000;
                      v23 = (*(**(a1 + 8) + 40))(*(a1 + 8), v22, *(a1 + 168), v13 + v21);
                      v24 = *(sub_299235724(1u) + 8);
                      *(*(a1 + 168) + 4 * v13 + 4 * v21) = v22;
                      v25 = (*(**(a1 + 8) + 40))(*(a1 + 8), v22);
                      v26 = *(sub_299235724(1u) + 8);
                      v27 = v50;
                      if (v50 >= v51)
                      {
                        v29 = __src;
                        v30 = v50 - __src;
                        v31 = (v50 - __src) >> 2;
                        v32 = v31 + 1;
                        if ((v31 + 1) >> 62)
                        {
                          sub_299212A8C();
                        }

                        v33 = v51 - __src;
                        if ((v51 - __src) >> 1 > v32)
                        {
                          v32 = v33 >> 1;
                        }

                        v17 = v33 >= 0x7FFFFFFFFFFFFFFCLL;
                        v34 = 0x3FFFFFFFFFFFFFFFLL;
                        if (!v17)
                        {
                          v34 = v32;
                        }

                        if (v34)
                        {
                          sub_2992F86B0(&__src, v34);
                        }

                        *(4 * v31) = v22;
                        v28 = 4 * v31 + 4;
                        memcpy(0, v29, v30);
                        v35 = __src;
                        __src = 0;
                        v50 = v28;
                        v51 = 0;
                        if (v35)
                        {
                          operator delete(v35);
                        }
                      }

                      else
                      {
                        *v50 = v22;
                        v28 = (v27 + 4);
                      }

                      v50 = v28;
                      v19 = v19 + v23 * v24 - v25 * v26;
                      ++v21;
                    }

                    while (v6 != v21);
                    *__p = *__dst;
                    v47 = v53;
                    __dst[0] = 0;
                    __dst[1] = 0;
                    v53 = 0;
                    v48 = v19;
                    sub_299221AB0(a1, __p, 0xAuLL);
                    v5 = v44;
                    if (__p[0])
                    {
                      __p[1] = __p[0];
                      operator delete(__p[0]);
                    }

                    if (__src)
                    {
                      v50 = __src;
                      operator delete(__src);
                    }

                    if (__dst[0])
                    {
                      __dst[1] = __dst[0];
                      operator delete(__dst[0]);
                    }
                  }

                  v18 += 32;
                }

                while (v18 != v45);
              }

              v5 += 4;
            }

            while (v5 != v43);
            v36 = *(a1 + 48);
            v37 = *(a1 + 56);
            if (v36 != v37)
            {
              v38 = *(a1 + 72);
              do
              {
                v40 = *v36;
                v39 = v36[1];
                v36 += 4;
                v41 = (v39 - v40) >> 1;
                if (v38 <= v41)
                {
                  v38 = v41;
                }
              }

              while (v36 != v37);
              *(a1 + 72) = v38;
            }
          }

          __p[0] = &v54;
          sub_2992B6C08(__p);
        }
      }
    }
  }
}

void sub_299308010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  __p = &a25;
  sub_2992B6C08(&__p);
  _Unwind_Resume(a1);
}

void sub_299308080(uint64_t a1)
{
  sub_299308124(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993080E4(uint64_t *a1)
{
  if (*a1)
  {
    sub_29921FB44(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_299308124(uint64_t a1)
{
  sub_2992D6CA8((a1 + 208), 0);
  v2 = *(a1 + 168);
  if (v2)
  {
    *(a1 + 176) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 144);
  sub_2992B6C08(&v4);
  return sub_2992B51FC(a1);
}

uint64_t sub_299308180(uint64_t a1, const void *a2, CFTypeRef cf)
{
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *a1 = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    sub_299240D80(a1, a2);
  }

  if (cf)
  {
    sub_299229BC0(v5, cf);
  }

  sub_299308214(a1);
  return a1;
}

void sub_2993081E4(_Unwind_Exception *a1)
{
  sub_299274AE8(v1 + 2, 0);
  sub_299219AB4(v2, 0);
  sub_299229F00(v1, 0);
  _Unwind_Resume(a1);
}

void sub_299308214(const void **a1)
{
  v2 = sub_29930AF10();
  if (*v2 == 1 && (v2[9] & 4) != 0 && *a1)
  {
    v3 = *MEMORY[0x29EDB8ED8];
    v4 = MEMORY[0x29EDB9010];
    v5 = MEMORY[0x29EDB9020];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    sub_299274AE8(a1 + 2, Mutable);
    CFDictionarySetValue(a1[2], @"keys", *a1);
    v7 = CFDictionaryCreateMutable(v3, 0, v4, v5);
    CFDictionarySetValue(a1[2], @"log likelihoods", v7);
    if (v7)
    {
      CFRelease(v7);
    }
  }
}

void sub_2993082F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299215B18(va, 0);
  _Unwind_Resume(a1);
}

const void **sub_29930830C(const void **a1)
{
  sub_29930835C(a1);
  sub_299274AE8(a1 + 2, 0);
  sub_299219AB4(a1 + 1, 0);
  sub_299229F00(a1, 0);
  return a1;
}

void sub_29930835C(uint64_t a1)
{
  v2 = (a1 + 16);
  if (*(a1 + 16))
  {
    sub_2993083C0(a1);
  }

  sub_299274AE8(v2, 0);
  sub_299229F00(a1, 0);

  sub_299219AB4((a1 + 8), 0);
}

void sub_2993083C0(uint64_t a1)
{
  if (atomic_load_explicit(&qword_2A1460F30, memory_order_acquire) != -1)
  {
    error = &v13;
    p_error = &error;
    std::__call_once(&qword_2A1460F30, &p_error, sub_299308914);
  }

  v2 = *MEMORY[0x29EDB8ED8];
  v3 = qword_2A1460F28;
  Current = CFAbsoluteTimeGetCurrent();
  StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v2, v3, Current);
  v6 = CFStringCreateWithFormat(0, 0, @"/tmp/GeometryModel/%@-%@.plist", *(a1 + 8), StringWithAbsoluteTime);
  v7 = CFURLCreateWithFileSystemPath(0, v6, kCFURLPOSIXPathStyle, 0);
  error = 0;
  v8 = CFPropertyListCreateData(v2, *(a1 + 16), kCFPropertyListXMLFormat_v1_0, 0, &error);
  v9 = CFWriteStreamCreateWithFile(0, v7);
  if (v9)
  {
    v10 = v9;
    if (CFWriteStreamOpen(v9))
    {
      BytePtr = CFDataGetBytePtr(v8);
      Length = CFDataGetLength(v8);
      CFWriteStreamWrite(v10, BytePtr, Length);
      CFWriteStreamClose(v10);
    }

    CFRelease(v10);
  }

  CFRelease(StringWithAbsoluteTime);
  CFRelease(v6);
  CFRelease(v7);
  CFRelease(v8);
}

void sub_29930852C(const void **a1, const void *a2, const __CFString *a3)
{
  sub_29930835C(a1);
  if (a2)
  {
    if (a3)
    {
      v6 = CFGetTypeID(a2);
      if (v6 == CFArrayGetTypeID())
      {
        Length = CFStringGetLength(a3);
        if (Length == CFArrayGetCount(a2))
        {
          Mutable = CFArrayCreateMutable(0, Length, MEMORY[0x29EDB9000]);
          if (Length >= 1)
          {
            for (i = 0; i != Length; ++i)
            {
              CharacterAtIndex = CFStringGetCharacterAtIndex(a3, i);
              v11 = CharacterAtIndex;
              if ((CharacterAtIndex - 65) < 0x1A || (CharacterAtIndex - 12353) <= 0x52)
              {
                v13 = CFDataCreateMutable(0, 8);
                *bytes = v11;
                *&bytes[4] = 0;
                CFDataAppendBytes(v13, bytes, 8);
                CFArrayAppendValue(Mutable, v13);
                CFRelease(v13);
              }

              else
              {
                ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
                CFArrayAppendValue(Mutable, ValueAtIndex);
              }
            }
          }

          if (Mutable)
          {
            sub_299229F00(a1, Mutable);
            sub_299229BC0(a1 + 1, a3);
            sub_299308214(a1);
          }
        }
      }
    }
  }
}

const UInt8 *sub_299308694(CFArrayRef *a1, CFIndex a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v3 = *a1;
  if (!v3 || CFArrayGetCount(v3) <= a2)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*a1, a2);

  return CFDataGetBytePtr(ValueAtIndex);
}

const __CFArray *sub_2993086FC(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    result = CFArrayGetCount(result);
    if (result)
    {
      Count = CFArrayGetCount(v1);
      v3 = *MEMORY[0x29EDB8ED8];
      result = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
      if (Count >= 1)
      {
        theString = result;
        v19 = Count;
        v4 = 0;
        v20 = v1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
          if (ValueAtIndex)
          {
            v6 = ValueAtIndex;
            v7 = CFGetTypeID(ValueAtIndex);
            if (v7 == CFDataGetTypeID())
            {
              Length = CFDataGetLength(v6);
              if (Length)
              {
                v9 = Length;
                Mutable = CFStringCreateMutable(v3, 0);
                BytePtr = CFDataGetBytePtr(v6);
                if (v9 < 8)
                {
                  __assert_rtn("createStringFromGeometryData", "GeometryModel.cpp", 201, "numKeys > 0");
                }

                v12 = BytePtr;
                v13 = 0;
                v14 = v9 >> 3;
                do
                {
                  if (!*v12)
                  {
                    break;
                  }

                  if (v13)
                  {
                    v15 = @",";
                  }

                  else
                  {
                    v15 = @"{";
                  }

                  CFStringAppend(Mutable, v15);
                  v16 = CFStringCreateWithFormat(v3, 0, @"%C:%f", *v12, v12[1]);
                  CFStringAppend(Mutable, v16);
                  if (v16)
                  {
                    CFRelease(v16);
                  }

                  ++v13;
                  v12 += 2;
                }

                while (v14 != v13);
                if (CFStringGetLength(Mutable) <= 0)
                {
                  v17 = @"{0:0}";
                }

                else
                {
                  v17 = @"};";
                }

                CFStringAppend(Mutable, v17);
                Count = v19;
                v1 = v20;
                if (Mutable)
                {
                  CFStringAppend(theString, Mutable);
                  CFRelease(Mutable);
                }
              }
            }
          }

          ++v4;
        }

        while (v4 != Count);
        return theString;
      }
    }
  }

  return result;
}

void sub_2993088EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_299308914()
{
  System = CFLocaleGetSystem();
  qword_2A1460F28 = CFDateFormatterCreate(0, System, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetFormat(qword_2A1460F28, @"yyyy-MM-dd@HHmm.ssSS");

  return mkdir("/tmp/GeometryModel", 0x1C0u);
}

void sub_299308970(uint64_t *a1)
{
  v1 = *a1;
  v2 = LXAnalyzerCandidateCopySurface();
  sub_299276E1C(v2);
}

void sub_2993089C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

const void **sub_2993089D8(const void **a1, const void *a2, int a3, const void *a4)
{
  valuePtr = a3;
  *a1 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57F0], a2);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57E8], *MEMORY[0x29EDB8F00]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57C8], v8);
  if (a4)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDC57C0], a4);
  }

  v9 = LXAnalyzerCreate();
  sub_2992916A4(a1, v9);
  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return a1;
}

void sub_299308B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299274AE8(va, 0);
  sub_2992916A4(v3, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_299308B58(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return LXAnalyzerEnumerateCandidatesWithLattice();
  }

  return result;
}

void sub_299308BD8(uint64_t a1, const void *a2, _BYTE *a3)
{
  v7 = 0;
  v4 = *(a1 + 32);
  cf = 0;
  sub_299308E28(&cf, a2);
  v5 = *(v4 + 24);
  if (!v5)
  {
    sub_2991A2240();
  }

  (*(*v5 + 48))(v5, &cf, &v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7 == 1)
  {
    *a3 = v7;
  }
}

uint64_t sub_299308C88(void *a1, uint64_t a2)
{
  v2 = 0;
  if (a2 && *a1)
  {
    LXAnalyzerSetSupplementalLexicons();
    return 1;
  }

  return v2;
}

uint64_t sub_299308CE0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_299273DCC(result, a4);
  }

  return result;
}

void sub_299308D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_299212B90(&a9);
  _Unwind_Resume(a1);
}

char *sub_299308D68(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_29922C89C(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_299273ED8(v9);
  return v4;
}

void sub_299308E28(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    sub_299308E88(a1, cf);
  }
}

void sub_299308E88(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_299308ED8(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2A1F6F8C0;
  v4 = a1[39];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[46];
  a1[46] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[44];
  a1[44] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[43];
  a1[43] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = a1[42];
  a1[42] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = a1[41];
  a1[41] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  sub_29929266C(a1 + 38, 0, a3);

  return sub_299223F18(a1);
}

void sub_299309054(void *a1, uint64_t a2, uint64_t a3)
{
  sub_299308ED8(a1, a2, a3);

  JUMPOUT(0x29C29BFB0);
}

void sub_29930908C(uint64_t a1)
{
  if (qword_2A1460F58 != -1)
  {
    dispatch_once(&qword_2A1460F58, &unk_2A1F6FA60);
  }

  sub_299223C68(a1);
}

void sub_299309274(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v2, 0x10E1C407767CB23);
  v6 = v1[46];
  v1[46] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = v1[44];
  v1[44] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v1[43];
  v1[43] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = v1[42];
  v1[42] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *v3;
  *v3 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  sub_29929266C(v1 + 38, 0, v5);
  sub_299223F18(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2993093DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v20 = *MEMORY[0x29EDCA608];
  if (a2 && a3)
  {
    v5 = sub_29930A8C8(*(a1 + 32), a3);
    v18 = v5;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v19, 16);
    if (v3)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if (objc_msgSend_hasPrefix_(v10, v7, a2))
          {
            v3 = objc_msgSend_copy(v10, v7, v11);
            goto LABEL_13;
          }
        }

        v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v14, v19, 16);
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return v3;
}

void sub_299309510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_299229F00(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_299309540(uint64_t a1)
{
  v20[1] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 360);
  v3 = off_29EF10570;
  if (v2 != 1)
  {
    v3 = off_29EF10568;
  }

  if (v2 == 2)
  {
    v4 = &off_29EF10578;
  }

  else
  {
    v4 = v3;
  }

  v5 = *v4;
  v6 = MEMORY[0x29EDBA0F8];
  v7 = sub_2992774EC(*(a1 + 72));
  v9 = objc_msgSend_stringWithUTF8String_(v6, v8, v7);
  v10 = MEMORY[0x29EDBA0F8];
  v11 = (*(*a1 + 232))(a1);
  v12 = sub_299277514(v11, 0);
  v14 = objc_msgSend_stringWithUTF8String_(v10, v13, v12);
  v19 = @"wubixingStandard";
  v20[0] = v5;
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v15, v20, &v19, 1);
  result = sub_2992BBD18(*(a1 + 368), v9, v14, v16);
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

id sub_29930966C()
{
  InputKeys = MecabraInputKeyPropertiesGetInputKeys(2);
  v2 = objc_msgSend_stringByAppendingString_(InputKeys, v1, @" ");
  qword_2A1460F38 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x29EDB9F50], v3, v2);
  result = objc_msgSend_invertedSet(qword_2A1460F38, v4, v5);
  qword_2A1460F40 = result;
  return result;
}

void *sub_2993096C8(void *a1, __CFString *a2, int a3)
{
  v4 = a2;
  if (a3)
  {
    v6 = off_29EF0DEE0;
    v7 = 98306;
  }

  else
  {
    v8 = objc_msgSend_rangeOfString_(a2, a2, @"z");
    v6 = off_29EF0DED8;
    v7 = 32770;
    if (v8 && v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v4, v9, @"z", @"?");
      v6 = off_29EF0DEF0;
      v7 = 32770;
    }
  }

  v10 = *v6;
  v52[0] = 0;
  v52[1] = 0;
  v50[1] = 0;
  v51 = v52;
  v49 = v50;
  v50[0] = 0;
  sub_299224C3C(a1, &v49, v4, v10, &v51, v7);
  v47 = 0;
  v48 = 0;
  v46 = 0;
  if (v49 != v50)
  {
    v11 = 0;
    v12 = v49;
    do
    {
      v13 = v11;
      v14 = v12[1];
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
          v15 = v12[2];
          v16 = *v15 == v12;
          v12 = v15;
        }

        while (!v16);
      }

      ++v11;
      v12 = v15;
    }

    while (v15 != v50);
    if (v13 < 0x1FFFFFFFFFFFFFFFLL)
    {
      sub_29920B86C(&v46, v11);
    }

    sub_299212A8C();
  }

  __p = sub_29921A768;
  sub_29921B920(0, 0, &__p, 0, 1);
  v19 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v17, v18);
  v20 = v19;
  if (a3)
  {
    sub_29922A990(v19, v46, v47, 0xFFFFFFFFFFFFFFFFLL);
    goto LABEL_42;
  }

  v21 = v46;
  v44 = 0;
  v45 = 0;
  v42 = v47;
  __p = 0;
  if (v46 != v47)
  {
    v41 = v19;
    do
    {
      v22 = *v21;
      v23 = v44;
      if (v44 >= v45)
      {
        v25 = (v44 - __p) >> 3;
        if ((v25 + 1) >> 61)
        {
          sub_299212A8C();
        }

        v26 = (v45 - __p) >> 2;
        if (v26 <= v25 + 1)
        {
          v26 = v25 + 1;
        }

        if (v45 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          sub_29920B86C(&__p, v27);
        }

        v28 = (8 * v25);
        *v28 = v22;
        v24 = 8 * v25 + 8;
        v29 = v28 - (v44 - __p);
        memcpy(v29, __p, v44 - __p);
        v30 = __p;
        __p = v29;
        v44 = v24;
        v45 = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v44 = v22;
        v24 = (v23 + 8);
      }

      v44 = v24;
      v31 = (*(*v22 + 24))(v22);
      v32 = sub_2992F2800(10, 0, v31, 0);
      v52[2] = v32;
      if (v32)
      {
        v33 = (*(*v22 + 24))(v22);
        sub_2992F2F40(10, 0, v33);
        if (CFArrayGetCount(v32) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v32, 0);
          v35 = a1[2];
          (*(*v22 + 112))(v22);
          (*(*v22 + 80))(v22);
          sub_299223FD4(a1, 64, ValueAtIndex);
        }

        CFRelease(v32);
      }

      ++v21;
    }

    while (v21 != v42);
    v36 = __p;
    v37 = v44;
    if (__p == v44)
    {
      v20 = v41;
      if (__p)
      {
LABEL_41:
        v44 = v36;
        operator delete(v36);
      }
    }

    else
    {
      v20 = v41;
      do
      {
        v38 = sub_29928A270(*v36);
        objc_msgSend_addObject_(v41, v39, v38);

        v36 += 8;
      }

      while (v36 != v37);
      v36 = __p;
      if (__p)
      {
        goto LABEL_41;
      }
    }
  }

LABEL_42:
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  sub_29921B8CC(&v49, v50[0]);
  sub_29921B8CC(&v51, v52[0]);
  return v20;
}

void sub_299309C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, char a21, void *a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29921B8CC(&a18, a19);
  sub_29921B8CC(&a21, a22);
  _Unwind_Resume(a1);
}

unint64_t sub_299309CC8(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v5 = a3;
  result = objc_msgSend_count(a2, a2, a3);
  if (result > v5)
  {
    v10 = 0;
    do
    {
      v11 = objc_msgSend_objectAtIndexedSubscript_(a2, v9, v5);
      if (!MecabraCandidateIsEmojiCandidate(v11, v12, v13))
      {
        v16 = objc_msgSend_rawCandidate(v11, v14, v15);
        if (!v16)
        {
          v10 = 0;
          if (a4)
          {
            goto LABEL_8;
          }

LABEL_7:
          objc_msgSend_addObject_(*(a1 + 40), v14, v11);
          goto LABEL_8;
        }

        v10 = (*(*v16 + 80))(v16);
      }

      if (((v10 ^ a4) & 1) == 0)
      {
        goto LABEL_7;
      }

LABEL_8:
      ++v5;
      result = objc_msgSend_count(a2, v14, v15);
    }

    while (v5 < result);
  }

  return result;
}

uint64_t sub_299309D9C(uint64_t result, const char *a2, uint64_t a3)
{
  v83 = *MEMORY[0x29EDCA608];
  v3 = *(result + 24);
  if (v3)
  {
    v4 = result;
    if (objc_msgSend_length(*(result + 24), a2, a3))
    {
      v5 = *(v4 + 336);
      if (v5)
      {
        v6 = atomic_load((v5 + 97));
        if ((v6 & 1) == 0)
        {
          v7 = atomic_load((v5 + 96));
          if (v7)
          {
            v8 = *(v4 + 328);
            *(v4 + 328) = *(v4 + 336);
            *(v4 + 336) = 0;
            if (v8)
            {
              (*(*v8 + 8))(v8);
            }
          }
        }
      }

      sub_29930AA3C(v4, (v4 + 328), v3, 32784, 0x7FFFLL);
    }

    v9 = sub_2993096C8(v4, v3, 0);
    v10 = sub_299225130(v4, v3);
    if (objc_msgSend_count(v9, v11, v12))
    {
      v14 = 0;
      while (1)
      {
        v15 = objc_msgSend_objectAtIndexedSubscript_(v9, v13, v14);
        Surface = MecabraCandidateGetSurface(v15, v16, v17);
        if (CFStringGetLength(Surface) != 1 && !MecabraCandidateIsEmojiCandidate(v15, v13, v19))
        {
          break;
        }

        v20 = objc_msgSend_rawCandidate(v15, v13, v19);
        if (v20)
        {
          if ((*(*v20 + 80))(v20))
          {
            break;
          }
        }

        objc_msgSend_addObject_(*(v4 + 40), v13, v15);
        if (++v14 >= objc_msgSend_count(v9, v21, v22))
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      v14 = 0;
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v76, v82, 16);
    if (v25)
    {
      v26 = *v77;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v77 != v26)
          {
            objc_enumerationMutation(v10);
          }

          v28 = *(*(&v76 + 1) + 8 * i);
          v29 = objc_msgSend_rawCandidate(v28, v23, v24);
          if ((!v29 || ((*(*v29 + 80))(v29) & 1) == 0) && (MecabraCandidateGetWubixingType(v28, v23, v24) & 2) == 0)
          {
            objc_msgSend_addObject_(*(v4 + 40), v23, v28);
          }
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v23, &v76, v82, 16);
      }

      while (v25);
    }

    sub_299309CC8(v4, v9, v14, 0);
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v30, &v72, v81, 16);
    if (v33)
    {
      v34 = *v73;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v73 != v34)
          {
            objc_enumerationMutation(v10);
          }

          v36 = *(*(&v72 + 1) + 8 * j);
          v37 = objc_msgSend_rawCandidate(v36, v31, v32);
          if (v37 && ((*(*v37 + 80))(v37) & 1) != 0 || (MecabraCandidateGetWubixingType(v36, v31, v38) & 2) != 0)
          {
            objc_msgSend_addObject_(*(v4 + 40), v31, v36);
          }
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v31, &v72, v81, 16);
      }

      while (v33);
    }

    if (objc_msgSend_length(v3, v31, v32))
    {
      v39 = *(v4 + 352);
      if (v39)
      {
        v40 = atomic_load((v39 + 97));
        if ((v40 & 1) == 0)
        {
          v41 = atomic_load((v39 + 96));
          if (v41)
          {
            v42 = *(v4 + 344);
            *(v4 + 344) = *(v4 + 352);
            *(v4 + 352) = 0;
            if (v42)
            {
              (*(*v42 + 8))(v42);
            }
          }
        }
      }

      sub_29930AA3C(v4, (v4 + 344), v3, 32776, 5);
    }

    sub_299309CC8(v4, v9, v14, 1);
    if ((*(v4 + 32) & 2) == 0)
    {
      v45 = *(v4 + 40);
      v46 = sub_299225130(v4, v3);
      objc_msgSend_addObjectsFromArray_(v45, v47, v46);
    }

    if (!*(v4 + 304))
    {
      v48 = sub_299279384();
      v80 = CFRetain(v48);
      v49 = *(v4 + 296);
      operator new();
    }

    v50 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v43, v44);
    if (sub_29934C930(*(v4 + 304), v3, *(v4 + 32) & 0x40, *(v4 + 272)))
    {
      for (k = sub_29934E86C(*(v4 + 304)); k; k = sub_29934E86C(*(v4 + 304)))
      {
        if (qword_2A1460F48 != -1)
        {
          dispatch_once(&qword_2A1460F48, &unk_2A1F6FA28);
        }

        if (MecabraCandidateGetMatchedLengthType(k, v51, v52) != 1)
        {
          v56 = MecabraCandidateGetSurface(k, v54, v55);
          if ((objc_msgSend_rangeOfCharacterFromSet_(v56, v57, qword_2A1460F38) == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_rangeOfCharacterFromSet_(v56, v58, qword_2A1460F40) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_length(v56, v66, v67) != 1) && (!MecabraCandidateIsEmojiCandidate(k, v58, v59) || (v62 = objc_msgSend_rawCandidate(k, v60, v61)) == 0 || ((*(*v62 + 80))(v62) & 1) == 0) && (MecabraCandidateIsAutocorrectionCandidate(k, v60, v61) || MecabraCandidateIsBilingualCandidate(k, v63, v64) || (sub_29928A14C(k, v63, v65) & 1) == 0))
          {
            objc_msgSend_addObject_(v50, v63, k);
          }
        }
      }
    }

    result = objc_msgSend_addObjectsFromArray_(*(v4 + 40), v51, v50);
    if ((*(v4 + 32) & 2) == 0)
    {
      v68 = *(v4 + 40);
      v69 = sub_2993096C8(v4, v3, 1);
      result = objc_msgSend_addObjectsFromArray_(v68, v70, v69);
    }
  }

  v71 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29930A398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29930A3E8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  result = 0;
  if (objc_msgSend_length(a2, a2, a3) == 1)
  {
    isEqualToString = objc_msgSend_isEqualToString_(a3, v6, @"IDXPrefixMatch");
    if (a4 >= 20 && (isEqualToString & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

void sub_29930A448()
{
  v0 = sub_29936C2B8();
  v1 = sub_29936C3FC(v0, 1, off_2A145F738[0], off_2A145F6E8[0], 0);
  v2 = *(v1 + 23);
  if (v2 >= 0)
  {
    v3 = v1[23];
  }

  else
  {
    v3 = *(v1 + 1);
  }

  if (v3)
  {
    if (v2 >= 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = *v1;
    }

    CFURLCreateFromFileSystemRepresentation(0, v4, v3, 1u);
  }

  operator new();
}

void sub_29930A528(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x29C29BFB0](v2, 0x10E1C40215157BALL);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

CFIndex sub_29930A560(void *a1, int a2, CFArrayRef theArray)
{
  result = CFArrayGetCount(theArray);
  if (result)
  {
    result = CFArrayGetCount(theArray);
    if ((result & 1) == 0)
    {
      operator new();
    }
  }

  *a1 = 0;
  return result;
}