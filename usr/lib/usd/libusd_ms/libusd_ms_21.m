void sub_29A0F67F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A0F6834(int a1)
{
  v2 = sub_29A0F83E0();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29A0F83E0();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), off_29F295370[a1]);
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

void sub_29A0F6898(FILE *a1, pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr *a2, uint64_t a3, uint64_t *a4)
{
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::FormatDiagnostic(a2, a3, a4, __p);
  if (v7 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  fputs(v5, a1);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_29A0F6900(uint64_t a1)
{
  sub_29A0F40F0((a1 + 104));
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

uint64_t (**pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::PostError(pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr *this, const pxrInternal__aapl__pxrReserved__::TfDiagnosticBase *a2))(void, void, void, void, void)
{
  v11[4] = *MEMORY[0x29EDCA608];
  v4 = a2 + 80;
  v5 = *(a2 + 8);
  v6 = *(a2 + 18);
  if (*(a2 + 103) >= 0)
  {
    v7 = a2 + 80;
  }

  else
  {
    v7 = *(a2 + 10);
  }

  v8 = a2 + 104;
  v9 = *(v4 + 3);
  v11[0] = 0;
  v11[1] = 0;
  if (v9)
  {
    v9(1, v8, v11, 0, 0);
  }

  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::PostError(this, v5, v6, v7, a2, v4 - 5, v11, *(a2 + 144));
  return sub_29A0F40F0(v11);
}

void pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::PostWarning(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, __int128 *a5, std::string *a6, void (**a7)(uint64_t, void, void, void, void), char a8)
{
  v37[6] = *MEMORY[0x29EDCA608];
  v29[0] = a2;
  v29[1] = a3;
  LOBYTE(__p[0]) = 0;
  v16 = sub_29A0ED084((a1 + 16), __p);
  v17 = v16;
  if ((*v16 & 1) == 0)
  {
    *v16 = 1;
    v18 = sub_29A0F20E0(10);
    if (v18)
    {
      pxrInternal__aapl__pxrReserved__::ArchDebuggerTrap(v18);
    }

    v19 = sub_29A0F6834(1);
    if (v19)
    {
      sub_29A0F6898(*MEMORY[0x29EDCA610], v29, a5, a6);
      sub_29A008E78(__p, "WARNING");
      pxrInternal__aapl__pxrReserved__::TfLogStackTrace(__p, 0);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v26 = v19;
    v20 = *(a1 + 448);
    v30[0] = 0;
    v30[1] = 0;
    if (*a7)
    {
      (*a7)(1, a7, v30, 0, 0);
    }

    v21 = v20 | a8;
    sub_29A0F8560(__p, a2, a3, a4, a5, a6, v30, v21 != 0);
    sub_29A0F40F0(v30);
    v28 = 0;
    v27 = a1 + 136;
    tbb::spin_rw_mutex_v3::internal_acquire_reader((a1 + 136));
    v22 = *(a1 + 112);
    v23 = *(a1 + 120);
    if (v22 == v23)
    {
      v24 = *(a1 + 112);
    }

    else
    {
      do
      {
        if (*v22)
        {
          (*(**v22 + 40))(*v22, __p);
        }

        ++v22;
      }

      while (v22 != v23);
      v24 = *(a1 + 112);
      v22 = *(a1 + 120);
    }

    sub_29A0F845C(&v27);
    v25 = v26;
    if (v24 != v22)
    {
      v25 = 1;
    }

    if (!v21 && (v25 & 1) == 0)
    {
      sub_29A0F6898(*MEMORY[0x29EDCA610], v29, a5, a6);
    }

    sub_29A0F40F0(v37);
    if (v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 < 0)
    {
      operator delete(v33);
    }

    *v17 = 0;
  }
}

void sub_29A0F6C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_29A0F6900(&__p);
  *v23 = 0;
  _Unwind_Resume(a1);
}

uint64_t (**pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::PostWarning(pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr *this, const pxrInternal__aapl__pxrReserved__::TfDiagnosticBase *a2))(void, void, void, void, void)
{
  v11[4] = *MEMORY[0x29EDCA608];
  v4 = a2 + 80;
  v5 = *(a2 + 8);
  v6 = *(a2 + 18);
  if (*(a2 + 103) >= 0)
  {
    v7 = a2 + 80;
  }

  else
  {
    v7 = *(a2 + 10);
  }

  v8 = a2 + 104;
  v9 = *(v4 + 3);
  v11[0] = 0;
  v11[1] = 0;
  if (v9)
  {
    v9(1, v8, v11, 0, 0);
  }

  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::PostWarning(this, v5, v6, v7, a2, (v4 - 40), v11, *(a2 + 144));
  return sub_29A0F40F0(v11);
}

void pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::PostStatus(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, __int128 *a5, std::string *a6, void (**a7)(uint64_t, void, void, void, void), char a8)
{
  v32[6] = *MEMORY[0x29EDCA608];
  v25[0] = a2;
  v25[1] = a3;
  v27[0] = 0;
  v16 = sub_29A0ED084((a1 + 16), v27);
  v17 = v16;
  if ((*v16 & 1) == 0)
  {
    *v16 = 1;
    v18 = *(a1 + 448);
    v26[0] = 0;
    v26[1] = 0;
    if (*a7)
    {
      (*a7)(1, a7, v26, 0, 0);
    }

    v19 = v18 | a8;
    sub_29A0F8654(v27, a2, a3, a4, a5, a6, v26, v19 != 0);
    sub_29A0F40F0(v26);
    v24 = 0;
    v23 = a1 + 136;
    tbb::spin_rw_mutex_v3::internal_acquire_reader((a1 + 136));
    v20 = *(a1 + 112);
    v21 = *(a1 + 120);
    if (v20 == v21)
    {
      v22 = *(a1 + 112);
    }

    else
    {
      do
      {
        if (*v20)
        {
          (*(**v20 + 32))(*v20, v27);
        }

        ++v20;
      }

      while (v20 != v21);
      v22 = *(a1 + 112);
      v20 = *(a1 + 120);
    }

    sub_29A0F845C(&v23);
    if (!v19 && v22 == v20)
    {
      sub_29A0F6898(*MEMORY[0x29EDCA610], v25, a5, a6);
    }

    sub_29A0F40F0(v32);
    if (v31 < 0)
    {
      operator delete(__p);
    }

    if (v29 < 0)
    {
      operator delete(v28);
    }

    *v17 = 0;
  }
}

void sub_29A0F6FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29A0F6900(va);
  *v10 = 0;
  _Unwind_Resume(a1);
}

uint64_t (**pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::PostStatus(pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr *this, const pxrInternal__aapl__pxrReserved__::TfDiagnosticBase *a2))(void, void, void, void, void)
{
  v11[4] = *MEMORY[0x29EDCA608];
  v4 = a2 + 80;
  v5 = *(a2 + 8);
  v6 = *(a2 + 18);
  if (*(a2 + 103) >= 0)
  {
    v7 = a2 + 80;
  }

  else
  {
    v7 = *(a2 + 10);
  }

  v8 = a2 + 104;
  v9 = *(v4 + 3);
  v11[0] = 0;
  v11[1] = 0;
  if (v9)
  {
    v9(1, v8, v11, 0, 0);
  }

  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::PostStatus(this, v5, v6, v7, a2, (v4 - 40), v11, *(a2 + 144));
  return sub_29A0F40F0(v11);
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseError(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v3 = sub_29A0ED084((a1 + 152), &v7);
  if (v3 != a2)
  {
    v4 = *a2;
    v5 = a2[1];
    *(v4 + 8) = v5;
    *v5 = v4;
    --*(v3 + 16);
    sub_29A0F9504((a2 + 2));
    operator delete(a2);
    return v5;
  }

  return a2;
}

void *pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_GetErrorMarkBegin(pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr *this, unint64_t a2, unint64_t *a3)
{
  v12 = 0;
  result = sub_29A0ED084(this + 19, &v12);
  v7 = atomic_load(this + 18);
  if (v7 <= a2 || result[2] == 0)
  {
    if (!a3)
    {
      return result;
    }

    v9 = 0;
    goto LABEL_14;
  }

  v10 = result[1];
  if (result == v10)
  {
    v9 = 0;
    if (!a3)
    {
      return result;
    }

    goto LABEL_14;
  }

  v9 = 0;
  while (1)
  {
    v11 = *result;
    if (*(*result + 152) < a2)
    {
      break;
    }

    ++v9;
    result = *result;
    if (v11 == v10)
    {
      result = v10;
      break;
    }
  }

  if (a3)
  {
LABEL_14:
    *a3 = v9;
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(atomic_ullong *a1, void *a2, void *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v8 = 0;
    v6 = sub_29A0ED084(a1 + 19, &v8);
    v3 = sub_29A0F72A4(v6, v3, a3);
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_RebuildErrorLogText(a1);
  }

  return v3;
}

void *sub_29A0F72A4(uint64_t a1, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v6 = *(*a3 + 8);
    v7 = *a2;
    *(v7 + 8) = v6;
    *v6 = v7;
    do
    {
      v8 = v4[1];
      --*(a1 + 16);
      sub_29A0F9504((v4 + 2));
      operator delete(v4);
      v4 = v8;
    }

    while (v8 != a3);
  }

  return a3;
}

void pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_RebuildErrorLogText(atomic_ullong *this)
{
  v5 = 0;
  v2 = sub_29A0ED084(this + 31, &v5);
  v6 = 0;
  v3 = *(sub_29A0ED084(this + 19, &v6) + 8);
  v7 = 0;
  v4 = sub_29A0ED084(this + 19, &v7);
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_LogText::_AppendAndPublishImpl(v2, 1, v3, v4);
}

uint64_t (**pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::ErrorHelper::PostWithInfo(void *a1, uint64_t *a2, void (**a3)(uint64_t, void, void, void, void)))(void, void, void, void, void)
{
  v10[4] = *MEMORY[0x29EDCA608];
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v10[0] = 0;
  v10[1] = 0;
  if (*a3)
  {
    (*a3)(1, a3, v10, 0, 0);
  }

  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::PostError(v5, v6, v7, v8, a1, a2, v10, 0);
  return sub_29A0F40F0(v10);
}

uint64_t (**pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::ErrorHelper::Post(void *a1, uint64_t *a2))(void, void, void, void, void)
{
  v9[4] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v9[0] = 0;
  v9[1] = 0;
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::PostError(v4, v5, v6, v7, a1, a2, v9, 0);
  return sub_29A0F40F0(v9);
}

void sub_29A0F7540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F40F0(va);
  _Unwind_Resume(a1);
}

uint64_t (**pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::ErrorHelper::PostQuietly(void *a1, uint64_t *a2, void (**a3)(uint64_t, void, void, void, void)))(void, void, void, void, void)
{
  v10[4] = *MEMORY[0x29EDCA608];
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v10[0] = 0;
  v10[1] = 0;
  if (*a3)
  {
    (*a3)(1, a3, v10, 0, 0);
  }

  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::PostError(v5, v6, v7, v8, a1, a2, v10, 1u);
  return sub_29A0F40F0(v10);
}

void pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::ErrorHelper::Post(pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::ErrorHelper *this, pxrInternal__aapl__pxrReserved__ *a2, char *a3, ...)
{
  va_start(va, a3);
  va_copy(v6, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(__p, a2, va, a3);
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::ErrorHelper::Post(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F76BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::ErrorHelper::PostQuietly(pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::ErrorHelper *this, pxrInternal__aapl__pxrReserved__ *a2, char *a3, ...)
{
  va_start(va, a3);
  v7[4] = *MEMORY[0x29EDCA608];
  va_copy(v6, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(__p, a2, va, a3);
  v7[0] = 0;
  v7[1] = 0;
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::ErrorHelper::PostQuietly(this, __p, v7);
  sub_29A0F40F0(v7);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F7774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t (*a17)(void, void, void, void, void))
{
  sub_29A0F40F0(&a17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::WarningHelper::Post(pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::WarningHelper *this, pxrInternal__aapl__pxrReserved__ *a2, char *a3, ...)
{
  va_start(va, a3);
  va_copy(v5, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(&__p, a2, va, a3);
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::WarningHelper::Post(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A0F7800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (**pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::WarningHelper::Post(uint64_t a1, std::string *a2))(void, void, void, void, void)
{
  v9[4] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9[0] = 0;
  v9[1] = 0;
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::PostWarning(v4, v5, v6, v7, a1, a2, v9, 0);
  return sub_29A0F40F0(v9);
}

void sub_29A0F78B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F40F0(va);
  _Unwind_Resume(a1);
}

uint64_t (**pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::WarningHelper::PostWithInfo(uint64_t a1, std::string *a2, void (**a3)(uint64_t, void, void, void, void)))(void, void, void, void, void)
{
  v10[4] = *MEMORY[0x29EDCA608];
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10[0] = 0;
  v10[1] = 0;
  if (*a3)
  {
    (*a3)(1, a3, v10, 0, 0);
  }

  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::PostWarning(v5, v6, v7, v8, a1, a2, v10, 0);
  return sub_29A0F40F0(v10);
}

void pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::StatusHelper::Post(pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::StatusHelper *this, pxrInternal__aapl__pxrReserved__ *a2, char *a3, ...)
{
  va_start(va, a3);
  va_copy(v5, va);
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(&__p, a2, va, a3);
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::StatusHelper::Post(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A0F7A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (**pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::StatusHelper::Post(uint64_t a1, std::string *a2))(void, void, void, void, void)
{
  v9[4] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9[0] = 0;
  v9[1] = 0;
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::PostStatus(v4, v5, v6, v7, a1, a2, v9, 0);
  return sub_29A0F40F0(v9);
}

void sub_29A0F7AEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0F40F0(va);
  _Unwind_Resume(a1);
}

uint64_t (**pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::StatusHelper::PostWithInfo(uint64_t a1, std::string *a2, void (**a3)(uint64_t, void, void, void, void)))(void, void, void, void, void)
{
  v10[4] = *MEMORY[0x29EDCA608];
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10[0] = 0;
  v10[1] = 0;
  if (*a3)
  {
    (*a3)(1, a3, v10, 0, 0);
  }

  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::PostStatus(v5, v6, v7, v8, a1, a2, v10, 0);
  return sub_29A0F40F0(v10);
}

void pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::GetCodeName(pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr *this@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(*this, *(this + 1), a2);
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(*this + 8) & 0x7FFFFFFFFFFFFFFFLL), __p);
    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("(%s)%d", v6, v7, v8, *(this + 2));
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v11;
    *(a2 + 16) = v12;
    HIBYTE(v12) = 0;
    LOBYTE(v11) = 0;
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A0F7CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 + 23) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_SetLogInfoForErrors(uint64_t a1, void *a2)
{
  v7 = pthread_self();
  sub_29A0F7DDC(&v7);
  if (v9 >= 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Thread %s Pending Diagnostics", v3, v4, v5);
  if (*a2 == a2[1])
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  pxrInternal__aapl__pxrReserved__::ArchSetExtraLogInfoForErrors(&__p, v6);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }
}

void sub_29A0F7DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0F7DDC(uint64_t *a1)
{
  sub_29A00B6DC(&v7);
  v2 = *(v7 - 24);
  v3 = std::locale::classic();
  std::ios_base::getloc((&v7 + v2));
  std::ios_base::imbue((&v7 + v2), v3);
  std::locale::~locale(&v13);
  v4 = *(&v9[3].__locale_ + v2);
  if (v4)
  {
    (*(v4->__locale_ + 2))(v4, v3);
    std::locale::locale(&v12, v4 + 1);
    std::locale::operator=(v4 + 1, v3);
    std::locale::~locale(&v12);
  }

  std::locale::~locale(&v6);
  sub_29A0F993C(&v7, *a1);
  std::stringbuf::str();
  v7 = *MEMORY[0x29EDC9538];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v8 = MEMORY[0x29EDC9570] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v11);
}

void sub_29A0F7FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_29A00B848(&a10);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_LogText::_AppendAndPublishImpl(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 48))
  {
    v8 = a1 + 24;
  }

  else
  {
    v8 = a1;
  }

  if (*(a1 + 48))
  {
    v9 = a1;
  }

  else
  {
    v9 = (a1 + 24);
  }

  if (a2)
  {
    sub_29A012CE4(v8);
  }

  if (a3 != a4)
  {
    v10 = a3;
    do
    {
      v11 = *(v10 + 88);
      v18 = *(v10 + 80);
      v19 = v11;
      pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::FormatDiagnostic(&v18, v10 + 16, (v10 + 56), __p);
      sub_29A091654(v8, __p);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      v10 = *(v10 + 8);
    }

    while (v10 != a4);
  }

  v17 = pthread_self();
  sub_29A0F7DDC(&v17);
  if (v20 >= 0)
  {
    v14 = &v18;
  }

  else
  {
    v14 = v18;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("Thread %s Pending Diagnostics", v12, v13, v14);
  if (*v8 == *(v8 + 8))
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  pxrInternal__aapl__pxrReserved__::ArchSetExtraLogInfoForErrors(__p, v15);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 < 0)
  {
    operator delete(v18);
    if (!a2)
    {
      goto LABEL_30;
    }
  }

  else if (!a2)
  {
    goto LABEL_30;
  }

  sub_29A012CE4(v9);
LABEL_30:
  while (a3 != a4)
  {
    v16 = *(a3 + 88);
    v18 = *(a3 + 80);
    v19 = v16;
    pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::FormatDiagnostic(&v18, a3 + 16, (a3 + 56), __p);
    sub_29A091654(v9, __p);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    a3 = *(a3 + 8);
  }

  *(a1 + 48) ^= 1u;
}

void sub_29A0F81A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::FormatDiagnostic(pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v33[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::GetCodeName(a1, __p);
  v8 = *(a2 + 8);
  if (v8)
  {
    if ((*(a2 + 32) & 1) == 0 && *v8 && **a2)
    {
      v9 = v32;
      v10 = __p[0];
      IsMainThread = pxrInternal__aapl__pxrReserved__::ArchIsMainThread(v7);
      v14 = __p;
      if (v9 < 0)
      {
        v14 = v10;
      }

      v15 = " (secondary thread)";
      if (IsMainThread)
      {
        v15 = "";
      }

      if (*(a3 + 23) >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s%s: in %s at line %zu of %s -- %s\n", v12, v13, v14, v15, *(a2 + 8), *a2, v16);
    }

    else
    {
      if (v32 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = pxrInternal__aapl__pxrReserved__::ArchIsMainThread(v7);
      v19 = v18;
      v20 = *(a3 + 23);
      v21 = *a3;
      ProgramNameForErrors = pxrInternal__aapl__pxrReserved__::ArchGetProgramNameForErrors(v18);
      if (v20 >= 0)
      {
        v25 = a3;
      }

      else
      {
        v25 = v21;
      }

      v26 = " (secondary thread)";
      if (v19)
      {
        v26 = "";
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s%s: %s [%s]\n", v23, v24, v17, v26, v25, ProgramNameForErrors);
    }

    v33[0] = *v29;
    *(v33 + 7) = *&v29[7];
    v27 = v33[0];
    *a4 = v28;
    *(a4 + 8) = v27;
    *(a4 + 15) = *(v33 + 7);
    *(a4 + 23) = v30;
  }

  else
  {
    sub_29A008E78(a4, "");
  }

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0F83B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0F83E0()
{
  if ((atomic_load_explicit(&qword_2A14F6218, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F6218))
  {
    v1 = operator new(0x10uLL);
    *v1 = 0;
    v1[1] = 0;
    qword_2A14F6210 = v1;
    __cxa_guard_release(&qword_2A14F6218);
  }

  return qword_2A14F6210;
}

void *sub_29A0F845C(void *a1)
{
  if (*a1)
  {
    sub_29A0F8494(a1);
  }

  return a1;
}

uint64_t sub_29A0F8494(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (*(result + 8) == 1)
  {
LABEL_2:
    v2 = *v1;
    v3 = *v1 & 0xFFFFFFFFFFFFFFFCLL;
    while (1)
    {
      v4 = v2;
      atomic_compare_exchange_strong(v1, &v4, v3);
      if (v4 == v2)
      {
        break;
      }

      if (atomic_fetch_add_explicit(v1, 0, memory_order_relaxed) != v2)
      {
        result = sched_yield();
        goto LABEL_2;
      }
    }
  }

  else
  {
    atomic_fetch_add(v1, 0xFFFFFFFFFFFFFFFCLL);
  }

  return result;
}

const void *sub_29A0F84F8(uint64_t a1, _BYTE *a2)
{
  v4 = pthread_getspecific(*(a1 + 24));
  if (v4)
  {
    v5 = v4;
    *a2 = 1;
  }

  else
  {
    v5 = sub_29A0ED084(a1, a2);
    pthread_setspecific(*(a1 + 24), v5);
  }

  return v5;
}

uint64_t sub_29A0F8560(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, __int128 *a5, std::string *__str, void (**a7)(uint64_t, void, void (**)(uint64_t), void, void), char a8)
{
  v16[4] = *MEMORY[0x29EDCA608];
  v16[0] = 0;
  v16[1] = 0;
  if (*a7)
  {
    (*a7)(1, a7, v16, 0, 0);
  }

  pxrInternal__aapl__pxrReserved__::TfDiagnosticBase::TfDiagnosticBase(a1, a2, a3, a4, a5, __str, v16, a8);
  sub_29A0F40F0(v16);
  return a1;
}

uint64_t sub_29A0F8654(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, __int128 *a5, std::string *__str, void (**a7)(uint64_t, void, void (**)(uint64_t), void, void), char a8)
{
  v16[4] = *MEMORY[0x29EDCA608];
  v16[0] = 0;
  v16[1] = 0;
  if (*a7)
  {
    (*a7)(1, a7, v16, 0, 0);
  }

  pxrInternal__aapl__pxrReserved__::TfDiagnosticBase::TfDiagnosticBase(a1, a2, a3, a4, a5, __str, v16, a8);
  sub_29A0F40F0(v16);
  return a1;
}

void *sub_29A0F8748(void *a1, uint64_t *a2)
{
  *sub_29A0F87FC(a1) = &unk_2A203F9B8;
  v4 = tbb::internal::allocate_via_handler_v3(0x10);
  v5 = *a2;
  *v4 = &unk_2A203FA68;
  v4[1] = v5;
  a1[4] = v4;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  a1[8] = 0;
  a1[7] = 0;
  a1[9] = a1 + 10;
  a1[6] = sub_29A0EC368;
  return a1;
}

void *sub_29A0F87FC(void *a1)
{
  *a1 = &unk_2A203F6D8;
  __dmb(0xBu);
  a1[1] = 0;
  __dmb(0xBu);
  a1[2] = 0;
  *a1 = &unk_2A203FA30;
  pthread_key_create(a1 + 3, 0);
  return a1;
}

void *sub_29A0F887C(void *a1)
{
  *a1 = &unk_2A203FA30;
  pthread_key_delete(a1[3]);
  *a1 = &unk_2A203F6D8;
  return a1;
}

uint64_t sub_29A0F88E4(uint64_t a1)
{
  v2 = tbb::internal::concurrent_vector_base_v3::internal_grow_by((a1 + 48), 1uLL, 0x80, tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<unsigned long>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<unsigned long>,128ul>>>::initialize_array, 0);
  v3 = sub_29A0EC0EC(v2);
  v4 = *(a1 + 72);
  __dmb(0xBu);
  v5 = *(v4 + 8 * v3) + ((v2 - ((1 << v3) & 0x1FFFFFFFFFFFFFELL)) << 7);
  (*(**(a1 + 32) + 32))(*(a1 + 32), v5);
  *(v5 + 8) = 1;
  return v5;
}

void sub_29A0F89A8(void *a1)
{
  v1 = sub_29A0F96F8(a1);

  operator delete(v1);
}

void *sub_29A0F89D0(uint64_t a1)
{
  result = tbb::internal::allocate_via_handler_v3(0x10);
  *result = &unk_2A203FAF0;
  v3 = *(a1 + 8);
  *result = &unk_2A203FA68;
  result[1] = v3;
  return result;
}

uint64_t sub_29A0F8A34(uint64_t a1)
{
  (*(*a1 + 16))(a1);

  return tbb::internal::deallocate_via_handler_v3(a1, v2);
}

void *sub_29A0F8AA0(void *a1)
{
  *a1 = &unk_2A203F6D8;
  __dmb(0xBu);
  a1[1] = 0;
  __dmb(0xBu);
  a1[2] = 0;
  *a1 = &unk_2A203FB28;
  v2 = tbb::internal::allocate_via_handler_v3(8);
  *v2 = &unk_2A203FB88;
  a1[3] = v2;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[7] = 0;
  a1[6] = 0;
  a1[8] = a1 + 9;
  a1[5] = sub_29A0F8CF8;
  return a1;
}

uint64_t sub_29A0F8B6C(uint64_t a1)
{
  v2 = tbb::internal::concurrent_vector_base_v3::internal_grow_by((a1 + 40), 1uLL, 0x80, tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<BOOL>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<BOOL>,128ul>>>::initialize_array, 0);
  v3 = sub_29A0EC0EC(v2);
  v4 = *(a1 + 64);
  __dmb(0xBu);
  v5 = *(v4 + 8 * v3) + ((v2 - ((1 << v3) & 0x1FFFFFFFFFFFFFELL)) << 7);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5);
  *(v5 + 1) = 1;
  return v5;
}

void sub_29A0F8C30(void *a1)
{
  v1 = sub_29A0F9218(a1);

  operator delete(v1);
}

void *sub_29A0F8C58()
{
  result = tbb::internal::allocate_via_handler_v3(8);
  *result = &unk_2A203FB88;
  return result;
}

uint64_t sub_29A0F8C90(uint64_t a1)
{
  (*(*a1 + 16))(a1);

  return tbb::internal::deallocate_via_handler_v3(a1, v2);
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<BOOL>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<BOOL>,128ul>>>::initialize_array(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    bzero(a1, a3 << 7);
  }
}

void *sub_29A0F8D18(void *a1)
{
  *a1 = &unk_2A203F6D8;
  __dmb(0xBu);
  a1[1] = 0;
  __dmb(0xBu);
  a1[2] = 0;
  *a1 = &unk_2A203FC20;
  v2 = tbb::internal::allocate_via_handler_v3(8);
  *v2 = &unk_2A203FC80;
  a1[3] = v2;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[7] = 0;
  a1[6] = 0;
  a1[8] = a1 + 9;
  a1[5] = sub_29A0F8F74;
  return a1;
}

uint64_t sub_29A0F8DE4(uint64_t a1)
{
  v2 = tbb::internal::concurrent_vector_base_v3::internal_grow_by((a1 + 40), 1uLL, 0x80, tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::list<pxrInternal__aapl__pxrReserved__::TfError>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::list<pxrInternal__aapl__pxrReserved__::TfError>>,128ul>>>::initialize_array, 0);
  v3 = sub_29A0EC0EC(v2);
  v4 = *(a1 + 64);
  __dmb(0xBu);
  v5 = *(v4 + 8 * v3) + ((v2 - ((1 << v3) & 0x1FFFFFFFFFFFFFELL)) << 7);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5);
  *(v5 + 24) = 1;
  return v5;
}

void sub_29A0F8EA8(void *a1)
{
  v1 = sub_29A0F9340(a1);

  operator delete(v1);
}

void *sub_29A0F8ED0()
{
  result = tbb::internal::allocate_via_handler_v3(8);
  *result = &unk_2A203FC80;
  return result;
}

uint64_t sub_29A0F8F08(uint64_t a1)
{
  (*(*a1 + 16))(a1);

  return tbb::internal::deallocate_via_handler_v3(a1, v2);
}

void sub_29A0F8F68(uint64_t a1, void *a2)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::list<pxrInternal__aapl__pxrReserved__::TfError>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::list<pxrInternal__aapl__pxrReserved__::TfError>>,128ul>>>::initialize_array(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    bzero(a1, a3 << 7);
  }
}

void *sub_29A0F8F94(void *a1)
{
  *a1 = &unk_2A203F6D8;
  __dmb(0xBu);
  a1[1] = 0;
  __dmb(0xBu);
  a1[2] = 0;
  *a1 = &unk_2A203FD18;
  v2 = tbb::internal::allocate_via_handler_v3(8);
  *v2 = &unk_2A203FD78;
  a1[3] = v2;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[7] = 0;
  a1[6] = 0;
  a1[8] = a1 + 9;
  a1[5] = sub_29A0F91F8;
  return a1;
}

uint64_t sub_29A0F9060(uint64_t a1)
{
  v2 = tbb::internal::concurrent_vector_base_v3::internal_grow_by((a1 + 40), 1uLL, 0x80, tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_LogText>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_LogText>,128ul>>>::initialize_array, 0);
  v3 = sub_29A0EC0EC(v2);
  v4 = *(a1 + 64);
  __dmb(0xBu);
  v5 = *(v4 + 8 * v3) + ((v2 - ((1 << v3) & 0x1FFFFFFFFFFFFFELL)) << 7);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5);
  *(v5 + 56) = 1;
  return v5;
}

void sub_29A0F9124(void *a1)
{
  v1 = sub_29A0F9564(a1);

  operator delete(v1);
}

void *sub_29A0F914C()
{
  result = tbb::internal::allocate_via_handler_v3(8);
  *result = &unk_2A203FD78;
  return result;
}

uint64_t sub_29A0F9184(uint64_t a1)
{
  (*(*a1 + 16))(a1);

  return tbb::internal::deallocate_via_handler_v3(a1, v2);
}

double sub_29A0F91E4(uint64_t a1, uint64_t a2)
{
  *(a2 + 48) = 0;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_LogText>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_LogText>,128ul>>>::initialize_array(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    bzero(a1, a3 << 7);
  }
}

void *sub_29A0F9218(void *a1)
{
  *a1 = &unk_2A203FB28;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29A0EBE40(a1);
  sub_29A0F92B4(a1 + 4);
  *a1 = &unk_2A203F6D8;
  return a1;
}

unint64_t *sub_29A0F92B4(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<BOOL>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<BOOL>,128ul>>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

uint64_t tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<BOOL>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<BOOL>,128ul>>>::destroy_array(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = (result + (a2 << 7) - 127);
    do
    {
      if (*v2 == 1)
      {
        *v2 = 0;
      }

      v2 -= 128;
      --a2;
    }

    while (a2);
  }

  return result;
}

void *sub_29A0F9340(void *a1)
{
  *a1 = &unk_2A203FC20;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29A0EBE40(a1);
  sub_29A0F93DC(a1 + 4);
  *a1 = &unk_2A203F6D8;
  return a1;
}

unint64_t *sub_29A0F93DC(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::list<pxrInternal__aapl__pxrReserved__::TfError>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::list<pxrInternal__aapl__pxrReserved__::TfError>>,128ul>>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

void tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<std::list<pxrInternal__aapl__pxrReserved__::TfError>>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<std::list<pxrInternal__aapl__pxrReserved__::TfError>>,128ul>>>::destroy_array(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = a1 + (a2 << 7) - 128;
    do
    {
      if (*(v3 + 24) == 1)
      {
        sub_29A0F9490(v3);
        *(v3 + 24) = 0;
      }

      v3 -= 128;
      --v2;
    }

    while (v2);
  }
}

void sub_29A0F9490(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_29A0F9504((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_29A0F9504(uint64_t a1)
{
  sub_29A0F40F0((a1 + 104));
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

void *sub_29A0F9564(void *a1)
{
  *a1 = &unk_2A203FD18;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29A0EBE40(a1);
  sub_29A0F9600(a1 + 4);
  *a1 = &unk_2A203F6D8;
  return a1;
}

unint64_t *sub_29A0F9600(unint64_t *a1)
{
  v2 = a1[4];
  v3 = tbb::internal::concurrent_vector_base_v3::internal_clear((a1 + 1), tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_LogText>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_LogText>,128ul>>>::destroy_array);
  sub_29A0EC010(a1, v2, v3, a1[2]);
  tbb::internal::concurrent_vector_base_v3::~concurrent_vector_base_v3((a1 + 1), v4);
  return a1;
}

uint64_t tbb::concurrent_vector<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_LogText>,128ul>,tbb::cache_aligned_allocator<tbb::internal::padded<tbb::interface6::internal::ets_element<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_LogText>,128ul>>>::destroy_array(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    result = result + (a2 << 7) - 128;
    do
    {
      result = sub_29A0F96A0(result) - 128;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_29A0F96A0(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v3 = (a1 + 24);
    sub_29A012C90(&v3);
    v3 = a1;
    sub_29A012C90(&v3);
    *(a1 + 56) = 0;
  }

  return a1;
}

void *sub_29A0F96F8(void *a1)
{
  *a1 = &unk_2A203F9B8;
  v2 = a1[4];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_29A0F9788(a1);
  sub_29A0EBFB0(a1 + 5);

  return sub_29A0F887C(a1);
}

uint64_t sub_29A0F9788(uint64_t a1)
{
  v2 = (a1 + 24);
  pthread_key_delete(*(a1 + 24));
  pthread_key_create(v2, 0);

  return sub_29A0EBE40(a1);
}

void *sub_29A0F97D4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = operator new(0xA8uLL);
  *v8 = a2;
  v8[1] = a3;
  sub_29A0F9848(a1, (v8 + 2), a4);
  return v8;
}

void *sub_29A0F9848(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[1];
  *(a2 + 32) = *(a3 + 4);
  *a2 = v5;
  *(a2 + 16) = v6;
  if (*(a3 + 63) < 0)
  {
    result = sub_29A008D14((a2 + 40), *(a3 + 5), *(a3 + 6));
  }

  else
  {
    v7 = *(a3 + 40);
    *(a2 + 56) = *(a3 + 7);
    *(a2 + 40) = v7;
  }

  *(a2 + 64) = a3[4];
  if (*(a3 + 103) < 0)
  {
    result = sub_29A008D14((a2 + 80), *(a3 + 10), *(a3 + 11));
  }

  else
  {
    v9 = a3[5];
    *(a2 + 96) = *(a3 + 12);
    *(a2 + 80) = v9;
  }

  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v10 = *(a3 + 13);
  if (v10)
  {
    result = v10(1, a3 + 104, a2 + 104, 0, 0);
  }

  v11 = *(a3 + 17);
  *(a2 + 144) = *(a3 + 144);
  *(a2 + 136) = v11;
  return result;
}

void sub_29A0F9908(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A0F993C(void *a1, uint64_t a2)
{
  sub_29A00B6DC(&v14);
  v4 = *(v14 - 24);
  v5 = std::locale::classic();
  std::ios_base::getloc((&v14 + v4));
  std::ios_base::imbue((&v14 + v4), v5);
  std::locale::~locale(__p);
  v6 = *(&v16[3].__locale_ + v4);
  if (v6)
  {
    (*(v6->__locale_ + 2))(v6, v5);
    std::locale::locale(&v19, v6 + 1);
    std::locale::operator=(v6 + 1, v5);
    std::locale::~locale(&v19);
  }

  std::locale::~locale(&v13);
  MEMORY[0x29C2C1E80](&v14, a2);
  std::stringbuf::str();
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = sub_29A00911C(a1, v7, v8);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = *MEMORY[0x29EDC9538];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v15 = MEMORY[0x29EDC9570] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](&v18);
  return v9;
}

void sub_29A0F9B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29A00B848(&a16);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::TfDlopen(char *a1, uint64_t a2, void **a3)
{
  if (sub_29A0F20E0(3))
  {
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("TfDlopen: [opening] '%s' (flag=%x)...\n", v6, v7, v8, a2);
  }

  v9 = byte_2A153EF60;
  byte_2A153EF60 = 1;
  if (a1[23] >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  sub_29A008E78(__p, v10);
  v11 = pxrInternal__aapl__pxrReserved__::ArchLibraryOpen(__p, a2);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  byte_2A153EF60 = v9;
  if (sub_29A0F20E0(3))
  {
    if (a1[23] >= 0)
    {
      v14 = a1;
    }

    else
    {
      v14 = *a1;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("TfDlopen: [opened] '%s' (handle=%p)\n", v12, v13, v14, v11);
  }

  pxrInternal__aapl__pxrReserved__::ArchLibraryError(__p);
  v15 = HIBYTE(v22);
  if (SHIBYTE(v22) < 0)
  {
    v15 = __p[1];
  }

  if (v15)
  {
    if (sub_29A0F20E0(3))
    {
      if (a1[23] >= 0)
      {
        v18 = a1;
      }

      else
      {
        v18 = *a1;
      }

      v19 = __p;
      if (SHIBYTE(v22) < 0)
      {
        v19 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("TfDlopen: [error on opening] '%s': %s\n", v16, v17, v18, v19);
    }

    if (a3)
    {
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = *__p;
      a3[2] = v22;
      return v11;
    }
  }

  else if (a3)
  {
    if (*(a3 + 23) < 0)
    {
      **a3 = 0;
      a3[1] = 0;
    }

    else
    {
      *a3 = 0;
      *(a3 + 23) = 0;
    }
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  return v11;
}

void sub_29A0F9D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDlclose(pxrInternal__aapl__pxrReserved__ *this, void *a2)
{
  v3 = byte_2A153EF61;
  byte_2A153EF61 = 1;
  if (sub_29A0F20E0(4))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("TfDlclose: handle = %p\n", v4, v5, this);
  }

  result = pxrInternal__aapl__pxrReserved__::ArchLibraryClose(this);
  byte_2A153EF61 = v3;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B43B0F6 & 0x7FFFFFFFFFFFFFFFLL), &v13);
  v2 = std::string::insert(&v13, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v17 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v14, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v13);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry*> &)::isInitializing, 1u))
  {
    while (!atomic_load(a1))
    {
      sched_yield();
    }
  }

  else
  {
    if (!atomic_load(a1))
    {
      v8 = operator new(0xF8uLL);
      sub_29A0FB248(v8, v9, v10);
      v12 = atomic_load(a1);
      if (v12)
      {
        if (v8 != v12)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v17 = 86;
          v18 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry]";
          v19 = 0;
          v20 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "race detected setting singleton instance", v11);
        }
      }

      else if (atomic_exchange(a1, v8))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v17 = 90;
        v18 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry]";
        v19 = 0;
        v20 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v11, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v13);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
  }

  return v6;
}

void sub_29A0F9FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_instance, &v1, 0);
    if (v1 == i)
    {
      v2 = sub_29A0FB090(i);

      operator delete(v2);
      return;
    }

    sched_yield();
  }
}

void pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(void *a1, uint64_t a2, char *a3, char *a4)
{
  v42 = *MEMORY[0x29EDCA608];
  v38 = a1;
  v39 = a2;
  sub_29A0ECEEC(&v36, "Tf", "TfEnum::_AddName");
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((a1[1] & 0x7FFFFFFFFFFFFFFFLL), v34);
  if (a3)
  {
    sub_29A008E78(&__str, a3);
    if (a4)
    {
LABEL_3:
      sub_29A008E78(&v30, a4);
      goto LABEL_6;
    }
  }

  else
  {
    memset(&__str, 0, sizeof(__str));
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
LABEL_6:
  v7 = std::string::rfind(&__str, 58, 0xFFFFFFFFFFFFFFFFLL);
  if (v7 == -1)
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = __str;
    }
  }

  else
  {
    std::string::basic_string(&__dst, &__str, v7 + 1, 0xFFFFFFFFFFFFFFFFLL, &v41);
  }

  size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_instance);
    if (!v9)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_CreateInstance();
    }

    sub_29A0EB5BC(&v28, v9);
    if ((v35 & 0x80u) == 0)
    {
      v10 = v35;
    }

    else
    {
      v10 = v34[1];
    }

    v11 = &v41;
    sub_29A022DE0(&v41, v10 + 2);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v41.__r_.__value_.__r.__words[0];
    }

    if (v10)
    {
      if ((v35 & 0x80u) == 0)
      {
        v12 = v34;
      }

      else
      {
        v12 = v34[0];
      }

      memmove(v11, v12, v10);
    }

    strcpy(v11 + v10, "::");
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
      v14 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = __dst.__r_.__value_.__l.__size_;
    }

    v15 = std::string::append(&v41, p_dst, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v41.__r_.__value_.__r.__words[0] = &v38;
    v17 = sub_29A0FB740(v9 + 8, &v38, &unk_29B4D6118, &v41);
    std::string::operator=((v17 + 4), &__dst);
    v41.__r_.__value_.__r.__words[0] = &v38;
    v18 = sub_29A0FB740(v9 + 48, &v38, &unk_29B4D6118, &v41);
    std::string::operator=((v18 + 4), &__p);
    v19 = HIBYTE(v32);
    v20 = v31;
    v41.__r_.__value_.__r.__words[0] = &v38;
    v21 = sub_29A0FB740(v9 + 88, &v38, &unk_29B4D6118, &v41);
    if ((v19 & 0x80u) == 0)
    {
      v22 = v19;
    }

    else
    {
      v22 = v20;
    }

    if (v22)
    {
      v23 = &v30;
    }

    else
    {
      v23 = &__dst;
    }

    std::string::operator=((v21 + 4), v23);
    v41.__r_.__value_.__r.__words[0] = &__p;
    v24 = sub_29A0FBA3C(v9 + 128, &__p, &unk_29B4D6118, &v41);
    v25 = v38;
    v24[5] = v38;
    *(v24 + 12) = v39;
    sub_29A008E78(&v41, (v25[1] & 0x7FFFFFFFFFFFFFFFLL));
    v40 = &v41;
    v26 = sub_29A0FB394(v9 + 168, &v41, &unk_29B4D6118, &v40);
    sub_29A070BA0((v26 + 5));
  }

  if ((*(&__dst.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (v36)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v37, v36);
  }
}

