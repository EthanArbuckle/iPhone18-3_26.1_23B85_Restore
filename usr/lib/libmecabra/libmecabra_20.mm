void sub_2992BE9F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_2992BEA10(uint64_t a1, unsigned int a2, const __CFString **a3, const __CFString **a4)
{
  v49 = a2;
  v4 = 50;
  if (a2 != 2)
  {
    v4 = 0;
  }

  if (a2 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  if (!v5)
  {
    return 0;
  }

  v7 = a3;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  if (a3 == a4)
  {
    v13 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = *v7;
      v11 = sub_299277300(*a1);
      sub_299278568(v10, __p);
      v50[0] = MEMORY[0x29EDCA5F8];
      v50[1] = 0x40000000;
      v50[2] = sub_299234CE0;
      v50[3] = &unk_29EF0DD50;
      v51 = v11;
      v50[4] = __p;
      sub_299234450(__p, v50, 0, &v45);
      if (v44 < 0)
      {
        operator delete(__p[0]);
      }

      if (v45)
      {
        v12 = *(v45 + 32);
        if (v12 >= v9)
        {
          sub_2992B4184(&v46, &v45);
          v9 = v12;
        }
      }

      if (*(&v45 + 1))
      {
        sub_2991A893C(*(&v45 + 1));
      }

      ++v7;
    }

    while (v7 != a4);
    v13 = v46;
    v14 = v47;
    if (v46 != v47)
    {
      while (1)
      {
        v16 = *v13;
        v15 = *(v13 + 1);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          v17 = *(v16 + 32);
          sub_2991A893C(v15);
          if (v17 < v9)
          {
            break;
          }

          goto LABEL_22;
        }

        if (*(v16 + 32) < v9)
        {
          break;
        }

LABEL_22:
        v13 += 16;
        if (v13 == v14)
        {
          v13 = v14;
          goto LABEL_38;
        }
      }

      if (v13 != v14)
      {
        for (i = v13 + 16; i != v14; i += 16)
        {
          v21 = *i;
          v20 = *(i + 1);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            v22 = *(v21 + 32);
            sub_2991A893C(v20);
            if (v22 >= v9)
            {
              v21 = *i;
              v23 = *(i + 1);
LABEL_34:
              *i = 0;
              *(i + 1) = 0;
              v24 = *(v13 + 1);
              *v13 = v21;
              *(v13 + 1) = v23;
              if (v24)
              {
                sub_2991A893C(v24);
              }

              v13 += 16;
            }
          }

          else if (*(v21 + 32) >= v9)
          {
            v23 = 0;
            goto LABEL_34;
          }
        }
      }
    }
  }

LABEL_38:
  sub_2992BF21C(&v46, v13, v47);
  if (v5 < (v47 - v46) >> 4)
  {
    sub_2992BF21C(&v46, &v46[16 * v5], v47);
  }

  v50[0] = &v49;
  v25 = sub_2992BF3D8((a1 + 8), v49);
  v26 = v25;
  v27 = (v25 + 3);
  if (v25 + 3 != &v46)
  {
    v28 = v47;
    v29 = v47 - v46;
    v30 = v25[5];
    v31 = v25[3];
    if (v30 - v31 < (v47 - v46))
    {
      v32 = v29 >> 4;
      if (v31)
      {
        sub_2992912B4(v25 + 3);
        operator delete(*v27);
        v30 = 0;
        *v27 = 0;
        *(v27 + 8) = 0;
        *(v27 + 16) = 0;
      }

      if (!(v32 >> 60))
      {
        v33 = v30 >> 3;
        if (v30 >> 3 <= v32)
        {
          v33 = v32;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFF0)
        {
          v34 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v34 = v33;
        }

        if (!(v34 >> 60))
        {
          sub_2992B4E24(v27, v34);
        }
      }

      sub_299212A8C();
    }

    v35 = v25[4] - v31;
    if (v35 >= v29)
    {
      v39 = sub_2992BF368(v46, v47, v31);
      for (j = v26[4]; j != v39; j -= 2)
      {
        v41 = *(j - 1);
        if (v41)
        {
          sub_2991A893C(v41);
        }
      }

      v26[4] = v39;
    }

    else
    {
      v36 = &v46[v35];
      sub_2992BF368(v46, &v46[v35], v31);
      for (k = v26[4]; v36 != v28; k += 2)
      {
        *k = *v36;
        v38 = *(v36 + 1);
        k[1] = v38;
        if (v38)
        {
          atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
        }

        v36 += 16;
      }

      v26[4] = k;
    }
  }

  v18 = v46 != v47;
  v50[0] = &v46;
  sub_299291260(v50);
  return v18;
}

void sub_2992BEE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  __p = &a18;
  sub_299291260(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_2992BEE7C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (CFStringFind(result, @"Siri", 0).location == -1)
    {
      goto LABEL_12;
    }

    if (CFStringHasSuffix(v1, @".dat") || CFStringHasSuffix(v1, @".dic"))
    {
      return 11;
    }

    if (CFStringHasSuffix(v1, @"unilm.lm"))
    {
      return 10;
    }

    if (CFStringHasSuffix(v1, @".lm"))
    {
      return 8;
    }

    if (!CFStringHasSuffix(v1, @".rnnlm"))
    {
LABEL_12:
      if (CFStringFind(v1, @"ucm", 0).location == -1)
      {
        if (CFStringHasSuffix(v1, @"customized_lexicon.dat"))
        {
          return 15;
        }

        else if (CFStringHasSuffix(v1, @".dic"))
        {
          return 1;
        }

        else if (CFStringHasSuffix(v1, @"unilm.lm"))
        {
          return 5;
        }

        else if (CFStringHasSuffix(v1, @".lm"))
        {
          return 3;
        }

        else if (CFStringHasSuffix(v1, @".rnnlm"))
        {
          return 4;
        }

        else if (CFStringHasSuffix(v1, @".lexicon"))
        {
          return 13;
        }

        else if (CFStringHasSuffix(v1, @".cpml"))
        {
          return 14;
        }

        else if (CFStringHasSuffix(v1, @"Wubixing"))
        {
          return 12;
        }

        else
        {
          return 16 * (CFStringFind(v1, @"blocklist", 0).location != -1);
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 9;
    }
  }

  return result;
}

uint64_t sub_2992BF064(uint64_t a1, CFURLRef relativeURL)
{
  v3 = CFURLCopyAbsoluteURL(relativeURL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 120);
  if (v5 && CFEqual(v3, v5) || sub_299277300(*a1) != 5 || (v6 = sub_2993E02C0(), !sub_2993E0424(v6, v4)))
  {
    v7 = 0;
  }

  else
  {
    sub_2992BF1BC((a1 + 120), v4);
    v7 = 1;
    *(a1 + 105) = 1;
  }

  CFRelease(v4);
  return v7;
}

void sub_2992BF114(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992BF12C(uint64_t a1, CFArrayRef theArray)
{
  if (!theArray || !CFArrayGetCount(theArray))
  {
    return 0;
  }

  v4 = sub_29936CDE8(theArray);
  v5 = sub_2992BD9B4(a1, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

void sub_2992BF1A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299229F00(va, 0);
  _Unwind_Resume(a1);
}

void sub_2992BF1BC(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    sub_29920FE30(a1, cf);
  }
}

uint64_t sub_2992BF21C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v13 = a2;
    }

    else
    {
      v6 = *a1;
      v7 = -*a1;
      v8 = *a1 + a2;
      v9 = *a1 + a3;
      do
      {
        v10 = (v9 + v7);
        v11 = *(v9 + v7);
        *v10 = 0;
        v10[1] = 0;
        v12 = *(v8 + v7 + 8);
        *(v8 + v7) = v11;
        if (v12)
        {
          sub_2991A893C(v12);
        }

        v8 += 16;
        v9 += 16;
      }

      while (v9 + v7 != v5);
      v5 = a1[1];
      v13 = v8 - v6;
    }

    while (v5 != v13)
    {
      v14 = *(v5 - 8);
      if (v14)
      {
        sub_2991A893C(v14);
      }

      v5 -= 16;
    }

    a1[1] = v13;
  }

  return a2;
}

