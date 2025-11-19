uint64_t sub_2993B8B28(uint64_t a1)
{
  v2 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29920FE30((a1 + 176), 0);
  sub_29920FE30((a1 + 168), 0);
  sub_29920FE30((a1 + 160), 0);
  v3 = *(a1 + 144);
  if (v3)
  {
    sub_2991A893C(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    sub_2991A893C(v4);
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    sub_2991A893C(v5);
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    sub_2991A893C(v6);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    sub_2991A893C(v7);
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    sub_2991A893C(v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    sub_2991A893C(v9);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    sub_2991A893C(v10);
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    sub_2991A893C(v11);
  }

  return a1;
}

void sub_2993B8C0C(void *a1, int a2)
{
  sub_299321FA0(*(a1[11] + 8));
  v4 = a1[5];
  if (v4)
  {
    sub_299210C88(a1[5]);
    v5 = atomic_load((v4 + 40));
    if (v5 == 2)
    {
      if (*v4)
      {
        v6 = a1[5];
        sub_299210C88(v6);
        atomic_load(v6 + 10);
        v7 = *(*v6 + 8);
        LMLanguageModelReset();
      }
    }
  }

  if (a2)
  {
    v8 = a1[3];
    if (v8)
    {
      sub_299210C88(a1[3]);
      v9 = atomic_load((v8 + 40));
      if (v9 == 2)
      {
        if (*v8)
        {
          v10 = a1[3];
          sub_299210C88(v10);
          atomic_load(v10 + 10);
          v11 = *(*v10 + 8);
          LMLanguageModelReset();
        }
      }
    }
  }

  v12 = a1[1];

  sub_29920F9CC(v12);
}

void *sub_2993B8CEC(void *result)
{
  v1 = result[19];
  if (v1 && (*(v1 + 112) & 8) != 0)
  {
    v2 = result;
    v3 = sub_2993652F8(0xDu);
    v4 = os_signpost_id_make_with_pointer(v3, v2);
    v5 = sub_2993652F8(0xDu);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "LanguageModelLoaderReload", "Reload for LMLoader", buf, 2u);
      }
    }

    v7 = v2[1];
    sub_29920F28C();
  }

  return result;
}

void sub_2993B8E44(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 152);
    if ((*(v2 + 112) & 0x80) != 0)
    {
      v3 = *(v2 + 136);
      if (v3)
      {
        v4 = *MEMORY[0x29EDB8ED8];
        v5 = CFURLCreateWithFileSystemPath(*MEMORY[0x29EDB8ED8], v3, kCFURLPOSIXPathStyle, 1u);
        PathComponent = CFURLCreateCopyDeletingLastPathComponent(v4, v5);
        sub_29920FE30((a1 + 176), PathComponent);
        v7 = *(a1 + 8);
        v8 = CFURLCreateCopyDeletingLastPathComponent(v4, v5);
        sub_29920FE30((v7 + 16), v8);
        if (v5)
        {
          CFRelease(v5);
        }
      }

      else
      {
        sub_29920FE30((a1 + 176), 0);
        sub_29920FE30((*(a1 + 8) + 16), 0);
      }

      *(*(a1 + 152) + 112) &= ~0x80uLL;
    }
  }
}

void sub_2993B8F28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

void sub_2993B8F40(uint64_t a1)
{
  v2 = *(*(a1 + 152) + 112);
  if ((v2 & 0x40) != 0 && *a1 == 2)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      v4 = atomic_load((v3 + 40));
      if (v4 == 1)
      {
        v2 = *(*(a1 + 152) + 112);
        goto LABEL_12;
      }

      v5 = *a1;
    }

    else
    {
      v5 = 2;
    }

    sub_29920E2A4(v5, *(a1 + 6), 1, &v14);
    v6 = v14;
    v14 = 0uLL;
    v7 = *(a1 + 32);
    *(a1 + 24) = v6;
    if (v7)
    {
      sub_2991A893C(v7);
      if (*(&v14 + 1))
      {
        sub_2991A893C(*(&v14 + 1));
      }
    }

    v8 = *(a1 + 152);
    v2 = *(v8 + 112) & 0xFFFFFFFFFFFFFFBFLL;
    *(v8 + 112) = v2;
  }

LABEL_12:
  if ((v2 & 0x20) != 0 && *a1 == 1)
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = atomic_load((v9 + 40));
      if (v10 == 1)
      {
        return;
      }

      v11 = *a1;
    }

    else
    {
      v11 = 1;
    }

    sub_2992D7E44(v11, 1, &v14);
    v12 = v14;
    v14 = 0uLL;
    v13 = *(a1 + 64);
    *(a1 + 56) = v12;
    if (v13)
    {
      sub_2991A893C(v13);
      if (*(&v14 + 1))
      {
        sub_2991A893C(*(&v14 + 1));
      }
    }

    *(*(a1 + 152) + 112) &= ~0x20uLL;
  }
}

void sub_2993B9068(uint64_t a1, int a2)
{
  if (*a1 == a2)
  {
    v3 = *(a1 + 8);
    sub_29920F28C();
  }

  *a1 = a2;
  sub_2993B803C(a1, 1);
  v4 = *(a1 + 32);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (v4)
  {

    sub_2991A893C(v4);
  }
}

uint64_t sub_2993B9184(uint64_t a1)
{
  if ((*(a1 + 4) == 1 && (v1 = *(a1 + 72)) != 0 || (v1 = *(a1 + 56)) != 0) && (sub_29929A360(v1), v2 = atomic_load(v1 + 10), v2 == 2))
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

void sub_2993B91E0(uint64_t a1, int a2)
{
  if (*(a1 + 4) != a2 || (*(*(a1 + 152) + 113) & 5) != 0)
  {
    *(a1 + 4) = a2;
    if (a2)
    {
      v3 = *(a1 + 152);
      v4 = *(v3 + 112);
      if ((v4 & 0x100) != 0)
      {
        v5 = *(v3 + 152);
        *(v3 + 112) = v4 & 0xFFFFFFFFFFFFFEFFLL;
      }

      else
      {
        v5 = 0;
      }

      sub_29920FC34(*(a1 + 8), 1, v5);
      if ((*(*(a1 + 152) + 113) & 4) != 0)
      {
        v7 = *a1;
        if ((*a1 - 1) <= 1)
        {
          v8 = *(a1 + 72);
          if (!v8)
          {
            goto LABEL_14;
          }

          v9 = atomic_load((v8 + 40));
          if (v9 != 1)
          {
            v7 = *a1;
LABEL_14:
            sub_2992D891C(v7, 1, &v12);
            v10 = v12;
            v12 = 0uLL;
            v11 = *(a1 + 80);
            *(a1 + 72) = v10;
            if (v11)
            {
              sub_2991A893C(v11);
              if (*(&v12 + 1))
              {
                sub_2991A893C(*(&v12 + 1));
              }
            }
          }
        }

        *(*(a1 + 152) + 112) &= ~0x400uLL;
      }
    }

    else
    {
      v6 = *(a1 + 8);
      if (*(v6 + 5))
      {
        *(v6 + 5) = 0;
      }
    }
  }
}

void sub_2993B9374(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v3, 0x1070C40FE1C109FLL);
  MEMORY[0x29C29BFB0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_2993B93AC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_299329210((v2 + 8), 0);
    MEMORY[0x29C29BFB0](v2, 0x1020C40D5A9D86FLL);
  }

  return a1;
}

void sub_2993B9404(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993B943C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    sub_299329210((v1 + 8), 0);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2993B949C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F77D10))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993B94E4(int a1, __CFDictionary *a2, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F6D008, 0);
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = (*(*result + 96))(result);
  if (v7 != 76 && v7 != 74)
  {
    return 0;
  }

  if ((*(*v6 + 408))(v6) != 2)
  {
    return 0;
  }

  if ((*(*v6 + 200))(v6))
  {
    return 0;
  }

  v8 = v6[20];
  (*(*v6 + 552))(v6);
  if (v8 > v9)
  {
    return 0;
  }

  (*(*v6 + 552))(v6);
  valuePtr = v10 - v6[20];
  v11 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(a2, @"phraseLearningCandidateKeystrokeSavings", v11);
  if (v11)
  {
    CFRelease(v11);
  }

  return 1;
}

uint64_t sub_2993B96F4(uint64_t a1, int a2)
{
  v4 = sub_2992FE060();
  *a1 = 0;
  *(a1 + 8) = CFStringCreateWithCharacters(0, *v4, v4[1]);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = a2;
  *(a1 + 32) = 0xD00000001;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = a2 & 1;
  return a1;
}

void sub_2993B9754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 64) = 1;
  v4 = *(a2 + 40);
  v26 = *(a2 + 48);
  if (v4 != v26)
  {
    while (1)
    {
      v5 = *v4;
      v6 = (*v4)[1];
      if (v6[10])
      {
        v7 = *v6;
        if (*v6)
        {
          v8 = *v5;
          v9 = (*v5)[2];
          if (v9)
          {
            v10 = *(v9 + 36);
            v11 = v10 > 0x11;
            v12 = 0x1B1FFu >> v10;
            v13 = v11 ? 1 : v12;
          }

          else
          {
            v13 = 1;
          }

          if ((*(*v8 + 104))(*v5))
          {
            v14 = (*(*v8 + 40))(v8);
            v16 = *(a1 + 40);
            v15 = *(a1 + 48);
            if (v16 != v15)
            {
              break;
            }
          }
        }
      }

LABEL_27:
      if (++v4 == v26)
      {
        return;
      }
    }

    v17 = v14;
    while (1)
    {
      v18 = *v16;
      v19 = **v16;
      if (!v19 || !(*(*v19 + 104))(**v16) || ((*(*v19 + 40))(v19) & 4) != 0 && (*(v8 + 2) - 1) > 1 || (v17 & 4) != 0 && (v19[2] - 1) > 1)
      {
        goto LABEL_26;
      }

      v20 = v18[1];
      v21 = *(v20 + 88);
      if (v21)
      {
        v22 = *(v21 + 16);
        v23 = 1.79769313e308;
        if (v22 != 1.79769313e308)
        {
          v23 = v22 + 2.2;
        }

        if ((v13 & 1) == 0)
        {
LABEL_25:
          sub_2993B44C8(v20, *v18, v5[1], *v5, a4);
          goto LABEL_26;
        }
      }

      else
      {
        v23 = 1.79769313e308;
        if ((v13 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      if (*(v7 + 16) <= v23)
      {
        goto LABEL_25;
      }

LABEL_26:
      if (++v16 == v15)
      {
        goto LABEL_27;
      }
    }
  }
}

void sub_2993B996C(uint64_t a1, int a2)
{
  sub_2991D7954(&v15);
  sub_2993BA218(a1, __p);
  if ((v14 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = __p[1];
  }

  sub_2991C0E9C(&v16, v4, v5);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  if (v6 != v7)
  {
    v9 = 0;
    if (((v6 - v7) >> 3) <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = (v6 - v7) >> 3;
    }

    do
    {
      v11 = sub_29939D4F4(**(*(a1 + 40) + 8 * v9), a2, 1);
      CFArrayAppendValue(Mutable, v11);
      CFRelease(v11);
      ++v9;
    }

    while (v10 != v9);
  }

  v12 = CFStringCreateByCombiningStrings(0, Mutable, @" ");
  CFRelease(Mutable);
  sub_29922E740(a2, v12);
}

void sub_2993B9D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_2991D7BF8(&a10, MEMORY[0x29EDC9528]);
  MEMORY[0x29C29BF00](va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993BA164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  *a1 = a2;
  v15 = *(a3 + 8);
  if (!a2 || v15)
  {
    v16 = CFStringCreateWithCharacters(0, *a3, v15);
  }

  else
  {
    v16 = sub_299397500(a2);
  }

  *(a1 + 8) = v16;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 28) = a6;
  *(a1 + 32) = a8;
  *(a1 + 36) = a7;
  return a1;
}

uint64_t sub_2993BA1E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_2993BA218@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  sub_2991D7954(v36);
  if (v4)
  {
    v5 = sub_2991C0E9C(&v37, "type = ", 7);
    v6 = MEMORY[0x29C29BD40](v5, a1[7]);
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v7 = std::locale::use_facet(&v33, MEMORY[0x29EDC93D0]);
    (v7->__vftable[2].~facet_0)(v7, 10);
    std::locale::~locale(&v33);
    std::ostream::put();
    std::ostream::flush();
    sub_2991C0E9C(&v37, "syllable IDs: ", 14);
    v8 = *(*a1 + 8);
    if (v8)
    {
      v9 = *(*a1 + 16);
      v10 = *(*a1 + 8);
      do
      {
        v11 = MEMORY[0x29C29BD70](&v37, *v9);
        v12 = sub_2991C0E9C(v11, "(", 1);
        v13 = sub_2993A1488(*v9, **a1);
        sub_299278568(v13, &v33);
        if ((v35 & 0x80u) == 0)
        {
          locale = &v33;
        }

        else
        {
          locale = v33.__locale_;
        }

        if ((v35 & 0x80u) == 0)
        {
          v15 = v35;
        }

        else
        {
          v15 = v34;
        }

        v16 = sub_2991C0E9C(v12, locale, v15);
        sub_2991C0E9C(v16, "), ", 3);
        if (v35 < 0)
        {
          operator delete(v33.__locale_);
        }

        ++v9;
        --v10;
      }

      while (v10);
    }

    std::ios_base::getloc((&v37 + *(v37 - 24)));
    v17 = std::locale::use_facet(&v33, MEMORY[0x29EDC93D0]);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&v33);
    std::ostream::put();
    std::ostream::flush();
    sub_2991C0E9C(&v37, "Syllable Lengths:", 17);
    if (v8)
    {
      v18 = (*(*a1 + 32) + 2);
      do
      {
        v19 = MEMORY[0x29C29BD30](&v37, *v18 + *(v18 - 2));
        sub_2991C0E9C(v19, ", ", 2);
        v18 += 4;
        --v8;
      }

      while (v8);
    }

    std::ios_base::getloc((&v37 + *(v37 - 24)));
    v20 = std::locale::use_facet(&v33, MEMORY[0x29EDC93D0]);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v33);
    std::ostream::put();
    std::ostream::flush();
  }

  else
  {
    v21 = sub_2991C0E9C(&v37, "synthetic word group:", 21);
    std::ios_base::getloc((v21 + *(*v21 - 24)));
    v22 = std::locale::use_facet(&v33, MEMORY[0x29EDC93D0]);
    (v22->__vftable[2].~facet_0)(v22, 10);
    std::locale::~locale(&v33);
    std::ostream::put();
    std::ostream::flush();
  }

  v23 = sub_2991C0E9C(&v37, "length = ", 9);
  v24 = MEMORY[0x29C29BD60](v23, *(a1 + 2));
  v25 = sub_2991C0E9C(v24, ", trieValue = ", 14);
  v26 = MEMORY[0x29C29BD40](v25, a1[6]);
  std::ios_base::getloc((v26 + *(*v26 - 24)));
  v27 = std::locale::use_facet(&v33, MEMORY[0x29EDC93D0]);
  (v27->__vftable[2].~facet_0)(v27, 10);
  std::locale::~locale(&v33);
  std::ostream::put();
  std::ostream::flush();
  if ((v44 & 0x10) != 0)
  {
    v29 = v43;
    if (v43 < v40)
    {
      v43 = v40;
      v29 = v40;
    }

    v30 = v39[4].__locale_;
  }

  else
  {
    if ((v44 & 8) == 0)
    {
      v28 = 0;
      a2[23] = 0;
      goto LABEL_31;
    }

    v30 = v39[1].__locale_;
    v29 = v39[3].__locale_;
  }

  v28 = v29 - v30;
  if ((v29 - v30) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  if (v28 >= 0x17)
  {
    operator new();
  }

  a2[23] = v28;
  if (v28)
  {
    memmove(a2, v30, v28);
  }

LABEL_31:
  a2[v28] = 0;
  v36[0] = *MEMORY[0x29EDC9528];
  v31 = *(MEMORY[0x29EDC9528] + 72);
  *(v36 + *(v36[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v37 = v31;
  v38 = MEMORY[0x29EDC9570] + 16;
  if (v42 < 0)
  {
    operator delete(__p);
  }

  v38 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v39);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C29BF00](&v45);
}

void sub_2993BA83C(_Unwind_Exception *a1, uint64_t a2, std::locale a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::locale::~locale(&a3);
  sub_2991D7BF8(&a6, MEMORY[0x29EDC9528]);
  MEMORY[0x29C29BF00](va);
  _Unwind_Resume(a1);
}

void sub_2993BA898(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2993BA874);
}

void sub_2993BAD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  (*(*a13 + 16))(a13);
  _Unwind_Resume(a1);
}

void sub_2993BADAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v64 = *MEMORY[0x29EDCA608];
  v9 = sub_2993652F8(5u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v52 = CFStringCreateWithCharacters(0, *a3, *(a3 + 8));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v52;
    _os_log_debug_impl(&dword_29918C000, v9, OS_LOG_TYPE_DEBUG, "[ThaiAutocorrector::analyze] analysisStr: [%@]", &buf, 0xCu);
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v10 = *(a3 + 32);
    v11 = *(a3 + 40);
    v12 = *a3;
    v13 = *(a3 + 8);
    operator new();
  }

  if (!((*(a3 + 64) == 0) | (((*(**(a1 + 16) + 24))(*(a1 + 16)) & 1) == 0)))
  {
    *&buf = &unk_2A1F77DE8;
    *(&buf + 1) = a1;
    p_buf = &buf;
    sub_29939BB74(0xFFuLL, v54);
    sub_29922C4C8(&buf);
    v14 = v54[0];
    if (v54[0] != v54[1])
    {
      v15 = *(v54[0] + 23);
      if (v15 >= 0)
      {
        v16 = v54[0];
      }

      else
      {
        v16 = *v54[0];
      }

      if (v15 >= 0)
      {
        v17 = *(v54[0] + 23);
      }

      else
      {
        v17 = *(v54[0] + 8);
      }

      if ((*(a1 + 40) & 1) == 0 && v17 == *(a3 + 8))
      {
        memcmp(v16, *a3, 2 * v17);
      }

      v18 = *a3;
      v19 = *(v14 + 72);
      sub_2993BA934();
    }

    v55 = v54;
    sub_29922C548(&v55);
  }

  (*(*a1 + 24))(a1, a2, a4);
  __src = 0;
  v57 = 0;
  v58 = 0;
  v21 = a2[6];
  v20 = a2[7];
  if (v21 != v20)
  {
    v22 = 0;
    do
    {
      if (v22 >= v58)
      {
        v24 = __src;
        v25 = v22 - __src;
        v26 = (v22 - __src) >> 3;
        v27 = v26 + 1;
        if ((v26 + 1) >> 61)
        {
          sub_299212A8C();
        }

        v28 = v58 - __src;
        if ((v58 - __src) >> 2 > v27)
        {
          v27 = v28 >> 2;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        p_src = &__src;
        if (v27)
        {
          sub_29920B86C(&__src, v27);
        }

        v29 = (v22 - __src) >> 3;
        v30 = (8 * v26);
        v31 = *v21;
        *v21 = 0;
        v32 = (8 * v26 - 8 * v29);
        *v30 = v31;
        v22 = (v30 + 1);
        memcpy(v32, v24, v25);
        v33 = __src;
        v34 = v58;
        __src = v32;
        v57 = v22;
        v58 = 0;
        v61 = v33;
        p_buf = v34;
        *&buf = v33;
        *(&buf + 1) = v33;
        sub_2992737D8(&buf);
        v20 = a2[7];
      }

      else
      {
        v23 = *v21;
        *v21 = 0;
        *v22 = v23;
        v22 += 8;
      }

      v57 = v22;
      ++v21;
    }

    while (v21 != v20);
  }

  sub_299273BA0(a2 + 1);
  sub_29921ECBC(a2 + 6);
  v36 = __src;
  v35 = v57;
  if (__src != v57)
  {
    do
    {
      *(*v36 + 184) = 1;
      *&buf = &unk_2A1F65308;
      p_buf = &buf;
      sub_2992AB710(a2, v36, 1, 0, &buf);
      sub_29921F128(&buf);
      ++v36;
    }

    while (v36 != v35);
  }

  __p[0] = &unk_2A1F65CF8;
  __p[1] = sub_2992AD278;
  __p[3] = __p;
  sub_2992AB9D4(a2, __p);
  sub_29922D72C(__p);
  __p[0] = &__src;
  sub_29921EC68(__p);
  v37 = a2[6];
  v38 = a2[7];
  if (v37 != v38)
  {
    while (1)
    {
      v39 = *v37;
      if (*v37)
      {
        break;
      }

LABEL_54:
      if (++v37 == v38)
      {
        goto LABEL_55;
      }
    }

    v40 = (*(*v39 + 112))(*v37);
    if ((*(*v39 + 96))(v39) == 71)
    {
      v41 = *(v39 + 55);
      v42 = *(v39 + 87);
      if ((v42 & 0x80u) != 0)
      {
        v42 = *(v39 + 72);
      }

      if ((v41 & 0x80u) != 0)
      {
        v41 = *(v39 + 40);
      }

      v43 = v41 - v42;
      if (v43 <= 0)
      {
        v44 = 0;
      }

      else
      {
        v44 = 8000 * v43;
      }
    }

    else
    {
      if ((*(*v39 + 96))(v39) != 83)
      {
LABEL_53:
        (*(**v37 + 480))(*v37, v40);
        goto LABEL_54;
      }

      if ((*(*v39 + 48))(v39))
      {
        v45 = 0;
        v46 = 0;
        do
        {
          v47 = (*(*v39 + 128))(v39, v45);
          if (v47 == 1)
          {
            v48 = 0;
          }

          else
          {
            v48 = v47;
          }

          v46 += v48;
          ++v45;
        }

        while (v45 < (*(*v39 + 48))(v39));
        v44 = -3000 * v46;
      }

      else
      {
        v44 = 0;
      }
    }

    v40 = (v44 + v40);
    goto LABEL_53;
  }

LABEL_55:
  if ((a5 & 0x800000) == 0)
  {
    if ((atomic_load_explicit(qword_2A1461568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A1461568))
    {
      qword_2A1461578 = 3;
      unk_2A1461580 = xmmword_299402230;
      __cxa_guard_release(qword_2A1461568);
    }

    if ((atomic_load_explicit(&qword_2A1461570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461570))
    {
      qword_2A1461590 = 3;
      unk_2A1461598 = xmmword_2994284C0;
      __cxa_guard_release(&qword_2A1461570);
    }

    v49 = *(a1 + 40);
    v50 = 2;
    *&buf = &unk_2A1F77F68;
    if (v49)
    {
      v50 = 5;
    }

    BYTE8(buf) = v49;
    p_buf = &buf;
    sub_299398A70(a1, a2, &qword_2A1461568[v50], &buf);
    sub_29922D9BC(&buf);
  }

  sub_2993988CC(a1, a2);
  v51 = *MEMORY[0x29EDCA608];
}

void sub_2993BB9DC(void *a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = a2;
  *a3 = &unk_2A1F768F0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0;
  sub_29939B410(a3, a1, a2);
}

uint64_t sub_2993BBD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[4] = *MEMORY[0x29EDCA608];
  v6 = sub_2993652F8(0xCu);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = (*(a2 + 56) - *(a2 + 48)) >> 3;
    LODWORD(v11) = 134217984;
    *(&v11 + 4) = v10;
    _os_log_debug_impl(&dword_29918C000, v6, OS_LOG_TYPE_DEBUG, "[ThaiAutocorrector::rerank] Reranking %zu candidates", &v11, 0xCu);
  }

  v7 = *(a1 + 16);
  v13[0] = &unk_2A1F65B20;
  v13[1] = sub_2993BBEA4;
  v13[3] = v13;
  *&v11 = &unk_2A1F65CF8;
  *(&v11 + 1) = sub_2992AD278;
  v12 = &v11;
  (*(*v7 + 16))(v7, a2, a3, v13, &v11, 256);
  sub_29922D72C(&v11);
  result = sub_29922D5B4(v13);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2993BBE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29922D72C(&a9);
  sub_29922D5B4(&a14);
  _Unwind_Resume(a1);
}

