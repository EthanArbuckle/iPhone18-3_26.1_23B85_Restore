void MecabraSetDynamicLanguageModelAppContext(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = sub_2993652F8(2u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412546;
    v7 = a2;
    v8 = 2048;
    v9 = a1;
    _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[MecabraSetDynamicLanguageModelAppContext] %@ (mecabra:%p)", &v6, 0x16u);
    if (!a1)
    {
      goto LABEL_5;
    }
  }

  else if (!a1)
  {
    goto LABEL_5;
  }

  if (*a1)
  {
    (*(**a1 + 136))(*a1, a2);
  }

LABEL_5:
  v5 = *MEMORY[0x29EDCA608];
}

uint64_t MecabraEnumerateSyllabifiedStringLengths(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return (*(*result + 392))(result, a3, a4, a5);
    }
  }

  return result;
}

void MecabraGestureAddKeyAndLoglikelihoodPair(uint64_t a1, __int16 a2, float a3)
{
  if (a1)
  {
    sub_2992FE264(*(a1 + 24), a2, a3);
  }
}

void MecabraSetKeyboardLayout(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = sub_2993652F8(2u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = a1;
    _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[MecabraSetKeyboardLayout] mecabra:%p", &v6, 0xCu);
    if (!a1)
    {
      goto LABEL_5;
    }
  }

  else if (!a1)
  {
    goto LABEL_5;
  }

  if (*a1)
  {
    (*(**a1 + 264))(*a1, a2);
  }

LABEL_5:
  v5 = *MEMORY[0x29EDCA608];
}

uint64_t MecabraCreateSegments(uint64_t *a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *a1) != 0)
  {
    return (*(*v2 + 352))();
  }

  else
  {
    return 0;
  }
}

uint64_t MecabraConvertedKanaCreateFromRomajiString(const __CFString *a1)
{
  if (a1)
  {
    v2 = 0u;
    *capacity = 0u;
    v4 = 1065353216;
    sub_299216C84(a1);
  }

  return 0;
}

void sub_29928E2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29921ED28(va);
  _Unwind_Resume(a1);
}