const __CFDictionary *sub_2992BF2E4(uint64_t a1, const void *a2, int a3)
{
  result = *(a1 + 96);
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
        return ((valuePtr & a3) != 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_2992BF368(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        sub_2991A893C(v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_2992BF3D8(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_2992BF7F0(char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 3;
    sub_299291260(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_2992BF838(uint64_t a1, uint64_t *a2, int a3)
{
  if (((*(**a2 + 32))() & 1) == 0 && !a3)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v7 < v6)
    {
      v8 = *a2;
      *a2 = 0;
      *v7 = v8;
      v9 = v7 + 8;
LABEL_26:
      *(a1 + 32) = v9;
      return *(v9 - 1);
    }

    v18 = *(a1 + 24);
    v19 = v7 - v18;
    v20 = (v7 - v18) >> 3;
    v21 = v20 + 1;
    if (!((v20 + 1) >> 61))
    {
      v22 = v6 - v18;
      if (v22 >> 2 > v21)
      {
        v21 = v22 >> 2;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        v23 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      v39 = a1 + 24;
      if (v23)
      {
        sub_29921EA5C(v23);
      }

      v28 = v20;
      v29 = (8 * v20);
      v30 = *a2;
      *a2 = 0;
      v31 = &v29[-v28];
      *v29 = v30;
      v9 = v29 + 1;
      memcpy(v31, v18, v19);
      v32 = *(a1 + 24);
      *(a1 + 24) = v31;
      *(a1 + 32) = v9;
      v33 = *(a1 + 40);
      *(a1 + 40) = 0;
      v37 = v32;
      v38 = v33;
      v35 = v32;
      v36 = v32;
      sub_2992C0500(&v35);
      goto LABEL_26;
    }

LABEL_28:
    sub_299212A8C();
  }

  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v11 >= v10)
  {
    v13 = *a1;
    v14 = v11 - *a1;
    v15 = (v14 >> 3) + 1;
    if (v15 >> 61)
    {
      goto LABEL_28;
    }

    v16 = v10 - v13;
    if (v16 >> 2 > v15)
    {
      v15 = v16 >> 2;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v17 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    v39 = a1;
    if (v17)
    {
      sub_29921EA5C(v17);
    }

    v24 = (8 * (v14 >> 3));
    v25 = *a2;
    *a2 = 0;
    *v24 = v25;
    v9 = v24 + 1;
    memcpy(0, v13, v14);
    v26 = *a1;
    *a1 = 0;
    *(a1 + 8) = v9;
    v27 = *(a1 + 16);
    *(a1 + 16) = 0;
    v37 = v26;
    v38 = v27;
    v35 = v26;
    v36 = v26;
    sub_2992C0500(&v35);
  }

  else
  {
    v12 = *a2;
    *a2 = 0;
    *v11 = v12;
    v9 = v11 + 1;
  }

  *(a1 + 8) = v9;
  return *(v9 - 1);
}

uint64_t sub_2992BFA30(uint64_t a1, uint64_t a2)
{
  if (!(*(**a2 + 32))())
  {
    (*(**a2 + 16))(&v31);
    v6 = *(a1 + 32);
    v13 = *(a1 + 40);
    v5 = (a1 + 32);
    if (v6 >= v13)
    {
      v16 = *(a1 + 24);
      v17 = v6 - v16;
      v18 = (v6 - v16) >> 3;
      v19 = v18 + 1;
      if ((v18 + 1) >> 61)
      {
        sub_299212A8C();
      }

      v20 = v13 - v16;
      if (v20 >> 2 > v19)
      {
        v19 = v20 >> 2;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      v33 = a1 + 24;
      if (v21)
      {
        sub_29921EA5C(v21);
      }

      v25 = (v6 - v16) >> 3;
      v26 = (8 * v18);
      v27 = v31;
      v31 = 0;
      v28 = (8 * v18 - 8 * v25);
      *v26 = v27;
      v15 = (v26 + 1);
      memcpy(v28, v16, v17);
      v23 = *(a1 + 24);
      *(a1 + 24) = v28;
      *(a1 + 32) = v15;
      v24 = *(a1 + 40);
      *(a1 + 40) = 0;
      goto LABEL_23;
    }

LABEL_12:
    v14 = v31;
    v31 = 0;
    *v6 = v14;
    v15 = (v6 + 8);
    goto LABEL_24;
  }

  (*(**a2 + 16))(&v31);
  v6 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (v6 < v4)
  {
    goto LABEL_12;
  }

  v7 = *a1;
  v8 = &v6[-*a1];
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    sub_299212A8C();
  }

  v11 = v4 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  v33 = a1;
  if (v12)
  {
    sub_29921EA5C(v12);
  }

  v22 = v31;
  v31 = 0;
  *(8 * v9) = v22;
  v15 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  v23 = *a1;
  *a1 = 0;
  *(a1 + 8) = v15;
  v24 = *(a1 + 16);
  *(a1 + 16) = 0;
LABEL_23:
  v32[2] = v23;
  v32[3] = v24;
  v32[0] = v23;
  v32[1] = v23;
  sub_2992C0500(v32);
LABEL_24:
  *v5 = v15;
  v29 = v31;
  v31 = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  result = *(*v5 - 8);
  ++*(result + 8);
  return result;
}

void sub_2992BFCB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2992BFCF4(void *result, char a2, uint64_t a3, _BYTE *a4)
{
  v7 = result;
  v8 = *result;
  v9 = result[1];
  while (v8 != v9 && (!a4 || (*a4 & 1) == 0))
  {
    v10 = *(a3 + 24);
    if (!v10)
    {
LABEL_15:
      sub_2991A2240();
    }

    result = (*(*v10 + 48))(v10, v8);
    v8 += 8;
  }

  if ((a2 & 1) == 0)
  {
    v12 = v7[3];
    v11 = v7[4];
    while (v12 != v11 && (!a4 || (*a4 & 1) == 0))
    {
      v13 = *(a3 + 24);
      if (!v13)
      {
        goto LABEL_15;
      }

      result = (*(*v13 + 48))(v13, v12);
      v12 += 8;
    }
  }

  return result;
}

uint64_t sub_2992BFDD8(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 48);
  v5 = *(a1 + 48);
  v6 = (a1 + 56);
  if (v5 != (a1 + 56))
  {
    while (1)
    {
      v7 = v5[4];
      if (*(v7 + 32) == *(a2 + 32) && *(v7 + 64) == *(a2 + 64))
      {
        break;
      }

      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
      if (v9 == v6)
      {
        goto LABEL_14;
      }
    }
  }

  if (v5 != v6)
  {
    v11 = v5[4];
    if (*(v11 + 56) >= *(a2 + 56))
    {
      return 0;
    }

    sub_2992C0094(*v11, v11);
    sub_2992C0578(v4, v5);
    operator delete(v5);
  }

LABEL_14:
  if (*(a1 + 64) == 80)
  {
    v12 = *v6;
    if (*v6)
    {
      do
      {
        v13 = v12;
        v12 = v12[1];
      }

      while (v12);
    }

    else
    {
      v15 = v6;
      do
      {
        v13 = v15[2];
        v10 = *v13 == v15;
        v15 = v13;
      }

      while (v10);
    }

    sub_2992C0094(*v13[4], v13[4]);
    v16 = *v6;
    if (*v6)
    {
      do
      {
        v17 = v16;
        v16 = v16[1];
      }

      while (v16);
    }

    else
    {
      v18 = v6;
      do
      {
        v17 = v18[2];
        v10 = *v17 == v18;
        v18 = v17;
      }

      while (v10);
    }

    sub_2992C0578(v4, v17);
    operator delete(v17);
  }

  v19 = *v6;
  if (!*v6)
  {
LABEL_34:
    operator new();
  }

  v20 = *(a2 + 56);
  while (1)
  {
    while (1)
    {
      v21 = v19;
      v22 = *(v19[4] + 56);
      if (v20 <= v22)
      {
        break;
      }

      v19 = *v19;
      if (!*v21)
      {
        goto LABEL_34;
      }
    }

    if (v22 <= v20)
    {
      break;
    }

    v19 = v19[1];
    if (!v19)
    {
      goto LABEL_34;
    }
  }

  v23 = *a2;
  v25 = *(*a2 + 40);
  v24 = *(*a2 + 48);
  if (v25 >= v24)
  {
    v27 = v23[4];
    v28 = (v25 - v27) >> 3;
    if ((v28 + 1) >> 61)
    {
      sub_299212A8C();
    }

    v29 = v24 - v27;
    v30 = v29 >> 2;
    if (v29 >> 2 <= (v28 + 1))
    {
      v30 = v28 + 1;
    }

    if (v29 >= 0x7FFFFFFFFFFFFFF8)
    {
      v31 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = v30;
    }

    if (v31)
    {
      sub_29920B86C((v23 + 4), v31);
    }

    v32 = (8 * v28);
    *v32 = a2;
    v26 = 8 * v28 + 8;
    v33 = v23[4];
    v34 = v23[5] - v33;
    v35 = v32 - v34;
    memcpy(v32 - v34, v33, v34);
    v36 = v23[4];
    v23[4] = v35;
    v23[5] = v26;
    v23[6] = 0;
    if (v36)
    {
      operator delete(v36);
    }
  }

  else
  {
    *v25 = a2;
    v26 = (v25 + 1);
  }

  v23[5] = v26;
  return 1;
}

uint64_t sub_2992C0094(uint64_t result, uint64_t a2)
{
  v3 = *(result + 32);
  v2 = *(result + 40);
  if (v3 != v2)
  {
    while (*v3 != a2)
    {
      if (++v3 == v2)
      {
        return result;
      }
    }

    if (v3 != v2)
    {
      v4 = v3 + 1;
      if (v3 + 1 != v2)
      {
        do
        {
          if (*v4 != a2)
          {
            *v3++ = *v4;
          }

          ++v4;
        }

        while (v4 != v2);
        v2 = *(result + 40);
      }
    }
  }

  if (v3 != v2)
  {
    *(result + 40) = v3;
  }

  return result;
}

uint64_t sub_2992C0144(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2991A2240();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_2992C0198@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v24 = *MEMORY[0x29EDCA608];
  sub_2991D7954(v11);
  v21.__locale_ = &unk_2A1F6BB28;
  v22 = v11;
  v23 = &v21;
  sub_2992BFCF4(a1, 0, &v21, 0);
  sub_2992C07E4(&v21);
  std::ios_base::getloc((&v12 + *(v12 - 24)));
  v4 = std::locale::use_facet(&v21, MEMORY[0x29EDC93D0]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v21);
  std::ostream::put();
  std::ostream::flush();
  if ((v19 & 0x10) != 0)
  {
    v6 = v18;
    if (v18 < v15)
    {
      v18 = v15;
      v6 = v15;
    }

    locale = v14[4].__locale_;
  }

  else
  {
    if ((v19 & 8) == 0)
    {
      v5 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v14[1].__locale_;
    v6 = v14[3].__locale_;
  }

  v5 = v6 - locale;
  if ((v6 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, locale, v5);
  }

LABEL_14:
  a2[v5] = 0;
  v11[0] = *MEMORY[0x29EDC9528];
  v8 = *(MEMORY[0x29EDC9528] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v12 = v8;
  v13 = MEMORY[0x29EDC9570] + 16;
  if (v17 < 0)
  {
    operator delete(__p);
  }

  v13 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  result = MEMORY[0x29C29BF00](&v20);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992C04B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_2992C07E4(v25 - 88);
  sub_2991D7BF8(&a9, MEMORY[0x29EDC9528]);
  MEMORY[0x29C29BF00](&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_2992C0500(uint64_t a1)
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

uint64_t *sub_2992C0578(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  return sub_2991FA400(v6, a2);
}

uint64_t sub_2992C063C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F6BB28;
  a2[1] = v2;
  return result;
}

void sub_2992C0668(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  (*(**a2 + 48))(__p);
  if ((v16 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_2991C0E9C((v3 + 16), v4, v5);
  v7 = sub_2991C0E9C(v6, "(", 1);
  v8 = MEMORY[0x29C29BD10](v7, *(*a2 + 24));
  v9 = sub_2991C0E9C(v8, ", ", 2);
  v10 = MEMORY[0x29C29BD60](v9, *(*a2 + 8));
  v11 = sub_2991C0E9C(v10, ", ", 2);
  v12 = MEMORY[0x29C29BD60](v11, *(*a2 + 16));
  v13 = sub_2991C0E9C(v12, ", ", 2);
  v14 = MEMORY[0x29C29BD60](v13, *(*a2 + 64));
  sub_2991C0E9C(v14, "), ", 3);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2992C077C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992C0798(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6BB98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992C07E4(uint64_t a1)
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

uint64_t sub_2992C0864(int a1, __CFDictionary *a2, char **lpsrc, char a4)
{
  if (!lpsrc)
  {
    return 0;
  }

  v7 = **lpsrc;
  v8 = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F72C30, 0);
  result = 0;
  if ((a4 & 1) == 0)
  {
    if (v8)
    {
      result = sub_299377154(v8);
      if (result)
      {
        result = (*(*v8 + 56))(v8);
        if (result)
        {
          v10 = (*(*v8 + 56))(v8);
          result = CFStringGetLength(v10);
          if (result)
          {
            if (v8[1] < 1)
            {
              return 0;
            }

            v11 = (*(*v8 + 416))(v8);
            if ((v11 & 0x4000000) == 0)
            {
              return 0;
            }

            v12 = v11;
            if ((atomic_load_explicit(&qword_2A145E890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145E890))
            {
              off_2A145E888 = sub_299237120();
              __cxa_guard_release(&qword_2A145E890);
            }

            if ((~v12 & 0x6000000) != 0 || (((v12 & 4) == 0) & *off_2A145E888) != 0)
            {
              if (((*(*v8 + 416))(v8) & 0x6000002) != 0x4000002 || *sub_299237120() == 1 && (*(*v8 + 96))(v8) == 68)
              {
                v13 = 10;
              }

              else
              {
                v13 = v8[1] - 1;
              }
            }

            else
            {
              v13 = 0;
            }

            sub_2992CB4E8(a1, a2, v13);
            v14 = (*(*v8 + 24))(v8);
            sub_2992CB59C(a1, a2, v14);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2992C0B24(const __CFArray *a1)
{
  if (!a1)
  {
    __assert_rtn("getCPGestureCount", "GestureUtils.cpp", 19, "gestures");
  }

  if (CFArrayGetCount(a1) < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
    if ((**ValueAtIndex[3])(ValueAtIndex[3]) == 2)
    {
      ++v2;
    }

    ++v3;
  }

  while (v3 < CFArrayGetCount(a1));
  return v2;
}

CFStringRef sub_2992C0BE0(const __CFArray *a1)
{
  if (!a1)
  {
    __assert_rtn("createTypingGestureString", "GestureUtils.cpp", 32, "gestures");
  }

  Count = CFArrayGetCount(a1);
  __src = 0;
  v17 = 0;
  v18 = 0;
  sub_299218E20(&__src, Count);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v4 = *(CFArrayGetValueAtIndex(a1, i) + 3);
      if (!(**v4)(v4) || (**v4)(v4) == 1)
      {
        v5 = (*(*v4 + 8))(v4);
        v6 = v17;
        if (v17 >= v18)
        {
          v8 = __src;
          v9 = v17 - __src;
          v10 = (v17 - __src) >> 1;
          if (v10 <= -2)
          {
            sub_299212A8C();
          }

          if (v18 - __src <= v10 + 1)
          {
            v11 = v10 + 1;
          }

          else
          {
            v11 = v18 - __src;
          }

          if (v18 - __src >= 0x7FFFFFFFFFFFFFFELL)
          {
            v12 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          if (v12)
          {
            sub_299212A48(&__src, v12);
          }

          *(2 * v10) = v5;
          v7 = 2 * v10 + 2;
          memcpy(0, v8, v9);
          v13 = __src;
          __src = 0;
          v17 = v7;
          v18 = 0;
          if (v13)
          {
            operator delete(v13);
          }
        }

        else
        {
          *v17 = v5;
          v7 = (v6 + 2);
        }

        v17 = v7;
      }
    }
  }

  v14 = CFStringCreateWithCharacters(0, __src, (v17 - __src) >> 1);
  if (__src)
  {
    v17 = __src;
    operator delete(__src);
  }

  return v14;
}

void sub_2992C0DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const __CFArray *sub_2992C0E18(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    if (CFArrayGetCount(result) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
      return ((**ValueAtIndex[3])(ValueAtIndex[3]) == 3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFArray *sub_2992C0E90(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i != v4; ++i)
    {
      v6 = *(CFArrayGetValueAtIndex(a1, i) + 3);
      if (!(**v6)(v6) || (**v6)(v6) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v8 = *(v6 + 8);
        v7 = *(v6 + 16);
        while (v8 != v7)
        {
          LOWORD(v12) = *v8;
          HIDWORD(v12) = *(v8 + 4);
          sub_2992C1040(&v13, &v12);
          v8 += 8;
        }

        LOWORD(v12) = 0;
        HIDWORD(v12) = 0;
        sub_2992C1040(&v13, &v12);
        v9 = v13;
        v10 = CFDataCreate(0, v13, v14 - v13);
        v12 = v10;
        CFArrayAppendValue(Mutable, v10);
        if (v10)
        {
          CFRelease(v10);
        }

        if (v9)
        {
          operator delete(v9);
        }
      }
    }
  }

  return Mutable;
}

void sub_2992C1010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992C1040(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_299212A8C();
    }

    v9 = v3 - v6;
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

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_29919600C();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_2992C1140(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

uint64_t sub_2992C1174(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = *a1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v13 = off_2A1461E60;
  v20 = off_2A1461E60;
  if (!off_2A1461E60)
  {
    v14 = sub_2992C2030();
    v18[3] = dlsym(v14, "ITTouchTranscoderSessionAddEvent");
    off_2A1461E60 = v18[3];
    v13 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v13)
  {
    dlerror();
    v16 = abort_report_np();
    _Block_object_dispose(&v17, 8);
    _Unwind_Resume(v16);
  }

  result = v13(v12, a2, a3, a4, a5, a6);
  ++*(a1 + 2);
  return result;
}

uint64_t sub_2992C12D8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v4 = off_2A1461E68;
  v11 = off_2A1461E68;
  if (!off_2A1461E68)
  {
    v5 = sub_2992C2030();
    v9[3] = dlsym(v5, "ITTouchTranscoderSessionEnumerateCandidates");
    off_2A1461E68 = v9[3];
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

  return v4(v3, a2);
}

uint64_t sub_2992C13F4(uint64_t *a1, int a2, const void *a3)
{
  v6 = sub_2992C1E9C();
  v7 = 0;
  if (!a3 || !v6)
  {
LABEL_25:
    *a1 = v7;
    return a1;
  }

  cf = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v9 = qword_2A1460940;
  v30 = qword_2A1460940;
  if (!qword_2A1460940)
  {
    *buf = MEMORY[0x29EDCA5F8];
    v23 = 0x40000000;
    v24 = sub_2992C20DC;
    v25 = &unk_29EF10630;
    v26 = &v27;
    v10 = sub_2992C2030();
    v28[3] = dlsym(v10, "kITTouchTranscoderLocaleKey");
    qword_2A1460940 = *(v26[1] + 24);
    v9 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (v9)
  {
    CFDictionaryAddValue(Mutable, *v9, a3);
    if (a2)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2000000000;
      v11 = qword_2A1460950;
      v30 = qword_2A1460950;
      if (!qword_2A1460950)
      {
        *buf = MEMORY[0x29EDCA5F8];
        v23 = 0x40000000;
        v24 = sub_2992C217C;
        v25 = &unk_29EF10680;
        v26 = &v27;
        v12 = sub_2992C2030();
        v28[3] = dlsym(v12, "kITTouchTranscoderInstanceTypeValueTapTyping");
        qword_2A1460950 = *(v26[1] + 24);
LABEL_11:
        v11 = v28[3];
      }
    }

    else
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2000000000;
      v11 = qword_2A1460948;
      v30 = qword_2A1460948;
      if (!qword_2A1460948)
      {
        *buf = MEMORY[0x29EDCA5F8];
        v23 = 0x40000000;
        v24 = sub_2992C212C;
        v25 = &unk_29EF10658;
        v26 = &v27;
        v13 = sub_2992C2030();
        v28[3] = dlsym(v13, "kITTouchTranscoderInstanceTypeValueContinuousPath");
        qword_2A1460948 = *(v26[1] + 24);
        goto LABEL_11;
      }
    }

    _Block_object_dispose(&v27, 8);
    if (v11)
    {
      v14 = *v11;
      v27 = 0;
      v28 = &v27;
      v29 = 0x2000000000;
      v15 = qword_2A1460958;
      v30 = qword_2A1460958;
      if (!qword_2A1460958)
      {
        *buf = MEMORY[0x29EDCA5F8];
        v23 = 0x40000000;
        v24 = sub_2992C21CC;
        v25 = &unk_29EF106A8;
        v26 = &v27;
        v16 = sub_2992C2030();
        v28[3] = dlsym(v16, "kITTouchTranscoderInstanceTypeKey");
        qword_2A1460958 = *(v26[1] + 24);
        v15 = v28[3];
      }

      _Block_object_dispose(&v27, 8);
      if (v15)
      {
        CFDictionaryAddValue(Mutable, *v15, v14);
        v27 = 0;
        v28 = &v27;
        v29 = 0x2000000000;
        v17 = off_2A1460960;
        v30 = off_2A1460960;
        if (!off_2A1460960)
        {
          *buf = MEMORY[0x29EDCA5F8];
          v23 = 0x40000000;
          v24 = sub_2992C221C;
          v25 = &unk_29EF106D0;
          v26 = &v27;
          v18 = sub_2992C2030();
          v28[3] = dlsym(v18, "ITTouchTranscoderCreateWithKeyboardLayout");
          off_2A1460960 = *(v26[1] + 24);
          v17 = v28[3];
        }

        _Block_object_dispose(&v27, 8);
        if (v17)
        {
          v7 = (v17)(Mutable, 0, 0, &cf);
          if (cf)
          {
            v19 = sub_2993652F8(3u);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_29918C000, v19, OS_LOG_TYPE_ERROR, "Failed to create touch transcoder", buf, 2u);
            }

            CFRelease(cf);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_25;
        }
      }
    }
  }

  dlerror();
  result = abort_report_np();
  __break(1u);
  return result;
}

void sub_2992C18A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  sub_299274AE8(va, 0);
  _Unwind_Resume(a1);
}

void sub_2992C1988(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992C19B4(va, 0);
  _Unwind_Resume(a1);
}

const void ***sub_2992C19B4(const void ***result, const void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_299274C48(v2, 0);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t *sub_2992C1A18(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = *result;
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v5 = off_2A1461E70;
    v11 = off_2A1461E70;
    if (!off_2A1461E70)
    {
      v6 = sub_2992C2030();
      v9[3] = dlsym(v6, "ITTouchTranscoderUpdateKeyboardLayout");
      off_2A1461E70 = v9[3];
      v5 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    if (!v5)
    {
      dlerror();
      v7 = abort_report_np();
      _Block_object_dispose(&v8, 8);
      _Unwind_Resume(v7);
    }

    return v5(v4, v2, 0x6DB6DB6DB6DB6DB7 * ((v3 - v2) >> 3));
  }

  return result;
}

uint64_t sub_2992C1B60(uint64_t *a1)
{
  v1 = *a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v2 = off_2A1461E78;
  v9 = off_2A1461E78;
  if (!off_2A1461E78)
  {
    v3 = sub_2992C2030();
    v7[3] = dlsym(v3, "ITTouchTranscoderCreateSession");
    off_2A1461E78 = v7[3];
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

  return v2(v1);
}

uint64_t sub_2992C1C74(uint64_t *a1)
{
  v1 = *a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v2 = off_2A1461E80;
  v9 = off_2A1461E80;
  if (!off_2A1461E80)
  {
    v3 = sub_2992C2030();
    v7[3] = dlsym(v3, "ITCandidateGetScore");
    off_2A1461E80 = v7[3];
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

  return v2(v1);
}

uint64_t sub_2992C1D88(uint64_t *a1)
{
  v1 = *a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v2 = off_2A1461E88;
  v9 = off_2A1461E88;
  if (!off_2A1461E88)
  {
    v3 = sub_2992C2030();
    v7[3] = dlsym(v3, "ITCandidateGetString");
    off_2A1461E88 = v7[3];
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

  return v2(v1);
}

uint64_t sub_2992C1E9C()
{
  v2 = *MEMORY[0x29EDCA608];
  if (!qword_2A1461E58)
  {
    qword_2A1461E58 = _sl_dlopen();
  }

  result = qword_2A1461E58;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2992C1F6C(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2A1461E58 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_2992C1FE0(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "ITTouchTranscoderSessionAddEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1461E60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2992C2030()
{
  v0 = sub_2992C1E9C();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *sub_2992C208C(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "ITTouchTranscoderSessionEnumerateCandidates");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1461E68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992C20DC(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "kITTouchTranscoderLocaleKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460940 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992C212C(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "kITTouchTranscoderInstanceTypeValueContinuousPath");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460948 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992C217C(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "kITTouchTranscoderInstanceTypeValueTapTyping");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460950 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992C21CC(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "kITTouchTranscoderInstanceTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460958 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992C221C(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "ITTouchTranscoderCreateWithKeyboardLayout");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1460960 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992C226C(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "ITTouchTranscoderUpdateKeyboardLayout");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1461E70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992C22BC(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "ITTouchTranscoderCreateSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1461E78 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992C230C(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "ITCandidateGetScore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1461E80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992C235C(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "ITCandidateGetString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1461E88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2992C23AC(uint64_t a1, __int128 *a2, const __CFString *a3, const __CFString *a4, int a5, char a6)
{
  *a1 = &unk_2A1F66DC0;
  v8 = sub_29927E580(a1, &off_2A1F6BE60, a2, a3, a4, a5, a6);
  *v8 = &unk_2A1F6BC08;
  v8[15] = &unk_2A1F6BE50;
  Length = CFStringGetLength(a3);
  *(a1 + 128) = &unk_2A1F73CB8;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = Length;
  *(a1 + 168) = 0xFFFFFFFFLL;
  *(a1 + 160) = 64;
  return a1;
}

uint64_t sub_2992C24A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return a1 + 128;
  }
}

void sub_2992C262C(uint64_t *a1)
{
  sub_29927E8D8(a1, &off_2A1F6BE60);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992C2674(uint64_t a1)
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

uint64_t sub_2992C272C(uint64_t a1, uint64_t *a2, const __CFString *a3, const __CFString *a4, int a5)
{
  v13 = 0;
  v14 = a5;
  v15 = 0;
  v8 = (sub_29927E580(a1, a2 + 1, &v13, a3, a4, 0, 0) + 120);
  v9 = a2[7];
  *v8 = v9;
  *(v8 + *(v9 - 32)) = a2[8];
  v10 = *a2;
  *a1 = *a2;
  *(a1 + *(v10 - 32)) = a2[9];
  *(a1 + 120) = a2[10];
  if (a3)
  {
    Length = CFStringGetLength(a3);
  }

  else
  {
    Length = 0;
  }

  *(a1 + 128) = &unk_2A1F73CB8;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = Length;
  *(a1 + 168) = 0xFFFFFFFFLL;
  *(a1 + 160) = 64;
  return a1;
}

uint64_t sub_2992C2934(uint64_t a1, const __CFString *a2, const __CFString *a3, int a4)
{
  *a1 = &unk_2A1F66DC0;
  v9 = 0;
  v10 = a4;
  v11 = 0;
  v6 = sub_29927E580(a1, &off_2A1F6C728, &v9, a2, a3, 0, 0);
  *v6 = &unk_2A1F6C4D0;
  v6[15] = &unk_2A1F6C718;
  if (a2)
  {
    Length = CFStringGetLength(a2);
  }

  else
  {
    Length = 0;
  }

  *(a1 + 128) = &unk_2A1F73CB8;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = Length;
  *(a1 + 168) = 0xFFFFFFFFLL;
  *(a1 + 160) = 64;
  return a1;
}

uint64_t sub_2992C2A54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return a1 + 128;
  }
}

__CFString *sub_2992C2A64(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = (*(*a1 + 48))(a1);
  if (v3 >= 1)
  {
    v4 = v3;
    v5 = 0;
    v6 = *MEMORY[0x29EDB8ED8];
    do
    {
      v7 = (*(*a1 + 128))(a1, v5);
      v8 = CFStringCreateWithFormat(v6, 0, @"%d", v7);
      CFStringAppend(Mutable, v8);
      CFRelease(v8);
      ++v5;
    }

    while (v4 != v5);
  }

  return Mutable;
}

void sub_2992C2C0C(void *a1, uint64_t a2)
{
  v84 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  if (v2 != v3)
  {
    v66 = 0;
    v4 = (v3 - v2) >> 3;
    v63 = v4;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v65 = v4;
    do
    {
      v5 = *(*(a2 + 48) + 8 * v66);
      v6 = (*(*v5 + 304))(v5);
      v7 = *(*v6 + 40 * (*(*v5 + 48))(v5) - 8);
      sub_299255778(0);
      v8 = sub_2992C39CC(&qword_2A1461DC0, v7);
      if (!v8)
      {
        v12 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * v7 + 5]);
        v13 = v12[1];
        if (v13 >= 3)
        {
          v14 = 0;
          v15 = *v12;
          v16 = v15 + 2 * v13 - 6;
          while (word_29945D69A[v14] == *(v16 + v14 * 2))
          {
            if (++v14 == 3)
            {
              v17 = 0;
              while (word_29945D692[v17] == *(v15 + v17 * 2))
              {
                if (++v17 == 3)
                {
                  if (word_2A1461E0C <= v7 && word_2A1461E0E >= v7)
                  {
                    goto LABEL_6;
                  }

                  goto LABEL_83;
                }
              }

              goto LABEL_83;
            }
          }
        }

        goto LABEL_83;
      }

LABEL_6:
      if ((v63 - ((*(a2 + 56) - *(a2 + 48)) >> 3) + *a1) < 1)
      {
        break;
      }

      if (v8)
      {
        v68 = qword_2A1460998;
        if ((atomic_load_explicit(&qword_2A1460988, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2A1460988))
        {
          goto LABEL_26;
        }

        v80 = 112;
        sub_299217DF0(v81, L"で");
        sub_299217DF0(v82, L"で");
        v83 = 272;
        sub_2992C3B5C(qword_2A1460998, __dst, 2uLL);
        for (i = 56; i != -56; i -= 56)
        {
          sub_299274118(&__dst[i]);
        }

        v10 = &qword_2A1460988;
        v11 = qword_2A1460998;
      }

      else
      {
        v68 = qword_2A14609B0;
        if ((atomic_load_explicit(&qword_2A1460990, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2A1460990))
        {
LABEL_26:
          if ((*(*v5 + 408))(v5) != 1)
          {
            (*(*v5 + 544))(v5);
            if (v19)
            {
              (*(*v5 + 552))(v5);
              if (v20)
              {
                v74[0] = (*(*v5 + 544))(v5);
                v74[1] = v21;
                sub_29923A9CC(v74, v76);
                __src = (*(*v5 + 552))(v5);
                v72 = v22;
                sub_29923A9CC(&__src, v74);
                if (v68[1] != *v68)
                {
                  __src = 0;
                  v72 = 0;
                  v73 = 0;
                  v23 = (*(*v5 + 304))(v5);
                  sub_299256F7C(&__src, 0xCCCCCCCCCCCCCCCDLL * ((v23[1] - *v23) >> 3) + 1);
                  v24 = (*(*v5 + 304))(v5);
                  v25 = *v24;
                  v26 = v24[1];
                  if (*v24 != v26)
                  {
                    v27 = v72;
                    do
                    {
                      if (v27 >= v73)
                      {
                        v30 = __src;
                        v31 = v27 - __src;
                        v32 = 0xCCCCCCCCCCCCCCCDLL * ((v27 - __src) >> 3);
                        v33 = v32 + 1;
                        if (v32 + 1 > 0x666666666666666)
                        {
                          sub_29921E9A8();
                        }

                        if (0x999999999999999ALL * ((v73 - __src) >> 3) > v33)
                        {
                          v33 = 0x999999999999999ALL * ((v73 - __src) >> 3);
                        }

                        if (0xCCCCCCCCCCCCCCCDLL * ((v73 - __src) >> 3) >= 0x333333333333333)
                        {
                          v34 = 0x666666666666666;
                        }

                        else
                        {
                          v34 = v33;
                        }

                        if (v34)
                        {
                          sub_29921E9C0(&__src, v34);
                        }

                        v35 = 40 * v32;
                        v36 = *v25;
                        v37 = v25[1];
                        *(v35 + 32) = *(v25 + 4);
                        *v35 = v36;
                        *(v35 + 16) = v37;
                        v27 = 40 * v32 + 40;
                        v38 = (v35 - v31);
                        memcpy((v35 - v31), v30, v31);
                        v39 = __src;
                        __src = v38;
                        v72 = v27;
                        v73 = 0;
                        if (v39)
                        {
                          operator delete(v39);
                        }
                      }

                      else
                      {
                        v28 = *v25;
                        v29 = v25[1];
                        *(v27 + 32) = *(v25 + 4);
                        *v27 = v28;
                        *(v27 + 16) = v29;
                        v27 += 40;
                      }

                      v72 = v27;
                      v25 = (v25 + 40);
                    }

                    while (v25 != v26);
                  }

                  v40 = *v68;
                  if (0x6DB6DB6DB6DB6DB7 * ((v68[1] - *v68) >> 3))
                  {
                    if ((atomic_load_explicit(&qword_2A1460970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460970))
                    {
                      sub_299255778(0);
                      qword_2A1460968 = &qword_2A1461DC0;
                      __cxa_guard_release(&qword_2A1460970);
                    }

                    v41 = v40;
                    v42 = *(v40 + 48);
                    if (v42 <= 0x24E)
                    {
                      v43 = word_29940982A[v42];
                    }

                    else
                    {
                      v43 = 0;
                    }

                    v44 = *(v40 + 23);
                    if (v44 < 0)
                    {
                      v44 = *(v40 + 8);
                    }

                    v45 = *(v40 + 47);
                    if (v45 < 0)
                    {
                      v45 = *(v40 + 32);
                    }

                    v46 = *(sub_2992FE060() + 4);
                    v47 = v72;
                    if (v72 >= v73)
                    {
                      v49 = 0xCCCCCCCCCCCCCCCDLL * ((v72 - __src) >> 3);
                      v50 = v49 + 1;
                      if (v49 + 1 > 0x666666666666666)
                      {
                        sub_29921E9A8();
                      }

                      if (0x999999999999999ALL * ((v73 - __src) >> 3) > v50)
                      {
                        v50 = 0x999999999999999ALL * ((v73 - __src) >> 3);
                      }

                      if (0xCCCCCCCCCCCCCCCDLL * ((v73 - __src) >> 3) >= 0x333333333333333)
                      {
                        v51 = 0x666666666666666;
                      }

                      else
                      {
                        v51 = v50;
                      }

                      if (v51)
                      {
                        sub_29921E9C0(&__src, v51);
                      }

                      v52 = 8 * ((v72 - __src) >> 3);
                      *v52 = 0;
                      *(v52 + 8) = 0;
                      *(v52 + 16) = 0;
                      *(v52 + 24) = v44;
                      *(v52 + 26) = v46;
                      *(v52 + 28) = v45;
                      *(v52 + 30) = v43;
                      *(v52 + 32) = v43;
                      *(v52 + 34) = 0;
                      *(v52 + 36) = 0;
                      *(v52 + 37) = 513;
                      *(v52 + 39) = 0;
                      v48 = 40 * v49 + 40;
                      v53 = (40 * v49 - (v72 - __src));
                      memcpy(v53, __src, v72 - __src);
                      v54 = __src;
                      __src = v53;
                      v72 = v48;
                      v73 = 0;
                      if (v54)
                      {
                        operator delete(v54);
                      }
                    }

                    else
                    {
                      *v72 = 0;
                      *(v47 + 1) = 0;
                      *(v47 + 2) = 0;
                      *(v47 + 12) = v44;
                      *(v47 + 13) = v46;
                      *(v47 + 14) = v45;
                      *(v47 + 15) = v43;
                      *(v47 + 16) = v43;
                      *(v47 + 17) = 0;
                      v47[36] = 0;
                      *(v47 + 37) = 513;
                      v48 = (v47 + 40);
                      v47[39] = 0;
                    }

                    v72 = v48;
                    if ((*(v41 + 47) & 0x8000000000000000) != 0)
                    {
                      v55 = *(v41 + 32);
                    }

                    if ((atomic_load_explicit(&qword_2A1460980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460980))
                    {
                      qword_2A1460978 = sub_299237120();
                      __cxa_guard_release(&qword_2A1460980);
                    }

                    v56 = *(qword_2A1460978 + 538);
                    v57 = *(v5 + 220);
                    sub_2992C3A78(v76, v41, &v70);
                    sub_2992C3A78(v74, (v41 + 24), &__p);
                    v58 = *(v5 + 87);
                    if (v58 < 0)
                    {
                      v59 = *(v5 + 64);
                    }

                    if (v58 >= 0)
                    {
                      v60 = *(v5 + 87);
                    }

                    else
                    {
                      v60 = *(v5 + 72);
                    }

                    (*(*v5 + 112))(v5);
                    (*(*v5 + 416))(v5);
                    operator new();
                  }

                  sub_2992C3B44();
                }

                if (v75 < 0)
                {
                  operator delete(v74[0]);
                }

                if (v77 < 0)
                {
                  operator delete(v76[0]);
                }
              }
            }
          }

          goto LABEL_83;
        }

        sub_299217DF0(__dst, "_0");
        sub_299217DF0(v79, "_0");
        v80 = 107;
        sub_299217DF0(v81, L"て");
        sub_299217DF0(v82, L"て");
        v83 = 270;
        sub_2992C3B5C(qword_2A14609B0, __dst, 2uLL);
        for (j = 56; j != -56; j -= 56)
        {
          sub_299274118(&__dst[j]);
        }

        v10 = &qword_2A1460990;
        v11 = qword_2A14609B0;
      }

      v68 = v11;
      __cxa_atexit(sub_2992C3CEC, v11, &dword_29918C000);
      __cxa_guard_release(v10);
      if (v5)
      {
        goto LABEL_26;
      }

LABEL_83:
      ++v66;
    }

    while (v66 != v65);
  }

  v62 = *MEMORY[0x29EDCA608];
}

void sub_2992C379C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  v50 = v48 - 152;
  v51 = -112;
  do
  {
    v50 = sub_299274118(v50) - 56;
    v51 += 56;
  }

  while (v51);
  __cxa_guard_abort(&qword_2A1460990);
  _Unwind_Resume(a1);
}

BOOL sub_2992C39CC(uint64_t a1, unsigned int a2)
{
  v2 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * a2 + 5]);
  v3 = v2[1];
  if (v3 >= 3)
  {
    v5 = 0;
    v6 = *v2;
    v7 = v6 + 2 * v3 - 6;
    while (word_29945D68A[v5] == *(v7 + v5 * 2))
    {
      if (++v5 == 3)
      {
        v8 = 0;
        while (word_29945D692[v8] == *(v6 + v8 * 2))
        {
          if (++v8 == 3)
          {
            if (*(a1 + 76) > a2)
            {
              return 0;
            }

            return *(a1 + 78) >= a2;
          }
        }

        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_2992C3A78@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_2992137FC(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, 2 * v5);
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    result = memmove(&v8[2 * v5], v10, 2 * v6);
  }

  *&v8[2 * v5 + 2 * v6] = 0;
  return result;
}

void *sub_2992C3B5C(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0x492492492492493)
    {
      operator new();
    }

    sub_299212A8C();
  }

  return result;
}

void **sub_2992C3CEC(void **a1)
{
  v3 = a1;
  sub_2992C3D24(&v3);
  return a1;
}

void sub_2992C3D24(void ***a1)
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
        v4 -= 56;
        sub_2992327A4(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2992C3DA8(void *a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = objc_msgSend_path(a1, a2, a3);
  if (!v3)
  {
    return 0;
  }

  v6 = v3;
  v7 = objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], v4, v5);
  v10 = objc_msgSend_stringByStandardizingPath(v6, v8, v9);

  return MEMORY[0x2A1C70FE8](v7, sel_removeItemAtPath_error_, v10);
}

void sub_2992C3E18(uint64_t *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v298 = *MEMORY[0x29EDCA608];
  v6 = *(a4 + 8);
  v7 = sub_299237120();
  sub_299255778(0);
  if (v6 <= v7[205])
  {
    v248 = a1;
    v8 = a1[1];
    v9 = **(v8 + 80);
    v10 = *(v8 + 32);
    v11 = (*(v8 + 40) - v10) >> 1;
    if (v11 <= v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 + 2 * v9;
    }

    if (v10)
    {
      v13 = v11 - v9;
    }

    else
    {
      v13 = 0;
    }

    v14 = v11 > v9;
    v15 = **(v8 + 104);
    v16 = *(v8 + 56);
    if (!v14)
    {
      v13 = 0;
    }

    v237 = v13;
    v17 = (*(v8 + 64) - v16) >> 1;
    v18 = v16 + 2 * v15;
    if (v17 <= v15)
    {
      v18 = 0;
    }

    v238 = v18;
    v239 = v12;
    v19 = v16 ? v17 - v15 : 0;
    v14 = v17 > v15;
    v22 = v8 + 8;
    v20 = *(v8 + 8);
    v21 = *(v22 + 8);
    v23 = v14 ? v19 : 0;
    v236 = v23;
    v24 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - v20) >> 3);
    v25 = (v24 - v7[204]) & ~((v24 - v7[204]) >> 63);
    if (v25 <= v24)
    {
      v27 = 0;
      v28 = v248;
      v245 = a2;
      v235 = v7;
      v234 = v24;
      while (1)
      {
        v29 = v28[1];
        v30 = *(v29[13] + 8 * v25);
        v31 = v236 - v30;
        v32 = v238 + 2 * v30;
        v33 = *(v29[10] + 8 * v25);
        if (!v238)
        {
          v31 = 0;
        }

        v246 = v31;
        v244 = (v239 + 2 * v33);
        if (v239)
        {
          v34 = v237 - v33;
        }

        else
        {
          v34 = 0;
        }

        v243 = v34;
        v241 = v25;
        if (v25 == v24 || ((v35 = v29[1] + 40 * v25, v36 = *(v35 + 24), v37 = *(v35 + 28), v36) ? (v38 = v37 == 0) : (v38 = 1), v38))
        {
          LOWORD(v242) = 0;
          goto LABEL_33;
        }

        if (!v239)
        {
          v36 = 0;
        }

        *buf = v244;
        *&buf[8] = v36;
        if (!v238)
        {
          v37 = 0;
        }

        *&v296 = v32;
        *(&v296 + 1) = v37;
        memset(__s1, 0, sizeof(__s1));
        v262 = 0;
        v263 = 0;
        v264 = 0;
        (*(*v248[3] + 40))(v248[3], &v296, buf, v27, __s1, &v262);
        v233 = __s1[0];
        v242 = __s1[0] == __s1[1] ? 0 : *__s1[0];
        if (!v27 || (sub_299255970(&qword_2A1461DC0, v27, v242) & 1) != 0)
        {
          break;
        }

        if (v262)
        {
          v263 = v262;
          operator delete(v262);
          v233 = __s1[0];
        }

        if (v233)
        {
          __s1[1] = v233;
          operator delete(v233);
        }

LABEL_359:
        ++v25;
        v27 = v242;
        v28 = v248;
        if (v25 > v24)
        {
          goto LABEL_19;
        }
      }

      if (v262)
      {
        v263 = v262;
        operator delete(v262);
        v233 = __s1[0];
      }

      if (v233)
      {
        __s1[1] = v233;
        operator delete(v233);
      }

LABEL_33:
      v262 = 0;
      v263 = &v262;
      v264 = 0x4002000000;
      v265 = sub_2992C591C;
      v266 = sub_2992C5940;
      memset(v267, 0, sizeof(v267));
      v39 = *v248;
      v41 = *a3;
      v40 = a3[1];
      v42 = *v248[2];
      if (*sub_299237120())
      {
        v43 = 0;
      }

      else
      {
        v43 = (v42 >> 4) & 1;
      }

      if ((v42 & 0x20) != 0)
      {
        v44 = v43;
      }

      else
      {
        v44 = 0;
      }

      v45 = *v248[2];
      v261[0] = MEMORY[0x29EDCA5F8];
      v261[1] = 0x40000000;
      v261[2] = sub_2992C596C;
      v261[3] = &unk_29EF10798;
      v261[4] = &v262;
      v261[5] = v235;
      (*(*v39 + 184))(v39, v41, 2 * v40, (v42 >> 5) & 1, v44, v32, 2 * v246, v45, v261);
      v47 = v263[5];
      v46 = v263[6];
      if (v235[184] >= (-29127 * ((v46 - v47) >> 3)))
      {
        v48 = (-29127 * ((v46 - v47) >> 3));
      }

      else
      {
        v48 = v235[184];
      }

      if (!v48)
      {
        goto LABEL_358;
      }

      if (v48 != 1)
      {
        v49 = ~((v48 - 2) >> 1);
        v50 = (v47 + 72 * ((v48 - 2) >> 1));
        do
        {
          sub_2992C5DC8(v47, v48, v50);
          v50 -= 9;
          v80 = __CFADD__(v49++, 1);
        }

        while (!v80);
      }

      v51 = (v47 + 72 * v48);
      v247 = v48;
      if (v51 != v46)
      {
        v52 = v47 + 72 * v48;
        do
        {
          v53 = *(v52 + 48);
          v54 = *(v52 + 63);
          if (v54 >= 0)
          {
            v53 = *(v52 + 63);
          }

          v55 = *(v47 + 63);
          if ((v55 & 0x80u) != 0)
          {
            v55 = *(v47 + 48);
          }

          if (v53 < v55)
          {
            __s1[0] = *v52;
            LOWORD(__s1[1]) = *(v52 + 8);
            v56 = *(v52 + 16);
            *buf = *(v52 + 24);
            *&buf[7] = *(v52 + 31);
            v57 = *(v52 + 39);
            *(v52 + 24) = 0;
            *(v52 + 32) = 0;
            *(v52 + 16) = 0;
            v58 = (v52 + 40);
            v48 = *(v52 + 40);
            v59 = *(v52 + 48);
            *(&v296 + 7) = *(v52 + 55);
            *&v296 = v59;
            *(v52 + 48) = 0;
            *(v52 + 56) = 0;
            *(v52 + 40) = 0;
            v60 = *(v52 + 64);
            v61 = *v47;
            *(v52 + 8) = *(v47 + 8);
            *v52 = v61;
            v62 = *(v47 + 16);
            *(v52 + 32) = *(v47 + 32);
            *(v52 + 16) = v62;
            *(v47 + 39) = 0;
            *(v47 + 16) = 0;
            if (*(v52 + 63) < 0)
            {
              operator delete(*v58);
            }

            v63 = *(v47 + 40);
            *(v52 + 56) = *(v47 + 56);
            *v58 = v63;
            *(v47 + 63) = 0;
            *(v47 + 40) = 0;
            *(v52 + 64) = *(v47 + 64);
            *v47 = __s1[0];
            *(v47 + 8) = __s1[1];
            if (*(v47 + 39) < 0)
            {
              operator delete(*(v47 + 16));
            }

            v64 = *buf;
            *(v47 + 16) = v56;
            *(v47 + 24) = v64;
            *(v47 + 31) = *&buf[7];
            *(v47 + 39) = v57;
            if (*(v47 + 63) < 0)
            {
              operator delete(*(v47 + 40));
            }

            v65 = v296;
            *(v47 + 40) = v48;
            *(v47 + 48) = v65;
            *(v47 + 55) = *(&v296 + 7);
            *(v47 + 63) = v54;
            *(v47 + 64) = v60;
            LODWORD(v48) = v247;
            sub_2992C5DC8(v47, v247, v47);
          }

          v52 += 72;
        }

        while (v52 != v46);
      }

      if (v48 != 1)
      {
        v66 = v247;
        do
        {
          v67 = 0;
          v68 = v51;
          *buf = *v47;
          *&buf[8] = *(v47 + 8);
          v69 = *(v47 + 16);
          *&v294 = *(v47 + 24);
          *(&v294 + 7) = *(v47 + 31);
          v70 = *(v47 + 39);
          *(v47 + 16) = 0;
          *(v47 + 24) = 0;
          v72 = *(v47 + 40);
          v71 = *(v47 + 48);
          *(v289 + 7) = *(v47 + 55);
          v289[0] = v71;
          v258 = *(v47 + 63);
          *(v47 + 32) = 0;
          *(v47 + 40) = 0;
          *(v47 + 48) = 0;
          *(v47 + 56) = 0;
          v73 = v47;
          v74 = *(v47 + 64);
          do
          {
            v75 = v73 + 72 * v67 + 72;
            v76 = 2 * v67;
            v67 = (2 * v67) | 1;
            v77 = v76 + 2;
            if (v76 + 2 < v66)
            {
              v78 = *(v75 + 63);
              if ((v78 & 0x80u) != 0)
              {
                v78 = *(v75 + 48);
              }

              v79 = *(v75 + 135);
              if ((v79 & 0x80u) != 0)
              {
                v79 = *(v75 + 120);
              }

              v80 = v78 >= v79;
              if (v78 >= v79)
              {
                v81 = 0;
              }

              else
              {
                v81 = 72;
              }

              v75 += v81;
              if (!v80)
              {
                v67 = v77;
              }
            }

            v82 = *v75;
            *(v73 + 8) = *(v75 + 8);
            *v73 = v82;
            if (*(v73 + 39) < 0)
            {
              operator delete(*(v73 + 16));
            }

            v83 = *(v75 + 16);
            *(v73 + 32) = *(v75 + 32);
            *(v73 + 16) = v83;
            *(v75 + 39) = 0;
            *(v75 + 16) = 0;
            if (*(v73 + 63) < 0)
            {
              operator delete(*(v73 + 40));
            }

            v84 = *(v75 + 40);
            *(v73 + 56) = *(v75 + 56);
            *(v73 + 40) = v84;
            *(v75 + 63) = 0;
            *(v75 + 40) = 0;
            *(v73 + 64) = *(v75 + 64);
            v73 = v75;
          }

          while (v67 <= ((v66 - 2) >> 1));
          v51 -= 9;
          if (v75 == v68 - 9)
          {
            v104 = *buf;
            *(v75 + 8) = *&buf[8];
            *v75 = v104;
            if (*(v75 + 39) < 0)
            {
              operator delete(*(v75 + 16));
            }

            v105 = v294;
            *(v75 + 16) = v69;
            *(v75 + 24) = v105;
            *(v75 + 31) = *(&v294 + 7);
            *(v75 + 39) = v70;
            a2 = v245;
            if (*(v75 + 63) < 0)
            {
              operator delete(*(v75 + 40));
            }

            v106 = v289[0];
            *(v75 + 40) = v72;
            *(v75 + 48) = v106;
            *(v75 + 55) = *(v289 + 7);
            *(v75 + 63) = v258;
            *(v75 + 64) = v74;
          }

          else
          {
            v85 = *v51;
            *(v75 + 8) = *(v68 - 32);
            *v75 = v85;
            if (*(v75 + 39) < 0)
            {
              operator delete(*(v75 + 16));
            }

            v86 = *(v68 - 7);
            *(v75 + 32) = *(v68 - 5);
            *(v75 + 16) = v86;
            *(v68 - 33) = 0;
            *(v68 - 56) = 0;
            a2 = v245;
            if (*(v75 + 63) < 0)
            {
              operator delete(*(v75 + 40));
            }

            v87 = *(v68 - 2);
            *(v75 + 56) = *(v68 - 2);
            *(v75 + 40) = v87;
            *(v68 - 9) = 0;
            *(v68 - 32) = 0;
            *(v75 + 64) = *(v68 - 2);
            *v51 = *buf;
            *(v68 - 32) = *&buf[8];
            if (*(v68 - 33) < 0)
            {
              operator delete(*(v68 - 7));
            }

            *(v68 - 7) = v69;
            *(v68 - 6) = v294;
            *(v68 - 41) = *(&v294 + 7);
            *(v68 - 33) = v70;
            if (*(v68 - 9) < 0)
            {
              operator delete(*(v68 - 4));
            }

            *(v68 - 4) = v72;
            *(v68 - 3) = v289[0];
            *(v68 - 17) = *(v289 + 7);
            *(v68 - 9) = v258;
            *(v68 - 2) = v74;
            v88 = v75 + 72 - v47;
            if (v88 >= 73)
            {
              v89 = (-2 - 0x71C71C71C71C71C7 * (v88 >> 3)) >> 1;
              v90 = v47 + 72 * v89;
              v91 = *(v90 + 63);
              if ((v91 & 0x80u) != 0)
              {
                v91 = *(v90 + 48);
              }

              v92 = *(v75 + 63);
              v93 = *(v75 + 48);
              if (v92 >= 0)
              {
                v94 = *(v75 + 63);
              }

              else
              {
                v94 = *(v75 + 48);
              }

              if (v91 < v94)
              {
                v95 = *v75;
                LOWORD(__s1[1]) = *(v75 + 8);
                __s1[0] = v95;
                v256 = *(v75 + 16);
                *&v296 = *(v75 + 24);
                *(&v296 + 7) = *(v75 + 31);
                v96 = *(v75 + 39);
                *(v75 + 16) = 0;
                *(v75 + 24) = 0;
                v259 = *(v75 + 40);
                LODWORD(v95) = *(v75 + 41);
                *(&v280 + 3) = *(v75 + 44);
                LODWORD(v280) = v95;
                LODWORD(v95) = *(v75 + 56);
                *(&__p + 3) = *(v75 + 59);
                LODWORD(__p) = v95;
                *(v75 + 32) = 0;
                *(v75 + 40) = 0;
                *(v75 + 48) = 0;
                *(v75 + 56) = 0;
                v97 = *(v75 + 64);
                do
                {
                  v98 = v90;
                  v99 = *v90;
                  *(v75 + 8) = *(v98 + 8);
                  *v75 = v99;
                  if (*(v75 + 39) < 0)
                  {
                    operator delete(*(v75 + 16));
                  }

                  v100 = *(v98 + 16);
                  *(v75 + 32) = *(v98 + 32);
                  *(v75 + 16) = v100;
                  *(v98 + 39) = 0;
                  *(v98 + 16) = 0;
                  if (*(v75 + 63) < 0)
                  {
                    operator delete(*(v75 + 40));
                  }

                  v101 = *(v98 + 40);
                  *(v75 + 56) = *(v98 + 56);
                  *(v75 + 40) = v101;
                  *(v98 + 63) = 0;
                  *(v98 + 40) = 0;
                  *(v75 + 64) = *(v98 + 64);
                  if (!v89)
                  {
                    break;
                  }

                  v89 = (v89 - 1) >> 1;
                  v90 = v47 + 72 * v89;
                  v102 = *(v90 + 63);
                  if ((v102 & 0x80u) != 0)
                  {
                    v102 = *(v90 + 48);
                  }

                  v75 = v98;
                }

                while (v102 < v94);
                *v98 = __s1[0];
                *(v98 + 8) = __s1[1];
                if (*(v98 + 39) < 0)
                {
                  operator delete(*(v98 + 16));
                }

                v103 = v296;
                *(v98 + 16) = v256;
                *(v98 + 24) = v103;
                *(v98 + 31) = *(&v296 + 7);
                *(v98 + 39) = v96;
                if (*(v98 + 63) < 0)
                {
                  operator delete(*(v98 + 40));
                }

                *(v98 + 40) = v259;
                *(v98 + 41) = v280;
                *(v98 + 44) = *(&v280 + 3);
                *(v98 + 48) = v93;
                *(v98 + 56) = __p;
                *(v98 + 59) = *(&__p + 3);
                *(v98 + 63) = v92;
                *(v98 + 64) = v97;
                a2 = v245;
              }
            }
          }

          v14 = v66-- <= 2;
        }

        while (!v14);
      }

      v107 = 0;
      v108 = v247;
LABEL_118:
      v109 = v263[5] + 72 * v107;
      v272 = 0;
      v273 = 0;
      v274 = 0;
      v110 = *(v109 + 63);
      v111 = v110;
      if ((v110 & 0x80u) != 0)
      {
        v110 = *(v109 + 48);
      }

      if (v110 >= 2)
      {
        v112 = v110 >> 1;
        if (v111 >= 0)
        {
          v113 = (v109 + 40);
        }

        else
        {
          v113 = *(v109 + 40);
        }

        do
        {
          LOWORD(__s1[0]) = *v113;
          if (LOWORD(__s1[0]) != 124)
          {
            sub_29922E664(&v272, __s1);
          }

          ++v113;
          --v112;
        }

        while (v112);
      }

      v269 = 0;
      v270 = 0;
      v271 = 0;
      v114 = *(v109 + 39);
      v115 = v114;
      if ((v114 & 0x80u) != 0)
      {
        v114 = *(v109 + 24);
      }

      if (v114 >= 2)
      {
        v116 = v114 >> 1;
        if (v115 >= 0)
        {
          v117 = (v109 + 16);
        }

        else
        {
          v117 = *(v109 + 16);
        }

        do
        {
          LOWORD(__s1[0]) = *v117;
          if (LOWORD(__s1[0]) != 124)
          {
            sub_29922E664(&v269, __s1);
          }

          ++v117;
          --v116;
        }

        while (v116);
      }

      v253 = sub_299237120();
      v296 = 0uLL;
      v297 = 0;
      v118 = *(v109 + 63);
      if (v118 >= 0)
      {
        v119 = (v109 + 40);
      }

      else
      {
        v119 = *(v109 + 40);
      }

      if (v118 >= 0)
      {
        v120 = *(v109 + 63);
      }

      else
      {
        v120 = *(v109 + 48);
      }

      __s1[0] = v119;
      if (v120 <= 1)
      {
        *buf = 0;
        goto LABEL_157;
      }

      v121 = v109;
      v122 = 0;
      v123 = 0;
      v124 = v120 >> 1;
      v125 = v119;
      while (1)
      {
        v80 = v122-- != 0;
        if (!v80 || *v125 != 124)
        {
          goto LABEL_153;
        }

        if (v124 != 1)
        {
          break;
        }

LABEL_154:
        if (!--v124)
        {
          v126 = (v125 - v119) >> 1;
          *buf = v126;
          v109 = v121;
          if (v123 < v297)
          {
            sub_2992129A0(v123, v119, v126);
            v127 = (v123 + 24);
            goto LABEL_158;
          }

LABEL_157:
          v127 = sub_2992C60DC(&v296, __s1, buf);
LABEL_158:
          *(&v296 + 1) = v127;
          v294 = 0uLL;
          v295 = 0;
          v128 = *(v109 + 39);
          if (v128 >= 0)
          {
            v129 = (v109 + 16);
          }

          else
          {
            v129 = *(v109 + 16);
          }

          if (v128 >= 0)
          {
            v130 = *(v109 + 39);
          }

          else
          {
            v130 = *(v109 + 24);
          }

          __s1[0] = v129;
          if (v130 <= 1)
          {
            *buf = 0;
LABEL_179:
            v137 = sub_2992C60DC(&v294, __s1, buf);
            goto LABEL_180;
          }

          v131 = v109;
          v132 = 0;
          v133 = 0;
          v134 = v130 >> 1;
          v135 = v129;
          while (2)
          {
            v80 = v132-- != 0;
            if (v80 && *v135 == 124)
            {
              if (v134 != 1)
              {
                *buf = (v135 - v129) >> 1;
                if (v133 >= v295)
                {
                  v133 = sub_2992C60DC(&v294, __s1, buf);
                }

                else
                {
                  sub_2992129A0(v133, v129, (v135 - v129) >> 1);
                  v133 += 24;
                }

                *(&v294 + 1) = v133;
                v129 = v135 + 2;
                __s1[0] = v135 + 2;
                goto LABEL_175;
              }
            }

            else
            {
LABEL_175:
              v135 += 2;
            }

            if (--v134)
            {
              continue;
            }

            break;
          }

          v136 = (v135 - v129) >> 1;
          *buf = v136;
          v109 = v131;
          if (v133 >= v295)
          {
            goto LABEL_179;
          }

          sub_2992129A0(v133, v129, v136);
          v137 = (v133 + 24);
LABEL_180:
          *(&v294 + 1) = v137;
          v138 = v294;
          if (*(&v296 + 1) - v296 != v137 - v294)
          {
            v150 = 0;
            goto LABEL_330;
          }

          v249 = v107;
          if (*(&v296 + 1) == v296)
          {
            v140 = 0;
            v144 = v246;
            goto LABEL_207;
          }

          v251 = v109;
          v139 = 0;
          if (0xAAAAAAAAAAAAAAABLL * ((*(&v296 + 1) - v296) >> 3) <= 1)
          {
            v140 = 1;
          }

          else
          {
            v140 = 0xAAAAAAAAAAAAAAABLL * ((*(&v296 + 1) - v296) >> 3);
          }

          v141 = (v296 + 23);
          v142 = v243;
          v143 = v244;
          v144 = v246;
          do
          {
            if (!v144)
            {
              v109 = v251;
              goto LABEL_210;
            }

            v145 = *v141;
            if ((v145 & 0x8000000000000000) != 0)
            {
              v145 = *(v141 - 15);
            }

            if (v144 < v145)
            {
              goto LABEL_208;
            }

            v146 = *(v138 + 23);
            if ((v146 & 0x8000000000000000) != 0)
            {
              v147 = *v138;
              v146 = v138[1];
            }

            else
            {
              v147 = v138;
            }

            v148 = v147 ? v146 : 0;
            v149 = v142 - v148;
            if (v142 < v148 || !v143 && v148)
            {
              goto LABEL_208;
            }

            if (memcmp(v143, v147, 2 * v148))
            {
              goto LABEL_208;
            }

            v144 -= v145;
            v38 = v143 == 0;
            v143 += 2 * v148;
            if (v38)
            {
              v142 = 0;
            }

            else
            {
              v142 = v149;
            }

            ++v139;
            v138 += 3;
            v141 += 24;
          }

          while (v140 != v139);
          v109 = v251;
LABEL_207:
          v139 = v140;
          if (v144)
          {
LABEL_208:
            v150 = 0;
            v108 = v247;
            v107 = v249;
            goto LABEL_330;
          }

LABEL_210:
          *buf = 0u;
          v292 = 0u;
          v293 = 1065353216;
          v283 = 0;
          sub_299216DAC(a3, &v283, buf, (*v248[2] >> 30) & 1, v289);
          if (v290 < 0)
          {
            operator delete(v289[0]);
          }

          if ((*v248[2] & 0x20) == 0 || (*v253 & 1) != 0 || (*__s1 = *a4, v151 = v296, 0xAAAAAAAAAAAAAAABLL * ((*(&v296 + 1) - v296) >> 3) <= v139))
          {
            v163 = 0;
            goto LABEL_238;
          }

          v152 = v109;
          v153 = __s1[1];
          v154 = 24 * v139;
          v155 = v139;
          while (2)
          {
            v156 = v151 + v154;
            if (*(v151 + v154 + 23) >= 0)
            {
              v157 = (v151 + v154);
            }

            else
            {
              v157 = *v156;
            }

            v280 = v157;
            v158 = *(v156 + 23);
            if ((v158 & 0x80u) != 0)
            {
              v158 = *(v156 + 8);
            }

            v281 = v158;
            if (v153 >= v158)
            {
              v159 = v158 && __s1[0] == 0;
              if (!v159 && !memcmp(__s1[0], v157, 2 * v158))
              {
LABEL_229:
                v160 = *(v156 + 23);
                if ((v160 & 0x8000000000000000) != 0)
                {
                  v160 = *(v156 + 8);
                }

                if (v153 <= v160)
                {
                  goto LABEL_236;
                }

                v161 = &v153[-v160];
                v162 = __s1[0] + 2 * v160;
                v153 = __s1[0] ? v161 : 0;
                __s1[0] = v162;
                __s1[1] = v153;
                ++v155;
                v151 = v296;
                v154 += 24;
                if (v155 >= 0xAAAAAAAAAAAAAAABLL * ((*(&v296 + 1) - v296) >> 3))
                {
LABEL_236:
                  v163 = 0;
                  goto LABEL_354;
                }

                continue;
              }
            }

            break;
          }

          if (sub_299217C94(__s1, &v280))
          {
            v153 = __s1[1];
            goto LABEL_229;
          }

          v163 = 1;
LABEL_354:
          v109 = v152;
LABEL_238:
          v164 = *(a4 + 8);
          v165 = v283;
          if ((atomic_load_explicit(&qword_2A14609D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14609D0))
          {
            qword_2A14609C8 = sub_299237120();
            __cxa_guard_release(&qword_2A14609D0);
            a2 = v245;
          }

          v166 = 0;
          if (v139)
          {
            v167 = (v296 + 23);
            v168 = v139;
            do
            {
              v169 = *v167;
              if (v169 < 0)
              {
                v169 = *(v167 - 15);
              }

              v166 += v169;
              v167 += 24;
              --v168;
            }

            while (v168);
          }

          v170 = 0xAAAAAAAAAAAAAAABLL * ((*(&v296 + 1) - v296) >> 3);
          v171 = 0;
          v172 = v170 - v139;
          if (v170 > v139)
          {
            v173 = (v296 + 24 * v139 + 23);
            do
            {
              v174 = *v173;
              if (v174 < 0)
              {
                v174 = *(v173 - 15);
              }

              v171 += v174;
              v173 += 24;
              --v172;
            }

            while (v172);
          }

          v175 = v164 - v165;
          if ((v163 & 1) != 0 && v175 < (*(qword_2A14609C8 + 400) * v171) || v175 + v246 < (*(qword_2A14609C8 + 392) * (v171 + v166)))
          {
            v150 = 0;
            v108 = v247;
            v107 = v249;
          }

          else
          {
            v240 = v163;
            __s1[0] = v248[4];
            HIWORD(v176) = 0;
            *&__s1[1] = 0u;
            v285 = 0u;
            v286 = 0u;
            v287 = 0u;
            v288 = 0u;
            v177 = v170 - v139;
            if (v170 <= v139)
            {
              v204 = 0;
              v203 = 0;
              v180 = 0;
              LODWORD(v178) = 0;
              v108 = v247;
              v107 = v249;
            }

            else
            {
              v252 = v109;
              v178 = 0;
              v179 = 0;
              LOWORD(v180) = 0;
              v257 = v170 - 1 - v139;
              v260 = 0;
              v181 = 24 * v139;
              do
              {
                v254 = v180;
                v182 = v296;
                v183 = v296 + v181;
                v184 = v294;
                v185 = v260;
                if (v178 > *(a4 + 8))
                {
                  v185 = v260 + 1;
                }

                v260 = v185;
                if (v179 >= a3[1])
                {
                  v188 = 0;
                }

                else
                {
                  v186 = *(v183 + 23);
                  if (v186 < 0)
                  {
                    v186 = *(v296 + v181 + 8);
                  }

                  v280 = (v186 + v178);
                  v187 = sub_299230B70(buf, &v280);
                  if (v187)
                  {
                    v188 = v187[3] - v179;
                  }

                  else
                  {
                    v189 = *(v183 + 23);
                    if (v189 < 0)
                    {
                      v189 = *(v182 + v181 + 8);
                    }

                    if (a3[1] - v179 >= 2 * v189)
                    {
                      v188 = 2 * v189;
                    }

                    else
                    {
                      v188 = a3[1] - v179;
                    }
                  }
                }

                v190 = (v184 + v181);
                v280 = 0;
                v281 = 0;
                v282 = 0;
                __p = 0;
                v278 = 0;
                v279 = 0;
                v80 = v257-- != 0;
                if (v80 || (v180 = *(v252 + 4), !*(v252 + 4)))
                {
                  v191 = (v182 + v181);
                  v192 = *(v182 + v181 + 23);
                  if (v192 < 0)
                  {
                    v193 = *v191;
                    v192 = v191[1];
                  }

                  else
                  {
                    v193 = v182 + v181;
                  }

                  v194 = v248[3];
                  if (!v193)
                  {
                    v192 = 0;
                  }

                  v276[0] = v193;
                  v276[1] = v192;
                  v195 = (v184 + v181);
                  v196 = *(v184 + v181 + 23);
                  if (v196 < 0)
                  {
                    v197 = *v195;
                    v196 = v195[1];
                  }

                  else
                  {
                    v197 = v184 + v181;
                  }

                  if (!v197)
                  {
                    v196 = 0;
                  }

                  v275[0] = v197;
                  v275[1] = v196;
                  (*(*v194 + 40))(v194, v276, v275, v254, &v280, &__p);
                  if (v280 == v281)
                  {
                    v180 = 0;
                  }

                  else
                  {
                    v180 = *v280;
                  }
                }

                v198 = v184 + v181;
                v199 = *(v184 + v181 + 23);
                if (v199 < 0)
                {
                  v190 = *v198;
                  v199 = *(v198 + 8);
                }

                v200 = (v182 + v181);
                v201 = *(v182 + v181 + 23);
                if (v201 < 0)
                {
                  v183 = *v200;
                  v201 = v200[1];
                }

                sub_2992738F8(__s1, v190, v199, v188, v183, v201, v180, v180);
                v202 = *(v200 + 23);
                if (v202 < 0)
                {
                  v202 = *(v182 + v181 + 8);
                }

                if (__p)
                {
                  v278 = __p;
                  operator delete(__p);
                }

                if (v280)
                {
                  v281 = v280;
                  operator delete(v280);
                }

                v178 += v202;
                v179 += v188;
                v181 += 24;
                --v177;
              }

              while (v177);
              v203 = v254;
              a2 = v245;
              v108 = v247;
              v107 = v249;
              v109 = v252;
              v204 = v260;
            }

            if (a3[1])
            {
              sub_299255778(0);
              if (v204 == 2)
              {
                v208 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * v203 + 4]);
                if (v208[1] == 4)
                {
                  v209 = 0;
                  v210 = *v208;
                  while (asc_29945AFC4[v209] == *(v210 + v209 * 2))
                  {
                    if (++v209 == 4)
                    {
                      if (WORD4(xmmword_2A1461E10) <= v180 && WORD5(xmmword_2A1461E10) >= v180)
                      {
LABEL_355:
                        v150 = 0;
                        goto LABEL_321;
                      }

                      v212 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * v180]);
                      if (v212[1] == 3)
                      {
                        v213 = 0;
                        v214 = *v212;
                        while (asc_29945B990[v213] == *(v214 + v213 * 2))
                        {
                          v150 = 0;
                          if (++v213 == 3)
                          {
                            goto LABEL_321;
                          }
                        }
                      }

                      break;
                    }
                  }
                }
              }

              else if (v204 == 1)
              {
                v205 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * v180 + 4]);
                if (v205[1] == 4)
                {
                  v206 = 0;
                  v207 = *v205;
                  while (asc_29945AFC4[v206] == *(v207 + v206 * 2))
                  {
                    if (++v206 == 4)
                    {
                      goto LABEL_355;
                    }
                  }
                }
              }
            }

            v215 = *(a4 + 8);
            v216 = 464;
            if ((*v248[2] & 0x6000002) == 0x4000002)
            {
              v216 = 466;
            }

            v217 = v109;
            v218 = *(v253 + v216);
            v219 = -*(v253 + 236);
            LOWORD(v176) = *v217;
            log2f(v176 / 100.0);
            v220 = *(v253 + 237) + *(v253 + 237) * (v178 - v215);
            v221 = -(*(v217 + 64) * *(v253 + 222));
            v222 = v253[112];
            v223 = sub_299273A90(__s1);
            v150 = v223;
            if (v223)
            {
              (*(*v223 + 512))(v223, v240);
            }

LABEL_321:
            if (*(&v288 + 1))
            {
              CFRelease(*(&v288 + 1));
            }

            *(&v288 + 1) = 0;
            if (v287)
            {
              *(&v287 + 1) = v287;
              operator delete(v287);
            }

            if (*(&v285 + 1))
            {
              *&v286 = *(&v285 + 1);
              operator delete(*(&v285 + 1));
            }

            if (__s1[1])
            {
              __s1[2] = __s1[1];
              operator delete(__s1[1]);
            }
          }

          sub_29921ED28(buf);
LABEL_330:
          __s1[0] = &v294;
          sub_299212B90(__s1);
          __s1[0] = &v296;
          sub_299212B90(__s1);
          v268 = v150;
          if (v150)
          {
            (*(*v150 + 528))(v150, 10, "Adding a phrase candidate", 1);
            LOBYTE(v296) = 0;
            __s1[0] = v150;
            v224 = sub_29927363C(a2 + 1, __s1);
            if (v224)
            {
              v225 = v224[3];
              if (v225 != -1)
              {
                v226 = *(a2[6] + 8 * v225);
                if (!(*(*v226 + 408))(v226) && ((*(*v226 + 200))(v226) & 1) == 0)
                {
                  v232 = sub_2993652F8(0xAu);
                  if (os_log_type_enabled(v232, OS_LOG_TYPE_DEBUG))
                  {
                    LOWORD(__s1[0]) = 0;
                    _os_log_debug_impl(&dword_29918C000, v232, OS_LOG_TYPE_DEBUG, " ∟ Rejected", __s1, 2u);
                  }

                  v268 = 0;
                  goto LABEL_341;
                }
              }
            }

            __s1[0] = &unk_2A1F65308;
            *&v285 = __s1;
            v227 = sub_2992AB710(a2, &v268, 0, &v296, __s1);
            sub_29921F128(__s1);
            if ((v227 & 1) == 0)
            {
              if (v296 == 1)
              {
                v228 = sub_2993652F8(0xAu);
                if (os_log_type_enabled(v228, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  v229 = v228;
                  v230 = " ∟ Replaced";
                  goto LABEL_352;
                }
              }

              else
              {
                v231 = sub_2993652F8(0xAu);
                if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  v229 = v231;
                  v230 = " ∟ Rejected";
LABEL_352:
                  _os_log_debug_impl(&dword_29918C000, v229, OS_LOG_TYPE_DEBUG, v230, buf, 2u);
                }
              }
            }

            v150 = v268;
            v268 = 0;
            if (v150)
            {
LABEL_341:
              (*(*v150 + 16))(v150);
            }
          }

          if (v269)
          {
            v270 = v269;
            operator delete(v269);
          }

          if (v272)
          {
            v273 = v272;
            operator delete(v272);
          }

          if (++v107 == v108)
          {
LABEL_358:
            _Block_object_dispose(&v262, 8);
            __s1[0] = v267;
            sub_2992C5C9C(__s1);
            v24 = v234;
            v25 = v241;
            goto LABEL_359;
          }

          goto LABEL_118;
        }
      }

      *buf = (v125 - v119) >> 1;
      if (v123 >= v297)
      {
        v123 = sub_2992C60DC(&v296, __s1, buf);
      }

      else
      {
        sub_2992129A0(v123, v119, (v125 - v119) >> 1);
        v123 += 24;
      }

      *(&v296 + 1) = v123;
      v119 = v125 + 2;
      __s1[0] = v125 + 2;
LABEL_153:
      v125 += 2;
      goto LABEL_154;
    }
  }

LABEL_19:
  v26 = *MEMORY[0x29EDCA608];
}

void sub_2992C5744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  __cxa_guard_abort(&qword_2A14609D0);
  v58 = sub_29921ED28(v56 - 224);
  *(v56 - 224) = v56 - 184;
  sub_299212B90(v58);
  *(v56 - 224) = v56 - 160;
  sub_299212B90((v56 - 224));
  if (__p)
  {
    a53 = __p;
    operator delete(__p);
  }

  if (a55)
  {
    a56 = a55;
    operator delete(a55);
  }

  _Block_object_dispose(&a43, 8);
  *(v56 - 224) = a20;
  sub_2992C5C9C((v56 - 224));
  _Unwind_Resume(a1);
}

__n128 sub_2992C591C(void *a1, uint64_t a2)
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

uint64_t sub_2992C596C(uint64_t result, uint64_t *a2, _BYTE *a3)
{
  v5 = result;
  v6 = *(*(result + 32) + 8);
  v8 = v6[6];
  v7 = v6[7];
  if (v8 >= v7)
  {
    v11 = v6[5];
    v12 = 0x8E38E38E38E38E39 * ((v8 - v11) >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0x38E38E38E38E38ELL)
    {
      sub_299212A8C();
    }

    v14 = 0x8E38E38E38E38E39 * ((v7 - v11) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x1C71C71C71C71C7)
    {
      v15 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v15 = v13;
    }

    v33 = v6 + 5;
    if (v15)
    {
      if (v15 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_29919600C();
    }

    v18 = 72 * v12;
    v29 = 0;
    v30 = v18;
    v31 = v18;
    v32 = 0;
    *v18 = *a2;
    *(v18 + 8) = *(a2 + 4);
    if (*(a2 + 39) < 0)
    {
      sub_2991A110C((v18 + 16), a2[2], a2[3]);
    }

    else
    {
      *(v18 + 16) = *(a2 + 1);
      *(v18 + 32) = a2[4];
    }

    if (*(a2 + 63) < 0)
    {
      sub_2991A110C((v18 + 40), a2[5], a2[6]);
    }

    else
    {
      *(v18 + 40) = *(a2 + 5);
      *(v18 + 56) = a2[7];
    }

    *(v18 + 64) = *(a2 + 16);
    v19 = v31;
    v20 = v6[5];
    v21 = v6[6];
    v22 = v30 + v20 - v21;
    if (v20 != v21)
    {
      v23 = v6[5];
      v24 = v30 + v20 - v21;
      do
      {
        v25 = *v23;
        *(v24 + 8) = *(v23 + 4);
        *v24 = v25;
        v26 = *(v23 + 1);
        *(v24 + 32) = v23[4];
        *(v24 + 16) = v26;
        v23[3] = 0;
        v23[4] = 0;
        v23[2] = 0;
        v27 = *(v23 + 5);
        *(v24 + 56) = v23[7];
        *(v24 + 40) = v27;
        v23[6] = 0;
        v23[7] = 0;
        v23[5] = 0;
        *(v24 + 64) = *(v23 + 16);
        v23 += 9;
        v24 += 72;
      }

      while (v23 != v21);
      do
      {
        sub_2992C5D20(v20);
        v20 += 72;
      }

      while (v20 != v21);
      v20 = v6[5];
    }

    v17 = v19 + 72;
    v6[5] = v22;
    v6[6] = v19 + 72;
    v28 = v6[7];
    v6[7] = v32;
    v31 = v20;
    v32 = v28;
    v29 = v20;
    v30 = v20;
    result = sub_2992C5D78(&v29);
  }

  else
  {
    v9 = *a2;
    *(v8 + 8) = *(a2 + 4);
    *v8 = v9;
    if (*(a2 + 39) < 0)
    {
      result = sub_2991A110C((v8 + 16), a2[2], a2[3]);
    }

    else
    {
      v10 = *(a2 + 1);
      *(v8 + 32) = a2[4];
      *(v8 + 16) = v10;
    }

    if (*(a2 + 63) < 0)
    {
      result = sub_2991A110C((v8 + 40), a2[5], a2[6]);
    }

    else
    {
      v16 = *(a2 + 5);
      *(v8 + 56) = a2[7];
      *(v8 + 40) = v16;
    }

    *(v8 + 64) = *(a2 + 16);
    v17 = v8 + 72;
    v6[6] = v8 + 72;
  }

  v6[6] = v17;
  if (0x8E38E38E38E38E39 * ((*(*(*(v5 + 32) + 8) + 48) - *(*(*(v5 + 32) + 8) + 40)) >> 3) == *(*(v5 + 40) + 352))
  {
    *a3 = 1;
  }

  return result;
}

void sub_2992C5C4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  sub_2992C5D78(va);
  _Unwind_Resume(a1);
}

void sub_2992C5C9C(void ***a1)
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
        v4 -= 72;
        sub_2992C5D20(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2992C5D20(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

uint64_t sub_2992C5D78(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    sub_2992C5D20(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2992C5DC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v37 = *MEMORY[0x29EDCA608];
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= (0x8E38E38E38E38E39 * ((a3 - a1) >> 3)))
    {
      v8 = (0x1C71C71C71C71C72 * ((a3 - a1) >> 3)) | 1;
      v9 = (a1 + 72 * v8);
      if (0x1C71C71C71C71C72 * ((a3 - a1) >> 3) + 2 < a2)
      {
        v10 = *(v9 + 63);
        if ((v10 & 0x80u) != 0)
        {
          v10 = v9[6];
        }

        v11 = *(v9 + 135);
        if ((v11 & 0x80u) != 0)
        {
          v11 = v9[15];
        }

        v12 = v10 >= v11;
        v13 = 72;
        if (v12)
        {
          v13 = 0;
        }

        v9 = (v9 + v13);
        if (!v12)
        {
          v8 = 0x1C71C71C71C71C72 * ((a3 - a1) >> 3) + 2;
        }
      }

      v14 = *(v9 + 63);
      if ((v14 & 0x80u) != 0)
      {
        v14 = v9[6];
      }

      v15 = *(a3 + 63);
      v16 = a3[6];
      if (v15 >= 0)
      {
        v17 = *(a3 + 63);
      }

      else
      {
        v17 = a3[6];
      }

      if (v14 >= v17)
      {
        v34 = *a3;
        v35 = *(a3 + 4);
        v30 = a3[2];
        *v36 = a3[3];
        *&v36[7] = *(a3 + 31);
        v29 = *(a3 + 39);
        a3[2] = 0;
        a3[3] = 0;
        *&v33[3] = *(a3 + 11);
        *v33 = *(a3 + 41);
        *&v32[3] = *(a3 + 59);
        v31 = *(a3 + 40);
        *v32 = *(a3 + 14);
        a3[4] = 0;
        a3[5] = 0;
        a3[6] = 0;
        a3[7] = 0;
        v18 = *(a3 + 16);
        do
        {
          v19 = v9;
          v20 = *v9;
          *(v4 + 4) = *(v19 + 4);
          *v4 = v20;
          if (*(v4 + 39) < 0)
          {
            operator delete(v4[2]);
          }

          v21 = *(v19 + 1);
          v4[4] = v19[4];
          *(v4 + 1) = v21;
          *(v19 + 39) = 0;
          *(v19 + 16) = 0;
          if (*(v4 + 63) < 0)
          {
            operator delete(v4[5]);
          }

          v22 = *(v19 + 5);
          v4[7] = v19[7];
          *(v4 + 5) = v22;
          *(v19 + 63) = 0;
          *(v19 + 40) = 0;
          *(v4 + 16) = *(v19 + 16);
          if (v6 < v8)
          {
            break;
          }

          v9 = (a1 + 72 * ((2 * v8) | 1));
          if (2 * v8 + 2 >= a2)
          {
            v8 = (2 * v8) | 1;
          }

          else
          {
            v23 = *(v9 + 63);
            if ((v23 & 0x80u) != 0)
            {
              v23 = v9[6];
            }

            v24 = *(v9 + 135);
            if ((v24 & 0x80u) != 0)
            {
              v24 = v9[15];
            }

            v25 = v23 >= v24;
            v26 = v23 >= v24 ? 0 : 72;
            v9 = (v9 + v26);
            v8 = v25 ? (2 * v8) | 1 : 2 * v8 + 2;
          }

          v27 = *(v9 + 63);
          if ((v27 & 0x80u) != 0)
          {
            v27 = v9[6];
          }

          v4 = v19;
        }

        while (v27 >= v17);
        *(v19 + 4) = v35;
        *v19 = v34;
        if (*(v19 + 39) < 0)
        {
          operator delete(v19[2]);
        }

        v19[2] = v30;
        v19[3] = *v36;
        *(v19 + 31) = *&v36[7];
        *(v19 + 39) = v29;
        if (*(v19 + 63) < 0)
        {
          operator delete(v19[5]);
        }

        *(v19 + 40) = v31;
        *(v19 + 41) = *v33;
        *(v19 + 11) = *&v33[3];
        v19[6] = v16;
        *(v19 + 14) = *v32;
        *(v19 + 59) = *&v32[3];
        *(v19 + 63) = v15;
        *(v19 + 16) = v18;
      }
    }
  }

  v28 = *MEMORY[0x29EDCA608];
}

uint64_t sub_2992C60DC(uint64_t a1, void **a2, unint64_t *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_299212A8C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    sub_299212AA4(a1, v7);
  }

  v13 = 0;
  v14 = 24 * v3;
  v15 = 24 * v3;
  v16 = 0;
  sub_2992129A0((24 * v3), *a2, *a3);
  v8 = *(a1 + 8) - *a1;
  v9 = (24 * v3 - v8);
  memcpy(v9, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = 24 * v3 + 24;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_299212AFC(&v13);
  return 24 * v3 + 24;
}

void sub_2992C61F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299212AFC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992C6204(uint64_t a1, uint64_t *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, int a9, int a10, char a11, uint64_t *a12, int a13, int a14, int a15)
{
  v44[0] = a3;
  v44[1] = a4;
  v43[0] = a5;
  v43[1] = a6;
  v42[0] = a7;
  v42[1] = a8;
  v18 = sub_29933BEB8(a1, a2 + 1);
  v18[3] = &unk_2A1F6D360;
  v19 = *a2;
  *v18 = *a2;
  *(a1 + *(v19 - 32)) = a2[5];
  *(a1 + 24) = &unk_2A1F6CFC0;
  if (a3)
  {
    sub_29923A9CC(v44, (a1 + 32));
  }

  else
  {
    sub_299217DF0((a1 + 32), byte_29945C656);
  }

  v20 = *MEMORY[0x29EDB8ED8];
  v21 = *(a1 + 55);
  if (v21 < 0)
  {
    v22 = *(a1 + 32);
    v21 = *(a1 + 40);
  }

  else
  {
    v22 = (a1 + 32);
  }

  *(a1 + 56) = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], v22, v21);
  if (v43[0])
  {
    sub_29923A9CC(v43, (a1 + 64));
  }

  else
  {
    sub_299217DF0((a1 + 64), byte_29945C656);
  }

  v23 = *(a1 + 87);
  if (v23 < 0)
  {
    v24 = *(a1 + 64);
    v23 = *(a1 + 72);
  }

  else
  {
    v24 = (a1 + 64);
  }

  v25 = *MEMORY[0x29EDB8EE8];
  *(a1 + 88) = CFStringCreateWithCharactersNoCopy(v20, v24, v23, *MEMORY[0x29EDB8EE8]);
  sub_29923A9CC(v42, (a1 + 96));
  v26 = *(a1 + 119);
  if (v26 < 0)
  {
    v27 = *(a1 + 96);
    v26 = *(a1 + 104);
  }

  else
  {
    v27 = (a1 + 96);
  }

  v28 = CFStringCreateWithCharactersNoCopy(v20, v27, v26, v25);
  *(a1 + 128) = 0u;
  *(a1 + 120) = v28;
  *(a1 + 144) = 0u;
  sub_29921E8E0(a1 + 136, *a12, a12[1], 0xCCCCCCCCCCCCCCCDLL * ((a12[1] - *a12) >> 3));
  v29 = *(a1 + 87);
  if (v29 < 0)
  {
    v29 = *(a1 + 72);
  }

  *(a1 + 160) = v29;
  *(a1 + 168) = a9;
  *(a1 + 172) = a9;
  *(a1 + 176) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(a1 + 192) = -1;
  *(a1 + 200) = a11;
  *(a1 + 204) = a13;
  *(a1 + 208) = a14;
  *(a1 + 212) = a15;
  *(a1 + 216) = 256;
  *(a1 + 218) = 0;
  *(a1 + 220) = a10;
  *(a1 + 224) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  v30 = *(a1 + 136);
  v31 = *(a1 + 144) - v30;
  if (v31)
  {
    v32 = v31 >> 3;
    v33 = 0xCCCCCCCCCCCCCCCDLL * v32;
    if (0xCCCCCCCCCCCCCCCDLL * v32 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = 0xCCCCCCCCCCCCCCCDLL * v32;
    }

    v35 = *(v30 + 37);
    if (v35)
    {
      v37 = (v30 + 77);
      v38 = 1;
      do
      {
        v39 = v38;
        if (v34 == v38)
        {
          break;
        }

        v40 = *v37;
        v37 += 40;
        ++v38;
      }

      while ((v40 & 1) != 0);
      v36 = v39 >= v33;
    }

    else
    {
      v36 = 0;
    }

    *(a1 + 217) = v36;
    if (*(v30 + 8) == 6)
    {
      *(a1 + 216) = (v35 & 4) != 0;
    }
  }

  else
  {
    *(a1 + 217) = 1;
  }

  return a1;
}

void sub_2992C6514(_Unwind_Exception *a1)
{
  sub_299219AB4(v5, 0);
  sub_299219AB4((v1 + 120), 0);
  if (*(v1 + 119) < 0)
  {
    operator delete(*v4);
  }

  sub_299219AB4((v1 + 88), 0);
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  sub_299219AB4((v1 + 56), 0);
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992C65A8(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, int a8, int a9, char a10, uint64_t *a11, int a12, int a13, int a14)
{
  v43[0] = a2;
  v43[1] = a3;
  v42[0] = a4;
  v42[1] = a5;
  v41[0] = a6;
  v41[1] = a7;
  *a1 = &unk_2A1F66DC0;
  v17 = sub_29933BEB8(a1, &off_2A1F6CFD0);
  *v17 = &unk_2A1F6CD70;
  *(v17 + 24) = &unk_2A1F6CFC0;
  v18 = (v17 + 32);
  if (a2)
  {
    sub_29923A9CC(v43, v18);
  }

  else
  {
    sub_299217DF0((v17 + 32), byte_29945C656);
  }

  v19 = *MEMORY[0x29EDB8ED8];
  v20 = *(a1 + 55);
  if (v20 < 0)
  {
    v21 = *(a1 + 32);
    v20 = *(a1 + 40);
  }

  else
  {
    v21 = v18;
  }

  *(a1 + 56) = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], v21, v20);
  if (v42[0])
  {
    sub_29923A9CC(v42, (a1 + 64));
  }

  else
  {
    sub_299217DF0((a1 + 64), byte_29945C656);
  }

  v22 = *(a1 + 87);
  if (v22 < 0)
  {
    v23 = *(a1 + 64);
    v22 = *(a1 + 72);
  }

  else
  {
    v23 = (a1 + 64);
  }

  v24 = *MEMORY[0x29EDB8EE8];
  *(a1 + 88) = CFStringCreateWithCharactersNoCopy(v19, v23, v22, *MEMORY[0x29EDB8EE8]);
  sub_29923A9CC(v41, (a1 + 96));
  v25 = *(a1 + 119);
  if (v25 < 0)
  {
    v26 = *(a1 + 96);
    v25 = *(a1 + 104);
  }

  else
  {
    v26 = (a1 + 96);
  }

  v27 = CFStringCreateWithCharactersNoCopy(v19, v26, v25, v24);
  *(a1 + 128) = 0u;
  *(a1 + 120) = v27;
  *(a1 + 144) = 0u;
  sub_29921E8E0(a1 + 136, *a11, a11[1], 0xCCCCCCCCCCCCCCCDLL * ((a11[1] - *a11) >> 3));
  v28 = *(a1 + 87);
  if (v28 < 0)
  {
    v28 = *(a1 + 72);
  }

  *(a1 + 160) = v28;
  *(a1 + 168) = a8;
  *(a1 + 172) = a8;
  *(a1 + 176) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(a1 + 192) = -1;
  *(a1 + 200) = a10;
  *(a1 + 204) = a12;
  *(a1 + 208) = a13;
  *(a1 + 212) = a14;
  *(a1 + 216) = 256;
  *(a1 + 218) = 0;
  *(a1 + 220) = a9;
  *(a1 + 224) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  v29 = *(a1 + 136);
  v30 = *(a1 + 144) - v29;
  if (v30)
  {
    v31 = v30 >> 3;
    v32 = 0xCCCCCCCCCCCCCCCDLL * v31;
    if (0xCCCCCCCCCCCCCCCDLL * v31 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = 0xCCCCCCCCCCCCCCCDLL * v31;
    }

    v34 = *(v29 + 37);
    if (v34)
    {
      v36 = (v29 + 77);
      v37 = 1;
      do
      {
        v38 = v37;
        if (v33 == v37)
        {
          break;
        }

        v39 = *v36;
        v36 += 40;
        ++v37;
      }

      while ((v39 & 1) != 0);
      v35 = v38 >= v32;
    }

    else
    {
      v35 = 0;
    }

    *(a1 + 217) = v35;
    if (*(v29 + 8) == 6)
    {
      *(a1 + 216) = (v34 & 4) != 0;
    }
  }

  else
  {
    *(a1 + 217) = 1;
  }

  return a1;
}

void sub_2992C685C(_Unwind_Exception *a1)
{
  sub_299219AB4(v4, 0);
  sub_299219AB4((v1 + 120), 0);
  if (*(v1 + 119) < 0)
  {
    operator delete(*v5);
  }

  sub_299219AB4((v1 + 88), 0);
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  sub_299219AB4((v1 + 56), 0);
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992C68F0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F66DC0;
  v4 = sub_29933BFC4(a1, &off_2A1F6CFD0, a2);
  *v4 = &unk_2A1F6CD70;
  v4[3] = &unk_2A1F6CFC0;
  v5 = (v4 + 4);
  if (*(a2 + 55) < 0)
  {
    sub_29922C89C(v4 + 32, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v6 = *(a2 + 32);
    v4[6] = *(a2 + 48);
    *v5 = v6;
  }

  *(a1 + 56) = 0;
  if (*(a2 + 87) < 0)
  {
    sub_29922C89C((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v7 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v7;
  }

  *(a1 + 88) = 0;
  if (*(a2 + 119) < 0)
  {
    sub_29922C89C((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v8 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v8;
  }

  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  sub_29921E8E0(a1 + 136, *(a2 + 136), *(a2 + 144), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 144) - *(a2 + 136)) >> 3));
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 204) = *(a2 + 204);
  v9 = *(a2 + 212);
  v10 = *(a2 + 216);
  v11 = *(a2 + 217);
  v12 = *(a2 + 220);
  v13 = *(a2 + 224);
  *(a1 + 232) = 0;
  *(a1 + 212) = v9;
  *(a1 + 216) = v10;
  *(a1 + 217) = v11;
  *(a1 + 220) = v12;
  *(a1 + 224) = v13;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  v14 = *(a1 + 55);
  v15 = MEMORY[0x29EDB8ED8];
  if (v14 < 0)
  {
    v14 = *(a1 + 40);
    if (!v14)
    {
      goto LABEL_16;
    }

    v16 = *v5;
  }

  else
  {
    if (!*(a1 + 55))
    {
      goto LABEL_16;
    }

    v16 = v5;
  }

  v17 = MEMORY[0x29EDB8ED8];
  v18 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], v16, v14);
  sub_299219AB4((a1 + 56), v18);
  v15 = v17;
LABEL_16:
  v19 = *(a1 + 87);
  v20 = MEMORY[0x29EDB8EE8];
  if (v19 < 0)
  {
    v19 = *(a1 + 72);
    if (!v19)
    {
      goto LABEL_22;
    }

    v21 = *(a1 + 64);
  }

  else
  {
    if (!*(a1 + 87))
    {
      goto LABEL_22;
    }

    v21 = (a1 + 64);
  }

  v22 = v15;
  v23 = MEMORY[0x29EDB8EE8];
  v24 = CFStringCreateWithCharactersNoCopy(*v15, v21, v19, *MEMORY[0x29EDB8EE8]);
  sub_299219AB4((a1 + 88), v24);
  v20 = v23;
  v15 = v22;
LABEL_22:
  if (*(a2 + 120))
  {
    v25 = *(a1 + 119);
    if (v25 < 0)
    {
      v26 = *(a1 + 96);
      v25 = *(a1 + 104);
    }

    else
    {
      v26 = (a1 + 96);
    }

    v27 = CFStringCreateWithCharactersNoCopy(*v15, v26, v25, *v20);
    sub_299219AB4((a1 + 120), v27);
  }

  v28 = *(a2 + 128);
  if (v28)
  {
    sub_299229BC0((a1 + 128), v28);
  }

  v29 = *(a2 + 232);
  if (v29)
  {
    sub_299273778((a1 + 232), v29);
  }

  v30 = *(a2 + 240);
  if (v30)
  {
    sub_299240D80((a1 + 240), v30);
  }

  v31 = *(a2 + 248);
  if (v31)
  {
    sub_299240D20((a1 + 248), v31);
  }

  return a1;
}

void sub_2992C6C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, const void **a12)
{
  sub_299219AB4(v13, 0);
  if (*(v12 + 87) < 0)
  {
    operator delete(*a10);
  }

  sub_299219AB4(a12, 0);
  if (*(v12 + 55) < 0)
  {
    operator delete(*a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992C6CC4(uint64_t a1, char **lpsrc)
{
  if (!lpsrc || (v4 = **lpsrc, (v5 = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F6D008, 0)) == 0) || (v6 = v5, (*(*v5 + 88))(v5)))
  {

    return sub_29933C17C(a1, lpsrc);
  }

  if ((*(*a1 + 96))(a1) == 89 && (*(*v6 + 96))(v6) != 89 || (*(*a1 + 96))(a1) != 89 && (*(*v6 + 96))(v6) == 89)
  {
    return 0;
  }

  if ((*(*a1 + 96))(a1) == 89 && (*(*v6 + 96))(v6) == 89)
  {
    v8 = (*(*a1 + 168))(a1);
    v9 = (*(*v6 + 168))(v6);
    if (CFNumberCompare(v8, v9, 0) == kCFCompareEqualTo)
    {
      v10 = (*(*a1 + 160))(a1);
      v11 = (*(*v6 + 160))(v6);
      result = CFEqual(v10, v11);
      if (!result)
      {
        return result;
      }

      v12 = (*(*a1 + 544))(a1);
      v14 = v13;
      v15 = (*(*v6 + 544))(v6);
      if (v14 == v16)
      {
        return memcmp(v12, v15, 2 * v14) == 0;
      }
    }

    return 0;
  }

  v17 = *(a1 + 55);
  v18 = *(a1 + 40);
  if (v17 >= 0)
  {
    v18 = *(a1 + 55);
  }

  v19 = v6[55];
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v6 + 5);
  }

  if (v18 != v19)
  {
    return 0;
  }

  if (!v18)
  {
    return 1;
  }

  if (v20 >= 0)
  {
    v21 = (v6 + 32);
  }

  else
  {
    v21 = *(v6 + 4);
  }

  if (v17 >= 0)
  {
    v22 = (a1 + 32);
  }

  else
  {
    v22 = *(a1 + 32);
  }

  v23 = v18 - 1;
  do
  {
    v25 = *v22++;
    v24 = v25;
    v27 = *v21++;
    v26 = v27;
    v29 = v23-- != 0;
    result = v26 == v24;
  }

  while (v26 == v24 && v29);
  return result;
}

void sub_2992C7094(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *MEMORY[0x29EDB8ED8];
  for (i = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]); a3; --a3)
  {
    v8 = CFNumberCreate(v6, kCFNumberCFIndexType, a2);
    CFArrayAppendValue(i, v8);
    if (v8)
    {
      CFRelease(v8);
    }

    a2 += 8;
  }

  sub_299229F00((a1 + 240), i);
}

void sub_2992C7154(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992292D8(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992C71F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v5 += (*(*a1 + 568))(a1, v4++);
    }

    while (a2 != v4);
    v6 = 2 * v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(*a1 + 544))(a1);
  (*(*a1 + 568))(a1, a2);
  return v7 + v6;
}

uint64_t sub_2992C72F4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 136);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 144) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 40 * a2 + 24);
  }
}

uint64_t sub_2992C7330(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 136);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 144) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 40 * a2 + 26);
  }
}