void sub_29A0FA5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  sub_29A0E9CEC(v42 - 120);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfEnum::GetName(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12[0] = a1;
  v12[1] = a2;
  if (!strcmp((*(a1 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(MEMORY[0x29EDC94D0] + 8) & 0x7FFFFFFFFFFFFFFFLL)))
  {
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%d", v5, v6, a2);
  }

  else
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_instance);
    if (!v7)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_CreateInstance();
    }

    sub_29A0EB5BC(&v11, v7);
    v8 = sub_29A0FC6E4((v7 + 8), v12);
    if (v8)
    {
      if (*(v8 + 55) < 0)
      {
        sub_29A008D14(a3, v8[4], v8[5]);
      }

      else
      {
        v9 = *(v8 + 2);
        *(a3 + 16) = v8[6];
        *a3 = v9;
      }
    }

    else
    {
      sub_29A008E78(a3, "");
    }

    v10 = v11;
    if (v11)
    {
      __dmb(0xBu);
      *v10 = 0;
    }
  }
}

void sub_29A0FA7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11)
{
  if (a11)
  {
    __dmb(0xBu);
    *a11 = 0;
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfEnum::GetFullName(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12[0] = a1;
  v12[1] = a2;
  if (!strcmp((*(a1 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(MEMORY[0x29EDC94D0] + 8) & 0x7FFFFFFFFFFFFFFFLL)))
  {
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("int::%d", v5, v6, a2);
  }

  else
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_instance);
    if (!v7)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_CreateInstance();
    }

    sub_29A0EB5BC(&v11, v7);
    v8 = sub_29A0FC6E4((v7 + 48), v12);
    if (v8)
    {
      if (*(v8 + 55) < 0)
      {
        sub_29A008D14(a3, v8[4], v8[5]);
      }

      else
      {
        v9 = *(v8 + 2);
        *(a3 + 16) = v8[6];
        *a3 = v9;
      }
    }

    else
    {
      sub_29A008E78(a3, "");
    }

    v10 = v11;
    if (v11)
    {
      __dmb(0xBu);
      *v10 = 0;
    }
  }
}