uint64_t MecabraConvertedKanaGetKana(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t MecabraConvertedKanaGetAlignment(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

CFTypeRef *MecabraConvertedKanaRelease(CFTypeRef *result)
{
  if (result)
  {
    v1 = result;
    CFRelease(*result);
    CFRelease(v1[1]);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t MecabraReverseConvertedRomajiCreateFromKanaString(const __CFString *a1)
{
  if (a1)
  {
    v2 = 0;
    sub_299276A84(a1);
  }

  return 0;
}

void sub_29928E43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    MEMORY[0x29C29BF70](v15, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

void MecabraJapaneseLMCreate(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  else
  {
    v2 = sub_29936D41C("ja");
    v3 = CFURLCreateCopyAppendingPathComponent(0, v2, off_2A145E380, 1u);
    if (v2)
    {
      CFRelease(v2);
    }

    CFURLCreateCopyAppendingPathComponent(0, v3, off_2A145E3A0, 0);
  }

  operator new();
}

void sub_29928E628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  MEMORY[0x29C29BFB0](v3, 0x10E1C40EA00C6ECLL);
  sub_29920FE30(va, 0);
  sub_29920FE30(va1, 0);
  _Unwind_Resume(a1);
}

uint64_t *MecabraJapaneseLMRelease(uint64_t *result)
{
  if (result)
  {
    v1 = *result;
    if (v1)
    {
      (*(*v1 + 8))(v1);
    }

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t MecabraJapaneseLMIsValid(uint64_t result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return (*(*result + 48))(result);
    }
  }

  return result;
}

CFStringRef MecabraInputStringCreateForSentencePiece(const __CFString *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  if (a1)
  {
    if (a1->isa && sub_2992878A0(a2, a2, a3) && (v7 = sub_2992896C0(a2, v5, v6)) != 0 && (v8 = **v7, (v9 = __dynamic_cast(v7, &unk_2A1F72C30, &unk_2A1F6D008, 0)) != 0))
    {
      v10 = v9;
      (*(*v9 + 544))(v9);
      (*(*v10 + 304))(v10);
      (*(**(v3->isa + 1) + 32))(__p);
      if (v14 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      v3 = CFStringCreateWithCString(0, v11, 0x8000100u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_29928E950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *MecabraSentencePieceIDsCreateForCandidate(__CFArray *a1, void *a2, uint64_t a3)
{
  Mutable = a1;
  if (a1)
  {
    if (*a1 && sub_2992878A0(a2, a2, a3) && (v7 = sub_2992896C0(a2, v5, v6)) != 0 && (v8 = **v7, __dynamic_cast(v7, &unk_2A1F72C30, &unk_2A1F6D008, 0)))
    {
      (*(**Mutable + 16))(&v14);
      Mutable = CFArrayCreateMutable(0, v15 - v14, MEMORY[0x29EDB9000]);
      v9 = v14;
      v10 = v15;
      if (v14 != v15)
      {
        do
        {
          valuePtr = *v9;
          v11 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          CFArrayAppendValue(Mutable, v11);
          if (v11)
          {
            CFRelease(v11);
          }

          ++v9;
        }

        while (v9 != v10);
        v9 = v14;
      }

      if (v9)
      {
        v15 = v9;
        operator delete(v9);
      }
    }

    else
    {
      return 0;
    }
  }

  return Mutable;
}

void sub_29928EAC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MecabraGetRNNLMProbabilities(char ***a1, void **a2, int64_t a3, void *a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a3;
  v5 = 0;
  if (!a3)
  {
    return v5;
  }

  v6 = a2;
  if (!a2)
  {
    return v5;
  }

  v8 = *a1;
  if (!v8)
  {
    return v5;
  }

  v10 = (*(*v8 + 7))(v8);
  v11 = *a1;
  if (v10 != 1)
  {
    if ((*(*v11 + 7))(v11) == 2)
    {
      v11 = *a1;
      if (*a1)
      {
        v14 = **v11;
        v13 = &unk_2A1F6F540;
        goto LABEL_11;
      }

LABEL_13:
      v15 = 0;
      goto LABEL_14;
    }

    return 0;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = **v11;
  v13 = &unk_2A1F73EC8;
LABEL_11:
  v15 = __dynamic_cast(v11, &unk_2A1F6A370, v13, 0);
LABEL_14:
  sub_299382D2C(v37, 0);
  (*(*v15 + 32))(v15, v37);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  sub_29928EF5C(&v34, v4);
  if (v4 < 1)
  {
LABEL_30:
    (*(*v15 + 64))(&v38, v15, &v34, 0);
    v30 = v38;
    if (a4 && v39 != v38)
    {
      memmove(a4, v38, v39 - v38);
    }

    if (v30)
    {
      v39 = v30;
      operator delete(v30);
    }

    v5 = 1;
  }

  else
  {
    while (1)
    {
      v18 = sub_2992896C0(*v6, v16, v17);
      if (!v18)
      {
        break;
      }

      v19 = **v18;
      v20 = __dynamic_cast(v18, &unk_2A1F72C30, &unk_2A1F6D008, 0);
      if (!v20)
      {
        break;
      }

      (*(*v15 + 16))(__p, v15, v20);
      v21 = v35;
      if (v35 >= v36)
      {
        v22 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 3);
        v23 = v22 + 1;
        if (v22 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_299212A8C();
        }

        if (0x5555555555555556 * ((v36 - v34) >> 3) > v23)
        {
          v23 = 0x5555555555555556 * ((v36 - v34) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 3) >= 0x555555555555555)
        {
          v24 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v24 = v23;
        }

        v42 = &v34;
        if (v24)
        {
          sub_29920DDE0(&v34, v24);
        }

        v25 = (8 * ((v35 - v34) >> 3));
        *v25 = 0;
        v25[1] = 0;
        v25[2] = 0;
        *v25 = *__p;
        v25[2] = v33;
        __p[0] = 0;
        __p[1] = 0;
        v33 = 0;
        v26 = 24 * v22 + 24;
        v27 = (24 * v22 - (v35 - v34));
        memcpy(v25 - (v35 - v34), v34, v35 - v34);
        v28 = v34;
        v29 = v36;
        v34 = v27;
        v35 = v26;
        v36 = 0;
        v40 = v28;
        v41 = v29;
        v38 = v28;
        v39 = v28;
        sub_29920DE38(&v38);
        v35 = v26;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      else
      {
        *v35 = 0;
        *(v21 + 1) = 0;
        *(v21 + 2) = 0;
        *v21 = *__p;
        *(v21 + 2) = v33;
        v35 = v21 + 24;
      }

      ++v6;
      if (!--v4)
      {
        goto LABEL_30;
      }
    }

    v5 = 0;
  }

  v38 = &v34;
  sub_29920E060(&v38);
  sub_299273884(v37);
  return v5;
}

void sub_29928EF08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  __p = &a14;
  sub_29920E060(&__p);
  sub_299273884(&a17);
  _Unwind_Resume(a1);
}

void *sub_29928EF5C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_29920DDE0(result, a2);
    }

    sub_299212A8C();
  }

  return result;
}

uint64_t MecabraJapaneseLMRerankerCreate(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = sub_29936D41C("ja");
  v5 = CFURLCreateCopyAppendingPathComponent(0, v4, off_2A145E3A8, 0);
  v6 = sub_299237120();
  if (sub_299313404(v6, v5))
  {
    sub_299323508(a3, 0, v6);
    operator new();
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

void sub_29928F23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  MEMORY[0x29C29BFB0](v3, 0xF1C40D1B72B11);
  sub_29920FE30(va, 0);
  sub_29920FE30(va1, 0);
  _Unwind_Resume(a1);
}

void *MecabraJapaneseLMRerankerRelease(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    if (*v1)
    {
      (*(**v1 + 8))(*v1);
    }

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t MecabraJapaneseLMRerankCandidates(uint64_t a1, const char *a2, uint64_t a3, uint64_t *a4)
{
  v27[4] = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v4 = a4;
    v5 = 0;
    if (a4)
    {
      v6 = a2;
      if (a2)
      {
        if (*(a1 + 24))
        {
          v8 = a3;
          v21 = &unk_2A1F65118;
          memset(v22, 0, sizeof(v22));
          v23 = 1065353216;
          v25 = 0;
          v26 = 0;
          v24 = 0;
          if (a3 < 1)
          {
LABEL_11:
            sub_299255778(0);
            sub_299382D2C(v20, &qword_2A1461DC0);
            (*(**(a1 + 24) + 16))(*(a1 + 24), &v21, v20);
            v13 = v24;
            for (i = v25; v13 != i; ++v13)
            {
              v15 = *v13;
              *v13 = 0;
              v16 = [MecabraCandidate alloc];
              *v4++ = objc_msgSend_initWithCandidate_(v16, v17, v15);
            }

            sub_299273884(v20);
            v5 = 1;
          }

          else
          {
            while (1)
            {
              v9 = sub_2992896C0(*v6, a2, a3);
              if (!v9)
              {
                break;
              }

              v10 = **v9;
              v11 = __dynamic_cast(v9, &unk_2A1F72C30, &unk_2A1F6D008, 0);
              if (!v11)
              {
                break;
              }

              v20[0] = (**v11)(v11);
              v27[0] = &unk_2A1F65308;
              v27[3] = v27;
              sub_2992AB710(&v21, v20, 1, 0, v27);
              sub_29921F128(v27);
              v12 = v20[0];
              v20[0] = 0;
              if (v12)
              {
                (*(*v12 + 2))(v12);
              }

              ++v6;
              if (!--v8)
              {
                goto LABEL_11;
              }
            }

            v5 = 0;
          }

          v21 = &unk_2A1F65118;
          v20[0] = &v24;
          sub_29921EC68(v20);
          sub_29921ED28(v22);
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v18 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_29928F628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_299273884(&a9);
  sub_29928F7A4(&a25);
  _Unwind_Resume(a1);
}

CFDictionaryRef MecabraJapaneseCopyParameters()
{
  v0 = sub_299237120();

  return sub_2993139D0(v0);
}

uint64_t MecabraGetConversionEngine(uint64_t *a1)
{
  if (a1 && (v1 = *a1) != 0)
  {
    return (*(*v1 + 424))();
  }

  else
  {
    return 0;
  }
}

const void **sub_29928F72C(const void **a1)
{
  sub_299219AB4(a1 + 8, 0);
  sub_29920FE30(a1 + 7, 0);
  sub_29920FE30(a1 + 6, 0);
  sub_29920FE30(a1 + 5, 0);
  sub_299229F00(a1 + 4, 0);
  sub_29920FE30(a1 + 3, 0);
  sub_29920FE30(a1 + 2, 0);
  return a1;
}

uint64_t sub_29928F7A4(uint64_t a1)
{
  *a1 = &unk_2A1F65118;
  v2 = a1 + 8;
  v4 = (a1 + 48);
  sub_29921EC68(&v4);
  sub_29921ED28(v2);
  return a1;
}

const void *sub_29928F808@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29920B5BC(a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t *sub_29928F8AC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_29920FE30((v2 + 72), 0);
    sub_29920FE30((v2 + 64), 0);
    sub_299219AB4((v2 + 56), 0);
    sub_299219AB4((v2 + 48), 0);
    v3 = (v2 + 24);
    sub_299290440(&v3);
    v3 = v2;
    sub_299290440(&v3);
    return MEMORY[0x29C29BFB0](v2, 0x1060C407F8A6023);
  }

  return result;
}

void sub_29928F944(uint64_t a1)
{
  sub_2992904C8(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29928F98C(uint64_t a1, const __CFString *a2, unint64_t a3, uint64_t a4, const __CFArray *a5, const __CFArray *a6)
{
  v11 = *(a1 + 64);
  if (v11)
  {
    CFArrayRemoveAllValues(v11);
  }

  *(a1 + 56) = 0;
  v12 = *(a1 + 72);
  if (v12)
  {
    CFSetRemoveAllValues(v12);
  }

  v13 = *(a1 + 16);

  return sub_29931511C(v13, a2, a3, 0, a5, a6);
}

uint64_t sub_29928FA10(uint64_t a1, const __CFString *a2, unint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 64);
  if (v8)
  {
    CFArrayRemoveAllValues(v8);
  }

  *(a1 + 56) = 0;
  v9 = *(a1 + 72);
  if (v9)
  {
    CFSetRemoveAllValues(v9);
  }

  if (a4)
  {
    v10 = *(a4 + 72);
    if (v10)
    {
      v11 = *(*(a1 + 16) + 1168);
      if (v11)
      {
        sub_299384100(v11, v10);
      }
    }

    v12 = *(a4 + 80);
    if (v12)
    {
      v13 = *(*(a1 + 16) + 1168);
      if (v13)
      {
        sub_2993841C0(v13, v12);
      }
    }
  }

  v14 = *(a1 + 16);

  return sub_299315CB8(v14, a2, a3, a4);
}

unint64_t sub_29928FAB4(uint64_t a1, CFArrayRef theArray, unint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 64);
  if (v8)
  {
    CFArrayRemoveAllValues(v8);
  }

  *(a1 + 56) = 0;
  v9 = *(a1 + 72);
  if (v9)
  {
    CFSetRemoveAllValues(v9);
  }

  if (a4)
  {
    v10 = *(a4 + 72);
    if (v10)
    {
      v11 = *(*(a1 + 16) + 1168);
      if (v11)
      {
        sub_299384100(v11, v10);
      }
    }

    v12 = *(a4 + 80);
    if (v12)
    {
      v13 = *(*(a1 + 16) + 1168);
      if (v13)
      {
        sub_2993841C0(v13, v12);
      }
    }
  }

  v14 = *(a1 + 16);

  return sub_2992653D4(v14, theArray, a3, a4);
}

void *sub_29928FB60(uint64_t a1)
{
  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    v3 = sub_2993161F4(i);
    v6 = v3;
    if (!v3)
    {
      break;
    }

    v7 = objc_msgSend_rawCandidate(v3, v4, v5);
    if ((*(*v7 + 72))(v7) == 6)
    {
      break;
    }

    if (MecabraCandidateGetSurface(v6, v8, v9))
    {
      v12 = objc_msgSend_rawCandidate(v6, v10, v11);
      if ((*(*v12 + 96))(v12) == 89)
      {
        return v6;
      }

      v15 = *(a1 + 72);
      Surface = MecabraCandidateGetSurface(v6, v13, v14);
      if (!CFSetContainsValue(v15, Surface))
      {
        v19 = *(a1 + 72);
        v20 = MecabraCandidateGetSurface(v6, v17, v18);
        CFSetAddValue(v19, v20);
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_29928FC54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = sub_299225D3C(a2, kMecabraContextOptionPrivateMode) != *MEMORY[0x29EDB8F00];

  return sub_299315744(v2, 0, 0, v3);
}

uint64_t sub_29928FCBC(void *a1, uint64_t a2)
{
  if (CFArrayGetCount(*(a2 + 32)) == 1)
  {
    v4 = sub_299324314(a2, 0);
    v5 = sub_2992EED3C(v4);
    if (v4)
    {
      if (v5)
      {
        v8 = objc_msgSend_rawCandidate(v4, v6, v7);
        if ((*(*v8 + 72))(v8) == 2 || (v11 = objc_msgSend_rawCandidate(v4, v9, v10), (*(*v11 + 72))(v11) == 3))
        {
          if (a1[3])
          {
            objc_msgSend_rawCandidate(v4, v9, v10);
          }

          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    sub_2992EED3C(0);
  }

  v12 = a1[9];
  if (v12)
  {
    CFSetRemoveAllValues(v12);
  }

LABEL_11:
  v13 = a1[2];

  return sub_299316B04(v13, a2);
}

uint64_t sub_29928FDC4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 72);
  if (v6)
  {
    CFSetRemoveAllValues(v6);
  }

  v7 = *(a1 + 16);

  return sub_299315744(v7, a2, a3, 1);
}

uint64_t sub_29928FE40(uint64_t a1, const __CFString *a2)
{
  result = *(*(a1 + 16) + 1168);
  if (result)
  {
    return sub_299384100(result, a2);
  }

  return result;
}

uint64_t sub_29928FEAC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_rawCandidate(a2, a2, a3);
  if (!v5 || (v8 = **v5, (v9 = __dynamic_cast(v5, &unk_2A1F64300, &unk_2A1F72C30, 0)) == 0))
  {
    v12 = objc_msgSend_rawCandidate(a2, v6, v7);
    if (v12)
    {
      v13 = **v12;
    }

    return 0;
  }

  if (!(*(*v9 + 248))(v9, 0, 0))
  {
    return 0;
  }

  v10 = *(**(*(a1 + 16) + 176) + 96);

  return v10();
}

BOOL sub_29928FFE4(uint64_t a1, uint64_t a2, const __CFArray *a3, double a4)
{
  v4 = *(a1 + 16);
  v6 = a4;
  return sub_29933A2F4(*(v4 + 176), a2, a3, 0, &v6);
}

void sub_299290018(uint64_t a1, uint64_t a2, CFStringRef theString, double a4)
{
  v4 = *(a1 + 16);
  v5 = *(v4 + 1048);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v6[2] = sub_29926FC44;
  v6[3] = &unk_29EF10068;
  v6[4] = v4;
  v6[5] = a2;
  *&v6[6] = a4;
  sub_2993274B0(v5, theString, v6);
}

BOOL sub_2992900C8(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = *MEMORY[0x29EDB8ED8];
    values = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    CFDictionarySetValue(values, kMecabraAssetDataFilePathsKey, a2);
    v5 = CFArrayCreate(v4, &values, 1, MEMORY[0x29EDB9000]);
    LOBYTE(v4) = sub_299229C20(*(a1 + 32), 2, v5);
    CFRelease(values);
    CFRelease(v5);
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = sub_2992901AC(a1, 2, 0);
    if (!result)
    {
      return result;
    }
  }

  sub_299271854(*(a1 + 16));
  return 1;
}

BOOL sub_2992901AC(uint64_t a1, int a2, const __CFArray *a3)
{
  v4 = sub_299229C20(*(a1 + 32), a2, a3);
  if (v4)
  {
    sub_299271854(*(a1 + 16));
  }

  return v4;
}

CFMutableArrayRef sub_29929024C(uint64_t a1, const __CFString *a2)
{
  if (*(a1 + 8) == 1)
  {
    return sub_299270CB4(*(a1 + 16), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299290268(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_299277300(*(a1 + 8));
    MecabraContextCreateMutable();
  }

  return 0;
}

uint64_t sub_299290360(uint64_t result, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (*(result + 24))
    {
      v4 = objc_msgSend_rawCandidate(a2, a2, a3);
      if ((*(*v4 + 72))(v4) == 2 || (v7 = objc_msgSend_rawCandidate(a2, v5, v6), result = (*(*v7 + 72))(v7), result == 3))
      {

        return objc_msgSend_rawCandidate(a2, v5, v6);
      }
    }
  }

  return result;
}

void sub_299290440(void ***a1)
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
        sub_299219AB4(--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2992904C8(uint64_t a1)
{
  v3 = (a1 + 64);
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  sub_299229EC8((a1 + 72), 0);
  sub_2992530BC(v3, 0);
  sub_29928F8AC((a1 + 32), 0);
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {
    MEMORY[0x29C29BFB0](v4, 0xC400A2AC0F1);
  }

  sub_299264490((a1 + 16), 0);
  return a1;
}

uint64_t *sub_29929054C(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_299219AB4((v2 + 184), 0);
    sub_299219AB4((v2 + 176), 0);
    sub_299219AB4((v2 + 168), 0);
    sub_299219AB4((v2 + 160), 0);
    sub_299219AB4((v2 + 152), 0);
    sub_299219AB4((v2 + 144), 0);
    sub_299219AB4((v2 + 136), 0);
    sub_299219AB4((v2 + 128), 0);
    sub_29920FE30((v2 + 120), 0);
    sub_299215B18((v2 + 96), 0);
    v3 = *(v2 + 72);
    if (v3)
    {
      *(v2 + 80) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 48);
    if (v4)
    {
      *(v2 + 56) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      do
      {
        v6 = *v5;
        v8 = (v5 + 24);
        sub_299291260(&v8);
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    v7 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v7)
    {
      operator delete(v7);
    }

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_299290690(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_299291300(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void sub_2992906E0(uint64_t a1)
{
  sub_299291800(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299290728(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, const __CFArray *a5)
{
  v10 = *(a1 + 64);
  if (v10)
  {
    CFArrayRemoveAllValues(v10);
  }

  *(a1 + 56) = 0;
  v11 = *(a1 + 72);
  if (v11)
  {
    CFSetRemoveAllValues(v11);
  }

  v12 = *(a1 + 16);

  return sub_29938AB20(v12, a2, a3, a4, a5);
}

uint64_t sub_2992907C0(uint64_t a1, const __CFString *a2, int a3, uint64_t a4)
{
  v8 = *(a1 + 64);
  if (v8)
  {
    CFArrayRemoveAllValues(v8);
  }

  *(a1 + 56) = 0;
  v9 = *(a1 + 72);
  if (v9)
  {
    CFSetRemoveAllValues(v9);
  }

  if (a4)
  {
    v10 = *(a4 + 72);
    if (v10)
    {
      v11 = *(*(a1 + 16) + 112);
      if (v11)
      {
        sub_2993D854C(v11, v10);
      }
    }

    v12 = *(a4 + 80);
    if (v12)
    {
      v13 = *(*(a1 + 16) + 112);
      if (v13)
      {
        sub_2993D8654(v13, v12);
      }
    }
  }

  v14 = *(a1 + 16);

  return sub_29938B990(v14, a2, a3, a4);
}

uint64_t sub_299290864(uint64_t a1, const __CFArray *a2, int a3, uint64_t a4)
{
  v8 = *(a1 + 64);
  if (v8)
  {
    CFArrayRemoveAllValues(v8);
  }

  *(a1 + 56) = 0;
  v9 = *(a1 + 72);
  if (v9)
  {
    CFSetRemoveAllValues(v9);
  }

  if (a4)
  {
    v10 = *(a4 + 72);
    if (v10)
    {
      v11 = *(*(a1 + 16) + 112);
      if (v11)
      {
        sub_2993D854C(v11, v10);
      }
    }

    v12 = *(a4 + 80);
    if (v12)
    {
      v13 = *(*(a1 + 16) + 112);
      if (v13)
      {
        sub_2993D8654(v13, v12);
      }
    }
  }

  v14 = *(a1 + 16);

  return sub_29938BDE4(v14, a2, a3, a4);
}

void *sub_299290910(uint64_t a1)
{
  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    v3 = (*(**(i + 72) + 48))(*(i + 72));
    v6 = v3;
    if (!v3)
    {
      break;
    }

    v7 = objc_msgSend_rawCandidate(v3, v4, v5);
    if ((*(*v7 + 72))(v7) == 6)
    {
      break;
    }

    if (MecabraCandidateGetSurface(v6, v8, v9))
    {
      v12 = objc_msgSend_rawCandidate(v6, v10, v11);
      if ((*(*v12 + 96))(v12) == 89)
      {
        return v6;
      }

      v15 = *(a1 + 72);
      Surface = MecabraCandidateGetSurface(v6, v13, v14);
      if (!CFSetContainsValue(v15, Surface))
      {
        v19 = *(a1 + 72);
        v20 = MecabraCandidateGetSurface(v6, v17, v18);
        CFSetAddValue(v19, v20);
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_299290A24(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 16) + 120);
  v3 = sub_299225D3C(a2, kMecabraContextOptionPrivateMode) != *MEMORY[0x29EDB8F00];
  v4 = *(*v2 + 56);

  return v4(v2, 0, 0, v3);
}

uint64_t sub_299290AB0(void *a1, uint64_t a2)
{
  if (CFArrayGetCount(*(a2 + 32)) == 1)
  {
    v4 = sub_299324314(a2, 0);
    v5 = sub_2992EED3C(v4);
    if (v4)
    {
      if (v5)
      {
        v8 = objc_msgSend_rawCandidate(v4, v6, v7);
        if ((*(*v8 + 72))(v8) == 2 || (v11 = objc_msgSend_rawCandidate(v4, v9, v10), (*(*v11 + 72))(v11) == 3))
        {
          if (a1[3])
          {
            objc_msgSend_rawCandidate(v4, v9, v10);
          }

          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    sub_2992EED3C(0);
  }

  v12 = a1[9];
  if (v12)
  {
    CFSetRemoveAllValues(v12);
  }

LABEL_11:
  v13 = *(**(a1[2] + 120) + 48);

  return v13();
}

uint64_t sub_299290BDC(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFSetRemoveAllValues(v2);
  }

  v3 = *(**(*(a1 + 16) + 120) + 56);

  return v3();
}

uint64_t sub_299290C6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_29932CA50(*(v1 + 120), 1);
  v2 = *(**(v1 + 120) + 128);

  return v2();
}

void sub_299290CCC(uint64_t a1, const __CFString *a2)
{
  v2 = *(*(a1 + 16) + 112);
  if (v2)
  {
    sub_2993D854C(v2, a2);
  }
}

uint64_t sub_299290D38(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_rawCandidate(a2, a2, a3);
  if (!v5 || (v8 = **v5, (v9 = __dynamic_cast(v5, &unk_2A1F64300, &unk_2A1F72C30, 0)) == 0))
  {
    v12 = objc_msgSend_rawCandidate(a2, v6, v7);
    if (v12)
    {
      v13 = **v12;
    }

    return 0;
  }

  if (!(*(*v9 + 248))(v9, 0, 0))
  {
    return 0;
  }

  v10 = *(**(*(a1 + 16) + 120) + 96);

  return v10();
}

uint64_t sub_299290E90(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = *MEMORY[0x29EDB8ED8];
    values = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    CFDictionarySetValue(values, kMecabraAssetDataFilePathsKey, a2);
    v5 = CFArrayCreate(v4, &values, 1, MEMORY[0x29EDB9000]);
    LOBYTE(v4) = sub_2992BD7BC(*(a1 + 32), 2, v5);
    CFRelease(values);
    CFRelease(v5);
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = sub_299290F74(a1, 2, 0);
    if (!result)
    {
      return result;
    }
  }

  sub_29938F89C(*(a1 + 16));
  return 1;
}

uint64_t sub_299290F74(uint64_t a1, int a2, const __CFArray *a3)
{
  v4 = sub_2992BD7BC(*(a1 + 32), a2, a3);
  if (v4)
  {
    sub_29938F89C(*(a1 + 16));
  }

  return v4;
}

void *sub_299291010(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    result = *(result[2] + 120);
    if (result)
    {
      return (*(*result + 24))();
    }
  }

  return result;
}

uint64_t sub_299291064(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_299277300(*(a1 + 8));
    MecabraContextCreateMutable();
  }

  return 0;
}

uint64_t sub_29929115C(uint64_t result, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (*(result + 24))
    {
      v4 = objc_msgSend_rawCandidate(a2, a2, a3);
      if ((*(*v4 + 72))(v4) == 2 || (v7 = objc_msgSend_rawCandidate(a2, v5, v6), result = (*(*v7 + 72))(v7), result == 3))
      {

        return objc_msgSend_rawCandidate(a2, v5, v6);
      }
    }
  }

  return result;
}

void sub_299291260(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2992912B4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2992912B4(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_2991A893C(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_299291300(uint64_t a1)
{
  sub_2992644DC((a1 + 208));
  sub_2992644DC((a1 + 200));
  v2 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_299291584((a1 + 152));
  sub_299291584((a1 + 144));
  v7 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v7)
  {
    sub_2992916A4(v7, 0);
    MEMORY[0x29C29BFB0](v7, 0x60C4044C4A2DFLL);
  }

  sub_2992915CC((a1 + 128));
  v8 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  sub_299291614((a1 + 112));
  v9 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  sub_29929165C((a1 + 88));
  sub_29929165C((a1 + 80));
  v11 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return sub_29921EA18(a1);
}

void **sub_299291584(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_299397D54(v2);
    MEMORY[0x29C29BFB0](v3, 0x10F2C4093187FD8);
  }

  return a1;
}

uint64_t *sub_2992915CC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2992916DC(v2);
    MEMORY[0x29C29BFB0](v3, 0x60C4045F868BCLL);
  }

  return a1;
}

const void ***sub_299291614(const void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_299291780(v2);
    MEMORY[0x29C29BFB0](v3, 0x60C4082687C62);
  }

  return a1;
}

uint64_t *sub_29929165C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_29939CEE0(v2);
    MEMORY[0x29C29BFB0](v3, 0x10F2C40570461F6);
  }

  return a1;
}

void sub_2992916A4(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_2992916DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  sub_299291748((a1 + 8), 0);
  sub_299253084(a1, 0);
  return a1;
}

void sub_299291748(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

const void **sub_299291780(const void **a1)
{
  sub_299219AB4(a1 + 2, 0);
  sub_299219AB4(a1 + 1, 0);
  sub_2992917C8(a1, 0);
  return a1;
}

void sub_2992917C8(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_299291800(uint64_t a1)
{
  v3 = (a1 + 64);
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  sub_299229EC8((a1 + 72), 0);
  sub_2992530BC(v3, 0);
  sub_29929054C((a1 + 32), 0);
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {
    MEMORY[0x29C29BFB0](v4, 0xC400A2AC0F1);
  }

  sub_299290690((a1 + 16), 0);
  return a1;
}

uint64_t sub_299291884(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_29929234C(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void sub_2992918D4(uint64_t a1)
{
  sub_2992925E8(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_29929191C(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, const __CFArray *a5)
{
  v10 = *(a1 + 64);
  if (v10)
  {
    CFArrayRemoveAllValues(v10);
  }

  *(a1 + 56) = 0;
  v11 = *(a1 + 72);
  if (v11)
  {
    CFSetRemoveAllValues(v11);
  }

  v12 = *(a1 + 16);

  sub_2992E1208(v12, a2, a3, a4, a5);
}

BOOL sub_2992919B4(uint64_t a1, const __CFString *a2, int a3, uint64_t a4)
{
  v8 = *(a1 + 64);
  if (v8)
  {
    CFArrayRemoveAllValues(v8);
  }

  *(a1 + 56) = 0;
  v9 = *(a1 + 72);
  if (v9)
  {
    CFSetRemoveAllValues(v9);
  }

  if (a4)
  {
    v10 = *(a4 + 72);
    if (v10)
    {
      v11 = *(*(a1 + 16) + 96);
      if (v11)
      {
        sub_2993D854C(v11, v10);
      }
    }

    v12 = *(a4 + 80);
    if (v12)
    {
      v13 = *(*(a1 + 16) + 96);
      if (v13)
      {
        sub_2993D8654(v13, v12);
      }
    }
  }

  v14 = *(a1 + 16);

  return sub_2992E3330(v14, a2, a3, a4);
}

uint64_t sub_299291A58(uint64_t a1, const __CFArray *a2, int a3, uint64_t a4)
{
  v8 = *(a1 + 64);
  if (v8)
  {
    CFArrayRemoveAllValues(v8);
  }

  *(a1 + 56) = 0;
  v9 = *(a1 + 72);
  if (v9)
  {
    CFSetRemoveAllValues(v9);
  }

  if (a4)
  {
    v10 = *(a4 + 72);
    if (v10)
    {
      v11 = *(*(a1 + 16) + 96);
      if (v11)
      {
        sub_2993D854C(v11, v10);
      }
    }

    v12 = *(a4 + 80);
    if (v12)
    {
      v13 = *(*(a1 + 16) + 96);
      if (v13)
      {
        sub_2993D8654(v13, v12);
      }
    }
  }

  v14 = *(a1 + 16);

  return sub_2992E2370(v14, a2, a3, a4);
}

void *sub_299291B04(uint64_t a1)
{
  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    v3 = (*(**(i + 72) + 48))(*(i + 72));
    v6 = v3;
    if (!v3)
    {
      break;
    }

    v7 = objc_msgSend_rawCandidate(v3, v4, v5);
    if ((*(*v7 + 72))(v7) == 6)
    {
      break;
    }

    if (MecabraCandidateGetSurface(v6, v8, v9))
    {
      v12 = objc_msgSend_rawCandidate(v6, v10, v11);
      if ((*(*v12 + 96))(v12) == 89)
      {
        return v6;
      }

      v15 = *(a1 + 72);
      Surface = MecabraCandidateGetSurface(v6, v13, v14);
      if (!CFSetContainsValue(v15, Surface))
      {
        v19 = *(a1 + 72);
        v20 = MecabraCandidateGetSurface(v6, v17, v18);
        CFSetAddValue(v19, v20);
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_299291C50(void *a1, uint64_t a2)
{
  if (CFArrayGetCount(*(a2 + 32)) == 1)
  {
    v4 = sub_299324314(a2, 0);
    v5 = sub_2992EED3C(v4);
    if (v4)
    {
      if (v5)
      {
        v8 = objc_msgSend_rawCandidate(v4, v6, v7);
        if ((*(*v8 + 72))(v8) == 2 || (v11 = objc_msgSend_rawCandidate(v4, v9, v10), (*(*v11 + 72))(v11) == 3))
        {
          if (a1[3])
          {
            objc_msgSend_rawCandidate(v4, v9, v10);
          }

          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    sub_2992EED3C(0);
  }

  v12 = a1[9];
  if (v12)
  {
    CFSetRemoveAllValues(v12);
  }

LABEL_11:
  v13 = *(**(a1[2] + 104) + 48);

  return v13();
}

uint64_t sub_299291D7C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFSetRemoveAllValues(v2);
  }

  v3 = *(**(*(a1 + 16) + 104) + 56);

  return v3();
}

uint64_t sub_299291E0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_29932CA50(*(v1 + 104), 1);
  v2 = *(**(v1 + 104) + 128);

  return v2();
}

void sub_299291E6C(uint64_t a1, const __CFString *a2)
{
  v2 = *(*(a1 + 16) + 96);
  if (v2)
  {
    sub_2993D854C(v2, a2);
  }
}

uint64_t sub_299291EA4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_rawCandidate(a2, a2, a3);
  if (v4 && (v7 = **v4, (v8 = __dynamic_cast(v4, &unk_2A1F64300, &unk_2A1F72C30, 0)) != 0))
  {
    (*(*v8 + 248))(v8, 0, 0);
  }

  else
  {
    v9 = objc_msgSend_rawCandidate(a2, v5, v6);
    if (v9)
    {
      v10 = **v9;
    }
  }

  return 0;
}

uint64_t sub_299291FB0(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = *MEMORY[0x29EDB8ED8];
    values = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    CFDictionarySetValue(values, kMecabraAssetDataFilePathsKey, a2);
    v5 = CFArrayCreate(v4, &values, 1, MEMORY[0x29EDB9000]);
    LOBYTE(v4) = sub_2992BD7BC(*(a1 + 32), 2, v5);
    CFRelease(values);
    CFRelease(v5);
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = sub_299292094(a1, 2, 0);
    if (!result)
    {
      return result;
    }
  }

  sub_2992E36EC(*(a1 + 16));
  return 1;
}

uint64_t sub_299292094(uint64_t a1, int a2, const __CFArray *a3)
{
  v4 = sub_2992BD7BC(*(a1 + 32), a2, a3);
  if (v4)
  {
    sub_2992E36EC(*(a1 + 16));
  }

  return v4;
}

uint64_t sub_299292150(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_299277300(*(a1 + 8));
    MecabraContextCreateMutable();
  }

  return 0;
}

uint64_t sub_299292248(uint64_t result, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (*(result + 24))
    {
      v4 = objc_msgSend_rawCandidate(a2, a2, a3);
      if ((*(*v4 + 72))(v4) == 2 || (v7 = objc_msgSend_rawCandidate(a2, v5, v6), result = (*(*v7 + 72))(v7), result == 3))
      {

        return objc_msgSend_rawCandidate(a2, v5, v6);
      }
    }
  }

  return result;
}

uint64_t sub_29929234C(uint64_t a1)
{
  v2 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_299229F00((a1 + 208), 0);
  sub_2992925AC(a1 + 168);
  v3 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  sub_2992915CC((a1 + 112));
  v8 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  sub_299291614((a1 + 96));
  v9 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  sub_29921EA18(a1 + 8);
  return a1;
}

uint64_t sub_2992925AC(uint64_t a1)
{
  sub_29927DBB0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2992925E8(uint64_t a1)
{
  v3 = (a1 + 64);
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  sub_299229EC8((a1 + 72), 0);
  sub_2992530BC(v3, 0);
  sub_29929054C((a1 + 32), 0);
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {
    MEMORY[0x29C29BFB0](v4, 0xC400A2AC0F1);
  }

  sub_299291884((a1 + 16), 0);
  return a1;
}

uint64_t sub_29929266C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_29934C3CC(result, a2, a3);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2992926B8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2992F3D54(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void sub_299292708(uint64_t a1)
{
  sub_299293644(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_299292750(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  *(a1 + 56) = 0;
  v3 = *(a1 + 72);
  if (v3)
  {
    CFSetRemoveAllValues(v3);
  }

  v4 = *(a1 + 16);

  sub_29934C77C(v4);
}

BOOL sub_2992927E8(uint64_t a1, const __CFString *a2, int a3, uint64_t a4)
{
  v8 = *(a1 + 64);
  if (v8)
  {
    CFArrayRemoveAllValues(v8);
  }

  *(a1 + 56) = 0;
  v9 = *(a1 + 72);
  if (v9)
  {
    CFSetRemoveAllValues(v9);
  }

  if (a4)
  {
    v10 = *(a4 + 72);
    if (v10)
    {
      v11 = *(*(a1 + 16) + 8);
      if (*(v11 + 5) != 1 || (v12 = *(v11 + 40)) == 0)
      {
        v12 = *(v11 + 32);
      }

      sub_299384100(v12, v10);
    }

    v13 = *(a4 + 80);
    if (v13)
    {
      v14 = *(*(a1 + 16) + 8);
      if (*(v14 + 5) != 1 || (v15 = *(v14 + 40)) == 0)
      {
        v15 = *(v14 + 32);
      }

      sub_2993841C0(v15, v13);
    }
  }

  v16 = *(a1 + 16);

  return sub_29934C930(v16, a2, a3, a4);
}

BOOL sub_2992928B4(uint64_t a1, const __CFArray *a2, int a3, uint64_t a4)
{
  v8 = *(a1 + 64);
  if (v8)
  {
    CFArrayRemoveAllValues(v8);
  }

  *(a1 + 56) = 0;
  v9 = *(a1 + 72);
  if (v9)
  {
    CFSetRemoveAllValues(v9);
  }

  if (a4)
  {
    v10 = *(a4 + 72);
    if (v10)
    {
      v11 = *(*(a1 + 16) + 8);
      if (*(v11 + 5) != 1 || (v12 = *(v11 + 40)) == 0)
      {
        v12 = *(v11 + 32);
      }

      sub_299384100(v12, v10);
    }

    v13 = *(a4 + 80);
    if (v13)
    {
      v14 = *(*(a1 + 16) + 8);
      if (*(v14 + 5) != 1 || (v15 = *(v14 + 40)) == 0)
      {
        v15 = *(v14 + 32);
      }

      sub_2993841C0(v15, v13);
    }
  }

  v16 = *(a1 + 16);

  return sub_29934C9C0(v16, a2, a3, a4);
}

void *sub_299292988(uint64_t a1)
{
  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    v3 = sub_29934E86C(i);
    v6 = v3;
    if (!v3)
    {
      break;
    }

    v7 = objc_msgSend_rawCandidate(v3, v4, v5);
    if ((*(*v7 + 72))(v7) == 6)
    {
      break;
    }

    if (MecabraCandidateGetSurface(v6, v8, v9))
    {
      v12 = objc_msgSend_rawCandidate(v6, v10, v11);
      if ((*(*v12 + 96))(v12) == 89)
      {
        return v6;
      }

      v15 = *(a1 + 72);
      Surface = MecabraCandidateGetSurface(v6, v13, v14);
      if (!CFSetContainsValue(v15, Surface))
      {
        v19 = *(a1 + 72);
        v20 = MecabraCandidateGetSurface(v6, v17, v18);
        CFSetAddValue(v19, v20);
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_299292A84(void *a1, uint64_t a2)
{
  if (CFArrayGetCount(*(a2 + 32)) == 1)
  {
    v4 = sub_299324314(a2, 0);
    v5 = sub_2992EED3C(v4);
    if (v4)
    {
      if (v5)
      {
        v8 = objc_msgSend_rawCandidate(v4, v6, v7);
        if ((*(*v8 + 72))(v8) == 2 || (v11 = objc_msgSend_rawCandidate(v4, v9, v10), (*(*v11 + 72))(v11) == 3))
        {
          v12 = a1[3];
          if (v12)
          {
            v13 = objc_msgSend_rawCandidate(v4, v9, v10);
            sub_2992F4AA4(v12, v13);
          }

          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    sub_2992EED3C(0);
  }

  v14 = a1[9];
  if (v14)
  {
    CFSetRemoveAllValues(v14);
  }

LABEL_11:
  v15 = a1[2];

  return sub_29934E9EC(v15, a2);
}

uint64_t sub_299292B98(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 72);
  if (v6)
  {
    CFSetRemoveAllValues(v6);
  }

  v7 = *(a1 + 16);

  return sub_29934E8D0(v7, a2, a3);
}

uint64_t sub_299292BF0(uint64_t a1)
{
  result = *(*(a1 + 16) + 432);
  if (result)
  {
    return sub_29932D3E4(result);
  }

  return result;
}

uint64_t sub_299292C10(uint64_t a1, const __CFString *a2)
{
  v4 = *(*(a1 + 16) + 8);
  if (*(v4 + 5) != 1 || (v5 = *(v4 + 40)) == 0)
  {
    v5 = *(v4 + 32);
  }

  result = sub_299384100(v5, a2);
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = *(v7 + 16);
    if (*(v8 + 5) != 1 || (v9 = *(v8 + 40)) == 0)
    {
      v9 = *(v8 + 32);
    }

    return sub_299384100(v9, a2);
  }

  return result;
}

void sub_299292CA0(uint64_t a1, const void *a2)
{
  sub_2993664FC(*(*(a1 + 16) + 296), a2, 0);
  v4 = *(a1 + 24);
  if (v4 && sub_2992F4224(v4))
  {

    sub_299347628((v4 + 41), a2);
  }
}

void sub_299292D0C(uint64_t a1, const void *a2)
{
  sub_2993664FC(*(*(a1 + 16) + 296), a2, 1);
  v4 = *(a1 + 24);
  if (v4 && sub_2992F4224(v4))
  {

    sub_299347628((v4 + 29), a2);
  }
}

uint64_t sub_299292D78(uint64_t a1)
{
  result = *(*(a1 + 16) + 432);
  if (result)
  {
    return sub_29932CA50(result, 1);
  }

  return result;
}

uint64_t sub_299292D90(uint64_t result, char a2)
{
  v2 = *(*(result + 16) + 432);
  if (v2)
  {
    *(v2 + 121) = a2;
  }

  return result;
}

void sub_299292DA4(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 + 296);
  if (*(v5 + 345) != a2)
  {
    *(v5 + 345) = a2;
  }

  sub_2993B91E0(v4, a2);
  v6 = *(a1 + 24);
  if (v6)
  {
    sub_2993B91E0(v6 + 8, a2);
    v7 = *(v6 + 216);
    if (v7)
    {
      *(v7 + 56) = a2;
    }
  }
}

uint64_t sub_299292E08(uint64_t a1)
{
  result = *(*(a1 + 16) + 432);
  if (result)
  {
    return (*(*result + 104))();
  }

  return result;
}

uint64_t sub_299292E3C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_rawCandidate(a2, a2, a3);
  if (!v5 || (v8 = **v5, (v9 = __dynamic_cast(v5, &unk_2A1F64300, &unk_2A1F72C30, 0)) == 0))
  {
    v13 = objc_msgSend_rawCandidate(a2, v6, v7);
    if (v13)
    {
      v14 = **v13;
    }

    return 0;
  }

  if (!(*(*v9 + 248))(v9, 0, 0))
  {
    return 0;
  }

  v10 = *(*(a1 + 16) + 432);
  if (!v10)
  {
    return 0;
  }

  v11 = *(*v10 + 96);

  return v11();
}

uint64_t sub_299292F74(uint64_t a1)
{
  v1 = *(*(a1 + 16) + 8);
  if (*(v1 + 5) != 1 || (v2 = *(v1 + 40)) == 0)
  {
    v2 = *(v1 + 32);
  }

  return MEMORY[0x2A1C67E48](*(v2 + 8));
}

uint64_t sub_299292FB4(uint64_t *a1, const void *a2)
{
  if (a2)
  {
    v4 = *MEMORY[0x29EDB8ED8];
    values = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    CFDictionarySetValue(values, kMecabraAssetDataFilePathsKey, a2);
    v5 = CFArrayCreate(v4, &values, 1, MEMORY[0x29EDB9000]);
    LOBYTE(v4) = sub_2992BD7BC(a1[4], 2, v5);
    CFRelease(values);
    CFRelease(v5);
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = sub_2992930A4(a1, 2, 0);
    if (!result)
    {
      return result;
    }
  }

  sub_29934F468(a1[2]);
  v7 = a1[3];
  if (v7)
  {
    sub_2992F3E1C(v7);
  }

  return 1;
}

uint64_t sub_2992930A4(uint64_t *a1, int a2, const __CFArray *a3)
{
  v4 = sub_2992BD7BC(a1[4], a2, a3);
  if (v4)
  {
    sub_29934F468(a1[2]);
    v5 = a1[3];
    if (v5)
    {
      sub_2992F3E1C(v5);
    }
  }

  return v4;
}

void sub_2992930EC(uint64_t a1, const __CFArray *a2)
{
  v3 = *(a1 + 16);
  sub_2993203A0(*(*(v3 + 400) + 1320), a2);

  sub_29927BAFC(v3 + 304, a2);
}

uint64_t sub_299293134(uint64_t result, char a2)
{
  v2 = *(result + 24);
  *(*(*(result + 16) + 296) + 264) = a2;
  if (v2)
  {
    *(v2 + 320) = a2;
    *(v2 + 416) = a2;
  }

  return result;
}

void sub_299293178(uint64_t a1)
{
  sub_29934F6F4(*(a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {

    sub_2992F3FF0(v2);
  }
}

void sub_2992931D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29934FE90(*(a1 + 16), a2, a3);
  v4 = *(a1 + 24);
  if (v4)
  {

    sub_2992F3F64(v4, 1);
  }
}

uint64_t sub_299293238(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_299277300(*(a1 + 8));
    MecabraContextCreateMutable();
  }

  return 0;
}

BOOL sub_29929339C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    if (a2)
    {
      v9 = *(a2 + 72);
      if (v9)
      {
        v10 = *(v6 + 16);
        if (*(v10 + 5) != 1 || (v11 = *(v10 + 40)) == 0)
        {
          v11 = *(v10 + 32);
        }

        sub_299384100(v11, v9);
        v6 = *(a1 + 24);
      }

      v12 = *(a2 + 80);
      if (v12)
      {
        v13 = *(v6 + 16);
        if (*(v13 + 5) != 1 || (v14 = *(v13 + 40)) == 0)
        {
          v14 = *(v13 + 32);
        }

        sub_2993841C0(v14, v12);
        v6 = *(a1 + 24);
      }
    }

    v15 = 1 << *(a1 + 8);

    return sub_2992F4274(v6, a2, a3, a4);
  }

  else
  {
    v17 = *(a1 + 16);

    return sub_29934C930(v17, &stru_2A1F7E6E8, 0, a2);
  }
}

void sub_2992934D4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v5 = objc_msgSend_rawCandidate(a2, a2, a3);
      if ((*(*v5 + 72))(v5) == 2 || (v8 = objc_msgSend_rawCandidate(a2, v6, v7), (*(*v8 + 72))(v8) == 3))
      {
        v9 = *(a1 + 24);
        v10 = objc_msgSend_rawCandidate(a2, v6, v7);

        sub_2992F4AA4(v9, v10);
      }
    }
  }
}

void *sub_29929359C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    if (sub_2992F4224(*(a1 + 24)))
    {
      v4 = *(v1 + 200);

      return sub_2993EEEB8(v4, v2, v3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *(a1 + 16);

    return sub_29934E86C(v6);
  }
}

uint64_t sub_299293644(uint64_t a1)
{
  v3 = (a1 + 64);
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  sub_299229EC8((a1 + 72), 0);
  sub_2992530BC(v3, 0);
  sub_29929054C((a1 + 32), 0);
  sub_2992926B8((a1 + 24), 0);
  sub_29929266C((a1 + 16), 0, v4);
  return a1;
}

void sub_2992936BC(uint64_t a1)
{
  sub_299294850(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299293704(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  *(a1 + 56) = 0;
  v3 = *(a1 + 72);
  if (v3)
  {
    CFSetRemoveAllValues(v3);
  }

  v4 = *(**(a1 + 16) + 16);

  return v4();
}

uint64_t sub_2992937BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    CFArrayRemoveAllValues(v6);
  }

  *(a1 + 56) = 0;
  v7 = *(a1 + 72);
  if (v7)
  {
    CFSetRemoveAllValues(v7);
  }

  if (a4)
  {
    if (*(a4 + 72))
    {
      (*(**(a1 + 16) + 112))(*(a1 + 16));
    }

    if (*(a4 + 80))
    {
      (*(**(a1 + 16) + 120))(*(a1 + 16));
    }
  }

  v8 = *(**(a1 + 16) + 24);

  return v8();
}

uint64_t sub_2992938B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    CFArrayRemoveAllValues(v6);
  }

  *(a1 + 56) = 0;
  v7 = *(a1 + 72);
  if (v7)
  {
    CFSetRemoveAllValues(v7);
  }

  if (a4)
  {
    if (*(a4 + 72))
    {
      (*(**(a1 + 16) + 112))(*(a1 + 16));
    }

    if (*(a4 + 80))
    {
      (*(**(a1 + 16) + 120))(*(a1 + 16));
    }
  }

  v8 = *(**(a1 + 16) + 32);

  return v8();
}

void *sub_2992939CC(uint64_t a1)
{
  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    v3 = (*(*i + 48))(i);
    v6 = v3;
    if (!v3)
    {
      break;
    }

    v7 = objc_msgSend_rawCandidate(v3, v4, v5);
    if ((*(*v7 + 72))(v7) == 6)
    {
      break;
    }

    if (MecabraCandidateGetSurface(v6, v8, v9))
    {
      v12 = objc_msgSend_rawCandidate(v6, v10, v11);
      if ((*(*v12 + 96))(v12) == 89)
      {
        return v6;
      }

      v15 = *(a1 + 72);
      Surface = MecabraCandidateGetSurface(v6, v13, v14);
      if (!CFSetContainsValue(v15, Surface))
      {
        v19 = *(a1 + 72);
        v20 = MecabraCandidateGetSurface(v6, v17, v18);
        CFSetAddValue(v19, v20);
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_299293B04(uint64_t a1, uint64_t a2)
{
  if (CFArrayGetCount(*(a2 + 32)) == 1)
  {
    v4 = sub_299324314(a2, 0);
    v5 = sub_2992EED3C(v4);
    if (v4)
    {
      if (v5)
      {
        v8 = objc_msgSend_rawCandidate(v4, v6, v7);
        if ((*(*v8 + 72))(v8) == 2 || (v11 = objc_msgSend_rawCandidate(v4, v9, v10), (*(*v11 + 72))(v11) == 3))
        {
          v12 = *(a1 + 24);
          if (v12)
          {
            v13 = objc_msgSend_rawCandidate(v4, v9, v10);
            sub_2992F4AA4(v12, v13);
          }

          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    sub_2992EED3C(0);
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    CFSetRemoveAllValues(v14);
  }

LABEL_11:
  v15 = *(**(a1 + 16) + 72);

  return v15();
}

uint64_t sub_299293C58(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFSetRemoveAllValues(v2);
  }

  v3 = *(**(a1 + 16) + 56);

  return v3();
}

uint64_t sub_299293D48(uint64_t a1, const __CFString *a2)
{
  result = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(v5 + 16);
    if (*(v6 + 5) != 1 || (v7 = *(v6 + 40)) == 0)
    {
      v7 = *(v6 + 32);
    }

    return sub_299384100(v7, a2);
  }

  return result;
}

void sub_299293DD8(uint64_t a1, const __CFArray *a2)
{
  (*(**(a1 + 16) + 128))(*(a1 + 16));
  v4 = *(a1 + 24);
  if (v4 && sub_2992F4224(v4))
  {

    sub_299347628((v4 + 41), a2);
  }
}

void sub_299293E5C(uint64_t a1, const __CFArray *a2)
{
  (*(**(a1 + 16) + 136))(*(a1 + 16));
  v4 = *(a1 + 24);
  if (v4 && sub_2992F4224(v4))
  {

    sub_299347628((v4 + 29), a2);
  }
}

void sub_299293F30(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = a2;
    sub_2993B91E0(v2 + 8, a2);
    v4 = *(v2 + 216);
    if (v4)
    {
      *(v4 + 56) = v3;
    }
  }
}

uint64_t sub_299293F94(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_rawCandidate(a2, a2, a3);
  if (!v5 || (v8 = **v5, (v9 = __dynamic_cast(v5, &unk_2A1F64300, &unk_2A1F72C30, 0)) == 0))
  {
    v12 = objc_msgSend_rawCandidate(a2, v6, v7);
    if (v12)
    {
      v13 = **v12;
    }

    return 0;
  }

  if (!(*(*v9 + 248))(v9, 0, 0))
  {
    return 0;
  }

  v10 = *(**(a1 + 16) + 168);

  return v10();
}

uint64_t sub_2992941A4(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = *MEMORY[0x29EDB8ED8];
    values = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    CFDictionarySetValue(values, kMecabraAssetDataFilePathsKey, a2);
    v5 = CFArrayCreate(v4, &values, 1, MEMORY[0x29EDB9000]);
    LOBYTE(v4) = sub_2992BD7BC(*(a1 + 32), 2, v5);
    CFRelease(values);
    CFRelease(v5);
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = sub_2992942B4(a1, 2, 0);
    if (!result)
    {
      return result;
    }
  }

  (*(**(a1 + 16) + 224))(*(a1 + 16));
  v7 = *(a1 + 24);
  if (v7)
  {
    sub_2992F3E1C(v7);
  }

  return 1;
}

uint64_t sub_2992942B4(uint64_t a1, int a2, const __CFArray *a3)
{
  v4 = sub_2992BD7BC(*(a1 + 32), a2, a3);
  if (v4)
  {
    (*(**(a1 + 16) + 224))(*(a1 + 16));
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_2992F3E1C(v5);
    }
  }

  return v4;
}

uint64_t sub_299294320(uint64_t a1, char a2)
{
  result = (*(**(a1 + 16) + 240))(*(a1 + 16));
  v5 = *(a1 + 24);
  if (v5)
  {
    *(v5 + 320) = a2;
    *(v5 + 416) = a2;
  }

  return result;
}

void sub_299294398(uint64_t a1)
{
  sub_299225C28(*(a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {

    sub_2992F3FF0(v2);
  }
}

void sub_2992943EC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_2992F3F64(v1, 1);
  }
}

uint64_t sub_299294418(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_299277300(*(a1 + 8));
    MecabraContextCreateMutable();
  }

  return 0;
}

uint64_t sub_29929457C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    if (a2)
    {
      v9 = *(a2 + 72);
      if (v9)
      {
        v10 = *(v6 + 16);
        if (*(v10 + 5) != 1 || (v11 = *(v10 + 40)) == 0)
        {
          v11 = *(v10 + 32);
        }

        sub_299384100(v11, v9);
        v6 = *(a1 + 24);
      }

      v12 = *(a2 + 80);
      if (v12)
      {
        v13 = *(v6 + 16);
        if (*(v13 + 5) != 1 || (v14 = *(v13 + 40)) == 0)
        {
          v14 = *(v13 + 32);
        }

        sub_2993841C0(v14, v12);
        v6 = *(a1 + 24);
      }
    }

    v15 = 1 << *(a1 + 8);

    return sub_2992F4274(v6, a2, a3, a4);
  }

  else
  {
    v17 = *(**(a1 + 16) + 24);

    return v17();
  }
}

void sub_2992946D4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v5 = objc_msgSend_rawCandidate(a2, a2, a3);
      if ((*(*v5 + 72))(v5) == 2 || (v8 = objc_msgSend_rawCandidate(a2, v6, v7), (*(*v8 + 72))(v8) == 3))
      {
        v9 = *(a1 + 24);
        v10 = objc_msgSend_rawCandidate(a2, v6, v7);

        sub_2992F4AA4(v9, v10);
      }
    }
  }
}

uint64_t sub_29929479C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    if (sub_2992F4224(*(a1 + 24)))
    {
      v4 = *(v1 + 200);

      return sub_2993EEEB8(v4, v2, v3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *(**(a1 + 16) + 48);

    return v6();
  }
}

uint64_t sub_299294850(uint64_t a1)
{
  v3 = (a1 + 64);
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  sub_299229EC8((a1 + 72), 0);
  sub_2992530BC(v3, 0);
  sub_29929054C((a1 + 32), 0);
  sub_2992926B8((a1 + 24), 0);
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_2992948EC(uint64_t a1)
{
  sub_299295A80(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299294934(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  *(a1 + 56) = 0;
  v3 = *(a1 + 72);
  if (v3)
  {
    CFSetRemoveAllValues(v3);
  }

  v4 = *(**(a1 + 16) + 16);

  return v4();
}

uint64_t sub_2992949EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    CFArrayRemoveAllValues(v6);
  }

  *(a1 + 56) = 0;
  v7 = *(a1 + 72);
  if (v7)
  {
    CFSetRemoveAllValues(v7);
  }

  if (a4)
  {
    if (*(a4 + 72))
    {
      (*(**(a1 + 16) + 112))(*(a1 + 16));
    }

    if (*(a4 + 80))
    {
      (*(**(a1 + 16) + 120))(*(a1 + 16));
    }
  }

  v8 = *(**(a1 + 16) + 24);

  return v8();
}

uint64_t sub_299294AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    CFArrayRemoveAllValues(v6);
  }

  *(a1 + 56) = 0;
  v7 = *(a1 + 72);
  if (v7)
  {
    CFSetRemoveAllValues(v7);
  }

  if (a4)
  {
    if (*(a4 + 72))
    {
      (*(**(a1 + 16) + 112))(*(a1 + 16));
    }

    if (*(a4 + 80))
    {
      (*(**(a1 + 16) + 120))(*(a1 + 16));
    }
  }

  v8 = *(**(a1 + 16) + 32);

  return v8();
}

void *sub_299294BFC(uint64_t a1)
{
  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    v3 = (*(*i + 48))(i);
    v6 = v3;
    if (!v3)
    {
      break;
    }

    v7 = objc_msgSend_rawCandidate(v3, v4, v5);
    if ((*(*v7 + 72))(v7) == 6)
    {
      break;
    }

    if (MecabraCandidateGetSurface(v6, v8, v9))
    {
      v12 = objc_msgSend_rawCandidate(v6, v10, v11);
      if ((*(*v12 + 96))(v12) == 89)
      {
        return v6;
      }

      v15 = *(a1 + 72);
      Surface = MecabraCandidateGetSurface(v6, v13, v14);
      if (!CFSetContainsValue(v15, Surface))
      {
        v19 = *(a1 + 72);
        v20 = MecabraCandidateGetSurface(v6, v17, v18);
        CFSetAddValue(v19, v20);
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_299294D34(uint64_t a1, uint64_t a2)
{
  if (CFArrayGetCount(*(a2 + 32)) == 1)
  {
    v4 = sub_299324314(a2, 0);
    v5 = sub_2992EED3C(v4);
    if (v4)
    {
      if (v5)
      {
        v8 = objc_msgSend_rawCandidate(v4, v6, v7);
        if ((*(*v8 + 72))(v8) == 2 || (v11 = objc_msgSend_rawCandidate(v4, v9, v10), (*(*v11 + 72))(v11) == 3))
        {
          v12 = *(a1 + 24);
          if (v12)
          {
            v13 = objc_msgSend_rawCandidate(v4, v9, v10);
            sub_2992F4AA4(v12, v13);
          }

          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    sub_2992EED3C(0);
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    CFSetRemoveAllValues(v14);
  }

LABEL_11:
  v15 = *(**(a1 + 16) + 72);

  return v15();
}

uint64_t sub_299294E88(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFSetRemoveAllValues(v2);
  }

  v3 = *(**(a1 + 16) + 56);

  return v3();
}

uint64_t sub_299294F78(uint64_t a1, const __CFString *a2)
{
  result = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(v5 + 16);
    if (*(v6 + 5) != 1 || (v7 = *(v6 + 40)) == 0)
    {
      v7 = *(v6 + 32);
    }

    return sub_299384100(v7, a2);
  }

  return result;
}

void sub_299295008(uint64_t a1, const __CFArray *a2)
{
  (*(**(a1 + 16) + 128))(*(a1 + 16));
  v4 = *(a1 + 24);
  if (v4 && sub_2992F4224(v4))
  {

    sub_299347628((v4 + 41), a2);
  }
}

void sub_29929508C(uint64_t a1, const __CFArray *a2)
{
  (*(**(a1 + 16) + 136))(*(a1 + 16));
  v4 = *(a1 + 24);
  if (v4 && sub_2992F4224(v4))
  {

    sub_299347628((v4 + 29), a2);
  }
}

void sub_299295160(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = a2;
    sub_2993B91E0(v2 + 8, a2);
    v4 = *(v2 + 216);
    if (v4)
    {
      *(v4 + 56) = v3;
    }
  }
}

uint64_t sub_2992951C4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_rawCandidate(a2, a2, a3);
  if (!v5 || (v8 = **v5, (v9 = __dynamic_cast(v5, &unk_2A1F64300, &unk_2A1F72C30, 0)) == 0))
  {
    v12 = objc_msgSend_rawCandidate(a2, v6, v7);
    if (v12)
    {
      v13 = **v12;
    }

    return 0;
  }

  if (!(*(*v9 + 248))(v9, 0, 0))
  {
    return 0;
  }

  v10 = *(**(a1 + 16) + 168);

  return v10();
}

uint64_t sub_2992953D4(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = *MEMORY[0x29EDB8ED8];
    values = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    CFDictionarySetValue(values, kMecabraAssetDataFilePathsKey, a2);
    v5 = CFArrayCreate(v4, &values, 1, MEMORY[0x29EDB9000]);
    LOBYTE(v4) = sub_2992BD7BC(*(a1 + 32), 2, v5);
    CFRelease(values);
    CFRelease(v5);
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = sub_2992954E4(a1, 2, 0);
    if (!result)
    {
      return result;
    }
  }

  (*(**(a1 + 16) + 224))(*(a1 + 16));
  v7 = *(a1 + 24);
  if (v7)
  {
    sub_2992F3E1C(v7);
  }

  return 1;
}

uint64_t sub_2992954E4(uint64_t a1, int a2, const __CFArray *a3)
{
  v4 = sub_2992BD7BC(*(a1 + 32), a2, a3);
  if (v4)
  {
    (*(**(a1 + 16) + 224))(*(a1 + 16));
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_2992F3E1C(v5);
    }
  }

  return v4;
}

uint64_t sub_299295550(uint64_t a1, char a2)
{
  result = (*(**(a1 + 16) + 240))(*(a1 + 16));
  v5 = *(a1 + 24);
  if (v5)
  {
    *(v5 + 320) = a2;
    *(v5 + 416) = a2;
  }

  return result;
}

void sub_2992955C8(uint64_t a1)
{
  sub_299225C28(*(a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {

    sub_2992F3FF0(v2);
  }
}

void sub_29929561C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_2992F3F64(v1, 1);
  }
}

uint64_t sub_299295648(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_299277300(*(a1 + 8));
    MecabraContextCreateMutable();
  }

  return 0;
}

uint64_t sub_2992957AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    if (a2)
    {
      v9 = *(a2 + 72);
      if (v9)
      {
        v10 = *(v6 + 16);
        if (*(v10 + 5) != 1 || (v11 = *(v10 + 40)) == 0)
        {
          v11 = *(v10 + 32);
        }

        sub_299384100(v11, v9);
        v6 = *(a1 + 24);
      }

      v12 = *(a2 + 80);
      if (v12)
      {
        v13 = *(v6 + 16);
        if (*(v13 + 5) != 1 || (v14 = *(v13 + 40)) == 0)
        {
          v14 = *(v13 + 32);
        }

        sub_2993841C0(v14, v12);
        v6 = *(a1 + 24);
      }
    }

    v15 = 1 << *(a1 + 8);

    return sub_2992F4274(v6, a2, a3, a4);
  }

  else
  {
    v17 = *(**(a1 + 16) + 24);

    return v17();
  }
}

void sub_299295904(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v5 = objc_msgSend_rawCandidate(a2, a2, a3);
      if ((*(*v5 + 72))(v5) == 2 || (v8 = objc_msgSend_rawCandidate(a2, v6, v7), (*(*v8 + 72))(v8) == 3))
      {
        v9 = *(a1 + 24);
        v10 = objc_msgSend_rawCandidate(a2, v6, v7);

        sub_2992F4AA4(v9, v10);
      }
    }
  }
}

uint64_t sub_2992959CC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    if (sub_2992F4224(*(a1 + 24)))
    {
      v4 = *(v1 + 200);

      return sub_2993EEEB8(v4, v2, v3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *(**(a1 + 16) + 48);

    return v6();
  }
}

uint64_t sub_299295A80(uint64_t a1)
{
  v3 = (a1 + 64);
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  sub_299229EC8((a1 + 72), 0);
  sub_2992530BC(v3, 0);
  sub_29929054C((a1 + 32), 0);
  sub_2992926B8((a1 + 24), 0);
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_299295B1C(uint64_t a1)
{
  sub_299296CB0(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299295B64(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  *(a1 + 56) = 0;
  v3 = *(a1 + 72);
  if (v3)
  {
    CFSetRemoveAllValues(v3);
  }

  v4 = *(**(a1 + 16) + 16);

  return v4();
}

uint64_t sub_299295C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    CFArrayRemoveAllValues(v6);
  }

  *(a1 + 56) = 0;
  v7 = *(a1 + 72);
  if (v7)
  {
    CFSetRemoveAllValues(v7);
  }

  if (a4)
  {
    if (*(a4 + 72))
    {
      (*(**(a1 + 16) + 112))(*(a1 + 16));
    }

    if (*(a4 + 80))
    {
      (*(**(a1 + 16) + 120))(*(a1 + 16));
    }
  }

  v8 = *(**(a1 + 16) + 24);

  return v8();
}

uint64_t sub_299295D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    CFArrayRemoveAllValues(v6);
  }

  *(a1 + 56) = 0;
  v7 = *(a1 + 72);
  if (v7)
  {
    CFSetRemoveAllValues(v7);
  }

  if (a4)
  {
    if (*(a4 + 72))
    {
      (*(**(a1 + 16) + 112))(*(a1 + 16));
    }

    if (*(a4 + 80))
    {
      (*(**(a1 + 16) + 120))(*(a1 + 16));
    }
  }

  v8 = *(**(a1 + 16) + 32);

  return v8();
}

void *sub_299295E2C(uint64_t a1)
{
  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    v3 = (*(*i + 48))(i);
    v6 = v3;
    if (!v3)
    {
      break;
    }

    v7 = objc_msgSend_rawCandidate(v3, v4, v5);
    if ((*(*v7 + 72))(v7) == 6)
    {
      break;
    }

    if (MecabraCandidateGetSurface(v6, v8, v9))
    {
      v12 = objc_msgSend_rawCandidate(v6, v10, v11);
      if ((*(*v12 + 96))(v12) == 89)
      {
        return v6;
      }

      v15 = *(a1 + 72);
      Surface = MecabraCandidateGetSurface(v6, v13, v14);
      if (!CFSetContainsValue(v15, Surface))
      {
        v19 = *(a1 + 72);
        v20 = MecabraCandidateGetSurface(v6, v17, v18);
        CFSetAddValue(v19, v20);
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_299295F64(uint64_t a1, uint64_t a2)
{
  if (CFArrayGetCount(*(a2 + 32)) == 1)
  {
    v4 = sub_299324314(a2, 0);
    v5 = sub_2992EED3C(v4);
    if (v4)
    {
      if (v5)
      {
        v8 = objc_msgSend_rawCandidate(v4, v6, v7);
        if ((*(*v8 + 72))(v8) == 2 || (v11 = objc_msgSend_rawCandidate(v4, v9, v10), (*(*v11 + 72))(v11) == 3))
        {
          v12 = *(a1 + 24);
          if (v12)
          {
            v13 = objc_msgSend_rawCandidate(v4, v9, v10);
            sub_2992F4AA4(v12, v13);
          }

          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    sub_2992EED3C(0);
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    CFSetRemoveAllValues(v14);
  }

LABEL_11:
  v15 = *(**(a1 + 16) + 72);

  return v15();
}

uint64_t sub_2992960B8(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFSetRemoveAllValues(v2);
  }

  v3 = *(**(a1 + 16) + 56);

  return v3();
}

uint64_t sub_2992961A8(uint64_t a1, const __CFString *a2)
{
  result = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(v5 + 16);
    if (*(v6 + 5) != 1 || (v7 = *(v6 + 40)) == 0)
    {
      v7 = *(v6 + 32);
    }

    return sub_299384100(v7, a2);
  }

  return result;
}

void sub_299296238(uint64_t a1, const __CFArray *a2)
{
  (*(**(a1 + 16) + 128))(*(a1 + 16));
  v4 = *(a1 + 24);
  if (v4 && sub_2992F4224(v4))
  {

    sub_299347628((v4 + 41), a2);
  }
}

void sub_2992962BC(uint64_t a1, const __CFArray *a2)
{
  (*(**(a1 + 16) + 136))(*(a1 + 16));
  v4 = *(a1 + 24);
  if (v4 && sub_2992F4224(v4))
  {

    sub_299347628((v4 + 29), a2);
  }
}

void sub_299296390(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = a2;
    sub_2993B91E0(v2 + 8, a2);
    v4 = *(v2 + 216);
    if (v4)
    {
      *(v4 + 56) = v3;
    }
  }
}

uint64_t sub_2992963F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_rawCandidate(a2, a2, a3);
  if (!v5 || (v8 = **v5, (v9 = __dynamic_cast(v5, &unk_2A1F64300, &unk_2A1F72C30, 0)) == 0))
  {
    v12 = objc_msgSend_rawCandidate(a2, v6, v7);
    if (v12)
    {
      v13 = **v12;
    }

    return 0;
  }

  if (!(*(*v9 + 248))(v9, 0, 0))
  {
    return 0;
  }

  v10 = *(**(a1 + 16) + 168);

  return v10();
}

uint64_t sub_299296604(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = *MEMORY[0x29EDB8ED8];
    values = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    CFDictionarySetValue(values, kMecabraAssetDataFilePathsKey, a2);
    v5 = CFArrayCreate(v4, &values, 1, MEMORY[0x29EDB9000]);
    LOBYTE(v4) = sub_2992BD7BC(*(a1 + 32), 2, v5);
    CFRelease(values);
    CFRelease(v5);
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = sub_299296714(a1, 2, 0);
    if (!result)
    {
      return result;
    }
  }

  (*(**(a1 + 16) + 224))(*(a1 + 16));
  v7 = *(a1 + 24);
  if (v7)
  {
    sub_2992F3E1C(v7);
  }

  return 1;
}

uint64_t sub_299296714(uint64_t a1, int a2, const __CFArray *a3)
{
  v4 = sub_2992BD7BC(*(a1 + 32), a2, a3);
  if (v4)
  {
    (*(**(a1 + 16) + 224))(*(a1 + 16));
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_2992F3E1C(v5);
    }
  }

  return v4;
}

uint64_t sub_299296780(uint64_t a1, char a2)
{
  result = (*(**(a1 + 16) + 240))(*(a1 + 16));
  v5 = *(a1 + 24);
  if (v5)
  {
    *(v5 + 320) = a2;
    *(v5 + 416) = a2;
  }

  return result;
}

void sub_2992967F8(uint64_t a1)
{
  sub_299225C28(*(a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {

    sub_2992F3FF0(v2);
  }
}

void sub_29929684C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_2992F3F64(v1, 1);
  }
}

uint64_t sub_299296878(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_299277300(*(a1 + 8));
    MecabraContextCreateMutable();
  }

  return 0;
}

uint64_t sub_2992969DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    if (a2)
    {
      v9 = *(a2 + 72);
      if (v9)
      {
        v10 = *(v6 + 16);
        if (*(v10 + 5) != 1 || (v11 = *(v10 + 40)) == 0)
        {
          v11 = *(v10 + 32);
        }

        sub_299384100(v11, v9);
        v6 = *(a1 + 24);
      }

      v12 = *(a2 + 80);
      if (v12)
      {
        v13 = *(v6 + 16);
        if (*(v13 + 5) != 1 || (v14 = *(v13 + 40)) == 0)
        {
          v14 = *(v13 + 32);
        }

        sub_2993841C0(v14, v12);
        v6 = *(a1 + 24);
      }
    }

    v15 = 1 << *(a1 + 8);

    return sub_2992F4274(v6, a2, a3, a4);
  }

  else
  {
    v17 = *(**(a1 + 16) + 24);

    return v17();
  }
}

void sub_299296B34(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v5 = objc_msgSend_rawCandidate(a2, a2, a3);
      if ((*(*v5 + 72))(v5) == 2 || (v8 = objc_msgSend_rawCandidate(a2, v6, v7), (*(*v8 + 72))(v8) == 3))
      {
        v9 = *(a1 + 24);
        v10 = objc_msgSend_rawCandidate(a2, v6, v7);

        sub_2992F4AA4(v9, v10);
      }
    }
  }
}