BOOL sub_2992C736C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 136);
  return 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 144) - v2) >> 3) > a2 && *(v2 + 40 * a2 + 12) != 0;
}

uint64_t sub_2992C73B0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 136);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 144) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 40 * a2 + 30);
  }
}

uint64_t sub_2992C73EC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 136);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 144) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 40 * a2 + 32);
  }
}

uint64_t sub_2992C7428(uint64_t a1)
{
  v2 = *(a1 + 87);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v2 = *(a1 + 72);
  }

  if ((*(*a1 + 48))(a1))
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v4 += (*(*a1 + 312))(a1, v3);
      if (v4 > v2)
      {
        return v3;
      }

      if (++v3 >= (*(*a1 + 48))(a1))
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v5 = *(*a1 + 48);

    return v5(a1);
  }
}

uint64_t sub_2992C754C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 136);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 144) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 40 * a2 + 12);
  }
}

uint64_t sub_2992C7588(uint64_t *a1, unint64_t a2)
{
  sub_299255778(0);
  while (1)
  {
    v4 = (*(*a1 + 48))(a1) - 1;
    v5 = *a1;
    if (a2 >= v4)
    {
      break;
    }

    v6 = (*(v5 + 352))(a1, a2++);
    v7 = (*(*a1 + 344))(a1, a2);
    if (sub_299255970(&qword_2A1461DC0, v6, v7))
    {
      return a2 - 1;
    }
  }

  return (*(v5 + 48))(a1) - 1;
}