void sub_29A0FA8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11)
{
  if (a11)
  {
    __dmb(0xBu);
    *a11 = 0;
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12[0] = a1;
  v12[1] = a2;
  if (!strcmp((*(a1 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(MEMORY[0x29EDC94D0] + 8) & 0x7FFFFFFFFFFFFFFFLL)))
  {
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%d", v5, v6, a2);
  }

  else
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_instance);
    if (!v7)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_CreateInstance();
    }

    sub_29A0EB5BC(&v11, v7);
    v8 = sub_29A0FC6E4((v7 + 88), v12);
    if (v8)
    {
      if (*(v8 + 55) < 0)
      {
        sub_29A008D14(a3, v8[4], v8[5]);
      }

      else
      {
        v9 = *(v8 + 2);
        *(a3 + 16) = v8[6];
        *a3 = v9;
      }
    }

    else
    {
      sub_29A008E78(a3, "");
    }

    v10 = v11;
    if (v11)
    {
      __dmb(0xBu);
      *v10 = 0;
    }
  }
}

void sub_29A0FA9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11)
{
  if (a11)
  {
    __dmb(0xBu);
    *a11 = 0;
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfEnum::GetAllNames(pxrInternal__aapl__pxrReserved__::TfEnum *this@<X0>, void *a2@<X8>)
{
  if (!strcmp((*(this + 1) & 0x7FFFFFFFFFFFFFFFLL), (*(MEMORY[0x29EDC94D0] + 8) & 0x7FFFFFFFFFFFFFFFLL)))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_instance);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_CreateInstance();
    }

    sub_29A0EB5BC(&v11, v5);
    sub_29A008E78(__p, (*(this + 1) & 0x7FFFFFFFFFFFFFFFLL));
    v6 = sub_29A0FC520((v5 + 168), __p);
    v7 = v6;
    if (v10 < 0)
    {
      operator delete(__p[0]);
      if (v7)
      {
LABEL_6:
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v8 = v11;
    if (v11)
    {
      __dmb(0xBu);
      *v8 = 0;
    }
  }
}

void sub_29A0FAADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, _BYTE *a16)
{
  if (a16)
  {
    __dmb(0xBu);
    *a16 = 0;
  }

  _Unwind_Resume(exception_object);
}

const void **pxrInternal__aapl__pxrReserved__::TfEnum::GetTypeFromName(unsigned __int8 *a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_CreateInstance();
  }

  sub_29A0EB5BC(&v5, v2);
  result = sub_29A0FC520((v2 + 208), a1);
  if (result)
  {
    result = result[5];
  }

  v4 = v5;
  if (v5)
  {
    __dmb(0xBu);
    *v4 = 0;
  }

  return result;
}

void sub_29A0FAB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::TfEnum::GetValueFromName(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v20 = 0;
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(a1 + 8) & 0x7FFFFFFFFFFFFFFFLL), &v16);
  v6 = std::string::append(&v16, "::");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  v11 = std::string::append(&v17, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v19 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  ValueFromFullName = pxrInternal__aapl__pxrReserved__::TfEnum::GetValueFromFullName(__p, &v20);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (v20 != 1)
  {
    v14 = 0;
    if (!a3)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v14 = strcmp((ValueFromFullName[1] & 0x7FFFFFFFFFFFFFFFLL), (*(a1 + 8) & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  if (a3)
  {
LABEL_17:
    *a3 = v14;
  }

LABEL_18:
  if (v14)
  {
    return ValueFromFullName;
  }

  else
  {
    return MEMORY[0x29EDC94D0];
  }
}

void sub_29A0FACE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

const void *pxrInternal__aapl__pxrReserved__::TfEnum::GetValueFromFullName(char *a1, _BYTE *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_CreateInstance();
  }

  sub_29A0EB5BC(&v17, v4);
  v5 = sub_29A0FC520((v4 + 128), a1);
  if (v5)
  {
    if (a2)
    {
      *a2 = 1;
    }

    result = v5[5];
  }

  else
  {
    v7 = a1[23];
    v9 = *a1;
    v8 = *(a1 + 1);
    if (v7 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    if (v7 >= 0)
    {
      v8 = a1[23];
    }

    if (v8 >= 5)
    {
      v11 = &v10[v8];
      v12 = v10;
      do
      {
        v13 = memchr(v12, 105, v8 - 4);
        if (!v13)
        {
          break;
        }

        if (*v13 == 980708969 && v13[4] == 58)
        {
          if (v13 != v10)
          {
            break;
          }

          if (a2)
          {
            *a2 = 1;
            LOBYTE(v7) = a1[23];
            v9 = *a1;
          }

          if ((v7 & 0x80u) == 0)
          {
            v16 = a1;
          }

          else
          {
            v16 = v9;
          }

          atoi(v16 + 5);
          result = MEMORY[0x29EDC94D0];
          goto LABEL_25;
        }

        v12 = v13 + 1;
        v8 = v11 - v12;
      }

      while (v11 - v12 >= 5);
    }

    if (a2)
    {
      *a2 = 0;
    }

    result = MEMORY[0x29EDC94D0];
  }

LABEL_25:
  v15 = v17;
  if (v17)
  {
    __dmb(0xBu);
    *v15 = 0;
  }

  return result;
}

void sub_29A0FAE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfEnum::_FatalGetValueError(pxrInternal__aapl__pxrReserved__::TfEnum *this, const std::type_info *a2)
{
  v7[0] = "tf/enum.cpp";
  v7[1] = "_FatalGetValueError";
  v7[2] = 238;
  v7[3] = "void pxrInternal__aapl__pxrReserved__::TfEnum::_FatalGetValueError(const std::type_info &) const";
  v8 = 0;
  v9 = 4;
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((a2->__type_name & 0x7FFFFFFFFFFFFFFFLL), v5);
  if (v6 >= 0)
  {
    v4 = v5;
  }

  else
  {
    v4 = v5[0];
  }

  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v7, "Attempted to get a '%s' from a TfEnum holding a '%s'.", v3, v4, *(*this + 8) & 0x7FFFFFFFFFFFFFFFLL);
}

void sub_29A0FAF3C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (v28 < 0)
  {
    operator delete(v27);
  }
}

void sub_29A0FAF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::TfEnum::IsKnownEnumType(unsigned __int8 *a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_CreateInstance();
  }

  sub_29A0EB5BC(&v6, v2);
  v3 = sub_29A0FC520((v2 + 208), a1);
  v4 = v6;
  if (v6)
  {
    __dmb(0xBu);
    *v4 = 0;
  }

  return v3 != 0;
}

void sub_29A0FAFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, uint64_t *a2)
{
  pxrInternal__aapl__pxrReserved__::TfEnum::GetFullName(*a2, a2[1], __p);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_29A00911C(a1, v3, v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

{
  LOBYTE(v8) = 40;
  v3 = sub_29A00911C(a1, &v8, 1);
  v8 = *a2;
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5);
  v9 = 41;
  return sub_29A00911C(v6, &v9, 1);
}

{
  LOBYTE(v12) = 91;
  v3 = sub_29A00911C(a1, &v12, 1);
  v4 = *(a2 + 2);
  v12 = *a2;
  v13 = v4;
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v3, &v12);
  v6 = sub_29A00911C(v5, "...", 3);
  v7 = *(a2 + 5);
  v10 = *(a2 + 12);
  v11 = v7;
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v6, &v10);
  v14 = 93;
  return sub_29A00911C(v8, &v14, 1);
}

