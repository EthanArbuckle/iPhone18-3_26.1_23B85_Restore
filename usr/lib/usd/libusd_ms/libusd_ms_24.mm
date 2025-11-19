unint64_t **sub_29A11AB9C(unint64_t **result, unint64_t **a2, unint64_t **a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = **a2;
  v7 = **result;
  if (v7 == v6)
  {
    goto LABEL_14;
  }

  v8 = *a4;
  if (*a4 == v6)
  {
    goto LABEL_7;
  }

  if (v8 == v7)
  {
    goto LABEL_14;
  }

  v9 = v7 != 0;
  v10 = v6 < v7;
  if (!v6)
  {
    v10 = v9;
  }

  if (!v10)
  {
LABEL_14:
    v14 = **a3;
    if (v6 != v14)
    {
      if (*a4 == v14)
      {
        goto LABEL_20;
      }

      if (*a4 != v6)
      {
        v15 = v6 != 0;
        v16 = v14 < v6;
        if (!v14)
        {
          v16 = v15;
        }

        if (v16)
        {
LABEL_20:
          *a2 = *a3;
          *a3 = v4;
          v17 = *result;
          v18 = **a2;
          v19 = **result;
          if (v19 != v18)
          {
            if (*a4 == v18 || *a4 != v19 && ((v20 = v19 != 0, v21 = v18 < v19, v18) ? (v22 = v21) : (v22 = v20), v22))
            {
              *result = *a2;
              *a2 = v17;
            }
          }
        }
      }
    }
  }

  else
  {
LABEL_7:
    v11 = **a3;
    if (v6 != v11)
    {
      if (v8 == v11)
      {
        goto LABEL_13;
      }

      if (v8 != v6)
      {
        v12 = v6 != 0;
        v13 = v11 < v6;
        if (!v11)
        {
          v13 = v12;
        }

        if (v13)
        {
LABEL_13:
          *result = *a3;
LABEL_36:
          *a3 = v5;
          return result;
        }
      }
    }

    *result = v4;
    *a2 = v5;
    v23 = **a3;
    v24 = *v5;
    if (*v5 != v23)
    {
      if (*a4 == v23 || *a4 != v24 && ((v25 = v24 != 0, v26 = v23 < v24, v23) ? (v27 = v26) : (v27 = v25), v27))
      {
        *a2 = *a3;
        goto LABEL_36;
      }
    }
  }

  return result;
}

