void sub_29A2B3A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

BOOL sub_29A2B3A7C@<W0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

  result = sub_29A2B3AF0(&v9, a2, v7);
  *a3 = result;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

BOOL sub_29A2B3AF0(uint64_t a1, void *a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = *(a3 + 23);
  if (v4 >= 0)
  {
    v5 = *(a3 + 23);
  }

  else
  {
    v5 = a3[1];
  }

  if (v4 >= 0)
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
    v7 = a2[1];
  }

  if (v3 < 0)
  {
    a2 = *a2;
  }

  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  v9 = memcmp(v6, a2, v8);
  if (v9)
  {
    return v9 >= 0;
  }

  else
  {
    return v5 >= v7;
  }
}

void sub_29A2B3B5C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B3C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B3C9C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B3DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B3DDC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B3EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B3F1C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B4020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B405C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B4160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B419C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B42A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B42DC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B43E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B441C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B4520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B455C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B4660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B469C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B47A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B47DC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B48E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B491C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B4A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B4A5C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B4B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B4B9C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B4CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B4CDC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B4DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B4E1C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B4F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B4F5C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B5060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B509C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B51A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B51DC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B52E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B531C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B5420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B545C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B5560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B559C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B56A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B56DC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B57E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B581C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B5920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B595C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B5A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B5A9C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B5BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B5BDC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B5CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B5D1C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B5E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B5E5C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B5F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B5F9C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B60A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B60DC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B61E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B621C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B6320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B635C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B6460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B649C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B65A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B65DC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B66E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B671C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B6820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B685C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B6960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B699C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B6AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B6ADC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B6BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B6C1C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B6D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B6D5C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B6E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B6E9C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B6FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B6FDC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B70E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B711C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B7220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B725C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B7360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B739C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B74A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B74DC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B75E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B761C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B7720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B775C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B7860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B789C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B79A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B79DC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B7AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B7B1C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B7C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B7C5C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B7D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B7D9C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B7EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B7EDC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B7FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B801C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B8120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B815C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B8260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B829C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B83A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B83DC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B84E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B851C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B8620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B865C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B8760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B879C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B88A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B88DC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B89E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B8A1C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B8B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B8B5C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B8C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B8C9C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B8DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B8DDC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B8EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B8F1C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B9020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B905C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B9160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B919C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B92A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B92DC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B93E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B941C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B9520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B955C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B9660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B969C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B97A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B97DC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B98E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B991C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B9A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B9A5C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B9B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B9B9C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B9CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B9CDC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B9DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B9E1C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2B9F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2B9F5C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2BA060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BA09C(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2BA1A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BA1DC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2BA2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BA31C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 8) || *(*a1 + 8))
  {
    v4[0] = "sdf/variableExpressionImpl.cpp";
    v4[1] = "operator()";
    v4[2] = 597;
    v4[3] = "EvalResult pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::_ComparisonVisitor<std::less_equal>::operator()(const VtValue &) const [Comparator = std::less_equal]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v4, "x.IsEmpty() && _y.IsEmpty()", 0);
  }

  sub_29A2BA3B8(a3);
}

void sub_29A2BA3B8(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "leq", v4);
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

void sub_29A2BA4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

