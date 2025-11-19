void sub_29920D924(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_29920D97C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 48);
    *(a1 + 16) = i - 48;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29920D9E8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 48;
      v7 = v4 - 48;
      v8 = v4 - 48;
      do
      {
        v9 = *v8;
        v8 -= 48;
        (*v9)(v7);
        v6 -= 48;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29920DAA8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_29920DB64(result, a4);
  }

  return result;
}

void sub_29920DB64(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_29920D924(a1, a2);
  }

  sub_29920D90C();
}

void sub_29920DBB0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_299212A8C();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_2992F86B0(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *sub_29920DCE0(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 1;
      }

      sub_2992F86B0(result[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 4;
  return result;
}

void sub_29920DDE0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_29920DE38(uint64_t a1)
{
  sub_29920DE70(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29920DE70(uint64_t a1, uint64_t a2)
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

uint64_t sub_29920DED0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2992F8674(result, a4);
  }

  return result;
}

void sub_29920DF30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29920DF4C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_29920E024(result, a2);
  }

  return result;
}

void sub_29920E008(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29920E024(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_299236FB8(a1, a2);
  }

  sub_299212A8C();
}

void sub_29920E060(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29920E0B4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29920E0B4(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_29920E10C(void *a1@<X8>)
{
  sub_2991C6CA8(__p, "en-languagemodel");
  if (qword_2A1461D50 != -1)
  {
    dispatch_once(&qword_2A1461D50, &unk_2A1F65DA8);
  }

  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = sub_2992106E0;
  v4[3] = &unk_29EF0BE58;
  v4[5] = __p;
  v4[6] = qword_2A1461D48;
  v5 = 0;
  v4[4] = &unk_2A1F64388;
  sub_29920FE68(__p, v4, 0, a1);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29920E1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29920E2A4(unsigned int a1@<W0>, char a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v27 = *MEMORY[0x29EDCA608];
  v8 = sub_2992774EC(a1);
  sub_2991C6CA8(&v21, v8);
  v9 = std::string::append(&v21, "Montreal-languagemodel", 0x16uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v20 = v9->__r_.__value_.__r.__words[2];
  *v19 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v11 = sub_2993652F8(0xDu);
  if (os_signpost_enabled(v11))
  {
    v12 = v19;
    if (v20 < 0)
    {
      v12 = v19[0];
    }

    LODWORD(v21.__r_.__value_.__l.__data_) = 136315138;
    *(v21.__r_.__value_.__r.__words + 4) = v12;
    _os_signpost_emit_with_name_impl(&dword_29918C000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "getSharedMontrealLanguageModel", "Creating Montreal model with identifier [%s]", &v21, 0xCu);
  }

  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 1174405120;
  v14[2] = sub_29920E554;
  v14[3] = &unk_2A1F643A8;
  if (SHIBYTE(v20) < 0)
  {
    sub_2991A110C(__p, v19[0], v19[1]);
  }

  else
  {
    *__p = *v19;
    v16 = v20;
  }

  v17 = a1;
  v18 = a2;
  if (qword_2A1461D50 != -1)
  {
    dispatch_once(&qword_2A1461D50, &unk_2A1F65DA8);
  }

  v21.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  v21.__r_.__value_.__l.__size_ = 0x40000000;
  v21.__r_.__value_.__r.__words[2] = sub_2992106E0;
  v22 = &unk_29EF0BE58;
  v24 = v19;
  v25 = qword_2A1461D48;
  v26 = 0;
  v23 = v14;
  sub_29920FE68(v19, &v21, a3, a4);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_29920E500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29920E554(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(7u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315138;
    v6 = v4;
    _os_log_debug_impl(&dword_29918C000, v2, OS_LOG_TYPE_DEBUG, "[getSharedMontrealLanguageModel] Actually creating Montreal model with identifier [%s]", buf, 0xCu);
  }

  v3 = *(a1 + 56);
  operator new();
}

_BYTE *sub_29920E6D4(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    return sub_2991A110C(result + 32, *(a2 + 32), *(a2 + 40));
  }

  v2 = *(a2 + 32);
  *(result + 6) = *(a2 + 48);
  *(result + 2) = v2;
  return result;
}

void sub_29920E700(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_29920E714(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v14 = sub_2992774EC(a1);
  sub_2991C6CA8(__p, v14);
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 0x40000000;
  v16[2] = sub_29920F0FC;
  v16[3] = &unk_29EF0BE30;
  v17 = a1;
  v16[4] = &v21;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  v18 = a5;
  sub_29920E87C(__p, v16, 0, a7);
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (!a6)
    {
      goto LABEL_7;
    }
  }

  else if (!a6)
  {
    goto LABEL_7;
  }

  if ((v22[3] & 1) == 0)
  {
    v15 = *a7;
    sub_29920F28C();
  }

LABEL_7:
  _Block_object_dispose(&v21, 8);
}

void sub_29920E838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  v26 = *(v24 + 8);
  if (v26)
  {
    sub_2991A893C(v26);
  }

  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

void sub_29920E87C(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v29 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A145FDC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FDC8))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_2A145FDD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FDD0))
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &stru_2A145E2E8, &dword_29918C000);
    __cxa_guard_release(&qword_2A145FDD0);
  }

  std::mutex::lock(&stru_2A145E2E8);
  v6 = qword_2A145FDC0;
  v7 = sub_2991C0548(qword_2A145FDC0, a1);
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

  std::mutex::unlock(&stru_2A145E2E8);
  *a4 = v25;
  a4[1] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_2991A893C(v24);
  }

  v21 = *MEMORY[0x29EDCA608];
}

void sub_29920F1CC(_Unwind_Exception *a1)
{
  sub_29920FE30((v2 + 16), 0);
  sub_29920FE30((v2 + 8), 0);
  MEMORY[0x29C29BFB0](v2, v1);
  _Unwind_Resume(a1);
}

void sub_29920F670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  MEMORY[0x29C29BFB0](v36, v35);
  sub_29920FE30((v37 - 72), 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29920F778(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_29921097C(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void sub_29920F7C4(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = sub_2993652F8(0xDu);
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LanguageModelLoader::reload", "Deleting previous model", buf, 2u);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = sub_29921097C(v4);
      MEMORY[0x29C29BFB0](v5, 0x10F2C40E01BBEB9);
    }
  }

  v6 = sub_2993652F8(0xDu);
  if (os_signpost_enabled(v6))
  {
    v7 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v7 = *v7;
    }

    *buf = 136315138;
    v9 = v7;
    _os_signpost_emit_with_name_impl(&dword_29918C000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LanguageModelLoader::reload", "Creating model with identifier [%s]", buf, 0xCu);
  }

  operator new();
}

_BYTE *sub_29920F98C(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    return sub_2991A110C(result + 48, *(a2 + 48), *(a2 + 56));
  }

  v2 = *(a2 + 48);
  *(result + 8) = *(a2 + 64);
  *(result + 3) = v2;
  return result;
}

void sub_29920F9B8(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void sub_29920F9CC(uint64_t a1)
{
  v1 = (a1 + 48);
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_299210C88(*(a1 + 48));
    v4 = atomic_load((v2 + 40));
    if (v4 == 2)
    {
      if (*v2)
      {
        v5 = *(a1 + 48);
        sub_29920FAF8(v5, 0xFFFFFFFFFFFFFFFFLL, 0);
        std::mutex::lock((v5 + 48));
        atomic_store(3u, (v5 + 40));
        v6 = *v5;
        *v5 = 0;
        std::mutex::unlock((v5 + 48));
        sub_299384660(v6, *(a1 + 32));
        sub_299384100(v6, *(*(a1 + 32) + 16));
        sub_2993841C0(v6, *(*(a1 + 32) + 24));
        v7 = *(a1 + 32);
        *(a1 + 32) = v6;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        LocalCenter = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(LocalCenter, @"LanguageModelDidChange", 0, 0, 0);

        sub_29920F778(v1, 0);
      }
    }
  }
}

uint64_t sub_29920FAF8(uint64_t a1, dispatch_time_t a2, uint64_t a3)
{
  sub_299210C88(a1);
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

uint64_t sub_29920FB80(uint64_t a1)
{
  sub_29920F778((a1 + 48), 0);
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

  sub_29920FE30((a1 + 24), 0);
  sub_29920FE30((a1 + 16), 0);
  sub_29920FE30((a1 + 8), 0);
  return a1;
}

void sub_29920FC34(uint64_t a1, int a2, CFStringRef filePath)
{
  if (*(a1 + 5) != a2)
  {
    *(a1 + 5) = a2;
    if (filePath)
    {
      if (a2)
      {
        v3 = CFURLCreateWithFileSystemPath(0, filePath, kCFURLPOSIXPathStyle, 1u);
        if (v3)
        {
          v4 = v3;
          if (CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x29EDB8ED8], v3))
          {
            operator new();
          }

          CFRelease(v4);
        }
      }
    }
  }
}

void sub_29920FD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  MEMORY[0x29C29BFB0](v3, 0x10E1C4004C96B00);
  sub_29920FE30(va, 0);
  sub_29920FE30(va1, 0);
  _Unwind_Resume(a1);
}

void sub_29920FD9C(uint64_t a1, const void *a2, void (__cdecl *a3)(CFNotificationCenterRef, void *, CFNotificationName, const void *, CFDictionaryRef))
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterAddObserver(LocalCenter, a2, a3, @"LanguageModelDidChange", 0, CFNotificationSuspensionBehaviorCoalesce);
}

void sub_29920FDEC(uint64_t a1, const void *a2)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterRemoveObserver(LocalCenter, a2, @"LanguageModelDidChange", 0);
}

void sub_29920FE30(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_29920FE68(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v29 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A145FDB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FDB0))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_2A145FDB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FDB8))
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &stru_2A145E2A8, &dword_29918C000);
    __cxa_guard_release(&qword_2A145FDB8);
  }

  std::mutex::lock(&stru_2A145E2A8);
  v6 = qword_2A145FDA8;
  v7 = sub_2991C0548(qword_2A145FDA8, a1);
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

  std::mutex::unlock(&stru_2A145E2A8);
  *a4 = v25;
  a4[1] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_2991A893C(v24);
  }

  v21 = *MEMORY[0x29EDCA608];
}

void sub_299210758(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299210790(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_29921097C(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2992107D4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F64468))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_299210814(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 48);
      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_299210874(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_29920FB80(v2);
    MEMORY[0x29C29BFB0](v3, 0x1060C40372AB5B2);
  }

  return a1;
}

void sub_2992108C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992108F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_29920FB80(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_29921093C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F644E0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29921097C(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = atomic_load((a1 + 40));
  if (v2 == 1)
  {
    v3 = (a1 + 112);
    do
    {
      v4 = dispatch_time(0, 1000000);
      if (sub_29920FAF8(a1, v4, 0))
      {
        break;
      }

      v5 = atomic_load((a1 + 40));
      if (v5 == 2)
      {
        break;
      }

      v6 = sub_2993652F8(1u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = a1 + 112;
        if (*(a1 + 135) < 0)
        {
          v8 = *v3;
        }

        *buf = 136315138;
        v13 = v8;
        _os_log_error_impl(&dword_29918C000, v6, OS_LOG_TYPE_ERROR, "Still waiting for resource [%s] to complete in background.", buf, 0xCu);
      }

      v7 = atomic_load((a1 + 40));
    }

    while (v7 == 1);
  }

  std::mutex::lock((a1 + 48));
  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 8));
  dispatch_release(*(a1 + 16));
  std::mutex::unlock((a1 + 48));
  if (*(a1 + 144) == 1)
  {
    std::mutex::unlock(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  std::mutex::~mutex((a1 + 48));
  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_299210B34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2991EDA10(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299210B44(uint64_t a1, __int128 *a2, NSObject *a3, char a4, const void *a5)
{
  *a1 = 0;
  *(a1 + 8) = dispatch_group_create();
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  v10 = _Block_copy(a5);
  *(a1 + 48) = 850045863;
  *(a1 + 32) = v10;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_2991A110C((a1 + 112), *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    *(a1 + 128) = *(a2 + 2);
    *(a1 + 112) = v11;
  }

  *(a1 + 136) = a1 + 48;
  *(a1 + 144) = 0;
  dispatch_retain(a3);
  if ((a4 & 1) == 0)
  {
    sub_299210C88(a1);
  }

  return a1;
}

void sub_299210C10(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sub_299210C88(uint64_t a1)
{
  v2 = (a1 + 24);
  v4[0] = sub_299210CFC;
  v4[1] = 0;
  v3 = a1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v6[0] = v4;
    v6[1] = &v3;
    v5 = v6;
    std::__call_once(v2, &v5, sub_299210DB0);
  }
}

void sub_299210CFC(uint64_t a1)
{
  sub_299210DE0(a1 + 136);
  atomic_store(1u, (a1 + 40));
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2000000000;
  v5[3] = a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = sub_299210E40;
  v4[3] = &unk_29EF0BE80;
  v4[4] = v5;
  v4[5] = a1;
  dispatch_group_async(v2, v3, v4);
  _Block_object_dispose(v5, 8);
}

uint64_t sub_299210DB0(uint64_t **a1)
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

void sub_299210DE0(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::mutex::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  sub_299210E40();
}

void sub_299210E40(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
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

      v15 = 136315138;
      v16 = v8;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "AsyncResourceInit", "Async resource load with key: [%s]", &v15, 0xCu);
    }
  }

  v9 = *(*(*(a1 + 32) + 8) + 24);
  v10 = (*(*(v2 + 32) + 16))();
  v11 = *v9;
  *v9 = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  atomic_store(2u, (v2 + 40));
  v12 = sub_2993652F8(0xDu);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v12))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v13, OS_SIGNPOST_INTERVAL_END, v5, "AsyncResourceInit", &unk_29945DB9F, &v15, 2u);
    }
  }

  std::mutex::unlock(v3);
  v14 = *MEMORY[0x29EDCA608];
}

uint64_t sub_299211008(uint64_t a1, const __CFURL *a2)
{
  *a1 = &unk_2A1F64508;
  *(a1 + 8) = &unk_2A1F64538;
  *(a1 + 16) = 0;
  sub_29919C3A8((a1 + 24));
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  sub_299213890(a1 + 72);
  *(a1 + 416) = 0;
  sub_2992110C8(a1, a2);
  return a1;
}

void sub_2992110A4(_Unwind_Exception *a1)
{
  sub_299213950(v2 + 72);
  sub_299211C1C(v1);
  _Unwind_Resume(a1);
}

