void sub_29A200380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_EvalQuotedString(pxrInternal__aapl__pxrReserved__ *this@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X3>, unsigned __int8 *a5@<X8>)
{
  v32 = *MEMORY[0x29EDCA608];
  *a5 = 0;
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  if (a2 > 2 * a3)
  {
    v10 = &a2[-2 * a3];
    if (v10 < 0x801)
    {
      v11 = v31;
    }

    else
    {
      v11 = malloc(&a2[-2 * a3]);
    }

    v12 = this + a3;
    v29 = v12;
    __dst = v11;
    if (v10 < 1)
    {
LABEL_19:
      sub_29A02887C(__p, v11, __dst - v11);
      v19 = v26;
      v20 = *__p;
      *__p = *a5;
      v26 = *(a5 + 2);
      *a5 = v20;
      *(a5 + 2) = v19;
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
      }

      if (v11 != v31)
      {
        free(v11);
      }

      if (a4)
      {
        v21 = a5[23];
        if ((v21 & 0x80u) == 0)
        {
          v22 = a5;
        }

        else
        {
          v22 = *a5;
        }

        v23 = 0;
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(a5 + 1);
        }

        for (; v21; --v21)
        {
          v24 = *v22++;
          if (v24 == 10)
          {
            ++v23;
          }
        }

        *a4 = v23;
      }
    }

    else
    {
      v13 = &v12[v10];
      v14 = 2048;
      if (v10 > 0x800)
      {
        v14 = v10;
      }

      v15 = v14 + 1;
      while (*v12)
      {
        if (!--v15)
        {
          __p[0] = "sdf/parserHelpers.cpp";
          __p[1] = "Sdf_EvalQuotedString";
          v26 = 580;
          v27 = "std::string pxrInternal__aapl__pxrReserved__::Sdf_EvalQuotedString(const char *, size_t, size_t, unsigned int *)";
          v28 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Unable to evaluate quoted string");
          goto LABEL_19;
        }

        v16 = memchr(v12, 92, v13 - v12);
        if (v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = v13;
        }

        memcpy(__dst, v12, v17 - v12);
        __dst = __dst + v17 - v12;
        v12 = &v29[v17 - v12];
        v29 = v12;
        if (v17 != v13)
        {
          pxrInternal__aapl__pxrReserved__::TfEscapeStringReplaceChar(&v29, &__dst, v18);
          v12 = ++v29;
        }

        if (v12 >= v13)
        {
          goto LABEL_19;
        }
      }

      if (v11 != v31)
      {
        free(v11);
      }
    }
  }
}

void pxrInternal__aapl__pxrReserved__::Sdf_EvalAssetPath(pxrInternal__aapl__pxrReserved__ *this@<X0>, const char *a2@<X1>, int a3@<W2>, std::string *a4@<X8>)
{
  if (a3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  sub_29A02887C(&__dst, this + v6, &a2[-(2 * v6)]);
  if (a3)
  {
    sub_29A008E78(v12, "\\@@@");
    sub_29A008E78(__p, "@@@");
    pxrInternal__aapl__pxrReserved__::TfStringReplace(&__dst, v12, __p, &v7);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    __dst = v7;
    *(&v7.__r_.__value_.__s + 23) = 0;
    v7.__r_.__value_.__s.__data_[0] = 0;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(a4, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    *a4 = v7;
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_29A200714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_29A0D2850(&a9);
  if (*(v26 - 25) < 0)
  {
    operator delete(*(v26 - 48));
  }

  _Unwind_Resume(a1);
}

_OWORD *sub_29A200774(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_29A00B0D0(a1, &v12, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x90uLL);
    v9 = *a4;
    v10 = *(*a4 + 2);
    v7[2] = **a4;
    *(v7 + 6) = v10;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    *(v7 + 7) = 0;
    *(v7 + 8) = 0;
    *(v7 + 9) = 0;
    *(v7 + 12) = 0;
    *(v7 + 17) = 0;
    sub_29A00B204(a1, v12, v8, v7);
  }

  return v7;
}

void sub_29A20081C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A200878(v2 + 32);
    }

    operator delete(v2);
  }
}