void *sub_2993BBEC4(void *a1)
{
  *a1 = &unk_2A1F658E0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_2993BBF34(void *a1)
{
  *a1 = &unk_2A1F658E0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993BC034(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F77DE8;
  a2[1] = v2;
  return result;
}

uint64_t sub_2993BC060(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  sub_29939C920(&__p, *a2, a2[1], (a2[1] - *a2) >> 3);
  v5 = *(*(a1 + 8) + 32);
  if (v5)
  {
    v6 = sub_29921183C(v5, &__p, *a3);
  }

  else
  {
    v6 = 0;
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_2993BC0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993BC100(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F77E48))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2993BC1C8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F77E68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2993BC200(uint64_t result, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = *(a2 + 8);
  if (v6 <= *a6 >> 1)
  {
    v7 = result;
    v8 = *a2;
    v9 = *a3;
    v10 = *a6 >> 1;
    if ((*(*(result + 24) + 40) & 1) != 0 || ((v11 = **(result + 8)) != 0 ? (v12 = *a6 >> 1) : (v12 = 0), v12 == v6 && (result = memcmp((v11 + 2 * **(result + 16)), *a2, 2 * v6), !result) || (v9 & 0x82) == 0))
    {
      v13 = *(v7 + 32);
      sub_29939B8FC();
    }
  }

  return result;
}

uint64_t sub_2993BC2D0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F77EC8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2993BC398(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F77EE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2993BC3D0(uint64_t result, uint64_t *a2, double *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a2[1];
  if (v7 <= *a6 >> 1)
  {
    v8 = result;
    v9 = *a3;
    if (v7 > **(result + 8) && (*a3 & 0x86) == 0 && a3[1] >= -4.0)
    {
      v12 = *a2;
      v13 = *(result + 16);
      v14 = **(v8 + 24);
      sub_29939B8FC();
    }
  }

  return result;
}

uint64_t sub_2993BC490(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F77F48))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993BC550(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1F77F68;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL sub_2993BC580(uint64_t a1, uint64_t **a2)
{
  v2 = **a2;
  if (*(a1 + 8) == 1)
  {
    return (*(v2 + 48))() == 1;
  }

  else
  {
    return (*(v2 + 96))() == 83;
  }
}

uint64_t sub_2993BC600(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F77FC8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2993BC64C(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v29 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14615B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14615B0))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_2A14615B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14615B8))
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &stru_2A145FB20, &dword_29918C000);
    __cxa_guard_release(&qword_2A14615B8);
  }

  std::mutex::lock(&stru_2A145FB20);
  v6 = qword_2A14615A8;
  v7 = sub_2991C0548(qword_2A14615A8, a1);
  v8 = v6[1];
  if (!*&v8)
  {
    goto LABEL_19;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*v6 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_19:
    v16 = sub_2993652F8(0xDu);
    v17 = os_signpost_id_make_with_pointer(v16, a1);
    v18 = sub_2993652F8(0xDu);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = v18;
      if (os_signpost_enabled(v18))
      {
        if (a1[23] >= 0)
        {
          v20 = a1;
        }

        else
        {
          v20 = *a1;
        }

        *buf = 136315138;
        *&buf[4] = v20;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "SingletonResourceManagerLoad", "Load resource with key: [%s]", buf, 0xCu);
      }
    }

    *buf = (*(a2 + 16))(a2);
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v9)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v8)
      {
        v15 %= *&v8;
      }
    }

    else
    {
      v15 &= *&v8 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_19;
    }

LABEL_18:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  if (!sub_2991C09F4(v6, v14 + 2, a1))
  {
    goto LABEL_18;
  }

  v22 = v14[6];
  if (!v22)
  {
    goto LABEL_19;
  }

  if (v22->__shared_owners_ == -1 || a3 != 0)
  {
    goto LABEL_19;
  }

  v24 = std::__shared_weak_count::lock(v22);
  if (v24)
  {
    v25 = v14[5];
  }

  else
  {
    v25 = 0;
  }

  std::mutex::unlock(&stru_2A145FB20);
  *a4 = v25;
  a4[1] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_2991A893C(v24);
  }

  v21 = *MEMORY[0x29EDCA608];
}

void sub_2993BD4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  MEMORY[0x29C29BF70](v40, v38);
  MEMORY[0x29C29BF70](a11, 0x1000C8077774924);
  sub_2991D64B0(&a37, MEMORY[0x29EDC9518]);
  MEMORY[0x29C29BF00](&STACK[0x288]);
  if (v39)
  {
    MEMORY[0x29C29BF70](v39, 0x1000C8077774924);
  }

  sub_29920FE30(&a14, 0);
  sub_2993BDD8C(&a20);
  if (*(v37 + 23) < 0)
  {
    operator delete(*v37);
  }

  MEMORY[0x29C29BFB0](v37, 0x1032C4049B9E7EFLL);
  _Unwind_Resume(a1);
}

uint64_t sub_2993BD624(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_2993BDD8C(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL sub_2993BD670(uint64_t a1, CFStringRef theString1, char a3)
{
  if (theString1)
  {
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v6 = (a1 + 48);
    if (v8 == v7)
    {
LABEL_6:
      if (0xAAAAAAAAAAAAAAABLL * (v7 - v8) - 20 <= 0xFFFFFFFFFFFFFFEALL)
      {
        v9 = v8 + 3;
        if (v8 != v7 && v9 != v7)
        {
          do
          {
            if (*(v9 + 2) < *(v8 + 2))
            {
              v8 = v9;
            }

            v9 += 3;
          }

          while (v9 != v7);
        }

        v11 = v8 + 3;
        if (v8 + 3 != v7)
        {
          do
          {
            v12 = *v11;
            *v11 = 0;
            sub_299219AB4(v11 - 3, v12);
            *(v11 - 1) = *(v11 + 1);
            v11 += 3;
          }

          while (v11 != v7);
          v7 = *(a1 + 56);
          v8 = v11 - 3;
        }

        while (v7 != v8)
        {
          v7 -= 3;
          sub_299219AB4(v7, 0);
        }

        *(a1 + 56) = v8;
      }

      v13 = CFRetain(theString1);
      v15 = *(a1 + 56);
      v14 = *(a1 + 64);
      if (v15 >= v14)
      {
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *v6) >> 3);
        if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_299212A8C();
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *v6) >> 3);
        v19 = 2 * v18;
        if (2 * v18 <= v17 + 1)
        {
          v19 = v17 + 1;
        }

        if (v18 >= 0x555555555555555)
        {
          v20 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v20 = v19;
        }

        v23[4] = v6;
        if (v20)
        {
          sub_2993BDEDC(v20);
        }

        v21 = 24 * v17;
        v23[0] = 0;
        v23[1] = v21;
        v23[3] = 0;
        *v21 = 0;
        *(v21 + 8) = a3;
        *(v21 + 16) = 0x3FF0000000000000;
        sub_299219AB4(v21, v13);
        v23[2] = v21 + 24;
        sub_2993BDE14(v6, v23);
        v16 = *(a1 + 56);
        sub_2993BDF34(v23);
      }

      else
      {
        *v15 = 0;
        *(v15 + 8) = a3;
        *(v15 + 16) = 0x3FF0000000000000;
        sub_299219AB4(v15, v13);
        v16 = v15 + 24;
      }

      *(a1 + 56) = v16;
      *(a1 + 32) = -1431655765 * ((v16 - *(a1 + 48)) >> 3);
    }

    else
    {
      while (CFStringCompare(theString1, *v8, 0))
      {
        v8 += 3;
        if (v8 == v7)
        {
          v8 = *(a1 + 48);
          v7 = *(a1 + 56);
          goto LABEL_6;
        }
      }

      *(v8 + 8) = a3;
      *(v8 + 2) = *(v8 + 2) + 1.0;
    }
  }

  return theString1 != 0;
}

void sub_2993BD8CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_2993BDF88(v4, v5, v7, 1);
  v9 = *(a1 + 48);
  for (i = *(a1 + 56); v9 != i; v9 += 24)
  {
    (*(a2 + 16))(a2, *v9, *(v9 + 8));
  }
}

BOOL sub_2993BD960(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 40);
  if (v3 <= 0.0)
  {
LABEL_8:
    *(a1 + 40) = Current;
    goto LABEL_9;
  }

  v4 = Current - v3;
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  v5 = floor(v4 / 86400.0);
  if (v5 > 0.0)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    if (v6 != v7)
    {
      v8 = v5 * -0.007;
      v9 = expf(v8);
      do
      {
        *(v6 + 16) = *(v6 + 16) * v9;
        v6 += 24;
      }

      while (v6 != v7);
    }

    goto LABEL_8;
  }

LABEL_9:

  return sub_2993BDA28(a1);
}

BOOL sub_2993BDA28(uint64_t *a1)
{
  v9[19] = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  sub_2991EB0E0(&v7);
  v3 = *&v8[*(v7 - 24) + 24] & 5;
  if (!v3)
  {
    std::ostream::write();
    v4 = a1[6];
    if (v4 != a1[7])
    {
      sub_299276A84(*v4);
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear(&v8[*(v7 - 24) - 8], *&v8[*(v7 - 24) + 24] | 4);
    }
  }

  v7 = *MEMORY[0x29EDC9520];
  *&v8[*(v7 - 24) - 8] = *(MEMORY[0x29EDC9520] + 24);
  MEMORY[0x29C29BBF0](v8);
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](v9);
  v5 = *MEMORY[0x29EDCA608];
  return v3 == 0;
}

void sub_2993BDC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_299233F98(&a13, MEMORY[0x29EDC9520]);
  MEMORY[0x29C29BF00](&a65);
  _Unwind_Resume(a1);
}

void sub_2993BDCBC(void *a1)
{
  if (!std::filebuf::close())
  {
    v2 = (a1 + *(*a1 - 24));
    v3 = v2->__rdstate_ | 4;

    std::ios_base::clear(v2, v3);
  }
}

BOOL sub_2993BDD24(uint64_t a1)
{
  v3 = *(a1 + 48);
  for (i = *(a1 + 56); i != v3; sub_299219AB4(i, 0))
  {
    i -= 3;
  }

  *(a1 + 56) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;

  return sub_2993BDA28(a1);
}

void sub_2993BDD8C(void ***a1)
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
        v4 -= 3;
        sub_299219AB4(v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2993BDE14(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *v7;
      *v7 = 0;
      *v8 = v9;
      *(v8 + 8) = *(v7 + 1);
      v7 += 3;
      v8 += 24;
    }

    while (v7 != v5);
    do
    {
      sub_299219AB4(v4, 0);
      v4 += 3;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

void sub_2993BDEDC(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2993BDF34(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_299219AB4((i - 24), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2993BDF88(uint64_t a1, double *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v124 = (a2 - 3);
    v7 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v7;
          v8 = a2 - v7;
          v9 = 0xAAAAAAAAAAAAAAABLL * (a2 - v7);
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:
                v67 = *(a1 + 40);
                v68 = *(a2 - 1);
                if (v67 <= *(a1 + 16))
                {
                  if (v68 <= v67)
                  {
                    return;
                  }

                  v65 = a1 + 24;
                  v66 = (a2 - 3);
                  goto LABEL_176;
                }

                if (v68 > v67)
                {
                  goto LABEL_114;
                }

                sub_2993BEAA0(a1, a1 + 24);
                if (*(a2 - 1) <= *(a1 + 40))
                {
                  return;
                }

                v69 = a1 + 24;
LABEL_115:
                v70 = (a2 - 3);
LABEL_116:

                sub_2993BEAA0(v69, v70);
                return;
              case 4:

                sub_2993BEB0C(a1, a1 + 24, a1 + 48, v124);
                return;
              case 5:
                sub_2993BEB0C(a1, a1 + 24, a1 + 48, a1 + 72);
                if (*(a2 - 1) <= *(a1 + 88))
                {
                  return;
                }

                sub_2993BEAA0(a1 + 72, v124);
                if (*(a1 + 88) <= *(a1 + 64))
                {
                  return;
                }

                sub_2993BEAA0(a1 + 48, a1 + 72);
                if (*(a1 + 64) <= *(a1 + 40))
                {
                  return;
                }

                v65 = a1 + 24;
                v66 = a1 + 48;
LABEL_176:
                sub_2993BEAA0(v65, v66);
                if (*(a1 + 40) <= *(a1 + 16))
                {
                  return;
                }

                v70 = a1 + 24;
                v69 = a1;
                goto LABEL_116;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              if (*(a2 - 1) <= *(a1 + 16))
              {
                return;
              }

LABEL_114:
              v69 = a1;
              goto LABEL_115;
            }
          }

          if (v8 <= 575)
          {
            v71 = (a1 + 24);
            v73 = a1 == a2 || v71 == a2;
            if (a4)
            {
              if (!v73)
              {
                v74 = 0;
                v75 = a1;
                do
                {
                  v76 = v71;
                  if (*(v75 + 40) > *(v75 + 16))
                  {
                    v77 = *v71;
                    *v71 = 0;
                    v78 = *(v75 + 32);
                    v79 = *(v75 + 40);
                    v80 = v74;
                    while (1)
                    {
                      v81 = a1 + v80;
                      v82 = *(a1 + v80);
                      *(a1 + v80) = 0;
                      sub_299219AB4((a1 + v80 + 24), v82);
                      *(a1 + v80 + 32) = *(a1 + v80 + 8);
                      if (!v80)
                      {
                        break;
                      }

                      v80 -= 24;
                      if (v79 <= *(v81 - 8))
                      {
                        v83 = (a1 + v80 + 24);
                        goto LABEL_137;
                      }
                    }

                    v83 = a1;
LABEL_137:
                    sub_299219AB4(v83, v77);
                    *(v81 + 8) = v78;
                    *(v81 + 16) = v79;
                  }

                  v71 = v76 + 3;
                  v74 += 24;
                  v75 = v76;
                }

                while (v76 + 3 != a2);
              }
            }

            else if (!v73)
            {
              do
              {
                v116 = v71;
                if (*(a1 + 40) > *(a1 + 16))
                {
                  v117 = *v71;
                  *v71 = 0;
                  v118 = *(a1 + 32);
                  v119 = *(a1 + 40);
                  v120 = v71;
                  v121 = v71;
                  do
                  {
                    v122 = *(v121 - 3);
                    v121 -= 3;
                    *v121 = 0;
                    sub_299219AB4(v120, v122);
                    *(v120 + 1) = *(v120 - 1);
                    v123 = *(v120 - 4);
                    v120 = v121;
                  }

                  while (v119 > v123);
                  sub_299219AB4(v121, v117);
                  v121[1] = v118;
                  *(v121 + 2) = v119;
                }

                v71 = v116 + 3;
                a1 = v116;
              }

              while (v116 + 3 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v84 = v10 >> 1;
              v85 = v10 >> 1;
              do
              {
                v86 = v85;
                if (v84 >= v85)
                {
                  v87 = (2 * v85) | 1;
                  v88 = a1 + 24 * v87;
                  if (2 * v86 + 2 < v9 && *(v88 + 16) > *(v88 + 40))
                  {
                    v88 += 24;
                    v87 = 2 * v86 + 2;
                  }

                  v89 = a1 + 24 * v86;
                  v90 = *(v89 + 16);
                  if (*(v88 + 16) <= v90)
                  {
                    v125 = *(v89 + 8);
                    v127 = *v89;
                    *v89 = 0;
                    do
                    {
                      v91 = v88;
                      v92 = *v88;
                      *v88 = 0;
                      sub_299219AB4(v89, v92);
                      *(v89 + 8) = *(v91 + 8);
                      if (v84 < v87)
                      {
                        break;
                      }

                      v93 = 2 * v87;
                      v87 = (2 * v87) | 1;
                      v88 = a1 + 24 * v87;
                      v94 = v93 + 2;
                      if (v94 < v9 && *(v88 + 16) > *(v88 + 40))
                      {
                        v88 += 24;
                        v87 = v94;
                      }

                      v89 = v91;
                    }

                    while (*(v88 + 16) <= v90);
                    sub_299219AB4(v91, v127);
                    *(v91 + 8) = v125;
                    *(v91 + 16) = v90;
                  }
                }

                v85 = v86 - 1;
              }

              while (v86);
              v95 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
              do
              {
                v96 = 0;
                v97 = a2;
                v98 = *a1;
                *a1 = 0;
                v129 = *(a1 + 8);
                v99 = a1;
                do
                {
                  v100 = v99 + 24 * v96;
                  v101 = v100 + 24;
                  if (2 * v96 + 2 >= v95)
                  {
                    v96 = (2 * v96) | 1;
                  }

                  else
                  {
                    v102 = *(v100 + 40);
                    v103 = *(v100 + 64);
                    v104 = v100 + 48;
                    if (v102 <= v103)
                    {
                      v96 = (2 * v96) | 1;
                    }

                    else
                    {
                      v101 = v104;
                      v96 = 2 * v96 + 2;
                    }
                  }

                  v105 = *v101;
                  *v101 = 0;
                  sub_299219AB4(v99, v105);
                  *(v99 + 8) = *(v101 + 8);
                  v99 = v101;
                }

                while (v96 <= ((v95 - 2) >> 1));
                a2 = v97 - 3;
                if (v101 == v97 - 3)
                {
                  sub_299219AB4(v101, v98);
                  *(v101 + 8) = v129;
                }

                else
                {
                  v106 = *(v97 - 3);
                  *(v97 - 3) = 0.0;
                  sub_299219AB4(v101, v106);
                  *(v101 + 8) = *(v97 - 1);
                  sub_299219AB4(v97 - 3, v98);
                  *(v97 - 1) = v129;
                  v107 = v101 - a1 + 24;
                  if (v107 >= 25)
                  {
                    v108 = (-2 - 0x5555555555555555 * (v107 >> 3)) >> 1;
                    v109 = a1 + 24 * v108;
                    v110 = *(v101 + 16);
                    if (*(v109 + 16) > v110)
                    {
                      v111 = *v101;
                      v112 = *(v101 + 8);
                      *v101 = 0;
                      do
                      {
                        v113 = v109;
                        v114 = *v109;
                        *v109 = 0;
                        sub_299219AB4(v101, v114);
                        *(v101 + 8) = *(v113 + 8);
                        if (!v108)
                        {
                          break;
                        }

                        v108 = (v108 - 1) >> 1;
                        v109 = a1 + 24 * v108;
                        v101 = v113;
                      }

                      while (*(v109 + 16) > v110);
                      sub_299219AB4(v113, v111);
                      *(v113 + 8) = v112;
                      *(v113 + 16) = v110;
                    }
                  }
                }
              }

              while (v95-- > 2);
            }

            return;
          }

          v11 = v9 >> 1;
          v12 = a1 + 24 * (v9 >> 1);
          v13 = *(a2 - 1);
          if (v8 >= 0xC01)
          {
            v14 = *(v12 + 16);
            if (v14 <= *(a1 + 16))
            {
              if (v13 <= v14 || (sub_2993BEAA0(v12, v124), *(v12 + 16) <= *(a1 + 16)))
              {
LABEL_26:
                v20 = a1 + 24 * v11;
                v21 = v20 - 24;
                v22 = *(v20 - 8);
                v23 = *(a2 - 4);
                if (v22 <= *(a1 + 40))
                {
                  if (v23 <= v22 || (sub_2993BEAA0(v20 - 24, (a2 - 6)), *(v21 + 16) <= *(a1 + 40)))
                  {
LABEL_39:
                    v26 = a1 + 24 * v11;
                    v27 = *(v26 + 40);
                    v28 = *(a2 - 7);
                    if (v27 <= *(a1 + 64))
                    {
                      if (v28 <= v27 || (sub_2993BEAA0(v26 + 24, (a2 - 9)), *(v26 + 40) <= *(a1 + 64)))
                      {
LABEL_48:
                        v31 = *(v12 + 16);
                        v32 = *(v26 + 40);
                        if (v31 <= *(v21 + 16))
                        {
                          if (v32 <= v31)
                          {
                            goto LABEL_57;
                          }

                          sub_2993BEAA0(v12, v26 + 24);
                          if (*(v12 + 16) <= *(v21 + 16))
                          {
                            goto LABEL_57;
                          }

                          v34 = v21;
                          v33 = v12;
                        }

                        else if (v32 <= v31)
                        {
                          sub_2993BEAA0(v21, v12);
                          if (*(v26 + 40) <= *(v12 + 16))
                          {
LABEL_57:
                            v35 = *a1;
                            *a1 = 0;
                            v128 = *(a1 + 8);
                            v36 = *v12;
                            *v12 = 0;
                            sub_299219AB4(a1, v36);
                            *(a1 + 8) = *(v12 + 8);
                            sub_299219AB4(v12, v35);
                            *(v12 + 8) = v128;
                            goto LABEL_58;
                          }

                          v33 = v26 + 24;
                          v34 = v12;
                        }

                        else
                        {
                          v33 = v26 + 24;
                          v34 = v21;
                        }

                        sub_2993BEAA0(v34, v33);
                        goto LABEL_57;
                      }

                      v29 = a1 + 48;
                      v30 = v26 + 24;
                    }

                    else
                    {
                      v29 = a1 + 48;
                      if (v28 <= v27)
                      {
                        sub_2993BEAA0(v29, v26 + 24);
                        if (*(a2 - 7) <= *(v26 + 40))
                        {
                          goto LABEL_48;
                        }

                        v29 = v26 + 24;
                      }

                      v30 = (a2 - 9);
                    }

                    sub_2993BEAA0(v29, v30);
                    goto LABEL_48;
                  }

                  v24 = a1 + 24;
                  v25 = v21;
                }

                else
                {
                  v24 = a1 + 24;
                  if (v23 <= v22)
                  {
                    sub_2993BEAA0(v24, v20 - 24);
                    if (*(a2 - 4) <= *(v21 + 16))
                    {
                      goto LABEL_39;
                    }

                    v24 = v21;
                  }

                  v25 = (a2 - 6);
                }

                sub_2993BEAA0(v24, v25);
                goto LABEL_39;
              }

              v15 = a1;
              v16 = v12;
            }

            else
            {
              v15 = a1;
              if (v13 <= v14)
              {
                sub_2993BEAA0(a1, v12);
                if (*(a2 - 1) <= *(v12 + 16))
                {
                  goto LABEL_26;
                }

                v15 = v12;
              }

              v16 = (a2 - 3);
            }

            sub_2993BEAA0(v15, v16);
            goto LABEL_26;
          }

          v17 = *(a1 + 16);
          if (v17 > *(v12 + 16))
          {
            v18 = v12;
            if (v13 <= v17)
            {
              sub_2993BEAA0(v12, a1);
              if (*(a2 - 1) <= *(a1 + 16))
              {
                goto LABEL_58;
              }

              v18 = a1;
            }

            v19 = (a2 - 3);
            goto LABEL_34;
          }

          if (v13 > v17)
          {
            sub_2993BEAA0(a1, v124);
            if (*(a1 + 16) > *(v12 + 16))
            {
              v18 = v12;
              v19 = a1;
LABEL_34:
              sub_2993BEAA0(v18, v19);
            }
          }

LABEL_58:
          --a3;
          if (a4)
          {
            break;
          }

          v37 = *(a1 + 16);
          if (*(a1 - 8) > v37)
          {
            goto LABEL_61;
          }

          v53 = *a1;
          *a1 = 0;
          if (v37 <= *(a2 - 1))
          {
            v56 = (a1 + 24);
            do
            {
              v7 = v56;
              if (v56 >= a2)
              {
                break;
              }

              v57 = v56[2];
              v56 += 3;
            }

            while (v37 <= v57);
          }

          else
          {
            v54 = a1;
            do
            {
              v7 = (v54 + 24);
              v55 = *(v54 + 40);
              v54 += 24;
            }

            while (v37 <= v55);
          }

          v58 = a2;
          if (v7 < a2)
          {
            v59 = a2;
            do
            {
              v58 = (v59 - 3);
              v60 = *(v59 - 1);
              v59 -= 3;
            }

            while (v37 > v60);
          }

          v61 = *(a1 + 8);
          while (v7 < v58)
          {
            sub_2993BEAA0(v7, v58);
            do
            {
              v62 = v7[5];
              v7 += 3;
            }

            while (v37 <= v62);
            do
            {
              v63 = *(v58 - 8);
              v58 -= 24;
            }

            while (v37 > v63);
          }

          if (v7 - 3 != a1)
          {
            v64 = *(v7 - 3);
            *(v7 - 3) = 0.0;
            sub_299219AB4(a1, v64);
            *(a1 + 8) = *(v7 - 1);
          }

          sub_299219AB4(v7 - 3, v53);
          a4 = 0;
          *(v7 - 2) = v61;
          *(v7 - 1) = v37;
        }

        v37 = *(a1 + 16);
LABEL_61:
        v38 = 0;
        v39 = *a1;
        *a1 = 0;
        v40 = *(a1 + 8);
        do
        {
          v41 = *(a1 + v38 + 40);
          v38 += 24;
        }

        while (v41 > v37);
        v42 = (a1 + v38);
        v43 = a2;
        if (v38 == 24)
        {
          v46 = a2;
          while (v42 < v46)
          {
            v44 = (v46 - 3);
            v47 = *(v46 - 1);
            v46 -= 3;
            if (v47 > v37)
            {
              goto LABEL_71;
            }
          }

          v44 = v46;
        }

        else
        {
          do
          {
            v44 = (v43 - 3);
            v45 = *(v43 - 1);
            v43 -= 3;
          }

          while (v45 <= v37);
        }

LABEL_71:
        if (v42 >= v44)
        {
          v7 = v42;
        }

        else
        {
          v48 = v44;
          v7 = v42;
          do
          {
            sub_2993BEAA0(v7, v48);
            do
            {
              v49 = v7[5];
              v7 += 3;
            }

            while (v49 > v37);
            do
            {
              v50 = *(v48 - 8);
              v48 -= 24;
            }

            while (v50 <= v37);
          }

          while (v7 < v48);
        }

        if (v7 - 3 != a1)
        {
          v51 = *(v7 - 3);
          *(v7 - 3) = 0.0;
          sub_299219AB4(a1, v51);
          *(a1 + 8) = *(v7 - 1);
        }

        sub_299219AB4(v7 - 3, v39);
        *(v7 - 2) = v40;
        *(v7 - 1) = v37;
        if (v42 >= v44)
        {
          break;
        }

LABEL_84:
        sub_2993BDF88(a1, v7 - 3, a3, a4 & 1);
        a4 = 0;
      }

      v52 = sub_2993BEC24(a1, v7 - 3);
      if (sub_2993BEC24(v7, a2))
      {
        break;
      }

      if (!v52)
      {
        goto LABEL_84;
      }
    }

    a2 = v7 - 3;
    if (!v52)
    {
      continue;
    }

    break;
  }
}