unint64_t **sub_29A11AD2C(unint64_t **a1, unint64_t **a2, unint64_t **a3, unint64_t **a4, unint64_t **a5, uint64_t *a6)
{
  result = sub_29A11AB9C(a1, a2, a3, a6);
  v13 = *a3;
  v14 = **a4;
  v15 = **a3;
  if (v15 != v14)
  {
    if (*a6 == v14 || *a6 != v15 && ((v16 = v15 != 0, v17 = v14 < v15, v14) ? (v18 = v17) : (v18 = v16), v18))
    {
      *a3 = *a4;
      *a4 = v13;
      v19 = *a2;
      v20 = **a3;
      v21 = **a2;
      if (v21 != v20)
      {
        if (*a6 == v20 || *a6 != v21 && ((v22 = v21 != 0, v23 = v20 < v21, v20) ? (v24 = v23) : (v24 = v22), v24))
        {
          *a2 = *a3;
          *a3 = v19;
          v25 = *a1;
          v26 = **a2;
          v27 = **a1;
          if (v27 != v26)
          {
            if (*a6 == v26 || *a6 != v27 && ((v28 = v27 != 0, v29 = v26 < v27, v26) ? (v30 = v29) : (v30 = v28), v30))
            {
              *a1 = *a2;
              *a2 = v25;
            }
          }
        }
      }
    }
  }

  v31 = *a4;
  v32 = **a5;
  v33 = **a4;
  if (v33 != v32)
  {
    if (*a6 == v32 || *a6 != v33 && ((v34 = v33 != 0, v35 = v32 < v33, v32) ? (v36 = v35) : (v36 = v34), v36))
    {
      *a4 = *a5;
      *a5 = v31;
      v37 = *a3;
      v38 = **a4;
      v39 = **a3;
      if (v39 != v38)
      {
        if (*a6 == v38 || *a6 != v39 && ((v40 = v39 != 0, v41 = v38 < v39, v38) ? (v42 = v41) : (v42 = v40), v42))
        {
          *a3 = *a4;
          *a4 = v37;
          v43 = *a2;
          v44 = **a3;
          v45 = **a2;
          if (v45 != v44)
          {
            if (*a6 == v44 || *a6 != v45 && ((v46 = v45 != 0, v47 = v44 < v45, v44) ? (v48 = v47) : (v48 = v46), v48))
            {
              *a2 = *a3;
              *a3 = v43;
              v49 = *a1;
              v50 = **a2;
              v51 = **a1;
              if (v51 != v50)
              {
                if (*a6 == v50 || *a6 != v51 && ((v52 = v51 != 0, v53 = v50 < v51, v50) ? (v54 = v53) : (v54 = v52), v54))
                {
                  *a1 = *a2;
                  *a2 = v49;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_29A11AFC4(unint64_t **a1, unint64_t **a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_29A11AB9C(a1, a1 + 1, a2 - 1, a3);
        break;
      case 4:
        sub_29A11AB9C(a1, a1 + 1, a1 + 2, a3);
        v33 = *(a2 - 1);
        v34 = a1[2];
        v35 = *v33;
        v36 = *v34;
        if (*v34 != *v33)
        {
          if (*a3 == v35 || *a3 != v36 && ((v37 = v36 != 0, v38 = v35 < v36, v35) ? (v39 = v38) : (v39 = v37), v39))
          {
            a1[2] = v33;
            *(a2 - 1) = v34;
            v41 = a1[1];
            v40 = a1[2];
            v42 = *v40;
            v43 = *v41;
            if (*v41 != *v40)
            {
              if (*a3 == v42 || *a3 != v43 && ((v44 = v43 != 0, v45 = v42 < v43, v42) ? (v46 = v45) : (v46 = v44), v46))
              {
                a1[1] = v40;
                a1[2] = v41;
                v47 = *a1;
                v48 = *v40;
                v49 = **a1;
                if (v49 != *v40)
                {
                  if (*a3 == v48 || *a3 != v49 && ((v50 = v49 != 0, v51 = v48 < v49, v48) ? (v52 = v51) : (v52 = v50), v52))
                  {
                    *a1 = v40;
                    a1[1] = v47;
                  }
                }
              }
            }
          }
        }

        return 1;
      case 5:
        sub_29A11AD2C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        break;
      default:
        goto LABEL_17;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    v9 = *v7;
    v10 = **a1;
    if (v10 != *v7)
    {
      if (*a3 == v9 || *a3 != v10 && ((v11 = v10 != 0, v12 = v9 < v10, v9) ? (v13 = v12) : (v13 = v11), v13))
      {
        *a1 = v7;
        *(a2 - 1) = v8;
      }
    }

    return 1;
  }

LABEL_17:
  v14 = a1 + 2;
  sub_29A11AB9C(a1, a1 + 1, a1 + 2, a3);
  v15 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = *v15;
    v19 = **v15;
    v20 = **v14;
    if (v20 != v19)
    {
      if (*a3 == v19 || *a3 != v20 && ((v21 = v20 != 0, v22 = v19 < v20, v19) ? (v23 = v22) : (v23 = v21), v23))
      {
        *v15 = *v14;
        v24 = v16;
        while (1)
        {
          v25 = a1 + v24;
          v26 = *(a1 + v24 + 8);
          v27 = *v18;
          v28 = *v26;
          if (*v26 == *v18)
          {
            break;
          }

          if (*a3 != v27)
          {
            if (*a3 == v28)
            {
              break;
            }

            v29 = v28 != 0;
            v30 = v27 < v28;
            if (!(v27 ? v30 : v29))
            {
              break;
            }
          }

          *(v25 + 2) = v26;
          v24 -= 8;
          if (v24 == -16)
          {
            v32 = a1;
            goto LABEL_37;
          }
        }

        v32 = (v25 + 16);
LABEL_37:
        *v32 = v18;
        if (++v17 == 8)
        {
          return v15 + 1 == a2;
        }
      }
    }

    v14 = v15;
    v16 += 8;
    if (++v15 == a2)
    {
      return 1;
    }
  }
}

void sub_29A11B2E0(uint64_t a1, void *a2)
{

  _tlv_atexit(sub_29A1199AC, a2);
}

BOOL pxrInternal__aapl__pxrReserved__::TfSetenv(char *a1, char *a2)
{
  v3 = a1;
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  sub_29A008E78(v10, v4);
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  sub_29A008E78(__p, v5);
  v6 = pxrInternal__aapl__pxrReserved__::ArchSetEnv(v10, __p, 1);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
    if (v6)
    {
      return v6;
    }
  }

  else if (v6)
  {
    return v6;
  }

  v10[0] = "tf/setenv.cpp";
  v10[1] = "TfSetenv";
  v11 = 33;
  v12 = "BOOL pxrInternal__aapl__pxrReserved__::TfSetenv(const std::string &, const std::string &)";
  v13 = 0;
  if (v3[23] < 0)
  {
    v3 = *v3;
  }

  pxrInternal__aapl__pxrReserved__::ArchStrerror(__p);
  if (v15 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v10, "Error setting '%s': %s", v7, v3, v8);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_29A11B420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::TfUnsetenv(char *a1)
{
  v1 = a1;
  if (a1[23] >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  sub_29A008E78(__p, v2);
  v3 = pxrInternal__aapl__pxrReserved__::ArchRemoveEnv(__p);
  v4 = v3;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
    if (v4)
    {
      return v4;
    }
  }

  else if (v3)
  {
    return v4;
  }

  __p[0] = "tf/setenv.cpp";
  __p[1] = "TfUnsetenv";
  v11 = 50;
  v12 = "BOOL pxrInternal__aapl__pxrReserved__::TfUnsetenv(const std::string &)";
  v13 = 0;
  if (v1[23] < 0)
  {
    v1 = *v1;
  }

  pxrInternal__aapl__pxrReserved__::ArchStrerror(v8);
  if (v9 >= 0)
  {
    v6 = v8;
  }

  else
  {
    v6 = v8[0];
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__p, "Error unsetting '%s': %s", v5, v1, v6);
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  return v4;
}

void sub_29A11B554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

atomic_uchar *pxrInternal__aapl__pxrReserved__::TfSpinMutex::_AcquireContended(atomic_uchar *this)
{
  if (atomic_exchange_explicit(this, 1u, memory_order_acquire))
  {
    v1 = this;
    v2 = 32;
    while (1)
    {
      __yield();
      if ((atomic_exchange_explicit(this, 1u, memory_order_acquire) & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        do
        {
          this = sched_yield();
        }

        while ((atomic_exchange_explicit(v1, 1u, memory_order_acquire) & 1) != 0);
        return this;
      }
    }
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfSpinRWMutex::_WaitForWriter(uint64_t this)
{
  v1 = atomic_load(this);
  if (v1)
  {
    v2 = this;
    this = sub_29B28E364(this);
    if ((this & 1) == 0)
    {
      do
      {
        this = sched_yield();
        v3 = atomic_load(v2);
      }

      while ((v3 & 1) != 0);
    }
  }

  return this;
}

unsigned int *pxrInternal__aapl__pxrReserved__::TfSpinRWMutex::_WaitForReaders(unsigned int *this)
{
  v1 = atomic_load(this);
  if (v1 != 1)
  {
    v2 = this;
    v3 = 32;
    while (1)
    {
      __yield();
      v4 = atomic_load(this);
      if (v4 == 1)
      {
        break;
      }

      if (!--v3)
      {
        do
        {
          this = sched_yield();
          v5 = atomic_load(v2);
        }

        while (v5 != 1);
        return this;
      }
    }
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfPrintStackTrace(FILE *a1, uint64_t a2)
{
  sub_29A00B6DC(&v9);
  pxrInternal__aapl__pxrReserved__::ArchPrintStackTrace(&v9, a2);
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = *MEMORY[0x29EDCA610];
  }

  std::stringbuf::str();
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  fputs(p_p, v4);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  fflush(v4);
  v9 = *MEMORY[0x29EDC9538];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v10 = MEMORY[0x29EDC9570] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v13);
}

void sub_29A11B82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A00B848(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfGetStackTrace(pxrInternal__aapl__pxrReserved__ *this)
{
  sub_29A00B6DC(&v4);
  __p[0] = 0;
  __p[1] = 0;
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::ArchPrintStackTrace(&v4, __p);
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v4 = *MEMORY[0x29EDC9538];
  *(&v4 + *(v4 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v5 = MEMORY[0x29EDC9570] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v6);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v8);
}

void pxrInternal__aapl__pxrReserved__::TfLogStackTrace(char *a1, int a2)
{
  memset(&v17, 0, sizeof(v17));
  memset(&__str, 0, sizeof(__str));
  ProgramNameForErrors = pxrInternal__aapl__pxrReserved__::ArchGetProgramNameForErrors(a1);
  pxrInternal__aapl__pxrReserved__::ArchStringPrintf("st_%s", v5, v6, ProgramNameForErrors);
  TmpFile = pxrInternal__aapl__pxrReserved__::ArchMakeTmpFile(&__p, &__str);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  std::string::operator=(&v17, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (TmpFile == -1)
  {
    v16 = MEMORY[0x29EDCA610];
    fwrite("Error writing to stack trace file. Printing stack to stderr\n", 0x3CuLL, 1uLL, *MEMORY[0x29EDCA610]);
    pxrInternal__aapl__pxrReserved__::TfPrintStackTrace(*v16, a1);
  }

  else
  {
    v8 = fdopen(TmpFile, "w");
    v9 = *MEMORY[0x29EDCA610];
    v10 = pxrInternal__aapl__pxrReserved__::ArchGetProgramNameForErrors(v8);
    v11 = &v17;
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v17.__r_.__value_.__r.__words[0];
    }

    if (a1[23] >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    fprintf(v9, "Writing stack for %s to %s because of %s.\n", v10, v11, v12);
    pxrInternal__aapl__pxrReserved__::TfPrintStackTrace(v8, a1);
    v13 = fclose(v8);
    if (a2 && pxrInternal__aapl__pxrReserved__::ArchGetFatalStackLogging(v13))
    {
      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v17;
      }

      else
      {
        v15 = v17.__r_.__value_.__r.__words[0];
      }

      pxrInternal__aapl__pxrReserved__::ArchLogSessionInfo(v15, v14);
    }
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_29A11BB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfLogCrash(char *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  ProgramNameForErrors = pxrInternal__aapl__pxrReserved__::ArchGetProgramNameForErrors(a1);
  if (a1[23] >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s crashed. %s: %s\nin %s at line %zu of %s", v9, v10, ProgramNameForErrors, v11, v12, a4[1], a4[2], *a4);
  v13 = *(a3 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a3 + 8);
  }

  if (v13)
  {
    std::operator+<char>();
    v14 = (v19 & 0x80u) == 0 ? __p : __p[0];
    v15 = (v19 & 0x80u) == 0 ? v19 : __p[1];
    std::string::append(&v20, v14, v15);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  pxrInternal__aapl__pxrReserved__::Tf_ScopeDescriptionStackReportLock::Tf_ScopeDescriptionStackReportLock(__p);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v20;
  }

  else
  {
    v17 = v20.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::ArchLogFatalProcessState(0, v17, __p[0], v16);
  pxrInternal__aapl__pxrReserved__::Tf_ScopeDescriptionStackReportLock::~Tf_ScopeDescriptionStackReportLock(__p);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_29A11BCCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 33) < 0)
  {
    operator delete(*(v20 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfGetAppLaunchTime(pxrInternal__aapl__pxrReserved__ *this)
{
  AppLaunchTime = pxrInternal__aapl__pxrReserved__::ArchGetAppLaunchTime(this);
  if (!AppLaunchTime)
  {
    v3[0] = "tf/stackTrace.cpp";
    v3[1] = "TfGetAppLaunchTime";
    v3[2] = 137;
    v3[3] = "time_t pxrInternal__aapl__pxrReserved__::TfGetAppLaunchTime()";
    v4 = 0;
    v5 = 3;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v3, "Could not determine application launch time.");
  }

  return AppLaunchTime;
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_GetEmptyHashMapBucketCount(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A173F0E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F0E0))
  {
    unk_2A173F0B8 = 0u;
    unk_2A173F0C8 = 0u;
    dword_2A173F0D8 = 1065353216;
    sub_29A019AA0(&unk_2A173F0B8, 0);
    __cxa_atexit(sub_29A11BE44, &unk_2A173F0B8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A173F0E0);
  }

  return qword_2A173F0C0;
}

void sub_29A11BE20(_Unwind_Exception *a1)
{
  sub_29A0EB570(&unk_2A173F0B8);
  __cxa_guard_abort(&qword_2A173F0E0);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_GetEmptyHashSetBucketCount(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A173F110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F110))
  {
    unk_2A173F0E8 = 0u;
    unk_2A173F0F8 = 0u;
    dword_2A173F108 = 1065353216;
    sub_29A019AA0(&unk_2A173F0E8, 0);
    __cxa_atexit(sub_29A11BF04, &unk_2A173F0E8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A173F110);
  }

  return qword_2A173F0F0;
}

void sub_29A11BEE0(_Unwind_Exception *a1)
{
  sub_29A0EB570(&unk_2A173F0E8);
  __cxa_guard_abort(&qword_2A173F110);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::operator<<(uint64_t a1, pxrInternal__aapl__pxrReserved__ **a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::ArchTicksToSeconds(*a2);
  v4 = MEMORY[0x29C2C1EB0](a1, v3);

  return sub_29A00911C(v4, " seconds", 8);
}

void pxrInternal__aapl__pxrReserved__::TfVStringPrintf(char *a1, const char *a2, char *a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::ArchVStringPrintf(a1, a2, a3);
}

double pxrInternal__aapl__pxrReserved__::TfStringToDouble(pxrInternal__aapl__pxrReserved__ *this, const char *a2)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = "inf";
  v8 = "nan";
  v9 = 0;
  return pxrInternal__aapl__pxrReserved__::pxr_double_conversion::StringToDoubleConverter::StringToDouble(&v4, this, a2, &v3);
}

{
  v3 = strlen(this);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = "inf";
  v10 = "nan";
  v11 = 0;
  return pxrInternal__aapl__pxrReserved__::pxr_double_conversion::StringToDoubleConverter::StringToDouble(&v6, this, v3, &v5);
}

double pxrInternal__aapl__pxrReserved__::TfStringToDouble(char *a1, const char *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return pxrInternal__aapl__pxrReserved__::TfStringToDouble(a1, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfStringToLong(pxrInternal__aapl__pxrReserved__ *this, char *a2, BOOL *a3)
{
  v4 = *this;
  if (v4 == 45)
  {
    v5 = *(this + 1);
    if ((v5 - 48) <= 9)
    {
      result = 0;
      v7 = this + 2;
      while (1)
      {
        v8 = v5 - 48;
        v9 = v8 <= 8u ? 0xF333333333333334 : 0xF333333333333335;
        if (result < v9)
        {
          break;
        }

        result = 10 * result - v8;
        v10 = *v7++;
        LOBYTE(v5) = v10;
        if ((v10 - 48) >= 0xA)
        {
          return result;
        }
      }

      result = 0x8000000000000000;
      if (!a2)
      {
        return result;
      }

LABEL_22:
      *a2 = 1;
      return result;
    }

    return 0;
  }

  if ((v4 - 48) > 9)
  {
    return 0;
  }

  result = 0;
  v11 = this + 1;
  while (1)
  {
    v12 = v4 - 48;
    v13 = (v12 & 0xF8) != 0 ? 0xCCCCCCCCCCCCCCBLL : 0xCCCCCCCCCCCCCCCLL;
    if (result > v13)
    {
      break;
    }

    result = 10 * result + v12;
    v14 = *v11++;
    LOBYTE(v4) = v14;
    if ((v14 - 48) >= 0xA)
    {
      return result;
    }
  }

  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfStringToLong(char *a1, char *a2, BOOL *a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return pxrInternal__aapl__pxrReserved__::TfStringToLong(a1, a2, a3);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfStringToULong(pxrInternal__aapl__pxrReserved__ *this, char *a2, BOOL *a3)
{
  v3 = *this;
  if ((v3 - 48) > 9)
  {
    return 0;
  }

  result = 0;
  v6 = this + 1;
  while (1)
  {
    v7 = v3 - 48;
    v8 = v7 > 5u ? 0x1999999999999998 : 0x1999999999999999;
    if (result > v8)
    {
      break;
    }

    result = 10 * result + v7;
    v9 = *v6++;
    LOBYTE(v3) = v9;
    if ((v9 - 48) >= 0xA)
    {
      return result;
    }
  }

  if (a2)
  {
    *a2 = 1;
  }

  return -1;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfStringToULong(char *a1, char *a2, BOOL *a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return pxrInternal__aapl__pxrReserved__::TfStringToULong(a1, a2, a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfStringToInt64(pxrInternal__aapl__pxrReserved__ *this, char *a2, BOOL *a3)
{
  v4 = *this;
  if (v4 == 45)
  {
    v5 = *(this + 1);
    if ((v5 - 48) <= 9)
    {
      result = 0;
      v7 = this + 2;
      while (1)
      {
        v8 = v5 - 48;
        v9 = v8 <= 8u ? 0xF333333333333334 : 0xF333333333333335;
        if (result < v9)
        {
          break;
        }

        result = 10 * result - v8;
        v10 = *v7++;
        LOBYTE(v5) = v10;
        if ((v10 - 48) >= 0xA)
        {
          return result;
        }
      }

      result = 0x8000000000000000;
      if (!a2)
      {
        return result;
      }

LABEL_22:
      *a2 = 1;
      return result;
    }

    return 0;
  }

  if ((v4 - 48) > 9)
  {
    return 0;
  }

  result = 0;
  v11 = this + 1;
  while (1)
  {
    v12 = v4 - 48;
    v13 = (v12 & 0xF8) != 0 ? 0xCCCCCCCCCCCCCCBLL : 0xCCCCCCCCCCCCCCCLL;
    if (result > v13)
    {
      break;
    }

    result = 10 * result + v12;
    v14 = *v11++;
    LOBYTE(v4) = v14;
    if ((v14 - 48) >= 0xA)
    {
      return result;
    }
  }

  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfStringToInt64(char *a1, char *a2, BOOL *a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return pxrInternal__aapl__pxrReserved__::TfStringToInt64(a1, a2, a3);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfStringToUInt64(pxrInternal__aapl__pxrReserved__ *this, char *a2, BOOL *a3)
{
  v3 = *this;
  if ((v3 - 48) > 9)
  {
    return 0;
  }

  result = 0;
  v6 = this + 1;
  while (1)
  {
    v7 = v3 - 48;
    v8 = v7 > 5u ? 0x1999999999999998 : 0x1999999999999999;
    if (result > v8)
    {
      break;
    }

    result = 10 * result + v7;
    v9 = *v6++;
    LOBYTE(v3) = v9;
    if ((v9 - 48) >= 0xA)
    {
      return result;
    }
  }

  if (a2)
  {
    *a2 = 1;
  }

  return -1;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfStringToUInt64(char *a1, char *a2, BOOL *a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return pxrInternal__aapl__pxrReserved__::TfStringToUInt64(a1, a2, a3);
}

BOOL pxrInternal__aapl__pxrReserved__::TfStringContains(char **a1, char *__s)
{
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  v6 = strlen(__s);
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  v8 = &v5[v4];
  if (v5 >= v6)
  {
    v12 = *__s;
    v13 = v4;
    do
    {
      if (&v5[-v7] == -1)
      {
        break;
      }

      v14 = memchr(v13, v12, &v5[-v7 + 1]);
      if (!v14)
      {
        break;
      }

      v9 = v14;
      if (!memcmp(v14, __s, v7))
      {
        return v9 != v8 && v9 - v4 != -1;
      }

      v13 = v9 + 1;
      v5 = (v8 - (v9 + 1));
    }

    while (v5 >= v7);
  }

  v9 = v8;
  return v9 != v8 && v9 - v4 != -1;
}

BOOL pxrInternal__aapl__pxrReserved__::TfStringContains(char **a1, void *a2)
{
  v2 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (v2)
  {
    v3 = (v2 + 16);
    if (*(v2 + 39) < 0)
    {
      v3 = *v3;
    }
  }

  else
  {
    v3 = "";
  }

  return pxrInternal__aapl__pxrReserved__::TfStringContains(a1, v3);
}

void pxrInternal__aapl__pxrReserved__::TfStringToLower(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  std::string::reserve(a2, v4);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*(a1 + 23) >= 0)
      {
        v6 = a1;
      }

      else
      {
        v6 = *a1;
      }

      v7 = __tolower(*(v6 + i));
      std::string::push_back(a2, v7);
    }
  }
}

void sub_29A11C4F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfStringToUpper(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  std::string::reserve(a2, v4);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*(a1 + 23) >= 0)
      {
        v6 = a1;
      }

      else
      {
        v6 = *a1;
      }

      v7 = __toupper(*(v6 + i));
      std::string::push_back(a2, v7);
    }
  }
}

void sub_29A11C59C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::TfStringCapitalize@<X0>(void *result@<X0>, char *a2@<X8>)
{
  v3 = *(result + 23);
  if ((v3 & 0x80000000) == 0)
  {
    *a2 = *result;
    *(a2 + 2) = *(result + 2);
    if (!v3)
    {
      return result;
    }

    goto LABEL_6;
  }

  v4 = *result;
  v5 = *(result + 1);
  if (v5)
  {
    sub_29A008D14(a2, v4, v5);
LABEL_6:
    if (a2[23] >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    result = __toupper(*v6);
    if (a2[23] >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    *v7 = result;
    return result;
  }

  return sub_29A008D14(a2, v4, 0);
}

void sub_29A11C654(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::TfStringGetCommonPrefix@<X0>(unsigned __int8 *__src@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v5 = a2[23];
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = *(a2 + 1);
  }

  v6 = __src[23];
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = *(__src + 1);
  }

  else
  {
    v7 = __src[23];
  }

  if (v5 < v7)
  {
    v8 = *(a2 + 2);
    v9 = *a2;
    v10 = *(__src + 2);
    *a2 = *__src;
    *(a2 + 2) = v10;
    *__src = v9;
    *(__src + 2) = v8;
    v6 = HIBYTE(v8);
  }

  if ((v6 & 0x80) != 0)
  {
    v12 = *__src;
    v11 = *(__src + 1);
  }

  else
  {
    v11 = v6;
    v12 = __src;
  }

  v13 = &v12[v11];
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  if (v11)
  {
    while (*v12 == *a2)
    {
      ++v12;
      ++a2;
      if (!--v11)
      {
        goto LABEL_16;
      }
    }

    v13 = v12;
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_16:
    if ((v6 & 0x80) != 0)
    {
LABEL_17:
      __src = *__src;
    }
  }

  return sub_29A0D2BE0(a3, __src, v13, v13 - __src);
}

std::string *pxrInternal__aapl__pxrReserved__::TfStringGetSuffix@<X0>(const std::string *a1@<X0>, std::string::value_type a2@<W1>, std::string *a3@<X8>)
{
  v5 = std::string::rfind(a1, a2, 0xFFFFFFFFFFFFFFFFLL);
  if (v5 != -1)
  {
    return std::string::basic_string(a3, a1, v5 + 1, 0xFFFFFFFFFFFFFFFFLL, &v7);
  }

  return sub_29A008E78(a3, "");
}

std::string *pxrInternal__aapl__pxrReserved__::TfStringGetBeforeSuffix@<X0>(uint64_t a1@<X0>, std::string::value_type a2@<W1>, std::string *a3@<X8>)
{
  result = std::string::rfind(a1, a2, 0xFFFFFFFFFFFFFFFFLL);
  if (result != -1)
  {
    return std::string::basic_string(a3, a1, 0, result, &v8);
  }

  if (*(a1 + 23) < 0)
  {
    v6 = *a1;
    v7 = *(a1 + 8);

    return sub_29A008D14(a3, v6, v7);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a1;
    a3->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfGetBaseName(std::string *a1@<X0>, std::string *a2@<X8>)
{
  v4 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = a1->__r_.__value_.__r.__words[0];
    size = a1->__r_.__value_.__l.__size_;
    if (!size)
    {
      v16 = a2;
      v14 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    if (!*(&a1->__r_.__value_.__s + 23))
    {
      goto LABEL_24;
    }

    v5 = a1;
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  v7 = &v5[size];
  v8 = v5;
  v9 = v7;
  do
  {
    v10 = v8;
    v11 = v8;
    while (1)
    {
      v12 = *v11++;
      if (v12 == 47)
      {
        break;
      }

      v10 = v11;
      if (v11 == v7)
      {
        v10 = v9;
        goto LABEL_11;
      }
    }

    v8 = v10 + 1;
    v9 = v10;
  }

  while (v11 != v7);
LABEL_11:
  if (v10 == v7)
  {
    v13 = -1;
  }

  else
  {
    v13 = v10 - v5;
  }

  v14 = a1->__r_.__value_.__l.__size_;
  if ((v4 & 0x80000000) == 0)
  {
    v15 = v4;
  }

  else
  {
    v15 = a1->__r_.__value_.__l.__size_;
  }

  if (v13 == v15 - 1)
  {
    std::string::basic_string(&__p, a1, 0, v13, &v18);
    pxrInternal__aapl__pxrReserved__::TfGetBaseName(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (v13 != -1)
  {
    std::string::basic_string(a2, a1, v13 + 1, 0xFFFFFFFFFFFFFFFFLL, &__p);
    return;
  }

  if ((v4 & 0x80000000) == 0)
  {
LABEL_24:
    *&a2->__r_.__value_.__l.__data_ = *&a1->__r_.__value_.__l.__data_;
    a2->__r_.__value_.__r.__words[2] = a1->__r_.__value_.__r.__words[2];
    return;
  }

  v5 = a1->__r_.__value_.__r.__words[0];
  v16 = a2;
LABEL_27:

  sub_29A008D14(v16, v5, v14);
}

void sub_29A11C9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *pxrInternal__aapl__pxrReserved__::TfGetPathName@<X0>(std::string *__str@<X0>, std::string *a2@<X8>)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v5 = __str;
  }

  else
  {
    v5 = __str->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v6 = v5 + size;
    v7 = v5;
    v8 = v6;
    do
    {
      v9 = v7;
      v10 = v7;
      while (1)
      {
        v11 = *v10++;
        if (v11 == 47)
        {
          break;
        }

        v9 = v10;
        if (v10 == v6)
        {
          v9 = v8;
          goto LABEL_13;
        }
      }

      v7 = (&v9->__r_.__value_.__l.__data_ + 1);
      v8 = v9;
    }

    while (v10 != v6);
LABEL_13:
    if (v9 != v6)
    {
      v12 = v9 - v5;
      if (v12 != -1)
      {
        return std::string::basic_string(a2, __str, 0, v12 + 1, &v14);
      }
    }
  }

  return sub_29A008E78(a2, "");
}

std::string *pxrInternal__aapl__pxrReserved__::TfStringTrimRight@<X0>(char *__s@<X1>, const std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2->__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v9 = strlen(__s);
  v10 = &v7[-1].__r_.__value_.__r.__words[2] + 7;
  do
  {
    v11 = size;
    if (!size)
    {
      break;
    }

    if (!v9)
    {
      break;
    }
  }

  while (memchr(__s, *(v10 + size--), v9));
  return std::string::basic_string(a3, a2, 0, v11, &v14);
}

std::string *pxrInternal__aapl__pxrReserved__::TfStringTrimLeft@<X0>(char *__s@<X1>, const std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2->__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  result = strlen(__s);
  if (size)
  {
    v10 = v7;
    v11 = result;
    if (result)
    {
      while (1)
      {
        result = memchr(__s, v10->__r_.__value_.__s.__data_[0], v11);
        if (!result)
        {
          break;
        }

        v10 = (v10 + 1);
        if (!--size)
        {
          goto LABEL_14;
        }
      }
    }

    if (v10 - v7 != -1)
    {
      return std::string::basic_string(a3, a2, v10 - v7, 0xFFFFFFFFFFFFFFFFLL, &v12);
    }
  }

LABEL_14:
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  return result;
}

std::string *pxrInternal__aapl__pxrReserved__::TfStringTrim@<X0>(char *__s@<X1>, const std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2->__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  result = strlen(__s);
  if (!size)
  {
    goto LABEL_19;
  }

  v10 = result;
  v11 = v7;
  if (result)
  {
    v12 = size;
    v11 = v7;
    while (1)
    {
      result = memchr(__s, v11->__r_.__value_.__s.__data_[0], v10);
      if (!result)
      {
        break;
      }

      v11 = (v11 + 1);
      if (!--v12)
      {
        goto LABEL_19;
      }
    }
  }

  v13 = v11 - v7;
  if (v13 == -1)
  {
LABEL_19:
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v14 = size - 1;
    do
    {
      v15 = v14;
      if (v14 == -1)
      {
        break;
      }

      if (!v10)
      {
        break;
      }

      v16 = memchr(__s, v7->__r_.__value_.__s.__data_[v14], v10);
      v14 = v15 - 1;
    }

    while (v16);
    return std::string::basic_string(a3, a2, v13, v15 - v13 + 1, &v17);
  }

  return result;
}

char *pxrInternal__aapl__pxrReserved__::TfStringReplace@<X0>(char *result@<X0>, char *a2@<X1>, const void **a3@<X2>, std::string *a4@<X8>)
{
  v5 = result;
  v7 = a2[23];
  v8 = v7;
  v9 = *(a2 + 1);
  if ((v7 & 0x80u) == 0)
  {
    v10 = a2[23];
  }

  else
  {
    v10 = *(a2 + 1);
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v12 = *(a3 + 23);
  v13 = v12;
  if (v12 < 0)
  {
    v12 = a3[1];
  }

  if (v10 != v12 || ((v7 & 0x80u) == 0 ? (v14 = a2) : (v14 = *a2), v13 >= 0 ? (v15 = a3) : (v15 = *a3), result = memcmp(v14, v15, v10), result))
  {
    v33 = a3;
    if (v5[23] < 0)
    {
      result = sub_29A008D14(a4, *v5, *(v5 + 1));
      v7 = a2[23];
      v9 = *(a2 + 1);
      v8 = a2[23];
    }

    else
    {
      *&a4->__r_.__value_.__l.__data_ = *v5;
      a4->__r_.__value_.__r.__words[2] = *(v5 + 2);
    }

    v16 = 0;
    size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v18 = a4;
    }

    else
    {
      v18 = a4->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = a4->__r_.__value_.__l.__size_;
    }

    v19 = v8 < 0;
    LOBYTE(v34) = v19;
    if (v8 >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    if (v19)
    {
      v21 = v9;
    }

    else
    {
      v21 = v7;
    }

    while (!v21)
    {
LABEL_42:
      if (v16 != -1)
      {
        if (v34)
        {
          v26 = v9;
        }

        else
        {
          v26 = v7;
        }

        v27 = *(v33 + 23);
        if (v27 >= 0)
        {
          v28 = v33;
        }

        else
        {
          v28 = *v33;
        }

        if (v27 >= 0)
        {
          v29 = *(v33 + 23);
        }

        else
        {
          v29 = v33[1];
        }

        result = std::string::replace(a4, v16, v26, v28, v29);
        v30 = *(v33 + 23);
        if ((v30 & 0x80u) != 0)
        {
          v30 = v33[1];
        }

        v16 += v30;
        size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
        if ((size & 0x80u) == 0)
        {
          v18 = a4;
        }

        else
        {
          v18 = a4->__r_.__value_.__r.__words[0];
        }

        if ((size & 0x80u) != 0)
        {
          size = a4->__r_.__value_.__l.__size_;
        }

        v7 = a2[23];
        v34 = v7 >> 63;
        v9 = *(a2 + 1);
        v20 = (v7 & 0x80000000) == 0 ? a2 : *a2;
        v21 = (v7 & 0x80000000) == 0 ? a2[23] : *(a2 + 1);
        if (size >= v16)
        {
          continue;
        }
      }

      return result;
    }

    v22 = size - v16;
    if ((size - v16) >= v21)
    {
      v23 = (v18 + size);
      result = (v18 + v16);
      v24 = *v20;
      do
      {
        if (v22 - v21 == -1)
        {
          break;
        }

        result = memchr(result, v24, v22 - v21 + 1);
        if (!result)
        {
          break;
        }

        v25 = result;
        result = memcmp(result, v20, v21);
        if (!result)
        {
          if (v25 == v23)
          {
            return result;
          }

          v16 = &v25[-v18];
          goto LABEL_42;
        }

        result = v25 + 1;
        v22 = v23 - (v25 + 1);
      }

      while (v22 >= v21);
    }
  }

  else
  {
LABEL_17:
    if (v5[23] < 0)
    {
      v31 = *v5;
      v32 = *(v5 + 1);

      return sub_29A008D14(a4, v31, v32);
    }

    else
    {
      *&a4->__r_.__value_.__l.__data_ = *v5;
      a4->__r_.__value_.__r.__words[2] = *(v5 + 2);
    }
  }

  return result;
}

void sub_29A11CF6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_29A11CF98@<X0>(char *__s@<X2>, std::string *result@<X0>, std::string *a3@<X1>, std::string *a4@<X8>)
{
  v5 = a3 - result;
  if (a3 == result)
  {
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v6 = result;
    if (v5 == 24)
    {
      if (SHIBYTE(result->__r_.__value_.__r.__words[2]) < 0)
      {
        v22 = result->__r_.__value_.__r.__words[0];
        size = result->__r_.__value_.__l.__size_;

        return sub_29A008D14(a4, v22, size);
      }

      else
      {
        v7 = *&result->__r_.__value_.__l.__data_;
        a4->__r_.__value_.__r.__words[2] = result->__r_.__value_.__r.__words[2];
        *&a4->__r_.__value_.__l.__data_ = v7;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      a4->__r_.__value_.__r.__words[0] = 0;
      a4->__r_.__value_.__l.__size_ = 0;
      a4->__r_.__value_.__r.__words[2] = 0;
      v12 = result;
      do
      {
        v13 = SHIBYTE(v12->__r_.__value_.__r.__words[2]);
        if ((v13 & 0x8000000000000000) != 0)
        {
          v13 = v12->__r_.__value_.__l.__size_;
        }

        v10 += v13;
        ++v12;
      }

      while (v12 != a3);
      v14 = strlen(__s);
      std::string::reserve(a4, v10 + v14 * (v11 - 1));
      v15 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
      if (v15 >= 0)
      {
        v16 = v6;
      }

      else
      {
        v16 = v6->__r_.__value_.__r.__words[0];
      }

      if (v15 >= 0)
      {
        v17 = HIBYTE(v6->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v17 = v6->__r_.__value_.__l.__size_;
      }

      result = std::string::append(a4, v16, v17);
      for (i = v6 + 1; i != a3; ++i)
      {
        std::string::append(a4, __s);
        v19 = SHIBYTE(i->__r_.__value_.__r.__words[2]);
        if (v19 >= 0)
        {
          v20 = i;
        }

        else
        {
          v20 = i->__r_.__value_.__r.__words[0];
        }

        if (v19 >= 0)
        {
          v21 = HIBYTE(i->__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = i->__r_.__value_.__l.__size_;
        }

        result = std::string::append(a4, v20, v21);
      }
    }
  }

  return result;
}

void sub_29A11D0E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_29A11D118@<X0>(char *__s@<X2>, std::string *result@<X0>, std::string *a3@<X1>, std::string *a4@<X8>)
{
  if (result == a3)
  {
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v7 = result;
    v8 = 0;
    v9 = result;
    do
    {
      v10 = v8;
      v11 = *(v9 + 8);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = v11->__r_.__value_.__r.__words[0];
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v9 + 16);
          v13 = v12->__r_.__value_.__r.__words[0] == v9;
          v9 = v12;
        }

        while (!v13);
      }

      v8 = v10 + 1;
      v9 = v12;
    }

    while (v12 != a3);
    if (v10)
    {
      v14 = 0;
      a4->__r_.__value_.__r.__words[0] = 0;
      a4->__r_.__value_.__l.__size_ = 0;
      v15 = result;
      a4->__r_.__value_.__r.__words[2] = 0;
      do
      {
        v16 = *(v15 + 55);
        if (v16 < 0)
        {
          v16 = *(v15 + 40);
        }

        v17 = *(v15 + 8);
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = v17->__r_.__value_.__r.__words[0];
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = *(v15 + 16);
            v13 = v18->__r_.__value_.__r.__words[0] == v15;
            v15 = v18;
          }

          while (!v13);
        }

        v14 += v16;
        v15 = v18;
      }

      while (v18 != a3);
      v19 = strlen(__s);
      std::string::reserve(a4, v14 + v19 * v10);
      v20 = *(v7 + 55);
      if (v20 >= 0)
      {
        v21 = (v7 + 32);
      }

      else
      {
        v21 = *(v7 + 32);
      }

      if (v20 >= 0)
      {
        v22 = *(v7 + 55);
      }

      else
      {
        v22 = *(v7 + 40);
      }

      while (1)
      {
        result = std::string::append(a4, v21, v22);
        v23 = *(v7 + 8);
        v24 = v7;
        if (v23)
        {
          do
          {
            v7 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v7 = *(v24 + 16);
            v13 = *v7 == v24;
            v24 = v7;
          }

          while (!v13);
        }

        if (v7 == a3)
        {
          break;
        }

        std::string::append(a4, __s);
        v25 = *(v7 + 55);
        if (v25 >= 0)
        {
          v21 = (v7 + 32);
        }

        else
        {
          v21 = *(v7 + 32);
        }

        if (v25 >= 0)
        {
          v22 = *(v7 + 55);
        }

        else
        {
          v22 = *(v7 + 40);
        }
      }
    }

    else if (result[2].__r_.__value_.__s.__data_[7] < 0)
    {
      size = result[1].__r_.__value_.__l.__size_;
      v28 = result[1].__r_.__value_.__r.__words[2];

      return sub_29A008D14(a4, size, v28);
    }

    else
    {
      v26 = *&result[1].__r_.__value_.__r.__words[1];
      a4->__r_.__value_.__r.__words[2] = result[2].__r_.__value_.__r.__words[0];
      *&a4->__r_.__value_.__l.__data_ = v26;
    }
  }

  return result;
}

void sub_29A11D2FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfStringSplit(std::string *__str@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v5 = size;
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v7 = a2[23];
    v8 = v7 >= 0 ? a2[23] : *(a2 + 1);
    if (v8)
    {
      v10 = 0;
      if (v5 >= 0)
      {
        v11 = __str;
      }

      else
      {
        v11 = __str->__r_.__value_.__r.__words[0];
      }

      if (v7 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      while (1)
      {
        v13 = v10;
        if (v8)
        {
          break;
        }

LABEL_24:
        if (v13 != -1)
        {
          std::string::basic_string(&__p, __str, v10, v13 - v10, &v22);
          sub_29A091654(a3, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v20 = a2[23];
          size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
          if ((size & 0x80u) == 0)
          {
            v11 = __str;
          }

          else
          {
            v11 = __str->__r_.__value_.__r.__words[0];
          }

          if ((size & 0x80u) != 0)
          {
            size = __str->__r_.__value_.__l.__size_;
          }

          v8 = v20 >= 0 ? a2[23] : *(a2 + 1);
          v10 = v8 + v13;
          v12 = v20 >= 0 ? a2 : *a2;
          if (size >= v10)
          {
            continue;
          }
        }

        goto LABEL_39;
      }

      v14 = size - v10;
      if ((size - v10) >= v8)
      {
        v15 = v11 + size;
        v16 = v11 + v10;
        v17 = *v12;
        do
        {
          if (v14 - v8 == -1)
          {
            break;
          }

          v18 = memchr(v16, v17, v14 - v8 + 1);
          if (!v18)
          {
            break;
          }

          v19 = v18;
          if (!memcmp(v18, v12, v8))
          {
            if (v19 == v15)
            {
              break;
            }

            v13 = v19 - v11;
            goto LABEL_24;
          }

          v16 = v19 + 1;
          v14 = v15 - (v19 + 1);
        }

        while (v14 >= v8);
      }

LABEL_39:
      std::string::basic_string(&__p, __str, v10, 0xFFFFFFFFFFFFFFFFLL, &v22);
      sub_29A091654(a3, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_29A11D4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfStringTokenize(unsigned __int8 *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v24 = *MEMORY[0x29EDCA608];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  memset(v23, 0, sizeof(v23));
  v5 = *a2;
  if (*a2)
  {
    v6 = a2 + 1;
    do
    {
      *(v23 + v5) = 1;
      v7 = *v6++;
      v5 = v7;
    }

    while (v7);
  }

  sub_29A11FD0C(&v19, 8uLL);
  v8 = a1[23];
  v9 = v8;
  v10 = &a1[v8];
  if (v9 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = (*a1 + *(a1 + 1));
  }

  if (v9 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  for (; v12 < v11; ++v12)
  {
    if (!*(v23 + *v12))
    {
      *&v22 = v12;
      *(&v22 + 1) = v12;
      sub_29A03A998(&v19, &v22);
      v13 = v12 + 1;
      while (v13 != v11)
      {
        v14 = *v13++;
        if (*(v23 + v14))
        {
          v12 = v13 - 1;
          goto LABEL_17;
        }
      }

      v12 = v11;
LABEL_17:
      *(v20 - 1) = v12;
    }
  }

  sub_29A012B58(a3, (v20 - v19) >> 4);
  v15 = v19;
  if (v20 != v19)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      sub_29A11D6EC((*a3 + v17), *&v15[v16], *&v15[v16 + 8]);
      ++v18;
      v15 = v19;
      v17 += 24;
      v16 += 16;
    }

    while (v18 != (v20 - v19) >> 4);
  }

  if (v15)
  {
    v20 = v15;
    operator delete(v15);
  }
}

void sub_29A11D6B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_29A11D6EC(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    sub_29A0D2BE0(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_29A11D848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfStringTokenizeToSet(unsigned __int8 *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x29EDCA608];
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *__p = 0u;
  v23 = 0u;
  v5 = *a2;
  if (*a2)
  {
    v6 = a2 + 1;
    do
    {
      *(__p + v5) = 1;
      v7 = *v6++;
      v5 = v7;
    }

    while (v7);
  }

  sub_29A11FD0C(&v18, 8uLL);
  v8 = a1[23];
  v9 = v8;
  v10 = &a1[v8];
  if (v9 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = (*a1 + *(a1 + 1));
  }

  if (v9 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  for (; v12 < v11; ++v12)
  {
    if (!*(__p + *v12))
    {
      *&v21 = v12;
      *(&v21 + 1) = v12;
      sub_29A03A998(&v18, &v21);
      v13 = v12 + 1;
      while (v13 != v11)
      {
        v14 = *v13++;
        if (*(__p + v14))
        {
          v12 = v13 - 1;
          goto LABEL_17;
        }
      }

      v12 = v11;
LABEL_17:
      *(v19 - 1) = v12;
    }
  }

  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  *a3 = a3 + 8;
  v15 = v18;
  if (v19 != v18)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      sub_29A0D2BE0(__p, *&v15[v16], *&v15[v16 + 8], *&v15[v16 + 8] - *&v15[v16]);
      sub_29AA9E938(a3, __p, __p);
      if (SBYTE7(v23) < 0)
      {
        operator delete(__p[0]);
      }

      ++v17;
      v15 = v18;
      v16 += 16;
    }

    while (v17 != (v19 - v18) >> 4);
  }

  if (v15)
  {
    v19 = v15;
    operator delete(v15);
  }
}

void sub_29A11DA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfQuotedStringTokenize(char *__s1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, void ***a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  memset(&v53, 0, sizeof(v53));
  {
    v45 = a3;
    v46 = a4;
    memset(&v52, 0, sizeof(v52));
    v8 = *(a2 + 23);
    if (v8 < 0)
    {
      v8 = *(a2 + 8);
      if (!v8)
      {
        goto LABEL_104;
      }

      v9 = *a2;
    }

    else
    {
      v9 = a2;
      if (!*(a2 + 23))
      {
LABEL_104:
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        goto LABEL_106;
      }
    }

    v10 = strlen(__s1);
    v11 = v9;
    if (v10)
    {
      v12 = v10;
      v13 = v8;
      while (memchr(__s1, *v11, v12))
      {
        ++v11;
        if (!--v13)
        {
          goto LABEL_104;
        }
      }
    }

    v14 = &v11[-v9];
    if (&v11[-v9] != -1)
    {
      std::string::erase(&v52, 0, 0xFFFFFFFFFFFFFFFFLL);
      std::string::erase(&v53, 0, 0xFFFFFFFFFFFFFFFFLL);
      while (1)
      {
        v16 = *(a2 + 23);
        v17 = *a2;
        v18 = v16 >= 0 ? a2 : *a2;
        v19 = v16 >= 0 ? *(a2 + 23) : *(a2 + 8);
        v20 = strlen(__s1);
        if (v19 <= v14 || v20 == 0)
        {
          if (v15 == -1)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v22 = (v18 + v19);
          v23 = (v18 + v14);
LABEL_29:
          v24 = v20;
          v25 = __s1;
          while (*v23 != *v25)
          {
            ++v25;
            if (!--v24)
            {
              if (++v23 != v22)
              {
                goto LABEL_29;
              }

              v23 = (v18 + v19);
              break;
            }
          }

          if (v23 == v22)
          {
            v26 = -1;
          }

          else
          {
            v26 = &v23[-v18];
          }

          if (v15 >= v26)
          {
            if (v26 == -1)
            {
LABEL_75:
              std::string::basic_string(&v51, a2, v14, 0xFFFFFFFFFFFFFFFFLL, &v50);
              if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v40 = &v51;
              }

              else
              {
                v40 = v51.__r_.__value_.__r.__words[0];
              }

              if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v51.__r_.__value_.__l.__size_;
              }

              std::string::append(&v53, v40, size);
              if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v51.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              std::string::basic_string(&v51, a2, v14, v26 - v14, &v50);
              if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v38 = &v51;
              }

              else
              {
                v38 = v51.__r_.__value_.__r.__words[0];
              }

              if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v39 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v39 = v51.__r_.__value_.__l.__size_;
              }

              std::string::append(&v53, v38, v39);
              if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v51.__r_.__value_.__l.__data_);
              }
            }

            v42 = 0;
            while (1)
            {
              sub_29A008E78(&v49, "\");
              v43 = asc_29B79D76D[v42];
              std::string::push_back(&v49, v43);
              v50 = v49;
              memset(&v49, 0, sizeof(v49));
              memset(&v47, 0, sizeof(v47));
              std::string::push_back(&v47, v43);
              __p = v47;
              memset(&v47, 0, sizeof(v47));
              pxrInternal__aapl__pxrReserved__::TfStringReplace(&v53, &v50, &__p.__r_.__value_.__l.__data_, &v51);
              if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v53.__r_.__value_.__l.__data_);
              }

              v53 = v51;
              *(&v51.__r_.__value_.__s + 23) = 0;
              v51.__r_.__value_.__s.__data_[0] = 0;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v47.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v50.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v49.__r_.__value_.__l.__data_);
              }

              if (++v42 == 3)
              {
                sub_29A070BA0(v46);
              }
            }
          }
        }

        if (v15 > v14)
        {
          std::string::basic_string(&v51, a2, v14, v15 - v14, &v50);
          if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = &v51;
          }

          else
          {
            v27 = v51.__r_.__value_.__r.__words[0];
          }

          if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v28 = v51.__r_.__value_.__l.__size_;
          }

          std::string::append(&v53, v27, v28);
          if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v51.__r_.__value_.__l.__data_);
          }

          LOBYTE(v16) = *(a2 + 23);
          v17 = *a2;
        }

        v29 = (v16 & 0x80u) == 0 ? a2 : v17;
        std::string::operator=(&v52, *(v29 + v15));
        v30 = (v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v52 : v52.__r_.__value_.__r.__words[0];
        v31 = v15 + 1;
        v32 = sub_29A11E044(a2, v30, v15 + 1);
        if (v32 == -1)
        {
          break;
        }

        v35 = v32;
        if (v32 > v31)
        {
          std::string::basic_string(&v51, a2, v31, v32 - v31, &v50);
          v36 = (v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v51 : v51.__r_.__value_.__r.__words[0];
          v37 = (v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v51.__r_.__value_.__r.__words[2]) : v51.__r_.__value_.__l.__size_;
          std::string::append(&v53, v36, v37);
          if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v51.__r_.__value_.__l.__data_);
          }
        }

        v14 = v35 + 1;
      }

      if (v45)
      {
        if (*(a2 + 23) >= 0)
        {
          v44 = a2;
        }

        else
        {
          v44 = *a2;
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("String is missing an end-quote ('%s'): %s", v33, v34, v30, v44);
        if (*(v45 + 23) < 0)
        {
          operator delete(*v45);
        }

        *v45 = v51;
      }

      sub_29A012CE4(v46);
    }

    goto LABEL_104;
  }

  if (!a3)
  {
    return;
  }

  MEMORY[0x29C2C1A60](a3, "Cannot use quotes as delimiters.");
LABEL_106:
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }
}

void sub_29A11DF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 113) < 0)
  {
    operator delete(*(v44 - 136));
  }

  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  *(v44 - 112) = a13;
  sub_29A012C90((v44 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_29A11E044(uint64_t *a1, char *__s, unint64_t a3)
{
  v6 = *(a1 + 23);
  v7 = *a1;
  v8 = a1[1];
  if ((v6 & 0x80u) == 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if ((v6 & 0x80u) == 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  v11 = strlen(__s);
  if (v10 <= a3 || v11 == 0)
  {
    return -1;
  }

  v14 = (v9 + v10);
  v15 = (v9 + a3);
  while (2)
  {
    v16 = v11;
    v17 = __s;
    do
    {
      if (*v15 == *v17)
      {
        if (v15 == v14)
        {
          v13 = -1;
        }

        else
        {
          v13 = &v15[-v9];
        }

        v18 = v13 - 1;
        if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v13 = &v15[-v9];
          while (1)
          {
            if ((v6 & 0x80) != 0)
            {
              v19 = *(v7 + v18);
              v20 = v7;
              v21 = v8;
            }

            else
            {
              v19 = *(a1 + v18);
              v20 = a1;
              v21 = v6;
            }

            if (v19 != 92)
            {
              break;
            }

            v22 = v13 + 1;
            if (v21 <= v22)
            {
              return -1;
            }

            v23 = v20 + v21;
            v24 = v20 + v22;
LABEL_29:
            v25 = v11;
            v26 = __s;
            while (*v24 != *v26)
            {
              ++v26;
              if (!--v25)
              {
                if (++v24 != v23)
                {
                  goto LABEL_29;
                }

                return -1;
              }
            }

            v13 = v24 - v20;
            if (v24 == v23)
            {
              v27 = -1;
            }

            else
            {
              v27 = v24 - v20;
            }

            v18 = v27 - 1;
            if ((v27 - 1) >= 0xFFFFFFFFFFFFFFFELL)
            {
              return v27;
            }
          }
        }

        return v13;
      }

      ++v17;
      --v16;
    }

    while (v16);
    ++v15;
    v13 = -1;
    if (v15 != v14)
    {
      continue;
    }

    return v13;
  }
}

void pxrInternal__aapl__pxrReserved__::TfMatchedStringTokenize(uint64_t __c@<X2>, const std::string *a2@<X0>, uint64_t a3@<X1>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (a4 == a3 || a4 == __c)
  {
    if (a5)
    {
      MEMORY[0x29C2C1A60](a5, "Escape character cannot be a delimiter.", __c);
    }

    return;
  }

  v11 = std::string::find(a2, __c, 0);
  if (v11 != -1)
  {
    if (!v11 || ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v12 = a2) : (v12 = a2->__r_.__value_.__r.__words[0]), v12->__r_.__value_.__s.__data_[v11 - 1] != a4))
    {
      if (v11 < std::string::find(a2, a3, 0))
      {
        if (a5)
        {
          if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v15 = a2;
          }

          else
          {
            v15 = a2->__r_.__value_.__r.__words[0];
          }

          pxrInternal__aapl__pxrReserved__::TfStringPrintf("String has unmatched close delimiter ('%c', '%c'): %s", v13, v14, a3, __c, v15);
          if (*(a5 + 23) < 0)
          {
            operator delete(*a5);
          }

          *a5 = v55;
        }

        return;
      }
    }
  }

  memset(&v55, 0, sizeof(v55));
  if (a4)
  {
    std::string::push_back(&v55, a4);
  }

  std::string::push_back(&v55, a3);
  if (a3 != __c)
  {
    std::string::push_back(&v55, __c);
  }

  v50 = a5;
  v16 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  v18 = std::string::find(a2, a3, 0);
  if (v18 == -1)
  {
    v46 = std::string::find(a2, __c, 1uLL);
    if (v46 != -1)
    {
      v49 = (a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? a2 : a2->__r_.__value_.__r.__words[0];
      if (*(v49 + v46 - 1) != a4)
      {
        if (v50)
        {
          pxrInternal__aapl__pxrReserved__::TfStringPrintf("String has unmatched close delimiter ('%c', '%c'): %s", v47, v48, a3, __c, v49);
          if (*(v50 + 23) < 0)
          {
            operator delete(*v50);
          }

          *v50 = v54;
        }

        sub_29A012CE4(a6);
      }
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v21 = v18;
    if ((v16 & 0x80u) == 0)
    {
      v22 = v16;
    }

    else
    {
      v22 = size;
    }

    v23 = v22 - 1;
    v24 = 0;
    memset(&v54, 0, sizeof(v54));
    v25 = 1;
    v26 = v18;
    while (2)
    {
      v27 = v21 + 1;
      v28 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      v29 = a2->__r_.__value_.__l.__size_;
      v30 = v28 < 0;
      if (v28 >= 0)
      {
        v31 = a2;
      }

      else
      {
        v31 = a2->__r_.__value_.__r.__words[0];
      }

      if (!v30)
      {
        v29 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      }

      v32 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v55;
      }

      else
      {
        v33 = v55.__r_.__value_.__r.__words[0];
      }

      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v32 = v55.__r_.__value_.__l.__size_;
      }

      if (v29 > v27 && v32 != 0)
      {
        v35 = (v31 + v29);
        v36 = (v31 + v27);
LABEL_44:
        v37 = v32;
        v38 = v33;
        while (*v36 != v38->__r_.__value_.__s.__data_[0])
        {
          v38 = (v38 + 1);
          if (!--v37)
          {
            if (++v36 != v35)
            {
              goto LABEL_44;
            }

            goto LABEL_83;
          }
        }

        if (v36 == v35)
        {
          break;
        }

        v39 = &v36[-v31];
        if (&v36[-v31] == -1)
        {
          break;
        }

        v40 = *v36;
        if (v40 == a4)
        {
          v21 = (v39 + 1);
          if ((v39 + 1) < v23)
          {
            std::string::basic_string(&v52, a2, v26 + 1, &v39[~v26], v56);
            if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v41 = a2;
            }

            else
            {
              v41 = a2->__r_.__value_.__r.__words[0];
            }

            std::string::push_back(&v52, v41->__r_.__value_.__s.__data_[v21]);
            __p = v52;
            memset(&v52, 0, sizeof(v52));
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
              v43 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v43 = __p.__r_.__value_.__l.__size_;
            }

            std::string::append(&v54, p_p, v43);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v52.__r_.__value_.__l.__data_);
            }

            v26 = v21;
            goto LABEL_72;
          }
        }

        else if (a3 == __c || v40 != a3)
        {
          ++v24;
        }

        else
        {
          ++v25;
        }

        v21 = v39;
LABEL_72:
        if (v24 == v25)
        {
          if (v21 > v26 + 1)
          {
            std::string::basic_string(&__p, a2, v26 + 1, v21 + ~v26, &v52);
            v44 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            v45 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
            std::string::append(&v54, v44, v45);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          sub_29A070BA0(a6);
        }

        continue;
      }

      break;
    }

LABEL_83:
    if (v50)
    {
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("String has unmatched open delimiter ('%c', '%c'): %s", v19, v20, a3, __c, v31);
      if (*(v50 + 23) < 0)
      {
        operator delete(*v50);
      }

      *v50 = __p;
    }

    sub_29A012CE4(a6);
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29A11E68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v34 - 97) < 0)
  {
    operator delete(*(v34 - 120));
  }

  *(v34 - 120) = a15;
  sub_29A012C90((v34 - 120));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = *(a3 + 23);
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v3 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  if (v5 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = &v4[v9];
  v11 = sub_29A11EAA4(v4, &v4[v9], v6);
  if (v7 == v8 && v10 == v11)
  {
    return 0;
  }

  v14 = v11;
  v15 = &v4[v7];
  v16 = &v6[v8];
  if (v10 == v11)
  {
LABEL_79:
    result = v10 == v15;
    if (v10 == v15 && v12 == v16)
    {
      if (v8 >= v7)
      {
        v48 = v7;
      }

      else
      {
        v48 = v8;
      }

      v49 = *sub_29A11EAA4(v4, &v4[v48], v6);
      v51 = *v50;
      return v49 != 48 && v49 < v51 || v51 == 48;
    }

    return result;
  }

  while (1)
  {
    v17 = *v14;
    v18 = *v12;
    if ((*v14 & 0x80000000) == 0 && (*v12 & 0x80000000) == 0)
    {
      v19 = v17 < 0x40 || ((v18 ^ v17) & 0x5F) == 0;
      if (!v19 && v18 >= 0x40)
      {
        v56 = ((v17 + 5) & 0x1Fu) >= ((v18 + 5) & 0x1Fu);
        return !v56;
      }
    }

    v20 = v17 - 48;
    v21 = v18 - 48;
    if (v17 - 48 < 0xA || v21 <= 9)
    {
      break;
    }

    if ((v17 & 0xFFFFFFDF) - 65 > 0x19 || (v18 & 0xFFFFFFDF) - 65 >= 0x1A)
    {
      goto LABEL_108;
    }

    v27 = v14 + 1;
    v28 = (v12 + 1);
LABEL_78:
    v14 = sub_29A11EAA4(v27, v10, v28);
    if (v10 == v14)
    {
      goto LABEL_79;
    }
  }

  if (v20 > 9 || v21 > 9)
  {
    if (v14 != v4)
    {
      if ((*(v14 - 1) - 48) >= 0xA)
      {
        return v20 < 0xA;
      }

      else
      {
        return v21 < 0xA;
      }
    }

LABEL_108:
    v56 = v17 >= v18;
    return !v56;
  }

  v24 = v14;
  while (v24 != v4)
  {
    v25 = *--v24;
    if ((v25 - 48) >= 0xA)
    {
      v26 = v24 + 1;
      goto LABEL_44;
    }
  }

  v26 = v4;
LABEL_44:
  v29 = v12;
  while (v29 != v6)
  {
    v30 = *--v29;
    if ((v30 - 48) >= 0xA)
    {
      v31 = (v29 + 1);
      goto LABEL_49;
    }
  }

  v31 = v6;
LABEL_49:
  v32 = v14;
  do
  {
    v27 = v14;
    v33 = v32;
    v34 = *v14++;
    v32 = (v32 + 1);
  }

  while ((v34 - 48) <= 9 && v27 != v15);
  v36 = v12;
  do
  {
    v28 = v12;
    v37 = v36;
    v38 = *v12++;
    ++v36;
  }

  while ((v38 - 48) <= 9 && v28 != v16);
  for (; v26 != v27; ++v26)
  {
    if (*v26 != 48)
    {
      break;
    }
  }

  for (; v31 != v28; ++v31)
  {
    if (*v31 != 48)
    {
      break;
    }
  }

  v40 = v28 == v31;
  v41 = v27 == v26;
  if (v27 == v26 || v28 == v31)
  {
LABEL_74:
    if (v41 != v40)
    {
      if (v28 == v31)
      {
        return 0;
      }

      else
      {
        return v41;
      }
    }

    v46 = v15 - v27;
    if (v16 - v28 < v15 - v27)
    {
      v46 = v16 - v28;
    }

    v10 = &v27[v46];
    goto LABEL_78;
  }

  v42 = v37 - v31;
  v43 = v33 - v26;
  v44 = v26 + 1;
  while (1)
  {
    v45 = *(v44 - 1);
    if ((v45 - 48) > 9 || *v31 != v45)
    {
      break;
    }

    v40 = ++v31 == v28;
    v41 = v44 == v27;
    if (v44 != v27)
    {
      --v42;
      --v43;
      ++v44;
      if (v31 != v28)
      {
        continue;
      }
    }

    goto LABEL_74;
  }

  if (v43 < v42)
  {
    return 1;
  }

  v54 = *v31;
  return v42 >= v43 && v45 < v54;
}

void *sub_29A11EAA4(void *result, uint64_t a2, void *a3)
{
  if (*result != *a3)
  {
    return result;
  }

  v3 = a2 - result;
  if ((a2 - result) >= 8)
  {
    v4 = v3 >> 3;
    v5 = (result + (v3 & 0xFFFFFFFFFFFFFFF8));
    v6 = (a3 + (v3 & 0xFFFFFFFFFFFFFFF8));
    while (*result == *a3)
    {
      ++result;
      ++a3;
      if (!--v4)
      {
        result = v5;
        a3 = v6;
        goto LABEL_7;
      }
    }

    return (result + (__clz(__rbit64(*a3 ^ *result)) >> 3));
  }

LABEL_7:
  v7 = v3 & 7;
  if (v7 <= 3)
  {
    if (v7 <= 1)
    {
      if (!v7)
      {
        return result;
      }

      goto LABEL_30;
    }

    if (v7 == 2)
    {
LABEL_28:
      if (*result != *a3)
      {
        return result;
      }

      result = (result + 1);
      a3 = (a3 + 1);
LABEL_30:
      if (*result == *a3)
      {
        return (result + 1);
      }

      return result;
    }

LABEL_26:
    if (*result != *a3)
    {
      return result;
    }

    result = (result + 1);
    a3 = (a3 + 1);
    goto LABEL_28;
  }

  if (v7 <= 5)
  {
    if (v7 == 4)
    {
LABEL_24:
      if (*result != *a3)
      {
        return result;
      }

      result = (result + 1);
      a3 = (a3 + 1);
      goto LABEL_26;
    }

LABEL_22:
    if (*result != *a3)
    {
      return result;
    }

    result = (result + 1);
    a3 = (a3 + 1);
    goto LABEL_24;
  }

  if (v7 != 6)
  {
    if (*result != *a3)
    {
      return result;
    }

    result = (result + 1);
    a3 = (a3 + 1);
  }

  if (*result == *a3)
  {
    result = (result + 1);
    a3 = (a3 + 1);
    goto LABEL_22;
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::TfStringify@<X0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    v2 = "true";
  }

  else
  {
    v2 = "false";
  }

  return sub_29A008E78(a2, v2);
}

char *pxrInternal__aapl__pxrReserved__::TfStringify@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[23] < 0)
  {
    return sub_29A008D14(a2, *result, *(result + 1));
  }

  *a2 = *result;
  *(a2 + 16) = *(result + 2);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_ApplyDoubleToStringConverter(pxrInternal__aapl__pxrReserved__ *this, float a2, char *a3)
{
  v3 = a3;
  sub_29A11ED20();
  v12 = this;
  v13 = v3;
  v14 = 0;
  result = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::ToShortestIeeeNumber(&dword_2A173F120, &v12, 1, a2);
  if ((result & 1) == 0)
  {
    LOBYTE(v11) = 0;
    v9 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("double_conversion failed", v7, v8, "tf/stringUtils.cpp", "Tf_ApplyDoubleToStringConverter", 940, "void pxrInternal__aapl__pxrReserved__::Tf_ApplyDoubleToStringConverter(float, char *, int)", v11);
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "conv.ToShortestSingle(val, &builder)", v9);
  }

  if ((v14 & 0x80000000) == 0)
  {
    *(v12 + v14) = 0;
  }

  return result;
}

void sub_29A11ED08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16)
{
  if ((a16 & 0x80000000) == 0)
  {
    *(a14 + a16) = 0;
  }

  _Unwind_Resume(a1);
}

void sub_29A11ED20()
{
  if ((atomic_load_explicit(&qword_2A173F118, memory_order_acquire) & 1) == 0)
  {
    sub_29B28E38C();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_ApplyDoubleToStringConverter(pxrInternal__aapl__pxrReserved__ *this, double a2, char *a3)
{
  v3 = a3;
  sub_29A11ED20();
  v12 = this;
  v13 = v3;
  v14 = 0;
  result = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::ToShortestIeeeNumber(&dword_2A173F120, &v12, 0, a2);
  if ((result & 1) == 0)
  {
    LOBYTE(v11) = 0;
    v9 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("double_conversion failed", v7, v8, "tf/stringUtils.cpp", "Tf_ApplyDoubleToStringConverter", 950, "void pxrInternal__aapl__pxrReserved__::Tf_ApplyDoubleToStringConverter(double, char *, int)", v11);
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "conv.ToShortest(val, &builder)", v9);
  }

  if ((v14 & 0x80000000) == 0)
  {
    *(v12 + v14) = 0;
  }

  return result;
}

void sub_29A11EE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16)
{
  if ((a16 & 0x80000000) == 0)
  {
    *(a14 + a16) = 0;
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::TfStringify@<X0>(float a1@<S0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::Tf_ApplyDoubleToStringConverter(__s, a1, 0x80);
  return sub_29A008E78(a2, __s);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDoubleToString(pxrInternal__aapl__pxrReserved__ *this, double a2, char *a3, int a4)
{
  if (a3 < 25)
  {
    return 0;
  }

  if (a4)
  {
    v5 = 6;
  }

  else
  {
    v5 = 0;
  }

  v9 = v5;
  v10 = "inf";
  v11 = "nan";
  v12 = 101;
  v13 = xmmword_29B43BF10;
  v14 = 0;
  v6 = this;
  v7 = a3;
  v8 = 0;
  result = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::ToShortestIeeeNumber(&v9, &v6, 0, a2);
  if ((v8 & 0x80000000) == 0)
  {
    *(v6 + v8) = 0;
  }

  return result;
}

void sub_29A11EF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12)
{
  if ((a12 & 0x80000000) == 0)
  {
    *(a10 + a12) = 0;
  }

  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::TfStringify@<X0>(double a1@<D0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::Tf_ApplyDoubleToStringConverter(__s, a1, 0x80);
  return sub_29A008E78(a2, __s);
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, float a2)
{
  v6 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::Tf_ApplyDoubleToStringConverter(__s, a2, 0x80);
  v3 = strlen(__s);
  return sub_29A00911C(a1, __s, v3);
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, double a2)
{
  v6 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::Tf_ApplyDoubleToStringConverter(__s, a2, 0x80);
  v3 = strlen(__s);
  return sub_29A00911C(a1, __s, v3);
}

BOOL pxrInternal__aapl__pxrReserved__::TfUnstringify<BOOL>(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 23) < 0)
  {
    v1 = *a1;
    if (strcmp(*a1, "true"))
    {
      v3 = *v1;
      if (v3 != 49 || v1[1])
      {
        if (strcmp(v1, "yes"))
        {
          return v3 == 111 && v1[1] == 110 && v1[2] == 0;
        }
      }
    }

    return 1;
  }

  if (!(*a1 ^ 0x65757274 | *(a1 + 4)))
  {
    return 1;
  }

  if (*a1 == 49 || *a1 == 7562617)
  {
    return 1;
  }

  v3 = *a1;
  return v3 == 111 && v1[1] == 110 && v1[2] == 0;
}

char *pxrInternal__aapl__pxrReserved__::TfUnstringify<std::string>@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[23] < 0)
  {
    return sub_29A008D14(a2, *result, *(result + 1));
  }

  *a2 = *result;
  *(a2 + 16) = *(result + 2);
  return result;
}

void pxrInternal__aapl__pxrReserved__::TfStringGlobToRegex(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_29A008D14(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  sub_29A008E78(v5, ".");
  sub_29A008E78(__p, "\\.");
  pxrInternal__aapl__pxrReserved__::TfStringReplace(a2, v5, __p, &v7);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v7;
  *(&v7.__r_.__value_.__s + 23) = 0;
  v7.__r_.__value_.__s.__data_[0] = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  sub_29A008E78(v5, "*");
  sub_29A008E78(__p, ".*");
  pxrInternal__aapl__pxrReserved__::TfStringReplace(a2, v5, __p, &v7);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v7;
  *(&v7.__r_.__value_.__s + 23) = 0;
  v7.__r_.__value_.__s.__data_[0] = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  sub_29A008E78(v5, "?");
  sub_29A008E78(__p, ".");
  pxrInternal__aapl__pxrReserved__::TfStringReplace(a2, v5, __p, &v7);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v7;
  *(&v7.__r_.__value_.__s + 23) = 0;
  v7.__r_.__value_.__s.__data_[0] = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_29A11F35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

char **pxrInternal__aapl__pxrReserved__::TfEscapeStringReplaceChar(char **this, const char **a2, char **a3)
{
  v3 = *this;
  v4 = v3 + 1;
  ++*this;
  v5 = v3[1];
  if (v5 > 0x60)
  {
    if (v3[1] > 0x71u)
    {
      if (v3[1] > 0x75u)
      {
        if (v5 == 118)
        {
          LOBYTE(v5) = 11;
        }

        else if (v5 == 120)
        {
          *this = v3 + 2;
          v19 = v3[2];
          if ((v19 & 0x8000000000000000) == 0 && (v20 = MEMORY[0x29EDCA600], (*(MEMORY[0x29EDCA600] + 4 * v19 + 60) & 0x10000) != 0))
          {
            LOBYTE(v5) = 0;
            v21 = v3 + 3;
            v22 = 1;
            do
            {
              v23 = v21;
              if ((v19 - 65) >= 6u)
              {
                v24 = -48;
              }

              else
              {
                v24 = -55;
              }

              if ((v19 - 97) >= 6u)
              {
                v25 = v24;
              }

              else
              {
                v25 = -87;
              }

              LOBYTE(v5) = v19 + 16 * v5 + v25;
              *this = v23;
              v19 = *v23;
              if (v19 < 0)
              {
                break;
              }

              v11 = v22-- != 0;
              v26 = v11;
              if ((*(v20 + 4 * v19 + 60) & 0x10000) == 0)
              {
                break;
              }

              v21 = v23 + 1;
            }

            while (v26);
            v4 = v23 - 1;
          }

          else
          {
            LOBYTE(v5) = 0;
          }

          *this = v4;
        }
      }

      else
      {
        if (v5 == 116)
        {
          v17 = 9;
        }

        else
        {
          v17 = v3[1];
        }

        if (v5 == 114)
        {
          LOBYTE(v5) = 13;
        }

        else
        {
          LOBYTE(v5) = v17;
        }
      }
    }

    else
    {
      if (v5 == 110)
      {
        v13 = 10;
      }

      else
      {
        v13 = v3[1];
      }

      if (v5 == 102)
      {
        v14 = 12;
      }

      else
      {
        v14 = v13;
      }

      if (v5 == 98)
      {
        v15 = 8;
      }

      else
      {
        v15 = v5;
      }

      if (v5 == 97)
      {
        v16 = 7;
      }

      else
      {
        v16 = v15;
      }

      if (v5 <= 101)
      {
        LOBYTE(v5) = v16;
      }

      else
      {
        LOBYTE(v5) = v14;
      }
    }
  }

  else if ((v5 - 48) < 8)
  {
    v6 = *v4;
    if ((v6 & 0xF8) == 0x30)
    {
      LOBYTE(v5) = 0;
      v7 = v3 + 2;
      v8 = 2;
      do
      {
        LOBYTE(v5) = v6 + 8 * v5 - 48;
        *this = v7;
        v9 = *v7++;
        v6 = v9;
        v10 = v9 & 0xF8;
        v11 = v8-- != 0;
        v12 = v11;
      }

      while (v10 == 48 && (v12 & 1) != 0);
      v3 = v7 - 2;
    }

    else
    {
      LOBYTE(v5) = 0;
    }

    *this = v3;
  }

  v18 = (*a2)++;
  *v18 = v5;
  return this;
}

void pxrInternal__aapl__pxrReserved__::TfEscapeString(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  if (*(a1 + 23) < 0)
  {
    v5 = operator new[](*(a1 + 8) + 1);
    v2 = *v2;
  }

  else
  {
    v5 = operator new[](*(a1 + 23) + 1);
  }

  v10 = v5;
  while (1)
  {
    v9 = v2;
    v6 = *v2;
    if (v6 != 92)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::TfEscapeStringReplaceChar(&v9, &v10, v4);
    v2 = v9;
LABEL_9:
    ++v2;
  }

  if (*v2)
  {
    v7 = v10;
    *v10 = v6;
    v10 = v7 + 1;
    goto LABEL_9;
  }

  v8 = v10;
  *v10 = 0;
  sub_29A02887C(a2, v5, v8 - v5);

  operator delete[](v5);
}

void pxrInternal__aapl__pxrReserved__::TfStringCatPaths(const void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  v7 = &v14;
  sub_29A022DE0(&v14, v6 + 1);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v14.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    memmove(v7, v8, v6);
  }

  *(&v7->__r_.__value_.__l.__data_ + v6) = 47;
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = std::string::append(&v14, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v16 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  pxrInternal__aapl__pxrReserved__::TfNormPath(a3, __p, 0);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_29A11F75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfMakeValidIdentifier(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = a1[1];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_19:
    std::string::push_back(a2, 95);
    return;
  }

  if (!*(a1 + 23))
  {
    goto LABEL_19;
  }

LABEL_3:
  std::string::reserve(a2, v4);
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  v5 = *v2;
  if (((*v2 & 0xDF) - 65) >= 0x1Au)
  {
    v5 = 95;
  }

  std::string::push_back(a2, v5);
  v6 = *(v2 + 1);
  if (v6)
  {
    v7 = v2 + 2;
    do
    {
      if ((v6 - 48) >= 0xAu)
      {
        v8 = 95;
      }

      else
      {
        v8 = v6;
      }

      if (v6 == 95)
      {
        v8 = v6;
      }

      if (((v6 & 0xDF) - 65) >= 0x1Au)
      {
        v6 = v8;
      }

      std::string::push_back(a2, v6);
      v9 = *v7++;
      v6 = v9;
    }

    while (v9);
  }
}

void sub_29A11F87C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfGetXmlEscapedString(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[23];
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 1);
  if ((v4 & 0x80u) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 1);
  }

  if (v4)
  {
    v9 = &v8[v4];
    v10 = v8;
LABEL_8:
    v11 = 0;
    while (*v10 != asc_29B79D9DA[v11])
    {
      if (++v11 == 5)
      {
        if (++v10 != v9)
        {
          goto LABEL_8;
        }

        goto LABEL_43;
      }
    }

    if (v10 == v9 || v10 - v8 == -1)
    {
      goto LABEL_43;
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    sub_29A008E78(v15, "&");
    sub_29A008E78(__p, "&amp;");
    pxrInternal__aapl__pxrReserved__::TfStringReplace(a1, v15, __p, &v17);
    v12 = v14;
    *a2 = v17;
    *(&v17.__r_.__value_.__s + 23) = 0;
    v17.__r_.__value_.__s.__data_[0] = 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    sub_29A008E78(v15, "<");
    sub_29A008E78(__p, "&lt;");
    pxrInternal__aapl__pxrReserved__::TfStringReplace(a2, v15, __p, &v17);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v17;
    *(&v17.__r_.__value_.__s + 23) = 0;
    v17.__r_.__value_.__s.__data_[0] = 0;
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    sub_29A008E78(v15, ">");
    sub_29A008E78(__p, "&gt;");
    pxrInternal__aapl__pxrReserved__::TfStringReplace(a2, v15, __p, &v17);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v17;
    *(&v17.__r_.__value_.__s + 23) = 0;
    v17.__r_.__value_.__s.__data_[0] = 0;
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    sub_29A008E78(v15, "");
    sub_29A008E78(__p, "&quot;");
    pxrInternal__aapl__pxrReserved__::TfStringReplace(a2, v15, __p, &v17);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v17;
    *(&v17.__r_.__value_.__s + 23) = 0;
    v17.__r_.__value_.__s.__data_[0] = 0;
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    sub_29A008E78(v15, "'");
    sub_29A008E78(__p, "&apos;");
    pxrInternal__aapl__pxrReserved__::TfStringReplace(a2, v15, __p, &v17);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v17;
    *(&v17.__r_.__value_.__s + 23) = 0;
    v17.__r_.__value_.__s.__data_[0] = 0;
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }
  }

  else
  {
LABEL_43:
    if (v5 < 0)
    {

      sub_29A008D14(a2, v6, v7);
    }

    else
    {
      *a2 = *a1;
      *(a2 + 16) = *(a1 + 2);
    }
  }
}

void sub_29A11FBDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfStringToLowerAscii(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if ((a1[23] & 0x80u) == 0)
  {
    v4 = a1[23];
  }

  else
  {
    v4 = *(a1 + 1);
  }

  std::string::resize(a2, v4, 0);
  v5 = a1[23];
  if ((v5 & 0x80u) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 1);
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    do
    {
      v9 = *v6++;
      v8 = v9;
      v10 = v9 + 32;
      if ((v9 - 65) < 0x1A)
      {
        v8 = v10;
      }

      *v7++ = v8;
      --v5;
    }

    while (v5);
  }
}

void sub_29A11FCF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A11FD0C(uint64_t a1, unint64_t a2)
{
  if (a2 > (*(a1 + 16) - *a1) >> 4)
  {
    if (a2 >> 60)
    {
      sub_29A00C9A4();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = sub_29A017BD4(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[16 * v6];
    v8 = *(a1 + 8) - *a1;
    v9 = &v4[v3 - v8];
    memcpy(v9, *a1, v8);
    v10 = *a1;
    *a1 = v9;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    if (v10)
    {

      operator delete(v10);
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::TfTemplateString::TfTemplateString(pxrInternal__aapl__pxrReserved__::TfTemplateString *this)
{
  v2 = operator new(0x58uLL);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  *(v2 + 48) = 0;
  *(v2 + 8) = 0;
  *(v2 + 9) = 0;
  *(v2 + 7) = 0;
  *(v2 + 80) = 0;

  return sub_29A120EF8(this, v2);
}

{
  v2 = operator new(0x58uLL);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  *(v2 + 48) = 0;
  *(v2 + 8) = 0;
  *(v2 + 9) = 0;
  *(v2 + 7) = 0;
  *(v2 + 80) = 0;

  return sub_29A120EF8(this, v2);
}

std::string **pxrInternal__aapl__pxrReserved__::TfTemplateString::TfTemplateString(std::string **a1, const std::string *a2)
{
  v4 = operator new(0x58uLL);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  *(v4 + 48) = 0;
  *(v4 + 8) = 0;
  *(v4 + 9) = 0;
  *(v4 + 7) = 0;
  *(v4 + 80) = 0;
  sub_29A120EF8(a1, v4);
  std::string::operator=(*a1, a2);
  return a1;
}

void sub_29A11FEC8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TfTemplateString::Substitute(const std::string **a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::TfTemplateString::_ParseTemplate(a1);
  pxrInternal__aapl__pxrReserved__::TfTemplateString::_EmitParseErrors(a1);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  pxrInternal__aapl__pxrReserved__::TfTemplateString::_Evaluate(a1, a2, &v13, a3);
  v11 = v13;
  v12 = v14;
  while (v11 != v12)
  {
    v8[0] = "tf/templateString.cpp";
    v8[1] = "Substitute";
    v8[2] = 55;
    v8[3] = "string pxrInternal__aapl__pxrReserved__::TfTemplateString::Substitute(const Mapping &) const";
    v9 = 0;
    v10 = 1;
    v6 = sub_29A1204E0(&v11);
    v7 = *v6;
    if ((*v6)[23] < 0)
    {
      v7 = *v7;
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v8, "%s", v7);
    sub_29A102B2C(&v11);
  }

  v8[0] = &v13;
  sub_29A012C90(v8);
}

void sub_29A11FFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  a10 = &a18;
  sub_29A012C90(&a10);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfTemplateString::_ParseTemplate(const std::string **this)
{
  result = sub_29A0EB5BC(&v5, &(*this)[3].__r_.__value_.__l.__size_);
  if (((*this)[2].__r_.__value_.__s.__data_[0] & 1) == 0)
  {
    v4 = 0;
    do
    {
      result = pxrInternal__aapl__pxrReserved__::TfTemplateString::_FindNextPlaceHolder(this, &v4, &(*this)[2].__r_.__value_.__l.__size_);
    }

    while ((result & 1) != 0);
    (*this)[2].__r_.__value_.__s.__data_[0] = 1;
  }

  v3 = v5;
  if (v5)
  {
    __dmb(0xBu);
    *v3 = 0;
  }

  return result;
}

void sub_29A120098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11)
{
  if (a11)
  {
    __dmb(0xBu);
    *a11 = 0;
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfTemplateString::_EmitParseErrors(pxrInternal__aapl__pxrReserved__::TfTemplateString *this)
{
  result = sub_29A0EB5BC(&v12, *this + 80);
  v3 = *(*this + 64);
  v10 = *(*this + 56);
  v11 = v3;
  while (v10 != v11)
  {
    v7[0] = "tf/templateString.cpp";
    v7[1] = "_EmitParseErrors";
    v7[2] = 73;
    v7[3] = "void pxrInternal__aapl__pxrReserved__::TfTemplateString::_EmitParseErrors() const";
    v8 = 0;
    v9 = 1;
    v4 = sub_29A1204E0(&v10);
    v5 = *v4;
    if ((*v4)[23] < 0)
    {
      v5 = *v5;
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v7, "%s", v5);
    result = sub_29A102B2C(&v10);
  }

  v6 = v12;
  if (v12)
  {
    __dmb(0xBu);
    *v6 = 0;
  }

  return result;
}

void sub_29A120188(_Unwind_Exception *a1)
{
  v2 = *(v1 - 64);
  if (v2)
  {
    __dmb(0xBu);
    *v2 = 0;
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TfTemplateString::_Evaluate(const std::string **a1@<X0>, uint64_t a2@<X1>, const void **a3@<X2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  sub_29A0EB5BC(&v44, &(*a1)[3].__r_.__value_.__l.__size_);
  v7 = 0;
  size = (*a1)[1].__r_.__value_.__l.__size_;
  data = (*a1)[1].__r_.__value_.__l.__data_;
  v43 = size;
  while (data != v43)
  {
    v9 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
    if (v9 >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = a4->__r_.__value_.__r.__words[0];
    }

    if (v9 >= 0)
    {
      v11 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v11 = a4->__r_.__value_.__l.__size_;
    }

    v12 = *a1;
    if (SHIBYTE((*a1)->__r_.__value_.__r.__words[2]) < 0)
    {
      v12 = v12->__r_.__value_.__r.__words[0];
    }

    v13 = sub_29A12071C(&data);
    sub_29A12140C(a4, v10 + v11, v12 + v7, v12 + *(*v13 + 24), *(*v13 + 24) - v7);
    v14 = sub_29A12071C(&data);
    v15 = *v14;
    if (*(*v14 + 23) < 0)
    {
      v15 = *v15;
    }

    if (*v15 == 36)
    {
      v16 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
      if ((v16 & 0x80u) == 0)
      {
        v17 = a4;
      }

      else
      {
        v17 = a4->__r_.__value_.__r.__words[0];
      }

      if ((v16 & 0x80u) != 0)
      {
        v16 = a4->__r_.__value_.__l.__size_;
      }

      v18.__i_ = v17 + v16;
      std::string::insert(a4, v18, 36);
    }

    else
    {
      v19 = sub_29A12071C(&data);
      v20 = sub_29A01BCCC(a2, *v19);
      v21 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
      if (v21 >= 0)
      {
        v22 = a4;
      }

      else
      {
        v22 = a4->__r_.__value_.__r.__words[0];
      }

      if (v21 >= 0)
      {
        v23 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v23 = a4->__r_.__value_.__l.__size_;
      }

      if (a2 + 8 == v20)
      {
        v26 = *a1;
        if (SHIBYTE((*a1)->__r_.__value_.__r.__words[2]) < 0)
        {
          v26 = v26->__r_.__value_.__r.__words[0];
        }

        v27 = sub_29A12071C(&data);
        v28 = *a1;
        if (SHIBYTE((*a1)->__r_.__value_.__r.__words[2]) < 0)
        {
          v28 = v28->__r_.__value_.__r.__words[0];
        }

        v29 = *(*v27 + 24);
        v30 = *(*sub_29A12071C(&data) + 24);
        v31 = v28 + v30 + *(*sub_29A12071C(&data) + 32);
        sub_29A12140C(a4, v22 + v23, v26 + v29, v31, v31 - (v26 + v29));
        if (a3)
        {
          v32 = sub_29A12071C(&data);
          v35 = *v32;
          if (*(*v32 + 23) < 0)
          {
            v35 = *v35;
          }

          pxrInternal__aapl__pxrReserved__::TfStringPrintf("No mapping found for placeholder '%s'", v33, v34, v35);
          sub_29A091654(a3, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      else
      {
        v24 = *(v20 + 79);
        if ((v24 & 0x8000000000000000) != 0)
        {
          v25 = *(v20 + 56);
          v24 = *(v20 + 64);
        }

        else
        {
          v25 = (v20 + 56);
        }

        sub_29A12140C(a4, v22 + v23, v25, &v25[v24], v24);
      }
    }

    v36 = *(*sub_29A12071C(&data) + 24);
    v7 = *(*sub_29A12071C(&data) + 32) + v36;
    sub_29A120744(&data);
  }

  std::string::basic_string(&__p, *a1, v7, 0xFFFFFFFFFFFFFFFFLL, &data);
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
    v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a4, p_p, v38);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v39 = v44;
  if (v44)
  {
    __dmb(0xBu);
    *v39 = 0;
  }
}

void sub_29A120470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, _BYTE *a20)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    __dmb(0xBu);
    *a20 = 0;
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A1204E0(void *result)
{
  if (*result == result[1])
  {
    sub_29B28E40C();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfTemplateString::SafeSubstitute(const std::string **a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::TfTemplateString::_ParseTemplate(a1);
  pxrInternal__aapl__pxrReserved__::TfTemplateString::_EmitParseErrors(a1);

  pxrInternal__aapl__pxrReserved__::TfTemplateString::_Evaluate(a1, a2, 0, a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfTemplateString::GetEmptyMapping@<X0>(const std::string **this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  *a2 = a2 + 8;
  result = pxrInternal__aapl__pxrReserved__::TfTemplateString::IsValid(this);
  if (result)
  {
    result = sub_29A0EB5BC(&v17, &(*this)[3].__r_.__value_.__l.__size_);
    size = (*this)[1].__r_.__value_.__l.__size_;
    data = (*this)[1].__r_.__value_.__l.__data_;
    v16 = size;
    while (data != v16)
    {
      v6 = sub_29A12071C(&data);
      v7 = *v6;
      if (*(*v6 + 23) < 0)
      {
        sub_29A008D14(v10, *v7, *(v7 + 1));
      }

      else
      {
        v8 = *v7;
        v11 = *(v7 + 2);
        *v10 = v8;
      }

      __p = 0;
      v13 = 0;
      v14 = 0;
      sub_29A121054(a2, v10, v10);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v11) < 0)
      {
        operator delete(v10[0]);
      }

      result = sub_29A120744(&data);
    }

    v9 = v17;
    if (v17)
    {
      __dmb(0xBu);
      *v9 = 0;
    }
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::TfTemplateString::IsValid(const std::string **this)
{
  pxrInternal__aapl__pxrReserved__::TfTemplateString::_ParseTemplate(this);
  sub_29A0EB5BC(&v5, &(*this)[3].__r_.__value_.__l.__size_);
  v2 = *this;
  if ((SHIBYTE((*this)->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v2->__r_.__value_.__l.__size_)
    {
      goto LABEL_3;
    }
  }

  else if (*(&(*this)->__r_.__value_.__s + 23))
  {
LABEL_3:
    result = v2[2].__r_.__value_.__l.__size_ == v2[2].__r_.__value_.__r.__words[2];
    goto LABEL_6;
  }

  result = 1;
LABEL_6:
  v4 = v5;
  if (v5)
  {
    __dmb(0xBu);
    *v4 = 0;
  }

  return result;
}

void *sub_29A12071C(void *result)
{
  if (*result == result[1])
  {
    sub_29B28E464();
  }

  return result;
}

void *sub_29A120744(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::TfTemplateString::_PlaceHolder>>::operator++() [T = std::vector<pxrInternal__aapl__pxrReserved__::TfTemplateString::_PlaceHolder>, Reverse = false]";
    v4 = 0;
    v5 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v3, "iterator exhausted");
  }

  else
  {
    *a1 += 40;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::TfTemplateString::GetParseErrors(const std::string **this@<X0>, void *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::TfTemplateString::_ParseTemplate(this);
  sub_29A0EB5BC(&v4, &(*this)[3].__r_.__value_.__l.__size_);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29A120844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  if (a9)
  {
    __dmb(0xBu);
    *a9 = 0;
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfTemplateString::_FindNextPlaceHolder(const std::string **a1, std::string::size_type *a2, const void **a3)
{
  v6 = std::string::find(*a1, 36, *a2);
  *a2 = v6;
  if (v6 == -1)
  {
    return 0;
  }

  v7 = v6;
  v8 = v6 + 1;
  v9 = *a1;
  v10 = SHIBYTE((*a1)->__r_.__value_.__r.__words[2]);
  v11 = (v10 & 0x8000000000000000) != 0 ? v9->__r_.__value_.__l.__size_ : SHIBYTE((*a1)->__r_.__value_.__r.__words[2]);
  if (v8 >= v11)
  {
    return 0;
  }

  v12 = *a1;
  if ((v10 & 0x80000000) != 0)
  {
    v12 = v9->__r_.__value_.__r.__words[0];
  }

  if (v12->__r_.__value_.__s.__data_[v8] == 36)
  {
    sub_29A008E78(&v56, "$");
    v13 = *a2;
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(&__p, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v56;
    }

    *&v58 = v13;
    *(&v58 + 1) = 2;
    size = v9[1].__r_.__value_.__l.__size_;
    if (size >= v9[1].__r_.__value_.__r.__words[2])
    {
      v19 = sub_29A1210FC(&v9[1], &__p);
      v20 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v9[1].__r_.__value_.__l.__size_ = v19;
      if (v20 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v18 = *&__p.__r_.__value_.__l.__data_;
      *(size + 16) = *(&__p.__r_.__value_.__l + 2);
      *size = v18;
      memset(&__p, 0, sizeof(__p));
      *(size + 24) = v58;
      v9[1].__r_.__value_.__l.__size_ = size + 40;
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    v21 = *a2 + 2;
    goto LABEL_23;
  }

  if ((v10 & 0x80000000) != 0)
  {
    v15 = v9->__r_.__value_.__r.__words[0];
    if (*(v9->__r_.__value_.__r.__words[0] + v8) != 123)
    {
      v16 = v9->__r_.__value_.__l.__size_;
      goto LABEL_44;
    }

LABEL_26:
    sub_29A008E78(&v56, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_");
    std::string::push_back(&v56, 123);
    __p = v56;
    memset(&v56, 0, sizeof(v56));
    v24 = SHIBYTE(v9->__r_.__value_.__r.__words[2]);
    if ((v24 & 0x8000000000000000) != 0)
    {
      v25 = v9;
      v9 = v9->__r_.__value_.__r.__words[0];
      v24 = v25->__r_.__value_.__l.__size_;
    }

    v26 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v27 = __p.__r_.__value_.__r.__words[0];
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
      v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = __p.__r_.__value_.__l.__size_;
    }

    if (v24 <= v8)
    {
      v32 = -1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v30 = v9 + v8;
      if (v29)
      {
        v54 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v55 = __p.__r_.__value_.__r.__words[0];
        v31 = ~v7 + v24;
        do
        {
          if (!memchr(p_p, *v30, v29))
          {
            v27 = v55;
            v26 = v54;
            goto LABEL_66;
          }

          ++v30;
          --v31;
        }

        while (v31);
        v32 = -1;
        v27 = v55;
        if ((v54 & 0x80000000) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
LABEL_66:
        v32 = v30 - v9;
        if ((v26 & 0x80000000) == 0)
        {
          goto LABEL_69;
        }
      }
    }

    operator delete(v27);
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

LABEL_69:
    if (v32 == -1)
    {
      if (a3)
      {
        pxrInternal__aapl__pxrReserved__::TfStringPrintf("Cannot find close quote for placeholder starting at pos %zu", v22, v23, *a2);
        sub_29A091654(a3, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      *a2 = v8;
      return 1;
    }

    v42 = *a1;
    v43 = *a1;
    if (SHIBYTE((*a1)->__r_.__value_.__r.__words[2]) < 0)
    {
      v43 = v42->__r_.__value_.__r.__words[0];
    }

    if (v43->__r_.__value_.__s.__data_[v32] != 125)
    {
      if (a3)
      {
        if (SHIBYTE(v42->__r_.__value_.__r.__words[2]) < 0)
        {
          v42 = v42->__r_.__value_.__r.__words[0];
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("Invalid character '%c' in identifier at pos %zu", v42, v23, v42->__r_.__value_.__s.__data_[v32], v32);
        sub_29A091654(a3, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      *a2 = v32;
      return 1;
    }

    v44 = v32 - *a2;
    v45 = v44 + 1;
    std::string::basic_string(&v56, v42, v7 + 2, v44 - 2, &__p);
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      v47 = v56.__r_.__value_.__l.__size_;
      if (v56.__r_.__value_.__l.__size_)
      {
        v48 = *a1;
        v49 = *a2;
        sub_29A008D14(&__p, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
LABEL_89:
        *&v58 = v49;
        *(&v58 + 1) = v45;
        v50 = v48[1].__r_.__value_.__l.__size_;
        if (v50 < v48[1].__r_.__value_.__r.__words[2])
        {
          v51 = *&__p.__r_.__value_.__l.__data_;
          *(v50 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v50 = v51;
          memset(&__p, 0, sizeof(__p));
          *(v50 + 24) = v58;
          v48[1].__r_.__value_.__l.__size_ = v50 + 40;
          goto LABEL_96;
        }

        v52 = sub_29A1210FC(&v48[1], &__p);
        v53 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v48[1].__r_.__value_.__l.__size_ = v52;
        if (v53 < 0)
        {
          goto LABEL_95;
        }

        goto LABEL_96;
      }
    }

    else if (*(&v56.__r_.__value_.__s + 23))
    {
      v48 = *a1;
      v49 = *a2;
      __p = v56;
      goto LABEL_89;
    }

    if (a3)
    {
      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Empty placeholder at pos %zu", v46, v47, *a2);
      sub_29A091654(a3, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_95:
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

LABEL_96:
    *a2 += v45;
    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 1;
    }

    goto LABEL_97;
  }

  if (v9->__r_.__value_.__s.__data_[v8] == 123)
  {
    goto LABEL_26;
  }

  v15 = *a1;
  v16 = SHIBYTE((*a1)->__r_.__value_.__r.__words[2]);
LABEL_44:
  if (v16 <= v8)
  {
    goto LABEL_50;
  }

  v33 = v6 + 1;
  while (memchr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_", v15->__r_.__value_.__s.__data_[v33], 0x3FuLL))
  {
    if (v16 == ++v33)
    {
      goto LABEL_50;
    }
  }

  if (v33 == -1)
  {
LABEL_50:
    if ((v10 & 0x80000000) != 0)
    {
      v33 = v9->__r_.__value_.__l.__size_;
    }

    else
    {
      v33 = v10;
    }
  }

  v34 = v33 - v7;
  std::string::basic_string(&v56, v9, v8, v33 - v7 - 1, &__p);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v56.__r_.__value_.__l.__size_)
    {
      v35 = *a1;
      v36 = *a2;
      sub_29A008D14(&__p, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
LABEL_58:
      *&v58 = v36;
      *(&v58 + 1) = v33 - v7;
      v37 = v35[1].__r_.__value_.__l.__size_;
      if (v37 >= v35[1].__r_.__value_.__r.__words[2])
      {
        v39 = sub_29A1210FC(&v35[1], &__p);
        v40 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v35[1].__r_.__value_.__l.__size_ = v39;
        if (v40 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v38 = *&__p.__r_.__value_.__l.__data_;
        *(v37 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v37 = v38;
        memset(&__p, 0, sizeof(__p));
        *(v37 + 24) = v58;
        v35[1].__r_.__value_.__l.__size_ = v37 + 40;
      }

      v41 = SHIBYTE(v56.__r_.__value_.__r.__words[2]);
      *a2 += v34;
      if ((v41 & 0x80000000) == 0)
      {
        return 1;
      }

      goto LABEL_97;
    }

    *a2 += v34;
LABEL_97:
    operator delete(v56.__r_.__value_.__l.__data_);
    return 1;
  }

  if (*(&v56.__r_.__value_.__s + 23))
  {
    v35 = *a1;
    v36 = *a2;
    __p = v56;
    goto LABEL_58;
  }

  v21 = *a2 + v34;
LABEL_23:
  *a2 = v21;
  return 1;
}

void sub_29A120DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A120E54(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A120EA8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29A120EA8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void *sub_29A120EF8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2040418;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A120F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_29A120FEC(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A120F7C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A120FAC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2040468))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A120FEC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (a2 + 56);
    sub_29A012C90(&v3);
    v3 = (a2 + 24);
    sub_29A120E54(&v3);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete(a2);
  }
}

_OWORD *sub_29A121054(uint64_t **a1, const void **a2, uint64_t a3)
{
  v5 = sub_29A00B0D0(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x50uLL);
    v6[2] = *a3;
    *(v6 + 6) = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(v6 + 56) = *(a3 + 24);
    *(v6 + 9) = *(a3 + 40);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    sub_29A00B204(a1, v9, v7, v6);
  }

  return v6;
}

uint64_t sub_29A1210FC(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A10E224(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = (v7 + 40 * v2);
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = v7 + 40 * v6;
  v9 = *a2;
  *(v8 + 2) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 24);
  *&v18 = v8 + 40;
  v10 = *(a1 + 8);
  v11 = v8 + *a1 - v10;
  sub_29A12123C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29A121378(&v16);
  return v15;
}

void sub_29A121228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A121378(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A12123C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 = (v6 + 40);
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 40);
    }
  }

  return sub_29A1212F8(v9);
}

uint64_t sub_29A1212F8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A121330(a1);
  }

  return a1;
}

void sub_29A121330(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 17);
    v1 -= 5;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_29A121378(uint64_t a1)
{
  sub_29A1213B0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A1213B0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_29A12140C(std::string *this, uint64_t a2, std::string::value_type *a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = a2 - this->__r_.__value_.__r.__words[0];
    if (__n_add)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    return v9 + v8;
  }

  v8 = a2 - this;
  if (!__n_add)
  {
    v9 = this;
    return v9 + v8;
  }

  v9 = this;
LABEL_6:
  if (v9 <= a3 && &v9->__r_.__value_.__l.__data_ + size + 1 > a3)
  {
    sub_29A121648(&__p, a3, a4);
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
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
      v10 = __p.__r_.__value_.__l.__size_;
    }

    v12 = sub_29A121538(this, __n_add, v8, p_p, p_p + v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return v12;
  }

  return sub_29A121538(this, __n_add, v8, a3, a4);
}

void sub_29A12151C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A121538(std::string *this, std::string::size_type __n_add, std::string::size_type __n_copy, _BYTE *a4, _BYTE *a5)
{
  v9 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - size >= __n_add)
    {
      v12 = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 22;
    v12 = this;
    if (22 - size >= __n_add)
    {
LABEL_7:
      v13 = size - __n_copy;
      if (size == __n_copy)
      {
        size = __n_copy;
      }

      else
      {
        memmove(v12 + __n_copy + __n_add, v12 + __n_copy, v13);
      }

      goto LABEL_10;
    }
  }

  std::string::__grow_by(this, v11, size + __n_add - v11, size, __n_copy, 0, __n_add);
  v9->__r_.__value_.__l.__size_ = size + __n_add;
  v12 = v9->__r_.__value_.__r.__words[0];
LABEL_10:
  v14 = size + __n_add;
  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&v9->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  v12->__r_.__value_.__s.__data_[v14] = 0;
  if (a5 != a4)
  {
    memmove(v12 + __n_copy, a4, a5 - a4);
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  return v9 + __n_copy;
}

void sub_29A121648(std::string *this, std::string::value_type *a2, std::string::value_type *a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      std::string::push_back(this, *v4++);
    }

    while (v4 != a3);
  }
}

void sub_29A1216A0(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B43C09ALL & 0x7FFFFFFFFFFFFFFFLL), &v13);
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
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry*> &)::isInitializing, 1u))
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
      v8 = operator new(0x4000uLL, 0x80uLL);
      for (i = 0; i != 0x4000; i += 128)
      {
        v11 = &v8[i];
        *v11 = 0uLL;
        *(v11 + 1) = 0uLL;
        *(v11 + 8) = 1065353216;
        *(v11 + 10) = 32;
        v11[44] = 0;
      }

      v12 = atomic_load(a1);
      if (v12)
      {
        if (v8 != v12)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v17 = 86;
          v18 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry]";
          v19 = 0;
          v20 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "race detected setting singleton instance", v9);
        }
      }

      else if (atomic_exchange(a1, v8))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v17 = 90;
        v18 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry]";
        v19 = 0;
        v20 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v9, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v13);
  if (v14)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v15, v14);
  }

  return v6;
}

void sub_29A1218DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_instance, &v1, 0);
    if (v1 == i)
    {
      for (j = 16256; j != -128; j -= 128)
      {
        sub_29A0FB1C0(i + j);
      }

      JUMPOUT(0x29C2C4510);
    }

    result = sched_yield();
  }

  return result;
}

void sub_29A121A5C()
{
  pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2040480, 0, 0, 0, 8, 0, 0);
  v0 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A2040490, 0, 0, 0, 24, 0, 0);
  v1 = *pxrInternal__aapl__pxrReserved__::TfType::GetRoot(v0);
  sub_29A008E78(__p, "vector<TfToken>");
  pxrInternal__aapl__pxrReserved__::TfType::AddAlias(v0, v1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A121B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(pxrInternal__aapl__pxrReserved__::TfToken *this)
{
  if ((atomic_load_explicit(&qword_2A173F150, memory_order_acquire) & 1) == 0)
  {
    sub_29B28E4BC();
  }

  return &qword_2A173F158;
}

unint64_t *pxrInternal__aapl__pxrReserved__::TfToken::TfToken(unint64_t *a1, __int128 *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_CreateInstance();
  }

  *a1 = sub_29A122154(v3, a2, 0);
  return a1;
}

{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_CreateInstance();
  }

  *a1 = sub_29A122154(v3, a2, 1);
  return a1;
}

pxrInternal__aapl__pxrReserved__::TfToken *pxrInternal__aapl__pxrReserved__::TfToken::TfToken(pxrInternal__aapl__pxrReserved__::TfToken *this, char *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_CreateInstance();
  }

  *this = sub_29A12296C(v3, a2, 0);
  return this;
}

unint64_t *pxrInternal__aapl__pxrReserved__::TfToken::TfToken(unint64_t *a1, char *a2)
{
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_instance);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_CreateInstance();
  }

  *a1 = sub_29A12296C(v3, a2, 1);
  return a1;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfToken::Find@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = 0;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_CreateInstance();
  }

  result = sub_29A122C68(v4, a1);
  *a2 = result;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::TfToken::operator==(pxrInternal__aapl__pxrReserved__::TfToken *a1, const void **a2)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
    v3 = &qword_2A173F158;
  }

  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = *(v3 + 23);
  }

  else
  {
    v5 = v3[1];
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if (v6 < 0)
  {
    v6 = a2[1];
  }

  if (v5 != v6)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = *v3;
  }

  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  return memcmp(v8, v9, v5) == 0;
}