void sub_2992110C8(uint64_t a1, const __CFURL *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  sub_2993B4938(@"th", a2, @"BlockPhrase-th.dat", 0, &url);
  if (CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024))
  {
    v3 = buffer;
  }

  else
  {
    v3 = &unk_29943AA03;
  }

  sub_2991C6CA8(__p, v3);
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (stat(v4, buffer))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    if (v9 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    v5 = sub_299211244(a1 + 72, v6, "r");
    if (v5)
    {
      LOBYTE(v5) = sub_2992116B8((a1 + 8), *(a1 + 80), *(a1 + 88));
    }
  }

  *(a1 + 416) = v5;
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (url)
  {
    CFRelease(url);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_2992111F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299211244(uint64_t a1, const char *a2, _BYTE *a3)
{
  sub_299213AB8(a1);
  v6 = strlen(a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(__dst.st_gid) = v6;
  if (v6)
  {
    memcpy(&__dst, a2, v6);
  }

  *(&__dst.st_dev + v7) = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  *(a1 + 24) = *&__dst.st_dev;
  *(a1 + 40) = *&__dst.st_uid;
  if (*a3 != 114)
  {
    goto LABEL_13;
  }

  if (!a3[1])
  {
    *(a1 + 340) = 0;
    v21 = open(a2, 0);
    *(a1 + 336) = v21;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v23 = *(a1 + 48);
    v22 = (a1 + 48);
    std::ios_base::clear((v22 + *(v23 - 24)), 0);
    v24 = sub_2991C0E9C(v22, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/mmap.h", 59);
    v25 = sub_2991C0E9C(v24, "(", 1);
    v26 = MEMORY[0x29C29BD30](v25, 171);
    v27 = sub_2991C0E9C(v26, ") [", 3);
    v28 = "(fd = ::open(filename, flag | O_BINARY)) >= 0";
    v29 = 45;
LABEL_26:
    v45 = sub_2991C0E9C(v27, v28, v29);
    v15 = sub_2991C0E9C(v45, "] ", 2);
    v16 = "open failed: ";
    v17 = 13;
    goto LABEL_14;
  }

  if (a3[1] != 43 || a3[2])
  {
LABEL_13:
    v9 = *(a1 + 48);
    v8 = (a1 + 48);
    std::ios_base::clear((v8 + *(v9 - 24)), 0);
    v10 = sub_2991C0E9C(v8, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/mmap.h", 59);
    v11 = sub_2991C0E9C(v10, "(", 1);
    v12 = MEMORY[0x29C29BD30](v11, 162);
    v13 = sub_2991C0E9C(v12, ") [", 3);
    v14 = sub_2991C0E9C(v13, "false", 5);
    v15 = sub_2991C0E9C(v14, "] ", 2);
    v16 = "unknown open mode: ";
    v17 = 19;
LABEL_14:
    v18 = sub_2991C0E9C(v15, v16, v17);
    v19 = strlen(a2);
    sub_2991C0E9C(v18, a2, v19);
    return 0;
  }

  *(a1 + 340) = 514;
  v21 = open(a2, 514, 384);
  *(a1 + 336) = v21;
  if (v21 < 0)
  {
    v41 = *(a1 + 48);
    v40 = (a1 + 48);
    std::ios_base::clear((v40 + *(v41 - 24)), 0);
    v42 = sub_2991C0E9C(v40, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/mmap.h", 59);
    v43 = sub_2991C0E9C(v42, "(", 1);
    v44 = MEMORY[0x29C29BD30](v43, 168);
    v27 = sub_2991C0E9C(v44, ") [", 3);
    v28 = "(fd = ::open(filename, flag | O_BINARY, S_IRUSR | S_IWUSR)) >= 0";
    v29 = 64;
    goto LABEL_26;
  }

LABEL_18:
  if (fstat(v21, &__dst) < 0)
  {
    v34 = *(a1 + 48);
    v33 = (a1 + 48);
    std::ios_base::clear((v33 + *(v34 - 24)), 0);
    v35 = sub_2991C0E9C(v33, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/mmap.h", 59);
    v36 = sub_2991C0E9C(v35, "(", 1);
    v37 = MEMORY[0x29C29BD30](v36, 179);
    v38 = sub_2991C0E9C(v37, ") [", 3);
    v39 = sub_2991C0E9C(v38, "::fstat(fd, &st) >= 0", 21);
    v15 = sub_2991C0E9C(v39, "] ", 2);
    v16 = "failed to get file size: ";
    v17 = 25;
    goto LABEL_14;
  }

  st_size = __dst.st_size;
  *(a1 + 16) = __dst.st_size;
  if (st_size)
  {
    v31 = mmap(0, st_size, *(a1 + 340) & 2 | 1u, 1, *(a1 + 336), 0);
    if (v31 == -1)
    {
      v47 = *(a1 + 48);
      v46 = (a1 + 48);
      std::ios_base::clear((v46 + *(v47 - 24)), 0);
      v48 = sub_2991C0E9C(v46, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/mmap.h", 59);
      v49 = sub_2991C0E9C(v48, "(", 1);
      v50 = MEMORY[0x29C29BD30](v49, 193);
      v51 = sub_2991C0E9C(v50, ") [", 3);
      v52 = sub_2991C0E9C(v51, "(p = reinterpret_cast<char *> (::mmap(0, length, prot, MAP_SHARED, fd, 0))) != MAP_FAILED", 89);
      v15 = sub_2991C0E9C(v52, "] ", 2);
      v16 = "mmap() failed: ";
      v17 = 15;
      goto LABEL_14;
    }

    v32 = v31;
    madvise(v31, *(a1 + 16), 1);
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 8) = v32;
  close(*(a1 + 336));
  *(a1 + 336) = -1;
  return 1;
}

uint64_t sub_2992116B8(uint64_t *a1, void *a2, unint64_t a3)
{
  if (a3 >= 0xF)
  {
    if (*a2 == 0x2065766F6C206557 && *(a2 + 7) == 0x2E61736972614D20)
    {
      sub_29919CFA4(a1 + 2, a2, a3);
      return 1;
    }
  }

  else if (a3 < 4)
  {
    return 0;
  }

  v7 = a2 + 4;
  v8 = *a2;
  sub_29919CFA4(a1 + 2, a2 + 4, v8);
  a1[3] = &v7[v8];
  a1[4] = (a3 - v8 - 4) >> 2;
  return 1;
}

uint64_t sub_299211774(uint64_t a1, const void **a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  result = sub_2992137FC(a1, v3 + 1);
  if (*(result + 23) >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  if (v3)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    result = memmove(v5, v6, 2 * v3);
  }

  *&v5[2 * v3] = 45;
  return result;
}

double sub_29921181C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_29921183C(uint64_t a1, void *a2, unint64_t a3)
{
  if (*(a1 + 416) != 1 || a3 >= (a2[1] - *a2) >> 3)
  {
    return 0;
  }

  sub_299211774(&v23, (*(*a2 + 8 * a3) + 56));
  *__p = 0u;
  v20 = 0u;
  v6 = v25;
  if ((v25 & 0x80u) == 0)
  {
    v7 = &v23;
  }

  else
  {
    v7 = v23;
  }

  if ((v25 & 0x80u) != 0)
  {
    v6 = v24;
  }

  sub_29919D430((a1 + 24), v7, 2 * v6, __p, &v21);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[1]);
  }

  v8 = v21;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v23);
  }

  if (v8 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  sub_299211774(&v23, (*(*a2 + 8 * a3) + 56));
  *__p = 0u;
  v20 = 0u;
  v11 = v25;
  if ((v25 & 0x80u) == 0)
  {
    v12 = &v23;
  }

  else
  {
    v12 = v23;
  }

  if ((v25 & 0x80u) != 0)
  {
    v11 = v24;
  }

  sub_29919D430((a1 + 24), v12, 2 * v11, __p, &v21);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[1]);
  }

  v13 = a3;
  while (1)
  {
    v14 = v13;
    if (v13 <= 0)
    {
LABEL_33:
      v18 = 1;
      goto LABEL_35;
    }

    v15 = *(*a2 + 8 * v13 - 8);
    v16 = *(v15 + 79);
    if (v16 < 0)
    {
      v17 = *(v15 + 56);
      v16 = *(v15 + 64);
    }

    else
    {
      v17 = v15 + 56;
    }

    sub_29919D430((a1 + 24), v17, 2 * v16, &v21, __p);
    v21 = __p[0];
    std::string::operator=(&v22, &__p[1]);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[1]);
    }

    if (v21 == 0xFFFFFFFFLL)
    {
      break;
    }

    --v13;
    if (sub_299211ABC((a1 + 8), &v21, __p))
    {
      goto LABEL_33;
    }
  }

  v18 = 0;
LABEL_35:
  if (v14 > 0)
  {
    v9 = v18;
  }

  else
  {
    v9 = 0;
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v23);
  }

  return v9;
}

void sub_299211A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299211ABC(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  if (!(*(*a1 + 112))(a1))
  {
    return 0;
  }

  v8 = 0;
  v6 = sub_29919D220(a1 + 2, a2, &v8);
  if (v6)
  {
    *a3 = sub_2992130D0(a1, v8);
  }

  return v6;
}

void *sub_299211B54(void *a1)
{
  *a1 = &unk_2A1F64508;
  v2 = a1 + 1;
  sub_299213950((a1 + 9));
  sub_299211C1C(v2);
  return a1;
}

void sub_299211BA8(void *a1)
{
  *a1 = &unk_2A1F64508;
  v1 = a1 + 1;
  sub_299213950((a1 + 9));
  sub_299211C1C(v1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_299211C1C(void *a1)
{
  *a1 = &unk_2A1F64538;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  sub_29919CE78(a1 + 2);
  return a1;
}

void sub_299211C74(void *a1)
{
  sub_299211C1C(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299211CAC(uint64_t *a1, uint64_t a2, void **a3, unint64_t *a4, int *a5)
{
  __src = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v37 = 0;
  v38 = 0;
  if (a2)
  {
    v8 = a2;
    v9 = a5;
    do
    {
      v10 = *a3;
      v11 = *a4++;
      v12 = v11 >> 1;
      v13 = v40;
      if (v40 >= v41)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3) + 1;
        if (v15 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_299212A8C();
        }

        if (0x5555555555555556 * ((v41 - v39) >> 3) > v15)
        {
          v15 = 0x5555555555555556 * ((v41 - v39) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v41 - v39) >> 3) >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v15;
        }

        v46 = &v39;
        if (v16)
        {
          sub_299212AA4(&v39, v16);
        }

        v42 = 0;
        v43 = (8 * ((v40 - v39) >> 3));
        v44 = v43;
        v45 = 0;
        sub_2992129A0(v43, v10, v12);
        v14 = v44 + 3;
        v17 = v43 - (v40 - v39);
        memcpy(v17, v39, v40 - v39);
        v18 = v39;
        v19 = v41;
        v39 = v17;
        v40 = v14;
        v41 = v45;
        v42 = v18;
        v44 = v18;
        v45 = v19;
        v43 = v18;
        sub_299212AFC(&v42);
      }

      else
      {
        sub_2992129A0(v40, *a3, v12);
        v14 = v13 + 24;
      }

      v40 = v14;
      if (a5)
      {
        v20 = *v9;
        v21 = v37;
        if (v37 >= v38)
        {
          v23 = __src;
          v24 = v37 - __src;
          v25 = (v37 - __src) >> 2;
          v26 = v25 + 1;
          if ((v25 + 1) >> 62)
          {
            sub_299212A8C();
          }

          v27 = v38 - __src;
          if ((v38 - __src) >> 1 > v26)
          {
            v26 = v27 >> 1;
          }

          v28 = v27 >= 0x7FFFFFFFFFFFFFFCLL;
          v29 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v28)
          {
            v29 = v26;
          }

          if (v29)
          {
            sub_2992F86B0(&__src, v29);
          }

          *(4 * v25) = v20;
          v22 = 4 * v25 + 4;
          memcpy(0, v23, v24);
          v30 = __src;
          __src = 0;
          v37 = v22;
          v38 = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          *v37 = v20;
          v22 = (v21 + 4);
        }

        v37 = v22;
      }

      v9 += 2;
      ++a3;
      --v8;
    }

    while (v8);
  }

  v31 = *a1;
  if (a5)
  {
    v32 = (*(v31 + 64))();
  }

  else
  {
    v32 = (*(v31 + 56))();
  }

  v33 = v32;
  v42 = &v39;
  sub_299212B90(&v42);
  return v33;
}

void sub_299211F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a13;
  sub_299212B90(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_299211FD8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v6 = 0;
  result = (*(*a1 + 80))(a1, a2, a3 >> 1, &v6);
  *a4 = v6;
  return result;
}

uint64_t sub_299212038(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x29EDCA608];
  v6[0] = &unk_2A1F64620;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 88))(a1, a2, a3 >> 1, v6);
  result = sub_299212D98(v6);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992120E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299212D98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992120F4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x29EDCA608];
  v6[0] = &unk_2A1F646B0;
  v6[1] = a4;
  v6[3] = v6;
  (*(*a1 + 96))(a1, a2, a3 >> 1, v6);
  result = sub_299212D98(v6);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29921219C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299212D98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992121B0@<X0>(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  sub_2991D7954(v17);
  sub_29919D150(a1 + 2, &v18);
  if ((v25 & 0x10) != 0)
  {
    v5 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v5 = v21;
    }

    locale = v20[4].__locale_;
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v4 = 0;
      HIBYTE(v16) = 0;
      goto LABEL_14;
    }

    locale = v20[1].__locale_;
    v5 = v20[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v16) = v5 - locale;
  if (v4)
  {
    memmove(&__dst, locale, v4);
  }

LABEL_14:
  *(&__dst + v4) = 0;
  v7 = a1[4];
  if (v7)
  {
    v8 = SHIBYTE(v16);
    if (v16 >= 0)
    {
      v9 = HIBYTE(v16);
    }

    else
    {
      v9 = *(&__dst + 1);
    }

    *__s = v9;
    v10 = a1[3];
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    a2->__r_.__value_.__r.__words[0] = 0;
    std::string::append(a2, __s, 4uLL);
    if (v8 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    std::string::append(a2, p_dst, v9);
    std::string::append(a2, v10, 4 * v7);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = __dst;
    a2->__r_.__value_.__r.__words[2] = v16;
  }

  v17[0] = *MEMORY[0x29EDC9528];
  v12 = *(MEMORY[0x29EDC9528] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v18 = v12;
  v19 = MEMORY[0x29EDC9570] + 16;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  v19 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C29BF00](&v26);
}

void sub_29921248C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_2991D7BF8(&a10, MEMORY[0x29EDC9528]);
  MEMORY[0x29C29BF00](va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992124F0(void *a1, uint64_t **a2, int **a3)
{
  __p = 0;
  v21 = 0;
  v22 = 0;
  v5 = *a2;
  v6 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * (v6 - v5) != a3[1] - *a3)
  {
    __assert_rtn("build", "MarisaTrie.h", 61, "keys.size() == values.size()");
  }

  v9 = sub_299212F20(a1, v5, v6, &__p);
  if (v9)
  {
    sub_29920D17C(a1 + 5, 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
    v10 = a1[5];
    v11 = a2[1] - *a2;
    if (v11)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
      v13 = *a3;
      v14 = __p;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        *(v10 + 4 * v17) = v15;
        --v12;
      }

      while (v12);
    }

    v18 = (a1[6] - v10) >> 2;
    a1[3] = v10;
    a1[4] = v18;
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_299212614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299212630(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = 0;
  v6 = sub_29919D2A4((a1 + 16), a2, 2 * a3, &v8);
  if (v6)
  {
    *a4 = sub_2992130D0(a1, v8);
  }

  return v6;
}

uint64_t sub_299212694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[4] = *MEMORY[0x29EDCA608];
  v6[0] = &unk_2A1F64730;
  v6[1] = a1;
  v6[2] = a4;
  v6[3] = v6;
  sub_29919D328((a1 + 16), a2, 2 * a3, v6);
  result = sub_299213308(v6);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299212720(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299213308(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299212734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7[4] = *MEMORY[0x29EDCA608];
  v7[0] = &unk_2A1F647C0;
  v7[1] = a1;
  v7[2] = a4;
  v7[3] = v7;
  sub_29919D3AC((a1 + 16), a2, 2 * a3, v7, (a5 << (a5 > 0)));
  result = sub_299213308(v7);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992127CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299213308(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992127E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[4] = *MEMORY[0x29EDCA608];
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v10[0] = &unk_2A1F64840;
    v10[1] = a1;
    v10[2] = a3;
    v10[3] = v10;
    sub_29919D4B4(a1 + 2, a2, v10, a4);
    result = sub_299213308(v10);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992128B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299213308(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992128C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8[4] = *MEMORY[0x29EDCA608];
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v8[0] = &unk_2A1F648C0;
    v8[1] = a3;
    v8[3] = v8;
    sub_29919D538(a1 + 2, a2, v8);
    result = sub_29921377C(v8);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29921298C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29921377C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2992129A0(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_299212A30();
  }

  v4 = __dst;
  if (a3 >= 0xB)
  {
    if ((a3 | 3) == 0xB)
    {
      v5 = 13;
    }

    else
    {
      v5 = (a3 | 3) + 1;
    }

    sub_299212A48(__dst, v5);
  }

  __dst[23] = a3;
  if (a3)
  {
    __dst = memmove(__dst, __src, 2 * a3);
  }

  *&v4[2 * a3] = 0;
  return __dst;
}

void sub_299212A48(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_29919600C();
}

void sub_299212AA4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_299212AFC(uint64_t a1)
{
  sub_299212B34(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_299212B34(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_299212B90(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_299212BE4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_299212BE4(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_299212CA4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F64620;
  a2[1] = v2;
  return result;
}

uint64_t sub_299212CF0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F64690))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299212D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a3;
  v7[1] = a4;
  v6 = a2;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, &v6, v7, a5);
}

uint64_t sub_299212D98(uint64_t a1)
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

uint64_t sub_299212E88(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F646B0;
  a2[1] = v2;
  return result;
}

uint64_t sub_299212ED4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F64710))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299212F20(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  __src = 0;
  v24 = 0;
  v25 = 0;
  if (a2 != a3)
  {
    v7 = a2;
    v8 = 0;
    do
    {
      v9 = *(v7 + 23);
      if (v9 < 0)
      {
        v10 = *v7;
        v9 = v7[1];
      }

      else
      {
        v10 = v7;
      }

      v11 = 2 * v9;
      if (v8 >= v25)
      {
        v12 = __src;
        v13 = v8 - __src;
        v14 = (v8 - __src) >> 4;
        v15 = v14 + 1;
        if ((v14 + 1) >> 60)
        {
          sub_299212A8C();
        }

        v16 = v25 - __src;
        if ((v25 - __src) >> 3 > v15)
        {
          v15 = v16 >> 3;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF0)
        {
          v17 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          sub_2991C1E18(&__src, v17);
        }

        v18 = v14;
        v19 = (16 * v14);
        *v19 = v10;
        v19[1] = v11;
        v8 = (16 * v14 + 16);
        v20 = &v19[-2 * v18];
        memcpy(v20, v12, v13);
        v21 = __src;
        __src = v20;
        v24 = v8;
        v25 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v8 = v10;
        *(v8 + 1) = v11;
        v8 += 16;
      }

      v24 = v8;
      v7 += 3;
    }

    while (v7 != a3);
  }

  sub_29919CE7C((a1 + 16), &__src, a4, *(a1 + 8));
  if (__src)
  {
    v24 = __src;
    operator delete(__src);
  }

  return 1;
}

unint64_t sub_2992130D0(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (v2 <= a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_2991D6F20(exception, "Marisa Payload");
      __cxa_throw(exception, off_29EF0BC80, MEMORY[0x29EDC9350]);
    }

    return *(*(a1 + 24) + 4 * a2);
  }

  return a2;
}

__n128 sub_2992131C8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F64730;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2992131F8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1] >> 1;
  v8 = sub_2992130D0(*(a1 + 8), *a2);
  v9 = *(*(a1 + 16) + 24);

  return sub_2992132AC(v9, v8, v6, v7, a4);
}

uint64_t sub_299213260(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F647A0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992132AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a3;
  v7[1] = a4;
  v6 = a2;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, &v6, v7, a5);
}

uint64_t sub_299213308(uint64_t a1)
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

__n128 sub_2992133FC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F647C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29921342C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1] >> 1;
  v8 = sub_2992130D0(*(a1 + 8), *a2);
  v9 = *(*(a1 + 16) + 24);

  return sub_2992132AC(v9, v8, v6, v7, a4);
}