void sub_29A200878(uint64_t a1)
{
  sub_29A200914(a1 + 80);
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

uint64_t sub_29A2008D8(uint64_t a1)
{
  sub_29A200914(a1 + 56);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A200914(uint64_t a1)
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

unint64_t sub_29A200994()
{
  v104[4] = *MEMORY[0x29EDCA608];
  v0 = operator new(0x18uLL);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = (v0 + 1);
  v97 = v0;
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v1)
  {
    v1 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A201B40(&v97, v1, 0);
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v2)
  {
    v2 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A202054(&v97, (v2 + 8), 0);
  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v3)
  {
    v3 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A202568(&v97, (v3 + 16), 0);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v4)
  {
    v4 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A202A7C(&v97, (v4 + 24), 0);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v5)
  {
    v5 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A202F90(&v97, (v5 + 32), 0);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v6)
  {
    v6 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2034A4(&v97, (v6 + 40), 0);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v7)
  {
    v7 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2039B8(&v97, (v7 + 48), 0);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v8)
  {
    v8 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A203ECC(&v97, (v8 + 56), 0);
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v9)
  {
    v9 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2043E0(&v97, (v9 + 64), 0);
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v10)
  {
    v10 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2048F4(&v97, (v10 + 72), 0);
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v11)
  {
    v11 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A204E08(&v97, (v11 + 80), 0);
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v12)
  {
    v12 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20531C(&v97, (v12 + 88), 0);
  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v13)
  {
    v13 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A205830(&v97, (v13 + 96), 0);
  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v14)
  {
    v14 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A205D44(&v97, (v14 + 424), 0);
  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v15)
  {
    v15 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A205D44(&v97, (v15 + 432), 0);
  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v16)
  {
    v16 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A206258(&v97, (v16 + 440), 0);
  v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v17)
  {
    v17 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20676C(&v97, (v17 + 104), 0);
  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v18)
  {
    v18 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A206C80(&v97, (v18 + 128), 0);
  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v19)
  {
    v19 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A207194(&v97, (v19 + 152), 0);
  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v20)
  {
    v20 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2076A8(&v97, (v20 + 176), 0);
  v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v21)
  {
    v21 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A207BBC(&v97, (v21 + 112), 0);
  v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v22)
  {
    v22 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2080D0(&v97, (v22 + 136), 0);
  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v23)
  {
    v23 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2085E4(&v97, (v23 + 160), 0);
  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v24)
  {
    v24 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A208AF8(&v97, (v24 + 184), 0);
  v25 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v25)
  {
    v25 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20900C(&v97, (v25 + 120), 0);
  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v26)
  {
    v26 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A209520(&v97, (v26 + 144), 0);
  v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v27)
  {
    v27 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A209A34(&v97, (v27 + 168), 0);
  v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v28)
  {
    v28 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A209F48(&v97, (v28 + 192), 0);
  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v29)
  {
    v29 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2080D0(&v97, (v29 + 200), 0);
  v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v30)
  {
    v30 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2085E4(&v97, (v30 + 208), 0);
  v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v31)
  {
    v31 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A208AF8(&v97, (v31 + 216), 0);
  v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v32)
  {
    v32 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2080D0(&v97, (v32 + 224), 0);
  v33 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v33)
  {
    v33 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2085E4(&v97, (v33 + 232), 0);
  v34 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v34)
  {
    v34 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A208AF8(&v97, (v34 + 240), 0);
  v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v35)
  {
    v35 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2080D0(&v97, (v35 + 248), 0);
  v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v36)
  {
    v36 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2085E4(&v97, (v36 + 256), 0);
  v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v37)
  {
    v37 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A208AF8(&v97, (v37 + 264), 0);
  v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v38)
  {
    v38 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2080D0(&v97, (v38 + 272), 0);
  v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v39)
  {
    v39 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2085E4(&v97, (v39 + 280), 0);
  v40 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v40)
  {
    v40 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A208AF8(&v97, (v40 + 288), 0);
  v41 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v41)
  {
    v41 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A209520(&v97, (v41 + 296), 0);
  v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v42)
  {
    v42 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A209A34(&v97, (v42 + 304), 0);
  v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v43)
  {
    v43 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A209F48(&v97, (v43 + 312), 0);
  v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v44)
  {
    v44 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20A45C(&v97, (v44 + 320), 0);
  v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v45)
  {
    v45 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20A970(&v97, (v45 + 328), 0);
  v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v46)
  {
    v46 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20AE84(&v97, (v46 + 336), 0);
  v47 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v47)
  {
    v47 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20B398(&v97, (v47 + 344), 0);
  v48 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v48)
  {
    v48 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20B8AC(&v97, (v48 + 352), 0);
  v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v49)
  {
    v49 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20BDC0(&v97, (v49 + 360), 0);
  v50 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v50)
  {
    v50 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20BDC0(&v97, (v50 + 368), 0);
  v51 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v51)
  {
    v51 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A207194(&v97, (v51 + 384), 0);
  v52 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v52)
  {
    v52 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2076A8(&v97, (v52 + 392), 0);
  v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v53)
  {
    v53 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A206C80(&v97, (v53 + 376), 0);
  v54 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v54)
  {
    v54 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2085E4(&v97, (v54 + 408), 0);
  v55 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v55)
  {
    v55 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A208AF8(&v97, (v55 + 416), 0);
  v56 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v56)
  {
    v56 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2080D0(&v97, (v56 + 400), 0);
  v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v57)
  {
    v57 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20676C(&v97, (v57 + 104), "Vec2i");
  v58 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v58)
  {
    v58 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A206C80(&v97, (v58 + 128), "Vec2h");
  v59 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v59)
  {
    v59 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A207194(&v97, (v59 + 152), "Vec2f");
  v60 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v60)
  {
    v60 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2076A8(&v97, (v60 + 176), "Vec2d");
  v61 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v61)
  {
    v61 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A207BBC(&v97, (v61 + 112), "Vec3i");
  v62 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v62)
  {
    v62 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2080D0(&v97, (v62 + 136), "Vec3h");
  v63 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v63)
  {
    v63 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2085E4(&v97, (v63 + 160), "Vec3f");
  v64 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v64)
  {
    v64 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A208AF8(&v97, (v64 + 184), "Vec3d");
  v65 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v65)
  {
    v65 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20900C(&v97, (v65 + 120), "Vec4i");
  v66 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v66)
  {
    v66 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A209520(&v97, (v66 + 144), "Vec4h");
  v67 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v67)
  {
    v67 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A209A34(&v97, (v67 + 168), "Vec4f");
  v68 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v68)
  {
    v68 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A209F48(&v97, (v68 + 192), "Vec4d");
  v69 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v69)
  {
    v69 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2085E4(&v97, (v69 + 208), "PointFloat");
  v70 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v70)
  {
    v70 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A208AF8(&v97, (v70 + 216), "Point");
  v71 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v71)
  {
    v71 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2085E4(&v97, (v71 + 232), "NormalFloat");
  v72 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v72)
  {
    v72 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A208AF8(&v97, (v72 + 240), "Normal");
  v73 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v73)
  {
    v73 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2085E4(&v97, (v73 + 256), "VectorFloat");
  v74 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v74)
  {
    v74 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A208AF8(&v97, (v74 + 264), "Vector");
  v75 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v75)
  {
    v75 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A2085E4(&v97, (v75 + 280), "ColorFloat");
  v76 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v76)
  {
    v76 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A208AF8(&v97, (v76 + 288), "Color");
  v77 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v77)
  {
    v77 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20A45C(&v97, (v77 + 320), "Quath");
  v78 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v78)
  {
    v78 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20A970(&v97, (v78 + 328), "Quatf");
  v79 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v79)
  {
    v79 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20AE84(&v97, (v79 + 336), "Quatd");
  v80 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v80)
  {
    v80 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20B398(&v97, (v80 + 344), "Matrix2d");
  v81 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v81)
  {
    v81 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20B8AC(&v97, (v81 + 352), "Matrix3d");
  v82 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v82)
  {
    v82 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20BDC0(&v97, (v82 + 360), "Matrix4d");
  v83 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v83)
  {
    v83 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20BDC0(&v97, (v83 + 368), "Frame");
  v84 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v84)
  {
    v84 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20BDC0(&v97, (v84 + 360), "Transform");
  v85 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v85)
  {
    v85 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A202568(&v97, (v85 + 16), "PointIndex");
  v86 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v86)
  {
    v86 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A202568(&v97, (v86 + 16), "EdgeIndex");
  v87 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v87)
  {
    v87 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A202568(&v97, (v87 + 16), "FaceIndex");
  v88 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v88)
  {
    v88 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  sub_29A20531C(&v97, (v88 + 88), "Schema");
  sub_29A008E78(v95, "");
  v94 = 0;
  v100 = 0;
  sub_29A222F80(__dst, v95, &__p, 0, v99);
  sub_29A008E78(&__p, "None");
  p_p = &__p;
  v89 = sub_29A200774(v0, &__p, &unk_29B4D6118, &p_p);
  v90 = v89;
  if (*(v89 + 79) < 0)
  {
    operator delete(v89[7]);
  }

  *(v90 + 7) = *__dst;
  v90[9] = v102;
  HIBYTE(v102) = 0;
  LOBYTE(__dst[0]) = 0;
  *(v90 + 5) = v103[0];
  *(v90 + 89) = *(v103 + 9);
  sub_29A2230B8((v90 + 14), v104);
  if (SHIBYTE(v94) < 0)
  {
    operator delete(__p);
  }

  sub_29A200914(v104);
  if (SHIBYTE(v102) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_29A200914(v99);
  if (v96 < 0)
  {
    operator delete(v95[0]);
  }

  v91 = 0;
  atomic_compare_exchange_strong(&qword_2A173F6A8, &v91, v0);
  if (v91)
  {
    sub_29A2231C0(v0, v0[1]);
    operator delete(v0);
    return atomic_load(&qword_2A173F6A8);
  }

  return v0;
}

void sub_29A201ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A201B40(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A20C2D4;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A20C3B0;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A201F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A202054(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A20D234;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A20D310;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A202450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A202568(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A20DC6C;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A20DD48;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A202964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A202A7C(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A20E680;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A20E75C;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A202E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A202F90(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A20F090;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A20F168;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A20338C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2034A4(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A210180;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A210258;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A2038A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2039B8(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A2111E4;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A2112BC;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A203DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A203ECC(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A2119FC;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A211B90;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A2042C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2043E0(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A211F64;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A2120F8;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A2047DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2048F4(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A2127B4;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A212948;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A204CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A204E08(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A2135D0;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A2136DC;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A205204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A20531C(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A2143CC;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A2144F8;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A205718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A205830(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A215144;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A215264;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A205C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A205D44(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A216678;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A2167A4;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A206140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A206258(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A216F84;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A2170C4;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A206654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A20676C(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A219994;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A219A68;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A206B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A206C80(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A21A72C;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A21A804;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A20707C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A207194(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A21ACD0;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A21ADA4;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A207590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2076A8(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A21B1E4;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A21B2D8;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A207AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A207BBC(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A21B718;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A21B814;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A207FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2080D0(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A21C724;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A21C804;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A2084CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2085E4(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A21CD38;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A21CE34;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A2089E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A208AF8(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A21D294;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A21D390;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A208EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A20900C(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A21D7F0;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A21D8E4;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A209408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A209520(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A21E7C8;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A21E89C;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A20991C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A209A34(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A21EE30;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A21EF24;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A209E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A209F48(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A21F39C;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A21F490;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A20A344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A20A45C(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A21F908;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A21F9DC;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A20A858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A20A970(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A21FE18;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A21FF08;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A20AD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A20AE84(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A2203A4;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A220494;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A20B280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A20B398(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A220930;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A220A24;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A20B794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A20B8AC(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A22172C;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A221838;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A20BCA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A20BDC0(uint64_t ***a1, pxrInternal__aapl__pxrReserved__::SdfValueTypeName *this, char *a3)
{
  v35[4] = *MEMORY[0x29EDCA608];
  ArrayType = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetArrayType(this);
  if (a3)
  {
    sub_29A008E78(__dst, a3);
    v6 = sub_29A008E78(&v32, a3);
    v7 = std::string::append(v6, "[]");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    *v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  else
  {
    AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(this, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
    }

    if (*(EmptyString + 23) < 0)
    {
      sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
    }

    else
    {
      v11 = *EmptyString;
      v28 = EmptyString[2];
      *__dst = v11;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v12 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&ArrayType, &v32);
    if ((v32 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = ((v32 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    }

    if (*(v13 + 23) < 0)
    {
      sub_29A008D14(v25, *v13, v13[1]);
    }

    else
    {
      v14 = *v13;
      v26 = v13[2];
      *v25 = v14;
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v15 = *a1;
  if (SHIBYTE(v28) < 0)
  {
    sub_29A008D14(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v24 = v28;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(this, &v22);
  v31[0] = &unk_2A2047418;
  v31[1] = sub_29A2228AC;
  v31[3] = v31;
  sub_29A222F80(&v32, __p, &v22, 0, v31);
  v22.n128_u64[0] = __dst;
  v16 = sub_29A20CA08(v15, __dst, &unk_29B4D6118, &v22);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  *(v17 + 7) = v32;
  v17[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v17 + 5) = v34[0];
  *(v17 + 89) = *(v34 + 9);
  sub_29A2230B8((v17 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v31);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    sub_29A008D14(v20, v25[0], v25[1]);
  }

  else
  {
    *v20 = *v25;
    v21 = v26;
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&ArrayType, &v22);
  v30[0] = &unk_2A2047418;
  v30[1] = sub_29A2229B8;
  v30[3] = v30;
  sub_29A222F80(&v32, v20, &v22, 1, v30);
  v22.n128_u64[0] = v25;
  v18 = sub_29A20CA08(v15, v25, &unk_29B4D6118, &v22);
  v19 = v18;
  if (*(v18 + 79) < 0)
  {
    operator delete(v18[7]);
  }

  *(v19 + 7) = v32;
  v19[9] = v33;
  HIBYTE(v33) = 0;
  LOBYTE(v32) = 0;
  *(v19 + 5) = v34[0];
  *(v19 + 89) = *(v34 + 9);
  sub_29A2230B8((v19 + 14), v35);
  sub_29A200914(v35);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  sub_29A200914(v30);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29A20C1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v43 = *(v41 - 144);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A20C2D4@<X0>(uint64_t *a1@<X1>, unint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = 0;
  result = sub_29A20C5B0(&v5, a1, a2);
  *(a3 + 8) = &unk_2A20443C3;
  *a3 = v5;
  return result;
}

void sub_29A20C3B0(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A20CB6C(v15, v7);
    sub_29A20D1F0(v15);
    v8 = v16;
    sub_29A20D1F0(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A20CBE0(&v13, v9, v10);
      sub_29A20C5B0(v12, a2, a3);
      ++v11;
      sub_29A20CC60(&v13);
    }

    a4[1] = &off_2A20474B8;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A20474B8;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
}

void sub_29A20C528(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A20C4A0);
  }

  JUMPOUT(0x29A20C510);
}

uint64_t sub_29A20C5B0(_BYTE *a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *a3 + 1;
  v5 = *a2;
  if (v4 > 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3))
  {
    v11[0] = "sdf/parserHelpers.cpp";
    v11[1] = "MakeScalarValueImpl";
    v11[2] = 97;
    v11[3] = "std::enable_if_t<std::is_integral<Int>::value> pxrInternal__aapl__pxrReserved__::Sdf_ParserHelpers::MakeScalarValueImpl(Int *, const vector<Value> &, size_t &) [Int = BOOL]";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(MEMORY[0x29EDC94A8] + 8) & 0x7FFFFFFFFFFFFFFFLL), &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Not enough values to parse value of type %s", v8);
    std::string::~string(&v10);
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x29EDC95F8] + 16;
    __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
  }

  *a3 = v4;
  result = sub_29A20C6EC(v5 + 56 * v3);
  *a1 = result;
  return result;
}

void sub_29A20C6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A20C6EC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 == -1)
  {
    sub_29A151D68();
  }

  v4 = &v3;
  return (off_2A20473D8[v1])(&v4, a1);
}

uint64_t sub_29A20C77C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  result = pxrInternal__aapl__pxrReserved__::Sdf_BoolFromString(a2, &v4);
  if ((v4 & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x29EDC95F8] + 16;
    __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
  }

  return result;
}

uint64_t sub_29A20C7F0(pxrInternal__aapl__pxrReserved__::TfToken *a1, void *a2)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  return sub_29A20C77C(a1, EmptyString);
}

void sub_29A20C840(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&v4, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v5 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(&v6, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    v7 = *(a2 + 5);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A20C8F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A20C92C(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2047418;
  result[1] = v3;
  return result;
}

uint64_t sub_29A20C974(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2047418;
  a2[1] = v2;
  return result;
}

uint64_t sub_29A20C9BC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2047498))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A20CA08(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A20CAA0(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29A20CAA0@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x90uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  result = sub_29A20CB0C(v6 + 4, *a2);
  *(a3 + 16) = 1;
  return result;
}

void *sub_29A20CB0C(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v3;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  __dst[8] = 0;
  __dst[13] = 0;
  return __dst;
}

uint64_t sub_29A20CB6C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_29A20CF8C(a1);
  v6 = &v5;
  sub_29A20CFDC(a1, a2, &v6);
  return a1;
}

uint64_t sub_29A20CBE0(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<BOOL>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A20CC60(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<BOOL>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    ++*a1;
  }

  return a1;
}

uint64_t *sub_29A20CCE0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A20CD00(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A20CEA8(result);
}

unint64_t sub_29A20CD18(char ***a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 1;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v4, v1[4], v2);
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

void *sub_29A20CD94(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A20CF78);
  return a2;
}

void *sub_29A20CE90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A20474B8;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A20CEA8(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
    }
  }

  return result;
}

uint64_t sub_29A20CF10(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A20CEA8(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A20CEA8(&v4);
  }

  return *a1;
}

void *sub_29A20CF8C(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A20CFDC(unint64_t *result, unint64_t a2, unsigned __int8 **a3)
{
  v3 = *result;
  if (a2 == *result)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (a2 > v3)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_29A20D160(result, a2);
              v7 = v10;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  *(v10 + i) = *(v9 + i);
                }
              }
            }

            result = memset(v7 + v3, **a3, a2 - v3);
          }

          v12 = v7;
          goto LABEL_27;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = *result;
      }

      result = sub_29A20D160(result, a2);
      v12 = result;
      if (v3)
      {
        v17 = result;
        do
        {
          v18 = *v7;
          v7 = (v7 + 1);
          *v17 = v18;
          v17 = (v17 + 1);
          --v16;
        }

        while (v16);
      }

      v15 = a2 - v3;
      if (a2 <= v3)
      {
        goto LABEL_27;
      }

      v14 = **a3;
      v13 = (result + v3);
    }

    else
    {
      v13 = sub_29A20D160(result, a2);
      v12 = v13;
      v14 = **a3;
      v15 = a2;
    }

    result = memset(v13, v14, v15);
LABEL_27:
    if (v12 != v5[4])
    {
      pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
    }

    *v5 = a2;
    return result;
  }

  return sub_29A20CF8C(result);
}

void *sub_29A20D160(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_AllocateNew(size_t) [T = BOOL]");
  if (a2 > 0x7FFFFFFFFFFFFFEELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29A20D1F0(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B2942B8();
    }
  }

  return result;
}

uint64_t sub_29A20D234@<X0>(uint64_t *a1@<X1>, unint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = 0;
  result = sub_29A20D510(&v5, a1, a2);
  *(a3 + 8) = &unk_2A2044533;
  *a3 = v5;
  return result;
}

void sub_29A20D310(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A19E1E4(v15, v7);
    sub_29A19E500(v15);
    v8 = v16;
    sub_29A19E500(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A20DB6C(&v13, v9, v10);
      sub_29A20D510(v12, a2, a3);
      ++v11;
      sub_29A20DBEC(&v13);
    }

    a4[1] = &off_2A2043DD0;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2043DD0;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

void sub_29A20D488(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A20D400);
  }

  JUMPOUT(0x29A20D470);
}

uint64_t sub_29A20D510(_BYTE *a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *a3 + 1;
  v5 = *a2;
  if (v4 > 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3))
  {
    v11[0] = "sdf/parserHelpers.cpp";
    v11[1] = "MakeScalarValueImpl";
    v11[2] = 97;
    v11[3] = "std::enable_if_t<std::is_integral<Int>::value> pxrInternal__aapl__pxrReserved__::Sdf_ParserHelpers::MakeScalarValueImpl(Int *, const vector<Value> &, size_t &) [Int = unsigned char]";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(MEMORY[0x29EDC94C8] + 8) & 0x7FFFFFFFFFFFFFFFLL), &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Not enough values to parse value of type %s", v8);
    std::string::~string(&v10);
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x29EDC95F8] + 16;
    __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
  }

  *a3 = v4;
  result = sub_29A20D64C(v5 + 56 * v3);
  *a1 = result;
  return result;
}

void sub_29A20D630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A20D64C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 == -1)
  {
    sub_29A151D68();
  }

  v4 = &v3;
  return (off_2A2047570[v1])(&v4, a1);
}

uint64_t sub_29A20D6C8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x100)
  {
    sub_29A20D764();
  }

  return a2;
}

void sub_29A20D764()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9600] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9480], MEMORY[0x29EDC9368]);
}

uint64_t sub_29A20D7B0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x100)
  {
    sub_29A20D764();
  }

  return a2;
}

uint64_t sub_29A20D84C(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x29EDC95F8] + 16;
    __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
  }

  return sub_29A20D8BC(a1);
}

uint64_t sub_29A20D8BC(double a1)
{
  LOWORD(result) = sub_29A1AC398(0, a1);
  if ((result & 0x100) == 0)
  {
    sub_29A20D764();
  }

  return result;
}

void sub_29A20D95C(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&v3, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v4 = *(a2 + 2);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A20D9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A20D9FC(uint64_t a1, void *a2)
{
  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A20DA88(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&v4, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v5 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(&v6, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    v7 = *(a2 + 5);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A20DB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A20DB6C(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A20DBEC(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    ++*a1;
  }

  return a1;
}

uint64_t sub_29A20DC6C@<X0>(uint64_t *a1@<X1>, unint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = 0;
  result = sub_29A20DF48(&v5, a1, a2);
  *(a3 + 8) = &unk_2A204475B;
  *a3 = v5;
  return result;
}

void sub_29A20DD48(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A19D6E4(v15, v7);
    sub_29A19DBEC(v15);
    v8 = v16;
    sub_29A19DBEC(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 4 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A20E580(&v13, v9, v10);
      sub_29A20DF48(v12, a2, a3);
      ++v11;
      sub_29A20E600(&v13);
    }

    a4[1] = &off_2A2043D18;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2043D18;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29A20DEC0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A20DE38);
  }

  JUMPOUT(0x29A20DEA8);
}

uint64_t sub_29A20DF48(_DWORD *a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *a3 + 1;
  v5 = *a2;
  if (v4 > 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3))
  {
    v11[0] = "sdf/parserHelpers.cpp";
    v11[1] = "MakeScalarValueImpl";
    v11[2] = 97;
    v11[3] = "std::enable_if_t<std::is_integral<Int>::value> pxrInternal__aapl__pxrReserved__::Sdf_ParserHelpers::MakeScalarValueImpl(Int *, const vector<Value> &, size_t &) [Int = int]";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(MEMORY[0x29EDC94D0] + 8) & 0x7FFFFFFFFFFFFFFFLL), &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Not enough values to parse value of type %s", v8);
    std::string::~string(&v10);
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x29EDC95F8] + 16;
    __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
  }

  *a3 = v4;
  result = sub_29A20E084(v5 + 56 * v3);
  *a1 = result;
  return result;
}

void sub_29A20E068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A20E084(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 == -1)
  {
    sub_29A151D68();
  }

  v4 = &v3;
  return (off_2A20475A0[v1])(&v4, a1);
}

unint64_t sub_29A20E100(uint64_t a1, unint64_t a2)
{
  if (a2 >> 31)
  {
    sub_29A20D764();
  }

  return a2;
}

uint64_t sub_29A20E19C(uint64_t a1, uint64_t a2)
{
  if (a2 != a2)
  {
    sub_29A20D764();
  }

  return a2;
}

uint64_t sub_29A20E238(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x29EDC95F8] + 16;
    __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
  }

  return sub_29A20E2A8(a1);
}

uint64_t sub_29A20E2A8(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && a1 > -2147483650.0 && a1 < 2147483650.0)
  {
    result = a1 | 0x100000000;
  }

  else
  {
    result = 0;
  }

  if ((result & 0x100000000) == 0)
  {
    sub_29A20D764();
  }

  return result;
}

void sub_29A20E370(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&v3, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v4 = *(a2 + 2);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A20E3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A20E410(uint64_t a1, void *a2)
{
  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A20E49C(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&v4, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v5 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(&v6, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    v7 = *(a2 + 5);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A20E54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A20E580(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<int>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<int>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A20E600(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<int>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<int>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 4;
  }

  return a1;
}

uint64_t sub_29A20E680@<X0>(uint64_t *a1@<X1>, unint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = 0;
  result = sub_29A20E95C(&v5, a1, a2);
  *(a3 + 8) = &unk_2A2044813;
  *a3 = v5;
  return result;
}

void sub_29A20E75C(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A19C954(v15, v7);
    sub_29A19CEF8(v15);
    v8 = v16;
    sub_29A19CEF8(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 4 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A20EF90(&v13, v9, v10);
      sub_29A20E95C(v12, a2, a3);
      ++v11;
      sub_29A20F010(&v13);
    }

    a4[1] = &off_2A2043C60;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2043C60;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

void sub_29A20E8D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A20E84CLL);
  }

  JUMPOUT(0x29A20E8BCLL);
}

uint64_t sub_29A20E95C(_DWORD *a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *a3 + 1;
  v5 = *a2;
  if (v4 > 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3))
  {
    v11[0] = "sdf/parserHelpers.cpp";
    v11[1] = "MakeScalarValueImpl";
    v11[2] = 97;
    v11[3] = "std::enable_if_t<std::is_integral<Int>::value> pxrInternal__aapl__pxrReserved__::Sdf_ParserHelpers::MakeScalarValueImpl(Int *, const vector<Value> &, size_t &) [Int = unsigned int]";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(MEMORY[0x29EDC94D8] + 8) & 0x7FFFFFFFFFFFFFFFLL), &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Not enough values to parse value of type %s", v8);
    std::string::~string(&v10);
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x29EDC95F8] + 16;
    __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
  }

  *a3 = v4;
  result = sub_29A20EA98(v5 + 56 * v3);
  *a1 = result;
  return result;
}

void sub_29A20EA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A20EA98(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 == -1)
  {
    sub_29A151D68();
  }

  v4 = &v3;
  return (off_2A20475D0[v1])(&v4, a1);
}

unint64_t sub_29A20EB14(uint64_t a1, unint64_t a2)
{
  if (HIDWORD(a2))
  {
    sub_29A20D764();
  }

  return a2;
}

unint64_t sub_29A20EBB0(uint64_t a1, unint64_t a2)
{
  if (HIDWORD(a2))
  {
    sub_29A20D764();
  }

  return a2;
}

uint64_t sub_29A20EC4C(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x29EDC95F8] + 16;
    __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
  }

  return sub_29A20ECBC(a1);
}

uint64_t sub_29A20ECBC(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && a1 > -1.0 && a1 < 4294967300.0)
  {
    result = a1 | 0x100000000;
  }

  else
  {
    result = 0;
  }

  if ((result & 0x100000000) == 0)
  {
    sub_29A20D764();
  }

  return result;
}