__n128 sub_2993BEAA0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  v7 = *(a1 + 8);
  v5 = *a2;
  *a2 = 0;
  sub_299219AB4(a1, v5);
  *(a1 + 8) = *(a2 + 8);
  sub_299219AB4(a2, v4);
  result = v7;
  *(a2 + 8) = v7;
  return result;
}

double sub_2993BEB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 16);
  v9 = *(a3 + 16);
  if (v8 <= *(a1 + 16))
  {
    if (v9 > v8)
    {
      sub_2993BEAA0(a2, a3);
      if (*(a2 + 16) > *(v7 + 16))
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 > v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      sub_2993BEAA0(a1, v10);
      goto LABEL_10;
    }

    sub_2993BEAA0(a1, a2);
    if (*(a3 + 16) > *(a2 + 16))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  result = *(a4 + 16);
  if (result > *(a3 + 16))
  {
    sub_2993BEAA0(a3, a4);
    result = *(a3 + 16);
    if (result > *(a2 + 16))
    {
      sub_2993BEAA0(a2, a3);
      result = *(a2 + 16);
      if (result > *(v7 + 16))
      {

        *&result = sub_2993BEAA0(v7, a2).n128_u64[0];
      }
    }
  }

  return result;
}

BOOL sub_2993BEC24(double *a1, double *a2)
{
  v3 = a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = a1[5];
        v9 = *(a2 - 1);
        if (v8 > a1[2])
        {
          if (v9 <= v8)
          {
            sub_2993BEAA0(a1, (a1 + 3));
            if (*(a2 - 1) <= v3[5])
            {
              return 1;
            }

            a1 = v3 + 3;
          }

          v5 = (a2 - 3);
          goto LABEL_31;
        }

        if (v9 <= v8)
        {
          return 1;
        }

        v6 = (a1 + 3);
        v7 = (a2 - 3);
        break;
      case 4:
        sub_2993BEB0C(a1, (a1 + 3), (a1 + 6), (a2 - 3));
        return 1;
      case 5:
        sub_2993BEB0C(a1, (a1 + 3), (a1 + 6), (a1 + 9));
        if (*(a2 - 1) <= v3[11])
        {
          return 1;
        }

        sub_2993BEAA0((v3 + 9), (a2 - 3));
        if (v3[11] <= v3[8])
        {
          return 1;
        }

        sub_2993BEAA0((v3 + 6), (v3 + 9));
        if (v3[8] <= v3[5])
        {
          return 1;
        }

        v6 = (v3 + 3);
        v7 = (v3 + 6);
        break;
      default:
        goto LABEL_16;
    }

    sub_2993BEAA0(v6, v7);
    if (v3[5] > v3[2])
    {
      v5 = (v3 + 3);
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 1) > a1[2])
    {
      v5 = (a2 - 3);
LABEL_24:
      a1 = v3;
LABEL_31:
      sub_2993BEAA0(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 6;
  v11 = a1[5];
  v12 = a1[8];
  if (v11 > a1[2])
  {
    if (v12 <= v11)
    {
      sub_2993BEAA0(a1, (a1 + 3));
      if (v3[8] <= v3[5])
      {
        goto LABEL_36;
      }

      a1 = v3 + 3;
    }

    v13 = (v3 + 6);
    goto LABEL_35;
  }

  if (v12 > v11)
  {
    sub_2993BEAA0((a1 + 3), (a1 + 6));
    if (v3[5] > v3[2])
    {
      v13 = (v3 + 3);
      a1 = v3;
LABEL_35:
      sub_2993BEAA0(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 9;
  if (v3 + 9 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = v14[2];
    if (v17 > v10[2])
    {
      v18 = *v14;
      v19 = *(v14 + 1);
      v20 = v15;
      *v14 = 0.0;
      while (1)
      {
        v21 = (v3 + v20);
        v22 = *(v3 + v20 + 48);
        *(v3 + v20 + 48) = 0.0;
        sub_299219AB4((v3 + v20 + 72), v22);
        *(v3 + v20 + 80) = *(v3 + v20 + 56);
        if (v20 == -48)
        {
          break;
        }

        v20 -= 24;
        if (v17 <= v21[5])
        {
          v23 = v3 + v20 + 72;
          goto LABEL_44;
        }
      }

      v23 = v3;
LABEL_44:
      sub_299219AB4(v23, v18);
      *(v21 + 7) = v19;
      *(v23 + 16) = v17;
      if (++v16 == 8)
      {
        return v14 + 3 == a2;
      }
    }

    v10 = v14;
    v15 += 24;
    v14 += 3;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_2993BEF0C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2993BD624(v2);
    MEMORY[0x29C29BFB0](v3, 0x1032C4049B9E7EFLL);
  }

  return a1;
}

void sub_2993BEF58(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993BEF90(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2993BD624(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2993BEFD4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F78038))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993BF014(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = *a2;
  if (*a2)
  {
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
    while (v5 != v6)
    {
      if (v5[1].__r_.__value_.__s.__data_[4] == 1)
      {
        std::string::operator=((a1 + 16), v5);
        return a1;
      }

      v5 = (v5 + 32);
    }
  }

  return a1;
}

void sub_2993BF080(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993BF09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2A14622B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14622B0))
  {
    qword_2A14622A8 = sub_299237120();
    __cxa_guard_release(&qword_2A14622B0);
  }

  v6 = 3;
  if (*qword_2A14622A8)
  {
    v6 = 1;
  }

  v7 = **a1;
  if (v7)
  {
    v8 = *(a3 + 40);
    if (v8 <= 8 && v8 && *(a3 + 24) && v8 >= v6)
    {
      v9 = **(a1 + 8);
      sub_2992B8778(v7, *(a3 + 32), v8, (v9 >> 4) & 0x20 | v9 & 2 | (((v9 >> 5) & 1) << 7) | (v9 >> 2) & 0x40 | (v9 >> 7) & 0x18, v10);
      sub_2993BF1E8(a1, a2, v10, a3, 0x7FFFFFFF);
      v11 = v10;
      sub_299225D98(&v11);
    }
  }
}

void sub_2993BF1E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  v8 = a1;
  v51 = *MEMORY[0x29EDCA608];
  if ((~**(a1 + 8) & 0x6000000) == 0)
  {
    v9 = *(a2 + 48);
    v10 = *(a2 + 56);
    while (v9 != v10)
    {
      if ((*(**v9 + 96))() == 76)
      {
        goto LABEL_26;
      }

      v9 += 8;
    }
  }

  v35 = v8;
  if ((atomic_load_explicit(&qword_2A14615C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14615C8))
  {
    qword_2A14615C0 = sub_299237120();
    __cxa_guard_release(&qword_2A14615C8);
  }

  if ((*qword_2A14615C0 & 1) == 0)
  {
    v11 = **(v8 + 8);
  }

  v12 = *a3;
  if (*a3 != a3[1])
  {
    v13 = 0;
    v14 = 0;
    v36 = *(a4 + 48);
    do
    {
      v15 = sub_29920B95C(v12 + v13, (v8 + 16));
      v16 = (*(**(v15 + 56) + 16))(*(v15 + 56));
      v17 = (v16[1] - *v16) >> 1;
      if (v36 <= 0 && v17 <= *(a4 + 40) || (*(*(v8 + 8) + 3) & 2) == 0)
      {
        if (a5 == 0x7FFFFFFF)
        {
          v18 = *(qword_2A14615C0 + 496);
          v19 = v17 - *(a4 + 40);
          if (v19 >= 1)
          {
            v18 += *(qword_2A14615C0 + 512) + *(qword_2A14615C0 + 512) * v19;
          }

          v37 = v18;
        }

        else
        {
          v37 = a5 + 1;
        }

        v20 = *a3;
        sub_299255778(0);
        v21 = word_2A1461E02;
        v22 = sub_2992B8D0C(v20 + v13, off_2A145F5E0[0]);
        v23 = sub_2992B8D0C(v20 + v13, off_2A145F5D8[0]);
        v24 = *v22;
        v25 = v22[1];
        if (*v22 != v25)
        {
          v26 = *v23;
          v27 = v23[1];
          if (*v23 != v27)
          {
            v48 = 0;
            v47 = 0;
            v28 = (v27 - v26) >> 1;
            v29 = *(a4 + 24);
            v39[0] = 4;
            v40 = 0;
            *&v39[1] = 0;
            v41 = 0;
            v42 = v28;
            v43 = v29;
            v44 = (v25 - v24) >> 1;
            v45 = v21;
            v46 = v21;
            v49 = 513;
            v50 = 0;
            memset(__p, 0, sizeof(__p));
            sub_2992DBD58(__p, v39, &v51, 1uLL);
            v30 = *(a4 + 16);
            v31 = *(a4 + 24);
            v32 = *(v35 + 8);
            operator new();
          }
        }

        a5 = v37;
        v8 = v35;
        if (!*(qword_2A14615C0 + 416))
        {
          break;
        }
      }

      ++v14;
      v12 = *a3;
      v33 = (a3[1] - *a3) >> 5;
      if (v33 >= 0xC)
      {
        v33 = 12;
      }

      v13 += 32;
    }

    while (v14 < v33);
  }

LABEL_26:
  v34 = *MEMORY[0x29EDCA608];
}

void sub_2993BFC14(_Unwind_Exception *a1)
{
  sub_2993C2818((v2 + 24));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_2993BFCBC(void *a1, uint64_t a2)
{
  v5 = a1[6];
  v4 = a1[7];
  if (v5 >= v4)
  {
    v7 = a1[5];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_2993B4364();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_29920B86C((a1 + 5), v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = a1[5];
    v14 = a1[6] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[5];
    a1[5] = v15;
    a1[6] = v6;
    a1[7] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  a1[6] = v6;
}

uint64_t sub_2993BFD88(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = sub_2993B3D30(*(*(a1 + 32) + 16) + 32);

  return sub_2992F5A34(v7, a2, a3, a4);
}

void *sub_2993BFDE4(void *a1)
{
  *a1 = &unk_2A1F78060;
  v2 = a1[1];
  if (v2)
  {
    v3 = *(v2 + 80);
    if (v3)
    {
      MEMORY[0x29C29BFB0](v3, 0x1020C40B39BF849);
    }

    v4 = *(v2 + 88);
    if (v4)
    {
      MEMORY[0x29C29BFB0](v4, 0x1020C40B39BF849);
    }

    v19 = (v2 + 56);
    sub_2993C285C(&v19);
    v5 = sub_29930F2E8(v2);
    MEMORY[0x29C29BFB0](v5, 0x10A0C4079FC9E15);
  }

  v6 = a1[7];
  if (v6)
  {
    _Block_release(*(v6 + 8));
    MEMORY[0x29C29BFB0](v6, 0x10E0C400FD248ABLL);
  }

  v7 = a1[3];
  if (v7)
  {
    v8 = *(v7 + 40);
    if (v8)
    {
      *(v7 + 48) = v8;
      operator delete(v8);
    }

    v9 = sub_2993BA1E4(v7);
    MEMORY[0x29C29BFB0](v9, 0x10E0C40A81385DBLL);
  }

  v10 = a1[4];
  if (v10)
  {
    v11 = *(v10 + 40);
    if (v11)
    {
      *(v10 + 48) = v11;
      operator delete(v11);
    }

    v12 = sub_2993BA1E4(v10);
    MEMORY[0x29C29BFB0](v12, 0x10E0C40A81385DBLL);
  }

  v13 = a1[2];
  if (v13)
  {
    v14 = sub_2993B32F0(v13);
    MEMORY[0x29C29BFB0](v14, 0x10E0C402345DB33);
  }

  sub_299381EE4((a1 + 21));
  v15 = a1[18];
  if (v15)
  {
    a1[19] = v15;
    operator delete(v15);
  }

  v16 = a1[15];
  if (v16)
  {
    a1[16] = v16;
    operator delete(v16);
  }

  v17 = a1[8];
  if (v17)
  {
    a1[9] = v17;
    operator delete(v17);
  }

  return a1;
}

void sub_2993BFF80(void *a1)
{
  sub_2993BFDE4(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993BFFB8(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1[1] + 56);
  if (0x2E8BA2E8BA2E8BA3 * ((*(a1[1] + 64) - v3) >> 3) > a3)
  {
    v7 = v3 + 88 * a3 + 48;
    v8 = *(a2 + 16) + a3;
    if (v8)
    {
      v9 = a1[8];
      v10 = a1 + 8;
      v11 = v8 - 1;
      if (0x21CFB2B78C13521DLL * ((a1[9] - v9) >> 3) <= v8 - 1)
      {
        sub_2993C2970(a1 + 8, v8);
        v9 = *v10;
      }

      v12 = v9 + 424 * v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = a1[7];
    *(v13 + 40) = v12;
    if (a3)
    {
      v14 = a1[8];
      v15 = v13;
      if (0x21CFB2B78C13521DLL * ((a1[9] - v14) >> 3) <= a3 - 1)
      {
        sub_2993C2970(a1 + 8, a3);
        v15 = a1[7];
        v14 = a1[8];
      }

      v16 = v14 + 424 * (a3 - 1);
    }

    else
    {
      v16 = 0;
      v15 = v13;
    }

    *(v13 + 48) = v16;
    *(v15 + 16) = 1;
    v17 = v7 + 16;
    for (i = *(v7 + 24); i != v17; i = *(i + 8))
    {
      v19 = **(i + 16);
      v20 = a1[6];
      v22 = *v20;
      v21 = v20[1];
      if (v22 == v21 || !(*(**(v21 - 8) + 24))(*(v21 - 8)))
      {
        goto LABEL_18;
      }

      v23 = a1[24];
      v27 = v19;
      v28 = a3;
      v26 = a2;
      if (!v23)
      {
        sub_2991A2240();
      }

      if ((*(*v23 + 48))(v23, &v28, &v27, &v26))
      {
LABEL_18:
        v24 = *(v19 + 28);
        if ((v24 & 0x20) == 0)
        {
          v25 = *(a2 + 28);
          if (((v24 & 2) != 0 || (v25 & 4) == 0) && ((v24 & 8) != 0 || (v25 & 0x10) == 0) && ((v25 & 8) == 0 || !*v19 || (*(*v19 + 40) & 6) == 0))
          {
            if ((*(v19 + 64) & 1) == 0)
            {
              sub_2993BFFB8(a1, v19, a3 - *(v19 + 16));
            }

            sub_2993B9754(a2, v19, a1[5], a1[7]);
          }
        }
      }
    }
  }
}

void sub_2993C01F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_29930AF10();
  if (*v6 == 1 && (v6[9] & 0x10) != 0)
  {
    sub_29930AF10();
    sub_2993B996C(a2, *(*(a1 + 40) + 40));
  }

  v7 = *(a2 + 16);
  v8 = *(a1 + 8);
  v50 = *(v8 + 56);
  v51 = *(v8 + 64);
  v9 = *(v8 + 24);
  if (v9)
  {
    v10 = *(v8 + 32);
    v11 = v10 - v9;
    if (0x6DB6DB6DB6DB6DB7 * ((v10 - v9) >> 3) != *(v8 + 40))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v11 = 56 * *(v8 + 40);
  }

  v12 = malloc_type_malloc(v11, 0x1020040B39BF849uLL);
  v10 = v12;
  v14 = *(v8 + 8);
  v13 = *(v8 + 16);
  if (v14 >= v13)
  {
    v16 = *v8;
    v17 = v14 - *v8;
    v18 = v17 >> 3;
    v19 = (v17 >> 3) + 1;
    if (v19 >> 61)
    {
      sub_299212A8C();
    }

    v20 = v12;
    v21 = v13 - v16;
    if (v21 >> 2 > v19)
    {
      v19 = v21 >> 2;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v19;
    }

    if (v22)
    {
      if (!(v22 >> 61))
      {
        operator new();
      }

      sub_29919600C();
    }

    *(8 * v18) = v12;
    v15 = 8 * v18 + 8;
    memcpy(0, v16, v17);
    *v8 = 0;
    *(v8 + 8) = v15;
    *(v8 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }

    v10 = v20;
  }

  else
  {
    *v14 = v12;
    v15 = (v14 + 1);
  }

  *(v8 + 8) = v15;
  *(v8 + 24) = v10;
LABEL_23:
  ++*(v8 + 48);
  *(v8 + 32) = v10 + 7;
  v10[1] = 0;
  v10[2] = 0;
  *v10 = a2;
  *(v10 + 6) = 0;
  v10[4] = 0;
  v10[5] = 0;
  *(v10 + 12) = 0;
  v23 = *(v8 + 56);
  v24 = *(v8 + 64);
  v25 = 0x2E8BA2E8BA2E8BA3 * ((v24 - v23) >> 3);
  if (v25 <= a3)
  {
    v47 = v24 - v23;
    v48 = *(v8 + 64);
    v26 = v48;
    v49 = *(v8 + 56);
    v27 = v49;
    v52 = a3;
    do
    {
      __p = v25;
      v54 = 1;
      v55 = v25;
      v56[0] = v56;
      v56[1] = v56;
      v56[2] = 0;
      v57 = 2;
      v58 = v25;
      v59[0] = v59;
      v59[1] = v59;
      v59[2] = 0;
      v28 = *(v8 + 72);
      if (v26 >= v28)
      {
        v30 = 0x2E8BA2E8BA2E8BA3 * ((v26 - v27) >> 3);
        if ((v30 + 1) > 0x2E8BA2E8BA2E8BALL)
        {
          sub_299212A8C();
        }

        v31 = 0x2E8BA2E8BA2E8BA3 * ((v28 - v27) >> 3);
        v32 = 2 * v31;
        if (2 * v31 <= v30 + 1)
        {
          v32 = v30 + 1;
        }

        if (v31 >= 0x1745D1745D1745DLL)
        {
          v33 = 0x2E8BA2E8BA2E8BALL;
        }

        else
        {
          v33 = v32;
        }

        if (v33)
        {
          if (v33 <= 0x2E8BA2E8BA2E8BALL)
          {
            operator new();
          }

          sub_29919600C();
        }

        v34 = 88 * v30;
        sub_2993C2B44(88 * v30, &__p);
        v36 = *(v8 + 56);
        v35 = *(v8 + 64);
        v37 = 88 * v30 + v36 - v35;
        if (v35 != v36)
        {
          v38 = v34 + v36 - v35;
          v39 = *(v8 + 56);
          do
          {
            sub_2993C2B44(v38, v39);
            v39 += 88;
            v38 += 88;
          }

          while (v39 != v35);
          do
          {
            sub_2993C290C(v36 + 8);
            sub_2993C290C(v36 + 3);
            v36 += 88;
          }

          while (v36 != v35);
          v36 = *(v8 + 56);
        }

        v29 = v34 + 88;
        *(v8 + 56) = v37;
        *(v8 + 64) = v34 + 88;
        *(v8 + 72) = 0;
        if (v36)
        {
          operator delete(v36);
        }

        a3 = v52;
      }

      else
      {
        sub_2993C2B44(v26, &__p);
        v29 = v26 + 88;
        *(v8 + 64) = v26 + 88;
      }

      *(v8 + 64) = v29;
      sub_2993C290C(v59);
      sub_2993C290C(v56);
      v27 = *(v8 + 56);
      v26 = *(v8 + 64);
      v25 = 0x2E8BA2E8BA2E8BA3 * ((v26 - v27) >> 3);
    }

    while (v25 <= a3);
    if (*(v8 + 88))
    {
      if (v48 != v49)
      {
        v40 = v27 + v47;
        v41 = *(v40 - 56);
        v43 = *v41;
        v42 = v41[1];
        *(v43 + 8) = v42;
        *v42 = v43;
        --*(v40 - 48);
        operator delete(v41);
        v44 = *(v8 + 88);
        v45 = *(v8 + 64) - *(v8 + 56);
      }

      operator new();
    }

    v46 = *(v8 + 56);
  }

  operator new();
}

void sub_2993C0968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993C09A0(uint64_t a1)
{
  v3 = 0.0;
  v1 = a1 + 88;
  v2 = (*(*a1 + 64))(a1, &v3, 1);
  sub_2992580C4(v1, v2, v3);
}

void sub_2993C0A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a1 + 8) + 56);
  if (*(*(a1 + 8) + 64) == v5)
  {
    return;
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x4002000000;
  v57 = sub_2993C0E18;
  v60[0] = 0;
  v60[1] = 0;
  v58 = sub_2993C0E54;
  v59 = v60;
  v46 = 0;
  v47 = &v46;
  v48 = 0x4002000000;
  v49 = sub_2993C0E60;
  v50 = sub_2993C0E84;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x5002000000;
  v43[3] = sub_2993C0E9C;
  v43[4] = sub_2993C0F0C;
  memset(v44, 0, sizeof(v44));
  v45 = 1065353216;
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 0x40000000;
  v35 = sub_2993C0F14;
  v36 = &unk_29EF21FC0;
  v39 = &v46;
  v40 = &v54;
  v41 = v43;
  v42 = a1;
  v37 = a4;
  v38 = a3;
  v9 = v5 + 24;
  for (i = *(v5 + 32); i != v9; i = *(i + 8))
  {
    v35(v34, **(i + 16), *(*(i + 16) + 40));
  }

  v11 = *(a1 + 48);
  v13 = *v11;
  v12 = v11[1];
  if (v13 == v12)
  {
    v15 = v55;
  }

  else
  {
    v14 = (*(**(v12 - 8) + 24))(*(v12 - 8));
    v15 = v55;
    if (v14)
    {
LABEL_25:
      v23 = a2 + 8;
      sub_29921B8CC(a2, *(a2 + 8));
      *a2 = v15[5];
      v24 = v15 + 6;
      v25 = v15[6];
      *(a2 + 8) = v25;
      v26 = v15[7];
      *(a2 + 16) = v26;
      if (v26)
      {
        *(v25 + 16) = v23;
        v15[5] = v24;
        *v24 = 0;
        v15[7] = 0;
      }

      else
      {
        *a2 = v23;
      }

      v33 = 0;
      v27 = *(v47 + 5);
      v28 = v47[6];
      v29 = v47[5];
      if (v28 == v29)
      {
        (*(a5 + 16))(a5, 0, &v33);
      }

      else
      {
        do
        {
          v33 = 0;
          v30 = *(*v29 + 40);
          v31 = *(*v29 + 48);
          if (v30 != v31)
          {
            v32 = v30 + 8;
            do
            {
              (*(a5 + 16))(a5, **(v32 - 8), &v33);
              if (v33)
              {
                break;
              }

              v20 = v32 == v31;
              v32 += 8;
            }

            while (!v20);
          }

          v29 += 8;
        }

        while (v29 != v28);
      }

      goto LABEL_37;
    }
  }

  if (v15[7] != *(a2 + 16))
  {
    goto LABEL_25;
  }

  v16 = v15[5];
  if (v16 != v15 + 6)
  {
    v17 = *a2;
    while (v16[4] == v17[4])
    {
      v18 = v16[1];
      v19 = v16;
      if (v18)
      {
        do
        {
          v16 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v16 = v19[2];
          v20 = *v16 == v19;
          v19 = v16;
        }

        while (!v20);
      }

      v21 = v17[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v17[2];
          v20 = *v22 == v17;
          v17 = v22;
        }

        while (!v20);
      }

      v17 = v22;
      if (v16 == v15 + 6)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_25;
  }

LABEL_37:
  _Block_object_dispose(v43, 8);
  sub_29921ED28(v44);
  _Block_object_dispose(&v46, 8);
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  _Block_object_dispose(&v54, 8);
  sub_29921B8CC(&v59, v60[0]);
}

void sub_2993C0DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  sub_29921ED28(v32 + 40);
  _Block_object_dispose(&a31, 8);
  v35 = *(v32 + 120);
  if (v35)
  {
    *(v32 + 128) = v35;
    operator delete(v35);
  }

  _Block_object_dispose((v33 - 144), 8);
  sub_29921B8CC(v31 + 40, *(v32 + 192));
  _Unwind_Resume(a1);
}

void *sub_2993C0E18(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

__n128 sub_2993C0E60(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_2993C0E84(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t sub_2993C0E9C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  v5 = *(a2 + 56);
  v3 = a2 + 56;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 56) = v5;
  *(result + 48) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 64) = v7;
  *(result + 72) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 48);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 56;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

void sub_2993C0F14(void *a1, uint64_t *a2, uint64_t a3)
{
  v29[0] = a3;
  v6 = a1[9];
  v7 = *a2;
  if (*a2 && *(v7 + 8) <= 1uLL && (*(v7 + 40) & 0x10) == 0)
  {
    return;
  }

  if (sub_2992F69F4(v6[6], a3, 1))
  {
    if (!v7 || !sub_299397868(v7, (v6 + 15)) && ((*(a1[4] + 16))() & 1) == 0)
    {
      return;
    }

    goto LABEL_30;
  }

  v8 = v6[18];
  v9 = v6[19];
  if (v8 != v9)
  {
    while (*v8 != a3)
    {
      if (++v8 == v9)
      {
        v8 = v6[19];
        break;
      }
    }
  }

  v10 = sub_299230B70((*(a1[8] + 8) + 40), v29);
  if (v10)
  {
    v11 = *(v10 + 24);
  }

  else
  {
    v11 = (*(a1[5] + 16))();
    v12 = *(a1[8] + 8);
    v29[2] = v29;
    *(sub_29930F7D0((v12 + 40), v29) + 24) = v11;
  }

  if (v8 != v9 || (v11 & 1) != 0)
  {
    v13 = v29[0];
    v14 = *(v6[1] + 56);
    if (v29[0] < 0x2E8BA2E8BA2E8BA3 * ((*(v6[1] + 64) - v14) >> 3) - 1)
    {
      if (v8 != v9)
      {
        goto LABEL_24;
      }

      v15 = v6[8];
      if (0x21CFB2B78C13521DLL * ((v6[9] - v15) >> 3) <= v29[0])
      {
        sub_2993C2970(v6 + 8, v29[0] + 1);
        v15 = v6[8];
      }

      if (*(v15 + 424 * v13) == 1)
      {
        v13 = v29[0];
        v14 = *(v6[1] + 56);
LABEL_24:
        if (!*(v14 + 88 * v13 + 40))
        {
          return;
        }

        if (v7)
        {
          if ((*(v7 + 40) & 0x10) != 0)
          {
            if (!sub_299397868(v7, (v6 + 15)))
            {
              return;
            }
          }

          else if (!(((*(v7 + 40) & 2) == 0) | v11 & 1))
          {
            return;
          }
        }

LABEL_30:
        v16 = *(a1[6] + 8);
        v18 = v16[6];
        v17 = v16[7];
        if (v18 >= v17)
        {
          v20 = v16[5];
          v21 = v18 - v20;
          v22 = (v18 - v20) >> 3;
          v23 = v22 + 1;
          if ((v22 + 1) >> 61)
          {
            sub_299212A8C();
          }

          v24 = v17 - v20;
          if (v24 >> 2 > v23)
          {
            v23 = v24 >> 2;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF8)
          {
            v25 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            if (!(v25 >> 61))
            {
              operator new();
            }

            sub_29919600C();
          }

          v26 = (v18 - v20) >> 3;
          v27 = (8 * v22);
          v28 = (8 * v22 - 8 * v26);
          *v27 = a2;
          v19 = v27 + 1;
          memcpy(v28, v20, v21);
          v16[5] = v28;
          v16[6] = v19;
          v16[7] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v18 = a2;
          v19 = v18 + 8;
        }

        v16[6] = v19;
        sub_2993C2BE8(*(a1[7] + 8) + 40, v29[0]);
      }
    }
  }
}

void sub_2993C121C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2000000000;
  v39 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2000000000;
  v37[3] = sub_2993B2710(*(*(a1 + 40) + 4));
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2000000000;
  v32 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v16 = *(*(a1 + 40) + 24) & 0x400000;
  v17 = v16 | a6 & 1;
  v18 = v17 == 0;
  if (v16 | a6 & 0xF || !v17)
  {
    v19 = a6 & 9 | (4 * ((a6 >> 1) & 1)) | ((a6 & 4) >> 1) | (v16 >> 18);
    if (v17)
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 | 0x20;
    }

    v30 = v20;
  }

  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 0x40000000;
  v22[2] = sub_2993C14A4;
  v22[3] = &unk_29EF21FE8;
  v23 = a6 & 1;
  v24 = (a6 & 4) >> 2;
  v25 = v18;
  v26 = a4;
  v22[6] = &v27;
  v22[7] = &v33;
  v22[12] = a5;
  v22[13] = a2;
  v22[8] = v38;
  v22[9] = v37;
  v22[10] = v31;
  v22[11] = a1;
  v22[4] = a8;
  v22[5] = a7;
  (*(*a2 + 64))(a2, a3, v22);
  v21 = v34[3];
  if (v21)
  {
    sub_2993C17B8(a1, v21, a5, *(v28 + 6));
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v38, 8);
}

uint64_t sub_2993C14A4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *a2;
  v4 = *(*a2 + 4);
  if (v4)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = *(result + 112) & ((v4 & 0x4000) >> 14);
  }

  v6 = *(result + 88);
  v7 = *(*(*(result + 48) + 8) + 24);
  if (*(result + 113) != 1 || *(result + 114) != 1)
  {
    goto LABEL_28;
  }

  if (v7)
  {
    if ((v4 & 0x80) == 0)
    {
      if ((v7 & 2) != 0)
      {
        if ((v4 & 0x400) == 0)
        {
          goto LABEL_28;
        }
      }

      else if ((v7 & 8) != 0)
      {
        if ((~v4 & 0x300) != 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if ((v7 & 4) == 0)
        {
          goto LABEL_25;
        }

        if ((v4 & 0x200) == 0)
        {
          goto LABEL_28;
        }
      }
    }

LABEL_36:
    LOBYTE(v7) = v7 & 0xF9 | 4;
    goto LABEL_37;
  }

  if ((v7 & 2) != 0)
  {
    if ((v7 & 0x10) != 0)
    {
      if ((v4 & 0x2000) == 0)
      {
        goto LABEL_28;
      }
    }

    else if ((v4 & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_36;
  }

  if ((v7 & 8) != 0)
  {
    if ((~v4 & 0x210) != 0)
    {
      goto LABEL_25;
    }

LABEL_22:
    if ((v4 & 0x8000) == 0 || (v7 & 0x20) == 0)
    {
      goto LABEL_36;
    }

LABEL_28:
    if (v5)
    {
      goto LABEL_37;
    }

    if ((*(result + 114) & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  if ((v4 & 0x20) != 0 && (v7 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  if (v5)
  {
    goto LABEL_37;
  }

LABEL_30:
  if ((*(result + 112) & 1) == 0 && (v4 & 0x8000) != 0 && (v7 & 0xC) != 0)
  {
LABEL_37:
    if (*(result + 115) != 1)
    {
      return result;
    }
  }

LABEL_38:
  v8 = *(*(result + 56) + 8);
  v9 = *(v8 + 24);
  if (!v9 || *v3 || *(result + 96) == *(v9 + 16) || (*(*(*(result + 64) + 8) + 24) & 1) == 0)
  {
    if (v7)
    {
      if ((v4 & 0x80) == 0)
      {
        if ((v7 & 2) != 0)
        {
          if ((v4 & 0x400) == 0)
          {
            goto LABEL_60;
          }
        }

        else if ((v7 & 8) != 0)
        {
          if ((~v4 & 0x300) != 0)
          {
            goto LABEL_60;
          }
        }

        else if ((v4 & 0x200) == 0 || (v7 & 4) == 0)
        {
LABEL_60:
          if (*v3)
          {
            if (v9)
            {
              goto LABEL_62;
            }
          }

          else
          {
            *(*(*(result + 64) + 8) + 24) = 1;
            if (v9)
            {
              goto LABEL_62;
            }
          }

          v15 = *(result + 32);
          *(v8 + 24) = (*(*(v2 + 32) + 16))();
LABEL_62:
          v10 = (*(**(v2 + 104) + 16))(*(v2 + 104));
          if (v10 != 14 && v10 != 9)
          {
            v16 = (*(**(v2 + 104) + 24))(*(v2 + 104));
            v17 = *(v6 + 16);
            v18 = *(*(*(v2 + 72) + 8) + 24);
            v19 = *(v8 + 24);
            if ((v16 & 1) == 0)
            {
              sub_2993B3688();
            }

            sub_2993B3940();
          }

          v12 = *(v6 + 16);
          v13 = *(*(*(v2 + 72) + 8) + 24);
          v14 = *(v8 + 24);
          sub_2993B37EC();
        }
      }
    }

    else if ((v7 & 2) != 0)
    {
      if ((v7 & 0x10) != 0)
      {
        if ((v4 & 0x2000) == 0)
        {
          goto LABEL_60;
        }
      }

      else if ((v4 & 0x40) == 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if ((v7 & 8) != 0)
      {
        if ((~v4 & 0x210) != 0)
        {
          goto LABEL_60;
        }
      }

      else if ((v4 & 0x20) == 0 || (v7 & 4) == 0)
      {
        goto LABEL_60;
      }

      if ((v4 & 0x8000) != 0 && (v7 & 0x20) != 0)
      {
        goto LABEL_60;
      }
    }
  }

  return result;
}

uint64_t sub_2993C17B8(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (*(a2 + 40) != *(a2 + 48))
  {
    v4 = *(*(a1 + 40) + 24);
    v5 = 2;
    v6 = 5;
    if ((a4 & 4) == 0)
    {
      v6 = 10;
    }

    if ((a4 & 2) == 0)
    {
      v5 = v6;
    }

    v7 = 10;
    if ((v4 & 0x8000) == 0)
    {
      v7 = 2;
    }

    if ((v4 & 0x4000) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    *(*(a1 + 56) + 32) = v8;
    sub_2993C01F4(a1, a2, a3);
  }

  return a1;
}

void sub_2993C1810(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, unsigned int a7, int a8, uint64_t a9)
{
  v17 = (*(*a2 + 16))(a2);
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 0x40000000;
  v18[2] = sub_2993C1914;
  v18[3] = &unk_29EF22008;
  v18[4] = a1;
  v18[5] = a6;
  v18[6] = a3;
  v18[7] = a2;
  v19 = a8;
  v20 = v17;
  sub_2993C121C(a1, a2, a3, a4, a5, a7, a9, v18);
}

void sub_2993C1914(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  (*(**(a1 + 56) + 112))(*(a1 + 56), *(a1 + 48));
  v5 = *(a1 + 64);
  sub_2992A8B8C(*(*(v3 + 40) + 24), *(a1 + 68), 0);

  sub_2993B3404();
}

void sub_2993C19B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 16);
  sub_2992A8B8C(*(*(a1 + 40) + 24), a4, 1);
  sub_2993B3404();
}

void sub_2993C1AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, unsigned int a7, uint64_t a8)
{
  v16 = (*(*a2 + 16))(a2);
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 0x40000000;
  v17[2] = sub_2993C1BE8;
  v17[3] = &unk_29EF22028;
  v17[4] = a1;
  v17[5] = a4;
  v17[6] = a3;
  v17[7] = a2;
  v18 = v16;
  sub_2993C121C(a1, a2, a3, a5, a6, a7, a8, v17);
}

void sub_2993C1BE8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  (*(**(a1 + 56) + 112))(*(a1 + 56), *(a1 + 48));
  sub_2992A8B8C(*(*(v3 + 40) + 24), *(a1 + 64), 0);

  sub_2993B35B0();
}

uint64_t sub_2993C1D24(uint64_t a1, void *a2, int a3)
{
  v3 = 24;
  if (a3)
  {
    v3 = 16;
  }

  v4 = *(*(*(a1 + 16) + v3) + 8);
  if (v4[10])
  {
    v5 = *v4;
    if (!a2)
    {
      goto LABEL_11;
    }

    if (v5)
    {
      v6 = *(v5 + 16);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_10;
  }

  v5 = 0;
  v6 = 0;
  if (a2)
  {
LABEL_10:
    *a2 = v6;
  }

LABEL_11:
  if (v5)
  {
    return v5 + 24;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993C1D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2000000000;
  v17 = 0;
  v3 = *(*(*(a1 + 16) + 16) + 8);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v10 = sub_2993C1EBC;
  v11 = &unk_29EF22050;
  v12 = a3;
  v13 = v16;
  v14 = &v18;
  v15 = a2;
  v22 = 0;
  v4 = v3[10];
  if (v4)
  {
    v5 = v4 - 1;
    do
    {
      v6 = v5;
      v10(v9, *v3, &v22);
      if (v22)
      {
        break;
      }

      v5 = v6 - 1;
      ++v3;
    }

    while (v6);
    v7 = v19[3];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v18, 8);
  return v7;
}

void sub_2993C1E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 72), 8);
  _Unwind_Resume(a1);
}

void *sub_2993C1EBC(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = *(result[5] + 8);
  if (*(v3 + 24) == 1)
  {
    v6 = result;
    v7 = *(a2 + 32);
    v8 = result[7];
    if (v8)
    {
      *v8 = *(a2 + 16);
    }

    v9 = result[4];
    result = (*(v6[4] + 16))();
    if (result)
    {
      *(*(v6[6] + 8) + 24) = a2 + 24;
      *a3 = 1;
    }
  }

  else
  {
    *(v3 + 24) = 1;
  }

  return result;
}

uint64_t sub_2993C1F4C(uint64_t result, uint64_t a2)
{
  v2 = *(*(*(result + 16) + 16) + 8);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 0x40000000;
  v8 = sub_2993C2004;
  v9 = &unk_29EF22078;
  v10 = a2;
  v11 = 0;
  v3 = v2[10];
  if (v3)
  {
    v4 = v3 - 1;
    do
    {
      v5 = v4;
      v6 = *v2++;
      result = (v8)(v7, v6, &v11);
      if (v11)
      {
        break;
      }

      v4 = v5 - 1;
    }

    while (v5);
  }

  return result;
}

void sub_2993C201C(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v12[3] = 0;
  v2 = *(*(*(a1 + 16) + 16) + 8);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v7 = sub_2993C2118;
  v8 = &unk_29EF220A0;
  v9 = v12;
  v10 = a1;
  v11 = a2;
  v13 = 0;
  v3 = v2[10];
  if (v3)
  {
    v4 = v3 - 1;
    do
    {
      v5 = v4;
      v7(v6, *v2, &v13);
      if (v13)
      {
        break;
      }

      v4 = v5 - 1;
      ++v2;
    }

    while (v5);
  }

  _Block_object_dispose(v12, 8);
}

void sub_2993C2100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2993C2118(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(**(a1 + 40) + 120))(*(a1 + 40), a2 + 24, "NBest: ", *(a2 + 16));
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 24) + 1;
  *(v6 + 24) = v7;
  if (v7 == *(a1 + 48))
  {
    *a3 = 1;
  }

  return result;
}

void sub_2993C219C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_29930AF10();
  if (*v8 == 1 && (*(v8 + 4) & 0x4008) != 0)
  {
    v9 = sub_29930AF10();
    sub_29930B58C(v9, 16392, a3, v10, v11, v12, v13, v14, v24);
    Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
    v25[1] = Mutable;
    if (a2)
    {
      v16 = (*(**a2 + 56))();
      v17 = CFStringCreateWithCharacters(0, *v16, *(v16 + 8));
      sub_29922E740(*(*(a1 + 40) + 40), v17);
    }

    sub_299277A90(Mutable, v25);
    v18 = v25[0];
    sub_29930B58C(v9, 16392, ", prob: %f surface: %s\n", v19, v20, v21, v22, v23, *&a4);
    if (v18)
    {
      MEMORY[0x29C29BF70](v18, 0x1000C8077774924);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

void sub_2993C2398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (v5)
  {
    MEMORY[0x29C29BF70](v5, v4);
  }

  sub_29924A4BC(va, 0);
  _Unwind_Resume(a1);
}

void sub_2993C23EC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x4002000000;
    v24[3] = sub_2993C0E18;
    v26[0] = 0;
    v26[1] = 0;
    v24[4] = sub_2993C0E54;
    v25 = v26;
    v4 = *(a1 + 8);
    v5 = v4 + 7;
    v6 = v4[8];
    v18 = a2 + 1;
    if (a2 + 1 < 0x2E8BA2E8BA2E8BA3 * ((v6 - v4[7]) >> 3))
    {
      v20[0] = MEMORY[0x29EDCA5F8];
      v20[1] = 0x40000000;
      v21 = sub_2993C27D4;
      v22 = &unk_29EF220C8;
      v23 = v24;
      while (1)
      {
        v7 = v6 - 24;
        v8 = *(v6 - 16);
        if (v8 != v6 - 24)
        {
          do
          {
            v9 = *(v8 + 16);
            v10 = *(v9 + 16);
            if (v10 <= v3)
            {
              v11 = *(v9 + 8);
              v12 = *v5;
              v21(v20, v10);
              v14 = *v11;
              v13 = v11[1];
              *(v14 + 8) = v13;
              *v13 = v14;
              --*(v12 + 88 * v10 + 40);
              operator delete(v11);
              v3 = a2;
            }

            v8 = *(v8 + 8);
          }

          while (v8 != v7);
          v6 = v4[8];
        }

        sub_2993C28B0(v5, v6 - 88);
        v6 = v4[8];
        if (0x2E8BA2E8BA2E8BA3 * ((v6 - v4[7]) >> 3) <= v18)
        {
          sub_2993C290C((v6 - 64));
          v15 = v4[11];
          operator new();
        }
      }
    }

    sub_2993C2970((a1 + 64), a2);
    _Block_object_dispose(v24, 8);
    sub_29921B8CC(&v25, v26[0]);
  }

  else
  {
    v16 = *(a1 + 8);
    sub_29930B9C8(v16);
    sub_2993C28B0((v16 + 56), *(v16 + 56));
    sub_2993B3398(*(a1 + 16));
    v17 = *(a1 + 56);
    *(a1 + 72) = *(a1 + 64);
    *(v17 + 16) = 1;
  }

  *(a1 + 95) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = *(a1 + 120);
  *(a1 + 152) = *(a1 + 144);
}

void sub_2993C27A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  _Block_object_dispose(&a17, 8);
  sub_29921B8CC(&a22, a23);
  _Unwind_Resume(a1);
}

void *sub_2993C2818(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_2993C285C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2993C28B0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_2993C28B0(void *result, uint64_t a2)
{
  v3 = result;
  for (i = result[1]; i != a2; i -= 88)
  {
    sub_2993C290C((i - 24));
    result = sub_2993C290C((i - 64));
  }

  v3[1] = a2;
  return result;
}

void *sub_2993C290C(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_2993C2970(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0x21CFB2B78C13521DLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      a1[1] = v3 + 424 * a2;
    }
  }

  else
  {
    v7 = a1[2];
    if (0x21CFB2B78C13521DLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0x9A90E7D95BC609)
      {
        v8 = 0x21CFB2B78C13521DLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x4D4873ECADE304)
        {
          v10 = 0x9A90E7D95BC609;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0x9A90E7D95BC609)
        {
          operator new();
        }

        sub_29919600C();
      }

      sub_299212A8C();
    }

    v11 = v4 + 424 * v6;
    do
    {
      *v4 = 0;
      *(v4 + 408) = 0;
      *(v4 + 416) = 0x7FEFFFFFFFFFFFFFLL;
      memset_pattern16((v4 + 8), &unk_299428B70, 0x190uLL);
      v4 += 424;
    }

    while (v4 != v11);
    a1[1] = v11;
  }
}