uint64_t sub_299213494(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F64820))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_299213554(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F64840;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_299213584(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1] >> 1;
  v8 = sub_2992130D0(*(a1 + 8), *a2);
  v9 = *(*(a1 + 16) + 24);

  return sub_2992132AC(v9, v8, v6, v7, a4);
}

uint64_t sub_2992135EC(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F648A0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992136A8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F648C0;
  a2[1] = v2;
  return result;
}

uint64_t sub_2992136D4(uint64_t a1, char *a2)
{
  v2 = *(*(a1 + 8) + 24);
  v4 = *a2;
  if (!v2)
  {
    sub_2991A2240();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_299213730(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F64930))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29921377C(uint64_t a1)
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

uint64_t sub_2992137FC(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_299212A30();
  }

  if (a2 > 0xA)
  {
    if ((a2 | 3) == 0xB)
    {
      v2 = 13;
    }

    else
    {
      v2 = (a2 | 3) + 1;
    }

    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_29919600C();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t sub_299213890(uint64_t a1)
{
  *a1 = &unk_2A1F64950;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_2991BF614((a1 + 48));
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = -1;
  return a1;
}

void sub_2992138FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_299213918(uint64_t a1)
{
  sub_299213950(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299213950(uint64_t a1)
{
  *a1 = &unk_2A1F64950;
  sub_299213AB8(a1);
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *(a1 + 48) = *MEMORY[0x29EDC9538];
  *(a1 + 48 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 56) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  *(a1 + 56) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 64));
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](a1 + 160);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void *sub_299213AB8(uint64_t a1)
{
  v2 = *(a1 + 336);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    *(a1 + 336) = -1;
  }

  result = *(a1 + 8);
  if (result)
  {
    result = munmap(result, *(a1 + 16));
  }

  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_299213B00(uint64_t a1, int *a2)
{
  *a1 = sub_299277300(*a2);
  *(a1 + 8) = a2;
  v4 = sub_299277300(*a2);
  sub_299213DA0(v4, 0, (a1 + 16));
  v5 = sub_29936C2B8();
  v6 = sub_29936C350(v5, *a1, off_2A145F738[0], off_2A145F6F0[0]);
  v7 = *(v6 + 23);
  if (v7 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = *v6;
  }

  if (v7 >= 0)
  {
    v9 = v6[23];
  }

  else
  {
    v9 = *(v6 + 1);
  }

  v10 = CFURLCreateFromFileSystemRepresentation(0, v8, v9, 0);
  v11 = sub_29927910C(v10);
  if (v10)
  {
    CFRelease(v10);
  }

  *(a1 + 40) = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *(a1 + 32) = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v11)
  {
    v12 = CFGetTypeID(v11);
    if (v12 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v11, @"no tone change");
      if (Value)
      {
        for (i = 0; i < CFArrayGetCount(Value); ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
          for (j = 0; j < CFArrayGetCount(ValueAtIndex); ++j)
          {
            v17 = CFArrayGetValueAtIndex(ValueAtIndex, j);
            CFDictionarySetValue(*(a1 + 40), v17, ValueAtIndex);
            CFDictionarySetValue(*(a1 + 32), v17, ValueAtIndex);
          }
        }
      }

      v18 = CFDictionaryGetValue(v11, @"tone change");
      if (v18)
      {
        for (k = 0; k < CFArrayGetCount(v18); ++k)
        {
          v20 = CFArrayGetValueAtIndex(v18, k);
          for (m = 0; m < CFArrayGetCount(v20); ++m)
          {
            v22 = CFArrayGetValueAtIndex(v20, m);
            CFDictionarySetValue(*(a1 + 40), v22, v20);
          }
        }
      }
    }

    CFRelease(v11);
  }

  return a1;
}

void sub_299213D40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299215B18(va, 0);
  v4 = *(v2 + 24);
  if (v4)
  {
    sub_2991A893C(v4);
  }

  _Unwind_Resume(a1);
}

void sub_299213DA0(unsigned int a1@<W0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_2992774EC(a1);
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__dst, v6, v7);
  }

  *(&__dst + v8) = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 0x40000000;
  v10[2] = sub_299215038;
  v10[3] = &unk_29EF0BEA8;
  v10[4] = &v12;
  v11 = a1;
  sub_299214CE8(&__dst, v10, 0, a3);
  if (a2 && (v13[3] & 1) == 0)
  {
    v9 = *a3;
    sub_2992150B4();
  }

  _Block_object_dispose(&v12, 8);
  if (v17 < 0)
  {
    operator delete(__dst);
  }
}

void sub_299213F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  v27 = *(v25 + 8);
  if (v27)
  {
    sub_2991A893C(v27);
  }

  _Block_object_dispose(&a16, 8);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299213F54(uint64_t a1)
{
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_2991A893C(v2);
  }

  return a1;
}

uint64_t sub_299213F98(uint64_t a1, int **a2, unint64_t a3, double *a4)
{
  *a4 = 0.0;
  __p = 0;
  v27 = 0;
  v28 = 0;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 == *a2)
  {
    return 0;
  }

  v6 = a3;
  v7 = (v5 >> 2) + 1;
  if (v7 <= a3)
  {
    return 1;
  }

  v11 = a3 + 2;
  v12 = 4 * a3 - 8;
  do
  {
    v13 = __p;
    v27 = __p;
    if (v6)
    {
      if (v5 == 4)
      {
        goto LABEL_29;
      }

      if (v6 == 1)
      {
        v14 = (*a2)[1];
        sub_2992141C0(&__p, dword_299400BE8);
        sub_2992141C0(&__p, *a2);
      }

      else
      {
        v15 = *a2;
        if (v5 >> 2 == v6)
        {
          sub_2992141C0(&__p, (v15 + v5 - 8));
          sub_2992141C0(&__p, (*a2 + v5 - 4));
          v14 = 2;
        }

        else
        {
          v14 = v15[v6];
          sub_2992141C0(&__p, (v15 + v12));
          sub_2992141C0(&__p, (*a2 + v12 + 4));
        }
      }
    }

    else
    {
      v14 = **a2;
      sub_2992141C0(&__p, dword_299400BE8);
    }

    v13 = __p;
    v16 = (v27 - __p) >> 2;
    if (v16 == 2)
    {
      v17 = *(__p + 1);
      if (*__p == v17 || v14 == *__p || v14 == v17)
      {
LABEL_33:
        v24 = 0;
        goto LABEL_34;
      }
    }

    else if (v16 == 1 && v14 == *__p)
    {
      goto LABEL_33;
    }

    v20 = *(*(*(a1 + 8) + 72) + 8);
    if (*(v20 + 5) != 1 || (v21 = *(v20 + 40)) == 0)
    {
      v21 = *(v20 + 32);
    }

    v22 = *(v21 + 8);
    LMLanguageModelConditionalProbability();
    *a4 = *a4 - v23;
    if (v6 >= v11)
    {
      break;
    }

    ++v6;
    v12 += 4;
  }

  while (v6 < v7);
  v13 = __p;
LABEL_29:
  v24 = 1;
  if (!v13)
  {
    return v24;
  }

LABEL_34:
  v27 = v13;
  operator delete(v13);
  return v24;
}

void sub_2992141A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992141C0(const void **a1, _DWORD *a2)
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

CFArrayRef sub_2992142A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = (*(*a2 + 552))(a2);
  v7 = 40;
  if (v6 == 1)
  {
    v7 = 32;
  }

  v8 = *(a1 + v7);
  v9 = MEMORY[0x29EDB8ED8];
  if (v8 && CFDictionaryGetCount(*(a1 + v7)))
  {
    v27[0] = 0.0;
    v10 = (*(*a2 + 120))(a2, a3);
    v11 = (*(*v10 + 24))(v10);
    v13 = v12;
    v14 = *v9;
    v15 = (*(*a2 + 32))(a2);
    v29.location = v11;
    v29.length = v13;
    v16 = CFStringCreateWithSubstring(v14, v15, v29);
    if (CFDictionaryContainsKey(v8, v16))
    {
      sub_299388124(a2, &v25);
      if (sub_299213F98(a1, &v25, a3, v27))
      {
        Mutable = CFArrayCreateMutable(v14, 0, MEMORY[0x29EDB9000]);
        Value = CFDictionaryGetValue(v8, v16);
        if (Value)
        {
          for (i = 0; i < CFArrayGetCount(Value); ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
            if (CFStringCompare(v16, ValueAtIndex, 0))
            {
              memset(__p, 0, sizeof(__p));
              sub_29920DED0(__p, v25, v26, (v26 - v25) >> 2);
              sub_299322050(*(*(a1 + 16) + 8), ValueAtIndex);
            }
          }

          sub_299321FA0(*(*(a1 + 16) + 8));
        }

        CFRelease(v16);
      }

      else
      {
        CFRelease(v16);
        Mutable = CFArrayCreate(v14, 0, 0, MEMORY[0x29EDB9000]);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      return Mutable;
    }

    CFRelease(v16);
    v21 = MEMORY[0x29EDB9000];
    v20 = v14;
  }

  else
  {
    v20 = *v9;
    v21 = MEMORY[0x29EDB9000];
  }

  return CFArrayCreate(v20, 0, 0, v21);
}

void sub_2992147A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299214800(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = 0;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  while (v5 < (*(*a2 + 48))(a2))
  {
    v6 = sub_2992142A0(a1, a2, v5);
    if (CFArrayGetCount(v6) >= 1)
    {
      v7 = (*(*a2 + 32))(a2);
      Length = CFStringGetLength(v7);
      v8 = (*(*a2 + 24))(a2);
      v20 = CFStringGetLength(v8);
      theString = (*(*a2 + 24))(a2);
      v9 = (*(*a2 + 32))(a2);
      idx = 0;
      alloc = *MEMORY[0x29EDB8ED8];
      while (idx < CFArrayGetCount(v6))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, idx);
        v11 = (*(*a2 + 120))(a2, v5);
        v12 = (*(*v11 + 24))(v11);
        v14 = v13;
        if (Length >= v20)
        {
          goto LABEL_10;
        }

        v15 = CFStringGetLength(theString);
        MutableCopy = CFStringCreateMutableCopy(alloc, v15, theString);
        v17 = sub_2993961F8(theString, v9, v12 + v14);
        if (v17 >= 1)
        {
          v26.location = v17 - v14;
          v26.length = v14;
          CFStringReplace(MutableCopy, v26, ValueAtIndex);
LABEL_10:
          v18 = CFStringGetLength(v9);
          v19 = CFStringCreateMutableCopy(alloc, v18, v9);
          v27.location = v12;
          v27.length = v14;
          CFStringReplace(v19, v27, ValueAtIndex);
          sub_299388124(a2, &__p);
          sub_299322050(*(*(a1 + 16) + 8), ValueAtIndex);
        }

        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        ++idx;
      }

      sub_299321FA0(*(*(a1 + 16) + 8));
      if (v6)
      {
        CFRelease(v6);
      }

      return;
    }

    CFRelease(v6);
    ++v5;
  }
}

void sub_299214C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  v22 = *a14;
  if (*a14)
  {
    *(a14 + 8) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_299214CE8(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v25 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A145E330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145E330))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_2A145E378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145E378))
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &stru_2A145E338, &dword_29918C000);
    __cxa_guard_release(&qword_2A145E378);
  }

  v22 = 0;
  v23 = 0;
  std::mutex::lock(&stru_2A145E338);
  v8 = sub_29921517C(qword_2A145E328, a1);
  v9 = v8;
  if (!v8 || (v10 = v8[6]) == 0 || (v10->__shared_owners_ != -1 ? (v11 = a3 == 0) : (v11 = 0), !v11))
  {
    v12 = sub_2993652F8(0xDu);
    v13 = os_signpost_id_make_with_pointer(v12, a1);
    v14 = sub_2993652F8(0xDu);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v14;
      if (os_signpost_enabled(v14))
      {
        if (*(a1 + 23) >= 0)
        {
          v16 = a1;
        }

        else
        {
          v16 = *a1;
        }

        *buf = 136315138;
        *&buf[4] = v16;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "SingletonResourceManagerLoad", "Load resource with key: [%s]", buf, 0xCu);
      }
    }

    v17 = (*(a2 + 16))(a2);
    sub_299215134(&v22, v17);
  }

  v18 = std::__shared_weak_count::lock(v10);
  if (v18)
  {
    v19 = v9[5];
  }

  else
  {
    v19 = 0;
  }

  v22 = v19;
  v23 = v18;
  std::mutex::unlock(&stru_2A145E338);
  v20 = v23;
  *a4 = v22;
  a4[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v23)
    {
      sub_2991A893C(v23);
    }
  }

  v21 = *MEMORY[0x29EDCA608];
}

const void **sub_29921517C(void *a1, const void **a2)
{
  v4 = sub_2991C0548(a1, a2);
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

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_2991C09F4(a1, i + 2, a2))
      {
        return i;
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
  }

  return i;
}

void sub_299215278(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_2992152F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29921530C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29921530C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_29921543C((v2 + 8), 0);
    MEMORY[0x29C29BFB0](v2, 0x1020C40D5A9D86FLL);
  }

  return a1;
}

void sub_299215364(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992153A4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F649D0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_2992153E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29921543C((a2 + 8), 0);

    JUMPOUT(0x29C29BFB0);
  }
}

void *sub_29921543C(void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_299321F6C(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

const void **sub_299215488(void *a1, const void **a2)
{
  v4 = sub_2991C0548(a1, a2);
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
    sub_2992156FC();
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

  if (!sub_2991C09F4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_2992156E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992157AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992157AC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_299215A4C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2992157F8(uint64_t a1, size_t __n)
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
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
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

      sub_2992158E8(a1, prime);
    }
  }
}

void sub_2992158E8(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_29919600C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_299215A4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_299215B18(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_299215B50(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v6 = sub_299367458(a1, a2, 0, a4);
  *v6 = &unk_2A1F649F8;
  v7 = a3[1];
  v6[6] = *a3;
  v6[7] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_299215BC0(a1, a3);
  return a1;
}

uint64_t sub_299215BC0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = v2 | 0x10;
  *(result + 32) = v2 | 0x10;
  v4 = *a2;
  if (*(*a2 + 237) == 1)
  {
    v3 = v2 | 0x11;
    *(result + 32) = v2 | 0x11;
  }

  if (v4[238] == 1)
  {
    v3 |= 2uLL;
    *(result + 32) = v3;
  }

  if (v4[236] == 1)
  {
    v3 |= 4uLL;
    *(result + 32) = v3;
  }

  if (v4[239] == 1)
  {
    *(result + 32) = v3 | 8;
  }

  return result;
}

uint64_t sub_299215C28(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, void *a5, int a6)
{
  v8 = sub_2993675B4(a1, a2, *a3, a3[1], *a4, *(a4 + 8), a6);
  *v8 = &unk_2A1F649F8;
  v9 = a5[1];
  v8[6] = *a5;
  v8[7] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_299215BC0(a1, a5);
  return a1;
}

uint64_t sub_299215CA8(uint64_t result, uint64_t a2, int a3)
{
  *result = &unk_2A1F73CB8;
  *(result + 8) = a3;
  *(result + 16) = *(a2 + 16);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = *(a2 + 40);
  *result = &unk_2A1F649F8;
  v3 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_299215D18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 48);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return sub_299215EC0(a2, *(v2 + 56), *(v2 + 64), (*(v2 + 64) - *(v2 + 56)) >> 1);
}

uint64_t sub_299215D38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = v2 + 80;
  v4 = 80;
  if (*(v2 + 88) == *(v2 + 80))
  {
    v4 = 56;
    v3 = v2 + 56;
  }

  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return sub_299215EC0(a2, *(v2 + v4), *(v3 + 8), (*(v3 + 8) - *(v2 + v4)) >> 1);
}

uint64_t sub_299215D80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_299389B68(*(a1 + 48));
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v4 = *v3;
  v5 = v3[1];
  v6 = (v5 - *v3) >> 1;

  return sub_299215EC0(a2, v4, v5, v6);
}

void *sub_299215DD0(void *a1)
{
  *a1 = &unk_2A1F649F8;
  v2 = a1[7];
  if (v2)
  {
    sub_2991A893C(v2);
  }

  return a1;
}

void sub_299215E1C(void *a1)
{
  *a1 = &unk_2A1F649F8;
  v1 = a1[7];
  if (v1)
  {
    sub_2991A893C(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299215EC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_2991A6584(result, a4);
  }

  return result;
}

void sub_299215F20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_WORD *sub_299215F3C(uint64_t a1, _WORD *a2, unsigned int a3)
{
  if ((*(*a1 + 96))(a1) == 85)
  {
    v6 = 2;
  }

  else if ((*(*a1 + 96))(a1) == 76)
  {
    v6 = 4;
  }

  else if ((*(*a1 + 96))(a1) == 65)
  {
    v6 = 8;
  }

  else
  {
    if ((*(*a1 + 96))(a1) != 71)
    {
      goto LABEL_10;
    }

    v6 = 256;
  }

  *a2 |= v6;
LABEL_10:
  if ((*(*a1 + 200))(a1))
  {
    *a2 |= 0x10u;
  }

  if ((*(*a1 + 272))(a1))
  {
    *a2 |= 0x20u;
  }

  if ((*(*a1 + 264))(a1))
  {
    *a2 |= 0x40u;
  }

  if (a3 <= 5 && ((1 << a3) & 0x26) != 0)
  {
    if ((*(*a1 + 208))(a1))
    {
      *a2 |= 1u;
    }

    if ((*(*a1 + 192))(a1))
    {
      *a2 |= 0x80u;
    }

    if ((*(*a1 + 288))(a1))
    {
      *a2 |= 0x200u;
    }
  }

  return a2;
}

_WORD *sub_2992161D8(_WORD *result)
{
  v5 = 0;
  v1 = *(result + 6);
  if (*(result + 7) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      v4 = *(v1 + 8 * v3);
      result = sub_299215F3C(v4, &v5, 0);
      *(v4 + 16) = v5;
      ++v3;
      v1 = *(v2 + 6);
    }

    while (v3 < (*(v2 + 7) - v1) >> 3);
  }

  return result;
}