BOOL pxrInternal__aapl__pxrReserved__::TfToken::operator==(pxrInternal__aapl__pxrReserved__::TfToken *a1, char *__s)
{
  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
    v3 = &qword_2A173F158;
  }

  v4 = strlen(__s);
  v5 = *(v3 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(v3, __s, v4) == 0;
  }

  if (v4 == v3[1])
  {
    if (v4 == -1)
    {
      sub_29A0F26CC();
    }

    v3 = *v3;
    return memcmp(v3, __s, v4) == 0;
  }

  return 0;
}

unint64_t *pxrInternal__aapl__pxrReserved__::TfToTokenVector@<X0>(__int128 **a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return sub_29A124994(a2, v2, v3, v4);
}

std::string *pxrInternal__aapl__pxrReserved__::TfToStringVector@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_29A012B58(a2, (a1[1] - *a1) >> 3);
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(v5 + 8 * v7) & 0xFFFFFFFFFFFFFFF8;
      if (v8)
      {
        v9 = (v8 + 16);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
        v9 = &qword_2A173F158;
      }

      result = std::string::operator=((*a2 + v6), v9);
      ++v7;
      v5 = *a1;
      v6 += 24;
    }

    while (v7 != (a1[1] - *a1) >> 3);
  }

  return result;
}