uint64_t sub_299296BFC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    if (sub_2992F4224(*(a1 + 24)))
    {
      v4 = *(v1 + 200);

      return sub_2993EEEB8(v4, v2, v3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *(**(a1 + 16) + 48);

    return v6();
  }
}

uint64_t sub_299296CB0(uint64_t a1)
{
  v3 = (a1 + 64);
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  sub_299229EC8((a1 + 72), 0);
  sub_2992530BC(v3, 0);
  sub_29929054C((a1 + 32), 0);
  sub_2992926B8((a1 + 24), 0);
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_299296D4C(uint64_t a1)
{
  sub_299297EE0(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299296D94(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  *(a1 + 56) = 0;
  v3 = *(a1 + 72);
  if (v3)
  {
    CFSetRemoveAllValues(v3);
  }

  v4 = *(**(a1 + 16) + 16);

  return v4();
}

uint64_t sub_299296E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    CFArrayRemoveAllValues(v6);
  }

  *(a1 + 56) = 0;
  v7 = *(a1 + 72);
  if (v7)
  {
    CFSetRemoveAllValues(v7);
  }

  if (a4)
  {
    if (*(a4 + 72))
    {
      (*(**(a1 + 16) + 112))(*(a1 + 16));
    }

    if (*(a4 + 80))
    {
      (*(**(a1 + 16) + 120))(*(a1 + 16));
    }
  }

  v8 = *(**(a1 + 16) + 24);

  return v8();
}

uint64_t sub_299296F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    CFArrayRemoveAllValues(v6);
  }

  *(a1 + 56) = 0;
  v7 = *(a1 + 72);
  if (v7)
  {
    CFSetRemoveAllValues(v7);
  }

  if (a4)
  {
    if (*(a4 + 72))
    {
      (*(**(a1 + 16) + 112))(*(a1 + 16));
    }

    if (*(a4 + 80))
    {
      (*(**(a1 + 16) + 120))(*(a1 + 16));
    }
  }

  v8 = *(**(a1 + 16) + 32);

  return v8();
}