void sub_29A20ED80(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&v3, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v4 = *(a2 + 2);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A20EE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A20EE20(uint64_t a1, void *a2)
{
  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A20EEAC(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&v4, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v5 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(&v6, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    v7 = *(a2 + 5);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A20EF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A20EF90(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A20F010(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 4;
  }

  return a1;
}

uint64_t sub_29A20F090@<X0>(uint64_t *a1@<X1>, unint64_t *a2@<X2>, void *a3@<X8>)
{
  v5 = 0;
  result = sub_29A20F368(&v5, a1, a2);
  *a3 = v5;
  a3[1] = &unk_2A2044A3B;
  return result;
}

void sub_29A20F168(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A20F8FC(v15, v7);
    sub_29A21013C(v15);
    v8 = v16;
    sub_29A21013C(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 8 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A20F970(&v13, v9, v10);
      sub_29A20F368(v12, a2, a3);
      ++v11;
      sub_29A20F9F0(&v13);
    }

    a4[1] = &off_2A2047630;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2047630;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
}

void sub_29A20F2E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A20F258);
  }

  JUMPOUT(0x29A20F2C8);
}

uint64_t sub_29A20F368(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *a3 + 1;
  v5 = *a2;
  if (v4 > 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3))
  {
    v11[0] = "sdf/parserHelpers.cpp";
    v11[1] = "MakeScalarValueImpl";
    v11[2] = 97;
    v11[3] = "std::enable_if_t<std::is_integral<Int>::value> pxrInternal__aapl__pxrReserved__::Sdf_ParserHelpers::MakeScalarValueImpl(Int *, const vector<Value> &, size_t &) [Int = long long]";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(MEMORY[0x29EDC9508] + 8) & 0x7FFFFFFFFFFFFFFFLL), &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Not enough values to parse value of type %s", v8);
    std::string::~string(&v10);
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x29EDC95F8] + 16;
    __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
  }

  *a3 = v4;
  result = sub_29A20F4A4(v5 + 56 * v3);
  *a1 = result;
  return result;
}