__int128 *sub_29921624C()
{
  if ((atomic_load_explicit(&qword_2A145FDE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FDE8))
  {
    xmmword_2A1461D00 = 0u;
    *&qword_2A1461D10 = 0u;
    dword_2A1461D20 = 1065353216;
    __cxa_atexit(sub_299216318, &xmmword_2A1461D00, &dword_29918C000);
    __cxa_guard_release(&qword_2A145FDE8);
  }

  if (atomic_load_explicit(&qword_2A145FDF0, memory_order_acquire) != -1)
  {
    v3 = &v1;
    v2 = &v3;
    std::__call_once(&qword_2A145FDF0, &v2, sub_2992185B4);
  }

  return &xmmword_2A1461D00;
}

uint64_t sub_299216318(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_29921856C((v2 + 2));
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

uint64_t sub_299216378(int a1, uint64_t a2, int a3, int a4, _WORD *a5, uint64_t a6, uint64_t a7, void *a8)
{
  *a8 = 0;
  v8 = a3 >> 1;
  if (!a1)
  {
    goto LABEL_124;
  }

  if (v8 < 1)
  {
    goto LABEL_124;
  }

  v9 = a2 + (a3 & 0xFFFFFFFE);
  v10 = *(v9 - 2);
  if (!*(v9 - 2))
  {
    goto LABEL_124;
  }

  v11 = 0;
  v12 = &word_29945C572;
  while (*v12 != v10)
  {
    v11 -= 2;
    ++v12;
    if (v11 == -12)
    {
      goto LABEL_9;
    }
  }

  if (-v11 != -2)
  {
LABEL_124:
    if (a4 != 39 && (a4 - 97) >= 0x1Au)
    {
      if (!v8)
      {
        *a5 = a4;
        *a8 = 0;
        return 2;
      }

      return 4294967294;
    }

LABEL_132:
    operator new[]();
  }

LABEL_9:
  if (v8 == 1)
  {
    v13 = 0;
    v14 = v10 == a4;
  }

  else
  {
    v13 = *(v9 - 4);
    v14 = v10 == a4;
    if (v10 == a4 && v13 && v13 != v10)
    {
      return 4294967294;
    }
  }

  if (v10 <= 112)
  {
    if (v10 <= 103)
    {
      if ((v10 - 102) >= 2)
      {
        if (v10 != 99)
        {
          if (v10 != 100)
          {
            goto LABEL_60;
          }

          goto LABEL_16;
        }

        if ((a4 - 97) > 0x14)
        {
          goto LABEL_60;
        }

        if (((1 << (a4 - 97)) & 0x104111) == 0)
        {
          if (a4 == 104)
          {
            goto LABEL_132;
          }

          goto LABEL_60;
        }

        return 4294967294;
      }

LABEL_58:
      if (a4 == 119)
      {
        v14 = 1;
      }

      goto LABEL_60;
    }

    if (v10 != 104)
    {
      if (v10 != 107)
      {
        if (v10 != 108 || (a4 - 107) > 0xC)
        {
          goto LABEL_60;
        }

        v15 = 1 << (a4 - 107);
        v16 = 4609;
        goto LABEL_90;
      }

      if (v13 <= 107)
      {
        if (v13 && v13 != 107)
        {
          goto LABEL_60;
        }

        goto LABEL_58;
      }

      if (v13 != 108 && v13 != 120)
      {
        goto LABEL_60;
      }

      v20 = ((a4 - 105) >> 1) | ((a4 - 105) << 15);
      if (v20 >= 9u)
      {
        goto LABEL_60;
      }

      v21 = 329;
LABEL_113:
      if (((v21 >> v20) & 1) == 0)
      {
        goto LABEL_60;
      }

      return 4294967294;
    }

    if (v13 <= 114)
    {
      if (!v13)
      {
        goto LABEL_58;
      }

      if (v13 != 100)
      {
        if (v13 != 104)
        {
          goto LABEL_60;
        }

        goto LABEL_58;
      }

      goto LABEL_115;
    }

    if ((v13 - 115) >= 2)
    {
      if (v13 != 119)
      {
        goto LABEL_60;
      }

      goto LABEL_99;
    }

    goto LABEL_115;
  }

  if (v10 > 118)
  {
    if (v10 != 119)
    {
      if (v10 != 120)
      {
        if (v10 != 121)
        {
          goto LABEL_60;
        }

        if (v13 > 118)
        {
          if (v13 == 119)
          {
            if ((a4 - 97) > 0x14 || ((1 << (a4 - 97)) & 0x104001) == 0)
            {
              goto LABEL_60;
            }

            return 4294967294;
          }

          if (v13 != 120 && v13 != 121)
          {
            goto LABEL_60;
          }
        }

        else if (v13 && v13 != 108)
        {
          if (v13 == 118)
          {
            v17 = 4294967294;
            if (a4 == 101 || a4 == 105)
            {
              return v17;
            }
          }

          goto LABEL_60;
        }

        v22 = a4 == 105;
LABEL_116:
        v24 = v22;
        if (v22)
        {
          v14 = 1;
        }

        if (!v14)
        {
          goto LABEL_61;
        }

        if ((v24 & 1) == 0)
        {
          goto LABEL_124;
        }

        return 4294967294;
      }

      if ((a4 - 107) > 0xC)
      {
        goto LABEL_60;
      }

      v15 = 1 << (a4 - 107);
      v16 = 4617;
LABEL_90:
      if ((v15 & v16) != 0)
      {
        goto LABEL_132;
      }

      goto LABEL_60;
    }

    if (v13 > 106)
    {
      if (v13 <= 114)
      {
        if (v13 == 107)
        {
          goto LABEL_115;
        }

        if (v13 != 108)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if ((v13 - 115) < 2)
        {
          goto LABEL_115;
        }

        if (v13 != 120)
        {
          if (v13 != 119)
          {
            goto LABEL_60;
          }

          goto LABEL_129;
        }
      }

      v20 = ((a4 - 101) >> 1) | ((a4 - 101) << 15);
      if (v20 >= 0xBu)
      {
        goto LABEL_60;
      }

      v21 = 1317;
      goto LABEL_113;
    }

    if (v13 > 101)
    {
      if ((v13 - 102) >= 2)
      {
        if (v13 != 104)
        {
          goto LABEL_60;
        }

LABEL_99:
        v17 = 4294967294;
        if (a4 == 117 || a4 == 121)
        {
          return v17;
        }

        goto LABEL_60;
      }

LABEL_115:
      v22 = a4 == 121;
      goto LABEL_116;
    }

    if (v13)
    {
      if (v13 != 100)
      {
        goto LABEL_60;
      }

      goto LABEL_115;
    }

LABEL_129:
    if (a4 == 104)
    {
      goto LABEL_132;
    }

    if (a4 != 117)
    {
      goto LABEL_60;
    }

    return 4294967294;
  }

  if (v10 == 113)
  {
    goto LABEL_58;
  }

  if (v10 == 115)
  {
    if (!v13)
    {
LABEL_16:
      if (a4 == 104 || a4 == 119)
      {
        goto LABEL_132;
      }

      goto LABEL_60;
    }

    if (v13 != 116)
    {
      if (v13 != 115)
      {
        goto LABEL_60;
      }

      goto LABEL_16;
    }

    goto LABEL_115;
  }

  if (v10 != 116)
  {
    goto LABEL_60;
  }

  if (v13 > 115)
  {
    if (v13 == 120)
    {
      goto LABEL_102;
    }

    if (v13 != 116)
    {
      goto LABEL_60;
    }

    goto LABEL_88;
  }

  if (!v13)
  {
LABEL_88:
    if ((a4 - 104) > 0xF)
    {
      goto LABEL_60;
    }

    v15 = 1 << (a4 - 104);
    v16 = 34817;
    goto LABEL_90;
  }

  if (v13 != 108)
  {
    goto LABEL_60;
  }

LABEL_102:
  v23 = (((a4 - 97) >> 1) | ((a4 - 97) << 15));
  if (v23 > 0xC)
  {
    goto LABEL_60;
  }

  if (((1 << ((a4 - 97) >> 1)) & 0x1095) != 0)
  {
    return 4294967294;
  }

  if (v23 == 9)
  {
    goto LABEL_124;
  }

LABEL_60:
  if (v14)
  {
    goto LABEL_124;
  }

LABEL_61:
  v18 = 0;
  for (i = L"aiueoy"; *i != a4; ++i)
  {
    v18 -= 2;
    v17 = 4294967294;
    if (v18 == -12)
    {
      return v17;
    }
  }

  v17 = 4294967294;
  if (-v18 != -2)
  {
    goto LABEL_124;
  }

  return v17;
}

void sub_299216B48()
{
  if ((atomic_load_explicit(&qword_2A145FDF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FDF8))
  {
    sub_299217DF0(&qword_2A145FE00, L"bcdfghjklmpqrstvwxyz");
    __cxa_atexit(sub_299217384, &qword_2A145FE00, &dword_29918C000);

    __cxa_guard_release(&qword_2A145FDF8);
  }
}

const void **sub_299216BF4(char *a1, unint64_t a2)
{
  sub_29921624C();
  sub_299217EC8(__p, a1, &a1[a2], a2);
  v4 = sub_299218D24(&xmmword_2A1461D00, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4)
  {
    return v4 + 5;
  }

  else
  {
    return 0;
  }
}

void sub_299216C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299216D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v17)
  {
    MEMORY[0x29C29BF70](v17, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

void sub_299216DAC(uint64_t *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v43 = *a1;
  sub_2992173B8(a5, a1[1]);
  v41 = a2;
  v9 = a1[1];
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      __p = 0;
      v46 = 0;
      v47 = 0;
      v14 = (v43 + 2 * v13);
      v44 = 0;
      if (sub_299217428(v14, v9 - v13, &__p, &v44))
      {
        v15 = HIBYTE(v47);
        v16 = HIBYTE(v47);
        v17 = v46;
        if (v47 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v47 >= 0)
        {
          v19 = HIBYTE(v47);
        }

        else
        {
          v19 = v46;
        }

        if (v19)
        {
          v20 = 2 * v19;
          do
          {
            sub_2992174C4(a5, *p_p++);
            v20 -= 2;
          }

          while (v20);
          v15 = HIBYTE(v47);
          v17 = v46;
          v16 = HIBYTE(v47);
        }

        v21 = v44;
        v22 = v44 + v13;
        goto LABEL_15;
      }

      v23 = a1[1];
      if (v13 >= v23)
      {
        v22 = v13;
        goto LABEL_47;
      }

      v22 = v13 + 1;
      if (v13 + 1 >= v23)
      {
        break;
      }

      if (*v14 == 7209070)
      {
        sub_2992174C4(a5, 12435);
        v22 = v13 + 2;
        v10 += 2;
LABEL_46:
        ++v11;
        goto LABEL_47;
      }

      if (*v14 == 110)
      {
        v24 = 0;
        v25 = "a";
        while (*v25 != *(v43 + 2 * v22))
        {
          v24 -= 2;
          v25 += 2;
          if (v24 == -16)
          {
            goto LABEL_45;
          }
        }

        if (-v24 != -2)
        {
          goto LABEL_35;
        }

LABEL_45:
        sub_2992174C4(a5, 12435);
        ++v10;
        goto LABEL_46;
      }

LABEL_35:
      sub_299216B48();
      v26 = *v14;
      v27 = byte_2A145FE17;
      if (byte_2A145FE17 >= 0)
      {
        v28 = &qword_2A145FE00;
      }

      else
      {
        v28 = qword_2A145FE00;
      }

      if (byte_2A145FE17 < 0)
      {
        v27 = unk_2A145FE08;
      }

      if (!v27)
      {
        goto LABEL_28;
      }

      v29 = 2 * v27;
      v30 = v28;
      while (*v30 != v26)
      {
        v30 = (v30 + 2);
        v29 -= 2;
        if (!v29)
        {
          goto LABEL_28;
        }
      }

      if (!v29 || v30 - v28 == -2 || v26 != *(v43 + 2 * v22))
      {
        goto LABEL_28;
      }

      if (!a4 || (sub_299217428(v14 + 1, a1[1] + ~v13, &__p, &v44) & 1) != 0)
      {
        sub_2992174C4(a5, 12387);
        ++v10;
        ++v11;
        if (a4)
        {
          v15 = HIBYTE(v47);
          v16 = HIBYTE(v47);
          v17 = v46;
          if (v47 >= 0)
          {
            v37 = &__p;
          }

          else
          {
            v37 = __p;
          }

          if (v47 >= 0)
          {
            v38 = HIBYTE(v47);
          }

          else
          {
            v38 = v46;
          }

          if (v38)
          {
            v39 = 2 * v38;
            do
            {
              sub_2992174C4(a5, *v37++);
              v39 -= 2;
            }

            while (v39);
            v15 = HIBYTE(v47);
            v17 = v46;
            v16 = HIBYTE(v47);
          }

          v21 = v44;
          v22 += v44;
LABEL_15:
          v10 += v21;
          if (v16 < 0)
          {
            v15 = v17;
          }

          v11 += v15;
        }

LABEL_47:
        v12 = 0;
        goto LABEL_48;
      }

      LOWORD(v26) = *v14;
LABEL_29:
      if (((v26 & 0xFFDF) - 65) < 0x1Au)
      {
        LOWORD(v26) = v26 - 288;
      }

LABEL_31:
      sub_2992174C4(a5, v26);
      ++v10;
      ++v11;
      if (((*v14 & 0xFFDF) - 65) >= 0x1Au)
      {
        goto LABEL_47;
      }

      ++v12;
LABEL_48:
      v13 = v22;
      if (a3)
      {
        v31 = a3[1];
        if (v31)
        {
          v32 = vcnt_s8(v31);
          v32.i16[0] = vaddlv_u8(v32);
          if (v32.u32[0] > 1uLL)
          {
            v33 = v11;
            if (*&v31 <= v11)
            {
              v33 = v11 % *&v31;
            }
          }

          else
          {
            v33 = (*&v31 - 1) & v11;
          }

          v34 = *(*a3 + 8 * v33);
          if (v34)
          {
            for (i = *v34; i; i = *i)
            {
              v36 = i[1];
              if (v36 == v11)
              {
                if (i[2] == v11)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                if (v32.u32[0] > 1uLL)
                {
                  if (v36 >= *&v31)
                  {
                    v36 %= *&v31;
                  }
                }

                else
                {
                  v36 &= *&v31 - 1;
                }

                if (v36 != v33)
                {
                  break;
                }
              }
            }
          }
        }

        operator new();
      }

LABEL_66:
      if (SHIBYTE(v47) < 0)
      {
        operator delete(__p);
      }

      v9 = a1[1];
      if (v13 >= v9)
      {
        goto LABEL_89;
      }
    }

    LOWORD(v26) = *v14;
LABEL_28:
    if (!a4)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v12 = 0;
LABEL_89:
  if (v41)
  {
    if (*a1)
    {
      v40 = v12;
    }

    else
    {
      v40 = 0;
    }

    *v41 = sub_299217570(*a1 + 2 * (v9 - v12), v40);
  }
}

void sub_299217330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 + 23) < 0)
  {
    operator delete(*v19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299217384(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2992173B8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_299212A30();
  }

  if (*(a1 + 23) < 0)
  {
    v3 = (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v3 = 10;
  }

  if (v3 < a2)
  {
    v4 = a2 | 3;
    if ((a2 | 3) == 0xB)
    {
      v4 = 12;
    }

    if (a2 <= 0xA)
    {
      v5 = 10;
    }

    else
    {
      v5 = v4;
    }

    sub_299217F74(a1, v5);
  }
}

uint64_t sub_299217428(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_29935962C(a1, a2, &word_2A145FDD8, 1);
  if (word_2A145FDD8)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (!v7)
  {
    v9 = v6;
    sub_299217DF0(&__dst, &word_2A145FDD8);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = __dst;
    *(a3 + 16) = v12;
    if (a4)
    {
      *a4 = v9;
    }
  }

  return v8;
}

uint64_t sub_2992174C4(uint64_t result, __int16 a2)
{
  v2 = result;
  if (*(result + 23) < 0)
  {
    v4 = *(result + 8);
    v3 = (*(result + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v4 == v3)
    {
LABEL_5:
      sub_299218110(result, v3, 1uLL);
    }

    *(result + 8) = v4 + 1;
    v2 = *result;
  }

  else
  {
    if (*(result + 23) == 10)
    {
      v3 = 10;
      goto LABEL_5;
    }

    v4 = *(result + 23);
    *(result + 23) = (*(result + 23) + 1) & 0x7F;
  }

  v5 = (v2 + 2 * v4);
  *v5 = a2;
  v5[1] = 0;
  return result;
}

unint64_t sub_299217570(uint64_t a1, unint64_t a2)
{
  sub_29921624C();
  v4 = (a1 + 2 * a2 - 6);
  v5 = 3;
  do
  {
    if (a2 >= v5)
    {
      v6 = a1 ? v5 : 0;
      v9[0] = v4;
      v9[1] = v6;
      sub_2992FE120(v9, __p);
      v7 = sub_299218D24(&xmmword_2A1461D00, __p);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v7)
      {
        break;
      }
    }

    v4 += 2;
    --v5;
  }

  while (v5);
  return v5;
}

void sub_299217618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992176F0(_Unwind_Exception *a1)
{
  *v1 = 0;
  MEMORY[0x29C29BF70](v3, v2);
  _Unwind_Resume(a1);
}

void sub_299217768(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MEMORY[0x29C29BF70](v3, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_299217794@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_29921822C(a3, *(a1 + 8), 0);
  result = sub_29921788C(a1, a2);
  v7 = result;
  v8 = result;
  v9 = *(a1 + 8) - result;
  if (v9)
  {
    if (*(a3 + 23) >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    result = memmove(v10, *a1, 2 * v9);
    v8 = *(a1 + 8);
  }

  if (v8 >= v7)
  {
    v11 = *a1;
    v12 = 2 * v8 - 2 * v7;
    do
    {
      v13 = *(v11 + v12);
      if ((v13 + 191) < 0x1Au)
      {
        v13 += 288;
      }

      if (*(a3 + 23) >= 0)
      {
        v14 = a3;
      }

      else
      {
        v14 = *a3;
      }

      *&v14[v12] = v13;
      v12 += 2;
      --v7;
    }

    while (v7);
  }

  return result;
}

void sub_29921786C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29921788C(uint64_t *a1, unsigned int a2)
{
  if ((a2 & 0x20) != 0)
  {
    v9[1] = v2;
    v9[2] = v3;
    v9[0] = 0;
    sub_299216DAC(a1, v9, 0, (a2 >> 30) & 1, &__p);
    if (v8 < 0)
    {
      operator delete(__p);
    }

    return v9[0];
  }

  else
  {
    v4 = a1[1];
    v5 = *a1;

    return sub_299217570(v5, v4);
  }
}

void sub_2992178F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v6 = v4 - a2;
      if (v4 - a2 >= 0)
      {
        v8 = sub_299216BF4((*a1 + 2 * v6), 2 * (a2 & 0x7FFFFFFF));
        if (v8)
        {
          v9 = v8;
          __p = 0;
          v16 = 0;
          v17 = 0;
          if (v4 != a2)
          {
            sub_299217A18(&__p, *a1, v6);
          }

          v10 = *v9;
          v11 = v9[1];
          if (*v9 != v11)
          {
            do
            {
              sub_299217A94(&__p, v6);
              v12 = *(v10 + 23);
              if ((v12 & 0x8000000000000000) != 0)
              {
                v13 = *v10;
                v12 = v10[1];
              }

              else
              {
                v13 = v10;
              }

              sub_299217A18(&__p, v13, v12 >> 1);
              v14 = 0;
              (*(a3 + 16))(a3, &__p, &v14);
              if (v14)
              {
                break;
              }

              v10 += 3;
            }

            while (v10 != v11);
          }

          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }
        }
      }
    }
  }
}

void sub_2992179F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_299217A18(char *result, char *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v5 = result;
    sub_299218E20(result, a3 + ((*(result + 1) - *result) >> 1));
    v6 = *(v5 + 1);

    return sub_299218EBC(v5, v6, a2, &a2[2 * a3], a3);
  }

  return result;
}