void *sub_29929705C(uint64_t a1)
{
  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    v3 = (*(*i + 48))(i);
    v6 = v3;
    if (!v3)
    {
      break;
    }

    v7 = objc_msgSend_rawCandidate(v3, v4, v5);
    if ((*(*v7 + 72))(v7) == 6)
    {
      break;
    }

    if (MecabraCandidateGetSurface(v6, v8, v9))
    {
      v12 = objc_msgSend_rawCandidate(v6, v10, v11);
      if ((*(*v12 + 96))(v12) == 89)
      {
        return v6;
      }

      v15 = *(a1 + 72);
      Surface = MecabraCandidateGetSurface(v6, v13, v14);
      if (!CFSetContainsValue(v15, Surface))
      {
        v19 = *(a1 + 72);
        v20 = MecabraCandidateGetSurface(v6, v17, v18);
        CFSetAddValue(v19, v20);
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_299297194(uint64_t a1, uint64_t a2)
{
  if (CFArrayGetCount(*(a2 + 32)) == 1)
  {
    v4 = sub_299324314(a2, 0);
    v5 = sub_2992EED3C(v4);
    if (v4)
    {
      if (v5)
      {
        v8 = objc_msgSend_rawCandidate(v4, v6, v7);
        if ((*(*v8 + 72))(v8) == 2 || (v11 = objc_msgSend_rawCandidate(v4, v9, v10), (*(*v11 + 72))(v11) == 3))
        {
          v12 = *(a1 + 24);
          if (v12)
          {
            v13 = objc_msgSend_rawCandidate(v4, v9, v10);
            sub_2992F4AA4(v12, v13);
          }

          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    sub_2992EED3C(0);
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    CFSetRemoveAllValues(v14);
  }

LABEL_11:
  v15 = *(**(a1 + 16) + 72);

  return v15();
}

uint64_t sub_2992972E8(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFSetRemoveAllValues(v2);
  }

  v3 = *(**(a1 + 16) + 56);

  return v3();
}

uint64_t sub_2992973D8(uint64_t a1, const __CFString *a2)
{
  result = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(v5 + 16);
    if (*(v6 + 5) != 1 || (v7 = *(v6 + 40)) == 0)
    {
      v7 = *(v6 + 32);
    }

    return sub_299384100(v7, a2);
  }

  return result;
}

void sub_299297468(uint64_t a1, const __CFArray *a2)
{
  (*(**(a1 + 16) + 128))(*(a1 + 16));
  v4 = *(a1 + 24);
  if (v4 && sub_2992F4224(v4))
  {

    sub_299347628((v4 + 41), a2);
  }
}

void sub_2992974EC(uint64_t a1, const __CFArray *a2)
{
  (*(**(a1 + 16) + 136))(*(a1 + 16));
  v4 = *(a1 + 24);
  if (v4 && sub_2992F4224(v4))
  {

    sub_299347628((v4 + 29), a2);
  }
}

void sub_2992975C0(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = a2;
    sub_2993B91E0(v2 + 8, a2);
    v4 = *(v2 + 216);
    if (v4)
    {
      *(v4 + 56) = v3;
    }
  }
}

uint64_t sub_299297624(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_rawCandidate(a2, a2, a3);
  if (!v5 || (v8 = **v5, (v9 = __dynamic_cast(v5, &unk_2A1F64300, &unk_2A1F72C30, 0)) == 0))
  {
    v12 = objc_msgSend_rawCandidate(a2, v6, v7);
    if (v12)
    {
      v13 = **v12;
    }

    return 0;
  }

  if (!(*(*v9 + 248))(v9, 0, 0))
  {
    return 0;
  }

  v10 = *(**(a1 + 16) + 168);

  return v10();
}

uint64_t sub_299297834(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = *MEMORY[0x29EDB8ED8];
    values = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    CFDictionarySetValue(values, kMecabraAssetDataFilePathsKey, a2);
    v5 = CFArrayCreate(v4, &values, 1, MEMORY[0x29EDB9000]);
    LOBYTE(v4) = sub_2992BD7BC(*(a1 + 32), 2, v5);
    CFRelease(values);
    CFRelease(v5);
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = sub_299297944(a1, 2, 0);
    if (!result)
    {
      return result;
    }
  }

  (*(**(a1 + 16) + 224))(*(a1 + 16));
  v7 = *(a1 + 24);
  if (v7)
  {
    sub_2992F3E1C(v7);
  }

  return 1;
}

uint64_t sub_299297944(uint64_t a1, int a2, const __CFArray *a3)
{
  v4 = sub_2992BD7BC(*(a1 + 32), a2, a3);
  if (v4)
  {
    (*(**(a1 + 16) + 224))(*(a1 + 16));
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_2992F3E1C(v5);
    }
  }

  return v4;
}

uint64_t sub_2992979B0(uint64_t a1, char a2)
{
  result = (*(**(a1 + 16) + 240))(*(a1 + 16));
  v5 = *(a1 + 24);
  if (v5)
  {
    *(v5 + 320) = a2;
    *(v5 + 416) = a2;
  }

  return result;
}

void sub_299297A28(uint64_t a1)
{
  sub_299225C28(*(a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {

    sub_2992F3FF0(v2);
  }
}

void sub_299297A7C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_2992F3F64(v1, 1);
  }
}

uint64_t sub_299297AA8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_299277300(*(a1 + 8));
    MecabraContextCreateMutable();
  }

  return 0;
}

uint64_t sub_299297C0C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    if (a2)
    {
      v9 = *(a2 + 72);
      if (v9)
      {
        v10 = *(v6 + 16);
        if (*(v10 + 5) != 1 || (v11 = *(v10 + 40)) == 0)
        {
          v11 = *(v10 + 32);
        }

        sub_299384100(v11, v9);
        v6 = *(a1 + 24);
      }

      v12 = *(a2 + 80);
      if (v12)
      {
        v13 = *(v6 + 16);
        if (*(v13 + 5) != 1 || (v14 = *(v13 + 40)) == 0)
        {
          v14 = *(v13 + 32);
        }

        sub_2993841C0(v14, v12);
        v6 = *(a1 + 24);
      }
    }

    v15 = 1 << *(a1 + 8);

    return sub_2992F4274(v6, a2, a3, a4);
  }

  else
  {
    v17 = *(**(a1 + 16) + 24);

    return v17();
  }
}

void sub_299297D64(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v5 = objc_msgSend_rawCandidate(a2, a2, a3);
      if ((*(*v5 + 72))(v5) == 2 || (v8 = objc_msgSend_rawCandidate(a2, v6, v7), (*(*v8 + 72))(v8) == 3))
      {
        v9 = *(a1 + 24);
        v10 = objc_msgSend_rawCandidate(a2, v6, v7);

        sub_2992F4AA4(v9, v10);
      }
    }
  }
}

uint64_t sub_299297E2C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    if (sub_2992F4224(*(a1 + 24)))
    {
      v4 = *(v1 + 200);

      return sub_2993EEEB8(v4, v2, v3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *(**(a1 + 16) + 48);

    return v6();
  }
}

uint64_t sub_299297EE0(uint64_t a1)
{
  v3 = (a1 + 64);
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  sub_299229EC8((a1 + 72), 0);
  sub_2992530BC(v3, 0);
  sub_29929054C((a1 + 32), 0);
  sub_2992926B8((a1 + 24), 0);
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_299297F7C(uint64_t a1)
{
  sub_299299110(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299297FC4(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  *(a1 + 56) = 0;
  v3 = *(a1 + 72);
  if (v3)
  {
    CFSetRemoveAllValues(v3);
  }

  v4 = *(**(a1 + 16) + 16);

  return v4();
}

uint64_t sub_29929807C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    CFArrayRemoveAllValues(v6);
  }

  *(a1 + 56) = 0;
  v7 = *(a1 + 72);
  if (v7)
  {
    CFSetRemoveAllValues(v7);
  }

  if (a4)
  {
    if (*(a4 + 72))
    {
      (*(**(a1 + 16) + 112))(*(a1 + 16));
    }

    if (*(a4 + 80))
    {
      (*(**(a1 + 16) + 120))(*(a1 + 16));
    }
  }

  v8 = *(**(a1 + 16) + 24);

  return v8();
}

uint64_t sub_299298170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    CFArrayRemoveAllValues(v6);
  }

  *(a1 + 56) = 0;
  v7 = *(a1 + 72);
  if (v7)
  {
    CFSetRemoveAllValues(v7);
  }

  if (a4)
  {
    if (*(a4 + 72))
    {
      (*(**(a1 + 16) + 112))(*(a1 + 16));
    }

    if (*(a4 + 80))
    {
      (*(**(a1 + 16) + 120))(*(a1 + 16));
    }
  }

  v8 = *(**(a1 + 16) + 32);

  return v8();
}

void *sub_29929828C(uint64_t a1)
{
  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    v3 = (*(*i + 48))(i);
    v6 = v3;
    if (!v3)
    {
      break;
    }

    v7 = objc_msgSend_rawCandidate(v3, v4, v5);
    if ((*(*v7 + 72))(v7) == 6)
    {
      break;
    }

    if (MecabraCandidateGetSurface(v6, v8, v9))
    {
      v12 = objc_msgSend_rawCandidate(v6, v10, v11);
      if ((*(*v12 + 96))(v12) == 89)
      {
        return v6;
      }

      v15 = *(a1 + 72);
      Surface = MecabraCandidateGetSurface(v6, v13, v14);
      if (!CFSetContainsValue(v15, Surface))
      {
        v19 = *(a1 + 72);
        v20 = MecabraCandidateGetSurface(v6, v17, v18);
        CFSetAddValue(v19, v20);
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_2992983C4(uint64_t a1, uint64_t a2)
{
  if (CFArrayGetCount(*(a2 + 32)) == 1)
  {
    v4 = sub_299324314(a2, 0);
    v5 = sub_2992EED3C(v4);
    if (v4)
    {
      if (v5)
      {
        v8 = objc_msgSend_rawCandidate(v4, v6, v7);
        if ((*(*v8 + 72))(v8) == 2 || (v11 = objc_msgSend_rawCandidate(v4, v9, v10), (*(*v11 + 72))(v11) == 3))
        {
          v12 = *(a1 + 24);
          if (v12)
          {
            v13 = objc_msgSend_rawCandidate(v4, v9, v10);
            sub_2992F4AA4(v12, v13);
          }

          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    sub_2992EED3C(0);
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    CFSetRemoveAllValues(v14);
  }

LABEL_11:
  v15 = *(**(a1 + 16) + 72);

  return v15();
}

uint64_t sub_299298518(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFSetRemoveAllValues(v2);
  }

  v3 = *(**(a1 + 16) + 56);

  return v3();
}

uint64_t sub_299298608(uint64_t a1, const __CFString *a2)
{
  result = (*(**(a1 + 16) + 112))(*(a1 + 16));
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(v5 + 16);
    if (*(v6 + 5) != 1 || (v7 = *(v6 + 40)) == 0)
    {
      v7 = *(v6 + 32);
    }

    return sub_299384100(v7, a2);
  }

  return result;
}

void sub_299298698(uint64_t a1, const __CFArray *a2)
{
  (*(**(a1 + 16) + 128))(*(a1 + 16));
  v4 = *(a1 + 24);
  if (v4 && sub_2992F4224(v4))
  {

    sub_299347628((v4 + 41), a2);
  }
}

void sub_29929871C(uint64_t a1, const __CFArray *a2)
{
  (*(**(a1 + 16) + 136))(*(a1 + 16));
  v4 = *(a1 + 24);
  if (v4 && sub_2992F4224(v4))
  {

    sub_299347628((v4 + 29), a2);
  }
}

void sub_2992987F0(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = a2;
    sub_2993B91E0(v2 + 8, a2);
    v4 = *(v2 + 216);
    if (v4)
    {
      *(v4 + 56) = v3;
    }
  }
}

uint64_t sub_299298854(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_rawCandidate(a2, a2, a3);
  if (!v5 || (v8 = **v5, (v9 = __dynamic_cast(v5, &unk_2A1F64300, &unk_2A1F72C30, 0)) == 0))
  {
    v12 = objc_msgSend_rawCandidate(a2, v6, v7);
    if (v12)
    {
      v13 = **v12;
    }

    return 0;
  }

  if (!(*(*v9 + 248))(v9, 0, 0))
  {
    return 0;
  }

  v10 = *(**(a1 + 16) + 168);

  return v10();
}

uint64_t sub_299298A64(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = *MEMORY[0x29EDB8ED8];
    values = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    CFDictionarySetValue(values, kMecabraAssetDataFilePathsKey, a2);
    v5 = CFArrayCreate(v4, &values, 1, MEMORY[0x29EDB9000]);
    LOBYTE(v4) = sub_2992BD7BC(*(a1 + 32), 2, v5);
    CFRelease(values);
    CFRelease(v5);
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = sub_299298B74(a1, 2, 0);
    if (!result)
    {
      return result;
    }
  }

  (*(**(a1 + 16) + 224))(*(a1 + 16));
  v7 = *(a1 + 24);
  if (v7)
  {
    sub_2992F3E1C(v7);
  }

  return 1;
}

uint64_t sub_299298B74(uint64_t a1, int a2, const __CFArray *a3)
{
  v4 = sub_2992BD7BC(*(a1 + 32), a2, a3);
  if (v4)
  {
    (*(**(a1 + 16) + 224))(*(a1 + 16));
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_2992F3E1C(v5);
    }
  }

  return v4;
}

uint64_t sub_299298BE0(uint64_t a1, char a2)
{
  result = (*(**(a1 + 16) + 240))(*(a1 + 16));
  v5 = *(a1 + 24);
  if (v5)
  {
    *(v5 + 320) = a2;
    *(v5 + 416) = a2;
  }

  return result;
}

void sub_299298C58(uint64_t a1)
{
  sub_299225C28(*(a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {

    sub_2992F3FF0(v2);
  }
}

void sub_299298CAC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_2992F3F64(v1, 1);
  }
}

uint64_t sub_299298CD8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_299277300(*(a1 + 8));
    MecabraContextCreateMutable();
  }

  return 0;
}