void sub_29A20F488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A20F4A4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 == -1)
  {
    sub_29A151D68();
  }

  v4 = &v3;
  return (off_2A2047600[v1])(&v4, a1);
}

uint64_t sub_29A20F51C(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    sub_29A20D764();
  }

  return a2;
}

uint64_t sub_29A20F5B4(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x29EDC95F8] + 16;
    __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
  }

  return sub_29A20F624(a1);
}

uint64_t sub_29A20F624(double a1)
{
  v1 = a1 < 9.22337204e18 && a1 > -9.22337204e18;
  if (!v1 || (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    sub_29A20D764();
  }

  return a1;
}

void sub_29A20F6EC(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&v3, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v4 = *(a2 + 2);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A20F770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A20F78C(uint64_t a1, void *a2)
{
  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A20F818(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&v4, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v5 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(&v6, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    v7 = *(a2 + 5);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A20F8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A20F8FC(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_29A20FDAC(a1);
  v6 = &v5;
  sub_29A20FDFC(a1, a2, &v6);
  return a1;
}

uint64_t sub_29A20F970(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<long long>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<long long>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A20F9F0(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<long long>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<long long>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

uint64_t *sub_29A20FA70(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A20FA90(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A20FC3C(result);
}

unint64_t sub_29A20FAA8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 1;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v4, v1[4], (8 * v2));
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

void *sub_29A20FB28(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A20FD94);
  return a2;
}

void *sub_29A20FC24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2047630;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A20FC3C(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
    }
  }

  return result;
}

uint64_t sub_29A20FD2C(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A20FC3C(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A20FC3C(&v4);
  }

  return *a1;
}

void *sub_29A20FDAC(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A20FDFC(unint64_t *result, unint64_t a2, unint64_t **a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29A2100A8(result, a2);
              v7 = result;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  result[i] = *(v9 + i * 8);
                }
              }
            }

            v11 = 0;
            v12 = **a3;
            v13 = (8 * a2 - 8 * v3 - 8) >> 3;
            v14 = (v13 + 2) & 0x3FFFFFFFFFFFFFFELL;
            v15 = vdupq_n_s64(v13);
            v16 = &v7[v3 + 1];
            do
            {
              v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_29B430070)));
              if (v17.i8[0])
              {
                *(v16 - 1) = v12;
              }

              if (v17.i8[4])
              {
                *v16 = v12;
              }

              v11 += 2;
              v16 += 2;
            }

            while (v14 != v11);
          }

          v18 = v7;