void sub_299217A94(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    sub_299218444(a1, a2 - v2);
  }
}

uint64_t sub_299217AC4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (a2 && (a4 & 0x22) == 0x22 && (v13[0] = MEMORY[0x29EDCA5F8], v13[1] = 0x40000000, v13[2] = sub_299217C38, v13[3] = &unk_29EF0D6D8, v13[4] = &v14, v13[5] = a3, sub_2992178F0(a1, a2, v13), (v15[3] & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v10 = sub_299279770(*a1, *(a1 + 8), *a3, *(a3 + 8), (a4 >> 6) & 8 | a4 & 0x20 | (a4 >> 4) & 0x10 | (a4 >> 7) & 6, (a4 >> 1) & 1);
    v11 = v15;
    *(v15 + 24) = v10;
    if (v10)
    {
      v9 = 1;
      if (a5 && *(a1 + 8) == *(a3 + 8))
      {
        *a5 = 1;
        v9 = *(v11 + 24);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  _Block_object_dispose(&v14, 8);
  return v9 & 1;
}

void sub_299217C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *sub_299217C38(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 40);
  result = *a2;
  v7 = *(a2 + 8) - *a2;
  if (*(v5 + 8) >= (v7 >> 1))
  {
    result = memcmp(result, *v5, v7);
    if (!result)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t sub_299217C94(uint64_t a1, uint64_t a2)
{
  v4 = sub_299217570(*a1, *(a1 + 8));
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (v4 < 1)
  {
    v5 = sub_2992FE1C4(a2, a1);
  }

  else
  {
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 0x40000000;
    v7[2] = sub_299217D88;
    v7[3] = &unk_29EF0D700;
    v7[4] = &v8;
    v7[5] = a2;
    sub_2992178F0(a1, v4, v7);
    v5 = *(v9 + 24);
  }

  _Block_object_dispose(&v8, 8);
  return v5 & 1;
}

void sub_299217D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_299217D88(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 40);
  v6 = (a2[1] - *a2) >> 1;
  if (!*a2)
  {
    v6 = 0;
  }

  v8[0] = *a2;
  v8[1] = v6;
  result = sub_2992FE1C4(v5, v8);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

_BYTE *sub_299217DF0(_BYTE *__dst, char *__src)
{
  if (*__src)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *&__src[v3 + 2];
      --v4;
      v3 += 2;
    }

    while (v5);
    v6 = -v4;
    if (-v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_299212A30();
    }

    if (v6 >= 0xB)
    {
      if ((v6 | 3) == 0xB)
      {
        v8 = 13;
      }

      else
      {
        v8 = (v6 | 3) + 1;
      }

      sub_299212A48(__dst, v8);
    }

    __dst[23] = v6;
    v7 = __dst;
    if (v4)
    {
      memmove(__dst, __src, v3);
      goto LABEL_15;
    }

    v6 = 0;
  }

  else
  {
    v6 = 0;
    __dst[23] = 0;
  }

  v7 = __dst;
LABEL_15:
  *&v7[2 * v6] = 0;
  return __dst;
}

_BYTE *sub_299217EC8(_BYTE *result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v5 = result;
  if (a4 > 0x16)
  {
    operator new();
  }

  result[23] = a4;
  while (a2 != a3)
  {
    v6 = *a2++;
    *v5++ = v6;
  }

  *v5 = 0;
  return result;
}

void sub_299217F74(void *__dst, unint64_t a2)
{
  v3 = *(__dst + 23);
  if (v3 < 0)
  {
    v3 = __dst[1];
    v6 = __dst[2];
    v4 = (v6 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v5 = HIBYTE(v6);
  }

  else
  {
    v4 = 10;
    LOBYTE(v5) = *(__dst + 23);
  }

  v7 = a2 < 0xB;
  if (a2 >= 0xB)
  {
    if (v4 < a2)
    {
      sub_299212A48(__dst, a2 + 1);
    }

    sub_299212A48(__dst, a2 + 1);
  }

  v8 = *__dst;
  if ((v5 & 0x80) != 0)
  {
    v5 = __dst[1];
    v7 = 1;
  }

  else
  {
    v5 = v5;
  }

  v9 = __CFADD__(v5, 1);
  v10 = v5 + 1;
  if (!v9)
  {
    memmove(__dst, v8, 2 * v10);
  }

  if (v7)
  {
    operator delete(v8);
  }

  *(__dst + 23) = v3 & 0x7F;
}

void sub_2992180E4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_299218110(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (0x7FFFFFFFFFFFFFF7 - a2 >= a3)
  {
    if (*(a1 + 23) < 0)
    {
      v3 = *a1;
    }

    v4 = a3 + a2;
    if (a3 + a2 <= 2 * a2)
    {
      v4 = 2 * a2;
    }

    if ((v4 | 3) == 0xB)
    {
      v5 = 13;
    }

    else
    {
      v5 = (v4 | 3) + 1;
    }

    v6 = v4 >= 0xB;
    v7 = 11;
    if (v6)
    {
      v7 = v5;
    }

    if (a2 <= 0x3FFFFFFFFFFFFFF2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x7FFFFFFFFFFFFFF7;
    }

    sub_299212A48(a1, v8);
  }

  sub_299212A30();
}

uint64_t sub_29921822C(uint64_t result, unint64_t a2, __int16 a3)
{
  v3 = *(result + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v3 = *(result + 8);
    if (v3 >= a2)
    {
      *(result + 8) = a2;
      result = *result;
      goto LABEL_7;
    }

    return sub_299218268(result, a2 - v3, a3);
  }

  if (v3 < a2)
  {
    return sub_299218268(result, a2 - v3, a3);
  }

  *(result + 23) = a2;
LABEL_7:
  *(result + 2 * a2) = 0;
  return result;
}

uint64_t sub_299218268(uint64_t result, unint64_t a2, __int16 a3)
{
  if (a2)
  {
    v4 = *(result + 23);
    if (v4 < 0)
    {
      v4 = *(result + 8);
      v7 = *(result + 16);
      v5 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v6 = HIBYTE(v7);
    }

    else
    {
      v5 = 10;
      LOBYTE(v6) = *(result + 23);
    }

    if (v5 - v4 < a2)
    {
      sub_299218110(result, v5, a2 - v5 + v4);
    }

    v8 = result;
    if ((v6 & 0x80) != 0)
    {
      v8 = *result;
    }

    v9 = 0;
    v10 = vdupq_n_s64(a2 - 1);
    v11 = (v8 + 2 * v4 + 8);
    do
    {
      v12 = vdupq_n_s64(v9);
      v13 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_2993FCC00)));
      if (vuzp1_s8(vuzp1_s16(v13, *v10.i8), *v10.i8).u8[0])
      {
        *(v11 - 4) = a3;
      }

      if (vuzp1_s8(vuzp1_s16(v13, *&v10), *&v10).i8[1])
      {
        *(v11 - 3) = a3;
      }

      if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_2993FCC10)))), *&v10).i8[2])
      {
        *(v11 - 2) = a3;
        *(v11 - 1) = a3;
      }

      v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_2993FDE70)));
      if (vuzp1_s8(*&v10, vuzp1_s16(v14, *&v10)).i32[1])
      {
        *v11 = a3;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(v14, *&v10)).i8[5])
      {
        v11[1] = a3;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_2993FDE60))))).i8[6])
      {
        v11[2] = a3;
        v11[3] = a3;
      }

      v9 += 8;
      v11 += 8;
    }

    while (((a2 + 7) & 0xFFFFFFFFFFFFFFF8) != v9);
    v15 = v4 + a2;
    if (*(result + 23) < 0)
    {
      *(result + 8) = v15;
    }

    else
    {
      *(result + 23) = v15 & 0x7F;
    }

    *(v8 + 2 * v15) = 0;
  }

  return result;
}

void sub_299218444(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      sub_299212A8C();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_299212A48(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_29921856C(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_299212B90(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_2992185B4()
{
  v0 = 0;
  v1 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v28 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  do
  {
    v2 = (&off_29EF0BEC8)[v1];
    if (v2)
    {
      if (v0)
      {
        v3 = 2 * u_strlen((&off_29EF0BEC8)[v1]);
        v4 = v25;
        if (v25 >= v26)
        {
          v13 = 0xAAAAAAAAAAAAAAABLL * (v25 - v24) + 1;
          if (v13 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_299212A8C();
          }

          if (0x5555555555555556 * ((v26 - v24) >> 3) > v13)
          {
            v13 = 0x5555555555555556 * ((v26 - v24) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v26 - v24) >> 3) >= 0x555555555555555)
          {
            v14 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v14 = v13;
          }

          v32 = &v24;
          if (v14)
          {
            sub_299212AA4(&v24, v14);
          }

          *&__dst = 0;
          *(&__dst + 1) = 8 * (v25 - v24);
          v30 = *(&__dst + 1);
          v31 = 0;
          sub_2991D6AE8(*(&__dst + 1), v2, v3);
          v5 = v30 + 3;
          v18 = (*(&__dst + 1) - (v25 - v24));
          memcpy(v18, v24, v25 - v24);
          v19 = v24;
          v20 = v26;
          v24 = v18;
          v25 = v5;
          v26 = v31;
          v30 = v19;
          v31 = v20;
          *&__dst = v19;
          *(&__dst + 1) = v19;
          sub_299212AFC(&__dst);
        }

        else
        {
          sub_2991D6AE8(v25, v2, v3);
          v5 = v4 + 3;
        }

        v25 = v5;
      }

      else
      {
        v12 = u_strlen((&off_29EF0BEC8)[v1]);
        sub_2991D6AE8(&__dst, v2, 2 * v12);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = __dst;
        v28 = v30;
      }

      ++v0;
      goto LABEL_42;
    }

    v6 = sub_2991C0548(&xmmword_2A1461D00, __p);
    v7 = v6;
    v8 = *(&xmmword_2A1461D00 + 1);
    if (!*(&xmmword_2A1461D00 + 1))
    {
      goto LABEL_33;
    }

    v9 = vcnt_s8(*(&xmmword_2A1461D00 + 8));
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = v6;
      if (v6 >= *(&xmmword_2A1461D00 + 1))
      {
        v11 = v6 % *(&xmmword_2A1461D00 + 1);
      }
    }

    else
    {
      v11 = (*(&xmmword_2A1461D00 + 1) - 1) & v6;
    }

    v15 = *(xmmword_2A1461D00 + 8 * v11);
    if (!v15 || (v16 = *v15) == 0)
    {
LABEL_33:
      operator new();
    }

    while (1)
    {
      v17 = v16[1];
      if (v17 == v7)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v17 >= v8)
        {
          v17 %= v8;
        }
      }

      else
      {
        v17 &= v8 - 1;
      }

      if (v17 != v11)
      {
        goto LABEL_33;
      }

LABEL_32:
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    if (!sub_2991C09F4(&xmmword_2A1461D00, v16 + 2, __p))
    {
      goto LABEL_32;
    }

    v22 = v24;
    v21 = v25;
    while (v21 != v22)
    {
      v23 = *(v21 - 1);
      v21 -= 3;
      if (v23 < 0)
      {
        operator delete(*v21);
      }
    }

    v0 = 0;
    v25 = v22;
LABEL_42:
    ++v1;
  }

  while (v1 != 769);
  *&__dst = &v24;
  sub_299212B90(&__dst);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_299218C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char *a20, char a21)
{
  sub_299218CD8(&a21);
  a20 = &a10;
  sub_299212B90(&a20);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299218CD8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29921856C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **sub_299218D24(void *a1, const void **a2)
{
  v4 = sub_2991C0548(a1, a2);
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

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (sub_2991C09F4(a1, i + 2, a2))
      {
        return i;
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
  }

  return i;
}

void *sub_299218E20(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      sub_299212A48(result, a2);
    }

    sub_299212A8C();
  }

  return result;
}