{
  v4 = *a2;
  v5 = *(a2 + 50);
  if (*(a2 + 51) < 2u)
  {
    v4 = a2;
  }

  v47 = v4;
  v48 = &v4[25 * v5];
  if (v5)
  {
    do
    {
      v6 = *sub_29A2F2C08(&v47);
      v7 = *sub_29A2F2C08(&v47);
      v8 = sub_29A00911C(a1, "  <", 3);
      v9 = pxrInternal__aapl__pxrReserved__::operator<<(v8, v6);
      sub_29A00911C(v9, ">\n", 2);
      v10 = v7 + 8;
      v11 = *(v7 + 128);
      if (*(v7 + 132) >= 4u)
      {
        v10 = *(v7 + 8);
      }

      v45 = v10;
      v46 = v10 + 40 * v11;
      if (v11)
      {
        do
        {
          v12 = sub_29A00911C(a1, "   infoKey: ", 12);
          v13 = sub_29A2F2C40(&v45);
          v14 = pxrInternal__aapl__pxrReserved__::operator<<(v12, *v13);
          sub_29A00911C(v14, "\n", 1);
          v15 = sub_29A00911C(a1, "     oldValue: ", 15);
          v16 = sub_29A2F2C40(&v45);
          sub_29A1F87E8(*v16 + 8);
          if ((v44 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if ((v44 & 0x80u) == 0)
          {
            v18 = v44;
          }

          else
          {
            v18 = v43;
          }

          v19 = sub_29A00911C(v15, p_p, v18);
          sub_29A00911C(v19, "\n", 1);
          if (v44 < 0)
          {
            operator delete(__p);
          }

          v20 = sub_29A00911C(a1, "     newValue: ", 15);
          v21 = sub_29A2F2C40(&v45);
          sub_29A1F87E8(*v21 + 24);
          if ((v44 & 0x80u) == 0)
          {
            v22 = &__p;
          }

          else
          {
            v22 = __p;
          }

          if ((v44 & 0x80u) == 0)
          {
            v23 = v44;
          }

          else
          {
            v23 = v43;
          }

          v24 = sub_29A00911C(v20, v22, v23);
          sub_29A00911C(v24, "\n", 1);
          if (v44 < 0)
          {
            operator delete(__p);
          }

          sub_29A2F2C78(&v45);
        }

        while (v45 != v46);
      }

      v25 = *(v7 + 136);
      v26 = *(v7 + 144);
      v45 = v25;
      v46 = v26;
      while (v25 != v26)
      {
        v27 = sub_29A00911C(a1, "    sublayer ", 13);
        v28 = sub_29A2F2CF8(&v45);
        v29 = *(*v28 + 23);
        if (v29 >= 0)
        {
          v30 = *v28;
        }

        else
        {
          v30 = **v28;
        }

        if (v29 >= 0)
        {
          v31 = *(*v28 + 23);
        }

        else
        {
          v31 = (*v28)[1];
        }

        v32 = sub_29A00911C(v27, v30, v31);
        v33 = sub_29A00911C(v32, " ", 1);
        v2 = v2 & 0xFFFFFFFF00000000 | *(*sub_29A2F2CF8(&v45) + 24);
        pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A204AA08, v2, &__p);
        if ((v44 & 0x80u) == 0)
        {
          v34 = &__p;
        }

        else
        {
          v34 = __p;
        }

        if ((v44 & 0x80u) == 0)
        {
          v35 = v44;
        }

        else
        {
          v35 = v43;
        }

        v36 = sub_29A00911C(v33, v34, v35);
        sub_29A00911C(v36, "\n", 1);
        if (v44 < 0)
        {
          operator delete(__p);
        }

        sub_29A2F2D30(&v45);
        v25 = v45;
        v26 = v46;
      }

      if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((v7 + 160)))
      {
        v37 = sub_29A00911C(a1, "   oldPath: <", 13);
        v38 = pxrInternal__aapl__pxrReserved__::operator<<(v37, (v7 + 160));
        sub_29A00911C(v38, ">\n", 2);
      }

      v39 = *(v7 + 192);
      if ((v39 & 0x40) != 0)
      {
        sub_29A00911C(a1, "   didRename\n", 13);
        v39 = *(v7 + 192);
        if ((v39 & 1) == 0)
        {
LABEL_45:
          if ((v39 & 2) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_71;
        }
      }

      else if ((v39 & 1) == 0)
      {
        goto LABEL_45;
      }

      sub_29A00911C(a1, "   didChangeIdentifier\n", 23);
      v39 = *(v7 + 192);
      if ((v39 & 2) == 0)
      {
LABEL_46:
        if ((v39 & 4) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_72;
      }

LABEL_71:
      sub_29A00911C(a1, "   didChangeResolvedPath\n", 25);
      v39 = *(v7 + 192);
      if ((v39 & 4) == 0)
      {
LABEL_47:
        if ((v39 & 8) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_73;
      }

LABEL_72:
      sub_29A00911C(a1, "   didReplaceContent\n", 21);
      v39 = *(v7 + 192);
      if ((v39 & 8) == 0)
      {
LABEL_48:
        if ((v39 & 0x10) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_74;
      }

LABEL_73:
      sub_29A00911C(a1, "   didReloadContent\n", 20);
      v39 = *(v7 + 192);
      if ((v39 & 0x10) == 0)
      {
LABEL_49:
        if ((v39 & 0x20) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_75;
      }

LABEL_74:
      sub_29A00911C(a1, "   didReorderChildren\n", 22);
      v39 = *(v7 + 192);
      if ((v39 & 0x20) == 0)
      {
LABEL_50:
        if ((v39 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_76;
      }

LABEL_75:
      sub_29A00911C(a1, "   didReorderProperties\n", 24);
      v39 = *(v7 + 192);
      if ((v39 & 0x80) == 0)
      {
LABEL_51:
        if ((v39 & 0x100) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_77;
      }

LABEL_76:
      sub_29A00911C(a1, "   didChangePrimVariantSets\n", 28);
      v39 = *(v7 + 192);
      if ((v39 & 0x100) == 0)
      {
LABEL_52:
        if ((v39 & 0x200) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_78;
      }

LABEL_77:
      sub_29A00911C(a1, "   didChangePrimInheritPaths\n", 29);
      v39 = *(v7 + 192);
      if ((v39 & 0x200) == 0)
      {
LABEL_53:
        if ((v39 & 0x400) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_79;
      }

LABEL_78:
      sub_29A00911C(a1, "   didChangePrimSpecializes\n", 28);
      v39 = *(v7 + 192);
      if ((v39 & 0x400) == 0)
      {
LABEL_54:
        if ((v39 & 0x800) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_80;
      }

LABEL_79:
      sub_29A00911C(a1, "   didChangePrimReferences\n", 27);
      v39 = *(v7 + 192);
      if ((v39 & 0x800) == 0)
      {
LABEL_55:
        if ((v39 & 0x1000) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_81;
      }

LABEL_80:
      sub_29A00911C(a1, "   didChangeAttributeTimeSamples\n", 33);
      v39 = *(v7 + 192);
      if ((v39 & 0x1000) == 0)
      {
LABEL_56:
        if ((v39 & 0x2000) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_82;
      }

LABEL_81:
      sub_29A00911C(a1, "   didChangeAttributeConnection\n", 32);
      v39 = *(v7 + 192);
      if ((v39 & 0x2000) == 0)
      {
LABEL_57:
        if ((v39 & 0x4000) != 0)
        {
          goto LABEL_83;
        }

        goto LABEL_58;
      }

LABEL_82:
      sub_29A00911C(a1, "   didChangeRelationshipTargets\n", 32);
      v39 = *(v7 + 192);
      if ((v39 & 0x4000) != 0)
      {
LABEL_83:
        sub_29A00911C(a1, "   didAddTarget\n", 16);
        if ((*(v7 + 192) & 0x8000) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_84;
      }

LABEL_58:
      if ((v39 & 0x8000) == 0)
      {
        goto LABEL_59;
      }

LABEL_84:
      sub_29A00911C(a1, "   didRemoveTarget\n", 19);
LABEL_59:
      v40 = *(v7 + 194);
      if (v40)
      {
        sub_29A00911C(a1, "   didAddInertPrim\n", 19);
        v40 = *(v7 + 194);
        if ((v40 & 2) == 0)
        {
LABEL_61:
          if ((v40 & 4) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_87;
        }
      }

      else if ((*(v7 + 194) & 2) == 0)
      {
        goto LABEL_61;
      }

      sub_29A00911C(a1, "   didAddNonInertPrim\n", 22);
      v40 = *(v7 + 194);
      if ((v40 & 4) == 0)
      {
LABEL_62:
        if ((v40 & 8) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_88;
      }

LABEL_87:
      sub_29A00911C(a1, "   didRemoveInertPrim\n", 22);
      v40 = *(v7 + 194);
      if ((v40 & 8) == 0)
      {
LABEL_63:
        if ((v40 & 0x10) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_89;
      }

LABEL_88:
      sub_29A00911C(a1, "   didRemoveNonInertPrim\n", 25);
      v40 = *(v7 + 194);
      if ((v40 & 0x10) == 0)
      {
LABEL_64:
        if ((v40 & 0x20) == 0)
        {
          goto LABEL_65;
        }

        goto LABEL_90;
      }

LABEL_89:
      sub_29A00911C(a1, "   didAddPropertyWithOnlyRequiredFields\n", 40);
      v40 = *(v7 + 194);
      if ((v40 & 0x20) == 0)
      {
LABEL_65:
        if ((v40 & 0x40) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_91;
      }

LABEL_90:
      sub_29A00911C(a1, "   didAddProperty\n", 18);
      v40 = *(v7 + 194);
      if ((v40 & 0x40) == 0)
      {
LABEL_66:
        if (v40 < 0)
        {
          goto LABEL_92;
        }

        goto LABEL_67;
      }

LABEL_91:
      sub_29A00911C(a1, "   didRemovePropertyWithOnlyRequiredFields\n", 43);
      if ((*(v7 + 194) & 0x80) != 0)
      {
LABEL_92:
        sub_29A00911C(a1, "   didRemoveProperty\n", 21);
      }

LABEL_67:
      sub_29A2F2DB0(&v47);
    }

    while (v47 != v48);
  }

  return a1;
}

{
  v3 = a2[1];
  v10 = *a2;
  v11 = v3;
  while (v10 != v11)
  {
    v4 = sub_29A1FA41C(&v10);
    v5 = pxrInternal__aapl__pxrReserved__::operator<<(a1, *v4);
    v6 = sub_29A00911C(v5, ": ", 2);
    v7 = sub_29A1FA41C(&v10);
    v8 = pxrInternal__aapl__pxrReserved__::operator<<(v6, (*v7 + 8));
    sub_29A00911C(v8, "\n", 1);
    sub_29A1FA454(&v10);
  }

  return a1;
}

{
  if (*a2)
  {
    v3 = sub_29A4184C4(a2) + 24;

    return pxrInternal__aapl__pxrReserved__::operator<<(a1, v3);
  }

  else
  {

    return sub_29A00911C(a1, "@NULL@", 6);
  }
}

{
  v3 = pxrInternal__aapl__pxrReserved__::operator<<(a1, a2);
  v4 = sub_29A00911C(v3, "<", 1);
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v4, (a2 + 1));

  return sub_29A00911C(v5, ">", 1);
}

{
  v4 = &v21;
  sub_29A224368(*a2 + 40);
  if (v22 < 0)
  {
    v4 = v21;
  }

  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((*a2 + 88));
  if (*(String + 23) >= 0)
  {
    v8 = String;
  }

  else
  {
    v8 = *String;
  }

  v9 = *a2;
  v10 = *(*a2 + 104);
  if (v10 == -1.79769313e308)
  {
    v11 = "-inf";
  }

  else
  {
    v11 = &v19;
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%.3f", v6, v7, *(*a2 + 104));
    if (v20 < 0)
    {
      v11 = v19;
    }

    v9 = *a2;
  }

  v12 = *(v9 + 112);
  if (v12 == 1.79769313e308)
  {
    p_p = "inf";
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%.3f", v6, v7, *&v12);
    if (v18 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s<%s> (start: %s end: %s)", v6, v7, v4, v8, v11, p_p);
  if ((v24 & 0x80u) == 0)
  {
    v14 = v23;
  }

  else
  {
    v14 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v15 = v24;
  }

  else
  {
    v15 = v23[1];
  }

  sub_29A00911C(a1, v14, v15);
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v12 != 1.79769313e308 && v18 < 0)
  {
    operator delete(__p);
  }

  if (v10 != -1.79769313e308 && v20 < 0)
  {
    operator delete(v19);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  return a1;
}

{
  v4 = sub_29A00911C(a1, "(", 1);
  v5 = v4;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  v7 = *(EmptyString + 23);
  if (v7 >= 0)
  {
    v8 = EmptyString;
  }

  else
  {
    v8 = *EmptyString;
  }

  if (v7 >= 0)
  {
    v9 = *(EmptyString + 23);
  }

  else
  {
    v9 = EmptyString[1];
  }

  v10 = sub_29A00911C(v5, v8, v9);
  v11 = sub_29A00911C(v10, ", ", 2);
  v12 = v11;
  v13 = *a2;
  if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
  if ((v13 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v15 = (v14 + 4);
  }

  else
  {
    v15 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
  }

  v16 = *(v15 + 23);
  if (v16 >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = *v15;
  }

  if (v16 >= 0)
  {
    v18 = *(v15 + 23);
  }

  else
  {
    v18 = v15[1];
  }

  v19 = sub_29A00911C(v12, v17, v18);
  v20 = sub_29A00911C(v19, ", (", 3);
  v24 = a2[6];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(v20, a2 + 2, &v24, sub_29A19E054);
  v21 = sub_29A00911C(v20, "), (", 4);
  v24 = a2[11];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(v21, a2 + 7, &v24, sub_29A19E054);
  v22 = sub_29A00911C(v21, "), (", 4);
  v24 = a2[16];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(v22, a2 + 12, &v24, sub_29A19E054);
  sub_29A00911C(v22, "))", 2);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

{
  v4 = sub_29A00911C(a1, "(", 1);
  v5 = v4;
  v6 = a2[2];
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v6 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
  if ((v6 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (v7 + 4);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  v9 = *(EmptyString + 23);
  if (v9 >= 0)
  {
    v10 = EmptyString;
  }

  else
  {
    v10 = *EmptyString;
  }

  if (v9 >= 0)
  {
    v11 = *(EmptyString + 23);
  }

  else
  {
    v11 = EmptyString[1];
  }

  v12 = sub_29A00911C(v5, v10, v11);
  v13 = sub_29A00911C(v12, ", ", 2);
  v14 = v13;
  v15 = a2[1];
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v15 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = (v15 & 0xFFFFFFFFFFFFFFF8);
  if ((v15 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v17 = (v16 + 4);
  }

  else
  {
    v17 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v13);
  }

  v18 = *(v17 + 23);
  if (v18 >= 0)
  {
    v19 = v17;
  }

  else
  {
    v19 = *v17;
  }

  if (v18 >= 0)
  {
    v20 = *(v17 + 23);
  }

  else
  {
    v20 = v17[1];
  }

  v21 = sub_29A00911C(v14, v19, v20);
  v22 = sub_29A00911C(v21, ", ", 2);
  v23 = v22;
  v24 = a2[3];
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = (v24 & 0xFFFFFFFFFFFFFFF8);
  if ((v24 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v26 = (v25 + 4);
  }

  else
  {
    v26 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v22);
  }

  v27 = *(v26 + 23);
  if (v27 >= 0)
  {
    v28 = v26;
  }

  else
  {
    v28 = *v26;
  }

  if (v27 >= 0)
  {
    v29 = *(v26 + 23);
  }

  else
  {
    v29 = v26[1];
  }

  v30 = sub_29A00911C(v23, v28, v29);
  v31 = sub_29A00911C(v30, ", (", 3);
  v36 = a2[8];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(v31, a2 + 4, &v36, sub_29A19E054);
  v32 = sub_29A00911C(v31, "), (", 4);
  v36 = a2[13];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(v32, a2 + 9, &v36, sub_29A19E054);
  v33 = sub_29A00911C(v32, "), (", 4);
  v36 = a2[18];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(v33, a2 + 14, &v36, sub_29A19E054);
  v34 = sub_29A00911C(v33, "), (", 4);
  v36 = a2[23];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(v34, a2 + 19, &v36, sub_29A19E054);
  sub_29A00911C(v34, "))", 2);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_release);
  }

  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_release);
  }

  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_29A0FB074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::TfRegistryManager *sub_29A0FB090(pxrInternal__aapl__pxrReserved__::TfRegistryManager *a1)
{
  Instance = pxrInternal__aapl__pxrReserved__::TfRegistryManager::GetInstance(a1);
  pxrInternal__aapl__pxrReserved__::TfRegistryManager::_UnsubscribeFrom(Instance, &stru_2A203FE00);
  sub_29A0EB4E8(a1 + 208);
  sub_29A0FB0F8(a1 + 168);
  sub_29A0EB4E8(a1 + 128);
  sub_29A0FB1C0(a1 + 88);
  sub_29A0FB1C0(a1 + 48);
  sub_29A0FB1C0(a1 + 8);
  return a1;
}

uint64_t sub_29A0FB0F8(uint64_t a1)
{
  sub_29A0FB134(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A0FB134(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A0FB178((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A0FB178(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_29A012C90(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_29A0FB1C0(uint64_t a1)
{
  sub_29A0FB1FC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A0FB1FC(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 55) < 0)
      {
        operator delete(v2[4]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

unint64_t sub_29A0FB248(unint64_t a1, uint64_t a2, char *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 1065353216;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 200) = 1065353216;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 1065353216;
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::_instance, a1))
  {
    v6[0] = "tf/instantiateSingleton.h";
    v6[1] = "SetInstanceConstructed";
    v6[2] = 54;
    v6[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::Tf_EnumRegistry]";
    v7 = 0;
    v8 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v6, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  Instance = pxrInternal__aapl__pxrReserved__::TfRegistryManager::GetInstance(a1);
  pxrInternal__aapl__pxrReserved__::TfRegistryManager::_SubscribeTo(Instance, &stru_2A203FE00);
  return a1;
}

void sub_29A0FB358(_Unwind_Exception *a1)
{
  sub_29A0EB4E8(v6);
  sub_29A0FB0F8(v5);
  sub_29A0EB4E8(v4);
  sub_29A0FB1C0(v3);
  sub_29A0FB1C0(v2);
  sub_29A0FB1C0(v1);
  _Unwind_Resume(a1);
}

const void **sub_29A0FB394(uint64_t a1, unsigned __int8 *a2, uint64_t a3, __int128 **a4)
{
  v6 = a2;
  v28 = 0;
  v29 = 0;
  v8 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v9 = a2[23];
  }

  else
  {
    a2 = *a2;
    v9 = v8;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v28, a2, v9);
  v10 = bswap64(0x9E3779B97F4A7C55 * v28);
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v4 = v10;
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (sub_29A0EC4B8(a1, i + 2, v6))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A0FB63C(a1, v10, a4, &v28);
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v11 || (v18 * v11) < v17)
  {
    v19 = 1;
    if (v11 >= 3)
    {
      v19 = (v11 & (v11 - 1)) != 0;
    }

    v20 = v19 | (2 * v11);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    sub_29A019AA0(a1, v22);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v4);
  if (v24)
  {
    i = v28;
    *v28 = *v24;
    *v24 = i;
  }

  else
  {
    v25 = v28;
    *v28 = *(a1 + 16);
    *(a1 + 16) = v25;
    *(v23 + 8 * v4) = a1 + 16;
    i = v28;
    if (*v28)
    {
      v26 = *(*v28 + 1);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v26 >= v11)
        {
          v26 %= v11;
        }
      }

      else
      {
        v26 &= v11 - 1;
      }

      *(*a1 + 8 * v26) = v28;
      i = v28;
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29A0FB624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FB6E4(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29A0FB63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x40uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    result[4] = *(v10 + 2);
    *(result + 1) = v11;
  }

  v9[5] = 0;
  v9[6] = 0;
  v9[7] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29A0FB6E4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A0FB178(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29A0FB740(uint64_t a1, int *a2, uint64_t a3, _OWORD **a4)
{
  v24 = 0;
  LOBYTE(v25) = 0;
  sub_29A0FB9C4(&v24, a2);
  v7 = bswap64(0x9E3779B97F4A7C55 * v24);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v4 = v7;
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }

    v10 = *(*a1 + 8 * v4);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11[1];
          if (v12 == v7)
          {
            pxrInternal__aapl__pxrReserved__::TfEnum::operator==();
          }

          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= v8)
            {
              v12 %= v8;
            }
          }

          else
          {
            v12 &= v8 - 1;
          }

          if (v12 != v4)
          {
            break;
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v13 = operator new(0x38uLL);
  v25 = a1;
  v26 = 1;
  *v13 = 0;
  v13[1] = v7;
  *(v13 + 1) = **a4;
  v13[5] = 0;
  v13[6] = 0;
  v13[4] = 0;
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v8 || (v15 * v8) < v14)
  {
    v16 = 1;
    if (v8 >= 3)
    {
      v16 = (v8 & (v8 - 1)) != 0;
    }

    v17 = v16 | (2 * v8);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }

      else
      {
        v4 = v7;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    *v13 = *v21;
LABEL_37:
    *v21 = v13;
    goto LABEL_38;
  }

  *v13 = *(a1 + 16);
  *(a1 + 16) = v13;
  *(v20 + 8 * v4) = a1 + 16;
  if (*v13)
  {
    v22 = *(*v13 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v22 >= v8)
      {
        v22 %= v8;
      }
    }

    else
    {
      v22 &= v8 - 1;
    }

    v21 = (*a1 + 8 * v22);
    goto LABEL_37;
  }

LABEL_38:
  ++*(a1 + 24);
  return v13;
}

unint64_t sub_29A0FB9C4(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, int *a2)
{
  v4 = *(*a2 + 8);
  v5 = strlen((v4 & 0x7FFFFFFFFFFFFFFFLL));
  result = pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, (v4 & 0x7FFFFFFFFFFFFFFFLL), v5);
  v7 = a2[2];
  if (*(a1 + 8))
  {
    v7 += (*a1 + v7 + (*a1 + v7) * (*a1 + v7)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return result;
}

const void **sub_29A0FBA3C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, __int128 **a4)
{
  v6 = a2;
  v28 = 0;
  v29 = 0;
  v8 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v9 = a2[23];
  }

  else
  {
    a2 = *a2;
    v9 = v8;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v28, a2, v9);
  v10 = bswap64(0x9E3779B97F4A7C55 * v28);
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v4 = v10;
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (sub_29A0EC4B8(a1, i + 2, v6))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A0FBCF0(a1, v10, a4, &v28);
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v11 || (v18 * v11) < v17)
  {
    v19 = 1;
    if (v11 >= 3)
    {
      v19 = (v11 & (v11 - 1)) != 0;
    }

    v20 = v19 | (2 * v11);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    sub_29A019AA0(a1, v22);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v4);
  if (v24)
  {
    i = v28;
    *v28 = *v24;
    *v24 = i;
  }

  else
  {
    v25 = v28;
    *v28 = *(a1 + 16);
    *(a1 + 16) = v25;
    *(v23 + 8 * v4) = a1 + 16;
    i = v28;
    if (*v28)
    {
      v26 = *(*v28 + 1);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v26 >= v11)
        {
          v26 %= v11;
        }
      }

      else
      {
        v26 &= v11 - 1;
      }

      *(*a1 + 8 * v26) = v28;
      i = v28;
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29A0FBCCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A0FBCF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x38uLL);
  v9 = result;
  a4[1] = a1;
  *a4 = result;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    result[4] = *(v10 + 2);
    *(result + 1) = v11;
  }

  v9[5] = MEMORY[0x29EDC94D0];
  *(v9 + 12) = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29A0FBD90(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A0EC874(v3, v2);
  _Unwind_Resume(a1);
}

const void **sub_29A0FBDAC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, __int128 **a4)
{
  v6 = a2;
  v28 = 0;
  v29 = 0;
  v8 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v9 = a2[23];
  }

  else
  {
    a2 = *a2;
    v9 = v8;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v28, a2, v9);
  v10 = bswap64(0x9E3779B97F4A7C55 * v28);
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v4 = v10;
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (sub_29A0EC4B8(a1, i + 2, v6))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A0FC060(a1, v10, a4, &v28);
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v11 || (v18 * v11) < v17)
  {
    v19 = 1;
    if (v11 >= 3)
    {
      v19 = (v11 & (v11 - 1)) != 0;
    }

    v20 = v19 | (2 * v11);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    sub_29A019AA0(a1, v22);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v4);
  if (v24)
  {
    i = v28;
    *v28 = *v24;
    *v24 = i;
  }

  else
  {
    v25 = v28;
    *v28 = *(a1 + 16);
    *(a1 + 16) = v25;
    *(v23 + 8 * v4) = a1 + 16;
    i = v28;
    if (*v28)
    {
      v26 = *(*v28 + 1);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v26 >= v11)
        {
          v26 %= v11;
        }
      }

      else
      {
        v26 &= v11 - 1;
      }

      *(*a1 + 8 * v26) = v28;
      i = v28;
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29A0FC03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A0FC060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  v9 = result;
  a4[1] = a1;
  *a4 = result;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    result[4] = *(v10 + 2);
    *(result + 1) = v11;
  }

  v9[5] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29A0FC0F4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A0EC874(v3, v2);
  _Unwind_Resume(a1);
}

__n128 sub_29A0FC118(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A203FE20;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 sub_29A0FC16C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A203FE20;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A0FC1B4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203FE90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A0FC200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = a2;
  v8[3] = a3;
  sub_29A0EB5BC(v8, a1);
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), __p);
  sub_29A0FC4E8((a1 + 208), __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, (*(a2 + 8) & 0x7FFFFFFFFFFFFFFFLL));
  v5[0] = __p;
  sub_29A0FB394(a1 + 168, __p, &unk_29B4D6118, v5);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29A0FC474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, _BYTE *a21)
{
  if (a21)
  {
    __dmb(0xBu);
    *a21 = 0;
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A0FC4E8(void *a1, unsigned __int8 *a2)
{
  result = sub_29A0FC520(a1, a2);
  if (result)
  {
    sub_29A0FC660(a1, result);
    return 1;
  }

  return result;
}

const void **sub_29A0FC520(void *a1, unsigned __int8 *a2)
{
  v2 = a2;
  v15 = 0;
  v16 = 0;
  v4 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v5 = a2[23];
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v15, a2, v5);
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = bswap64(0x9E3779B97F4A7C55 * v15);
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v6)
    {
      v10 = v7 % *&v6;
    }
  }

  else
  {
    v10 = (*&v6 - 1) & v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v13 == v7)
    {
      if (sub_29A0EC4B8(a1, i + 2, v2))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v6)
        {
          v13 %= *&v6;
        }
      }

      else
      {
        v13 &= *&v6 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_29A0FC660(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_29A0EC874(&v6, v3);
  }

  return v2;
}

uint64_t *sub_29A0FC6AC(void *a1, int *a2)
{
  result = sub_29A0FC6E4(a1, a2);
  if (result)
  {
    sub_29A0FC808(a1, result);
    return 1;
  }

  return result;
}

void *sub_29A0FC6E4(void *a1, int *a2)
{
  v11 = 0;
  v12 = 0;
  sub_29A0FB9C4(&v11, a2);
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = bswap64(0x9E3779B97F4A7C55 * v11);
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v4;
    if (v4 >= *&v3)
    {
      v6 = v4 % *&v3;
    }
  }

  else
  {
    v6 = (*&v3 - 1) & v4;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  v8 = *v7;
  if (*v7)
  {
    while (1)
    {
      v9 = v8[1];
      if (v9 == v4)
      {
        pxrInternal__aapl__pxrReserved__::TfEnum::operator==();
      }

      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v3)
        {
          v9 %= *&v3;
        }
      }

      else
      {
        v9 &= *&v3 - 1;
      }

      if (v9 != v6)
      {
        break;
      }

      v8 = *v8;
      if (!v8)
      {
        return v8;
      }
    }

    return 0;
  }

  return v8;
}

uint64_t sub_29A0FC808(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_29A0ECDB0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_29A01BC68(&v6, v3);
  }

  return v2;
}

uint64_t sub_29A0FC854(uint64_t a1)
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

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B43B1E8 & 0x7FFFFFFFFFFFFFFFLL), &v11);
  v2 = std::string::insert(&v11, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v15 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v12, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v11);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry*> &)::isInitializing, 1u))
  {
    while (!atomic_load(a1))
    {
      sched_yield();
    }
  }

  else
  {
    if (!atomic_load(a1))
    {
      v6 = operator new(0x70uLL);
      sub_29A0FDAC0(v6);
      v8 = atomic_load(a1);
      if (v8)
      {
        if (v6 != v8)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry]";
          v17 = 0;
          v18 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "race detected setting singleton instance", v7);
        }
      }

      else if (atomic_exchange(a1, v6))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v15 = 90;
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v7, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry*> &)::isInitializing);
  }

  v9 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v9;
}