uint64_t sub_2993C2B44(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 24) = result + 24;
  *(result + 32) = result + 24;
  *(result + 40) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 24);
    v3 = *(a2 + 32);
    v5 = *(v4 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = *(result + 24);
    *(v7 + 8) = v3;
    *v3 = v7;
    *(result + 24) = v4;
    *(v4 + 8) = result + 24;
    *(result + 40) = v2;
    *(a2 + 40) = 0;
  }

  *(result + 48) = *(a2 + 48);
  *(result + 64) = result + 64;
  *(result + 72) = result + 64;
  *(result + 80) = 0;
  v8 = *(a2 + 80);
  if (v8)
  {
    v10 = *(a2 + 64);
    v9 = *(a2 + 72);
    v11 = *(v10 + 8);
    v12 = *v9;
    *(v12 + 8) = v11;
    *v11 = v12;
    v13 = *(result + 64);
    *(v13 + 8) = v9;
    *v9 = v13;
    *(result + 64) = v10;
    *(v10 + 8) = result + 64;
    *(result + 80) = v8;
    *(a2 + 80) = 0;
  }

  return result;
}

uint64_t sub_2993C2BE8(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_2993C2CB4(uint64_t a1, __CFDictionary *a2, char **lpsrc, int a4)
{
  if (!lpsrc)
  {
    return 0;
  }

  v7 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F72C30, 0);
  if (result)
  {
    result = sub_299377154(result);
    if (result)
    {
      if (a4)
      {
        v9 = @"partialCandidateAccepted";
        v10 = *MEMORY[0x29EDB8F00];
LABEL_10:
        CFDictionaryAddValue(a2, v9, v10);
        return 1;
      }

      v11 = *(a1 + 32);
      if (!v11)
      {
        sub_2991A2240();
      }

      result = (*(*v11 + 48))(v11);
      if (result)
      {
        v10 = result;
        v9 = @"acceptedPartialCandidateSyllableLengths";
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_2993C2DE0(uint64_t a1)
{
  sub_2993326CC(a1 + 8);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993C2E2C(uint64_t a1, uint64_t a2)
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

uint64_t sub_2993C2EC4()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v26 = *MEMORY[0x29EDCA608];
  v10 = *(v0 + 24);
  v11 = *v0;
  if (v10 <= 1)
  {
    v12 = v10 | 0x2000;
    v13 = *(v9 + 32);
    v14 = 8 * (v10 | 0x2000);
    if (v13)
    {
      v11 = v13(v11, v14 | 0x10, *(v9 + 40));
      *v9 = v11;
      if (!v11)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = malloc_type_realloc(v11, v14 | 0x10, 0x1000040451B5BE8uLL);
      *v9 = v11;
      if (*(v9 + 80))
      {
        if (!v11)
        {
LABEL_23:
          result = 0xFFFFFFFFLL;
          goto LABEL_24;
        }
      }

      else
      {
        *(v9 + 80) = 1;
        if (!v11)
        {
          goto LABEL_23;
        }
      }
    }

    *(v9 + 8) = v11 + 4;
    if (!*(v9 + 32))
    {
      bzero(&v11[2 * *(v9 + 24) + 4], 8 * (v12 - *(v9 + 24)));
      v11 = *v9;
    }

    *(v9 + 24) = v12;
  }

  *v11 = 0x1074726965;
  v11[2] = 65793;
  *(*(v9 + 8) + 8) = 1;
  *(v9 + 16) = 1;
  *(v9 + 76) = 0;
  *(v9 + 48) = v6;
  *(v9 + 56) = v4;
  *(v9 + 64) = v2;
  v24[1] = 0;
  v24[2] = v8;
  v24[3] = 0;
  v15 = sub_2993C311C(v9, v24, v25);
  *(v9 + 72) = 2;
  if (sub_2993C31E8(v9, 1, v15, v25) < 1)
  {
    goto LABEL_23;
  }

  v16 = *(v9 + 16);
  v17 = *v9;
  *(*v9 + 12) = v16;
  if ((v16 - *(v9 + 24)) >= 0xFFFFFFFFFFFFFEFELL)
  {
    v18 = (v16 + 259);
    v19 = *(v9 + 32);
    if (v19)
    {
      v20 = *(v9 + 40);
      v21 = v19();
      *v9 = v21;
    }

    else
    {
      v21 = malloc_type_realloc(v17, 8 * v18 + 16, 0x1000040451B5BE8uLL);
      *v9 = v21;
      if (!*(v9 + 80))
      {
        *(v9 + 80) = 1;
      }
    }

    if (v21)
    {
      *(v9 + 8) = v21 + 16;
      if (!*(v9 + 32))
      {
        bzero(&v21[8 * *(v9 + 24) + 16], 8 * (v18 - *(v9 + 24)));
      }

      *(v9 + 24) = v18;
    }

    else
    {
      *(v9 + 76) = -1;
    }
  }

  result = *(v9 + 76);
LABEL_24:
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2993C311C(uint64_t a1, void *a2, uint64_t a3)
{
  if ((*(a1 + 76) & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = a2[2];
  if (v3 >= v4)
  {
    return 0;
  }

  result = 0;
  v7 = *(a1 + 56);
  v8 = 0xFFFFLL;
  do
  {
    v9 = *(v7 + 8 * v3);
    v10 = a2[3];
    if (v9 < v10)
    {
      goto LABEL_10;
    }

    if (v9 > v10)
    {
      v11 = *(*(*(a1 + 48) + 8 * v3) + v10) + 1;
    }

    else
    {
      v11 = 0;
    }

    if (v11 < v8)
    {
      result = 0;
      *(a1 + 76) = -1;
      return result;
    }

    if (v11 == v8)
    {
LABEL_10:
      v11 = v8;
    }

    else
    {
      if (result)
      {
        *(a3 - 16 + 32 * result) = v3;
      }

      v12 = a3 + 32 * result;
      *v12 = v11;
      *(v12 + 8) = v3;
      *(v12 + 16) = 0;
      *(v12 + 24) = v10 + 1;
      ++result;
      v4 = a2[2];
    }

    ++v3;
    v8 = v11;
  }

  while (v3 < v4);
  if (result)
  {
    *(a3 + 32 * result - 16) = v4;
  }

  return result;
}

uint64_t sub_2993C31E8(uint64_t a1, int a2, unint64_t a3, __int16 *a4)
{
  if ((*(a1 + 76) & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = a4;
  v5 = a3;
  v8 = 0;
  v37 = &a4[16 * a3];
  v10 = a4 + 16;
  v9 = *a4;
  v11 = *(v37 - 16) - v9;
  if (*(a1 + 72) <= (v9 + 1))
  {
    v12 = v9 + 1;
  }

  else
  {
    v12 = *(a1 + 72);
  }

  v13 = *(a1 + 24);
  v14 = a3 - 1;
  while (1)
  {
    if (v11 + v12 >= v13)
    {
      v13 += 0x2000;
      v15 = *(a1 + 32);
      v16 = *a1;
      v17 = 8 * v13;
      if (v15)
      {
        v18 = v15(v16, v17 + 16, *(a1 + 40));
        *a1 = v18;
      }

      else
      {
        v18 = malloc_type_realloc(v16, v17 + 16, 0x1000040451B5BE8uLL);
        *a1 = v18;
        if (!*(a1 + 80))
        {
          *(a1 + 80) = 1;
        }
      }

      if (!v18)
      {
        v35 = -1;
LABEL_38:
        v20 = 0;
        *(a1 + 76) = v35;
        return v20;
      }

      *(a1 + 8) = v18 + 16;
      if (!*(a1 + 32))
      {
        bzero(&v18[8 * *(a1 + 24) + 16], 8 * (v13 - *(a1 + 24)));
      }

      *(a1 + 24) = v13;
    }

    v19 = *(a1 + 8);
    if (!*(v19 + 8 * v12 + 4))
    {
      break;
    }

LABEL_23:
    ++v12;
  }

  if (!v8)
  {
    *(a1 + 72) = v12 + 1;
  }

  v20 = v12 - *v4;
  v21 = v14;
  v22 = v10;
  if (v5 >= 2)
  {
    while (1)
    {
      v23 = *v22;
      v22 += 16;
      if (*(v19 + 8 * (v20 + v23) + 4))
      {
        break;
      }

      if (!--v21)
      {
        v24 = v4;
        v25 = v5;
        goto LABEL_24;
      }
    }

    v8 = 1;
    goto LABEL_23;
  }

  v24 = v4;
  v25 = v5;
  if (v5)
  {
    do
    {
LABEL_24:
      v26 = *v24;
      v24 += 16;
      *(v19 + 8 * (v20 + v26) + 4) = a2;
      --v25;
    }

    while (v25);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v20 + *(v37 - 16);
  if (*(a1 + 16) < v28)
  {
    *(a1 + 16) = v28;
  }

  if ((v27 & 1) == 0)
  {
    do
    {
      v29 = *v4;
      v30 = malloc_type_malloc(0x2020uLL, 0x100004095D96C66uLL);
      if (!v30)
      {
        __assert_rtn("__insert_nodes", "trie_build.cpp", 112, "new_children");
      }

      v31 = v30;
      v32 = (v20 + v29);
      v33 = sub_2993C311C(a1, v4, v30);
      if (v33)
      {
        v34 = sub_2993C31E8(a1, v32, v33, v31);
        if (v34 <= 0)
        {
          free(v31);
          v35 = -2;
          goto LABEL_38;
        }
      }

      else
      {
        v34 = -*(*(a1 + 64) + 4 * *(v4 + 1));
      }

      *(*(a1 + 8) + 8 * v32) = v34;
      free(v31);
      v4 += 16;
      --v5;
    }

    while (v5);
  }

  return v20;
}

uint64_t sub_2993C349C(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_2A1F68348;
  *(a1 + 104) = 0;
  v2 = a1 + 112;
  *(a1 + 112) = &unk_2A1F68348;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v3 = (a1 + 136);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_299257A28(a1 + 96, "UTF-8", "UTF-16LE");
  sub_299257A28(v2, "UTF-16LE", "UTF-8");
  if (*(a1 + 159) < 0)
  {
    *(a1 + 144) = 1;
    v3 = *(a1 + 136);
  }

  else
  {
    *(a1 + 159) = 1;
  }

  *v3 = 9;
  return a1;
}

void sub_2993C359C(_Unwind_Exception *a1)
{
  if (*(v1 + 159) < 0)
  {
    operator delete(*v5);
  }

  sub_299257C90(v3);
  sub_299257C90(v2);
  v7 = *(v1 + 64);
  if (v7)
  {
    *(v1 + 72) = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    *(v1 + 48) = v8;
    operator delete(v8);
  }

  sub_2992751B4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2993C35F0(uint64_t a1)
{
  sub_2993C3668(a1);
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  sub_299257C90((a1 + 112));
  sub_299257C90((a1 + 96));
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  return sub_2992751B4(a1);
}

uint64_t sub_2993C3668(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  v3 = *(result + 48);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2;
      if (*v2)
      {
        if (*(v4 + 71) < 0)
        {
          operator delete(*(v4 + 48));
        }

        if (*(v4 + 47) < 0)
        {
          operator delete(*(v4 + 24));
        }

        result = MEMORY[0x29C29BFB0](v4, 0x1012C405A3E5557);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = v1[5];
  }

  v1[6] = v2;
  v5 = v1[8];
  v6 = v1[9];
  if (v5 != v6)
  {
    do
    {
      v7 = *v5;
      if (*v5)
      {
        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        result = MEMORY[0x29C29BFB0](v7, 0x1012C40A71235E1);
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = v1[8];
  }

  v1[9] = v5;
  return result;
}

uint64_t sub_2993C3750(uint64_t a1, CFTypeRef cf, const __CFString *a3)
{
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F78168;
  *(a1 + 8) = 0;
  *(a1 + 24) = &unk_2A1F78248;
  if (cf)
  {
    v5 = CFRetain(cf);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 32) = v5;
  if (a3)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], a3);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 40) = Copy;
  return a1;
}

void *sub_2993C37F4(void *a1)
{
  *a1 = &unk_2A1F78168;
  a1[3] = &unk_2A1F78248;
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void sub_2993C3874(void *a1)
{
  sub_2993C37F4(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993C38AC(uint64_t a1, CFStringRef theString)
{
  v3 = *(a1 + 40);
  if (v3 != theString)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    if (theString)
    {
      Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], theString);
    }

    else
    {
      Copy = 0;
    }

    *(a1 + 40) = Copy;
  }

  return 1;
}

void *MecabraSyllablesCreateWithString(int a1, CFStringRef theString)
{
  if (!theString || CFStringGetLength(theString) > 299)
  {
    return 0;
  }

  switch(a1)
  {
    case 2:
      v5 = 0;
      goto LABEL_10;
    case 5:
      v5 = 2;
      goto LABEL_10;
    case 4:
      v5 = 1;
LABEL_10:
      v4 = malloc_type_malloc(0x4D8uLL, 0x10200404C7DE042uLL);
      sub_29929A720(v4);
      sub_29929A81C(theString, v4, v5);
      return v4;
  }

  return 0;
}

uint64_t MecabraSyllablesGetSyllableCount(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

const void *MecabraSyllablesGetSyllableAtIndex(uint64_t a1, CFIndex a2)
{
  if (!a1 || a2 < 0 || *(a1 + 32) <= a2)
  {
    return 0;
  }

  else
  {
    return CFArrayGetValueAtIndex(*(a1 + 16), a2);
  }
}

uint64_t MecabraSyllablesGetSyllableTypeAtIndex(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    if ((a2 & 0x8000000000000000) == 0 && *(v2 + 32) > a2)
    {
      v3 = *(v2 + 2 * a2 + 36);
      if ((v3 & 0x20) != 0)
      {
        return 3;
      }

      else if ((v3 & 2) != 0)
      {
        return 1;
      }

      else if ((v3 & 4) != 0)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }

  return result;
}

void MecabraSyllablesRelease(void *a1)
{
  if (a1)
  {
    sub_29929A7B4(a1);

    free(a1);
  }
}

void sub_2993C3BE8(uint64_t a1, uint64_t a2, __int16 a3)
{
  v10 = a3;
  v5 = *(a1 + 8);
  if (*a1 == v5)
  {
    v8 = 0.0;
    v9 = 0.0;
    sub_2993C3CD4(a1, a2, &v10, &v9, &v8);
    v9 = 0.0;
  }

  else
  {
    v6 = *(a2 + 40);
    v9 = *(a2 + 48) - *(v5 - 24);
    v7 = *(v5 - 16);
    v8 = v7 + hypot(*(a2 + 32) - *(v5 - 40), v6 - *(v5 - 32));
    sub_2993C3CD4(a1, a2, &v10, &v9, &v8);
    *&v9 = *(*(a1 + 24) - 0x3333333333333333 * (*(a1 + 8) - *a1) - 16) + *(a2 + 68);
  }

  sub_299266D00((a1 + 24), &v9);
}

uint64_t sub_2993C3CD4(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t *a4, uint64_t *a5)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 >= v8)
  {
    v13 = *a1;
    v14 = v7 - *a1;
    v15 = 0xCCCCCCCCCCCCCCCDLL * (v14 >> 3) + 1;
    if (v15 > 0x666666666666666)
    {
      sub_299212A8C();
    }

    v16 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v13) >> 3);
    if (2 * v16 > v15)
    {
      v15 = 2 * v16;
    }

    if (v16 >= 0x333333333333333)
    {
      v17 = 0x666666666666666;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      if (v17 <= 0x666666666666666)
      {
        operator new();
      }

      sub_29919600C();
    }

    v18 = *a3;
    v19 = *a4;
    v20 = 8 * (v14 >> 3);
    v21 = *a5;
    *v20 = *(a2 + 32);
    *(v20 + 16) = v19;
    *(v20 + 24) = v21;
    *(v20 + 32) = *(a2 + 68);
    *(v20 + 34) = v18;
    *(v20 + 36) = *(a2 + 64);
    v12 = v20 + 40;
    v22 = v20 - v14;
    memcpy((v20 - v14), v13, v14);
    *a1 = v22;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v9 = *a3;
    v10 = *a4;
    v11 = *a5;
    *v7 = *(a2 + 32);
    *(v7 + 16) = v10;
    *(v7 + 24) = v11;
    *(v7 + 32) = *(a2 + 68);
    *(v7 + 34) = v9;
    v12 = v7 + 40;
    *(v7 + 36) = *(a2 + 64);
  }

  *(a1 + 8) = v12;
  return v12 - 40;
}

BOOL sub_2993C3E58(uint64_t a1, CFStringRef theString)
{
  if (!theString || !CFStringGetLength(theString) || !sub_299276F48(theString))
  {
    return 0;
  }

  if ((*(a1 + 4) & 6) == 0)
  {
    Length = CFStringGetLength(theString);
    v11 = Length - 1;
    if (Length < 1)
    {
      return 1;
    }

    else
    {
      v12 = 0;
      do
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v12);
        v14 = sub_2993C3F88(CharacterAtIndex);
        v7 = v14;
        if (!v14)
        {
          break;
        }
      }

      while (v11 != v12++);
    }

    return v7;
  }

  v4 = MecabraSyllablesCreateWithString(*a1, theString);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = v4[8];
  if (v6 < 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    for (i = 0; i != v6; v7 = i >= v6)
    {
      if ((i >= v6 || (*(v4 + i + 18) & 0x22) != 2) && (i < v6 - 1 || (*(a1 + 4) & 4) == 0))
      {
        break;
      }

      ++i;
    }
  }

  sub_29929A7B4(v4);
  free(v5);
  return v7;
}

BOOL sub_2993C3F88(UniChar theChar)
{
  if (atomic_load_explicit(&qword_2A14615D8, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&qword_2A14615D8, &v4, sub_2993C400C);
  }

  return CFCharacterSetIsCharacterMember(qword_2A14615D0, theChar) != 0;
}

void sub_2993C400C()
{
  qword_2A14615D0 = CFCharacterSetCreateMutable(0);
  v3.location = 97;
  v3.length = 26;
  CFCharacterSetAddCharactersInRange(qword_2A14615D0, v3);
  v4.location = 65;
  v4.length = 26;
  CFCharacterSetAddCharactersInRange(qword_2A14615D0, v4);
  v0 = qword_2A14615D0;
  v1.location = 39;
  v1.length = 1;

  CFCharacterSetAddCharactersInRange(v0, v1);
}

uint64_t sub_2993C4070@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26[4] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14615E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14615E0))
  {
    operator new();
  }

  if ((*(*a1 + 24))(a1) >= 5)
  {
    (*(*a1 + 24))(a1);
  }

  sub_2993739CC(a1, a2);
  if ((*(*a1 + 24))(a1))
  {
    v26[0] = &unk_2A1F78738;
    v26[1] = v3 & 0xFFFFFFFF00000000;
    v26[2] = a2;
    v26[3] = v26;
    sub_2993C7B70(&qword_2A1461650, a1, v26);
  }

  result = (*(*a1 + 24))(a1);
  v7 = result - 2;
  if (result - 2 < 0)
  {
    goto LABEL_42;
  }

  while (2)
  {
    v8 = (a1[1] + 24 * v7);
    v10 = *v8;
    v9 = v8[1];
LABEL_8:
    if (v10 != v9)
    {
      v11 = *(v10 + 23);
      if (v11 < 0)
      {
        if (*(v10 + 1) != 1)
        {
          goto LABEL_39;
        }

        v12 = *v10;
      }

      else
      {
        v12 = v10;
        if (v11 != 1)
        {
          goto LABEL_39;
        }
      }

      v13 = 0;
      v14 = *v12;
      while (aBcdfghjklmpqrs_1[v13] != v14)
      {
        if (++v13 == 20)
        {
          goto LABEL_39;
        }
      }

      v15 = v8[3];
      v16 = v8[4];
      if (v15 == v16)
      {
        goto LABEL_39;
      }

      v17 = *(v10 + 1);
      if (v11 >= 0)
      {
        v17 = *(v10 + 23);
      }

      while (1)
      {
        v18 = *(v15 + 23);
        v19 = v18;
        if ((v18 & 0x80u) != 0)
        {
          v18 = *(v15 + 1);
        }

        if (v18 == v17)
        {
          if (!v17)
          {
LABEL_36:
            v23 = v10;
            if ((v11 & 0x80000000) != 0)
            {
              v23 = *v10;
            }

            v2 = v2 & 0xFFFFFFFF00000000 | 0xFFFFFF;
            result = sub_299259B8C(a2, v7, &unk_299428C16, 1uLL, *(v10 + 4), *v23, v2, -1, *(v10 + 3), 255);
LABEL_39:
            v10 += 24;
            goto LABEL_8;
          }

          v20 = *v10;
          if (v11 >= 0)
          {
            v20 = v10;
          }

          if (v19 >= 0)
          {
            v21 = v15;
          }

          else
          {
            v21 = *v15;
          }

          v22 = v17;
          while (*v20 == *v21)
          {
            ++v21;
            ++v20;
            if (!--v22)
            {
              goto LABEL_36;
            }
          }
        }

        v15 += 24;
        if (v15 == v16)
        {
          goto LABEL_39;
        }
      }
    }

    if (v7-- > 0)
    {
      continue;
    }

    break;
  }

LABEL_42:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_2993C46A4(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A1F78398;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  return a1;
}

unint64_t *sub_2993C4710@<X0>(unint64_t *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = &unk_2A1F74930;
  *(a4 + 8) = 0;
  v4 = (a4 + 8);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  if (a2)
  {
    v7 = result;
    sub_299373E34((a4 + 8), a2);
    v9 = 0;
    do
    {
      v10 = *(v7 + v9);
      sub_299259B8C(a4, v9++, __src, 1uLL, 1, 0, 0xFFFFFF, -1, 0.0, 255);
    }

    while (a2 != v9);
    result = sub_299374D28(v4, *(a4 + 16), *(a3 + 8), *(a3 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 16) - *(a3 + 8)) >> 3));
    *(a4 + 32) = 1;
  }

  return result;
}

void sub_2993C480C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v2 = v3;
  sub_299259FC8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2993C4830(int a1, int a2, int a3, char a4)
{
  if ((a4 & 0x20) != 0)
  {
    return sub_2993C4840(a1, a2, a3, a4);
  }

  else
  {
    return sub_2993C4A54(a1, a4);
  }
}

uint64_t *sub_2993C4840(int a1, int a2, int a3, char a4)
{
  if ((atomic_load_explicit(&qword_2A14615E8, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v8 = a3;
    v9 = a2;
    v10 = a4;
    v11 = __cxa_guard_acquire(&qword_2A14615E8);
    a4 = v10;
    a2 = v9;
    a3 = v8;
    v12 = v11;
    a1 = v7;
    if (v12)
    {
      v20 = 6553706;
      qword_2A1461668 = 0;
      unk_2A1461670 = 0;
      qword_2A1461660 = 0;
      sub_2993C9354(&qword_2A1461660, &v20, &v21, 2);
    }
  }

  if ((atomic_load_explicit(&qword_2A14615F0, memory_order_acquire) & 1) == 0)
  {
    v13 = a1;
    v14 = a3;
    v15 = a2;
    v16 = a4;
    v17 = __cxa_guard_acquire(&qword_2A14615F0);
    a4 = v16;
    a2 = v15;
    a3 = v14;
    v18 = v17;
    a1 = v13;
    if (v18)
    {
      v19 = 6553722;
      qword_2A1461680 = 0;
      unk_2A1461688 = 0;
      qword_2A1461678 = 0;
      sub_2993C9354(&qword_2A1461678, &v19, &v20, 2);
    }
  }

  if ((a4 & 0x10) == 0)
  {
    return 0;
  }

  if (a1 == 106 && a2 != 106 && a3 == 105)
  {
    return &qword_2A1461660;
  }

  if (a2 != 122 && a3 == 117 && a1 == 122)
  {
    return &qword_2A1461678;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_2993C4A54(int a1, int a2)
{
  *&v21[762] = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    goto LABEL_46;
  }

  v2 = a2;
  if ((a2 & 0x1E) == 0)
  {
    goto LABEL_46;
  }

  v3 = a1;
  v4 = a2 & 0xC;
  if (a1 != 12358)
  {
    if (a1 == 12388)
    {
      if ((a2 & 0xA) != 0 && (a2 & 0xC) != 0)
      {
        v5 = &qword_2A1461690;
        if ((atomic_load_explicit(&qword_2A1461608, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461608))
        {
          qmemcpy(v20, "d0e0c0", sizeof(v20));
          qword_2A1461698 = 0;
          unk_2A14616A0 = 0;
          qword_2A1461690 = 0;
          sub_2993C9354(&qword_2A1461690, v20, v21, 3);
        }

        goto LABEL_47;
      }

      if ((a2 & 0xA) != 0)
      {
        v5 = &qword_2A14616A8;
        if ((atomic_load_explicit(&qword_2A1461610, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461610))
        {
          *v20 = 811937892;
          qword_2A14616B0 = 0;
          unk_2A14616B8 = 0;
          qword_2A14616A8 = 0;
          sub_2993C9354(&qword_2A14616A8, v20, &v20[4], 2);
        }

        goto LABEL_47;
      }

      if ((a2 & 0xC) != 0)
      {
        sub_2993C6328();
        v5 = &qword_2A14616C0;
        goto LABEL_47;
      }

LABEL_46:
      v5 = 0;
      goto LABEL_47;
    }

    if ((a2 & 0xA) != 0)
    {
      if ((atomic_load_explicit(&qword_2A1461638, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461638))
      {
        qmemcpy(v13, "o0p0q0", sizeof(v13));
        v17 = 0;
        v19 = 0;
        v18 = 0;
        sub_2993C9354(&v17, v13, v14, 3);
      }

      v6 = sub_2993C8DA8(qword_2A1461720, unk_2A1461728, v3);
      if (v6)
      {
        v5 = (v6 + 3);
      }

      else
      {
        v5 = 0;
      }

      if (!v4)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v5 = 0;
      if ((a2 & 0xC) == 0)
      {
LABEL_36:
        if ((v2 & 0x10) != 0 && !v5)
        {
          if ((atomic_load_explicit(&qword_2A1461648, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461648))
          {
            v15 = 811937882;
            v17 = 0;
            v19 = 0;
            v18 = 0;
            sub_2993C9354(&v17, &v15, &v16, 2);
          }

          v8 = sub_2993C8DA8(qword_2A1461770, unk_2A1461778, v3);
          if (v8)
          {
            v5 = (v8 + 3);
          }

          else
          {
            v5 = 0;
          }
        }

        goto LABEL_47;
      }
    }

    if (!v5)
    {
      if ((atomic_load_explicit(&qword_2A1461640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461640))
      {
        v11 = 809578562;
        v17 = 0;
        v19 = 0;
        v18 = 0;
        sub_2993C9354(&v17, &v11, &v12, 2);
      }

      v7 = sub_2993C8DA8(qword_2A1461748, unk_2A1461750, v3);
      if (v7)
      {
        v5 = (v7 + 3);
      }

      else
      {
        v5 = 0;
      }
    }

    goto LABEL_36;
  }

  if ((a2 & 0xA) != 0 && (a2 & 0xC) != 0)
  {
    v5 = &qword_2A14616D8;
    if ((atomic_load_explicit(&qword_2A1461620, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461620))
    {
      *v20 = 809840710;
      *&v20[4] = 12436;
      qword_2A14616E0 = 0;
      unk_2A14616E8 = 0;
      qword_2A14616D8 = 0;
      sub_2993C9354(&qword_2A14616D8, v20, v21, 3);
    }
  }

  else
  {
    if ((a2 & 0xA) == 0)
    {
      if ((a2 & 0xC) != 0)
      {
        sub_2993C63E4();
        v5 = &qword_2A1461708;
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    v5 = &qword_2A14616F0;
    if ((atomic_load_explicit(&qword_2A1461628, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461628))
    {
      *v20 = 815018054;
      qword_2A14616F8 = 0;
      unk_2A1461700 = 0;
      qword_2A14616F0 = 0;
      sub_2993C9354(&qword_2A14616F0, v20, &v20[4], 2);
    }
  }

LABEL_47:
  v9 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_2993C6328()
{
  if ((atomic_load_explicit(&qword_2A1461618, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A1461618))
    {
      v0 = 811806820;
      qword_2A14616C8 = 0;
      unk_2A14616D0 = 0;
      qword_2A14616C0 = 0;
      sub_2993C9354(&qword_2A14616C0, &v0, &v1, 2);
    }
  }
}

void sub_2993C63E4()
{
  if ((atomic_load_explicit(&qword_2A1461630, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A1461630))
    {
      v0 = 809840710;
      qword_2A1461710 = 0;
      unk_2A1461718 = 0;
      qword_2A1461708 = 0;
      sub_2993C9354(&qword_2A1461708, &v0, &v1, 2);
    }
  }
}

uint64_t sub_2993C64A0(uint64_t result, unsigned __int16 *a2, unint64_t a3, int a4, int *a5, CFArrayRef *a6)
{
  if (a3)
  {
    v8 = a3;
    v9 = (result + 8);
    v80 = result;
    v86 = (*(*result + 24))(result);
    sub_2993C9E5C(v9, v86 + v8);
    v81 = a5;
    v82 = a6;
    if (a5)
    {
      v10 = a6 == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = !v10;
    v85 = v11;
    v12 = off_2A1A9A250();
    v13 = 0;
    v87 = off_2A1A9A268;
    for (i = v8; i != v13; v8 = i)
    {
      if ((*v87(&off_2A1A9A268) & 1) == 0)
      {
        operator new[]();
      }

      v14 = v13 + v86;
      if (v85)
      {
        result = sub_299254A50(v81, v82, a2, v8, v13, *v12, 0xEuLL, 0.0);
        if (result >= 1)
        {
          v15 = 0;
          v16 = 8 * result;
          do
          {
            v17 = (*v12 + v15);
            v18 = v17[1];
            v19 = *v9 + 24 * v14;
            v20 = *(v19 + 8);
            v21 = *(v19 + 16);
            if (v20 >= v21)
            {
              v23 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - *v19) >> 3);
              v24 = v23 + 1;
              if (v23 + 1 > 0x666666666666666)
              {
                goto LABEL_85;
              }

              v25 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - *v19) >> 3);
              if (2 * v25 > v24)
              {
                v24 = 2 * v25;
              }

              if (v25 >= 0x333333333333333)
              {
                v26 = 0x666666666666666;
              }

              else
              {
                v26 = v24;
              }

              v94 = *v9 + 24 * v14;
              if (v26)
              {
                sub_299391224(v19, v26);
              }

              v90 = 0;
              v91 = 40 * v23;
              v92 = 40 * v23;
              v93 = 0;
              sub_2993C9408((40 * v23), v17, 1uLL, 1, v18);
              v92 += 40;
              v27 = *(v19 + 8);
              v28 = v91 + *v19 - v27;
              sub_29939127C(v19, *v19, v27, v28);
              v29 = *v19;
              *v19 = v28;
              v91 = v29;
              v22 = v92;
              *(v19 + 8) = v92;
              v92 = v29;
              v30 = *(v19 + 16);
              *(v19 + 16) = v93;
              v93 = v30;
              v90 = v29;
              result = sub_2993913B8(&v90);
            }

            else
            {
              *(v20 + 23) = 1;
              *v20 = *v17;
              *(v20 + 24) = v18;
              *(v20 + 32) = 1;
              v22 = v20 + 40;
              *(v19 + 8) = v20 + 40;
            }

            *(v19 + 8) = v22;
            v15 += 8;
          }

          while (v16 != v15);
        }
      }

      else
      {
        v31 = &a2[v13];
        result = sub_2993C4A54(*v31, a4);
        if (result)
        {
          v32 = *result;
          v33 = *(result + 8);
          while (v32 != v33)
          {
            __src = *v32;
            v34 = __src;
            if (*v31 == __src)
            {
              v35 = 0.0;
            }

            else
            {
              v35 = -1.0;
            }

            v36 = *v9 + 24 * v14;
            v37 = *(v36 + 8);
            v38 = *(v36 + 16);
            if (v37 >= v38)
            {
              v40 = 0xCCCCCCCCCCCCCCCDLL * ((v37 - *v36) >> 3);
              v41 = v40 + 1;
              if (v40 + 1 > 0x666666666666666)
              {
                goto LABEL_85;
              }

              if (0x999999999999999ALL * ((v38 - *v36) >> 3) > v41)
              {
                v41 = 0x999999999999999ALL * ((v38 - *v36) >> 3);
              }

              if (0xCCCCCCCCCCCCCCCDLL * ((v38 - *v36) >> 3) >= 0x333333333333333)
              {
                v42 = 0x666666666666666;
              }

              else
              {
                v42 = v41;
              }

              v94 = *v9 + 24 * v14;
              if (v42)
              {
                sub_299391224(v36, v42);
              }

              v90 = 0;
              v91 = 40 * v40;
              v92 = 40 * v40;
              v93 = 0;
              sub_2993C9408((40 * v40), &__src, 1uLL, 1, v35);
              v92 += 40;
              v43 = *(v36 + 8);
              v44 = v91 + *v36 - v43;
              sub_29939127C(v36, *v36, v43, v44);
              v45 = *v36;
              *v36 = v44;
              v91 = v45;
              v39 = v92;
              *(v36 + 8) = v92;
              v92 = v45;
              v46 = *(v36 + 16);
              *(v36 + 16) = v93;
              v93 = v46;
              v90 = v45;
              result = sub_2993913B8(&v90);
            }

            else
            {
              *(v37 + 23) = 1;
              *v37 = v34;
              *(v37 + 2) = 0;
              *(v37 + 24) = v35;
              *(v37 + 32) = 1;
              v39 = v37 + 40;
              *(v36 + 8) = v37 + 40;
            }

            *(v36 + 8) = v39;
            ++v32;
          }
        }

        else
        {
          v47 = *v9 + 24 * v14;
          v48 = *(v47 + 8);
          v49 = *(v47 + 16);
          if (v48 >= v49)
          {
            v51 = 0xCCCCCCCCCCCCCCCDLL * ((v48 - *v47) >> 3);
            v52 = v51 + 1;
            if (v51 + 1 > 0x666666666666666)
            {
LABEL_85:
              sub_299212A8C();
            }

            v53 = 0xCCCCCCCCCCCCCCCDLL * ((v49 - *v47) >> 3);
            if (2 * v53 > v52)
            {
              v52 = 2 * v53;
            }

            if (v53 >= 0x333333333333333)
            {
              v54 = 0x666666666666666;
            }

            else
            {
              v54 = v52;
            }

            v94 = v47;
            if (v54)
            {
              sub_299391224(v47, v54);
            }

            v90 = 0;
            v91 = 40 * v51;
            v92 = 40 * v51;
            v93 = 0;
            sub_2993C9408((40 * v51), v31, 1uLL, 1, 0.0);
            v92 += 40;
            v55 = *(v47 + 8);
            v56 = v91 + *v47 - v55;
            sub_29939127C(v47, *v47, v55, v56);
            v57 = *v47;
            *v47 = v56;
            v91 = v57;
            v50 = v92;
            *(v47 + 8) = v92;
            v92 = v57;
            v58 = *(v47 + 16);
            *(v47 + 16) = v93;
            v93 = v58;
            v90 = v57;
            result = sub_2993913B8(&v90);
          }

          else
          {
            *(v48 + 23) = 1;
            *v48 = *v31;
            *(v48 + 24) = 0;
            *(v48 + 32) = 1;
            v50 = v48 + 40;
            *(v47 + 8) = v48 + 40;
          }

          *(v47 + 8) = v50;
        }
      }

      ++v13;
    }

    if ((a4 & 0x20) != 0)
    {
      result = sub_299217570(a2, i);
      if (a2)
      {
        v59 = result;
        if (result)
        {
          result = sub_299216BF4(&a2[i - result], 2 * result);
          if (result)
          {
            v60 = result;
            result = (*(*v80 + 24))(v80);
            v61 = *v60;
            v62 = v60[1];
            if (*v60 != v62)
            {
              v63 = result - v59;
              do
              {
                v64 = *(v61 + 23);
                if ((v64 & 0x8000000000000000) != 0)
                {
                  v65 = *v61;
                  v64 = v61[1];
                }

                else
                {
                  v65 = v61;
                }

                v66 = v64 >> 1;
                if (v65)
                {
                  v67 = v66;
                }

                else
                {
                  v67 = 0;
                }

                v68 = *v9 + 24 * v63;
                v70 = *(v68 + 8);
                v69 = *(v68 + 16);
                if (v70 >= v69)
                {
                  v72 = 0xCCCCCCCCCCCCCCCDLL * ((v70 - *v68) >> 3);
                  v73 = v72 + 1;
                  if (v72 + 1 > 0x666666666666666)
                  {
                    goto LABEL_85;
                  }

                  v74 = 0xCCCCCCCCCCCCCCCDLL * ((v69 - *v68) >> 3);
                  if (2 * v74 > v73)
                  {
                    v73 = 2 * v74;
                  }

                  if (v74 >= 0x333333333333333)
                  {
                    v75 = 0x666666666666666;
                  }

                  else
                  {
                    v75 = v73;
                  }

                  v94 = *v9 + 24 * v63;
                  if (v75)
                  {
                    sub_299391224(v68, v75);
                  }

                  v90 = 0;
                  v91 = 40 * v72;
                  v92 = 40 * v72;
                  v93 = 0;
                  sub_2993C9408((40 * v72), v65, v67, v59, 0.0);
                  v92 += 40;
                  v76 = *(v68 + 8);
                  v77 = v91 + *v68 - v76;
                  sub_29939127C(v68, *v68, v76, v77);
                  v78 = *v68;
                  *v68 = v77;
                  v91 = v78;
                  v71 = v92;
                  *(v68 + 8) = v92;
                  v92 = v78;
                  v79 = *(v68 + 16);
                  *(v68 + 16) = v93;
                  v93 = v79;
                  v90 = v78;
                  result = sub_2993913B8(&v90);
                }

                else
                {
                  result = sub_2993C9408(*(v68 + 8), v65, v67, v59, 0.0);
                  v71 = v70 + 40;
                  *(v68 + 8) = v70 + 40;
                }

                *(v68 + 8) = v71;
                v61 += 3;
              }

              while (v61 != v62);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2993C6C80@<X0>(unsigned __int16 *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int *a4@<X3>, CFArrayRef *a5@<X4>, void *a6@<X8>)
{
  *a6 = &unk_2A1F65C80;
  a6[1] = 0;
  a6[2] = 0;
  a6[3] = 0;
  return sub_2993C64A0(a6, a1, a2, a3, a4, a5);
}

void sub_2993C6CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v12;
  *v10 = v11;
  a10 = v13;
  sub_29922CB20(&a10);
  _Unwind_Resume(a1);
}

unsigned __int16 **sub_2993C6D18(unsigned __int16 **result, unsigned __int16 *a2, unint64_t a3, char a4, int *a5, CFArrayRef *a6)
{
  if (a3)
  {
    v7 = result;
    v8 = result + 1;
    v9 = (*(*result + 3))(result);
    sub_299373E34(v8, v9 + a3);
    if (a5)
    {
      v10 = a6 == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = !v10;
    v12 = off_2A1A9A280();
    v13 = 0;
    v23 = off_2A1A9A298;
    do
    {
      if (v11)
      {
        if ((*v23(&off_2A1A9A298) & 1) == 0)
        {
          operator new[]();
        }

        result = sub_299254A50(a5, a6, a2, a3, v13, *v12, 0xEuLL, 0.0);
        if (result >= 1)
        {
          v14 = 0;
          v15 = 8 * result;
          do
          {
            result = sub_299259B8C(v7, v13 + v9, (v14 + *v12), 1uLL, 1, 0, 0xFFFFFF, -1, *(v14 + *v12 + 4), 255);
            v14 += 8;
          }

          while (v15 != v14);
        }
      }

      else
      {
        if (v13)
        {
          v16 = a2[v13 - 1];
        }

        else
        {
          v16 = 0;
        }

        if (a3 - 1 <= v13)
        {
          v17 = 0;
        }

        else
        {
          v17 = a2[v13 + 1];
        }

        v18 = &a2[v13];
        result = sub_2993C4830(*v18, v16, v17, a4);
        if (result)
        {
          v19 = *result;
          v20 = result[1];
          while (v19 != v20)
          {
            v21 = *v19++;
            __src = v21;
            if (*v18 == v21)
            {
              v22 = 0.0;
            }

            else
            {
              v22 = -1.0;
            }

            result = sub_299259B8C(v7, v13 + v9, &__src, 1uLL, 1, 0, 0xFFFFFF, -1, v22, 255);
          }
        }

        else
        {
          result = sub_299259B8C(v7, v13 + v9, v18, 1uLL, 1, 0, 0xFFFFFF, -1, 0.0, 255);
        }
      }

      ++v13;
    }

    while (v13 != a3);
  }

  return result;
}

void sub_2993C6FE0(void *a1, CFArrayRef theArray, char a3, uint64_t a4)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v9 = Count;
      v10 = *a4;
      if (*a4 == *(a4 + 8))
      {
        __p = 0;
        v32 = 0;
        v33 = 0;
      }

      else
      {
        v11 = 0;
        __p = 0;
        v32 = 0;
        v33 = 0;
        v12 = *v10;
        do
        {
          if (v11)
          {
            v13 = v10[v11];
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
            __src = (((v13 - v12) * 6.0) + -0.5) / CFStringGetLength(ValueAtIndex);
          }

          else
          {
            __src = 0.0;
          }

          sub_2993C94C0(&__p, &__src);
          ++v11;
          v10 = *a4;
        }

        while (v11 < (*(a4 + 8) - *a4) >> 2);
      }

      v29 = a1;
      if (v9 < 1)
      {
        v16 = 0;
      }

      else
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v17 = CFArrayGetValueAtIndex(theArray, v15);
          Length = CFStringGetLength(v17);
          if (v16 <= Length)
          {
            v16 = Length;
          }

          ++v15;
        }

        while (v9 != v15);
      }

      v19 = (*(*v29 + 24))(v29);
      sub_299373E34(v29 + 1, v19 + v16);
      if (v16)
      {
        for (i = 0; i != v16; ++i)
        {
          v21 = CFArrayGetCount(theArray);
          if (v21 >= 1)
          {
            for (j = 0; j != v21; ++j)
            {
              v23 = CFArrayGetValueAtIndex(theArray, j);
              v24 = CFStringGetLength(v23);
              v25 = v24;
              v26 = v24 - 1;
              if (v24 - 1 >= i)
              {
                LOWORD(__src) = CFStringGetCharacterAtIndex(v23, i);
                if (v26 == i)
                {
                  v27 = v16 - v25 + 1;
                }

                else
                {
                  v27 = 1;
                }

                if (__p == v32)
                {
                  v28 = 0.0;
                }

                else
                {
                  v28 = *(__p + j);
                }

                v4 = v4 & 0xFFFFFFFF00000000 | 0xFFFFFF;
                sub_299259B8C(v29, i + v19, &__src, 1uLL, v27, 0, v4, j, v28, a3);
              }
            }
          }
        }
      }

      if (__p)
      {
        v32 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_2993C7240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993C727C(unsigned __int16 *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, int *a4@<X3>, CFArrayRef *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = &unk_2A1F74930;
  v9 = 0uLL;
  v10 = 0;
  v11 = 0;
  sub_2993C6D18(&v8, a1, a2, a3, a4, a5);
  if ((a3 & 0x20) != 0)
  {
    sub_2993C4070(&v8, a6);
  }

  else
  {
    *a6 = &unk_2A1F74930;
    *(a6 + 8) = v9;
    *(a6 + 24) = v10;
    v10 = 0;
    v9 = 0uLL;
    *(a6 + 32) = v11;
  }

  v8 = &unk_2A1F74930;
  v12 = &v9;
  sub_299259FC8(&v12);
}

void sub_2993C735C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_299259FC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993C7378@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (a5)
  {
    v6 = a5;
    v10 = result;
    do
    {
      v13 = *a4++;
      v12 = v13;
      v14 = *v10;
      if (*(*(v10[1] + 24 * a3) + 48 * v13 + 46) == 255)
      {
        v19 = (*(v14 + 40))(v10, a3, v12);
        v20 = *(a6 + 23);
        if ((v20 & 0x80u) == 0)
        {
          v21 = a6;
        }

        else
        {
          v21 = *a6;
        }

        if ((v20 & 0x80u) != 0)
        {
          v20 = *(a6 + 8);
        }

        sub_2993C986C(a6, v21 + 2 * v20, (a2 + 2 * a3), (a2 + 2 * a3 + 2 * v19), v19);
      }

      else
      {
        v15 = (*(v14 + 48))(v10, a3, v12);
        v17 = *(a6 + 23);
        if ((v17 & 0x80u) == 0)
        {
          v18 = a6;
        }

        else
        {
          v18 = *a6;
        }

        if ((v17 & 0x80u) != 0)
        {
          v17 = *(a6 + 8);
        }

        sub_2993C95A0(a6, v18 + 2 * v17, v15, &v15[v16], (2 * v16) >> 1);
      }

      result = (*(*v10 + 40))(v10, a3, v12);
      a3 += result;
      --v6;
    }

    while (v6);
  }

  return result;
}

void sub_2993C7500(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993C752C(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v7 = *a3;
    v8 = a4 - 1;
    if (a4 != 1)
    {
      v9 = a3 + 1;
      do
      {
        a2 += (*(*a1 + 40))(a1, a2, v7);
        v10 = *v9++;
        v7 = v10;
        --v8;
      }

      while (v8);
    }

    v11 = *(a1[1] + 24 * a2) + 48 * v7;
    v12 = *(v11 + 46) + 1;
    v13 = *(v11 + 47) + 1;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  return (v12 | (v13 << 8));
}

uint64_t sub_2993C75EC(uint64_t *a1, __int16 a2, int a3)
{
  v24[4] = *MEMORY[0x29EDCA608];
  v23 = a3;
  v6 = (*(*a1 + 24))(a1) - a2;
  if (a3)
  {
    v7 = (*(*a1 + 24))(a1) - a2;
    v9 = a1 + 1;
    v8 = a1[1];
    v10 = v7;
    v11 = (v8 + 24 * v7);
    v12 = *(v11 - 3);
    if (*(v12 + 46) != 255)
    {
      v13 = *v11;
      if (*(v13 + 46) != 255)
      {
        v14 = *(v12 + 47);
        if (v14 == *(v13 + 47))
        {
          v15 = v10 + 1;
          if ((*(*a1 + 24))(a1) <= (v10 + 1))
          {
            v17 = 1;
          }

          else
          {
            v16 = 24 * v10 + 24;
            v17 = 1;
            do
            {
              v18 = *(*v9 + v16);
              if (*(v18 + 46) == 255)
              {
                break;
              }

              if (*(v18 + 47) != v14)
              {
                break;
              }

              ++v17;
              ++v15;
              v16 += 24;
            }

            while (v15 < (*(*a1 + 24))(a1));
          }

          sub_299373EDC((a1 + 1), *v9, *v9 + 24 * v6);
          v21 = 0;
          do
          {
            v24[0] = &unk_2A1F78848;
            v24[1] = &v23;
            v24[3] = v24;
            sub_299373F60(a1, v21, v24);
            result = sub_299375350(v24);
            ++v21;
          }

          while (v17 != v21);
          v22 = *MEMORY[0x29EDCA608];
          return result;
        }
      }
    }
  }

  else
  {
    v8 = a1[1];
  }

  v19 = *MEMORY[0x29EDCA608];

  return sub_299373EDC((a1 + 1), v8, v8 + 24 * v6);
}

void sub_2993C786C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299375350(va);
  _Unwind_Resume(a1);
}

void sub_2993C7920(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A1F78398;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_2993C79DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = *MEMORY[0x29EDCA608];
  v3[0] = &unk_2A1F786B8;
  v3[1] = a3;
  v3[3] = v3;
  sub_2993C8500();
}

void sub_2993C7A60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2993C8480(va);
  _Unwind_Resume(a1);
}

void *sub_2993C7A78(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A1F78398;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  return a1;
}

void sub_2993C7AE4(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A1F78398;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_2993C7B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = *MEMORY[0x29EDCA608];
  v3[0] = &unk_2A1F78528;
  v3[1] = a3;
  v3[3] = v3;
  sub_2993C7C08();
}

void sub_2993C7BF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2993C8480(va);
  _Unwind_Resume(a1);
}

void sub_2993C7C08()
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = off_2A1A9A1A8;
  if ((*off_2A1A9A1A8(&off_2A1A9A1A8) & 1) == 0)
  {
    v2 = off_2A1A9A190(&off_2A1A9A190);
    sub_2992A6BEC(v2, 256);
    _tlv_atexit(sub_2992A65C8, v2);
    *v0(&off_2A1A9A1A8) = 1;
  }

  v1 = off_2A1A9A1D8;
  if ((*off_2A1A9A1D8(&off_2A1A9A1D8) & 1) == 0)
  {
    v3 = off_2A1A9A1C0(&off_2A1A9A1C0);
    sub_2992A6C9C(v3, 0x100uLL);
    _tlv_atexit(sub_2992A65FC, v3);
    *v1(&off_2A1A9A1D8) = 1;
  }

  operator new();
}

void sub_2993C7E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a11)
  {
    MEMORY[0x29C29BFB0](a11, 0x1000C4052888210);
  }

  sub_2992B3BB8(va);
  _Unwind_Resume(a1);
}

__n128 sub_2993C7F24(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F78428;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void sub_2993C7F60(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = *MEMORY[0x29EDCA608];
  v15 = *a3;
  v13 = *a5;
  v14 = *a4;
  v11 = *a7;
  v12 = *a6;
  v10 = *a8;
  v8 = *(a1 + 16);
  v9 = *(*(a1 + 8) + 8);
  operator new();
}

void sub_2993C8098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_299375238(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993C80AC(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F78508))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2993C818C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F78498;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_2993C81DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(a1 + 16);
  v8 = **(a1 + 8);
  v10 = *a2;
  v11 = v8;
  result = sub_2993C82B8(*(v7 + 24), &v10, **(a1 + 24), **(a1 + 32), **(a1 + 40), **(a1 + 48), **(a1 + 56) - **(a1 + 64));
  **(a1 + 72) = (**(a1 + 72) | *a5) & 1;
  return result;
}

uint64_t sub_2993C826C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F784F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993C82B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a4;
  v12 = a3;
  v9 = a6;
  v10 = a5;
  v8 = a7;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, a2, &v12, &v11, &v10, &v9, &v8);
}

uint64_t sub_2993C8390(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F78528;
  a2[1] = v2;
  return result;
}

uint64_t sub_2993C83D8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F78598))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993C8424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v6 = a5;
  v7 = a4;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, a2, &v8, &v7, &v6);
}

uint64_t sub_2993C8480(uint64_t a1)
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

void sub_2993C8500()
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = off_2A1A9A208;
  if ((*off_2A1A9A208(&off_2A1A9A208) & 1) == 0)
  {
    v2 = off_2A1A9A1F0(&off_2A1A9A1F0);
    sub_2992A6BEC(v2, 256);
    _tlv_atexit(sub_2992A65C8, v2);
    *v0(&off_2A1A9A208) = 1;
  }

  v1 = off_2A1A9A238;
  if ((*off_2A1A9A238(&off_2A1A9A238) & 1) == 0)
  {
    v3 = off_2A1A9A220(&off_2A1A9A220);
    sub_2992A6C9C(v3, 0x100uLL);
    _tlv_atexit(sub_2992A65FC, v3);
    *v1(&off_2A1A9A238) = 1;
  }

  operator new();
}

void sub_2993C8758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a11)
  {
    MEMORY[0x29C29BFB0](a11, 0x1000C4052888210);
  }

  sub_2992B3BB8(va);
  _Unwind_Resume(a1);
}

__n128 sub_2993C8810(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F785B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2993C8848(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, void **a5, void **a6, void **a7, void **a8)
{
  v19 = *MEMORY[0x29EDCA608];
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  v12 = *a7;
  v13 = *a8;
  v18 = *a3;
  __p[5] = v11;
  __p[6] = v10;
  __p[3] = v13;
  __p[4] = v12;
  v14 = *(a1 + 8);
  if ((*(**(v14 + 8) + 32))(*(v14 + 8)))
  {
    memset(__p, 0, 24);
    sub_2992A7DFC(__p, v9, v10 + v9, v10);
    v15 = *(a1 + 16);
    v16 = *(v14 + 8);
    operator new();
  }

  __assert_rtn("operator()", "AmbiguousTrieAdapter.hpp", 44, "m_trie->isValid(cursor)");
}

void sub_2993C89FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_299375238(&a18);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993C8A30(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F78698))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2993C8B10(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F78628;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_2993C8B60(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, _BYTE *a5)
{
  v8 = *a3;
  v9 = *a4;
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = *v11 + *a4;
  v13 = *(v10 + 8) - *v10;
  if (v12 > v13)
  {
    sub_29920BD1C(v10, v12 - v13);
  }

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      *(**(a1 + 16) + **(a1 + 8) + i) = *(v8 + i);
    }
  }

  v15 = *(a1 + 40);
  v16 = **(a1 + 32);
  v18 = *a2;
  v19 = v16;
  result = sub_2993C82B8(*(*(a1 + 24) + 24), &v18, **(a1 + 16), v12, *v15, **(a1 + 48), **(a1 + 56) - **(a1 + 64));
  **(a1 + 72) = (**(a1 + 72) | *a5) & 1;
  return result;
}

uint64_t sub_2993C8C58(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F78688))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993C8D14(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F786B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_2993C8D5C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F78718))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t **sub_2993C8DA8(uint64_t a1, unint64_t a2, unsigned __int16 a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 8) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2993C8E5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_2992A6C64(result, a4);
  }

  return result;
}