uint64_t sub_2992C76AC(uint64_t a1, uint64_t a2)
{
  sub_299255778(0);
  do
  {
    v4 = a2;
    if (!a2)
    {
      break;
    }

    --a2;
    v5 = (*(*a1 + 352))(a1, v4 - 1);
    v6 = (*(*a1 + 344))(a1, v4);
  }

  while (!sub_299255970(&qword_2A1461DC0, v5, v6));
  return v4;
}

uint64_t sub_2992C778C(uint64_t a1)
{
  result = sub_2992C7428(a1);
  if (result)
  {

    return sub_2992C76AC(a1, result - 1);
  }

  return result;
}

uint64_t sub_2992C77D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v5 += (*(*a1 + 320))(a1, v4++);
    }

    while (a2 != v4);
    v6 = 2 * v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(*a1 + 552))(a1);
  (*(*a1 + 320))(a1, a2);
  return v7 + v6;
}

void sub_2992C78F4(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  v15[0] = a2;
  v15[1] = v6;
  sub_29923A9CC(v15, &v16);
  v7 = (a1 + 96);
  if (*(a1 + 119) < 0)
  {
    operator delete(*v7);
  }

  *v7 = v16;
  *(a1 + 112) = v17;
  v8 = *a4;
  v9 = *(a4 + 8) - *a4;
  if (v9)
  {
    v10 = v9 >> 1;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = (*(a1 + 136) + 28);
    do
    {
      v12 = *v8++;
      *v11 = v12;
      v11 += 20;
      --v10;
    }

    while (v10);
  }

  v13 = *(a1 + 119);
  if (v13 < 0)
  {
    v7 = *(a1 + 96);
    v13 = *(a1 + 104);
  }

  v14 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x29EDB8ED8], v7, v13, *MEMORY[0x29EDB8EE8]);
  sub_299219AB4((a1 + 120), v14);
}