void sub_29A0FCABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::SetInstanceConstructed(unint64_t result)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_instance, result))
  {
    v6 = v2;
    v7 = v1;
    v8 = v3;
    v9 = v4;
    v5 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/instantiateSingleton.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/instantiateSingleton.h", v5, 0x2F);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_instance, &v1, 0);
    if (v1 == i)
    {
      sub_29A0FD940(&i[1]);
      std::mutex::~mutex(i);

      operator delete(v2);
      return;
    }

    sched_yield();
  }
}

void pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>(uint64_t a1)
{
  sub_29A008E78(v27, *(a1 + 16));
  v26 = *(a1 + 8);
  v2 = v28;
  v3 = v27[0];
  if (v26)
  {
    v4 = "true";
  }

  else
  {
    v4 = "false";
  }

  sub_29A008E78(__p, v4);
  if (v2 >= 0)
  {
    v5 = v27;
  }

  else
  {
    v5 = v3;
  }

  if ((v25 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  setenv(v5, v6, 1);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_instance);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_CreateInstance();
  }

  if (sub_29A0FCED0(v7, v27, &v26, *a1) && *(a1 + 8) != v26)
  {
    v8 = *(a1 + 16);
    if (v26)
    {
      v9 = "true";
    }

    else
    {
      v9 = "false";
    }

    sub_29A008E78(__b, v9);
    v10 = v23;
    v11 = __b[0];
    if (*(a1 + 8))
    {
      v12 = "true";
    }

    else
    {
      v12 = "false";
    }

    sub_29A008E78(v20, v12);
    v15 = __b;
    if (v10 < 0)
    {
      v15 = v11;
    }

    if (v21 >= 0)
    {
      v16 = v20;
    }

    else
    {
      v16 = v20[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("#  %s is overridden to '%s'.  Default is '%s'.  #", v13, v14, v8, v15, v16);
    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    if (v23 < 0)
    {
      operator delete(__b[0]);
    }

    if ((v25 & 0x80u) == 0)
    {
      v17 = v25;
    }

    else
    {
      v17 = __p[1];
    }

    sub_29A00944C(__b, v17, 35);
    if (v23 >= 0)
    {
      v18 = __b;
    }

    else
    {
      v18 = __b[0];
    }

    v19 = __p;
    if ((v25 & 0x80u) != 0)
    {
      v19 = __p[0];
    }

    fprintf(*MEMORY[0x29EDCA610], "%s\n%s\n%s\n", v18, v19, v18);
    if (v23 < 0)
    {
      operator delete(__b[0]);
    }

    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }
}

void sub_29A0FCE64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 65) < 0)
  {
    operator delete(*(v29 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0FCED0(std::mutex *a1, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  std::mutex::lock(a1);
  if (atomic_load(a4))
  {
    std::mutex::unlock(a1);
LABEL_16:
    v13 = 0;
    return v13 & 1;
  }

  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v17 = *(a2 + 16);
  }

  LOBYTE(v18) = *a3;
  v21 = 1;
  v9 = sub_29A0FE040(&a1[1], __p, __p);
  v11 = v10;
  sub_29A0FDA4C(&v18);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = (v9 + 5);
  if (*(v9 + 16) != 1)
  {
    v12 = 0;
  }

  atomic_store(v12, a4);
  std::mutex::unlock(a1);
  if ((v11 & 1) == 0)
  {
    __p[0] = "tf/envSetting.cpp";
    __p[1] = "Define";
    v17 = 131;
    v18 = "BOOL pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry::Define(const string &, const U &, std::atomic<U *> *) [U = BOOL]";
    v19 = 0;
    v20 = 1;
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(__p, "Multiple definitions of TfEnvSetting variable detected.  This is usually due to software misconfiguration.  Contact the build team for assistance.  (duplicate '%s')", v14);
    goto LABEL_16;
  }

  v13 = a1[1].__m_.__opaque[32];
  return v13 & 1;
}

void pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>(uint64_t a1)
{
  sub_29A008E78(v30, *(a1 + 16));
  v29 = *(a1 + 8);
  v2 = v31;
  v3 = v30[0];
  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%d", v4, v5, v29);
  if (v2 >= 0)
  {
    v6 = v30;
  }

  else
  {
    v6 = v3;
  }

  if ((v28 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  setenv(v6, v7, 1);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_instance);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_CreateInstance();
  }

  if (sub_29A0FD2B4(v8, v30, &v29, *a1) && *(a1 + 8) != v29)
  {
    v11 = *(a1 + 16);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%d", v9, v10, v29);
    v12 = v26;
    v13 = __b[0];
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("%d", v14, v15, *(a1 + 8));
    v18 = __b;
    if (v12 < 0)
    {
      v18 = v13;
    }

    if (v24 >= 0)
    {
      v19 = &v23;
    }

    else
    {
      v19 = v23;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("#  %s is overridden to '%s'.  Default is '%s'.  #", v16, v17, v11, v18, v19);
    if (v24 < 0)
    {
      operator delete(v23);
    }

    if (v26 < 0)
    {
      operator delete(__b[0]);
    }

    if ((v28 & 0x80u) == 0)
    {
      v20 = v28;
    }

    else
    {
      v20 = __p[1];
    }

    sub_29A00944C(__b, v20, 35);
    if (v26 >= 0)
    {
      v21 = __b;
    }

    else
    {
      v21 = __b[0];
    }

    v22 = __p;
    if ((v28 & 0x80u) != 0)
    {
      v22 = __p[0];
    }

    fprintf(*MEMORY[0x29EDCA610], "%s\n%s\n%s\n", v21, v22, v21);
    if (v26 < 0)
    {
      operator delete(__b[0]);
    }

    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }
}

void sub_29A0FD248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 49) < 0)
  {
    operator delete(*(v29 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0FD2B4(std::mutex *a1, uint64_t a2, _DWORD *a3, unint64_t *a4)
{
  std::mutex::lock(a1);
  if (atomic_load(a4))
  {
    std::mutex::unlock(a1);
LABEL_16:
    v13 = 0;
    return v13 & 1;
  }

  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v17 = *(a2 + 16);
  }

  LODWORD(v18) = *a3;
  v21 = 0;
  v9 = sub_29A0FE040(&a1[1], __p, __p);
  v11 = v10;
  sub_29A0FDA4C(&v18);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = (v9 + 5);
  if (*(v9 + 16))
  {
    v12 = 0;
  }

  atomic_store(v12, a4);
  std::mutex::unlock(a1);
  if ((v11 & 1) == 0)
  {
    __p[0] = "tf/envSetting.cpp";
    __p[1] = "Define";
    v17 = 131;
    v18 = "BOOL pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry::Define(const string &, const U &, std::atomic<U *> *) [U = int]";
    v19 = 0;
    v20 = 1;
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(__p, "Multiple definitions of TfEnvSetting variable detected.  This is usually due to software misconfiguration.  Contact the build team for assistance.  (duplicate '%s')", v14);
    goto LABEL_16;
  }

  v13 = a1[1].__m_.__opaque[32];
  return v13 & 1;
}

void pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<std::string>(uint64_t a1)
{
  v2 = v29;
  sub_29A008E78(v29, *(a1 + 16));
  sub_29A008E78(&__s1, *(a1 + 8));
  if (v30 < 0)
  {
    v2 = v29[0];
  }

  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __s1, *(&__s1 + 1));
  }

  else
  {
    *__p = __s1;
    v26 = v28;
  }

  if (v26 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  setenv(v2, v3, 1);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_CreateInstance();
  }

  v5 = sub_29A0FD748(v4, v29, &__s1, *a1);
  v6 = HIBYTE(v28);
  if (!v5)
  {
LABEL_46:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v7 = *(a1 + 8);
  v8 = strlen(v7);
  if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
    if (v8 == HIBYTE(v28) && !memcmp(&__s1, v7, v8))
    {
      goto LABEL_48;
    }

    v9 = *(a1 + 16);
    *__b = __s1;
    v24 = v28;
    goto LABEL_24;
  }

  v10 = *(&__s1 + 1);
  if (v8 != *(&__s1 + 1))
  {
    v9 = *(a1 + 16);
    v11 = __s1;
    goto LABEL_23;
  }

  if (v8 == -1)
  {
    sub_29A0F26CC();
  }

  v11 = __s1;
  if (memcmp(__s1, v7, v8))
  {
    v9 = *(a1 + 16);
LABEL_23:
    sub_29A008D14(__b, v11, v10);
    v7 = *(a1 + 8);
LABEL_24:
    v12 = SHIBYTE(v24);
    v13 = __b[0];
    sub_29A008E78(v21, v7);
    v16 = __b;
    if (v12 < 0)
    {
      v16 = v13;
    }

    if (v22 >= 0)
    {
      v17 = v21;
    }

    else
    {
      v17 = v21[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("#  %s is overridden to '%s'.  Default is '%s'.  #", v14, v15, v9, v16, v17);
    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(__b[0]);
    }

    if (v26 >= 0)
    {
      v18 = HIBYTE(v26);
    }

    else
    {
      v18 = __p[1];
    }

    sub_29A00944C(__b, v18, 35);
    if (v24 >= 0)
    {
      v19 = __b;
    }

    else
    {
      v19 = __b[0];
    }

    v20 = __p;
    if (v26 < 0)
    {
      v20 = __p[0];
    }

    fprintf(*MEMORY[0x29EDCA610], "%s\n%s\n%s\n", v19, v20, v19);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__b[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = HIBYTE(v28);
    goto LABEL_46;
  }

LABEL_47:
  operator delete(__s1);
LABEL_48:
  if (v30 < 0)
  {
    operator delete(v29[0]);
  }
}

void sub_29A0FD6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 73) < 0)
  {
    operator delete(*(v30 - 96));
  }

  if (*(v30 - 49) < 0)
  {
    operator delete(*(v30 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0FD748(std::mutex *a1, uint64_t a2, __int128 *a3, unint64_t *a4)
{
  std::mutex::lock(a1);
  if (atomic_load(a4))
  {
    std::mutex::unlock(a1);
LABEL_13:
    v13 = 0;
    return v13 & 1;
  }

  sub_29A0FE50C(&__p, a2, a3);
  v9 = sub_29A0FE040(&a1[1], &__p, &__p);
  v11 = v10;
  sub_29A0FDA4C(&v18);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  v12 = (v9 + 5);
  if (*(v9 + 16) != 2)
  {
    v12 = 0;
  }

  atomic_store(v12, a4);
  std::mutex::unlock(a1);
  if ((v11 & 1) == 0)
  {
    *&__p = "tf/envSetting.cpp";
    *(&__p + 1) = "Define";
    v17 = 131;
    v18 = "BOOL pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry::Define(const string &, const U &, std::atomic<U *> *) [U = std::string]";
    v19 = 0;
    v20 = 1;
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(&__p, "Multiple definitions of TfEnvSetting variable detected.  This is usually due to software misconfiguration.  Contact the build team for assistance.  (duplicate '%s')", v14);
    goto LABEL_13;
  }

  v13 = a1[1].__m_.__opaque[32];
  return v13 & 1;
}

void sub_29A0FD86C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FDA10(va);
  std::mutex::unlock(v2);
  _Unwind_Resume(a1);
}

const void **pxrInternal__aapl__pxrReserved__::Tf_GetEnvSettingByName(unsigned __int8 *a1)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_CreateInstance();
  }

  return sub_29A0FD8E0(v2, a1);
}

const void **sub_29A0FD8E0(std::mutex *a1, unsigned __int8 *a2)
{
  std::mutex::lock(a1);
  v4 = sub_29A0EC378(&a1[1].__m_.__sig, a2);
  if (v4)
  {
    v5 = v4 + 5;
  }

  else
  {
    v5 = 0;
  }

  std::mutex::unlock(a1);
  return v5;
}

uint64_t sub_29A0FD940(uint64_t a1)
{
  sub_29A0FD97C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A0FD97C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A0FD9C0((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A0FD9C0(uint64_t a1)
{
  sub_29A0FDA4C(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_29A0FDA10(uint64_t a1)
{
  sub_29A0FDA4C(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A0FDA4C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_2A203FEA0[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void sub_29A0FDAAC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

unint64_t sub_29A0FDAC0(unint64_t a1)
{
  v48 = *MEMORY[0x29EDCA608];
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1065353216;
  sub_29A008E78(v43, "PIXAR_TF_ENV_SETTING_FILE");
  sub_29A008E78(&__p, "");
  pxrInternal__aapl__pxrReserved__::TfGetenv(v43, &__p, v40);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  if (v41 >= 0)
  {
    v2 = v40;
  }

  else
  {
    v2 = v40[0];
  }

  v3 = pxrInternal__aapl__pxrReserved__::ArchOpenFile(v2, "r");
  if (v3)
  {
    v38 = 0;
    v37[0] = v40;
    v37[1] = &v38;
    while (fgets(v43, 1024, v3))
    {
      ++v38;
      sub_29A008E78(&__p, v43);
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (p_p->__r_.__value_.__s.__data_[size - 1] == 10)
      {
        pxrInternal__aapl__pxrReserved__::TfStringTrim(" \n\t\r", &__p, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__str.__r_.__value_.__l.__size_)
          {
            p_str = __str.__r_.__value_.__r.__words[0];
            goto LABEL_22;
          }

LABEL_39:
          operator delete(__str.__r_.__value_.__l.__data_);
          goto LABEL_40;
        }

        if (*(&__str.__r_.__value_.__s + 23))
        {
          p_str = &__str;
LABEL_22:
          if (p_str->__r_.__value_.__s.__data_[0] != 35)
          {
            v13 = std::string::find(&__str, 61, 0);
            if (v13 == -1)
            {
              sub_29A0FDF98(v37, "no '=' found", v14, v15, v16, v17, v18, v19, v32);
            }

            else
            {
              v20 = v13;
              std::string::basic_string(&v34, &__str, 0, v13, &v33);
              pxrInternal__aapl__pxrReserved__::TfStringTrim(" \n\t\r", &v34, &v35);
              if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v34.__r_.__value_.__l.__data_);
              }

              std::string::basic_string(&v33, &__str, v20 + 1, 0xFFFFFFFFFFFFFFFFLL, &v42);
              pxrInternal__aapl__pxrReserved__::TfStringTrim(" \n\t\r", &v33, &v34);
              if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v33.__r_.__value_.__l.__data_);
              }

              v27 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
              if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v27 = v35.__r_.__value_.__l.__size_;
              }

              if (v27)
              {
                pxrInternal__aapl__pxrReserved__::ArchSetEnv(&v35, &v34, 0);
              }

              else
              {
                sub_29A0FDF98(v37, "empty key", v21, v22, v23, v24, v25, v26, v32);
              }

              if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v34.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v35.__r_.__value_.__l.__data_);
              }
            }
          }

          if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }
      }

      else
      {
        sub_29A0FDF98(v37, "line too long; ignored", v4, v5, v6, v7, v8, v9, v32);
      }

LABEL_40:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    fclose(v3);
  }

  sub_29A008E78(v43, "TF_ENV_SETTING_ALERTS_ENABLED");
  v28 = pxrInternal__aapl__pxrReserved__::TfGetenvBool(v43, 1);
  *(a1 + 104) = v28;
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::_instance, a1))
  {
    v43[0] = "tf/instantiateSingleton.h";
    v43[1] = "SetInstanceConstructed";
    v44 = 54;
    v45 = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::Tf_EnvSettingRegistry]";
    v46 = 0;
    v47 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(v43, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", v29);
  }

  Instance = pxrInternal__aapl__pxrReserved__::TfRegistryManager::GetInstance(v28);
  pxrInternal__aapl__pxrReserved__::TfRegistryManager::_SubscribeTo(Instance, &stru_2A203FEB8);
  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  return a1;
}