void sub_2993C8EBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993C8ED8(uint64_t result, unsigned __int16 *a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[16 * a3]; i += 16)
    {
      v4 = *i;
      v5 = *(result + 8);
      if (!*&v5)
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = *i;
        if (*&v5 <= v4)
        {
          v7 = v4 % *(result + 8);
        }
      }

      else
      {
        v7 = (v5.i32[0] - 1) & v4;
      }

      v8 = *(*result + 8 * v7);
      if (!v8 || (v9 = *v8) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v10 = v9[1];
        if (v10 == v4)
        {
          break;
        }

        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v5)
          {
            v10 %= *&v5;
          }
        }

        else
        {
          v10 &= *&v5 - 1;
        }

        if (v10 != v7)
        {
          goto LABEL_19;
        }

LABEL_18:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_19;
        }
      }

      if (*(v9 + 8) != v4)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

void sub_2993C9318(_Unwind_Exception *a1)
{
  sub_29927AFD8(1, v2);
  sub_29927B034(v1);
  _Unwind_Resume(a1);
}

void sub_2993C93A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2993C93C4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C80CE7E837CLL);
  }

  return a1;
}

_BYTE *sub_2993C9408(_BYTE *__dst, void *__src, unint64_t a3, uint64_t a4, double a5)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_299212A30();
  }

  if (a3 >= 0xB)
  {
    if ((a3 | 3) == 0xB)
    {
      v10 = 13;
    }

    else
    {
      v10 = (a3 | 3) + 1;
    }

    sub_299212A48(__dst, v10);
  }

  __dst[23] = a3;
  if (a3)
  {
    memmove(__dst, __src, 2 * a3);
  }

  *&__dst[2 * a3] = 0;
  *(__dst + 3) = a5;
  *(__dst + 4) = a4;
  return __dst;
}