void sub_29A121F34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, void *a2)
{
  v3 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (v3)
  {
    v4 = (v3 + 16);
    if (*(v3 + 39) < 0)
    {
      v4 = *v4;
    }
  }

  else
  {
    v4 = "";
  }

  v5 = strlen(v4);

  return sub_29A00911C(a1, v4, v5);
}

{
  sub_29A00911C(a1, "[", 1);
  v11 = *a2;
  v12 = a2 + 1;
  if (v11 != a2 + 1)
  {
    v4 = sub_29A13E4D4(&v11);
    v5 = v4[1];
    v9 = *v4;
    v10 = v5;
    pxrInternal__aapl__pxrReserved__::operator<<(a1, &v9);
    sub_29A13E500(&v11);
    while (v11 != v12)
    {
      sub_29A00911C(a1, ", ", 2);
      v6 = sub_29A13E4D4(&v11);
      v7 = v6[1];
      v9 = *v6;
      v10 = v7;
      pxrInternal__aapl__pxrReserved__::operator<<(a1, &v9);
      sub_29A13E500(&v11);
    }
  }

  sub_29A00911C(a1, "]", 1);
  return a1;
}

{
  LOBYTE(v9[0]) = 91;
  v3 = sub_29A00911C(a1, v9, 1);
  *v9 = *a2;
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, v9);
  v5 = sub_29A00911C(v4, "...", 3);
  v8 = a2[1];
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, &v8);
  v10 = 93;
  return sub_29A00911C(v6, &v10, 1);
}