uint64_t sub_299298E3C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    if (a2)
    {
      v9 = *(a2 + 72);
      if (v9)
      {
        v10 = *(v6 + 16);
        if (*(v10 + 5) != 1 || (v11 = *(v10 + 40)) == 0)
        {
          v11 = *(v10 + 32);
        }

        sub_299384100(v11, v9);
        v6 = *(a1 + 24);
      }

      v12 = *(a2 + 80);
      if (v12)
      {
        v13 = *(v6 + 16);
        if (*(v13 + 5) != 1 || (v14 = *(v13 + 40)) == 0)
        {
          v14 = *(v13 + 32);
        }

        sub_2993841C0(v14, v12);
        v6 = *(a1 + 24);
      }
    }

    v15 = 1 << *(a1 + 8);

    return sub_2992F4274(v6, a2, a3, a4);
  }

  else
  {
    v17 = *(**(a1 + 16) + 24);

    return v17();
  }
}

void sub_299298F94(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v5 = objc_msgSend_rawCandidate(a2, a2, a3);
      if ((*(*v5 + 72))(v5) == 2 || (v8 = objc_msgSend_rawCandidate(a2, v6, v7), (*(*v8 + 72))(v8) == 3))
      {
        v9 = *(a1 + 24);
        v10 = objc_msgSend_rawCandidate(a2, v6, v7);

        sub_2992F4AA4(v9, v10);
      }
    }
  }
}

uint64_t sub_29929905C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    if (sub_2992F4224(*(a1 + 24)))
    {
      v4 = *(v1 + 200);

      return sub_2993EEEB8(v4, v2, v3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *(**(a1 + 16) + 48);

    return v6();
  }
}

uint64_t sub_299299110(uint64_t a1)
{
  v3 = (a1 + 64);
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  sub_299229EC8((a1 + 72), 0);
  sub_2992530BC(v3, 0);
  sub_29929054C((a1 + 32), 0);
  sub_2992926B8((a1 + 24), 0);
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_2992991A8(uint64_t a1, _DWORD *a2)
{
  *a1 = &unk_2A1F6A1A8;
  *(a1 + 8) = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = CFSetCreateMutable(0, 0, MEMORY[0x29EDB9030]);
  v3 = *(a1 + 8);
  operator new();
}

void sub_299299318(_Unwind_Exception *a1)
{
  sub_2992530BC(v4, 0);
  sub_29929054C(v3, 0);
  sub_2992926B8(v2, 0);
  sub_299299368(v1, 0);
  _Unwind_Resume(a1);
}

id ***sub_299299368(id ***result, id **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_2993B8B28((v2 + 1));
    sub_2992D483C(v2);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void sub_2992993D0(uint64_t a1)
{
  sub_299299DA8(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299299418(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  *(a1 + 56) = 0;
  v3 = *(a1 + 72);
  if (v3)
  {
    CFSetRemoveAllValues(v3);
  }

  return 0;
}

uint64_t sub_299299458(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  *(a1 + 56) = 0;
  v3 = *(a1 + 72);
  if (v3)
  {
    CFSetRemoveAllValues(v3);
  }

  return 0;
}

uint64_t sub_299299498(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  *(a1 + 56) = 0;
  v3 = *(a1 + 72);
  if (v3)
  {
    CFSetRemoveAllValues(v3);
  }

  return 0;
}

uint64_t sub_2992994F0(uint64_t a1, uint64_t a2)
{
  if (CFArrayGetCount(*(a2 + 32)) == 1)
  {
    v4 = sub_299324314(a2, 0);
    v5 = sub_2992EED3C(v4);
    if (v4)
    {
      if (v5)
      {
        v8 = objc_msgSend_rawCandidate(v4, v6, v7);
        if ((*(*v8 + 72))(v8) == 2 || (v11 = objc_msgSend_rawCandidate(v4, v9, v10), (*(*v11 + 72))(v11) == 3))
        {
          v12 = *(a1 + 24);
          if (v12)
          {
            v13 = objc_msgSend_rawCandidate(v4, v9, v10);
            sub_2992F4AA4(v12, v13);
          }

          return 1;
        }
      }
    }
  }

  else
  {
    sub_2992EED3C(0);
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    CFSetRemoveAllValues(v14);
  }

  return 1;
}

uint64_t sub_2992995E8(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    CFSetRemoveAllValues(v1);
  }

  return 0;
}

uint64_t sub_299299620(uint64_t result, const __CFString *a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (*(v3 + 5) != 1 || (v4 = *(v3 + 40)) == 0)
    {
      v4 = *(v3 + 32);
    }

    return sub_299384100(v4, a2);
  }

  return result;
}

void sub_299299650(uint64_t a1, const __CFArray *a2)
{
  v2 = *(a1 + 24);
  if (v2 && sub_2992F4224(*(a1 + 24)))
  {

    sub_299347628(v2 + 328, a2);
  }
}

void sub_2992996A8(uint64_t a1, const __CFArray *a2)
{
  v2 = *(a1 + 24);
  if (v2 && sub_2992F4224(*(a1 + 24)))
  {

    sub_299347628(v2 + 232, a2);
  }
}

void sub_299299708(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = a2;
    sub_2993B91E0(v2 + 8, a2);
    v4 = *(v2 + 216);
    if (v4)
    {
      *(v4 + 56) = v3;
    }
  }
}

uint64_t sub_29929974C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_rawCandidate(a2, a2, a3);
  if (v4 && (v7 = **v4, (v8 = __dynamic_cast(v4, &unk_2A1F64300, &unk_2A1F72C30, 0)) != 0))
  {
    (*(*v8 + 248))(v8, 0, 0);
  }

  else
  {
    v9 = objc_msgSend_rawCandidate(a2, v5, v6);
    if (v9)
    {
      v10 = **v9;
    }
  }

  return 0;
}

uint64_t sub_299299858(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = *MEMORY[0x29EDB8ED8];
    values = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    CFDictionarySetValue(values, kMecabraAssetDataFilePathsKey, a2);
    v5 = CFArrayCreate(v4, &values, 1, MEMORY[0x29EDB9000]);
    LOBYTE(v4) = sub_2992BD7BC(*(a1 + 32), 2, v5);
    CFRelease(values);
    CFRelease(v5);
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = sub_299299940(a1, 2, 0);
    if (!result)
    {
      return result;
    }
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    sub_2992F3E1C(v7);
  }

  return 1;
}

uint64_t sub_299299940(uint64_t a1, int a2, const __CFArray *a3)
{
  v4 = sub_2992BD7BC(*(a1 + 32), a2, a3);
  if (v4)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_2992F3E1C(v5);
    }
  }

  return v4;
}

uint64_t sub_299299984(uint64_t result, char a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    *(v2 + 320) = a2;
    *(v2 + 416) = a2;
  }

  return result;
}

void sub_2992999B4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_2992F3FF0(v1);
  }
}

void sub_2992999C8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_2992F3F64(v1, 1);
  }
}

uint64_t sub_2992999F4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_299277300(*(a1 + 8));
    MecabraContextCreateMutable();
  }

  return 0;
}

uint64_t sub_299299B58(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = *(a1 + 24);
  if (result)
  {
    if (a2)
    {
      v9 = *(a2 + 72);
      if (v9)
      {
        v10 = *(result + 16);
        if (*(v10 + 5) != 1 || (v11 = *(v10 + 40)) == 0)
        {
          v11 = *(v10 + 32);
        }

        sub_299384100(v11, v9);
        result = *(a1 + 24);
      }

      v12 = *(a2 + 80);
      if (v12)
      {
        v13 = *(result + 16);
        if (*(v13 + 5) != 1 || (v14 = *(v13 + 40)) == 0)
        {
          v14 = *(v13 + 32);
        }

        sub_2993841C0(v14, v12);
        result = *(a1 + 24);
      }
    }

    v15 = 1 << *(a1 + 8);

    return sub_2992F4274(result, a2, a3, a4);
  }

  return result;
}

void sub_299299C6C(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v5 = objc_msgSend_rawCandidate(a2, a2, a3);
      if ((*(*v5 + 72))(v5) == 2 || (v8 = objc_msgSend_rawCandidate(a2, v6, v7), (*(*v8 + 72))(v8) == 3))
      {
        v9 = *(a1 + 24);
        v10 = objc_msgSend_rawCandidate(a2, v6, v7);

        sub_2992F4AA4(v9, v10);
      }
    }
  }
}

uint64_t sub_299299D34(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || !sub_2992F4224(*(a1 + 24)))
  {
    return 0;
  }

  v4 = *(v1 + 200);

  return sub_2993EEEB8(v4, v2, v3);
}

uint64_t sub_299299DA8(uint64_t a1)
{
  v3 = (a1 + 64);
  v2 = *(a1 + 64);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  sub_299229EC8((a1 + 72), 0);
  sub_2992530BC(v3, 0);
  sub_29929054C((a1 + 32), 0);
  sub_2992926B8((a1 + 24), 0);
  sub_299299368((a1 + 16), 0);
  return a1;
}

uint64_t sub_299299E1C(uint64_t a1, dispatch_time_t a2, uint64_t a3)
{
  sub_299299EA4(a1);
  if (a2)
  {
    v6 = atomic_load((a1 + 40));
    if (v6 == 1)
    {
      v7 = dispatch_group_wait(*(a1 + 8), a2);
      if (a3)
      {
        if (v7)
        {
          (*(a3 + 16))(a3);
        }
      }
    }
  }

  v8 = atomic_load((a1 + 40));
  if (v8 == 2)
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

void sub_299299EA4(uint64_t a1)
{
  v2 = (a1 + 24);
  v4[0] = sub_299299F18;
  v4[1] = 0;
  v3 = a1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v6[0] = v4;
    v6[1] = &v3;
    v5 = v6;
    std::__call_once(v2, &v5, sub_299299FCC);
  }
}

void sub_299299F18(uint64_t a1)
{
  sub_299210DE0(a1 + 136);
  atomic_store(1u, (a1 + 40));
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = sub_299299FFC;
  v4[3] = &unk_29EF10150;
  v4[4] = v5;
  v4[5] = a1;
  dispatch_group_async(v2, v3, v4);
  _Block_object_dispose(v5, 8);
}

uint64_t sub_299299FCC(uint64_t **a1)
{
  v1 = **a1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = (*(*a1)[1] + (v3 >> 1));
  if (v3)
  {
    return (*(*v4 + v2))();
  }

  else
  {
    return v2(v4);
  }
}

void sub_299299FFC(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(v2 + 136);
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  v4 = sub_2993652F8(0xDu);
  v5 = os_signpost_id_make_with_pointer(v4, v2);
  v6 = sub_2993652F8(0xDu);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v6))
    {
      v8 = (v2 + 112);
      if (*(v2 + 135) < 0)
      {
        v8 = *v8;
      }

      *v15 = 136315138;
      *&v15[4] = v8;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "AsyncResourceInit", "Async resource load with key: [%s]", v15, 0xCu);
    }
  }

  v9 = *(*(*(a1 + 32) + 8) + 24);
  v10 = (*(*(v2 + 32) + 16))();
  v11 = *v9;
  *v9 = v10;
  if (v11)
  {
    *v15 = v11 + 7;
    sub_29920E060(v15);
    *v15 = v11 + 4;
    sub_29929A1EC(v15);
    sub_299219AB4(v11 + 1, 0);
    sub_299291748(v11, 0);
    MEMORY[0x29C29BFB0](v11, 0x1060C404B74122BLL);
  }

  atomic_store(2u, (v2 + 40));
  v12 = sub_2993652F8(0xDu);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v12))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v13, OS_SIGNPOST_INTERVAL_END, v5, "AsyncResourceInit", &unk_29945DB9F, v15, 2u);
    }
  }

  std::mutex::unlock(v3);
  v14 = *MEMORY[0x29EDCA608];
}

void sub_29929A1EC(void ***a1)
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
        v6 = v4 - 3;
        sub_29929A278((v4 - 3), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29929A278(uint64_t a1, const void **a2)
{
  if (a2)
  {
    sub_29929A278(a1, *a2);
    sub_29929A278(a1, a2[1]);
    sub_299235628(a2 + 6, 0);

    operator delete(a2);
  }
}

uint64_t sub_29929A2D8(uint64_t a1, dispatch_time_t a2, uint64_t a3)
{
  sub_29929A360(a1);
  if (a2)
  {
    v6 = atomic_load((a1 + 40));
    if (v6 == 1)
    {
      v7 = dispatch_group_wait(*(a1 + 8), a2);
      if (a3)
      {
        if (v7)
        {
          (*(a3 + 16))(a3);
        }
      }
    }
  }

  v8 = atomic_load((a1 + 40));
  if (v8 == 2)
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

void sub_29929A360(uint64_t a1)
{
  v2 = (a1 + 24);
  v4[0] = sub_29929A3D4;
  v4[1] = 0;
  v3 = a1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v6[0] = v4;
    v6[1] = &v3;
    v5 = v6;
    std::__call_once(v2, &v5, sub_29929A488);
  }
}

void sub_29929A3D4(uint64_t a1)
{
  sub_299210DE0(a1 + 136);
  atomic_store(1u, (a1 + 40));
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = sub_29929A4B8;
  v4[3] = &unk_29EF10150;
  v4[4] = v5;
  v4[5] = a1;
  dispatch_group_async(v2, v3, v4);
  _Block_object_dispose(v5, 8);
}

uint64_t sub_29929A488(uint64_t **a1)
{
  v1 = **a1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = (*(*a1)[1] + (v3 >> 1));
  if (v3)
  {
    return (*(*v4 + v2))();
  }

  else
  {
    return v2(v4);
  }
}

void sub_29929A4B8(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(v2 + 136);
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  v4 = sub_2993652F8(0xDu);
  v5 = os_signpost_id_make_with_pointer(v4, v2);
  v6 = sub_2993652F8(0xDu);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v6))
    {
      v8 = (v2 + 112);
      if (*(v2 + 135) < 0)
      {
        v8 = *v8;
      }

      v16 = 136315138;
      v17 = v8;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "AsyncResourceInit", "Async resource load with key: [%s]", &v16, 0xCu);
    }
  }

  v9 = *(*(*(a1 + 32) + 8) + 24);
  v10 = (*(*(v2 + 32) + 16))();
  v11 = *v9;
  *v9 = v10;
  if (v11)
  {
    v12 = sub_29929A674(v11);
    MEMORY[0x29C29BFB0](v12, 0x1020C40984C81BBLL);
  }

  atomic_store(2u, (v2 + 40));
  v13 = sub_2993652F8(0xDu);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v13))
    {
      LOWORD(v16) = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v14, OS_SIGNPOST_INTERVAL_END, v5, "AsyncResourceInit", &unk_29945DB9F, &v16, 2u);
    }
  }

  std::mutex::unlock(v3);
  v15 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29929A674(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    language_modeling::v1::LanguageModelSession::~LanguageModelSession(v2);
    MEMORY[0x29C29BFB0]();
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    language_modeling::v1::LanguageModel::~LanguageModel(v3);
    MEMORY[0x29C29BFB0]();
  }

  return a1;
}

void sub_29929A720(uint64_t a1)
{
  v2 = MEMORY[0x29EDB9000];
  *a1 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  *(a1 + 8) = CFArrayCreateMutable(0, 0, v2);
  *(a1 + 16) = CFArrayCreateMutable(0, 0, v2);
  *(a1 + 32) = 0;
  *(a1 + 24) = CFArrayCreateMutable(0, 0, v2);

  bzero((a1 + 36), 0x258uLL);
}

void sub_29929A7B4(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {

    CFRelease(v5);
  }
}

void sub_29929A81C(const __CFString *a1, uint64_t a2, int a3)
{
  v28 = *MEMORY[0x29EDCA608];
  Length = CFStringGetLength(a1);
  if (a3 != 2)
  {
    CFStringCreateMutableCopy(0, 0, a1);
    operator new[]();
  }

  v7 = Length - 1;
  if (Length >= 1)
  {
    v27 = Length;
    v8 = 0;
    v9 = 0;
    v10 = 4;
    do
    {
      v11 = v10;
      CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v9);
      v13 = 0;
      v14 = &word_299413948;
      while (*v14 != CharacterAtIndex)
      {
        v13 -= 2;
        ++v14;
        if (v13 == -42)
        {
          goto LABEL_11;
        }
      }

      if (-v13 != -2)
      {
        v10 = 0;
        if (v9)
        {
LABEL_39:
          if (v11 >= v10 || v10 == 4)
          {
            v29.length = v9 - v8;
            v29.location = v8;
            v24 = CFStringCreateWithSubstring(0, a1, v29);
            sub_29929B968(v24, a2);
            if (v24)
            {
              CFRelease(v24);
            }

            v8 = v9;
          }
        }

        goto LABEL_47;
      }

LABEL_11:
      v15 = 0;
      v16 = "'1(1)1";
      while (*v16 != CharacterAtIndex)
      {
        v15 -= 2;
        v16 += 2;
        if (v15 == -6)
        {
          goto LABEL_18;
        }
      }

      if (-v15 == -2)
      {
LABEL_18:
        v17 = 0;
        v18 = &word_29941397C;
        while (*v18 != CharacterAtIndex)
        {
          v17 -= 2;
          ++v18;
          if (v17 == -26)
          {
            goto LABEL_25;
          }
        }

        if (-v17 != -2)
        {
          v10 = 2;
          if (v9)
          {
            goto LABEL_39;
          }

          goto LABEL_47;
        }

LABEL_25:
        v19 = &word_299413998;
        v20 = 10;
        while (*v19 != CharacterAtIndex)
        {
          ++v19;
          v20 -= 2;
          if (!v20)
          {
            v19 = &unk_2994139A2;
            break;
          }
        }

        if (v19 == &unk_2994139A2)
        {
          v21 = 0;
        }

        else
        {
          v21 = v19;
        }

        v22 = v21 - &word_299413998 == -2 || v19 == &unk_2994139A2;
        if (v22)
        {
          v10 = 4;
        }

        else
        {
          v10 = 3;
        }

        if (!v9)
        {
          goto LABEL_47;
        }

        goto LABEL_39;
      }

      v10 = 1;
      if (v9)
      {
        goto LABEL_39;
      }

LABEL_47:
      v22 = v9++ == v7;
    }

    while (!v22);
    v30.length = v27 - v8;
    v30.location = v8;
    v25 = CFStringCreateWithSubstring(0, a1, v30);
    sub_29929B968(v25, a2);
    if (v25)
    {
      CFRelease(v25);
    }
  }

  v26 = *MEMORY[0x29EDCA608];
}

void sub_29929B888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29929B904(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  *(a1 + 32) = 0;
}