void sub_2993C94C0(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_299212A8C();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_2992F86B0(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_2993C95A0(uint64_t a1, uint64_t a2, __int16 *a3, __int16 *a4, unint64_t a5)
{
  v7 = *(a1 + 23);
  if (v7 < 0)
  {
    v9 = *a1;
    v8 = a2 - *a1;
    if (a5)
    {
      v7 = *(a1 + 8);
      goto LABEL_6;
    }

    return v8 + v9;
  }

  v8 = a2 - a1;
  if (!a5)
  {
    v9 = a1;
    return v8 + v9;
  }

  v9 = a1;
LABEL_6:
  v10 = v8 >> 1;
  if (v9 <= a3 && v9 + 2 * v7 + 2 > a3)
  {
    sub_2993C97E4(__p, a3, a4);
    v11 = v16;
    if ((v16 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v16 & 0x80u) != 0)
    {
      v11 = __p[1];
    }

    v13 = sub_2993C96D0(a1, a5, v10, v12, v12 + 2 * v11);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    return v13;
  }

  return sub_2993C96D0(a1, a5, v10, a3, a4);
}

void sub_2993C96B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993C96D0(uint64_t a1, unint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  v9 = a1;
  v10 = *(a1 + 23);
  if (v10 < 0)
  {
    v10 = *(a1 + 8);
    v11 = (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - v10 >= a2)
    {
      v12 = *a1;
      goto LABEL_7;
    }

LABEL_5:
    sub_299218110(a1, v11, v10 + a2 - v11);
  }

  v11 = 10;
  v12 = a1;
  if (10 - v10 < a2)
  {
    goto LABEL_5;
  }

LABEL_7:
  if (v10 == a3)
  {
    v10 = a3;
  }

  else
  {
    memmove((v12 + 2 * a3 + 2 * a2), (v12 + 2 * a3), 2 * (v10 - a3));
  }

  v13 = v10 + a2;
  if (*(v9 + 23) < 0)
  {
    *(v9 + 8) = v13;
  }

  else
  {
    *(v9 + 23) = v13 & 0x7F;
  }

  *(v12 + 2 * v13) = 0;
  if (a5 != a4)
  {
    memmove((v12 + 2 * a3), a4, a5 - a4);
  }

  if (*(v9 + 23) < 0)
  {
    v9 = *v9;
  }

  return v9 + 2 * a3;
}

void *sub_2993C97E4(void *result, __int16 *a2, __int16 *a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_2992174C4(v5, *v4++);
    }

    while (v4 != a3);
  }

  return result;
}