void sub_29A0FDE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  sub_29A0FD940(&v55[1]);
  std::mutex::~mutex(v55);
  _Unwind_Resume(a1);
}

void sub_29A0FDF98(const char **a1, pxrInternal__aapl__pxrReserved__ *this, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = &a9;
  v9 = *MEMORY[0x29EDCA610];
  v10 = *a1;
  if ((*a1)[23] < 0)
  {
    v10 = *v10;
  }

  v11 = *a1[1];
  pxrInternal__aapl__pxrReserved__::TfVStringPrintf(__p, this, v15, a3);
  if (v14 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  fprintf(v9, "File '%s' (From PIXAR_TF_ENV_SETTING_FILE) line %d: %s.\n", v10, v11, v12);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

const void **sub_29A0FE040(uint64_t a1, unsigned __int8 *a2, __int128 *a3)
{
  v5 = a2;
  v27 = 0;
  v28 = 0;
  v7 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v8 = a2[23];
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v27, a2, v8);
  v9 = bswap64(0x9E3779B97F4A7C55 * v27);
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v3 = v9;
      if (v9 >= v10)
      {
        v3 = v9 % v10;
      }
    }

    else
    {
      v3 = (v10 - 1) & v9;
    }

    v13 = *(*a1 + 8 * v3);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          if (sub_29A0EC4B8(a1, i + 2, v5))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A0FE2D0(a1, v9, a3, &v27);
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v10 || (v17 * v10) < v16)
  {
    v18 = 1;
    if (v10 >= 3)
    {
      v18 = (v10 & (v10 - 1)) != 0;
    }

    v19 = v18 | (2 * v10);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    sub_29A019AA0(a1, v21);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v3 = v9 % v10;
      }

      else
      {
        v3 = v9;
      }
    }

    else
    {
      v3 = (v10 - 1) & v9;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v3);
  if (v23)
  {
    i = v27;
    *v27 = *v23;
    *v23 = i;
  }

  else
  {
    v24 = v27;
    *v27 = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v3) = a1 + 16;
    i = v27;
    if (*v27)
    {
      v25 = *(*v27 + 1);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v25 >= v10)
        {
          v25 %= v10;
        }
      }

      else
      {
        v25 &= v10 - 1;
      }

      *(*a1 + 8 * v25) = v27;
      i = v27;
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29A0FE2B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0FE4B0(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29A0FE2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x48uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29A0FE340(v8 + 2, a3);
  *(a4 + 16) = 1;
  return result;
}

void *sub_29A0FE340(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_29A0FE3B8((__dst + 3), a2 + 24);
  return __dst;
}

void sub_29A0FE39C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0FE3B8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  sub_29A0FE400(a1, a2);
  return a1;
}