LABEL_43:
          if (v18 != v5[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
          }

          *v5 = a2;
          return result;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = *result;
      }

      result = sub_29A2100A8(result, a2);
      v18 = result;
      if (v3)
      {
        v25 = 8 * v24;
        v26 = result;
        do
        {
          v27 = *v7++;
          *v26++ = v27;
          v25 -= 8;
        }

        while (v25);
      }

      if (v3 < a2)
      {
        v28 = 0;
        v29 = **a3;
        v30 = (8 * a2 - 8 * v3 - 8) >> 3;
        v31 = (v30 + 2) & 0x3FFFFFFFFFFFFFFELL;
        v32 = vdupq_n_s64(v30);
        v33 = &result[v3 + 1];
        do
        {
          v34 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(vdupq_n_s64(v28), xmmword_29B430070)));
          if (v34.i8[0])
          {
            *(v33 - 1) = v29;
          }

          if (v34.i8[4])
          {
            *v33 = v29;
          }

          v28 += 2;
          v33 += 2;
        }

        while (v31 != v28);
      }

      goto LABEL_43;
    }

    if (8 * a2 / a2 == 8)
    {
      result = sub_29A2100A8(result, a2);
      v18 = result;
      v19 = 0;
      v20 = **a3;
      v21 = (8 * a2 - 8) >> 3;
      v22 = vdupq_n_s64(v21);
      do
      {
        v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v19), xmmword_29B430070)));
        if (v23.i8[0])
        {
          result[v19] = v20;
        }

        if (v23.i8[4])
        {
          result[v19 + 1] = v20;
        }

        v19 += 2;
      }

      while (((v21 + 2) & 0x3FFFFFFFFFFFFFFELL) != v19);
      goto LABEL_43;
    }
  }

  return sub_29A20FDAC(result);
}