uint64_t sub_2992C79CC(uint64_t a1)
{
  v2 = (*(*a1 + 544))(a1);
  (*(*a1 + 544))(a1);
  if (!v2)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = v3 - 1;
  do
  {
    v5 = *v2++;
    v6 = (v5 & 0xFFFFFFDF) - 65;
    v7 = v5 != 32 && v6 >= 0x1A;
    result = !v7;
    v7 = v4-- != 0;
    v9 = v7;
  }

  while (result == 1 && (v9 & 1) != 0);
  return result;
}

uint64_t sub_2992C7A94(uint64_t a1)
{
  if (!(*(*a1 + 48))(a1))
  {
    return 0;
  }

  sub_299255778(0);
  if (!(*(*a1 + 48))(a1))
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = (*(*a1 + 344))(a1, v2);
    v5 = word_2A1461E02 == v3 || v3 == word_2A1461E04 || v3 == word_2A1461E06;
    v6 = v5;
    if (!v5)
    {
      break;
    }

    ++v2;
  }

  while (v2 < (*(*a1 + 48))(a1));
  return v6;
}

void sub_2992C7BD8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v54 = *MEMORY[0x29EDCA608];
  v6 = sub_2993652F8(a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_2993652F8(a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 8);
      v22 = (*(*a1 + 24))(a1);
      v21 = (*(*a1 + 56))(a1);
      v20 = (*(*a1 + 232))(a1);
      if ((*(*a1 + 96))(a1) < 32)
      {
        v9 = 63;
      }

      else
      {
        v9 = (*(*a1 + 96))(a1);
      }

      if ((*(*a1 + 408))(a1))
      {
        if ((*(*a1 + 408))(a1) == 2)
        {
          v10 = "prefix";
        }

        else
        {
          v10 = "partial";
        }
      }

      else
      {
        v10 = "exact";
      }

      v11 = (*(*a1 + 112))(a1);
      v12 = (*(*a1 + 384))(a1);
      v13 = (*(*a1 + 392))(a1);
      if (v13 >= -100.0)
      {
        v14 = *&v13;
      }

      else
      {
        v14 = 0xC059000000000000;
      }

      if (*(a1 + 184) >= -100.0)
      {
        v15 = *(a1 + 184);
      }

      else
      {
        v15 = 0xC059000000000000;
      }

      v16 = *(a1 + 220);
      v17 = (*(*a1 + 200))(a1);
      v18 = *(a1 + 8);
      v19 = *(a1 + 192);
      *buf = 136318722;
      v25 = a3;
      v26 = 2048;
      v27 = v23;
      v28 = 2112;
      v29 = v22;
      v30 = 2112;
      v31 = v21;
      v32 = 2112;
      v33 = v20;
      v34 = 1024;
      v35 = v9;
      v36 = 2080;
      v37 = v10;
      v38 = 1024;
      v39 = v11;
      v40 = 1024;
      v41 = v12;
      v42 = 2048;
      v43 = v14;
      v44 = 2048;
      v45 = v15;
      v46 = 1024;
      v47 = v16;
      v48 = 1024;
      v49 = v17;
      v50 = 2048;
      v51 = v18;
      v52 = 1024;
      v53 = v19;
      _os_log_debug_impl(&dword_29918C000, v7, OS_LOG_TYPE_DEBUG, "%s (%ld): [%@] (%@/%@), type: %c, length: %s, cost: %d, base-cost: %d, prob: %3.3lf, static prob: %3.3lf penalty: %d autocorrected: %d, rank: %ld, rank(static LM): %d", buf, 0x80u);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t sub_2992C7FAC(unsigned int a1)
{
  v1 = &qword_2A1461000;
  if ((atomic_load_explicit(&qword_2A1461E98, memory_order_acquire) & 1) == 0)
  {
    v12 = a1;
    v10 = __cxa_guard_acquire(&qword_2A1461E98);
    v1 = &qword_2A1461000;
    v11 = v10;
    a1 = v12;
    if (v11)
    {
      qword_2A1461E90 = &unk_2994108D8;
      __cxa_guard_release(&qword_2A1461E98);
      v1 = &qword_2A1461000;
      a1 = v12;
    }
  }

  v2 = v1[466];
  v3 = 293;
  v4 = v2;
  do
  {
    v5 = v3 >> 1;
    v6 = &v4[v3 >> 1];
    v8 = *v6;
    v7 = v6 + 1;
    v3 += ~(v3 >> 1);
    if (v8 < a1)
    {
      v4 = v7;
    }

    else
    {
      v3 = v5;
    }
  }

  while (v3);
  if (v4 == v2 + 293 || *v4 != a1)
  {
    return -1;
  }

  else
  {
    return v4 - v2;
  }
}

void sub_2992C8080(uint64_t a1, CFTypeRef cf, std::string **a3, unsigned int a4, int a5, int a6, int a7)
{
  v17 = *MEMORY[0x29EDCA608];
  *(a1 + 4) = 0u;
  v10 = a1 + 4;
  *(a1 + 68) = 0;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 20) = 0u;
  v11 = (a1 + 48);
  *(a1 + 80) = a4;
  *(a1 + 84) = a6;
  *(a1 + 88) = a7;
  *(a1 + 92) = a5;
  if (cf)
  {
    v12 = CFRetain(cf);
  }

  else
  {
    v12 = 0;
  }

  *(v10 + 92) = v12;
  for (i = *a3; ; i = (i + 32))
  {
    if (i == a3[1])
    {
      goto LABEL_9;
    }

    if (i[1].__r_.__value_.__s.__data_[4] == 1)
    {
      break;
    }
  }

  std::string::operator=((v10 + 4), i);
LABEL_9:
  if (v11 != a3)
  {
    sub_2992C9D58(v11, *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  if (a4 > 5 || ((1 << a4) & 0x34) == 0)
  {
    operator new();
  }

  sub_2992C83C4();
  std::mutex::lock(&stru_2A145F428);
  if (CFURLGetFileSystemRepresentation(cf, 1u, buffer, 1024))
  {
    v14 = buffer;
  }

  else
  {
    v14 = &unk_29943AA03;
  }

  sub_2991C6CA8(&__p, v14);
  operator new();
}

void sub_2992C82F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  MEMORY[0x29C29BFB0](v22, 0x10A0C403A2516C0);
  sub_29920FE30((v21 + 92), 0);
  sub_29921EB1C(&__p);
  sub_2992C8840((v21 + 36), 0);
  sub_2992CA118((v21 + 28), 0);
  if (*(v20 + 31) < 0)
  {
    operator delete(*(v21 + 4));
  }

  _Unwind_Resume(a1);
}

void sub_2992C83C4()
{
  if ((atomic_load_explicit(&qword_2A14609D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14609D8))
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &unk_2A145F428, &dword_29918C000);

    __cxa_guard_release(&qword_2A14609D8);
  }
}