uint64_t sub_29A0FE400(uint64_t a1, uint64_t a2)
{
  result = sub_29A0FDA4C(a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2A203FEC8[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

void *sub_29A0FE484(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_29A008D14(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

void sub_29A0FE4B0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A0FD9C0(v2 + 16);
    }

    operator delete(v2);
  }
}

char *sub_29A0FE50C(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  *(__dst + 12) = 2;
  return __dst;
}

void sub_29A0FE590(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfError::TfError(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, __int128 *a5, std::string *__str, void (**a7)(uint64_t, void, void (**)(uint64_t), void, void), char a8)
{
  v17[4] = *MEMORY[0x29EDCA608];
  v17[0] = 0;
  v17[1] = 0;
  if (*a7)
  {
    (*a7)(1, a7, v17, 0, 0);
  }

  pxrInternal__aapl__pxrReserved__::TfDiagnosticBase::TfDiagnosticBase(a1, a2, a3, a4, a5, __str, v17, a8);
  sub_29A0F40F0(v17);
  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v15)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  *(a1 + 136) = atomic_fetch_add((v15 + 144), 1uLL);
  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(pxrInternal__aapl__pxrReserved__::TfErrorMark *this, atomic_ullong *a2)
{
  v7 = 0;
  v4 = *(sub_29A0ED084(a2 + 19, &v7) + 8);
  v8 = 0;
  v5 = sub_29A0ED084(a2 + 19, &v8);
  return v4 == v5 || *(*v5 + 152) < *this;
}

void *pxrInternal__aapl__pxrReserved__::TfErrorMark::_ReportErrors(pxrInternal__aapl__pxrReserved__::TfErrorMark *this, atomic_ullong *a2)
{
  v3 = sub_29A0FE7E0(this, 0);
  v7 = 0;
  v4 = sub_29A0ED084(a2 + 19, &v7);
  if (v4 != v3)
  {
    v5 = v3;
    do
    {
      pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_ReportError(a2, (v5 + 2));
      v5 = v5[1];
    }

    while (v5 != v4);
  }

  return pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::EraseRange(a2, v3, v4);
}

void *sub_29A0FE7E0(unint64_t *a1, unint64_t *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v5 = *a1;

  return pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_GetErrorMarkBegin(v4, v5, a2);
}

pxrInternal__aapl__pxrReserved__::TfErrorMark *pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(pxrInternal__aapl__pxrReserved__::TfErrorMark *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v7 = 0;
  v3 = sub_29A0F84F8(v2 + 344, &v7);
  ++*v3;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v5 = atomic_load((v4 + 144));
  *this = v5;
  return this;
}

void pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(pxrInternal__aapl__pxrReserved__::TfErrorMark *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v8 = 0;
  v3 = sub_29A0F84F8((v2 + 43), &v8);
  if ((*v3)-- == 1)
  {
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
    }

    v6 = *this;
    v7 = atomic_load((v5 + 144));
    if (v6 < v7 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(this, v5))
    {
      pxrInternal__aapl__pxrReserved__::TfErrorMark::_ReportErrors(this, v2);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::TfReportActiveErrorMarks(pxrInternal__aapl__pxrReserved__ *this)
{
  memset(&v27, 0, sizeof(v27));
  std::string::append(&v27, "- Set _enableTfErrorMarkStackTraces and recompile tf/errorMark.cpp.\n");
  if (!sub_29A0F6834(2))
  {
    std::string::append(&v27, "- Enable the TF_ERROR_MARK_TRACKING debug code.\n");
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v27.__r_.__value_.__l.__size_)
    {
      v1 = v27.__r_.__value_.__r.__words[0];
      goto LABEL_8;
    }
  }

  else if (*(&v27.__r_.__value_.__s + 23))
  {
    v1 = &v27;
LABEL_8:
    printf("Active error mark stack traces are disabled.  To enable, please do the following:\n%s", v1);
    goto LABEL_25;
  }

  v24 = 0u;
  v25 = 0u;
  v26 = 1065353216;
  sub_29A0EB5BC(v16, &unk_2A153EF68);
  if ((atomic_load_explicit(&qword_2A153EF78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EF78))
  {
    v13 = operator new(0x28uLL);
    *v13 = 0u;
    v13[1] = 0u;
    *(v13 + 8) = 1065353216;
    qword_2A153EF70 = v13;
    __cxa_guard_release(&qword_2A153EF78);
  }

  if (&v24 != qword_2A153EF70)
  {
    v26 = *(qword_2A153EF70 + 32);
    sub_29A0FEE70(&v24, *(qword_2A153EF70 + 16), 0);
  }

  v4 = v16[0];
  if (v16[0])
  {
    __dmb(0xBu);
    *v4 = 0;
  }

  v22 = v25;
  v23 = 0;
  v5 = *MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 64);
  v7 = *(MEMORY[0x29EDC9528] + 72);
  while (v22 != v23)
  {
    v8 = sub_29A0FED30(&v22, v2, v3);
    printf("== TfErrorMark @ %p created from ===========================\n", *(*v8 + 16));
    sub_29A008864(v16);
    v11 = sub_29A0FED30(&v22, v9, v10);
    pxrInternal__aapl__pxrReserved__::ArchPrintStackFrames(&v17, (*v11 + 24), 0);
    std::stringbuf::str();
    if (v15 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    puts(p_p);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    v16[0] = v5;
    *(v16 + *(v5 - 24)) = v6;
    v17 = v7;
    v18 = MEMORY[0x29EDC9570] + 16;
    if (v20 < 0)
    {
      operator delete(v19[7].__locale_);
    }

    v18 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v19);
    std::iostream::~basic_iostream();
    MEMORY[0x29C2C4390](&v21);
    sub_29A0FED68(&v22);
  }

  sub_29A0FEDE8(&v24);
LABEL_25:
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_29A0FECBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _BYTE *a14)
{
  __cxa_guard_abort(&qword_2A153EF78);
  if (a14)
  {
    __dmb(0xBu);
    *a14 = 0;
  }

  sub_29A0FEDE8(v14 - 160);
  if (*(v14 - 89) < 0)
  {
    operator delete(*(v14 - 112));
  }

  _Unwind_Resume(a1);
}

void *sub_29A0FED30(void *result, uint64_t a2, char *a3)
{
  if (*result == result[1])
  {
    sub_29B28D758(result, a2, a3);
  }

  return result;
}

uint64_t sub_29A0FED68(uint64_t a1)
{
  if (*a1 == *(a1 + 8))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::TfHashMap<const pxrInternal__aapl__pxrReserved__::TfErrorMark *, std::vector<unsigned long>, pxrInternal__aapl__pxrReserved__::TfHash>>::operator++() [T = pxrInternal__aapl__pxrReserved__::TfHashMap<const pxrInternal__aapl__pxrReserved__::TfErrorMark *, std::vector<unsigned long>, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 = **a1;
  }

  return a1;
}

uint64_t sub_29A0FEDE8(uint64_t a1)
{
  sub_29A0FEE24(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A0FEE24(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A0FEE70(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v13[0] = v8 + 2;
        v13[1] = v8 + 3;
        sub_29A0FEFB8(v13, (v4 + 2));
        v10 = *v8;
        v11 = bswap64(0x9E3779B97F4A7C55 * v8[2]);
        v8[1] = v11;
        v12 = sub_29A0FF00C(a1, v11, v8 + 2);
        sub_29A0FF16C(a1, v8, v12);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    sub_29A0FEE24(a1, v10);
  }

  if (v4 != a3)
  {
    sub_29A0FF4B0(a1, v4 + 2);
  }
}

void sub_29A0FEF88(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29A0FEE24(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_29A0FEFB8(uint64_t a1, uint64_t a2)
{
  **a1 = *a2;
  v3 = *(a1 + 8);
  if (v3 != (a2 + 8))
  {
    sub_29A00CB24(v3, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  }

  return a1;
}

void *sub_29A0FF00C(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_29A0FF254(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *sub_29A0FF16C(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_29A0FF254(uint64_t a1, size_t __n)
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

      sub_29A0FF344(a1, prime);
    }
  }
}

void sub_29A0FF344(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (a2 >> 61)
    {
      sub_29A00C8B8();
    }

    v4 = operator new(8 * a2);
    v5 = *a1;
    *a1 = v4;
    if (v5)
    {
      operator delete(v5);
    }

    v6 = 0;
    *(a1 + 8) = a2;
    do
    {
      *(*a1 + 8 * v6++) = 0;
    }

    while (a2 != v6);
    v7 = *(a1 + 16);
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

      *(*a1 + 8 * v8) = a1 + 16;
      for (i = *v7; *v7; i = *v7)
      {
        v12 = i[1];
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

        if (v12 == v8)
        {
          v7 = i;
        }

        else
        {
          v13 = *a1;
          v14 = i;
          if (*(*a1 + 8 * v12))
          {
            do
            {
              v15 = v14;
              v14 = *v14;
            }

            while (v14 && i[2] == v14[2]);
            *v7 = v14;
            *v15 = *v13[v12];
            *v13[v12] = i;
          }

          else
          {
            v13[v12] = v7;
            v7 = i;
            v8 = v12;
          }
        }
      }
    }
  }

  else
  {
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      operator delete(v10);
    }

    *(a1 + 8) = 0;
  }
}

void sub_29A0FF524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0FF604(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0FF548(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x30uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  v6[1] = 0;
  v6[2] = *a2;
  v6[4] = 0;
  v6[5] = 0;
  v6[3] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>();
}

void sub_29A0FF5E8(_Unwind_Exception *a1)
{
  *v2 = 0;
  sub_29A0FF604(v3, v1);
  _Unwind_Resume(a1);
}

void sub_29A0FF604(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void pxrInternal__aapl__pxrReserved__::TfErrorTransport::_PostImpl(pxrInternal__aapl__pxrReserved__::TfErrorTransport *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::_SpliceErrors(v2, this);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfBaseException::TfBaseException(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2A203FEF0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 72), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 88) = *(a2 + 2);
    *(a1 + 72) = v3;
  }

  return a1;
}

void sub_29A0FF740(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    v1[7].__vftable = v5;
    operator delete(v5);
  }

  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfBaseException::~TfBaseException(std::exception *this)
{
  this->__vftable = &unk_2A203FEF0;
  if (SHIBYTE(this[11].__vftable) < 0)
  {
    operator delete(this[9].__vftable);
  }

  v2 = this[6].__vftable;
  if (v2)
  {
    this[7].__vftable = v2;
    operator delete(v2);
  }

  std::exception::~exception(this);
}

{
  pxrInternal__aapl__pxrReserved__::TfBaseException::~TfBaseException(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfBaseException::_ThrowImpl(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), int a5)
{
  sub_29A008E78(__p, "TF_FATAL_THROW");
  v10 = pxrInternal__aapl__pxrReserved__::TfGetenvBool(__p, 0);
  v11 = v10;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
    if (!v11)
    {
      goto LABEL_9;
    }

LABEL_5:
    __p[0] = "tf/exception.cpp";
    __p[1] = "_ThrowImpl";
    v23 = 35;
    v24 = "static void pxrInternal__aapl__pxrReserved__::TfBaseException::_ThrowImpl(const TfCallContext &, TfBaseException &, TfFunctionRef<void ()>, int)";
    v25 = 0;
    v26 = 4;
    v12 = (*(*a2 + 16))(a2);
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(*(*a2 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL), v20);
    if (v21 >= 0)
    {
      v14 = v20;
    }

    else
    {
      v14 = v20[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "%s (%s thrown)", v13, v12, v14);
  }

  if (v10)
  {
    goto LABEL_5;
  }

LABEL_9:
  if (*a1)
  {
    v15 = *(a1 + 1) == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = a5;
  }

  else
  {
    v16 = a5 + 1;
  }

  pxrInternal__aapl__pxrReserved__::ArchGetStackFrames(0x40, v16 + 2, (a2 + 48));
  v17 = *a1;
  v18 = a1[1];
  *(a2 + 40) = *(a1 + 32);
  *(a2 + 24) = v18;
  *(a2 + 8) = v17;
  return a4(a3);
}

void sub_29A0FF98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfBaseException::what(pxrInternal__aapl__pxrReserved__::TfBaseException *this)
{
  result = this + 72;
  if (*(this + 95) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_ExpiryNotifier::Invoke(uint64_t this, const void *a2)
{
  if (pxrInternal__aapl__pxrReserved__::Tf_ExpiryNotifier::_func)
  {
    return pxrInternal__aapl__pxrReserved__::Tf_ExpiryNotifier::_func(this);
  }

  return this;
}

uint64_t (*pxrInternal__aapl__pxrReserved__::Tf_ExpiryNotifier::SetNotifier(uint64_t (*this)(void), void (*a2)(const void *), char *a3))(void)
{
  if (this && pxrInternal__aapl__pxrReserved__::Tf_ExpiryNotifier::_func)
  {
    v3[0] = "tf/expiryNotifier.cpp";
    v3[1] = "SetNotifier";
    v3[2] = 26;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::Tf_ExpiryNotifier::SetNotifier(void (*)(const void *))";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "cannot override already installed notification function", a3);
  }

  pxrInternal__aapl__pxrReserved__::Tf_ExpiryNotifier::_func = this;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_ExpiryNotifier::Invoke2(uint64_t this, const void *a2)
{
  if (pxrInternal__aapl__pxrReserved__::Tf_ExpiryNotifier::_func2)
  {
    return pxrInternal__aapl__pxrReserved__::Tf_ExpiryNotifier::_func2(this);
  }

  return this;
}

uint64_t (*pxrInternal__aapl__pxrReserved__::Tf_ExpiryNotifier::SetNotifier2(uint64_t (*this)(void), void (*a2)(const void *), char *a3))(void)
{
  if (this && pxrInternal__aapl__pxrReserved__::Tf_ExpiryNotifier::_func2)
  {
    v3[0] = "tf/expiryNotifier.cpp";
    v3[1] = "SetNotifier2";
    v3[2] = 40;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::Tf_ExpiryNotifier::SetNotifier2(void (*)(const void *))";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "cannot override already installed notification(2) function", a3);
  }

  pxrInternal__aapl__pxrReserved__::Tf_ExpiryNotifier::_func2 = this;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFastCompression::GetCompressedBufferSize(pxrInternal__aapl__pxrReserved__::TfFastCompression *this)
{
  if (this > 0x3E82000000)
  {
    return 0;
  }

  if (this <= 0x7E000000)
  {
    return (pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compressBound(this) + 1);
  }

  v2 = ((this >> 25) * 0x410410410410411uLL) >> 64;
  v3 = (this - 2113929216 * v2);
  v4 = (pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compressBound(0x7E000000) + 4) * v2;
  if (v3)
  {
    return v4 + pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compressBound(v3) + 5;
  }

  else
  {
    return v4 + 1;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFastCompression::CompressToBuffer(pxrInternal__aapl__pxrReserved__::TfFastCompression *this, char *a2, unint64_t a3)
{
  if (a3 > 0x3E82000000)
  {
    v14[0] = "tf/fastCompression.cpp";
    v14[1] = "CompressToBuffer";
    v14[2] = 55;
    v14[3] = "static size_t pxrInternal__aapl__pxrReserved__::TfFastCompression::CompressToBuffer(const char *, char *, size_t)";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v14, 1, "Attempted to compress a buffer of %zu bytes, more than the maximum supported %zu", a3, 0x3E82000000uLL);
    return 0;
  }

  if (a3 > 0x7E000000)
  {
    v9 = ((a3 >> 25) * 0x410410410410411uLL) >> 64;
    v10 = (a3 - 2113929216 * v9);
    if (v10)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = ((a3 >> 25) * 0x410410410410411uLL) >> 64;
    }

    *a2 = v11;
    v12 = a2 + 1;
    do
    {
      pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compressBound(0x7E000000);
      pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_default(this, v12 + 4, 0x7E000000);
      *v12 = v13;
      v12 += v13 + 4;
      this = (this + 2113929216);
      --v9;
    }

    while (v9);
    if (!v10)
    {
      return v12 - a2;
    }

    v7 = v12 + 4;
    pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compressBound(v10);
    pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_default(this, v12 + 4, v10);
    *v12 = v8;
  }

  else
  {
    *a2 = 0;
    v7 = a2 + 1;
    pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compressBound(a3);
    pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_default(this, a2 + 1, a3);
  }

  v12 = &v7[v8];
  return v12 - a2;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFastCompression::DecompressFromBuffer(pxrInternal__aapl__pxrReserved__::TfFastCompression *this, char *__dst, char *a3, unint64_t a4)
{
  v4 = 0;
  if (a3)
  {
    v5 = a4;
    if (a4)
    {
      v7 = __dst;
      v8 = this + 1;
      v9 = *this;
      if (*this)
      {
        v4 = 0;
        v10 = 1;
        while (1)
        {
          v11 = v10 + 4;
          if (v10 + 4 > a3)
          {
            v20 = "tf/fastCompression.cpp";
            v21 = "DecompressFromBuffer";
            v22 = 126;
            v23 = "static size_t pxrInternal__aapl__pxrReserved__::TfFastCompression::DecompressFromBuffer(const char *, char *, size_t, size_t)";
            v24 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v20, 3, "Failed to decompress data. Couldn't read chunk size.");
            return 0;
          }

          v14 = *v8;
          v12 = (v8 + 4);
          v13 = v14;
          if ((v14 & 0x80000000) != 0)
          {
            break;
          }

          v10 = &v13[v11];
          if (&v13[v11] > a3)
          {
            v20 = "tf/fastCompression.cpp";
            v21 = "DecompressFromBuffer";
            v22 = 140;
            v23 = "static size_t pxrInternal__aapl__pxrReserved__::TfFastCompression::DecompressFromBuffer(const char *, char *, size_t, size_t)";
            v24 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v20, 3, "Failed to decompress data. Chunk too large.");
            return 0;
          }

          if (v5 >= 0x7E000000)
          {
            v15 = 2113929216;
          }

          else
          {
            v15 = v5;
          }

          v16 = pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_safe(v12, v7, v13, v15);
          if ((v16 & 0x80000000) != 0)
          {
            v20 = "tf/fastCompression.cpp";
            v21 = "DecompressFromBuffer";
            v18 = 148;
            goto LABEL_20;
          }

          v8 = &v13[v12];
          v7 += v16;
          v5 -= v16;
          v4 += v16;
          if (!--v9)
          {
            return v4;
          }
        }

        sub_29B28D7B4();
        return 0;
      }

      v17 = pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_safe((this + 1), __dst, (a3 - 1), a4);
      if ((v17 & 0x80000000) != 0)
      {
        v20 = "tf/fastCompression.cpp";
        v21 = "DecompressFromBuffer";
        v18 = 114;
LABEL_20:
        v22 = v18;
        v23 = "static size_t pxrInternal__aapl__pxrReserved__::TfFastCompression::DecompressFromBuffer(const char *, char *, size_t, size_t)";
        v24 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v20, 3, "Failed to decompress data, possibly corrupt? LZ4 error code: %d");
        return 0;
      }

      return v17;
    }
  }

  return v4;
}

BOOL pxrInternal__aapl__pxrReserved__::TfPathExists(const char *a1, int a2)
{
  v2 = sub_29A0FFF18(a1, a2, 0);
  if (!v2 && *__error() == 2)
  {
    *__error() = 0;
  }

  return v2;
}

BOOL sub_29A0FFF18(const char *a1, int a2, stat *a3)
{
  v3 = *(a1 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 1);
  }

  if (!v3)
  {
    return 0;
  }

  v5 = &v8;
  if (a3)
  {
    v5 = a3;
  }

  if (v4 < 0)
  {
    a1 = *a1;
  }

  if (a2)
  {
    v6 = stat(a1, v5);
  }

  else
  {
    v6 = lstat(a1, v5);
  }

  return v6 == 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfIsDir(const char *a1, int a2)
{
  LODWORD(result) = sub_29A0FFF18(a1, a2, &v3);
  if ((v3.st_mode & 0xF000) == 0x4000)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfIsFile(const char *a1, int a2)
{
  LODWORD(result) = sub_29A0FFF18(a1, a2, &v3);
  if ((v3.st_mode & 0xF000) == 0x8000)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

BOOL pxrInternal__aapl__pxrReserved__::TfIsLink(const char *a1)
{
  v1 = *(a1 + 23);
  v2 = v1;
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 1);
  }

  if (!v1)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  return !lstat(a1, &v5) && (v5.st_mode & 0xF000) == 40960;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfIsWritable(const char *a1)
{
  v1 = *(a1 + 23);
  v2 = v1;
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 1);
  }

  if (!v1)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v5))
  {
    return 0;
  }

  else
  {
    return pxrInternal__aapl__pxrReserved__::ArchStatIsWritable(&v5, v3);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfIsDirEmpty(const char *a1)
{
  v2 = *(a1 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 1);
  }

  if (!v2)
  {
    return 0;
  }

  v4 = a1;
  if (v3 < 0)
  {
    a1 = *a1;
  }

  v5 = lstat(a1, &v10);
  result = 0;
  if (!v5 && (v10.st_mode & 0xF000) == 0x4000)
  {
    if (v4[23] >= 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = *v4;
    }

    v8 = opendir(v7);
    if (v8)
    {
      while (1)
      {
        v9 = readdir(v8);
        if (!v9)
        {
          break;
        }

        if (v9->d_ino && (v9->d_name[0] != 46 || v9->d_name[1] && (v9->d_name[1] != 46 || v9->d_name[2])))
        {
          v1 = 0;
          goto LABEL_21;
        }
      }

      v1 = 1;
LABEL_21:
      closedir(v8);
    }

    return (v8 != 0) & v1;
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::TfSymlink(const char *a1, const char *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  return symlink(a1, a2) != -1;
}

BOOL pxrInternal__aapl__pxrReserved__::TfDeleteFile(const char *a1)
{
  v1 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v2 = unlink(a1);
  if (v2)
  {
    v8[0] = "tf/fileUtils.cpp";
    v8[1] = "TfDeleteFile";
    v8[2] = 288;
    v8[3] = "BOOL pxrInternal__aapl__pxrReserved__::TfDeleteFile(const std::string &)";
    v9 = 0;
    if (v1[23] < 0)
    {
      v1 = *v1;
    }

    v3 = __error();
    pxrInternal__aapl__pxrReserved__::ArchStrerror(*v3, __p);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 3, "Failed to delete '%s': %s", v1, v4);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v2 == 0;
}

void sub_29A1002D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::TfMakeDir(const char *a1, int a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (a2 == -1)
  {
    v2 = 511;
  }

  else
  {
    v2 = a2;
  }

  return mkdir(a1, v2) != -1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfMakeDirs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  if (!v3)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::TfNormPath(__p, a1, 0);
  v6 = sub_29A1003C8(__p, a2, a3);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_29A1003AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1003C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2A153EF98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EF98))
  {
    sub_29A008E78(&qword_2A153EF80, "/");
    __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A153EF80, &dword_299FE7000);
    __cxa_guard_release(&qword_2A153EF98);
  }

  pxrInternal__aapl__pxrReserved__::TfGetPathName(a1, &__p);
  if (byte_2A153EF97 >= 0)
  {
    v6 = &qword_2A153EF80;
  }

  else
  {
    v6 = qword_2A153EF80;
  }

  pxrInternal__aapl__pxrReserved__::TfStringTrimRight(v6, &__p, &__str);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  pxrInternal__aapl__pxrReserved__::TfGetBaseName(a1, &v21);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v8 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v21.__r_.__value_.__l.__size_;
    }

    if (v8 && !pxrInternal__aapl__pxrReserved__::TfPathExists(&__str, 0))
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v9 = __str.__r_.__value_.__l.__size_;
      }

      v10 = *(a1 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(a1 + 8);
      }

      if (v9 != v10 || ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), v11 >= 0 ? (v13 = a1) : (v13 = *a1), memcmp(p_str, v13, v9)))
      {
        if ((sub_29A1003C8(&__str, a2, a3) & 1) == 0 && *__error() != 17)
        {
          goto LABEL_47;
        }
      }
    }
  }

  if (*(a1 + 23) >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  if (a2 == -1)
  {
    v15 = 511;
  }

  else
  {
    v15 = a2;
  }

  if (mkdir(v14, v15) != -1)
  {
    goto LABEL_36;
  }

  if (!a3)
  {
    goto LABEL_47;
  }

  v17 = *(a1 + 23);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a1 + 8);
  }

  if (v17)
  {
    if (v18 >= 0)
    {
      v19 = a1;
    }

    else
    {
      v19 = *a1;
    }

    v16 = 0;
    if (!lstat(v19, &__p) && (__p.st_mode & 0xF000) == 0x4000)
    {
LABEL_36:
      v16 = 1;
    }
  }

  else
  {
LABEL_47:
    v16 = 0;
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v16;
}