void sub_29929B968(const __CFString *value, uint64_t a2)
{
  CFArrayAppendValue(*(a2 + 16), value);
  Length = CFStringGetLength(value);
  CharacterAtIndex = CFStringGetCharacterAtIndex(value, 0);
  v6 = 0;
  chars = CharacterAtIndex;
  v7 = &word_299413948;
  while (*v7 != CharacterAtIndex)
  {
    v6 -= 2;
    ++v7;
    if (v6 == -42)
    {
      goto LABEL_9;
    }
  }

  if (-v6 == -2)
  {
LABEL_9:
    CFArrayAppendValue(*a2, &stru_2A1F7E6E8);
    v10 = 0;
    v9 = Length - 1;
    goto LABEL_10;
  }

  v8 = CFStringCreateWithCharacters(0, &chars, 1);
  v19 = v8;
  CFArrayAppendValue(*a2, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = Length - 1;
  v10 = 1;
  --Length;
LABEL_10:
  v11 = CFStringGetCharacterAtIndex(value, v9);
  v12 = 0;
  v18 = v11;
  v13 = &word_299413998;
  while (*v13 != v11)
  {
    v12 -= 2;
    ++v13;
    if (v12 == -10)
    {
      goto LABEL_18;
    }
  }

  if (-v12 == -2)
  {
LABEL_18:
    CFArrayAppendValue(*(a2 + 24), &stru_2A1F7E6E8);
    goto LABEL_19;
  }

  v14 = CFStringCreateWithCharacters(0, &v18, 1);
  v19 = v14;
  CFArrayAppendValue(*(a2 + 24), v14);
  if (v14)
  {
    CFRelease(v14);
  }

  --Length;
LABEL_19:
  v21.location = v10;
  v21.length = Length;
  v15 = CFStringCreateWithSubstring(0, value, v21);
  v19 = v15;
  v16 = CFStringGetLength(v15);
  v17 = *(a2 + 8);
  if (v16)
  {
    CFArrayAppendValue(v17, v15);
  }

  else
  {
    CFArrayAppendValue(v17, &stru_2A1F7E6E8);
  }

  ++*(a2 + 32);
  if (v15)
  {
    CFRelease(v15);
  }
}

void sub_29929BB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

void sub_29929BBA0(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  operator new[]();
}

uint64_t sub_29929C404(uint64_t theChar)
{
  if (theChar)
  {
    v1 = theChar;
    if ((theChar - 58) > 0xFFF5u)
    {
      return 8;
    }

    else
    {
      if (sub_29929C678(theChar))
      {
        return 12;
      }

      if (((v1 & 0xFFDF) - 91) >= 0xFFE6u)
      {
        if ((v1 - 65) >= 0x1A)
        {
          if ((v1 - 97) <= 0x15 && ((1 << (v1 - 97)) & 0x304111) != 0)
          {
            return 6;
          }

          else
          {
            return 7;
          }
        }

        else
        {
          return 11;
        }
      }

      else
      {
        if (v1 > 91)
        {
          if (v1 == 92)
          {
            return 4;
          }

          if (v1 == 94 || v1 == 126)
          {
            return 3;
          }

          return 9;
        }

        if (v1 == 39)
        {
          return 5;
        }

        if (v1 != 45)
        {
          if (v1 == 47)
          {
            return 2;
          }

          return 9;
        }

        return 1;
      }
    }
  }

  return theChar;
}

const char *sub_29929C518(const char *a1, int a2)
{
  if (a2)
  {
    v3 = &unk_2A145F188;
  }

  else
  {
    v3 = &unk_2A145F256;
  }

  v4 = strlen(a1);
  v5 = v4;
  if (!v4)
  {
    return v3;
  }

  v6 = strlen(v3) - v4;
  if (v6 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = v3;
  do
  {
    v9 = v5;
    v10 = v8;
    v11 = a1;
    while (1)
    {
      v13 = *v10++;
      v12 = v13;
      v14 = *v11++;
      if (v12 != v14)
      {
        break;
      }

      if (!--v9)
      {
        return &v3[v7];
      }
    }

    result = 0;
    ++v7;
    ++v8;
  }

  while (v7 != v6);
  return result;
}

uint64_t sub_29929C5DC(const __CFString *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (CFStringCompare(a1, @"zh", 0) == kCFCompareEqualTo)
  {
    return 26;
  }

  if (CFStringCompare(a1, @"sh", 0) == kCFCompareEqualTo)
  {
    return 27;
  }

  if (CFStringCompare(a1, @"ch", 0))
  {
    return CFStringGetCharacterAtIndex(a1, 0) - 97;
  }

  return 28;
}

uint64_t sub_29929C678(UniChar theChar)
{
  v2 = qword_2A1460860;
  if (!qword_2A1460860)
  {
    qword_2A1460860 = CFCharacterSetCreateMutable(0);
    v5.location = 12549;
    v5.length = 37;
    CFCharacterSetAddCharactersInRange(qword_2A1460860, v5);
    v6.location = 713;
    v6.length = 3;
    CFCharacterSetAddCharactersInRange(qword_2A1460860, v6);
    v7.location = 711;
    v7.length = 1;
    CFCharacterSetAddCharactersInRange(qword_2A1460860, v7);
    v8.location = 729;
    v8.length = 1;
    CFCharacterSetAddCharactersInRange(qword_2A1460860, v8);
    v2 = qword_2A1460860;
  }

  return CFCharacterSetIsCharacterMember(v2, theChar);
}

uint64_t sub_29929C700(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x72)
  {
    if (!*a1)
    {
      return 0xFFFFFFFFLL;
    }

    if (v1 == 99 && a1[1] == 104 && !a1[2])
    {
      return 28;
    }

    return (v1 - 97);
  }

  if (v1 != 115)
  {
    if (v1 == 122 && a1[1] == 104 && !a1[2])
    {
      return 26;
    }

    return (v1 - 97);
  }

  if (a1[1] != 104 || a1[2])
  {
    return (v1 - 97);
  }

  return 27;
}

uint64_t sub_29929C790(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = sub_299399A24(a1, a2, 0, a3);
  *v6 = &unk_2A1F6A390;
  *(v6 + 108) = a4;
  *(v6 + 136) = 0;
  *(v6 + 112) = -1;
  *(v6 + 120) = 0;
  *(v6 + 126) = 0;
  *(a1 + 144) = sub_29929C838(v6);
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 40) = 8;
  return a1;
}

__CFString *sub_29929C838(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 16);
  if (!v2)
  {
    return 0;
  }

  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v6 = 15;
  if (v4 >= 0xF)
  {
    v7 = v4 - 15;
  }

  else
  {
    v6 = v4;
    v7 = 0;
  }

  v8 = v7 + v6;
  do
  {
    v9 = sub_299324228(*(a1 + 8), v7);
    if (!MecabraCandidateGetSurface(v9, v10, v11))
    {
      break;
    }

    Surface = MecabraCandidateGetSurface(v9, v12, v13);
    CFStringAppend(Mutable, Surface);
    ++v7;
  }

  while (v7 < v8);
  return Mutable;
}

uint64_t sub_29929C8F4(void *a1)
{
  *a1 = &unk_2A1F6A390;
  v2 = a1[17];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[19];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[32];
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = a1[29];
  if (v6)
  {
    a1[30] = v6;
    operator delete(v6);
  }

  v7 = a1[26];
  if (v7)
  {
    a1[27] = v7;
    operator delete(v7);
  }

  v8 = a1[23];
  if (v8)
  {
    a1[24] = v8;
    operator delete(v8);
  }

  v9 = a1[20];
  if (v9)
  {
    a1[21] = v9;
    operator delete(v9);
  }

  return sub_299399B00(a1);
}

void sub_29929C9DC(void *a1)
{
  sub_29929C8F4(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_29929CA14(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if ((*(a1 + 108) & 4) != 0)
  {
    operator new();
  }

  v4 = *(*(a1 + 8) + 16);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v6 = Count + 1;
      do
      {
        if (*(a1 + 32) <= ((*(a2 + 8) - *a2) >> 3))
        {
          break;
        }

        v7 = sub_299324228(*(a1 + 8), v6 - 2);
        v10 = v7;
        if (v7 && objc_msgSend_rawCandidate(v7, v8, v9))
        {
          v13 = objc_msgSend_rawCandidate(v10, v11, v12);
          v15 = *(a2 + 8);
          v14 = *(a2 + 16);
          if (v15 >= v14)
          {
            v17 = (v15 - *a2) >> 3;
            if ((v17 + 1) >> 61)
            {
              sub_299212A8C();
            }

            v18 = v14 - *a2;
            v19 = v18 >> 2;
            if (v18 >> 2 <= (v17 + 1))
            {
              v19 = v17 + 1;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFF8)
            {
              v20 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v19;
            }

            if (v20)
            {
              sub_29920B86C(a2, v20);
            }

            v21 = (8 * v17);
            *v21 = v13;
            v16 = 8 * v17 + 8;
            v22 = *(a2 + 8) - *a2;
            v23 = v21 - v22;
            memcpy(v21 - v22, *a2, v22);
            v24 = *a2;
            *a2 = v23;
            *(a2 + 8) = v16;
            *(a2 + 16) = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v15 = v13;
            v16 = (v15 + 1);
          }

          *(a2 + 8) = v16;
        }

        --v6;
      }

      while (v6 > 1);
    }
  }
}

void sub_29929CC48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29929CC94(uint64_t a1)
{
  sub_299399E74(a1);
  *(a1 + 104) = 0;
  v2 = *(a1 + 8);
  if (!v2)
  {
    return;
  }

  if (*(v2 + 64) == 21)
  {
LABEL_6:
    *(a1 + 131) = 257;
    return;
  }

  v3 = sub_29939A550(a1);
  if (!v3)
  {
    goto LABEL_55;
  }

  v4 = v3;
  if ((*(*v3 + 72))(v3) == 6 || (*(*v4 + 72))(v4) == 7)
  {
    goto LABEL_6;
  }

  if (!(*(*v4 + 24))(v4))
  {
LABEL_55:
    *(a1 + 128) = 1;
    return;
  }

  v5 = *(a1 + 144);
  if (v5 && CFStringGetLength(v5) >= 1)
  {
    operator new();
  }

  if ((*(a1 + 108) & 8) != 0 || (v6 = sub_29939A550(a1), (*(*v6 + 72))(v6) == 6) || (*(*v6 + 72))(v6) == 7 || (v7 = (*(*v6 + 24))(v6)) == 0 || !CFStringGetLength(v7))
  {
LABEL_57:
    LOBYTE(v9) = 0;
    goto LABEL_58;
  }

  v8 = *(a1 + 24);
  v9 = *(v8 + 40);
  if (v9)
  {
    sub_299210C88(*(v8 + 40));
    v10 = atomic_load(v9 + 10);
    if (v10 == 2)
    {
      v122 = *v9;
      if (*v9)
      {
        v11 = *(a1 + 96);
        Count = CFArrayGetCount(v11);
        v125 = *MEMORY[0x29EDB8ED8];
        Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
        v127 = Mutable;
        if (Count >= 1)
        {
          v14 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v11, --Count);
            if (!sub_2992364F0(ValueAtIndex))
            {
              break;
            }

            if (v14)
            {
              CFStringInsert(Mutable, 0, @" ");
            }

            CFStringInsert(Mutable, 0, ValueAtIndex);
            ++v14;
          }

          while (Count > 0);
        }

        Length = CFStringGetLength(Mutable);
        cf = Mutable;
        v17 = v125;
        if (!Length)
        {
          goto LABEL_109;
        }

        *(a1 + 56) = *(a1 + 48);
        v121 = (a1 + 48);
        v18 = *(*(a1 + 24) + 120);
        (*(*v18 + 16))(v18, Mutable, 0, Length);
        CFArrayRemoveAllValues(*(a1 + 96));
        do
        {
          if (!(*(*v18 + 24))(v18))
          {
            break;
          }

          v144.location = (*(*v18 + 32))(v18);
          v144.length = v19;
          v20 = CFStringCreateWithSubstring(v17, Mutable, v144);
          v21 = 0;
          p_isa = &v20->isa;
          while (1)
          {
            v22 = CFStringGetLength(v20);
            if (v22 <= v21)
            {
              break;
            }

            if ((CFStringGetCharacterAtIndex(v20, v21) & 0xF800 | 0x400) == 0xDC00)
            {
              *(a1 + 56) = *(a1 + 48);
              CFArrayRemoveAllValues(*(a1 + 96));
              goto LABEL_48;
            }

            ++v21;
          }

          v23 = CFStringCompare(v20, @"i", 0) ? v20 : @"I";
          v24 = (*(*v122 + 16))(v122, v23);
          v26 = *(a1 + 56);
          v25 = *(a1 + 64);
          if (v26 >= v25)
          {
            v28 = *v121;
            v29 = v26 - *v121;
            v30 = v29 >> 2;
            v31 = (v29 >> 2) + 1;
            if (v31 >> 62)
            {
              sub_299212A8C();
            }

            v32 = v25 - v28;
            if (v32 >> 1 > v31)
            {
              v31 = v32 >> 1;
            }

            v33 = v32 >= 0x7FFFFFFFFFFFFFFCLL;
            v34 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v33)
            {
              v34 = v31;
            }

            if (v34)
            {
              sub_2992F86B0(v121, v34);
            }

            *(4 * v30) = v24;
            v27 = 4 * v30 + 4;
            memcpy(0, v28, v29);
            v35 = *(a1 + 48);
            *(a1 + 48) = 0;
            *(a1 + 56) = v27;
            *(a1 + 64) = 0;
            if (v35)
            {
              operator delete(v35);
            }
          }

          else
          {
            *v26 = v24;
            v27 = (v26 + 4);
          }

          v17 = v125;
          *(a1 + 56) = v27;
          CFArrayAppendValue(*(a1 + 96), v20);
          Mutable = cf;
LABEL_48:
          if (v20)
          {
            CFRelease(v20);
          }
        }

        while (v22 <= v21);
        v36 = *(a1 + 48);
        v37 = *(a1 + 56);
        v38 = (v37 - v36) >> 2;
        if (v38 && (v38 != 1 || *(v37 - 4)))
        {
          sub_29920D3D8(v121, v36, byte_29940CE70);
          CFArrayInsertValueAtIndex(*(a1 + 96), 0, &stru_2A1F7E6E8);
          LOBYTE(v9) = 1;
        }

        else
        {
LABEL_109:
          LOBYTE(v9) = 0;
        }

        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_58;
      }
    }

    goto LABEL_57;
  }

LABEL_58:
  *(a1 + 104) = v9;
  if (atomic_load_explicit(&qword_2A1460868, memory_order_acquire) != -1)
  {
    v127 = &v134;
    p_isa = &v127;
    std::__call_once(&qword_2A1460868, &p_isa, sub_29929E444);
  }

  v39 = (*(*v4 + 24))(v4);
  p_isa = 0;
  p_p_isa = &p_isa;
  v140 = 0x2000000000;
  LOBYTE(v141) = 1;
  v127 = MEMORY[0x29EDCA5F8];
  v128 = 0x40000000;
  v129 = sub_29929E350;
  v130 = &unk_29EF101C8;
  v131 = &p_isa;
  v132 = v39;
  sub_29927708C(v39, 1, &v127);
  v40 = *(p_p_isa + 24);
  _Block_object_dispose(&p_isa, 8);
  *(a1 + 128) = v40;
  v41 = sub_29939A550(a1);
  v42 = (*(*v41 + 72))(v41);
  v43 = (*(*v41 + 24))(v41);
  v44 = -1;
  if (v43 && v42 != 5)
  {
    v45 = (*(*v41 + 24))(v41);
    v44 = CFStringGetLength(v45);
  }

  *(a1 + 112) = v44;
  if ((v42 - 4) >= 0xFFFFFFFE)
  {
    if ((*(*v41 + 192))(v41))
    {
      v46 = (*(*v41 + 192))(v41);
      v47 = (*(*v41 + 184))(v41);
      Copy = CFStringCreateWithFormat(0, 0, @"%@%@", v46, v47);
    }

    else
    {
      v49 = *MEMORY[0x29EDB8ED8];
      v50 = (*(*v41 + 184))(v41);
      Copy = CFStringCreateCopy(v49, v50);
    }

    *(a1 + 136) = Copy;
    if (v42 == 3)
    {
      *(a1 + 129) = ((*(*v41 + 104))(v41) & 0x18) != 0;
      *(a1 + 130) = ((*(*v41 + 104))(v41) & 0x400) != 0;
      *(a1 + 120) = CFStringGetLength(*(a1 + 136));
    }
  }

  if (*(a1 + 130) == 1)
  {
    *(a1 + 131) = 257;
  }

  if (*(a1 + 120) > 0)
  {
    goto LABEL_72;
  }

  v57 = *(*(a1 + 8) + 16);
  if (!v57)
  {
    goto LABEL_72;
  }

  v58 = CFArrayGetCount(v57);
  if (!v58)
  {
    goto LABEL_72;
  }

  v59 = v58;
  v60 = sub_29939A550(a1);
  if (!v60)
  {
    goto LABEL_87;
  }

  v61 = v60;
  if ((*(*v60 + 72))(v60) == 5)
  {
    goto LABEL_72;
  }

  if ((*(*v61 + 72))(v61) != 2)
  {
LABEL_87:
    v62 = *(a1 + 108);
    if (v59 == 1 && (v62 & 4) == 0)
    {
      goto LABEL_89;
    }

    v66 = (v59 - 2) & ~((v59 - 2) >> 63);
    if (v59 - 1 >= v66)
    {
      while (1)
      {
        v67 = sub_299324228(*(a1 + 8), --v59);
        if (v67)
        {
          v70 = v67;
          if (objc_msgSend_rawCandidate(v67, v68, v69))
          {
            v73 = objc_msgSend_rawCandidate(v70, v71, v72);
            v74 = (*(*v73 + 24))(v73);
            if (sub_299277964(v74) > 1)
            {
              break;
            }
          }
        }

        if (v59 <= v66)
        {
          goto LABEL_72;
        }
      }

      if ((v62 & 4) == 0)
      {
        goto LABEL_89;
      }
    }

LABEL_72:
    v51 = *(a1 + 144);
    if (v51)
    {
      v52 = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], v51);
      *(a1 + 152) = v52;
      if (v52 && CFStringGetLength(v52))
      {
        v53 = *(*(*(a1 + 24) + 88) + 8);
        v54 = CFStringGetLength(*(a1 + 152));
        v55 = *(a1 + 152);
        if (v55 && (v56 = *(a1 + 120), v56 >= 1))
        {
          if ((*(a1 + 129) & 1) != 0 || *(a1 + 136) && (*(a1 + 108) & 8) != 0)
          {
            *(a1 + 132) = 1;
          }

          v127 = v56;
          sub_299266D00((a1 + 160), &v127);
        }

        else
        {
          if ((*(a1 + 108) & 2) == 0)
          {
            v127 = 0;
            sub_299276A84(v55);
          }

          if (v54 > 0)
          {
            for (i = v54; i > 0; i -= CFStringGetRangeOfComposedCharactersAtIndex(*(a1 + 152), v54 - i).length)
            {
              v127 = i;
              sub_299266D00((a1 + 160), &v127);
            }
          }
        }
      }
    }

    else
    {
      *(a1 + 152) = 0;
    }

    return;
  }

LABEL_89:
  v63 = *(a1 + 8);
  if (*(v63 + 16))
  {
    v64 = CFArrayGetCount(*(v63 + 16));
    v63 = *(a1 + 8);
  }

  else
  {
    v64 = 0;
  }

  v75 = sub_299324228(v63, v64 - 1);
  if (MecabraCandidateIsEmojiCandidate(v75, v76, v77) || (v80 = objc_msgSend_rawCandidate(v75, v78, v79), (*(*v80 + 72))(v80) == 6) || (*(*v80 + 72))(v80) == 7)
  {
    *(a1 + 131) = 1;
  }

  else
  {
    v83 = *(*(a1 + 24) + 8);
    if (*(v83 + 5) != 1 || (v84 = *(v83 + 40)) == 0)
    {
      v84 = *(v83 + 32);
    }

    cfa = *(v84 + 32);
    v85 = objc_msgSend_rawCandidate(v75, v81, v82);
    v86 = sub_29939A5C8(a1, v85);
    v87 = v86;
    if (!v86)
    {
      v88 = *MEMORY[0x29EDB8ED8];
      v89 = (*(*v85 + 3))(v85);
      v86 = CFStringCreateCopy(v88, v89);
    }

    *(a1 + 152) = v86;
    *(a1 + 133) = v87 != 0;
    v90 = CFStringGetLength(v86);
    v91 = (*(*v85 + 6))(v85);
    v92 = *(a1 + 24);
    v126 = *(*(v92 + 11) + 8);
    v93 = *v92;
    v94 = (*(*v85 + 4))(v85);
    if (v91)
    {
      v95 = v94;
      v96 = 0;
      while (1)
      {
        v97 = (*(*v85 + 15))(v85, v96);
        if (!v97)
        {
          break;
        }

        v98 = v97;
        v99 = (*(*v97 + 24))(v97);
        if (v99 < 0 || v99 + v100 > v90)
        {
          break;
        }

        v134 = v90 - (*(*v98 + 24))(v98);
        if (v134 <= 0xE)
        {
          v127 = 0;
          v128 = &v127;
          v129 = 0x2000000000;
          v130 = 0;
          p_isa = MEMORY[0x29EDCA5F8];
          p_p_isa = 0x40000000;
          v140 = sub_29929E010;
          v141 = &unk_29EF10178;
          v142 = &v127;
          v143 = a1;
          sub_299367848(v98, v126, v93, v95, 0, 0, &p_isa);
          sub_299266D00((a1 + 160), &v134);
          sub_299266D00((a1 + 184), (v128 + 24));
          _Block_object_dispose(&v127, 8);
        }

        if (v91 == ++v96)
        {
          goto LABEL_130;
        }
      }

      CFRelease(*(a1 + 152));
      *(a1 + 152) = 0;
      *(a1 + 131) = 1;
    }

LABEL_130:
    if (*(a1 + 152))
    {
      v101 = v90 > 0xE;
    }

    else
    {
      v101 = 1;
    }

    if (!v101)
    {
      v134 = 0;
      v135 = &v134;
      v136 = 0x2000000000;
      v137 = 0;
      v102 = cfa - 1;
      if (cfa != 1)
      {
        v103 = v64 - v102;
        if ((v103 & 0x8000000000000000) == 0)
        {
          do
          {
            v104 = sub_299324228(*(a1 + 8), v103);
            v107 = objc_msgSend_rawCandidate(v104, v105, v106);
            if ((*(*v107 + 72))(v107) == 3 || (*(*v107 + 72))(v107) == 6 || (*(*v107 + 72))(v107) == 7)
            {
              break;
            }

            v108 = (*(*v107 + 32))(v107);
            v109 = CFStringGetLength(v108);
            v110 = (*(*v107 + 32))(v107);
            for (j = (*(*v107 + 48))(v107) - 1; ; --j)
            {
              if (j < 0 || v135[3] >= v102)
              {
                v116 = 1;
                goto LABEL_148;
              }

              v112 = (*(*v107 + 120))(v107, j);
              v113 = v112;
              if (!v112)
              {
                break;
              }

              v114 = (*(*v112 + 24))(v112);
              v116 = 0;
              if (v114 < 0 || v114 + v115 > v109)
              {
                goto LABEL_148;
              }

              v127 = MEMORY[0x29EDCA5F8];
              v128 = 0x40000000;
              v129 = sub_29929E108;
              v130 = &unk_29EF101A0;
              v131 = &v134;
              v132 = a1;
              v133 = cfa - 1;
              sub_299367848(v113, v126, v93, v110, 0, 1, &v127);
            }

            v116 = 0;
LABEL_148:
            if (!v116)
            {
              break;
            }

            if (v103 < 1)
            {
              break;
            }

            --v103;
          }

          while (v135[3] < v102);
        }
      }

      _Block_object_dispose(&v134, 8);
    }

    v117 = *(a1 + 184);
    v118 = (*(a1 + 192) - v117) >> 3;
    if (v118 >= 2)
    {
      v119 = *(*(a1 + 192) - 8);
      v120 = v117 - 16;
      do
      {
        v119 += *(v120 + 8 * v118);
        *(v120 + 8 * v118--) = v119;
      }

      while (v118 != 1);
    }
  }
}

void sub_29929DF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29924A4BC(va, 0);
  _Unwind_Resume(a1);
}

void sub_29929E010(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 40);
  v7 = v5[27];
  v6 = v5[28];
  if (v7 >= v6)
  {
    v9 = v5[26];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 2;
    v12 = v11 + 1;
    if ((v11 + 1) >> 62)
    {
      sub_299212A8C();
    }

    v13 = v6 - v9;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFFCLL;
    v15 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_2992F86B0((v5 + 26), v15);
    }

    v16 = (v7 - v9) >> 2;
    v17 = (4 * v11);
    v18 = (4 * v11 - 4 * v16);
    *v17 = a4;
    v8 = v17 + 1;
    memcpy(v18, v9, v10);
    v19 = v5[26];
    v5[26] = v18;
    v5[27] = v8;
    v5[28] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v7 = a4;
    v8 = v7 + 4;
  }

  v5[27] = v8;
  ++*(*(*(a1 + 32) + 8) + 24);
}

