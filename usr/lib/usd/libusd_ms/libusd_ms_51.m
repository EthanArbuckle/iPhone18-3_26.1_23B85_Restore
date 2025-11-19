void sub_29A2A4990(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A4A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A4AD0(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A4BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A2A4C10@<W0>(uint64_t *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
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

  result = sub_29A2A4C84(&v9, a2, v7);
  *a3 = result;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

BOOL sub_29A2A4C84(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 1;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) != 0;
}

void sub_29A2A4CFC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A4E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A4E3C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A4F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A4F7C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A5080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A50BC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A51C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A51FC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A5300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A533C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A5440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A547C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A5580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A55BC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A56C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A56FC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A5800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A583C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A5940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A597C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A5A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A5ABC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A5BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A5BFC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A5D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A5D3C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A5E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A5E7C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A5F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A5FBC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A60C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A60FC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A6200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A623C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A6340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A637C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A6480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A64BC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A65C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A65FC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A6700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A673C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A6840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A687C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A6980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A69BC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A6AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A6AFC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A6C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A6C3C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A6D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A6D7C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A6E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A6EBC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A6FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A6FFC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A7100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A713C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A7240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A727C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A7380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A73BC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A74C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A74FC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A7600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A763C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A7740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A777C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A7880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A78BC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A79C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A79FC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A7B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A7B3C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A7C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A7C7C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A7D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A7DBC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A7EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A7EFC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A8000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A803C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A8140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A817C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A8280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A82BC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A83C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A83FC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A8500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A853C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A8640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A867C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A8780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A87BC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A88C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A88FC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A8A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A8A3C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A8B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A8B7C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A8C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A8CBC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A8DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A8DFC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A8F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A8F3C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A9040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A907C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A9180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A91BC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A92C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A92FC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A9400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A943C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A9540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A957C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A9680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A96BC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A97C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A97FC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A9900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A993C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A9A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A9A7C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A9B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A9BBC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A9CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A9CFC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A9E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A9E3C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A9F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A9F7C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AA080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AA0BC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AA1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AA1FC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AA300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AA33C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AA440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AA47C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AA580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AA5BC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AA6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AA6FC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AA800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AA83C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AA940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AA97C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AAA80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AAABC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AABC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AABFC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AAD00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AAD3C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AAE40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AAE7C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AAF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AAFBC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AB0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AB0FC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AB200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AB23C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AB340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AB37C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AB480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2AB4BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 8) || *(*result + 8))
  {
    result = sub_29B295354(v4);
  }

  *a3 = 0;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

unsigned __int8 *sub_29A2AB51C@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
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

  *a3 = *v4 < *result;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

void *sub_29A2AB5B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

  *a3 = *v4 < *result;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

void sub_29A2AB644(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AB748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AB784(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AB888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AB8C4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AB9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2ABA04(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2ABB08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2ABB44(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2ABC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2ABC84(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2ABD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2ABDC4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2ABEC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2ABF04(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AC008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AC044(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AC148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AC184(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AC288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A2AC2C4@<W0>(uint64_t *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
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

  result = sub_29A00AFCC(&v9, a2, v7);
  *a3 = result;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

void sub_29A2AC338(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AC43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AC478(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AC57C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AC5B8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AC6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AC6F8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AC7FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AC838(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AC93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AC978(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2ACA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2ACAB8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2ACBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2ACBF8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2ACCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2ACD38(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2ACE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2ACE78(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2ACF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2ACFB8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AD0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AD0F8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AD1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AD238(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AD33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AD378(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AD47C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AD4B8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AD5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AD5F8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AD6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AD738(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AD83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AD878(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AD97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AD9B8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2ADABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2ADAF8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2ADBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2ADC38(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2ADD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2ADD78(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2ADE7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2ADEB8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2ADFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2ADFF8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AE0FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AE138(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AE23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AE278(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AE37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AE3B8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AE4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AE4F8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AE5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AE638(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AE73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AE778(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AE87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AE8B8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AE9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AE9F8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AEAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AEB38(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AEC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AEC78(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AED7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AEDB8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AEEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AEEF8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AEFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AF038(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AF13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AF178(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AF27C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AF2B8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AF3BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AF3F8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AF4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AF538(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AF63C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AF678(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AF77C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AF7B8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AF8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AF8F8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AF9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AFA38(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AFB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AFB78(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AFC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AFCB8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AFDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AFDF8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2AFEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2AFF38(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B003C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B0078(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B017C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B01B8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B02BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B02F8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B03FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B0438(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B053C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B0578(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B067C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B06B8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B07BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B07F8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B08FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B0938(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B0A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B0A78(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B0B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B0BB8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B0CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B0CF8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B0DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B0E38(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B0F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B0F78(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B107C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B10B8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B11BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B11F8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B12FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B1338(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B143C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B1478(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B157C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B15B8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B16BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B16F8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B17FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B1838(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B193C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B1978(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B1A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B1AB8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B1BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B1BF8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B1CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B1D38(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B1E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B1E78(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B1F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B1FB8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B20BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B20F8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B21FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B2238(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B233C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B2378(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B247C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B24B8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B25BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B25F8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B26FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B2738(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B283C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B2878(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B297C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B29B8(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B2ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B2AF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 8) || *(*a1 + 8))
  {
    v4[0] = "sdf/variableExpressionImpl.cpp";
    v4[1] = "operator()";
    v4[2] = 597;
    v4[3] = "EvalResult pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::_ComparisonVisitor<std::less>::operator()(const VtValue &) const [Comparator = std::less]";
    v5 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v4, "x.IsEmpty() && _y.IsEmpty()", 0);
  }

  sub_29A2B2B94(a3);
}

void sub_29A2B2B94(uint64_t a1@<X8>)
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

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "lt", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2B2C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_29A2B2CD4@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
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

  *a3 = *v4 <= *result;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

void *sub_29A2B2D68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

  *a3 = *v4 <= *result;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

void sub_29A2B2DFC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
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

void sub_29A2B2F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B2F3C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
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

void sub_29A2B3040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B307C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
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

void sub_29A2B3180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B31BC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
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

void sub_29A2B32C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B32FC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
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

void sub_29A2B3400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B343C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
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

void sub_29A2B3540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B357C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
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

void sub_29A2B3680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B36BC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
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

void sub_29A2B37C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B37FC(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
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

void sub_29A2B3900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2B393C(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
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