BOOL pxrInternal__aapl__pxrReserved__::TfReadDir(const char *a1, const void **a2, const void **a3, const void **a4, uint64_t a5)
{
  v26 = *MEMORY[0x29EDCA608];
  v24 = 0;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v9 = opendir(a1);
  v10 = v9;
  if (v9)
  {
    v11 = readdir_r(v9, &v25, &v24);
    if (v24 && !v11)
    {
      do
      {
        if (*v25.d_name != 46)
        {
          if (*v25.d_name ^ 0x2E2E | v25.d_name[2])
          {
            v12 = dirfd(v10);
            if (!fstatat(v12, v25.d_name, &v21, 32))
            {
              v15 = v21.st_mode & 0xF000;
              if (v15 == 40960)
              {
                if (a4)
                {
                  sub_29A008E78(__p, v25.d_name);
                  sub_29A091654(a4, __p);
                  goto LABEL_22;
                }
              }

              else if (v15 == 0x4000)
              {
                if (a2)
                {
                  sub_29A008E78(__p, v25.d_name);
                  sub_29A091654(a2, __p);
                  goto LABEL_22;
                }
              }

              else if (a3)
              {
                sub_29A008E78(__p, v25.d_name);
                sub_29A091654(a3, __p);
LABEL_22:
                if (v23 < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }
          }
        }

        v13 = readdir_r(v10, &v25, &v24);
        if (v24)
        {
          v14 = v13 == 0;
        }

        else
        {
          v14 = 0;
        }
      }

      while (v14);
    }

    closedir(v10);
  }

  else if (a5)
  {
    v17 = __error();
    pxrInternal__aapl__pxrReserved__::ArchStrerror(*v17, __p);
    if (v23 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("opendir failed: %s", v18, v19, v20);
    if (*(a5 + 23) < 0)
    {
      operator delete(*a5);
    }

    *a5 = *&v21.st_dev;
    *(a5 + 16) = *&v21.st_uid;
    HIBYTE(v21.st_gid) = 0;
    LOBYTE(v21.st_dev) = 0;
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v10 != 0;
}

void sub_29A10089C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfWalkDirs(const char *a1, const char *a2, char *a3, uint64_t a4, unsigned int a5)
{
  v6 = a1;
  v7 = *(a1 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 1);
  }

  if (!v7)
  {
    goto LABEL_22;
  }

  if (v8 < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &v16) && (v16.st_mode & 0xF000) == 0x4000)
  {
    memset(&v16, 0, 32);
    LODWORD(v16.st_atimespec.tv_sec) = 1065353216;
    pxrInternal__aapl__pxrReserved__::TfNormPath(__p, v6, 0);
    sub_29A100A64(__p, a2, a3, a4, a5, &v16);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A0EB570(&v16);
  }

  else
  {
LABEL_22:
    if (*(a4 + 24))
    {
      if (*(v6 + 23) >= 0)
      {
        v12 = v6;
      }

      else
      {
        v12 = *v6;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s is not a directory", a2, a3, v12);
      v13 = *(a4 + 24);
      if (!v13)
      {
        sub_29A0DDCB0();
      }

      (*(*v13 + 48))(v13, v6, &v16);
      if (SHIBYTE(v16.st_gid) < 0)
      {
        operator delete(*&v16.st_dev);
      }
    }
  }
}

void sub_29A100A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29A0EB570(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_29A100A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, void *a6)
{
  if (!a6 && (sub_29B28D80C(v55) & 1) == 0)
  {
    return 0;
  }

  v52 = 0;
  v53 = 0;
  v54 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  memset(&__p, 0, 24);
  if (!pxrInternal__aapl__pxrReserved__::TfReadDir(a1, &v52, &v49, &v46, &__p))
  {
    v10 = *(a4 + 24);
    if (v10)
    {
      (*(*v10 + 48))(v10, a1, &__p);
    }
  }

  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v38 = a2;
  if (a5)
  {
    v11 = v46;
    v12 = v47;
    while (v11 != v12)
    {
      if (*(a1 + 23) >= 0)
      {
        v13 = *(a1 + 23);
      }

      else
      {
        v13 = *(a1 + 8);
      }

      sub_29A022DE0(&v41, v13 + 1);
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v41;
      }

      else
      {
        v14 = v41.__r_.__value_.__r.__words[0];
      }

      if (v13)
      {
        if (*(a1 + 23) >= 0)
        {
          v15 = a1;
        }

        else
        {
          v15 = *a1;
        }

        memmove(v14, v15, v13);
      }

      *(&v14->__r_.__value_.__l.__data_ + v13) = 47;
      v16 = SHIBYTE(v11->__r_.__value_.__r.__words[2]);
      if (v16 >= 0)
      {
        v17 = v11;
      }

      else
      {
        v17 = v11->__r_.__value_.__r.__words[0];
      }

      if (v16 >= 0)
      {
        size = HIBYTE(v11->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v11->__r_.__value_.__l.__size_;
      }

      v19 = std::string::append(&v41, v17, size);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v43 = v19->__r_.__value_.__r.__words[2];
      *v42 = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (v43 >= 0)
      {
        v21 = v42;
      }

      else
      {
        v21 = v42[0];
      }

      sub_29A008E78(&v44, v21);
      v22 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v44.__r_.__value_.__l.__size_;
      }

      if (v22)
      {
        if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v44;
        }

        else
        {
          v23 = v44.__r_.__value_.__r.__words[0];
        }

        v24 = stat(v23, &__p) == 0;
        if ((*(&v44.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v24 = 0;
        if ((*(&v44.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_37;
        }
      }

      operator delete(v44.__r_.__value_.__l.__data_);
LABEL_37:
      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42[0]);
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
        if (!v24)
        {
          goto LABEL_48;
        }
      }

      else if (!v24)
      {
        goto LABEL_48;
      }

      if ((__p.st_mode & 0xF000) != 0x4000)
      {
LABEL_48:
        sub_29A070BA0(&v49);
      }

      LODWORD(v44.__r_.__value_.__l.__data_) = __p.st_dev;
      v44.__r_.__value_.__l.__size_ = __p.st_ino;
      if (!sub_29A10195C(a6, &v44))
      {
        sub_29A101A48(a6, &v44, &v44);
        sub_29A070BA0(&v52);
      }

      ++v11;
    }
  }

  else
  {
    sub_29AA8AFE4(&v49, v50, v46, v47, 0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 3));
  }

  if (a3 && !sub_29A101908(a2, a1, &v52))
  {
    goto LABEL_81;
  }

  v25 = v52;
  for (i = v53; v25 != i; v25 += 24)
  {
    if (*(a1 + 23) >= 0)
    {
      v27 = *(a1 + 23);
    }

    else
    {
      v27 = *(a1 + 8);
    }

    sub_29A022DE0(&v44, v27 + 1);
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v44;
    }

    else
    {
      v28 = v44.__r_.__value_.__r.__words[0];
    }

    if (v27)
    {
      if (*(a1 + 23) >= 0)
      {
        v29 = a1;
      }

      else
      {
        v29 = *a1;
      }

      memmove(v28, v29, v27);
    }

    *(&v28->__r_.__value_.__l.__data_ + v27) = 47;
    v30 = v25[23];
    if (v30 >= 0)
    {
      v31 = v25;
    }

    else
    {
      v31 = *v25;
    }

    if (v30 >= 0)
    {
      v32 = v25[23];
    }

    else
    {
      v32 = *(v25 + 1);
    }

    v33 = std::string::append(&v44, v31, v32);
    v34 = *&v33->__r_.__value_.__l.__data_;
    *&__p.st_uid = *(&v33->__r_.__value_.__l + 2);
    *&__p.st_dev = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    v35 = sub_29A100A64(&__p, v38, a3, a4, a5, a6);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if ((v35 & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  if ((a3 & 1) == 0 && !sub_29A101908(v38, a1, &v52))
  {
LABEL_81:
    v36 = 0;
    goto LABEL_82;
  }

  v36 = 1;
LABEL_82:
  *&__p.st_dev = &v46;
  sub_29A012C90(&__p);
  *&__p.st_dev = &v49;
  sub_29A012C90(&__p);
  *&__p.st_dev = &v52;
  sub_29A012C90(&__p);
  return v36;
}

void sub_29A100EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  __p = (v35 - 208);
  sub_29A012C90(&__p);
  __p = (v35 - 184);
  sub_29A012C90(&__p);
  __p = (v35 - 160);
  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfRmTree(const char *a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v6[4] = sub_29A1010F8;
  sub_29A101DF4(v7, a2);
  v9 = 0;
  v4 = operator new(0x30uLL);
  *v4 = &unk_2A203FFE0;
  v4[1] = sub_29A1010F8;
  sub_29A102058((v4 + 2), v7);
  v9 = v4;
  if (*(a2 + 24))
  {
    sub_29A101DF4(v6, a2);
  }

  else
  {
    v6[0] = &unk_2A203FF30;
    v6[1] = sub_29A101430;
    v6[3] = v6;
  }

  pxrInternal__aapl__pxrReserved__::TfWalkDirs(a1, v8, 0, v6, 0);
  sub_29A101C9C(v6);
  sub_29A10218C(v8);
  return sub_29A101C9C(v7);
}

void sub_29A1010BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_29A10218C(va);
  sub_29A101C9C(v10 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1010F8(const void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  for (i = *a3; i != a3[1]; i += 24)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = *(a1 + 23);
    }

    else
    {
      v8 = a1[1];
    }

    sub_29A022DE0(&v33, v8 + 1);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v33;
    }

    else
    {
      v9 = v33.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if (*(a1 + 23) >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      memmove(v9, v10, v8);
    }

    *(&v9->__r_.__value_.__l.__data_ + v8) = 47;
    v11 = *(i + 23);
    if (v11 >= 0)
    {
      v12 = i;
    }

    else
    {
      v12 = *i;
    }

    if (v11 >= 0)
    {
      v13 = *(i + 23);
    }

    else
    {
      v13 = *(i + 8);
    }

    v14 = std::string::append(&v33, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v35 = v14->__r_.__value_.__r.__words[2];
    *v34 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (v35 >= 0)
    {
      v16 = v34;
    }

    else
    {
      v16 = v34[0];
    }

    if (unlink(v16) && *(a4 + 24))
    {
      if (v35 >= 0)
      {
        v17 = v34;
      }

      else
      {
        v17 = v34[0];
      }

      v18 = __error();
      pxrInternal__aapl__pxrReserved__::ArchStrerror(*v18, __p);
      v21 = __p;
      if (v32 < 0)
      {
        v21 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("ArchUnlinkFile failed for '%s': %s", v19, v20, v17, v21);
      v22 = *(a4 + 24);
      if (!v22)
      {
        sub_29A0DDCB0();
      }

      (*(*v22 + 48))(v22, a1, &v33);
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (v32 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }
  }

  if (*(a1 + 23) >= 0)
  {
    v23 = a1;
  }

  else
  {
    v23 = *a1;
  }

  if (rmdir(v23) && *(a4 + 24))
  {
    if (*(a1 + 23) >= 0)
    {
      v24 = a1;
    }

    else
    {
      v24 = *a1;
    }

    v25 = __error();
    pxrInternal__aapl__pxrReserved__::ArchStrerror(*v25, &v33);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v33;
    }

    else
    {
      v28 = v33.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("rmdir failed for '%s': %s", v26, v27, v24, v28);
    v29 = *(a4 + 24);
    if (!v29)
    {
      sub_29A0DDCB0();
    }

    (*(*v29 + 48))(v29, a1, v34);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }
  }

  return 1;
}

void sub_29A1013B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A101430(uint64_t a1, uint64_t a2)
{
  v4[0] = "tf/fileUtils.cpp";
  v4[1] = "Tf_RmTreeRaiseErrors";
  v4[2] = 624;
  v4[3] = "void pxrInternal__aapl__pxrReserved__::Tf_RmTreeRaiseErrors(const string &, const string &)";
  v5 = 0;
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 3, "failed to remove '%s': %s", v2, v3);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfListDir@<X0>(const char *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = operator new(0x20uLL);
  *v6 = &unk_2A2040088;
  v6[1] = sub_29A1015B4;
  v6[2] = a3;
  *(v6 + 24) = a2;
  v11 = v6;
  v9 = 0;
  pxrInternal__aapl__pxrReserved__::TfWalkDirs(a1, v10, 1, v8, 0);
  sub_29A101C9C(v8);
  return sub_29A10218C(v10);
}

void sub_29A101584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A101C9C(&a10);
  sub_29A10218C(&a14);
  sub_29A012C90(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1015B4(const void **a1, uint64_t *a2, uint64_t *a3, const void **a4, unsigned int a5)
{
  for (i = *a2; i != a2[1]; i += 24)
  {
    if (*(a1 + 23) >= 0)
    {
      v10 = *(a1 + 23);
    }

    else
    {
      v10 = a1[1];
    }

    sub_29A022DE0(&v31, v10 + 1);
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v31;
    }

    else
    {
      v11 = v31.__r_.__value_.__r.__words[0];
    }

    if (v10)
    {
      if (*(a1 + 23) >= 0)
      {
        v12 = a1;
      }

      else
      {
        v12 = *a1;
      }

      memmove(v11, v12, v10);
    }

    *(&v11->__r_.__value_.__l.__data_ + v10) = 47;
    v13 = *(i + 23);
    if (v13 >= 0)
    {
      v14 = i;
    }

    else
    {
      v14 = *i;
    }

    if (v13 >= 0)
    {
      v15 = *(i + 23);
    }

    else
    {
      v15 = *(i + 8);
    }

    v16 = std::string::append(&v31, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v32, "/");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v34 = v18->__r_.__value_.__r.__words[2];
    *__p = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    sub_29A091654(a4, __p);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  for (j = *a3; j != a3[1]; j += 24)
  {
    if (*(a1 + 23) >= 0)
    {
      v21 = *(a1 + 23);
    }

    else
    {
      v21 = a1[1];
    }

    sub_29A022DE0(&v32, v21 + 1);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v32;
    }

    else
    {
      v22 = v32.__r_.__value_.__r.__words[0];
    }

    if (v21)
    {
      if (*(a1 + 23) >= 0)
      {
        v23 = a1;
      }

      else
      {
        v23 = *a1;
      }

      memmove(v22, v23, v21);
    }

    *(&v22->__r_.__value_.__l.__data_ + v21) = 47;
    v24 = *(j + 23);
    if (v24 >= 0)
    {
      v25 = j;
    }

    else
    {
      v25 = *j;
    }

    if (v24 >= 0)
    {
      v26 = *(j + 23);
    }

    else
    {
      v26 = *(j + 8);
    }

    v27 = std::string::append(&v32, v25, v26);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v34 = v27->__r_.__value_.__r.__words[2];
    *__p = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    sub_29A091654(a4, __p);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  return a5;
}

void sub_29A10180C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::TfTouchFile(const char *a1, int a2)
{
  v2 = a1;
  if (a2)
  {
    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    v3 = open(a1, 131589, 438);
    if (v3 == -1)
    {
      return 0;
    }

    close(v3);
  }

  if (v2[23] >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  return utimes(v4, 0) == 0;
}

uint64_t sub_29A101908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_29A0DDCB0();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t *sub_29A10195C(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * (v4 + ((v4 + v3 + (v4 + v3) * (v4 + v3)) >> 1))));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (*(result + 4) == v3 && result[3] == v4)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_29A101A48(uint64_t a1, int *a2, _OWORD *a3)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * (v7 + ((v7 + v6 + (v7 + v6) * (v7 + v6)) >> 1))));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v3 = v8;
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }
    }

    else
    {
      v3 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        do
        {
          v13 = v12[1];
          if (v13 == v8)
          {
            if (*(v12 + 4) == v6 && v12[3] == v7)
            {
              return v12;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v13 >= v9)
              {
                v13 %= v9;
              }
            }

            else
            {
              v13 &= v9 - 1;
            }

            if (v13 != v3)
            {
              break;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  v12 = operator new(0x20uLL);
  *v12 = 0;
  v12[1] = v8;
  *(v12 + 1) = *a3;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    *v12 = *v22;
LABEL_42:
    *v22 = v12;
    goto LABEL_43;
  }

  *v12 = *(a1 + 16);
  *(a1 + 16) = v12;
  *(v21 + 8 * v3) = a1 + 16;
  if (*v12)
  {
    v23 = *(*v12 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v23 >= v9)
      {
        v23 %= v9;
      }
    }

    else
    {
      v23 &= v9 - 1;
    }

    v22 = (*a1 + 8 * v23);
    goto LABEL_42;
  }

LABEL_43:
  ++*(a1 + 24);
  return v12;
}

uint64_t sub_29A101C9C(uint64_t a1)
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

void *sub_29A101D24(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A203FF30;
  result[1] = v3;
  return result;
}

uint64_t sub_29A101D6C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A203FF30;
  a2[1] = v2;
  return result;
}

uint64_t sub_29A101DA8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203FFB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A101DF4(uint64_t a1, uint64_t a2)
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

void *sub_29A101E8C(void *a1)
{
  *a1 = &unk_2A203FFE0;
  sub_29A101C9C((a1 + 2));
  return a1;
}

void sub_29A101ED0(void *a1)
{
  *a1 = &unk_2A203FFE0;
  sub_29A101C9C((a1 + 2));

  operator delete(a1);
}

void *sub_29A101F24(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_2A203FFE0;
  v2[1] = v3;
  sub_29A101DF4((v2 + 2), a1 + 16);
  return v2;
}

uint64_t sub_29A101F90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2A203FFE0;
  a2[1] = v2;
  return sub_29A101DF4((a2 + 2), a1 + 16);
}

void sub_29A101FC8(void *a1)
{
  sub_29A101C9C(a1 + 16);

  operator delete(a1);
}

uint64_t sub_29A10200C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2040060))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A102058(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_29A1020D8(uint64_t (**a1)(uint64_t, uint64_t, uint64_t, _BYTE *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v11 = *MEMORY[0x29EDCA608];
  v6 = *a1;
  v7 = *a3;
  sub_29A101DF4(v10, (a1 + 1));
  v8 = v6(a2, v7, a4, v10);
  sub_29A101C9C(v10);
  return v8;
}

void sub_29A102170(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A101C9C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A10218C(uint64_t a1)
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

__n128 sub_29A102214(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A2040088;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 sub_29A102268(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2040088;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A1022C0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20400F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::TfGetenv(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::ArchGetEnv(a1, __p);
  v5 = HIBYTE(v8);
  v6 = HIBYTE(v8);
  if (v8 < 0)
  {
    v5 = __p[1];
  }

  if (v5)
  {
    *a3 = *__p;
    *(a3 + 16) = v8;
    return;
  }

  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
    if ((v6 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  sub_29A008D14(a3, *a2, *(a2 + 8));
  if (v8 < 0)
  {
LABEL_7:
    operator delete(__p[0]);
  }
}

void sub_29A1023A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfGetenvInt(const char *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::ArchGetEnv(a1, &__str);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v4 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    a2 = std::stoi(&__str, 0, 10);
    v4 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  if (v4 < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return a2;
}

void sub_29A102434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::TfGetenvBool(const char *a1, _BOOL8 a2)
{
  pxrInternal__aapl__pxrReserved__::ArchGetEnv(a1, &__p);
  v3 = v11;
  if ((v11 & 0x8000000000000000) != 0)
  {
    v3 = v10;
    if (!v10)
    {
      goto LABEL_38;
    }

    p_p = __p;
  }

  else
  {
    if (!v11)
    {
      return a2;
    }

    p_p = &__p;
  }

  do
  {
    *p_p = __tolower(*p_p);
    ++p_p;
    --v3;
  }

  while (v3);
  if (v11 < 0)
  {
    if (v10 == 4 && *__p == 1702195828 || v10 == 3 && (*__p == 25977 ? (v5 = *(__p + 2) == 115) : (v5 = 0), v5) || v10 == 2 && *__p == 28271)
    {
      a2 = 1;
      if ((v11 & 0x80) == 0)
      {
        return a2;
      }

LABEL_38:
      operator delete(__p);
      return a2;
    }

    if (v10 != 1)
    {
      a2 = 0;
      goto LABEL_38;
    }

    v6 = __p;
LABEL_30:
    a2 = *v6 == 49;
    if ((v11 & 0x80) == 0)
    {
      return a2;
    }

    goto LABEL_38;
  }

  a2 = 0;
  if (v11 > 2u)
  {
    if (v11 == 3)
    {
      if (__p == 25977 && BYTE2(__p) == 115)
      {
        return 1;
      }
    }

    else
    {
      if (v11 != 4)
      {
        return a2;
      }

      if (__p == 1702195828)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v11 == 1)
  {
    v6 = &__p;
    goto LABEL_30;
  }

  if (v11 == 2)
  {
    return __p == 28271;
  }

  return a2;
}