{
  LOBYTE(v9[0]) = 91;
  v3 = sub_29A00911C(a1, v9, 1);
  *v9 = *a2;
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, v9);
  v5 = sub_29A00911C(v4, ":", 1);
  v8 = a2[1];
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, &v8);
  v10 = 93;
  return sub_29A00911C(v6, &v10, 1);
}

{
  v3 = sub_29A00911C(a1, "( ", 2);
  v4 = MEMORY[0x29C2C1F00](v3, *a2);
  v5 = sub_29A00911C(v4, " ", 1);
  v6 = MEMORY[0x29C2C1F00](v5, a2[1]);

  return sub_29A00911C(v6, ")", 2);
}

{
  v3 = sub_29A00911C(a1, "( ", 2);
  v4 = MEMORY[0x29C2C1F00](v3, *a2);
  v5 = sub_29A00911C(v4, " ", 1);
  v6 = MEMORY[0x29C2C1F00](v5, a2[1]);
  v7 = sub_29A00911C(v6, " ", 1);
  v8 = MEMORY[0x29C2C1F00](v7, a2[2]);

  return sub_29A00911C(v8, ")", 2);
}

{
  v9 = *a2;
  v10 = a2 + 1;
  while (v9 != v10)
  {
    v3 = sub_29A1FA4D4(&v9);
    v4 = pxrInternal__aapl__pxrReserved__::operator<<(a1, (*v3 + 28));
    v5 = sub_29A00911C(v4, ": ", 2);
    v6 = sub_29A1FA4D4(&v9);
    v7 = pxrInternal__aapl__pxrReserved__::operator<<(v5, (*v6 + 36));
    sub_29A00911C(v7, "\n", 1);
    sub_29A1FA50C(&v9);
  }

  return a1;
}