void sub_2993C983C(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

uint64_t sub_2993C986C(uint64_t a1, uint64_t a2, __int16 *a3, __int16 *a4, unint64_t a5)
{
  v7 = *(a1 + 23);
  if (v7 < 0)
  {
    v9 = *a1;
    v8 = a2 - *a1;
    if (a5)
    {
      v7 = *(a1 + 8);
      goto LABEL_6;
    }

    return v8 + v9;
  }

  v8 = a2 - a1;
  if (!a5)
  {
    v9 = a1;
    return v8 + v9;
  }

  v9 = a1;
LABEL_6:
  v10 = v8 >> 1;
  if (v9 <= a3 && v9 + 2 * v7 + 2 > a3)
  {
    sub_2993C9AB8(__p, a3, a4);
    v11 = v16;
    if ((v16 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v16 & 0x80u) != 0)
    {
      v11 = __p[1];
    }

    v13 = sub_2993C96D0(a1, a5, v10, v12, v12 + 2 * v11);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    return v13;
  }

  return sub_2993C999C(a1, a5, v10, a3, a4);
}

void sub_2993C9980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993C999C(uint64_t a1, unint64_t a2, uint64_t a3, __int16 *a4, __int16 *a5)
{
  v9 = a1;
  v10 = *(a1 + 23);
  if (v10 < 0)
  {
    v10 = *(a1 + 8);
    v11 = (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - v10 >= a2)
    {
      v12 = *a1;
      goto LABEL_7;
    }

LABEL_5:
    sub_299218110(a1, v11, v10 + a2 - v11);
  }

  v11 = 10;
  v12 = a1;
  if (10 - v10 < a2)
  {
    goto LABEL_5;
  }

LABEL_7:
  if (v10 == a3)
  {
    v10 = a3;
  }

  else
  {
    memmove((v12 + 2 * a3 + 2 * a2), (v12 + 2 * a3), 2 * (v10 - a3));
  }

  v13 = v10 + a2;
  if (*(v9 + 23) < 0)
  {
    *(v9 + 8) = v13;
  }

  else
  {
    *(v9 + 23) = v13 & 0x7F;
  }

  *(v12 + 2 * v13) = 0;
  if (a4 != a5)
  {
    v14 = (v12 + 2 * a3);
    do
    {
      v15 = *a4++;
      *v14++ = v15;
    }

    while (a4 != a5);
  }

  if (*(v9 + 23) < 0)
  {
    v9 = *v9;
  }

  return v9 + 2 * a3;
}

void *sub_2993C9AB8(void *result, __int16 *a2, __int16 *a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_2992174C4(v5, *v4++);
    }

    while (v4 != a3);
  }

  return result;
}

void sub_2993C9B10(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

__n128 sub_2993C9BB4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F78738;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2993C9BE4(uint64_t a1, uint64_t a2, __int16 **a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a3;
  v7 = *a5;
  v8 = *a2;
  v9 = *(a1 + 16);
  if (**a2)
  {
    v10 = 0;
    do
    {
      v11 = v10 + 1;
    }

    while (v8[++v10]);
  }

  else
  {
    v11 = 0;
  }

  return sub_299259B8C(v9, *(a1 + 8), v8, v11, v7, *v6, 0xFFFFFF, -1, *(a2 + 8), 255);
}

uint64_t sub_2993C9C60(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F787A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993C9CAC(uint64_t a1)
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

__n128 sub_2993C9DA0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F787C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2993C9E10(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F78828))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2993C9E5C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_2993C9F04(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      sub_29922CB94(&v8);
    }

    *(a1 + 8) = v7;
  }
}

void sub_2993C9F04(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_299212A8C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_299374114(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1] - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_2993CA070(v18);
  }
}

void **sub_2993CA070(void **a1)
{
  sub_2993CA0A4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2993CA0A4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_29922CB94(&v5);
  }
}

uint64_t sub_2993CA168(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F78848;
  a2[1] = v2;
  return result;
}

uint64_t sub_2993CA1B0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F788B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993CA1FC(uint64_t a1, uint64_t a2)
{
  if (a2 < 0x100000)
  {
    operator new();
  }

  return 0;
}

void sub_2993CA38C(_Unwind_Exception *a1)
{
  sub_2993CA878(v2, 0);
  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_2993CA3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    operator new();
  }

  operator new();
}

void sub_2993CA6C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  MEMORY[0x29C29BFB0](v12, 0x10B2C404F1FE554);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t **sub_2993CA808(uint64_t **a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  sub_2993CA878(a1 + 1, 0);
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t *sub_2993CA878(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_299352D24(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2993CA8C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

CFDataRef sub_2993CA910(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    result = *(a1 + 8);
    if (result)
    {
      v3 = sub_299352EE0(result);
      v4 = *(a1 + 8);
      v5 = *(v4 + 239);
      if (v5 < 0)
      {
        v5 = *(v4 + 224);
      }

      result = CFDataCreateWithBytesNoCopy(0, v3, v5, *MEMORY[0x29EDB8EE8]);
      *(a1 + 16) = result;
    }
  }

  return result;
}

void sub_2993CA970(uint64_t *a1)
{
  v1[0] = 0;
  v1[1] = v1;
  v1[2] = 0x2000000000;
  v2 = 0;
  sub_299384FA4(*a1);
  _Block_object_dispose(v1, 8);
}

void sub_2993CAA2C(void *a1, uint64_t a2, UniChar *chars, unint64_t a4, _BYTE *a5)
{
  v8 = a1[6];
  v9 = *MEMORY[0x29EDB8EE8];
  cf = CFStringCreateWithCharactersNoCopy(0, chars, a4 >> 1, *MEMORY[0x29EDB8EE8]);
  v16 = 0;
  v10 = sub_2993856D8(*v8, *(a2 + 8), &v16);
  v18 = CFStringCreateWithCharactersNoCopy(0, v10, v16 >> 1, v9);
  v11 = *(a2 + 2);
  if ((atomic_load_explicit(&qword_2A14617A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14617A8))
  {
    xmmword_2A14617E8 = 0u;
    xmmword_2A14617D8 = 0u;
    dword_2A14617F8 = 1065353216;
    __cxa_atexit(sub_2993CA8C4, &xmmword_2A14617D8, &dword_29918C000);
    __cxa_guard_release(&qword_2A14617A8);
  }

  if (atomic_load_explicit(qword_2A14617B0, memory_order_acquire) != -1)
  {
    v22 = &v20;
    v21 = &v22;
    std::__call_once(qword_2A14617B0, &v21, sub_2993CAC90);
  }

  v12 = vcnt_s8(*(&xmmword_2A14617D8 + 8));
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v11;
    if (*(&xmmword_2A14617D8 + 1) <= v11)
    {
      v13 = v11 % WORD4(xmmword_2A14617D8);
    }
  }

  else
  {
    v13 = (DWORD2(xmmword_2A14617D8) - 1) & v11;
  }

  v14 = *(xmmword_2A14617D8 + 8 * v13);
  do
  {
    do
    {
      v14 = *v14;
    }

    while (v14[1] != v11);
  }

  while (*(v14 + 8) != v11);
  v19 = *(v14 + 5);
  v15 = *(a1[5] + 8);
  (*(a1[4] + 16))();
  if (*(*(a1[5] + 8) + 24))
  {
    *a5 = 1;
  }

  CFRelease(cf);
  CFRelease(v18);
}

__n128 sub_2993CAC2C()
{
  sub_299255778(0);
  result.n128_u32[0] = dword_2A1461DF4;
  result.n128_u16[2] = word_2A1461DF0;
  result.n128_u16[3] = word_2A1461DF8;
  result.n128_u64[1] = qword_2A1461DFA;
  xmmword_2A14617C0 = result;
  word_2A14617D0 = dword_2A1461DF4;
  return result;
}

uint64_t sub_2993CAC90()
{
  sub_299255778(0);
  sub_2993CAD80(dword_2A1461DF4);
  sub_2993CAD80(HIWORD(dword_2A1461DF4));
  sub_2993CAD80(word_2A1461DF0);
  sub_2993CAD80(word_2A1461DF8);
  sub_2993CAD80(qword_2A1461DFA);
  sub_2993CAD80(WORD1(qword_2A1461DFA));
  sub_2993CAD80(WORD2(qword_2A1461DFA));
  return sub_2993CAD80(HIWORD(qword_2A1461DFA));
}

uint64_t sub_2993CAD80(uint64_t result)
{
  if (!*(&xmmword_2A14617D8 + 1))
  {
    goto LABEL_18;
  }

  v1 = vcnt_s8(*(&xmmword_2A14617D8 + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = result;
    if (*(&xmmword_2A14617D8 + 1) <= result)
    {
      v2 = result % WORD4(xmmword_2A14617D8);
    }
  }

  else
  {
    v2 = (DWORD2(xmmword_2A14617D8) - 1) & result;
  }

  v3 = *(xmmword_2A14617D8 + 8 * v2);
  if (!v3 || (v4 = *v3) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v5 = v4[1];
    if (v5 == result)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v5 >= *(&xmmword_2A14617D8 + 1))
      {
        v5 %= *(&xmmword_2A14617D8 + 1);
      }
    }

    else
    {
      v5 &= *(&xmmword_2A14617D8 + 1) - 1;
    }

    if (v5 != v2)
    {
      goto LABEL_18;
    }

LABEL_17:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (*(v4 + 8) != result)
  {
    goto LABEL_17;
  }

  return result;
}

void *sub_2993CB1B4(void *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, int *a5, uint64_t *a6)
{
  v10 = *a5;
  v17 = 0;
  v18 = 0;
  __p = 0;
  sub_299215EC0(&__p, *a6, a6[1], (a6[1] - *a6) >> 1);
  sub_299367624(a1, v10, &__p);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  *a1 = &unk_2A1F788D8;
  v11 = MEMORY[0x29EDB8ED8];
  if (a2)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], a2);
  }

  else
  {
    Copy = 0;
  }

  a1[6] = Copy;
  if (a3)
  {
    v13 = CFStringCreateCopy(*v11, a3);
  }

  else
  {
    v13 = 0;
  }

  a1[7] = v13;
  if (a4)
  {
    v14 = CFStringCreateCopy(*v11, a4);
  }

  else
  {
    v14 = 0;
  }

  a1[8] = v14;
  return a1;
}

