void sub_29A2C2948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C2984(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C2A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A2C2AC4@<W0>(uint64_t *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(v5 + 8);
  if ((v6 & 4) != 0)
  {
    v7 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v7 = *v5;
  }

  result = sub_29A2C2B38(&v9, a2, v7);
  *a3 = result;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

BOOL sub_29A2C2B38(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 >= 0;
  }

  else
  {
    return v5 >= v7;
  }
}

void sub_29A2C2BA4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C2CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C2CE4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C2DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C2E24(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C2F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C2F64(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C3068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C30A4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C31A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C31E4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C32E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C3324(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C3428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C3464(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C3568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C35A4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C36A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C36E4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C37E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C3824(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C3928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C3964(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C3A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C3AA4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C3BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C3BE4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C3CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C3D24(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C3E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C3E64(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C3F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C3FA4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C40A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C40E4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C41E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C4224(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C4328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C4364(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C4468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C44A4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C45A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C45E4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C46E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C4724(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C4828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C4864(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C4968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C49A4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C4AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C4AE4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C4BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C4C24(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C4D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C4D64(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C4E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C4EA4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C4FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C4FE4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C50E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C5124(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C5228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C5264(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C5368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C53A4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C54A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C54E4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C55E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C5624(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C5728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C5764(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C5868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C58A4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C59A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C59E4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C5AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C5B24(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C5C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C5C64(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C5D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C5DA4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C5EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C5EE4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C5FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C6024(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C6128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C6164(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C6268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C62A4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C63A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C63E4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C64E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C6524(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C6628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C6664(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C6768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C67A4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C68A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C68E4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C69E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C6A24(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C6B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C6B64(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C6C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C6CA4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C6DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C6DE4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C6EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C6F24(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C7028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C7064(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C7168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C71A4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C72A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C72E4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C73E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C7424(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C7528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C7564(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C7668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C76A4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C77A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C77E4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C78E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C7924(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C7A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C7A64(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C7B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C7BA4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C7CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C7CE4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C7DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C7E24(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C7F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C7F64(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C8068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C80A4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C81A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C81E4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C82E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C8324(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C8428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C8464(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C8568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C85A4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C86A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C86E4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C87E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C8824(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C8928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C8964(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C8A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C8AA4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C8BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C8BE4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C8CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C8D24(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C8E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C8E64(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C8F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C8FA4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C90A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C90E4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C91E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C9224(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C9328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2C9364(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 8) || *(*a1 + 8))
  {
    v4[0] = "sdf/variableExpressionImpl.cpp";
    v4[1] = "operator()";
    v4[2] = 597;
    v4[3] = "EvalResult pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::_ComparisonVisitor<std::greater_equal>::operator()(const VtValue &) const [Comparator = std::greater_equal]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v4, "x.IsEmpty() && _y.IsEmpty()", 0);
  }

  sub_29A2C9400(a3);
}

void sub_29A2C9400(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Comparison operation not supported for None");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "geq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2C9504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A2C9540(char **a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * (&v9[-v10] >> 3)) >= a5)
    {
      v18 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v20 = 3 * a5;
        sub_29A095A18(a1, a2, a1[1], a2 + 24 * a5);
        v19 = (v7 + 8 * v20);
      }

      else
      {
        a1[1] = sub_29A2C974C(a1, (v18 + a3), a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        sub_29A095A18(a1, v5, v10, v5 + 24 * a5);
        v19 = (v18 + v7);
      }

      sub_29A2C97CC(v35, v7, v19, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
    v35[4] = a1;
    if (v15)
    {
      v17 = sub_29A012C48(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v21 = &v17[24 * v16];
    v22 = &v17[24 * v15];
    v23 = 3 * a5;
    v24 = &v21[24 * a5];
    v25 = 8 * v23;
    v26 = v21;
    do
    {
      v27 = *v7;
      *(v26 + 2) = *(v7 + 16);
      *v26 = v27;
      v26 += 24;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v7 += 24;
      v25 -= 24;
    }

    while (v25);
    memcpy(v24, v5, a1[1] - v5);
    v28 = *a1;
    v29 = &v24[a1[1] - v5];
    a1[1] = v5;
    v30 = v5 - v28;
    v31 = &v21[-(v5 - v28)];
    memcpy(v31, v28, v30);
    v32 = *a1;
    *a1 = v31;
    a1[1] = v29;
    v33 = a1[2];
    a1[2] = v22;
    v35[2] = v32;
    v35[3] = v33;
    v35[0] = v32;
    v35[1] = v32;
    sub_29A01FF14(v35);
    return v21;
  }

  return v5;
}

uint64_t sub_29A2C974C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 2);
      *v4 = v5;
      v4 += 24;
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *a2 = 0;
      a2 = (a2 + 24);
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29A095CB0(v7);
  return v4;
}

__int128 *sub_29A2C97CC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_29A2C9840(uint64_t *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v3 = a1[1];
  if ((v3 & 4) != 0)
  {
    v4 = (*((v3 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v4 = *a1;
  }

  if (*(v4 + 23) < 0)
  {
    sub_29A008D14(__p, *v4, *(v4 + 8));
  }

  else
  {
    v5 = *v4;
    v9 = *(v4 + 16);
    *__p = v5;
  }

  v6 = sub_29A2CB658(a2, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_29A2C98D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2C98EC(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    a1 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  v2 = *a1;
  if ((*a1 & 7) != 0)
  {
    if ((atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v2 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return 0;
}

void sub_29A2C9950(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
}

void sub_29A2C99C4(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
}

void sub_29A2C9A38(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void sub_29A2C9AAC(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
}

void sub_29A2C9B20(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
}

void sub_29A2C9B94(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
}

void sub_29A2C9C08(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

void sub_29A2C9C7C(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29A2C9CF0(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

void sub_29A2C9D64(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

void sub_29A2C9DD8(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

void sub_29A2C9E4C(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

void sub_29A2C9EC0(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DecRef();
}

void sub_29A2C9F34(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::_DecRef();
}

void sub_29A2C9FA8(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::_DecRef();
}

void sub_29A2CA01C(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
}

void sub_29A2CA090(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
}

void sub_29A2CA104(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
}

void sub_29A2CA178(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::_DecRef();
}

void sub_29A2CA1EC(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::_DecRef();
}

void sub_29A2CA260(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::_DecRef();
}

void sub_29A2CA2D4(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::_DecRef();
}

void sub_29A2CA348(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::_DecRef();
}

void sub_29A2CA3BC(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::_DecRef();
}

void sub_29A2CA430(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfInterval>::_DecRef();
}

void sub_29A2CA4A4(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRect2i>::_DecRef();
}

void sub_29A2CA518(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
}

void sub_29A2CA58C(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
}

void sub_29A2CA600(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
}

void sub_29A2CA674(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuaternion>::_DecRef();
}

void sub_29A2CA6E8(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuath>::_DecRef();
}

void sub_29A2CA75C(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatf>::_DecRef();
}

void sub_29A2CA7D0(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfDualQuatd>::_DecRef();
}

void sub_29A2CA844(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
}

void sub_29A2CA8B8(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<char>::_DecRef();
}

void sub_29A2CA92C(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

void sub_29A2CA9A0(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<short>::_DecRef();
}

void sub_29A2CAA14(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
}

void sub_29A2CAA88(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29A2CAAFC(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

void sub_29A2CAB70(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
}

void sub_29A2CABE4(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
}

void sub_29A2CAC58(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29A2CACCC(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29A2CAD40(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

void sub_29A2CADB4(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
}

void sub_29A2CAE28(uint64_t *a1)
{
  v1 = a1[1];
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = (v3 - 16);
    if (*(v2 + 24))
    {
      v4 = *(v2 + 24);
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
}

uint64_t sub_29A2CAE9C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 4) != 0)
  {
    v2 = (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v2 = *a1;
  }

  sub_29A1340B0(v4, v2);
  pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(v4);
  return 0;
}

void sub_29A2CAEEC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 4) != 0)
  {
    (*((v1 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  sub_29A2CB9DC(&v2);
}

uint64_t sub_29A2CAF40(pxrInternal__aapl__pxrReserved__::VtValue *a1, unsigned __int8 a2)
{
  v5 = a2;
  if (!*(a1 + 1))
  {
    sub_29A2CAFDC(v4, 1uLL, &v5);
    sub_29A2CB054(a1, v4);
    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }

  result = sub_29A2CB120(a1);
  if (result)
  {
    v4[0] = &v5;
    sub_29A2CB158(a1, v4);
  }

  return result;
}

uint64_t sub_29A2CAFDC(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A20CF8C(a1);
  v7 = a3;
  sub_29A20CFDC(a1, a2, &v7);
  return a1;
}

void *sub_29A2CB054(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A20474B8;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A2CB0E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

uint64_t sub_29A2CB120(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 47)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2042410);
  }

  else
  {
    return 0;
  }
}

void sub_29A2CB158(uint64_t *a1, _BYTE **a2)
{
  v3 = sub_29A2CB204(a1);
  v4 = *(v3 + 16);
  v5[0] = *v3;
  v5[1] = v4;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  v6 = *(v3 + 32);
  *(v3 + 32) = 0;
  sub_29A2CB240(v5, *a2);
  if (v3 != v5)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
}

uint64_t sub_29A2CB204(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_29B2953A0(v2, a1);
  }

  return sub_29A20CF10(a1);
}

void sub_29A2CB240(uint64_t *a1, _BYTE *a2)
{
  if (!*(a1 + 2))
  {
    v3 = *a1;
    if (a1[3])
    {
      goto LABEL_13;
    }

    v4 = a1[4];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = a1[4];
    if (v4)
    {
      if (a1[3])
      {
        v6 = a1;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      *(v4 + v3) = *a2;
      ++*a1;
      return;
    }

LABEL_13:
    sub_29B295484();
  }

  sub_29B295418();
}

uint64_t sub_29A2CB2E8(pxrInternal__aapl__pxrReserved__::VtValue *a1, unint64_t a2)
{
  v5 = a2;
  if (!*(a1 + 1))
  {
    sub_29A2CB384(v4, 1uLL, &v5);
    sub_29A2CB3FC(a1, v4);
    pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
  }

  result = sub_29A27DEAC(a1);
  if (result)
  {
    v4[0] = &v5;
    sub_29A2CB4C8(a1, v4);
  }

  return result;
}

uint64_t sub_29A2CB384(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A20FDAC(a1);
  v7 = a3;
  sub_29A20FDFC(a1, a2, &v7);
  return a1;
}

void *sub_29A2CB3FC(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A2047630;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A2CB490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void sub_29A2CB4C8(uint64_t *a1, void **a2)
{
  v3 = sub_29A2CB574(a1);
  v4 = *(v3 + 16);
  v5[0] = *v3;
  v5[1] = v4;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  v6 = *(v3 + 32);
  *(v3 + 32) = 0;
  sub_29A2CB5B0(v5, *a2);
  if (v3 != v5)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
}

uint64_t sub_29A2CB574(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_29B2954F8(v2, a1);
  }

  return sub_29A20FD2C(a1);
}

void sub_29A2CB5B0(uint64_t *a1, void *a2)
{
  if (!*(a1 + 2))
  {
    v3 = *a1;
    if (a1[3])
    {
      goto LABEL_13;
    }

    v4 = a1[4];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = a1[4];
    if (v4)
    {
      if (a1[3])
      {
        v6 = a1;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      *(v4 + 8 * v3) = *a2;
      ++*a1;
      return;
    }

LABEL_13:
    sub_29B2955DC();
  }

  sub_29B295570();
}

uint64_t sub_29A2CB658(pxrInternal__aapl__pxrReserved__::VtValue *a1, __int128 *a2)
{
  if (!*(a1 + 1))
  {
    sub_29A2CB6F0(v5, 1uLL, a2);
    sub_29A2CB768(a1, v5);
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
  }

  result = sub_29A1FA6D8(a1);
  if (result)
  {
    v5[0] = a2;
    sub_29A2CB834(a1, v5);
  }

  return result;
}

uint64_t sub_29A2CB6F0(uint64_t a1, unint64_t a2, __int128 *a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A213F24(a1);
  v7 = a3;
  sub_29A213FB0(a1, a2, &v7);
  return a1;
}

void *sub_29A2CB768(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = off_2A20479C8;
  sub_29A18ECC8(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29A2CB7FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void sub_29A2CB834(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_29A2CB8E0(a1);
  v4 = *(v3 + 16);
  v5[0] = *v3;
  v5[1] = v4;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  v6 = *(v3 + 32);
  *(v3 + 32) = 0;
  sub_29A2CB91C(v5, *a2);
  if (v3 != v5)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
}

uint64_t sub_29A2CB8E0(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 4) != 0)
  {
    sub_29B295650(v2, a1);
  }

  return sub_29A213E8C(a1);
}

void sub_29A2CB91C(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    v3 = *a1;
    if (*(a1 + 24))
    {
      goto LABEL_13;
    }

    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      if (*(a1 + 24))
      {
        v6 = a1;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      v8 = *a2;
      v9 = v4 + 24 * v3;
      *(v9 + 16) = *(a2 + 16);
      *v9 = v8;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      ++*a1;
      return;
    }

LABEL_13:
    sub_29B295734(a1, v3, a2);
  }

  sub_29B2956C8();
}

void sub_29A2CB9DC(void *a1)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<pxrInternal__aapl__pxrReserved__::GfInterval>::insert[abi:ne200100]<std::__tree_const_iterator<pxrInternal__aapl__pxrReserved__::GfInterval,std::__tree_node<pxrInternal__aapl__pxrReserved__::GfInterval,void *> *,long>>();
}

void sub_29A2CBA34(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CBA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CBAA4(uint64_t *a1@<X0>, const char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  *&v11 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", a2, a3, "contains", v5);
  v6 = 0uLL;
  v7 = 0;
  sub_29A280C48(&v6, &__p, &v11, 1uLL);
  *(a4 + 8) = 0;
  *(a4 + 16) = v6;
  *(a4 + 32) = v7;
  v6 = 0uLL;
  v7 = 0;
  v8 = &v6;
  sub_29A012C90(&v8);
  if (v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2CBB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CBBA8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CBBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CBC18(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CBC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CBC88(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CBCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CBCF8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CBD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CBD68(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CBDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CBDD8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CBE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CBE48(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CBE9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CBEB8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CBF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CBF28(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CBF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CBF98(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CBFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC008(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC078(pxrInternal__aapl__pxrReserved__::VtValue **a1@<X0>, char **a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_29A1EFC10(*a1))
  {
    v6 = *(*a1 + 1);
    if ((v6 & 4) != 0)
    {
      v7 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))();
    }

    else
    {
      v7 = **a1;
    }

    if (*(v7 + 23) >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = *v7;
    }

    *a3 = pxrInternal__aapl__pxrReserved__::TfStringContains(a2, v8);
    *(a3 + 8) = &unk_2A20443C3;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
  }

  else
  {
    sub_29A008E78(__p, "Invalid search value");
    sub_29A2CBAA4(__p, v9, v10, a3);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A2CC13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC158(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC1AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC1C8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC238(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC2A8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC2FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC318(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC36C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC388(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC3F8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC468(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC4D8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC548(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC59C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC5B8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC628(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC698(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC708(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC778(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC7E8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC858(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC8AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC8C8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC938(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CC9A8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CC9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CCA18(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CCA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CCA88(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CCADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CCAF8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CCB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CCB68(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CCBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CCBD8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CCC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CCC48(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CCC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CCCB8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CCD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CCD28(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CCD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CCD98(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CCDEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CCE08(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CCE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CCE78(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CCECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CCEE8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CCF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CCF58(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CCFAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CCFC8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CD01C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD038(pxrInternal__aapl__pxrReserved__::VtValue **a1@<X0>, size_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_29A1EFCDC(*a1))
  {
    v6 = a2[4];
    v7 = *a2;
    v8 = &v6[*a2];
    v9 = *a1;
    v10 = *(*a1 + 1);
    if ((v10 & 4) != 0)
    {
      v9 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))();
      v12 = a2[4];
      v11 = *a2;
    }

    else
    {
      v11 = *a2;
      v12 = v6;
    }

    v13 = memchr(v6, *v9, v7);
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v8;
    }

    *a3 = v14 != &v12[v11];
    *(a3 + 8) = &unk_2A20443C3;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
  }

  else
  {
    sub_29A008E78(__p, "Invalid search value");
    sub_29A2CBAA4(__p, v15, v16, a3);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A2CD128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD144(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CD198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD1B4(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CD208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD224(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CD278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD294(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CD2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD304(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CD358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD374(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CD3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD3E4(pxrInternal__aapl__pxrReserved__::VtValue **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_29A298D2C(*a1))
  {
    v6 = a2[4];
    v7 = *a2;
    v8 = *a1;
    v9 = *(*a1 + 1);
    if ((v9 & 4) != 0)
    {
      v8 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))();
      if (v7)
      {
LABEL_4:
        v10 = 8 * v7;
        v11 = &v6[v7];
        while (*v6 != *v8)
        {
          ++v6;
          v10 -= 8;
          if (!v10)
          {
            v6 = v11;
            break;
          }
        }
      }
    }

    else if (v7)
    {
      goto LABEL_4;
    }

    *a3 = v6 != (a2[4] + 8 * *a2);
    *(a3 + 8) = &unk_2A20443C3;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    return;
  }

  sub_29A008E78(__p, "Invalid search value");
  sub_29A2CBAA4(__p, v12, v13, a3);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CD4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD4FC(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CD550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD56C(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CD5C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD5DC(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CD630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD64C(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CD6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD6BC(pxrInternal__aapl__pxrReserved__::VtValue **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_29A1EFC10(*a1))
  {
    v6 = a2[4];
    v7 = v6 + 24 * *a2;
    v8 = *(*a1 + 1);
    if ((v8 & 4) != 0)
    {
      v9 = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))();
    }

    else
    {
      v9 = **a1;
    }

    *a3 = sub_29A22B430(v6, v7, v9) != a2[4] + 24 * *a2;
    *(a3 + 8) = &unk_2A20443C3;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
  }

  else
  {
    sub_29A008E78(__p, "Invalid search value");
    sub_29A2CBAA4(__p, v10, v11, a3);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A2CD7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD7C8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CD81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD838(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CD88C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD8A8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CD8FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD918(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CD96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD988(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CD9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CD9F8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CDA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CDA68(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CDABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CDAD8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CDB2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CDB48(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CDB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CDBB8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CDC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CDC28(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CDC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CDC98(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CDCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CDD08(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CDD5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CDD78(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CDDCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CDDE8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CDE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CDE58(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CDEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CDEC8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CDF1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CDF38(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CDF8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CDFA8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CDFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE018(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE088(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE0F8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE168(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE1D8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE248(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE2B8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE30C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE328(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE398(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE408(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE478(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE4E8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE53C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE558(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE5C8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE638(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE68C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE6A8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE718(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE788(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Value to search must be a list or string");
  sub_29A2CBAA4(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE7F8(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE84C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE868(uint64_t *a1@<X0>, const char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  *&v11 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", a2, a3, "at", v5);
  v6 = 0uLL;
  v7 = 0;
  sub_29A280C48(&v6, &__p, &v11, 1uLL);
  *(a4 + 8) = 0;
  *(a4 + 16) = v6;
  *(a4 + 32) = v7;
  v6 = 0uLL;
  v7 = 0;
  v8 = &v6;
  sub_29A012C90(&v8);
  if (v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_29A2CE948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE96C(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CE9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CE9DC(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CEA30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CEA4C(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CEAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CEABC(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CEB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CEB2C(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CEB80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CEB9C(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CEBF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CEC0C(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CEC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CEC7C(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CECD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CECEC(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CED40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CED5C(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CEDB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CEDCC(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CEE20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CEE3C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  v5 = (v4 & (*a1 >> 63)) + *a1;
  if (v5 < 0 || v5 >= v4)
  {
    sub_29A008E78(&__p, "Index out of range");
    sub_29A2CE868(&__p, v6, v7, a3);
  }

  else
  {
    std::string::basic_string(&__p, a2, v5, 1uLL, &v9);
    *(a3 + 8) = &off_2A2044DD0;
    sub_29A1B01B8(a3, &__p);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A2CEEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CEF10(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CEF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CEF80(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CEFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CEFF0(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF060(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF0B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF0D0(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF140(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF1B0(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF220(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF290(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF300(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF370(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF3E0(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF450(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF4C0(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF530(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF5A0(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF610(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF680(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF6F0(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF760(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF7B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF7D0(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF840(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF8B0(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF920(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CF990(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CF9E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CFA00(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CFA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CFA70(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CFAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CFAE0(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CFB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CFB50(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CFBA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CFBC0(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CFC14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CFC30(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CFC84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CFCA0(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CFCF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CFD10(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CFD64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CFD80(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CFDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CFDF0(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (*a2 & (*a1 >> 63)) + *a1;
  if (v4 < 0 || v4 >= *a2)
  {
    sub_29A008E78(__p, "Index out of range");
    sub_29A2CE868(__p, v5, v6, a3);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a3 = *(a2[4] + v4);
    *(a3 + 8) = &unk_2A20443C3;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
  }
}

void sub_29A2CFE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CFEA0(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CFEF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CFF10(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CFF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CFF80(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2CFFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2CFFF0(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2D0044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2D0060(uint64_t a1@<X8>)
{
  sub_29A008E78(__p, "Only supported for lists or strings");
  sub_29A2CE868(__p, v2, v3, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2D00B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}