{
  v4 = sub_29A00911C(a1, "(", 1);
  v5 = *a2;
  v29 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      v29 = v6;
    }
  }

  v7 = pxrInternal__aapl__pxrReserved__::operator<<(v4, &v29);
  v8 = sub_29A00911C(v7, ", ", 2);
  v9 = a2[1];
  v28 = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      v28 = v10;
    }
  }

  v11 = pxrInternal__aapl__pxrReserved__::operator<<(v8, &v28);
  v12 = sub_29A00911C(v11, ", ", 2);
  v13 = a2[2];
  v27 = v13;
  if ((v13 & 7) != 0)
  {
    v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v14;
    }
  }

  v15 = pxrInternal__aapl__pxrReserved__::operator<<(v12, &v27);
  v16 = sub_29A00911C(v15, ", ", 2);
  v17 = a2[3];
  v26 = v17;
  if ((v17 & 7) != 0)
  {
    v18 = (v17 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v18;
    }
  }

  v19 = pxrInternal__aapl__pxrReserved__::operator<<(v16, &v26);
  v20 = sub_29A00911C(v19, ", (", 3);
  v30 = a2[8];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(v20, a2 + 4, &v30, sub_29A19E054);
  v21 = sub_29A00911C(v20, "), (", 4);
  v30 = a2[13];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(v21, a2 + 9, &v30, sub_29A19E054);
  v22 = sub_29A00911C(v21, "), (", 4);
  v30 = a2[18];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(v22, a2 + 14, &v30, sub_29A18ECB4);
  v23 = sub_29A00911C(v22, "), (", 4);
  v30 = a2[23];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(v23, a2 + 19, &v30, sub_29A19E054);
  v24 = sub_29A00911C(v23, "), (", 4);
  v30 = a2[28];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(v24, a2 + 24, &v30, sub_29A18ECB4);
  sub_29A00911C(v24, "))", 2);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