void sub_29929E108(void *a1, uint64_t a2, uint64_t a3, int a4, _BYTE *a5)
{
  v19 = a4;
  v7 = a1[5];
  sub_29920D3D8((v7 + 208), *(v7 + 208), &v19);
  v18 = 1;
  sub_299266D00((v7 + 184), &v18);
  v8 = *(v7 + 160);
  v9 = *(v7 + 168);
  v10 = *(v7 + 176);
  if (v9 >= v10)
  {
    v13 = ((v9 - v8) >> 3) + 1;
    if (!(v13 >> 61))
    {
      v14 = v10 - v8;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        sub_299236FB8(v7 + 160, v15);
      }

      sub_299236FB8(v7 + 160, 1uLL);
    }

    sub_299212A8C();
  }

  if (v8 == v9)
  {
    *v9 = 0;
    *(v7 + 168) = v9 + 8;
  }

  else
  {
    v11 = v8 + 8;
    if (v9 < 8)
    {
      v12 = *(v7 + 168);
    }

    else
    {
      *v9 = *(v9 - 1);
      v12 = v9 + 8;
    }

    *(v7 + 168) = v12;
    if (v9 != v11)
    {
      memmove(v8 + 8, v8, v9 - v11);
    }

    *v8 = 0;
  }

  v16 = *(a1[4] + 8);
  v17 = *(v16 + 24) + 1;
  *(v16 + 24) = v17;
  if (v17 >= a1[6])
  {
    *a5 = 1;
  }
}

void sub_29929E2DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29929E350(uint64_t a1, CFRange range, _BYTE *a3)
{
  v5 = CFStringCreateWithSubstring(*MEMORY[0x29EDB8ED8], *(a1 + 40), range);
  if (CFStringGetLength(v5) > 1 || (v6 = qword_2A1460870, v8.length = CFStringGetLength(v5), v8.location = 0, !CFStringFindCharacterFromSet(v5, v6, v8, 0, 0)) || CFStringGetLength(v5) == 1 && (CharacterAtIndex = CFStringGetCharacterAtIndex(v5, 0), sub_299236384(CharacterAtIndex)))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  *a3 = 1;
  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_29929E42C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

void sub_29929E444()
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
  MutableCopy = CFCharacterSetCreateMutableCopy(0, Predefined);
  v2 = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  CFCharacterSetUnion(MutableCopy, v2);
  v3 = CFCharacterSetGetPredefined(kCFCharacterSetSymbol);
  CFCharacterSetUnion(MutableCopy, v3);
  qword_2A1460870 = MutableCopy;
}

_DWORD *sub_29929E4A8(_DWORD *result, unsigned __int16 *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  *result = 0;
  if ((a3 & 1) == 0)
  {
    if (!a3)
    {
      v10 = 0;
LABEL_11:
      *a6 = v10;
      sub_29929BBA0(a4, v10, result);
    }

    v6 = a3 >> 1;
    v7 = a4;
    while (1)
    {
      v9 = *a2++;
      v8 = v9;
      if (v9 != 42)
      {
        *v7++ = v8;
      }

      v10 = (v7 - a4) >> 1;
      if (v10 >= a5)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t sub_29929E50C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 1) == 0)
  {
    sub_29929BBA0(a5, a6 >> 1, a4);
  }

  return 0;
}

uint64_t sub_29929E60C(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1460878, memory_order_acquire) & 1) == 0)
  {
    v5 = a1;
    v6 = __cxa_guard_acquire(&qword_2A1460878);
    a1 = v5;
    if (v6)
    {
      qword_2A1460888 = 0;
      qword_2A1460890 = 0;
      qword_2A1460880 = 0;
      sub_29929E7D0();
    }
  }

  v1 = qword_2A1460880;
  if (qword_2A1460880 != qword_2A1460888)
  {
    while (*v1 != a1 && v1[1] != a1)
    {
      v1 += 2;
      if (v1 == qword_2A1460888)
      {
        goto LABEL_11;
      }
    }
  }

  if (v1 == qword_2A1460888)
  {
LABEL_11:
    result = 0;
  }

  else
  {
    result = v1[*v1 == a1];
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29929E79C(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29929E860(_Unwind_Exception *exception_object)
{
  if (qword_2A1460880)
  {
    qword_2A1460888 = qword_2A1460880;
    operator delete(qword_2A1460880);
  }

  _Unwind_Resume(exception_object);
}

void sub_29929E884(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
  v52 = *MEMORY[0x29EDCA608];
  v35 = **(a2 + 32);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  __src = 0;
  v41 = 0;
  v42 = 0;
  memset(__p, 0, sizeof(__p));
  if (*a3 == 1)
  {
    v37 = *(a3 + 4);
    v9 = *(a3 + 72);
    v10 = *(a3 + 80);
    v11 = *(a3 + 56);
    v12 = *(a3 + 64);
    sub_2992A08E0(&v46, *(a3 + 16), *(a3 + 24), &v43);
    sub_29925493C(&v46, v9, &v9[v10], &__src);
    sub_29925493C(&v46, v11, &v11[v12], __p);
    v36 = *(a3 + 8);
    v13 = (v41 - __src) >> 1;
  }

  else
  {
    v13 = 0;
  }

  v38 = v13;
  sub_299218E20(&__src, v13 + a5);
  if (a5)
  {
    v14 = 2 * a5;
    do
    {
      v15 = *a4;
      if (v15 != 32)
      {
        v16 = v41;
        if (v41 >= v42)
        {
          v18 = __src;
          v19 = v41 - __src;
          v20 = (v41 - __src) >> 1;
          if (v20 <= -2)
          {
            sub_299212A8C();
          }

          if (v42 - __src <= v20 + 1)
          {
            v21 = v20 + 1;
          }

          else
          {
            v21 = v42 - __src;
          }

          if (v42 - __src >= 0x7FFFFFFFFFFFFFFELL)
          {
            v22 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v21;
          }

          if (v22)
          {
            sub_299212A48(&__src, v22);
          }

          *(2 * v20) = v15;
          v17 = 2 * v20 + 2;
          memcpy(0, v18, v19);
          v23 = __src;
          __src = 0;
          v41 = v17;
          v42 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v41 = v15;
          v17 = (v16 + 2);
        }

        v41 = v17;
      }

      ++a4;
      v14 -= 2;
    }

    while (v14);
  }

  if (v41 - __src == 2)
  {
    v24 = *__src;
  }

  if (__src)
  {
    v25 = ((v41 - __src) >> 1) - v38;
  }

  else
  {
    v25 = 0;
  }

  sub_299327584(*(a2 + 16), __src + v38, v25, &v46);
  v26 = v44 - v43;
  sub_29929EF74(&v43, 0xCCCCCCCCCCCCCCCDLL * ((v44 - v43) >> 3) + ((v47 - v46) >> 4));
  v27 = v46;
  if (v47 != v46)
  {
    v28 = 0;
    v29 = 8;
    do
    {
      v30 = v43;
      v31 = v43 + v26;
      *(v31 + 4) = 0;
      *v31 = 0u;
      *(v31 + 1) = 0u;
      v32 = *&v27[v29];
      *(v31 + 12) = v32;
      *(v31 + 37) = 513;
      sub_299327C4C(*(a2 + 16), *&v27[v29 - 8], v32, buf);
      if (v51 >= 0)
      {
        v33 = buf;
      }

      else
      {
        v33 = *buf;
      }

      if (v51 >= 0)
      {
        v34 = v51;
      }

      else
      {
        v34 = v50;
      }

      sub_29925493C(&v48, v33, &v33[2 * v34], __p);
      *&v30[v26 + 28] = v34;
      if (v51 < 0)
      {
        operator delete(*buf);
      }

      ++v28;
      v27 = v46;
      v26 += 40;
      v29 += 16;
    }

    while (v28 < (v47 - v46) >> 4);
  }

  if (v27)
  {
    v47 = v27;
    operator delete(v27);
  }

  operator new();
}

void sub_29929EE90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  (*(*v30 + 16))(v30);
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

void sub_29929EF74(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_2992A0A28(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 40 * a2;
  }
}

void sub_29929EFB0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v43[4] = *MEMORY[0x29EDCA608];
  *a3 = &unk_2A1F65118;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 1065353216;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = 0;
  v4 = *(a1 + 40);
  if (v4 && ((*(*v4 + 48))(v4) & 1) != 0)
  {
    v6 = a2[1];
    if (a2[2] == v6)
    {
LABEL_17:
      (*(**(a1 + 40) + 32))(*(a1 + 40), a2);
      (*(**(a1 + 40) + 88))(*(a1 + 40));
      v18 = *(a1 + 48);
      v32 = xmmword_2994018E0;
      *&v33 = 10;
      DWORD2(v33) = 1077936128;
      v43[0] = &unk_2A1F6A460;
      v43[3] = v43;
      (*(*v18 + 16))(&v41);
      sub_29921F0A8(v43);
      BYTE8(v32) = 0;
      *&v32 = 0;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0;
      v19 = v41;
      for (i = v42; v19 != i; v19 += 32)
      {
        if (*(a1 + 56))
        {
          v21 = *(v19 + 23);
          if (v21 < 0)
          {
            v22 = *v19;
            v21 = *(v19 + 8);
          }

          else
          {
            v22 = v19;
          }

          if (sub_29929F550(a1, v22, v21))
          {
            continue;
          }
        }

        v23 = *(v19 + 23);
        if (v23 < 0)
        {
          v24 = *v19;
          v23 = *(v19 + 8);
        }

        else
        {
          v24 = v19;
        }

        sub_299251274(v24, v23, __p);
        if (v31 >= 0)
        {
          v25 = __p;
        }

        else
        {
          v25 = __p[0];
        }

        if (v31 >= 0)
        {
          v26 = v31;
        }

        else
        {
          v26 = __p[1];
        }

        v27 = **(a1 + 8);
        sub_29929E884(&v29, a1, &v32, v25, v26);
      }

      *&v32 = &v41;
      sub_29921EB1C(&v32);
    }

    else
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = *(a2[10] + 8 * v8);
        v10 = a2[4];
        if (v9 >= (a2[5] - v10) >> 1)
        {
          v11 = 0;
          v12 = 0;
        }

        else
        {
          v11 = v10 + 2 * v9;
          v12 = v10 ? *(v6 + v7 + 24) : 0;
        }

        v13 = *(a2[13] + 8 * v8);
        v14 = a2[7];
        if (v13 >= (a2[8] - v14) >> 1)
        {
          v15 = 0;
          v17 = 0;
        }

        else
        {
          v15 = v14 + 2 * v13;
          v16 = *(v6 + v7 + 28);
          v17 = v14 ? v16 : 0;
        }

        if (((*(**(a1 + 24) + 32))(*(a1 + 24), v15, v17, v11, v12) & 4) == 0)
        {
          break;
        }

        ++v8;
        v6 = a2[1];
        v7 += 40;
        if (v8 >= 0xCCCCCCCCCCCCCCCDLL * ((a2[2] - v6) >> 3))
        {
          goto LABEL_17;
        }
      }
    }
  }

  v28 = *MEMORY[0x29EDCA608];
}

void sub_29929F480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_29921F0A8(v36 - 128);
  sub_29921D794(v35);
  _Unwind_Resume(a1);
}

BOOL sub_29929F550(uint64_t a1, char *__s2, uint64_t a3)
{
  if (a3)
  {
    v4 = a3 - (__s2[a3 - 1] == 32);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 56);
  v6 = **v5;
  if (v6)
  {
    v7 = 0;
    v8 = **v5;
    while (1)
    {
      v9 = v7 + (v8 >> 1);
      v10 = v5[1];
      v11 = (*v5 + 1);
      v12 = *(v11 + 8 * v9);
      v13 = v10 >= v12;
      v14 = v10 - v12;
      if (!v13)
      {
        break;
      }

      v15 = *(v11 + 8 * v9 + 4);
      if (v14 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      v17 = sub_29920BA14(*v5 + v12, v16, __s2, v4);
      if (v17 >= 0)
      {
        v8 >>= 1;
      }

      else
      {
        v8 += ~(v8 >> 1);
      }

      if (v17 < 0)
      {
        v7 = v9 + 1;
      }

      if (!v8)
      {
        goto LABEL_19;
      }
    }

LABEL_27:
    sub_2991D6EC4("string_view::substr");
  }

  v7 = 0;
LABEL_19:
  if (v7 == v6)
  {
    return 0;
  }

  v19 = v5[1];
  v20 = (*v5 + 1);
  v21 = *(v20 + 8 * v7);
  v13 = v19 >= v21;
  v22 = v19 - v21;
  if (!v13)
  {
    goto LABEL_27;
  }

  v23 = *(v20 + 8 * v7 + 4);
  if (v22 >= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  return (sub_29920BA14(__s2, v4, *v5 + v21, v24) & 0x80u) == 0;
}

uint64_t sub_29929F68C(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 24) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_29929F6E0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v100[0] = *MEMORY[0x29EDCA608];
  *a6 = &unk_2A1F65118;
  *(a6 + 8) = 0u;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 1065353216;
  *(a6 + 56) = 0;
  *(a6 + 64) = 0;
  *(a6 + 48) = 0;
  v7 = a1[5];
  if (v7)
  {
    v12 = (*(*v7 + 48))(v7) ^ 1;
    if (!a3)
    {
      LOBYTE(v12) = 1;
    }

    if ((v12 & 1) == 0 && (*(*a3 + 408))(a3) != 1 && ((*sub_299237120() & 1) != 0 || (*(a1[1] + 3) & 2) != 0))
    {
      if ((v13 = (*(*a3 + 48))(a3)) == 0 || (v14 = (*(*a3 + 560))(a3, v13 - 1), sub_299255778(0), *(v14 + 38) == 1) || ((v15 = *(v14 + 30), WORD2(qword_2A1461E20) <= v15) ? (v16 = HIWORD(qword_2A1461E20) >= v15) : (v16 = 0), !v16))
      {
        (*(*a1[5] + 32))(a1[5], a2);
        v85 = 1;
        v86 = (*(*a3 + 112))(a3);
        v87 = (*(*a3 + 200))(a3);
        v17 = (*(*a3 + 304))(a3);
        v88 = 0;
        v89 = 0;
        v90 = 0;
        sub_29921E8E0(&v88, *v17, v17[1], 0xCCCCCCCCCCCCCCCDLL * ((v17[1] - *v17) >> 3));
        v18 = *(a3 + 64);
        v19 = *(a3 + 87);
        if (v19 >= 0)
        {
          v18 = a3 + 64;
        }

        if (v19 < 0)
        {
          v19 = *(a3 + 72);
        }

        v91 = v18;
        v92 = v19;
        v93 = (*(*a3 + 552))(a3);
        v94 = v20;
        v95 = (*(*a3 + 544))(a3);
        v96 = v21;
        memset(__p, 0, 48);
        (*(*a1[5] + 16))(v81);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        __p[0] = v81[0];
        *&__p[1] = *&v81[1];
        v22 = v88;
        v23 = v89;
        if (v88 == v89 || v81[0] == v81[1] || !*(v81[1] - 1))
        {
          goto LABEL_71;
        }

        v79 = a1[5];
        v24 = (*(**(*(v79 + 8) + 8) + 512))(*(*(v79 + 8) + 8));
        if (v25 >= v25 - 3)
        {
          v25 -= 3;
        }

        sub_299251274(v24, v25, v81);
        v26 = v23 - v22;
        v27 = 0xCCCCCCCCCCCCCCCDLL * ((v23 - v22) >> 3);
        v28 = v27 - 1;
        v29 = v81[0];
        v30 = HIBYTE(v81[2]);
        if (SHIBYTE(v81[2]) >= 0)
        {
          v31 = HIBYTE(v81[2]);
        }

        else
        {
          v31 = v81[1];
        }

        if (v31)
        {
          if (v26 >= 41)
          {
            v32 = *(v88 + 20 * v28 + 12);
            if (v31 > v32)
            {
              v33 = v27 - 2;
              v34 = (v88 + 40 * v27 - 56);
              while (1)
              {
                v35 = *v34;
                v34 -= 20;
                v32 += v35;
                if ((HIBYTE(v81[2]) & 0x80) != 0)
                {
                  v36 = v81[1];
                  if (v32 == v81[1])
                  {
                    goto LABEL_44;
                  }
                }

                else
                {
                  v36 = HIBYTE(v81[2]);
                  if (v32 == HIBYTE(v81[2]))
                  {
                    goto LABEL_45;
                  }
                }

                if (v32 > v36)
                {
                  break;
                }

                v37 = v33-- <= 0;
                if (v37)
                {
                  goto LABEL_43;
                }
              }

              v38 = sub_2993652F8(0xAu);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                v39 = sub_2993652F8(0xAu);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  sub_2993581C0(*(v79 + 8), v81);
                  v78 = v81;
                  if (SHIBYTE(v81[2]) < 0)
                  {
                    v78 = v81[0];
                  }

                  LODWORD(v98) = 136315138;
                  *(&v98 + 4) = v78;
                  _os_log_debug_impl(&dword_29918C000, v39, OS_LOG_TYPE_DEBUG, "\t subwords %s", &v98, 0xCu);
                  if (SHIBYTE(v81[2]) < 0)
                  {
                    operator delete(v81[0]);
                  }
                }
              }

              v28 = -1;
            }
          }
        }

LABEL_43:
        v33 = v28;
        if (v30 < 0)
        {
LABEL_44:
          operator delete(v29);
        }

LABEL_45:
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }

        v40 = 0;
        if (v33)
        {
          v41 = v88;
          v42 = 26;
          v43 = v33;
          do
          {
            v40 += *(v88 + v42);
            v42 += 40;
            --v43;
          }

          while (v43);
          if (a5 < v40)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v41 = v88;
        }

        v44 = a4 + 2 * v40;
        v45 = a5 - v40;
        *&v98 = v44;
        *(&v98 + 1) = v45;
        v46 = 0xCCCCCCCCCCCCCCCDLL * ((v89 - v41) >> 3);
        v37 = v46 > v33;
        v47 = v46 - v33;
        if (!v37)
        {
          goto LABEL_115;
        }

        v48 = 0;
        v49 = &v41[40 * v33 + 26];
        do
        {
          v50 = *v49;
          v49 += 20;
          v48 += v50;
          --v47;
        }

        while (v47);
        if (v45 >= v48)
        {
LABEL_115:
          sub_299216DAC(&v98, 0, 0, 0, v81);
          if (SHIBYTE(__p[5]) < 0)
          {
            operator delete(__p[3]);
          }

          *&__p[3] = *v81;
          __p[5] = v81[2];
          v51 = __p[1];
          if (__p[0] == __p[1] || (v52 = __p[1] - 4, *(*(v79 + 8) + 52) != *(__p[1] - 1)) || (__p[1] = __p[1] - 4, v51 -= 4, __p[0] != v52))
          {
            if (v89 - v88 > 79)
            {
              v53 = 0xCCCCCCCCCCCCCCCDLL * ((v89 - v88) >> 3) - v33;
              if (v53 >= 1)
              {
                v54 = v92;
                v55 = v94;
                v56 = (v89 - 16);
                v57 = 0xCCCCCCCCCCCCCCCDLL * ((v89 - v88) >> 3) - v33;
                v58 = v96;
                do
                {
                  v54 -= v56[1];
                  v55 -= v56[2];
                  v59 = *v56;
                  v56 -= 20;
                  v58 -= v59;
                  --v57;
                }

                while (v57);
                v89 -= 40 * v53;
                v92 = v54;
                v94 = v55;
                v96 = v58;
              }

              __p[1] = v51 - 4;
            }

            if (SHIBYTE(__p[5]) >= 0)
            {
              v60 = SHIBYTE(__p[5]);
            }

            else
            {
              v60 = __p[4];
            }

LABEL_72:
            if (v60 && v85 == 1 && v88 != v89 && __p[0] != __p[1])
            {
              if (*(v89 - 2) == 1)
              {
LABEL_77:
                v63 = *(*(a1[5] + 8) + 8);
                v64 = (*(*v63 + 512))(v63, *(__p[1] - 1));
                v66 = v65;
                if (!sub_299251220(v64, v65))
                {
                  goto LABEL_83;
                }

                if (v66 >= v66 - 3)
                {
                  v67 = v66 - 3;
                }

                else
                {
                  v67 = v66;
                }

                v68 = *(*(a1[5] + 8) + 8);
                v69 = (*(*v68 + 504))(v68, v64, v67);
                if (v69)
                {
                  *(__p[1] - 1) = v69;
                  goto LABEL_83;
                }

                goto LABEL_89;
              }

              v72 = *(v89 - 5);
              sub_299255778(0);
              if (!sub_299255CA8(&qword_2A1461DC0, v72))
              {
                if (sub_299255BA0(&qword_2A1461DC0, v72))
                {
                  v74 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * v72 + 5]);
                  if (v74[1] >= 3)
                  {
                    v75 = 0;
                    v76 = *v74;
                    while (word_29945D67A[v75] == *(v76 + v75 * 2))
                    {
                      if (++v75 == 3)
                      {
                        goto LABEL_89;
                      }
                    }

                    v77 = 0;
                    while (*&aBBkb_0[v77] == *(v76 + v77))
                    {
                      v77 += 2;
                      if (v77 == 6)
                      {
                        goto LABEL_89;
                      }
                    }
                  }
                }

                if (WORD4(xmmword_2A1461E10) <= v72 && WORD5(xmmword_2A1461E10) >= v72)
                {
LABEL_83:
                  v70 = a1[5];
                  v98 = 0uLL;
                  v99 = 0;
                  sub_2991D82D0(&v98, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
                  memset(v81, 0, sizeof(v81));
                  sub_29921ED74(v81, &v98, v100, 1uLL);
                  (*(*v70 + 64))(v84, v70, v81, 1);
                  if (v84[0])
                  {
                    v84[1] = v84[0];
                    operator delete(v84[0]);
                  }

                  *buf = v81;
                  sub_29920E060(buf);
                  if (v98)
                  {
                    *(&v98 + 1) = v98;
                    operator delete(v98);
                  }

                  (*(*a1[5] + 96))(&v83);
                  (*(*v83 + 24))(v83, *(__p[1] - 1));
                  v71 = a1[6];
                  *v81 = xmmword_2994018F0;
                  v81[2] = 16;
                  v82 = 1082130432;
                  __p[13] = 0;
                  operator new();
                }

                goto LABEL_77;
              }
            }

LABEL_89:
            if (SHIBYTE(__p[5]) < 0)
            {
              operator delete(__p[3]);
            }

            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (v88)
            {
              v89 = v88;
              operator delete(v88);
            }

            goto LABEL_95;
          }
        }

LABEL_71:
        v61 = sub_2992FE060();
        v62 = *v61;
        v60 = v61[1];
        goto LABEL_72;
      }
    }
  }