char *sub_299218EBC(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 1)
  {
    v11 = *a1;
    if (a5 + (&v10[-*a1] >> 1) < 0)
    {
      sub_299212A8C();
    }

    v12 = __dst - v11;
    v13 = v9 - v11;
    if (v13 <= a5 + (&v10[-*a1] >> 1))
    {
      v14 = a5 + (&v10[-*a1] >> 1);
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
    v34 = 2 * v16 + 2 * a5;
    v35 = 2 * a5;
    v36 = v33;
    do
    {
      v37 = *v7++;
      *v36++ = v37;
      v35 -= 2;
    }

    while (v35);
    memcpy((v33 + 2 * a5), v5, a1[1] - v5);
    v38 = *a1;
    v39 = v34 + a1[1] - v5;
    a1[1] = v5;
    v40 = v5 - v38;
    v41 = (v33 - (v5 - v38));
    memcpy(v41, v38, v40);
    v42 = *a1;
    *a1 = v41;
    a1[1] = v39;
    a1[2] = 0;
    if (v42)
    {
      operator delete(v42);
    }

    return v33;
  }

  v17 = (v10 - __dst) >> 1;
  if (v17 >= a5)
  {
    v22 = &__dst[2 * a5];
    v23 = &v10[-2 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 2;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[2 * a5], __dst, v10 - v22);
    }

    v30 = 2 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_35;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 2;
    *v20 = v21;
    v20 += 2;
    v19 += 2;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[2 * a5];
    v27 = &v19[-2 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 2;
      *v28 = v29;
      v28 += 2;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[2 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_35:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void sub_2992191B8(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x29C29BFB0](v3, 0xF1C40893AD9D5);
  v5 = *(v1 + 304);
  *(v1 + 304) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_299223F18(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_299219228(void *a1)
{
  *a1 = &unk_2A1F64A80;
  v2 = a1[40];
  v3 = a1[41];
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  v4 = a1[37];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[40];
  if (v5)
  {
    a1[41] = v5;
    operator delete(v5);
  }

  v6 = a1[39];
  a1[39] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[38];
  a1[38] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return sub_299223F18(a1);
}

uint64_t sub_299219364(uint64_t a1)
{
  sub_299219AB4((a1 + 16), 0);
  sub_299219AB4((a1 + 24), 0);
  objc_msgSend_removeAllObjects(*(a1 + 40), v2, v3);
  sub_2993D8BC4(*(a1 + 304));
  v4 = *(a1 + 312);
  sub_2992DC4E0(v4 + 56);
  result = sub_299356BC0(v4 + 8, 0);
  v6 = *(a1 + 320);
  v7 = *(a1 + 328);
  if (v6 != v7)
  {
    do
    {
      result = *v6;
      if (*v6)
      {
        result = (*(*result + 8))(result);
      }

      ++v6;
    }

    while (v6 != v7);
    v6 = *(a1 + 320);
  }

  *(a1 + 328) = v6;
  *(a1 + 344) = -1;
  *(a1 + 352) = 0;
  return result;
}

uint64_t sub_299219420(void **a1, const __CFString *a2, void *a3)
{
  v70 = *MEMORY[0x29EDCA608];
  v6 = (*(*a1 + 36))(a1);
  if (v6)
  {
    *(v6 + 96) = (a3 & 0x80) == 0;
    if (sub_29932CA50(v6, 1))
    {
      (*(*a1 + 33))(a1);
    }
  }

  objc_msgSend_removeAllObjects(a1[5], v7, v8);
  if (a2 && CFStringCompare(a2, kMecabraAnalysisStringForFacemark[0], 0) == kCFCompareEqualTo)
  {
    v66 = *MEMORY[0x29EDCA608];

    return sub_2992244A8(a1);
  }

  else
  {
    if (a1[4] != a3)
    {
      (*(*a1 + 33))(a1);
    }

    if (a2)
    {
      v9 = CFRetain(a2);
    }

    else
    {
      v9 = 0;
    }

    sub_299219AB4(a1 + 2, v9);
    v10 = (*(*a1 + 38))(a1, a2);
    sub_299219AB4(a1 + 3, v10);
    a1[4] = a3;
    sub_2993D8EE4(a1[38], a2, 1);
    v11 = a1[39];
    v12 = *(a1[38] + 4);
    if (!v12)
    {
      sub_2992DC4E0(v11 + 56);
    }

    sub_299356BC0(v11 + 8, v12);
    v16 = a1[40];
    for (i = a1[41]; v12 < (i - v16) >> 3; a1[41] = i)
    {
      v17 = *(i - 1);
      if (v17)
      {
        (*(*v17 + 8))(v17);
        v16 = a1[40];
        i = a1[41];
      }

      i -= 8;
    }

    a1[43] = -1;
    v18 = a1[38];
    v19 = v18[4];
    v20 = v18[2] - v18[1];
    v67 = v19;
    if (v19 < v20 >> 3)
    {
      v21 = v20 >> 3;
      v22 = v19;
      while (1)
      {
        v23 = *(*(a1[38] + 1) + 8 * v22);
        v24 = *(v23 + 8);
        if (a1[1] && v24 != 0)
        {
          if (*(v23 + 32) != 1)
          {
            goto LABEL_27;
          }

          v26 = objc_msgSend_length(v24, v13, v14);
          v28 = objc_msgSend_substringToIndex_(v24, v27, v26 - 1);
          if (a1[1])
          {
            break;
          }
        }

LABEL_57:
        if (++v22 == v21)
        {
          goto LABEL_61;
        }
      }

      v24 = v28;
LABEL_27:
      if (objc_msgSend_length(v24, v13, v14))
      {
        if ((atomic_load_explicit(&qword_2A145FE18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FE18))
        {
          v69 = -16101797;
          v68[0] = *a12345_0;
          v68[1] = unk_299400E3C;
          sub_29921B60C(&qword_2A145FE20, v68, 18);
          __cxa_atexit(sub_29921B5E0, &qword_2A145FE20, &dword_29918C000);
          __cxa_guard_release(&qword_2A145FE18);
        }

        if (objc_msgSend_length(v24, v13, v14))
        {
          v30 = 0;
          while (1)
          {
            v31 = objc_msgSend_characterAtIndex_(v24, v29, v30);
            v32 = qword_2A145FE28;
            if (!qword_2A145FE28)
            {
              break;
            }

            v33 = &qword_2A145FE28;
            do
            {
              v34 = *(v32 + 26);
              v35 = v34 >= v31;
              v36 = v34 < v31;
              if (v35)
              {
                v33 = v32;
              }

              v32 = *(v32 + 8 * v36);
            }

            while (v32);
            if (v33 == &qword_2A145FE28 || v31 < *(v33 + 13))
            {
              break;
            }

            if (++v30 >= objc_msgSend_length(v24, v13, v14))
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
LABEL_40:
          v37 = a1[4];
          v38 = sub_299219AEC(v24);
          v43 = 0;
          if (objc_msgSend_length(v24, v39, v40))
          {
            v44 = 0;
            do
            {
              v45 = objc_msgSend_characterAtIndex_(v24, v41, v44);
              if (v45 == 65290 || v45 == 42)
              {
                ++v43;
              }

              ++v44;
            }

            while (v44 < objc_msgSend_length(v24, v46, v47));
          }

          v50 = objc_msgSend_set(MEMORY[0x29EDB8E20], v41, v42);
          if ((v37 & 0x400) != 0)
          {
            v54 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v38, v48, @"?", @"0");
            if (objc_msgSend_length(v54, v55, v56) <= 5)
            {
              sub_299219B3C(a1, v22, v50, v54);
            }
          }

          else if (v43 == objc_msgSend_length(v38, v48, v49) || objc_msgSend_length(v38, v51, v52) < 5)
          {
            v53 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v38, v51, @"?", @"0");
            sub_299219B3C(a1, v22, v50, v53);
          }

          else if (v43)
          {
            sub_299219C34(a1, v22, v50, v38, @"IDXWildcardMatch", (v37 & 0x200) != 0);
            if (objc_msgSend_hasSuffix_(v38, v57, @"?"))
            {
              v60 = objc_msgSend_length(v38, v58, v59);
              v38 = objc_msgSend_substringToIndex_(v38, v61, v60 - 1);
            }

            v62 = objc_msgSend_stringByAppendingString_(v38, v58, @"?*");
            sub_299219C34(a1, v22, v50, v62, @"IDXWildcardMatch", 0);
          }

          else
          {
            sub_299219C34(a1, v22, v50, v38, @"IDXExactMatch", (v37 & 0x200) != 0);
            sub_299219C34(a1, v22, v50, v38, @"IDXPrefixMatch", 0);
          }
        }
      }

      goto LABEL_57;
    }

LABEL_61:
    sub_299356520(a1[39], v67);
    v63 = sub_29930AF10();
    if (*v63 == 1 && (v63[10] & 8) != 0)
    {
      sub_2993572A4(a1[39] + 8);
    }

    (*(*a1 + 31))(a1);
    if (a1[1])
    {
      result = a1[2] != 0;
    }

    else
    {
      result = 0;
    }

    v65 = *MEMORY[0x29EDCA608];
  }

  return result;
}

void sub_299219AB4(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_299219AEC(void *a1)
{
  ASCIIFromInputKeyString = MecabraInputKeyPropertiesCreateASCIIFromInputKeyString(8u, a1);
  v3 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(ASCIIFromInputKeyString, v2, @"*", @"?");
  v6 = objc_msgSend_copy(v3, v4, v5);

  return v6;
}

uint64_t sub_299219B3C(void *a1, const char *a2, uint64_t a3, void *a4)
{
  v8 = a1[4];
  v9 = @"p";
  v10 = @"pe";
  if ((v8 & 0x400) != 0)
  {
    if (objc_msgSend_length(a4, a2, a3) == 5)
    {
      v10 = @"fe";
    }

    if (objc_msgSend_length(a4, v11, v12) == 5)
    {
      v9 = @"f";
    }
  }

  v13 = objc_msgSend_stringByAppendingString_(v10, a2, a4);
  sub_299219C34(a1, a2, a3, v13, @"IDXExactMatch", (v8 & 0x200) != 0);
  v15 = objc_msgSend_stringByAppendingString_(v9, v14, a4);

  return sub_299219C34(a1, a2, a3, v15, @"IDXExactMatch", 0);
}

uint64_t sub_299219C34(void *a1, uint64_t a2, uint64_t a3, const __CFString *a4, uint64_t a5, char a6)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = sub_299219D04;
  v8[3] = &unk_29EF0D728;
  v8[6] = a1;
  v8[7] = a2;
  v9 = a6;
  v8[4] = a3;
  v8[5] = &v10;
  sub_299224694(a1, a4, a5, v8);
  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t sub_299219D04(uint64_t result, const char *a2)
{
  if (a2)
  {
    v2 = result;
    v3 = *(result + 48);
    result = objc_msgSend_containsObject_(*(result + 32), a2, a2);
    if ((result & 1) == 0)
    {
      v4 = *(v3 + 312);
      v5 = *(v2 + 56);
      v6 = *(v2 + 64);
      sub_2992DC5BC();
    }
  }

  return result;
}

void *sub_299219DA8(void *result)
{
  v25 = *MEMORY[0x29EDCA608];
  v1 = *(result[39] + 24);
  v2 = *(result[39] + 32);
  if (v2 != v1)
  {
    v3 = result;
    v4 = *(result[38] + 32);
    if (!v4)
    {
      v5 = result[4];
      v16 = 0;
      v17 = &v16;
      v18 = 0x4812000000;
      v19 = sub_29921A5AC;
      v20 = sub_29921A5D0;
      v21 = "";
      v23 = 0;
      v24 = 0;
      v22 = 0;
      v15[0] = 0;
      v15[1] = v15;
      v15[2] = 0x4812000000;
      v15[3] = sub_29921A5AC;
      v15[4] = sub_29921A5D0;
      v15[5] = "";
      memset(&v15[6], 0, 24);
      v6 = sub_29921A5E8(result, 1);
      v7 = v3[39];
      v13[0] = MEMORY[0x29EDCA5F8];
      v13[1] = 3221225472;
      v13[2] = sub_29921A61C;
      v13[3] = &unk_29EF0D750;
      v13[6] = v3;
      v13[7] = v6;
      v14 = (v5 & 0x200) >> 9;
      v13[4] = &v16;
      v13[5] = v15;
      sub_299357218(v7 + 8, 0, v13);
      operator new();
    }

    if (v4 < (v2 - v1) >> 3)
    {
      sub_29921A5E8(result, v4 + 1);
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      operator new();
    }

    v8 = result[40];
    v9 = result[41];
    if (v8 == v9)
    {
      v11 = result[40];
    }

    else
    {
      do
      {
        v10 = *v8++;
        result = (*(*v10 + 64))(v10);
      }

      while (v8 != v9);
      v8 = v3[40];
      v11 = v3[41];
    }

    v3[43] = ((v11 - v8) >> 3) - 1;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29921A3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  _Block_object_dispose(&a28, 8);
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a37, 8);
  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29921A4B0(void *a1, char *a2, uint64_t a3)
{
  v4 = sub_2992896C0(a1, a2, a3);
  v7 = sub_2992896C0(a2, v5, v6);
  v8 = (*(*v4 + 14))(v4);
  if (v8 < (*(*v7 + 14))(v7))
  {
    return -1;
  }

  v10 = (*(*v4 + 14))(v4);
  return v10 > (*(*v7 + 14))(v7);
}

__n128 sub_29921A5AC(__n128 *a1, __n128 *a2)
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

void sub_29921A5D0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

CFStringRef sub_29921A5E8(uint64_t a1, uint64_t a2)
{
  v2.length = 0;
  if (a2)
  {
    v3 = *(*(a1 + 304) + 8);
    do
    {
      v4 = *v3++;
      v2.length += *(v4 + 24);
      --a2;
    }

    while (a2);
  }

  v2.location = 0;
  return CFStringCreateWithSubstring(0, *(a1 + 16), v2);
}

void sub_29921A61C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  if ((v4[4] & 0x2000000) != 0)
  {
    v6 = 4096;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 20);
  sub_299223FD4(v4, v6, *(a2 + 8));
}

void sub_29921A7E0(uint64_t a1, void *a2)
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

void sub_29921A8E0(uint64_t a1, const UniChar *a2, CFIndex a3)
{
  v4 = *(a1 + 40);
  v5 = CFStringCreateWithCharacters(0, a2, a3);
  if ((v4[4] & 0x2000000) != 0)
  {
    v6 = 4096;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + 48);
  sub_299223FD4(v4, v6, v5);
}

uint64_t sub_29921A9AC(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!objc_msgSend_count(*(a1 + 40), a2, a3))
  {
    for (i = *(a1 + 344); (i & 0x8000000000000000) == 0; *(a1 + 344) = i)
    {
      if (i && *(a1 + 352) == 40)
      {
        i = 0;
      }

      else
      {
        v12 = *(*(a1 + 320) + 8 * i);
        result = (*(*v12 + 48))(v12);
        if (result)
        {
          ++*(a1 + 352);
          return result;
        }

        i = *(a1 + 344) - 1;
      }
    }

    return 0;
  }

  v6 = *(a1 + 48);
  if (v6 == objc_msgSend_count(*(a1 + 40), v4, v5))
  {
    return 0;
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  *(a1 + 48) = v9 + 1;

  return objc_msgSend_objectAtIndex_(v8, v7, v9);
}

void sub_29921ABCC(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v2, 0x10E1C4022FF22E7);
  sub_299219228(v1);
  _Unwind_Resume(a1);
}

void sub_29921AD38(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v2, 0x10E1C4022FF22E7);
  sub_299219228(v1);
  _Unwind_Resume(a1);
}

void sub_29921AEAC(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v2, 0x10E1C4022FF22E7);
  sub_299219228(v1);
  _Unwind_Resume(a1);
}

void sub_29921AF8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x29C29BFB0](v2, 0x10E1C40580F84FFLL);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

CFURLRef sub_29921AFC4(int a1)
{
  v2 = sub_29936C2B8();
  v3 = sub_29936C350(v2, a1, off_2A145F738[0], off_2A145F6E0[0]);
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
    v6 = v3[23];
  }

  else
  {
    v6 = *(v3 + 1);
  }

  return CFURLCreateFromFileSystemRepresentation(0, v5, v6, 0);
}

void sub_29921B0B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x29C29BFB0](v2, 0x10E1C40580F84FFLL);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

void sub_29921B0EC(int *a1)
{
  v1 = sub_299277300(*a1);
  if (v1 == 5)
  {
    v2 = sub_2993E02C0();
    v1 = sub_2993E0350(v2, 5);
  }

  sub_29921AFC4(v1);
  operator new();
}

void sub_29921B1A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x29C29BFB0](v2, 0x10E1C40027F37A8);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29921B1D8(uint64_t result)
{
  if (*(*(result + 360) + 105) == 1)
  {
    v1 = result;
    v2 = sub_29936C2B8();
    v3 = (*(*v1 + 232))(v1);
    v4 = sub_299277300(v3);
    v5 = sub_29936C350(v2, v4, off_2A145F738[0], off_2A145F6E0[0]);
    v6 = *(v5 + 23);
    if (v6 >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = *v5;
    }

    if (v6 >= 0)
    {
      v8 = v5[23];
    }

    else
    {
      v8 = *(v5 + 1);
    }

    v9 = CFURLCreateFromFileSystemRepresentation(0, v7, v8, 0);
    if (v9)
    {
      sub_299223E58(v1, v9, 0);
    }

    (*(*v1 + 264))(v1);
    v10 = (*(*v1 + 232))(v1);
    v11 = sub_299277300(v10);
    sub_2993B9068(v1 + 72, v11);
    operator new();
  }

  return result;
}

void sub_29921B434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x29C29BFB0](v2, 0xF1C40893AD9D5);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