void sub_2992C843C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (v2)
  {
    sub_2992CD96C(v2);
  }

  *(v1 + 4) = 0;
}

uint64_t sub_2992C846C(uint64_t a1, _DWORD *a2)
{
  sub_2992C83C4();
  std::mutex::lock(&stru_2A145F428);
  v4 = sub_2992CB828(*(a1 + 40), a2);
  std::mutex::unlock(&stru_2A145F428);
  return v4;
}

BOOL sub_2992C84D8(uint64_t a1)
{
  sub_2992C83C4();
  std::mutex::lock(&stru_2A145F428);
  v2 = sub_2992CD47C(*(a1 + 40));
  std::mutex::unlock(&stru_2A145F428);
  return v2;
}

void sub_2992C853C(uint64_t a1, int a2)
{
  sub_2992C83C4();
  std::mutex::lock(&stru_2A145F428);
  sub_2992CC2E8(*(a1 + 40), a2);

  std::mutex::unlock(&stru_2A145F428);
}

void sub_2992C85AC(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  sub_2992C83C4();
  std::mutex::lock(&stru_2A145F428);
  sub_2992CD424(*(a1 + 40) + 56);
  std::mutex::unlock(&stru_2A145F428);
  sub_2992C3DA8(*(a1 + 96), v2, v3);
  sub_2992C846C(a1, (a1 + 4));
  sub_2992C8D94(a1);
  sub_2992C84D8(a1);
  sub_2992C853C(a1, *(a1 + 92));
  v4 = sub_2993652F8(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = CFURLGetString(*(a1 + 96));
    v7 = 138412290;
    v8 = v6;
    _os_log_error_impl(&dword_29918C000, v4, OS_LOG_TYPE_ERROR, "Corruption of learning dictionary detected. Database has been reset: %@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t sub_2992C86C8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_2992CD9F4(result);
    sub_2992C83C4();
    std::mutex::lock(&stru_2A145F428);
    sub_2992CC844(*(a1 + 40), (a1 + 8));
  }

  *a1 = 0;
  return result;
}

uint64_t sub_2992C8794(uint64_t a1)
{
  sub_2992C84D8(a1);
  if (*(a1 + 40))
  {
    sub_2992C83C4();
    std::mutex::lock(&stru_2A145F428);
    sub_2992C8840((a1 + 40), 0);
    std::mutex::unlock(&stru_2A145F428);
  }

  sub_29920FE30((a1 + 96), 0);
  v3 = (a1 + 48);
  sub_29921EB1C(&v3);
  sub_2992C8840((a1 + 40), 0);
  sub_2992CA118((a1 + 32), 0);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_2992C8840(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2992CB7C0(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2992C888C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = *v6;
  if (*v6 == v6[1])
  {
LABEL_6:
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 1;
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 0x40000000;
    v12[2] = sub_2992C89D4;
    v12[3] = &unk_29EF107E0;
    v12[6] = a2;
    v12[7] = a3;
    v12[4] = &v13;
    v12[5] = a1;
    v9 = sub_2992CD35C(v6, v12);
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        v10 = *(v14 + 6);
        goto LABEL_12;
      }

      sub_2992C85AC(a1);
    }

    v10 = 3;
LABEL_12:
    _Block_object_dispose(&v13, 8);
    return v10;
  }

  v8 = a2 + 8;
  while (v8 != sub_29920B95C(a2, v7))
  {
    v7 += 4;
    if (v7 == v6[1])
    {
      v6 = *(a1 + 40);
      goto LABEL_6;
    }
  }

  return 3;
}

void sub_2992C89BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2992C89D4(void *a1)
{
  v36 = *MEMORY[0x29EDCA608];
  v2 = a1[5];
  ++*(v2 + 4);
  v3 = a1[6];
  if (!*(v2 + 32))
  {
    sub_2992CCF98(*(v2 + 40), v3);
  }

  v4 = sub_29920B95C(a1[6], (v2 + 8));
  v5 = (*(**(v4 + 56) + 16))(*(v4 + 56));
  v6 = sub_2992CE43C(*(v2 + 32), *v5, (v5[1] - *v5) >> 1);
  if (v6)
  {
    v7 = sub_2992CD070(*(v2 + 40), v3, v6);
    v8 = v7;
    ptr = v7;
    v10 = (v2 + 40);
    v9 = *(v2 + 40);
    if (v8 != -1)
    {
      sub_2992CBD90(v9, v8, *(v2 + 4));
      v11 = a1[7];
      if (v11)
      {
        *v11 = v8;
      }

      *(*(a1[4] + 8) + 24) = 0;
      goto LABEL_12;
    }
  }

  else
  {
    ptr = -1;
    v10 = (v2 + 40);
    v9 = *(v2 + 40);
  }

  v12 = sub_2992CBE10(v9, a1[6], *(v2 + 4));
  sub_2992C8CC8(v2, a1[6], v12, 1);
  v13 = a1[7];
  if (v13)
  {
    *v13 = v12;
  }

LABEL_12:
  v14 = *(v2 + 32);
  if (v14)
  {
    v15 = *(v14 + 8);
  }

  else
  {
    v15 = sub_2992CBC44(*v10);
  }

  if (v15 > *(v2 + 88))
  {
    v16 = sub_2993652F8(0xDu);
    v17 = os_signpost_id_make_with_pointer(v16, &ptr);
    v18 = sub_2993652F8(0xDu);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = v18;
      if (os_signpost_enabled(v18))
      {
        v20 = *(v2 + 32);
        if (v20)
        {
          v21 = *(v20 + 8);
        }

        else
        {
          v21 = sub_2992CBC44(*v10);
        }

        v27 = *(v2 + 84);
        v26 = *(v2 + 88);
        *buf = 67109632;
        v31 = v21;
        v32 = 1024;
        v33 = v26;
        v34 = 1024;
        v35 = v27;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "LearningDictionaryRebuild", "curSize: %d, rebuildThreshold: %d, newSize: %d", buf, 0x14u);
      }
    }

    v28 = *(v2 + 84);
    sub_2992CC104(*(v2 + 40));
  }

  v22 = *(v2 + 40);
  v23 = *(v2 + 4);
  v24 = *MEMORY[0x29EDCA608];

  return sub_2992CC0AC(v22, v23);
}

uint64_t sub_2992C8CC8(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (*(result + 32))
  {
    v6 = result;
    v7 = sub_29920B95C(a2, (result + 8));
    v8 = (*(**(v7 + 56) + 16))(*(v7 + 56));
    v9 = *(v6 + 32);
    v10 = *v8;
    v11 = (*(v8 + 8) - *v8) >> 1;
    if (a4)
    {

      return sub_2992CDF24(v9, v10, v11, a3);
    }

    else
    {

      return sub_2992CE304(v9, v10, v11, a3);
    }
  }

  return result;
}

uint64_t sub_2992C8D94(uint64_t a1)
{
  sub_2992C83C4();
  std::mutex::lock(&stru_2A145F428);
  v2 = *(a1 + 40);
  sub_2992D76D4((v2 + 64));
  sub_2992CD718(v2 + 56);
  *(v2 + 144) = 1;
  sub_2992CD47C(*(a1 + 40));
  std::mutex::unlock(&stru_2A145F428);
  result = sub_2992C86C8(a1);
  *a1 = 1;
  return result;
}

uint64_t sub_2992C8E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = sub_2992C8EC4;
  v8[3] = &unk_29EF10820;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = a4;
  v6 = sub_2992CD35C(v5, v8);
  if (v6 == 1)
  {
    return 0;
  }

  if (v6 == 2)
  {
    sub_2992C85AC(a1);
  }

  return 1;
}

void sub_2992C8FE4(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = v1;
  v1[2] = 0x2000000000;
  v2 = 0;
  sub_2992CC96C(*(a1 + 40));
}

void sub_2992C9080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2992C9098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(*(a1 + 40) + 8) + 24;
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a5 = 1;
  }

  return result;
}

void sub_2992C90FC(uint64_t a1, unsigned __int16 *a2, unint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2000000000;
    v9 = 0;
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 0x40000000;
    v7[2] = sub_2992C91BC;
    v7[3] = &unk_29EF10870;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = a5;
    sub_2992CE4B4(v6, a2, a3, a4, v7);
    _Block_object_dispose(v8, 8);
  }
}

void sub_2992C91BC(void *a1, int a2, _BYTE *a3)
{
  v5 = a1[6];
  v9 = 0;
  v8[0] = 0;
  v8[1] = 0;
  v7 = v8;
  if (sub_2992CC3A0(*(v5 + 40), a2, &v9))
  {
    v6 = *(a1[5] + 8);
    (*(a1[4] + 16))(a1[4]);
  }

  if (*(*(a1[5] + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  sub_299227884(&v7, v8[0]);
}

uint64_t sub_2992C9280(uint64_t result)
{
  v3 = *MEMORY[0x29EDCA608];
  if (*(result + 32))
  {
    v2 = 0;
    operator new();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992C9348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992CA3A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992C935C(uint64_t result)
{
  v3 = *MEMORY[0x29EDCA608];
  if (*(result + 32))
  {
    v2 = 0;
    operator new();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992C9434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992CA688(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992C9448(uint64_t result)
{
  v3 = *MEMORY[0x29EDCA608];
  if (*(result + 32))
  {
    v2 = 0;
    operator new();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992C9520(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992CA3A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992C9534(uint64_t result)
{
  v3 = *MEMORY[0x29EDCA608];
  if (*(result + 32))
  {
    v2 = 0;
    operator new();
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992C9614(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992CA688(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992C9628(uint64_t a1, const void *a2, int a3, int a4)
{
  v4 = *(*(a1 + 32) + 32);
  if (a2)
  {
    v5 = (a3 >> 1);
  }

  else
  {
    v5 = 0;
  }

  return sub_2992CDF24(v4, a2, v5, a4);
}

uint64_t MecabraCreateArrayWithContentOfLegacyPhraseLearningDictionary_0(const __CFURL *a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (sub_2992612D4(a1, 1))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
    v6[3] = Mutable;
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 0x40000000;
    v4[2] = sub_2992C977C;
    v4[3] = &unk_29EF108B8;
    v4[4] = &v5;
    v9 = MEMORY[0x29EDCA5F8];
    v10 = 0x40000000;
    v11 = sub_2992B7E0C;
    v12 = &unk_29EF10290;
    v13 = v4;
    sub_299261648();
  }

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_2992C9764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2992C977C(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  v5 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], *a2, *(a2 + 8));
  v6 = CFStringCreateWithCharacters(v4, *(a2 + 16), *(a2 + 24));
  v7 = CFStringCreateWithFormat(v4, 0, @"%@,%@", v5, v6);
  CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v7);
  CFRelease(v5);
  CFRelease(v6);

  CFRelease(v7);
}

void MecabraCreateArrayWithContentOfPhraseLearningDictionary_0(const __CFURL *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v10[3] = 0;
  memset(v9, 0, sizeof(v9));
  sub_2991C6CA8(&v5, off_2A145F3B0[0]);
  v6 = 0;
  v7 = 1;
  v8 = 0;
  sub_2992C9ABC(v9, &v5);
  sub_2991C6CA8(v4, off_2A145F3B8);
  memset(&v4[3], 0, 7);
  sub_2992C9ABC(v9, v4);
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    v2 = buffer;
  }

  else
  {
    v2 = &unk_29943AA03;
  }

  sub_2991C6CA8(&__p, v2);
  sub_2992CB640(buffer, v9, &__p);
}

void sub_2992C9A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  a29 = &a36;
  sub_29921EB1C(&a29);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t *sub_2992C9ABC(uint64_t *result, __int128 *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 5;
    if ((v7 + 1) >> 59)
    {
      sub_299212A8C();
    }

    v8 = v4 - *result;
    v9 = v8 >> 4;
    if (v8 >> 4 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v31 = result;
    if (v10)
    {
      sub_2992CA06C(result, v10);
    }

    v13 = 32 * v7;
    v28 = 0;
    v29 = v13;
    v30 = v13;
    if (*(a2 + 23) < 0)
    {
      sub_2991A110C(v13, *a2, *(a2 + 1));
      v15 = v29;
      v16 = v30;
    }

    else
    {
      v14 = *a2;
      *(v13 + 16) = *(a2 + 2);
      *v13 = v14;
      v15 = v13;
      v16 = v13;
    }

    v17 = *(a2 + 6);
    *(v13 + 27) = *(a2 + 27);
    *(v13 + 24) = v17;
    *&v30 = v16 + 32;
    v19 = *v3;
    v18 = v3[1];
    v32[0] = v3;
    v32[1] = &v34;
    v32[2] = &v35;
    v20 = v15 + v19 - v18;
    v34 = v20;
    v35 = v20;
    if (v19 == v18)
    {
      v33 = 1;
    }

    else
    {
      v21 = v19;
      v22 = v15 + v19 - v18;
      do
      {
        v23 = *v21;
        *(v22 + 16) = *(v21 + 2);
        *v22 = v23;
        *(v21 + 1) = 0;
        *(v21 + 2) = 0;
        *v21 = 0;
        v24 = *(v21 + 6);
        *(v22 + 27) = *(v21 + 27);
        *(v22 + 24) = v24;
        v21 += 2;
        v22 += 32;
      }

      while (v21 != v18);
      v35 = v22;
      v33 = 1;
      do
      {
        if (v19[23] < 0)
        {
          operator delete(*v19);
        }

        v19 += 32;
      }

      while (v19 != v18);
    }

    sub_2992C9FEC(v32);
    v25 = *v3;
    *v3 = v20;
    v26 = v3[2];
    v27 = v30;
    *(v3 + 1) = v30;
    *&v30 = v25;
    *(&v30 + 1) = v26;
    v28 = v25;
    v29 = v25;
    result = sub_2992CA0B4(&v28);
    v12 = v27;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      result = sub_2991A110C(result[1], *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v6;
    }

    v11 = *(a2 + 6);
    *(v5 + 27) = *(a2 + 27);
    *(v5 + 24) = v11;
    v12 = v5 + 32;
    v3[1] = v5 + 32;
  }

  v3[1] = v12;
  return result;
}

void sub_2992C9CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2992CA0B4(va);
  _Unwind_Resume(a1);
}

void sub_2992C9CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@,%@", a2, a3);
  CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v4);

  CFRelease(v4);
}

void sub_2992C9D58(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    sub_29921EF84(a1);
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

      sub_2992C9EDC(a1, v11);
    }

    sub_299212A8C();
  }

  v12 = a1[1];
  if (a4 <= (v12 - v8) >> 5)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8, v6);
        v15 = *(v6[1].__r_.__value_.__r.__words + 3);
        *(v8 + 24) = v6[1].__r_.__value_.__l.__data_;
        *(v8 + 27) = v15;
        v6 = (v6 + 32);
        v8 += 32;
      }

      while (v6 != a3);
      v12 = a1[1];
    }

    while (v12 != v8)
    {
      v16 = *(v12 - 9);
      v12 -= 4;
      if (v16 < 0)
      {
        operator delete(*v12);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v13 = (v12 + __str - v8);
    if (v12 != v8)
    {
      do
      {
        std::string::operator=(v8, v6);
        v14 = *(v6[1].__r_.__value_.__r.__words + 3);
        *(v8 + 24) = v6[1].__r_.__value_.__l.__data_;
        *(v8 + 27) = v14;
        v6 = (v6 + 32);
        v8 += 32;
      }

      while (v6 != v13);
      v12 = a1[1];
    }

    a1[1] = sub_2992C9F18(a1, v13, a3, v12);
  }
}

void sub_2992C9EDC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_2992CA06C(a1, a2);
  }

  sub_299212A8C();
}

char *sub_2992C9F18(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v13 = __dst;
  v14 = __dst;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_2991A110C(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v9 = *(v6 + 6);
      *(v4 + 27) = *(v6 + 27);
      *(v4 + 6) = v9;
      v6 += 2;
      v4 = v8 + 32;
      v14 = v8 + 32;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_2992C9FEC(v11);
  return v4;
}

uint64_t sub_2992C9FEC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2992CA024(a1);
  }

  return a1;
}

void sub_2992CA024(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_2992CA06C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2992CA0B4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2992CA118(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2992CD8DC(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

__n128 sub_2992CA1E0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6D378;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992CA218(void *a1, int *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, _BYTE *a7)
{
  v10 = *a2;
  v11 = *a4;
  v12 = *a5;
  v13 = *a6;
  v14 = a1[1];
  v18 = 0;
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  if (sub_2992CC3A0(*(v14 + 40), v10, &v18))
  {
    v15 = a1[3];
    sub_2992CA33C(*(a1[2] + 24), a3, &v16, v18, v11, v12, v13);
  }

  if (*a1[3] == 1)
  {
    *a7 = 1;
  }

  sub_299227884(&v16, v17[0]);
}

uint64_t sub_2992CA2F0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6D3E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992CA33C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a4;
  v9 = a6;
  v10 = a5;
  v8 = a7;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, a2, a3, &v11, &v10, &v9, &v8);
}

uint64_t sub_2992CA3A0(uint64_t a1)
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

__n128 sub_2992CA49C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6D408;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992CA4D4(void *a1, int *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, _BYTE *a9)
{
  v11 = *a2;
  v12 = *a4;
  v13 = *a5;
  v14 = *a6;
  v15 = *a7;
  v16 = *a8;
  v17 = a1[1];
  v20 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  if (sub_2992CC3A0(*(v17 + 40), v11, &v20))
  {
    sub_2992CA614(*(a1[2] + 24), a3, &v18, v20, v12, v13, v14, v15, v16, a1[3]);
  }

  if (*a1[3] == 1)
  {
    *a9 = 1;
  }

  sub_299227884(&v18, v19[0]);
}

uint64_t sub_2992CA5C8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6D478))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992CA614(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = a4;
  v13 = a6;
  v14 = a5;
  v11 = a8;
  v12 = a7;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, a2, a3, &v15, &v14, &v13, &v12, &v11, &a9, a10);
}