void *sub_29A2100A8(uint64_t a1, unint64_t a2)
{
  sub_29A0ECEEC(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<long long>::_AllocateNew(size_t) [T = long long]");
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
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 + 2;
}

uint64_t sub_29A21013C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(result + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_29B294324();
    }
  }

  return result;
}

uint64_t sub_29A210180@<X0>(uint64_t *a1@<X1>, unint64_t *a2@<X2>, void *a3@<X8>)
{
  v5 = 0;
  result = sub_29A210458(&v5, a1, a2);
  *a3 = v5;
  a3[1] = &unk_2A2044AF3;
  return result;
}

void sub_29A210258(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != *(a1 + 8))
  {
    v15[0] = *a1;
    LODWORD(v7) = 1;
    do
    {
      v7 = (*sub_29A1FC25C(v15, a2, a3) * v7);
      sub_29A1FC2DC(v15);
    }

    while (*&v15[0] != *(&v15[0] + 1));
    sub_29A2109E8(v15, v7);
    sub_29A2111A0(v15);
    v8 = v16;
    sub_29A2111A0(v15);
    v11 = 0;
    v13 = v8;
    v14 = v16 + 8 * *&v15[0];
    while (v13 != v14)
    {
      v12 = sub_29A210A5C(&v13, v9, v10);
      sub_29A210458(v12, a2, a3);
      ++v11;
      sub_29A210ADC(&v13);
    }

    a4[1] = &off_2A2047718;
    sub_29A18ECC8(a4, v15);
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  a4[1] = &off_2A2047718;
  sub_29A18ECC8(a4, v15);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
}