void sub_29921B518(void *a1)
{
  sub_299219228(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_29921B55C(void *a1)
{
  sub_299219228(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_29921B5A0(void *a1)
{
  sub_299219228(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_29921B60C(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 2 * a3;
    do
    {
      sub_29921B68C(a1, v4, a2++);
      v6 -= 2;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_29921B68C(void *a1, uint64_t *a2, unsigned __int16 *a3)
{
  v3 = *sub_29921B724(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_29921B724(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 13), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 13) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 26);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 13))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 26);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_29921B8CC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29921B8CC(a1, *a2);
    sub_29921B8CC(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_29921B920(uint64_t result, int8x16_t *a2, unsigned int (**a3)(uint64_t), uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  v124 = a2;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = (*a3)(a2[-1].i64[1], v10->i64[0]);
      if (result)
      {
        v78 = v10->i64[0];
        v10->i64[0] = a2[-1].i64[1];
LABEL_105:
        a2[-1].i64[1] = v78;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v81 = &v10->u64[1];
      v83 = v10 == a2 || v81 == a2;
      if (a5)
      {
        if (!v83)
        {
          v84 = 0;
          v85 = v10;
          do
          {
            v87 = *v85;
            v86 = v85[1];
            v85 = v81;
            result = (*a3)(v86, v87);
            if (result)
            {
              v88 = *v85;
              v89 = v84;
              while (1)
              {
                *(&v10->i64[1] + v89) = *(v10->i64 + v89);
                if (!v89)
                {
                  break;
                }

                result = (*a3)(v88, *(&v10->i64[-1] + v89));
                v89 -= 8;
                if ((result & 1) == 0)
                {
                  v90 = (&v10->i64[1] + v89);
                  goto LABEL_127;
                }
              }

              v90 = v10;
LABEL_127:
              *v90 = v88;
            }

            v81 = (v85 + 1);
            v84 += 8;
          }

          while (v85 + 1 != a2);
        }
      }

      else if (!v83)
      {
        do
        {
          v119 = v9->i64[0];
          v118 = v9->i64[1];
          v9 = v81;
          result = (*a3)(v118, v119);
          if (result)
          {
            v120 = v9->i64[0];
            v121 = v9;
            do
            {
              v122 = v121;
              v123 = *--v121;
              *v122 = v123;
              result = (*a3)(v120, *(v122 - 2));
            }

            while ((result & 1) != 0);
            *v121 = v120;
          }

          v81 = &v9->u64[1];
        }

        while (&v9->u64[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v91 = (v11 - 2) >> 1;
        v125 = v91;
        do
        {
          v92 = v91;
          if (v125 >= v91)
          {
            v93 = (2 * v91) | 1;
            v94 = &v9->i64[v93];
            if (2 * v91 + 2 < v11 && (*a3)(*v94, v94[1]))
            {
              ++v94;
              v93 = 2 * v92 + 2;
            }

            v95 = &v9->i64[v92];
            result = (*a3)(*v94, *v95);
            if ((result & 1) == 0)
            {
              v96 = *v95;
              do
              {
                v97 = v94;
                *v95 = *v94;
                if (v125 < v93)
                {
                  break;
                }

                v98 = (2 * v93) | 1;
                v94 = &v9->i64[v98];
                v99 = 2 * v93 + 2;
                if (v99 < v11 && (*a3)(*v94, v94[1]))
                {
                  ++v94;
                  v98 = v99;
                }

                result = (*a3)(*v94, v96);
                v95 = v97;
                v93 = v98;
              }

              while (!result);
              *v97 = v96;
            }
          }

          v91 = v92 - 1;
        }

        while (v92);
        v100 = v124;
        do
        {
          v101 = v100;
          v102 = 0;
          v126 = v9->i64[0];
          v103 = v9;
          do
          {
            v104 = &v103[v102];
            v105 = v104 + 1;
            v106 = (2 * v102) | 1;
            v107 = 2 * v102 + 2;
            if (v107 >= v11)
            {
              v102 = (2 * v102) | 1;
            }

            else
            {
              v109 = v104[2];
              v108 = v104 + 2;
              result = (*a3)(*(v108 - 1), v109);
              if (result)
              {
                v105 = v108;
                v102 = v107;
              }

              else
              {
                v102 = v106;
              }
            }

            *v103 = *v105;
            v103 = v105;
          }

          while (v102 <= ((v11 - 2) >> 1));
          v100 = v101 - 1;
          if (v105 == v101 - 1)
          {
            *v105 = v126;
          }

          else
          {
            *v105 = *v100;
            *v100 = v126;
            v110 = (v105 - v9 + 8) >> 3;
            v111 = v110 < 2;
            v112 = v110 - 2;
            if (!v111)
            {
              v113 = v112 >> 1;
              v114 = &v9->i64[v112 >> 1];
              result = (*a3)(*v114, *v105);
              if (result)
              {
                v115 = *v105;
                do
                {
                  v116 = v114;
                  *v105 = *v114;
                  if (!v113)
                  {
                    break;
                  }

                  v113 = (v113 - 1) >> 1;
                  v114 = &v9->i64[v113];
                  result = (*a3)(*v114, v115);
                  v105 = v116;
                }

                while ((result & 1) != 0);
                *v116 = v115;
              }
            }
          }

          v111 = v11-- <= 2;
        }

        while (!v111);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      v17 = (v13)(v9->i64[0], v9->i64[v12]);
      v18 = (*a3)(a2[-1].i64[1], v9->i64[0]);
      if (v17)
      {
        v19 = v9->i64[v12];
        if (v18)
        {
          v9->i64[v12] = a2[-1].i64[1];
          a2[-1].i64[1] = v19;
        }

        else
        {
          v9->i64[v12] = v9->i64[0];
          v9->i64[0] = v19;
          if ((*a3)(a2[-1].i64[1]))
          {
            v31 = v9->i64[0];
            v9->i64[0] = a2[-1].i64[1];
            a2[-1].i64[1] = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v9->i64[0];
        v9->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v22;
        if ((*a3)(v9->i64[0], v9->i64[v12]))
        {
          v23 = v9->i64[v12];
          v9->i64[v12] = v9->i64[0];
          v9->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = (v13)(v9->i64[v12], v9->i64[0]);
    v15 = (*a3)(a2[-1].i64[1], v9->i64[v12]);
    if (v14)
    {
      v16 = v9->i64[0];
      if (v15)
      {
        v9->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v16;
      }

      else
      {
        v9->i64[0] = v9->i64[v12];
        v9->i64[v12] = v16;
        if ((*a3)(a2[-1].i64[1]))
        {
          v24 = v9->i64[v12];
          v9->i64[v12] = a2[-1].i64[1];
          a2[-1].i64[1] = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v9->i64[v12];
      v9->i64[v12] = a2[-1].i64[1];
      a2[-1].i64[1] = v20;
      if ((*a3)(v9->i64[v12], v9->i64[0]))
      {
        v21 = v9->i64[0];
        v9->i64[0] = v9->i64[v12];
        v9->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = (*a3)(v9->i64[v12 - 1], v9->i64[1]);
    v27 = (*a3)(a2[-1].i64[0], v9->i64[v12 - 1]);
    if (v26)
    {
      v28 = v9->i64[1];
      if (v27)
      {
        v9->i64[1] = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        v9->i64[1] = v9->i64[v25];
        v9->i64[v25] = v28;
        if ((*a3)(a2[-1].i64[0]))
        {
          v32 = v9->i64[v25];
          v9->i64[v25] = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v9->i64[v25];
      v9->i64[v25] = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if ((*a3)(v9->i64[v25], v9->i64[1]))
      {
        v30 = v9->i64[1];
        v9->i64[1] = v9->i64[v25];
        v9->i64[v25] = v30;
      }
    }

    v33 = v12 + 1;
    v34 = (*a3)(v9->i64[v12 + 1], v9[1].i64[0]);
    v35 = (*a3)(a2[-2].i64[1], v9->i64[v12 + 1]);
    if (v34)
    {
      v36 = v9[1].i64[0];
      if (v35)
      {
        v9[1].i64[0] = a2[-2].i64[1];
        a2[-2].i64[1] = v36;
      }

      else
      {
        v9[1].i64[0] = v9->i64[v33];
        v9->i64[v33] = v36;
        if ((*a3)(a2[-2].i64[1]))
        {
          v39 = v9->i64[v33];
          v9->i64[v33] = a2[-2].i64[1];
          a2[-2].i64[1] = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = v9->i64[v33];
      v9->i64[v33] = a2[-2].i64[1];
      a2[-2].i64[1] = v37;
      if ((*a3)(v9->i64[v33], v9[1].i64[0]))
      {
        v38 = v9[1].i64[0];
        v9[1].i64[0] = v9->i64[v33];
        v9->i64[v33] = v38;
      }
    }

    v40 = (*a3)(v9->i64[v12], v9->i64[v25]);
    v41 = (*a3)(v9->i64[v33], v9->i64[v12]);
    if ((v40 & 1) == 0)
    {
      v43 = v9->i64[v12];
      if (!v41)
      {
        goto LABEL_54;
      }

      v9->i64[v12] = v9->i64[v33];
      v9->i64[v33] = v43;
      v44 = v9->i64[v25];
      v45 = (*a3)();
      v43 = v9->i64[v12];
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = v9->i64[v25];
      v9->i64[v25] = v43;
      v9->i64[v12] = v46;
      goto LABEL_53;
    }

    v42 = v9->i64[v25];
    if (v41)
    {
      v9->i64[v25] = v9->i64[v33];
      v9->i64[v33] = v42;
      v43 = v9->i64[v12];
    }

    else
    {
      v9->i64[v25] = v9->i64[v12];
      v9->i64[v12] = v42;
      v47 = (*a3)(v9->i64[v33]);
      v43 = v9->i64[v12];
      if (v47)
      {
        v46 = v9->i64[v33];
        v9->i64[v12] = v46;
        v9->i64[v33] = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    v48 = v9->i64[0];
    v9->i64[0] = v43;
    v9->i64[v12] = v48;
LABEL_55:
    --a4;
    v49 = v9->i64[0];
    if (a5 & 1) != 0 || (v50 = (*a3)(v9[-1].i64[1], v9->i64[0]), v49 = v9->i64[0], (v50))
    {
      v51 = 0;
      do
      {
        v52 = (*a3)(v9->i64[++v51], v49);
      }

      while ((v52 & 1) != 0);
      v53 = (v9 + v51 * 8);
      v54 = a2;
      if (v51 == 1)
      {
        v54 = a2;
        do
        {
          if (v53 >= v54)
          {
            break;
          }

          v56 = v54[-1].i64[1];
          v54 = (v54 - 8);
        }

        while (((*a3)(v56, v49) & 1) == 0);
      }

      else
      {
        do
        {
          v55 = v54[-1].i64[1];
          v54 = (v54 - 8);
        }

        while (!(*a3)(v55, v49));
      }

      if (v53 >= v54)
      {
        v62 = (v53 - 8);
      }

      else
      {
        v57 = &v9->i64[v51];
        v58 = v54;
        do
        {
          v59 = *v57;
          *v57 = *v58;
          *v58 = v59;
          do
          {
            v60 = v57[1];
            ++v57;
          }

          while (((*a3)(v60, v49) & 1) != 0);
          do
          {
            v61 = *--v58;
          }

          while (!(*a3)(v61, v49));
        }

        while (v57 < v58);
        v62 = (v57 - 1);
        a2 = v124;
      }

      if (v62 != v9)
      {
        v9->i64[0] = v62->i64[0];
      }

      v62->i64[0] = v49;
      if (v53 < v54)
      {
        goto LABEL_78;
      }

      v63 = sub_29921C540(v9, v62, a3);
      v10 = &v62->u64[1];
      result = sub_29921C540(&v62->i64[1], a2, a3);
      if (result)
      {
        a2 = v62;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_78:
        result = sub_29921B920(v9, v62, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v62->u64[1];
      }
    }

    else
    {
      result = (*a3)(v9->i64[0], a2[-1].i64[1]);
      if (result)
      {
        v10 = v9;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = (*a3)(v49, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = &v9->u64[1];
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 = (v65 + 8);
          result = (*a3)(v49, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = (*a3)(v49, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!(*a3)(v49, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = (*a3)(v49, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v9)
      {
        v9->i64[0] = *v71;
      }

      a5 = 0;
      *v71 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return sub_29921C3EC(v10, &v10->i64[1], v10[1].i64, &a2[-1].i64[1], a3);
    }

    if (v11 == 5)
    {
      sub_29921C3EC(v10, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = (*a3)(a2[-1].i64[1], v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v72;
      result = (*a3)(v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v73 = v10[1].i64[0];
      v74 = v10->i64[1];
      v10[1].i64[0] = v10[1].i64[1];
      v10[1].i64[1] = v73;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v76 = v10->i64[1];
      v75 = v10[1].i64[0];
      v77 = v10->i64[0];
      v10->i64[1] = v75;
      v10[1].i64[0] = v76;
      result = (*a3)(v75, v77);
      goto LABEL_166;
    }

    goto LABEL_10;
  }

  v79 = (*a3)(v10->i64[1], v10->i64[0]);
  result = (*a3)(a2[-1].i64[1], v10->i64[1]);
  if ((v79 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v117 = v10->i64[1];
    v10->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v117;
    result = (*a3)(v10->i64[1], v10->i64[0]);
LABEL_166:
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v80 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v80;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v80;
    result = (*a3)(a2[-1].i64[1]);
    if (result)
    {
      v78 = v10->i64[1];
      v10->i64[1] = a2[-1].i64[1];
      goto LABEL_105;
    }
  }

  return result;
}

uint64_t sub_29921C3EC(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL sub_29921C540(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = (*a3)(a1[1], *a1);
        v16 = (*a3)(*(a2 - 1), a1[1]);
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v17;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = (*a3)(a1[1], *a1);
        break;
      case 4:
        sub_29921C3EC(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_29921C3EC(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        v10 = a1[1];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v12 = a1[1];
        v11 = a1[2];
        v13 = *a1;
        a1[1] = v11;
        a1[2] = v12;
        v14 = (*a3)(v11, v13);
        break;
      default:
        goto LABEL_17;
    }

    if (v14)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = (*a3)(a1[1], *a1);
  v19 = a1 + 2;
  v20 = (*a3)(a1[2], a1[1]);
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = a1[2];
      a1[2] = v21;
    }

    else
    {
      v25 = a1[2];
      *a1 = a1[1];
      a1[1] = v21;
      if ((*a3)(v25))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v23 = a1[1];
    v24 = *a1;
    a1[1] = a1[2];
    a1[2] = v23;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v26 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v27 = 0;
  v28 = 0;
  while (1)
  {
    if ((*a3)(*v26, *v19))
    {
      v29 = *v26;
      v30 = v27;
      while (1)
      {
        v31 = a1 + v30;
        *(a1 + v30 + 24) = *(a1 + v30 + 16);
        if (v30 == -16)
        {
          break;
        }

        v30 -= 8;
        if (((*a3)(v29, *(v31 + 1)) & 1) == 0)
        {
          v32 = (a1 + v30 + 24);
          goto LABEL_40;
        }
      }

      v32 = a1;
LABEL_40:
      *v32 = v29;
      if (++v28 == 8)
      {
        return v26 + 1 == a2;
      }
    }

    v19 = v26;
    v27 += 8;
    if (++v26 == a2)
    {
      return 1;
    }
  }
}

double sub_29921C83C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[1];
  v4 = 0.0;
  if (v3 >> v2 != 1)
  {
    v7 = 0;
    v8 = *(a1 + 16);
    v9 = v8;
    do
    {
      v10 = v7 << v2;
      v11 = *a1;
      if (v9)
      {
        v12 = *(v11 + v10);
        v13 = *(v11 + (++v7 << v2));
        if (!a2)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v12 = *(v11 + v10);
        v13 = *(v11 + (++v7 << v2));
        if (!a2)
        {
          goto LABEL_9;
        }
      }

      if (*(a2 + 96) != 1)
      {
LABEL_9:
        v14 = flt_299400E50[26 * v12 - 2619 + v13];
        goto LABEL_10;
      }

      v14 = sub_299324E1C(a2, v12, v13);
      v8 = *(a1 + 16);
      v3 = a1[1];
LABEL_10:
      v4 = v4 + v14;
      v2 = v8;
      v9 = v8;
    }

    while (v7 < (v3 >> v8) - 1);
  }

  return v4;
}

double sub_29921C940(uint64_t *a1, _BYTE *a2)
{
  v2 = *(a1 + 16);
  v3 = a1[1];
  v4 = 0.0;
  if (v3 >> v2 != 1)
  {
    v7 = 0;
    v8 = *(a1 + 16);
    v9 = v8;
    do
    {
      v10 = v7 << v2;
      v11 = *a1;
      if (v9)
      {
        v12 = *(v11 + v10);
        v13 = *(v11 + (++v7 << v2));
        if (!a2)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v12 = *(v11 + v10);
        v13 = *(v11 + (++v7 << v2));
        if (!a2)
        {
          goto LABEL_9;
        }
      }

      if (*a2 != 1)
      {
LABEL_9:
        v14 = flt_299400E50[26 * v12 - 2619 + v13];
        goto LABEL_10;
      }

      v14 = sub_29927BDA0(a2, v12, v13);
      v8 = *(a1 + 16);
      v3 = a1[1];
LABEL_10:
      v4 = v4 + v14;
      v2 = v8;
      v9 = v8;
    }

    while (v7 < (v3 >> v8) - 1);
  }

  return v4;
}

__CFString *sub_29921CA44(unsigned __int16 **a1)
{
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = 0;
    do
    {
      v7 = CFStringCreateWithCString(v2, (&off_29EF13DA0)[2 * *v4], 0x8000100u);
      if (v7)
      {
        CFStringAppend(Mutable, v7);
      }

      if (v6 < a1[1] - *a1 - 1)
      {
        CFStringAppend(Mutable, @" ");
      }

      if (v7)
      {
        CFRelease(v7);
      }

      ++v4;
      ++v6;
    }

    while (v4 != v5);
  }

  return Mutable;
}

void sub_29921CB44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

void sub_29921CB5C(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v76[4] = *MEMORY[0x29EDCA608];
  *a3 = &unk_2A1F65118;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 1065353216;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = 0;
  v5 = a1[2];
  if (v5 && ((*(*v5 + 48))(v5) & 1) != 0)
  {
    __src = 0;
    v69 = 0;
    v70 = 0;
    (*(*a1[2] + 40))(a1[2], a2);
    v7 = (*(*a1[2] + 88))(a1[2]);
    if ((*(*v7 + 32))(v7))
    {
      v8 = (*(*a1[2] + 88))(a1[2]);
      (*(*v8 + 16))(&v71);
      v15 = __src;
      v16 = v69 - __src;
      v17 = (v69 - __src) >> 3;
      v18 = v17 + 1;
      if ((v17 + 1) >> 61)
      {
        sub_29921E9A8();
      }

      v19 = v70 - __src;
      if ((v70 - __src) >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      *&v65 = &__src;
      if (v20)
      {
        sub_29921EA5C(v20);
      }

      v21 = v71;
      v71 = 0;
      *(8 * v17) = v21;
      memcpy(0, v15, v16);
      v22 = __src;
      v23 = v70;
      __src = 0;
      v69 = (8 * v17 + 8);
      v70 = 0;
      *&v64 = v22;
      *(&v64 + 1) = v23;
      *&v63 = v22;
      *(&v63 + 1) = v22;
      sub_29921EAA4(&v63);
      v69 = (8 * v17 + 8);
      v24 = v71;
      v71 = 0;
      if (v24)
      {
        (*(*v24 + 8))(v24);
      }

      goto LABEL_22;
    }

    v9 = *a2;
    v10 = a2[1];
    v11 = v10 - *a2;
    if (v10 == *a2 || *(v10 - 2) == 32)
    {
LABEL_77:
      *&v63 = &__src;
      sub_29921EBC0(&v63);
      goto LABEL_78;
    }

    v63 = 0uLL;
    *&v64 = 0;
    sub_299215EC0(&v63, v9, v10, v11 >> 1);
    *(&v64 + 1) = 0;
    v65 = 0uLL;
    sub_29921E8E0(&v64 + 8, a2[3], a2[4], 0xCCCCCCCCCCCCCCCDLL * ((a2[4] - a2[3]) >> 3));
    sub_2992569E8(&v63);
    (*(**(a1[2] + 8) + 16))(&v71);
    v12 = v71;
    if ((v72 - v71) < 5)
    {
      v13 = 0;
      v14 = 1;
    }

    else
    {
      if (*(*(a1[2] + 8) + 52) == *(v72 - 1) && !*(v72 - 2))
      {
        v59 = sub_2993652F8(4u);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(__p) = 0;
          _os_log_debug_impl(&dword_29918C000, v59, OS_LOG_TYPE_DEBUG, "Skipping prediction due to last token == UNK", &__p, 2u);
        }

        v14 = 0;
        v13 = 1;
      }

      else
      {
        v13 = 0;
        v14 = 1;
      }

      v12 = v71;
    }

    if (v12)
    {
      v72 = v12;
      operator delete(v12);
    }

    sub_29921EA18(&v63);
    if (v14)
    {
LABEL_22:
      v25 = *a2;
      v26 = a2[1];
      v27 = v26 - *a2;
      if (v26 != *a2 && *(v26 - 2) != 32)
      {
        v63 = 0uLL;
        *&v64 = 0;
        sub_299215EC0(&v63, v25, v26, v27 >> 1);
        *(&v64 + 1) = 0;
        v65 = 0uLL;
        sub_29921E8E0(&v64 + 8, a2[3], a2[4], 0xCCCCCCCCCCCCCCCDLL * ((a2[4] - a2[3]) >> 3));
        sub_2992569E8(&v63);
        (*(*a1[2] + 40))(a1[2], &v63);
        v28 = (*(*a1[2] + 88))(a1[2]);
        (*(*v28 + 16))(&__p);
        v29 = v69;
        if (v69 >= v70)
        {
          v32 = __src;
          v33 = v69 - __src;
          v34 = (v69 - __src) >> 3;
          v35 = v34 + 1;
          if ((v34 + 1) >> 61)
          {
            sub_29921E9A8();
          }

          v36 = v70 - __src;
          if ((v70 - __src) >> 2 > v35)
          {
            v35 = v36 >> 2;
          }

          if (v36 >= 0x7FFFFFFFFFFFFFF8)
          {
            v37 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v35;
          }

          p_src = &__src;
          if (v37)
          {
            sub_29921EA5C(v37);
          }

          v38 = __p;
          __p = 0;
          *(8 * v34) = v38;
          v31 = 8 * v34 + 8;
          memcpy(0, v32, v33);
          v39 = __src;
          v40 = v70;
          __src = 0;
          v69 = v31;
          v70 = 0;
          v71 = v39;
          v73 = v39;
          v74 = v40;
          v72 = v39;
          sub_29921EAA4(&v71);
        }

        else
        {
          v30 = __p;
          __p = 0;
          *v69 = v30;
          v31 = (v29 + 8);
        }

        v69 = v31;
        v41 = __p;
        __p = 0;
        if (v41)
        {
          (*(*v41 + 8))(v41);
        }

        sub_29921EA18(&v63);
      }

      v42 = a1[3];
      v63 = xmmword_2994018E0;
      *&v64 = 10;
      DWORD2(v64) = 1077936128;
      v76[0] = &unk_2A1F65178;
      v76[3] = v76;
      (*(*v42 + 24))(&v71);
      sub_29921F0A8(v76);
      if ((*(a1[1] + 1) & 0x20) != 0)
      {
        sub_29921D74C(*a2, (a2[1] - *a2) >> 1);
      }

      *&v63 = 0;
      DWORD2(v63) = 0;
      v64 = 0u;
      v65 = 0u;
      *v66 = 0u;
      v67 = 0;
      v43 = v71;
      v44 = v72;
      if (v71 != v72)
      {
        do
        {
          v45 = v43[23];
          if (v45 < 0)
          {
            v46 = *v43;
            v45 = *(v43 + 1);
          }

          else
          {
            v46 = v43;
          }

          sub_299251274(v46, v45, &__p);
          if ((v62 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if ((v62 & 0x80u) == 0)
          {
            v48 = v62;
          }

          else
          {
            v48 = v61;
          }

          v49 = sub_29921D74C(p_p, v48);
          if (v50)
          {
            v51 = v49;
            v52 = 2 * v50;
            v53 = 2 * v50;
            v54 = v49;
            while (*(v54 + 1) << 8 == 4352)
            {
              ++v54;
              v53 -= 2;
              if (!v53)
              {
                goto LABEL_71;
              }
            }

            if (!sub_2992BD2B0(a1, v49, v50))
            {
              do
              {
                if ((*v51 & 0xFFDFu) - 65 <= 0x19)
                {
                  break;
                }

                ++v51;
                v52 -= 2;
              }

              while (v52);
              if ((v62 & 0x80u) == 0)
              {
                v55 = &__p;
              }

              else
              {
                v55 = __p;
              }

              if ((v62 & 0x80u) == 0)
              {
                v56 = v62;
              }

              else
              {
                v56 = v61;
              }

              v57 = *a1[1];
              sub_2992BD354(a1, &v63, v55, v56);
            }
          }

LABEL_71:
          if (v62 < 0)
          {
            operator delete(__p);
          }

          v43 += 32;
        }

        while (v43 != v44);
        if (v66[0])
        {
          v66[1] = v66[0];
          operator delete(v66[0]);
        }
      }

      *&v63 = &v71;
      sub_29921EB1C(&v63);
      goto LABEL_77;
    }

    *&v63 = &__src;
    sub_29921EBC0(&v63);
    if ((v13 & 1) == 0)
    {
      sub_29921D794(a3);
    }
  }

LABEL_78:
  v58 = *MEMORY[0x29EDCA608];
}

void sub_29921D584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (__p)
  {
    a32 = __p;
    operator delete(__p);
  }

  sub_29921EA18(&a18);
  a11 = &a28;
  sub_29921EBC0(&a11);
  sub_29921D794(v36);
  _Unwind_Resume(a1);
}

_WORD *sub_29921D74C(_WORD *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    result += a2;
    while (*v2 == 32)
    {
      ++v2;
      if (!--a2)
      {
        return result;
      }
    }

    v3 = result - 1;
    do
    {
      v4 = *v3--;
      if (v4 != 32)
      {
        break;
      }

      --a2;
    }

    while (a2);
    return v2;
  }

  return result;
}

uint64_t sub_29921D794(uint64_t a1)
{
  *a1 = &unk_2A1F65118;
  v2 = a1 + 8;
  v4 = (a1 + 48);
  sub_29921EC68(&v4);
  sub_29921ED28(v2);
  return a1;
}

void sub_29921D7F8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84[0] = *MEMORY[0x29EDCA608];
  *a4 = &unk_2A1F65118;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 1065353216;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 48) = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_112;
  }

  v8 = (*(*v5 + 48))(v5);
  v9 = a3 ? v8 : 0;
  if ((v9 & 1) == 0)
  {
    goto LABEL_112;
  }

  v10 = *(a3 + 32);
  v11 = *(a3 + 55);
  if (v11 >= 0)
  {
    v10 = (a3 + 32);
  }

  if (v11 < 0)
  {
    v11 = *(a3 + 40);
  }

  if (!v11)
  {
    goto LABEL_112;
  }

  v12 = v11 - 1;
  if (v11 == 1)
  {
LABEL_15:
    v15 = v10[v11 - 1];
    if (((v15 + 21504) >> 2) >= 0xAE9u && (v15 - 12593) > 0x32u)
    {
      goto LABEL_112;
    }

    (*(**(a1 + 16) + 40))(*(a1 + 16), a2);
    LODWORD(v69) = 1;
    HIDWORD(v69) = *(a3 + 96);
    v70 = (*(*a3 + 112))(a3);
    v16 = *(a3 + 64);
    v17 = *(a3 + 55);
    v18 = *(a3 + 32);
    if (v17 >= 0)
    {
      v18 = a3 + 32;
    }

    if (v17 >= 0)
    {
      v19 = *(a3 + 55);
    }

    else
    {
      v19 = *(a3 + 40);
    }

    v71 = v18;
    v72 = v19;
    v20 = *(a3 + 87);
    if (v20 >= 0)
    {
      v16 = a3 + 64;
    }

    if (v20 < 0)
    {
      v20 = *(a3 + 72);
    }

    v73 = v16;
    v74 = v20;
    v75[1] = 0;
    v76 = 0;
    v75[0] = 0;
    __p[0] = 0;
    __p[1] = 0;
    v68 = 0;
    v21 = *(v18 + 2 * v19 - 2);
    v22 = v21 - 12644;
    if (v19)
    {
      if (v21 == 32)
      {
        v23 = 0;
        v24 = 0;
        goto LABEL_61;
      }

      if (v22 > 0xFFCCu)
      {
        goto LABEL_53;
      }

      sub_29939F698(v21, v62);
      v25 = v62[1];
      if (v63 >= 0)
      {
        v26 = v62;
      }

      else
      {
        v26 = v62[0];
      }

      if (v63 >= 0)
      {
        v25 = SHIBYTE(v63);
      }

      v27 = *(v26 + v25 - 1);
      v28 = 54;
      v29 = "1121314151617191:1;1<1=1>1?1@1A1B1D1E1F1G1H1J1K1L1M1N1";
      while (*v29 != v27)
      {
        v29 += 2;
        v28 -= 2;
        if (!v28)
        {
          v29 = "";
          break;
        }
      }

      v30 = v29 == "";
      if (v29 == "")
      {
        v29 = 0;
      }

      v24 = v29 - "1121314151617191:1;1<1=1>1?1@1A1B1D1E1F1G1H1J1K1L1M1N1" == -2 || v30;
      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62[0]);
      }
    }

    else
    {
      v24 = 0;
    }

    if (v22 < 0xFFCDu)
    {
      if (!v24)
      {
        v23 = 0;
        goto LABEL_61;
      }

      sub_29939F698(*(v71 + 2 * v72 - 2), v62);
      if (SHIBYTE(v68) < 0)
      {
        operator delete(__p[0]);
      }

      v68 = v63;
      *__p = *v62;
      v31 = v72 - 1;
      v23 = 1;
LABEL_60:
      v72 = v31;
      v24 = 1;
LABEL_61:
      sub_29921E67C(*(a1 + 16));
      if (v75[0])
      {
        v75[1] = v75[0];
        operator delete(v75[0]);
      }

      *v75 = *v62;
      v76 = v63;
      if (!sub_2992BD134(&v69, *(a1 + 16), v24))
      {
        goto LABEL_108;
      }

      v60 = v23;
      v34 = *(a1 + 16);
      v82 = 0uLL;
      v83 = 0;
      sub_2991D82D0(&v82, v75[0], v75[1], (v75[1] - v75[0]) >> 2);
      v62[0] = 0;
      v62[1] = 0;
      v63 = 0;
      sub_29921ED74(v62, &v82, v84, 1uLL);
      (*(*v34 + 64))(v66, v34, v62, 1);
      if (v66[0])
      {
        v66[1] = v66[0];
        operator delete(v66[0]);
      }

      *&v79 = v62;
      sub_29920E060(&v79);
      if (v82)
      {
        *(&v82 + 1) = v82;
        operator delete(v82);
      }

      (*(**(a1 + 16) + 96))(&v65);
      (*(*v65 + 24))(v65, *(v75[1] - 1));
      v82 = 0uLL;
      v83 = 0;
      if (v24)
      {
        v35 = *(a1 + 24);
        *v62 = xmmword_2994018F0;
        v63 = 16;
        v64 = 1082130432;
        v78[7] = 0;
        operator new();
      }

      if (v60)
      {
        v36 = *(a3 + 96);
        v37 = (*(*a3 + 112))(a3);
        v38 = *(a3 + 55);
        v39 = *(a3 + 32);
        v40 = *(a3 + 40);
        if (v38 >= 0)
        {
          v41 = a3 + 32;
        }

        else
        {
          v41 = *(a3 + 32);
        }

        if (v38 >= 0)
        {
          v42 = *(a3 + 55);
        }

        else
        {
          v42 = *(a3 + 40);
        }

        v43 = *(a3 + 87);
        v44 = *(a3 + 64);
        if (v43 >= 0)
        {
          v44 = a3 + 64;
        }

        if (v43 < 0)
        {
          v43 = *(a3 + 72);
        }

        LODWORD(v69) = 1;
        HIDWORD(v69) = v36;
        v70 = v37;
        v71 = v41;
        v72 = v42;
        v73 = v44;
        v74 = v43;
        if (v75[0])
        {
          v75[1] = v75[0];
          operator delete(v75[0]);
          v45 = *(a3 + 55);
          v46 = *(a3 + 32);
          v47 = *(a3 + 40);
        }

        v75[0] = 0;
        v75[1] = 0;
        v76 = 0;
        sub_29921E67C(*(a1 + 16));
        if (v75[0])
        {
          v75[1] = v75[0];
          operator delete(v75[0]);
        }

        *v75 = *v62;
        v76 = v63;
        if (!sub_2992BD134(&v69, *(a1 + 16), 0))
        {
          goto LABEL_106;
        }

        v48 = *(a1 + 16);
        v79 = 0uLL;
        v80 = 0;
        sub_2991D82D0(&v79, v75[0], v75[1], (v75[1] - v75[0]) >> 2);
        v62[0] = 0;
        v62[1] = 0;
        v63 = 0;
        sub_29921ED74(v62, &v79, &v81, 1uLL);
        (*(*v48 + 64))(v61, v48, v62, 1);
        if (v61[0])
        {
          v61[1] = v61[0];
          operator delete(v61[0]);
        }

        *buf = v62;
        sub_29920E060(buf);
        if (v79)
        {
          *(&v79 + 1) = v79;
          operator delete(v79);
        }

        (*(**(a1 + 16) + 96))(v62);
        v49 = v62[0];
        v62[0] = 0;
        v50 = v65;
        v65 = v49;
        if (v50)
        {
          (*(*v50 + 8))(v50);
          v51 = v62[0];
          v62[0] = 0;
          if (v51)
          {
            (*(*v51 + 8))(v51);
          }
        }

        (*(*v65 + 24))(v65, *(v75[1] - 1));
      }

      v52 = *(a1 + 24);
      *v62 = xmmword_2994018F0;
      v63 = 16;
      v64 = 1082130432;
      v78[0] = &unk_2A1F65288;
      v78[3] = v78;
      (*(*v52 + 16))(&v79);
      sub_29921EF84(&v82);
      v82 = v79;
      v83 = v80;
      v79 = 0uLL;
      v80 = 0;
      *buf = &v79;
      sub_29921EB1C(buf);
      sub_29921F0A8(v78);
      if (v82 != *(&v82 + 1) && *(v82 + 24) >= -1.7)
      {
        v53 = *(v82 + 23);
        if (v53 < 0)
        {
          v54 = *v82;
          v53 = *(v82 + 8);
        }

        else
        {
          v54 = v82;
        }

        sub_299251274(v54, v53, v62);
        if (v63 >= 0)
        {
          v55 = v62;
        }

        else
        {
          v55 = v62[0];
        }

        if (v63 >= 0)
        {
          v56 = HIBYTE(v63);
        }

        else
        {
          v56 = v62[1];
        }

        v57 = **(a1 + 8);
        sub_2992BD354(a1, &v69, v55, v56);
      }

LABEL_106:
      v62[0] = &v82;
      sub_29921EB1C(v62);
      v58 = v65;
      v65 = 0;
      if (v58)
      {
        (*(*v58 + 8))(v58);
      }

LABEL_108:
      if (SHIBYTE(v68) < 0)
      {
        operator delete(__p[0]);
      }

      if (v75[0])
      {
        v75[1] = v75[0];
        operator delete(v75[0]);
      }

      goto LABEL_112;
    }

    v18 = v71;
    v19 = v72;
    if (!v72)
    {
      v32 = 0;
LABEL_59:
      v23 = 0;
      v31 = v19 - v32;
      goto LABEL_60;
    }

LABEL_53:
    v32 = 0;
    v33 = 2 * v19 - 2;
    while (*(v18 + v33) - 12593 <= 0x32)
    {
      ++v32;
      v33 -= 2;
      if (v19 == v32)
      {
        v32 = v19;
        goto LABEL_59;
      }
    }

    goto LABEL_59;
  }

  v13 = v10;
  while (1)
  {
    v14 = *v13++;
    if ((v14 - 12593) < 0x33)
    {
      break;
    }

    if (!--v12)
    {
      goto LABEL_15;
    }
  }

LABEL_112:
  v59 = *MEMORY[0x29EDCA608];
}

void sub_29921E4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  a13 = v46 - 160;
  sub_29921EB1C(&a13);
  v48 = a20;
  a20 = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  sub_29921D794(v45);
  _Unwind_Resume(a1);
}

void sub_29921E67C(void **a1)
{
  (*(*a1[1] + 32))(__p);
  ((*a1)[13])(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29921E734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29921E768(void *a1)
{
  *a1 = &unk_2A1F65148;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29921E7D8(void *a1)
{
  *a1 = &unk_2A1F65148;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29921E868(uint64_t a1)
{
  *a1 = &unk_2A1F65118;
  v2 = a1 + 8;
  v4 = (a1 + 48);
  sub_29921EC68(&v4);
  sub_29921ED28(v2);
  return MEMORY[0x29C29BFB0](a1, 0x10A1C40731192B1);
}

uint64_t sub_29921E8E0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_29921E95C(result, a4);
  }

  return result;
}

void sub_29921E940(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}