uint64_t sub_2992CA688(uint64_t a1)
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

__n128 sub_2992CA784(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6D498;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992CA7BC(void *a1, int *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, _BYTE *a7)
{
  v10 = *a2;
  v11 = *a4;
  v12 = *a5;
  v13 = *a6;
  v14 = a1[1];
  v18 = 0;
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  if (sub_2992CC3A0(*(v14 + 40), v10, &v18))
  {
    v15 = a1[3];
    sub_2992CA33C(*(a1[2] + 24), a3, &v16, v18, v11, v12, v13);
  }

  if (*a1[3] == 1)
  {
    *a7 = 1;
  }

  sub_299227884(&v16, v17[0]);
}

uint64_t sub_2992CA894(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6D4F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992CA95C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6D518;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992CA994(void *a1, int *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, _BYTE *a9)
{
  v11 = *a2;
  v12 = *a4;
  v13 = *a5;
  v14 = *a6;
  v15 = *a7;
  v16 = *a8;
  v17 = a1[1];
  v20 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  if (sub_2992CC3A0(*(v17 + 40), v11, &v20))
  {
    sub_2992CA614(*(a1[2] + 24), a3, &v18, v20, v12, v13, v14, v15, v16, a1[3]);
  }

  if (*a1[3] == 1)
  {
    *a9 = 1;
  }

  sub_299227884(&v18, v19[0]);
}

uint64_t sub_2992CAA88(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6D578))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2992CAB24(_Unwind_Exception *a1)
{
  v3 = v2;
  sub_2992CB108(v3, 0);
  v5 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v5)
  {
    sub_299274C48(v5, 0);
    MEMORY[0x29C29BFB0](v5, 0x20C4093837F09);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992CAB70(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = result;
    result = sub_2992C1E9C();
    if (result)
    {
      if (*v1)
      {
        sub_2992C1B60(*(v2 + 8));
        operator new();
      }
    }
  }

  return result;
}

void sub_2992CABFC(uint64_t a1, uint64_t a2)
{
  v9[4] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  if (v2)
  {
    if (sub_2992C1E9C())
    {
      if (a2)
      {
        if (*v2)
        {
          __p = 0;
          v7 = 0;
          v8 = 0;
          v9[0] = &unk_2A1F6D598;
          v9[1] = &__p;
          v9[3] = v9;
          sub_299324D84(a2, v9);
          sub_2992CB39C(v9);
          sub_2992C1A18(*(a1 + 8), &__p);
          if (__p)
          {
            v7 = __p;
            operator delete(__p);
          }
        }
      }
    }
  }

  v5 = *MEMORY[0x29EDCA608];
}

void sub_2992CACDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992CAD08(uint64_t a1, const __CFArray *a2)
{
  v2 = *(a1 + 8);
  if (v2 && sub_2992C1E9C() && a2 && *v2)
  {
    memset(__p, 0, sizeof(__p));
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        sub_2992CADD4(__p, ValueAtIndex[3]);
      }
    }

    sub_2992C1A18(*(a1 + 8), __p);
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2992CADB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992CADD4(uint64_t a1, void *a2)
{
  v3 = *(a2 + 4);
  v4 = vcvtq_f64_f32(v3);
  v5 = *(a2 + 12);
  v6 = vcvtq_f64_f32(v5);
  v7 = vcvtq_f64_f32(vadd_f32(v3, vmul_f32(v5, 0x3F0000003F000000)));
  v8 = a2[3];
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v10 >= v9)
  {
    v12 = *a1;
    v13 = v10 - *a1;
    v14 = 0x6DB6DB6DB6DB6DB7 * (v13 >> 3) + 1;
    if (v14 > 0x492492492492492)
    {
      sub_299212A8C();
    }

    v15 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v12) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x249249249249249)
    {
      v16 = 0x492492492492492;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 <= 0x492492492492492)
      {
        operator new();
      }

      sub_29919600C();
    }

    v17 = 8 * (v13 >> 3);
    *v17 = v7;
    *(v17 + 16) = v4;
    *(v17 + 32) = v6;
    *(v17 + 48) = v8;
    v11 = v17 + 56;
    v18 = v17 - v13;
    memcpy((v17 - v13), v12, v13);
    *a1 = v18;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v10 = v7;
    *(v10 + 16) = v4;
    *(v10 + 32) = v6;
    v11 = v10 + 56;
    *(v10 + 48) = v8;
  }

  *(a1 + 8) = v11;
}

uint64_t *sub_2992CAF50(uint64_t *result, uint64_t a2)
{
  v2 = result[1];
  if (v2)
  {
    v4 = result;
    result = sub_2992C1E9C();
    if (result)
    {
      if (*v2)
      {
        result = v4[2];
        if (result)
        {
          v5 = *(a2 + 64) - 1;
          if (v5 > 2)
          {
            v6 = 1;
          }

          else
          {
            v6 = qword_299411A50[v5];
          }

          v7 = *(a2 + 32);
          v8 = *(a2 + 40);
          v9 = *(a2 + 48);
          v10 = *(a2 + 56);

          return sub_2992C1174(result, v6, v7, v8, v9, v10);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2992CAFEC(uint64_t a1, const __CFArray *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  result = sub_2992C1E9C();
  if (!result)
  {
    return result;
  }

  if (!*v2)
  {
    return 0;
  }

  result = 0;
  if (a2 && *(a1 + 16))
  {
    Count = CFArrayGetCount(a2);
    if (Count < 1)
    {
      return 1;
    }

    v7 = Count;
    v8 = 0;
    while (1)
    {
      v9 = *(CFArrayGetValueAtIndex(a2, v8) + 3);
      if (!v9)
      {
        break;
      }

      v10 = **v9;
      v11 = __dynamic_cast(v9, &unk_2A1F6F680, &unk_2A1F6F690, 0);
      if (!v11)
      {
        break;
      }

      sub_2992CAF50(a1, v11);
      ++v8;
      result = 1;
      if (v7 == v8)
      {
        return result;
      }
    }

    sub_2992CB108((a1 + 16), 0);
    return 0;
  }

  return result;
}

const void ***sub_2992CB108(const void ***result, const void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_299274C10(v2, 0);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void sub_2992CB16C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4[0] = 0;
    v4[1] = v4;
    v4[2] = 0x2000000000;
    v5 = 0;
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 0x40000000;
    v3[2] = sub_2992CB224;
    v3[3] = &unk_29EF10908;
    v3[4] = a2;
    v3[5] = v4;
    sub_2992C12D8(v2, v3);
    _Block_object_dispose(v4, 8);
  }
}

void sub_2992CB20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2992CB224(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = sub_2992C1D88(&v8);
  sub_2992C1C74(&v8);
  result = (*(v5 + 16))(v5, v6, *(*(a1 + 40) + 8) + 24);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_2992CB31C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F6D598;
  a2[1] = v2;
  return result;
}

uint64_t sub_2992CB350(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6D608))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992CB39C(uint64_t a1)
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

uint64_t sub_2992CB41C(int a1, __CFDictionary *a2, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F72C30, 0);
  if (result)
  {
    v6 = result;
    result = sub_299377154(result);
    if (result)
    {
      sub_2992CB4E8(result, a2, v6[1]);
      v7 = (*(*v6 + 24))(v6);
      sub_2992CB59C(v7, a2, v7);
      return 1;
    }
  }

  return result;
}

void sub_2992CB4E8(int a1, CFMutableDictionaryRef theDict, uint64_t a3)
{
  v5 = *MEMORY[0x29EDB8F00];
  CFDictionaryAddValue(theDict, @"conversionCandidateAccepted", *MEMORY[0x29EDB8F00]);
  if (a3 >= 4)
  {
    if (a3 >= 10)
    {
      return;
    }
  }

  else
  {
    CFDictionaryAddValue(theDict, *off_29EF10928[a3], v5);
  }

  CFDictionaryAddValue(theDict, @"top10ConversionCandidateAccepted", v5);
}

void sub_2992CB59C(int a1, __CFDictionary *a2, CFStringRef theString)
{
  valuePtr = CFStringGetLength(theString);
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a2, @"acceptedCandidateLength", v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_2992CB640(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_2992CD4D8(a1, *a2, a2[1], (a2[1] - *a2) >> 5);
  if (*(a3 + 23) < 0)
  {
    sub_2991A110C((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v5;
  }

  operator new();
}

void sub_2992CB728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29921EB1C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2992CB778(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2992D4B1C(v2);
    MEMORY[0x29C29BFB0](v3, 0x1032C40F8A9CA3CLL);
  }

  return a1;
}

uint64_t sub_2992CB7C0(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    _Block_release(v2);
  }

  sub_2992CD560(a1 + 56);
  sub_2992CB778((a1 + 48));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v4 = a1;
  sub_29921EB1C(&v4);
  return a1;
}

uint64_t sub_2992CB828(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 56);
  v3 = a1 + 56;
  if (!v4)
  {
    *a2 = 0;
    v5 = (a1 + 24);
    if (*(a1 + 47) < 0)
    {
      v5 = *v5;
    }

    sub_2992CB88C(v3, v5);
    sub_2992CB980(a1);
  }

  return 1;
}

void sub_2992CB87C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2992CB870);
}

uint64_t sub_2992CB88C(uint64_t result, char *a2)
{
  if (!*result)
  {
    v3 = result;
    sub_299248D7C((result + 64), a2);
    LODWORD(result) = sqlite3_open_v2(":memory:", v3, 3145730, 0);
    if (result)
    {
LABEL_3:
      if (result == 11 || result == 26)
      {
        result = sub_2992CD718(v3);
        if (result)
        {
          return result;
        }

        exception = __cxa_allocate_exception(4uLL);
        v5 = 1;
      }

      else
      {
        exception = __cxa_allocate_exception(4uLL);
        v5 = 2;
      }

      *exception = v5;
      __cxa_throw(exception, &unk_2A1F6D658, 0);
    }

    if (stat(a2, &v6))
    {

      return sub_2992CD66C(v3);
    }

    else
    {
      result = sub_2992CD5B8(v3, 0);
      if (result)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

void sub_2992CB980(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_2992D5874(&__p);
  sub_2992CBFDC();
}

void sub_2992CBA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992CBA44(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    (*(v2 + 16))();
  }

  sub_2992CBAA4((a1 + 56), "DROP TABLE Assist");

  return sub_2992CBAA4((a1 + 56), "DROP TABLE Words");
}

uint64_t sub_2992CBAA4(sqlite3 **a1, const char *a2)
{
  result = sqlite3_exec(*a1, a2, 0, 0, 0);
  if (result == 26 || result == 11)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1;
    __cxa_throw(exception, &unk_2A1F6D658, 0);
  }

  return result;
}

BOOL sub_2992CBAF8(uint64_t a1, sqlite3 **a2)
{
  sub_2992D5480(*(a1 + 48), "Words", &__p);
  sub_2992CBAA4(a2, "PRAGMA journal_mode = WAL;");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (sub_2992CBAA4(a2, p_p))
  {
    goto LABEL_11;
  }

  v5 = *(a1 + 48);
  sub_2992D569C(&v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v11;
  v6 = (v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : v11.__r_.__value_.__r.__words[0];
  if (sub_2992CBAA4(a2, v6))
  {
LABEL_11:
    v7 = 0;
  }

  else
  {
    v9 = *(a1 + 48);
    sub_2992D5788(&v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v11;
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &__p;
    }

    else
    {
      v10 = v11.__r_.__value_.__r.__words[0];
    }

    v7 = sub_2992CBAA4(a2, v10) == 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_2992CBC20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992CBC44(uint64_t a1)
{
  v1 = sub_2992CBCA0(a1, 10);
  if (sub_2992D7538(v1) != 100)
  {
    return 0;
  }

  v2 = *(v1 + 8);

  return sqlite3_column_int(v2, 0);
}

uint64_t sub_2992CBCA0(uint64_t a1, int a2)
{
  v2 = *(a1 + 96);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = a1 + 96;
  do
  {
    if (*(v2 + 32) >= a2)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a2));
  }

  while (v2);
  if (v3 == a1 + 96 || *(v3 + 32) > a2 || (v4 = *(v3 + 40)) == 0)
  {
LABEL_10:
    sub_2992D4B74(*(a1 + 48), a2, &__p);
    sub_2992CD280();
  }

  sqlite3_reset(*(v4 + 8));
  sqlite3_clear_bindings(*(v4 + 8));
  return v4;
}

void sub_2992CBD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992CBD90(uint64_t a1, int a2, int a3)
{
  v6 = sub_2992CBCA0(a1, 5);
  sqlite3_bind_int(*(v6 + 8), 1, a3);
  sqlite3_bind_int(*(v6 + 8), 2, a2);
  *(a1 + 144) = 1;

  return sub_2992D7538(v6);
}

sqlite3_int64 sub_2992CBE10(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_2992CBCA0(a1, 2);
  sqlite3_bind_int(*(v6 + 8), 1, a3);
  v7 = *a1;
  if (*a1 != *(a1 + 8))
  {
    v8 = 2;
    do
    {
      v9 = *(sub_29920B95C(a2, v7) + 56);
      v10 = *(v7 + 24);
      if (v10 == 1)
      {
        v12 = (*(*v9 + 24))(v9);
        sqlite3_bind_int(*(v6 + 8), v8, v12);
      }

      else if (!v10)
      {
        v11 = (*(*v9 + 16))(v9);
        sub_2992D7580(v6, v8, *v11, (*(v11 + 8) - *v11) >> 1, *(v7 + 30));
      }

      ++v8;
      v7 += 32;
    }

    while (v7 != *(a1 + 8));
  }

  sub_2992D7538(v6);
  *(a1 + 144) = 1;
  v13 = *(a1 + 56);

  return sqlite3_last_insert_rowid(v13);
}

void sub_2992CBF44(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = sub_2992D5214();
  if (v2[23] < 0)
  {
    v3 = *v2;
  }

  sub_2992CBFDC();
}

void sub_2992CBFC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992CC058(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_2992CC058(unint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_2992D74EC(v2);
    MEMORY[0x29C29BFB0](v2, 0x20C40960023A9);
  }

  return a1;
}

uint64_t sub_2992CC0AC(uint64_t a1, int a2)
{
  v4 = sub_2992CBCA0(a1, 6);
  sqlite3_bind_int(*(v4 + 8), 1, a2);
  result = sub_2992D7538(v4);
  *(a1 + 144) = 1;
  return result;
}

void sub_2992CC104(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = sub_2992D52B4();
  if (v2[23] < 0)
  {
    v3 = *v2;
  }

  sub_2992CBFDC();
}

void sub_2992CC2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, unint64_t a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_2992CC058(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_2992CC2E8(uint64_t a1, int a2)
{
  v4 = sub_2992CBCA0(a1, 9);
  sqlite3_bind_int(*(v4 + 8), 1, a2);
  result = sub_2992D7538(v4);
  *(a1 + 144) = 1;
  return result;
}

uint64_t sub_2992CC340(uint64_t a1, double a2)
{
  v4 = sub_2992CBCA0(a1, 7);
  sqlite3_bind_double(*(v4 + 8), 1, a2);
  result = sub_2992D7538(v4);
  *(a1 + 144) = 1;
  return result;
}

uint64_t sub_2992CC3A0(uint64_t *a1, int a2, int *a3)
{
  result = sub_2992CBCA0(a1, 4);
  if (result)
  {
    v7 = result;
    sqlite3_bind_int(*(result + 8), 1, a2);
    if (sub_2992D7538(v7) == 100)
    {
      *a3 = sqlite3_column_int(*(v7 + 8), 0);
      v8 = *a1;
      if (a1[1] != *a1)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = *(v8 + v9 + 24);
          if (v11 == 1)
          {
            sqlite3_column_int(*(v7 + 8), v10 + 1);
            operator new();
          }

          if (!v11)
          {
            v12 = sqlite3_column_blob(*(v7 + 8), v10 + 1);
            v13 = sqlite3_column_bytes(*(v7 + 8), v10 + 1);
            memset(v14, 0, sizeof(v14));
            sub_299215EC0(v14, v12, v12 + (v13 & 0xFFFFFFFFFFFFFFFELL), v13 >> 1);
            operator new();
          }

          ++v10;
          v8 = *a1;
          v9 += 32;
        }

        while (v10 < (a1[1] - *a1) >> 5);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_2992CC61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  MEMORY[0x29C29BFB0](v17, 0x91C4089455612);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2992CC6A0(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_2992D5960(&v2);
  sub_2992CBFDC();
}

void sub_2992CC7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, unint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_2992CC058(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2992CC844(uint64_t a1, const char *a2)
{
  v4 = 0;
  v2 = *(a1 + 48);
  sub_2992D53F4(a2, &__p);
  sub_2992CBFDC();
}

void sub_2992CC934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992CC96C(uint64_t *a1)
{
  v2 = a1[6];
  sub_2992D5C04(a1, &v3);
  sub_2992CBFDC();
}

void sub_2992CCCA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22, uint64_t a23)
{
  sub_2992CC058((v23 - 120));
  if (*(v23 - 89) < 0)
  {
    operator delete(*(v23 - 112));
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2992CCC80);
  }

  _Unwind_Resume(a1);
}

void sub_2992CCF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992CCF98(uint64_t a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = v2;
  v2[2] = 0x2000000000;
  v3 = -1;
  sub_2992CCDBC(a1, a2);
}

void sub_2992CD040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2992CD058(uint64_t result, int a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *a3 = 1;
  return result;
}

uint64_t sub_2992CD070(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = a3 + 1;
  v4 = *a3;
  if (*a3 == a3 + 1)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(v7) = -1;
  while (1)
  {
    v8 = *(v4 + 7);
    v9 = sub_2992CBCA0(a1, 1);
    v10 = sub_2992CD138(a1, v9, v8, a2, 0);
    v7 = v10 ? v8 : v7;
    if (v10)
    {
      break;
    }

    v11 = v4[1];
    if (v11)
    {
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        v12 = v4[2];
        v13 = *v12 == v4;
        v4 = v12;
      }

      while (!v13);
    }

    v4 = v12;
    if (v12 == v3)
    {
      return v7;
    }
  }

  return v8;
}

BOOL sub_2992CD138(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  sqlite3_bind_int(*(a2 + 8), 1, a3);
  v9 = *a1;
  if (*a1 != a1[1])
  {
    v10 = 2;
    do
    {
      if ((*(v9 + 28) & 1) == 0)
      {
        v11 = sub_29920B95C(a4, v9);
        if (a4 + 8 == v11)
        {
          if ((a5 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v12 = *(v11 + 56);
          v13 = *(v9 + 24);
          if (v13 == 1)
          {
            v16 = (*(*v12 + 24))(v12);
            v14 = v10 + 1;
            sqlite3_bind_int(*(a2 + 8), v10, v16);
            goto LABEL_11;
          }

          if (!v13)
          {
            v14 = v10 + 1;
            v15 = (*(*v12 + 16))(v12);
            sub_2992D7580(a2, v10, *v15, (*(v15 + 8) - *v15) >> 1, *(v9 + 30));
LABEL_11:
            v10 = v14;
          }
        }
      }

      v9 += 32;
    }

    while (v9 != a1[1]);
  }

  return sub_2992D7538(a2) == 100;
}

void sub_2992CD2E4(_Unwind_Exception *a1, int a2)
{
  v5 = v3;
  MEMORY[0x29C29BFB0](v5, 0x20C40960023A9);
  if (a2 == 1)
  {
    if (*__cxa_begin_catch(a1) == 1)
    {
      sub_2992D76D4((v2 + 8));
      sub_2992CD718(v2);
    }

    __cxa_end_catch();
    JUMPOUT(0x2992CD2D0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992CD35C(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 56);
  v6 = sub_2992CBAA4((a1 + 56), "BEGIN IMMEDIATE") == 0;
  (*(a2 + 16))(a2);
  sub_2992CBAA4(v5, "COMMIT");
  v6 = 0;
  *(a1 + 144) = 1;
  sub_2992CD75C(&v5);
  return 0;
}

void sub_2992CD3E8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2992CD75C(&a9);
  if (a2 == 1)
  {
    *__cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2992CD3D4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992CD424(uint64_t a1)
{
  if (!*a1)
  {
    return 1;
  }

  sub_2992D76D4((a1 + 8));
  if (sqlite3_close(*a1))
  {
    return 0;
  }

  *a1 = 0;
  return 1;
}

BOOL sub_2992CD47C(uint64_t a1)
{
  if (*(a1 + 144) != 1)
  {
    return 1;
  }

  Current = CFAbsoluteTimeGetCurrent();
  sub_2992CC340(a1, Current);
  result = sub_2992CD5B8(a1 + 56, 1) == 0;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_2992CD4D8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2992C9EDC(result, a4);
  }

  return result;
}

void sub_2992CD540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29921EB1C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2992CD560(uint64_t a1)
{
  if (*a1)
  {
    sub_2992D76D4((a1 + 8));
    sqlite3_close(*a1);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  sub_2992D7690(a1 + 8);
  return a1;
}

uint64_t sub_2992CD5B8(uint64_t a1, int a2)
{
  ppDb = 0;
  v4 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v4 = *v4;
  }

  v5 = sqlite3_open(v4, &ppDb);
  if (!v5)
  {
    if (a2)
    {
      p_ppDb = a1;
    }

    else
    {
      p_ppDb = &ppDb;
    }

    v7 = *p_ppDb;
    if (a2)
    {
      v8 = &ppDb;
    }

    else
    {
      v8 = a1;
    }

    v9 = sqlite3_backup_init(*v8, "main", v7, "main");
    if (v9)
    {
      v10 = v9;
      sqlite3_backup_step(v9, -1);
      sqlite3_backup_finish(v10);
    }

    v5 = sqlite3_errcode(ppDb);
  }

  if (ppDb)
  {
    sqlite3_close(ppDb);
  }

  return v5;
}

uint64_t sub_2992CD66C(uint64_t a1)
{
  v4 = a1;
  v5 = sub_2992CBAA4(a1, "BEGIN IMMEDIATE") == 0;
  if (!sub_2992CBAF8(*(a1 + 56), a1))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3;
    __cxa_throw(exception, &unk_2A1F6D658, 0);
  }

  sub_2992CBAA4(v4, "COMMIT");
  v5 = 0;
  return sub_2992CD75C(&v4);
}

uint64_t sub_2992CD718(uint64_t a1)
{
  sub_2992CBA44(*(a1 + 56));
  sub_2992CD66C(a1);
  return 1;
}

void sub_2992CD74C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2992CD740);
}

uint64_t sub_2992CD75C(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_2992CBAA4(*a1, "ROLLBACK");
  }

  return a1;
}

void sub_2992CD8A4(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v3, 0x10A1C4028A83BA9);
  MEMORY[0x29C29BFB0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2992CD8DC(uint64_t a1)
{
  sub_2992CD96C(a1);
  v2 = *(a1 + 64);
  if (v2)
  {
    _Block_release(v2);
  }

  v5 = (a1 + 40);
  sub_29921EB1C(&v5);
  v5 = (a1 + 16);
  sub_2992CF180(&v5);
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    (*(*v3 + 9))(v3);
  }

  return a1;
}

void sub_2992CD96C(void ***a1)
{
  (*(**a1 + 12))(*a1);
  v3 = a1[2];
  v2 = a1[3];
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      sub_29921B8CC((v2 - 3), *(v2 - 2));
      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[3] = v3;
  sub_29921EB70(a1 + 5);
  *(a1 + 2) = 0;
}

uint64_t sub_2992CD9F4(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = (*(a1 + 48) - *(a1 + 40)) >> 5;
  sub_2992CD96C(a1);
  result = sub_2992CDB3C(v2, v3);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v6 >= v5)
  {
    v8 = *(a1 + 16);
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2992CF20C();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    v19[4] = a1 + 16;
    if (v12)
    {
      sub_2992CF224(v12);
    }

    v13 = 24 * v9;
    *(v13 + 16) = 0;
    *(24 * v9 + 8) = 0;
    *v13 = 24 * v9 + 8;
    v7 = 24 * v9 + 24;
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    v16 = 24 * v9 + v14 - v15;
    sub_2992CF27C(v14, v15, v13 + v14 - v15);
    v17 = *(a1 + 16);
    *(a1 + 16) = v16;
    *(a1 + 24) = v7;
    v18 = *(a1 + 32);
    *(a1 + 32) = 0;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = sub_2992CF314(v19);
  }

  else
  {
    v6[2] = 0;
    v6[1] = 0;
    *v6 = v6 + 1;
    v7 = (v6 + 3);
  }

  *(a1 + 24) = v7;
  *(a1 + 72) = 1;
  return result;
}

void *sub_2992CDB3C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_29924EF30(result, a2);
    }

    sub_2992CF20C();
  }

  return result;
}