LABEL_95:
  v73 = *MEMORY[0x29EDCA608];
}

void sub_2992A05B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (v37 < 0)
  {
    operator delete(v36);
  }

  sub_29929F68C(&a32);
  sub_29921D794(v35);
  _Unwind_Resume(a1);
}

void *sub_2992A075C(void *a1)
{
  *a1 = &unk_2A1F6A408;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_2992A07CC(void *a1)
{
  *a1 = &unk_2A1F6A408;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992A085C(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 56))(a2);
  if (!result)
  {
    __assert_rtn("setLM", "JapaneseRNNLMPredictor.h", 42, "lm->type() != NeuralLanguageModelEngineType::None");
  }

  *(a1 + 40) = a2;
  *(*(a1 + 48) + 16) = a2;
  return result;
}

__int128 *sub_2992A08E0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(a4 + 16);
      if (v7 >= v8)
      {
        v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a4) >> 3);
        v12 = v11 + 1;
        if (v11 + 1 > 0x666666666666666)
        {
          sub_29921E9A8();
        }

        v13 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - *a4) >> 3);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x333333333333333)
        {
          v14 = 0x666666666666666;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_29921E9C0(a4, v14);
        }

        v15 = 8 * ((v7 - *a4) >> 3);
        v16 = *v5;
        v17 = v5[1];
        *(v15 + 32) = *(v5 + 4);
        *v15 = v16;
        *(v15 + 16) = v17;
        v7 = 40 * v11 + 40;
        v18 = *(a4 + 8) - *a4;
        v19 = 40 * v11 - v18;
        memcpy((v15 - v18), *a4, v18);
        v20 = *a4;
        *a4 = v19;
        *(a4 + 8) = v7;
        *(a4 + 16) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        v9 = *v5;
        v10 = v5[1];
        *(v7 + 32) = *(v5 + 4);
        *v7 = v9;
        *(v7 + 16) = v10;
        v7 += 40;
      }

      *(a4 + 8) = v7;
      v5 = (v5 + 40);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_2992A0A28(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 40 * ((40 * a2 - 40) / 0x28) + 40;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      sub_29921E9A8();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_29921E9C0(a1, v9);
    }

    v11 = 40 * v6;
    v12 = 40 * ((40 * a2 - 40) / 0x28) + 40;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t sub_2992A0C2C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6A4C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992A0CF4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6A4E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2992A0D2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  sub_299251274(*a2, *(a2 + 8), &__p);
  v4 = v18;
  if ((v18 & 0x8000000000000000) != 0)
  {
    if (!v17)
    {
      goto LABEL_9;
    }

    p_p = __p;
    if (*(__p + v17 - 1) != 9601)
    {
      goto LABEL_9;
    }

    v5 = --v17;
  }

  else
  {
    if (!v18 || *(&__p + v18 - 1) != 9601)
    {
      goto LABEL_9;
    }

    v5 = v18-- - 1;
    p_p = &__p;
  }

  p_p[v5] = 0;
  v4 = v18;
LABEL_9:
  if ((v4 & 0x80u) == 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p;
  }

  if ((v4 & 0x80u) == 0)
  {
    v8 = v4;
  }

  else
  {
    v8 = v17;
  }

  sub_299327C4C(*(v3 + 16), v7, v8, v13);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  v9 = v14;
  v10 = v13;
  if (v14 < 0)
  {
    v10 = v13[0];
  }

  if (v14 < 0)
  {
    v9 = v13[1];
  }

  v15[0] = v10;
  v15[1] = v9;
  v11 = sub_299217C94(a1 + 16, v15);
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  return v11;
}

void sub_2992A0E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992A0E74(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6A540))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992A0EC0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4)
  {
    if (!v5)
    {
      return 1;
    }

    Length = CFStringGetLength(v4);
    v7 = CFStringGetLength(*a2);
    v8 = *a1;
    v9 = off_2A1A99FB0();
    v22.location = 0;
    v22.length = Length;
    CFStringGetCharacters(v10, v22, v9);
    v11 = *a2;
    v12 = off_2A1A99FC8();
    v23.location = 0;
    v23.length = v7;
    CFStringGetCharacters(v13, v23, v12);
    v14 = 2 * Length;
    if (2 * v7 < 2 * Length)
    {
      v14 = 2 * v7;
    }

    if (v14 >= 1)
    {
      v15 = *v9;
      v16 = *v12;
      if (v15 != v16)
      {
        return v15 < v16;
      }

      v17 = 0;
      while (v14 - 1 != v17)
      {
        v18 = *(v9 + v17 + 1);
        v19 = *(v12 + ++v17);
        if (v18 != v19)
        {
          result = v18 < v19;
          if (v17 >= v14)
          {
            return Length < v7;
          }

          return result;
        }
      }
    }

    return Length < v7;
  }

  else
  {
    if (v5)
    {
      return 0;
    }

    return *(a1 + 8) < *(a2 + 8);
  }
}

uint64_t sub_2992A1008(uint64_t a1)
{
  *a1 = &unk_2A1F6A560;
  v2 = *(a1 + 8);
  if (v2)
  {
    atomic_store(1u, (a1 + 97));
    pthread_join(v2, 0);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    sub_2993226F0(v3);
  }

  sub_299229F00((a1 + 104), 0);
  sub_29921ED28(a1 + 56);
  v4 = *(a1 + 32);
  if (v4)
  {
    *(a1 + 40) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v5)
  {
    (*(*v5 + 72))(v5);
  }

  return a1;
}

void sub_2992A10CC(uint64_t a1)
{
  sub_2992A1008(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992A1104(uint64_t a1)
{
  v4 = 5;
  v2 = pthread_self();
  pthread_setschedparam(v2, 1, &v4);
  sub_2992A1150(a1);
  return 0;
}

void sub_2992A1150(uint64_t a1)
{
  v1 = atomic_load((a1 + 97));
  if (v1)
  {
    return;
  }

  v3 = atomic_load((a1 + 96));
  if (v3)
  {
    goto LABEL_181;
  }

  v4 = atomic_load((a1 + 97));
  if (v4)
  {
    goto LABEL_181;
  }

  v5 = *(a1 + 104);
  if (!v5)
  {
    goto LABEL_181;
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  *v126 = 0u;
  v131 = 1065353216;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  if (*(a1 + 112) != 3)
  {
    v123 = 0;
    v124 = 0;
    v125 = 0;
    Count = CFArrayGetCount(v5);
    v37 = Count / 2;
    sub_2992A2334(&v123, Count / 2);
    if (Count >= 2)
    {
      v38 = 0;
      v39 = 0;
      v40 = *MEMORY[0x29EDB8F80];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v38);
        v42 = CFArrayGetValueAtIndex(v5, v38 + 1);
        v43 = v42;
        Length = 0;
        if (v42 && v42 != v40)
        {
          Length = CFStringGetLength(v42);
        }

        if (ValueAtIndex && ValueAtIndex != v40 && CFStringGetLength(ValueAtIndex) && Length <= 127 && (*(a1 + 112) != 2 || (sub_299278154(ValueAtIndex) & 1) == 0))
        {
          if (Length || (v43 = ValueAtIndex, CFStringGetLength(ValueAtIndex) <= 127))
          {
            (*(*a1 + 16))(&__p, a1, v43);
            v45 = __p;
            if ((v138 - __p) <= 0xFE)
            {
              v46 = v124;
              if (v124 >= v125)
              {
                v48 = (v124 - v123) >> 4;
                v49 = v48 + 1;
                if ((v48 + 1) >> 60)
                {
                  sub_2992A3B48();
                }

                v50 = v125 - v123;
                if ((v125 - v123) >> 3 > v49)
                {
                  v49 = v50 >> 3;
                }

                if (v50 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v51 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v51 = v49;
                }

                v143 = &v123;
                if (v51)
                {
                  sub_2992A3CC4(v51);
                }

                v52 = (16 * v48);
                *v52 = 0;
                v52[1] = 0;
                v47 = (16 * v48 + 16);
                v53 = (16 * v48 + v123 - v124);
                sub_2992A3D0C(v123, v124, (v52 + v123 - v124));
                v54 = v123;
                v55 = v125;
                v123 = v53;
                v124 = v47;
                v125 = 0;
                v141 = v54;
                v142 = v55;
                v139 = v54;
                v140 = v54;
                sub_2992A3D6C(&v139);
              }

              else
              {
                *v124 = 0;
                v46[1] = 0;
                v47 = v46 + 2;
              }

              v124 = v47;
              if (__p == v138)
              {
                sub_299229BC0(v47 - 2, v43);
              }

              else
              {
                v56 = CFStringCreateWithCharacters(0, __p, (v138 - __p) >> 1);
                sub_299219AB4(v47 - 2, v56);
              }

              *(v124 - 1) = v39;
              v45 = __p;
            }

            if (v45)
            {
              v138 = v45;
              operator delete(v45);
            }
          }
        }

        ++v39;
        v38 += 2;
      }

      while (v37 != v39);
    }

    v57 = 126 - 2 * __clz((v124 - v123) >> 4);
    if (v124 == v123)
    {
      v58 = 0;
    }

    else
    {
      v58 = v57;
    }

    sub_2992A3DC0(v123, v124, v58, 1);
    v59 = v123;
    v60 = v124;
    if (v123 != v124)
    {
      v61 = *(a1 + 104);
      v62 = 1;
      do
      {
        v63 = CFArrayGetValueAtIndex(v61, 2 * v59[1]);
        v64 = CFStringGetLength(v63);
        v65 = v62 + v64 + CFStringGetLength(*v59);
        v62 = v65 + 4;
        v59 += 2;
      }

      while (v59 != v60);
      sub_299218E20(v126, v65 + 4);
      sub_2992A3434(&v127 + 1, (v124 - v123) >> 4);
      v66 = v126[0];
      v67 = v126[1];
      if (v126[1] >= v127)
      {
        v73 = v126[1] - v126[0];
        v74 = (v126[1] - v126[0]) >> 1;
        if (v74 <= -2)
        {
          sub_299212A8C();
        }

        if (v127 - v126[0] <= v74 + 1)
        {
          v75 = v74 + 1;
        }

        else
        {
          v75 = v127 - v126[0];
        }

        v76 = 0x7FFFFFFFFFFFFFFFLL;
        if (v127 - v126[0] < 0x7FFFFFFFFFFFFFFELL)
        {
          v76 = v75;
        }

        if (v76)
        {
          sub_299212A48(v126, v76);
        }

        *(2 * v74) = 0;
        v68 = (2 * v74 + 2);
        memcpy(0, v66, v73);
        v112 = v126[0];
        v126[0] = 0;
        v126[1] = v68;
        *&v127 = 0;
        if (v112)
        {
          operator delete(v112);
          v66 = v126[0];
        }

        else
        {
          v66 = 0;
        }
      }

      else
      {
        *v126[1] = 0;
        v68 = v67 + 2;
      }

      v126[1] = v68;
      v113 = v132++;
      *(v66 + v113) = 0;
      v114 = v123;
      if (v124 != v123)
      {
        v115 = 0;
        v116 = 0;
        v117 = 0;
        do
        {
          v118 = CFArrayGetValueAtIndex(v61, 2 * v114[v115 + 1]);
          v119 = v118;
          if (v118)
          {
            v120 = CFStringGetLength(v118);
          }

          else
          {
            v120 = 0;
          }

          if (v134 < v120)
          {
            v134 = v120;
          }

          if (v115 * 8 && CFStringCompare(v116, v123[v115], 0) == kCFCompareEqualTo)
          {
            sub_2992A395C(v126, v119, 0);
          }

          else
          {
            sub_2992A34F8(v126, v123[v115], v119, 0);
          }

          v114 = v123;
          v116 = v123[v115];
          ++v117;
          v115 += 2;
        }

        while (v117 < (v124 - v123) >> 4);
      }

      goto LABEL_173;
    }

    goto LABEL_87;
  }

  v123 = 0;
  v124 = 0;
  v125 = 0;
  v6 = CFArrayGetCount(v5);
  sub_2992A2334(&v123, v6);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *MEMORY[0x29EDB8F80];
    do
    {
      v9 = CFArrayGetValueAtIndex(v5, v7);
      Value = CFDictionaryGetValue(v9, kMecabraSupplementalLexiconReadingKey[0]);
      v11 = Value;
      if (Value)
      {
        v12 = Value == v8;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        v16 = CFStringGetLength(Value);
        if (v16 > 127)
        {
          goto LABEL_40;
        }

        if (v16)
        {
          goto LABEL_22;
        }
      }

      v13 = CFDictionaryGetValue(v9, kMecabraSupplementalLexiconSurfaceKey[0]);
      v11 = v13;
      if (v13)
      {
        v14 = v13 == v8;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        v15 = CFStringGetLength(v13);
        if (v15)
        {
          if (v15 < 128)
          {
LABEL_22:
            (*(*a1 + 16))(&__p, a1, v11);
            v17 = __p;
            if ((v138 - __p) <= 0xFE)
            {
              v18 = v124;
              if (v124 >= v125)
              {
                v20 = (v124 - v123) >> 4;
                v21 = v20 + 1;
                if ((v20 + 1) >> 60)
                {
                  sub_2992A3B48();
                }

                v22 = v125 - v123;
                if ((v125 - v123) >> 3 > v21)
                {
                  v21 = v22 >> 3;
                }

                if (v22 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v23 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v23 = v21;
                }

                v143 = &v123;
                if (v23)
                {
                  sub_2992A3CC4(v23);
                }

                v24 = (16 * v20);
                *v24 = 0;
                v24[1] = 0;
                v19 = (16 * v20 + 16);
                v25 = (16 * v20 + v123 - v124);
                sub_2992A3D0C(v123, v124, (v24 + v123 - v124));
                v26 = v123;
                v27 = v125;
                v123 = v25;
                v124 = v19;
                v125 = 0;
                v141 = v26;
                v142 = v27;
                v139 = v26;
                v140 = v26;
                sub_2992A3D6C(&v139);
              }

              else
              {
                *v124 = 0;
                v18[1] = 0;
                v19 = v18 + 2;
              }

              v124 = v19;
              if (__p == v138)
              {
                sub_299229BC0(v19 - 2, v11);
              }

              else
              {
                v28 = CFStringCreateWithCharacters(0, __p, (v138 - __p) >> 1);
                sub_299219AB4(v19 - 2, v28);
              }

              *(v124 - 1) = v7;
              v17 = __p;
            }

            if (v17)
            {
              v138 = v17;
              operator delete(v17);
            }
          }
        }
      }

LABEL_40:
      ++v7;
    }

    while (v6 != v7);
  }

  v29 = 126 - 2 * __clz((v124 - v123) >> 4);
  if (v124 == v123)
  {
    v30 = 0;
  }

  else
  {
    v30 = v29;
  }

  sub_2992A3DC0(v123, v124, v30, 1);
  if (v123 == v124)
  {
LABEL_87:
    v139 = &v123;
    sub_2992A3C3C(&v139);
    goto LABEL_180;
  }

  sub_2992A2210(*(a1 + 104), v123, v124);
  v31 = *(a1 + 104);
  v32 = sub_2992A2210(v31, v123, v124);
  sub_299218E20(v126, v32);
  sub_2992A3434(&v127 + 1, (v124 - v123) >> 4);
  v33 = v126[0];
  v34 = v126[1];
  if (v126[1] >= v127)
  {
    v69 = v126[1] - v126[0];
    v70 = (v126[1] - v126[0]) >> 1;
    if (v70 <= -2)
    {
LABEL_184:
      sub_299212A8C();
    }

    if (v127 - v126[0] <= v70 + 1)
    {
      v71 = v70 + 1;
    }

    else
    {
      v71 = v127 - v126[0];
    }

    v72 = 0x7FFFFFFFFFFFFFFFLL;
    if (v127 - v126[0] < 0x7FFFFFFFFFFFFFFELL)
    {
      v72 = v71;
    }

    if (v72)
    {
      sub_299212A48(v126, v72);
    }

    *(2 * v70) = 0;
    v35 = (2 * v70 + 2);
    memcpy(0, v33, v69);
    v77 = v126[0];
    v126[0] = 0;
    v126[1] = v35;
    *&v127 = 0;
    if (v77)
    {
      operator delete(v77);
      v33 = v126[0];
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    *v126[1] = 0;
    v35 = v34 + 2;
  }

  v126[1] = v35;
  v78 = v132++;
  *(v33 + v78) = 0;
  v79 = v123;
  if (v124 == v123)
  {
    goto LABEL_173;
  }

  v80 = 0;
  v81 = 0;
  do
  {
    v82 = CFArrayGetValueAtIndex(v31, v79[2 * v81 + 1]);
    v83 = CFDictionaryGetValue(v82, kMecabraSupplementalLexiconSurfaceKey[0]);
    v84 = v83;
    if (v83)
    {
      v85 = CFStringGetLength(v83);
    }

    else
    {
      v85 = 0;
    }

    if (v134 < v85)
    {
      v134 = v85;
    }

    v86 = CFDictionaryGetValue(v82, kMecabraSupplementalLexiconItemPrefixKey[0]);
    valuePtr = 0;
    CFNumberGetValue(v86, kCFNumberSInt32Type, &valuePtr);
    if (!*(&v129 + 1))
    {
      goto LABEL_130;
    }

    v87 = vcnt_s8(*(&v129 + 8));
    v87.i16[0] = vaddlv_u8(v87);
    if (v87.u32[0] > 1uLL)
    {
      v88 = valuePtr;
      if (*(&v129 + 1) <= valuePtr)
      {
        v88 = valuePtr % WORD4(v129);
      }
    }

    else
    {
      v88 = (DWORD2(v129) - 1) & valuePtr;
    }

    v89 = *(v129 + 8 * v88);
    if (!v89 || (v90 = *v89) == 0)
    {
LABEL_130:
      operator new();
    }

    while (1)
    {
      v91 = v90[1];
      if (v91 == valuePtr)
      {
        break;
      }

      if (v87.u32[0] > 1uLL)
      {
        if (v91 >= *(&v129 + 1))
        {
          v91 %= *(&v129 + 1);
        }
      }

      else
      {
        v91 &= *(&v129 + 1) - 1;
      }

      if (v91 != v88)
      {
        goto LABEL_130;
      }

LABEL_129:
      v90 = *v90;
      if (!v90)
      {
        goto LABEL_130;
      }
    }

    if (*(v90 + 8) != valuePtr)
    {
      goto LABEL_129;
    }

    if (v81)
    {
      v92 = CFStringCompare(v80, v123[2 * v81], 0);
      v93 = valuePtr;
      if (v92 == kCFCompareEqualTo)
      {
        sub_2992A395C(v126, v84, valuePtr);
        goto LABEL_136;
      }
    }

    else
    {
      v93 = valuePtr;
    }

    sub_2992A34F8(v126, v123[2 * v81], v84, v93);
LABEL_136:
    v94 = CFDictionaryGetValue(v82, kMecabraSupplementalLexiconIdentifiersKey[0]);
    v95 = CFArrayGetCount(v94);
    v96 = v126[0];
    v97 = v126[1];
    if (v126[1] < v127)
    {
      *v126[1] = 0;
      v98 = v97 + 2;
      goto LABEL_149;
    }

    v99 = v126[1] - v126[0];
    v100 = (v126[1] - v126[0]) >> 1;
    if (v100 < -1)
    {
      goto LABEL_184;
    }

    if (v127 - v126[0] <= v100 + 1)
    {
      v101 = v100 + 1;
    }

    else
    {
      v101 = v127 - v126[0];
    }

    v102 = 0x7FFFFFFFFFFFFFFFLL;
    if (v127 - v126[0] < 0x7FFFFFFFFFFFFFFELL)
    {
      v102 = v101;
    }

    if (v102)
    {
      sub_299212A48(v126, v102);
    }

    v103 = (2 * v100);
    v104 = &v103[-((v126[1] - v126[0]) >> 1)];
    *v103 = 0;
    v98 = v103 + 1;
    memcpy(v104, v96, v99);
    v105 = v126[0];
    v126[0] = v104;
    v126[1] = v98;
    *&v127 = 0;
    if (v105)
    {
      operator delete(v105);
      v96 = v126[0];
    }

    else
    {
      v96 = v104;
    }

LABEL_149:
    v126[1] = v98;
    v106 = v132++;
    *(v96 + v106) = v95;
    sub_299236F40(&v139, v95);
    v107 = v139;
    if (v140 == v139)
    {
      v111 = 0;
    }

    else
    {
      v108 = 0;
      v109 = 0;
      do
      {
        v110 = CFArrayGetValueAtIndex(v94, v109);
        CFNumberGetValue(v110, kCFNumberCFIndexType, &v139[v108]);
        ++v109;
        v107 = v139;
        ++v108;
      }

      while (v109 < v140 - v139);
      v111 = (v140 - v139) >> 1;
    }

    sub_29925493C(&v136, v107, v107 + (v111 & 0x7FFFFFFFFFFFFFFCLL), v126);
    v132 += v111;
    if (v139)
    {
      v140 = v139;
      operator delete(v139);
    }

    v79 = v123;
    v80 = v123[2 * v81++];
  }

  while (v81 < (v124 - v123) >> 4);
LABEL_173:
  v139 = &v123;
  sub_2992A3C3C(&v139);
  v121 = atomic_load((a1 + 97));
  if ((v121 & 1) == 0)
  {
    v122 = malloc_type_malloc(0x48uLL, 0x108004094C1867FuLL);
    if (v122)
    {
      v122[8] = 0;
      *(v122 + 2) = 0u;
      *(v122 + 3) = 0u;
      *v122 = 0u;
      *(v122 + 1) = 0u;
      *(a1 + 24) = v122;
      if (sub_2992AA054(v122, 0xAAAAAAAAAAAAAAABLL * ((v128 - *(&v127 + 1)) >> 3), *(&v127 + 1)) != -1)
      {
        operator new();
      }

      v122 = *(a1 + 24);
    }

    else
    {
      *(a1 + 24) = 0;
    }

    sub_2993226F0(v122);
    *(a1 + 24) = 0;
  }

LABEL_180:
  sub_2992A22DC(v126);
LABEL_181:

  sub_299229F00((a1 + 104), 0);
}