{
  v4 = sub_29A00911C(a1, "RenderPassAovBinding: {", 23);
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v4, a2);
  v6 = sub_29A00911C(v5, ", ", 2);
  v7 = MEMORY[0x29C2C1E80](v6, a2[1]);
  v8 = sub_29A00911C(v7, ", ", 2);
  v9 = pxrInternal__aapl__pxrReserved__::operator<<(v8, (a2 + 2));
  v10 = sub_29A00911C(v9, ", ", 2);
  v11 = pxrInternal__aapl__pxrReserved__::operator<<(v10, (a2 + 3));
  v12 = sub_29A00911C(v11, ", ", 2);
  sub_29A00911C(v12, "aovSettings: { ", 15);
  for (i = a2[7]; i; i = *i)
  {
    v14 = pxrInternal__aapl__pxrReserved__::operator<<(a1, i + 2);
    v15 = sub_29A00911C(v14, ": ", 2);
    v16 = pxrInternal__aapl__pxrReserved__::operator<<(v15, (i + 3));
    sub_29A00911C(v16, ", ", 2);
  }

  sub_29A00911C(a1, "}}", 2);
  return a1;
}

{
  v3 = pxrInternal__aapl__pxrReserved__::operator<<(a1, a2);
  v4 = sub_29A00911C(v3, ", ", 2);
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v4, a2 + 1);
  v6 = sub_29A00911C(v5, ", ", 2);

  return pxrInternal__aapl__pxrReserved__::operator<<(v6, a2 + 2);
}

{
  v4 = sub_29A00911C(a1, "name: ", 6);
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v4, a2 + 1);
  v6 = sub_29A00911C(v5, ", repr sel: ", 12);
  v7 = pxrInternal__aapl__pxrReserved__::operator<<(v6, a2 + 2);
  v8 = sub_29A00911C(v7, ", mat tag: ", 11);
  pxrInternal__aapl__pxrReserved__::operator<<(v8, a2 + 6);
  return a1;
}

{
  v5 = a2[5];
  v4 = a2[6];
  sub_29A00911C(a1, "Buffer Source:\n", 15);
  v6 = sub_29A00911C(a1, "    Name:      ", 15);
  v7 = pxrInternal__aapl__pxrReserved__::operator<<(v6, a2 + 2);
  sub_29A00911C(v7, "\n", 1);
  v8 = sub_29A00911C(a1, "    Size:      ", 15);
  v9 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(v5, v4);
  v10 = MEMORY[0x29C2C1F00](v8, v9);
  sub_29A00911C(v10, "\n", 1);
  v11 = sub_29A00911C(a1, "    Type:      ", 15);
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A2076058, v5, __p);
  if ((v21 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v13 = v21;
  }

  else
  {
    v13 = __p[1];
  }

  v14 = sub_29A00911C(v11, v12, v13);
  sub_29A00911C(v14, "\n", 1);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = sub_29A00911C(a1, "    Count:     ", 15);
  v16 = MEMORY[0x29C2C1F00](v15, v4);
  sub_29A00911C(v16, "\n", 1);
  v17 = sub_29A00911C(a1, "    Num elems: ", 15);
  v18 = MEMORY[0x29C2C1F00](v17, a2[7]);
  sub_29A00911C(v18, "\n", 1);
  return a1;
}

{
  v4 = sub_29A00911C(a1, "ColorChannelTask Params: (...) ", 31);
  v5 = pxrInternal__aapl__pxrReserved__::operator<<(v4, a2);
  sub_29A00911C(v5, " ", 1);
  return a1;
}

{
  v4 = sub_29A00911C(a1, "PresentTask Params: (...) ", 26);
  pxrInternal__aapl__pxrReserved__::operator<<(v4, a2);
  return a1;
}

{
  v4 = sub_29A00911C(a1, "HdxVisualizeAovTaskParams Params: ", 34);
  pxrInternal__aapl__pxrReserved__::operator<<(v4, a2);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::TfDumpTokenStats(pxrInternal__aapl__pxrReserved__ *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_instance);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_TokenRegistry>::_CreateInstance();
  }

  sub_29A122008(v2);
}

void sub_29A122008(uint64_t a1)
{
  v1 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v2 = a1 + 44;
  do
  {
    sub_29A0EB5BC(&v13, v2);
    *&v12 = *(v2 - 20);
    *(&v12 + 1) = v1;
    sub_29A03A998(&v15, &v12);
    v3 = v13;
    if (v13)
    {
      __dmb(0xBu);
      *v3 = 0;
    }

    ++v1;
    v2 += 128;
  }

  while (v1 != 128);
  v4 = 126 - 2 * __clz((v16 - v15) >> 4);
  if (v16 == v15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_29A122F5C(v15, v16, &v13, v5, 1);
  puts("Set # -- Size");
  v13 = v15;
  v14 = v16;
  while (v13 != v14)
  {
    v8 = *(*sub_29A122EA4(&v13, v6, v7) + 8);
    v11 = sub_29A122EA4(&v13, v9, v10);
    printf("%zu -- %zu\n", v8, **v11);
    sub_29A122EDC(&v13);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_29A122118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(v14 - 40);
  if (v16)
  {
    *(v14 - 32) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29A122154(uint64_t a1, __int128 *a2, int a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 1);
  }

  if (!v3)
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

  v8 = *v7;
  if (*v7)
  {
    v9 = 0;
    v10 = v7 + 1;
    do
    {
      v9 = v8 - v9 + 8 * v9;
      v11 = *v10++;
      v8 = v11;
    }

    while (v11);
    v12 = v9 & 0x7F;
  }

  else
  {
    v12 = 0;
  }

  v14 = a1 + (v12 << 7);
  sub_29A0EB5BC(&v45, v14 + 44);
  if (*(a2 + 23) >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  __p[0] = 0;
  __p[1] = 0;
  v43 = 0;
  v44 = v15;
  v16 = sub_29A1224A8(v14, v39);
  v17 = v16;
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
    if (v17)
    {
      goto LABEL_18;
    }

LABEL_22:
    v20 = *(v14 + 40);
    if (v20)
    {
      LODWORD(v21) = v20 - 1;
    }

    else
    {
      v22 = *(v14 + 8);
      v23 = v22;
      v24 = *(v14 + 32);
      if (((*(v14 + 24) + 1) / v22) <= v24)
      {
        goto LABEL_38;
      }

      v25 = *(v14 + 16);
      if (v25)
      {
        do
        {
          v26 = atomic_load((v25 + 16));
          v27 = *v25;
          if (v26 == 1)
          {
            sub_29A0FC808(v14, v25);
          }

          v25 = v27;
        }

        while (v27);
        v22 = *(v14 + 8);
        v24 = *(v14 + 32);
        v23 = v22;
      }

      if (v22)
      {
        v28 = *(v14 + 24) / v23;
      }

      else
      {
        v28 = 0.0;
      }

      v21 = ((v24 - v28) * v23);
      if (v21 <= 0x20)
      {
        LODWORD(v21) = 32;
      }
    }

    *(v14 + 40) = v21;
LABEL_38:
    v29 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
    if (v29)
    {
      v30 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("TfToken", 0);
    }

    else
    {
      v30 = 0;
    }

    v31 = 0;
    v32 = *(a2 + 23);
    if (v32 >= 0)
    {
      v33 = a2;
    }

    else
    {
      v33 = *a2;
    }

    for (i = 56; i != -8; i -= 8)
    {
      v31 |= *v33 << i;
      if (*v33)
      {
        ++v33;
      }
    }

    if (v32 < 0)
    {
      sub_29A008D14(&__dst, *a2, *(a2 + 1));
    }

    else
    {
      __dst = *a2;
      v47 = *(a2 + 2);
    }

    v40 = v12;
    v41 = v31;
    v35 = __p;
    v43 = v47;
    *__p = __dst;
    if (v47 < 0)
    {
      v35 = __dst;
    }

    v44 = v35;
    v36 = (sub_29A1225BC(v14, v39, v39) + 2);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__p[0]);
    }

    if (a3)
    {
      v37 = 0;
    }

    else
    {
      v37 = 3;
    }

    *v36 = v37;
    if (v30)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v30 != 0, v30);
    }

    result = v36 | a3 ^ 1u;
    goto LABEL_61;
  }

  if (!v16)
  {
    goto LABEL_22;
  }

LABEL_18:
  v18 = (v17 + 2);
  v19 = *(v17 + 4);
  if (v19)
  {
    if (a3)
    {
      LOBYTE(v19) = 0;
      atomic_fetch_and_explicit(v18, 0xFFFFFFFE, memory_order_relaxed);
    }

    else
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      LOBYTE(v19) = 1;
    }
  }

  result = v19 & 1 | v18;
LABEL_61:
  v38 = v45;
  if (v45)
  {
    __dmb(0xBu);
    *v38 = 0;
  }

  return result;
}

void sub_29A122444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, _BYTE *a20)
{
  sub_29A0E9CEC(&a9);
  v21 = a20;
  if (a20)
  {
    __dmb(0xBu);
    *v21 = 0;
  }

  _Unwind_Resume(a1);
}