uint64_t sub_2992CDBD8(void *a1)
{
  (*(**a1 + 96))(*a1);
  *(a1 + 72) = 0;
  v2 = *(a1 + 5);
  v3 = a1[6];
  v4 = a1[5];
  if (v4 != v3)
  {
    sub_2992CF368(v4, v3, 126 - 2 * __clz((v3 - v4) >> 5), 1);
    v5 = a1[5];
    v6 = a1[6];
    if (v6 != v5)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = (v5 + 32 * v7);
        LODWORD(v44) = *(v9 + 6);
        sub_2992D311C(&v42, &v44, 1);
        v10 = v8;
        v11 = (v8 << 32) + 0x100000000;
        for (i = 32 * v8 + 56; ; i += 32)
        {
          ++v10;
          v13 = a1[5];
          if (v10 >= (a1[6] - v13) >> 5)
          {
            break;
          }

          v14 = v13 + i;
          v15 = *(v13 + i - 1);
          if (v15 >= 0)
          {
            v16 = *(v13 + i - 1);
          }

          else
          {
            v16 = *(v13 + i - 16);
          }

          v17 = *(v9 + 23);
          v18 = v17;
          if ((v17 & 0x80u) != 0)
          {
            v17 = v9[1];
          }

          if (v16 != v17)
          {
            break;
          }

          v21 = *(v14 - 24);
          v19 = v14 - 24;
          v20 = v21;
          v22 = (v15 >= 0 ? v19 : v20);
          v23 = *v9;
          v24 = v18 >= 0 ? v9 : *v9;
          if (memcmp(v22, v24, v16))
          {
            break;
          }

          v11 += 0x100000000;
          sub_2992D319C(&v42, *(v13 + i));
        }

        v25 = a1[2];
        v26 = a1[3];
        v27 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 3);
        v41 = -1431655765 * ((v26 - v25) >> 3);
        v28 = a1[4];
        if (v26 >= v28)
        {
          if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_2992CF20C();
          }

          v30 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v25) >> 3);
          v31 = 2 * v30;
          if (2 * v30 <= v27 + 1)
          {
            v31 = v27 + 1;
          }

          if (v30 >= 0x555555555555555)
          {
            v32 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v32 = v31;
          }

          v48 = a1 + 2;
          if (v32)
          {
            sub_2992CF224(v32);
          }

          v44 = 0;
          v45 = 24 * v27;
          v46 = 24 * v27;
          v47 = 0;
          sub_2992D0EE4(24 * v27, v42, v43);
          v29 = v46 + 24;
          v33 = a1[2];
          v34 = a1[3];
          v35 = v45 + v33 - v34;
          sub_2992CF27C(v33, v34, v35);
          v36 = a1[2];
          a1[2] = v35;
          a1[3] = v29;
          v37 = a1[4];
          a1[4] = v47;
          v46 = v36;
          v47 = v37;
          v44 = v36;
          v45 = v36;
          sub_2992CF314(&v44);
        }

        else
        {
          sub_2992D0EE4(v26, v42, v43);
          v29 = v26 + 24;
          a1[3] = v29;
        }

        a1[3] = v29;
        v38 = *(v9 + 23);
        if (v38 < 0)
        {
          v39 = v9;
          v9 = *v9;
          v38 = v39[1];
        }

        (*(**a1 + 80))(*a1, v9, v38, &v41);
        sub_29921B8CC(&v42, v43[0]);
        v7 = v11 >> 32;
        v5 = a1[5];
        v6 = a1[6];
        v8 = v10;
      }

      while (v11 >> 32 < ((v6 - v5) >> 5));
    }

    v44 = v5;
    v45 = v6;
    a1[5] = 0;
    a1[6] = 0;
    v46 = a1[7];
    a1[7] = 0;
    v42 = &v44;
    sub_29921EB1C(&v42);
  }

  return 1;
}

uint64_t sub_2992CDF24(void *a1, const void *a2, const void *a3, int a4)
{
  v55[0] = a2;
  v55[1] = a3;
  v54 = a4;
  if (!a3)
  {
    return 0;
  }

  v4 = 2 * a3;
  if ((2 * a3) > 0xFF)
  {
    return 0;
  }

  ++*(a1 + 2);
  if (*(a1 + 72) == 1)
  {
    sub_2992FE120(v55, &v52);
    v8 = a1[6];
    v9 = a1[7];
    if (v8 >= v9)
    {
      v19 = a1[5];
      v20 = (v8 - v19) >> 5;
      v21 = v20 + 1;
      if ((v20 + 1) >> 59)
      {
        sub_2992CF20C();
      }

      v22 = v9 - v19;
      if (v22 >> 4 > v21)
      {
        v21 = v22 >> 4;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFE0)
      {
        v23 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      v60 = a1 + 5;
      if (v23)
      {
        sub_29924EF30((a1 + 5), v23);
      }

      v34 = 32 * v20;
      *v34 = v52;
      *(v34 + 16) = v53;
      *(v34 + 24) = a4;
      v10 = 32 * v20 + 32;
      v35 = a1[5];
      v36 = a1[6] - v35;
      v37 = 32 * v20 - v36;
      memcpy((v34 - v36), v35, v36);
      v38 = a1[5];
      a1[5] = v37;
      a1[6] = v10;
      v39 = a1[7];
      a1[7] = 0;
      v58 = v38;
      v59 = v39;
      v56 = v38;
      v57 = v38;
      sub_29924EF78(&v56);
    }

    else
    {
      *v8 = v52;
      *(v8 + 16) = v53;
      *(v8 + 24) = a4;
      v10 = v8 + 32;
    }

    a1[6] = v10;
    return 1;
  }

  v51 = 0;
  v12 = *a1;
  v13 = (***a1)();
  v15 = a1 + 2;
  v14 = a1[2];
  if (v13)
  {
    v16 = v14 + 24 * v51;
    v17 = *(v16 + 8);
    if (v17)
    {
      v18 = v16 + 8;
      do
      {
        if (*(v17 + 28) >= a4)
        {
          v18 = v17;
        }

        v17 = *(v17 + 8 * (*(v17 + 28) < a4));
      }

      while (v17);
      if (v18 != v16 + 8 && *(v18 + 28) <= a4)
      {
        return 0;
      }
    }

    sub_2992D319C(v16, a4);
    return 1;
  }

  v24 = -1431655765 * ((a1[3] - v14) >> 3);
  v50 = a4;
  v51 = v24;
  sub_2992D311C(&v52, &v50, 1);
  v25 = a1[3];
  v26 = a1[4];
  if (v25 >= v26)
  {
    v30 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v15) >> 3);
    v31 = v30 + 1;
    if (v30 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2992CF20C();
    }

    v32 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *v15) >> 3);
    if (2 * v32 > v31)
    {
      v31 = 2 * v32;
    }

    if (v32 >= 0x555555555555555)
    {
      v33 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v33 = v31;
    }

    v60 = a1 + 2;
    if (v33)
    {
      sub_2992CF224(v33);
    }

    v41 = 24 * v30;
    *v41 = v52;
    v42 = *(&v52 + 1);
    *(24 * v30 + 8) = *(&v52 + 1);
    v43 = 24 * v30 + 8;
    v44 = v53;
    *(v41 + 16) = v53;
    if (v44)
    {
      *(v42 + 16) = v43;
      *&v52 = &v52 + 8;
      *(&v52 + 1) = 0;
      v53 = 0;
    }

    else
    {
      *v41 = v43;
    }

    v40 = (v41 + 24);
    v45 = a1[2];
    v46 = a1[3];
    v47 = v41 + v45 - v46;
    sub_2992CF27C(v45, v46, v47);
    v48 = a1[2];
    a1[2] = v47;
    a1[3] = v40;
    v49 = a1[4];
    a1[4] = 0;
    v58 = v48;
    v59 = v49;
    v56 = v48;
    v57 = v48;
    sub_2992CF314(&v56);
  }

  else
  {
    *v25 = v52;
    v27 = *(&v52 + 1);
    v25[1] = *(&v52 + 1);
    v28 = v25 + 1;
    v29 = v53;
    v25[2] = v53;
    if (v29)
    {
      *(v27 + 16) = v28;
      *&v52 = &v52 + 8;
      *(&v52 + 1) = 0;
      v53 = 0;
    }

    else
    {
      *v25 = v28;
    }

    v40 = v25 + 3;
  }

  a1[3] = v40;
  sub_29921B8CC(&v52, *(&v52 + 1));
  return (*(**a1 + 80))(*a1, a2, v4, &v51);
}

uint64_t sub_2992CE304(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v13 = 0;
  v7 = 2 * a3;
  if (!(***a1)(*a1, a2, 2 * a3, &v13))
  {
    return 1;
  }

  v8 = v13;
  v9 = a1[2] + 24 * v13;
  v10 = *(v9 + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = v9 + 8;
  do
  {
    if (*(v10 + 28) >= a4)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * (*(v10 + 28) < a4));
  }

  while (v10);
  if (v11 == v9 + 8 || *(v11 + 28) > a4)
  {
    return 0;
  }

  --*(a1 + 2);
  sub_299280C44(v9, v11);
  operator delete(v11);
  if (!*(a1[2] + 24 * v8 + 16))
  {
    return (*(**a1 + 88))(*a1, a2, v7);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2992CE43C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  if ((***a1)(*a1, a2, 2 * a3, &v5))
  {
    return a1[2] + 24 * v5;
  }

  else
  {
    return 0;
  }
}

void sub_2992CE4B4(uint64_t a1, unsigned __int16 *a2, unint64_t a3, unsigned int a4, uint64_t a5)
{
  if (*(a1 + 8))
  {
    if (a4 == 512)
    {
      sub_2992CE4D8(a1, a5);
    }

    else if (a3)
    {
      sub_2992CE5E0(a1, a2, a3, a4, a5);
    }
  }
}

uint64_t sub_2992CE4D8(uint64_t result, uint64_t a2)
{
  v13 = 0;
  v2 = *(result + 16);
  v3 = *(result + 24) - v2;
  if (v3)
  {
    v5 = result;
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
LABEL_3:
    for (i = v2 + 24 * v6 + 8; ; i += 24)
    {
      v9 = *(i - 8);
      if (i != v9)
      {
        break;
      }

      if (v7 <= ++v6)
      {
        return result;
      }
    }

    while (1)
    {
      result = (*(a2 + 16))(a2, *(v9 + 7), &v13);
      if (v13)
      {
        break;
      }

      v10 = v9[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v9[2];
          v12 = *v11 == v9;
          v9 = v11;
        }

        while (!v12);
      }

      v9 = v11;
      if (i == v11)
      {
        ++v6;
        v2 = *(v5 + 16);
        v7 = 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 24) - v2) >> 3);
        if (v7 > v6)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

void sub_2992CE5E0(uint64_t a1, unsigned __int16 *a2, unint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = a4;
  v29 = *MEMORY[0x29EDCA608];
  v20 = a5;
  if ((a4 & 0x78) != 0 || (a4 & 0x82) == 0x82)
  {
    sub_2993C6C80(a2, a3, (a4 >> 2) & 0x3E, 0, 0, &v25);
    v16 = *a1;
    if ((v5 & 4) != 0)
    {
      v21 = &unk_2A1F6DC58;
      v22 = a1;
      v23 = &v20;
      v24 = &v21;
      ((*v16)[15])(v16, &v25, &v21);
    }

    else
    {
      v21 = &unk_2A1F6DC58;
      v22 = a1;
      v23 = &v20;
      v24 = &v21;
      if ((v5 & 2) != 0)
      {
        ((*v16)[17])(v16, &v25, &v21, 0xFFFFFFFFLL);
      }

      else
      {
        ((*v16)[13])(v16, &v25, &v21);
      }
    }

    sub_29922CF08(&v21);
    v25 = &unk_2A1F65C80;
    v21 = &v26;
    sub_29922CB20(&v21);
    goto LABEL_24;
  }

  v7 = 2 * a3;
  if ((a4 & 4) != 0)
  {
    v17 = *a1;
    v25 = &unk_2A1F6DCD8;
    v26 = a1;
    v27 = &v20;
    v28 = &v25;
    ((*v17)[1])(v17, a2, v7, &v25);
LABEL_21:
    sub_29922D43C(&v25);
    goto LABEL_24;
  }

  if ((a4 & 2) != 0)
  {
    v18 = *a1;
    v25 = &unk_2A1F6DCD8;
    v26 = a1;
    v27 = &v20;
    v28 = &v25;
    ((*v18)[2])(v18, a2, v7, &v25, 0xFFFFFFFFLL);
    goto LABEL_21;
  }

  LODWORD(v25) = 0;
  v8 = *a1;
  if ((***a1)())
  {
    LOBYTE(v21) = 0;
    v9 = (*(a1 + 16) + 24 * v25);
    v12 = *v9;
    v10 = v9 + 1;
    v11 = v12;
    if (v12 != v10)
    {
      do
      {
        (*(v20 + 16))(v20, *(v11 + 7), &v21);
        if (v21)
        {
          break;
        }

        v13 = v11[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v11[2];
            v15 = *v14 == v11;
            v11 = v14;
          }

          while (!v15);
        }

        v11 = v14;
      }

      while (v14 != v10);
    }
  }

LABEL_24:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_2992CE934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  sub_29922CF08(&a10);
  a14 = &unk_2A1F65C80;
  a10 = &a15;
  sub_29922CB20(&a10);
  _Unwind_Resume(a1);
}

void ***sub_2992CE99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 24))(&v5);
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = v5;
  v5 = 0;
  sub_2992B0C70((a2 + 8), v3);
  return sub_2992A5BA0(&v5);
}

void ***sub_2992CEA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 8);
  (*(**a1 + 40))(&v7);
  *a3 = 0;
  *(a3 + 8) = 0;
  v5 = v7;
  v7 = 0;
  sub_2992B0C70((a3 + 8), v5);
  return sub_2992A5BA0(&v7);
}

uint64_t sub_2992CEA88(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (*(result + 8))
  {
    v11 = 0;
    v3 = (*(result + 16) + 24 * a2);
    v6 = *v3;
    v4 = v3 + 1;
    v5 = v6;
    if (v6 != v4)
    {
      do
      {
        result = (*(a3 + 16))(a3, *(v5 + 7), &v11);
        if (v11)
        {
          break;
        }

        v8 = v5[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v5[2];
            v10 = *v9 == v5;
            v5 = v9;
          }

          while (!v10);
        }

        v5 = v9;
      }

      while (v9 != v4);
    }
  }

  return result;
}