void sub_29A2103D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to parse at element %zd (at sub-part %zd if there are multiple parts)", v15, v16);
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    *v14 = a12;
    *(v14 + 16) = a13;
    *(v13 + 8) = 0;
    __cxa_end_catch();
    JUMPOUT(0x29A210348);
  }

  JUMPOUT(0x29A2103B8);
}

uint64_t sub_29A210458(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *a3 + 1;
  v5 = *a2;
  if (v4 > 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3))
  {
    v11[0] = "sdf/parserHelpers.cpp";
    v11[1] = "MakeScalarValueImpl";
    v11[2] = 97;
    v11[3] = "std::enable_if_t<std::is_integral<Int>::value> pxrInternal__aapl__pxrReserved__::Sdf_ParserHelpers::MakeScalarValueImpl(Int *, const vector<Value> &, size_t &) [Int = unsigned long long]";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(MEMORY[0x29EDC9510] + 8) & 0x7FFFFFFFFFFFFFFFLL), &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Not enough values to parse value of type %s", v8);
    std::string::~string(&v10);
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x29EDC95F8] + 16;
    __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
  }

  *a3 = v4;
  result = sub_29A210594(v5 + 56 * v3);
  *a1 = result;
  return result;
}

void sub_29A210578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A210594(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 == -1)
  {
    sub_29A151D68();
  }

  v4 = &v3;
  return (off_2A20476E8[v1])(&v4, a1);
}