void sub_2993CB2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_299219AB4((v11 + 56), 0);
  sub_299219AB4(v12, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993CB2FC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F73CB8;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  *a1 = &unk_2A1F788D8;
  v6 = *(a2 + 48);
  v7 = MEMORY[0x29EDB8ED8];
  if (v6)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], v6);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 48) = Copy;
  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = CFStringCreateCopy(*v7, v9);
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 56) = v10;
  v11 = *(a2 + 64);
  if (v11)
  {
    v12 = CFStringCreateCopy(*v7, v11);
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 64) = v12;
  return a1;
}

void sub_2993CB3D8(_Unwind_Exception *a1)
{
  sub_299219AB4((v1 + 56), 0);
  sub_299219AB4((v1 + 48), 0);
  _Unwind_Resume(a1);
}

__CFString *sub_2993CB404(uint64_t a1)
{
  v1 = *(a1 + 44);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
LABEL_3:
  v5 = v3;
  v6 = v4 <= 0x20 ? 32 : v4;
  while (v6 != v4)
  {
    v7 = v4++;
    if ((v1 >> v7))
    {
      v3 = v5 + 1;
      if (v4 - 1 < 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  if (!v5)
  {
    return 0;
  }

  v8 = *MEMORY[0x29EDB8ED8];
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v10 = 0;
LABEL_11:
  v11 = 0;
  if (v10 <= 0x20)
  {
    v12 = 32;
  }

  else
  {
    v12 = v10;
  }

  v13 = v10 - v12;
  while (v13 + v11)
  {
    v14 = v10 + v11++;
    if ((*(a1 + 44) >> v14))
    {
      v10 += v11;
      if (v10 != -1 && v11)
      {
        chars = v11 + 48;
        v15 = CFStringCreateWithCharacters(v8, &chars, 1);
        CFStringAppend(Mutable, v15);
        CFRelease(v15);
        goto LABEL_11;
      }

      return Mutable;
    }
  }

  return Mutable;
}

void sub_2993CB528(uint64_t a1)
{
  sub_29938A094(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993CB560(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    CFStringGetLength(v1);
  }

  return 0;
}

void sub_2993CB5A8(uint64_t a1)
{
  sub_2993D2838(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993CB5E0(uint64_t a1)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2A1F78960;
  *(a1 + 128) = 850045863;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  sub_2993D0BBC((a1 + 208));
}

void sub_2993CB85C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_2993D0764((v17 + 1544), 0);
  sub_2993D0E48(v17 + 1496);
  if (*(v17 + 1495) < 0)
  {
    operator delete(*(v17 + 1472));
  }

  if (*(v17 + 1439) < 0)
  {
    operator delete(*v23);
  }

  if (*(v17 + 1383) < 0)
  {
    operator delete(*v22);
  }

  sub_299242174(v17 + 1024);
  sub_2993D0F14(v20);
  v25 = *v21;
  if (*v21)
  {
    *(v17 + 304) = v25;
    operator delete(v25);
  }

  sub_2993D10CC(v19);
  *(v17 + 224) = &unk_2A1F789D8;
  v26 = *(v17 + 232);
  if (v26)
  {
    MEMORY[0x29C29BF70](v26, 0x1000C8077774924);
  }

  *(v17 + 208) = &unk_2A1F789D8;
  v27 = *(v17 + 216);
  if (v27)
  {
    MEMORY[0x29C29BF70](v27, 0x1000C8077774924);
  }

  std::mutex::~mutex(v18);
  v28 = *(v17 + 80);
  if (v28)
  {
    *(v17 + 88) = v28;
    operator delete(v28);
  }

  v29 = *(v17 + 56);
  if (v29)
  {
    *(v17 + 64) = v29;
    operator delete(v29);
  }

  v30 = *(v17 + 32);
  if (v30)
  {
    *(v17 + 40) = v30;
    operator delete(v30);
  }

  v31 = *v24;
  if (*v24)
  {
    *(v17 + 16) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void *sub_2993CBA18(void *a1)
{
  *a1 = &unk_2A1F789D8;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C8077774924);
  }

  return a1;
}

uint64_t sub_2993CBA74(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v3 != v2)
  {
    do
    {
      if ((*(*v3 + 380) - 8) <= 0xFFFFFFFD)
      {
        (*(**v3 + 8))(*v3);
        v2 = a1[2];
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = a1[1];
  }

  a1[2] = v3;
  a1[5] = a1[4];
  a1[38] = a1[37];
  sub_299213AB8((a1 + 43));
  result = a1[13];
  if (result)
  {
    result = (*(*result + 8))(result);
    a1[13] = 0;
  }

  return result;
}

_OWORD *sub_2993CBB38(unint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, unsigned int a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8)
{
  v117 = *MEMORY[0x29EDCA608];
  v112 = a4;
  if ((a2 + 0xFFFF) <= a3)
  {
    v11 = a2 + 0xFFFF;
  }

  else
  {
    v11 = a3;
  }

  if (v11 > a2)
  {
    v12 = *(a1 + 328);
    v13 = *(a1 + 712);
    v14 = a2;
    while (1)
    {
      v15 = v11 - v14;
      if ((*(a1 + 720) - 3) > 2)
      {
        v16 = *v14;
        if ((*v14 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        if (v15 >= 2 && (v16 & 0xE0) == 0xC0)
        {
          v17 = 2;
          v16 = v14[1] & 0x3F | ((v16 & 0x1F) << 6);
        }

        else
        {
          if (v15 < 3)
          {
            goto LABEL_21;
          }

          if ((v16 & 0xF0) == 0xE0)
          {
            v16 = (v16 << 12) | ((v14[1] & 0x3F) << 6) | v14[2] & 0x3F;
            v17 = 3;
          }

          else
          {
            if (v15 == 3)
            {
              goto LABEL_21;
            }

            if ((v16 & 0xF8) == 0xF0)
            {
              v16 = 0;
              v17 = 4;
            }

            else
            {
              if (v15 < 5)
              {
                goto LABEL_21;
              }

              if ((v16 & 0xFC) == 0xF8)
              {
                v16 = 0;
                v17 = 5;
              }

              else
              {
                if (v15 == 5 || (v16 & 0xFE) != 0xFC)
                {
LABEL_21:
                  v16 = 0;
LABEL_10:
                  v17 = 1;
                  goto LABEL_14;
                }

                v16 = 0;
                v17 = 6;
              }
            }
          }
        }
      }

      else
      {
        if (v15 < 2)
        {
          v18 = 0;
          v8 = *v13;
          if ((v12 & *v13 & 0x3FFFF) == 0)
          {
            v17 = 0;
            goto LABEL_31;
          }

          goto LABEL_188;
        }

        v16 = *v14;
        v17 = 2;
      }

LABEL_14:
      v8 = v13[v16];
      if ((v12 & v8 & 0x3FFFF) != 0)
      {
        v14 += v17;
        v12 = v13[v16];
        if (v14 < v11)
        {
          continue;
        }
      }

      goto LABEL_31;
    }
  }

  v17 = 0;
  v14 = a2;
LABEL_31:
  v18 = 0;
  if (v14 && v14 != v11)
  {
    v89 = v11;
    v108 = 0;
    v109 = &v108;
    v110 = 0x2000000000;
    v111 = 0;
    v19 = *(a4 + 136);
    v20 = sub_2993652F8(5u);
    v21 = v89 - v14;
    v85 = v17;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_299277B3C(v14, v21 >> 1, &v105);
      v77 = &v105;
      if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v77 = v105.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      *&buf[4] = v77;
      _os_log_debug_impl(&dword_29918C000, v20, OS_LOG_TYPE_DEBUG, "[TokenizerImpl::lookup] %s", buf, 0xCu);
      if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v105.__r_.__value_.__l.__data_);
      }
    }

    v105.__r_.__value_.__r.__words[0] = &unk_2A1F74930;
    *&v105.__r_.__value_.__r.__words[1] = 0uLL;
    v106 = 0;
    v107 = 0;
    v22 = *(a1 + 1336);
    v86 = (v21 >> 1);
    if (v22 && (v23 = *(v22 + 184)) != 0 && (v24 = (*(*v23 + 24))(v23), v22 = *(a1 + 1336), v24))
    {
      v25 = a6;
      v98 = *(v22 + 184);
      v99 = (v14 - a6);
      v96 = (v14 - a6) >> 1;
    }

    else
    {
      sub_2993C727C(v14, v21 >> 1, (a5 >> 7) & 0xE | BYTE1(a5) & 0x10 | (a5 >> 1) & 0x20, v22, *(a1 + 1344), buf);
      sub_2992726D0(&v105.__r_.__value_.__l.__size_);
      *&v105.__r_.__value_.__r.__words[1] = *&buf[8];
      v106 = v115;
      *&buf[16] = 0;
      v115 = 0;
      v107 = v116;
      *buf = &unk_2A1F74930;
      *&buf[8] = 0;
      v113 = &buf[8];
      sub_299259FC8(&v113);
      v96 = 0;
      v25 = a6;
      v99 = (v14 - a6);
      v98 = &v105;
    }

    if (*(a1 + 1384) == 1)
    {
      gettimeofday((a1 + 1392), 0);
      *(a1 + 1385) = 1;
    }

    v26 = *(a1 + 8);
    if (v26 != *(a1 + 16))
    {
      v27 = a5 & 0x200C4;
      v29 = (a5 & 0x200C0) != 0xC0 || v14 != v25;
      v30 = (a5 & 6) == 0 || v29;
      if (v27 == 196)
      {
        v31 = 2306;
      }

      else
      {
        v31 = 2050;
      }

      if (v27 == 196)
      {
        v32 = 2305;
      }

      else
      {
        v32 = 2049;
      }

      if ((a5 & 0x80000) == 0)
      {
        v31 = (((a5 & 0x80) != 0) << 8) | 0x802;
      }

      v33 = v31 | a5 & 0x1000;
      v34 = (((a5 & 0x80) != 0) << 8) | 0x801;
      if ((a5 & 0x80000) != 0)
      {
        v34 = v32;
      }

      v35 = v34 | a5 & 0x1000;
      v36 = a5 & 0x1000 | (((a5 >> 8) & 7) << 13) | (((a5 & 0x80) != 0) << 8);
      v95 = (a5 >> 3) & 0x10000;
      v39 = v21 != a7 && v21 != 2 && v21 < 4 || (a5 & 4) == 0;
      if ((a5 & 0x40) != 0)
      {
        v40 = v33;
      }

      else
      {
        v40 = v36 | 2;
      }

      v41 = v40 | 0x100;
      v93 = v40;
      v42 = v40 & 0xFFFFF8FF;
      if ((a5 & 0x40) == 0)
      {
        v35 = v36 + 1;
      }

      v43 = v35 | 0x100;
      v88 = v35;
      v44 = v35 & 0xFFFFF8FF;
      if (v30)
      {
        v41 = v42;
      }

      v90 = v39;
      v91 = v41;
      if (v29)
      {
        v45 = v44;
      }

      else
      {
        v45 = v43;
      }

      v87 = v45;
      v46 = *(a1 + 8);
      do
      {
        v47 = *(*v46 + 380);
        v48 = v47 == 1 && (a5 & 0x40000) == 0;
        if (!v48 && (v47 != 10) | *(a1 + 1552) & 1 && ((v47 | 2) != 3 || (a5 & 0x100000) == 0))
        {
          if (*(a1 + 1440) == 1)
          {
            gettimeofday((a1 + 1448), 0);
            *(a1 + 1441) = 1;
          }

          bzero(v19, 0x3000uLL);
          v49 = sub_299237120();
          v50 = v93;
          if (!*v49)
          {
            v50 = v91;
          }

          v51 = *v46;
          v52 = *(a1 + 1336);
          *buf = &unk_2A1F78A58;
          *&buf[8] = &v112;
          v115 = buf;
          v53 = (*(*v51 + 88))(v51, v50 | v95, v14, v21, v98, v52, v99, v19, 512, buf, v96, a8);
          sub_2993872B0(buf);
          sub_299312604(a1 + 1416, 0);
          sub_2993CC8A4(a1, v112, a2, v14, v21, a5, v53, v26, v109 + 3, 0);
          if (!v90)
          {
            if (*(a1 + 1440) == 1)
            {
              gettimeofday((a1 + 1448), 0);
              *(a1 + 1441) = 1;
            }

            bzero(v19, 0x3000uLL);
            v54 = sub_299237120();
            v55 = v88;
            if (!*v54)
            {
              v55 = v87;
            }

            v56 = *v46;
            v57 = *(a1 + 1336);
            *buf = &unk_2A1F78AD8;
            *&buf[8] = &v112;
            v115 = buf;
            v58 = (*(*v56 + 88))(v56, v55 | v95, v14, v21, v98, v57, v99, v19, 512, buf, v96, a8);
            sub_2993872B0(buf);
            sub_299312604(a1 + 1416, 0);
            sub_2993CC8A4(a1, v112, a2, v14, v21, a5, v58, v26, v109 + 3, 1);
          }
        }

        ++v46;
        ++v26;
      }

      while (v46 != *(a1 + 16));
    }

    sub_299312604(a1 + 1360, 0);
    *buf = v14;
    *&buf[8] = v89 - v14;
    *&buf[16] = v99;
    v115 = a5;
    if ((a5 & 0x100000) == 0)
    {
      v59 = *(a1 + 1328);
      if (v59)
      {
        sub_2993CCD90(a1, *(a1 + 192), a2, v112, *(v59 + 52), 7000, buf, v109 + 3);
        sub_2993CCD90(a1, *(a1 + 200), a2, v112, *(*(a1 + 1328) + 68), 5200, buf, v109 + 3);
      }
    }

    v60 = v98[1].__r_.__value_.__s.__data_[8];
    v61 = *(a1 + 1544);
    v103[0] = MEMORY[0x29EDCA5F8];
    v103[1] = 0x40000000;
    v103[2] = sub_2993CCF98;
    v103[3] = &unk_29EF22118;
    v103[6] = a2;
    v103[7] = v14;
    v104 = v60;
    v103[4] = &v108;
    v103[5] = v112;
    sub_29922F998(v61, v14, v86, 1, v103);
    v62 = *(a1 + 1544);
    v101[0] = MEMORY[0x29EDCA5F8];
    v101[1] = 0x40000000;
    v101[2] = sub_2993CD0F0;
    v101[3] = &unk_29EF22140;
    v101[6] = a2;
    v101[7] = v14;
    v102 = v60;
    v101[4] = &v108;
    v101[5] = v112;
    sub_29922FEFC(v62, 1, v14, v86, (a5 >> 6) & 1, v101);
    v63 = v109 + 3;
    v18 = v109[3];
    if ((v8 & 0x80000000) == 0 && v18)
    {
      goto LABEL_187;
    }

    v64 = &v14[v85];
    v65 = v89;
    if (&v14[v85] > v89)
    {
      v18 = sub_2993CD144(a1, v112, v8, a2, v14, &v14[v85], v60, v63);
      goto LABEL_187;
    }

    if ((v8 & 0x40000000) == 0)
    {
      v66 = 0;
      goto LABEL_155;
    }

    if (v64 >= v89)
    {
      v67 = 0;
      v66 = &v14[v85];
      goto LABEL_137;
    }

    v67 = 0;
    v66 = &v14[v85];
    v68 = v8;
    while (1)
    {
      v69 = v89 - v66;
      if ((*(a1 + 720) - 3) > 2)
      {
        v70 = *v66;
        if ((*v66 & 0x80000000) == 0)
        {
          goto LABEL_116;
        }

        if (v69 >= 2 && (v70 & 0xE0) == 0xC0)
        {
          v71 = 2;
          v70 = v66[1] & 0x3F | ((v70 & 0x1F) << 6);
        }

        else
        {
          if (v69 < 3)
          {
            goto LABEL_127;
          }

          if ((v70 & 0xF0) == 0xE0)
          {
            v70 = (v70 << 12) | ((v66[1] & 0x3F) << 6) | v66[2] & 0x3F;
            v71 = 3;
          }

          else
          {
            if (v69 == 3)
            {
              goto LABEL_127;
            }

            if ((v70 & 0xF8) == 0xF0)
            {
              v70 = 0;
              v71 = 4;
            }

            else
            {
              if (v69 < 5)
              {
                goto LABEL_127;
              }

              if ((v70 & 0xFC) == 0xF8)
              {
                v70 = 0;
                v71 = 5;
              }

              else
              {
                if (v69 == 5 || (v70 & 0xFE) != 0xFC)
                {
LABEL_127:
                  v70 = 0;
LABEL_116:
                  v71 = 1;
                  goto LABEL_120;
                }

                v70 = 0;
                v71 = 6;
              }
            }
          }
        }
      }

      else
      {
        if (v69 < 2)
        {
          if ((v68 & **(a1 + 712) & 0x3FFFF) == 0)
          {
LABEL_137:
            if (v66)
            {
LABEL_138:
              if (v67 <= *(a1 + 1016))
              {
                v73 = v66 - v14;
                if ((a5 & 0x40) == 0 || !v18)
                {
                  goto LABEL_150;
                }

                if (v73 >= 2)
                {
                  v74 = v73 >> 1;
                  v75 = v14;
                  while (1)
                  {
                    v76 = *v75;
                    v75 += 2;
                    if ((v76 - 123) <= 0xFFFFFFE5)
                    {
                      break;
                    }

                    if (!--v74)
                    {
                      goto LABEL_155;
                    }
                  }

LABEL_150:
                  v78 = 10;
                  if (v73 < 0xA)
                  {
                    v78 = v66 - v14;
                  }

                  if ((v8 & *(a1 + 1312) & 0x3FFFF) != 0)
                  {
                    v73 = v78;
                  }

                  sub_2993CD144(a1, v112, v8, a2, v14, &v14[v73], v60, v63);
                  v65 = v89;
                }
              }

LABEL_155:
              if ((v8 & 0x3C000000) == 0)
              {
LABEL_185:
                v18 = v109[3];
                if (!v18)
                {
                  sub_2993CD144(a1, v112, v8, a2, v14, v64, v60, v109 + 3);
                  v18 = v109[3];
                }

                goto LABEL_187;
              }

              v79 = 1;
              while (2)
              {
                if (v64 != v66)
                {
                  sub_2993CD144(a1, v112, v8, a2, v14, v64, v60, v109 + 3);
                  v65 = v89;
                  v80 = v89 - v64;
                  if ((*(a1 + 720) - 3) > 2)
                  {
                    v81 = *v64;
                    if (*v64 < 0)
                    {
                      if (v80 >= 2 && (v81 & 0xE0) == 0xC0)
                      {
                        v82 = 2;
                        v81 = v64[1] & 0x3F | ((v81 & 0x1F) << 6);
                        goto LABEL_167;
                      }

                      if (v80 >= 3)
                      {
                        if ((v81 & 0xF0) == 0xE0)
                        {
                          v81 = (v81 << 12) | ((v64[1] & 0x3F) << 6) | v64[2] & 0x3F;
                          v82 = 3;
                          goto LABEL_167;
                        }

                        if (v80 != 3)
                        {
                          if ((v81 & 0xF8) == 0xF0)
                          {
                            v81 = 0;
                            v82 = 4;
                            goto LABEL_167;
                          }

                          if (v80 >= 5)
                          {
                            if ((v81 & 0xFC) == 0xF8)
                            {
                              v81 = 0;
                              v82 = 5;
                              goto LABEL_167;
                            }

                            if (v80 != 5 && (v81 & 0xFE) == 0xFC)
                            {
                              v81 = 0;
                              v82 = 6;
                              goto LABEL_167;
                            }
                          }
                        }
                      }

                      v81 = 0;
                    }

                    v82 = 1;
                    goto LABEL_167;
                  }

                  if (v80 < 2)
                  {
                    v82 = 0;
                    v81 = 0;
                  }

                  else
                  {
                    v81 = *v64;
                    v82 = 2;
                  }

LABEL_167:
                  if ((v8 & 0x3FFFF & *(*(a1 + 712) + 4 * v81)) == 0)
                  {
                    goto LABEL_185;
                  }

                  v64 += v82;
                }

                if (v79 >= ((v8 >> 26) & 0xF))
                {
                  goto LABEL_185;
                }

                ++v79;
                if (v64 > v65)
                {
                  goto LABEL_185;
                }

                continue;
              }
            }
          }

LABEL_187:
          v105.__r_.__value_.__r.__words[0] = &unk_2A1F74930;
          *buf = &v105.__r_.__value_.__l.__size_;
          sub_299259FC8(buf);
          _Block_object_dispose(&v108, 8);
          break;
        }

        v70 = *v66;
        v71 = 2;
      }

LABEL_120:
      v72 = *(*(a1 + 712) + 4 * v70);
      if ((v68 & v72 & 0x3FFFF) != 0)
      {
        v66 += v71;
        ++v67;
        v68 = v72;
        if (v66 < v89)
        {
          continue;
        }
      }

      goto LABEL_138;
    }
  }

LABEL_188:
  v83 = *MEMORY[0x29EDCA608];
  return v18;
}