uint64_t **sub_29A1224A8(void *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *v2;
  if (*v2)
  {
    LODWORD(v4) = 0;
    v5 = (v2 + 1);
    do
    {
      v4 = (5 * v4 + v3);
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % v7.i32[0];
    }
  }

  else
  {
    v10 = (v7.i32[0] - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v13 == v4)
    {
      if (!strcmp(i[7], v2))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t **sub_29A1225BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 40);
  v7 = *v6;
  if (*v6)
  {
    LODWORD(v8) = 0;
    v9 = (v6 + 1);
    do
    {
      v8 = (5 * v8 + v7);
      v10 = *v9++;
      v7 = v10;
    }

    while (v10);
  }

  else
  {
    v8 = 0;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v3 = v8;
      if (v8 >= v11)
      {
        v3 = v8 % v11;
      }
    }

    else
    {
      v3 = (v11 - 1) & v8;
    }

    v14 = *(*a1 + 8 * v3);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v8)
        {
          if (!strcmp(i[7], v6))
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

          if (v16 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29A12283C(a1, v8, a3, v28);
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
      if (v8 >= v11)
      {
        v3 = v8 % v11;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v11 - 1) & v8;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v3);
  if (v24)
  {
    i = v28[0];
    *v28[0] = *v24;
    *v24 = i;
  }

  else
  {
    v25 = v28[0];
    *v28[0] = *(a1 + 16);
    *(a1 + 16) = v25;
    *(v23 + 8 * v3) = a1 + 16;
    i = v28[0];
    if (*v28[0])
    {
      v26 = *(*v28[0] + 8);
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

      *(*a1 + 8 * v26) = v28[0];
      i = v28[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29A122818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A01BC68(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A12283C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x40uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29A1228C4((v8 + 2), a3);
  *(a4 + 16) = 1;
  return result;
}

void sub_29A1228A8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A01BC68(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1228C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  *a1 = *a2;
  *(a1 + 4) = v4;
  *(a1 + 8) = *(a2 + 8);
  v5 = (a1 + 16);
  v6 = (a2 + 16);
  if (*(a2 + 39) < 0)
  {
    sub_29A008D14((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v7 = *v6;
    *(a1 + 32) = *(a2 + 32);
    *v5 = v7;
  }

  v8 = *(a2 + 16);
  if (*(a2 + 39) >= 0)
  {
    v8 = v6;
  }

  v9 = *(a2 + 40);
  if (v8 == v9)
  {
    if (*(a1 + 39) < 0)
    {
      v9 = *v5;
    }

    else
    {
      v9 = v5;
    }
  }

  *(a1 + 40) = v9;
  return a1;
}

unint64_t sub_29A12296C(uint64_t a1, char *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  LOBYTE(v4) = *a2;
  if (!*a2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v6 = v4 - v6 + 8 * v6;
    v4 = a2[v7++];
  }

  while (v4);
  v8 = v6 & 0x7F;
  v9 = a1 + (v8 << 7);
  sub_29A0EB5BC(&v39, v9 + 44);
  __p[0] = 0;
  __p[1] = 0;
  v37 = 0;
  v38 = a2;
  v10 = sub_29A1224A8(v9, v33);
  v11 = v10;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_12:
    v15 = *(v9 + 40);
    if (v15)
    {
      LODWORD(v16) = v15 - 1;
    }

    else
    {
      v17 = *(v9 + 8);
      v18 = v17;
      v19 = *(v9 + 32);
      if (((*(v9 + 24) + 1) / v17) <= v19)
      {
        goto LABEL_28;
      }

      v20 = *(v9 + 16);
      if (v20)
      {
        do
        {
          v21 = atomic_load((v20 + 16));
          v22 = *v20;
          if (v21 == 1)
          {
            sub_29A0FC808(v9, v20);
          }

          v20 = v22;
        }

        while (v22);
        v17 = *(v9 + 8);
        v19 = *(v9 + 32);
        v18 = v17;
      }

      if (v17)
      {
        v23 = *(v9 + 24) / v18;
      }

      else
      {
        v23 = 0.0;
      }

      v16 = ((v19 - v23) * v18);
      if (v16 <= 0x20)
      {
        LODWORD(v16) = 32;
      }
    }

    *(v9 + 40) = v16;
LABEL_28:
    v24 = atomic_load(pxrInternal__aapl__pxrReserved__::TfMallocTag::_isInitialized);
    if (v24)
    {
      v25 = pxrInternal__aapl__pxrReserved__::TfMallocTag::_Begin("TfToken", 0);
    }

    else
    {
      v25 = 0;
    }

    v26 = 0;
    v27 = 56;
    v28 = a2;
    do
    {
      v26 |= *v28 << v27;
      if (*v28)
      {
        ++v28;
      }

      v27 -= 8;
    }

    while (v27 != -8);
    sub_29A008E78(&v40, a2);
    v34 = v8;
    v35 = v26;
    v29 = __p;
    v37 = v41;
    *__p = v40;
    if (v41 < 0)
    {
      v29 = v40;
    }

    v38 = v29;
    v30 = (sub_29A1225BC(v9, v33, v33) + 2);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p[0]);
    }

    if (a3)
    {
      v31 = 0;
    }

    else
    {
      v31 = 3;
    }

    *v30 = v31;
    if (v25)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v25 != 0, v25);
    }

    result = v30 | a3 ^ 1u;
    goto LABEL_45;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_7:
  v12 = (v11 + 2);
  v13 = *(v11 + 4);
  if (v13)
  {
    if (a3)
    {
      LOBYTE(v13) = 0;
      atomic_fetch_and_explicit(v12, 0xFFFFFFFE, memory_order_relaxed);
    }

    else
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      LOBYTE(v13) = 1;
    }
  }

  result = v13 & 1 | v12;
LABEL_45:
  v32 = v39;
  if (v39)
  {
    __dmb(0xBu);
    *v32 = 0;
  }

  return result;
}

void sub_29A122C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, _BYTE *a21)
{
  if (a21)
  {
    __dmb(0xBu);
    *a21 = 0;
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29A122C68(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
  }

  if (!v2)
  {
    return 0;
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = *v5;
  if (*v5)
  {
    v7 = 0;
    v8 = v5 + 1;
    do
    {
      v7 = v6 - v7 + 8 * v7;
      v9 = *v8++;
      v6 = v9;
    }

    while (v9);
    v10 = v7 & 0x7F;
  }

  else
  {
    v10 = 0;
  }

  v12 = (a1 + (v10 << 7));
  sub_29A0EB5BC(&v22, v12 + 44);
  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  v21 = v13;
  v14 = sub_29A122D90(v12, &v17);
  v15 = v14;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else if (v14)
  {
LABEL_18:
    result = atomic_fetch_add_explicit(v15 + 4, 2u, memory_order_relaxed) & 1 | (v15 + 2);
    goto LABEL_21;
  }

  result = 0;
LABEL_21:
  v16 = v22;
  if (v22)
  {
    __dmb(0xBu);
    *v16 = 0;
  }

  return result;
}

void sub_29A122D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  v18 = *(v16 - 32);
  if (v18)
  {
    __dmb(0xBu);
    *v18 = 0;
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_29A122D90(void *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *v2;
  if (*v2)
  {
    LODWORD(v4) = 0;
    v5 = (v2 + 1);
    do
    {
      v4 = (5 * v4 + v3);
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % v7.i32[0];
    }
  }

  else
  {
    v10 = (v7.i32[0] - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v4 == v13)
    {
      if (!strcmp(i[7], v2))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

void *sub_29A122EA4(void *result, uint64_t a2, char *a3)
{
  if (*result == result[1])
  {
    sub_29B28E534(result, a2, a3);
  }

  return result;
}

void *sub_29A122EDC(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::pair<unsigned long, unsigned long>>>::operator++() [T = std::vector<std::pair<unsigned long, unsigned long>>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 16;
  }

  return a1;
}

unint64_t *sub_29A122F5C(unint64_t *result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < *v10 || v89 >= v88 && *(a2 - 1) < v10[1])
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v91 = v10[2];
      v92 = *v10;
      if (v91 >= *v10 && (v92 < v91 || v10[3] >= v10[1]))
      {
        v106 = *(a2 - 2);
        if (v106 >= v91 && (v91 < v106 || *(a2 - 1) >= v10[3]))
        {
          return result;
        }

        v10[2] = v106;
        *(a2 - 2) = v91;
        v9 = v10 + 3;
        v107 = v10[3];
        v10[3] = *(a2 - 1);
        *(a2 - 1) = v107;
        v108 = v10[2];
        v109 = *v10;
        if (v108 >= *v10 && (v109 < v108 || v10[3] >= v10[1]))
        {
          return result;
        }

        *v10 = v108;
        v10[2] = v109;
        v94 = v10 + 1;
LABEL_201:
        v113 = *v94;
        *v94 = *v9;
        *v9 = v113;
        return result;
      }

      v93 = *(a2 - 2);
      if (v93 < v91)
      {
LABEL_156:
        *v10 = v93;
        v94 = v10 + 1;
        *(a2 - 2) = v92;
        goto LABEL_201;
      }

      if (v91 >= v93)
      {
        v110 = v10[3];
        if (*(a2 - 1) < v110)
        {
          goto LABEL_156;
        }
      }

      else
      {
        v110 = v10[3];
      }

      v111 = v10[1];
      v10[3] = v111;
      *v10 = v91;
      v10[1] = v110;
      v10[2] = v92;
      v112 = *(a2 - 2);
      if (v112 >= v92 && (v92 < v112 || *(a2 - 1) >= v111))
      {
        return result;
      }

      v10[2] = v112;
      *(a2 - 2) = v92;
      v94 = v10 + 3;
      goto LABEL_201;
    }

    if (v13 == 4)
    {

      return sub_29A123A94(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v13 == 5)
    {
      break;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return sub_29A123C9C(v10, a2);
      }

      else
      {

        return sub_29A123D74(v10, a2);
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        return sub_29A1245A0(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (*v14 >= *v10 && (v17 < v16 || v14[1] >= v10[1]))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]) || (*v14 = v24, *(a2 - 2) = v16, v25 = v14 + 1, v26 = v14[1], v14[1] = *(a2 - 1), *(a2 - 1) = v26, v27 = *v14, v28 = *v10, *v14 >= *v10) && (v28 < v27 || *v25 >= v10[1]))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = v10[2];
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= v10[3]))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)) || (*v39 = v44, *(a2 - 4) = v40, v45 = v14 - 1, v46 = *(v14 - 1), *(v14 - 1) = *(a2 - 3), *(a2 - 3) = v46, v47 = *v39, v48 = v10[2], *v39 >= v48) && (v48 < v47 || *v45 >= v10[3]))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = v10[4];
              if (v57 >= v58 && (v58 < v56 || v55[1] >= v10[5]))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]) || (*v55 = v61, *(a2 - 6) = v56, v62 = v55 + 1, v63 = v55[1], v55[1] = *(a2 - 5), *(a2 - 5) = v63, v64 = *v55, v65 = v10[4], *v55 >= v65) && (v65 < v64 || *v62 >= v10[5]))
                {
LABEL_85:
                  v70 = *v15;
                  v71 = *v39;
                  if (*v15 >= *v39 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (*v55 >= v70)
                    {
                      if (v70 < v75)
                      {
                        goto LABEL_104;
                      }

                      v77 = v55[1];
                      v76 = v15[1];
                      if (v77 >= v76)
                      {
                        goto LABEL_104;
                      }
                    }

                    else
                    {
                      v76 = v15[1];
                      v77 = v55[1];
                    }

                    *v15 = v75;
                    v15[1] = v77;
                    v78 = (v15 + 1);
                    *v55 = v70;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      v70 = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = (v39 + 1);
                    *v15 = v71;
LABEL_103:
                    v81 = *v73;
                    *v73 = *v78;
                    *v78 = v81;
                    v70 = *v15;
LABEL_104:
                    v82 = *v10;
                    *v10 = v70;
                    v23 = v10 + 1;
                    *v15 = v82;
                    v30 = v15 + 1;
                    goto LABEL_105;
                  }

                  v72 = *v55;
                  if (*v55 < v70)
                  {
                    goto LABEL_87;
                  }

                  if (v70 >= v72)
                  {
                    v79 = v15[1];
                    if (v55[1] < v79)
                    {
LABEL_87:
                      *v39 = v72;
                      v73 = (v39 + 1);
                      *v55 = v71;
                      v74 = (v55 + 1);
LABEL_102:
                      v78 = v74;
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    v79 = v15[1];
                  }

                  *v15 = v71;
                  v80 = v39[1];
                  v15[1] = v80;
                  *v39 = v70;
                  v39[1] = v79;
                  if (v72 >= v71 && (v71 < v72 || v55[1] >= v80))
                  {
                    v70 = v71;
                    goto LABEL_104;
                  }

                  *v15 = v72;
                  *v55 = v71;
                  v74 = (v55 + 1);
                  v73 = (v15 + 1);
                  goto LABEL_102;
                }

                v10[4] = v64;
                *v55 = v65;
                v60 = v10 + 5;
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 < v56)
              {
                goto LABEL_69;
              }

              if (v56 >= v59)
              {
                v66 = v55[1];
                if (*(a2 - 5) < v66)
                {
LABEL_69:
                  v10[4] = v59;
                  *(a2 - 6) = v58;
                  v60 = v10 + 5;
LABEL_83:
                  v62 = a2 - 5;
                  goto LABEL_84;
                }
              }

              else
              {
                v66 = v55[1];
              }

              v67 = v10[5];
              v10[4] = v56;
              v10[5] = v66;
              *v55 = v58;
              v55[1] = v67;
              v60 = v55 + 1;
              v68 = *(a2 - 6);
              if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
              {
                goto LABEL_85;
              }

              *v55 = v68;
              *(a2 - 6) = v58;
              goto LABEL_83;
            }

            v10[2] = v47;
            *v39 = v48;
            v43 = v10 + 3;
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 < v40)
          {
            goto LABEL_47;
          }

          if (v40 >= v42)
          {
            v49 = *(v14 - 1);
            if (*(a2 - 3) < v49)
            {
LABEL_47:
              v10[2] = v42;
              *(a2 - 4) = v41;
              v43 = v10 + 3;
LABEL_65:
              v45 = a2 - 3;
              goto LABEL_66;
            }
          }

          else
          {
            v49 = *(v14 - 1);
          }

          v52 = v10[3];
          v10[2] = v40;
          v10[3] = v49;
          *v39 = v41;
          *(v14 - 1) = v52;
          v43 = v14 - 1;
          v53 = *(a2 - 4);
          if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
          {
            goto LABEL_67;
          }

          *v39 = v53;
          *(a2 - 4) = v41;
          goto LABEL_65;
        }

        *v10 = v27;
        v19 = v10 + 1;
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 < v16)
      {
        goto LABEL_16;
      }

      if (v16 >= v18)
      {
        v34 = v14[1];
        if (*(a2 - 1) < v34)
        {
LABEL_16:
          *v10 = v18;
          v19 = v10 + 1;
LABEL_43:
          *(a2 - 2) = v17;
          v25 = a2 - 1;
          goto LABEL_44;
        }
      }

      else
      {
        v34 = v14[1];
      }

      v36 = v10[1];
      *v10 = v16;
      v10[1] = v34;
      *v14 = v17;
      v14[1] = v36;
      v19 = v14 + 1;
      v37 = *(a2 - 2);
      if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
      {
        goto LABEL_45;
      }

      *v14 = v37;
      goto LABEL_43;
    }

    v20 = *v10;
    v21 = *v14;
    if (*v10 < *v15 || v21 >= v20 && v10[1] < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = v10[1];
        if (*(a2 - 1) >= v35)
        {
          goto LABEL_59;
        }

LABEL_19:
        *v15 = v22;
        *(a2 - 2) = v21;
        v23 = v15 + 1;
      }

      else
      {
        v35 = v10[1];
LABEL_59:
        v50 = v15[1];
        *v15 = v20;
        v15[1] = v35;
        *v10 = v21;
        v10[1] = v50;
        v23 = v10 + 1;
        v51 = *(a2 - 2);
        if (v51 >= v21 && (v21 < v51 || *(a2 - 1) >= v50))
        {
          goto LABEL_106;
        }

        *v10 = v51;
        *(a2 - 2) = v21;
      }

      v30 = a2 - 1;
LABEL_105:
      v83 = *v23;
      *v23 = *v30;
      *v30 = v83;
      goto LABEL_106;
    }

    v29 = *(a2 - 2);
    if (v29 < v20 || v20 >= v29 && *(a2 - 1) < v10[1])
    {
      *v10 = v29;
      *(a2 - 2) = v20;
      v30 = v10 + 1;
      v31 = v10[1];
      v10[1] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = *v10;
      v33 = *v15;
      if (*v10 < *v15 || v33 >= v32 && *v30 < v15[1])
      {
        *v15 = v32;
        *v10 = v33;
        v23 = v15 + 1;
        goto LABEL_105;
      }
    }

LABEL_106:
    if ((a5 & 1) == 0)
    {
      v84 = *(v10 - 2);
      if (v84 >= *v10 && (*v10 < v84 || *(v10 - 1) >= v10[1]))
      {
        result = sub_29A123E10(v10, a2);
        v10 = result;
        goto LABEL_146;
      }
    }

    v85 = sub_29A123F54(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = sub_29A124098(v10, v85);
    v10 = v85 + 2;
    result = sub_29A124098(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = sub_29A122F5C(v8, v85, a3, -v12, a5 & 1);
      v10 = v85 + 2;
LABEL_146:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  result = sub_29A123A94(v10, v10 + 2, v10 + 4, v10 + 6);
  v95 = *(a2 - 2);
  v96 = v10[6];
  if (v95 < v96 || v96 >= v95 && *(a2 - 1) < v10[7])
  {
    v10[6] = v95;
    *(a2 - 2) = v96;
    v97 = v10[7];
    v10[7] = *(a2 - 1);
    *(a2 - 1) = v97;
    v98 = v10[6];
    v99 = v10[4];
    if (v98 >= v99)
    {
      if (v99 < v98)
      {
        return result;
      }

      v101 = v10[7];
      v100 = v10[5];
      if (v101 >= v100)
      {
        return result;
      }
    }

    else
    {
      v100 = v10[5];
      v101 = v10[7];
    }

    v10[4] = v98;
    v10[5] = v101;
    v10[6] = v99;
    v10[7] = v100;
    v102 = v10[2];
    if (v98 >= v102)
    {
      if (v102 < v98)
      {
        return result;
      }

      v103 = v10[3];
      if (v101 >= v103)
      {
        return result;
      }
    }

    else
    {
      v103 = v10[3];
    }

    v10[2] = v98;
    v10[3] = v101;
    v10[4] = v102;
    v10[5] = v103;
    v104 = *v10;
    if (v98 >= *v10)
    {
      if (v104 < v98)
      {
        return result;
      }

      v105 = v10[1];
      if (v101 >= v105)
      {
        return result;
      }
    }

    else
    {
      v105 = v10[1];
    }

    *v10 = v98;
    v10[1] = v101;
    v10[2] = v104;
    v10[3] = v105;
  }

  return result;
}

unint64_t *sub_29A123A94(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = (result + 1);
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = (a2 + 1);
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = (a3 + 1);
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = (a2 + 1);
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = (result + 1);
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

unint64_t *sub_29A123C9C(unint64_t *result, unint64_t *a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result + 2;
  if (result + 2 == a2)
  {
    return result;
  }

  v3 = 0;
  v4 = result;
  do
  {
    v5 = v4;
    v4 = v2;
    v6 = v5[2];
    v7 = *v5;
    if (v6 >= *v5)
    {
      if (v7 < v6)
      {
        goto LABEL_19;
      }

      v8 = v5[3];
      if (v8 >= v5[1])
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = v5[3];
    }

    v5[2] = v7;
    v4[1] = v5[1];
    v9 = result;
    if (v5 == result)
    {
      goto LABEL_18;
    }

    v10 = v3;
    while (1)
    {
      v11 = *(result + v10 - 16);
      if (v6 >= v11)
      {
        break;
      }

      v12 = *(result + v10 - 8);
LABEL_12:
      v5 -= 2;
      v13 = (result + v10);
      *v13 = v11;
      v13[1] = v12;
      v10 -= 16;
      if (!v10)
      {
        v9 = result;
        goto LABEL_18;
      }
    }

    if (v11 >= v6)
    {
      v9 = (result + v10);
      v12 = *(result + v10 - 8);
      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    v9 = v5;
LABEL_18:
    *v9 = v6;
    v9[1] = v8;
LABEL_19:
    v2 = v4 + 2;
    v3 += 16;
  }

  while (v4 + 2 != a2);
  return result;
}

unint64_t *sub_29A123D74(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      for (i = result + 1; ; i += 2)
      {
        v4 = result;
        result = v2;
        v5 = v4[2];
        v6 = *v4;
        if (v5 < *v4)
        {
          break;
        }

        if (v6 >= v5)
        {
          v7 = v4[3];
          if (v7 < v4[1])
          {
            goto LABEL_6;
          }
        }

LABEL_14:
        v2 = result + 2;
        if (result + 2 == a2)
        {
          return result;
        }
      }

      v7 = v4[3];
LABEL_6:
      for (j = i; ; j -= 2)
      {
        v9 = *j;
        j[1] = v6;
        j[2] = v9;
        v6 = *(j - 3);
        if (v5 >= v6 && (v6 < v5 || v7 >= *(j - 2)))
        {
          break;
        }
      }

      *(j - 1) = v5;
      *j = v7;
      goto LABEL_14;
    }
  }

  return result;
}

unint64_t *sub_29A123E10(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 2);
  if (*a1 < v4 || v4 >= v2 && v3 < *(a2 - 1))
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v2 >= v7 && (v6 < v2 || v3 >= i[1]));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v2 < v4 || v4 >= v2 && v3 < a2[1]; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v2 >= v12 && (v9 < v2 || v3 >= i[1]));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
        }

        while (v2 < v13);
      }

      while (v10 >= v2 && v3 < a2[1]);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v2;
  *(i - 1) = v3;
  return i;
}

unint64_t *sub_29A123F54(unint64_t *a1, unint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v3 < v5 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 8)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v3 < v7 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v3 < v9)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          v5 = v16;
        }

        while (v16 < v3);
      }

      while (v3 >= v5 && v13[1] < v4);
      do
      {
        v17 = *(v14 - 2);
        v14 -= 2;
        v12 = v17;
      }

      while (v17 >= v3 && (v3 < v12 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL sub_29A124098(unint64_t *a1, unint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        sub_29A123A94(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_20;
      }

      sub_29A123A94(a1, a1 + 2, a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v10;
      v11 = a1[6];
      v12 = a1[4];
      if (v11 >= v12)
      {
        if (v12 < v11)
        {
          return 1;
        }

        v14 = a1[7];
        v13 = a1[5];
        if (v14 >= v13)
        {
          return 1;
        }
      }

      else
      {
        v13 = a1[5];
        v14 = a1[7];
      }

      a1[4] = v11;
      a1[5] = v14;
      a1[6] = v12;
      a1[7] = v13;
      v15 = a1[2];
      if (v11 >= v15)
      {
        if (v15 < v11)
        {
          return 1;
        }

        v16 = a1[3];
        if (v14 >= v16)
        {
          return 1;
        }
      }

      else
      {
        v16 = a1[3];
      }

      a1[2] = v11;
      a1[3] = v14;
      a1[4] = v15;
      a1[5] = v16;
      v17 = *a1;
      if (v11 >= *a1)
      {
        if (v17 < v11)
        {
          return 1;
        }

        v18 = a1[1];
        if (v14 >= v18)
        {
          return 1;
        }
      }

      else
      {
        v18 = a1[1];
      }

      *a1 = v11;
      a1[1] = v14;
      result = 1;
      a1[2] = v17;
      a1[3] = v18;
      return result;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
      {
        return 1;
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= *a1 && (v33 < v32 || a1[3] >= a1[1]))
      {
        return 1;
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_19:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v38 = a1[3];
    }

    v40 = a1[1];
    a1[3] = v40;
    *a1 = v20;
    a1[1] = v38;
    a1[2] = v21;
    v41 = *(a2 - 2);
    if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
    {
      return 1;
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (v5 < *a1 || v6 >= v5 && *(a2 - 1) < a1[1])
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < *a1 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (*v25 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = (a1 + 1);
LABEL_64:
      v37 = (a1 + 5);
      goto LABEL_65;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = a1[3];
    }

    v43 = a1[1];
    a1[3] = v43;
    v29 = (a1 + 3);
    *a1 = v26;
    a1[1] = v39;
    a1[2] = v27;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_66;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_64;
  }

  v34 = *v25;
  if (*v25 < v26)
  {
    v35 = a1[3];
    v36 = a1[5];
LABEL_33:
    a1[3] = v36;
    v37 = (a1 + 3);
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_66;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = (a1 + 1);
LABEL_65:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_66;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_33;
    }
  }

LABEL_66:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v45;
    v49 = *v25;
    if (*v45 >= *v25)
    {
      if (v49 < v48)
      {
        goto LABEL_82;
      }

      v50 = v45[1];
      if (v50 >= v25[1])
      {
        goto LABEL_82;
      }
    }

    else
    {
      v50 = v45[1];
    }

    *v45 = v49;
    v45[1] = v25[1];
    v51 = v46;
    while (1)
    {
      v52 = a1 + v51;
      v53 = *(a1 + v51 + 16);
      if (v48 >= v53)
      {
        break;
      }

      v54 = *(v52 + 3);
LABEL_75:
      *(v52 + 4) = v53;
      *(a1 + v51 + 40) = v54;
      v51 -= 16;
      if (v51 == -32)
      {
        v55 = a1;
        goto LABEL_81;
      }
    }

    if (v53 >= v48)
    {
      v54 = *(a1 + v51 + 24);
      if (v50 < v54)
      {
        goto LABEL_75;
      }
    }

    v55 = (a1 + v51 + 32);
LABEL_81:
    *v55 = v48;
    v55[1] = v50;
    if (++v47 != 8)
    {
LABEL_82:
      v25 = v45;
      v46 += 16;
      v45 += 2;
      if (v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 2 == a2;
  }
}