uint64_t sub_29A21060C(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    sub_29A20D764();
  }

  return a2;
}

unint64_t sub_29A2106A4(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x29EDC95F8] + 16;
    __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
  }

  return sub_29A210714(a1);
}

unint64_t sub_29A210714(double a1)
{
  v1 = a1 < 1.84467441e19 && a1 > -1.0;
  if (!v1 || (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    sub_29A20D764();
  }

  return a1;
}

void sub_29A2107D8(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&v3, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v4 = *(a2 + 2);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A21085C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A210878(uint64_t a1, void *a2)
{
  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A210904(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&v4, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v5 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(&v6, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    v7 = *(a2 + 5);
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::exception::~exception);
}

void sub_29A2109B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2109E8(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_29A210E10(a1);
  v6 = &v5;
  sub_29A210E60(a1, a2, &v6);
  return a1;
}

uint64_t sub_29A210A5C(uint64_t *a1, uint64_t a2, char *a3)
{
  result = *a1;
  if (result == a1[1])
  {
    v5[0] = "tf/iterator.h";
    v5[1] = "operator*";
    v5[2] = 254;
    v5[3] = "Reference pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>::operator*() [T = pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>, Reverse = false]";
    v6 = 0;
    v7 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v5, "iterator exhausted", a3);
  }

  return result;
}

void *sub_29A210ADC(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>::operator++() [T = pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    *a1 += 8;
  }

  return a1;
}

uint64_t *sub_29A210B5C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29A210B7C(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_29A210D28(result);
}

unint64_t sub_29A210B94(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 1;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v4, v1[4], (8 * v2));
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

void *sub_29A210C14(uint64_t **a1, void *a2)
{
  v3 = *a1;
  v5 = (*a1)[4];
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray(a2, v3, &v5, sub_29A210DF8);
  return a2;
}

void *sub_29A210D10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &off_2A2047718;
  return sub_29A18ECC8(a2, v2);
}

uint64_t sub_29A210D28(uint64_t result)
{
  if (*result)
  {
    if (atomic_fetch_add_explicit((*result + 40), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
    }
  }

  return result;
}

uint64_t sub_29A210D90(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 40));
  if (v2 != 1)
  {
    sub_29A18EC48(*a1, &v4);
    sub_29A210D28(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A210D28(&v4);
  }

  return *a1;
}

void *sub_29A210E10(void *result)
{
  v1 = result[4];
  if (v1)
  {
    if (result[3] || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
    }

    *result = 0;
  }

  return result;
}

unint64_t *sub_29A210E60(unint64_t *result, unint64_t a2, unint64_t **a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29A21110C(result, a2);
              v7 = result;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  result[i] = *(v9 + i * 8);
                }
              }
            }

            v11 = 0;
            v12 = **a3;
            v13 = (8 * a2 - 8 * v3 - 8) >> 3;
            v14 = (v13 + 2) & 0x3FFFFFFFFFFFFFFELL;
            v15 = vdupq_n_s64(v13);
            v16 = &v7[v3 + 1];
            do
            {
              v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_29B430070)));
              if (v17.i8[0])
              {
                *(v16 - 1) = v12;
              }

              if (v17.i8[4])
              {
                *v16 = v12;
              }

              v11 += 2;
              v16 += 2;
            }

            while (v14 != v11);
          }

          v18 = v7;
LABEL_43:
          if (v18 != v5[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
          }

          *v5 = a2;
          return result;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = *result;
      }

      result = sub_29A21110C(result, a2);
      v18 = result;
      if (v3)
      {
        v25 = 8 * v24;
        v26 = result;
        do
        {
          v27 = *v7++;
          *v26++ = v27;
          v25 -= 8;
        }

        while (v25);
      }

      if (v3 < a2)
      {
        v28 = 0;
        v29 = **a3;
        v30 = (8 * a2 - 8 * v3 - 8) >> 3;
        v31 = (v30 + 2) & 0x3FFFFFFFFFFFFFFELL;
        v32 = vdupq_n_s64(v30);
        v33 = &result[v3 + 1];
        do
        {
          v34 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(vdupq_n_s64(v28), xmmword_29B430070)));
          if (v34.i8[0])
          {
            *(v33 - 1) = v29;
          }

          if (v34.i8[4])
          {
            *v33 = v29;
          }

          v28 += 2;
          v33 += 2;
        }

        while (v31 != v28);
      }

      goto LABEL_43;
    }

    if (8 * a2 / a2 == 8)
    {
      result = sub_29A21110C(result, a2);
      v18 = result;
      v19 = 0;
      v20 = **a3;
      v21 = (8 * a2 - 8) >> 3;
      v22 = vdupq_n_s64(v21);
      do
      {
        v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v19), xmmword_29B430070)));
        if (v23.i8[0])
        {
          result[v19] = v20;
        }

        if (v23.i8[4])
        {
          result[v19 + 1] = v20;
        }

        v19 += 2;
      }

      while (((v21 + 2) & 0x3FFFFFFFFFFFFFFELL) != v19);
      goto LABEL_43;
    }
  }

  return sub_29A210E10(result);
}