unsigned __int8 *sub_29A2BA4F8@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = *(a1 + 1);
  if ((v6 & 4) != 0)
  {
    v4 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  result = *a2;
  v8 = *(*a2 + 1);
  if ((v8 & 4) != 0)
  {
    result = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a3 = *v4 > *result;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

void *sub_29A2BA58C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = a1[1];
  if ((v6 & 4) != 0)
  {
    v4 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  result = *a2;
  v8 = *(*a2 + 8);
  if ((v8 & 4) != 0)
  {
    result = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a3 = *v4 > *result;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

void sub_29A2BA620(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BA724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BA760(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BA864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BA8A0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BA9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BA9E0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BAAE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BAB20(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BAC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BAC60(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BAD64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BADA0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BAEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BAEE0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BAFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BB020(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BB124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BB160(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BB264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

BOOL sub_29A2BB2A0@<W0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

  result = sub_29A2BB314(&v9, a2, v7);
  *a3 = result;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

BOOL sub_29A2BB314(uint64_t a1, void *a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = *(a3 + 23);
  if (v4 >= 0)
  {
    v5 = *(a3 + 23);
  }

  else
  {
    v5 = a3[1];
  }

  if (v4 >= 0)
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
    v7 = a2[1];
  }

  if (v3 < 0)
  {
    a2 = *a2;
  }

  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  v9 = memcmp(v6, a2, v8);
  if (v9)
  {
    return v9 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

void sub_29A2BB380(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BB484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BB4C0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BB5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BB600(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BB704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BB740(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BB844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BB880(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BB984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BB9C0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BBAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BBB00(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BBC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BBC40(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BBD44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BBD80(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BBE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BBEC0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BBFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BC000(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BC104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BC140(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BC244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BC280(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BC384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BC3C0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BC4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BC500(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BC604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BC640(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BC744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BC780(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BC884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BC8C0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BC9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BCA00(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BCB04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BCB40(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BCC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BCC80(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BCD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BCDC0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BCEC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BCF00(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BD004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BD040(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BD144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BD180(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BD284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BD2C0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BD3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BD400(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BD504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BD540(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BD644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BD680(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BD784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BD7C0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BD8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BD900(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BDA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BDA40(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BDB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BDB80(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BDC84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BDCC0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BDDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BDE00(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BDF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BDF40(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BE044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BE080(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BE184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BE1C0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BE2C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BE300(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BE404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BE440(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BE544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BE580(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BE684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BE6C0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BE7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BE800(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BE904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BE940(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BEA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BEA80(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BEB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BEBC0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BECC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BED00(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BEE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BEE40(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BEF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BEF80(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BF084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BF0C0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BF1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BF200(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BF304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BF340(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BF444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BF480(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BF584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BF5C0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BF6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BF700(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BF804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BF840(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BF944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BF980(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BFA84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BFAC0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BFBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BFC00(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BFD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BFD40(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BFE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BFE80(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2BFF84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2BFFC0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C00C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C0100(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C0204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C0240(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C0344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C0380(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C0484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C04C0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C05C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C0600(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C0704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C0740(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C0844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C0880(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C0984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C09C0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C0AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C0B00(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C0C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C0C40(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C0D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C0D80(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C0E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C0EC0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C0FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C1000(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C1104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C1140(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C1244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C1280(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C1384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C13C0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C14C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C1500(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C1604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C1640(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C1744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C1780(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C1884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C18C0(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C19C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C1A00(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C1B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C1B40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 8) || *(*a1 + 8))
  {
    v4[0] = "sdf/variableExpressionImpl.cpp";
    v4[1] = "operator()";
    v4[2] = 597;
    v4[3] = "EvalResult pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::_ComparisonVisitor<std::greater>::operator()(const VtValue &) const [Comparator = std::greater]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v4, "x.IsEmpty() && _y.IsEmpty()", 0);
  }

  sub_29A2C1BDC(a3);
}

void sub_29A2C1BDC(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "gt", v4);
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

void sub_29A2C1CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

unsigned __int8 *sub_29A2C1D1C@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = *(a1 + 1);
  if ((v6 & 4) != 0)
  {
    v4 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  result = *a2;
  v8 = *(*a2 + 1);
  if ((v8 & 4) != 0)
  {
    result = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a3 = *v4 >= *result;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

void *sub_29A2C1DB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = a1[1];
  if ((v6 & 4) != 0)
  {
    v4 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  result = *a2;
  v8 = *(*a2 + 8);
  if ((v8 & 4) != 0)
  {
    result = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a3 = *v4 >= *result;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

void sub_29A2C1E44(uint64_t a1@<X8>)
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

void sub_29A2C1F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C1F84(uint64_t a1@<X8>)
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

void sub_29A2C2088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C20C4(uint64_t a1@<X8>)
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

void sub_29A2C21C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C2204(uint64_t a1@<X8>)
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

void sub_29A2C2308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C2344(uint64_t a1@<X8>)
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

void sub_29A2C2448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C2484(uint64_t a1@<X8>)
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

void sub_29A2C2588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C25C4(uint64_t a1@<X8>)
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

void sub_29A2C26C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C2704(uint64_t a1@<X8>)
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

void sub_29A2C2808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_29A2C2844(uint64_t a1@<X8>)
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